uint64_t sub_10014EEE0(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4 << 6;
  a4[19] = v8;
  if (v8)
  {
    result = sub_100166C7C(a1);
  }

  else
  {
    result = 0;
  }

  a4[18] = result;
  if (!*(a1 + 24))
  {
    v10 = *a4;
    if (*a4)
    {
      v11 = 0;
      do
      {
        for (i = 0; i != 256; i += 4)
        {
          *(result + i) = *(a3 + i) + v11 * a2;
        }

        ++v11;
        result += 256;
      }

      while (v11 != v10);
    }
  }

  return result;
}

unint64_t sub_10014EF80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 15;
  if (a2 > 0xF)
  {
    v4 = a2;
  }

  if (a4 < 4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = a1 + v4 - 15;
  v10 = 1;
  v11 = 4;
  do
  {
    v12 = *(a3 + v7);
    v7 += 36;
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = v7 > a4;
    }

    v14 = v8 + 32;
    if (v13 || v14 > a2)
    {
      v16 = 1;
      while (1)
      {
        if (v12 < 0)
        {
          v7 = v11 + 2;
          if (v11 + 2 > a4)
          {
            if (v11 == a4)
            {
              return v8;
            }

            else
            {
              return 0;
            }
          }

          v17 = *(a3 + v11);
          v18 = v17 & 7;
          if ((v17 & 7) == 7)
          {
            if (v10 == 1)
            {
              if (v7 >= a4)
              {
                return 0;
              }

              v19 = *(a3 + v7);
              v7 = v11 + 3;
              v10 = v19 | 0x100;
            }

            v20 = v10 & 0xF;
            if (v20 == 15)
            {
              if (v7 >= a4)
              {
                return 0;
              }

              v21 = v7 + 1;
              v22 = *(a3 + v7);
              if (v22 == 255)
              {
                v23 = v7 + 3;
                if (v7 + 3 > a4)
                {
                  return 0;
                }

                v24 = *(a3 + v21);
                if (!*(a3 + v21))
                {
                  v25 = v7 + 7;
                  if (v25 > a4)
                  {
                    return 0;
                  }

                  v24 = *(a3 + v23);
                  v23 = v25;
                }

                v26 = v24 >= 0x16;
                v22 = v24 - 22;
                if (!v26)
                {
                  return 0;
                }
              }

              else
              {
                v23 = v7 + 1;
              }

              v20 = v22 + 15;
              v7 = v23;
            }

            v10 >>= 4;
            v18 = v20 + 7;
          }

          v27 = (v17 >> 3) + 1;
          if (v8 < v27)
          {
            return 0;
          }

          v28 = v18 + 3;
          v29 = (a1 + v8);
          v30 = a1 + v8 + v28;
          if (v17 < 0x78 || v30 > v9)
          {
            if (v28 > a2 - v8)
            {
              return 0;
            }

            do
            {
              *v29 = v29[-v27];
              ++v29;
            }

            while (v29 < v30);
          }

          else
          {
            do
            {
              *v29 = *&v29[-v27];
              v29 += 16;
            }

            while (v29 < v30);
          }

          v8 += v28;
        }

        else
        {
          v5 = 0;
          if (v11 >= a4 || a2 <= v8)
          {
            return v5;
          }

          v7 = v11 + 1;
          *(a1 + v8++) = *(a3 + v11);
        }

        v12 *= 2;
        ++v16;
        v11 = v7;
        if (v16 == 33)
        {
          goto LABEL_46;
        }
      }
    }

    v31 = *(a3 + v11 + 16);
    v32 = (a1 + v8);
    *v32 = *(a3 + v11);
    v32[1] = v31;
    v8 = v14;
LABEL_46:
    v5 = 0;
    v11 = v7 + 4;
  }

  while (v7 + 4 <= a4);
  return v5;
}

