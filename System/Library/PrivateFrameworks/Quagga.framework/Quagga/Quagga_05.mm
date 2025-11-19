void *sub_2614DD330(void *result, char *__src, char *a3, unint64_t a4)
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

      sub_261472AF0(v7, v11);
    }

    sub_2614709BC();
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

uint64_t sub_2614DD464(uint64_t result, uint64_t *a2, atomic_uint **a3, uint64_t *a4, uint64_t *a5, uint64_t a6, _DWORD *a7)
{
  v7 = result;
  v19[6] = *MEMORY[0x277D85DE8];
  if (*a7 - 18) >= 0xFFFFFFF9 && (*a7)
  {
    if (*a4 == a4[1] && *a5 == a5[1])
    {
      if (*a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
        v18[0] = v12;
        v13 = sub_2614C661C(v18, a4, a5);
        result = sub_2614705CC(v12);
        if ((v13 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_12:
        v14 = *a2;
        if (*a2)
        {
          atomic_fetch_add_explicit((v14 + 8), 1u, memory_order_relaxed);
        }

        v15 = *a7;
        v16 = *a3;
        if (*a3)
        {
          atomic_fetch_add_explicit(v16 + 2, 1u, memory_order_relaxed);
        }

        v17 = v16;
        sub_2614C21B0(v19, v14, v15, &v17);
      }
    }

    v18[0] = 0;
    result = sub_2614C661C(v18, a4, a5);
    if (result)
    {
      goto LABEL_12;
    }
  }

LABEL_17:
  *v7 = 0;
  return result;
}

void sub_2614DDAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, atomic_uint *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, atomic_uint *a27, uint64_t a28, uint64_t a29, char *a30, void **buf)
{
  sub_2614802C0(a12);
  buf = &a14;
  sub_261470CC4(&buf);
  a17 = &unk_2873D12B8;
  if (a19)
  {
    sub_2614705CC(a19);
  }

  a19 = 0;
  MEMORY[0x2667045D0](v32, 0x10A1C4006AAC113);
  a30 = &a21;
  sub_261470CC4(&a30);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  if (a27)
  {
    sub_2614705CC(a27);
  }

  sub_2614705CC(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_2614DDC64(uint64_t a1, int a2, int a3, float a4, float a5, float a6, float a7)
{
  if (a3 < 1)
  {
    return -1;
  }

  v7 = a3;
  v14 = *(a1 + 56);
  v15 = -v14;
  v16 = *(a1 + 32);
  v17 = v16 & -v14--;
  v18 = *(a1 + 16);
  v19 = v18 & v14 | v17;
  v20 = v16 & v14 | v18 & v15;
  while (1)
  {
    a4 = a4 + a6;
    a5 = a5 + a7;
    v21 = a4;
    if ((v21 & 0x80000000) == 0)
    {
      v22 = a5;
      if (v22 < v20 && (v22 & 0x80000000) == 0 && v21 < v19 && sub_261470964(a1, a4, a5) != a2)
      {
        break;
      }
    }

    if (!--v7)
    {
      return -1;
    }
  }

  return v21 | (v22 << 32);
}

uint64_t sub_2614DDD58(uint64_t a1, int a2, unsigned int a3, int a4, float a5, float a6, float a7)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  for (i = -1; i != 2; ++i)
  {
    for (j = -1; j != 2; ++j)
    {
      v15 = (j * a6) + (i * a5);
      if (v15 >= 0.00001)
      {
        v16 = v12 - v10;
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v10) >> 2) + 1;
        if (v17 > 0x1555555555555555)
        {
          sub_2614709BC();
        }

        if (0x5555555555555556 * (-v10 >> 2) > v17)
        {
          v17 = 0x5555555555555556 * (-v10 >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v10 >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v18 = 0x1555555555555555;
        }

        else
        {
          v18 = v17;
        }

        if (v18)
        {
          if (v18 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_2614709D4();
        }

        v19 = 4 * ((v12 - v10) >> 2);
        *v19 = i;
        *(v19 + 4) = j;
        *(v19 + 8) = v15;
        v11 = (v19 + 12);
        v20 = (v19 + 12 * (v16 / -12));
        memcpy(v20, v10, v16);
        if (v10)
        {
          operator delete(v10);
        }

        v10 = v20;
        v12 = v11;
      }
    }
  }

  v21 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v12 - v10) >> 2));
  if (v12 == v10)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  sub_2614DE13C(v10, v12, v22, 1);
  if (a7 <= 0.0)
  {
    goto LABEL_37;
  }

  v23 = 0;
  v24 = *a1;
  v25 = *(*a1 + 56);
  v26 = -v25;
  v27 = *(*a1 + 32);
  v28 = v27 & -v25--;
  v29 = *(*a1 + 16);
  v30 = v29 & v25 | v28;
  v31 = v27 & v25 | v29 & v26;
  v32 = a2;
  v33 = a3;
LABEL_23:
  if (v10 == v11)
  {
LABEL_37:
    LODWORD(v35) = a2;
    v37 = a3;
LABEL_38:
    if (v10)
    {
LABEL_39:
      operator delete(v10);
    }
  }

  else
  {
    v43 = v23;
    v34 = v10;
    do
    {
      v35 = (*v34 + v32);
      if (*v34 + v32 >= 0)
      {
        v36 = v34[1];
        v37 = v36 + v33;
        v38 = (v36 + v33) < v31 && v35 < v30;
        if (v38 && (v37 & 0x80000000) == 0 && sub_261470964(v24, v35, v36 + v33) != a4)
        {
          v23 = v43 + 1;
          v32 = v35;
          v33 = v37;
          if ((v43 + 1) < a7)
          {
            goto LABEL_23;
          }

          goto LABEL_38;
        }
      }

      v34 += 3;
    }

    while (v34 != v11);
    v37 = v33;
    LODWORD(v35) = v32;
    if (v10)
    {
      goto LABEL_39;
    }
  }

  if (a6 <= 0.0)
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 + 1;
  }

  if (a5 <= 0.0)
  {
    v40 = v35;
  }

  else
  {
    v40 = (v35 + 1);
  }

  return v40 | (v39 << 32);
}

void sub_2614DE044(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614DE064(uint64_t a1, _DWORD *a2)
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
      sub_2614709BC();
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
      sub_261472B30(v11);
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

float *sub_2614DE13C(float *result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 2);
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v127 = *(a2 - 4);
        v128 = *(v8 + 8);
        if (v127 > v128)
        {
          v129 = *v8;
          *v8 = *(a2 - 12);
          *(a2 - 12) = v129;
          v130 = *(v8 + 4);
          *(v8 + 4) = *(a2 - 8);
          *(a2 - 8) = v130;
          *(v8 + 8) = v127;
          *(a2 - 4) = v128;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {

      return sub_2614DEE80(v8, (v8 + 12), (v8 + 24), (a2 - 12));
    }

    if (v10 == 5)
    {
      result = sub_2614DEE80(v8, (v8 + 12), (v8 + 24), (v8 + 36));
      v114 = *(a2 - 4);
      v115 = *(v8 + 44);
      if (v114 <= v115)
      {
        return result;
      }

      v116 = *(v8 + 36);
      *(v8 + 36) = *(a2 - 12);
      *(a2 - 12) = v116;
      v117 = *(v8 + 40);
      *(v8 + 40) = *(a2 - 8);
      *(a2 - 8) = v117;
      *(v8 + 44) = v114;
      *(a2 - 4) = v115;
      v118 = *(v8 + 44);
      v119 = *(v8 + 32);
      if (v118 <= v119)
      {
        return result;
      }

      v120 = *(v8 + 36);
      v121 = *(v8 + 40);
      v122 = *(v8 + 24);
      *(v8 + 24) = v120;
      *(v8 + 28) = v121;
      *(v8 + 36) = v122;
      *(v8 + 32) = v118;
      *(v8 + 44) = v119;
      v123 = *(v8 + 20);
      if (v118 <= v123)
      {
        return result;
      }

      v124 = *(v8 + 12);
      *(v8 + 12) = v120;
      *(v8 + 16) = v121;
      *(v8 + 24) = v124;
      *(v8 + 20) = v118;
      *(v8 + 32) = v123;
      v125 = *(v8 + 8);
      if (v118 <= v125)
      {
        return result;
      }

      v126 = *v8;
      *v8 = v120;
      *(v8 + 4) = v121;
      *(v8 + 12) = v126;
      goto LABEL_175;
    }

LABEL_10:
    if (v9 <= 287)
    {
      v136 = (v8 + 12);
      v138 = v8 == a2 || v136 == a2;
      if (a4)
      {
        if (!v138)
        {
          v139 = 0;
          v140 = v8;
          do
          {
            v141 = *(v140 + 5);
            v142 = *(v140 + 2);
            v140 = v136;
            if (v141 > v142)
            {
              v143 = *v136;
              v144 = v139;
              while (1)
              {
                v145 = (v8 + v144);
                v146 = *(v8 + v144 + 4);
                v145[3] = *(v8 + v144);
                *(v145 + 4) = v146;
                v145[5] = *(v8 + v144 + 8);
                if (!v144)
                {
                  break;
                }

                v144 -= 12;
                if (v141 <= *(v145 - 1))
                {
                  v147 = v8 + v144 + 12;
                  goto LABEL_134;
                }
              }

              v147 = v8;
LABEL_134:
              *v147 = v143;
              *(v147 + 8) = v141;
            }

            v136 = (v140 + 12);
            v139 += 12;
          }

          while ((v140 + 12) != a2);
        }
      }

      else if (!v138)
      {
        v182 = (v8 + 8);
        do
        {
          v183 = *(v7 + 20);
          v184 = *(v7 + 8);
          v7 = v136;
          if (v183 > v184)
          {
            v185 = *v136;
            v186 = v182;
            do
            {
              v187 = *(v186 - 1);
              v186[1] = *(v186 - 2);
              v186[2] = v187;
              v186[3] = *v186;
              v188 = *(v186 - 3);
              v186 -= 3;
            }

            while (v183 > v188);
            *(v186 + 1) = v185;
            *(v186 + 3) = v183;
          }

          v136 = (v7 + 12);
          v182 += 3;
        }

        while (v7 + 12 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v148 = (v10 - 2) >> 1;
      v149 = v148;
      do
      {
        v150 = v149;
        if (v148 >= v149)
        {
          v151 = (2 * v149) | 1;
          v152 = v8 + 12 * v151;
          if (2 * v150 + 2 < v10 && *(v152 + 8) > *(v152 + 20))
          {
            v152 += 12;
            v151 = 2 * v150 + 2;
          }

          v153 = v8 + 12 * v150;
          v154 = *(v152 + 8);
          v155 = *(v153 + 8);
          if (v154 <= v155)
          {
            v156 = *v153;
            do
            {
              v157 = v153;
              v153 = v152;
              *v157 = *v152;
              *(v157 + 4) = *(v152 + 4);
              *(v157 + 8) = v154;
              if (v148 < v151)
              {
                break;
              }

              v158 = 2 * v151;
              v151 = (2 * v151) | 1;
              v152 = v8 + 12 * v151;
              v159 = v158 + 2;
              if (v159 < v10 && *(v152 + 8) > *(v152 + 20))
              {
                v152 += 12;
                v151 = v159;
              }

              v154 = *(v152 + 8);
            }

            while (v154 <= v155);
            *v153 = v156;
            *(v153 + 8) = v155;
          }
        }

        v149 = v150 - 1;
      }

      while (v150);
      v160 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
      while (2)
      {
        v161 = 0;
        v162 = *v8;
        v163 = *(v8 + 4);
        v164 = *(v8 + 8);
        v165 = v8;
        do
        {
          v166 = &v165[3 * v161];
          v167 = v166 + 3;
          v168 = (2 * v161) | 1;
          v161 = 2 * v161 + 2;
          if (v161 >= v160)
          {
            v161 = v168;
          }

          else
          {
            v169 = *(v166 + 5);
            v170 = *(v166 + 8);
            v171 = v166 + 6;
            if (v169 <= v170)
            {
              v161 = v168;
            }

            else
            {
              v167 = v171;
            }
          }

          *v165 = *v167;
          result = v167[1];
          v165[1] = result;
          v165[2] = v167[2];
          v165 = v167;
        }

        while (v161 <= ((v160 - 2) >> 1));
        if (v167 != (a2 - 12))
        {
          *v167 = *(a2 - 12);
          v167[1] = *(a2 - 8);
          v167[2] = *(a2 - 4);
          *(a2 - 12) = v162;
          *(a2 - 8) = v163;
          *(a2 - 4) = v164;
          v172 = v167 - v8 + 12;
          if (v172 >= 13)
          {
            v173 = (-2 - 0x5555555555555555 * (v172 >> 2)) >> 1;
            v174 = v8 + 12 * v173;
            v175 = *(v174 + 8);
            v164 = *(v167 + 2);
            if (v175 > v164)
            {
              v176 = *v167;
              do
              {
                v177 = v167;
                v167 = v174;
                *v177 = *v174;
                v177[1] = *(v174 + 4);
                v177[2] = v175;
                if (!v173)
                {
                  break;
                }

                v173 = (v173 - 1) >> 1;
                v174 = v8 + 12 * v173;
                v175 = *(v174 + 8);
              }

              while (v175 > v164);
              *v167 = v176;
LABEL_168:
              *(v167 + 2) = v164;
            }
          }

          a2 -= 12;
          if (v160-- <= 2)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v167 = v162;
      v167[1] = v163;
      goto LABEL_168;
    }

    v11 = v10 >> 1;
    v12 = v8 + 12 * (v10 >> 1);
    v13 = *(a2 - 4);
    if (v9 >= 0x601)
    {
      v14 = *(v12 + 8);
      v15 = *(v8 + 8);
      if (v14 <= v15)
      {
        if (v13 > v14)
        {
          v22 = *v12;
          *v12 = *(a2 - 12);
          *(a2 - 12) = v22;
          v23 = *(v12 + 4);
          *(v12 + 4) = *(a2 - 8);
          *(a2 - 8) = v23;
          *(v12 + 8) = v13;
          *(a2 - 4) = v14;
          v24 = *(v12 + 8);
          v25 = *(v8 + 8);
          if (v24 > v25)
          {
            v26 = *v8;
            *v8 = *v12;
            *v12 = v26;
            *(v8 + 8) = v24;
            *(v12 + 8) = v25;
          }
        }
      }

      else
      {
        v16 = *v8;
        if (v13 > v14)
        {
          *v8 = *(a2 - 12);
          *(a2 - 12) = v16;
          v17 = *(v8 + 4);
          *(v8 + 4) = *(a2 - 8);
          *(a2 - 8) = v17;
          *(v8 + 8) = v13;
          goto LABEL_27;
        }

        v32 = *(v8 + 4);
        *v8 = *v12;
        *v12 = v16;
        *(v12 + 4) = v32;
        *(v8 + 8) = v14;
        *(v12 + 8) = v15;
        v33 = *(a2 - 4);
        if (v33 > v15)
        {
          *v12 = *(a2 - 12);
          *(a2 - 12) = v16;
          v34 = *(v12 + 4);
          *(v12 + 4) = *(a2 - 8);
          *(a2 - 8) = v34;
          *(v12 + 8) = v33;
LABEL_27:
          *(a2 - 4) = v15;
        }
      }

      v35 = v8 + 12 * v11;
      v36 = v35 - 12;
      v37 = *(v35 - 4);
      v38 = *(v8 + 20);
      v39 = *(a2 - 16);
      if (v37 <= v38)
      {
        if (v39 > v37)
        {
          v42 = *v36;
          *v36 = *(a2 - 24);
          *(a2 - 24) = v42;
          v43 = *(v36 + 4);
          *(v36 + 4) = *(a2 - 20);
          *(a2 - 20) = v43;
          *(v36 + 8) = v39;
          *(a2 - 16) = v37;
          v44 = *(v36 + 8);
          v45 = *(v8 + 20);
          if (v44 > v45)
          {
            v46 = *(v8 + 12);
            *(v8 + 12) = *v36;
            *v36 = v46;
            v47 = *(v8 + 16);
            *(v8 + 16) = *(v36 + 4);
            *(v36 + 4) = v47;
            *(v8 + 20) = v44;
            *(v36 + 8) = v45;
          }
        }
      }

      else
      {
        v40 = *(v8 + 12);
        if (v39 > v37)
        {
          *(v8 + 12) = *(a2 - 24);
          *(a2 - 24) = v40;
          v41 = *(v8 + 16);
          *(v8 + 16) = *(a2 - 20);
          *(a2 - 20) = v41;
          *(v8 + 20) = v39;
          goto LABEL_39;
        }

        *(v8 + 12) = *v36;
        *v36 = v40;
        v51 = *(v8 + 16);
        *(v8 + 16) = *(v36 + 4);
        *(v36 + 4) = v51;
        *(v8 + 20) = v37;
        *(v36 + 8) = v38;
        v52 = *(a2 - 16);
        if (v52 > v38)
        {
          v53 = *v36;
          *v36 = *(a2 - 24);
          *(a2 - 24) = v53;
          v54 = *(v36 + 4);
          *(v36 + 4) = *(a2 - 20);
          *(a2 - 20) = v54;
          *(v36 + 8) = v52;
LABEL_39:
          *(a2 - 16) = v38;
        }
      }

      v55 = v8 + 12 * v11;
      v56 = v55 + 12;
      v57 = *(v55 + 20);
      v58 = *(v8 + 32);
      v59 = *(a2 - 28);
      if (v57 <= v58)
      {
        if (v59 > v57)
        {
          v62 = *v56;
          *v56 = *(a2 - 36);
          *(a2 - 36) = v62;
          v63 = *(v56 + 4);
          *(v56 + 4) = *(a2 - 32);
          *(a2 - 32) = v63;
          *(v56 + 8) = v59;
          *(a2 - 28) = v57;
          v64 = *(v56 + 8);
          v65 = *(v8 + 32);
          if (v64 > v65)
          {
            v66 = *(v8 + 24);
            *(v8 + 24) = *v56;
            *v56 = v66;
            v67 = *(v8 + 28);
            *(v8 + 28) = *(v56 + 4);
            *(v56 + 4) = v67;
            *(v8 + 32) = v64;
            *(v56 + 8) = v65;
          }
        }
      }

      else
      {
        v60 = *(v8 + 24);
        if (v59 > v57)
        {
          *(v8 + 24) = *(a2 - 36);
          *(a2 - 36) = v60;
          v61 = *(v8 + 28);
          *(v8 + 28) = *(a2 - 32);
          *(a2 - 32) = v61;
          *(v8 + 32) = v59;
          goto LABEL_48;
        }

        *(v8 + 24) = *v56;
        *v56 = v60;
        v68 = *(v8 + 28);
        *(v8 + 28) = *(v56 + 4);
        *(v56 + 4) = v68;
        *(v8 + 32) = v57;
        *(v56 + 8) = v58;
        v69 = *(a2 - 28);
        if (v69 > v58)
        {
          v70 = *v56;
          *v56 = *(a2 - 36);
          *(a2 - 36) = v70;
          v71 = *(v56 + 4);
          *(v56 + 4) = *(a2 - 32);
          *(a2 - 32) = v71;
          *(v56 + 8) = v69;
LABEL_48:
          *(a2 - 28) = v58;
        }
      }

      v72 = *(v12 + 8);
      v73 = *(v36 + 8);
      v74 = *(v56 + 8);
      if (v72 <= v73)
      {
        v75 = *v12;
        if (v74 <= v72)
        {
LABEL_55:
          v73 = v72;
        }

        else
        {
          v77 = *(v12 + 4);
          v78 = *v56;
          v79 = *(v56 + 4);
          *v12 = *v56;
          *(v12 + 4) = v79;
          *v56 = v75;
          *(v56 + 4) = v77;
          *(v12 + 8) = v74;
          *(v56 + 8) = v72;
          if (v74 <= v73)
          {
            v73 = v74;
            v75 = v78;
          }

          else
          {
            v80 = *v36;
            *v36 = v78;
            *(v36 + 4) = v79;
            *v12 = v80;
            *(v36 + 8) = v74;
            *(v12 + 8) = v73;
            v75 = *&v80;
          }
        }
      }

      else
      {
        v75 = *v36;
        v76 = *(v36 + 4);
        if (v74 > v72)
        {
          *v36 = *v56;
          *v56 = v75;
          *(v56 + 4) = v76;
          *(v36 + 8) = v74;
          *(v56 + 8) = v73;
          v75 = *v12;
          goto LABEL_55;
        }

        *v36 = *v12;
        *v12 = v75;
        *(v12 + 4) = v76;
        *(v36 + 8) = v72;
        *(v12 + 8) = v73;
        if (v74 > v73)
        {
          v100 = *v56;
          *v12 = *v56;
          *v56 = v75;
          *(v56 + 4) = v76;
          *(v12 + 8) = v74;
          *(v56 + 8) = v73;
          v75 = *&v100;
          v73 = v74;
        }
      }

      v81 = *(v12 + 4);
      v82 = *v8;
      *v8 = v75;
      *(v8 + 4) = v81;
      *v12 = v82;
      LODWORD(v82) = *(v8 + 8);
      *(v8 + 8) = v73;
      *(v12 + 8) = v82;
      goto LABEL_57;
    }

    v18 = *(v8 + 8);
    v19 = *(v12 + 8);
    if (v18 <= v19)
    {
      if (v13 > v18)
      {
        v27 = *v8;
        *v8 = *(a2 - 12);
        *(a2 - 12) = v27;
        v28 = *(v8 + 4);
        *(v8 + 4) = *(a2 - 8);
        *(a2 - 8) = v28;
        *(v8 + 8) = v13;
        *(a2 - 4) = v18;
        v29 = *(v8 + 8);
        v30 = *(v12 + 8);
        if (v29 > v30)
        {
          v31 = *v12;
          *v12 = *v8;
          *v8 = v31;
          *(v12 + 8) = v29;
          *(v8 + 8) = v30;
        }
      }

      goto LABEL_57;
    }

    v20 = *v12;
    if (v13 > v18)
    {
      *v12 = *(a2 - 12);
      *(a2 - 12) = v20;
      v21 = *(v12 + 4);
      *(v12 + 4) = *(a2 - 8);
      *(a2 - 8) = v21;
      *(v12 + 8) = v13;
LABEL_36:
      *(a2 - 4) = v19;
      goto LABEL_57;
    }

    v48 = *(v12 + 4);
    *v12 = *v8;
    *v8 = v20;
    *(v8 + 4) = v48;
    *(v12 + 8) = v18;
    *(v8 + 8) = v19;
    v49 = *(a2 - 4);
    if (v49 > v19)
    {
      *v8 = *(a2 - 12);
      *(a2 - 12) = v20;
      v50 = *(v8 + 4);
      *(v8 + 4) = *(a2 - 8);
      *(a2 - 8) = v50;
      *(v8 + 8) = v49;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v83 = *v8;
      v84 = *(v8 + 8);
LABEL_60:
      v85 = *(v8 + 4);
      v86 = v8;
      do
      {
        v87 = v86;
        v86 += 12;
      }

      while (*(v87 + 20) > v84);
      v88 = a2;
      if (v87 == v8)
      {
        v91 = a2;
        while (v86 < v91)
        {
          v89 = (v91 - 12);
          v92 = *(v91 - 4);
          v91 -= 12;
          if (v92 > v84)
          {
            goto LABEL_70;
          }
        }

        v89 = v91;
      }

      else
      {
        do
        {
          v89 = (v88 - 12);
          v90 = *(v88 - 4);
          v88 -= 12;
        }

        while (v90 <= v84);
      }

LABEL_70:
      v8 = v86;
      if (v86 < v89)
      {
        v93 = v89;
        do
        {
          v94 = *v8;
          *v8 = *v93;
          *v93 = v94;
          v95 = *(v8 + 4);
          *(v8 + 4) = v93[1];
          *(v93 + 1) = v95;
          v96 = *(v8 + 8);
          *(v8 + 8) = v93[2];
          *(v93 + 2) = v96;
          do
          {
            v97 = *(v8 + 20);
            v8 += 12;
          }

          while (v97 > v84);
          do
          {
            v98 = *(v93 - 1);
            v93 -= 3;
          }

          while (v98 <= v84);
        }

        while (v8 < v93);
      }

      if (v8 - 12 != v7)
      {
        *v7 = *(v8 - 12);
        *(v7 + 4) = *(v8 - 8);
        *(v7 + 8) = *(v8 - 4);
      }

      *(v8 - 12) = v83;
      *(v8 - 8) = v85;
      *(v8 - 4) = v84;
      if (v86 < v89)
      {
        goto LABEL_81;
      }

      v99 = sub_2614DF040(v7, v8 - 12);
      result = sub_2614DF040(v8, a2);
      if (result)
      {
        a2 = v8 - 12;
        if (v99)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v99)
      {
LABEL_81:
        result = sub_2614DE13C(v7, v8 - 12, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v84 = *(v8 + 8);
      v83 = *v8;
      if (*(v8 - 4) > v84)
      {
        goto LABEL_60;
      }

      if (v84 <= *(a2 - 4))
      {
        v103 = v8 + 12;
        do
        {
          v8 = v103;
          if (v103 >= a2)
          {
            break;
          }

          v104 = *(v103 + 8);
          v103 += 12;
        }

        while (v84 <= v104);
      }

      else
      {
        v101 = v8;
        do
        {
          v8 = v101 + 12;
          v102 = *(v101 + 20);
          v101 += 12;
        }

        while (v84 <= v102);
      }

      v105 = a2;
      if (v8 < a2)
      {
        v106 = a2;
        do
        {
          v105 = (v106 - 12);
          v107 = *(v106 - 4);
          v106 -= 12;
        }

        while (v84 > v107);
      }

      v108 = *(v7 + 4);
      while (v8 < v105)
      {
        v109 = *v8;
        *v8 = *v105;
        *v105 = v109;
        v110 = *(v8 + 4);
        *(v8 + 4) = v105[1];
        *(v105 + 1) = v110;
        v111 = *(v8 + 8);
        *(v8 + 8) = v105[2];
        *(v105 + 2) = v111;
        do
        {
          v112 = *(v8 + 20);
          v8 += 12;
        }

        while (v84 <= v112);
        do
        {
          v113 = *(v105 - 1);
          v105 -= 3;
        }

        while (v84 > v113);
      }

      if (v8 - 12 != v7)
      {
        *v7 = *(v8 - 12);
        *(v7 + 4) = *(v8 - 8);
        *(v7 + 8) = *(v8 - 4);
      }

      a4 = 0;
      *(v8 - 12) = v83;
      *(v8 - 8) = v108;
      *(v8 - 4) = v84;
    }
  }

  v131 = *(v8 + 20);
  v132 = *(v8 + 8);
  v133 = *(a2 - 4);
  if (v131 <= v132)
  {
    if (v133 <= v131)
    {
      return result;
    }

    v179 = *(v8 + 12);
    *(v8 + 12) = *(a2 - 12);
    *(a2 - 12) = v179;
    v180 = *(v8 + 16);
    *(v8 + 16) = *(a2 - 8);
    *(a2 - 8) = v180;
    *(v8 + 20) = v133;
    *(a2 - 4) = v131;
    v118 = *(v8 + 20);
    v125 = *(v8 + 8);
    if (v118 <= v125)
    {
      return result;
    }

    v181 = *v8;
    *v8 = *(v8 + 12);
    *(v8 + 12) = v181;
LABEL_175:
    *(v8 + 8) = v118;
    *(v8 + 20) = v125;
    return result;
  }

  v134 = *v8;
  if (v133 <= v131)
  {
    v189 = *(v8 + 4);
    *v8 = *(v8 + 12);
    *(v8 + 12) = v134;
    *(v8 + 16) = v189;
    *(v8 + 8) = v131;
    *(v8 + 20) = v132;
    v190 = *(a2 - 4);
    if (v190 <= v132)
    {
      return result;
    }

    *(v8 + 12) = *(a2 - 12);
    *(a2 - 12) = v134;
    v191 = *(v8 + 16);
    *(v8 + 16) = *(a2 - 8);
    *(a2 - 8) = v191;
    *(v8 + 20) = v190;
  }

  else
  {
    *v8 = *(a2 - 12);
    *(a2 - 12) = v134;
    v135 = *(v8 + 4);
    *(v8 + 4) = *(a2 - 8);
    *(a2 - 8) = v135;
    *(v8 + 8) = v133;
  }

  *(a2 - 4) = v132;
  return result;
}

float *sub_2614DEE80(float *result, float *a2, float *a3, float *a4)
{
  v4 = a2[2];
  v5 = result[2];
  v6 = a3[2];
  if (v4 <= v5)
  {
    if (v6 <= v4)
    {
      v4 = a3[2];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      v10 = *(a2 + 1);
      a2[1] = a3[1];
      *(a3 + 1) = v10;
      a2[2] = v6;
      a3[2] = v4;
      v11 = a2[2];
      v12 = result[2];
      if (v11 > v12)
      {
        v13 = *result;
        *result = *a2;
        *a2 = v13;
        v14 = *(result + 1);
        result[1] = a2[1];
        *(a2 + 1) = v14;
        result[2] = v11;
        a2[2] = v12;
        v4 = a3[2];
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 > v4)
    {
      *result = *a3;
      *a3 = v7;
      v8 = *(result + 1);
      result[1] = a3[1];
      *(a3 + 1) = v8;
      result[2] = v6;
LABEL_9:
      a3[2] = v5;
      v4 = v5;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v7;
    v15 = *(result + 1);
    result[1] = a2[1];
    *(a2 + 1) = v15;
    result[2] = v4;
    a2[2] = v5;
    v4 = a3[2];
    if (v4 > v5)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *(a2 + 1);
      a2[1] = a3[1];
      *(a3 + 1) = v17;
      a2[2] = v4;
      goto LABEL_9;
    }
  }

LABEL_11:
  v18 = a4[2];
  if (v18 > v4)
  {
    v19 = *a3;
    *a3 = *a4;
    *a4 = v19;
    v20 = *(a3 + 1);
    a3[1] = a4[1];
    *(a4 + 1) = v20;
    a3[2] = v18;
    a4[2] = v4;
    v21 = a3[2];
    v22 = a2[2];
    if (v21 > v22)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      a2[1] = a3[1];
      *(a3 + 1) = v24;
      a2[2] = v21;
      a3[2] = v22;
      v25 = a2[2];
      v26 = result[2];
      if (v25 > v26)
      {
        v27 = *result;
        *result = *a2;
        *a2 = v27;
        v28 = *(result + 1);
        result[1] = a2[1];
        *(a2 + 1) = v28;
        result[2] = v25;
        a2[2] = v26;
      }
    }
  }

  return result;
}

BOOL sub_2614DF040(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v22 = *(a1 + 20);
        v23 = *(a1 + 8);
        v24 = *(a2 - 4);
        if (v22 > v23)
        {
          v25 = *a1;
          if (v24 <= v22)
          {
            v41 = *(a1 + 4);
            *a1 = *(a1 + 12);
            *(a1 + 12) = v25;
            *(a1 + 16) = v41;
            *(a1 + 8) = v22;
            *(a1 + 20) = v23;
            v42 = *(a2 - 4);
            if (v42 <= v23)
            {
              return 1;
            }

            *(a1 + 12) = *(a2 - 12);
            *(a2 - 12) = v25;
            v43 = *(a1 + 16);
            *(a1 + 16) = *(a2 - 8);
            *(a2 - 8) = v43;
            *(a1 + 20) = v42;
          }

          else
          {
            *a1 = *(a2 - 12);
            *(a2 - 12) = v25;
            v26 = *(a1 + 4);
            *(a1 + 4) = *(a2 - 8);
            *(a2 - 8) = v26;
            *(a1 + 8) = v24;
          }

          *(a2 - 4) = v23;
          return 1;
        }

        if (v24 <= v22)
        {
          return 1;
        }

        v34 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 12);
        *(a2 - 12) = v34;
        v35 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 8);
        *(a2 - 8) = v35;
        *(a1 + 20) = v24;
        *(a2 - 4) = v22;
        v13 = *(a1 + 20);
        v20 = *(a1 + 8);
        if (v13 <= v20)
        {
          return 1;
        }

        v36 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 12) = v36;
        break;
      case 4:
        sub_2614DEE80(a1, (a1 + 12), (a1 + 24), (a2 - 12));
        return 1;
      case 5:
        sub_2614DEE80(a1, (a1 + 12), (a1 + 24), (a1 + 36));
        v9 = *(a2 - 4);
        v10 = *(a1 + 44);
        if (v9 <= v10)
        {
          return 1;
        }

        v11 = *(a1 + 36);
        *(a1 + 36) = *(a2 - 12);
        *(a2 - 12) = v11;
        v12 = *(a1 + 40);
        *(a1 + 40) = *(a2 - 8);
        *(a2 - 8) = v12;
        *(a1 + 44) = v9;
        *(a2 - 4) = v10;
        v13 = *(a1 + 44);
        v14 = *(a1 + 32);
        if (v13 <= v14)
        {
          return 1;
        }

        v15 = *(a1 + 36);
        v16 = *(a1 + 40);
        v17 = *(a1 + 24);
        *(a1 + 24) = v15;
        *(a1 + 28) = v16;
        *(a1 + 36) = v17;
        *(a1 + 32) = v13;
        *(a1 + 44) = v14;
        v18 = *(a1 + 20);
        if (v13 <= v18)
        {
          return 1;
        }

        v19 = *(a1 + 12);
        *(a1 + 12) = v15;
        *(a1 + 16) = v16;
        *(a1 + 24) = v19;
        *(a1 + 20) = v13;
        *(a1 + 32) = v18;
        v20 = *(a1 + 8);
        if (v13 <= v20)
        {
          return 1;
        }

        v21 = *a1;
        *a1 = v15;
        *(a1 + 4) = v16;
        *(a1 + 12) = v21;
        break;
      default:
        goto LABEL_17;
    }

    *(a1 + 8) = v13;
    *(a1 + 20) = v20;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 4);
    v6 = *(a1 + 8);
    if (v5 > v6)
    {
      v7 = *a1;
      *a1 = *(a2 - 12);
      *(a2 - 12) = v7;
      v8 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 8);
      *(a2 - 8) = v8;
      *(a1 + 8) = v5;
      *(a2 - 4) = v6;
    }

    return 1;
  }

