void sub_261535F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2614959D0(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_261536040(void *a1, atomic_ullong *a2)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    v12 = @"<null>";
LABEL_9:
    result = CFRetain(v12);
    *a1 = result;
    return result;
  }

  Length = CFDataGetLength(atomic_load_explicit(a2, memory_order_acquire));
  if (!Length)
  {
    v12 = @"<empty>";
    goto LABEL_9;
  }

  v5 = Length;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 2 * Length);
  BytePtr = CFDataGetBytePtr(atomic_load_explicit(a2, memory_order_acquire));
  if (v5 >= 1)
  {
    v8 = BytePtr;
    do
    {
      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      v10 = *v8++;
      CFStringAppendFormat(explicit, 0, @"%02hhx", v10, Mutable);
      --v5;
    }

    while (v5);
  }

  *a1 = CFStringCreateCopy(v6, atomic_load_explicit(&Mutable, memory_order_acquire));
  return sub_2614959D0(&Mutable);
}

void sub_26153612C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2614959D0(va);
  _Unwind_Resume(a1);
}

void *sub_261536144(void *a1, uint64_t a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v3 = @"GS1-type-A";
        goto LABEL_15;
      case 4:
        v3 = @"GS1-type-B";
        goto LABEL_15;
      case 5:
        v3 = @"GS1-type-C";
        goto LABEL_15;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v3 = @"none";
        goto LABEL_15;
      case 1:
        v3 = @"unknown";
        goto LABEL_15;
      case 2:
        v3 = @"linked";
LABEL_15:
        result = CFRetain(v3);
        goto LABEL_16;
    }
  }

  result = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%ld", a2);
LABEL_16:
  *a1 = result;
  return result;
}

void *sub_261536210(void *result, uint64_t a2)
{
  v2 = 3317042773;
  if (*(a2 + 24) == 1)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    if (*a2 != v4)
    {
      v5 = 0;
      do
      {
        v6 = *v3;
        v7 = v3[1];
        v3 += 2;
        v8 = *&v6 + 2654435769;
        if (v6 == 0.0)
        {
          v8 = 2654435769;
        }

        v9 = *&v7 + 2654435769;
        if (v7 == 0.0)
        {
          v9 = 2654435769;
        }

        v5 ^= (v5 << 6) + 2654435769u + (v5 >> 2) + (((v8 >> 2) + (v8 << 6) + v9) ^ v8);
      }

      while (v3 != v4);
      v2 = v5 + 2654435769u;
    }
  }

  *result ^= v2 + (*result << 6) + (*result >> 2);
  return result;
}

void sub_2615364E4(void *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x2667045D0](v1, 0x1091C40433B895BLL);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x261536494);
}

uint64_t sub_26153652C(uint64_t a1, char *a2, unsigned int a3, char *a4, unsigned int a5, unsigned int *a6, unsigned int a7, _DWORD *a8, void *a9, void *a10)
{
  v10 = 1;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          if (a8)
          {
            if (a9)
            {
              if (a10)
              {
                v15 = a6;
                if (a6 || !a7)
                {
                  v18 = *(a1 + 60);
                  v19 = a5 >= v18;
                  v20 = a5 - v18;
                  if (v19)
                  {
                    v19 = v20 >= a7;
                    v21 = v20 - a7;
                    if (v19)
                    {
                      v113 = v21 >> 1;
                      *a8 = 0;
                      v168 = 0;
                      v169 = 0;
                      v167 = &unk_2873D20A0;
                      sub_261539C3C(&v167, 0, 1);
                      v22 = 0;
                      v23 = *(a1 + 8);
                      v167 = &unk_2873D2018;
                      v117 = (a1 + 8);
                      v170 = a1 + 8;
                      v112 = a5;
                      v24 = v23 - 1;
                      v25 = 2 * a5 - 2;
                      do
                      {
                        v26 = *&a4[v25];
                        if (v26 > v24)
                        {
                          LOWORD(v26) = 1;
                        }

                        sub_261539B90(&v167, v22++, v26);
                        v25 -= 2;
                      }

                      while (a5 != v22);
                      v115 = a7;
                      v111 = a3;
                      v27 = 2 * a3 - 2;
                      v28 = a3;
                      v29 = a5;
                      do
                      {
                        v30 = *&a2[v27];
                        if (v30 > v24)
                        {
                          LOWORD(v30) = 1;
                        }

                        sub_261539B90(&v167, v29++, v30);
                        v27 -= 2;
                        --v28;
                      }

                      while (v28);
                      v164 = 0;
                      v165 = 0;
                      v163 = &unk_2873D20A0;
                      sub_261539C3C(&v163, 0, 1);
                      v163 = &unk_2873D2018;
                      v166 = a1 + 8;
                      v31 = *(a1 + 10);
                      if (*(a1 + 56))
                      {
                        v32 = 0;
                        v33 = 1;
                        do
                        {
                          v34 = 0;
                          if (v33 && *(a1 + 10))
                          {
                            v34 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v33) + 2 * *(*(a1 + 40) + 2 * *(a1 + 10))));
                          }

                          ++v32;
                          v33 = v34;
                        }

                        while (v32 < *(a1 + 56));
                      }

                      else
                      {
                        v34 = 1;
                      }

                      v35 = 0;
                      v36 = 0;
                      do
                      {
                        v37 = sub_26153A784(&v167, v34);
                        sub_261539B90(&v163, v35, v37);
                        v38 = 0;
                        if (v31 && v34)
                        {
                          v38 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v34) + 2 * *(*(a1 + 40) + 2 * v31)));
                        }

                        v35 = ++v36;
                        v34 = v38;
                      }

                      while (v36 < a5);
                      v39 = 1;
                      v40 = v164;
                      do
                      {
                        v41 = v164[v39 - 1];
                        if (v164[v39 - 1])
                        {
                          v42 = 1;
                        }

                        else
                        {
                          v42 = v39 > v165;
                        }

                        ++v39;
                      }

                      while (!v42);
                      if (!v41)
                      {
                        memmove(a9, a2, 2 * a3);
                        memmove(a10, a4, 2 * a5);
                        v10 = 0;
                        v163 = &unk_2873D20A0;
LABEL_155:
                        free(v40);
LABEL_156:
                        v167 = &unk_2873D20A0;
                        if (v168)
                        {
                          free(v168);
                        }

                        return v10;
                      }

                      sub_26153BC9C(v162, v115);
                      sub_26153BC9C(v161, v115);
                      v43 = a1 + 8;
                      v44 = a5 + a3;
                      if (v115)
                      {
                        v45 = v162[0];
                        v46 = v115;
                        while (1)
                        {
                          v48 = *v15++;
                          v47 = v48;
                          if (v48 >= v44)
                          {
                            break;
                          }

                          *v45++ = v44 + ~v47;
                          if (!--v46)
                          {
                            goto LABEL_46;
                          }
                        }

                        v10 = 1;
LABEL_150:
                        if (v161[0])
                        {
                          v161[1] = v161[0];
                          operator delete(v161[0]);
                        }

                        if (v162[0])
                        {
                          v162[1] = v162[0];
                          operator delete(v162[0]);
                        }

                        v40 = v164;
                        v163 = &unk_2873D20A0;
                        if (!v164)
                        {
                          goto LABEL_156;
                        }

                        goto LABEL_155;
                      }

LABEL_46:
                      sub_26153B1D0(&v159, v117, 0);
                      if (v115)
                      {
                        sub_26153B15C(&v156, v117);
                        sub_26153B1D0(&v152, v117, 0);
                        sub_26153B15C(&v148, v117);
                        v49 = 0;
                        do
                        {
                          v50 = *(*(a1 + 32) + 2 * (*(v162[0] + v49) % *(a1 + 8)));
                          sub_261539C3C(&v156, 0, 1);
                          *v157 = 0;
                          sub_261539B90(&v156, 1u, v50);
                          *(v161[0] + v49) = *(*(a1 + 48) + 2 * v50);
                          sub_26153AE60(&v152, &v156, &v148);
                          sub_26153ACDC(&v159, &v148, &v159);
                          v49 += 4;
                        }

                        while (4 * v115 != v49);
                        sub_26153B4EC(&v163, &v159, &v163);
                        if (v165 >= a5)
                        {
                          sub_261539C3C(&v163, a5 - 1, 1);
                        }

                        sub_26153B310(&v163, &v163);
                        v148 = &unk_2873D20A0;
                        if (v149)
                        {
                          free(v149);
                        }

                        v152 = &unk_2873D20A0;
                        if (v153)
                        {
                          free(v153);
                        }

                        v156 = &unk_2873D20A0;
                        if (v157)
                        {
                          free(v157);
                        }
                      }

                      sub_26153B1D0(&v156, v117, a5);
                      v154 = 0;
                      v152 = &unk_2873D20A0;
                      v153 = 0;
                      sub_26153A1B8(&v152, &v156);
                      v152 = &unk_2873D2018;
                      v155 = v158;
                      v149 = 0;
                      v150 = 0;
                      v148 = &unk_2873D20A0;
                      sub_261539C3C(&v148, 0, 1);
                      v148 = &unk_2873D2018;
                      v151 = a1 + 8;
                      sub_26153B1D0(&v146, v117, 0);
                      sub_26153B1D0(&v143, v117, 0);
                      v51 = &unk_2873D20A0;
                      v140 = 0;
                      v141 = 0;
                      v139 = &unk_2873D20A0;
                      sub_261539C3C(&v139, 0, 1);
                      v139 = &unk_2873D2018;
                      v142 = a1 + 8;
                      v136 = 0;
                      v137 = 0;
                      v135 = &unk_2873D20A0;
                      sub_261539C3C(&v135, 0, 1);
                      v135 = &unk_2873D2018;
                      v138 = a1 + 8;
                      v132 = 0;
                      v133 = 0;
                      v131 = &unk_2873D20A0;
                      sub_26153A1B8(&v131, &v163);
                      v131 = &unk_2873D2018;
                      v134 = v166;
                      while (v133 > (a5 + v115 - 2) >> 1)
                      {
                        sub_26153A830(&v152, &v131, &v139, &v135);
                        sub_26153ACDC(&v139, &v146, &v143);
                        sub_26153AE60(&v148, &v143, &v143);
                        sub_26153B278(&v148, &v146);
                        sub_26153B278(&v146, &v143);
                        sub_26153B278(&v152, &v131);
                        sub_26153B278(&v131, &v135);
                      }

                      v52 = v145;
                      if (v145 > v113)
                      {
                        v10 = 3;
LABEL_132:
                        v131 = &unk_2873D20A0;
                        if (v132)
                        {
                          free(v132);
                        }

                        v135 = &unk_2873D20A0;
                        if (v136)
                        {
                          free(v136);
                        }

                        v139 = v51;
                        if (v140)
                        {
                          free(v140);
                        }

                        v143 = &unk_2873D20A0;
                        if (v144)
                        {
                          free(v144);
                        }

                        v146 = &unk_2873D20A0;
                        if (v147)
                        {
                          free(v147);
                        }

                        v148 = &unk_2873D20A0;
                        if (v149)
                        {
                          free(v149);
                        }

                        v152 = &unk_2873D20A0;
                        if (v153)
                        {
                          free(v153);
                        }

                        v156 = &unk_2873D20A0;
                        if (v157)
                        {
                          free(v157);
                        }

                        v159 = &unk_2873D20A0;
                        if (v160)
                        {
                          free(v160);
                        }

                        goto LABEL_150;
                      }

                      v53 = v145 + v115;
                      *a8 = v53;
                      sub_26153BC9C(v130, v53);
                      sub_26153BC9C(__p, v53);
                      if (v53)
                      {
                        v54 = 0;
                        v55 = v130[0];
                        v56 = __p[0];
                        do
                        {
                          v55[v54] = 0;
                          v56[v54++] = 0;
                        }

                        while (v53 > v54);
                      }

                      v57 = *v117;
                      v58 = v57 - 2;
                      if (v57 < 2)
                      {
                        v65 = 0;
                      }

                      else
                      {
                        v59 = 0;
                        v60 = *(a1 + 10);
                        v61 = __p[0];
                        v62 = v130[0];
                        v63 = *(a1 + 10);
                        do
                        {
                          if (!sub_26153A784(&v143, v63))
                          {
                            v61[v59] = v58;
                            v62[v59++] = v63;
                          }

                          v64 = 0;
                          if (v63 && v60)
                          {
                            v64 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v63) + 2 * *(*(a1 + 40) + 2 * v60)));
                          }

                          --v58;
                          v63 = v64;
                        }

                        while (v58 != -1);
                        v65 = v59;
                        v43 = a1 + 8;
                        v51 = &unk_2873D20A0;
                      }

                      if (v145 == v65)
                      {
                        if (v115)
                        {
                          v66 = 0;
                          while (!v52)
                          {
LABEL_84:
                            if (++v66 == v115)
                            {
                              goto LABEL_85;
                            }
                          }

                          v67 = v130[0];
                          v68 = v52;
                          while (1)
                          {
                            v69 = *v67++;
                            if (*(v161[0] + v66) == v69)
                            {
                              break;
                            }

                            if (!--v68)
                            {
                              goto LABEL_84;
                            }
                          }
                        }

                        else
                        {
LABEL_85:
                          sub_26153ACDC(&v143, &v159, &v143);
                          v70 = v115;
                          if (v115)
                          {
                            v71 = v161[0];
                            v72 = v130[0];
                            v73 = v162[0];
                            v74 = __p[0];
                            do
                            {
                              v75 = *v71++;
                              v72[v52] = v75;
                              v76 = *v73++;
                              v74[v52] = v76;
                              LODWORD(v52) = v52 + 1;
                              --v70;
                            }

                            while (v70);
                          }

                          if (v145 == v53)
                          {
                            v77 = sub_26153A784(&v143, 0);
                            if (v77)
                            {
                              v78 = *(*(a1 + 48) + 2 * v77);
                              sub_26153B15C(&v126, v43);
                              sub_26153B15C(&v124, v43);
                              sub_26153AF30(&v143, v78, &v126);
                              sub_26153AF30(&v131, v78, &v124);
                              v10 = 3;
                              if (*v127 && v53 == v128)
                              {
                                sub_26153BD1C(v123, *a8);
                                v79 = *a8;
                                if (v79)
                                {
                                  v80 = 0;
                                  v81 = *(a1 + 48);
                                  v116 = v130[0];
                                  v114 = v123[0];
                                  do
                                  {
                                    v82 = v51;
                                    v83 = *(a1 + 8);
                                    v84 = v116[v80] % v83;
                                    v85 = v116[v80] % v83;
                                    v86 = *(v81 + 2 * v84);
                                    v87 = sub_26153A784(&v124, v84);
                                    v88 = *(a1 + 56);
                                    if (*(a1 + 56))
                                    {
                                      if (v88 == 1)
                                      {
                                        v85 = 1;
                                      }

                                      else
                                      {
                                        v89 = 1;
                                        v90 = 1;
                                        do
                                        {
                                          v85 = 0;
                                          if (v86 && v90)
                                          {
                                            v85 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v90) + 2 * *(*(a1 + 40) + 2 * v86)));
                                          }

                                          ++v89;
                                          v90 = v85;
                                        }

                                        while (v89 < v88);
                                      }
                                    }

                                    v91 = 0;
                                    v92 = v80;
                                    do
                                    {
                                      v93 = v85;
                                      if (v92)
                                      {
                                        if (v84)
                                        {
                                          v94 = 1;
                                          if (*(v81 + 2 * (*(v130[0] + v91) % v83)))
                                          {
                                            v94 = 1 - *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * *(v81 + 2 * (*(v130[0] + v91) % v83))) + 2 * *(*(a1 + 40) + 2 * v84)));
                                          }
                                        }

                                        else
                                        {
                                          v94 = 1;
                                        }

                                        v85 = 0;
                                        if (v93)
                                        {
                                          v95 = *(*(a1 + 16) + 2 * v94 + 2 * v83);
                                          if (v95)
                                          {
                                            v85 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v93) + 2 * *(*(a1 + 40) + 2 * v95)));
                                          }
                                        }
                                      }

                                      ++v91;
                                      --v92;
                                    }

                                    while (v79 > v91);
                                    v96 = 0;
                                    if (v86)
                                    {
                                      v43 = a1 + 8;
                                      v51 = v82;
                                      if (v85)
                                      {
                                        v96 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v86) + 2 * *(*(a1 + 40) + 2 * v85)));
                                      }
                                    }

                                    else
                                    {
                                      v43 = a1 + 8;
                                      v51 = v82;
                                    }

                                    v97 = 0;
                                    if (v87)
                                    {
                                      v98 = *(v81 + 2 * v96);
                                      if (v98)
                                      {
                                        v97 = *(*(a1 + 32) + 2 * *(*(a1 + 24) + 2 * *(*(a1 + 40) + 2 * v87) + 2 * *(*(a1 + 40) + 2 * v98)));
                                      }
                                    }

                                    v114[v80++] = v97;
                                  }

                                  while (v80 != v79);
                                }

                                sub_26153B15C(&v121, v43);
                                v100 = a9;
                                v99 = a10;
                                if (*a8)
                                {
                                  v101 = 0;
                                  do
                                  {
                                    sub_261539B90(&v121, *(__p[0] + v101), *(*(a1 + 16) - 2 * *(v123[0] + v101) + 2 * *(a1 + 8)));
                                    ++v101;
                                  }

                                  while (*a8 > v101);
                                }

                                sub_26153B15C(&v118, v43);
                                sub_26153AC14(&v167, &v121, &v118);
                                v102 = v120;
                                if (v44 >= v120 + 1)
                                {
                                  v105 = v44 - 1;
                                  v103 = v119;
                                  v107 = v111;
                                  v106 = v112;
                                  do
                                  {
                                    if (v102 >= v105)
                                    {
                                      v108 = v103[v105];
                                    }

                                    else
                                    {
                                      v108 = 0;
                                    }

                                    *v100++ = v108;
                                    --v105;
                                    --v107;
                                  }

                                  while (v107);
                                  do
                                  {
                                    if (v102 >= v105)
                                    {
                                      v109 = v103[v105];
                                    }

                                    else
                                    {
                                      v109 = 0;
                                    }

                                    *v99++ = v109;
                                    --v105;
                                    --v106;
                                  }

                                  while (v106);
                                  v10 = 0;
                                }

                                else
                                {
                                  v10 = 3;
                                  v103 = v119;
                                }

                                v118 = &unk_2873D20A0;
                                if (v103)
                                {
                                  free(v103);
                                }

                                v121 = &unk_2873D20A0;
                                if (v122)
                                {
                                  free(v122);
                                }

                                if (v123[0])
                                {
                                  v123[1] = v123[0];
                                  operator delete(v123[0]);
                                }
                              }

                              v124 = &unk_2873D20A0;
                              if (v125)
                              {
                                free(v125);
                              }

                              v126 = &unk_2873D20A0;
                              if (v127)
                              {
                                free(v127);
                              }

                              goto LABEL_128;
                            }
                          }
                        }
                      }

                      v10 = 3;
LABEL_128:
                      if (__p[0])
                      {
                        __p[1] = __p[0];
                        operator delete(__p[0]);
                      }

                      if (v130[0])
                      {
                        v130[1] = v130[0];
                        operator delete(v130[0]);
                      }

                      goto LABEL_132;
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

  return v10;
}

void sub_261537414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a26)
  {
    free(a26);
  }

  if (a30)
  {
    free(a30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a37)
  {
    free(a37);
  }

  if (a41)
  {
    free(a41);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a47)
  {
    operator delete(a47);
  }

  if (a51)
  {
    free(a51);
  }

  if (a55)
  {
    free(a55);
  }

  if (a59)
  {
    free(a59);
  }

  if (a63)
  {
    free(a63);
  }

  if (a67)
  {
    free(a67);
  }

  if (a71)
  {
    free(a71);
  }

  STACK[0x208] = a14;
  if (STACK[0x210])
  {
    free(STACK[0x210]);
  }

  STACK[0x228] = &unk_2873D20A0;
  if (STACK[0x230])
  {
    free(STACK[0x230]);
  }

  *(v71 - 232) = &unk_2873D20A0;
  v73 = *(v71 - 224);
  if (v73)
  {
    free(v73);
  }

  v74 = *(v71 - 200);
  if (v74)
  {
    *(v71 - 192) = v74;
    operator delete(v74);
  }

  v75 = *(v71 - 176);
  if (v75)
  {
    *(v71 - 168) = v75;
    operator delete(v75);
  }

  *(v71 - 152) = a21;
  v76 = *(v71 - 144);
  if (v76)
  {
    free(v76);
  }

  *(v71 - 120) = a22;
  v77 = *(v71 - 112);
  if (v77)
  {
    free(v77);
  }

  _Unwind_Resume(a1);
}

_WORD *sub_261537794(unsigned int a1)
{
  result = malloc_type_malloc(4 * a1, 0x1000040BDFB0063uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x266704230](exception, "Malloc failure");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = 1;
  v4 = result;
  do
  {
    v5 = v3;
    if (a1)
    {
      v6 = 0;
      do
      {
        *v4++ = v6++;
      }

      while (v6 < a1);
    }

    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

void *sub_261537848(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    free(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    free(v6);
    a1[5] = 0;
  }

  return a1;
}

uint64_t sub_2615378BC(uint64_t a1, uint64_t a2)
{
  LODWORD(v23.a) = 2;
  BYTE4(v23.a) = 1;
  v4 = *(a1 + 8);
  if (sub_2614E9390(v4, @"Codabar", &v23))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v23.a) = 2;
  BYTE4(v23.a) = 1;
  if (sub_2614E9390(v4, @"GS1DataBar", &v23))
  {
    v5 |= 0x1000u;
  }

  LODWORD(v23.a) = 2;
  BYTE4(v23.a) = 1;
  if (sub_2614E9390(v4, @"GS1DataBarExpanded", &v23))
  {
    v5 |= 0x2000u;
  }

  LODWORD(v23.a) = 2;
  BYTE4(v23.a) = 1;
  result = sub_2614E9390(v4, @"GS1DataBarLimited", &v23);
  if (result)
  {
    v7 = v5 | 0x20000;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = **(a2 + 8);
    sub_2614F59E4(v8);
    v24.origin.x = *(v8 + 8);
    v24.origin.y = *(v8 + 16);
    v9 = (v8 + 8);
    v24.size.width = v9->size.width;
    v24.size.height = v9->size.height;
    CGRectGetWidth(v24);
    CGRectGetHeight(*v9);
    v10 = *(a2 + 8);
    v11 = *(v10 + 32);
    v22.origin = *(v10 + 16);
    v22.size = v11;
    v32.origin = v22.origin;
    v32.size = v11;
    IsInfinite = CGRectIsInfinite(v32);
    v13 = &v22;
    if (IsInfinite)
    {
      v13 = v9;
    }

    size = v13->size;
    v22.origin = v13->origin;
    v22.size = size;
    if (*(*(a1 + 8) + 56) >= 196608 && *(a2 + 32) == 1)
    {
      v15 = *(a2 + 24);
      v16 = *(v15 + 72);
      v17 = *(v15 + 64);
      atan2f(v16, v17);
      v18 = *(v15 + 112);
      fmodf(v18, 180.0);
      v25.origin.x = sub_261495974(v15, 0.0);
      v19 = *(v15 + 80);
      *&v23.a = *(v15 + 64);
      *&v23.c = v19;
      *&v23.tx = *(v15 + 96);
      v26 = CGRectApplyAffineTransform(v25, &v23);
      v22 = CGRectInset(v26, v26.size.width * -0.1, v26.size.height * -0.1);
    }

    origin = v22.origin;
    v21 = v22.size;
    result = CGRectIsNull(v22);
    if ((result & 1) == 0)
    {
      v27.origin = origin;
      v27.size = v21;
      result = CGRectIsEmpty(v27);
      if (!result)
      {
        v28.origin = origin;
        v28.size = v21;
        vcvtmd_s64_f64(CGRectGetMinX(v28));
        v29.origin = origin;
        v29.size = v21;
        vcvtpd_s64_f64(CGRectGetMaxX(v29));
        v30.origin = origin;
        v30.size = v21;
        vcvtmd_s64_f64(CGRectGetMinY(v30));
        v31.origin = origin;
        v31.size = v21;
        vcvtpd_s64_f64(CGRectGetMaxY(v31));
        operator new();
      }
    }
  }

  **(a2 + 64) = 256;
  return result;
}

void sub_2615391B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, std::__shared_weak_count *a46)
{
  if (a46)
  {
    sub_26149E780(a46);
  }

  a45 = (v46 - 184);
  sub_261519E00(&a45);
  a45 = &a23;
  sub_261519E00(&a45);
  a45 = &a27;
  sub_261519E00(&a45);
  a45 = &a30;
  sub_261518C48(&a45);
  a34 = a17;
  if (a36)
  {
    sub_26149E780(a36);
  }

  sub_26149E780(a18);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2615393C8(unint64_t *a1, uint64_t a2, uint64_t *a3, float a4)
{
  v38 = sub_2614BF584();
  v8 = *(a2 + 4);
  if (v8 >= 0x2000)
  {
    if (v8 == 0x2000)
    {
      explicit = atomic_load_explicit(&v38, memory_order_acquire);
      v10 = &MRCSymbologyGS1DataBarExpanded;
      goto LABEL_13;
    }

    if (v8 == 0x20000)
    {
      explicit = atomic_load_explicit(&v38, memory_order_acquire);
      v10 = MRCSymbologyGS1DataBarLimited;
      goto LABEL_13;
    }

LABEL_8:
    *a1 = 0;
    return sub_261477724(&v38);
  }

  if (v8 == 2)
  {
    v11 = atomic_exchange((atomic_load_explicit(&v38, memory_order_acquire) + 16), CFRetain(@"Codabar"));
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = 0;
    goto LABEL_14;
  }

  if (v8 != 4096)
  {
    goto LABEL_8;
  }

  explicit = atomic_load_explicit(&v38, memory_order_acquire);
  v10 = MRCSymbologyGS1DataBar;
LABEL_13:
  sub_261478704((explicit + 16), *v10);
  v12 = 1;
LABEL_14:
  v13 = *MEMORY[0x277CBECE8];
  v14 = *(a2 + 31);
  if (v14 >= 0)
  {
    v15 = (a2 + 8);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 31);
  }

  else
  {
    v16 = *(a2 + 16);
  }

  v37 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v15, 4 * v16, 0x1C000100u, 0, *MEMORY[0x277CBED00]);
  if (atomic_load_explicit(&v37, memory_order_acquire))
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(v13, atomic_load_explicit(&v37, memory_order_acquire), 0x8000100u, 0);
    if (atomic_load_explicit(&ExternalRepresentation, memory_order_acquire))
    {
      v17 = atomic_exchange((atomic_load_explicit(&v38, memory_order_acquire) + 24), atomic_exchange(&ExternalRepresentation, 0));
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = atomic_load_explicit(&v38, memory_order_acquire);
      *(v18 + 32) = 1065353216;
      *(v18 + 36) = 1;
      if (*(a2 + 120) == 1)
      {
        v19 = atomic_load_explicit(&v38, memory_order_acquire);
        if (*(v19 + 208) == 1)
        {
          sub_2614BF7E0((v19 + 200));
        }

        *(v19 + 200) = 0;
        *(v19 + 184) = 0u;
        *(v19 + 168) = 0u;
        *(v19 + 208) = 1;
        *(v19 + 176) = 2;
      }

      if (v12)
      {
        if ((*(atomic_load_explicit(&v38, memory_order_acquire) + 208) & 1) == 0)
        {
          v20 = atomic_load_explicit(&v38, memory_order_acquire);
          if (*(v20 + 208) == 1)
          {
            sub_2614BF7E0((v20 + 200));
          }

          *(v20 + 200) = 0;
          *(v20 + 184) = 0u;
          *(v20 + 168) = 0u;
          *(v20 + 208) = 1;
        }

        *(atomic_load_explicit(&v38, memory_order_acquire) + 168) = 1;
      }

      v21 = atomic_load_explicit(&v38, memory_order_acquire);
      v22 = *(a2 + 124);
      if ((*(v21 + 280) & 1) == 0)
      {
        *(v21 + 280) = 1;
      }

      *(v21 + 272) = v22;
      v23 = atomic_load_explicit(&v38, memory_order_acquire);
      *(v23 + 224) = a4;
      *(v23 + 228) = 1;
      v24 = *(a2 + 32);
      v25 = *(a2 + 36);
      v26 = *(a2 + 48);
      v27 = *(a2 + 52);
      v28 = atomic_load_explicit(&v38, memory_order_acquire);
      if ((*(v28 + 264) & 1) == 0)
      {
        *(v28 + 264) = 1;
      }

      *(v28 + 232) = v24;
      *(v28 + 240) = v25;
      *(v28 + 248) = v26;
      *(v28 + 256) = v27;
      if (*a3 == a3[1])
      {
        __p = 0;
        v34 = 0;
        v35 = 0;
        sub_261473150(1uLL);
      }

      v29 = atomic_load_explicit(&v38, memory_order_acquire);
      if (*(v29 + 64) == 1)
      {
        v30 = *(v29 + 40);
        if (v30)
        {
          *(v29 + 48) = v30;
          operator delete(v30);
        }

        *(v29 + 64) = 0;
      }

      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      sub_26153986C(v29 + 40, *a3, a3[1], (a3[1] - *a3) >> 4);
      *(v29 + 64) = 1;
      v31 = atomic_exchange(&v38, 0);
    }

    else
    {
      v31 = 0;
    }

    *a1 = v31;
    sub_2614BF7E0(&ExternalRepresentation);
  }

  else
  {
    *a1 = 0;
  }

  sub_26148E848(&v37);
  return sub_261477724(&v38);
}

