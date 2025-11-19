uint64_t sub_195247868(void *a1, int *a2)
{
  v2 = a1[1];
  if (*(v2 + 76) >= 8)
  {
    v4 = a1[2];
    v5 = a1[3];
    if (v4 >= v5)
    {
      v7 = 8;
      goto LABEL_7;
    }

    v6 = v4 + 2;
    if ((v4 + 2) > v5)
    {
      *(v2 + 65) = *v4;
      *(a1[1] + 64) = 1;
      a1[2] = v4 + 1;
      v7 = 11;
LABEL_7:
      *a2 = v7;
      return 0xFFFFLL;
    }

    v8 = v4[1];
    v3 = *v4 | (v8 << 8);
    if ((v8 & 0xF8) == 0xD8)
    {
      if ((v8 & 4) != 0)
      {
        goto LABEL_16;
      }

      if ((v4 + 4) > v5)
      {
        v9 = (v2 + 65);
        *(v2 + 64) = v5 - v4;
        v6 = v5;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
        }

        while (v4 != v5);
        v11 = 11;
        goto LABEL_17;
      }

      v12 = v4[3];
      if ((v12 & 0xFC) != 0xDC)
      {
LABEL_16:
        *(v2 + 64) = 2;
        *(v2 + 65) = *v4;
        *(v2 + 66) = v4[1];
        v11 = 12;
LABEL_17:
        *a2 = v11;
        v3 = 0xFFFFLL;
        goto LABEL_18;
      }

      v3 = (*v6 | (v12 << 8)) + (v3 << 10) - 56613888;
      v6 = v4 + 4;
    }

LABEL_18:
    a1[2] = v6;
    return v3;
  }

  return 4294967287;
}

const char *sub_19524797C(uint64_t a1)
{
  if ((*(a1 + 56) & 0xF) != 0)
  {
    return "UTF-16LE,version=1";
  }

  else
  {
    return "UTF-16LE";
  }
}

uint64_t sub_19524799C(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if ((*(result + 56) & 0xFu) > 2)
  {
    *a3 = 1;
  }

  else
  {
    if ((*(result + 56) & 0xF) == 2 && !*(a2 + 8))
    {
      *(result + 48) = &unk_1E7405490;
      **(result + 40) = 65023;
    }

    *(result + 76) = 0x100000000;
  }

  return result;
}

uint64_t sub_1952479EC(uint64_t result, int a2)
{
  if (a2 > 1 || (*(result + 76) = 0, a2 != 1))
  {
    *(result + 80) = 1;
  }

  return result;
}

uint64_t sub_195247A08(void *a1, int *a2)
{
  v2 = *(a1[1] + 76);
  if (v2 == 9)
  {
    return sub_195247868(a1, a2);
  }

  if (v2 == 8)
  {
    return sub_195246CC0(a1, a2);
  }

  return 4294967287;
}

const char *sub_195247A30(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = "UTF-16,version=2";
  if ((v1 & 0xF) == 1)
  {
    v2 = "UTF-16,version=1";
  }

  if ((v1 & 0xF) != 0)
  {
    return v2;
  }

  else
  {
    return "UTF-16";
  }
}

void *sub_195247A64(void *result, int *a2)
{
  v3 = result[3];
  v2 = result[4];
  v4 = result[5];
  v6 = result[1];
  v5 = result[2];
  v7 = v6 + 65;
  LODWORD(v8) = *(v6 + 64);
  if (v8 < 1 || v2 >= v4)
  {
    goto LABEL_6;
  }

  *(v6 + 64) = 0;
  v10 = *(v6 + 72) - 1;
  *(v6 + 72) = 0;
  while (v8 > 3)
  {
LABEL_14:
    if (HIWORD(v10) > 0x10u || (v10 & 0x1FF800) == 55296)
    {
      *(result[1] + 64) = v8;
      *a2 = 12;
      goto LABEL_23;
    }

    if (HIWORD(v10))
    {
      *v2 = (v10 >> 10) - 10304;
      v14 = v2 + 1;
      v15 = v10 & 0x3FF | 0xDC00;
      if ((v2 + 1) >= v4)
      {
        v18 = result[1];
        *(v18 + 144) = v15;
        *(v18 + 93) = 1;
        *a2 = 15;
        v2 = v14;
        goto LABEL_23;
      }

      v2[1] = v15;
      v2 += 2;
    }

    else
    {
      *v2++ = v10;
    }

LABEL_6:
    v10 = 0;
    LODWORD(v8) = 0;
    if (v5 >= v3 || v2 >= v4)
    {
      goto LABEL_23;
    }
  }

  v8 = v8;
  while (v5 < v3)
  {
    v12 = *v5++;
    v10 = v12 | (v10 << 8);
    *(v7 + v8++) = v12;
    if (v8 == 4)
    {
      goto LABEL_14;
    }
  }

  v16 = v10 + 1;
  v17 = result[1];
  *(v17 + 72) = v16;
  *(v17 + 64) = v8;
LABEL_23:
  if (v5 < v3 && v2 >= v4 && *a2 <= 0)
  {
    *a2 = 15;
  }

  result[4] = v2;
  result[2] = v5;
  return result;
}

void *sub_195247BA0(void *result, int *a2)
{
  v3 = result[3];
  v2 = result[4];
  v5 = result[5];
  v4 = result[6];
  v7 = result[1];
  v6 = result[2];
  v8 = v7 + 65;
  LODWORD(v9) = *(v7 + 64);
  v10 = 0;
  if (v9 < 1 || v2 >= v5)
  {
    goto LABEL_6;
  }

  *(v7 + 64) = 0;
  v12 = *(v7 + 72) - 1;
  *(v7 + 72) = 0;
  while (v9 > 3)
  {
LABEL_14:
    if (HIWORD(v12) > 0x10u || (v12 & 0x1FF800) == 55296)
    {
      *(result[1] + 64) = v9;
      *a2 = 12;
      goto LABEL_24;
    }

    if (HIWORD(v12))
    {
      *v2 = (v12 >> 10) - 10304;
      *v4 = v10;
      v17 = v4 + 1;
      v18 = v12 & 0x3FF | 0xDC00;
      if ((v2 + 1) >= v5)
      {
        v20 = result[1];
        *(v20 + 144) = v18;
        *(v20 + 93) = 1;
        *a2 = 15;
        v4 = v17;
        ++v2;
        goto LABEL_24;
      }

      v2[1] = v18;
      v2 += 2;
      v16 = 8;
    }

    else
    {
      *v2++ = v12;
      v16 = 4;
      v17 = v4;
    }

    v4 = (v4 + v16);
    *v17 = v10;
    v10 += v9;
LABEL_6:
    v12 = 0;
    LODWORD(v9) = 0;
    if (v6 >= v3 || v2 >= v5)
    {
      goto LABEL_24;
    }
  }

  v9 = v9;
  while (v6 < v3)
  {
    v14 = *v6++;
    v12 = v14 | (v12 << 8);
    *(v8 + v9++) = v14;
    if (v9 == 4)
    {
      goto LABEL_14;
    }
  }

  v19 = result[1];
  *(v19 + 72) = v12 + 1;
  *(v19 + 64) = v9;
LABEL_24:
  if (v6 < v3 && v2 >= v5 && *a2 <= 0)
  {
    *a2 = 15;
  }

  result[4] = v2;
  result[2] = v6;
  result[6] = v4;
  return result;
}

uint64_t sub_195247D08(uint64_t result, int *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24);
  if (v2 >= v3)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 40);
  result = *(result + 8);
  if (*(result + 80) == 1)
  {
    sub_195240168(result, byte_19547A988, 4, (v5 + 32), v6, (v5 + 48), -1, a2);
    result = *(v5 + 8);
    *(result + 80) = 0;
  }

  v16 = 0;
  v7 = *(v5 + 32);
  v8 = *(result + 84);
  if (!v8)
  {
    goto LABEL_6;
  }

  *(result + 84) = 0;
LABEL_12:
  if (v2 >= v3)
  {
    *(*(v5 + 8) + 84) = v8;
    if (!*(v5 + 2))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v11 = *v2;
    if ((v11 & 0xFC00) == 0xDC00)
    {
      v8 = v11 + (v8 << 10) - 56613888;
      ++v2;
      while (1)
      {
        v12 = 0;
        BYTE1(v16) = BYTE2(v8) & 0x1F;
        BYTE2(v16) = BYTE1(v8);
        HIBYTE(v16) = v8;
        do
        {
          v13 = *(&v16 + v12);
          if (v7 >= v6)
          {
            v14 = *(v5 + 8);
            v15 = *(v14 + 91);
            *(v14 + 91) = v15 + 1;
            *(v14 + v15 + 104) = v13;
            *a2 = 15;
          }

          else
          {
            *v7++ = v13;
          }

          ++v12;
        }

        while (v12 != 4);
LABEL_6:
        if (v2 >= v3 || v7 >= v6)
        {
          goto LABEL_24;
        }

        v10 = *v2++;
        v8 = v10;
        if ((v10 & 0xF800) == 0xD800)
        {
          if ((v8 & 0xDC00) != 0xD800)
          {
            break;
          }

          goto LABEL_12;
        }
      }
    }

    *(*(v5 + 8) + 84) = v8;
  }

  *a2 = 12;
LABEL_24:
  if (v2 < v3 && v7 >= v6 && *a2 <= 0)
  {
    *a2 = 15;
  }

  *(v5 + 32) = v7;
  *(v5 + 16) = v2;
  return result;
}

uint64_t sub_195247EB8(uint64_t result, int *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24);
  if (v2 >= v3)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 40);
  result = *(result + 8);
  if (*(result + 80) == 1)
  {
    sub_195240168(result, byte_19547A98C, 4, (v5 + 32), v6, (v5 + 48), -1, a2);
    result = *(v5 + 8);
    *(result + 80) = 0;
  }

  v18 = 0;
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  v9 = *(result + 84);
  if (!v9)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 0;
  *(result + 84) = 0;
LABEL_13:
  if (v2 >= v3)
  {
    *(*(v5 + 8) + 84) = v9;
    if (!*(v5 + 2))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v13 = *v2;
    if ((v13 & 0xFC00) == 0xDC00)
    {
      v9 = v13 + (v9 << 10) - 56613888;
      ++v2;
      while (1)
      {
        v14 = 0;
        BYTE1(v18) = BYTE2(v9) & 0x1F;
        BYTE2(v18) = BYTE1(v9);
        HIBYTE(v18) = v9;
        do
        {
          v15 = *(&v18 + v14);
          if (v7 >= v6)
          {
            v16 = *(v5 + 8);
            v17 = *(v16 + 91);
            *(v16 + 91) = v17 + 1;
            *(v16 + v17 + 104) = v15;
            *a2 = 15;
          }

          else
          {
            *v7++ = v15;
            *v8++ = v10;
          }

          ++v14;
        }

        while (v14 != 4);
        if (BYTE1(v18))
        {
          ++v10;
        }

        ++v10;
LABEL_7:
        if (v2 >= v3 || v7 >= v6)
        {
          goto LABEL_27;
        }

        v12 = *v2++;
        v9 = v12;
        if ((v12 & 0xF800) == 0xD800)
        {
          if ((v9 & 0xDC00) != 0xD800)
          {
            break;
          }

          goto LABEL_13;
        }
      }
    }

    *(*(v5 + 8) + 84) = v9;
  }

  *a2 = 12;
LABEL_27:
  if (v2 < v3 && v7 >= v6 && *a2 <= 0)
  {
    *a2 = 15;
  }

  *(v5 + 32) = v7;
  *(v5 + 16) = v2;
  *(v5 + 48) = v8;
  return result;
}

uint64_t sub_19524808C(void *a1, int *a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 >= v3)
  {
    v7 = 8;
    goto LABEL_5;
  }

  v6 = v3 - v4;
  if (v3 - v4 <= 3)
  {
    memcpy((a1[1] + 65), v4, v6);
    *(a1[1] + 64) = v6;
    a1[2] = v4 + v6;
    v7 = 11;
LABEL_5:
    *a2 = v7;
    return 0xFFFFLL;
  }

  v9 = ((*v4 << 24) | (*(v4 + 1) << 16)) >> 16;
  result = (*v4 << 24) | (*(v4 + 1) << 16) | (bswap32(*(v4 + 1)) >> 16);
  a1[2] = v4 + 1;
  if (v9 > 0x10 || (result & 0x1FF800) == 55296)
  {
    *(a1[1] + 65) = *v4;
    *(a1[1] + 64) = 4;
    v7 = 12;
    goto LABEL_5;
  }

  return result;
}

void *sub_195248164(void *result, int *a2)
{
  v3 = result[3];
  v2 = result[4];
  v4 = result[5];
  v6 = result[1];
  v5 = result[2];
  v7 = v6 + 65;
  LODWORD(v8) = *(v6 + 64);
  if (v8 < 1 || v2 >= v4)
  {
    goto LABEL_6;
  }

  *(v6 + 64) = 0;
  v10 = *(v6 + 72) - 1;
  *(v6 + 72) = 0;
  while (v8 > 3)
  {
LABEL_14:
    if (HIWORD(v10) > 0x10u || (v10 & 0x1FF800) == 55296)
    {
      *(result[1] + 64) = v8;
      *a2 = 12;
      goto LABEL_23;
    }

    if (HIWORD(v10))
    {
      *v2 = (v10 >> 10) - 10304;
      v15 = v2 + 1;
      v16 = v10 & 0x3FF | 0xDC00;
      if ((v2 + 1) >= v4)
      {
        v19 = result[1];
        *(v19 + 144) = v16;
        *(v19 + 93) = 1;
        *a2 = 15;
        v2 = v15;
        goto LABEL_23;
      }

      v2[1] = v16;
      v2 += 2;
    }

    else
    {
      *v2++ = v10;
    }

LABEL_6:
    v10 = 0;
    LODWORD(v8) = 0;
    if (v5 >= v3 || v2 >= v4)
    {
      goto LABEL_23;
    }
  }

  v12 = 8 * v8;
  v8 = v8;
  while (v5 < v3)
  {
    v13 = *v5++;
    v10 |= v13 << v12;
    *(v7 + v8) = v13;
    v12 += 8;
    if (++v8 == 4)
    {
      goto LABEL_14;
    }
  }

  v17 = v10 + 1;
  v18 = result[1];
  *(v18 + 72) = v17;
  *(v18 + 64) = v8;
LABEL_23:
  if (v5 < v3 && v2 >= v4 && *a2 <= 0)
  {
    *a2 = 15;
  }

  result[4] = v2;
  result[2] = v5;
  return result;
}

void *sub_1952482AC(void *result, int *a2)
{
  v3 = result[3];
  v2 = result[4];
  v5 = result[5];
  v4 = result[6];
  v7 = result[1];
  v6 = result[2];
  v8 = v7 + 65;
  LODWORD(v9) = *(v7 + 64);
  v10 = 0;
  if (v9 < 1 || v2 >= v5)
  {
    goto LABEL_6;
  }

  *(v7 + 64) = 0;
  v12 = *(v7 + 72) - 1;
  *(v7 + 72) = 0;
  while (v9 > 3)
  {
LABEL_14:
    if (HIWORD(v12) > 0x10u || (v12 & 0x1FF800) == 55296)
    {
      *(result[1] + 64) = v9;
      *a2 = 12;
      goto LABEL_24;
    }

    if (HIWORD(v12))
    {
      *v2 = (v12 >> 10) - 10304;
      *v4 = v10;
      v18 = v4 + 1;
      v19 = v12 & 0x3FF | 0xDC00;
      if ((v2 + 1) >= v5)
      {
        v21 = result[1];
        *(v21 + 144) = v19;
        *(v21 + 93) = 1;
        *a2 = 15;
        v4 = v18;
        ++v2;
        goto LABEL_24;
      }

      v2[1] = v19;
      v2 += 2;
      v17 = 8;
    }

    else
    {
      *v2++ = v12;
      v17 = 4;
      v18 = v4;
    }

    v4 = (v4 + v17);
    *v18 = v10;
    v10 += v9;
LABEL_6:
    v12 = 0;
    LODWORD(v9) = 0;
    if (v6 >= v3 || v2 >= v5)
    {
      goto LABEL_24;
    }
  }

  v14 = 8 * v9;
  v9 = v9;
  while (v6 < v3)
  {
    v15 = *v6++;
    v12 |= v15 << v14;
    *(v8 + v9) = v15;
    v14 += 8;
    if (++v9 == 4)
    {
      goto LABEL_14;
    }
  }

  v20 = result[1];
  *(v20 + 72) = v12 + 1;
  *(v20 + 64) = v9;
LABEL_24:
  if (v6 < v3 && v2 >= v5 && *a2 <= 0)
  {
    *a2 = 15;
  }

  result[4] = v2;
  result[2] = v6;
  result[6] = v4;
  return result;
}

uint64_t sub_195248420(uint64_t result, int *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24);
  if (v2 >= v3)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 40);
  result = *(result + 8);
  if (*(result + 80) == 1)
  {
    sub_195240168(result, byte_19547A990, 4, (v5 + 32), v6, (v5 + 48), -1, a2);
    result = *(v5 + 8);
    *(result + 80) = 0;
  }

  v16 = 0;
  v7 = *(v5 + 32);
  v8 = *(result + 84);
  if (!v8)
  {
    goto LABEL_6;
  }

  *(result + 84) = 0;
LABEL_12:
  if (v2 >= v3)
  {
    *(*(v5 + 8) + 84) = v8;
    if (!*(v5 + 2))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v11 = *v2;
    if ((v11 & 0xFC00) == 0xDC00)
    {
      v8 = v11 + (v8 << 10) - 56613888;
      ++v2;
      while (1)
      {
        v12 = 0;
        BYTE2(v16) = BYTE2(v8) & 0x1F;
        LOWORD(v16) = v8;
        do
        {
          v13 = *(&v16 + v12);
          if (v7 >= v6)
          {
            v14 = *(v5 + 8);
            v15 = *(v14 + 91);
            *(v14 + 91) = v15 + 1;
            *(v14 + v15 + 104) = v13;
            *a2 = 15;
          }

          else
          {
            *v7++ = v13;
          }

          ++v12;
        }

        while (v12 != 4);
LABEL_6:
        if (v2 >= v3 || v7 >= v6)
        {
          goto LABEL_24;
        }

        v10 = *v2++;
        v8 = v10;
        if ((v10 & 0xF800) == 0xD800)
        {
          if ((v8 & 0xDC00) != 0xD800)
          {
            break;
          }

          goto LABEL_12;
        }
      }
    }

    *(*(v5 + 8) + 84) = v8;
  }

  *a2 = 12;
LABEL_24:
  if (v2 < v3 && v7 >= v6 && *a2 <= 0)
  {
    *a2 = 15;
  }

  *(v5 + 32) = v7;
  *(v5 + 16) = v2;
  return result;
}

uint64_t sub_1952485D0(uint64_t result, int *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24);
  if (v2 >= v3)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 40);
  result = *(result + 8);
  if (*(result + 80) == 1)
  {
    sub_195240168(result, byte_19547A994, 4, (v5 + 32), v6, (v5 + 48), -1, a2);
    result = *(v5 + 8);
    *(result + 80) = 0;
  }

  v18 = 0;
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  v9 = *(result + 84);
  if (!v9)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 0;
  *(result + 84) = 0;
LABEL_13:
  if (v2 >= v3)
  {
    *(*(v5 + 8) + 84) = v9;
    if (!*(v5 + 2))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v13 = *v2;
    if ((v13 & 0xFC00) == 0xDC00)
    {
      v9 = v13 + (v9 << 10) - 56613888;
      ++v2;
      while (1)
      {
        v14 = 0;
        BYTE2(v18) = BYTE2(v9) & 0x1F;
        LOWORD(v18) = v9;
        do
        {
          v15 = *(&v18 + v14);
          if (v7 >= v6)
          {
            v16 = *(v5 + 8);
            v17 = *(v16 + 91);
            *(v16 + 91) = v17 + 1;
            *(v16 + v17 + 104) = v15;
            *a2 = 15;
          }

          else
          {
            *v7++ = v15;
            *v8++ = v10;
          }

          ++v14;
        }

        while (v14 != 4);
        if (BYTE2(v18))
        {
          ++v10;
        }

        ++v10;
LABEL_7:
        if (v2 >= v3 || v7 >= v6)
        {
          goto LABEL_27;
        }

        v12 = *v2++;
        v9 = v12;
        if ((v12 & 0xF800) == 0xD800)
        {
          if ((v9 & 0xDC00) != 0xD800)
          {
            break;
          }

          goto LABEL_13;
        }
      }
    }

    *(*(v5 + 8) + 84) = v9;
  }

  *a2 = 12;
LABEL_27:
  if (v2 < v3 && v7 >= v6 && *a2 <= 0)
  {
    *a2 = 15;
  }

  *(v5 + 32) = v7;
  *(v5 + 16) = v2;
  *(v5 + 48) = v8;
  return result;
}

uint64_t sub_1952487A4(void *a1, int *a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 >= v3)
  {
    v7 = 8;
    goto LABEL_5;
  }

  v6 = v3 - v4;
  if (v3 - v4 <= 3)
  {
    memcpy((a1[1] + 65), v4, v6);
    *(a1[1] + 64) = v6;
    a1[2] = &v4[v6];
    v7 = 11;
LABEL_5:
    *a2 = v7;
    return 0xFFFFLL;
  }

  v9 = (v4[3] << 24) | (v4[2] << 16);
  result = *v4 | v9;
  a1[2] = v4 + 4;
  if (HIWORD(v9) > 0x10u || (result & 0x1FF800) == 55296)
  {
    *(a1[1] + 65) = *v4;
    *(a1[1] + 64) = 4;
    v7 = 12;
    goto LABEL_5;
  }

  return result;
}

double sub_195248878(uint64_t a1)
{
  *&result = 0x100000000;
  *(a1 + 76) = 0x100000000;
  return result;
}

uint64_t sub_195248888(uint64_t result, int a2)
{
  if (a2 > 1 || (*(result + 76) = 0, a2 != 1))
  {
    *(result + 80) = 1;
  }

  return result;
}

void *sub_1952488A4(void *result, int *a2)
{
  v3 = result;
  v4 = 0;
  v5 = result[1];
  v6 = result[2];
  v7 = result[3];
  v8 = result[6];
  v9 = *(v5 + 76);
  v10 = &unk_19547A998;
LABEL_2:
  v11 = v9;
  while (1)
  {
    if (v6 >= v7)
    {
      goto LABEL_32;
    }

    if (*a2 > 0)
    {
      break;
    }

    if (v11)
    {
      v9 = v11;
      if (v11 > 9)
      {
        goto LABEL_2;
      }

      if (((1 << v11) & 0xEE) != 0)
      {
        if (*v6 == v10[v11])
        {
          ++v6;
          if (v11 == 3)
          {
            v9 = 8;
          }

          else
          {
            v9 = (v11 + 1);
            if (v11 != 7)
            {
              goto LABEL_2;
            }

            v9 = 9;
          }

          v4 = v6 - *(v3 + 4);
        }

        else
        {
          v12 = v3[2];
          v13 = v6 - v12;
          v9 = 8u;
          v6 = v12;
          v14 = (v11 & 3) - v13;
          if (v14)
          {
            v15 = *(v3 + 2);
            v16 = &v10[v11 & 4];
            v3[2] = v16;
            v3[3] = &v16[v14];
            *(v3 + 2) = 0;
            v17 = v5;
            v18 = v10;
            result = sub_195247A64(v3, a2);
            v10 = v18;
            v5 = v17;
            v3[3] = v7;
            *(v3 + 2) = v15;
            v9 = 8;
            v6 = v12;
          }
        }
      }

      else if (v11 == 8)
      {
        v20 = v10;
        v3[2] = v6;
        if (v8)
        {
          result = sub_195247BA0(v3, a2);
        }

        else
        {
          result = sub_195247A64(v3, a2);
        }

        v6 = v3[2];
        v9 = 8;
        v10 = v20;
      }

      else
      {
        v9 = v11;
        if (v11 == 9)
        {
          v19 = v10;
          v3[2] = v6;
          if (v8)
          {
            result = sub_1952482AC(v3, a2);
          }

          else
          {
            result = sub_195248164(v3, a2);
          }

          v6 = v3[2];
          v9 = 9u;
          v10 = v19;
        }
      }

      goto LABEL_2;
    }

    if (*v6 == 255)
    {
      v9 = 5u;
      goto LABEL_24;
    }

    v11 = 8;
    if (!*v6)
    {
      v9 = 1u;
LABEL_24:
      ++v6;
      goto LABEL_2;
    }
  }

  LODWORD(v9) = v11;
LABEL_32:
  if (v8 && v4)
  {
    v21 = v3[6];
    while (v8 < v21)
    {
      *v8++ += v4;
    }
  }

  v3[2] = v6;
  if (v6 == v7 && *(v3 + 2) && v9 != 0)
  {
    if (v9 == 9)
    {
      result = sub_195248164(v3, a2);
      LODWORD(v9) = 9;
    }

    else
    {
      if (v9 == 8)
      {
        result = sub_195247A64(v3, a2);
      }

      else
      {
        v23 = &v10[v9 & 4];
        v3[2] = v23;
        v3[3] = &v23[v9 & 3];
        result = sub_195247A64(v3, a2);
        v3[2] = v6;
        v3[3] = v7;
      }

      LODWORD(v9) = 8;
    }
  }

  *(v5 + 76) = v9;
  return result;
}

uint64_t sub_195248B28(void *a1, int *a2)
{
  v2 = *(a1[1] + 76);
  if (v2 == 9)
  {
    return sub_1952487A4(a1, a2);
  }

  if (v2 == 8)
  {
    return sub_19524808C(a1, a2);
  }

  return 4294967287;
}

uint64_t sub_195248B50(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(result + 56) & 0xF;
  if (v3 > 1)
  {
    *a3 = 1;
  }

  else
  {
    *(result + 72) = 0x1000000;
    *(result + 64) = 0;
    *(result + 80) = (v3 << 28) | 0x1000000;
  }

  return result;
}

