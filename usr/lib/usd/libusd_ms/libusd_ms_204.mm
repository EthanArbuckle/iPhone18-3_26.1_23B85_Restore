void *sub_29B2045C0(void *result, char *__s)
{
  v2 = result;
  v3 = result[1281];
  LOBYTE(v4) = *__s;
  v5 = v3 < 0x800;
  if (*__s && v3 <= 0x7FF)
  {
    do
    {
      *(result + v3) = v4;
      v6 = *++__s;
      v4 = v6;
      v7 = v3++ >= 0x7FF;
      v5 = !v7;
    }

    while (v4 && !v7);
  }

  if (v5)
  {
    result[1281] = v3;
  }

  else
  {
    v8 = result[1281];
    v9 = v3 - v8;
    if (v3 - v8 >= 5)
    {
      v10 = ~v8 + v3;
      v11 = __s - 1;
      v12 = -4;
      while (1)
      {
        v13 = *v11--;
        if ((v13 & 0xC0) != 0x80)
        {
          break;
        }

        --v10;
        v7 = __CFADD__(v12++, 1);
        if (v7)
        {
          v10 = v9;
          break;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    result[1281] = v3 - (v9 - v10);
    v14 = &__s[-(v9 - v10)];
    v15 = strlen(__s) + v9 - v10;

    return sub_29B205DF4(v2, v14, v15);
  }

  return result;
}

uint64_t sub_29B2046B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = &unk_2A20C8CD8;
  v4[1] = a2;
  v4[2] = 0;
  return sub_29B2043F8(a1, v4, a3);
}

char *sub_29B204700(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = a2[1];
  if ((v5 + 64) > 0x7FD8)
  {
    v11 = 0;
    result = sub_29B2048EC(a2, 0x40uLL, &v11);
    if (!result)
    {
      return result;
    }

    v6 = v11;
  }

  else
  {
    v6 = *a2;
    result = (*a2 + v5 + 40);
    a2[1] = v5 + 64;
  }

  *(result + 7) = 0;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = a3 | (&result[-v6] << 8);
  *(result + 3) = a1;
  v8 = *(a1 + 32);
  if (v8)
  {
    v10 = *(v8 + 40);
    v9 = (v8 + 40);
    *(v10 + 48) = result;
    *(result + 5) = v10;
  }

  else
  {
    *(a1 + 32) = result;
    v9 = (result + 40);
  }

  *v9 = result;
  return result;
}

char *sub_29B2047BC(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if ((v3 + 40) > 0x7FD8)
  {
    v9 = 0;
    result = sub_29B2048EC(a2, 0x28uLL, &v9);
    if (!result)
    {
      return result;
    }

    v4 = v9;
  }

  else
  {
    v4 = *a2;
    result = (*a2 + v3 + 40);
    a2[1] = v3 + 40;
  }

  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = &result[-v4] << 8;
  v6 = *(a1 + 56);
  if (v6)
  {
    v8 = *(v6 + 24);
    v7 = (v6 + 24);
    *(v8 + 32) = result;
    *(result + 3) = v8;
  }

  else
  {
    *(a1 + 56) = result;
    v7 = (result + 24);
  }

  *v7 = result;
  return result;
}

void sub_29B204864(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 4);
  v2 = a2 - 4;
  v4 = (v2 - 8 * v3 - 40);
  if (*(v2 + 2))
  {
    v5 = 8 * *(v2 + 2);
  }

  else
  {
    v5 = v4[3];
  }

  sub_29B204888(a1, v5, v4);
}

void sub_29B204888(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a1 == a3)
  {
    v3 = *(a1 + 8);
    a3[3] = v3;
  }

  else
  {
    v3 = a3[3];
  }

  v4 = a3[4] + a2;
  a3[4] = v4;
  if (v4 == v3)
  {
    v5 = a3[2];
    if (v5)
    {
      v6 = a3[1];
      *(v6 + 16) = v5;
      *(a3[2] + 8) = v6;
      off_2A1B6E0A0(a3);
    }

    else
    {
      a3[3] = 0;
      a3[4] = 0;
      *(a1 + 8) = 0;
    }
  }
}