uint64_t sub_10014F15C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a4 <= 7)
  {
    v10 = 7;
  }

  else
  {
    v10 = a4;
  }

  bzero(a5, 0x10000uLL);
  if (a2 < 0x12)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = v10 - 7;
  v15 = a2 - 1;
  v16 = 256;
  v17 = 1;
  v18 = 4;
  while (2)
  {
    v19 = 8 - 8 * v12;
    for (result = v18; ; ++result)
    {
      if (HIDWORD(v17))
      {
        *(a1 + v13) = v17;
        v13 = result;
        result += 4;
        v17 = 1;
      }

      v17 *= 2;
      if (v12 + 4 <= a4)
      {
        break;
      }

      if (a4 == v12)
      {
        do
        {
          v47 = v17 | 1;
          v48 = HIDWORD(v17);
          v17 = 2 * (v17 | 1);
        }

        while (!v48);
        *(a1 + v13) = v47;
        do
        {
          v49 = v16;
          v16 *= 16;
        }

        while (v49 < 0x100);
        *(a1 + v15) = (v49 >> 4) | v16;
        return result;
      }

      v20 = *(a3 + v12++);
      *(a1 + result) = v20;
      v21 = result + 15;
      v19 -= 8;
      if (v21 > a2)
      {
        return 0;
      }
    }

    v22 = *(a3 + v12);
    v23 = v22 >> 8;
    v24 = (-1640531535 * (v22 & 0xFFFFFF)) >> 18;
    v25 = (-1640531535 * (v22 >> 8)) >> 18;
    v26 = *(a5 + v24);
    v27 = *(a5 + v25);
    v28 = v12 & 0xFFFFE000 | v26 & 0x1FFF;
    v29 = v12 & 0xFFFFE000 | v27 & 0x1FFF;
    if (v12 <= v28)
    {
      v28 = (v28 - 0x2000);
    }

    else
    {
      v28 = v28;
    }

    if (v12 < v29)
    {
      LODWORD(v29) = v29 - 0x2000;
    }

    *(a5 + v24) = v12 & 0x1FFF | (v22 << 13);
    if ((v22 & 0x7FFFF) != v26 >> 13 || (v12 > v28 ? (v30 = v12 >= v14) : (v30 = 1), v30))
    {
      LODWORD(v34) = 0;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      while (1)
      {
        v36 = *(a3 + v35 + v12);
        v34 = *(a3 + v28 + v34);
        if (v36 != v34)
        {
          break;
        }

        v35 += 8;
        v34 = v35;
        if (v12 + v35 >= v14)
        {
          goto LABEL_26;
        }
      }

      LODWORD(v34) = v35 + (__clz(__rbit64(v34 ^ v36)) >> 3);
    }

LABEL_26:
    if (v27 >> 13 != ((v22 >> 8) & 0x7FFFF))
    {
      goto LABEL_46;
    }

    if (v12 + 1 >= v14)
    {
      LODWORD(v31) = 0;
LABEL_36:
      if (!v29)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
      while (1)
      {
        v33 = *(a3 + v32 + v12 + 1);
        v31 = *(a3 + v29 + v31);
        if (v33 != v31)
        {
          break;
        }

        v32 += 8;
        v31 = v32;
        if (v12 + v32 + 1 >= v14)
        {
          goto LABEL_36;
        }
      }

      LODWORD(v31) = v32 + (__clz(__rbit64(v31 ^ v33)) >> 3);
      if (!v29)
      {
        goto LABEL_44;
      }
    }

    v37 = v29 - 1;
    if (*(a3 + v12) == *(a3 + v37) && v34 <= v31)
    {
      LODWORD(v34) = v31 + 1;
      LOWORD(v28) = v37;
      goto LABEL_46;
    }

LABEL_44:
    if (v34 < v31)
    {
      v18 = result + 1;
      *(a1 + result) = *(a3 + v12++);
      goto LABEL_69;
    }

LABEL_46:
    if (v34 > 2)
    {
      v40 = v34 - 3;
      if ((v34 - 3) >= 7)
      {
        v41 = 7;
      }

      else
      {
        v41 = v34 - 3;
      }

      *(a5 + v25) = (v12 + 1) & 0x1FFF | (v23 << 13);
      *(a1 + result) = v41 - 8 * v28 - v19;
      v12 += v34;
      v18 = result + 2;
      v17 |= 1uLL;
      if (v40 >= 7)
      {
        if (v16 >= 0x100)
        {
          *(a1 + v15) = (16 * v16) | (v16 >> 4);
          v15 = result + 2;
          v18 = result + 3;
          v16 = 1;
        }

        v42 = v34 - 10;
        if ((v34 - 10) >= 0xF)
        {
          v42 = 15;
        }

        v16 = v42 | (16 * v16);
        if ((v34 - 10) >= 0xF)
        {
          v43 = v34 - 25;
          if ((v34 - 25) >= 0xFF)
          {
            v44 = -1;
          }

          else
          {
            v44 = v34 - 25;
          }

          *(a1 + v18) = v44;
          if (v43 >= 0xFF)
          {
            v45 = v43 >= 0xFFEA;
            if (v43 >= 0xFFEA)
            {
              v46 = 0;
            }

            else
            {
              v46 = v34 - 3;
            }

            *(a1 + v18 + 1) = v46;
            if (v45)
            {
              *(a1 + v18 + 3) = v40;
              v18 += 7;
            }

            else
            {
              v18 += 3;
            }
          }

          else
          {
            ++v18;
          }
        }
      }
    }

    else
    {
      v39 = *(a3 + v12++);
      v18 = result + 1;
      *(a1 + result) = v39;
    }

LABEL_69:
    result = 0;
    if (v18 + 14 <= a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t lzfse_decode_literals(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, unint64_t a6, double a7)
{
  v7 = LOWORD(a7);
  v8 = WORD1(a7);
  v9 = WORD2(a7);
  v10 = HIWORD(a7);
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *a5;
  while (1)
  {
    v15 = *(a2 + 4 * v7);
    v16 = *(a2 + 4 * v8);
    v17 = *(a2 + 4 * v9);
    v18 = *(a2 + 4 * v10);
    *a1++ = (v16 & 0xFF00) + ((v15 & 0xFF00) >> 8) + (((v18 & 0xFF00) + ((v17 & 0xFF00) >> 8)) << 16);
    v19 = (63 - v13) & 0xFFFFFFF8;
    if (((63 - v13) & 0xFFFFFFF8) != 0)
    {
      break;
    }

LABEL_5:
    v20 = v13 - v15;
    v21 = v20 - v16;
    v22 = v12 >> (v13 - v15);
    v23 = v12 & qword_10014F610[v20];
    v24 = v21 - v17;
    v7 = v22 + HIWORD(v15);
    v25 = v23 >> (v20 - v16);
    v26 = v23 & qword_10014F610[v21];
    v13 = v24 - v18;
    v8 = v25 + HIWORD(v16);
    v27 = v26 >> (v21 - v17);
    v28 = v26 & qword_10014F610[v24];
    v9 = v27 + HIWORD(v17);
    v29 = v28 >> (v24 - v18);
    v12 = v28 & qword_10014F610[v13];
    v10 = v29 + HIWORD(v18);
    v30 = a3 <= 4;
    a3 -= 4;
    if (v30)
    {
      *a4 = v12;
      *(a4 + 8) = v13;
      *a5 = v14;
      return 0;
    }
  }

  v14 = (v14 - (v19 >> 3));
  if (v14 >= a6)
  {
    v13 += v19;
    v12 = (v12 << v19) | *v14 & qword_10014F610[v19];
    goto LABEL_5;
  }

  return -3;
}

uint64_t sub_10014F818(int a1)
{
  if (a1 == 2193)
  {
    return 22376;
  }

  else
  {
    return 47376;
  }
}

uint64_t sub_10014F82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  if (a6 == 2193)
  {
    v11 = 22376;
  }

  else
  {
    v11 = 47376;
  }

  if (a6 == 2193)
  {
    v12 = 15000;
  }

  else
  {
    v12 = 40000;
  }

  bzero(a5, v11);
  *a5 = a3;
  a5[1] = a3;
  a5[2] = a3 + a4;
  a5[3] = a1;
  a5[4] = a1;
  a5[5] = a1 + a2;
  *(a5 + 1826) = v12;
  v13 = sub_100166FBC(a5);
  if (v13 != -2)
  {
    if (v13)
    {
      return 0;
    }

    else
    {
      return a5[3] - a1;
    }
  }

  return a2;
}

unint64_t sub_10014F8D0(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, double a5, int32x4_t a6, double a7, double a8, double a9, int32x4_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, unint64_t *a15, _DWORD *a16, void *a17, void *a18)
{
  v18 = *(a12 + 40);
  if (v18 > 39)
  {
    if (v18 > 53)
    {
      switch(v18)
      {
        case '6':
          return sub_100157718(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
        case '7':
          return sub_100158F54(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
        case 'A':
          return sub_100159D78(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
      }
    }

    else
    {
      switch(v18)
      {
        case '(':
          return sub_1001542F8(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
        case ')':
          return sub_100155434(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
        case '*':
          return sub_100156560(result, a2, a3, a4, a12, a13, a14, a15, a5, a6, a7, a8, a9, a10, a16, a17, a18);
      }
    }
  }

  else if (v18 > 4)
  {
    switch(v18)
    {
      case 5:
        return sub_100151FD8(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
      case 6:
        return sub_10015311C(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
      case 35:
        return sub_1001581EC(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
    }
  }

  else
  {
    switch(v18)
    {
      case 2:
        return sub_10014FA7C(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
      case 3:
        return sub_100150700(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
      case 4:
        return sub_1001511A4(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
    }
  }

  return result;
}

unint64_t sub_10014FA7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v11 = a2;
  v12 = *a8;
  v13 = a2 + result;
  v14 = a2 + result - 7;
  if (result <= 7)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2 + result - 7;
  }

  v144 = v15;
  if (*(a5 + 4) >= 9)
  {
    v16 = 512;
  }

  else
  {
    v16 = 64;
  }

  if (a2 + 8 >= v13)
  {
    v148 = a9;
    v98 = a2;
    goto LABEL_224;
  }

  v141 = v16;
  v17 = (1 << *(a5 + 8)) - 16;
  v151 = *(a5 + 16);
  v18 = v16 + a2;
  v150 = a2 + result;
  v147 = 4 * v16;
  v148 = a9;
  v19 = *(a6 + 56);
  v146 = a7;
  v149 = a6;
  v142 = a2 + result - 7;
  do
  {
    v20 = v13 - v11;
    if (v11 >= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = v11;
    }

    v22 = v11 + v151;
    if (v11 + v151 >= v17)
    {
      v22 = v17;
    }

    v23 = *(a5 + 80);
    v24 = (a3 + (v11 & a4));
    v25 = *v24;
    v26 = (0xBD1E35A7BD000000 * *v24) >> 48;
    v27 = *a7;
    if (v11 < v27)
    {
      goto LABEL_25;
    }

    v28 = (a3 + (a4 & (v11 - v27)));
    if (v25 != *v28)
    {
      goto LABEL_25;
    }

    if (v20 < 8)
    {
      v31 = 0;
      v32 = (a3 + (v11 & a4));
LABEL_212:
      v136 = v20 & 7;
      if ((v20 & 7) != 0)
      {
        v137 = v31 | v136;
        while (v28[v31] == *v32)
        {
          ++v32;
          ++v31;
          if (!--v136)
          {
            v31 = v137;
            break;
          }
        }
      }
    }

    else
    {
      v29 = 0;
      v30 = v20 >> 3;
      v31 = v20 & 0xFFFFFFFFFFFFFFF8;
      v32 = v24 + (v20 & 0xFFFFFFFFFFFFFFF8);
      while (1)
      {
        v33 = v24[v29];
        v34 = *&v28[v29 * 8];
        if (v33 != v34)
        {
          break;
        }

        ++v29;
        if (!--v30)
        {
          goto LABEL_212;
        }
      }

      v31 = v29 * 8 + (__clz(__rbit64(v34 ^ v33)) >> 3);
    }

    if (v31 >= 4 && (v35 = 135 * v31 + 1935, v35 >= 0x7E5))
    {
      v145 = *(a5 + 80);
      v36 = 0;
      *(v19 + 4 * v26) = v11;
    }

    else
    {
LABEL_25:
      v37 = *(v19 + 4 * v26);
      *(v19 + 4 * v26) = v11;
      v27 = v11 - v37;
      result = a3 + (v37 & a4);
      if (v25 != *result || v11 == v37 || v27 > v21)
      {
        goto LABEL_118;
      }

      if (v20 < 8)
      {
        v31 = 0;
        v42 = (a3 + (v11 & a4));
LABEL_204:
        v134 = v20 & 7;
        if ((v20 & 7) != 0)
        {
          v135 = v31 | v134;
          while (*(result + v31) == *v42)
          {
            ++v42;
            ++v31;
            if (!--v134)
            {
              v31 = v135;
              break;
            }
          }
        }
      }

      else
      {
        v40 = 0;
        v41 = v20 >> 3;
        v31 = v20 & 0xFFFFFFFFFFFFFFF8;
        v42 = v24 + (v20 & 0xFFFFFFFFFFFFFFF8);
        while (1)
        {
          v43 = v24[v40];
          v44 = *(result + v40 * 8);
          if (v43 != v44)
          {
            break;
          }

          ++v40;
          if (!--v41)
          {
            goto LABEL_204;
          }
        }

        v31 = v40 * 8 + (__clz(__rbit64(v44 ^ v43)) >> 3);
      }

      if (v31 < 4 || (v35 = 135 * v31 - 30 * (__clz(v27) ^ 0x1F) + 1920, v35 <= 0x7E4))
      {
        v93 = *(a6 + 48);
        v95 = *(v93 + 8);
        v94 = *(v93 + 16);
        if (v94 < v95 >> 7)
        {
          goto LABEL_118;
        }

        v96 = ((506832829 * *v24) >> 17) & 0x7FFELL;
        v97 = *(a5 + 120);
        *(v93 + 8) = v95 + 1;
        result = *(v97 + v96);
        if (!*(v97 + v96) || v20 < result)
        {
          goto LABEL_118;
        }

        v111 = *(*(a5 + 112) + 2 * v96);
        v112 = *(a5 + 88);
        v113 = *(v112 + 4 * result + 32);
        v114 = *(v112 + 168) + v111 * result;
        v115 = (v114 + v113);
        if (result < 8)
        {
          v31 = 0;
LABEL_218:
          v138 = result & 7;
          if ((result & 7) != 0)
          {
            v139 = v31 | v138;
            while (*(v24 + v31) == *v115)
            {
              ++v115;
              ++v31;
              if (!--v138)
              {
                v31 = v139;
                break;
              }
            }
          }
        }

        else
        {
          v116 = 0;
          v31 = result & 0xF8;
          v117 = (v114 + v31 + v113);
          while (1)
          {
            v118 = *&v115[v116];
            v119 = v24[v116 / 8];
            if (v118 != v119)
            {
              break;
            }

            v116 += 8;
            if (v31 == v116)
            {
              v115 = v117;
              goto LABEL_218;
            }
          }

          v31 = v116 + (__clz(__rbit64(v119 ^ v118)) >> 3);
        }

        if (!v31 || v31 + *(a5 + 100) <= result || (v27 = v22 + 1 + v111 + ((((*(a5 + 104) >> (6 * (result - v31))) & 0x3FLL) + 4 * (result - v31)) << *(v112 + result)), v27 > v23) || (v35 = 135 * v31 - 30 * (__clz(v27) ^ 0x1F) + 1920, v35 < 0x7E4) || (*(v93 + 16) = v94 + 1, v35 == 2020))
        {
LABEL_118:
          ++v12;
          v98 = v11 + 1;
          if (v11 + 1 > v18)
          {
            if (v98 <= v18 + v147)
            {
              v100 = v11 + 9;
              if (v11 + 9 >= v14)
              {
                v100 = v14;
              }

              while (v98 < v100)
              {
                *(v19 + (((0xBD1E35A7BD000000 * *(a3 + (v98 & a4))) >> 46) & 0x3FFFC)) = v98;
                v12 += 2;
                v98 += 2;
              }
            }

            else
            {
              v99 = v11 + 17;
              if (v11 + 17 >= v14)
              {
                v99 = v14;
              }

              while (v98 < v99)
              {
                *(v19 + (((0xBD1E35A7BD000000 * *(a3 + (v98 & a4))) >> 46) & 0x3FFFC)) = v98;
                v12 += 4;
                v98 += 4;
              }
            }
          }

          goto LABEL_199;
        }

        v145 = v23;
        v36 = result - v31;
      }

      else
      {
        v145 = v23;
        v36 = 0;
      }
    }

    result = 0;
    v45 = *v146;
    while (1)
    {
      --v20;
      v46 = v31 - 1;
      if (v31 - 1 >= v20)
      {
        v46 = v20;
      }

      if (*(a5 + 4) >= 5)
      {
        v47 = 0;
      }

      else
      {
        v47 = v46;
      }

      v48 = v11 + 1;
      if (v11 + 1 < v17)
      {
        v49 = v11 + 1;
      }

      else
      {
        v49 = v17;
      }

      v50 = v48 + v151;
      v51 = (a3 + (v48 & a4));
      v52 = *(v51 + v47);
      if (v48 + v151 >= v17)
      {
        v50 = v17;
      }

      v53 = (0xBD1E35A7BD000000 * *v51) >> 48;
      if (v48 >= v45)
      {
        v54 = a3 + (a4 & (v48 - v45));
        if (v52 == *(v54 + v47))
        {
          if (v20 < 8)
          {
            v61 = 0;
            v58 = (a3 + (v48 & a4));
LABEL_105:
            v90 = v20 & 7;
            if ((v20 & 7) != 0)
            {
              do
              {
                if (*(v54 + v61) != *v58)
                {
                  break;
                }

                v58 = (v58 + 1);
                ++v61;
                --v90;
              }

              while (v90);
            }
          }

          else
          {
            v55 = 0;
            v56 = v20 >> 3;
            v57 = (a3 + (a4 & (v48 - v45)));
            v58 = (a3 + (v48 & a4));
            while (1)
            {
              v60 = *v57++;
              v59 = v60;
              if (*v58 != v60)
              {
                break;
              }

              ++v58;
              v55 -= 8;
              if (!--v56)
              {
                v61 = -v55;
                v13 = v150;
                goto LABEL_105;
              }
            }

            v61 = (__clz(__rbit64(v59 ^ *v58)) >> 3) - v55;
            v13 = v150;
          }

          if (v61 >= 4)
          {
            v62 = 135 * v61 + 1935;
            if (v62 >= 0x7E5)
            {
              v63 = 0;
              *(v19 + 4 * v53) = v48;
              v64 = v45;
              goto LABEL_84;
            }
          }
        }
      }

      v65 = *(v19 + 4 * v53);
      *(v19 + 4 * v53) = v48;
      v66 = (a3 + (v65 & a4));
      if (v52 != *(v66 + v47) || ((v64 = v48 - v65, v48 != v65) ? (v67 = v64 > v49) : (v67 = 1), v67))
      {
        v64 = 0;
        v63 = 0;
        v61 = v47;
        v62 = 2020;
        goto LABEL_84;
      }

      if (v20 < 8)
      {
        v61 = 0;
        v71 = (a3 + (v48 & a4));
LABEL_100:
        v89 = v20 & 7;
        if ((v20 & 7) != 0)
        {
          do
          {
            if (*(v66 + v61) != *v71)
            {
              break;
            }

            v71 = (v71 + 1);
            ++v61;
            --v89;
          }

          while (v89);
        }
      }

      else
      {
        v68 = 0;
        v69 = v20 >> 3;
        v70 = v66;
        v71 = (a3 + (v48 & a4));
        while (1)
        {
          v73 = *v70++;
          v72 = v73;
          if (*v71 != v73)
          {
            break;
          }

          ++v71;
          v68 -= 8;
          if (!--v69)
          {
            v61 = -v68;
            goto LABEL_100;
          }
        }

        v61 = (__clz(__rbit64(v72 ^ *v71)) >> 3) - v68;
      }

      if (v61 >= 4)
      {
        v62 = 135 * v61 - 30 * (__clz(v64) ^ 0x1F) + 1920;
        if (v62 > 0x7E4)
        {
          v63 = 0;
          goto LABEL_84;
        }
      }

      v74 = *(v149 + 48);
      v75 = *(v74 + 8);
      v76 = *(v74 + 16);
      if (v76 >= v75 >> 7)
      {
        v77 = ((506832829 * *v51) >> 17) & 0x7FFELL;
        v78 = *(a5 + 120);
        *(v74 + 8) = v75 + 1;
        v79 = *(v78 + v77);
        if (*(v78 + v77))
        {
          if (v20 >= v79)
          {
            v81 = *(a5 + 88);
            v82 = *(v81 + 4 * v79 + 32);
            v143 = *(*(a5 + 112) + 2 * v77);
            v83 = *(v81 + 168) + v143 * *(v78 + v77);
            v84 = (v83 + v82);
            if (v79 < 8)
            {
              v61 = 0;
LABEL_110:
              v91 = v79 & 7;
              if ((v79 & 7) != 0)
              {
                v92 = v61 | v91;
                while (*(v51 + v61) == *v84)
                {
                  ++v84;
                  ++v61;
                  if (!--v91)
                  {
                    v61 = v92;
                    break;
                  }
                }
              }
            }

            else
            {
              v85 = 0;
              v61 = v79 & 0xF8;
              v86 = (v83 + v61 + v82);
              while (1)
              {
                v87 = *&v84[v85];
                v88 = v51[v85 / 8];
                if (v87 != v88)
                {
                  break;
                }

                v85 += 8;
                if (v61 == v85)
                {
                  v84 = v86;
                  goto LABEL_110;
                }
              }

              v61 = v85 + (__clz(__rbit64(v88 ^ v87)) >> 3);
            }

            v63 = 0;
            v64 = 0;
            if (!v61 || v61 + *(a5 + 100) <= v79)
            {
              goto LABEL_82;
            }

            v64 = v50 + 1 + v143 + ((((*(a5 + 104) >> (6 * (v79 - v61))) & 0x3FLL) + 4 * (v79 - v61)) << *(v81 + v79));
            if (v64 <= v145)
            {
              v62 = 135 * v61 - 30 * (__clz(v64) ^ 0x1F) + 1920;
              if (v62 >= 0x7E4)
              {
                v63 = v79 - v61;
                *(v74 + 16) = v76 + 1;
                goto LABEL_83;
              }
            }
          }
        }
      }

      v64 = 0;
      v63 = 0;
LABEL_82:
      v61 = v47;
      v62 = 2020;
LABEL_83:
      v13 = v150;
LABEL_84:
      if (v62 < v35 + 175)
      {
        break;
      }

      ++v12;
      if (result <= 2)
      {
        v80 = v11 + 9;
        result = (result + 1);
        v27 = v64;
        v35 = v62;
        v36 = v63;
        v31 = v61;
        ++v11;
        if (v80 < v13)
        {
          continue;
        }
      }

      goto LABEL_131;
    }

    v50 = v11 + v151;
    if (v11 + v151 >= v17)
    {
      v50 = v17;
    }

    v64 = v27;
    v63 = v36;
    v61 = v31;
    v48 = v11;
LABEL_131:
    a7 = v146;
    if (v64 > v50)
    {
LABEL_132:
      v101 = v64 + 15;
      goto LABEL_133;
    }

    v102 = *v146;
    if (v64 == v102)
    {
      v101 = 0;
      goto LABEL_138;
    }

    v120 = v146[1];
    if (v64 == v120)
    {
      v101 = 1;
    }

    else
    {
      v121 = v64 + 3 - v102;
      if (v121 > 6)
      {
        v124 = v64 + 3 - v120;
        if (v124 > 6)
        {
          if (v64 == v146[2])
          {
            v101 = 2;
          }

          else
          {
            if (v64 != v146[3])
            {
              goto LABEL_132;
            }

            v101 = 3;
          }

          goto LABEL_133;
        }

        v122 = 4 * v124;
        v123 = 266017486;
      }

      else
      {
        v122 = 4 * v121;
        v123 = 158663784;
      }

      v101 = (v123 >> v122) & 0xF;
    }

LABEL_133:
    if (v64 <= v50 && v101)
    {
      v146[3] = v146[2];
      *(v146 + 1) = *v146;
      *v146 = v64;
    }

LABEL_138:
    *v148 = v12;
    *(v148 + 4) = v61 | (v63 << 25);
    v103 = *(a5 + 68);
    v104 = v103 + 16;
    if (v103 + 16 <= v101)
    {
      v106 = *(a5 + 64);
      v107 = v101 - v103 + (4 << v106) - 16;
      v108 = (__clz(v107) ^ 0x1F) - 1;
      result = ((v107 >> v108) & 1 | 2) << v108;
      v101 = ((v107 & ~(-1 << v106)) + v104 + ((((v107 >> v108) & 1 | (2 * (v108 - v106))) + 65534) << v106)) | ((v108 - v106) << 10);
      v105 = (v107 - result) >> v106;
    }

    else
    {
      LODWORD(v105) = 0;
    }

    *(v148 + 14) = v101;
    *(v148 + 8) = v105;
    if (v12 > 5)
    {
      if (v12 > 0x81)
      {
        if (v12 > 0x841)
        {
          if (v12 >> 1 >= 0xC21)
          {
            if (v12 < 0x5842)
            {
              LOWORD(v109) = 22;
            }

            else
            {
              LOWORD(v109) = 23;
            }
          }

          else
          {
            LOWORD(v109) = 21;
          }
        }

        else
        {
          v109 = (__clz(v12 - 66) ^ 0x1F) + 10;
        }
      }

      else
      {
        v110 = (__clz(v12 - 2) ^ 0x1F) - 1;
        v109 = ((v12 - 2) >> v110) + 2 * v110 + 2;
      }
    }

    else
    {
      LOWORD(v109) = v12;
    }

    v125 = v63 + v61;
    if ((v63 + v61) > 9)
    {
      if (v125 > 0x85)
      {
        if (v125 > 0x845)
        {
          LOWORD(v125) = 23;
        }

        else
        {
          v125 = (__clz(v125 - 70) ^ 0x1F) + 12;
        }
      }

      else
      {
        v126 = v125 - 6;
        v127 = __clz(v126);
        v125 = (v126 >> ((v127 ^ 0x1F) - 1)) + 2 * ((v127 ^ 0x1F) - 1) + 4;
      }
    }

    else
    {
      LOWORD(v125) = v125 - 2;
    }

    v128 = v125 & 7 | (8 * (v109 & 7));
    if ((v101 & 0x3FF) != 0 || v109 > 7u || v125 > 0xFu)
    {
      v130 = 3 * (v109 >> 3) + ((v125 & 0xFFF8) >> 3);
      v129 = ((((0x520D40u >> (2 * v130)) & 0xC0) + (v130 << 6)) | v128) + 64;
    }

    else
    {
      LOWORD(v129) = v128 | 0x40;
      if ((v125 & 0xFFF8) == 0)
      {
        LOWORD(v129) = v128;
      }
    }

    *(v148 + 12) = v129;
    *a11 += v12;
    v131 = v48 + 2;
    v98 = v48 + v61;
    if (v48 + v61 >= v144)
    {
      v132 = v144;
    }

    else
    {
      v132 = v48 + v61;
    }

    if (v64 < v61 >> 2)
    {
      v133 = v98 - 4 * v64;
      if (v131 > v133)
      {
        v133 = v48 + 2;
      }

      if (v132 >= v133)
      {
        v131 = v133;
      }

      else
      {
        v131 = v132;
      }
    }

    v18 = v141 + 2 * v61 + v48;
    v148 += 16;
    if (v131 >= v132)
    {
      v12 = 0;
      a6 = v149;
      v14 = v142;
    }

    else
    {
      a6 = v149;
      v14 = v142;
      do
      {
        *(v19 + (((0xBD1E35A7BD000000 * *(a3 + (v131 & a4))) >> 46) & 0x3FFFC)) = v131;
        ++v131;
      }

      while (v132 != v131);
      v12 = 0;
    }

LABEL_199:
    v11 = v98;
  }

  while (v98 + 8 < v13);
LABEL_224:
  *a8 = v12 + v13 - v98;
  *a10 += (v148 - a9) >> 4;
  return result;
}

unint64_t sub_100150700(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v12 = *a8;
  v13 = a2 + result;
  v14 = a2 + result - 7;
  v114 = v14;
  if (result <= 7)
  {
    v14 = a2;
  }

  v117 = v14;
  if (*(a5 + 4) >= 9)
  {
    v15 = 512;
  }

  else
  {
    v15 = 64;
  }

  if (a2 + 8 < v13)
  {
    v124 = (1 << *(a5 + 8)) - 16;
    v115 = *(a5 + 16);
    v16 = v15 + a2;
    v120 = a2 + result;
    v17 = *(a6 + 56);
    v116 = v15;
    v113 = 4 * v15;
    v118 = a7;
    v119 = a9;
    v121 = a5;
    while (1)
    {
      v122 = v16;
      v18 = v13 - a2;
      if (a2 >= v124)
      {
        v19 = v124;
      }

      else
      {
        v19 = a2;
      }

      v20 = (a3 + (a2 & a4));
      v21 = *v20;
      v22 = *a7;
      v126 = v12;
      if (a2 < v22)
      {
        goto LABEL_22;
      }

      v23 = (a3 + (a4 & (a2 - v22)));
      if (v21 != *v23)
      {
        goto LABEL_22;
      }

      if (v18 < 8)
      {
        v25 = 0;
        v26 = (a3 + (a2 & a4));
LABEL_181:
        v110 = v18 & 7;
        if ((v18 & 7) != 0)
        {
          v111 = v25 | v110;
          while (1)
          {
            result = *v26;
            if (v23[v25] != result)
            {
              break;
            }

            ++v26;
            ++v25;
            if (!--v110)
            {
              v25 = v111;
              break;
            }
          }
        }
      }

      else
      {
        v24 = 0;
        v25 = v18 & 0xFFFFFFFFFFFFFFF8;
        v26 = v20 + (v18 & 0xFFFFFFFFFFFFFFF8);
        v27 = v18 >> 3;
        while (1)
        {
          v28 = v20[v24];
          result = *&v23[v24 * 8];
          if (v28 != result)
          {
            break;
          }

          ++v24;
          if (!--v27)
          {
            goto LABEL_181;
          }
        }

        v25 = v24 * 8 + (__clz(__rbit64(result ^ v28)) >> 3);
      }

      if (v25 >= 4 && (v29 = 135 * v25 + 1935, v29 >= 0x7E5))
      {
        v125 = *a7;
        v21 = *(v20 + v25);
      }

      else
      {
LABEL_22:
        v125 = 0;
        v25 = 0;
        v29 = 2020;
      }

      v127 = (0xBD1E35A7BD000000 * *v20) >> 48;
      v128 = (v127 + 8);
      v30 = &v127;
      v31 = 1;
      do
      {
        v32 = v31;
        v33 = *(v17 + 4 * *v30);
        v34 = a2 - v33;
        v35 = a3 + (v33 & a4);
        if (v21 == *(v35 + v25) && a2 != v33 && v34 <= v19)
        {
          if (v18 < 8)
          {
            v42 = 0;
            v43 = (a3 + (a2 & a4));
LABEL_43:
            if ((v18 & 7) != 0)
            {
              v44 = v18 & 7 | v42;
              v45 = v18 & 7;
              while (1)
              {
                result = *(v35 + v42);
                if (result != *v43)
                {
                  break;
                }

                ++v43;
                ++v42;
                if (!--v45)
                {
                  v42 = v44;
                  break;
                }
              }
            }
          }

          else
          {
            v38 = 0;
            v39 = v18 >> 3;
            while (1)
            {
              v40 = v20[v38];
              v41 = *(v35 + v38 * 8);
              if (v40 != v41)
              {
                break;
              }

              ++v38;
              if (!--v39)
              {
                v42 = v18 & 0xFFFFFFFFFFFFFFF8;
                v43 = v20 + (v18 & 0xFFFFFFFFFFFFFFF8);
                goto LABEL_43;
              }
            }

            v42 = v38 * 8 + (__clz(__rbit64(v41 ^ v40)) >> 3);
          }

          if (v42 >= 4)
          {
            result = 30 * (__clz(v34) ^ 0x1F);
            if (v29 < 135 * v42 - result + 1920)
            {
              v21 = *(v20 + v42);
              v125 = v34;
              v29 = 135 * v42 - result + 1920;
              v25 = v42;
            }
          }
        }

        v31 = 0;
        v30 = &v128;
      }

      while ((v32 & 1) != 0);
      *(v17 + 4 * *(&v127 + (a2 & 8))) = a2;
      if (v29 < 0x7E5)
      {
        ++v12;
        v82 = a2 + 1;
        v16 = v122;
        if (a2 + 1 > v122)
        {
          if (v82 <= v122 + v113)
          {
            v96 = a2 + 9;
            if (a2 + 9 >= v114)
            {
              v96 = v114;
            }

            while (v82 < v96)
            {
              *(v17 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v82 & a4))) >> 48) + (v82 & 8))) = v82;
              v12 += 2;
              v82 += 2;
            }
          }

          else
          {
            v83 = a2 + 17;
            if (a2 + 17 >= v114)
            {
              v83 = v114;
            }

            while (v82 < v83)
            {
              *(v17 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v82 & a4))) >> 48) + (v82 & 8))) = v82;
              v12 += 4;
              v82 += 4;
            }
          }
        }

        goto LABEL_174;
      }

      v46 = 0;
      v123 = *a7;
      while (1)
      {
        --v18;
        v47 = v25 - 1;
        if (v25 - 1 >= v18)
        {
          v47 = v18;
        }

        v48 = *(a5 + 4) >= 5 ? 0 : v47;
        v49 = a2 + 1;
        v50 = a2 + 1 < v124 ? a2 + 1 : v124;
        v51 = (a3 + (v49 & a4));
        v52 = *(v51 + v48);
        if (v49 < v123)
        {
          v61 = 0;
          v62 = 2020;
        }

        else
        {
          v53 = a3 + (a4 & (v49 - v123));
          if (v52 != *(v53 + v48))
          {
            goto LABEL_71;
          }

          if (v18 < 8)
          {
            v60 = 0;
            v57 = (a3 + (v49 & a4));
LABEL_102:
            v81 = v18 & 7;
            if ((v18 & 7) != 0)
            {
              do
              {
                if (*(v53 + v60) != *v57)
                {
                  break;
                }

                v57 = (v57 + 1);
                ++v60;
                --v81;
              }

              while (v81);
            }
          }

          else
          {
            v54 = 0;
            v55 = (a3 + (a4 & (v49 - v123)));
            v56 = v18 >> 3;
            v57 = (a3 + (v49 & a4));
            while (1)
            {
              v59 = *v55++;
              v58 = v59;
              if (*v57 != v59)
              {
                break;
              }

              ++v57;
              v54 -= 8;
              if (!--v56)
              {
                v60 = -v54;
                goto LABEL_102;
              }
            }

            v60 = (__clz(__rbit64(v58 ^ *v57)) >> 3) - v54;
          }

          if (v60 >= 4 && (v62 = 135 * v60 + 1935, v62 >= 0x7E5))
          {
            v52 = *(v51 + v60);
            v48 = v60;
            v61 = v123;
          }

          else
          {
LABEL_71:
            v61 = 0;
            v62 = 2020;
          }
        }

        v127 = (0xBD1E35A7BD000000 * *v51) >> 48;
        v128 = (v127 + 8);
        v63 = &v127;
        v64 = 1;
        do
        {
          v65 = v64;
          v66 = *(v17 + 4 * *v63);
          v67 = v49 - v66;
          v68 = a3 + (v66 & a4);
          if (v52 == *(v68 + v48) && v49 != v66 && v67 <= v50)
          {
            if (v18 < 8)
            {
              v77 = 0;
              v74 = (a3 + (v49 & a4));
LABEL_92:
              if ((v18 & 7) != 0)
              {
                v79 = v18 & 7;
                do
                {
                  if (*(v68 + v77) != *v74)
                  {
                    break;
                  }

                  v74 = (v74 + 1);
                  ++v77;
                  --v79;
                }

                while (v79);
              }
            }

            else
            {
              v71 = 0;
              v72 = (a3 + (v66 & a4));
              v73 = v18 >> 3;
              v74 = (a3 + (v49 & a4));
              while (1)
              {
                v76 = *v72++;
                v75 = v76;
                if (*v74 != v76)
                {
                  break;
                }

                ++v74;
                v71 -= 8;
                if (!--v73)
                {
                  v77 = -v71;
                  goto LABEL_92;
                }
              }

              v77 = (__clz(__rbit64(v75 ^ *v74)) >> 3) - v71;
            }

            if (v77 >= 4)
            {
              v78 = __clz(v67) ^ 0x1F;
              if (v62 < 135 * v77 - 30 * v78 + 1920)
              {
                v52 = *(v51 + v77);
                v48 = v77;
                v61 = v67;
                v62 = 135 * v77 - 30 * v78 + 1920;
              }
            }
          }

          v64 = 0;
          v63 = &v128;
        }

        while ((v65 & 1) != 0);
        *(v17 + 4 * *(&v127 + (v49 & 8))) = v49;
        if (v62 < v29 + 175)
        {
          break;
        }

        ++v126;
        v13 = v120;
        a5 = v121;
        if (v46 <= 2)
        {
          v80 = a2 + 9;
          ++v46;
          v125 = v61;
          v29 = v62;
          v25 = v48;
          ++a2;
          if (v80 < v120)
          {
            continue;
          }
        }

        goto LABEL_113;
      }

      v61 = v125;
      v48 = v25;
      v49 = a2;
      v13 = v120;
      a5 = v121;
LABEL_113:
      if (v49 + v115 >= v124)
      {
        v84 = v124;
      }

      else
      {
        v84 = v49 + v115;
      }

      if (v61 > v84)
      {
        goto LABEL_117;
      }

      v89 = *v118;
      if (v61 != v89)
      {
        break;
      }

      LOWORD(v85) = 0;
      LODWORD(v88) = 0;
      *v119 = v126;
      *(v119 + 4) = v48;
LABEL_126:
      *(v119 + 14) = v85;
      *(v119 + 8) = v88;
      if (v126 > 5)
      {
        if (v126 > 0x81)
        {
          if (v126 > 0x841)
          {
            if (v126 >> 1 >= 0xC21)
            {
              if (v126 < 0x5842)
              {
                LOWORD(v94) = 22;
              }

              else
              {
                LOWORD(v94) = 23;
              }
            }

            else
            {
              LOWORD(v94) = 21;
            }
          }

          else
          {
            v94 = (__clz(v126 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v95 = __clz(v126 - 2);
          v94 = ((v126 - 2) >> ((v95 ^ 0x1F) - 1)) + 2 * ((v95 ^ 0x1F) - 1) + 2;
        }
      }

      else
      {
        LOWORD(v94) = v126;
      }

      if (v48 > 9)
      {
        if (v48 > 0x85)
        {
          if (v48 > 0x845)
          {
            LOWORD(v102) = 23;
          }

          else
          {
            v102 = (__clz(v48 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v103 = v48 - 6;
          v104 = __clz(v103);
          v102 = (v103 >> ((v104 ^ 0x1F) - 1)) + 2 * ((v104 ^ 0x1F) - 1) + 4;
        }
      }

      else
      {
        LOWORD(v102) = v48 - 2;
      }

      v105 = v102 & 7 | (8 * (v94 & 7));
      if ((v85 & 0x3FF) != 0 || v94 > 7u || v102 > 0xFu)
      {
        v107 = 3 * (v94 >> 3) + ((v102 & 0xFFF8) >> 3);
        v106 = ((((0x520D40u >> (2 * v107)) & 0xC0) + (v107 << 6)) | v105) + 64;
      }

      else
      {
        LOWORD(v106) = v105 | 0x40;
        if ((v102 & 0xFFF8) == 0)
        {
          LOWORD(v106) = v102 & 7 | (8 * (v94 & 7));
        }
      }

      *(v119 + 12) = v106;
      *a11 += v126;
      v108 = v49 + 2;
      v82 = v49 + v48;
      v109 = v117;
      if (v49 + v48 < v117)
      {
        v109 = v49 + v48;
      }

      if (v61 < v48 >> 2)
      {
        if (v108 <= v82 - 4 * v61)
        {
          v108 = v82 - 4 * v61;
        }

        if (v109 < v108)
        {
          v108 = v109;
        }
      }

      v16 = v116 + 2 * v48 + v49;
      result = v119 + 16;
      v119 += 16;
      if (v108 >= v109)
      {
        v12 = 0;
        a7 = v118;
      }

      else
      {
        a7 = v118;
        do
        {
          *(v17 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v108 & a4))) >> 48) + (v108 & 8))) = v108;
          ++v108;
        }

        while (v109 != v108);
        v12 = 0;
      }

LABEL_174:
      a2 = v82;
      if (v82 + 8 >= v13)
      {
        goto LABEL_187;
      }
    }

    v97 = v118[1];
    if (v61 == v97)
    {
      v85 = 1;
      goto LABEL_118;
    }

    v98 = v61 + 3;
    v99 = v61 + 3 - v89;
    if (v99 > 6)
    {
      if (v98 - v97 > 6)
      {
        if (v61 == v118[2])
        {
          v85 = 2;
        }

        else if (v61 == v118[3])
        {
          v85 = 3;
        }

        else
        {
LABEL_117:
          v85 = v61 + 15;
        }

LABEL_118:
        if (v61 <= v84 && v85)
        {
          v118[3] = v118[2];
          *(v118 + 1) = *v118;
          *v118 = v61;
        }

        *v119 = v126;
        *(v119 + 4) = v48;
        v86 = *(a5 + 68);
        v87 = v86 + 16;
        if (v86 + 16 <= v85)
        {
          v90 = *(a5 + 64);
          v91 = v85 - v86 + (4 << v90) - 16;
          v92 = (__clz(v91) ^ 0x1F) - 1;
          v93 = ((v91 >> v92) & 1 | 2) << v92;
          v85 = ((v91 & ~(-1 << v90)) + v87 + ((((v91 >> v92) & 1 | (2 * (v92 - v90))) + 65534) << v90)) | ((v92 - v90) << 10);
          v88 = (v91 - v93) >> v90;
        }

        else
        {
          LODWORD(v88) = 0;
        }

        goto LABEL_126;
      }

      v100 = 4 * (v98 - v97);
      v101 = 266017486;
    }

    else
    {
      v100 = 4 * v99;
      v101 = 158663784;
    }

    v85 = (v101 >> v100) & 0xF;
    goto LABEL_118;
  }

  v119 = a9;
  v82 = a2;
LABEL_187:
  *a8 = v12 + v13 - v82;
  *a10 += (v119 - a9) >> 4;
  return result;
}

unint64_t sub_1001511A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *i, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v11 = a2;
  v12 = *a8;
  v13 = a2 + result;
  v14 = a2 + result - 7;
  v161 = v14;
  if (result <= 7)
  {
    v14 = a2;
  }

  v159 = v14;
  if (*(a5 + 4) >= 9)
  {
    v15 = 512;
  }

  else
  {
    v15 = 64;
  }

  if (a2 + 8 >= v13)
  {
    v162 = a9;
    v114 = a2;
    goto LABEL_244;
  }

  v158 = v15;
  v170 = *(a5 + 16);
  v171 = (1 << *(a5 + 8)) - 16;
  v16 = v15 + a2;
  v17 = *(a6 + 56);
  v160 = 4 * v15;
  v18 = vdupq_n_s64(0x1FFFFuLL);
  v162 = a9;
  v164 = i;
  v166 = a2 + result;
  v172 = a5;
  do
  {
    v19 = v13 - v11;
    if (v11 >= v171)
    {
      v20 = v171;
    }

    else
    {
      v20 = v11;
    }

    if (v11 + v170 >= v171)
    {
      v21 = v171;
    }

    else
    {
      v21 = v11 + v170;
    }

    v22 = (a3 + (v11 & a4));
    v23 = *v22;
    v24 = *i;
    result = v19 >> 3;
    if (v11 < v24)
    {
      goto LABEL_25;
    }

    v25 = (a3 + (a4 & (v11 - v24)));
    if (v23 != *v25)
    {
      goto LABEL_25;
    }

    v173 = *i;
    if (v19 < 8)
    {
      v27 = 0;
      v28 = (a3 + (v11 & a4));
LABEL_232:
      v153 = v19 & 7;
      if ((v19 & 7) != 0)
      {
        v154 = v27 | v153;
        while (v25[v27] == *v28)
        {
          ++v28;
          ++v27;
          if (!--v153)
          {
            v27 = v154;
            break;
          }
        }
      }
    }

    else
    {
      v26 = 0;
      v27 = v19 & 0xFFFFFFFFFFFFFFF8;
      v28 = v22 + (v19 & 0xFFFFFFFFFFFFFFF8);
      v29 = v19 >> 3;
      while (1)
      {
        v30 = v22[v26];
        v31 = *&v25[v26 * 8];
        if (v30 != v31)
        {
          break;
        }

        ++v26;
        if (!--v29)
        {
          goto LABEL_232;
        }
      }

      v27 = v26 * 8 + (__clz(__rbit64(v31 ^ v30)) >> 3);
    }

    if (v27 >= 4 && (v32 = 135 * v27 + 1935, v32 >= 0x7E5))
    {
      v23 = *(v22 + v27);
    }

    else
    {
LABEL_25:
      v173 = 0;
      v27 = 0;
      v32 = 2020;
    }

    v33 = 0;
    v163 = *(a5 + 80);
    v34 = vdupq_n_s64((0xBD1E35A7BD000000 * *v22) >> 47);
    v174 = vandq_s8(vaddq_s64(v34, xmmword_1003E32A0), v18);
    v175 = vandq_s8(vaddq_s64(v34, xmmword_1003E32B0), v18);
    v35 = *(v174.i64 + (v11 & 0x18));
    do
    {
      v36 = *(v17 + 4 * v174.i64[v33]);
      v37 = v11 - v36;
      v38 = a3 + (v36 & a4);
      if (v23 == *(v38 + v27) && v11 != v36 && v37 <= v20)
      {
        if (v19 < 8)
        {
          v45 = 0;
          v46 = (a3 + (v11 & a4));
LABEL_46:
          if ((v19 & 7) != 0)
          {
            v48 = v19 & 7 | v45;
            v49 = v19 & 7;
            while (*(v38 + v45) == *v46)
            {
              ++v46;
              ++v45;
              if (!--v49)
              {
                v45 = v48;
                break;
              }
            }

            v13 = v166;
          }
        }

        else
        {
          v41 = 0;
          v42 = v19 >> 3;
          while (1)
          {
            v43 = v22[v41];
            v44 = *(v38 + v41 * 8);
            if (v43 != v44)
            {
              break;
            }

            ++v41;
            if (!--v42)
            {
              v45 = v19 & 0xFFFFFFFFFFFFFFF8;
              v46 = v22 + (v19 & 0xFFFFFFFFFFFFFFF8);
              goto LABEL_46;
            }
          }

          v45 = v41 * 8 + (__clz(__rbit64(v44 ^ v43)) >> 3);
        }

        if (v45 >= 4)
        {
          v47 = __clz(v37) ^ 0x1F;
          if (v32 < 135 * v45 - 30 * v47 + 1920)
          {
            v23 = *(v22 + v45);
            v173 = v37;
            v32 = 135 * v45 - 30 * v47 + 1920;
            v27 = v45;
          }
        }
      }

      ++v33;
    }

    while (v33 != 4);
    if (v32 == 2020)
    {
      v50 = *(a6 + 48);
      v51 = *(v50 + 8);
      v52 = *(v50 + 16);
      a5 = v172;
      if (v52 < v51 >> 7)
      {
        goto LABEL_56;
      }

      v53 = ((506832829 * *v22) >> 17) & 0x7FFELL;
      v54 = *(v172 + 120);
      *(v50 + 8) = v51 + 1;
      v55 = *(v54 + v53);
      if (!*(v54 + v53) || v19 < v55)
      {
        goto LABEL_56;
      }

      v129 = *(*(v172 + 112) + 2 * v53);
      v130 = *(v172 + 88);
      v131 = *(v130 + 4 * v55 + 32);
      v132 = *(v130 + 168) + v129 * *(v54 + v53);
      result = v132 + v131;
      if (v55 < 8)
      {
        v27 = 0;
LABEL_238:
        v155 = v55 & 7;
        if ((v55 & 7) != 0)
        {
          v156 = v27 | v155;
          while (*(v22 + v27) == *result)
          {
            ++result;
            ++v27;
            if (!--v155)
            {
              v27 = v156;
              break;
            }
          }
        }
      }

      else
      {
        v133 = 0;
        v27 = v55 & 0xF8;
        v134 = v132 + v27 + v131;
        while (1)
        {
          v135 = *(result + v133);
          v136 = v22[v133 / 8];
          if (v135 != v136)
          {
            break;
          }

          v133 += 8;
          if (v27 == v133)
          {
            result = v134;
            goto LABEL_238;
          }
        }

        v27 = v133 + (__clz(__rbit64(v136 ^ v135)) >> 3);
      }

      if (!v27 || v27 + *(v172 + 100) <= v55 || (result = (*(v172 + 104) >> (6 * (v55 - v27))) & 0x3FLL, v137 = v21 + 1 + v129 + ((result + 4 * (v55 - v27)) << *(v130 + v55)), v137 > v163) || (v32 = 135 * v27 - 30 * (__clz(v137) ^ 0x1F) + 1920, v32 < 0x7E4))
      {
LABEL_56:
        *(v17 + 4 * v35) = v11;
LABEL_144:
        ++v12;
        v114 = v11 + 1;
        if (v11 + 1 <= v16)
        {
          i = v164;
        }

        else if (v114 <= v16 + v160)
        {
          v116 = v11 + 9;
          if (v11 + 9 >= v161)
          {
            v116 = v161;
          }

          for (i = v164; v114 < v116; v114 += 2)
          {
            *(v17 + 4 * (((((0xBD1E35A7BD000000 * *(a3 + (v114 & a4))) >> 32) >> 15) + (v114 & 0x18)) & 0x1FFFF)) = v114;
            v12 += 2;
          }
        }

        else
        {
          v115 = v11 + 17;
          if (v11 + 17 >= v161)
          {
            v115 = v161;
          }

          for (i = v164; v114 < v115; v114 += 4)
          {
            *(v17 + 4 * (((((0xBD1E35A7BD000000 * *(a3 + (v114 & a4))) >> 32) >> 15) + (v114 & 0x18)) & 0x1FFFF)) = v114;
            v12 += 4;
          }
        }

        goto LABEL_225;
      }

      v173 = v137;
      v138 = v52 + 1;
      v56 = v55 - v27;
      *(v50 + 16) = v138;
    }

    else
    {
      v56 = 0;
      a5 = v172;
    }

    *(v17 + 4 * v35) = v11;
    if (v32 < 0x7E5)
    {
      goto LABEL_144;
    }

    result = 0;
    v168 = *v164;
    while (1)
    {
      --v19;
      v57 = v27 - 1;
      if (v27 - 1 >= v19)
      {
        v57 = v19;
      }

      v58 = *(a5 + 4) >= 5 ? 0 : v57;
      v59 = v11 + 1;
      v60 = v11 + 1 < v171 ? v11 + 1 : v171;
      v61 = v59 + v170 >= v171 ? v171 : v59 + v170;
      v62 = (a3 + (v59 & a4));
      v63 = *(v62 + v58);
      v169 = v61;
      v167 = v56;
      if (v59 < v168)
      {
        goto LABEL_82;
      }

      v64 = a3 + (a4 & (v59 - v168));
      if (v63 != *(v64 + v58))
      {
        goto LABEL_82;
      }

      if (v19 < 8)
      {
        v71 = 0;
        v68 = (a3 + (v59 & a4));
LABEL_134:
        v111 = v19 & 7;
        if ((v19 & 7) != 0)
        {
          do
          {
            if (*(v64 + v71) != *v68)
            {
              break;
            }

            v68 = (v68 + 1);
            ++v71;
            --v111;
          }

          while (v111);
        }
      }

      else
      {
        v65 = 0;
        v66 = (a3 + (a4 & (v59 - v168)));
        v67 = v19 >> 3;
        v68 = (a3 + (v59 & a4));
        while (1)
        {
          v70 = *v66++;
          v69 = v70;
          if (*v68 != v70)
          {
            break;
          }

          ++v68;
          v65 -= 8;
          if (!--v67)
          {
            v71 = -v65;
            goto LABEL_134;
          }
        }

        v71 = (__clz(__rbit64(v69 ^ *v68)) >> 3) - v65;
      }

      if (v71 >= 4 && (v72 = 135 * v71 + 1935, v72 >= 0x7E5))
      {
        v63 = *(v62 + v71);
        v58 = v71;
        v73 = v168;
      }

      else
      {
LABEL_82:
        v73 = 0;
        v72 = 2020;
      }

      v74 = 0;
      v75 = vdupq_n_s64((0xBD1E35A7BD000000 * *v62) >> 47);
      v76 = vdupq_n_s64(0x1FFFFuLL);
      v174 = vandq_s8(vaddq_s64(v75, xmmword_1003E32A0), v76);
      v175 = vandq_s8(vaddq_s64(v75, xmmword_1003E32B0), v76);
      v77 = *(v174.i64 + (v59 & 0x18));
      do
      {
        v78 = *(v17 + 4 * v174.i64[v74]);
        v79 = v59 - v78;
        v80 = a3 + (v78 & a4);
        if (v63 == *(v80 + v58) && v59 != v78 && v79 <= v60)
        {
          if (v19 < 8)
          {
            v89 = 0;
            v86 = (a3 + (v59 & a4));
LABEL_103:
            if ((v19 & 7) != 0)
            {
              v91 = v19 & 7;
              do
              {
                if (*(v80 + v89) != *v86)
                {
                  break;
                }

                v86 = (v86 + 1);
                ++v89;
                --v91;
              }

              while (v91);
            }
          }

          else
          {
            v83 = 0;
            v84 = (a3 + (v78 & a4));
            v85 = v19 >> 3;
            v86 = (a3 + (v59 & a4));
            while (1)
            {
              v88 = *v84++;
              v87 = v88;
              if (*v86 != v88)
              {
                break;
              }

              ++v86;
              v83 -= 8;
              if (!--v85)
              {
                v89 = -v83;
                goto LABEL_103;
              }
            }

            v89 = (__clz(__rbit64(v87 ^ *v86)) >> 3) - v83;
          }

          if (v89 >= 4)
          {
            v90 = __clz(v79) ^ 0x1F;
            if (v72 < 135 * v89 - 30 * v90 + 1920)
            {
              v63 = *(v62 + v89);
              v58 = v89;
              v73 = v79;
              v72 = 135 * v89 - 30 * v90 + 1920;
            }
          }
        }

        ++v74;
      }

      while (v74 != 4);
      if (v72 == 2020)
      {
        v92 = *(a6 + 48);
        v94 = *(v92 + 8);
        v93 = *(v92 + 16);
        a5 = v172;
        if (v93 < v94 >> 7 || (v95 = ((506832829 * *v62) >> 17) & 0x7FFELL, v96 = *(v172 + 120), *(v92 + 8) = v94 + 1, v97 = *(v96 + v95), !*(v96 + v95)) || v19 < v97)
        {
          v98 = 0;
LABEL_113:
          v72 = 2020;
          goto LABEL_116;
        }

        v100 = *(*(v172 + 112) + 2 * v95);
        v101 = *(v172 + 88);
        v102 = *(v101 + 4 * v97 + 32);
        v103 = *(v101 + 168) + v100 * *(v96 + v95);
        v104 = (v103 + v102);
        if (v97 < 8)
        {
          v106 = 0;
LABEL_139:
          v112 = v97 & 7;
          if ((v97 & 7) != 0)
          {
            v113 = v106 | v112;
            while (*(v62 + v106) == *v104)
            {
              ++v104;
              ++v106;
              if (!--v112)
              {
                v106 = v113;
                break;
              }
            }
          }
        }

        else
        {
          v105 = 0;
          v106 = v97 & 0xF8;
          v107 = (v103 + v106 + v102);
          while (1)
          {
            v108 = *&v104[v105];
            v109 = v62[v105 / 8];
            if (v108 != v109)
            {
              break;
            }

            v105 += 8;
            if (v106 == v105)
            {
              v104 = v107;
              goto LABEL_139;
            }
          }

          v106 = v105 + (__clz(__rbit64(v109 ^ v108)) >> 3);
        }

        v98 = 0;
        if (v106)
        {
          a5 = v172;
          if (v106 + *(v172 + 100) <= v97)
          {
            goto LABEL_113;
          }

          v110 = v169 + 1 + v100 + ((((*(v172 + 104) >> (6 * (v97 - v106))) & 0x3FLL) + 4 * (v97 - v106)) << *(v101 + v97));
          if (v110 <= v163)
          {
            v72 = 135 * v106 - 30 * (__clz(v110) ^ 0x1F) + 1920;
            if (v72 >= 0x7E4)
            {
              v98 = v97 - v106;
              *(v92 + 16) = v93 + 1;
              v58 = v106;
              v73 = v110;
              goto LABEL_115;
            }
          }

          v98 = 0;
        }

        v72 = 2020;
      }

      else
      {
        v98 = 0;
      }

LABEL_115:
      a5 = v172;
LABEL_116:
      *(v17 + 4 * v77) = v59;
      if (v72 < v32 + 175)
      {
        break;
      }

      ++v12;
      v13 = v166;
      if (result <= 2)
      {
        v99 = v11 + 9;
        result = (result + 1);
        v173 = v73;
        v32 = v72;
        v56 = v98;
        v27 = v58;
        ++v11;
        if (v99 < v166)
        {
          continue;
        }
      }

      goto LABEL_160;
    }

    v117 = v11 + v170;
    if (v11 + v170 >= v171)
    {
      v117 = v171;
    }

    v169 = v117;
    v73 = v173;
    v98 = v167;
    v58 = v27;
    v59 = v11;
    v13 = v166;
LABEL_160:
    i = v164;
    if (v73 > v169)
    {
LABEL_161:
      v118 = v73 + 15;
      goto LABEL_162;
    }

    v119 = *v164;
    if (v73 == v119)
    {
      v118 = 0;
      goto LABEL_167;
    }

    v139 = v164[1];
    if (v73 == v139)
    {
      v118 = 1;
    }

    else
    {
      v140 = v73 + 3 - v119;
      if (v140 > 6)
      {
        v143 = v73 + 3 - v139;
        if (v143 > 6)
        {
          if (v73 == v164[2])
          {
            v118 = 2;
          }

          else
          {
            if (v73 != v164[3])
            {
              goto LABEL_161;
            }

            v118 = 3;
          }

          goto LABEL_162;
        }

        v141 = 4 * v143;
        v142 = 266017486;
      }

      else
      {
        v141 = 4 * v140;
        v142 = 158663784;
      }

      v118 = (v142 >> v141) & 0xF;
    }

LABEL_162:
    if (v73 <= v169 && v118)
    {
      v164[3] = v164[2];
      *(v164 + 1) = *v164;
      *v164 = v73;
    }

LABEL_167:
    *v162 = v12;
    *(v162 + 4) = v58 | (v98 << 25);
    v120 = *(a5 + 68);
    v121 = v120 + 16;
    if (v120 + 16 <= v118)
    {
      v123 = *(a5 + 64);
      v124 = v118 - v120 + (4 << v123) - 16;
      v125 = (__clz(v124) ^ 0x1F) - 1;
      v126 = ((v124 >> v125) & 1 | 2) << v125;
      result = 65534;
      v118 = ((v124 & ~(-1 << v123)) + v121 + ((((v124 >> v125) & 1 | (2 * (v125 - v123))) + 65534) << v123)) | ((v125 - v123) << 10);
      v122 = (v124 - v126) >> v123;
    }

    else
    {
      LODWORD(v122) = 0;
    }

    *(v162 + 14) = v118;
    *(v162 + 8) = v122;
    if (v12 > 5)
    {
      if (v12 > 0x81)
      {
        if (v12 > 0x841)
        {
          if (v12 >> 1 >= 0xC21)
          {
            if (v12 < 0x5842)
            {
              LOWORD(v127) = 22;
            }

            else
            {
              LOWORD(v127) = 23;
            }
          }

          else
          {
            LOWORD(v127) = 21;
          }
        }

        else
        {
          v127 = (__clz(v12 - 66) ^ 0x1F) + 10;
        }
      }

      else
      {
        v128 = (__clz(v12 - 2) ^ 0x1F) - 1;
        v127 = ((v12 - 2) >> v128) + 2 * v128 + 2;
      }
    }

    else
    {
      LOWORD(v127) = v12;
    }

    v144 = v98 + v58;
    if (v144 > 9)
    {
      if (v144 > 0x85)
      {
        if (v144 > 0x845)
        {
          LOWORD(v144) = 23;
        }

        else
        {
          v144 = (__clz(v144 - 70) ^ 0x1F) + 12;
        }
      }

      else
      {
        v145 = v144 - 6;
        v146 = (__clz(v145) ^ 0x1F) - 1;
        v144 = (v145 >> v146) + 2 * v146 + 4;
      }
    }

    else
    {
      LOWORD(v144) = v144 - 2;
    }

    v147 = v144 & 7 | (8 * (v127 & 7));
    if ((v118 & 0x3FF) != 0 || v127 > 7u || v144 > 0xFu)
    {
      v149 = 3 * (v127 >> 3) + ((v144 & 0xFFF8) >> 3);
      v148 = ((((0x520D40u >> (2 * v149)) & 0xC0) + (v149 << 6)) | v147) + 64;
    }

    else
    {
      LOWORD(v148) = v147 | 0x40;
      if ((v144 & 0xFFF8) == 0)
      {
        LOWORD(v148) = v147;
      }
    }

    *(v162 + 12) = v148;
    *a11 += v12;
    v150 = v59 + 2;
    v114 = v59 + v58;
    if (v59 + v58 >= v159)
    {
      v151 = v159;
    }

    else
    {
      v151 = v59 + v58;
    }

    if (v73 < v58 >> 2)
    {
      v152 = v114 - 4 * v73;
      if (v150 > v152)
      {
        v152 = v59 + 2;
      }

      if (v151 >= v152)
      {
        v150 = v152;
      }

      else
      {
        v150 = v151;
      }
    }

    v16 = v158 + 2 * v58 + v59;
    v162 += 16;
    if (v150 < v151)
    {
      do
      {
        *(v17 + 4 * (((((0xBD1E35A7BD000000 * *(a3 + (v150 & a4))) >> 32) >> 15) + (v150 & 0x18)) & 0x1FFFF)) = v150;
        ++v150;
      }

      while (v151 != v150);
    }

    v12 = 0;
LABEL_225:
    v11 = v114;
  }

  while (v114 + 8 < v13);
LABEL_244:
  *a8 = v12 + v13 - v114;
  *a10 += (v162 - a9) >> 4;
  return result;
}