uint64_t sub_195248B84(uint64_t result, int a2)
{
  if (a2 > 1 || (*(result + 72) = 0x1000000, *(result + 64) = 0, a2 != 1))
  {
    *(result + 80) = *(result + 80) & 0xF0000000 | 0x1000000;
  }

  return result;
}

uint64_t sub_195248BB4(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v5 = *(result + 24);
  v4 = *(result + 32);
  v7 = *(result + 40);
  v6 = *(result + 48);
  v8 = *(v2 + 72);
  v9 = BYTE2(v8);
  v10 = (v2 + 65);
  v11 = *(v2 + 64);
  if (*(v2 + 64))
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  if ((v8 & 0x1000000) != 0)
  {
    v13 = v12;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_28:
  if (v3 >= v5)
  {
    v20 = 0;
    goto LABEL_60;
  }

  v21 = v5 - v3;
  while (1)
  {
    if (v4 >= v7)
    {
      v20 = 0;
      goto LABEL_58;
    }

    v22 = *v3;
    v10[v11] = v22;
    if (v22 > 0x7D)
    {
      v24 = -3;
LABEL_71:
      if (v9 == 255)
      {
        *v10 = 43;
        v20 = 0x1000000;
        v9 = 255;
        LOBYTE(v11) = 1;
      }

      else
      {
        if (!v8)
        {
          LOWORD(v8) = 0;
          if (v24 != 253)
          {
            goto LABEL_7;
          }

          ++v3;
LABEL_82:
          v20 = 0x1000000;
          v25 = 12;
          LOBYTE(v11) = v11 + 1;
          goto LABEL_59;
        }

        v20 = 0x1000000;
      }

      v25 = 12;
      goto LABEL_59;
    }

    v23 = byte_19547AA68[v22];
    v24 = byte_19547AA68[v22];
    if ((~v23 & 0xFD) == 0)
    {
      goto LABEL_71;
    }

    if (v23 < 0)
    {
      break;
    }

    if (v9 <= 4)
    {
      if (v9 <= 2)
      {
        if (!v9)
        {
          goto LABEL_48;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            *v4++ = (v23 >> 2) | (16 * v8);
            if (v6)
            {
              *v6++ = v12;
              v12 = v13;
            }

            *v10 = v22;
            LOWORD(v8) = v24 & 3;
            v9 = 3;
LABEL_52:
            v11 = 1;
            goto LABEL_55;
          }

          goto LABEL_45;
        }
      }

      goto LABEL_44;
    }

    if (v9 <= 6)
    {
      if (v9 == 5)
      {
        *v4++ = (v23 >> 4) | (4 * v8);
        if (v6)
        {
          *v6++ = v12;
          v12 = v13;
        }

        *v10 = v22;
        LOWORD(v8) = v24 & 0xF;
        v9 = 6;
        goto LABEL_52;
      }

LABEL_44:
      LOWORD(v8) = v23 | (v8 << 6);
      ++v9;
      goto LABEL_45;
    }

    if (v9 == 7)
    {
      *v4++ = v23 | (v8 << 6);
      v11 = 0;
      LOWORD(v8) = 0;
      v9 = 0;
      if (v6)
      {
        *v6++ = v12;
        v12 = v13 + 1;
      }

      goto LABEL_55;
    }

    if (v9 == 255)
    {
LABEL_48:
      v9 = 1;
      ++v11;
      LOWORD(v8) = byte_19547AA68[v22];
      goto LABEL_55;
    }

LABEL_45:
    ++v11;
LABEL_55:
    ++v13;
    ++v3;
    if (!--v21)
    {
      v20 = 0;
      v3 = v5;
      goto LABEL_60;
    }
  }

  ++v13;
  ++v3;
  if (v9 != 255)
  {
    if (!v8)
    {
      LOWORD(v8) = 0;
      goto LABEL_7;
    }

    goto LABEL_82;
  }

  *v4++ = 43;
  v9 = 255;
  if (v6)
  {
    *v6++ = v12 - 1;
    v9 = 255;
  }

LABEL_7:
  v14 = v5 - v3;
  if (v5 - v3 >= ((v7 - v4) >> 1))
  {
    v14 = (v7 - v4) >> 1;
  }

  if (v14 >= 1)
  {
    v15 = v14 + 1;
    v16 = v3 + 1;
    do
    {
      v3 = v16;
      v17 = *(v16 - 1);
      if (v17 - 32 >= 0x5E || v17 == 92)
      {
        if (v17 > 0xD || ((1 << v17) & 0x2600) == 0)
        {
          *v10 = v17;
          *a2 = 12;
          LOBYTE(v11) = 1;
          goto LABEL_25;
        }
      }

      else if (v17 == 43)
      {
        v11 = 0;
        LOWORD(v8) = 0;
        v12 = v13 + 1;
        v9 = 255;
        ++v13;
        goto LABEL_28;
      }

      *v4++ = v17;
      if (v6)
      {
        *v6++ = v13++;
      }

      --v15;
      v16 = v3 + 1;
    }

    while (v15 > 1);
  }

  LOBYTE(v11) = 0;
LABEL_25:
  v20 = 0x1000000;
  if (v3 < v5 && v4 >= v7)
  {
LABEL_58:
    v25 = 15;
LABEL_59:
    *a2 = v25;
  }

LABEL_60:
  if (*a2 <= 0)
  {
    if (v8)
    {
      v26 = 0;
    }

    else
    {
      v26 = v3 == v5;
    }

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v11;
    }

    if (*(result + 2))
    {
      LOBYTE(v11) = v27;
    }
  }

  *(v2 + 72) = v20 | (v9 << 16) | v8;
  *(v2 + 64) = v11;
  *(result + 16) = v3;
  *(result + 32) = v4;
  *(result + 48) = v6;
  return result;
}