char *sub_29B2048EC(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 0x1FF7)
  {
    v6 = a2 + 40;
  }

  else
  {
    v6 = 0x8000;
  }

  result = off_2A1B6E0A8(v6);
  if (result)
  {
    *(result + 4) = 0;
    *result = 0u;
    *(result + 1) = 0u;
    *result = **a1;
    *a3 = result;
    if (a2 > 0x1FF6)
    {
      v11 = *a1;
      v12 = *(*a1 + 8);
      *(result + 1) = v12;
      *(result + 2) = v11;
      *(v12 + 16) = result;
      v11[1] = result;
      v8 = (result + 24);
    }

    else
    {
      v8 = (a1 + 8);
      v9 = *(a1 + 8);
      v10 = *a1;
      *(result + 1) = *a1;
      v10[2] = result;
      v10[3] = v9;
      *a1 = result;
    }

    *v8 = a2;
    result += 40;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_29B2049AC(uint64_t result, unsigned __int8 *a2, unint64_t a3)
{
  if (result > 6)
  {
    if (result == 8)
    {
      v5 = 5;
    }

    else
    {
      v5 = result;
    }

    if (result == 7)
    {
      return 5;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (result)
    {
      if (result == 4)
      {
        return 2;
      }

      else
      {
        return result;
      }
    }

    if (a3 < 4)
    {
      return 1;
    }

    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = (v6 | v7) == 0;
    if (!(v6 | v7) && v8 == 254 && v9 == 255)
    {
      return 6;
    }

    v12 = v6 == 255 && v7 == 254;
    if (v12 && v8 == 0 && v9 == 0)
    {
      return 5;
    }

    v15 = v6 == 254 && v7 == 255 || v12;
    if (v6 == 254 && v7 == 255)
    {
      result = 3;
    }

    else
    {
      result = 2;
    }

    if (v15)
    {
      return result;
    }

    if (v6 == 239 && v7 == 187 && v8 == 191)
    {
      return 1;
    }

    if (a2[2])
    {
      v10 = 0;
    }

    if (v10 && v9 == 60)
    {
      return 6;
    }

    v16 = v6 == 60 && v7 == 0;
    v17 = v16;
    if (v16 && !a2[2] && !a2[3])
    {
      return 5;
    }

    if (*a2)
    {
      v18 = 0;
    }

    else
    {
      v18 = v7 == 60;
    }

    v19 = v18;
    if (v18 && !a2[2] && v9 == 63)
    {
      return 3;
    }

    v20 = v8 == 63 && v17;
    v21 = v17 | v19;
    if (v19)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    if (v20 && v9 == 0)
    {
      result = 2;
    }

    else
    {
      result = v22;
    }

    if ((v21 & 1) == 0)
    {
      v25[1] = v3;
      v25[2] = v4;
      v24 = 0;
      v25[0] = 0;
      if (v6 == 60 && v7 == 63 && v8 == 120 && v9 == 109 && sub_29B204C80(a2, a3, v25, &v24))
      {
        if (v24 == 6)
        {
          if ((*v25[0] & 0xDF) == 0x4C && (*(v25[0] + 1) & 0xDF) == 0x41 && (*(v25[0] + 2) & 0xDF) == 0x54 && (*(v25[0] + 3) & 0xDF) == 0x49 && (*(v25[0] + 4) & 0xDF) == 0x4E)
          {
            v23 = *(v25[0] + 5);
LABEL_98:
            if (v23 == 49)
            {
              return 9;
            }
          }
        }

        else if (v24 == 10 && (*v25[0] & 0xDF) == 0x49 && (*(v25[0] + 1) & 0xDF) == 0x53 && (*(v25[0] + 2) & 0xDF) == 0x4F && *(v25[0] + 3) == 45 && *(v25[0] + 4) == 56 && *(v25[0] + 5) == 56 && *(v25[0] + 6) == 53 && *(v25[0] + 7) == 57 && *(v25[0] + 8) == 45)
        {
          v23 = *(v25[0] + 9);
          goto LABEL_98;
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_29B204C80(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4)
{
  if (a2 < 6)
  {
    return 0;
  }

  v4 = 0;
  if (*a1 != 1836597052)
  {
    return v4;
  }

  if (*(a1 + 4) != 108)
  {
    return v4;
  }

  v4 = 0;
  if ((byte_29B767F72[*(a1 + 5)] & 8) == 0 || a2 < 8)
  {
    return v4;
  }

  v6 = a1 + 6;
  v7 = 14;
  while (1)
  {
    v8 = *(v6 + v7 - 14);
    if (v8 != 101)
    {
      if (v8 == 63)
      {
        return 0;
      }

      goto LABEL_13;
    }

    if (*(v6 + v7 - 13) == 110)
    {
      break;
    }

LABEL_13:
    ++v7;
    if (7 - a2 + v7 == 14)
    {
      return 0;
    }
  }

  if (v7 - 8 >= a2 || v7 - 6 >= a2 || *(a1 + v7 - 6) != 99 || v7 - 5 >= a2 || *(a1 + v7 - 5) != 111 || v7 - 4 >= a2 || *(a1 + v7 - 4) != 100 || v7 - 3 >= a2 || *(a1 + v7 - 3) != 105 || v7 - 2 >= a2 || *(a1 + v7 - 2) != 110 || v7 - 1 >= a2)
  {
    return 0;
  }

  v4 = 0;
  if (*(a1 + v7 - 1) == 103 && v7 < a2)
  {
    while (1)
    {
      v9 = *(a1 + v7);
      if ((byte_29B767F72[v9] & 8) == 0)
      {
        break;
      }

      v4 = 0;
      if (a2 == ++v7)
      {
        return v4;
      }
    }

    if (v9 == 61)
    {
      v10 = v7 + 1;
      v11 = (v10 + a1);
      while (v10 < a2)
      {
        v13 = *v11++;
        v12 = v13;
        ++v10;
        if ((byte_29B767F72[v13] & 8) == 0)
        {
          if (v12 == 34)
          {
            v14 = 34;
          }

          else
          {
            v14 = 39;
          }

          if (v14 != v12)
          {
            return 0;
          }

          *a3 = v11;
          if (v10 >= a2)
          {
LABEL_44:
            v4 = 0;
            v17 = a2 - v10;
            if (a2 < v10)
            {
              v17 = 0;
            }

            *a4 = v17;
          }

          else
          {
            v15 = 0;
            v16 = v10;
            while ((byte_29B767F72[*v11] & 0x40) != 0)
            {
              ++v16;
              ++v15;
              ++v11;
              if (v16 >= a2)
              {
                goto LABEL_44;
              }
            }

            *a4 = v15;
            return v14 == *v11;
          }

          return v4;
        }
      }
    }

    return 0;
  }

  return v4;
}

_BYTE *sub_29B204E9C(_BYTE *a1, unsigned int a2)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      *a1 = (a2 >> 12) | 0xE0;
      a1[1] = (a2 >> 6) & 0x3F | 0x80;
      a1[2] = a2 & 0x3F | 0x80;
      v2 = 3;
    }

    else
    {
      *a1 = (a2 >> 6) | 0xC0;
      a1[1] = a2 & 0x3F | 0x80;
      v2 = 2;
    }
  }

  else
  {
    *a1 = a2;
    v2 = 1;
  }

  return &a1[v2];
}

_BYTE *sub_29B204F08(char *a1, const void **a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  v5 = a1 + 1;
  if (v4 > 0x66)
  {
    if (v4 == 103)
    {
      v5 = a1 + 2;
      if (a1[2] != 116)
      {
        return v5;
      }

      v5 = a1 + 3;
      if (a1[3] != 59)
      {
        return v5;
      }

      v11 = 62;
    }

    else
    {
      if (v4 != 108)
      {
        if (v4 == 113)
        {
          v5 = a1 + 2;
          if (a1[2] == 117)
          {
            v5 = a1 + 3;
            if (a1[3] == 111)
            {
              v5 = a1 + 4;
              if (a1[4] == 116)
              {
                v5 = a1 + 5;
                if (a1[5] == 59)
                {
                  v6 = 34;
LABEL_43:
                  *a1 = v6;
                  v8 = a1 + 6;
                  v19 = *a2;
                  if (*a2)
                  {
                    memmove((v19 - a2[1]), v19, v3 - v19);
                  }

                  v10 = 5;
LABEL_28:
                  v5 = v8;
LABEL_29:
                  v13 = a2[1] + v10;
                  *a2 = v8;
                  a2[1] = v13;
                  return v5;
                }
              }
            }
          }
        }

        return v5;
      }

      v5 = a1 + 2;
      if (a1[2] != 116)
      {
        return v5;
      }

      v5 = a1 + 3;
      if (a1[3] != 59)
      {
        return v5;
      }

      v11 = 60;
    }

    *a1 = v11;
    v8 = a1 + 4;
    v12 = *a2;
    if (*a2)
    {
      memmove((v12 - a2[1]), v12, v3 - v12);
    }

    v10 = 3;
    goto LABEL_28;
  }

  if (v4 == 35)
  {
    v5 = a1 + 2;
    v14 = a1[2];
    if (v14 == 59)
    {
      return v5;
    }

    if (v14 == 120)
    {
      v5 = a1 + 3;
      v15 = a1[3];
      if (v15 != 59)
      {
        v16 = 0;
        while (1)
        {
          v15 = v15;
          v17 = v15 - 48;
          if (v17 > 9)
          {
            if ((v15 | 0x20u) - 97 > 5)
            {
              goto LABEL_50;
            }

            v16 = (v15 | 0x20) + 16 * v16 - 87;
          }

          else
          {
            v16 = v17 | (16 * v16);
          }

          v18 = *++v5;
          LOBYTE(v15) = v18;
        }
      }
    }

    else
    {
      v20 = v14 - 48;
      if (v20 <= 9)
      {
        v16 = 0;
        do
        {
          v16 = v20 + 10 * v16;
          v22 = *++v5;
          v21 = v22;
          v20 = v22 - 48;
        }

        while ((v22 - 48) < 0xA);
        v15 = v21;
LABEL_50:
        if (v15 == 59)
        {
          ++v5;
          if (HIWORD(v16))
          {
            *a1 = (v16 >> 18) | 0xF0;
            a1[1] = (v16 >> 12) & 0x3F | 0x80;
            a1[2] = (v16 >> 6) & 0x3F | 0x80;
            a1[3] = v16 & 0x3F | 0x80;
            v23 = a1 + 4;
          }

          else
          {
            v23 = sub_29B204E9C(a1, v16);
          }

          v10 = v5 - v23;
          if (*a2)
          {
            memmove((*a2 - a2[1]), *a2, v23 - *a2);
          }

          v8 = v5;
          goto LABEL_29;
        }
      }
    }
  }

  else if (v4 == 97)
  {
    v5 = a1 + 2;
    v7 = a1[2];
    if (v7 == 112)
    {
      v5 = a1 + 3;
      if (a1[3] == 111)
      {
        v5 = a1 + 4;
        if (a1[4] == 115)
        {
          v5 = a1 + 5;
          if (a1[5] == 59)
          {
            v6 = 39;
            goto LABEL_43;
          }
        }
      }
    }

    else if (v7 == 109)
    {
      v5 = a1 + 3;
      if (a1[3] == 112)
      {
        v5 = a1 + 4;
        if (a1[4] == 59)
        {
          *a1 = 38;
          v8 = a1 + 5;
          v9 = *a2;
          if (*a2)
          {
            memmove((v9 - a2[1]), v9, v3 - v9);
          }

          v10 = 4;
          goto LABEL_28;
        }
      }
    }
  }

  return v5;
}

unsigned __int8 *sub_29B205204(unsigned __int8 *result, uint64_t a2, char a3)
{
  v5 = result;
  v6 = *a2 & 0xF;
  if (v6 > 5)
  {
    if ((*a2 & 0xFu) > 7)
    {
      if (v6 != 8)
      {
        if (v6 == 9)
        {
          sub_29B205CFC(result, 60, 33, 68, 79, 67);
          result = sub_29B205D7C(v5, 84, 89, 80, 69);
          if (*(a2 + 16))
          {
            v28 = *(v5 + 1281);
            if (v28 >= 0x800)
            {
              sub_29B205EF8(v5, v5, v28);
              v28 = 0;
            }

            v5[v28] = 32;
            *(v5 + 1281) = v28 + 1;
            result = sub_29B2045C0(v5, *(a2 + 16));
          }

          v29 = *(v5 + 1281);
          if (v29 >= 0x800)
          {
            result = sub_29B205EF8(v5, v5, v29);
            v29 = 0;
          }

          v5[v29] = 62;
          v27 = v29 + 1;
          goto LABEL_79;
        }

        return result;
      }

      v31 = *(result + 1281);
      if (v31 >= 0x7FF)
      {
        sub_29B205EF8(result, result, v31);
        v31 = 0;
      }

      *&v5[v31] = 16188;
      *(v5 + 1281) = v31 + 2;
      if (*(a2 + 8))
      {
        v32 = *(a2 + 8);
      }

      else
      {
        v32 = ":anonymous";
      }

      sub_29B2045C0(v5, v32);
      result = sub_29B205B94(v5, a2, "", 0, a3 | 4u, 0);
      v9 = *(v5 + 1281);
    }

    else
    {
      if (v6 == 6)
      {

        return sub_29B2045C0(result, "");
      }

      if (v6 != 7)
      {
        return result;
      }

      v7 = *(result + 1281);
      if (v7 >= 0x7FF)
      {
        sub_29B205EF8(result, result, v7);
        v7 = 0;
      }

      *&v5[v7] = 16188;
      *(v5 + 1281) = v7 + 2;
      if (*(a2 + 8))
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = ":anonymous";
      }

      result = sub_29B2045C0(v5, v8);
      v9 = *(v5 + 1281);
      if (*(a2 + 16))
      {
        if (v9 >= 0x800)
        {
          result = sub_29B205EF8(v5, v5, v9);
          v9 = 0;
        }

        v5[v9++] = 32;
        *(v5 + 1281) = v9;
        v10 = *(a2 + 16);
        v11 = *v10;
        if (*v10)
        {
LABEL_14:
          for (i = 0; ; ++i)
          {
            if (v11 == 63)
            {
              v11 = v10[i + 1];
              if (v11 == 62)
              {
LABEL_20:
                v13 = v9 + i;
                if (v9 + i > 0x800)
                {
                  result = sub_29B205DF4(v5, v10, i);
                }

                else
                {
                  result = memcpy(&v5[v9], v10, i);
                  *(v5 + 1281) = v13;
                }

                v9 = *(v5 + 1281);
                if (!v10[i])
                {
                  break;
                }

                if (v9 >= 0x7FE)
                {
                  result = sub_29B205EF8(v5, v5, v9);
                  v9 = 0;
                }

                v14 = &v5[v9];
                *v14 = 8255;
                v14[2] = 62;
                v9 += 3;
                *(v5 + 1281) = v9;
                v15 = &v10[i];
                v16 = v15[2];
                v10 = v15 + 2;
                v11 = v16;
                if (!v16)
                {
                  break;
                }

                goto LABEL_14;
              }
            }

            else
            {
              if (!v11)
              {
                goto LABEL_20;
              }

              v11 = v10[i + 1];
            }
          }
        }
      }
    }

    if (v9 >= 0x7FF)
    {
      result = sub_29B205EF8(v5, v5, v9);
      v9 = 0;
    }

    *&v5[v9] = 15935;
    v27 = v9 + 2;
    goto LABEL_79;
  }

  if (v6 == 3)
  {
    if (*(a2 + 16))
    {
      v30 = *(a2 + 16);
    }

    else
    {
      v30 = "";
    }

    return sub_29B205948(result, v30, 1, a3);
  }

  if (v6 == 4)
  {
    if (*(a2 + 16))
    {
      v33 = *(a2 + 16);
    }

    else
    {
      v33 = "";
    }

    while (1)
    {
      sub_29B205CFC(v5, 60, 33, 91, 67, 68);
      sub_29B205D7C(v5, 65, 84, 65, 91);
      for (j = 0; ; ++j)
      {
        v35 = v33[j];
        if (v35 == 93)
        {
          break;
        }

        if (!v33[j])
        {
          goto LABEL_91;
        }

LABEL_90:
        ;
      }

      if (v33[j + 1] != 93 || v33[j + 2] != 62)
      {
        goto LABEL_90;
      }

LABEL_91:
      v36 = j + 2 * (v35 != 0);
      v37 = *(v5 + 1281);
      v38 = v36 + v37;
      if (v36 + v37 > 0x800)
      {
        result = sub_29B205DF4(v5, v33, v36);
        v38 = *(v5 + 1281);
      }

      else
      {
        result = memcpy(&v5[v37], v33, v36);
        *(v5 + 1281) = v38;
      }

      if (v38 >= 0x7FE)
      {
        result = sub_29B205EF8(v5, v5, v38);
        v38 = 0;
      }

      v33 += v36;
      v39 = &v5[v38];
      *v39 = 23901;
      v39[2] = 62;
      *(v5 + 1281) = v38 + 3;
      if (!*v33)
      {
        return result;
      }
    }
  }

  if (v6 != 5)
  {
    return result;
  }

  if (*(a2 + 16))
  {
    v17 = *(a2 + 16);
  }

  else
  {
    v17 = "";
  }

  result = sub_29B205D7C(result, 60, 33, 45, 45);
  v18 = *v17;
  if (!*v17)
  {
    goto LABEL_49;
  }

  do
  {
    v19 = 0;
    while (v18 != 45)
    {
      if (!v18)
      {
        goto LABEL_42;
      }

      v18 = v17[v19 + 1];
LABEL_41:
      ++v19;
    }

    v18 = v17[v19 + 1];
    if (v17[v19 + 1] && v18 != 45)
    {
      goto LABEL_41;
    }

LABEL_42:
    v20 = *(v5 + 1281);
    v21 = v20 + v19;
    if (v20 + v19 > 0x800)
    {
      result = sub_29B205DF4(v5, v17, v19);
    }

    else
    {
      result = memcpy(&v5[v20], v17, v19);
      *(v5 + 1281) = v21;
    }

    if (!v17[v19])
    {
      break;
    }

    v22 = *(v5 + 1281);
    if (v22 >= 0x7FF)
    {
      result = sub_29B205EF8(v5, v5, v22);
      v22 = 0;
    }

    *&v5[v22] = 8237;
    *(v5 + 1281) = v22 + 2;
    v23 = &v17[v19];
    v24 = v23[1];
    v17 = v23 + 1;
    v18 = v24;
  }

  while (v24);
LABEL_49:
  v25 = *(v5 + 1281);
  if (v25 >= 0x7FE)
  {
    result = sub_29B205EF8(v5, v5, v25);
    v25 = 0;
  }

  v26 = &v5[v25];
  *v26 = 11565;
  v26[2] = 62;
  v27 = v25 + 3;
LABEL_79:
  *(v5 + 1281) = v27;
  return result;
}

uint64_t sub_29B2057A4(uint64_t result, char *__src, int64_t __n, int a4)
{
  v4 = a4;
  v7 = result;
  if (__n > 2)
  {
    if (__n == 3)
    {
      if (a4)
      {
        v16 = *(result + 10248);
        do
        {
          v17 = *__src;
          v18 = __src[1];
          v19 = __src[2];
          if (v16 >= 0x7FE)
          {
            result = sub_29B205EF8(v7, v7, v16);
            v16 = 0;
          }

          v20 = (v7 + v16);
          *v20 = v17;
          v20[1] = v18;
          v20[2] = v19;
          v16 += 3;
          *(v7 + 10248) = v16;
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      if (__n != 4)
      {
LABEL_15:
        if (a4)
        {
          do
          {
            v12 = *(v7 + 10248);
            v13 = v12 + __n;
            if ((v12 + __n) > 0x800)
            {
              result = sub_29B205DF4(v7, __src, __n);
            }

            else
            {
              result = memcpy((v7 + v12), __src, __n);
              *(v7 + 10248) = v13;
            }

            --v4;
          }

          while (v4);
        }

        return result;
      }

      if (a4)
      {
        do
        {
          result = sub_29B205D7C(v7, *__src, __src[1], __src[2], __src[3]);
          --v4;
        }

        while (v4);
      }
    }
  }

  else
  {
    if (__n != 1)
    {
      if (__n == 2)
      {
        if (a4)
        {
          v8 = *(result + 10248);
          do
          {
            v9 = *__src;
            v10 = __src[1];
            if (v8 >= 0x7FF)
            {
              result = sub_29B205EF8(v7, v7, v8);
              v8 = 0;
            }

            v11 = (v7 + v8);
            *v11 = v9;
            v11[1] = v10;
            v8 += 2;
            *(v7 + 10248) = v8;
            --v4;
          }

          while (v4);
        }

        return result;
      }

      goto LABEL_15;
    }

    if (a4)
    {
      v14 = *(result + 10248);
      do
      {
        v15 = *__src;
        if (v14 >= 0x800)
        {
          result = sub_29B205EF8(v7, v7, v14);
          v14 = 0;
        }

        *(v7 + v14++) = v15;
        *(v7 + 10248) = v14;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

void *sub_29B205948(void *result, char *a2, int a3, char a4)
{
  v4 = result;
  if ((a4 & 0x10) != 0)
  {

    return sub_29B2045C0(result, a2);
  }

  else if (*a2)
  {
    do
    {
      v6 = (a2 + 1);
      while (1)
      {
        if ((byte_29B768072[*(v6 - 1)] & a3) != 0)
        {
          --v6;
          goto LABEL_11;
        }

        if ((byte_29B768072[*v6] & a3) != 0)
        {
          goto LABEL_11;
        }

        if ((byte_29B768072[v6[1]] & a3) != 0)
        {
          break;
        }

        v7 = byte_29B768072[v6[2]];
        v6 += 4;
        if ((v7 & a3) != 0)
        {
          v6 -= 2;
          goto LABEL_11;
        }
      }

      ++v6;
LABEL_11:
      v8 = v6 - a2;
      v9 = *(v4 + 10248);
      v10 = v6 - a2 + v9;
      if (v10 > 0x800)
      {
        result = sub_29B205DF4(v4, a2, v8);
      }

      else
      {
        result = memcpy((v4 + v9), a2, v8);
        *(v4 + 10248) = v10;
      }

      v11 = *v6;
      if (v11 > 0x3B)
      {
        if (v11 == 60)
        {
          v16 = *(v4 + 10248);
          if (v16 >= 0x800)
          {
            result = sub_29B205EF8(v4, v4, v16);
            v16 = 0;
          }

          *(v4 + v16) = 60;
        }

        else
        {
          if (v11 != 62)
          {
            goto LABEL_32;
          }

          v16 = *(v4 + 10248);
          if (v16 >= 0x800)
          {
            result = sub_29B205EF8(v4, v4, v16);
            v16 = 0;
          }

          *(v4 + v16) = 62;
        }

        v19 = v16 + 1;
      }

      else
      {
        if (v11 != 34)
        {
          if (v11 == 38)
          {
            v12 = v4;
            v13 = 97;
            v14 = 109;
            v15 = 112;
          }

          else
          {
            if (!*v6)
            {
              return result;
            }

LABEL_32:
            v14 = v11 / 0xAu + 48;
            v15 = (v11 % 0xAu) | 0x30;
            v12 = v4;
            v13 = 35;
          }

          result = sub_29B205CFC(v12, 38, v13, v14, v15, 59);
          goto LABEL_34;
        }

        v17 = *(v4 + 10248);
        if (v17 >= 0x7FB)
        {
          result = sub_29B205EF8(v4, v4, v17);
          v17 = 0;
        }

        v18 = v4 + v17;
        *v18 = 1869967654;
        *(v18 + 4) = 15220;
        v19 = v17 + 6;
      }

      *(v4 + 10248) = v19;
LABEL_34:
      a2 = (v6 + 1);
    }

    while (v6[1]);
  }

  return result;
}

uint64_t sub_29B205B94(uint64_t result, uint64_t a2, char *__src, int64_t __n, char a5, int a6)
{
  v6 = *(a2 + 56);
  if (v6)
  {
    v11 = result;
    v12 = a5 & 0x44;
    do
    {
      v13 = *(v11 + 10248);
      if (v12 == 64)
      {
        if (v13 >= 0x800)
        {
          sub_29B205EF8(v11, v11, v13);
          v13 = 0;
        }

        *(v11 + v13) = 10;
        *(v11 + 10248) = v13 + 1;
        sub_29B2057A4(v11, __src, __n, a6 + 1);
      }

      else
      {
        if (v13 >= 0x800)
        {
          sub_29B205EF8(v11, v11, v13);
          v13 = 0;
        }

        *(v11 + v13) = 32;
        *(v11 + 10248) = v13 + 1;
      }

      if (v6[1])
      {
        v14 = v6[1];
      }

      else
      {
        v14 = ":anonymous";
      }

      result = sub_29B2045C0(v11, v14);
      v15 = *(v11 + 10248);
      if (v15 >= 0x7FF)
      {
        result = sub_29B205EF8(v11, v11, v15);
        v15 = 0;
      }

      *(v11 + v15) = 8765;
      v16 = v15 + 2;
      *(v11 + 10248) = v16;
      v17 = v6[2];
      if (v17)
      {
        result = sub_29B205948(v11, v17, 2, a5);
        v16 = *(v11 + 10248);
      }

      if (v16 >= 0x800)
      {
        result = sub_29B205EF8(v11, v11, v16);
        v16 = 0;
      }

      *(v11 + v16) = 34;
      *(v11 + 10248) = v16 + 1;
      v6 = v6[4];
    }

    while (v6);
  }

  return result;
}

uint64_t sub_29B205CFC(uint64_t result, char a2, char a3, char a4, char a5, char a6)
{
  v11 = result;
  v12 = *(result + 10248);
  if (v12 >= 0x7FC)
  {
    result = sub_29B205EF8(result, result, v12);
    v12 = 0;
  }

  v13 = (v11 + v12);
  *v13 = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  *(v11 + 10248) = v12 + 5;
  return result;
}

uint64_t sub_29B205D7C(uint64_t result, char a2, char a3, char a4, char a5)
{
  v9 = result;
  v10 = *(result + 10248);
  if (v10 >= 0x7FD)
  {
    result = sub_29B205EF8(result, result, v10);
    v10 = 0;
  }

  v11 = (v9 + v10);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  *(v9 + 10248) = v10 + 4;
  return result;
}

void *sub_29B205DF4(uint64_t a1, char *a2, size_t a3)
{
  sub_29B205EF8(a1, a1, *(a1 + 10248));
  *(a1 + 10248) = 0;
  if (a3 < 0x801)
  {
LABEL_12:
    result = memcpy(a1, a2, a3);
    *(a1 + 10248) += a3;
    return result;
  }

  if (*(a1 + 10256) != 1)
  {
    do
    {
      v8 = 2047;
      while ((a2[v8] & 0xC0) == 0x80)
      {
        if (--v8 == 2043)
        {
          v8 = 2048;
          break;
        }
      }

      sub_29B205EF8(a1, a2, v8);
      a2 += v8;
      a3 -= v8;
    }

    while (a3 > 0x800);
    *(a1 + 10248) = 0;
    goto LABEL_12;
  }

  v6 = *(**(a1 + 10240) + 16);

  return v6();
}

uint64_t sub_29B205EF8(uint64_t result, unsigned __int8 *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = result;
    v4 = *(result + 10256);
    if (v4 == 1)
    {
      v5 = *(**(result + 10240) + 16);
    }

    else
    {
      v6 = (result + 2048);
      if ((v4 & 0xFFFFFFFE) == 2)
      {
        v7 = 2048;
        do
        {
          v8 = (result + v7);
          v9 = *a2;
          if (*a2 < 0)
          {
            v17 = a3 - 1;
            if (a3 != 1 && (v9 & 0xE0) == 0xC0 && (v18 = a2[1], (v18 & 0xC0) == 0x80))
            {
              *v8 = v18 & 0x3F | ((v9 & 0x1F) << 6);
              v7 += 2;
              v11 = (a2 + 2);
              a3 -= 2;
            }

            else if (a3 >= 3 && (v9 & 0xF0) == 0xE0 && (v19 = a2[1], (v19 & 0xC0) == 0x80) && (v20 = a2[2], (v20 & 0xC0) == 0x80))
            {
              *v8 = (v9 << 12) | ((v19 & 0x3F) << 6) | v20 & 0x3F;
              v7 += 2;
              v11 = (a2 + 3);
              a3 -= 3;
            }

            else
            {
              v21 = a3 >= 4;
              a3 -= 4;
              if (v21 && (v9 & 0xF8) == 0xF0 && (v22 = a2[1], (v22 & 0xC0) == 0x80) && (v23 = a2[2], (v23 & 0xC0) == 0x80) && (v24 = a2[3], (v24 & 0xC0) == 0x80))
              {
                *v8 = (((((v22 & 0x3F) << 12) & 0xFFE3F3FF | ((v9 & 7) << 18) | (((v23 >> 4) & 3) << 10)) + 67043328) >> 10) - 10240;
                v8[1] = v24 & 0x3F | (v23 << 6) & 0x3FF | 0xDC00;
                v7 += 4;
                v11 = (a2 + 4);
              }

              else
              {
                v11 = (a2 + 1);
                a3 = v17;
              }
            }
          }

          else
          {
            *v8 = v9;
            v10 = v7 + 2;
            v11 = (a2 + 1);
            if (--a3 >= 4 && (v11 & 3) == 0)
            {
              v12 = 0;
              v13 = result + v7;
              while (1)
              {
                v14 = &a2[v12];
                v15 = *&a2[v12 + 1];
                if ((v15 & 0x80808080) != 0)
                {
                  break;
                }

                v16 = (v13 + 2 * v12);
                v16[1] = v15 & 0x7F;
                v16[2] = v14[2];
                v16[3] = v14[3];
                v16[4] = v14[4];
                v10 += 8;
                a3 -= 4;
                v12 += 4;
                if (a3 <= 3)
                {
                  v11 = &a2[v12 + 1];
                  goto LABEL_32;
                }
              }

              v11 = (v14 + 1);
            }

LABEL_32:
            v7 = v10;
          }

          a2 = v11;
        }

        while (a3);
        if (v4 != 2)
        {
          v25 = v7 - 2048;
          if (v7 != 2048)
          {
            v26 = (result + 2048);
            do
            {
              *v26 = bswap32(*v26) >> 16;
              ++v26;
              v25 -= 2;
            }

            while (v25);
          }
        }
      }

      else if ((v4 - 5) > 1)
      {
        if (v4 == 9)
        {
          v29 = (result + 2048);
          do
          {
            v30 = *a2;
            if (v30 < 0)
            {
              v36 = a3 - 1;
              if (a3 != 1 && (v30 & 0xE0) == 0xC0 && (v37 = a2[1], (v37 & 0xC0) == 0x80))
              {
                v38 = v37 & 0x3F | (v30 << 6);
                if ((v30 & 0x1C) != 0)
                {
                  v39 = 63;
                }

                else
                {
                  v39 = v38;
                }

                *v29++ = v39;
                v31 = a2 + 2;
                a3 -= 2;
              }

              else if (a3 >= 3 && (v30 & 0xF0) == 0xE0 && (v40 = a2[1], (v40 & 0xC0) == 0x80) && (v41 = a2[2], (v41 & 0xC0) == 0x80))
              {
                v42 = (v40 << 6) | v41 & 0x3F;
                if ((v40 << 6) & 0xF00 | ((v30 & 0xF) << 12))
                {
                  v42 = 63;
                }

                *v29++ = v42;
                v31 = a2 + 3;
                a3 -= 3;
              }

              else
              {
                v21 = a3 >= 4;
                a3 -= 4;
                if (v21 && (v30 & 0xF8) == 0xF0 && (a2[1] & 0xC0) == 0x80 && (a2[2] & 0xC0) == 0x80 && (a2[3] & 0xC0) == 0x80)
                {
                  *v29++ = 63;
                  v31 = a2 + 4;
                }

                else
                {
                  v31 = a2 + 1;
                  a3 = v36;
                }
              }
            }

            else
            {
              *v29 = v30;
              v31 = a2 + 1;
              if (--a3 < 4 || (v31 & 3) != 0)
              {
                ++v29;
              }

              else
              {
                v32 = v29 + 4;
                v33 = (a2 + 4);
                do
                {
                  v34 = *(v33 - 3);
                  if ((v34 & 0x80808080) != 0)
                  {
                    break;
                  }

                  *(v32 - 3) = v34;
                  *(v32 - 2) = *(v33 - 2);
                  *(v32 - 1) = *(v33 - 1);
                  v35 = *v33;
                  v33 += 4;
                  *v32 = v35;
                  v32 += 4;
                  a3 -= 4;
                }

                while (a3 > 3);
                v29 = v32 - 3;
                v31 = (v33 - 3);
              }
            }

            a2 = v31;
          }

          while (a3);
        }
      }

      else
      {
        v27 = sub_29B206388(a2, a3, (result + 2048));
        if (v4 != 5 && v27 != v6)
        {
          v28 = (v3 + 2048);
          do
          {
            *v28 = bswap32(*v28);
            ++v28;
          }

          while (v28 != v27);
        }
      }

      v5 = *(**(v3 + 10240) + 16);
    }

    return v5();
  }

  return result;
}

int *sub_29B206388(unsigned __int8 *a1, unint64_t a2, int *a3)
{
  for (; a2; a1 = v4)
  {
    v3 = *a1;
    if (*a1 < 0)
    {
      v8 = a2 - 1;
      if (a2 != 1 && (v3 & 0xE0) == 0xC0 && (v9 = a1[1], (v9 & 0xC0) == 0x80))
      {
        *a3++ = v9 & 0x3F | ((v3 & 0x1F) << 6);
        v4 = a1 + 2;
        a2 -= 2;
      }

      else if (a2 >= 3 && (v3 & 0xF0) == 0xE0 && (v10 = a1[1], (v10 & 0xC0) == 0x80) && (v11 = a1[2], (v11 & 0xC0) == 0x80))
      {
        *a3++ = ((v3 & 0xF) << 12) | ((v10 & 0x3F) << 6) | v11 & 0x3F;
        v4 = a1 + 3;
        a2 -= 3;
      }

      else
      {
        v12 = a2 >= 4;
        a2 -= 4;
        if (v12 && (v3 & 0xF8) == 0xF0 && (v13 = a1[1], (v13 & 0xC0) == 0x80) && (v14 = a1[2], (v14 & 0xC0) == 0x80) && (v15 = a1[3], (v15 & 0xC0) == 0x80))
        {
          *a3++ = ((v3 & 7) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6) | v15 & 0x3F;
          v4 = a1 + 4;
        }

        else
        {
          v4 = a1 + 1;
          a2 = v8;
        }
      }
    }

    else
    {
      *a3 = v3;
      v4 = a1 + 1;
      if (--a2 < 4 || (v4 & 3) != 0)
      {
        ++a3;
      }

      else
      {
        v5 = a3 + 4;
        v6 = a1 + 4;
        do
        {
          if ((*(v6 - 3) & 0x80808080) != 0)
          {
            break;
          }

          *(v5 - 3) = *(v6 - 3) & 0x7F;
          *(v5 - 2) = *(v6 - 2);
          *(v5 - 1) = *(v6 - 1);
          v7 = *v6;
          v6 += 4;
          *v5 = v7;
          v5 += 4;
          a2 -= 4;
        }

        while (a2 > 3);
        a3 = v5 - 3;
        v4 = v6 - 3;
      }
    }
  }

  return a3;
}

void *sub_29B206528(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return memmove(&a2[-a10], a2, v10 - a2);
}

void *sub_29B206568(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return memmove(&a2[-a10], a2, v10 - a2);
}

void *sub_29B206584@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{

  return memmove(a3, a2, a1 - a2);
}

_BYTE *sub_29B20659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{

  return sub_29B204F08(v9, &a9);
}

_BYTE *sub_29B2065E8()
{
  result = v0 + 1;
  *v0 = v1;
  return result;
}

void sub_29B20661C(uint64_t a1, std::string *a2)
{
  *(a1 + 24) = 0;
  sub_29A008E78(__p, qword_2A14FE140);
  sub_29B1F3590(a2, __p, &v12);
  sub_29A095FDC(a1);
  *a1 = v12;
  *(a1 + 16) = v13;
  v13 = 0;
  v12 = 0uLL;
  v14 = &v12;
  sub_29A012C90(&v14);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
    if (!size)
    {
      return;
    }

    v5 = *a2->__r_.__value_.__l.__data_;
    if (v5 == 47)
    {
      goto LABEL_19;
    }

    if (size == 1)
    {
      return;
    }
  }

  else
  {
    if (!*(&a2->__r_.__value_.__s + 23))
    {
      return;
    }

    v5 = a2->__r_.__value_.__s.__data_[0];
    if (v5 == 47)
    {
      goto LABEL_19;
    }

    if (v4 == 1)
    {
      return;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    v7 = __maskrune(v5, 0x100uLL);
    LOBYTE(v4) = *(&a2->__r_.__value_.__s + 23);
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v5 + 60) & 0x100) != 0)
  {
LABEL_15:
    if ((v4 & 0x80u) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    if (v8->__r_.__value_.__s.__data_[1] != 58)
    {
      goto LABEL_22;
    }

LABEL_19:
    v9 = 1;
LABEL_20:
    *(a1 + 24) = v9;
    return;
  }

LABEL_22:
  if ((v4 & 0x80) != 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (a2->__r_.__value_.__s.__data_[0] == 92 && a2->__r_.__value_.__s.__data_[1] == 92)
  {
    v9 = 2;
    goto LABEL_20;
  }
}

void sub_29B206778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B206794(char **a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2 == 1)
  {
    if (!*(a1 + 6))
    {
      goto LABEL_22;
    }

    v6 = *a1;
    if (*a1 == a1[1])
    {
      goto LABEL_20;
    }

    if (*(v6 + 23) < 0)
    {
      if (v6[1] <= 1)
      {
LABEL_20:
        v8 = "/";
        goto LABEL_21;
      }

      v7 = *v6;
    }

    else
    {
      v7 = *a1;
      if (*(v6 + 23) <= 1u)
      {
        goto LABEL_20;
      }
    }

    v9 = *v7;
    if (v9 < 0)
    {
      v10 = __maskrune(v9, 0x100uLL);
    }

    else
    {
      v10 = *(MEMORY[0x29EDCA600] + 4 * v9 + 60) & 0x100;
    }

    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *(v6 + 23) >= 0 ? v6 : *v6;
    if (*(v11 + 1) != 58)
    {
      goto LABEL_20;
    }
  }

  else if (!a2 && *(a1 + 6) == 2)
  {
    v8 = "\\\";
LABEL_21:
    std::string::append(a3, v8);
  }

LABEL_22:
  v12 = *a1;
  if (a1[1] != *a1)
  {
    v13 = 0;
    v14 = 0;
    if (a2 == 1)
    {
      v15 = 47;
    }

    else
    {
      v15 = 92;
    }

    do
    {
      v16 = v12 + v13;
      v17 = *(v16 + 23);
      if (v17 >= 0)
      {
        v18 = v16;
      }

      else
      {
        v18 = *v16;
      }

      if (v17 >= 0)
      {
        v19 = *(v16 + 23);
      }

      else
      {
        v19 = *(v16 + 8);
      }

      std::string::append(a3, v18, v19);
      if (++v14 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3))
      {
        std::string::push_back(a3, v15);
      }

      v12 = *a1;
      v13 += 24;
    }

    while (v14 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }
}

void sub_29B206928(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B206948(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (!*(a1 + 24))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  sub_29A008E78(&v3, "Appended path must be relative.");
  sub_29AAD6B14(exception, &v3);
  __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
}

void sub_29B206A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B206A78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 != v5)
  {
    do
    {
      v6 = strlen(qword_2A14FE148);
      v7 = v6;
      v8 = *(v4 + 23);
      if (v8 < 0)
      {
        if (v6 == v4[1])
        {
          if (v6 == -1)
          {
            sub_29A0F26CC();
          }

          v9 = *v4;
LABEL_8:
          if (!memcmp(v9, qword_2A14FE148, v7))
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v9 = v4;
        if (v7 == v8)
        {
          goto LABEL_8;
        }
      }

      v10 = qword_2A14FE150;
      v11 = strlen(qword_2A14FE150);
      v12 = v11;
      if ((v8 & 0x80000000) != 0)
      {
        if (v11 != v4[1])
        {
          goto LABEL_16;
        }

        if (v11 == -1)
        {
          sub_29A0F26CC();
        }

        v13 = *v4;
      }

      else
      {
        v13 = v4;
        if (v12 != v8)
        {
          goto LABEL_16;
        }
      }

      if (memcmp(v13, qword_2A14FE150, v12) || (v14 = *(a2 + 8), *a2 == v14))
      {
LABEL_16:
        sub_29A070BA0(a2);
      }

      if (*(v14 - 1) < 0)
      {
        sub_29A008D14(__s1, *(v14 - 24), *(v14 - 16));
        v10 = qword_2A14FE150;
      }

      else
      {
        v15 = *(v14 - 24);
        v22 = *(v14 - 8);
        *__s1 = v15;
      }

      v16 = strlen(v10);
      if ((SHIBYTE(v22) & 0x8000000000000000) != 0)
      {
        if (v16 == __s1[1])
        {
          if (v16 == -1)
          {
            sub_29A0F26CC();
          }

          v17 = __s1[0];
          v18 = memcmp(__s1[0], v10, v16);
          operator delete(v17);
          if (!v18)
          {
            goto LABEL_16;
          }
        }

        else
        {
          operator delete(__s1[0]);
        }
      }

      else if (v16 == SHIBYTE(v22) && !memcmp(__s1, v10, v16))
      {
        goto LABEL_16;
      }

      v19 = *(a2 + 8);
      v20 = (v19 - 24);
      if (*(v19 - 1) < 0)
      {
        operator delete(*v20);
      }

      *(a2 + 8) = v20;
LABEL_17:
      v4 += 3;
    }

    while (v4 != v5);
  }

  *(a2 + 24) = *(a1 + 24);
}

BOOL sub_29B206C9C(char **a1)
{
  sub_29B206794(a1, 1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v2 = stat(p_p, &v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2 == 0;
}

void sub_29B206D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B206D20(char **a1)
{
  sub_29B206794(a1, 1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v2 = stat(p_p, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return !v2 && (v6.st_mode & 0xF000) == 0x4000;
}

void sub_29B206D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B206DB4(char **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29B206794(a1, 1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v6 = opendir(p_p);
  v7 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v7)
    {
      return;
    }

    while (1)
    {
      do
      {
LABEL_8:
        v8 = readdir(v7);
        v9 = v8;
        if (!v8)
        {
          closedir(v7);
          return;
        }
      }

      while (v8->d_type == 4);
      sub_29AE1D8C4(&__p, v8->d_name);
      sub_29B206F98(&__p, &v18);
      v10 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v18.__r_.__value_.__l.__size_;
      }

      v12 = *(a2 + 23);
      v13 = v12;
      if (v12 < 0)
      {
        v12 = a2[1];
      }

      if (size == v12)
      {
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18.__r_.__value_.__r.__words[0];
        }

        if (v13 >= 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = *a2;
        }

        v16 = memcmp(v14, v15, size) == 0;
        if (v10 < 0)
        {
LABEL_25:
          operator delete(v18.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v16 = 0;
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_25;
        }
      }

      v19 = &__p;
      sub_29A012C90(&v19);
      if (v16)
      {
        sub_29AE1D8C4(&__p, v9->d_name);
        sub_29B207054(a3);
      }
    }
  }

  if (v6)
  {
    goto LABEL_8;
  }
}

__int128 *sub_29B206F98@<X0>(void *a1@<X0>, std::string *a2@<X8>)
{
  v3 = a1[1];
  if (*a1 == v3)
  {
    v4 = sub_29B1F31FC();
  }

  else
  {
    v4 = (v3 - 24);
  }

  v5 = std::string::rfind(v4, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v5 != -1)
  {
    return std::string::basic_string(a2, v4, v5 + 1, 0xFFFFFFFFFFFFFFFFLL, &v10);
  }

  result = sub_29B1F31FC();
  if (*(result + 23) < 0)
  {
    v8 = *result;
    v9 = *(result + 1);

    return sub_29A008D14(a2, v8, v9);
  }

  else
  {
    v7 = *result;
    a2->__r_.__value_.__r.__words[2] = *(result + 2);
    *&a2->__r_.__value_.__l.__data_ = v7;
  }

  return result;
}

void sub_29B207054(void *a1)
{
  if (a1[1] < a1[2])
  {
    sub_29B20754C(a1);
  }

  sub_29B2075C0(a1);
}

BOOL sub_29B207094@<W0>(char **a1@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  result = sub_29B206D20(a1);
  if (result)
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_29B2073A8(unsigned __int8 **a1@<X0>, void *a2@<X8>)
{
  sub_29A008E78(__p, qword_2A14FE160);
  sub_29B2016D4(__p, &__str);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29B207450(a2, &__str, a1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_29B207420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B207450(void *a1, std::string *__str, unsigned __int8 **a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29B1F3590(__str, a3, &v7);
  for (i = v7; i != v8; i += 24)
  {
    if ((*(i + 23) & 0x8000000000000000) != 0)
    {
      if (*(i + 8))
      {
LABEL_6:
        sub_29AAC9330(v6, i);
        sub_29AD9633C(a1);
      }
    }

    else if (*(i + 23))
    {
      goto LABEL_6;
    }
  }

  v6[0] = &v7;
  sub_29A012C90(v6);
  return a1;
}

void sub_29B20754C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29B2075C0(void *a1)
{
  v1 = (a1[1] - *a1) >> 5;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 59))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 4 > v2)
    {
      v2 = v3 >> 4;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFE0)
    {
      v4 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v11 = a1;
    if (v4)
    {
      v5 = sub_29A10CB10(a1, v4);
    }

    else
    {
      v5 = 0;
    }

    v6 = &v5[32 * v1];
    v7 = v5;
    v8 = v6;
    v9 = v6;
    v10 = &v5[32 * v4];
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  sub_29A00C9A4();
}

void sub_29B2076E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AD9669C(va);
  _Unwind_Resume(a1);
}

void *sub_29B2076F4(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29B20777C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29B20775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AAC9380(&a9);
  _Unwind_Resume(a1);
}

void *sub_29B20777C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  v7 = 1;
  sub_29AD96618(v6);
  return a4;
}

uint64_t sub_29B207844(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 5)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 5;
      if (v19 >= a5)
      {
        sub_29B2079DC(a1, a2, a1[1], a2 + 32 * a5);
        v20 = a3 + 32 * a5;
      }

      else
      {
        a1[1] = sub_29AE13CD8(a1, v18 + a3, a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29B2079DC(a1, v5, v10, v5 + 32 * a5);
        v20 = v18 + a3;
      }

      sub_29B207C8C(&v22, a3, v20, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v26 = a1;
    if (v15)
    {
      v17 = sub_29A10CB10(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v22 = v17;
    v23 = &v17[32 * v16];
    v24 = v23;
    v25 = &v17[32 * v15];
    sub_29B207AA4(&v22, a3, a5);
    v5 = sub_29B207B38(a1, &v22, v5);
    sub_29AD9669C(&v22);
  }

  return v5;
}

uint64_t sub_29B2079DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 < a3)
  {
    v6 = *(a1 + 8);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  *(a1 + 8) = *(a1 + 8);
  return sub_29B207BF4(&v8, a2, v5, v4);
}

uint64_t sub_29B207AA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_29B207B38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  sub_29AD96524(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_29AD96524(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_29B207BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      if (v7 != a4)
      {
        sub_29A095E3C(a4 - 32, *(v7 - 32), *(v7 - 24), 0xAAAAAAAAAAAAAAABLL * ((*(v7 - 24) - *(v7 - 32)) >> 3));
      }

      *(a4 - 8) = *(v7 - 8);
      v7 -= 32;
      a4 -= 32;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_29B207C8C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_29A095E3C(a4, *v5, *(v5 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 8) - *v5) >> 3));
      }

      *(a4 + 24) = *(v5 + 24);
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_29B207D10@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v16[19] = *MEMORY[0x29EDCA608];
  sub_29B206794(a1, 1, &__p);
  sub_29A8CC8D8(v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v15[*(v14[0] - 24) + 16] & 5) != 0)
  {
    goto LABEL_10;
  }

  sub_29A008864(&__p);
  std::ostream::operator<<();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v14 + *(v14[0] - 24)), *&v15[*(v14[0] - 24) + 16] | 4);
  }

  if ((*(&v10[0].__locale_ + *(__p.__r_.__value_.__r.__words[0] - 24)) & 5) != 0)
  {
    __p.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9528];
    v3 = *(MEMORY[0x29EDC9528] + 72);
    *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
    __p.__r_.__value_.__r.__words[2] = v3;
    v9 = MEMORY[0x29EDC9570] + 16;
    if (v12 < 0)
    {
      operator delete(v11);
    }

    v9 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v10);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](v13);
LABEL_10:
    v4 = sub_29B1F31FC();
    if (*(v4 + 23) < 0)
    {
      sub_29A008D14(a2, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      *(a2 + 16) = *(v4 + 2);
      *a2 = v5;
    }

    goto LABEL_16;
  }

  std::stringbuf::str();
  __p.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 72);
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  __p.__r_.__value_.__r.__words[2] = v6;
  v9 = MEMORY[0x29EDC9570] + 16;
  if (v12 < 0)
  {
    operator delete(v11);
  }

  v9 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v13);