LABEL_17:
  v27 = *(a1 + 20);
  v28 = (a1 + 8);
  v29 = *(a1 + 8);
  v30 = (a1 + 32);
  v31 = *(a1 + 32);
  if (v27 > v29)
  {
    v33 = *a1;
    v32 = *(a1 + 4);
    if (v31 <= v27)
    {
      *a1 = *(a1 + 12);
      *(a1 + 12) = v33;
      *(a1 + 16) = v32;
      *(a1 + 8) = v27;
      *(a1 + 20) = v29;
      if (v31 <= v29)
      {
        goto LABEL_34;
      }

      *(a1 + 12) = *(a1 + 24);
      *(a1 + 24) = v33;
      *(a1 + 28) = v32;
      v28 = (a1 + 20);
    }

    else
    {
      *a1 = *(a1 + 24);
      *(a1 + 24) = v33;
      *(a1 + 28) = v32;
    }

    goto LABEL_33;
  }

  if (v31 > v27)
  {
    v37 = *(a1 + 24);
    v38 = *(a1 + 28);
    v39 = *(a1 + 12);
    *(a1 + 12) = v37;
    *(a1 + 16) = v38;
    *(a1 + 24) = v39;
    *(a1 + 20) = v31;
    *(a1 + 32) = v27;
    if (v31 > v29)
    {
      v40 = *a1;
      *a1 = v37;
      *(a1 + 4) = v38;
      *(a1 + 12) = v40;
      v30 = (a1 + 20);
LABEL_33:
      *v28 = v31;
      *v30 = v29;
    }
  }