void sub_26153980C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_26148E848(va);
  sub_261477724(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_26153986C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2614BF888(result, a4);
  }

  return result;
}

void sub_2615398CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_261539910(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2873D0960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

uint64_t sub_261539988(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  v5 = result;
  if (a4 > 4)
  {
    if ((a4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (a4 | 1) + 1;
    }

    sub_261472B30(v6);
  }

  *(result + 23) = a4;
  while (a2 != a3)
  {
    v7 = *a2++;
    *v5++ = v7;
  }

  *v5 = 0;
  return result;
}

uint64_t sub_261539A18(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v11 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v12 = a2[23];
  }

  else
  {
    a2 = *a2;
    v12 = v11;
  }

  sub_261539988(&v16, a2, &a2[v12], v12);
  v13 = a4 | (a3 << 32);
  v14 = a5 | (a3 << 32);
  *a1 = 0x200000000;
  *(a1 + 8) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v14;
  *(a1 + 56) = v13;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = *a6;
  *(a1 + 80) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 88) = 8 * (*(a1 + 72) - *(a1 + 64));
  return a1;
}

void **sub_261539B04(uint64_t a1, __int16 a2, int a3, uint64_t a4)
{
  v8 = 0;
  do
  {
    v9 = a3 + v8;
    if (*(a4 + 16) >= a3 + v8)
    {
      v10 = *(*(a4 + 8) + 2 * v9);
    }

    else
    {
      v10 = 0;
    }

    result = sub_261539B90(a4, v9, (v10 + *(*(a1 + 8) + 2 * v8++) * a2));
  }

  while (v8 <= *(a1 + 16));
  return result;
}

void **sub_261539B90(void **result, unsigned int a2, int a3)
{
  v4 = result;
  v5 = *(result + 4);
  if (a3)
  {
    v6 = a3;
    if (v5 < a2)
    {
      result = sub_261539C3C(result, a2, 0);
    }

    *(v4[1] + a2) = v6;
  }

  else if (v5 >= a2)
  {
    if (v5 != a2 || v5 == 0)
    {
      *(result[1] + a2) = 0;
    }

    else
    {
      v8 = a2 - 1;
      *(result + 4) = v8;
      if (a2 != 1)
      {
        v9 = result[1];
        if (!v9[v8])
        {
          v10 = (v9 - 1);
          do
          {
            v11 = v8 - 1;
            if (v8 == 1)
            {
              break;
            }
          }

          while (!*&v10[2 * v8--]);
          *(result + 4) = v11;
        }
      }
    }
  }

  return result;
}

void **sub_261539C3C(void **result, unsigned int a2, int a3)
{
  v5 = result;
  v6 = *(result + 4);
  if (v6 >= a2 && (v7 = result[1]) != 0)
  {
    *(result + 4) = a2;
    if (a2 && a3 && !v7[a2])
    {
      v8 = a2;
      v9 = v7 - 1;
      do
      {
        v10 = v8 - 1;
        if (v8 == 1)
        {
          break;
        }
      }

      while (!v9[v8--]);
      goto LABEL_31;
    }
  }

  else
  {
    v12 = *(result + 5);
    if (v12 <= a2)
    {
      v13 = result[1];
      if (v13)
      {
        v14 = 2 * v12;
        v15 = a2;
        if (2 * v12)
        {
          do
          {
            v15 = v14;
            v14 *= 2;
          }

          while (v15 <= a2);
        }
      }

      else
      {
        v15 = a2 + 1;
      }

      result = malloc_type_realloc(result[1], 2 * v15, 0x1000040BDFB0063uLL);
      v5[1] = result;
      if (!result)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x266704230](exception, "Malloc failure");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (!v13)
      {
        *result = 0;
      }

      *(v5 + 5) = v15;
      v6 = *(v5 + 4);
    }

    v16 = v6 + 1;
    if (v16 <= a2)
    {
      v17 = v5[1];
      do
      {
        v17[v16++] = 0;
      }

      while (v16 <= a2);
    }

    if (!a2)
    {
      v10 = 0;
      *v5[1] = 0;
LABEL_31:
      *(v5 + 4) = v10;
      return result;
    }

    *(v5 + 4) = a2;
    if (a3)
    {
      v18 = v5[1];
      if (!v18[a2])
      {
        v19 = a2;
        v20 = v18 - 1;
        do
        {
          v21 = v19 - 1;
          if (v19 == 1)
          {
            break;
          }
        }

        while (!v20[v19--]);
        v10 = v21;
        goto LABEL_31;
      }
    }
  }

  return result;
}

uint64_t sub_261539DE0(uint64_t a1, __int16 a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  v5 = 1;
  if ((v3 + 1) > 1)
  {
    v6 = (v3 + 1);
  }

  else
  {
    v6 = 1;
  }

  do
  {
    v7 = *v4++;
    v2 += v7 * v5;
    v5 *= a2;
    --v6;
  }

  while (v6);
  return v2;
}

void sub_261539E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == a3 || a4 == a1 || a4 == a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x266704230](exception, "Invalid rem argument");
    goto LABEL_39;
  }

  v8 = *(a2 + 8);
  v9 = 1;
  do
  {
    v10 = *(v8 + 2 * (v9 - 1));
    if (*(v8 + 2 * (v9 - 1)))
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 > *(a2 + 16);
    }

    ++v9;
  }

  while (!v11);
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x266704230](exception, "Divide by zero");
LABEL_39:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3 == a1)
  {
    operator new();
  }

  sub_261539C3C(a3, 0, 1);
  **(a3 + 8) = 0;
  sub_26153A1B8(a4, a1);
  v12 = *(a2 + 16);
  v13 = *(*(a2 + 8) + 2 * v12);
  v28 = 0;
  v29 = 0;
  v27 = &unk_2873D20A0;
  sub_261539C3C(&v27, 0, 1);
  v25 = 0;
  v26 = 0;
  v24 = &unk_2873D20A0;
  sub_261539C3C(&v24, 0, 1);
  while (1)
  {
    v14 = *(a4 + 16);
    v15 = *(a4 + 8);
    v16 = 1;
    do
    {
      v17 = *(v15 + 2 * (v16 - 1));
      if (*(v15 + 2 * (v16 - 1)))
      {
        v18 = 1;
      }

      else
      {
        v18 = v16 > v14;
      }

      ++v16;
    }

    while (!v18);
    if (!v17 || v14 < v12)
    {
      break;
    }

    v20 = *(v15 + 2 * v14) / v13;
    if (!v20)
    {
      v21 = v15 - 2;
      while (v14)
      {
        v22 = v14 - 1;
        if (v14 - 1 < v12)
        {
          break;
        }

        v20 = *(v21 + 2 * v14--) / v13;
        if (v20)
        {
          LODWORD(v14) = v22;
          goto LABEL_26;
        }
      }

      break;
    }

LABEL_26:
    sub_261539C3C(&v27, 0, 1);
    *v28 = 0;
    sub_261539B90(&v27, v14 - v12, v20);
    sub_26153A25C(&v27, a3, a3);
    sub_26153A31C(&v27, a2, &v24);
    (*(*a4 + 24))(a4, &v24, a4);
  }

  v24 = &unk_2873D20A0;
  if (v25)
  {
    free(v25);
  }

  v27 = &unk_2873D20A0;
  if (v28)
  {
    free(v28);
  }
}

uint64_t sub_26153A1B8(uint64_t a1, uint64_t a2)
{
  sub_261539C3C(a1, *(a2 + 16), 0);
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if ((v5 + 1) > 1)
  {
    v9 = (v5 + 1);
  }

  else
  {
    v9 = 1;
  }

  do
  {
    if (v4 <= v6)
    {
      v10 = *(v8 + 2 * v4);
    }

    else
    {
      v10 = 0;
    }

    *(v7 + 2 * v4++) = v10;
  }

  while (v9 != v4);
  if (v5 && !*(v7 + 2 * v5))
  {
    v11 = v7 - 2;
    do
    {
      v12 = v5 - 1;
      if (v5 == 1)
      {
        break;
      }
    }

    while (!*(v11 + 2 * v5--));
    *(a1 + 16) = v12;
  }

  return a1;
}

void **sub_26153A25C(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0;
  if (*(a2 + 16) <= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  do
  {
    if (*(a2 + 16) >= v6)
    {
      v8 = *(*(a2 + 8) + 2 * v6);
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 16) >= v6)
    {
      v9 = *(*(a1 + 8) + 2 * v6);
    }

    else
    {
      v9 = 0;
    }

    sub_261539B90(a3, v6++, (v9 + v8));
  }

  while (v6 <= v7);

  return sub_261539C3C(a3, v7, 1);
}

uint64_t sub_26153A31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a1)
  {
    operator new();
  }

  sub_261539C3C(a3, 0, 1);
  **(a3 + 8) = 0;
  v6 = 0;
  do
  {
    result = (*(*a1 + 72))(a1, *(*(a2 + 8) + 2 * v6), v6, a3);
    v6 = (v6 + 1);
  }

  while (v6 <= *(a2 + 16));
  return result;
}

void *sub_26153A4A0(void *a1)
{
  *a1 = &unk_2873D20A0;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  a1[2] = 0;
  return a1;
}

void **sub_26153A4F4(uint64_t a1, __int16 a2, void **a3)
{
  v6 = 0;
  do
  {
    result = sub_261539B90(a3, v6, (*(*(a1 + 8) + 2 * v6) * a2));
    ++v6;
  }

  while (v6 <= *(a1 + 16));
  return result;
}

void **sub_26153A584(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0;
  if (*(a2 + 16) <= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  do
  {
    if (*(a1 + 16) >= v6)
    {
      v8 = *(*(a1 + 8) + 2 * v6);
    }

    else
    {
      v8 = 0;
    }

    if (*(a2 + 16) >= v6)
    {
      v9 = *(*(a2 + 8) + 2 * v6);
    }

    else
    {
      v9 = 0;
    }

    sub_261539B90(a3, v6++, (v8 - v9));
  }

  while (v6 <= v7);

  return sub_261539C3C(a3, v7, 1);
}

void sub_26153A644(void *a1)
{
  *a1 = &unk_2873D20A0;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  a1[2] = 0;

  JUMPOUT(0x2667045D0);
}

void **sub_26153A6B8(uint64_t a1, int a2, unsigned __int16 a3, uint64_t a4)
{
  v7 = 0;
  v8 = a2;
  v9 = a3;
  do
  {
    v10 = *(a1 + 24);
    v11 = v7;
    v12 = *(*(a1 + 8) + 2 * v7);
    if (a2 && v12)
    {
      v13 = v10[4];
      v14 = *(v13 + 2 * v12);
      v15 = *(v13 + 2 * v8);
      v16 = v10[2];
      v17 = *(v10[3] + 2 * *(v16 + 2 * v14 + 2 * v15));
    }

    else
    {
      v17 = 0;
      v16 = v10[2];
    }

    v18 = *(v16 + 2 * v11 + 2 * v9);
    if (*(a4 + 16) >= v18)
    {
      v19 = *(*(a4 + 8) + 2 * *(v16 + 2 * v11 + 2 * v9));
    }

    else
    {
      v19 = 0;
    }

    result = sub_261539B90(a4, v18, *(v10[1] + 2 * v17 + 2 * v19));
    v7 = v11 + 1;
  }

  while (*(a1 + 16) >= (v11 + 1));
  return result;
}

uint64_t sub_26153A784(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = 1;
  if ((v4 + 1) > 1)
  {
    v7 = (v4 + 1);
  }

  else
  {
    v7 = 1;
  }

  do
  {
    v8 = 0;
    v10 = *v5++;
    v9 = v10;
    if (v6 && v9)
    {
      v8 = *(*(v3 + 3) + 2 * *(*(v3 + 2) + 2 * *(*(v3 + 4) + 2 * v9) + 2 * *(*(v3 + 4) + 2 * v6)));
    }

    v11 = 0;
    if ((*v3 & ((a2 % *v3) >> 31)) + (a2 % *v3) && v6)
    {
      v11 = *(*(v3 + 3) + 2 * *(*(v3 + 2) + 2 * *(*(v3 + 4) + 2 * v6) + 2 * *(*(v3 + 4) + 2 * ((*v3 & ((a2 % *v3) >> 31)) + a2 % *v3))));
    }

    LOWORD(v2) = *(*(v3 + 1) + 2 * v2 + 2 * v8);
    v6 = v11;
    --v7;
  }

  while (v7);
  return v2;
}

void sub_26153A830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  v7 = 1;
  do
  {
    v8 = *(v6 + 2 * (v7 - 1));
    if (*(v6 + 2 * (v7 - 1)))
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 > *(a2 + 16);
    }

    ++v7;
  }

  while (!v9);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x266704230](exception, "Divide by zero");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(a1 + 24);
  v40 = 0;
  v41 = 0;
  v39 = &unk_2873D20A0;
  sub_261539C3C(&v39, 0, 1);
  v39 = &unk_2873D2018;
  v42 = v10;
  v11 = *(a2 + 16);
  v12 = *(a1 + 24);
  v13 = *(*(v12 + 40) + 2 * *(*(a2 + 8) + 2 * v11));
  v36 = 0;
  v37 = 0;
  v35 = &unk_2873D20A0;
  sub_261539C3C(&v35, 0, 1);
  v35 = &unk_2873D2018;
  v38 = v12;
  v14 = *(a1 + 24);
  v32 = 0;
  v33 = 0;
  v31 = &unk_2873D20A0;
  sub_261539C3C(&v31, 0, 1);
  v31 = &unk_2873D2018;
  v34 = v14;
  v28 = 0;
  v29 = 0;
  v27 = &unk_2873D20A0;
  sub_26153A1B8(&v27, a1);
  v15 = *(a1 + 24);
  v27 = &unk_2873D2018;
  v30 = v15;
  while (1)
  {
    v16 = 1;
    do
    {
      v17 = *(v28 + v16 - 1);
      if (*(v28 + v16 - 1))
      {
        v18 = 1;
      }

      else
      {
        v18 = v16 > v29;
      }

      ++v16;
    }

    while (!v18);
    if (!v17 || v29 < v11)
    {
      break;
    }

    v20 = 0;
    v21 = *(a1 + 24);
    v22 = v21[2];
    if (v13 && *(v28 + v29))
    {
      v20 = *(v21[3] + 2 * *(v22 + 2 * *(v21[4] + 2 * *(v28 + v29)) + 2 * *(v21[4] + 2 * v13)));
    }

    v23 = *(v22 + 2 * v29 + 2 * *v21 + 2 * (~v11 | 0xFFFF0000));
    sub_261539C3C(&v35, 0, 1);
    *v36 = 0;
    sub_261539B90(&v35, v23, v20);
    sub_26153AC14(&v35, &v39, &v39);
    sub_26153ACDC(&v35, a2, &v31);
    sub_26153AE60(&v27, &v31, &v27);
  }

  sub_26153A1B8(a4, &v27);
  sub_26153A1B8(a3, &v39);
  v27 = &unk_2873D20A0;
  if (v28)
  {
    free(v28);
  }

  v31 = &unk_2873D20A0;
  if (v32)
  {
    free(v32);
  }

  v35 = &unk_2873D20A0;
  if (v36)
  {
    free(v36);
  }

  v39 = &unk_2873D20A0;
  if (v40)
  {
    free(v40);
  }
}

void **sub_26153AC14(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0;
  if (*(a2 + 16) <= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  do
  {
    if (*(a2 + 16) >= v6)
    {
      v8 = *(*(a2 + 8) + 2 * v6);
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 16) >= v6)
    {
      v9 = *(*(a1 + 8) + 2 * v6);
    }

    else
    {
      v9 = 0;
    }

    sub_261539B90(a3, v6++, *(*(*(a1 + 24) + 8) + 2 * v8 + 2 * v9));
  }

  while (v6 <= v7);

  return sub_261539C3C(a3, v7, 1);
}

uint64_t sub_26153ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a1)
  {
    operator new();
  }

  sub_261539C3C(a3, 0, 1);
  **(a3 + 8) = 0;
  v6 = 0;
  do
  {
    result = (*(*a1 + 72))(a1, *(*(a2 + 8) + 2 * v6), v6, a3);
    v6 = (v6 + 1);
  }

  while (v6 <= *(a2 + 16));
  return result;
}

void **sub_26153AE60(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0;
  if (*(a2 + 16) <= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  do
  {
    if (*(a1 + 16) >= v6)
    {
      v8 = *(*(a1 + 8) + 2 * v6);
    }

    else
    {
      v8 = 0;
    }

    if (*(a2 + 16) >= v6)
    {
      v9 = *(*(a2 + 8) + 2 * v6);
    }

    else
    {
      v9 = 0;
    }

    sub_261539B90(a3, v6++, *(*(*(a1 + 24) + 8) + 2 * (v8 - v9) + 2 * **(a1 + 24)));
  }

  while (v6 <= v7);

  return sub_261539C3C(a3, v7, 1);
}

void **sub_26153AF30(uint64_t a1, int a2, void **a3)
{
  v6 = 0;
  v7 = a2;
  do
  {
    v8 = 0;
    if (a2)
    {
      if (*(*(a1 + 8) + 2 * v6))
      {
        v9 = *(a1 + 24);
        v8 = *(v9[3] + 2 * *(v9[2] + 2 * *(v9[4] + 2 * v7) + 2 * *(v9[4] + 2 * *(*(a1 + 8) + 2 * v6))));
      }
    }

    result = sub_261539B90(a3, v6++, v8);
  }

  while (v6 <= *(a1 + 16));
  return result;
}

void **sub_26153AFC4(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = 0;
  if (*(a2 + 16) <= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  do
  {
    if (*(a2 + 16) >= v6)
    {
      v8 = *(*(a2 + 8) + 2 * v6);
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 16) >= v6)
    {
      v9 = *(*(a1 + 8) + 2 * v6);
    }

    else
    {
      v9 = 0;
    }

    sub_261539B90(a3, v6++, *(*(*(a1 + 24) + 8) + 2 * (v8 - v9) + 2 * **(a1 + 24)));
  }

  while (v6 <= v7);

  return sub_261539C3C(a3, v7, 1);
}

void sub_26153B094(void *a1)
{
  *a1 = &unk_2873D20A0;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  a1[2] = 0;

  JUMPOUT(0x2667045D0);
}

void *sub_26153B108(void *a1)
{
  *a1 = &unk_2873D20A0;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  a1[2] = 0;
  return a1;
}

uint64_t sub_26153B15C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873D20A0;
  sub_261539C3C(a1, 0, 1);
  *a1 = &unk_2873D2018;
  *(a1 + 24) = a2;
  return a1;
}

uint64_t sub_26153B1D0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873D20A0;
  sub_261539C3C(a1, a3, 1);
  if (*(a1 + 16) < a3)
  {
    sub_261539C3C(a1, a3, 0);
  }

  *(*(a1 + 8) + 2 * a3) = 1;
  *a1 = &unk_2873D2018;
  *(a1 + 24) = a2;
  return a1;
}

uint64_t sub_26153B278(uint64_t a1, uint64_t a2)
{
  sub_261539C3C(a1, *(a2 + 16), 0);
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  do
  {
    if (v6 >= v4)
    {
      v9 = *(v7 + 2 * v4);
    }

    else
    {
      v9 = 0;
    }

    *(v8 + 2 * v4++) = v9;
  }

  while (v5 >= v4);
  if (v5 && !*(v8 + 2 * v5))
  {
    v10 = v8 - 2;
    do
    {
      v11 = v5 - 1;
      if (v5 == 1)
      {
        break;
      }
    }

    while (!*(v10 + 2 * v5--));
    *(a1 + 16) = v11;
  }

  return a1;
}

void **sub_26153B310(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_26153B278(a2, a1);
  }

  v3 = *(a2 + 16);
  if (v3 >= (**(a2 + 24) - 1))
  {
    v4 = (**(a2 + 24) - 1);
    do
    {
      if (*(a2 + 16) >= v3)
      {
        v5 = *(*(a2 + 8) + 2 * v3);
      }

      else
      {
        v5 = 0;
      }

      v6 = **(a2 + 24) - 1;
      v18 = &unk_2873D20A0;
      v7 = v3 % v6;
      v19 = 0;
      v20 = 0;
      sub_261539C3C(&v18, (v3 % v6), 1);
      sub_261539B90(&v18, v7, v5);
      (*(*a2 + 16))(a2, &v18, a2);
      sub_261539B90(a2, v3, 0);
      v18 = &unk_2873D20A0;
      if (v19)
      {
        free(v19);
      }

      --v3;
    }

    while (v3 >= v4);
    v3 = *(a2 + 16);
  }

  v8 = *(a2 + 8);
  if (v3)
  {
    v9 = *(v8 + 2 * v3) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v3;
    v11 = v8 - 2;
    do
    {
      v12 = v10 - 1;
      if (v10 == 1)
      {
        break;
      }
    }

    while (!*(v11 + 2 * v10--));
    *(a2 + 16) = v12;
  }

  v14 = 0;
  do
  {
    v15 = **(a2 + 24);
    v16 = *(*(a2 + 8) + 2 * v14) % v15;
    result = sub_261539B90(a2, v14++, ((v15 & (v16 >> 31)) + v16));
  }

  while (v14 <= *(a2 + 16));
  return result;
}

void sub_26153B4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void **sub_26153B4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a1)
  {
    operator new();
  }

  sub_261539C3C(a3, 0, 1);
  **(a3 + 8) = 0;
  v6 = 0;
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = *(*(a2 + 8) + 2 * v6);
    do
    {
      v10 = 0;
      v11 = *(a1 + 24);
      if (v9 && *(*(a1 + 8) + 2 * v8))
      {
        v10 = *(v11[3] + 2 * *(v11[2] + 2 * *(v11[4] + 2 * *(*(a1 + 8) + 2 * v8)) + 2 * *(v11[4] + 2 * v9)));
      }

      v12 = v7 + v6;
      if (*(a3 + 16) >= v7 + v6)
      {
        v13 = *(*(a3 + 8) + 2 * v12);
      }

      else
      {
        v13 = 0;
      }

      result = sub_261539B90(a3, v12, *(v11[1] + 2 * v10 + 2 * v13));
      v7 = ++v8;
    }

    while (*(a1 + 16) >= v8);
    ++v6;
  }

  while (v6 <= *(a2 + 16));
  return result;
}

atomic_ullong *sub_26153B6C8(atomic_ullong *a1, atomic_ullong *a2)
{
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    if (atomic_load_explicit(a2, memory_order_acquire))
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
      Width = CVPixelBufferGetWidth(atomic_load_explicit(a2, memory_order_acquire));
      Height = CVPixelBufferGetHeight(atomic_load_explicit(a2, memory_order_acquire));
      CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"<CVPixelBuffer %p: ", atomic_load_explicit(a2, memory_order_acquire));
      explicit = atomic_load_explicit(a1, memory_order_acquire);
      v8 = HIBYTE(PixelFormatType);
      v9 = PixelFormatType;
      if (HIBYTE(PixelFormatType) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      v10 = vdup_n_s32(PixelFormatType);
      if (PixelFormatType - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v11 = vshl_u32(v10, 0xFFFFFFF0FFFFFFF8);
      v12 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v11, 0xE0000000E0), 0xFF000000FFLL)), v11, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v31 = 0;
      v30 = v12.i32[0] | (v9 << 24) | v8 | v12.i32[1];
      CFStringAppendFormat(explicit, 0, @"pixelFormatType=%.4s, ", &v30);
      CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"width=%zu, ", Width);
      CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"height=%zu, ", Height);
      IsPlanar = CVPixelBufferIsPlanar(atomic_load_explicit(a2, memory_order_acquire));
      v14 = atomic_load_explicit(a1, memory_order_acquire);
      if (IsPlanar)
      {
        CFStringAppend(v14, @"planar, ");
        PlaneCount = CVPixelBufferGetPlaneCount(atomic_load_explicit(a2, memory_order_acquire));
        CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"planeCount=%zu, ", PlaneCount);
        if (PlaneCount)
        {
          v16 = 0;
          do
          {
            WidthOfPlane = CVPixelBufferGetWidthOfPlane(atomic_load_explicit(a2, memory_order_acquire), v16);
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(atomic_load_explicit(a2, memory_order_acquire), v16);
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(atomic_load_explicit(a2, memory_order_acquire), v16);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(atomic_load_explicit(a2, memory_order_acquire), v16);
            CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"widthOfPlane%zu=%zu, ", v16, WidthOfPlane);
            CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"heightOfPlane%zu=%zu, ", v16, HeightOfPlane);
            CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"baseAddressOfPlane%zu=%p, ", v16, BaseAddressOfPlane);
            CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"bytesPerRowOfPlane%zu=%zu", v16++, BytesPerRowOfPlane);
            if (v16 < PlaneCount)
            {
              CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @", ");
            }
          }

          while (PlaneCount != v16);
        }
      }

      else
      {
        CFStringAppend(v14, @"non-planar, ");
        BaseAddress = CVPixelBufferGetBaseAddress(atomic_load_explicit(a2, memory_order_acquire));
        BytesPerRow = CVPixelBufferGetBytesPerRow(atomic_load_explicit(a2, memory_order_acquire));
        CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"baseAddress=%p, ", BaseAddress);
        CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"bytesPerRow=%zu", BytesPerRow);
      }

      IOSurface = CVPixelBufferGetIOSurface(atomic_load_explicit(a2, memory_order_acquire));
      if (IOSurface)
      {
        v26 = IOSurface;
        CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @", ");
        CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"surface=%p, ", v26);
        v27 = atomic_load_explicit(a1, memory_order_acquire);
        ID = IOSurfaceGetID(v26);
        CFStringAppendFormat(v27, 0, @"surfaceID=%#x", ID);
      }

      v21 = atomic_load_explicit(a1, memory_order_acquire);
      v22 = @">";
    }

    else
    {
      v21 = atomic_load_explicit(a1, memory_order_acquire);
      v22 = @"<null>";
    }

    CFStringAppend(v21, v22);
  }

  return a1;
}