LABEL_16:
  v14[0] = *MEMORY[0x29EDC9518];
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C2C1D20](v15);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](v16);
}

void sub_29B2081CC(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (*a1 != a1[1] && v4 != *(a2 + 8))
  {
    if (!*(a2 + 24))
    {
      sub_29B206948(a2, a3);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29B2082C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void sub_29B2082DC(uint64_t a1)
{
  sub_29B1C6D8C(&v1, a1);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29B208408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B20846C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_29AE13C50(&v22, *a2, a2[1], (a2[1] - *a2) >> 5);
  sub_29A008E78(&__p, off_2A14FE158[0]);
  sub_29B2073A8(&__p, &v20);
  if (v20.__r_.__value_.__r.__words[0] != v20.__r_.__value_.__l.__size_)
  {
    sub_29AD9633C(&v22);
  }

  v21[0] = &v20;
  sub_29AAC9380(v21);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  if (*a1 != a1[1])
  {
    sub_29B2081CC(&v22, *a1, &v20);
  }

  v7 = v22;
  v14 = v23;
  if (v22 != v23)
  {
    do
    {
      v15 = v7;
      sub_29B207094(v7, &__p);
      v9 = __p;
      v8 = v18;
      v16 = v18;
      while (v9 != v8)
      {
        sub_29A008E78(&v20, off_2A14FE168[0]);
        sub_29B206DB4(v9, &v20.__r_.__value_.__l.__data_, v21);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        v11 = v21[0];
        v10 = v21[1];
        while (v11 != v10)
        {
          sub_29B206794(v11, 1, &v20);
          v12 = sub_29A00AF58(a3, &v20.__r_.__value_.__l.__data_);
          v13 = v12;
          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__r_.__value_.__l.__data_);
            if (!v13)
            {
LABEL_18:
              sub_29B206948(v11, &v20);
            }
          }

          else if (!v12)
          {
            goto LABEL_18;
          }

          v11 += 4;
        }

        v20.__r_.__value_.__r.__words[0] = v21;
        sub_29AAC9380(&v20);
        v9 += 4;
        v8 = v16;
      }

      v20.__r_.__value_.__r.__words[0] = &__p;
      sub_29AAC9380(&v20);
      v7 = v15 + 4;
    }

    while (v15 + 4 != v14);
  }

  v20.__r_.__value_.__r.__words[0] = &v22;
  sub_29AAC9380(&v20);
}

void sub_29B2088EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  a14 = (v40 - 112);
  sub_29AAC9380(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29B208AC8(uint64_t *a1, void *a2, uint64_t *a3)
{
  sub_29B1DA4E4(*a1, &v55);
  *(&v59 + 1) = 0;
  v49 = v55;
  v50 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  sub_29B1D3464(&v51, v57, v58, 0xAAAAAAAAAAAAAAABLL * (v58 - v57));
  v54 = v59;
  v6 = sub_29B1F19B8();
  v7 = v6;
  v8 = v6[1];
  v43 = *v6;
  v44 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = a1;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  sub_29B1D3464(&v45, v6[2], v6[3], 0xAAAAAAAAAAAAAAABLL * ((v6[3] - v6[2]) >> 3));
  v48 = *(v7 + 5);
  while (!sub_29B1D35F8(&v49, &v43))
  {
    v10 = v49;
    v9 = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D76C0(v10, &v41);
    if (v41)
    {
      v11 = (*(*v41 + 64))(v41);
      v12 = strlen(off_2A14FDEC0[0]);
      v13 = *(v11 + 23);
      if (v13 < 0)
      {
        if (v12 != v11[1])
        {
          goto LABEL_43;
        }

        if (v12 == -1)
        {
          sub_29A0F26CC();
        }

        v11 = *v11;
LABEL_16:
        if (memcmp(v11, off_2A14FDEC0[0], v12))
        {
          goto LABEL_43;
        }

        v14 = sub_29AAC0680(v41);
        sub_29AAC9330(v38, v14);
        if (v38[0] != v38[1])
        {
          v15 = sub_29B1F31FC();
          sub_29B1DAB28(v10, v15, &v36);
          if (v40)
          {
            v16 = v36;
            v17 = sub_29B1F31FC();
            std::string::operator=((v16 + 8), v17);
          }

          v18 = v41;
          v33 = v36;
          v34 = v37;
          if (v37)
          {
            atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29B1DB034(v18, &v33, &v35);
          if (v34)
          {
            sub_29A014BEC(v34);
          }

          if (*a2 != a2[1])
          {
            sub_29AAC9330(&__p, &v35);
            if (!v32 && a2[1] != *a2)
            {
              sub_29B206948(&__p, v29);
            }

            v29[0] = &__p;
            sub_29A012C90(v29);
          }

          if (*a3)
          {
            sub_29A008E78(&__p, off_2A14FDEC0[0]);
            v19 = sub_29B1DB4BC(&__p.__r_.__value_.__l.__data_);
            v20 = v19;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (!v20)
              {
                goto LABEL_38;
              }
            }

            else if (!v19)
            {
              goto LABEL_38;
            }

            v21 = *a3;
            sub_29A008E78(v29, off_2A14FDEC0[0]);
            (*(*v21 + 16))(&__p, v21, &v35, v29);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v35.__r_.__value_.__l.__data_);
            }

            v35 = __p;
            *(&__p.__r_.__value_.__s + 23) = 0;
            __p.__r_.__value_.__s.__data_[0] = 0;
            if (v30 < 0)
            {
              operator delete(v29[0]);
            }
          }

LABEL_38:
          sub_29AD99E08(v41, &v35);
          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          if (v37)
          {
            sub_29A014BEC(v37);
          }
        }

        __p.__r_.__value_.__r.__words[0] = v38;
        sub_29A012C90(&__p);
        goto LABEL_43;
      }

      if (v12 == v13)
      {
        goto LABEL_16;
      }
    }

LABEL_43:
    if (v42)
    {
      sub_29A014BEC(v42);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }

    sub_29B1F19D8(&v49);
  }

  sub_29B1D366C(&v43);
  sub_29B1D366C(&v49);
  sub_29B1D366C(&v55);
  sub_29B1DA4E4(*v28, &v55);
  *(&v59 + 1) = 0;
  v49 = v55;
  v50 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  sub_29B1D3464(&v51, v57, v58, 0xAAAAAAAAAAAAAAABLL * (v58 - v57));
  v54 = v59;
  v22 = sub_29B1F19B8();
  v23 = v22;
  v24 = v22[1];
  v43 = *v22;
  v44 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  sub_29B1D3464(&v45, v22[2], v22[3], 0xAAAAAAAAAAAAAAABLL * ((v22[3] - v22[2]) >> 3));
  v48 = *(v23 + 5);
  while (2)
  {
    if (!sub_29B1D35F8(&v49, &v43))
    {
      v26 = v49;
      v25 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (sub_29B1C7514(v26) && (sub_29A008E78(v38, off_2A14FDC40[0]), sub_29B1D93E8(v26, v38), v39 < 0))
      {
        operator delete(v38[0]);
        if (v25)
        {
LABEL_59:
          sub_29A014BEC(v25);
        }
      }

      else if (v25)
      {
        goto LABEL_59;
      }

      sub_29B1F19D8(&v49);
      continue;
    }

    break;
  }

  sub_29B1D366C(&v43);
  sub_29B1D366C(&v49);
  return sub_29B1D366C(&v55);
}