uint64_t sub_195248F10(uint64_t result, _DWORD *a2)
{
  v2 = 0;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v8 = *(result + 40);
  v7 = *(result + 48);
  v9 = *(v3 + 80);
  v10 = &unk_19547AB68;
  if (!(v9 >> 28))
  {
    v10 = &unk_19547AAE8;
  }

  v11 = HIWORD(v9);
  if ((v9 & 0x1000000) != 0)
  {
    goto LABEL_4;
  }

  while (2)
  {
    v17 = 1;
    if (v4 >= v5)
    {
      v21 = 0;
      goto LABEL_83;
    }

    while (1)
    {
      v18 = v4;
      if (v6 >= v8)
      {
        v21 = 0;
        v17 = 1;
        goto LABEL_67;
      }

      ++v4;
      v19 = *v18;
      if (v19 <= 0x7F)
      {
        if (v10[v19])
        {
          break;
        }
      }

      if (v11 == 2)
      {
        *v6 = aAbcdefghijklmn[v9 | (v19 >> 12)];
        v20 = v6 + 1;
        if ((v6 + 1) >= v8)
        {
          if (v7)
          {
            *v7++ = v2++;
          }

          LOBYTE(v9) = 0;
          LOBYTE(v11) = 0;
          *(v3 + 104) = aAbcdefghijklmn[(v19 >> 6) & 0x3F];
          *(v3 + 105) = aAbcdefghijklmn[v19 & 0x3F];
          *(v3 + 91) = 2;
        }

        else
        {
          v20 = v6 + 2;
          v6[1] = aAbcdefghijklmn[(v19 >> 6) & 0x3F];
          if ((v6 + 2) < v8)
          {
            v6[2] = aAbcdefghijklmn[v19 & 0x3F];
            LOBYTE(v9) = 0;
            LOBYTE(v11) = 0;
            if (v7)
            {
              *v7 = v2;
              v7[1] = v2;
              v7[2] = v2++;
              v7 += 3;
            }

            v6 += 3;
            goto LABEL_64;
          }

          if (v7)
          {
            *v7 = v2;
            v7[1] = v2;
            v7 += 2;
            ++v2;
          }

          LOBYTE(v9) = 0;
          LOBYTE(v11) = 0;
          *(v3 + 104) = aAbcdefghijklmn[v19 & 0x3F];
          *(v3 + 91) = 1;
        }

        *a2 = 15;
        goto LABEL_63;
      }

      if (v11 == 1)
      {
        *v6 = aAbcdefghijklmn[v9 | (v19 >> 14)];
        v20 = v6 + 1;
        if ((v6 + 1) >= v8)
        {
          if (v7)
          {
            *v7++ = v2++;
          }

          *(v3 + 104) = aAbcdefghijklmn[(v19 >> 8) & 0x3F];
          *(v3 + 105) = aAbcdefghijklmn[v19 >> 2];
          *(v3 + 91) = 2;
        }

        else
        {
          v20 = v6 + 2;
          v6[1] = aAbcdefghijklmn[(v19 >> 8) & 0x3F];
          if ((v6 + 2) < v8)
          {
            v20 = v6 + 3;
            v6[2] = aAbcdefghijklmn[v19 >> 2];
            if (v7)
            {
              *v7 = v2;
              v7[1] = v2;
              v7[2] = v2++;
              v7 += 3;
            }

LABEL_58:
            LOBYTE(v9) = 16 * (v19 & 3);
            LOBYTE(v11) = 2;
LABEL_63:
            v6 = v20;
            goto LABEL_64;
          }

          if (v7)
          {
            *v7 = v2;
            v7[1] = v2;
            v7 += 2;
            ++v2;
          }

          *(v3 + 104) = aAbcdefghijklmn[v19 >> 2];
          *(v3 + 91) = 1;
        }

        *a2 = 15;
        goto LABEL_58;
      }

      if (!v11)
      {
        *v6 = aAbcdefghijklmn[v19 >> 10];
        v20 = v6 + 1;
        if ((v6 + 1) >= v8)
        {
          if (v7)
          {
            *v7++ = v2++;
          }

          *(v3 + 104) = aAbcdefghijklmn[(v19 >> 4) & 0x3F];
          *(v3 + 91) = 1;
          *a2 = 15;
        }

        else
        {
          v20 = v6 + 2;
          v6[1] = aAbcdefghijklmn[(v19 >> 4) & 0x3F];
          if (v7)
          {
            *v7 = v2;
            v7[1] = v2;
            v7 += 2;
            ++v2;
          }
        }

        LOBYTE(v9) = 4 * (v19 & 0xF);
        LOBYTE(v11) = 1;
        goto LABEL_63;
      }

LABEL_64:
      if (v4 >= v5)
      {
        v21 = 0;
        v17 = 1;
        goto LABEL_83;
      }
    }

    if (v11)
    {
      *v6++ = aAbcdefghijklmn[v9];
      if (v7)
      {
        *v7++ = v2 - 1;
      }
    }

    if (byte_19547AA68[v19] != 255)
    {
      if (v6 < v8)
      {
        *v6++ = 45;
        if (v7)
        {
          *v7++ = v2 - 1;
        }

        goto LABEL_76;
      }

      v17 = 0;
      *(v3 + 104) = 45;
      *(v3 + 91) = 1;
      v21 = 0x1000000;
LABEL_67:
      v4 = v18;
      goto LABEL_82;
    }

LABEL_76:
    v4 = v18;
LABEL_4:
    if (((v5 - v4) >> 1) >= v8 - v6)
    {
      LODWORD(v12) = v8 - v6;
    }

    else
    {
      LODWORD(v12) = (v5 - v4) >> 1;
    }

    if (v12 >= 1)
    {
      v13 = v5 - v4 - 2;
      for (i = v4; ; v4 = i)
      {
        v16 = *i++;
        v15 = v16;
        if (v16 > 0x7F)
        {
          break;
        }

        if (v10[v15])
        {
          *v6++ = v15;
          if (v7)
          {
            *v7++ = v2++;
          }

          if (v12 < 2)
          {
            goto LABEL_68;
          }

          LODWORD(v12) = v12 - 1;
        }

        else
        {
          if (v15 != 43)
          {
            break;
          }

          *v6 = 43;
          if ((v6 + 1) >= v8)
          {
            ++v4;
            if (v7)
            {
              *v7++ = v2++;
            }

            *(v3 + 104) = 45;
            *(v3 + 91) = 1;
            *a2 = 15;
            ++v6;
            goto LABEL_80;
          }

          v6[1] = 45;
          if (v7)
          {
            *v7 = v2;
            v7[1] = v2;
            v7 += 2;
            ++v2;
          }

          v6 += 2;
          v12 = v13 >> 1;
          if ((v13 >> 1) >= v8 - v6)
          {
            LODWORD(v12) = v8 - v6;
          }

          if (v12 <= 0)
          {
LABEL_68:
            ++v4;
            goto LABEL_80;
          }
        }

        v13 -= 2;
      }

      *v6++ = 43;
      LOBYTE(v11) = 0;
      if (v7)
      {
        *v7++ = v2;
      }

      continue;
    }

    break;
  }

LABEL_80:
  v17 = 0;
  v21 = 0x1000000;
  if (v4 < v5 && v6 >= v8)
  {
LABEL_82:
    *a2 = 15;
  }

LABEL_83:
  if (*(result + 2))
  {
    v22 = v4 >= v5;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    if (!v17)
    {
      goto LABEL_103;
    }

    if (v11)
    {
      v24 = aAbcdefghijklmn[v9];
      if (v6 < v8)
      {
        *v6 = v24;
        v25 = v6 + 1;
        if (v7)
        {
          *v7++ = v2 - 1;
          goto LABEL_95;
        }

        if (v25 >= v8)
        {
          v7 = 0;
LABEL_102:
          v27 = *(v3 + 91);
          *(v3 + 91) = v27 + 1;
          *(v3 + v27 + 104) = 45;
          *a2 = 15;
          v6 = v25;
          goto LABEL_103;
        }

        v7 = 0;
        v6[1] = 45;
        v6 += 2;
LABEL_103:
        v23 = *(v3 + 80) & 0xF0000000 | 0x1000000;
        goto LABEL_104;
      }

      v26 = *(v3 + 91);
      *(v3 + 91) = v26 + 1;
      *(v3 + v26 + 104) = v24;
      *a2 = 15;
    }

    v25 = v6;
LABEL_95:
    if (v25 < v8)
    {
      *v25 = 45;
      v6 = v25 + 1;
      if (v7)
      {
        *v7++ = v2 - 1;
      }

      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v23 = v21 | v9 | (v11 << 16) | *(v3 + 80) & 0xF0000000;
LABEL_104:
  *(v3 + 80) = v23;
  *(result + 16) = v4;
  *(result + 32) = v6;
  *(result + 48) = v7;
  return result;
}

const char *sub_195249458(uint64_t a1)
{
  if (*(a1 + 80) >> 28 == 1)
  {
    return "UTF-7,version=1";
  }

  else
  {
    return "UTF-7";
  }
}

uint64_t sub_19524947C(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v5 = *(result + 24);
  v4 = *(result + 32);
  v7 = *(result + 40);
  v6 = *(result + 48);
  v8 = *(v2 + 72);
  v9 = BYTE2(v8);
  v10 = (v2 + 65);
  v11 = *(v2 + 64);
  if (*(v2 + 64))
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  if ((v8 & 0x1000000) != 0)
  {
    v14 = v12;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_22:
  if (v3 < v5)
  {
    v22 = v5 - v3;
    while (1)
    {
      if (v4 >= v7)
      {
        *a2 = 15;
        goto LABEL_58;
      }

      v23 = *v3;
      v19 = v11 + 1;
      v10[v11] = v23;
      if (v23 > 0x7E)
      {
        goto LABEL_83;
      }

      if (v23 == 44)
      {
        v24 = 63;
      }

      else
      {
        if (v23 == 47)
        {
          goto LABEL_72;
        }

        if (byte_19547AA68[v23] < 0)
        {
          if (v23 == 45)
          {
            v14 = v13 + 1;
            ++v3;
            if (v9 == 255)
            {
              *v4++ = 38;
              v9 = 255;
              if (v6)
              {
                *v6++ = v12 - 1;
                v9 = 255;
              }

LABEL_7:
              v15 = v5 - v3;
              if (v5 - v3 >= ((v7 - v4) >> 1))
              {
                v15 = (v7 - v4) >> 1;
              }

              if (v15 >= 1)
              {
                v16 = v15 + 1;
                v17 = v3 + 1;
                while (1)
                {
                  v3 = v17;
                  v18 = *(v17 - 1);
                  if ((v18 - 32) >= 0x5F)
                  {
                    *v10 = v18;
                    *a2 = 12;
                    v19 = 1;
                    goto LABEL_18;
                  }

                  if (v18 == 38)
                  {
                    break;
                  }

                  *v4++ = v18;
                  if (v6)
                  {
                    *v6++ = v14++;
                  }

                  --v16;
                  v17 = v3 + 1;
                  if (v16 <= 1)
                  {
                    goto LABEL_16;
                  }
                }

                v11 = 0;
                LOWORD(v8) = 0;
                v12 = v14 + 1;
                v9 = 255;
                v13 = v14 + 1;
                goto LABEL_22;
              }

LABEL_16:
              v19 = 0;
LABEL_18:
              v20 = 0x1000000;
              if (v3 < v5 && v4 >= v7)
              {
                v21 = 15;
                goto LABEL_85;
              }

              goto LABEL_86;
            }

            if (!v8 && v9 <= 6 && ((1 << v9) & 0x49) != 0)
            {
              LOWORD(v8) = 0;
              goto LABEL_7;
            }
          }

          else
          {
LABEL_72:
            ++v3;
            if (v9 == 255)
            {
              *(v2 + 65) = 38;
              *(v2 + 66) = v23;
              v19 = 2;
            }
          }

LABEL_84:
          v21 = 12;
          goto LABEL_85;
        }

        v24 = byte_19547AA68[v23];
      }

      if (v9 <= 4)
      {
        break;
      }

      if (v9 <= 6)
      {
        if (v9 == 5)
        {
          if (((v24 >> 4) | (4 * v8)) - 32 < 0x5F)
          {
            v9 = 5;
LABEL_83:
            ++v3;
            goto LABEL_84;
          }

          *v4++ = (v24 >> 4) | (4 * v8);
          if (v6)
          {
            *v6++ = v12;
            v12 = v13;
          }

          *v10 = v23;
          LOWORD(v8) = v24 & 0xF;
          v9 = 6;
          goto LABEL_51;
        }

        goto LABEL_42;
      }

      if (v9 != 7)
      {
        if (v9 == 255)
        {
LABEL_46:
          v9 = 1;
          ++v11;
          LOWORD(v8) = v24;
          goto LABEL_55;
        }

        goto LABEL_43;
      }

      if ((v24 | (v8 << 6)) - 32 < 0x5F)
      {
        v9 = 7;
        goto LABEL_83;
      }

      *v4++ = v24 | (v8 << 6);
      v11 = 0;
      LOWORD(v8) = 0;
      v9 = 0;
      if (v6)
      {
        *v6++ = v12;
        v12 = v13 + 1;
      }

LABEL_55:
      ++v13;
      ++v3;
      if (!--v22)
      {
        v3 = v5;
        goto LABEL_58;
      }
    }

    if (v9 > 2)
    {
      goto LABEL_42;
    }

    switch(v9)
    {
      case 0:
        goto LABEL_46;
      case 1:
LABEL_42:
        LOWORD(v8) = v24 | (v8 << 6);
        ++v9;
        break;
      case 2:
        if (((v24 >> 2) | (16 * v8)) - 32 < 0x5F)
        {
          v9 = 2;
          goto LABEL_83;
        }

        *v4++ = (v24 >> 2) | (16 * v8);
        if (v6)
        {
          *v6++ = v12;
          v12 = v13;
        }

        *v10 = v23;
        LOWORD(v8) = v24 & 3;
        v9 = 3;
LABEL_51:
        v11 = 1;
        goto LABEL_55;
    }

LABEL_43:
    ++v11;
    goto LABEL_55;
  }

LABEL_58:
  if (*a2 <= 0 && v11 == 0)
  {
    LOBYTE(v11) = 0;
    if (*(result + 2) && v3 >= v5)
    {
      if (v9 == 255)
      {
        *v10 = 38;
        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      v21 = 11;
LABEL_85:
      *a2 = v21;
      v20 = 0x1000000;
LABEL_86:
      LOBYTE(v11) = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  *(v2 + 72) = v20 | (v9 << 16) | v8;
  *(v2 + 64) = v11;
  *(result + 16) = v3;
  *(result + 32) = v4;
  *(result + 48) = v6;
  return result;
}

uint64_t sub_195249828(uint64_t result, _DWORD *a2)
{
  v2 = 0;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v7 = *(result + 40);
  v8 = *(result + 48);
  v9 = *(v3 + 80);
  v10 = HIWORD(v9);
  v11 = v6;
  v12 = v8;
  if ((v9 & 0x1000000) != 0)
  {
    goto LABEL_101;
  }

  while (2)
  {
    v13 = 1;
    if (v4 >= v5)
    {
      v44 = 0;
      goto LABEL_132;
    }

    while (1)
    {
      v14 = v4;
      if (v11 >= v7)
      {
        v44 = 0;
        v45 = 1;
        goto LABEL_131;
      }

      ++v4;
      v15 = *v14;
      if ((v15 - 32) <= 0x5Eu)
      {
        break;
      }

      if (v10 == 2)
      {
        v19 = v9 | (v15 >> 12);
        if (v19 > 0x3Eu)
        {
          v20 = 44;
        }

        else
        {
          v20 = aAbcdefghijklmn[v19];
        }

        *v11 = v20;
        v26 = v11 + 1;
        if ((v11 + 1) >= v7)
        {
          if (v12)
          {
            *v12++ = v2++;
          }

          v29 = (v15 >> 6) & 0x3F;
          if (v29 == 63)
          {
            v30 = 44;
          }

          else
          {
            v30 = aAbcdefghijklmn[v29];
          }

          *(v3 + 104) = v30;
          if ((v15 & 0x3F) == 0x3F)
          {
            v42 = 44;
          }

          else
          {
            v42 = aAbcdefghijklmn[v15 & 0x3F];
          }

          v9 = 0;
          LOBYTE(v10) = 0;
          *(v3 + 105) = v42;
          *(v3 + 91) = 2;
        }

        else
        {
          v27 = (v15 >> 6) & 0x3F;
          if (v27 == 63)
          {
            v28 = 44;
          }

          else
          {
            v28 = aAbcdefghijklmn[v27];
          }

          v26 = v11 + 2;
          v11[1] = v28;
          if ((v11 + 2) < v7)
          {
            if ((v15 & 0x3F) == 0x3F)
            {
              v41 = 44;
            }

            else
            {
              v41 = aAbcdefghijklmn[v15 & 0x3F];
            }

            v11[2] = v41;
            v9 = 0;
            LOBYTE(v10) = 0;
            if (v12)
            {
              *v12 = v2;
              v12[1] = v2;
              v12[2] = v2++;
              v12 += 3;
            }

            v11 += 3;
            goto LABEL_85;
          }

          if (v12)
          {
            *v12 = v2;
            v12[1] = v2;
            v12 += 2;
            ++v2;
          }

          if ((v15 & 0x3F) == 0x3F)
          {
            v43 = 44;
          }

          else
          {
            v43 = aAbcdefghijklmn[v15 & 0x3F];
          }

          v9 = 0;
          LOBYTE(v10) = 0;
          *(v3 + 104) = v43;
          *(v3 + 91) = 1;
        }

        v11 = v26;
        *a2 = 15;
      }

      else
      {
        if (v10 == 1)
        {
          v17 = v9 | (v15 >> 14);
          if (v17 > 0x3Eu)
          {
            v18 = 44;
          }

          else
          {
            v18 = aAbcdefghijklmn[v17];
          }

          *v11 = v18;
          v21 = v11 + 1;
          if ((v11 + 1) >= v7)
          {
            if (v12)
            {
              *v12++ = v2++;
            }

            v24 = (v15 >> 8) & 0x3F;
            if (v24 == 63)
            {
              v25 = 44;
            }

            else
            {
              v25 = aAbcdefghijklmn[v24];
            }

            *(v3 + 104) = v25;
            v37 = v15 >> 2;
            if (v37 == 63)
            {
              v38 = 44;
            }

            else
            {
              v38 = aAbcdefghijklmn[v37];
            }

            *(v3 + 105) = v38;
            *(v3 + 91) = 2;
          }

          else
          {
            v22 = (v15 >> 8) & 0x3F;
            if (v22 == 63)
            {
              v23 = 44;
            }

            else
            {
              v23 = aAbcdefghijklmn[v22];
            }

            v21 = v11 + 2;
            v11[1] = v23;
            if ((v11 + 2) < v7)
            {
              v35 = v15 >> 2;
              if (v35 == 63)
              {
                v36 = 44;
              }

              else
              {
                v36 = aAbcdefghijklmn[v35];
              }

              v21 = v11 + 3;
              v11[2] = v36;
              if (v12)
              {
                *v12 = v2;
                v12[1] = v2;
                v12[2] = v2++;
                v12 += 3;
              }

              goto LABEL_76;
            }

            if (v12)
            {
              *v12 = v2;
              v12[1] = v2;
              v12 += 2;
              ++v2;
            }

            v39 = v15 >> 2;
            if (v39 == 63)
            {
              v40 = 44;
            }

            else
            {
              v40 = aAbcdefghijklmn[v39];
            }

            *(v3 + 104) = v40;
            *(v3 + 91) = 1;
          }

          *a2 = 15;
LABEL_76:
          v9 = 16 * (v15 & 3);
          LOBYTE(v10) = 2;
LABEL_77:
          v11 = v21;
          goto LABEL_85;
        }

        if (!v10)
        {
          if ((v15 >> 10) == 63)
          {
            v16 = 44;
          }

          else
          {
            v16 = aAbcdefghijklmn[v15 >> 10];
          }

          *v11 = v16;
          v21 = v11 + 1;
          if ((v11 + 1) >= v7)
          {
            if (v12)
            {
              *v12++ = v2++;
            }

            v33 = (v15 >> 4) & 0x3F;
            if (v33 == 63)
            {
              v34 = 44;
            }

            else
            {
              v34 = aAbcdefghijklmn[v33];
            }

            *(v3 + 104) = v34;
            *(v3 + 91) = 1;
            *a2 = 15;
          }

          else
          {
            v31 = (v15 >> 4) & 0x3F;
            if (v31 == 63)
            {
              v32 = 44;
            }

            else
            {
              v32 = aAbcdefghijklmn[v31];
            }

            v21 = v11 + 2;
            v11[1] = v32;
            if (v12)
            {
              *v12 = v2;
              v12[1] = v2;
              v12 += 2;
              ++v2;
            }
          }

          v9 = 4 * (v15 & 0xF);
          LOBYTE(v10) = 1;
          goto LABEL_77;
        }
      }

LABEL_85:
      if (v4 >= v5)
      {
        v44 = 0;
        v13 = 1;
        goto LABEL_132;
      }
    }

    if (v10)
    {
      v46 = 44;
      if (v9 <= 0x3Eu)
      {
        v46 = aAbcdefghijklmn[v9];
      }

      *v11 = v46;
      v47 = v11 + 1;
      if (v12)
      {
        *v12++ = v2 - 1;
        goto LABEL_94;
      }

      if (v47 < v7)
      {
        v8 = 0;
        v6 = v11 + 2;
        v11[1] = 45;
LABEL_100:
        v4 = v14;
        goto LABEL_101;
      }

      v12 = 0;
LABEL_162:
      v45 = 0;
      *(v3 + 104) = 45;
      *(v3 + 91) = 1;
      v44 = 0x1000000;
      v11 = v47;
LABEL_131:
      *a2 = 15;
      v4 = v14;
      v13 = v45;
      goto LABEL_132;
    }

    v47 = v11;
LABEL_94:
    if (v47 >= v7)
    {
      goto LABEL_162;
    }

    *v47 = 45;
    v6 = v47 + 1;
    if (!v12)
    {
      v8 = 0;
      goto LABEL_100;
    }

    *v12 = v2 - 1;
    v4 = v14;
    v8 = v12 + 1;
LABEL_101:
    if (((v5 - v4) >> 1) >= v7 - v6)
    {
      v48 = v7 - v6;
    }

    else
    {
      v48 = (v5 - v4) >> 1;
    }

    if (v48 < 1)
    {
      v11 = v6;
      goto LABEL_126;
    }

    v49 = v5 - v4 - 2;
    v50 = v4;
    while (2)
    {
      v52 = *v50++;
      v51 = v52;
      v11 = v6 + 1;
      if (v52 != 38 && (v51 - 32) <= 0x5E)
      {
        *v6 = v51;
        if (v8)
        {
          *v8++ = v2++;
        }

        if (v48 < 2)
        {
          goto LABEL_120;
        }

        --v48;
LABEL_119:
        v49 -= 2;
        v6 = v11;
        v4 = v50;
        continue;
      }

      break;
    }

    *v6 = 38;
    if (v51 != 38)
    {
      LOBYTE(v10) = 0;
      if (v8)
      {
        *v8 = v2;
        v12 = v8 + 1;
      }

      else
      {
        v12 = 0;
      }

      continue;
    }

    break;
  }

  if (v11 < v7)
  {
    v6[1] = 45;
    if (v8)
    {
      *v8 = v2;
      v8[1] = v2;
      v8 += 2;
      ++v2;
    }

    v11 = v6 + 2;
    v48 = v7 - (v6 + 2);
    if ((v49 >> 1) < v48)
    {
      v48 = v49 >> 1;
    }

    if (v48 <= 0)
    {
LABEL_120:
      ++v4;
      goto LABEL_126;
    }

    goto LABEL_119;
  }

  ++v4;
  if (v8)
  {
    *v8++ = v2++;
  }

  *(v3 + 104) = 45;
  *(v3 + 91) = 1;
  *a2 = 15;
LABEL_126:
  v45 = 0;
  v13 = 0;
  v44 = 0x1000000;
  v53 = v4 < v5 && v11 >= v7;
  v14 = v4;
  v12 = v8;
  if (v53)
  {
    goto LABEL_131;
  }

LABEL_132:
  if (*(result + 2))
  {
    v54 = v4 >= v5;
  }

  else
  {
    v54 = 0;
  }

  if (v54)
  {
    if (v13)
    {
      if (!v10)
      {
        goto LABEL_150;
      }

      if (v11 >= v7)
      {
        if (v9 > 0x3Eu)
        {
          v57 = 44;
        }

        else
        {
          v57 = aAbcdefghijklmn[v9];
        }

        v58 = *(v3 + 91);
        *(v3 + 91) = v58 + 1;
        *(v3 + v58 + 104) = v57;
        *a2 = 15;
LABEL_150:
        if (v11 < v7)
        {
          *v11++ = 45;
          if (v12)
          {
            *v12++ = v2 - 1;
          }

          goto LABEL_159;
        }

        goto LABEL_158;
      }

      if (v9 > 0x3Eu)
      {
        v56 = 44;
      }

      else
      {
        v56 = aAbcdefghijklmn[v9];
      }

      *v11 = v56;
      if (v12)
      {
        *v12++ = v2 - 1;
        ++v11;
        goto LABEL_150;
      }

      if ((v11 + 1) >= v7)
      {
        v12 = 0;
        ++v11;
LABEL_158:
        v59 = *(v3 + 91);
        *(v3 + 91) = v59 + 1;
        *(v3 + v59 + 104) = 45;
        *a2 = 15;
        goto LABEL_159;
      }

      v12 = 0;
      v11[1] = 45;
      v11 += 2;
    }

LABEL_159:
    v55 = *(v3 + 80) & 0xF0000000 | 0x1000000;
    goto LABEL_160;
  }

  v55 = v44 | v9 | (v10 << 16) | *(v3 + 80) & 0xF0000000;
LABEL_160:
  *(v3 + 80) = v55;
  *(result + 16) = v4;
  *(result + 32) = v11;
  *(result + 48) = v12;
  return result;
}

void *sub_195249EF4(void *result, int *a2)
{
  v3 = result[1];
  v2 = result[2];
  v5 = result[3];
  v4 = result[4];
  v6 = result[5];
  v22 = 0;
  v7 = *(v3 + 48);
  v8 = *(v3 + 84);
  if (v8)
  {
    v9 = v4 >= v6;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_13;
  }

  *(v3 + 84) = 0;
LABEL_23:
  if (v2 >= v5)
  {
    *(v3 + 84) = v8;
  }

  else if ((v8 & 0x400) != 0 || (v13 = *v2, (v13 & 0xFC00) != 0xDC00))
  {
    *(v3 + 84) = v8;
    *a2 = 12;
  }

  else
  {
    v8 = v13 + (v8 << 10) - 56613888;
    ++v2;
LABEL_27:
    if ((v6 - v4) <= 3)
    {
      v14 = &v22;
    }

    else
    {
      v14 = v4;
    }

    if (v8 >= 0x10000)
    {
      v15 = (v8 >> 18) | 0xFFFFFFF0;
      if ((v6 - v4) <= 3)
      {
        v17 = &v22;
      }

      else
      {
        v17 = v4;
      }

      *(v17 + 1) = (v8 >> 12) & 0x3F | 0x80;
      v16 = 3;
    }

    else
    {
      v15 = (v8 >> 12) | 0xFFFFFFE0;
      v16 = 2;
    }

    *v14 = v15;
    v18 = v16;
    v19 = &v14[v16];
    *(v19 - 1) = (v8 >> 6) & 0x3F | 0x80;
    *v19 = v8 & 0x3F | 0x80;
    if (v14 == v4)
    {
      v4 += (v18 + 1);
    }

    else
    {
      for (; v14 <= (&v22 | v18); ++v14)
      {
        v20 = *v14;
        if (v4 >= v6)
        {
          v21 = *(v3 + 91);
          *(v3 + 91) = v21 + 1;
          *(v3 + 104 + v21) = v20;
          *a2 = 15;
        }

        else
        {
          *v4++ = v20;
        }
      }
    }

LABEL_13:
    while (v2 < v5 && v4 < v6)
    {
      v10 = *v2++;
      v8 = v10;
      if (v10 > 0x7F)
      {
        if (v8 > 0x7FF)
        {
          if ((v8 & 0xF800) != 0xD800 || v7 == &unk_1E7405CA8)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }

        *v4 = (v8 >> 6) | 0xC0;
        v11 = v8 & 0x3F | 0x80;
        if ((v4 + 1) >= v6)
        {
          *(v3 + 104) = v11;
          *(v3 + 91) = 1;
          *a2 = 15;
          ++v4;
        }

        else
        {
          v4[1] = v11;
          v4 += 2;
        }
      }

      else
      {
        *v4++ = v8;
      }
    }
  }

  if (v2 < v5 && v4 >= v6 && *a2 <= 0)
  {
    *a2 = 15;
  }

  result[4] = v4;
  result[2] = v2;
  return result;
}

void *sub_19524A100(void *result, int *a2)
{
  v3 = result[1];
  v2 = result[2];
  v5 = result[3];
  v4 = result[4];
  v6 = result[5];
  v7 = result[6];
  v25 = 0;
  v8 = *(v3 + 48);
  v9 = *(v3 + 84);
  if (v9)
  {
    v10 = v4 >= v6;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v11 = 0;
  *(v3 + 84) = 0;
  v12 = -1;
LABEL_19:
  if (v2 >= v5)
  {
    *(v3 + 84) = v9;
  }

  else if ((v9 & 0x400) != 0 || (v15 = *v2, (v15 & 0xFC00) != 0xDC00))
  {
    *(v3 + 84) = v9;
    *a2 = 12;
  }

  else
  {
    v9 = v15 + (v9 << 10) - 56613888;
    ++v2;
    ++v11;
LABEL_23:
    if ((v6 - v4) <= 3)
    {
      v16 = &v25;
    }

    else
    {
      v16 = v4;
    }

    if (v9 < 0x10000)
    {
      v17 = (v9 >> 12) | 0xFFFFFFE0;
      v19 = 2;
    }

    else
    {
      v17 = (v9 >> 18) | 0xFFFFFFF0;
      if ((v6 - v4) <= 3)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v4;
      }

      *(v18 + 1) = (v9 >> 12) & 0x3F | 0x80;
      v19 = 3;
    }

    *v16 = v17;
    v20 = v19;
    v21 = &v16[v19];
    *(v21 - 1) = (v9 >> 6) & 0x3F | 0x80;
    *v21 = v9 & 0x3F | 0x80;
    if (v16 == v4)
    {
      v24 = (v20 + 1);
      v4 += v24;
      *v7 = v12;
      v7[1] = v12;
      v7[2] = v12;
      if (v9 >= 0x10000)
      {
        v7[3] = v12;
      }

      v7 += v24;
    }

    else
    {
      for (; v16 <= (&v25 | v20); ++v16)
      {
        if (v4 >= v6)
        {
          v22 = *v16;
          v23 = *(v3 + 91);
          *(v3 + 91) = v23 + 1;
          *(v3 + 104 + v23) = v22;
          *a2 = 15;
        }

        else
        {
          *v7++ = v12;
          *v4++ = *v16;
        }
      }
    }

    v12 = v11;
LABEL_7:
    while (v2 < v5 && v4 < v6)
    {
      v13 = *v2++;
      v9 = v13;
      if (v13 > 0x7F)
      {
        if (v9 > 0x7FF)
        {
          v11 = v12 + 1;
          if ((v9 & 0xF800) != 0xD800 || v8 == &unk_1E7405CA8)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        *v7 = v12;
        *v4 = (v9 >> 6) | 0xC0;
        if ((v4 + 1) >= v6)
        {
          *(v3 + 104) = v9 & 0x3F | 0x80;
          *(v3 + 91) = 1;
          *a2 = 15;
          ++v4;
          ++v7;
        }

        else
        {
          v7[1] = v12++;
          v7 += 2;
          v4[1] = v9 & 0x3F | 0x80;
          v4 += 2;
        }
      }

      else
      {
        *v7++ = v12++;
        *v4++ = v9;
      }
    }
  }

  if (v2 < v5 && v4 >= v6 && *a2 <= 0)
  {
    *a2 = 15;
  }

  result[4] = v4;
  result[2] = v2;
  result[6] = v7;
  return result;
}

void *sub_19524A374(void *result, int *a2)
{
  v3 = result[1];
  v2 = result[2];
  v5 = result[3];
  v4 = result[4];
  v6 = result[5];
  v7 = (v3 + 65);
  v8 = *(v3 + 48);
  LODWORD(v9) = *(v3 + 64);
  if (v9 < 1 || v4 >= v6)
  {
    while (1)
    {
LABEL_7:
      if (v2 >= v5 || v4 >= v6)
      {
        goto LABEL_48;
      }

      v11 = *v2;
      if (*v2 < 0)
      {
        break;
      }

      *v4++ = v11;
      ++v2;
    }

    *v7 = v11;
    ++v2;
    if (v11 <= 0xEF)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    if (v11 > 0xDF)
    {
      ++v13;
    }

    LODWORD(v9) = 1;
    if (v11 - 194 <= 0x32)
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    *(v3 + 64) = 0;
    v11 = *(v3 + 72);
    v12 = *(v3 + 76);
    *(v3 + 72) = 0;
  }

  if (v9 < v12)
  {
    v9 = v9;
    while (1)
    {
      if (v2 >= v5)
      {
        *(v3 + 72) = v11;
        *(v3 + 76) = v12;
        *(v3 + 64) = v9;
        goto LABEL_48;
      }

      v14 = *v2;
      v7[v9] = v14;
      if (v12 < 3 || v9 >= 2)
      {
        if (v14 >= -64)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v15 = a00000000000000[v11 & 0xF];
          v16 = 1 << (v14 >> 5);
        }

        else
        {
          v15 = byte_19547AD04[v14 >> 4];
          v16 = 1 << (v11 & 7);
        }

        if ((v15 & v16) == 0)
        {
LABEL_29:
          if (v8 != &unk_1E7405CA8 || v9 != 1 || v11 != 237 || v14 > -65)
          {
            break;
          }
        }
      }

      v11 = v14 + (v11 << 6);
      ++v2;
      if (v12 <= ++v9)
      {
        LODWORD(v9) = v12;
        break;
      }
    }
  }

  v18 = v8 == &unk_1E7405CA8 && v9 > 3;
  if (v9 != v12 || v18)
  {
    *(v3 + 64) = v9;
    *a2 = 12;
  }

  else
  {
    v19 = v11 - dword_19547ACF0[v12];
    if (!HIWORD(v19))
    {
      *v4++ = v19;
      goto LABEL_7;
    }

    *v4 = (v19 >> 10) - 10304;
    v20 = v19 & 0x3FF | 0xDC00;
    if ((v4 + 1) < v6)
    {
      v4[1] = v20;
      v4 += 2;
      goto LABEL_7;
    }

    *(v3 + 144) = v20;
    *(v3 + 93) = 1;
    *a2 = 15;
    ++v4;
  }

LABEL_48:
  if (v2 < v5 && v4 >= v6 && *a2 <= 0)
  {
    *a2 = 15;
  }

  result[4] = v4;
  result[2] = v2;
  return result;
}

void *sub_19524A5A0(void *result, int *a2)
{
  v3 = result[1];
  v2 = result[2];
  v5 = result[3];
  v4 = result[4];
  v7 = result[5];
  v6 = result[6];
  v8 = (v3 + 65);
  v9 = *(v3 + 48);
  LODWORD(v10) = *(v3 + 64);
  v11 = 0;
  if (v10 < 1 || v4 >= v7)
  {
    goto LABEL_6;
  }

  *(v3 + 64) = 0;
  v13 = *(v3 + 72);
  v14 = *(v3 + 76);
  *(v3 + 72) = 0;
LABEL_18:
  if (v10 < v14)
  {
    v10 = v10;
    while (1)
    {
      if (v2 >= v5)
      {
        *(v3 + 72) = v13;
        *(v3 + 76) = v14;
        *(v3 + 64) = v10;
        goto LABEL_48;
      }

      v16 = *v2;
      v8[v10] = v16;
      if (v14 < 3 || v10 >= 2)
      {
        if (v16 >= -64)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v17 = a00000000000000[v13 & 0xF];
          v18 = 1 << (v16 >> 5);
        }

        else
        {
          v17 = byte_19547AD04[v16 >> 4];
          v18 = 1 << (v13 & 7);
        }

        if ((v17 & v18) == 0)
        {
LABEL_29:
          if (v9 != &unk_1E7405CA8 || v10 != 1 || v13 != 237 || v16 > -65)
          {
            break;
          }
        }
      }

      v13 = v16 + (v13 << 6);
      ++v2;
      if (v14 <= ++v10)
      {
        LODWORD(v10) = v14;
        break;
      }
    }
  }

  v20 = v9 == &unk_1E7405CA8 && v10 > 3;
  if (v10 != v14 || v20)
  {
    *(v3 + 64) = v10;
    *a2 = 12;
  }

  else
  {
    v21 = v13 - dword_19547ACF0[v14];
    if (HIWORD(v21))
    {
      *v4 = (v21 >> 10) - 10304;
      *v6 = v11;
      v22 = v21 & 0x3FF | 0xDC00;
      if ((v4 + 1) >= v7)
      {
        *(v3 + 144) = v22;
        *(v3 + 93) = 1;
        *a2 = 15;
        ++v6;
        ++v4;
      }

      else
      {
        v4[1] = v22;
        v4 += 2;
        v6[1] = v11;
        v6 += 2;
      }
    }

    else
    {
      *v4++ = v21;
      *v6++ = v11;
    }

    v11 += v14;
LABEL_6:
    while (v2 < v5 && v4 < v7)
    {
      v13 = *v2;
      if (*v2 < 0)
      {
        *v8 = v13;
        ++v2;
        if (v13 <= 0xEF)
        {
          v15 = 2;
        }

        else
        {
          v15 = 3;
        }

        if (v13 > 0xDF)
        {
          ++v15;
        }

        LODWORD(v10) = 1;
        if (v13 - 194 <= 0x32)
        {
          v14 = v15;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_18;
      }

      *v4++ = v13;
      *v6++ = v11++;
      ++v2;
    }
  }

LABEL_48:
  if (v2 < v5 && v4 >= v7 && *a2 <= 0)
  {
    *a2 = 15;
  }

  result[4] = v4;
  result[2] = v2;
  result[6] = v6;
  return result;
}

uint64_t sub_19524A804(void *a1, int *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  if (v2 >= v3)
  {
    v6 = 8;
LABEL_5:
    *a2 = v6;
    return 0xFFFFLL;
  }

  v4 = v2 + 1;
  v5 = *v2;
  if ((*v2 & 0x80000000) == 0)
  {
    a1[2] = v4;
    return v5;
  }

  v7 = a1[1];
  if ((v5 + 62) > 0x32u)
  {
    *(v7 + 65) = v5;
    *(v7 + 64) = 1;
    *a2 = 12;
    goto LABEL_42;
  }

  v8 = *v2;
  if (v5 <= 0xDF)
  {
    v9 = v5 > 0xEF;
  }

  else
  {
    v9 = (v5 > 0xEF) + 1;
  }

  if (&v4[v9 + 1] <= v3)
  {
    v17 = v5 << 6;
    v18 = *v4;
    if (v9)
    {
      if (v9 == 1)
      {
        if ((a00000000000000[v8 & 0xF] >> (*v4 >> 5)))
        {
          v4 = v2 + 2;
          v19 = v2[2];
          if (v19 <= -65)
          {
            a1[2] = v2 + 3;
            return v19 + ((v17 + v18) << 6) - 925824;
          }
        }

        goto LABEL_37;
      }

      if ((byte_19547AD04[v18 >> 4] >> (v5 & 7)))
      {
        v4 = v2 + 2;
        v22 = v2[2];
        if (v22 <= -65)
        {
          v4 = v2 + 3;
          v23 = v2[3];
          if (v23 <= -65)
          {
            a1[2] = v2 + 4;
            v20 = ((v17 + v18) << 12) + (v22 << 6);
            v21 = v23 - 63447168;
            return (v20 + v21);
          }
        }
      }
    }

    else if (v18 <= -65)
    {
      a1[2] = v2 + 2;
      v20 = v17 + v18;
      v21 = -12416;
      return (v20 + v21);
    }

LABEL_37:
    v24 = 0;
    a1[2] = v4;
    do
    {
      v25 = *v2++;
      *(v7 + 65 + v24++) = v25;
    }

    while (v2 < v4);
    *(v7 + 64) = v24;
    v6 = 12;
    goto LABEL_5;
  }

  *(v7 + 65) = v5;
  *a2 = 11;
  if (v4 >= a1[3])
  {
    v16 = 1;
    goto LABEL_41;
  }

  v10 = (v5 > 0xDF) ^ (v5 > 0xEF);
  v11 = 1 << (v5 & 7);
  v12 = v8 & 0xF;
  v13 = 1;
  while (1)
  {
    v14 = *v4;
    v15 = *v4;
    if (v9)
    {
      if (v13 < 2)
      {
        break;
      }
    }

    if (v14 >= -64)
    {
      goto LABEL_40;
    }

LABEL_21:
    v16 = v13 + 1;
    *(v7 + 65 + v13) = v15;
    ++v4;
    ++v13;
    if (v4 >= a1[3])
    {
      goto LABEL_41;
    }
  }

  if (v10)
  {
    if ((a00000000000000[v12] & (1 << (v15 >> 5))) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_21;
  }

  if ((byte_19547AD04[v14 >> 4] & v11) != 0)
  {
    goto LABEL_21;
  }

LABEL_40:
  *a2 = 12;
  v16 = v13;
LABEL_41:
  *(v7 + 64) = v16;
LABEL_42:
  a1[2] = v4;
  return 0xFFFFLL;
}

uint64_t sub_19524AA94(uint64_t result, void *a2, int *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(v3 + 64);
  if (v6 < 1)
  {
    v6 = 0;
    LOBYTE(v7) = 0;
    v8 = 0;
  }

  else
  {
    v8 = *(v3 + 72);
    v7 = *(v3 + 76);
  }

  v9 = *(result + 32);
  v10 = v6 + v5 - v4;
  if (v10 < v7)
  {
LABEL_27:
    if (v8)
    {
      *(v3 + 72) = 0;
      *(v3 + 64) = 0;
      v21 = v6;
      goto LABEL_60;
    }

    v22 = a2[2];
    while (1)
    {
      if (v10 < 1)
      {
        v4 = v22;
LABEL_45:
        if (*a3 <= 0 && v4 < v5)
        {
          if (v9 == *(result + 40))
          {
            v34 = 15;
          }

          else
          {
            v32 = *v4;
            if (*v4 < 0)
            {
              if (v32 <= 0xEF)
              {
                v52 = 2;
              }

              else
              {
                v52 = 3;
              }

              if (v32 > 0xDF)
              {
                ++v52;
              }

              if (v32 - 194 <= 0x32)
              {
                v33 = v52;
              }

              else
              {
                v33 = 0;
              }
            }

            else
            {
              v33 = 1;
            }

            if (v5 - v4 >= v33)
            {
              v34 = -127;
            }

            else
            {
              *(v3 + 65) = v32;
              if (++v4 == v5)
              {
                v59 = 1;
LABEL_119:
                *(v3 + 64) = v59;
                *(v3 + 72) = v32;
                *(v3 + 76) = v33;
                goto LABEL_122;
              }

              v53 = 1;
              while (1)
              {
                v54 = *v4;
                v55 = *v4;
                if (v33 < 3u || v53 >= 2)
                {
                  v58 = v54 < -64;
                }

                else
                {
                  if (v33 == 3)
                  {
                    v56 = a00000000000000[v32 & 0xF];
                    v57 = v55 >> 5;
                  }

                  else
                  {
                    v56 = byte_19547AD04[v54 >> 4];
                    v57 = v32 & 7;
                  }

                  v58 = v56 & (1 << v57);
                }

                if (!v58)
                {
                  break;
                }

                v32 = v54 + (v32 << 6);
                v59 = v53 + 1;
                *(v3 + 65 + v53) = v55;
                ++v4;
                ++v53;
                if (v4 == v5)
                {
                  goto LABEL_119;
                }
              }

              *(v3 + 64) = v53;
              v34 = 12;
            }
          }

          *a3 = v34;
        }

LABEL_122:
        a2[2] = v4;
        *(result + 32) = v9;
        return result;
      }

      v4 = v22;
      while (1)
      {
        v24 = *v4++;
        v23 = v24;
        v8 = v24;
        if ((v24 & 0x80000000) == 0)
        {
          *v9++ = v8;
          v25 = -1;
          goto LABEL_43;
        }

        if (v8 >= 0xE0)
        {
          break;
        }

        if (v8 < 0xC2)
        {
          goto LABEL_89;
        }

        v29 = *v4;
        if (v29 > -65)
        {
          goto LABEL_54;
        }

        v4 = v22 + 2;
        *v9 = v8;
        v9[1] = v29;
        v9 += 2;
        v25 = -2;
LABEL_43:
        v22 = v4;
        v30 = __OFADD__(v10, v25);
        v10 += v25;
        if ((v10 < 0) ^ v30 | (v10 == 0))
        {
          goto LABEL_45;
        }
      }

      if (v8 <= 0xEF)
      {
        break;
      }

      if (v8 - 194 > 0x32)
      {
LABEL_89:
        LOBYTE(v6) = 0;
        LOBYTE(v21) = 1;
        goto LABEL_90;
      }

LABEL_54:
      v6 = 0;
      if (v8 <= 0xEF)
      {
        LOBYTE(v7) = 2;
      }

      else
      {
        LOBYTE(v7) = 3;
      }

      if (v8 > 0xDF)
      {
        LOBYTE(v7) = v7 + 1;
      }

      v21 = 1;
LABEL_60:
      if (v21 < v7)
      {
        v35 = v4;
        LOBYTE(v36) = v21;
        while (v35 < v5)
        {
          v37 = *v35;
          if (v7 < 3u || v36 >= 2u)
          {
            if (v37 >= -64)
            {
              goto LABEL_77;
            }
          }

          else
          {
            if (v7 == 3)
            {
              v38 = a00000000000000[v8 & 0xF];
              v39 = v37 >> 5;
            }

            else
            {
              v38 = byte_19547AD04[v37 >> 4];
              LOBYTE(v39) = v8 & 7;
            }

            if ((v38 & (1 << v39)) == 0)
            {
LABEL_77:
              LOBYTE(v21) = v36;
              v4 = v35;
              goto LABEL_78;
            }
          }

          v36 = (v36 + 1);
          ++v35;
          v8 = v37 + (v8 << 6);
          if (v36 >= v7)
          {
            v40 = v7;
            goto LABEL_80;
          }
        }

        v41 = v6;
        if (v6 >= v36)
        {
          v4 = &v35[v6 - v36];
        }

        else
        {
          v42 = &v4[-v21];
          do
          {
            v43 = v41 + 1;
            *(v3 + 65 + v41) = v42[v41];
            v41 = v43;
          }

          while (v43 < v36);
          v4 = &v42[v43];
        }

        *(v3 + 64) = v36;
        *(v3 + 72) = v8;
        *(v3 + 76) = v7;
        goto LABEL_122;
      }

LABEL_78:
      v40 = v21;
      if (v21 != v7)
      {
        v22 = &v4[v6 - v21];
        if (v6 < v21)
        {
LABEL_90:
          v49 = (v3 + v6 + 65);
          v50 = v21 - v6;
          do
          {
            v51 = *v22++;
            *v49++ = v51;
            --v50;
          }

          while (v50);
        }

        *(v3 + 64) = v21;
        a2[2] = v22;
        *(result + 32) = v9;
        v12 = 12;
        goto LABEL_30;
      }

      v35 = v4;
LABEL_80:
      if (v6 < 1)
      {
        v47 = 0;
      }

      else
      {
        v44 = (v3 + 65);
        v45 = v6;
        do
        {
          v46 = *v44++;
          *v9++ = v46;
          --v45;
        }

        while (v45);
        v47 = v6;
      }

      v22 = &v35[v6 - v40];
      while (v47 < v7)
      {
        v48 = *v22++;
        *v9++ = v48;
        v47 = (v47 + 1);
      }

      v10 -= v40;
    }

    v26 = a00000000000000[v23 & 0xF];
    v27 = *v4;
    if (((v26 >> (*v4 >> 5)) & 1) == 0)
    {
      goto LABEL_54;
    }

    v28 = v22[2];
    if (v28 > -65)
    {
      goto LABEL_54;
    }

    v4 = v22 + 3;
    *v9 = v8;
    v9[1] = v27;
    v9[2] = v28;
    v9 += 3;
    v25 = -3;
    goto LABEL_43;
  }

  v11 = *(result + 40) - v9;
  if (v11 >= v7)
  {
    if (v10 >= v11)
    {
      v10 = *(result + 40) - v9;
    }

    v13 = v10 - v6;
    if (v13 >= 1 && v4[v13 - 1] < 0)
    {
      v14 = v4[v13 - 1];
      if (v14 - 194 > 0x32)
      {
        if (v14 <= 0xBF && v13 != 1)
        {
          v15 = v4[v13 - 2];
          if ((v15 - 224) > 0x14)
          {
            if (v15 <= -65)
            {
              if (v13 < 3)
              {
                v13 = 2;
              }

              else
              {
                v20 = v4[v13 - 3];
                if (v20 - 240) <= 4 && ((byte_19547AD04[v15 >> 4] >> (v20 & 7)))
                {
                  v13 -= 3;
                }
              }
            }
          }

          else
          {
            v16 = v15 > 0xEF;
            v17 = v15 & 7;
            v18 = &a00000000000000[v15 & 0xF];
            v19 = v14 >> 5;
            if (v16)
            {
              LOBYTE(v19) = v17;
              v18 = &byte_19547AD04[v4[v13 - 1] >> 4];
            }

            if ((*v18 >> v19))
            {
              v13 -= 2;
            }
          }
        }
      }

      else
      {
        --v13;
      }
    }

    v10 = v13 + v6;
    goto LABEL_27;
  }

  v12 = -127;
LABEL_30:
  *a3 = v12;
  return result;
}

void *sub_19524B004(void *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  v5 = result[3];
  v4 = result[4];
  v6 = result[5];
  v7 = *(v2 + 76);
  if (*(v2 + 72))
  {
    v8 = *(v2 + 72);
  }

  else
  {
    v8 = 64;
  }

  LODWORD(v9) = *(v2 + 76) & 3;
  v10 = *(v2 + 64);
  v11 = (v2 + 65);
  if ((v7 & 3) == 0 || v10 < 1 || v4 >= v6)
  {
    v14 = result[5];
LABEL_13:
    v15 = v5 - v3;
    v9 = (v14 - v4) >> 1;
    if (v9 >= v5 - v3)
    {
      LODWORD(v9) = v5 - v3;
    }

    if (v9 >= 1)
    {
      do
      {
        v16 = *v3;
        if (((v16 - 80) & 0x80) != 0)
        {
          if (v16 > 0x20)
          {
            goto LABEL_26;
          }

          if (v16 != 32)
          {
            v8 = 64;
          }

          *v4 = v16;
        }

        else
        {
          v17 = v8 + v16 - 144;
          if (v17 >= 12288)
          {
            goto LABEL_26;
          }

          *v4 = v17;
          v8 = v17 & 0xFFFFFF80 | 0x40;
        }

        ++v4;
        ++v3;
        v18 = __OFSUB__(v9, 1);
        LODWORD(v9) = v9 - 1;
      }

      while (!(((v9 & 0x80000000) != 0) ^ v18 | (v9 == 0)));
      LODWORD(v9) = 0;
    }

    goto LABEL_26;
  }

LABEL_75:
  v15 = v7 >> 2;
  while (v3 < v5)
  {
    v36 = *v3++;
    v35 = v36;
    v11[v10] = v36;
    if (v36 > 0x20uLL)
    {
      v37 = v35 - 13;
    }

    else
    {
      v37 = byte_19547AD7C[v35];
    }

    LOBYTE(v10) = v10 + 1;
    v38 = 59049 * v37;
    if (v9 == 2)
    {
      v38 = 243 * v37;
    }

    if (v9 != 1)
    {
      v37 = v38;
    }

    if (v37 < 0)
    {
      goto LABEL_106;
    }

    v15 += v37;
    LODWORD(v9) = v9 - 1;
    if (!v9)
    {
      v25 = v15 + v8;
      if ((v15 + v8) > 0x10FFFF)
      {
        LOBYTE(v10) = 0;
LABEL_106:
        v27 = v3;
LABEL_107:
        *a2 = 12;
        v3 = v27;
        goto LABEL_108;
      }

      LODWORD(v9) = 0;
      LOBYTE(v10) = 0;
LABEL_91:
      if (v25 - 55204 >= 0xFFFF589C)
      {
        if (v25 >> 10 <= 0x2A)
        {
          v40 = v25 & 0xFF80 | 0x40;
        }

        else
        {
          v40 = 49617;
        }

        if (v25 - 19968 >= 0x51A6)
        {
          v41 = v40;
        }

        else
        {
          v41 = 30481;
        }

        if (v25 >> 5 >= 0x185)
        {
          v8 = v41;
        }

        else
        {
          v8 = 12400;
        }
      }

      else
      {
        v8 = v25 & 0x7FFFFF80 | 0x40;
        if (HIWORD(v25))
        {
          *v4 = (v25 >> 10) - 10304;
          v39 = v25 & 0x3FF | 0xDC00;
          if ((v4 + 1) < v6)
          {
            v4[1] = v39;
            v4 += 2;
            goto LABEL_26;
          }

          *(v2 + 144) = v39;
          *(v2 + 93) = 1;
          ++v4;
LABEL_47:
          *a2 = 15;
LABEL_48:
          *(v2 + 72) = v8;
          v24 = v9 | (4 * v15);
          goto LABEL_109;
        }
      }

      *v4++ = v25;
LABEL_26:
      v19 = v3;
      v20 = v8;
LABEL_27:
      v3 = v19 + 1;
      v21 = v20;
      do
      {
        v8 = v21;
        if ((v3 - 1) >= v5)
        {
          --v3;
          goto LABEL_44;
        }

        if (v4 >= v6)
        {
          v8 = v20;
          v3 = v19;
          goto LABEL_47;
        }

        v22 = *(v3 - 1);
        if (((v22 - 80) & 0x80) == 0)
        {
          v25 = v21 + v22 - 144;
          if (v25 >= 12288)
          {
            goto LABEL_91;
          }

          *v4++ = v25;
          v8 = v25 & 0xFFFFFF80 | 0x40;
          v14 = result[5];
          goto LABEL_13;
        }

        if (v22 <= 0x20)
        {
          if (v22 == 32)
          {
            v20 = v21;
          }

          else
          {
            v20 = 64;
          }

          *v4++ = v22;
          v19 = v3;
          goto LABEL_27;
        }

        if ((v22 - 37) <= 0xD5u && v3 < v5)
        {
          if (v22 <= 0x8F)
          {
            v26 = -19504;
          }

          else
          {
            v26 = -50480;
          }

          v15 = v26 + 243 * v22;
          v27 = v3 + 1;
          v28 = *v3;
          if (v28 >= 0x21)
          {
            v29 = v28 - 13;
          }

          else
          {
            v29 = byte_19547AD7C[*v3];
            if ((0x10C00FF81uLL >> v28))
            {
LABEL_110:
              *(v2 + 65) = v22;
              *(v2 + 66) = *v3;
              LOBYTE(v10) = 2;
              goto LABEL_107;
            }
          }

          v25 = v15 + v21 + v29;
          if (v25 < 0x110000)
          {
            ++v3;
            goto LABEL_91;
          }

          goto LABEL_110;
        }

        ++v3;
        v21 = 64;
      }

      while (v22 == 255);
      *v11 = v22;
      --v3;
      if (v22 == 33)
      {
        v30 = -14536567;
      }

      else
      {
        v30 = 59049 * v22 - 2195326;
      }

      if (v22 == 33)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      if (v22 >= 0x25)
      {
        v30 = 243 * v22 - 19504;
        v31 = 1;
      }

      v32 = 59049 * v22 - 14810786;
      if (v22 == 254)
      {
        v32 = 187660;
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      if (v22 > 0xFA)
      {
        v34 = v33;
      }

      else
      {
        v32 = 243 * v22 - 50480;
        v34 = 1;
      }

      if (v22 >= 0x50)
      {
        LODWORD(v9) = v34;
      }

      else
      {
        v32 = v30;
        LODWORD(v9) = v31;
      }

      v7 = v9 | (4 * v32);
      LOBYTE(v10) = 1;
      goto LABEL_75;
    }
  }

LABEL_44:
  if (*a2 != 12)
  {
    goto LABEL_48;
  }

LABEL_108:
  v24 = 0;
  *(v2 + 72) = 64;
LABEL_109:
  *(v2 + 76) = v24;
  *(v2 + 64) = v10;
  result[2] = v3;
  result[4] = v4;
  return result;
}

void *sub_19524B404(void *result, int *a2)
{
  v2 = 0;
  v3 = result[1];
  v4 = result[2];
  v6 = result[3];
  v5 = result[4];
  v8 = result[5];
  v7 = result[6];
  v9 = *(v3 + 76);
  if (*(v3 + 72))
  {
    v10 = *(v3 + 72);
  }

  else
  {
    v10 = 64;
  }

  LODWORD(v11) = *(v3 + 76) & 3;
  v12 = *(v3 + 64);
  v13 = (v3 + 65);
  if ((v9 & 3) == 0 || v12 < 1 || v5 >= v8)
  {
    v16 = result[5];
    goto LABEL_13;
  }

  v21 = -1;
LABEL_72:
  v17 = v9 >> 2;
  v2 += v11;
  do
  {
    if (v4 >= v6)
    {
      goto LABEL_92;
    }

    v35 = *v4++;
    v34 = v35;
    v13[v12] = v35;
    if (v35 > 0x20uLL)
    {
      v36 = v34 - 13;
    }

    else
    {
      v36 = byte_19547AD7C[v34];
    }

    LOBYTE(v12) = v12 + 1;
    v37 = 59049 * v36;
    if (v11 == 2)
    {
      v37 = 243 * v36;
    }

    if (v11 != 1)
    {
      v36 = v37;
    }

    if (v36 < 0)
    {
      v27 = 12;
      goto LABEL_90;
    }

    v17 += v36;
    LODWORD(v11) = v11 - 1;
  }

  while (v11);
  v28 = v17 + v10;
  if (v17 + v10 > 0x10FFFF)
  {
    v27 = 12;
    v22 = v10;
    LOBYTE(v12) = 0;
    goto LABEL_91;
  }

  LOBYTE(v12) = 0;
LABEL_85:
  while (2)
  {
    if (v28 - 55204 >= 0xFFFF589C)
    {
      v10 = 12400;
      if (v28 >> 5 >= 0x185)
      {
        v10 = 30481;
        if (v28 - 19968 >= 0x51A6)
        {
          v10 = 49617;
          if (v28 >> 10 <= 0x2A)
          {
            v10 = v28 & 0xFF80 | 0x40;
          }
        }
      }

      goto LABEL_102;
    }

    v10 = v28 & 0x7FFFFF80 | 0x40;
    if (!HIWORD(v28))
    {
LABEL_102:
      *v5++ = v28;
      v39 = 4;
      v38 = v7;
      goto LABEL_103;
    }

    *v5 = (v28 >> 10) - 10304;
    if ((v5 + 1) >= v8)
    {
      *v7++ = v21;
      *(v3 + 144) = v28 & 0x3FF | 0xDC00;
      v27 = 15;
      v42 = 1;
      v43 = 93;
      ++v5;
      goto LABEL_107;
    }

    v5[1] = v28 & 0x3FF | 0xDC00;
    v5 += 2;
    *v7 = v21;
    v38 = v7 + 1;
    v39 = 8;
LABEL_103:
    v7 = (v7 + v39);
    *v38 = v21;
LABEL_26:
    v22 = v10;
LABEL_27:
    v23 = 0;
    v24 = v22;
    while (1)
    {
      v10 = v24;
      if (&v4[v23] >= v6)
      {
        v4 += v23;
        goto LABEL_92;
      }

      if (v5 >= v8)
      {
        v27 = 15;
        goto LABEL_91;
      }

      v25 = v4[v23];
      if (((v25 - 80) & 0x80) == 0)
      {
        v28 = v24 + v25 - 144;
        v4 += v23 + 1;
        v21 = v23 + v2;
        v2 += v23 + 1;
        if (v28 >= 12288)
        {
          goto LABEL_85;
        }

        *v5++ = v28;
        *v7++ = v21;
        v10 = v28 & 0xFFFFFF80 | 0x40;
        v16 = result[5];
LABEL_13:
        v17 = v6 - v4;
        v11 = (v16 - v5) >> 1;
        if (v11 >= v6 - v4)
        {
          LODWORD(v11) = v6 - v4;
        }

        if (v11 >= 1)
        {
          do
          {
            v18 = *v4;
            if (((v18 - 80) & 0x80) != 0)
            {
              if (v18 > 0x20)
              {
                goto LABEL_26;
              }

              if (v18 != 32)
              {
                v10 = 64;
              }

              *v5 = v18;
              *v7 = v2;
            }

            else
            {
              v19 = v10 + v18 - 144;
              if (v19 >= 12288)
              {
                goto LABEL_26;
              }

              *v5 = v19;
              *v7 = v2;
              v10 = v19 & 0xFFFFFF80 | 0x40;
            }

            ++v2;
            ++v7;
            ++v5;
            ++v4;
            v20 = __OFSUB__(v11, 1);
            LODWORD(v11) = v11 - 1;
          }

          while (!(((v11 & 0x80000000) != 0) ^ v20 | (v11 == 0)));
          LODWORD(v11) = 0;
        }

        goto LABEL_26;
      }

      if (v25 <= 0x20)
      {
        if (v25 == 32)
        {
          v22 = v24;
        }

        else
        {
          v22 = 64;
        }

        *v5++ = v25;
        *v7++ = v2 + v23;
        v4 += v23 + 1;
        v2 += v23 + 1;
        goto LABEL_27;
      }

      if ((v25 - 37) <= 0xD5u && &v4[v23 + 1] < v6)
      {
        break;
      }

      ++v23;
      v24 = 64;
      if (v25 != 255)
      {
        *v13 = v25;
        v4 += v23;
        v21 = v2 - 1 + v23;
        v2 += v23;
        if (v25 < 0x50)
        {
          if (v25 < 0x25)
          {
            LODWORD(v11) = 3;
            v12 = -14536567;
            if (v25 != 33)
            {
              v12 = 59049 * v25 - 2195326;
              LODWORD(v11) = 2;
            }

            goto LABEL_71;
          }

          v33 = -19504;
        }

        else
        {
          if (v25 > 0xFA)
          {
            if (v25 == 254)
            {
              v12 = 187660;
            }

            else
            {
              v12 = 59049 * v25 - 14810786;
            }

            if (v25 == 254)
            {
              LODWORD(v11) = 3;
            }

            else
            {
              LODWORD(v11) = 2;
            }

            goto LABEL_71;
          }

          v33 = -50480;
        }

        v12 = v33 + 243 * v25;
        LODWORD(v11) = 1;
LABEL_71:
        v9 = v11 | (4 * v12);
        LOBYTE(v12) = 1;
        goto LABEL_72;
      }
    }

    if (v25 <= 0x8F)
    {
      v29 = -19504;
    }

    else
    {
      v29 = -50480;
    }

    v17 = v29 + 243 * v25;
    v30 = &v4[v23];
    v4 += v23 + 2;
    v31 = v30[1];
    v21 = v23 + v2;
    if (v31 >= 0x21)
    {
      v32 = v31 - 13;
    }

    else
    {
      v32 = byte_19547AD7C[v30[1]];
      if ((0x10C00FF81uLL >> v31))
      {
        break;
      }
    }

    v28 = v17 + v10 + v32;
    if (HIWORD(v28) <= 0x10u)
    {
      v2 = v21 + 2;
      continue;
    }

    break;
  }

  *v13 = v25;
  v42 = v30[1];
  LOBYTE(v12) = 2;
  v27 = 12;
  v43 = 66;
LABEL_107:
  *(v3 + v43) = v42;
LABEL_90:
  v22 = v10;
LABEL_91:
  *a2 = v27;
  v10 = v22;
LABEL_92:
  v40 = v11 | (4 * v17);
  if (*a2 == 12)
  {
    v41 = 64;
  }

  else
  {
    v41 = v10;
  }

  if (*a2 == 12)
  {
    v40 = 0;
  }

  *(v3 + 72) = v41;
  *(v3 + 76) = v40;
  *(v3 + 64) = v12;
  result[2] = v4;
  result[4] = v5;
  result[6] = v7;
  return result;
}

uint64_t sub_19524B894(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v7 = *(result + 24);
  v6 = *(result + 32);
  v8 = *(result + 40) - v6;
  v9 = *(v4 + 84);
  if (*(v4 + 80))
  {
    v10 = *(v4 + 80);
  }

  else
  {
    v10 = 64;
  }

  if (v9)
  {
    v11 = v8 <= 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(result + 16);
  v13 = *(result + 40) - v6;
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_33:
  if (v12 >= v7)
  {
    v9 = -v9;
    v5 = v12;
    goto LABEL_56;
  }

  v20 = *v12;
  v21 = (v20 & 0xFC00) == 56320;
  v22 = v20 + (v9 << 10) - 56613888;
  v5 = &v12[v21];
  if (v21)
  {
    v9 = v22;
  }

  while (1)
  {
    result = v9 - v10;
    v23 = v9 >> 10 <= 0x2A ? v9 & 0xFF80 | 0x40 : 49617;
    v24 = v9 - 19968 >= 0x51A6 ? v23 : 30481;
    v25 = v9 >> 5 >= 0x185 ? v24 : 12400;
    v10 = v9 - 55204 <= 0xFFFF589B ? v9 & 0xFFFFFF80 | 0x40 : v25;
    if ((result + 64) > 0x7F)
    {
      break;
    }

    *v6++ = result - 112;
    v8 = v13 - 1;
    if (v9 < 12288)
    {
LABEL_9:
      if (v8 >= ((v7 - v5) >> 1))
      {
        v8 = (v7 - v5) >> 1;
      }

      if (v8 >= 1)
      {
        v14 = v8 + 1;
        do
        {
          v9 = *v5;
          if (v9 >> 12 > 2)
          {
            break;
          }

          if (v9 > 0x20)
          {
            v16 = v9 - v10;
            if (v9 - v10 + 64 > 0x7F)
            {
              break;
            }

            v10 = v9 & 0x3F80 | 0x40;
            LOBYTE(v15) = v16 - 112;
          }

          else
          {
            if (v9 != 32)
            {
              v10 = 64;
            }

            v15 = *v5;
          }

          *v6++ = v15;
          ++v5;
          --v14;
        }

        while (v14 > 1);
      }

      v8 = *(v3 + 40) - v6;
    }

LABEL_22:
    if (v5 >= v7)
    {
      goto LABEL_56;
    }

    if (v8 < 1)
    {
      goto LABEL_31;
    }

    v17 = 0;
    v18 = 1;
    v19 = v5;
    while (1)
    {
      v12 = v19 + 1;
      v9 = v5[v17];
      if (v9 > 0x20)
      {
        break;
      }

      if (v9 != 32)
      {
        v10 = 64;
      }

      v6[v17] = v9;
      if (v12 >= v7)
      {
        v5 = v19 + 1;
        v6 += v17 + 1;
        goto LABEL_56;
      }

      ++v17;
      --v18;
      ++v19;
      if (v8 + v18 < 2)
      {
        v6 += v17;
        v5 = v12;
        goto LABEL_31;
      }
    }

    v6 += v17;
    v13 = v8 - v17;
    if ((v9 & 0xFC00) == 0xD800)
    {
      goto LABEL_33;
    }

    v5 = v19 + 1;
  }

  if ((result + 10513) <= 0x5221)
  {
    v8 = v13 - 2;
    if (v13 >= 2)
    {
      if ((result & 0x80000000) != 0)
      {
        v27 = (-64 - result) / 0xF3u;
        v30 = (-64 - result) % 0xF3u;
        v26 = 243 - v30;
        if (v30)
        {
          LOBYTE(v27) = ~v27;
        }

        else
        {
          v27 = -v27;
        }

        LOBYTE(v27) = v27 + 80;
        if (!v30)
        {
          v26 = 0u;
          *v6 = v27;
          goto LABEL_74;
        }
      }

      else
      {
        v26 = (result - 64) % 243;
        LOWORD(v27) = (result - 64) / 243 + 208;
      }

      *v6 = v27;
      if (v26 >= 20)
      {
        v31 = v26 + 13;
LABEL_75:
        v6[1] = v31;
        v6 += 2;
        goto LABEL_22;
      }

LABEL_74:
      v31 = byte_19547AD9D[v26];
      goto LABEL_75;
    }
  }

  result = sub_19524C11C(result);
  if (result >> 26)
  {
    v28 = 4;
  }

  else
  {
    v28 = result >> 24;
  }

  v29 = v28 - v13;
  if (v28 <= v13)
  {
    if (v28 == 3)
    {
      goto LABEL_64;
    }

    if (v28 == 4)
    {
      *v6++ = BYTE3(result);
LABEL_64:
      *v6 = BYTE2(result);
      v6[1] = BYTE1(result);
      v6[2] = result;
      v6 += 3;
    }

    v8 = v13 - v28;
    goto LABEL_22;
  }

  v32 = (v4 + 104);
  switch(v29)
  {
    case 1u:
      goto LABEL_82;
    case 2u:
      goto LABEL_81;
    case 3u:
      v32 = (v4 + 105);
      *(v4 + 104) = BYTE2(result);
LABEL_81:
      *v32++ = BYTE1(result);
LABEL_82:
      *v32 = result;
      break;
  }

  *(v4 + 91) = v29;
  v33 = result >> (8 * v29);
  switch(v13)
  {
    case 1u:
      goto LABEL_88;
    case 2u:
      goto LABEL_87;
    case 3u:
      *v6++ = BYTE2(v33);
LABEL_87:
      *v6++ = BYTE1(v33);
LABEL_88:
      *v6++ = v33;
      break;
  }

LABEL_31:
  *a2 = 15;
LABEL_56:
  *(v4 + 80) = v10;
  *(v4 + 84) = -v9 & (v9 >> 31);
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  return result;
}

uint64_t sub_19524BC80(uint64_t result, _DWORD *a2)
{
  v2 = result;
  v3 = 0;
  v5 = *(result + 8);
  v4 = *(result + 16);
  v7 = *(result + 24);
  v6 = *(result + 32);
  v8 = *(result + 40) - v6;
  v9 = *(result + 48);
  v10 = *(v5 + 84);
  if (*(v5 + 80))
  {
    v11 = *(v5 + 80);
  }

  else
  {
    v11 = 64;
  }

  if (v10)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v8 <= 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = *(result + 16);
    goto LABEL_13;
  }

LABEL_38:
  if (v4 >= v7)
  {
    v10 = -v10;
    v14 = v4;
    goto LABEL_55;
  }

  v23 = *v4;
  v24 = (v23 & 0xFC00) == 56320;
  v25 = v23 + (v10 << 10) - 56613888;
  v14 = &v4[v24];
  if (v24)
  {
    v10 = v25;
    ++v3;
  }

  while (1)
  {
    result = v10 - v11;
    if (v10 - 55204 <= 0xFFFF589B)
    {
      v26 = v10 & 0xFFFFFF80;
LABEL_43:
      v11 = v26 | 0x40;
      goto LABEL_47;
    }

    v11 = 12400;
    if (v10 >> 5 >= 0x185)
    {
      v11 = 30481;
      if (v10 - 19968 >= 0x51A6)
      {
        v11 = 49617;
        if (v10 >> 10 <= 0x2A)
        {
          v26 = v10 & 0xFF80;
          goto LABEL_43;
        }
      }
    }

LABEL_47:
    if ((result + 64) > 0x7F)
    {
      if ((result + 10513) <= 0x5221 && v8 >= 2)
      {
        if ((result & 0x80000000) != 0)
        {
          v32 = (-64 - result) / 0xF3u;
          v33 = (-64 - result) % 0xF3u;
          v27 = 243 - v33;
          if (v33)
          {
            v34 = ~v32;
          }

          else
          {
            v34 = -v32;
          }

          LOBYTE(v28) = v34 + 80;
          if (!v33)
          {
            v27 = 0u;
            *v6 = v28;
            goto LABEL_76;
          }
        }

        else
        {
          v27 = (result - 64) % 243;
          v28 = (result - 64) / 243 + 208;
        }

        *v6 = v28;
        if (v27 >= 20)
        {
          v35 = v27 + 13;
LABEL_77:
          v6[1] = v35;
          v6 += 2;
          v19 = v9 + 2;
          *v9 = v12;
          v9[1] = v12;
          v8 -= 2;
          goto LABEL_27;
        }

LABEL_76:
        v35 = byte_19547AD9D[v27];
        goto LABEL_77;
      }

      v40 = v12;
      v41 = a2;
      result = sub_19524C11C(result);
      v29 = result >> 24;
      if (result >> 26)
      {
        v29 = 4;
      }

      v30 = v29 - v8;
      if (v29 <= v8)
      {
        if (v29 == 2)
        {
          v31 = v40;
          a2 = v41;
        }

        else
        {
          v31 = v40;
          a2 = v41;
          if (v29 != 3)
          {
            if (v29 != 4)
            {
LABEL_74:
              v8 -= v29;
LABEL_26:
              v19 = v9;
              goto LABEL_27;
            }

            *v6++ = BYTE3(result);
            *v9++ = v40;
          }

          *v6++ = BYTE2(result);
          *v9++ = v40;
        }

        *v6 = BYTE1(result);
        *v9 = v31;
        v6[1] = result;
        v6 += 2;
        v9[1] = v31;
        v9 += 2;
        goto LABEL_74;
      }

      v36 = (v5 + 104);
      if (v30 == 1)
      {
        v38 = v40;
        v37 = v41;
      }

      else
      {
        v38 = v40;
        v37 = v41;
        if (v30 != 2)
        {
          if (v30 != 3)
          {
            goto LABEL_88;
          }

          v36 = (v5 + 105);
          *(v5 + 104) = BYTE2(result);
        }

        *v36++ = BYTE1(result);
      }

      *v36 = result;
LABEL_88:
      *(v5 + 91) = v30;
      v39 = result >> (8 * v30);
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          if (v8 != 3)
          {
LABEL_94:
            *v37 = 15;
            goto LABEL_55;
          }

          *v6++ = BYTE2(v39);
          *v9++ = v38;
        }

        *v6++ = BYTE1(v39);
        *v9++ = v38;
      }

      *v6++ = v39;
      *v9++ = v38;
      goto LABEL_94;
    }

    *v6++ = result - 112;
    *v9++ = v12;
    --v8;
    v19 = v9;
    if (v10 < 12288)
    {
LABEL_13:
      v15 = (v7 - v14) >> 1;
      if (v8 < v15)
      {
        LODWORD(v15) = v8;
      }

      if (v15 >= 1)
      {
        v16 = v15 + 1;
        do
        {
          v10 = *v14;
          if (v10 >> 12 > 2)
          {
            break;
          }

          if (v10 > 0x20)
          {
            v18 = v10 - v11;
            if (v10 - v11 + 64 > 0x7F)
            {
              break;
            }

            v11 = v10 & 0x3F80 | 0x40;
            LOBYTE(v17) = v18 - 112;
          }

          else
          {
            if (v10 != 32)
            {
              v11 = 64;
            }

            v17 = *v14;
          }

          *v6++ = v17;
          *v9++ = v3++;
          ++v14;
          --v16;
        }

        while (v16 > 1);
      }

      v8 = *(v2 + 40) - v6;
      goto LABEL_26;
    }

LABEL_27:
    if (v14 >= v7)
    {
      v9 = v19;
      goto LABEL_55;
    }

    if (v8 < 1)
    {
      break;
    }

    v20 = 0;
    v21 = 1;
    v22 = v14;
    v9 = v19;
    while (1)
    {
      v4 = v22 + 1;
      v10 = v14[v20];
      if (v10 > 0x20)
      {
        break;
      }

      if (v10 != 32)
      {
        v11 = 64;
      }

      v6[v20] = v10;
      ++v9;
      v19[v20] = v3 + v20;
      if (v4 >= v7)
      {
        v14 = v22 + 1;
        v6 += v20 + 1;
        goto LABEL_55;
      }

      ++v20;
      --v21;
      ++v22;
      if (v8 + v21 < 2)
      {
        v6 += v20;
        v14 = v4;
        goto LABEL_36;
      }
    }

    v6 += v20;
    v8 -= v20;
    v12 = v20 + v3;
    v3 += v20 + 1;
    if ((v10 & 0xFC00) == 0xD800)
    {
      goto LABEL_38;
    }

    v14 = v22 + 1;
  }

  v9 = v19;
LABEL_36:
  *a2 = 15;
LABEL_55:
  *(v5 + 80) = v11;
  *(v5 + 84) = -v10 & (v10 >> 31);
  *(v2 + 16) = v14;
  *(v2 + 32) = v6;
  *(v2 + 48) = v9;
  return result;
}

uint64_t sub_19524C11C(int a1)
{
  if (a1 < -64)
  {
    if (a1 >= 0xFFFFD6EF)
    {
      v3 = (((-64 - a1 - ((3507 * (-64 - a1)) >> 16)) >> 1) + ((3507 * (-64 - a1)) >> 16)) >> 7;
      if (-64 - a1 == 243 * v3)
      {
        v4 = -v3;
      }

      else
      {
        v4 = ~v3;
      }

      if (-64 - a1 == 243 * v3)
      {
        v5 = 0;
      }

      else
      {
        v5 = 243 - (-64 - a1 - 243 * v3);
      }

      if (v5 < 0x14u)
      {
        v2 = byte_19547AD9D[v5];
      }

      else
      {
        v2 = (v5 + 13);
      }

      v11 = (v4 << 8) + 20480;
      return v11 | v2 | 0x2000000u;
    }

    if (a1 > 0xFFFD22F3)
    {
      v8 = (-10513 - a1) / 0xF3u;
      v9 = (-10513 - a1) % 0xF3u;
      if (v9)
      {
        LOWORD(v8) = v8 + 1;
        v10 = 243 - v9;
      }

      else
      {
        v10 = 0;
      }

      if (v10 < 0x14)
      {
        v7 = byte_19547AD9D[v10];
      }

      else
      {
        v7 = v10 + 13;
      }

      v22 = (((v8 - ((3507 * v8) >> 16)) >> 1) + ((3507 * v8) >> 16)) >> 7;
      v23 = v8 - 243 * v22;
      v24 = 243 - v23;
      v25 = v23 == 0;
      if (v23)
      {
        v26 = ~v22;
      }

      else
      {
        v26 = -v22;
      }

      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24;
      }

      if (v27 < 0x14u)
      {
        v21 = byte_19547AD9D[v27];
      }

      else
      {
        v21 = (v27 + 13);
      }

      v37 = (v26 << 16) + 2424832;
      return v37 | v7 | (v21 << 8) | 0x3000000;
    }

    v16 = (-187660 - a1) % 0xF3u;
    if (v16)
    {
      v17 = (-187660 - a1) / 0xF3u + 1;
    }

    else
    {
      v17 = (-187660 - a1) / 0xF3u;
    }

    if (v16)
    {
      v18 = 243 - v16;
    }

    else
    {
      v18 = 0;
    }

    if (v18 < 0x14)
    {
      v19 = byte_19547AD9D[v18];
    }

    else
    {
      v19 = v18 + 13;
    }

    v30 = v17 / 0xF3;
    v31 = v17 % 0xF3;
    v32 = 243 - v31;
    v33 = v31 == 0;
    if (v31)
    {
      v34 = ~v30;
    }

    else
    {
      v34 = -v30;
    }

    if (v33)
    {
      v35 = 0;
    }

    else
    {
      v35 = v32;
    }

    if (v35 < 0x14)
    {
      v36 = byte_19547AD9D[v35];
    }

    else
    {
      v36 = v35 + 13;
    }

    v40 = v36 << 8;
    if (v34 < -223)
    {
      v41 = byte_19547AD9D[v34 + 243];
    }

    else
    {
      v41 = v34 + 256;
    }

    return v19 | v40 | (v41 << 16) | 0x21000000;
  }

  else
  {
    if (a1 <= 10512)
    {
      v1 = (a1 - 64) % 243;
      if (v1 < 20)
      {
        v2 = byte_19547AD9D[(a1 - 64) % 243];
      }

      else
      {
        v2 = (v1 + 13);
      }

      v11 = (((a1 - 64) / 243) << 8) + 53248;
      return v11 | v2 | 0x2000000u;
    }

    if (a1 <= 0x2DD0B)
    {
      v6 = (a1 - 10513) % 0xF3u;
      if (v6 < 0x14)
      {
        v7 = byte_19547AD9D[v6];
      }

      else
      {
        v7 = v6 + 13;
      }

      v20 = ((a1 - 10513) / 0xF3u) - 243 * ((17674763 * ((a1 - 10513) / 0xF3u)) >> 32);
      if (v20 < 0x14)
      {
        v21 = byte_19547AD9D[v20];
      }

      else
      {
        v21 = v20 + 13;
      }

      v37 = (((a1 - 10513) / 0xE6A9u) << 16) + 16449536;
      return v37 | v7 | (v21 << 8) | 0x3000000;
    }

    v13 = a1 - 187660;
    v14 = (a1 - 187660) % 0xF3u;
    if (v14 < 0x14)
    {
      v15 = byte_19547AD9D[v14];
    }

    else
    {
      v15 = v14 + 13;
    }

    v28 = (a1 - 187660) / 0xF3u - 243 * ((17674763 * ((a1 - 187660) / 0xF3u)) >> 32);
    if (v28 < 0x14)
    {
      v29 = byte_19547AD9D[v28];
    }

    else
    {
      v29 = v28 + 13;
    }

    v38 = v13 / 0xE6A9;
    if (v13 < 0x120534)
    {
      v39 = byte_19547AD9D[v38];
    }

    else
    {
      v39 = v38 + 13;
    }

    return v15 | (v29 << 8) | (v39 << 16) | 0xFE000000;
  }
}

uint64_t ucnv_getDisplayName(uint64_t a1, char *a2, UChar *a3, int a4, UErrorCode *a5)
{
  v17 = U_ZERO_ERROR;
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (!a1 || a4 < 0 || !a3 && a4)
  {
    result = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return result;
  }

  v10 = ures_open(0, a2, a5);
  if (*a5 > 0)
  {
    return 0;
  }

  v11 = v10;
  v18 = 0;
  StringByKey = ures_getStringByKey(v10, (*(*(a1 + 48) + 16) + 4), &v18, &v17);
  ures_close(v11);
  if (v17 <= U_ZERO_ERROR)
  {
    if (*a5 == U_ZERO_ERROR)
    {
      *a5 = v17;
    }

    v16 = uprv_min(v18, a4);
    u_memcpy(a3, StringByKey, 2 * v16);
  }

  else
  {
    v13 = *(*(a1 + 48) + 16);
    v14 = strlen((v13 + 4));
    v18 = v14;
    v15 = uprv_min(v14, a4);
    u_charsToUChars((v13 + 4), a3, v15);
  }

  return u_terminateUChars(a3, a4, v18, a5);
}

void sub_19524C64C(void *a1, uint64_t a2, UErrorCode *a3)
{
  if (*(a2 + 8))
  {

    sub_19523EECC("GBK", a3);
  }

  else
  {
    v5 = ucnv_open("GBK", a3);
    if (*a3 <= 0)
    {
      v6 = v5;
      a1[9] = 0;
      a1[10] = 0;
      v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
      a1[2] = v7;
      if (v7)
      {
        *v7 = v6;
      }

      else
      {
        ucnv_close(v6);
        *a3 = U_MEMORY_ALLOCATION_ERROR;
      }
    }
  }
}

void sub_19524C70C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    ucnv_close(*v1);
    if (!*(a1 + 62))
    {
      free(*(a1 + 16));
    }

    *(a1 + 16) = 0;
  }
}

void *sub_19524C754(void *result, int a2)
{
  if (a2 >= 2)
  {
    v2 = result[2];
LABEL_7:
    result[10] = 0;
    if (v2)
    {
      *(v2 + 18) = 0;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
    }

    return result;
  }

  result[9] = 0;
  v2 = result[2];
  if (v2)
  {
    *(v2 + 17) = 0;
    *(v2 + 19) = 0;
  }

  if (a2 != 1)
  {
    goto LABEL_7;
  }

  return result;
}

void *sub_19524C798(void *result, int *a2)
{
  v2 = result;
  v23 = 0;
  v4 = result[3];
  v3 = result[4];
  v5 = result[2];
  if (v5 >= v4)
  {
    goto LABEL_40;
  }

  v6 = result[1];
  v7 = *(v6 + 16);
  while (2)
  {
    v8 = v2[5];
    v9 = v5;
    v10 = v5;
    while (1)
    {
      if (v3 >= v8)
      {
        *a2 = 15;
        goto LABEL_40;
      }

      v11 = v10;
      v13 = *v10++;
      v12 = v13;
      if (*(v6 + 76) == 126)
      {
        break;
      }

      if (!v7[17])
      {
        if (v12 == 126)
        {
LABEL_15:
          *(v6 + 76) = 126;
          goto LABEL_19;
        }

        v7[19] = 0;
        if ((v12 & 0x80) == 0)
        {
          result = v12;
          goto LABEL_31;
        }

        *a2 = 12;
LABEL_56:
        ++v11;
        goto LABEL_57;
      }

      v14 = *(v6 + 72);
      if (v14)
      {
        v15 = v12 - 33;
        if ((v14 - 33) <= 0x5Cu && v15 < 0x5E)
        {
          v22 = a2;
          LOBYTE(v23) = v14 ^ 0x80;
          HIBYTE(v23) = v12 | 0x80;
          v16 = *(v6 + 63);
          result = sub_1952505B4(*(*v7 + 48), &v23, 2);
          v6 = v2[1];
          *(v6 + 72) = 0;
          if (result <= 65533)
          {
            a2 = v22;
LABEL_31:
            v18 = v2[6];
            if (v18)
            {
              *(v18 + 2 * (v3 - v2[4])) = v9 - (v7[17] + *(v2 + 4));
            }

            *v3 = result;
            goto LABEL_34;
          }

          LOWORD(v12) = v12 | (v14 << 8);
          if (result == 65534)
          {
            v21 = 10;
          }

          else
          {
            v21 = 12;
          }

          *v22 = v21;
          if (!(v14 << 8))
          {
            goto LABEL_56;
          }

LABEL_59:
          *(v6 + 65) = BYTE1(v12);
          *(v2[1] + 66) = v12;
          v19 = v2[1];
          goto LABEL_38;
        }

        *(v6 + 72) = 0;
        *a2 = 12;
        if (v15 >= 0x5E)
        {
          LOWORD(v12) = v12 | (v14 << 8);
          goto LABEL_59;
        }

        LOBYTE(v12) = v14;
LABEL_57:
        *(v6 + 65) = v12;
        *(v2[1] + 64) = 1;
LABEL_47:
        v5 = v11;
        goto LABEL_40;
      }

      if (v12 == 126)
      {
        goto LABEL_15;
      }

      *(v6 + 72) = v12 | 0x100;
      v7[19] = 0;
LABEL_19:
      ++v9;
      if (v10 >= v4)
      {
        goto LABEL_39;
      }
    }

    *(v6 + 76) = 0;
    if (v12 <= 124)
    {
      if (v12 == 10)
      {
        goto LABEL_19;
      }

      if (v12 != 123)
      {
        goto LABEL_41;
      }

      goto LABEL_17;
    }

    if (v12 == 125)
    {
LABEL_17:
      v7[17] = v12 == 123;
      if (v7[19])
      {
        v7[19] = 0;
        *a2 = 18;
        *(v6 + 284) = 2;
        *(v6 + 65) = 126;
        *(v2[1] + 66) = v12;
        v19 = v2[1];
LABEL_38:
        *(v19 + 64) = 2;
LABEL_39:
        v5 = v11 + 1;
        break;
      }

      v7[19] = 1;
      goto LABEL_19;
    }

    if (v12 != 126)
    {
LABEL_41:
      v7[19] = 0;
      *a2 = 18;
      *(v6 + 65) = 126;
      if (v7[17])
      {
        if ((v12 - 33) >= 0x5E)
        {
LABEL_43:
          ++v11;
          *(v2[1] + 66) = v12;
          v20 = 2;
LABEL_46:
          *(v2[1] + 64) = v20;
          goto LABEL_47;
        }
      }

      else if ((v12 & 0x80) != 0)
      {
        goto LABEL_43;
      }

      v20 = 1;
      goto LABEL_46;
    }

    v17 = v2[6];
    if (v17)
    {
      *(v17 + 2 * (v3 - v2[4])) = ~*(v2 + 4) + v9;
    }

    *v3 = 126;
    v7[19] = 0;
LABEL_34:
    ++v3;
    v5 = v11 + 1;
    if ((v11 + 1) < v4)
    {
      continue;
    }

    break;
  }

LABEL_40:
  v2[4] = v3;
  v2[2] = v5;
  return result;
}

uint64_t sub_19524CAC0(uint64_t a1, int *a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40) - v5;
  result = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = v4 - result;
  v10 = v9 >> 1;
  v11 = *(v8 + 16);
  LOBYTE(v12) = v11[18];
  LODWORD(v13) = *(v8 + 84);
  if (v13)
  {
    v14 = v6 <= 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    result = 0;
    LODWORD(v45) = 0;
    LODWORD(v46) = 0;
    goto LABEL_65;
  }

  if (v10 < 1)
  {
    LODWORD(v15) = 0;
    LODWORD(v46) = 0;
    goto LABEL_76;
  }

  LODWORD(v46) = 0;
  v15 = 0;
  v16 = *(a1 + 48);
  v17 = v9 >> 1;
  v18 = v11[18];
  while (2)
  {
    v19 = v46;
    v45 = v15;
    while (1)
    {
      v55 = 0xFFFF;
      if (v45 >= v6)
      {
        *a2 = 15;
        LODWORD(v15) = v45;
        LOBYTE(v12) = v18;
        LODWORD(v46) = v19;
        goto LABEL_76;
      }

      v46 = v19 + 1;
      v13 = *(result + 2 * v19);
      if (v13 != 126)
      {
        break;
      }

      v20 = 0;
      do
      {
        v21 = asc_195496DC7[v20];
        if (v45 >= v6)
        {
          v22 = *(a1 + 8);
          v23 = *(v22 + 91);
          *(v22 + 91) = v23 + 1;
          *(v22 + v23 + 104) = v21;
          *a2 = 15;
        }

        else
        {
          *(*(a1 + 32) + v45) = v21;
          if (*(a1 + 48))
          {
            *v16++ = v19;
          }

          v45 = (v45 + 1);
        }

        ++v20;
      }

      while (v20 != 2);
      ++v19;
      if (v46 >= v17)
      {
        goto LABEL_75;
      }
    }

    v54 = v10;
    v24 = *(result + 2 * v19);
    if (v13 >= 0x80)
    {
      v50 = v17;
      v51 = result;
      v52 = v5;
      v53 = v11;
      v49 = v18;
      v25 = sub_195251CF8(*(*v11 + 48), v13, &v55, *(*(a1 + 8) + 63));
      v18 = v49;
      v5 = v52;
      v11 = v53;
      v26 = v25 == 2;
      v17 = v50;
      result = v51;
      if (!v26 || ((v55 + 24159) & 0xFFFEu) > 0x5C5D || ((v55 + 95) & 0xFEu) > 0x5D)
      {
LABEL_77:
        if ((v13 & 0xF800) == 0xD800)
        {
          if ((v13 & 0x400) == 0)
          {
            v8 = *(a1 + 8);
            *(v8 + 84) = v13;
            result = v13;
            LOBYTE(v12) = v18;
            LODWORD(v10) = v54;
LABEL_65:
            if (v46 >= v10)
            {
              v48 = 0;
            }

            else
            {
              v47 = *(*(a1 + 16) + 2 * v46);
              if ((v47 & 0xFC00) == 0xDC00)
              {
                LODWORD(v46) = v46 + 1;
                LODWORD(v13) = v47 + (v13 << 10) - 56613888;
                *(v8 + 84) = 0;
                v48 = 10;
LABEL_73:
                v18 = v12;
                goto LABEL_74;
              }

              v48 = 12;
            }

            LODWORD(v13) = result;
            goto LABEL_73;
          }

          v48 = 12;
        }

        else
        {
          v48 = 10;
        }

LABEL_74:
        *a2 = v48;
        *(*(a1 + 8) + 84) = v13;
LABEL_75:
        LODWORD(v15) = v45;
        LOBYTE(v12) = v18;
        break;
      }

      v24 = v55 - 32896;
    }

    v55 = v24;
    if (v24 == 0xFFFF)
    {
      goto LABEL_77;
    }

    v12 = v24 > 0xFF;
    v11[18] = v12;
    if (v12 == v18 && v11[16])
    {
      v10 = v54;
    }

    else
    {
      if (v24 <= 0xFF)
      {
        v31 = 0;
        v10 = v54;
        do
        {
          v32 = asc_195496DCA[v31];
          if (v45 >= v6)
          {
            v33 = *(a1 + 8);
            v34 = *(v33 + 91);
            *(v33 + 91) = v34 + 1;
            *(v33 + v34 + 104) = v32;
            *a2 = 15;
          }

          else
          {
            *(*(a1 + 32) + v45) = v32;
            if (*(a1 + 48))
            {
              *v16++ = v19;
            }

            v45 = (v45 + 1);
          }

          ++v31;
        }

        while (v31 != 2);
      }

      else
      {
        v27 = 0;
        v10 = v54;
        do
        {
          v28 = asc_195496DCD[v27];
          if (v45 >= v6)
          {
            v29 = *(a1 + 8);
            v30 = *(v29 + 91);
            *(v29 + 91) = v30 + 1;
            *(v29 + v30 + 104) = v28;
            *a2 = 15;
          }

          else
          {
            *(*(a1 + 32) + v45) = v28;
            if (*(a1 + 48))
            {
              *v16++ = v19;
            }

            v45 = (v45 + 1);
          }

          ++v27;
        }

        while (v27 != 2);
      }

      v11[16] = 1;
    }

    v35 = v55;
    if (v24 < 0x100)
    {
      if (v45 < v6)
      {
        v15 = (v45 + 1);
        *(v5 + v45) = v55;
        if (v16)
        {
          *v16++ = v19;
        }

        goto LABEL_58;
      }

      v41 = *(a1 + 8);
      v42 = *(v41 + 91);
      *(v41 + 91) = v42 + 1;
      *(v41 + v42 + 104) = v35;
LABEL_57:
      *a2 = 15;
      v15 = v45;
      goto LABEL_58;
    }

    v36 = v55 >> 8;
    if (v45 >= v6)
    {
      v37 = *(a1 + 8);
      v38 = *(v37 + 91);
      *(v37 + 91) = v38 + 1;
      *(v37 + v38 + 104) = v36;
      LOBYTE(v37) = v55;
      v39 = *(a1 + 8);
      v40 = *(v39 + 91);
      *(v39 + 91) = v40 + 1;
      *(v39 + v40 + 104) = v37;
      goto LABEL_57;
    }

    v15 = v45 + 1;
    *(v5 + v45) = BYTE1(v55);
    if (v16)
    {
      *v16 = v19;
      v35 = v55;
      if (v15 < v6)
      {
        *(v5 + v15) = v55;
        v15 = (v45 + 2);
        v16[1] = v19;
        v16 += 2;
        goto LABEL_58;
      }

      ++v16;
    }

    else
    {
      if (v15 < v6)
      {
        v16 = 0;
        *(v5 + v15) = v35;
        v15 = (v45 + 2);
        goto LABEL_58;
      }

      v16 = 0;
    }

    v43 = *(a1 + 8);
    v44 = *(v43 + 91);
    *(v43 + 91) = v44 + 1;
    *(v43 + v44 + 104) = v35;
    *a2 = 15;
LABEL_58:
    v55 = 0xFFFF;
    v18 = v12;
    if (v46 < v10)
    {
      continue;
    }

    break;
  }

LABEL_76:
  *(a1 + 32) += v15;
  *(a1 + 16) += 2 * v46;
  v11[18] = v12;
  return result;
}

void *sub_19524CF9C(void *a1, int a2, int *a3)
{
  v3 = a1[1];
  v4 = *(v3 + 16);
  v7 = 0;
  v5 = &v7;
  if (*(v4 + 18))
  {
    LOWORD(v7) = 32126;
    v5 = (&v7 + 2);
    *(v4 + 18) = 0;
  }

  *v5 = **(v3 + 40);
  return ucnv_cbFromUWriteBytes(a1, &v7, v5 - (&vars0 - 4) + 1, a2, a3);
}

uint64_t sub_19524D008(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (*a3)
  {
    v4 = a2;
    v5 = *(a1 + 16);
    v6 = *v5;
    *(a2 + 592) = *(v5 + 2);
    *(a2 + 576) = v6;
    *(a2 + 16) = a2 + 576;
    *(a2 + 62) = 1;
    v8 = 288;
    **(a2 + 16) = ucnv_safeClone(**(a1 + 16), a2 + 288, &v8, a4);
  }

  else
  {
    v4 = 0;
    *a3 = 600;
  }

  return v4;
}

uint64_t sub_19524D0A8(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  (a2[2])(*a2, 0, 127);
  v8 = *(**(a1 + 16) + 48);

  return sub_19524F140(v8, a2, a3, 5, a4);
}

void sub_19524D11C(uint64_t a1, uint64_t a2, int *a3)
{
  if (!*(a2 + 8))
  {
    v6 = malloc_type_malloc(0x30uLL, 0x100004013E8086BuLL);
    *(a1 + 16) = v6;
    if (v6)
    {
      *v6 = 65534;
      *(a1 + 72) = 0xFFFF;
      v6[25] = 0;
      if ((*(a2 + 12) & 0xFu) <= 8)
      {
        v7 = &dword_19547AE7C[3 * (*(a2 + 12) & 0xF)];
        v8 = *v7;
        *(v6 + 26) = *"ISCII,version=";
        v9 = v6 + 26;
        v8 <<= 7;
        *(v6 + 2) = v8;
        *(v6 + 4) = v8;
        *(v6 + 3) = v8;
        LODWORD(v7) = v7[1];
        *(v6 + 5) = v7;
        *(v6 + 4) = v7;
        *(v6 + 3) = v7;
        v6[24] = 1;
        strcpy(v6 + 33, "ersion=");
        v10 = strlen(v6 + 26);
        v9[v10] = *(a2 + 12) & 0xF | 0x30;
        v9[v10 + 1] = 0;
        *(v9 + 18) = 0;
        return;
      }

      free(v6);
      *(a1 + 16) = 0;
      v11 = 1;
    }

    else
    {
      v11 = 7;
    }

    *a3 = v11;
  }
}

void sub_19524D23C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 62))
    {
      free(v2);
    }

    *(a1 + 16) = 0;
  }
}

