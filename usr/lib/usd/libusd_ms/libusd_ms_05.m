uint64_t sub_29A025E44(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    v4 = result - 2;
    v5 = a2 - 2;
    do
    {
      v6 = *(v4 + 2 * v3);
      v7 = (v6 & 0x7FFF) << 13;
      v8 = v6 & 0x80000000;
      v9 = __clz(v7) - 8;
      result = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      if (v7)
      {
        LODWORD(v10) = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      }

      else
      {
        v10 = *&v8;
      }

      v11 = v7 >> 23;
      v12 = v7 | v8 | 0x7F800000;
      if (v7 >> 23 <= 0x1E)
      {
        v13 = (v7 | v8) + 939524096;
      }

      else
      {
        v13 = v7 | v8 | 0x7F800000;
      }

      if (v7 >= 0x800000)
      {
        v10 = *&v13;
      }

      if (v10 >= 0.0)
      {
        if (!v7)
        {
          LODWORD(result) = v8;
        }

        if (v11 <= 0x1E)
        {
          v12 = (v7 | v8) + 939524096;
        }

        if (v7 >= 0x800000)
        {
          result = v12;
        }

        else
        {
          result = result;
        }

        if (*&result <= 65504.0)
        {
          if (v7 < 0x800000)
          {
            if (v7)
            {
              v8 = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
            }

            goto LABEL_25;
          }

          v14 = v7 | v8;
          if (v11 > 0x1E)
          {
            v8 = v14 | 0x7F800000;
            goto LABEL_25;
          }
        }

        else
        {
          v14 = 260038656;
        }

        v8 = v14 + 939524096;
      }

      else
      {
        *&v8 = 0.0;
      }

LABEL_25:
      *(v5 + 2 * v3--) = *&v8;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_29A025F4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    v4 = result - 2;
    v5 = a2 - 2;
    do
    {
      v6 = *(v4 + 2 * v3);
      v7 = (v6 & 0x7FFF) << 13;
      v8 = v6 & 0x80000000;
      v9 = __clz(v7) - 8;
      v10 = (v6 & 0x80000000 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      if (v7)
      {
        v11 = *&v10;
      }

      else
      {
        LODWORD(v11) = v6 & 0x80000000;
      }

      result = v7 >> 23;
      v12 = v7 | v8 | 0x7F800000;
      v13 = (v7 | v8) + 939524096;
      if (result <= 0x1E)
      {
        v14 = (v7 | v8) + 939524096;
      }

      else
      {
        v14 = v7 | v8 | 0x7F800000;
      }

      if (v7 >= 0x800000)
      {
        v11 = *&v14;
      }

      if (v11 >= -65504.0)
      {
        if (v7)
        {
          v8 = v10;
        }

        if (result <= 0x1E)
        {
          v16 = *&v13;
        }

        else
        {
          v16 = *&v12;
        }

        if (v7 >= 0x800000)
        {
          v17 = v16;
        }

        else
        {
          v17 = *&v8;
        }

        if (v17 <= 65504.0)
        {
          v18 = *(v4 + 2 * v3);
        }

        else
        {
          v18 = 31743;
        }

        v19 = (v18 & 0x7FFF) << 13;
        v20 = (v18 << 16) & 0x80000000;
        if (v19 < 0x800000)
        {
          if (v19)
          {
            v21 = __clz(v19) - 8;
            v20 = (v20 | 0x38800000 | (v19 << v21)) - (v21 << 23);
          }

          goto LABEL_27;
        }

        v15 = v19 | v20;
        if (v19 >> 23 > 0x1E)
        {
          v20 = v15 | 0x7F800000;
          goto LABEL_27;
        }
      }

      else
      {
        v15 = -1887444992;
      }

      v20 = v15 + 939524096;
LABEL_27:
      *(v5 + 2 * v3--) = *&v20;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_29A026078(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    v4 = result - 2;
    v5 = a2 - 4;
    do
    {
      v6 = *(v4 + 2 * v3);
      v7 = (v6 & 0x7FFF) << 13;
      v8 = v6 & 0x80000000;
      v9 = __clz(v7) - 8;
      result = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      if (v7)
      {
        LODWORD(v10) = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      }

      else
      {
        v10 = *&v8;
      }

      v11 = v7 >> 23;
      v12 = v7 | v8 | 0x7F800000;
      if (v7 >> 23 <= 0x1E)
      {
        v13 = (v7 | v8) + 939524096;
      }

      else
      {
        v13 = v7 | v8 | 0x7F800000;
      }

      if (v7 >= 0x800000)
      {
        v10 = *&v13;
      }

      if (v10 >= 0.0)
      {
        if (!v7)
        {
          LODWORD(result) = v8;
        }

        if (v11 <= 0x1E)
        {
          v12 = (v7 | v8) + 939524096;
        }

        if (v7 >= 0x800000)
        {
          result = v12;
        }

        else
        {
          result = result;
        }

        if (*&result <= 65504.0)
        {
          if (v7 < 0x800000)
          {
            if (v7)
            {
              v8 = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
            }

            goto LABEL_25;
          }

          v14 = v7 | v8;
          if (v11 > 0x1E)
          {
            v8 = v14 | 0x7F800000;
            goto LABEL_25;
          }
        }

        else
        {
          v14 = 260038656;
        }

        v8 = v14 + 939524096;
      }

      else
      {
        *&v8 = 0.0;
      }

LABEL_25:
      *(v5 + 4 * v3--) = *&v8;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_29A026180(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    v4 = result - 2;
    v5 = a2 - 4;
    do
    {
      v6 = *(v4 + 2 * v3);
      v7 = (v6 & 0x7FFF) << 13;
      v8 = v6 & 0x80000000;
      v9 = __clz(v7) - 8;
      result = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      if (v7)
      {
        LODWORD(v10) = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      }

      else
      {
        v10 = *&v8;
      }

      v11 = v7 >> 23;
      v12 = v7 | v8 | 0x7F800000;
      if (v7 >> 23 <= 0x1E)
      {
        v13 = (v7 | v8) + 939524096;
      }

      else
      {
        v13 = v7 | v8 | 0x7F800000;
      }

      if (v7 >= 0x800000)
      {
        v10 = *&v13;
      }

      if (v10 >= -65504.0)
      {
        if (!v7)
        {
          LODWORD(result) = v8;
        }

        if (v11 <= 0x1E)
        {
          v12 = (v7 | v8) + 939524096;
        }

        if (v7 >= 0x800000)
        {
          result = v12;
        }

        else
        {
          result = result;
        }

        if (*&result <= 65504.0)
        {
          if (v7 < 0x800000)
          {
            if (v7)
            {
              v8 = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
            }

            goto LABEL_25;
          }

          v14 = v7 | v8;
          if (v11 > 0x1E)
          {
            v8 = v14 | 0x7F800000;
            goto LABEL_25;
          }
        }

        else
        {
          v14 = 260038656;
        }
      }

      else
      {
        v14 = -1887444992;
      }

      v8 = v14 + 939524096;
LABEL_25:
      *(v5 + 4 * v3--) = *&v8;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_29A026294(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    v4 = result - 2;
    v5 = a2 - 8;
    do
    {
      v6 = *(v4 + 2 * v3);
      v7 = (v6 & 0x7FFF) << 13;
      v8 = v6 & 0x80000000;
      v9 = __clz(v7) - 8;
      result = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      if (v7)
      {
        LODWORD(v10) = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      }

      else
      {
        v10 = *&v8;
      }

      v11 = v7 >> 23;
      v12 = v7 | v8 | 0x7F800000;
      if (v7 >> 23 <= 0x1E)
      {
        v13 = (v7 | v8) + 939524096;
      }

      else
      {
        v13 = v7 | v8 | 0x7F800000;
      }

      if (v7 >= 0x800000)
      {
        v10 = *&v13;
      }

      if (v10 >= 0.0)
      {
        if (!v7)
        {
          LODWORD(result) = v8;
        }

        if (v11 <= 0x1E)
        {
          v12 = (v7 | v8) + 939524096;
        }

        if (v7 >= 0x800000)
        {
          result = v12;
        }

        else
        {
          result = result;
        }

        if (*&result <= 65504.0)
        {
          if (v7 < 0x800000)
          {
            if (v7)
            {
              v8 = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
            }

            goto LABEL_25;
          }

          v14 = v7 | v8;
          if (v11 > 0x1E)
          {
            v8 = v14 | 0x7F800000;
            goto LABEL_25;
          }
        }

        else
        {
          v14 = 260038656;
        }

        v8 = v14 + 939524096;
      }

      else
      {
        *&v8 = 0.0;
      }

LABEL_25:
      *(v5 + 8 * v3--) = *&v8;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_29A02639C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    v4 = result - 2;
    v5 = a2 - 8;
    do
    {
      v6 = *(v4 + 2 * v3);
      v7 = (v6 & 0x7FFF) << 13;
      v8 = v6 & 0x80000000;
      v9 = __clz(v7) - 8;
      result = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      if (v7)
      {
        LODWORD(v10) = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      }

      else
      {
        v10 = *&v8;
      }

      v11 = v7 >> 23;
      v12 = v7 | v8 | 0x7F800000;
      if (v7 >> 23 <= 0x1E)
      {
        v13 = (v7 | v8) + 939524096;
      }

      else
      {
        v13 = v7 | v8 | 0x7F800000;
      }

      if (v7 >= 0x800000)
      {
        v10 = *&v13;
      }

      if (v10 >= -65504.0)
      {
        if (!v7)
        {
          LODWORD(result) = v8;
        }

        if (v11 <= 0x1E)
        {
          v12 = (v7 | v8) + 939524096;
        }

        if (v7 >= 0x800000)
        {
          result = v12;
        }

        else
        {
          result = result;
        }

        if (*&result <= 65504.0)
        {
          if (v7 < 0x800000)
          {
            if (v7)
            {
              v8 = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
            }

            goto LABEL_25;
          }

          v14 = v7 | v8;
          if (v11 > 0x1E)
          {
            v8 = v14 | 0x7F800000;
            goto LABEL_25;
          }
        }

        else
        {
          v14 = 260038656;
        }
      }

      else
      {
        v14 = -1887444992;
      }

      v8 = v14 + 939524096;
LABEL_25:
      *(v5 + 8 * v3--) = *&v8;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_29A0264B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    v4 = result - 2;
    v5 = a2 - 4;
    do
    {
      v6 = *(v4 + 2 * v3);
      v7 = (v6 & 0x7FFF) << 13;
      v8 = v6 & 0x80000000;
      v9 = __clz(v7) - 8;
      result = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      if (v7)
      {
        LODWORD(v10) = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      }

      else
      {
        v10 = *&v8;
      }

      v11 = v7 >> 23;
      v12 = v7 | v8 | 0x7F800000;
      if (v7 >> 23 <= 0x1E)
      {
        v13 = (v7 | v8) + 939524096;
      }

      else
      {
        v13 = v7 | v8 | 0x7F800000;
      }

      if (v7 >= 0x800000)
      {
        v10 = *&v13;
      }

      if (v10 >= -65504.0)
      {
        if (!v7)
        {
          LODWORD(result) = v8;
        }

        if (v11 <= 0x1E)
        {
          v12 = (v7 | v8) + 939524096;
        }

        if (v7 >= 0x800000)
        {
          result = v12;
        }

        else
        {
          result = result;
        }

        if (*&result <= 65504.0)
        {
          if (v7 < 0x800000)
          {
            if (v7)
            {
              v8 = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
            }

            goto LABEL_25;
          }

          v14 = v7 | v8;
          if (v11 > 0x1E)
          {
            v8 = v14 | 0x7F800000;
            goto LABEL_25;
          }
        }

        else
        {
          v14 = 260038656;
        }
      }

      else
      {
        v14 = -1887444992;
      }

      v8 = v14 + 939524096;
LABEL_25:
      *(v5 + 4 * v3--) = v8;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_29A0265BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    v4 = result - 2;
    v5 = a2 - 8;
    do
    {
      v6 = *(v4 + 2 * v3);
      v7 = (v6 & 0x7FFF) << 13;
      v8 = v6 & 0x80000000;
      v9 = __clz(v7) - 8;
      result = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      if (v7)
      {
        LODWORD(v10) = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
      }

      else
      {
        v10 = *&v8;
      }

      v11 = v7 >> 23;
      v12 = v7 | v8 | 0x7F800000;
      if (v7 >> 23 <= 0x1E)
      {
        v13 = (v7 | v8) + 939524096;
      }

      else
      {
        v13 = v7 | v8 | 0x7F800000;
      }

      if (v7 >= 0x800000)
      {
        v10 = *&v13;
      }

      if (v10 >= -65504.0)
      {
        if (!v7)
        {
          LODWORD(result) = v8;
        }

        if (v11 <= 0x1E)
        {
          v12 = (v7 | v8) + 939524096;
        }

        if (v7 >= 0x800000)
        {
          result = v12;
        }

        else
        {
          result = result;
        }

        if (*&result <= 65504.0)
        {
          if (v7 < 0x800000)
          {
            if (v7)
            {
              v8 = (v8 | 0x38800000 | (v7 << v9)) - (v9 << 23);
            }

            goto LABEL_25;
          }

          v14 = v7 | v8;
          if (v11 > 0x1E)
          {
            v8 = v14 | 0x7F800000;
            goto LABEL_25;
          }
        }

        else
        {
          v14 = 260038656;
        }
      }

      else
      {
        v14 = -1887444992;
      }

      v8 = v14 + 939524096;
LABEL_25:
      *(v5 + 8 * v3--) = *&v8;
    }

    while (v3);
  }

  return result;
}

float *sub_29A0266D0(float *result, _BYTE *a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = 0.0;
      if (*result >= 0.0)
      {
        v4 = *result;
        if (*result > 255.0)
        {
          v4 = 255.0;
        }
      }

      *a2++ = v4;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

float *sub_29A026720(float *result, _BYTE *a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = -128.0;
      if (*result >= -128.0)
      {
        v4 = *result;
        if (*result > 127.0)
        {
          v4 = 127.0;
        }
      }

      *a2++ = v4;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

float *sub_29A026770(float *result, _WORD *a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = 0.0;
      if (*result >= 0.0)
      {
        v4 = *result;
        if (*result > 65535.0)
        {
          v4 = 65535.0;
        }
      }

      *a2++ = v4;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

float *sub_29A0267BC(float *result, _WORD *a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = -32768.0;
      if (*result >= -32768.0)
      {
        v4 = *result;
        if (*result > 32767.0)
        {
          v4 = 32767.0;
        }
      }

      *a2++ = v4;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

float *sub_29A026808(float *result, _WORD *a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    v3 = a3 >> 2;
    do
    {
      v4 = -65504.0;
      if (*result >= -65504.0)
      {
        v4 = *result;
        if (*result > 65504.0)
        {
          v4 = 65504.0;
        }
      }

      v5 = LODWORD(v4) & 0x7FFFFFFF;
      v6 = HIWORD(LODWORD(v4)) & 0x8000;
      if ((LODWORD(v4) >> 23) < 0x71u)
      {
        if (v5 >= 0x33000001)
        {
          v8 = 126 - (v5 >> 23);
          v9 = LODWORD(v4) & 0x7FFFFF | 0x800000;
          v10 = v9 << ((v5 >> 23) - 94);
          v11 = v9 >> v8;
          LOWORD(v6) = v11 | HIWORD(v4) & 0x8000;
          if (v10 > 0x80000000 || (v10 == 0x80000000 ? (v12 = (v11 & 1) == 0) : (v12 = 1), !v12))
          {
            LOWORD(v6) = v6 + 1;
          }
        }
      }

      else
      {
        v7 = v6 | ((v5 + ((v5 >> 13) & 1) + 134221823) >> 13);
        v6 |= 0x7C00u;
        if (v5 >= 0x477FF000)
        {
          LOWORD(v7) = v6;
        }

        if (v5 != 2139095040)
        {
          v6 |= (v5 >> 13) & 0x3FF | (((v5 >> 13) & 0x3FF) == 0);
        }

        if (v5 >> 23 < 0xFF)
        {
          LOWORD(v6) = v7;
        }
      }

      *a2++ = v6;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

double *sub_29A026928(double *result, _BYTE *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = a3 >> 3;
    do
    {
      v4 = 0.0;
      if (*result >= 0.0)
      {
        v4 = *result;
        if (*result > 255.0)
        {
          v4 = 255.0;
        }
      }

      *a2++ = v4;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

double *sub_29A026974(double *result, _BYTE *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = a3 >> 3;
    do
    {
      v4 = -128.0;
      if (*result >= -128.0)
      {
        v4 = *result;
        if (*result > 127.0)
        {
          v4 = 127.0;
        }
      }

      *a2++ = v4;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

double *sub_29A0269C4(double *result, _WORD *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = a3 >> 3;
    do
    {
      v4 = 0.0;
      if (*result >= 0.0)
      {
        v4 = *result;
        if (*result > 65535.0)
        {
          v4 = 65535.0;
        }
      }

      *a2++ = v4;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

double *sub_29A026A10(double *result, _WORD *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = a3 >> 3;
    do
    {
      v4 = -32768.0;
      if (*result >= -32768.0)
      {
        v4 = *result;
        if (*result > 32767.0)
        {
          v4 = 32767.0;
        }
      }

      *a2++ = v4;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

double *sub_29A026A60(double *result, _WORD *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = a3 >> 3;
    do
    {
      v4 = -65504.0;
      if (*result >= -65504.0)
      {
        v4 = *result;
        if (*result > 65504.0)
        {
          v4 = 65504.0;
        }
      }

      v5 = v4;
      v6 = LODWORD(v5) & 0x7FFFFFFF;
      v7 = HIWORD(LODWORD(v5)) & 0x8000;
      if ((LODWORD(v5) >> 23) < 0x71u)
      {
        if (v6 >= 0x33000001)
        {
          v9 = 126 - (v6 >> 23);
          v10 = LODWORD(v5) & 0x7FFFFF | 0x800000;
          v11 = v10 << ((v6 >> 23) - 94);
          v12 = v10 >> v9;
          LOWORD(v7) = v12 | HIWORD(v5) & 0x8000;
          if (v11 > 0x80000000 || (v11 == 0x80000000 ? (v13 = (v12 & 1) == 0) : (v13 = 1), !v13))
          {
            LOWORD(v7) = v7 + 1;
          }
        }
      }

      else
      {
        v8 = v7 | ((v6 + ((v6 >> 13) & 1) + 134221823) >> 13);
        v7 |= 0x7C00u;
        if (v6 >= 0x477FF000)
        {
          LOWORD(v8) = v7;
        }

        if (v6 != 2139095040)
        {
          v7 |= (v6 >> 13) & 0x3FF | (((v6 >> 13) & 0x3FF) == 0);
        }

        if (v6 >> 23 < 0xFF)
        {
          LOWORD(v7) = v8;
        }
      }

      *a2++ = v7;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_29A026B84(uint64_t a1, Alembic::Ogawa::v12::IData **a2, unint64_t a3, unsigned int *a4, unsigned int a5)
{
  v9 = *a4;
  if (v9 != a5 && (a5 - 14 > 0xFFFFFFFD || (v9 - 14) >= 0xFFFFFFFE))
  {
    sub_29A008864(v43);
    sub_29A00911C(v44, "Cannot convert the data to or from a string, or wstring.", 56);
    std::stringbuf::str();
    sub_29A008C60(v42, __p);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v37 = sub_29A008E1C(exception, v42);
    __cxa_throw(v37, &unk_2A203B108, sub_29A008B08);
  }

  if (*a2)
  {
    Size = Alembic::Ogawa::v12::IData::getSize(*a2);
    if (Size <= 0xF)
    {
      if (Size)
      {
        sub_29A008864(v43);
        sub_29A00911C(v44, "Incorrect data, expected to be empty or to have a key and data", 62);
        std::stringbuf::str();
        sub_29A008C60(v42, __p);
        if (v41 < 0)
        {
          operator delete(__p[0]);
        }

        v38 = __cxa_allocate_exception(0x20uLL);
        v39 = sub_29A008E1C(v38, v42);
        __cxa_throw(v39, &unk_2A203B108, sub_29A008B08);
      }

      return;
    }

    if (v9 == 13)
    {
      v18 = Size - 16;
      if (Size == 16 || (Size & 3) != 0)
      {
        return;
      }

      v19 = operator new[](Size - 16);
      Alembic::Ogawa::v12::IData::read(*a2, v18, v19, 16, a3);
      if (v18)
      {
        v20 = 0;
        v21 = 0;
        if (v18 >> 2 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v18 >> 2;
        }

        do
        {
          v23 = *(a1 + 23);
          if ((v23 & 0x8000000000000000) != 0)
          {
            v23 = *(a1 + 8);
          }

          if (v21 >= v23)
          {
            break;
          }

          v24 = *(v19 + v20);
          if (v24)
          {
            std::wstring::push_back((a1 + 24 * v21), v24);
          }

          else
          {
            ++v21;
          }

          ++v20;
        }

        while (v22 != v20);
      }

      v17 = v19;
      goto LABEL_33;
    }

    if (v9 == 12)
    {
      v11 = Size - 16;
      if (Size == 16)
      {
        return;
      }

      v12 = operator new[](Size - 16);
      Alembic::Ogawa::v12::IData::read(*a2, v11, v12, 16, a3);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        if (!v12[v15])
        {
          v16 = *(a1 + 23);
          if ((v16 & 0x8000000000000000) != 0)
          {
            v16 = *(a1 + 8);
          }

          if (v14 < v16)
          {
            MEMORY[0x29C2C1A60](a1 + 24 * v14, &v12[v13]);
            v13 = v15 + 1;
            ++v14;
          }
        }

        ++v15;
      }

      while (v11 != v15);
      v17 = v12;
LABEL_33:

      operator delete[](v17);
      return;
    }

    if (v9 == a5)
    {
      v25 = Size - 16;
      v26 = *a2;

      Alembic::Ogawa::v12::IData::read(v26, v25, a1, 16, a3);
    }

    else
    {
      if (v9 > 0xB)
      {
        v27 = 0;
      }

      else
      {
        v27 = qword_29B431948[v9];
      }

      if (a5 > 0xD)
      {
        v28 = 0;
      }

      else
      {
        v28 = qword_29B4319A8[a5];
      }

      if (v27 > v28)
      {
        if (v9 > 0xB)
        {
          v29 = 0;
        }

        else
        {
          v29 = qword_29B431948[v9];
        }

        if (a5 > 0xD)
        {
          v32 = 0;
        }

        else
        {
          v32 = qword_29B4319A8[a5];
        }

        if (v29 <= v32)
        {
          return;
        }

        v33 = Size - 16;
        v34 = operator new[](Size - 16);
        Alembic::Ogawa::v12::IData::read(*a2, v33, v34, 16, a3);
        sub_29A023DEC(v9, a5, v34, a1, v33, v35);
        v17 = v34;
        goto LABEL_33;
      }

      v30 = Size - 16;
      Alembic::Ogawa::v12::IData::read(*a2, Size - 16, a1, 16, a3);

      sub_29A023DEC(v9, a5, a1, a1, v30, v31);
    }
  }
}

void sub_29A026FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29A026FE8(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int *a4, uint64_t **a5)
{
  __p = 0;
  v29 = 0;
  v30 = 0;
  v9 = *(a1 + 8);
  v27[0] = *a1;
  v27[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 8);
  v26[0] = *a2;
  v26[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  sub_29A023B50(v27, v26, a3, a4, &__p);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  Alembic::AbcCoreAbstract::v12::AllocateArraySample(a4, &__p, &v25);
  v11 = v25;
  v25 = 0uLL;
  v12 = a5[1];
  *a5 = v11;
  if (v12)
  {
    sub_29A014BEC(v12);
    if (*(&v25 + 1))
    {
      sub_29A014BEC(*(&v25 + 1));
    }
  }

  if (*a2 && Alembic::Ogawa::v12::IData::getSize(*a2) >= 0x11)
  {
    v13 = (*a5)[2];
    v14 = (*a5)[3] - v13;
    if (v14)
    {
      v15 = v14 >> 3;
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v16 = 1;
      do
      {
        v17 = *v13++;
        v16 *= v17;
        --v15;
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v18 = *a4;
    if (v18 > 0xD)
    {
      v19 = 0;
    }

    else
    {
      v19 = qword_29B4319A8[v18];
    }

    v20 = *(a4 + 4);
    if (v16 * v20 * v19 >= (Alembic::Ogawa::v12::IData::getSize(*a2) - 16))
    {
      v21 = **a5;
      v22 = *a2;
      v23 = *(a2 + 8);
      v24[0] = v22;
      v24[1] = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
      }

      sub_29A026B84(v21, v24, a3, a4, *a4);
      if (v23)
      {
        sub_29A014BEC(v23);
      }
    }
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_29A0271AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0271FC(Alembic::Ogawa::v12::IData **a1, void **a2, const void **a3)
{
  Size = Alembic::Ogawa::v12::IData::getSize(*a1);
  sub_29A02891C(&__p, Size);
  v7 = __p;
  if (__p != v27)
  {
    v8 = *a1;
    v9 = Alembic::Ogawa::v12::IData::getSize(v8);
    Alembic::Ogawa::v12::IData::read(v8, v9, __p, 0, 0);
    v10 = 0;
    v11 = v27 - __p;
    while (1)
    {
      v7 = __p;
      if (v10 >= v11)
      {
        break;
      }

      v12 = v10 + 16;
      if (v10 + 16 > v11)
      {
        break;
      }

      __dst[0] = *(__p + v10);
      sub_29A018094(a3, __dst);
      v7 = __p;
      v13 = *(__p + v10 + 12);
      v14 = v12 + 8 * v13;
      if (v13)
      {
        v15 = v14 > v11;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        goto LABEL_20;
      }

      v16 = *(__p + v10 + 4);
      sub_29A0124A0(__dst, *(__p + v10 + 12));
      v17 = 8 * v13;
      v18 = v27 - (__p + v10) - 16;
      v10 += 16;
      if (8 * v13 <= v18)
      {
        v19 = memcpy(__dst[0], __p + v12, 8 * v13);
        v20 = Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(v19);
        LODWORD(v24) = v20;
        *(&v24 + 1) = Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicTimePerCycle(v20);
        if (v16 != Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicTimePerCycle(v21))
        {
          sub_29A028400(&v23, v13, v16);
          v24 = v23;
        }

        v22 = operator new(0x28uLL);
        Alembic::AbcCoreAbstract::v12::TimeSampling::TimeSampling(v22, &v24, __dst);
        sub_29A017AE0(&v23, v22);
        sub_29A017F80(a2, &v23);
        if (*(&v23 + 1))
        {
          sub_29A014BEC(*(&v23 + 1));
        }

        v10 = v14;
      }

      if (__dst[0])
      {
        __dst[1] = __dst[0];
        operator delete(__dst[0]);
      }

      if (v17 > v18)
      {
        v7 = __p;
        break;
      }
    }
  }

  if (v7)
  {
LABEL_20:
    v27 = v7;
    operator delete(v7);
  }
}

void sub_29A0273C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A027430(unint64_t ***a1, unint64_t a2, unint64_t a3, const void **a4, void *a5, void **a6)
{
  Alembic::Ogawa::v12::IGroup::getData(*a1, a2, a3, &v43);
  if (!v43)
  {
    sub_29A008864(&v40);
    v33 = sub_29A00911C(v42, "ReadObjectHeaders Invalid data at index ", 40);
    MEMORY[0x29C2C1F00](v33, a2);
    std::stringbuf::str();
    sub_29A008C60(&__str, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v35 = sub_29A008E1C(exception, &__str);
    __cxa_throw(v35, &unk_2A203B108, sub_29A008B08);
  }

  if (Alembic::Ogawa::v12::IData::getSize(v43) >= 0x21)
  {
    Size = Alembic::Ogawa::v12::IData::getSize(v43);
    sub_29A02891C(&v40, Size - 32);
    v12 = v40;
    if (v40 != v41)
    {
      v13 = v41 - v40;
      Alembic::Ogawa::v12::IData::read(v43, v41 - v40, v40, 0, a3);
      v14 = 0;
      while (1)
      {
        if (v14 >= v13 || (v15 = v14 + 4, v14 + 4 > v13) || ((v16 = *&v40[v14], v17 = v15 + v16, v14 = v15 + v16 + 1, v16) ? (v18 = v14 > v13) : (v18 = 1), v18))
        {
LABEL_49:
          v12 = v40;
          goto LABEL_50;
        }

        sub_29A02887C(&__str, &v40[v15], v16);
        v19 = v40[v17];
        v20 = operator new(0x48uLL);
        v20[8] = 0;
        v20[7] = 0;
        *v20 = 0u;
        *(v20 + 1) = 0u;
        *(v20 + 2) = 0u;
        v20[6] = v20 + 7;
        sub_29A017588(&v37, v20);
        std::string::operator=(v37, &__str);
        v21 = v37;
        if (*(a4 + 23) >= 0)
        {
          v22 = *(a4 + 23);
        }

        else
        {
          v22 = a4[1];
        }

        sub_29A022DE0(&v36, v22 + 1);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v36;
        }

        else
        {
          v23 = v36.__r_.__value_.__r.__words[0];
        }

        if (v22)
        {
          if (*(a4 + 23) >= 0)
          {
            v24 = a4;
          }

          else
          {
            v24 = *a4;
          }

          memmove(v23, v24, v22);
        }

        *(&v23->__r_.__value_.__l.__data_ + v22) = 47;
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
          v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v26 = __str.__r_.__value_.__l.__size_;
        }

        v27 = std::string::append(&v36, p_str, v26);
        v28 = *&v27->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::string::operator=(v21 + 1, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        if (v19 != 255)
        {
          break;
        }

        v30 = v17 + 5;
        if (v17 + 5 <= v13)
        {
          v32 = *&v40[v14];
          v14 = v30 + v32;
          if (v30 + v32 <= v13)
          {
            sub_29A02887C(&__dst, &v40[v30], v32);
            sub_29A016F6C(v37 + 48, &__dst);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            goto LABEL_42;
          }

          v31 = 0;
          v14 = v17 + 5;
        }

        else
        {
          v31 = 0;
        }

LABEL_43:
        if (*(&v37 + 1))
        {
          sub_29A014BEC(*(&v37 + 1));
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
          if ((v31 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        else if ((v31 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3) > v19)
      {
        v29 = *a5 + 24 * v19;
        if (v37 + 48 != v29)
        {
          sub_29A028554((v37 + 48), *v29, (v29 + 8));
        }
      }

LABEL_42:
      sub_29A017F80(a6, &v37);
      v31 = 1;
      goto LABEL_43;
    }

LABEL_50:
    if (v12)
    {
      v41 = v12;
      operator delete(v12);
    }
  }

  if (v44)
  {
    sub_29A014BEC(v44);
  }
}

void sub_29A0277B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32)
{
  sub_29A008F20(&a24);
  sub_29A008B0C(&a31);
  v34 = *(v32 - 104);
  if (v34)
  {
    sub_29A014BEC(v34);
  }

  _Unwind_Resume(a1);
}

void sub_29A027890(unint64_t ***a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, void **a6)
{
  Alembic::Ogawa::v12::IGroup::getData(*a1, a2, a3, &v60);
  if (!v60)
  {
    sub_29A008864(&__str);
    v48 = sub_29A00911C(&__str.__r_.__value_.__r.__words[2], "ReadObjectHeaders Invalid data at index ", 40);
    MEMORY[0x29C2C1F00](v48, a2);
    std::stringbuf::str();
    sub_29A008C60(&__p, v56);
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v50 = sub_29A008E1C(exception, &__p);
    __cxa_throw(v50, &unk_2A203B108, sub_29A008B08);
  }

  if (Alembic::Ogawa::v12::IData::getSize(v60))
  {
    Size = Alembic::Ogawa::v12::IData::getSize(v60);
    sub_29A02891C(v56, Size);
    v12 = v60;
    v13 = Alembic::Ogawa::v12::IData::getSize(v60);
    Alembic::Ogawa::v12::IData::read(v12, v13, v56[0], 0, a3);
    v14 = v56[0];
    v15 = v56[1] - v56[0];
    if (v56[1] != v56[0])
    {
      v51 = a5;
      v52 = a6;
      v16 = 0;
      while (1)
      {
        v17 = operator new(0x68uLL);
        *v17 = 0;
        v17[1] = 0;
        v17[2] = 0;
        *(v17 + 6) = 1;
        v17[6] = 0;
        v17[5] = 0;
        v17[4] = v17 + 5;
        *(v17 + 14) = 127;
        *(v17 + 60) = 0;
        v17[8] = 0;
        v17[9] = 0;
        *(v17 + 40) = 257;
        *(v17 + 92) = 0;
        *(v17 + 84) = 0;
        sub_29A01CFAC(&v55, v17);
        v18 = v16 + 4;
        if (v16 + 4 > v15)
        {
          goto LABEL_6;
        }

        v20 = v56[0];
        v21 = *(v56[0] + v16);
        v22 = v55;
        *(v55 + 80) = v21 & 1;
        v23 = v21 & 3;
        if ((v21 & 3) == 0)
        {
          *(v22 + 24) = 0;
          v25 = (v21 >> 2) & 3;
          goto LABEL_67;
        }

        if (v23 != 1)
        {
          v23 = 2;
        }

        *(v22 + 24) = v23;
        v24 = v21 >> 4;
        if (v24 >= 0xE)
        {
          sub_29A008864(&__str);
          v45 = sub_29A00911C(&__str.__r_.__value_.__r.__words[2], "Read invalid POD type: ", 23);
          MEMORY[0x29C2C1ED0](v45, v21 >> 4);
          std::stringbuf::str();
          sub_29A008C60(&__p, &v53);
          if (SHIBYTE(v54) < 0)
          {
            operator delete(v53);
          }

          v46 = __cxa_allocate_exception(0x20uLL);
          v47 = sub_29A008E1C(v46, &__p);
          __cxa_throw(v47, &unk_2A203B108, sub_29A008B08);
        }

        v25 = (v21 >> 2) & 3;
        *(v22 + 56) = v24;
        *(v22 + 60) = v21 >> 12;
        *(v22 + 81) = (v21 & 0x400) != 0;
        if (v25 > 1)
        {
          if (v25 != 2 || (v26 = v16 + 8, v16 + 8 > v15))
          {
LABEL_20:
            v27 = 0;
            goto LABEL_23;
          }

          v27 = *&v20[v18];
        }

        else if (v25)
        {
          v26 = v16 + 6;
          if (v16 + 6 > v15)
          {
            goto LABEL_20;
          }

          v27 = *&v20[v18];
        }

        else
        {
          v26 = v16 + 5;
          if (v16 + 5 > v15)
          {
            goto LABEL_20;
          }

          v27 = v20[v18];
        }

        v18 = v26;
LABEL_23:
        *(v22 + 84) = v27;
        if ((v21 & 0x200) == 0)
        {
          if ((v21 & 0x800) == 0)
          {
            *(v22 + 88) = 1;
            v28 = v27 - 1;
            goto LABEL_47;
          }

LABEL_33:
          v28 = 0;
          *(v22 + 88) = 0;
          goto LABEL_47;
        }

        if (((v21 >> 2) & 3) > 1)
        {
          if (v25 != 2)
          {
            goto LABEL_33;
          }

          if (v18 + 4 <= v15)
          {
            v31 = *&v20[v18];
            v30 = v18 + 8;
            v18 += 4;
          }

          else
          {
            v31 = 0;
            v30 = v18 + 4;
          }

          *(v22 + 88) = v31;
          if (v30 > v15)
          {
LABEL_44:
            v28 = 0;
            goto LABEL_47;
          }

          v28 = *&v20[v18];
        }

        else if (v25)
        {
          if (v18 + 2 <= v15)
          {
            v32 = *&v20[v18];
            v30 = v18 + 4;
            v18 += 2;
          }

          else
          {
            v32 = 0;
            v30 = v18 + 2;
          }

          *(v22 + 88) = v32;
          if (v30 > v15)
          {
            goto LABEL_44;
          }

          v28 = *&v20[v18];
        }

        else
        {
          if (v18 + 1 <= v15)
          {
            v29 = v20[v18];
            v30 = v18 + 2;
            ++v18;
          }

          else
          {
            v29 = 0;
            v30 = v18 + 1;
          }

          *(v22 + 88) = v29;
          if (v30 > v15)
          {
            goto LABEL_44;
          }

          v28 = v20[v18];
        }

        v18 = v30;
LABEL_47:
        *(v22 + 92) = v28;
        if ((v21 & 0x100) != 0)
        {
          if (((v21 >> 2) & 3) > 1)
          {
            if (v25 != 2)
            {
              goto LABEL_57;
            }

            v33 = v18 + 4;
            if (v18 + 4 > v15)
            {
              goto LABEL_57;
            }

            v34 = *&v20[v18];
          }

          else
          {
            if (!v25)
            {
              v33 = v18 + 1;
              if (v18 + 1 <= v15)
              {
                v34 = v20[v18];
                goto LABEL_59;
              }

LABEL_57:
              v34 = 0;
LABEL_60:
              *(v22 + 96) = v34;
              (*(*a4 + 56))(&__str, a4);
              goto LABEL_61;
            }

            v33 = v18 + 2;
            if (v18 + 2 > v15)
            {
              goto LABEL_57;
            }

            v34 = *&v20[v18];
          }

LABEL_59:
          v18 = v33;
          goto LABEL_60;
        }

        (*(*a4 + 56))(&__str, a4, 0);
LABEL_61:
        v35 = *&__str.__r_.__value_.__l.__data_;
        if (__str.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__str.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        v36 = *(v22 + 72);
        *(v22 + 64) = v35;
        if (v36)
        {
          sub_29A014BEC(v36);
        }

        if (__str.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(__str.__r_.__value_.__l.__size_);
        }

LABEL_67:
        if (v25 > 1)
        {
          if (v25 != 2 || (v16 = v18 + 4, v18 + 4 > v15))
          {
LABEL_77:
            v19 = 0;
            v16 = v18;
            goto LABEL_78;
          }

          v37 = v56[0];
          v38 = *(v56[0] + v18);
          if (*(v56[0] + v18))
          {
LABEL_86:
            v40 = v16 + v38;
            if (v16 + v38 <= v15)
            {
              sub_29A02887C(&__str, &v37[v16], v38);
              std::string::operator=(v55, &__str);
              v41 = (v21 >> 20);
              if (v41 == 255)
              {
                if (v25 == 2)
                {
                  v16 = v40 + 4;
                  if (v40 + 4 > v15)
                  {
                    goto LABEL_98;
                  }

                  v42 = *(v56[0] + v40);
                }

                else if (v25 == 1)
                {
                  v16 = v40 + 2;
                  if (v40 + 2 <= v15)
                  {
                    v42 = *(v56[0] + v40);
                    goto LABEL_100;
                  }

LABEL_98:
                  v42 = 0;
                  v16 = v40;
                }

                else
                {
                  v16 = v40 + 1;
                  if (v40 + 1 > v15)
                  {
                    goto LABEL_98;
                  }

                  v42 = *(v56[0] + v40);
                }

LABEL_100:
                v40 = v16 + v42;
                if (v16 + v42 > v15)
                {
                  v19 = 0;
                  goto LABEL_112;
                }

                if (v16 == v15)
                {
                  *&__p.__r_.__value_.__r.__words[1] = 0uLL;
                  __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
                  if ((v55 + 32) == &__p)
                  {
                    v44 = 0;
                  }

                  else
                  {
                    sub_29A028554((v55 + 32), &__p.__r_.__value_.__r.__words[1], &__p.__r_.__value_.__r.__words[1]);
                    v44 = __p.__r_.__value_.__l.__size_;
                  }

                  sub_29A01752C(&__p, v44);
                }

                else
                {
                  sub_29A02887C(&__p, v56[0] + v16, v42);
                  *(&v53 + 1) = 0;
                  v54 = 0;
                  *&v53 = &v53 + 8;
                  sub_29A016F6C(&v53, &__p);
                  if ((v55 + 32) != &v53)
                  {
                    sub_29A028554((v55 + 32), v53, (&v53 + 8));
                  }

                  sub_29A01752C(&v53, *(&v53 + 1));
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }
              }

              else if (0xAAAAAAAAAAAAAAABLL * ((v51[1] - *v51) >> 3) > v41)
              {
                v43 = *v51 + 24 * (v21 >> 20);
                if (v55 + 32 != v43)
                {
                  sub_29A028554((v55 + 32), *v43, (v43 + 8));
                }
              }

              sub_29A017F80(v52, &v55);
              v19 = 1;
              v16 = v40;
LABEL_112:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              goto LABEL_78;
            }
          }
        }

        else if (v25)
        {
          v16 = v18 + 2;
          if (v18 + 2 > v15)
          {
            goto LABEL_77;
          }

          v37 = v56[0];
          v38 = *(v56[0] + v18);
          if (*(v56[0] + v18))
          {
            goto LABEL_86;
          }
        }

        else
        {
          v16 = v18 + 1;
          if (v18 + 1 > v15)
          {
            goto LABEL_77;
          }

          v37 = v56[0];
          v38 = *(v56[0] + v18);
          if (*(v56[0] + v18))
          {
            goto LABEL_86;
          }
        }

LABEL_6:
        v19 = 0;
LABEL_78:
        if (*(&v55 + 1))
        {
          sub_29A014BEC(*(&v55 + 1));
        }

        if (v16 < v15)
        {
          v39 = v19;
        }

        else
        {
          v39 = 0;
        }

        if ((v39 & 1) == 0)
        {
          v14 = v56[0];
          break;
        }
      }
    }

    if (v14)
    {
      v56[1] = v14;
      operator delete(v14);
    }
  }

  if (v61)
  {
    sub_29A014BEC(v61);
  }
}

void sub_29A027FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_29A01752C(&a21, a22);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v35 = *(v33 - 96);
  if (v35)
  {
    sub_29A014BEC(v35);
  }

  _Unwind_Resume(a1);
}

void sub_29A0280C8(Alembic::Ogawa::v12::IData **a1, uint64_t a2)
{
  v19 = 0;
  v20[0] = 0;
  v18 = &v19;
  sub_29A028358(a2, &v18);
  sub_29A01752C(&v18, v19);
  if (Alembic::Ogawa::v12::IData::getSize(*a1) > 0x10000)
  {
    sub_29A008864(&v18);
    sub_29A00911C(v20, "Read invalid: Indexed MetaData buffer unexpectedly big.", 55);
    std::stringbuf::str();
    sub_29A008C60(&__p, &v15);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v14 = sub_29A008E1C(exception, &__p);
    __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
  }

  Size = Alembic::Ogawa::v12::IData::getSize(*a1);
  sub_29A02891C(&v18, Size);
  v5 = v18;
  if (v18 != v19)
  {
    v6 = *a1;
    v7 = Alembic::Ogawa::v12::IData::getSize(v6);
    Alembic::Ogawa::v12::IData::read(v6, v7, v18, 0, 0);
    v5 = v18;
    v8 = v19 - v18;
    if (v19 != v18)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        v11 = *(v18 + v9);
        v12 = ++v9 + v11;
        if (v12 <= v8)
        {
          if (v10 == v8)
          {
            *&__p.__r_.__value_.__r.__words[1] = 0uLL;
            __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
            sub_29A0283AC(a2, &__p);
            sub_29A01752C(&__p, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            sub_29A02887C(&__p, v18 + v10, v11);
            *(&v15 + 1) = 0;
            v16 = 0;
            *&v15 = &v15 + 8;
            sub_29A016F6C(&v15, &__p);
            sub_29A0283AC(a2, &v15);
            sub_29A01752C(&v15, *(&v15 + 1));
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          v9 = v12;
        }
      }

      while (v9 < v8);
      v5 = v18;
    }
  }

  if (v5)
  {
    v19 = v5;
    operator delete(v5);
  }
}

void sub_29A0282C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  sub_29A008F20(&a12);
  sub_29A008B0C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_29A028358(uint64_t a1, const void ***a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A028990(a1, a2);
  }

  else
  {
    sub_29A019350(*(a1 + 8), a2);
    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A0283AC(uint64_t a1, const void ***a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A028C84(a1, a2);
  }

  else
  {
    sub_29A019350(*(a1 + 8), a2);
    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

double *sub_29A028400(double *a1, int a2, double a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicTimePerCycle(a1) != a3 || (v5 = *a1, v4 = Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(v4), v5 != v4))
  {
    v6 = a1[1];
    if (v6 <= 0.0 || v6 >= Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicTimePerCycle(v4) || !*a1 || (v8 = *a1, v8 >= Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(v7)))
    {
      sub_29A008864(&v18);
      v10 = sub_29A00911C(v19, "Invalid Time Sampling Type, time per cycle: ", 44);
      v11 = MEMORY[0x29C2C1EB0](v10, a1[1]);
      v12 = sub_29A00911C(v11, " samples per cycle: ", 20);
      MEMORY[0x29C2C1EE0](v12, *a1);
      std::stringbuf::str();
      sub_29A008C60(v17, &__p);
      if (v16 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v14 = sub_29A008E1C(exception, v17);
      __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
    }
  }

  return a1;
}

void sub_29A02852C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t **sub_29A028554(uint64_t **result, __int128 *a2, __int128 *a3)
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
          std::string::operator=((v8 + 4), (v9 + 2));
          std::string::operator=((v8 + 7), (v9 + 56));
          v10 = sub_29A0286E4(v5, &v18, v17 + 4);
          sub_29A00B204(v5, v18, v10, v17);
          v17 = v16;
          if (v16)
          {
            v16 = sub_29A028760(v16);
          }

          v11 = *(v9 + 1);
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
              a2 = *(v9 + 2);
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

    result = sub_29A0287B4(&v15);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A02880C(v5, a2 + 2);
      v13 = *(a2 + 1);
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
          v14 = *(a2 + 2);
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

void *sub_29A0286E4(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_29A00AFCC(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *sub_29A028760(uint64_t a1)
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

uint64_t sub_29A0287B4(uint64_t a1)
{
  sub_29A01752C(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29A01752C(*a1, v2);
  }

  return a1;
}

const void **sub_29A02880C(char *a1, __int128 *a2)
{
  sub_29A019658(a1, a2, &v6);
  v3 = sub_29A0286E4(a1, &v5, v6 + 4);
  sub_29A00B204(a1, v5, v3, v6);
  return v6;
}

void sub_29A028864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A00B3F8(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A02887C(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = __len;
    __dst[2] = v7 | 0x8000000000000000;
    *__dst = v6;
  }

  else
  {
    *(__dst + 23) = __len;
    v6 = __dst;
    if (!__len)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __src, __len);
LABEL_10:
  *(v6 + __len) = 0;
  return __dst;
}

void *sub_29A02891C(void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0101E8(a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_29A028974(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A028990(uint64_t a1, const void ***a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[3 * v2];
  *(&v16 + 1) = &v7[3 * v6];
  sub_29A019350(v15, a2);
  *&v16 = v15 + 3;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29A028AC0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A028C08(&v14);
  return v13;
}

void sub_29A028AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A028C08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A028AC0(uint64_t a1, const void ***a2, const void ***a3, uint64_t *a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_29A019350(a4, v6);
      v6 += 3;
      a4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
    v9 = 1;
    while (v5 != a3)
    {
      sub_29A01752C(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return sub_29A028B84(v8);
}

uint64_t sub_29A028B84(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A028BBC(a1);
  }

  return a1;
}

void sub_29A028BBC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      sub_29A01752C(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_29A028C08(void **a1)
{
  sub_29A028C3C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A028C3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_29A01752C(i - 24, *(i - 16));
  }
}

uint64_t sub_29A028C84(uint64_t a1, const void ***a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[3 * v2];
  *(&v16 + 1) = &v7[3 * v6];
  sub_29A019350(v15, a2);
  *&v16 = v15 + 3;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29A028AC0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A028C08(&v14);
  return v13;
}

void sub_29A028DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A028C08(va);
  _Unwind_Resume(a1);
}

double Alembic::AbcCoreOgawa::v12::WriteArchive::operator()@<D0>(__int128 *a1@<X1>, const void ***a2@<X2>, _OWORD *a3@<X8>)
{
  v6 = operator new(0xF8uLL);
  sub_29A0185EC(v6, a1, a2);
  sub_29A0291B8(&v8, v6);
  result = *&v8;
  *a3 = v8;
  return result;
}

double Alembic::AbcCoreOgawa::v12::WriteArchive::operator()@<D0>(uint64_t a1@<X1>, const void ***a2@<X2>, _OWORD *a3@<X8>)
{
  v6 = operator new(0xF8uLL);
  sub_29A018894(v6, a1, a2);
  sub_29A0291B8(&v8, v6);
  result = *&v8;
  *a3 = v8;
  return result;
}

uint64_t Alembic::AbcCoreOgawa::v12::ReadArchive::ReadArchive(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *this = 1;
  *(this + 8) = 1;
  return this;
}

{
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *this = 1;
  *(this + 8) = 1;
  return this;
}

uint64_t Alembic::AbcCoreOgawa::v12::ReadArchive::ReadArchive(uint64_t this, uint64_t a2, char a3)
{
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *this = a2;
  *(this + 8) = a3;
  return this;
}

{
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *this = a2;
  *(this + 8) = a3;
  return this;
}

uint64_t Alembic::AbcCoreOgawa::v12::ReadArchive::ReadArchive(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_29A0292DC((a1 + 16), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  return a1;
}

{
  *a1 = 1;
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_29A0292DC((a1 + 16), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  return a1;
}

double Alembic::AbcCoreOgawa::v12::ReadArchive::operator()@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v4 = (a1 + 16);
  if (*(a1 + 16) == *(a1 + 24))
  {
    v8 = operator new(0x198uLL);
    sub_29A016C70(v8, a2, *a1, *(a1 + 8));
    sub_29A029358(&v10, v8);
  }

  else
  {
    v5 = operator new(0x198uLL);
    sub_29A016F68(v5, v4);
    sub_29A029358(&v10, v5);
  }

  result = *&v10;
  *a3 = v10;
  return result;
}

uint64_t *Alembic::AbcCoreOgawa::v12::ReadArchive::operator()@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = (a1 + 16);
  if (*(a1 + 16) == *(a1 + 24))
  {
    v9 = operator new(0x198uLL);
    sub_29A016C70(v9, a2, *a1, *(a1 + 8));
    if ((*(*v9 + 80))(v9) == -1)
    {
      result = (*(*v9 + 8))(v9);
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    result = sub_29A029358(&v10, v9);
  }

  else
  {
    v5 = operator new(0x198uLL);
    sub_29A016F68(v5, v4);
    result = sub_29A029358(&v10, v5);
  }

  *a3 = v10;
  return result;
}

uint64_t *sub_29A0291B8(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203D2F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A029228(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2848D4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A029244(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A02926C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A02929C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203D348))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A0292DC(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A02933C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A029358(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203D370;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  sub_29A017894(a1, v5, a2);
  return a1;
}

void sub_29A0293C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2848F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0293E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A02940C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A02943C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203D3C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A02947C(void *result, void *a2, void *a3, void *a4)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A203D3E8;
  result[3] = *a2;
  v4 = a2[1];
  result[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = *a3;
  v5 = a3[1];
  result[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[7] = *a4;
  v6 = a4[1];
  result[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (!result[3])
  {
    sub_29A008864(v19);
    sub_29A00911C(v20, "Invalid parent", 14);
    std::stringbuf::str();
    sub_29A008C60(v18, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_29A008E1C(exception, v18);
    __cxa_throw(v9, &unk_2A203B108, sub_29A008B08);
  }

  if (!result[5])
  {
    sub_29A008864(v19);
    sub_29A00911C(v20, "Invalid scalar property group", 29);
    std::stringbuf::str();
    sub_29A008C60(v18, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = __cxa_allocate_exception(0x20uLL);
    v11 = sub_29A008E1C(v10, v18);
    __cxa_throw(v11, &unk_2A203B108, sub_29A008B08);
  }

  v7 = result[7];
  if (!v7)
  {
    sub_29A008864(v19);
    sub_29A00911C(v20, "Invalid header", 14);
    std::stringbuf::str();
    sub_29A008C60(v18, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = __cxa_allocate_exception(0x20uLL);
    v13 = sub_29A008E1C(v12, v18);
    __cxa_throw(v13, &unk_2A203B108, sub_29A008B08);
  }

  if (*(v7 + 24) != 1)
  {
    sub_29A008864(v19);
    sub_29A00911C(v20, "Attempted to create a ScalarPropertyReader from a non-array property type", 73);
    std::stringbuf::str();
    sub_29A008C60(v18, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = __cxa_allocate_exception(0x20uLL);
    v15 = sub_29A008E1C(v14, v18);
    __cxa_throw(v15, &unk_2A203B108, sub_29A008B08);
  }

  return result;
}

void sub_29A029744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v10.__vftable = va_arg(va1, std::exception_vtbl *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v6 = *(v4 + 8);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = *(v4 + 6);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = *(v4 + 4);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = *(v4 + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  Alembic::AbcCoreAbstract::v12::ScalarPropertyReader::~ScalarPropertyReader(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_29A029810@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_29A02982C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_29A02988C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_29A014174(*(a1 + 56), a2);
  (*(*a1 + 24))(&v19, a1);
  (*(*v19 + 24))(&lpsrc);
  v8 = lpsrc;
  {
    v9 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  sub_29A0173F4(v8, &v23);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  v10 = *(v23 + 8);
  Alembic::Ogawa::v12::IGroup::getData(*(a1 + 40), v7, v10, &lpsrc);
  v11 = lpsrc;
  if (lpsrc)
  {
    v19 = *(*(a1 + 56) + 56);
    if (v19 <= 11)
    {
      Size = Alembic::Ogawa::v12::IData::getSize(lpsrc);
      if (Size != sub_29A00D14C(&v19) + 16)
      {
        goto LABEL_24;
      }

      v11 = lpsrc;
    }

    v13 = Alembic::Ogawa::v12::IData::getSize(v11);
    v14 = (*(*a1 + 16))(a1);
    v15 = sub_29A00D14C((v14 + 56));
    v16 = v13 - 16;
    if (v13 >= 0x10 && v15 >= v16 && (!a4 || v16 <= a4))
    {
      v17 = lpsrc;
      v18 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A026B84(a3, &v17, v10, &v19, v19);
      if (v18)
      {
        sub_29A014BEC(v18);
      }
    }
  }

LABEL_24:
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (v24)
  {
    sub_29A014BEC(v24);
  }
}

void sub_29A029AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A029B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (!a12)
  {
    JUMPOUT(0x29A029B04);
  }

  JUMPOUT(0x29A029B00);
}

uint64_t sub_29A029B3C(uint64_t a1, double a2)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(a1 + 56);
  }

  FloorIndex = Alembic::AbcCoreAbstract::v12::TimeSampling::getFloorIndex(v4, a2, *(v3 + 84));
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return FloorIndex;
}

void sub_29A029BA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A029BBC(uint64_t a1, double a2)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(a1 + 56);
  }

  CeilIndex = Alembic::AbcCoreAbstract::v12::TimeSampling::getCeilIndex(v4, a2, *(v3 + 84));
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return CeilIndex;
}

void sub_29A029C24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A029C3C(uint64_t a1, double a2)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(a1 + 56);
  }

  v6 = Alembic::AbcCoreAbstract::v12::TimeSampling::getNearIndex(v4, a2, *(v3 + 84));
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return v6;
}

void sub_29A029CA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A029CBC(Alembic::AbcCoreAbstract::v12::ScalarPropertyReader *this)
{
  *this = &unk_2A203D3E8;
  v2 = *(this + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  Alembic::AbcCoreAbstract::v12::ScalarPropertyReader::~ScalarPropertyReader(this);
}

void sub_29A029D3C(Alembic::AbcCoreAbstract::v12::ScalarPropertyReader *this)
{
  *this = &unk_2A203D3E8;
  v2 = *(this + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  Alembic::AbcCoreAbstract::v12::ScalarPropertyReader::~ScalarPropertyReader(this);

  operator delete(v6);
}

void *sub_29A029DC0(void *result, void *a2, void *a3, void *a4, uint64_t a5)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A203D4B0;
  result[3] = 0;
  result[4] = 0;
  result[5] = *a2;
  v5 = a2[1];
  result[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[7] = *a4;
  v6 = a4[1];
  result[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[9] = 0;
  result[10] = 0;
  result[11] = *a3;
  v7 = a3[1];
  result[12] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  result[13] = a5;
  if (!result[5])
  {
    sub_29A008864(v20);
    sub_29A00911C(v21, "Invalid parent", 14);
    std::stringbuf::str();
    sub_29A008C60(v19, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_29A008E1C(exception, v19);
    __cxa_throw(v10, &unk_2A203B108, sub_29A008B08);
  }

  v8 = result[7];
  if (!v8)
  {
    sub_29A008864(v20);
    sub_29A00911C(v21, "Invalid property header", 23);
    std::stringbuf::str();
    sub_29A008C60(v19, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = __cxa_allocate_exception(0x20uLL);
    v12 = sub_29A008E1C(v11, v19);
    __cxa_throw(v12, &unk_2A203B108, sub_29A008B08);
  }

  if (!result[11])
  {
    sub_29A008864(v20);
    sub_29A00911C(v21, "Invalid group", 13);
    std::stringbuf::str();
    sub_29A008C60(v19, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = __cxa_allocate_exception(0x20uLL);
    v14 = sub_29A008E1C(v13, v19);
    __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
  }

  if (*(v8 + 24) != 1)
  {
    sub_29A008864(v20);
    sub_29A00911C(v21, "Attempted to create a ScalarPropertyWriter from a non-scalar property type", 74);
    std::stringbuf::str();
    sub_29A008C60(v19, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = __cxa_allocate_exception(0x20uLL);
    v16 = sub_29A008E1C(v15, v19);
    __cxa_throw(v16, &unk_2A203B108, sub_29A008B08);
  }

  return result;
}

void sub_29A02A094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v11.__vftable = va_arg(va1, std::exception_vtbl *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v6 = *(v4 + 12);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = *(v4 + 8);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = *(v4 + 6);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = *(v4 + 4);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = *(v4 + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  Alembic::AbcCoreAbstract::v12::ScalarPropertyWriter::~ScalarPropertyWriter(v4);
  _Unwind_Resume(a1);
}

void sub_29A02A13C(uint64_t a1)
{
  *a1 = &unk_2A203D4B0;
  (*(**(a1 + 40) + 24))(&v18);
  (*(*v18 + 24))(&v20);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  v2 = (*(*v20 + 72))(v20, *(*(a1 + 56) + 96));
  v3 = *(a1 + 56);
  v4 = v3[21];
  if (v4)
  {
    v5 = v3[23] == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  if (v2 < v6)
  {
    (*(*v20 + 80))(v20, v3[24], v6);
  }

  Alembic::Util::v12::SpookyHash::Init(&v18, 0, 0);
  sub_29A02B5E8(*(a1 + 56), &v18);
  if (v6)
  {
    Alembic::Util::v12::SpookyHash::Update(&v18, (a1 + 72), 0x10uLL);
  }

  v16 = 0;
  v17 = 0;
  Alembic::Util::v12::SpookyHash::Final(&v18, &v17, &v16, v7, v8);
  v9 = *(a1 + 40);
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
  }

  sub_29A01F55C(v9, *(a1 + 104), v17, v16);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  Alembic::AbcCoreAbstract::v12::ScalarPropertyWriter::~ScalarPropertyWriter(a1);
}

void sub_29A02A388(uint64_t a1)
{
  sub_29A02A13C(a1);

  operator delete(v1);
}

void sub_29A02A3B0(Alembic::AbcCoreAbstract::v12::TimeSamplingType *a1)
{
  v2 = *(a1 + 7);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *v3;
  if (Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(a1) != v5)
  {
    v9 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = *(a1 + 7);
  v8 = *(v6 + 64);
  v7 = *(v6 + 72);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *(*(a1 + 7) + 84) >= ((*(v8 + 24) - *(v8 + 16)) >> 3);
    sub_29A014BEC(v7);
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_29A014BEC(v4);
    goto LABEL_9;
  }

  v9 = *(v6 + 84) >= ((*(v8 + 24) - *(v8 + 16)) >> 3);
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v9)
  {
    sub_29A008864(v32);
    sub_29A00911C(v33, "Can not set more samples than we have times for when using Acyclic sampling.", 76);
    std::stringbuf::str();
    sub_29A008C60(v31, __p);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v26 = sub_29A008E1C(exception, v31);
    __cxa_throw(v26, &unk_2A203B108, sub_29A008B08);
  }

  v10 = *(a1 + 7);
  v11 = *(v10 + 84);
  if (!v11)
  {
    sub_29A008864(v32);
    sub_29A00911C(v33, "Can't set from previous sample before any samples have been written", 67);
    std::stringbuf::str();
    sub_29A008C60(v31, __p);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v27 = __cxa_allocate_exception(0x20uLL);
    v28 = sub_29A008E1C(v27, v31);
    __cxa_throw(v28, &unk_2A203B108, sub_29A008B08);
  }

  v12 = *(a1 + 3);
  v13 = *(v12 + 16);
  v14 = (*(v12 + 24) ^ v13) + __ROR8__(v13, 49);
  v15 = (v14 ^ *(a1 + 9)) + __ROR8__(v14, 12);
  v16 = (v15 ^ *(a1 + 10)) + __ROR8__(v15, 38);
  v17 = (v16 ^ __ROR8__(v13, 49)) + __ROR8__(v16, 13);
  v18 = (v17 ^ __ROR8__(v14, 12)) + __ROR8__(v17, 36);
  v19 = (v18 ^ __ROR8__(v15, 38)) + __ROR8__(v18, 55);
  v20 = (v19 ^ __ROR8__(v16, 13)) + __ROR8__(v19, 17);
  v21 = (v20 ^ __ROR8__(v17, 36)) + __ROR8__(v20, 10);
  v22 = (v21 ^ __ROR8__(v18, 55)) + __ROR8__(v21, 32);
  v23 = (v22 ^ __ROR8__(v19, 17)) + __ROR8__(v22, 39);
  v24 = __ROR8__(v23, 1);
  *(a1 + 9) = v24;
  *(a1 + 10) = (v23 ^ __ROR8__(v20, 10)) + v24;
  *(v10 + 84) = v11 + 1;
}

void sub_29A02A60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29A02A654(void *a1, uint64_t a2)
{
  v4 = a1[7];
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *v5;
  if (Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(a1) != v7)
  {
    v11 = 0;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = a1[7];
  v10 = *(v8 + 64);
  v9 = *(v8 + 72);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *(a1[7] + 84) >= ((*(v10 + 24) - *(v10 + 16)) >> 3);
    sub_29A014BEC(v9);
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_29A014BEC(v6);
    goto LABEL_9;
  }

  v11 = *(v8 + 84) >= ((*(v10 + 24) - *(v10 + 16)) >> 3);
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v11)
  {
    sub_29A008864(v59);
    sub_29A00911C(&v60, "Can not write more samples than we have times for when using Acyclic sampling.", 78);
    std::stringbuf::str();
    sub_29A008C60(&__p, v53);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v43 = sub_29A008E1C(exception, &__p);
    __cxa_throw(v43, &unk_2A203B108, sub_29A008B08);
  }

  v12 = a1[7];
  v53[0] = 1;
  sub_29A0161D0(&__p, 1uLL, v53);
  v13 = *(v12 + 56);
  v59[0] = a2;
  v59[1] = v13;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  sub_29A00E7E0(&v60, __p, v56, (v56 - __p) >> 3);
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  Alembic::AbcCoreAbstract::v12::ArraySample::getKey(v59, &__p);
  v14 = v56;
  if ((v56 - 14) <= 0xFFFFFFFD)
  {
    v56 = 0x200000002;
    v14 = 2;
  }

  v15 = a1[7];
  v17 = v15 + 21;
  v16 = v15[21];
  if (v16)
  {
    v18 = a1[3];
    if (v18)
    {
      if (__p == *v18 && __PAIR128__(v57, __PAIR64__(HIDWORD(v56), v14)) == *(v18 + 8) && v58 == *(v18 + 24))
      {
        goto LABEL_48;
      }
    }
  }

  if (v15[22])
  {
    v19 = (v15[23] + 1);
    if (v19 < v16)
    {
      do
      {
        v20 = a1[12];
        v51 = a1[11];
        v52 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = a1[4];
        v49 = a1[3];
        v50 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29A02C0C0(&v51, &v49);
        if (v50)
        {
          sub_29A014BEC(v50);
        }

        if (v52)
        {
          sub_29A014BEC(v52);
        }

        ++v19;
      }

      while (v19 < *(a1[7] + 84));
    }
  }

  (*(*a1 + 24))(&v48, a1);
  (*(*v48 + 24))(v53);
  if (*(&v48 + 1))
  {
    sub_29A014BEC(*(&v48 + 1));
  }

  v46 = v53[0];
  v47 = v53[1];
  if (v53[1])
  {
    atomic_fetch_add_explicit(v53[1] + 1, 1uLL, memory_order_relaxed);
  }

  v22 = sub_29A02B8B8(&v46);
  v23 = a1[12];
  v44 = a1[11];
  v45 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A02BA2C(v22, &v44, v59, &__p, &v48);
  v24 = v48;
  v48 = 0uLL;
  v25 = a1[4];
  *(a1 + 3) = v24;
  if (v25)
  {
    sub_29A014BEC(v25);
    if (*(&v48 + 1))
    {
      sub_29A014BEC(*(&v48 + 1));
    }
  }

  if (v45)
  {
    sub_29A014BEC(v45);
  }

  if (v47)
  {
    sub_29A014BEC(v47);
  }

  v26 = a1[7];
  v16 = v26[21];
  if (!v26[22])
  {
    v26[22] = v16;
  }

  v26[23] = v16;
  if (v53[1])
  {
    sub_29A014BEC(v53[1]);
    v26 = a1[7];
    v16 = v26[21];
  }

  v17 = v26 + 21;
  if (v16)
  {
LABEL_48:
    v27 = a1[3];
    v28 = *(v27 + 16);
    v29 = (*(v27 + 24) ^ v28) + __ROR8__(v28, 49);
    v30 = (v29 ^ a1[9]) + __ROR8__(v29, 12);
    v31 = (v30 ^ a1[10]) + __ROR8__(v30, 38);
    v32 = (v31 ^ __ROR8__(v28, 49)) + __ROR8__(v31, 13);
    v33 = (v32 ^ __ROR8__(v29, 12)) + __ROR8__(v32, 36);
    v34 = (v33 ^ __ROR8__(v30, 38)) + __ROR8__(v33, 55);
    v35 = (v34 ^ __ROR8__(v31, 13)) + __ROR8__(v34, 17);
    v36 = (v35 ^ __ROR8__(v32, 36)) + __ROR8__(v35, 10);
    v37 = (v36 ^ __ROR8__(v33, 55)) + __ROR8__(v36, 32);
    v38 = (v37 ^ __ROR8__(v34, 17)) + __ROR8__(v37, 39);
    v39 = v38 ^ __ROR8__(v35, 10);
    v40 = __ROR8__(v38, 1);
    a1[9] = v40;
    a1[10] = v39 + v40;
  }

  else
  {
    v41 = a1[3];
    a1[9] = *(v41 + 16);
    a1[10] = *(v41 + 24);
    v16 = *v17;
  }

  *v17 = v16 + 1;
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }
}

void sub_29A02AADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *__p, uint64_t a29)
{
  sub_29A008F20(&a22);
  sub_29A008B0C(&a26);
  _Unwind_Resume(a1);
}

double sub_29A02ABA8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_29A02ABF4(uint64_t a1, int a2)
{
  (*(**(a1 + 40) + 24))(&v14);
  (*(*v14 + 24))(&v16);
  (*(*v16 + 56))(&v19);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v4 = v15;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v5 = *v19;
  if (Alembic::AbcCoreAbstract::v12::TimeSamplingType::AcyclicNumSamples(v4) == v5)
  {
    v6 = v19;
    v7 = *(a1 + 56);
    if (*(v7 + 84) > ((v6[3] - v6[2]) >> 3))
    {
      sub_29A008864(&v16);
      sub_29A00911C(v18, "Already have written more samples than we have times for when using Acyclic sampling.", 85);
      std::stringbuf::str();
      sub_29A008C60(&v14, &__p);
      if (v13 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v9 = sub_29A008E1C(exception, &v14);
      __cxa_throw(v9, &unk_2A203B108, sub_29A008B08);
    }
  }

  else
  {
    v7 = *(a1 + 56);
    v6 = v19;
  }

  v10 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v10;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  *(*(a1 + 56) + 96) = a2;
  if (v20)
  {
    sub_29A014BEC(v20);
  }
}

void sub_29A02ADB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v6 = *(v4 - 40);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A02AE18(uint64_t a1)
{
  result = *(a1 + 56);
  if (!result)
  {
    sub_29A008864(&v7);
    sub_29A00911C(v8, "Invalid header", 14);
    std::stringbuf::str();
    sub_29A008C60(v6, &__p);
    if (v5 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v3 = sub_29A008E1C(exception, v6);
    __cxa_throw(v3, &unk_2A203B108, sub_29A008B08);
  }

  return result;
}

void sub_29A02AEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A02AEE4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    sub_29A008864(&v9);
    sub_29A00911C(v10, "Invalid parent", 14);
    std::stringbuf::str();
    sub_29A008C60(v8, &__p);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_29A008E1C(exception, v8);
    __cxa_throw(v5, &unk_2A203B108, sub_29A008B08);
  }

  v2 = *(*v1 + 24);

  return v2();
}

void sub_29A02AFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A02AFE0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 40);
  if (!v2)
  {
    sub_29A008864(&v9);
    sub_29A00911C(v10, "Invalid parent", 14);
    std::stringbuf::str();
    sub_29A008C60(v8, &__p);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_29A008E1C(exception, v8);
    __cxa_throw(v5, &unk_2A203B108, sub_29A008B08);
  }

  v3 = *(result + 48);
  *a2 = v2;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A02B09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

unint64_t *sub_29A02B0C4(unint64_t *a1, unint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  v4 = a1 + 1;
  a1[3] = 0;
  pthread_mutex_init((a1 + 5), 0);
  a1[14] = 0;
  a1[15] = 0;
  atomic_store(0, a1 + 13);
  a1[4] = 0;
  *a1 = a2;
  if (a2 >= 2)
  {
    sub_29A00BF50(v4, a2);
    if (*a1)
    {
      v5 = 0;
      do
      {
        *(a1[1] + 8 * v5) = v5;
        v6 = *a1;
        if (*a1 <= 0x3F)
        {
          atomic_fetch_or(a1 + 13, 1 << v5);
          v6 = *a1;
        }

        ++v5;
      }

      while (v5 < v6);
    }
  }

  v7 = operator new(0x10uLL);
  *v7 = 0;
  v7[1] = 0;
  sub_29A02B444(&v11, v7);
  v8 = v11;
  v11 = 0uLL;
  v9 = a1[15];
  *(a1 + 7) = v8;
  if (v9)
  {
    sub_29A014BEC(v9);
    if (*(&v11 + 1))
    {
      sub_29A014BEC(*(&v11 + 1));
    }
  }

  return a1;
}

void sub_29A02B1B8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 120);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pthread_mutex_destroy((v2 + 32));
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A02B1FC(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pthread_mutex_destroy((a1 + 40));
  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_29A02B24C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  if (*result <= 1uLL)
  {
LABEL_2:
    v4 = result[15];
    *a2 = result[14];
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    return result;
  }

  if (*result <= 0x40uLL)
  {
    while (1)
    {
      v8 = atomic_load(result + 13);
      if (!v8)
      {
        break;
      }

      v9 = __clz(__rbit64(v8));
      v10 = v8;
      atomic_compare_exchange_strong(result + 13, &v10, v8 & ~(1 << v9));
      if (v10 == v8)
      {
        v11 = operator new(0x10uLL);
        *v11 = v2;
        v11[1] = v9;

        return sub_29A02B444(a2, v11);
      }
    }

    goto LABEL_2;
  }

  pthread_mutex_lock((result + 5));
  v5 = v2[4];
  if (v5 >= *v2)
  {
    v12 = v2[15];
    *a2 = v2[14];
    a2[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    v2[4] = v5 + 1;
    v7 = *(v2[1] + 8 * v5);
    *v6 = v2;
    v6[1] = v7;
    sub_29A02B444(a2, v6);
  }

  return pthread_mutex_unlock((v2 + 5));
}

void sub_29A02B38C(uint64_t a1, uint64_t a2)
{
  if (*a1 <= 0x40uLL)
  {
    do
    {
      v5 = atomic_load((a1 + 104));
      v6 = v5;
      atomic_compare_exchange_strong((a1 + 104), &v6, v5 | (1 << a2));
    }

    while (v6 != v5);
  }

  else
  {
    pthread_mutex_lock((a1 + 40));
    v4 = *(a1 + 32) - 1;
    *(a1 + 32) = v4;
    *(*(a1 + 8) + 8 * v4) = a2;
    pthread_mutex_unlock((a1 + 40));
  }
}

uint64_t *sub_29A02B40C(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_29A02B38C(v2, a1[1]);
  }

  return a1;
}

void *sub_29A02B444(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203D568;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A02B49C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = sub_29A02B40C(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A02B4BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A02B4E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = sub_29A02B40C(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A02B518(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203D5B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A02B558(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v4 = &v6;
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = (&v6 + 1);
      v5 = &v6;
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      v4 = (&v6 + 3);
      sub_29A00D178(a1, &v6);
      sub_29A00D178(a1, &v6 + 1);
      v5 = (&v6 + 2);
    }

    sub_29A00D178(a1, v5);
  }

  sub_29A00D178(a1, v4);
}

void sub_29A02B5E8(uint64_t a1, Alembic::Util::v12::SpookyHash *a2)
{
  v17 = 0;
  __dst = 0;
  v19 = 0;
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  sub_29A01FFA8(&v17, 0, v5, &v5[v6], v6);
  Alembic::Util::v12::TokenMap::get((a1 + 32), 0x3Bu, 61, 1);
  if ((v16 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v8 = v16;
  }

  else
  {
    v8 = __p[1];
  }

  sub_29A01FFA8(&v17, __dst, v7, &v7[v8], v8);
  if (*(a1 + 24))
  {
    LOBYTE(v20) = *(a1 + 56);
    sub_29A00D178(&v17, &v20);
    LOBYTE(v20) = *(a1 + 60);
    sub_29A00D178(&v17, &v20);
    if (*(a1 + 24) == 1)
    {
      LOBYTE(v20) = 0;
      sub_29A00D178(&v17, &v20);
    }

    v10 = *(a1 + 64);
    v9 = *(a1 + 72);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = 0;
    v20 = v10[1];
    do
    {
      sub_29A00D178(&v17, &v20 + v11++);
    }

    while (v11 != 8);
    sub_29A02B558(&v17, (v10[3] - v10[2]) >> 3, 2);
    v12 = v10[2];
    if (v10[3] != v12)
    {
      v13 = 0;
      do
      {
        v14 = 0;
        v20 = *(v12 + 8 * v13);
        do
        {
          sub_29A00D178(&v17, &v20 + v14++);
        }

        while (v14 != 8);
        ++v13;
        v12 = v10[2];
      }

      while (v13 < (v10[3] - v12) >> 3);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  if (v17 != __dst)
  {
    Alembic::Util::v12::SpookyHash::Update(a2, v17, __dst - v17);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    __dst = v17;
    operator delete(v17);
  }
}

void sub_29A02B7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_29A02B82C(unsigned __int8 *result, unint64_t *a2)
{
  v2 = *(result + 1);
  v3 = v2 - *result;
  if (v2 != *result)
  {
    v5 = result;
    Alembic::Util::v12::SpookyHash::Init(v11, 0, 0);
    Alembic::Util::v12::SpookyHash::Update(v11, *v5, v3);
    Alembic::Util::v12::SpookyHash::Update(v11, a2, 0x10uLL);
    v9 = 0;
    v10 = 0;
    result = Alembic::Util::v12::SpookyHash::Final(v11, &v10, &v9, v6, v7);
    v8 = v9;
    *a2 = v10;
    a2[1] = v8;
  }

  return result;
}

char *sub_29A02B8B8(const void **a1)
{
  v1 = *a1;
  {
    sub_29A008864(&v9);
    sub_29A00911C(v10, "NULL Impl Ptr", 13);
    std::stringbuf::str();
    sub_29A008C60(v8, &__p);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_29A008E1C(exception, v8);
    __cxa_throw(v5, &unk_2A203B108, sub_29A008B08);
  }

  return v2 + 192;
}

void sub_29A02B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29A02B9CC(Alembic::Ogawa::v12::OGroup **a1, uint64_t a2, int a3)
{
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  v8 = *a1;
  if ((a3 - 14) > 0xFFFFFFFD || v7 > 8)
  {
    v12 = v3;
    v13 = v4;
    Alembic::Ogawa::v12::OGroup::addData(v8, v6, v7, &v10);
    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  else
  {

    Alembic::Ogawa::v12::OGroup::addEmptyData(v8);
  }
}

void sub_29A02BA2C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a1;
  v74[33] = *MEMORY[0x29EDCA608];
  v10 = sub_29A02C958(a1, a4);
  if (v10)
  {
    v11 = v10[6];
    *a5 = v11;
    v12 = v10[7];
    a5[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v13 = *(a2 + 8);
      v69[0] = *a2;
      v69[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v68[0] = v11;
      v68[1] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A02C0C0(v69, v68);
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      if (v13)
      {

        sub_29A014BEC(v13);
      }

      return;
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
  }

  v14 = *(a3 + 8);
  if (v14 == 13)
  {
    v29 = *(a3 + 12);
    v30 = *(a3 + 16);
    v31 = *(a3 + 24) - v30;
    if (v31)
    {
      v32 = v31 >> 3;
      if (v32 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32;
      }

      v31 = 1;
      do
      {
        v34 = *v30++;
        v31 *= v34;
        --v33;
      }

      while (v33);
    }

    v60 = v8;
    v35 = v31 * v29;
    __p[0] = 0;
    __p[1] = 0;
    v67 = 0;
    if (!(v31 * v29))
    {
      v42 = 0;
      v41 = 0;
LABEL_80:
      v72 = a4 + 2;
      v73 = v41;
      v70 = 16;
      v71 = v42 - v41;
      Alembic::Ogawa::v12::OGroup::addData(*a2, &v70, &v72, 2, v64);
      v61 = *v64;
      v45 = __p[0];
      v8 = v60;
      if (!__p[0])
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    v36 = 0;
    while (1)
    {
      v37 = *a3 + 24 * v36;
      if (std::wstring::find(v37, 0, 0) != -1)
      {
        sub_29A008864(&v72);
        sub_29A00911C(v74, "Illegal NULL character found in wstring data", 44);
        std::stringbuf::str();
        sub_29A008C60(&v70, v64);
        if (v65 < 0)
        {
          operator delete(v64[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        v58 = sub_29A008E1C(exception, &v70);
        __cxa_throw(v58, &unk_2A203B108, sub_29A008B08);
      }

      v38 = *(v37 + 23);
      if (v38 < 0)
      {
        v38 = *(v37 + 8);
        if (v38)
        {
LABEL_50:
          v39 = 0;
          do
          {
            v40 = v37;
            if (*(v37 + 23) < 0)
            {
              v40 = *v37;
            }

            LODWORD(v72) = *(v40 + 4 * v39);
            sub_29A00D250(__p, &v72);
            ++v39;
          }

          while (v38 != v39);
        }
      }

      else if (*(v37 + 23))
      {
        goto LABEL_50;
      }

      LODWORD(v72) = 0;
      sub_29A00D250(__p, &v72);
      if (++v36 == v35)
      {
        v41 = __p[0];
        v42 = __p[1];
        goto LABEL_80;
      }
    }
  }

  if (v14 == 12)
  {
    v15 = *(a3 + 12);
    v16 = *(a3 + 16);
    v17 = *(a3 + 24) - v16;
    if (v17)
    {
      v18 = v17 >> 3;
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      v17 = 1;
      do
      {
        v20 = *v16++;
        v17 *= v20;
        --v19;
      }

      while (v19);
    }

    v21 = v17 * v15;
    __p[0] = 0;
    __p[1] = 0;
    v67 = 0;
    if (v17 * v15)
    {
      v59 = v8;
      v22 = 0;
      while (1)
      {
        v23 = *a3 + 24 * v22;
        if (std::string::find(v23, 0, 0) != -1)
        {
          sub_29A008864(&v72);
          sub_29A00911C(v74, "Illegal NULL character found in string data ", 44);
          std::stringbuf::str();
          sub_29A008C60(&v70, v64);
          if (v65 < 0)
          {
            operator delete(v64[0]);
          }

          v55 = __cxa_allocate_exception(0x20uLL);
          v56 = sub_29A008E1C(v55, &v70);
          __cxa_throw(v56, &unk_2A203B108, sub_29A008B08);
        }

        v24 = *(v23 + 23);
        if (v24 < 0)
        {
          v24 = *(v23 + 8);
          if (v24)
          {
LABEL_31:
            v25 = 0;
            do
            {
              v26 = v23;
              if (*(v23 + 23) < 0)
              {
                v26 = *v23;
              }

              LOBYTE(v72) = *(v26 + v25);
              sub_29A00D178(__p, &v72);
              ++v25;
            }

            while (v24 != v25);
          }
        }

        else if (*(v23 + 23))
        {
          goto LABEL_31;
        }

        LOBYTE(v72) = 0;
        sub_29A00D178(__p, &v72);
        if (++v22 == v21)
        {
          v27 = __p[0];
          v28 = __p[1];
          v8 = v59;
          goto LABEL_58;
        }
      }
    }

    v28 = 0;
    v27 = 0;
LABEL_58:
    v72 = a4 + 2;
    v73 = v27;
    v70 = 16;
    v71 = v28 - v27;
    Alembic::Ogawa::v12::OGroup::addData(*a2, &v70, &v72, 2, v64);
    v61 = *v64;
    v45 = __p[0];
    if (__p[0])
    {
LABEL_59:
      __p[1] = v45;
      operator delete(v45);
    }
  }

  else
  {
    v43 = *a3;
    v72 = a4 + 2;
    v73 = v43;
    v44 = *a4;
    v70 = 16;
    v71 = v44;
    Alembic::Ogawa::v12::OGroup::addData(*a2, &v70, &v72, 2, __p);
    v61 = *__p;
  }

LABEL_60:
  v46 = operator new(0x38uLL);
  if (*(&v61 + 1))
  {
    atomic_fetch_add_explicit((*(&v61 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v47 = *(a3 + 16);
  v48 = *(a3 + 24) - v47;
  if (v48)
  {
    v49 = v48 >> 3;
    if (v49 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = v49;
    }

    v48 = 1;
    do
    {
      v51 = *v47++;
      v48 *= v51;
      --v50;
    }

    while (v50);
  }

  v52 = *(a4 + 1);
  v53 = v48 * *(a3 + 12);
  *v46 = *a4;
  v46[1] = v52;
  v46[2] = v61;
  if (*(&v61 + 1))
  {
    atomic_fetch_add_explicit((*(&v61 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *(v46 + 6) = v53;
  sub_29A0189F0(a5, v46);
  if (*(&v61 + 1))
  {
    sub_29A014BEC(*(&v61 + 1));
  }

  v54 = a5[1];
  v62 = *a5;
  v63 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A0188E0(v8, &v62);
  if (v63)
  {
    sub_29A014BEC(v63);
  }

  if (*(&v61 + 1))
  {
    sub_29A014BEC(*(&v61 + 1));
  }
}

void sub_29A02BFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  v31 = *(v29 + 8);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A02C0C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    sub_29A008864(v15);
    sub_29A00911C(v16, "CopyWrittenData() passed a bogus ref", 36);
    std::stringbuf::str();
    sub_29A008C60(v14, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v14);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  v3 = *a1;
  if (!v3)
  {
    sub_29A008864(v15);
    sub_29A00911C(v16, "CopyWrittenData() passed in a bogus OGroupPtr", 45);
    std::stringbuf::str();
    sub_29A008C60(v14, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = __cxa_allocate_exception(0x20uLL);
    v9 = sub_29A008E1C(v8, v14);
    __cxa_throw(v9, &unk_2A203B108, sub_29A008B08);
  }

  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Ogawa::v12::OGroup::addData(v3, &v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29A02C210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void sub_29A02C244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  JUMPOUT(0x29A02C23CLL);
}

void sub_29A02C258(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t *a9)
{
  Alembic::Util::v12::TokenMap::get((a2 + 32), 0x3Bu, 61, 1);
  if ((v57 & 0x80u) == 0)
  {
    v15 = v57;
  }

  else
  {
    v15 = v56;
  }

  if (*(a2 + 23) >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (v17 <= a6)
  {
    v17 = a6;
  }

  if (v17 <= a5)
  {
    v17 = a5;
  }

  v18 = v17 - 256;
  v19 = 2 * ((v17 & 0xFFFF0000) != 0);
  if (v18 >> 8 < 0xFF)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  v21 = sub_29A01F964(*a9, &v55);
  v22 = (v21 << 20) | (4 * v20);
  if (*(a2 + 24))
  {
    v23 = *(a2 + 24) & 3 | a3 & 0xFFFFFF0F | (16 * (*(a2 + 56) & 0xF)) | v22;
    if (a5)
    {
      v23 |= 0x100u;
    }

    v24 = a8 | a7;
    v25 = v23 | 0x800;
    v26 = a7 == 1 && a6 - 1 == a8;
    v27 = !v26;
    if (!v26)
    {
      v23 |= 0x200u;
    }

    if (v24)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (!v24)
    {
      v23 = v25;
    }

    if (a7 > a8 || a7 > a6 || a8 > a6)
    {
      sub_29A008864(&v53);
      v36 = sub_29A00911C(v54, "Illegal Sampling!", 17);
      v37 = sub_29A02C5EC(v36);
      v38 = sub_29A00911C(v37, "Num Samples: ", 13);
      v39 = MEMORY[0x29C2C1EE0](v38, a6);
      v40 = sub_29A02C5EC(v39);
      v41 = sub_29A00911C(v40, "First Changed Index: ", 21);
      v42 = MEMORY[0x29C2C1EE0](v41, a7);
      v43 = sub_29A02C5EC(v42);
      v44 = sub_29A00911C(v43, "Last Changed Index: ", 20);
      v45 = MEMORY[0x29C2C1EE0](v44, a8);
      sub_29A02C5EC(v45);
      std::stringbuf::str();
      sub_29A008C60(v52, &__p);
      if (v51 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v47 = sub_29A008E1C(exception, v52);
      __cxa_throw(v47, &unk_2A203B108, sub_29A008B08);
    }

    v29 = v23 | (*(a2 + 60) << 12);
    if (a4)
    {
      v30 = v29 | 0x400;
    }

    else
    {
      v30 = v29;
    }

    sub_29A02B558(a1, v30, 2);
    sub_29A02B558(a1, a6, v20);
    if (v28)
    {
      sub_29A02B558(a1, a7, v20);
      sub_29A02B558(a1, a8, v20);
    }

    if (a5)
    {
      sub_29A02B558(a1, a5, v20);
    }
  }

  else
  {
    sub_29A02B558(a1, v22, 2);
  }

  sub_29A02B558(a1, v16, v20);
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = a2;
  }

  else
  {
    v32 = *a2;
  }

  if (v31 >= 0)
  {
    v33 = *(a2 + 23);
  }

  else
  {
    v33 = *(a2 + 8);
  }

  sub_29A01FFA8(a1, *(a1 + 8), v32, &v32[v33], v33);
  if (v21 == 255)
  {
    sub_29A02B558(a1, v15, v20);
    if (v15)
    {
      if ((v57 & 0x80u) == 0)
      {
        v34 = &v55;
      }

      else
      {
        v34 = v55;
      }

      if ((v57 & 0x80u) == 0)
      {
        v35 = v57;
      }

      else
      {
        v35 = v56;
      }

      sub_29A01FFA8(a1, *(a1 + 8), v34, &v34[v35], v35);
    }
  }

  if (v57 < 0)
  {
    operator delete(v55);
  }
}

void sub_29A02C59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8.__vftable = va_arg(va1, std::exception_vtbl *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  if (*(v6 - 89) < 0)
  {
    operator delete(*(v6 - 112));
  }

  _Unwind_Resume(a1);
}

void *sub_29A02C5EC(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x29EDC93D0]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_29A02C6A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_29A02B558(a1, v6, 2);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  sub_29A01FFA8(a1, *(a1 + 8), v8, &v8[v9], v9);
  Alembic::Util::v12::TokenMap::get((a2 + 48), 0x3Bu, 61, 1);
  if ((v16 & 0x80u) == 0)
  {
    v10 = v16;
  }

  else
  {
    v10 = v15;
  }

  v11 = sub_29A01F964(*a3, &__p);
  v17 = v11;
  sub_29A00D178(a1, &v17);
  if (v11 == 255)
  {
    sub_29A02B558(a1, v10, 2);
    if (v10)
    {
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v13 = v16;
      }

      else
      {
        v13 = v15;
      }

      sub_29A01FFA8(a1, *(a1 + 8), p_p, &p_p[v13], v13);
    }
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A02C7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A02C7E4(uint64_t a1, int a2, void *a3)
{
  sub_29A02B558(a1, a2, 2);
  v5 = 0;
  v15[0] = a3[1];
  do
  {
    sub_29A00D178(a1, v15 + v5++);
  }

  while (v5 != 8);
  v6 = a3[3] - a3[2];
  if (!v6)
  {
    sub_29A008864(v15);
    sub_29A00911C(v16, "No TimeSamples to write!", 24);
    std::stringbuf::str();
    sub_29A008C60(v14, &__p);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v11 = sub_29A008E1C(exception, v14);
    __cxa_throw(v11, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A02B558(a1, v6 >> 3, 2);
  v7 = a3[2];
  if (a3[3] != v7)
  {
    v8 = 0;
    do
    {
      v9 = 0;
      v15[0] = *(v7 + 8 * v8);
      do
      {
        sub_29A00D178(a1, v15 + v9++);
      }

      while (v9 != 8);
      ++v8;
      v7 = a3[2];
    }

    while (v8 < (a3[3] - v7) >> 3);
  }
}

void sub_29A02C930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.__vftable = va_arg(va1, std::exception_vtbl *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  _Unwind_Resume(a1);
}

void *sub_29A02C958(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 16);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9[1];
      if (v4 == v10)
      {
        if (sub_29A019A44((v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v6 > 1)
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

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

void Alembic::Abc::v12::GetArchiveInfo(Alembic::Abc::v12::IArchive *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, double *a7)
{
  v15 = *(a1 + 4);
  v14 = *(a1 + 5);
  if (!v14)
  {
    if (!v15)
    {
      return;
    }

    v16 = 0;
    goto LABEL_7;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_29A014BEC(v14);
  if (!v15)
  {
    return;
  }

  v15 = *(a1 + 4);
  v16 = *(a1 + 5);
  if (!v16)
  {
LABEL_7:
    v17 = 1;
    goto LABEL_8;
  }

  v17 = 0;
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_8:
  v18 = (*(*v15 + 24))(v15);
  sub_29A019350(v24, v18);
  if ((v17 & 1) == 0)
  {
    sub_29A014BEC(v16);
  }

  sub_29A008E78(__p, "_ai_Application");
  sub_29A02CFB4(v24, __p, v22);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *v22;
  *(a2 + 16) = v23;
  HIBYTE(v23) = 0;
  LOBYTE(v22[0]) = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "_ai_AlembicVersion");
  sub_29A02CFB4(v24, __p, v22);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = *v22;
  *(a3 + 16) = v23;
  HIBYTE(v23) = 0;
  LOBYTE(v22[0]) = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  *a4 = Alembic::Abc::v12::IArchive::getArchiveVersion(a1);
  sub_29A008E78(__p, "_ai_DateWritten");
  sub_29A02CFB4(v24, __p, v22);
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = *v22;
  *(a5 + 16) = v23;
  HIBYTE(v23) = 0;
  LOBYTE(v22[0]) = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "_ai_Description");
  sub_29A02CFB4(v24, __p, v22);
  if (*(a6 + 23) < 0)
  {
    operator delete(*a6);
  }

  *a6 = *v22;
  *(a6 + 16) = v23;
  HIBYTE(v23) = 0;
  LOBYTE(v22[0]) = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "_ai_DCC_FPS");
  sub_29A02CFB4(v24, __p, v22);
  if (SHIBYTE(v23) < 0)
  {
    v19 = v22[0];
    *a7 = atof(v22[0]);
    operator delete(v19);
  }

  else
  {
    *a7 = atof(v22);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A01752C(v24, v24[1]);
}

void sub_29A02CD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A01752C(&a19, a20);
  _Unwind_Resume(a1);
}

void sub_29A02CD58()
{
  if ((v1 & 1) == 0)
  {
    sub_29A014BEC(v0);
  }

  JUMPOUT(0x29A02CD50);
}

uint64_t Alembic::Abc::v12::GetArchiveStartAndEndTime(Alembic::Abc::v12 *this, Alembic::Abc::v12::IArchive *a2, double *a3, double *a4)
{
  result = Alembic::Abc::v12::IArchive::getNumTimeSamplings(this);
  if (!result)
  {
    goto LABEL_34;
  }

  v8 = 0;
  v9 = -1.79769313e308;
  v10 = 1.79769313e308;
  v11 = 1.79769313e308;
  v12 = -1.79769313e308;
  v13 = 1.79769313e308;
  v14 = -1.79769313e308;
  do
  {
    MaxNumSamplesForTimeSamplingIndex = Alembic::Abc::v12::IArchive::getMaxNumSamplesForTimeSamplingIndex(this);
    if (MaxNumSamplesForTimeSamplingIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = MaxNumSamplesForTimeSamplingIndex;
      Alembic::Abc::v12::IArchive::getTimeSampling(this, &v24);
      if (v24)
      {
        if (v16 >= 2 && v8)
        {
          SampleTime = Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(v24, 0);
          v18 = Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(v24, v16 - 1);
          if (v11 >= SampleTime)
          {
            v11 = SampleTime;
          }

          if (v18 >= v12)
          {
            v12 = v18;
          }
        }

        else if (v16 == 1 && v8)
        {
          v19 = Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(v24, 0);
          v20 = Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(v24, 0);
          if (v13 >= v19)
          {
            v13 = v19;
          }

          if (v20 >= v14)
          {
            v14 = v20;
          }
        }

        else
        {
          v21 = v16 < 1;
          v22 = v16 - 1;
          if (!v21 && !v8)
          {
            v10 = Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(v24, 0);
            v9 = Alembic::AbcCoreAbstract::v12::TimeSampling::getSampleTime(v24, v22);
          }
        }
      }

      if (v25)
      {
        sub_29A014BEC(v25);
      }
    }

    ++v8;
    result = Alembic::Abc::v12::IArchive::getNumTimeSamplings(this);
  }

  while (v8 < result);
  if (v11 == 1.79769313e308 || v12 == -1.79769313e308)
  {
    if (v13 == 1.79769313e308 || (v11 = v13, v12 = v14, v14 == -1.79769313e308))
    {
      if (v10 == 1.79769313e308 || (v11 = v10, v12 = v9, v9 == -1.79769313e308))
      {
LABEL_34:
        v12 = -1.79769313e308;
        v11 = 1.79769313e308;
      }
    }
  }

  *a2 = v11;
  *a3 = v12;
  return result;
}

void sub_29A02CF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A02CFB4@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = sub_29A01BCCC(a1, a2);
  if ((a1 + 8) == result)
  {

    return sub_29A008E78(a3, "");
  }

  else if (*(result + 79) < 0)
  {
    v7 = result[7];
    v8 = result[8];

    return sub_29A008D14(a3, v7, v8);
  }

  else
  {
    v6 = *(result + 7);
    a3[2] = result[9];
    *a3 = v6;
  }

  return result;
}

void Alembic::Abc::v12::ErrorHandler::operator()(_DWORD *a1, uint64_t a2, const void **a3)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  v7 = &v12;
  sub_29A022DE0(&v12, v6 + 19);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "\nERROR: EXCEPTION:\n");
  v9 = (*(*a2 + 16))(a2);
  v10 = std::string::append(&v12, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v14 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  Alembic::Abc::v12::ErrorHandler::handleIt(a1, __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

{
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  v7 = &v14;
  sub_29A022DE0(&v14, v6 + 8);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "\nERROR:\n");
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = std::string::append(&v14, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v16 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  Alembic::Abc::v12::ErrorHandler::handleIt(a1, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

{
  if (*(a3 + 23) >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    v5 = a3[1];
  }

  v6 = __p;
  sub_29A022DE0(__p, v5 + 26);
  if (v9 < 0)
  {
    v6 = __p[0];
  }

  if (v5)
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, "\nERROR: UNKNOWN EXCEPTION\n");
  Alembic::Abc::v12::ErrorHandler::handleIt(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A02D180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

std::string *Alembic::Abc::v12::ErrorHandler::handleIt(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  if (*a1)
  {
    if (*a1 != 1)
    {
      sub_29A008864(&v20);
      v12 = *(v2 + 23);
      if (v12 >= 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = *v2;
      }

      if (v12 >= 0)
      {
        v14 = *(v2 + 23);
      }

      else
      {
        v14 = *(v2 + 8);
      }

      sub_29A00911C(v21, v13, v14);
      std::stringbuf::str();
      sub_29A008C60(v19, &__p);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v16 = sub_29A008E1C(exception, v19);
      __cxa_throw(v16, &unk_2A203B108, sub_29A008B08);
    }

    if (*(a2 + 23) >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v4 = *(v2 + 8);
    }

    v5 = sub_29A00911C(MEMORY[0x29EDC93C0], a2, v4);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(&v20, MEMORY[0x29EDC93D0]);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    std::ostream::flush();
  }

  v7 = (a1 + 2);
  v8 = *(v2 + 23);
  if (v8 >= 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = *v2;
  }

  if (v8 >= 0)
  {
    v10 = *(v2 + 23);
  }

  else
  {
    v10 = *(v2 + 8);
  }

  std::string::append(v7, v9, v10);

  return std::string::append(v7, "\n");
}

void sub_29A02D364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16)
{
  sub_29A008F20(&a12);
  sub_29A008B0C(&a16);
  _Unwind_Resume(a1);
}

void sub_29A02D4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29A02D5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Abc::v12::IArchive::~IArchive(Alembic::Abc::v12::IArchive *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

char *Alembic::Abc::v12::IArchive::getName@<X0>(Alembic::Abc::v12::IArchive *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(this + 4) + 16))(*(this + 4));
  if (result[23] < 0)
  {
    return sub_29A008D14(a2, *result, *(result + 1));
  }

  v4 = *result;
  *(a2 + 16) = *(result + 2);
  *a2 = v4;
  return result;
}

void sub_29A02D694(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v11);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  sub_29A008E78(v9, "");
  JUMPOUT(0x29A02D684);
}

void sub_29A02D6F8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  sub_29A008E78(__p, *(a1 + 8));
  Alembic::Abc::v12::ErrorHandler::operator()(v3, a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A02D74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A02D768(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  sub_29A008E78(__p, *(a1 + 8));
  Alembic::Abc::v12::ErrorHandler::operator()(v3, a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A02D7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Abc::v12::IArchive::getTop(Alembic::Abc::v12::IArchive *this@<X0>, uint64_t a2@<X8>)
{
  v6 = this;
  v7 = "IArchive::getTop()";
  (*(**(this + 4) + 32))(&v4);
  v3[0] = 0;
  v3[2] = 0;
  sub_29A02DD88(a2, &v4, v3);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29A02D864(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  v16 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a13, v16);
  }

  else
  {
    sub_29A02D6F8(&a13, 0);
  }

  __cxa_end_catch();
  *(v13 + 8) = 2;
  sub_29A008E78((v13 + 16), "");
  *v13 = &unk_2A203D5E0;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0;
  JUMPOUT(0x29A02D850);
}

void sub_29A02D980(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v11);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  *v9 = 0;
  v9[1] = 0;
  JUMPOUT(0x29A02D970);
}

void sub_29A02DA38(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v11);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  *v9 = 0;
  v9[1] = 0;
  JUMPOUT(0x29A02DA28);
}

void sub_29A02DAE8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02DAD8);
}

void sub_29A02DB98(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02DB88);
}

void sub_29A02DC48(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02DC38);
}

void Alembic::Abc::v12::IArchive::setReadArraySampleCachePtr(uint64_t a1, uint64_t *a2)
{
  v6 = a1;
  v7 = "IArchive::setReadArraySampleCachePtr";
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 48))(v2, &v4);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29A02DD20(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a11, v13);
  }

  else
  {
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02DD10);
}

uint64_t sub_29A02DD88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *a1 = &unk_2A203D5E0;
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = v7;
  *(a1 + 48) = v6;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v8 = a2[1];
  v13 = *a2;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  v10[0] = 0;
  v10[2] = 0;
  *(a1 + 8) = sub_29A02DED8(&v13, a3, v12, v11, v10);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  Alembic::Abc::v12::IObject::initInstance(a1);
  return a1;
}

void sub_29A02DE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (*(v16 + 95) < 0)
  {
    operator delete(*(v16 + 72));
  }

  v18 = *(v16 + 64);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  v19 = *(v16 + 48);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (*(v16 + 39) < 0)
  {
    operator delete(*(v16 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A02DED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v14 = 2;
  sub_29A019350(v15, &v12);
  v17 = 0;
  v16 = 0u;
  v18 = 1;
  sub_29A01752C(&v12, v13[0]);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29A02E010(a2, &v14);
  sub_29A02E010(a3, &v14);
  sub_29A02E010(a4, &v14);
  sub_29A02E010(a5, &v14);
  v10 = v14;
  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  sub_29A01752C(v15, v15[1]);
  return v10;
}

void sub_29A02DFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_29A01752C(&a10, a11);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(a1);
}

void sub_29A02E010(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 > 3)
  {
    switch(v2)
    {
      case 4:
        v4 = *(a1 + 8);
        v6 = *v4;
        v5 = v4[1];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        v7 = *(a2 + 40);
        *(a2 + 32) = v6;
        *(a2 + 40) = v5;
        if (v7)
        {
          sub_29A014BEC(v7);
        }

        break;
      case 5:
        *(a2 + 52) = *(a1 + 8);
        break;
      case 6:
        *(a2 + 56) = *(a1 + 8);
        break;
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        *a2 = *(a1 + 8);
        break;
      case 2:
        *(a2 + 48) = *(a1 + 8);
        break;
      case 3:
        v3 = *(a1 + 8);
        if (a2 + 8 != v3)
        {
          sub_29A028554((a2 + 8), *v3, (v3 + 8));
        }

        break;
    }
  }
}

uint64_t sub_29A02E0BC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A01752C(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t Alembic::Abc::v12::IArrayProperty::IArrayProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = *(a2 + 40);
  v12[0] = *(a2 + 32);
  v12[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Abc::v12::IArrayProperty::init(a1, v12, a3, *a2, a4, a5);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return a1;
}

void sub_29A02E19C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A02E48C(v1);
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::IArrayProperty::init(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(&v22 + 1) = 0;
  v23[0] = 0;
  *&v22 = &v22 + 8;
  v24 = a4;
  sub_29A019350(v25, &v22);
  v27 = 0;
  v26 = 0u;
  v28 = 1;
  sub_29A01752C(&v22, *(&v22 + 1));
  sub_29A02E010(a5, &v24);
  sub_29A02E010(a6, &v24);
  *a1 = v24;
  v23[34] = a1;
  v23[35] = "IArrayProperty::init()";
  if (!(*(**a2 + 80))(*a2, a3))
  {
    sub_29A008864(&v22);
    v13 = sub_29A00911C(v23, "Nonexistent array property: ", 28);
    v14 = *(a3 + 23);
    if (v14 >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if (v14 >= 0)
    {
      v16 = *(a3 + 23);
    }

    else
    {
      v16 = *(a3 + 8);
    }

    sub_29A00911C(v13, v15, v16);
    std::stringbuf::str();
    sub_29A008C60(v21, &__p);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v18 = sub_29A008E1C(exception, v21);
    __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
  }

  (*(**a2 + 96))(&v22);
  v11 = v22;
  v22 = 0uLL;
  v12 = *(a1 + 40);
  *(a1 + 32) = v11;
  if (v12)
  {
    sub_29A014BEC(v12);
    if (*(&v22 + 1))
    {
      sub_29A014BEC(*(&v22 + 1));
    }
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  sub_29A01752C(v25, v25[1]);
}

void sub_29A02E3B8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v12.__vftable = va_arg(va1, std::exception_vtbl *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v11 = v10;
    sub_29A02F0A0(v6);
    sub_29A02D768(v7 - 144, v11);
  }

  else
  {
    sub_29A02F0A0(v6);
    sub_29A02D6F8(v7 - 144, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02E2ECLL);
}

uint64_t sub_29A02E48C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void Alembic::Abc::v12::IArrayProperty::~IArrayProperty(Alembic::Abc::v12::IArrayProperty *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_29A02E56C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02E55CLL);
}

void sub_29A02E61C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02E60CLL);
}

void sub_29A02E6CC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02E6BCLL);
}

uint64_t Alembic::Abc::v12::IArrayProperty::getTimeSampling@<X0>(Alembic::Abc::v12::IArrayProperty *this@<X0>, void *a2@<X8>)
{
  result = (*(**(this + 4) + 16))(*(this + 4));
  v4 = *(result + 72);
  *a2 = *(result + 64);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A02E798(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v11);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  *v9 = 0;
  v9[1] = 0;
  JUMPOUT(0x29A02E788);
}

void Alembic::Abc::v12::IArrayProperty::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v14 = "IArrayProperty::get()";
  v6 = *(a1 + 32);
  v7 = (*(*v6 + 16))(v6);
  v8 = *(v7 + 72);
  v11 = *(v7 + 64);
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = (*(**(a1 + 32) + 64))(*(a1 + 32));
  Index = Alembic::Abc::v12::ISampleSelector::getIndex(a3, &v11, v9);
  (*(*v6 + 80))(v6, Index, a2);
  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29A02E8EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a11, v12);
  }

  else
  {
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02E8D8);
}

void Alembic::Abc::v12::IArrayProperty::getAs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v16 = "IArrayProperty::getAs(PlainOldDataType)";
  v8 = *(a1 + 32);
  v9 = (*(*v8 + 16))(v8);
  v10 = *(v9 + 72);
  v13 = *(v9 + 64);
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = (*(**(a1 + 32) + 64))(*(a1 + 32));
  Index = Alembic::Abc::v12::ISampleSelector::getIndex(a4, &v13, v11);
  (*(*v8 + 136))(v8, Index, a2, a3);
  if (v14)
  {
    sub_29A014BEC(v14);
  }
}

void sub_29A02EA6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a11, v12);
  }

  else
  {
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02EA54);
}

void Alembic::Abc::v12::IArrayProperty::getAs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v15 = "IArrayProperty::getAs()";
  v6 = *(a1 + 32);
  v7 = (*(*v6 + 16))(v6);
  v8 = *(v7 + 72);
  v12 = *(v7 + 64);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = (*(**(a1 + 32) + 64))(*(a1 + 32));
  Index = Alembic::Abc::v12::ISampleSelector::getIndex(a3, &v12, v9);
  v11 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  (*(*v6 + 136))(v6, Index, a2, *(v11 + 56));
  if (v13)
  {
    sub_29A014BEC(v13);
  }
}

void sub_29A02EC0C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a11, v12);
  }

  else
  {
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02EBF8);
}

uint64_t Alembic::Abc::v12::IArrayProperty::getKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v16 = "IArrayProperty::getKey()";
  v6 = *(a1 + 32);
  v7 = (*(*v6 + 16))(v6);
  v8 = *(v7 + 72);
  v13 = *(v7 + 64);
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = (*(**(a1 + 32) + 64))(*(a1 + 32));
  Index = Alembic::Abc::v12::ISampleSelector::getIndex(a3, &v13, v9);
  v11 = (*(*v6 + 112))(v6, Index, a2);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  return v11;
}

void sub_29A02ED84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a11, v12);
  }

  else
  {
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02ED6CLL);
}

void Alembic::Abc::v12::IArrayProperty::getDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v14 = "IArrayProperty::getDimensions()";
  v6 = *(a1 + 32);
  v7 = (*(*v6 + 16))(v6);
  v8 = *(v7 + 72);
  v11 = *(v7 + 64);
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = (*(**(a1 + 32) + 64))(*(a1 + 32));
  Index = Alembic::Abc::v12::ISampleSelector::getIndex(a3, &v11, v9);
  (*(*v6 + 120))(v6, Index, a2);
  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29A02EEF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a11, v12);
  }

  else
  {
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02EEE4);
}

void Alembic::Abc::v12::IArrayProperty::getParent(Alembic::Abc::v12::IArrayProperty *this@<X0>, uint64_t a2@<X8>)
{
  v9 = this;
  v10 = "IArrayProperty::getParent()";
  (*(**(this + 4) + 32))(&v7);
  v4 = *this;
  v6[0] = 1;
  v6[2] = v4;
  v5[0] = 0;
  v5[2] = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(a2, &v7, v6, v5);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A02F010(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v18 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a15, v18);
  }

  else
  {
    sub_29A02D6F8(&a15, 0);
  }

  __cxa_end_catch();
  *v15 = 2;
  sub_29A008E78((v15 + 8), "");
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  JUMPOUT(0x29A02EFFCLL);
}

void sub_29A02F0A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  JUMPOUT(0x29C2C1A60);
}

uint64_t Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v8 = *(a2 + 40);
  v10[0] = *(a2 + 32);
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Abc::v12::ICompoundProperty::init(a1, v10, a3, *a2, a4);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  return a1;
}

void sub_29A02F188(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A02E48C(v1);
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::ICompoundProperty::init(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  *(&v22 + 1) = 0;
  v23[0] = 0;
  *&v22 = &v22 + 8;
  v24 = a4;
  sub_29A019350(v25, &v22);
  v27 = 0;
  v26 = 0u;
  v28 = 1;
  sub_29A01752C(&v22, *(&v22 + 1));
  sub_29A02E010(a5, &v24);
  *a1 = v24;
  v23[34] = a1;
  v23[35] = "ICompoundProperty::init()";
  if (!*a2)
  {
    sub_29A008864(&v22);
    sub_29A00911C(v23, "invalid parent", 14);
    std::stringbuf::str();
    sub_29A008C60(v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_29A008E1C(exception, v21);
    __cxa_throw(v12, &unk_2A203B108, sub_29A008B08);
  }

  if (!(*(**a2 + 80))(*a2, a3))
  {
    sub_29A008864(&v22);
    v13 = sub_29A00911C(v23, "Nonexistent compound property: ", 31);
    v14 = *(a3 + 23);
    if (v14 >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if (v14 >= 0)
    {
      v16 = *(a3 + 23);
    }

    else
    {
      v16 = *(a3 + 8);
    }

    sub_29A00911C(v13, v15, v16);
    std::stringbuf::str();
    sub_29A008C60(v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = __cxa_allocate_exception(0x20uLL);
    v18 = sub_29A008E1C(v17, v21);
    __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
  }

  (*(**a2 + 104))(&v22);
  v9 = v22;
  v22 = 0uLL;
  v10 = *(a1 + 40);
  *(a1 + 32) = v9;
  if (v10)
  {
    sub_29A014BEC(v10);
    if (*(&v22 + 1))
    {
      sub_29A014BEC(*(&v22 + 1));
    }
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  sub_29A01752C(v25, v25[1]);
}

void sub_29A02F40C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v12.__vftable = va_arg(va1, std::exception_vtbl *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v11 = v10;
    sub_29A02F0A0(v6);
    sub_29A02D768(v7 - 128, v11);
  }

  else
  {
    sub_29A02F0A0(v6);
    sub_29A02D6F8(v7 - 128, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02F2C8);
}

uint64_t Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = a2[1];
    v12 = *a2;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v12 = *a2;
    v13 = 0;
  }

  v11[0] = 0;
  v11[2] = 0;
  v10[0] = 0;
  v10[2] = 0;
  v8 = sub_29A02F5F8(&v12, a3, a4, v11, v10);
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v8;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void sub_29A02F5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A02F5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v14 = 2;
  sub_29A019350(v15, &v12);
  v17 = 0;
  v16 = 0u;
  v18 = 1;
  sub_29A01752C(&v12, v13[0]);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  sub_29A02E010(a2, &v14);
  sub_29A02E010(a3, &v14);
  sub_29A02E010(a4, &v14);
  sub_29A02E010(a5, &v14);
  v10 = v14;
  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  sub_29A01752C(v15, v15[1]);
  return v10;
}

void sub_29A02F6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_29A01752C(&a10, a11);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = a2[1];
    v13 = *a2;
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = *a2;
    v14 = 0;
  }

  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  v9 = sub_29A02F5F8(&v13, a4, a5, v12, v11);
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v9;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return a1;
}

void sub_29A02F814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(uint64_t a1, Alembic::Abc::v12::IObject *a2, uint64_t a3, uint64_t a4)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  Alembic::Abc::v12::ICompoundProperty::init(a1, a2, a3, a4);
  return a1;
}

void Alembic::Abc::v12::ICompoundProperty::init(uint64_t a1, Alembic::Abc::v12::IObject *a2, uint64_t a3, uint64_t a4)
{
  sub_29A030028(v16, a2);
  v11[0] = 0;
  v11[2] = 0;
  LODWORD(v14) = 0;
  LODWORD(v15) = 0;
  *a1 = sub_29A02FF1C(v16, a3, a4, v11, &v14);
  Alembic::Abc::v12::IObject::~IObject(v16);
  v14 = a1;
  v15 = "ICompoundProperty::init( IObject)";
  Alembic::Abc::v12::IObject::getProperties(a2, v11);
  v9 = v12;
  v8 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 40);
  *(a1 + 32) = v9;
  *(a1 + 40) = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v11);
}

void sub_29A02F970(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v11 = v10;
    sub_29A02F0A0(v8);
    sub_29A02D768(va, v11);
  }

  else
  {
    sub_29A02F0A0(v8);
    sub_29A02D6F8(va, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02F95CLL);
}

uint64_t Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(uint64_t a1, Alembic::Abc::v12::IObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  Alembic::Abc::v12::ICompoundProperty::init(a1, a2, a4, a5);
  return a1;
}

void Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(Alembic::Abc::v12::ICompoundProperty *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t Alembic::Abc::v12::ICompoundProperty::getNumProperties(Alembic::Abc::v12::ICompoundProperty *this)
{
  result = *(this + 4);
  if (result)
  {
    return (*(*result + 64))(result);
  }

  return result;
}

void sub_29A02FB0C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02FAFCLL);
}

uint64_t Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(Alembic::Abc::v12::ICompoundProperty *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    return (*(*v1 + 72))(v1);
  }

  if ((atomic_load_explicit(&qword_2A153EC88, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A153EC88))
    {
      v3 = operator new(0x50uLL);
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
      *(v3 + 6) = 1;
      v3[6] = 0;
      v3[5] = 0;
      v3[4] = v3 + 5;
      *(v3 + 14) = 127;
      *(v3 + 60) = 0;
      v3[8] = 0;
      v3[9] = 0;
      qword_2A153EC80 = v3;
      __cxa_guard_release(&qword_2A153EC88);
    }
  }

  return qword_2A153EC80;
}

void sub_29A02FC38(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_guard_abort(&qword_2A153EC88);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v11);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  if ((atomic_load_explicit(&qword_2A153EC98, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A153EC98))
    {
      v12 = operator new(0x50uLL);
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      *(v12 + 6) = 1;
      v12[6] = 0;
      v12[5] = 0;
      v12[4] = v12 + 5;
      *(v12 + 14) = 127;
      *(v12 + 60) = 0;
      v12[8] = 0;
      v12[9] = 0;
      qword_2A153EC90 = v12;
      __cxa_guard_release(&qword_2A153EC98);
    }
  }

  JUMPOUT(0x29A02FBCCLL);
}

uint64_t Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 80))(result);
  }

  return result;
}

void sub_29A02FD90(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v10);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A02FD80);
}

void Alembic::Abc::v12::ICompoundProperty::getParent(Alembic::Abc::v12::ICompoundProperty *this@<X0>, uint64_t a2@<X8>)
{
  v9 = this;
  v10 = "ICompoundProperty::getParent()";
  (*(**(this + 4) + 32))(&v7);
  v4 = *this;
  v6[0] = 1;
  v6[2] = v4;
  v5[0] = 0;
  v5[2] = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(a2, &v7, v6, v5);
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A02FE8C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v18 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a15, v18);
  }

  else
  {
    sub_29A02D6F8(&a15, 0);
  }

  __cxa_end_catch();
  *v15 = 2;
  sub_29A008E78((v15 + 8), "");
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  JUMPOUT(0x29A02FE78);
}

uint64_t sub_29A02FF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v14 = v9;
  sub_29A019350(v15, &v12);
  v17 = 0;
  v16 = 0u;
  v18 = 1;
  sub_29A01752C(&v12, v13[0]);
  sub_29A02E010(a2, &v14);
  sub_29A02E010(a3, &v14);
  sub_29A02E010(a4, &v14);
  sub_29A02E010(a5, &v14);
  v10 = v14;
  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  sub_29A01752C(v15, v15[1]);
  return v10;
}

uint64_t sub_29A030028(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_29A008D14((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  *a1 = &unk_2A203D5E0;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 95) < 0)
  {
    sub_29A008D14((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
  }

  return a1;
}

void sub_29A030104(_Unwind_Exception *a1)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29B28491C(v2, v1, (v1 + 16));
  _Unwind_Resume(a1);
}

void Alembic::Abc::v12::IObject::~IObject(void **this)
{
  *this = &unk_2A203D5E0;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this[8];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = this[6];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  Alembic::Abc::v12::IObject::~IObject(this);

  operator delete(v1);
}

uint64_t Alembic::Abc::v12::IObject::getHeader(Alembic::Abc::v12::IObject *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return (*(*v1 + 16))(v1);
  }

  if ((atomic_load_explicit(&qword_2A153ECA8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A153ECA8))
    {
      v3 = operator new(0x48uLL);
      v3[8] = 0;
      v3[7] = 0;
      *v3 = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      v3[6] = v3 + 7;
      qword_2A153ECA0 = v3;
      __cxa_guard_release(&qword_2A153ECA8);
    }
  }

  return qword_2A153ECA0;
}

uint64_t Alembic::Abc::v12::IObject::getName(Alembic::Abc::v12::IObject *this)
{
  v2 = *(this + 7);
  if (!v2)
  {
    v2 = *(this + 5);
  }

  return (*(*v2 + 16))();
}

uint64_t Alembic::Abc::v12::IObject::getFullName(Alembic::Abc::v12::IObject *this)
{
  result = this + 72;
  if ((*(this + 95) & 0x8000000000000000) == 0)
  {
    if (*(this + 95))
    {
      return result;
    }

    return Alembic::Abc::v12::IObject::getHeader(this) + 24;
  }

  if (!*(this + 10))
  {
    return Alembic::Abc::v12::IObject::getHeader(this) + 24;
  }

  return result;
}

void Alembic::Abc::v12::IObject::getArchive(Alembic::Abc::v12::IObject *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (this + 8);
  v10 = this + 8;
  v11 = "IObject::getArchive()";
  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 24))(&v8);
    v5 = *v3;
    *a2 = 2;
    sub_29A008E78((a2 + 8), "");
    v6 = v9;
    *(a2 + 32) = v8;
    *(a2 + 40) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = v9;
      *a2 = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v5;
    }
  }

  else
  {
    *a2 = 2;
    sub_29A008E78((a2 + 8), "");
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }
}

double Alembic::Abc::v12::IObject::getParent@<D0>(const std::string *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this[1].__r_.__value_.__r.__words[2];
  if (!v4)
  {
    *(a2 + 8) = 2;
    sub_29A008E78((a2 + 16), "");
    *a2 = &unk_2A203D5E0;
    result = 0.0;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0;
    return result;
  }

  p_size = &this->__r_.__value_.__l.__size_;
  v30 = &this->__r_.__value_.__s.__data_[8];
  v31 = "IObject::getParent()";
  if ((SHIBYTE(this[3].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this[3].__r_.__value_.__l.__size_)
    {
LABEL_4:
      v6 = std::string::rfind(this + 3, 47, 0xFFFFFFFFFFFFFFFFLL);
      if (v6 + 1 > 1)
      {
        std::string::basic_string(&__str, this + 3, 0, v6, &v28);
      }

      else
      {
        memset(&__str, 0, sizeof(__str));
      }

      (*(*this[1].__r_.__value_.__r.__words[2] + 32))(&v28);
      if (!v28)
      {
        goto LABEL_33;
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        goto LABEL_33;
      }

      v10 = (*(*v28 + 16))();
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = __str.__r_.__value_.__l.__size_;
      }

      v12 = *(v10 + 47);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v10 + 32);
      }

      if (v11 != v12)
      {
        goto LABEL_26;
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      v17 = *(v10 + 24);
      v15 = v10 + 24;
      v16 = v17;
      v18 = (v13 >= 0 ? v15 : v16);
      if (!memcmp(p_str, v18, v11))
      {
LABEL_33:
        v21 = 0;
      }

      else
      {
LABEL_26:
        v19 = *(&v28 + 1);
        v26 = v28;
        if (*(&v28 + 1))
        {
          atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        sub_29A030878(&v26, &__str, &v27);
        v20 = *(&v28 + 1);
        v28 = v27;
        if (v20)
        {
          sub_29A014BEC(v20);
        }

        if (v19)
        {
          sub_29A014BEC(v19);
        }

        v21 = 1;
      }

      v25 = v28;
      if (*(&v28 + 1))
      {
        atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *p_size;
      LODWORD(v27) = 1;
      DWORD2(v27) = v22;
      sub_29A02DD88(a2, &v25, &v27);
      if (*(&v25 + 1))
      {
        sub_29A014BEC(*(&v25 + 1));
      }

      if (v21)
      {
        std::string::operator=((a2 + 72), &__str);
      }

      if (*(&v28 + 1))
      {
        sub_29A014BEC(*(&v28 + 1));
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      return result;
    }
  }

  else if (*(&this[3].__r_.__value_.__s + 23))
  {
    goto LABEL_4;
  }

  (*(*v4 + 32))(&v23);
  v7 = *p_size;
  LODWORD(__str.__r_.__value_.__l.__data_) = 1;
  LODWORD(__str.__r_.__value_.__r.__words[1]) = v7;
  sub_29A02DD88(a2, &v23, &__str);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  return result;
}

void sub_29A030878(uint64_t *a1@<X0>, const std::string *a2@<X1>, void *a3@<X8>)
{
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v5 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size && (v6 = *a1) != 0)
  {
    if (v5 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    v9 = v8->__r_.__value_.__s.__data_[0] == 47;
    (*(*v6 + 24))(&v12);
    (*(*v12 + 32))(&v14);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v10 = v15;
    v11[0] = v14;
    v11[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A032020(v11, a2, v9, a3);
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_29A030990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::Abc::v12::IObject::getNumChildren(Alembic::Abc::v12::IObject *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return (*(*v1 + 48))(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t Alembic::Abc::v12::IObject::getChildHeader(Alembic::Abc::v12::IObject *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return (*(*v1 + 56))(v1);
  }

  if ((atomic_load_explicit(&qword_2A153ECB8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A153ECB8))
    {
      v3 = operator new(0x48uLL);
      v3[8] = 0;
      v3[7] = 0;
      *v3 = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      v3[6] = v3 + 7;
      qword_2A153ECB0 = v3;
      __cxa_guard_release(&qword_2A153ECB8);
    }
  }

  return qword_2A153ECB0;
}

uint64_t Alembic::Abc::v12::IObject::getChildHeader(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return (*(*v1 + 64))(v1);
  }

  else
  {
    return 0;
  }
}

double Alembic::Abc::v12::IObject::getChild@<D0>(Alembic::Abc::v12::IObject *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 8);
  v25 = this + 8;
  v26 = "IObject::getChild()";
  v5 = *(this + 5);
  if (!v5)
  {
    *(a2 + 8) = 2;
    sub_29A008E78((a2 + 16), "");
    *a2 = &unk_2A203D5E0;
    result = 0.0;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0;
    return result;
  }

  (*(*v5 + 80))(&v23);
  v6 = *v4;
  LODWORD(__str.__r_.__value_.__l.__data_) = 1;
  LODWORD(__str.__r_.__value_.__r.__words[1]) = v6;
  sub_29A02DD88(a2, &v23, &__str);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  if ((*(this + 95) & 0x8000000000000000) != 0)
  {
    if (!*(this + 10))
    {
      return result;
    }
  }

  else if (!*(this + 95))
  {
    return result;
  }

  sub_29A008E78(&v20, "/");
  v8 = *(this + 95);
  if (v8 >= 0)
  {
    v9 = this + 72;
  }

  else
  {
    v9 = *(this + 9);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 95);
  }

  else
  {
    v10 = *(this + 10);
  }

  v11 = std::string::insert(&v20, 0, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 56))
  {
    v13 = *(a2 + 56);
  }

  else
  {
    v13 = *(a2 + 40);
  }

  v14 = (*(*v13 + 16))(v13);
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::string::append(&v21, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  std::string::operator=((a2 + 72), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return result;
}

double Alembic::Abc::v12::IObject::getChild@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 8);
  v25 = a1 + 8;
  v26 = "IObject::getChild()";
  v5 = *(a1 + 40);
  if (!v5)
  {
    *(a2 + 8) = 2;
    sub_29A008E78((a2 + 16), "");
    *a2 = &unk_2A203D5E0;
    result = 0.0;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0;
    return result;
  }

  (*(*v5 + 72))(&v23);
  v6 = *v4;
  LODWORD(__str.__r_.__value_.__l.__data_) = 1;
  LODWORD(__str.__r_.__value_.__r.__words[1]) = v6;
  sub_29A02DD88(a2, &v23, &__str);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  if ((*(a1 + 95) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 80))
    {
      return result;
    }
  }

  else if (!*(a1 + 95))
  {
    return result;
  }

  sub_29A008E78(&v20, "/");
  v8 = *(a1 + 95);
  if (v8 >= 0)
  {
    v9 = (a1 + 72);
  }

  else
  {
    v9 = *(a1 + 72);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 95);
  }

  else
  {
    v10 = *(a1 + 80);
  }

  v11 = std::string::insert(&v20, 0, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 56))
  {
    v13 = *(a2 + 56);
  }

  else
  {
    v13 = *(a2 + 40);
  }

  v14 = (*(*v13 + 16))(v13);
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::string::append(&v21, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  std::string::operator=((a2 + 72), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return result;
}

void Alembic::Abc::v12::IObject::reset(Alembic::Abc::v12::IObject *this)
{
  v2 = *(this + 8);
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 95) < 0)
  {
    **(this + 9) = 0;
    *(this + 10) = 0;
  }

  else
  {
    *(this + 72) = 0;
    *(this + 95) = 0;
  }

  v3 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  JUMPOUT(0x29C2C1A60);
}

void Alembic::Abc::v12::IObject::getProperties(Alembic::Abc::v12::IObject *this@<X0>, uint64_t a2@<X8>)
{
  v8 = this + 8;
  v9 = "IObject::getProperties()";
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 40))(&v6);
    v5[0] = 0;
    v5[2] = 0;
    v4[0] = 0;
    v4[2] = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(a2, &v6, v5, v4);
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a2 = 2;
    sub_29A008E78((a2 + 8), "");
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }
}

uint64_t Alembic::Abc::v12::IObject::getPropertiesHash(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return (*(*v1 + 88))(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t Alembic::Abc::v12::IObject::getChildrenHash(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return (*(*v1 + 96))(v1);
  }

  else
  {
    return 0;
  }
}

BOOL Alembic::Abc::v12::IObject::isInstanceDescendant(Alembic::Abc::v12::IObject *this)
{
  v1 = *(this + 95);
  if (v1 < 0)
  {
    v1 = *(this + 10);
  }

  return v1 != 0;
}

void Alembic::Abc::v12::IObject::instanceSourcePath(Alembic::Abc::v12::IObject *this@<X0>, void *a2@<X8>)
{
  v8 = this + 8;
  v9 = "IObject::instanceSourcePath()";
  v3 = *(this + 7);
  if (v3)
  {
    (*(*v3 + 40))(&v6);
    v4 = v7;
    v5[0] = v6;
    v5[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A031688(v5, a2);
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_29A031688(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  sub_29A008E78(v18, ".instanceSource");
  v5 = (*(*v3 + 80))(v3, v18);
  v6 = v5;
  if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_14:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  operator delete(v18[0]);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = a1[1];
  v14 = *a1;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = 0;
  v13[2] = 0;
  v12[0] = 0;
  v12[2] = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v16, &v14, v13, v12);
  sub_29A008E78(__p, ".instanceSource");
  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  sub_29A0323F8(v18, v16, __p, v9, v8);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v16);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v20 < 0)
  {
    if (!v19)
    {
      goto LABEL_16;
    }

LABEL_18:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_19;
  }

  if (v20)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v21)
  {
    goto LABEL_18;
  }

  v16[0] = 0;
  v16[1] = 0;
  v17 = 2;
  sub_29A0323A4(v18, v16, a2);
LABEL_19:
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v18);
}

BOOL Alembic::Abc::v12::IObject::isChildInstance(Alembic::Abc::v12::IObject *this)
{
  v7 = this + 8;
  v8 = "IObject::isChildInstanced(size_t iChildIndex)";
  Alembic::Abc::v12::IObject::getChild(this, v3);
  if (v4 < 0)
  {
    if (!v3[3])
    {
      goto LABEL_5;
    }

LABEL_7:
    Alembic::Abc::v12::IObject::~IObject(v3);
    return 0;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_7;
  }

  v1 = v6 != 0;
  Alembic::Abc::v12::IObject::~IObject(v3);
  return v1;
}

void sub_29A0318FC(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v2 - 32, v4);
  }

  else
  {
    sub_29A02D6F8(v2 - 32, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0318E4);
}

BOOL Alembic::Abc::v12::IObject::isChildInstance(uint64_t a1)
{
  v7 = a1 + 8;
  v8 = "IObject::isChildInstance(const std::string &iChildName)";
  Alembic::Abc::v12::IObject::getChild(a1, v3);
  if (v4 < 0)
  {
    if (!v3[3])
    {
      goto LABEL_5;
    }

LABEL_7:
    Alembic::Abc::v12::IObject::~IObject(v3);
    return 0;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_7;
  }

  v1 = v6 != 0;
  Alembic::Abc::v12::IObject::~IObject(v3);
  return v1;
}

void sub_29A0319D4(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v2 - 32, v4);
  }

  else
  {
    sub_29A02D6F8(v2 - 32, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0319BCLL);
}

void Alembic::Abc::v12::IObject::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_29A008D14(&v18, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v18 = *(a2 + 8);
    v19 = *(a2 + 24);
  }

  v6 = *(a2 + 40);
  v20 = *(a2 + 32);
  v21 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v10) = 0;
  v11 = 0;
  LODWORD(v15) = 0;
  LODWORD(v16) = 0;
  v14[0] = 0;
  v14[2] = 0;
  *(a1 + 8) = sub_29A031BA8(&v17, a3, &v10, &v15, v14);
  Alembic::Abc::v12::IArchive::~IArchive(&v17);
  v15 = a1 + 8;
  v16 = "IObject::init( IArchive)";
  Alembic::Abc::v12::IArchive::getTop(a2, &v10);
  v8 = v12;
  v7 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 48);
  *(a1 + 40) = v8;
  *(a1 + 48) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  Alembic::Abc::v12::IObject::~IObject(&v10);
}

void sub_29A031B30(void *a1, int a2)
{
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v6 = v5;
    Alembic::Abc::v12::IObject::reset(v2);
    sub_29A02D768(v3 - 96, v6);
  }

  else
  {
    Alembic::Abc::v12::IObject::reset(v2);
    sub_29A02D6F8(v3 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A031B1CLL);
}

uint64_t sub_29A031BA8(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v14 = v9;
  sub_29A019350(v15, &v12);
  v17 = 0;
  v16 = 0u;
  v18 = 1;
  sub_29A01752C(&v12, v13[0]);
  sub_29A02E010(a2, &v14);
  sub_29A02E010(a3, &v14);
  sub_29A02E010(a4, &v14);
  sub_29A02E010(a5, &v14);
  v10 = v14;
  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  sub_29A01752C(v15, v15[1]);
  return v10;
}

void Alembic::Abc::v12::IObject::init(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 8) = a4;
  v8 = a1 + 8;
  v9 = "IObject::init()";
  (*(**a2 + 72))(&v7);
  v5 = v7;
  v7 = 0uLL;
  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  if (v6)
  {
    sub_29A014BEC(v6);
    if (*(&v7 + 1))
    {
      sub_29A014BEC(*(&v7 + 1));
    }
  }
}

void sub_29A031D44(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(va, v5);
  }

  else
  {
    sub_29A02D6F8(va, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A031D34);
}

void Alembic::Abc::v12::IObject::initInstance(std::string *this)
{
  v2 = this[1].__r_.__value_.__r.__words[2];
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
    sub_29A008E78(&__p, "isInstance");
    sub_29A02CFB4(v3 + 48, &__p, &v22);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = v22.__r_.__value_.__l.__size_ != 1 || *v22.__r_.__value_.__l.__data_ != 49;
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    else
    {
      v4 = SHIBYTE(v22.__r_.__value_.__r.__words[2]) != 1 || v22.__r_.__value_.__s.__data_[0] != 49;
    }

    if (v21 < 0)
    {
      operator delete(__p);
      if (v4)
      {
        return;
      }
    }

    else if (v4)
    {
      return;
    }

    (*(*this[1].__r_.__value_.__r.__words[2] + 40))(&__p);
    v5 = v20;
    v18[0] = __p;
    v18[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A031688(v18, &v22);
    if (v5)
    {
      sub_29A014BEC(v5);
    }

    data = this[2].__r_.__value_.__l.__data_;
    v15[0] = this[1].__r_.__value_.__r.__words[2];
    v15[1] = data;
    if (data)
    {
      atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A030878(v15, &v22, &v16);
    if (data)
    {
      sub_29A014BEC(data);
    }

    v8 = this[1].__r_.__value_.__r.__words[2];
    v7 = this[2].__r_.__value_.__l.__data_;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    v9 = this[2].__r_.__value_.__r.__words[2];
    this[2].__r_.__value_.__l.__size_ = v8;
    this[2].__r_.__value_.__r.__words[2] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    v10 = v16;
    v11 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = this[2].__r_.__value_.__l.__data_;
    this[1].__r_.__value_.__r.__words[2] = v10;
    this[2].__r_.__value_.__r.__words[0] = v11;
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    size = this[2].__r_.__value_.__l.__size_;
    if (size)
    {
      v14 = (*(*size + 16))(size);
      std::string::operator=(this + 3, v14 + 1);
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }
}

void sub_29A031FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A032020(uint64_t a1@<X0>, const std::string *a2@<X1>, std::string::size_type a3@<X2>, void *a4@<X8>)
{
  v8 = std::string::find(a2, 47, a3);
  v9 = v8;
  memset(&v28, 0, sizeof(v28));
  if (v8 == -1)
  {
    std::string::basic_string(&v27, a2, a3, 0xFFFFFFFFFFFFFFFFLL, &__p);
  }

  else
  {
    std::string::basic_string(&v27, a2, a3, v8 - a3, &__p);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v28 = v27;
  (*(**a1 + 72))(&v26);
  if (v9 == -1 || !v26)
  {
    v12 = *(&v26 + 1);
    *a4 = v26;
    a4[1] = v12;
    v26 = 0uLL;
  }

  else
  {
    v10 = (*(*v26 + 16))();
    sub_29A008E78(&__p, "isInstance");
    sub_29A02CFB4(v10 + 48, &__p, &v27);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      v11 = v27.__r_.__value_.__l.__size_ == 1 && *v27.__r_.__value_.__l.__data_ == 49;
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    else
    {
      v11 = SHIBYTE(v27.__r_.__value_.__r.__words[2]) == 1 && v27.__r_.__value_.__s.__data_[0] == 49;
    }

    if (v25 < 0)
    {
      operator delete(__p);
    }

    v13 = v26;
    if (v11)
    {
      (*(*v26 + 40))(&__p);
      v14 = v24;
      v22[0] = __p;
      v22[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A031688(v22, &v27);
      if (v14)
      {
        sub_29A014BEC(v14);
      }

      v15 = *(&v26 + 1);
      v20 = v26;
      if (*(&v26 + 1))
      {
        atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      sub_29A030878(&v21, &v20, &v27);
      v16 = v21;
      v21 = 0uLL;
      v17 = *(&v26 + 1);
      v26 = v16;
      if (v17)
      {
        sub_29A014BEC(v17);
        if (*(&v21 + 1))
        {
          sub_29A014BEC(*(&v21 + 1));
        }
      }

      if (v15)
      {
        sub_29A014BEC(v15);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (v24)
      {
        sub_29A014BEC(v24);
      }

      v13 = v26;
    }

    v18 = *(&v26 + 1);
    v19[0] = v13;
    v19[1] = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A032020(v19, a2, v9 + 1);
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_29A0322F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  if (*(v26 - 81) < 0)
  {
    operator delete(*(v26 - 104));
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  if (*(v26 - 57) < 0)
  {
    operator delete(*(v26 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0323A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return Alembic::Abc::v12::IScalarProperty::get(a1, a3, a2, 24);
}

void sub_29A0323DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0323F8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = *a2;
  *(&v46 + 1) = 0;
  v47[0] = 0;
  *&v46 = &v46 + 8;
  v48 = v10;
  sub_29A019350(v49, &v46);
  v51 = 0;
  v50 = 0u;
  v52 = 1;
  sub_29A01752C(&v46, *(&v46 + 1));
  sub_29A02E010(a4, &v48);
  sub_29A02E010(a5, &v48);
  *a1 = v48;
  v47[34] = a1;
  v47[35] = "ITypedScalarProperty::ITypedScalarProperty()";
  v12 = *(a2 + 4);
  v11 = *(a2 + 5);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    sub_29A008864(&v46);
    v31 = sub_29A00911C(v47, "NULL CompoundPropertyReader passed into ", 40);
    sub_29A00911C(v31, "ITypedScalarProperty ctor", 25);
    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v33 = sub_29A008E1C(exception, __p);
    __cxa_throw(v33, &unk_2A203B108, sub_29A008B08);
  }

  v13 = (*(*v12 + 80))(v12, a3);
  v14 = v13;
  if (!v13)
  {
    sub_29A008864(&v46);
    v34 = sub_29A00911C(v47, "Nonexistent scalar property: ", 29);
    v35 = *(a3 + 23);
    if (v35 >= 0)
    {
      v36 = a3;
    }

    else
    {
      v36 = *a3;
    }

    if (v35 >= 0)
    {
      v37 = *(a3 + 23);
    }

    else
    {
      v37 = *(a3 + 8);
    }

    sub_29A00911C(v34, v36, v37);
    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v38 = __cxa_allocate_exception(0x20uLL);
    v39 = sub_29A008E1C(v38, __p);
    __cxa_throw(v39, &unk_2A203B108, sub_29A008B08);
  }

  v16 = *(v13 + 56) == 12 && *(v13 + 60) == 1 && *(v13 + 24) == 1;
  if (!v16 || (sub_29A032984(v13 + 32, v52) & 1) == 0)
  {
    sub_29A008864(&v46);
    v20 = sub_29A00911C(v47, "Incorrect match of header datatype: ", 36);
    v21 = sub_29A00D330(v20, (v14 + 56));
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    v41 = 1;
    v40 = 12;
    v23 = sub_29A00D330(v22, &v40);
    v24 = sub_29A00911C(v23, ",\n...or incorrect match of interpretation: ", 43);
    sub_29A008E78(v42, "interpretation");
    sub_29A02CFB4(v14 + 32, v42, __p);
    if ((v45 & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v26 = v45;
    }

    else
    {
      v26 = __p[1];
    }

    v27 = sub_29A00911C(v24, v25, v26);
    v28 = sub_29A00911C(v27, " to expected: ", 14);
    sub_29A00911C(v28, "", 0);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    std::stringbuf::str();
    sub_29A008C60(__p, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v29 = __cxa_allocate_exception(0x20uLL);
    v30 = sub_29A008E1C(v29, __p);
    __cxa_throw(v30, &unk_2A203B108, sub_29A008B08);
  }

  (*(*v12 + 88))(&v46, v12, a3);
  v17 = v46;
  v46 = 0uLL;
  v18 = *(a1 + 40);
  *(a1 + 32) = v17;
  if (v18)
  {
    sub_29A014BEC(v18);
    if (*(&v46 + 1))
    {
      sub_29A014BEC(*(&v46 + 1));
    }
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (*(&v50 + 1))
  {
    sub_29A014BEC(*(&v50 + 1));
  }

  sub_29A01752C(v49, v49[1]);
  return a1;
}