void sub_29B209094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, void ***a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, char a46, uint64_t a47)
{
  a11 = &a15;
  sub_29A012C90(&a11);
  a15 = &a22;
  sub_29A012C90(&a15);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    sub_29A014BEC(a36);
  }

  a22 = &a37;
  sub_29A012C90(&a22);
  if (a45)
  {
    sub_29A014BEC(a45);
  }

  if (v47)
  {
    sub_29A014BEC(v47);
  }

  sub_29B1D366C(&a46);
  sub_29B1D366C(v48 - 216);
  sub_29B1D366C(v48 - 160);
  _Unwind_Resume(a1);
}

void sub_29B209214(uint64_t a1, uint64_t a2, void *a3)
{
  v8[26] = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, off_2A14FE158[0]);
  sub_29B2073A8(__p, v8);
  if (v8[0] != v8[1])
  {
    sub_29AD9633C(a3);
  }

  __str.__r_.__value_.__r.__words[0] = v8;
  sub_29AAC9380(&__str);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29B2081CC(a3, a2, v8);
}

void sub_29B209450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_29B203CA4(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_29B2094EC(uint64_t result)
{
  *result = 0;
  *(result + 2) = 1;
  *(result + 8) = &unk_2A20C8E68;
  *(result + 16) = sub_29B209214;
  *(result + 32) = result + 8;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

BOOL sub_29B209534(uint64_t a1, uint64_t a2)
{
  result = sub_29B203B84(a1);
  if (!result)
  {
    if ((*a1 - 1) <= 2)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_29B206794(a2, 1, &v30);
      v6 = std::string::insert(&v30, 0, "Failed to open file for reading: ");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v32 = v6->__r_.__value_.__r.__words[2];
      v31 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &v31);
      *exception = &unk_2A20C8E18;
      __cxa_throw(exception, &unk_2A20C8DD8, sub_29B20ADBC);
    }

    v8 = sub_29B203B94(a1);
    sub_29A008E78(&v31, v8);
    std::to_string(&v30, *(a1 + 8));
    sub_29A008E78(&v29, "XML parse error");
    if (*a2 != *(a2 + 8))
    {
      sub_29B206794(a2, 1, &v26);
      v20 = std::string::insert(&v26, 0, " in ");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v28 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (v28 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      if (v28 >= 0)
      {
        v23 = HIBYTE(v28);
      }

      else
      {
        v23 = __p[1];
      }

      std::string::append(&v29, v22, v23);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }

    std::operator+<char>();
    v9 = std::string::append(&v24, " at character ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v30;
    }

    else
    {
      v11 = v30.__r_.__value_.__r.__words[0];
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v25, v11, size);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v26, ")");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v28 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (v28 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if (v28 >= 0)
    {
      v18 = HIBYTE(v28);
    }

    else
    {
      v18 = __p[1];
    }

    std::string::append(&v29, v17, v18);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    v19 = __cxa_allocate_exception(0x20uLL);
    sub_29AAD6B14(v19, &v29);
    *v19 = &unk_2A20C8E40;
    __cxa_throw(v19, &unk_2A20C8DF0, sub_29B20ADC0);
  }

  return result;
}

void sub_29B209834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B209980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v16 = sub_29B201AA8(a2, off_2A14FDD08[0]);
  if (!sub_29B201A68(&v16))
  {
    goto LABEL_40;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v20, 0, sizeof(v20));
  if (a4)
  {
    sub_29AAC9464(v27, a4 + 8);
  }

  else
  {
    v27[0] = &unk_2A20C8E68;
    v27[1] = sub_29B209214;
    v28 = v27;
  }

  v19 = sub_29B201BAC(&v16);
  while (sub_29B201A68(&v19))
  {
    v7 = sub_29B20179C(&v19);
    sub_29A008E78(&v21, v7);
    if (SHIBYTE(v22) < 0)
    {
      if (*(&v21 + 1) != 10)
      {
        operator delete(v21);
        goto LABEL_31;
      }

      v10 = *v21 != 0x756C636E693A6978 || *(v21 + 8) != 25956;
      operator delete(v21);
      if (!v10)
      {
        goto LABEL_25;
      }

LABEL_31:
      v19 = sub_29B201B94(&v19);
    }

    else
    {
      if (SHIBYTE(v22) != 10)
      {
        goto LABEL_31;
      }

      if (v21 != 0x756C636E693A6978 || WORD4(v21) != 25956)
      {
        goto LABEL_31;
      }

LABEL_25:
      if (v28)
      {
        *&v21 = sub_29B201B3C(&v19, "href");
        v11 = sub_29B2017BC(&v21);
        v12 = sub_29A008E78(v18, v11);
        if (!a4 || (v12 = sub_29A22B430(*(a4 + 40), *(a4 + 48), v18), v12 == *(a4 + 48)))
        {
          sub_29B1C6D8C(&v17, v12);
          if (a4)
          {
            LOWORD(v21) = *a4;
            BYTE2(v21) = *(a4 + 2);
            sub_29AAC9464(&v21 + 8, a4 + 8);
            v24 = 0;
            v25 = 0;
            v26 = 0;
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
          }

          LOWORD(v21) = 0;
          BYTE2(v21) = 1;
          *(&v21 + 1) = &unk_2A20C8E68;
          v22 = sub_29B209214;
          v23 = &v21 + 8;
          v25 = 0;
          v26 = 0;
          v24 = 0;
          sub_29A070BA0(&v24);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        sub_29A008E78(&v21, "XInclude cycle detected.");
        sub_29AAD6B14(exception, &v21);
        *exception = &unk_2A20C8E40;
        __cxa_throw(exception, &unk_2A20C8DF0, sub_29B20ADC0);
      }

      *&v21 = v19;
      v19 = sub_29B201B94(&v19);
      sub_29B201F48(&v16, &v21);
    }
  }

  sub_29AAC94FC(v27);
  *&v21 = v20;
  sub_29AAC9380(&v21);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v13 = *(a1 + 8);
  v15[0] = *a1;
  v15[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B20AE14(&v16, v15, a4);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

LABEL_40:
  if (!a4 || *(a4 + 2) == 1)
  {
    sub_29B1C886C(*a1);
  }
}

void sub_29B209F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  a15 = &a19;
  sub_29A012C90(&a15);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_29AAC9420(v40 - 192);
  if (a31)
  {
    sub_29A014BEC(a31);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_29AAC94FC(v40 - 128);
  *(v40 - 192) = &a39;
  sub_29AAC9380((v40 - 192));
  if (v39)
  {
    sub_29A014BEC(v39);
  }

  _Unwind_Resume(a1);
}

void *sub_29B20A08C(uint64_t *a1, void *a2, void *a3, _BYTE *a4)
{
  v19[26] = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, off_2A14FE158[0]);
  sub_29B2073A8(__p, v19);
  if (v19[0] != v19[1])
  {
    sub_29AD9633C(a3);
  }

  v17[0] = v19;
  sub_29AAC9380(v17);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29B203BBC(v19);
  v8 = 116;
  if (a4)
  {
    if (*a4)
    {
      v9 = 118;
    }

    else
    {
      v9 = 116;
    }

    if (a4[1])
    {
      v8 = v9 | 0x4000;
    }

    else
    {
      v8 = v9;
    }
  }

  sub_29B203CD0(v19, a2, v8, 0, v17);
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  v15 = 0;
  sub_29B209534(v17, __p);
  v18 = __p;
  sub_29A012C90(&v18);
  v10 = *a1;
  v11 = a1[1];
  v13[0] = v10;
  v13[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B209980(v13, v19, a3, a4);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  return sub_29B203CA4(v19);
}

void sub_29B20A210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  sub_29B203CA4(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_29B20A284(uint64_t *a1, const std::string *a2, uint64_t *a3, _BYTE *a4)
{
  sub_29A5DB8D8(v12, a2, 8);
  v7 = *a1;
  v8 = a1[1];
  v11[0] = v7;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v10, 0, sizeof(v10));
  sub_29AE13C50(v10, *a3, a3[1], (a3[1] - *a3) >> 5);
  sub_29B20A08C(v11, v12, v10, a4);
  v17 = v10;
  sub_29AAC9380(&v17);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v12[0] = *MEMORY[0x29EDC9530];
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
  v13 = MEMORY[0x29EDC9570] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v14);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v16);
}

void sub_29B20A424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v8 - 40) = v7;
  sub_29AAC9380((v8 - 40));
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

void *sub_29B20A458(uint64_t *a1, uint64_t a2, char *a3)
{
  v12[26] = *MEMORY[0x29EDCA608];
  sub_29B203BBC(v12);
  v6 = sub_29B201F00(v12, "materialx");
  v7 = *a1;
  v8 = a1[1];
  v10[0] = v7;
  v10[1] = v8;
  v11 = v6;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B20A560(v10, &v11, a3);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  sub_29B2046B4(v12, a2, "  ");
  return sub_29B203CA4(v12);
}

void sub_29B20A530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29B203CA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B20A560(uint64_t *a1, void **a2, char *a3)
{
  v56 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v41 = *a3;
    sub_29B20BA40(v54, (a3 + 8));
  }

  else
  {
    v55 = 0;
    v41 = 1;
  }

  v6 = *a1;
  v7 = (*a1 + 48);
  if ((*(*a1 + 71) & 0x80000000) == 0)
  {
    if (!*(*a1 + 71))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6[7])
  {
    v7 = *v7;
LABEL_9:
    v44 = sub_29B201CD4(a2, off_2A14FDC38[0]);
    sub_29B2017DC(&v44, v7);
    v6 = *a1;
  }

LABEL_10:
  v9 = v6[25];
  v8 = v6[26];
  if (v9 != v8)
  {
    do
    {
      v10 = v9;
      if (v9[23] < 0)
      {
        v10 = *v9;
      }

      v44 = sub_29B201CD4(a2, v10);
      v11 = sub_29A8877BC((*a1 + 160), v9);
      if (v11)
      {
        v12 = (v11 + 5);
      }

      else
      {
        v12 = sub_29B1F31FC();
      }

      if (v12[23] < 0)
      {
        v12 = *v12;
      }

      sub_29B201804(&v44, v12);
      v9 += 24;
    }

    while (v9 != v8);
    v6 = *a1;
  }

  v53[0] = 0;
  v53[1] = 0;
  v52 = v53;
  v13 = v6[17];
  v14 = v6[18];
  if (v13 == v14)
  {
    v38 = 0;
    goto LABEL_101;
  }

  v40 = a3;
  do
  {
    v16 = *v13;
    v15 = v13[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v55)
      {
        goto LABEL_31;
      }

      v50 = v16;
      v51 = v15;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = v55;
      if (!v55)
      {
        sub_29A0DDCB0();
      }
    }

    else
    {
      v17 = v55;
      if (!v55)
      {
        goto LABEL_31;
      }

      v50 = *v13;
      v51 = 0;
    }

    v18 = (*(*v17 + 48))(v17, &v50);
    if (v51)
    {
      sub_29A014BEC(v51);
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_93;
    }

LABEL_31:
    if ((v41 & 1) == 0)
    {
      goto LABEL_67;
    }

    if (*(v16 + 95) < 0)
    {
      if (!*(v16 + 80))
      {
        goto LABEL_67;
      }

      sub_29A008D14(&__dst, *(v16 + 72), *(v16 + 80));
    }

    else
    {
      if (!*(v16 + 95))
      {
        goto LABEL_67;
      }

      __dst = *(v16 + 72);
    }

    sub_29B1D8ACC(*a1, &v44);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v20 = *(v44 + 95);
    v21 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(v44 + 10);
    }

    if (size == v20)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if (v21 >= 0)
      {
        v23 = v44 + 72;
      }

      else
      {
        v23 = *(v44 + 9);
      }

      v24 = memcmp(p_dst, v23, size) != 0;
    }

    else
    {
      v24 = 1;
    }

    if (v45)
    {
      sub_29A014BEC(v45);
    }

    if (v24)
    {
      if (!sub_29A00AF58(&v52, &__dst.__r_.__value_.__l.__data_))
      {
        v44 = sub_29B201B3C(a2, "xmlns:xi");
        if (sub_29B20178C(&v44))
        {
          v44 = sub_29B201CD4(a2, "xmlns:xi");
          sub_29B2017DC(&v44, "http://www.w3.org/2001/XInclude");
        }

        v48 = sub_29B201F00(a2, "xi:include");
        v47 = sub_29B201CD4(&v48, "href");
        sub_29AAC9330(&v44, &__dst);
        sub_29B206794(&v44, 1, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        sub_29B201804(&v47, p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_29A095658(&v52, &__dst.__r_.__value_.__l.__data_, &__dst);
        __p.__r_.__value_.__r.__words[0] = &v44;
        sub_29A012C90(&__p);
      }

      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_93;
      }

      v26 = __dst.__r_.__value_.__r.__words[0];
      goto LABEL_98;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

LABEL_67:
    v27 = (v16 + 24);
    v28 = strlen(off_2A14FDD00[0]);
    v29 = v28;
    v30 = *(v16 + 47);
    if ((v30 & 0x8000000000000000) != 0)
    {
      if (v28 != *(v16 + 32))
      {
        goto LABEL_74;
      }

      if (v28 == -1)
      {
        sub_29A0F26CC();
      }

      v31 = *v27;
    }

    else
    {
      v31 = (v16 + 24);
      if (v29 != v30)
      {
        goto LABEL_74;
      }
    }

    if (memcmp(v31, off_2A14FDD00[0], v29))
    {
LABEL_74:
      v32 = strlen(off_2A14FDD60[0]);
      v33 = v32;
      if ((v30 & 0x80000000) != 0)
      {
        if (v32 != *(v16 + 32))
        {
          v27 = *v27;
          goto LABEL_85;
        }

        if (v32 == -1)
        {
          sub_29A0F26CC();
        }

        v27 = *v27;
        v34 = v27;
        v35 = off_2A14FDD60[0];
      }

      else
      {
        if (v32 != v30)
        {
          goto LABEL_85;
        }

        v34 = (v16 + 24);
        v35 = off_2A14FDD60[0];
        v33 = v30;
      }

      if (!memcmp(v34, v35, v33))
      {
        v44 = sub_29B201DD0(a2, 6u);
        sub_29B201C4C(&v44, "\n");
        goto LABEL_93;
      }

LABEL_85:
      v44 = sub_29B201F00(a2, v27);
      v42[0] = v16;
      v42[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B20A560(v42, &v44, v40);
      if (v15)
      {
        sub_29A014BEC(v15);
LABEL_94:
        sub_29A014BEC(v15);
        goto LABEL_95;
      }

LABEL_93:
      if (!v15)
      {
        goto LABEL_95;
      }

      goto LABEL_94;
    }

    __dst.__r_.__value_.__r.__words[0] = sub_29B201DD0(a2, 5u);
    sub_29A008E78(&v44, off_2A14FDC68[0]);
    v36 = sub_29A8877BC((v16 + 160), &v44);
    if (v36)
    {
      v37 = (v36 + 5);
    }

    else
    {
      v37 = sub_29B1F31FC();
    }

    if (v37[23] < 0)
    {
      v37 = *v37;
    }

    sub_29B201C4C(&__dst, v37);
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    v26 = v44;
LABEL_98:
    operator delete(v26);
    if (v15)
    {
      goto LABEL_94;
    }

LABEL_95:
    v13 += 2;
  }

  while (v13 != v14);
  v38 = v53[0];
LABEL_101:
  sub_29A019EE8(&v52, v38);
  return sub_29B20BAD8(v54);
}

uint64_t sub_29B20AC0C(uint64_t *a1, char **a2, char *a3)
{
  v12[19] = *MEMORY[0x29EDCA608];
  sub_29B206794(a2, 1, &__p);
  sub_29A90B4C8(&v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *a1;
  v6 = a1[1];
  v8[0] = v5;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B20A458(v8, &v10, a3);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v10 = *MEMORY[0x29EDC9520];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x29EDC9520] + 24);
  MEMORY[0x29C2C1D20](&v11);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](v12);
}