atomic_ullong *sub_26153BA20(atomic_ullong *a1, double a2)
{
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    if (fabs(a2) == INFINITY)
    {
      if ((*&a2 & 0x8000000000000000) != 0)
      {
        CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @"-");
      }

      CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @"Infinity");
    }

    else
    {
      CFStringAppendFormat(atomic_load_explicit(a1, memory_order_acquire), 0, @"%.*g", 17, *&a2);
    }
  }

  return a1;
}

atomic_ullong *sub_26153BACC(atomic_ullong *a1, double *a2)
{
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @"{x=");
    sub_26153BA20(a1, *a2);
    CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @", y=");
    sub_26153BA20(a1, a2[1]);
    CFStringAppend(atomic_load_explicit(a1, memory_order_acquire), @"}");
  }

  return a1;
}

void sub_26153BB4C(void *a1)
{
  *a1 = &unk_2873D2078;
  sub_261537848(a1 + 1);

  JUMPOUT(0x2667045D0);
}

void *sub_26153BBB0(void *a1)
{
  *a1 = &unk_2873D2078;
  sub_261537848(a1 + 1);
  return a1;
}

void sub_26153BBF4(void *a1)
{
  *a1 = &unk_2873D2078;
  sub_261537848(a1 + 1);

  JUMPOUT(0x2667045D0);
}

void *sub_26153BC58(void *a1)
{
  *a1 = &unk_2873D2078;
  sub_261537848(a1 + 1);
  return a1;
}

void *sub_26153BC9C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_261472B30(a2);
  }

  return result;
}

void sub_26153BD00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_26153BD1C(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_26153BD9C(a2);
  }

  return result;
}

void sub_26153BD80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26153BD9C(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2614709D4();
}

double ACBSConfigCreate()
{
  sub_2615449EC();
  v0 = malloc_type_calloc(1uLL, 0x28uLL, 0x1060040CBFE3DCFuLL);
  v0[1] = 8;
  *(v0 + 3) = 0;
  v0[8] = 0;
  *v0 = 0;
  result = NAN;
  *(v0 + 2) = -1;
  *(v0 + 36) = 0;
  return result;
}

void ACBSConfigFree(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

CFTypeRef ACBSConfigCopy(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v3;
  *(a1 + 16) = v2;
  result = *(a1 + 8);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFArrayRef ACBSConfigSetSymbologiesEnabled(uint64_t a1, CFArrayRef theArray)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  result = CFArrayCreateCopy(*MEMORY[0x277CBECE8], theArray);
  *(a1 + 8) = result;
  return result;
}

CFArrayRef ACBSConfigCopySymbologiesEnabled(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *MEMORY[0x277CBECE8];
  if (v1)
  {
    return CFArrayCreateCopy(v2, v1);
  }

  else
  {
    return CFArrayCreate(v2, 0, 0, MEMORY[0x277CBF128]);
  }
}

__CFDictionary *ACBSCreateFrameInfoBySearchingForBarcodesInCGImage(uint64_t a1, CGImage *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v28 = *MEMORY[0x277D85DE8];
  if (CGRectIsNull(*&a4) || (v29.origin.x = a4, v29.origin.y = a5, v29.size.width = a6, v29.size.height = a7, CGRectIsEmpty(v29)) || (v30.origin.x = a4, v30.origin.y = a5, v30.size.width = a6, v30.size.height = a7, CGRectIsInfinite(v30)))
  {
    v14 = 0;
  }

  else
  {
    v32.origin.x = a4;
    v32.origin.y = a5;
    v32.size.width = a6;
    v32.size.height = a7;
    a2 = CGImageCreateWithImageInRect(a2, v32);
    v14 = a2;
  }

  Width = CGImageGetWidth(a2);
  Height = CGImageGetHeight(a2);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = CGBitmapContextCreate(0, Width, Height, 8uLL, (4 * Width + 15) & 0xFFFFFFFFFFFFFFF0, DeviceRGB, 2u);
  if (!v18)
  {
    v20 = 0;
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = v18;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = Width;
  v31.size.height = Height;
  CGContextDrawImage(v18, v31, a2);
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x34323066u, 0, &pixelBufferOut) || CVPixelBufferLockBaseAddress(pixelBufferOut, 0))
  {
    v20 = 0;
  }

  else
  {
    src.data = CGBitmapContextGetData(v19);
    src.height = CGBitmapContextGetHeight(v19);
    src.width = CGBitmapContextGetWidth(v19);
    src.rowBytes = CGBitmapContextGetBytesPerRow(v19);
    destYp.data = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
    destYp.height = CVPixelBufferGetHeightOfPlane(pixelBufferOut, 0);
    destYp.width = CVPixelBufferGetWidthOfPlane(pixelBufferOut, 0);
    destYp.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
    destCbCr.data = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
    destCbCr.height = CVPixelBufferGetHeightOfPlane(pixelBufferOut, 1uLL);
    destCbCr.width = CVPixelBufferGetWidthOfPlane(pixelBufferOut, 1uLL);
    destCbCr.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 1uLL);
    v22 = *ymmword_26157A21C;
    if (vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x277CB86D8], &v22, &outInfo, kvImageARGB8888, kvImage420Yp8_CbCr8, 0) || vImageConvert_ARGB8888To420Yp8_CbCr8(&src, &destYp, &destCbCr, &outInfo, 0, 0))
    {
      v20 = 0;
    }

    else
    {
      v20 = ACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBuffer(a1, pixelBufferOut, a3, 0.0, 0.0, Width, Height);
    }

    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  }

  if (pixelBufferOut)
  {
    CVPixelBufferRelease(pixelBufferOut);
  }

  CGContextRelease(v19);
  if (v14)
  {
LABEL_12:
    CGImageRelease(v14);
  }

LABEL_13:
  CGColorSpaceRelease(DeviceRGB);
  return v20;
}

__CFDictionary *ACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBuffer(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1111970369)
  {
    if (CVPixelBufferIsPlanar(pixelBuffer))
    {
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    }

    else
    {
      WidthOfPlane = CVPixelBufferGetWidth(pixelBuffer);
    }

    v30 = WidthOfPlane;
    if (CVPixelBufferIsPlanar(pixelBuffer))
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    }

    else
    {
      HeightOfPlane = CVPixelBufferGetHeight(pixelBuffer);
    }

    v32 = HeightOfPlane;
    v89.origin.x = a4;
    v89.origin.y = a5;
    v89.size.width = a6;
    v89.size.height = a7;
    if (CGRectIsNull(v89) || (v90.origin.x = a4, v90.origin.y = a5, v90.size.width = a6, v90.size.height = a7, CGRectIsEmpty(v90)) || (v91.origin.x = a4, v91.origin.y = a5, v91.size.width = a6, v91.size.height = a7, CGRectIsInfinite(v91)))
    {
      v33 = v30;
      v34 = v32;
      x = 0.0;
      y = 0.0;
      width = v30;
      height = v32;
      if (!pixelBuffer)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v33 = v30;
      v34 = v32;
      v97.origin.x = 0.0;
      v97.origin.y = 0.0;
      v95.origin.x = a4;
      v95.origin.y = a5;
      v95.size.width = a6;
      v95.size.height = a7;
      v97.size.width = v30;
      v97.size.height = v32;
      v96 = CGRectIntersection(v95, v97);
      x = v96.origin.x;
      y = v96.origin.y;
      width = v96.size.width;
      height = v96.size.height;
      if (!pixelBuffer)
      {
        goto LABEL_50;
      }
    }

    TypeID = CVPixelBufferGetTypeID();
    if (TypeID == CFGetTypeID(pixelBuffer))
    {
      if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1111970369 && !CVPixelBufferLockBaseAddress(pixelBuffer, 0))
      {
        v40 = x / v33;
        v41 = y / v34;
        v42 = width / v33;
        v43 = height / v34;
        DeviceRGB = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x277CC4B78], 0);
        if (!DeviceRGB)
        {
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
        }

        theDict = DeviceRGB;
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
        v46 = CVPixelBufferGetHeight(pixelBuffer);
        v47 = CVPixelBufferGetWidth(pixelBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v49 = v40 * v47;
        v50 = v41 * v46;
        v51 = v42 * v47;
        v52 = v43 * v46;
        v92.origin.x = v49;
        v92.origin.y = v50;
        v92.size.width = v51;
        v92.size.height = v52;
        v93 = CGRectIntegral(v92);
        v53 = v93.origin.x;
        v54 = v93.origin.y;
        v55 = rint(v93.size.height);
        v81 = rint(v93.size.width);
        v56 = (4 * v81 + 15) & 0xFFFFFFFFFFFFFFF0;
        __dst = malloc_type_malloc(v56 * v55, 0xF7363B64uLL);
        if (v55)
        {
          v57 = rint(v53);
          v58 = rint(v54);
          if (v56 >= BytesPerRow)
          {
            v59 = BytesPerRow;
          }

          else
          {
            v59 = (4 * v81 + 15) & 0xFFFFFFFFFFFFFFF0;
          }

          v60 = &BaseAddress[4 * v57 + BytesPerRow * v58];
          v61 = __dst;
          v62 = v55;
          do
          {
            memcpy(v61, v60, v59);
            v61 += v56;
            v60 += BytesPerRow;
            --v62;
          }

          while (v62);
        }

        v63 = CGDataProviderCreateWithData(0, __dst, v56 * v55, sub_26154D718);
        v64 = CGImageCreate(v81, v55, 8uLL, 0x20uLL, v56, theDict, 0x2002u, v63, 0, 0, kCGRenderingIntentPerceptual);
        v94.origin.x = v49 - v53;
        v94.origin.y = v50 - v54;
        v94.size.width = v51;
        v94.size.height = v52;
        v65 = CGImageCreateWithImageInRect(v64, v94);
        CGImageRelease(v64);
        CGDataProviderRelease(v63);
        CGColorSpaceRelease(theDict);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        if (v65)
        {
          v66 = CGImageGetWidth(v65);
          v67 = CGImageGetHeight(v65);
          v68 = ACBSCreateFrameInfoBySearchingForBarcodesInCGImage(a1, v65, a3, 0.0, 0.0, v66, v67);
          CGImageRelease(v65);
          return v68;
        }

        return 0;
      }

      goto LABEL_51;
    }

LABEL_50:
    CVPixelBufferGetTypeID();
    CFGetTypeID(pixelBuffer);
LABEL_51:
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    return 0;
  }

  v15 = CMGetAttachment(pixelBuffer, @"ImagePyramidArray", 0);
  v16 = MRCSampleCreateWithCVPixelBufferAndPyramid(pixelBuffer, v15, a4, a5, a6, a7);
  if (v16)
  {
    v17 = v16;
    MRCSampleGeneratePyramidIfNotPresent(v16);
    v18 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v20 = ACBSConfigCopySymbologiesEnabled(a1);
    CFDictionarySetValue(Mutable, @"MRCDecoderOptionSymbologies", v20);
    CFRelease(v20);
    sub_261544980(Mutable, @"MRCDecoderOptionLocatingMode", *(a1 + 4));
    sub_261544980(Mutable, @"MRCDecoderOptionMaximumQRModuleSamplingCount", *(a1 + 16));
    sub_261544980(Mutable, @"MRCDecoderOptionMaximumQRFinderPatternTripletCount", *(a1 + 20));
    LODWORD(valuePtr) = *(a1 + 32);
    v21 = CFNumberCreate(v18, kCFNumberFloat32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"MRCDecoderOptionMaximum1DSymbologyDecodingTime", v21);
    CFRelease(v21);
    sub_261544980(Mutable, @"MRCDecoderOptionMaximum1DSymbologyDecodingScanlineCount", *(a1 + 24));
    sub_261544980(Mutable, @"MRCDecoderOptionMinimum1DSymbologyDecodingScanlineCount", *(a1 + 28));
    v22 = MEMORY[0x277CBED28];
    if (!*(a1 + 36))
    {
      v22 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"MRCDecoderOptionShouldStopAtFirstPyramidWith2DSymbologies", *v22);
    v23 = CFArrayCreateMutable(v18, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v23, @"LocatorPoints");
    CFArrayAppendValue(v23, @"FocusSharpness");
    if (*(a1 + 1) == 1)
    {
      CFArrayAppendValue(v23, @"FrameFailedLocations");
    }

    if (*a1 == 1)
    {
      CFArrayAppendValue(v23, @"FrameDebugData");
    }

    CFDictionarySetValue(Mutable, @"MRCDecoderOptionNeededResultAttributes", v23);
    CFRelease(v23);
    valuePtr = 0;
    v24 = CFNumberCreate(v18, kCFNumberCFIndexType, &valuePtr);
    CFDictionarySetValue(Mutable, @"MRCDecoderOptionAlgorithmVersion", v24);
    CFRelease(v24);
    v25 = MRCDecoderCreateWithOptions(Mutable);
    CFRelease(Mutable);
    err = 0;
    v27 = MRCDecoderDecodeSampleWithRegions(v26);
    CFRelease(v25);
    if (v27)
    {
      v28 = MRCDecoderResultCopyAttributes(v27);
      MutableCopy = CFDictionaryCreateMutableCopy(v18, 0, v28);
      CFRelease(v28);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v18, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v86 = 0;
    sub_261544980(MutableCopy, @"FrameResultErrorCode", 0);
    if (v27)
    {
      DescriptorCount = MRCDecoderResultGetDescriptorCount(v27);
      if (DescriptorCount >= 1)
      {
        v71 = DescriptorCount;
        theDicta = MutableCopy;
        __dsta = v17;
        v72 = CFArrayCreateMutable(v18, DescriptorCount, MEMORY[0x277CBF128]);
        for (i = 0; i != v71; ++i)
        {
          DescriptorAtIndex = MRCDecoderResultGetDescriptorAtIndex(v27, i);
          if (DescriptorAtIndex)
          {
            v75 = MRCDescriptorCopyAttributes(DescriptorAtIndex);
            v76 = CFDictionaryCreateMutableCopy(v18, 0, v75);
            CFRelease(v75);
            v77 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            for (j = 0; j != 13; ++j)
            {
              v79 = *off_279AD95D8[j];
              Value = CFDictionaryGetValue(v76, v79);
              if (Value)
              {
                CFDictionarySetValue(v77, v79, Value);
                CFDictionaryRemoveValue(v76, v79);
              }
            }

            CFDictionarySetValue(v76, @"CodeProperties", v77);
            CFRelease(v77);
            if (v76)
            {
              CFArrayAppendValue(v72, v76);
              CFRelease(v76);
            }
          }
        }

        MutableCopy = theDicta;
        CFDictionarySetValue(theDicta, @"SymbolDescriptionArray", v72);
        CFRelease(v72);
        v17 = __dsta;
      }

      CFRelease(v27);
    }

    CFRelease(v17);
    return MutableCopy;
  }

  return 0;
}

const __CFDictionary *ACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncoding(CFDictionaryRef theDict, const void *a2)
{
  if (!theDict)
  {
    return 0;
  }

  v3 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
  if (MutableCopy)
  {
    v5 = CFDictionaryCreateMutableCopy(v3, 0, MutableCopy);
    Value = CFDictionaryGetValue(v5, @"CodeProperties");
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFDictionaryGetTypeID())
      {
        for (i = 0; i != 13; ++i)
        {
          v10 = *off_279AD95D8[i];
          v11 = CFDictionaryGetValue(v7, v10);
          if (v11)
          {
            CFDictionarySetValue(v5, v10, v11);
          }
        }
      }

      CFDictionaryRemoveValue(v5, @"CodeProperties");
    }

    v12 = MRCDescriptorCreateWithAttributes(v5);
    CFRelease(v5);
    if (v12)
    {
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v14 = Mutable;
      if (a2)
      {
        CFDictionarySetValue(Mutable, @"MRCDescriptorPayloadDecodingOptionDefaultEncoding", a2);
      }

      v15 = MRCDescriptorDecodePayloadWithOptions(v12, v14, 0);
      CFRelease(v12);
      CFRelease(v14);
      if (v15)
      {
        CFDictionarySetValue(MutableCopy, @"BarcodeString", v15);
        CFRelease(v15);
      }
    }
  }

  return MutableCopy;
}

float sub_26153CC84(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = floor(a4 + a6 * 0.5) + -10.0;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  v9 = a5;
  v10 = a3 - v7;
  if (v10 >= 0x14)
  {
    LODWORD(v10) = 20;
  }

  *(a1 + 40) = -1077342245;
  result = a7;
  *(a1 + 44) = result;
  *(a1 + 48) = v10;
  *(a1 + 32) = v8 + (v10 >> 1);
  *(a1 + 36) = v9 + a7 / 2;
  *a1 = v8;
  *(a1 + 4) = v9;
  v12 = v9 + a7;
  *(a1 + 8) = v8;
  *(a1 + 12) = v12;
  v13 = v10 + v8;
  *(a1 + 16) = v13;
  *(a1 + 20) = v12;
  *(a1 + 24) = v13;
  *(a1 + 28) = v9;
  ++*a2;
  return result;
}

float sub_26153CD14(uint64_t a1, _DWORD *a2, int a3, double a4, double a5, double a6, double a7)
{
  v7 = a6;
  if (a6 >= 5)
  {
    v7 = 5;
  }

  v8 = vcvtmd_s64_f64(a4 + a6 * 0.5 - (v7 / 2));
  v9 = a1 + 56 * a3;
  *(v9 + 40) = -1077342245;
  result = a7;
  *(v9 + 44) = result;
  *(v9 + 48) = v7;
  *(v9 + 32) = v8 + v7 / 2;
  *(v9 + 36) = a5 + a7 / 2;
  *v9 = v8;
  *(v9 + 4) = a5;
  v11 = a7 + a5 - 1;
  *(v9 + 8) = v8;
  *(v9 + 12) = v11;
  v12 = v7 + v8 - 1;
  *(v9 + 16) = v12;
  *(v9 + 20) = v11;
  *(v9 + 24) = v12;
  *(v9 + 28) = a5;
  ++*a2;
  return result;
}

float sub_26153CDAC(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = a5 + a7 * 0.5 + -10.0;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7;
  v9 = a4;
  v10 = a6;
  v11 = a3 - v7;
  if (v11 >= 0x14)
  {
    LODWORD(v11) = 20;
  }

  result = v10;
  *(a1 + 44) = v10;
  *(a1 + 48) = v11;
  *(a1 + 28) = v8;
  *(a1 + 32) = v9 + v10 / 2;
  *(a1 + 36) = v8 + (v11 >> 1);
  *a1 = v9;
  *(a1 + 4) = v8;
  v13 = v11 + v8;
  *(a1 + 8) = v9;
  *(a1 + 12) = v13;
  v14 = v9 + v10;
  *(a1 + 16) = v14;
  *(a1 + 20) = v13;
  *(a1 + 24) = v14;
  ++*a2;
  return result;
}

float sub_26153CE30(uint64_t a1, _DWORD *a2, int a3, double a4, double a5, double a6, double a7)
{
  v7 = a7;
  if (a7 >= 5)
  {
    v7 = 5;
  }

  v8 = a4;
  v9 = vcvtmd_s64_f64(a5 + a7 * 0.5 - (v7 / 2));
  v10 = a1 + 56 * a3;
  result = a6;
  *(v10 + 44) = result;
  *(v10 + 48) = v7;
  *(v10 + 28) = v9;
  *(v10 + 32) = v8 + a6 / 2;
  *(v10 + 36) = v9 + v7 / 2;
  *v10 = v8;
  *(v10 + 4) = v9;
  v12 = v7 + v9 - 1;
  *(v10 + 8) = v8;
  *(v10 + 12) = v12;
  v13 = a6 + v8 - 1;
  *(v10 + 16) = v13;
  *(v10 + 20) = v12;
  *(v10 + 24) = v13;
  ++*a2;
  return result;
}

uint64_t sub_26153CEC0(uint64_t result, _DWORD *a2, int a3, int a4, double a5, double a6, double a7, double a8)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a7 >= 3)
  {
    if (a4 >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = -a4;
    }

    if (!a4)
    {
      v8 = 1;
    }

    v9 = vcvtmd_s64_f64(a5 + a7 * 0.5);
    v10 = v9 - v8;
    v11 = v8 + v9;
    v12 = v11 - 1;
    v23[0] = v10;
    v23[1] = v11 - 1;
    v13 = (a5 + a7 + -1.0);
    v14 = v11 + 1;
    if (v10 >= a5 && v10 + 2 <= v13 && v12 >= a5 && v14 <= v13)
    {
      v18 = 0;
      v19 = a6;
      v20 = a8 + a6 - 1;
      v21 = result + 56 * a3 + 24;
      do
      {
        *(v21 + 12) = a6 + a8 / 2;
        *(v21 + 16) = -1077342245;
        *(v21 + 20) = a8;
        *(v21 + 24) = 1077936128;
        v22 = v23[v18];
        *(v21 + 4) = v19;
        *(v21 + 8) = v22 + 1;
        *(v21 - 24) = v22;
        *(v21 - 20) = v19;
        *(v21 - 16) = v22;
        *(v21 - 12) = v20;
        v22 += 2;
        *(v21 - 8) = v22;
        *(v21 - 4) = v20;
        *v21 = v22;
        v21 += 56;
        ++v18;
      }

      while (v18 != 2);
      *a2 += 2;
    }
  }

  return result;
}

void sub_26153CFF0(uint64_t a1, int *a2, int a3, double a4, double a5, double a6, double a7)
{
  v14 = *a2;
  sub_26153CD14(a1, a2, a3, a4, a5, a6, a7);
  v15 = *a2 - v14;
  if (v15 >= 1)
  {

    sub_26153CEC0(a1, a2, v15 + a3, 10, a4, a5, a6, a7);
  }
}

float sub_26153D0A0(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  sub_26153CD14(a1, a2, 0, a4, a5, a6, a7);
  v14 = floor(a4 + a6 * 0.5) + -10.0;
  if (v14 <= 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14;
  if ((a3 - v14) >= 0x14)
  {
    v16 = 20;
  }

  else
  {
    v16 = a3 - v15;
  }

  v17 = atan2f(a7, v16);
  v18 = a5 + a7 / 2;
  v19 = v15 + (v16 >> 1);
  *(a1 + 88) = v19;
  *(a1 + 92) = v18;
  v20 = sqrtf((a7 * a7 + v16 * v16));
  *(a1 + 96) = v17;
  *(a1 + 100) = v20;
  *(a1 + 104) = 1065353216;
  *(a1 + 144) = v19;
  *(a1 + 148) = v18;
  result = -v17;
  *(a1 + 152) = result;
  *(a1 + 156) = v20;
  *(a1 + 160) = 1065353216;
  *(a1 + 56) = v15;
  *(a1 + 60) = a5 + a7;
  *(a1 + 64) = v15;
  *(a1 + 68) = a5 + a7;
  *(a1 + 72) = v16 + v15;
  *(a1 + 76) = a5;
  *(a1 + 80) = v16 + v15;
  *(a1 + 84) = a5;
  *(a1 + 112) = v15;
  *(a1 + 116) = a5;
  *(a1 + 120) = v15;
  *(a1 + 124) = a5;
  *(a1 + 128) = v16 + v15;
  *(a1 + 132) = a5 + a7;
  *(a1 + 136) = v16 + v15;
  *(a1 + 140) = a5 + a7;
  *a2 += 2;
  return result;
}

uint64_t sub_26153D1BC(uint64_t result, _DWORD *a2, int a3, int a4, double a5, double a6, double a7, double a8)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a8 >= 3)
  {
    if (a4 >= 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = -a4;
    }

    if (!a4)
    {
      v8 = 1;
    }

    v9 = vcvtmd_s64_f64(a6 + a8 * 0.5);
    v10 = v9 - v8;
    v11 = v8 + v9;
    v12 = v11 - 1;
    v23[0] = v10;
    v23[1] = v11 - 1;
    v13 = (a6 + a8 + -1.0);
    v14 = v11 + 1;
    if (v10 >= a6 && v10 + 2 <= v13 && v12 >= a6 && v14 <= v13)
    {
      v18 = 0;
      v19 = a5;
      v20 = a7 + a5 - 1;
      v21 = result + 56 * a3 + 24;
      do
      {
        *(v21 + 20) = a7;
        *(v21 + 24) = 1077936128;
        v22 = v23[v18];
        *(v21 + 4) = v22;
        *(v21 + 8) = a5 + a7 / 2;
        *(v21 + 12) = v22 + 1;
        *(v21 + 16) = 0;
        *(v21 - 24) = v19;
        *(v21 - 20) = v22;
        *(v21 - 16) = v19;
        *(v21 - 12) = v22 + 2;
        *(v21 - 8) = v20;
        *(v21 - 4) = v22 + 2;
        *v21 = v20;
        v21 += 56;
        ++v18;
      }

      while (v18 != 2);
      *a2 += 2;
    }
  }

  return result;
}

void sub_26153D2E4(uint64_t a1, int *a2, int a3, double a4, double a5, double a6, double a7)
{
  v14 = *a2;
  sub_26153CE30(a1, a2, a3, a4, a5, a6, a7);
  v15 = *a2 - v14;
  if (v15 >= 1)
  {

    sub_26153D1BC(a1, a2, v15 + a3, 10, a4, a5, a6, a7);
  }
}