LABEL_34:
  v44 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  v47 = a1 + 24;
  while (1)
  {
    v48 = *(v44 + 8);
    if (v48 > *(v47 + 8))
    {
      v49 = *v44;
      v50 = v45;
      while (1)
      {
        v51 = a1 + v50;
        v52 = *(a1 + v50 + 28);
        *(v51 + 36) = *(a1 + v50 + 24);
        *(v51 + 40) = v52;
        *(v51 + 44) = *(a1 + v50 + 32);
        if (v50 == -24)
        {
          break;
        }

        v50 -= 12;
        if (v48 <= *(v51 + 20))
        {
          v53 = a1 + v50 + 36;
          goto LABEL_42;
        }
      }

      v53 = a1;
LABEL_42:
      *v53 = v49;
      *(v53 + 8) = v48;
      if (++v46 == 8)
      {
        return v44 + 12 == a2;
      }
    }

    v47 = v44;
    v45 += 12;
    v44 += 12;
    if (v44 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_2614DF3EC(uint64_t a1, atomic_uint **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_2614709BC();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 2 > v3)
  {
    v3 = v5 >> 2;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_261470E48(v6);
  }

  v7 = (8 * v2);
  *(&v16 + 1) = 0;
  v8 = *a2;
  *v7 = 0;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
    if (*v7)
    {
      sub_2614705CC(*v7);
    }
  }

  *v7 = v8;
  *&v16 = v7 + 1;
  v9 = *(a1 + 8);
  v10 = (v7 + *a1 - v9);
  sub_26148F478(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v16;
  *(a1 + 8) = v16;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v15[0] = v11;
  v15[1] = v11;
  sub_26148F554(v15);
  return v14;
}

uint64_t sub_2614DF4F8(uint64_t result)
{
  v1 = *(result + 28) * *(result + 24);
  v2 = *(result + 124);
  v3 = *(result + 120);
  v4 = fmaxf(v3 - v1, 0.0);
  v5 = *(result + 48);
  v6 = v1 + v3;
  if (v6 >= (*(result + 40) + -1.0))
  {
    v6 = *(result + 40) + -1.0;
  }

  *(result + 128) = v4;
  *(result + 132) = v6;
  v7 = fmaxf(v2 - v1, 0.0);
  v8 = v1 + v2;
  if (v8 >= (v5 + -1.0))
  {
    v8 = v5 + -1.0;
  }

  *(result + 136) = v7;
  *(result + 140) = v8;
  return result;
}

uint64_t sub_2614DF56C(uint64_t result, int32x4_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v80 = a2[-1];
        v81 = *v8;
        if (vmovn_s32(vcgtq_s32(*v8, v80)).i32[1])
        {
          *v8 = v80;
          a2[-1] = v81;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v86 = v8 + 1;
      v87 = v8[1];
      v88 = v8 + 2;
      v89 = v8[2];
      v90 = *v8;
      v91 = v8->i64[1];
      v92 = v8[2].i64[1];
      if (v87.i32[2] >= v91)
      {
        if (v92 < v87.i32[2])
        {
          *v86 = v89;
          *v88 = v87;
          if (v92 < v91)
          {
            *v8 = v89;
            v133 = v8 + 1;
            goto LABEL_192;
          }

LABEL_193:
          v89 = v87;
        }
      }

      else
      {
        if (v92 < v87.i32[2])
        {
          *v8 = v89;
          goto LABEL_191;
        }

        *v8 = v87;
        v8[1] = v90;
        if (v92 < v91)
        {
          *v86 = v89;
LABEL_191:
          v133 = v8 + 2;
          v87 = v90;
LABEL_192:
          *v133 = v90;
          goto LABEL_193;
        }
      }

      v140 = a2[-1];
      if ((vmovn_s32(vcgtq_s32(v89, v140)).i32[1] & 1) == 0)
      {
        return result;
      }

      *v88 = v140;
      a2[-1] = v89;
      v132 = *v88;
      v141 = *v86;
      goto LABEL_206;
    }

    if (v9 == 5)
    {
      v71 = v8 + 1;
      v72 = v8[1];
      v73 = v8 + 2;
      v74 = v8[2];
      v75 = *v8;
      v76 = v8->i64[1];
      v77 = v8[2].i64[1];
      if (v72.i32[2] >= v76)
      {
        if (v77 >= v72.i32[2])
        {
          v138 = *v8;
          v75 = v8[1];
        }

        else
        {
          *v71 = v74;
          *v73 = v72;
          if (v77 < v76)
          {
            *v8 = v74;
            v78 = v8 + 1;
            v79 = v75;
            goto LABEL_183;
          }

          v138 = v75;
          v75 = v74;
LABEL_184:
          v74 = v72;
        }
      }

      else
      {
        if (v77 < v72.i32[2])
        {
          *v8 = v74;
          v78 = v8 + 2;
          v79 = v72;
          goto LABEL_182;
        }

        *v8 = v72;
        v8[1] = v75;
        if (v77 < v76)
        {
          v79 = v74;
          *v71 = v74;
          v78 = v8 + 2;
          v74 = v72;
LABEL_182:
          v72 = v75;
LABEL_183:
          *v78 = v75;
          v138 = v74;
          v75 = v79;
          goto LABEL_184;
        }

        v138 = v72;
      }

      v142 = v8[3];
      if (vmovn_s32(vcgtq_s32(v74, v142)).i32[1])
      {
        v8[2] = v142;
        v8[3] = v74;
        if (vmovn_s32(vcgtq_s32(v75, v142)).i32[1])
        {
          *v71 = v142;
          *v73 = v75;
          if (vmovn_s32(vcgtq_s32(v138, v142)).i32[1])
          {
            *v8 = v142;
            v8[1] = v138;
          }
        }
      }

      else
      {
        v74 = v8[3];
      }

      v143 = a2[-1];
      if ((vmovn_s32(vcgtq_s32(v74, v143)).i32[1] & 1) == 0)
      {
        return result;
      }

      v8[3] = v143;
      a2[-1] = v74;
      v144 = v8[2];
      v132 = v8[3];
      if ((vmovn_s32(vcgtq_s32(v144, v132)).i32[1] & 1) == 0)
      {
        return result;
      }

      v8[2] = v132;
      v8[3] = v144;
      v141 = v8[1];
LABEL_206:
      if ((vmovn_s32(vcgtq_s32(v141, v132)).i32[1] & 1) == 0)
      {
        return result;
      }

      v8[1] = v132;
      v8[2] = v141;
LABEL_208:
      v145 = *v8;
      if (vmovn_s32(vcgtq_s32(*v8, v132)).i32[1])
      {
        *v8 = v132;
        v8[1] = v145;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v93 = v8 + 1;
      v95 = v8 == a2 || v93 == a2;
      if (a4)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v8;
          do
          {
            v98 = v97[1];
            v99 = v97->i32[2];
            v97 = v93;
            if (v98.i32[2] < v99)
            {
              v100 = v96;
              while (1)
              {
                *(&v8[1] + v100) = *(v8 + v100);
                if (!v100)
                {
                  break;
                }

                v101 = *(&v8->i32[-2] + v100);
                v100 -= 16;
                if (v98.i32[2] >= v101)
                {
                  v102 = (v8 + v100 + 16);
                  goto LABEL_132;
                }
              }

              v102 = v8;
LABEL_132:
              *v102 = v98;
            }

            v93 = v97 + 1;
            v96 += 16;
          }

          while (&v97[1] != a2);
        }
      }

      else if (!v95)
      {
        do
        {
          v134 = v7[1];
          v135 = v7->i32[2];
          v7 = v93;
          if (v134.i32[2] < v135)
          {
            do
            {
              v136 = v93;
              v137 = v93[-1];
              --v93;
              *v136 = v137;
            }

            while (v134.i32[2] < v136[-2].i32[2]);
            *v93 = v134;
          }

          v93 = v7 + 1;
        }

        while (&v7[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v103 = (v9 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v106 = (2 * v104) | 1;
            v107 = &v8[v106];
            if (2 * v105 + 2 < v9)
            {
              v108 = v107->i32[2];
              v109 = v107[1].i32[2];
              v107 += v108 < v109;
              if (v108 < v109)
              {
                v106 = 2 * v105 + 2;
              }
            }

            v110 = &v8[v105];
            v111 = *v110;
            v112 = v110->i64[1];
            if (v107->i32[2] >= v112)
            {
              do
              {
                v113 = v107;
                *v110 = *v107;
                if (v103 < v106)
                {
                  break;
                }

                v114 = (2 * v106) | 1;
                v107 = &v8[v114];
                v115 = 2 * v106 + 2;
                if (v115 < v9)
                {
                  v116 = v107->i32[2];
                  v117 = v107[1].i32[2];
                  v107 += v116 < v117;
                  if (v116 < v117)
                  {
                    v114 = v115;
                  }
                }

                v110 = v113;
                v106 = v114;
              }

              while (v107->i32[2] >= v112);
              *v113 = v111;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          v118 = 0;
          v119 = *v8;
          v120 = v8;
          do
          {
            v121 = &v120[v118];
            v122 = v121 + 1;
            v123 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 >= v9)
            {
              v118 = v123;
            }

            else if (v121[1].i32[2] >= v121[2].i32[2])
            {
              v118 = v123;
            }

            else
            {
              v122 = v121 + 2;
            }

            *v120 = *v122;
            v120 = v122;
          }

          while (v118 <= ((v9 - 2) >> 1));
          if (v122 == --a2)
          {
            *v122 = v119;
          }

          else
          {
            *v122 = *a2;
            *a2 = v119;
            v124 = (v122 - v8 + 16) >> 4;
            v125 = v124 < 2;
            v126 = v124 - 2;
            if (!v125)
            {
              v127 = v126 >> 1;
              v128 = &v8[v127];
              v129 = *v122;
              v130 = v122->i64[1];
              if (v128->i32[2] < v130)
              {
                do
                {
                  v131 = v128;
                  *v122 = *v128;
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = &v8[v127];
                  v122 = v131;
                }

                while (v128->i32[2] < v130);
                *v131 = v129;
              }
            }
          }

          v125 = v9-- <= 2;
        }

        while (!v125);
      }

      return result;
    }

    v10 = v9 >> 1;
    v11 = &v8[v9 >> 1];
    v12 = v11;
    v13 = a2[-1];
    v14 = a2[-1].i64[1];
    if (v9 >= 0x81)
    {
      v15 = *v11;
      v16 = *v8;
      v17 = v11->i64[1];
      if (vmovn_s32(vcgtq_s32(*v8, *v11)).i32[1])
      {
        if (v14 < v17)
        {
          *v8 = v13;
          goto LABEL_27;
        }

        *v8 = v15;
        *v11 = v16;
        v23 = a2[-1];
        if (vmovn_s32(vcgtq_s32(v16, v23)).i32[1])
        {
          *v11 = v23;
LABEL_27:
          a2[-1] = v16;
        }
      }

      else if (v14 < v17)
      {
        *v11 = v13;
        a2[-1] = v15;
        v21 = *v8;
        if (vmovn_s32(vcgtq_s32(*v8, *v11)).i32[1])
        {
          *v8 = *v11;
          *v11 = v21;
        }
      }

      v24 = v10 - 1;
      v25 = v8[v10 - 1];
      v26 = v8[1];
      v27 = a2[-2];
      v28 = vmovn_s32(vcgtq_s32(v25, v27)).i8[4];
      if (vmovn_s32(vcgtq_s32(v26, v25)).i32[1])
      {
        if (v28)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v25;
        v8[v24] = v26;
        v32 = a2[-2];
        if (vmovn_s32(vcgtq_s32(v26, v32)).i32[1])
        {
          v8[v24] = v32;
LABEL_39:
          a2[-2] = v26;
        }
      }

      else if (v28)
      {
        v8[v24] = v27;
        a2[-2] = v25;
        v29 = v8[v24];
        v30 = v8[1];
        if (vmovn_s32(vcgtq_s32(v30, v29)).i32[1])
        {
          v8[1] = v29;
          v8[v24] = v30;
        }
      }

      v34 = v11[1];
      v33 = v11 + 1;
      v35 = v34;
      v36 = v8[2];
      v37 = a2[-3];
      v38 = vmovn_s32(vcgtq_s32(v34, v37)).i8[4];
      if (vmovn_s32(vcgtq_s32(v36, v34)).i32[1])
      {
        if (v38)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v35;
        *v33 = v36;
        v40 = a2[-3];
        if (vmovn_s32(vcgtq_s32(v36, v40)).i32[1])
        {
          *v33 = v40;
LABEL_48:
          a2[-3] = v36;
        }
      }

      else if (v38)
      {
        *v33 = v37;
        a2[-3] = v35;
        v39 = v8[2];
        if (vmovn_s32(vcgtq_s32(v39, *v33)).i32[1])
        {
          v8[2] = *v33;
          *v33 = v39;
        }
      }

      v41 = *v12;
      v42 = v8[v24];
      v43 = v12->i64[1];
      v44 = *v33;
      v45 = v33->i64[1];
      if (v43 >= v42.i32[2])
      {
        if (v45 < v43)
        {
          *v12 = v44;
          *v33 = v41;
          if (v45 < v42.i32[2])
          {
            v8[v24] = v44;
            v33 = v12;
            v41 = v42;
            goto LABEL_57;
          }

          v41 = v44;
        }
      }

      else
      {
        if (v45 < v43)
        {
          v8[v24] = v44;
          goto LABEL_57;
        }

        v8[v24] = v41;
        *v12 = v42;
        if (v45 >= v42.i32[2])
        {
          v41 = v42;
        }

        else
        {
          *v12 = v44;
          v41 = v44;
LABEL_57:
          *v33 = v42;
        }
      }

      v46 = *v8;
      *v8 = v41;
      *v12 = v46;
      goto LABEL_59;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = v8->i64[1];
    if ((vmovn_s32(vcgtq_s32(*v11, *v8)).i32[1] & 1) == 0)
    {
      if (v14 < v20)
      {
        *v8 = v13;
        a2[-1] = v18;
        v22 = *v11;
        if (vmovn_s32(vcgtq_s32(*v11, *v8)).i32[1])
        {
          *v11 = *v8;
          *v8 = v22;
        }
      }

      goto LABEL_59;
    }

    if (v14 < v20)
    {
      *v11 = v13;
LABEL_36:
      a2[-1] = v19;
      goto LABEL_59;
    }

    *v11 = v18;
    *v8 = v19;
    v31 = a2[-1];
    if (vmovn_s32(vcgtq_s32(v19, v31)).i32[1])
    {
      *v8 = v31;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v47 = *v8;
LABEL_62:
      v48 = v8;
      do
      {
        v49 = v48++;
      }

      while (v49[1].i32[2] < v47.i32[2]);
      v50 = a2;
      if (v49 == v8)
      {
        v53 = a2;
        while (v48 < v53)
        {
          v51 = v53 - 1;
          v54 = v53[-1].i32[2];
          --v53;
          if (v54 < v47.i32[2])
          {
            goto LABEL_72;
          }
        }

        v51 = v53;
      }

      else
      {
        do
        {
          v51 = v50 - 1;
          v52 = v50[-1].i32[2];
          --v50;
        }

        while (v52 >= v47.i32[2]);
      }

LABEL_72:
      if (v48 < v51)
      {
        v55 = v48;
        v56 = v51;
        do
        {
          v57 = *v55;
          *v55 = *v56;
          *v56 = v57;
          do
          {
            v49 = v55++;
          }

          while (v49[1].i32[2] < v47.i32[2]);
          do
          {
            v58 = v56[-1].i32[2];
            --v56;
          }

          while (v58 >= v47.i32[2]);
        }

        while (v55 < v56);
      }

      if (v49 != v8)
      {
        *v8 = *v49;
      }

      *v49 = v47;
      if (v48 < v51)
      {
        goto LABEL_83;
      }

      v59 = sub_261472D6C(v8, v49);
      v8 = v49 + 1;
      result = sub_261472D6C(v49 + 1, a2);
      if (result)
      {
        a2 = v49;
        if (!v59)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v59)
      {
LABEL_83:
        result = sub_2614DF56C(v7, v49, a3, a4 & 1);
        a4 = 0;
        v8 = v49 + 1;
      }
    }

    else
    {
      v47 = *v8;
      if (v8[-1].i32[2] < v8->i32[2])
      {
        goto LABEL_62;
      }

      if (v47.i32[2] >= a2[-1].i32[2])
      {
        v62 = &v8[1];
        do
        {
          v8 = v62;
          if (v62 >= a2)
          {
            break;
          }

          v63 = *(v62 + 8);
          v62 += 16;
        }

        while (v47.i32[2] >= v63);
      }

      else
      {
        v60 = v8;
        do
        {
          v8 = v60 + 1;
          v61 = v60[1].i32[2];
          ++v60;
        }

        while (v47.i32[2] >= v61);
      }

      v64 = a2;
      if (v8 < a2)
      {
        v65 = a2;
        do
        {
          v64 = v65 - 1;
          v66 = v65[-1].i32[2];
          --v65;
        }

        while (v47.i32[2] < v66);
      }

      while (v8 < v64)
      {
        v67 = *v8;
        *v8 = *v64;
        *v64 = v67;
        do
        {
          v68 = v8[1].i32[2];
          ++v8;
        }

        while (v47.i32[2] >= v68);
        do
        {
          v69 = v64[-1].i32[2];
          --v64;
        }

        while (v47.i32[2] < v69);
      }

      v70 = v8 - 1;
      if (&v8[-1] != v7)
      {
        *v7 = *v70;
      }

      a4 = 0;
      *v70 = v47;
    }
  }

  v82 = *v8;
  v83 = v8[1];
  v84 = a2[-1];
  v85 = vmovn_s32(vcgtq_s32(v83, v84)).i8[4];
  if ((vmovn_s32(vcgtq_s32(*v8, v83)).i32[1] & 1) == 0)
  {
    if ((v85 & 1) == 0)
    {
      return result;
    }

    v8[1] = v84;
    a2[-1] = v83;
    v132 = v8[1];
    goto LABEL_208;
  }

  if (v85)
  {
    *v8 = v84;
  }

  else
  {
    *v8 = v83;
    v8[1] = v82;
    v139 = a2[-1];
    if ((vmovn_s32(vcgtq_s32(v82, v139)).i32[1] & 1) == 0)
    {
      return result;
    }

    v8[1] = v139;
  }

  a2[-1] = v82;
  return result;
}

uint64_t sub_2614E0008(uint64_t a1, int a2, __n128 a3, int32x2_t a4)
{
  v4 = 0;
  if (a2 >= 1)
  {
    v6 = vcgtz_s32(a4);
    v7.i64[0] = v6.i32[0];
    v7.i64[1] = v6.i32[1];
    v8 = vbslq_s8(v7, xmmword_261560FA0, xmmword_261560F90);
    v9 = *(a1 + v8.i64[0]);
    v10 = *(a1 + v8.i64[1]);
    v11 = a3.n128_u32[0] == v9 || a3.n128_u32[1] == v10;
    v28 = a3;
    if (!v11)
    {
      v13 = *(a1 + 32);
      v14 = *(v13 + 3);
      v15 = sub_261470964(v14, a3.n128_i32[0], a3.n128_i32[1]);
      LODWORD(v4) = 0;
      v16 = *v13;
      v17 = v16 != v15;
      v18 = 1;
      do
      {
        v19.n128_u64[1] = v28.n128_u64[1];
        v19.n128_u64[0] = vadd_s32(v28.n128_u64[0], a4);
        v4 = (v4 + 1);
        v20 = v19.n128_u32[0];
        v21 = v19.n128_u32[1];
        v28 = v19;
        v22 = v16 != sub_261470964(v14, v19.n128_i32[0], v19.n128_i32[1]);
        v23 = (v17 ^ v22) & 1;
        if ((v17 ^ v22))
        {
          v17 = v22;
        }

        v18 -= v23;
        if (v18)
        {
          v24 = v4 < a2;
        }

        else
        {
          v24 = 0;
        }
      }

      while (v24 && v20 != v9 && v21 != v10);
    }
  }

  return v4;
}

uint64_t sub_2614E0130(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 128;
  if (a3 > 0)
  {
    v4 = 132;
  }

  v5 = *(a1 + v4);
  v6 = 136;
  if (a4 > 0)
  {
    v6 = 140;
  }

  v7 = *(a1 + v6);
  v8 = *(a1 + 124);
  v9 = *(a1 + 120);
  if (v9 == v5 || v8 == v7)
  {
LABEL_23:
    result = 0;
    *a2 = -1;
    return result;
  }

  v11 = v8;
  v12 = *(a1 + 32);
  v28 = *(v12 + 3);
  v13 = sub_261470964(v28, v9, v8);
  v14 = 0;
  v15 = 0;
  v16 = *(a1 + 13);
  v27 = *v12;
  v17 = v16 == (v27 != v13);
  v18 = v5 - (v9 + a3);
  v19 = v7 - (v11 + a4);
  while (1)
  {
    v20 = v19;
    v21 = v27 != sub_261470964(v28, v9 + a3, v11 + a4);
    v22 = v16 == v21;
    if ((v17 ^ v22))
    {
      v23 = 0;
    }

    else
    {
      v23 = v15;
    }

    if (((v17 ^ v22) & 1) == 0)
    {
      v22 = v17;
    }

    if (v16 == v21 || !v17)
    {
      v17 = v22;
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (v15 >= *(a1 + 20) && ++v14 == *(a1 + 16))
    {
      break;
    }

    v23 = 0;
    v17 = 0;
    if (!v18)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = v23 + 1;
    v18 -= a3;
    v19 = v20 - a4;
    v9 += a3;
    v11 += a4;
    if (!v20)
    {
      goto LABEL_23;
    }
  }

  *a2 = v9;
  *(a2 + 4) = v11;
  return 1;
}

uint64_t sub_2614E02E0(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = -v2;
  v4 = sub_2614E0130(a1, a1 + 56, -1, -v2);
  v5 = sub_2614E0130(a1, a1 + 64, v2, -1);
  v6 = v5 + sub_2614E0130(a1, a1 + 72, 1, v2) + v4;
  return v6 + sub_2614E0130(a1, a1 + 80, v3, 1);
}

uint64_t sub_2614E0378(uint64_t a1, int *a2, int a3, int a4)
{
  v4 = *a2;
  v5 = v4 + a3;
  if (*(a1 + 128) > v4 + a3)
  {
    return 0;
  }

  v6 = 0;
  v9 = a4;
  v10 = a3;
  do
  {
    if (v5 > *(a1 + 132))
    {
      break;
    }

    v11 = *(a1 + 32);
    v12 = a2[1];
    v13 = *(v11 + 3);
    v14 = sub_261470964(v13, v5, v12);
    v15 = *v11;
    v16 = *(a1 + 13);
    if (v16 != (v15 != v14))
    {
      break;
    }

    v4 += v10;
    *a2 = v4;
    v6 = (v6 + 1);
    if (*(a1 + 136) <= v12 + a4)
    {
      v17 = v9 + v12;
      do
      {
        if (v17 > *(a1 + 140))
        {
          break;
        }

        if (v16 != (v15 != sub_261470964(v13, v4, v17)))
        {
          break;
        }

        a2[1] = v17;
        v6 = (v6 + 1);
        v17 += v9;
      }

      while (v17 >= *(a1 + 136));
    }

    v5 = v4 + v10;
  }

  while (v4 + v10 >= *(a1 + 128));
  return v6;
}

uint64_t sub_2614E04B0(uint64_t a1, int *a2, int a3, int a4)
{
  v4 = a2[1];
  v5 = v4 + a4;
  if (*(a1 + 136) > v4 + a4)
  {
    return 0;
  }

  v6 = 0;
  v9 = a3;
  v10 = a4;
  do
  {
    if (v5 > *(a1 + 140))
    {
      break;
    }

    v11 = *(a1 + 32);
    v12 = *a2;
    v13 = *(v11 + 3);
    v14 = sub_261470964(v13, v12, v5);
    v15 = *v11;
    v16 = *(a1 + 13);
    if (v16 != (v15 != v14))
    {
      break;
    }

    v4 += v10;
    a2[1] = v4;
    v6 = (v6 + 1);
    if (*(a1 + 128) <= v12 + a3)
    {
      v17 = v9 + v12;
      do
      {
        if (v17 > *(a1 + 132))
        {
          break;
        }

        if (v16 != (v15 != sub_261470964(v13, v17, v4)))
        {
          break;
        }

        *a2 = v17;
        v6 = (v6 + 1);
        v17 += v9;
      }

      while (v17 >= *(a1 + 128));
    }

    v5 = v4 + v10;
  }

  while (v4 + v10 >= *(a1 + 136));
  return v6;
}

uint64_t sub_2614E05E8(uint64_t a1, int *a2, int a3, int a4)
{
  if (a3)
  {
    v6 = *a2;
    if (*(a1 + 128) <= v6 + a3)
    {
      v7 = 0;
      v8 = a2[1];
      v9 = a3;
      v10 = v6 + a3;
      do
      {
        if (v10 > *(a1 + 132))
        {
          break;
        }

        v11 = *(a1 + 32);
        if (*(a1 + 13) != (*v11 != sub_261470964(*(v11 + 3), v10, v8)))
        {
          break;
        }

        *a2 = v10;
        v7 = (v7 + 1);
        v10 += v9;
      }

      while (v10 >= *(a1 + 128));
      return v7;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  v12 = a2[1];
  if (*(a1 + 136) > v12 + a4)
  {
    return 0;
  }

  v7 = 0;
  v14 = *a2;
  v15 = a4;
  v16 = v12 + a4;
  do
  {
    if (v16 > *(a1 + 140))
    {
      break;
    }

    v17 = *(a1 + 32);
    if (*(a1 + 13) != (*v17 != sub_261470964(*(v17 + 3), v14, v16)))
    {
      break;
    }

    a2[1] = v16;
    v7 = (v7 + 1);
    v16 += v15;
  }

  while (v16 >= *(a1 + 136));
  return v7;
}

float sub_2614E072C(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v56 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x8000000080000000) != 0)
  {
    return NAN;
  }

  v7 = a3;
  v51 = a2;
  v9 = sub_2614E04B0;
  if (a3 == 1)
  {
    v9 = sub_2614E05E8;
  }

  if (a3 >= 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = sub_2614E0378;
  }

  v11 = a6;
  v12 = a7;
  v13 = &unk_280CB3000;
  v40 = a4;
  v41 = a5;
  v39 = v10;
  v10(a1, &v51, a4, a5);
  while (1)
  {
    if (v13[196] != -1)
    {
      dispatch_once(&qword_280CB3620, &unk_2873D0660);
    }

    log = qword_280CB3618;
    if (os_log_type_enabled(qword_280CB3618, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240448;
      v53 = v51;
      v54 = 1026;
      v55 = HIDWORD(v51);
      _os_log_debug_impl(&dword_26146F000, log, OS_LOG_TYPE_DEBUG, "(%{public}d, %{public}d)", buf, 0xEu);
    }

    if (v7 == 1)
    {
      v14 = 0;
      *(a1 + 8) = 0;
      if (!a6)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }

    v14 = *(a1 + 8);
    if (v7 > 1)
    {
      if ((v14 & 0x80000000) != 0)
      {
        break;
      }

LABEL_17:
      v15 = 0;
      v16 = *(a1 + 4);
      v37 = v51;
      v45 = v12 + SHIDWORD(v51);
      v47 = v51;
      v49 = v14;
      while (v16 < 1)
      {
LABEL_26:
        v22 = v15++ >= v49;
        if (v22)
        {
          v28 = v37;
          v7 = a3;
          goto LABEL_43;
        }
      }

      v17 = 0;
      v18 = v45;
      v19 = v47 + v15 * v11;
      v20 = *(a1 + 128);
      while (1)
      {
        if (v19 >= v20 && v19 <= *(a1 + 132) && v18 >= *(a1 + 136) && v18 <= *(a1 + 140))
        {
          v21 = *(a1 + 32);
          if (*(a1 + 13) == (*v21 != sub_261470964(*(v21 + 3), v19, v18)))
          {
            goto LABEL_42;
          }
        }

        ++v17;
        v18 += v12;
        if (v17 >= v16)
        {
          goto LABEL_26;
        }
      }
    }

    if ((v14 & 0x80000000) != 0)
    {
      break;
    }

LABEL_30:
    v23 = 0;
    v24 = *(a1 + 4);
    v38 = v51;
    v46 = v11 + v51;
    v48 = SHIDWORD(v51);
    v50 = v14;
    while (v24 < 1)
    {
LABEL_39:
      v22 = v23++ >= v50;
      if (v22)
      {
        v7 = a3;
        v28 = v38;
        goto LABEL_43;
      }
    }

    v25 = 0;
    v19 = v46;
    v18 = v48 + v23 * v12;
    v26 = *(a1 + 128);
    while (1)
    {
      if (v19 >= v26 && v19 <= *(a1 + 132) && v18 >= *(a1 + 136) && v18 <= *(a1 + 140))
      {
        v27 = *(a1 + 32);
        if (*(a1 + 13) == (*v27 != sub_261470964(*(v27 + 3), v19, v18)))
        {
          break;
        }
      }

      ++v25;
      v19 += v11;
      if (v25 >= v24)
      {
        goto LABEL_39;
      }
    }

LABEL_42:
    v51 = __PAIR64__(v18, v19);
    v7 = a3;
    v13 = &unk_280CB3000;
    v39(a1, &v51, v40, v41);
  }

  v28 = v51;
LABEL_43:
  if (v28 == *(a1 + 128))
  {
    return NAN;
  }

  if (v28 == *(a1 + 132))
  {
    return NAN;
  }

  v29 = HIDWORD(v51);
  if (HIDWORD(v51) == *(a1 + 136) || HIDWORD(v51) == *(a1 + 140))
  {
    return NAN;
  }

  if (v40 <= 0)
  {
    v31 = v28;
  }

  else
  {
    v31 = v28 + 1;
  }

  if (v41 > 0)
  {
    v29 = HIDWORD(v51) + 1;
  }

  v32 = a7 >> 31;
  if (v7 != 1)
  {
    v32 = 0;
  }

  v33 = v29 + v32;
  if (v7 == 1)
  {
    v34 = a6 >> 31;
  }

  else
  {
    v34 = 0;
  }

  v35 = v31 + v34;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    v53 = v35;
    v54 = 1026;
    v55 = v33;
    _os_log_debug_impl(&dword_26146F000, log, OS_LOG_TYPE_DEBUG, "(%{public}d, %{public}d)", buf, 0xEu);
  }

  return v35;
}

void sub_2614E0B60(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 1))
  {
    v8 = &unk_261570250 + 8 * a2;
  }

  else
  {
    v8 = &unk_261570270 + 8 * a2;
  }

  v10 = *v8;
  v9 = *(v8 + 1);
  if (*(a1 + 1))
  {
    v11 = 1;
  }

  else
  {
    v11 = ~(2 * a2) & 2;
  }

  if (qword_280CB3620 != -1)
  {
    dispatch_once(&qword_280CB3620, &unk_2873D0660);
  }

  v12 = qword_280CB3618;
  if (os_log_type_enabled(qword_280CB3618, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_26146F000, v12, OS_LOG_TYPE_DEBUG, "===== corner1 =====", buf, 2u);
  }

  *a3 = sub_2614E072C(a1, *(a1 + 56 + 8 * a2), v11, v10, v9, -v9, v10);
  *(a3 + 4) = v13;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *v16 = 0;
    _os_log_debug_impl(&dword_26146F000, v12, OS_LOG_TYPE_DEBUG, "===== corner2 =====", v16, 2u);
  }

  v14 = (a2 + 1) & 3;
  if (a2 + 1 <= 0)
  {
    v14 = -(-(a2 + 1) & 3);
  }

  *a4 = sub_2614E072C(a1, *(a1 + 56 + 8 * v14), 2 - v11, v10, v9, v9, -v10);
  *(a4 + 4) = v15;
}

uint64_t sub_2614E0CF8(uint64_t result, unint64_t *a2, uint64_t *a3, float32x2_t *a4, float32x4_t a5)
{
  a5.i64[0] = *a2;
  v5.i64[0] = 0;
  v6.i64[0] = 0;
  v6.i64[1] = *a2;
  v7 = vcgeq_f32(v6, a5);
  v8 = vcgtq_f32(a5, v6);
  v7.i32[0] = vmovn_s32(vmvnq_s8(vorrq_s8(v8, v7))).u32[0];
  v7.i32[1] = vmovn_s32(*&v8).i32[1];
  if (vmaxv_u16(*v7.i8) & 1) != 0 || (v8.i64[0] = *a3, v5.i64[1] = *a3, v9 = vcgeq_f32(v5, v8), v10 = vcgtq_f32(v8, v5), v9.i32[0] = vmovn_s32(vmvnq_s8(vorrq_s8(v10, v9))).u32[0], v9.i32[1] = vmovn_s32(v10).i32[1], (vmaxv_u16(*v9.i8)) || (v11 = vsub_f32(*a5.f32, *v8.f32), v12 = vmul_f32(v11, v11), (*&v12.i32[1] + (v11.f32[0] * v11.f32[0])) > (*(result + 28) * *(result + 28))))
  {
    *a4 = 0x7FC000007FC00000;
  }

  else
  {
    if (*(result + 1) == 1)
    {
      v13 = vmul_f32(vadd_f32(*a5.f32, *v8.f32), 0x3F0000003F000000);
    }

    else
    {
      v11.f32[0] = *(result + 120);
      *v12.i32 = *(result + 124);
      v14 = vsub_f32(vzip1_s32(*a5.f32, *v8.f32), vdup_lane_s32(v11, 0));
      v15 = vsub_f32(vzip2_s32(*a5.f32, *v8.f32), vdup_lane_s32(v12, 0));
      v16 = vmla_f32(vmul_f32(v15, v15), v14, v14);
      v13 = vbsl_s8(vdup_lane_s32(vcgt_f32(v16, vdup_lane_s32(v16, 1)), 0), *a5.f32, *v8.f32);
    }

    *a4 = v13;
  }

  return result;
}

void sub_2614E0DEC(void *a1, uint64_t a2, int a3, int a4)
{
  sub_26148F908(a1, 8uLL);
  v8 = (a2 + 88);
  memset_pattern16((a2 + 88), &unk_261561150, 0x20uLL);
  *(a2 + 120) = a3;
  *(a2 + 124) = a4;
  sub_2614DF4F8(a2);
  v9 = *(a2 + 32);
  if (*v9 == sub_261470964(*(v9 + 3), a3, a4))
  {
    v11 = 0;
    *&v10 = __PAIR64__(a4, a3);
    v54 = v10;
    v12 = *(a2 + 28);
    do
    {
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = qword_261570210[v11];
        v15 = *(a2 + 32);
        v16 = *(v15 + 3);
        v17 = *v15;
        v55 = v54;
        do
        {
          *(&v18 + 1) = *(&v55 + 1);
          *&v18 = vadd_s32(*&v55, v14);
          v55 = v18;
          if (v17 != sub_261470964(v16, v18, SDWORD1(v18)))
          {
            sub_261473150(1uLL);
          }

          ++v13;
        }

        while (v12 != v13);
      }

      ++v11;
    }

    while (v11 != 8);
    sub_2614DF56C(0, 0, 0, 1);
  }

  else
  {
    if (*(a2 + 1))
    {
      goto LABEL_30;
    }

    sub_2614E02E0(a2);
    v19 = 0;
    v20 = (a2 + 88);
    do
    {
      v56 = 0;
      v57 = 0;
      v21 = v19 + *(a2 + 144);
      v22 = v21 & 3;
      v23 = -v21;
      v35 = v23 < 0;
      v24 = v23 & 3;
      if (v35)
      {
        v25 = v22;
      }

      else
      {
        v25 = -v24;
      }

      sub_2614E0B60(a2, v25, &v57, &v56);
      if ((*a2 & 1) == 0)
      {
        v27.i64[0] = v57;
        v28.i64[0] = 0;
        v28.i64[1] = v57;
        v29 = vcgeq_f32(v28, v27);
        v26 = vcgtq_f32(v27, v28);
        v29.i32[0] = vmovn_s32(vmvnq_s8(vorrq_s8(v26, v29))).u32[0];
        *v26.i8 = vmovn_s32(v26);
        v29.i32[1] = v26.i32[1];
        v26.i16[0] = vmaxv_u16(*v29.i8);
        if ((v26.i8[0] & 1) == 0)
        {
          v30 = *(a2 + 120);
          *v26.i32 = *(a2 + 124);
          v31 = vabds_f32(*&v57, v30);
          v32 = vabds_f32(*(&v57 + 1), *v26.i32);
          v33 = v31 * 0.41421;
          v34 = v31 * 2.4142;
          v35 = v33 < v32 && v32 < v34;
          if (!v35)
          {
            v27.i64[0] = v56;
            v36.i64[0] = 0;
            v36.i64[1] = v56;
            v37 = vcgeq_f32(v36, v27);
            v38 = vcgtq_f32(v27, v36);
            v37.i32[0] = vmovn_s32(vmvnq_s8(vorrq_s8(v38, v37))).u32[0];
            v37.i32[1] = vmovn_s32(v38).i32[1];
            if ((vmaxv_u16(*v37.i8) & 1) == 0)
            {
              v39 = vabds_f32(*&v56, v30);
              *v26.i32 = vabds_f32(*(&v56 + 1), *v26.i32);
              v40 = v39 * 0.41421;
              v41 = v39 * 2.4142;
              if (v40 >= *v26.i32 || *v26.i32 >= v41)
              {
                *(a2 + 1) = 1;
                memset_pattern16((a2 + 88), &unk_261561150, 0x20uLL);
                goto LABEL_30;
              }
            }
          }
        }
      }

      sub_2614E0CF8(a2, &v57, &v56, v20, v26);
      ++v19;
      ++v20;
    }

    while (v19 != 4);
    if (*(a2 + 1))
    {
LABEL_30:
      if (sub_2614E02E0(a2) == 4)
      {
        for (i = 0; i != 4; ++i)
        {
          v56 = 0;
          v57 = 0;
          v44 = i + *(a2 + 144);
          v45 = v44 & 3;
          v46 = -v44;
          v35 = v46 < 0;
          v47 = v46 & 3;
          if (v35)
          {
            v48 = v45;
          }

          else
          {
            v48 = -v47;
          }

          sub_2614E0B60(a2, v48, &v57, &v56);
          sub_2614E0CF8(a2, &v57, &v56, v8++, v49);
        }
      }
    }
  }

  v50 = (*a1 + 4);
  v51 = (a2 + 92);
  v52 = 4;
  do
  {
    *(v50 - 1) = *(v51 - 1);
    v53 = *v51;
    v51 += 2;
    *v50 = v53;
    v50 += 2;
    --v52;
  }

  while (v52);
}