void sub_29B20AD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
{
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  sub_29A33F0A8(&a18);
  _Unwind_Resume(a1);
}

void sub_29B20ADC4(std::exception *a1)
{
  sub_29AAD6C00(a1);

  operator delete(v1);
}

void sub_29B20ADEC(std::exception *a1)
{
  sub_29AAD6C00(a1);

  operator delete(v1);
}

BOOL sub_29B20AE14(uint64_t *a1, uint64_t *a2, _BYTE *a3)
{
  sub_29B201B00(a1, &v55);
  *v50 = v55;
  *__p = v56;
  if (sub_29B203B38(v50, __p))
  {
    while (1)
    {
      v6 = nullsub_1(v50);
      v7 = sub_29B20179C(v6);
      sub_29A008E78(&__s1, v7);
      v8 = strlen(off_2A14FDC38[0]);
      if ((SBYTE7(v49) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v8 != SBYTE7(v49) || memcmp(&__s1, off_2A14FDC38[0], v8))
      {
        goto LABEL_11;
      }

LABEL_15:
      sub_29B203B74(v50);
      if (!sub_29B203B38(v50, __p))
      {
        goto LABEL_16;
      }
    }

    if (v8 == *(&__s1 + 1))
    {
      if (v8 == -1)
      {
        sub_29A0F26CC();
      }

      v9 = __s1;
      v10 = memcmp(__s1, off_2A14FDC38[0], v8);
      operator delete(v9);
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      operator delete(__s1);
    }

LABEL_11:
    v11 = *a2;
    v12 = sub_29B20179C(v6);
    sub_29A008E78(&__s1, v12);
    v13 = sub_29B2017BC(v6);
    sub_29A008E78(&v54, v13);
    sub_29B1D9334(v11, &__s1, &v54);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v49) < 0)
    {
      operator delete(__s1);
    }

    goto LABEL_15;
  }

LABEL_16:
  sub_29B201A88(a1, &v55);
  v52 = v56;
  v53 = v55;
  for (result = sub_29B203B38(&v53, &v52); result; result = sub_29B203B38(&v53, &v52))
  {
    v15 = nullsub_1(&v53);
    v16 = sub_29B20179C(v15);
    sub_29A008E78(&v54, v16);
    v50[0] = 0;
    v50[1] = 0;
    v51 = 0;
    sub_29B201B00(v15, &__s1);
    v46 = v49;
    for (i = __s1; sub_29B203B38(&i, &v46); sub_29B203B74(&i))
    {
      v17 = nullsub_1(&i);
      v18 = sub_29B20179C(v17);
      sub_29A008E78(__p, v18);
      v19 = strlen(off_2A14FDC38[0]);
      if ((v45 & 0x8000000000000000) != 0)
      {
        if (v19 == __p[1])
        {
          if (v19 == -1)
          {
            sub_29A0F26CC();
          }

          v20 = __p[0];
          v21 = memcmp(__p[0], off_2A14FDC38[0], v19);
          operator delete(v20);
          if (!v21)
          {
LABEL_29:
            v22 = sub_29B2017BC(v17);
            MEMORY[0x29C2C1A60](v50, v22);
            break;
          }
        }

        else
        {
          operator delete(__p[0]);
        }
      }

      else if (v19 == v45 && !memcmp(__p, off_2A14FDC38[0], v19))
      {
        goto LABEL_29;
      }
    }

    v23 = sub_29A8877BC((*a2 + 96), v50);
    if (v23)
    {
      v24 = v23[5];
      v25 = v23[6];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v24)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = *a2;
    if (SHIBYTE(v51) < 0)
    {
      sub_29A008D14(__dst, v50[0], v50[1]);
    }

    else
    {
      *__dst = *v50;
      v43 = v51;
    }

    sub_29B1D94C4(v26, &v54.__r_.__value_.__l.__data_, __dst, __p);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__dst[0]);
    }

    v27 = __p[1];
    v41[0] = __p[0];
    v41[1] = __p[1];
    if (__p[1])
    {
      atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
    }

    sub_29B20AE14(v15, v41, a3);
    if (v27)
    {
      sub_29A014BEC(v27);
    }

    if (a3)
    {
      size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v54.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        if (*a3 == 1 && sub_29B201B20(v15) == 5)
        {
          v29 = *a2;
          v39 = __p[0];
          v40 = __p[1];
          if (__p[1])
          {
            atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
          }

          sub_29A008E78(&__s1, off_2A14FDD00[0]);
          sub_29B1D9990(v29, &v39, &__s1, &i);
          v30 = i;
          i = 0uLL;
          v31 = __p[1];
          *__p = v30;
          if (v31)
          {
            sub_29A014BEC(v31);
            if (*(&i + 1))
            {
              sub_29A014BEC(*(&i + 1));
            }
          }

          if (SBYTE7(v49) < 0)
          {
            operator delete(__s1);
          }

          if (v40)
          {
            sub_29A014BEC(v40);
          }

          v32 = __p[0];
          v33 = sub_29B2017BC(v15);
          sub_29A008E78(&__s1, v33);
          sub_29B20B9C4(v32, &__s1);
          if (SBYTE7(v49) < 0)
          {
            operator delete(__s1);
          }
        }

        else if (a3[1] == 1 && sub_29B201B20(v15) == 6)
        {
          v34 = *a2;
          v37 = __p[0];
          v38 = __p[1];
          if (__p[1])
          {
            atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
          }

          sub_29A008E78(&__s1, off_2A14FDD60[0]);
          sub_29B1D9990(v34, &v37, &__s1, &i);
          v35 = i;
          i = 0uLL;
          v36 = __p[1];
          *__p = v35;
          if (v36)
          {
            sub_29A014BEC(v36);
            if (*(&i + 1))
            {
              sub_29A014BEC(*(&i + 1));
            }
          }

          if (SBYTE7(v49) < 0)
          {
            operator delete(__s1);
          }

          if (v38)
          {
            sub_29A014BEC(v38);
          }
        }
      }
    }

    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }

LABEL_51:
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    sub_29B203B64(&v53);
  }

  return result;
}

void sub_29B20B360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a23)
  {
    sub_29A014BEC(a23);
  }

  if (v42)
  {
    sub_29A014BEC(v42);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v43 - 129) < 0)
  {
    operator delete(*(v43 - 152));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B20B494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_29A0DDCB0();
  }

  return (*(*v5 + 48))(v5, a2, a3, a4, &v7);
}

void sub_29B20B4E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 5)
  {
    sub_29B20B628(a1);
    if (a4 >> 59)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A15A71C(a1, v11);
    v12 = sub_29AE13CD8(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 5)
  {
    sub_29B207C8C(&v17, a2, a2 + v13, v8);
    v12 = sub_29AE13CD8(a1, a2 + v13, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v12;
    return;
  }

  sub_29B207C8C(&v18, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v16 -= 4;
      v19 = v16;
      sub_29A012C90(&v19);
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
}

void sub_29B20B628(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 4;
        v5 = v3;
        sub_29A012C90(&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

unint64_t sub_29B20B69C(void *a1, unint64_t a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = ((v6 - *a1) >> 5) + 1;
    if (!(v12 >> 59))
    {
      v13 = a2 - v11;
      v14 = v7 - v11;
      v15 = v14 >> 4;
      if (v14 >> 4 <= v12)
      {
        v15 = ((v6 - *a1) >> 5) + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v16 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v17 = v13 >> 5;
      v24 = a1;
      if (v16)
      {
        v18 = sub_29A10CB10(a1, v16);
      }

      else
      {
        v18 = 0;
      }

      v20 = v18;
      v21 = &v18[32 * v17];
      v22 = v21;
      v23 = &v18[32 * v16];
      sub_29B20B800(&v20);
    }

    sub_29A00C9A4();
  }

  if (a2 == v6)
  {
    sub_29AD9637C(a1);
  }

  sub_29B2079DC(a1, a2, v6, a2 + 32);
  v8 = a1[1] <= a3 || a2 > a3;
  v9 = 32;
  if (v8)
  {
    v9 = 0;
  }

  v10 = a3 + v9;
  if (a2 != a3 + v9)
  {
    sub_29A095E3C(a2, *v10, *(v10 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 8) - *v10) >> 3));
  }

  *(a2 + 24) = *(v10 + 24);
  return a2;
}

void sub_29B20B7EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD9669C(va);
  _Unwind_Resume(a1);
}

void sub_29B20B800(void *a1)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    v3 = a1[1];
    if (v3 <= *a1)
    {
      if (v2 == *a1)
      {
        v6 = 1;
      }

      else
      {
        v6 = (v2 - *a1) >> 4;
      }

      v7 = a1[4];
      v14 = a1[4];
      *&v12 = sub_29A10CB10(v7, v6);
      *(&v12 + 1) = v12 + 32 * (v6 >> 2);
      *&v13 = *(&v12 + 1);
      *(&v13 + 1) = v12 + 32 * v8;
      sub_29B20B930(&v12, a1[1], (a1[2] - a1[1]) >> 5);
      v9 = v13;
      v10 = *a1;
      v11 = *(a1 + 1);
      *a1 = v12;
      *(a1 + 1) = v9;
      v12 = v10;
      v13 = v11;
      sub_29AD9669C(&v12);
      v2 = a1[2];
    }

    else
    {
      v4 = (((v3 - *a1) >> 5) + 1 + ((((v3 - *a1) >> 5) + 1) >> 63)) >> 1;
      sub_29B207C8C(&v12, v3, v2, v3 - 32 * v4);
      v2 = v5;
      a1[1] -= 32 * v4;
      a1[2] = v5;
    }
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

uint64_t sub_29B20B930(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  *(result + 16) = v3;
  return result;
}

void sub_29B20B9C4(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDC68[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B20BA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B20BA40(uint64_t a1, uint64_t a2)
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

uint64_t sub_29B20BAD8(uint64_t a1)
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

void *sub_29B20BB60(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A20C8E68;
  result[1] = v3;
  return result;
}

uint64_t sub_29B20BBA8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A20C8E68;
  a2[1] = v2;
  return result;
}

uint64_t sub_29B20BBDC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20C8ED8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29B20BC28(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v6 = *a2;
  v7 = v2;
  *a2 = 0;
  a2[1] = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29B20BD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  *(v18 - 56) = v17;
  sub_29AAC9380((v18 - 56));
  *(v18 - 56) = &a12;
  sub_29A012C90((v18 - 56));
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(a1);
}

char *sub_29B20BD4C(char *__dst, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  *(__dst + 6) = a4;
  if (sub_29B247ADC() != a4)
  {
    v9 = *(__dst + 6);
    if (v9 != sub_29B247C28())
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_29A008E78(&v12, "Color space transform can only be a color3 or color4.");
      sub_29AAD6B14(exception, &v12);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }
  }

  return __dst;
}

void sub_29B20BE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      if (*(v15 + 47) < 0)
      {
        operator delete(*(v15 + 24));
      }

      if (*(v15 + 23) < 0)
      {
        operator delete(*v15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void *sub_29B20BEDC(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A20C8F20;
  return result;
}

void sub_29B20BF00(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

BOOL sub_29B20BF2C(void *a1)
{
  if (!a1[1])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v4, "No library loaded for color management system");
    sub_29AAD6B14(exception, &v4);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  (*(*a1 + 32))(&v4);
  v1 = v4;
  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }

  return v1 != 0;
}

void sub_29B20C00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B20C044(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, void *a5@<X4>, std::string::size_type *a6@<X8>)
{
  (*(*a1 + 32))(&v29);
  if (!v29)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v12 = std::string::append(&v24, "', '");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v16 = *(a3 + 24);
    v15 = a3 + 24;
    v14 = v16;
    v17 = *(v15 + 23);
    if (v17 >= 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = v14;
    }

    if (v17 >= 0)
    {
      v19 = *(v15 + 23);
    }

    else
    {
      v19 = *(v15 + 8);
    }

    v20 = std::string::append(&v25, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v26, "').");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v28 = v22->__r_.__value_.__r.__words[2];
    v27 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v27);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B23CB10(a2, a4, v29, a5, a6);
  if (v30)
  {
    sub_29A014BEC(v30);
  }
}

void sub_29B20C1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v36 & 1) == 0)
    {
LABEL_12:
      v39 = *(v37 - 56);
      if (v39)
      {
        sub_29A014BEC(v39);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v35);
  goto LABEL_12;
}

void sub_29B20C28C(std::exception *a1)
{
  sub_29AAD6C00(a1);

  operator delete(v1);
}

void *sub_29B20C2B4@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  sub_29B20C320(v4, a1);

  return sub_29B20CC50(a2, v4);
}

void *sub_29B20C320(void *a1, __int128 *a2)
{
  v4 = sub_29B20BEDC(a1);
  *v4 = &unk_2A20C8F90;
  v5 = v4 + 3;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5[2] = *(a2 + 2);
    *v5 = v6;
  }

  return a1;
}

void sub_29B20C38C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A20C8F20;
  v3 = v1[2];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B20C3C0()
{
  if ((atomic_load_explicit(&qword_2A1787128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787128))
  {
    sub_29A008E78(qword_2A1787110, "default_cms");
    __cxa_guard_release(&qword_2A1787128);
  }

  return qword_2A1787110;
}

void sub_29B20C440(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(__dst, "No library loaded for color management system");
    sub_29AAD6B14(exception, __dst);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B20C92C();
  v6 = sub_29A8877BC(qword_2A1787130, a2);
  v7 = a2;
  if (v6)
  {
    sub_29B20C92C();
    v8 = sub_29A8877BC(qword_2A1787130, a2);
    if (!v8)
    {
      sub_29A0F26E4("unordered_map::at: key not found");
    }

    v7 = v8 + 5;
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(__dst, *v7, v7[1]);
  }

  else
  {
    *__dst = *v7;
    v44 = v7[2];
  }

  sub_29B20C92C();
  v9 = (a2 + 24);
  if (sub_29A8877BC(qword_2A1787130, (a2 + 24)))
  {
    sub_29B20C92C();
    v10 = sub_29A8877BC(qword_2A1787130, (a2 + 24));
    if (!v10)
    {
      sub_29A0F26E4("unordered_map::at: key not found");
    }

    v9 = v10 + 5;
  }

  if (*(v9 + 23) < 0)
  {
    sub_29A008D14(v41, *v9, v9[1]);
  }

  else
  {
    *v41 = *v9;
    v42 = v9[2];
  }

  if (SHIBYTE(v44) >= 0)
  {
    v11 = HIBYTE(v44);
  }

  else
  {
    v11 = __dst[1];
  }

  sub_29A022DE0(&v38, v11 + 4);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v38;
  }

  else
  {
    v12 = v38.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    if (SHIBYTE(v44) >= 0)
    {
      v13 = __dst;
    }

    else
    {
      v13 = __dst[0];
    }

    memmove(v12, v13, v11);
  }

  strcpy(v12 + v11, "_to_");
  if (SHIBYTE(v42) >= 0)
  {
    v14 = v41;
  }

  else
  {
    v14 = v41[0];
  }

  if (SHIBYTE(v42) >= 0)
  {
    v15 = HIBYTE(v42);
  }

  else
  {
    v15 = v41[1];
  }

  v16 = std::string::append(&v38, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v40 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v36 = a3;
  sub_29B1C85B0(*(a1 + 8), __p, &v38);
  size = v38.__r_.__value_.__l.__size_;
  v18 = v38.__r_.__value_.__r.__words[0];
  if (v38.__r_.__value_.__r.__words[0] == v38.__r_.__value_.__l.__size_)
  {
    goto LABEL_60;
  }

  do
  {
    v21 = *v18;
    v20 = v18[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = sub_29B1F31FC();
    sub_29AAD856C(v21, v22, v37);
    v24 = v37[0];
    v23 = v37[1];
    while (v24 != v23)
    {
      v25 = *v24;
      v26 = v24[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = (*(*v25 + 64))(v25);
      v28 = *(a2 + 48);
      v29 = *(v27 + 23);
      if (v29 >= 0)
      {
        v30 = *(v27 + 23);
      }

      else
      {
        v30 = v27[1];
      }

      v31 = *(v28 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v28 + 8);
      }

      if (v30 != v31)
      {
        v34 = 0;
        if (!v26)
        {
          goto LABEL_55;
        }

LABEL_54:
        sub_29A014BEC(v26);
        goto LABEL_55;
      }

      if (v29 < 0)
      {
        v27 = *v27;
      }

      if (v32 >= 0)
      {
        v33 = *(a2 + 48);
      }

      else
      {
        v33 = *v28;
      }

      v34 = memcmp(v27, v33, v30) == 0;
      if (v26)
      {
        goto LABEL_54;
      }

LABEL_55:
      if (v34)
      {
        v45[0] = v37;
        sub_29A0176E4(v45);
        *v36 = v21;
        v36[1] = v20;
        v37[0] = &v38;
        sub_29A0176E4(v37);
        goto LABEL_62;
      }

      v24 += 2;
    }

    v45[0] = v37;
    sub_29A0176E4(v45);
    if (v20)
    {
      sub_29A014BEC(v20);
    }

    v18 += 2;
  }

  while (v18 != size);
LABEL_60:
  v37[0] = &v38;
  sub_29A0176E4(v37);
  *v36 = 0;
  v36[1] = 0;
LABEL_62:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29B20C840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

void sub_29B20C92C()
{
  v4[6] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787158))
  {
    sub_29B20CADC(v1, "gamma18", "g18_rec709");
    sub_29B20CADC(v2, "gamma22", "g22_rec709");
    sub_29B20CB30(v3, "gamma24", "rec709_display");
    sub_29B20CB84(v4, "lin_ap1", "acescg");
    sub_29AB974A4(&unk_2A1787130, v1, 4);
    for (i = 18; i != -6; i -= 6)
    {
      sub_29A0D2850(&v1[i]);
    }

    __cxa_guard_release(&qword_2A1787158);
  }
}

void sub_29B20CA58(_Unwind_Exception *a1)
{
  v3 = v1 + 144;
  v4 = -192;
  do
  {
    v3 = sub_29A0D2850(v3) - 48;
    v4 += 48;
  }

  while (v4);
  __cxa_guard_abort(&qword_2A1787158);
  _Unwind_Resume(a1);
}

void sub_29B20CAB4(uint64_t a1)
{
  v1 = sub_29B20CBD8(a1);

  operator delete(v1);
}

void *sub_29B20CADC(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B20CB14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B20CB30(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B20CB68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B20CB84(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B20CBBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B20CBD8(uint64_t a1)
{
  *a1 = &unk_2A20C8F90;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  *a1 = &unk_2A20C8F20;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void *sub_29B20CC50(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20C8FE0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B20CCA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2D1B0C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B20CCC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B20CCEC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B20CD1C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20C9030))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29B20CD5C(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B20D560((a1 + 2));
  a1[19] = 0;
  a1[23] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[22] = (a1 + 23);
  a1[24] = 0;
  *(a1 + 25) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 58) = 1065353216;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 68) = 1065353216;
  *(a1 + 35) = 0u;
  *(a1 + 37) = 0u;
  *(a1 + 78) = 1065353216;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 88) = 1065353216;
  a1[54] = 0;
  *(a1 + 45) = 0u;
  *(a1 + 47) = 0u;
  *(a1 + 49) = 0u;
  v4 = *a1;
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v9, "GenContext must have a valid shader generator");
    sub_29AAD6B14(exception, &v9);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  *(&v9 + 1) = 0;
  v10 = 0;
  *&v9 = &v9 + 8;
  v5 = *(v4 + 8);
  if (&v9 != (v5 + 72))
  {
    sub_29B20D9A4(&v9, *(v5 + 72), (v5 + 80));
    v4 = *a1;
  }

  v6 = *(v4 + 112);
  if (v6)
  {
    while ((*(v6 + 63) & 0x8000000000000000) != 0)
    {
      if (v6[6])
      {
        goto LABEL_11;
      }

LABEL_12:
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    if (!*(v6 + 63))
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_29A095658(&v9, v6 + 5, (v6 + 5));
    goto LABEL_12;
  }

LABEL_13:
  sub_29A347A54(a1 + 22, v9, &v9 + 1);
  sub_29B20DB80((a1 + 51));
  sub_29A019EE8(&v9, *(&v9 + 1));
  return a1;
}

void sub_29B20CF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a10 & 1) == 0)
    {
LABEL_6:
      sub_29AE1467C((v16 + 51));
      __p = v16 + 48;
      sub_29A0176E4(&__p);
      v25 = *v22;
      if (*v22)
      {
        v16[46] = v25;
        operator delete(v25);
      }

      sub_29AE14178((v16 + 40));
      sub_29AE14178(v20);
      sub_29AE14060(v19);
      sub_29AD97000(v18);
      sub_29A019EE8(v17, *v21);
      sub_29AAC9380(&__p);
      sub_29AE144D4((v16 + 2));
      v26 = v16[1];
      if (v26)
      {
        sub_29A014BEC(v26);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!a10)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void sub_29B20D024(uint64_t a1, __int128 *a2, const void **a3)
{
  v8 = a2;
  v4 = sub_29B20DC04(a1 + 200, a2, &unk_29B768532, &v8);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

const void **sub_29B20D090@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = sub_29A8877BC((a1 + 200), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

std::string *sub_29B20D0DC(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = sub_29B20DF14(a1 + 280, &v6, &unk_29B768532, &v7);
  return std::string::operator=(v4 + 1, a3);
}

std::string *sub_29B20D164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  result = sub_29B20D628((a1 + 280), &v5);
  if (result)
  {
    return std::string::operator=(a3, result + 1);
  }

  return result;
}

std::string *sub_29B20D1CC(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = sub_29B20E210(a1 + 320, &v6, &unk_29B768532, &v7);
  return std::string::operator=(v4 + 1, a3);
}

std::string *sub_29B20D254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  result = sub_29B20D628((a1 + 320), &v5);
  if (result)
  {
    return std::string::operator=(a3, result + 1);
  }

  return result;
}

uint64_t *sub_29B20D2BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  a1[1] = a3;
  a1[2] = 0;
  if (a4)
  {
    v9 = a3;
    v6 = sub_29B20D628((a4 + 88), &v9);
    if (v6)
    {
      v7 = v6[3];
    }

    else
    {
      v7 = 0;
    }

    a1[2] = v7;
    sub_29B20D328(*a1, a1[1], a2);
  }

  return a1;
}

