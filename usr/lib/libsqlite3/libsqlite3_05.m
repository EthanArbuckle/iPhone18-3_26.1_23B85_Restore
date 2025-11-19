uint64_t sub_1818C6990(uint64_t a1, int a2, int a3, int a4)
{
  v8 = *(a1 + 104);
  if (a2 >= 1)
  {
    v8 += (*(a1 + 36) - a2) << 6;
  }

  v9 = 8 * a3;
  v10 = v9 + 120;
  v11 = v9 + 416;
  if (a4)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(a1 + 120) + 8 * a2);
  if (v13)
  {
    sub_18193A6F4(a1, v13);
    *(*(a1 + 120) + 8 * a2) = 0;
  }

  v14 = *(v8 + 32);
  if (v12 <= v14)
  {
    result = *(v8 + 40);
  }

  else
  {
    if (v14 >= 1)
    {
      sub_181929C84(*(v8 + 24), *(v8 + 40));
    }

    v15 = *(v8 + 24);
    if (v15)
    {
      result = sub_181929E8C(v15, v12, 3526279494);
    }

    else
    {
      result = sub_181902484(v12, 3526279494);
    }

    *(v8 + 40) = result;
    *(v8 + 8) = result;
    if (!result)
    {
      *(v8 + 32) = 0;
      return result;
    }

    *(v8 + 32) = v12;
  }

  *(*(a1 + 120) + 8 * a2) = result;
  *result = 0u;
  *(result + 16) = 0u;
  *result = a4;
  *(result + 64) = a3;
  *(result + 80) = result + 4 * a3 + 112;
  if (!a4)
  {
    v17 = (*(v8 + 8) + v10);
    *(result + 40) = v17;
    *v17 = 0uLL;
    v17[1] = 0uLL;
  }

  return result;
}

uint64_t sub_1818C6AC0(unsigned __int8 *a1)
{
  if (a1[84] < 0)
  {
    v4 = *(a1 + 20);
    if (!v4)
    {
LABEL_20:
      *a1 = 1;
      return 16;
    }

    v5 = *a1;
    if (v5 < 3)
    {
      goto LABEL_33;
    }

    if (v5 == 4)
    {
      return *(a1 + 1);
    }

    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v12);
        --qword_1ED456A90;
        off_1ED452EB0(v12);
        v12 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_32;
        }

        v13 = &xmmword_1ED452F28;
      }

      (*v13)(v12);
    }

LABEL_32:
    *(a1 + 3) = 0;
    *a1 = 1;
    v4 = *(a1 + 20);
LABEL_33:
    result = sub_181943894(*(a1 + 4), v4, a1 + 17);
    if (result)
    {
      *a1 = 1;
      return result;
    }

    a1[84] = 0;
    v2 = *(a1 + 17);
    a1[85] = *(v2 + 1);
    goto LABEL_36;
  }

  v2 = *(a1 + 17);
  if (a1[84])
  {
    v3 = *(v2 + 112);
    if ((*(v3 + 52) & 0x20) != 0)
    {
      v7 = *(v3 + 40);
      --*(v7 + 152);
      *(v3 + 32) = *(v7 + 168);
      *(v7 + 168) = v3;
      (*(**(v7 + 72) + 144))(*(v7 + 72), *(v7 + 200) * (*(v3 + 48) - 1), *(v3 + 8));
    }

    else
    {
      sub_181932B68(v3);
    }

    v8 = a1[84] - 1;
    for (a1[84] = v8; v8; a1[84] = v8)
    {
      v9 = *(*&a1[8 * v8 + 144] + 112);
      if ((*(v9 + 52) & 0x20) != 0)
      {
        v10 = *(v9 + 40);
        --*(v10 + 152);
        *(v9 + 32) = *(v10 + 168);
        *(v10 + 168) = v9;
        (*(**(v10 + 72) + 144))(*(v10 + 72), *(v10 + 200) * (*(v9 + 48) - 1), *(v9 + 8));
      }

      else
      {
        sub_181932B68(v9);
      }

      v8 = a1[84] - 1;
    }

    v2 = *(a1 + 18);
    *(a1 + 17) = v2;
    goto LABEL_17;
  }

LABEL_36:
  if (!*v2 || *(v2 + 1) != (*(a1 + 16) == 0))
  {

    return sub_18193596C(84829, v2);
  }

LABEL_17:
  *(a1 + 43) = 0;
  *(a1 + 35) = 0;
  a1[1] &= 0xF1u;
  if (*(v2 + 24))
  {
    result = 0;
    *a1 = 0;
    return result;
  }

  if (*(v2 + 8))
  {
    goto LABEL_20;
  }

  if (*(v2 + 4) == 1)
  {
    v11 = bswap32(*(*(v2 + 80) + *(v2 + 9) + 8));
    *a1 = 0;

    return sub_1818C6EF4(a1, v11);
  }

  else
  {

    return sub_18190EDA8(84841);
  }
}

uint64_t sub_1818C6DCC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = (*(a1 + 80) + *(a1 + 9));
  if (sub_181935454(a1, *v3))
  {
    v4 = 81486;
LABEL_5:

    return sub_18193596C(v4, a1);
  }

  v5 = *(v2 + 52);
  *(a1 + 26) = v5 - 1;
  *(a1 + 12) = 0;
  v6 = *(a1 + 10);
  *(a1 + 18) = *(a1 + 9) + v6 + 8;
  v7 = *(a1 + 80);
  *(a1 + 88) = v7 + v5;
  *(a1 + 96) = &v3[v6 + 8];
  *(a1 + 104) = v7 + v6;
  v8 = __rev16(*(v3 + 3));
  *(a1 + 24) = v8;
  if ((v5 - 8) / 6u < v8)
  {
    v4 = 81500;
    goto LABEL_5;
  }

  *(a1 + 20) = -1;
  *a1 = 1;
  if ((*(*(v2 + 8) + 50) & 0x20) == 0)
  {
    return 0;
  }

  return sub_181939AFC(a1);
}

uint64_t sub_1818C6EF4(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 84);
  if (v3 < 19)
  {
    *(a1 + 70) = 0;
    v7 = (a1 + 136);
    v6 = *(a1 + 136);
    *(a1 + 2 * v3 + 88) = *(a1 + 86);
    v8 = a1 + 144;
    *(a1 + 144 + 8 * v3) = v6;
    *(a1 + 1) &= 0xF9u;
    *(a1 + 86) = 0;
    *(a1 + 84) = v3 + 1;
    result = sub_181943894(*(a1 + 32), a2, (a1 + 136));
    if (!result)
    {
      v9 = *v7;
      if (*(*v7 + 24) && *(v9 + 1) == *(a1 + 85))
      {
        return 0;
      }

      v10 = *(v9 + 112);
      if ((*(v10 + 52) & 0x20) != 0)
      {
        v11 = *(v10 + 40);
        --*(v11 + 152);
        *(v10 + 32) = *(v11 + 168);
        *(v11 + 168) = v10;
        (*(**(v11 + 72) + 144))(*(v11 + 72), *(v11 + 200) * (*(v10 + 48) - 1), *(v10 + 8));
      }

      else
      {
        sub_181932B68(v10);
      }

      result = sub_18190EDA8(84694);
    }

    v12 = *(a1 + 84) - 1;
    *(a1 + 84) = v12;
    *(a1 + 136) = *(v8 + 8 * v12);
  }

  else
  {

    return sub_18190EDA8(84680);
  }

  return result;
}

uint64_t sub_1818C7030(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2;
  if (*a2 < 0)
  {
    v4 = a2 + 1;
    v5 = a2[1] & 0x7F | ((v3 & 0x7F) << 7);
    if ((a2[1] & 0x80) == 0)
    {
LABEL_3:
      v3 = v5;
      goto LABEL_6;
    }

    v4 = a2 + 2;
    v3 = a2[2] & 0x7F | (v5 << 7);
    if ((a2[2] & 0x80) != 0)
    {
      v4 = a2 + 3;
      v3 = a2[3] & 0x7F | (v3 << 7);
      if ((a2[3] & 0x80) != 0)
      {
        v4 = a2 + 4;
        v5 = a2[4] & 0x7F | (v3 << 7);
        if ((a2[4] & 0x80) == 0)
        {
          goto LABEL_3;
        }

        v4 = a2 + 5;
        v3 = a2[5] & 0x7F | (v5 << 7);
        if ((a2[5] & 0x80) != 0)
        {
          v4 = a2 + 6;
          v5 = a2[6] & 0x7F | (v3 << 7);
          if ((a2[6] & 0x80) == 0)
          {
            goto LABEL_3;
          }

          v4 = a2 + 7;
          v3 = a2[7] & 0x7F | (v5 << 7);
          if ((a2[7] & 0x80) != 0)
          {
            v4 = a2 + 8;
            v5 = a2[8] & 0x7F | (v3 << 7);
            goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_6:
  v6 = v4 + 1;
  v7 = v4[1];
  if (v4[1] < 0)
  {
    v6 = v4 + 2;
    v8 = v4[2] ^ (v7 << 7);
    if (v4[2] < 0)
    {
      v6 = v4 + 3;
      v9 = v4[3] ^ (v8 << 7);
      if (v4[3] < 0)
      {
        v6 = v4 + 4;
        v7 = v4[4] ^ (v9 << 7) ^ 0x10204000;
        if (v4[4] < 0)
        {
          v6 = v4 + 5;
          v7 = v4[5] ^ (v7 << 7) ^ 0x4000;
          if (v4[5] < 0)
          {
            v6 = v4 + 6;
            v7 = v4[6] ^ (v7 << 7) ^ 0x4000;
            if (v4[6] < 0)
            {
              v6 = v4 + 7;
              v7 = v4[7] ^ (v7 << 7) ^ 0x4000;
              if (v4[7] < 0)
              {
                v6 = v4 + 8;
                v7 = v4[8] ^ (v7 << 7) ^ 0x4000;
                if (v4[8] < 0)
                {
                  v7 = (v4[9] | (v7 << 8)) ^ 0x8000;
                  v6 = v4 + 9;
                }
              }
            }
          }
        }
      }

      else
      {
        v7 = v9 ^ 0x204000;
      }
    }

    else
    {
      v7 = v8 & 0x3FFF;
    }
  }

  *(a3 + 16) = v3;
  *a3 = v7;
  *(a3 + 8) = v6 + 1;
  if (v3 > *(result + 14))
  {
    return sub_181935AF8(result, a2, a3);
  }

  v10 = v3 + v6 + 1 - a2;
  if ((v10 & 0xFFFC) == 0)
  {
    v10 = 4;
  }

  *(a3 + 22) = v10;
  *(a3 + 20) = v3;
  return result;
}

uint64_t sub_1818C7200(unsigned __int8 *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = a1[1];
    if (v4 < 0)
    {
      v5 = a1[1];
      v6 = a1[2];
      v7 = v6 & 0x7F | (*a1 << 14) & 0x1FFFFF;
      if (v6 < 0)
      {
        v8 = (a1[3] | (v5 << 14)) & 0x1FC07F;
        if (a1[3] < 0)
        {
          v9 = a1[4];
          v10 = v9 | (v7 << 14);
          if (a1[4] < 0)
          {
            v11 = v8 | (v7 << 7);
            v12 = a1[5] | (v8 << 14);
            if (a1[5] < 0)
            {
              v13 = a1[6] | (v10 << 14);
              if (a1[6] < 0)
              {
                v14 = v13 & 0x1FC07F;
                v15 = a1[7] | (v12 << 14);
                if (a1[7] < 0)
                {
                  v16 = a1[8] | (v14 << 15) | (v15 << 8) & 0x1FC07F00u | (((v9 >> 3) & 0xF | (16 * v11)) << 32);
                  result = 9;
                }

                else
                {
                  v16 = v15 & 0xF01FC07F | (v14 << 7) | ((v11 >> 4) << 32);
                  result = 8;
                }

                *a2 = v16;
              }

              else
              {
                result = 7;
                *a2 = v13 & 0xF01FC07F | (v12 << 7) & 0xFE03F80 | ((v11 >> 11) << 32);
              }
            }

            else
            {
              result = 6;
              *a2 = v12 | (v10 << 7) & 0xFE03F80u | ((v11 >> 18) << 32);
            }
          }

          else
          {
            result = 5;
            *a2 = v10 | (v8 << 7) | ((v7 >> 18) << 32);
          }
        }

        else
        {
          result = 4;
          *a2 = v8 | (v7 << 7);
        }
      }

      else
      {
        result = 3;
        *a2 = v7 | ((v5 & 0x7F) << 7);
      }
    }

    else
    {
      result = 2;
      *a2 = v4 | ((v2 & 0x7F) << 7);
    }
  }

  else
  {
    result = 1;
    *a2 = v2;
  }

  return result;
}

char *sub_1818C7394(char *result, int a2, uint64_t a3)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v9 = (*result << 16) | (result[1] << 8);
        v10 = result[2];
      }

      else
      {
        if (a2 != 4)
        {
          v3 = bswap32(*(result + 2)) | ((result[1] | (*result << 8)) << 32);
          goto LABEL_31;
        }

        v9 = (*result << 24) | (result[1] << 16) | (result[2] << 8);
        v10 = result[3];
      }

      v3 = v9 | v10;
      goto LABEL_31;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        v3 = *result;
        goto LABEL_31;
      }

      if (a2 == 2)
      {
        v3 = result[1] | (*result << 8);
LABEL_31:
        *a3 = v3;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

LABEL_19:
    *(a3 + 20) = 1;
    return result;
  }

  if (a2 > 9)
  {
    if (a2 == 11)
    {
      goto LABEL_19;
    }

    if (a2 == 10)
    {
      *(a3 + 20) = 1025;
      *(a3 + 16) = 0;
      *a3 = 0;
      return result;
    }

LABEL_33:
    *(a3 + 8) = result;
    *(a3 + 16) = (a2 - 12) >> 1;
    *(a3 + 20) = word_181A20E24[a2 & 1];
    return result;
  }

  if ((a2 - 6) >= 2)
  {
    v3 = (a2 - 8);
    if (v3 < 2)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  v4 = (*result << 24) | (result[1] << 16);
  v5 = (result[4] << 24) | (result[5] << 16) | ((v4 | (bswap32(*(result + 1)) >> 16)) << 32) | result[7] | (result[6] << 8);
  if (a2 == 6)
  {
    *a3 = v5;
LABEL_32:
    *(a3 + 20) = 4;
    return result;
  }

  *a3 = v5;
  v6 = ~v4 & 0x7FF00000;
  if ((v5 & 0xFFFFFFFFFFFFFLL) != 0 && v6 == 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 8;
  }

  *(a3 + 20) = v8;
  return result;
}

const unsigned __int8 *__cdecl sqlite3_value_text(const unsigned __int8 *result)
{
  if (result)
  {
    v1 = *(result + 10);
    if ((~v1 & 0x202) != 0 || result[22] != 1)
    {
      if (v1)
      {
        return 0;
      }

      else
      {
        return sub_18193CB70(result, 1);
      }
    }

    else
    {
      return *(result + 1);
    }
  }

  return result;
}

uint64_t sub_1818C757C(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 20);
    if ((~v2 & 0x202) != 0 || *(result + 22) != a2)
    {
      if (v2)
      {
        return 0;
      }

      else
      {
        return sub_18193CB70(result, a2);
      }
    }

    else
    {
      return *(result + 8);
    }
  }

  return result;
}

uint64_t sub_1818C75B4(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 32) >= 32)
  {
    v7 = *(a1 + 40);
    *(a1 + 8) = v7;
    *(a1 + 20) &= 0x2Du;
  }

  else
  {
    if (sub_1818BB128(a1, 32, 0))
    {
      *(a1 + 22) = 0;
      return 7;
    }

    v7 = *(a1 + 8);
  }

  sub_18193CE24(v7, a1);
  *(a1 + 22) = 1;
  v8 = *(a1 + 20) | 0x202;
  if (a3)
  {
    v8 = *(a1 + 20) & 0xFDD1 | 0x202;
  }

  *(a1 + 20) = v8;
  if (a2 != 1)
  {
    sub_1818F1820(a1, a2);
  }

  return 0;
}

void sub_1818C7678(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 344);
  if (!v10)
  {
LABEL_59:
    if (!a2)
    {
      return;
    }

    goto LABEL_60;
  }

  v11 = *(v10 + 48);
  if ((v11 & 4) != 0)
  {
    sub_181910730(a1, "table %s has more than one primary key", a3, a4, a5, a6, a7, a8, *v10);
    goto LABEL_59;
  }

  *(v10 + 48) = v11 | 4;
  if (a2)
  {
    v12 = *a2;
    if (v12 < 1)
    {
      goto LABEL_57;
    }

    v47 = a5;
    v48 = a4;
    v49 = a3;
    v13 = 0;
    v14 = 0;
    LOWORD(v15) = -1;
    while (1)
    {
      for (i = *&a2[6 * v13 + 2]; i; i = *(i + 2))
      {
        if ((i[5] & 0x20) == 0)
        {
          break;
        }
      }

      v21 = *i;
      v22 = i;
      if (v21 == 118)
      {
        goto LABEL_17;
      }

      if (v21 == 114)
      {
        break;
      }

LABEL_18:
      if (v21 != 60)
      {
        goto LABEL_10;
      }

      v23 = *(i + 1);
      if (v23 && (v24 = *v23) != 0)
      {
        v25 = 0;
        v26 = v23 + 1;
        do
        {
          v25 += byte_181A20298[v24];
          v27 = *v26++;
          v24 = v27;
        }

        while (v27);
      }

      else
      {
        v25 = 0;
      }

      v28 = *(v10 + 8);
      v29 = *(v10 + 54);
      v15 = *(v10 + 104 + (v25 & 0xF));
      v30 = v28 + 16 * v15;
      if (*(v30 + 11) == v25)
      {
        v31 = *v30;
        for (j = v23; ; ++j)
        {
          if (*v31 == *j)
          {
            if (!*v31)
            {
LABEL_42:
              v14 = v28 + 16 * v15;
              v37 = *(v14 + 14);
              *(v14 + 14) = v37 | 1;
              if ((v37 & 0x60) != 0)
              {
                sub_181910730(a1, "generated columns cannot be part of the PRIMARY KEY", a3, a4, a5, a6, a7, a8, v46);
              }

              goto LABEL_10;
            }
          }

          else if (byte_181A20298[*v31] != byte_181A20298[*j])
          {
            break;
          }

          ++v31;
        }
      }

      v15 = 0;
      if (v29 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v29;
      }

      do
      {
        v34 = v28 + 16 * v15;
        if (*(v34 + 11) == v25)
        {
          v35 = *v34;
          for (k = v23; ; ++k)
          {
            if (*v35 == *k)
            {
              if (!*v35)
              {
                goto LABEL_42;
              }
            }

            else if (byte_181A20298[*v35] != byte_181A20298[*k])
            {
              break;
            }

            ++v35;
          }
        }

        ++v15;
      }

      while (v15 != v33);
      LOWORD(v15) = -1;
LABEL_10:
      if (++v13 == v12)
      {
        a4 = v48;
        a3 = v49;
        a5 = v47;
        if (v12 == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_57;
      }
    }

    v22 = *(i + 2);
    if (*v22 != 118)
    {
      goto LABEL_10;
    }

LABEL_17:
    *v22 = 60;
    v21 = *i;
    goto LABEL_18;
  }

  v15 = *(v10 + 54) - 1;
  v14 = *(v10 + 8) + 16 * v15;
  v16 = *(v14 + 14);
  *(v14 + 14) = v16 | 1;
  if ((v16 & 0x60) != 0)
  {
    v17 = a3;
    v18 = a4;
    v19 = a5;
    sub_181910730(a1, "generated columns cannot be part of the PRIMARY KEY", a3, a4, a5, a6, a7, a8, v46);
    a5 = v19;
    a4 = v18;
    a3 = v17;
  }

LABEL_45:
  if (!v14 || a5 == 1 || (*(v14 + 8) & 0xF0) != 0x40)
  {
LABEL_57:
    if (!a4)
    {
      sub_1818C8730(a1, 0, 0, 0, a2, a3, 0, 0, a5, 0, 2u);
      return;
    }

    sub_181910730(a1, "AUTOINCREMENT is only allowed on an INTEGER PRIMARY KEY", a3, a4, a5, a6, a7, a8, v46);
    goto LABEL_59;
  }

  if (a2 && *(a1 + 302) >= 2u)
  {
    for (m = *(a2 + 1); m; m = *(m + 16))
    {
      if ((*(m + 5) & 0x20) == 0)
      {
        break;
      }
    }

    v39 = *(a1 + 408);
    if (v39)
    {
      while (*v39 != m)
      {
        v39 = v39[3];
        if (!v39)
        {
          goto LABEL_66;
        }
      }

      *v39 = v10 + 52;
    }
  }

LABEL_66:
  *(v10 + 52) = v15;
  *(v10 + 62) = a3;
  *(v10 + 48) |= 8 * a4;
  if (a2)
  {
    *(a1 + 300) = *(a2 + 24);
    v41 = *a2;
    if (v41 >= 1)
    {
      v42 = (a2 + 25);
      while ((*v42 & 0x20) == 0)
      {
        v42 += 12;
        if (!--v41)
        {
          goto LABEL_60;
        }
      }

      v43 = *(v42 - 1);
      v44 = v43 == 3 || v43 == 0;
      v45 = "LAST";
      if (v44)
      {
        v45 = "FIRST";
      }

      sub_181910730(a1, "unsupported use of NULLS %s", a3, a4, a5, a6, a7, a8, v45);
    }

LABEL_60:
    v40 = *a1;

    sub_18194E5B8(v40, a2);
  }
}

void *sub_1818C7AB0(void *ptr, int a2)
{
  v4 = qword_1EA831A88;
  if (!qword_1EA831A88)
  {
    v4 = malloc_default_zone();
  }

  result = malloc_type_zone_realloc(v4, ptr, a2, 0xC5750F60uLL);
  if (!result)
  {
    if (qword_1EA831A88)
    {
      v6 = (*(qword_1EA831A88 + 16))(qword_1EA831A88, ptr);
    }

    else
    {
      v6 = malloc_size(ptr);
    }

    sqlite3_log(7, "failed memory resize %u to %u bytes", v6, a2);
    return 0;
  }

  return result;
}

void sub_1818C7B4C(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = a1[43];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = a4;
  v13 = a3;
  v14 = 4;
  if (*(v10 + 197))
  {
    if (*(v10 + 196) == 1)
    {
      v14 = 4;
    }

    else
    {
      v14 = 5;
    }
  }

  v15 = v11[1] + 16 * *(v11 + 27);
  v39 = 0uLL;
  WORD2(v39) = v14;
  *&v37 = 0;
  *(&v37 + 1) = sub_1818C7E14;
  *&v38 = sub_18195A49C;
  *(&v38 + 1) = 0;
  if (a2)
  {
    sub_181959BA0(&v37, a2);
    if (!WORD2(v39))
    {
      v36 = *(v15 - 16);
      v16 = "default value of column [%s] is not constant";
      goto LABEL_25;
    }
  }

  if ((*(v15 - 2) & 0x60) != 0)
  {
    v16 = "cannot use DEFAULT on a generated column";
LABEL_25:
    sub_181910730(a1, v16, a3, a4, a5, a6, a7, a8, v36);
    goto LABEL_26;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  LOBYTE(v37) = -75;
  v17 = v12 - v13;
  do
  {
    v18 = v13;
    v19 = v17;
    v20 = *v13++;
    --v17;
  }

  while ((byte_181A204C8[v20] & 1) != 0);
  v21 = v19;
  v22 = (v19 << 32) + 0x100000000;
  v23 = v21 - 2;
  do
  {
    v24 = byte_181A204C8[v13[v23]];
    v22 -= 0x100000000;
    --v23;
  }

  while ((v24 & 1) != 0);
  v25 = v22 >> 32;
  v26 = sub_181929E8C(v10, (v22 >> 32) + 1, 1565185748);
  v27 = v26;
  if (v26)
  {
    memcpy(v26, v18, v25);
    *(v27 + v25) = 0;
  }

  *(&v37 + 1) = v27;
  *&v38 = a2;
  DWORD1(v37) = 0x2000;
  v28 = sub_1818C7FEC(v10, &v37, 1, 0);
  if (v27)
  {
    sub_181929C84(v10, v27);
  }

  v29 = v11[10];
  v30 = *(v15 - 4);
  if (!*(v15 - 4) || !v29)
  {
    if (!v29)
    {
      *(v15 - 4) = 1;
      v11[10] = sub_18197FD9C(*a1, v28);
      goto LABEL_26;
    }

    v31 = *v29;
    goto LABEL_35;
  }

  v31 = *v29;
  if (*v29 < v30)
  {
LABEL_35:
    *(v15 - 4) = v31 + 1;
    if (v29[1] <= v31)
    {
      v11[10] = sub_18197FE14(*a1, v29, v28);
    }

    else
    {
      *v29 = v31 + 1;
      v35 = &v29[6 * v31];
      *(v35 + 2) = 0;
      *(v35 + 3) = 0;
      *(v35 + 1) = v28;
      v11[10] = v29;
    }

    goto LABEL_26;
  }

  v32 = v29 + 2;
  v33 = *&v29[6 * (v30 - 1) + 2];
  if (v33)
  {
    sub_1819439E0(*a1, v33);
    v30 = *(v15 - 4);
  }

  *&v32[6 * v30 - 6] = v28;
LABEL_26:
  v34 = *(a1 + 302);
  if (v34 >= 2)
  {
    v39 = 0uLL;
    *&v37 = a1;
    *(&v37 + 1) = sub_181961E4C;
    *&v38 = sub_181961EB8;
    *(&v38 + 1) = 0;
    *(a1 + 302) = 3;
    if (a2)
    {
      sub_181959BA0(&v37, a2);
    }

    *(a1 + 302) = v34;
  }

  if (a2)
  {
    sub_1819439E0(v10, a2);
  }
}

uint64_t sub_1818C7E14(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 36);
  if (v2 == 2 && (a2[4] & 1) != 0)
  {
    goto LABEL_30;
  }

  v3 = *a2;
  if (v3 > 0xA7)
  {
    if (*a2 > 0xABu)
    {
      if (v3 == 179 || v3 == 176)
      {
        goto LABEL_30;
      }

      if (v3 == 172)
      {
        v4 = *(a2 + 1);
        v5 = (v4 >> 20) & 1;
        if (v2 > 3)
        {
          v5 = 1;
        }

        if (v5 == 1 && (v4 & 0x1000000) == 0)
        {
          if (v2 == 5)
          {
            *(a2 + 1) = v4 | 0x40000000;
            return 0;
          }

          return 0;
        }

        if (*a1)
        {
          return sub_18195A4A8(a1, a2);
        }

        goto LABEL_30;
      }
    }

    else if (v3 - 168 < 3)
    {
LABEL_6:
      if ((a2[4] & 0x20) == 0)
      {
        if (v2 == 3 && *(a2 + 11) == *(a1 + 40))
        {
          return 0;
        }

LABEL_30:
        *(a1 + 36) = 0;
        return 2;
      }

      if (v2 == 2)
      {
        goto LABEL_30;
      }

      return 0;
    }

    return 0;
  }

  if (*a2 > 0x8Du)
  {
    if (v3 == 142)
    {
      goto LABEL_30;
    }

    if (v3 == 157)
    {
      if (v2 == 4)
      {
        goto LABEL_30;
      }

      if (v2 != 5)
      {
        return 0;
      }

      *a2 = 122;
    }

    return 0;
  }

  if (v3 != 60)
  {
    if (v3 == 72)
    {
      goto LABEL_30;
    }

    return 0;
  }

  v7 = *(a2 + 1);
  if ((v7 & 0x4000800) != 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 1);
  v9 = "true";
  for (i = v8; *i == *v9; ++i)
  {
    if (!*i)
    {
      v11 = 0x10000000;
      goto LABEL_47;
    }

LABEL_35:
    ++v9;
  }

  if (byte_181A20298[*i] == byte_181A20298[*v9])
  {
    goto LABEL_35;
  }

  for (j = "false"; *v8 != *j; ++j)
  {
    if (byte_181A20298[*v8] != byte_181A20298[*j])
    {
      goto LABEL_6;
    }

LABEL_43:
    ++v8;
  }

  if (*v8)
  {
    goto LABEL_43;
  }

  v11 = 0x20000000;
LABEL_47:
  *a2 = -85;
  *(a2 + 1) = v11 | v7;
  return 1;
}