void sub_2614E1450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  v12 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2614E14AC(uint64_t a1, uint64_t a2, char *a3, std::string::size_type a4)
{
  v4 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  memset(&v64, 0, sizeof(v64));
  v66.__r_.__value_.__s.__data_[0] = 0;
  sub_261483200(&v62, a2);
  v9 = 0;
  do
  {
    if (((*(a1 + 2 * (v9 >> 4)) << (v9 & 0xF)) & 0x8000) != 0)
    {
      if (v63 - v62 <= v9)
      {
        sub_2614C3568();
      }

      *(v62 + v9) = 1;
    }

    ++v9;
  }

  while (a2 != v9);
  v10 = v62;
  v11 = v63 - v62;
  if (v63 == v62)
  {
    goto LABEL_153;
  }

  if (!*v62)
  {
    LODWORD(v12) = 1;
    goto LABEL_140;
  }

  if (v11 < 2)
  {
    goto LABEL_153;
  }

  if (*(v62 + 1))
  {
    if (v11 < 13)
    {
      LODWORD(v12) = 2;
      goto LABEL_140;
    }

    std::string::append(&v64, "90", 2uLL);
    v13 = v63 - v62;
    if ((v63 - v62) >= 3)
    {
      if (*(v62 + 2))
      {
        if (v13 == 3)
        {
          goto LABEL_153;
        }

        if (*(v62 + 3))
        {
          v14 = 3;
        }

        else
        {
          v14 = 0;
        }

        v15 = 4;
      }

      else
      {
        v14 = 1;
        v15 = 3;
      }

      if (v13 > v15)
      {
        v16 = v15;
        v17 = v15 + 1;
        if (!*(v62 + v16))
        {
          v19 = 0;
          goto LABEL_38;
        }

        if (v13 > v17)
        {
          v18 = v16 + 2;
          if (*(v62 + v17))
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          LODWORD(v17) = v18;
LABEL_38:
          if (v13 - v17 >= 5)
          {
            v20 = 5;
          }

          else
          {
            v20 = v13 - v17;
          }

          if (v13 - v17 <= 0)
          {
            v21 = 0;
            LODWORD(v12) = v17 + 5;
          }

          else
          {
            v21 = 0;
            v22 = v62 + v17;
            do
            {
              v23 = *v22++;
              v21 = (v23 != 0) | (2 * v21);
              --v20;
            }

            while (v20);
            v12 = v17 + 5;
            if (v21 > 30)
            {
              v24 = v17 + 20;
              if (v17 + 20 > v13)
              {
                goto LABEL_140;
              }

              v25 = 0;
              v21 = 0;
              do
              {
                v21 = (*(v62 + v12 + v25++) != 0) | (2 * v21);
              }

              while (v25 != 10);
              v26 = 0;
              v27 = (v17 + 15);
              v28 = v13 - v27;
              if (v28 >= 5)
              {
                v28 = 5;
              }

              v29 = v62 + v27;
              do
              {
                v30 = *v29++;
                v26 = (v30 != 0) | (2 * v26);
                --v28;
              }

              while (v28);
              v31 = v26 + 65;
LABEL_60:
              std::to_string(&v66, v21);
              if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v36 = &v66;
              }

              else
              {
                v36 = v66.__r_.__value_.__r.__words[0];
              }

              if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v66.__r_.__value_.__l.__size_;
              }

              std::string::append(&v64, v36, size);
              if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v66.__r_.__value_.__l.__data_);
              }

              std::string::push_back(&v64, v31);
              v69[0] = v24;
              v69[1] = v14;
              LODWORD(__p.__r_.__value_.__r.__words[2]) = 0;
              *(&__p.__r_.__value_.__r.__words[2] + 3) = 0;
              *&__p.__r_.__value_.__l.__data_ = 0uLL;
              *(&__p.__r_.__value_.__s + 23) = 0;
              sub_2614CF254(&v66, v69, &v62, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (LODWORD(v66.__r_.__value_.__l.__data_) == 0x7FFFFFFF)
              {
                v38 = -1;
                LODWORD(v12) = v24;
              }

              else
              {
                if ((v67 & 0x80u) == 0)
                {
                  v56 = &v66.__r_.__value_.__s.__data_[8];
                }

                else
                {
                  v56 = v66.__r_.__value_.__l.__size_;
                }

                if ((v67 & 0x80u) == 0)
                {
                  v57 = v67;
                }

                else
                {
                  v57 = v66.__r_.__value_.__r.__words[2];
                }

                std::string::append(&v64, v56, v57);
                LODWORD(v12) = v66.__r_.__value_.__l.__data_;
                if (v68 < 0)
                {
                  v38 = -1;
                }

                else
                {
                  v38 = v68;
                }
              }

              if (v67 < 0)
              {
                operator delete(v66.__r_.__value_.__l.__size_);
              }

              if (v19)
              {
                if (v19 == 1)
                {
                  v58 = "21";
                  v59 = 2;
                }

                else
                {
                  v58 = "8004";
                  v59 = 4;
                }

                std::string::append(&v64, v58, v59);
                if (v38 <= 9)
                {
                  std::string::push_back(&v64, v38 | 0x30);
                }
              }

              goto LABEL_140;
            }
          }

          if (v17 + 9 > v13)
          {
            goto LABEL_140;
          }

          v32 = 0;
          v33 = v13 - v12;
          if (v33 >= 4)
          {
            v33 = 4;
          }

          v34 = v62 + v12;
          do
          {
            v35 = *v34++;
            v32 = (v35 != 0) | (2 * v32);
            --v33;
          }

          while (v33);
          v24 = v12 + 4;
          v31 = aBdhijklnpqrstv[v32];
          goto LABEL_60;
        }
      }
    }

LABEL_153:
    sub_2614C3568();
  }

  if (v11 == 2)
  {
    goto LABEL_153;
  }

  if (*(v62 + 2))
  {
    if (v11 < 4)
    {
      goto LABEL_153;
    }

    if (*(v62 + 3))
    {
      LODWORD(v12) = 2;
      std::string::append(&v64, "10", 2uLL);
      goto LABEL_140;
    }
  }

  if (v11 >= 19)
  {
    v39 = 0;
    v40 = 0;
    do
    {
      v40 = (*(v62 + v39++ + 2) != 0) | (2 * v40);
    }

    while (v39 != 16);
    if (v11 <= 0x12)
    {
      goto LABEL_153;
    }

    if (v40 <= 38399)
    {
      if (*(v62 + 18))
      {
        v41 = "17";
      }

      else
      {
        v41 = "11";
      }

      std::string::append(&v64, v41, 2uLL);
      if (v40 >= 0)
      {
        v42 = v40;
      }

      else
      {
        v42 = v40 + 31;
      }

      if ((v40 + 3839) <= 0x1DFE)
      {
        std::string::push_back(&v64, 48);
      }

      std::to_string(&v66, v40 / 384);
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v66;
      }

      else
      {
        v43 = v66.__r_.__value_.__r.__words[0];
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v66.__r_.__value_.__l.__size_;
      }

      std::string::append(&v64, v43, v44);
      v45 = (v42 >> 5) % 12;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if ((v45 + 10) <= 0x12)
      {
        std::string::push_back(&v64, 48);
      }

      std::to_string(&v66, v45 + 1);
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v66;
      }

      else
      {
        v46 = v66.__r_.__value_.__r.__words[0];
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v66.__r_.__value_.__l.__size_;
      }

      std::string::append(&v64, v46, v47);
      v48 = v40 - (v42 & 0xFFFFFFE0);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if ((v48 + 9) <= 0x12)
      {
        std::string::push_back(&v64, 48);
      }

      std::to_string(&v66, v48);
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v66;
      }

      else
      {
        v49 = v66.__r_.__value_.__r.__words[0];
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v66.__r_.__value_.__l.__size_;
      }

      std::string::append(&v64, v49, v50);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      v10 = v62;
      LODWORD(v11) = v63 - v62;
    }

    LODWORD(v12) = 19;
  }

  else
  {
    LODWORD(v12) = 2;
  }

  if (v12 + 7 > v11)
  {
    goto LABEL_122;
  }

  v51 = v11 - v12;
  v52 = v11 - v12 >= 7 ? 7 : v11 - v12;
  if (v51 < 1)
  {
    goto LABEL_122;
  }

  v53 = 0;
  v54 = &v10[v12];
  do
  {
    v55 = *v54++;
    v53 = (v55 != 0) | (2 * v53);
    --v52;
  }

  while (v52);
  if (v53 <= 107)
  {
LABEL_122:
    std::string::append(&v64, "10", 2uLL);
  }

LABEL_140:
  sub_2614CFCFC(&v62, v12, &v64);
  if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v64.__r_.__value_.__l.__size_ < a4)
    {
      v60 = v64.__r_.__value_.__r.__words[0];
      goto LABEL_145;
    }

LABEL_146:
    v4 = 0;
    goto LABEL_147;
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) >= a4)
  {
    goto LABEL_146;
  }

  v60 = &v64;
LABEL_145:
  v4 = strlcpy(a3, v60, a4);
LABEL_147:
  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_2614E1B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, void *a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614E1C0C(atomic_ullong *a1, char a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    v4 = CVPixelBufferLockBaseAddress(atomic_load_explicit(a1, memory_order_acquire), a2 & 1);
    if (v4)
    {
      v5 = v4;
      if (qword_27FEB4200 != -1)
      {
        dispatch_once(&qword_27FEB4200, &unk_2873D0720);
      }

      v6 = qword_27FEB41F8;
      if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        *&buf[4] = v5;
        _os_log_error_impl(&dword_26146F000, v6, OS_LOG_TYPE_ERROR, "CVPixelBufferLockBaseAddress failed: %{public}d", buf, 8u);
      }

      v9 = @"CVPixelBufferLockBaseAddress failed.";
      *buf = -2002;
      sub_261476754(a3, buf, &v9);
      result = 0;
      *(a3 + 24) = v5;
      *(a3 + 28) = 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v8 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "Invalid pixel buffer", buf, 2u);
    }

    v9 = @"Invalid pixel buffer.";
    *buf = -2002;
    sub_261476754(a3, buf, &v9);
    return 0;
  }

  return result;
}

uint64_t sub_2614E1DC8(atomic_ullong *a1, char a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    v4 = CVPixelBufferUnlockBaseAddress(atomic_load_explicit(a1, memory_order_acquire), a2 & 1);
    if (v4)
    {
      v5 = v4;
      if (qword_27FEB4200 != -1)
      {
        dispatch_once(&qword_27FEB4200, &unk_2873D0720);
      }

      v6 = qword_27FEB41F8;
      if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        *&buf[4] = v5;
        _os_log_error_impl(&dword_26146F000, v6, OS_LOG_TYPE_ERROR, "CVPixelBufferUnlockBaseAddress failed: %{public}d", buf, 8u);
      }

      v9 = @"CVPixelBufferUnlockBaseAddress failed.";
      *buf = -2002;
      sub_261476754(a3, buf, &v9);
      result = 0;
      *(a3 + 24) = v5;
      *(a3 + 28) = 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v8 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "Invalid pixel buffer", buf, 2u);
    }

    v9 = @"Invalid pixel buffer.";
    *buf = -2002;
    sub_261476754(a3, buf, &v9);
    return 0;
  }

  return result;
}

uint64_t sub_2614E1F84(atomic_ullong *a1, uint64_t a2, char a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    v5 = *(a2 + 8);
    explicit = atomic_load_explicit(a1, memory_order_acquire);
    if (v5)
    {
      v7 = IOSurfaceLockPlane();
      if (v7)
      {
        v8 = v7;
        if (qword_27FEB4200 != -1)
        {
          dispatch_once(&qword_27FEB4200, &unk_2873D0720);
        }

        v9 = qword_27FEB41F8;
        if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = v8;
          _os_log_error_impl(&dword_26146F000, v9, OS_LOG_TYPE_ERROR, "IOSurfaceLockPlane failed: %{public}d", buf, 8u);
        }

        *buf = -2010;
        v10 = @"IOSurfaceLockPlane failed.";
LABEL_20:
        v15 = v10;
        sub_261476754(a4, buf, &v15);
        result = 0;
        *(a4 + 56) = v8;
        *(a4 + 60) = 1;
        return result;
      }
    }

    else
    {
      v13 = IOSurfaceLock(explicit, a3 & 1, 0);
      if (v13)
      {
        v8 = v13;
        if (qword_27FEB4200 != -1)
        {
          dispatch_once(&qword_27FEB4200, &unk_2873D0720);
        }

        v14 = qword_27FEB41F8;
        if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = v8;
          _os_log_error_impl(&dword_26146F000, v14, OS_LOG_TYPE_ERROR, "IOSurfaceLock failed: %{public}d", buf, 8u);
        }

        *buf = -2010;
        v10 = @"IOSurfaceLock failed.";
        goto LABEL_20;
      }
    }

    return 1;
  }

  else
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v11 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "Invalid IOSurface", buf, 2u);
    }

    v15 = @"Invalid IOSurface.";
    *buf = -2010;
    sub_261476754(a4, buf, &v15);
    return 0;
  }
}

uint64_t sub_2614E21F4(atomic_ullong *a1, uint64_t a2, char a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    v5 = *(a2 + 8);
    explicit = atomic_load_explicit(a1, memory_order_acquire);
    if (v5)
    {
      v7 = IOSurfaceUnlockPlane();
      if (v7)
      {
        v8 = v7;
        if (qword_27FEB4200 != -1)
        {
          dispatch_once(&qword_27FEB4200, &unk_2873D0720);
        }

        v9 = qword_27FEB41F8;
        if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = v8;
          _os_log_error_impl(&dword_26146F000, v9, OS_LOG_TYPE_ERROR, "IOSurfaceUnlockPlane failed: %{public}d", buf, 8u);
        }

        *buf = -2010;
        v10 = @"IOSurfaceUnlockPlane failed.";
LABEL_20:
        v15 = v10;
        sub_261476754(a4, buf, &v15);
        result = 0;
        *(a4 + 56) = v8;
        *(a4 + 60) = 1;
        return result;
      }
    }

    else
    {
      v13 = IOSurfaceUnlock(explicit, a3 & 1, 0);
      if (v13)
      {
        v8 = v13;
        if (qword_27FEB4200 != -1)
        {
          dispatch_once(&qword_27FEB4200, &unk_2873D0720);
        }

        v14 = qword_27FEB41F8;
        if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = v8;
          _os_log_error_impl(&dword_26146F000, v14, OS_LOG_TYPE_ERROR, "IOSurfaceUnlock failed: %{public}d", buf, 8u);
        }

        *buf = -2010;
        v10 = @"IOSurfaceUnlock failed.";
        goto LABEL_20;
      }
    }

    return 1;
  }

  else
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v11 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "Invalid IOSurface", buf, 2u);
    }

    v15 = @"Invalid IOSurface.";
    *buf = -2010;
    sub_261476754(a4, buf, &v15);
    return 0;
  }
}

atomic_ullong *sub_2614E2464(CFDictionaryRef *a1, uint64_t *a2, atomic_ullong *a3)
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    if (atomic_load_explicit(a3, memory_order_acquire))
    {
      CFDictionaryApplyFunction(atomic_load_explicit(a3, memory_order_acquire), sub_2614E2960, atomic_load_explicit(&Mutable, memory_order_acquire));
    }

    if (*(a2 + 8) == 1)
    {
      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      v8 = *a2;
      valuePtr = 0;
      v48 = v8;
      v9 = CFNumberCreate(v6, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
      v10 = *MEMORY[0x277CD2948];
      v45 = v9;
      CFDictionarySetValue(explicit, v10, atomic_load_explicit(&v45, memory_order_acquire));
      sub_2614769D8(&v45);
    }

    if (*(a2 + 24) == 1)
    {
      v11 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v12 = a2[2];
      valuePtr = 0;
      v48 = v12;
      v13 = CFNumberCreate(v6, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
      v14 = *MEMORY[0x277CD2B88];
      v45 = v13;
      CFDictionarySetValue(v11, v14, atomic_load_explicit(&v45, memory_order_acquire));
      sub_2614769D8(&v45);
    }

    if (*(a2 + 40) == 1)
    {
      v15 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v16 = a2[4];
      valuePtr = 0;
      v48 = v16;
      v17 = CFNumberCreate(v6, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
      v18 = *MEMORY[0x277CD2A28];
      v45 = v17;
      CFDictionarySetValue(v15, v18, atomic_load_explicit(&v45, memory_order_acquire));
      sub_2614769D8(&v45);
    }

    if (*(a2 + 56) == 1)
    {
      v19 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v20 = a2[6];
      valuePtr = 0;
      v48 = v20;
      v21 = CFNumberCreate(v6, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
      v22 = *MEMORY[0x277CD2968];
      v45 = v21;
      CFDictionarySetValue(v19, v22, atomic_load_explicit(&v45, memory_order_acquire));
      sub_2614769D8(&v45);
    }

    if (*(a2 + 72) == 1)
    {
      v23 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v24 = a2[8];
      valuePtr = 0;
      v48 = v24;
      v25 = CFNumberCreate(v6, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
      v26 = *MEMORY[0x277CD2960];
      v45 = v25;
      CFDictionarySetValue(v23, v26, atomic_load_explicit(&v45, memory_order_acquire));
      sub_2614769D8(&v45);
    }

    if (*(a2 + 88) == 1)
    {
      v27 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v28 = a2[10];
      valuePtr = 0;
      v48 = v28;
      v29 = CFNumberCreate(v6, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
      v30 = *MEMORY[0x277CD2A60];
      v45 = v29;
      CFDictionarySetValue(v27, v30, atomic_load_explicit(&v45, memory_order_acquire));
      sub_2614769D8(&v45);
    }

    if (*(a2 + 100) == 1)
    {
      v31 = atomic_load_explicit(&Mutable, memory_order_acquire);
      valuePtr = *(a2 + 24);
      v32 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
      v33 = *MEMORY[0x277CD2970];
      v45 = v32;
      CFDictionarySetValue(v31, v33, atomic_load_explicit(&v45, memory_order_acquire));
      sub_2614769D8(&v45);
    }

    if (*(a2 + 105) == 1)
    {
      v34 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v35 = MEMORY[0x277CBED28];
      if (!*(a2 + 104))
      {
        v35 = MEMORY[0x277CBED10];
      }

      v36 = CFRetain(*v35);
      v37 = *MEMORY[0x277CD2A40];
      valuePtr = v36;
      CFDictionarySetValue(v34, v37, atomic_load_explicit(&valuePtr, memory_order_acquire));
      sub_2614E292C(&valuePtr);
    }

    if (*(a2 + 112) == 1)
    {
      v38 = atomic_load_explicit(&Mutable, memory_order_acquire);
      valuePtr = *(a2 + 27);
      v39 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
      v40 = *MEMORY[0x277CD2A70];
      v45 = v39;
      CFDictionarySetValue(v38, v40, atomic_load_explicit(&v45, memory_order_acquire));
      sub_2614769D8(&v45);
    }

    if (atomic_load_explicit(a2 + 15, memory_order_acquire))
    {
      v41 = atomic_load_explicit(&Mutable, memory_order_acquire);
      CFDictionarySetValue(v41, *MEMORY[0x277CD2A50], atomic_load_explicit(a2 + 15, memory_order_acquire));
    }

    Copy = CFDictionaryCreateCopy(v6, atomic_load_explicit(&Mutable, memory_order_acquire));
  }

  else
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v43 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(valuePtr) = 0;
      _os_log_error_impl(&dword_26146F000, v43, OS_LOG_TYPE_ERROR, "CFDictionaryCreateMutable failed", &valuePtr, 2u);
    }

    Copy = 0;
  }

  *a1 = Copy;
  return sub_2614769A4(&Mutable);
}

void sub_2614E28B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, atomic_ullong a10)
{
  sub_2614769D8(&a9);
  sub_2614769A4(&a10);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2614E292C(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

atomic_ullong *sub_2614E2974(CFDictionaryRef *a1, uint64_t *a2, atomic_ullong *a3, atomic_ullong *a4)
{
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    if (atomic_load_explicit(a3, memory_order_acquire))
    {
      CFDictionaryApplyFunction(atomic_load_explicit(a3, memory_order_acquire), sub_2614E2EC8, atomic_load_explicit(&Mutable, memory_order_acquire));
    }

    if (*(a2 + 8) == 1)
    {
      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      v10 = *a2;
      valuePtr = 0;
      v52 = v10;
      v11 = CFNumberCreate(v8, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
      v12 = *MEMORY[0x277CC4EC8];
      v49 = v11;
      CFDictionarySetValue(explicit, v12, atomic_load_explicit(&v49, memory_order_acquire));
      sub_2614769D8(&v49);
    }

    if (*(a2 + 24) == 1)
    {
      v13 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v14 = a2[2];
      valuePtr = 0;
      v52 = v14;
      v15 = CFNumberCreate(v8, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
      v16 = *MEMORY[0x277CC4DD8];
      v49 = v15;
      CFDictionarySetValue(v13, v16, atomic_load_explicit(&v49, memory_order_acquire));
      sub_2614769D8(&v49);
    }

    if (*(a2 + 36) == 1)
    {
      v17 = atomic_load_explicit(&Mutable, memory_order_acquire);
      valuePtr = *(a2 + 8);
      v18 = CFNumberCreate(v8, kCFNumberSInt64Type, &valuePtr);
      v19 = *MEMORY[0x277CC4E30];
      v49 = v18;
      CFDictionarySetValue(v17, v19, atomic_load_explicit(&v49, memory_order_acquire));
      sub_2614769D8(&v49);
    }

    if (*(a2 + 48) == 1)
    {
      v20 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v21 = a2[5];
      valuePtr = 0;
      v52 = v21;
      v22 = CFNumberCreate(v8, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
      v23 = *MEMORY[0x277CC4D60];
      v49 = v22;
      CFDictionarySetValue(v20, v23, atomic_load_explicit(&v49, memory_order_acquire));
      sub_2614769D8(&v49);
    }

    if (*(a2 + 64) == 1)
    {
      v24 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v25 = a2[7];
      valuePtr = 0;
      v52 = v25;
      v26 = CFNumberCreate(v8, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
      v27 = *MEMORY[0x277CC4E38];
      v49 = v26;
      CFDictionarySetValue(v24, v27, atomic_load_explicit(&v49, memory_order_acquire));
      sub_2614769D8(&v49);
    }

    if (*(a2 + 73) == 1)
    {
      v28 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v29 = MEMORY[0x277CBED28];
      if (!*(a2 + 72))
      {
        v29 = MEMORY[0x277CBED10];
      }

      v30 = CFRetain(*v29);
      v31 = *MEMORY[0x277CC4D68];
      valuePtr = v30;
      CFDictionarySetValue(v28, v31, atomic_load_explicit(&valuePtr, memory_order_acquire));
      sub_2614E292C(&valuePtr);
    }

    if (*(a2 + 75) == 1)
    {
      v32 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v33 = MEMORY[0x277CBED28];
      if (!*(a2 + 74))
      {
        v33 = MEMORY[0x277CBED10];
      }

      v34 = CFRetain(*v33);
      v35 = *MEMORY[0x277CC4D70];
      valuePtr = v34;
      CFDictionarySetValue(v32, v35, atomic_load_explicit(&valuePtr, memory_order_acquire));
      sub_2614E292C(&valuePtr);
    }

    if (*(a2 + 77) == 1)
    {
      v36 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v37 = MEMORY[0x277CBED28];
      if (!*(a2 + 76))
      {
        v37 = MEMORY[0x277CBED10];
      }

      v38 = CFRetain(*v37);
      v39 = *MEMORY[0x277CC4E08];
      valuePtr = v38;
      CFDictionarySetValue(v36, v39, atomic_load_explicit(&valuePtr, memory_order_acquire));
      sub_2614E292C(&valuePtr);
    }

    if (*(a2 + 208) == 1)
    {
      v40 = atomic_load_explicit(&Mutable, memory_order_acquire);
      sub_2614E2464(&valuePtr, a2 + 10, a4);
      CFDictionarySetValue(v40, *MEMORY[0x277CC4DE8], atomic_load_explicit(&valuePtr, memory_order_acquire));
      sub_26148D93C(&valuePtr);
    }

    else if (atomic_load_explicit(a4, memory_order_acquire))
    {
      v43 = atomic_load_explicit(&Mutable, memory_order_acquire);
      CFDictionarySetValue(v43, *MEMORY[0x277CC4DE8], atomic_load_explicit(a4, memory_order_acquire));
    }

    if (*(a2 + 217) == 1)
    {
      v44 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v45 = MEMORY[0x277CBED28];
      if (!*(a2 + 216))
      {
        v45 = MEMORY[0x277CBED10];
      }

      v46 = CFRetain(*v45);
      v47 = *MEMORY[0x277CC4DE0];
      valuePtr = v46;
      CFDictionarySetValue(v44, v47, atomic_load_explicit(&valuePtr, memory_order_acquire));
      sub_2614E292C(&valuePtr);
    }

    Copy = CFDictionaryCreateCopy(v8, atomic_load_explicit(&Mutable, memory_order_acquire));
  }

  else
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v41 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(valuePtr) = 0;
      _os_log_error_impl(&dword_26146F000, v41, OS_LOG_TYPE_ERROR, "CFDictionaryCreateMutable failed", &valuePtr, 2u);
    }

    Copy = 0;
  }

  *a1 = Copy;
  return sub_2614769A4(&Mutable);
}

void sub_2614E2E3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_2614E292C(va1);
  sub_2614769A4(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2614E2EDC(CFDictionaryRef *a1, uint64_t *a2, atomic_ullong *a3)
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    if (atomic_load_explicit(a3, memory_order_acquire))
    {
      CFDictionaryApplyFunction(atomic_load_explicit(a3, memory_order_acquire), sub_2614E30E0, atomic_load_explicit(&Mutable, memory_order_acquire));
    }

    if (*(a2 + 8) == 1)
    {
      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      v8 = *a2;
      valuePtr[0] = 0;
      valuePtr[1] = v8;
      v9 = CFNumberCreate(v6, kCFNumberMaxType|kCFNumberSInt8Type, valuePtr);
      v10 = *MEMORY[0x277CC4E50];
      v17 = v9;
      CFDictionarySetValue(explicit, v10, atomic_load_explicit(&v17, memory_order_acquire));
      sub_2614769D8(&v17);
    }

    if (*(a2 + 24) == 1)
    {
      v11 = atomic_load_explicit(&Mutable, memory_order_acquire);
      valuePtr[0] = a2[2];
      v12 = CFNumberCreate(v6, kCFNumberDoubleType, valuePtr);
      v13 = *MEMORY[0x277CC4E48];
      v17 = v12;
      CFDictionarySetValue(v11, v13, atomic_load_explicit(&v17, memory_order_acquire));
      sub_2614769D8(&v17);
    }

    Copy = CFDictionaryCreateCopy(v6, atomic_load_explicit(&Mutable, memory_order_acquire));
  }

  else
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v15 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(valuePtr[0]) = 0;
      _os_log_error_impl(&dword_26146F000, v15, OS_LOG_TYPE_ERROR, "CFDictionaryCreateMutable failed", valuePtr, 2u);
    }

    Copy = 0;
  }

  *a1 = Copy;
  return sub_2614769A4(&Mutable);
}

void sub_2614E30AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, atomic_ullong a10)
{
  sub_2614769D8(&a9);
  sub_2614769A4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2614E30F4(CVPixelBufferPoolRef *a1, atomic_ullong *a2, atomic_ullong *a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  poolOut = 0;
  result = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], atomic_load_explicit(a2, memory_order_acquire), atomic_load_explicit(a3, memory_order_acquire), &poolOut);
  if (result)
  {
    v7 = result;
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v8 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v7;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "CVPixelBufferPoolCreate failed: %{public}d", buf, 8u);
    }

    *buf = -2003;
    v10 = @"CVPixelBufferPoolCreate failed.";
    result = sub_261476754(a4, buf, &v10);
    v9 = 0;
    *(a4 + 24) = v7;
    *(a4 + 28) = 1;
  }

  else
  {
    v9 = poolOut;
  }

  *a1 = v9;
  return result;
}