uint64_t *sub_29B20D328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    return sub_29B20D96C((a1 + 88), &v5);
  }

  v6 = &v5;
  result = sub_29B20D714(a1 + 88, &v5, &unk_29B768532, &v6);
  result[3] = a3;
  return result;
}

uint64_t *sub_29B20D394(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  a1[1] = a3;
  a1[2] = 0;
  if (a4)
  {
    v13 = a2;
    v5 = sub_29B20D628((a4 + 88), &v13);
    if (v5)
    {
      v6 = v5[3];
      if (v6)
      {
        v7 = *a1;
        v13 = a1[1];
        v8 = sub_29B20D628((v7 + 88), &v13);
        if (v8)
        {
          v9 = v8[3];
        }

        else
        {
          v9 = 0;
        }

        a1[2] = v9;
        v10 = *a1;
        v12 = a1[1];
        v13 = &v12;
        sub_29B20D714(v10 + 88, &v12, &unk_29B768532, &v13)[3] = v6;
      }
    }
  }

  return a1;
}

uint64_t *sub_29B20D444(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_29B20D328(v2, a1[1], a1[2]);
  }

  return a1;
}

uint64_t *sub_29B20D480(uint64_t *a1, std::string *__str, uint64_t a3)
{
  *a1 = a3;
  if (*(a3 + 127) < 0)
  {
    sub_29A008D14(a1 + 8, *(a3 + 104), *(a3 + 112));
    a3 = *a1;
  }

  else
  {
    v5 = *(a3 + 104);
    a1[3] = *(a3 + 120);
    *(a1 + 1) = v5;
  }

  std::string::operator=((a3 + 104), __str);
  return a1;
}

void sub_29B20D4F0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29B20D510(std::string *__str)
{
  p_size = &__str->__r_.__value_.__l.__size_;
  std::string::operator=((__str->__r_.__value_.__r.__words[0] + 104), &__str->__r_.__value_.__r.__words[1]);
  if (__str[1].__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(*p_size);
  }

  return __str;
}

uint64_t sub_29B20D560(uint64_t a1)
{
  *a1 = &unk_2A20C9058;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  sub_29AE1D8C4((a1 + 72), "libraries");
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  *(a1 + 112) = 0;
  *(a1 + 119) = 0;
  *(a1 + 124) = 3;
  *(a1 + 128) = 0x1000000;
  *(a1 + 132) = 1;
  return a1;
}

void sub_29B20D5FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B20D628(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_29B20D714(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v14 >= v10)
            {
              v14 %= v10;
            }
          }

          else
          {
            v14 &= v10 - 1;
          }

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v9;
  i[2] = **a4;
  i[3] = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *i = *v22;
LABEL_38:
    *v22 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v21 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

uint64_t *sub_29B20D96C(void *a1, void *a2)
{
  result = sub_29AC246C0(a1, a2);
  if (result)
  {
    sub_29A113408(a1, result);
    return 1;
  }

  return result;
}

uint64_t **sub_29B20D9A4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = sub_29A0286E4(v5, &v18, v17 + 4);
          sub_29A00B204(v5, v18, v10, v17);
          v17 = v16;
          if (v16)
          {
            v16 = sub_29A028760(v16);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v17;
          if (v17)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_29AAA0158(&v15);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29B20DB28(v5, (a2 + 4));
      v13 = a2[1];
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
          v14 = a2[2];
          v12 = *v14 == a2;
          a2 = v14;
        }

        while (!v12);
      }

      a2 = v14;
    }

    while (v14 != a3);
  }

  return result;
}

const void **sub_29B20DB28(uint64_t **a1, uint64_t a2)
{
  sub_29A0956D8(a1, a2, &v6);
  v3 = sub_29A0286E4(a1, &v5, v6 + 4);
  sub_29A00B204(a1, v5, v3, v6);
  return v6;
}

uint64_t sub_29B20DB80(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

const void **sub_29B20DC04(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B20DE70(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B20DE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B20DE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

void *sub_29B20DF14(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v14 >= v10)
            {
              v14 %= v10;
            }
          }

          else
          {
            v14 &= v10 - 1;
          }

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v9;
  i[2] = **a4;
  i[3] = 0;
  i[4] = 0;
  i[5] = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *i = *v22;
LABEL_38:
    *v22 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v21 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

uint64_t *sub_29B20E18C(void *a1, void *a2)
{
  result = sub_29AC246C0(a1, a2);
  if (result)
  {
    sub_29B20E1C4(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29B20E1C4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_29AE14114(&v6, v3);
  }

  return v2;
}

void *sub_29B20E210(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v14 >= v10)
            {
              v14 %= v10;
            }
          }

          else
          {
            v14 &= v10 - 1;
          }

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v9;
  i[2] = **a4;
  i[3] = 0;
  i[4] = 0;
  i[5] = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *i = *v22;
LABEL_38:
    *v22 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v21 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void *sub_29B20E488()
{
  if ((atomic_load_explicit(&qword_2A1787178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787178))
  {
    sub_29A008E78(qword_2A1787160, "$worldMatrix");
    __cxa_guard_release(&qword_2A1787178);
  }

  return qword_2A1787160;
}

void *sub_29B20E508()
{
  if ((atomic_load_explicit(&qword_2A1787198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787198))
  {
    sub_29A008E78(qword_2A1787180, "$worldInverseMatrix");
    __cxa_guard_release(&qword_2A1787198);
  }

  return qword_2A1787180;
}

void *sub_29B20E588()
{
  if ((atomic_load_explicit(&qword_2A17871B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17871B8))
  {
    sub_29A008E78(qword_2A17871A0, "$worldTransposeMatrix");
    __cxa_guard_release(&qword_2A17871B8);
  }

  return qword_2A17871A0;
}

void *sub_29B20E608()
{
  if ((atomic_load_explicit(&qword_2A17871D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17871D8))
  {
    sub_29A008E78(qword_2A17871C0, "$worldInverseTransposeMatrix");
    __cxa_guard_release(&qword_2A17871D8);
  }

  return qword_2A17871C0;
}

uint64_t *sub_29B20E688()
{
  if ((atomic_load_explicit(&qword_2A1787200, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D1B38();
  }

  return &qword_2A1787208;
}

uint64_t sub_29B20E6C0(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v128 = *a2;
  v129 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B23091C(a1, &v128);
  if (v129)
  {
    sub_29A014BEC(v129);
  }

  *a1 = &unk_2A20C9078;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1065353216;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1065353216;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 1065353216;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 1065353216;
  *(a1 + 392) = 2;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 1065353216;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 1065353216;
  *(a1 + 520) = 3;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 1065353216;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 1065353216;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 1065353216;
  *(a1 + 648) = 4;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 1065353216;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 1065353216;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 1065353216;
  v4 = qword_2A14FE320;
  sub_29A008E78(&__p, off_2A14FE188[0]);
  p_p = &__p;
  v5 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v5 + 40, v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = qword_2A14FE328;
  sub_29A008E78(&__p, off_2A14FE190[0]);
  p_p = &__p;
  v7 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v7 + 40, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = qword_2A14FE330;
  sub_29A008E78(&__p, off_2A14FE198[0]);
  p_p = &__p;
  v9 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v9 + 40, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = qword_2A14FE338;
  sub_29A008E78(&__p, off_2A14FE1A0[0]);
  p_p = &__p;
  v11 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v11 + 40, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = qword_2A14FE340;
  sub_29A008E78(&__p, off_2A14FE1A8[0]);
  p_p = &__p;
  v13 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v13 + 40, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = qword_2A14FE348;
  sub_29A008E78(&__p, off_2A14FE1B0[0]);
  p_p = &__p;
  v15 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v15 + 40, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = qword_2A14FE350;
  sub_29A008E78(&__p, off_2A14FE1B8[0]);
  p_p = &__p;
  v17 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v17 + 40, v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = qword_2A14FE358;
  sub_29A008E78(&__p, off_2A14FE1C0[0]);
  p_p = &__p;
  v19 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v19 + 40, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = qword_2A14FE360;
  sub_29A008E78(&__p, off_2A14FE1C8[0]);
  p_p = &__p;
  v21 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v21 + 40, v20);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = qword_2A14FE368;
  sub_29A008E78(&__p, off_2A14FE1D0[0]);
  p_p = &__p;
  v23 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v23 + 40, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v24 = qword_2A14FE370;
  sub_29A008E78(&__p, off_2A14FE1D8[0]);
  p_p = &__p;
  v25 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v25 + 40, v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v26 = qword_2A14FE378;
  sub_29A008E78(&__p, off_2A14FE1E0[0]);
  p_p = &__p;
  v27 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v27 + 40, v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v28 = qword_2A14FE380;
  sub_29A008E78(&__p, off_2A14FE1E8[0]);
  p_p = &__p;
  v29 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v29 + 40, v28);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v30 = qword_2A14FE388;
  sub_29A008E78(&__p, off_2A14FE1F0[0]);
  p_p = &__p;
  v31 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v31 + 40, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v32 = qword_2A14FE390;
  sub_29A008E78(&__p, off_2A14FE1F8[0]);
  p_p = &__p;
  v33 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v33 + 40, v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v34 = qword_2A14FE398;
  sub_29A008E78(&__p, off_2A14FE200[0]);
  p_p = &__p;
  v35 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v35 + 40, v34);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v36 = qword_2A14FE3A0;
  sub_29A008E78(&__p, off_2A14FE208[0]);
  p_p = &__p;
  v37 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v37 + 40, v36);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v38 = qword_2A14FE3A8;
  sub_29B20E488();
  __p.__r_.__value_.__r.__words[0] = qword_2A1787160;
  v39 = sub_29B1E4F5C(a1 + 96, qword_2A1787160, &unk_29B768580, &__p);
  MEMORY[0x29C2C1A60](v39 + 5, v38);
  v40 = qword_2A14FE3B0;
  sub_29B20E508();
  __p.__r_.__value_.__r.__words[0] = qword_2A1787180;
  v41 = sub_29B1E4F5C(a1 + 96, qword_2A1787180, &unk_29B768580, &__p);
  MEMORY[0x29C2C1A60](v41 + 5, v40);
  v42 = qword_2A14FE3B8;
  sub_29B20E588();
  __p.__r_.__value_.__r.__words[0] = qword_2A17871A0;
  v43 = sub_29B1E4F5C(a1 + 96, qword_2A17871A0, &unk_29B768580, &__p);
  MEMORY[0x29C2C1A60](v43 + 5, v42);
  v44 = qword_2A14FE3C0;
  sub_29B20E608();
  __p.__r_.__value_.__r.__words[0] = qword_2A17871C0;
  v45 = sub_29B1E4F5C(a1 + 96, qword_2A17871C0, &unk_29B768580, &__p);
  MEMORY[0x29C2C1A60](v45 + 5, v44);
  v46 = qword_2A14FE3C8;
  sub_29A008E78(&__p, qword_2A14FE210);
  p_p = &__p;
  v47 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v47 + 40, v46);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v48 = qword_2A14FE3D0;
  sub_29A008E78(&__p, qword_2A14FE218);
  p_p = &__p;
  v49 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v49 + 40, v48);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v50 = qword_2A14FE3D8;
  sub_29A008E78(&__p, qword_2A14FE220);
  p_p = &__p;
  v51 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v51 + 40, v50);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v52 = qword_2A14FE3E0;
  sub_29A008E78(&__p, qword_2A14FE228);
  p_p = &__p;
  v53 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v53 + 40, v52);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v54 = qword_2A14FE3E8;
  sub_29A008E78(&__p, qword_2A14FE230);
  p_p = &__p;
  v55 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v55 + 40, v54);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v56 = qword_2A14FE3F0;
  sub_29A008E78(&__p, qword_2A14FE238);
  p_p = &__p;
  v57 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v57 + 40, v56);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v58 = qword_2A14FE3F8;
  sub_29A008E78(&__p, qword_2A14FE240);
  p_p = &__p;
  v59 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v59 + 40, v58);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v60 = qword_2A14FE400;
  sub_29A008E78(&__p, qword_2A14FE248);
  p_p = &__p;
  v61 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v61 + 40, v60);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v62 = qword_2A14FE408;
  sub_29A008E78(&__p, qword_2A14FE250);
  p_p = &__p;
  v63 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v63 + 40, v62);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v64 = qword_2A14FE410;
  sub_29A008E78(&__p, off_2A14FE258[0]);
  p_p = &__p;
  v65 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v65 + 40, v64);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v66 = qword_2A14FE418;
  sub_29A008E78(&__p, qword_2A14FE260);
  p_p = &__p;
  v67 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v67 + 40, v66);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v68 = qword_2A14FE420;
  sub_29A008E78(&__p, off_2A14FE268[0]);
  p_p = &__p;
  v69 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v69 + 40, v68);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v70 = qword_2A14FE428;
  sub_29A008E78(&__p, qword_2A14FE270);
  p_p = &__p;
  v71 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v71 + 40, v70);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v72 = qword_2A14FE430;
  sub_29A008E78(&__p, off_2A14FE278[0]);
  p_p = &__p;
  v73 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v73 + 40, v72);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v74 = qword_2A14FE438;
  sub_29A008E78(&__p, qword_2A14FE280);
  p_p = &__p;
  v75 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v75 + 40, v74);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v76 = qword_2A14FE440;
  sub_29A008E78(&__p, off_2A14FE288[0]);
  p_p = &__p;
  v77 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v77 + 40, v76);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v78 = qword_2A14FE448;
  sub_29A008E78(&__p, off_2A14FE290[0]);
  p_p = &__p;
  v79 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v79 + 40, v78);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v80 = qword_2A14FE450;
  sub_29A008E78(&__p, off_2A14FE298[0]);
  p_p = &__p;
  v81 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v81 + 40, v80);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v82 = qword_2A14FE458;
  sub_29A008E78(&__p, qword_2A14FE2A0);
  p_p = &__p;
  v83 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v83 + 40, v82);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v84 = qword_2A14FE460;
  sub_29A008E78(&__p, off_2A14FE2A8[0]);
  p_p = &__p;
  v85 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v85 + 40, v84);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v86 = qword_2A14FE468;
  sub_29A008E78(&__p, off_2A14FE2B0[0]);
  p_p = &__p;
  v87 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v87 + 40, v86);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v88 = qword_2A14FE470;
  sub_29A008E78(&__p, off_2A14FE2B8[0]);
  p_p = &__p;
  v89 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v89 + 40, v88);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v90 = qword_2A14FE478;
  sub_29A008E78(&__p, off_2A14FE2C0[0]);
  p_p = &__p;
  v91 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v91 + 40, v90);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v92 = qword_2A14FE480;
  sub_29A008E78(&__p, qword_2A14FE2C8);
  p_p = &__p;
  v93 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v93 + 40, v92);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v94 = qword_2A14FE490;
  sub_29A008E78(&__p, qword_2A14FE2D8);
  p_p = &__p;
  v95 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v95 + 40, v94);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v96 = qword_2A14FE498;
  sub_29A008E78(&__p, off_2A14FE2E0[0]);
  p_p = &__p;
  v97 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v97 + 40, v96);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v98 = qword_2A14FE4A0;
  sub_29A008E78(&__p, qword_2A14FE2E8);
  p_p = &__p;
  v99 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v99 + 40, v98);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v100 = qword_2A14FE4B8;
  sub_29A008E78(&__p, off_2A14FE300[0]);
  p_p = &__p;
  v101 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v101 + 40, v100);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v102 = qword_2A14FE4C0;
  sub_29A008E78(&__p, off_2A14FE308[0]);
  p_p = &__p;
  v103 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v103 + 40, v102);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v104 = qword_2A14FE4A8;
  sub_29A008E78(&__p, off_2A14FE2F0[0]);
  p_p = &__p;
  v105 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v105 + 40, v104);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v106 = qword_2A14FE4B0;
  sub_29A008E78(&__p, off_2A14FE2F8[0]);
  p_p = &__p;
  v107 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v107 + 40, v106);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v108 = qword_2A14FE4C8;
  sub_29A008E78(&__p, qword_2A14FE310);
  p_p = &__p;
  v109 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v109 + 40, v108);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v110 = qword_2A14FE4D0;
  sub_29A008E78(&__p, off_2A14FE318[0]);
  p_p = &__p;
  v111 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v111 + 40, v110);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v112 = qword_2A14FE488;
  sub_29A008E78(&__p, qword_2A14FE2D0);
  p_p = &__p;
  v113 = sub_29B1D6E60(a1 + 96, &__p.__r_.__value_.__l.__data_, &unk_29B768580, &p_p);
  MEMORY[0x29C2C1A60](v113 + 40, v112);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v114 = sub_29B248158();
  sub_29A008E78(&__p, off_2A14FE558[0]);
  sub_29B20FF9C(a1 + 264, v114, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v115 = sub_29B248158();
  __p.__r_.__value_.__r.__words[0] = sub_29B2470A0();
  sub_29A008E78(&__p.__r_.__value_.__l.__size_, off_2A14FE518[0]);
  sub_29B20FFF8(a1 + 264, v115, &__p);
  if (v127 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__size_);
  }

  v116 = sub_29B248158();
  __p.__r_.__value_.__r.__words[0] = sub_29B2470A0();
  sub_29A008E78(&__p.__r_.__value_.__l.__size_, off_2A14FE520[0]);
  sub_29B20FFF8(a1 + 264, v116, &__p);
  if (v127 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__size_);
  }

  v117 = sub_29B248158();
  __p.__r_.__value_.__r.__words[0] = sub_29B2470A0();
  sub_29A008E78(&__p.__r_.__value_.__l.__size_, off_2A14FE528[0]);
  sub_29B20FFF8(a1 + 264, v117, &__p);
  if (v127 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__size_);
  }

  v118 = sub_29B248158();
  __p.__r_.__value_.__r.__words[0] = sub_29B246C60();
  sub_29A008E78(&__p.__r_.__value_.__l.__size_, off_2A14FE530[0]);
  sub_29B20FFF8(a1 + 264, v118, &__p);
  if (v127 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__size_);
  }

  v119 = sub_29B248158();
  sub_29A008E78(&__p, off_2A14FE560[0]);
  sub_29B20FF9C(a1 + 392, v119, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v120 = sub_29B248158();
  __p.__r_.__value_.__r.__words[0] = sub_29B2470A0();
  sub_29A008E78(&__p.__r_.__value_.__l.__size_, off_2A14FE520[0]);
  sub_29B20FFF8(a1 + 392, v120, &__p);
  if (v127 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__size_);
  }

  v121 = sub_29B248158();
  sub_29A008E78(&__p, off_2A14FE568[0]);
  sub_29B20FF9C(a1 + 520, v121, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v122 = sub_29B248158();
  __p.__r_.__value_.__r.__words[0] = sub_29B2470A0();
  sub_29A008E78(&__p.__r_.__value_.__l.__size_, off_2A14FE520[0]);
  sub_29B20FFF8(a1 + 520, v122, &__p);
  if (v127 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__size_);
  }

  v123 = sub_29B248254();
  __p.__r_.__value_.__r.__words[0] = sub_29B2470A0();
  sub_29A008E78(&__p.__r_.__value_.__l.__size_, off_2A14FE510[0]);
  sub_29B20FFF8(a1 + 648, v123, &__p);
  if (v127 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__size_);
  }

  v124 = sub_29B248254();
  __p.__r_.__value_.__r.__words[0] = sub_29B2470A0();
  sub_29A008E78(&__p.__r_.__value_.__l.__size_, off_2A14FE518[0]);
  sub_29B20FFF8(a1 + 648, v124, &__p);
  if (v127 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__size_);
  }

  return a1;
}