uint64_t sub_1818C7FEC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    v8 = *a4;
    v9 = 0x8000000;
    v10 = -1;
    v34 = v8;
    if (!v8)
    {
      goto LABEL_56;
    }
  }

  else
  {
    if (a3)
    {
      v11 = sub_1818C82E4(a2);
      v10 = -1;
    }

    else if ((a2[5] & 8) != 0 || (v12 = *(a2 + 1)) == 0)
    {
      v10 = 0;
      v11 = 80;
    }

    else
    {
      v13 = strlen(v12);
      v10 = (v13 & 0x3FFFFFFF) + 1;
      v11 = (v13 & 0x3FFFFFF8) + 88;
    }

    v8 = sub_181929E8C(a1, v11, 353104982);
    v9 = 0;
    v34 = v8;
    if (!v8)
    {
      goto LABEL_56;
    }
  }

  if (!a3 || (a2[6] & 2) != 0)
  {
    v14 = 80;
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = 16428;
    if (*(a2 + 2))
    {
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_18:
      if ((a2[5] & 8) != 0 || (v16 = *(a2 + 1)) == 0)
      {
        v10 = 0;
        if (a3)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v10 = (strlen(v16) & 0x3FFFFFFF) + 1;
        if (a3)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_23;
    }

    if (*(a2 + 4))
    {
      v14 = 16428;
    }

    else
    {
      v14 = 65552;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  if (a3)
  {
LABEL_16:
    v15 = v14 & 0x7C;
    memcpy(v8, a2, v14 & 0x7C);
    goto LABEL_31;
  }

LABEL_23:
  v17 = *(a2 + 1);
  v15 = 80;
  if ((v17 & 0x4000) != 0)
  {
    v18 = 44;
  }

  else
  {
    v18 = 80;
  }

  if ((v17 & 0x10000) != 0)
  {
    v19 = 16;
  }

  else
  {
    v19 = v18;
  }

  memcpy(v8, a2, v19);
  if (v19 <= 0x4F)
  {
    v15 = 80;
    bzero((v8 + v19), 80 - v19);
  }

LABEL_31:
  v20 = v14 & 0x14000 | v9 | *(v8 + 4) & 0xF7FEBFFF;
  *(v8 + 4) = v20;
  if (v10)
  {
    v21 = (v8 + v15);
    *(v8 + 8) = v21;
    memcpy(v21, *(a2 + 1), v10);
    v15 += v10;
    v20 = *(v8 + 4);
  }

  v34 = v8 + ((v15 + 7) & 0xFFFFFFF8);
  v22 = *(a2 + 1);
  if (((v20 | v22) & 0x810000) == 0)
  {
    v23 = *(a2 + 4);
    if ((v22 & 0x1000) != 0)
    {
      v25 = sub_1818CB220(a1, v23, a3);
    }

    else
    {
      if (*a2 == 146)
      {
        v24 = 0;
      }

      else
      {
        v24 = a3;
      }

      v25 = sub_1818C83A0(a1, v23, v24);
    }

    *(v8 + 32) = v25;
    if (a2[7])
    {
      *(v8 + 72) = sub_18195C750(a1, v8, *(a2 + 9));
    }

    v26 = *a2;
    v27 = *(a2 + 2);
    if (a3)
    {
      if (v26 != 178 && v27)
      {
        v27 = sub_1818C7FEC(a1, v27, 1, &v34);
      }

      *(v8 + 16) = v27;
      v28 = *(a2 + 3);
      if (v28)
      {
        v29 = &v34;
        v30 = a1;
        v31 = 1;
LABEL_53:
        v32 = sub_1818C7FEC(v30, v28, v31, v29);
LABEL_55:
        *(v8 + 24) = v32;
        goto LABEL_56;
      }
    }

    else
    {
      if (v26 != 178 && v27)
      {
        v27 = sub_1818C7FEC(a1, v27, 0, 0);
      }

      *(v8 + 16) = v27;
      v28 = *(a2 + 3);
      if (v28)
      {
        v30 = a1;
        v31 = 0;
        v29 = 0;
        goto LABEL_53;
      }
    }

    v32 = 0;
    goto LABEL_55;
  }

LABEL_56:
  if (a4)
  {
    *a4 = v34;
  }

  return v8;
}

uint64_t sub_1818C82E4(uint64_t a1)
{
  LODWORD(v2) = 0;
  do
  {
    v3 = *(a1 + 4);
    if ((v3 & 0x20000) != 0)
    {
      v4 = 80;
      if ((v3 & 0x800) != 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(a1 + 16))
    {
      v4 = 44;
      if ((v3 & 0x800) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (*(a1 + 32))
      {
        v4 = 44;
      }

      else
      {
        v4 = 16;
      }

      if ((v3 & 0x800) != 0)
      {
        goto LABEL_15;
      }
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      v4 += (strlen(v5) & 0x3FFFFFFF) + 1;
    }

LABEL_15:
    v6 = (v4 + 7) & 0xFFFFFFF8;
    if (*(a1 + 16))
    {
      v6 += sub_1818C82E4();
    }

    a1 = *(a1 + 24);
    v2 = v6 + v2;
  }

  while (a1);
  return v2;
}

_DWORD *sub_1818C83A0(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 && *(a1 + 520) > a2)
  {
    if (*(a1 + 496) <= a2)
    {
      v5 = 128;
      goto LABEL_7;
    }

    if (*(a1 + 504) <= a2)
    {
      v5 = *(a1 + 438);
      goto LABEL_7;
    }
  }

  v5 = xmmword_1ED452EC0(a2);
LABEL_7:
  v6 = sub_181929E8C(a1, v5, 1079309605);
  v7 = v6;
  if (v6)
  {
    *v6 = *a2;
    v6[1] = a2[1];
    if (*a2 >= 1)
    {
      v8 = 0;
      v9 = 0;
      v25 = 0;
      v10 = 0;
      while (1)
      {
        v13 = &a2[v8];
        v14 = &v7[v8];
        v15 = *&a2[v8 + 2];
        if (!v15)
        {
          break;
        }

        v16 = sub_1818C7FEC(a1, *&a2[v8 + 2], a3, 0);
        *(v14 + 1) = v16;
        if (*v15 != 178 || v16 == 0)
        {
          goto LABEL_21;
        }

        v18 = *(v16 + 24);
        if (v18)
        {
          v25 = *(v15 + 3);
          *(v16 + 16) = v18;
          v9 = v18;
          v19 = *(v13 + 2);
          if (!v19)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v22 = *(v15 + 2);
          if (v22 != v25)
          {
            if (v22)
            {
              v23 = v16;
              v9 = sub_1818C7FEC(a1, v22, a3, 0);
              v16 = v23;
            }

            else
            {
              v9 = 0;
            }

            *(v16 + 24) = v9;
            v25 = v22;
          }

          *(v16 + 16) = v9;
          v19 = *(v13 + 2);
          if (!v19)
          {
LABEL_10:
            v11 = 0;
            goto LABEL_11;
          }
        }

LABEL_22:
        v20 = strlen(v19);
        v21 = v20;
        if (a1)
        {
          v11 = sub_181929E8C(a1, v20 + 1, 354097263);
          if (!v11)
          {
            goto LABEL_11;
          }

LABEL_26:
          memcpy(v11, v19, v21 + 1);
          goto LABEL_11;
        }

        v11 = sub_181902484(v20 + 1, 354097263);
        if (v11)
        {
          goto LABEL_26;
        }

LABEL_11:
        v12 = &v7[v8];
        *(v12 + 2) = v11;
        v12[6] = v13[6];
        v12[7] = v13[7];
        ++v10;
        v8 += 6;
        if (v10 >= *a2)
        {
          return v7;
        }
      }

      *(v14 + 1) = 0;
LABEL_21:
      v19 = *(v13 + 2);
      if (!v19)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  return v7;
}

uint64_t sub_1818C85D8(uint64_t a1)
{
  *(a1 + 70) = 0;
  *(a1 + 1) &= 0xF9u;
  if (*a1)
  {
LABEL_10:

    return sub_181944D44(a1);
  }

  v2 = *(a1 + 136);
  v3 = *(a1 + 86);
  *(a1 + 86) = v3 + 1;
  if (*(v2 + 24) <= (v3 + 1))
  {
    *(a1 + 86) = v3;
    goto LABEL_10;
  }

  if (!*(v2 + 8))
  {
    while (1)
    {
      v5 = *(a1 + 136);
      if (*(v5 + 8))
      {
        break;
      }

      result = sub_1818C6EF4(a1, bswap32(*(*(v5 + 80) + (_byteswap_ushort(*(*(v5 + 96) + 2 * *(a1 + 86))) & *(v5 + 26)))));
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void *sub_1818C86A4(uint64_t *a1, char *a2)
{
  v4 = *a1;
  v5 = *(v4 + 100);
  v6 = *(v4 + 197);
  result = sub_181949138(v4, *(v4 + 100), a2, v6);
  if (!v6 && (!result || !result[3]))
  {

    return sub_18194E6B8(a1, v5, result, a2, v8, v9, v10, v11);
  }

  return result;
}

void *sub_1818C8730(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, int a9, int a10, unsigned __int8 a11)
{
  v11 = a5;
  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  v13 = *a1;
  __dst = 0;
  if (*(a1 + 13))
  {
    goto LABEL_4;
  }

  v15 = a11;
  if (a11 != 2 && *(a1 + 302) == 1)
  {
    goto LABEL_4;
  }

  v245 = a8;
  v244 = a6;
  v18 = a3;
  v19 = a2;
  if (!*(v13 + 197))
  {
    v24 = *(v13 + 44);
    v25 = *(*(v13 + 32) + 24);
    *(v13 + 100) = *(v25 + 113);
    if ((*(v25 + 114) & 1) != 0 || (v26 = sub_18189F330(v13, 0, a1 + 1, 0, a5, a6, a7, a8), a2 = v19, a3 = v18, !v26))
    {
      v27 = *(v13 + 40);
      if (v27 < 2)
      {
LABEL_35:
        if ((v24 & 1) == 0)
        {
          *(v13 + 44) &= ~1u;
        }

        if (*(v13 + 111))
        {
          *(v13 + 44) |= 0x10u;
        }

        goto LABEL_13;
      }

      v28 = 32 * v27 - 8;
      while (1)
      {
        if ((*(*(*(v13 + 32) + v28) + 114) & 1) == 0)
        {
          v26 = sub_18189F330(v13, (v27 - 1), a1 + 1, 0, a5, a6, a7, a8);
          a2 = v19;
          a3 = v18;
          if (v26)
          {
            break;
          }
        }

        --v27;
        v28 -= 32;
        if ((v27 + 1) <= 2)
        {
          goto LABEL_35;
        }
      }
    }

    v16 = 0;
    *(a1 + 6) = v26;
    ++*(a1 + 13);
    a8 = v245;
    goto LABEL_5;
  }

LABEL_13:
  if (v11)
  {
    v20 = *v11;
    if (v20 >= 1)
    {
      v21 = (v11 + 25);
      while ((*v21 & 0x20) == 0)
      {
        v21 += 12;
        if (!--v20)
        {
          goto LABEL_18;
        }
      }

      v35 = *(v21 - 1);
      v36 = v35 == 3 || v35 == 0;
      v37 = "LAST";
      if (v36)
      {
        v37 = "FIRST";
      }

      v235 = v37;
      v23 = "unsupported use of NULLS %s";
      goto LABEL_45;
    }
  }

LABEL_18:
  if (!a4)
  {
    v29 = a1[43];
    a8 = v245;
    if (v29)
    {
      v30 = v29[12];
      if (!v30)
      {
        v34 = 0;
        i = 0;
        v32 = -32768;
        goto LABEL_69;
      }

      v31 = (*(v13 + 32) + 24);
      v32 = -1;
      do
      {
        v33 = *v31;
        v31 += 4;
        ++v32;
      }

      while (v33 != v30);
      v34 = 0;
      goto LABEL_68;
    }

LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  v22 = *a1;
  if (!*(a3 + 8))
  {
    v32 = *(v22 + 196);
    v34 = a2;
    goto LABEL_49;
  }

  if (*(v22 + 197))
  {
    v23 = "corrupt database";
LABEL_45:
    sub_181910730(a1, v23, a3, a4, a5, a6, a7, a8, v235);
LABEL_46:
    v16 = 0;
    a8 = v245;
    goto LABEL_5;
  }

  v38 = sub_18195D514(v22, a2);
  a3 = v18;
  v32 = v38;
  v34 = a3;
  if (v38 < 0)
  {
    sub_181910730(a1, "unknown database %T", a3, a4, a5, a6, a7, a8, v19);
    a8 = v245;
    goto LABEL_4;
  }

LABEL_49:
  if (!*(v13 + 197))
  {
    v39 = a3;
    v40 = sub_18196231C(a1, a4, a3, a4, a5, a6, a7, a8);
    if (!*(v39 + 8) && v40 && *(v40 + 96) == *(*(v13 + 32) + 56))
    {
      v32 = 1;
    }
  }

  v41 = *a1;
  *&v249 = a1;
  v42 = (*(v41 + 32) + 32 * v32);
  *(&v253 + 1) = *v42;
  v43 = v42[3];
  *&v254 = "index";
  *(&v254 + 1) = v34;
  LOBYTE(v253) = v32 == 1;
  *&v252 = &v249;
  *(&v252 + 1) = v43;
  *(&v249 + 1) = a1;
  *&v250 = sub_181962F5C;
  *(&v250 + 1) = sub_181962FE0;
  *&v251 = nullsub_8;
  DWORD2(v251) = 0;
  WORD6(v251) = 0;
  v261 = 0u;
  v262 = 0u;
  v259 = 0u;
  v260 = 0u;
  v256 = 0;
  v258 = 0u;
  memset(v255, 0, sizeof(v255));
  v257 = a4;
  sub_1818AEE70(&v249 + 1, v255);
  if (*(a4 + 35))
  {
    v49 = *(a4 + 72);
    v50 = (*a1)[4];
    if (v49)
    {
      v51 = (v50 + 24);
      v52 = 0xFFFFFFFF00000000;
      do
      {
        v53 = *v51;
        v51 += 4;
        v52 += 0x100000000;
      }

      while (v53 != v49);
      v54 = v52 >> 32;
    }

    else
    {
      v54 = -32768;
    }

    v48 = (v50 + 32 * v54);
  }

  else
  {
    v48 = (a4 + 72);
  }

  v56 = sub_1818CA520(a1, 0, *(a4 + 8), *v48, v44, v45, v46, v47);
  if (!v56)
  {
    goto LABEL_46;
  }

  v29 = v56;
  if (v32 == 1 && *(*(v13 + 32) + 56) != *(v56 + 96))
  {
    sub_181910730(a1, "cannot create a TEMP index on non-TEMP table %s", a3, a4, a5, a6, a7, a8, *v56);
    v16 = 0;
    a8 = v245;
    goto LABEL_159;
  }

  if ((*(v56 + 48) & 0x80) == 0)
  {
LABEL_68:
    i = 0;
    goto LABEL_69;
  }

  for (i = *(v56 + 16); i; i = *(i + 40))
  {
    if ((*(i + 99) & 3) == 2)
    {
      break;
    }
  }

LABEL_69:
  v57 = *v29;
  if (!*v29)
  {
    goto LABEL_107;
  }

  v58 = *v57;
  if (!*v57)
  {
    v67 = 0;
    v66 = "sqlite_";
    goto LABEL_103;
  }

  if ((v58 & 0xFFFFFFDF) != 0x53)
  {
    v65 = &byte_181A20298[v58];
    v66 = "sqlite_";
    goto LABEL_102;
  }

  v59 = v57[1];
  if (!v57[1])
  {
    v67 = 0;
    v66 = "qlite_";
    goto LABEL_103;
  }

  if ((v59 & 0xFFFFFFDF) != 0x51)
  {
    v65 = &byte_181A20298[v59];
    v66 = "qlite_";
    goto LABEL_102;
  }

  v60 = v57[2];
  if (!v57[2])
  {
    v67 = 0;
    v66 = "lite_";
    goto LABEL_103;
  }

  if ((v60 & 0xFFFFFFDF) != 0x4C)
  {
    v65 = &byte_181A20298[v60];
    v66 = "lite_";
    goto LABEL_102;
  }

  v61 = v57[3];
  if (!v57[3])
  {
    v67 = 0;
    v66 = "ite_";
    goto LABEL_103;
  }

  if ((v61 & 0xFFFFFFDF) != 0x49)
  {
    v65 = &byte_181A20298[v61];
    v66 = "ite_";
    goto LABEL_102;
  }

  v62 = v57[4];
  if (!v57[4])
  {
    v67 = 0;
    v66 = "te_";
    goto LABEL_103;
  }

  if ((v62 & 0xFFFFFFDF) != 0x54)
  {
    v65 = &byte_181A20298[v62];
    v66 = "te_";
    goto LABEL_102;
  }

  v63 = v57[5];
  if (!v57[5])
  {
    v67 = 0;
    v66 = "e_";
    goto LABEL_103;
  }

  if ((v63 & 0xFFFFFFDF) != 0x45)
  {
    v65 = &byte_181A20298[v63];
    v66 = "e_";
    goto LABEL_102;
  }

  v64 = v57[6];
  if (!v57[6])
  {
    v67 = 0;
    v66 = "_";
LABEL_103:
    if (v67 != byte_181A20298[*v66])
    {
      goto LABEL_107;
    }

    goto LABEL_104;
  }

  if (v64 != 95)
  {
    v65 = &byte_181A20298[v64];
    v66 = "_";
LABEL_102:
    v67 = *v65;
    goto LABEL_103;
  }

LABEL_104:
  if (a4 && !*(v13 + 197))
  {
    sub_181910730(a1, "table %s may not be indexed", a3, a4, a5, a6, a7, a8, *v29);
LABEL_112:
    a8 = v245;
    v16 = 0;
    goto LABEL_159;
  }

LABEL_107:
  v68 = *(v29 + 63);
  if (v68 == 1)
  {
    v69 = "virtual tables may not be indexed";
    goto LABEL_111;
  }

  if (v68 == 2)
  {
    v69 = "views may not be indexed";
LABEL_111:
    sub_181910730(a1, v69, a3, a4, a5, a6, a7, a8, v235);
    goto LABEL_112;
  }

  v70 = v32;
  v240 = (*(v13 + 32) + 32 * v32);
  if (!v34)
  {
    v84 = v29[2];
    if (v84)
    {
      v85 = 1;
      do
      {
        ++v85;
        v84 = *(v84 + 5);
      }

      while (v84);
    }

    v86 = sub_1818A8BAC(v13, "sqlite_autoindex_%s_%d", a3, a4, a5, a6, a7, a8, v57);
    v16 = v86;
    if (!v86)
    {
      goto LABEL_158;
    }

    if (!*(a1 + 302))
    {
LABEL_134:
      if (v70 == 1)
      {
        v87 = "sqlite_temp_master";
      }

      else
      {
        v87 = "sqlite_master";
      }

      v238 = *v240;
      if (sub_18195CEF8(a1, 18, v87, 0, *v240))
      {
        goto LABEL_158;
      }

      v88 = v70 == 1 ? 3 : 1;
      if (sub_18195CEF8(a1, v88, v16, *v29, v238))
      {
        goto LABEL_158;
      }

      goto LABEL_142;
    }

    ++v86[7];
    goto LABEL_133;
  }

  v16 = sub_181950DC4(v13, v34);
  if (!v16 || sub_18195CF88(a1, v16, "index", *v29, v71, v72, v73, v74))
  {
    goto LABEL_158;
  }

  if (*(a1 + 302) > 1u)
  {
    goto LABEL_142;
  }

  if (*(v13 + 197) || !sub_181917F20(v13, v16, *v240))
  {
    if (sub_1819495FC(v13, v16, *v240))
    {
      if (a10)
      {
        if (a1[19])
        {
          v82 = a1[19];
        }

        else
        {
          v82 = a1;
        }

        v83 = *(v82 + 116);
        if ((v83 & (1 << v70)) == 0)
        {
          *(v82 + 116) = v83 | (1 << v70);
          if (v70 == 1)
          {
            sub_1819108F4(v82);
          }
        }

        sub_18195D2F0(a1, v81, v75, v76, v77, v78, v79, v80);
        a8 = v245;
        goto LABEL_159;
      }

      sub_181910730(a1, "index %s already exists", v75, v76, v77, v78, v79, v80, v16);
      goto LABEL_239;
    }

LABEL_133:
    if (*(a1 + 302) <= 1u)
    {
      goto LABEL_134;
    }

LABEL_142:
    if (v11)
    {
      if (*v11 > *(*a1 + 36))
      {
        sub_181910730(a1, "too many columns in %s", v75, v76, v77, v78, v79, v80, "index");
      }

      a8 = v245;
      if (*(a1 + 13))
      {
        goto LABEL_159;
      }

      goto LABEL_156;
    }

    v255[0] = 0uLL;
    v89 = v29[1] + 16 * *(v29 + 27);
    *(v89 - 2) |= 8u;
    v90 = *(v89 - 16);
    *&v255[0] = v90;
    if (v90)
    {
      v91 = strlen(v90) & 0x3FFFFFFF;
    }

    else
    {
      v91 = 0;
    }

    DWORD2(v255[0]) = v91;
    v98 = sub_1818A8CF0(v13, 60, v255, 0);
    v99 = sub_18197FD9C(*a1, v98);
    v11 = v99;
    if (v99)
    {
      v100 = a9;
      if (a9 == -1)
      {
        v100 = 0;
      }

      LOBYTE(v99[3 * *v99]) = v100;
LABEL_156:
      v236 = v70;
      v101 = *v11;
      if (v101 < 1)
      {
        v113 = 1;
      }

      else
      {
        v102 = 0;
        v103 = v11 + 1;
        do
        {
          if (**v103 == 114)
          {
            v112 = *(*v103 + 8);
            if (v112)
            {
              v109 = v102;
              v110 = strlen(v112);
              v102 = v109;
              v15 = a11;
              v111 = (v110 & 0x3FFFFFFF) + 1;
            }

            else
            {
              v111 = 1;
            }

            v102 += v111;
          }

          v103 += 3;
          --v101;
        }

        while (v101);
        v113 = v102 + 1;
      }

      v114 = strlen(v16) & 0x3FFFFFFF;
      if (i)
      {
        v115 = *(i + 94);
      }

      else
      {
        v115 = 1;
      }

      v116 = sub_181962494(v13, v115 + *v11, v114 + v113, &__dst);
      if (*(v13 + 103))
      {
        a8 = v245;
        v117 = v116;
LABEL_181:
        if (v117)
        {
          goto LABEL_182;
        }

        goto LABEL_159;
      }

      v123 = v116;
      v124 = __dst;
      *v123 = __dst;
      v125 = (v114 + 1);
      __dst = &v124[v125];
      memcpy(v124, v16, v125);
      *(v123 + 3) = v29;
      v123[98] = v244;
      *(v123 + 99) = v15 & 3 | (8 * (v244 != 0)) | *(v123 + 99) & 0xFFF4;
      *(v123 + 6) = *(*(v13 + 32) + 32 * v236 + 24);
      *(v123 + 47) = *v11;
      v117 = v123;
      if (v245)
      {
        sub_18195DE94(a1, v29, 2, v245, 0, v126, v127, v128);
        *(v123 + 9) = v245;
      }

      v129 = *(v240[3] + 112);
      v241 = v11;
      if (*(a1 + 302) >= 2u)
      {
        v241 = 0;
        *(v117 + 80) = v11;
      }

      v239 = v117;
      if (!*(v117 + 94))
      {
        v158 = 0;
        goto LABEL_243;
      }

      v130 = v11 + 1;
      v131 = 0;
      v237 = v129;
      while (1)
      {
        v246 = v130;
        v134 = *v130;
        v135 = **v130;
        v136 = *v130;
        if (v135 == 118 || v135 == 114 && (v136 = *(v134 + 16), *v136 == 118))
        {
          *v136 = 60;
        }

        sub_18195DE94(a1, v29, 32, v134, 0, v126, v127, v128);
        if (*(a1 + 13))
        {
          a8 = 0;
          v11 = v241;
          goto LABEL_182;
        }

        v140 = v246;
        v141 = v246;
        do
        {
          v142 = *v141;
          v141 = (*v141 + 16);
        }

        while ((v142[5] & 0x20) != 0);
        if (*v142 == 168)
        {
          v143 = *(v142 + 12);
          if ((v143 & 0x80000000) != 0)
          {
            LODWORD(v143) = *(v29 + 26);
          }

          else
          {
            v144 = v29[1];
            if ((v144[16 * v143 + 8] & 0xF) == 0)
            {
              *(v117 + 99) &= ~8u;
              v144 = v29[1];
            }

            if ((*&v144[16 * v143 + 14] & 0x20) != 0)
            {
              *(v117 + 99) |= 0xC00u;
            }
          }

          *(*(v117 + 8) + 2 * v131) = v143;
          v145 = *v246;
          if (**v246 == 114)
          {
            goto LABEL_221;
          }

          if ((v143 & 0x80000000) == 0)
          {
            v149 = v29[1] + 16 * v143;
            v150 = *(v149 + 14);
            if ((v150 & 0x200) != 0)
            {
              v155 = *v149 - 1;
                ;
              }

              v147 = v131;
              if ((v150 & 4) != 0)
              {
                  ;
                }
              }

              v151 = (v155 + 1);
              goto LABEL_228;
            }
          }
        }

        else
        {
          if (v29 == a1[43])
          {
            sub_181910730(a1, "expressions prohibited in PRIMARY KEY and UNIQUE constraints", v137, v138, v139, v126, v127, v128, v235);
            a8 = 0;
            v11 = v241;
            goto LABEL_181;
          }

          if (!*(v117 + 80))
          {
            *(v117 + 80) = v241;
            v241 = 0;
          }

          *(*(v117 + 8) + 2 * v131) = -2;
          *(v117 + 99) = *(v117 + 99) & 0xF7F7 | 0x800;
          v145 = *v246;
          if (**v246 == 114)
          {
LABEL_221:
            v146 = *(v145 + 1);
            v147 = v131;
            if (v146)
            {
              v148 = (strlen(*(v145 + 1)) & 0x3FFFFFFF) + 1;
            }

            else
            {
              v148 = 1;
            }

            v151 = __dst;
            v152 = v146;
            v153 = v148;
            memcpy(__dst, v152, v148);
            __dst = &v151[v153];
            v129 = v237;
            v140 = v246;
            goto LABEL_228;
          }
        }

        v147 = v131;
        v151 = 0;
LABEL_228:
        if (!v151)
        {
          v151 = "BINARY";
        }

        if (!*(v13 + 197))
        {
          v154 = sub_1818C86A4(a1, v151);
          v140 = v246;
          if (!v154)
          {
            a8 = 0;
            v11 = v241;
            v117 = v239;
            goto LABEL_181;
          }
        }

        *(*(v239 + 64) + 8 * v147) = v151;
        v132 = v147;
        v117 = v239;
        v133 = *(v140 + 16);
        if (v129 <= 3)
        {
          v133 = 0;
        }

        *(*(v239 + 56) + v132) = v133;
        v131 = v132 + 1;
        v130 = v140 + 3;
        if (v131 >= *(v239 + 94))
        {
          v158 = v131;
LABEL_243:
          v11 = v241;
          if (i)
          {
            v242 = v158;
            v159 = *(i + 94);
            if (*(i + 94))
            {
              v160 = 0;
              do
              {
                v247 = v159;
                if (sub_18195EA98(v239, *(v239 + 94), i, v160))
                {
                  --*(v239 + 96);
                  v159 = v247;
                }

                else
                {
                  *(*(v239 + 8) + 2 * v242) = *(*(i + 8) + 2 * v160);
                  *(*(v239 + 64) + 8 * v242) = *(*(i + 64) + 8 * v160);
                  *(*(v239 + 56) + v242++) = *(*(i + 56) + v160);
                  v159 = *(i + 94);
                }

                ++v160;
              }

              while (v160 < v159);
            }
          }

          else
          {
            *(*(v117 + 8) + 2 * v158) = -1;
            *(*(v117 + 64) + 8 * v158) = "BINARY";
          }

          v117 = v239;
          sub_1819497B4(v239);
          if (!a1[43])
          {
            sub_18195DF70(v239);
          }

          sub_18195EC48(v239);
          if (a4)
          {
            v168 = *(v239 + 96);
            if (v168 >= *(v29 + 27))
            {
              v169 = *(v239 + 99);
              *(v239 + 99) = v169 | 0x20;
              v170 = *(v29 + 27);
              if (v170 >= 1)
              {
                for (j = 0; j != v170; ++j)
                {
                  if (j != *(v29 + 26))
                  {
                    if (!v168)
                    {
LABEL_263:
                      *(v239 + 99) = v169 & 0xFFDF;
                      break;
                    }

                    v172 = *(v239 + 8);
                    v173 = v168;
                    while (1)
                    {
                      v174 = *v172++;
                      if (j == v174)
                      {
                        break;
                      }

                      if (!--v173)
                      {
                        goto LABEL_263;
                      }
                    }
                  }
                }
              }
            }
          }

          if (v29 == a1[43])
          {
            v185 = v29[2];
            if (v185)
            {
              v186 = *(v239 + 94);
              do
              {
                if (*(v185 + 47) == v186)
                {
                  if (*(v239 + 94))
                  {
                    v187 = 0;
                    while (1)
                    {
                      if (*(*(v185 + 1) + 2 * v187) != *(*(v239 + 8) + 2 * v187))
                      {
                        goto LABEL_278;
                      }

                      v188 = *(*(v185 + 8) + 8 * v187);
                      for (k = *(*(v239 + 64) + 8 * v187); *v188 != *k; ++k)
                      {
                        if (byte_181A20298[*v188] != byte_181A20298[*k])
                        {
                          goto LABEL_278;
                        }

LABEL_286:
                        ++v188;
                      }

                      if (*v188)
                      {
                        goto LABEL_286;
                      }

                      if (++v187 == v186)
                      {
LABEL_290:
                        v190 = v185[98];
                        v191 = *(v239 + 98);
                        if (v190 != v191)
                        {
                          if (v190 != 11 && v191 != 11)
                          {
                            sub_181910730(a1, "conflicting ON CONFLICT clauses specified", v162, v163, v164, v165, v166, v167, 0);
                            v190 = v185[98];
                          }

                          if (v190 == 11)
                          {
                            v185[98] = *(v239 + 98);
                          }
                        }

                        if (v15 == 2)
                        {
                          *(v185 + 99) = *(v185 + 99) & 0xFFFC | 2;
                        }

                        if (*(a1 + 302) >= 2u)
                        {
                          a8 = 0;
                          *(v239 + 40) = a1[44];
                          a1[44] = v239;
                          goto LABEL_159;
                        }

LABEL_300:
                        a8 = 0;
                        v117 = v239;
LABEL_182:
                        v118 = a8;
                        v119 = *(v117 + 72);
                        if (v119)
                        {
                          sub_1819439E0(v13, v119);
                        }

                        v120 = *(v117 + 80);
                        if (v120)
                        {
                          sub_18194E5B8(v13, v120);
                        }

                        v121 = *(v117 + 32);
                        if (v121)
                        {
                          sub_181929C84(v13, v121);
                        }

                        if ((*(v117 + 99) & 0x10) != 0)
                        {
                          v122 = *(v117 + 64);
                          if (v122)
                          {
                            sub_181929C84(v13, v122);
                          }
                        }

                        sub_181929C84(v13, v117);
                        a8 = v118;
                        goto LABEL_159;
                      }
                    }
                  }

                  LODWORD(v187) = 0;
LABEL_278:
                  if (v187 == v186)
                  {
                    goto LABEL_290;
                  }
                }

                v185 = *(v185 + 5);
              }

              while (v185);
            }
          }

          if (*(a1 + 302) > 1u)
          {
            goto LABEL_323;
          }

          if (*(v13 + 197))
          {
            if (a4)
            {
              v175 = *(v13 + 192);
              *(v239 + 88) = v175;
              v176 = *(*(v239 + 24) + 16);
              if (v176)
              {
                while (v176 == v239 || *(v176 + 88) != v175)
                {
                  v176 = *(v176 + 40);
                  if (!v176)
                  {
                    goto LABEL_269;
                  }
                }

                sub_181910730(a1, "invalid rootpage", v162, v163, v164, v165, v166, v167, v235);
                v184 = sub_18190EDA8(135904);
                a8 = 0;
                *(a1 + 6) = v184;
                goto LABEL_181;
              }
            }

LABEL_269:
            if (sub_18188FAF0(*(v239 + 48) + 32, *v239, v239))
            {
              sub_18190BD38(v13, v177, v178, v179, v180, v181, v182, v183);
              goto LABEL_300;
            }

            *(v13 + 44) |= 1u;
            goto LABEL_322;
          }

          if (a4 || (v29[6] & 0x80) == 0)
          {
            v192 = (*(a1 + 15) + 1);
            *(a1 + 15) = v192;
            v193 = sub_1818E7DFC(a1, v161, v162, v163, v164, v165, v166, v167);
            if (!v193)
            {
              a8 = 0;
              v117 = v239;
              goto LABEL_181;
            }

            v194 = v193;
            sub_18195D3A8(a1, 1, v236);
            *(v239 + 88) = sub_1818A2964(v194, 187, 0, 0, 0, v195, v196, v197);
            sub_1818A2964(v194, 147, v236, v192, 2, v198, v199, v200);
            if (a7)
            {
              if (v244)
              {
                v207 = " UNIQUE";
              }

              else
              {
                v207 = &byte_181A2878D;
              }

              v208 = sub_1818A8BAC(v13, "CREATE%s INDEX %.*s", v201, v202, v203, v204, v205, v206, v207);
            }

            else
            {
              v208 = 0;
            }

            sub_1818F73B0(a1, "INSERT INTO %Q.sqlite_master VALUES('index',%Q,%Q,#%d,%Q);", v201, v202, v203, v204, v205, v206, *(*(v13 + 32) + 32 * v236));
            if (v208)
            {
              sub_181929C84(v13, v208);
            }

            if (a4)
            {
              sub_181962568(a1, v239, v192, v209, v210, v211, v212, v213);
              sub_18195E878(a1, v236, v214, v215, v216, v217, v218, v219);
              v226 = sub_1818A8BAC(v13, "name='%q' AND type='index'", v220, v221, v222, v223, v224, v225, *v239);
              sub_18195E8E8(v194, v236, v226, 0, v227, v228, v229, v230);
              sub_1818A2964(v194, 166, 0, 1, 0, v231, v232, v233);
            }

            if (*(*v194 + 103))
            {
              v234 = &byte_1EA831A58;
            }

            else
            {
              v234 = (*(v194 + 136) + 40 * *(v239 + 88));
            }

            *(v234 + 2) = *(v194 + 144);
LABEL_322:
            v117 = v239;
LABEL_323:
            if (a4 && !*(v13 + 197))
            {
              if (*(a1 + 302) >= 2u)
              {
                a8 = 0;
                a1[44] = v117;
                goto LABEL_159;
              }

              a8 = 0;
              goto LABEL_181;
            }
          }

          a8 = 0;
          *(v117 + 40) = v29[2];
          v29[2] = v117;
          goto LABEL_159;
        }
      }
    }

LABEL_158:
    a8 = v245;
    goto LABEL_159;
  }

  sub_181910730(a1, "there is already a table named %s", v92, v93, v94, v95, v96, v97, v16);
LABEL_239:
  a8 = v245;
LABEL_159:
  v106 = v29[2];
  v105 = v29 + 2;
  v104 = v106;
  if (v106)
  {
    if (v104[98] == 5)
    {
LABEL_166:
      while (1)
      {
        v108 = *(v104 + 5);
        if (!v108 || *(v108 + 98) == 5)
        {
          break;
        }

        *v105 = v108;
        v105 = (v108 + 40);
        *(v104 + 5) = *(v108 + 40);
        *(v108 + 40) = v104;
      }
    }

    else
    {
      while (1)
      {
        v107 = v104;
        v104 = *(v104 + 5);
        if (!v104)
        {
          break;
        }

        if (v104[98] == 5)
        {
          v105 = v107 + 40;
          goto LABEL_166;
        }
      }
    }
  }

LABEL_5:
  if (a8)
  {
    sub_1819439E0(v13, a8);
  }

  if (v11)
  {
    sub_18194E5B8(v13, v11);
  }

  result = sub_1818BB5B0(v13, a4);
  if (v16)
  {
    return sub_181929C84(v13, v16);
  }

  return result;
}

void *sub_1818C9A34(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = v4;
  if (!a1)
  {
    v6 = sub_181902484(v4 + 1, 354097263);
    if (v6)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v6 = sub_181929E8C(a1, v4 + 1, 354097263);
  if (!v6)
  {
    return 0;
  }

LABEL_4:

  return memcpy(v6, __s, v5 + 1);
}

uint64_t sub_1818C9ACC(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    return result;
  }

  v27 = a2;
  if (!a3)
  {
    v28 = a2;
    v5 = *(a2 + 56);
    if (!v5)
    {
      v3 = &v28;
      goto LABEL_4;
    }

    v6 = (((2 * *(a2 + 32)) ^ 2) + *(result + 48)) & 3;
    *(a2 + 33) = v6;
    v7 = *(result + 124);
    if (v7 >= 1)
    {
      v8 = *(v5 + 16);
      while (1)
      {
        v9 = *v8;
        v10 = !*v8 || v9 == a2;
        if (!v10 && *(v9 + 33) == v6)
        {
          break;
        }

        ++v8;
        if (!--v7)
        {
          goto LABEL_22;
        }
      }

      v11 = (v9 + 40);
      while (1)
      {
        v12 = v11;
        v11 = v11[1];
        if (!v11)
        {
          break;
        }

        if (v11[2] != v5)
        {
          *v11 = a2 + 40;
          v12[1] = a2 + 40;
          *(a2 + 40) = v12;
          *(a2 + 48) = v11;
          goto LABEL_27;
        }
      }
    }

LABEL_22:
    v13 = result + 16 * v6;
    v16 = *(v13 + 56);
    v14 = (v13 + 56);
    v15 = v16;
    v17 = (a2 + 40);
    if (v16)
    {
      *(v15 + 8) = v17;
      *v17 = v15;
    }

    else
    {
      v14[1] = v17;
    }

    *v14 = v17;
LABEL_27:
    ++*(result + 24);
    v18 = *(v5 + 33) - 1;
    *(v5 + 33) = v18;
    ++*(v5 + 34);
    if (v18)
    {
      goto LABEL_5;
    }

    v19 = *(v5 + 32);
    if (v19 == 2)
    {
      v22 = result;
      v23 = (result + 136);
    }

    else
    {
      if (v19 != 1)
      {
        if (!*(v5 + 32))
        {
          v20 = *v5;
          if (*v5 || *(result + 176) == v5)
          {
            v21 = *(v5 + 8);
            if (v21)
            {
              *v21 = v20;
              v20 = *v5;
            }

            if (v20)
            {
              *(v20 + 8) = v21;
            }

            if (*(result + 168) == v5)
            {
              *(result + 168) = v20;
            }

            if (*(result + 176) == v5)
            {
              *(result + 176) = *(v5 + 8);
            }

            *v5 = 0;
            *(v5 + 8) = 0;
          }
        }

        goto LABEL_44;
      }

      v22 = result;
      v23 = (result + 152);
    }

    sub_1819A900C(v23, v5);
    result = v22;
LABEL_44:
    v24 = (result + 136);
    if (*(v5 + 33) + *(v5 + 34) >= *(result + 124))
    {
      v26 = *(result + 144);
      if (v26)
      {
        *v26 = v5;
        *(v5 + 8) = v26;
      }

      else
      {
        *v24 = v5;
      }

      v24 = (result + 144);
    }

    else
    {
      v25 = *v24;
      if (*v24)
      {
        *(v25 + 8) = v5;
        *v5 = v25;
      }

      else
      {
        *(result + 144) = v5;
      }
    }

    *v24 = v5;
    *(v5 + 32) = 2;
    goto LABEL_5;
  }

  v3 = &v27;
LABEL_4:
  v4 = result;
  sub_1819A8D0C(result, v3);
  result = v4;
LABEL_5:

  return sub_1819A811C(result);
}

void *sub_1818C9D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v10 = a8;
  v14 = *a1;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v15 = *(a3 + 8);
  if (a9)
  {
    if (v15)
    {
      v16 = "temporary trigger may not have qualified name";
LABEL_7:
      sub_181910730(a1, v16, a3, a4, a5, a6, a7, a8, v110);
      goto LABEL_51;
    }

    if (!a7)
    {
      goto LABEL_51;
    }

    v17 = 1;
  }

  else
  {
    if (v15)
    {
      if (*(v14 + 197))
      {
        v16 = "corrupt database";
        goto LABEL_7;
      }

      v19 = a2;
      v20 = a5;
      v21 = a4;
      v22 = a3;
      v23 = sub_18195D514(v14, a2);
      a3 = v22;
      LODWORD(a4) = v21;
      a5 = v20;
      v17 = v23;
      v18 = v22;
      if (v17 < 0)
      {
        sub_181910730(a1, "unknown database %T", v22, v21, v20, a6, a7, a8, v19);
        goto LABEL_51;
      }
    }

    else
    {
      v17 = *(v14 + 196);
      v18 = a2;
    }

    a2 = v18;
    if (!a7)
    {
      goto LABEL_51;
    }
  }

  if (*(v14 + 103))
  {
    goto LABEL_51;
  }

  v114 = a2;
  if (v17 != 1 && *(v14 + 197))
  {
    v24 = *(a7 + 72);
    if (v24)
    {
      v25 = a5;
      v26 = v17;
      v27 = a4;
      v28 = a3;
      sub_181929C84(v14, v24);
      a3 = v28;
      LODWORD(a4) = v27;
      v17 = v26;
      a5 = v25;
    }

    *(a7 + 72) = 0;
  }

  v112 = v17;
  if (*(a7 + 35))
  {
    v33 = *(a7 + 72);
    v34 = *(*a1 + 32);
    if (v33)
    {
      v35 = (v34 + 24);
      v36 = 0xFFFFFFFF00000000;
      do
      {
        v37 = *v35;
        v35 += 4;
        v36 += 0x100000000;
      }

      while (v37 != v33);
      v38 = v36 >> 32;
    }

    else
    {
      v38 = -32768;
    }

    v29 = a3;
    v30 = a4;
    v31 = a5;
    v32 = (v34 + 32 * v38);
  }

  else
  {
    v29 = a3;
    v30 = a4;
    v31 = a5;
    v32 = (a7 + 72);
  }

  v45 = sub_1818CA520(a1, 0, *(a7 + 8), *v32, a5, a6, a7, a8);
  v46 = *(a7 + 24);
  if (v46)
  {
    v47 = *a1;
    if (*(*a1 + 824) || (v48 = *(v46 + 44) - 1, (*(v46 + 44) = v48) == 0))
    {
      sub_18194E094(v47, v46);
    }
  }

  *(a7 + 24) = v45;
  *(a7 + 33) |= 0x400u;
  v49 = v30;
  v50 = v114;
  if (!v45)
  {
    v51 = v29;
    v52 = v112;
    goto LABEL_45;
  }

  ++*(v45 + 44);
  v51 = v29;
  if ((*(a7 + 33) & 2) != 0)
  {
    v53 = *(v45 + 16);
    v52 = v112;
    if (!v53)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v54 = *v53;
      for (i = *(a7 + 48); *v54 == *i; ++i)
      {
        if (!*v54)
        {
          *(a7 + 56) = v53;
          goto LABEL_45;
        }

LABEL_39:
        ++v54;
      }

      if (byte_181A20298[*v54] == byte_181A20298[*i])
      {
        goto LABEL_39;
      }

      v53 = *(v53 + 40);
      if (!v53)
      {
LABEL_44:
        v56 = v51;
        sub_181910730(a1, "no such index: %s", v39, v40, v41, v42, v43, v44, *(a7 + 48));
        v51 = v56;
        v50 = v114;
        v49 = v30;
        v52 = v112;
        v45 = 0;
        *(a1 + 43) |= 8u;
        goto LABEL_45;
      }
    }
  }

  v52 = v112;
LABEL_45:
  if (!*(v14 + 197) && !*(v51 + 8) && v45 && *(v45 + 96) == *(*(v14 + 32) + 56))
  {
    v52 = 1;
  }

  if (*(v14 + 103))
  {
    goto LABEL_51;
  }

  v62 = (*(*a1 + 32) + 32 * v52);
  v63 = *v62;
  *(&v119 + 1) = v62[3];
  *(&v120 + 1) = v63;
  *&v121 = "trigger";
  *(&v121 + 1) = v50;
  LOBYTE(v120) = v52 == 1;
  *&v116 = a1;
  *(&v116 + 1) = a1;
  *&v117 = sub_181962F5C;
  *(&v117 + 1) = sub_181962FE0;
  *&v118 = nullsub_8;
  DWORD2(v118) = 0;
  WORD6(v118) = 0;
  *&v119 = &v116;
  if (a7)
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v123 = 0;
    v125 = 0u;
    memset(v122, 0, sizeof(v122));
    v124 = a7;
    v64 = v49;
    v65 = sub_1818AEE70(&v116 + 1, v122);
    v49 = v64;
    if (v65)
    {
      goto LABEL_51;
    }
  }

  v66 = v49;
  v67 = v31;
  v68 = sub_18196231C(a1, a7, v39, v40, v41, v42, v43, v44);
  if (!v68)
  {
    goto LABEL_72;
  }

  if (*(v68 + 63) == 1)
  {
    v75 = "cannot create triggers on virtual tables";
LABEL_71:
    sub_181910730(a1, v75, v69, v70, v71, v72, v73, v74, v110);
LABEL_72:
    v76 = 0;
    goto LABEL_73;
  }

  v113 = v68;
  if ((*(v68 + 49) & 0x10) != 0 && sub_18195D6B0(v14))
  {
    v75 = "cannot create triggers on shadow tables";
    goto LABEL_71;
  }

  v77 = sub_181950DC4(v14, v114);
  if (!v77)
  {
    goto LABEL_51;
  }

  v111 = v77;
  if (sub_18195CF88(a1, v77, "trigger", *v113, v78, v79, v80, v81))
  {
    goto LABEL_79;
  }

  if (*(a1 + 302) <= 1u && sub_1819493D0((*(*(v14 + 32) + 32 * v52 + 24) + 56), v111))
  {
    if (a10)
    {
      if (*(a1 + 152))
      {
        v88 = *(a1 + 152);
      }

      else
      {
        v88 = a1;
      }

      v89 = *(v88 + 116);
      if ((v89 & (1 << v52)) == 0)
      {
        *(v88 + 116) = v89 | (1 << v52);
        if (v52 == 1)
        {
          sub_1819108F4(v88);
        }
      }

      goto LABEL_79;
    }

    v110 = v114;
    v94 = "trigger %T already exists";
LABEL_101:
    sub_181910730(a1, v94, v82, v83, v84, v85, v86, v87, v110);
LABEL_79:
    v76 = v111;
LABEL_76:
    sub_181929C84(v14, v76);
    goto LABEL_51;
  }

  if (!sqlite3_strnicmp(*v113, "sqlite_", 7))
  {
    v94 = "cannot create trigger on system table";
    goto LABEL_101;
  }

  v90 = v52;
  v91 = (a7 + 8);
  v92 = *(v113 + 63);
  if (v66 != 66 && v92 == 2)
  {
    v93 = "AFTER";
    if (v66 == 33)
    {
      v93 = "BEFORE";
    }

    sub_181910730(a1, "cannot create %s trigger on view: %S", v82, v83, v84, v85, v86, v87, v93);
    goto LABEL_99;
  }

  if (v66 != 66 || v92 == 2)
  {
    if (*(a1 + 302) > 1u)
    {
      goto LABEL_103;
    }

    v100 = *(v113 + 96);
    v101 = *(v14 + 32);
    if (v100)
    {
      v102 = (v101 + 24);
      v103 = -1;
      do
      {
        v104 = *v102;
        v102 += 4;
        ++v103;
      }

      while (v104 != v100);
    }

    else
    {
      v103 = -32768;
    }

    v105 = *(v101 + 32 * v103);
    v115 = v105;
    if (a9)
    {
      v105 = *(v101 + 32);
    }

    if (v103 != 1 && a9 == 0)
    {
      v107 = 7;
    }

    else
    {
      v107 = 5;
    }

    if (sub_18195CEF8(a1, v107, v111, *v113, v105))
    {
      goto LABEL_133;
    }

    v108 = v103 == 1 ? "sqlite_temp_master" : "sqlite_master";
    if (sub_18195CEF8(a1, 18, v108, 0, v115))
    {
      goto LABEL_133;
    }

    if (v14)
    {
LABEL_103:
      v61 = sub_181929E8C(v14, 0x48uLL, 0x1030040EE43544ELL);
      if (v61)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v61 = sub_181902484(72, 0x1030040EE43544ELL);
      if (v61)
      {
LABEL_104:
        *(v61 + 64) = 0;
        *(v61 + 32) = 0u;
        *(v61 + 48) = 0u;
        *v61 = 0u;
        *(v61 + 16) = 0u;
        *v61 = v111;
        v95 = sub_1818C9A34(v14, *v91);
        v96 = v66 == 33 || v66 == 66;
        *(v61 + 8) = v95;
        v97 = *(v113 + 96);
        *(v61 + 40) = *(*(v14 + 32) + 32 * v90 + 24);
        *(v61 + 48) = v97;
        *(v61 + 16) = v67;
        if (v96)
        {
          v98 = 1;
        }

        else
        {
          v98 = 2;
        }

        *(v61 + 17) = v98;
        if (*(a1 + 302) < 2u)
        {
          if (v10)
          {
            v109 = sub_1818C7FEC(v14, v10, 1, 0);
          }

          else
          {
            v109 = 0;
          }
        }

        else
        {
          v99 = *(a1 + 408);
          if (v99)
          {
            while (*v99 != *v91)
            {
              v99 = v99[3];
              if (!v99)
              {
                goto LABEL_141;
              }
            }

            *v99 = v95;
          }

LABEL_141:
          v109 = v10;
          v10 = 0;
        }

        *(v61 + 24) = v109;
        *(v61 + 32) = a6;
        *(a1 + 360) = v61;
        result = sub_1818BB5B0(v14, a7);
        if (v10)
        {
          goto LABEL_59;
        }

        goto LABEL_60;
      }
    }

LABEL_133:
    v76 = v111;
    goto LABEL_76;
  }

  sub_181910730(a1, "cannot create INSTEAD OF trigger on table: %S", v82, v83, v84, v85, v86, v87, a7 + 8);
LABEL_99:
  v76 = v111;
LABEL_73:
  if (*(v14 + 196) == 1)
  {
    *(v14 + 198) |= 1u;
  }

  if (v76)
  {
    goto LABEL_76;
  }

LABEL_51:
  result = sub_1818BB5B0(v14, a7);
  if (a6)
  {
    v58 = *a6;
    if (*a6 >= 1)
    {
      v59 = 0;
      do
      {
        v60 = a6[v59 + 1];
        if (v60)
        {
          sub_181929C84(v14, v60);
          v58 = *a6;
        }

        ++v59;
      }

      while (v59 < v58);
    }

    result = sub_181939EC8(v14, a6);
  }

  v61 = 0;
  if (v10)
  {
LABEL_59:
    result = sub_1819439E0(v14, v10);
  }

LABEL_60:
  if (!*(a1 + 360))
  {
    return sub_1818A313C(v14, v61);
  }

  return result;
}

uint64_t sub_1818CA520(uint64_t *a1, char a2, char *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  v13 = *(*a1 + 44);
  if ((v13 & 0x10) != 0 || *(v12 + 197))
  {
    goto LABEL_3;
  }

  v22 = *(*(v12 + 32) + 24);
  *(v12 + 100) = *(v22 + 113);
  if ((*(v22 + 114) & 1) == 0)
  {
    v23 = sub_18189F330(v12, 0, a1 + 1, 0, a5, a6, a7, a8);
    if (v23)
    {
LABEL_22:
      v26 = v23;
      result = 0;
      *(a1 + 6) = v26;
      ++*(a1 + 13);
      return result;
    }
  }

  v24 = *(v12 + 40);
  if (v24 >= 2)
  {
    v25 = 32 * v24 - 8;
    do
    {
      if ((*(*(*(v12 + 32) + v25) + 114) & 1) == 0)
      {
        v23 = sub_18189F330(v12, (v24 - 1), a1 + 1, 0, a5, a6, a7, a8);
        if (v23)
        {
          goto LABEL_22;
        }
      }

      --v24;
      v25 -= 32;
    }

    while ((v24 + 1) > 2);
  }

  if ((v13 & 1) == 0)
  {
    *(v12 + 44) &= ~1u;
  }

  if (*(v12 + 111))
  {
    *(v12 + 44) |= 0x10u;
  }

LABEL_3:
  result = sub_181917F20(v12, a3, a4);
  if (result)
  {
    if (*(result + 63) != 1 || (*(a1 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(a1 + 36) & 4) != 0 || *(v12 + 197))
  {
LABEL_9:
    if ((a2 & 2) != 0)
    {
      return 0;
    }

    *(a1 + 43) |= 8u;
LABEL_11:
    v21 = "no such view";
    if ((a2 & 1) == 0)
    {
      v21 = "no such table";
    }

    if (a4)
    {
      sub_181910730(a1, "%s: %s.%s", v15, v16, v17, v18, v19, v20, v21);
    }

    else
    {
      sub_181910730(a1, "%s: %s", v15, v16, v17, v18, v19, v20, v21);
    }

    return 0;
  }

  v27 = *a3;
  if (*a3)
  {
    v28 = 0;
    v29 = a3 + 1;
    do
    {
      v28 = -1640531535 * (v28 + (v27 & 0xDF));
      v30 = *v29++;
      v27 = v30;
    }

    while (v30);
  }

  else
  {
    v28 = 0;
  }

  v31 = (v12 + 568);
  v32 = *(v12 + 584);
  if (!v32)
  {
    v33 = *(v12 + 572);
    if (v33)
    {
      goto LABEL_37;
    }

LABEL_47:
    v34 = &qword_1EA831A30;
LABEL_48:
    v37 = v34[2];
    if (v37)
    {
      goto LABEL_49;
    }

    goto LABEL_60;
  }

  v31 = (v32 + 16 * (v28 % *v31));
  v33 = *v31;
  if (!*v31)
  {
    goto LABEL_47;
  }

LABEL_37:
  v34 = (v31 + 2);
  do
  {
    v34 = *v34;
    if (v28 == *(v34 + 8))
    {
      v35 = v34[3];
      for (i = a3; ; ++i)
      {
        if (*v35 == *i)
        {
          if (!*v35)
          {
            goto LABEL_48;
          }
        }

        else if (byte_181A20298[*v35] != byte_181A20298[*i])
        {
          break;
        }

        ++v35;
      }
    }

    --v33;
  }

  while (v33);
  v37 = qword_1EA831A40;
  if (qword_1EA831A40)
  {
    goto LABEL_49;
  }

LABEL_60:
  v46 = *a3;
  if (!*a3)
  {
    v47 = "pragma_";
    goto LABEL_149;
  }

  if ((v46 & 0xFFFFFFDF) != 0x50)
  {
    v46 += byte_181A20298;
    v47 = "pragma_";
    goto LABEL_148;
  }

  v46 = a3[1];
  if (!a3[1])
  {
    v47 = "ragma_";
    goto LABEL_149;
  }

  if ((v46 & 0xFFFFFFDF) != 0x52)
  {
    v46 += byte_181A20298;
    v47 = "ragma_";
    goto LABEL_148;
  }

  v46 = a3[2];
  if (!a3[2])
  {
    v47 = "agma_";
    goto LABEL_149;
  }

  if ((v46 & 0xFFFFFFDF) != 0x41)
  {
    v46 += byte_181A20298;
    v47 = "agma_";
    goto LABEL_148;
  }

  v46 = a3[3];
  if (!a3[3])
  {
    v47 = "gma_";
    goto LABEL_149;
  }

  if ((v46 & 0xFFFFFFDF) != 0x47)
  {
    v46 += byte_181A20298;
    v47 = "gma_";
    goto LABEL_148;
  }

  v46 = a3[4];
  if (!a3[4])
  {
    v47 = "ma_";
    goto LABEL_149;
  }

  if ((v46 & 0xFFFFFFDF) != 0x4D)
  {
    v46 += byte_181A20298;
    v47 = "ma_";
    goto LABEL_148;
  }

  v46 = a3[5];
  if (!a3[5])
  {
    v47 = "a_";
    goto LABEL_149;
  }

  if ((v46 & 0xFFFFFFDF) != 0x41)
  {
    v46 += byte_181A20298;
    v47 = "a_";
    goto LABEL_148;
  }

  v46 = a3[6];
  if (!a3[6])
  {
    v47 = "_";
LABEL_149:
    if (v46 != byte_181A20298[*v47])
    {
      goto LABEL_9;
    }

    goto LABEL_150;
  }

  if (v46 != 95)
  {
    v46 += byte_181A20298;
    v47 = "_";
LABEL_148:
    LODWORD(v46) = *v46;
    goto LABEL_149;
  }

LABEL_150:
  v37 = sub_18194D168(v12, a3);
  if (!v37)
  {
    goto LABEL_9;
  }

LABEL_49:
  v38 = *v37;
  v92 = 0;
  result = *(v37 + 40);
  if (result)
  {
    return result;
  }

  v39 = *a1;
  v40 = *(v38 + 8);
  if (v40 && v40 != *(v38 + 16))
  {
    goto LABEL_9;
  }

  v41 = v39 ? sub_181929E8C(*a1, 0x78uLL, 0x10B2040A26A9E65) : sub_181902484(120, 0x10B2040A26A9E65);
  v42 = v41;
  if (!v41)
  {
    goto LABEL_9;
  }

  v91 = v39;
  *(v41 + 112) = 0;
  *(v41 + 80) = 0u;
  *(v41 + 96) = 0u;
  *(v41 + 48) = 0u;
  *(v41 + 64) = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0u;
  *v41 = 0u;
  v43 = *(v37 + 8);
  if (!v43 || ((v44 = strlen(*(v37 + 8)), !v39) ? (v45 = sub_181902484(v44 + 1, 354097263)) : (v45 = sub_181929E8C(v39, v44 + 1, 354097263)), (v48 = v45) == 0))
  {
    *v42 = 0;
    sub_181929C84(v91, v42);
    goto LABEL_9;
  }

  memcpy(v45, v43, v44 + 1);
  *v42 = v48;
  *(v37 + 40) = v42;
  *(v42 + 63) = 1;
  *(v42 + 96) = *(v91[4] + 24);
  *(v42 + 52) = -1;
  v49 = *(v42 + 48) | 0x8000;
  *(v42 + 44) = 1;
  *(v42 + 48) = v49;
  v50 = strlen(v48);
  v51 = sub_181929E8C(v91, v50 + 1, 354097263);
  v58 = v51;
  if (v51)
  {
    memcpy(v51, v48, v50 + 1);
  }

  v59 = *a1;
  v60 = *(v42 + 64);
  v61 = 8 * v60 + 16;
  if (v60 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", v52, v53, v54, v55, v56, v57, *v42);
  }

  v62 = *(v42 + 72);
  if (v62)
  {
    if (*(v59 + 512) > v62)
    {
      if (*(v59 + 496) <= v62)
      {
        if (v61 < 0x81)
        {
          goto LABEL_98;
        }
      }

      else if (*(v59 + 504) <= v62 && v61 <= *(v59 + 438))
      {
        goto LABEL_98;
      }
    }

    v63 = sub_181929F38(v59, v62, v61, 528201247);
  }

  else
  {
    v63 = sub_181929E8C(v59, v61, 528201247);
  }

  v62 = v63;
  if (!v63)
  {
    if (v58)
    {
      sub_181929C84(v59, v58);
    }

    goto LABEL_101;
  }

LABEL_98:
  v64 = *(v42 + 64);
  *(v42 + 64) = v64 + 1;
  v62[v64] = v58;
  v62[v64 + 1] = 0;
  *(v42 + 72) = v62;
LABEL_101:
  v65 = *a1;
  v66 = *(v42 + 64);
  v67 = 8 * v66 + 16;
  if (v66 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", v52, v53, v54, v55, v56, v57, *v42);
  }

  v68 = *(v42 + 72);
  if (!v68)
  {
    v69 = sub_181929E8C(v65, v67, 528201247);
    goto LABEL_112;
  }

  if (*(v65 + 512) <= v68)
  {
    goto LABEL_111;
  }

  if (*(v65 + 496) > v68)
  {
    if (*(v65 + 504) <= v68 && v67 <= *(v65 + 438))
    {
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  if (v67 >= 0x81)
  {
LABEL_111:
    v69 = sub_181929F38(v65, v68, v67, 528201247);
LABEL_112:
    v68 = v69;
    if (!v69)
    {
      goto LABEL_114;
    }
  }

LABEL_113:
  v70 = *(v42 + 64);
  *(v42 + 64) = v70 + 1;
  v71 = &v68[v70];
  *v71 = 0;
  v71[1] = 0;
  *(v42 + 72) = v68;
LABEL_114:
  v72 = *v42;
  if (*v42)
  {
    v73 = strlen(*v42);
    v74 = sub_181929E8C(v91, v73 + 1, 354097263);
    v75 = v74;
    if (v74)
    {
      memcpy(v74, v72, v73 + 1);
    }
  }

  else
  {
    v75 = 0;
  }

  v76 = *a1;
  v77 = *(v42 + 64);
  v78 = 8 * v77 + 16;
  if (v77 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", v52, v53, v54, v55, v56, v57, *v42);
  }

  v79 = *(v42 + 72);
  if (v79)
  {
    if (*(v76 + 512) > v79)
    {
      if (*(v76 + 496) <= v79)
      {
        if (v78 < 0x81)
        {
LABEL_130:
          v81 = *(v42 + 64);
          *(v42 + 64) = v81 + 1;
          v79[v81] = v75;
          v79[v81 + 1] = 0;
          *(v42 + 72) = v79;
          goto LABEL_133;
        }
      }

      else if (*(v76 + 504) <= v79 && v78 <= *(v76 + 438))
      {
        goto LABEL_130;
      }
    }

    v80 = sub_181929F38(v76, v79, v78, 528201247);
  }

  else
  {
    v80 = sub_181929E8C(v76, v78, 528201247);
  }

  v79 = v80;
  if (v80)
  {
    goto LABEL_130;
  }

  if (v75)
  {
    sub_181929C84(v76, v75);
  }

LABEL_133:
  if (!sub_18194B478(v91, v42, v37, *(v38 + 16), &v92, v55, v56, v57))
  {
    return *(v37 + 40);
  }

  v88 = v92;
  sub_181910730(a1, "%s", v82, v83, v84, v85, v86, v87, v92);
  if (v88)
  {
    sub_181929C84(v91, v88);
  }

  v89 = *(v37 + 40);
  if (!v89)
  {
    return 0;
  }

  *(v89 + 48) |= 0x4000u;
  if (v91[103] || (v90 = *(v89 + 44) - 1, (*(v89 + 44) = v90) == 0))
  {
    sub_18194E094(v91, v89);
  }

  result = 0;
  *(v37 + 40) = 0;
  return result;
}

void *sub_1818CAE18(uint64_t a1, char a2, uint64_t a3, unsigned __int8 *a4, int a5)
{
  if (*(a1 + 52))
  {
    return 0;
  }

  v12 = *a1;
  v13 = *(a3 + 8);
  if (*a1)
  {
    v5 = sub_181929E8C(*a1, v13 + 97, 0x1030040FE2BAAC3);
    if (!v5)
    {
      return v5;
    }
  }

  else
  {
    v5 = sub_181902484(v13 + 97, 0x1030040FE2BAAC3);
    if (!v5)
    {
      return v5;
    }
  }

  bzero(v5, v13 + 97);
  v14 = v5 + 12;
  memcpy(v5 + 12, *a3, *(a3 + 8));
  v15 = *(v5 + 96);
  if (byte_181A204C8[*(v5 + 96)] < 0)
  {
    v16 = 0;
    if (v15 == 91)
    {
      v15 = 93;
    }

    for (i = 1; ; ++i)
    {
      v18 = i;
      v19 = *(v14 + i);
      if (v19 == v15)
      {
        ++i;
        LOBYTE(v19) = v15;
        if (*(v14 + v18 + 1) != v15)
        {
          break;
        }
      }

      *(v14 + v16++) = v19;
    }

    *(v14 + v16) = 0;
  }

  v5[3] = v14;
  *v5 = a2;
  v5[9] = sub_181989258(v12, a4, a5);
  v20 = *(a1 + 302);
  if (v20 >= 2 && v20 != 3)
  {
    v21 = v5[3];
    if (*a1)
    {
      v22 = sub_181929E8C(*a1, 0x20uLL, 0x10F00409A20EBA4);
      if (!v22)
      {
        return v5;
      }
    }

    else
    {
      v22 = sub_181902484(32, 0x10F00409A20EBA4);
      if (!v22)
      {
        return v5;
      }
    }

    *v22 = 0u;
    *(v22 + 16) = 0u;
    *v22 = v21;
    *(v22 + 8) = *a3;
    *(v22 + 24) = *(a1 + 408);
    *(a1 + 408) = v22;
  }

  return v5;
}

uint64_t sub_1818CAFD4(uint64_t a1, void *a2, _DWORD *a3, int a4)
{
  v8 = *a1;
  v9 = sub_1818A8CF0(*a1, 172, a3, 1);
  v16 = v9;
  if (v9)
  {
    *(v9 + 56) = *a3 - *(a1 + 336);
    if (a2 && *a2 > *(*a1 + 160) && !*(a1 + 30))
    {
      sub_181910730(a1, "too many arguments on function %T", v10, v11, v12, v13, v14, v15, a3);
    }

    *(v16 + 32) = a2;
    *(v16 + 4) |= 8u;
    sub_181952030(a1, v16, v10, v11, v12, v13, v14, v15);
    if (a4 == 1)
    {
      *(v16 + 4) |= 4u;
    }
  }

  else if (a2)
  {
    sub_18194E5B8(v8, a2);
  }

  return v16;
}

void *sub_1818CB0C0(void *result, _DWORD *a2)
{
  for (; result; result = result[10])
  {
    v2 = result[6];
    if (v2)
    {
      v3 = *(v2 + 40);
      if (v3 > *a2)
      {
        *a2 = v3;
      }
    }

    v4 = result[8];
    if (v4)
    {
      v5 = *(v4 + 40);
      if (v5 > *a2)
      {
        *a2 = v5;
      }
    }

    v6 = result[12];
    if (v6)
    {
      v7 = *(v6 + 40);
      if (v7 > *a2)
      {
        *a2 = v7;
      }
    }

    v8 = result[4];
    if (v8)
    {
      v9 = *v8;
      if (*v8 >= 1)
      {
        v10 = 0;
        v11 = 2;
        do
        {
          v12 = *&v8[v11];
          if (v12)
          {
            v13 = *(v12 + 40);
            if (v13 > *a2)
            {
              *a2 = v13;
              v9 = *v8;
            }
          }

          ++v10;
          v11 += 6;
        }

        while (v10 < v9);
      }
    }

    v14 = result[7];
    if (v14)
    {
      v15 = *v14;
      if (*v14 >= 1)
      {
        v16 = 0;
        v17 = 2;
        do
        {
          v18 = *&v14[v17];
          if (v18)
          {
            v19 = *(v18 + 40);
            if (v19 > *a2)
            {
              *a2 = v19;
              v15 = *v14;
            }
          }

          ++v16;
          v17 += 6;
        }

        while (v16 < v15);
      }
    }

    v20 = result[9];
    if (v20)
    {
      v21 = *v20;
      if (*v20 >= 1)
      {
        v22 = 0;
        v23 = 2;
        do
        {
          v24 = *&v20[v23];
          if (v24)
          {
            v25 = *(v24 + 40);
            if (v25 > *a2)
            {
              *a2 = v25;
              v21 = *v20;
            }
          }

          ++v22;
          v23 += 6;
        }

        while (v22 < v21);
      }
    }
  }

  return result;
}

uint64_t sub_1818CB220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  if (a2)
  {
    v4 = a2;
    v6 = 0;
    v7 = &v22;
    do
    {
      v8 = sub_181929E8C(a1, 0x80uLL, 0x102004058EEC421);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      *(v8 + 32) = sub_1818C83A0(a1, *(v4 + 32), a3);
      *(v9 + 40) = sub_1818CB478(a1, *(v4 + 40), a3);
      v10 = *(v4 + 48);
      if (v10)
      {
        v11 = sub_1818C7FEC(a1, v10, a3, 0);
      }

      else
      {
        v11 = 0;
      }

      *(v9 + 48) = v11;
      *(v9 + 56) = sub_1818C83A0(a1, *(v4 + 56), a3);
      v12 = *(v4 + 64);
      if (v12)
      {
        v13 = sub_1818C7FEC(a1, v12, a3, 0);
      }

      else
      {
        v13 = 0;
      }

      *(v9 + 64) = v13;
      *(v9 + 72) = sub_1818C83A0(a1, *(v4 + 72), a3);
      *v9 = *v4;
      *(v9 + 88) = v6;
      *(v9 + 80) = 0;
      v14 = *(v4 + 96);
      if (v14)
      {
        v15 = sub_1818C7FEC(a1, v14, a3, 0);
      }

      else
      {
        v15 = 0;
      }

      *(v9 + 96) = v15;
      *(v9 + 8) = 0;
      *(v9 + 4) = *(v4 + 4) & 0xFFFFFFDF;
      *(v9 + 20) = -1;
      *(v9 + 2) = *(v4 + 2);
      *(v9 + 104) = sub_18195C5D4(a1, *(v4 + 104));
      *(v9 + 112) = 0;
      v16 = *(v4 + 120);
      v23[0] = 0;
      if (v16)
      {
        v17 = v23;
        do
        {
          v18 = sub_18195C750(a1, 0, v16);
          *v17 = v18;
          if (!v18)
          {
            break;
          }

          v17 = (v18 + 64);
          v16 = *(v16 + 64);
        }

        while (v16);
        v19 = v23[0];
      }

      else
      {
        v19 = 0;
      }

      *(v9 + 120) = v19;
      v20 = *(a1 + 103);
      if (*(v4 + 112))
      {
        if (*(a1 + 103))
        {
          *(v9 + 16) = *(v4 + 16);
LABEL_26:
          *(v9 + 88) = 0;
          sub_1818BB408(a1, v9, 1);
          return v22;
        }

        v23[0] = 0;
        v23[1] = sub_18195CA24;
        v23[3] = 0;
        v23[4] = 0;
        v23[2] = sub_18195CA60;
        v23[5] = v9;
        sub_1818AEE70(v23, v9);
        v20 = *(a1 + 103);
      }

      *(v9 + 16) = *(v4 + 16);
      if (v20)
      {
        goto LABEL_26;
      }

      *v7 = v9;
      v4 = *(v4 + 80);
      v6 = v9;
      v7 = (v9 + 80);
    }

    while (v4);
  }

  return v22;
}

_DWORD *sub_1818CB478(void *a1, int *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_181929E8C(a1, 72 * *a2 + 8, 0x103204056E3F560);
  if (result)
  {
    v7 = *a2;
    *result = *a2;
    result[1] = v7;
    if (*a2 >= 1)
    {
      v8 = 0;
      v43 = result;
      v45 = a2 + 2;
      v46 = result + 2;
      v47 = a2;
      v44 = a3;
      while (1)
      {
        v10 = &v46[18 * v8];
        v11 = &v45[18 * v8];
        v10[6] = v11[6];
        if ((*(v11 + 25) & 4) != 0)
        {
          if (a1)
          {
            v15 = sub_181929E8C(a1, 0x18uLL, 0x10200405AF6BDC9);
            if (!v15)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v15 = sub_181902484(24, 0x10200405AF6BDC9);
            if (!v15)
            {
LABEL_20:
              v15 = 0;
              *(v10 + 25) &= ~4u;
              goto LABEL_24;
            }
          }

          v16 = *(v11 + 8);
          v17 = *(v16 + 16);
          *v15 = *v16;
          v15[2] = v17;
          v18 = sub_1818CB220(a1, *v15, a3);
          *v15 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          sub_181929C84(a1, v15);
          goto LABEL_20;
        }

        v12 = *(v11 + 8);
        if (*(v11 + 27))
        {
          v15 = *(v11 + 8);
          goto LABEL_24;
        }

        if (!v12)
        {
          v15 = 0;
          goto LABEL_24;
        }

        v13 = strlen(*(v11 + 8));
        v14 = v13;
        if (!a1)
        {
          break;
        }

        v15 = sub_181929E8C(a1, v13 + 1, 354097263);
        if (v15)
        {
          goto LABEL_23;
        }

LABEL_24:
        *(v10 + 8) = v15;
        v19 = *v11;
        if (!*v11)
        {
          v22 = 0;
          goto LABEL_31;
        }

        v20 = strlen(*v11);
        v21 = v20;
        if (!a1)
        {
          v22 = sub_181902484(v20 + 1, 354097263);
          if (!v22)
          {
            goto LABEL_31;
          }

LABEL_30:
          memcpy(v22, v19, v21 + 1);
          goto LABEL_31;
        }

        v22 = sub_181929E8C(a1, v20 + 1, 354097263);
        if (v22)
        {
          goto LABEL_30;
        }

LABEL_31:
        *v10 = v22;
        v23 = *(v11 + 1);
        if (!v23)
        {
          v26 = 0;
          goto LABEL_38;
        }

        v24 = strlen(*(v11 + 1));
        v25 = v24;
        if (!a1)
        {
          v26 = sub_181902484(v24 + 1, 354097263);
          if (!v26)
          {
            goto LABEL_38;
          }

LABEL_37:
          memcpy(v26, v23, v25 + 1);
          goto LABEL_38;
        }

        v26 = sub_181929E8C(a1, v24 + 1, 354097263);
        if (v26)
        {
          goto LABEL_37;
        }

LABEL_38:
        *(v10 + 1) = v26;
        v10[7] = v11[7];
        v27 = *(v10 + 25);
        if ((v27 & 2) == 0)
        {
          if ((v27 & 8) != 0)
          {
            *(v10 + 5) = sub_1818C83A0(a1, *(v11 + 5), a3);
          }

          else
          {
            v10[10] = v11[10];
          }

          goto LABEL_48;
        }

        v28 = *(v11 + 5);
        if (!v28)
        {
          *(v10 + 5) = 0;
          goto LABEL_48;
        }

        v29 = strlen(*(v11 + 5));
        v30 = v29;
        if (!a1)
        {
          v31 = sub_181902484(v29 + 1, 354097263);
          if (!v31)
          {
            goto LABEL_45;
          }

LABEL_44:
          memcpy(v31, v28, v30 + 1);
          goto LABEL_45;
        }

        v31 = sub_181929E8C(a1, v29 + 1, 354097263);
        if (v31)
        {
          goto LABEL_44;
        }

LABEL_45:
        *(v10 + 5) = v31;
LABEL_48:
        v32 = *(v11 + 6);
        *(v10 + 6) = v32;
        if ((*(v10 + 25) & 0x200) != 0)
        {
          ++*v32;
        }

        v33 = *(v11 + 2);
        *(v10 + 2) = v33;
        if (v33)
        {
          ++*(v33 + 44);
        }

        v34 = *(v11 + 7);
        if ((*(v11 + 25) & 0x800) == 0)
        {
          if (v34)
          {
            v9 = sub_1818C7FEC(a1, *(v11 + 7), a3, 0);
            goto LABEL_6;
          }

LABEL_5:
          v9 = 0;
          goto LABEL_6;
        }

        if (!v34)
        {
          goto LABEL_5;
        }

        v35 = sub_181929E8C(a1, 8 * *v34 + 8, 0x10040436913F5);
        v9 = v35;
        if (v35)
        {
          v36 = *v34;
          *v35 = *v34;
          if (v36 >= 1)
          {
            v37 = 1;
            while (1)
            {
              v40 = *&v34[2 * v37];
              if (v40)
              {
                v41 = strlen(*&v34[2 * v37]);
                v42 = v41;
                if (a1)
                {
                  v38 = sub_181929E8C(a1, v41 + 1, 354097263);
                  if (!v38)
                  {
                    goto LABEL_60;
                  }

LABEL_67:
                  memcpy(v38, v40, v42 + 1);
                  goto LABEL_60;
                }

                v38 = sub_181902484(v41 + 1, 354097263);
                if (v38)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v38 = 0;
              }

LABEL_60:
              *(v9 + 8 * v37) = v38;
              if (v37++ >= *v34)
              {
                a3 = v44;
                break;
              }
            }
          }
        }

LABEL_6:
        *(v10 + 7) = v9;
        *(v10 + 4) = *(v11 + 4);
        if (++v8 >= *v47)
        {
          return v43;
        }
      }

      v15 = sub_181902484(v13 + 1, 354097263);
      if (!v15)
      {
        goto LABEL_24;
      }

LABEL_23:
      memcpy(v15, v12, v14 + 1);
      goto LABEL_24;
    }
  }

  return result;
}

void *sub_1818CB940(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, unsigned __int8 *a5, char a6, unsigned __int8 *a7, int a8)
{
  v13 = *a1;
  v14 = sub_1818CAE18(a1, 130, a2, a7, a8);
  v15 = v14;
  if (v14)
  {
    if (*(a1 + 302) < 2u)
    {
      v14[6] = sub_1818C83A0(v13, a4, 1u);
      if (a5)
      {
        v17 = sub_1818C7FEC(v13, a5, 1, 0);
      }

      else
      {
        v17 = 0;
      }

      v15[5] = v17;
      v16 = sub_1818CB478(v13, a3, 1);
    }

    else
    {
      v14[5] = a5;
      v14[6] = a4;
      v16 = a3;
      a5 = 0;
      a4 = 0;
      a3 = 0;
    }

    v15[4] = v16;
    *(v15 + 1) = a6;
  }

  if (a4)
  {
    sub_18194E5B8(v13, a4);
  }

  if (a5)
  {
    sub_1819439E0(v13, a5);
  }

  sub_1818BB5B0(v13, a3);
  return v15;
}

void *sub_1818CBA4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = *(a1 + 360);
  v10 = *a1;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0;
  v92 = 0;
  *(a1 + 360) = 0;
  if (*(a1 + 52) || !v9)
  {
    goto LABEL_69;
  }

  v12 = *(v9 + 40);
  if (v12)
  {
    v13 = (*(v10 + 32) + 24);
    LODWORD(v14) = -1;
    do
    {
      v15 = *v13;
      v13 += 4;
      v14 = (v14 + 1);
    }

    while (v15 != v12);
  }

  else
  {
    v14 = 4294934528;
  }

  v16 = *v9;
  *(v9 + 56) = a2;
  if (a2)
  {
    v17 = a2;
    do
    {
      v17[1] = v9;
      v17 = v17[10];
    }

    while (v17);
  }

  v91 = v16;
  if (v16)
  {
    v18 = strlen(v16) & 0x3FFFFFFF;
  }

  else
  {
    v18 = 0;
  }

  LODWORD(v92) = v18;
  v19 = v14;
  v20 = (*(v10 + 32) + 32 * v14);
  v21 = *v20;
  *(&v96 + 1) = v20[3];
  *(&v97 + 1) = v21;
  *&v98 = "trigger";
  *(&v98 + 1) = &v91;
  LOBYTE(v97) = v14 == 1;
  *&v93 = a1;
  *(&v93 + 1) = a1;
  *&v94 = sub_181962F5C;
  *(&v94 + 1) = sub_181962FE0;
  *&v95 = nullsub_8;
  DWORD2(v95) = 0;
  WORD6(v95) = 0;
  *&v96 = &v93;
  if (v8)
  {
    v89 = v16;
    while (!sub_1818AEE70(&v93 + 1, v8[2]))
    {
      v22 = v8[5];
      if (v22)
      {
        if (sub_181959BA0(&v93 + 8, v22))
        {
          break;
        }
      }

      v23 = v8[6];
      if (v23 && *v23 >= 1)
      {
        v24 = (v23 + 2);
        v25 = *v23 + 1;
        while (!*v24 || !sub_181959BA0(&v93 + 8, *v24))
        {
          v24 += 3;
          if (--v25 <= 1)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_68;
      }

LABEL_26:
      v26 = v8[4];
      if (v26)
      {
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v100 = 0;
        v102 = 0u;
        memset(v99, 0, sizeof(v99));
        v101 = v26;
        if (sub_1818AEE70(&v93 + 1, v99))
        {
          goto LABEL_68;
        }
      }

      v27 = v19;
      v28 = v8[8];
      if (v28)
      {
        while (1)
        {
          v29 = *v28;
          if (*v28)
          {
            if (*v29 >= 1)
            {
              break;
            }
          }

LABEL_36:
          v32 = *(v28 + 8);
          if (v32 && sub_181959BA0(&v93 + 8, v32))
          {
            goto LABEL_68;
          }

          v33 = *(v28 + 16);
          if (v33 && *v33 >= 1)
          {
            v34 = (v33 + 2);
            v35 = *v33 + 1;
            while (!*v34 || !sub_181959BA0(&v93 + 8, *v34))
            {
              v34 += 3;
              if (--v35 <= 1)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_68;
          }

LABEL_45:
          v36 = *(v28 + 24);
          if (v36 && sub_181959BA0(&v93 + 8, v36))
          {
            goto LABEL_68;
          }

          v28 = *(v28 + 32);
          if (!v28)
          {
            goto LABEL_48;
          }
        }

        v30 = (v29 + 2);
        v31 = *v29 + 1;
        while (!*v30 || !sub_181959BA0(&v93 + 8, *v30))
        {
          v30 += 3;
          if (--v31 <= 1)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_68;
      }

LABEL_48:
      v8 = v8[10];
      v19 = v27;
      v16 = v89;
      if (!v8)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_68;
  }

LABEL_49:
  v37 = *(v9 + 24);
  if (v37 && sub_181959BA0(&v93 + 8, v37))
  {
    goto LABEL_68;
  }

  if (*(a1 + 302) < 2u)
  {
    if (!*(v10 + 197))
    {
      v38 = v19;
      if ((*(v10 + 51) & 0x10) != 0 && !*(v10 + 592) && !*(v10 + 220) && (*(v10 + 564) < 1 || *(v10 + 600)))
      {
        v75 = *(v9 + 56);
        if (v75)
        {
          while (1)
          {
            v76 = *(v75 + 24);
            if (v76)
            {
              v77 = strrchr(*(v75 + 24), 95);
              if (v77)
              {
                *v77 = 0;
                v78 = v77;
                v79 = sub_181917F20(v10, v76, 0);
                *v78 = 95;
                if (v79)
                {
                  if (*(v79 + 63) == 1)
                  {
                    v80 = v79;
                    v81 = *v79;
                    if (*v79)
                    {
                      v82 = strlen(*v79) & 0x3FFFFFFF;
                    }

                    else
                    {
                      LODWORD(v82) = 0;
                    }

                    v83 = v81;
                    v84 = v82;
                    if (!sqlite3_strnicmp(v76, v83, v82))
                    {
                      v85 = &v76[v84];
                      if (*v85 == 95)
                      {
                        v86 = sub_1819493D0((v10 + 568), *v80[9]);
                        if (v86)
                        {
                          if (**v86 >= 3)
                          {
                            v87 = *(*v86 + 184);
                            if (v87)
                            {
                              if (v87(v85 + 1))
                              {
                                break;
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

            v75 = *(v75 + 80);
            if (!v75)
            {
              goto LABEL_57;
            }
          }

          sub_181910730(a1, "trigger %s may not write to shadow table %s", a3, a4, a5, a6, a7, a8, *v9);
          goto LABEL_68;
        }
      }

LABEL_57:
      v8 = sub_1818E7DFC(a1, v37, a3, a4, a5, a6, a7, a8);
      if (!v8)
      {
        goto LABEL_69;
      }

      sub_18195D3A8(a1, 0, v14);
      v39 = sub_18189F1F4(v10, *a3, *(a3 + 8));
      v19 = v38;
      sub_1818F73B0(a1, "INSERT INTO %Q.sqlite_master VALUES('trigger',%Q,%Q,0,'CREATE TRIGGER %q')", v40, v41, v42, v43, v44, v45, *(*(v10 + 32) + 32 * v38));
      if (v39)
      {
        sub_181929C84(v10, v39);
      }

      sub_18195E878(a1, v14, v46, v47, v48, v49, v50, v51);
      v58 = sub_1818A8BAC(v10, "type='trigger' AND name='%q'", v52, v53, v54, v55, v56, v57, v16);
      sub_18195E8E8(v8, v14, v58, 0, v59, v60, v61, v62);
    }
  }

  else
  {
    *(a1 + 360) = v9;
    v9 = 0;
  }

  if (!*(v10 + 197))
  {
LABEL_68:
    v8 = 0;
    goto LABEL_69;
  }

  v63 = sub_18188FAF0(*(*(v10 + 32) + 32 * v19 + 24) + 56, v16, v9);
  if (!v63)
  {
    v70 = *(v9 + 48);
    if (*(v9 + 40) == v70)
    {
      v72 = sub_1819493D0((v70 + 8), *(v9 + 8));
      v8 = 0;
      *(v9 + 64) = *(v72 + 88);
      *(v72 + 88) = v9;
      v9 = 0;
      goto LABEL_69;
    }

    v9 = 0;
    goto LABEL_68;
  }

  if (!*(v10 + 103) && !*(v10 + 104))
  {
    *(v10 + 103) = 1;
    if (*(v10 + 220) >= 1)
    {
      *(v10 + 424) = 1;
    }

    ++*(v10 + 432);
    *(v10 + 436) = 0;
    if (*(v10 + 344))
    {
      v9 = v63;
      sub_181910730(*(v10 + 344), "out of memory", v64, v65, v66, v67, v68, v69, v88);
      v73 = *(v10 + 344);
      *(v73 + 24) = 7;
      for (i = *(v73 + 216); i; i = *(i + 216))
      {
        ++*(i + 52);
        *(i + 24) = 7;
      }

      goto LABEL_68;
    }
  }

  v8 = 0;
  v9 = v63;
LABEL_69:
  sub_1818A313C(v10, v9);
  return sub_1818CC034(v10, v8);
}

void *sub_1818CC034(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 + 80);
      v5 = *(v2 + 40);
      if (v5)
      {
        sub_1819439E0(v3, v5);
      }

      v6 = *(v2 + 48);
      if (v6)
      {
        sub_18194E5B8(v3, v6);
      }

      v7 = *(v2 + 16);
      if (v7)
      {
        sub_1818BB408(v3, v7, 1);
      }

      v8 = *(v2 + 56);
      if (v8)
      {
        v9 = *v8;
        if (*v8 >= 1)
        {
          v10 = 0;
          do
          {
            v11 = v8[v10 + 1];
            if (v11)
            {
              sub_181929C84(v3, v11);
              v9 = *v8;
            }

            ++v10;
          }

          while (v10 < v9);
        }

        sub_181939EC8(v3, v8);
      }

      v12 = *(v2 + 64);
      if (v12)
      {
        sub_18194E51C(v3, v12);
      }

      sub_1818BB5B0(v3, *(v2 + 32));
      v13 = *(v2 + 72);
      if (v13)
      {
        sub_181929C84(v3, v13);
      }

      result = sub_181929C84(v3, v2);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1818CC140(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 600);
  *(a1 + 600) = 0;
  do
  {
    while (1)
    {
      if (v4 >= *(a1 + 564))
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        *(a1 + 600) = v5;
        while (1)
        {
          while (1)
          {
            if (v10 >= *(a1 + 40))
            {
              if (v12)
              {
                v20 = *(a1 + 280);
                if (v20)
                {
                  if (v20(*(a1 + 272)))
                  {
                    return 531;
                  }
                }
              }

              v21 = *(*(*(a1 + 32) + 8) + 8);
              v22 = *v21;
              v23 = *(*v21 + 19);
              if (*(*v21 + 19) || *v22 == &unk_1ED453A78)
              {
                v24 = &unk_181A20D35;
              }

              else
              {
                v24 = *(v22 + 216);
                if (!v24)
                {
LABEL_72:
                  v40 = -1;
                  v41 = 8;
                  while (++v40 < *(a1 + 40))
                  {
                    v42 = *(*(a1 + 32) + v41);
                    if (v42)
                    {
                      v8 = sub_1818CC964(v42, 0);
                      v41 += 32;
                      if (v8)
                      {
                        return v8;
                      }
                    }

                    else
                    {
                      v41 += 32;
                    }
                  }

                  v43 = -1;
                  v44 = 8;
                  while (++v43 < *(a1 + 40))
                  {
                    v45 = *(*(a1 + 32) + v44);
                    if (v45)
                    {
                      v8 = sub_1818CCD6C(v45, 0);
                      v44 += 32;
                      if (v8)
                      {
                        return v8;
                      }
                    }

                    else
                    {
                      v44 += 32;
                    }
                  }

                  goto LABEL_134;
                }
              }

              if ((strlen(v24) & 0x3FFFFFFF) == 0 || v11 <= 1)
              {
                goto LABEL_72;
              }

              v31 = *a1;
              if (v23 || *v22 == &unk_1ED453A78)
              {
                v71 = 0;
                v70 = 0;
                v32 = &unk_181A20D35;
              }

              else
              {
                v32 = *(v22 + 216);
                v71 = 0;
                v70 = 0;
                if (!v32)
                {
                  v33 = 0;
                  goto LABEL_54;
                }
              }

              v33 = strlen(v32) & 0x3FFFFFFF;
LABEL_54:
              v34 = sub_1818A8BAC(a1, "%.4c%s%.16c", v25, v26, v27, v28, v29, v30, 0);
              if (!v34)
              {
                return 7;
              }

              v35 = v34;
              v36 = v34 + 4;
              __buf = 0;
              sqlite3_initialize();
              arc4random_buf(&__buf, 4uLL);
              sqlite3_snprintf(13, &v36[v33], "-mj%06X9%02X", __buf >> 8, __buf);
              v8 = (*(v31 + 56))(v31, v36, 0, &v70);
              if (v8 || !v70 || (__buf = 0, sqlite3_log(13, "MJ collide: %s", v36), sqlite3_initialize(), arc4random_buf(&__buf, 4uLL), sqlite3_snprintf(13, &v36[v33], "-mj%06X9%02X", __buf >> 8, __buf), v8 = (*(v31 + 56))(v31, v36, 0, &v70), v8) || !v70)
              {
LABEL_67:
                if (v8)
                {
                  goto LABEL_69;
                }
              }

              else
              {
                v37 = 1;
                while (1)
                {
                  __buf = 0;
                  if (++v37 >= 0x65)
                  {
                    break;
                  }

                  sqlite3_initialize();
                  arc4random_buf(&__buf, 4uLL);
                  sqlite3_snprintf(13, &v36[v33], "-mj%06X9%02X", __buf >> 8, __buf);
                  v38 = (*(v31 + 56))(v31, v36, 0, &v70);
                  if (v38)
                  {
                    v39 = 1;
                  }

                  else
                  {
                    v39 = v70 == 0;
                  }

                  if (v39)
                  {
                    v8 = v38;
                    goto LABEL_67;
                  }
                }

                sqlite3_log(13, "MJ delete: %s", v36);
                v59 = *(v31 + 48);
                if (v59)
                {
                  v59(v31, v36, 0);
                }
              }

              v8 = sub_18193BBF4(v31, v36, &v71, 16406, 0);
              if (v8)
              {
                goto LABEL_69;
              }

              v46 = *(a1 + 40);
              v47 = v71;
              if (v46 >= 1)
              {
                v48 = 0;
                v49 = 0;
                v50 = 8;
                do
                {
                  v51 = *(*(a1 + 32) + v50);
                  if (v51)
                  {
                    if (*(v51 + 16) == 2)
                    {
                      v52 = **(v51 + 8);
                      v53 = *(v52 + 224);
                      if (v53)
                      {
                        v54 = strlen(*(v52 + 224));
                        v55 = (*(*v47 + 24))(v47, v53, (v54 & 0x3FFFFFFFu) + 1, v49);
                        if (v55)
                        {
                          v8 = v55;
                          if (*v47)
                          {
                            (*(*v47 + 8))(v47);
                            *v47 = 0;
                          }

                          v56 = &off_1ED452EB0;
                          if (dword_1ED452E80)
                          {
                            if (xmmword_1ED456AF0)
                            {
                              xmmword_1ED452F18(xmmword_1ED456AF0);
                            }

                            qword_1ED456A48 -= xmmword_1ED452EC0(v47);
                            --qword_1ED456A90;
                            off_1ED452EB0(v47);
                            v47 = xmmword_1ED456AF0;
                            if (xmmword_1ED456AF0)
                            {
                              v56 = &xmmword_1ED452F28;
                              goto LABEL_101;
                            }
                          }

                          else
                          {
LABEL_101:
                            (*v56)(v47);
                          }

LABEL_107:
                          v58 = *(v31 + 48);
                          if (v58)
                          {
                            v58(v31, v36, 0);
                          }

                          goto LABEL_69;
                        }

                        v49 += (strlen(v53) & 0x3FFFFFFF) + 1;
                        v46 = *(a1 + 40);
                      }
                    }
                  }

                  ++v48;
                  v50 += 32;
                }

                while (v48 < v46);
              }

              if (((*(*v47 + 96))(v47) & 0x400) == 0)
              {
                v57 = (*(*v47 + 40))(v47, 2);
                if (v57)
                {
                  v8 = v57;
                  if (*v47)
                  {
                    (*(*v47 + 8))(v47);
                    *v47 = 0;
                  }

                  sqlite3_free(v47);
                  goto LABEL_107;
                }
              }

              v60 = -1;
              v61 = 8;
              while (1)
              {
                v62 = *(a1 + 40);
                if (++v60 >= v62)
                {
                  break;
                }

                v63 = *(*(a1 + 32) + v61);
                if (v63)
                {
                  v8 = sub_1818CC964(v63, v36);
                  v61 += 32;
                  if (v8)
                  {
                    goto LABEL_118;
                  }
                }

                else
                {
                  v61 += 32;
                }
              }

              v8 = 0;
LABEL_118:
              if (*v47)
              {
                (*(*v47 + 8))(v47);
                *v47 = 0;
              }

              sqlite3_free(v47);
              if (v60 < v62)
              {
LABEL_69:
                sub_181929C84(a1, v35);
                return v8;
              }

              v64 = *(v31 + 48);
              if (v64)
              {
                v8 = v64(v31, v36, 1);
                v65 = sub_181929C84(a1, v35);
                if (v8)
                {
                  return v8;
                }
              }

              else
              {
                v65 = sub_181929C84(a1, v35);
              }

              if (off_1EA831A10)
              {
                v65 = off_1EA831A10(v65);
              }

              v66 = *(a1 + 40);
              if (v66 >= 1)
              {
                v67 = 0;
                v68 = 8;
                do
                {
                  v65 = *(*(a1 + 32) + v68);
                  if (v65)
                  {
                    v65 = sub_1818CCD6C(v65, 1);
                    v66 = *(a1 + 40);
                  }

                  ++v67;
                  v68 += 32;
                }

                while (v67 < v66);
              }

              if (off_1EA831A18)
              {
                off_1EA831A18(v65);
              }

LABEL_134:
              sub_18193BAEC(a1);
              return 0;
            }

            v13 = *(a1 + 32);
            v14 = *(v13 + 32 * v10 + 8);
            if (v14)
            {
              if (*(v14 + 16) == 2)
              {
                break;
              }
            }

            ++v10;
          }

          if (*(v14 + 17))
          {
            ++*(v14 + 20);
            if (!*(v14 + 18))
            {
              sub_181932DEC(v14);
              v13 = *(a1 + 32);
            }
          }

          v15 = **(v14 + 8);
          if (*(v13 + 32 * v10 + 16) == 1 || ((0x34uLL >> *(v15 + 9)) & 1) != 0 || *(v15 + 16))
          {
            v8 = *(v15 + 48);
            if (!v8)
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (!*(v15 + 20))
            {
              ++v11;
            }

            v8 = *(v15 + 48);
            if (!v8)
            {
LABEL_27:
              if (!*(v15 + 344))
              {
                while (1)
                {
                  v17 = *(v15 + 22);
                  if (v17 >= 4 && v17 != 5)
                  {
                    break;
                  }

                  if (*(v15 + 17))
                  {
                    goto LABEL_42;
                  }

                  v19 = (*(**(v15 + 72) + 56))(*(v15 + 72), 4);
                  if (v19 != 5)
                  {
                    v8 = v19;
                    if (v19)
                    {
                      goto LABEL_21;
                    }

LABEL_42:
                    v8 = 0;
                    *(v15 + 22) = 4;
                    goto LABEL_21;
                  }

                  if (!(*(v15 + 232))(*(v15 + 240)))
                  {
                    v8 = 5;
                    if (*(v14 + 17))
                    {
                      goto LABEL_22;
                    }

                    goto LABEL_29;
                  }
                }
              }

              v8 = 0;
              if (!*(v14 + 17))
              {
                goto LABEL_29;
              }

LABEL_22:
              v16 = *(v14 + 20) - 1;
              *(v14 + 20) = v16;
              if (!v16)
              {
                sub_181932ECC(v14);
              }

              goto LABEL_29;
            }
          }

LABEL_21:
          if (*(v14 + 17))
          {
            goto LABEL_22;
          }

LABEL_29:
          v12 = 1;
          ++v10;
          if (v8)
          {
            return v8;
          }
        }
      }

      v6 = *(*(v5 + 8 * v4) + 16);
      if (v6)
      {
        v7 = *(*v6 + 120);
        if (v7)
        {
          break;
        }
      }

      ++v4;
    }

    v8 = v7(v6);
    sub_18193BD34(a2, v6);
    ++v4;
  }

  while (!v8);
  *(a1 + 600) = v5;
  return v8;
}

uint64_t sub_1818CC964(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 16) != 2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (*(a1 + 17) && (++*(a1 + 20), !*(a1 + 18)))
  {
    v11 = a2;
    sub_181932DEC(a1);
    a2 = v11;
    if (!*(v3 + 33))
    {
      goto LABEL_8;
    }
  }

  else if (!*(v3 + 33))
  {
LABEL_8:
    v7 = *v3;
    if (*(v3 + 35))
    {
      *(v7 + 32) = *(v3 + 64);
    }

    result = sub_1818DCD58(v7, a2, 0);
    goto LABEL_11;
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  for (i = *(v4 + 16); i; i = *(i + 40))
  {
    *(i + 1) &= ~4u;
  }

  if (*(v4 + 34))
  {
    goto LABEL_8;
  }

  v12 = *(v4 + 64);
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    v14 = v13 / (*(v4 + 56) / 5u + 1) * (*(v4 + 56) / 5u + 1);
    if (v14 + 1 == dword_1EA8315A8 / *(v4 + 52))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    if (v15 + v14 == v12)
    {
      goto LABEL_26;
    }
  }

  else if (!v12)
  {
    goto LABEL_26;
  }

  v16 = dword_1EA8315A8;
  if (v12 == dword_1EA8315A8 / *(v4 + 52) + 1)
  {
LABEL_26:
    result = sub_18190EDA8(83457);
    goto LABEL_11;
  }

  v17 = bswap32(*(*(*(v4 + 24) + 80) + 36));
  v18 = *a1;
  v19 = *(*a1 + 336);
  if (v19)
  {
    v20 = *(v18 + 40);
    v21 = *(v18 + 32);
    if (v20 < 1)
    {
      v24 = a2;
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v23 = (v21 + 8);
      while (*v23 != a1)
      {
        ++v22;
        v23 += 4;
        if (v20 == v22)
        {
          v24 = a2;
          v22 = *(v18 + 40);
          goto LABEL_36;
        }
      }

      v24 = a2;
    }

LABEL_36:
    v26 = v19(*(v18 + 320), *(v21 + 32 * v22), *(v4 + 64), v17);
    if (v26 >= v17)
    {
      v25 = v17;
    }

    else
    {
      v25 = v26;
    }

    a2 = v24;
    if (!v25)
    {
      goto LABEL_8;
    }

    v16 = dword_1EA8315A8;
  }

  else
  {
    v25 = v17;
  }

  v27 = *(v4 + 56) / 5u;
  if (v12 > 1)
  {
    v29 = v27 + 1;
    v31 = v13 / v29 * v29;
    v30 = v16 / *(v4 + 52);
    if (v31 + 1 == v30)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v28 = v32 + v31;
  }

  else
  {
    v28 = 0;
    v29 = v27 + 1;
    v30 = v16 / *(v4 + 52);
  }

  v33 = v12 - v25 - (v25 - v12 + v27 + v28) / v27;
  v34 = v30 + 1;
  v35 = v30 + 1 >= v12 || v33 >= v34;
  v36 = !v35;
  v37 = v33 - v36;
  do
  {
    v38 = v37;
    v35 = v37 >= 2;
    v39 = v37 - 2;
    if (v35)
    {
      v41 = v39 / v29 * v29;
      if (v41 + 1 == v30)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v40 = v42 + v41;
    }

    else
    {
      v40 = 0;
    }

    v37 = v38 - 1;
  }

  while (v38 == v40 || v38 == v34);
  if (v38 > v12)
  {
    result = sub_18190EDA8(83484);
    goto LABEL_11;
  }

  v43 = a2;
  if (v38 >= v12)
  {
    v45 = 0;
    v46 = 1;
  }

  else
  {
    v44 = *(v4 + 16);
    if (v44 && (v45 = sub_18193880C(v44, 0, 0), v45))
    {
      v46 = 0;
    }

    else
    {
      do
      {
        v45 = sub_181938468(v4, v38, v12--, v25 == v17);
        v46 = v45 == 0;
      }

      while (v12 > v38 && !v45);
    }
  }

  v47 = !v46;
  if (v45 == 101)
  {
    v47 = 0;
  }

  if (!v47)
  {
    a2 = v43;
    if (!v17)
    {
      goto LABEL_79;
    }

    v45 = sub_1818D8D88(*(*(v4 + 24) + 112));
    if (v25 == v17)
    {
      *(*(*(v4 + 24) + 80) + 32) = 0;
      *(*(*(v4 + 24) + 80) + 36) = 0;
    }

    *(*(*(v4 + 24) + 80) + 28) = bswap32(v38);
    *(v4 + 35) = 1;
    *(v4 + 64) = v38;
  }

  a2 = v43;
LABEL_79:
  if (!v45)
  {
    goto LABEL_8;
  }

  v48 = v45;
  sub_1818E34C8(v5);
  result = v48;
LABEL_11:
  if (*(a1 + 17))
  {
    v9 = *(a1 + 20) - 1;
    *(a1 + 20) = v9;
    if (!v9)
    {
      v10 = result;
      sub_181932ECC(a1);
      return v10;
    }
  }

  return result;
}

uint64_t sub_1818CCD6C(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    return 0;
  }

  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v7 = a2;
      sub_181932DEC(a1);
      a2 = v7;
      if (*(a1 + 16) != 2)
      {
        goto LABEL_29;
      }

LABEL_5:
      v4 = *(a1 + 8);
      v5 = *v4;
      result = *(*v4 + 48);
      if (!result)
      {
        ++*(v5 + 132);
        if (*(v5 + 21) == 2 && *(v5 + 8) && *(v5 + 9) == 1)
        {
          *(v5 + 21) = 1;
LABEL_28:
          --*(a1 + 28);
          *(v4 + 36) = 1;
          sub_1818EFAC4(*(v4 + 96));
          *(v4 + 96) = 0;
          goto LABEL_29;
        }

        v8 = a2;
        result = sub_1818CD128(v5, *(v5 + 24), 1);
        if (result != 13 && result != 10)
        {
          if (v8)
          {
            goto LABEL_28;
          }

          goto LABEL_24;
        }

        *(v5 + 48) = result;
        *(v5 + 21) = 6;
        v10 = sub_181933ECC;
        a2 = v8;
        if (!result)
        {
          if (!*(v5 + 27) || (v10 = sub_181933ED8, *(v5 + 296)))
          {
            v10 = sub_18193417C;
          }
        }

        *(v5 + 288) = v10;
      }

      if (a2)
      {
        goto LABEL_28;
      }

LABEL_24:
      if (result)
      {
        if (!*(a1 + 17))
        {
          return result;
        }

        goto LABEL_31;
      }

      goto LABEL_28;
    }
  }

  if (v2 == 2)
  {
    goto LABEL_5;
  }

LABEL_29:
  sub_1818CCF18(a1);
  if (!*(a1 + 17))
  {
    return 0;
  }

  result = 0;
LABEL_31:
  v11 = *(a1 + 20) - 1;
  *(a1 + 20) = v11;
  if (!v11)
  {
    v12 = result;
    sub_181932ECC(a1);
    return v12;
  }

  return result;
}

uint64_t sub_1818CCF18(uint64_t result)
{
  v1 = result;
  v2 = *result;
  v3 = *(result + 8);
  *(v3 + 35) = 0;
  if (*(result + 16))
  {
    if (*(v2 + 212) >= 2)
    {
      if (*(v3 + 128) == result)
      {
        *(v3 + 128) = 0;
        *(v3 + 40) &= 0xFF3Fu;
        for (i = *(v3 + 120); i; i = *(i + 16))
        {
          *(i + 12) = 1;
        }
      }

      *(result + 16) = 1;
      return result;
    }

    v6 = (v3 + 120);
    v5 = *(v3 + 120);
    if (v5)
    {
      do
      {
        if (*v5 == v1)
        {
          v7 = *(v5 + 16);
          *v6 = v7;
          if (*(v5 + 8) == 1)
          {
            goto LABEL_11;
          }

          v8 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(v5);
            --qword_1ED456A90;
            result = off_1ED452EB0(v5);
            v5 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_10;
            }

            v8 = &xmmword_1ED452F28;
          }

          result = (*v8)(v5);
        }

        else
        {
          v6 = (v5 + 16);
        }

LABEL_10:
        v7 = *v6;
LABEL_11:
        v5 = v7;
      }

      while (v7);
    }

    if (*(v3 + 128) == v1)
    {
      *(v3 + 128) = 0;
      v9 = *(v3 + 60);
      v10 = -193;
    }

    else
    {
      v9 = *(v3 + 60);
      if (v9 != 2)
      {
        goto LABEL_25;
      }

      v10 = -129;
    }

    *(v3 + 40) &= v10;
LABEL_25:
    v11 = v9 - 1;
    *(v3 + 60) = v11;
    if (!v11)
    {
      *(v3 + 36) = 0;
    }
  }

  *(v1 + 16) = 0;
  if (!*(v3 + 36))
  {
    v12 = *(v3 + 24);
    if (v12)
    {
      *(v3 + 24) = 0;
      v13 = *(v12 + 112);
      v14 = *(v13 + 40);
      result = sub_181932B68(v13);
      if (!*(*(v14 + 336) + 24))
      {

        return sub_181934964(v14);
      }
    }
  }

  return result;
}

uint64_t sub_1818CD128(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 21) <= 1u && *(a1 + 22) < 2u)
  {
    return 0;
  }

  if (*(a1 + 128) >= 1)
  {
    v7 = 0;
    v8 = 16;
    do
    {
      sub_1818EFAC4(*(*(a1 + 120) + v8));
      ++v7;
      v8 += 56;
    }

    while (v7 < *(a1 + 128));
  }

  v9 = *(a1 + 88);
  v10 = *v9;
  if (*(a1 + 8))
  {
    if (v10 != &unk_1EEF8FF50)
    {
      goto LABEL_12;
    }

    v10 = &unk_1EEF8FF50;
  }

  else if (!v10)
  {
    goto LABEL_12;
  }

  v10[1](*(a1 + 88));
  *v9 = 0;
LABEL_12:
  v11 = *(a1 + 120);
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_18;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v11);
  --qword_1ED456A90;
  off_1ED452EB0(v11);
  v11 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v12 = &xmmword_1ED452F28;
LABEL_18:
    (*v12)(v11);
  }

LABEL_19:
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 60) = 0;
  v13 = *(a1 + 80);
  v14 = *v13;
  if (!*v13)
  {
LABEL_50:
    v16 = 0;
    goto LABEL_65;
  }

  if (v14 != &unk_1EEF8FF50)
  {
    v15 = *(a1 + 9);
    if (v15 == 1)
    {
      goto LABEL_40;
    }

    if (v15 == 3)
    {
      if (!*(a1 + 96))
      {
        goto LABEL_63;
      }

      v16 = (*(v14 + 32))(*(a1 + 80), 0);
      if (!v16)
      {
        if (*(a1 + 12) && *(a1 + 14))
        {
          v17 = (*(**(a1 + 80) + 40))(*(a1 + 80));
LABEL_62:
          v16 = v17;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

LABEL_64:
      *(a1 + 96) = 0;
      goto LABEL_65;
    }

    if (v15 <= 4 && *(a1 + 8))
    {
LABEL_40:
      if (a2)
      {
        v21 = 1;
        if (!*(a1 + 96))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v21 = *(a1 + 16) != 0;
        if (!*(a1 + 96))
        {
          goto LABEL_63;
        }
      }

      v22 = *(a1 + 208);
      if (!v22)
      {
        v21 = 1;
      }

      if (v21)
      {
        v16 = (*(v14 + 32))(*(a1 + 80), 0);
        if (v16)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v16 = (*(v14 + 24))(*(a1 + 80), &unk_181A20D0D, 28, 0);
        if (v16)
        {
          goto LABEL_64;
        }
      }

      if (*(a1 + 11))
      {
        v16 = 0;
      }

      else
      {
        v16 = (*(**(a1 + 80) + 40))(*(a1 + 80), *(a1 + 14) | 0x10u);
      }

      if (v16)
      {
        goto LABEL_64;
      }

      if (v22 < 1)
      {
        goto LABEL_64;
      }

      v46 = 0;
      v16 = (*(**(a1 + 80) + 48))(*(a1 + 80), &v46);
      if (v16)
      {
        goto LABEL_64;
      }

      if (v46 > v22)
      {
        v17 = (*(**(a1 + 80) + 32))(*(a1 + 80), v22);
        goto LABEL_62;
      }

LABEL_63:
      v16 = 0;
      goto LABEL_64;
    }

    v23 = *(a1 + 16);
    (*(v14 + 8))(*(a1 + 80));
    *v13 = 0;
    if (!v23)
    {
      v24 = *(*a1 + 48);
      if (v24)
      {
        v16 = v24();
        goto LABEL_65;
      }
    }

    goto LABEL_50;
  }

  v18 = v13[2];
  if (v18)
  {
    do
    {
      v19 = *v18;
      v20 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v18);
        --qword_1ED456A90;
        off_1ED452EB0(v18);
        v18 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_31;
        }

        v20 = &xmmword_1ED452F28;
      }

      (*v20)(v18);
LABEL_31:
      v18 = v19;
    }

    while (v19);
  }

  v16 = 0;
  *v13 = 0;
LABEL_65:
  sub_1818EFAC4(*(a1 + 64));
  *(a1 + 64) = 0;
  *(a1 + 52) = 0;
  if (v16)
  {
    goto LABEL_114;
  }

  if (!*(a1 + 19) && *(a1 + 16))
  {
    if (!a3 || !**(a1 + 72))
    {
      goto LABEL_150;
    }

    v36 = *(a1 + 336);
    LODWORD(v37) = *(v36 + 8);
    if ((v37 & 0x80000000) != 0)
    {
      v37 = -1024 * v37 / (*(v36 + 11) + *(v36 + 10));
      if (v37 >= 1000000000)
      {
        LODWORD(v37) = 1000000000;
      }
    }

    v38 = *v36;
    if (*v36)
    {
      v39 = 0;
      do
      {
        v38 = *(v38 + 64);
        v39 += 100;
      }

      while (v38);
    }

    else
    {
      v39 = 0;
    }

    if (!v37 || (v39 / v37) < 25)
    {
LABEL_150:
      v25 = *(a1 + 336);
      for (i = *v25; i; i = *(i + 64))
      {
        *(i + 52) &= 0xFFF3u;
      }

      v25[2] = v25[1];
      if (v25[9])
      {
        goto LABEL_83;
      }

      goto LABEL_114;
    }
  }

  v25 = *(a1 + 336);
  v26 = *v25;
  if (!*v25)
  {
    goto LABEL_82;
  }

  do
  {
    v27 = *(v26 + 24);
    v28 = *(v26 + 72);
    if (*(v27 + 16) == v26)
    {
      *(v27 + 16) = v28;
      v29 = *(v26 + 64);
      if (!v29)
      {
LABEL_75:
        *(v27 + 8) = v28;
        if (!v28)
        {
          *v27 = 0;
          *(v27 + 49) = 2;
          goto LABEL_77;
        }

LABEL_76:
        *(v28 + 64) = v29;
        goto LABEL_77;
      }
    }

    else
    {
      v29 = *(v26 + 64);
      if (!v29)
      {
        goto LABEL_75;
      }
    }

    *(v29 + 72) = v28;
    if (v28)
    {
      goto LABEL_76;
    }

    *v27 = v29;
LABEL_77:
    *(v26 + 52) = *(v26 + 52) & 0xFFF0 | 1;
    if (!*(v26 + 56) && *(v27 + 48))
    {
      xmmword_1ED452F80(*(v27 + 72), *v26, 0);
    }

    v26 = *v25;
  }

  while (*v25);
  v25 = *(a1 + 336);
LABEL_82:
  if (v25[9])
  {
LABEL_83:
    v30 = *(a1 + 32);
    v31 = *v25;
    if (!*v25)
    {
LABEL_98:
      if (!v30)
      {
        if (v25[3] && (v35 = (*(&xmmword_1ED452F70 + 1))(v25[9])) != 0)
        {
          bzero(*v35, *(v25 + 10));
          v30 = 1;
        }

        else
        {
          v30 = 0;
        }
      }

      xmmword_1ED452F90(v25[9], v30 + 1);
      goto LABEL_114;
    }

    while (2)
    {
      v32 = v31;
      v31 = *(v31 + 64);
      if (*(v32 + 48) > v30)
      {
        v33 = *(v32 + 24);
        v34 = *(v32 + 72);
        if (*(v33 + 16) == v32)
        {
          *(v33 + 16) = v34;
          if (!v31)
          {
            goto LABEL_92;
          }

LABEL_89:
          *(v31 + 72) = v34;
          if (v34)
          {
LABEL_93:
            *(v34 + 64) = v31;
          }

          else
          {
            *v33 = v31;
          }
        }

        else
        {
          if (v31)
          {
            goto LABEL_89;
          }

LABEL_92:
          *(v33 + 8) = v34;
          if (v34)
          {
            goto LABEL_93;
          }

          *v33 = 0;
          *(v33 + 49) = 2;
        }

        *(v32 + 52) = *(v32 + 52) & 0xFFF0 | 1;
        if (!*(v32 + 56) && *(v33 + 48))
        {
          xmmword_1ED452F80(*(v33 + 72), *v32, 0);
        }
      }

      if (!v31)
      {
        goto LABEL_98;
      }

      continue;
    }
  }

LABEL_114:
  v40 = *(a1 + 344);
  if (v40)
  {
    if (*(v40 + 64))
    {
      if (!*(v40 + 63))
      {
        (*(**(v40 + 8) + 112))(*(v40 + 8), 0, 1, 9);
      }

      *(v40 + 64) = 0;
      *(v40 + 124) = 0;
      *(v40 + 67) = 0;
    }
  }

  else if (a3 && !v16)
  {
    v42 = *(a1 + 32);
    if (*(a1 + 40) <= v42)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_1818F8F88(a1, v42);
    }
  }

  if (a3)
  {
    if (!v16)
    {
      v41 = *(a1 + 72);
      if (!*v41 || (v16 = (*(*v41 + 80))(v41, 22, 0), v16 == 12))
      {
        v16 = 0;
      }
    }
  }

  if (*(a1 + 8))
  {
    goto LABEL_125;
  }

  v43 = *(a1 + 344);
  if (!v43)
  {
LABEL_139:
    v44 = *(a1 + 72);
    if (*v44)
    {
      if (*(a1 + 17))
      {
        LODWORD(result) = 0;
      }

      else
      {
        LODWORD(result) = (*(*v44 + 64))(v44, 1);
      }

      if (*(a1 + 22) != 5)
      {
        *(a1 + 22) = 1;
      }
    }

    else
    {
      LODWORD(result) = 0;
    }

    *(a1 + 23) = *(a1 + 16);
    goto LABEL_126;
  }

  if (!*(v43 + 63))
  {
LABEL_125:
    LODWORD(result) = 0;
    goto LABEL_126;
  }

  *(v43 + 63) = 0;
  if (!(*(**(v43 + 8) + 112))(*(v43 + 8), (*(v43 + 60) + 3), 1, 6))
  {
    if (!*(v43 + 63))
    {
      goto LABEL_139;
    }

    goto LABEL_125;
  }

  LODWORD(result) = 0;
  *(v43 + 63) = 1;
LABEL_126:
  *(a1 + 21) = 1;
  *(a1 + 24) = 0;
  if (v16)
  {
    return v16;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1818CD8F0(uint64_t a1)
{
  result = sub_1818EFAC4(*(a1 + 64));
  *(a1 + 64) = 0;
  if (*(a1 + 128) >= 1)
  {
    v3 = 0;
    v4 = 16;
    do
    {
      result = sub_1818EFAC4(*(*(a1 + 120) + v4));
      ++v3;
      v4 += 56;
    }

    while (v3 < *(a1 + 128));
  }

  v5 = *(a1 + 88);
  v6 = *v5;
  if (*(a1 + 8))
  {
    if (v6 != &unk_1EEF8FF50)
    {
      goto LABEL_9;
    }

    v6 = &unk_1EEF8FF50;
  }

  else if (!v6)
  {
    goto LABEL_9;
  }

  result = v6[1](*(a1 + 88));
  *v5 = 0;
LABEL_9:
  v7 = *(a1 + 120);
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_15;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v7);
  --qword_1ED456A90;
  result = off_1ED452EB0(v7);
  v7 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v8 = &xmmword_1ED452F28;
LABEL_15:
    result = (*v8)(v7);
  }

LABEL_16:
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 60) = 0;
  v9 = *(a1 + 344);
  if (v9)
  {
    v10 = (a1 + 21);
    if (*(a1 + 21) == 6 && *(v9 + 64))
    {
      v11 = *(a1 + 344);
      if (!*(v9 + 63))
      {
        result = (*(**(v9 + 8) + 112))(*(v9 + 8), 0, 1, 9);
        v11 = *(a1 + 344);
      }

      *(v9 + 64) = 0;
      *(v9 + 124) = 0;
      *(v9 + 67) = 0;
      v9 = v11;
    }

    if ((*(v9 + 60) & 0x80000000) == 0)
    {
      if (*(v9 + 64))
      {
        if (!*(v9 + 63))
        {
          result = (*(**(v9 + 8) + 112))(*(v9 + 8), 0, 1, 9);
        }

        *(v9 + 64) = 0;
        *(v9 + 124) = 0;
        *(v9 + 67) = 0;
      }

      if (!*(v9 + 63))
      {
        result = (*(**(v9 + 8) + 112))(*(v9 + 8), (*(v9 + 60) + 3), 1, 5);
      }

      *(v9 + 60) = -1;
    }
  }

  else
  {
    if (*(a1 + 8))
    {
      goto LABEL_48;
    }

    v12 = *(a1 + 72);
    if (!*v12 || ((*(*v12 + 96))(v12) & 0x800) == 0 || (*(a1 + 9) & 5) != 1)
    {
      v13 = *(a1 + 80);
      if (*v13)
      {
        (*(*v13 + 8))(*(a1 + 80));
        *v13 = 0;
      }
    }

    result = *(a1 + 72);
    if (*result)
    {
      if (*(a1 + 17))
      {
        v14 = 1;
      }

      else
      {
        result = (*(*result + 64))(result, 0);
        v14 = result == 0;
      }

      if (*(a1 + 22) != 5)
      {
        *(a1 + 22) = 0;
      }

      *(a1 + 23) = *(a1 + 16);
      if (!v14 && *(a1 + 21) == 6)
      {
        *(a1 + 22) = 5;
      }
    }

    else
    {
      *(a1 + 23) = *(a1 + 16);
    }

    v10 = (a1 + 21);
  }

  *v10 = 0;
LABEL_48:
  if (*(a1 + 48))
  {
    if (*(a1 + 16))
    {
      v15 = **(a1 + 80) == 0;
    }

    else
    {
      result = sub_181934D80(a1);
      v15 = 0;
      *(a1 + 23) = 0;
    }

    *(a1 + 21) = v15;
    if (*(a1 + 27))
    {
      result = (*(**(a1 + 72) + 144))(*(a1 + 72), 0, 0);
      v16 = *(a1 + 27);
      *(a1 + 48) = 0;
      if (v16)
      {
        v17 = sub_181933ED8;
        if (!*(a1 + 296))
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      *(a1 + 48) = 0;
    }

    v17 = sub_18193417C;
LABEL_58:
    *(a1 + 288) = v17;
  }

  *(a1 + 24) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_1818CDC54(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 32 * a2 + 24);
  for (i = *(v4 + 16); i; i = *i)
  {
    *(i[2] + 48) &= ~0x10u;
  }

  v6 = *(v4 + 40);
  if (v6)
  {
    do
    {
      *(v6[2] + 99) &= ~0x80u;
      v6 = *v6;
    }

    while (v6);
    v3 = *(a1 + 32);
  }

  v7 = *(v3 + 32 * a2);
  v29[0] = a1;
  v29[1] = v7;
  v8 = sub_181917F20(a1, "sqlite_stat1", v7);
  if (v8 && !*(v8 + 63))
  {
    v23 = sub_1818A8BAC(a1, "SELECT tbl,idx,stat FROM %Q.sqlite_stat1", v9, v10, v11, v12, v13, v14, v7);
    if (v23)
    {
      v24 = v23;
      v15 = sqlite3_exec(a1, v23, sub_1818F70D8, v29, 0);
      sub_181929C84(a1, v24);
      v16 = *(v4 + 40);
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15 = 7;
      v16 = *(v4 + 40);
      if (!v16)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = *(v4 + 40);
    if (!v16)
    {
      goto LABEL_27;
    }
  }

  do
  {
    v17 = v16[2];
    if ((*(v17 + 99) & 0x80) == 0)
    {
      if (*(v17 + 94) >= 5u)
      {
        v18 = 5;
      }

      else
      {
        v18 = *(v17 + 94);
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      v21 = *(v19 + 58);
      if (v21 <= 98)
      {
        LOWORD(v21) = 99;
        *(v19 + 58) = 99;
      }

      if (*(v17 + 72))
      {
        LOWORD(v21) = v21 - 10;
      }

      *v20 = v21;
      memcpy(v20 + 1, &unk_181A20E32, 2 * (v18 & 0x7FFF));
      LODWORD(v22) = *(v17 + 94);
      if (v18 < v22)
      {
        do
        {
          v20[v18 + 1] = 23;
          v22 = *(v17 + 94);
          ++v18;
        }

        while (v18 < v22);
      }

      if (*(v17 + 98))
      {
        v20[v22] = 0;
      }
    }

    v16 = *v16;
  }

  while (v16);
LABEL_27:
  if (v15 == 7 && !*(a1 + 103) && !*(a1 + 104))
  {
    *(a1 + 103) = 1;
    if (*(a1 + 220) >= 1)
    {
      *(a1 + 424) = 1;
    }

    ++*(a1 + 432);
    *(a1 + 436) = 0;
    v26 = *(a1 + 344);
    if (v26)
    {
      sub_181910730(v26, "out of memory", v9, v10, v11, v12, v13, v14, v28);
      for (j = *(a1 + 344); ; ++*(j + 52))
      {
        *(j + 24) = 7;
        j = *(j + 216);
        if (!j)
        {
          break;
        }
      }
    }
  }

  return v15;
}

int sqlite3_get_table(sqlite3 *db, const char *zSql, char ***pazResult, int *pnRow, int *pnColumn, char **pzErrmsg)
{
  if (pazResult)
  {
    *pazResult = 0;
  }

  if (pnColumn)
  {
    *pnColumn = 0;
  }

  if (pnRow)
  {
    *pnRow = 0;
  }

  if (pzErrmsg)
  {
    *pzErrmsg = 0;
  }

  if (!db)
  {
    v7 = "NULL";
    goto LABEL_20;
  }

  v6 = *(db + 113);
  if (v6 == 186)
  {
LABEL_13:
    v7 = "unopened";
LABEL_20:
    sqlite3_log(21, "API call with %s database connection pointer", v7);
    goto LABEL_21;
  }

  if (v6 != 118)
  {
    if (v6 != 109)
    {
      v7 = "invalid";
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (!pazResult)
  {
LABEL_21:

    return sub_1819012D0(162570);
  }

  v27 = 0uLL;
  v28 = xmmword_181A1FD60;
  v29 = 0;
  if (sqlite3_initialize() || (v15 = sub_181902484(160, 0x10040436913F5), (*&v27 = v15) == 0))
  {
LABEL_17:
    result = 7;
    *(db + 20) = 7;
    return result;
  }

  *v15 = 0;
  v16 = sqlite3_exec(db, zSql, sub_1818D10D4, &v27, pzErrmsg);
  *v27 = HIDWORD(v28);
  if (v16 == 4)
  {
    sqlite3_free_table((v27 + 8));
    v17 = *(&v27 + 1);
    v18 = db;
    if (!*(&v27 + 1))
    {
      goto LABEL_42;
    }

    if (!pzErrmsg)
    {
LABEL_36:
      v21 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v17);
        --qword_1ED456A90;
        off_1ED452EB0(v17);
        v17 = xmmword_1ED456AF0;
        v18 = db;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_42;
        }

        v21 = &xmmword_1ED452F28;
      }

      (*v21)(v17);
      v18 = db;
LABEL_42:
      result = v29;
      *(v18 + 20) = v29;
      return result;
    }

    v19 = *pzErrmsg;
    if (*pzErrmsg)
    {
      v20 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_34:
        (*v20)(v19);
        goto LABEL_35;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v19);
      --qword_1ED456A90;
      off_1ED452EB0(v19);
      v19 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v20 = &xmmword_1ED452F28;
        goto LABEL_34;
      }
    }

LABEL_35:
    *pzErrmsg = sqlite3_mprintf("%s", *(&v27 + 1));
    v17 = *(&v27 + 1);
    v18 = db;
    if (!*(&v27 + 1))
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v22 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    v23 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      v24 = v16;
      goto LABEL_50;
    }

    v24 = v16;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v22);
    --qword_1ED456A90;
    off_1ED452EB0(v22);
    v22 = xmmword_1ED456AF0;
    v16 = v24;
    if (xmmword_1ED456AF0)
    {
      v23 = &xmmword_1ED452F28;
LABEL_50:
      (*v23)(v22);
      v16 = v24;
    }
  }

  if (v16)
  {
    v25 = v16;
    sqlite3_free_table((v27 + 8));
    return v25;
  }

  v26 = v27;
  if (v28 > HIDWORD(v28))
  {
    v26 = sub_18190287C(v27, 8 * HIDWORD(v28), 0x10040436913F5);
    if (!v26)
    {
      sqlite3_free_table((v27 + 8));
      goto LABEL_17;
    }
  }

  *pazResult = (v26 + 8);
  if (pnColumn)
  {
    *pnColumn = DWORD2(v28);
  }

  result = 0;
  if (pnRow)
  {
    *pnRow = DWORD1(v28);
  }

  return result;
}

uint64_t sub_1818CE2C0(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = *(a1 + 20);
  v7 = *(a1 + 24);
  if (result < v7)
  {
LABEL_4:
    v14 = *(a1 + 32);
    *(a1 + 20) = result + 1;
    v15 = v14 + 56 * result;
    if ((a3 & 2) == 0)
    {
      *(a1 + 28) = result + 1;
    }

    if (!a2)
    {
      *(v15 + 16) = 1;
LABEL_10:
      *(v15 + 18) = a3;
      *v15 = a2;
      *(v15 + 8) = a1;
      *(v15 + 20) = 0u;
      *(v15 + 36) = 0u;
      *(v15 + 52) = 0;
      return result;
    }

    if ((*(a2 + 6) & 8) == 0)
    {
      v16 = 1;
      goto LABEL_30;
    }

    v17 = *(a2 + 44);
    if (v17 >= 8)
    {
      v18 = 40;
      if (v17 >= 0x100)
      {
        v19 = *(a2 + 44);
        do
        {
          v18 += 40;
          v17 = v19 >> 4;
          v20 = v19 > 0xFFF;
          v19 >>= 4;
        }

        while (v20);
      }

      if (v17 < 0x10)
      {
        LOBYTE(v21) = v17;
      }

      else
      {
        do
        {
          v18 += 10;
          v21 = v17 >> 1;
          v20 = v17 > 0x1F;
          v17 >>= 1;
        }

        while (v20);
      }
    }

    else
    {
      if (v17 < 2)
      {
        v16 = -270;
        goto LABEL_30;
      }

      v18 = 40;
      do
      {
        v18 -= 10;
        LOBYTE(v21) = 2 * v17;
        v22 = v17 >= 4;
        v17 *= 2;
      }

      while (!v22);
    }

    v16 = v18 + word_181A27AA2[v21 & 7] - 280;
LABEL_30:
    *(v15 + 16) = v16;
    while (1)
    {
      v24 = *(a2 + 4);
      if ((v24 & 0x82000) == 0)
      {
        goto LABEL_10;
      }

      if ((v24 & 0x80000) != 0)
      {
        v23 = (*(a2 + 32) + 8);
      }

      else
      {
        if (*a2 != 114)
        {
          goto LABEL_10;
        }

        v23 = (a2 + 16);
      }

      a2 = *v23;
      if (!*v23)
      {
        goto LABEL_10;
      }
    }
  }

  v8 = *(a1 + 32);
  v9 = *a1;
  v10 = ***a1;
  v11 = 112 * v7;
  v12 = sub_181929E8C(v10, 112 * v7 + 16, 0x1020040EDED9539);
  if (v12)
  {
    *v12 = v9[11];
    v12[1] = v11;
    v9[11] = v12;
    v13 = v12 + 2;
    *(a1 + 32) = v13;
    memcpy(v13, v8, 56 * *(a1 + 20));
    result = *(a1 + 20);
    *(a1 + 24) *= 2;
    goto LABEL_4;
  }

  *(a1 + 32) = 0;
  if (a2 && (a3 & 1) != 0)
  {
    sub_1819439E0(v10, a2);
  }

  result = 0;
  *(a1 + 32) = v8;
  return result;
}

void sub_1818CE4CC(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, char a9)
{
  v405[1] = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v404[0] = 0;
  v403 = 0;
  v402 = 0;
  v10 = **v9;
  if (*(v10 + 103))
  {
    return;
  }

  v12 = a2;
  v400 = *v9;
  v401 = v9;
  v14 = a2[4] + 56 * a3;
  v15 = (v9 + 592);
  v16 = *v14;
  *(v9 + 592) = 0;
  v17 = *(v16 + 2);
  if (!v17)
  {
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  if (*v17 != 168 || (*(v17 + 1) & 0x20) != 0)
  {
    if ((*(v17 + 1) & 0x810000) == 0)
    {
      v19 = sub_1819725E8((v9 + 592), v17);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v20 = *(v17 + 11);
  if (*(v9 + 600) == v20)
  {
    v19 = 1;
    goto LABEL_16;
  }

  v21 = *(v9 + 596);
  if (v21 < 2)
  {
    goto LABEL_15;
  }

  v22 = (v9 + 604);
  v23 = 1;
  while (1)
  {
    v24 = *v22++;
    if (v24 == v20)
    {
      break;
    }

    if (v21 == ++v23)
    {
      goto LABEL_15;
    }
  }

  v19 = 1 << v23;
LABEL_16:
  v25 = *v16;
  v397 = v10;
  v398 = a1;
  if (v25 != 50)
  {
    v34 = *(v16 + 3);
    if (!v34)
    {
      v37 = 0;
      v28 = v401;
      goto LABEL_56;
    }

    v35 = *v34 == 168 && (*(v34 + 1) & 0x20) == 0;
    v28 = v401;
    if (v35)
    {
      v46 = *(v34 + 11);
      if (v401[150] == v46)
      {
        v37 = 1;
        goto LABEL_56;
      }

      v48 = v401[149];
      if (v48 >= 2)
      {
        v49 = (v401 + 151);
        v50 = 1;
        while (1)
        {
          v51 = *v49++;
          if (v51 == v46)
          {
            break;
          }

          if (v48 == ++v50)
          {
            goto LABEL_55;
          }
        }

        v37 = 1 << v50;
LABEL_56:
        *(v14 + 40) = v37;
        v52 = *(v16 + 1);
        if (*(v16 + 2))
        {
          v53 = (v52 & 0x41000) == 0;
        }

        else
        {
          v53 = 0;
        }

        if (v53 && !*(v16 + 4))
        {
          v57 = v37 | v19;
          if (!*v15)
          {
            goto LABEL_83;
          }
        }

        else
        {
          if (*v16 != 168 || (*(v16 + 1) & 0x20) != 0)
          {
            if ((v52 & 0x810000) == 0)
            {
              v55 = v19;
              v56 = sub_1819725E8(v15, v16);
              v28 = v401;
              v19 = v55;
              v57 = v56;
              if (!*v15)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }

LABEL_76:
            v57 = 0;
            if (!*v15)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          v58 = *(v16 + 11);
          if (v28[150] == v58)
          {
            v57 = 1;
            if (!*v15)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          v59 = v28[149];
          if (v59 < 2)
          {
            goto LABEL_76;
          }

          v60 = (v28 + 151);
          v61 = 1;
          while (1)
          {
            v62 = *v60++;
            if (v62 == v58)
            {
              break;
            }

            if (v59 == ++v61)
            {
              goto LABEL_76;
            }
          }

          v57 = 1 << v61;
          if (!*v15)
          {
            goto LABEL_83;
          }
        }

LABEL_82:
        *(v14 + 18) |= 0x1000u;
        goto LABEL_83;
      }
    }

    else if ((*(v34 + 1) & 0x810000) == 0)
    {
      v36 = v19;
      v37 = sub_1819725E8(v15, v34);
      v28 = v401;
      v19 = v36;
      goto LABEL_56;
    }

LABEL_55:
    v37 = 0;
    goto LABEL_56;
  }

  v26 = v19;
  v27 = sub_18195B27C(v400, v16, a3, a4, a5, a6, a7, a8);
  v28 = v401;
  if (v27)
  {
    return;
  }

  v29 = *(v16 + 4);
  v393 = v12;
  if ((v16[5] & 0x10) != 0)
  {
    v30 = v15;
    v47 = sub_181971618(v15, v29);
    v28 = v401;
    v33 = v47;
    v19 = v26;
  }

  else
  {
    v19 = v26;
    v30 = v15;
    if (v29)
    {
      v31 = *v29;
      if (*v29 >= 1)
      {
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v39 = v29[3 * v32 + 1];
          if (v39)
          {
            if (*v39 == 168 && (*(v39 + 1) & 0x20) == 0)
            {
              v41 = *(v39 + 11);
              if (v28[150] == v41)
              {
                v38 = 1;
                goto LABEL_31;
              }

              v42 = v28[149];
              if (v42 >= 2)
              {
                v43 = (v401 + 151);
                v44 = 1;
                while (1)
                {
                  v45 = *v43++;
                  if (v45 == v41)
                  {
                    break;
                  }

                  if (v42 == ++v44)
                  {
                    goto LABEL_30;
                  }
                }

                v38 = 1 << v44;
                goto LABEL_31;
              }
            }

            else if ((*(v39 + 1) & 0x810000) == 0)
            {
              v38 = sub_1819725E8(v15, v39);
              v28 = v401;
              v19 = v26;
              v31 = *v29;
              goto LABEL_31;
            }
          }

LABEL_30:
          v38 = 0;
LABEL_31:
          v33 |= v38;
          if (++v32 >= v31)
          {
            goto LABEL_81;
          }
        }
      }
    }

    v33 = 0;
  }

LABEL_81:
  *(v14 + 40) = v33;
  v57 = v33 | v19;
  v15 = v30;
  v12 = v393;
  a1 = v398;
  if (*v15)
  {
    goto LABEL_82;
  }

LABEL_83:
  v63 = *(v16 + 1);
  if ((v63 & 3) == 0)
  {
LABEL_87:
    v392 = 0;
LABEL_98:
    v395 = a3;
    v396 = a3;
    *(v14 + 48) = v57;
    *(v14 + 24) = -1;
    *(v14 + 20) = 0;
    v391 = v15;
    if (v25 <= 0x3A && (v25 > 0x35 || v25 == 45 || (v25 & 0x3E) == 0x32))
    {
      for (i = *(v16 + 2); i; i = *(i + 2))
      {
        if ((i[5] & 0x20) == 0)
        {
          break;
        }
      }

      for (j = *(v16 + 3); j; j = *(j + 2))
      {
        if ((j[5] & 0x20) == 0)
        {
          break;
        }
      }

      if ((*(v14 + 40) & v19) != 0)
      {
        v77 = 2048;
      }

      else
      {
        v77 = 0x3FFF;
      }

      v78 = *(v14 + 36);
      v79 = __OFSUB__(v78, 1);
      v80 = v78 - 1;
      if (v80 < 0 == v79)
      {
        i = *(*(i + 4) + 24 * v80 + 8);
      }

      v389 = v19;
      v81 = *i;
      v82 = i;
      if (v25 - 55 <= 3 && v81 == 177)
      {
        v82 = *(*(i + 4) + 8);
        v81 = *v82;
      }

      if (v81 == 168)
      {
        v83 = *(v82 + 44);
        v405[0] = v83;
      }

      else
      {
        v87 = *v398;
        if (v87 < 1)
        {
          goto LABEL_163;
        }

        a4 = 0;
        v28 = v401;
        while (1)
        {
          v88 = *(*&v398[18 * a4 + 6] + 16);
          if (v88)
          {
            break;
          }

LABEL_136:
          if (++a4 == v87)
          {
            goto LABEL_163;
          }
        }

        while (!*(v88 + 80))
        {
          v88 = *(v88 + 40);
          if (!v88)
          {
            goto LABEL_136;
          }
        }

        v102 = sub_181972B58(v398, v405, v82, a4);
        v28 = v401;
        if (!v102)
        {
LABEL_163:
          if (v25 == 45)
          {
            *(v14 + 18) |= 0x800u;
          }

          if (j)
          {
            v104 = *j;
            v105 = j;
            if (v25 - 55 <= 3 && v104 == 177)
            {
              v105 = *(*(j + 4) + 8);
              v104 = *v105;
            }

            if (v104 == 168)
            {
              v405[0] = *(v105 + 44);
            }

            else
            {
              v106 = *v398;
              if (v106 < 1)
              {
                goto LABEL_188;
              }

              v107 = 0;
              v28 = v401;
              while (1)
              {
                v108 = *(*&v398[18 * v107 + 6] + 16);
                if (v108)
                {
                  break;
                }

LABEL_173:
                if (++v107 == v106)
                {
                  goto LABEL_188;
                }
              }

              while (!*(v108 + 80))
              {
                v108 = *(v108 + 40);
                if (!v108)
                {
                  goto LABEL_173;
                }
              }

              v109 = sub_181972B58(v398, v405, v105, v107);
              v28 = v401;
              if (!v109)
              {
                goto LABEL_188;
              }
            }

            if ((j[4] & 0x20) == 0)
            {
              if ((*(v14 + 28) & 0x80000000) != 0)
              {
                v120 = 0;
                v111 = v16;
                v121 = v14;
              }

              else
              {
                if (v16)
                {
                  v110 = sub_1818C7FEC(v397, v16, 0, 0);
                  v111 = v110;
                  if (*(v397 + 103))
                  {
                    if (v110)
                    {
                      sub_1819439E0(v397, v110);
                    }

                    return;
                  }
                }

                else
                {
                  if (*(v397 + 103))
                  {
                    return;
                  }

                  v111 = 0;
                }

                v141 = sub_1818CE2C0(v12, v111, 3);
                if (!v141)
                {
                  return;
                }

                v142 = *(v12 + 32);
                v14 = v142 + 56 * v141;
                *(v14 + 24) = a3;
                v143 = v142 + 56 * a3;
                *(v14 + 16) = *(v143 + 16);
                ++*(v143 + 22);
                if (v25 == 45)
                {
                  *(v14 + 18) |= 0x800u;
                }

                v121 = v142 + 56 * a3;
                *(v121 + 18) |= 8u;
                if (sub_181971C28(v400, v111))
                {
                  *(v121 + 20) |= 0x800u;
                  v120 = 2048;
                }

                else
                {
                  v120 = 0;
                }
              }

              sub_181971DD0(v400, v111, v105, a4, a5, a6, a7, a8);
              *(v14 + 28) = v405[0];
              *(v14 + 40) = v392 | v389;
              *(v14 + 48) = v57;
              v122 = v111->u8[0];
              if (v122 == 51)
              {
                v123 = 256;
              }

              else
              {
                v123 = 128;
              }

              if (v122 == 50)
              {
                v123 = 1;
              }

              v124 = v122 >= 0x36;
              v125 = 2 << (v122 - 54);
              if (!v124)
              {
                LOWORD(v125) = v123;
              }

              *(v14 + 20) = (v125 + v120) & v77;
              v14 = v121;
              goto LABEL_266;
            }
          }

LABEL_188:
          if (v25 == 51)
          {
            v112 = *(v16 + 1);
            v71 = v397;
            if ((v112 & 1) == 0)
            {
              while (1)
              {
                v113 = *i;
                if ((v113 - 173) >= 2)
                {
                  break;
                }

                i = *(i + 2);
              }

              if (v113 == 176)
              {
                v113 = i[2];
              }

              if ((v113 - 154) < 3 || v113 == 118 || v113 == 168 && (i[6] & 0x20) == 0 && (v114 = *(i + 9)) != 0 && ((v115 = *(i + 12), (v115 & 0x80000000) != 0) || (v116 = *(v114 + 8)) == 0 || v115 >= *(v114 + 54) || (*(v116 + 16 * v115 + 8) & 0xF) != 0))
              {
                *v16 = -85;
                *(v16 + 1) = "false";
                *(v16 + 1) = v112 | 0x20000000;
                *(v14 + 48) = 0;
                *(v14 + 20) = 0;
              }
            }
          }

          else
          {
            v71 = v397;
          }

          goto LABEL_268;
        }

        v83 = v405[0];
      }

      *(v14 + 28) = v83;
      if (v25 == 51)
      {
        v103 = 256;
      }

      else
      {
        v103 = 128;
      }

      if (v25 == 50)
      {
        v103 = 1;
      }

      if (v25 >= 0x36)
      {
        v103 = 2 << (v25 - 54);
      }

      *(v14 + 20) = v103 & v77;
      goto LABEL_163;
    }

    v70 = *v16;
    if (v70 > 0x33)
    {
      v71 = v397;
      if (v70 == 52)
      {
        v94 = *(v16 + 2);
        if (*v94 == 168 && (v63 & 1) == 0 && (*(v94 + 12) & 0x80000000) == 0)
        {
          v95 = sub_1818C7FEC(v397, *(v16 + 2), 0, 0);
          v96 = sub_181929E8C(v397, 0x50uLL, 0x1032040B79D87BDLL);
          if (v96)
          {
            *(v96 + 32) = 0u;
            *(v96 + 48) = 0u;
            *(v96 + 64) = 0u;
            *v96 = 0u;
            *(v96 + 16) = 0u;
            *v96 = 122;
            *(v96 + 52) = -1;
            *(v96 + 40) = 1;
          }

          v97 = sub_18194F098(v400, 55, v95, v96);
          v98 = sub_1818CE2C0(v12, v97, 131);
          v28 = v401;
          if (v98)
          {
            v99 = *(v12 + 32) + 56 * v98;
            *(v99 + 40) = 0;
            *(v99 + 28) = *(v94 + 44);
            *(v99 + 20) = 4;
            v100 = *(v12 + 32);
            v101 = v100 + 56 * v98;
            *(v101 + 24) = a3;
            v14 = v100 + 56 * a3;
            *(v101 + 16) = *(v14 + 16);
            ++*(v14 + 22);
            *(v14 + 18) |= 8u;
            *(v99 + 48) = *(v14 + 48);
          }
        }

        goto LABEL_268;
      }

      if (v70 == 172)
      {
        if (*(v12 + 16) == 44)
        {
          if (sub_181971ECC(v400, v16, v404, &v403, &v402))
          {
            v84 = *(*(v16 + 4) + 32);
            v85 = v404[0];
            if (v404[0])
            {
              v86 = sub_1818C7FEC(v397, v404[0], 0, 0);
            }

            else
            {
              v86 = 0;
            }

            v144 = v402;
            if (v402)
            {
              if (!*(*v400 + 103))
              {
                *(v14 + 18) |= 0x400u;
                v145 = *(v85 + 1);
                v146 = *v145;
                if (*v145)
                {
                  v147 = 0;
                  do
                  {
                    *v145 = v146 & (~byte_181A204C8[v146] | 0xDF);
                    *(*(v86 + 8) + v147++) = byte_181A20298[v146];
                    v145 = (v147 + *(v85 + 1));
                    v146 = *v145;
                  }

                  while (*v145);
                }
              }
            }

            if (!*(v397 + 103))
            {
              v148 = *(v86 + 8);
              if (v148)
              {
                v149 = strlen(*(v86 + 8)) & 0x3FFFFFFF;
              }

              else
              {
                v149 = 0;
              }

              v337 = v148 + v149;
              v340 = *(v337 - 1);
              v338 = (v337 - 1);
              v339 = v340;
              if (v144)
              {
                if (v339 == 64)
                {
                  v403 = 0;
                }

                LODWORD(v339) = byte_181A20298[v339];
                *v338 = v339;
              }

              if (v339 == 191)
              {
                while (v338 > *(v86 + 8))
                {
                  *v338 = 0x80;
                  v341 = *--v338;
                  LOBYTE(v339) = v341;
                  if (v341 != 191)
                  {
                    goto LABEL_609;
                  }
                }

                LOBYTE(v339) = -65;
              }

LABEL_609:
              *v338 = v339 + 1;
            }

            if (v144)
            {
              v353 = "NOCASE";
            }

            else
            {
              v353 = "BINARY";
            }

            if (v84)
            {
              v354 = sub_1818C7FEC(v397, v84, 0, 0);
            }

            else
            {
              v354 = 0;
            }

            v355 = sub_18195F910(v400, v354, v353);
            v356 = sub_18194F098(v400, 58, v355, v85);
            if (v356 && (*(v16 + 1) & 3) != 0)
            {
              *(v356 + 4) |= *(v16 + 1) & 3;
              *(v356 + 56) = *(v16 + 14);
            }

            v357 = sub_1818CE2C0(v12, v356, 259);
            if (v84)
            {
              v358 = sub_1818C7FEC(v397, v84, 0, 0);
            }

            else
            {
              v358 = 0;
            }

            v359 = sub_18195F910(v400, v358, v353);
            v360 = sub_18194F098(v400, 57, v359, v86);
            if (v360 && (*(v16 + 1) & 3) != 0)
            {
              *(v360 + 4) |= *(v16 + 1) & 3;
              *(v360 + 56) = *(v16 + 14);
            }

            v361 = sub_1818CE2C0(v12, v360, 259);
            sub_1818CE4CC(v398, v12, v357);
            sub_1818CE4CC(v398, v12, v361);
            v362 = *(v12 + 32);
            v71 = v397;
            v14 = v362 + 56 * a3;
            if (v403)
            {
              v363 = v362 + 56 * v357;
              *(v363 + 24) = a3;
              v364 = v362 + 56 * a3;
              v365 = *(v364 + 16);
              *(v363 + 16) = v365;
              LOBYTE(v363) = *(v364 + 22);
              v366 = v362 + 56 * v361;
              *(v366 + 24) = a3;
              *(v366 + 16) = v365;
              *(v364 + 22) = v363 + 2;
            }
          }

          goto LABEL_267;
        }

        goto LABEL_268;
      }

LABEL_269:
      if (v70 == 54)
      {
LABEL_272:
        v154 = *(v16 + 2);
        v155 = *v154;
        if (v155 == 176)
        {
          v155 = v154[2];
        }

        v156 = *(v16 + 2);
        if (v155 != 177)
        {
          if (v155 != 139)
          {
            goto LABEL_327;
          }

          v156 = *(v154 + 4);
        }

        v157 = **(v156 + 32);
        if (v157 >= 2)
        {
          v158 = *(v16 + 3);
          v159 = *v158;
          if (v159 == 176)
          {
            v159 = v158[2];
          }

          v160 = *(v16 + 3);
          if (v159 != 177)
          {
            if (v159 != 139)
            {
              goto LABEL_327;
            }

            v160 = *(v158 + 4);
          }

          if (**(v160 + 32) == v157 && ((v154[5] & 0x10) == 0 || (v158[5] & 0x10) == 0) && *(v12 + 16) == 44)
          {
            v161 = 0;
            v162 = 8;
            v163 = v400;
            while (1)
            {
              v165 = *(v16 + 2);
              v166 = *v165;
              if (v166 == 177)
              {
                v175 = *(v165 + 4);
                v174 = *(v175 + v162);
                if (*(v163 + 302) >= 2u)
                {
                  *(v175 + v162) = 0;
                }

                else if (v174)
                {
                  goto LABEL_301;
                }
              }

              else
              {
                if (v166 != 139)
                {
                  v174 = *(v16 + 2);
LABEL_301:
                  v174 = sub_1818C7FEC(*v163, v174, 0, 0);
                  goto LABEL_303;
                }

                v167 = sub_181929E8C(*v163, 0x50uLL, 0x1032040B79D87BDLL);
                v174 = v167;
                if (v167)
                {
                  *(v167 + 32) = 0u;
                  *(v167 + 48) = 0u;
                  *(v167 + 64) = 0u;
                  *v167 = 0u;
                  *(v167 + 16) = 0u;
                  *v167 = -78;
                  *(v167 + 52) = -1;
                  *(v167 + 40) = 1;
                  if (*(*v163 + 148) <= 0)
                  {
                    sub_181910730(v163, "Expression tree is too large (maximum depth %d)", v168, v169, v170, v171, v172, v173, *(*v163 + 148));
                  }

                  *(v174 + 4) |= 0x20000u;
                  *(v174 + 44) = v157;
                  *(v174 + 48) = v161;
                  *(v174 + 16) = v165;
                }
              }

LABEL_303:
              v176 = *(v16 + 3);
              v177 = *v176;
              if (v177 != 177)
              {
                if (v177 == 139)
                {
                  v178 = sub_181929E8C(*v163, 0x50uLL, 0x1032040B79D87BDLL);
                  v184 = v178;
                  if (v178)
                  {
                    *(v178 + 32) = 0u;
                    *(v178 + 48) = 0u;
                    *(v178 + 64) = 0u;
                    *v178 = 0u;
                    *(v178 + 16) = 0u;
                    *v178 = -78;
                    *(v178 + 52) = -1;
                    *(v178 + 40) = 1;
                    if (*(*v163 + 148) <= 0)
                    {
                      v381 = *(*v163 + 148);
                      v185 = v163;
                      v186 = v184;
                      sub_181910730(v185, "Expression tree is too large (maximum depth %d)", v179, v184, v180, v181, v182, v183, v381);
                      v184 = v186;
                      v163 = v400;
                    }

                    *(v184 + 4) |= 0x20000u;
                    *(v184 + 44) = v157;
                    *(v184 + 48) = v161;
                    *(v184 + 16) = v176;
                  }

                  goto LABEL_315;
                }

                v184 = *(v16 + 3);
LABEL_313:
                v184 = sub_1818C7FEC(*v163, v184, 0, 0);
                goto LABEL_315;
              }

              v187 = *(v176 + 4);
              v184 = *(v187 + v162);
              if (*(v163 + 302) >= 2u)
              {
                *(v187 + v162) = 0;
              }

              else if (v184)
              {
                goto LABEL_313;
              }

LABEL_315:
              v188 = sub_18194F098(v163, *v16, v174, v184);
              if (v188 && (*(v16 + 1) & 3) != 0)
              {
                *(v188 + 4) |= *(v16 + 1) & 3;
                *(v188 + 56) = *(v16 + 14);
              }

              v164 = sub_1818CE2C0(v12, v188, 32769);
              sub_1818CE4CC(v398, v12, v164);
              ++v161;
              v162 += 24;
              if (v157 == v161)
              {
                v302 = *(v12 + 32) + 56 * v396;
                *(v302 + 18) |= 6u;
                *(v302 + 20) = 0x2000;
                goto LABEL_605;
              }
            }
          }
        }

LABEL_327:
        if (*(v12 + 16) != 44)
        {
          goto LABEL_605;
        }

        if (v70 == 172)
        {
          v194 = *(v16 + 4);
          if (v194 && *v194 == 2)
          {
            v195 = *(v194 + 32);
            if (*v195 == 168 && *(*(v195 + 9) + 63) == 1)
            {
              v196 = "match";
              v197 = *(v16 + 1);
              v198 = &off_1E6A27AC8;
              for (k = v197; ; ++k)
              {
                if (*k == *v196)
                {
                  if (!*k)
                  {
LABEL_356:
                    v211 = *(v198 + 8);
                    v203 = *(v194 + 8);
                    v204 = 1;
                    goto LABEL_368;
                  }
                }

                else if (byte_181A20298[*k] != byte_181A20298[*v196])
                {
                  v200 = "glob";
                  v201 = *(v16 + 1);
                  v198 = &off_1E6A27AD8;
                  while (1)
                  {
                    if (*v201 == *v200)
                    {
                      if (!*v201)
                      {
                        goto LABEL_356;
                      }
                    }

                    else if (byte_181A20298[*v201] != byte_181A20298[*v200])
                    {
                      v342 = "like";
                      v343 = *(v16 + 1);
                      v198 = &off_1E6A27AE8;
                      while (1)
                      {
                        if (*v343 == *v342)
                        {
                          if (!*v343)
                          {
                            goto LABEL_356;
                          }
                        }

                        else if (byte_181A20298[*v343] != byte_181A20298[*v342])
                        {
                          v344 = "regexp";
                          v198 = &off_1E6A27AF8;
                          while (1)
                          {
                            if (*v197 == *v344)
                            {
                              if (!*v197)
                              {
                                goto LABEL_356;
                              }
                            }

                            else if (byte_181A20298[*v197] != byte_181A20298[*v344])
                            {
                              goto LABEL_598;
                            }

                            ++v197;
                            ++v344;
                          }
                        }

                        ++v343;
                        ++v342;
                      }
                    }

                    ++v201;
                    ++v200;
                  }
                }

                ++v196;
              }
            }

LABEL_598:
            v195 = *(v194 + 8);
            if (*v195 == 168)
            {
              v345 = *(v195 + 9);
              if (*(v345 + 63) == 1)
              {
                v404[1] = 0;
                v405[0] = 0;
                v346 = (v345 + 80);
                do
                {
                  v347 = *v346;
                  v348 = *v346;
                  v349 = *v348;
                  v346 = (v348 + 5);
                }

                while (v349 != v71);
                v350 = *(*v347[2] + 144);
                if (v350)
                {
                  v351 = v350();
                  v28 = v401;
                  if (v351 >= 150)
                  {
                    v211 = v351;
                    v203 = *(v194 + 32);
                    v204 = 1;
LABEL_368:
                    v399 = (v28 + 151);
                    while (1)
                    {
                      v219 = v195;
                      if (!v203)
                      {
                        goto LABEL_386;
                      }

                      if (*v203 != 168 || (*(v203 + 1) & 0x20) != 0)
                      {
                        break;
                      }

                      v223 = *(v203 + 11);
                      if (v28[150] == v223)
                      {
                        v222 = 1;
                        if (!v195)
                        {
                          goto LABEL_403;
                        }

                        goto LABEL_387;
                      }

                      v224 = v28[149];
                      if (v224 < 2)
                      {
                        goto LABEL_386;
                      }

                      v225 = v399;
                      v226 = 1;
                      while (1)
                      {
                        v227 = *v225++;
                        if (v227 == v223)
                        {
                          break;
                        }

                        if (v224 == ++v226)
                        {
                          goto LABEL_386;
                        }
                      }

                      v222 = 1 << v226;
                      if (!v195)
                      {
LABEL_403:
                        if (v203)
                        {
                          v235 = sub_1818C7FEC(v71, v203, 0, 0);
                        }

                        else
                        {
                          v235 = 0;
                        }

                        v236 = sub_181929E8C(*v400, 0x50uLL, 0x1032040B79D87BDLL);
                        v243 = v236;
                        if (v236)
                        {
                          *(v236 + 48) = 0u;
                          *(v236 + 64) = 0u;
                          *(v236 + 16) = 0u;
                          *(v236 + 32) = 0u;
                          *v236 = 0u;
                          *v236 = 47;
                          *(v236 + 52) = -1;
                          if (v235)
                          {
                            *(v236 + 24) = v235;
                            *(v236 + 4) |= *(v235 + 4) & 0x400208;
                            v244 = *(v235 + 40) + 1;
                          }

                          else
                          {
                            v244 = 1;
                          }

                          *(v236 + 40) = v244;
                          if (*(*v400 + 148) < v244)
                          {
                            sub_181910730(v400, "Expression tree is too large (maximum depth %d)", v237, v238, v239, v240, v241, v242, *(*v400 + 148));
                          }

                          if (v16[4])
                          {
                            *(v243 + 4) |= 1u;
                            *(v243 + 56) = *(v16 + 14);
                          }
                        }

                        else if (v235)
                        {
                          sub_1819439E0(*v400, v235);
                        }

                        v213 = sub_1818CE2C0(v12, v243, 3);
                        v214 = *(v12 + 32) + 56 * v213;
                        *(v214 + 40) = v222;
                        *(v214 + 28) = *(v219 + 44);
                        *(v214 + 20) = 64;
                        *(v214 + 23) = v211;
                        v215 = *(v12 + 32);
                        v216 = v215 + 56 * v213;
                        *(v216 + 24) = v395;
                        v71 = v397;
                        v217 = v215 + 56 * v396;
                        *(v216 + 16) = *(v217 + 16);
                        ++*(v217 + 22);
                        *(v217 + 18) |= 8u;
                        *(v214 + 48) = *(v217 + 48);
                        v28 = v401;
                        goto LABEL_370;
                      }

LABEL_387:
                      if (*v195 == 168 && (*(v195 + 1) & 0x20) == 0)
                      {
                        v230 = *(v195 + 11);
                        if (v28[150] == v230)
                        {
                          if ((v222 & 1) == 0)
                          {
                            goto LABEL_403;
                          }
                        }

                        else
                        {
                          v231 = v28[149];
                          if (v231 < 2)
                          {
                            goto LABEL_403;
                          }

                          v232 = v399;
                          v233 = 1;
                          while (1)
                          {
                            v234 = *v232++;
                            if (v234 == v230)
                            {
                              break;
                            }

                            if (v231 == ++v233)
                            {
                              goto LABEL_403;
                            }
                          }

                          if (((1 << v233) & v222) == 0)
                          {
                            goto LABEL_403;
                          }
                        }
                      }

                      else
                      {
                        if ((*(v195 + 1) & 0x810000) != 0)
                        {
                          goto LABEL_403;
                        }

                        v229 = sub_1819725E8(v391, v195);
                        v28 = v401;
                        if ((v229 & v222) == 0)
                        {
                          goto LABEL_403;
                        }
                      }

LABEL_370:
                      v195 = v203;
                      v203 = v219;
                      v218 = v204-- <= 1;
                      if (v218)
                      {
                        goto LABEL_605;
                      }
                    }

                    if ((*(v203 + 1) & 0x810000) == 0)
                    {
                      v221 = sub_1819725E8(v391, v203);
                      v28 = v401;
                      v222 = v221;
                      if (!v195)
                      {
                        goto LABEL_403;
                      }

                      goto LABEL_387;
                    }

LABEL_386:
                    v222 = 0;
                    if (!v195)
                    {
                      goto LABEL_403;
                    }

                    goto LABEL_387;
                  }
                }
              }
            }
          }
        }

        else if (v70 <= 0x35 && ((1 << v70) & 0x30400000000000) != 0)
        {
          v203 = *(v16 + 2);
          v202 = *(v16 + 3);
          v204 = *v203 == 168 && *(*(v203 + 9) + 63) == 1;
          if (v202)
          {
            if (*v202 == 168 && *(*(v202 + 9) + 63) == 1)
            {
              ++v204;
              v195 = *(v16 + 3);
            }

            else
            {
              v195 = *(v16 + 2);
              v203 = *(v16 + 3);
            }
          }

          else
          {
            v195 = *(v16 + 2);
            v203 = 0;
          }

          v212 = v70 - 46;
          v211 = (v212 & 0xF8) != 0 ? 0 : 0x4446000000000045uLL >> (8 * v212);
          if (v204)
          {
            goto LABEL_368;
          }
        }

LABEL_605:
        v352 = *(v12 + 32) + 56 * v396;
        *(v352 + 40) |= v392;
        return;
      }

      if (v70 != 50)
      {
        if (v70 != 45)
        {
          goto LABEL_327;
        }

        goto LABEL_272;
      }

      if (*(v14 + 36))
      {
        goto LABEL_327;
      }

      v189 = *(v16 + 2);
      if (*v189 != 177)
      {
        goto LABEL_327;
      }

      if ((v16[5] & 0x10) == 0)
      {
        goto LABEL_327;
      }

      v190 = *(v16 + 4);
      if (*(v190 + 80))
      {
        if ((*(v190 + 5) & 2) == 0)
        {
          goto LABEL_327;
        }
      }

      if (*(v190 + 112) || *(v12 + 16) != 44)
      {
        goto LABEL_327;
      }

      v191 = 177;
      v192 = 1;
      v193 = v395;
      while (1)
      {
        v209 = v193;
        if (v191 == 177)
        {
          goto LABEL_348;
        }

        if (v191 == 139)
        {
          break;
        }

        v210 = 1;
LABEL_350:
        if (v192 - 1 >= v210)
        {
          goto LABEL_605;
        }

        v205 = sub_1818CE2C0(v12, v16, 32770);
        *(*(v12 + 32) + 56 * v205 + 36) = v192;
        sub_1818CE4CC(v398, v12, v205);
        v206 = *(v12 + 32);
        v207 = v206 + 56 * v205;
        v193 = v209;
        *(v207 + 24) = v209;
        v208 = v206 + 56 * v396;
        *(v207 + 16) = *(v208 + 16);
        ++*(v208 + 22);
        v189 = *(v16 + 2);
        v191 = *v189;
        ++v192;
        if (v191 == 176)
        {
          v191 = v189[2];
        }
      }

      v189 = *(v189 + 4);
LABEL_348:
      v210 = **(v189 + 4);
      goto LABEL_350;
    }

    v71 = v397;
    if (v70 != 43)
    {
      if (v70 == 49)
      {
        if (*(v12 + 16) == 44)
        {
          v72 = *(v16 + 4);
          v73 = *(v16 + 2);
          if (v73)
          {
            v74 = sub_1818C7FEC(v397, v73, 0, 0);
          }

          else
          {
            v74 = 0;
          }

          v126 = *(v72 + 8);
          if (v126)
          {
            v127 = sub_1818C7FEC(v397, v126, 0, 0);
          }

          else
          {
            v127 = 0;
          }

          v128 = sub_18194F098(v400, 58, v74, v127);
          if (v128 && (*(v16 + 1) & 3) != 0)
          {
            *(v128 + 4) |= *(v16 + 1) & 3;
            *(v128 + 56) = *(v16 + 14);
          }

          v129 = sub_1818CE2C0(v12, v128, 3);
          sub_1818CE4CC(v398, v12, v129);
          v130 = *(v12 + 32);
          v131 = v130 + 56 * v129;
          *(v131 + 24) = a3;
          v132 = v130 + 56 * a3;
          *(v131 + 16) = *(v132 + 16);
          ++*(v132 + 22);
          v133 = *(v16 + 2);
          if (v133)
          {
            v134 = sub_1818C7FEC(v397, v133, 0, 0);
          }

          else
          {
            v134 = 0;
          }

          v135 = *(v72 + 32);
          if (v135)
          {
            v136 = sub_1818C7FEC(v397, v135, 0, 0);
          }

          else
          {
            v136 = 0;
          }

          v137 = sub_18194F098(v400, 56, v134, v136);
          if (v137 && (*(v16 + 1) & 3) != 0)
          {
            *(v137 + 4) |= *(v16 + 1) & 3;
            *(v137 + 56) = *(v16 + 14);
          }

          v138 = sub_1818CE2C0(v12, v137, 3);
          sub_1818CE4CC(v398, v12, v138);
          v139 = *(v12 + 32);
          v140 = v139 + 56 * v138;
          *(v140 + 24) = a3;
          v14 = v139 + 56 * a3;
          *(v140 + 16) = *(v14 + 16);
          ++*(v14 + 22);
          goto LABEL_267;
        }

LABEL_268:
        v70 = *v16;
        goto LABEL_269;
      }

      goto LABEL_269;
    }

    v390 = *v12;
    v89 = **v12;
    v90 = *v89;
    v91 = a3;
    v92 = *(v12 + 32) + 56 * a3;
    v93 = *v92;
    v388 = *v89;
    v394 = v12;
    if (!*v89)
    {
      v117 = sub_181902484(496, 0x1022040838CBA82);
      goto LABEL_256;
    }

    if (*(v90 + 436) <= 0x1EFu)
    {
      if (*(v90 + 432))
      {
        if (*(v90 + 103))
        {
LABEL_257:
          *(v92 + 32) = 0;
          goto LABEL_265;
        }
      }

      else
      {
        ++*(v90 + 452);
      }

      goto LABEL_255;
    }

    v118 = *(v90 + 472);
    if (v118)
    {
      v119 = (v90 + 472);
    }

    else
    {
      v118 = *(v90 + 464);
      if (!v118)
      {
        ++*(v90 + 456);
LABEL_255:
        v117 = sub_18192A080(v90, 496, 0x1022040838CBA82);
LABEL_256:
        v118 = v117;
        if (!v117)
        {
          goto LABEL_257;
        }

        goto LABEL_261;
      }

      v119 = (v90 + 464);
    }

    *v119 = *v118;
    ++*(v90 + 448);
LABEL_261:
    v384 = v89;
    *(v118 + 464) = 0u;
    *(v118 + 480) = 0u;
    *(v118 + 432) = 0u;
    *(v118 + 448) = 0u;
    *(v118 + 400) = 0u;
    *(v118 + 416) = 0u;
    *(v118 + 368) = 0u;
    *(v118 + 384) = 0u;
    *(v118 + 336) = 0u;
    *(v118 + 352) = 0u;
    *(v118 + 304) = 0u;
    *(v118 + 320) = 0u;
    *(v118 + 272) = 0u;
    *(v118 + 288) = 0u;
    *(v118 + 240) = 0u;
    *(v118 + 256) = 0u;
    *(v118 + 208) = 0u;
    *(v118 + 224) = 0u;
    *(v118 + 176) = 0u;
    *(v118 + 192) = 0u;
    *(v118 + 144) = 0u;
    *(v118 + 160) = 0u;
    *(v118 + 112) = 0u;
    *(v118 + 128) = 0u;
    *(v118 + 80) = 0u;
    *(v118 + 96) = 0u;
    *(v118 + 48) = 0u;
    *(v118 + 64) = 0u;
    *(v118 + 16) = 0u;
    *(v118 + 32) = 0u;
    *v118 = 0u;
    *(v92 + 32) = v118;
    *(v92 + 18) |= 0x10u;
    *(v118 + 248) = 0u;
    *(v118 + 232) = 0u;
    *(v118 + 216) = 0u;
    *(v118 + 200) = 0u;
    *(v118 + 184) = 0u;
    *(v118 + 168) = 0u;
    *(v118 + 152) = 0u;
    *(v118 + 136) = 0u;
    *(v118 + 120) = 0u;
    *(v118 + 104) = 0u;
    *(v118 + 88) = 0u;
    *(v118 + 72) = 0u;
    *(v118 + 56) = 0u;
    *(v118 + 40) = 0u;
    *(v118 + 456) = 0u;
    *(v118 + 472) = 0u;
    *(v118 + 424) = 0u;
    *(v118 + 440) = 0u;
    *(v118 + 392) = 0u;
    *(v118 + 408) = 0u;
    *(v118 + 360) = 0u;
    *(v118 + 376) = 0u;
    *(v118 + 328) = 0u;
    *(v118 + 344) = 0u;
    *(v118 + 296) = 0u;
    *(v118 + 312) = 0u;
    *(v118 + 264) = 0u;
    *(v118 + 280) = 0u;
    *(v118 + 17) = 0;
    *v118 = v390;
    *(v118 + 8) = 0;
    *(v118 + 28) = 0;
    *(v118 + 20) = 0x800000000;
    *(v118 + 32) = v118 + 40;
    sub_18196A914(v118, v93, 43);
    v150 = *(v118 + 20);
    if (v150 >= 1)
    {
      v151 = v150 + 1;
      do
      {
        sub_1818CE4CC(a1, v118, v151 - 2);
        --v151;
      }

      while (v151 > 1);
    }

    v153 = v388;
    v152 = v390;
    if (*(v388 + 103))
    {
      goto LABEL_265;
    }

    v383 = v93;
    v245 = *(v118 + 20);
    if (v245 <= 0)
    {
      *(v118 + 488) = -1;
      *(v92 + 20) = 512;
      *(v92 + 28) = -1;
      v248 = -1;
      *(v394 + 17) = 1;
      v303 = v383;
      goto LABEL_525;
    }

    v382 = (v388 + 464);
    v246 = *(v118 + 32);
    v385 = (v388 + 472);
    v247 = -1;
    v248 = -1;
    while (1)
    {
      v249 = *(v246 + 20);
      if ((v249 & 0x1FF) != 0)
      {
        v250 = *(v246 + 18);
        if ((v250 & 8) == 0)
        {
          v251 = *(v246 + 28);
          v252 = *(v152 + 150);
          if (v252 == v251)
          {
            v253 = 1;
          }

          else
          {
            v256 = *(v152 + 149);
            if (v256 < 2)
            {
LABEL_435:
              v253 = 0;
            }

            else
            {
              v257 = v390 + 151;
              v258 = 1;
              while (1)
              {
                v259 = *v257++;
                if (v259 == v251)
                {
                  break;
                }

                if (v256 == ++v258)
                {
                  goto LABEL_435;
                }
              }

              v253 = 1 << v258;
            }
          }

          if ((v250 & 2) != 0)
          {
            v260 = *(*(v118 + 32) + 56 * *(v246 + 24) + 28);
            if (v252 == v260)
            {
              v261 = 1;
            }

            else
            {
              v262 = *(v152 + 149);
              if (v262 < 2)
              {
LABEL_445:
                v261 = 0;
              }

              else
              {
                v263 = v390 + 151;
                v264 = 1;
                while (1)
                {
                  v265 = *v263++;
                  if (v265 == v260)
                  {
                    break;
                  }

                  if (v262 == ++v264)
                  {
                    goto LABEL_445;
                  }
                }

                v261 = 1 << v264;
              }
            }

            v253 |= v261;
          }

          v247 &= v253;
          v280 = v253 & v248;
          if ((v249 & 2) != 0)
          {
            v248 = v280;
          }

          else
          {
            v248 = 0;
          }
        }

        goto LABEL_479;
      }

      if (*(v153 + 436) > 0x1E7u)
      {
        break;
      }

      if (!*(v153 + 432))
      {
        ++*(v153 + 452);
LABEL_447:
        v255 = sub_18192A080(v153, 488, 0x102204039E20F80);
        if (v255)
        {
          goto LABEL_448;
        }

        goto LABEL_454;
      }

      if (!*(v153 + 103))
      {
        goto LABEL_447;
      }

LABEL_454:
      v248 = 0;
      v152 = v390;
LABEL_479:
      if (v245 >= 2)
      {
        --v245;
        v246 += 56;
        if (v247)
        {
          continue;
        }
      }

      *(v118 + 488) = v247;
      *(v92 + 20) = 512;
      *(v92 + 28) = -1;
      if (v247)
      {
        v281 = *(v118 + 20);
        *(v394 + 17) = 1;
        if (v281 == 2)
        {
          v282 = 0;
          v283 = *(v118 + 32);
          while (1)
          {
LABEL_485:
            if (*(v283 + 20) == 1024)
            {
              v284 = *(v283 + 32);
              if (v282 >= *(v284 + 20))
              {
                break;
              }

              v285 = *(v284 + 32);
              if (!v285)
              {
                break;
              }

              v286 = v285 + 56 * v282;
            }

            else
            {
              v286 = v283;
              if (v282)
              {
                break;
              }
            }

            v287 = 0;
            ++v282;
            while (*(v283 + 76) == 1024)
            {
              v288 = *(v283 + 88);
              if (v287 >= *(v288 + 20))
              {
                v152 = v390;
                goto LABEL_485;
              }

              v289 = *(v288 + 32);
              v290 = (v289 + 56 * v287);
              if (!v289)
              {
                v152 = v390;
                goto LABEL_485;
              }

LABEL_497:
              if (((v290[9] | *(v286 + 18)) & 0x80) == 0)
              {
                v291 = *(v286 + 20);
                v292 = v290[10];
                if ((v291 & 0x3E) != 0 && (v292 & 0x3E) != 0)
                {
                  v294 = v292 | v291;
                  v295 = ((v292 | v291) & 0xFFE5) == 0 || (v294 & 0xFFD9) == 0;
                  if (v295 && !sub_181959260(0, *(*v286 + 16), *(*v290 + 16), 0xFFFFFFFFLL) && !sub_181959260(0, *(*v286 + 24), *(*v290 + 24), 0xFFFFFFFFLL))
                  {
                    v296 = (v294 & 0x18) != 0 ? 8 : 32;
                    v297 = ((v294 + 63) & v294) != 0 ? v296 : v294;
                    if (*v286)
                    {
                      v298 = sub_1818C7FEC(***v394, *v286, 0, 0);
                      if (v298)
                      {
                        v299 = 53;
                        do
                        {
                          v300 = 2 << (v299++ - 53);
                        }

                        while (v300 != v297);
                        *v298 = v299;
                        v301 = sub_1818CE2C0(v394, v298, 3);
                        sub_1818CE4CC(v398, v394, v301);
                      }
                    }
                  }
                }
              }

              ++v287;
              v283 = *(v118 + 32);
            }

            v290 = (v283 + 56);
            if (!v287)
            {
              goto LABEL_497;
            }

            v152 = v390;
          }
        }
      }

      v91 = v396;
      v303 = v383;
      if (!v248)
      {
        goto LABEL_265;
      }

LABEL_525:
      v304 = 0;
      v305 = 0;
      v306 = v152 + 151;
      v307 = -1;
LABEL_526:
      v308 = *(v118 + 20);
      if (v308 < 1)
      {
        goto LABEL_560;
      }

      v309 = *(v118 + 32);
      v310 = v309 + 18;
      while (1)
      {
        *(v309 + 18) &= ~0x40u;
        v312 = *(v309 + 28);
        if (v312 != v307)
        {
          if (*(v390 + 150) == v312)
          {
            v311 = 1;
          }

          else
          {
            v313 = *(v390 + 149);
            if (v313 < 2)
            {
LABEL_537:
              v311 = 0;
            }

            else
            {
              v314 = v306;
              v315 = 1;
              while (1)
              {
                v316 = *v314++;
                if (v316 == v312)
                {
                  break;
                }

                if (v313 == ++v315)
                {
                  goto LABEL_537;
                }
              }

              v311 = 1 << v315;
            }
          }

          if ((v311 & v248) != 0)
          {
            break;
          }
        }

        v309 += 56;
        v310 += 56;
        v218 = v308-- <= 1;
        if (v218)
        {
          goto LABEL_560;
        }
      }

      if (v308 < 1)
      {
        v305 = 1;
        goto LABEL_559;
      }

      v386 = v306;
      v387 = v304;
      v317 = *(v309 + 32);
      v318 = *(*v309 + 16);
      while (1)
      {
        if (*(v310 + 10) == v312)
        {
          if (*(v310 + 14) != v317)
          {
            v305 = 0;
            goto LABEL_558;
          }

          v319 = *(v310 - 18);
          if (v317 == -2)
          {
            if (sub_181959260(v384, *(v319 + 16), v318, 0xFFFFFFFFLL))
            {
              v305 = 0;
              v91 = v396;
LABEL_558:
              v304 = v387;
              v306 = v386;
LABEL_559:
              v307 = v312;
              if (v305 | v304++)
              {
LABEL_560:
                if (v305)
                {
                  v324 = *(v118 + 20);
                  if (v324 < 1)
                  {
                    v326 = 0;
                    v336 = 0;
                    v335 = v384;
LABEL_629:
                    v367 = sub_181929E8C(*v335, 0x50uLL, 0x1032040B79D87BDLL);
                    if (v367)
                    {
                      v374 = v367;
                      *(v367 + 32) = 0u;
                      *(v367 + 48) = 0u;
                      *(v367 + 64) = 0u;
                      *v367 = 0u;
                      *(v367 + 16) = 0u;
                      *v367 = 50;
                      *(v367 + 52) = -1;
                      v375 = 1;
                      *(v367 + 40) = 1;
                      if (v336)
                      {
                        *(v367 + 16) = v336;
                        *(v367 + 4) |= *(v336 + 4) & 0x400208;
                        v376 = *(v336 + 40);
                        if (v376 < 1)
                        {
                          v375 = 1;
                        }

                        else
                        {
                          v375 = v376 + 1;
                          *(v367 + 40) = v375;
                        }
                      }

                      if (*(*v335 + 148) < v375)
                      {
                        sub_181910730(v335, "Expression tree is too large (maximum depth %d)", v368, v369, v370, v371, v372, v373, *(*v335 + 148));
                      }

                      if ((*(v303 + 4) & 3) != 0)
                      {
                        *(v374 + 4) |= *(v303 + 4) & 3;
                        *(v374 + 56) = *(v303 + 56);
                      }

                      *(v374 + 32) = v326;
                      v377 = sub_1818CE2C0(v394, v374, 3);
                      sub_1818CE4CC(v398, v394, v377);
                      v378 = *(v394 + 32);
                      v379 = v378 + 56 * v377;
                      *(v379 + 24) = v395;
                      v380 = v378 + 56 * v91;
                      *(v379 + 16) = *(v380 + 16);
                      ++*(v380 + 22);
                    }

                    else
                    {
                      if (v336)
                      {
                        sub_1819439E0(*v335, v336);
                      }

                      if (v326)
                      {
                        sub_18194E5B8(v388, v326);
                      }
                    }

                    goto LABEL_265;
                  }

                  v325 = 0;
                  v326 = 0;
                  v327 = *(v118 + 32);
                  v328 = v324 + 1;
                  while (2)
                  {
                    if ((v327[9] & 0x40) == 0)
                    {
                      goto LABEL_566;
                    }

                    v330 = *(*v327 + 24);
                    if (v330)
                    {
                      v331 = sub_1818C7FEC(v388, v330, 0, 0);
                    }

                    else
                    {
                      v331 = 0;
                    }

                    v332 = *v390;
                    if (v326)
                    {
                      v333 = *v326;
                      if (v326[1] > *v326)
                      {
                        *v326 = v333 + 1;
                        v334 = &v326[6 * v333];
                        *(v334 + 2) = 0;
                        *(v334 + 3) = 0;
                        *(v334 + 1) = v331;
LABEL_565:
                        v325 = *(*v327 + 16);
LABEL_566:
                        v327 += 28;
                        if (--v328 <= 1)
                        {
                          v335 = v384;
                          if (v325)
                          {
                            v336 = sub_1818C7FEC(v388, v325, 0, 0);
                          }

                          else
                          {
                            v336 = 0;
                          }

                          v303 = v383;
                          goto LABEL_629;
                        }

                        continue;
                      }

                      v329 = sub_18197FE14(*v332, v326, v331);
                    }

                    else
                    {
                      v329 = sub_18197FD9C(*v332, v331);
                    }

                    break;
                  }

                  v326 = v329;
                  goto LABEL_565;
                }

LABEL_265:
                v12 = v394;
                v14 = *(v394 + 32) + 56 * v91;
LABEL_266:
                v71 = v397;
LABEL_267:
                v28 = v401;
                goto LABEL_268;
              }

              goto LABEL_526;
            }

            v319 = *(v310 - 18);
          }

          v320 = sub_1818D0A24(*(v319 + 24));
          v321 = sub_1818D0A24(*(v319 + 16));
          if (v320)
          {
            v322 = v320 == v321;
          }

          else
          {
            v322 = 1;
          }

          if (!v322)
          {
            v305 = 0;
            v91 = v396;
            v303 = v383;
            goto LABEL_558;
          }

          *v310 |= 0x40u;
          v91 = v396;
          v303 = v383;
        }

        else
        {
          *v310 &= ~0x40u;
        }

        v310 += 56;
        if (!--v308)
        {
          v305 = 1;
          goto LABEL_558;
        }
      }
    }

    v254 = (v388 + 472);
    v255 = *v385;
    if (*v385 || (v254 = (v388 + 464), (v255 = *v382) != 0))
    {
      *v254 = *v255;
      ++*(v153 + 448);
LABEL_448:
      *(v246 + 32) = v255;
      *(v246 + 18) |= 0x20u;
      *(v246 + 20) = 1024;
      *(v246 + 28) = -1;
      *(v255 + 248) = 0u;
      *(v255 + 232) = 0u;
      *(v255 + 216) = 0u;
      *(v255 + 200) = 0u;
      *(v255 + 184) = 0u;
      *(v255 + 168) = 0u;
      *(v255 + 152) = 0u;
      *(v255 + 136) = 0u;
      *(v255 + 120) = 0u;
      *(v255 + 104) = 0u;
      *(v255 + 88) = 0u;
      *(v255 + 72) = 0u;
      *(v255 + 56) = 0u;
      *(v255 + 40) = 0u;
      *(v255 + 456) = 0u;
      *(v255 + 472) = 0u;
      *(v255 + 424) = 0u;
      *(v255 + 440) = 0u;
      *(v255 + 392) = 0u;
      *(v255 + 408) = 0u;
      *(v255 + 360) = 0u;
      *(v255 + 376) = 0u;
      *(v255 + 328) = 0u;
      *(v255 + 344) = 0u;
      *(v255 + 296) = 0u;
      *(v255 + 312) = 0u;
      *(v255 + 264) = 0u;
      *(v255 + 280) = 0u;
      v266 = *v394;
      *(v255 + 17) = 0;
      *v255 = v266;
      *(v255 + 8) = 0;
      *(v255 + 28) = 0;
      *(v255 + 20) = 0x800000000;
      *(v255 + 32) = v255 + 40;
      sub_18196A914(v255, *v246, 44);
      v267 = *(v255 + 20);
      if (v267 >= 1)
      {
        v268 = v267 + 1;
        do
        {
          sub_1818CE4CC(v398, v255, v268 - 2);
          --v268;
        }

        while (v268 > 1);
      }

      *(v255 + 8) = v394;
      v153 = v388;
      if (*(v388 + 103) || (v270 = *(v255 + 20), v270 < 1))
      {
        v269 = 0;
        v152 = v390;
      }

      else
      {
        v269 = 0;
        v271 = 0;
        v272 = *(v255 + 32);
        v152 = v390;
        do
        {
          v274 = **v272;
          if (v274 <= 0x3A && (v274 > 0x35 || v274 == 45 || (v274 & 0x3E) == 0x32) || *(v272 + 10) == 64)
          {
            v275 = *(v272 + 7);
            if (*(v390 + 150) == v275)
            {
              v273 = 1;
            }

            else
            {
              v276 = *(v390 + 149);
              if (v276 < 2)
              {
LABEL_469:
                v273 = 0;
              }

              else
              {
                v277 = v390 + 151;
                v278 = 1;
                while (1)
                {
                  v279 = *v277++;
                  if (v279 == v275)
                  {
                    break;
                  }

                  if (v276 == ++v278)
                  {
                    goto LABEL_469;
                  }
                }

                v273 = 1 << v278;
              }
            }

            v269 |= v273;
          }

          ++v271;
          v272 += 7;
        }

        while (v271 != v270);
      }

      v248 = 0;
      v247 &= v269;
      goto LABEL_479;
    }

    ++*(v153 + 456);
    goto LABEL_447;
  }

  v64 = *(v16 + 14);
  if (v28[150] != v64)
  {
    v66 = v28[149];
    if (v66 < 2)
    {
LABEL_92:
      v65 = 0;
      if ((v63 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v67 = (v28 + 151);
      v68 = 1;
      while (1)
      {
        v69 = *v67++;
        if (v69 == v64)
        {
          break;
        }

        if (v66 == ++v68)
        {
          goto LABEL_92;
        }
      }

      v65 = 1 << v68;
      if ((v63 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

LABEL_93:
    v57 |= v65;
    if (v65 > v57 >> 1)
    {
      v392 = v65 - 1;
      goto LABEL_98;
    }

    goto LABEL_128;
  }

  v65 = 1;
  if (v63)
  {
    goto LABEL_93;
  }

LABEL_86:
  if (v65 > v57 >> 1)
  {
    goto LABEL_87;
  }

  if (*a1 < 1 || (a1[8] & 0x40) == 0)
  {
    v392 = 0;
    v63 &= 0xFFFFFFFC;
    *(v16 + 1) = v63;
    goto LABEL_98;
  }

LABEL_128:

  sub_181910730(v400, "ON clause references tables to its right", a3, a4, a5, a6, a7, a8, a9);
}