atomic_ullong *sub_2614E3234(CVPixelBufferPoolRef *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v11 = 0;
  sub_2614E2EDC(&v12, a2, &v11);
  v8 = 0;
  v9 = 0;
  sub_2614E2974(&v10, a3, &v9, &v8);
  sub_2614E30F4(a1, &v12, &v10, a4);
  sub_26148D93C(&v10);
  sub_26148D93C(&v8);
  sub_26148D93C(&v9);
  sub_26148D93C(&v12);
  return sub_26148D93C(&v11);
}

void sub_2614E32D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  va_copy(va3, va2);
  v7 = va_arg(va3, void);
  va_copy(va4, va3);
  v9 = va_arg(va4, void);
  sub_26148D93C(va2);
  sub_26148D93C(va);
  sub_26148D93C(va1);
  sub_26148D93C(va4);
  sub_26148D93C(va3);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2614E3314(CVPixelBufferPoolRef *a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v6 = 0;
  v7 = 0;
  sub_2614E2974(&v8, a2, &v7, &v6);
  sub_2614E30F4(a1, &v9, &v8, a3);
  sub_26148D93C(&v8);
  sub_26148D93C(&v6);
  sub_26148D93C(&v7);
  return sub_26148D93C(&v9);
}

void sub_2614E338C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, atomic_ullong a10, atomic_ullong a11, atomic_ullong a12)
{
  sub_26148D93C(&a11);
  sub_26148D93C(&a9);
  sub_26148D93C(&a10);
  sub_26148D93C(&a12);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2614E33C0(CVPixelBufferRef *a1, atomic_ullong *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    pixelBufferOut[0] = 0;
    v5 = atomic_load_explicit(&v14, memory_order_acquire);
    v6 = *MEMORY[0x277CBECE8];
    explicit = atomic_load_explicit(a2, memory_order_acquire);
    if (v5)
    {
      PixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(v6, explicit, atomic_load_explicit(&v14, memory_order_acquire), pixelBufferOut);
      if (PixelBufferWithAuxAttributes)
      {
        if (qword_27FEB4200 != -1)
        {
          dispatch_once(&qword_27FEB4200, &unk_2873D0720);
        }

        v9 = qword_27FEB41F8;
        if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = PixelBufferWithAuxAttributes;
          _os_log_error_impl(&dword_26146F000, v9, OS_LOG_TYPE_ERROR, "CVPixelBufferPoolCreatePixelBufferWithAuxAttributes failed: %{public}d", buf, 8u);
        }

        *buf = -2003;
        v15 = @"CVPixelBufferPoolCreatePixelBufferWithAuxAttributes failed.";
        sub_261476754(a3, buf, &v15);
LABEL_20:
        v12 = 0;
        *(a3 + 24) = PixelBufferWithAuxAttributes;
        *(a3 + 28) = 1;
LABEL_22:
        *a1 = v12;
        return sub_26148D93C(&v14);
      }
    }

    else
    {
      PixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBuffer(v6, explicit, pixelBufferOut);
      if (PixelBufferWithAuxAttributes)
      {
        if (qword_27FEB4200 != -1)
        {
          dispatch_once(&qword_27FEB4200, &unk_2873D0720);
        }

        v11 = qword_27FEB41F8;
        if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = PixelBufferWithAuxAttributes;
          _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "CVPixelBufferPoolCreatePixelBuffer failed: %{public}d", buf, 8u);
        }

        *buf = -2003;
        v15 = @"CVPixelBufferPoolCreatePixelBuffer failed.";
        sub_261476754(a3, buf, &v15);
        goto LABEL_20;
      }
    }

    v12 = pixelBufferOut[0];
    goto LABEL_22;
  }

  if (qword_27FEB4200 != -1)
  {
    dispatch_once(&qword_27FEB4200, &unk_2873D0720);
  }

  v10 = qword_27FEB41F8;
  if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(pixelBufferOut[0]) = 0;
    _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "Invalid pixel buffer pool", pixelBufferOut, 2u);
  }

  pixelBufferOut[0] = -2003;
  *buf = @"Invalid pixel buffer pool.";
  sub_261476754(a3, pixelBufferOut, buf);
  *a1 = 0;
  return sub_26148D93C(&v14);
}

void sub_2614E3F28(void *a1)
{
  sub_2614E3F60(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614E3F60(void *a1)
{
  *a1 = &unk_2873D1B78;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    if (v4 != v3)
    {
      v5 = 0;
      do
      {
        if (v3[v5])
        {
          MEMORY[0x2667045D0](v3[v5], 0x1000C4000313F17);
          v3 = *(v2 + 8);
          v4 = *(v2 + 16);
        }

        ++v5;
      }

      while (v5 < (v4 - v3) >> 3);
    }

    if (v3)
    {
      *(v2 + 16) = v3;
      operator delete(v3);
    }

    MEMORY[0x2667045D0](v2, 0x1080C406BDE4C18);
  }

  return a1;
}

void sub_2614E4020(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_2614E4080(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614E409C(uint64_t result, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  *(result + 8) = 0;
  *(result + 12) = a2;
  *result = &unk_2873D1B78;
  *(result + 16) = a3;
  *(result + 20) = a4;
  *(result + 24) = a5;
  *(result + 28) = a6;
  *(result + 32) = a7;
  v7 = *(a7 + 8);
  v8 = *(a7 + 16);
  v9 = v8 - v7;
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v9 >> 3;
    v12 = 1;
    do
    {
      v13 = *v7;
      v7 += 8;
      v10 += (v13[1] + *a7) * *v13;
    }

    while (v11 > v12++);
  }

  *(result + 40) = v10;
  return result;
}

void sub_2614E5708(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 16) = v6;
    operator delete(v6);
  }

  MEMORY[0x2667045D0](v3, 0x1080C406BDE4C18);
  MEMORY[0x2667045D0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_2614E58C4(void *a1, atomic_uint **a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2614709BC();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_2614709D4();
    }

    v11 = (8 * v7);
    *(8 * v7) = 0;
    v12 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
      if (*v11)
      {
        sub_2614705CC(*v11);
      }
    }

    *v11 = v12;
    v6 = v11 + 1;
    v14 = *a1;
    v13 = a1[1];
    v15 = v11 + *a1 - v13;
    if (*a1 != v13)
    {
      v16 = (v11 + *a1 - v13);
      v17 = *a1;
      do
      {
        *v16 = 0;
        v18 = *v17;
        if (*v17)
        {
          atomic_fetch_add_explicit(v18 + 2, 1u, memory_order_relaxed);
          if (*v16)
          {
            sub_2614705CC(*v16);
          }
        }

        *v16++ = v18;
        ++v17;
      }

      while (v17 != v13);
      do
      {
        if (*v14)
        {
          sub_2614705CC(*v14);
        }

        ++v14;
      }

      while (v14 != v13);
    }

    v19 = *a1;
    *a1 = v15;
    *(a1 + 1) = (v11 + 1);
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v4 = 0;
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
      if (*v4)
      {
        sub_2614705CC(*v4);
      }
    }

    *v4 = v5;
    v6 = v4 + 1;
  }

  a1[1] = v6;
}

__int128 *sub_2614E5A74(uint64_t a1, int a2)
{
  v3 = 0;
  v4 = 0x7FFFFFFF;
  v5 = &dword_2615702B0;
  v6 = 256;
  do
  {
    if (*v5 == a2)
    {
      v13 = v5[1];
      v14 = &unk_2615703B0 + 12 * ((v13 >> 2) & 7);
      v10 = *(v14 + 4);
      result = sub_26150F760(*v14);
      v4 = 0;
      v12 = v13 & 3;
      goto LABEL_10;
    }

    v7 = *v5 ^ a2;
    v8 = dword_261573820[v7 >> 4] + dword_261573820[v7 & 0xF] + dword_261573820[(v7 >> 8) & 0xF] + dword_261573820[v7 >> 12] + dword_261573820[HIWORD(v7) & 0xF] + dword_261573820[(v7 >> 20) & 0xF] + dword_261573820[HIBYTE(v7) & 0xF] + dword_261573820[v7 >> 28];
    if (v8 < v4)
    {
      v3 = v5[1];
      v4 = v8;
    }

    v5 += 2;
    v6 -= 8;
  }

  while (v6);
  if (v4 > 3)
  {
    result = 0;
    v12 = 0;
    *(a1 + 20) = 0;
    *(a1 + 17) = 0;
    v10 = 3;
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v9 = &unk_2615703B0 + 12 * ((v3 >> 2) & 7);
    v10 = *(v9 + 4);
    result = sub_26150F760(*v9);
    v12 = v3 & 3;
  }

LABEL_10:
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 24) = v4;
  return result;
}

uint64_t MRCDecoderGetTypeID()
{
  if (qword_280CB34D8 != -1)
  {
    dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
  }

  return qword_280CB35D0;
}

uint64_t sub_2614E5C28()
{
  v3 = *MEMORY[0x277D85DE8];
  if (qword_280CB2FF8)
  {
    _os_assumes_log();
  }

  if (qword_280CB35D0)
  {
    _os_assumes_log();
  }

  qword_280CB2FF8 = "MRCDecoder";
  qword_280CB35D0 = _CFRuntimeRegisterClass();
  v2 = 0;
  sub_2614BAFE0(qword_280CB35D0, v1);
  return sub_26147B420(v1);
}

void sub_2614E5CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26147B420(va);
  _Unwind_Resume(a1);
}

CFStringRef sub_2614E5CEC(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34D8 != -1)
    {
      dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
    }

    if (v2 != qword_280CB35D0)
    {
      _os_assumes_log();
    }
  }

  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"<%s %p> {\n", "MRCDecoder", cf);
    if (atomic_load_explicit(cf + 2, memory_order_acquire))
    {
      v30 = CFCopyDescription(atomic_load_explicit(cf + 2, memory_order_acquire));
      if (atomic_load_explicit(&v30, memory_order_acquire))
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v3, atomic_load_explicit(&v30, memory_order_acquire), @"\n");
        if (atomic_load_explicit(&ArrayBySeparatingStrings, memory_order_acquire))
        {
          v28 = CFStringCreateByCombiningStrings(v3, atomic_load_explicit(&ArrayBySeparatingStrings, memory_order_acquire), @"\n    ");
          if (atomic_load_explicit(&v28, memory_order_acquire))
          {
            CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    context %@\n", atomic_load_explicit(&v28, memory_order_acquire));
          }

          sub_26148E848(&v28);
        }

        sub_261476A0C(&ArrayBySeparatingStrings);
      }

      sub_26148E848(&v30);
    }

    if (atomic_load_explicit(*(cf + 3), memory_order_acquire))
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    symbologies {");
      CFSetGetCount(atomic_load_explicit(*(cf + 3), memory_order_acquire));
      operator new[]();
    }

    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    locatingMode %ld\n", *(*(cf + 3) + 8));
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    accuracy 0x%x\n", *(*(cf + 3) + 16));
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    maximumQRModuleSamplingCount %d\n", *(*(cf + 3) + 20));
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    maximumQRFinderPatternTripletCount %d\n", *(*(cf + 3) + 24));
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    maximum1DSymbologyDecodingTime %g\n", *(*(cf + 3) + 32));
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    maximum1DSymbologyDecodingScanlineCount %d\n", *(*(cf + 3) + 40));
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    minimum1DSymbologyDecodingScanlineCount %d\n", *(*(cf + 3) + 44));
    explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 48))
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    CFStringAppendFormat(explicit, 0, @"    shouldStopAtFirstPyramidWith2DSymbologies %s\n", v5);
    v6 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 49))
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    CFStringAppendFormat(v6, 0, @"    needsDecoderResultAttributeUnmatchedFinderPatternPoints %s\n", v7);
    v8 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 50))
    {
      v9 = "true";
    }

    else
    {
      v9 = "false";
    }

    CFStringAppendFormat(v8, 0, @"    needsDecoderResultAttributeFocusSharpness %s\n", v9);
    v10 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 51))
    {
      v11 = "true";
    }

    else
    {
      v11 = "false";
    }

    CFStringAppendFormat(v10, 0, @"    needsDecoderResultAttributeUnrecognizedCornerPointQuadruplets %s\n", v11);
    v12 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 52))
    {
      v13 = "true";
    }

    else
    {
      v13 = "false";
    }

    CFStringAppendFormat(v12, 0, @"    needsDecoderResultAttributeUnrecognizedRegions %s\n", v13);
    v14 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 53))
    {
      v15 = "true";
    }

    else
    {
      v15 = "false";
    }

    CFStringAppendFormat(v14, 0, @"    needsDecoderResultAttributeDebugInfo %s\n", v15);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    algorithmVersion 0x%lx (major=%ld, minor=%ld)\n", *(*(cf + 3) + 56), *(*(cf + 3) + 56) >> 16, *(*(cf + 3) + 56));
    v16 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 64))
    {
      v17 = "true";
    }

    else
    {
      v17 = "false";
    }

    CFStringAppendFormat(v16, 0, @"    allowsAlgorithmicVersioningFallback %s\n", v17);
    v18 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 65))
    {
      v19 = "true";
    }

    else
    {
      v19 = "false";
    }

    CFStringAppendFormat(v18, 0, @"    allowsPyramidGenerationOnDemand %s\n", v19);
    v20 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 66))
    {
      v21 = "true";
    }

    else
    {
      v21 = "false";
    }

    CFStringAppendFormat(v20, 0, @"    allowsConcurrentDecoding %s\n", v21);
    v22 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 67))
    {
      v23 = "true";
    }

    else
    {
      v23 = "false";
    }

    CFStringAppendFormat(v22, 0, @"    shouldCoalesceCompositeSymbologies %s\n", v23);
    v24 = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (*(*(cf + 3) + 68))
    {
      v25 = "true";
    }

    else
    {
      v25 = "false";
    }

    CFStringAppendFormat(v24, 0, @"    shouldCollectMetrics %s\n", v25);
    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"}");
    Copy = CFStringCreateCopy(v3, atomic_load_explicit(&Mutable, memory_order_acquire));
    sub_2614959D0(&Mutable);
    if (Copy)
    {
      return Copy;
    }
  }

  else
  {
    sub_2614959D0(&Mutable);
  }

  return CFStringCreateWithFormat(v3, 0, @"<%s %p>", "MRCDecoder", cf);
}

void sub_2614E62C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  sub_26148E848(va);
  sub_261476A0C(va1);
  sub_26148E848(va2);
  sub_2614959D0(va3);
  _Unwind_Resume(a1);
}

unint64_t sub_2614E6314(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34D8 != -1)
    {
      dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
    }

    if (v2 != qword_280CB35D0)
    {
      _os_assumes_log();
    }
  }

  v3 = *(cf + 3);
  explicit = atomic_load_explicit(v3, memory_order_acquire);
  if (explicit)
  {
    v5 = CFHash(explicit) + 2654435769u;
  }

  else
  {
    v5 = 3317042773;
  }

  v6 = (*(v3 + 8) + 2654435769 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = (*(v3 + 16) + 2654435769 + (v6 << 6) + (v6 >> 2)) ^ v6;
  v8 = (*(v3 + 20) + 2654435769 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v9 = (*(v3 + 24) + 2654435769 + (v8 << 6) + (v8 >> 2)) ^ v8;
  v10 = *(v3 + 32) + 2654435769;
  if (*(v3 + 32) == 0.0)
  {
    v10 = 2654435769;
  }

  v11 = (v10 + (v9 << 6) + (v9 >> 2)) ^ v9;
  v12 = (*(v3 + 40) + 2654435769 + (v11 << 6) + (v11 >> 2)) ^ v11;
  v13 = (*(v3 + 44) + 2654435769 + (v12 << 6) + (v12 >> 2)) ^ v12;
  v14 = (*(v3 + 48) + 2654435769 + (v13 << 6) + (v13 >> 2)) ^ v13;
  v15 = (*(v3 + 49) + 2654435769 + (v14 << 6) + (v14 >> 2)) ^ v14;
  v16 = (*(v3 + 51) + 2654435769 + (v15 << 6) + (v15 >> 2)) ^ v15;
  v17 = (*(v3 + 52) + 2654435769 + (v16 << 6) + (v16 >> 2)) ^ v16;
  v18 = (*(v3 + 53) + 2654435769 + (v17 << 6) + (v17 >> 2)) ^ v17;
  v19 = (*(v3 + 56) + 2654435769 + (v18 << 6) + (v18 >> 2)) ^ v18;
  v20 = (*(v3 + 64) + 2654435769 + (v19 << 6) + (v19 >> 2)) ^ v19;
  v21 = (*(v3 + 65) + 2654435769 + (v20 << 6) + (v20 >> 2)) ^ v20;
  v22 = (*(v3 + 66) + 2654435769 + (v21 << 6) + (v21 >> 2)) ^ v21;
  v23 = (*(v3 + 67) + 2654435769 + (v22 << 6) + (v22 >> 2)) ^ v22;
  return (*(v3 + 68) + 2654435769 + (v23 << 6) + (v23 >> 2)) ^ v23;
}

uint64_t sub_2614E652C(CFTypeRef cf, CFTypeRef a2)
{
  if (!cf)
  {
    goto LABEL_5;
  }

  v4 = CFGetTypeID(cf);
  if (qword_280CB34D8 != -1)
  {
    dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
  }

  if (v4 != qword_280CB35D0)
  {
    _os_assumes_log();
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  v5 = CFGetTypeID(a2);
  if (qword_280CB34D8 != -1)
  {
    dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
  }

  if (v5 != qword_280CB35D0)
  {
    _os_assumes_log();
  }

LABEL_10:
  v6 = *(cf + 3);
  v7 = *(a2 + 3);
  explicit = atomic_load_explicit(v7, memory_order_acquire);
  v9 = atomic_load_explicit(v6, memory_order_acquire);
  if (v9 == explicit)
  {
LABEL_16:
    if (*(v6 + 8) == *(v7 + 8) && *(v6 + 16) == *(v7 + 16) && *(v6 + 20) == *(v7 + 20) && *(v6 + 24) == *(v7 + 24) && *(v6 + 32) == *(v7 + 32) && *(v6 + 40) == *(v7 + 40) && *(v6 + 44) == *(v7 + 44) && *(v6 + 48) == *(v7 + 48) && *(v6 + 49) == *(v7 + 49) && *(v6 + 50) == *(v7 + 50) && *(v6 + 51) == *(v7 + 51) && *(v6 + 52) == *(v7 + 52) && *(v6 + 53) == *(v7 + 53) && *(v6 + 56) == *(v7 + 56) && *(v6 + 64) == *(v7 + 64) && *(v6 + 65) == *(v7 + 65) && *(v6 + 66) == *(v7 + 66) && *(v6 + 67) == *(v7 + 67))
    {
      return *(v6 + 68) == *(v7 + 68);
    }

    return 0;
  }

  if (explicit)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    result = CFEqual(v9, explicit);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  return 0;
}

atomic_ullong *sub_2614E6780(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34D8 != -1)
    {
      dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
    }

    if (v2 != qword_280CB35D0)
    {
      _os_assumes_log();
    }

    v3 = CFGetTypeID(cf);
    if (qword_280CB34D8 != -1)
    {
      dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
    }

    if (v3 != qword_280CB35D0)
    {
      _os_assumes_log();
    }
  }

  sub_2614E6878(cf + 3);

  return sub_2614CC260(cf + 2);
}

atomic_ullong **sub_2614E6878(atomic_ullong **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2614E68C0(v2);
    MEMORY[0x2667045D0](v3, 0x1060C4024A46005);
  }

  return a1;
}

atomic_ullong *sub_2614E68C0(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unint64_t MRCDecoderCreateWithOptions(CFTypeRef a1)
{
  if (a1)
  {
    a1 = CFRetain(a1);
  }

  v11 = a1;
  if (qword_280CB34D8 != -1)
  {
    dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    v3 = CFGetTypeID(Instance);
    if (qword_280CB34D8 != -1)
    {
      dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
    }

    if (v3 != qword_280CB35D0)
    {
      _os_assumes_log();
    }

    if (atomic_load_explicit(&v11, memory_order_acquire) && (Value = CFDictionaryGetValue(atomic_load_explicit(&v11, memory_order_acquire), @"MRCDecoderOptionContext"), (v5 = Value) != 0))
    {
      v6 = CFGetTypeID(Value);
      if (qword_280CB34E0 != -1)
      {
        dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
      }

      if (v6 != qword_280CB35D8)
      {
        _os_assumes_log();
      }

      v7 = CFRetain(v5);
    }

    else
    {
      v7 = 0;
    }

    v2[2] = v7;
    operator new();
  }

  v12 = 0;
  v8 = atomic_exchange(&v12, 0);
  v9 = atomic_exchange(&v12, 0);
  if (v9)
  {
    CFRelease(v9);
  }

  sub_26148D93C(&v11);
  return v8;
}

void sub_2614E6B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2614E6878((v2 + 24));
  sub_2614CC260(v3);
  sub_26148D93C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2614E6BE8(uint64_t a1, atomic_ullong *a2)
{
  sub_2614E7100(a1, a2, @"MRCDecoderOptionSymbologies");
  *(a1 + 32) = 0;
  *(a1 + 8) = 13;
  *(a1 + 16) = -2575995796;
  *(a1 + 24) = -1;
  *(a1 + 40) = 0;
  *(a1 + 46) = 0;
  *(a1 + 56) = 0x40000;
  *(a1 + 64) = 1;
  *(a1 + 65) = 0;
  sub_2614F7EBC(&v43, atomic_load_explicit(a2, memory_order_acquire));
  v4 = sub_2614F7C48(@"MRCDecoderOptionLocatingMode");
  if (v4)
  {
    v5 = sub_2614F7F5C(&v43, v4);
    CFRelease(v4);
    if (v5)
    {
      v6 = sub_2614F7994(v5);
      LOBYTE(v4) = v7;
      CFRelease(v5);
      if (v4)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      v39 = v8;
      v40 = v8 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v9 = sub_2614F7C48(@"MRCDecoderOptionAccuracy");
  v41 = a2;
  if (v9 && (v10 = sub_2614F7F5C(&v43, v9), CFRelease(v9), v10))
  {
    v11 = sub_2614F78D0(v10);
    CFRelease(v10);
    v12 = HIDWORD(v11) == 0;
    if (HIDWORD(v11))
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v37 = v13 & 0xFFFFFF00;
    v38 = v13;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v12 = 1;
  }

  v14 = sub_2614E7248(&v43, @"MRCDecoderOptionMaximumQRModuleSamplingCount");
  v15 = sub_2614E7248(&v43, @"MRCDecoderOptionMaximumQRFinderPatternTripletCount");
  v16 = sub_2614E7334(&v43, @"MRCDecoderOptionMaximum1DSymbologyDecodingTime");
  v18 = v17;
  v19 = sub_2614E7248(&v43, @"MRCDecoderOptionMaximum1DSymbologyDecodingScanlineCount");
  v20 = sub_2614E7248(&v43, @"MRCDecoderOptionMinimum1DSymbologyDecodingScanlineCount");
  v21 = sub_2614E73C0(&v43, @"MRCDecoderOptionShouldStopAtFirstPyramidWith2DSymbologies");
  if (v4)
  {
    *(a1 + 8) = v39 | v40;
  }

  if (!v12)
  {
    *(a1 + 16) = v38 | v37;
  }

  v22 = HIDWORD(v14);
  if (HIDWORD(v14))
  {
    *(a1 + 20) = v14;
  }

  v23 = HIDWORD(v15);
  if (HIDWORD(v15))
  {
    *(a1 + 24) = v15;
  }

  if (v18)
  {
    *(a1 + 32) = v16;
  }

  if (HIDWORD(v19))
  {
    *(a1 + 40) = v19;
  }

  if (HIDWORD(v20))
  {
    *(a1 + 44) = v20;
  }

  if (v21 >= 0x100u)
  {
    *(a1 + 48) = v21;
  }

  v24 = *(a1 + 16);
  if (v24 == 1751738216)
  {
    if (!v22)
    {
      *(a1 + 20) = 7000;
    }

    if (!v23)
    {
      v25 = 30;
      goto LABEL_42;
    }
  }

  else if (v24 == 1819244288)
  {
    if (!v22)
    {
      *(a1 + 20) = 3000;
    }

    if (!v23)
    {
      v25 = 10;
LABEL_42:
      *(a1 + 24) = v25;
    }
  }

  sub_2614E7100(&v42, v41, @"MRCDecoderOptionNeededResultAttributes");
  if (atomic_load_explicit(&v42, memory_order_acquire))
  {
    *(a1 + 49) = CFSetContainsValue(atomic_load_explicit(&v42, memory_order_acquire), @"LocatorPoints") != 0;
    *(a1 + 50) = CFSetContainsValue(atomic_load_explicit(&v42, memory_order_acquire), @"FocusSharpness") != 0;
    *(a1 + 51) = CFSetContainsValue(atomic_load_explicit(&v42, memory_order_acquire), @"FrameFailedLocations") != 0;
    *(a1 + 52) = CFSetContainsValue(atomic_load_explicit(&v42, memory_order_acquire), @"MRCDecoderResultAttributeUnrecognizedRegions") != 0;
    *(a1 + 53) = CFSetContainsValue(atomic_load_explicit(&v42, memory_order_acquire), @"FrameDebugData") != 0;
  }

  v26 = sub_2614F7C48(@"MRCDecoderOptionAlgorithmVersion");
  if (v26)
  {
    v27 = sub_2614F7F5C(&v43, v26);
    CFRelease(v26);
    if (v27)
    {
      v28 = sub_2614F7994(v27);
      v30 = v29;
      CFRelease(v27);
      if (v30)
      {
        *(a1 + 56) = v28;
      }
    }
  }

  v31 = sub_2614E73C0(&v43, @"MRCDecoderOptionAllowsAlgorithmicVersioningFallback");
  if (v31 >= 0x100u)
  {
    *(a1 + 64) = v31;
  }

  v32 = sub_2614E73C0(&v43, @"MRCDecoderOptionAllowsPyramidGenerationOnDemand");
  if (v32 >= 0x100u)
  {
    goto LABEL_55;
  }

  if (*(a1 + 56) >= 196608 && _os_feature_enabled_impl())
  {
    LOBYTE(v32) = 1;
LABEL_55:
    *(a1 + 65) = v32;
  }

  v33 = sub_2614E73C0(&v43, @"MRCDecoderOptionAllowsConcurrentDecoding");
  if (v33 >= 0x100u)
  {
    *(a1 + 66) = v33;
  }

  v34 = sub_2614E73C0(&v43, @"MRCDecoderOptionShouldCoalesceCompositeSymbologies");
  if (v34 < 0x100u)
  {
    if (*(a1 + 56) < 0x40000)
    {
      goto LABEL_62;
    }

    LOBYTE(v34) = 1;
  }

  *(a1 + 67) = v34;
LABEL_62:
  v35 = sub_2614E73C0(&v43, @"MRCDecoderOptionShouldCollectMetrics");
  if (v35 >= 0x100u)
  {
    *(a1 + 68) = v35;
  }

  sub_2614E68C0(&v42);
  sub_2614F7F28(&v43);
  return a1;
}

void sub_2614E7094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  sub_2614E68C0(va);
  sub_2614F7F28(va1);
  sub_2614E68C0(v7);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2614E7100(atomic_ullong *result, atomic_ullong *a2, void *key)
{
  v3 = result;
  if (atomic_load_explicit(a2, memory_order_acquire) && (result = CFDictionaryGetValue(atomic_load_explicit(a2, memory_order_acquire), key)) != 0)
  {
    v4 = result;
    v5 = CFGetTypeID(result);
    if (v5 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v4);
      v7 = *MEMORY[0x277CBECE8];
      Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF158]);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
          ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
          CFSetSetValue(explicit, ValueAtIndex);
        }
      }

      *v3 = CFSetCreateCopy(v7, atomic_load_explicit(&Mutable, memory_order_acquire));
      return sub_2614E7448(&Mutable);
    }

    else
    {
      v11 = CFGetTypeID(v4);
      if (v11 != CFSetGetTypeID())
      {
        _os_assumes_log();
      }

      result = CFRetain(v4);
      *v3 = result;
    }
  }

  else
  {
    *v3 = 0;
  }

  return result;
}