float sub_26153D394(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  sub_26153CE30(a1, a2, 0, a4, a5, a6, a7);
  v14 = a5 + a7 * 0.5 + -10.0;
  if (v14 <= 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14;
  v16 = a6;
  if ((a3 - v14) >= 0x14)
  {
    v17 = 20;
  }

  else
  {
    v17 = a3 - v15;
  }

  v18 = atan2f(v17, v16);
  v19 = sqrtf((v16 * v16 + v17 * v17));
  *(a1 + 96) = v18;
  *(a1 + 100) = v19;
  *(a1 + 104) = 1065353216;
  v20 = v15 + (v17 >> 1);
  v21 = a4 + v16 / 2;
  *(a1 + 88) = v21;
  *(a1 + 92) = v20;
  result = -v18;
  *(a1 + 152) = result;
  *(a1 + 156) = v19;
  *(a1 + 160) = 1065353216;
  *(a1 + 144) = v21;
  *(a1 + 148) = v20;
  *(a1 + 56) = a4;
  *(a1 + 60) = v17 + v15;
  *(a1 + 64) = a4;
  *(a1 + 68) = v17 + v15;
  v23 = a4 + v16;
  *(a1 + 72) = v23;
  *(a1 + 76) = v15;
  *(a1 + 80) = v23;
  *(a1 + 84) = v15;
  *(a1 + 112) = a4;
  *(a1 + 116) = v15;
  *(a1 + 120) = a4;
  *(a1 + 124) = v15;
  *(a1 + 128) = v23;
  *(a1 + 132) = v17 + v15;
  *(a1 + 136) = v23;
  *(a1 + 140) = v17 + v15;
  *a2 += 2;
  return result;
}

void sub_26153D4AC(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, unsigned int a5, float64_t a6, float64x2_t a7, double a8, double a9, float a10)
{
  v69 = *MEMORY[0x277D85DE8];
  v16 = a8;
  v17 = a9;
  v64 = v17;
  v65 = v16;
  __asm { FMOV            V3.2D, #0.5 }

  a7.f64[1] = a6;
  v23 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(a7, vmulq_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(v16), LODWORD(v17))), _Q3)))));
  v24 = atan2f(v17, v16);
  v25 = fabsf(a10);
  if (v25 <= 1.5708)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1.5708;
  }

  v27 = a1 + 56 * a3;
  *(v27 + 40) = v26;
  *(v27 + 96) = -v26;
  v29 = __sincosf_stret(v26);
  v30 = 0;
  v31 = 0;
  v68[0] = LODWORD(v29.__cosval);
  v68[1] = LODWORD(v29.__cosval);
  v67[0] = LODWORD(v29.__sinval);
  *&v67[1] = -v29.__sinval;
  if (v26 < v24)
  {
    v32 = v65 / v29.__cosval;
  }

  else
  {
    v32 = v64 / v29.__sinval;
  }

  *v28.i32 = v32 * 0.5;
  v33 = -(v32 * 0.5);
  *v34.i8 = vadd_s32(__PAIR64__(a4, a5), -1);
  v34.i64[1] = v34.i64[0];
  v59 = v34;
  v60 = *v34.i8;
  v35 = v34.i32[1];
  v36 = vdup_lane_s32(v28, 0);
  v37 = v34.i32[0];
  v66 = vcvt_f32_s32(v23);
  v38 = vrev64_s32(v23);
  v39 = a1 + 56 * a3;
  do
  {
    v40 = v39 + v31;
    *(v40 + 44) = v32;
    *(v40 + 48) = 0x140400000;
    *(v40 + 32) = v38;
    v41 = *(v39 + v31 + 40);
    v42 = v41 + -1.57079633;
    v43 = __sincosf_stret(v42);
    v62 = *&v68[v30];
    v44 = v66.f32[1] + (v33 * v62);
    v63 = v44;
    v45 = (v44 + v43.__cosval);
    if (v35 >= v45)
    {
      v46 = (v44 + v43.__cosval);
    }

    else
    {
      v46 = v35;
    }

    if (v45 >= 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    *v40 = v47;
    v61 = *&v67[v30];
    v48 = v41 + 1.57079633;
    v50 = __sincosf_stret(v48);
    v49.f32[0] = v50.__sinval;
    v51.i64[0] = __PAIR64__(LODWORD(v50.__cosval), LODWORD(v43.__sinval));
    *&v51.u32[2] = v50;
    v52 = vmla_f32(v66, __PAIR64__(LODWORD(v62), LODWORD(v61)), v36);
    v53 = (v43.__sinval + v52.f32[0]);
    v54.f32[0] = v66.f32[0] + (v33 * v61);
    v54.f32[1] = v63;
    if (v37 >= v53)
    {
      v55 = (v43.__sinval + v52.f32[0]);
    }

    else
    {
      v55 = v37;
    }

    v54.i32[3] = v52.i32[1];
    if (v53 >= 0)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    *(v40 + 28) = v56;
    v54.f32[2] = v66.f32[0] + (v33 * v61);
    v57 = vcvtq_s32_f32(vaddq_f32(v54, v51));
    v49.i32[1] = LODWORD(v43.__cosval);
    v58 = vcvt_s32_f32(vadd_f32(v52, v49));
    *(v40 + 4) = vandq_s8(vcgezq_s32(v57), vminq_s32(v59, v57));
    *(v40 + 20) = vand_s8(vcgez_s32(v58), vmin_s32(v60, v58));
    v31 += 56;
    ++v30;
  }

  while (v31 != 112);
  *a2 += 2;
}

uint64_t sub_26153D780(uint64_t a1, int *a2, double a3, double a4, double a5, double a6, float a7, float a8, float a9)
{
  if (a5 <= a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = a5;
  }

  v18 = v17 + v17;
  v19 = __sincosf_stret(a9);
  v20 = a7 - (v19.__cosval * v18);
  v21 = a8 - (v19.__sinval * v18);
  v53 = v21 - v19.__cosval;
  v54 = v19.__sinval + v20;
  v22 = (v19.__cosval * v18) + a7;
  v23 = (v19.__sinval * v18) + a8;
  v47 = v23 - v19.__cosval;
  v48 = v19.__sinval + v22;
  v46 = v20 - v19.__sinval;
  v52 = v20 - v19.__sinval;
  v44 = v22 - v19.__sinval;
  v45 = v19.__cosval + v21;
  v50 = v22 - v19.__sinval;
  v51 = v19.__cosval + v21;
  v24 = v19.__cosval + v23;
  v49 = v19.__cosval + v23;
  v25 = a3;
  v26 = a4;
  v27 = a3 + a5;
  v28 = a4 + a6;
  result = sub_26155D4B4(&v54, &v53, &v48, &v47, v19.__sinval + v20, v21 - v19.__cosval, v19.__sinval + v22, v23 - v19.__cosval, v25, v27, v26, v28);
  if (result)
  {
    v30 = a3;
    v31 = a4;
    v32 = a4 + a6;
    result = sub_26155D4B4(&v52, &v51, &v50, &v49, v46, v45, v44, v24, v30, v27, v31, v32);
    if (result)
    {
      v33 = v53;
      v34 = v54;
      v35 = v47;
      v36 = v48;
      v37 = v51;
      v38 = v52;
      v39 = v49;
      v40 = v50;
      v41 = (sqrtf(((v53 - v47) * (v53 - v47)) + ((v54 - v48) * (v54 - v48))) + sqrtf(((v51 - v49) * (v51 - v49)) + ((v52 - v50) * (v52 - v50)))) * 0.5;
      if (v41 >= 20.0)
      {
        v42 = a1 + 56 * *a2;
        *v42 = v54;
        *(v42 + 4) = v33;
        *(v42 + 24) = v36;
        *(v42 + 28) = v35;
        *(v42 + 8) = v38;
        *(v42 + 12) = v37;
        *(v42 + 16) = v40;
        *(v42 + 20) = v39;
        *(v42 + 32) = ((v36 + ((v34 + v38) + v40)) * 0.25);
        *(v42 + 36) = ((v35 + ((v33 + v37) + v39)) * 0.25);
        *(v42 + 40) = a9;
        *(v42 + 44) = v41;
        *(v42 + 48) = 1077936128;
        ++*a2;
      }
    }
  }

  return result;
}

uint64_t sub_26153D9A8(uint64_t a1, const UInt8 *a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, atomic_ullong **a8, double a9, double a10, double a11, double a12, float a13)
{
  v474 = a7;
  v463 = a2;
  v464 = a5;
  v18 = a12;
  v19 = a11;
  v21 = a9;
  v544 = *MEMORY[0x277D85DE8];
  v549 = CGRectInset(*&a9, a11 * -0.100000001, a12 * -0.100000001);
  v470 = a3;
  v471 = a4;
  v555.size.width = a3;
  v555.size.height = a4;
  v555.origin.x = 0.0;
  v555.origin.y = 0.0;
  v450 = a4;
  v451 = a3;
  v550 = CGRectIntersection(v549, v555);
  origin = v550.origin;
  v484 = *&v550.origin.y;
  size = v550.size;
  v486 = *&v550.size.height;
  if (CGRectIsEmpty(v550))
  {
    return 11;
  }

  v551.origin.x = origin.x;
  v551.origin.y = v484.f64[0];
  v551.size.width = size.width;
  *&v551.size.height = v486;
  if (CGRectIsInfinite(v551))
  {
    return 11;
  }

  v552.origin.x = origin.x;
  v552.origin.y = v484.f64[0];
  v552.size.width = size.width;
  *&v552.size.height = v486;
  if (CGRectIsNull(v552))
  {
    return 11;
  }

  LODWORD(v534.realp) = 0;
  BYTE4(v534.realp) = 1;
  v23 = *(a1 + 8);
  v24 = sub_2614E9290(v23, &v534) & a6;
  if (!v24)
  {
    return 11;
  }

  v478 = *(v23 + 56);
  v473 = v478 >= 0x20000;
  v504[0] = v470;
  v504[1] = v471;
  v504[3] = 0x100000000;
  v504[2] = v464;
  v504[4] = v463;
  v26 = *(v23 + 53);
  v482 = v24;
  if (v26 == 1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v23 = *(a1 + 8);
  }

  else
  {
    Mutable = 0;
  }

  v503 = -1.0;
  v502 = 0;
  v29 = *(v23 + 44);
  v445 = a8;
  v439 = a1;
  v481 = Mutable;
  if (!v474)
  {
    v33 = 0.0;
    switch(*(v23 + 8))
    {
      case 2:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0x38uLL, 0x100004021716A34uLL));
        v25.n128_f32[0] = sub_26153CD14(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        goto LABEL_209;
      case 3:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0x38uLL, 0x100004021716A34uLL));
        v25.n128_f32[0] = sub_26153CC84(*&v33, &v502, v470, origin.x, v484.f64[0], size.width, *&v486);
        goto LABEL_209;
      case 4:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0xA8uLL, 0x100004021716A34uLL));
        sub_26153CFF0(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        goto LABEL_207;
      case 5:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0xA8uLL, 0x100004021716A34uLL));
        v25.n128_f32[0] = sub_26153D0A0(*&v33, &v502, v470, origin.x, v484.f64[0], size.width, *&v486);
        goto LABEL_207;
      case 6:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0x38uLL, 0x100004021716A34uLL));
        v25.n128_f32[0] = sub_26153CE30(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        goto LABEL_209;
      case 7:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0x38uLL, 0x100004021716A34uLL));
        v25.n128_f32[0] = sub_26153CDAC(*&v33, &v502, v471, origin.x, v484.f64[0], size.width, *&v486);
LABEL_209:
        v29 = 1;
        goto LABEL_213;
      case 8:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0xA8uLL, 0x100004021716A34uLL));
        sub_26153D2E4(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        goto LABEL_207;
      case 9:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0xA8uLL, 0x100004021716A34uLL));
        v25.n128_f32[0] = sub_26153D394(*&v33, &v502, v471, origin.x, v484.f64[0], size.width, *&v486);
        goto LABEL_207;
      case 0xA:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0x70uLL, 0x100004021716A34uLL));
        sub_26153CD14(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        v25.n128_f32[0] = sub_26153CE30(*&v33, &v502, 1, origin.x, v484.f64[0], size.width, *&v486);
        v29 = 2;
        goto LABEL_213;
      case 0xB:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0x150uLL, 0x100004021716A34uLL));
        sub_26153CFF0(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        sub_26153D2E4(*&v33, &v502, v502, origin.x, v484.f64[0], size.width, *&v486);
        goto LABEL_211;
      case 0xC:
        v33 = COERCE_DOUBLE(malloc_type_malloc(0x230uLL, 0x100004021716A34uLL));
        sub_26153CFF0(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        sub_26153D2E4(*&v33, &v502, v502, origin.x, v484.f64[0], size.width, *&v486);
        sub_26153CEC0(*&v33, &v502, v502, 20, origin.x, v484.f64[0], size.width, *&v486);
        v106 = v502;
        v107 = *&v33;
        x = origin.x;
        v109 = v484.f64[0];
        width = size.width;
        v111 = *&v486;
        v112 = 20;
        goto LABEL_194;
      case 0xD:
        v127 = (*&v486 * 0.5);
        v128 = (size.width * 0.5);
        v33 = COERCE_DOUBLE(malloc_type_malloc(0x8C0uLL, 0x100004021716A34uLL));
        sub_26153CFF0(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        sub_26153D2E4(*&v33, &v502, v502, origin.x, v484.f64[0], size.width, *&v486);
        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, size.width, *&v486, 0.17453);
        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, size.width, *&v486, 1.3963);
        if (vcvts_n_f32_s32(v128, 3uLL) > 10.0 && *&v486 > 20.0)
        {
          v130 = size.width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(v130 * 0.0625)), origin.x, v484.f64[0], size.width, *&v486);
        }

        v131 = v128;
        v132 = size.width;
        if (vcvts_n_f32_s32(v127, 3uLL) > 10.0 && size.width > 20.0)
        {
          v134 = *&v486;
          sub_26153D1BC(*&v33, &v502, v502, fabsf(roundf(v134 * 0.0625)), origin.x, v484.f64[0], size.width, *&v486);
          v132 = size.width;
        }

        v135 = v127;
        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, v132, *&v486, 0.34907);
        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, size.width, *&v486, 1.2217);
        if ((v131 * 0.25) > 10.0 && *&v486 > 20.0)
        {
          v137 = size.width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(v137 * 0.125)), origin.x, v484.f64[0], size.width, *&v486);
        }

        v138 = size.width;
        if ((v135 * 0.25) > 10.0 && size.width > 20.0)
        {
          v140 = *&v486;
          sub_26153D1BC(*&v33, &v502, v502, fabsf(roundf(v140 * 0.125)), origin.x, v484.f64[0], size.width, *&v486);
          v138 = size.width;
        }

        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, v138, *&v486, 0.5236);
        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, size.width, *&v486, 1.0472);
        if ((v131 * 0.375) > 10.0 && *&v486 > 20.0)
        {
          v142 = size.width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(v142 * 0.1875)), origin.x, v484.f64[0], size.width, *&v486);
        }

        v143 = size.width;
        if ((v135 * 0.375) > 10.0 && size.width > 20.0)
        {
          v145 = *&v486;
          sub_26153D1BC(*&v33, &v502, v502, fabsf(roundf(v145 * 0.1875)), origin.x, v484.f64[0], size.width, *&v486);
          v143 = size.width;
        }

        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, v143, *&v486, 0.7854);
        if ((v131 * 0.5) > 10.0 && *&v486 > 20.0)
        {
          v147 = size.width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(v147 * 0.25)), origin.x, v484.f64[0], size.width, *&v486);
        }

        width = size.width;
        if ((v135 * 0.5) > 10.0 && size.width > 20.0)
        {
          v149 = *&v486;
          sub_26153D1BC(*&v33, &v502, v502, fabsf(roundf(v149 * 0.25)), origin.x, v484.f64[0], size.width, *&v486);
          width = size.width;
        }

        v25 = v486;
        if ((v131 * 0.75) > 10.0 && *&v486 > 20.0)
        {
          v151 = width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(v151 * 0.375)), origin.x, v484.f64[0], width, *&v486);
          width = size.width;
        }

        v25.n128_f32[0] = v135 * 0.75;
        if ((v135 * 0.75) <= 10.0 || width <= 20.0)
        {
          goto LABEL_211;
        }

        v106 = v502;
        v111 = *&v486;
        v153 = *&v486;
        v112 = fabsf(roundf(v153 * 0.375));
        v107 = *&v33;
        x = origin.x;
        v109 = v484.f64[0];
LABEL_194:
        sub_26153D1BC(v107, &v502, v106, v112, x, v109, width, v111);
LABEL_211:
        v29 = 6;
        goto LABEL_213;
      case 0xE:
        v113 = (size.width * 0.5);
        v33 = COERCE_DOUBLE(malloc_type_malloc(0x498uLL, 0x100004021716A34uLL));
        sub_26153CFF0(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, size.width, *&v486, 1.3963);
        v114 = v113;
        if (vcvts_n_f32_s32(v113, 3uLL) > 10.0 && *&v486 > 20.0)
        {
          v116 = size.width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(v116 * 0.0625)), origin.x, v484.f64[0], size.width, *&v486);
        }

        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, size.width, *&v486, 1.2217);
        v117 = *&v486;
        if ((v114 * 0.25) > 10.0 && *&v486 > 20.0)
        {
          v119 = size.width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(v119 * 0.125)), origin.x, v484.f64[0], size.width, *&v486);
          v117 = *&v486;
        }

        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, size.width, v117, 1.0472);
        if ((v114 * 0.375) > 10.0 && *&v486 > 20.0)
        {
          v121 = size.width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(v121 * 0.1875)), origin.x, v484.f64[0], size.width, *&v486);
        }

        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, size.width, *&v486, 0.7854);
        v122 = *&v486;
        if ((v114 * 0.5) > 10.0 && *&v486 > 20.0)
        {
          v124 = size.width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(v124 * 0.25)), origin.x, v484.f64[0], size.width, *&v486);
          v122 = *&v486;
        }

        v25.n128_u64[0] = 20.0;
        if ((v114 * 0.75) > 10.0 && v122 > 20.0)
        {
          v126 = size.width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(v126 * 0.375)), origin.x, v484.f64[0], size.width, v122);
        }

        goto LABEL_207;
      case 0xF:
        v90 = (*&v486 * 0.5);
        v33 = COERCE_DOUBLE(malloc_type_malloc(0x498uLL, 0x100004021716A34uLL));
        sub_26153D2E4(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, size.width, *&v486, 0.17453);
        v91 = size.width;
        v92 = v90;
        if (vcvts_n_f32_s32(v90, 3uLL) > 10.0 && size.width > 20.0)
        {
          v94 = *&v486;
          sub_26153D1BC(*&v33, &v502, v502, fabsf(roundf(v94 * 0.0625)), origin.x, v484.f64[0], size.width, *&v486);
          v91 = size.width;
        }

        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, v91, *&v486, 0.34907);
        v95 = size.width;
        if ((v92 * 0.25) > 10.0 && size.width > 20.0)
        {
          v97 = *&v486;
          sub_26153D1BC(*&v33, &v502, v502, fabsf(roundf(v97 * 0.125)), origin.x, v484.f64[0], size.width, *&v486);
          v95 = size.width;
        }

        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, v95, *&v486, 0.5236);
        v98 = size.width;
        if ((v92 * 0.375) > 10.0 && size.width > 20.0)
        {
          v100 = *&v486;
          sub_26153D1BC(*&v33, &v502, v502, fabsf(roundf(v100 * 0.1875)), origin.x, v484.f64[0], size.width, *&v486);
          v98 = size.width;
        }

        sub_26153D4AC(*&v33, &v502, v502, v470, v471, origin.x, v484, v98, *&v486, 0.7854);
        v101 = size.width;
        if ((v92 * 0.5) > 10.0 && size.width > 20.0)
        {
          v103 = *&v486;
          sub_26153D1BC(*&v33, &v502, v502, fabsf(roundf(v103 * 0.25)), origin.x, v484.f64[0], size.width, *&v486);
          v101 = size.width;
        }

        v25.n128_u64[0] = 20.0;
        if ((v92 * 0.75) > 10.0 && v101 > 20.0)
        {
          v105 = *&v486;
          sub_26153D1BC(*&v33, &v502, v502, fabsf(roundf(v105 * 0.375)), origin.x, v484.f64[0], v101, *&v486);
        }

LABEL_207:
        v29 = 3;
        goto LABEL_213;
      case 0x11:
        v33 = COERCE_DOUBLE(malloc_type_malloc((112 * v29) | 1, 0x100004021716A34uLL));
        v25.n128_f32[0] = sub_26153CE30(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        if (v29 < 1)
        {
          goto LABEL_213;
        }

        *&v468 = a13;
        v155 = 1;
        v156 = v29;
        do
        {
          v154 = *&v486;
          sub_26153D1BC(*&v33, &v502, v502, fabsf(roundf(((v155++ / v29) * 0.5) * v154)), origin.x, v484.f64[0], size.width, *&v486);
          --v156;
        }

        while (v156);
        goto LABEL_26;
      case 0x12:
        v33 = COERCE_DOUBLE(malloc_type_malloc((112 * v29) | 1, 0x100004021716A34uLL));
        v25.n128_f32[0] = sub_26153CD14(*&v33, &v502, 0, origin.x, v484.f64[0], size.width, *&v486);
        if (v29 < 1)
        {
          goto LABEL_213;
        }

        *&v468 = a13;
        v158 = 1;
        v159 = v29;
        do
        {
          v157 = size.width;
          sub_26153CEC0(*&v33, &v502, v502, fabsf(roundf(((v158++ / v29) * 0.5) * v157)), origin.x, v484.f64[0], size.width, *&v486);
          --v159;
        }

        while (v159);
        goto LABEL_26;
      default:
LABEL_213:
        v49 = v502;
        if (v502 > 0)
        {
          goto LABEL_214;
        }

        goto LABEL_36;
    }
  }

  v30 = 0.0;
  v31 = *&v486;
  if (fabsf(a13) > 5.0)
  {
    v30 = 1.5708;
    if ((90.0 - a13) <= 5.0)
    {
      v31 = size.width;
    }

    else
    {
      v31 = size.width;
      if ((a13 + 90.0) > 5.0)
      {
        v30 = a13 * 3.14159265 / 180.0;
        v32 = __sincosf_stret(v30);
        v31 = size.width / fabsf(v32.__sinval);
        if (*&v486 / v32.__cosval < v31)
        {
          v31 = *&v486 / v32.__cosval;
        }
      }
    }
  }

  v469 = v21;
  v472 = a10;
  v475 = v19;
  v476 = v18;
  *&v468 = a13;
  v34 = v31;
  v35 = fmaxf(v34 / 20.0, 3.0);
  v36 = vcvtms_s32_f32((v34 * 0.5) / v35);
  v33 = COERCE_DOUBLE(malloc_type_malloc(0x968uLL, 0x100004021716A34uLL));
  v37 = origin.x + size.width * 0.5;
  v38 = v484.f64[0] + *&v486 * 0.5;
  v39 = __sincosf_stret(v30);
  v40 = -(v35 * v39.__sinval);
  v41 = v39.__cosval * v35;
  sub_26153D780(*&v33, &v502, origin.x, v484.f64[0], size.width, *&v486, v37, v38, v30);
  if (v36 >= 1)
  {
    v42 = 1;
    v43 = v36;
    do
    {
      sub_26153D780(*&v33, &v502, origin.x, v484.f64[0], size.width, *&v486, v37 + (v40 * v42), v38 + (v41 * v42), v30);
      sub_26153D780(*&v33, &v502, origin.x, v484.f64[0], size.width, *&v486, v37 + (-v40 * v42), v38 + (-v41 * v42), v30);
      ++v42;
      --v43;
    }

    while (v43);
  }

  v44 = v30 + 0.087266;
  v45 = v30 + -0.087266;
  sub_26153D780(*&v33, &v502, origin.x, v484.f64[0], size.width, *&v486, v37, v38, v44);
  sub_26153D780(*&v33, &v502, origin.x, v484.f64[0], size.width, *&v486, v37, v38, v45);
  if (v36 > 1)
  {
    v46 = v36 >> 1;
    *&v480 = v40 + v40;
    *&v479 = -(v40 + v40);
    v47 = v41 + v41;
    *&v477 = -(v41 + v41);
    v48 = 1;
    do
    {
      sub_26153D780(*&v33, &v502, origin.x, v484.f64[0], size.width, *&v486, v37 + (*&v480 * v48), v38 + (v47 * v48), v44);
      sub_26153D780(*&v33, &v502, origin.x, v484.f64[0], size.width, *&v486, v37 + (*&v480 * v48), v38 + (v47 * v48), v45);
      sub_26153D780(*&v33, &v502, origin.x, v484.f64[0], size.width, *&v486, v37 + (*&v479 * v48), v38 + (*&v477 * v48), v44);
      sub_26153D780(*&v33, &v502, origin.x, v484.f64[0], size.width, *&v486, v37 + (*&v479 * v48), v38 + (*&v477 * v48), v45);
      ++v48;
      --v46;
    }

    while (v46);
  }

  v19 = v475;
  v18 = v476;
  a10 = v472;
  v21 = v469;
