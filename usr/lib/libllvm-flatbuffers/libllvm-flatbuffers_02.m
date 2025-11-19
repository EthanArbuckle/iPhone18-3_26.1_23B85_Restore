uint64_t sub_213CA1530(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

size_t *sub_213CA1658(size_t *result, __int128 *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_213C97BD4();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v16[4] = result;
    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_213C97BD4();
    }

    v11 = 24 * v6;
    if (*(a2 + 23) < 0)
    {
      sub_213C9D958(v11, *a2, *(a2 + 1));
    }

    else
    {
      *v11 = *a2;
      *(v11 + 16) = *(a2 + 2);
    }

    v10 = v11 + 24;
    v12 = *v2;
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    *v2 = v14;
    v2[1] = v11 + 24;
    v15 = v2[2];
    v2[2] = 0;
    v16[2] = v12;
    v16[3] = v15;
    v16[0] = v12;
    v16[1] = v12;
    result = sub_213C9DE90(v16);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_213C9D958(result[1], *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = v4 + 24;
  }

  v2[1] = v10;
  return result;
}

uint64_t sub_213CA17D8(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(a2 + 23);
    v7 = *a2;
    if (v6 >= 0)
    {
      v7 = a2;
    }

    if (v6 < 0)
    {
      v6 = a2[1];
    }

    v13 = v7;
    v14 = v6;
    v8 = sub_213C986FC((v3 + 32), &v13);
    if (v8 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v8 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  v10 = *(v5 + 32);
  v11 = *(v5 + 55);
  if (v11 >= 0)
  {
    v10 = (v5 + 32);
  }

  v12 = *(v5 + 40);
  if (v11 >= 0)
  {
    v12 = *(v5 + 55);
  }

  v13 = v10;
  v14 = v12;
  if ((sub_213C986FC(a2, &v13) & 0x80000000) != 0)
  {
    return v2;
  }

  return v5;
}

void *sub_213CA18A0(uint64_t a1, uint64_t a2)
{
  result = sub_213CC10B0(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_213CA194C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? a2 : *a2;
  v7 = v5 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v8 = a1 + 8;
  do
  {
    v9 = *(v3 + 55);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = *(v3 + 32);
      v9 = *(v3 + 40);
    }

    else
    {
      v10 = (v3 + 32);
    }

    if (v7 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    v12 = memcmp(v10, v6, v11);
    if (v9 < v7)
    {
      v13 = -1;
    }

    else
    {
      v13 = v7 < v9;
    }

    if (v12)
    {
      v13 = v12;
    }

    if (v13 >= 0)
    {
      v8 = v3;
    }

    v3 = *(v3 + ((v13 >> 28) & 8));
  }

  while (v3);
  if (v8 == v2)
  {
    return v2;
  }

  v15 = *(v8 + 32);
  v16 = *(v8 + 55);
  if (v16 >= 0)
  {
    v15 = v8 + 32;
  }

  v17 = *(v8 + 40);
  if (v16 >= 0)
  {
    v17 = *(v8 + 55);
  }

  v18[0] = v15;
  v18[1] = v17;
  if ((sub_213C986FC(a2, v18) & 0x80000000) != 0)
  {
    return v2;
  }

  return v8;
}

uint64_t *sub_213CA1A50(uint64_t *result, uint64_t *a2)
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

void sub_213CA1DC8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_213CA1DC8(a1, *a2);
    sub_213CA1DC8(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

BOOL flatbuffers::compareName<flatbuffers::StructDef>(uint64_t a1, uint64_t a2)
{
  flatbuffers::Namespace::GetFullyQualifiedName(*(a1 + 128), a1, 0x3E8uLL, &__p);
  flatbuffers::Namespace::GetFullyQualifiedName(*(a2 + 128), a2, 0x3E8uLL, &v13);
  v3 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
  v4 = v13.__r_.__value_.__r.__words[0];
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v13;
  }

  else
  {
    v5 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__l.__size_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (size >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = size;
  }

  v11 = memcmp(p_p, v5, v10);
  if (v3 < 0)
  {
    operator delete(v4);
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_18:
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v8 < size;
  }
}

uint64_t sub_213CA2098(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v124 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = (*a3)(a2[-1].i64[1], v10->i64[0]);
      if (result)
      {
        v78 = v10->i64[0];
        v10->i64[0] = a2[-1].i64[1];
LABEL_105:
        a2[-1].i64[1] = v78;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = &v10->u64[1];
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v87 = *v85;
            v86 = v85[1];
            v85 = v81;
            result = (*a3)(v86, v87);
            if (result)
            {
              v88 = *v85;
              v89 = v84;
              while (1)
              {
                *(&v10->i64[1] + v89) = *(v10->i64 + v89);
                if (!v89)
                {
                  break;
                }

                result = (*a3)(v88, *(&v10->i64[-1] + v89));
                v89 -= 8;
                if ((result & 1) == 0)
                {
                  v90 = (&v10->i64[1] + v89);
                  goto LABEL_127;
                }
              }

              v90 = v10;
LABEL_127:
              *v90 = v88;
            }

            v81 = (v85 + 1);
            v84 += 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v119 = v9->i64[0];
          v118 = v9->i64[1];
          v9 = v81;
          result = (*a3)(v118, v119);
          if (result)
          {
            v120 = v9->i64[0];
            v121 = v9;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = (*a3)(v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v81 = &v9->u64[1];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v91 = (v11 - 2) >> 1;
        v125 = v91;
        do
        {
          v92 = v91;
          if (v125 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = &v9->i64[v93];
            if (2 * v91 + 2 < v11 && (*a3)(*v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = &v9->i64[v92];
            result = (*a3)(*v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v125 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = &v9->i64[v98];
                v99 = 2 * v93 + 2;
                if (v99 < v11 && (*a3)(*v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = (*a3)(*v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = v100;
          v102 = 0;
          v126 = v9->i64[0];
          v103 = v9;
          do
          {
            v104 = &v103[v102];
            v105 = v104 + 1;
            v106 = (2 * v102) | 1;
            v107 = 2 * v102 + 2;
            if (v107 >= v11)
            {
              v102 = (2 * v102) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = (*a3)(*(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v102 = v107;
              }

              else
              {
                v102 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v102 <= ((v11 - 2) >> 1));
          v100 = v101 - 1;
          if (v105 == v101 - 1)
          {
            *v105 = v126;
          }

          else
          {
            *v105 = *v100;
            *v100 = v126;
            v110 = (v105 - v9 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = &v9->i64[v112 >> 1];
              result = (*a3)(*v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = &v9->i64[v113];
                  result = (*a3)(*v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v11-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(v9->i64[0], v9->i64[v12]);
      v18 = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (v17)
      {
        v19 = v9->i64[v12];
        if (v18)
        {
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v19;
        }

        else
        {
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v19;
          if ((*a3)(a2[-1].i64[1]))
          {
            v31 = v9->i64[0];
            v9->i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v22;
        if ((*a3)(v9->i64[0], v9->i64[v12]))
        {
          v23 = v9->i64[v12];
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = (v13)(v9->i64[v12], v9->i64[0]);
    v15 = (*a3)(a2[-1].i64[1], v9->i64[v12]);
    if (v14)
    {
      v16 = v9->i64[0];
      if (v15)
      {
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v16;
      }

      else
      {
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v16;
        if ((*a3)(a2[-1].i64[1]))
        {
          v24 = v9->i64[v12];
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9->i64[v12];
      v9->i64[v12] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if ((*a3)(v9->i64[v12], v9->i64[0]))
      {
        v21 = v9->i64[0];
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = (*a3)(v9->i64[v12 - 1], v9->i64[1]);
    v27 = (*a3)(a2[-1].i64[0], v9->i64[v12 - 1]);
    if (v26)
    {
      v28 = v9->i64[1];
      if (v27)
      {
        v9->i64[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v28;
        if ((*a3)(a2[-1].i64[0]))
        {
          v32 = v9->i64[v25];
          v9->i64[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9->i64[v25];
      v9->i64[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if ((*a3)(v9->i64[v25], v9->i64[1]))
      {
        v30 = v9->i64[1];
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v30;
      }
    }

    v33 = v12 + 1;
    v34 = (*a3)(v9->i64[v12 + 1], v9[1].i64[0]);
    v35 = (*a3)(a2[-2].i64[1], v9->i64[v12 + 1]);
    if (v34)
    {
      v36 = v9[1].i64[0];
      if (v35)
      {
        v9[1].i64[0] = a2[-2].i64[1];
        a2[-2].i64[1] = v36;
      }

      else
      {
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v36;
        if ((*a3)(a2[-2].i64[1]))
        {
          v39 = v9->i64[v33];
          v9->i64[v33] = a2[-2].i64[1];
          a2[-2].i64[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9->i64[v33];
      v9->i64[v33] = a2[-2].i64[1];
      a2[-2].i64[1] = v37;
      if ((*a3)(v9->i64[v33], v9[1].i64[0]))
      {
        v38 = v9[1].i64[0];
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v38;
      }
    }

    v40 = (*a3)(v9->i64[v12], v9->i64[v25]);
    v41 = (*a3)(v9->i64[v33], v9->i64[v12]);
    if ((v40 & 1) == 0)
    {
      v43 = v9->i64[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v9->i64[v12] = v9->i64[v33];
      v9->i64[v33] = v43;
      v44 = v9->i64[v25];
      v45 = (*a3)();
      v43 = v9->i64[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v9->i64[v25];
      v9->i64[v25] = v43;
      v9->i64[v12] = v46;
      goto LABEL_53;
    }

    v42 = v9->i64[v25];
    if (v41)
    {
      v9->i64[v25] = v9->i64[v33];
      v9->i64[v33] = v42;
      v43 = v9->i64[v12];
    }

    else
    {
      v9->i64[v25] = v9->i64[v12];
      v9->i64[v12] = v42;
      v47 = (*a3)(v9->i64[v33]);
      v43 = v9->i64[v12];
      if (v47)
      {
        v46 = v9->i64[v33];
        v9->i64[v12] = v46;
        v9->i64[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = v9->i64[0];
    v9->i64[0] = v43;
    v9->i64[v12] = v48;
LABEL_55:
    --a4;
    v49 = v9->i64[0];
    if (a5 & 1) != 0 || (v50 = (*a3)(v9[-1].i64[1], v9->i64[0]), v49 = v9->i64[0], (v50))
    {
      v51 = 0;
      do
      {
        v52 = (*a3)(v9->i64[++v51], v49);
      }

      while ((v52 & 1) != 0);
      v53 = (v9 + v51 * 8);
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = v54[-1].i64[1];
          v54 = (v54 - 8);
        }

        while (((*a3)(v56, v49) & 1) == 0);
      }

      else
      {
        do
        {
          v55 = v54[-1].i64[1];
          v54 = (v54 - 8);
        }

        while (!(*a3)(v55, v49));
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 8);
      }

      else
      {
        v57 = &v9->i64[v51];
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v60 = v57[1];
            ++v57;
          }

          while (((*a3)(v60, v49) & 1) != 0);
          do
          {
            v61 = *--v58;
          }

          while (!(*a3)(v61, v49));
        }

        while (v57 < v58);
        v62 = (v57 - 1);
        a2 = v124;
      }

      if (v62 != v9)
      {
        v9->i64[0] = v62->i64[0];
      }

      v62->i64[0] = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v63 = sub_213CA1028(v9, v62, a3);
      v10 = &v62->u64[1];
      result = sub_213CA1028(&v62->i64[1], a2, a3);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        result = sub_213CA2098(v9, v62, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v62->u64[1];
      }
    }

    else
    {
      result = (*a3)(v9->i64[0], a2[-1].i64[1]);
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v49, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = &v9->u64[1];
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = (*a3)(v49, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v49, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v49, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v49, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v9)
      {
        v9->i64[0] = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return sub_213CA0BCC(v10, &v10->i64[1], v10[1].i64, &a2[-1].i64[1], a3);
    }

    if (v11 == 5)
    {
      sub_213CA0BCC(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v72;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v73 = v10[1].i64[0];
      v74 = v10->i64[1];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v73;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v76 = v10->i64[1];
      v75 = v10[1].i64[0];
      v77 = v10->i64[0];
      v10->i64[1] = v75;
      v10[1].i64[0] = v76;
      result = (*a3)(v75, v77);
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  v79 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(a2[-1].i64[1], v10->i64[1]);
  if ((v79 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v117 = v10->i64[1];
    v10->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v117;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_166:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v80 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v80;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v80;
    result = (*a3)(a2[-1].i64[1]);
    if (result)
    {
      v78 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      goto LABEL_105;
    }
  }

  return result;
}

BOOL flatbuffers::compareName<flatbuffers::EnumDef>(uint64_t a1, uint64_t a2)
{
  flatbuffers::Namespace::GetFullyQualifiedName(*(a1 + 128), a1, 0x3E8uLL, &__p);
  flatbuffers::Namespace::GetFullyQualifiedName(*(a2 + 128), a2, 0x3E8uLL, &v13);
  v3 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
  v4 = v13.__r_.__value_.__r.__words[0];
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v13;
  }

  else
  {
    v5 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__l.__size_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (size >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = size;
  }

  v11 = memcmp(p_p, v5, v10);
  if (v3 < 0)
  {
    operator delete(v4);
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_18:
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v8 < size;
  }
}

uint64_t flatbuffers::GenerateTextFromTable(uint64_t a1, int *a2, uint64_t a3, std::string *a4)
{
  v7 = sub_213C9DFB8(a1 + 128, a3);
  if (a1 + 136 == v7)
  {
    return 0;
  }

  v8 = *(v7 + 56);
  if (!v8)
  {
    return 0;
  }

  ++*(v8 + 144);

  return sub_213CA2CD0(a1, a2, v8, a4);
}

uint64_t sub_213CA2CD0(uint64_t a1, int *a2, uint64_t a3, std::string *this)
{
  v10[0] = (a1 + 728);
  v10[1] = this;
  std::string::reserve(this, 0x400uLL);
  v8 = sub_213CA31E8(v10, a3, a2, 0);
  if (v8 && (*(a1 + 736) & 0x80000000) == 0)
  {
    std::string::push_back(this, 10);
  }

  return v8;
}

uint64_t flatbuffers::GenerateText(uint64_t a1, unsigned int *a2, std::string *this)
{
  v3 = a2 + 1;
  if (*(a1 + 955) != 1)
  {
    v3 = a2;
  }

  return sub_213CA2CD0(a1, (v3 + *v3), *(a1 + 576), this);
}

uint64_t flatbuffers::GenerateTextFile(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a1 + 728) == 1)
  {
    memset(&v15, 0, sizeof(v15));
    sub_213CC16F8(a1 + 560, *(a1 + 729), &v15);
    sub_213CA2EEC(&__p, a2, a3);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

LABEL_20:
    v8 = flatbuffers::SaveFile(p_p, v11, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_23;
  }

  v5 = *(a1 + 384);
  v6 = *(a1 + 576);
  if (*(a1 + 368) - v5 + *(a1 + 376))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 1;
  }

  memset(&v15, 0, sizeof(v15));
  v9 = 4;
  if (!*(a1 + 955))
  {
    v9 = 0;
  }

  if (sub_213CA2CD0(a1, (v5 + v9 + *(v5 + v9)), v6, &v15))
  {
    sub_213CA2EEC(&__p, a2, a3);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    goto LABEL_20;
  }

  v8 = 0;
LABEL_23:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_213CA2EEC(std::string *a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  p_p = &__p;
  sub_213C9E0BC(&__p, v7 + v6);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(p_p, v9, v6);
  }

  v10 = p_p + v6;
  if (v7)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    memmove(v10, v11, v7);
  }

  v10[v7] = 0;
  v12 = std::string::append(&__p, ".json");
  *a1 = *v12;
  v12->__r_.__value_.__r.__words[0] = 0;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void flatbuffers::TextMakeRule(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 368) - *(a1 + 384) + *(a1 + 376) && *(a1 + 576))
  {
    flatbuffers::StripExtension(a3, &__p);
    flatbuffers::StripPath(&__p, &v23);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_213CA2EEC(&v21, a2, &v23.__r_.__value_.__l.__data_);
    v8 = std::string::append(&v21, ": ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = std::string::append(&__p, v11, v12);
    v14 = v13->__r_.__value_.__r.__words[2];
    *a4 = *&v13->__r_.__value_.__l.__data_;
    *(a4 + 16) = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    flatbuffers::Parser::GetIncludedFilesRecursive(*(a1 + 576) + 24, &__p);
    v15 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[1])
    {
      do
      {
        std::operator+<char>();
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v21;
        }

        else
        {
          v16 = v21.__r_.__value_.__r.__words[0];
        }

        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v21.__r_.__value_.__l.__size_;
        }

        std::string::append(a4, v16, size);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v18 = *(v15 + 8);
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = v18->__r_.__value_.__r.__words[0];
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = *(v15 + 16);
            v20 = v19->__r_.__value_.__r.__words[0] == v15;
            v15 = v19;
          }

          while (!v20);
        }

        v15 = v19;
      }

      while (v19 != &__p.__r_.__value_.__r.__words[1]);
    }

    sub_213CA1DC8(&__p, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a4 + 23) = 0;
    *a4 = 0;
  }
}

uint64_t sub_213CA31E8(std::string **a1, uint64_t a2, int *a3, unsigned int a4)
{
  std::string::push_back(a1[1], 123);
  v8 = (*a1)->__r_.__value_.__r.__words[1];
  v9 = *(a2 + 176);
  __n = a4;
  if (v9 != *(a2 + 184))
  {
    v10 = 0;
    v11 = 0;
    v12 = (v8 & ~(v8 >> 31)) + a4;
    v13 = *(a2 + 200);
    do
    {
      v14 = *v9;
      if (v13)
      {
        v16 = 1;
      }

      else
      {
        v15 = (a3 - *a3);
        v16 = *v15 > *(v14 + 208) && *(v15 + *(v14 + 208)) != 0;
      }

      if ((*(v14 + 221) & 1) == 0 && !*(v14 + 224) && !(v13 & 1 | (*(v14 + 152) != 14 || !v16)) && ((*a1)->__r_.__value_.__s.__data_[6] & 1) == 0)
      {
        v69 = *a3;
        if (*(a3 - v69) <= *(v14 + 208))
        {
          v70 = 0;
        }

        else
        {
          v70 = *(a3 + *(v14 + 208) - v69);
          LODWORD(v69) = *(a3 + *(a3 + *(v14 + 208) - v69));
        }

        v16 = *(a3 + v70 + v69) != 0;
      }

      v17 = *a1;
      if ((*a1)->__r_.__value_.__s.__data_[5] != 1 || ((v18 = *(v14 + 152), v18 <= 0xFFFFFFFB) ? (v19 = v18 - 1 > 0xB) : (v19 = 0), v19))
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v14 + 216) ^ 1;
      }

      if ((v16 | v20))
      {
        if (v10 && (v17[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
          v17 = *a1;
        }

        if ((v17->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }

        std::string::append(a1[1], v12, 32);
        if ((*a1)->__r_.__value_.__s.__data_[1] == 1)
        {
          std::string::push_back(a1[1], 34);
        }

        v21 = *(v14 + 23);
        if (v21 >= 0)
        {
          v22 = v14;
        }

        else
        {
          v22 = *v14;
        }

        if (v21 >= 0)
        {
          v23 = *(v14 + 23);
        }

        else
        {
          v23 = *(v14 + 8);
        }

        std::string::append(a1[1], v22, v23);
        v24 = *a1;
        if ((*a1)->__r_.__value_.__s.__data_[1] == 1)
        {
          std::string::push_back(a1[1], 34);
          v24 = *a1;
        }

        if (v24[9].__r_.__value_.__s.__data_[10] != 1 || (*(v14 + 152) & 0xFFFFFFFE) != 0xE)
        {
          std::string::push_back(a1[1], 58);
        }

        std::string::push_back(a1[1], 32);
        v26 = *(v14 + 152);
        switch(v26)
        {
          case -4:
            sub_213CC1CB0(a1, v14, a3, *(a2 + 200));
            goto LABEL_59;
          case -3:
          case 10:
            sub_213CA3A04(a1, v14, a3, *(a2 + 200));
            goto LABEL_59;
          case -2:
            sub_213CA3AFC(a1, v14, a3, *(a2 + 200));
            goto LABEL_59;
          case -1:
          case 6:
            sub_213CC1D50(a1, v14, a3, *(a2 + 200));
            goto LABEL_59;
          case 0:
          case 1:
          case 2:
          case 4:
            sub_213CA3BB4(a1, v14, a3, *(a2 + 200));
            goto LABEL_59;
          case 3:
            v50 = *(v14 + 208);
            if (*(a2 + 200) == 1)
            {
              v62 = a3 + v50;
              goto LABEL_103;
            }

            if (*(v14 + 207) >= 0)
            {
              v51 = (v14 + 184);
            }

            else
            {
              v51 = *(v14 + 184);
            }

            v52 = v51;
            do
            {
              v54 = *v52++;
              v53 = v54;
              v55 = v54 - 48;
              if (v54)
              {
                v56 = v55 > 9;
              }

              else
              {
                v56 = 0;
              }
            }

            while (v56);
            if (v53 == 48 && (*v52 & 0xDF) == 0x58)
            {
              __n_4[0] = v51;
              v71 = flatbuffers::ClassicLocale::Get(v25);
              v58 = strtoll_l(v51, __n_4, 16, v71);
              v72 = 0;
              if (__n_4[0] == v51 || *__n_4[0])
              {
                goto LABEL_100;
              }
            }

            else
            {
              __n_4[0] = v51;
              v57 = flatbuffers::ClassicLocale::Get(v25);
              v58 = strtoll_l(v51, __n_4, 10, v57);
              if (__n_4[0] == v51 || *__n_4[0] != 0)
              {
                v72 = 0;
                goto LABEL_100;
              }
            }

            v72 = 0x80;
            if (v58 > -128)
            {
              v72 = v58;
            }

            if (v58 > 127)
            {
              v72 = 127;
            }

LABEL_100:
            v60 = (a3 - *a3);
            if (*v60 > v50)
            {
              v61 = *(v60 + v50);
              if (v61)
              {
                v62 = a3 + v61;
LABEL_103:
                v72 = *v62;
              }
            }

            sub_213CA47C0(a1, v72, *(v14 + 152), *(v14 + 168));
            goto LABEL_59;
          case 5:
            sub_213CC1E0C(a1, v14, a3, *(a2 + 200));
            goto LABEL_59;
          case 7:
            sub_213CC1ED4(a1, v14, a3, *(a2 + 200));
            goto LABEL_59;
          case 8:
            v27 = *(v14 + 208);
            if (*(a2 + 200) == 1)
            {
              v42 = (a3 + v27);
              goto LABEL_57;
            }

            if (*(v14 + 207) >= 0)
            {
              v28 = (v14 + 184);
            }

            else
            {
              v28 = *(v14 + 184);
            }

            v29 = v28;
            do
            {
              v31 = *v29++;
              v30 = v31;
              v32 = v31 - 48;
              if (v31)
              {
                v33 = v32 > 9;
              }

              else
              {
                v33 = 0;
              }
            }

            while (v33);
            if (v30 == 48 && (*v29 & 0xDF) == 0x58)
            {
              __n_4[0] = v28;
              v34 = flatbuffers::ClassicLocale::Get(v25);
              v35 = v28;
              v36 = 16;
            }

            else
            {
              __n_4[0] = v28;
              v34 = flatbuffers::ClassicLocale::Get(v25);
              v35 = v28;
              v36 = 10;
            }

            v37 = strtoll_l(v35, __n_4, v36, v34);
            if (__n_4[0] != v28 && *__n_4[0] == 0)
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            if (v38 >= 0xFFFFFFFF)
            {
              LODWORD(v38) = -1;
            }

            if (__n_4[0] != v28 && *__n_4[0] == 0)
            {
              v39 = v38;
            }

            else
            {
              v39 = 0;
            }

            v40 = (a3 - *a3);
            if (*v40 > v27)
            {
              v41 = *(v40 + v27);
              if (v41)
              {
                v42 = (a3 + v41);
LABEL_57:
                v39 = *v42;
              }
            }

            sub_213CA4080(a1, v39, *(v14 + 152), *(v14 + 168));
            goto LABEL_59;
          case 9:
            sub_213CC1F98(a1, v14, a3, *(a2 + 200));
            goto LABEL_59;
          case 11:
            sub_213CC2040(a1, v14, a3, *(a2 + 200));
            goto LABEL_59;
          case 12:
            sub_213CC20E0(a1, v14, a3, *(a2 + 200));
            goto LABEL_59;
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
            if (*(a2 + 200) == 1)
            {
              v49 = (a3 + *(v14 + 208));
            }

            else
            {
              if (*(v14 + 221) == 1)
              {
                v64 = *a3;
                if (*(a3 - v64) <= *(v14 + 208))
                {
                  v65 = 0;
                }

                else
                {
                  v65 = *(a3 + *(v14 + 208) - v64);
                  LODWORD(v64) = *(a3 + *(a3 + *(v14 + 208) - v64));
                }

                v73 = a3 + v65 + v64 + *(a3 + v65 + v64);
                v74 = v73[2];
                v73 += 2;
                v75 = v73[1];
                __n_4[0] = &v73[-v75];
                __n_4[1] = (((v74 >> 2) << 32) | ((1 << (v74 & 3)) << 8) | v75);
                sub_213CC16F8(__n_4, (*a1)->__r_.__value_.__s.__data_[1], a1[1]);
                goto LABEL_59;
              }

              v46 = *(v14 + 224);
              if (v46)
              {
                v66 = *a3;
                if (*(a3 - v66) <= *(v14 + 208))
                {
                  v67 = 0;
                }

                else
                {
                  v67 = *(a3 + *(v14 + 208) - v66);
                  LODWORD(v66) = *(a3 + *(a3 + *(v14 + 208) - v66));
                }

                result = sub_213CA31E8(a1, v46, a3 + v67 + v66 + *(a3 + v67 + v66 + 4) + 4, v12);
                if (!result)
                {
                  return result;
                }

                goto LABEL_59;
              }

              if (v26 == 15 && *(*(v14 + 160) + 200) == 1)
              {
                v63 = (a3 - *a3);
                if (*v63 > *(v14 + 208) && *(v63 + *(v14 + 208)))
                {
                  v49 = (a3 + *(v63 + *(v14 + 208)));
                  goto LABEL_76;
                }
              }

              else
              {
                v47 = (a3 - *a3);
                if (*v47 > *(v14 + 208) && *(v47 + *(v14 + 208)))
                {
                  v48 = *(v47 + *(v14 + 208));
                  v49 = (a3 + v48 + *(a3 + v48));
                  goto LABEL_76;
                }
              }

              v49 = 0;
            }

LABEL_76:
            if ((sub_213CA4B54(a1, v49, v14 + 152, v12, v11, 0xFFFFFFFF) & 1) == 0)
            {
              return 0;
            }

LABEL_59:
            ++v10;
            v43 = *(v14 + 208);
            if (*(a2 + 200) == 1)
            {
              v11 = (a3 + v43);
              v13 = 1;
            }

            else
            {
              v44 = (a3 - *a3);
              if (*v44 > v43 && (v45 = *(v44 + v43)) != 0)
              {
                v13 = 0;
                v11 = (a3 + v45);
              }

              else
              {
                v13 = 0;
                v11 = 0;
              }
            }

            break;
          default:
            goto LABEL_59;
        }
      }

      ++v9;
    }

    while (v9 != *(a2 + 184));
    v8 = (*a1)->__r_.__value_.__r.__words[1];
  }

  if ((v8 & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], __n, 32);
  std::string::push_back(a1[1], 125);
  return 1;
}

void sub_213CA3A04(std::string **a1, uint64_t a2, int *a3, int a4)
{
  v7 = *(a2 + 208);
  if (a4)
  {
    v14 = (a3 + v7);
    goto LABEL_14;
  }

  *v19 = 0;
  if (*(a2 + 207) >= 0)
  {
    v8 = (a2 + 184);
  }

  else
  {
    v8 = *(a2 + 184);
  }

  v9 = sub_213C97BE4(v19, v8, 0, 1);
  v10 = *v19;
  if (v9 && *v19 != 0)
  {
    v15 = v8 - 1;
    do
    {
      v16 = *++v15;
      v17 = v16 - 48;
      if (v16)
      {
        v18 = v17 > 9;
      }

      else
      {
        v18 = 0;
      }
    }

    while (v18);
    if (*((__PAIR128__(v15, v8) - v15) >> 64) == 45)
    {
      v10 = -1;
    }
  }

  v12 = (a3 - *a3);
  if (*v12 > v7)
  {
    v13 = *(v12 + v7);
    if (v13)
    {
      v14 = (a3 + v13);
LABEL_14:
      v10 = *v14;
    }
  }

  sub_213CA3CF4(a1, v10, *(a2 + 152), *(a2 + 168));
}

void sub_213CA3AFC(std::string **a1, uint64_t a2, int *a3, int a4)
{
  v7 = *(a2 + 208);
  if (a4)
  {
    v14 = (a3 + v7);
    goto LABEL_13;
  }

  if (*(a2 + 207) >= 0)
  {
    v8 = (a2 + 184);
  }

  else
  {
    v8 = *(a2 + 184);
  }

  v15 = 0;
  v9 = sub_213C98C40(&v15, v8, 0, 0);
  v10 = v15;
  if (v15 >= 0xFFFFFFFF)
  {
    v10 = -1;
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = (a3 - *a3);
  if (*v12 > v7)
  {
    v13 = *(v12 + v7);
    if (v13)
    {
      v14 = (a3 + v13);
LABEL_13:
      v11 = *v14;
    }
  }

  sub_213CA4080(a1, v11, *(a2 + 152), *(a2 + 168));
}

void sub_213CA3BB4(flatbuffers::ClassicLocale *a1, uint64_t a2, int *a3, int a4)
{
  v7 = *(a2 + 208);
  if (a4)
  {
    v22 = a3 + v7;
    goto LABEL_25;
  }

  if (*(a2 + 207) >= 0)
  {
    v8 = (a2 + 184);
  }

  else
  {
    v8 = *(a2 + 184);
  }

  v9 = v8;
  do
  {
    v11 = *v9++;
    v10 = v11;
    v12 = v11 - 48;
    if (v11)
    {
      v13 = v12 > 9;
    }

    else
    {
      v13 = 0;
    }
  }

  while (v13);
  if (v10 == 48 && (*v9 & 0xDF) == 0x58)
  {
    v23 = v8;
    v14 = flatbuffers::ClassicLocale::Get(a1);
    v15 = v8;
    v16 = 16;
  }

  else
  {
    v23 = v8;
    v14 = flatbuffers::ClassicLocale::Get(a1);
    v15 = v8;
    v16 = 10;
  }

  v17 = strtoll_l(v15, &v23, v16, v14);
  if (v23 != v8 && *v23 == 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 >= 0xFF)
  {
    LOBYTE(v18) = -1;
  }

  if (v23 != v8 && *v23 == 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = (a3 - *a3);
  if (*v20 > v7)
  {
    v21 = *(v20 + v7);
    if (v21)
    {
      v22 = a3 + v21;
LABEL_25:
      v19 = *v22;
    }
  }

  sub_213CA4420(a1, v19, *(a2 + 152), *(a2 + 168));
}

void sub_213CA3CF4(std::string **a1, uint64_t a2, int a3, flatbuffers::EnumDef *this)
{
  if (a3 == 2)
  {
    if (a2)
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    v6 = a1[1];

    std::string::append(v6, v5);
    return;
  }

  if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && this != 0)
  {
    v41 = a2;
    v10 = flatbuffers::EnumDef::ReverseLookup(this, a2, 0);
    if (v10)
    {
      v11 = v10;
      std::string::push_back(a1[1], 34);
      if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
      {
        v12 = *(this + 23);
        if (v12 >= 0)
        {
          v13 = this;
        }

        else
        {
          v13 = *this;
        }

        if (v12 >= 0)
        {
          v14 = *(this + 23);
        }

        else
        {
          v14 = *(this + 1);
        }

        std::string::append(a1[1], v13, v14);
      }

      v15 = *(v11 + 23);
      if (v15 >= 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = *v11;
      }

      if (v15 >= 0)
      {
        v17 = *(v11 + 23);
      }

      else
      {
        v17 = *(v11 + 8);
      }

      std::string::append(a1[1], v16, v17);
      v18 = a1[1];

      std::string::push_back(v18, 34);
      return;
    }

    a2 = v41;
    if (v41)
    {
      v43 = 9;
      strcpy(__p, "bit_flags");
      v19 = sub_213C9E148(this + 72, __p);
      v20 = (this + 80) != v19 && v19[7] != 0;
      if (v43 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = v41;
      if (v20)
      {
        v21 = a1[1];
        size = SHIBYTE(v21->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          size = v21->__r_.__value_.__l.__size_;
        }

        std::string::push_back(v21, 34);
        v23 = *(this + 26);
        v24 = *(this + 27);
        if (v23 == v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0;
          do
          {
            v26 = *v23;
            v43 = 13;
            strcpy(__p, "bit_flags_set");
            v27 = sub_213C9E148((v26 + 11), __p);
            v28 = v26 + 12 == v27 || *(v27 + 56) == 0;
            if (v43 < 0)
            {
              operator delete(__p[0]);
            }

            if (v28)
            {
              v29 = v26[17];
              if ((v29 & v41) != 0)
              {
                if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                {
                  v34 = *(this + 23);
                  if (v34 >= 0)
                  {
                    v35 = this;
                  }

                  else
                  {
                    v35 = *this;
                  }

                  if (v34 >= 0)
                  {
                    v36 = *(this + 23);
                  }

                  else
                  {
                    v36 = *(this + 1);
                  }

                  std::string::append(a1[1], v35, v36);
                }

                v25 |= v29;
                v37 = *(*v23 + 23);
                if (v37 >= 0)
                {
                  v38 = *v23;
                }

                else
                {
                  v38 = **v23;
                }

                if (v37 >= 0)
                {
                  v39 = *(*v23 + 23);
                }

                else
                {
                  v39 = (*v23)[1];
                }

                std::string::append(a1[1], v38, v39);
                std::string::push_back(a1[1], 32);
              }
            }

            ++v23;
          }

          while (v23 != v24);
        }

        v30 = a1[1];
        if (v25 == v41)
        {
          v31 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
          if (v31 < 0)
          {
            v32 = v30->__r_.__value_.__l.__size_;
          }

          else
          {
            v32 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
          }

          v33 = v32 - 1;
          if ((v31 & 0x80000000) != 0)
          {
            v30 = v30->__r_.__value_.__r.__words[0];
          }

          v30->__r_.__value_.__s.__data_[v33] = 34;
          return;
        }

        std::string::resize(v30, size, 0);
        a2 = v41;
      }
    }
  }

  sub_213C8CE90(a2);
  if (v43 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v43 >= 0)
  {
    v9 = v43;
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(a1[1], v8, v9);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_213CA4080(std::string **a1, uint64_t a2, int a3, flatbuffers::EnumDef *this)
{
  if (a3 == 2)
  {
    if (a2)
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    v6 = a1[1];

    std::string::append(v6, v5);
    return;
  }

  if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && this != 0)
  {
    v41 = a2;
    v10 = a2;
    v11 = flatbuffers::EnumDef::ReverseLookup(this, a2, 0);
    if (v11)
    {
      v12 = v11;
      std::string::push_back(a1[1], 34);
      if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
      {
        v13 = *(this + 23);
        if (v13 >= 0)
        {
          v14 = this;
        }

        else
        {
          v14 = *this;
        }

        if (v13 >= 0)
        {
          v15 = *(this + 23);
        }

        else
        {
          v15 = *(this + 1);
        }

        std::string::append(a1[1], v14, v15);
      }

      v16 = *(v12 + 23);
      if (v16 >= 0)
      {
        v17 = v12;
      }

      else
      {
        v17 = *v12;
      }

      if (v16 >= 0)
      {
        v18 = *(v12 + 23);
      }

      else
      {
        v18 = *(v12 + 8);
      }

      std::string::append(a1[1], v17, v18);
      v19 = a1[1];

      std::string::push_back(v19, 34);
      return;
    }

    a2 = v41;
    if (v41)
    {
      v44 = 9;
      strcpy(__p, "bit_flags");
      v20 = sub_213C9E148(this + 72, __p);
      v21 = (this + 80) != v20 && v20[7] != 0;
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = v41;
      if (v21)
      {
        v22 = a1[1];
        size = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          size = v22->__r_.__value_.__l.__size_;
        }

        std::string::push_back(v22, 34);
        v24 = *(this + 26);
        v25 = *(this + 27);
        if (v24 == v25)
        {
          v40 = 0;
        }

        else
        {
          v40 = 0;
          do
          {
            v26 = *v24;
            v44 = 13;
            strcpy(__p, "bit_flags_set");
            v27 = sub_213C9E148((v26 + 11), __p);
            v28 = v26 + 12 == v27 || *(v27 + 56) == 0;
            if (v44 < 0)
            {
              operator delete(__p[0]);
            }

            if (v28)
            {
              v29 = v26[17];
              if ((v29 & v10) != 0)
              {
                if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                {
                  v34 = *(this + 23);
                  if (v34 >= 0)
                  {
                    v35 = this;
                  }

                  else
                  {
                    v35 = *this;
                  }

                  if (v34 >= 0)
                  {
                    v36 = *(this + 23);
                  }

                  else
                  {
                    v36 = *(this + 1);
                  }

                  std::string::append(a1[1], v35, v36);
                }

                v40 |= v29;
                v37 = *(*v24 + 23);
                if (v37 >= 0)
                {
                  v38 = *v24;
                }

                else
                {
                  v38 = **v24;
                }

                if (v37 >= 0)
                {
                  v39 = *(*v24 + 23);
                }

                else
                {
                  v39 = (*v24)[1];
                }

                std::string::append(a1[1], v38, v39);
                std::string::push_back(a1[1], 32);
              }
            }

            ++v24;
          }

          while (v24 != v25);
        }

        v30 = a1[1];
        if (v40 == v10)
        {
          v31 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
          if (v31 < 0)
          {
            v32 = v30->__r_.__value_.__l.__size_;
          }

          else
          {
            v32 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
          }

          v33 = v32 - 1;
          if ((v31 & 0x80000000) != 0)
          {
            v30 = v30->__r_.__value_.__r.__words[0];
          }

          v30->__r_.__value_.__s.__data_[v33] = 34;
          return;
        }

        std::string::resize(v30, size, 0);
        a2 = v41;
      }
    }
  }

  sub_213C8B69C(a2);
  if (v44 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v44 >= 0)
  {
    v9 = v44;
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(a1[1], v8, v9);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_213CA4420(std::string **a1, uint64_t a2, int a3, flatbuffers::EnumDef *this)
{
  if (a3 == 2)
  {
    if (a2)
    {
      v8 = "true";
    }

    else
    {
      v8 = "false";
    }

    v9 = a1[1];

    std::string::append(v9, v8);
  }

  else
  {
    if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && this != 0)
    {
      v41 = a2;
      v10 = a2;
      v11 = flatbuffers::EnumDef::ReverseLookup(this, a2, 0);
      if (v11)
      {
        v12 = v11;
        std::string::push_back(a1[1], 34);
        if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
        {
          v13 = *(this + 23);
          if (v13 >= 0)
          {
            v14 = this;
          }

          else
          {
            v14 = *this;
          }

          if (v13 >= 0)
          {
            v15 = *(this + 23);
          }

          else
          {
            v15 = *(this + 1);
          }

          std::string::append(a1[1], v14, v15);
        }

        v16 = *(v12 + 23);
        if (v16 >= 0)
        {
          v17 = v12;
        }

        else
        {
          v17 = *v12;
        }

        if (v16 >= 0)
        {
          v18 = *(v12 + 23);
        }

        else
        {
          v18 = *(v12 + 8);
        }

        std::string::append(a1[1], v17, v18);
        v19 = a1[1];

        std::string::push_back(v19, 34);
        return;
      }

      a2 = v41;
      if (v41)
      {
        v44 = 9;
        strcpy(__s, "bit_flags");
        v20 = sub_213C9E148(this + 72, __s);
        v21 = (this + 80) != v20 && v20[7] != 0;
        if (v44 < 0)
        {
          operator delete(*__s);
        }

        a2 = v41;
        if (v21)
        {
          v22 = a1[1];
          size = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
          if ((size & 0x8000000000000000) != 0)
          {
            size = v22->__r_.__value_.__l.__size_;
          }

          std::string::push_back(v22, 34);
          v24 = *(this + 26);
          v25 = *(this + 27);
          if (v24 == v25)
          {
            v40 = 0;
          }

          else
          {
            v40 = 0;
            do
            {
              v26 = *v24;
              v44 = 13;
              strcpy(__s, "bit_flags_set");
              v27 = sub_213C9E148((v26 + 11), __s);
              v28 = v26 + 12 == v27 || *(v27 + 56) == 0;
              if (v44 < 0)
              {
                operator delete(*__s);
              }

              if (v28)
              {
                v29 = v26[17];
                if ((v29 & v10) != 0)
                {
                  if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                  {
                    v34 = *(this + 23);
                    if (v34 >= 0)
                    {
                      v35 = this;
                    }

                    else
                    {
                      v35 = *this;
                    }

                    if (v34 >= 0)
                    {
                      v36 = *(this + 23);
                    }

                    else
                    {
                      v36 = *(this + 1);
                    }

                    std::string::append(a1[1], v35, v36);
                  }

                  v40 |= v29;
                  v37 = *(*v24 + 23);
                  if (v37 >= 0)
                  {
                    v38 = *v24;
                  }

                  else
                  {
                    v38 = **v24;
                  }

                  if (v37 >= 0)
                  {
                    v39 = *(*v24 + 23);
                  }

                  else
                  {
                    v39 = (*v24)[1];
                  }

                  std::string::append(a1[1], v38, v39);
                  std::string::push_back(a1[1], 32);
                }
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v30 = a1[1];
          if (v40 == v10)
          {
            v31 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
            if (v31 < 0)
            {
              v32 = v30->__r_.__value_.__l.__size_;
            }

            else
            {
              v32 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
            }

            v33 = v32 - 1;
            if ((v31 & 0x80000000) != 0)
            {
              v30 = v30->__r_.__value_.__r.__words[0];
            }

            v30->__r_.__value_.__s.__data_[v33] = 34;
            return;
          }

          std::string::resize(v30, size, 0);
          a2 = v41;
        }
      }
    }

    sub_213C8A4E8(a2);
    if (v44 < 0)
    {
      v7 = *__s;
      v6 = *&__s[8];
    }

    else
    {
      v6 = v44;
      v7 = __s;
    }

    std::string::append(a1[1], v7, v6);
    if (v44 < 0)
    {
      operator delete(*__s);
    }
  }
}

void sub_213CA47C0(std::string **a1, uint64_t a2, int a3, flatbuffers::EnumDef *this)
{
  if (a3 == 2)
  {
    if (a2)
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    v6 = a1[1];

    std::string::append(v6, v5);
    return;
  }

  if ((*a1)->__r_.__value_.__s.__data_[12] == 1 && this != 0)
  {
    v41 = a2;
    v10 = a2;
    v11 = flatbuffers::EnumDef::ReverseLookup(this, a2, 0);
    if (v11)
    {
      v12 = v11;
      std::string::push_back(a1[1], 34);
      if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
      {
        v13 = *(this + 23);
        if (v13 >= 0)
        {
          v14 = this;
        }

        else
        {
          v14 = *this;
        }

        if (v13 >= 0)
        {
          v15 = *(this + 23);
        }

        else
        {
          v15 = *(this + 1);
        }

        std::string::append(a1[1], v14, v15);
      }

      v16 = *(v12 + 23);
      if (v16 >= 0)
      {
        v17 = v12;
      }

      else
      {
        v17 = *v12;
      }

      if (v16 >= 0)
      {
        v18 = *(v12 + 23);
      }

      else
      {
        v18 = *(v12 + 8);
      }

      std::string::append(a1[1], v17, v18);
      v19 = a1[1];

      std::string::push_back(v19, 34);
      return;
    }

    a2 = v41;
    if (v41)
    {
      v44 = 9;
      strcpy(__p, "bit_flags");
      v20 = sub_213C9E148(this + 72, __p);
      v21 = (this + 80) != v20 && v20[7] != 0;
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = v41;
      if (v21)
      {
        v22 = a1[1];
        size = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) != 0)
        {
          size = v22->__r_.__value_.__l.__size_;
        }

        std::string::push_back(v22, 34);
        v24 = *(this + 26);
        v25 = *(this + 27);
        if (v24 == v25)
        {
          v40 = 0;
        }

        else
        {
          v40 = 0;
          do
          {
            v26 = *v24;
            v44 = 13;
            strcpy(__p, "bit_flags_set");
            v27 = sub_213C9E148((v26 + 11), __p);
            v28 = v26 + 12 == v27 || *(v27 + 56) == 0;
            if (v44 < 0)
            {
              operator delete(__p[0]);
            }

            if (v28)
            {
              v29 = v26[17];
              if ((v29 & v10) != 0)
              {
                if ((*a1)->__r_.__value_.__s.__data_[15] == 1)
                {
                  v34 = *(this + 23);
                  if (v34 >= 0)
                  {
                    v35 = this;
                  }

                  else
                  {
                    v35 = *this;
                  }

                  if (v34 >= 0)
                  {
                    v36 = *(this + 23);
                  }

                  else
                  {
                    v36 = *(this + 1);
                  }

                  std::string::append(a1[1], v35, v36);
                }

                v40 |= v29;
                v37 = *(*v24 + 23);
                if (v37 >= 0)
                {
                  v38 = *v24;
                }

                else
                {
                  v38 = **v24;
                }

                if (v37 >= 0)
                {
                  v39 = *(*v24 + 23);
                }

                else
                {
                  v39 = (*v24)[1];
                }

                std::string::append(a1[1], v38, v39);
                std::string::push_back(a1[1], 32);
              }
            }

            ++v24;
          }

          while (v24 != v25);
        }

        v30 = a1[1];
        if (v40 == v10)
        {
          v31 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
          if (v31 < 0)
          {
            v32 = v30->__r_.__value_.__l.__size_;
          }

          else
          {
            v32 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
          }

          v33 = v32 - 1;
          if ((v31 & 0x80000000) != 0)
          {
            v30 = v30->__r_.__value_.__r.__words[0];
          }

          v30->__r_.__value_.__s.__data_[v33] = 34;
          return;
        }

        std::string::resize(v30, size, 0);
        a2 = v41;
      }
    }
  }

  sub_213C8A4E8(a2);
  if (v44 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v44 >= 0)
  {
    v9 = v44;
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(a1[1], v8, v9);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_213CA4B54(std::string **a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6)
{
  v10 = a6;
  while (1)
  {
    v11 = 0;
    v12 = *a3;
    if (*a3 <= 14)
    {
      break;
    }

    if (v12 == 15)
    {
      v13 = *(a3 + 8);

      return sub_213CA31E8(a1, v13, a2, a4);
    }

    v25 = a1;
    v26 = a2;
    v27 = a4;
    if (v12 == 17)
    {
      v21 = *(a3 + 24);
      v28 = *(a3 + 4);
      v29 = 0;
      v30 = *(a3 + 8);
      v31 = v21;
      switch(v28)
      {
        case -4:
          sub_213CC4978(a1, a2, v21, &v28, a4);
          return 1;
        case -3:
        case 10:
          sub_213CC4B28(a1, a2, v21, &v28, a4);
          return 1;
        case -2:
        case 8:
          sub_213CC4CD8(a1, a2, v21, &v28, a4);
          return 1;
        case -1:
        case 6:
          sub_213CC4E88(a1, a2, v21, &v28, a4);
          return 1;
        case 0:
        case 1:
        case 2:
        case 4:
          sub_213CC5038(a1, a2, v21, &v28, a4);
          return 1;
        case 3:
          sub_213CC51E8(a1, a2, v21, &v28, a4);
          return 1;
        case 5:
          sub_213CC5398(a1, a2, v21, &v28, a4);
          return 1;
        case 7:
          sub_213CC5548(a1, a2, v21, &v28, a4);
          return 1;
        case 9:
          sub_213CC56F8(a1, a2, v21, &v28, a4);
          return 1;
        case 11:
          sub_213CC58A8(a1, a2, v21, &v28, a4);
          return 1;
        case 12:
          sub_213CC5A58(a1, a2, v21, &v28, a4);
          return 1;
        case 13:
        case 14:
        case 15:
          return (sub_213CC5C08(a1, a2, v21, &v28, a4) & 1) != 0;
        case 16:
          return sub_213CC5C08(a1, a2, v21, &v28, a4) != 0;
        default:
          return 1;
      }
    }

    if (v12 == 16)
    {
      v22 = *(a3 + 16);
      v23 = *(v22 + 38);
      if (v23 > -2)
      {
        if (v23 == -1)
        {
          v24 = (v10 & 0x80000000) != 0 ? *a5 : *(a5 + 2 * v10 + *a5 + 4);
        }

        else
        {
          if (v23 != 1)
          {
LABEL_43:
            abort();
          }

          v24 = (v10 & 0x80000000) != 0 ? *a5 : *(a5 + v10 + *a5 + 4);
        }
      }

      else if (v23 == -3)
      {
        v24 = (v10 & 0x80000000) != 0 ? *a5 : *(&a5[v10] + *a5 + 4);
      }

      else
      {
        if (v23 != -2)
        {
          goto LABEL_43;
        }

        v24 = *a5;
        if ((v10 & 0x80000000) == 0)
        {
          v24 = *(a5 + 4 * v10 + v24 + 4);
        }
      }

      v11 = flatbuffers::EnumDef::ReverseLookup(v22, v24, 1u);
      a5 = 0;
      a3 = v11 + 48;
      v10 = 0xFFFFFFFFLL;
      a4 = v27;
      a1 = v25;
      a2 = v26;
      if (v11)
      {
        continue;
      }
    }

    return v11;
  }

  if (v12 == 14)
  {
    v15 = *(a3 + 4);
    v16 = *(a3 + 24);
    v28 = v15;
    v29 = 0;
    v30 = *(a3 + 8);
    v31 = v16;
    if (v15 != 15)
    {
      switch(v15)
      {
        case -4:
          sub_213CC3A24(a1, a2, *a2, &v28, a4);
          return 1;
        case -3:
        case 10:
          sub_213CC3BD8(a1, a2, *a2, &v28, a4);
          return 1;
        case -2:
        case 8:
          sub_213CA5600(a1, a2, *a2, &v28, a4);
          return 1;
        case -1:
        case 6:
          sub_213CC3D8C(a1, a2, *a2, &v28, a4);
          return 1;
        case 0:
        case 1:
        case 2:
        case 4:
          sub_213CA57B4(a1, a2, *a2, &v28, a4);
          return 1;
        case 3:
          sub_213CC3F40(a1, a2, *a2, &v28, a4);
          return 1;
        case 5:
          sub_213CC40F4(a1, a2, *a2, &v28, a4);
          return 1;
        case 7:
        case 17:
          sub_213CC42A8(a1, a2, *a2, &v28, a4);
          return 1;
        case 9:
          sub_213CC445C(a1, a2, *a2, &v28, a4);
          return 1;
        case 11:
          sub_213CC4610(a1, a2, *a2, &v28, a4);
          return 1;
        case 12:
          sub_213CC47C4(a1, a2, *a2, &v28, a4);
          return 1;
        case 13:
        case 14:
        case 16:
          return (sub_213CA596C(a1, a2, *a2, &v28, a4) & 1) != 0;
        default:
          return 1;
      }
    }

    return (sub_213CA596C(a1, a2, *a2, &v28, a4) & 1) != 0;
  }

  if (v12 != 13)
  {
    return v11;
  }

  v17 = *a2;
  v18 = a1[1];
  v19 = (*a1)[5].__r_.__value_.__s.__data_[17];
  v20 = (*a1)[5].__r_.__value_.__s.__data_[18];

  return sub_213CA5030((a2 + 1), v17, v18, v19, v20);
}

uint64_t sub_213CA5030(uint64_t a1, unint64_t a2, std::string *this, int a4, int a5)
{
  std::string::append(this, "");
  if (a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a1 + v10);
      if (v12 > 0xB)
      {
        if (*(a1 + v10) > 0x21u)
        {
          if (v12 == 34)
          {
            v23 = "\\"";
            goto LABEL_27;
          }

          if (v12 == 92)
          {
            v23 = "\\\";
            goto LABEL_27;
          }
        }

        else
        {
          if (v12 == 12)
          {
            v23 = "\\f";
            goto LABEL_27;
          }

          if (v12 == 13)
          {
            v23 = "\\r";
LABEL_27:
            std::string::append(this, v23);
            goto LABEL_9;
          }
        }
      }

      else
      {
        switch(v12)
        {
          case 8u:
            v23 = "\\b";
            goto LABEL_27;
          case 9u:
            v23 = "\\t";
            goto LABEL_27;
          case 0xAu:
            v23 = "\\n";
            goto LABEL_27;
        }
      }

      if (v12 - 32 > 0x5E)
      {
        v27 = v11;
        v14 = *(a1 + v10);
        v31 = (a1 + v10);
        v15 = sub_213CBA380(&v31);
        if ((v15 & 0x80000000) == 0)
        {
          if (a5)
          {
            std::string::append(this, (a1 + v10), &v31[-v10 - a1]);
LABEL_23:
            v11 = v31 + ~a1;
            goto LABEL_9;
          }

          v18 = v15;
          if (WORD1(v15))
          {
            if (WORD1(v15) > 0x10u)
            {
              goto LABEL_23;
            }

            v24 = ((v15 - 0x10000) >> 10) + 55296;
            std::string::append(this, "\\u");
            sub_213CA534C(v24, 4);
            if (v30 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v30 >= 0)
            {
              v26 = v30;
            }

            else
            {
              v26 = v29;
            }

            std::string::append(this, p_p, v26);
            if (v30 < 0)
            {
              operator delete(__p);
            }

            std::string::append(this, "\\u");
            sub_213CA534C(v18 & 0x3FF | 0xDC00, 4);
            v19 = v30;
            v20 = v29;
            if (v30 >= 0)
            {
              v21 = &__p;
            }

            else
            {
              v21 = __p;
            }
          }

          else
          {
            std::string::append(this, "\\u");
            sub_213CA534C(v18, 4);
            v19 = v30;
            v20 = v29;
            if (v30 >= 0)
            {
              v21 = &__p;
            }

            else
            {
              v21 = __p;
            }
          }

          if ((v19 & 0x80000000) == 0)
          {
            v22 = v19;
          }

          else
          {
            v22 = v20;
          }

          std::string::append(this, v21, v22);
          if (v30 < 0)
          {
            operator delete(__p);
          }

          goto LABEL_23;
        }

        if (!a4)
        {
          return 0;
        }

        std::string::append(this, "\\x");
        sub_213CA534C(v14, 2);
        if (v30 >= 0)
        {
          v16 = &__p;
        }

        else
        {
          v16 = __p;
        }

        if (v30 >= 0)
        {
          v17 = v30;
        }

        else
        {
          v17 = v29;
        }

        std::string::append(this, v16, v17);
        if (v30 < 0)
        {
          operator delete(__p);
        }

        v11 = v27;
      }

      else
      {
        std::string::push_back(this, v12);
      }

LABEL_9:
      v10 = ++v11;
    }

    while (v11 < a2);
  }

  std::string::append(this, "");
  return 1;
}

uint64_t sub_213CA534C(uint64_t a1, int a2)
{
  sub_213C98FF0(v10);
  v4 = v11;
  v5 = v11;
  *(&v13[1].__locale_ + *(v11 - 24)) = a2;
  v6 = (&v11 + *(v5 - 24));
  if (v6[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v6);
    v7 = std::locale::use_facet(&v16, MEMORY[0x277D82680]);
    (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v16);
    v4 = v11;
  }

  v6[1].__fmtflags_ = 48;
  *(&v11 + *(v4 - 24) + 8) = *(&v11 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v11 + *(v4 - 24) + 8) |= 0x4000u;
  MEMORY[0x21604D0A0](&v11, a1);
  std::stringbuf::str();
  v10[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x21604D160](&v15);
}

void sub_213CA5600(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = (*a1)->__r_.__value_.__r.__words[1];
  v11 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    __n = (v10 & ~(v10 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v19 = v11 - 5;
    v14 = v11 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (v19 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_15;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v14 <= 1 && !v17)
      {
        std::string::append(a1[1], __n, 32);
      }

LABEL_15:
      std::string::append(a1[1], __n, 32);
      sub_213CA4080(a1, *(v15 + 4 * v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

void sub_213CA57B4(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = (*a1)->__r_.__value_.__r.__words[1];
  v10 = *a4;
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v11 = (v9 & ~(v9 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v12 = 0;
    v13 = 0;
    v14 = v10 - 5;
    v19 = v10 - 3;
    v15 = a2 + 4;
    v16 = 1;
    do
    {
      if (v16 == 1)
      {
        v17 = 0;
      }

      else
      {
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
        }

        v17 = v13 % 0xC;
        if (v14 >= 0xFFFFFFFE && v17)
        {
          goto LABEL_10;
        }

        if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      if (v19 <= 1 && !v17)
      {
        std::string::append(a1[1], v11, 32);
      }

LABEL_10:
      std::string::append(a1[1], v11, 32);
      sub_213CA4420(a1, *(v15 + v12), *a4, *(a4 + 16));
      ++v13;
      v12 = v16++;
    }

    while (v12 < a3);
  }

  if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
  {
    std::string::push_back(a1[1], 10);
  }

  std::string::append(a1[1], a5, 32);
  v18 = a1[1];

  std::string::push_back(v18, 93);
}

uint64_t sub_213CA596C(std::string **a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  if (*a4 == 15)
  {
    v10 = *(*(a4 + 8) + 200);
  }

  else
  {
    v10 = 0;
  }

  v11 = (*a1)->__r_.__value_.__r.__words[1];
  std::string::push_back(a1[1], 91);
  if (a3)
  {
    v12 = (v11 & ~(v11 >> 31)) + a5;
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    v13 = 0;
    v14 = 0;
    v15 = a2 + 4;
    while (1)
    {
      if (v14)
      {
        v16 = *a1;
        if (((*a1)[9].__r_.__value_.__s.__data_[10] & 1) == 0)
        {
          std::string::push_back(a1[1], 44);
          v16 = *a1;
        }

        if ((v16->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
        {
          std::string::push_back(a1[1], 10);
        }
      }

      std::string::append(a1[1], v12, 32);
      if (v10)
      {
        v17 = v15 + *(*(a4 + 8) + 216) * v13;
      }

      else
      {
        LODWORD(v17) = v15 + 4 * v13 + *(v15 + 4 * v13);
      }

      if ((sub_213CA4B54(a1, v17) & 1) == 0)
      {
        return 0;
      }

      v13 = ++v14;
      if (v14 >= a3)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    if (((*a1)->__r_.__value_.__r.__words[1] & 0x80000000) == 0)
    {
      std::string::push_back(a1[1], 10);
    }

    std::string::append(a1[1], a5, 32);
    std::string::push_back(a1[1], 93);
    return 1;
  }
}

uint64_t flatbuffers::GetAnyValueI(int a1, unsigned int *a2)
{
  result = 0;
  if (a1 > 7)
  {
    if (a1 > 10)
    {
      switch(a1)
      {
        case 11:
          return *a2;
        case 12:
          return *a2;
        case 13:
          v7[1] = v2;
          v7[2] = v3;
          v6 = a2 + *a2;
          v7[0] = 0;
          if (sub_213C98C40(v7, v6 + 4, 10, 1))
          {
            return v7[0];
          }

          else
          {
            return 0;
          }
      }
    }

    else if (a1 == 8)
    {
      return *a2;
    }

    else
    {
      return *a2;
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      return *a2;
    }

    else if (a1 == 6)
    {
      return *a2;
    }

    else
    {
      return *a2;
    }
  }

  else
  {
    if ((a1 - 1) < 2)
    {
      return *a2;
    }

    if (a1 != 3)
    {
      if (a1 != 4)
      {
        return result;
      }

      return *a2;
    }

    return *a2;
  }

  return result;
}

double flatbuffers::GetAnyValueF(int a1, unsigned int *a2)
{
  if (a1 == 11)
  {
    return *a2;
  }

  if (a1 == 12)
  {
    return *a2;
  }

  v6[1] = v2;
  v6[2] = v3;
  if (a1 != 13)
  {
    return flatbuffers::GetAnyValueI(a1, a2);
  }

  v5 = a2 + *a2;
  v6[0] = 0;
  sub_213CBED98(v6, v5 + 4);
  return *v6;
}

std::string *flatbuffers::GetAnyValueS@<X0>(std::string *result@<X0>, unsigned int *a2@<X1>, int *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  if (result > 14)
  {
    if (result != 15)
    {
      if (result != 16)
      {
LABEL_17:
        AnyValueI = flatbuffers::GetAnyValueI(result, a2);

        return sub_213C8A670(AnyValueI);
      }

      *(a5 + 23) = 7;
      *a5 = 1768846632;
      v7 = 695103337;
LABEL_24:
      *(a5 + 3) = v7;
      *(a5 + 7) = 0;
      return result;
    }

    if (!a3)
    {
      *(a5 + 23) = 7;
      *a5 = 1650553896;
      v7 = 694512738;
      goto LABEL_24;
    }

    v12 = (a3 - *a3);
    if (*v12 >= 5u && (v13 = v12[2]) != 0)
    {
      v14 = a3 + v13 + *(a3 + v13);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[4 * a4];
    v17 = *(v16 + 1);
    v18 = &v16[v17 + 4];
    v19 = *v18;
    if (*&v18[-v19] < 5u)
    {
      v20 = 0;
    }

    else
    {
      v20 = *&v18[-v19 + 4];
      LODWORD(v19) = *&v18[*&v18[-v19 + 4]];
    }

    v21 = &v18[v20 + v19];
    v24 = *v21;
    v23 = v21 + 1;
    v22 = v24;
    if (v24 >= 0x17)
    {
      operator new();
    }

    *(a5 + 23) = v22;
    if (v22)
    {
      memmove(a5, v23, v22);
    }

    *(a5 + v22) = 0;
    v25 = &v18[-*v18];
    if (*v25 >= 9u)
    {
      v26 = *(v25 + 4);
      if (v26)
      {
        if (v18[v26])
        {

          return std::string::append(a5, "(struct)");
        }
      }
    }

    v27 = *a2;
    std::string::append(a5, " { ");
    v28 = *&v18[-*v18 + 6];
    v29 = *&v18[v28];
    v30 = &v18[v28 + v29];
    v31 = *v30;
    if (!*v30)
    {
      return std::string::append(a5, "}");
    }

    v32 = 4 * a4;
    v33 = (a2 + v27);
    for (i = &v14[v28 + 12 + v17 + v32 + v29]; ; i += 4)
    {
      v35 = *(i - 4);
      v36 = i + v35;
      v37 = v35 - *(i + v35 - 4);
      v38 = *(i + v37 - 4);
      if (v38 >= 0xB && *(i + v37 + 6))
      {
        v39 = *(i + v35 + *(i + v37 + 6) - 4);
      }

      else
      {
        v39 = 0;
      }

      v40 = (v33 - *v33);
      v41 = *v40;
      if (v41 > v39)
      {
        if (*(v40 + v39))
        {
          break;
        }
      }

LABEL_114:
      if (i == &v30[4 * v31 + 4])
      {
        return std::string::append(a5, "}");
      }
    }

    if (v38 < 0xB)
    {
      v42 = v33 + v41;
      if (v38 < 7)
      {
        v43 = 0;
        v44 = 0;
        goto LABEL_61;
      }
    }

    else if (*(i + v37 + 6))
    {
      if (v41 <= *(i + v35 + *(i + v37 + 6) - 4) || !*(v40 + *(i + v35 + *(i + v37 + 6) - 4)))
      {
        *(&__dst.__r_.__value_.__s + 23) = 0;
        __dst.__r_.__value_.__s.__data_[0] = 0;
LABEL_73:
        LODWORD(v52) = *(v36 - 4);
        v53 = *(i + v35 - v52 - 4);
        if (v53 < 7)
        {
          v54 = 0;
        }

        else
        {
          v54 = *(i + v35 - v52 + 2);
          if (*(i + v35 - v52 + 2))
          {
            v54 = i + v35 + v54 + *(i + v35 + v54 - 4) - 4;
          }
        }

        v55 = -v52;
        v56 = (v54 - *v54);
        if (*v56 >= 5u)
        {
          v57 = v56[2];
          if (v57)
          {
            if (*(v54 + v57) == 13)
            {
              memset(&__str, 0, sizeof(__str));
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__r_.__value_.__r.__words[0];
              }

              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __dst.__r_.__value_.__l.__size_;
              }

              sub_213CA5030(p_dst, size, &__str, 1, 0);
              std::string::operator=(&__dst, &__str);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              v52 = *(v36 - 4);
              v55 = -v52;
              v53 = *(i + v35 - v52 - 4);
            }
          }
        }

        if (v53 < 5)
        {
          LODWORD(v60) = 0;
        }

        else
        {
          v60 = *(i + v55 + v35);
          LODWORD(v52) = *(i + v35 + v60 - 4);
        }

        v61 = (i + v35 + v60 + v52);
        v62 = *(v61 - 1);
        if (v62 >= 0x17)
        {
          operator new();
        }

        *(&__str.__r_.__value_.__s + 23) = *(v61 - 1);
        if (v62)
        {
          memmove(&__str, v61, v62);
        }

        __str.__r_.__value_.__s.__data_[v62] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v64 = __str.__r_.__value_.__l.__size_;
        }

        std::string::append(a5, p_str, v64);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        std::string::append(a5, ": ");
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = &__dst;
        }

        else
        {
          v65 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v66 = __dst.__r_.__value_.__l.__size_;
        }

        std::string::append(a5, v65, v66);
        std::string::append(a5, ", ");
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v31 = *v30;
        goto LABEL_114;
      }

      v42 = v33 + *(v40 + *(i + v35 + *(i + v37 + 6) - 4));
    }

    else
    {
      v42 = v33 + v41;
    }

    if (*(i + v37 + 2))
    {
      v44 = (i + v35 + *(i + v37 + 2) + *(i + v35 + *(i + v37 + 2) - 4) - 4);
    }

    else
    {
      v44 = 0;
    }

    v43 = 1;
LABEL_61:
    v45 = (v44 - *v44);
    if (*v45 >= 5u && (v46 = v45[2]) != 0)
    {
      v47 = *(v44 + v46);
      if (!v43)
      {
LABEL_64:
        v48 = 0;
LABEL_68:
        v49 = (v48 - *v48);
        if (*v49 >= 9u && (v50 = v49[4]) != 0)
        {
          v51 = *(v48 + v50);
        }

        else
        {
          v51 = 0xFFFFFFFFLL;
        }

        flatbuffers::GetAnyValueS(&__dst, v47, v42, a3, v51);
        goto LABEL_73;
      }
    }

    else
    {
      v47 = 0;
      if (!v43)
      {
        goto LABEL_64;
      }
    }

    v48 = *(i + v37 + 2);
    if (v48)
    {
      v48 = i + v35 + v48 + *(i + v35 + v48 - 4) - 4;
    }

    goto LABEL_68;
  }

  if (result == 13)
  {
    v8 = a2 + *a2;
    result = strlen(v8 + 4);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_213C97BD4();
    }

    v9 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(a5 + 23) = result;
    if (result)
    {
      result = memcpy(a5, v8 + 4, result);
    }

    v9->__r_.__value_.__s.__data_[a5] = 0;
  }

  else
  {
    if (result == 14)
    {
      *(a5 + 23) = 12;
      strcpy(a5, "[(elements)]");
      return result;
    }

    if ((result - 11) >= 2)
    {
      goto LABEL_17;
    }

    AnyValueF = flatbuffers::GetAnyValueF(result, a2);

    return sub_213CB9B98(12, a5, AnyValueF);
  }

  return result;
}

float flatbuffers::SetAnyValueI(int a1, _WORD *a2, uint64_t a3)
{
  if (a1 <= 6)
  {
    if (a1 > 3)
    {
      if (a1 != 4)
      {
        *a2 = a3;
        return *&v3;
      }
    }

    else if ((a1 - 1) >= 2 && a1 != 3)
    {
      return *&v3;
    }

    *a2 = a3;
    return *&v3;
  }

  if (a1 <= 9)
  {
    if (a1 == 7 || a1 == 8)
    {
      *a2 = a3;
      return *&v3;
    }

    goto LABEL_17;
  }

  switch(a1)
  {
    case 10:
LABEL_17:
      *a2 = a3;
      return *&v3;
    case 11:
      *&v3 = a3;
      *a2 = a3;
      break;
    case 12:
      v3 = a3;
      *a2 = a3;
      break;
  }

  return *&v3;
}

float flatbuffers::SetAnyValueF(int a1, double *a2, double a3)
{
  if (a1 == 12)
  {
    *a2 = a3;
  }

  else if (a1 == 11)
  {
    *&a3 = a3;
    *a2 = LODWORD(a3);
  }

  else
  {
    *&a3 = flatbuffers::SetAnyValueI(a1, a2, a3);
  }

  return *&a3;
}

void flatbuffers::SetAnyValueS(int a1, float *a2, char *a3)
{
  if ((a1 - 11) <= 1)
  {
    v7 = 0.0;
    sub_213CBED98(&v7, a3);
    if (a1 == 11)
    {
      v6 = v7;
      *a2 = v6;
    }

    else
    {
      *a2 = v7;
    }
  }

  else
  {
    v7 = 0.0;
    if (sub_213C98C40(&v7, a3, 10, 1))
    {
      v5 = *&v7;
    }

    else
    {
      v5 = 0;
    }

    flatbuffers::SetAnyValueI(a1, a2, v5);
  }
}

void *flatbuffers::SetString(int *a1, const void **a2, unsigned int *a3, uint64_t *a4, int *a5)
{
  v6 = *(a2 + 23);
  v7 = v6;
  v8 = a2[1];
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  v10 = *a3;
  v11 = *a4;
  if (*a4 == a4[1])
  {
    v11 = 0;
  }

  v12 = a3 - v11;
  v13 = (a3 - v11 + 4);
  if (v9 != v10)
  {
    v17 = v9 - v10;
    bzero((v11 + v13), v10);
    sub_213CA9D50(v22, a1, v13, v17, a4, a5);
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v11 = *a4;
    if (*a4 == a4[1])
    {
      v18 = 0;
    }

    else
    {
      v18 = *a4;
    }

    LODWORD(v19) = *(a2 + 23);
    if (v19 < 0)
    {
      v19 = a2[1];
    }

    *(v18 + v12) = v19;
    v6 = *(a2 + 23);
    v8 = a2[1];
    v7 = *(a2 + 23);
  }

  if (v7 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  return memcpy((v11 + v13), v20, v6 + 1);
}

uint64_t flatbuffers::ResizeAnyVector(int *a1, int a2, uint64_t a3, int a4, int a5, uint64_t *a6, int *a7)
{
  v7 = a2 - a4;
  v8 = ((a2 - a4) * a5);
  v9 = *a6;
  v10 = a6[1];
  if (*a6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a6;
  }

  v12 = a3 - v11;
  v13 = a3 - v11 + a5 * a4 + 4;
  if (v8)
  {
    if (v7 < 0)
    {
      bzero((v11 + v13 - -v8), -v8);
    }

    sub_213CA9D50(v20, a1, v13, v8, a6, a7);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    v9 = *a6;
    v10 = a6[1];
    if (*a6 == v10)
    {
      v18 = 0;
    }

    else
    {
      v18 = *a6;
    }

    *(v18 + v12) = a2;
    if (v7 >= 1)
    {
      bzero((v18 + v13), v8);
      v9 = *a6;
      v10 = a6[1];
    }
  }

  if (v9 == v10)
  {
    v9 = 0;
  }

  return v9 + v13;
}

_BYTE *flatbuffers::AddFlatBuffer(void *a1, unsigned int *a2, uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  for (i = &v6[-*a1]; (i & 7) != 4; i = &v6[-*a1])
  {
    v9 = a1[2];
    if (v6 >= v9)
    {
      v10 = i + 1;
      if ((i + 1) < 0)
      {
        sub_213C97BD4();
      }

      v11 = v9 - v7;
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        operator new();
      }

      v13 = (i + v7 - v6);
      *i = 0;
      v6 = (i + 1);
      memcpy(v13, v7, i);
      *a1 = v13;
      a1[1] = i + 1;
      a1[2] = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v6++ = 0;
    }

    a1[1] = v6;
    v7 = *a1;
  }

  sub_213C9AA34(a1, v6, a2 + 4, a2 + a3, a3 - 4);
  v14 = *a1;
  if (*a1 == a1[1])
  {
    v14 = 0;
  }

  return &v14[(i & 0xFFFFFFFC) - 4 + *a2];
}

uint64_t flatbuffers::CopyInline(uint64_t result, int *a2, int *a3, unint64_t a4, size_t __n)
{
  v7 = result;
  if (*(result + 72) < a4)
  {
    *(result + 72) = a4;
  }

  v8 = *(result + 48);
  v9 = (a4 - 1) & -(*(result + 32) - v8 + *(result + 40));
  if (v8 - *(result + 56) < v9)
  {
    v26 = a3;
    result = sub_213C97F80(result, (a4 - 1) & -(*(result + 32) - v8 + *(result + 40)));
    a3 = v26;
    *(v7 + 48) -= v9;
  }

  else
  {
    *(result + 48) = v8 - v9;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v10 = 0;
  do
  {
    *(*(v7 + 48) + v10++) = 0;
  }

  while (v9 != v10);
LABEL_7:
  v11 = *a2;
  v12 = *(a2 - v11);
  if (v12 < 0xB)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = *(a2 - v11 + 10);
    if (*(a2 - v11 + 10))
    {
      LODWORD(v13) = *(a2 + v13);
    }
  }

  v14 = (a3 - *a3);
  if (*v14 > v13 && (v15 = *(v14 + v13)) != 0)
  {
    v16 = a3 + v15;
    if (!__n)
    {
LABEL_14:
      v17 = -v11;
      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0;
    if (!__n)
    {
      goto LABEL_14;
    }
  }

  v18 = *(v7 + 48);
  if (v18 - *(v7 + 56) < __n)
  {
    sub_213C97F80(v7, __n);
    v18 = *(v7 + 48);
  }

  *(v7 + 48) = v18 - __n;
  result = memcpy((v18 - __n), v16, __n);
  v19 = *a2;
  v17 = -v19;
  v12 = *(a2 - v19);
LABEL_19:
  if (v12 >= 0xB && *(a2 + v17 + 10))
  {
    v20 = *(a2 + *(a2 + v17 + 10));
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v7 + 32);
  v22 = *(v7 + 40);
  v24 = *(v7 + 48);
  v23 = *(v7 + 56);
  if ((v24 - v23) <= 7)
  {
    result = sub_213C97F80(v7, 8uLL);
    v23 = *(v7 + 56);
  }

  *v23 = (v21 - v24 + v22) | (v20 << 32);
  *(v7 + 56) += 8;
  ++*(v7 + 64);
  v25 = *(v7 + 68);
  if (v25 <= v20)
  {
    LOWORD(v25) = v20;
  }

  *(v7 + 68) = v25;
  return result;
}

uint64_t flatbuffers::CopyTable(uint64_t a1, int *a2, int *a3, int *a4, int a5)
{
  v7 = a2;
  __p = 0;
  v163 = 0;
  v164 = 0;
  v9 = *a3;
  v10 = *(a3 - v9);
  if (v10 >= 7 && *(a3 - v9 + 6))
  {
    v11 = (a3 + *(a3 - v9 + 6) + *(a3 + *(a3 - v9 + 6)));
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 + 1;
  v12 = *v11;
  if (!v12)
  {
    v12 = 0;
    v110 = -v9;
    goto LABEL_199;
  }

  v14 = v11 + 1;
  do
  {
    v15 = (v14 + *v14);
    v16 = (v15 - *v15);
    if (*v16 < 0xBu)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      v17 = v16[5];
      if (v17)
      {
        LODWORD(v17) = *(v15 + v17);
      }
    }

    v18 = *a4;
    v19 = a4 - v18;
    v20 = *(a4 - v18);
    if (v20 > v17 && *&v19[v17])
    {
      v161 = 0;
      v21 = (v15 - *v15);
      v22 = *v21;
      if (v22 < 7)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21[3];
        if (v21[3])
        {
          v23 = (v23 + v15 + *(v23 + v15));
        }
      }

      v24 = (v23 - *v23);
      if (*v24 < 5u)
      {
        goto LABEL_118;
      }

      v25 = v24[2];
      if (!v25)
      {
        goto LABEL_118;
      }

      v26 = *(v23 + v25);
      if (v26 <= 14)
      {
        if (v26 != 13)
        {
          if (v26 == 14)
          {
            if (v22 < 0xB)
            {
              v27 = (a4 + v20 + *(a4 + v20));
              if (v22 <= 6)
              {
                v39 = 0;
                goto LABEL_77;
              }
            }

            else if (v21[5] && (v20 <= *(v15 + v21[5]) || (LODWORD(v20) = *&v19[*(v15 + v21[5])], !*&v19[*(v15 + v21[5])])))
            {
              v27 = 0;
            }

            else
            {
              v27 = (a4 + v20 + *(a4 + v20));
            }

            v39 = v21[3];
            if (v21[3])
            {
              v39 = (v39 + v15 + *(v39 + v15));
            }

LABEL_77:
            v52 = (v39 - *v39);
            if (*v52 < 7u || (v53 = v52[3]) == 0)
            {
              v57 = 0;
              goto LABEL_85;
            }

            v54 = *(v39 + v53);
            if (v54 != 13)
            {
              if (v54 == 15)
              {
                v55 = (a2 - *a2);
                if (*v55 < 5u)
                {
                  v56 = 0;
                }

                else
                {
                  v56 = v55[2];
                  if (v56)
                  {
                    v56 += a2 + *(a2 + v56);
                  }
                }

                if (v22 < 7)
                {
                  v79 = 0;
                }

                else
                {
                  v79 = v21[3];
                  if (v79)
                  {
                    v79 = (v79 + v15 + *(v79 + v15));
                  }
                }

                v80 = (v79 - *v79);
                if (*v80 >= 9u && (v81 = v80[4]) != 0)
                {
                  v82 = 4 * *(v79 + v81);
                }

                else
                {
                  v82 = 0x3FFFFFFFCLL;
                }

                v83 = (v56 + v82 + 4 + *(v56 + v82 + 4));
                v84 = (v83 - *v83);
                v85 = *v84;
                if (v85 > 8 && v84[4] && *(v83 + v84[4]))
                {
                  if (v85 >= 0xD && (v86 = v84[6]) != 0)
                  {
                    v58 = *(v83 + v86);
                  }

                  else
                  {
                    v58 = 0;
                  }

LABEL_86:
                  v59 = *v27;
                  *(a1 + 70) = 1;
                  v60 = *(a1 + 72);
                  if (v60 <= 3)
                  {
                    *(a1 + 72) = 4;
                    v60 = 4;
                  }

                  v61 = v58 * v59;
                  v62 = *(a1 + 48);
                  v63 = (v62 - (*(a1 + 32) + *(a1 + 40)) - v61) & 3;
                  if (v62 - *(a1 + 56) < v63)
                  {
                    sub_213C97F80(a1, (v62 - (*(a1 + 32) + *(a1 + 40)) - v61) & 3);
                    *(a1 + 48) -= v63;
                  }

                  else
                  {
                    *(a1 + 48) = v62 - v63;
                    if (!v63)
                    {
                      goto LABEL_93;
                    }
                  }

                  v64 = 0;
                  do
                  {
                    *(*(a1 + 48) + v64++) = 0;
                  }

                  while (v63 != v64);
                  v60 = *(a1 + 72);
LABEL_93:
                  if (v60 < v58)
                  {
                    *(a1 + 72) = v58;
                  }

                  v65 = *(a1 + 48);
                  v66 = (v58 - 1) & -(v61 + (*(a1 + 32) - v65 + *(a1 + 40)));
                  if (v65 - *(a1 + 56) < v66)
                  {
                    sub_213C97F80(a1, (v58 - 1) & -(v61 + (*(a1 + 32) - v65 + *(a1 + 40))));
                    *(a1 + 48) -= v66;
                  }

                  else
                  {
                    *(a1 + 48) = v65 - v66;
                    if (!v66)
                    {
                      goto LABEL_99;
                    }
                  }

                  v67 = 0;
                  do
                  {
                    *(*(a1 + 48) + v67++) = 0;
                  }

                  while (v66 != v67);
LABEL_99:
                  v68 = *v27;
                  v69 = v58 * v68;
                  if (v69)
                  {
                    v70 = *(a1 + 48);
                    if (v70 - *(a1 + 56) < v69)
                    {
                      sub_213C97F80(a1, v69);
                      v70 = *(a1 + 48);
                    }

                    *(a1 + 48) = v70 - v69;
                    memcpy((v70 - v69), v27 + 1, v69);
                    LODWORD(v68) = *v27;
                  }

                  *(a1 + 70) = 0;
                  v7 = a2;
                  if (*(a1 + 72) <= 3uLL)
                  {
                    *(a1 + 72) = 4;
                  }

                  v71 = *(a1 + 48);
                  v72 = *(a1 + 56);
                  v73 = (v71 - (*(a1 + 32) + *(a1 + 40))) & 3;
                  if (v71 - v72 < v73)
                  {
                    sub_213C97F80(a1, (v71 - (*(a1 + 32) + *(a1 + 40))) & 3);
                    *(a1 + 48) -= v73;
                  }

                  else
                  {
                    v74 = v71 - v73;
                    *(a1 + 48) = v74;
                    if (!v73)
                    {
LABEL_110:
                      if ((v74 - v72) <= 3)
                      {
                        sub_213C97F80(a1, 4uLL);
                        v74 = *(a1 + 48);
                      }

                      *(v74 - 4) = v68;
                      v76 = v74 - 4;
                      *(a1 + 48) = v76;
                      v43 = *(a1 + 32) - v76 + *(a1 + 40);
                      goto LABEL_113;
                    }
                  }

                  v75 = 0;
                  do
                  {
                    *(*(a1 + 48) + v75++) = 0;
                  }

                  while (v73 != v75);
                  v74 = *(a1 + 48);
                  v72 = *(a1 + 56);
                  goto LABEL_110;
                }

                if (*v27)
                {
                  operator new();
                }

                *(a1 + 70) = 1;
                if (*(a1 + 72) <= 3uLL)
                {
                  *(a1 + 72) = 4;
                }

                v98 = *(a1 + 48);
                v99 = (v98 - (*(a1 + 32) + *(a1 + 40))) & 3;
                if (v98 - *(a1 + 56) < v99)
                {
                  sub_213C97F80(a1, v99);
                  *(a1 + 48) -= v99;
                }

                else
                {
                  *(a1 + 48) = v98 - v99;
                  if (!v99)
                  {
                    goto LABEL_174;
                  }
                }

                v100 = 0;
                do
                {
                  *(*(a1 + 48) + v100++) = 0;
                }

                while (v99 != v100);
                if (*(a1 + 72) <= 3uLL)
                {
                  *(a1 + 72) = 4;
                }

LABEL_174:
                v101 = *(a1 + 48);
                v102 = (v101 - (*(a1 + 32) + *(a1 + 40))) & 3;
                if (v101 - *(a1 + 56) < v102)
                {
                  sub_213C97F80(a1, v102);
                  *(a1 + 48) -= v102;
                }

                else
                {
                  *(a1 + 48) = v101 - v102;
                  if (!v102)
                  {
                    goto LABEL_178;
                  }
                }

                v103 = 0;
                do
                {
                  *(*(a1 + 48) + v103++) = 0;
                }

                while (v102 != v103);
LABEL_178:
                *(a1 + 70) = 0;
                if (*(a1 + 72) <= 3uLL)
                {
                  *(a1 + 72) = 4;
                }

                v104 = *(a1 + 48);
                v105 = *(a1 + 56);
                v106 = (v104 - (*(a1 + 32) + *(a1 + 40))) & 3;
                v7 = a2;
                if (v104 - v105 < v106)
                {
                  sub_213C97F80(a1, (v104 - (*(a1 + 32) + *(a1 + 40))) & 3);
                  *(a1 + 48) -= v106;
                }

                else
                {
                  v96 = v104 - v106;
                  *(a1 + 48) = v96;
                  if (!v106)
                  {
                    goto LABEL_185;
                  }
                }

                v107 = 0;
                do
                {
                  *(*(a1 + 48) + v107++) = 0;
                }

                while (v106 != v107);
                v96 = *(a1 + 48);
                v105 = *(a1 + 56);
LABEL_185:
                if ((v96 - v105) > 3)
                {
                  goto LABEL_186;
                }

                goto LABEL_194;
              }

              v57 = v54;
LABEL_85:
              v58 = *(&unk_213CC7D18 + v57 + 3);
              goto LABEL_86;
            }

            if (*v27)
            {
              operator new();
            }

            *(a1 + 70) = 1;
            if (*(a1 + 72) <= 3uLL)
            {
              *(a1 + 72) = 4;
            }

            v87 = *(a1 + 48);
            v88 = (v87 - (*(a1 + 32) + *(a1 + 40))) & 3;
            if (v87 - *(a1 + 56) < v88)
            {
              sub_213C97F80(a1, v88);
              *(a1 + 48) -= v88;
            }

            else
            {
              *(a1 + 48) = v87 - v88;
              if (!v88)
              {
                goto LABEL_153;
              }
            }

            v89 = 0;
            do
            {
              *(*(a1 + 48) + v89++) = 0;
            }

            while (v88 != v89);
            if (*(a1 + 72) <= 3uLL)
            {
              *(a1 + 72) = 4;
            }

LABEL_153:
            v90 = *(a1 + 48);
            v91 = (v90 - (*(a1 + 32) + *(a1 + 40))) & 3;
            if (v90 - *(a1 + 56) < v91)
            {
              sub_213C97F80(a1, v91);
              *(a1 + 48) -= v91;
            }

            else
            {
              *(a1 + 48) = v90 - v91;
              if (!v91)
              {
                goto LABEL_157;
              }
            }

            v92 = 0;
            do
            {
              *(*(a1 + 48) + v92++) = 0;
            }

            while (v91 != v92);
LABEL_157:
            *(a1 + 70) = 0;
            if (*(a1 + 72) <= 3uLL)
            {
              *(a1 + 72) = 4;
            }

            v93 = *(a1 + 48);
            v94 = *(a1 + 56);
            v95 = (v93 - (*(a1 + 32) + *(a1 + 40))) & 3;
            v7 = a2;
            if (v93 - v94 < v95)
            {
              sub_213C97F80(a1, (v93 - (*(a1 + 32) + *(a1 + 40))) & 3);
              *(a1 + 48) -= v95;
            }

            else
            {
              v96 = v93 - v95;
              *(a1 + 48) = v96;
              if (!v95)
              {
                goto LABEL_164;
              }
            }

            v97 = 0;
            do
            {
              *(*(a1 + 48) + v97++) = 0;
            }

            while (v95 != v97);
            v96 = *(a1 + 48);
            v94 = *(a1 + 56);
LABEL_164:
            if ((v96 - v94) > 3)
            {
LABEL_186:
              *(v96 - 4) = 0;
              v108 = v96 - 4;
              *(a1 + 48) = v108;
              v43 = *(a1 + 32) - v108 + *(a1 + 40);
              v161 = v43;
LABEL_114:
              if (v43)
              {
                v77 = v163;
                if (v163 >= v164)
                {
                  v78 = sub_213CC6DB4(&__p, &v161);
                }

                else
                {
                  *v163 = v43;
                  v78 = v77 + 1;
                }

                v163 = v78;
              }

              goto LABEL_118;
            }

LABEL_194:
            sub_213C97F80(a1, 4uLL);
            v96 = *(a1 + 48);
            goto LABEL_186;
          }

LABEL_118:
          v12 = *v11;
          goto LABEL_119;
        }

        if (!a5)
        {
          if (v22 >= 0xB)
          {
            v41 = v21[5];
            if (v41)
            {
              v42 = *(v15 + v41);
              if (v20 <= v42 || (LODWORD(v20) = *&v19[v42], !*&v19[v42]))
              {
                v43 = 0;
                goto LABEL_113;
              }
            }
          }

          v34 = sub_213C97D08(a1, a4 + v20 + *(a4 + v20) + 4, *(a4 + v20 + *(a4 + v20)));
LABEL_54:
          v43 = v34;
LABEL_113:
          v161 = v43;
          goto LABEL_114;
        }

        if (v22 >= 0xB)
        {
          v32 = v21[5];
          if (v32)
          {
            v33 = *(v15 + v32);
            if (v20 <= v33)
            {
              LODWORD(v20) = 0;
              goto LABEL_38;
            }

            LODWORD(v20) = *&v19[v33];
          }
        }

        LODWORD(v18) = *(a4 + v20);
LABEL_38:
        v34 = sub_213CAA3F8(a1, a4 + v20 + v18 + 4, *(a4 + v20 + v18));
        goto LABEL_54;
      }

      if (v26 != 15)
      {
        if (v26 != 16)
        {
          goto LABEL_118;
        }

        v28 = sub_213CA7EB4(v7, a3, v15, a4);
        v29 = (v15 - *v15);
        if (*v29 >= 0xBu && (v30 = v29[5]) != 0)
        {
          v31 = *(v15 + v30);
        }

        else
        {
          v31 = 0;
        }

        v37 = *a4;
        if (*(a4 - v37) <= v31)
        {
          v38 = 0;
        }

        else
        {
          v38 = *(a4 + v31 - v37);
          LODWORD(v37) = *(a4 + v38);
        }

        v40 = a4 + v38 + v37;
LABEL_73:
        v43 = flatbuffers::CopyTable(a1, v7, v28, v40, 0);
        v161 = v43;
        goto LABEL_114;
      }

      v35 = (v7 - *v7);
      if (*v35 < 5u)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35[2];
        if (v36)
        {
          v36 += v7 + *(v7 + v36);
        }
      }

      if (v22 < 7)
      {
        v44 = 0;
      }

      else
      {
        v44 = v21[3];
        if (v21[3])
        {
          v44 = (v44 + v15 + *(v44 + v15));
        }
      }

      v45 = (v44 - *v44);
      if (*v45 >= 9u && (v46 = v45[4]) != 0)
      {
        v47 = 4 * *(v44 + v46);
      }

      else
      {
        v47 = 0x3FFFFFFFCLL;
      }

      v28 = (v36 + v47 + 4 + *(v36 + v47 + 4));
      v48 = &v28[-*v28];
      if (*v48 >= 9u)
      {
        v49 = *(v48 + 4);
        if (v49)
        {
          if (v28[v49])
          {
            goto LABEL_118;
          }
        }
      }

      if (v22 >= 0xB)
      {
        v50 = v21[5];
        if (v50)
        {
          v51 = *(v15 + v50);
          if (v20 <= v51)
          {
            LODWORD(v20) = 0;
            goto LABEL_72;
          }

          LODWORD(v20) = *&v19[v51];
        }
      }

      LODWORD(v18) = *(a4 + v20);
LABEL_72:
      v40 = a4 + v20 + v18;
      goto LABEL_73;
    }

LABEL_119:
    ++v14;
  }

  while (v14 != &v13[v12]);
  v109 = *a3;
  v110 = -v109;
  v10 = *(a3 - v109);
LABEL_199:
  if (v10 < 9 || (v111 = a3 + v110, !*(v111 + 4)) || !*(a3 + *(v111 + 4)))
  {
    v113 = a3;
    *(a1 + 70) = 1;
    v159 = *(a1 + 32) - *(a1 + 48) + *(a1 + 40);
    if (!v12)
    {
      goto LABEL_271;
    }

    goto LABEL_207;
  }

  if (v10 >= 0xB && *(v111 + 5))
  {
    v112 = *(a3 + *(v111 + 5));
    if (*(a1 + 72) < v112)
    {
      *(a1 + 72) = v112;
    }
  }

  else
  {
    v112 = 0;
  }

  v148 = *(a1 + 32);
  v149 = *(a1 + 40);
  v150 = *(a1 + 48);
  v151 = (v112 - 1) & -(v148 - v150 + v149);
  if (v150 - *(a1 + 56) < v151)
  {
    sub_213C97F80(a1, v151);
    *(a1 + 48) -= v151;
  }

  else
  {
    LOWORD(v152) = v150 - v151;
    *(a1 + 48) = v150 - v151;
    if (!v151)
    {
      v113 = a3;
      goto LABEL_270;
    }
  }

  v153 = 0;
  do
  {
    *(*(a1 + 48) + v153++) = 0;
  }

  while (v151 != v153);
  v113 = a3;
  v149 = *(a1 + 40);
  v152 = *(a1 + 48);
  v148 = *(a1 + 32);
LABEL_270:
  LOWORD(v159) = v149 - v152 + v148;
  if (*v11)
  {
LABEL_207:
    v114 = 0;
    v115 = 0;
    v116 = __p;
    do
    {
      v117 = v11[v114 + 1];
      v118 = &v11[v114] + v117;
      v119 = v117 - *(v118 + 1);
      v120 = &v11[v114] + v119;
      v121 = *(v120 + 2);
      if (v121 < 0xB)
      {
        LODWORD(v122) = 0;
      }

      else
      {
        v122 = *(v120 + 7);
        if (v122)
        {
          LODWORD(v122) = *(&v11[v114 + 1] + v117 + v122);
        }
      }

      v123 = (a4 - *a4);
      if (*v123 <= v122 || !*(v123 + v122))
      {
        goto LABEL_233;
      }

      if (v121 >= 7 && *(&v11[v114 + 2] + v119 + 2))
      {
        v124 = v117 + *(&v11[v114 + 2] + v119 + 2);
        v125 = (&v11[v114 + 1] + v124 + *(&v11[v114 + 1] + v124));
      }

      else
      {
        v125 = 0;
      }

      v126 = (v125 - *v125);
      if (*v126 >= 5u && (v127 = v126[2]) != 0)
      {
        v128 = *(v125 + v127);
        if ((v128 - 13) < 2 || v128 == 16)
        {
          goto LABEL_225;
        }

        if (v128 == 15)
        {
          v138 = (a2 - *a2);
          if (*v138 < 5u)
          {
            v139 = 0;
          }

          else
          {
            v139 = v138[2];
            if (v139)
            {
              v139 += a2 + *(a2 + v139);
            }
          }

          if (v121 >= 7 && *(&v11[v114 + 2] + v119 + 2))
          {
            v140 = v117 + *(&v11[v114 + 2] + v119 + 2);
            v141 = (&v11[v114 + 1] + v140 + *(&v11[v114 + 1] + v140));
          }

          else
          {
            v141 = 0;
          }

          v142 = (v141 - *v141);
          if (*v142 >= 9u && (v143 = v142[4]) != 0)
          {
            v144 = 4 * *(v141 + v143);
          }

          else
          {
            v144 = 0x3FFFFFFFCLL;
          }

          v145 = (v139 + v144 + 4 + *(v139 + v144 + 4));
          v146 = (v145 - *v145);
          v147 = *v146;
          if (v147 < 9 || !v146[4] || !*(v145 + v146[4]))
          {
LABEL_225:
            if (v121 >= 0xB && (v130 = *(&v11[v114 + 3] + v119 + 2)) != 0)
            {
              v131 = *(&v11[v114 + 1] + v117 + v130);
            }

            else
            {
              v131 = 0;
            }

            sub_213C8C688(a1, v131, v116[v115++]);
            goto LABEL_233;
          }

          if (v147 < 0xB)
          {
            v133 = 0;
          }

          else
          {
            if (v146[5])
            {
              v133 = *(v145 + v146[5]);
            }

            else
            {
              v133 = 0;
            }

            if (v147 >= 0xD && v146[6])
            {
              v137 = *(v145 + v146[6]);
LABEL_261:
              v134 = (v118 + 4);
              v135 = a1;
              v136 = a4;
              goto LABEL_230;
            }
          }

          v137 = 0;
          goto LABEL_261;
        }

        v132 = v128;
      }

      else
      {
        v132 = 0;
      }

      v133 = *(&unk_213CC7D18 + v132 + 3);
      v134 = (v118 + 4);
      v135 = a1;
      v136 = a4;
      v137 = v133;
LABEL_230:
      flatbuffers::CopyInline(v135, v134, v136, v133, v137);
LABEL_233:
      ++v114;
    }

    while (&v11[v114 + 1] != &v13[*v11]);
  }

LABEL_271:
  v154 = (v113 - *v113);
  if (*v154 >= 9u && (v155 = v154[4]) != 0 && *(v113 + v155))
  {
    *(a1 + 56) -= 8 * *(a1 + 64);
    *(a1 + 64) = 0;
    *(a1 + 68) = 0;
    v156 = (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
  }

  else
  {
    v156 = sub_213C8C880(a1, v159);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v156;
}

char *sub_213CA7EB4(int *a1, int *a2, int *a3, int *a4)
{
  v5 = (a1 - *a1);
  if (*v5 >= 7u && (v6 = v5[3]) != 0)
  {
    v7 = a1 + v6 + *(a1 + v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *a3;
  v9 = a3 - v8;
  v10 = *(a3 - v8);
  if (v10 < 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v9 + 3);
    if (*(v9 + 3))
    {
      v11 = (v11 + a3 + *(v11 + a3));
    }
  }

  v12 = (v11 - *v11);
  if (*v12 >= 9u && (v13 = v12[4]) != 0)
  {
    v14 = 4 * *(v11 + v13);
  }

  else
  {
    v14 = 0x3FFFFFFFCLL;
  }

  v15 = (a2 - *a2);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    v17 = (a2 + v16 + *(a2 + v16));
  }

  else
  {
    v17 = 0;
  }

  v18 = &v7[v14];
  if (v10 < 5)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v9 + 2);
    LODWORD(v8) = *(a3 + *(v9 + 2));
  }

  v22 = *(v18 + 1);
  v20 = v18 + 4;
  v21 = v22;
  v23 = (a3 + v19 + v8);
  v26 = *v23;
  v25 = v23 + 1;
  v24 = v26;
  if (v26 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v24;
  if (v24)
  {
    memcpy(&__dst, v25, v24);
  }

  __dst.__r_.__value_.__s.__data_[v24] = 0;
  v27 = std::string::append(&__dst, "_type");
  v28 = v27->__r_.__value_.__r.__words[2];
  *__p = *&v27->__r_.__value_.__l.__data_;
  v48 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = __p;
  if (v48 < 0)
  {
    v29 = __p[0];
  }

  __key = v29;
  v30 = bsearch(&__key, v17 + 1, *v17, 4uLL, sub_213CAA698);
  if (v30)
  {
    v31 = (v30 + *v30);
  }

  else
  {
    v31 = 0;
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v32 = &v20[v21];
  v33 = (v31 - *v31);
  v34 = *v33;
  if (v34 < 0xB)
  {
    LODWORD(v35) = 0;
LABEL_41:
    LOBYTE(v36) = 0;
    goto LABEL_42;
  }

  v35 = v33[5];
  if (v33[5])
  {
    LODWORD(v35) = *(v31 + v35);
  }

  if (v34 < 0xD)
  {
    goto LABEL_41;
  }

  v36 = v33[6];
  if (v36)
  {
    LOBYTE(v36) = *(v31 + v36);
  }

LABEL_42:
  v37 = (a4 - *a4);
  if (*v37 > v35)
  {
    v38 = *(v37 + v35);
    if (v38)
    {
      LOBYTE(v36) = *(a4 + v38);
    }
  }

  v39 = *v32;
  if (*&v32[-v39] < 7u)
  {
    v40 = 0;
  }

  else
  {
    v40 = *&v32[-v39 + 6];
    LODWORD(v39) = *&v32[*&v32[-v39 + 6]];
  }

  LOBYTE(__p[0]) = v36;
  v41 = bsearch(__p, &v32[v40 + 4 + v39], *&v32[v40 + v39], 4uLL, sub_213CAA6F0);
  if (v41)
  {
    v42 = (v41 + *v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = *v42;
  if (*(v42 - v43) < 9u)
  {
    v44 = 0;
  }

  else
  {
    v44 = *(v42 - v43 + 8);
    LODWORD(v43) = *(v42 + *(v42 - v43 + 8));
  }

  return v42 + v44 + v43;
}

uint64_t flatbuffers::VerifyStruct(void *a1, int *a2, unsigned int a3, int *a4, int a5)
{
  v5 = (a2 - *a2);
  if (*v5 <= a3)
  {
    return a5 ^ 1u;
  }

  v6 = *(v5 + a3);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = a5;
  }

  if (!v6)
  {
    return v7 ^ 1u;
  }

  v8 = (a4 - *a4);
  if (*v8 < 0xDu)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8[6];
    if (v9)
    {
      v9 = *(a4 + v9);
    }
  }

  v11 = a1[1];
  v12 = a2 + v6 - *a1;
  v14 = v11 >= v9;
  v13 = v11 - v9;
  return v13 != 0 && v14 && v13 >= v12;
}

uint64_t flatbuffers::VerifyVectorOfStructs(uint64_t a1, int *a2, unsigned int a3, int *a4, int a5)
{
  v5 = (a2 - *a2);
  if (*v5 <= a3)
  {
    return a5 ^ 1u;
  }

  v6 = *(v5 + a3);
  if (!v6)
  {
    return a5 ^ 1u;
  }

  v7 = (a2 + v6 + *(a2 + v6));
  v8 = (a4 - *a4);
  if (*v8 >= 0xDu && (v9 = v8[6]) != 0)
  {
    v10 = *(a4 + v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = v7 - *a1;
  if (v13 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v11 = 0;
  v14 = *(a1 + 8);
  if (v14 < 5 || v14 - 4 < v13)
  {
    return v11;
  }

  v15 = *v7;
  if (0x7FFFFFFF / v10 <= v15)
  {
    return 0;
  }

  v16 = v10 * v15 + 4;
  v18 = v14 >= v16;
  v17 = v14 - v16;
  return v17 != 0 && v18 && v17 >= v13;
}

uint64_t flatbuffers::VerifyUnion(void *a1, int *a2, uint64_t a3, unsigned int *a4, int *a5)
{
  if (!a3)
  {
    return 1;
  }

  v5 = (a2 - *a2);
  v6 = *v5;
  if (v6 < 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5[3];
    if (v5[3])
    {
      v7 += a2 + *(a2 + v7);
    }
  }

  v9 = (a5 - *a5);
  if (*v9 < 7u)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9[3];
    if (v10)
    {
      v10 = (v10 + a5 + *(v10 + a5));
    }
  }

  v11 = (v10 - *v10);
  if (*v11 >= 9u && (v12 = v11[4]) != 0)
  {
    v13 = 4 * *(v10 + v12);
  }

  else
  {
    v13 = 0x3FFFFFFFCLL;
  }

  v14 = (v7 + v13 + 4 + *(v7 + v13 + 4));
  v15 = *v14;
  v16 = v14 - v15;
  v17 = *(v14 - v15);
  if (v17 < 7)
  {
    v20 = 0;
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = *(v16 + 3);
    if (*(v16 + 3))
    {
      v19 = *(v14 + v18);
      v20 = v14 + v18 + v19;
      goto LABEL_21;
    }

    v20 = 0;
  }

  LODWORD(v19) = *v14;
LABEL_21:
  v21 = &v14[*(v14 + v18 + v19) + 1] + v18 + v19;
  v22 = v20 + 14;
  do
  {
    v23 = v22;
    v24 = (v22 - 10);
    if (v22 - 10 == v21)
    {
      break;
    }

    v25 = *(v22 - 10);
    v26 = &v22[v25 - *&v22[v25 - 10]];
    if (*(v26 - 5) >= 7u && (v27 = *(v26 - 2)) != 0)
    {
      v28 = *&v23[v25 - 10 + v27];
    }

    else
    {
      v28 = 0;
    }

    v22 = v23 + 4;
  }

  while (v28 != a3);
  if (v17 < 7)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v16 + 3);
    LODWORD(v15) = *(v14 + v29);
  }

  if (v24 == (&v14[*(v14 + v29 + v15) + 1] + v29 + v15))
  {
    return 0;
  }

  v30 = *(v23 - 10);
  v31 = v30 - *&v23[v30 - 10];
  if (*&v23[v31 - 10] >= 0xBu && (v32 = *&v23[v31]) != 0)
  {
    v33 = &v23[v30 - 10 + v32 + *&v23[v30 - 10 + v32]];
  }

  else
  {
    v33 = 0;
  }

  v34 = &v33[-*v33];
  v35 = *v34;
  if (v35 < 5 || !*(v34 + 2))
  {
    return 0;
  }

  v36 = v33[*(v34 + 2)];
  if (v36 == 13)
  {
    return sub_213C9C7DC(a1, a4);
  }

  if (v36 != 15)
  {
    return 0;
  }

  if (v6 < 5)
  {
    v37 = 0;
  }

  else
  {
    v37 = v5[2];
    if (v37)
    {
      v37 += a2 + *(a2 + v37);
    }
  }

  if (v35 >= 9 && *(v34 + 4))
  {
    v38 = 4 * *&v33[*(v34 + 4)];
  }

  else
  {
    v38 = 0x3FFFFFFFCLL;
  }

  v39 = (v37 + v38 + 4 + *(v37 + v38 + 4));
  v40 = (v39 - *v39);
  v41 = *v40;
  if (v41 < 9 || !v40[4] || !*(v39 + v40[4]))
  {
    return flatbuffers::VerifyObject();
  }

  if (v41 < 0xD)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40[6];
    if (v42)
    {
      v42 = *(v39 + v42);
    }
  }

  v43 = a1[1];
  v45 = v43 >= v42;
  v44 = v43 - v42;
  return v44 != 0 && v45 && v44 >= a4 - *a1;
}

uint64_t flatbuffers::VerifyObject(uint64_t a1, int *a2, int *a3, int *a4, int a5)
{
  if (!a4)
  {
    return a5 ^ 1u;
  }

  result = sub_213C9C85C(a1, a4);
  if (!result)
  {
    return result;
  }

  v10 = *(a3 - *a3 + 6);
  v11 = *(a3 + v10);
  if (*(a3 + v10 + v11))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v10;
      v15 = v11 + v10;
      v16 = *(&a3[v12 + 1] + v15);
      v17 = v15 + v16;
      v18 = (&a3[v12] + v15 + v16);
      v19 = v18[1];
      v20 = *(&a3[v12 + 1] + v17 - v19);
      if (v20 < 7)
      {
        v22 = 0;
      }

      else
      {
        v21 = v14 + v11 + v16;
        v22 = *(&a3[v12 + 2] + v21 - v19 + 2);
        if (*(&a3[v12 + 2] + v21 - v19 + 2))
        {
          v22 = (v22 + v21 + v12 * 4 + a3 + *(&a3[v12 + 1] + v22 + v21) + 4);
        }
      }

      v23 = (v22 - *v22);
      if (*v23 < 5u)
      {
        goto LABEL_66;
      }

      v24 = v23[2];
      if (!v24)
      {
        goto LABEL_66;
      }

      v25 = *(v22 + v24);
      if (v25 > 10)
      {
        if (v25 <= 14)
        {
          if (v25 > 12)
          {
            if (v25 == 13)
            {
              if (v20 >= 0xB && (v50 = v14 + v11 + v16, *(&a3[v12 + 3] + v50 - v19 + 2)))
              {
                v51 = *(a3 + v50 + v12 * 4 + *(&a3[v12 + 3] + v50 - v19 + 2) + 4);
              }

              else
              {
                v51 = 0;
              }

              v54 = (a4 - *a4);
              v55 = *v54;
              if (v55 > v51)
              {
                v56 = *(v54 + v51);
                if (v56)
                {
                  result = 0;
                  v57 = *(a1 + 8);
                  if (v57 < 5 || v57 - 4 < a4 + v56 - *a1)
                  {
                    return result;
                  }
                }
              }

              if (v20 >= 0xB && (v58 = v14 + v11 + v16, (v59 = *(&a3[v12 + 3] + v58 - v19 + 2)) != 0))
              {
                v60 = *(a3 + v58 + v12 * 4 + v59 + 4);
              }

              else
              {
                v60 = 0;
              }

              if (v55 > v60 && (v63 = *(v54 + v60)) != 0)
              {
                v64 = (a4 + v63 + *(a4 + v63));
              }

              else
              {
                v64 = 0;
              }

              if (!sub_213C9C7DC(a1, v64))
              {
                return 0;
              }
            }

            else if ((flatbuffers::VerifyVector(a1, a2, a4, v18 + 1) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_66;
          }

          if (v25 != 11)
          {
            goto LABEL_26;
          }

LABEL_34:
          if (v20 >= 0xB && (v32 = v14 + v11 + v16, *(&a3[v12 + 3] + v32 - v19 + 2)))
          {
            v33 = *(a3 + v32 + v12 * 4 + *(&a3[v12 + 3] + v32 - v19 + 2) + 4);
          }

          else
          {
            v33 = 0;
          }

          v39 = (a4 - *a4);
          if (*v39 > v33)
          {
            v40 = *(v39 + v33);
            if (v40)
            {
              result = 0;
              v41 = *(a1 + 8);
              if (v41 < 5)
              {
                return result;
              }

              v37 = a4 + v40 - *a1;
              v38 = v41 - 4;
              goto LABEL_65;
            }
          }

          goto LABEL_66;
        }

        if (v25 > 252)
        {
          if (v25 == 253)
          {
            goto LABEL_26;
          }

          if (v25 == 254)
          {
            goto LABEL_34;
          }

LABEL_21:
          if (v20 >= 0xB && (v26 = v14 + v11 + v16, *(&a3[v12 + 3] + v26 - v19 + 2)))
          {
            v27 = *(a3 + v26 + v12 * 4 + *(&a3[v12 + 3] + v26 - v19 + 2) + 4);
          }

          else
          {
            v27 = 0;
          }

          v47 = (a4 - *a4);
          if (*v47 > v27)
          {
            v48 = *(v47 + v27);
            if (v48)
            {
              result = 0;
              v49 = *(a1 + 8);
              if (v49 < 3)
              {
                return result;
              }

              v37 = a4 + v48 - *a1;
              v38 = v49 - 2;
LABEL_65:
              if (v38 < v37)
              {
                return result;
              }

              goto LABEL_66;
            }
          }

          goto LABEL_66;
        }

        if (v25 != 15)
        {
          if (v25 != 16)
          {
            goto LABEL_66;
          }

          if (v20 >= 0xB && (v45 = v14 + v11 + v16, *(&a3[v12 + 3] + v45 - v19 + 2)))
          {
            v46 = *(a3 + v45 + v12 * 4 + *(&a3[v12 + 3] + v45 - v19 + 2) + 4) - 2;
          }

          else
          {
            v46 = -2;
          }

          v61 = (a2 - *a2);
          if (*v61 < 7u)
          {
            v62 = 0;
          }

          else
          {
            v62 = v61[3];
            if (v62)
            {
              v62 += a2 + *(a2 + v62);
            }
          }

          if (v20 >= 7 && (v84 = v14 + v11 + v16, *(&a3[v12 + 2] + v84 - v19 + 2)))
          {
            v85 = v84 + *(&a3[v12 + 2] + v84 - v19 + 2);
            v86 = (&a3[v12 + 1] + v85 + *(&a3[v12 + 1] + v85));
          }

          else
          {
            v86 = 0;
          }

          v87 = (v86 - *v86);
          if (*v87 >= 9u && (v88 = v87[4]) != 0)
          {
            v89 = 4 * *(v86 + v88);
          }

          else
          {
            v89 = 0x3FFFFFFFCLL;
          }

          v90 = (v62 + v89 + 4 + *(v62 + v89 + 4));
          v91 = (v90 - *v90);
          if (*v91 >= 0xBu && (v92 = v91[5]) != 0)
          {
            v93 = (v90 + v92 + *(v90 + v92));
          }

          else
          {
            v93 = 0;
          }

          v94 = (v93 - *v93);
          if (*v94 < 5u)
          {
            return 0;
          }

          v95 = v94[2];
          if (!v95)
          {
            return 0;
          }

          result = 0;
          v96 = *(v93 + v95);
          if (v96 > 253)
          {
            if (v96 == 254)
            {
              v97 = *a4;
              if (*(a4 - v97) > v46)
              {
                v102 = *(a4 + v46 - v97);
                if (v102)
                {
                  v99 = *(a4 + v102);
                  goto LABEL_154;
                }
              }
            }

            else
            {
              v97 = *a4;
              if (*(a4 - v97) > v46)
              {
                v100 = *(a4 + v46 - v97);
                if (v100)
                {
                  v99 = *(a4 + v100);
                  goto LABEL_154;
                }
              }
            }
          }

          else if (v96 == 1)
          {
            v97 = *a4;
            if (*(a4 - v97) > v46)
            {
              v101 = *(a4 + v46 - v97);
              if (v101)
              {
                v99 = *(a4 + v101);
                goto LABEL_154;
              }
            }
          }

          else
          {
            if (v96 != 253)
            {
              return result;
            }

            v97 = *a4;
            if (*(a4 - v97) > v46)
            {
              v98 = *(a4 + v46 - v97);
              if (v98)
              {
                v99 = *(a4 + v98);
LABEL_154:
                if (v20 >= 0xB && (v103 = v14 + v11 + v16, (v104 = *(&a3[v12 + 3] + v103 - v19 + 2)) != 0))
                {
                  v105 = *(a3 + v103 + v12 * 4 + v104 + 4);
                }

                else
                {
                  v105 = 0;
                }

                v106 = (a4 - v97);
                if (*v106 > v105 && (v107 = *(v106 + v105)) != 0)
                {
                  v108 = (a4 + v107 + *(a4 + v107));
                }

                else
                {
                  v108 = 0;
                }

                result = flatbuffers::VerifyUnion(a1, a2, v99, v108, v18 + 1);
                if (!result)
                {
                  return result;
                }

                goto LABEL_66;
              }
            }
          }

          v99 = 0;
          goto LABEL_154;
        }

        v52 = (a2 - *a2);
        if (*v52 < 5u)
        {
          v53 = 0;
        }

        else
        {
          v53 = v52[2];
          if (v53)
          {
            v53 += a2 + *(a2 + v53);
          }
        }

        if (v20 >= 7 && (v65 = v14 + v11 + v16, *(&a3[v12 + 2] + v65 - v19 + 2)))
        {
          v66 = v65 + *(&a3[v12 + 2] + v65 - v19 + 2);
          v67 = (&a3[v12 + 1] + v66 + *(&a3[v12 + 1] + v66));
        }

        else
        {
          v67 = 0;
        }

        v68 = (v67 - *v67);
        if (*v68 >= 9u && (v69 = v68[4]) != 0)
        {
          v70 = 4 * *(v67 + v69);
        }

        else
        {
          v70 = 0x3FFFFFFFCLL;
        }

        v71 = (v53 + v70 + 4 + *(v53 + v70 + 4));
        v72 = (v71 - *v71);
        if (*v72 >= 9u)
        {
          v73 = v72[4];
          if (v73)
          {
            if (*(v71 + v73))
            {
              if (v20 < 0xB)
              {
                v75 = 0;
              }

              else
              {
                v74 = v14 + v11 + v16;
                if (*(&a3[v12 + 3] + v74 - v19 + 2))
                {
                  v75 = *(a3 + v74 + v12 * 4 + *(&a3[v12 + 3] + v74 - v19 + 2) + 4);
                }

                else
                {
                  v75 = 0;
                }

                if (v20 >= 0x13)
                {
                  v109 = v14 + v11 + v16;
                  v110 = *(&a3[v12 + 5] + v109 - v19 + 2);
                  if (v110)
                  {
                    v111 = *(a3 + v109 + v12 * 4 + v110 + 4) != 0;
                    goto LABEL_170;
                  }
                }
              }

              v111 = 0;
LABEL_170:
              if ((flatbuffers::VerifyStruct(a1, a4, v75, v71, v111) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_66;
            }
          }
        }

        if (v20 >= 0xB && (v76 = v14 + v11 + v16, *(&a3[v12 + 3] + v76 - v19 + 2)))
        {
          v77 = *(a3 + v76 + v12 * 4 + *(&a3[v12 + 3] + v76 - v19 + 2) + 4);
        }

        else
        {
          v77 = 0;
        }

        v78 = (a4 - *a4);
        if (*v78 > v77 && (v79 = *(v78 + v77)) != 0)
        {
          v80 = a4 + v79 + *(a4 + v79);
        }

        else
        {
          v80 = 0;
        }

        v83 = v20 >= 0x13 && (v81 = v14 + v11 + v16, (v82 = *(&a3[v12 + 5] + v81 - v19 + 2)) != 0) && *(a3 + v81 + v12 * 4 + v82 + 4) != 0;
        if ((flatbuffers::VerifyObject(a1, a2, v71, v80, v83) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v25 > 4)
        {
          if ((v25 - 5) >= 2)
          {
            if ((v25 - 7) >= 2)
            {
              if ((v25 - 9) >= 2)
              {
                goto LABEL_66;
              }

LABEL_26:
              if (v20 >= 0xB && (v28 = v14 + v11 + v16, *(&a3[v12 + 3] + v28 - v19 + 2)))
              {
                v29 = *(a3 + v28 + v12 * 4 + *(&a3[v12 + 3] + v28 - v19 + 2) + 4);
              }

              else
              {
                v29 = 0;
              }

              v34 = (a4 - *a4);
              if (*v34 > v29)
              {
                v35 = *(v34 + v29);
                if (v35)
                {
                  result = 0;
                  v36 = *(a1 + 8);
                  if (v36 < 9)
                  {
                    return result;
                  }

                  v37 = a4 + v35 - *a1;
                  v38 = v36 - 8;
                  goto LABEL_65;
                }
              }

              goto LABEL_66;
            }

            goto LABEL_34;
          }

          goto LABEL_21;
        }

        if ((v25 - 2) < 3 || v25 == 1)
        {
          if (v20 >= 0xB && (v30 = v14 + v11 + v16, *(&a3[v12 + 3] + v30 - v19 + 2)))
          {
            v31 = *(a3 + v30 + v12 * 4 + *(&a3[v12 + 3] + v30 - v19 + 2) + 4);
          }

          else
          {
            v31 = 0;
          }

          v42 = (a4 - *a4);
          if (*v42 > v31)
          {
            v43 = *(v42 + v31);
            if (v43)
            {
              result = 0;
              v44 = *(a1 + 8);
              if (v44 < 2)
              {
                return result;
              }

              v37 = a4 + v43 - *a1;
              v38 = v44 - 1;
              goto LABEL_65;
            }
          }
        }
      }

LABEL_66:
      ++v13;
      v10 = *(a3 - *a3 + 6);
      v11 = *(a3 + v10);
      ++v12;
    }

    while (v13 < *(a3 + v10 + v11));
  }

  --*(a1 + 16);
  return 1;
}

uint64_t flatbuffers::VerifyVector(uint64_t a1, int *a2, int *a3, int *a4)
{
  v7 = (a4 - *a4);
  v8 = *v7;
  if (v8 >= 0xB && v7[5])
  {
    v9 = *(a4 + v7[5]);
  }

  else
  {
    v9 = 0;
  }

  v10 = (a3 - *a3);
  v11 = *v10;
  if (v11 > v9)
  {
    v12 = *(v10 + v9);
    if (v12)
    {
      v13 = *(a1 + 8);
      v14 = a3 + v12 - *a1;
      v15 = v13 >= 5 && v13 - 4 >= v14;
      if (!v15)
      {
        return 0;
      }
    }
  }

  if (v8 < 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = v7[3];
    if (v7[3])
    {
      v16 = (v16 + a4 + *(v16 + a4));
    }
  }

  v17 = (v16 - *v16);
  if (*v17 < 7u)
  {
    return 0;
  }

  v18 = v17[3];
  if (!v18)
  {
    return 0;
  }

  result = 0;
  v20 = *(v16 + v18);
  if (v20 <= 8)
  {
    if (v20 > 4)
    {
      if ((v20 - 5) < 2)
      {
        if (v8 < 0xB)
        {
          LODWORD(v27) = 0;
        }

        else
        {
          v27 = v7[5];
          if (v27)
          {
            LODWORD(v27) = *(a4 + v27);
          }
        }

        if (v11 > v27)
        {
          v44 = *(v10 + v27);
          if (v44)
          {
            v45 = (a3 + v44 + *(a3 + v44));
            v30 = v45 - *a1;
            if ((v30 & 3) == 0 || (*(a1 + 40) & 1) == 0)
            {
              result = 0;
              v31 = *(a1 + 8);
              if (v31 < 5 || v31 - 4 < v30)
              {
                return result;
              }

              v46 = *v45;
              if (v46 <= 0x3FFFFFFE)
              {
                v36 = 2 * v46;
                goto LABEL_102;
              }
            }

            return 0;
          }
        }

        return 1;
      }

      if ((v20 - 7) >= 2)
      {
        return result;
      }

LABEL_37:
      if (v8 < 0xB)
      {
        LODWORD(v23) = 0;
      }

      else
      {
        v23 = v7[5];
        if (v23)
        {
          LODWORD(v23) = *(a4 + v23);
        }
      }

      if (v11 > v23)
      {
        v37 = *(v10 + v23);
        if (v37)
        {
          v38 = (a3 + v37 + *(a3 + v37));
          v30 = v38 - *a1;
          if ((v30 & 3) == 0 || (*(a1 + 40) & 1) == 0)
          {
            result = 0;
            v31 = *(a1 + 8);
            if (v31 < 5 || v31 - 4 < v30)
            {
              return result;
            }

            v39 = *v38;
            if (v39 <= 0x1FFFFFFE)
            {
              v36 = 4 * v39;
LABEL_102:
              v33 = v36 + 4;
              goto LABEL_103;
            }
          }

          return 0;
        }
      }

      return 1;
    }

    if ((v20 - 2) < 3)
    {
      if (v8 < 0xB)
      {
        LODWORD(v21) = 0;
      }

      else
      {
        v21 = v7[5];
        if (v21)
        {
          LODWORD(v21) = *(a4 + v21);
        }
      }

      if (v11 > v21)
      {
        v34 = *(v10 + v21);
        if (v34)
        {
          v35 = (a3 + v34 + *(a3 + v34));
          v30 = v35 - *a1;
          if ((v30 & 3) == 0 || (*(a1 + 40) & 1) == 0)
          {
            result = 0;
            v31 = *(a1 + 8);
            if (v31 < 5 || v31 - 4 < v30)
            {
              return result;
            }

            v36 = *v35;
            if (v36 <= 0x7FFFFFFE)
            {
              goto LABEL_102;
            }
          }

          return 0;
        }
      }

      return 1;
    }

    if (v20 == 1)
    {
      if (v8 < 0xB)
      {
        LODWORD(v40) = 0;
      }

      else
      {
        v40 = v7[5];
        if (v40)
        {
          LODWORD(v40) = *(a4 + v40);
        }
      }

      if (v11 > v40 && (v78 = *(v10 + v40)) != 0)
      {
        v79 = (a3 + v78 + *(a3 + v78));
      }

      else
      {
        v79 = 0;
      }

      return sub_213CA9BC4(a1, v79);
    }

    return result;
  }

  if (v20 > 14)
  {
    if (v20 > 252)
    {
      if (v20 == 253)
      {
        if (v8 < 0xB)
        {
          LODWORD(v41) = 0;
        }

        else
        {
          v41 = v7[5];
          if (v41)
          {
            LODWORD(v41) = *(a4 + v41);
          }
        }

        if (v11 > v41 && (v53 = *(v10 + v41)) != 0)
        {
          v54 = (a3 + v53 + *(a3 + v53));
        }

        else
        {
          v54 = 0;
        }

        return sub_213CA9C90(a1, v54);
      }

      else if (v20 == 255)
      {
        if (v8 < 0xB)
        {
          LODWORD(v22) = 0;
        }

        else
        {
          v22 = v7[5];
          if (v22)
          {
            LODWORD(v22) = *(a4 + v22);
          }
        }

        if (v11 > v22 && (v55 = *(v10 + v22)) != 0)
        {
          v56 = (a3 + v55 + *(a3 + v55));
        }

        else
        {
          v56 = 0;
        }

        return sub_213CA9C28(a1, v56);
      }

      else
      {
        if (v8 < 0xB)
        {
          LODWORD(v90) = 0;
        }

        else
        {
          v90 = v7[5];
          if (v90)
          {
            LODWORD(v90) = *(a4 + v90);
          }
        }

        if (v11 > v90 && (v91 = *(v10 + v90)) != 0)
        {
          v92 = (a3 + v91 + *(a3 + v91));
        }

        else
        {
          v92 = 0;
        }

        return sub_213CBF72C(a1, v92);
      }
    }

    if (v20 != 15)
    {
      if (v20 != 16)
      {
        return result;
      }

      if (v8 < 0xB)
      {
        LODWORD(v26) = 0;
      }

      else
      {
        v26 = v7[5];
        if (v7[5])
        {
          LODWORD(v26) = *(a4 + v26);
        }
      }

      if (v11 <= v26)
      {
        return 1;
      }

      v57 = *(v10 + v26);
      if (!v57)
      {
        return 1;
      }

      v58 = (a3 + v57 + *(a3 + v57));
      v59 = v58 - *a1;
      if (v59 & 3) != 0 && (*(a1 + 40))
      {
        return 0;
      }

      result = 0;
      v60 = *(a1 + 8);
      if (v60 < 5 || v60 - 4 < v59)
      {
        return result;
      }

      v61 = *v58;
      if (v61 > 0x1FFFFFFE)
      {
        return 0;
      }

      v62 = 4 * v61 + 4;
      v63 = v60 > v62;
      v64 = v60 - v62;
      if (!v63 || v64 < v59)
      {
        return 0;
      }

      v66 = (a2 - *a2);
      if (*v66 < 7u)
      {
        v67 = 0;
      }

      else
      {
        v67 = v66[3];
        if (v67)
        {
          v67 += a2 + *(a2 + v67);
        }
      }

      if (v8 < 7)
      {
        v93 = 0;
      }

      else
      {
        v93 = v7[3];
        if (v7[3])
        {
          v93 = (v93 + a4 + *(v93 + a4));
        }
      }

      v94 = (v93 - *v93);
      if (*v94 >= 9u && (v95 = v94[4]) != 0)
      {
        v96 = 4 * *(v93 + v95);
      }

      else
      {
        v96 = 0x3FFFFFFFCLL;
      }

      v97 = (v67 + v96 + 4 + *(v67 + v96 + 4));
      v98 = (v97 - *v97);
      if (*v98 >= 0xBu && (v99 = v98[5]) != 0)
      {
        v100 = (v97 + v99 + *(v97 + v99));
      }

      else
      {
        v100 = 0;
      }

      v101 = (v100 - *v100);
      if (*v101 < 5u)
      {
        return 0;
      }

      v102 = v101[2];
      if (!v102)
      {
        return 0;
      }

      result = 0;
      v103 = *(v100 + v102);
      v132 = *v58;
      if (v103 > 253)
      {
        if (v103 == 255)
        {
          if (v8 >= 0xB && (v106 = v7[5]) != 0)
          {
            v107 = *(a4 + v106) - 2;
          }

          else
          {
            v107 = -2;
          }

          if (v11 > v107 && (v110 = *(v10 + v107)) != 0)
          {
            v111 = (a3 + v110 + *(a3 + v110));
          }

          else
          {
            v111 = 0;
          }

          result = sub_213CA9C28(a1, v111);
          if (result)
          {
            if (!v132)
            {
              return 1;
            }

            v112 = 0;
            v113 = v111 + 1;
            v114 = v58 + 1;
            do
            {
              result = flatbuffers::VerifyUnion(a1, a2, *(v113 + v112), (v114 + *v114), a4);
              if ((result & 1) == 0)
              {
                break;
              }

              ++v112;
              ++v114;
            }

            while (v112 < *v58);
          }
        }

        else
        {
          if (v8 >= 0xB && (v125 = v7[5]) != 0)
          {
            v126 = *(a4 + v125) - 2;
          }

          else
          {
            v126 = -2;
          }

          if (v11 > v126 && (v127 = *(v10 + v126)) != 0)
          {
            v128 = (a3 + v127 + *(a3 + v127));
          }

          else
          {
            v128 = 0;
          }

          result = sub_213CBF72C(a1, v128);
          if (result)
          {
            if (!v132)
            {
              return 1;
            }

            v129 = 0;
            v130 = v128 + 1;
            v131 = v58 + 1;
            do
            {
              result = flatbuffers::VerifyUnion(a1, a2, v130[v129], (v131 + *v131), a4);
              if ((result & 1) == 0)
              {
                break;
              }

              ++v129;
              ++v131;
            }

            while (v129 < *v58);
          }
        }
      }

      else if (v103 == 1)
      {
        if (v8 >= 0xB && (v108 = v7[5]) != 0)
        {
          v109 = *(a4 + v108) - 2;
        }

        else
        {
          v109 = -2;
        }

        if (v11 > v109 && (v120 = *(v10 + v109)) != 0)
        {
          v121 = (a3 + v120 + *(a3 + v120));
        }

        else
        {
          v121 = 0;
        }

        result = sub_213CA9BC4(a1, v121);
        if (result)
        {
          if (!v132)
          {
            return 1;
          }

          v122 = 0;
          v123 = v121 + 1;
          v124 = v58 + 1;
          do
          {
            result = flatbuffers::VerifyUnion(a1, a2, *(v123 + v122), (v124 + *v124), a4);
            if ((result & 1) == 0)
            {
              break;
            }

            ++v122;
            ++v124;
          }

          while (v122 < *v58);
        }
      }

      else if (v103 == 253)
      {
        if (v8 >= 0xB && (v104 = v7[5]) != 0)
        {
          v105 = *(a4 + v104) - 2;
        }

        else
        {
          v105 = -2;
        }

        if (v11 > v105 && (v115 = *(v10 + v105)) != 0)
        {
          v116 = (a3 + v115 + *(a3 + v115));
        }

        else
        {
          v116 = 0;
        }

        result = sub_213CA9C90(a1, v116);
        if (result)
        {
          if (!v132)
          {
            return 1;
          }

          v117 = 0;
          v118 = v116 + 1;
          v119 = v58 + 1;
          do
          {
            result = flatbuffers::VerifyUnion(a1, a2, *&v118[2 * v117], (v119 + *v119), a4);
            if ((result & 1) == 0)
            {
              break;
            }

            ++v117;
            ++v119;
          }

          while (v117 < *v58);
        }
      }

      return result;
    }

    v42 = (a2 - *a2);
    if (*v42 < 5u)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42[2];
      if (v43)
      {
        v43 += a2 + *(a2 + v43);
      }
    }

    if (v8 < 7)
    {
      v68 = 0;
    }

    else
    {
      v68 = v7[3];
      if (v7[3])
      {
        v68 = (v68 + a4 + *(v68 + a4));
      }
    }

    v69 = (v68 - *v68);
    if (*v69 >= 9u && (v70 = v69[4]) != 0)
    {
      v71 = 4 * *(v68 + v70);
    }

    else
    {
      v71 = 0x3FFFFFFFCLL;
    }

    v72 = (v43 + v71 + 4 + *(v43 + v71 + 4));
    v73 = (v72 - *v72);
    if (*v73 < 9u || (v74 = v73[4]) == 0 || !*(v72 + v74))
    {
      if (v8 < 0xB)
      {
        LODWORD(v77) = 0;
      }

      else
      {
        v77 = v7[5];
        if (v77)
        {
          LODWORD(v77) = *(a4 + v77);
        }
      }

      if (v11 <= v77)
      {
        return 1;
      }

      v80 = *(v10 + v77);
      if (!v80)
      {
        return 1;
      }

      v81 = (a3 + v80 + *(a3 + v80));
      v82 = v81 - *a1;
      if (v82 & 3) != 0 && (*(a1 + 40))
      {
        return 0;
      }

      result = 0;
      v83 = *(a1 + 8);
      if (v83 < 5 || v83 - 4 < v82)
      {
        return result;
      }

      v84 = *v81;
      if (v84 > 0x1FFFFFFE)
      {
        return 0;
      }

      v85 = 4 * v84 + 4;
      v63 = v83 > v85;
      v86 = v83 - v85;
      if (!v63 || v86 < v82)
      {
        return 0;
      }

      if (!v84)
      {
        return 1;
      }

      v88 = 0;
      v89 = v81 + 1;
      do
      {
        result = flatbuffers::VerifyObject(a1, a2, v72, v89 + *v89, 1);
        if ((result & 1) == 0)
        {
          break;
        }

        ++v88;
        ++v89;
      }

      while (v88 < *v81);
      return result;
    }

    if (v8 < 0xB)
    {
      LODWORD(v75) = 0;
    }

    else
    {
      v75 = v7[5];
      if (v7[5])
      {
        LODWORD(v75) = *(a4 + v75);
      }

      if (v8 >= 0x13 && v7[9])
      {
        v76 = *(a4 + v7[9]) != 0;
LABEL_205:

        return flatbuffers::VerifyVectorOfStructs(a1, a3, v75, v72, v76);
      }
    }

    v76 = 0;
    goto LABEL_205;
  }

  if (v20 <= 11)
  {
    if ((v20 - 9) >= 2)
    {
      if (v20 != 11)
      {
        return result;
      }

      goto LABEL_37;
    }

LABEL_45:
    if (v8 < 0xB)
    {
      LODWORD(v25) = 0;
    }

    else
    {
      v25 = v7[5];
      if (v25)
      {
        LODWORD(v25) = *(a4 + v25);
      }
    }

    if (v11 > v25)
    {
      v28 = *(v10 + v25);
      if (v28)
      {
        v29 = (a3 + v28 + *(a3 + v28));
        v30 = v29 - *a1;
        if ((v30 & 3) == 0 || (*(a1 + 40) & 1) == 0)
        {
          result = 0;
          v31 = *(a1 + 8);
          if (v31 < 5 || v31 - 4 < v30)
          {
            return result;
          }

          v32 = *v29;
          if (v32 <= 0xFFFFFFE)
          {
            v33 = (8 * v32) | 4;
LABEL_103:
            v15 = v31 >= v33;
            v47 = v31 - v33;
            return v47 != 0 && v15 && v47 >= v30;
          }
        }

        return 0;
      }
    }

    return 1;
  }

  if (v20 == 12)
  {
    goto LABEL_45;
  }

  if (v20 == 13)
  {
    if (v8 < 0xB)
    {
      LODWORD(v24) = 0;
    }

    else
    {
      v24 = v7[5];
      if (v24)
      {
        LODWORD(v24) = *(a4 + v24);
      }
    }

    if (v11 > v24 && (v49 = *(v10 + v24)) != 0)
    {
      v50 = (a3 + v49 + *(a3 + v49));
    }

    else
    {
      v50 = 0;
    }

    result = sub_213C9D0A8(a1, v50);
    if (result)
    {
      if (!v50 || !*v50)
      {
        return 1;
      }

      v51 = 0;
      v52 = v50 + 1;
      do
      {
        result = sub_213C9C7DC(a1, (v52 + *v52));
        if ((result & 1) == 0)
        {
          break;
        }

        ++v51;
        ++v52;
      }

      while (v51 < *v50);
    }
  }

  return result;
}

uint64_t sub_213CA9BC4(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (v2 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 < 5 || v3 - 4 < v2)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3 > v6 + 4;
  v8 = v3 - (v6 + 4);
  v10 = v7 && v8 >= v2;
  if (v6 <= 0x7FFFFFFE)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

BOOL sub_213CA9C28(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (v2 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 < 5 || v3 - 4 < v2)
  {
    return 0;
  }

  v5 = *a2;
  if (v5 > 0x3FFFFFFE)
  {
    return 0;
  }

  v6 = 2 * v5 + 4;
  v7 = v3 > v6;
  v8 = v3 - v6;
  return v7 && v8 >= v2;
}

BOOL sub_213CA9C90(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (v2 & 3) != 0 && (*(a1 + 40))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 < 5 || v3 - 4 < v2)
  {
    return 0;
  }

  v5 = *a2;
  if (v5 > 0xFFFFFFE)
  {
    return 0;
  }

  v6 = (8 * v5) | 4;
  v7 = v3 > v6;
  v8 = v3 - v6;
  return v7 && v8 >= v2;
}

uint64_t flatbuffers::Verify(int *a1, int *a2, unsigned int *a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  v6 = xmmword_213CC7C70;
  v7 = 0;
  v8 = 1;
  return flatbuffers::VerifyObject(v5, a1, a2, (a3 + *a3), 1);
}

uint64_t sub_213CA9D50(uint64_t a1, int *a2, unsigned int a3, int a4, uint64_t *a5, int *a6)
{
  v6 = a6;
  *a1 = a2;
  v9 = *a5;
  if (*a5 == a5[1])
  {
    v9 = 0;
  }

  *(a1 + 8) = v9 + a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  v10 = a5[1] - *a5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v10 >= 4)
  {
    operator new();
  }

  v11 = (a4 + 7) & 0xFFFFFFF8;
  *(a1 + 16) = v11;
  if (v11)
  {
    v12 = *(a1 + 24);
    if (*v12 == *(v12 + 8))
    {
      v13 = 0;
    }

    else
    {
      v13 = *v12;
    }

    v14 = *v13;
    v15 = (v13 + v14);
    v16 = *(a1 + 8);
    if (v16 >= v13 && v16 <= v15)
    {
      *v13 = v14 + v11;
      MEMORY[0] = 1;
    }

    if (!a6)
    {
      v18 = *a2;
      if (*(a2 - v18) < 0xDu)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(a2 - v18 + 12);
        LODWORD(v18) = *(a2 + *(a2 - v18 + 12));
      }

      v6 = (a2 + v19 + v18);
    }

    sub_213CA9EF8(a1, v6, v15);
    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v22 = *v21;
    if (v20 >= 1)
    {
      v28 = 0;
      sub_213CBE508(v21, (v22 + a3), v20, &v28);
    }

    else if (v20)
    {
      v23 = (v22 + a3);
      v24 = &v23[-v20];
      v25 = v21[1];
      v26 = v25 - v24;
      if (v25 != v24)
      {
        memmove(v23, v24, v25 - v24);
      }

      v21[1] = &v23[v26];
    }
  }

  return a1;
}

uint64_t sub_213CA9EF8(uint64_t result, int *a2, int *a3)
{
  v3 = *(result + 24);
  if (*v3 == v3[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
  }

  v5 = (*(result + 32) + ((a3 - v4) >> 2));
  if (!*v5)
  {
    v7 = result;
    v8 = *a3;
    v9 = (a3 - v8);
    v10 = *(result + 8);
    if (v10 <= a3)
    {
      if (v10 < v9)
      {
        return result;
      }

      *a3 = v8 - *(result + 16);
      goto LABEL_101;
    }

    v12 = (a2 + *(a2 - *a2 + 6));
    v13 = (v12 + *v12);
    if (*v13)
    {
      v14 = a3 + 1;
      v15 = v13 + 1;
      while (1)
      {
        v16 = (v15 + *v15);
        v17 = (v16 - *v16);
        v18 = *v17;
        if (v18 < 7)
        {
          v19 = 0;
        }

        else
        {
          v19 = v17[3];
          if (v17[3])
          {
            v19 = (v19 + v16 + *(v19 + v16));
          }
        }

        v20 = (v19 - *v19);
        if (*v20 < 5u)
        {
          goto LABEL_55;
        }

        v21 = v20[2];
        if (!v21)
        {
          goto LABEL_55;
        }

        v22 = *(v19 + v21);
        if (v22 < 13)
        {
          goto LABEL_55;
        }

        if (v18 < 0xB)
        {
          LODWORD(v23) = 0;
        }

        else
        {
          v23 = v17[5];
          if (v17[5])
          {
            LODWORD(v23) = *(v16 + v23);
          }
        }

        v24 = (a3 - *a3);
        if (*v24 <= v23)
        {
          goto LABEL_55;
        }

        v25 = *(v24 + v23);
        if (!v25)
        {
          goto LABEL_55;
        }

        if (v22 == 15)
        {
          v26 = (*v7 - **v7);
          if (*v26 >= 5u && (v27 = v26[2]) != 0)
          {
            v28 = *v7 + v27 + *(*v7 + v27);
          }

          else
          {
            v28 = 0;
          }

          if (v18 < 7)
          {
            v30 = 0;
          }

          else
          {
            v30 = v17[3];
            if (v30)
            {
              v30 = (v30 + v16 + *(v30 + v16));
            }
          }

          v31 = (v30 - *v30);
          if (*v31 >= 9u && (v32 = v31[4]) != 0)
          {
            v33 = 4 * *(v30 + v32);
          }

          else
          {
            v33 = 0x3FFFFFFFCLL;
          }

          v29 = &v28[v33 + 4 + *&v28[v33 + 4]];
          v34 = &v29[-*v29];
          if (*v34 >= 9u)
          {
            v35 = *(v34 + 4);
            if (v35)
            {
              if (v29[v35])
              {
                goto LABEL_55;
              }
            }
          }
        }

        else
        {
          v29 = 0;
        }

        v36 = (a3 + v25);
        v38 = v7[3];
        v37 = v7[4];
        if (*v38 == *(v38 + 1))
        {
          v39 = 0;
        }

        else
        {
          v39 = *v38;
        }

        v40 = (v36 - v39) >> 2;
        if (!*(v37 + v40))
        {
          v41 = *v36;
          v42 = (v36 + v41);
          v43 = v7[1];
          if (v43 >= v36 && v43 <= v42)
          {
            *v36 = *(v7 + 4) + v41;
            *(v37 + v40) = 1;
          }

          if (v22 == 16)
          {
            v48 = v14;
            v49 = (v36 + v41);
            v50 = sub_213CA7EB4(*v7, a2, v16, a3);
            v42 = v49;
            v14 = v48;
            v29 = v50;
LABEL_54:
            v51 = v14;
            result = sub_213CA9EF8(v7, v29, v42);
            v14 = v51;
            goto LABEL_55;
          }

          if (v22 == 15)
          {
            goto LABEL_54;
          }

          if (v22 != 14)
          {
            goto LABEL_55;
          }

          v45 = (v16 - *v16);
          v46 = *v45;
          if (v46 < 7)
          {
            v47 = 0;
          }

          else
          {
            v47 = v45[3];
            if (v45[3])
            {
              v47 = (v47 + v16 + *(v47 + v16));
            }
          }

          v52 = (v47 - *v47);
          if (*v52 < 7u)
          {
            goto LABEL_55;
          }

          v53 = v52[3];
          if (!v53)
          {
            goto LABEL_55;
          }

          result = *(v47 + v53);
          if ((result & 0xFFFFFFFD) != 0xD)
          {
            goto LABEL_55;
          }

          if (result == 15)
          {
            v54 = (*v7 - **v7);
            if (*v54 >= 5u && (v55 = v54[2]) != 0)
            {
              v56 = *v7 + v55 + *(*v7 + v55);
            }

            else
            {
              v56 = 0;
            }

            if (v46 < 7)
            {
              v57 = 0;
            }

            else
            {
              v57 = v45[3];
              if (v57)
              {
                v57 = (v57 + v16 + *(v57 + v16));
              }
            }

            v58 = (v57 - *v57);
            if (*v58 >= 9u && (v59 = v58[4]) != 0)
            {
              v60 = 4 * *(v57 + v59);
            }

            else
            {
              v60 = 0x3FFFFFFFCLL;
            }

            v80 = &v56[v60 + 4 + *&v56[v60 + 4]];
            v61 = &v80[-*v80];
            if (*v61 >= 9u)
            {
              v62 = *(v61 + 4);
              if (v62)
              {
                if (v80[v62])
                {
                  goto LABEL_55;
                }
              }
            }
          }

          else
          {
            v80 = 0;
          }

          if (*v42)
          {
            v63 = 0;
            v64 = v14 + v25;
            v65 = v14 + v25;
            v78 = v42;
            v79 = v14;
            v77 = v41;
            v76 = result;
            do
            {
              v67 = v7[3];
              v66 = v7[4];
              if (*v67 == *(v67 + 1))
              {
                v68 = 0;
              }

              else
              {
                v68 = *v67;
              }

              v69 = &v64[v41 - v68] >> 2;
              if (!*(v66 + v69))
              {
                v70 = *&v65[v41];
                v71 = &v65[v41 + v70];
                v72 = v7[1];
                if (v72 >= &v65[v41] && v72 <= v71)
                {
                  *&v65[v41] = *(v7 + 4) + v70;
                  *(v66 + v69) = 1;
                }

                if (result == 15)
                {
                  sub_213CA9EF8(v7, v80, v71);
                  result = v76;
                  v41 = v77;
                  v42 = v78;
                  v14 = v79;
                }
              }

              ++v63;
              v65 += 4;
              v64 += 4;
            }

            while (v63 < *v42);
          }
        }

LABEL_55:
        if (++v15 == &v13[*v13 + 1])
        {
          v10 = v7[1];
          break;
        }
      }
    }

    if (v10 >= a3 && v10 <= v9)
    {
      *a3 -= *(v7 + 4);
      v74 = v7[3];
      if (*v74 == *(v74 + 1))
      {
        v75 = 0;
      }

      else
      {
        v75 = *v74;
      }

      v5 = v7[4] + ((a3 - v75) >> 2);
LABEL_101:
      *v5 = 1;
    }
  }

  return result;
}

uint64_t sub_213CAA3F8(void *a1, void *__src, size_t __n)
{
  if (!a1[11])
  {
    operator new();
  }

  v40 = a1[4];
  v41 = a1[6];
  v39 = a1[5];
  v4 = sub_213C97D08(a1, __src, __n);
  v5 = a1[11];
  v8 = *(v5 + 8);
  v6 = (v5 + 8);
  v7 = v8;
  v42 = v4;
  if (!v8)
  {
LABEL_35:
    operator new();
  }

  v9 = *(*(a1[11] + 24) + 40) + *(*(a1[11] + 24) + 32);
  v10 = (v9 - v4);
  v13 = *v10;
  v11 = v10 + 1;
  v12 = v13;
  v14 = v6;
  v15 = v7;
  do
  {
    v16 = *(v15 + 7);
    v17 = *(v9 - v16);
    if (v12 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v12;
    }

    v19 = memcmp((v9 - v16 + 4), v11, v18);
    v20 = v17 < v12;
    if (v19)
    {
      v20 = v19 < 0;
    }

    v21 = !v20;
    v22 = v20;
    if (v21)
    {
      v14 = v15;
    }

    v15 = v15[v22];
  }

  while (v15);
  if (v6 == v14)
  {
    goto LABEL_31;
  }

  v23 = *(v14 + 7);
  v24 = *(v9 - v23);
  if (v24 >= v12)
  {
    v25 = v12;
  }

  else
  {
    v25 = v24;
  }

  v26 = memcmp(v11, (v9 - v23 + 4), v25);
  v27 = v12 < v24;
  if (v26)
  {
    v27 = v26 < 0;
  }

  if (v27)
  {
LABEL_31:
    while (1)
    {
      while (1)
      {
        v28 = v7;
        v29 = *(v7 + 7);
        v30 = (v9 - v29 + 4);
        v31 = *(v9 - v29);
        if (v31 >= v12)
        {
          v32 = v12;
        }

        else
        {
          v32 = v31;
        }

        v33 = memcmp(v11, (v9 - v29 + 4), v32);
        v34 = v12 < v31;
        if (v33)
        {
          v34 = v33 < 0;
        }

        if (!v34)
        {
          break;
        }

        v7 = *v7;
        if (!*v28)
        {
          goto LABEL_35;
        }
      }

      v35 = memcmp(v30, v11, v32);
      v36 = v31 < v12;
      if (v35)
      {
        v36 = v35 < 0;
      }

      if (!v36)
      {
        return v42;
      }

      v7 = v7[1];
      if (!v7)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    a1[6] += *(a1 + 8) + v41 - (v40 + v39 + a1[6]) + *(a1 + 10);
    return v23;
  }
}

uint64_t sub_213CAA698(const char **a1, unsigned int *a2)
{
  v2 = a2 + *a2;
  v3 = *v2;
  if (*&v2[-v3] < 5u)
  {
    v4 = 0;
  }

  else
  {
    v4 = *&v2[-v3 + 4];
    LODWORD(v3) = *&v2[*&v2[-v3 + 4]];
  }

  return -strcmp(&v2[v4 + 4 + v3], *a1);
}

uint64_t sub_213CAA6F0(unsigned __int8 *a1, unsigned int *a2)
{
  v2 = (a2 + *a2);
  v3 = *a1;
  v4 = (v2 - *v2);
  if (*v4 >= 7u && (v5 = v4[3]) != 0)
  {
    v6 = *(v2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 < v3;
  v8 = v6 > v3;
  v9 = v7;
  return (v9 - v8);
}

void *sub_213CAA738(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x21604D000](a1 + 2);
  std::istream::~istream();
  MEMORY[0x21604D160](a1 + 53);
  return a1;
}

uint64_t flatbuffers::DirExists(flatbuffers *this, const char *a2)
{
  if (stat(this, &v3))
  {
    return 0;
  }

  else
  {
    return (v3.st_mode >> 14) & 1;
  }
}

uint64_t sub_213CAA838(uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 24;
  v3 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x277D82828] + 16);
  v6 = *(MEMORY[0x277D82828] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x277D82868] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x21604D120](a1 + 16);
  v9 = MEMORY[0x277D82878] + 16;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = v9;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  sub_213C992D0(v4);
  return a1;
}

uint64_t sub_213CAA9DC(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x21604D160](a1 + 112);
  return a1;
}

uint64_t (*flatbuffers::SetLoadFileFunction(uint64_t (*a1)(void)))(void)
{
  v1 = off_281653298;
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = flatbuffers::LoadFileRaw;
  }

  off_281653298 = v2;
  return v1;
}

uint64_t (*flatbuffers::SetFileExistsFunction(flatbuffers *this, BOOL (*a2)(const char *)))(flatbuffers *__hidden this, const char *)
{
  v2 = off_2816532A0;
  if (this)
  {
    v3 = this;
  }

  else
  {
    v3 = flatbuffers::FileExistsRaw;
  }

  off_2816532A0 = v3;
  return v2;
}

BOOL flatbuffers::SaveFile(flatbuffers *this, const char *a2, const char *a3)
{
  v13[19] = *MEMORY[0x277D85DE8];
  v13[6] = 0;
  v3 = MEMORY[0x277D82860] + 24;
  v4 = MEMORY[0x277D82860] + 64;
  v13[0] = MEMORY[0x277D82860] + 64;
  v5 = MEMORY[0x277D82810];
  v6 = *(MEMORY[0x277D82810] + 16);
  v11 = *(MEMORY[0x277D82810] + 8);
  *(&v12[-1] + *(v11 - 24)) = v6;
  v7 = (&v12[-1] + *(v11 - 24));
  std::ios_base::init(v7, v12);
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v11 = v3;
  v13[0] = v4;
  MEMORY[0x21604CFF0](v12);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((&v12[-1] + *(v11 - 24)), *(&v12[3] + *(v11 - 24)) | 4);
  }

  if (v12[15])
  {
    std::ostream::write();
    v8 = (*(&v12[3] + *(v11 - 24)) & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  v11 = *v5;
  *(&v12[-1] + *(v11 - 24)) = v5[3];
  MEMORY[0x21604D000](v12);
  std::ostream::~ostream();
  MEMORY[0x21604D160](v13);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

std::string *flatbuffers::StripExtension@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  result = std::string::rfind(a1, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (result != -1)
  {
    return std::string::basic_string(a2, a1, 0, result, &v7);
  }

  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
    v6 = *(a1 + 8);

    return sub_213C9D958(a2, v5, v6);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  return result;
}

std::string *flatbuffers::GetExtension@<X0>(const std::string *a1@<X0>, uint64_t a2@<X8>)
{
  result = std::string::rfind(a1, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (result != -1)
  {
    return std::string::basic_string(a2, a1, result->__r_.__value_.__r.__words + 1, 0xFFFFFFFFFFFFFFFFLL, &v5);
  }

  *(a2 + 23) = 0;
  *a2 = 0;
  return result;
}

std::string *flatbuffers::StripPath@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  v2 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v3 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  if (v2 >= 0)
  {
    v5 = __str;
  }

  else
  {
    v5 = __str->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = __str->__r_.__value_.__l.__size_;
  }

  v7 = &v5[-1].__r_.__value_.__r.__words[2] + 7;
  while (v6)
  {
    v8 = v7[v6--];
    if (v8 == 92 || v8 == 47)
    {
      if (v6 != -1)
      {
        return std::string::basic_string(a2, __str, v6 + 1, 0xFFFFFFFFFFFFFFFFLL, &v9);
      }

      break;
    }
  }

  if ((v2 & 0x80000000) != 0)
  {

    return sub_213C9D958(a2, v3, size);
  }

  else
  {
    *a2 = *__str;
  }

  return __str;
}

std::string *flatbuffers::StripFileName@<X0>(std::string *__str@<X0>, uint64_t a2@<X8>)
{
  v2 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v3 = __str->__r_.__value_.__r.__words[0];
  if (v2 >= 0)
  {
    v3 = __str;
  }

  if (v2 >= 0)
  {
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v5 = &v3[-1].__r_.__value_.__r.__words[2] + 7;
  while (size)
  {
    v6 = v5[size--];
    if (v6 == 92 || v6 == 47)
    {
      if (size != -1)
      {
        return std::string::basic_string(a2, __str, 0, size, &v7);
      }

      break;
    }
  }

  *(a2 + 23) = 0;
  *a2 = 0;
  return __str;
}

void flatbuffers::EnsureDirExists(uint64_t a1)
{
  flatbuffers::StripFileName(a1, __p);
  v2 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v2 = __p[1];
  }

  if (v2)
  {
    flatbuffers::EnsureDirExists(__p);
  }

  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  mkdir(v3, 0x1E8u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

flatbuffers::ClassicLocale *flatbuffers::ClassicLocale::ClassicLocale(flatbuffers::ClassicLocale *this)
{
  *this = newlocale(0, "C", 0);
  return this;
}

{
  *this = newlocale(0, "C", 0);
  return this;
}

void flatbuffers::ClassicLocale::~ClassicLocale(locale_t *this)
{
  freelocale(*this);
}

{
  freelocale(*this);
}

uint64_t flatbuffers::ClassicLocale::Get(flatbuffers::ClassicLocale *this)
{
  if ((atomic_load_explicit(&qword_27C8E9310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C8E9310))
  {
    qword_27C8E9308 = newlocale(0, "C", 0);
    __cxa_atexit(flatbuffers::ClassicLocale::~ClassicLocale, &qword_27C8E9308, &dword_213C89000);
    __cxa_guard_release(&qword_27C8E9310);
  }

  return qword_27C8E9308;
}

std::string *flatbuffers::RemoveStringQuotes@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v5 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  if (v4 >= 0)
  {
    v7 = __str;
  }

  else
  {
    v7 = __str->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    v8 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __str->__r_.__value_.__l.__size_;
  }

  if (v8 >= 2 && ((v9 = v7->__r_.__value_.__s.__data_[0], v9 == 39) || v9 == 34) && v9 == v7->__r_.__value_.__s.__data_[v8 - 1])
  {
    *&v10[1] = v2;
    *&v10[9] = v3;
    return std::string::basic_string(a2, __str, 1uLL, v8 - 2, v10);
  }

  else if ((v4 & 0x80000000) != 0)
  {

    return sub_213C9D958(a2, v5, size);
  }

  else
  {
    *a2 = *__str;
  }

  return __str;
}

BOOL flatbuffers::SetGlobalTestLocale(char *a1, uint64_t a2)
{
  v3 = setlocale(0, a1);
  v4 = v3;
  if (a2 && v3)
  {
    v5 = strlen(v3);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_213C97BD4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v9) = v5;
    if (v5)
    {
      memmove(&__dst, v4, v5);
    }

    *(&__dst + v6) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = __dst;
    *(a2 + 16) = v9;
  }

  return v4 != 0;
}

BOOL flatbuffers::ReadEnvironmentVariable(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  v4 = v3;
  if (a2 && v3)
  {
    v5 = strlen(v3);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_213C97BD4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v9) = v5;
    if (v5)
    {
      memmove(&__dst, v4, v5);
    }

    *(&__dst + v6) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = __dst;
    *(a2 + 16) = v9;
  }

  return v4 != 0;
}

void flatbuffers::MakeCamel(char *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = a1[23];
  v5 = *(a1 + 1);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = a1[23];
  }

  if (v5)
  {
    v8 = 0;
    v9 = v4 >> 63;
    do
    {
      if (v9)
      {
        v10 = *a1;
      }

      else
      {
        v10 = a1;
      }

      if (v8 || !a2)
      {
        v12 = v8 + 1;
        if (v10[v8] != 95 || v12 >= v5)
        {
          v11 = v10[v8];
        }

        else
        {
          v11 = __toupper(v10[v12]);
          ++v8;
        }
      }

      else
      {
        v11 = __toupper(*v10);
        v8 = 0;
      }

      std::string::push_back(a3, v11);
      ++v8;
      v5 = a1[23];
      v9 = v5 >> 63;
      if ((v5 & 0x80000000) != 0)
      {
        v5 = *(a1 + 1);
      }
    }

    while (v8 < v5);
  }
}

void flatbuffers::Parser::Message(uint64_t a1)
{
  v3 = *(a1 + 335);
  if (v3 < 0)
  {
    v3 = *(a1 + 320);
  }

  if (v3)
  {
    std::string::append((a1 + 312), "\n");
  }

  v4 = *(a1 + 1175);
  if (v4 < 0)
  {
    v4 = *(a1 + 1160);
  }

  if (v4)
  {
    flatbuffers::AbsolutePath((a1 + 1152), &v22);
    LODWORD(v4) = HIBYTE(v23);
    v1 = *(&v22 + 1);
  }

  else
  {
    HIBYTE(v23) = 0;
    LOBYTE(v22) = 0;
  }

  if ((v4 & 0x80u) == 0)
  {
    v5 = &v22;
  }

  else
  {
    v5 = v22;
  }

  if ((v4 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v1;
  }

  std::string::append((a1 + 312), v5, v6);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v7 = *(a1 + 1175);
  if (v7 < 0)
  {
    v7 = *(a1 + 1160);
  }

  if (v7)
  {
    std::string::append((a1 + 312), ":");
  }

  sub_213C8A4E8(*(a1 + 16));
  v8 = std::string::append(&v20, ": ");
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_213C8A670(*a1 - *(a1 + 8));
  if (v19 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v19 >= 0)
  {
    v11 = v19;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v21, v10, v11);
  v13 = v12->__r_.__value_.__r.__words[2];
  v22 = *&v12->__r_.__value_.__l.__data_;
  v23 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v14 = &v22;
  }

  else
  {
    v14 = v22;
  }

  if (v23 >= 0)
  {
    v15 = SHIBYTE(v23);
  }

  else
  {
    v15 = *(&v22 + 1);
  }

  std::string::append((a1 + 312), v14, v15);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  if (v23 >= 0)
  {
    v16 = &v22;
  }

  else
  {
    v16 = v22;
  }

  if (v23 >= 0)
  {
    v17 = SHIBYTE(v23);
  }

  else
  {
    v17 = *(&v22 + 1);
  }

  std::string::append((a1 + 312), v16, v17);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }
}

void flatbuffers::Parser::Warning(uint64_t a1)
{
  std::operator+<char>();
  flatbuffers::Parser::Message(a1);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void flatbuffers::Parser::Error(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  std::operator+<char>();
  flatbuffers::Parser::Message(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  *a2 = 1;
}

void flatbuffers::Parser::RecurseError(flatbuffers::Parser *this@<X0>, _WORD *a2@<X8>)
{
  sub_213C8A4E8(64);
  v4 = std::string::insert(&v8, 0, "maximum parsing recursion of ");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v9, " reached");
  v7 = v6->__r_.__value_.__r.__words[2];
  v10 = *&v6->__r_.__value_.__l.__data_;
  v11 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  flatbuffers::Parser::Error(this, a2);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void flatbuffers::Namespace::GetFullyQualifiedName(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (!a3 || (v7 = *a1, *a1 == a1[1]))
  {
    if (*(a2 + 23) < 0)
    {
      v20 = *a2;
      v21 = *(a2 + 8);

      sub_213C9D958(a4, v20, v21);
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *a2;
      a4->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    do
    {
      if (v10)
      {
        std::string::push_back(a4, 46);
        v7 = *a1;
      }

      v11 = (v7 + v9);
      if (*(v11 + 23) < 0)
      {
        sub_213C9D958(__p, *v11, *(v11 + 1));
      }

      else
      {
        v12 = *v11;
        v23 = *(v11 + 2);
        *__p = v12;
      }

      if (v23 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v23 >= 0)
      {
        v14 = SHIBYTE(v23);
      }

      else
      {
        v14 = __p[1];
      }

      std::string::append(a4, v13, v14);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v10;
      v7 = *a1;
      v15 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      if (v15 >= a3)
      {
        v15 = a3;
      }

      v9 += 24;
    }

    while (v10 < v15);
    v16 = *(a2 + 23);
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 8);
    }

    if (v16)
    {
      std::string::push_back(a4, 46);
      v17 = *(a2 + 23);
      if (v17 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      if (v17 >= 0)
      {
        v19 = *(a2 + 23);
      }

      else
      {
        v19 = *(a2 + 8);
      }

      std::string::append(a4, v18, v19);
    }
  }
}