void sub_2614E7230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2614E7448(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2614E7248(CFDictionaryRef *a1, const __CFString *a2)
{
  v3 = sub_2614F7C48(a2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = sub_2614F7F5C(a1, v3);
  CFRelease(v3);
  if (!v4)
  {
    v3 = 0;
LABEL_8:
    v10 = 0;
    v9 = 0;
    return v10 | v3 | v9;
  }

  v5 = CFGetTypeID(v4);
  if (v5 == CFNumberGetTypeID() && !CFNumberIsFloatType(v4))
  {
    Value = CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
    v7 = valuePtr & 0xFFFFFF00;
    v6 = valuePtr;
    if (!Value)
    {
      v7 = 0;
      v6 = 0;
    }

    v3 = ((Value != 0) << 32);
  }

  else
  {
    v6 = 0;
    v3 = 0;
    v7 = 0;
  }

  v8 = v7 | v6;
  CFRelease(v4);
  v9 = v8 & 0xFFFFFF00;
  v10 = v8;
  return v10 | v3 | v9;
}

unint64_t sub_2614E7334(CFDictionaryRef *a1, const __CFString *a2)
{
  v3 = sub_2614F7C48(a2);
  if (v3 && (v4 = v3, v5 = sub_2614F7F5C(a1, v3), CFRelease(v4), v5))
  {
    v6 = sub_2614F7ADC(v5);
    v7 = v6;
    v8 = v6 & 0xFFFFFFFFFFFFFF00;
    CFRelease(v5);
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t sub_2614E73C0(CFDictionaryRef *a1, const __CFString *a2)
{
  v3 = sub_2614F7C48(a2);
  if (v3)
  {
    v4 = sub_2614F7F5C(a1, v3);
    CFRelease(v3);
    if (v4)
    {
      v5 = sub_2614F7D8C(v4);
      LOBYTE(v3) = v5;
      v6 = HIBYTE(v5);
      CFRelease(v4);
    }

    else
    {
      v6 = 0;
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v3 | (v6 << 8);
}

atomic_ullong *sub_2614E7448(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *MRCDecoderDecodeSampleWithRegions(__n128 a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v148 = v2;
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v192 = *MEMORY[0x277D85DE8];
  if (qword_280CB3ED0 != -1)
  {
    dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
  }

  v8 = qword_280CB3EC8;
  if (os_log_type_enabled(qword_280CB3EC8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26146F000, v8, OS_LOG_TYPE_INFO, "MRCDecoderDecodeSampleWithRegions: enter", buf, 2u);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&dword_26146F000, v8, OS_LOG_TYPE_INFO, "MRCDecoderDecodeSampleWithRegions: decoder: %{public}@", buf, 0xCu);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_26146F000, v8, OS_LOG_TYPE_INFO, "MRCDecoderDecodeSampleWithRegions: sample: %{public}@", buf, 0xCu);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = v4;
    _os_log_impl(&dword_26146F000, v8, OS_LOG_TYPE_INFO, "MRCDecoderDecodeSampleWithRegions: regions: %{public}@", buf, 0xCu);
  }

  oslog = v8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (v7)
    {
      v13 = CFGetTypeID(v7);
      if (qword_280CB34D8 != -1)
      {
        dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
      }

      if (v13 != qword_280CB35D0)
      {
        _os_assumes_log();
      }
    }

    sub_2615449EC();
    buf[0] = 0;
    buf[4] = 0;
    v14 = v7[3];
    v15 = sub_2614E9290(v14, buf);
    buf[0] = 0;
    buf[4] = 0;
    if (sub_2614E9390(v14, @"QR", buf))
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    __dst[0] = 0;
    __dst[4] = 0;
    v17 = v16 | sub_2614E9390(v14, @"DataMatrix", __dst);
    LOBYTE(v159) = 0;
    BYTE4(v159) = 0;
    if (sub_2614E9390(v14, @"Aztec", &v159))
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    LOBYTE(v155) = 0;
    BYTE4(v155) = 0;
    v19 = v18 | (4 * v17) | sub_2614E9390(v14, @"MicroQR", &v155);
    buf[0] = 0;
    buf[4] = 0;
    if (sub_2614E9390(v14, @"Codabar", buf))
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    __dst[0] = 0;
    __dst[4] = 0;
    v21 = v20 | sub_2614E9390(v14, @"GS1DataBar", __dst);
    LOBYTE(v159) = 0;
    BYTE4(v159) = 0;
    if (sub_2614E9390(v14, @"GS1DataBarExpanded", &v159))
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    LOBYTE(v155) = 0;
    BYTE4(v155) = 0;
    v23 = v22 | (4 * v21) | sub_2614E9390(v14, @"GS1DataBarLimited", &v155);
    buf[0] = 0;
    buf[4] = 0;
    v24 = sub_2614E9390(v14, @"AppClipCode", buf);
    CFStringAppendFormat(Mutable, 0, @"V%d Symbol_%d_%d_%d_%d", v14[7] >> 16, v15, v19, v23, v24);
    CVPixelBuffer = MRCSampleGetCVPixelBuffer(v6);
    if (CVPixelBufferIsPlanar(CVPixelBuffer))
    {
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(CVPixelBuffer, 0);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(CVPixelBuffer, 0);
    }

    else
    {
      WidthOfPlane = CVPixelBufferGetWidth(CVPixelBuffer);
      HeightOfPlane = CVPixelBufferGetHeight(CVPixelBuffer);
    }

    v28 = HeightOfPlane;
    RegionOfInterest = MRCSampleGetRegionOfInterest(v6);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    Pyramid = MRCSampleGetPyramid(v6);
    if (Pyramid)
    {
      Pyramid = CFArrayGetCount(Pyramid);
    }

    *(&v143 + 1) = v33;
    v144 = v35;
    *(&v142 + 1) = RegionOfInterest;
    *&v143 = v31;
    *(&v141 + 1) = v28;
    *&v142 = Pyramid;
    CFStringAppendFormat(Mutable, 0, @" Sample %zux%zu Pyramids_%d ROI_%d_%d_%d_%d", WidthOfPlane);
    CFStringAppend(Mutable, @" Regions");
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
        v39 = ValueAtIndex;
        if (!ValueAtIndex)
        {
          goto LABEL_45;
        }

        v40 = CFGetTypeID(ValueAtIndex);
        if (qword_280CB34F8[0] != -1)
        {
          dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
        }

        if (v40 == qword_280CB35F0)
        {
          v177 = 0u;
          memset(__dst, 0, sizeof(__dst));
          MRCRegionGetTransform(v39, __dst);
          v143 = v177;
          v141 = *__dst;
          v142 = *&__dst[16];
          CFStringAppendFormat(Mutable, 0, @" Transform_%.2f_%.2f_%.2f_%.2f_%.2f_%.2f ");
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              v42 = CFArrayGetValueAtIndex(v4, i);
              MRCRegionGetCornerPoints(v42, buf);
              Symbology = MRCRegionGetSymbology(v42);
              v44 = *buf;
              v45 = *&buf[8];
              locale = v188[0].__locale_;
              v47 = v188[1].__locale_;
              *(&v143 + 1) = MRCRegionGetOrientation(v42);
              *(&v142 + 1) = *&locale;
              *&v143 = *&v47;
              *(&v141 + 1) = v44;
              *&v142 = v45;
              *&v141 = Symbology;
              CFStringAppendFormat(Mutable, 0, @"%@_%d_%d_%d_%d*%.2f ");
            }
          }
        }

        else
        {
LABEL_45:
          CFStringAppend(Mutable, @" type unexpected");
        }
      }

      else
      {
        CFStringAppend(Mutable, @" empty array");
      }
    }

    else
    {
      CFStringAppend(Mutable, @" NULL");
    }

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = Mutable;
      _os_log_impl(&dword_26146F000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    CFRelease(Mutable);
  }

  LOBYTE(v159) = 0;
  v169[0] = 0;
  if (!v4)
  {
LABEL_81:
    LOBYTE(v155) = 0;
    LOBYTE(v157) = 0;
    if (!v7)
    {
      goto LABEL_86;
    }

    goto LABEL_82;
  }

  v48 = CFGetTypeID(v4);
  if (v48 != CFArrayGetTypeID())
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "MRCDecoderDecodeSampleWithRegions";
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_error_impl(&dword_26146F000, oslog, OS_LOG_TYPE_ERROR, "%{public}s: Unexpected type of regions: %{public}@", buf, 0x16u);
    }

    goto LABEL_81;
  }

  v49 = CFArrayGetCount(v4);
  if (!v49)
  {
    goto LABEL_81;
  }

  memset(__dst, 0, 24);
  sub_2614B59F8(__dst, v49);
  if (v49 >= 1)
  {
    v51 = 0;
    *&v50 = 136446722;
    *log = v50;
    do
    {
      v52 = CFArrayGetValueAtIndex(v4, v51);
      v53 = v52;
      if (!v52)
      {
        goto LABEL_287;
      }

      v54 = CFGetTypeID(v52);
      if (qword_280CB34F8[0] != -1)
      {
        dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
      }

      if (v54 == qword_280CB35F0)
      {
        v55 = CFGetTypeID(v53);
        if (qword_280CB34F8[0] != -1)
        {
          dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
        }

        if (v55 != qword_280CB35F0)
        {
          _os_assumes_log();
        }

        v56 = *&__dst[8];
        if (*&__dst[8] >= *&__dst[16])
        {
          v58 = (*&__dst[8] - *__dst) >> 3;
          if ((v58 + 1) >> 61)
          {
            sub_2614709BC();
          }

          v59 = (*&__dst[16] - *__dst) >> 2;
          if (v59 <= v58 + 1)
          {
            v59 = v58 + 1;
          }

          if (*&__dst[16] - *__dst >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            v60 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v60 = v59;
          }

          v188[0].__locale_ = __dst;
          if (v60)
          {
            sub_26147B1E8(v60);
          }

          v61 = (8 * v58);
          *buf = 0;
          *&buf[8] = v61;
          *&buf[16] = v61;
          v62 = CFRetain(v53);
          v63 = *&buf[16];
          v64 = *&buf[8];
          *v61 = v62;
          *&buf[16] = v63 + 8;
          v65 = (v64 + *__dst - *&__dst[8]);
          sub_26147B230(*__dst, *&__dst[8], v65);
          v66 = *__dst;
          v67 = *&__dst[16];
          *__dst = v65;
          *cf = *&buf[16];
          *&__dst[8] = *&buf[16];
          *&buf[16] = v66;
          *&buf[24] = v67;
          *&buf[8] = v66;
          *buf = v66;
          sub_26147B2D8(buf);
          v57 = cf[0];
        }

        else
        {
          *v56 = CFRetain(v53);
          v57 = v56 + 1;
        }

        *&__dst[8] = v57;
      }

      else
      {
LABEL_287:
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          *buf = log[0];
          *&buf[4] = "MRCDecoderDecodeSampleWithRegions";
          *&buf[12] = 2050;
          *&buf[14] = v51;
          *&buf[22] = 2114;
          *&buf[24] = v53;
          _os_log_error_impl(&dword_26146F000, oslog, OS_LOG_TYPE_ERROR, "%{public}s: Unexpected type of region at %{public}ld: %{public}@", buf, 0x20u);
        }
      }

      ++v51;
    }

    while (v49 != v51);
  }

  v155 = *__dst;
  v156 = *&__dst[16];
  memset(__dst, 0, 24);
  LOBYTE(v157) = 1;
  *buf = __dst;
  sub_261476A40(buf);
  if (v7)
  {
LABEL_82:
    v68 = CFGetTypeID(v7);
    if (qword_280CB34D8 != -1)
    {
      dispatch_once_f(&qword_280CB34D8, 0, sub_2614E5C28);
    }

    if (v68 != qword_280CB35D0)
    {
      _os_assumes_log();
    }
  }

LABEL_86:
  if (v6)
  {
    v69 = CFGetTypeID(v6);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v69 != qword_280CB35E8)
    {
      _os_assumes_log();
    }
  }

  buf[0] = 0;
  buf[16] = 0;
  if (v157 == 1)
  {
    *buf = v155;
    *&buf[8] = (*(&v155 + 1) - v155) >> 3;
    buf[16] = 1;
  }

  sub_261473704(__dst, v7 + 2, v6, buf, &v159, v9, v10, v11, v141, *(&v141 + 1), v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, log[0], log[1], v148, oslog, cf[0], cf[1], v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, *v169, v169[16], v170, __p.__r_.__value_.__s.__data_[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2], v172, v173.__val_, v173.__cat_, *v174, *&v174[8], *&v174[16], v175, *__dst, *&__dst[16], *&__dst[24], v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185);
  cfa = atomic_exchange(__dst, 0);
  sub_2614775F4(__dst);
  if (v149 && (v169[0] & 1) != 0)
  {
    sub_261501518(buf, &v159);
    *v149 = atomic_exchange(buf, 0);
    sub_261476C54(buf);
  }

  if (os_log_type_enabled(osloga, OS_LOG_TYPE_DEFAULT))
  {
    v70 = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    CFStringAppend(v70, @"Result");
    if (cfa)
    {
      for (j = 0; j < MRCDecoderResultGetDescriptorCount(cfa); ++j)
      {
        DescriptorAtIndex = MRCDecoderResultGetDescriptorAtIndex(cfa, j);
        v73 = MRCDescriptorCopyAttribute(DescriptorAtIndex, @"BarcodeType");
        v74 = v73;
        if (v73)
        {
          v75 = CFGetTypeID(v73);
          if (v75 == CFStringGetTypeID())
          {
            CFStringAppendFormat(v70, 0, @" %@", v74);
          }

          CFRelease(v74);
        }
      }
    }

    else
    {
      CFStringAppend(v70, @" NULL");
    }

    if (os_log_type_enabled(osloga, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v70;
      _os_log_impl(&dword_26146F000, osloga, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    CFRelease(v70);
  }

  if (qword_280CB3F10 != -1)
  {
    dispatch_once(&qword_280CB3F10, &unk_2873D67C8);
  }

  if (byte_27FEB4228 != 1)
  {
    goto LABEL_242;
  }

  if (os_log_type_enabled(osloga, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26146F000, osloga, OS_LOG_TYPE_INFO, "WARNING: Live dump is enabled, this may impact the performance.", buf, 2u);
  }

  memset(&v191, 0, sizeof(v191));
  sub_26148E87C(&v191.__pn_, "/tmp", "");
  if ((v191.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v76 = &v191;
  }

  else
  {
    v76 = v191.__pn_.__r_.__value_.__r.__words[0];
  }

  if (access(v76, 2))
  {
    if (qword_27FEB41C0 != -1)
    {
      dispatch_once(&qword_27FEB41C0, &unk_2873D0620);
    }

    v77 = qword_27FEB41B8;
    if (os_log_type_enabled(qword_27FEB41B8, OS_LOG_TYPE_DEBUG))
    {
      v92 = SHIBYTE(v191.__pn_.__r_.__value_.__r.__words[2]);
      v93 = v191.__pn_.__r_.__value_.__r.__words[0];
      v94 = __error();
      v95 = &v191;
      v96 = *v94;
      if (v92 < 0)
      {
        v95 = v93;
      }

      *buf = 136446466;
      *&buf[4] = v95;
      *&buf[12] = 1026;
      *&buf[14] = v96;
      _os_log_debug_impl(&dword_26146F000, v77, OS_LOG_TYPE_DEBUG, "%{public}s is not writable, reason: %{public, errno}d", buf, 0x12u);
    }

    std::__fs::filesystem::__temp_directory_path(buf, 0);
    if (SHIBYTE(v191.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v191.__pn_.__r_.__value_.__l.__data_);
    }

    v191 = *buf;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      v97 = &v191;
      if ((v191.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v97 = v191.__pn_.__r_.__value_.__r.__words[0];
      }

      *buf = 136446210;
      *&buf[4] = v97;
      _os_log_debug_impl(&dword_26146F000, v77, OS_LOG_TYPE_DEBUG, "trying %{public}s", buf, 0xCu);
    }

    v78 = (v191.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v191 : v191.__pn_.__r_.__value_.__r.__words[0];
    if (access(v78, 2))
    {
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        v127 = SHIBYTE(v191.__pn_.__r_.__value_.__r.__words[2]);
        v128 = v191.__pn_.__r_.__value_.__r.__words[0];
        v129 = __error();
        v130 = &v191;
        v131 = *v129;
        if (v127 < 0)
        {
          v130 = v128;
        }

        *buf = 136446466;
        *&buf[4] = v130;
        *&buf[12] = 1026;
        *&buf[14] = v131;
        _os_log_debug_impl(&dword_26146F000, v77, OS_LOG_TYPE_DEBUG, "%{public}s is also not writable, reason: %{public, errno}d", buf, 0x12u);
      }

      if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_151;
      }

      *buf = 0;
      v79 = "cannot find anywhere to write, skipping";
      v80 = buf;
      v81 = v77;
LABEL_147:
      _os_log_debug_impl(&dword_26146F000, v81, OS_LOG_TYPE_DEBUG, v79, v80, 2u);
LABEL_151:
      *&v169[8] = 0;
      *&v169[16] = 0;
      v170.tv_sec = 0;
      goto LABEL_183;
    }
  }

  v173.__val_ = 0;
  v173.__cat_ = std::system_category();
  if (std::__fs::filesystem::path::__filename(&v191).__size_)
  {
    std::string::push_back(&v191.__pn_, 47);
  }

  v82 = sub_26148E87C(&v191.__pn_, "MRCLiveDumps", "");
  std::__fs::filesystem::__status(v82, 0);
  if (__dst[0] != 2 && !std::__fs::filesystem::__create_directory(&v191, &v173))
  {
    if (qword_27FEB41C0 != -1)
    {
      dispatch_once(&qword_27FEB41C0, &unk_2873D0620);
    }

    v91 = qword_27FEB41B8;
    if (os_log_type_enabled(qword_27FEB41B8, OS_LOG_TYPE_DEBUG))
    {
      v132 = SHIBYTE(v191.__pn_.__r_.__value_.__r.__words[2]);
      v133 = v191.__pn_.__r_.__value_.__r.__words[0];
      std::error_code::message(buf, &v173);
      v134 = &v191;
      if (v132 < 0)
      {
        v134 = v133;
      }

      if (buf[23] >= 0)
      {
        v135 = buf;
      }

      else
      {
        v135 = *buf;
      }

      *__dst = 136446466;
      *&__dst[4] = v134;
      *&__dst[12] = 2082;
      *&__dst[14] = v135;
      _os_log_debug_impl(&dword_26146F000, v91, OS_LOG_TYPE_DEBUG, "cannot create directory at %{public}s, reason: %{public}s, skipping", __dst, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_151;
  }

  v83 = getpid();
  if (proc_name(v83, buf, 0x1000u) <= 0)
  {
    if (qword_27FEB41C0 != -1)
    {
      dispatch_once(&qword_27FEB41C0, &unk_2873D0620);
    }

    v90 = qword_27FEB41B8;
    if (!os_log_type_enabled(qword_27FEB41B8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_151;
    }

    *__dst = 0;
    v79 = "cannot retrieve process name, skipping";
    v80 = __dst;
    v81 = v90;
    goto LABEL_147;
  }

  v172 = 0;
  if (pthread_threadid_np(0, &v172))
  {
    v172 = MEMORY[0x266704B00]();
  }

  sub_2614E946C(__dst);
  v84 = strlen(buf);
  sub_26148EA44(&__dst[16], buf, v84);
  sub_26148EA44(&__dst[16], "_", 1);
  v85 = MEMORY[0x266704400](&__dst[16], v83);
  v86 = sub_26148EA44(v85, "_", 1);
  v87 = MEMORY[0x266704440](v86, v172);
  sub_26148EA44(v87, "_", 1);
  v88.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  MEMORY[0x266704430](&__dst[16], v88.__d_.__rep_);
  sub_2614E9710(&__p, __dst);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_157;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_157;
    }

    p_p = &__p;
  }

  if (p_p->__r_.__value_.__s.__data_[0] != 47)
  {
LABEL_157:
    if (std::__fs::filesystem::path::__filename(&v191).__size_)
    {
      std::string::push_back(&v191.__pn_, 47);
    }

    goto LABEL_166;
  }

  if (SHIBYTE(v191.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    *v191.__pn_.__r_.__value_.__l.__data_ = 0;
    v191.__pn_.__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    v191.__pn_.__r_.__value_.__s.__data_[0] = 0;
    *(&v191.__pn_.__r_.__value_.__s + 23) = 0;
  }

LABEL_166:
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v99 = &__p;
  }

  else
  {
    v99 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_26148E87C(&v191.__pn_, v99, (v99 + size));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::__status(&v191, 0);
  if (__p.__r_.__value_.__s.__data_[0] == 2 || std::__fs::filesystem::__create_directory(&v191, &v173))
  {
    *&v169[8] = *&v191.__pn_.__r_.__value_.__l.__data_;
    v170.tv_sec = v191.__pn_.__r_.__value_.__r.__words[2];
    v100 = &v191;
  }

  else
  {
    if (qword_27FEB41C0 != -1)
    {
      dispatch_once(&qword_27FEB41C0, &unk_2873D0620);
    }

    v101 = qword_27FEB41B8;
    if (os_log_type_enabled(qword_27FEB41B8, OS_LOG_TYPE_DEBUG))
    {
      v136 = SHIBYTE(v191.__pn_.__r_.__value_.__r.__words[2]);
      v137 = v191.__pn_.__r_.__value_.__r.__words[0];
      std::error_code::message(&__p, &v173);
      v138 = &v191;
      if (v136 < 0)
      {
        v138 = v137;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v139 = &__p;
      }

      else
      {
        v139 = __p.__r_.__value_.__r.__words[0];
      }

      *v174 = 136446466;
      *&v174[4] = v138;
      *&v174[12] = 2082;
      *&v174[14] = v139;
      _os_log_debug_impl(&dword_26146F000, v101, OS_LOG_TYPE_DEBUG, "cannot create directory at %{public}s, reason: %{public}s, skipping", v174, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v100 = &v169[8];
  }

  v100->__pn_.__r_.__value_.__r.__words[0] = 0;
  v100->__pn_.__r_.__value_.__l.__size_ = 0;
  v102 = MEMORY[0x277D82818];
  v100->__pn_.__r_.__value_.__r.__words[2] = 0;
  *__dst = *v102;
  v103 = v102[9];
  *&__dst[*(*__dst - 24)] = v102[8];
  *&__dst[16] = v103;
  *&__dst[24] = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v185) < 0)
  {
    operator delete(v183);
  }

  *&__dst[24] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v177);
  std::iostream::~basic_iostream();
  MEMORY[0x266704550](&v186);
LABEL_183:
  if (SHIBYTE(v191.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v191.__pn_.__r_.__value_.__l.__data_);
  }

  tv_sec_high = HIBYTE(v170.tv_sec);
  v105 = SHIBYTE(v170.tv_sec);
  if (v170.tv_sec < 0)
  {
    tv_sec_high = *&v169[16];
  }

  if (!tv_sec_high)
  {
LABEL_240:
    if ((v105 & 0x80) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_241;
  }

  if (qword_27FEB41C0 != -1)
  {
    dispatch_once(&qword_27FEB41C0, &unk_2873D0620);
  }

  loga = qword_27FEB41B8;
  if (os_log_type_enabled(qword_27FEB41B8, OS_LOG_TYPE_DEBUG))
  {
    v121 = *&v169[8];
    if (v105 >= 0)
    {
      v121 = &v169[8];
    }

    *buf = 136446210;
    *&buf[4] = v121;
    _os_log_debug_impl(&dword_26146F000, loga, OS_LOG_TYPE_DEBUG, "start dumping at %{public}s", buf, 0xCu);
  }

  sub_2614E990C(__dst, "decoder.txt");
  sub_26148E788(buf, &v169[8], __dst);
  sub_2614E9968(buf, v7);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  memset(__dst, 0, 24);
  sub_26148E87C(__dst, "sample.txt", "");
  sub_26148E788(buf, &v169[8], __dst);
  sub_2614E9968(buf, v6);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  sub_2614E990C(__dst, "regions.txt");
  sub_26148E788(buf, &v169[8], __dst);
  sub_2614E9968(buf, v4);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  memset(__dst, 0, 24);
  sub_26148E87C(__dst, "decoder_result.txt", "");
  sub_26148E788(buf, &v169[8], __dst);
  sub_2614E9968(buf, cfa);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  memset(__dst, 0, 24);
  sub_26148E87C(__dst, "pixelBuffer.png", "");
  sub_26148E788(buf, &v169[8], __dst);
  v106 = MRCSampleGetCVPixelBuffer(v6);
  sub_2614E9C70(buf, v106);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  memset(__dst, 0, 24);
  sub_26148E87C(__dst, "sample.mrcsample", "");
  sub_26148E788(buf, &v169[8], __dst);
  v107 = *MEMORY[0x277CBECE8];
  if (buf[23] >= 0)
  {
    v108 = buf;
  }

  else
  {
    v108 = *buf;
  }

  __p.__r_.__value_.__r.__words[0] = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], v108);
  if (!atomic_load_explicit(&__p, memory_order_acquire))
  {
    if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v191.__pn_.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_26146F000, loga, OS_LOG_TYPE_ERROR, "failed to create CFString with file system representation", &v191, 2u);
    }

    goto LABEL_224;
  }

  *v174 = CFURLCreateWithFileSystemPath(v107, atomic_load_explicit(&__p, memory_order_acquire), kCFURLPOSIXPathStyle, 0);
  if (atomic_load_explicit(v174, memory_order_acquire))
  {
    *&v173.__val_ = 0;
    if (!MRCSampleWriteOpaqueRepresentationToFile(v6, atomic_load_explicit(v174, memory_order_acquire), &v173))
    {
      v109 = *&v173.__val_;
      v110 = os_log_type_enabled(loga, OS_LOG_TYPE_ERROR);
      if (v109)
      {
        if (v110)
        {
          v140 = buf;
          if (buf[23] < 0)
          {
            v140 = *buf;
          }

          LODWORD(v191.__pn_.__r_.__value_.__l.__data_) = 136446466;
          *(v191.__pn_.__r_.__value_.__r.__words + 4) = v140;
          WORD2(v191.__pn_.__r_.__value_.__r.__words[1]) = 2114;
          *(&v191.__pn_.__r_.__value_.__r.__words[1] + 6) = v109;
          _os_log_error_impl(&dword_26146F000, loga, OS_LOG_TYPE_ERROR, "failed to write sample as opaque representation to %{public}s, error: %{public}@", &v191, 0x16u);
          v109 = *&v173.__val_;
        }

        CFRelease(v109);
        goto LABEL_223;
      }

      if (v110)
      {
        v123 = buf;
        if (buf[23] < 0)
        {
          v123 = *buf;
        }

        LODWORD(v191.__pn_.__r_.__value_.__l.__data_) = 136446210;
        *(v191.__pn_.__r_.__value_.__r.__words + 4) = v123;
        v124 = "failed to write sample as opaque representation to %{public}s";
        v125 = loga;
        v126 = 12;
        goto LABEL_273;
      }
    }
  }

  else if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v191.__pn_.__r_.__value_.__l.__data_) = 0;
    v124 = "failed to create file URL with POSIX-style file system path";
    v125 = loga;
    v126 = 2;
