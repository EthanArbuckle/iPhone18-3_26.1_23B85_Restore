uint64_t sub_1000CE1D4(int a1)
{
  v1 = (a1 - 1024);
  if ((a1 - 1024) <= 0x5F)
  {
    return dword_1000F2AC0[v1 >> 4];
  }

  if (v1 == 135)
  {
    return 0;
  }

  if (v1 <= 0x81)
  {
    return (a1 & 1) == 0;
  }

  if (v1 < 0x8A)
  {
    return 0;
  }

  if (v1 <= 0xBF)
  {
    return (a1 & 1) == 0;
  }

  if (v1 != 192 && v1 <= 0xCE)
  {
    return a1 & 1;
  }

  if (v1 >= 0xD0)
  {
    return (a1 & 1) == 0;
  }

  return v1 == 192;
}

uint64_t sub_1000CE268(uint64_t result)
{
  if ((result - 1024) > 0x5F)
  {
    if ((result - 1024) == 135)
    {
      return 1159;
    }

    else if ((result - 1024) > 0x81u)
    {
      if ((result - 1024) < 0x8Au)
      {
        return result;
      }

      if ((result - 1024) > 0xBFu)
      {
        v2 = (result - 1024);
        if (v2 == 192 || v2 > 0xCE)
        {
          if (v2 <= 0xCF)
          {
            LOWORD(result) = 1231;
          }

          else
          {
            LOWORD(result) = result | 1;
          }

          return result;
        }

        else
        {
          return ((result & 1) + result);
        }
      }

      else
      {
        return result | 1u;
      }
    }

    else
    {
      return result | 1u;
    }
  }

  else
  {
    v1 = (result - 1024) >> 4;
    if ((v1 - 3) < 3)
    {
      return result;
    }

    if ((v1 - 1) >= 2)
    {
      return (result + 80);
    }

    else
    {
      return (result + 32);
    }
  }
}

uint64_t sub_1000CE338(uint64_t result)
{
  if ((result - 1024) > 0x5F)
  {
    if ((result - 1024) == 135)
    {
      return 1159;
    }

    if ((result - 1024) <= 0x81u)
    {
      return result & 0x4FE;
    }

    if ((result - 1024) < 0x8Au)
    {
      return result;
    }

    if ((result - 1024) <= 0xBFu)
    {
      return result & 0x4FE;
    }

    v3 = (result - 1024);
    if (v3 == 192 || v3 > 0xCE)
    {
      if (v3 <= 0xCF)
      {
        LOWORD(result) = 1216;
      }

      else
      {
        LOWORD(result) = result & 0xFFFE;
      }

      return result;
    }

    else
    {
      return (result + (result & 1) - 1);
    }
  }

  else
  {
    v1 = (result - 1024) >> 4;
    if (v1 - 3 >= 2)
    {
      v2 = result - 80;
    }

    else
    {
      v2 = result - 32;
    }

    if (v1 >= 3)
    {
      LOWORD(result) = v2;
    }

    return result;
  }
}

uint64_t sub_1000CE4B4(unsigned __int16 a1)
{
  if ((a1 + 223) >= 0x1Au)
  {
    return a1;
  }

  else
  {
    return (a1 + 32);
  }
}