LABEL_26:
  v49 = v502;
  Mutable = v481;
  if (!v474 || v502 < 1)
  {
    if (v502 < 1)
    {
LABEL_36:
      v446 = 0;
      LODWORD(v475) = 19;
      goto LABEL_525;
    }

LABEL_214:
    memset(v501, 0, sizeof(v501));
    MEMORY[0x28223BE20](v25);
    v448 = v434 - v160;
    MEMORY[0x28223BE20](v161);
    v453 = v434 - v162;
    v455 = malloc_type_malloc(104 * v49, 0x1030040C2A760F9uLL);
    v452 = malloc_type_malloc(88 * v49, 0x10A0040F0082B6AuLL);
    v163 = *(a1 + 8);
    v449 = *(v163 + 32);
    v434[1] = v434;
    if (v449 > 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v163 = *(a1 + 8);
    }

    else
    {
      Current = 0.0;
    }

    v164 = MEMORY[0x277CBECE8];
    if (*(v163 + 51) == 1)
    {
      v446 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v163 = *(a1 + 8);
    }

    else
    {
      v446 = 0;
    }

    v165 = *(v163 + 40);
    if (v49 >= v165)
    {
      v166 = v165;
    }

    else
    {
      v166 = v49;
    }

    if (v165 >= 1)
    {
      v167 = v166;
    }

    else
    {
      v167 = v49;
    }

    v443 = v167;
    if (v167 < 1)
    {
      LODWORD(v475) = 19;
      goto LABEL_524;
    }

    v469 = 0.0;
    v454 = 0;
    v168 = v470;
    if (v470 <= v471)
    {
      v168 = v471;
    }

    v442 = v168;
    v435 = v464 * v471;
    v479 = *v164;
    v169 = v29 & 1;
    if (v29 < 0)
    {
      v169 = -v169;
    }

    v436 = v446 != 0;
    v437 = v169;
    v440 = v29 - 1;
    LODWORD(v475) = 19;
    v447 = 1.5708;
    *&v444 = -1.5708;
    v170 = 0.25;
    v441 = Current;
    v171 = v481;
    v472 = v33;
    while (1)
    {
      if (v449 > 0.0 && v441 - Current >= *(*(a1 + 8) + 32))
      {
LABEL_497:
        if (v454)
        {
          v393 = 0;
          v394 = v454;
          do
          {
            v395 = &v452[88 * v393];
            v396.f32[0] = (*(v395 + 4) + *(v395 + 3));
            v396.f32[1] = *(v395 + 5) + *(v395 + 6);
            v522[0] = vmul_f32(v396, 0x3F0000003F000000);
            v397 = *&v453[4 * v393];
            sub_26155DA58(v470, v471, &v448[52 * v397], 2u, v522, &v524, v513);
            v398 = *v445;
            v399 = v445[1];
            if (*v445 == v399)
            {
LABEL_514:
              *(v395 + 14) = v524;
              *(v395 + 15) = v513[0];
              v421 = &v455[104 * v393];
              v422 = *&dword_280CB3640[16 * *v421 + 14];
              if (v422)
              {
                v423 = *&v472 + 56 * v397;
                v33 = v472;
                if (!v422(v395, &v455[104 * v393], v423, v504))
                {
                  v534.imagp = 0;
                  v534.realp = 0;
                  v535 = 0;
                  sub_261541194(&v491, v421, &v534, 0.0);
                  v424 = v445[1];
                  if (v424 >= v445[2])
                  {
                    v425 = sub_2614BF6E4(v445, &v491);
                  }

                  else
                  {
                    *v424 = atomic_exchange(&v491, 0);
                    v425 = (v424 + 1);
                  }

                  v445[1] = v425;
                  sub_261477724(&v491);
                  LODWORD(v475) = 0;
                }
              }

              else
              {
                v33 = v472;
              }
            }

            else
            {
              v400 = *(&v524 + 1);
              v401 = *(v513 + 1);
              v33 = v472;
              while (1)
              {
                explicit = atomic_load_explicit(v398, memory_order_acquire);
                if (*(explicit + 64) == 1)
                {
                  v404 = explicit + 40;
                  v403 = *(explicit + 40);
                  if (*(v404 + 8) - v403 >= 0x31uLL)
                  {
                    break;
                  }
                }

LABEL_512:
                if (++v398 == v399)
                {
                  v397 = *&v453[4 * v393];
                  goto LABEL_514;
                }
              }

              v405 = 0;
              v406 = *v403;
              v407 = v403[1];
              v408 = 1;
              while (1)
              {
                v409 = v408;
                v410 = &v403[2 * v405];
                v412 = v410[4];
                v411 = v410[5];
                v413 = v410[3] - v411;
                v414 = v406 - v412;
                v415 = v412 - v410[2];
                v416 = v415 * (v407 - v411) + v413 * (v406 - v412);
                if (v416 != 0.0)
                {
                  v417 = v400 - v412;
                  v418 = (v415 * (v401 - v411) + v413 * v417) / v416;
                  if (v418 > -0.0299999993 && v418 < 1.02999997)
                  {
                    v419 = (v414 * (v401 - v411) + (v411 - v407) * v417) / v416;
                    if (v419 > -0.0299999993 && v419 < 1.02999997)
                    {
                      v420 = 1.0 - (v418 + v419);
                      if (v420 > -0.0299999993 && v420 < 1.02999997)
                      {
                        break;
                      }
                    }
                  }
                }

                v408 = 0;
                v405 = 1;
                if ((v409 & 1) == 0)
                {
                  goto LABEL_512;
                }
              }
            }

            sub_261544BD8(&v455[104 * v393]);
            sub_261544D00(v395);
            ++v393;
          }

          while (v393 != v394);
        }

LABEL_524:
        free(v452);
        free(v455);
        a8 = v445;
        a1 = v439;
        Mutable = v481;
        goto LABEL_525;
      }

      v172 = (*&v33 + 56 * *&v469);
      memset(v522, 0, sizeof(v522));
      v173 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
      v523 = v173;
      *(v173 + 8) = 0;
      *(v173 + 18) = 0;
      *(v173 + 10) = 0;
      *v173 = 0u;
      *(v173 + 1) = 0u;
      *(v173 + 2) = 0u;
      *(v173 + 44) = 0u;
      v458 = v172;
      v174 = *(v172 + 12);
      if (v174 <= 0.0 || v174 >= v442)
      {
        *(v172 + 12) = 1065353216;
        v174 = 1.0;
      }

      v176 = v458[8];
      v177 = v458[9];
      v179 = *(v458 + 10);
      v178 = *(v458 + 11);
      v180 = v469;
      v456 = &v448[52 * *&v469];
      v181 = sub_26155E0A4(v463, v470, v471, v464, v522, v456, v176, v177, v178, v179, v174);
      LODWORD(v522[1]) = v181;
      if (v181 <= 21)
      {
        if (v522[0])
        {
          free(v522[0]);
        }

        v522[0] = 0;
        if (LODWORD(v475) == 19 || LODWORD(v475) == 11)
        {
          LODWORD(v475) = 16;
        }

        if (!v446)
        {
          goto LABEL_492;
        }

        goto LABEL_491;
      }

      if (v180 == 0.0)
      {
        break;
      }

      v500 = 0;
      v182 = v522[0];
LABEL_284:
      pthread_once(&stru_27FEB40F0, sub_26155D3D0);
      v220 = v181 & 0x7FFFFFFE;
      v221 = (v181 & 0x7FFFFFFE) - 1;
      if ((v181 & 0x7FFFFFFE) == 0)
      {
        v221 = 0;
      }

      v222 = v221 | (v221 >> 1) | ((v221 | (v221 >> 1)) >> 2);
      v223 = v222 | (v222 >> 4) | ((v222 | (v222 >> 4)) >> 8);
      v224 = (v223 | HIWORD(v223)) + 1;
      v225 = __clz(v224) ^ 0x1F;
      v226 = v224 >> 1;
      v227 = malloc_type_calloc(v181 & 0x7FFFFFFE, 4uLL, 0x100004052888210uLL);
      v534.realp = malloc_type_calloc(v224 >> 1, 4uLL, 0x100004052888210uLL);
      v534.imagp = malloc_type_calloc(v224 >> 1, 4uLL, 0x100004052888210uLL);
      v228 = qword_27FEB43F8;
      if (v225 > *(qword_27FEB43F8 + 4))
      {
        v228 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
        sub_26155D384(v228, v225);
      }

      if (v220 >= 3)
      {
        v229 = -(v220 - 2);
        v230 = v182 + 2;
        v231 = v227;
        do
        {
          *v231++ = *v230 - *(v230 - 2);
          ++v230;
        }

        while (!__CFADD__(v229++, 1));
      }

      vDSP_ctoz(v227, 2, &v534, 1, v181 >> 1);
      vDSP_fft_zrip(v228[1], &v534, 1, v225, 1);
      vDSP_zvcmul(&v534, 1, &v534, 1, &v534, 1, v224 >> 1);
      v233 = v224;
      v234 = (v224 / 40.0);
      if (v234 <= 1)
      {
        v234 = 1;
      }

      v235 = v226 - 1;
      v236 = vcvts_n_f32_u32(v224, 1uLL);
      if (v226 - 1 >= v236)
      {
        v235 = v236;
      }

      if (v234 <= v235)
      {
        v238 = -INFINITY;
        v237 = v234;
        a1 = v439;
        v33 = v472;
        do
        {
          if (v534.realp[v234] > v238)
          {
            v238 = v534.realp[v234];
            v237 = v234;
          }

          ++v234;
        }

        while (v234 <= v235);
      }

      else
      {
        v237 = v234;
        a1 = v439;
        v33 = v472;
      }

      if (v228 != qword_27FEB43F8)
      {
        vDSP_destroy_fftsetup(v228[1]);
        free(v228);
      }

      free(v534.realp);
      free(v534.imagp);
      free(v227);
      v219 = (v233 / v237) * 1.5;
LABEL_305:
      sub_26155E77C(v182, v181, &v500 + 1, &v500);
      v499 = 0;
      v498 = 0;
      v497 = 0;
      if (v239 == 0.0)
      {
        v244 = v436;
        goto LABEL_489;
      }

      v240 = v522[0];
      v241 = v522[1];
      v242 = CFDataCreate(v479, v522[0], 4 * SLODWORD(v522[1]));
      v243 = v242;
      if (v481 && v242)
      {
        CFDictionarySetValue(v481, @"NormalizedDetrendedProfile", v242);
LABEL_311:
        CFRelease(v243);
        goto LABEL_312;
      }

      if (v242)
      {
        goto LABEL_311;
      }

LABEL_312:
      LODWORD(v534.realp) = HIDWORD(v500);
      v245 = CFNumberCreate(v479, kCFNumberFloat32Type, &v534);
      v246 = v245;
      if (v481 && v245)
      {
        CFDictionarySetValue(v481, @"ProfileUnNormalizedVariance", v245);
LABEL_316:
        CFRelease(v246);
        goto LABEL_317;
      }

      if (v245)
      {
        goto LABEL_316;
      }

LABEL_317:
      v247 = llroundf(v219);
      v248 = v503;
      if (v503 <= *&v500)
      {
        v248 = *&v500;
      }

      v503 = v248;
      *(v523 + 1) = v247;
      sub_26155E3B0(v240, v241, v247, &v499, &v498, &v497);
      if (v499 >= 1)
      {
        v249 = 0;
        while (1)
        {
          v494 = 0u;
          v495 = 0u;
          v492 = 0u;
          v493 = 0u;
          v491 = 0u;
          v250 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
          v496 = v250;
          *(v250 + 8) = 0;
          *(v250 + 18) = 0;
          *(v250 + 10) = 0;
          *v250 = 0u;
          *(v250 + 1) = 0u;
          *(v250 + 2) = 0u;
          *(v250 + 44) = 0u;
          sub_261544D48(v522, &v491);
          v525 = 0;
          v524 = 0;
          v527 = 0.0;
          v526 = 0;
          v530 = 0;
          v531 = 0;
          v532 = 0;
          v251 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
          v252 = v251;
          v529 = v251;
          memset(v528, 0, 32);
          *(v251 + 8) = 0;
          *(v251 + 18) = 0;
          *(v251 + 10) = 0;
          *v251 = 0u;
          *(v251 + 1) = 0u;
          *(v251 + 2) = 0u;
          *(v251 + 44) = 0u;
          if (v478 >= 0x20000)
          {
            if (dword_280CB3638 < 1)
            {
              v254 = 0x7FFFFFFF;
            }

            else
            {
              v253 = 0;
              v254 = 0x7FFFFFFF;
              v255 = &dword_280CB3658;
              do
              {
                if (((v482 >> v253) & 1) != 0 && v254 >= *v255)
                {
                  v254 = *v255;
                }

                ++v253;
                v255 += 16;
              }

              while (dword_280CB3638 != v253);
            }

            *(v251 + 5) = v254;
          }

          v251[30] = v474;
          v251[29] = v473;
          v533 = v501;
          v256 = v498[v249];
          HIDWORD(v491) = v256;
          v480 = v249;
          v257 = v497[v249];
          LODWORD(v492) = v257;
          LODWORD(v258) = v257 - v256 + 1;
          v259 = v496;
          *(v496 + 2) = v258;
          v260 = DWORD2(v491);
          sub_26155E81C(v491, SDWORD2(v491), v256, v257);
          LODWORD(v534.realp) = v256;
          v261 = CFNumberCreate(v479, kCFNumberIntType, &v534);
          v262 = v261;
          if (v481)
          {
            if (v261)
            {
              break;
            }
          }

          if (v261)
          {
            goto LABEL_335;
          }

LABEL_336:
          LODWORD(v534.realp) = v257;
          v263 = CFNumberCreate(v479, kCFNumberIntType, &v534);
          v264 = v263;
          if (v481 && v263)
          {
            CFDictionarySetValue(v481, @"ProfileCropRight", v263);
          }

          else if (!v263)
          {
            goto LABEL_341;
          }

          CFRelease(v264);
LABEL_341:
          if (v478 >= 0x20000)
          {
            v265 = sub_26154A5A0(&v491, &v524, v482);
            v33 = v472;
            goto LABEL_343;
          }

          if (v257 <= v256)
          {
            v265 = 15;
            goto LABEL_364;
          }

          if (v258 < 41)
          {
            v265 = 16;
LABEL_364:
            v33 = v472;
            v267 = v480;
LABEL_365:
            if (LODWORD(v475) > 0x13)
            {
              goto LABEL_412;
            }

            if (((1 << SLOBYTE(v475)) & 0x1B704) != 0)
            {
              if ((v265 & 0xFFFFFFFC) != 4)
              {
                goto LABEL_410;
              }

              goto LABEL_371;
            }

            if (((1 << SLOBYTE(v475)) & 0xE0800) == 0)
            {
LABEL_412:
              v320 = (LODWORD(v475) & 0xFFFFFFFD) == 4 || LODWORD(v475) == 7;
              if (!v320 || v265 != 5)
              {
                goto LABEL_410;
              }
            }

LABEL_371:
            LODWORD(v475) = v265;
            goto LABEL_410;
          }

          *&v513[0] = 0;
          v505 = 0.0;
          *(&v513[0] + 1) = malloc_type_malloc(4 * (v257 - v256 + 1), 0x100004052888210uLL);
          v506 = COERCE_DOUBLE(malloc_type_malloc(4 * (v257 - v256 + 1), 0x100004052888210uLL));
          v487 = 0;
          v542 = 0;
          v488 = malloc_type_malloc(4 * (v257 - v256 + 1), 0x100004052888210uLL);
          v543 = malloc_type_malloc(4 * (v257 - v256 + 1), 0x100004052888210uLL);
          v305 = sub_2614F106C(&v491, &v487, &v542);
          if (!v305)
          {
            v305 = sub_2614F1134(&v491, &v487, &v542, v258, 0.8, 0.0);
            if (!v305)
            {
              v540 = 0;
              v539 = 0u;
              *&v538[12] = 0u;
              v321 = *(&v492 + 4);
              if (v258 < 0x2C)
              {
                v265 = 14;
LABEL_481:
                *(&v492 + 4) = v321;
                goto LABEL_375;
              }

              v322 = v542;
              *&v486 = v543;
              *&size.width = v542;
              v323 = v487;
              *&v484.f64[0] = v488;
              *&origin.x = v487;
              *&v476 = v487;
              v477 = 4 * v260;
              v265 = 14;
              v324 = 0.0;
              v325 = &xmmword_261561000;
              while (2)
              {
                v457 = v258;
                v258 = v258 >> 2;
                v326 = 0.6;
                v462 = v258;
LABEL_422:
                LODWORD(v505) = v322;
                if (v322 >= 1)
                {
                  v327 = v506;
                  v328 = v486;
                  v329 = size.width;
                  do
                  {
                    v330 = *v328++;
                    **&v327 = v330;
                    *&v327 += 4;
                    --*&v329;
                  }

                  while (v329 != 0.0);
                }

                LODWORD(v513[0]) = v323;
                if (v323 >= 1)
                {
                  v331 = *(&v513[0] + 1);
                  v332 = v484.f64[0];
                  v333 = origin.x;
                  do
                  {
                    v334 = **&v332;
                    *&v332 += 4;
                    *v331++ = v334;
                    --*&v333;
                  }

                  while (v333 != 0.0);
                }

                v335 = sub_2614F1134(&v491, v513, &v505, v258, v326, *(v325 + 837));
                if (v335)
                {
                  v336 = v335;
                  goto LABEL_471;
                }

                v541 = 0;
                v535 = 0;
                v534.realp = 0;
                v534.imagp = 0;
                v536 = 0.0;
                v539 = 0uLL;
                LOBYTE(v540) = 0;
                v337 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
                *&v538[20] = v337;
                v537 = 0u;
                *v538 = 0u;
                *(v337 + 8) = 0;
                *(v337 + 18) = 0;
                *(v337 + 10) = 0;
                *v337 = 0u;
                *(v337 + 1) = 0u;
                *(v337 + 2) = 0u;
                *(v337 + 44) = 0u;
                v338 = v513[0];
                v339 = *(&v513[0] + 1);
                v340 = v506;
                sub_2615456E4(*&v513[0], *(&v513[0] + 1), *&v505, *&v506, v259, v482);
                v259 = v496;
                if (*v496)
                {
                  v341 = v322;
                  v342 = *(v496 + 8);
                  if (v342)
                  {
                    free(v342);
                  }

                  v343 = v258;
                  *(v259 + 64) = 0;
                  *(v259 + 56) = 0;
                  v344 = *(v259 + 80);
                  if (v344)
                  {
                    free(v344);
                  }

                  *(v259 + 80) = 0;
                  *(v259 + 72) = 0;
                  v345 = v477;
                  *(v259 + 64) = malloc_type_malloc(v477, 0x100004052888210uLL);
                  *(v259 + 80) = malloc_type_malloc(v345, 0x100004052888210uLL);
                  v346 = v491;
                  v347 = sub_2614F1878(v491, v338, v339, *&v340, v259 + 56, v259 + 72);
                  v336 = v347;
                  v348 = *(v259 + 64);
                  v349 = *v348;
                  v350 = *(v259 + 80);
                  if (*v348 >= *v350)
                  {
                    v349 = *v350;
                  }

                  *(&v492 + 1) = v349;
                  v351 = v348[*(v259 + 56) - 1];
                  v352 = &v350[*(v259 + 72)];
                  if (v351 <= *(v352 - 1))
                  {
                    v351 = *(v352 - 1);
                  }

                  *(&v492 + 2) = v351;
                  v258 = v343;
                  v322 = v341;
                  v323 = LODWORD(v476);
                  if (v347)
                  {
LABEL_440:
                    v353 = *&v538[20];
                    v325 = &xmmword_261561000;
                    if (v336 <= 1)
                    {
LABEL_463:
                      *(v353 + 12) = v258;
                      *(v353 + 16) = v326;
                      v379 = v536;
                      if (v536 > v324)
                      {
                        v321 = *(&v492 + 4);
                        sub_261544C1C(&v534, &v524);
                        v265 = v336;
                        v324 = v379;
                      }

                      sub_261544AB4(v353);
LABEL_466:
                      free(v353);
LABEL_467:
                      *&v538[20] = 0;
                      if (v535 != v526)
                      {
                        if (v535)
                        {
                          free(v535);
                        }

                        v535 = 0;
                      }

LABEL_471:
                      if (v265 == 14)
                      {
                        v265 = v336;
                      }

                      v326 = v326 + -0.15;
                      if (v326 <= v170)
                      {
                        if (v457 < 0xB0)
                        {
                          v252 = v529;
                          a8 = v445;
                          a1 = v439;
                          goto LABEL_481;
                        }

                        continue;
                      }

                      goto LABEL_422;
                    }

LABEL_444:
                    sub_261544AB4(v353);
                    if (v353)
                    {
                      goto LABEL_466;
                    }

                    goto LABEL_467;
                  }

                  sub_261544B04(v259, *&v538[20]);
                  v354 = DWORD2(v491);
                  v336 = sub_261545510(*(v259 + 56), *(v259 + 64), *(v259 + 72), *(v259 + 80), &v534, v346, DWORD2(v491), 0);
                  if (v336 < 2)
                  {
                    v355 = 0;
LABEL_462:
                    v353 = *&v538[20];
                    *(*&v538[20] + 28) = v355;
                    v325 = &xmmword_261561000;
                    goto LABEL_463;
                  }

                  v356 = *(v259 + 56);
                  v461 = *(v259 + 64);
                  v357 = *(v259 + 80);
                  v465 = *(v259 + 72);
                  v468 = malloc_type_malloc(4 * v465, 0x100004052888210uLL);
                  v358 = malloc_type_malloc(4 * v356, 0x100004052888210uLL);
                  v466 = v356;
                  v467 = v358;
                  v459 = v357;
                  v460 = (v356 << 32) - 0x100000000;
                  if (v354 <= (*(v357 + (v460 >> 30)) + 2.0))
                  {
                    v359 = v354 - 1;
                  }

                  else
                  {
                    v359 = (*(v357 + (v460 >> 30)) + 2.0);
                  }

                  v360 = malloc_type_malloc(4 * v359, 0x100004052888210uLL);
                  v361 = v359;
                  v362 = v360;
                  if (v359 >= 1)
                  {
                    v363 = (v346 + 4 * v359);
                    v364 = v360;
                    v365 = v359;
                    do
                    {
                      v366 = *v363--;
                      *v364++ = v366;
                      --v365;
                    }

                    while (v365);
                  }

                  v367 = v465;
                  v368 = v359;
                  v369 = v468;
                  if (v465 >= 1)
                  {
                    v370 = v465 & 0x7FFFFFFF;
                    v371 = v459 - 4;
                    v372 = v468;
                    do
                    {
                      *v372++ = v368 - *(v371 + 4 * v370--);
                    }

                    while (v370);
                  }

                  v373 = v467;
                  v374 = v466;
                  v258 = v462;
                  if (v466 >= 1)
                  {
                    v375 = v466 & 0x7FFFFFFF;
                    v376 = (v461 + 4 * (v460 >> 32));
                    v377 = v467;
                    do
                    {
                      v378 = *v376--;
                      *v377++ = v368 - v378;
                      --v375;
                    }

                    while (v375);
                  }

                  LODWORD(v466) = sub_261545510(v367, v369, v374, v373, &v534, v362, v361, 0);
                  free(v362);
                  free(v369);
                  free(v373);
                  if (v466 < 2)
                  {
                    v355 = 1;
                    v336 = v466;
                    goto LABEL_462;
                  }

                  if ((v336 & 0xFFFFFFFD) != 4 || v466 != 5)
                  {
                    goto LABEL_440;
                  }

                  v336 = 5;
                  v325 = &xmmword_261561000;
                }

                else
                {
                  v336 = 2;
                }

                break;
              }

              v353 = *&v538[20];
              goto LABEL_444;
            }
          }

          v265 = v305;
LABEL_375:
          v33 = v472;
          sub_261544B04(v252, v259);
          free(*(&v513[0] + 1));
          free(*&v506);
          free(v488);
          free(v543);
LABEL_343:
          v267 = v480;
          if (v265 != 1)
          {
            if (!v265)
            {
              *&v266 = *(&v492 + 4);
              v486 = v266;
              v542 = *(&v492 + 4);
              LODWORD(size.width) = v458[12];
              v268 = *(v458 + 10);
              v269 = v496[28];
              v271 = v470;
              v270 = v471;
              v272 = v456;
              sub_26155DA58(v470, v471, v456, 2u, &v542, &v520, &v518);
              v273 = v447;
              if (v269)
              {
                v273 = *&v444;
              }

              *&v476 = v520;
              v274 = __sincosf_stret(v268 + v273);
              *&v475 = v521;
              *&v468 = v518;
              *&origin.x = v519;
              v275 = (*&v530 + *&v530) * 0.5;
              v276 = v275 * 4.0;
              v277 = *(&v486 + 1);
              if (*&v486 >= *(&v486 + 1))
              {
                v278 = *(&v486 + 1);
              }

              else
              {
                v278 = *&v486;
              }

              v279 = v278 - v276;
              v280 = HIDWORD(v491) & ~(SHIDWORD(v491) >> 31);
              if (*&v486 > *(&v486 + 1))
              {
                v277 = *&v486;
              }

              if (v279 <= v280)
              {
                v279 = v280;
              }

              v281 = v276 + v277;
              v282 = v492;
              if ((SDWORD2(v491) + -1.0) <= v492)
              {
                v282 = SDWORD2(v491) + -1.0;
              }

              if (v281 >= v282)
              {
                v281 = v282;
              }

              v542 = __PAIR64__(LODWORD(v281), LODWORD(v279));
              sub_26155DA58(v271, v270, v272, 2u, &v542, &v520, &v518);
              *&v477 = v274.__cosval;
              v283 = roundf(v274.__cosval * (v275 + v275));
              *v484.f64 = v274.__sinval;
              v284 = roundf(v274.__sinval * (v275 + v275));
              v285 = v283 + v520;
              v286 = v284 + v518;
              v287 = v283 + v521;
              v288 = v284 + v519;
              v289 = v520 - v283;
              v290 = v518 - v284;
              *&v486 = v521 - v283;
              v541 = 0;
              v535 = 0;
              v534.realp = 0;
              v534.imagp = 0;
              v291 = v519 - v284;
              v536 = 0.0;
              v539 = 0uLL;
              LOBYTE(v540) = 0;
              v292 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
              *&v538[20] = v292;
              v537 = 0u;
              *v538 = 0u;
              *(v292 + 8) = 0;
              *(v292 + 18) = 0;
              *(v292 + 10) = 0;
              *v292 = 0u;
              *(v292 + 1) = 0u;
              *(v292 + 2) = 0u;
              *(v292 + 44) = 0u;
              v517 = 0;
              memset(v513, 0, 28);
              v516 = 0;
              *(&v514 + 1) = 0;
              v515 = 0;
              v293 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
              *&v514 = v293;
              *(&v513[1] + 12) = 0u;
              *(&v513[2] + 12) = 0u;
              *(v293 + 8) = 0;
              *(v293 + 18) = 0;
              *(v293 + 10) = 0;
              *v293 = 0u;
              *(v293 + 1) = 0u;
              *(v293 + 2) = 0u;
              *(v293 + 44) = 0u;
              LODWORD(v513[0]) = v524;
              LODWORD(v534.realp) = v524;
              v294 = v514;
              v295 = *&v538[20];
              if (v478 < 0x20000)
              {
                v306 = v474;
                *(v514 + 30) = v474;
                *(v295 + 30) = v306;
                v307 = v473;
                *(v294 + 29) = v473;
                *(v295 + 29) = v307;
                v541 = v501;
                v517 = v501;
                v308 = v496;
                v298 = sub_26155B1F8(v504, v496[28], *(v496 + 1), *(v496 + 3), &v534, v285, v286, v287, v288, *(v496 + 4));
                v299 = sub_26155B1F8(v504, v308[28], *(v308 + 1), *(v308 + 3), v513, v289, v290, *&v486, v291, *(v308 + 4));
              }

              else
              {
                *(v514 + 24) = v275;
                *(v295 + 24) = v275;
                v296 = v529[5];
                *(v294 + 20) = v296;
                *(v295 + 20) = v296;
                LOBYTE(v296) = v474;
                *(v294 + 30) = v474;
                *(v295 + 30) = v296;
                LOBYTE(v296) = v473;
                *(v294 + 29) = v473;
                *(v295 + 29) = v296;
                v541 = v501;
                v517 = v501;
                v297 = v496;
                v298 = sub_26155AD64(v504, v496[28], &v534, v285, v286, v287, v288);
                v299 = sub_26155AD64(v504, v297[28], v513, v289, v290, *&v486, v291);
              }

              v309 = v299;
              v170 = 0.25;
              v267 = v480;
              if (v298 || v534.imagp != v525)
              {
                v310 = 0;
              }

              else
              {
                v310 = memcmp(v535, v526, v534.imagp) == 0;
                v311 = v536;
                if (v536 <= v527)
                {
                  v311 = v527;
                }

                v527 = v311;
                if (v310)
                {
LABEL_389:
                  if (!v298 && !v310 && !v309 && v534.imagp == *(&v513[0] + 1) && *(&v513[0] + 1))
                  {
                    v313 = memcmp(*&v513[1], v535, v534.imagp);
                    sub_261544C1C(v513, &v524);
                    v310 = v313 == 0;
                    v314 = v536;
                    if (v536 <= *(&v513[1] + 2))
                    {
                      v314 = *(&v513[1] + 2);
                    }

                    v527 = v314;
                  }

                  sub_261544BD8(&v534);
                  sub_261544BD8(v513);
                  if (!v310)
                  {
                    goto LABEL_409;
                  }

                  v505 = (*&v476 - ((*&size.width * 0.5) * *&v477));
                  v506 = (*&v468 - ((*&size.width * 0.5) * *v484.f64));
                  v507 = (*&v476 + ((*&size.width * 0.5) * *&v477));
                  v508 = (*&v468 + ((*&size.width * 0.5) * *v484.f64));
                  v509 = (*&v475 + ((*&size.width * 0.5) * *&v477));
                  v510 = (*&origin.x + ((*&size.width * 0.5) * *v484.f64));
                  v511 = (*&v475 - ((*&size.width * 0.5) * *&v477));
                  v512 = (*&origin.x - ((*&size.width * 0.5) * *v484.f64));
                  v488 = 0;
                  v489 = 0;
                  v487 = 0;
                  sub_2614BF814(&v487, &v505, v513, 4uLL);
                  sub_261541194(&v490, &v524, &v487, 0.0);
                  v315 = v481;
                  if (v487)
                  {
                    operator delete(v487);
                  }

                  *&v505 = v527;
                  v316 = CFNumberCreate(v479, kCFNumberFloat32Type, &v505);
                  v317 = v316;
                  if (v315 && v316)
                  {
                    CFDictionarySetValue(v315, @"Score", v316);
                  }

                  else if (!v316)
                  {
LABEL_405:
                    v318 = a8[1];
                    if (v318 >= a8[2])
                    {
                      v319 = sub_2614BF6E4(a8, &v490);
                    }

                    else
                    {
                      *v318 = atomic_exchange(&v490, 0);
                      v319 = (v318 + 1);
                    }

                    a8[1] = v319;
                    sub_261477724(&v490);
LABEL_409:
                    v265 = 0;
                    LODWORD(v475) = 0;
                    goto LABEL_410;
                  }

                  CFRelease(v317);
                  goto LABEL_405;
                }
              }

              if (!v309 && *(&v513[0] + 1) == v525)
              {
                v310 = memcmp(*&v513[1], v526, *(&v513[0] + 1)) == 0;
                v312 = *(&v513[1] + 2);
                if (*(&v513[1] + 2) <= v527)
                {
                  v312 = v527;
                }

                v527 = v312;
              }

              goto LABEL_389;
            }

            goto LABEL_365;
          }

          v300 = v454;
          v301 = &v455[104 * v454];
          *(v301 + 12) = 0;
          *(v301 + 1) = 0;
          *(v301 + 2) = 0;
          *v301 = 0;
          *(v301 + 6) = 0;
          *(v301 + 9) = 0;
          *(v301 + 10) = 0;
          v301[88] = 0;
          v302 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
          *(v301 + 8) = v302;
          *(v301 + 28) = 0u;
          *(v301 + 44) = 0u;
          *(v302 + 8) = 0;
          *(v302 + 18) = 0;
          *(v302 + 10) = 0;
          *(v302 + 44) = 0u;
          *(v302 + 1) = 0u;
          *(v302 + 2) = 0u;
          *v302 = 0u;
          v303 = &v452[88 * v300];
          *(v303 + 3) = 0u;
          *(v303 + 4) = 0u;
          *(v303 + 1) = 0u;
          *(v303 + 2) = 0u;
          *v303 = 0u;
          v267 = v480;
          v304 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
          *(v303 + 10) = v304;
          *(v304 + 8) = 0;
          *(v304 + 18) = 0;
          *(v304 + 10) = 0;
          *(v304 + 44) = 0u;
          *(v304 + 1) = 0u;
          *(v304 + 2) = 0u;
          *v304 = 0u;
          sub_261544C1C(&v524, v301);
          sub_261544D48(&v491, v303);
          *&v453[4 * v300] = LODWORD(v469);
          v454 = v300 + 1;
LABEL_410:
          sub_261544D00(&v491);
          sub_261544BD8(&v524);
          v249 = v267 + 1;
          if (v249 >= v499)
          {
            if (v265)
            {
              v380 = v446 == 0;
            }

            else
            {
              v380 = 1;
            }

            v244 = !v380;
            goto LABEL_489;
          }
        }

        CFDictionarySetValue(v481, @"ProfileCropLeft", v261);
LABEL_335:
        CFRelease(v262);
        goto LABEL_336;
      }

      v244 = 0;
LABEL_489:
      sub_26154496C(&v497);
      sub_26154496C(&v498);
      v171 = v481;
      if (!v244)
      {
        goto LABEL_492;
      }

      v181 = v522[1];
LABEL_491:
      LODWORD(v534.realp) = 0;
      *(&v534.realp + 1) = v181 + -1.0;
      v381 = *(v458 + 12);
      v382 = *(v458 + 10) + v447;
      sub_26155DA58(v470, v471, v456, 2u, &v534, &v524, v513);
      v383 = *&v524;
      v384 = __sincosf_stret(v382);
      v385 = *(&v524 + 1);
      v386 = *&v513[0];
      v387 = CFArrayCreateMutable(v479, 4, MEMORY[0x277CBF128]);
      v388 = v381 * 0.5;
      v545.x = (v383 + (v388 * v384.__cosval));
      v545.y = (*&v386 + (v388 * v384.__sinval));
      DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v545);
      CFArrayAppendValue(v387, DictionaryRepresentation);
      CFRelease(DictionaryRepresentation);
      v546.x = (v385 + (v388 * v384.__cosval));
      v546.y = (*(&v386 + 1) + (v388 * v384.__sinval));
      v390 = CGPointCreateDictionaryRepresentation(v546);
      CFArrayAppendValue(v387, v390);
      CFRelease(v390);
      v547.x = (v385 - (v388 * v384.__cosval));
      v547.y = (*(&v386 + 1) - (v388 * v384.__sinval));
      v391 = CGPointCreateDictionaryRepresentation(v547);
      CFArrayAppendValue(v387, v391);
      CFRelease(v391);
      v548.x = (v383 - (v388 * v384.__cosval));
      v548.y = (*&v386 - (v388 * v384.__sinval));
      v392 = CGPointCreateDictionaryRepresentation(v548);
      CFArrayAppendValue(v387, v392);
      CFRelease(v392);
      CFArrayAppendValue(v446, v387);
      CFRelease(v387);
      v171 = v481;
LABEL_492:
      sub_261544D00(v522);
      if (v449 > 0.0 && *&v469 >= v440 && (LOBYTE(v469) & 1 ^ v437) == 1)
      {
        v441 = CFAbsoluteTimeGetCurrent();
        v171 = v481;
      }

      if (++*&v469 == v443)
      {
        goto LABEL_497;
      }
    }

    if (v171)
    {
      v183 = vcvt_s32_f32(*(v456 + 9));
      v184 = vcvt_s32_f32(*(v456 + 11));
      v185 = vmin_s32(v183, v184);
      v186 = vabd_s32(v183, v184);
      v187 = v185.i32[1];
      v188 = v185.i32[0];
      if (v185.i32[0] <= 25)
      {
        v189 = 25;
      }

      else
      {
        v189 = v185.i32[0];
      }

      v190 = (v189 - 25);
      v191 = vceqz_s32(v186);
      if (v187 <= 25)
      {
        v192 = 25;
      }

      else
      {
        v192 = v187;
      }

      v193 = v470 - v190;
      if (v470 - v190 >= 0x33)
      {
        v193 = 51;
      }

      v194 = vaba_s32(0x100000001, v183, v184);
      v195 = (v192 - 25);
      if (v191.i8[0])
      {
        v188 = v190;
      }

      v196 = v188;
      v197 = v194.i32[0];
      if (v191.i8[0])
      {
        v197 = v193;
      }

      v198 = v471 - v195;
      if (v471 - v195 >= 0x33)
      {
        v198 = 51;
      }

      if (v191.i8[4])
      {
        v187 = v192 - 25;
      }

      v199 = v187;
      v201 = v194.i32[1];
      if (v191.i8[4])
      {
        v201 = v198;
      }

      v202 = v201;
      v556.origin.x = 0.0;
      v556.origin.y = 0.0;
      v556.size.height = v450;
      v556.size.width = v451;
      v200 = v197;
      v553 = CGRectIntersection(*&v196, v556);
      v203 = v553.origin.x;
      y = v553.origin.y;
      v205 = v553.size.width;
      height = v553.size.height;
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v208 = CFDataCreate(0, v463, v435);
      v209 = CGDataProviderCreateWithCFData(v208);
      CFRelease(v208);
      v210 = CGImageCreate(v470, v471, 8uLL, 8uLL, v464, DeviceGray, 0, v209, 0, 0, kCGRenderingIntentDefault);
      CGDataProviderRelease(v209);
      v554.origin.x = v203;
      v554.origin.y = y;
      v554.size.width = v205;
      v554.size.height = height;
      v211 = CGImageCreateWithImageInRect(v210, v554);
      if (v211)
      {
        v212 = CFDataCreateMutable(v479, 0);
        v213 = CGImageDestinationCreateWithData(v212, @"public.tiff", 1uLL, 0);
        v214 = v213;
        if (v213)
        {
          CGImageDestinationAddImage(v213, v211, 0);
          CGImageDestinationFinalize(v214);
          CFRelease(v214);
        }

        else
        {
          CFRelease(v212);
          v212 = 0;
        }

        CGImageRelease(v211);
      }

      else
      {
        v212 = 0;
      }

      CGColorSpaceRelease(DeviceGray);
      CGImageRelease(v210);
      v171 = v481;
      if (v212)
      {
        CFDictionarySetValue(v481, @"CroppedImage", v212);
        CFRelease(v212);
        v181 = v522[1];
        v171 = v481;
      }
    }

    v215 = v171 != 0;
    v182 = v522[0];
    v216 = CFDataCreate(v479, v522[0], 4 * v181);
    v217 = v216;
    if (v216)
    {
      v218 = v215;
    }

    else
    {
      v218 = 0;
    }

    if (v218)
    {
      CFDictionarySetValue(v481, @"Profile", v216);
    }

    else if (!v216)
    {
      goto LABEL_283;
    }

    CFRelease(v217);