LABEL_273:
    _os_log_error_impl(&dword_26146F000, v125, OS_LOG_TYPE_ERROR, v124, &v191, v126);
  }

LABEL_223:
  sub_2614E9EB0(v174);
LABEL_224:
  sub_26148E848(&__p);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v111 = MRCSampleCopyAttribute(v6, @"MRCSampleAttributePyramid");
  v112 = v111;
  if (v111)
  {
    v113 = CFArrayGetCount(v111);
    if (v113 >= 1)
    {
      v114 = 0;
      v150 = *MEMORY[0x277D82818];
      v115 = *(MEMORY[0x277D82818] + 64);
      v116 = *(MEMORY[0x277D82818] + 72);
      do
      {
        sub_2614E946C(buf);
        sub_26148EA44(&buf[16], "pyramid_", 8);
        v117 = MEMORY[0x266704410](&buf[16], v114);
        sub_26148EA44(v117, ".png", 4);
        sub_2614E9710(&__p, buf);
        v191.__pn_ = __p;
        memset(&__p, 0, sizeof(__p));
        sub_26148E788(__dst, &v169[8], &v191);
        v118 = CFArrayGetValueAtIndex(v112, v114);
        sub_2614E9C70(__dst, v118);
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        if (SHIBYTE(v191.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v191.__pn_.__r_.__value_.__l.__data_);
        }

        *buf = v150;
        *&buf[*(v150 - 24)] = v115;
        *&buf[16] = v116;
        *&buf[24] = MEMORY[0x277D82878] + 16;
        if (v189 < 0)
        {
          operator delete(v188[7].__locale_);
        }

        *&buf[24] = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v188);
        std::iostream::~basic_iostream();
        MEMORY[0x266704550](&v190);
        ++v114;
      }

      while (v113 != v114);
    }

    CFRelease(v112);
  }

  v119 = os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG);
  LOBYTE(v105) = HIBYTE(v170.tv_sec);
  if (!v119)
  {
    goto LABEL_240;
  }

  v122 = *&v169[8];
  if (v170.tv_sec >= 0)
  {
    v122 = &v169[8];
  }

  *buf = 136446210;
  *&buf[4] = v122;
  _os_log_debug_impl(&dword_26146F000, loga, OS_LOG_TYPE_DEBUG, "finish dumping at %{public}s", buf, 0xCu);
  if (v170.tv_sec < 0)
  {
LABEL_241:
    operator delete(*&v169[8]);
  }

LABEL_242:
  if (os_log_type_enabled(osloga, OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    *&buf[4] = cfa;
    _os_log_impl(&dword_26146F000, osloga, OS_LOG_TYPE_INFO, "MRCDecoderDecodeSampleWithRegions: decoderResult: %{sensitive}@", buf, 0xCu);
  }

  if (os_log_type_enabled(osloga, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26146F000, osloga, OS_LOG_TYPE_INFO, "MRCDecoderDecodeSampleWithRegions: leave", buf, 2u);
  }

  if (v157 == 1)
  {
    *buf = &v155;
    sub_261476A40(buf);
  }

  if (v169[0] == 1)
  {
    sub_261501098(&v159);
  }

  return cfa;
}

void sub_2614E906C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, atomic_ullong a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  sub_2614E97B8(&a55);
  if (*(v55 - 137) < 0)
  {
    operator delete(*(v55 - 160));
  }

  if (a26 == 1)
  {
    STACK[0x290] = &a23;
    sub_261476A40(&STACK[0x290]);
  }

  if (a40 == 1)
  {
    sub_261501098(&a28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2614E9290(atomic_ullong *a1, uint64_t a2)
{
  if (qword_280CB3E50 != -1)
  {
    dispatch_once_f(&qword_280CB3E50, 0, sub_261495A80);
  }

  v4 = qword_280CB3E58;
  Count = CFArrayGetCount(atomic_load_explicit(qword_280CB3E58, memory_order_acquire));
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(v4, memory_order_acquire), i);
    if (sub_2614E9390(a1, ValueAtIndex, a2))
    {
      v13 = 0;
      v10 = sub_26154543C(ValueAtIndex, &v13);
      v11 = 1 << v13;
      if (!v10)
      {
        v11 = 0;
      }

      v7 = v11 | v7;
    }
  }

  return v7;
}

uint64_t sub_2614E9390(atomic_ullong *a1, const void *a2, uint64_t a3)
{
  if (!atomic_load_explicit(a1, memory_order_acquire))
  {
    return 1;
  }

  result = CFSetContainsValue(atomic_load_explicit(a1, memory_order_acquire), a2);
  if (!result)
  {
    return result;
  }

  if (*(a3 + 4) != 1)
  {
    return 1;
  }

  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  v10 = v7;
  v8 = sub_261497334(&v10);
  sub_26148E848(&v10);
  v9 = HIDWORD(v8) != 0;
  if (v8 == 0x100000003)
  {
    LODWORD(v8) = 2 * (a1[7] < 0x40000);
    v9 = 1;
  }

  return v8 == *a3 && v9;
}

void sub_2614E9458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26148E848(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2614E946C(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_26149A840((a1 + 3), 24);
  return a1;
}

void sub_2614E96E8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x266704550](v1);
  _Unwind_Resume(a1);
}

const void *sub_2614E9710(_BYTE *a1, uint64_t a2)
{
  result = sub_2614C2074(a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t sub_2614E97B8(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x266704550](a1 + 128);
  return a1;
}

std::string *sub_2614E990C(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  sub_26148E87C(this, a2, v3);
  return this;
}

void sub_2614E994C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *sub_2614E9968(int a1, CFTypeRef cf)
{
  v11[19] = *MEMORY[0x277D85DE8];
  v8 = 0;
  if (cf)
  {
    v2 = atomic_exchange(&v8, CFCopyDescription(cf));
    if (v2)
    {
      CFRelease(v2);
    }
  }

  if (!atomic_load_explicit(&v8, memory_order_acquire))
  {
    v3 = atomic_exchange(&v8, CFRetain(&stru_2873D7F70));
    if (v3)
    {
      CFRelease(v3);
    }
  }

  CStringPtr = CFStringGetCStringPtr(atomic_load_explicit(&v8, memory_order_acquire), 0x8000100u);
  if (!CStringPtr)
  {
    Length = CFStringGetLength(atomic_load_explicit(&v8, memory_order_acquire));
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  sub_2614CAC08(buf);
  v6 = strlen(CStringPtr);
  sub_26148EA44(buf, CStringPtr, v6);
  *buf = *MEMORY[0x277D82810];
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x266704380](&v10);
  std::ostream::~ostream();
  MEMORY[0x266704550](v11);
  return sub_26148E848(&v8);
}

void sub_2614E9C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_ullong a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2614CADBC(&a11);
  MEMORY[0x266704550](&a63);
  if (v63)
  {
    MEMORY[0x2667045B0](v63, 0x1000C8077774924);
  }

  sub_26148E848(&a10);
  _Unwind_Resume(a1);
}

void sub_2614E9C70(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  v16 = *MEMORY[0x277D85DE8];
  imageOut = 0;
  v3 = VTCreateCGImageFromCVPixelBuffer(pixelBuffer, 0, &imageOut);
  if (v3)
  {
    if (qword_27FEB41C0 != -1)
    {
      dispatch_once(&qword_27FEB41C0, &unk_2873D0620);
    }

    v4 = qword_27FEB41B8;
    if (os_log_type_enabled(qword_27FEB41B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      LODWORD(v15) = v3;
      _os_log_error_impl(&dword_26146F000, v4, OS_LOG_TYPE_ERROR, "VTCreateCGImageFromCVPixelBuffer failed with %{public}d", buf, 8u);
    }
  }

  else
  {
    v5 = *MEMORY[0x277CBECE8];
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v6, 0x8000100u);
    v11 = CFURLCreateWithFileSystemPath(v5, atomic_load_explicit(&v12, memory_order_acquire), kCFURLPOSIXPathStyle, 0);
    v7 = CGImageDestinationCreateWithURL(atomic_load_explicit(&v11, memory_order_acquire), @"public.png", 1uLL, 0);
    v8 = v7;
    if (v7)
    {
      CGImageDestinationAddImage(v7, imageOut, 0);
      CGImageDestinationFinalize(v8);
      CFRelease(v8);
    }

    else
    {
      if (qword_27FEB41C0 != -1)
      {
        dispatch_once(&qword_27FEB41C0, &unk_2873D0620);
      }

      v9 = qword_27FEB41B8;
      if (os_log_type_enabled(qword_27FEB41B8, OS_LOG_TYPE_ERROR))
      {
        explicit = atomic_load_explicit(&v11, memory_order_acquire);
        *buf = 138543362;
        v15 = explicit;
        _os_log_error_impl(&dword_26146F000, v9, OS_LOG_TYPE_ERROR, "CGImageDestinationCreateWithURL failed for %{public}@", buf, 0xCu);
      }
    }

    CGImageRelease(imageOut);
    sub_2614E9EB0(&v11);
    sub_26148E848(&v12);
  }
}

void sub_2614E9E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26148E848(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2614E9EB0(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_2614E9EE4()
{
  v3 = *MEMORY[0x277D85DE8];
  if (qword_280CB30B8)
  {
    _os_assumes_log();
  }

  if (qword_280CB35E8)
  {
    _os_assumes_log();
  }

  qword_280CB30B8 = "MRCSample";
  qword_280CB35E8 = _CFRuntimeRegisterClass();
  v2 = 0;
  sub_2614BAFE0(qword_280CB35E8, v1);
  return sub_26147B420(v1);
}

void sub_2614E9F8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26147B420(va);
  _Unwind_Resume(a1);
}

CFStringRef sub_2614E9FA8(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v2 != qword_280CB35E8)
    {
      _os_assumes_log();
    }
  }

  result = sub_2614F5550(cf + 16);
  if (!result)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<%s %p>", "MRCSample", cf);
  }

  return result;
}

unint64_t sub_2614EA064(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v2 != qword_280CB35E8)
    {
      _os_assumes_log();
    }
  }

  v3 = 0x9DDFEA08EB382D69 * ((((((cf + 16) >> 3) & 0x3FFFFFF) << 6) | 8) ^ ((cf + 16) >> 32));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (((cf + 16) >> 32) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (((cf + 16) >> 32) ^ (v3 >> 47) ^ v3)) >> 47));
}

BOOL sub_2614EA124(CFTypeRef cf, CFTypeRef a2)
{
  if (!cf)
  {
    goto LABEL_5;
  }

  v4 = CFGetTypeID(cf);
  if (qword_280CB34F0 != -1)
  {
    dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
  }

  if (v4 != qword_280CB35E8)
  {
    _os_assumes_log();
    if (!a2)
    {
      return cf == a2;
    }
  }

  else
  {
LABEL_5:
    if (!a2)
    {
      return cf == a2;
    }
  }

  v5 = CFGetTypeID(a2);
  if (qword_280CB34F0 != -1)
  {
    dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
  }

  if (v5 != qword_280CB35E8)
  {
    _os_assumes_log();
  }

  return cf == a2;
}

atomic_ullong *sub_2614EA21C(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v2 != qword_280CB35E8)
    {
      _os_assumes_log();
    }

    v3 = CFGetTypeID(cf);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v3 != qword_280CB35E8)
    {
      _os_assumes_log();
    }
  }

  v4 = cf[9];
  cf[9] = 0;
  if (v4)
  {
    v6 = v4;
    sub_26147756C(&v6);
    MEMORY[0x2667045D0](v4, 0x20C40960023A9);
  }

  sub_261476A0C(cf + 8);
  sub_26148D93C(cf + 3);
  result = cf[2];
  cf[2] = 0;
  if (result)
  {
    sub_2614776F0(result);

    JUMPOUT(0x2667045D0);
  }

  return result;
}