uint64_t sub_19524D274(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (a2 >= 2)
  {
    v4 = *(v2 + 20);
    v3 = *(v2 + 4);
    goto LABEL_5;
  }

  *(result + 72) = 0xFFFFLL;
  v3 = *(v2 + 4);
  *(v2 + 8) = v3;
  v4 = *(v2 + 20);
  *(v2 + 16) = v4;
  *v2 = -2;
  *(v2 + 44) = 0;
  if (a2 != 1)
  {
LABEL_5:
    *(result + 84) = 0;
    *(v2 + 2) = 0;
    *(v2 + 12) = v4;
    *(v2 + 6) = v3;
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_19524D2D4(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    *a2 = 1;
    return result;
  }

  v3 = *(result + 24);
  v4 = *(result + 32);
  v5 = *(result + 16);
  v6 = *(v2 + 16);
  v7 = *a2;
  if (*a2 > 0 || v5 >= v3)
  {
    v9 = *(result + 8);
    v14 = *(result + 16);
LABEL_218:
    if (v7 <= 0 && *(result + 2) && v14 == v3)
    {
      v81 = *v6;
      if ((v81 - 217) > 0x17 || ((1 << (v81 + 39)) & 0xC00001) == 0)
      {
        *(v9 + 64) = 0;
      }

      else
      {
        *(v9 + 65) = v81;
        *(v9 + 64) = 1;
        *v6 = -2;
      }

      v83 = *(v2 + 72);
      if (v83 != 0xFFFF)
      {
        if (v83 >= 161 && (v83 - 2404) >= 2 && (v83 - 8204) >= 2)
        {
          LOWORD(v83) = v83 + v6[4];
        }

        if (v4 >= *(result + 40))
        {
          v85 = *(result + 8);
          v86 = *(v85 + 93);
          *(v85 + 93) = v86 + 1;
          *(v85 + 2 * v86 + 144) = v83;
          *a2 = 15;
        }

        else
        {
          *v4++ = v83;
          v84 = *(result + 48);
          if (v84)
          {
            *v84 = ~*(result + 16) + v3;
            *(result + 48) = v84 + 1;
          }
        }

        *(v2 + 72) = 0xFFFF;
      }
    }

    goto LABEL_219;
  }

  v10 = v2 + 144;
  v11 = ~*(result + 16);
  v12 = *(result + 40);
  v13 = -*(result + 16);
  v14 = *(result + 16);
  while (2)
  {
    v15 = 0;
    while (1)
    {
      if (v4 >= v12)
      {
        *a2 = 15;
        goto LABEL_219;
      }

      v16 = v15;
      v17 = *(v14 + v15);
      v18 = *v6;
      if (v18 != 239)
      {
        break;
      }

      if ((v17 - 66) <= 9)
      {
        v19 = (&unk_19547AEE8 + 4 * (v17 & 0xF));
        v6[4] = *v19 << 7;
        v20 = v19[1];
LABEL_16:
        *(v6 + 4) = v20;
        goto LABEL_18;
      }

      if (v17 == 64)
      {
        v6[4] = v6[2];
        v20 = *(v6 + 5);
        goto LABEL_16;
      }

      if ((v17 - 33) >= 0x1F)
      {
        *a2 = 12;
        *v6 = -2;
LABEL_217:
        *(v2 + 65) = v17;
        v9 = *(result + 8);
        *(v9 + 64) = 1;
        v7 = *a2;
        v14 += v16 + 1;
        goto LABEL_218;
      }

LABEL_18:
      *v6 = -2;
      v15 = v16 + 1;
      if (v14 + v16 + 1 >= v3)
      {
        v14 += v16 + 1;
LABEL_212:
        v9 = v2;
        goto LABEL_218;
      }
    }

    if (v18 == 217)
    {
      v28 = *(v6 + 11);
      if (v28)
      {
        *v4++ = v28;
        v29 = *(result + 48);
        if (v29)
        {
          *v29 = v14 - v5 + v16;
          *(result + 48) = v29 + 1;
        }

        *(v6 + 11) = 0;
      }

      if (v17 == 232)
      {
        v30 = 32;
      }

      else
      {
        v30 = 8205;
      }

      if (v4 >= v12)
      {
        v32 = *(v2 + 93);
        *(v2 + 93) = v32 + 1;
        *(v2 + 2 * v32 + 144) = v30;
        v7 = 15;
        *a2 = 15;
      }

      else
      {
        *v4++ = v30;
        v31 = *(result + 48);
        if (v31)
        {
          *v31 = ~v5 + v14 + v16;
          *(result + 48) = v31 + 1;
        }
      }

      v18 = 65534;
      *v6 = -2;
    }

    else if (v18 == 240)
    {
      if ((v17 - 161) > 0x4D)
      {
        *v6 = -2;
        v80 = 12;
      }

      else
      {
        if (v17 == 191 || v17 == 184)
        {
          v21 = v17 == 191 ? 2416 : 2386;
          v22 = v17 == 191 ? 112 : 82;
          if ((*(v6 + 4) & byte_19547B158[v22 & 0xFE]) != 0)
          {
            *v6 = -2;
            v23 = *(v6 + 11);
            if (v23)
            {
              *v4++ = v23;
              v24 = *(result + 48);
              if (v24)
              {
                *v24 = v14 - v5 + v16;
                *(result + 48) = v24 + 1;
              }

              *(v6 + 11) = 0;
            }

            v25 = v6[4] + v21;
            if (v4 < v12)
            {
              *v4++ = v25;
              v26 = *(result + 48);
              if (v26)
              {
                v27 = ~v5 + v14 + v16;
                goto LABEL_39;
              }

              goto LABEL_176;
            }

            v87 = *(v2 + 93);
            *(v2 + 93) = v87 + 1;
            *(v2 + 2 * v87 + 144) = v25;
            goto LABEL_239;
          }
        }

LABEL_214:
        v80 = 10;
      }

      *a2 = v80;
      goto LABEL_217;
    }

    if (v17 <= 232)
    {
      if (v17 <= 216)
      {
        if (v17 != 10 && v17 != 13)
        {
          goto LABEL_117;
        }

        *(v6 + 25) = 1;
        LODWORD(v33) = word_19547AF18[v17];
        goto LABEL_124;
      }

      if (v17 == 217)
      {
        goto LABEL_64;
      }

      if (v17 != 224)
      {
        if (v17 == 232)
        {
          if (v18 == 232)
          {
            LODWORD(v33) = 8204;
            goto LABEL_74;
          }

          if (*(v6 + 16))
          {
            LODWORD(v33) = 2381;
          }

          else
          {
            LODWORD(v33) = 0xFFFF;
          }

          v37 = 232;
LABEL_125:
          *v6 = v37;
          v50 = *(v2 + 72);
          if (v50 != 0xFFFF)
          {
            v51 = v6[4];
            v52 = *(v6 + 11);
            if (v51 == 256 && (v52 - 2560) <= 0x4F)
            {
              if (v50 != 2381 || ((byte_19547B1D8[v52 - 2560] & 1) != 0 ? (v53 = v33 + 256 == v52) : (v53 = 0), !v53))
              {
LABEL_138:
                if (v4 >= v12)
                {
                  v57 = *(v2 + 93);
                  *(v2 + 93) = v57 + 1;
                  *(v10 + 2 * v57) = v52;
                  v7 = 15;
                  *a2 = 15;
                }

                else
                {
                  *v4++ = v52;
                  v56 = *(result + 48);
                  if (v56)
                  {
                    *v56 = v13 + v14 + v16;
                    *(result + 48) = v56 + 1;
                  }
                }

                *(v6 + 11) = 0;
                goto LABEL_143;
              }

              v54 = -2 - v5 + v14 + v16;
              if (v4 >= v12)
              {
                v63 = *(v2 + 93);
                *(v2 + 93) = v63 + 1;
                *(v10 + 2 * v63) = 2673;
                v7 = 15;
                *a2 = 15;
              }

              else
              {
                *v4++ = 2673;
                v55 = *(result + 48);
                if (v55)
                {
                  *v55 = v54;
                  *(result + 48) = v55 + 1;
                  v52 = *(v6 + 11);
                }
              }

              if (v4 >= v12)
              {
                v65 = *(v2 + 93);
                *(v2 + 93) = v65 + 1;
                *(v10 + 2 * v65) = v52;
                v7 = 15;
                *a2 = 15;
              }

              else
              {
                *v4++ = v52;
                v64 = *(result + 48);
                if (v64)
                {
                  *v64 = v54;
                  *(result + 48) = v64 + 1;
                }
              }

              *(v6 + 11) = 0;
LABEL_168:
              *(v2 + 72) = 0xFFFF;
              goto LABEL_176;
            }

            if (v52)
            {
              goto LABEL_138;
            }

LABEL_143:
            if (v51 == 256 && v33 == 2306)
            {
              v58 = *(v2 + 72);
              if ((v58 - 2384) >= 0xFFFFFFB0 && byte_19547B1D8[v58 - 2304] >= 2u)
              {
                v59 = v58 + 256;
                if (v4 >= v12)
                {
                  v66 = *(v2 + 93);
                  *(v2 + 93) = v66 + 1;
                  *(v10 + 2 * v66) = v59;
                  v7 = 15;
                  *a2 = 15;
                }

                else
                {
                  *v4++ = v59;
                  v60 = *(result + 48);
                  if (v60)
                  {
                    *v60 = v11 + v14 + v16;
                    *(result + 48) = v60 + 1;
                  }
                }

                LODWORD(v33) = 2416;
                goto LABEL_172;
              }
            }

            else
            {
              v58 = *(v2 + 72);
              if (v51 == 256 && v33 == 2381 && (v58 - 2384) >= 0xFFFFFFB0 && (byte_19547B1D8[v58 - 2304] & 1) != 0)
              {
                *(v6 + 11) = v58 + 256;
                LODWORD(v33) = 2381;
                goto LABEL_172;
              }
            }

            if (v58 >= 161 && (v58 - 2404) >= 2 && (v58 - 8204) >= 2)
            {
              v58 += v51;
              *(v2 + 72) = v58;
            }

            if (v4 >= v12)
            {
              v62 = *(v2 + 93);
              *(v2 + 93) = v62 + 1;
              *(v10 + 2 * v62) = v58;
              v7 = 15;
              *a2 = 15;
            }

            else
            {
              *v4++ = v58;
              v61 = *(result + 48);
              if (v61)
              {
                *v61 = v11 + v14 + v16;
                *(result + 48) = v61 + 1;
              }
            }

LABEL_172:
            *(v2 + 72) = 0xFFFF;
          }

LABEL_173:
          if (v33 != 0xFFFF)
          {
            goto LABEL_174;
          }

          goto LABEL_214;
        }

LABEL_117:
        LODWORD(v33) = word_19547AF18[v17];
        if (v17 >= 0xA1 && (*(v6 + 4) & byte_19547B158[v33 & 0x7F]) == 0 && (v17 != 208 || v6[4] != 768))
        {
          LODWORD(v33) = 0xFFFF;
        }

LABEL_124:
        v37 = v17;
        goto LABEL_125;
      }

      v38 = v18;
      v39 = *(v6 + 4);
      if (v38 != 164 || (v39 & 0x80) == 0)
      {
        if ((v39 & 0x87) != 0)
        {
          LODWORD(v33) = 2374;
        }

        else
        {
          LODWORD(v33) = 0xFFFF;
        }

        v37 = 224;
        goto LABEL_125;
      }

      LODWORD(v33) = 2308;
LABEL_78:
      *v6 = -2;
LABEL_174:
      *(v2 + 72) = v33;
      if (*(v6 + 25))
      {
        v6[4] = v6[2];
        *(v6 + 4) = *(v6 + 5);
        *(v6 + 25) = 0;
      }

      goto LABEL_176;
    }

    if ((v17 - 239) < 2)
    {
LABEL_64:
      *v6 = v17;
      v34 = *(v2 + 72);
      if (v34 == 0xFFFF)
      {
        goto LABEL_176;
      }

      v35 = *(v6 + 11);
      if (v35)
      {
        if (v4 >= v12)
        {
          v43 = *(v2 + 93);
          *(v2 + 93) = v43 + 1;
          *(v10 + 2 * v43) = v35;
          v7 = 15;
          *a2 = 15;
        }

        else
        {
          *v4++ = v35;
          v36 = *(result + 48);
          if (v36)
          {
            *v36 = v13 + v14 + v16;
            *(result + 48) = v36 + 1;
          }
        }

        *(v6 + 11) = 0;
        v34 = *(v2 + 72);
      }

      if (v34 >= 161 && (v34 - 2404) >= 2 && (v34 - 8204) >= 2)
      {
        LOWORD(v34) = v34 + v6[4];
      }

      if (v4 >= v12)
      {
        v45 = *(v2 + 93);
        *(v2 + 93) = v45 + 1;
        *(v10 + 2 * v45) = v34;
        v7 = 15;
        *a2 = 15;
      }

      else
      {
        *v4++ = v34;
        v44 = *(result + 48);
        if (v44)
        {
          *v44 = v11 + v14 + v16;
          *(result + 48) = v44 + 1;
        }
      }

      goto LABEL_168;
    }

    if (v17 != 233)
    {
      if (v17 != 234)
      {
        goto LABEL_117;
      }

      if (v18 != 234)
      {
        if ((v6[8] & 0x80) != 0)
        {
          LODWORD(v33) = 2404;
        }

        else
        {
          LODWORD(v33) = 0xFFFF;
        }

        v37 = 234;
        goto LABEL_125;
      }

      LODWORD(v33) = 2405;
      goto LABEL_78;
    }

    if (v18 == 232)
    {
      LODWORD(v33) = 8205;
LABEL_74:
      v37 = -2;
      goto LABEL_125;
    }

    v40 = v6[4];
    if (v18 == 192 && v40 == 256)
    {
      v41 = *(v6 + 11);
      if (v41)
      {
        if (v4 >= v12)
        {
          v67 = *(v2 + 93);
          *(v2 + 93) = v67 + 1;
          *(v10 + 2 * v67) = v41;
          v7 = 15;
          *a2 = 15;
        }

        else
        {
          *v4++ = v41;
          v42 = *(result + 48);
          if (v42)
          {
            *v42 = v13 + v14 + v16;
            *(result + 48) = v42 + 1;
          }
        }

        *(v6 + 11) = 0;
      }

      if (v4 >= v12)
      {
        v72 = *(v2 + 93);
        *(v2 + 93) = v72 + 1;
        *(v10 + 2 * v72) = 2652;
        v7 = 15;
        *a2 = 15;
        v68 = v4;
      }

      else
      {
        *v4 = 2652;
        v68 = v4 + 1;
        v69 = *(result + 48);
        if (v69)
        {
          *v69 = v11 + v14 + v16;
          *(result + 48) = v69 + 1;
        }

        if (v7 <= 0)
        {
          if (v68 < v12)
          {
            v4[1] = 2637;
            v70 = *(result + 48);
            if (v70)
            {
              *v70 = v11 + v14 + v16;
              *(result + 48) = v70 + 1;
            }

            v68 = v4 + 2;
            if ((v4 + 2) >= v12)
            {
              v79 = *(v2 + 93);
              *(v2 + 93) = v79 + 1;
              *(v10 + 2 * v79) = 2617;
              v7 = 15;
              *a2 = 15;
            }

            else
            {
              v68 = v4 + 3;
              v4[2] = 2617;
              v71 = *(result + 48);
              if (v71)
              {
                *v71 = v11 + v14 + v16;
                *(result + 48) = v71 + 1;
              }
            }

            goto LABEL_194;
          }

          v73 = *(v2 + 93);
          v74 = v73 + 1;
          *(v10 + 2 * v73) = 2637;
          v7 = 15;
          *a2 = 15;
LABEL_193:
          *(v2 + 93) = v73 + 2;
          *(v10 + 2 * v74) = 2617;
LABEL_194:
          *(v2 + 72) = 0xFFFF;
          *v6 = -2;
          v4 = v68;
          goto LABEL_176;
        }
      }

      v73 = *(v2 + 93);
      *(v10 + 2 * v73) = 2637;
      v74 = v73 + 1;
      goto LABEL_193;
    }

    v46 = 15;
    v33 = &word_19547B11E;
    while (*(v33 - 1) != v18)
    {
      v33 += 2;
      if (!--v46)
      {
        goto LABEL_117;
      }
    }

    LOWORD(v33) = *v33;
    if ((*(v6 + 4) & byte_19547B158[v33]) == 0)
    {
      goto LABEL_117;
    }

    *v6 = -2;
    *(v2 + 72) = 0xFFFF;
    if (v40 != 256)
    {
      LODWORD(v33) = v33;
      goto LABEL_173;
    }

    v47 = *(v6 + 11);
    if (v47)
    {
      if (v4 >= v12)
      {
        v75 = *(v2 + 93);
        *(v2 + 93) = v75 + 1;
        *(v10 + 2 * v75) = v47;
        v7 = 15;
        *a2 = 15;
      }

      else
      {
        *v4++ = v47;
        v48 = *(result + 48);
        if (v48)
        {
          *v48 = v13 + v14 + v16;
          *(result + 48) = v48 + 1;
        }
      }

      *(v6 + 11) = 0;
    }

    v76 = v33 + 256;
    if (v33 - 8204 < 2)
    {
      v76 = v33;
    }

    if (v33 - 2404 >= 2)
    {
      v77 = v76;
    }

    else
    {
      v77 = v33;
    }

    if (v33 >= 0xA1u)
    {
      v78 = v77;
    }

    else
    {
      v78 = v33;
    }

    if (v4 < v12)
    {
      *v4++ = v78;
      v26 = *(result + 48);
      if (v26)
      {
        v27 = v11 + v14 + v16;
LABEL_39:
        *v26 = v27;
        *(result + 48) = v26 + 1;
      }

LABEL_176:
      v14 += v16 + 1;
      if (v7 > 0 || v14 >= v3)
      {
        goto LABEL_212;
      }

      continue;
    }

    break;
  }

  v88 = *(v2 + 93);
  *(v2 + 93) = v88 + 1;
  *(v10 + 2 * v88) = v78;
LABEL_239:
  *a2 = 15;
  v14 += v16 + 1;
LABEL_219:
  *(result + 32) = v4;
  *(result + 16) = v14;
  return result;
}

void *sub_19524DE0C(void *result, int *a2)
{
  v2 = result[3];
  v3 = result[4];
  v4 = result[5];
  v5 = result[1];
  v6 = result[2];
  if (v5)
  {
    v7 = v4 >= v3;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 || v2 < v6)
  {
    *a2 = 1;
    return result;
  }

  v9 = *(v5 + 84);
  if (v9)
  {
    v10 = result[4];
LABEL_11:
    if (v6 >= v2)
    {
      v14 = 0;
    }

    else
    {
      v11 = *v6;
      v12 = (v11 & 0xFC00) == 56320;
      v13 = v11 + (v9 << 10) - 56613888;
      if ((v11 & 0xFC00) == 0xDC00)
      {
        v14 = 10;
      }

      else
      {
        v14 = 12;
      }

      if (v12)
      {
        v9 = v13;
      }

      v6 += v12;
    }

LABEL_121:
    *a2 = v14;
    *(result[1] + 84) = v9;
    goto LABEL_139;
  }

  if (v6 >= v2)
  {
    goto LABEL_138;
  }

  v15 = *(v5 + 16);
  v16 = *(v15 + 6) >> 7;
  v17 = result[6];
  while (2)
  {
    v18 = 0;
    v19 = v6;
    while (1)
    {
      v20 = v18;
      v21 = result[1];
      if (*(v21 + 80) == 10)
      {
        v22 = dword_19547AE7C[3 * v16 + 2];
        *(v21 + 80) = 0;
        v6 = (v19 + v20);
        if (v3 >= v4)
        {
          v50 = *(v21 + 91);
          *(v21 + 91) = v50 + 1;
          *(v21 + v50 + 104) = -17;
          v51 = result[1];
          v52 = *(v51 + 91);
          *(v51 + 91) = v52 + 1;
          *(v51 + v52 + 104) = v22;
          *a2 = 15;
          goto LABEL_138;
        }

        v23 = result[2];
        *v3 = -17;
        v10 = v3 + 1;
        if (v17)
        {
          v24 = ((v6 - v23) >> 1) - 1;
          *v17 = v24;
          if (v10 >= v4)
          {
            goto LABEL_123;
          }

          *v10 = v22;
          v17[1] = v24;
          v17 += 2;
        }

        else
        {
          if (v10 >= v4)
          {
LABEL_123:
            v53 = result[1];
            v54 = *(v53 + 91);
            *(v53 + 91) = v54 + 1;
            *(v53 + v54 + 104) = v22;
            *a2 = 15;
            v6 = (v19 + v20);
            goto LABEL_139;
          }

          v17 = 0;
          *v10 = v22;
        }

        v3 += 2;
        if (*a2 > 0)
        {
          v6 = (v19 + v20);
          goto LABEL_138;
        }
      }

      v9 = *(v19 + v20);
      if (v9 <= 0xA0)
      {
        v25 = result[1];
        *(v25 + 80) = v9;
        v26 = v19 + v20;
        if (v3 >= v4)
        {
          v55 = *(v25 + 91);
          *(v25 + 91) = v55 + 1;
          *(v25 + v55 + 104) = v9;
          *a2 = 15;
          v6 = (v26 + 2);
          goto LABEL_138;
        }

        v27 = result[2];
        *v3++ = v9;
        if (v17)
        {
          *v17++ = (&v26[-v27 + 2] >> 1) - 1;
        }

        if (*a2 >= 1)
        {
          goto LABEL_137;
        }

        goto LABEL_37;
      }

      v28 = *(v15 + 2);
      if (v9 != 8204)
      {
        break;
      }

      if (*(v15 + 2))
      {
        *(v15 + 2) = 0;
        v9 = 8204;
        v29 = 232;
        goto LABEL_59;
      }

LABEL_37:
      v18 = v20 + 2;
      if (v19 + v20 + 2 >= v2)
      {
        goto LABEL_137;
      }
    }

    if (v9 != 8205)
    {
      if (v9 - 2304 > 0x47F)
      {
        v29 = 0xFFFF;
        goto LABEL_58;
      }

      if (v9 - 2406 > 0xFFFFFFFD)
      {
        v32 = 1;
      }

      else
      {
        if ((v9 - 2304) >= 0)
        {
          v30 = v9 - 2304;
        }

        else
        {
          v30 = v9 - 2177;
        }

        v16 = v30 >> 7;
        v31 = v30 & 0xFF80;
        if ((v30 & 0xFF80) == *(v15 + 6) && !*(v15 + 24))
        {
          v32 = 1;
        }

        else
        {
          v32 = 0;
          *(v15 + 6) = v31;
          *(v15 + 12) = dword_19547AE7C[3 * (v30 >> 7) + 1];
          *(v15 + 24) = 0;
        }

        if ((v30 & 0xFF80) == 0x100)
        {
          if (v9 == 2672)
          {
            v9 = 2562;
          }

          else if (v9 == 2673)
          {
            v9 = 2673;
            *(v15 + 2) = 2673;
          }
        }

        v9 -= v31;
      }

      v39 = word_19547B228[v9];
      if ((*(v15 + 12) & byte_19547B158[v9]) == 0 && (*(v15 + 6) != 768 || v9 != 2353))
      {
        v39 = -1;
      }

      v29 = v39;
      if (v32)
      {
LABEL_105:
        if (v9 == 2417 && *(v15 + 6) == 256)
        {
LABEL_93:
          v6 = (v19 + v20 + 2);
          if (v6 < v2)
          {
            continue;
          }

          goto LABEL_137;
        }

LABEL_58:
        *(v15 + 2) = 0;
        goto LABEL_59;
      }

      v41 = dword_19547AE7C[3 * v16 + 2];
      if (v3 >= v4)
      {
        v44 = result[1];
        v45 = *(v44 + 91);
        *(v44 + 91) = v45 + 1;
        *(v44 + v45 + 104) = -17;
        v46 = result[1];
        v47 = *(v46 + 91);
        *(v46 + 91) = v47 + 1;
        *(v46 + v47 + 104) = v41;
        *a2 = 15;
        goto LABEL_59;
      }

      v42 = result[2];
      *v3 = -17;
      v10 = v3 + 1;
      if (v17)
      {
        v43 = ((v19 + v20 - v42 + 2) >> 1) - 1;
        *v17 = v43;
        if (v10 < v4)
        {
          *v10 = v41;
          v17[1] = v43;
          v17 += 2;
          goto LABEL_115;
        }

        ++v17;
      }

      else
      {
        if (v10 < v4)
        {
          v17 = 0;
          *v10 = v41;
LABEL_115:
          v3 += 2;
          if (*a2 > 0)
          {
            goto LABEL_59;
          }

          goto LABEL_105;
        }

        v17 = 0;
      }

      v48 = result[1];
      v49 = *(v48 + 91);
      *(v48 + 91) = v49 + 1;
      *(v48 + v49 + 104) = v41;
      *a2 = 15;
      goto LABEL_60;
    }

    break;
  }

  if (*(v15 + 2))
  {
    v29 = 233;
  }

  else
  {
    v29 = 217;
  }

  *(v15 + 2) = 0;
  v9 = 8205;
LABEL_59:
  v10 = v3;
LABEL_60:
  if (*(v15 + 6) == 256 && v28 == 2673 && v9 - 2384 >= 0xFFFFFFB0 && (byte_19547B1D8[v9 - 2304] & 1) != 0)
  {
    *(v15 + 2) = 0;
    v34 = v29 | (v29 << 16);
    v35 = BYTE1(v29) | 0xE8;
    if (v10 >= v4)
    {
      v60 = result[1];
      v6 = (v19 + v20 + 2);
      if ((v34 & 0xFF0000) != 0)
      {
        v61 = *(v60 + 91);
        *(v60 + 91) = v61 + 1;
        *(v60 + v61 + 104) = BYTE2(v34);
        v60 = result[1];
      }

      v62 = *(v60 + 91);
      *(v60 + 91) = v62 + 1;
      *(v60 + v62 + 104) = v35;
      v63 = result[1];
      v64 = *(v63 + 91);
      *(v63 + 91) = v64 + 1;
      *(v63 + v64 + 104) = v29;
      *a2 = 15;
      goto LABEL_139;
    }

    v36 = (v19 + v20 - result[2] + 2) >> 1;
    v37 = v36 - 1;
    if (v34 < 0x10000)
    {
      v3 = v10;
    }

    else
    {
      *v10 = BYTE2(v34);
      v3 = v10 + 1;
      if (!v17)
      {
        if (v3 < v4)
        {
          v17 = 0;
          v38 = v10 + 2;
          v10[1] = v35;
LABEL_88:
          if (v38 >= v4)
          {
            v69 = result[1];
            v70 = *(v69 + 91);
            *(v69 + 91) = v70 + 1;
            *(v69 + v70 + 104) = v29;
            *a2 = 15;
            v6 = (v19 + v20 + 2);
            v10 = v38;
            goto LABEL_139;
          }

          *v38 = v29;
          if (v17)
          {
            *v17++ = v37;
          }

          v3 += 2;
          goto LABEL_92;
        }

LABEL_135:
        v65 = result[1];
        v66 = *(v65 + 91);
        *(v65 + 91) = v66 + 1;
        *(v65 + v66 + 104) = v35;
        goto LABEL_136;
      }

      v37 = v36 - 2;
      *v17++ = v36 - 2;
    }

    if (v3 < v4)
    {
      *v3 = v35;
      v38 = v3 + 1;
      if (v17)
      {
        *v17++ = v37;
      }

      goto LABEL_88;
    }

    goto LABEL_135;
  }

  if (v29 == 232)
  {
    *(v15 + 2) = 232;
    if (v10 < v4)
    {
      v33 = ((v19 + v20 - result[2] + 2) >> 1) - 1;
LABEL_73:
      *v10 = v29;
      v3 = v10 + 1;
      if (v17)
      {
        *v17++ = v33;
      }

      goto LABEL_92;
    }

LABEL_131:
    v58 = result[1];
    v59 = *(v58 + 91);
    *(v58 + 91) = v59 + 1;
    *(v58 + v59 + 104) = v29;
    *a2 = 15;
    v6 = (v19 + v20 + 2);
    goto LABEL_139;
  }

  if (v29 == 0xFFFF)
  {
    v6 = (v19 + v20 + 2);
    if (v9 >> 11 == 27)
    {
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_11;
      }

      v14 = 12;
    }

    else
    {
      v14 = 10;
    }

    goto LABEL_121;
  }

  if (v10 >= v4)
  {
    if ((v29 & 0xFF00) != 0)
    {
      v56 = result[1];
      v57 = *(v56 + 91);
      *(v56 + 91) = v57 + 1;
      *(v56 + v57 + 104) = BYTE1(v29);
    }

    goto LABEL_131;
  }

  v33 = ((v19 + v20 - result[2] + 2) >> 1) - 1;
  if (v29 <= 0xFF)
  {
    goto LABEL_73;
  }

  *v10 = BYTE1(v29);
  v3 = v10 + 1;
  if (!v17)
  {
    if (v3 >= v4)
    {
      goto LABEL_136;
    }

    v17 = 0;
    v3 = v10 + 2;
    v10[1] = v29;
LABEL_92:
    if (*a2 >= 1)
    {
      goto LABEL_137;
    }

    goto LABEL_93;
  }

  *v17 = v33;
  if (v3 < v4)
  {
    v3 = v10 + 2;
    v10[1] = v29;
    v17[1] = v33;
    v17 += 2;
    goto LABEL_92;
  }

LABEL_136:
  v67 = result[1];
  v68 = *(v67 + 91);
  *(v67 + 91) = v68 + 1;
  *(v67 + v68 + 104) = v29;
  *a2 = 15;
LABEL_137:
  v6 = (v19 + v20 + 2);
LABEL_138:
  v10 = v3;
LABEL_139:
  result[2] = v6;
  result[4] = v10;
  return result;
}