uint64_t sub_1000CE4D0(unsigned __int16 a1)
{
  if ((a1 + 191) >= 0x1Au)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

BOOL sub_1000CE4EC(__int16 a1)
{
  if (vmaxv_u16(vcgt_u16(0x1E003A001A001ALL, vadd_s16(vdup_n_s16(a1), 0x5F009A00BF00DFLL))))
  {
    return 1;
  }

  return (a1 + 62) < 0x1Bu && (a1 + 54) < 0xFFFEu && (a1 & 0xFFF6) != 65488;
}

uint64_t sub_1000CE550(_BYTE *a1, _DWORD *a2)
{
  v3 = a1;
  v12 = 0;
  if (a2)
  {
    *a2 = 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    v5 = 0;
LABEL_26:
    if (a2)
    {
      *a2 = v5;
    }

    return 1;
  }

  v5 = 0;
  while (1)
  {
    if ((v4 & 0x80) == 0)
    {
      v6 = 1;
      goto LABEL_18;
    }

    result = 0;
    if (v4 == 255 || (v4 & 0xC0) == 0x80)
    {
      return result;
    }

    v6 = byte_1000F2AD8[v4];
    if ((v4 & 0xC0) == 0xC0)
    {
      break;
    }

LABEL_17:
    if ((~v4 & 0xF0) == 0)
    {
      return 0;
    }

LABEL_18:
    sub_1000CE6A4(v3, &v12);
    if (v6 == 2 && v12 < 0x80u)
    {
      return 0;
    }

    if (v6 == 3 && v12 < 0x800u)
    {
      return 0;
    }

    v3 += v6;
    ++v5;
    v4 = *v3;
    if (!*v3)
    {
      goto LABEL_26;
    }
  }

  if (v6 <= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = byte_1000F2AD8[v4];
  }

  v9 = v8 - 1;
  v10 = v3 + 1;
  while (1)
  {
    v11 = *v10++;
    if ((v11 & 0xC0) != 0x80)
    {
      return 0;
    }

    if (!--v9)
    {
      goto LABEL_17;
    }
  }
}

uint64_t sub_1000CE6A4(_BYTE *a1, _WORD *a2)
{
  *a2 = 0;
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  LOBYTE(v3) = *a1;
  v4 = byte_1000F2AD8[v2];
  v18 = *a1;
  if ((v2 & 0x80000000) == 0)
  {
LABEL_3:
    v3 = v3;
    v4 = 1;
LABEL_4:
    *a2 = v3;
    return v4;
  }

  result = 0xFFFFFFFFLL;
  if (v2 != -1)
  {
    v7 = v2 & 0xC0;
    if (v7 != 128)
    {
      if (v7 == 192)
      {
        if (v4 <= 2)
        {
          v8 = 2;
        }

        else
        {
          v8 = v4;
        }

        v9 = v8 - 1;
        v10 = v19;
        v11 = a1 + 1;
        do
        {
          v12 = *v11++;
          *v10 = v12;
          if ((v12 & 0xC0) != 0x80)
          {
            return 0xFFFFFFFFLL;
          }

          ++v10;
          --v9;
        }

        while (v9);
        v13 = &v18;
        v19[v8 - 1] = 0;
        result = 0xFFFFFFFFLL;
        if (v4 <= 3)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v13 = &v18;
        v19[0] = 0;
        result = 0xFFFFFFFFLL;
        if (v4 <= 3)
        {
LABEL_21:
          if (v4 == 1)
          {
            LOBYTE(v3) = v18;
            goto LABEL_3;
          }

          if (v4 != 2)
          {
            if (v4 == 3)
            {
              v13 = v19;
              v3 = v18 & 0xF;
              goto LABEL_33;
            }

            return result;
          }

          v13 = v19;
          v3 = v18 & 0x1F;
          goto LABEL_33;
        }
      }

      if (v4 <= 5)
      {
        v13 = v19;
        if (v4 == 4)
        {
          v3 = v18 & 7;
        }

        else
        {
          v3 = v18 & 3;
        }

        goto LABEL_33;
      }

      if (v4 != 6)
      {
        if (v4 == 7)
        {
          v3 = 0;
          goto LABEL_33;
        }

        return result;
      }

      v13 = v19;
      v3 = v18 & 1;
LABEL_33:
      v16 = *v13;
      v14 = (v13 + 1);
      v15 = v16;
      do
      {
        v3 = v15 & 0x3F | (v3 << 6);
        v17 = *v14++;
        v15 = v17;
      }

      while (v17);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_1000CE884(_BYTE *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v18 = 0;
    v6 = *a1;
    if (*a1)
    {
      v7 = *a1;
      v8 = a1;
      while (1)
      {
        if ((v7 & 0x80) != 0)
        {
          if (v7 == 255 || (v7 & 0xC0) == 0x80)
          {
            return 0;
          }

          v9 = byte_1000F2AD8[v7];
          if ((v7 & 0xC0) == 0xC0)
          {
            if (v9 <= 2)
            {
              v10 = 2;
            }

            else
            {
              v10 = byte_1000F2AD8[v7];
            }

            v11 = v10 - 1;
            v12 = v8 + 1;
            do
            {
              v13 = *v12++;
              if ((v13 & 0xC0) != 0x80)
              {
                return 0;
              }
            }

            while (--v11);
          }

          if ((~v7 & 0xF0) == 0)
          {
            return 0;
          }
        }

        else
        {
          v9 = 1;
        }

        sub_1000CE6A4(v8, &v18);
        if (v9 == 2 && v18 < 0x80u || v9 == 3 && v18 < 0x800u)
        {
          return 0;
        }

        v8 += v9;
        v7 = *v8;
        if (!*v8)
        {
          v14 = 0;
          if (v6)
          {
            do
            {
              v17 = 0;
              v16 = sub_1000CE6A4(v5, &v17);
              if (v14 < a2)
              {
                *(a3 + 2 * v14++) = v17;
              }

              v5 += v16;
            }

            while (*v5);
          }

          goto LABEL_23;
        }
      }
    }
  }

  v14 = 0;
LABEL_23:
  if (v14 >= a2)
  {
    return 0;
  }

  *(a3 + 2 * v14) = 0;
  return 1;
}

uint64_t sub_1000CE9F4(uint64_t result, _BYTE *a2)
{
  if (result)
  {
    if (result > 0x7F)
    {
      if (result > 0x7FF)
      {
        *a2 = (result >> 12) | 0xE0;
        a2[1] = (result >> 6) & 0x3F | 0x80;
        a2[2] = result & 0x3F | 0x80;
        return 3;
      }

      else
      {
        *a2 = (result >> 6) | 0xC0;
        a2[1] = result & 0x3F | 0x80;
        return 2;
      }
    }

    else
    {
      *a2 = result;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000CEA60(_WORD *a1, int a2, int a3, uint64_t a4)
{
  v6 = 0;
  if (a1 && a3 >= 1)
  {
    v7 = *a1;
    if (*a1 && a2 >= 1)
    {
      v9 = 0;
      v10 = &a1[a2];
      v11 = a1 + 1;
      do
      {
        if (v7 > 0x7F)
        {
          if (v7 > 0x7FF)
          {
            __src = (v7 >> 12) | 0xE0;
            v16 = (v7 >> 6) & 0x3F | 0x80;
            v17 = v7 & 0x3F | 0x80;
            v12 = 3;
            v6 = v9 + 3;
            if ((v9 + 3) >= a3)
            {
              break;
            }
          }

          else
          {
            __src = (v7 >> 6) | 0xC0;
            v16 = v7 & 0x3F | 0x80;
            v12 = 2;
            v6 = v9 + 2;
            if ((v9 + 2) >= a3)
            {
              break;
            }
          }
        }

        else
        {
          __src = v7;
          v12 = 1;
          v6 = v9 + 1;
          if ((v9 + 1) >= a3)
          {
            break;
          }
        }

        memcpy((a4 + v9), &__src, v12);
        v7 = *v11;
        if (!*v11)
        {
          break;
        }

        v9 = v6;
      }

      while (v11++ < v10);
    }
  }

  if (v6 >= a3)
  {
    return 1;
  }

  result = 0;
  *(a4 + v6) = 0;
  return result;
}

uint64_t sub_1000CEBA0(_WORD *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = 0;
      v7 = a1 + 1;
      while (1)
      {
        if (v5 > 0x7F)
        {
          if (v5 > 0x7FF)
          {
            __src = (v5 >> 12) | 0xE0;
            v13 = (v5 >> 6) & 0x3F | 0x80;
            v14 = v5 & 0x3F | 0x80;
            v9 = 3;
            v10 = v6 + 3;
            if ((v6 + 3) < a2)
            {
LABEL_12:
              memcpy((a3 + v6), &__src, v9);
            }
          }

          else
          {
            __src = (v5 >> 6) | 0xC0;
            v13 = v5 & 0x3F | 0x80;
            v9 = 2;
            v10 = v6 + 2;
            if ((v6 + 2) < a2)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          __src = v5;
          v9 = 1;
          v10 = v6 + 1;
          if ((v6 + 1) < a2)
          {
            goto LABEL_12;
          }
        }

        v8 = *v7++;
        v5 = v8;
        v6 = v10;
        if (!v8)
        {
          goto LABEL_14;
        }
      }
    }

    v10 = 0;
    if (a2 <= 0)
    {
      return 1;
    }

LABEL_15:
    result = 0;
    *(a3 + v10) = 0;
    return result;
  }

  v10 = 0;
LABEL_14:
  if (v10 < a2)
  {
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_1000CECC4(char *__str, size_t __size, const char *a3, va_list a4)
{
  result = 0xFFFFFFFFLL;
  if (__str)
  {
    v6 = __size;
    if (__size >= 1)
    {
      result = vsnprintf(__str, __size, a3, a4);
      v7 = result >= v6 ? 0xFFFFFFFFLL : result;
      if ((v7 & 0x80000000) != 0)
      {
        if (v6 < 0xA)
        {
          strcpy(__str, &aTruncated[-v6 + 10]);
        }

        else
        {
          strcpy(&__str[v6 - 10], aTruncated);
        }

        return v7;
      }
    }
  }

  return result;
}

void *sub_1000CED78(void *a1, uint64_t a2, void *a3)
{
  v3 = off_100106440;
  if (a3)
  {
    *a3 = qword_100106448;
  }

  off_100106440 = a1;
  qword_100106448 = a2;
  return v3;
}

uint64_t *sub_1000CEDE4(int a1, int a2)
{
  v4 = sub_1000C0034(56);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  *(v4 + 1) = a1;
  *(v4 + 2) = a2;
  v6 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    v12 = 0;
    *(v4 + 5) = 0;
    goto LABEL_14;
  }

  v7 = *(qword_1001065A8 + 2868);
  *(v4 + 5) = v7;
  if (!v7)
  {
    v12 = *(v6 + 2816);
LABEL_14:
    *(v4 + 3) = v12;
    v10 = a2 / 2;
    *v4 = 0;
    v13 = sub_1000C0034(4 * v10);
    v5[3] = v13;
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ((a1 - 11000) >= 0x33)
  {
    v8 = a1 / 4;
  }

  else
  {
    v8 = 4800;
  }

  if (a1 == 8000)
  {
    v9 = 3490;
  }

  else
  {
    v9 = v8;
  }

  *(v4 + 4) = v9;
  v10 = a2 / 2 + 1;
  *v4 = 7;
  v11 = sub_1000C0034(4 * v10);
  v5[3] = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_15:
  v14 = 2 * v10;
  v15 = sub_1000C0034(v14);
  v5[4] = v15;
  if (v15)
  {
    v16 = sub_1000C0034(v14);
    v5[5] = v16;
    if (v16)
    {
      v17 = sub_1000C0034(v14);
      v5[6] = v17;
      if (v17)
      {
        return v5;
      }
    }
  }

LABEL_19:
  sub_1000BFEC4(v5[6]);
  sub_1000BFEC4(v5[5]);
  sub_1000BFEC4(v5[4]);
  sub_1000BFEC4(v5[3]);
  sub_1000BFEC4(v5);
  return 0;
}

uint64_t sub_1000CEF50(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 48));
    sub_1000BFEC4(v1[5]);
    sub_1000BFEC4(v1[4]);
    sub_1000BFEC4(v1[3]);

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000CEFB0(uint64_t a1)
{
  if (!*(a1 + 20))
  {
    return 2;
  }

  v1 = *(a1 + 4);
  if ((v1 - 11000) >= 0x33)
  {
    v2 = 0;
  }

  else
  {
    v2 = 15;
  }

  if (v1 == 8000)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000CEFE8(uint64_t result, int a2)
{
  if (*(result + 20))
  {
    v2 = *(result + 4);
    if (v2 == 8000)
    {
      v3 = word_1000F2BD8[a2];
    }

    else if ((v2 - 10000) > 0x41A)
    {
      v3 = v2 / 4;
    }

    else
    {
      v3 = word_1000F2BF8[a2];
    }

    *(result + 12) = v3;
    v19 = *(result + 16);
    v20 = *(result + 8);
    v21 = (v2 + v20 * v19 - 1) / v2;
    if (v21 >= 1)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        *(*(result + 32) + v22) = v23 >> 12;
        *(*(result + 48) + v22) = v23 - (*(*(result + 32) + v22) << 12);
        *(*(result + 40) + v22) = 4096 - *(*(result + 48) + v22);
        v23 += (v19 / 2 + (v3 << 12)) / v19;
        v22 += 2;
      }

      while (2 * v21 != v22);
      v20 = *(result + 8);
    }

    v24 = v20 / 2;
    if (v21 >= v20 / 2)
    {
      v30 = v24;
    }

    else
    {
      v25 = v2;
      v26 = (v2 / 2 - v3) << 12;
      v27 = v21;
      v28 = v26 / (v25 / 2 - v19);
      do
      {
        v29 = (((v20 * *(result + 12)) << 12) + *(result + 4) / 2 + (*(result + 4) * v27 - *(result + 16) * v20) * v28) / *(result + 4);
        *(*(result + 32) + 2 * v27) = v29 >> 12;
        *(*(result + 48) + 2 * v27) = v29 - (*(*(result + 32) + 2 * v27) << 12);
        *(*(result + 40) + 2 * v27) = 4096 - *(*(result + 48) + 2 * v27);
        ++v27;
        v20 = *(result + 8);
        v30 = (v20 + (v20 >> 31)) >> 1;
      }

      while (v27 < v30);
      v24 = v20 / 2;
    }

    *(*(result + 32) + 2 * v30) = v24 - 1;
    *(*(result + 48) + 2 * (*(result + 8) / 2)) = 4096;
    v18 = (*(result + 40) + 2 * (*(result + 8) / 2));
    goto LABEL_31;
  }

  v4 = word_1000F2C18[a2 + 2];
  v5 = *(result + 8);
  v6 = *(result + 12) * v5 / *(result + 4);
  LODWORD(v7) = (v6 * v4 + 2048) >> 12;
  v8 = v5 / 2;
  v9 = v5 / 2;
  if (v5 / 2 >= v7)
  {
    v11 = (v6 * v4 + 2048) >> 12;
    v10 = ((v8 - v7) << 12) / (v8 - v6);
    if (v7 < 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 4096;
    v11 = v8;
    v6 = (v8 << 12) / v4;
    if (v8 < 1)
    {
      goto LABEL_13;
    }
  }

  v12 = 0;
  v13 = 0;
  do
  {
    *(*(result + 32) + v12) = (v13 / v4) >> 12;
    *(*(result + 48) + v12) = v13 / v4 - (*(*(result + 32) + v12) << 12);
    *(*(result + 40) + v12) = 4096 - *(*(result + 48) + v12);
    v13 += 0x1000000;
    v12 += 2;
  }

  while (2 * v11 != v12);
  v9 = *(result + 8) / 2;
LABEL_13:
  v14 = v9 - 1;
  if (v11 < v9 - 1)
  {
    v15 = 0;
    v16 = v6 << 12;
    if (v7 >= v8)
    {
      LODWORD(v7) = v8;
    }

    v7 = v7;
    do
    {
      v17 = v15 / v10 + v16;
      *(*(result + 32) + 2 * v7) = v17 >> 12;
      *(*(result + 48) + 2 * v7) = v17 - (*(*(result + 32) + 2 * v7) << 12);
      *(*(result + 40) + 2 * v7) = 4096 - *(*(result + 48) + 2 * v7);
      ++v7;
      v9 = *(result + 8) / 2;
      v14 = v9 - 1;
      v15 += 0x1000000;
    }

    while (v7 < v9 - 1);
  }

  if (v11 < v9)
  {
    *(*(result + 32) + 2 * v14) = v9 - 2;
    *(*(result + 48) + 2 * (*(result + 8) / 2) - 2) = 4096;
    v18 = (*(result + 40) + 2 * (*(result + 8) / 2) - 2);
LABEL_31:
    *v18 = 0;
  }

  *result = a2;
  return result;
}

char *sub_1000CF358(char *result, char *__dst)
{
  v2 = *result;
  if (*(result + 5))
  {
    if (v2 == 7)
    {
      return result;
    }

    v3 = (result + 24);
    v4 = *(result + 2);
    v5 = v4 / 2;
    v6 = v4 / 2 + 1;
    if (v4 >= -1)
    {
      v7 = *(result + 3);
      v8 = *(result + 4);
      v9 = v5 + 2;
      v10 = *(result + 5);
      v11 = *(result + 6);
      do
      {
        v13 = &__dst[4 * *v8];
        v15 = *v13;
        v14 = v13[1];
        v16 = *v10;
        if (v15 >= 0x80000 || v14 >= 0x80000)
        {
          v12 = (v15 >> 12) * v16 + (v14 >> 12) * *v11;
        }

        else
        {
          v12 = (v14 * *v11 + v15 * v16 + 2048) >> 12;
        }

        *v7++ = v12;
        ++v10;
        ++v11;
        ++v8;
        --v9;
      }

      while (v9 > 1);
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    v3 = (result + 24);
    v17 = *(result + 2);
    v6 = v17 / 2;
    if (v17 >= 2)
    {
      v18 = *(result + 3);
      v19 = *(result + 4);
      v20 = v6 + 1;
      v21 = *(result + 5);
      v22 = *(result + 6);
      do
      {
        v24 = *v21++;
        v23 = v24;
        v25 = *v19++;
        v26 = &__dst[4 * v25];
        v27 = *v22++;
        *v18++ = (*(v26 + 1) * v27 + *v26 * v23 + 2048) >> 12;
        --v20;
      }

      while (v20 > 1);
    }
  }

  return j__memmove(__dst, *v3, 4 * v6);
}

uint64_t sub_1000CF474(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  result = sub_1000C0034(144);
  if (!result)
  {
    return result;
  }

  *(result + 56) = 0;
  *(result + 60) = 0;
  *(result + 84) = -1;
  *(result + 88) = a1;
  *(result + 96) = a2;
  *(result + 76) = a5;
  *(result + 80) = a4;
  *(result + 124) = a8;
  v17 = qword_1001065A8;
  if (qword_1001065A8)
  {
    *(result + 136) = *(qword_1001065A8 + 5576);
    *(result + 72) = a3;
    *(result + 116) = a6;
    if (*(v17 + 5540))
    {
      a7 = 0;
    }

    *(result + 68) = a7;
    *(result + 48) = 0;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    *(result + 136) = 0;
    *(result + 68) = a7;
    *(result + 72) = a3;
    *(result + 116) = a6;
    *(result + 48) = 0;
    if (!a4)
    {
      return result;
    }
  }

  v18 = result;
  v19 = sub_1000C0034(16 * a4);
  result = v18;
  *(v18 + 48) = v19;
  if (!v19)
  {
    sub_1000CF5EC(v18);
    return 0;
  }

  if (a4 >= 1)
  {
    if (a4 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = a4 & 0x7FFFFFFE;
      v21 = v19 + 16;
      v22 = v20;
      do
      {
        *(v21 - 16) = 0;
        *v21 = 0;
        *(v21 - 8) = 0;
        *(v21 + 8) = 0;
        v21 += 32;
        v22 -= 2;
      }

      while (v22);
      if (v20 == a4)
      {
        return result;
      }
    }

    v23 = a4 - v20;
    v24 = (v19 + 16 * v20 + 8);
    do
    {
      *(v24 - 1) = 0;
      *v24 = 0;
      v24 += 4;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t sub_1000CF5EC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10009B294(*(result + 128));
    v2 = *v1;
    if (*v1)
    {
      if (*(v1 + 8) >= 1)
      {
        v3 = 0;
        do
        {
          sub_1000BFEC4(*(*v1 + 8 * v3++));
        }

        while (v3 < *(v1 + 8));
        v2 = *v1;
      }

      sub_1000BFEC4(v2);
    }

    v4 = *(v1 + 32);
    if (v4)
    {
      if (*(v1 + 40) >= 1)
      {
        v5 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 32) + 8 * v5++));
        }

        while (v5 < *(v1 + 40));
        v4 = *(v1 + 32);
      }

      sub_1000BFEC4(v4);
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      if (*(v1 + 24) >= 1)
      {
        v7 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 16) + 8 * v7++));
        }

        while (v7 < *(v1 + 24));
        v6 = *(v1 + 16);
      }

      sub_1000BFEC4(v6);
    }

    sub_1000BFEC4(*(v1 + 48));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000CF6EC(uint64_t a1)
{
  v2 = *(a1 + 68);
  v3 = *(a1 + 56);
  if (v2)
  {
    if (v3 < 1)
    {
      v5 = -1;
    }

    else
    {
      v4 = 0;
      v5 = -1;
      do
      {
        v5 = sub_1000BD6C8(*(*(*(a1 + 32) + 8 * (v4 >> 8)) + 2 * v4), 2, v5);
        ++v4;
        v3 = *(a1 + 56);
      }

      while (v4 < v3);
    }
  }

  else
  {
    if (v3 < 1)
    {
      v5 = -1;
      if (*(a1 + 60) < 1)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v6 = 0;
    v5 = -1;
    do
    {
      v7 = (*(*a1 + 8 * (v6 >> 8)) + 8 * v6);
      v8 = sub_1000BD6C8(*v7, 2, v5);
      v9 = sub_1000BD6C8(v7[1], 2, v8);
      v5 = sub_1000BD6C8(v7[2], 2, v9);
      ++v6;
      v3 = *(a1 + 56);
    }

    while (v6 < v3);
  }

  if (*(a1 + 60) < 1)
  {
    goto LABEL_15;
  }

LABEL_12:
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = sub_1000BD6C8(*(*(a1 + 48) + v10), 4, v5);
    v13 = sub_1000BD6C8(*(*(a1 + 48) + v10 + 4), 4, v12);
    v5 = sub_1000BD6C8(*(*(a1 + 48) + v10 + 12), 4, v13);
    ++v11;
    v10 += 16;
  }

  while (v11 < *(a1 + 60));
  v3 = *(a1 + 56);
LABEL_15:
  v14 = sub_1000BD6C8(v3, 4, v5);
  v15 = sub_1000BD6C8(*(a1 + 60), 2, v14);
  v16 = sub_1000BD6C8(*(a1 + 76), 4, v15);
  v17 = sub_1000BD6C8(*(a1 + 80), 4, v16);
  v18 = sub_1000BD6C8(*(a1 + 84), 2, v17);
  v19 = sub_1000BD6C8(*(a1 + 104), 2, v18);
  v20 = sub_1000BD6C8(*(a1 + 108), 4, v19);
  v21 = sub_1000BD6C8(*(a1 + 112), 4, v20);
  v22 = sub_1000BD6C8(*(a1 + 116), 4, v21);
  v23 = *(a1 + 120);

  return sub_1000BD6C8(v23, 4, v22);
}

_DWORD *sub_1000CF8F4(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    result = sub_1000BFF20(0x90uLL);
    if (result)
    {
      v3 = *(v1 + 3);
      v2 = *(v1 + 4);
      v4 = *(v1 + 1);
      *(result + 2) = *(v1 + 2);
      *(result + 3) = v3;
      v5 = *(v1 + 7);
      v6 = *(v1 + 8);
      v7 = *(v1 + 6);
      *(result + 5) = *(v1 + 5);
      *(result + 1) = v4;
      v8 = *v1;
      *(result + 4) = v2;
      *(result + 7) = v5;
      *(result + 8) = v6;
      *(result + 6) = v7;
      result[11] = 0;
      *(result + 6) = 0;
      result[20] = 0;
      *(result + 4) = 0;
      *result = v8;
      *(result + 1) = 0u;
      *result = 0u;
      v9 = result;
      if (*v1)
      {
        v10 = v1[14] + 255;
        v11 = v10 >> 8;
        v12 = sub_1000BFF20((8 * v11));
        if (!v12)
        {
          goto LABEL_37;
        }

        v13 = v12;
        if (v10 >= 0x100)
        {
          v14 = 0;
          while (1)
          {
            v15 = sub_1000BFF20(0x800uLL);
            *&v13[2 * v14] = v15;
            if (!v15)
            {
              break;
            }

            j__memmove(v15, *(*v1 + 8 * v14++), 0x800uLL);
            if (v11 == v14)
            {
              goto LABEL_9;
            }
          }

          if (v14)
          {
            v32 = v14 + 1;
            do
            {
              sub_1000BFEC4(*&v13[2 * (v32-- - 2)]);
            }

            while (v32 > 1);
          }

          goto LABEL_37;
        }

LABEL_9:
        result = v9;
        *v9 = v13;
        *(v9 + 8) = v11;
        *(v9 + 12) = v11;
      }

      if (*(v1 + 2))
      {
        v16 = v1[14] + 255;
        v17 = v16 >> 8;
        v18 = sub_1000BFF20((8 * v17));
        if (!v18)
        {
          goto LABEL_37;
        }

        v19 = v18;
        if (v16 >= 0x100)
        {
          v20 = 0;
          while (1)
          {
            v21 = sub_1000BFF20(0xC00uLL);
            *&v19[2 * v20] = v21;
            if (!v21)
            {
              break;
            }

            j__memmove(v21, *(*(v1 + 2) + 8 * v20++), 0xC00uLL);
            if (v17 == v20)
            {
              goto LABEL_16;
            }
          }

          if (v20)
          {
            v33 = v20 + 1;
            do
            {
              sub_1000BFEC4(*&v19[2 * (v33-- - 2)]);
            }

            while (v33 > 1);
          }

          goto LABEL_37;
        }

LABEL_16:
        result = v9;
        *(v9 + 16) = v19;
        *(v9 + 24) = v17;
        *(v9 + 28) = v17;
      }

      if (!*(v1 + 4))
      {
        goto LABEL_24;
      }

      v22 = v1[14] + 255;
      v23 = v22 >> 8;
      v24 = sub_1000BFF20((8 * v23));
      if (v24)
      {
        v25 = v24;
        if (v22 >= 0x100)
        {
          v26 = 0;
          while (1)
          {
            v27 = sub_1000BFF20(0x200uLL);
            *&v25[2 * v26] = v27;
            if (!v27)
            {
              break;
            }

            j__memmove(v27, *(*(v1 + 4) + 8 * v26++), 0x200uLL);
            if (v23 == v26)
            {
              goto LABEL_23;
            }
          }

          if (v26)
          {
            v34 = v26 + 1;
            do
            {
              sub_1000BFEC4(*&v25[2 * (v34-- - 2)]);
            }

            while (v34 > 1);
          }

          goto LABEL_37;
        }

LABEL_23:
        result = v9;
        *(v9 + 32) = v25;
        *(v9 + 40) = v23;
        *(v9 + 44) = v23;
LABEL_24:
        v28 = *(result + 42) + 1;
        v29 = sub_1000C0034(16 * v28);
        if (v29)
        {
          v30 = *(v1 + 6);
          v31 = v29;
          j__memmove(v29, v30, 16 * v28);
          result = v9;
          *(v9 + 48) = v31;
          *(v9 + 80) = v28;
          *(v9 + 128) = 0;
          return result;
        }
      }

LABEL_37:
      sub_1000CF5EC(v9);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000CFB74(uint64_t result, int a2, unsigned __int16 a3, __int16 a4, int a5, _DWORD *a6, __int16 a7)
{
  v11 = a3;
  v12 = a2;
  v13 = result;
  *a6 = 0;
  if (*(result + 116))
  {
    if (*(result + 84) == -1)
    {
      *(result + 120) = a2;
      LOWORD(v14) = a2;
    }

    else
    {
      v14 = *(result + 120);
    }

    v12 = v14 - a2;
    v11 = v14 - a3;
  }

  v15 = v11 + 1;
  if (v15 >= *(result + 80))
  {
    goto LABEL_26;
  }

  *(result + 60) = v15;
  if (!v12)
  {
    v16 = *(result + 48);
    v17 = (v16 + 16 * v11);
    LODWORD(v18) = *(result + 84);
    if (v18 == v11)
    {
      goto LABEL_10;
    }

LABEL_16:
    v18 = v18;
    if (v18 != -1 && !*(result + 68))
    {
      v24 = (v16 + 16 * v18);
      v25 = v24[1];
      if (v25)
      {
        sub_1000D45B8(result, *v24, v25 + *v24 - 1);
      }
    }

    sub_1000CFDE0(v13);
    for (i = ++*(v13 + 84); i < v11; ++*(v13 + 84))
    {
      v27 = (*(v13 + 48) + 16 * i);
      *v27 = *(v13 + 56);
      v27[1] = 0;
      i = (*(v13 + 84) + 1);
    }

    *v17 = *(v13 + 56);
    v17[3] = a5;
    v19 = *(v13 + 56);
    if (*(v13 + 68))
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  v16 = *(result + 48);
  if (!*(v16 + 16 * v12 - 12))
  {
    return result;
  }

  v17 = (v16 + 16 * v11);
  LODWORD(v18) = *(result + 84);
  if (v18 != v11)
  {
    goto LABEL_16;
  }

LABEL_10:
  v19 = *(result + 56);
  if (*(result + 68))
  {
LABEL_11:
    v20 = 2;
    v21 = 40;
    v22 = 44;
    v23 = 32;
    goto LABEL_12;
  }

LABEL_23:
  result = sub_1000C06E8(v13, (v13 + 12), (v13 + 8), 8, 8, v19 + 1);
  if (!result)
  {
    goto LABEL_26;
  }

  if (!*(v13 + 124))
  {
    goto LABEL_13;
  }

  v20 = 12;
  v21 = 24;
  v22 = 28;
  v23 = 16;
LABEL_12:
  result = sub_1000C06E8((v13 + v23), (v13 + v22), (v13 + v21), 8, v20, v19 + 1);
  if (!result)
  {
LABEL_26:
    *a6 = 1;
    return result;
  }

LABEL_13:
  if (*(v13 + 68))
  {
    *(*(*(v13 + 32) + ((*(v13 + 56) >> 5) & 0x7FFFFF8)) + 2 * *(v13 + 56)) = a4;
  }

  else
  {
    v28 = (*(*v13 + ((*(v13 + 56) >> 5) & 0x7FFFFF8)) + 8 * *(v13 + 56));
    *v28 = a4;
    v28[1] = v12;
    v28[2] = a5 - *(v17 + 6);
    v28[3] = a7;
  }

  ++v17[1];
  ++*(v13 + 56);
  return result;
}

uint64_t sub_1000CFDE0(uint64_t result)
{
  if (!*(result + 124))
  {
    v1 = *(result + 84);
    if ((v1 & 0x8000000000000000) == 0)
    {
      v2 = (*(result + 48) + 16 * v1);
      v3 = v2[1];
      if (v3 >= 2)
      {
        v4 = *v2;
        v5 = (v3 + v4 - 1);
        v6 = result;
        if (*(result + 68))
        {
          result = sub_1000D4AA8(result, v4, v5);
          LODWORD(v7) = *v2;
          v8 = v2[1];
          if (v8 >= 2)
          {
            v9 = v8 + v7;
            v10 = v7 + 1;
            v11 = v6;
            v12 = *(*(v6[4] + ((*v2 >> 5) & 0x7FFFFF8)) + 2 * *v2);
            do
            {
              v13 = v12;
              v14 = v6[4];
              v12 = *(*(v14 + 8 * (v10 >> 8)) + 2 * v10);
              if (v12 != v13)
              {
                LODWORD(v7) = v7 + 1;
                *(*(v14 + 8 * (v7 >> 8)) + 2 * v7) = v12;
              }

              ++v10;
            }

            while (v10 < v9);
            goto LABEL_19;
          }
        }

        else
        {
          result = sub_1000D45B8(result, v4, v5);
          v7 = *v2;
          v15 = v2[1];
          if (v15 >= 2)
          {
            v16 = v15 + v7;
            v17 = v7 + 1;
            v11 = v6;
            v18 = (*(*v6 + ((v7 >> 5) & 0x7FFFFF8)) + 8 * v7);
            LODWORD(v19) = *v18;
            do
            {
              v20 = (*(*v6 + 8 * (v17 >> 8)) + 8 * v17);
              if (*v20 != v19 || v20[1] != v18[1])
              {
                LODWORD(v7) = v7 + 1;
                v18 = (*(*v6 + 8 * (v7 >> 8)) + 8 * v7);
                v19 = *v20;
                *v18 = *v20;
                LODWORD(v19) = v19;
              }

              ++v17;
            }

            while (v17 < v16);
            goto LABEL_19;
          }
        }

        v11 = v6;
LABEL_19:
        v21 = v7 + 1;
        *(v11 + 14) = v21;
        v2[1] = v21 - *v2;
      }
    }
  }

  return result;
}

uint64_t sub_1000CFF6C(uint64_t a1, int a2, int a3, int a4, int a5, unsigned __int16 a6, __int16 a7, __int16 a8, int a9, int a10, _DWORD *a11)
{
  v16 = *(a1 + 56);
  result = sub_1000CFB74(a1, a5, a6, a7, a9, a11, 0);
  if (*(a1 + 56) != v16)
  {
    v18 = a2 == 0;
    if (a3)
    {
      v18 = 2;
    }

    if (a4)
    {
      v19 = a3 == 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = *(*(a1 + 16) + ((v16 >> 5) & 0x7FFFFF8)) + 12 * v16;
    *v20 = v18;
    if (v19)
    {
      v21 = a8;
    }

    else
    {
      v21 = 0;
    }

    *(v20 + 6) = v21;
    *(v20 + 4) = a8;
    *(v20 + 8) = a10;
  }

  return result;
}

uint64_t sub_1000D0030(uint64_t a1, _WORD *a2, _DWORD *a3, int a4, int a5)
{
  v5 = *(a1 + 84);
  if (v5 <= a5)
  {
    if (v5 < a5)
    {
      return 0;
    }

    if (*(a1 + 68))
    {
      v8 = a1;
      v9 = a3;
      v10 = a2;
      v11 = a4;
      v12 = a5;
      sub_1000CFDE0(a1);
      a5 = v12;
      a4 = v11;
      a1 = v8;
      a2 = v10;
      a3 = v9;
    }

    else
    {
      v13 = (*(a1 + 48) + 16 * *(a1 + 84));
      v14 = v13[1];
      if (v14)
      {
        v15 = a1;
        v16 = a2;
        v17 = a3;
        v18 = a4;
        v19 = a5;
        sub_1000D45B8(a1, *v13, v14 + *v13 - 1);
        a5 = v19;
        a4 = v18;
        a1 = v15;
        a2 = v16;
        a3 = v17;
      }
    }
  }

  v20 = (*(a1 + 48) + 16 * a5);
  v6 = v20[1];
  if (!v6)
  {
    return v6;
  }

  v21 = *v20;
  v22 = *v20 + v6;
  if (!*(a1 + 68))
  {
    if (v6 < 1)
    {
      return 0;
    }

    LODWORD(v6) = 0;
    v25 = v20[3];
    while (1)
    {
      v6 = v6;
      v26 = (*(*a1 + 8 * (v21 >> 8)) + 8 * v21);
      v27 = *v26;
      if (v27 != 65534)
      {
        v28 = v25 + v26[2];
        if (v6 >= 1)
        {
          v29 = 0;
          v30 = 0x7FFFFFFF;
          v31 = -1;
          while (1)
          {
            v32 = a3[v29];
            if (a2[v29] == v27)
            {
              break;
            }

            if (v32 > v31)
            {
              v30 = v29;
              v31 = a3[v29];
            }

            if (v6 == ++v29)
            {
              v29 = v30;
              if (v6 < a4)
              {
                goto LABEL_22;
              }

              goto LABEL_34;
            }
          }

          if (v32 <= v28)
          {
            goto LABEL_23;
          }

          goto LABEL_37;
        }

        v31 = -1;
        v29 = 0x7FFFFFFFLL;
        if (v6 < a4)
        {
LABEL_22:
          a2[v6] = v27;
          a3[v6] = v28;
          v6 = (v6 + 1);
        }

        else
        {
LABEL_34:
          if (v31 > v28)
          {
            a2[v29] = v27;
LABEL_37:
            a3[v29] = v28;
          }
        }
      }

LABEL_23:
      if (++v21 >= v22)
      {
        return v6;
      }
    }
  }

  if (v6 >= 1)
  {
    LODWORD(v6) = v6 - (*(*(*(a1 + 32) + 8 * ((v22 - 1) >> 8)) + 2 * (v22 - 1)) == -2);
  }

  if (v6 >= a4)
  {
    v23 = a4;
  }

  else
  {
    v23 = v6;
  }

  if (v23 >= 1)
  {
    v24 = v23;
    do
    {
      *a2++ = *(*(*(a1 + 32) + 8 * (v21 >> 8)) + 2 * v21);
      ++v21;
      --v24;
    }

    while (v24);
  }

  bzero(a3, 4 * v23);
  return v23;
}

uint64_t sub_1000D02A8(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 60);
  if (v4 < 1)
  {
    goto LABEL_9;
  }

  v5 = *(result + 48);
  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 & 0x7FFE;
    v7 = v5 + 16;
    v8 = v6;
    do
    {
      *(v7 - 16) = 0;
      *v7 = 0;
      *(v7 - 8) = 0;
      *(v7 + 8) = 0;
      v7 += 32;
      v8 -= 2;
    }

    while (v8);
    if (v6 == v4)
    {
      goto LABEL_9;
    }
  }

  v9 = v4 - v6;
  v10 = (v5 + 16 * v6 + 8);
  do
  {
    *(v10 - 1) = 0;
    *v10 = 0;
    v10 += 4;
    --v9;
  }

  while (v9);
LABEL_9:
  *(result + 56) = 0;
  *(result + 60) = 0;
  *(result + 84) = -1;
  *(result + 112) = a4;
  *(result + 64) = 0;
  *(result + 140) = 0;
  if (a3)
  {
    *(result + 104) = *(a2 + 2 * a3 - 2);
    *(result + 108) = 1;
  }

  else
  {
    *(result + 104) = -1;
    *(result + 108) = 0;
  }

  return result;
}

double sub_1000D0360(uint64_t a1, int a2, unint64_t a3, signed int a4, _DWORD *a5, void *a6, unsigned int a7)
{
  if (qword_1001065A8)
  {
    v14 = *(qword_1001065A8 + 1136);
    v15 = sub_1000C0034(v14 << 7);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_26:
    *a5 = 0x40000000;
LABEL_29:
    sub_1000BFEC4(v15);
    return *v16.i64;
  }

  v14 = 0;
  v15 = sub_1000C0034(0);
  if (!v15)
  {
    goto LABEL_26;
  }

LABEL_3:
  v17 = v15;
  if (*(a1 + 60))
  {
    if (sub_1000D0728(a1, v15, v14, 0, *(a1 + 84), a1 + 104, *(a1 + 108), 0xFFFFu, a6, a7) > a2)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  if (a2 >= 0)
  {
LABEL_28:
    *a5 = 0x40000000;
    v15 = v17;
    goto LABEL_29;
  }

LABEL_5:
  v18 = v17 + (a2 << 7);
  *a5 = *(v18 + 12);
  v19 = *(v18 + 4);
  if (v19 >= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = *(v18 + 4);
  }

  if (v20 >= 1)
  {
    v21 = v18 + 16;
    if (v19 >= a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = *(v18 + 4);
    }

    v23 = v22;
    if (v22 < 4 || ((v24 = v19 - v22, v19 - 1 >= v24) ? (v25 = (v23 - 1) >> 32 == 0) : (v25 = 0), !v25 || ((v26 = v18 + 2 * v24 + 16, v26 + 2 * v23 > a3) ? (v27 = v26 >= a3 + 2 * v23) : (v27 = 1), !v27)))
    {
      v29 = v23;
      goto LABEL_31;
    }

    if (v23 >= 0x10)
    {
      v28 = v23 & 0x1FFFFFFF0;
      v33 = (a3 + 2 * v23 - 16);
      v34 = v23 & 0x1FFFFFFF0;
      do
      {
        v35 = (v21 + 2 * v24);
        v36 = vrev64q_s16(*v35);
        v16 = vextq_s8(v36, v36, 8uLL);
        v37 = vrev64q_s16(v35[1]);
        v33[-1] = vextq_s8(v37, v37, 8uLL);
        *v33 = v16;
        v33 -= 2;
        v24 += 16;
        v34 -= 16;
      }

      while (v34);
      if (v28 == v23)
      {
        return *v16.i64;
      }

      if ((v23 & 0xC) == 0)
      {
        v29 = v23 & 0xF;
LABEL_31:
        v30 = v29 + 1;
        v31 = v19 - v29;
        v32 = (a3 + 2 * v29 - 2);
        do
        {
          *v32-- = *(v21 + 2 * v31);
          --v30;
          ++v31;
        }

        while (v30 > 1);
        return *v16.i64;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = v23 & 3;
    v38 = (a3 - 2 * v28 + 2 * v23 - 8);
    v39 = v19 + v28 - v23;
    v40 = v28 - (v23 & 0x1FFFFFFFCLL);
    do
    {
      *v16.i8 = vrev64_s16(*(v21 + 2 * v39));
      *v38-- = v16.i64[0];
      v39 += 4;
      v40 += 4;
    }

    while (v40);
    if ((v23 & 0x1FFFFFFFCLL) != v23)
    {
      goto LABEL_31;
    }
  }

  return *v16.i64;
}

uint64_t sub_1000D05B0(void *a1, int a2, int a3, char *__src)
{
  if (!a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 4 * a3 - 4;
  do
  {
    v9 = 0;
    v10 = (a1[6] + 16 * (a2 - 1));
    v11 = *v10;
    v12 = v10[1] + *v10;
    v13 = 0x4000;
    do
    {
      if (*(*(*a1 + 8 * (v11 >> 8)) + 8 * v11 + 4) < v13)
      {
        v9 = (*(*a1 + 8 * (v11 >> 8)) + 8 * v11);
        v13 = v9[2];
      }

      ++v11;
    }

    while (v11 < v12);
    v14 = *v9;
    if (v14 != 65534)
    {
      if (v7 >= a3)
      {
        j__memmove(__src + 4, __src, v8);
        *__src = sub_1000BA7FC(a1[12], *v9);
      }

      else
      {
        *&__src[4 * ~v7 + 4 * a3] = sub_1000BA7FC(a1[12], v14);
      }

      v7 = (v7 + 1);
    }

    LOWORD(a2) = v9[1];
  }

  while (a2);
  if (v7 < a3)
  {
    j__memmove(__src, &__src[4 * a3 + -4 * v7], 4 * v7);
  }

  return v7;
}

uint64_t sub_1000D06D8(uint64_t a1, uint64_t a2, int a3, unsigned int a4, void *a5, unsigned int a6)
{
  if (*(a1 + 60))
  {
    return sub_1000D0728(a1, a2, a3, 0, *(a1 + 84), a1 + 104, *(a1 + 108), a4, a5, a6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D0728(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4, int a5, uint64_t a6, unsigned int a7, unsigned int a8, void *a9, unsigned int a10)
{
  if (*(a1 + 124) && !*(a1 + 64))
  {
    v35 = a4;
    v36 = a3;
    v37 = a5;
    v38 = a6;
    v39 = a7;
    v40 = a8;
    v41 = a1;
    if (!sub_1000D25CC(a1))
    {
      return 0;
    }

    *(v41 + 64) = 1;
    a8 = v40;
    a7 = v39;
    a6 = v38;
    a5 = v37;
    a1 = v41;
    a3 = v36;
    a4 = v35;
    if (!v36)
    {
      return 0;
    }
  }

  else if (!a3)
  {
    return 0;
  }

  if (!*(a1 + 56))
  {
    return 0;
  }

  if (*(a1 + 116))
  {
    v10 = *(a1 + 120);
    v11 = v10 - a5;
    if (v10 >= a5)
    {
      LOWORD(a5) = v10 - a4;
      a4 = v11;
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  if (*(a1 + 84) < a5)
  {
    return 0;
  }

  v372 = a4;
  v359 = a3;
  v374 = a1;
  v12 = a5;
  v348 = a6;
  v349 = a8;
  v350 = a7;
  if (!sub_100022BE0(a9, a10))
  {
    return 0;
  }

  v13 = v374;
  v14 = *(v374 + 60);
  if (v14 <= v12)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = v12;
  }

  v16 = (*(v374 + 48) + 16 * v15);
  v17 = v16[1];
  if (v17 < 1)
  {
LABEL_51:
    v42 = 0;
    goto LABEL_409;
  }

  v18 = 0;
  v19 = *v16;
  v20 = v17 + *v16;
  v21 = a2;
  v22 = v359;
  v23 = v372;
  do
  {
    v25 = (*(*v13 + 8 * (v19 >> 8)) + 8 * v19);
    if (*(v13 + 116))
    {
      if (*v25 == -2)
      {
        goto LABEL_15;
      }

      v26 = v25[1];
    }

    else
    {
      v26 = v25[1];
      if (!v26)
      {
        goto LABEL_15;
      }
    }

    if (v26 < v23 || a10 && *v25 != -2 && (v27 = sub_100022FD8(a9, a10), v23 = v372, v22 = v359, v13 = v374, !v27) || *(v13 + 124) && *(*(*(v13 + 16) + 8 * (v19 >> 8)) + 12 * v19 + 6))
    {
LABEL_15:
      v24 = a2;
      goto LABEL_16;
    }

    v28 = v16[3] + v25[2];
    v24 = a2;
    if (v18 < v22)
    {
      goto LABEL_33;
    }

    v21 = 0;
    v29 = -1;
    v30 = v18;
    v31 = a2;
    do
    {
      if (*(v31 + 12) > v29)
      {
        v21 = v31;
        v29 = *(v31 + 12);
      }

      v31 += 128;
      --v30;
    }

    while (v30);
    v13 = v374;
    v23 = v372;
    if (v28 < *(v21 + 12))
    {
LABEL_33:
      v32 = *v25;
      if (v32 == 65534)
      {
        v33 = 0;
      }

      else
      {
        *(v21 + 16) = v32;
        *(v21 + 89) = 0;
        v33 = 1;
      }

      *(v21 + 88) = 0;
      *v21 = v19;
      *(v21 + 4) = v33;
      v34 = v18 < v22;
      *(v21 + 8) = 0;
      *(v21 + 12) = v28;
      if (v18 >= v22)
      {
        v18 = v18;
      }

      else
      {
        v18 = (v18 + 1);
      }

      *(v21 + 124) = 0;
      if (v34)
      {
        v21 += 128;
      }
    }

LABEL_16:
    ++v19;
  }

  while (v19 < v20);
  v42 = v18;
  if (!v18)
  {
    goto LABEL_409;
  }

  v44 = v22;
  v45 = sub_1000C0034(2 * v22);
  if (!v45)
  {
    goto LABEL_51;
  }

  v46 = v45;
  v47 = v44;
  if (v44 >= 1)
  {
    if (v44 < 4)
    {
      v48 = 0;
      goto LABEL_61;
    }

    if (v44 >= 0x10)
    {
      v48 = v44 & 0x7FFFFFF0;
      v49 = xmmword_1000F0CF0;
      v50 = (v45 + 16);
      v51.i64[0] = 0x8000800080008;
      v51.i64[1] = 0x8000800080008;
      v52.i64[0] = 0x10001000100010;
      v52.i64[1] = 0x10001000100010;
      v53 = v48;
      do
      {
        v50[-1] = v49;
        *v50 = vaddq_s16(v49, v51);
        v49 = vaddq_s16(v49, v52);
        v50 += 2;
        v53 -= 16;
      }

      while (v53);
      if (v48 != v44)
      {
        if ((v44 & 0xC) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v48 = 0;
LABEL_58:
      v54 = v48;
      v48 = v44 & 0x7FFFFFFC;
      v55 = vorr_s8(vdup_n_s16(v54), 0x3000200010000);
      v56 = (v45 + 2 * v54);
      v57 = v54 - v48;
      do
      {
        *v56++ = v55;
        v55 = vadd_s16(v55, 0x4000400040004);
        v57 += 4;
      }

      while (v57);
      for (; v44 != v48; ++v48)
      {
LABEL_61:
        *(v45 + 2 * v48) = v48;
      }
    }
  }

  v58 = v24[1];
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v59 = 1;
      goto LABEL_75;
    }

    v59 = (v18 - 1) | 1;
    v60 = v24[1];
    v61 = v24 + 65;
    v62 = (v18 - 1) & 0xFFFFFFFFFFFFFFFELL;
    v63 = v60;
    do
    {
      if (*(v61 - 32) < v60)
      {
        v60 = *(v61 - 32);
      }

      if (*v61 < v63)
      {
        v63 = *v61;
      }

      v61 += 64;
      v62 -= 2;
    }

    while (v62);
    if (v60 >= v63)
    {
      v58 = v63;
    }

    else
    {
      v58 = v60;
    }

    if (v18 - 1 != ((v18 - 1) & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_75:
      v64 = &v24[32 * v59 + 1];
      v65 = v18 - v59;
      do
      {
        v67 = *v64;
        v64 += 32;
        v66 = v67;
        if (v67 < v58)
        {
          v58 = v66;
        }

        --v65;
      }

      while (v65);
    }
  }

  v357 = v58;
  v68 = v58 != 1 || qword_1001065A8 == 0;
  if (!v68 && *(qword_1001065A8 + 992))
  {
    sub_1000D2C8C(v374, v24, v18, v348, v350, v349, v46, 1);
    v47 = v359;
  }

  v344 = v47;
  qword_100106450 = v24;
  qsort(v46, v18, 2uLL, sub_1000D3154);
  v358 = v46 + 1;
  v351 = v46 - 1;
  v370 = v46;
  v371 = v24 + 14;
  v69 = v374;
  while (2)
  {
    v376 = v357;
    v382 = 0;
    v381 = v42;
    if (!v69[29])
    {
      v70 = v372;
      if (v42 < 1)
      {
        goto LABEL_180;
      }

      v115 = 0;
      v356 = 1;
      v357 = 0x7FFFFFFF;
      v116 = v46;
LABEL_183:
      v118 = v116++;
      __srcb = v115;
      v363 = v116;
      while (1)
      {
        v119 = *v118;
        v120 = &v24[32 * v119];
        if (*v120 == 0x7FFFFFFF)
        {
          goto LABEL_182;
        }

        v121 = *(v120 + 1);
        if (v121 > v376)
        {
          goto LABEL_255;
        }

        v122 = *v69;
        v123 = (*(*v69 + ((*v120 >> 5) & 0x7FFFFF8)) + 8 * *v120);
        v124 = *v123;
        v125 = v123[1];
        if (v124 == -2 && v125 == 0)
        {
          *v120 = 0x7FFFFFFF;
          goto LABEL_182;
        }

        if (v125 < 1 || (v127 = (*(v69 + 6) + 16 * (v125 - 1)), v128 = v127[1], v128 < 1))
        {
          v134 = 0x40000000;
          goto LABEL_212;
        }

        v129 = *v127;
        v130 = v128 + *v127;
        v131 = v127[3];
        v132 = v130 <= (v129 + 1) ? v129 + 1 : v130;
        v133 = v132 - v129;
        if (v132 - v129 < 2)
        {
          break;
        }

        v135 = v129 + (v133 & 0xFFFFFFFE);
        v136 = 0x40000000;
        v137 = v133 & 0xFFFFFFFE;
        v138 = 0x40000000;
        do
        {
          if ((v131 + *(*(v122 + 8 * (v129 >> 8)) + 8 * v129 + 4)) < v136)
          {
            v136 = v131 + *(*(v122 + 8 * (v129 >> 8)) + 8 * v129 + 4);
          }

          if ((v131 + *(*(v122 + 8 * ((v129 + 1) >> 8)) + 8 * (v129 + 1) + 4)) < v138)
          {
            v138 = v131 + *(*(v122 + 8 * ((v129 + 1) >> 8)) + 8 * (v129 + 1) + 4);
          }

          v129 += 2;
          v137 -= 2;
        }

        while (v137);
        if (v136 >= v138)
        {
          v134 = v138;
        }

        else
        {
          v134 = v136;
        }

        if (v133 != (v133 & 0xFFFFFFFE))
        {
          goto LABEL_209;
        }

LABEL_212:
        v139 = v372;
        if (v125 != v372)
        {
          v69 = v374;
          v141 = *(v374 + 48) + 16 * v125;
          v142 = *(v141 - 12);
          if (v142 < 1)
          {
            goto LABEL_239;
          }

          v143 = 0;
          v144 = *(v141 - 16);
          v145 = v142 + v144;
          v146 = (v120 + 1);
          v147 = 0x7FFFFFFFLL;
          while (1)
          {
LABEL_219:
            v148 = v147;
            v149 = v143;
            v143 = (*(*v69 + 8 * (v144 >> 8)) + 8 * v144);
            v150 = *(v120 + 1);
            if (v150 == 35)
            {
              if (*v143 != -2)
              {
                goto LABEL_236;
              }

              v151 = v143[1];
              if (v143[1] || v151 < v139)
              {
                goto LABEL_236;
              }
            }

            else
            {
              v151 = v143[1];
              if (v151 < v139)
              {
                goto LABEL_236;
              }
            }

            v152 = *v143;
            if (!v150 && !v151 && v152 == 65534)
            {
              goto LABEL_236;
            }

            if (a10)
            {
              if (v152 != 65534)
              {
                *(v146 + v150) = v152;
                v154 = sub_100022FD8(a9, a10);
                v139 = v372;
                v69 = v374;
                if (!v154)
                {
                  goto LABEL_236;
                }
              }
            }

            v155 = *(v141 - 4) + v143[2];
            if (v149)
            {
              break;
            }

            v147 = v144;
            if (v155 != v134)
            {
              break;
            }

            v144 = (v144 + 1);
            if (v144 >= v145)
            {
              goto LABEL_237;
            }
          }

          sub_1000D4BDC(v69, a2, v120, &v381, v359, v155 - v134 + *(v120 + 3), v144, v370, 0, v69[28]);
          v139 = v372;
          v69 = v374;
LABEL_236:
          v147 = v148;
          v143 = v149;
          v144 = (v144 + 1);
          if (v144 < v145)
          {
            goto LABEL_219;
          }

LABEL_237:
          if (v143)
          {
            *v120 = v147;
            v159 = *v143;
            v115 = __srcb;
            v116 = v363;
            if (v159 == 65534)
            {
              v160 = v143[1];
              v24 = a2;
              v46 = v370;
              if (v160)
              {
                v161 = *(v120 + 1);
                if (v161)
                {
                  *(v120 + v161 + 87) = 1;
                }
              }
            }

            else
            {
              *(v146 + *(v120 + 1)) = v159;
              v162 = v143[3];
              v163 = *(v120 + 1);
              v24 = a2;
              v46 = v370;
              if (v162 && v163 >= 1)
              {
                *(v120 + (*(v120 + 1) - 1) + 88) = 1;
              }

              v164 = v163 + 1;
              *(v120 + 1) = v164;
              *(v120 + v164 + 88) = 0;
            }

            goto LABEL_255;
          }

          LODWORD(v42) = v381;
          v115 = __srcb;
          v116 = v363;
LABEL_239:
          v42 = (v42 - 1);
          v381 = v42;
          v24 = a2;
          if (!v42)
          {
LABEL_407:
            v42 = 0;
            v46 = v370;
            goto LABEL_408;
          }

          v46 = v370;
          if (v42 > v115)
          {
            LOWORD(v119) = *v118;
            v140 = 2 * (v42 - v115);
            goto LABEL_184;
          }

LABEL_255:
          if (*v120 != 0x7FFFFFFF)
          {
            v165 = v357;
            if (*(v120 + 1) < v357)
            {
              v165 = *(v120 + 1);
            }

            v356 = 0;
            v357 = v165;
          }

LABEL_182:
          v70 = v372;
          ++v115;
          v42 = v381;
          if (v115 >= v381)
          {
            goto LABEL_330;
          }

          goto LABEL_183;
        }

        v69 = v374;
        if (v121)
        {
          v156 = *(v120 + 3) - v134;
          *(v120 + 3) = v156;
          *v120 = 0x7FFFFFFF;
          v382 = v115;
          if (v115 >= 1)
          {
            do
            {
              if (v24[32 * v351[v382] + 3] <= v156)
              {
                break;
              }

              --v382;
            }

            while (v382 > 0);
          }

          v46 = v370;
          if (v382 != v115)
          {
            v157 = *v118;
            v158 = (v370 + 2 * v382);
            j__memmove(v158 + 1, v158, 2 * (v115 - v382));
            v69 = v374;
            *v158 = v157;
            v24 = a2;
          }

          goto LABEL_255;
        }

        v42 = (v42 - 1);
        v381 = v42;
        if (!v42)
        {
          goto LABEL_407;
        }

        v140 = 2 * (v42 - v115);
        v46 = v370;
LABEL_184:
        j__memmove(v118, v116, v140);
        v46[v42] = v119;
        v69 = v374;
        if (v115 >= v42)
        {
LABEL_324:
          v70 = v372;
          goto LABEL_330;
        }
      }

      v134 = 0x40000000;
      v135 = v129;
      do
      {
LABEL_209:
        if ((v131 + *(*(v122 + 8 * (v135 >> 8)) + 8 * v135 + 4)) < v134)
        {
          v134 = v131 + *(*(v122 + 8 * (v135 >> 8)) + 8 * v135 + 4);
        }

        ++v135;
      }

      while (v135 < v130);
      goto LABEL_212;
    }

    v386 = 0;
    v385 = v42;
    v384 = 0;
    v383 = 0;
    v70 = v372;
    if (!v69[31])
    {
      if (v42 >= 1)
      {
        v117 = 0;
        v356 = 1;
        v357 = 0x7FFFFFFF;
        __srca = v46;
LABEL_262:
        v166 = __srca++;
        v355 = v117;
        while (1)
        {
          v167 = &v24[32 * *v166];
          if (*v167 == 0x7FFFFFFF)
          {
            goto LABEL_260;
          }

          v70 = v372;
          if (*(v167 + 1) > v376)
          {
            goto LABEL_320;
          }

          v168 = (*(*v69 + ((*v167 >> 5) & 0x7FFFFF8)) + 8 * *v167);
          if (*v168 == -2 && !v168[1])
          {
            *v167 = 0x7FFFFFFF;
            goto LABEL_261;
          }

          v169 = sub_1000D50A4(v69, v168, &v383, &v384);
          v170 = v383;
          if (v169 == 0x7FFFFFFF && v383 == 0)
          {
            *v167 = 0x7FFFFFFF;
            v69 = v374;
LABEL_260:
            v70 = v372;
            goto LABEL_261;
          }

          v172 = v169;
          v173 = qword_1001065A8;
          v70 = v372;
          if (qword_1001065A8)
          {
            v173 = *(qword_1001065A8 + 1704);
          }

          v69 = v374;
          v174 = v173 + v384;
          v384 += v173;
          v175 = v168[1];
          if (v175 != v372)
          {
            break;
          }

          v46 = v370;
          if (*(v167 + 1))
          {
            v192 = *(v167 + 3) - v383;
            *(v167 + 3) = v192;
            *v167 = 0x7FFFFFFF;
            v386 = v117;
            if (v117 >= 1)
            {
              do
              {
                if (v24[32 * v351[v386] + 3] <= v192)
                {
                  break;
                }

                --v386;
              }

              while (v386 > 0);
            }

            if (v386 != v117)
            {
              v193 = *v166;
              v194 = (v370 + 2 * v386);
              j__memmove(v194 + 1, v194, 2 * (v117 - v386));
              v70 = v372;
              v69 = v374;
              *v194 = v193;
              v24 = a2;
            }

            goto LABEL_320;
          }

          v176 = *v166;
          v42 = (v42 - 1);
          v385 = v42;
          if (!v42)
          {
            v356 = 1;
            v357 = v376;
            v24 = a2;
            goto LABEL_330;
          }

          v177 = 2 * (v42 - v117);
LABEL_263:
          j__memmove(v166, __srca, v177);
          v46[v42] = v176;
          v24 = a2;
          v69 = v374;
          if (v117 >= v42)
          {
            goto LABEL_324;
          }
        }

        v178 = v42;
        v179 = *(v374 + 48) + 16 * v175;
        v180 = *(v179 - 12);
        if (v180 < 1)
        {
          goto LABEL_304;
        }

        v364 = 0;
        v181 = *(v179 - 16);
        v182 = v180 + v181;
        v183 = (v167 + 1);
        v361 = 0x7FFFFFFF;
        while (1)
        {
          v184 = (*(*v69 + 8 * (v181 >> 8)) + 8 * v181);
          v185 = *(v167 + 1);
          if (v185 == 35)
          {
            if (*v184 != -2)
            {
              goto LABEL_296;
            }

            v186 = v184[1];
            if (v184[1] || v186 < v70)
            {
              goto LABEL_296;
            }

LABEL_286:
            v187 = *v184;
            if (!v185 && !v186 && v187 == 65534)
            {
              goto LABEL_296;
            }

            if (a10)
            {
              if (v187 != 65534)
              {
                *(v183 + v185) = v187;
                v189 = sub_100022FD8(a9, a10);
                v70 = v372;
                v69 = v374;
                if (!v189)
                {
                  goto LABEL_296;
                }
              }
            }

            if (v172 == v181)
            {
              v364 = v184;
              v361 = v172;
              goto LABEL_296;
            }

            v190 = *(v179 - 4) - v170 + v184[2];
            if (v190 < 0)
            {
              v191 = *(v179 - 4) - v170 + v184[2];
            }

            else
            {
              v191 = 0;
            }

            v24 = a2;
            sub_1000D4BDC(v69, a2, v167, &v385, v359, (v190 & ~(v190 >> 31)) + *(v167 + 3), v181, v370, v174 - v191, v69[28]);
            v70 = v372;
            v69 = v374;
            if (++v181 >= v182)
            {
LABEL_302:
              if (v364)
              {
                *v167 = v361;
                v195 = *v364;
                v117 = v355;
                if (v195 == 65534)
                {
                  v46 = v370;
                  if (v364[1])
                  {
                    v196 = *(v167 + 1);
                    if (v196)
                    {
                      *(v167 + v196 + 88) = 1;
                    }
                  }
                }

                else
                {
                  *(v183 + *(v167 + 1)) = v195;
                  v197 = *(v167 + 1);
                  if (v197 >= 1)
                  {
                    *(v167 + (v197 - 1) + 88) = *(v364 + 6);
                  }

                  v198 = v197 + 1;
                  *(v167 + 1) = v198;
                  *(v167 + v198 + 88) = 0;
                  *(v167 + 62) += v174;
                  v46 = v370;
                }
              }

              else
              {
                v178 = v385;
                v117 = v355;
LABEL_304:
                v42 = (v178 - 1);
                v385 = v178 - 1;
                if (v178 == 1)
                {
                  v356 = 1;
                  v357 = v376;
                  v46 = v370;
                  goto LABEL_330;
                }

                v46 = v370;
                if (v42 > v117)
                {
                  v176 = *v166;
                  v177 = 2 * (v42 - v117);
                  goto LABEL_263;
                }
              }

LABEL_320:
              if (*v167 != 0x7FFFFFFF)
              {
                v199 = v357;
                if (*(v167 + 1) < v357)
                {
                  v199 = *(v167 + 1);
                }

                v356 = 0;
                v357 = v199;
              }

LABEL_261:
              ++v117;
              v42 = v385;
              if (v117 >= v385)
              {
                goto LABEL_330;
              }

              goto LABEL_262;
            }
          }

          else
          {
            v186 = v184[1];
            if (v186 >= v70)
            {
              goto LABEL_286;
            }

LABEL_296:
            v24 = a2;
            if (++v181 >= v182)
            {
              goto LABEL_302;
            }
          }
        }
      }

LABEL_180:
      v356 = 1;
      v357 = 0x7FFFFFFF;
      goto LABEL_330;
    }

    v390 = 0;
    v389 = v42;
    v388 = 0;
    v387 = 0;
    if (v42 < 1)
    {
      goto LABEL_180;
    }

    v71 = 0;
    v354 = *(v69 + 11);
    v362 = *(v69 + 12);
    __src = v46;
    v356 = 1;
    v357 = 0x7FFFFFFF;
    v72 = v42;
    while (2)
    {
      v73 = __src++;
      while (2)
      {
        v74 = &v24[32 * *v73];
        v75 = *v74;
        if (v75 == 0x7FFFFFFF)
        {
          goto LABEL_174;
        }

        if (v74[1] > v376)
        {
          goto LABEL_169;
        }

        v76 = (v75 >> 5) & 0x7FFFFF8;
        v77 = (*(*v69 + v76) + 8 * v75);
        v78 = *(*(v69 + 2) + v76);
        v79 = *v77;
        if (v79 == 65534 && !v77[1])
        {
          v92 = *(v74 + 62);
          v24 = a2;
          if (*(v74 + 62))
          {
            v93 = v74[3] - v92;
            v74[3] = v93;
            *(v74 + 62) = 0;
            v390 = v71;
            if (v92 > 0)
            {
              if (v390 >= 1)
              {
                do
                {
                  if (v93 >= *(a2 + (v351[v390] << 7) + 12))
                  {
                    break;
                  }

                  --v390;
                }

                while (v390 > 0);
              }

              if (v390 != v71)
              {
                v107 = *v73;
                v108 = &v46[v390];
                j__memmove(v108 + 1, v108, 2 * (v71 - v390));
                v70 = v372;
                v69 = v374;
                *v108 = v107;
                v24 = a2;
              }
            }

            else
            {
              for (; v390 < v72 - 1; ++v390)
              {
                if (v93 <= *(a2 + (v358[v390] << 7) + 12))
                {
                  break;
                }
              }

              if (v390 != v71)
              {
                v94 = *v73;
                j__memmove(v73, __src, 2 * (v390 - v71));
                v46[v390] = v94;
                *v74 = 0x7FFFFFFF;
                goto LABEL_94;
              }
            }
          }

          *v74 = 0x7FFFFFFF;
          goto LABEL_174;
        }

        v80 = v69;
        v81 = sub_1000BA7F4(v362, v79, 0);
        v82 = sub_1000D523C(v80, v75, &v387, &v388, v81);
        if (v82 == 0x7FFFFFFF)
        {
          v70 = v372;
          if (v387)
          {
            v83 = *v73;
            v72 = v72 - 1;
            v389 = v72;
            if (!v72)
            {
              v356 = 1;
              v357 = v376;
              v24 = a2;
              v69 = v374;
              goto LABEL_329;
            }

LABEL_93:
            j__memmove(v73, __src, 2 * (v72 - v71));
            v46[v72] = v83;
            goto LABEL_94;
          }

          *v74 = 0x7FFFFFFF;
          v24 = a2;
          v69 = v374;
          goto LABEL_174;
        }

        v84 = v82;
        v85 = qword_1001065A8;
        v70 = v372;
        if (qword_1001065A8)
        {
          v85 = *(qword_1001065A8 + 1704);
        }

        v69 = v374;
        v86 = v85 + v388;
        v388 += v85;
        v87 = v77[1];
        if (v87 == v372)
        {
          if (v74[1])
          {
            v104 = v74[3] - v387;
            v74[3] = v104;
            *v74 = 0x7FFFFFFF;
            v390 = v71;
            v46 = v370;
            if (v71 >= 1)
            {
              do
              {
                if (*(a2 + (v351[v390] << 7) + 12) <= v104)
                {
                  break;
                }

                --v390;
              }

              while (v390 > 0);
            }

            if (v390 != v71)
            {
              v105 = *v73;
              v106 = (v370 + 2 * v390);
              j__memmove(v106 + 1, v106, 2 * (v71 - v390));
              v70 = v372;
              v69 = v374;
              *v106 = v105;
            }

            goto LABEL_169;
          }

          v83 = *v73;
          v72 = v72 - 1;
          v389 = v72;
          v46 = v370;
          if (v72)
          {
            goto LABEL_93;
          }

          v356 = 1;
          v357 = v376;
          v24 = a2;
          goto LABEL_329;
        }

        v88 = *(v374 + 48) + 16 * v87;
        v89 = *(v88 - 12);
        if (v89 < 1)
        {
          goto LABEL_144;
        }

        v346 = v88;
        v90 = *(v88 - 16);
        v91 = v89 + v90;
        v352 = 0;
        v353 = v74 + 4;
        v360 = v78 + 12 * v75;
        v347 = 0x7FFFFFFF;
        v345 = v387;
        while (2)
        {
          v97 = (*(*v69 + 8 * (v90 >> 8)) + 8 * v90);
          v98 = *(*(v69 + 2) + 8 * (v90 >> 8));
          v99 = v74[1];
          if (v99 == 35)
          {
            if (*v97 == -2)
            {
              v100 = v97[1];
              if (!v97[1] && v100 >= v70)
              {
                goto LABEL_131;
              }
            }

            goto LABEL_124;
          }

          v100 = v97[1];
          if (v100 < v70)
          {
            goto LABEL_124;
          }

LABEL_131:
          v101 = *v97;
          if (v99 || (!v100 ? (v102 = v101 == 65534) : (v102 = 0), !v102))
          {
            if (!a10 || v101 == 65534 || (*(v353 + v99) = v101, sub_100022FD8(a9, a10)))
            {
              if (sub_10000285C(v354, *(v360 + 4), *(v98 + 12 * v90 + 6)))
              {
                v69 = v374;
                if (v84 == v90)
                {
                  v352 = v97;
                  v347 = v84;
                  goto LABEL_123;
                }

                v95 = *(v346 - 4) - v345 + v97[2];
                if (v95 < 0)
                {
                  v96 = *(v346 - 4) - v345 + v97[2];
                }

                else
                {
                  v96 = 0;
                }

                sub_1000D4BDC(v374, a2, v74, &v389, v359, (v95 & ~(v95 >> 31)) + v74[3], v90, v370, v86 - v96, *(v374 + 112));
              }
            }

            v69 = v374;
LABEL_123:
            v70 = v372;
          }

LABEL_124:
          if (++v90 < v91)
          {
            continue;
          }

          break;
        }

        if (!v352)
        {
          LODWORD(v72) = v389;
LABEL_144:
          v72 = (v72 - 1);
          v389 = v72;
          if (!v72)
          {
            v356 = 1;
            v357 = v376;
            v24 = a2;
            v46 = v370;
            goto LABEL_329;
          }

          v46 = v370;
          if (v72 <= v71)
          {
            goto LABEL_169;
          }

          v103 = *v73;
          j__memmove(v73, __src, 2 * (v72 - v71));
          *(v370 + 2 * v72) = v103;
LABEL_94:
          v24 = a2;
          v69 = v374;
          v70 = v372;
          if (v71 >= v72)
          {
            goto LABEL_329;
          }

          continue;
        }

        break;
      }

      *v74 = v347;
      v109 = *v352;
      if (v109 == 65534)
      {
        v46 = v370;
        if (v352[1])
        {
          v110 = v74[1];
          if (v110)
          {
            *(v74 + v110 + 88) = 1;
          }
        }
      }

      else
      {
        *(v353 + v74[1]) = v109;
        v111 = v74[1];
        if (*(*(*(v69 + 2) + 8 * (v347 >> 8)) + 12 * v347 + 6))
        {
          v112 = 1;
        }

        else
        {
          v112 = v111 < 1;
        }

        if (!v112)
        {
          *(v74 + v74[1] + 87) = 1;
        }

        v113 = v111 + 1;
        v74[1] = v113;
        *(v74 + v113 + 88) = 0;
        *(v74 + 62) += v86;
        v46 = v370;
      }

LABEL_169:
      if (*v74 != 0x7FFFFFFF)
      {
        v114 = v357;
        if (v74[1] < v357)
        {
          v114 = v74[1];
        }

        v356 = 0;
        v357 = v114;
      }

      v24 = a2;
LABEL_174:
      ++v71;
      v72 = v389;
      if (v71 < v389)
      {
        continue;
      }

      break;
    }

LABEL_329:
    v42 = v72;
LABEL_330:
    if (v357 != v376 && qword_1001065A8 && *(qword_1001065A8 + 992))
    {
      sub_1000D2C8C(v69, v24, v42, v348, v350, v349, v46, v357);
      v70 = v372;
      v69 = v374;
    }

    v200 = (v42 - 1);
    if (v42 < 1)
    {
      v203 = v42;
      v204 = v42;
    }

    else
    {
      v201 = &v46[v200];
      if (a10)
      {
        v202 = 1 - v42;
        v203 = v42;
        v204 = v42;
        do
        {
          v205 = (a2 + (*v201 << 7));
          if (v205->i32[0] != 0x7FFFFFFF && *(*(*v69 + ((v205->u32[0] >> 5) & 0x7FFFFF8)) + 8 * v205->i32[0] + 2) == v70)
          {
            v206 = v205->u32[1];
            if (v206 && (v207 = sub_10002336C(a9, a10, v205 + 1, v206), v70 = v372, v69 = v374, v207))
            {
              v205->i32[0] = 0x7FFFFFFF;
              if (v205[7].i16[6])
              {
                v205->i32[3] -= v205[7].i16[6];
                v205[7].i16[6] = 0;
              }
            }

            else
            {
              v208 = (v204 - 1);
              v203 = v200;
              v204 = v200;
              if (v200 != v208)
              {
                v209 = *v201;
                j__memmove(v201, v201 + 1, 2 * (v202 + v208));
                v70 = v372;
                v69 = v374;
                v46[v208] = v209;
                v203 = v208;
                v204 = v208;
              }
            }
          }

          v200 = (v200 - 1);
          --v201;
          ++v202;
        }

        while (v200 != -1);
      }

      else
      {
        v251 = 1 - v42;
        v203 = v42;
        v204 = v42;
        do
        {
          v252 = *v201;
          v253 = (a2 + (v252 << 7));
          if (*v253 != 0x7FFFFFFF && *(*(*v69 + ((*v253 >> 5) & 0x7FFFFF8)) + 8 * *v253 + 2) == v372)
          {
            if (v253[1])
            {
              *v253 = 0x7FFFFFFF;
              if (*(v253 + 62))
              {
                v253[3] -= *(v253 + 62);
                *(v253 + 62) = 0;
              }
            }

            else
            {
              v254 = (v204 - 1);
              v203 = v200;
              v204 = v200;
              if (v200 != v254)
              {
                j__memmove(v201, v201 + 1, 2 * (v251 + v254));
                v69 = v374;
                v46[v254] = v252;
                v203 = v254;
                v204 = v254;
              }
            }
          }

          v200 = (v200 - 1);
          --v201;
          ++v251;
        }

        while (v200 != -1);
      }
    }

    if (v204)
    {
      qsort(v46, v204, 2uLL, sub_1000D3154);
      v42 = v203;
      v24 = a2;
      if (v203 < 1)
      {
        v69 = v374;
      }

      else
      {
        v210 = 0;
        v211 = v203;
        v69 = v374;
        do
        {
          v212 = (v210 + 1);
          v365 = v46;
          __srcc = v212;
          if (v212 >= v211)
          {
            v377 = v42;
          }

          else
          {
            v213 = *v46;
            v214 = &v24[32 * v213];
            v215 = *(v69 + 12);
            v216 = (v370 + 2 * v212);
            v377 = v42;
            if (v69[28])
            {
              v217 = v214 + 22;
              v218 = &v371[128 * v213];
              while (1)
              {
                v219 = v211;
                while (1)
                {
                  v220 = *v216;
                  v221 = &v24[32 * v220];
                  if (*v221 == *v214)
                  {
                    v222 = v221[1];
                    if (v222 == v214[1] && *(v221 + v222 + 88) == *(v217 + v222))
                    {
                      break;
                    }
                  }

LABEL_357:
                  LODWORD(v212) = v212 + 1;
                  ++v216;
                  if (v212 >= v219)
                  {
                    goto LABEL_351;
                  }
                }

                if (qword_1001065A8 && *(qword_1001065A8 + 1760))
                {
                  v222 = v222;
                  v223 = &v371[128 * v220];
                  while (v222 >= 1)
                  {
                    v224 = *&v223[2 * v222];
                    v225 = *&v218[2 * v222--];
                    if (v224 != v225)
                    {
                      goto LABEL_356;
                    }
                  }
                }

                else
                {
                  v226 = v222;
                  v227 = &v371[128 * v220];
                  while (v226 >= 1)
                  {
                    v228 = sub_1000BA7F4(v215, *&v227[2 * v226], 0);
                    v229 = sub_1000BA7F4(v215, *&v218[2 * v226--], 0);
                    if (v228 != v229)
                    {
                      v219 = v377;
                      v211 = v377;
LABEL_356:
                      v24 = a2;
                      v217 = v214 + 22;
                      goto LABEL_357;
                    }
                  }
                }

                v230 = v214[3];
                v231 = *(v221 + 62) - v221[3];
                if (v230 - *(v214 + 62) + v231 >= 1)
                {
                  *(v214 + 62) = v231 + v230;
                }

                v232 = v377 - 1;
                v233 = v377 - 1 - v212;
                v217 = v214 + 22;
                v377 = v232;
                if (v232 <= v212)
                {
                  break;
                }

                v234 = *v216;
                j__memmove(v216, v216 + 1, 2 * v233);
                *(v370 + 2 * v232) = v234;
                v211 = v232;
                v24 = a2;
              }
            }

            else
            {
              v235 = v212;
              v236 = &v371[128 * v213];
              v237 = v211;
              v238 = *v216;
              v239 = &v24[32 * v238];
              if (*v239 != *v214)
              {
                goto LABEL_378;
              }

              while (1)
              {
LABEL_380:
                v240 = v239[1];
                if (v240 != v214[1])
                {
                  goto LABEL_378;
                }

                if (qword_1001065A8 && *(qword_1001065A8 + 1760))
                {
                  v241 = &v371[128 * v238];
                  while (v240 >= 1)
                  {
                    v242 = *&v241[2 * v240];
                    v243 = *&v236[2 * v240--];
                    if (v242 != v243)
                    {
                      goto LABEL_377;
                    }
                  }
                }

                else
                {
                  v244 = &v371[128 * v238];
                  while (v240 >= 1)
                  {
                    v245 = sub_1000BA7F4(v215, *&v244[2 * v240], 0);
                    v246 = sub_1000BA7F4(v215, *&v236[2 * v240--], 0);
                    if (v245 != v246)
                    {
                      v237 = v377;
                      v211 = v377;
LABEL_377:
                      v24 = a2;
                      goto LABEL_378;
                    }
                  }
                }

                v247 = v214[3];
                v248 = *(v239 + 62) - v239[3];
                if (v247 - *(v214 + 62) + v248 >= 1)
                {
                  *(v214 + 62) = v248 + v247;
                }

                v232 = v377 - 1;
                v249 = v377 - 1 - v235;
                v377 = v232;
                if (v232 <= v235)
                {
                  break;
                }

                v250 = *v216;
                j__memmove(v216, v216 + 1, 2 * v249);
                *(v370 + 2 * v232) = v250;
                v211 = v232;
                v237 = v232;
                v24 = a2;
                v238 = *v216;
                v239 = (a2 + (v238 << 7));
                if (*v239 != *v214)
                {
LABEL_378:
                  while (1)
                  {
                    ++v235;
                    ++v216;
                    if (v235 >= v237)
                    {
                      goto LABEL_351;
                    }

                    v238 = *v216;
                    v239 = &v24[32 * v238];
                    if (*v239 == *v214)
                    {
                      goto LABEL_380;
                    }
                  }
                }
              }
            }

            v211 = v232;
            v24 = a2;
          }

LABEL_351:
          v210 = __srcc;
          v46 = v365 + 1;
          v69 = v374;
          v42 = v377;
        }

        while (__srcc < v211);
      }
    }

    else
    {
      v24 = a2;
      v42 = v203;
    }

    v46 = v370;
    if (!v356)
    {
      continue;
    }

    break;
  }

  if (!v42)
  {
    goto LABEL_408;
  }

  v255 = sub_1000C0034(v344 << 7);
  if (!v255)
  {
    v42 = 0;
    goto LABEL_408;
  }

  v256 = v255;
  memcpy(v255, v24, v344 << 7);
  v373 = v42;
  if (v42 >= 1)
  {
    v257 = v42;
    v258 = v24;
    v259 = v370;
    do
    {
      v260 = *v259++;
      v261 = (v256 + (v260 << 7));
      v262 = *v261;
      v263 = v261[1];
      v264 = v261[3];
      v258[2] = v261[2];
      v258[3] = v264;
      *v258 = v262;
      v258[1] = v263;
      v265 = v261[4];
      v266 = v261[5];
      v267 = v261[7];
      v258[6] = v261[6];
      v258[7] = v267;
      v258[4] = v265;
      v258[5] = v266;
      v258 += 8;
      --v257;
    }

    while (v257);
  }

  sub_1000BFEC4(v256);
  if (!*(v374 + 116) && v42 >= 1)
  {
    v378 = v42;
    v268 = 0;
    v269 = 0;
    v270 = (v24 + 4);
    v271 = v24 + 18;
    v272 = v24 - 4;
    v273 = (v24 + 22);
    v274 = v24 + 21;
    v275 = v24 + 2;
    v276 = 88;
    while (1)
    {
      v380 = v269;
      v284 = &v24[32 * v269];
      v285 = (v284 + 22);
      v286 = v284[1];
      if (v286 >= 2)
      {
        break;
      }

LABEL_418:
      v375 = v268;
      v277 = v276;
      v278 = v274;
      v279 = v286 - 1;
      v280 = v270;
      v281 = v284 + 22;
      v282 = v275;
      v283 = v272;
      j__memmove(v285, v284 + 89, v279);
      *(v281 + v279) = 0;
      v269 = v380 + 1;
      v270 = v280 + 8;
      v271 += 32;
      v272 = v283 + 32;
      v273 += 8;
      v274 = v278 + 32;
      v275 = v282 + 32;
      v276 = v277 + 128;
      v268 = v375 + 128;
      if (v380 + 1 == v373)
      {
        v46 = v370;
        v42 = v378;
        goto LABEL_408;
      }
    }

    v287 = v286 >> 1;
    if (v286 >= 8)
    {
      v289 = 2 * v286;
      v290 = 2 * v287;
      v288 = 0;
      if (v284 + 2 * v286 + -2 * v287 + 16 <= v284 + 2 * v286 + 14 && v284 + v286 - v287 + 88 <= v284 + v286 + 87)
      {
        v301 = v284 + 4;
        v302 = v284 + v290 + 16;
        v303 = &v285[v287];
        v304 = v284 + v289 - v290 + 16;
        v305 = v284 + v289 + 16;
        v306 = &v285[v286 - v287];
        v307 = &v285[v286];
        v308 = (v284 + 4) >= v305 || v304 >= v302;
        v309 = !v308;
        v310 = v301 >= v307 || v306 >= v302;
        v311 = !v310;
        v312 = v285 >= v305 || v304 >= v303;
        v313 = !v312;
        v314 = v285 >= v307 || v306 >= v303;
        v315 = !v314;
        v316 = v304 >= v307 || v306 >= v305;
        v317 = !v316;
        v318 = v285 >= v302 || v301 >= v303;
        if (v318 && !v309 && !v311 && !v313 && !v315 && !v317)
        {
          if (v286 >= 0x20)
          {
            v288 = (v286 >> 1) & 0x3FFFFFF0;
            v319 = (v271 + v286);
            v320 = (v272 + v289);
            v321 = v288;
            v322 = v273;
            v323 = v270;
            do
            {
              v325 = *v323;
              v324 = v323[1];
              v326 = vrev64q_s16(*v320);
              v327 = vrev64q_s16(v320[1]);
              *v323 = vextq_s8(v327, v327, 8uLL);
              v323[1] = vextq_s8(v326, v326, 8uLL);
              v323 += 2;
              v328 = vrev64q_s16(v325);
              v329 = vrev64q_s16(v324);
              *v320 = vextq_s8(v329, v329, 8uLL);
              v320[1] = vextq_s8(v328, v328, 8uLL);
              v320 -= 2;
              v330 = *v322;
              v331 = vrev64q_s8(*v319);
              *v322++ = vextq_s8(v331, v331, 8uLL);
              v332 = vrev64q_s8(v330);
              *v319-- = vextq_s8(v332, v332, 8uLL);
              v321 -= 16;
            }

            while (v321);
            if (v288 == v287)
            {
              goto LABEL_418;
            }

            if ((v287 & 0xC) == 0)
            {
              goto LABEL_427;
            }
          }

          else
          {
            v288 = 0;
          }

          v333 = v288;
          v288 = (v286 >> 1) & 0x3FFFFFFC;
          v334 = 2 * v333;
          v335 = (v274 + v286 - v333);
          v336 = (v275 + v289 - 2 * v333);
          v337 = (v273->i32 + v333);
          v338 = v333 - v288;
          do
          {
            v339 = *&v270->i8[v334];
            v340 = vrev64_s16(*v336);
            *&v270->i8[v334] = v340;
            v341 = vrev64_s16(v339);
            *v336-- = v341;
            v341.i32[0] = *v337;
            v342 = vmovl_u8(v341).u64[0];
            v340.i32[0] = *v335;
            *v337++ = vuzp1_s8(vrev64_s16(*&vmovl_u8(v340)), v342).u32[0];
            v343 = vrev64_s16(v342);
            *v335-- = vuzp1_s8(v343, v343).u32[0];
            v334 += 8;
            v338 += 4;
          }

          while (v338);
          if (v288 == v287)
          {
            goto LABEL_418;
          }
        }
      }
    }

    else
    {
      v288 = 0;
    }

LABEL_427:
    v292 = v287 - v288;
    v293 = v24 + v288;
    v294 = v268 + v286 - v288;
    v295 = 2 * v288;
    v296 = v268 + 2 * v286 - 2 * v288;
    v297 = v268 + v295;
    v298 = v276;
    do
    {
      v299 = *(v24 + v297 + 16);
      *(v24 + v297 + 16) = *(v24 + v296 + 14);
      *(v24 + v296 + 14) = v299;
      v300 = v293[v298];
      v293[v298++] = *(v24 + v294 + 87);
      *(v24 + v294-- + 87) = v300;
      v296 -= 2;
      v297 += 2;
      --v292;
    }

    while (v292);
    goto LABEL_418;
  }

LABEL_408:
  sub_1000BFEC4(v46);
LABEL_409:
  sub_100022F5C(a9, a10);
  return v42;
}

uint64_t sub_1000D25CC(void **a1)
{
  v2 = *(a1 + 42);
  if (v2 < 0)
  {
LABEL_79:
    v82 = (*(a1 + 14) + 255) >> 8;
    if (v82 < *(a1 + 2))
    {
      v83 = (*(a1 + 14) + 255) >> 8;
      do
      {
        sub_1000BFEC4((*a1)[v83]);
        (*a1)[v83] = 0;
        sub_1000BFEC4(a1[2][v83]);
        a1[2][v83++] = 0;
      }

      while (*(a1 + 2) > v83);
    }

    *(a1 + 2) = v82;
    *(a1 + 6) = v82;
    return 1;
  }

  v3 = a1[6];
  v88 = &v3[2 * v2 + 2];
  v86 = v3;
  while (1)
  {
    v5 = &v3[2 * v2];
    v6 = v5[1];
    if (v6 < 1)
    {
      v28 = 0;
      v26 = 0;
      v7 = 0;
      v87 = 0;
      goto LABEL_63;
    }

    v7 = 0;
    v8 = *v5;
    v9 = v6 + *v5;
    v10 = *a1;
    v11 = a1[2];
    v12 = *v5;
    do
    {
      v13 = *(v11[v12 >> 8] + 12 * v12);
      if (v13 == 2 || (v14 = (*(v10 + 8 * (v12 >> 8)) + 8 * v12), v15 = *v14, v15 == 65534))
      {
        ++v7;
      }

      else if (v13 == 1)
      {
        v16 = &a1[6][2 * v14[1]];
        v17 = *(v16 - 16);
        v18 = *(v16 - 12);
        v19 = v18 + v17;
        if (v18 >= 1)
        {
          v20 = v19 - 1;
          do
          {
            v22 = (v20 + v17) >> 9;
            v23 = v15 - *(*(v10 + 8 * v22) + 8 * ((v20 + v17) >> 1));
            if (!v23)
            {
              v23 = -*(v11[v22] + 12 * ((v20 + v17) >> 1));
            }

            v21 = (v20 + v17) >> 1;
            if (v23 >= 1)
            {
              v17 = v21 + 1;
            }

            else
            {
              v20 = v21 - 1;
            }
          }

          while (v17 <= v20);
        }

        v24 = v17;
        if (v17 < v19)
        {
          v24 = v17;
          while (*(*(v10 + 8 * (v24 >> 8)) + 8 * v24) == v15 && *(v11[v24 >> 8] + 12 * v24) != 1)
          {
            if (v19 == ++v24)
            {
              v24 = v19;
              break;
            }
          }
        }

        v7 = v7 - v17 + v24;
      }

      ++v12;
    }

    while (v12 < v9);
    v87 = v7 > 0;
    if (v7 >= 1)
    {
      break;
    }

    v26 = 0;
    v28 = 0;
LABEL_33:
    v29 = 0;
    do
    {
      v32 = *a1;
      v33 = ((*a1)[v8 >> 8] + 8 * v8);
      v34 = a1[2];
      v35 = v34[v8 >> 8] + 12 * v8;
      if (*v35 == 2 || (v36 = *v33, v36 == 65534))
      {
        *(v26 + 8 * v29) = *v33;
        v30 = v28 + 12 * v29;
        v31 = *v35;
        *(v30 + 8) = *(v35 + 8);
        *v30 = v31;
        ++v29;
      }

      else if (*v35 == 1)
      {
        v37 = &a1[6][2 * v33[1]];
        v39 = *(v37 - 16);
        v38 = *(v37 - 12);
        v40 = v38 + v39;
        if (v38 >= 1)
        {
          v41 = v40 - 1;
          do
          {
            v43 = (v41 + v39) >> 9;
            v44 = v36 - *(*(v32 + 8 * v43) + 8 * ((v41 + v39) >> 1));
            if (!v44)
            {
              v44 = -*(v34[v43] + 12 * ((v41 + v39) >> 1));
            }

            v42 = (v41 + v39) >> 1;
            if (v44 >= 1)
            {
              v39 = v42 + 1;
            }

            else
            {
              v41 = v42 - 1;
            }
          }

          while (v39 <= v41);
        }

        v45 = v39;
        if (v39 < v40)
        {
          v45 = v39;
          while (*(*(v32 + 8 * (v45 >> 8)) + 8 * v45) == v36 && *(v34[v45 >> 8] + 12 * v45) != 1)
          {
            if (v40 == ++v45)
            {
              v45 = v40;
              break;
            }
          }
        }

        if ((v45 - v39) >= 1)
        {
          v46 = 0x4000;
          v47 = 0x40000000;
          v48 = v39;
          do
          {
            v49 = v48 >> 8;
            if (*(*(v32 + 8 * (v48 >> 8)) + 8 * v48 + 4) < v46)
            {
              v47 = *(v34[v49] + 12 * v48 + 8);
              v46 = *(*(v32 + 8 * v49) + 8 * v48 + 4);
            }

            ++v48;
          }

          while (v45 != v48);
          if ((v45 - v39) >= 1)
          {
            v50 = 0;
            v51 = v39;
            v52 = 8 * v29;
            v53 = (v26 + 4 + v52);
            v54 = v26 + v52;
            v55 = v28 + 12 * v29;
            v56 = v51 - v45;
            do
            {
              v57 = (v51 + v50) >> 8;
              v58 = (*a1)[v57] + 8 * (v51 + v50);
              v59 = a1[2][v57];
              v60 = *v33;
              *(v54 + 8 * v50) = *v33;
              v61 = v59 + 12 * (v51 + v50);
              *(v53 - 1) = *(v58 + 2);
              *v53 = *(v58 + 4) - v46 + WORD2(v60);
              v53 += 4;
              LODWORD(v58) = *(v35 + 8);
              *v55 = *v35;
              *(v55 + 8) = v58;
              *v55 = 1;
              *(v55 + 4) = *(v61 + 4);
              *(v55 + 8) = *(v35 + 8) - v47 + *(v61 + 8);
              ++v50;
              v55 += 12;
            }

            while (v56 + v50);
            v29 += v50;
          }
        }
      }

      ++v8;
    }

    while (v8 < v9);
    v6 = v5[1];
LABEL_63:
    v62 = v7 - v6;
    if (v7 != v6)
    {
      v63 = *(a1 + 14);
      if (*(a1 + 17))
      {
        v64 = v5;
        v65 = 2;
        v66 = 4;
        v67 = 44;
        v68 = 5;
      }

      else
      {
        v64 = v5;
        if (!sub_1000C06E8(a1, a1 + 3, a1 + 2, 8, 8, v63 + v62))
        {
          goto LABEL_83;
        }

        if (!*(a1 + 31))
        {
          goto LABEL_70;
        }

        v65 = 12;
        v66 = 2;
        v67 = 28;
        v68 = 3;
      }

      if (!sub_1000C06E8(&a1[v66], (a1 + v67), &a1[v68], 8, v65, v63 + v62))
      {
LABEL_83:
        sub_1000BFEC4(v26);
        v84 = v28;
        goto LABEL_85;
      }

LABEL_70:
      if (v2 < *(a1 + 42))
      {
        v69 = v64[4];
        v70 = *(a1 + 14);
        v85 = v2;
        v71 = v70 - v69;
        sub_1000C0C08(*a1, *(a1 + 2), 256, 8, v69, v70 - v69, v69 + v62);
        v72 = v71;
        v2 = v85;
        sub_1000C0C08(a1[2], *(a1 + 6), 256, 12, v69, v72, v69 + v62);
      }

      *(a1 + 14) += v62;
      v5 = v64;
      v64[1] = v7;
      v3 = v86;
      if (v2 < *(a1 + 42))
      {
        v73 = v88;
        v74 = v2;
        do
        {
          *v73 += v62;
          v73 += 4;
          ++v74;
        }

        while (v74 < *(a1 + 42));
      }
    }

    if (v87)
    {
      v75 = *v5;
      v76 = v7;
      v77 = v26;
      v78 = v28;
      do
      {
        v79 = *v77++;
        *((*a1)[v75 >> 8] + 8 * v75) = v79;
        v80 = a1[2][v75 >> 8] + 12 * v75;
        v81 = *v78;
        *(v80 + 8) = *(v78 + 8);
        *v80 = v81;
        ++v75;
        v78 += 12;
        --v76;
      }

      while (v76);
    }

    sub_1000BFEC4(v26);
    sub_1000BFEC4(v28);
    v88 -= 16;
    if (v2-- <= 0)
    {
      goto LABEL_79;
    }
  }

  result = sub_1000BFF20(8 * v7);
  if (!result)
  {
    return result;
  }

  v26 = result;
  v27 = sub_1000BFF20(12 * v7);
  if (v27)
  {
    v28 = v27;
    v8 = *v5;
    v6 = v5[1];
    v9 = v6 + *v5;
    if (v6 < 1)
    {
      goto LABEL_63;
    }

    goto LABEL_33;
  }

  v84 = v26;
LABEL_85:
  sub_1000BFEC4(v84);
  return 0;
}

uint64_t sub_1000D2C8C(uint64_t result, uint64_t a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned __int16 *a7, int a8)
{
  v58 = 0;
  v10 = *(result + 96);
  v54 = result;
  v56 = a2;
  if (!*(result + 116))
  {
    if (a3 < 1)
    {
      return result;
    }

    v29 = a6;
    v30 = 0;
    v51 = a2 + 16;
    while (1)
    {
      v31 = *a7;
      v32 = (a2 + (v31 << 7));
      v33 = v32[1];
      v34 = v32[2];
      if (v34 > v33 || v33 == 0)
      {
        goto LABEL_41;
      }

      if (v34)
      {
        v36 = v32[2];
      }

      else
      {
        v36 = 1;
      }

      if (v34)
      {
        v37 = 1;
      }

      else
      {
        v37 = v29 == 0xFFFF;
      }

      if (v37)
      {
        if (v33 >= a8)
        {
          v38 = a8;
        }

        else
        {
          v38 = v32[1];
        }

        v39 = v38 - v36;
        if (v38 <= v36)
        {
LABEL_58:
          v40 = *v32;
          if (v40 == 0x7FFFFFFF)
          {
            goto LABEL_59;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v58 = sub_1000BA7F4(v10, *(v32 + 8), 0);
        v36 = 1;
        result = sub_1000BABCC(v10, &v58, 1u, v29);
        v32[3] += result;
        if (v32[1] >= a8)
        {
          v38 = a8;
        }

        else
        {
          v38 = v32[1];
        }

        v39 = v38 - 1;
        if (v38 <= 1)
        {
          goto LABEL_58;
        }
      }

      v43 = (v51 + (v31 << 7) + 2 * v36);
      do
      {
        v58 = sub_1000BA7F4(v10, *v43, 0);
        v44 = sub_1000BA7F4(v10, *(v43 - 1), 0);
        v45 = sub_1000BABCC(v10, &v58, 1u, v44);
        result = sub_1000BABCC(v10, 0, 0, v44);
        v32[3] = v32[3] - result + v45;
        ++v43;
        --v39;
      }

      while (v39);
      v36 = v38;
      v29 = a6;
      v40 = *v32;
      if (v40 == 0x7FFFFFFF)
      {
LABEL_59:
        v41 = 1;
        v42 = v32[1];
        if (v38 >= v42)
        {
          goto LABEL_70;
        }

        goto LABEL_40;
      }

LABEL_68:
      v46 = (*(*v54 + ((v40 >> 5) & 0x7FFFFF8)) + 8 * v40);
      if (*v46 == -2)
      {
        v41 = v46[1] == 0;
        v42 = v32[1];
        if (v38 >= v42)
        {
LABEL_70:
          if (v41)
          {
            v47 = sub_1000BA7F4(v10, *(v32 + v42 + 7), 0);
            v48 = sub_1000BABCC(v10, a4, a5, v47);
            result = sub_1000BABCC(v10, 0, 0, v47);
            v49 = v32[3] - result + v48;
            v29 = a6;
            v32[3] = v49;
            ++v36;
          }
        }
      }

LABEL_40:
      v32[2] = v36;
      a2 = v56;
LABEL_41:
      ++a7;
      if (++v30 == a3)
      {
        return result;
      }
    }
  }

  if (a3 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v59 = 0;
    v50 = a2 + 16;
    do
    {
      v13 = *a7;
      v14 = (a2 + (v13 << 7));
      v15 = v14[1];
      v16 = v14[2];
      if (v16 > v15 || v15 == 0)
      {
        goto LABEL_7;
      }

      if (v16)
      {
        if (v15 >= a8)
        {
          v18 = a8;
        }

        else
        {
          v18 = v14[1];
        }

        v19 = v18 - v16;
        if (v18 <= v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v22 = sub_1000BA7F4(v10, *(v14 + 8), 0);
        result = sub_1000BABCC(v10, a4, a5, v22);
        v14[3] += result;
        v16 = 1;
        v12 = 1;
        if (v14[1] >= a8)
        {
          v18 = a8;
        }

        else
        {
          v18 = v14[1];
        }

        v19 = v18 - 1;
        if (v18 <= 1)
        {
LABEL_17:
          v20 = *v14;
          if (v20 == 0x7FFFFFFF)
          {
            goto LABEL_18;
          }

          goto LABEL_29;
        }
      }

      v23 = (v50 + (v13 << 7) + 2 * v16);
      do
      {
        v24 = sub_1000BA7F4(v10, *v23, 0);
        v59 = sub_1000BA7F4(v10, *(v23 - 1), 0);
        result = sub_1000BABCC(v10, &v59, 1u, v24);
        LODWORD(v25) = qword_1001065A8;
        if (qword_1001065A8)
        {
          v25 = *(qword_1001065A8 + 1704);
        }

        ++v23;
        v14[3] += v25 + result;
        --v19;
      }

      while (v19);
      v12 = 1;
      v16 = v18;
      v20 = *v14;
      if (v20 == 0x7FFFFFFF)
      {
LABEL_18:
        v21 = v14[1];
        if (v18 >= v21)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      }

LABEL_29:
      v26 = (*(*v54 + ((v20 >> 5) & 0x7FFFFF8)) + 8 * v20);
      if (*v26 == -2)
      {
        v27 = v26[1] == 0;
        v21 = v14[1];
        if (v18 >= v21 && v27)
        {
LABEL_34:
          if (a6 != 0xFFFF)
          {
            v59 = sub_1000BA7F4(v10, *(v14 + v21 + 7), 0);
            result = sub_1000BABCC(v10, &v59, 1u, a6);
            v14[3] += result;
          }

          ++v16;
          v12 = 1;
          goto LABEL_5;
        }
      }

LABEL_4:
      if (!v12)
      {
        a2 = v56;
        goto LABEL_6;
      }

LABEL_5:
      a2 = v56;
      v14[3] -= *(v14 + 62);
      *(v14 + 62) = 0;
LABEL_6:
      v14[2] = v16;
LABEL_7:
      ++a7;
      ++v11;
    }

    while (v11 != a3);
  }

  return result;
}

uint64_t sub_1000D3170(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a1 + 60);
  v8 = *(a1 + 48);
  v152 = *(a1 + 88);
  v158 = *(a1 + 96);
  v136 = sub_1000CA0BC();
  if (!*(v6 + 64))
  {
    if (!sub_1000D25CC(v6))
    {
      return 0;
    }

    *(v6 + 64) = 1;
  }

  v16 = 4 * v7;
  v17 = sub_1000C9F54(v16 + 4, v9, v10, v11, v12, v13, v14, v15);
  bzero(v17, v16);
  *&v17[v16] = 1;
  if (*(v6 + 56) >= 1)
  {
    v25 = 0;
    do
    {
      v26 = *(*(*v6 + 8 * (v25 >> 8)) + 8 * v25 + 2);
      ++*&v17[4 * v26];
      ++v25;
    }

    while (v25 < *(v6 + 56));
  }

  v138 = v7 - 1;
  if (v7 > 1)
  {
    v27 = v138;
    do
    {
      if (!*&v17[4 * v27])
      {
        v29 = v8 + 16 * v27;
        v30 = *(v29 - 12);
        if (v30 >= 1)
        {
          v31 = *(v29 - 16);
          v32 = v30 + v31;
          do
          {
            v33 = *(*(*v6 + 8 * (v31 >> 8)) + 8 * v31 + 2);
            --*&v17[4 * v33];
            ++v31;
          }

          while (v31 < v32);
        }
      }

      v28 = v27-- <= 1;
    }

    while (!v28);
  }

  v148 = sub_1000C9F54(v16 + 4, v18, v19, v20, v21, v22, v23, v24);
  LODWORD(v34) = qword_1001065A8;
  v137 = v8;
  if (!qword_1001065A8 || (v34 = *(qword_1001065A8 + 5400) / 0x1CuLL, v34 <= 999))
  {
    LODWORD(v144) = v34;
    v147 = v34;
    v35 = sub_1000BFF20(28 * v34);
    if (v35)
    {
      goto LABEL_18;
    }

LABEL_138:
    v41 = 0;
    v130 = 0;
    goto LABEL_147;
  }

  v144 = *(qword_1001065A8 + 5400) / 0x1CuLL;
  v147 = 1000;
  v35 = sub_1000BFF20(0x6D60uLL);
  if (!v35)
  {
    goto LABEL_138;
  }

LABEL_18:
  v36 = v35;
  v37 = *(v6 + 128);
  if (!v37)
  {
    if (qword_1001065A8)
    {
      v131 = *(qword_1001065A8 + 4120);
    }

    else
    {
      v131 = 0;
    }

    v132 = sub_10009B1D8(v131);
    *(v6 + 128) = v132;
    sub_10009B30C(v132, *(v6 + 96));
    v139 = *(v6 + 128);
    sub_10009B354(v139, 1, 1);
    if (v7 >= 1)
    {
      goto LABEL_20;
    }

LABEL_145:
    v39 = 0;
    v7 = 0;
    v41 = v36;
LABEL_146:
    *(v148 + 4 * v7) = v39;
    v130 = 1;
    goto LABEL_147;
  }

  v139 = *(v6 + 128);
  sub_10009B354(v37, 1, 1);
  if (v7 < 1)
  {
    goto LABEL_145;
  }

LABEL_20:
  v38 = 0;
  v39 = 0;
  v153 = &v36[28 * v147];
  v134 = v17 + 4;
  v135 = v7;
  if (a3 >= a2)
  {
    v40 = a2;
  }

  else
  {
    v40 = a3;
  }

  v142 = v40;
  v140 = 2 * v40;
  v141 = (a4 + 2 * (a3 - v40));
  v41 = v36;
  v145 = v6;
  v42 = v152;
  while (1)
  {
    *(v148 + 4 * v38) = v39;
    if (v38 >= v138 || *&v134[4 * v38])
    {
      break;
    }

LABEL_135:
    if (++v38 == v7)
    {
      goto LABEL_146;
    }
  }

  sub_10009B3C0(v139);
  v43 = (v137 + 16 * v38);
  v44 = v43[1];
  if (v44 < 1)
  {
    v156 = 0x40000000;
LABEL_104:
    v102 = v39;
    if (qword_1001065A8)
    {
      v103 = *(qword_1001065A8 + 5568);
    }

    else
    {
      v103 = 0;
    }

    v7 = v135;
    v104 = v139;
    v105 = *(v148 + 4 * v38);
    v106 = &v41[28 * v105];
    if (v102 > v105)
    {
      v107 = v103 + v156;
      v108 = &v41[28 * v102];
      v109 = &v41[28 * v105];
      do
      {
        if (*(v109 + 3) <= v107)
        {
          v110 = *v109;
          *(v106 + 12) = *(v109 + 12);
          *v106 = v110;
          v106 += 28;
        }

        v109 += 28;
      }

      while (v109 < v108);
      v105 = *(v148 + 4 * v38);
    }

    v111 = -1227133513 * ((v106 - v41) >> 2);
    v112 = (v111 - v105);
    if (v112 <= 1)
    {
      v113 = v111;
      if (v112 >= 1)
      {
LABEL_129:
        v126 = &v41[28 * v105 + 8];
        do
        {
          v127 = *(v126 - 3);
          if (v127 != 65534)
          {
            v128 = *(v126 - 2);
            v129 = sub_10009B3D0(v104, *v126, v127, 0x7FFFFFFFFFFFFFFFLL, *(v126 - 2) == 0, 0, *(v126 - 4));
            *v126 = v129;
            if (!v128)
            {
              sub_10009B824(v104, v129, v126[1]);
            }
          }

          v126 += 7;
          LODWORD(v112) = v112 - 1;
        }

        while (v112);
      }

LABEL_134:
      v39 = v113;
      v36 = &v41[28 * v113];
      v42 = v152;
      goto LABEL_135;
    }

    v114 = &v41[28 * v105];
    qsort(v114, (v111 - v105), 0x1CuLL, sub_1000D5670);
    LODWORD(v115) = 0;
    v116 = 1;
    while (1)
    {
      while (1)
      {
        v117 = &v114[28 * v116];
        v118 = &v114[28 * v115];
        if (*(v117 + 1) == v118[1] && *(v117 + 2) == v118[2])
        {
          v119 = *(v117 + 8);
          if (v119 == v118[8])
          {
            break;
          }
        }

LABEL_127:
        v115 = v115 + 1;
        v122 = *v117;
        v123 = *(v117 + 12);
        v124 = &v114[28 * v115];
        *(v124 + 12) = v123;
        *v124 = v122;
        if (++v116 == v112)
        {
LABEL_128:
          v125 = v105 + v115 + 1;
          v105 = *(v148 + 4 * v38);
          v113 = v125;
          LODWORD(v112) = v125 - v105;
          v104 = v139;
          if (v125 - v105 >= 1)
          {
            goto LABEL_129;
          }

          goto LABEL_134;
        }
      }

      if (v119 >= 2)
      {
        v120 = (v119 - 2);
        v121 = v118 + 9;
        while (*&v117[2 * v120 + 18] == v121[v120])
        {
          v98 = __OFSUB__(v120--, 1);
          if (v120 < 0 != v98)
          {
            goto LABEL_125;
          }
        }

        goto LABEL_127;
      }

LABEL_125:
      if (++v116 == v112)
      {
        goto LABEL_128;
      }
    }
  }

  v143 = v137 + 16 * v38;
  v45 = *v43;
  v146 = v44 + v45;
  v46 = v45;
  v47 = 0x40000000;
  v156 = 0x40000000;
  v155 = v38;
  while (1)
  {
    v48 = v46;
    v49 = v46 >> 8;
    v151 = v48;
    v50 = (*(*v6 + 8 * v49) + 8 * v48);
    v51 = *v50;
    v160 = v39;
    if (v51 != 65534)
    {
      v53 = *(*(v6 + 16) + 8 * v49) + 12 * v48;
      v54 = (v148 + 4 * (v50[1] - 1));
      v55 = *v54;
      v56 = (v54[1] - *v54);
      v161 = v53;
      v57 = *(v53 + 8);
      v159 = sub_1000BA7F4(v158, v51, 0);
      v157 = v41;
      if (v56 >= 1)
      {
        v150 = v50;
        v58 = 0;
        v59 = &v41[28 * v55];
        do
        {
          v61 = *(v59 + 3) + v57;
          if (v61 <= v47 && sub_10000285C(v42, *(v59 + 2), *(v161 + 4)))
          {
            v62 = sub_1000BABCC(v158, (v59 + 18), *(v59 + 8), v159);
            v63 = v47;
            v64 = v61 + v62;
            v60 = v63;
            if (v61 + v62 <= v63)
            {
              if (v36 == v153)
              {
                if (2 * v147 >= v144)
                {
                  v65 = v144;
                }

                else
                {
                  v65 = 2 * v147;
                }

                v66 = v65 - v147;
                if (v65 - v147 < 1)
                {
                  if (!v66)
                  {
                    goto LABEL_139;
                  }
                }

                else
                {
                  do
                  {
                    v67 = sub_1000BFF20(28 * v65);
                    if (v67)
                    {
                      v69 = v67;
                      v70 = v65;
                      goto LABEL_54;
                    }

                    v68 = v66 >> 1;
                    v65 = (v66 >> 1) + v147;
                    v28 = v66 > 1;
                    v66 >>= 1;
                  }

                  while (v28);
                  if (!v68)
                  {
LABEL_139:
                    v130 = 0;
                    v41 = v157;
                    goto LABEL_147;
                  }
                }

                v69 = 0;
                v70 = v65;
LABEL_54:
                v154 = v70;
                j__memmove(v69, v157, 28 * v147);
                sub_1000BFEC4(v157);
                v36 = &v69[28 * v147];
                v153 = &v69[28 * v154];
                v157 = v69;
                v147 = v65;
                v59 = &v69[28 * v58 + 28 * v55];
              }

              *v36 = v155;
              v71 = *(v59 + 8);
              v72 = v71 == a2;
              v73 = v71 - v72;
              *(v36 + 8) = v71 - v72 + 1;
              j__memmove(v36 + 18, &v59[2 * (v71 == a2) + 18], 2 * (v71 - v72));
              *&v36[2 * v73 + 18] = v159;
              *(v36 + 1) = *v150;
              *(v36 + 2) = *(v161 + 6);
              *(v36 + 2) = *(v59 + 2);
              *(v36 + 3) = v64;
              v42 = v152;
              if (v156 > v64)
              {
                v74 = qword_1001065A8;
                if (qword_1001065A8)
                {
                  v74 = *(qword_1001065A8 + 5568);
                }

                v60 = (v74 + v64);
                v156 = v64;
              }

              v36 += 28;
              ++v160;
            }

            v47 = v60;
          }

          ++v58;
          v59 += 28;
        }

        while (v58 != v56);
      }

      goto LABEL_77;
    }

    v52 = *(v143 + 12) + v50[2];
    if (v52 <= v47)
    {
      break;
    }

    v157 = v41;
LABEL_77:
    v39 = v160;
    if (v160 <= v144 / 2)
    {
      v6 = v145;
      v38 = v155;
      v41 = v157;
      v46 = v151 + 1;
      if ((v151 + 1) >= v146)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v6 = v145;
      v38 = v155;
      v41 = v157;
      if (qword_1001065A8)
      {
        v83 = *(qword_1001065A8 + 5568);
        v84 = *(v148 + 4 * v155);
        v85 = &v157[28 * v84];
        if (v160 <= v84)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v83 = 0;
        v84 = *(v148 + 4 * v155);
        v85 = &v157[28 * v84];
        if (v160 <= v84)
        {
          goto LABEL_89;
        }
      }

      v86 = v83 + v156;
      v87 = v85;
      do
      {
        if (*(v87 + 3) <= v86)
        {
          v88 = *v87;
          *(v85 + 12) = *(v87 + 12);
          *v85 = v88;
          v85 += 28;
        }

        v87 += 28;
      }

      while (v87 < &v157[28 * v160]);
      v84 = *(v148 + 4 * v155);
LABEL_89:
      v39 = -1227133513 * ((v85 - v157) >> 2);
      v89 = (v39 - v84);
      if (v89 >= 2)
      {
        v90 = &v157[28 * v84];
        qsort(v90, (v39 - v84), 0x1CuLL, sub_1000D5670);
        LODWORD(v91) = 0;
        v92 = 1;
        while (1)
        {
          while (1)
          {
            v93 = &v90[28 * v92];
            v94 = &v90[28 * v91];
            if (*(v93 + 1) == v94[1] && *(v93 + 2) == v94[2])
            {
              v95 = *(v93 + 8);
              if (v95 == v94[8])
              {
                break;
              }
            }

LABEL_101:
            v91 = v91 + 1;
            v99 = *v93;
            v100 = *(v93 + 12);
            v101 = &v90[28 * v91];
            *(v101 + 12) = v100;
            *v101 = v99;
            if (++v92 == v89)
            {
LABEL_28:
              v39 = v84 + v91 + 1;
              goto LABEL_29;
            }
          }

          if (v95 >= 2)
          {
            v96 = (v95 - 2);
            v97 = v94 + 9;
            while (*&v93[2 * v96 + 18] == v97[v96])
            {
              v98 = __OFSUB__(v96--, 1);
              if (v96 < 0 != v98)
              {
                goto LABEL_99;
              }
            }

            goto LABEL_101;
          }

LABEL_99:
          if (++v92 == v89)
          {
            goto LABEL_28;
          }
        }
      }

LABEL_29:
      v36 = &v157[28 * v39];
      v42 = v152;
      v46 = v151 + 1;
      if ((v151 + 1) >= v146)
      {
        goto LABEL_104;
      }
    }
  }

  if (v36 != v153)
  {
    v75 = v39;
LABEL_72:
    *v36 = v38;
    *(v36 + 1) = -2;
    *(v36 + 8) = v142;
    j__memmove(v36 + 18, v141, v140);
    *(v36 + 2) = 0;
    *(v36 + 3) = v52;
    if (v52 < v156)
    {
      v82 = qword_1001065A8;
      if (qword_1001065A8)
      {
        v82 = *(qword_1001065A8 + 5568);
      }

      v47 = (v82 + v52);
      v156 = v52;
    }

    v157 = v41;
    *(v36 + 2) = -1;
    v36 += 28;
    v160 = v75 + 1;
    goto LABEL_77;
  }

  if (2 * v147 >= v144)
  {
    v76 = v144;
  }

  else
  {
    v76 = 2 * v147;
  }

  v77 = v76 - v147;
  if (v76 - v147 >= 1)
  {
    while (1)
    {
      v78 = sub_1000BFF20(28 * v76);
      if (v78)
      {
        break;
      }

      v79 = v77 >> 1;
      v76 = (v77 >> 1) + v147;
      v28 = v77 > 1;
      v77 >>= 1;
      if (!v28)
      {
        goto LABEL_68;
      }
    }

    v80 = v76;
    goto LABEL_71;
  }

  v79 = v76 - v147;
LABEL_68:
  if (v79)
  {
    v78 = 0;
    v80 = v76;
LABEL_71:
    v81 = v78;
    j__memmove(v78, v41, 28 * v147);
    sub_1000BFEC4(v41);
    v36 = &v81[28 * v147];
    v41 = v81;
    v147 = v76;
    v153 = &v81[28 * v80];
    v75 = v160;
    goto LABEL_72;
  }

  v130 = 0;
LABEL_147:
  sub_1000BFEC4(v41);
  sub_1000CA0A0(v136);
  return v130;
}

uint64_t sub_1000D3CAC(uint64_t a1)
{
  result = sub_1000C0034(48);
  if (result)
  {
    if (*(a1 + 136))
    {
      LODWORD(v3) = qword_1001065A8;
      if (qword_1001065A8)
      {
        v3 = *(qword_1001065A8 + 4096);
        if ((v3 & 0x80000000) != 0)
        {
          return 0;
        }
      }

      *(result + 16) = v3;
      v4 = result;
      v5 = sub_1000C0034(16 * v3);
      v6 = v4;
      *(v4 + 24) = v5;
      if (v5)
      {
        v7 = sub_1000C0034(2 * *(v4 + 16));
        result = v4;
        *(v4 + 40) = v7;
        if (v7)
        {
          goto LABEL_7;
        }

        sub_1000BFEC4(*(v4 + 24));
        v6 = v4;
      }

      sub_1000BFEC4(v6);
      return 0;
    }

LABEL_7:
    *result = a1;
  }

  return result;
}

uint64_t sub_1000D3D74(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 24));
    sub_1000BFEC4(*(v1 + 40));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000D3DC4(uint64_t *a1, int a2, int a3)
{
  v3 = *a1;
  if (*(*a1 + 136))
  {
    a1[1] = 0;
    *(a1 + 19) = 0;
    if (*(a1 + 4) < 2)
    {
      v6 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      do
      {
        *(a1[3] + v5) = ++v6;
        v5 += 16;
      }

      while (v6 < *(a1 + 4) - 1);
    }

    *(a1[3] + 16 * v6) = -1;
    v7 = *(v3 + 60);
    if (v7 >= a3)
    {
      v7 = a3;
    }

    v8 = (*(v3 + 48) + 16 * v7);
    v9 = v7 > a2;
    if (!v8[1] && a2 < v7)
    {
      do
      {
        v7 = (v7 - 1);
        v10 = *(v8 - 3);
        v8 -= 4;
        v9 = v7 > a2;
        if (v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = v7 <= a2;
        }
      }

      while (!v11);
    }

    if (!v9)
    {
      return 0;
    }

    v12 = a2;
    *(a1 + 8) = 0x40000000;
    v13 = v8[1];
    if (v13 >= 1)
    {
      v14 = *v8;
      v15 = v13 + *v8;
      do
      {
        v16 = *(*v3 + 8 * (v14 >> 8)) + 8 * v14;
        v17 = v8[3] + *(v16 + 4);
        if (v17 < *(a1 + 8))
        {
          *(a1 + 8) = v17;
        }

        sub_1000D3F34(a1, v16, v17);
        ++v14;
      }

      while (v14 < v15);
    }

    *(a1 + 18) = v12;
  }

  return 1;
}

int *sub_1000D3F34(int *result, uint64_t a2, int a3)
{
  v4 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v4 = *(qword_1001065A8 + 1216);
  }

  if (v4 >= a3 - result[8])
  {
    v5 = result[4];
    v6 = result[3];
    if (v6 != v5 || *(*(result + 3) + 16 * *(*(result + 5) + 2 * v6 - 2) + 8) >= a3)
    {
      v7 = result[2];
      v8 = v7 + v6;
      if (v6 <= 0)
      {
        v10 = *(result + 5);
        v11 = result[2];
        v13 = &v10[2 * v7];
        if (v6 == v5)
        {
LABEL_13:
          v14 = *&v10[2 * v6 - 2];
          v15 = *(result + 3) + 16 * v14;
          v16 = a2;
          result = j__memmove(v13 + 2, v13, 2 * (v6 + ~v11));
          *v13 = v14;
LABEL_19:
          *(v15 + 8) = a3;
          *v15 = v16;
          return result;
        }
      }

      else
      {
        v9 = v8 - 1;
        v10 = *(result + 5);
        v11 = result[2];
        do
        {
          v12 = (v11 + v9) >> 1;
          if (*(*(result + 3) + 16 * *&v10[2 * v12] + 8) < a3)
          {
            v11 = v12 + 1;
          }

          else
          {
            v9 = v12 - 1;
          }
        }

        while (v11 <= v9);
        v13 = &v10[2 * v11];
        if (v6 == v5)
        {
          goto LABEL_13;
        }
      }

      v16 = a2;
      v17 = *(result + 19);
      v15 = *(result + 3) + 16 * v17;
      v18 = result;
      *(result + 19) = *v15;
      if (v8 >= v5)
      {
        v19 = &v10[2 * v7];
        v20 = v11 - v7;
        j__memmove(v10, v19, 2 * (v11 - v7));
        v21 = 2 * v20;
        v13 = (*(v18 + 5) + v21);
        result = j__memmove(v13 + 2, &v19[v21], 2 * (v18[3] - v20));
        v18[2] = 0;
      }

      else
      {
        result = j__memmove(v13 + 2, v13, 2 * (v8 - v11));
      }

      *v13 = v17;
      ++v18[3];
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_1000D4110(uint64_t *a1, _WORD *a2)
{
  v2 = *a1;
  if (!*(*a1 + 136))
  {
    v52 = *(v2 + 35);
    v53 = *(v2 + 14);
    if (v52 >= v53)
    {
      v57 = 0;
      if (v52 == v53)
      {
        return 0;
      }
    }

    else
    {
      v54 = *v2;
      do
      {
        v55 = *(v54 + 8 * (v52 >> 8));
        v56 = v52;
        if (*(v55 + 8 * v56) != -2)
        {
          break;
        }

        *(v2 + 35) = ++v52;
      }

      while (v52 < v53);
      v57 = (v55 + 8 * v56);
      if (v52 == v53)
      {
        return 0;
      }
    }

    *a2 = *v57;
    a2[1] = v57[1];
    ++*(v2 + 35);
    return 1;
  }

  if (!*(a1 + 3))
  {
    return 0;
  }

  while (1)
  {
    v6 = *(a1 + 2);
    v7 = *(a1[5] + 2 * v6);
    *(a1 + 2) = v6 + 1;
    v8 = a1[3] + 16 * v7;
    v9 = *v8;
    v10 = *(v8 + 8);
    *v8 = *(a1 + 19);
    *(a1 + 19) = v7;
    v5 = *(a1 + 3) - 1;
    *(a1 + 3) = v5;
    if (v9[1])
    {
      v11 = v9[1] < *(a1 + 18);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_6;
    }

    v62 = v9;
    v12 = v2[6] + 16 * v9[1];
    if (!*(v12 - 8))
    {
      *(v12 - 8) = 1;
      v13 = v9[1];
      if (v13 < 1 || (v14 = (v2[6] + 16 * (v13 - 1)), v15 = v14[1], v15 < 1))
      {
        v22 = 0x40000000;
        goto LABEL_32;
      }

      v16 = *v14;
      v17 = v15 + *v14;
      v18 = *v2;
      v19 = v14[3];
      if (v17 <= (v16 + 1))
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = v17;
      }

      v21 = v20 - v16;
      if (v20 - v16 >= 2)
      {
        v23 = v16 + (v21 & 0xFFFFFFFE);
        v22 = 0x40000000;
        v24 = v21 & 0xFFFFFFFE;
        v25 = 0x40000000;
        do
        {
          if ((v19 + *(*(v18 + 8 * (v16 >> 8)) + 8 * v16 + 4)) < v22)
          {
            v22 = v19 + *(*(v18 + 8 * (v16 >> 8)) + 8 * v16 + 4);
          }

          if ((v19 + *(*(v18 + 8 * ((v16 + 1) >> 8)) + 8 * (v16 + 1) + 4)) < v25)
          {
            v25 = v19 + *(*(v18 + 8 * ((v16 + 1) >> 8)) + 8 * (v16 + 1) + 4);
          }

          v16 += 2;
          v24 -= 2;
        }

        while (v24);
        if (v22 >= v25)
        {
          v22 = v25;
        }

        if (v21 == (v21 & 0xFFFFFFFE))
        {
LABEL_32:
          v26 = *(v12 - 12);
          if (v26 >= 1)
          {
            v27 = *(v12 - 16);
            v28 = v26 + v27;
            v29 = v10 - v22;
            v30 = qword_1001065A8;
            v61 = v26 + v27;
            v63 = v10 - v22;
            v60 = v12;
            while (2)
            {
              if (v30)
              {
                v33 = *(v30 + 1216);
              }

              else
              {
                v33 = 0;
              }

              v34 = *(*v2 + 8 * (v27 >> 8)) + 8 * v27;
              v35 = v29 + *(v12 - 4) + *(v34 + 4);
              if (v33 < v35 - *(a1 + 8))
              {
                goto LABEL_36;
              }

              v36 = *(a1 + 4);
              v37 = *(a1 + 3);
              if (v37 == v36 && *(a1[3] + 16 * *(a1[5] + 2 * v37 - 2) + 8) < v35)
              {
                goto LABEL_36;
              }

              v38 = *(a1 + 2);
              v39 = v38 + v37;
              if (v37 <= 0)
              {
                v41 = a1[5];
                v42 = *(a1 + 2);
                v44 = &v41[2 * v38];
                if (v37 != v36)
                {
                  goto LABEL_52;
                }
              }

              else
              {
                v40 = v39 - 1;
                v41 = a1[5];
                v42 = *(a1 + 2);
                do
                {
                  v43 = (v40 + v42) >> 1;
                  if (*(a1[3] + 16 * *&v41[2 * v43] + 8) < v35)
                  {
                    v42 = v43 + 1;
                  }

                  else
                  {
                    v40 = v43 - 1;
                  }
                }

                while (v42 <= v40);
                v44 = &v41[2 * v42];
                if (v37 != v36)
                {
LABEL_52:
                  v45 = *(a1 + 19);
                  v32 = a1[3] + 16 * v45;
                  *(a1 + 19) = *v32;
                  if (v39 >= v36)
                  {
                    v46 = &v41[2 * v38];
                    v47 = v2;
                    v48 = v42 - v38;
                    j__memmove(v41, v46, 2 * (v42 - v38));
                    v49 = 2 * v48;
                    v44 = (a1[5] + v49);
                    v50 = *(a1 + 3) - v48;
                    v2 = v47;
                    v51 = &v46[v49];
                    v28 = v61;
                    j__memmove(v44 + 2, v51, 2 * v50);
                    *(a1 + 2) = 0;
                  }

                  else
                  {
                    j__memmove(v44 + 2, v44, 2 * (v39 - v42));
                  }

                  *v44 = v45;
                  ++*(a1 + 3);
                  v12 = v60;
                  v29 = v63;
LABEL_35:
                  *(v32 + 8) = v35;
                  *v32 = v34;
                  v30 = qword_1001065A8;
LABEL_36:
                  if (++v27 >= v28)
                  {
                    goto LABEL_4;
                  }

                  continue;
                }
              }

              break;
            }

            v31 = *&v41[2 * v37 - 2];
            v32 = a1[3] + 16 * v31;
            j__memmove(v44 + 2, v44, 2 * (v37 + ~v42));
            v29 = v63;
            *v44 = v31;
            v28 = v61;
            goto LABEL_35;
          }

          goto LABEL_4;
        }
      }

      else
      {
        v22 = 0x40000000;
        v23 = v16;
      }

      do
      {
        if ((v19 + *(*(v18 + 8 * (v23 >> 8)) + 8 * v23 + 4)) < v22)
        {
          v22 = v19 + *(*(v18 + 8 * (v23 >> 8)) + 8 * v23 + 4);
        }

        ++v23;
      }

      while (v23 < v17);
      goto LABEL_32;
    }

LABEL_4:
    v4 = *v62;
    if (v4 != 65534)
    {
      break;
    }

    v5 = *(a1 + 3);
LABEL_6:
    if (!v5)
    {
      return 0;
    }
  }

  *a2 = v4;
  a2[1] = v62[1];
  return 1;
}

uint64_t sub_1000D45B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  while (!*(a1 + 31))
  {
    v5 = *a1;
    v6 = *(*(*a1 + 8 * ((a2 + a3) >> 9)) + 8 * ((a2 + a3) >> 1));
    v7 = v6 >> 16;
    v8 = v6 << 16 >> 48;
    v9 = a2;
    v10 = a3;
LABEL_5:
    v11 = v9;
    while (1)
    {
      v9 = v11;
      v13 = (*(v5 + 8 * (v11 >> 8)) + 8 * v11);
      v12 = *v13 - v6;
      if (v12)
      {
        goto LABEL_7;
      }

      v14 = v13[1];
      if (v14 == WORD1(v6))
      {
        break;
      }

      v12 = v14 - v7;
LABEL_7:
      v11 = (v11 + 1);
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    v15 = v13[2];
    if (v15 != WORD2(v6))
    {
      v12 = v15 - v8;
      goto LABEL_7;
    }

LABEL_14:
    while (2)
    {
      v17 = v10;
      v18 = (*(v5 + 8 * (v10 >> 8)) + 8 * v10);
      v19 = *v18;
      result = v19 - v6;
      if (v19 != v6)
      {
        goto LABEL_13;
      }

      v20 = v18[1];
      if (v20 != WORD1(v6))
      {
        result = (v20 - v7);
        goto LABEL_13;
      }

      result = v18[2];
      if (result != WORD2(v6))
      {
        result = (result - v8);
LABEL_13:
        v10 = (v10 - 1);
        if (result <= 0)
        {
          goto LABEL_19;
        }

        continue;
      }

      break;
    }

    LODWORD(v10) = v10 - 1;
LABEL_19:
    if (v9 == v17)
    {
      if (v9 - 1 > a2)
      {
        goto LABEL_31;
      }
    }

    else
    {
      do
      {
        v21 = *v13;
        if (v21 == v19)
        {
          v22 = v13[1];
          v23 = v18[1];
          if (v22 != v23 || (v22 = v13[2], v23 = v18[2], v22 != v23))
          {
            if (v22 != v23)
            {
LABEL_29:
              v24 = *v13;
              *v13 = *v18;
              *v18 = v24;
              v5 = *a1;
              v10 = v17;
              goto LABEL_5;
            }
          }
        }

        else if (v21 != v19)
        {
          goto LABEL_29;
        }

        v9 = (v9 + 1);
        result = v9;
        v13 = (*(v5 + 8 * (v9 >> 8)) + 8 * v9);
      }

      while (v17 != v9);
      LODWORD(v9) = v17;
      if (v10 > a2)
      {
LABEL_31:
        result = sub_1000D45B8(a1);
      }
    }

    a2 = (v9 + 1);
    if (a2 >= a3)
    {
      return result;
    }
  }

  return sub_1000D47C4(a1, a2, a3);
}

void *sub_1000D47C4(void *result, uint64_t a2, uint64_t a3)
{
  while (2)
  {
    v3 = *result;
    v4 = (a3 + a2) >> 9;
    v5 = *(*(*result + 8 * v4) + 8 * ((a3 + a2) >> 1));
    v6 = result[2];
    v7 = *(v6 + 8 * v4) + 12 * ((a3 + a2) >> 1);
    v8 = *v7;
    v9 = *(v7 + 4);
    v10 = *(v7 + 6);
    v11 = v5 >> 16;
    v12 = v5 << 16 >> 48;
    v13 = a3;
    v14 = a2;
    while (2)
    {
      v19 = v14;
      do
      {
        v14 = v19;
        v21 = (*(v3 + 8 * (v19 >> 8)) + 8 * v19);
        v22 = *(v6 + 8 * (v19 >> 8)) + 12 * v19;
        v20 = *v21 - v5;
        if (!v20)
        {
          v20 = *v22 - v8;
          if (*v22 == v8)
          {
            v20 = *(v22 + 4) - v9;
            if (!v20)
            {
              v20 = *(v22 + 6) - v10;
              if (!v20)
              {
                v23 = v21[1];
                if (v23 == WORD1(v5))
                {
                  v24 = v21[2];
                  if (v24 == WORD2(v5))
                  {
                    goto LABEL_15;
                  }

                  v20 = v24 - v12;
                }

                else
                {
                  v20 = v23 - v11;
                }
              }
            }
          }
        }

        v19 = (v19 + 1);
      }

      while (v20 < 0);
      while (1)
      {
LABEL_15:
        v26 = v13;
        v27 = v13 >> 8;
        v28 = (*(v3 + 8 * v27) + 8 * v26);
        v29 = *(v6 + 8 * v27) + 12 * v26;
        v30 = *v28;
        v25 = v30 - v5;
        if (v30 != v5)
        {
          goto LABEL_14;
        }

        v25 = *v29 - v8;
        if (*v29 != v8)
        {
          goto LABEL_14;
        }

        v31 = *(v29 + 4);
        v25 = v31 - v9;
        if (v31 != v9)
        {
          goto LABEL_14;
        }

        v32 = *(v29 + 6);
        v25 = v32 - v10;
        if (v32 != v10)
        {
          goto LABEL_14;
        }

        v33 = v28[1];
        if (v33 == WORD1(v5))
        {
          break;
        }

        v25 = v33 - v11;
LABEL_14:
        v13 = (v26 - 1);
        if (v25 <= 0)
        {
          goto LABEL_23;
        }
      }

      v34 = v28[2];
      if (v34 != WORD2(v5))
      {
        v25 = v34 - v12;
        goto LABEL_14;
      }

      LODWORD(v13) = v26 - 1;
LABEL_23:
      if (v14 != v26)
      {
LABEL_24:
        v35 = *v21;
        if (v35 != v30)
        {
          v36 = v35 - v30;
          goto LABEL_32;
        }

        if (*v22 != *v29)
        {
          goto LABEL_2;
        }

        v36 = *(v22 + 4) - *(v29 + 4);
        if (v36 || (v36 = *(v22 + 6) - *(v29 + 6)) != 0)
        {
LABEL_32:
          if (v36)
          {
LABEL_2:
            v15 = *v21;
            *v21 = *v28;
            *v28 = v15;
            v16 = *v22;
            v17 = *(v22 + 8);
            v18 = *(v29 + 8);
            *v22 = *v29;
            *(v22 + 8) = v18;
            *v29 = v16;
            *(v29 + 8) = v17;
            v3 = *result;
            v6 = result[2];
            v13 = v26;
            continue;
          }
        }

        else
        {
          v37 = v21[1];
          v38 = v28[1];
          if (v37 != v38 || (v37 = v21[2], v38 = v28[2], v37 != v38))
          {
            v36 = v37 - v38;
            goto LABEL_32;
          }
        }

        v14 = (v14 + 1);
        v21 = (*(v3 + 8 * (v14 >> 8)) + 8 * v14);
        v22 = *(v6 + 8 * (v14 >> 8)) + 12 * v14;
        if (v26 == v14)
        {
          LODWORD(v14) = v26;
          if (v13 > a2)
          {
            goto LABEL_35;
          }

          goto LABEL_36;
        }

        goto LABEL_24;
      }

      break;
    }

    if (v14 - 1 > a2)
    {
LABEL_35:
      v39 = result;
      v40 = a3;
      sub_1000D47C4(result, a2);
      result = v39;
      a3 = v40;
    }

LABEL_36:
    a2 = (v14 + 1);
    if (a2 < a3)
    {

      continue;
    }

    return result;
  }
}

uint64_t sub_1000D4AA8(uint64_t a1, int a2, int a3)
{
  do
  {
    v5 = *(a1 + 32);
    v6 = *(*(v5 + 8 * ((a2 + a3) >> 9)) + 2 * ((a2 + a3) >> 1));
    v7 = a3;
    v8 = a2;
LABEL_4:
    v9 = v8 + 1;
    v10 = v7 - v8;
    do
    {
      v11 = v8;
      v12 = v9;
      LODWORD(result) = v10;
      v14 = *(v5 + 8 * (v8 >> 8));
      v15 = v8++;
      ++v9;
      --v10;
    }

    while (*(v14 + 2 * v15) < v6);
    v16 = (v14 + 2 * v15);
    ++v7;
    do
    {
      v17 = *(v5 + 8 * (--v7 >> 8));
      v18 = result;
      v19 = *(v17 + 2 * v7);
      result = (result - 1);
    }

    while (v19 > v6);
    if (v11 == v7)
    {
      v7 = v8 - 1;
      if ((v8 - 2) > a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      do
      {
        v20 = *v16;
        if (v20 != v19)
        {
          *v16 = v19;
          *(v17 + 2 * v7) = v20;
          v5 = *(a1 + 32);
          v8 = v12 - 1;
          goto LABEL_4;
        }

        v16 = (*(v5 + 8 * (v12 >> 8)) + 2 * v12);
        ++v12;
        --v18;
      }

      while (v18);
      if ((v7 - 1) > a2)
      {
LABEL_14:
        result = sub_1000D4AA8(a1);
      }
    }

    a2 = v7 + 1;
  }

  while ((v7 + 1) < a3);
  return result;
}

void *sub_1000D4BDC(void *result, uint64_t a2, __int128 *a3, _DWORD *a4, int a5, int a6, unsigned int a7, uint64_t a8, __int16 a9, int a10)
{
  v11 = a6;
  v14 = result;
  v15 = *a4;
  if (v15 != a5 || *(a2 + (*(a8 + 2 * a5 - 2) << 7) + 12) > a6)
  {
    if (v15 < 1)
    {
      v60 = a6;
      v62 = 0x7FFFFFFF;
LABEL_14:
      v11 = v60;
      if (v62 == 0x7FFFFFFF)
      {
LABEL_15:
        v21 = a2 + (*(a8 + 2 * v15) << 7);
        v22 = (*(*v14 + 8 * (a7 >> 8)) + 8 * a7);
        v23 = *a3;
        v24 = a3[1];
        v25 = a3[3];
        *(v21 + 32) = a3[2];
        *(v21 + 48) = v25;
        *v21 = v23;
        *(v21 + 16) = v24;
        v26 = a3[4];
        v27 = a3[5];
        v28 = a3[7];
        *(v21 + 96) = a3[6];
        *(v21 + 112) = v28;
        *(v21 + 64) = v26;
        *(v21 + 80) = v27;
        v29 = *v22;
        if (v29 == 65534)
        {
          v30 = a9;
          v31 = a4;
          if (v22[1])
          {
            v32 = *(v21 + 4);
            if (v32)
            {
              *(v32 + v21 + 87) = 1;
            }
          }
        }

        else
        {
          *(v21 + 2 * *(v21 + 4) + 16) = v29;
          v31 = a4;
          if (*(v14 + 124))
          {
            v37 = *(v21 + 4);
            v30 = a9;
            if (!*(*(*(v14 + 16) + 8 * (a7 >> 8)) + 12 * a7 + 6))
            {
              *(v37 + v21 + 87) = 1;
              v37 = *(v21 + 4);
            }
          }

          else
          {
            v37 = *(v21 + 4);
            if (v37 >= 1)
            {
              *(v21 + (v37 - 1) + 88) = *(v22 + 6);
            }

            v30 = a9;
          }

          *(v21 + v37 + 88) = 0;
          ++*(v21 + 4);
        }

        *(v21 + 124) = v30;
        *v21 = a7;
        *(v21 + 12) = v11;
        ++*v31;
      }

      else
      {
        v33 = a5;
        if (v15 != a5)
        {
          v33 = v15 + 1;
          *a4 = v15 + 1;
        }

        v34 = v33 - 1;
        if (v34 <= v62)
        {
          v35 = *(a8 + 2 * v62);
        }

        else
        {
          v35 = *(a8 + 2 * v34);
          v36 = (a8 + 2 * v62);
          result = j__memmove(v36 + 1, v36, (2 * (v34 - v62)));
          *v36 = v35;
        }

        v47 = a2 + (v35 << 7);
        v48 = (*(*v14 + 8 * (a7 >> 8)) + 8 * a7);
        v49 = *a3;
        v50 = a3[1];
        v51 = a3[3];
        *(v47 + 32) = a3[2];
        *(v47 + 48) = v51;
        *v47 = v49;
        *(v47 + 16) = v50;
        v52 = a3[4];
        v53 = a3[5];
        v54 = a3[7];
        *(v47 + 96) = a3[6];
        *(v47 + 112) = v54;
        *(v47 + 64) = v52;
        *(v47 + 80) = v53;
        v55 = *v48;
        if (v55 == 65534)
        {
          v56 = a9;
          if (v48[1])
          {
            v57 = *(v47 + 4);
            if (v57)
            {
              *(v57 + v47 + 87) = 1;
            }
          }
        }

        else
        {
          *(v47 + 2 * *(v47 + 4) + 16) = v55;
          if (*(v14 + 124))
          {
            v58 = *(v47 + 4);
            v56 = a9;
            if (!*(*(*(v14 + 16) + 8 * (a7 >> 8)) + 12 * a7 + 6))
            {
              *(v58 + v47 + 87) = 1;
              v58 = *(v47 + 4);
            }
          }

          else
          {
            v58 = *(v47 + 4);
            if (v58 >= 1)
            {
              *(v47 + (v58 - 1) + 88) = *(v48 + 6);
            }

            v56 = a9;
          }

          *(v47 + v58 + 88) = 0;
          ++*(v47 + 4);
        }

        *(v47 + 124) = v56;
        *v47 = a7;
        *(v47 + 12) = v60;
      }
    }

    else
    {
      v16 = 0;
      while (1)
      {
        v17 = a2 + (*(a8 + 2 * v16) << 7);
        if (*(v17 + 12) > v11)
        {
          break;
        }

        result = sub_1000D5444(v14, (a2 + (*(a8 + 2 * v16) << 7)), a3, a7, a10);
        if (result)
        {
          v38 = *(v17 + 12) - v11 + a9;
          if (v38 - *(v17 + 124) >= 1)
          {
            *(v17 + 124) = v38;
            if (a10)
            {
              v39 = *(v17 + 4);
              if (v39 < 36)
              {
                v40 = v39 + 1;
              }

              else
              {
                v40 = 36;
              }

              return j__memmove((v17 + 88), a3 + 88, v40);
            }
          }

          return result;
        }

        if (v15 == ++v16)
        {
          goto LABEL_15;
        }
      }

      v60 = v11;
      v62 = v16;
      if (v16 >= v15)
      {
        goto LABEL_14;
      }

      v18 = v16;
      v19 = 0;
      while (1)
      {
        v20 = a2 + (*(a8 + 2 * v18) << 7);
        result = sub_1000D5444(v14, v20, a3, a7, a10);
        if (result)
        {
          break;
        }

        ++v18;
        v19 += 2;
        if (v15 <= v18)
        {
          goto LABEL_14;
        }
      }

      v41 = v62;
      v42 = *(v20 + 12) - v60 + a9;
      if (v42 - *(v20 + 124) >= 1)
      {
        *(v20 + 124) = v42;
      }

      *(v20 + 12) = v60;
      if (a10)
      {
        v43 = *(v20 + 4);
        if (v43 < 36)
        {
          v44 = v43 + 1;
        }

        else
        {
          v44 = 36;
        }

        result = j__memmove((v20 + 88), a3 + 88, v44);
        v41 = v62;
      }

      if (v62 != v18)
      {
        v45 = *(a8 + 2 * v18);
        v46 = (a8 + 2 * v41);
        result = j__memmove(v46 + 1, v46, v19);
        *v46 = v45;
      }
    }
  }

  return result;
}

uint64_t sub_1000D50A4(void *a1, unsigned __int16 *a2, int *a3, __int16 *a4)
{
  v4 = a2[1];
  if (a2[1])
  {
    v22 = a3;
    v23 = a4;
    v6 = a1[12];
    v25 = sub_1000BA7F4(v6, *a2, 0);
    v8 = a1[6] + 16 * a2[1];
    v9 = *(v8 - 12);
    if (v9 < 1)
    {
      v12 = 0x40000000;
      v11 = 0x4000;
      v13 = 0x7FFFFFFFLL;
    }

    else
    {
      v10 = *(v8 - 16);
      v24 = v9 + v10;
      v11 = 0x4000;
      v12 = 0x40000000;
      LODWORD(v13) = 0x7FFFFFFF;
      do
      {
        v16 = *(*a1 + 8 * (v10 >> 8));
        v17 = (v16 + 8 * v10);
        v18 = *v17;
        if (v18 == 65534)
        {
          v19 = (v16 + 8 * v10);
          while (1)
          {
            v20 = sub_1000D50A4(a1, v19, v27, v26);
            if (v20 == 0x7FFFFFFF)
            {
              break;
            }

            v19 = (*(*a1 + 8 * (v20 >> 8)) + 8 * v20);
            v18 = *v19;
            if (v18 != 65534)
            {
              goto LABEL_4;
            }
          }

          v15 = 0;
        }

        else
        {
LABEL_4:
          v14 = sub_1000BA7F4(v6, v18, 0);
          v15 = sub_1000BABCC(v6, &v25, 1u, v14);
        }

        if (*(v8 - 4) + v15 + v17[2] >= v12)
        {
          v13 = v13;
        }

        else
        {
          v11 = v15;
          v12 = *(v8 - 4) + v15 + v17[2];
          v13 = v10;
        }

        ++v10;
      }

      while (v10 < v24);
    }

    v4 = v12 - v11;
    a3 = v22;
    a4 = v23;
  }

  else
  {
    v11 = 0;
    v13 = 0x7FFFFFFFLL;
  }

  *a3 = v4;
  *a4 = v11;
  return v13;
}

uint64_t sub_1000D523C(void *a1, unsigned int a2, int *a3, __int16 *a4, unsigned __int16 a5)
{
  v29 = a5;
  if (*(*(*a1 + 8 * (a2 >> 8)) + 8 * a2 + 2))
  {
    v21 = a3;
    v22 = a4;
    v6 = a1[6] + 16 * *(*(*a1 + 8 * (a2 >> 8)) + 8 * a2 + 2);
    v7 = *(v6 - 12);
    if (v7 < 1)
    {
      v11 = 0x40000000;
      v10 = 0x4000;
      v12 = 0x7FFFFFFFLL;
    }

    else
    {
      v8 = *(v6 - 16);
      v26 = v7 + v8;
      v24 = a1[6] + 16 * *(*(*a1 + 8 * (a2 >> 8)) + 8 * a2 + 2);
      v25 = *(a1[2] + 8 * (a2 >> 8)) + 12 * a2;
      v9 = a1[11];
      v23 = a1[12];
      v10 = 0x4000;
      v11 = 0x40000000;
      v12 = 0x7FFFFFFFLL;
      do
      {
        v15 = (*(*a1 + 8 * (v8 >> 8)) + 8 * v8);
        v16 = *v15;
        if (sub_10000285C(v9, *(v25 + 4), *(*(a1[2] + 8 * (v8 >> 8)) + 12 * v8 + 6)))
        {
          if (v16 == 65534)
          {
            v17 = v8;
            while (1)
            {
              v18 = sub_1000D523C(a1, v17, v27, v28, v29);
              if (v18 == 0x7FFFFFFF)
              {
                break;
              }

              v17 = v18;
              v16 = *(*(*a1 + 8 * (v18 >> 8)) + 8 * v18);
              if (v16 != 65534)
              {
                goto LABEL_4;
              }
            }

            v14 = 0;
          }

          else
          {
LABEL_4:
            v13 = sub_1000BA7F4(v23, v16, 0);
            v14 = sub_1000BABCC(v23, &v29, 1u, v13);
          }

          if (*(v24 - 4) + v14 + v15[2] >= v11)
          {
            v12 = v12;
          }

          else
          {
            v10 = v14;
            v11 = *(v24 - 4) + v14 + v15[2];
            v12 = v8;
          }
        }

        v8 = (v8 + 1);
      }

      while (v8 < v26);
    }

    v19 = v11 - v10;
    a3 = v21;
    a4 = v22;
  }

  else
  {
    v19 = 0;
    v10 = 0;
    v12 = 0x7FFFFFFFLL;
  }

  *a3 = v19;
  *a4 = v10;
  return v12;
}

uint64_t sub_1000D5444(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4, int a5)
{
  if (*a2 != a4)
  {
    return 0;
  }

  v7 = *(*(*a1 + 8 * (a4 >> 8)) + 8 * a4);
  if (!*(a1 + 124))
  {
    if (v7 == 65534)
    {
      v8 = *(a3 + 4);
      v7 = *(a3 + 2 * v8 + 14);
      if (a2[1] != v8)
      {
        return 0;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v7 != 65534)
  {
LABEL_10:
    LODWORD(v8) = *(a3 + 4) + 1;
    if (a2[1] != v8)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v8 = *(a3 + 4);
  v7 = *(a3 + 2 * v8 + 14);
  if (a2[1] != v8)
  {
    return 0;
  }

LABEL_11:
  if (!v8)
  {
    return 1;
  }

  v10 = *(a1 + 96);
  if (qword_1001065A8 && *(qword_1001065A8 + 1760))
  {
    v11 = a2 + 4;
    if (*(a2 + v8 + 7) == v7)
    {
      if (v8 >= 2)
      {
        v12 = a3 + 16;
        if (a5)
        {
          v13 = v8 - 1;
          result = 1;
          while (1)
          {
            --v13;
            if (*(v11 + v13) != *(v12 + 2 * v13) || *(a2 + v13 + 88) != *(a3 + 88 + v13))
            {
              break;
            }

            if (v13 <= 0)
            {
              return result;
            }
          }
        }

        else
        {
          v18 = v8 - 1;
          result = 1;
          while (1)
          {
            --v18;
            if (*(v11 + v18) != *(v12 + 2 * v18))
            {
              break;
            }

            if (v18 <= 0)
            {
              return result;
            }
          }
        }

        return 0;
      }

      return 1;
    }
  }

  else
  {
    v14 = sub_1000BA7F4(*(a1 + 96), *(a2 + v8 + 7), 0);
    if (v14 == sub_1000BA7F4(v10, v7, 0))
    {
      if (v8 >= 2)
      {
        for (i = (v8 - 2) + 8; ; --i)
        {
          v16 = sub_1000BA7F4(v10, *(a2 + i), 0);
          if (v16 != sub_1000BA7F4(v10, *(a3 + 2 * i), 0))
          {
            break;
          }

          v17 = i - 8;
          result = 1;
          if (v17 < 1)
          {
            return result;
          }
        }

        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000D5670(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2) - *(a2 + 2);
  if (v2)
  {
    return v2;
  }

  v2 = *(a1 + 4) - *(a2 + 4);
  if (v2)
  {
    return v2;
  }

  v4 = *(a1 + 16);
  v2 = (v4 - *(a2 + 16));
  if (v2)
  {
    return v2;
  }

  if (v4 >= 2)
  {
    v5 = v4 - 1;
    while (1)
    {
      --v5;
      v2 = *(a1 + 18 + 2 * v5) - *(a2 + 18 + 2 * v5);
      if (v2)
      {
        break;
      }

      if (v5 < 1)
      {
        return (*(a1 + 12) - *(a2 + 12));
      }
    }

    return v2;
  }

  return (*(a1 + 12) - *(a2 + 12));
}

unint64_t sub_1000D56EC(unint64_t result, _BYTE *a2, unsigned __int8 *a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (sub_1000C7854(result) < 1)
  {
    return 0;
  }

  v8 = sub_1000C7854(v7);
  v9 = 0;
  do
  {
    if (v9 > v8)
    {
      goto LABEL_12;
    }

    v10 = v7[v9];
    if (v10 > 0x1F)
    {
      ++v9;
    }

    if (v10)
    {
      v11 = v10 < 0x20;
    }

    else
    {
      v11 = 3;
    }
  }

  while (!v11);
  if (v11 != 3)
  {
    return 0;
  }

LABEL_12:
  v12 = sub_1000C7854(v7);
  if (v12 < 0)
  {
    *a3 = 0;
    if (a2)
    {
      goto LABEL_30;
    }

    return 1;
  }

  v13 = 0;
  v14 = (v12 + 1);
  while (1)
  {
    v18 = *v7++;
    v17 = v18;
    if (!v18)
    {
      break;
    }

    v16 = v13 + 1;
    if (v13 + 1 >= a4)
    {
      goto LABEL_27;
    }

    if ((v17 - 94) < 2)
    {
LABEL_14:
      a3[v13] = 94;
      v15 = v13 + 2;
      ++v13;
      v16 = v15;
      if (v15 >= a4)
      {
        goto LABEL_27;
      }

      goto LABEL_15;
    }

    if (v17 == 32)
    {
      a3[v13++] = 95;
      if (!--v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v17 == 92)
      {
        goto LABEL_14;
      }

      if (v16 >= a4)
      {
LABEL_27:
        result = 0;
        a3[v13] = 0;
        return result;
      }

LABEL_15:
      a3[v13] = v17;
      v13 = v16;
      if (!--v14)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = v13;
LABEL_29:
  a3[v16] = 0;
  if (!a2)
  {
    return 1;
  }

LABEL_30:
  if (!*a2)
  {
    return 1;
  }

  v19 = sub_1000C7854(a2);
  v20 = 0;
  do
  {
    if (v20 > v19)
    {
      goto LABEL_40;
    }

    v21 = a2[v20];
    if (v21 > 0x1F)
    {
      ++v20;
    }

    if (v21)
    {
      v22 = v21 < 0x20;
    }

    else
    {
      v22 = 3;
    }
  }

  while (!v22);
  if (v22 != 3)
  {
    return 0;
  }

LABEL_40:
  if (!*a2)
  {
    return 1;
  }

  sub_1000C7968(a3, "\", a4);
  v23 = sub_1000C7854(a3);
  v24 = &a3[v23];
  v25 = sub_1000C7854(a2);
  if ((v25 & 0x80000000) == 0)
  {
    v26 = 0;
    v27 = a4 - v23;
    v28 = (v25 + 1);
    while (1)
    {
      v30 = *a2++;
      v29 = v30;
      if (!v30)
      {
        v31 = v26;
LABEL_59:
        v34 = v31;
        goto LABEL_60;
      }

      v31 = v26 + 1;
      if (v26 + 1 >= v27)
      {
        result = 0;
        v34 = v26;
        goto LABEL_61;
      }

      if ((v29 - 94) < 2)
      {
        break;
      }

      if (v29 == 32)
      {
        v24[v26++] = 95;
        if (!--v28)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v29 == 92)
        {
          break;
        }

        v32 = v26 + 1;
        v31 = v26;
        if (v26 + 1 >= v27)
        {
LABEL_63:
          result = 0;
          v34 = v31;
          goto LABEL_61;
        }

LABEL_55:
        v33 = v31;
        v31 = v32;
        v24[v33] = v29;
        v26 = v32;
        if (!--v28)
        {
          goto LABEL_59;
        }
      }
    }

    v24[v26] = 94;
    v32 = v26 + 2;
    if (v26 + 2 >= v27)
    {
      goto LABEL_63;
    }

    goto LABEL_55;
  }

  v34 = 0;
LABEL_60:
  result = 1;
LABEL_61:
  v24[v34] = 0;
  return result;
}

BOOL sub_1000D59A0(uint64_t a1, unint64_t a2, int a3, _WORD *a4, int a5)
{
  v6 = 0;
  v7 = 0;
  v8 = (a1 + 2);
  v9 = a2;
  while (1)
  {
    v10 = *(v8 - 1);
    switch(v10)
    {
      case '_':
        v11 = v7 == 1 ? 95 : 32;
        break;
      case '^':
        if (!v7)
        {
          v7 = 1;
          goto LABEL_3;
        }

        v11 = 94;
        break;
      case '\\':
        if (v7 != 1)
        {
          result = 0;
          if (!*v8)
          {
            return result;
          }

          if (v6 >= a3)
          {
            return result;
          }

          v7 = 0;
          result = 0;
          v9[v6] = 0;
          a3 = a5;
          v6 = 0;
          v13 = v9 == a2;
          v9 = a4;
          if (!v13)
          {
            return result;
          }

          goto LABEL_3;
        }

        v11 = 92;
        break;
      default:
        result = 0;
        if (v7 == 1)
        {
          return result;
        }

        v11 = *(v8 - 1);
        if ((v10 - 1) < 0x20u)
        {
          return result;
        }

        break;
    }

    if (v6 >= a3)
    {
      return 0;
    }

    v9[v6] = v11;
    if (!v11)
    {
      break;
    }

    v7 = 0;
    ++v6;
LABEL_3:
    ++v8;
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  if (v9 == a2)
  {
    v7 = 0;
    v6 = 0;
    v9 = a4;
    a3 = a5;
    goto LABEL_3;
  }

  ++v6;
  if (v10)
  {
    return 0;
  }

LABEL_26:
  if (!v6)
  {
    *a4 = 0;
    if (a2)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_30:
  if (sub_1000CB75C(a2) < 1)
  {
    return 0;
  }

  v14 = sub_1000CB75C(a2);
  v15 = 0;
  while (v15 <= v14)
  {
    v16 = *(a2 + 2 * v15);
    if (v16 > 0x1F)
    {
      ++v15;
    }

    if (v16)
    {
      v17 = v16 < 0x20;
    }

    else
    {
      v17 = 3;
    }

    if (v17)
    {
      return v17 == 3;
    }
  }

  return 1;
}

unint64_t sub_1000D5B40(unint64_t result, _WORD *a2, unsigned __int16 *a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (sub_1000CB75C(result) < 1)
  {
    return 0;
  }

  v8 = sub_1000CB75C(v7);
  v9 = 0;
  do
  {
    if (v9 > v8)
    {
      goto LABEL_12;
    }

    v10 = v7[v9];
    if (v10 > 0x1F)
    {
      ++v9;
    }

    if (v10)
    {
      v11 = v10 < 0x20;
    }

    else
    {
      v11 = 3;
    }
  }

  while (!v11);
  if (v11 != 3)
  {
    return 0;
  }

LABEL_12:
  v12 = sub_1000CB75C(v7);
  if (v12 < 0)
  {
    *a3 = 0;
    if (a2)
    {
      goto LABEL_30;
    }

    return 1;
  }

  v13 = 0;
  v14 = (v12 + 1);
  while (1)
  {
    v18 = *v7++;
    v17 = v18;
    if (!v18)
    {
      break;
    }

    v16 = v13 + 1;
    if (v13 + 1 >= a4)
    {
      goto LABEL_27;
    }

    if ((v17 - 94) < 2)
    {
LABEL_14:
      a3[v13] = 94;
      v15 = v13 + 2;
      ++v13;
      v16 = v15;
      if (v15 >= a4)
      {
        goto LABEL_27;
      }

      goto LABEL_15;
    }

    if (v17 == 32)
    {
      a3[v13++] = 95;
      if (!--v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v17 == 92)
      {
        goto LABEL_14;
      }

      if (v16 >= a4)
      {
LABEL_27:
        result = 0;
        a3[v13] = 0;
        return result;
      }

LABEL_15:
      a3[v13] = v17;
      v13 = v16;
      if (!--v14)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = v13;
LABEL_29:
  a3[v16] = 0;
  if (!a2)
  {
    return 1;
  }

LABEL_30:
  if (!*a2)
  {
    return 1;
  }

  v19 = sub_1000CB75C(a2);
  v20 = 0;
  do
  {
    if (v20 > v19)
    {
      goto LABEL_40;
    }

    v21 = a2[v20];
    if (v21 > 0x1F)
    {
      ++v20;
    }

    if (v21)
    {
      v22 = v21 < 0x20;
    }

    else
    {
      v22 = 3;
    }
  }

  while (!v22);
  if (v22 != 3)
  {
    return 0;
  }

LABEL_40:
  if (!*a2)
  {
    return 1;
  }

  v35 = 92;
  result = sub_1000CB8DC(a3, &v35, a4);
  if (result)
  {
    v23 = sub_1000CB75C(a3);
    v24 = &a3[v23];
    v25 = sub_1000CB75C(a2);
    if ((v25 & 0x80000000) == 0)
    {
      v26 = 0;
      v27 = a4 - v23;
      v28 = (v25 + 1);
      while (1)
      {
        v30 = *a2++;
        v29 = v30;
        if (!v30)
        {
          v31 = v26;
LABEL_60:
          v34 = v31;
          goto LABEL_61;
        }

        v31 = v26 + 1;
        if (v26 + 1 >= v27)
        {
          result = 0;
          v34 = v26;
          goto LABEL_62;
        }

        if ((v29 - 94) < 2)
        {
          break;
        }

        if (v29 == 32)
        {
          v24[v26++] = 95;
          if (!--v28)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v29 == 92)
          {
            break;
          }

          v32 = v26 + 1;
          v31 = v26;
          if (v26 + 1 >= v27)
          {
LABEL_64:
            result = 0;
            v34 = v31;
            goto LABEL_62;
          }

LABEL_56:
          v33 = v31;
          v31 = v32;
          v24[v33] = v29;
          v26 = v32;
          if (!--v28)
          {
            goto LABEL_60;
          }
        }
      }

      v24[v26] = 94;
      v32 = v26 + 2;
      if (v26 + 2 >= v27)
      {
        goto LABEL_64;
      }

      goto LABEL_56;
    }

    v34 = 0;
LABEL_61:
    result = 1;
LABEL_62:
    v24[v34] = 0;
  }

  return result;
}

uint64_t sub_1000D5DFC(uint64_t a1, int a2)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (a1)
  {
    v13 = sub_1000BFB80(*(a1 + 6480));
    v12 = sub_1000C9EBC(*(a1 + 6488));
    v9 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v10 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v11);
    nullsub_1(v10);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v5 = sub_1000BDA90();
    if (!setjmp(v5))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v6 = 4;
      }

      else if (!*(a1 + 8160) && ((v7 = a2) != 0 || qword_1001065A8 && (v7 = *(qword_1001065A8 + 2152)) != 0))
      {
        if (sub_1000D5FF4(a1, v7) && (*(a1 + 372) = 0, *(a1 + 364) = 1, *(a1 + 792) = 0, v8 = sub_1000C0034(28), (*(a1 + 784) = v8) != 0))
        {
          *(a1 + 6472) = 1;
          v6 = v14;
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 1;
      }

      v14 = v6;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v13 = sub_1000BFB80(0);
    v12 = sub_1000C9EBC(0);
    v9 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v10 = sub_1000CED78(0, 0, &v11);
    nullsub_1(v10);
  }

  v14 = 1;
LABEL_9:
  sub_10004D8D8(v14);
  sub_1000CED78(v10, v11, 0);
  sub_1000BDB44(v9);
  sub_1000C9EBC(v12);
  sub_1000BFB80(v13);
  return v14;
}

uint64_t sub_1000D5FF4(uint64_t a1, int a2)
{
  v3 = sub_100056FA0(*a1) / 1000 * a2;
  v4 = v3 / *(a1 + 304);
  sub_10003D47C(a1);
  *(a1 + 368) = v4;
  *(a1 + 372) = 0;
  if (!v3 || (result = sub_1000C0034(2 * v3), (*(a1 + 376) = result) != 0))
  {
    if (!*(a1 + 424) && (!qword_1001065A8 || !*(qword_1001065A8 + 2848)))
    {
      v8 = sub_100057000(*a1);
      v9 = sub_1000C0034(v8);
      *(a1 + 424) = v9;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v6 = 50 * v4 + 4;
      *(a1 + 400) = 0;
      v7 = sub_1000C0034(v6);
      *(a1 + 392) = v7;
      if (!v7)
      {
LABEL_12:
        sub_10003D47C(a1);
        return 0;
      }

      *(a1 + 384) = v6;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1000D60F0(uint64_t a1, char *a2, int a3)
{
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  if (a1)
  {
    v70 = sub_1000BFB80(*(a1 + 6480));
    v69 = sub_1000C9EBC(*(a1 + 6488));
    v66 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v67 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v68);
    nullsub_1(v67);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v7 = sub_1000BDA90();
    if (!setjmp(v7))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v8 = 4;
      }

      else if (*(a1 + 8160) || !*(a1 + 5512))
      {
        v8 = 1;
      }

      else
      {
        v72 = sub_10004E510(a1);
        v65 = 0;
        v64 = 0;
        if (*(a1 + 6472))
        {
          if (*(a1 + 752) == 7)
          {
            v71 = 1;
          }

          if (!a3 || (sub_1000C78DC(v73, a2, 256), sub_1000C7968(v73, "elvisdump.psa", 256), (v72 = sub_1000467B4(a1, v73)) == 0))
          {
            sub_1000C78DC(v73, a2, 256);
            sub_1000C7968(v73, "elvisdump.rpr", 256);
            v9 = j__fopen(v73, "wb");
            if (v9)
            {
              v17 = v9;
              v18 = sub_1000BFBD8(0x400uLL, v10, v11, v12, v13, v14, v15, v16);
              v26 = sub_1000D8170(v18, v19, v20, v21, v22, v23, v24, v25);
              sub_1000D8210(v26, "FileType", "ElvisDump");
              sub_1000D8354(v26, "FileVersion", 3);
              v27 = sub_100099768();
              sub_1000D8210(v26, "ElvisVersion", v27);
              v28 = sub_100099758();
              sub_1000D8354(v26, "ElvisMajorVersion", v28);
              v29 = sub_100099760();
              sub_1000D8354(v26, "ElvisMinorVersion", v29);
              v30 = sub_1000B207C(*(a1 + 8));
              sub_1000D8210(v26, "ElvisLanguage", v30);
              v31 = sub_1000D6984(*(a1 + 752));
              sub_1000D8210(v26, "RecogType", v31);
              v72 = sub_100043410(a1, &v65 + 1);
              v72 = sub_10003D838(a1, &v65, &v64);
              sub_1000D8354(v26, "SampleRate", SHIDWORD(v65));
              sub_1000D8354(v26, "RecogModelProperties", v65);
              sub_1000D8354(v26, "TTSModelProperties", v64);
              v32 = *(a1 + 48);
              if (v32)
              {
                v33 = sub_1000B1350(v32);
                if (v33 > 4)
                {
                  v34 = "Unknown";
                }

                else
                {
                  v34 = off_1000FE478[v33];
                }

                sub_1000D8210(v26, "TTSEncoding", v34);
              }

              if (qword_1001065A8)
              {
                v36 = *(qword_1001065A8 + 5464);
              }

              else
              {
                v36 = 0;
              }

              sub_1000D8354(v26, "VocMaxNumAddedWords", v36);
              sub_1000D69A8(a1, v26);
              if (v71)
              {
                sub_1000D6C2C(a1, v26);
              }

              sub_1000D6EB0(a1, v26);
              if (v71)
              {
                sub_1000D7844(a1, v26);
              }

              if (qword_1001065A8 && *(qword_1001065A8 + 2848))
              {
                v37 = 0;
              }

              else
              {
                v37 = sub_100057000(*a1);
              }

              sub_1000D8354(v26, "FESnapshotSize", v37);
              if (sub_10000E6D8(*(a1 + 16)))
              {
                v38 = sub_10000E6D8(*(a1 + 16));
                sub_1000D8354(v26, "DynSilSnapshotSize", v38);
              }

              v39 = sub_1000BAD10(*(a1 + 8));
              sub_1000D8354(v26, "VocCRC", v39);
              sub_100002998(*(a1 + 16), v40, v41, v42, v43, v44, v45);
              v46 = *(a1 + 5504);
              if (v46 == -1)
              {
                v46 = sub_100003C84(*(a1 + 16), 0);
              }

              sub_1000D8354(v26, "AMCRC", v46);
              sub_1000D8354(v26, "FeCRC", *(a1 + 416));
              if (v71)
              {
                sub_1000D8354(v26, "FeTalkAheadCRC", *(a1 + 432));
              }

              sub_1000D8354(v26, "NumConstraints", *(a1 + 1320));
              if (*(a1 + 1320) >= 1)
              {
                v47 = 0;
                do
                {
                  v48 = *(a1 + 1324 + 4 * v47);
                  sprintf(v18, "Constraint[%d]", v47);
                  sub_1000D8354(v26, v18, v48);
                  v49 = sub_10002C688(*(a1 + 72), v48);
                  v50 = sub_100022ADC(v49);
                  sprintf(v18, "ConstraintName[%d]", v47);
                  sub_1000D8210(v26, v18, v50);
                  ++v47;
                }

                while (v47 < *(a1 + 1320));
              }

              if (*(a1 + 752) == 8)
              {
                sub_1000D7AF0(a1, v26);
              }

              v51 = sub_1000C0034(*(a1 + 400) + 1);
              if (v51)
              {
                v52 = v51;
                if (*(a1 + 400) >= 1)
                {
                  v53 = 0;
                  do
                  {
                    v51[v53] = *(*(a1 + 392) + v53);
                    ++v53;
                  }

                  while (v53 < *(a1 + 400));
                }

                sub_1000D8210(v26, "OperationRecordArray", v51);
                sub_1000BFEC4(v52);
              }

              v63 = 0;
              v62 = 0;
              sub_10004626C(a1, &v63, &v62 + 1, &v62);
              sub_1000D8354(v26, "FEFeatureQueueLength", v63);
              sub_1000D8354(v26, "FEFeatureQueueCurrent", SHIDWORD(v62));
              sub_1000D8354(v26, "FEFeatureQueueHigh", v62);
              v54 = *(a1 + 440);
              if (v54)
              {
                v55 = *(a1 + 440);
                v63 = 0;
                sub_1000D8354(v26, "UttDetSpeechStartFrame", *(v54 + 28));
                sub_1000D8354(v26, "UttDetFinalSilenceStartFrame", *(v55 + 32));
                v72 = sub_100045944(a1, -2, &v63);
                if (!v72)
                {
                  sub_1000D8354(v26, "UttNumFrames", v63);
                }

                v72 = sub_1000459CC(a1, 0xFFFFFFFE, &v63);
                if (!v72)
                {
                  sub_1000D8354(v26, "UttNumFramesRecognized", v63);
                }
              }

              sub_1000D83D8(v26, v17);
              sub_1000D8198(v26);
              if (!qword_1001065A8 || !*(qword_1001065A8 + 2848))
              {
                v56 = *(a1 + 408);
                v57 = sub_100057000(*a1);
                j__fwrite(v56, v57, 1uLL, v17);
                if (v71)
                {
                  v58 = *(a1 + 424);
                  v59 = sub_100057000(*a1);
                  j__fwrite(v58, v59, 1uLL, v17);
                }
              }

              v60 = *(a1 + 5480);
              if (v60)
              {
                v61 = sub_10000E6D8(*(a1 + 16));
                j__fwrite(v60, v61, 1uLL, v17);
              }

              j__fclose(v17);
              v35 = v18;
            }

            else
            {
              v35 = 0;
              v72 = 9;
            }

            sub_1000C78DC(v73, a2, 256);
            sub_1000C7968(v73, "elvisdump.utt", 256);
            v72 = sub_1000D7D78(a1);
            sub_1000C78DC(v73, a2, 256);
            sub_1000C7968(v73, "elvisdump.wav", 256);
            v72 = sub_1000D7EDC(a1, v73);
            sub_1000BFEC4(v35);
          }
        }

        else
        {
          v72 = 7;
        }

        v8 = v72;
      }

      v72 = v8;
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v70 = sub_1000BFB80(0);
    v69 = sub_1000C9EBC(0);
    v66 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v67 = sub_1000CED78(0, 0, &v68);
    nullsub_1(v67);
  }

  v72 = 1;
LABEL_9:
  sub_10004D8D8(v72);
  sub_1000CED78(v67, v68, 0);
  sub_1000BDB44(v66);
  sub_1000C9EBC(v69);
  sub_1000BFB80(v70);
  return v72;
}

const char *sub_1000D6984(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "UNKNOWN_RECOG_TYPE";
  }

  else
  {
    return off_1000FE4A0[a1];
  }
}

uint64_t sub_1000D69A8(uint64_t a1, void *a2)
{
  v3 = a1;
  result = sub_1000D8354(a2, "LengthLMContext", *(a1 + 776));
  if (*(v3 + 776) >= 1)
  {
    v32 = a2;
    v12 = sub_1000BFBD8(0x400uLL, v5, v6, v7, v8, v9, v10, v11);
    v31 = sub_1000C7AE0("LMContext[1000]");
    if (*(v3 + 776) >= 1)
    {
      v34 = v12;
      v13 = 0;
      do
      {
        v14 = *(*(v3 + 768) + 4 * v13);
        sprintf(v31, "LMContext[%d]", v13);
        sub_1000D8354(v32, v31, v14);
        ++v13;
        v15 = *(v3 + 776);
      }

      while (v13 < v15);
      v12 = v34;
      if (v15 >= 1)
      {
        v16 = 0;
        v33 = v3;
        do
        {
          v17 = *(*(v3 + 768) + 4 * v16);
          v18 = sub_1000C7854(v12);
          v19 = 1024 - v18;
          v20 = &v12[v18];
          if (v17 == -1)
          {
            sub_1000C78DC(&v12[v18], "UNKNOWN", v19);
            v21 = sub_1000C7854(v20);
            if (v21 >= 1)
            {
LABEL_14:
              v22 = v21;
              v23 = 1;
              v24 = 1 - v21;
              do
              {
                v26 = (v20 + v22);
                v27 = *(v20 + v22 - 1);
                if (v27 == 13 || v27 == 10)
                {
                  v25 = (v21 + 1);
                  if (v25 >= v19)
                  {
                    v23 = 0;
                  }

                  if (v21 < v19)
                  {
                    v29 = v21 + 1;
                  }

                  else
                  {
                    v29 = v19;
                  }

                  j__memmove(v26 + 1, (v20 + v22), v24 + v29);
                  *(v26 - 1) = 92;
                  if (v22 <= v19)
                  {
                    if (v27 == 13)
                    {
                      v30 = 114;
                    }

                    else
                    {
                      v30 = 110;
                    }

                    *v26 = v30;
                  }
                }

                else
                {
                  v25 = v21;
                }

                --v22;
                ++v24;
                v21 = v25;
              }

              while ((v22 + 1) > 1);
              v3 = v33;
              v12 = v34;
              if (!v23)
              {
                *(v20 + v19) = 0;
              }
            }
          }

          else
          {
            sub_1000BB0D8(*(v3 + 8), v17, v19, v20, 0);
            v21 = sub_1000C7854(v20);
            if (v21 >= 1)
            {
              goto LABEL_14;
            }
          }

          sub_1000C7968(v12, " ", 1024);
          ++v16;
        }

        while (v16 < *(v3 + 776));
      }
    }

    sub_1000D8210(v32, "LMContext", v12);
    sub_1000BFEC4(v31);

    return sub_1000BFEC4(v12);
  }

  return result;
}

uint64_t sub_1000D6C2C(uint64_t a1, void *a2)
{
  v3 = a1;
  result = sub_1000D8354(a2, "LengthTalkAheadLMContext", *(a1 + 792));
  if (*(v3 + 792) >= 1)
  {
    v32 = a2;
    v12 = sub_1000BFBD8(0x400uLL, v5, v6, v7, v8, v9, v10, v11);
    v31 = sub_1000C7AE0("TalkAheadLMContext[1000]");
    if (*(v3 + 792) >= 1)
    {
      v34 = v12;
      v13 = 0;
      do
      {
        v14 = *(*(v3 + 784) + 4 * v13);
        sprintf(v31, "TalkAheadLMContext[%d]", v13);
        sub_1000D8354(v32, v31, v14);
        ++v13;
        v15 = *(v3 + 792);
      }

      while (v13 < v15);
      v12 = v34;
      if (v15 >= 1)
      {
        v16 = 0;
        v33 = v3;
        do
        {
          v17 = *(*(v3 + 784) + 4 * v16);
          v18 = sub_1000C7854(v12);
          v19 = 1024 - v18;
          v20 = &v12[v18];
          if (v17 == -1)
          {
            sub_1000C78DC(&v12[v18], "UNKNOWN", v19);
            v21 = sub_1000C7854(v20);
            if (v21 >= 1)
            {
LABEL_14:
              v22 = v21;
              v23 = 1;
              v24 = 1 - v21;
              do
              {
                v26 = (v20 + v22);
                v27 = *(v20 + v22 - 1);
                if (v27 == 13 || v27 == 10)
                {
                  v25 = (v21 + 1);
                  if (v25 >= v19)
                  {
                    v23 = 0;
                  }

                  if (v21 < v19)
                  {
                    v29 = v21 + 1;
                  }

                  else
                  {
                    v29 = v19;
                  }

                  j__memmove(v26 + 1, (v20 + v22), v24 + v29);
                  *(v26 - 1) = 92;
                  if (v22 <= v19)
                  {
                    if (v27 == 13)
                    {
                      v30 = 114;
                    }

                    else
                    {
                      v30 = 110;
                    }

                    *v26 = v30;
                  }
                }

                else
                {
                  v25 = v21;
                }

                --v22;
                ++v24;
                v21 = v25;
              }

              while ((v22 + 1) > 1);
              v3 = v33;
              v12 = v34;
              if (!v23)
              {
                *(v20 + v19) = 0;
              }
            }
          }

          else
          {
            sub_1000BB0D8(*(v3 + 8), v17, v19, v20, 0);
            v21 = sub_1000C7854(v20);
            if (v21 >= 1)
            {
              goto LABEL_14;
            }
          }

          sub_1000C7968(v12, " ", 1024);
          ++v16;
        }

        while (v16 < *(v3 + 792));
      }
    }

    sub_1000D8210(v32, "TalkAheadLMContext", v12);
    sub_1000BFEC4(v31);

    return sub_1000BFEC4(v12);
  }

  return result;
}

uint64_t sub_1000D6EB0(void *a1, void *a2)
{
  v3 = a1;
  v166 = 0;
  if (a1[13])
  {
    v4 = 100;
    if (a1[689] == a1[14])
    {
      v4 = 101;
    }
  }

  else
  {
    v4 = 101;
  }

  v5 = a1[v4];
  v6 = sub_1000C7AE0("ChoiceConstraintScore[1000]");
  v7 = v6;
  if (v5[1] >= 1)
  {
    v8 = 0;
    v155 = v3;
    v156 = v6;
    v158 = a2;
    v154 = v5;
    do
    {
      v165 = 0;
      v9 = sub_10003EF0C(v3, v8, &v165, 0);
      if (!v9 || v165 < 1)
      {
        goto LABEL_8;
      }

      v17 = v9;
      v18 = sub_1000BFBD8(20 * v165, v10, v11, v12, v13, v14, v15, v16);
      v19 = v18;
      if (v165 >= 1)
      {
        v20 = 0;
        v21 = v18;
        do
        {
          sprintf(v21, "0x%08x ", *&v17[4 * v20]);
          v21 += sub_1000C7854(v21);
          ++v20;
        }

        while (v20 < v165);
      }

      sprintf(v7, "Choice[%d]", v8);
      sub_1000D8210(a2, v7, v19);
      sub_1000BFEC4(v19);
      v29 = sub_1000BFBD8(0x200uLL, v22, v23, v24, v25, v26, v27, v28);
      if (sub_10004A700(v3, v8, 128, v29, &v166))
      {
        if (v8 < *v5)
        {
          goto LABEL_100;
        }

        goto LABEL_8;
      }

      v162 = v29;
      v160 = v8;
      v30 = sub_1000B210C(*(v3 + 8));
      v31 = sub_1000B214C(*(v3 + 8));
      v32 = (2 * (v31 + v30) + 7) * v166;
      v33 = v32 + 1;
      v41 = sub_1000BFBD8(v32 + 1, v34, v35, v36, v37, v38, v39, v40);
      *v41 = 34;
      if (v166 >= 1)
      {
        v42 = 0;
        do
        {
          v43 = sub_1000C7854(v41);
          v44 = sub_1000BA830(*(v3 + 8), *(v162 + 4 * v42));
          sub_1000BAFEC(*(v3 + 8), v44, v33 - v43, &v41[v43], 1);
          v45 = v42 + 1;
          v46 = v166;
          if (v42 + 1 < v166 && *(v162 + 4 * v45) == -2)
          {
            sub_1000C7968(v41, "(S)", v32 + 1);
            v46 = v166;
            LODWORD(v45) = v42 + 2;
          }

          if (v45 < v46)
          {
            sub_1000C7968(v41, " ", v32 + 1);
            v46 = v166;
          }

          v42 = v45;
        }

        while (v45 < v46);
      }

      sub_1000C7968(v41, "", v32 + 1);
      v47 = sub_1000C7854(v41);
      a2 = v158;
      if (v47 >= 1)
      {
        v48 = v47;
        v49 = 1;
        v50 = 1 - v47;
        do
        {
          v52 = &v41[v48];
          v53 = v41[v48 - 1];
          if (v53 == 13 || v53 == 10)
          {
            v51 = (v47 + 1);
            if (v47 >= v32)
            {
              v49 = 0;
            }

            if (v47 <= v32)
            {
              v55 = v47 + 1;
            }

            else
            {
              v55 = v32 + 1;
            }

            j__memmove(v52 + 1, &v41[v48], v50 + v55);
            *(v52 - 1) = 92;
            if (v48 <= v33)
            {
              if (v53 == 13)
              {
                v56 = 114;
              }

              else
              {
                v56 = 110;
              }

              *v52 = v56;
            }
          }

          else
          {
            v51 = v47;
          }

          --v48;
          ++v50;
          v47 = v51;
        }

        while ((v48 + 1) > 1);
        v3 = v155;
        v7 = v156;
        if (!v49)
        {
          v41[v33] = 0;
        }
      }

      sprintf(v7, "ChoiceText[%d]", v160);
      sub_1000D8210(v158, v7, v41);
      v57 = *(v3 + 5512);
      v65 = sub_1000BFBD8(4 * v166, v58, v59, v60, v61, v62, v63, v64);
      v73 = sub_1000BFBD8(v166, v66, v67, v68, v69, v70, v71, v72);
      v74 = v73;
      if (v166 >= 1)
      {
        v75 = 0;
        v76 = 0;
        do
        {
          while (1)
          {
            v77 = *(v162 + 4 * v75);
            if (v77 == -2)
            {
              break;
            }

            v65[v76++] = v77;
            if (++v75 >= v166)
            {
              goto LABEL_50;
            }
          }

          v73[v76] = 1;
          ++v75;
        }

        while (v75 < v166);
      }

LABEL_50:
      v78 = sub_100036A30(v57);
      sub_1000BFEC4(v74);
      sub_1000BFEC4(v65);
      v8 = v160;
      sprintf(v7, "ChoiceNAScore[%d]", v160);
      sprintf(v41, "%d", v78);
      sub_1000D8210(v158, v7, v41);
      if (*(v3 + 1320))
      {
        v164 = 0;
        v163 = 0;
        v86 = sub_1000C9F54(4 * v166 + 4, v79, v80, v81, v82, v83, v84, v85);
        v94 = sub_1000C9F54(8 * v166, v87, v88, v89, v90, v91, v92, v93);
        v159 = sub_1000C9F54(4 * v166, v95, v96, v97, v98, v99, v100, v101);
        v116 = sub_1000C9F54(4 * v166, v102, v103, v104, v105, v106, v107, v108);
        v117 = v166;
        if (v166 < 1)
        {
          v119 = 0;
        }

        else
        {
          v118 = 0;
          v119 = 0;
          v120 = v86;
          do
          {
            while (1)
            {
              v121 = *(v162 + 4 * v118);
              if (v121 == -2)
              {
                break;
              }

              *(v120 - 4 * v119) = v121;
              v117 = v166;
              ++v118;
              v120 += 4;
              if (v118 >= v166)
              {
                goto LABEL_58;
              }
            }

            ++v119;
            ++v118;
            v120 += 4;
          }

          while (v118 < v117);
        }

LABEL_58:
        v122 = (v117 - v119);
        *(v86 + 4 * v122) = -1;
        v123 = sub_1000C9F54(20, v109, v110, v111, v112, v113, v114, v115);
        v124 = v86;
        v125 = v123;
        v157 = v124;
        if (sub_10004304C(v3, *(v3 + 1320), (v3 + 1324), v122, v124, &v164 + 1, v94, v159, v116, &v163, &v164))
        {
          sub_1000CA03C(v125, 20);
          sub_1000CA03C(v116, 4 * v166);
          sub_1000CA03C(v159, 4 * v166);
          sub_1000CA03C(v94, 8 * v166);
          sub_1000CA03C(v157, 4 * v166 + 4);
          sub_1000BFEC4(v162);
          v5 = v154;
          break;
        }

        sprintf(v7, "ChoiceConstraint[%d]", v160);
        sprintf(v125, "%ld", HIDWORD(v164));
        sub_1000D8210(v158, v7, v125);
        sprintf(v7, "ChoiceConstraintScore[%d]", v160);
        sprintf(v125, "%d", v164);
        sub_1000D8210(v158, v7, v125);
        sub_1000CA03C(v125, 20);
        if (v163 < 1)
        {
          v136 = 3;
        }

        else
        {
          v133 = 0;
          v134 = 0;
          do
          {
            if (v94[v133])
            {
              v135 = v94[v133];
            }

            else
            {
              v135 = "[NULL]";
            }

            v134 += 2 * sub_1000C7854(v135) * *(v116 + v133++) + 1;
          }

          while (v133 < v163);
          v136 = v134 + 3;
        }

        v137 = v136;
        v138 = sub_1000C9F54(v136, v126, v127, v128, v129, v130, v131, v132);
        sub_1000C78DC(v138, "", v136);
        v161 = v94;
        if (v163 >= 1)
        {
          for (i = 0; i < v163; ++i)
          {
            v140 = v94[i];
            if (v140)
            {
              sub_1000D56EC(v94[i], 0, v167, 256);
              if (*(v116 + i) >= 1)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v140 = "[NULL]";
              if (*(v116 + i) >= 1)
              {
LABEL_74:
                v141 = 0;
                do
                {
                  if (v141 | i)
                  {
                    sub_1000C7968(v138, " ", v137);
                  }

                  sub_1000C7968(v138, v140, v137);
                  ++v141;
                }

                while (v141 < *(v116 + i));
              }
            }

            v94 = v161;
          }
        }

        sub_1000C7968(v138, "", v137);
        v142 = sub_1000C7854(v138);
        if (v142 >= 1)
        {
          v143 = v142;
          v144 = 1;
          v145 = 1 - v142;
          do
          {
            v147 = &v138[v143];
            v148 = v138[v143 - 1];
            if (v148 == 13 || v148 == 10)
            {
              v146 = (v142 + 1);
              if (v146 >= v137)
              {
                v144 = 0;
              }

              if (v142 < v137)
              {
                v150 = v142 + 1;
              }

              else
              {
                v150 = v137;
              }

              j__memmove(v147 + 1, &v138[v143], v145 + v150);
              *(v147 - 1) = 92;
              if (v143 <= v137)
              {
                if (v148 == 13)
                {
                  v151 = 114;
                }

                else
                {
                  v151 = 110;
                }

                *v147 = v151;
              }
            }

            else
            {
              v146 = v142;
            }

            --v143;
            ++v145;
            v142 = v146;
          }

          while ((v143 + 1) > 1);
          a2 = v158;
          v3 = v155;
          v7 = v156;
          v94 = v161;
          if (!v144)
          {
            v138[v137] = 0;
          }
        }

        sprintf(v7, "ChoiceConstraintParse[%d]", v160);
        sub_1000D8210(a2, v7, v138);
        sub_1000CA03C(v138, v137);
        v152 = v116;
        v8 = v160;
        sub_1000CA03C(v152, 4 * v166);
        sub_1000CA03C(v159, 4 * v166);
        sub_1000CA03C(v94, 8 * v166);
        sub_1000CA03C(v157, 4 * v166 + 4);
      }

      sub_1000BFEC4(v41);
      sub_1000BFEC4(v162);
      v5 = v154;
      if (v8 < *v154)
      {
LABEL_100:
        sprintf(v7, "Score[%d]", v8);
        sub_1000D8354(a2, v7, *(*(v5 + 1) + 4 * v8));
      }

LABEL_8:
      ++v8;
    }

    while (v8 < v5[1]);
  }

  sub_100003974(v7);
  sub_1000D8354(a2, "RejectionScore", v5[34]);
  return sub_1000D8354(a2, "Confidence", v5[35]);
}

uint64_t sub_1000D7844(uint64_t result, void *a2)
{
  if (*(result + 1296) >= 1)
  {
    v29 = v2;
    v30 = v3;
    v5 = result;
    v6 = sub_1000C7AE0("IsoChoiceFullScores[1000]");
    v7 = *(v5 + 436);
    sub_1000D8354(a2, "TalkAheadFirstUtteranceId", v7);
    v8 = 0;
    v27 = a2;
    v26 = v5;
    v25 = v7;
    do
    {
      v28 = 0;
      v9 = v8 + v7;
      if ((v8 + v7) > *(v5 + 1300))
      {
        break;
      }

      if (sub_10004C894(v5, v8 + v7, &v28))
      {
        v17 = (*(v5 + 1312) + (v28 << 7));
        v18 = sub_1000BFBD8(20 * *v17 + 20, v10, v11, v12, v13, v14, v15, v16);
        sprintf(v6, "IsoChoiceContext[%u]", v8 + v7);
        sprintf(v18, "0x%08x ", v17[1]);
        sub_1000D8210(a2, v6, v18);
        if (*v17 >= 1)
        {
          v19 = 0;
          v20 = v18;
          do
          {
            sprintf(v20, "0x%08x ", v17[v19 + 22]);
            v20 += sub_1000C7854(v20);
            ++v19;
          }

          while (v19 < *v17);
          sprintf(v6, "IsoChoice[%u]", v9);
          sub_1000D8210(v27, v6, v18);
          if (*v17 >= 1)
          {
            v21 = 0;
            v22 = v18;
            do
            {
              sprintf(v22, "%ld ", v17[v21 + 2]);
              v22 += sub_1000C7854(v22);
              ++v21;
            }

            while (v21 < *v17);
          }

          sprintf(v6, "IsoChoiceFullScores[%u]", v9);
          sub_1000D8210(v27, v6, v18);
          if (*v17 >= 1)
          {
            v23 = 0;
            v24 = v18;
            do
            {
              sprintf(v24, "%ld ", v17[v23 + 12]);
              v24 += sub_1000C7854(v24);
              ++v23;
            }

            while (v23 < *v17);
          }

          sprintf(v6, "IsoChoiceScores[%u]", v9);
          a2 = v27;
          sub_1000D8210(v27, v6, v18);
          v5 = v26;
          v7 = v25;
        }

        sub_1000BFEC4(v18);
      }

      ++v8;
    }

    while (v8 != 0x7FFFFFFF);
    return sub_1000BFEC4(v6);
  }

  return result;
}

uint64_t sub_1000D7AF0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 6232);
  result = sub_1000D8354(a2, "EnrollmentLength", v4);
  if (*(a1 + 6232) >= 1)
  {
    v35 = a2;
    v6 = (a1 + 5720);
    v7 = sub_1000B210C(*(a1 + 8));
    v15 = 2 * (sub_1000B214C(*(a1 + 8)) + v7);
    if (v15 <= 4)
    {
      v15 = 4;
    }

    v36 = (v15 + 7) * v4;
    v16 = v36 + 1;
    v17 = sub_1000BFBD8(v16, v8, v9, v10, v11, v12, v13, v14);
    *v17 = 34;
    if (v4 >= 1)
    {
      v18 = 1;
      v19 = v4;
      v20 = (a1 + 5720);
      do
      {
        v21 = sub_1000C7854(v17);
        v22 = *v20++;
        sub_1000BB0D8(*(a1 + 8), v22, v16 - v21, &v17[v21], 0);
        if (v18 < v4)
        {
          sub_1000C7968(v17, " ", v16);
        }

        ++v18;
        --v19;
      }

      while (v19);
    }

    v23 = sub_1000C7854(v17);
    if (v23 >= 1)
    {
      v24 = v23;
      v25 = 1;
      v26 = 1 - v23;
      do
      {
        v28 = &v17[v24];
        v29 = v17[v24 - 1];
        if (v29 == 13 || v29 == 10)
        {
          v27 = (v23 + 1);
          if (v23 >= v36)
          {
            v25 = 0;
          }

          if (v23 <= v36)
          {
            v31 = v23 + 1;
          }

          else
          {
            v31 = v16;
          }

          j__memmove(v28 + 1, &v17[v24], v26 + v31);
          *(v28 - 1) = 92;
          if (v24 <= v16)
          {
            if (v29 == 13)
            {
              v32 = 114;
            }

            else
            {
              v32 = 110;
            }

            *v28 = v32;
          }
        }

        else
        {
          v27 = v23;
        }

        --v24;
        ++v26;
        v23 = v27;
      }

      while ((v24 + 1) > 1);
      if (!v25)
      {
        v17[v16] = 0;
      }
    }

    sub_1000C7968(v17, "", v16);
    sub_1000D8210(v35, "EnrollmentText", v17);
    *v17 = 0;
    if (v4 >= 1)
    {
      do
      {
        v33 = sub_1000C7854(v17);
        v34 = *v6++;
        sprintf(&v17[v33], "0x%08x ", v34);
        --v4;
      }

      while (v4);
    }

    sub_1000D8210(v35, "EnrollmentIds", v17);

    return sub_1000BFEC4(v17);
  }

  return result;
}

uint64_t sub_1000D7D78(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (a1)
  {
    v8 = sub_1000BFB80(*(a1 + 6480));
    v7 = sub_1000C9EBC(*(a1 + 6488));
    v4 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v5 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v6);
    nullsub_1(v5);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v3 = sub_1000BDA90();
    if (!setjmp(v3))
    {
      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v8 = sub_1000BFB80(0);
    v7 = sub_1000C9EBC(0);
    v4 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v5 = sub_1000CED78(0, 0, &v6);
    nullsub_1(v5);
  }

  v9 = 1;
LABEL_9:
  sub_10004D8D8(v9);
  sub_1000CED78(v5, v6, 0);
  sub_1000BDB44(v4);
  sub_1000C9EBC(v7);
  sub_1000BFB80(v8);
  return v9;
}

uint64_t sub_1000D7EDC(uint64_t a1, const char *a2)
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  if (a1)
  {
    v16 = sub_1000BFB80(*(a1 + 6480));
    v15 = sub_1000C9EBC(*(a1 + 6488));
    v12 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v13 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v14);
    nullsub_1(v13);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v5 = sub_1000BDA90();
    if (!setjmp(v5))
    {
      if (*(a1 + 376))
      {
        v6 = sub_100056FA0(*a1);
        v7 = (*(a1 + 304) * *(a1 + 372));
        __sprintf_chk(__ptr, 0, 0x400uLL, "NIST_1A\n   1024\nsample_count -i %d\nsample_rate -i %d\nsample_n_bytes -i %d\nsample_byte_format -s2 %s\nchannel_count -i %d\nsample_coding -s3 %s\nend_head\n", *(a1 + 304) * *(a1 + 372), v6, 2, "01", 1, "pcm");
        v8 = sub_1000C7854(__ptr);
        if (v8 <= 1023)
        {
          memset(&__ptr[v8], 32, (1023 - v8) + 1);
        }

        v9 = j__fopen(a2, "wb");
        if (v9)
        {
          v10 = v9;
          j__fwrite(__ptr, 1uLL, 0x400uLL, v9);
          if (v7 >= 1)
          {
            v11 = *(a1 + 376);
            if (v11)
            {
              j__fwrite(v11, 2uLL, v7, v10);
            }
          }

          j__fclose(v10);
        }

        else
        {
          v17 = 9;
        }
      }

      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v16 = sub_1000BFB80(0);
    v15 = sub_1000C9EBC(0);
    v12 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v13 = sub_1000CED78(0, 0, &v14);
    nullsub_1(v13);
  }

  v17 = 1;
LABEL_9:
  sub_10004D8D8(v17);
  sub_1000CED78(v13, v14, 0);
  sub_1000BDB44(v12);
  sub_1000C9EBC(v15);
  sub_1000BFB80(v16);
  return v17;
}

void *sub_1000D8170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1000BFBD8(0x20uLL, a2, a3, a4, a5, a6, a7, a8);
  result[3] = "VstTextFile";
  return result;
}

void **sub_1000D8198(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      do
      {
        v3 = *v2;
        sub_1000BFEC4(v2[2]);
        sub_1000BFEC4(v2[3]);
        sub_1000BFEC4(v2);
        *v1 = v3;
        v2 = v3;
      }

      while (v3);
    }

    v1[3] = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000D8210(void *a1, unsigned __int8 *a2, char *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = 1;
    v6 = *a2;
    while ((v6 & 0x80) == 0 && (byte_1000F24A4[v6] & 0x20) != 0)
    {
      v6 = a2[v5++];
      if (!v6)
      {
        v7 = 1;
        while ((v4 & 0x80) != 0 || (byte_1000F24A4[v4] & 0x10) == 0)
        {
          v4 = a2[v7++];
          if (!v4)
          {
            v11 = a1;
            while (1)
            {
              v11 = *v11;
              if (!v11)
              {
                break;
              }

              if (!sub_1000C7A1C(v11[2], a2))
              {
                sub_100003974(v11[3]);
                v11[3] = sub_1000C7AE0(a3);
                return 1;
              }
            }

            v12 = sub_1000C7AE0(a2);
            v13 = sub_1000C7AE0(a3);
            v21 = sub_1000BFBD8(0x20uLL, v14, v15, v16, v17, v18, v19, v20);
            v21[2] = v12;
            v21[3] = v13;
            v22 = a1[1];
            v23 = a1;
            if (v22)
            {
              *v21 = *v22;
              v21[1] = v22;
              if (*v22)
              {
                *(*v22 + 8) = v21;
              }

              v23 = v22;
            }

            *v23 = v21;
            a1[1] = v21;
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1000D83D8(void *a1, FILE *a2)
{
  v3 = *a1;
  j__fseek(a2, 0, 0);
  v4 = sub_1000C7854("VstTextFile");
  j__fwrite("VstTextFile", v4, 1uLL, a2);
  v5 = sub_1000C7854(" ");
  j__fwrite(" ", v5, 1uLL, a2);
  v6 = sub_1000C7854("1");
  j__fwrite("1", v6, 1uLL, a2);
  v7 = sub_1000C7854("\n");
  j__fwrite("\n", v7, 1uLL, a2);
  for (; v3; v3 = *v3)
  {
    v8 = v3[2];
    v9 = sub_1000C7854(v8);
    j__fwrite(v8, v9, 1uLL, a2);
    v10 = sub_1000C7854(" ");
    j__fwrite(" ", v10, 1uLL, a2);
    v11 = v3[3];
    v12 = sub_1000C7854(v11);
    j__fwrite(v11, v12, 1uLL, a2);
    v13 = sub_1000C7854("\n");
    j__fwrite("\n", v13, 1uLL, a2);
  }

  v14 = sub_1000C7854("VstEndHeader");
  j__fwrite("VstEndHeader", v14, 1uLL, a2);
  v15 = sub_1000C7854("\n");
  j__fwrite("\n", v15, 1uLL, a2);

  return j__fflush(a2);
}