LABEL_283:
    v500 = 0;
    v219 = 1.5;
    if (v181 < 2)
    {
      goto LABEL_305;
    }

    goto LABEL_284;
  }

  v541 = 0;
  v535 = 0;
  v534.realp = 0;
  v534.imagp = 0;
  v536 = 0.0;
  v539 = 0uLL;
  LOBYTE(v540) = 0;
  v50 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
  *&v538[20] = v50;
  v537 = 0u;
  *v538 = 0u;
  *(v50 + 8) = 0;
  *(v50 + 18) = 0;
  *(v50 + 10) = 0;
  *v50 = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 2) = 0u;
  *(v50 + 44) = 0u;
  v50[30] = v474;
  v50[29] = v473;
  if (dword_280CB3638 <= 0)
  {
    *(v50 + 5) = 0x7FFFFFFF;
    v506 = 0.0;
    v505 = 0.0;
    v507 = 0.0;
    LOBYTE(v491) = 0;
    LOBYTE(v493) = 0;
    v55 = size.width;
    *&v54.f64[0] = v486;
    v57 = origin.x;
    v56.f64[0] = v484.f64[0];
    v58 = *&v468;
  }

  else
  {
    v51 = 0;
    v52 = 0x7FFFFFFF;
    v53 = &dword_280CB3658;
    v55 = size.width;
    *&v54.f64[0] = v486;
    v57 = origin.x;
    v56.f64[0] = v484.f64[0];
    v58 = *&v468;
    do
    {
      if (((v482 >> v51) & 1) != 0 && v52 >= *v53)
      {
        v52 = *v53;
      }

      ++v51;
      v53 += 16;
    }

    while (dword_280CB3638 != v51);
    *(v50 + 5) = v52;
    v506 = 0.0;
    v505 = 0.0;
    v507 = 0.0;
    LOBYTE(v491) = 0;
    LOBYTE(v493) = 0;
  }

  v59 = 0;
  v60 = v57;
  LODWORD(v484.f64[0]) = llroundf(v60);
  v61 = v56.f64[0];
  LODWORD(origin.x) = llroundf(v61);
  v56.f64[1] = v57;
  v54.f64[1] = v55;
  *&v62 = vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vaddq_f64(v56, v54))));
  *(&v62 + 1) = v62;
  v486 = v62;
  do
  {
    v514 = 0u;
    memset(v513, 0, sizeof(v513));
    v63 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
    v515 = v63;
    *(v63 + 8) = 0;
    *(v63 + 18) = 0;
    *(v63 + 10) = 0;
    *(v63 + 44) = 0u;
    *(v63 + 1) = 0u;
    *(v63 + 2) = 0u;
    *v63 = 0u;
    v64 = (*&v33 + 56 * v59);
    v65 = sub_26155E0A4(v463, v470, v471, v464, v513, v522, *(v64 + 8), *(v64 + 9), *(v64 + 11), *(v64 + 10), *(v64 + 12));
    v66 = 0;
    DWORD2(v513[0]) = v65;
    if (v65 >= 22)
    {
      HIDWORD(v513[0]) = 0;
      LODWORD(v513[1]) = v65 - 1;
      v533 = 0;
      v526 = 0;
      v524 = 0;
      v525 = 0;
      v527 = 0.0;
      v530 = 0;
      v531 = 0;
      v532 = 0;
      v67 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
      v529 = v67;
      memset(v528, 0, 32);
      *(v67 + 8) = 0;
      *(v67 + 18) = 0;
      *(v67 + 10) = 0;
      *v67 = 0u;
      *(v67 + 1) = 0u;
      *(v67 + 2) = 0u;
      *(v67 + 44) = 0u;
      v68 = v529;
      *(v529 + 30) = v474;
      *(v68 + 29) = v473;
      if (dword_280CB3638 < 1)
      {
        v70 = 0x7FFFFFFF;
        v72 = v482;
      }

      else
      {
        v69 = 0;
        v70 = 0x7FFFFFFF;
        v71 = &dword_280CB3658;
        v72 = v482;
        do
        {
          if (((v482 >> v69) & 1) != 0 && v70 >= *v71)
          {
            v70 = *v71;
          }

          ++v69;
          v71 += 16;
        }

        while (dword_280CB3638 != v69);
      }

      v73 = v33;
      v68[5] = v70;
      v74 = v493;
      *(v68 + 31) = v493;
      v533 = &v505;
      v75 = sub_26154A5A0(v513, &v524, v72);
      v76 = v524;
      if ((v74 & 1) == 0 && v524 == 16 && *(v529 + 31) == 1)
      {
        v491 = 0u;
        v492 = 0u;
        LOBYTE(v493) = 1;
        if (!sub_261540FF8(v470, v471, v522, &v491, *(&v513[1] + 1), *(&v513[1] + 2)))
        {
          v77 = v493;
          if (v493)
          {
            v77 = 0;
          }

          LOBYTE(v493) = v77;
        }
      }

      if (v75 == 1)
      {
        if ((v76 - 13) <= 1)
        {
          v528[7] = LODWORD(origin.x);
          v528[0] = LODWORD(v484.f64[0]);
          *&v528[1] = __PAIR64__(LODWORD(v484.f64[0]), LODWORD(origin.x));
          *&v528[3] = v486;
          v80 = *&dword_280CB3640[16 * v76 + 14];
          if (v80)
          {
            v33 = v73;
            if (v80(v513, &v524, v64, v504))
            {
              goto LABEL_66;
            }

            sub_261544C1C(&v524, &v534);
            goto LABEL_75;
          }
        }
      }

      else if (!v75)
      {
        v33 = v73;
        if (!v535)
        {
LABEL_62:
          sub_261544C1C(&v524, &v534);
LABEL_66:
          v66 = 0;
LABEL_68:
          sub_261544BD8(&v524);
          goto LABEL_69;
        }

        v78 = v525;
        imagp = v534.imagp;
        if (v525 != v534.imagp || memcmp(v526, v535, v525))
        {
          if (v78 < imagp || v527 < v536)
          {
            goto LABEL_66;
          }

          goto LABEL_62;
        }

        if (v493 != 1)
        {
          v66 = sub_261540FF8(v470, v471, v522, &v537, *(&v513[1] + 1), *(&v513[1] + 2));
          goto LABEL_68;
        }

        v537 = v491;
        *v538 = v492;
LABEL_75:
        v66 = 1;
        goto LABEL_68;
      }

      v66 = 0;
      v33 = v73;
      goto LABEL_68;
    }

LABEL_69:
    sub_261544D00(v513);
    ++v59;
  }

  while (v59 < v502 && !v66);
  if (v505 != 0.0 && v506 != 0.0)
  {
    (*&v506)();
  }

  a8 = v445;
  a1 = v439;
  Mutable = v481;
  if (v66)
  {
    v81 = 0;
    v525 = 0;
    v524 = 0;
    v526 = 0;
    if ((LODWORD(v534.realp) - 15) <= 0xFFFFFFFD)
    {
      v82 = v537;
      v83 = DWORD1(v537);
      v84 = *v538;
      v85 = *&v538[4];
      sub_261541098(&v524);
      v86 = v83;
      v81 = v524;
      sub_26155AFC8(v524, v21, a10, v19, v18, v58, v82, v86, v87, v84, v85);
      Mutable = v481;
    }

    sub_261541194(v513, &v534, &v524, v58);
    v88 = v445[1];
    if (v88 >= v445[2])
    {
      v89 = sub_2614BF6E4(v445, v513);
    }

    else
    {
      *v88 = atomic_exchange(v513, 0);
      v89 = (v88 + 1);
      v81 = v524;
    }

    a8[1] = v89;
    v503 = 1.0;
    sub_261477724(v513);
    if (v81)
    {
      v525 = v81;
      operator delete(v81);
    }

    LODWORD(v475) = 0;
  }

  else
  {
    LODWORD(v475) = 19;
  }

  sub_261544BD8(&v534);
  v446 = 0;
LABEL_525:
  if (v33 != 0.0)
  {
    free(*&v33);
  }

  if (v446)
  {
    v426 = atomic_load_explicit(a8 + 3, memory_order_acquire);
    if (v426)
    {
      v426 = CFRetain(v426);
    }

    v534.realp = v426;
    v427 = atomic_load_explicit(&v534, memory_order_acquire);
    v428 = v446;
    CFDictionarySetValue(v427, @"FrameFailedLocations", v446);
    sub_2614769A4(&v534);
    CFRelease(v428);
    Mutable = v481;
  }

  if (Mutable)
  {
    v429 = atomic_load_explicit(a8 + 3, memory_order_acquire);
    if (v429)
    {
      v429 = CFRetain(v429);
    }

    v534.realp = v429;
    v430 = atomic_load_explicit(&v534, memory_order_acquire);
    v431 = v481;
    CFDictionarySetValue(v430, @"FrameDebugData", v481);
    sub_2614769A4(&v534);
    CFRelease(v431);
  }

  if (*(*(a1 + 8) + 50) == 1 && v503 >= 0.0)
  {
    v432 = atomic_load_explicit(a8 + 3, memory_order_acquire);
    if (v432)
    {
      v432 = CFRetain(v432);
    }

    v534.realp = v432;
    v433 = atomic_load_explicit(&v534, memory_order_acquire);
    v524 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &v503);
    CFDictionarySetValue(v433, @"FocusSharpness", atomic_load_explicit(&v524, memory_order_acquire));
    sub_2614769D8(&v524);
    sub_2614769A4(&v534);
  }

  return LODWORD(v475);
}