uint64_t sub_19524E5E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 26;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19524E5F4(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (*a3)
  {
    v4 = *(a1 + 16);
    v5 = *v4;
    v6 = v4[2];
    *(a2 + 304) = v4[1];
    *(a2 + 320) = v6;
    *(a2 + 288) = v5;
    *(a2 + 16) = a2 + 288;
    *(a2 + 62) = 1;
  }

  else
  {
    a2 = 0;
    *a3 = 336;
  }

  return a2;
}

uint64_t sub_19524E64C(uint64_t a1, void *a2)
{
  (a2[2])(*a2, 0, 160);
  v3 = 0;
  v4 = 2304;
  do
  {
    v5 = dword_19547AE7C[3 * v3 + 1];
    v6 = v4;
    v7 = byte_19547B158;
    v8 = 128;
    do
    {
      v9 = *v7++;
      v10 = v5 & v9;
      v12 = v3 == 6 && v8 == 79;
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = !v12;
      }

      if (!v13)
      {
        (a2[1])(*a2, v6);
      }

      v6 = (v6 + 1);
      --v8;
    }

    while (v8);
    ++v3;
    v4 = (v4 + 128);
  }

  while (v3 != 9);
  (a2[1])(*a2, 2404);
  (a2[1])(*a2, 2405);
  (a2[1])(*a2, 8204);
  v14 = *a2;
  v15 = a2[1];

  return v15(v14, 8205);
}