const void *MRCDecoderDecodeSampleWithSegmentationMask(int a1, void *a2, uint64_t *cf, __n128 a4)
{
  v76 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    goto LABEL_54;
  }

  v6 = CFGetTypeID(cf);
  if (qword_27FEB4198 != -1)
  {
    dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
  }

  if (v6 != qword_27FEB41A0)
  {
    _os_assumes_log();
  }

  sub_26149B6A0(cf + 2);
  x = v77.origin.x;
  y = v77.origin.y;
  width = v77.size.width;
  height = v77.size.height;
  if (CGRectIsNull(v77))
  {
    if (qword_280CB3ED0 != -1)
    {
      dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
    }

    v11 = qword_280CB3EC8;
    if (!os_log_type_enabled(qword_280CB3EC8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    *v69 = 136446466;
    *&v69[4] = "MRCDecoderDecodeSampleWithSegmentationMask";
    *&v69[12] = 2114;
    *&v69[14] = cf;
    v12 = "%{public}s: Unable to estimate region-of-interest from: %{public}@";
    v13 = v69;
    goto LABEL_53;
  }

  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  MinX = CGRectGetMinX(v78);
  v79.origin.x = x;
  v79.origin.y = y;
  v79.size.width = width;
  v79.size.height = height;
  *v69 = MinX;
  *&v69[8] = CGRectGetMinY(v79);
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  v15 = CGRectGetMinX(v80);
  v81.origin.x = x;
  v81.origin.y = y;
  v81.size.width = width;
  v81.size.height = height;
  *&v69[16] = v15;
  MaxY = CGRectGetMaxY(v81);
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  MaxX = CGRectGetMaxX(v82);
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  v71 = MaxX;
  v72 = CGRectGetMaxY(v83);
  v84.origin.x = x;
  v84.origin.y = y;
  v84.size.width = width;
  v84.size.height = height;
  v17 = CGRectGetMaxX(v84);
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  v73 = v17;
  MinY = CGRectGetMinY(v85);
  if (a2)
  {
    v18 = CFGetTypeID(a2);
    if (qword_280CB34F0 != -1)
    {
      dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
    }

    if (v18 != qword_280CB35E8)
    {
      _os_assumes_log();
    }
  }

  v19 = (cf + 6);
  if (!cf[6])
  {
    goto LABEL_27;
  }

  v20 = (cf + 7);
  if (!cf[7])
  {
    goto LABEL_27;
  }

  v21 = a2[2];
  v22 = cf[9];
  if (v22 <= 2)
  {
    if (v22 != 1)
    {
      if (v22 == 2)
      {
        v23 = CGRectGetWidth(*(v21 + 8));
        v24 = v23 / CGRectGetHeight(*(v21 + 8));
        v25 = *(v21 + 8);
        v26 = *(v21 + 16);
        v27 = *(v21 + 24);
        v28 = *(v21 + 32);
        if (v24 < *v19 / *v20)
        {
          v29 = CGRectGetWidth(*&v25) / *v19;
          v30 = CGRectGetHeight(*(v21 + 8)) / v29 - *v20;
          v31 = -0.5;
LABEL_37:
          v53 = v30 * v31;
          v52 = 0.0;
          goto LABEL_38;
        }

        v29 = CGRectGetHeight(*&v25) / *v20;
        v40 = CGRectGetWidth(*(v21 + 8)) / v29 - *v19;
        v41 = -0.5;
        goto LABEL_35;
      }

LABEL_27:
      LOBYTE(v64.a) = 0;
      v65 = 0;
      if (qword_280CB3ED0 != -1)
      {
        dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
      }

      v11 = qword_280CB3EC8;
      if (!os_log_type_enabled(qword_280CB3EC8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      LODWORD(v75.a) = 136446466;
      *(&v75.a + 4) = "MRCDecoderDecodeSampleWithSegmentationMask";
      WORD2(v75.b) = 2114;
      *(&v75.b + 6) = cf;
      v12 = "%{public}s: Unable to get transform from: %{public}@";
LABEL_52:
      v13 = &v75;
LABEL_53:
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, v12, v13, 0x16u);
LABEL_54:
      Copy = 0;
      goto LABEL_55;
    }

    v42 = CGRectGetWidth(*(v21 + 8));
    v43 = v42 / CGRectGetHeight(*(v21 + 8));
    v44 = *(v21 + 8);
    v45 = *(v21 + 16);
    v46 = *(v21 + 24);
    v47 = *(v21 + 32);
    if (v43 >= *v19 / *v20)
    {
      v48 = CGRectGetWidth(*&v44);
    }

    else
    {
      v48 = CGRectGetHeight(*&v44);
      v19 = (cf + 7);
    }

    v51 = v48 / *v19;
    v50 = v51;
LABEL_41:
    CGAffineTransformMakeScale(&v64, v51, v50);
    goto LABEL_42;
  }

  if (v22 == 3)
  {
    v49 = CGRectGetWidth(*(v21 + 8)) / *v19;
    v50 = CGRectGetHeight(*(v21 + 8)) / *v20;
    v51 = v49;
    goto LABEL_41;
  }

  if (v22 != 4)
  {
    goto LABEL_27;
  }

  v32 = CGRectGetWidth(*(v21 + 8));
  v33 = v32 / CGRectGetHeight(*(v21 + 8));
  v34 = *(v21 + 8);
  v35 = *(v21 + 16);
  v36 = *(v21 + 24);
  v37 = *(v21 + 32);
  if (v33 >= *v19 / *v20)
  {
    v54 = CGRectGetWidth(*&v34);
    v55 = *v20;
    v29 = v54 / *v19;
    v30 = v55 - CGRectGetHeight(*(v21 + 8)) / v29;
    v31 = 0.5;
    goto LABEL_37;
  }

  v38 = CGRectGetHeight(*&v34);
  v39 = *v19;
  v29 = v38 / *v20;
  v40 = v39 - CGRectGetWidth(*(v21 + 8)) / v29;
  v41 = 0.5;
LABEL_35:
  v52 = v40 * v41;
  v53 = 0.0;
LABEL_38:
  v56 = *(MEMORY[0x277CBF2C0] + 16);
  *&v75.a = *MEMORY[0x277CBF2C0];
  *&v75.c = v56;
  *&v75.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&t1.a = *&v75.a;
  *&t1.c = v56;
  *&t1.tx = *&v75.tx;
  CGAffineTransformMakeScale(&t2, v29, v29);
  CGAffineTransformConcat(&v75, &t1, &t2);
  t2 = v75;
  CGAffineTransformMakeTranslation(&v66, v52, v53);
  CGAffineTransformConcat(&t1, &t2, &v66);
  *&v75.tx = *&t1.tx;
  v64 = t1;
LABEL_42:
  v65 = 1;
  if (!atomic_load_explicit(cf + 10, memory_order_acquire) || !CFArrayGetCount(atomic_load_explicit(cf + 10, memory_order_acquire)))
  {
    if (qword_280CB3ED0 != -1)
    {
      dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
    }

    v11 = qword_280CB3EC8;
    if (!os_log_type_enabled(qword_280CB3EC8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    LODWORD(v75.a) = 136446466;
    *(&v75.a + 4) = "MRCDecoderDecodeSampleWithSegmentationMask";
    WORD2(v75.b) = 2114;
    *(&v75.b + 6) = cf;
    v12 = "%{public}s: Symbologies not specified: %{public}@";
    goto LABEL_52;
  }

  Count = CFArrayGetCount(atomic_load_explicit(cf + 10, memory_order_acquire));
  v58 = *MEMORY[0x277CBECE8];
  v59 = 0;
  *&v75.a = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  while (v59 < CFArrayGetCount(atomic_load_explicit(cf + 10, memory_order_acquire)))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(cf + 10, memory_order_acquire), v59);
    if ((v65 & 1) == 0)
    {
      sub_26147736C();
    }

    *&t1.a = MRCRegionCreate(v69, &v64, ValueAtIndex, 0.0, 1.0);
    CFArrayAppendValue(atomic_load_explicit(&v75, memory_order_acquire), atomic_load_explicit(&t1, memory_order_acquire));
    sub_2614EAB98(&t1);
    ++v59;
  }

  Copy = CFArrayCreateCopy(v58, atomic_load_explicit(&v75, memory_order_acquire));
  sub_26147743C(&v75);
LABEL_55:
  atomic_load_explicit(&Copy, memory_order_acquire);
  v61 = MRCDecoderDecodeSampleWithRegions(a4);
  sub_261476A0C(&Copy);
  return v61;
}

atomic_ullong *sub_2614EAB98(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_2614EABCC(atomic_ullong *a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if (a1[7] >= 0x40000)
    {
      v5[0] = 0;
      v5[4] = 0;
      if (sub_2614E9390(a1, @"DataMatrix", v5))
      {
        return 1;
      }

      v4[0] = 0;
      v4[4] = 0;
      if (sub_2614E9390(a1, @"Aztec", v4))
      {
        return 1;
      }

      else
      {
        v3[0] = 0;
        v3[4] = 0;
        return sub_2614E9390(a1, @"MicroQR", v3);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

os_log_t sub_2614EAC84()
{
  result = os_log_create("com.apple.Quagga", "MachineReadableCode");
  qword_280CB3EC8 = result;
  return result;
}

os_log_t sub_2614EACB4()
{
  result = os_log_create("com.apple.Quagga", "OpaqueRepresentation");
  qword_27FEB41A8 = result;
  return result;
}

os_log_t sub_2614EACE4()
{
  result = os_log_create("com.apple.Quagga", "LiveDump");
  qword_27FEB41B8 = result;
  return result;
}

os_log_t sub_2614EAD14()
{
  result = os_log_create("com.apple.Quagga", "Context");
  qword_280CB3EE8 = result;
  return result;
}

os_log_t sub_2614EAD44()
{
  result = os_log_create("com.apple.Quagga", "SampleDecoding");
  qword_280CB3EA8 = result;
  return result;
}

os_log_t sub_2614EAD74()
{
  result = os_log_create("com.apple.Quagga", "PayloadDecoding");
  qword_27FEB41C8 = result;
  return result;
}

os_log_t sub_2614EADA4()
{
  result = os_log_create("com.apple.Quagga", "SegmentationNeuralNetwork");
  qword_27FEB41D8 = result;
  return result;
}

os_log_t sub_2614EADD4()
{
  result = os_log_create("com.apple.Quagga", "MetalHybridBinarizer");
  qword_27FEB41E8 = result;
  return result;
}

os_log_t sub_2614EAE04()
{
  result = os_log_create("com.apple.Quagga", "Imaging");
  qword_27FEB41F8 = result;
  return result;
}

os_log_t sub_2614EAE34()
{
  result = os_log_create("com.apple.Quagga", "PyramidGeneration");
  qword_280CB3EB8 = result;
  return result;
}

os_log_t sub_2614EAE64()
{
  result = os_log_create("com.apple.Quagga", "Inference");
  qword_280CB3ED8 = result;
  return result;
}

os_log_t sub_2614EAE94()
{
  result = os_log_create("com.apple.Quagga", "ANMD");
  qword_280CB3EF8 = result;
  return result;
}

os_log_t sub_2614EAEC4()
{
  result = os_log_create("com.apple.Quagga", "IIE");
  qword_280CB31F8 = result;
  return result;
}

os_log_t sub_2614EAEF4()
{
  result = os_log_create("com.apple.Quagga", "QRFinderPattern");
  qword_280CB3618 = result;
  return result;
}

os_log_t sub_2614EAF24()
{
  result = os_log_create("com.apple.Quagga", "QRAlignmentPattern");
  qword_280CB3628 = result;
  return result;
}

os_log_t sub_2614EAF54()
{
  result = os_log_create("com.apple.Quagga", "MicroQR");
  qword_27FEB4208 = result;
  return result;
}

os_log_t sub_2614EAF84()
{
  result = os_log_create("com.apple.Quagga", "AppClipCode");
  qword_280CB3208 = result;
  return result;
}

os_log_t sub_2614EAFB4()
{
  result = os_log_create("com.apple.Quagga", "iconv");
  qword_27FEB4218 = result;
  return result;
}

uint64_t sub_2614EAFE4()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    keyExistsAndHasValidFormat = 0;
    result = CFPreferencesGetAppBooleanValue(@"_MRCLiveDumpEnabled", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat || (result = CFPreferencesGetAppBooleanValue(@"_MRCLiveDumpEnabled", @"com.apple.Quagga", &keyExistsAndHasValidFormat), keyExistsAndHasValidFormat))
    {
      byte_27FEB4228 = result != 0;
    }
  }

  return result;
}

uint64_t sub_2614EB10C()
{
  if (atomic_load_explicit(&qword_27FEB4250, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = v4;
    v4[0] = sub_2614EB068;
    std::__call_once(&qword_27FEB4250, &v3, sub_2614AD020);
  }

  return qword_27FEB4248;
}

void *sub_2614EB17C(void *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_2614709BC();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_2614709D4();
  }

  v7 = (32 * v2);
  v8 = *a2;
  *(32 * v2 + 0x18) = 0;
  if (v8)
  {
    *v7 = &unk_2873D10C0;
    *(32 * v2 + 8) = v8;
    *(32 * v2 + 0x18) = 32 * v2;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = (v9 + 24);
    v13 = v7 + *a1 - v10;
    while (1)
    {
      v14 = *v12;
      if (*v12)
      {
        if (v12 - 3 == v14)
        {
          *(v13 + 3) = v13;
          (*(**v12 + 24))(*v12, v13);
          goto LABEL_20;
        }

        *(v13 + 3) = v14;
        v15 = v12;
      }

      else
      {
        v15 = v13 + 24;
      }

      *v15 = 0;
LABEL_20:
      v13 += 32;
      v16 = v12 + 1;
      v12 += 4;
      if (v16 == v10)
      {
        do
        {
          sub_2614EB3B4(v9);
          v9 += 32;
        }

        while (v9 != v10);
        break;
      }
    }
  }

  v17 = *a1;
  *a1 = v11;
  *(a1 + 1) = (v7 + 4);
  if (v17)
  {
    operator delete(v17);
  }

  return v7 + 4;
}

void sub_2614EB330(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_2614EB3B4(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2614EB3B4(uint64_t a1)
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

uint64_t sub_2614EB440(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "PFN3mrc5CFRefIP9__CFErrorEERNS_7ContextEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614EB490(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D10C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614EB524(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_2614EB540(std::exception *a1)
{
  sub_2614EB578(a1);

  JUMPOUT(0x2667045D0);
}

void sub_2614EB578(std::exception *this)
{
  this->__vftable = &unk_2873D11E0;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t sub_2614EB5DC(uint64_t a1, char *__s)
{
  *a1 = &unk_2873D11E0;
  v4 = (a1 + 8);
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v5;
  if (v5)
  {
    memmove(v4, __s, v5);
  }

  *(v4 + v6) = 0;
  return a1;
}

void sub_2614EB6C8(std::exception *a1)
{
  sub_2614EB578(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614EB704(uint64_t a1, char *a2)
{
  result = sub_2614EB5DC(a1, a2);
  *result = &unk_2873D1A30;
  return result;
}

BOOL sub_2614EB750(float *a1, float a2, float a3, float a4)
{
  if (vabds_f32(a3, (*(*a1 + 24))(a1)) > a2 || vabds_f32(a4, (*(*a1 + 16))(a1)) > a2)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = vabds_f32(a2, v8);
  return v9 <= 1.0 || v9 <= v8;
}

float sub_2614EB81C(uint64_t a1, float *a2, float *a3, float *a4, float *a5, int *a6, float a7, float a8, float a9, float a10)
{
  v19 = *(a1 + 28);
  v20 = v19 + 1;
  v21 = (a8 + (v19 * (*(*a1 + 16))(a1))) / (v19 + 1);
  v22 = *(a1 + 28);
  v23 = (*(*a1 + 24))(a1);
  v24 = *(a1 + 28);
  v25 = (a9 + (v24 * *(a1 + 20))) / v20;
  v26 = a10 + (v24 * *(a1 + 24));
  *a2 = v21;
  *a3 = (a7 + (v22 * v23)) / v20;
  *a4 = v25;
  result = v26 / v20;
  *a5 = result;
  *a6 = v20;
  return result;
}

void sub_2614EB934()
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_2614C5F94(exception, "This luminance source does not support rotation.");
  __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
}

void sub_2614EB990()
{
  exception = __cxa_allocate_exception(0x20uLL);
  sub_2614C5F94(exception, "This luminance source does not support cropping.");
  __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
}

void sub_2614EB9F4(void **a1)
{
  (*(***a1 + 16))(**a1);
  (*(***a1 + 24))(**a1);
  (*(*(*a1)[1] + 16))((*a1)[1]);
  (*(*(*a1)[1] + 24))((*a1)[1]);
  (*(*(*a1)[2] + 16))((*a1)[2]);
  (*(*(*a1)[2] + 24))((*a1)[2]);
  (*(*(*a1)[3] + 16))((*a1)[3]);
  (*(*(*a1)[3] + 24))((*a1)[3]);
  operator new();
}

void sub_2614EBED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v15 = 24;
  while (1)
  {
    v16 = *(&a14 + v15);
    if (v16)
    {
      sub_2614705CC(v16);
    }

    v15 -= 8;
    if (v15 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_2614EBF20(atomic_uint **a1, atomic_uint **a2, int a3)
{
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
  }

  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

  v114 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
  }

  v113 = v6;
  v102 = v5;
  v103 = v6;
  v7 = sub_261524A00(&v114, &v113);
  if (v6)
  {
    sub_2614705CC(v6);
  }

  if (v5)
  {
    sub_2614705CC(v5);
  }

  v8 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
  }

  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

  v112 = v5;
  if (sub_2614ED0E8(v8, &v112))
  {
    v9 = *a1;
    if (*a1)
    {
      atomic_fetch_add_explicit(v9 + 2, 1u, memory_order_relaxed);
    }

    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
    }

    v111 = v6;
    v10 = !sub_2614ED0E8(v9, &v111);
    v11 = v7 <= 1.0 || v10;
    if (v6)
    {
      sub_2614705CC(v6);
    }

    if (v9)
    {
      sub_2614705CC(v9);
    }
  }

  else
  {
    v11 = 1;
  }

  if (v5)
  {
    sub_2614705CC(v5);
  }

  if (v8)
  {
    sub_2614705CC(v8);
  }

  if (v11)
  {
    goto LABEL_164;
  }

  v12 = (*(*v5 + 16))(v5);
  v13 = (*(*v5 + 24))(v5);
  v14 = (*(*v6 + 16))(v6);
  v15 = (*(*v6 + 24))(v6);
  v16 = (*(**a2 + 16))(*a2);
  v17 = (*(**a2 + 24))();
  v18 = (*(*a2[1] + 16))(a2[1]);
  v19 = (*(*a2[1] + 24))(a2[1]);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v19 - v17;
  v25 = sqrtf((v24 * v24) + ((v18 - v16) * (v18 - v16)));
  v26 = (v18 - v16) / v25;
  v27 = v24 / v25;
  v28 = -(v24 / v25);
  if (!a3)
  {
    v28 = v27;
  }

  v106 = v28;
  if (a3)
  {
    v29 = v26;
  }

  else
  {
    v29 = -v26;
  }

  v99 = ((v7 * 0.125) + 0.5);
  if (v99 >= 4)
  {
    v30 = 4;
  }

  else
  {
    v30 = ((v7 * 0.125) + 0.5);
  }

  if (v22 >= v20)
  {
    v31 = v12;
  }

  else
  {
    v31 = v14;
  }

  v32 = (*a1)[14];
  v33 = -v32;
  v34 = (*a1)[8];
  v35 = v32 - 1;
  v36 = (*a1)[4];
  if (v20 <= v22)
  {
    v20 = v14;
  }

  v37 = v20 + v30;
  if (v37 >= (v36 & v35 | v34 & v33))
  {
    v38 = v36 & v35 | v34 & v33;
  }

  else
  {
    v38 = v37;
  }

  if (v23 >= v21)
  {
    v39 = v13;
  }

  else
  {
    v39 = v15;
  }

  if (v21 <= v23)
  {
    v21 = v15;
  }

  v100 = v30;
  v40 = v21 + v30;
  if (v40 >= (v34 & v35 | v36 & v33))
  {
    v41 = v34 & v35 | v36 & v33;
  }

  else
  {
    v41 = v40;
  }

  v42 = (*(*v5 + 16))(v5);
  v110 = v42;
  v43 = (*(*v5 + 24))(v5);
  v96 = 0;
  v44 = ((v7 * 0.25) + 0.5);
  v45 = ((v31 - v100) & ~((v31 - v100) >> 31));
  v46 = v38;
  v109 = v43;
  v101 = ((v39 - v100) & ~((v39 - v100) >> 31));
  v97 = fabsf(v26);
  v98 = fabsf(v27);
  v47 = -1;
  if (v29 > 0.0)
  {
    v48 = 1;
  }

  else
  {
    v48 = -1;
  }

  if (v106 > 0.0)
  {
    v47 = 1;
  }

  v104 = v47;
  v105 = v48;
  v6 = v103;
  v108 = ((v7 * 0.25) + 0.5);
  v94 = v38;
  v95 = v45;
  while (v42 >= v45 && v42 < v46)
  {
    v50 = v109;
    if (v109 < v101 || v109 >= v41)
    {
      break;
    }

    v52 = *a1;
    if (*a1)
    {
      atomic_fetch_add_explicit(v52 + 2, 1u, memory_order_relaxed);
      atomic_fetch_add_explicit(v52 + 2, 1u, memory_order_relaxed);
      v53 = sub_2614ED4BC(v52, v42, v50);
      sub_2614705CC(v52);
      if (!v53)
      {
LABEL_161:
        sub_2614705CC(v52);
        break;
      }
    }

    else if (!sub_2614ED4BC(0, v42, v109))
    {
      break;
    }

    v54 = v42;
    v55 = v50;
    v56 = sub_261470964(v52, v42, v50);
    if (v44 < 1)
    {
      v59 = 0;
      v71 = 1;
      v5 = v102;
      goto LABEL_119;
    }

    v57 = v56;
    v58 = 1;
    v59 = 1;
    while (1)
    {
      v42 = v26 + v42;
      v50 = v27 + v50;
      if (v52)
      {
        atomic_fetch_add_explicit(v52 + 2, 1u, memory_order_relaxed);
        v60 = sub_2614ED4BC(v52, v42, v50);
        sub_2614705CC(v52);
        if (!v60)
        {
          goto LABEL_115;
        }
      }

      else if (!sub_2614ED4BC(0, v42, v50))
      {
        goto LABEL_115;
      }

      v61 = v42;
      v62 = v50;
      if (v42 == v54 && v55 == v62)
      {
        v42 = v26 + v42;
        v50 = v27 + v50;
        if (v52)
        {
          atomic_fetch_add_explicit(v52 + 2, 1u, memory_order_relaxed);
          v64 = sub_2614ED4BC(v52, v42, v50);
          sub_2614705CC(v52);
          if (!v64)
          {
            goto LABEL_115;
          }
        }

        else if (!sub_2614ED4BC(0, v42, v50))
        {
LABEL_115:
          v71 = 0;
          v109 = v50;
          v110 = v42;
          goto LABEL_118;
        }

        v61 = v42;
        v62 = v50;
      }

      if (v57 == sub_261470964(v52, v61, v62))
      {
        break;
      }

      if (v58 != 1)
      {
        v65 = v42 - v106;
        v66 = v50 - v29;
        if (v52)
        {
          atomic_fetch_add_explicit(v52 + 2, 1u, memory_order_relaxed);
          v67 = sub_2614ED4BC(v52, v65, v50 - v29);
          sub_2614705CC(v52);
          if (!v67)
          {
            goto LABEL_112;
          }
        }

        else if (!sub_2614ED4BC(0, v42 - v106, v50 - v29))
        {
          goto LABEL_112;
        }

        v61 = v65;
        v62 = v66;
        if (v65 == v54 && v55 == v62)
        {
          v69 = v65 - v106;
          if (v52)
          {
            atomic_fetch_add_explicit(v52 + 2, 1u, memory_order_relaxed);
            v70 = sub_2614ED4BC(v52, v69, v66 - v29);
            sub_2614705CC(v52);
            if (!v70)
            {
              goto LABEL_112;
            }
          }

          else if (!sub_2614ED4BC(0, v69, v66 - v29))
          {
            goto LABEL_112;
          }

          v61 = v69;
          v62 = (v66 - v29);
        }

        if (v57 == sub_261470964(v52, v61, v62))
        {
          break;
        }
      }

LABEL_112:
      v59 = v58++ < v108;
      if (!--v44)
      {
        v110 = v42;
        goto LABEL_117;
      }
    }

    v42 = v61 + 0.5;
    v110 = v42;
    v50 = v62 + 0.5;
LABEL_117:
    v109 = v50;
    v71 = 1;
LABEL_118:
    v5 = v102;
    v6 = v103;
LABEL_119:
    v72 = v59 & v71;
    if (v52)
    {
      sub_2614705CC(v52);
    }

    if (v72)
    {
      v52 = *a1;
      if (*a1)
      {
        atomic_fetch_add_explicit(v52 + 2, 1u, memory_order_relaxed);
        atomic_fetch_add_explicit(v52 + 2, 1u, memory_order_relaxed);
        v73 = sub_2614ED4BC(v52, v42, v50);
        sub_2614705CC(v52);
        if (!v73)
        {
LABEL_160:
          v5 = v102;
          v6 = v103;
          goto LABEL_161;
        }

LABEL_126:
        v74 = v42;
        v75 = v50;
        v76 = v42;
        v77 = v50;
        v78 = sub_261470964(v52, v76, v77);
        if (v98 <= v97)
        {
          if (v99 < 1)
          {
            goto LABEL_144;
          }

          v82 = v100;
          while (1)
          {
            if (v52)
            {
              atomic_fetch_add_explicit(v52 + 2, 1u, memory_order_relaxed);
              v83 = v77 + v105;
              v84 = sub_2614ED4BC(v52, v74, (v77 + v105));
              sub_2614705CC(v52);
              if (!v84)
              {
                goto LABEL_160;
              }
            }

            else
            {
              v83 = v77 + v105;
              if (!sub_2614ED4BC(0, v74, (v77 + v105)))
              {
                goto LABEL_162;
              }
            }

            if (v78 != sub_261470964(v52, v74, v83))
            {
              break;
            }

            v77 = v83;
            if (!--v82)
            {
              goto LABEL_144;
            }
          }

          v86 = v96;
          v87 = v96 >> 3;
          if (((v96 >> 3) + 1) >> 61)
          {
            goto LABEL_170;
          }

          if (v96 >> 3 != -1)
          {
            sub_261470B0C((v96 >> 3) + 1);
          }

          v5 = v102;
          v90 = (8 * v87);
          *v90 = v74;
          v90[1] = v77 + (v29 > 0.0);
          v96 = 8 * v87 + 8;
          memcpy(0, 0, v86);
          v91 = &v109;
          LODWORD(v76) = v77;
LABEL_157:
          v6 = v103;
          *v91 = v76 + 0.5;
          v85 = 1;
          if (!v52)
          {
            goto LABEL_158;
          }

LABEL_145:
          sub_2614705CC(v52);
          v46 = v94;
          v45 = v95;
          if (v85)
          {
LABEL_159:
            v42 = v110;
            v44 = v108;
            continue;
          }
        }

        else
        {
          if (v99 >= 1)
          {
            v79 = v100;
            while (1)
            {
              if (v52)
              {
                atomic_fetch_add_explicit(v52 + 2, 1u, memory_order_relaxed);
                v80 = v76 + v104;
                v81 = sub_2614ED4BC(v52, (v76 + v104), v75);
                sub_2614705CC(v52);
                if (!v81)
                {
                  goto LABEL_160;
                }
              }

              else
              {
                v80 = v76 + v104;
                if (!sub_2614ED4BC(0, (v76 + v104), v75))
                {
                  goto LABEL_162;
                }
              }

              if (v78 != sub_261470964(v52, v80, v75))
              {
                break;
              }

              v76 = v80;
              if (!--v79)
              {
                goto LABEL_144;
              }
            }

            v88 = v96;
            v89 = v96 >> 3;
            if (!(((v96 >> 3) + 1) >> 61))
            {
              if (v96 >> 3 != -1)
              {
                sub_261470B0C((v96 >> 3) + 1);
              }

              v5 = v102;
              v92 = (8 * v89);
              *v92 = v76 + (v106 > 0.0);
              v92[1] = v75;
              v96 = 8 * v89 + 8;
              memcpy(0, 0, v88);
              v91 = &v110;
              goto LABEL_157;
            }

LABEL_170:
            sub_2614709BC();
          }

LABEL_144:
          v85 = 0;
          v5 = v102;
          v6 = v103;
          if (v52)
          {
            goto LABEL_145;
          }

LABEL_158:
          v46 = v94;
          v45 = v95;
          if (v85)
          {
            goto LABEL_159;
          }
        }
      }

      else
      {
        if (sub_2614ED4BC(0, v42, v50))
        {
          goto LABEL_126;
        }

LABEL_162:
        v5 = v102;
        v6 = v103;
      }
    }

    break;
  }

  if ((v96 >> 3) >= 4)
  {
    operator new();
  }

LABEL_164:
  if (v6)
  {
    sub_2614705CC(v6);
  }

  if (v5)
  {
    sub_2614705CC(v5);
  }

  return 0;
}

void sub_2614ECDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, atomic_uint *a20, atomic_uint *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, atomic_uint *a30)
{
  sub_2614705CC(v30);
  if (a30)
  {
    sub_2614705CC(a30);
  }

  sub_2614705CC(a20);
  sub_2614705CC(v32);
  if (v31)
  {
    operator delete(v31);
  }

  if (a21)
  {
    sub_2614705CC(a21);
  }

  if (a20)
  {
    sub_2614705CC(a20);
  }

  _Unwind_Resume(a1);
}

atomic_uint **sub_2614ECF2C(atomic_uint **a1)
{
  v2 = a1[1];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  if (*a1)
  {
    sub_2614705CC(*a1);
  }

  return a1;
}

void sub_2614ECF68(void ***a1)
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
        if (v6)
        {
          sub_2614705CC(v6);
        }

        v8 = *(v4 - 2);
        v4 -= 16;
        v7 = v8;
        if (v8)
        {
          sub_2614705CC(v7);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

float sub_2614ECFF8(void *a1)
{
  (*(**a1 + 16))(*a1);
  v2 = (*(**a1 + 24))();
  (*(*a1[1] + 16))(a1[1]);
  return v2 - (*(*a1[1] + 24))(a1[1]);
}

BOOL sub_2614ED0E8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (a1)
  {
    atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed);
    v3 = *a2;
  }

  v5 = (*(*v3 + 16))(v3);
  v6 = (*(**a2 + 24))();
  v7 = sub_2614ED4BC(a1, v5, v6);
  if (a1)
  {
    sub_2614705CC(a1);
  }

  return v7;
}

void sub_2614ED1AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614ED1C4(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3)
{
  v6 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
  }

  v7 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
  }

  v39 = v7;
  if (sub_2614ED0E8(v6, &v39))
  {
    v8 = *a1;
    if (*a1)
    {
      atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
    }

    v9 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v9 + 2, 1u, memory_order_relaxed);
    }

    v38 = v9;
    v10 = !sub_2614ED0E8(v8, &v38);
    if (v9)
    {
      sub_2614705CC(v9);
    }

    if (v8)
    {
      sub_2614705CC(v8);
    }
  }

  else
  {
    v10 = 1;
  }

  if (v7)
  {
    sub_2614705CC(v7);
  }

  if (v6)
  {
    sub_2614705CC(v6);
  }

  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = (*(**a2 + 16))();
  v13 = (*(**a2 + 24))();
  v14 = (*(**a3 + 16))();
  v15 = (*(**a3 + 24))();
  if (v15 - v13 >= 0)
  {
    v16 = v15 - v13;
  }

  else
  {
    v16 = v13 - v15;
  }

  if (v14 - v12 >= 0)
  {
    v17 = v14 - v12;
  }

  else
  {
    v17 = v12 - v14;
  }

  if (v16 > v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (v16 > v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  if (v16 > v17)
  {
    v20 = v15;
  }

  else
  {
    v20 = v14;
  }

  if (v16 <= v17)
  {
    v21 = v13;
  }

  else
  {
    v15 = v14;
    v21 = v12;
  }

  if (v16 > v17)
  {
    v22 = v13;
  }

  else
  {
    v22 = v12;
  }

  v36 = v15;
  v37 = v18;
  if (v21 < v15)
  {
    v23 = 1;
  }

  else
  {
    v23 = -1;
  }

  v35 = v23;
  if (v22 < v20)
  {
    v24 = 1;
  }

  else
  {
    v24 = -1;
  }

  if (v22 == v20)
  {
    return 0;
  }

  v25 = *a1;
  v26 = sub_261470964(v25, v12, v13);
  v27 = v19;
  LODWORD(v11) = 0;
  v34 = v27;
  v28 = -v27 >> 1;
  do
  {
    if (v16 <= v17)
    {
      v29 = v22;
    }

    else
    {
      v29 = v21;
    }

    v30 = v29;
    if (v16 <= v17)
    {
      v31 = v21;
    }

    else
    {
      v31 = v22;
    }

    v32 = sub_261470964(v25, v30, v31);
    v11 = v11 + ((v26 ^ v32) & 1);
    if ((v26 ^ v32))
    {
      v26 = v32;
    }

    v28 += v37;
    if (v28 >= 1)
    {
      if (v21 == v36)
      {
        return v11;
      }

      v21 += v35;
      v28 -= v34;
    }

    v22 += v24;
  }

  while (v20 != v22);
  return v11;
}