void sub_261540F18(_Unwind_Exception *a1)
{
  sub_261477724((v1 + 736));
  if (v2)
  {
    *(v1 + 960) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

BOOL sub_261540FF8(_BOOL8 a1, unint64_t a2, float *a3, _OWORD *a4, float a5, float a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v14[0] = a5;
  v14[1] = a6;
  v7 = sub_26155DA58(a1, a2, a3, 2u, v14, &v13, v12);
  if (v7)
  {
    v8.i32[0] = vdup_lane_s32(v13, 1).u32[0];
    *&v9 = vcvt_s32_f32(__PAIR64__(LODWORD(v12[0]), v13.u32[0]));
    *(&v9 + 1) = v9;
    v8.f32[1] = v12[1];
    *&v10 = vcvt_s32_f32(v8);
    *(&v10 + 1) = v10;
    *a4 = v9;
    a4[1] = v10;
  }

  return v7;
}

void sub_261541098(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if ((v4 >> 4) > 3)
  {
    if (v4 == 64)
    {
      return;
    }

    v10 = v2 + 64;
  }

  else
  {
    v5 = 4 - (v4 >> 4);
    v6 = a1[2];
    if (v5 > (v6 - v3) >> 4)
    {
      v7 = v6 - v2;
      v8 = v7 >> 3;
      if ((v7 >> 3) <= 4)
      {
        v8 = 4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v9 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      sub_261473150(v9);
    }

    bzero(a1[1], 16 * v5);
    v10 = v3 + 16 * v5;
  }

  a1[1] = v10;
}

uint64_t sub_261541194(atomic_ullong *a1, unsigned int *a2, uint64_t *a3, float a4)
{
  v50[1] = *MEMORY[0x277D85DE8];
  result = sub_2614BF584();
  *a1 = result;
  if (!atomic_load_explicit(a1, memory_order_acquire))
  {
    return result;
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = *a2;
  v11 = "";
  if ((v10 & 0x80000000) == 0 && dword_280CB3638 > v10)
  {
    v11 = *&dword_280CB3640[16 * v10 + 2];
  }

  *&v49[0] = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v11, 0x8000100u);
  v12 = atomic_exchange((atomic_load_explicit(a1, memory_order_acquire) + 16), atomic_exchange(v49, 0));
  if (v12)
  {
    CFRelease(v12);
  }

  sub_26148E848(v49);
  *&v49[0] = CFDataCreate(v9, *(a2 + 2), *(a2 + 1));
  v13 = atomic_exchange((atomic_load_explicit(a1, memory_order_acquire) + 24), atomic_exchange(v49, 0));
  if (v13)
  {
    CFRelease(v13);
  }

  sub_2614BF7E0(v49);
  v14 = a2[6];
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  *(explicit + 32) = v14;
  *(explicit + 36) = 1;
  LOWORD(explicit) = *(a2 + 88);
  *(atomic_load_explicit(a1, memory_order_acquire) + 104) = explicit | 0x100;
  v16 = *(a2 + 9);
  v17 = atomic_load_explicit(a1, memory_order_acquire);
  if ((*(v17 + 280) & 1) == 0)
  {
    *(v17 + 280) = 1;
  }

  *(v17 + 272) = v16;
  v18 = *(a2 + 7);
  v19.i64[0] = v18;
  v19.i64[1] = SHIDWORD(v18);
  v20 = vcvtq_f64_s64(v19);
  v21 = *(a2 + 11);
  v19.i64[0] = v21;
  v19.i64[1] = SHIDWORD(v21);
  v22 = vcvtq_f64_s64(v19);
  v23 = atomic_load_explicit(a1, memory_order_acquire);
  if ((*(v23 + 264) & 1) == 0)
  {
    *(v23 + 264) = 1;
  }

  *(v23 + 232) = v20;
  *(v23 + 248) = v22;
  if (*a2 - 13 <= 1)
  {
    v24 = atomic_load_explicit(a1, memory_order_acquire);
    *(v24 + 144) = 0;
    *(v24 + 152) = 0;
    *(v24 + 160) = 0;
    *(v24 + 164) = 1;
    v25 = atomic_load_explicit(a1, memory_order_acquire);
    v26 = a2[20];
    if ((*(v25 + 148) & 1) == 0)
    {
      *(v25 + 148) = 1;
    }

    *(v25 + 144) = v26;
    v27 = atomic_load_explicit(a1, memory_order_acquire);
    v28 = a2[21];
    if ((*(v27 + 156) & 1) == 0)
    {
      *(v27 + 156) = 1;
    }

    *(v27 + 152) = v28;
    v29 = *a2;
    if (*a2 == 13)
    {
      *(atomic_load_explicit(a1, memory_order_acquire) + 160) = 256;
      if (a2[1] == 3)
      {
        v30 = atomic_load_explicit(a1, memory_order_acquire);
        if (*(v30 + 208) == 1)
        {
          sub_2614BF7E0((v30 + 200));
        }

        *(v30 + 200) = 0;
        *(v30 + 184) = 0u;
        *(v30 + 168) = 0u;
        *(v30 + 208) = 1;
        *(atomic_load_explicit(a1, memory_order_acquire) + 168) = 1;
        *(atomic_load_explicit(a1, memory_order_acquire) + 176) = 5;
      }

      v29 = *a2;
    }

    if (v29 == 14 && a2[1])
    {
      v31 = atomic_load_explicit(a1, memory_order_acquire);
      if (*(v31 + 208) == 1)
      {
        sub_2614BF7E0((v31 + 200));
      }

      *(v31 + 200) = 0;
      *(v31 + 184) = 0u;
      *(v31 + 168) = 0u;
      *(v31 + 208) = 1;
      *(atomic_load_explicit(a1, memory_order_acquire) + 168) = 1;
      v32 = a2[1];
      if (v32 == 1)
      {
        v33 = 3;
      }

      else
      {
        if (v32 != 2)
        {
          goto LABEL_33;
        }

        v33 = 4;
      }

      *(atomic_load_explicit(a1, memory_order_acquire) + 176) = v33;
    }
  }

LABEL_33:
  v34 = *a2;
  if (*a2 == 9 && *(a2 + 1) >= 2uLL)
  {
    if (*(*(a2 + 2) + 1) == 102)
    {
      v35 = atomic_load_explicit(a1, memory_order_acquire);
      if (*(v35 + 208) == 1)
      {
        sub_2614BF7E0((v35 + 200));
      }

      *(v35 + 200) = 0;
      *(v35 + 184) = 0u;
      *(v35 + 168) = 0u;
      *(v35 + 208) = 1;
      *(atomic_load_explicit(a1, memory_order_acquire) + 168) = 1;
      if (a2[1] == 4)
      {
        *(atomic_load_explicit(a1, memory_order_acquire) + 176) = 2;
      }
    }

    v34 = *a2;
  }

  if (v34 == 16)
  {
    v36 = atomic_load_explicit(a1, memory_order_acquire);
    if (*(v36 + 208) == 1)
    {
      sub_2614BF7E0((v36 + 200));
    }

    *(v36 + 200) = 0;
    *(v36 + 184) = 0u;
    *(v36 + 168) = 0u;
    *(v36 + 208) = 1;
    *(atomic_load_explicit(a1, memory_order_acquire) + 168) = 1;
    if (a2[1] == 4)
    {
      *(atomic_load_explicit(a1, memory_order_acquire) + 176) = 2;
    }
  }

  v37 = *a3;
  v38 = a3[1];
  v39 = atomic_load_explicit(a1, memory_order_acquire);
  if (v37 == v38)
  {
    v41 = *(a2 + 7);
    v42.i64[0] = v41;
    v42.i64[1] = SHIDWORD(v41);
    v43 = vcvtq_f64_s64(v42);
    v44 = *(a2 + 9);
    v42.i64[0] = v44;
    v42.i64[1] = SHIDWORD(v44);
    v49[0] = v43;
    v49[1] = vcvtq_f64_s64(v42);
    v43.f64[0] = *(a2 + 11);
    v42.i64[0] = SLODWORD(v43.f64[0]);
    v42.i64[1] = SHIDWORD(v43.f64[0]);
    v45 = vcvtq_f64_s64(v42);
    v46 = *(a2 + 13);
    v42.i64[0] = v46;
    v42.i64[1] = SHIDWORD(v46);
    v49[2] = v45;
    v49[3] = vcvtq_f64_s64(v42);
    if (*(v39 + 64) == 1)
    {
      v47 = *(v39 + 40);
      if (v47)
      {
        *(v39 + 48) = v47;
        operator delete(v47);
      }

      *(v39 + 64) = 0;
    }

    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    result = sub_2614BF814(v39 + 40, v49, v50, 4uLL);
  }

  else
  {
    if (*(v39 + 64) == 1)
    {
      v40 = *(v39 + 40);
      if (v40)
      {
        *(v39 + 48) = v40;
        operator delete(v40);
      }

      *(v39 + 64) = 0;
    }

    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    result = sub_26153986C(v39 + 40, *a3, a3[1], (a3[1] - *a3) >> 4);
  }

  *(v39 + 64) = 1;
  v48 = atomic_load_explicit(a1, memory_order_acquire);
  *(v48 + 224) = a4;
  *(v48 + 228) = 1;
  return result;
}

void sub_261543F54(_Unwind_Exception *a1)
{
  sub_26147743C(&STACK[0x380]);
  if (v4)
  {
    sub_2614705CC(v4);
  }

  sub_2614705CC(v1);
  if (v5)
  {
    operator delete(v5);
  }

  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_261544070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, atomic_uint *a32)
{
  sub_2614705CC(a32);
  MEMORY[0x2667045D0](v32, 0x10B1C4009E930FDLL);
  sub_2614705CC(a32);
  JUMPOUT(0x2615440B8);
}

uint64_t sub_261544130(const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2614709BC();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      sub_261544634(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    sub_2615446EC(24 * v7, *a2, a2[1], (a2[1] - *a2) >> 3);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_26154468C(&v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    result = sub_2615446EC(v4, *a2, a2[1], (a2[1] - *a2) >> 3);
    v6 = v4 + 24;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_261544278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26154468C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261544298(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != 1)
  {
    sub_26148012C(a1, a2);
    *(a1 + 24) = 1;
    return a1;
  }

  if (a1 != a2)
  {
    v3 = a2 + 1;
    v4 = *a2;
    if (*(a1 + 16))
    {
      v5 = *a1;
      v7 = (a1 + 8);
      v6 = *(a1 + 8);
      *a1 = a1 + 8;
      *(v6 + 16) = 0;
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
      if (*(v5 + 8))
      {
        v8 = *(v5 + 8);
      }

      else
      {
        v8 = v5;
      }

      if (v8)
      {
        v9 = sub_26151A2C4(v8);
        if (v4 == v3)
        {
          v11 = v8;
        }

        else
        {
          v10 = v4;
          do
          {
            v11 = v9;
            v12 = *(v10 + 7);
            *(v8 + 28) = v12;
            *(v8 + 32) = *(v10 + 8);
            v13 = *v7;
            v14 = (a1 + 8);
            v15 = (a1 + 8);
            if (*v7)
            {
              do
              {
                while (1)
                {
                  v14 = v13;
                  if (v12 >= *(v13 + 7))
                  {
                    break;
                  }

                  v13 = *v13;
                  v15 = v14;
                  if (!*v14)
                  {
                    goto LABEL_16;
                  }
                }

                v13 = v13[1];
              }

              while (v13);
              v15 = v14 + 1;
            }

LABEL_16:
            sub_2614805A0(a1, v14, v15, v8);
            if (v9)
            {
              v9 = sub_26151A2C4(v9);
            }

            else
            {
              v9 = 0;
            }

            v16 = v10[1];
            if (v16)
            {
              do
              {
                v4 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v4 = v10[2];
                v17 = *v4 == v10;
                v10 = v4;
              }

              while (!v17);
            }

            if (!v11)
            {
              break;
            }

            v8 = v11;
            v10 = v4;
          }

          while (v4 != v3);
        }

        sub_2614802C0(v11);
        if (!v9)
        {
          goto LABEL_35;
        }

        for (i = v9[2]; i; i = i[2])
        {
          v9 = i;
        }

        v18 = v9;
      }

      else
      {
        v18 = 0;
      }

      sub_2614802C0(v18);
    }

LABEL_35:
    if (v4 != v3)
    {
      operator new();
    }
  }

  return a1;
}

uint64_t *sub_2615444F0(uint64_t *a1)
{
  if (!a1)
  {
LABEL_7:
    sub_26149AA04("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v1 = *(a1 + 7);
      if (v1 < 10)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v1 == 9)
    {
      return a1 + 4;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

void sub_261544540(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_261480A80(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2615445D4(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_2614709D4();
}

void sub_261544634(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2614709D4();
}

uint64_t sub_26154468C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    sub_261480A80(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2615446EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_261470D9C(result, a4);
  }

  return result;
}

void sub_2615447D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = (*(*a2 + 16))(a2);
  v6 = (*(*a2 + 24))(a2);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56) + v9 * v6 + v7 * v5;
  v12 = *(a1 + 64) + v10 * v6 + v8 * v5;
  v13 = v9 * 0.5 + v7 * 0.5;
  v14 = v10 * 0.5 + v8 * 0.5;
  v15 = *(v4 + 8);
  v16 = *(v4 + 16);
  if (v15 >= v16)
  {
    v18 = *v4;
    v19 = v15 - *v4;
    v20 = v19 >> 5;
    v21 = (v19 >> 5) + 1;
    if (v21 >> 59)
    {
      sub_2614709BC();
    }

    v22 = v16 - v18;
    if (v22 >> 4 > v21)
    {
      v21 = v22 >> 4;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFE0)
    {
      v23 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      sub_2615445D4(v23);
    }

    v24 = (32 * v20);
    *v24 = v11;
    v24[1] = v12;
    v24[2] = v13;
    v24[3] = v14;
    v17 = 32 * v20 + 32;
    memcpy(0, v18, v19);
    v25 = *v4;
    *v4 = 0;
    *(v4 + 8) = v17;
    *(v4 + 16) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v15 = v11;
    v15[1] = v12;
    v17 = (v15 + 4);
    v15[2] = v13;
    v15[3] = v14;
  }

  *(v4 + 8) = v17;
}

void sub_26154496C(void **a1)
{
  if (a1)
  {
    v1 = *a1;
    if (v1)
    {
      free(v1);
    }
  }
}

void sub_261544980(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t sub_2615449EC()
{
  result = pthread_once(&stru_280CB31D0, sub_261544F24);
  if (result)
  {
    exit(1);
  }

  return result;
}

void sub_261544A28(int *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    free(v4);
  }

  if (*(a1 + 1))
  {
    v5 = malloc_type_malloc(4 * *a1, 0x100004052888210uLL);
    *(a2 + 8) = v5;
    v6 = *a1;
    *a2 = v6;
    v7 = *(a1 + 1);

    memcpy(v5, v7, 4 * v6);
  }

  else
  {
    *(a2 + 8) = 0;
    *a2 = 0;
  }
}

void sub_261544AB4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      free(v2);
    }

    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    v3 = *(a1 + 80);
    if (v3)
    {
      free(v3);
    }

    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
  }
}

void sub_261544B04(int *a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    free(v4);
  }

  *(a2 + 64) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 80);
  if (v5)
  {
    free(v5);
  }

  *(a2 + 80) = 0;
  *(a2 + 72) = 0;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  *(a2 + 64) = *(a1 + 4);
  v9 = *a1;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *a2 = v9;
  *(a2 + 16) = v6;
  *(a2 + 64) = 0;
  *(a2 + 80) = 0;
  sub_261544A28(a1 + 14, a2 + 56);

  sub_261544A28(a1 + 18, a2 + 72);
}

void sub_261544BA0(uint64_t a1)
{
  sub_261544AB4(*(a1 + 64));
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 64) = 0;
}

void sub_261544BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 16) = 0;

  sub_261544BA0(a1);
}

void sub_261544C1C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a2 + 8) = v4;
  *(a2 + 24) = *(a1 + 24);
  v6 = *(a1 + 80);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = v6;
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  v7 = *(a2 + 16);
  if (v7 != v5)
  {
    if (v7)
    {
      free(v7);
      v4 = *(a1 + 8);
    }

    v8 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
    *(a2 + 16) = v8;
    v9 = *(a1 + 8);
    if (v9)
    {
      for (i = 0; i < v9; ++i)
      {
        *(*(a2 + 16) + i) = *(*(a1 + 16) + i);
        v9 = *(a1 + 8);
      }

      v8 = *(a2 + 16);
    }

    v8[v9] = 0;
  }

  v11 = *(a1 + 28);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 28) = v11;
  v12 = *(a1 + 64);
  v13 = *(a2 + 64);

  sub_261544B04(v12, v13);
}

void sub_261544D00(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  sub_261544AB4(*(a1 + 80));
  v3 = *(a1 + 80);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 80) = 0;
}

void sub_261544D48(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    free(*a2);
  }

  v4 = malloc_type_malloc(4 * *(a1 + 8), 0x100004052888210uLL);
  *a2 = v4;
  v5 = *(a1 + 8);
  if (v5 >= 1)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    do
    {
      v8 = *v6++;
      *v4++ = v8;
      --v7;
    }

    while (v7);
  }

  *(a2 + 8) = v5;
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 20) = *(a1 + 20);
  v9 = *(a1 + 28);
  v10 = *(a1 + 44);
  v11 = *(a1 + 60);
  *(a2 + 76) = *(a1 + 76);
  *(a2 + 60) = v11;
  *(a2 + 44) = v10;
  *(a2 + 28) = v9;
  v12 = *(a1 + 80);
  v13 = *(a2 + 80);

  sub_261544B04(v12, v13);
}