uint64_t sub_19524E758(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 32);
  v4 = (*(result + 40) - v3) >> 1;
  v5 = *(result + 48);
  v6 = *(result + 24) - v2;
  if (v6 > v4)
  {
    *a2 = 15;
    v6 = v4;
  }

  if (v6 < 8)
  {
    v12 = 0;
  }

  else
  {
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + 1;
    do
    {
      *v3 = *v2;
      v3[1] = v2[1];
      v3[2] = v2[2];
      v3[3] = v2[3];
      v3[4] = v2[4];
      v3[5] = v2[5];
      v3[6] = v2[6];
      v3[7] = v2[7];
      v3 += 8;
      v2 += 8;
      --v8;
    }

    while (v8 > 1);
    v6 &= 7u;
    if (!v5)
    {
      if (!v6)
      {
        *(result + 16) = v2;
        *(result + 32) = v3;
        return result;
      }

      v12 = 0;
      v5 = 0;
      goto LABEL_12;
    }

    v9 = 0;
    v10 = v7 + 1;
    do
    {
      v11 = vdupq_n_s32(v9);
      *v5 = v9;
      *(v5 + 4) = vorrq_s8(v11, xmmword_19547B330);
      *(v5 + 20) = vorr_s8(*v11.i8, 0x600000005);
      v12 = v9 + 8;
      *(v5 + 28) = v9 + 7;
      v5 += 32;
      --v10;
      v9 += 8;
    }

    while (v10 > 1);
  }

  if (v6 <= 0)
  {
    *(result + 16) = v2;
    *(result + 32) = v3;
    if (!v5)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_12:
  v13 = v6 + 1;
  do
  {
    v14 = *v2++;
    *v3++ = v14;
    --v13;
  }

  while (v13 > 1);
  *(result + 16) = v2;
  *(result + 32) = v3;
  if (v5)
  {
    do
    {
      *v5 = v12;
      v5 += 4;
      ++v12;
      --v6;
    }

    while (v6);
LABEL_18:
    *(result + 48) = v5;
  }

  return result;
}