unint64_t sub_100151FD8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v11 = a5;
  v12 = a2;
  v232 = *(a5 + 16);
  v13 = *a8;
  v14 = a2 + result;
  v218 = a2 + result - 3;
  if (result <= 3)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2 + result - 3;
  }

  v16 = *(a5 + 8);
  v17 = 512;
  if (*(a5 + 4) < 9)
  {
    v17 = 64;
  }

  v220 = v15;
  v221 = v17;
  v18 = *(a6 + 76);
  if (v18 >= 5)
  {
    v19 = vld1q_dup_f32(a7);
    *(a7 + 1) = vaddq_s32(v19, xmmword_1003E32C0);
    *(a7 + 4) = vadd_s32(*v19.i8, 0x3FFFFFFFDLL);
    if (v18 >= 0xB)
    {
      v20 = (a7 + 1);
      v21 = vld1q_dup_f32(v20);
      *(a7 + 10) = vaddq_s32(v21, xmmword_1003E32C0);
      *(a7 + 7) = vadd_s32(*v21.i8, 0x3FFFFFFFDLL);
    }
  }

  if (a2 + 4 < v14)
  {
    v22 = v17 + a2;
    v231 = (1 << v16) - 16;
    v23 = *(a6 + 88);
    v233 = *(a6 + 96);
    v219 = 4 * v17;
    v217 = v14 - 4;
    v222 = a9;
    v239 = v23;
    v223 = v14;
    while (1)
    {
      v242 = v22;
      v240 = v13;
      v24 = v14 - v12;
      if (v12 >= v231)
      {
        v25 = v231;
      }

      else
      {
        v25 = v12;
      }

      v26 = v12 + v232;
      if (v12 + v232 >= v231)
      {
        v26 = v231;
      }

      v237 = v26;
      v27 = v12 & a4;
      v28 = *(a6 + 76);
      if (v28)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        result = 2020;
        v241 = 2020;
        do
        {
          v33 = a7[v30];
          v34 = v12 - v33;
          v35 = v25 < v33 || v34 >= v12;
          v36 = v34 & a4;
          v37 = v29 + v27;
          v38 = v35 || v37 > a4;
          v39 = v36 + v29;
          v40 = v38 || v39 > a4;
          if (!v40 && *(a3 + v37) == *(a3 + v39))
          {
            v41 = a3 + v36;
            if (v24 < 8)
            {
              v46 = 0;
              v47 = (a3 + v27);
LABEL_52:
              if ((v24 & 7) != 0)
              {
                v50 = v24 & 7 | v46;
                v51 = v24 & 7;
                while (*(v41 + v46) == *v47)
                {
                  ++v47;
                  ++v46;
                  if (!--v51)
                  {
                    v46 = v50;
                    break;
                  }
                }

                v23 = v239;
              }
            }

            else
            {
              v42 = 0;
              v43 = v24 >> 3;
              while (1)
              {
                v44 = *(a3 + v27 + v42);
                v45 = *(v41 + v42);
                if (v44 != v45)
                {
                  break;
                }

                v42 += 8;
                if (!--v43)
                {
                  v46 = v24 & 0xFFFFFFFFFFFFFFF8;
                  v47 = (a3 + v27 + (v24 & 0xFFFFFFFFFFFFFFF8));
                  goto LABEL_52;
                }
              }

              v46 = v42 + (__clz(__rbit64(v45 ^ v44)) >> 3);
            }

            if (v46 > 2 || v30 <= 1 && v46 == 2)
            {
              v48 = 135 * v46 + 1935;
              if (result < v48)
              {
                if (v30)
                {
                  v48 -= ((0x1CA10u >> (v30 & 0xE)) & 0xE) + 39;
                }

                if (result < v48)
                {
                  v32 = a7[v30];
                }

                v49 = v241;
                if (result < v48)
                {
                  v49 = v48;
                }

                v241 = v49;
                if (result < v48)
                {
                  v31 = v46;
                  v29 = v46;
                  result = v48;
                }
              }
            }
          }

          ++v30;
        }

        while (v30 != v28);
      }

      else
      {
        v32 = 0;
        v31 = 0;
        v29 = 0;
        v241 = 2020;
        result = 2020;
      }

      v236 = *(v11 + 80);
      v52 = (a3 + v27);
      v53 = *(a6 + 68);
      v54 = (506832829 * *(a3 + v27)) >> *(a6 + 64);
      v55 = v233 + 4 * (v54 << *(a6 + 72));
      v56 = *(v23 + 2 * v54);
      v230 = *(a6 + 56);
      if (v56 >= v230)
      {
        v57 = v56 - v230;
      }

      else
      {
        v57 = 0;
      }

      if (v57 < v56)
      {
        v58 = *(v23 + 2 * v54);
        do
        {
          v59 = *(v55 + 4 * (--v58 & v53));
          v60 = v12 - v59;
          if (v12 - v59 > v25)
          {
            break;
          }

          if (v29 + v27 <= a4)
          {
            v61 = v59 & a4;
            if (v61 + v29 <= a4 && *(a3 + v29 + v27) == *(a3 + v61 + v29))
            {
              v62 = a3 + v61;
              if (v24 < 8)
              {
                v67 = 0;
                v68 = (a3 + v27);
LABEL_80:
                if ((v24 & 7) != 0)
                {
                  v234 = v24 & 7 | v67;
                  v70 = v24 & 7;
                  while (*(v62 + v67) == *v68)
                  {
                    ++v68;
                    ++v67;
                    if (!--v70)
                    {
                      v67 = v234;
                      break;
                    }
                  }

                  v14 = v223;
                }
              }

              else
              {
                v63 = 0;
                v64 = v24 >> 3;
                while (1)
                {
                  v65 = *&v52[v63];
                  v66 = *(v62 + v63 * 4);
                  if (v65 != v66)
                  {
                    break;
                  }

                  v63 += 2;
                  if (!--v64)
                  {
                    v67 = v24 & 0xFFFFFFFFFFFFFFF8;
                    v68 = v52 + (v24 & 0xFFFFFFFFFFFFFFF8);
                    goto LABEL_80;
                  }
                }

                v67 = v63 * 4 + (__clz(__rbit64(v66 ^ v65)) >> 3);
              }

              if (v67 >= 4)
              {
                v69 = __clz(v60) ^ 0x1F;
                if (result < 135 * v67 - 30 * v69 + 1920)
                {
                  v32 = v60;
                  v241 = 135 * v67 - 30 * v69 + 1920;
                  v31 = v67;
                  v29 = v67;
                  result = v241;
                }
              }
            }
          }
        }

        while (v58 > v57);
      }

      *(v55 + 4 * (v53 & v56)) = v12;
      v23 = v239;
      *(v239 + 2 * v54) = v56 + 1;
      if (v241 == 2020)
      {
        v71 = *(a6 + 80);
        v73 = *(v71 + 8);
        v72 = *(v71 + 16);
        v11 = a5;
        if (v72 < v73 >> 7)
        {
          goto LABEL_220;
        }

        v229 = 0;
        v74 = ((506832829 * *v52) >> 17) & 0x7FFE;
        v75 = *(a5 + 120);
        v76 = 1;
        v77 = v31;
        v241 = 2020;
        v78 = v32;
        do
        {
          v79 = v76;
          *(v71 + 8) = ++v73;
          v80 = *(v75 + v74);
          if (!*(v75 + v74) || v24 < v80)
          {
            goto LABEL_91;
          }

          v82 = *(a5 + 88);
          v83 = *(v82 + 4 * v80 + 32);
          v84 = *(v82 + 168) + *(*(a5 + 112) + 2 * v74) * *(v75 + v74);
          v85 = (v84 + v83);
          if (v80 < 8)
          {
            v81 = 0;
LABEL_106:
            v91 = v80 & 7;
            if ((v80 & 7) != 0)
            {
              v92 = v81 | v91;
              while (*(v52 + v81) == *v85)
              {
                ++v85;
                ++v81;
                if (!--v91)
                {
                  v81 = v92;
                  break;
                }
              }
            }
          }

          else
          {
            v86 = 0;
            v87 = (v84 + (v80 & 0xF8) + v83);
            while (1)
            {
              v88 = *&v85[v86];
              v89 = *&v52[v86 / 4];
              if (v88 != v89)
              {
                break;
              }

              v86 += 8;
              if ((v80 & 0xF8) == v86)
              {
                v85 = v87;
                v81 = v80 & 0xF8;
                goto LABEL_106;
              }
            }

            v81 = v86 + (__clz(__rbit64(v89 ^ v88)) >> 3);
          }

          if (v81 && v81 + *(a5 + 100) > v80 && (result = v237 + 1 + *(*(a5 + 112) + 2 * v74) + ((((*(a5 + 104) >> (6 * (v80 - v81))) & 0x3FLL) + 4 * (v80 - v81)) << *(v82 + v80)), result <= v236) && (v90 = 135 * v81 - 30 * (__clz(result) ^ 0x1F) + 1920, v90 >= v241))
          {
            v229 = v80 - v81;
            *(v71 + 16) = ++v72;
            v241 = v90;
          }

          else
          {
LABEL_91:
            result = v78;
            v81 = v77;
          }

          v76 = 0;
          ++v74;
          v77 = v81;
          v78 = result;
        }

        while ((v79 & 1) != 0);
      }

      else
      {
        v229 = 0;
        v11 = a5;
        v81 = v31;
        result = v32;
      }

      v228 = result;
      if (v241 < 0x7E5)
      {
LABEL_220:
        v13 = v240 + 1;
        v168 = v12 + 1;
        v22 = v242;
        if (v12 + 1 > v242)
        {
          if (v168 <= v242 + v219)
          {
            v191 = v12 + 9;
            if (v12 + 9 >= v218)
            {
              v191 = v218;
            }

            if (v168 < v191)
            {
              v192 = *(a6 + 64);
              v193 = *(a6 + 68);
              v194 = *(a6 + 72);
              result = v233;
              do
              {
                v195 = (506832829 * *(a3 + (v168 & a4))) >> v192;
                v196 = *(v239 + 2 * v195);
                *(v233 + 4 * (v193 & v196) + 4 * (v195 << v194)) = v168;
                *(v239 + 2 * v195) = v196 + 1;
                v13 += 2;
                v168 += 2;
              }

              while (v168 < v191);
            }
          }

          else
          {
            v169 = v12 + 17;
            if (v12 + 17 >= v217)
            {
              v169 = v217;
            }

            if (v168 < v169)
            {
              v170 = *(a6 + 64);
              v171 = *(a6 + 68);
              v172 = *(a6 + 72);
              result = v233;
              do
              {
                v173 = (506832829 * *(a3 + (v168 & a4))) >> v170;
                v174 = *(v239 + 2 * v173);
                *(v233 + 4 * (v171 & v174) + 4 * (v173 << v172)) = v168;
                *(v239 + 2 * v173) = v174 + 1;
                v13 += 4;
                v168 += 4;
              }

              while (v168 < v169);
            }
          }
        }

        goto LABEL_293;
      }

      v93 = 0;
      v94 = *(a6 + 76);
      v225 = *(a6 + 64);
      v226 = *(a6 + 72);
      v95 = *(a6 + 68);
      while (1)
      {
        v238 = v93;
        --v24;
        v224 = v81;
        v96 = v81 - 1;
        if (v81 - 1 >= v24)
        {
          v96 = v24;
        }

        if (*(v11 + 4) >= 5)
        {
          v97 = 0;
        }

        else
        {
          v97 = v96;
        }

        v98 = v12 + 1;
        if (v12 + 1 < v231)
        {
          v99 = v12 + 1;
        }

        else
        {
          v99 = v231;
        }

        v100 = v98 + v232;
        if (v98 + v232 >= v231)
        {
          v100 = v231;
        }

        v235 = v100;
        v101 = v98 & a4;
        if (v94)
        {
          v102 = 0;
          v103 = 0;
          v104 = 0;
          v105 = 2020;
          v106 = 2020;
          do
          {
            v107 = a7[v102];
            v108 = v98 - v107;
            v109 = v99 < v107 || v108 >= v98;
            v110 = v108 & a4;
            v111 = v97 + v101;
            v112 = v109 || v111 > a4;
            v113 = v110 + v97;
            v114 = v112 || v113 > a4;
            if (!v114 && *(a3 + v111) == *(a3 + v113))
            {
              v115 = a3 + v110;
              if (v24 < 8)
              {
                v122 = 0;
                v119 = (a3 + v101);
LABEL_157:
                if ((v24 & 7) != 0)
                {
                  v124 = v24 & 7;
                  do
                  {
                    if (*(v115 + v122) != *v119)
                    {
                      break;
                    }

                    v119 = (v119 + 1);
                    ++v122;
                    --v124;
                  }

                  while (v124);
                }
              }

              else
              {
                v116 = 0;
                v117 = (a3 + v110);
                v118 = v24 >> 3;
                v119 = (a3 + v101);
                while (1)
                {
                  v121 = *v117++;
                  v120 = v121;
                  if (*v119 != v121)
                  {
                    break;
                  }

                  ++v119;
                  v116 -= 8;
                  if (!--v118)
                  {
                    v122 = -v116;
                    goto LABEL_157;
                  }
                }

                v122 = (__clz(__rbit64(v120 ^ *v119)) >> 3) - v116;
              }

              if (v122 > 2 || v102 <= 1 && v122 == 2)
              {
                v123 = 135 * v122 + 1935;
                if (v105 < v123)
                {
                  if (v102)
                  {
                    v123 -= ((0x1CA10u >> (v102 & 0xE)) & 0xE) + 39;
                  }

                  if (v105 < v123)
                  {
                    v104 = v122;
                    v103 = a7[v102];
                    v106 = v123;
                    v97 = v122;
                    v105 = v123;
                  }
                }
              }
            }

            ++v102;
          }

          while (v102 != v94);
        }

        else
        {
          v104 = 0;
          v103 = 0;
          v106 = 2020;
          v105 = 2020;
        }

        v125 = (a3 + v101);
        v126 = (506832829 * *(a3 + v101)) >> v225;
        v127 = v233 + 4 * (v126 << v226);
        v128 = *(v239 + 2 * v126);
        if (v128 >= v230)
        {
          v129 = v128 - v230;
        }

        else
        {
          v129 = 0;
        }

        if (v129 < v128)
        {
          v130 = *(v239 + 2 * v126);
          do
          {
            v131 = *(v127 + 4 * (--v130 & v95));
            v132 = v98 - v131;
            if (v98 - v131 > v99)
            {
              break;
            }

            if (v97 + v101 <= a4)
            {
              v133 = v131 & a4;
              if (v133 + v97 <= a4 && *(a3 + v97 + v101) == *(a3 + v133 + v97))
              {
                v134 = a3 + v133;
                if (v24 < 8)
                {
                  v141 = 0;
                  v138 = (a3 + v101);
LABEL_185:
                  v143 = v24 & 7;
                  if ((v24 & 7) != 0)
                  {
                    do
                    {
                      if (*(v134 + v141) != *v138)
                      {
                        break;
                      }

                      v138 = (v138 + 1);
                      ++v141;
                      --v143;
                    }

                    while (v143);
                  }
                }

                else
                {
                  v135 = 0;
                  v136 = (a3 + v133);
                  v137 = v24 >> 3;
                  v138 = (a3 + v101);
                  while (1)
                  {
                    v140 = *v136++;
                    v139 = v140;
                    if (*v138 != v140)
                    {
                      break;
                    }

                    ++v138;
                    v135 -= 8;
                    if (!--v137)
                    {
                      v141 = -v135;
                      goto LABEL_185;
                    }
                  }

                  v141 = (__clz(__rbit64(v139 ^ *v138)) >> 3) - v135;
                }

                if (v141 < 4)
                {
                  v11 = a5;
                }

                else
                {
                  v142 = __clz(v132) ^ 0x1F;
                  v11 = a5;
                  if (v105 < 135 * v141 - 30 * v142 + 1920)
                  {
                    v104 = v141;
                    v103 = v132;
                    v106 = 135 * v141 - 30 * v142 + 1920;
                    v97 = v141;
                    v105 = v106;
                  }
                }
              }
            }
          }

          while (v130 > v129);
        }

        *(v127 + 4 * (v95 & v128)) = v98;
        *(v239 + 2 * v126) = v128 + 1;
        if (v106 == 2020)
        {
          v144 = *(a6 + 80);
          v146 = *(v144 + 8);
          v145 = *(v144 + 16);
          if (v145 >= v146 >> 7)
          {
            v147 = 0;
            v149 = ((506832829 * *v125) >> 17) & 0x7FFE;
            v150 = *(v11 + 120);
            v151 = 1;
            v106 = 2020;
            v152 = v103;
            v153 = v104;
            do
            {
              v154 = v151;
              *(v144 + 8) = ++v146;
              v155 = *(v150 + v149);
              if (!*(v150 + v149) || v24 < v155)
              {
                goto LABEL_200;
              }

              v156 = *(*(v11 + 112) + 2 * v149);
              v157 = *(v11 + 88);
              v158 = *(v157 + 4 * v155 + 32);
              v159 = *(v157 + 168) + v156 * *(v150 + v149);
              v160 = (v159 + v158);
              if (v155 < 8)
              {
                v104 = 0;
LABEL_215:
                v166 = v155 & 7;
                if ((v155 & 7) != 0)
                {
                  v167 = v104 | v166;
                  while (*(v125 + v104) == *v160)
                  {
                    ++v160;
                    ++v104;
                    if (!--v166)
                    {
                      v104 = v167;
                      break;
                    }
                  }
                }
              }

              else
              {
                v161 = 0;
                v104 = v155 & 0xF8;
                v162 = (v159 + v104 + v158);
                while (1)
                {
                  v163 = *&v160[v161];
                  v164 = *&v125[v161 / 4];
                  if (v163 != v164)
                  {
                    break;
                  }

                  v161 += 8;
                  if (v104 == v161)
                  {
                    v160 = v162;
                    goto LABEL_215;
                  }
                }

                v104 = v161 + (__clz(__rbit64(v164 ^ v163)) >> 3);
              }

              v11 = a5;
              if (v104 && v104 + *(a5 + 100) > v155 && (v103 = v235 + 1 + v156 + ((((*(a5 + 104) >> (6 * (v155 - v104))) & 0x3FLL) + 4 * (v155 - v104)) << *(v157 + v155)), v103 <= v236) && (v165 = 135 * v104 - 30 * (__clz(v103) ^ 0x1F) + 1920, v165 >= v106))
              {
                v147 = v155 - v104;
                *(v144 + 16) = ++v145;
                v106 = v165;
              }

              else
              {
LABEL_200:
                v104 = v153;
                v103 = v152;
              }

              v151 = 0;
              ++v149;
              v152 = v103;
              v153 = v104;
            }

            while ((v154 & 1) != 0);
          }

          else
          {
            v147 = 0;
            v106 = 2020;
          }
        }

        else
        {
          v147 = 0;
        }

        if (v106 < v241 + 175)
        {
          break;
        }

        ++v240;
        v14 = v223;
        if (v238 <= 2)
        {
          v148 = v12 + 5;
          v93 = v238 + 1;
          v228 = v103;
          v241 = v106;
          v229 = v147;
          v81 = v104;
          ++v12;
          if (v148 < v223)
          {
            continue;
          }
        }

        goto LABEL_231;
      }

      v175 = v12 + v232;
      if (v12 + v232 >= v231)
      {
        v175 = v231;
      }

      v235 = v175;
      v103 = v228;
      v147 = v229;
      v14 = v223;
      v104 = v224;
      v98 = v12;
LABEL_231:
      result = v233;
      v23 = v239;
      if (v103 > v235)
      {
        goto LABEL_232;
      }

      v181 = *a7;
      if (v103 != v181)
      {
        break;
      }

      v176 = 0;
LABEL_240:
      *v222 = v240;
      *(v222 + 4) = v104 | (v147 << 25);
      v182 = *(v11 + 68);
      v183 = v182 + 16;
      if (v182 + 16 <= v176)
      {
        v185 = *(v11 + 64);
        v186 = v176 - v182 + (4 << v185) - 16;
        v187 = (__clz(v186) ^ 0x1F) - 1;
        v188 = ((v186 >> v187) & 1 | 2) << v187;
        v176 = ((v186 & ~(-1 << v185)) + v183 + ((((v186 >> v187) & 1 | (2 * (v187 - v185))) + 65534) << v185)) | ((v187 - v185) << 10);
        v184 = (v186 - v188) >> v185;
      }

      else
      {
        LODWORD(v184) = 0;
      }

      *(v222 + 14) = v176;
      *(v222 + 8) = v184;
      if (v240 > 5)
      {
        if (v240 > 0x81)
        {
          if (v240 > 0x841)
          {
            if (v240 >> 1 >= 0xC21)
            {
              if (v240 < 0x5842)
              {
                LOWORD(v189) = 22;
              }

              else
              {
                LOWORD(v189) = 23;
              }
            }

            else
            {
              LOWORD(v189) = 21;
            }
          }

          else
          {
            v189 = (__clz(v240 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v190 = (__clz(v240 - 2) ^ 0x1F) - 1;
          v189 = ((v240 - 2) >> v190) + 2 * v190 + 2;
        }
      }

      else
      {
        LOWORD(v189) = v240;
      }

      v202 = v147 + v104;
      if ((v147 + v104) > 9)
      {
        if (v202 > 0x85)
        {
          if (v202 > 0x845)
          {
            LOWORD(v202) = 23;
          }

          else
          {
            v202 = (__clz(v202 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v203 = v202 - 6;
          v204 = (__clz(v203) ^ 0x1F) - 1;
          v202 = (v203 >> v204) + 2 * v204 + 4;
        }
      }

      else
      {
        LOWORD(v202) = v202 - 2;
      }

      v205 = v202 & 7 | (8 * (v189 & 7));
      if ((v176 & 0x3FF) != 0 || v189 > 7u || v202 > 0xFu)
      {
        v207 = 3 * (v189 >> 3) + ((v202 & 0xFFF8) >> 3);
        v206 = ((((0x520D40u >> (2 * v207)) & 0xC0) + (v207 << 6)) | v205) + 64;
      }

      else
      {
        LOWORD(v206) = v205 | 0x40;
        if ((v202 & 0xFFF8) == 0)
        {
          LOWORD(v206) = v202 & 7 | (8 * (v189 & 7));
        }
      }

      *(v222 + 12) = v206;
      v208 = v220;
      *a11 += v240;
      v209 = v98 + 2;
      v168 = v98 + v104;
      if (v98 + v104 < v220)
      {
        v208 = v98 + v104;
      }

      if (v103 < v104 >> 2)
      {
        v210 = v168 - 4 * v103;
        if (v209 > v210)
        {
          v210 = v98 + 2;
        }

        if (v208 >= v210)
        {
          v209 = v210;
        }

        else
        {
          v209 = v208;
        }
      }

      v22 = v221 + 2 * v104 + v98;
      v222 += 16;
      if (v209 < v208)
      {
        v211 = *(a6 + 64);
        v212 = *(a6 + 68);
        v213 = *(a6 + 72);
        do
        {
          v214 = (506832829 * *(a3 + (v209 & a4))) >> v211;
          v215 = *(v239 + 2 * v214);
          *(v233 + 4 * (v212 & v215) + 4 * (v214 << v213)) = v209;
          *(v239 + 2 * v214) = v215 + 1;
          ++v209;
        }

        while (v208 != v209);
      }

      v13 = 0;
LABEL_293:
      v12 = v168;
      if (v168 + 4 >= v14)
      {
        goto LABEL_300;
      }
    }

    v197 = a7[1];
    if (v103 == v197)
    {
      v176 = 1;
      goto LABEL_233;
    }

    v198 = v103 + 3 - v181;
    if (v198 > 6)
    {
      v201 = v103 + 3 - v197;
      if (v201 > 6)
      {
        if (v103 == a7[2])
        {
          v176 = 2;
        }

        else if (v103 == a7[3])
        {
          v176 = 3;
        }

        else
        {
LABEL_232:
          v176 = v103 + 15;
        }

LABEL_233:
        if (v103 <= v235)
        {
          if (v176)
          {
            a7[3] = a7[2];
            v177 = *a7;
            *(a7 + 1) = *a7;
            *a7 = v103;
            v178 = *(a6 + 76);
            if (v178 >= 5)
            {
              v179 = vdupq_n_s32(v103);
              *(a7 + 1) = vaddq_s32(v179, xmmword_1003E32C0);
              *(a7 + 4) = vadd_s32(*v179.i8, 0x3FFFFFFFDLL);
              if (v178 >= 0xB)
              {
                v180 = vdupq_lane_s32(v177, 0);
                *(a7 + 10) = vaddq_s32(v180, xmmword_1003E32C0);
                *(a7 + 7) = vadd_s32(*v180.i8, 0x3FFFFFFFDLL);
              }
            }
          }
        }

        goto LABEL_240;
      }

      v199 = 4 * v201;
      v200 = 266017486;
    }

    else
    {
      v199 = 4 * v198;
      v200 = 158663784;
    }

    v176 = (v200 >> v199) & 0xF;
    goto LABEL_233;
  }

  v222 = a9;
  v168 = a2;
LABEL_300:
  *a8 = v13 + v14 - v168;
  *a10 += (v222 - a9) >> 4;
  return result;
}

unint64_t sub_10015311C(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, _DWORD *a9, void *a10, void *a11)
{
  v11 = a5;
  v237 = *(a5 + 16);
  v12 = *a8;
  v13 = a2 + result;
  v224 = a2 + result - 7;
  if (result <= 7)
  {
    v14 = a2;
  }

  else
  {
    v14 = a2 + result - 7;
  }

  v15 = *(a5 + 8);
  v16 = 512;
  if (*(a5 + 4) < 9)
  {
    v16 = 64;
  }

  v225 = v14;
  v226 = v16;
  v17 = *(a6 + 88);
  if (v17 >= 5)
  {
    v18 = vld1q_dup_f32(a7);
    *(a7 + 1) = vaddq_s32(v18, xmmword_1003E32C0);
    *(a7 + 4) = vadd_s32(*v18.i8, 0x3FFFFFFFDLL);
    if (v17 >= 0xB)
    {
      v19 = (a7 + 1);
      v20 = vld1q_dup_f32(v19);
      *(a7 + 10) = vaddq_s32(v20, xmmword_1003E32C0);
      *(a7 + 7) = vadd_s32(*v20.i8, 0x3FFFFFFFDLL);
    }
  }

  if (a2 + 8 < v13)
  {
    v21 = 1 << v15;
    v22 = v16 + a2;
    v236 = v21 - 16;
    v23 = *(a6 + 104);
    v223 = 4 * v16;
    v227 = a9;
    v228 = a2 + result;
    v244 = v23;
    v238 = *(a6 + 72);
    v239 = *(a6 + 112);
    while (1)
    {
      v248 = v22;
      v245 = v12;
      v24 = v13 - a2;
      if (a2 >= v236)
      {
        v25 = v236;
      }

      else
      {
        v25 = a2;
      }

      if (a2 + v237 >= v236)
      {
        v26 = v236;
      }

      else
      {
        v26 = a2 + v237;
      }

      v27 = a2 & a4;
      v28 = *(a6 + 88);
      result = v24 >> 3;
      v242 = v26;
      if (v28)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 2020;
        v246 = 2020;
        do
        {
          v34 = a7[v30];
          v35 = a2 - v34;
          v36 = v25 < v34 || v35 >= a2;
          v37 = v35 & a4;
          v38 = v29 + v27;
          v39 = v36 || v38 > a4;
          v40 = v37 + v29;
          v41 = v39 || v40 > a4;
          if (!v41 && *(a3 + v38) == *(a3 + v40))
          {
            v42 = a3 + v37;
            if (v24 < 8)
            {
              v47 = 0;
              v48 = (a3 + v27);
LABEL_53:
              if ((v24 & 7) != 0)
              {
                v51 = v24 & 7 | v47;
                v52 = v24 & 7;
                while (*(v42 + v47) == *v48)
                {
                  ++v48;
                  ++v47;
                  if (!--v52)
                  {
                    v47 = v51;
                    break;
                  }
                }

                v11 = a5;
              }
            }

            else
            {
              v43 = 0;
              v44 = v24 >> 3;
              while (1)
              {
                v45 = *(a3 + v27 + v43);
                v46 = *(v42 + v43);
                if (v45 != v46)
                {
                  break;
                }

                v43 += 8;
                if (!--v44)
                {
                  v47 = v24 & 0xFFFFFFFFFFFFFFF8;
                  v48 = (a3 + v27 + (v24 & 0xFFFFFFFFFFFFFFF8));
                  goto LABEL_53;
                }
              }

              v47 = v43 + (__clz(__rbit64(v46 ^ v45)) >> 3);
            }

            if (v47 > 2 || v30 <= 1 && v47 == 2)
            {
              v49 = 135 * v47 + 1935;
              if (v33 < v49)
              {
                if (v30)
                {
                  v49 -= ((0x1CA10u >> (v30 & 0xE)) & 0xE) + 39;
                }

                if (v33 < v49)
                {
                  v32 = a7[v30];
                }

                v50 = v246;
                if (v33 < v49)
                {
                  v50 = v49;
                }

                v246 = v50;
                if (v33 < v49)
                {
                  v31 = v47;
                  v29 = v47;
                  v33 = v49;
                }
              }
            }
          }

          ++v30;
        }

        while (v30 != v28);
      }

      else
      {
        v32 = 0;
        v31 = 0;
        v29 = 0;
        v246 = 2020;
        v33 = 2020;
      }

      v241 = *(v11 + 80);
      v53 = (a3 + v27);
      v54 = (0x1FE35A7BD3579BD3 * (*(a3 + v27) & v238)) >> *(a6 + 64);
      v55 = *(a6 + 80);
      v56 = v239 + 4 * (v54 << *(a6 + 84));
      v57 = *(v23 + 2 * v54);
      v235 = *(a6 + 56);
      if (v57 >= v235)
      {
        v58 = v57 - v235;
      }

      else
      {
        v58 = 0;
      }

      if (v58 < v57)
      {
        v59 = *(v23 + 2 * v54);
        do
        {
          v60 = *(v56 + 4 * (--v59 & v55));
          v61 = a2 - v60;
          if (a2 - v60 > v25)
          {
            break;
          }

          if (v29 + v27 <= a4)
          {
            v62 = v60 & a4;
            if (v62 + v29 <= a4 && *(a3 + v29 + v27) == *(a3 + v62 + v29))
            {
              v63 = a3 + v62;
              if (v24 < 8)
              {
                v68 = 0;
                v69 = (a3 + v27);
LABEL_81:
                if ((v24 & 7) != 0)
                {
                  v71 = v24 & 7 | v68;
                  v72 = v24 & 7;
                  while (*(v63 + v68) == *v69)
                  {
                    ++v69;
                    ++v68;
                    if (!--v72)
                    {
                      v68 = v71;
                      break;
                    }
                  }

                  v13 = v228;
                }
              }

              else
              {
                v64 = 0;
                v65 = v24 >> 3;
                while (1)
                {
                  v66 = *&v53[v64];
                  v67 = *(v63 + v64 * 4);
                  if (v66 != v67)
                  {
                    break;
                  }

                  v64 += 2;
                  if (!--v65)
                  {
                    v68 = v24 & 0xFFFFFFFFFFFFFFF8;
                    v69 = v53 + (v24 & 0xFFFFFFFFFFFFFFF8);
                    goto LABEL_81;
                  }
                }

                v68 = v64 * 4 + (__clz(__rbit64(v67 ^ v66)) >> 3);
              }

              if (v68 >= 4)
              {
                v70 = __clz(v61) ^ 0x1F;
                if (v33 < 135 * v68 - 30 * v70 + 1920)
                {
                  v32 = v61;
                  v246 = 135 * v68 - 30 * v70 + 1920;
                  v31 = v68;
                  v29 = v68;
                  v33 = v246;
                }
              }
            }
          }
        }

        while (v59 > v58);
      }

      *(v56 + 4 * (v55 & v57)) = a2;
      v23 = v244;
      *(v244 + 2 * v54) = v57 + 1;
      if (v246 == 2020)
      {
        v73 = *(a6 + 96);
        result = *(v73 + 8);
        v74 = *(v73 + 16);
        v11 = a5;
        if (v74 < result >> 7)
        {
          goto LABEL_222;
        }

        v234 = 0;
        v75 = ((506832829 * *v53) >> 17) & 0x7FFE;
        v76 = *(a5 + 120);
        v77 = 1;
        v78 = v31;
        v246 = 2020;
        v79 = v32;
        do
        {
          v80 = v77;
          *(v73 + 8) = ++result;
          v81 = *(v76 + v75);
          if (!*(v76 + v75) || v24 < v81)
          {
            goto LABEL_92;
          }

          v84 = *(a5 + 88);
          v85 = *(v84 + 4 * v81 + 32);
          v86 = *(v84 + 168) + *(*(a5 + 112) + 2 * v75) * *(v76 + v75);
          v87 = (v86 + v85);
          if (v81 < 8)
          {
            v83 = 0;
LABEL_107:
            v93 = v81 & 7;
            if ((v81 & 7) != 0)
            {
              v94 = v83 | v93;
              while (*(v53 + v83) == *v87)
              {
                ++v87;
                ++v83;
                if (!--v93)
                {
                  v83 = v94;
                  break;
                }
              }
            }
          }

          else
          {
            v88 = 0;
            v89 = (v86 + (v81 & 0xF8) + v85);
            while (1)
            {
              v90 = *&v87[v88];
              v91 = *&v53[v88 / 4];
              if (v90 != v91)
              {
                break;
              }

              v88 += 8;
              if ((v81 & 0xF8) == v88)
              {
                v87 = v89;
                v83 = v81 & 0xF8;
                goto LABEL_107;
              }
            }

            v83 = v88 + (__clz(__rbit64(v91 ^ v90)) >> 3);
          }

          if (v83 && v83 + *(a5 + 100) > v81 && (v82 = v242 + 1 + *(*(a5 + 112) + 2 * v75) + ((((*(a5 + 104) >> (6 * (v81 - v83))) & 0x3FLL) + 4 * (v81 - v83)) << *(v84 + v81)), v82 <= v241) && (v92 = 135 * v83 - 30 * (__clz(v82) ^ 0x1F) + 1920, v92 >= v246))
          {
            v234 = v81 - v83;
            *(v73 + 16) = ++v74;
            v246 = v92;
          }

          else
          {
LABEL_92:
            v82 = v79;
            v83 = v78;
          }

          v77 = 0;
          ++v75;
          v78 = v83;
          v79 = v82;
        }

        while ((v80 & 1) != 0);
      }

      else
      {
        v234 = 0;
        v11 = a5;
        v83 = v31;
        v82 = v32;
      }

      v233 = v82;
      if (v246 < 0x7E5)
      {
LABEL_222:
        v12 = v245 + 1;
        v174 = a2 + 1;
        v22 = v248;
        if (a2 + 1 > v248)
        {
          result = v239;
          if (v174 <= v248 + v223)
          {
            v198 = a2 + 9;
            if (a2 + 9 >= v224)
            {
              v198 = v224;
            }

            if (v174 < v198)
            {
              v199 = *(a6 + 64);
              v200 = *(a6 + 80);
              v201 = *(a6 + 84);
              do
              {
                v202 = (0x1FE35A7BD3579BD3 * (*(a3 + (v174 & a4)) & v238)) >> v199;
                v203 = *(v244 + 2 * v202);
                *(v244 + 2 * v202) = v203 + 1;
                *(v239 + 4 * (v200 & v203) + 4 * (v202 << v201)) = v174;
                v12 += 2;
                v174 += 2;
              }

              while (v174 < v198);
            }
          }

          else
          {
            v175 = a2 + 17;
            if (a2 + 17 >= v224)
            {
              v175 = v224;
            }

            if (v174 < v175)
            {
              v176 = *(a6 + 64);
              v177 = *(a6 + 80);
              v178 = *(a6 + 84);
              do
              {
                v179 = (0x1FE35A7BD3579BD3 * (*(a3 + (v174 & a4)) & v238)) >> v176;
                v180 = *(v244 + 2 * v179);
                *(v244 + 2 * v179) = v180 + 1;
                *(v239 + 4 * (v177 & v180) + 4 * (v179 << v178)) = v174;
                v12 += 4;
                v174 += 4;
              }

              while (v174 < v175);
            }
          }
        }

        goto LABEL_297;
      }

      v95 = 0;
      v231 = *(a6 + 64);
      v96 = *(a6 + 88);
      v230 = *(a6 + 84);
      v97 = *(a6 + 80);
      v98 = a3;
      while (1)
      {
        v243 = v95;
        --v24;
        v229 = v83;
        v99 = v83 - 1;
        if (v83 - 1 >= v24)
        {
          v99 = v24;
        }

        if (*(v11 + 4) >= 5)
        {
          v100 = 0;
        }

        else
        {
          v100 = v99;
        }

        v101 = a2 + 1;
        if (a2 + 1 < v236)
        {
          v102 = a2 + 1;
        }

        else
        {
          v102 = v236;
        }

        v103 = v101 + v237;
        if (v101 + v237 >= v236)
        {
          v103 = v236;
        }

        v240 = v103;
        v104 = v101 & a4;
        if (v96)
        {
          v105 = 0;
          v106 = 0;
          v107 = 0;
          v108 = 2020;
          v109 = 2020;
          do
          {
            v110 = a7[v105];
            v111 = v101 - v110;
            v112 = v102 < v110 || v111 >= v101;
            v113 = v111 & a4;
            v114 = v100 + v104;
            v115 = v112 || v114 > a4;
            v116 = v113 + v100;
            v117 = v115 || v116 > a4;
            if (!v117 && *(v98 + v114) == *(v98 + v116))
            {
              v118 = v98 + v113;
              if (v24 < 8)
              {
                v125 = 0;
                v122 = (v98 + v104);
LABEL_158:
                if ((v24 & 7) != 0)
                {
                  v127 = v24 & 7;
                  do
                  {
                    if (*(v118 + v125) != *v122)
                    {
                      break;
                    }

                    v122 = (v122 + 1);
                    ++v125;
                    --v127;
                  }

                  while (v127);
                }
              }

              else
              {
                v119 = 0;
                v120 = (v98 + v113);
                v121 = v24 >> 3;
                v122 = (v98 + v104);
                while (1)
                {
                  v124 = *v120++;
                  v123 = v124;
                  if (*v122 != v124)
                  {
                    break;
                  }

                  ++v122;
                  v119 -= 8;
                  if (!--v121)
                  {
                    v125 = -v119;
                    goto LABEL_158;
                  }
                }

                v125 = (__clz(__rbit64(v123 ^ *v122)) >> 3) - v119;
              }

              if (v125 > 2 || v105 <= 1 && v125 == 2)
              {
                v126 = 135 * v125 + 1935;
                if (v108 < v126)
                {
                  if (v105)
                  {
                    v126 -= ((0x1CA10u >> (v105 & 0xE)) & 0xE) + 39;
                  }

                  if (v108 < v126)
                  {
                    v107 = v125;
                    v106 = a7[v105];
                    v109 = v126;
                    v100 = v125;
                    v108 = v126;
                  }
                }
              }

              v11 = a5;
            }

            ++v105;
          }

          while (v105 != v96);
        }

        else
        {
          v107 = 0;
          v106 = 0;
          v109 = 2020;
          v108 = 2020;
        }

        v128 = (v98 + v104);
        v129 = (0x1FE35A7BD3579BD3 * (*(v98 + v104) & v238)) >> v231;
        v130 = v239 + 4 * (v129 << v230);
        v131 = *(v244 + 2 * v129);
        if (v131 >= v235)
        {
          v132 = v131 - v235;
        }

        else
        {
          v132 = 0;
        }

        if (v132 < v131)
        {
          v133 = v24 & 7;
          v134 = *(v244 + 2 * v129);
          do
          {
            v135 = *(v130 + 4 * (--v134 & v97));
            v136 = v101 - v135;
            if (v101 - v135 > v102)
            {
              break;
            }

            if (v100 + v104 <= a4)
            {
              v137 = v135 & a4;
              if (v137 + v100 <= a4 && *(v98 + v100 + v104) == *(v98 + v137 + v100))
              {
                v138 = (v98 + v137);
                if (v24 < 8)
                {
                  v147 = 0;
                  v144 = v128;
LABEL_186:
                  if (v133)
                  {
                    v149 = v133;
                    do
                    {
                      if (*(v138 + v147) != *v144)
                      {
                        break;
                      }

                      v144 = (v144 + 1);
                      ++v147;
                      --v149;
                    }

                    while (v149);
                  }
                }

                else
                {
                  v139 = v109;
                  v140 = v133;
                  v141 = 0;
                  v142 = v138;
                  v143 = v24 >> 3;
                  v144 = v128;
                  while (1)
                  {
                    v146 = *v142++;
                    v145 = v146;
                    if (*v144 != v146)
                    {
                      break;
                    }

                    ++v144;
                    v141 -= 8;
                    if (!--v143)
                    {
                      v147 = -v141;
                      v133 = v140;
                      v109 = v139;
                      v98 = a3;
                      goto LABEL_186;
                    }
                  }

                  v147 = (__clz(__rbit64(v145 ^ *v144)) >> 3) - v141;
                  v133 = v140;
                  v109 = v139;
                  v98 = a3;
                }

                if (v147 < 4)
                {
                  v11 = a5;
                }

                else
                {
                  v148 = __clz(v136) ^ 0x1F;
                  v11 = a5;
                  if (v108 < 135 * v147 - 30 * v148 + 1920)
                  {
                    v107 = v147;
                    v106 = v136;
                    v109 = 135 * v147 - 30 * v148 + 1920;
                    v100 = v147;
                    v108 = v109;
                  }
                }
              }
            }
          }

          while (v134 > v132);
        }

        *(v130 + 4 * (v97 & v131)) = v101;
        *(v244 + 2 * v129) = v131 + 1;
        if (v109 == 2020)
        {
          v150 = *(a6 + 96);
          v151 = *(v150 + 8);
          v152 = *(v150 + 16);
          if (v152 >= v151 >> 7)
          {
            v153 = 0;
            v155 = ((506832829 * *v128) >> 17) & 0x7FFE;
            v156 = *(v11 + 120);
            v157 = 1;
            v109 = 2020;
            v158 = v106;
            v159 = v107;
            do
            {
              v160 = v157;
              *(v150 + 8) = ++v151;
              v161 = *(v156 + v155);
              if (!*(v156 + v155) || v24 < v161)
              {
                goto LABEL_202;
              }

              v162 = *(*(v11 + 112) + 2 * v155);
              v163 = *(v11 + 88);
              v164 = *(v163 + 4 * v161 + 32);
              v165 = *(v163 + 168) + v162 * *(v156 + v155);
              v166 = (v165 + v164);
              if (v161 < 8)
              {
                v107 = 0;
LABEL_217:
                v172 = v161 & 7;
                if ((v161 & 7) != 0)
                {
                  v173 = v107 | v172;
                  while (*(v128 + v107) == *v166)
                  {
                    ++v166;
                    ++v107;
                    if (!--v172)
                    {
                      v107 = v173;
                      break;
                    }
                  }
                }
              }

              else
              {
                v167 = 0;
                v107 = v161 & 0xF8;
                v168 = (v165 + v107 + v164);
                while (1)
                {
                  v169 = *&v166[v167];
                  v170 = *&v128[v167 / 4];
                  if (v169 != v170)
                  {
                    break;
                  }

                  v167 += 8;
                  if (v107 == v167)
                  {
                    v166 = v168;
                    goto LABEL_217;
                  }
                }

                v107 = v167 + (__clz(__rbit64(v170 ^ v169)) >> 3);
              }

              v11 = a5;
              if (v107 && v107 + *(a5 + 100) > v161 && (v106 = v240 + 1 + v162 + ((((*(a5 + 104) >> (6 * (v161 - v107))) & 0x3FLL) + 4 * (v161 - v107)) << *(v163 + v161)), v106 <= v241) && (v171 = __clz(v106) ^ 0x1F, 135 * v107 - 30 * v171 + 1920 >= v109))
              {
                v153 = v161 - v107;
                *(v150 + 16) = ++v152;
                v109 = 135 * v107 - 30 * v171 + 1920;
              }

              else
              {
LABEL_202:
                v107 = v159;
                v106 = v158;
              }

              v157 = 0;
              ++v155;
              v158 = v106;
              v159 = v107;
            }

            while ((v160 & 1) != 0);
          }

          else
          {
            v153 = 0;
            v109 = 2020;
          }
        }

        else
        {
          v153 = 0;
        }

        if (v109 < v246 + 175)
        {
          break;
        }

        ++v245;
        v13 = v228;
        if (v243 <= 2)
        {
          v154 = a2 + 9;
          v95 = v243 + 1;
          v233 = v106;
          v246 = v109;
          v234 = v153;
          v83 = v107;
          ++a2;
          if (v154 < v228)
          {
            continue;
          }
        }

        goto LABEL_233;
      }

      v181 = a2 + v237;
      if (a2 + v237 >= v236)
      {
        v181 = v236;
      }

      v240 = v181;
      v106 = v233;
      v153 = v234;
      v13 = v228;
      v107 = v229;
      v101 = a2;
LABEL_233:
      result = v239;
      v182 = v227;
      if (v106 > v240)
      {
        goto LABEL_234;
      }

      v188 = *a7;
      if (v106 != v188)
      {
        break;
      }

      v183 = 0;
LABEL_242:
      *v227 = v245;
      v227[1] = v107 | (v153 << 25);
      v189 = *(v11 + 68);
      v190 = v189 + 16;
      if (v189 + 16 <= v183)
      {
        v192 = *(v11 + 64);
        v193 = v183 - v189 + (4 << v192) - 16;
        v194 = (__clz(v193) ^ 0x1F) - 1;
        v195 = ((v193 >> v194) & 1 | 2) << v194;
        v182 = v227;
        v183 = ((v193 & ~(-1 << v192)) + v190 + ((((v193 >> v194) & 1 | (2 * (v194 - v192))) + 65534) << v192)) | ((v194 - v192) << 10);
        v191 = (v193 - v195) >> v192;
      }

      else
      {
        LODWORD(v191) = 0;
      }

      *(v182 + 7) = v183;
      v182[2] = v191;
      if (v245 > 5)
      {
        if (v245 > 0x81)
        {
          if (v245 > 0x841)
          {
            if (v245 >> 1 >= 0xC21)
            {
              if (v245 < 0x5842)
              {
                LOWORD(v196) = 22;
              }

              else
              {
                LOWORD(v196) = 23;
              }
            }

            else
            {
              LOWORD(v196) = 21;
            }
          }

          else
          {
            v196 = (__clz(v245 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v197 = __clz(v245 - 2);
          v196 = ((v245 - 2) >> ((v197 ^ 0x1F) - 1)) + 2 * ((v197 ^ 0x1F) - 1) + 2;
        }
      }

      else
      {
        LOWORD(v196) = v245;
      }

      v209 = v153 + v107;
      if ((v153 + v107) > 9)
      {
        if (v209 > 0x85)
        {
          if (v209 > 0x845)
          {
            LOWORD(v209) = 23;
          }

          else
          {
            v209 = (__clz(v209 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v210 = v209 - 6;
          v211 = (__clz(v210) ^ 0x1F) - 1;
          v209 = (v210 >> v211) + 2 * v211 + 4;
        }
      }

      else
      {
        LOWORD(v209) = v209 - 2;
      }

      v212 = v209 & 7 | (8 * (v196 & 7));
      if ((v183 & 0x3FF) != 0 || v196 > 7u || v209 > 0xFu)
      {
        v213 = 3 * (v196 >> 3) + ((v209 & 0xFFF8) >> 3);
        v209 = ((((0x520D40u >> (2 * v213)) & 0xC0) + (v213 << 6)) | v212) + 64;
      }

      else if ((v209 & 0xFFF8) != 0)
      {
        LOWORD(v209) = v212 | 0x40;
      }

      else
      {
        LOWORD(v209) = v209 & 7 | (8 * (v196 & 7));
      }

      *(v182 + 6) = v209;
      *a11 += v245;
      v214 = v101 + 2;
      v174 = v101 + v107;
      if (v101 + v107 >= v225)
      {
        v215 = v225;
      }

      else
      {
        v215 = v101 + v107;
      }

      if (v106 < v107 >> 2)
      {
        v216 = v174 - 4 * v106;
        if (v214 > v216)
        {
          v216 = v101 + 2;
        }

        if (v215 >= v216)
        {
          v214 = v216;
        }

        else
        {
          v214 = v215;
        }
      }

      v22 = v226 + 2 * v107 + v101;
      v227 = v182 + 4;
      if (v214 >= v215)
      {
        v12 = 0;
        v23 = v244;
      }

      else
      {
        v217 = *(a6 + 64);
        v218 = *(a6 + 80);
        v219 = *(a6 + 84);
        v23 = v244;
        do
        {
          v220 = (0x1FE35A7BD3579BD3 * (*(a3 + (v214 & a4)) & v238)) >> v217;
          v221 = *(v244 + 2 * v220);
          *(v244 + 2 * v220) = v221 + 1;
          *(v239 + 4 * (v218 & v221) + 4 * (v220 << v219)) = v214++;
        }

        while (v215 != v214);
        v12 = 0;
      }

LABEL_297:
      a2 = v174;
      if (v174 + 8 >= v13)
      {
        goto LABEL_304;
      }
    }

    v204 = a7[1];
    if (v106 == v204)
    {
      v183 = 1;
      goto LABEL_235;
    }

    v205 = v106 + 3 - v188;
    if (v205 > 6)
    {
      v208 = v106 + 3 - v204;
      if (v208 > 6)
      {
        if (v106 == a7[2])
        {
          v183 = 2;
        }

        else if (v106 == a7[3])
        {
          v183 = 3;
        }

        else
        {
LABEL_234:
          v183 = v106 + 15;
        }

LABEL_235:
        if (v106 <= v240)
        {
          if (v183)
          {
            a7[3] = a7[2];
            v184 = *a7;
            *(a7 + 1) = *a7;
            *a7 = v106;
            v185 = *(a6 + 88);
            if (v185 >= 5)
            {
              v186 = vdupq_n_s32(v106);
              *(a7 + 1) = vaddq_s32(v186, xmmword_1003E32C0);
              *(a7 + 4) = vadd_s32(*v186.i8, 0x3FFFFFFFDLL);
              if (v185 >= 0xB)
              {
                v187 = vdupq_lane_s32(v184, 0);
                *(a7 + 10) = vaddq_s32(v187, xmmword_1003E32C0);
                *(a7 + 7) = vadd_s32(*v187.i8, 0x3FFFFFFFDLL);
              }
            }
          }
        }

        goto LABEL_242;
      }

      v206 = 4 * v208;
      v207 = 266017486;
    }

    else
    {
      v206 = 4 * v205;
      v207 = 158663784;
    }

    v183 = (v207 >> v206) & 0xF;
    goto LABEL_235;
  }

  v227 = a9;
  v174 = a2;
LABEL_304:
  *a8 = v12 + v13 - v174;
  *a10 += (v227 - a9) >> 4;
  return result;
}

unint64_t sub_1001542F8(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v12 = a9;
  v13 = *a8;
  v14 = a2 + result;
  v15 = a2 + result - 3;
  v223 = v15;
  if (result <= 3)
  {
    v15 = a2;
  }

  v226 = v15;
  v16 = 64;
  if (*(a5 + 4) >= 9)
  {
    v16 = 512;
  }

  if (a2 + 4 < v14)
  {
    v246 = (1 << *(a5 + 8)) - 16;
    v225 = v16;
    v17 = v16 + a2;
    v231 = a2 + result;
    v232 = *(a5 + 16);
    v224 = 4 * v16;
    v222 = v14 - 4;
    v227 = a9;
    v242 = a6;
    v234 = a5;
    v249 = a3;
    while (1)
    {
      v240 = v17;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = v14 - a2;
      if (a2 >= v246)
      {
        v23 = v246;
      }

      else
      {
        v23 = a2;
      }

      v24 = a2 + v232;
      v243 = *(a5 + 80);
      v245 = v13;
      v25 = a6;
      v26 = *(a6 + 64);
      v27 = v26 + 196608;
      v28 = a2 & a4;
      v29 = (a3 + (a2 & a4));
      v30 = (506832829 * *v29) >> 17;
      result = v22 >> 3;
      v247 = v22 & 7;
      v31 = 2020;
      v32 = 2020;
      v33 = a2;
      do
      {
        v34 = a7[v19];
        v35 = a2 - v34;
        if ((!v19 || *(v27 + (a2 - v34)) == v30) && v23 >= v34 && v35 < a2)
        {
          v37 = a3 + (v35 & a4);
          if (v22 < 8)
          {
            v42 = v32;
            v43 = 0;
            v44 = v29;
LABEL_32:
            v46 = v22 & 7;
            if ((v22 & 7) != 0)
            {
              v47 = v247 | v43;
              while (*(v37 + v43) == *v44)
              {
                ++v44;
                ++v43;
                if (!--v46)
                {
                  v43 = v47;
                  break;
                }
              }

              a2 = v33;
            }

            else
            {
              a2 = v33;
            }

            v32 = v42;
          }

          else
          {
            v38 = 0;
            v39 = v22 >> 3;
            while (1)
            {
              v40 = *&v29[v38];
              v41 = *(v37 + v38);
              if (v40 != v41)
              {
                break;
              }

              v38 += 8;
              if (!--v39)
              {
                v42 = v32;
                v44 = &v29[v22 & 0xFFFFFFFFFFFFFFF8];
                v43 = v22 & 0xFFFFFFFFFFFFFFF8;
                goto LABEL_32;
              }
            }

            v43 = v38 + (__clz(__rbit64(v41 ^ v40)) >> 3);
          }

          if (v43 >= 2)
          {
            v45 = 135 * v43 + 1935;
            if (v31 < v45)
            {
              if (v19)
              {
                v45 -= ((0x1CA10u >> (v19 & 2)) & 4) + 39;
              }

              if (v31 < v45)
              {
                v21 = a7[v19];
                v32 = v45;
                v20 = v43;
                v18 = v43;
                v31 = v45;
              }
            }
          }
        }

        ++v19;
      }

      while (v19 != 4);
      v48 = v246;
      if (v24 < v246)
      {
        v48 = v24;
      }

      v238 = v48;
      v49 = v26 + 0x40000;
      v50 = *(v25 + 56);
      v51 = a2 - *(v26 + 4 * v30);
      v52 = *(v26 + 0x20000 + 2 * v30);
      if (v50)
      {
        v53 = 0;
        v54 = *(v26 + 0x20000 + 2 * v30);
        v55 = a2 - *(v26 + 4 * v30);
        do
        {
          v53 += v55;
          if (v53 > v23)
          {
            break;
          }

          if (v18 + v28 <= a4)
          {
            v56 = (a2 - v53) & a4;
            if (v56 + v18 <= a4 && *(v249 + v18 + v28) == *(v249 + v56 + v18))
            {
              v57 = v249 + v56;
              if (v22 < 8)
              {
                v62 = v32;
                v64 = 0;
                v63 = v29;
LABEL_84:
                v72 = v22 & 7;
                if ((v22 & 7) != 0)
                {
                  v235 = v247 | v64;
                  while (*(v57 + v64) == *v63)
                  {
                    ++v63;
                    ++v64;
                    if (!--v72)
                    {
                      v64 = v235;
                      break;
                    }
                  }
                }
              }

              else
              {
                v58 = 0;
                v59 = v22 >> 3;
                while (1)
                {
                  v60 = *&v29[v58];
                  v61 = *(v57 + v58);
                  if (v60 != v61)
                  {
                    break;
                  }

                  v58 += 8;
                  if (!--v59)
                  {
                    v62 = v32;
                    v63 = &v29[v22 & 0xFFFFFFFFFFFFFFF8];
                    v64 = v22 & 0xFFFFFFFFFFFFFFF8;
                    goto LABEL_84;
                  }
                }

                v62 = v32;
                v64 = v58 + (__clz(__rbit64(v61 ^ v60)) >> 3);
              }

              v65 = 135 * v64 - 30 * (__clz(v53) ^ 0x1F) + 1920;
              if (v31 < v65)
              {
                v66 = v53;
              }

              else
              {
                v66 = v21;
              }

              if (v31 < v65)
              {
                v67 = v65;
              }

              else
              {
                v67 = v62;
              }

              if (v31 < v65)
              {
                v68 = v64;
              }

              else
              {
                v68 = v20;
              }

              if (v31 < v65)
              {
                v69 = v64;
              }

              else
              {
                v69 = v18;
              }

              if (v31 >= v65)
              {
                v65 = v31;
              }

              v70 = v64 >= 4;
              if (v64 < 4)
              {
                v32 = v62;
              }

              else
              {
                v21 = v66;
                v32 = v67;
              }

              if (v70)
              {
                v20 = v68;
              }

              if (v70)
              {
                v18 = v69;
              }

              if (v70)
              {
                v31 = v65;
              }

              a2 = v33;
            }
          }

          v71 = (v49 + 4 * v54);
          v54 = v71[1];
          v55 = *v71;
          --v50;
        }

        while (v50);
      }

      a6 = v242;
      v73 = *(v242 + 48);
      *(v242 + 48) = v73 + 1;
      *(v27 + a2) = v30;
      v74 = -1;
      if (v51 < 0xFFFF)
      {
        v74 = v51;
      }

      v75 = (v49 + 4 * v73);
      *v75 = v74;
      v75[1] = v52;
      *(v26 + 4 * v30) = a2;
      *(v26 + 0x20000 + 2 * v30) = v73;
      v248 = v32;
      if (v32 == 2020)
      {
        v76 = *(v242 + 72);
        v78 = *(v76 + 8);
        v77 = *(v76 + 16);
        a5 = v234;
        a3 = v249;
        if (v77 < v78 >> 7)
        {
          goto LABEL_223;
        }

        v79 = v242;
        v80 = 0;
        v81 = ((506832829 * *v29) >> 17) & 0x7FFE;
        v82 = *(v234 + 120);
        v83 = 1;
        result = v20;
        v248 = 2020;
        v84 = v21;
        do
        {
          v85 = v83;
          *(v76 + 8) = ++v78;
          v86 = *(v82 + v81);
          if (!*(v82 + v81) || v22 < v86)
          {
            goto LABEL_96;
          }

          v87 = *(v234 + 88);
          v88 = *(v87 + 4 * v86 + 32);
          v89 = *(v87 + 168) + *(*(v234 + 112) + 2 * v81) * *(v82 + v81);
          v90 = (v89 + v88);
          if (v86 < 8)
          {
            v20 = 0;
LABEL_111:
            v96 = v86 & 7;
            if ((v86 & 7) != 0)
            {
              v97 = v20 | v96;
              while (v29[v20] == *v90)
              {
                ++v90;
                ++v20;
                if (!--v96)
                {
                  v20 = v97;
                  break;
                }
              }
            }
          }

          else
          {
            v91 = 0;
            v20 = v86 & 0xF8;
            v92 = (v89 + v20 + v88);
            while (1)
            {
              v93 = *&v90[v91];
              v94 = *&v29[v91];
              if (v93 != v94)
              {
                break;
              }

              v91 += 8;
              if (v20 == v91)
              {
                v90 = v92;
                goto LABEL_111;
              }
            }

            v20 = v91 + (__clz(__rbit64(v94 ^ v93)) >> 3);
          }

          if (v20 && v20 + *(v234 + 100) > v86 && (v21 = v238 + 1 + *(*(v234 + 112) + 2 * v81) + ((((*(v234 + 104) >> (6 * (v86 - v20))) & 0x3FLL) + 4 * (v86 - v20)) << *(v87 + v86)), v21 <= v243) && (v95 = 135 * v20 - 30 * (__clz(v21) ^ 0x1F) + 1920, v95 >= v248))
          {
            v80 = v86 - v20;
            *(v76 + 16) = ++v77;
            v248 = v95;
          }

          else
          {
LABEL_96:
            v21 = v84;
            v20 = result;
          }

          v83 = 0;
          ++v81;
          result = v20;
          v84 = v21;
        }

        while ((v85 & 1) != 0);
      }

      else
      {
        v80 = 0;
        v79 = v242;
        a5 = v234;
        a3 = v249;
      }

      a6 = v79;
      if (v248 >= 0x7E5)
      {
        v228 = v80;
        v229 = v21;
        v98 = 0;
        v99 = *(v79 + 48);
        v100 = v33;
        v101 = v20;
        while (1)
        {
          v239 = v99;
          v241 = v100;
          v236 = v98;
          v102 = 0;
          v103 = 0;
          v104 = 0;
          --v22;
          v230 = v101;
          v105 = v101 - 1;
          if (v101 - 1 >= v22)
          {
            v105 = v22;
          }

          v106 = *(a5 + 4) >= 5 ? 0 : v105;
          v107 = v100 + 1;
          v108 = v100 + 1 < v246 ? v100 + 1 : v246;
          v244 = *(a5 + 80);
          v109 = *(a6 + 64);
          v110 = v109 + 196608;
          v111 = v107 & a4;
          v112 = (a3 + (v107 & a4));
          v113 = (506832829 * *v112) >> 17;
          v114 = 2020;
          v115 = 2020;
          do
          {
            v116 = a7[v102];
            v117 = v107 - v116;
            if ((!v102 || *(v110 + (v107 - v116)) == v113) && v108 >= v116 && v117 < v107)
            {
              v119 = a3 + (v117 & a4);
              if (v22 < 8)
              {
                v126 = 0;
                v123 = (a3 + (v107 & a4));
LABEL_149:
                v128 = v22 & 7;
                if ((v22 & 7) != 0)
                {
                  do
                  {
                    if (*(v119 + v126) != *v123)
                    {
                      break;
                    }

                    v123 = (v123 + 1);
                    ++v126;
                    --v128;
                  }

                  while (v128);
                }
              }

              else
              {
                v120 = 0;
                v121 = (a3 + (v117 & a4));
                v122 = v22 >> 3;
                v123 = (a3 + (v107 & a4));
                while (1)
                {
                  v125 = *v121++;
                  v124 = v125;
                  if (*v123 != v125)
                  {
                    break;
                  }

                  ++v123;
                  v120 -= 8;
                  if (!--v122)
                  {
                    v126 = -v120;
                    goto LABEL_149;
                  }
                }

                v126 = (__clz(__rbit64(v124 ^ *v123)) >> 3) - v120;
              }

              if (v126 >= 2)
              {
                v127 = 135 * v126 + 1935;
                if (v114 < v127)
                {
                  if (v102)
                  {
                    v127 -= ((0x1CA10u >> (v102 & 2)) & 4) + 39;
                  }

                  if (v114 < v127)
                  {
                    v104 = v126;
                    v103 = a7[v102];
                    v115 = v127;
                    v106 = v126;
                    v114 = v127;
                  }
                }
              }
            }

            ++v102;
          }

          while (v102 != 4);
          v129 = v246;
          if (v107 + v232 < v246)
          {
            v129 = v107 + v232;
          }

          v233 = v129;
          result = v109 + 0x40000;
          v130 = *(v242 + 56);
          v131 = *(v109 + 4 * v113);
          v132 = v107 - v131;
          v133 = *(v109 + 0x20000 + 2 * v113);
          v237 = *(v109 + 0x20000 + 2 * v113);
          if (v130)
          {
            v134 = 0;
            v135 = v107 - v131;
            do
            {
              v134 += v135;
              if (v134 > v108)
              {
                break;
              }

              if (v106 + v111 <= a4)
              {
                v136 = (v107 - v134) & a4;
                if (v136 + v106 <= a4 && *(a3 + v106 + v111) == *(a3 + v136 + v106))
                {
                  v137 = a3 + v136;
                  if (v22 < 8)
                  {
                    v144 = 0;
                    v141 = v112;
LABEL_186:
                    v151 = v22 & 7;
                    if ((v22 & 7) != 0)
                    {
                      do
                      {
                        if (*(v137 + v144) != *v141)
                        {
                          break;
                        }

                        v141 = (v141 + 1);
                        ++v144;
                        --v151;
                      }

                      while (v151);
                    }
                  }

                  else
                  {
                    v138 = 0;
                    v139 = (a3 + v136);
                    v140 = v22 >> 3;
                    v141 = v112;
                    while (1)
                    {
                      v143 = *v139++;
                      v142 = v143;
                      if (*v141 != v143)
                      {
                        break;
                      }

                      ++v141;
                      v138 -= 8;
                      if (!--v140)
                      {
                        v144 = -v138;
                        a5 = v234;
                        a3 = v249;
                        goto LABEL_186;
                      }
                    }

                    v144 = (__clz(__rbit64(v142 ^ *v141)) >> 3) - v138;
                    a5 = v234;
                    a3 = v249;
                  }

                  v145 = 135 * v144 - 30 * (__clz(v134) ^ 0x1F) + 1920;
                  if (v114 < v145)
                  {
                    v146 = v144;
                  }

                  else
                  {
                    v146 = v104;
                  }

                  if (v114 < v145)
                  {
                    v147 = v134;
                  }

                  else
                  {
                    v147 = v103;
                  }

                  if (v114 < v145)
                  {
                    v148 = v145;
                  }

                  else
                  {
                    v148 = v115;
                  }

                  if (v114 < v145)
                  {
                    v149 = v144;
                  }

                  else
                  {
                    v149 = v106;
                  }

                  if (v114 >= v145)
                  {
                    v145 = v114;
                  }

                  if (v144 >= 4)
                  {
                    v104 = v146;
                    v103 = v147;
                    v115 = v148;
                    v106 = v149;
                    v114 = v145;
                  }
                }
              }

              v150 = (result + 4 * v133);
              v133 = v150[1];
              v135 = *v150;
              --v130;
            }

            while (v130);
          }

          *(v242 + 48) = v239 + 1;
          *(v110 + (v100 + 1)) = v113;
          v152 = -1;
          if (v132 < 0xFFFF)
          {
            v152 = v132;
          }

          v153 = (result + 4 * v239);
          *v153 = v152;
          v153[1] = v237;
          *(v109 + 4 * v113) = v107;
          *(v109 + 0x20000 + 2 * v113) = v239;
          if (v115 == 2020)
          {
            v154 = *(v242 + 72);
            v156 = *(v154 + 8);
            v155 = *(v154 + 16);
            a6 = v242;
            v157 = 0;
            if (v155 >= v156 >> 7)
            {
              v158 = ((506832829 * *v112) >> 17) & 0x7FFE;
              v159 = *(a5 + 120);
              result = v233 + 1;
              v160 = 1;
              v115 = 2020;
              v161 = v103;
              v162 = v104;
              do
              {
                v163 = v160;
                *(v154 + 8) = ++v156;
                v164 = *(v159 + v158);
                if (!*(v159 + v158) || v22 < v164)
                {
                  goto LABEL_203;
                }

                v165 = *(a5 + 88);
                v166 = *(v165 + 4 * v164 + 32);
                v167 = *(v165 + 168) + *(*(a5 + 112) + 2 * v158) * *(v159 + v158);
                v168 = (v167 + v166);
                if (v164 < 8)
                {
                  v104 = 0;
LABEL_218:
                  v174 = v164 & 7;
                  if ((v164 & 7) != 0)
                  {
                    v175 = v104 | v174;
                    while (*(v112 + v104) == *v168)
                    {
                      ++v168;
                      ++v104;
                      if (!--v174)
                      {
                        v104 = v175;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v169 = 0;
                  v104 = v164 & 0xF8;
                  v170 = (v167 + v104 + v166);
                  while (1)
                  {
                    v171 = *&v168[v169];
                    v172 = *&v112[v169 / 4];
                    if (v171 != v172)
                    {
                      break;
                    }

                    v169 += 8;
                    if (v104 == v169)
                    {
                      v168 = v170;
                      goto LABEL_218;
                    }
                  }

                  v104 = v169 + (__clz(__rbit64(v172 ^ v171)) >> 3);
                }

                if (v104 && v104 + *(a5 + 100) > v164 && (v103 = result + *(*(a5 + 112) + 2 * v158) + ((((*(a5 + 104) >> (6 * (v164 - v104))) & 0x3FLL) + 4 * (v164 - v104)) << *(v165 + v164)), v103 <= v244) && (v173 = __clz(v103) ^ 0x1F, 135 * v104 - 30 * v173 + 1920 >= v115))
                {
                  v157 = v164 - v104;
                  *(v154 + 16) = ++v155;
                  v115 = 135 * v104 - 30 * v173 + 1920;
                }

                else
                {
LABEL_203:
                  v104 = v162;
                  v103 = v161;
                }

                v160 = 0;
                ++v158;
                v161 = v103;
                v162 = v104;
              }

              while ((v163 & 1) != 0);
            }

            else
            {
              v115 = 2020;
            }
          }

          else
          {
            v157 = 0;
            a6 = v242;
          }

          if (v115 < v248 + 175)
          {
            break;
          }

          ++v245;
          a3 = v249;
          if (v236 <= 2)
          {
            v98 = v236 + 1;
            v99 = v239 + 1;
            v229 = v103;
            v248 = v115;
            v228 = v157;
            v101 = v104;
            ++v100;
            if (v241 + 5 < v231)
            {
              continue;
            }
          }

          goto LABEL_237;
        }

        v107 = v100;
        v184 = v100 + v232;
        if (v100 + v232 >= v246)
        {
          v184 = v246;
        }

        v233 = v184;
        v103 = v229;
        v104 = v230;
        v157 = v228;
        a3 = v249;
LABEL_237:
        v14 = v231;
        if (v103 > v233)
        {
LABEL_238:
          v185 = v103 + 15;
          goto LABEL_239;
        }

        v186 = *a7;
        if (v103 == v186)
        {
          v185 = 0;
LABEL_244:
          *v227 = v245;
          *(v227 + 4) = v104 | (v157 << 25);
          v187 = *(a5 + 68);
          v188 = v187 + 16;
          if (v187 + 16 <= v185)
          {
            v190 = *(a5 + 64);
            v191 = v185 - v187 + (4 << v190) - 16;
            v192 = (__clz(v191) ^ 0x1F) - 1;
            v193 = ((v191 >> v192) & 1 | 2) << v192;
            v185 = ((v191 & ~(-1 << v190)) + v188 + ((((v191 >> v192) & 1 | (2 * (v192 - v190))) + 65534) << v190)) | ((v192 - v190) << 10);
            v189 = (v191 - v193) >> v190;
          }

          else
          {
            LODWORD(v189) = 0;
          }

          *(v227 + 14) = v185;
          *(v227 + 8) = v189;
          if (v245 > 5)
          {
            if (v245 > 0x81)
            {
              if (v245 > 0x841)
              {
                if (v245 >> 1 >= 0xC21)
                {
                  if (v245 < 0x5842)
                  {
                    LOWORD(v194) = 22;
                  }

                  else
                  {
                    LOWORD(v194) = 23;
                  }
                }

                else
                {
                  LOWORD(v194) = 21;
                }
              }

              else
              {
                v194 = (__clz(v245 - 66) ^ 0x1F) + 10;
              }
            }

            else
            {
              v195 = (__clz(v245 - 2) ^ 0x1F) - 1;
              v194 = ((v245 - 2) >> v195) + 2 * v195 + 2;
            }
          }

          else
          {
            LOWORD(v194) = v245;
          }

          v207 = v157 + v104;
          if (v207 > 9)
          {
            if (v207 > 0x85)
            {
              if (v207 > 0x845)
              {
                LOWORD(v207) = 23;
              }

              else
              {
                v207 = (__clz(v207 - 70) ^ 0x1F) + 12;
              }
            }

            else
            {
              v208 = v207 - 6;
              v209 = (__clz(v208) ^ 0x1F) - 1;
              v207 = (v208 >> v209) + 2 * v209 + 4;
            }
          }

          else
          {
            LOWORD(v207) = v207 - 2;
          }

          v210 = v207 & 7 | (8 * (v194 & 7));
          if ((v185 & 0x3FF) != 0 || v194 > 7u || v207 > 0xFu)
          {
            v212 = 3 * (v194 >> 3) + ((v207 & 0xFFF8) >> 3);
            v211 = ((((0x520D40u >> (2 * v212)) & 0xC0) + (v212 << 6)) | v210) + 64;
          }

          else
          {
            LOWORD(v211) = v210 | 0x40;
            if ((v207 & 0xFFF8) == 0)
            {
              LOWORD(v211) = v207 & 7 | (8 * (v194 & 7));
            }
          }

          *(v227 + 12) = v211;
          *a11 += v245;
          v213 = v107 + 2;
          v176 = v107 + v104;
          if (v107 + v104 >= v226)
          {
            v214 = v226;
          }

          else
          {
            v214 = v107 + v104;
          }

          if (v103 < v104 >> 2)
          {
            v215 = v176 - 4 * v103;
            if (v213 > v215)
            {
              v215 = v107 + 2;
            }

            if (v214 >= v215)
            {
              v213 = v215;
            }

            else
            {
              v213 = v214;
            }
          }

          v17 = v225 + 2 * v104 + v107;
          v227 += 16;
          if (v213 >= v214)
          {
            v13 = 0;
LABEL_304:
            v12 = a9;
            goto LABEL_305;
          }

          v216 = *(a6 + 64);
          v217 = v216 + 0x20000;
          v180 = *(a6 + 48);
          do
          {
            v218 = (506832829 * *(a3 + (v213 & a4))) >> 17;
            *(v216 + 196608 + v213) = v218;
            v219 = (v216 + 0x40000 + 4 * v180);
            result = *(v217 + 2 * v218);
            *(v217 + 2 * v218) = v180++;
            v220 = v213 - *(v216 + 4 * v218);
            if (v220 >= 0xFFFF)
            {
              LOWORD(v220) = -1;
            }

            *v219 = v220;
            v219[1] = result;
            *(v216 + 4 * v218) = v213++;
          }

          while (v214 != v213);
          v13 = 0;
          v12 = a9;
          a6 = v242;
          goto LABEL_302;
        }

        v202 = a7[1];
        if (v103 == v202)
        {
          v185 = 1;
        }

        else
        {
          v203 = v103 + 3 - v186;
          if (v203 > 6)
          {
            v206 = v103 + 3 - v202;
            if (v206 > 6)
            {
              if (v103 == a7[2])
              {
                v185 = 2;
              }

              else
              {
                if (v103 != a7[3])
                {
                  goto LABEL_238;
                }

                v185 = 3;
              }

              goto LABEL_239;
            }

            v204 = 4 * v206;
            v205 = 266017486;
          }

          else
          {
            v204 = 4 * v203;
            v205 = 158663784;
          }

          v185 = (v205 >> v204) & 0xF;
        }

LABEL_239:
        if (v103 <= v233 && v185)
        {
          a7[3] = a7[2];
          *(a7 + 1) = *a7;
          *a7 = v103;
        }

        goto LABEL_244;
      }

LABEL_223:
      v13 = v245 + 1;
      v176 = v33 + 1;
      v17 = v240;
      if (v33 + 1 > v240)
      {
        v14 = v231;
        if (v176 <= v240 + v224)
        {
          v196 = v223;
          if (v33 + 9 < v223)
          {
            v196 = v33 + 9;
          }

          if (v176 >= v196)
          {
            goto LABEL_304;
          }

          v197 = *(a6 + 64);
          v198 = v197 + 0x20000;
          v180 = *(a6 + 48);
          do
          {
            v199 = (506832829 * *(a3 + (v176 & a4))) >> 17;
            v200 = (v197 + 0x40000 + 4 * v180);
            v201 = *(v198 + 2 * v199);
            *(v198 + 2 * v199) = v180++;
            *(v197 + 196608 + v176) = v199;
            result = v176 - *(v197 + 4 * v199);
            if (result >= 0xFFFF)
            {
              result = 0xFFFFLL;
            }

            *v200 = result;
            v200[1] = v201;
            *(v197 + 4 * v199) = v176;
            v13 += 2;
            v176 += 2;
          }

          while (v176 < v196);
        }

        else
        {
          v177 = v222;
          if (v33 + 17 < v222)
          {
            v177 = v33 + 17;
          }

          if (v176 >= v177)
          {
            goto LABEL_304;
          }

          v178 = *(a6 + 64);
          v179 = v178 + 0x20000;
          v180 = *(a6 + 48);
          do
          {
            v181 = (506832829 * *(a3 + (v176 & a4))) >> 17;
            v182 = (v178 + 0x40000 + 4 * v180);
            v183 = *(v179 + 2 * v181);
            *(v179 + 2 * v181) = v180++;
            *(v178 + 196608 + v176) = v181;
            result = v176 - *(v178 + 4 * v181);
            if (result >= 0xFFFF)
            {
              result = 0xFFFFLL;
            }

            *v182 = result;
            v182[1] = v183;
            *(v178 + 4 * v181) = v176;
            v13 += 4;
            v176 += 4;
          }

          while (v176 < v177);
        }

        v12 = a9;
LABEL_302:
        *(a6 + 48) = v180;
        goto LABEL_305;
      }

      v12 = a9;
      v14 = v231;
LABEL_305:
      a2 = v176;
      if (v176 + 4 >= v14)
      {
        goto LABEL_312;
      }
    }
  }

  v227 = a9;
  v176 = a2;
LABEL_312:
  *a8 = v13 + v14 - v176;
  *a10 += (v227 - v12) >> 4;
  return result;
}

unint64_t sub_100155434(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v12 = a9;
  v228 = *(a5 + 16);
  v13 = *a8;
  v14 = a2 + result;
  v15 = a2 + result - 3;
  v219 = v15;
  if (result <= 3)
  {
    v15 = a2;
  }

  v222 = v15;
  v16 = *(a5 + 8);
  if (*(a5 + 4) >= 9)
  {
    v17 = 512;
  }

  else
  {
    v17 = 64;
  }

  v18 = vld1q_dup_f32(a7);
  *(a7 + 1) = vaddq_s32(v18, xmmword_1003E32C0);
  *(a7 + 4) = vadd_s32(*v18.i8, 0x3FFFFFFFDLL);
  if (a2 + 4 < v14)
  {
    v245 = a3;
    v242 = (1 << v16) - 16;
    v19 = v17 + a2;
    v220 = 4 * v17;
    v218 = v14 - 4;
    v223 = a9;
    v232 = a5;
    v226 = a2 + result;
    v221 = v17;
    while (1)
    {
      v241 = v13;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = v14 - a2;
      if (a2 >= v242)
      {
        v25 = v242;
      }

      else
      {
        v25 = a2;
      }

      v26 = a2 + v228;
      v235 = *(a5 + 80);
      v237 = v19;
      v27 = *(a6 + 64);
      v28 = v27 + 196608;
      result = a2 & a4;
      v29 = (a3 + (a2 & a4));
      v30 = (506832829 * *v29) >> 17;
      v230 = v24 & 7;
      v31 = 2020;
      v32 = 2020;
      v243 = a2;
      do
      {
        v33 = a7[v21];
        v34 = a2 - v33;
        if ((!v21 || *(v28 + (a2 - v33)) == v30) && v25 >= v33 && v34 < a2)
        {
          v36 = a3 + (v34 & a4);
          if (v24 < 8)
          {
            v41 = 0;
            v42 = v29;
LABEL_33:
            v44 = v24 & 7;
            if ((v24 & 7) != 0)
            {
              v45 = v230 | v41;
              while (*(v36 + v41) == *v42)
              {
                ++v42;
                ++v41;
                if (!--v44)
                {
                  v41 = v45;
                  break;
                }
              }
            }

            a2 = v243;
          }

          else
          {
            v37 = 0;
            v38 = v24 >> 3;
            while (1)
            {
              v39 = *&v29[v37];
              v40 = *(v36 + v37);
              if (v39 != v40)
              {
                break;
              }

              v37 += 8;
              if (!--v38)
              {
                v41 = v24 & 0xFFFFFFFFFFFFFFF8;
                v42 = &v29[v24 & 0xFFFFFFFFFFFFFFF8];
                goto LABEL_33;
              }
            }

            v41 = v37 + (__clz(__rbit64(v40 ^ v39)) >> 3);
          }

          if (v41 >= 2)
          {
            v43 = 135 * v41 + 1935;
            if (v31 < v43)
            {
              if (v21)
              {
                v43 -= ((0x1CA10u >> (v21 & 0xE)) & 0xE) + 39;
              }

              if (v31 < v43)
              {
                v23 = a7[v21];
                v32 = v43;
                v22 = v41;
                v20 = v41;
                v31 = v43;
              }
            }
          }
        }

        ++v21;
      }

      while (v21 != 10);
      v46 = v242;
      if (v26 < v242)
      {
        v46 = v26;
      }

      v233 = v46;
      v47 = v27 + 0x40000;
      v48 = *(a6 + 56);
      v49 = *(v27 + 4 * v30);
      v50 = a2 - v49;
      v51 = *(v27 + 0x20000 + 2 * v30);
      v238 = *(v27 + 0x20000 + 2 * v30);
      if (v48)
      {
        v52 = 0;
        v53 = a2 - v49;
        do
        {
          v52 += v53;
          if (v52 > v25)
          {
            break;
          }

          if (v20 + result <= a4)
          {
            v54 = (a2 - v52) & a4;
            if (v54 + v20 <= a4 && *(v245 + v20 + result) == *(v245 + v54 + v20))
            {
              v55 = v245 + v54;
              if (v24 < 8)
              {
                v60 = 0;
                v61 = v29;
LABEL_73:
                v68 = v24 & 7;
                if ((v24 & 7) != 0)
                {
                  v69 = v230 | v60;
                  while (*(v55 + v60) == *v61)
                  {
                    ++v61;
                    ++v60;
                    if (!--v68)
                    {
                      v60 = v69;
                      break;
                    }
                  }
                }
              }

              else
              {
                v56 = 0;
                v57 = v24 >> 3;
                while (1)
                {
                  v58 = *&v29[v56];
                  v59 = *(v55 + v56);
                  if (v58 != v59)
                  {
                    break;
                  }

                  v56 += 8;
                  if (!--v57)
                  {
                    v60 = v24 & 0xFFFFFFFFFFFFFFF8;
                    v61 = &v29[v24 & 0xFFFFFFFFFFFFFFF8];
                    goto LABEL_73;
                  }
                }

                v60 = v56 + (__clz(__rbit64(v59 ^ v58)) >> 3);
              }

              v62 = 135 * v60 - 30 * (__clz(v52) ^ 0x1F) + 1920;
              if (v31 < v62)
              {
                v63 = v52;
              }

              else
              {
                v63 = v23;
              }

              if (v31 < v62)
              {
                v64 = v62;
              }

              else
              {
                v64 = v32;
              }

              if (v31 < v62)
              {
                v65 = v60;
              }

              else
              {
                v65 = v22;
              }

              if (v31 < v62)
              {
                v66 = v60;
              }

              else
              {
                v66 = v20;
              }

              if (v31 >= v62)
              {
                v62 = v31;
              }

              if (v60 >= 4)
              {
                v23 = v63;
                v32 = v64;
                v22 = v65;
                v20 = v66;
                v31 = v62;
              }

              a2 = v243;
            }
          }

          v67 = (v47 + 4 * v51);
          v51 = v67[1];
          v53 = *v67;
          --v48;
        }

        while (v48);
      }

      v70 = *(a6 + 48);
      *(a6 + 48) = v70 + 1;
      *(v28 + a2) = v30;
      v71 = -1;
      if (v50 < 0xFFFF)
      {
        v71 = v50;
      }

      v72 = (v47 + 4 * v70);
      *v72 = v71;
      v72[1] = v238;
      *(v27 + 4 * v30) = a2;
      *(v27 + 0x20000 + 2 * v30) = v70;
      if (v32 == 2020)
      {
        v73 = *(a6 + 72);
        v75 = *(v73 + 8);
        v74 = *(v73 + 16);
        a5 = v232;
        a3 = v245;
        if (v74 < v75 >> 7)
        {
          goto LABEL_212;
        }

        v227 = 0;
        v76 = ((506832829 * *v29) >> 17) & 0x7FFE;
        v77 = *(v232 + 120);
        result = v233 + 1;
        v78 = 1;
        v79 = v22;
        v32 = 2020;
        do
        {
          v80 = v78;
          *(v73 + 8) = ++v75;
          v81 = *(v77 + v76);
          if (!*(v77 + v76) || v24 < v81)
          {
            goto LABEL_85;
          }

          v84 = *(v232 + 88);
          v85 = *(v84 + 4 * v81 + 32);
          v86 = *(v84 + 168) + *(*(v232 + 112) + 2 * v76) * *(v77 + v76);
          v87 = (v86 + v85);
          if (v81 < 8)
          {
            v83 = 0;
LABEL_100:
            v93 = v81 & 7;
            if ((v81 & 7) != 0)
            {
              v94 = v83 | v93;
              while (v29[v83] == *v87)
              {
                ++v87;
                ++v83;
                if (!--v93)
                {
                  v83 = v94;
                  break;
                }
              }
            }
          }

          else
          {
            v88 = 0;
            v83 = v81 & 0xF8;
            v89 = (v86 + v83 + v85);
            while (1)
            {
              v90 = *&v87[v88];
              v91 = *&v29[v88];
              if (v90 != v91)
              {
                break;
              }

              v88 += 8;
              if (v83 == v88)
              {
                v87 = v89;
                goto LABEL_100;
              }
            }

            v83 = v88 + (__clz(__rbit64(v91 ^ v90)) >> 3);
          }

          if (v83 && v83 + *(v232 + 100) > v81 && (v82 = result + *(*(v232 + 112) + 2 * v76) + ((((*(v232 + 104) >> (6 * (v81 - v83))) & 0x3FLL) + 4 * (v81 - v83)) << *(v84 + v81)), v82 <= v235) && (v92 = 135 * v83 - 30 * (__clz(v82) ^ 0x1F) + 1920, v92 >= v32))
          {
            v227 = v81 - v83;
            *(v73 + 16) = ++v74;
            v32 = v92;
          }

          else
          {
LABEL_85:
            v82 = v23;
            v83 = v79;
          }

          v78 = 0;
          ++v76;
          v79 = v83;
          v23 = v82;
        }

        while ((v80 & 1) != 0);
      }

      else
      {
        v227 = 0;
        a5 = v232;
        a3 = v245;
        v83 = v22;
        v82 = v23;
      }

      if (v32 >= 0x7E5)
      {
        v225 = v82;
        v95 = 0;
        v96 = *(a6 + 48);
        v97 = v243;
        while (1)
        {
          v239 = v96;
          v240 = v32;
          v234 = v95;
          v98 = 0;
          v99 = 0;
          v100 = 0;
          --v24;
          v224 = v83;
          v101 = v83 - 1;
          if (v83 - 1 >= v24)
          {
            v101 = v24;
          }

          v102 = *(a5 + 4) >= 5 ? 0 : v101;
          v103 = v97 + 1;
          v244 = v97;
          v104 = v97 + 1 < v242 ? v97 + 1 : v242;
          v229 = *(a5 + 80);
          v105 = *(a6 + 64);
          result = v105 + 196608;
          v106 = v103 & a4;
          v107 = (a3 + (v103 & a4));
          v108 = (506832829 * *v107) >> 17;
          v109 = 2020;
          v32 = 2020;
          do
          {
            v110 = a7[v98];
            v111 = v103 - v110;
            if ((!v98 || *(result + (v103 - v110)) == v108) && v104 >= v110 && v111 < v103)
            {
              v113 = a3 + (v111 & a4);
              if (v24 < 8)
              {
                v120 = 0;
                v117 = (a3 + (v103 & a4));
LABEL_138:
                v122 = v24 & 7;
                if ((v24 & 7) != 0)
                {
                  do
                  {
                    if (*(v113 + v120) != *v117)
                    {
                      break;
                    }

                    v117 = (v117 + 1);
                    ++v120;
                    --v122;
                  }

                  while (v122);
                }
              }

              else
              {
                v114 = 0;
                v115 = (a3 + (v111 & a4));
                v116 = v24 >> 3;
                v117 = (a3 + (v103 & a4));
                while (1)
                {
                  v119 = *v115++;
                  v118 = v119;
                  if (*v117 != v119)
                  {
                    break;
                  }

                  ++v117;
                  v114 -= 8;
                  if (!--v116)
                  {
                    v120 = -v114;
                    goto LABEL_138;
                  }
                }

                v120 = (__clz(__rbit64(v118 ^ *v117)) >> 3) - v114;
              }

              if (v120 >= 2)
              {
                v121 = 135 * v120 + 1935;
                if (v109 < v121)
                {
                  if (v98)
                  {
                    v121 -= ((0x1CA10u >> (v98 & 0xE)) & 0xE) + 39;
                  }

                  if (v109 < v121)
                  {
                    v100 = v120;
                    v99 = a7[v98];
                    v32 = v121;
                    v102 = v120;
                    v109 = v121;
                  }
                }
              }
            }

            ++v98;
          }

          while (v98 != 10);
          v123 = v242;
          if (v103 + v228 < v242)
          {
            v123 = v103 + v228;
          }

          v231 = v123;
          v124 = v105 + 0x40000;
          v125 = *(a6 + 56);
          v126 = *(v105 + 4 * v108);
          v127 = v103 - v126;
          v128 = *(v105 + 0x20000 + 2 * v108);
          v236 = *(v105 + 0x20000 + 2 * v108);
          if (v125)
          {
            v129 = 0;
            v130 = v103 - v126;
            do
            {
              v129 += v130;
              if (v129 > v104)
              {
                break;
              }

              if (v102 + v106 <= a4)
              {
                v131 = (v103 - v129) & a4;
                if (v131 + v102 <= a4 && *(a3 + v102 + v106) == *(a3 + v131 + v102))
                {
                  v132 = a3 + v131;
                  if (v24 < 8)
                  {
                    v139 = 0;
                    v136 = v107;
LABEL_175:
                    v146 = v24 & 7;
                    if ((v24 & 7) != 0)
                    {
                      do
                      {
                        if (*(v132 + v139) != *v136)
                        {
                          break;
                        }

                        v136 = (v136 + 1);
                        ++v139;
                        --v146;
                      }

                      while (v146);
                    }
                  }

                  else
                  {
                    v133 = 0;
                    v134 = (a3 + v131);
                    v135 = v24 >> 3;
                    v136 = v107;
                    while (1)
                    {
                      v138 = *v134++;
                      v137 = v138;
                      if (*v136 != v138)
                      {
                        break;
                      }

                      ++v136;
                      v133 -= 8;
                      if (!--v135)
                      {
                        v139 = -v133;
                        a5 = v232;
                        a3 = v245;
                        goto LABEL_175;
                      }
                    }

                    v139 = (__clz(__rbit64(v137 ^ *v136)) >> 3) - v133;
                    a5 = v232;
                    a3 = v245;
                  }

                  v140 = 135 * v139 - 30 * (__clz(v129) ^ 0x1F) + 1920;
                  if (v109 < v140)
                  {
                    v141 = v139;
                  }

                  else
                  {
                    v141 = v100;
                  }

                  if (v109 < v140)
                  {
                    v142 = v129;
                  }

                  else
                  {
                    v142 = v99;
                  }

                  if (v109 < v140)
                  {
                    v143 = v140;
                  }

                  else
                  {
                    v143 = v32;
                  }

                  if (v109 < v140)
                  {
                    v144 = v139;
                  }

                  else
                  {
                    v144 = v102;
                  }

                  if (v109 >= v140)
                  {
                    v140 = v109;
                  }

                  if (v139 >= 4)
                  {
                    v100 = v141;
                    v99 = v142;
                    v32 = v143;
                    v102 = v144;
                    v109 = v140;
                  }
                }
              }

              v145 = (v124 + 4 * v128);
              v128 = v145[1];
              v130 = *v145;
              --v125;
            }

            while (v125);
          }

          ++v96;
          *(a6 + 48) = v239 + 1;
          *(result + v103) = v108;
          v147 = -1;
          if (v127 < 0xFFFF)
          {
            v147 = v127;
          }

          v148 = (v124 + 4 * v239);
          *v148 = v147;
          v148[1] = v236;
          *(v105 + 4 * v108) = v103;
          *(v105 + 0x20000 + 2 * v108) = v239;
          if (v32 == 2020)
          {
            v149 = *(a6 + 72);
            v151 = *(v149 + 8);
            v150 = *(v149 + 16);
            if (v150 >= v151 >> 7)
            {
              v152 = 0;
              v153 = ((506832829 * *v107) >> 17) & 0x7FFE;
              v154 = *(a5 + 120);
              result = v231 + 1;
              v155 = 1;
              v32 = 2020;
              v156 = v99;
              v157 = v100;
              do
              {
                v158 = v155;
                *(v149 + 8) = ++v151;
                v159 = *(v154 + v153);
                if (!*(v154 + v153) || v24 < v159)
                {
                  goto LABEL_192;
                }

                v160 = *(a5 + 88);
                v161 = *(v160 + 4 * v159 + 32);
                v162 = *(v160 + 168) + *(*(a5 + 112) + 2 * v153) * *(v154 + v153);
                v163 = (v162 + v161);
                if (v159 < 8)
                {
                  v100 = 0;
LABEL_207:
                  v169 = v159 & 7;
                  if ((v159 & 7) != 0)
                  {
                    v170 = v100 | v169;
                    while (*(v107 + v100) == *v163)
                    {
                      ++v163;
                      ++v100;
                      if (!--v169)
                      {
                        v100 = v170;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v164 = 0;
                  v100 = v159 & 0xF8;
                  v165 = (v162 + v100 + v161);
                  while (1)
                  {
                    v166 = *&v163[v164];
                    v167 = *&v107[v164 / 4];
                    if (v166 != v167)
                    {
                      break;
                    }

                    v164 += 8;
                    if (v100 == v164)
                    {
                      v163 = v165;
                      goto LABEL_207;
                    }
                  }

                  v100 = v164 + (__clz(__rbit64(v167 ^ v166)) >> 3);
                }

                if (v100 && v100 + *(a5 + 100) > v159 && (v99 = result + *(*(a5 + 112) + 2 * v153) + ((((*(a5 + 104) >> (6 * (v159 - v100))) & 0x3FLL) + 4 * (v159 - v100)) << *(v160 + v159)), v99 <= v229) && (v168 = __clz(v99) ^ 0x1F, 135 * v100 - 30 * v168 + 1920 >= v32))
                {
                  v152 = v159 - v100;
                  *(v149 + 16) = ++v150;
                  v32 = 135 * v100 - 30 * v168 + 1920;
                }

                else
                {
LABEL_192:
                  v100 = v157;
                  v99 = v156;
                }

                v155 = 0;
                ++v153;
                v156 = v99;
                v157 = v100;
              }

              while ((v158 & 1) != 0);
            }

            else
            {
              v152 = 0;
              v32 = 2020;
            }
          }

          else
          {
            v152 = 0;
          }

          if (v32 < v240 + 175)
          {
            break;
          }

          ++v241;
          a3 = v245;
          if (v234 <= 2)
          {
            v95 = v234 + 1;
            v225 = v99;
            v227 = v152;
            v83 = v100;
            v97 = v103;
            if (v244 + 5 < v226)
            {
              continue;
            }
          }

          goto LABEL_226;
        }

        v103 = v244;
        v179 = v244 + v228;
        if (v244 + v228 >= v242)
        {
          v179 = v242;
        }

        v231 = v179;
        v100 = v224;
        v99 = v225;
        v152 = v227;
        a3 = v245;
LABEL_226:
        v12 = a9;
        v14 = v226;
        if (v99 > v231)
        {
LABEL_227:
          v180 = v99 + 15;
          goto LABEL_228;
        }

        v182 = *a7;
        if (v99 == v182)
        {
          v180 = 0;
LABEL_233:
          *v223 = v241;
          *(v223 + 4) = v100 | (v152 << 25);
          v183 = *(a5 + 68);
          v184 = v183 + 16;
          if (v183 + 16 <= v180)
          {
            v186 = *(a5 + 64);
            v187 = v180 - v183 + (4 << v186) - 16;
            v188 = (__clz(v187) ^ 0x1F) - 1;
            v189 = ((v187 >> v188) & 1 | 2) << v188;
            v180 = ((v187 & ~(-1 << v186)) + v184 + ((((v187 >> v188) & 1 | (2 * (v188 - v186))) + 65534) << v186)) | ((v188 - v186) << 10);
            v185 = (v187 - v189) >> v186;
          }

          else
          {
            LODWORD(v185) = 0;
          }

          *(v223 + 14) = v180;
          *(v223 + 8) = v185;
          if (v241 > 5)
          {
            if (v241 > 0x81)
            {
              if (v241 > 0x841)
              {
                if (v241 >> 1 >= 0xC21)
                {
                  if (v241 < 0x5842)
                  {
                    LOWORD(v190) = 22;
                  }

                  else
                  {
                    LOWORD(v190) = 23;
                  }
                }

                else
                {
                  LOWORD(v190) = 21;
                }
              }

              else
              {
                v190 = (__clz(v241 - 66) ^ 0x1F) + 10;
              }
            }

            else
            {
              v191 = (__clz(v241 - 2) ^ 0x1F) - 1;
              v190 = ((v241 - 2) >> v191) + 2 * v191 + 2;
            }
          }

          else
          {
            LOWORD(v190) = v241;
          }

          v203 = v152 + v100;
          if ((v152 + v100) > 9)
          {
            if (v203 > 0x85)
            {
              if (v203 > 0x845)
              {
                LOWORD(v203) = 23;
              }

              else
              {
                v203 = (__clz(v203 - 70) ^ 0x1F) + 12;
              }
            }

            else
            {
              v204 = v203 - 6;
              v205 = (__clz(v204) ^ 0x1F) - 1;
              v203 = (v204 >> v205) + 2 * v205 + 4;
            }
          }

          else
          {
            LOWORD(v203) = v203 - 2;
          }

          v206 = v203 & 7 | (8 * (v190 & 7));
          if ((v180 & 0x3FF) != 0 || v190 > 7u || v203 > 0xFu)
          {
            v208 = 3 * (v190 >> 3) + ((v203 & 0xFFF8) >> 3);
            v207 = ((((0x520D40u >> (2 * v208)) & 0xC0) + (v208 << 6)) | v206) + 64;
          }

          else
          {
            LOWORD(v207) = v206 | 0x40;
            if ((v203 & 0xFFF8) == 0)
            {
              LOWORD(v207) = v203 & 7 | (8 * (v190 & 7));
            }
          }

          *(v223 + 12) = v207;
          *a11 += v241;
          v209 = v103 + 2;
          v171 = v103 + v100;
          if (v103 + v100 >= v222)
          {
            v210 = v222;
          }

          else
          {
            v210 = v103 + v100;
          }

          if (v99 < v100 >> 2)
          {
            v211 = v171 - 4 * v99;
            if (v209 > v211)
            {
              v211 = v103 + 2;
            }

            if (v210 >= v211)
            {
              v209 = v211;
            }

            else
            {
              v209 = v210;
            }
          }

          v19 = v221 + 2 * v100 + v103;
          v223 += 16;
          if (v209 >= v210)
          {
            v13 = 0;
            goto LABEL_293;
          }

          v212 = *(a6 + 64);
          v213 = v212 + 0x20000;
          v175 = *(a6 + 48);
          do
          {
            v214 = (506832829 * *(a3 + (v209 & a4))) >> 17;
            *(v212 + 196608 + v209) = v214;
            v215 = (v212 + 0x40000 + 4 * v175);
            result = *(v213 + 2 * v214);
            *(v213 + 2 * v214) = v175++;
            v216 = v209 - *(v212 + 4 * v214);
            if (v216 >= 0xFFFF)
            {
              LOWORD(v216) = -1;
            }

            *v215 = v216;
            v215[1] = result;
            *(v212 + 4 * v214) = v209++;
          }

          while (v210 != v209);
          v13 = 0;
          goto LABEL_291;
        }

        v198 = a7[1];
        if (v99 == v198)
        {
          v180 = 1;
        }

        else
        {
          v199 = v99 + 3 - v182;
          if (v199 > 6)
          {
            v202 = v99 + 3 - v198;
            if (v202 > 6)
            {
              if (v99 == a7[2])
              {
                v180 = 2;
              }

              else
              {
                if (v99 != a7[3])
                {
                  goto LABEL_227;
                }

                v180 = 3;
              }

              goto LABEL_228;
            }

            v200 = 4 * v202;
            v201 = 266017486;
          }

          else
          {
            v200 = 4 * v199;
            v201 = 158663784;
          }

          v180 = (v201 >> v200) & 0xF;
        }

LABEL_228:
        if (v99 <= v231 && v180)
        {
          a7[3] = a7[2];
          *(a7 + 1) = *a7;
          *a7 = v99;
          v181 = vdupq_n_s32(v99);
          *(a7 + 1) = vaddq_s32(v181, xmmword_1003E32C0);
          *(a7 + 4) = vadd_s32(*v181.i8, 0x3FFFFFFFDLL);
        }

        goto LABEL_233;
      }

LABEL_212:
      v13 = v241 + 1;
      v171 = v243 + 1;
      v19 = v237;
      if (v243 + 1 > v237)
      {
        v12 = a9;
        v14 = v226;
        if (v171 <= v237 + v220)
        {
          v192 = v219;
          if (v243 + 9 < v219)
          {
            v192 = v243 + 9;
          }

          if (v171 >= v192)
          {
            goto LABEL_293;
          }

          v193 = *(a6 + 64);
          v194 = v193 + 0x20000;
          v175 = *(a6 + 48);
          do
          {
            v195 = (506832829 * *(a3 + (v171 & a4))) >> 17;
            v196 = (v193 + 0x40000 + 4 * v175);
            v197 = *(v194 + 2 * v195);
            *(v194 + 2 * v195) = v175++;
            *(v193 + 196608 + v171) = v195;
            result = v171 - *(v193 + 4 * v195);
            if (result >= 0xFFFF)
            {
              result = 0xFFFFLL;
            }

            *v196 = result;
            v196[1] = v197;
            *(v193 + 4 * v195) = v171;
            v13 += 2;
            v171 += 2;
          }

          while (v171 < v192);
        }

        else
        {
          v172 = v218;
          if (v243 + 17 < v218)
          {
            v172 = v243 + 17;
          }

          if (v171 >= v172)
          {
            goto LABEL_293;
          }

          v173 = *(a6 + 64);
          v174 = v173 + 0x20000;
          v175 = *(a6 + 48);
          do
          {
            v176 = (506832829 * *(a3 + (v171 & a4))) >> 17;
            v177 = (v173 + 0x40000 + 4 * v175);
            v178 = *(v174 + 2 * v176);
            *(v174 + 2 * v176) = v175++;
            *(v173 + 196608 + v171) = v176;
            result = v171 - *(v173 + 4 * v176);
            if (result >= 0xFFFF)
            {
              result = 0xFFFFLL;
            }

            *v177 = result;
            v177[1] = v178;
            *(v173 + 4 * v176) = v171;
            v13 += 4;
            v171 += 4;
          }

          while (v171 < v172);
        }

LABEL_291:
        *(a6 + 48) = v175;
        goto LABEL_293;
      }

      v12 = a9;
      v14 = v226;
LABEL_293:
      a2 = v171;
      if (v171 + 4 >= v14)
      {
        goto LABEL_300;
      }
    }
  }

  v223 = a9;
  v171 = a2;
LABEL_300:
  *a8 = v13 + v14 - v171;
  *a10 += (v223 - v12) >> 4;
  return result;
}

unint64_t sub_100156560(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, double a9, int32x4_t a10, double a11, double a12, double a13, int32x4_t a14, uint64_t a15, void *a16, void *a17)
{
  v18 = a15;
  v250 = *(a5 + 16);
  v19 = *a8;
  v20 = a2 + result;
  v21 = a2 + result - 3;
  v238 = v21;
  if (result <= 3)
  {
    v21 = a2;
  }

  v241 = v21;
  v22 = *(a5 + 8);
  v23 = 64;
  if (*(a5 + 4) >= 9)
  {
    v23 = 512;
  }

  a10.i64[0] = *a7;
  v24 = vaddq_s32(vzip1q_s32(a10, a10), xmmword_1003E32D0);
  *(a7 + 1) = vaddq_s32(vdupq_lane_s32(*a7, 0), xmmword_1003E32C0);
  *(a7 + 2) = v24;
  *(a7 + 3) = vaddq_s32(vdupq_lane_s32(*a10.i8, 1), xmmword_1003E32E0);
  if (a2 + 4 < v20)
  {
    v240 = v23;
    v262 = (1 << v22) - 16;
    v25 = v23 + a2;
    v239 = 4 * v23;
    v237 = v20 - 4;
    v26 = a15;
    v247 = a5;
    v248 = a6;
    v254 = a3;
    v246 = a2 + result;
    v249 = a6 + 48;
    while (1)
    {
      v257 = v25;
      v259 = v19;
      v242 = v26;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = v20 - a2;
      if (a2 >= v262)
      {
        v32 = v262;
      }

      else
      {
        v32 = a2;
      }

      v263 = *(a5 + 80);
      v33 = *(a6 + 1080);
      v34 = v33 + 196608;
      result = a2 & a4;
      v35 = (a3 + (a2 & a4));
      v36 = (506832829 * *v35) >> 17;
      v252 = v31 & 7;
      v37 = 2020;
      v38 = 2020;
      do
      {
        v39 = a7[v28];
        v40 = a2 - v39;
        if ((!v28 || *(v34 + (a2 - v39)) == v36) && v32 >= v39 && v40 < a2)
        {
          v42 = a3 + (v40 & a4);
          if (v31 < 8)
          {
            v47 = 0;
            v48 = (a3 + (a2 & a4));
LABEL_32:
            v50 = v31 & 7;
            if ((v31 & 7) != 0)
            {
              v51 = v252 | v47;
              while (*(v42 + v47) == *v48)
              {
                ++v48;
                ++v47;
                if (!--v50)
                {
                  v47 = v51;
                  break;
                }
              }
            }
          }

          else
          {
            v43 = 0;
            v44 = v31 >> 3;
            while (1)
            {
              v45 = *&v35[v43];
              v46 = *(v42 + v43);
              if (v45 != v46)
              {
                break;
              }

              v43 += 8;
              if (!--v44)
              {
                v47 = v31 & 0xFFFFFFFFFFFFFFF8;
                v48 = &v35[v31 & 0xFFFFFFFFFFFFFFF8];
                goto LABEL_32;
              }
            }

            v47 = v43 + (__clz(__rbit64(v46 ^ v45)) >> 3);
          }

          if (v47 >= 2)
          {
            v49 = 135 * v47 + 1935;
            if (v37 < v49)
            {
              if (v28)
              {
                v49 -= ((0x1CA10u >> (v28 & 0xE)) & 0xE) + 39;
              }

              if (v37 < v49)
              {
                v30 = a7[v28];
                v38 = v49;
                v29 = v47;
                v27 = v47;
                v37 = v49;
              }
            }
          }
        }

        ++v28;
      }

      while (v28 != 16);
      v52 = v262;
      if (a2 + v250 < v262)
      {
        v52 = a2 + v250;
      }

      v255 = v52;
      v53 = (((506832829 * *v35) >> 16) >> 1) & 0x1FF;
      v54 = *(a6 + 1072);
      v55 = a2 - *(v33 + 4 * v36);
      v56 = *(v33 + 0x20000 + 2 * v36);
      v57 = v33 + 0x40000 + (v53 << 11);
      if (v54)
      {
        v58 = 0;
        v59 = *(v33 + 0x20000 + 2 * v36);
        v60 = a2 - *(v33 + 4 * v36);
        v260 = a2;
        do
        {
          v58 += v60;
          if (v58 > v32)
          {
            break;
          }

          if (v27 + result <= a4)
          {
            v61 = (a2 - v58) & a4;
            if (v61 + v27 <= a4 && *(v254 + v27 + result) == *(v254 + v61 + v27))
            {
              v62 = v254 + v61;
              if (v31 < 8)
              {
                v67 = v29;
                v68 = 0;
                v69 = v35;
LABEL_78:
                v77 = v31 & 7;
                if ((v31 & 7) != 0)
                {
                  v78 = v252 | v68;
                  while (*(v62 + v68) == *v69)
                  {
                    ++v69;
                    ++v68;
                    if (!--v77)
                    {
                      v68 = v78;
                      break;
                    }
                  }
                }
              }

              else
              {
                v63 = 0;
                v64 = v31 >> 3;
                while (1)
                {
                  v65 = *&v35[v63];
                  v66 = *(v62 + v63);
                  if (v65 != v66)
                  {
                    break;
                  }

                  v63 += 8;
                  if (!--v64)
                  {
                    v67 = v29;
                    v68 = v31 & 0xFFFFFFFFFFFFFFF8;
                    v69 = &v35[v31 & 0xFFFFFFFFFFFFFFF8];
                    goto LABEL_78;
                  }
                }

                v67 = v29;
                v68 = v63 + (__clz(__rbit64(v66 ^ v65)) >> 3);
              }

              v70 = 135 * v68 - 30 * (__clz(v58) ^ 0x1F) + 1920;
              if (v37 < v70)
              {
                v71 = v58;
              }

              else
              {
                v71 = v30;
              }

              if (v37 < v70)
              {
                v72 = v70;
              }

              else
              {
                v72 = v38;
              }

              if (v37 < v70)
              {
                v73 = v68;
              }

              else
              {
                v73 = v67;
              }

              if (v37 < v70)
              {
                v74 = v68;
              }

              else
              {
                v74 = v27;
              }

              if (v37 >= v70)
              {
                v70 = v37;
              }

              v75 = v68 >= 4;
              if (v68 < 4)
              {
                v29 = v67;
              }

              else
              {
                v30 = v71;
                v38 = v72;
                v29 = v73;
              }

              if (v75)
              {
                v27 = v74;
              }

              if (v75)
              {
                v37 = v70;
              }

              a2 = v260;
            }
          }

          v76 = (v57 + 4 * v59);
          v59 = v76[1];
          v60 = *v76;
          --v54;
        }

        while (v54);
      }

      v79 = *(v249 + 2 * v53);
      *(v249 + 2 * v53) = v79 + 1;
      v80 = v79 & 0x1FF;
      *(v34 + a2) = v36;
      if (v55 >= 0xFFFF)
      {
        v81 = -1;
      }

      else
      {
        v81 = v55;
      }

      v82 = (v57 + 4 * v80);
      *v82 = v81;
      v82[1] = v56;
      *(v33 + 4 * v36) = a2;
      *(v33 + 0x20000 + 2 * v36) = v80;
      a5 = v247;
      if (v38 == 2020)
      {
        a6 = v248;
        v83 = *(v248 + 1088);
        v85 = *(v83 + 8);
        v84 = *(v83 + 16);
        a3 = v254;
        if (v84 < v85 >> 7)
        {
          goto LABEL_219;
        }

        v86 = v30;
        v87 = 0;
        v88 = ((506832829 * *v35) >> 17) & 0x7FFE;
        v89 = *(v247 + 120);
        v90 = 1;
        result = v29;
        v91 = 2020;
        do
        {
          v92 = v90;
          *(v83 + 8) = ++v85;
          v93 = *(v89 + v88);
          if (!*(v89 + v88) || v31 < v93)
          {
            goto LABEL_91;
          }

          v95 = *(v247 + 88);
          v96 = *(v95 + 4 * v93 + 32);
          v97 = *(v95 + 168) + *(*(v247 + 112) + 2 * v88) * *(v89 + v88);
          v98 = (v97 + v96);
          if (v93 < 8)
          {
            v29 = 0;
LABEL_106:
            v104 = v93 & 7;
            if ((v93 & 7) != 0)
            {
              v105 = v29 | v104;
              while (v35[v29] == *v98)
              {
                ++v98;
                ++v29;
                if (!--v104)
                {
                  v29 = v105;
                  break;
                }
              }
            }
          }

          else
          {
            v99 = 0;
            v29 = v93 & 0xF8;
            v100 = (v97 + v29 + v96);
            while (1)
            {
              v101 = *&v98[v99];
              v102 = *&v35[v99];
              if (v101 != v102)
              {
                break;
              }

              v99 += 8;
              if (v29 == v99)
              {
                v98 = v100;
                goto LABEL_106;
              }
            }

            v29 = v99 + (__clz(__rbit64(v102 ^ v101)) >> 3);
          }

          if (v29 && v29 + *(v247 + 100) > v93 && (v94 = v255 + 1 + *(*(v247 + 112) + 2 * v88) + ((((*(v247 + 104) >> (6 * (v93 - v29))) & 0x3FLL) + 4 * (v93 - v29)) << *(v95 + v93)), v94 <= v263) && (v103 = __clz(v94) ^ 0x1F, 135 * v29 - 30 * v103 + 1920 >= v91))
          {
            v87 = v93 - v29;
            *(v83 + 16) = ++v84;
            v91 = 135 * v29 - 30 * v103 + 1920;
          }

          else
          {
LABEL_91:
            v94 = v86;
            v29 = result;
          }

          v90 = 0;
          ++v88;
          result = v29;
          v86 = v94;
        }

        while ((v92 & 1) != 0);
      }

      else
      {
        v91 = v38;
        v87 = 0;
        a6 = v248;
        a3 = v254;
        v94 = v30;
      }

      if (v91 < 0x7E5)
      {
LABEL_219:
        v25 = v257;
        v19 = v259 + 1;
        v182 = a2 + 1;
        if (a2 + 1 <= v257)
        {
          v18 = a15;
          v20 = v246;
        }

        else
        {
          v18 = a15;
          v20 = v246;
          if (v182 <= v257 + v239)
          {
            v206 = a2 + 9;
            if (a2 + 9 >= v238)
            {
              v206 = v238;
            }

            if (v182 < v206)
            {
              v207 = *(a6 + 1080);
              v208 = v207 + 0x20000;
              do
              {
                v209 = (506832829 * *(a3 + (v182 & a4))) >> 17;
                v210 = *(v249 + 2 * (v209 & 0x1FF));
                *(v249 + 2 * (v209 & 0x1FF)) = v210 + 1;
                v211 = v210 & 0x1FF;
                v212 = v182 - *(v207 + 4 * v209);
                result = v182;
                *(v207 + 196608 + v182) = v209;
                if (v212 >= 0xFFFF)
                {
                  LOWORD(v212) = -1;
                }

                v213 = (v207 + 0x40000 + ((v209 & 0x1FF) << 11) + 4 * v211);
                *v213 = v212;
                v214 = *(v208 + 2 * v209);
                *(v207 + 4 * v209) = v182;
                v213[1] = v214;
                *(v208 + 2 * v209) = v211;
                v19 += 2;
                v182 += 2;
              }

              while (v182 < v206);
            }
          }

          else
          {
            v183 = a2 + 17;
            if (a2 + 17 >= v237)
            {
              v183 = v237;
            }

            if (v182 < v183)
            {
              v184 = *(a6 + 1080);
              v185 = v184 + 0x20000;
              do
              {
                v186 = (506832829 * *(a3 + (v182 & a4))) >> 17;
                v187 = *(v249 + 2 * (v186 & 0x1FF));
                *(v249 + 2 * (v186 & 0x1FF)) = v187 + 1;
                v188 = v187 & 0x1FF;
                v189 = v182 - *(v184 + 4 * v186);
                result = v182;
                *(v184 + 196608 + v182) = v186;
                if (v189 >= 0xFFFF)
                {
                  LOWORD(v189) = -1;
                }

                v190 = (v184 + 0x40000 + ((v186 & 0x1FF) << 11) + 4 * v188);
                *v190 = v189;
                v191 = *(v185 + 2 * v186);
                *(v184 + 4 * v186) = v182;
                v190[1] = v191;
                *(v185 + 2 * v186) = v188;
                v19 += 4;
                v182 += 4;
              }

              while (v182 < v183);
            }
          }
        }

        v26 = v242;
        goto LABEL_298;
      }

      v244 = v87;
      v245 = v94;
      v258 = v91;
      v106 = 0;
      while (1)
      {
        v256 = v106;
        v107 = 0;
        v108 = 0;
        v109 = 0;
        --v31;
        v243 = v29;
        v110 = v29 - 1;
        if (v29 - 1 >= v31)
        {
          v110 = v31;
        }

        result = *(a5 + 4) >= 5 ? 0 : v110;
        v111 = a2 + 1;
        v261 = a2;
        v112 = a2 + 1 < v262 ? a2 + 1 : v262;
        v251 = *(a5 + 80);
        v264 = *(a6 + 1080);
        v113 = v264 + 196608;
        v114 = v111 & a4;
        v115 = (a3 + (v111 & a4));
        v116 = (506832829 * *v115) >> 17;
        v117 = 2020;
        v118 = 2020;
        do
        {
          v119 = a7[v107];
          v120 = v111 - v119;
          if ((!v107 || *(v113 + (v111 - v119)) == v116) && v112 >= v119 && v120 < v111)
          {
            v122 = a3 + (v120 & a4);
            if (v31 < 8)
            {
              v129 = 0;
              v126 = (a3 + (v111 & a4));
LABEL_144:
              v131 = v31 & 7;
              if ((v31 & 7) != 0)
              {
                do
                {
                  if (*(v122 + v129) != *v126)
                  {
                    break;
                  }

                  v126 = (v126 + 1);
                  ++v129;
                  --v131;
                }

                while (v131);
              }
            }

            else
            {
              v123 = 0;
              v124 = (a3 + (v120 & a4));
              v125 = v31 >> 3;
              v126 = (a3 + (v111 & a4));
              while (1)
              {
                v128 = *v124++;
                v127 = v128;
                if (*v126 != v128)
                {
                  break;
                }

                ++v126;
                v123 -= 8;
                if (!--v125)
                {
                  v129 = -v123;
                  goto LABEL_144;
                }
              }

              v129 = (__clz(__rbit64(v127 ^ *v126)) >> 3) - v123;
            }

            if (v129 >= 2)
            {
              v130 = 135 * v129 + 1935;
              if (v117 < v130)
              {
                if (v107)
                {
                  v130 -= ((0x1CA10u >> (v107 & 0xE)) & 0xE) + 39;
                }

                if (v117 < v130)
                {
                  v109 = v129;
                  v108 = a7[v107];
                  v118 = v130;
                  result = v129;
                  v117 = v130;
                }
              }
            }
          }

          ++v107;
        }

        while (v107 != 16);
        v132 = v262;
        if (v111 + v250 < v262)
        {
          v132 = v111 + v250;
        }

        v253 = v132;
        v133 = v264 + 0x20000;
        v134 = (((506832829 * *v115) >> 16) >> 1) & 0x1FF;
        v135 = *(a6 + 1072);
        v136 = v111 - *(v264 + 4 * v116);
        v137 = *(v264 + 0x20000 + 2 * v116);
        v138 = v264 + 0x40000 + (v134 << 11);
        if (v135)
        {
          v139 = 0;
          v140 = *(v133 + 2 * v116);
          v141 = v111 - *(v264 + 4 * v116);
          do
          {
            v139 += v141;
            if (v139 > v112)
            {
              break;
            }

            if (result + v114 <= a4)
            {
              v142 = (v111 - v139) & a4;
              if (v142 + result <= a4 && *(a3 + result + v114) == *(a3 + v142 + result))
              {
                v143 = a3 + v142;
                if (v31 < 8)
                {
                  v150 = 0;
                  v147 = v115;
LABEL_181:
                  v157 = v31 & 7;
                  if ((v31 & 7) != 0)
                  {
                    do
                    {
                      if (*(v143 + v150) != *v147)
                      {
                        break;
                      }

                      v147 = (v147 + 1);
                      ++v150;
                      --v157;
                    }

                    while (v157);
                  }
                }

                else
                {
                  v144 = 0;
                  v145 = (a3 + v142);
                  v146 = v31 >> 3;
                  v147 = v115;
                  while (1)
                  {
                    v149 = *v145++;
                    v148 = v149;
                    if (*v147 != v149)
                    {
                      break;
                    }

                    ++v147;
                    v144 -= 8;
                    if (!--v146)
                    {
                      v150 = -v144;
                      a3 = v254;
                      goto LABEL_181;
                    }
                  }

                  v150 = (__clz(__rbit64(v148 ^ *v147)) >> 3) - v144;
                  a3 = v254;
                }

                v151 = 135 * v150 - 30 * (__clz(v139) ^ 0x1F) + 1920;
                if (v117 < v151)
                {
                  v152 = v150;
                }

                else
                {
                  v152 = v109;
                }

                if (v117 < v151)
                {
                  v153 = v139;
                }

                else
                {
                  v153 = v108;
                }

                if (v117 < v151)
                {
                  v154 = v151;
                }

                else
                {
                  v154 = v118;
                }

                if (v117 < v151)
                {
                  v155 = v150;
                }

                else
                {
                  v155 = result;
                }

                if (v117 >= v151)
                {
                  v151 = v117;
                }

                if (v150 >= 4)
                {
                  v109 = v152;
                  v108 = v153;
                  v118 = v154;
                  result = v155;
                  v117 = v151;
                }
              }
            }

            v156 = (v138 + 4 * v137);
            v137 = v156[1];
            v141 = *v156;
            --v135;
          }

          while (v135);
        }

        else
        {
          v140 = *(v133 + 2 * v116);
        }

        v158 = *(v249 + 2 * v134);
        *(v249 + 2 * v134) = v158 + 1;
        v159 = v158 & 0x1FF;
        *(v113 + v111) = v116;
        if (v136 >= 0xFFFF)
        {
          LOWORD(v136) = -1;
        }

        v160 = (v138 + 4 * v159);
        *v160 = v136;
        v160[1] = v140;
        *(v264 + 4 * v116) = v111;
        *(v264 + 0x20000 + 2 * v116) = v159;
        if (v118 == 2020)
        {
          a5 = v247;
          a6 = v248;
          v161 = *(v248 + 1088);
          result = *(v161 + 8);
          v162 = *(v161 + 16);
          v163 = 0;
          if (v162 >= result >> 7)
          {
            v164 = ((506832829 * *v115) >> 17) & 0x7FFE;
            v165 = *(v247 + 120);
            v166 = 1;
            v118 = 2020;
            v167 = v108;
            v168 = v109;
            do
            {
              v169 = v166;
              *(v161 + 8) = ++result;
              v170 = *(v165 + v164);
              if (!*(v165 + v164) || v31 < v170)
              {
                goto LABEL_199;
              }

              v171 = *(v247 + 88);
              v172 = *(v171 + 4 * v170 + 32);
              v173 = *(v171 + 168) + *(*(v247 + 112) + 2 * v164) * *(v165 + v164);
              v174 = (v173 + v172);
              if (v170 < 8)
              {
                v109 = 0;
LABEL_214:
                v180 = v170 & 7;
                if ((v170 & 7) != 0)
                {
                  v181 = v109 | v180;
                  while (*(v115 + v109) == *v174)
                  {
                    ++v174;
                    ++v109;
                    if (!--v180)
                    {
                      v109 = v181;
                      break;
                    }
                  }
                }
              }

              else
              {
                v175 = 0;
                v109 = v170 & 0xF8;
                v176 = (v173 + v109 + v172);
                while (1)
                {
                  v177 = *&v174[v175];
                  v178 = *&v115[v175 / 4];
                  if (v177 != v178)
                  {
                    break;
                  }

                  v175 += 8;
                  if (v109 == v175)
                  {
                    v174 = v176;
                    goto LABEL_214;
                  }
                }

                v109 = v175 + (__clz(__rbit64(v178 ^ v177)) >> 3);
              }

              if (v109 && v109 + *(v247 + 100) > v170 && (v108 = v253 + 1 + *(*(v247 + 112) + 2 * v164) + ((((*(v247 + 104) >> (6 * (v170 - v109))) & 0x3FLL) + 4 * (v170 - v109)) << *(v171 + v170)), v108 <= v251) && (v179 = __clz(v108) ^ 0x1F, 135 * v109 - 30 * v179 + 1920 >= v118))
              {
                v163 = v170 - v109;
                *(v161 + 16) = ++v162;
                v118 = 135 * v109 - 30 * v179 + 1920;
              }

              else
              {
LABEL_199:
                v109 = v168;
                v108 = v167;
              }

              v166 = 0;
              ++v164;
              v167 = v108;
              v168 = v109;
            }

            while ((v169 & 1) != 0);
          }

          else
          {
            v118 = 2020;
          }
        }

        else
        {
          v163 = 0;
          a5 = v247;
          a6 = v248;
        }

        if (v118 < v258 + 175)
        {
          break;
        }

        ++v259;
        if (v256 <= 2)
        {
          v106 = v256 + 1;
          v245 = v108;
          v258 = v118;
          v244 = v163;
          v29 = v109;
          a2 = v111;
          if (v261 + 5 < v246)
          {
            continue;
          }
        }

        goto LABEL_234;
      }

      v111 = v261;
      v192 = v261 + v250;
      if (v261 + v250 >= v262)
      {
        v192 = v262;
      }

      v253 = v192;
      v108 = v245;
      v163 = v244;
      v109 = v243;
LABEL_234:
      v20 = v246;
      if (v108 > v253)
      {
        goto LABEL_235;
      }

      v196 = *a7;
      if (v108 != v196)
      {
        break;
      }

      v193 = 0;
LABEL_241:
      *v242 = v259;
      *(v242 + 4) = v109 | (v163 << 25);
      v197 = *(a5 + 68);
      v198 = v197 + 16;
      if (v197 + 16 <= v193)
      {
        v200 = *(a5 + 64);
        v201 = v193 - v197 + (4 << v200) - 16;
        v202 = (__clz(v201) ^ 0x1F) - 1;
        v203 = ((v201 >> v202) & 1 | 2) << v202;
        v193 = ((v201 & ~(-1 << v200)) + v198 + ((((v201 >> v202) & 1 | (2 * (v202 - v200))) + 65534) << v200)) | ((v202 - v200) << 10);
        v199 = (v201 - v203) >> v200;
      }

      else
      {
        LODWORD(v199) = 0;
      }

      *(v242 + 14) = v193;
      *(v242 + 8) = v199;
      if (v259 > 5)
      {
        if (v259 > 0x81)
        {
          if (v259 > 0x841)
          {
            if (v259 >> 1 >= 0xC21)
            {
              if (v259 < 0x5842)
              {
                LOWORD(v204) = 22;
              }

              else
              {
                LOWORD(v204) = 23;
              }
            }

            else
            {
              LOWORD(v204) = 21;
            }
          }

          else
          {
            v204 = (__clz(v259 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v205 = (__clz(v259 - 2) ^ 0x1F) - 1;
          v204 = ((v259 - 2) >> v205) + 2 * v205 + 2;
        }
      }

      else
      {
        LOWORD(v204) = v259;
      }

      v220 = v163 + v109;
      if ((v163 + v109) > 9)
      {
        if (v220 > 0x85)
        {
          if (v220 > 0x845)
          {
            LOWORD(v220) = 23;
          }

          else
          {
            v220 = (__clz(v220 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v221 = v220 - 6;
          v222 = (__clz(v221) ^ 0x1F) - 1;
          v220 = (v221 >> v222) + 2 * v222 + 4;
        }
      }

      else
      {
        LOWORD(v220) = v220 - 2;
      }

      v223 = v220 & 7 | (8 * (v204 & 7));
      if ((v193 & 0x3FF) != 0 || v204 > 7u || v220 > 0xFu)
      {
        v225 = 3 * (v204 >> 3) + ((v220 & 0xFFF8) >> 3);
        v224 = ((((0x520D40u >> (2 * v225)) & 0xC0) + (v225 << 6)) | v223) + 64;
      }

      else
      {
        LOWORD(v224) = v223 | 0x40;
        if ((v220 & 0xFFF8) == 0)
        {
          LOWORD(v224) = v220 & 7 | (8 * (v204 & 7));
        }
      }

      *(v242 + 12) = v224;
      *a17 += v259;
      v226 = v111 + 2;
      v182 = v111 + v109;
      v227 = v241;
      if (v111 + v109 < v241)
      {
        v227 = v111 + v109;
      }

      if (v108 < v109 >> 2)
      {
        v228 = v182 - 4 * v108;
        if (v226 > v228)
        {
          v228 = v111 + 2;
        }

        if (v227 >= v228)
        {
          v226 = v228;
        }

        else
        {
          v226 = v227;
        }
      }

      v25 = v240 + 2 * v109 + v111;
      v26 = v242 + 16;
      if (v226 < v227)
      {
        v229 = *(a6 + 1080);
        v230 = v229 + 0x20000;
        do
        {
          v231 = (506832829 * *(a3 + (v226 & a4))) >> 17;
          v232 = *(v249 + 2 * (v231 & 0x1FF));
          *(v249 + 2 * (v231 & 0x1FF)) = v232 + 1;
          v233 = v232 & 0x1FF;
          v234 = v226 - *(v229 + 4 * v231);
          *(v229 + 196608 + v226) = v231;
          if (v234 >= 0xFFFF)
          {
            LOWORD(v234) = -1;
          }

          v235 = (v229 + 0x40000 + ((v231 & 0x1FF) << 11) + 4 * v233);
          *v235 = v234;
          result = *(v230 + 2 * v231);
          v235[1] = result;
          *(v229 + 4 * v231) = v226;
          *(v230 + 2 * v231) = v233;
          ++v226;
        }

        while (v227 != v226);
      }

      v19 = 0;
      v18 = a15;
LABEL_298:
      a2 = v182;
      if (v182 + 4 >= v20)
      {
        goto LABEL_305;
      }
    }

    v215 = a7[1];
    if (v108 == v215)
    {
      v193 = 1;
      goto LABEL_236;
    }

    v216 = v108 + 3 - v196;
    if (v216 > 6)
    {
      v219 = v108 + 3 - v215;
      if (v219 > 6)
      {
        if (v108 == a7[2])
        {
          v193 = 2;
        }

        else if (v108 == a7[3])
        {
          v193 = 3;
        }

        else
        {
LABEL_235:
          v193 = v108 + 15;
        }

LABEL_236:
        if (v108 <= v253 && v193)
        {
          a7[3] = a7[2];
          v24.i64[0] = *a7;
          *(a7 + 1) = *a7;
          *a7 = v108;
          a14.i32[0] = v108;
          *(a7 + 1) = vaddq_s32(vdupq_n_s32(v108), xmmword_1003E32C0);
          a7[8] = v108 - 3;
          v194 = vzip1q_s32(a14, v24);
          a14 = vdupq_lane_s32(*v194.i8, 1);
          v195 = vaddq_s32(vzip1q_s32(v194, a14), xmmword_1003E32F0);
          *a14.i8 = vdup_lane_s32(*v24.i8, 0);
          *(a7 + 9) = v195;
          *(a7 + 13) = vadd_s32(*a14.i8, 0xFFFFFFFD00000002);
          a7[15] = v24.i32[0] + 3;
        }

        goto LABEL_241;
      }

      v217 = 4 * v219;
      v218 = 266017486;
    }

    else
    {
      v217 = 4 * v216;
      v218 = 158663784;
    }

    v193 = (v218 >> v217) & 0xF;
    goto LABEL_236;
  }

  v26 = a15;
  v182 = a2;
LABEL_305:
  *a8 = v19 + v20 - v182;
  *a16 += (v26 - v18) >> 4;
  return result;
}

unint64_t sub_100157718(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *i, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v11 = a2;
  v12 = *a8;
  v13 = a2 + result;
  v14 = a2 + result - 7;
  v115 = v14;
  if (result <= 7)
  {
    v14 = a2;
  }

  v118 = v14;
  if (*(a5 + 4) >= 9)
  {
    v15 = 512;
  }

  else
  {
    v15 = 64;
  }

  if (a2 + 8 < v13)
  {
    v117 = v15;
    v124 = (1 << *(a5 + 8)) - 16;
    v116 = *(a5 + 16);
    v16 = v15 + a2;
    result = *(a6 + 56);
    v114 = 4 * v15;
    v17 = vdupq_n_s64(0xFFFFFuLL);
    v119 = a9;
    v120 = i;
    v121 = a5;
    v122 = v13;
    while (1)
    {
      v18 = v13 - v11;
      if (v11 >= v124)
      {
        v19 = v124;
      }

      else
      {
        v19 = v11;
      }

      v20 = (a3 + (v11 & a4));
      v21 = *v20;
      v22 = *i;
      if (v11 < v22)
      {
        goto LABEL_22;
      }

      v23 = (a3 + (a4 & (v11 - v22)));
      if (v21 != *v23)
      {
        goto LABEL_22;
      }

      if (v18 < 8)
      {
        v25 = 0;
        v26 = (a3 + (v11 & a4));
LABEL_181:
        v111 = v18 & 7;
        if ((v18 & 7) != 0)
        {
          v112 = v25 | v111;
          while (v23[v25] == *v26)
          {
            ++v26;
            ++v25;
            if (!--v111)
            {
              v25 = v112;
              break;
            }
          }
        }
      }

      else
      {
        v24 = 0;
        v25 = v18 & 0xFFFFFFFFFFFFFFF8;
        v26 = v20 + (v18 & 0xFFFFFFFFFFFFFFF8);
        v27 = v18 >> 3;
        while (1)
        {
          v28 = v20[v24];
          v29 = *&v23[v24 * 8];
          if (v28 != v29)
          {
            break;
          }

          ++v24;
          if (!--v27)
          {
            goto LABEL_181;
          }
        }

        v25 = v24 * 8 + (__clz(__rbit64(v29 ^ v28)) >> 3);
      }

      if (v25 >= 4 && (v30 = 135 * v25 + 1935, v30 >= 0x7E5))
      {
        v125 = *i;
        v21 = *(v20 + v25);
      }

      else
      {
LABEL_22:
        v125 = 0;
        v25 = 0;
        v30 = 2020;
      }

      v31 = 0;
      v32 = vdupq_n_s64((0x35A7BD1E35A7BD00 * *v20) >> 44);
      v126 = vandq_s8(vaddq_s64(v32, xmmword_1003E32A0), v17);
      v127 = vandq_s8(vaddq_s64(v32, xmmword_1003E32B0), v17);
      do
      {
        v33 = *(result + 4 * v126.i64[v31]);
        v34 = v11 - v33;
        v35 = a3 + (v33 & a4);
        if (v21 == *(v35 + v25) && v11 != v33 && v34 <= v19)
        {
          if (v18 < 8)
          {
            v42 = 0;
            v43 = (a3 + (v11 & a4));
LABEL_43:
            if ((v18 & 7) != 0)
            {
              v45 = v18 & 7 | v42;
              v46 = v18 & 7;
              while (*(v35 + v42) == *v43)
              {
                ++v43;
                ++v42;
                if (!--v46)
                {
                  v42 = v45;
                  break;
                }
              }

              v13 = v122;
            }
          }

          else
          {
            v38 = 0;
            v39 = v18 >> 3;
            while (1)
            {
              v40 = v20[v38];
              v41 = *(v35 + v38 * 8);
              if (v40 != v41)
              {
                break;
              }

              ++v38;
              if (!--v39)
              {
                v42 = v18 & 0xFFFFFFFFFFFFFFF8;
                v43 = v20 + (v18 & 0xFFFFFFFFFFFFFFF8);
                goto LABEL_43;
              }
            }

            v42 = v38 * 8 + (__clz(__rbit64(v41 ^ v40)) >> 3);
          }

          if (v42 >= 4)
          {
            v44 = __clz(v34) ^ 0x1F;
            if (v30 < 135 * v42 - 30 * v44 + 1920)
            {
              v21 = *(v20 + v42);
              v125 = v34;
              v30 = 135 * v42 - 30 * v44 + 1920;
              v25 = v42;
            }
          }
        }

        ++v31;
      }

      while (v31 != 4);
      *(result + 4 * *(v126.i64 + (v11 & 0x18))) = v11;
      if (v30 < 0x7E5)
      {
        ++v12;
        v83 = v11 + 1;
        if (v11 + 1 <= v16)
        {
          i = v120;
        }

        else if (v83 <= v16 + v114)
        {
          v97 = v11 + 9;
          if (v11 + 9 >= v115)
          {
            v97 = v115;
          }

          for (i = v120; v83 < v97; v83 += 2)
          {
            *(result + 4 * (((((0x35A7BD1E35A7BD00 * *(a3 + (v83 & a4))) >> 32) >> 12) + (v83 & 0x18)) & 0xFFFFF)) = v83;
            v12 += 2;
          }
        }

        else
        {
          v84 = v11 + 17;
          if (v11 + 17 >= v115)
          {
            v84 = v115;
          }

          for (i = v120; v83 < v84; v83 += 4)
          {
            *(result + 4 * (((((0x35A7BD1E35A7BD00 * *(a3 + (v83 & a4))) >> 32) >> 12) + (v83 & 0x18)) & 0xFFFFF)) = v83;
            v12 += 4;
          }
        }

        goto LABEL_174;
      }

      v47 = 0;
      v123 = *v120;
      while (1)
      {
        --v18;
        v48 = v25 - 1;
        if (v25 - 1 >= v18)
        {
          v48 = v18;
        }

        v49 = *(a5 + 4) >= 5 ? 0 : v48;
        v50 = v11 + 1;
        v51 = v11 + 1 < v124 ? v11 + 1 : v124;
        v52 = (a3 + (v50 & a4));
        v53 = *(v52 + v49);
        if (v50 < v123)
        {
          goto LABEL_70;
        }

        v54 = a3 + (a4 & (v50 - v123));
        if (v53 != *(v54 + v49))
        {
          goto LABEL_70;
        }

        if (v18 < 8)
        {
          v61 = 0;
          v58 = (a3 + (v50 & a4));
LABEL_101:
          v82 = v18 & 7;
          if ((v18 & 7) != 0)
          {
            do
            {
              if (*(v54 + v61) != *v58)
              {
                break;
              }

              v58 = (v58 + 1);
              ++v61;
              --v82;
            }

            while (v82);
          }
        }

        else
        {
          v55 = 0;
          v56 = (a3 + (a4 & (v50 - v123)));
          v57 = v18 >> 3;
          v58 = (a3 + (v50 & a4));
          while (1)
          {
            v60 = *v56++;
            v59 = v60;
            if (*v58 != v60)
            {
              break;
            }

            ++v58;
            v55 -= 8;
            if (!--v57)
            {
              v61 = -v55;
              goto LABEL_101;
            }
          }

          v61 = (__clz(__rbit64(v59 ^ *v58)) >> 3) - v55;
        }

        if (v61 >= 4 && (v62 = 135 * v61 + 1935, v62 >= 0x7E5))
        {
          v53 = *(v52 + v61);
          v49 = v61;
          v63 = v123;
        }

        else
        {
LABEL_70:
          v63 = 0;
          v62 = 2020;
        }

        v64 = 0;
        v65 = vdupq_n_s64((0x35A7BD1E35A7BD00 * *v52) >> 44);
        v66 = vdupq_n_s64(0xFFFFFuLL);
        v126 = vandq_s8(vaddq_s64(v65, xmmword_1003E32A0), v66);
        v127 = vandq_s8(vaddq_s64(v65, xmmword_1003E32B0), v66);
        do
        {
          v67 = *(result + 4 * v126.i64[v64]);
          v68 = v50 - v67;
          v69 = a3 + (v67 & a4);
          if (v53 == *(v69 + v49) && v50 != v67 && v68 <= v51)
          {
            if (v18 < 8)
            {
              v78 = 0;
              v75 = (a3 + (v50 & a4));
LABEL_91:
              if ((v18 & 7) != 0)
              {
                v80 = v18 & 7;
                do
                {
                  if (*(v69 + v78) != *v75)
                  {
                    break;
                  }

                  v75 = (v75 + 1);
                  ++v78;
                  --v80;
                }

                while (v80);
              }
            }

            else
            {
              v72 = 0;
              v73 = (a3 + (v67 & a4));
              v74 = v18 >> 3;
              v75 = (a3 + (v50 & a4));
              while (1)
              {
                v77 = *v73++;
                v76 = v77;
                if (*v75 != v77)
                {
                  break;
                }

                ++v75;
                v72 -= 8;
                if (!--v74)
                {
                  v78 = -v72;
                  goto LABEL_91;
                }
              }

              v78 = (__clz(__rbit64(v76 ^ *v75)) >> 3) - v72;
            }

            if (v78 >= 4)
            {
              v79 = __clz(v68) ^ 0x1F;
              if (v62 < 135 * v78 - 30 * v79 + 1920)
              {
                v53 = *(v52 + v78);
                v49 = v78;
                v63 = v68;
                v62 = 135 * v78 - 30 * v79 + 1920;
              }
            }
          }

          ++v64;
        }

        while (v64 != 4);
        *(result + 4 * *(v126.i64 + (v50 & 0x18))) = v50;
        if (v62 < v30 + 175)
        {
          break;
        }

        ++v12;
        a5 = v121;
        v13 = v122;
        if (v47 <= 2)
        {
          v81 = v11 + 9;
          ++v47;
          v125 = v63;
          v30 = v62;
          v25 = v49;
          ++v11;
          if (v81 < v122)
          {
            continue;
          }
        }

        goto LABEL_113;
      }

      v63 = v125;
      v49 = v25;
      v50 = v11;
      a5 = v121;
      v13 = v122;
LABEL_113:
      v85 = v50 + v116;
      if (v50 + v116 >= v124)
      {
        v85 = v124;
      }

      i = v120;
      if (v63 > v85)
      {
        goto LABEL_116;
      }

      v90 = *v120;
      if (v63 != v90)
      {
        break;
      }

      LOWORD(v86) = 0;
      LODWORD(v89) = 0;
      *v119 = v12;
      *(v119 + 4) = v49;
LABEL_126:
      *(v119 + 14) = v86;
      *(v119 + 8) = v89;
      if (v12 > 5)
      {
        if (v12 > 0x81)
        {
          if (v12 > 0x841)
          {
            if (v12 >> 1 >= 0xC21)
            {
              if (v12 < 0x5842)
              {
                LOWORD(v95) = 22;
              }

              else
              {
                LOWORD(v95) = 23;
              }
            }

            else
            {
              LOWORD(v95) = 21;
            }
          }

          else
          {
            v95 = (__clz(v12 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v96 = (__clz(v12 - 2) ^ 0x1F) - 1;
          v95 = ((v12 - 2) >> v96) + 2 * v96 + 2;
        }
      }

      else
      {
        LOWORD(v95) = v12;
      }

      if (v49 > 9)
      {
        if (v49 > 0x85)
        {
          if (v49 > 0x845)
          {
            LOWORD(v103) = 23;
          }

          else
          {
            v103 = (__clz(v49 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v104 = v49 - 6;
          v105 = __clz(v104);
          v103 = (v104 >> ((v105 ^ 0x1F) - 1)) + 2 * ((v105 ^ 0x1F) - 1) + 4;
        }
      }

      else
      {
        LOWORD(v103) = v49 - 2;
      }

      v106 = v103 & 7 | (8 * (v95 & 7));
      if ((v86 & 0x3FF) != 0 || v95 > 7u || v103 > 0xFu)
      {
        v108 = 3 * (v95 >> 3) + ((v103 & 0xFFF8) >> 3);
        v107 = ((((0x520D40u >> (2 * v108)) & 0xC0) + (v108 << 6)) | v106) + 64;
      }

      else
      {
        LOWORD(v107) = v106 | 0x40;
        if ((v103 & 0xFFF8) == 0)
        {
          LOWORD(v107) = v106;
        }
      }

      *(v119 + 12) = v107;
      *a11 += v12;
      v109 = v50 + 2;
      v83 = v50 + v49;
      v110 = v118;
      if (v50 + v49 < v118)
      {
        v110 = v50 + v49;
      }

      if (v63 < v49 >> 2)
      {
        if (v109 <= v83 - 4 * v63)
        {
          v109 = v83 - 4 * v63;
        }

        if (v110 < v109)
        {
          v109 = v110;
        }
      }

      v16 = v117 + 2 * v49 + v50;
      v119 += 16;
      if (v109 >= v110)
      {
        v12 = 0;
      }

      else
      {
        do
        {
          *(result + 4 * (((((0x35A7BD1E35A7BD00 * *(a3 + (v109 & a4))) >> 32) >> 12) + (v109 & 0x18)) & 0xFFFFF)) = v109;
          ++v109;
        }

        while (v110 != v109);
        v12 = 0;
      }

LABEL_174:
      v11 = v83;
      if (v83 + 8 >= v13)
      {
        goto LABEL_187;
      }
    }

    v98 = v120[1];
    if (v63 == v98)
    {
      v86 = 1;
      goto LABEL_117;
    }

    v99 = v63 + 3;
    v100 = v63 + 3 - v90;
    if (v100 > 6)
    {
      if (v99 - v98 > 6)
      {
        if (v63 == v120[2])
        {
          v86 = 2;
        }

        else if (v63 == v120[3])
        {
          v86 = 3;
        }

        else
        {
LABEL_116:
          v86 = v63 + 15;
        }

LABEL_117:
        if (v63 <= v85 && v86)
        {
          v120[3] = v120[2];
          *(v120 + 1) = *v120;
          *v120 = v63;
        }

        *v119 = v12;
        *(v119 + 4) = v49;
        v87 = *(a5 + 68);
        v88 = v87 + 16;
        if (v87 + 16 <= v86)
        {
          v91 = *(a5 + 64);
          v92 = v86 - v87 + (4 << v91) - 16;
          v93 = (__clz(v92) ^ 0x1F) - 1;
          v94 = ((v92 >> v93) & 1 | 2) << v93;
          v86 = ((v92 & ~(-1 << v91)) + v88 + ((((v92 >> v93) & 1 | (2 * (v93 - v91))) + 65534) << v91)) | ((v93 - v91) << 10);
          v89 = (v92 - v94) >> v91;
        }

        else
        {
          LODWORD(v89) = 0;
        }

        goto LABEL_126;
      }

      v101 = 4 * (v99 - v98);
      v102 = 266017486;
    }

    else
    {
      v101 = 4 * v100;
      v102 = 158663784;
    }

    v86 = (v102 >> v101) & 0xF;
    goto LABEL_117;
  }

  v119 = a9;
  v83 = a2;
LABEL_187:
  *a8 = v12 + v13 - v83;
  *a10 += (v119 - a9) >> 4;
  return result;
}