void sub_29B20FD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_29B210054((v20 + 81));
  sub_29B210054((v20 + 65));
  sub_29B210054((v20 + 49));
  sub_29B210054((v20 + 33));
  sub_29B210054(v21);
  sub_29AE1D49C(v20);
  _Unwind_Resume(a1);
}

std::string *sub_29B20FF9C(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = sub_29B212BCC(a1 + 48, &v6, &unk_29B768580, &v7);
  return std::string::operator=(v4 + 1, a3);
}

void *sub_29B20FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = sub_29B212E84(a1 + 8, &v6, &unk_29B768580, &v7);
  return sub_29B212E44((v4 + 3), a3);
}

uint64_t sub_29B210054(uint64_t a1)
{
  sub_29A0EB570(a1 + 88);
  sub_29AE14178(a1 + 48);
  sub_29AE1D50C(a1 + 8);
  return a1;
}

void sub_29B210090(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v222 = *MEMORY[0x29EDCA608];
  v10 = a3[1];
  v214 = *a3;
  v215 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B2374B0(0, a2, &v214, a4, &v216);
  if (v215)
  {
    sub_29A014BEC(v215);
  }

  sub_29B214050(a2, &v216, a5);
  v11 = v216[19];
  v12 = v216[20];
  if (v11 != v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = *v11;
      if ((*(*v11 + 215) & 0x8000000000000000) != 0)
      {
        if (*(v14 + 200))
        {
LABEL_11:
          sub_29B1D87A8(*a3, &__p);
          v15 = *(&__p + 1);
          sub_29B1E9B8C(__p, (v14 + 192), &v220);
          if (v220)
          {
            __p = 0uLL;
            v174.__vftable = 0;
            sub_29B214228(&__p, *(v14 + 240), *(v14 + 248), (*(v14 + 248) - *(v14 + 240)) >> 3);
            v17 = *(&__p + 1);
            v16 = __p;
            if (__p != *(&__p + 1))
            {
              do
              {
                v18 = *v16;
                sub_29B23C524(*v16);
                sub_29B23599C(v216, v18, v220, a4);
                ++v16;
              }

              while (v16 != v17);
              v13 = 1;
              v16 = __p;
            }

            if (v16)
            {
              *(&__p + 1) = v16;
              operator delete(v16);
            }
          }

          if (*(&v220 + 1))
          {
            sub_29A014BEC(*(&v220 + 1));
          }

          if (v15)
          {
            sub_29A014BEC(v15);
          }
        }
      }

      else if (*(*v11 + 215))
      {
        goto LABEL_11;
      }

      if (++v11 == v12)
      {
        if (v13)
        {
          sub_29B2394FC(v216);
        }

        break;
      }
    }
  }

  sub_29A008E78(&__p, off_2A14FE550[0]);
  (*(*a1 + 248))(&v212, a1, &__p, *a5);
  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v19 = v212;
  sub_29A008E78(&__p, off_2A14FE4E0[0]);
  sub_29A008E78(&v220, "i_vs");
  sub_29B240718(v19, &__p, &v220, &v210);
  if (v211)
  {
    sub_29A014BEC(v211);
  }

  if (SHIBYTE(v221) < 0)
  {
    operator delete(v220);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v20 = v212;
  sub_29A008E78(&__p, off_2A14FE4F0[0]);
  sub_29A008E78(&v220, "u_prv");
  sub_29B240640(v20, &__p, &v220, &v208);
  if (v209)
  {
    sub_29A014BEC(v209);
  }

  if (SHIBYTE(v221) < 0)
  {
    operator delete(v220);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v21 = v212;
  sub_29A008E78(&__p, off_2A14FE4F8[0]);
  sub_29A008E78(&v220, "u_pub");
  sub_29B240640(v21, &__p, &v220, &v206);
  if (v207)
  {
    sub_29A014BEC(v207);
  }

  if (SHIBYTE(v221) < 0)
  {
    operator delete(v220);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v22 = v212;
  sub_29A008E78(&__p, off_2A14FE4E0[0]);
  v23 = sub_29B240AA4(v22, &__p);
  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v24 = sub_29B2470A0();
  sub_29A008E78(&__p, off_2A14FE188[0]);
  v204 = 0;
  v205 = 0;
  sub_29B240028(v23, v24, &__p, &v204, 0);
  if (v205)
  {
    sub_29A014BEC(v205);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v25 = v212;
  sub_29A008E78(&__p, off_2A14FE4F0[0]);
  v26 = sub_29B2408C8(v25, &__p);
  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v27 = sub_29B247E64();
  sub_29B20E488();
  v203 = 0;
  v202 = 0;
  sub_29B240028(v26, v27, qword_2A1787160, &v202, 0);
  if (v203)
  {
    sub_29A014BEC(v203);
  }

  v28 = sub_29B247E64();
  sub_29A008E78(&__p, off_2A14FE258[0]);
  v201 = 0;
  v200 = 0;
  sub_29B240028(v26, v28, &__p, &v200, 0);
  if (v201)
  {
    sub_29A014BEC(v201);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&__p, off_2A14FE6F8);
  (*(*a1 + 248))(&v198, a1, &__p, *a5);
  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v29 = v198;
  sub_29A008E78(&__p, off_2A14FE508[0]);
  sub_29A008E78(&v220, "o_ps");
  sub_29B2407F0(v29, &__p, &v220, &v196);
  if (SHIBYTE(v221) < 0)
  {
    operator delete(v220);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v30 = v198;
  sub_29A008E78(&__p, off_2A14FE4F0[0]);
  sub_29A008E78(&v220, "u_prv");
  sub_29B240640(v30, &__p, &v220, &v194);
  if (SHIBYTE(v221) < 0)
  {
    operator delete(v220);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v31 = v198;
  sub_29A008E78(&__p, off_2A14FE4F8[0]);
  sub_29A008E78(&v220, "u_pub");
  sub_29B240640(v31, &__p, &v220, &v192);
  if (SHIBYTE(v221) < 0)
  {
    operator delete(v220);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v32 = v198;
  sub_29A008E78(&__p, off_2A14FE500[0]);
  sub_29A008E78(&v220, off_2A14FE318[0]);
  sub_29B240640(v32, &__p, &v220, &v190);
  if (SHIBYTE(v221) < 0)
  {
    operator delete(v220);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v33 = v190;
  v34 = sub_29B246A68();
  sub_29A008E78(&__p, "type");
  v188 = 0;
  v189 = 0;
  sub_29B240028(v33, v34, &__p, &v188, 0);
  if (v189)
  {
    sub_29A014BEC(v189);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&__p, off_2A14FE4E8[0]);
  sub_29A008E78(&v220, qword_2A14FE310);
  v35 = v198;
  sub_29B2407F0(v212, &__p, &v220, &v181.__r_.__value_.__l.__data_);
  if (v181.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v181.__r_.__value_.__l.__size_);
  }

  sub_29B240718(v35, &__p, &v220, &v218);
  if (v219)
  {
    sub_29A014BEC(v219);
  }

  if (SHIBYTE(v221) < 0)
  {
    operator delete(v220);
  }

  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  if (*(a4 + 120) == 1)
  {
    v36 = v194;
    v37 = sub_29B246C60();
    sub_29A008E78(&__p, off_2A14FE290[0]);
    v38 = operator new(0x28uLL);
    v38->__shared_owners_ = 0;
    v38->__shared_weak_owners_ = 0;
    v38->__vftable = &unk_2A20C8128;
    v38[1].__vftable = &unk_2A20C8178;
    LODWORD(v38[1].__shared_owners_) = 981668463;
    v186 = v38 + 1;
    v187 = v38;
    sub_29B240028(v36, v37, &__p, &v186, 0);
    if (v187)
    {
      sub_29A014BEC(v187);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a4 + 137) == 1)
  {
    v39 = v194;
    v40 = sub_29B24805C();
    sub_29A008E78(&__p, off_2A14FE300[0]);
    v184 = 0;
    v185 = 0;
    sub_29B240028(v39, v40, &__p, &v184, 0);
    if (v185)
    {
      sub_29A014BEC(v185);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }

    v41 = v194;
    v42 = sub_29B247E64();
    sub_29A008E78(&__p, off_2A14FE308[0]);
    v43 = operator new(0x60uLL);
    v43->__shared_owners_ = 0;
    v43->__shared_weak_owners_ = 0;
    v43->__vftable = &unk_2A20C8898;
    v43[1].__vftable = &unk_2A20C88E8;
    *&v43[1].__shared_owners_ = xmmword_29B767048;
    v43[2].std::__shared_count = unk_29B767058;
    *&v43[2].__shared_weak_owners_ = xmmword_29B767068;
    *&v43[3].__shared_owners_ = unk_29B767078;
    v182 = v43 + 1;
    v183 = v43;
    sub_29B240028(v41, v42, &__p, &v182, 0);
    if (v183)
    {
      sub_29A014BEC(v183);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a4 + 138) == 1)
  {
    v44 = sub_29A008E78(&__p, off_2A14FE4E0[0]);
    Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v44);
    sub_29A008E78(&v181, off_2A14FE1A8[0]);
    v46 = std::string::append(&v181, "_0");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v221 = v46->__r_.__value_.__r.__words[2];
    v220 = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = sub_29B240AA4(v212, &__p);
    v218 = 0;
    v219 = 0;
    sub_29B240028(v48, Vector2Name, &v220, &v218, 0);
    if (v219)
    {
      sub_29A014BEC(v219);
    }

    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }

    if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v181.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }

    v49 = sub_29A008E78(&__p, off_2A14FE4E8[0]);
    v50 = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v49);
    sub_29A008E78(&v181, off_2A14FE200[0]);
    v51 = std::string::append(&v181, "_0");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v221 = v51->__r_.__value_.__r.__words[2];
    v220 = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    sub_29B211DA4(&__p, v50, &v220, v212, v198, 0);
    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }

    if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v181.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }

    v53 = v194;
    v54 = sub_29B24805C();
    sub_29A008E78(&__p, off_2A14FE2F0[0]);
    v179 = 0;
    v180 = 0;
    sub_29B240028(v53, v54, &__p, &v179, 0);
    if (v180)
    {
      sub_29A014BEC(v180);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }

    v55 = v194;
    v56 = sub_29B246C60();
    sub_29A008E78(&__p, off_2A14FE2F8[0]);
    v57 = operator new(0x28uLL);
    v57->__shared_owners_ = 0;
    v57->__shared_weak_owners_ = 0;
    v57->__vftable = &unk_2A20C8128;
    v57[1].__vftable = &unk_2A20C8178;
    LODWORD(v57[1].__shared_owners_) = 1065353216;
    v177 = v57 + 1;
    v178 = v57;
    sub_29B240028(v55, v56, &__p, &v177, 0);
    if (v178)
    {
      sub_29A014BEC(v178);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }
  }

  v58 = *(v216 + 10);
  _ZF = (v58 & 0x80) != 0 || (~v58 & 0x4004) == 0;
  if (_ZF && *(a4 + 124))
  {
    __asm { FMOV            V0.2S, #-1.0 }

    *&v220 = -_D0;
    DWORD2(v220) = -1082130432;
    sub_29B1F2C94(&v220, &__p);
    v64 = v194;
    v65 = sub_29B247E64();
    sub_29A008E78(&v220, qword_2A14FE2A0);
    v66 = operator new(0x60uLL);
    v66->__shared_owners_ = 0;
    v66->__shared_weak_owners_ = 0;
    v66->__vftable = &unk_2A20C8898;
    v66[1].__vftable = &unk_2A20C88E8;
    v67 = v174;
    *&v66[1].__shared_owners_ = __p;
    v66[2].std::__shared_count = v67;
    v68 = v176;
    *&v66[2].__shared_weak_owners_ = v175;
    *&v66[3].__shared_owners_ = v68;
    v171 = v66 + 1;
    v172 = v66;
    sub_29B240028(v64, v65, &v220, &v171, 0);
    if (v172)
    {
      sub_29A014BEC(v172);
    }

    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }

    v69 = v194;
    v70 = sub_29B24805C();
    sub_29A008E78(&v220, off_2A14FE2A8[0]);
    v169 = 0;
    v170 = 0;
    sub_29B240028(v69, v70, &v220, &v169, 0);
    if (v170)
    {
      sub_29A014BEC(v170);
    }

    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }

    v71 = v194;
    v72 = sub_29B246C60();
    sub_29A008E78(&v220, qword_2A14FE2C8);
    v73 = operator new(0x28uLL);
    v73->__shared_owners_ = 0;
    v73->__shared_weak_owners_ = 0;
    v73->__vftable = &unk_2A20C8128;
    v73[1].__vftable = &unk_2A20C8178;
    LODWORD(v73[1].__shared_owners_) = 1065353216;
    v167 = v73 + 1;
    v168 = v73;
    sub_29B240028(v71, v72, &v220, &v167, 0);
    if (v168)
    {
      sub_29A014BEC(v168);
    }

    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }

    v74 = v194;
    v75 = sub_29B246A68();
    sub_29A008E78(&v220, off_2A14FE2B0[0]);
    v76 = operator new(0x28uLL);
    v76->__shared_owners_ = 0;
    v76->__shared_weak_owners_ = 0;
    v76->__vftable = &unk_2A20C8018;
    v76[1].__vftable = &unk_2A20C8068;
    LODWORD(v76[1].__shared_owners_) = 1;
    v165 = v76 + 1;
    v166 = v76;
    sub_29B240028(v74, v75, &v220, &v165, 0);
    if (v166)
    {
      sub_29A014BEC(v166);
    }

    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }

    v77 = v194;
    v78 = sub_29B246A68();
    sub_29A008E78(&v220, off_2A14FE2B8[0]);
    v79 = operator new(0x28uLL);
    v79->__shared_owners_ = 0;
    v79->__shared_weak_owners_ = 0;
    v79->__vftable = &unk_2A20C8018;
    v79[1].__vftable = &unk_2A20C8068;
    LODWORD(v79[1].__shared_owners_) = 16;
    v163 = v79 + 1;
    v164 = v79;
    sub_29B240028(v77, v78, &v220, &v163, 0);
    if (v164)
    {
      sub_29A014BEC(v164);
    }

    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }

    v80 = v194;
    v81 = sub_29B24805C();
    sub_29A008E78(&v220, off_2A14FE2C0[0]);
    v161 = 0;
    v162 = 0;
    sub_29B240028(v80, v81, &v220, &v161, 0);
    if (v162)
    {
      sub_29A014BEC(v162);
    }

    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }

    v82 = v194;
    v83 = sub_29B24696C();
    sub_29A008E78(&v220, qword_2A14FE2D8);
    v159 = 0;
    v160 = 0;
    sub_29B240028(v82, v83, &v220, &v159, 0);
    if (v160)
    {
      sub_29A014BEC(v160);
    }

    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }
  }

  if (*(a4 + 128) == 1 || *(a4 + 145) == 1)
  {
    v84 = v194;
    v85 = sub_29B24805C();
    sub_29A008E78(&__p, off_2A14FE2E0[0]);
    v157 = 0;
    v158 = 0;
    sub_29B240028(v84, v85, &__p, &v157, 0);
    if (v158)
    {
      sub_29A014BEC(v158);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }

    v86 = v194;
    v87 = sub_29B246A68();
    sub_29A008E78(&__p, qword_2A14FE2E8);
    v88 = operator new(0x28uLL);
    v88->__shared_owners_ = 0;
    v88->__shared_weak_owners_ = 0;
    v88->__vftable = &unk_2A20C8018;
    v88[1].__vftable = &unk_2A20C8068;
    LODWORD(v88[1].__shared_owners_) = 64;
    v155 = v88 + 1;
    v156 = v88;
    sub_29B240028(v86, v87, &__p, &v155, 0);
    if (v156)
    {
      sub_29A014BEC(v156);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a4 + 146) == 1)
  {
    v89 = v194;
    v90 = sub_29B24805C();
    sub_29A008E78(&__p, off_2A14FE2A8[0]);
    v153 = 0;
    v154 = 0;
    sub_29B240028(v89, v90, &__p, &v153, 0);
    if (v154)
    {
      sub_29A014BEC(v154);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }

    v91 = v194;
    v92 = sub_29B246C60();
    sub_29A008E78(&__p, qword_2A14FE2C8);
    v93 = operator new(0x28uLL);
    v93->__shared_owners_ = 0;
    v93->__shared_weak_owners_ = 0;
    v93->__vftable = &unk_2A20C8128;
    v93[1].__vftable = &unk_2A20C8178;
    LODWORD(v93[1].__shared_owners_) = 1065353216;
    v151 = v93 + 1;
    v152 = v93;
    sub_29B240028(v91, v92, &__p, &v151, 0);
    if (v152)
    {
      sub_29A014BEC(v152);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }

    v94 = v194;
    v95 = sub_29B246A68();
    sub_29A008E78(&__p, qword_2A14FE2D0);
    v96 = operator new(0x28uLL);
    v96->__shared_owners_ = 0;
    v96->__shared_weak_owners_ = 0;
    v96->__vftable = &unk_2A20C8018;
    v96[1].__vftable = &unk_2A20C8068;
    LODWORD(v96[1].__shared_owners_) = 1;
    v149 = v96 + 1;
    v150 = v96;
    sub_29B240028(v94, v95, &__p, &v149, 0);
    if (v150)
    {
      sub_29A014BEC(v150);
    }

    if (SHIBYTE(v174.__vftable) < 0)
    {
      operator delete(__p);
    }

    __asm { FMOV            V0.2S, #-1.0 }

    *&v220 = -_D0;
    DWORD2(v220) = -1082130432;
    sub_29B1F2C94(&v220, &__p);
    v98 = v194;
    v99 = sub_29B247E64();
    sub_29A008E78(&v220, qword_2A14FE2A0);
    v100 = operator new(0x60uLL);
    v100->__shared_owners_ = 0;
    v100->__shared_weak_owners_ = 0;
    v100->__vftable = &unk_2A20C8898;
    v100[1].__vftable = &unk_2A20C88E8;
    v101 = v174;
    *&v100[1].__shared_owners_ = __p;
    v100[2].std::__shared_count = v101;
    v102 = v176;
    *&v100[2].__shared_weak_owners_ = v175;
    *&v100[3].__shared_owners_ = v102;
    v147 = v100 + 1;
    v148 = v100;
    sub_29B240028(v98, v99, &v220, &v147, 0);
    if (v148)
    {
      sub_29A014BEC(v148);
    }

    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }

    v103 = v194;
    v104 = sub_29B246A68();
    sub_29A008E78(&v220, off_2A14FE2B0[0]);
    v105 = operator new(0x28uLL);
    v105->__shared_owners_ = 0;
    v105->__shared_weak_owners_ = 0;
    v105->__vftable = &unk_2A20C8018;
    v105[1].__vftable = &unk_2A20C8068;
    LODWORD(v105[1].__shared_owners_) = 1;
    v145 = v105 + 1;
    v146 = v105;
    sub_29B240028(v103, v104, &v220, &v145, 0);
    if (v146)
    {
      sub_29A014BEC(v146);
    }

    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }
  }

  v106 = v216;
  v107 = v216[19];
  v108 = v216[20];
  if (v107 != v108)
  {
    do
    {
      v109 = *v107;
      if (*(*v107 + 240) != *(*v107 + 248))
      {
        v110 = v216[22];
        if (!v110 || (*(*v110 + 104))(v110, *v107))
        {
          v111 = v192;
          sub_29A014C58(&v143, v109);
          sub_29B240398(v111, &v143);
          if (v144)
          {
            sub_29A014BEC(v144);
          }
        }
      }

      ++v107;
    }

    while (v107 != v108);
    v106 = v216;
  }

  v112 = *v106[11];
  v113 = v196;
  v114 = sub_29B247C28();
  v141 = 0;
  v142 = 0;
  v115 = sub_29B240028(v113, v114, (v112 + 32), &v141, 0);
  if (v142)
  {
    sub_29A014BEC(v142);
  }

  std::string::operator=((v115 + 13), (v112 + 104));
  std::string::operator=((v115 + 7), (v112 + 56));
  v139 = v216;
  v140 = v217;
  if (v217)
  {
    atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B232E7C(a1, &v139, a4, *a5);
  if (v140)
  {
    sub_29A014BEC(v140);
  }

  sub_29A008E78(&__p, off_2A14FE540[0]);
  sub_29B211E68(a4, &__p, &v181);
  if (SHIBYTE(v174.__vftable) < 0)
  {
    operator delete(__p);
  }

  v116 = v216;
  if (v181.__r_.__value_.__r.__words[0] && (~*(v216 + 10) & 0x4004) == 0)
  {
    for (i = (v181.__r_.__value_.__r.__words[0] + 40); ; (*(**(i[3] + 176) + 56))(*(i[3] + 176), i[3], a4, *a5))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    v116 = v216;
  }

  *&v220 = v116;
  v174.__vftable = 0;
  __p = 0uLL;
  sub_29B214354(&__p, &v220, &v220 + 1, 1uLL);
  if (v181.__r_.__value_.__r.__words[0])
  {
    for (j = *(v181.__r_.__value_.__r.__words[0] + 40); j; j = *j)
    {
      *&v220 = (*(**(j[3] + 176) + 88))(*(j[3] + 176));
      if (v220)
      {
        sub_29A0A71C8(&__p, &v220);
      }
    }
  }

  v120 = *(&__p + 1);
  v119 = __p;
  while (v119 != v120)
  {
    v121 = *(v120 - 1);
    v120 -= 8;
    *(&__p + 1) = v120;
    v122 = *(v121 + 264);
    v123 = *(v121 + 272);
    if (v122 != v123)
    {
      do
      {
        v124 = *v122;
        if ((*(*v122 + 40) & 0x10) != 0)
        {
          v125 = v124[11];
          v126 = v124[12];
          while (v125 != v126)
          {
            v127 = *v125;
            if (!*(*v125 + 240))
            {
              v128 = *(v127 + 24);
              v129 = sub_29B24805C();
              if (sub_29A1B00DC(v128, v129))
              {
                v130 = v192;
                v131 = sub_29B24805C();
                v132 = *(v127 + 136);
                v137 = *(v127 + 128);
                v138 = v132;
                if (v132)
                {
                  atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v133 = sub_29B240028(v130, v131, (v127 + 104), &v137, 0);
                if (v138)
                {
                  sub_29A014BEC(v138);
                }

                std::string::operator=((v133 + 7), (v127 + 56));
                sub_29B201354((v127 + 104), &v220);
                v134 = v220;
                if (*(&v220 + 1))
                {
                  atomic_fetch_add_explicit((*(&v220 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                v135 = *(v127 + 136);
                *(v127 + 128) = v134;
                if (v135)
                {
                  sub_29A014BEC(v135);
                }

                if (*(&v134 + 1))
                {
                  sub_29A014BEC(*(&v134 + 1));
                }
              }
            }

            ++v125;
          }
        }

        *&v220 = (*(*v124[22] + 88))(v124[22]);
        if (v220)
        {
          sub_29A0A71C8(&__p, &v220);
        }

        ++v122;
      }

      while (v122 != v123);
      v120 = *(&__p + 1);
      v119 = __p;
    }
  }

  if (*(a4 + 120) == 1)
  {
    v136 = *a5;
    sub_29A008E78(&v220, qword_2A14FE538);
    sub_29B211EC8(v136, &v220);
    if (SHIBYTE(v221) < 0)
    {
      operator delete(v220);
    }

    v119 = __p;
  }

  if (v119)
  {
    *(&__p + 1) = v119;
    operator delete(v119);
  }

  if (v181.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v181.__r_.__value_.__l.__size_);
  }

  if (v191)
  {
    sub_29A014BEC(v191);
  }

  if (v193)
  {
    sub_29A014BEC(v193);
  }

  if (v195)
  {
    sub_29A014BEC(v195);
  }

  if (v197)
  {
    sub_29A014BEC(v197);
  }

  if (v199)
  {
    sub_29A014BEC(v199);
  }

  if (v213)
  {
    sub_29A014BEC(v213);
  }

  if (v217)
  {
    sub_29A014BEC(v217);
  }
}

void sub_29B211804(_Unwind_Exception *a1)
{
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(v2 - 152);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  _Unwind_Resume(a1);
}

void sub_29B211DA4(const void **a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = sub_29B240C7C(a4, a1);
  v13 = 0;
  v14 = 0;
  sub_29B240028(v11, a2, a3, &v13, a6);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v12 = sub_29B240AA4(a5, a1);
  v13 = 0;
  v14 = 0;
  sub_29B240028(v12, a2, a3, &v13, a6);
  if (v14)
  {
    sub_29A014BEC(v14);
  }
}

void sub_29B211E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B211E68(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A5DAB7C((a1 + 240), a2);
  if (!v4 || (v5 = v4[6], v4[5] == v5))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(v5 - 2);

    sub_29B2142A4(v6, a3);
  }
}

void sub_29B211EC8(uint64_t a1, __int128 *a2)
{
  v4 = operator new(0x28uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = &unk_2A20C80A0;
  v4[3] = &unk_2A20C80F0;
  *(v4 + 32) = 1;
  v7 = a2;
  v5 = sub_29B2132DC(a1 + 112, a2, &unk_29B768580, &v7);
  v6 = v5[6];
  v5[5] = v4 + 3;
  v5[6] = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B211F98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_29B242018(a4, a2, a3))
  {
    std::operator+<char>();
    v8 = std::string::append(&v21, "'. Function already called in this scope.");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v23 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 88))(a1, __p, a4);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    return;
  }

  v10 = *(a2 + 40);
  if ((v10 & 6) != 2)
  {
    goto LABEL_24;
  }

  v11 = *(a3 + 368);
  if (v11 == *(a3 + 360))
  {
    goto LABEL_24;
  }

  v12 = *(v11 - 8);
  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = *v12;
  if (v13 > 2)
  {
    if (v13 == 4)
    {
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_22;
      }

LABEL_24:
      v17 = a4;
      v18 = a2;
      v19 = a3;
      v20 = 1;
      goto LABEL_25;
    }

    if (v13 != 3)
    {
      goto LABEL_22;
    }
  }

  else if (v13 != 1)
  {
    v14 = v13 == 2;
    v15 = v10 & 0xA00;
    goto LABEL_17;
  }

  if ((v10 & 0x100) != 0)
  {
    goto LABEL_24;
  }

  v15 = v10 & 0xA00;
  v14 = v13 == 2;
LABEL_17:
  if (v14 && v15 != 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  (*(*a1 + 48))(a1, a4);
  (*(*a1 + 192))(a1, **(a2 + 152), 1, 1, a3, a4);
  (*(*a1 + 56))(a1, a4, 1);
  v17 = a4;
  v18 = a2;
  v19 = a3;
  v20 = 0;
LABEL_25:

  sub_29B241F68(v17, v18, v19, v20);
}

void sub_29B2121C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2121F8(uint64_t **a1, unsigned int a2, void *a3)
{
  v6 = ((*a1)[8])(a1);
  v7 = sub_29B246738(v6);
  if (v7 != sub_29B248740())
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v19 = std::string::append(&v30, "' is not of lightshader type");
    v20 = *&v19->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &__str);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29A008E78(&__str, off_2A14FE540[0]);
  sub_29B211E68(a3, &__str.__r_.__value_.__l.__data_, &v29);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v8 = v29;
  if (!v29)
  {
    sub_29B2135EC(&__str);
    v9 = *&__str.__r_.__value_.__l.__data_;
    *&__str.__r_.__value_.__l.__data_ = 0uLL;
    v10 = *(&v29 + 1);
    v29 = v9;
    if (v10)
    {
      sub_29A014BEC(v10);
      if (__str.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__str.__r_.__value_.__l.__size_);
      }
    }

    sub_29A008E78(&__str, off_2A14FE540[0]);
    v28 = v29;
    if (*(&v29 + 1))
    {
      atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE19BF4(a3, &__str.__r_.__value_.__l.__data_, &v28);
    if (*(&v28 + 1))
    {
      sub_29A014BEC(*(&v28 + 1));
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v8 = v29;
  }

  LODWORD(__str.__r_.__value_.__l.__data_) = a2;
  v11 = sub_29B213C9C((v8 + 24), &__str);
  if (v11 && v11[3])
  {
    v21 = __cxa_allocate_exception(0x20uLL);
    std::to_string(&v27, a2);
    v22 = std::string::insert(&v27, 0, "Error binding light shader. Light type id '");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v30, "' has already been bound");
    v25 = *&v24->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(v21, &__str);
    *v21 = &unk_2A20C8F68;
    __cxa_throw(v21, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v12 = sub_29AABE2F0(a1);
  sub_29B23CB10(0, v12, a1, a3, &v30);
  v13 = (*(**(v30.__r_.__value_.__r.__words[0] + 176) + 88))(*(v30.__r_.__value_.__r.__words[0] + 176));
  if (v13)
  {
    v14 = *(v13 + 152);
    for (i = *(v13 + 160); v14 != i; ++v14)
    {
      v16 = *v14;
      std::operator+<char>();
      std::string::operator=((v16 + 104), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  v17 = v29;
  v26 = *&v30.__r_.__value_.__l.__data_;
  if (v30.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v30.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B212708(v17, a2, &v26);
  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (v30.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v30.__r_.__value_.__l.__size_);
  }

  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }
}

void sub_29B212590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v28 & 1) == 0)
    {
LABEL_10:
      if (a21)
      {
        sub_29A014BEC(a21);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

void sub_29B212708(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  v9 = &v8;
  v4 = sub_29B213D50(a1 + 24, &v8, &unk_29B768580, &v9);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[4];
  v4[3] = v6;
  v4[4] = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29B212780(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FE540[0]);
  sub_29B211E68(a1, __p, &v4);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    sub_29B213FF4(v4 + 24);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29B2127F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B212810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 40);
  if ((v5 & 0x80) == 0)
  {
    if ((v5 & 0x400) != 0)
    {
      v6 = a1 + 648;
    }

    else
    {
      if ((v5 & 4) == 0)
      {
        return;
      }

      v6 = a1 + 136;
    }

    goto LABEL_13;
  }

  if ((~v5 & 0x300) == 0)
  {
    v8 = a1 + 264;
    sub_29A0A71C8(a3, &v8);
    v7 = a1 + 392;
LABEL_12:
    v8 = v7;
    sub_29A0A71C8(a3, &v8);
    v6 = a1 + 520;
    goto LABEL_13;
  }

  if ((v5 & 0x100) != 0)
  {
    v7 = a1 + 264;
    goto LABEL_12;
  }

  if ((v5 & 0x200) == 0)
  {
    return;
  }

  v6 = a1 + 392;
LABEL_13:
  v8 = v6;
  sub_29A0A71C8(a3, &v8);
}

void sub_29B2128BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 140))
  {
    sub_29A008E78(v11, off_2A14FE4F0[0]);
    v4 = sub_29B246A68();
    sub_29A008E78(__p, off_2A14FE298[0]);
    v5 = sub_29B2408C8(a3, v11);
    v13 = 0;
    v14 = 0;
    v6 = sub_29B240028(v5, v4, __p, &v13, 0);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    v7 = operator new(0x28uLL);
    v7->__shared_owners_ = 0;
    v7->__vftable = &unk_2A20C8018;
    v7->__shared_weak_owners_ = 0;
    v7[1].__vftable = &unk_2A20C8068;
    LODWORD(v7[1].__shared_owners_) = 0;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v6[17];
    v6[16] = v7 + 1;
    v6[17] = v7;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    sub_29A014BEC(v7);
  }
}

void sub_29B2129DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = *(v20 - 24);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B212A28(uint64_t a1, uint64_t a2)
{
  v7[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17871F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17871F8))
  {
    sub_29A008E78(v5, "index");
    sub_29A008E78(v6, "space");
    sub_29A008E78(v7, "attrname");
    sub_29A9FDE68(&unk_2A17871E0, v5, 3);
    for (i = 0; i != -9; i -= 3)
    {
      if (SHIBYTE(v7[i + 2]) < 0)
      {
        operator delete(v7[i]);
      }
    }

    __cxa_guard_release(&qword_2A17871F8);
  }

  return sub_29A00AF58(&unk_2A17871E0, (a2 + 32)) == 0;
}

void sub_29B212B4C(_Unwind_Exception *a1)
{
  v3 = (v1 + 71);
  v4 = -72;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A17871F8);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29B212BCC(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v14 >= v10)
            {
              v14 %= v10;
            }
          }

          else
          {
            v14 &= v10 - 1;
          }

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v9;
  i[2] = **a4;
  i[3] = 0;
  i[4] = 0;
  i[5] = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *i = *v22;
LABEL_38:
    *v22 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v21 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}