uint64_t sub_19524E8BC(uint64_t result, int *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 48);
  if (*(v3 + 48) == &unk_1E7406148)
  {
    v7 = 255;
  }

  else
  {
    v7 = 127;
  }

  v8 = *(v3 + 84);
  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = (v4 - v2) >> 1;
  if (v10 >= *(result + 40) - v5)
  {
    LODWORD(v10) = *(result + 40) - v5;
  }

  if (v8)
  {
    v11 = v10 <= 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v32 = *(result + 32);
LABEL_19:
    if (v2 >= v4)
    {
LABEL_39:
      *(v3 + 84) = v8;
      goto LABEL_40;
    }

    v33 = *v2;
    v34 = (v33 & 0xFC00) == 56320;
    v35 = v33 + (v8 << 10) - 56613888;
    v2 += v34;
    if (v34)
    {
      v8 = v35;
    }

LABEL_35:
    if (v8 >> 11 == 27)
    {
      v42 = 12;
    }

    else
    {
      v42 = 10;
    }

    *a2 = v42;
    goto LABEL_39;
  }

  if (v10 < 16)
  {
    v32 = *(result + 32);
  }

  else
  {
    v12 = (v10 >> 4) + 1;
    v32 = *(result + 32);
    while (1)
    {
      v13 = *v2;
      *v32 = *v2;
      v14 = v2[1];
      v32[1] = v14;
      v15 = v2[2];
      v32[2] = v15;
      v16 = v2[3];
      v32[3] = v16;
      v17 = v2[4];
      v32[4] = v17;
      v18 = v2[5];
      v32[5] = v18;
      v19 = v2[6];
      v32[6] = v19;
      v20 = v2[7];
      v32[7] = v20;
      v21 = v2[8];
      v32[8] = v21;
      v22 = v2[9];
      v32[9] = v22;
      v23 = v2[10];
      v32[10] = v23;
      v24 = v2[11];
      v32[11] = v24;
      v25 = v2[12];
      v32[12] = v25;
      v26 = v2[13];
      v32[13] = v26;
      v27 = v2[14];
      v28.i16[0] = v13;
      v28.i16[1] = v14;
      v28.i16[2] = v15;
      v28.i16[3] = v16;
      v28.i16[4] = v17;
      v28.i16[5] = v18;
      v32[14] = v27;
      v28.i16[6] = v19;
      v28.i16[7] = v20;
      v29.i16[0] = v21;
      v29.i16[1] = v22;
      v29.i16[2] = v23;
      v29.i16[3] = v24;
      v29.i16[4] = v25;
      v29.i16[5] = v26;
      v29.i16[6] = v27;
      v29.i16[7] = v2[15];
      v30 = vorrq_s8(v28, v29);
      *v30.i8 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
      v32[15] = v29.i8[14];
      if (v7 < (v30.i16[0] | v30.i16[2] | ((v30.i32[0] | v30.i32[1]) >> 16)))
      {
        break;
      }

      v32 += 16;
      v2 += 16;
      if (--v12 <= 1)
      {
        v31 = 0;
        goto LABEL_25;
      }
    }

    v31 = v12 - 1;
LABEL_25:
    v36 = (v10 >> 4) - v31;
    LODWORD(v10) = v10 - 16 * v36;
    if (v6)
    {
      v5 += 16 * v36;
      if (v36 >= 1)
      {
        v37 = v36 + 1;
        do
        {
          v38 = vdupq_n_s32(v9);
          *v6 = v9;
          *(v6 + 4) = vaddq_s32(v38, xmmword_19547B330);
          *(v6 + 20) = vaddq_s32(v38, xmmword_19547B340);
          *(v6 + 36) = vaddq_s32(v38, xmmword_19547B350);
          v39 = v9 + 15;
          *(v6 + 52) = vadd_s32(*v38.i8, 0xE0000000DLL);
          v9 += 16;
          *(v6 + 60) = v39;
          v6 += 64;
          --v37;
        }

        while (v37 > 1);
      }
    }
  }

  if (v10 >= 1)
  {
    v40 = v10 + 1;
    v41 = (v2 + 1);
    do
    {
      v2 = v41;
      v8 = *(v41 - 1);
      if (v8 > v7)
      {
        break;
      }

      ++v41;
      *v32++ = v8;
      --v40;
    }

    while (v40 > 1);
    if (v7 < v8)
    {
      if ((v8 & 0xFC00) != 0xD800)
      {
        goto LABEL_35;
      }

      goto LABEL_19;
    }
  }

LABEL_40:
  if (v6 && v32 != v5)
  {
    v43 = v5 - v32;
    do
    {
      *v6 = v9;
      v6 += 4;
      ++v9;
      v44 = __CFADD__(v43++, 1);
    }

    while (!v44);
  }

  v44 = *a2 > 0 || v2 >= v4;
  if (!v44 && v32 >= *(result + 40))
  {
    *a2 = 15;
  }

  *(result + 16) = v2;
  *(result + 32) = v32;
  *(result + 48) = v6;
  return result;
}

uint64_t sub_19524EBD8(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  if (v2 >= *(a1 + 24))
  {
    *a2 = 8;
    return 0xFFFFLL;
  }

  else
  {
    *(a1 + 16) = v2 + 1;
    return *v2;
  }
}

uint64_t sub_19524EC18(uint64_t result, void *a2, int *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(result + 32);
  v7 = *(result + 40) - v6;
  if (*(v3 + 64) < 1)
  {
    goto LABEL_7;
  }

  v8 = *(v3 + 72);
  if (!v8 || v4 >= v5)
  {
    goto LABEL_7;
  }

  if (!v7)
  {
    v22 = 15;
LABEL_43:
    *a3 = v22;
    return result;
  }

  if ((v8 & 0xFFFFFFFE) != 0xC2 || (v21 = *v4, v21 > -65))
  {
LABEL_42:
    v22 = -127;
    goto LABEL_43;
  }

  *v6++ = v21 | (v8 << 6);
  ++v4;
  --v7;
  *(v3 + 72) = 0;
  *(v3 + 64) = 0;
LABEL_7:
  if (v4 < v5 && *(v5 - 1) - 194 < 0x33)
  {
    --v5;
  }

  if (v4 < v5)
  {
    while (1)
    {
      v10 = __OFSUB__(v7--, 1);
      if (v7 < 0 != v10)
      {
        *a3 = 15;
        goto LABEL_39;
      }

      v11 = v4 + 1;
      v12 = *v4;
      if (v12 < 0)
      {
        if ((v12 & 0xFFFFFFFE) != 0xFFFFFFC2 || (v13 = *v11, v13 > -65))
        {
          a2[2] = v4;
          *(result + 32) = v6;
          goto LABEL_42;
        }

        v11 = v4 + 2;
        LOBYTE(v12) = v13 | (v12 << 6);
      }

      *v6++ = v12;
      v4 = v11;
      if (v11 >= v5)
      {
        goto LABEL_19;
      }
    }
  }

  v11 = v4;
LABEL_19:
  if (*a3 <= 0 && v11 < a2[3])
  {
    v15 = *v11++;
    v14 = v15;
    v16 = v15;
    *(v3 + 65) = v15;
    *(v3 + 64) = 1;
    v17 = v15 - 194;
    if (v15 <= 0xEFu)
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }

    if (v16 > 0xDF)
    {
      ++v18;
    }

    if (v17 <= 0x32)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v14 < 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1;
    }

    *(v3 + 72) = v16;
    *(v3 + 76) = v20;
  }

  v4 = v11;
LABEL_39:
  a2[2] = v4;
  *(result + 32) = v6;
  return result;
}

void *sub_19524ED80(void *result, int *a2)
{
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[5];
  v6 = result[6];
  v7 = v3 - v2;
  if (v3 - v2 >= ((v5 - v4) >> 1))
  {
    v7 = (v5 - v4) >> 1;
  }

  if (v7 < 8)
  {
    v27 = 0;
    v8 = result[4];
  }

  else
  {
    v8 = result[4];
    v9 = v7 >> 3;
    while (1)
    {
      v10 = *v2;
      *v8 = v10;
      v11 = v2[1];
      v8[1] = v11;
      v12 = v11 | v10;
      v13 = v2[2];
      v8[2] = v13;
      v14 = v2[3];
      v8[3] = v14;
      v15 = v12 | v13 | v14;
      v16 = v2[4];
      v8[4] = v16;
      v17 = v2[5];
      v8[5] = v17;
      v18 = v16 | v17;
      v19 = v2[6];
      v8[6] = v19;
      v20 = v15 | v18 | v19;
      v21 = v2[7];
      v8[7] = v21;
      if (((v20 | v21) & 0x80) != 0)
      {
        break;
      }

      v2 += 8;
      v8 += 8;
      v22 = __OFSUB__(v9--, 1);
      if ((v9 < 0) ^ v22 | (v9 == 0))
      {
        v9 = 0;
        break;
      }
    }

    v23 = (v7 >> 3) - v9;
    v7 -= 8 * v23;
    if (v6 && (v4 += 16 * v23, v23 >= 1))
    {
      v24 = 0;
      v25 = v23 + 1;
      do
      {
        v26 = vdupq_n_s32(v24);
        *v6 = v24;
        *(v6 + 4) = vorrq_s8(v26, xmmword_19547B330);
        *(v6 + 20) = vorr_s8(*v26.i8, 0x600000005);
        v27 = v24 + 8;
        *(v6 + 28) = v24 + 7;
        v6 += 32;
        --v25;
        v24 += 8;
      }

      while (v25 > 1);
    }

    else
    {
      v27 = 0;
    }
  }

  if (v7 >= 1)
  {
    v28 = v7 + 1;
    while (1)
    {
      v30 = *v2++;
      v29 = v30;
      if (v30 < 0)
      {
        break;
      }

      *v8++ = v29;
      if (--v28 <= 1)
      {
        goto LABEL_20;
      }
    }

    v32 = result[1];
    *(v32 + 65) = v29;
    *(v32 + 64) = 1;
    v31 = 12;
    goto LABEL_24;
  }

LABEL_20:
  if (v2 < v3 && v8 >= v5)
  {
    v31 = 15;
LABEL_24:
    *a2 = v31;
  }

  if (v6)
  {
    v33 = v8 - v4;
    if (v33)
    {
      v34 = v33 >> 1;
      do
      {
        *v6 = v27;
        v6 += 4;
        ++v27;
        --v34;
      }

      while (v34);
    }
  }

  result[2] = v2;
  result[4] = v8;
  result[6] = v6;
  return result;
}