uint64_t sub_261544E08(int a1, CFStringRef theString, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Length = CFStringGetLength(theString);
  v17 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  result = CFStringGetCString(theString, v17, Length + 1, 0x600u);
  if (dword_280CB31E0)
  {
    exit(1);
  }

  v19 = dword_280CB3638;
  if (dword_280CB3638 <= 31)
  {
    if (dword_280CB3638 < 1)
    {
LABEL_7:
      v23 = &dword_280CB3640[16 * dword_280CB3638];
      *v23 = a1;
      v23[1] = 0;
      *(v23 + 1) = v17;
      *(v23 + 2) = theString;
      v23[6] = a3;
      *(v23 + 28) = a4;
      *(v23 + 29) = 0;
      *(v23 + 31) = 0;
      *(v23 + 4) = a5;
      *(v23 + 5) = a6;
      *(v23 + 6) = a7;
      *(v23 + 7) = a8;
      dword_280CB3638 = v19 + 1;
    }

    else
    {
      v20 = dword_280CB3640;
      v21 = dword_280CB3638;
      while (1)
      {
        v22 = *v20;
        v20 += 16;
        if (v22 == a1)
        {
          break;
        }

        if (!--v21)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t sub_261544F24()
{
  if (dword_280CB31E0 == -1)
  {
    dword_280CB31E0 = 0;
    sub_261544E08(0, @"EAN13", 30, 1, sub_26154D5D0, sub_26154B9E0, sub_26154D6E4, 0);
    sub_261544E08(1, @"EAN8", 22, 1, sub_26154D62C, sub_26154CF2C, sub_26154D700, 0);
    sub_261544E08(2, @"UPCE", 17, 1, sub_26154D688, sub_26154D100, sub_26154D70C, 0);
    sub_261544E08(3, @"Code93", 16, 0, sub_26154F3B0, sub_26154ED44, sub_26154F400, 0);
    sub_261544E08(4, @"Code93i", 16, 0, sub_261551268, sub_261550B90, sub_261552B60, 0);
    sub_261544E08(5, @"Code39", 15, 1, sub_26154EBFC, sub_26154EBCC, sub_26154EC44, 0);
    sub_261544E08(6, @"Code39_fullAscii", 15, 1, sub_26154EBFC, sub_26154EBD8, sub_26154EC44, 0);
    sub_261544E08(7, @"Code39_checksum", 20, 1, sub_26154EBFC, sub_26154EBE4, sub_26154EC6C, 0);
    sub_261544E08(8, @"Code39_fullAscii_checksum", 20, 1, sub_26154EBFC, sub_26154EBF0, sub_26154EC6C, 0);
    sub_261544E08(9, @"Code128", 13, 1, sub_26154DE24, sub_26154DA20, sub_26154E3EC, 0);
    sub_261544E08(10, @"I2of5", 14, 0, sub_26155ACDC, sub_26155AC2C, sub_26155AD20, 0);
    sub_261544E08(11, @"I2of5_checksum", 14, 0, sub_26155ACDC, sub_26155AC74, sub_26155AD20, 0);
    sub_261544E08(12, @"ITF14", 39, 0, sub_26155ACDC, sub_26155ACBC, sub_26155AD50, 0);
    sub_261544E08(13, @"PDF417", 12, 1, sub_261557808, sub_2615534D0, sub_261557898, sub_261554F64);
    sub_261544E08(14, @"MicroPDF417", 11, 1, sub_26152E28C, sub_26152B33C, sub_26152E570, sub_26152BEAC);
    sub_261544E08(15, @"MSIPlessey", 15, 0, sub_2614C7158, sub_2614C6DA0, sub_2614C7194, 0);
    result = sub_261544E08(16, @"GS1DataBarExpanded", 12, 1, sub_2614F3AD0, sub_2614F1D0C, sub_2614F3B0C, 0);
    dword_280CB31E0 = 1;
  }

  return result;
}

BOOL sub_26154543C(const __CFString *a1, _DWORD *a2)
{
  Length = CFStringGetLength(a1);
  v5 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (CFStringGetCString(a1, v5, Length + 1, 0x600u) && (v6 = dword_280CB3638, dword_280CB3638 >= 1))
  {
    v7 = 0;
    v8 = 1;
    v9 = &qword_280CB3648;
    while (strcmp(v5, *v9))
    {
      v8 = ++v7 < v6;
      v9 += 8;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    if (a2)
    {
      *a2 = v7;
    }
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  free(v5);
  return v8;
}

uint64_t sub_261545510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  *v26 = 0u;
  v27 = 0u;
  memset(v25, 0, sizeof(v25));
  v13 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
  v26[0] = v13;
  *(v13 + 8) = 0;
  *(v13 + 18) = 0;
  *(v13 + 10) = 0;
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  *(v13 + 44) = 0u;
  sub_261544B04(*(a5 + 64), v13);
  v28 = *(a5 + 96);
  if (dword_280CB3638 < 1)
  {
    v15 = 14;
  }

  else
  {
    v14 = 0;
    v15 = 14;
    v16 = &qword_280CB3668;
    do
    {
      LODWORD(v25[0]) = v14;
      v17 = *v26[0] & (1 << v14);
      if (v17)
      {
        v18 = a8 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v17 = *(v16 - 12);
      }

      if (v17)
      {
        BYTE8(v27) = a8;
        v19 = (*v16)(a1, a2, a3, a4, v25, a6, a7);
        v15 = v15 == 14 ? v19 : v15;
        if (v19 <= 1)
        {
          v20 = v19;
          sub_261544C1C(v25, a5);
          v15 = v20;
          if (*(&v25[1] + 2) > 0.8)
          {
            break;
          }
        }
      }

      ++v14;
      v16 += 8;
    }

    while (v14 < dword_280CB3638);
    v13 = v26[0];
  }

  sub_261544AB4(v13);
  if (v26[0])
  {
    free(v26[0]);
  }

  v26[0] = 0;
  if (*&v25[1] != *(a5 + 16) && *&v25[1])
  {
    free(*&v25[1]);
  }

  return v15;
}

uint64_t sub_2615456E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, int a6)
{
  v6 = dword_280CB3638;
  if (dword_280CB3638 < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = result;
    v12 = 0;
    v13 = 0;
    v14 = &qword_280CB3670;
    do
    {
      if (((1 << v12) & a6) != 0)
      {
        result = (*v14)(v11, a2, a3, a4);
        if (result)
        {
          v15 = 1 << v12;
        }

        else
        {
          v15 = 0;
        }

        v13 |= v15;
        v6 = dword_280CB3638;
      }

      ++v12;
      v14 += 8;
    }

    while (v12 < v6);
  }

  *a5 = v13;
  return result;
}

void sub_2615457BC(int a1@<W1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v9 = *a4;
  if (!*a4)
  {
    operator new();
  }

  v32 = 0;
  v33 = 0;
  v31 = 0;
  sub_2614C4FCC(&v31, *a3, a3[1], a3[1] - *a3);
  sub_261545A74(&v18, a1, a2, &v31, 0, (v9 + 8));
  sub_261546888(a5, &v18);
  sub_2614C5E88(&v18);
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (*a5)
  {
    memset(v16, 0, sizeof(v16));
    sub_2614C4FCC(v16, *a3, a3[1], a3[1] - *a3);
    sub_261545A74(v17, a1, a2, v16, 1, (v9 + 8));
    sub_261546888(&v18, v17);
    *a5 = v18;
    if (*(a5 + 31) < 0)
    {
      operator delete(*(a5 + 8));
    }

    *(a5 + 8) = *v19;
    *(a5 + 24) = v20;
    HIBYTE(v20) = 0;
    LODWORD(v19[0]) = 0;
    v10 = v22;
    *(a5 + 32) = v21;
    *(a5 + 48) = v10;
    v11 = *(a5 + 64);
    if (v11)
    {
      *(a5 + 72) = v11;
      operator delete(v11);
    }

    v13 = a5 + 104;
    v12 = *(a5 + 104);
    *(a5 + 64) = *__p;
    *(a5 + 80) = v24;
    __p[1] = 0;
    v24 = 0;
    __p[0] = 0;
    *(a5 + 88) = v25;
    sub_261518FB4(v12);
    v14 = v27;
    *(a5 + 96) = v26;
    *(a5 + 104) = v14;
    v15 = v28;
    *(a5 + 112) = v28;
    if (v15)
    {
      v14[2] = v13;
      v26 = &v27;
      v27 = 0;
      v28 = 0;
      v14 = 0;
    }

    else
    {
      *(a5 + 96) = v13;
    }

    *(a5 + 120) = v29;
    *(a5 + 124) = v30;
    sub_261518FB4(v14);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    sub_2614C5E88(v17);
    if (v16[0])
    {
      operator delete(v16[0]);
    }
  }
}

void sub_261545A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_2614C5E88(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_261518D9C(v15);
  _Unwind_Resume(a1);
}

void *sub_261545A74(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4, char a5, uint64_t *a6)
{
  v6 = a3;
  v7 = 0;
  v149 = *MEMORY[0x277D85DE8];
  v134 = &v134;
  v135 = &v134;
  v136 = 0;
  *(v144 + 4) = 0u;
  *(&v144[1] + 4) = 0u;
  v129 = a2;
  v139 = -1;
  v9 = a5 ^ 1;
  *v140 = -1;
  memset(&v140[8], 0, 32);
  v137 = 0;
  v138 = 0;
  while (1)
  {
    v10 = *v6;
    v11 = v6[1];
    if (v7)
    {
      v35 = *(v134 + 40);
      v36 = 715827883 * (v35 - *(v134 + 36));
      v37 = HIDWORD(v36) + (v36 >> 63) + v35;
      v12 = v7;
      if (v37 >= v11 - v10)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v12 = 0;
      v37 = 0;
    }

LABEL_3:
    v13 = &v10[v37];
    if (v13 != v11)
    {
      while (*v13 != 1)
      {
        if (++v13 == v11)
        {
          v13 = v11;
          break;
        }
      }
    }

    if (v13 == v11)
    {
LABEL_62:
      v10 = v11;
    }

    else
    {
      v14 = 0;
      v15 = v12 ^ a5;
      v16 = &v137;
      v10 = v13;
      v17 = v13;
      while (1)
      {
        v18 = *v10 == 0;
        v19 = &v10[v11 - v13];
        while (*v10 != v18)
        {
          if (++v10 == v11)
          {
            v10 = v19;
            break;
          }
        }

        if (v10 == v11)
        {
          *v16 = v11 - v13;
          goto LABEL_62;
        }

        *(&v137 + v14) = v10 - v13;
        v14 += 4;
        if (v14 != 16)
        {
          goto LABEL_57;
        }

        v20 = HIDWORD(v137);
        v21 = HIDWORD(v137) + v137;
        v22 = (v15 & 1) != 0 ? HIDWORD(v138) + v138 : HIDWORD(v137) + v137;
        v23 = v22 / (HIDWORD(v138) + v138 + HIDWORD(v137) + v137);
        if (v23 >= 0.79167 && v23 <= 0.89286)
        {
          break;
        }

LABEL_56:
        v17 += v21;
        v137 = v138;
        v14 = 8;
LABEL_57:
        v16 = (&v137 + v14);
        v13 = v10;
      }

      v24 = v137 <= SHIDWORD(v137) ? &v137 : (&v137 + 4);
      v25 = v137 <= SHIDWORD(v137) ? (&v137 + 4) : &v137;
      if (v138 <= SHIDWORD(v138))
      {
        if (SHIDWORD(v137) >= v137)
        {
          v29 = v137;
        }

        else
        {
          v29 = HIDWORD(v137);
        }

        if (SHIDWORD(v137) <= v137)
        {
          v20 = v137;
        }

        v26 = &v138;
        if (v138 >= v29)
        {
          v26 = v24;
        }

        v27 = SHIDWORD(v138) < v20;
        v28 = &v138 + 1;
      }

      else
      {
        v26 = (&v138 + 4);
        if (SHIDWORD(v138) >= *v24)
        {
          v26 = v24;
        }

        v27 = v138 < *v25;
        v28 = &v138;
      }

      if (v27)
      {
        v28 = v25;
      }

      v30 = *v28;
      if (v15)
      {
        if (v137 - HIDWORD(v137) >= 0)
        {
          v31 = v137 - HIDWORD(v137);
        }

        else
        {
          v31 = HIDWORD(v137) - v137;
        }

        if (v31 >= 3)
        {
          v32 = 3 * *v26;
        }

        else
        {
          v32 = 3 * ((v21 + (v21 >> 31)) >> 1);
        }

        if (v30 >= 4 * v32)
        {
          goto LABEL_56;
        }

        v95 = &v137 + 4;
        v96 = &v138 + 4;
        do
        {
          v97 = *(v95 - 1);
          *(v95 - 1) = *v96;
          *v96 = v97;
          v96 -= 4;
          v98 = v95 >= v96;
          v95 += 4;
        }

        while (!v98);
      }

      else
      {
        if (v138 - HIDWORD(v138) >= 0)
        {
          v33 = v138 - HIDWORD(v138);
        }

        else
        {
          v33 = HIDWORD(v138) - v138;
        }

        if (v33 >= 3)
        {
          v34 = 3 * *v26;
        }

        else
        {
          v34 = 3 * ((HIDWORD(v138) + v138 + ((HIDWORD(v138) + v138) >> 31)) >> 1);
        }

        if (v30 >= 4 * v34)
        {
          goto LABEL_56;
        }
      }

      v11 = v17;
    }

LABEL_63:
    if (v11 >= v10)
    {
      break;
    }

    if (a5)
    {
      ++v10;
      v38 = v6[1];
      if (v10 != v38)
      {
        while (*v10)
        {
          if (++v10 == v38)
          {
            v10 = v6[1];
            break;
          }
        }
      }

      v39 = v11;
    }

    else
    {
      v39 = *v6;
      v40 = v11;
      while (v40 != v39)
      {
        v41 = *--v40;
        if (v41 == *v11)
        {
          v39 = v40 + 1;
          break;
        }
      }
    }

    v42 = *v6;
    v43 = &v39[-*v6];
    v44 = &v10[-*v6];
    v45 = v44 - v43;
    v46 = 0.0;
    if (v44 - v43 >= 23)
    {
      __p = 0;
      v142 = 0;
      v143 = 0;
      sub_2614C4FCC(&__p, *a4, a4[1], a4[1] - *a4);
      v50 = 0.0;
      v51 = __p;
      if (v44 <= v43 || (v43 & 0x80000000) != 0)
      {
        v52 = 0.0;
        v53 = 0.0;
      }

      else
      {
        v52 = 0.0;
        v53 = 0.0;
        if (v142 - __p >= v44)
        {
          bzero(v145, 0x400uLL);
          v54 = (v39 - v42) & 0x7FFFFFFF;
          v55 = &v51[v43 & 0x7FFFFFFF];
          v56 = 0.0;
          v57 = 0.0;
          do
          {
            v58 = *v55++;
            v57 = v57 + v58;
            v56 = v56 + (v58 * v58);
            ++*(v145 + v58);
            ++v54;
          }

          while (v54 < v44);
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = v56 / (v45 + 1) - ((v57 / (v45 + 1)) * (v57 / (v45 + 1)));
          v63 = (v45 * 0.3);
          while (1)
          {
            v64 = *(v145 + v59);
            if (v64 + v60 >= v63)
            {
              break;
            }

            v61 += v64 * v59++;
            v60 += v64;
            if (v59 == 256)
            {
              goto LABEL_130;
            }
          }

          v61 += (v63 - v60) * v59;
LABEL_130:
          v91 = 0;
          v92 = 0;
          v52 = (v61 / v63);
          v93 = 255;
          while (1)
          {
            v94 = *(v145 + v93);
            if (v94 + v91 >= v63)
            {
              break;
            }

            v92 += v94 * v93--;
            v91 += v94;
            if (v93 == -1)
            {
              goto LABEL_135;
            }
          }

          v92 += (v63 - v91) * v93;
LABEL_135:
          v50 = (v92 / v63);
          v53 = v62 + v62;
          if (!v51)
          {
            goto LABEL_88;
          }

LABEL_87:
          operator delete(v51);
LABEL_88:
          v65 = 0;
          v66 = v45;
          v67 = v45 / 15.0;
          v6 = a3;
          v68 = *a4 + v43;
          v47 = -1;
          v69 = &unk_26157A35C;
          v70 = -0.15;
          do
          {
            if (a5)
            {
              LODWORD(v145[0]) = (v67 + 0.5);
              v71 = 1;
              v72 = v145 + 1;
              for (i = 12; i != -4; i -= 4)
              {
                v71 += *&v69[i];
                *v72++ = ((v71 * v67) + 0.5);
              }
            }

            else
            {
              v74 = 0;
              v75 = 0;
              do
              {
                v75 += *&v69[v74];
                *(v145 + v74) = ((v75 * v67) + 0.5);
                v74 += 4;
              }

              while (v74 != 16);
              LODWORD(v146) = (((v75 + 1) * v67) + 0.5);
            }

            v76 = 0;
            v77 = 0.0;
            do
            {
              if (v76)
              {
                v78 = *(v145 + v76 - 1);
              }

              else
              {
                v78 = 0;
              }

              v79 = *(v145 + v76);
              if (v78 < v79)
              {
                v80 = v79 - v78;
                v81 = (v68 + v78);
                do
                {
                  v82 = *v81++;
                  v83 = v82;
                  if ((v9 ^ v76))
                  {
                    v84 = fmin((v83 - v50), 0.0);
                  }

                  else
                  {
                    v84 = fmax((v83 - v52), 0.0);
                  }

                  v85 = v84;
                  v77 = v77 + ((1.0 / v53) * (v85 * v85));
                  --v80;
                }

                while (v80);
              }

              ++v76;
            }

            while (v76 != 5);
            v86 = -v77 / v66;
            if (v86 > v70)
            {
              v70 = v86;
              v47 = v65;
            }

            ++v65;
            v69 += 16;
          }

          while (v65 != 6);
          if (v47 < 0)
          {
            v44 = 0xFFFFFFFFLL;
            v47 = -1;
            LODWORD(v43) = -1;
            v48 = 0.0;
            v49 = 0.0;
          }

          else
          {
            v49 = v43;
            v48 = v44;
            v44 = v44;
            v46 = v129;
          }

          goto LABEL_113;
        }
      }

      if (__p)
      {
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    v47 = -1;
    LODWORD(v43) = -1;
    v48 = 0.0;
    v49 = 0.0;
    v44 = 0xFFFFFFFFLL;
LABEL_113:
    v139 = __PAIR64__(v43, v47);
    *v140 = v44;
    *&v140[8] = v49;
    *&v140[16] = v46;
    *&v140[24] = v48;
    *&v140[32] = v46;
    v87 = v6[1];
    if ((v47 & 0x80000000) == 0)
    {
      LODWORD(v145[0]) = 0;
      LODWORD(__p) = 0;
      v88 = v6;
      if (sub_261546BF8(*v6, v87, &v139, v9 & 1, 1, v145) != 0x7FFFFFFF)
      {
        v99 = sub_261546BF8(*v88, v88[1], &v139, v9 & 1, 0, &__p);
        HIDWORD(v139) = v43 - LODWORD(v145[0]);
        v100 = v46;
        *&v140[8] = (v43 - LODWORD(v145[0]));
        *&v140[16] = v100;
        if (v99 != 0x7FFFFFFFLL)
        {
          *v140 = __p + v44;
          *&v140[24] = (__p + v44);
          *&v140[32] = v100;
        }

        v144[0] = *&v140[4];
        v144[1] = *&v140[20];
        LODWORD(v144[2]) = *&v140[36];
        operator new();
      }

      v87 = v88[1];
      v6 = v88;
    }

    v89 = *v11;
    if (v87 != v11)
    {
      v89 = v89 == 0;
      while (*v11 != v89)
      {
        if (++v11 == v87)
        {
          goto LABEL_125;
        }
      }
    }

    if (v11 == v87)
    {
LABEL_125:
      LODWORD(v11) = v87;
    }

    else
    {
      v90 = v89 == 0;
      while (*v11 != v90)
      {
        if (++v11 == v87)
        {
          goto LABEL_125;
        }
      }
    }

    v37 = v11 - *v6;
    v7 = v136;
    if ((v37 & 0x80000000) == 0)
    {
      v10 = *v6;
      v11 = v6[1];
      v12 = v136;
      goto LABEL_3;
    }
  }

  if (!v7)
  {
    *a1 = a1;
    a1[1] = a1;
    v106 = (a1 + 2);
    goto LABEL_192;
  }

  if (sub_2615470FC(&v134))
  {
    *a1 = a1;
    a1[1] = a1;
    v102 = v134;
    v101 = v135;
    v103 = *(v134 + 8);
    v104 = *v135;
    *(v104 + 8) = v103;
    *v103 = v104;
    v105 = *a1;
    *(v105 + 8) = v101;
    *v101 = v105;
    *a1 = v102;
    *(v102 + 8) = a1;
    a1[2] = v7;
    v106 = &v136;
    goto LABEL_192;
  }

  v107 = a6[1];
  if (v107 == a6)
  {
    goto LABEL_177;
  }

  v133 = a6[2];
  v108 = v135;
  v109 = a6[1];
  do
  {
    if (v108 != &v134)
    {
      v110 = v109[2];
      v111 = v109[3];
      v112 = v108;
      do
      {
        if (v110 != v111)
        {
          v113 = v110;
          do
          {
            if (sub_2615471B0(v112 + 4, v113))
            {
              *(v112 + 81) = 1;
              *(v113 + 65) = 1;
            }

            v113 += 72;
          }

          while (v113 != v111);
        }

        v112 = v112[1];
      }

      while (v112 != &v134);
    }

    v109 = v109[1];
  }

  while (v109 != a6);
  v114 = v107 + 16;
  if (*(v107 + 40) > a2)
  {
    v115 = 0;
    v116 = v107;
    v117 = v133;
LABEL_163:
    if (!sub_26154720C(*(v116 + 16), *(v114 + 8), &v134))
    {
      goto LABEL_164;
    }

    goto LABEL_179;
  }

  v116 = v107;
  v117 = v133;
  while (1)
  {
    v115 = sub_26154720C(*(v116 + 16), *(v114 + 8), &v134);
    v116 = *(v116 + 8);
    if (v116 == a6)
    {
      break;
    }

    v114 = v116 + 16;
    if (*(v116 + 40) > a2)
    {
      goto LABEL_163;
    }
  }

LABEL_164:
  if (!v115)
  {
    if (v107 != a6)
    {
      v118 = v135;
      while (v118 != &v134)
      {
        v120 = *(v107 + 16);
        v119 = *(v107 + 24);
        v121 = v118;
        while (v120 != v119)
        {
          v122 = v120;
          while (!sub_2615471B0(v121 + 4, v122))
          {
            v122 += 18;
            if (v122 == v119)
            {
              goto LABEL_176;
            }
          }

          v121 = v121[1];
          if (v121 == &v134)
          {
            goto LABEL_179;
          }
        }

LABEL_176:
        v107 = *(v107 + 8);
        if (v107 == a6)
        {
          goto LABEL_177;
        }
      }

      goto LABEL_179;
    }

LABEL_177:
    v145[0] = 0;
    v145[1] = 0;
    v146 = 0;
    v147 = a2;
    v148 = 0;
    if (v7 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_2614709BC();
  }

LABEL_179:
  if (v117)
  {
    sub_2615472E4(a1, a6, 0);
    if (a1[2])
    {
      v123 = a1;
      while (1)
      {
        v123 = v123[1];
        if (v123 == a1)
        {
          break;
        }

        if (*(v123 + 81))
        {
          return sub_2614C5E88(&v134);
        }
      }
    }

    sub_2615472E4(v145, a6, 1);
    sub_261547408(a1, v145);
    sub_2614C5E88(v145);
    if (a1[2])
    {
      v124 = a1;
      while (1)
      {
        v124 = v124[1];
        if (v124 == a1)
        {
          break;
        }

        if (*(v124 + 81))
        {
          return sub_2614C5E88(&v134);
        }
      }
    }

    sub_2614C5E88(a1);
  }

  *a1 = a1;
  a1[1] = a1;
  v106 = (a1 + 2);
LABEL_192:
  *v106 = 0;
  return sub_2614C5E88(&v134);
}

void sub_261546844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2614C5E88(v17);
  sub_2614C5E88(va);
  _Unwind_Resume(a1);
}

double sub_261546888(uint64_t a1, void *a2)
{
  v3 = a2[2];
  if (!v3)
  {
    *a1 = 1;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    result = 0.0;
    *(a1 + 4) = 0u;
    *(a1 + 20) = 0u;
    *(a1 + 36) = 0u;
    *(a1 + 52) = 0u;
    *(a1 + 68) = 0u;
    *(a1 + 84) = 0;
    *(a1 + 96) = a1 + 104;
    *(a1 + 120) = 0;
    *(a1 + 124) = 0;
    *(a1 + 128) = 0;
    return result;
  }

  if (*(*a2 + 24) == 0x7FFFFFFF)
  {
    v5 = -2;
  }

  else
  {
    v5 = -1;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  sub_261483200(&v36, 12 * (v5 + 2 * v3));
  v6 = 0;
  v7 = a2[1];
  v8 = *(v7 + 24);
  v9 = 11;
  do
  {
    if ((v8 >> v9))
    {
      if (v37 - v36 <= v6)
      {
        sub_2614C3568();
      }

      *(v36 + v6) = 1;
    }

    ++v6;
    --v9;
  }

  while (v6 != 12);
  v10 = *(v7 + 8);
  if (v10 != a2)
  {
    LODWORD(v11) = 12;
    do
    {
      v12 = *(v10 + 16);
      v13 = v11 + 12;
      v11 = v11;
      for (i = 11; i != -1; --i)
      {
        if ((v12 >> i))
        {
          if (v37 - v36 <= v11)
          {
            sub_2614C3568();
          }

          *(v36 + v11) = 1;
        }

        ++v11;
      }

      v15 = *(v10 + 24);
      if (v15 != 0x7FFFFFFF)
      {
        v11 = v13;
        for (j = 11; j != -1; --j)
        {
          if ((v15 >> j))
          {
            if (v37 - v36 <= v11)
            {
              sub_2614C3568();
            }

            *(v36 + v11) = 1;
          }

          ++v11;
        }
      }

      v10 = *(v10 + 8);
    }

    while (v10 != a2);
  }

  sub_2614C2F14(&__p, &v36);
  v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v21 = a2;
    v19 = *a2;
    v20 = v21[1];
    v23 = *(v20 + 36);
    v22 = *(v20 + 40);
    v25 = *(v19 + 36);
    v24 = *(v19 + 40);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    sub_261539988(&v33, p_p, p_p + size, size);
    *&result = (v24 - v25) / 49.0;
    v28 = *(v20 + 48) | (*(v20 + 56) << 32);
    v29 = *(v19 + 64) | (*(v19 + 72) << 32);
    *a1 = 0x200000000000;
    *(a1 + 8) = v33;
    v30 = v34;
    v33 = 0uLL;
    v34 = 0;
    *(a1 + 24) = v30;
    *(a1 + 32) = v28;
    *(a1 + 40) = v29;
    *(a1 + 48) = v29;
    *(a1 + 112) = 0;
    *(a1 + 104) = 0;
    *(a1 + 56) = v28;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 96) = a1 + 104;
    *(a1 + 120) = 0;
    *(a1 + 124) = 0;
    *(a1 + 128) = 0;
    *(a1 + 88) = 0;
    v31 = v36;
    v32 = v37;
    *(a1 + 124) = (v22 - v23) / 49.0;
    *(a1 + 128) = LODWORD(result);
    if (v32 == v31)
    {
      sub_2614C3568();
    }

    *(a1 + 120) = *v31 != 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  *a1 = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  if (v17 < 0)
  {
LABEL_33:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_34:
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  return result;
}

void sub_261546BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  sub_261518D9C(v20);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_261546BF8(uint64_t a1, _BYTE *a2, int *a3, int a4, int a5, int *a6)
{
  v97 = 0u;
  v98 = 0u;
  if (a5)
  {
    v10 = sub_2614C5CC4(a1, a3[1] + a1, &v97);
    if (v10 >= v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = (a1 + a3[2]);
    v14 = sub_2614C5D98(v13, a2, &v97);
    v16 = v15 != a2 || v98.i32[3] == 0;
    if (v16)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = a2;
    }

    if (v17 >= v18)
    {
      goto LABEL_18;
    }

    v19 = &v98.i8[12];
    v20 = &v97.i8[4];
    do
    {
      v21 = *(v20 - 1);
      *(v20 - 1) = *v19;
      *v19 = v21;
      v19 -= 4;
      v22 = v20 >= v19;
      v20 += 4;
    }

    while (!v22);
  }

  v23 = vaddvq_s32(vaddq_s32(v98, v97));
  *a6 = v23;
  v24 = v23 / 17.0;
  v25 = (a3[2] - a3[1]) / 15.0;
  if ((vabds_f32(v24, v25) / v25) > 0.3)
  {
LABEL_18:
    v26 = 0;
    v27 = 0x7FFFFFFFLL;
    return v26 | v27;
  }

  v29 = 0;
  v27 = 0x7FFFFFFFLL;
  do
  {
    v30 = v97.i32[v29] / v24;
    v31 = (v30 + 0.5);
    if (v31 <= 0)
    {
      if (v30 < 0.3)
      {
LABEL_40:
        v26 = 0;
        return v26 | v27;
      }

      v31 = 1;
    }

    else if (v31 >= 9)
    {
      if (v30 > 8.7)
      {
        goto LABEL_40;
      }

      v31 = 8;
    }

    v32 = v29 >> 1;
    v33 = v30 - v31;
    if (v29)
    {
      v34 = &v95;
    }

    else
    {
      v34 = &v96;
    }

    if (v29)
    {
      v35 = &v91;
    }

    else
    {
      v35 = &v93;
    }

    v34->i32[v32] = v31;
    v35[v32] = v33;
    ++v29;
  }

  while (v29 != 8);
  v36 = vaddvq_s32(v96);
  v37 = vaddvq_s32(v95);
  v38 = vaddvq_s32(vaddq_s32(v95, v96));
  v39 = v36 > 13;
  v40 = v37 > 13;
  v41 = v37 < 4;
  switch(v38)
  {
    case 16:
      if (v36)
      {
        v26 = 0;
        v27 = 0x7FFFFFFFLL;
        if ((v37 & 1) == 0 || v36 > 13)
        {
          return v26 | v27;
        }

        goto LABEL_72;
      }

      if (v37)
      {
        goto LABEL_18;
      }

      v41 = 1;
      break;
    case 17:
      if (v36)
      {
        if (v37)
        {
          goto LABEL_18;
        }

        v39 = v36 >= v37 || v36 > 13;
        v41 = v36 >= v37 || v37 < 4;
        v40 = v37 > 13 || v36 < v37;
        if (v36 < 4 || v36 < v37)
        {
          goto LABEL_71;
        }

        goto LABEL_59;
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_18;
      }

      break;
    case 18:
      if (v36)
      {
        if ((v37 & 1) == 0)
        {
          goto LABEL_18;
        }

        v39 = 1;
      }

      else
      {
        if (v37)
        {
          goto LABEL_18;
        }

        v40 = 1;
      }

      break;
    default:
      goto LABEL_18;
  }

  if (v36 <= 3)
  {
LABEL_71:
    if (v39)
    {
      goto LABEL_18;
    }

LABEL_72:
    v51 = v93;
    v52 = &v93;
    v53 = v94;
    v54 = 12;
    v55 = v94;
    do
    {
      v56 = *v55++;
      v57 = v56;
      if (v51 < v56)
      {
        v51 = v57;
        v52 = v53;
      }

      v53 = v55;
      v54 -= 4;
    }

    while (v54);
    v49 = v52 - &v93;
    v50 = *(v96.i32 + v49) + 1;
    goto LABEL_77;
  }

LABEL_59:
  if (!v39)
  {
    if (v41)
    {
      goto LABEL_78;
    }

    goto LABEL_85;
  }

  v42 = v93;
  v43 = &v93;
  v44 = v94;
  v45 = 12;
  v46 = v94;
  do
  {
    v47 = *v46++;
    v48 = v47;
    if (v47 < v42)
    {
      v42 = v48;
      v43 = v44;
    }

    v44 = v46;
    v45 -= 4;
  }

  while (v45);
  v49 = v43 - &v93;
  v50 = *(v96.i32 + v49) - 1;
LABEL_77:
  *(v96.i32 + v49) = v50;
  if (v41)
  {
LABEL_78:
    if (v40)
    {
      goto LABEL_18;
    }

    v58 = v91;
    v59 = &v91;
    v60 = v92;
    v61 = 12;
    v62 = v92;
    do
    {
      v63 = *v62++;
      v64 = v63;
      if (v58 < v63)
      {
        v58 = v64;
        v59 = v60;
      }

      v60 = v62;
      v61 -= 4;
    }

    while (v61);
    v65 = 1;
    goto LABEL_91;
  }

LABEL_85:
  if (!v40)
  {
    goto LABEL_92;
  }

  v66 = v91;
  v59 = &v91;
  v67 = v92;
  v68 = 12;
  v69 = v92;
  do
  {
    v70 = *v69++;
    v71 = v70;
    if (v70 < v66)
    {
      v66 = v71;
      v59 = v67;
    }

    v67 = v69;
    v68 -= 4;
  }

  while (v68);
  v65 = -1;
LABEL_91:
  *(v95.i32 + v59 - &v91) += v65;
LABEL_92:
  v72 = 0;
  v73 = 0;
  v74 = *a3;
  if (a4)
  {
    v75 = (a5 ^ 1) - 1;
  }

  else
  {
    v75 = (a5 ^ 1) + 1;
  }

  v76 = v75 + 4 * v74;
  if (v74)
  {
    v77 = 0;
  }

  else
  {
    v77 = a5;
  }

  v78 = v77 & a4;
  v79 = &unk_26157A3BC + 32 * v76;
  v80 = v79 + 24;
  for (i = 3; i != -1; --i)
  {
    v82 = v96.i32[i];
    if (!v78)
    {
      v73 += v82 * *v80;
    }

    v72 += v82;
    v80 -= 2;
  }

  v83 = 0;
  v84 = v79 + 28;
  for (j = 3; j != -1; --j)
  {
    if ((v78 & 1) == 0)
    {
      v83 += v95.i32[j] * *v84;
    }

    v84 -= 2;
  }

  v26 = 0;
  v27 = 0x7FFFFFFFLL;
  if ((v72 & 1) == 0 && (v72 - 14) >= 0xFFFFFFF6)
  {
    v86 = (v83 + v73);
    v87 = (12 - v72) >> 1;
    v88 = dword_26157A69C[v87];
    v89 = 9 - v88;
    v90 = sub_26150A8EC(v96.i32, 4u, v88, 0);
    v27 = sub_26150A8EC(v95.i32, 4u, v89, 1) + dword_26157A6B0[v87] * v90 + dword_26157A6C4[v87];
    v26 = v86 << 32;
  }

  return v26 | v27;
}

BOOL sub_2615470FC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if (*(v1 + 24) == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = *(v1 + 28);
  v4 = *(v1 + 8);
  if (v4 == a1)
  {
    v6 = 422;
  }

  else
  {
    v5 = 2;
    do
    {
      v3 += *(v4 + 20);
      if (*(v4 + 24) == 0x7FFFFFFF)
      {
        ++v5;
      }

      else
      {
        v3 += *(v4 + 28);
        v5 += 2;
      }

      v4 = *(v4 + 8);
    }

    while (v4 != a1);
    v6 = 211 * v5;
  }

  return v3 % 211 + v6 - 844 == *(v1 + 16);
}

BOOL sub_26154720C(char *a1, char *a2, uint64_t a3)
{
  if (0x8E38E38E38E38E39 * ((a2 - a1) >> 3) != *(a3 + 16))
  {
    return 0;
  }

  v4 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v5 = a3;
  do
  {
    v5 = *(v5 + 8);
    result = sub_2615471B0(v4, (v5 + 16));
    v4 += 72;
  }

  while (result && v4 != a2);
  return result;
}

void sub_2615472A0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    __p[3] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t *sub_2615472E4(void *a1, uint64_t *a2, int a3)
{
  if (a2[2] < 0x1A)
  {
    if (a3)
    {
      v6 = a2[1];
      v14 = &v14;
      v15 = &v14;
      v16 = 0;
      result = sub_2615474D0(a1, a2, a2, v6, v6, &v14);
      if (v16)
      {
        result = v15;
        v7 = *(v14 + 8);
        v8 = *v15;
        *(v8 + 8) = v7;
        *v7 = v8;
        v16 = 0;
        while (result != &v14)
        {
          v9 = result[1];
          sub_2615472A0(result);
          result = v9;
        }
      }
    }

    else
    {
      v10 = a2[1];
      v14 = &v14;
      v15 = &v14;
      v16 = 0;
      result = sub_2615476A8(a1, v10, a2, &v14);
      if (v16)
      {
        result = v15;
        v11 = *(v14 + 8);
        v12 = *v15;
        *(v12 + 8) = v11;
        *v11 = v12;
        v16 = 0;
        while (result != &v14)
        {
          v13 = result[1];
          sub_2615472A0(result);
          result = v13;
        }
      }
    }
  }

  else
  {
    result = sub_261547470(a2);
    *a1 = a1;
    a1[1] = a1;
    a1[2] = 0;
  }

  return result;
}

void sub_2615473F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261547470(va);
  _Unwind_Resume(a1);
}

void *sub_261547408(uint64_t *a1, void *a2)
{
  result = sub_2614C5E88(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

void *sub_261547470(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    while (result != v1)
    {
      v4 = result[1];
      sub_2615472A0(result);
      result = v4;
    }
  }

  return result;
}

void *sub_2615474D0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13[0] = v13;
  v13[1] = v13;
  v13[2] = 0;
  for (i = a6; ; sub_261547864(v13, v13, i[2], i[3]))
  {
    i = i[1];
    if (i == a6)
    {
      break;
    }
  }

  if (a3 == a5)
  {
LABEL_9:
    *a1 = a1;
    a1[1] = a1;
    a1[2] = 0;
  }

  else
  {
    while (1)
    {
      sub_2615479B8(a1, v13);
      sub_261547864(a1, a1, *(*a3 + 16), *(*a3 + 24));
      if (sub_261547A74(a1))
      {
        break;
      }

      sub_2614C5E88(a1);
      a3 = *a3;
      if (a3 == a5)
      {
        goto LABEL_9;
      }
    }

    if (!sub_2615470FC(a1))
    {
      sub_261547AE4(&v12, a6);
      sub_261547B6C();
    }
  }

  return sub_2614C5E88(v13);
}

void sub_261547668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_261547470(va);
  sub_2614C5E88(v5);
  sub_2614C5E88(va1);
  _Unwind_Resume(a1);
}

void *sub_2615476A8(void *a1, void *a2, void *a3, uint64_t a4)
{
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  for (i = a4; ; sub_261547864(v11, v11, i[2], i[3]))
  {
    i = i[1];
    if (i == a4)
    {
      break;
    }
  }

  if (a2 == a3)
  {
LABEL_9:
    *a1 = a1;
    a1[1] = a1;
    a1[2] = 0;
  }

  else
  {
    while (1)
    {
      sub_2615479B8(a1, v11);
      sub_261547864(a1, a1, a2[2], a2[3]);
      if (sub_261547A74(a1))
      {
        break;
      }

      sub_2614C5E88(a1);
      a2 = a2[1];
      if (a2 == a3)
      {
        goto LABEL_9;
      }
    }

    if (!sub_2615470FC(a1))
    {
      sub_261547AE4(&v10, a4);
      sub_261547B6C();
    }
  }

  return sub_2614C5E88(v11);
}

void sub_261547824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_261547470(va);
  sub_2614C5E88(v5);
  sub_2614C5E88(va1);
  _Unwind_Resume(a1);
}

void sub_261547864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }
}

void sub_261547984(void *a1)
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

void *sub_2615479B8(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

uint64_t sub_261547A74(uint64_t a1)
{
  v1 = 0;
  while (*(a1 + 16) > *(&off_279AD96E8 + v1 + 8))
  {
LABEL_3:
    v1 += 16;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (*(a1 + 8) != a1)
  {
    v2 = *(&off_279AD96E8 + v1);
    v3 = *(a1 + 8);
    while (*(v3 + 32) == *v2)
    {
      v3 = *(v3 + 8);
      ++v2;
      if (v3 == a1)
      {
        return 1;
      }
    }

    goto LABEL_3;
  }

  return 1;
}

void *sub_261547AE4(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_261547B6C();
  }

  return result;
}

void sub_261547C28(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_261547C4C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_2614709BC();
}

void sub_261547CB0(void *a1)
{
  *a1 = &unk_2873D1BD8;
  sub_261547470(a1 + 1);

  JUMPOUT(0x2667045D0);
}

void *sub_261547D14(void *a1)
{
  *a1 = &unk_2873D1BD8;
  sub_261547470(a1 + 1);
  return a1;
}

void sub_261547D70(uint64_t a1, int a2)
{
  v2 = (a2 + 360) % 360;
  if (v2 > 179)
  {
    if (v2 == 180)
    {
      if (!*(a1 + 24) && *(a1 + 36) * *(a1 + 32) == *(*(a1 + 8) + 8) - **(a1 + 8))
      {
        operator new();
      }

      sub_26154836C();
    }

    if (v2 == 270)
    {
      sub_2615481C4();
    }
  }

  else
  {
    if (!v2)
    {
      operator new();
    }

    if (v2 == 90)
    {
      sub_2615481C4();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_2615118C4(exception);
  __cxa_throw(exception, off_279AD85E8, MEMORY[0x277D82610]);
}

void sub_261548168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void sub_261548248(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_261548348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_26149E780(a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

__n128 sub_261548478(uint64_t a1, int a2, int a3, int a4, int a5, __n128 *a6, int a7)
{
  *a1 = &unk_2873D1D70;
  result = *a6;
  *(a1 + 8) = *a6;
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  *(a1 + 32) = a4;
  *(a1 + 36) = a5;
  *(a1 + 40) = a7;
  if ((a3 | a2 | a4 | a5) < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Requested offset is outside the image");
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_279AD85E0, MEMORY[0x277D825F8]);
  }

  return result;
}

void sub_26154853C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 16);
  if (v11)
  {
    sub_26149E780(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_261548568(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_2614709BC();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_2615486A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void sub_2615486BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2873D08F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

void sub_261548738(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (((a3 | a2 | a4 | a5) & 0x80000000) == 0 && a4 + a2 <= *(a1 + 32) && a5 + a3 <= *(a1 + 36))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_26149AA60(exception, "Crop rectangle does not fit within image data.");
  __cxa_throw(exception, off_279AD85E0, MEMORY[0x277D825F8]);
}

void sub_261548890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_26149E780(a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void sub_2615488CC(int32x2_t *a1, void *a2, int a3, float a4)
{
  a2[1] = *a2;
  v6 = a1[4];
  v7 = tanf(a4);
  if (a3)
  {
    v8 = a3 / cosf(a4);
  }

  else
  {
    v8 = 0.0;
  }

  v9 = vmul_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
  v10 = -v9.f32[0];
  v11 = v8 - (v7 * v9.f32[0]);
  if (v11 >= -v9.f32[1] && v11 <= v9.f32[1])
  {
    operator new();
  }

  v13 = v8 + (v9.f32[0] * v7);
  if (v13 >= -v9.f32[1] && v13 <= v9.f32[1])
  {
    sub_261470B0C(1uLL);
  }

  if (fabsf(v7) >= 0.00000011921)
  {
    v15 = (v9.f32[1] - v8) / v7;
    if (v15 >= v10 && v15 <= v9.f32[0])
    {
      sub_261470B0C(1uLL);
    }

    v17 = (-v9.f32[1] - v8) / v7;
    if (v17 >= v10 && v17 <= v9.f32[0])
    {
      sub_261470B0C(1uLL);
    }
  }

  sub_261548F54(0, 0, 0, 1);
}