uint64_t sub_19524EF2C(void *a1, int *a2)
{
  v2 = a1[2];
  if (v2 >= a1[3])
  {
    v6 = 8;
LABEL_6:
    *a2 = v6;
    return 0xFFFFLL;
  }

  v5 = *v2;
  result = v5;
  a1[2] = v2 + 1;
  if ((v5 & 0x80000000) != 0)
  {
    v7 = a1[1];
    *(v7 + 65) = result;
    *(v7 + 64) = 1;
    v6 = 12;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_19524EF88(uint64_t result, void *a2, int *a3)
{
  if (*(a2[1] + 64) >= 1)
  {
    *a3 = -127;
    return result;
  }

  v3 = a2[2];
  v4 = a2[3];
  v5 = *(result + 32);
  v6 = *(result + 40) - v5;
  if (v4 - v3 < v6)
  {
    v6 = v4 - v3;
  }

  if (v6 >= 16)
  {
    v7 = v6 >> 4;
    while (1)
    {
      v8 = *v3;
      *v5 = *v3;
      v9 = v3[1];
      v5[1] = v9;
      v10 = v3[2];
      v5[2] = v10;
      v11 = v3[3];
      v5[3] = v11;
      v12 = v3[4];
      v5[4] = v12;
      v13 = v3[5];
      v5[5] = v13;
      v14 = v3[6];
      v5[6] = v14;
      v15 = v3[7];
      v5[7] = v15;
      v16 = v3[8];
      v5[8] = v16;
      v17 = v3[9];
      v5[9] = v17;
      v18 = v3[10];
      v5[10] = v18;
      v19 = v3[11];
      v5[11] = v19;
      v20 = v3[12];
      v5[12] = v20;
      v21 = v3[13];
      v5[13] = v21;
      v22 = v3[14];
      v5[14] = v22;
      v23 = v3[15];
      v24.i8[0] = v8;
      v24.i8[1] = v9;
      v24.i8[2] = v10;
      v24.i8[3] = v11;
      v24.i8[4] = v12;
      v24.i8[5] = v13;
      v24.i8[6] = v14;
      v5[15] = v23;
      v24.i8[7] = v15;
      v25.i8[0] = v16;
      v25.i8[1] = v17;
      v25.i8[2] = v18;
      v25.i8[3] = v19;
      v25.i8[4] = v20;
      v25.i8[5] = v21;
      v25.i8[6] = v22;
      v25.i8[7] = v23;
      v26 = vorr_s8(v24, v25);
      if (((v26.i32[0] | v26.i32[1] | ((*&v26 | HIDWORD(*&v26)) >> 16) | ((v26.i32[0] | v26.i32[1] | ((*&v26 | HIDWORD(*&v26)) >> 16)) >> 8)) & 0x80) != 0)
      {
        break;
      }

      v5 += 16;
      v3 += 16;
      v27 = __OFSUB__(v7--, 1);
      if ((v7 < 0) ^ v27 | (v7 == 0))
      {
        v7 = 0;
        break;
      }
    }

    v6 += 16 * (v7 - (v6 >> 4));
  }

  if (v6 < 1)
  {
LABEL_16:
    if (v3 >= v4 || v5 < *(result + 40))
    {
      goto LABEL_21;
    }

    v30 = 15;
  }

  else
  {
    v28 = v6 + 1;
    while (1)
    {
      v29 = *v3;
      if (v29 < 0)
      {
        break;
      }

      ++v3;
      *v5++ = v29;
      if (--v28 <= 1)
      {
        goto LABEL_16;
      }
    }

    v30 = -127;
  }

  *a3 = v30;
LABEL_21:
  a2[2] = v3;
  *(result + 32) = v5;
  return result;
}

uint64_t sub_19524F140(uint64_t result, uint64_t *a2, uint64_t a3, int a4, _DWORD *a5)
{
  v35 = result;
  v8 = *(result + 88);
  if (*(result + 253))
  {
    v9 = 1088;
  }

  else
  {
    v9 = 64;
  }

  v10 = *(result + 252);
  v11 = *(result + 232);
  v39 = v9;
  v40 = *(result + 88);
  if (*(result + 252))
  {
    v12 = 0;
    v13 = 0;
    if (v10 == 3)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v10 == 2 || v10 == 9)
    {
      v16 = 3;
    }

    else
    {
      v16 = v14;
    }

    v37 = v9 >> 1;
    do
    {
      v38 = v13;
      v17 = *(v8 + 2 * v13);
      if (v37 < v17)
      {
        v18 = 0;
        v41 = v8 + 4 * v17;
        while (1)
        {
          v19 = *(v41 + 4 * v18);
          if (v19)
          {
            v20 = (v11 + 16 * v16 * *(v41 + 4 * v18));
            v21 = HIWORD(v19);
            if (a4 > 2)
            {
              switch(a4)
              {
                case 3:
                  do
                  {
                    if (a3 == 1 || (v21) && (*v20 + 32448) <= 0x6EBCu)
                    {
                      result = (a2[1])(*a2, v12);
                    }

                    v21 >>= 1;
                    v20 += 2;
                    v12 = (v12 + 1);
                  }

                  while ((v12 & 0xF) != 0);
                  break;
                case 4:
                  do
                  {
                    if (a3 == 1 || (v21) && (*v20 + 24159) <= 0x5D5Du && ((*v20 + 95) & 0xFEu) <= 0x5D)
                    {
                      result = (a2[1])(*a2, v12);
                    }

                    v21 >>= 1;
                    v20 += 2;
                    v12 = (v12 + 1);
                  }

                  while ((v12 & 0xF) != 0);
                  break;
                case 5:
                  do
                  {
                    if (a3 == 1 || (v21) && (*v20 + 24159) <= 0x5C5Du && ((*v20 + 95) & 0xFEu) <= 0x5D)
                    {
                      result = (a2[1])(*a2, v12);
                    }

                    v21 >>= 1;
                    v20 += 2;
                    v12 = (v12 + 1);
                  }

                  while ((v12 & 0xF) != 0);
                  break;
                default:
LABEL_73:
                  *a5 = 5;
                  return result;
              }
            }

            else if (a4)
            {
              if (a4 == 1)
              {
                do
                {
                  if (a3 == 1 || (v21) && *v20 >= 0x100u)
                  {
                    result = (a2[1])(*a2, v12);
                  }

                  v21 >>= 1;
                  v20 += 2;
                  v12 = (v12 + 1);
                }

                while ((v12 & 0xF) != 0);
              }

              else
              {
                if (a4 != 2)
                {
                  goto LABEL_73;
                }

                do
                {
                  if (a3 == 1 || (v21) && *v20 - 129 <= 1)
                  {
                    result = (a2[1])(*a2, v12);
                  }

                  v21 >>= 1;
                  v20 += 3;
                  v12 = (v12 + 1);
                }

                while ((v12 & 0xF) != 0);
              }
            }

            else
            {
              do
              {
                if (v21)
                {
                  result = (a2[1])(*a2, v12);
                  v20 += v16;
                }

                else if (a3 == 1)
                {
                  v22 = 0;
                  if (v16 != 2)
                  {
                    if (v16 != 3)
                    {
                      v23 = *v20++;
                      v22 = v23;
                    }

                    v24 = *v20++;
                    v22 |= v24;
                  }

                  v25 = *v20;
                  v26 = v20[1];
                  v20 += 2;
                  if (v25 | v22 | v26)
                  {
                    result = (a2[1])(*a2, v12);
                  }
                }

                v21 >>= 1;
                v12 = (v12 + 1);
              }

              while ((v12 & 0xF) != 0);
            }
          }

          else
          {
            v12 = (v12 + 16);
          }

          if (++v18 == 64)
          {
            goto LABEL_71;
          }
        }
      }

      v12 = (v12 + 1024);
LABEL_71:
      v13 = v38 + 1;
      v8 = v40;
    }

    while (v38 + 1 < v39);
  }

  else
  {
    v27 = 0;
    v28 = 0;
    if (a3)
    {
      v29 = 2048;
    }

    else
    {
      v29 = 3840;
    }

    do
    {
      v30 = *(v8 + 2 * v27);
      if (v9 >= v30)
      {
        v28 = (v28 + 1024);
      }

      else
      {
        v31 = 0;
        v32 = v8 + 2 * v30;
        do
        {
          if (*(v32 + 2 * v31))
          {
            v33 = (v11 + 2 * *(v32 + 2 * v31));
            do
            {
              v34 = *v33++;
              if (v29 <= v34)
              {
                (a2[1])(*a2, v28);
              }

              v28 = (v28 + 1);
            }

            while ((v28 & 0xF) != 0);
          }

          else
          {
            v28 = (v28 + 16);
          }

          ++v31;
        }

        while (v31 != 64);
      }

      ++v27;
      LODWORD(v9) = v39;
      v8 = v40;
    }

    while (v27 != v39);
  }

  return sub_195242D04(v35, a2, a3, a4);
}

uint64_t sub_19524F568(uint64_t result, int *a2)
{
  v2 = a2;
  v3 = result;
  v152 = 0;
  v153 = 0;
  v151 = 0;
  v4 = *(result + 8);
  if (*(v4 + 282) >= 1)
  {
    result = sub_1952422F0(*(result + 8), result, -1, a2);
    if (*a2 > 0)
    {
      return result;
    }

    v2 = a2;
    if (*(v4 + 282) < 0)
    {
      return result;
    }
  }

  v6 = *(v4 + 48);
  if (*(v6 + 48) != 1)
  {
    v70 = *(v3 + 16);
    v69 = *(v3 + 24);
    v71 = *(v3 + 40);
    v152 = *(v3 + 32);
    v153 = v70;
    v150 = v3;
    v151 = *(v3 + 48);
    v72 = 56;
    if ((*(v4 + 56) & 0x10) != 0)
    {
      v72 = 64;
    }

    v73 = *(v4 + 72);
    LOBYTE(v74) = *(v4 + 64);
    v75 = *(v4 + 76);
    if (!*(v4 + 76))
    {
      v75 = *(v6 + 49);
    }

    if (v70 >= v69)
    {
      goto LABEL_218;
    }

    v76 = 0;
    v77 = *(v6 + v72);
    v78 = (v4 + 65);
    v79 = *(v6 + 72);
    if (*(v4 + 64))
    {
      v80 = -1;
    }

    else
    {
      v80 = 0;
    }

    while (1)
    {
      v81 = v152;
      if (v152 >= v71)
      {
        goto LABEL_217;
      }

      if (v74)
      {
        v153 = v70 + 1;
        v82 = *v70;
        v78[v74] = v82;
        LODWORD(v83) = *(v77 + (v75 << 10) + 4 * v82);
        ++v70;
        v84 = v75;
        goto LABEL_89;
      }

      v85 = v151;
      if (!v151)
      {
        while (1)
        {
          v83 = *(v77 + (v75 << 10) + 4 * *v70);
          if ((v83 & 0x80000000) != 0)
          {
            if (v83 >= 0x80100000)
            {
              goto LABEL_83;
            }

            v75 = 0;
            v153 = ++v70;
            *v81 = v83;
            v152 = v81 + 1;
          }

          else
          {
            v89 = v83 >> 24;
            v73 = v83 & 0xFFFFFF;
            v87 = v70 + 1;
            v153 = v70 + 1;
            if ((v70 + 1) >= v69 || (LODWORD(v83) = *(v77 + (v89 << 10) + 4 * *v87), (v83 & 0x80F00000) != 0x80400000) || (v90 = *(v79 + 2 * (v73 + v83)), v90 > 0xFFFD))
            {
LABEL_85:
              *v78 = *v70;
              v74 = 1;
              v70 = v87;
              v84 = v89;
              goto LABEL_86;
            }

            v73 = 0;
            v70 += 2;
            v153 = v70;
            *v81 = v90;
            v152 = v81 + 1;
            v75 = BYTE3(v83) & 0x7F;
          }

          v81 = v152;
          if (v70 >= v69 || v152 >= v71)
          {
LABEL_83:
            v74 = 0;
            v84 = v75;
            goto LABEL_86;
          }
        }
      }

      v84 = v75;
      while (1)
      {
        v83 = *(v77 + (v84 << 10) + 4 * *v70);
        if ((v83 & 0x80000000) != 0)
        {
          break;
        }

        v86 = v83 >> 24;
        v73 = v83 & 0xFFFFFF;
        v87 = v70 + 1;
        v153 = v70 + 1;
        if ((v70 + 1) >= v69 || (LODWORD(v83) = *(v77 + (v86 << 10) + 4 * *v87), (v83 & 0x80F00000) != 0x80400000) || (v88 = *(v79 + 2 * (v73 + v83)), v88 > 0xFFFD))
        {
          ++v76;
          v89 = v86;
          goto LABEL_85;
        }

        v70 += 2;
        v153 = v70;
        *v81 = v88;
        v152 = v81 + 1;
        if (v85)
        {
          *v85++ = v80;
          v151 = v85;
          v80 = v76 + 2;
          v76 += 2;
        }

        v73 = 0;
        v84 = BYTE3(v83) & 0x7F;
LABEL_71:
        v74 = 0;
        v81 = v152;
        if (v70 >= v69 || v152 >= v71)
        {
          goto LABEL_86;
        }
      }

      if (v83 < 0x80100000)
      {
        break;
      }

      v74 = 0;
LABEL_86:
      if (v70 >= v69)
      {
        goto LABEL_185;
      }

      if (v81 >= v71)
      {
        *v2 = 15;
LABEL_185:
        LOBYTE(v75) = v84;
        goto LABEL_218;
      }

      v153 = v70 + 1;
      v78[v74] = *v70++;
LABEL_89:
      ++v76;
      v74 = (v74 + 1);
      if ((v83 & 0x80000000) == 0)
      {
        v75 = BYTE3(v83);
        v73 += v83 & 0xFFFFFF;
        goto LABEL_153;
      }

      *(v4 + 76) = v84;
      v75 = BYTE3(v83) & 0x7F;
      v91 = (v83 >> 20) & 0xF;
      if (!v91)
      {
        goto LABEL_112;
      }

      if (v91 == 5)
      {
        v94 = v73 + v83;
        v93 = *(v79 + 2 * v94);
        if (v93 >> 11 <= 0x1A)
        {
          goto LABEL_99;
        }

        v99 = v94 + 1;
        if (v93 >> 13 <= 6)
        {
          *v81 = v93 & 0xDBFF;
          v100 = v81 + 1;
          v152 = v81 + 1;
          v101 = v151;
          if (v151)
          {
            *v151 = v80;
            v151 = v101 + 1;
            if (v100 < v71)
            {
              v73 = 0;
              LOBYTE(v74) = 0;
              v102 = *(v79 + 2 * v99);
              v152 = v81 + 2;
              v81[1] = v102;
              v151 = v101 + 2;
              v101[1] = v80;
              goto LABEL_152;
            }
          }

          else if (v100 < v71)
          {
            v73 = 0;
            LOBYTE(v74) = 0;
            v113 = *(v79 + 2 * v99);
            v152 = v81 + 2;
            v81[1] = v113;
            goto LABEL_152;
          }

          v73 = 0;
          LOBYTE(v74) = 0;
          *(v4 + 144) = *(v79 + 2 * v99);
LABEL_216:
          *(v4 + 93) = 1;
LABEL_217:
          *v2 = 15;
          goto LABEL_218;
        }

        if ((v93 & 0xFFFE) == 0xE000)
        {
          LOWORD(v93) = *(v79 + 2 * v99);
LABEL_99:
          *v81 = v93;
          v95 = (v81 + 1);
LABEL_113:
          v152 = v95;
          v103 = v151;
          if (v151)
          {
            v73 = 0;
            LOBYTE(v74) = 0;
            *v151 = v80;
            v151 = v103 + 1;
            goto LABEL_152;
          }

          v73 = 0;
LABEL_116:
          LOBYTE(v74) = 0;
          goto LABEL_152;
        }

        v84 = v75;
        if (v93 != 0xFFFF)
        {
LABEL_126:
          if (!v74)
          {
            v73 = 0;
            goto LABEL_152;
          }

          if (*v2 >= 1)
          {
            if (v74 < 2)
            {
LABEL_210:
              v73 = 0;
            }

            else
            {
              v139 = *(*(v4 + 48) + 49) != 0;
              v140 = (v4 + 66);
              v141 = 1;
              while (1)
              {
                result = sub_195250584(v77, v75, v139, *v140);
                if (result)
                {
                  break;
                }

                ++v141;
                ++v140;
                if (v74 == v141)
                {
                  goto LABEL_210;
                }
              }

              v143 = v74 - v141;
              v144 = &v70[-*(v150 + 16)];
              if (v144 >= (v74 - v141))
              {
                v73 = 0;
                v70 -= v143;
              }

              else
              {
                v145 = v144 - v143;
                *(v4 + 282) = v145;
                result = memcpy((v4 + 250), v140, -v145);
                v73 = 0;
                v70 = *(v150 + 16);
              }

              LOBYTE(v74) = v141;
            }

            goto LABEL_218;
          }

          *(v150 + 16) = v70;
          v104 = *(*(v4 + 48) + 288);
          if (v104 && (v149 = v2, v105 = v79, v106 = v78, result = sub_195241EB0(v4, v104, v74, &v153, v69, &v152, v71, &v151, v80, *(v150 + 2), v2), v78 = v106, v79 = v105, v2 = v149, result))
          {
LABEL_130:
            LOBYTE(v74) = 0;
          }

          else
          {
            if (v74 == 4 && (*(v4 + 57) & 0x80) != 0)
            {
              v107 = *(v4 + 68) + 10 * (*(v4 + 67) + 126 * (*(v4 + 66) + 10 * *(v4 + 65)));
              v108 = 14;
              v109 = &dword_19547B4A8;
              while (1)
              {
                v110 = *(v109 - 1);
                v136 = v107 >= v110;
                v111 = v107 - v110;
                if (v136 && v107 <= *v109)
                {
                  break;
                }

                v109 += 4;
                if (!--v108)
                {
                  goto LABEL_139;
                }
              }

              *v2 = 0;
              v114 = v80;
              v115 = v2;
              v116 = v79;
              v117 = v78;
              result = sub_1952402B8(v4, v111 + *(v109 - 3), &v152, v71, &v151, v114, v2);
              v78 = v117;
              v79 = v116;
              v2 = v115;
              goto LABEL_130;
            }

LABEL_139:
            *v2 = 10;
          }

          v73 = 0;
          v70 = v153;
          if (*v2 < 1)
          {
            v80 = v76 + v153 - *(v150 + 16);
            v76 = v80;
            goto LABEL_153;
          }

          goto LABEL_218;
        }

LABEL_125:
        *v2 = 12;
        v75 = v84;
        goto LABEL_126;
      }

      if (v91 != 4)
      {
        if ((v83 & 0xD00000) == 0x100000)
        {
          *v81 = (v83 >> 10) & 0x3FF | 0xD800;
          v96 = v81 + 1;
          v152 = v81 + 1;
          v97 = v151;
          if (v151)
          {
            *v151 = v80;
            v151 = v97 + 1;
            v98 = v83 & 0x3FF | 0xDC00;
            if (v96 < v71)
            {
              v73 = 0;
              LOBYTE(v74) = 0;
              v152 = v81 + 2;
              v81[1] = v98;
              v151 = v97 + 2;
              v97[1] = v80;
LABEL_152:
              v80 = v76;
              goto LABEL_153;
            }
          }

          else
          {
            v98 = v83 & 0x3FF | 0xDC00;
            if (v96 < v71)
            {
              v73 = 0;
              LOBYTE(v74) = 0;
              v152 = v81 + 2;
              v81[1] = v98;
              goto LABEL_152;
            }
          }

          v73 = 0;
          LOBYTE(v74) = 0;
          *(v4 + 144) = v98;
          goto LABEL_216;
        }

        v73 = 0;
        if (((v83 >> 20) & 0xF) > 6)
        {
          if (v91 == 7)
          {
LABEL_124:
            v84 = BYTE3(v83) & 0x7F;
            goto LABEL_125;
          }

          if (v91 == 8)
          {
            v73 = *(*(v4 + 48) + 49);
            if (!*(*(v4 + 48) + 49))
            {
              goto LABEL_116;
            }

            goto LABEL_125;
          }
        }

        else
        {
          if (v91 == 2)
          {
LABEL_112:
            *v81 = v83;
            v95 = (v81 + 1);
            goto LABEL_113;
          }

          if (v91 == 6)
          {
            goto LABEL_126;
          }
        }

        LOBYTE(v74) = 0;
        goto LABEL_152;
      }

      v92 = v73 + v83;
      v93 = *(v79 + 2 * v92);
      if (v93 <= 0xFFFD)
      {
        goto LABEL_99;
      }

      if (v93 != 65534)
      {
        goto LABEL_124;
      }

      v146 = v78;
      v147 = v79;
      v148 = v2;
      result = sub_19525051C(*(v4 + 48) + 48, v92);
      if (result == 65534)
      {
        v2 = v148;
        v78 = v146;
        v79 = v147;
        goto LABEL_126;
      }

      *v81 = result;
      v152 = v81 + 1;
      v112 = v151;
      v2 = v148;
      v78 = v146;
      v79 = v147;
      v73 = 0;
      LOBYTE(v74) = 0;
      if (v151)
      {
        *v151 = v80;
        v151 = v112 + 1;
      }

      v80 = v76;
LABEL_153:
      if (v70 >= v69)
      {
LABEL_218:
        *(v4 + 72) = v73;
        *(v4 + 76) = v75;
        *(v4 + 64) = v74;
        *(v150 + 16) = v70;
        v142 = v151;
        *(v150 + 32) = v152;
        *(v150 + 48) = v142;
        return result;
      }
    }

    v153 = ++v70;
    *v81 = v83;
    v152 = v81 + 1;
    v84 = 0;
    if (v85)
    {
      *v85++ = v80;
      v151 = v85;
      v80 = ++v76;
    }

    goto LABEL_71;
  }

  if ((*(v6 + 253) & 1) == 0)
  {
    v7 = 0;
    v9 = *(v3 + 8);
    v8 = *(v3 + 16);
    v11 = *(v3 + 24);
    v10 = *(v3 + 32);
    v12 = v3;
    v13 = (*(v3 + 40) - v10) >> 1;
    v154 = *(v3 + 48);
    v155 = v10;
    v14 = 64;
    if ((*(v9 + 56) & 0x10) == 0)
    {
      v14 = 56;
    }

    v15 = *(*(v9 + 48) + v14);
    if (v11 - v8 < v13)
    {
      LODWORD(v13) = v11 - v8;
    }

    v16 = xmmword_19547B330;
    v17 = xmmword_19547B340;
    v18 = xmmword_19547B350;
    result = 2;
    v19 = v8;
    while (1)
    {
      if (v13 < 16)
      {
        goto LABEL_23;
      }

      v20 = v13 >> 4;
      while (1)
      {
        v156 = v8 + 1;
        v21 = *(v15 + 4 * *v8);
        v155 = v10 + 1;
        *v10 = v21;
        v156 = v8 + 2;
        v22 = *(v15 + 4 * v8[1]);
        v23 = v22 | v21;
        v155 = v10 + 2;
        v10[1] = v22;
        v156 = v8 + 3;
        v24 = *(v15 + 4 * v8[2]);
        v155 = v10 + 3;
        v10[2] = v24;
        v156 = v8 + 4;
        v25 = *(v15 + 4 * v8[3]);
        v26 = v23 | v24 | v25;
        v155 = v10 + 4;
        v10[3] = v25;
        v156 = v8 + 5;
        v27 = *(v15 + 4 * v8[4]);
        v155 = v10 + 5;
        v10[4] = v27;
        v156 = v8 + 6;
        v28 = *(v15 + 4 * v8[5]);
        v29 = v27 | v28;
        v155 = v10 + 6;
        v10[5] = v28;
        v156 = v8 + 7;
        v30 = *(v15 + 4 * v8[6]);
        v31 = v29 | v30;
        v155 = v10 + 7;
        v10[6] = v30;
        v156 = v8 + 8;
        v32 = *(v15 + 4 * v8[7]);
        v33 = v26 | v31;
        v10[7] = v32;
        v34 = *(v15 + 4 * v8[8]);
        v35 = v32 | v34;
        v10[8] = v34;
        v36 = *(v15 + 4 * v8[9]);
        v37 = v35 | v36;
        v10[9] = v36;
        v38 = *(v15 + 4 * v8[10]);
        v39 = v37 | v38;
        v10[10] = v38;
        v40 = *(v15 + 4 * v8[11]);
        v10[11] = v40;
        v41 = *(v15 + 4 * v8[12]);
        v42 = v33 | v39;
        v43 = v40 | v41;
        v10[12] = v41;
        v44 = *(v15 + 4 * v8[13]);
        v45 = v43 | v44;
        v10[13] = v44;
        v46 = *(v15 + 4 * v8[14]);
        v47 = v45 | v46;
        v10[14] = v46;
        v48 = v8 + 16;
        v156 = v8 + 16;
        v49 = *(v15 + 4 * v8[15]);
        v50 = v10 + 16;
        v155 = v10 + 16;
        v10[15] = v49;
        if ((v42 | v47 | v49) >= -2146435072)
        {
          break;
        }

        v10 += 16;
        v8 += 16;
        v51 = __OFSUB__(v20--, 1);
        if ((v20 < 0) ^ v51 | (v20 == 0))
        {
          v20 = 0;
          v8 = v48;
          v10 = v50;
          goto LABEL_18;
        }
      }

      v156 = v8;
      v155 = v10;
LABEL_18:
      v52 = (v13 >> 4) - v20;
      LODWORD(v13) = v13 - 16 * v52;
      v53 = v154;
      if (v154 && (v19 += 16 * v52, v52 >= 1))
      {
        v54 = v52 + 1;
        do
        {
          v55 = vdupq_n_s32(v7);
          *v53 = v7;
          *(v53 + 1) = vaddq_s32(v55, v16);
          *(v53 + 5) = vaddq_s32(v55, v17);
          *(v53 + 9) = vaddq_s32(v55, v18);
          *(v53 + 13) = vadd_s32(*v55.i8, 0xE0000000DLL);
          v56 = v7 + 16;
          v57 = v53 + 16;
          v53[15] = v7 + 15;
          --v54;
          v7 += 16;
          v53 += 16;
        }

        while (v54 > 1);
        v154 = v57;
        v58 = v156;
        v7 = v56;
      }

      else
      {
LABEL_23:
        v58 = v8;
      }

      if (v13 < 1)
      {
LABEL_186:
        v8 = v58;
        goto LABEL_193;
      }

LABEL_25:
      v59 = 0;
      v60 = 2 - v19 + v58;
      do
      {
        v61 = v60;
        v8 = (v58 + v59);
        if (v58 + v59 >= v11)
        {
          goto LABEL_193;
        }

        v156 = v8 + 1;
        v62 = *(v15 + 4 * *v8);
        v63 = (v62 >> 20) & 0xF;
        if (v62 < -2146435072 || v63 == 2)
        {
          *v10++ = v62;
          v155 = v10;
          v58 = v156;
          v51 = __OFSUB__(v13, 1);
          LODWORD(v13) = v13 - 1;
          if ((v13 < 0) ^ v51 | (v13 == 0))
          {
            goto LABEL_186;
          }

          goto LABEL_25;
        }

        ++v59;
        if (v63 == 6)
        {
          goto LABEL_37;
        }

        v60 = v61 + 1;
      }

      while (v63 != 7);
      *v2 = 12;
LABEL_37:
      v65 = v154;
      if (v154 && v58 - v19 + v59 > 1)
      {
        do
        {
          *v65++ = v7++;
          --v61;
        }

        while (v61 > 2);
        v154 = v65;
      }

      if (*v2 >= 1)
      {
        v8 = v156;
        goto LABEL_193;
      }

      v19 = (v58 + v59);
      *(v9 + 65) = *(v58 + v59 - 1);
      v66 = *(*(v9 + 48) + 288);
      if (!v66)
      {
        v8 = v156;
LABEL_191:
        *v2 = 10;
        *(v9 + 64) = 1;
        v7 = v8 + v7 - v58 - v59 + 1;
        v19 = (v58 + v59);
        goto LABEL_193;
      }

      v67 = v2;
      result = sub_195241EB0(v9, v66, 1, &v156, v11, &v155, *(v12 + 40), &v154, v7, *(v12 + 2), v2);
      v8 = v156;
      if (!result)
      {
        v2 = v67;
        goto LABEL_191;
      }

      v68 = *v67;
      *(v9 + 64) = 0;
      v2 = v67;
      if (v68 >= 1)
      {
        break;
      }

      v7 = 1 - v58 + v7 + v8 - v59;
      v10 = v155;
      v13 = (*(v12 + 40) - v155) >> 1;
      if (v11 - v8 < v13)
      {
        LODWORD(v13) = v11 - v8;
      }

      v17 = xmmword_19547B340;
      v16 = xmmword_19547B330;
      v18 = xmmword_19547B350;
      result = 2;
    }

    v19 = (v58 + v59);
    v7 = v7 + v8 - v58 - v59 + 1;
LABEL_193:
    v136 = *v2 > 0 || v8 >= v11;
    if (!v136 && v155 >= *(v12 + 40))
    {
      *v2 = 15;
    }

    v137 = v154;
    if (v154 && v8 != v19)
    {
      v138 = v19 - v8;
      do
      {
        *v137++ = v7++;
        v136 = __CFADD__(v138++, 1);
      }

      while (!v136);
    }

    *(v12 + 16) = v8;
    *(v12 + 32) = v155;
    *(v12 + 48) = v137;
    return result;
  }

  v119 = *(v3 + 8);
  v118 = *(v3 + 16);
  v121 = *(v3 + 24);
  v120 = *(v3 + 32);
  v122 = *(v3 + 40);
  v154 = *(v3 + 48);
  v155 = v120;
  v123 = 64;
  if ((*(v119 + 56) & 0x10) == 0)
  {
    v123 = 56;
  }

  if (v118 >= v121)
  {
LABEL_183:
    v126 = v118;
    goto LABEL_214;
  }

  v124 = 0;
  v125 = *(*(v119 + 48) + v123);
  while (1)
  {
    v120 = v155;
    if (v155 >= v122)
    {
      *v2 = 15;
      goto LABEL_183;
    }

    v126 = (v118 + 1);
    v156 = v118 + 1;
    v127 = *(v125 + 4 * *v118);
    if (v127 < -2146435072)
    {
LABEL_162:
      *v155 = v127;
      v155 = v120 + 1;
      v128 = v154;
      if (v154)
      {
        *v154 = v124;
        v154 = v128 + 1;
      }

LABEL_174:
      ++v124;
      goto LABEL_175;
    }

    if ((v127 & 0xD00000) == 0x100000)
    {
      *v155 = (v127 >> 10) & 0x3FF | 0xD800;
      v129 = v120 + 1;
      v130 = v154;
      if (v154)
      {
        *v154 = v124;
        v154 = v130 + 1;
        v131 = v127 & 0x3FF | 0xDC00;
        if (v129 >= v122)
        {
          goto LABEL_187;
        }

        v155 = v120 + 2;
        v120[1] = v131;
        v154 = v130 + 2;
        v130[1] = v124;
      }

      else
      {
        v131 = v127 & 0x3FF | 0xDC00;
        if (v129 >= v122)
        {
LABEL_187:
          *(v119 + 144) = v131;
          *(v119 + 93) = 1;
          *v2 = 15;
          ++v120;
          goto LABEL_214;
        }

        v155 = v120 + 2;
        v120[1] = v131;
      }

      goto LABEL_174;
    }

    v132 = (v127 >> 20) & 0xF;
    if (v132 == 2)
    {
      goto LABEL_162;
    }

    if (v132 != 6)
    {
      if (v132 == 7)
      {
        *v2 = 12;
        goto LABEL_213;
      }

      goto LABEL_174;
    }

    if (*v2 > 0)
    {
      goto LABEL_213;
    }

    *(v3 + 16) = v126;
    *(v119 + 65) = *v118;
    v133 = *(*(v119 + 48) + 288);
    if (!v133)
    {
      goto LABEL_212;
    }

    v134 = v2;
    result = sub_195241EB0(v119, v133, 1, &v156, v121, &v155, v122, &v154, v124, *(v3 + 2), v2);
    v126 = v156;
    if (!result)
    {
      break;
    }

    v135 = *v134;
    *(v119 + 64) = 0;
    if (v135 >= 1)
    {
      goto LABEL_213;
    }

    v2 = v134;
    v124 += v126 - *(v3 + 16) + 1;
LABEL_175:
    v118 = v126;
    if (v126 >= v121)
    {
      goto LABEL_213;
    }
  }

  v2 = v134;
LABEL_212:
  *v2 = 10;
  *(v119 + 64) = 1;
LABEL_213:
  v120 = v155;
LABEL_214:
  *(v3 + 16) = v126;
  *(v3 + 32) = v120;
  *(v3 + 48) = v154;
  return result;
}