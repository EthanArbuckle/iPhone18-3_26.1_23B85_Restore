uint64_t big2_ignoreSectionTok(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4)
{
  if ((a3 - a2))
  {
    v4 = &a2[(a3 - a2) & 0xFFFFFFFFFFFFFFFELL];
  }

  else
  {
    v4 = a3;
  }

  v5 = v4 - a2;
  if (v4 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = a1 + 136;
  while (1)
  {
    v8 = *a2;
    if (v8 > 0xDB)
    {
      if (v8 == 255)
      {
        if (a2[1] > 0xFDu)
        {
          goto LABEL_44;
        }
      }

      else if (v8 - 220 < 4)
      {
        goto LABEL_44;
      }

LABEL_20:
      v9 = a2 + 2;
      goto LABEL_21;
    }

    if (v8 - 216 < 4)
    {
      goto LABEL_8;
    }

    if (*a2)
    {
      goto LABEL_20;
    }

    v10 = *(v7 + a2[1]);
    if (v10 > 4)
    {
      break;
    }

    if (v10 == 2)
    {
      v9 = a2 + 2;
      if (v4 - (a2 + 2) < 2)
      {
        return 0xFFFFFFFFLL;
      }

      if (!*v9 && a2[3] == 33)
      {
        v9 = a2 + 4;
        if (v4 - (a2 + 4) < 2)
        {
          return 0xFFFFFFFFLL;
        }

        if (!*v9 && a2[5] == 91)
        {
          ++v6;
          v9 = a2 + 6;
        }
      }
    }

    else
    {
      if (v10 != 4)
      {
        if (v10 < 2)
        {
LABEL_44:
          result = 0;
LABEL_45:
          *a4 = a2;
          return result;
        }

        goto LABEL_20;
      }

      v9 = a2 + 2;
      if (v4 - (a2 + 2) < 2)
      {
        return 0xFFFFFFFFLL;
      }

      if (!*v9 && a2[3] == 93)
      {
        v9 = a2 + 4;
        if (v4 - (a2 + 4) < 2)
        {
          return 0xFFFFFFFFLL;
        }

        if (!*v9 && a2[5] == 62)
        {
          v9 = a2 + 6;
          if (!v6)
          {
            result = 42;
            a2 += 6;
            goto LABEL_45;
          }

          --v6;
        }
      }
    }

LABEL_21:
    v5 = v4 - v9;
    a2 = v9;
    if (v4 - v9 <= 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(v7 + a2[1]) > 6u)
  {
    if (v10 != 7)
    {
      if (v10 == 8)
      {
        goto LABEL_44;
      }

      goto LABEL_20;
    }

LABEL_8:
    if (v5 < 4)
    {
      return 4294967294;
    }

    v9 = a2 + 4;
    goto LABEL_21;
  }

  if (v10 != 6)
  {
    goto LABEL_20;
  }

  if (v5 != 2)
  {
    v9 = a2 + 3;
    goto LABEL_21;
  }

  return 4294967294;
}

uint64_t big2_attributeValueTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if ((a3 - a2) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a2;
  while (1)
  {
    if (*v5 - 216 < 4)
    {
      goto LABEL_5;
    }

    if (*v5)
    {
      v6 = 2;
      goto LABEL_6;
    }

    v7 = *(v4 + v5[1]);
    if (v7 <= 6)
    {
      if (v7 == 6)
      {
        v6 = 3;
      }

      else
      {
        if (v7 == 2)
        {
          result = 0;
          *a4 = v5;
          return result;
        }

        v6 = 2;
        if (v7 == 3)
        {
          if (v5 == a2)
          {
            return big2_scanRef(a1, a2 + 2, a3, a4);
          }

          goto LABEL_36;
        }
      }

      goto LABEL_6;
    }

    if (*(v4 + v5[1]) <= 8u)
    {
      v6 = 2;
      if (v7 != 7)
      {
        goto LABEL_6;
      }

LABEL_5:
      v6 = 4;
      goto LABEL_6;
    }

    if (v7 == 9)
    {
      break;
    }

    if (v7 == 10)
    {
      if (v5 != a2)
      {
        goto LABEL_36;
      }

      v9 = a2 + 2;
      goto LABEL_38;
    }

    v6 = 2;
    if (v7 == 21)
    {
      if (v5 == a2)
      {
        *a4 = a2 + 2;
        return 39;
      }

      goto LABEL_36;
    }

LABEL_6:
    v5 += v6;
    if ((a3 - v5) <= 1)
    {
      goto LABEL_36;
    }
  }

  if (v5 != a2)
  {
LABEL_36:
    *a4 = v5;
    return 6;
  }

  v9 = a2 + 2;
  if ((a3 - (a2 + 2)) >= 2)
  {
    if (!*v9 && *(v4 + a2[3]) == 10)
    {
      v9 = a2 + 4;
    }

LABEL_38:
    *a4 = v9;
    return 7;
  }

  return 4294967293;
}

uint64_t big2_entityValueTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if ((a3 - a2) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a2;
  while (1)
  {
    if (*v5 - 216 < 4)
    {
      goto LABEL_5;
    }

    if (*v5)
    {
      v6 = 2;
      goto LABEL_6;
    }

    v7 = *(v4 + v5[1]);
    if (v7 <= 6)
    {
      break;
    }

    if (*(v4 + v5[1]) <= 8u)
    {
      v6 = 2;
      if (v7 != 7)
      {
        goto LABEL_6;
      }

LABEL_5:
      v6 = 4;
      goto LABEL_6;
    }

    if (v7 == 9)
    {
      if (v5 != a2)
      {
        goto LABEL_37;
      }

      v9 = a2 + 2;
      if ((a3 - (a2 + 2)) < 2)
      {
        return 4294967293;
      }

      if (!*v9 && *(v4 + a2[3]) == 10)
      {
        v9 = a2 + 4;
      }

      *a4 = v9;
      return 7;
    }

    if (v7 == 10)
    {
      if (v5 != a2)
      {
        goto LABEL_37;
      }

      *a4 = a2 + 2;
      return 7;
    }

    v6 = 2;
    if (v7 == 30)
    {
      if (v5 == a2)
      {
        LODWORD(result) = big2_scanPercent(a1, a2 + 2, a3, a4);
        if (result == 22)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }

LABEL_37:
      *a4 = v5;
      return 6;
    }

LABEL_6:
    v5 += v6;
    if ((a3 - v5) <= 1)
    {
      goto LABEL_37;
    }
  }

  if (v7 == 6)
  {
    v6 = 3;
    goto LABEL_6;
  }

  v6 = 2;
  if (v7 != 3)
  {
    goto LABEL_6;
  }

  if (v5 != a2)
  {
    goto LABEL_37;
  }

  v10 = a2 + 2;

  return big2_scanRef(a1, v10, a3, a4);
}

BOOL big2_nameMatchesAscii(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v4 = *a4;
  if (!*a4)
  {
    return a2 == a3;
  }

  v5 = a4 + 1;
  v6 = a3 - a2;
  while (1)
  {
    v8 = __OFSUB__(v6, 2);
    v7 = v6 - 2 < 0;
    v6 -= 2;
    if (v7 != v8 || *a2 || a2[1] != v4)
    {
      break;
    }

    a2 += 2;
    v9 = *v5++;
    v4 = v9;
    if (!v9)
    {
      return a2 == a3;
    }
  }

  return 0;
}

uint64_t big2_nameLength(uint64_t a1, unsigned __int8 *a2)
{
  for (i = a2; ; i += v4)
  {
    v3 = *i;
    if (v3 > 0xDB)
    {
      if (v3 == 255)
      {
        if (i[1] > 0xFDu)
        {
          return (i - a2);
        }

        v4 = 2;
      }

      else
      {
        v4 = 2;
        if (v3 - 220 < 4)
        {
          return (i - a2);
        }
      }

      continue;
    }

    if (v3 - 216 < 4)
    {
      v4 = 4;
      continue;
    }

    v4 = 2;
    if (!*i)
    {
      break;
    }

LABEL_5:
    ;
  }

  v5 = *(a1 + 136 + i[1]) - 5;
  if (v5 < 0x19 && ((0x17E0007u >> v5) & 1) != 0)
  {
    v4 = qword_26ECC8220[(*(a1 + 136 + i[1]) - 5)];
    goto LABEL_5;
  }

  return (i - a2);
}

_BYTE *big2_skipS(uint64_t a1, _BYTE *a2)
{
  if (!*a2)
  {
    do
    {
      v2 = *(a1 + 136 + a2[1]);
      v3 = v2 > 0x15;
      v4 = (1 << v2) & 0x200600;
      if (v3 || v4 == 0)
      {
        break;
      }

      v6 = a2[2];
      a2 += 2;
    }

    while (!v6);
  }

  return a2;
}

uint64_t big2_getAtts(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  result = 0;
  v6 = 0;
  v7 = a1 + 136;
  v8 = 1;
  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = a2;
      v11 = a2 + 2;
      v12 = a2[2];
      if (v12 > 0xDB)
      {
        break;
      }

      if (v12 - 216 >= 4)
      {
        if (a2[2])
        {
          goto LABEL_16;
        }

        v15 = a2 + 3;
        v14 = a2[3];
        a2 += 2;
        switch(*(v7 + v14))
        {
          case 3:
            a2 = v11;
            if (result < a3)
            {
              *(a4 + 32 * result + 24) = 0;
              a2 = v11;
            }

            continue;
          case 5:
          case 0x16:
          case 0x18:
          case 0x1D:
            goto LABEL_16;
          case 6:
            a2 = v10 + 3;
            if (!v8)
            {
              v8 = 1;
              a2 = v10 + 3;
              if (result < a3)
              {
                v18 = a4 + 32 * result;
                *v18 = v11;
                *(v18 + 24) = 1;
                a2 = v15;
              }
            }

            continue;
          case 7:
            goto LABEL_4;
          case 9:
          case 0xA:
            v8 = 0;
            a2 = v11;
            if (v9 == 1)
            {
              continue;
            }

            a2 = v11;
            v8 = v9;
            if (v9 != 2)
            {
              continue;
            }

            a2 = v11;
            if (result >= a3)
            {
              continue;
            }

            *(a4 + 32 * result + 24) = 0;
            goto LABEL_66;
          case 0xB:
          case 0x11:
            v8 = 2;
            a2 = v11;
            if (v9 == 2)
            {
              continue;
            }

            return result;
          case 0xC:
            if (v8 == 2)
            {
              v8 = 2;
              a2 = v11;
              if (v6 == 12)
              {
                if (result < a3)
                {
                  *(a4 + 32 * result + 16) = v11;
                }

                v8 = 0;
                result = (result + 1);
                v6 = 12;
                a2 = v11;
              }

              continue;
            }

            v6 = 12;
            v8 = 2;
            a2 = v11;
            if (result >= a3)
            {
              continue;
            }

            *(a4 + 32 * result + 8) = v10 + 4;
            v6 = 12;
            goto LABEL_66;
          case 0xD:
            if (v8 == 2)
            {
              v8 = 2;
              a2 = v11;
              if (v6 == 13)
              {
                if (result < a3)
                {
                  *(a4 + 32 * result + 16) = v11;
                }

                v8 = 0;
                result = (result + 1);
                v6 = 13;
                a2 = v11;
              }

              continue;
            }

            v6 = 13;
            v8 = 2;
            a2 = v11;
            if (result >= a3)
            {
              continue;
            }

            *(a4 + 32 * result + 8) = v10 + 4;
            v6 = 13;
            goto LABEL_66;
          case 0x15:
            v8 = 0;
            a2 = v11;
            if (v9 == 1)
            {
              continue;
            }

            a2 = v11;
            v8 = v9;
            if (v9 != 2)
            {
              continue;
            }

            a2 = v11;
            if (result >= a3)
            {
              continue;
            }

            v19 = a4 + 32 * result;
            v8 = 2;
            a2 = v11;
            if (!*(v19 + 24))
            {
              continue;
            }

            if (v11 == *(v19 + 8) || v14 != 32)
            {
              goto LABEL_65;
            }

            v20 = v10[4];
            if (v20 > 0xDB)
            {
              if (v20 - 220 < 4)
              {
                v21 = 8;
                goto LABEL_64;
              }

              if (v20 == 255 && v10[5] > 0xFDu)
              {
                v21 = 0;
                goto LABEL_64;
              }

LABEL_63:
              v21 = 29;
              goto LABEL_64;
            }

            if (v20 - 216 < 4)
            {
              v21 = 7;
              goto LABEL_64;
            }

            if (v10[4])
            {
              goto LABEL_63;
            }

            v22 = v10[5];
            if (v22 == 32)
            {
              goto LABEL_65;
            }

            v21 = *(v7 + v22);
LABEL_64:
            v8 = 2;
            a2 = v11;
            if (v21 != v6)
            {
              continue;
            }

LABEL_65:
            *(v19 + 24) = 0;
LABEL_66:
            v8 = 2;
            a2 = v11;
            break;
          default:
            continue;
        }
      }

      else
      {
LABEL_4:
        if (!v8)
        {
          v9 = 1;
          if (result < a3)
          {
            v17 = a4 + 32 * result;
            *v17 = v11;
            *(v17 + 24) = 1;
          }
        }

        a2 = v10 + 4;
        v8 = v9;
      }
    }

    a2 += 2;
    if (v12 - 220 >= 4)
    {
      if (v12 == 255)
      {
        v13 = v10[3] <= 0xFDu && v8 == 0;
        a2 = v11;
        if (v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
LABEL_16:
        a2 = v11;
        if (!v8)
        {
LABEL_17:
          v8 = 1;
          a2 = v11;
          if (result < a3)
          {
            v16 = a4 + 32 * result;
            *v16 = v11;
            *(v16 + 24) = 1;
            a2 = v11;
          }
        }
      }
    }
  }
}

uint64_t big2_charRefNumber(uint64_t a1, _BYTE *a2)
{
  if (!a2[4] && a2[5] == 120)
  {
    v2 = 0;
    for (i = a2 + 7; ; i += 2)
    {
      if (!*(i - 1))
      {
        v4 = *i;
        if (v4 == 59)
        {
          return checkCharRefNumber(v2);
        }

        if (*i - 48 <= 0x36)
        {
          if (((1 << (v4 - 48)) & 0x3FF) != 0)
          {
            v2 = (v4 - 48) | (16 * v2);
          }

          else if (((1 << (v4 - 48)) & 0x7E0000) != 0)
          {
            v2 = (v4 + 16 * v2 - 55);
          }

          else
          {
            if (((1 << (v4 - 48)) & 0x7E000000000000) == 0)
            {
              continue;
            }

            v2 = (v4 + 16 * v2 - 87);
          }

          if (v2 >= 1114112)
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  v2 = 0;
  for (j = a2 + 5; *(j - 1); j += 2)
  {
    v6 = -49;
LABEL_20:
    v2 = (v6 + 10 * v2);
    if (v2 >= 1114112)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = *j;
  if (v7 != 59)
  {
    v6 = v7 - 48;
    goto LABEL_20;
  }

  return checkCharRefNumber(v2);
}

uint64_t big2_predefinedEntityName(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = (a3 - a2) / 2;
  if (v3 == 4)
  {
    if (!*a2)
    {
      v7 = a2[1];
      if (v7 == 97)
      {
        if (!a2[2] && a2[3] == 112 && !a2[4] && a2[5] == 111 && !a2[6] && a2[7] == 115)
        {
          return 39;
        }
      }

      else if (v7 == 113 && !a2[2] && a2[3] == 117 && !a2[4] && a2[5] == 111 && !a2[6] && a2[7] == 116)
      {
        return 34;
      }
    }

    return 0;
  }

  if (v3 == 3)
  {
    if (!*a2 && a2[1] == 97 && !a2[2] && a2[3] == 109 && !a2[4] && a2[5] == 112)
    {
      return 38;
    }

    return 0;
  }

  if (v3 != 2 || a2[2] || a2[3] != 116 || *a2)
  {
    return 0;
  }

  v4 = a2[1];
  if (v4 == 103)
  {
    v5 = 62;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 108)
  {
    return 60;
  }

  else
  {
    return v5;
  }
}

uint64_t big2_updatePosition(uint64_t result, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 >= 2)
  {
    v4 = result + 136;
    while (*a2 - 216 >= 4)
    {
      if (*a2)
      {
        goto LABEL_13;
      }

      v5 = *(v4 + a2[1]);
      if (v5 <= 6)
      {
        if (v5 == 6)
        {
          a2 += 3;
        }

        else
        {
LABEL_13:
          a2 += 2;
        }

LABEL_14:
        ++a4[1];
        goto LABEL_15;
      }

      if (v5 == 7)
      {
        break;
      }

      if (v5 == 9)
      {
        ++*a4;
        v6 = a2 + 2;
        if (a3 - (a2 + 2) >= 2 && !*v6 && *(v4 + a2[3]) == 10)
        {
          v6 = a2 + 4;
        }

        a4[1] = 0;
        a2 = v6;
        goto LABEL_15;
      }

      if (v5 != 10)
      {
        goto LABEL_13;
      }

      ++*a4;
      a4[1] = 0;
      a2 += 2;
LABEL_15:
      if (a3 - a2 <= 1)
      {
        return result;
      }
    }

    a2 += 4;
    goto LABEL_14;
  }

  return result;
}

uint64_t big2_isPublicId(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 + 2);
  v5 = a3 - (a2 + 2) - 2;
  if (v5 >= 2)
  {
    do
    {
      if (*v4)
      {
LABEL_15:
        result = 0;
        *a4 = v4;
        return result;
      }

      v6 = v4[1];
      v7 = *(a1 + 136 + v4[1]);
      if (v7 <= 0x23)
      {
        if (((1 << v7) & 0xFCB8FE600) != 0)
        {
          goto LABEL_5;
        }

        if (((1 << v7) & 0x4400000) != 0)
        {
          if ((v4[1] & 0x80000000) == 0)
          {
            goto LABEL_5;
          }

          v6 = v4[1];
        }

        else if (v7 == 21)
        {
          if (v6 == 9)
          {
            goto LABEL_15;
          }

          goto LABEL_5;
        }
      }

      if (v6 != 64 && v6 != 36)
      {
        goto LABEL_15;
      }

LABEL_5:
      v4 += 2;
      v5 -= 2;
    }

    while (v5 > 1);
  }

  return 1;
}

uint64_t big2_toUtf8(uint64_t a1, unsigned __int8 **a2, uint64_t a3, _BYTE **a4, _BYTE *a5)
{
  v5 = *a2;
  v6 = (a3 - *a2) & 0xFFFFFFFFFFFFFFFELL;
  if (v6 >= 1)
  {
    v7 = &v5[v6];
    do
    {
      v8 = v5[1];
      v9 = v8;
      v10 = *v5;
      if (v10 - 1 >= 7)
      {
        if (v10 - 216 < 4)
        {
          v16 = *a4;
          if (a5 - *a4 < 4)
          {
            goto LABEL_21;
          }

          if (v7 - v5 < 4)
          {
            result = 1;
            goto LABEL_23;
          }

          v17 = ((v8 >> 6) & 0xFFFFFFF3 | (4 * (v10 & 3))) + 1;
          *a4 = v16 + 1;
          *v16 = (v17 >> 2) | 0xF0;
          LOBYTE(v17) = (v8 >> 2) & 0xF | (16 * (v17 & 3)) | 0x80;
          v18 = (*a4)++;
          *v18 = v17;
          v19 = v5[2];
          v5 += 2;
          LOBYTE(v18) = v5[1];
          v20 = (*a4)++;
          *v20 = (v18 >> 6) & 0xC3 | (16 * (v9 & 3)) | (4 * (v19 & 3)) | 0x80;
          LOBYTE(v9) = v18 & 0x3F | 0x80;
          v21 = *a4;
          goto LABEL_11;
        }

        if (*v5)
        {
          v22 = *a4;
          if (a5 - *a4 < 3)
          {
LABEL_21:
            result = 2;
            goto LABEL_23;
          }

          *a4 = v22 + 1;
          *v22 = (v10 >> 4) | 0xE0;
          v13 = (4 * (v10 & 0xF)) | (v9 >> 6) | 0x80;
          v11 = *a4;
          goto LABEL_6;
        }

        if ((v8 & 0x80000000) == 0)
        {
          v21 = *a4;
          if (*a4 == a5)
          {
            goto LABEL_21;
          }

LABEL_11:
          *a4 = v21 + 1;
          *v21 = v9;
          goto LABEL_12;
        }
      }

      v11 = *a4;
      if (a5 - *a4 < 2)
      {
        goto LABEL_21;
      }

      HIDWORD(v12) = *v5;
      LODWORD(v12) = v9 << 24;
      v13 = (v12 >> 30) | 0xC0;
LABEL_6:
      *a4 = v11 + 1;
      *v11 = v13;
      v14 = v9 & 0x3F | 0x80;
      v15 = (*a4)++;
      *v15 = v14;
LABEL_12:
      v5 += 2;
    }

    while (v5 < v7);
  }

  result = 0;
LABEL_23:
  *a2 = v5;
  return result;
}

uint64_t big2_toUtf16(uint64_t a1, unsigned __int16 **a2, uint64_t a3, unint64_t *a4, unint64_t a5)
{
  v5 = *a2;
  v6 = (a3 - *a2) & 0xFFFFFFFFFFFFFFFELL;
  v7 = (*a2 + v6);
  if (v6 <= (a5 - *a4))
  {
    result = 0;
  }

  else
  {
    v8 = *(v7 - 1) & 0xF8;
    result = v8 == 216;
    if (v8 == 216)
    {
      --v7;
    }
  }

  while (v5 < v7)
  {
    v10 = *a4;
    if (*a4 >= a5)
    {
      if (*a4 == a5)
      {
        return 2;
      }

      return result;
    }

    *v10 = bswap32(*v5) >> 16;
    *a4 = (v10 + 1);
    v5 = *a2 + 1;
    *a2 = v5;
  }

  return result;
}

uint64_t big2_scanLit(int a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 **a5)
{
  v5 = a4 - a3;
  if (a4 - a3 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2 + 136;
  while (1)
  {
    v7 = *a3;
    if (v7 > 0xDB)
    {
      if (v7 == 255)
      {
        if (a3[1] > 0xFDu)
        {
          goto LABEL_28;
        }
      }

      else if (v7 - 220 < 4)
      {
        goto LABEL_28;
      }

LABEL_25:
      v8 = a3 + 2;
      goto LABEL_26;
    }

    if (v7 - 216 < 4)
    {
      goto LABEL_5;
    }

    if (*a3)
    {
      goto LABEL_25;
    }

    v9 = *(v6 + a3[1]);
    if (v9 > 6)
    {
      break;
    }

    if (v9 == 5)
    {
      goto LABEL_25;
    }

    if (v9 != 6)
    {
      if (v9 < 2)
      {
LABEL_28:
        result = 0;
        *a5 = a3;
        return result;
      }

      goto LABEL_25;
    }

    if (v5 == 2)
    {
      return 4294967294;
    }

    v8 = a3 + 3;
LABEL_26:
    v5 = a4 - v8;
    a3 = v8;
    if (a4 - v8 <= 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v9 - 12 >= 2)
  {
    if (v9 != 7)
    {
      if (v9 == 8)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

LABEL_5:
    if (v5 < 4)
    {
      return 4294967294;
    }

    v8 = a3 + 4;
    goto LABEL_26;
  }

  v8 = a3 + 2;
  if (v9 != a1)
  {
    goto LABEL_26;
  }

  if (a4 - v8 < 2)
  {
    return 4294967269;
  }

  *a5 = v8;
  if (*v8)
  {
    return 0;
  }

  v11 = *(v6 + a3[3]);
  v12 = v11 > 0x1E;
  v13 = (1 << v11) & 0x40300E00;
  if (v12 || v13 == 0)
  {
    return 0;
  }

  else
  {
    return 27;
  }
}

uint64_t big2_scanDecl(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2)
  {
LABEL_3:
    result = 0;
    *a4 = a2;
    return result;
  }

  v5 = a1 + 136;
  v6 = *(a1 + 136 + a2[1]);
  if (v6 <= 0x17)
  {
    if (v6 == 20)
    {
      *a4 = a2 + 2;
      return 33;
    }

    if (v6 != 22)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = a2 + 2;
    v8 = a3 - (a2 + 2);
    if (v8 >= 2)
    {
      result = 0xFFFFFFFFLL;
      while (1)
      {
        if (*v7)
        {
          goto LABEL_28;
        }

        v9 = *(v5 + v7[1]);
        if (v9 > 0x1E)
        {
          goto LABEL_28;
        }

        if (((1 << v9) & 0x1400000) == 0)
        {
          break;
        }

        v7 += 2;
        v8 -= 2;
        if (v8 <= 1)
        {
          return result;
        }
      }

      if (((1 << v9) & 0x200600) != 0)
      {
LABEL_20:
        *a4 = v7;
        return 16;
      }

      if (v9 != 30)
      {
        goto LABEL_28;
      }

      if (v8 >= 4)
      {
        if (v7[2])
        {
          goto LABEL_20;
        }

        v10 = *(v5 + v7[3]);
        v11 = v10 > 0x1E;
        v12 = (1 << v10) & 0x40200600;
        if (v11 || v12 == 0)
        {
          goto LABEL_20;
        }

LABEL_28:
        result = 0;
        *a4 = v7;
        return result;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v6 == 24)
  {
    goto LABEL_11;
  }

  if (v6 != 27)
  {
    goto LABEL_3;
  }

  return big2_scanComment(a1, a2 + 2, a3, a4);
}

uint64_t big2_scanPi(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a2;
  if (v8 > 0xDB)
  {
    if (v8 - 220 < 4 || v8 == 255 && a2[1] > 0xFDu)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v8 - 216 < 4)
    {
      goto LABEL_4;
    }

    if (!*a2)
    {
      v10 = *(a1 + a2[1] + 136);
      if (v10 <= 0x15)
      {
        if (v10 != 5)
        {
          if (v10 == 6)
          {
            if (v4 == 2)
            {
              return 4294967294;
            }
          }

          else if (v10 == 7)
          {
LABEL_4:
            if (v4 < 4)
            {
              return 4294967294;
            }
          }
        }

LABEL_7:
        result = 0;
        *a4 = a2;
        return result;
      }

      if (v10 == 22 || v10 == 24)
      {
        goto LABEL_23;
      }

      if (v10 != 29)
      {
        goto LABEL_7;
      }
    }
  }

  if (((namingBitmap[(a2[1] >> 5) | (8 * nmstrtPages[*a2])] >> a2[1]) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (a3 - a2 - 2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = 0;
  v24 = 0;
  v13 = a1 + 136;
  v14 = 3;
  result = 0xFFFFFFFFLL;
  while (1)
  {
    v15 = a2[v14 - 1];
    if (v15 > 0xDB)
    {
      if (v15 == 255)
      {
        if (a2[v14] > 0xFDu)
        {
          goto LABEL_84;
        }
      }

      else if (v15 - 220 < 4)
      {
        goto LABEL_84;
      }

LABEL_37:
      if (((namingBitmap[(a2[v14] >> 5) | (8 * namePages[a2[v14 - 1]])] >> a2[v14]) & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_38;
    }

    if (a2[v14 - 1])
    {
      if (v15 - 216 < 4)
      {
        goto LABEL_51;
      }

      goto LABEL_37;
    }

    v16 = *(v13 + a2[v14]);
    if (v16 <= 0x17)
    {
      break;
    }

    if (v16 - 24 >= 4)
    {
      if (v16 != 29)
      {
        goto LABEL_84;
      }

      goto LABEL_37;
    }

LABEL_38:
    v12 -= 2;
    v14 += 2;
    if ((v4 + v12 - 2) <= 1)
    {
      return result;
    }
  }

  if (*(v13 + a2[v14]) <= 0xEu)
  {
    if (*(v13 + a2[v14]) > 8u)
    {
      if (v16 - 9 >= 2)
      {
        goto LABEL_84;
      }

      goto LABEL_54;
    }

    if (v16 != 5)
    {
      if (v16 == 6)
      {
        if (v4 + v12 == 4)
        {
          return 4294967294;
        }
      }

      else
      {
        if (v16 != 7)
        {
          goto LABEL_84;
        }

LABEL_51:
        if (v4 + v12 - 2 < 4)
        {
          return 4294967294;
        }
      }
    }

LABEL_52:
    result = 0;
    v17 = &a2[-v12 + 2];
    goto LABEL_86;
  }

  if (v16 == 22)
  {
    goto LABEL_38;
  }

  if (v16 == 15)
  {
    v22 = &a2[-v12];
    result = big2_checkPiTarget(a2, &a2[-v12 + 2], &v24);
    if (!result)
    {
      *a4 = &a2[-v12 + 2];
      return result;
    }

    if ((v4 + v12 - 4) < 2)
    {
      return 0xFFFFFFFFLL;
    }

    v17 = v22 + 4;
    if (!a2[v14 + 1] && a2[v14 + 2] == 62)
    {
      v23 = v22 + 6;
LABEL_95:
      *a4 = v23;
      return v24;
    }

LABEL_85:
    result = 0;
LABEL_86:
    *a4 = v17;
    return result;
  }

  if (v16 != 21)
  {
LABEL_84:
    v17 = &a2[-v12 + 2];
    goto LABEL_85;
  }

LABEL_54:
  result = big2_checkPiTarget(a2, &a2[-v12 + 2], &v24);
  if (result)
  {
    v18 = v4 + v12 - 4;
    if (v18 >= 2)
    {
      v17 = &a2[-v12 + 4];
      result = 0xFFFFFFFFLL;
      while (1)
      {
        v19 = *v17;
        if (v19 > 0xDB)
        {
          break;
        }

        if (v19 - 216 < 4)
        {
          goto LABEL_59;
        }

        if (*v17)
        {
          goto LABEL_71;
        }

        v21 = *(v13 + v17[1]);
        if (v21 <= 6)
        {
          if (v21 != 5)
          {
            if (v21 == 6)
            {
              if (v18 == 2)
              {
                return 4294967294;
              }

              v20 = v17 + 3;
              goto LABEL_72;
            }

            if (v21 < 2)
            {
              goto LABEL_85;
            }
          }

          goto LABEL_71;
        }

        if (v21 == 7)
        {
LABEL_59:
          if (v18 < 4)
          {
            return 4294967294;
          }

          v20 = v17 + 4;
          goto LABEL_72;
        }

        if (v21 != 15)
        {
          if (v21 == 8)
          {
            goto LABEL_85;
          }

          goto LABEL_71;
        }

        v20 = v17 + 2;
        if (a3 - (v17 + 2) < 2)
        {
          return 0xFFFFFFFFLL;
        }

        if (!*v20 && v17[3] == 62)
        {
          v23 = v17 + 4;
          goto LABEL_95;
        }

LABEL_72:
        v18 = a3 - v20;
        v17 = v20;
        if (a3 - v20 <= 1)
        {
          return result;
        }
      }

      if (v19 == 255)
      {
        if (v17[1] > 0xFDu)
        {
          goto LABEL_85;
        }
      }

      else if (v19 - 220 < 4)
      {
        goto LABEL_85;
      }

LABEL_71:
      v20 = v17 + 2;
      goto LABEL_72;
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    *a4 = &a2[-v12 + 2];
  }

  return result;
}

uint64_t big2_scanPercent(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v4 = a3 - a2;
  v5 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a2;
  if (v6 > 0xDB)
  {
    if (v6 - 220 < 4 || v6 == 255 && a2[1] > 0xFDu)
    {
      goto LABEL_7;
    }

LABEL_15:
    if (((namingBitmap[(a2[1] >> 5) | (8 * nmstrtPages[*a2])] >> a2[1]) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (v6 - 216 < 4)
  {
LABEL_4:
    if (v4 < 4)
    {
      return 4294967294;
    }

    goto LABEL_7;
  }

  if (*a2)
  {
    goto LABEL_15;
  }

  v8 = *(a1 + a2[1] + 136);
  if (v8 > 0x1E)
  {
    goto LABEL_39;
  }

  if (((1 << v8) & 0x40200600) != 0)
  {
    result = 22;
    goto LABEL_8;
  }

  if (((1 << v8) & 0x1400000) == 0)
  {
    if (v8 != 29)
    {
LABEL_39:
      if (v8 == 6)
      {
        if (v4 == 2)
        {
          return 4294967294;
        }

        goto LABEL_7;
      }

      if (v8 == 7)
      {
        goto LABEL_4;
      }

LABEL_7:
      result = 0;
LABEL_8:
      *a4 = a2;
      return result;
    }

    goto LABEL_15;
  }

LABEL_16:
  if (v5 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a1 + 136;
  a2 += 4;
  result = 0xFFFFFFFFLL;
  while (1)
  {
    v10 = *(a2 - 2);
    if (v10 > 0xDB)
    {
      if (v10 == 255)
      {
        if (*(a2 - 1) > 0xFDu)
        {
          goto LABEL_49;
        }
      }

      else if (v10 - 220 < 4)
      {
        goto LABEL_49;
      }

LABEL_30:
      if (((namingBitmap[(*(a2 - 1) >> 5) | (8 * namePages[*(a2 - 2)])] >> *(a2 - 1)) & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_31;
    }

    if (*(a2 - 2))
    {
      if (v10 - 216 < 4)
      {
        goto LABEL_48;
      }

      goto LABEL_30;
    }

    v11 = *(v9 + *(a2 - 1));
    if (v11 > 0x17)
    {
      if (v11 - 24 < 4)
      {
        goto LABEL_31;
      }

      if (v11 != 29)
      {
        goto LABEL_49;
      }

      goto LABEL_30;
    }

    if (*(v9 + *(a2 - 1)) <= 0x15u)
    {
      break;
    }

    if (v11 != 22)
    {
      goto LABEL_49;
    }

LABEL_31:
    v5 -= 2;
    a2 += 2;
    if (v5 <= 1)
    {
      return result;
    }
  }

  if (v11 != 6)
  {
    if (v11 == 7)
    {
LABEL_48:
      if (v5 < 4)
      {
        return 4294967294;
      }
    }

    else if (v11 == 18)
    {
      result = 28;
      goto LABEL_8;
    }

LABEL_49:
    result = 0;
    a2 -= 2;
    goto LABEL_8;
  }

  if (v5 != 2)
  {
    goto LABEL_49;
  }

  return 4294967294;
}

uint64_t big2_scanPoundName(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a2;
  if (v6 > 0xDB)
  {
    if (v6 - 220 < 4 || v6 == 255 && a2[1] > 0xFDu)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v6 - 216 < 4)
    {
      goto LABEL_4;
    }

    if (!*a2)
    {
      result = 0;
      v8 = *(a1 + a2[1] + 136);
      if (v8 <= 0x15)
      {
        if (v8 == 6)
        {
          if (v4 != 2)
          {
            goto LABEL_8;
          }

          return 4294967294;
        }

        if (v8 != 7)
        {
          goto LABEL_9;
        }

LABEL_4:
        if (v4 >= 4)
        {
          goto LABEL_8;
        }

        return 4294967294;
      }

      if (v8 == 22 || v8 == 24)
      {
        goto LABEL_21;
      }

      if (v8 != 29)
      {
        goto LABEL_9;
      }
    }
  }

  if (((namingBitmap[(a2[1] >> 5) | (8 * nmstrtPages[*a2])] >> a2[1]) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  a2 += 2;
  v10 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 4294967276;
  }

  v11 = a1 + 136;
  result = 4294967276;
  while (1)
  {
    v12 = *a2;
    if (v12 > 0xDB)
    {
      if (v12 == 255)
      {
        if (a2[1] > 0xFDu)
        {
          goto LABEL_8;
        }
      }

      else if (v12 - 220 < 4)
      {
        goto LABEL_8;
      }

LABEL_35:
      if (((namingBitmap[(a2[1] >> 5) | (8 * namePages[*a2])] >> a2[1]) & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

    if (*a2)
    {
      if (v12 - 216 < 4)
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    v13 = *(v11 + a2[1]);
    if (v13 > 0x24)
    {
      goto LABEL_46;
    }

    if (((1 << v13) & 0xF400000) == 0)
    {
      break;
    }

LABEL_36:
    a2 += 2;
    v10 -= 2;
    if (v10 <= 1)
    {
      return result;
    }
  }

  if (v13 == 29)
  {
    goto LABEL_35;
  }

  if (((1 << v13) & 0x1140200E00) != 0)
  {
    result = 20;
    goto LABEL_9;
  }

LABEL_46:
  if (v13 != 6)
  {
    if (v13 != 7)
    {
      goto LABEL_8;
    }

LABEL_48:
    if (v10 < 4)
    {
      return 4294967294;
    }

    goto LABEL_8;
  }

  if (v10 == 2)
  {
    return 4294967294;
  }

LABEL_8:
  result = 0;
LABEL_9:
  *a4 = a2;
  return result;
}

uint64_t big2_scanComment(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 || a2[1] != 45)
  {
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  a2 += 2;
  v4 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1 + 136;
  result = 0xFFFFFFFFLL;
  while (1)
  {
    v7 = *a2;
    if (v7 > 0xDB)
    {
      if (v7 == 255)
      {
        if (a2[1] > 0xFDu)
        {
          goto LABEL_32;
        }
      }

      else if (v7 - 220 < 4)
      {
        goto LABEL_32;
      }

      goto LABEL_20;
    }

    if (v7 - 216 < 4)
    {
      goto LABEL_8;
    }

    if (*a2)
    {
      goto LABEL_20;
    }

    v9 = *(v5 + a2[1]);
    if (v9 <= 6)
    {
      if (v9 == 5)
      {
        goto LABEL_20;
      }

      if (v9 == 6)
      {
        if (v4 == 2)
        {
          return 4294967294;
        }

        v8 = a2 + 3;
        goto LABEL_21;
      }

      if (v9 < 2)
      {
        goto LABEL_32;
      }

LABEL_20:
      v8 = a2 + 2;
      goto LABEL_21;
    }

    if (v9 == 7)
    {
LABEL_8:
      if (v4 < 4)
      {
        return 4294967294;
      }

      v8 = a2 + 4;
      goto LABEL_21;
    }

    if (v9 != 27)
    {
      if (v9 == 8)
      {
        goto LABEL_32;
      }

      goto LABEL_20;
    }

    v8 = a2 + 2;
    if (a3 - (a2 + 2) < 2)
    {
      return 0xFFFFFFFFLL;
    }

    if (!*v8 && a2[3] == 45)
    {
      break;
    }

LABEL_21:
    v4 = a3 - v8;
    a2 = v8;
    if (a3 - v8 <= 1)
    {
      return result;
    }
  }

  if (a3 - (a2 + 4) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2[4])
  {
    result = 0;
    a2 += 4;
  }

  else
  {
    v10 = a2[5];
    if (v10 == 62)
    {
      a2 += 6;
    }

    else
    {
      a2 += 4;
    }

    if (v10 == 62)
    {
      result = 13;
    }

    else
    {
      result = 0;
    }
  }

LABEL_33:
  *a4 = a2;
  return result;
}

BOOL big2_checkPiTarget(_BYTE *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 11;
  if (a2 - a1 != 6 || *a1)
  {
    return 1;
  }

  v4 = a1[1];
  if (v4 == 120)
  {
    v5 = 0;
  }

  else
  {
    if (v4 != 88)
    {
      return 1;
    }

    v5 = 1;
  }

  if (a1[2])
  {
    return 1;
  }

  v6 = a1[3];
  if (v6 != 109)
  {
    if (v6 != 77)
    {
      return 1;
    }

    v5 = 1;
  }

  if (a1[4])
  {
    return 1;
  }

  v7 = a1[5];
  if (v7 == 108)
  {
    if (v5)
    {
      return 0;
    }

    *a3 = 12;
    return 1;
  }

  return v7 != 76;
}

uint64_t big2_scanRef(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v4 = a3 - a2;
  v5 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a2;
  if (v7 > 0xDB)
  {
    if (v7 - 220 < 4 || v7 == 255 && a2[1] > 0xFDu)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v7 - 216 < 4)
    {
LABEL_4:
      if (v4 < 4)
      {
        return 4294967294;
      }

      goto LABEL_7;
    }

    if (!*a2)
    {
      result = 0;
      v9 = a1 + 136;
      v10 = *(a1 + 136 + a2[1]);
      if (v10 <= 0x15)
      {
        if (v10 == 6)
        {
          if (v4 == 2)
          {
            return 4294967294;
          }

          goto LABEL_7;
        }

        if (v10 == 7)
        {
          goto LABEL_4;
        }

        if (v10 != 19)
        {
          goto LABEL_8;
        }

        v11 = a2 + 2;
        if (a3 - (a2 + 2) >= 2)
        {
          if (*v11)
          {
LABEL_16:
            result = 0;
            a2 = v11;
            goto LABEL_8;
          }

          v16 = a2[3];
          if (v16 == 120)
          {
            v11 = a2 + 4;
            if (a3 - (a2 + 4) >= 2)
            {
              if (*v11 || (*(v9 + a2[5]) & 0xFE) != 0x18)
              {
                goto LABEL_16;
              }

              a2 += 6;
              v17 = a3 - a2;
              if (a3 - a2 >= 2)
              {
                result = 0xFFFFFFFFLL;
                while (!*a2)
                {
                  v18 = *(v9 + a2[1]);
                  if ((v18 - 24) >= 2)
                  {
                    if (v18 != 18)
                    {
                      goto LABEL_7;
                    }

                    a2 += 2;
                    result = 10;
                    goto LABEL_8;
                  }

                  a2 += 2;
                  v17 -= 2;
                  if (v17 <= 1)
                  {
                    return result;
                  }
                }

                goto LABEL_7;
              }
            }
          }

          else
          {
            if (*(v9 + v16) != 25)
            {
              goto LABEL_16;
            }

            v19 = a2 + 4;
            v20 = v4 - 4;
            while (1)
            {
              v21 = v20 < 2;
              v20 -= 2;
              if (v21)
              {
                break;
              }

              a2 = v19;
              if (*v19)
              {
                goto LABEL_7;
              }

              v22 = *(v9 + v19[1]);
              v19 += 2;
              if (v22 != 25)
              {
                if (v22 != 18)
                {
                  goto LABEL_7;
                }

                result = 10;
                a2 += 2;
                goto LABEL_8;
              }
            }
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (v10 == 22 || v10 == 24)
      {
        goto LABEL_26;
      }

      if (v10 != 29)
      {
        goto LABEL_8;
      }
    }
  }

  if (((namingBitmap[(a2[1] >> 5) | (8 * nmstrtPages[*a2])] >> a2[1]) & 1) == 0)
  {
LABEL_7:
    result = 0;
LABEL_8:
    *a4 = a2;
    return result;
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = a1 + 136;
  a2 += 4;
  result = 0xFFFFFFFFLL;
  while (1)
  {
    v14 = *(a2 - 2);
    if (v14 > 0xDB)
    {
      if (v14 == 255)
      {
        if (*(a2 - 1) > 0xFDu)
        {
          goto LABEL_63;
        }
      }

      else if (v14 - 220 < 4)
      {
        goto LABEL_63;
      }

LABEL_40:
      if (((namingBitmap[(*(a2 - 1) >> 5) | (8 * namePages[*(a2 - 2)])] >> *(a2 - 1)) & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_41;
    }

    if (*(a2 - 2))
    {
      if (v14 - 216 < 4)
      {
        goto LABEL_62;
      }

      goto LABEL_40;
    }

    v15 = *(v13 + *(a2 - 1));
    if (v15 > 0x17)
    {
      if (v15 - 24 < 4)
      {
        goto LABEL_41;
      }

      if (v15 != 29)
      {
        goto LABEL_63;
      }

      goto LABEL_40;
    }

    if (*(v13 + *(a2 - 1)) <= 0x15u)
    {
      break;
    }

    if (v15 != 22)
    {
      goto LABEL_63;
    }

LABEL_41:
    v5 -= 2;
    a2 += 2;
    if (v5 <= 1)
    {
      return result;
    }
  }

  if (v15 != 6)
  {
    if (v15 == 7)
    {
LABEL_62:
      if (v5 < 4)
      {
        return 4294967294;
      }
    }

    else if (v15 == 18)
    {
      result = 9;
      goto LABEL_8;
    }

LABEL_63:
    result = 0;
    a2 -= 2;
    goto LABEL_8;
  }

  if (v5 != 2)
  {
    goto LABEL_63;
  }

  return 4294967294;
}

uint64_t big2_scanAtts(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v36 = a2;
  v4 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = a1 + 136;
  v10 = a3 - 4;
  v11 = a3 - 6;
  while (1)
  {
    v12 = *a2;
    if (v12 > 0xDB)
    {
      if (v12 == 255)
      {
        if (a2[1] > 0xFDu)
        {
          goto LABEL_130;
        }
      }

      else if (v12 - 220 < 4)
      {
        goto LABEL_130;
      }

LABEL_16:
      if (((namingBitmap[(a2[1] >> 5) | (8 * namePages[*a2])] >> a2[1]) & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_17;
    }

    if (*a2)
    {
      if (v12 - 216 < 4)
      {
        goto LABEL_127;
      }

      goto LABEL_16;
    }

    v13 = *(v9 + a2[1]);
    if (v13 <= 0x16)
    {
      break;
    }

    if (v13 - 24 >= 4)
    {
      if (v13 == 23)
      {
        if (v8)
        {
          goto LABEL_130;
        }

        v17 = a2 + 2;
        v36 = a2 + 2;
        v18 = a3 - (a2 + 2);
        if (v18 < 2)
        {
          return 0xFFFFFFFFLL;
        }

        v19 = *v17;
        if (v19 > 0xDB)
        {
          if (v19 == 255)
          {
            if (a2[3] > 0xFDu)
            {
              goto LABEL_137;
            }
          }

          else if (v19 - 220 < 4)
          {
            goto LABEL_137;
          }

          goto LABEL_92;
        }

        if (!*v17)
        {
          v20 = *(v9 + a2[3]);
          if (v20 <= 0x17)
          {
            if (v20 != 22)
            {
              if (v20 == 6)
              {
                if (v18 != 2)
                {
                  goto LABEL_137;
                }

                return 4294967294;
              }

              if (v20 == 7)
              {
LABEL_136:
                if (v18 >= 4)
                {
                  goto LABEL_137;
                }

                return 4294967294;
              }

LABEL_137:
              result = 0;
              a2 = v17;
              goto LABEL_131;
            }
          }

          else if (v20 != 24)
          {
            if (v20 != 29)
            {
              goto LABEL_137;
            }

LABEL_92:
            if (((namingBitmap[(a2[3] >> 5) | (8 * nmstrtPages[*v17])] >> a2[3]) & 1) == 0)
            {
              goto LABEL_137;
            }
          }

          a2 += 4;
          v36 = a2;
          v8 = 1;
          goto LABEL_18;
        }

        if (v19 - 216 < 4)
        {
          goto LABEL_136;
        }

        goto LABEL_92;
      }

      if (v13 != 29)
      {
        goto LABEL_130;
      }

      goto LABEL_16;
    }

LABEL_17:
    a2 += 2;
    v36 = a2;
LABEL_18:
    v4 = a3 - a2;
    if (a3 - a2 <= 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(v9 + a2[1]) > 0xDu)
  {
    if (v13 == 14)
    {
      goto LABEL_45;
    }

    if (v13 == 21)
    {
      goto LABEL_26;
    }

    if (v13 != 22)
    {
      goto LABEL_130;
    }

    goto LABEL_17;
  }

  if (v13 - 9 >= 2)
  {
    if (v13 == 6)
    {
      if (v4 == 2)
      {
        return 4294967294;
      }
    }

    else if (v13 == 7)
    {
LABEL_127:
      if (v4 < 4)
      {
        return 4294967294;
      }
    }

    goto LABEL_130;
  }

LABEL_26:
  a2 += 2;
  v14 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    if (*a2)
    {
      goto LABEL_130;
    }

    v15 = *(v9 + a2[1]);
    if ((v15 - 9) >= 2 && v15 != 21)
    {
      break;
    }

    a2 += 2;
    v14 -= 2;
    if (v14 <= 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v15 != 14)
  {
    goto LABEL_130;
  }

  v36 = a2;
LABEL_45:
  v17 = a2 + 2;
  if (a3 - (a2 + 2) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v35 = v10;
  for (i = v10 - a2; ; i -= 2)
  {
    if (*v17)
    {
      goto LABEL_137;
    }

    v22 = *(v9 + v17[1]);
    if ((v22 & 0xFE) == 0xC)
    {
      break;
    }

    if (v22 > 0x15 || ((1 << v22) & 0x200600) == 0)
    {
      goto LABEL_137;
    }

    v17 += 2;
    result = 0xFFFFFFFFLL;
    v25 = i <= 1;
    if (v25)
    {
      return result;
    }
  }

  v17 += 2;
  v36 = v17;
  if (i < 2)
  {
    return 0xFFFFFFFFLL;
  }

  while (2)
  {
    v26 = *v17;
    if (v26 > 0xDB)
    {
      if (v26 - 220 < 4)
      {
        v27 = 8;
        goto LABEL_71;
      }

      if (v26 != 255 || v17[1] <= 0xFDu)
      {
        goto LABEL_70;
      }

      v27 = 0;
    }

    else
    {
      if (v26 - 216 < 4)
      {
        v27 = 7;
        goto LABEL_71;
      }

      if (!*v17)
      {
        v27 = *(v9 + v17[1]);
        goto LABEL_71;
      }

LABEL_70:
      v27 = 29;
    }

LABEL_71:
    if (v27 != v22)
    {
      if (v27 > 5)
      {
        switch(v27)
        {
          case 6:
            if (i == 2)
            {
              return 4294967294;
            }

            v17 += 3;
            break;
          case 7:
            if (i < 4)
            {
              return 4294967294;
            }

            v17 += 4;
            break;
          case 8:
            goto LABEL_137;
          default:
LABEL_85:
            v17 += 2;
            break;
        }

        v36 = v17;
      }

      else
      {
        if (v27 != 3)
        {
          if (v27 <= 2)
          {
            goto LABEL_137;
          }

          goto LABEL_85;
        }

        result = big2_scanRef(a1, v17 + 2, a3, &v36);
        if (result < 1)
        {
          if (!result)
          {
            a2 = v36;
            goto LABEL_131;
          }

          return result;
        }

        v17 = v36;
      }

      i = a3 - v17;
      result = 0xFFFFFFFFLL;
      if (a3 - v17 <= 1)
      {
        return result;
      }

      continue;
    }

    break;
  }

  a2 = v17 + 2;
  v36 = v17 + 2;
  if (a3 - (v17 + 2) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2)
  {
LABEL_130:
    result = 0;
    goto LABEL_131;
  }

  result = 0;
  v28 = *(v9 + v17[3]);
  if (v28 > 0xA)
  {
    if (v28 == 21)
    {
      goto LABEL_102;
    }

    if (v28 == 11)
    {
LABEL_160:
      a2 += 2;
      result = 1;
      goto LABEL_131;
    }

    if (v28 != 17)
    {
      goto LABEL_131;
    }

LABEL_149:
    v17 = a2 + 2;
    v36 = a2 + 2;
    if (a3 - (a2 + 2) >= 2)
    {
      if (!*v17)
      {
        v34 = a2[3];
        if (v34 == 62)
        {
          a2 += 4;
        }

        else
        {
          a2 += 2;
        }

        if (v34 == 62)
        {
          result = 3;
        }

        else
        {
          result = 0;
        }

        goto LABEL_131;
      }

      goto LABEL_137;
    }

    return 0xFFFFFFFFLL;
  }

  if (v28 - 9 >= 2)
  {
    goto LABEL_131;
  }

LABEL_102:
  v29 = v17 + 4;
  if (a3 - (v17 + 4) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v30 = v11 - v17;
  a2 = v17 + 6;
  while (1)
  {
    v31 = *(a2 - 2);
    if (*(a2 - 2))
    {
      if ((v31 - 216) < 4)
      {
LABEL_140:
        if ((v30 + 2) >= 4)
        {
          goto LABEL_141;
        }

        return 4294967294;
      }

      if ((v31 - 220) < 4 || v31 == 255 && *(a2 - 1) >= 0xFEu)
      {
        goto LABEL_141;
      }

      goto LABEL_123;
    }

    v32 = *(v9 + *(a2 - 1));
    if (v32 > 0xA)
    {
      break;
    }

    if (v32 - 9 >= 2)
    {
      if (v32 == 6)
      {
        if (v30)
        {
          goto LABEL_141;
        }

        return 4294967294;
      }

      if (v32 != 7)
      {
        goto LABEL_141;
      }

      goto LABEL_140;
    }

LABEL_110:
    v29 += 2;
    a2 += 2;
    result = 0xFFFFFFFFLL;
    v25 = v30 <= 1;
    v30 -= 2;
    if (v25)
    {
      return result;
    }
  }

  if (*(v9 + *(a2 - 1)) > 0x15u)
  {
    if (v32 == 22 || v32 == 24)
    {
      goto LABEL_124;
    }

    if (v32 != 29)
    {
      goto LABEL_141;
    }

LABEL_123:
    v36 = a2 - 2;
    if (((namingBitmap[(*(a2 - 1) >> 5) | (8 * nmstrtPages[v31])] >> *(a2 - 1)) & 1) == 0)
    {
      result = 0;
      a2 = v29;
      goto LABEL_131;
    }

LABEL_124:
    v8 = 0;
    v36 = a2;
    v10 = v35;
    goto LABEL_18;
  }

  switch(v32)
  {
    case 0x15u:
      goto LABEL_110;
    case 0xBu:
      a2 -= 2;
      goto LABEL_160;
    case 0x11u:
      a2 -= 2;
      goto LABEL_149;
  }

LABEL_141:
  result = 0;
  a2 -= 2;
LABEL_131:
  *a4 = a2;
  return result;
}

uint64_t parsePseudoAttribute(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2 == a3)
  {
    *a4 = 0;
    return 1;
  }

  else
  {
    v10 = a2;
    (*(a1 + 112))(a1, &v10);
    result = 0;
    *a7 = a2;
  }

  return result;
}

size_t UriGetUrlPrefixLength(const char *a1, int *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (!a1 || !*a1)
  {
    return 0;
  }

  v4 = &dword_279DA9C08;
  v5 = 5;
  while (1)
  {
    v6 = *(v4 - 1);
    v7 = cstdlib_strlen(v6);
    if (!cstdlib_strncmp(a1, v6, v7))
    {
      break;
    }

    v4 += 4;
    if (!--v5)
    {
      return 0;
    }
  }

  if (a2)
  {
    *a2 = *v4;
  }

  return cstdlib_strlen(v6);
}

char *FileFullPath(char *a1, char *__s1, char *a3)
{
  *a1 = 0;
  if (a3)
  {
    v3 = a3;
    v4 = a1;
    LODWORD(v5) = 0;
    v6 = *a3;
    if (v6 == 47 || v6 == 92)
    {
      goto LABEL_19;
    }

    if (!__s1 || !*__s1)
    {
      strcpy(a1, "./");
      LODWORD(v5) = 2;
      goto LABEL_19;
    }

    if (cstdlib_strncmp(__s1, "\\\", 2uLL))
    {
      v5 = 0;
      v8 = 0;
    }

    else
    {
      cstdlib_strcpy(v4, "/net/");
      v8 = 2;
      v5 = 5;
    }

    v9 = &__s1[v8];
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if (v11 == 92)
      {
        LOBYTE(v10) = 47;
      }

      else if (!v10)
      {
        v12 = &v4[v5];
        if (*(v12 - 1) != 47)
        {
          LODWORD(v5) = v5 + 1;
          *v12 = 47;
        }

LABEL_19:
        if (cstdlib_strncmp(v3, "\\\", 2uLL))
        {
          v13 = 0;
        }

        else
        {
          cstdlib_strcpy(&v4[v5], "/net/");
          LODWORD(v5) = 5;
          v13 = 2;
        }

        v29 = v4;
        v30 = v3 + 1;
        v14 = v5;
        v28 = v3;
LABEL_23:
        v15 = &v3[v13];
        v16 = *v15;
        if (v16 == 92)
        {
          v4[v14] = 47;
          goto LABEL_51;
        }

        if (!*v15)
        {
          v4[v14] = 0;
          return v4;
        }

        v4[v14] = v16;
        if (v16 != 37)
        {
          goto LABEL_51;
        }

        v17 = v30[v13];
        if ((v17 - 48) >= 0xAu && (v30[v13] - 65 > 0x25 || ((1 << (v17 - 65)) & 0x3F0000003FLL) == 0))
        {
          goto LABEL_51;
        }

        v19 = v15[2];
        if ((v19 - 48) >= 0xAu && (v19 - 65 > 0x25 || ((1 << (v19 - 65)) & 0x3F0000003FLL) == 0))
        {
          goto LABEL_51;
        }

        v21 = 0;
        v31 = v30[v13];
        v13 += 2;
        v32[0] = v19;
        v22 = &v31;
        v23 = 1;
        v32[1] = 0;
        while (1)
        {
          if (cstdlib_strchr("ABCDEF", *v22))
          {
            if ((v23 & 1) == 0)
            {
              v26 = -55;
              goto LABEL_50;
            }

            v24 = -880;
          }

          else
          {
            v25 = cstdlib_strchr("abcdef", *v22);
            if (v25)
            {
              v24 = -1392;
            }

            else
            {
              v24 = -768;
            }

            if ((v23 & 1) == 0)
            {
              if (v25)
              {
                v26 = -87;
              }

              else
              {
                v26 = -48;
              }

LABEL_50:
              __sprintf_chk(&v31, 0, 3uLL, "%c", (v26 + v21 + *v22));
              v3 = v28;
              v4 = v29;
              v29[v14] = v31;
LABEL_51:
              ++v13;
              ++v14;
              goto LABEL_23;
            }
          }

          v23 = 0;
          v21 += v24 + 16 * *v22;
          v22 = v32;
        }
      }

      v4[v5++] = v10;
    }
  }

  return 0;
}

const char *UriCompleteUrl(const char *__s, char *a2, char *__dst)
{
  v4 = __s;
  v26 = *MEMORY[0x277D85DE8];
  memset(v24, 0, 512);
  if (!a2 || !*a2)
  {
    if (!__s)
    {
      *__dst = 0;
      return __s;
    }

    v9 = __dst;
    v10 = v4;
    goto LABEL_13;
  }

  if (!__s || !cstdlib_strlen(__s))
  {
    goto LABEL_10;
  }

  if (!UriGetUrlPrefixLength(v4, 0) && !UriGetUrlPrefixLength(a2, 0))
  {

    return FileFullPath(__dst, v4, a2);
  }

  v6 = cstdlib_strchr(a2, 58);
  if (!v6)
  {
    if (*a2 != 47)
    {
      goto LABEL_19;
    }

LABEL_10:
    v9 = __dst;
    v10 = a2;
LABEL_13:

    return cstdlib_strcpy(v9, v10);
  }

  v7 = v6;
  v8 = cstdlib_strchr(a2, 47);
  if (!v8 || v7 < v8)
  {
    goto LABEL_10;
  }

LABEL_19:
  v11 = cstdlib_strlen(a2);
  v12 = cstdlib_strlen(v4);
  if (*a2 == 47)
  {
    v13 = v12;
    v14 = cstdlib_strchr(v4, 58);
    if (!v14 || (v15 = v14, (__s = cstdlib_strchr(v4, 47)) != 0) && v15 >= __s)
    {
      __dsta[0] = 0;
    }

    else
    {
      v16 = v15 - v4;
      if (v16 > 0x4E)
      {
        return __s;
      }

      cstdlib_strncpy(__dsta, v4, v16);
      __dsta[v16] = 0;
    }

    v19 = cstdlib_strchr(v4, 47);
    if (v19 && (v20 = v19, v21 = v19 - v4, v19 - v4 + 1 < v13) && (v22 = v19, *v19 == 47))
    {
      __s = cstdlib_strchr(v19 + 2, 47);
      if (__s)
      {
        v23 = __s - v20 - 2;
      }

      else
      {
        v23 = v13 - v21;
      }

      if (v23 > 0x4E)
      {
        return __s;
      }

      cstdlib_strncpy(v24, v22 + 2, v23);
      *(v24 + v23) = 0;
    }

    else
    {
      LOBYTE(v24[0]) = 0;
    }

    if (cstdlib_strlen(__dsta))
    {
      cstdlib_strcpy(__dst, __dsta);
      cstdlib_strcat(__dst, ":");
    }

    else
    {
      *__dst = 0;
    }

    if ((v11 < 2 || a2[1] != 47) && cstdlib_strlen(v24))
    {
      cstdlib_strcat(__dst, "//");
      cstdlib_strcat(__dst, v24);
    }

    return cstdlib_strcat(__dst, a2);
  }

  else
  {
    v17 = cstdlib_strrchr(v4, 47);
    if (v17)
    {
      v18 = v17 - v4 + 1;
      cstdlib_strncpy(__dst, v4, v18);
      __dst[v18] = 0;
    }

    else
    {
      cstdlib_strcpy(__dst, v4);
      cstdlib_strcat(__dst, "/");
    }

    return cstdlib_strcat(__dst, a2);
  }
}

uint64_t SplitpathOrUrl(uint64_t result, char *a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  if (result)
  {
    v11 = result;
    UrlPrefixLength = UriGetUrlPrefixLength(result, 0);
    if (UrlPrefixLength)
    {
      v13 = UrlPrefixLength;
      if (a2)
      {
        cstdlib_strncpy(a2, v11, UrlPrefixLength);
        a2[v13] = 0;
      }

      v11 += v13;
      v14 = ";";
    }

    else
    {
      if (a2)
      {
        *a2 = 0;
      }

      v14 = ";:";
    }

    if (*v11 && v11[1] == 58)
    {
      if (a3)
      {
        *a3 = *v11;
        v15 = v11[1];
        v11 += 2;
        *(a3 + 1) = v15;
      }

      else
      {
        v11 += 2;
      }
    }

    else if (a3)
    {
      *a3 = 0;
    }

    v16 = *v11;
    v17 = v11;
    if (*v11)
    {
      v17 = v11;
      do
      {
        if (cstdlib_strchr(v14, v16))
        {
          break;
        }

        v18 = *++v17;
        v16 = v18;
      }

      while (v18);
    }

    v19 = v17;
    while (v19 > v11)
    {
      v21 = *--v19;
      v20 = v21;
      if (v21 == 92 || v20 == 47)
      {
        break;
      }

      if (v20 == 46)
      {
        if (!a6)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    v19 = v17;
    if (!a6)
    {
      goto LABEL_31;
    }

LABEL_28:
    v22 = *v19;
    *a6 = v22;
    if (v22)
    {
      v23 = (v19 + 1);
      v24 = a6 + 1;
      do
      {
        v25 = *v23++;
        *v24++ = v25;
      }

      while (v25);
    }

LABEL_31:
    v26 = 0;
    do
    {
      v27 = v26;
      v28 = &v19[v26];
      if (&v19[v26] <= v11)
      {
        break;
      }

      v29 = *(v28 - 1);
      if (v29 == 92)
      {
        break;
      }

      --v26;
    }

    while (v29 != 47);
    if (a5)
    {
      if (v28 < v19)
      {
        do
        {
          *a5++ = v19[v27++];
        }

        while (v27);
      }

      *a5 = 0;
    }

    if (a4)
    {
      for (; v11 < v28; ++a4)
      {
        v30 = *v11++;
        *a4 = v30;
      }

      *a4 = 0;
    }

    return 1;
  }

  return result;
}

uint64_t IsThisUrlOrRealPath(char *a1, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 < 32)
      {
        return 0;
      }

      result = 0;
      v9 = v7 > 0x3F || ((1 << v7) & 0xD000040400000000) == 0;
      if (!v9 || v7 == 124)
      {
        return result;
      }
    }

    while (--a2);
  }

  v10 = *a1;
  result = 1;
  if (v10 != 47 && v10 != 92)
  {
    if (UriGetUrlPrefixLength(a1, 0))
    {
      result = 1;
      if (a3)
      {
        *a3 = 1;
      }

      return result;
    }

    if ((*a1 & 0xDFu) - 65 <= 0x19 && a1[1] == 58)
    {
      return 1;
    }

    result = cstdlib_strrchr(a1, 46);
    if (result)
    {
      while (1)
      {
        v11 = *result;
        if ((v11 - 32) <= 0x3C && ((1 << (v11 - 32)) & 0x1000000000008001) != 0)
        {
          break;
        }

        if (!*result)
        {
          return 1;
        }

        ++result;
      }

      return 0;
    }
  }

  return result;
}

size_t UriGetExtensionFromURI(char *__s, uint64_t a2, unint64_t a3)
{
  result = 0;
  if (__s)
  {
    if (a3 >= 2)
    {
      result = cstdlib_strlen(__s);
      if (result)
      {
        v7 = 0;
        v8 = result - 1;
        do
        {
          if (__s[v8] == 63)
          {
            v7 = v8;
          }

          --v8;
        }

        while (v8 != -1);
        if (!v7)
        {
          v7 = result;
        }

        v9 = __s - 1;
        v10 = v7;
        do
        {
          if (v9[v10] == 46)
          {
            break;
          }

          --v10;
        }

        while (v10);
        if (v10 - 1 >= v7)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          v12 = &v9[v10];
          do
          {
            *(a2 + v11) = v12[v11];
            v13 = v10 + v11++;
          }

          while (v13 < v7 && v11 < a3 - 1);
        }

        *(a2 + v11) = 0;
        return a2;
      }
    }
  }

  return result;
}

char *UriToBrokerString(void *a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = (v4 & 0x7FFFFFFF) + 1;
  while (1)
  {
    v8 = __s[v7 - 2];
    if (v8 != 46)
    {
      break;
    }

    v5 = v7 - 2;
    v6 = 1;
LABEL_8:
    if (--v7 <= 1)
    {
      v9 = 0;
      if (!v6)
      {
        return 0;
      }

      goto LABEL_12;
    }
  }

  if (v8 != 47 && v8 != 92)
  {
    goto LABEL_8;
  }

  v9 = v7 - 1;
  if (!v6)
  {
    return 0;
  }

LABEL_12:
  v11 = (v5 - v9);
  v12 = heap_Calloc(a1, 1, (v11 + 1));
  v10 = v12;
  if (v12)
  {
    cstdlib_strncpy(v12, &__s[v9], v11);
    v10[v11] = 0;
  }

  return v10;
}

void *strhelper_Strdup(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = heap_Alloc(a1, v4 + 1);
  v6 = v5;
  if (v5)
  {
    cstdlib_memcpy(v5, __s, v4 + 1);
  }

  return v6;
}

char *strhelper_SafeStrtok(uint64_t a1, char *__s, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  v7 = (*a3 + a1 + 1);
  while (!cstdlib_strchr(__s, v4))
  {
    ++*a3;
    v8 = *v7++;
    v4 = v8;
    if (!v8)
    {
      return v3;
    }
  }

  v9 = *(v7 - 1);
  if (v9)
  {
    do
    {
      if (!cstdlib_strchr(__s, v9))
      {
        break;
      }

      *(v7 - 1) = 0;
      ++*a3;
      v10 = *v7++;
      v9 = v10;
    }

    while (v10);
  }

  return v3;
}

char *strhelper_StringAppend(uint64_t *a1, char *__s, char *a3, size_t a4, uint64_t *a5, unint64_t a6)
{
  v6 = __s;
  if (a3)
  {
    v9 = a4;
    if (a4 == -1)
    {
      v9 = cstdlib_strlen(a3);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else if (__s)
    {
LABEL_4:
      if (!a5)
      {
        return 0;
      }

      v12 = cstdlib_strlen(v6);
      if (v9 >= ~v12)
      {
        return 0;
      }

      v13 = v12;
      v14 = *a5;
      if (v9 + v12 + 1 >= *a5)
      {
        if (~v9 > a6 && -2 - (v9 + a6) >= v14)
        {
          v15 = v9 + a6 + v14 + 1;
          *a5 = v15;
          v6 = heap_Realloc(a1, v6, v15);
          if (!v6)
          {
            return v6;
          }

          goto LABEL_17;
        }

        return 0;
      }

LABEL_17:
      cstdlib_strncat(v6, a3, v9);
      v6[v13 + v9] = 0;
      return v6;
    }

    if (~v9 <= a6)
    {
      return 0;
    }

    v16 = heap_Alloc(a1, a6 + v9 + 1);
    v6 = v16;
    if (v16)
    {
      if (a5)
      {
        *a5 = a6 + v9 + 1;
      }

      v13 = 0;
      *v16 = 0;
      goto LABEL_17;
    }
  }

  return v6;
}

uint64_t strhelper_SafeCat(char *a1, char *__s, size_t a3, size_t a4)
{
  v4 = 2246057991;
  if (a1 && __s)
  {
    v7 = a3;
    if (cstdlib_strlen(__s) < a3)
    {
      v7 = cstdlib_strlen(__s);
    }

    if (cstdlib_strlen(a1) + v7 >= a4)
    {
      return 2246057993;
    }

    else
    {
      cstdlib_strncat(a1, __s, v7);
      return 0;
    }
  }

  return v4;
}

uint64_t strhelper_SafeCpy(char *a1, char *a2, size_t a3, size_t a4)
{
  if (!a1 || !a2)
  {
    return 2246057991;
  }

  *a1 = 0;
  return strhelper_SafeCat(a1, a2, a3, a4);
}

char *strhelper_csv_EndOfElem(char *a1)
{
  result = cstdlib_strchr(a1, 44);
  if (!result)
  {
    return &a1[cstdlib_strlen(a1)];
  }

  return result;
}

uint64_t strhelper_csv_HasElem(char *a1, char *__s)
{
  result = 0;
  if (a1 && __s)
  {
    v5 = cstdlib_strlen(__s);
    while (1)
    {
      v6 = strhelper_csv_EndOfElem(a1);
      if (v6 - a1 == v5 && !cstdlib_memcmp(a1, __s, v5))
      {
        break;
      }

      a1 = v6 + 1;
      if (!*v6)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t tinystack_Reset(uint64_t result)
{
  if (result)
  {
    if (*result == tinystack_Ini)
    {
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t tinystack_Ini(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 2166366218;
  if (!a2)
  {
    return 2166366215;
  }

  v7 = heap_Alloc(*(a1 + 8), 48);
  if (v7)
  {
    v8 = v7;
    *v7 = 0;
    v9 = heap_Alloc(*(a1 + 8), 8 * a2);
    v8[1] = v9;
    if (v9)
    {
      v3 = 0;
      v8[2] = a2;
      v8[3] = a2;
      v8[4] = 0;
      v8[5] = a1;
      *v8 = tinystack_Ini;
      *a3 = v8;
    }

    else
    {
      heap_Free(*(a1 + 8), v8);
    }
  }

  return v3;
}

void *tinystack_Delete(void *result)
{
  if (result)
  {
    v1 = result;
    if (*result == tinystack_Ini)
    {
      v2 = result[1];
      if (v2)
      {
        heap_Free(*(result[5] + 8), v2);
      }

      *v1 = 0;
      v3 = *(v1[5] + 8);

      return heap_Free(v3, v1);
    }
  }

  return result;
}

uint64_t tinystack_Push(uint64_t a1, uint64_t a2)
{
  v2 = 2166366215;
  if (a1 && *a1 == tinystack_Ini)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 16);
    v7 = v6 - 1;
    if (v5 > v6 - 1)
    {
      v8 = *(a1 + 24) + v6;
      v9 = heap_Realloc(*(*(a1 + 40) + 8), *(a1 + 8), 8 * v8);
      if (!v9)
      {
        return 2166366218;
      }

      *(a1 + 8) = v9;
      *(a1 + 16) = v8;
      v7 = v8 - 1;
      v5 = *(a1 + 32);
    }

    if (v5 <= v7)
    {
      v2 = 0;
      *(*(a1 + 8) + 8 * v5) = a2;
      *(a1 + 32) = v5 + 1;
      return v2;
    }

    return 2166366218;
  }

  return v2;
}

uint64_t tinystack_Pop(uint64_t a1, void *a2)
{
  result = 2166366215;
  if (a1)
  {
    if (*a1 == tinystack_Ini)
    {
      result = 2166366223;
      if (a2)
      {
        v4 = *(a1 + 32);
        if (v4)
        {
          result = 0;
          *a2 = *(*(a1 + 8) + 8 * v4 - 8);
          *(a1 + 32) = v4 - 1;
        }
      }
    }
  }

  return result;
}

uint64_t tinystack_View(uint64_t a1, void *a2)
{
  result = 2166366215;
  if (a1 && a2 && *a1 == tinystack_Ini)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      result = 0;
      *a2 = *(*(a1 + 8) + 8 * v4 - 8);
    }

    else
    {
      return 2166366223;
    }
  }

  return result;
}

uint64_t tinystack_Find(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 2166366215;
  *a3 = 0;
  if (a1 && a2 && *a1 == tinystack_Ini)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 8) - 8;
      while (*(v6 + 8 * v5) != a2)
      {
        if (!--v5)
        {
          return 0;
        }
      }

      result = 0;
      *a3 = 1;
    }

    else
    {
      return 2166366223;
    }
  }

  return result;
}

uint64_t ttsJSON_GetStringValue(uint64_t result)
{
  if (result)
  {
    if (*(result + 24) == 16)
    {
      return *(result + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL ttsJSON_IsString(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 16;
  }

  return result;
}

double ttsJSON_GetNumberValue(uint64_t a1)
{
  if (a1 && *(a1 + 24) == 8)
  {
    return *(a1 + 48);
  }

  else
  {
    return NAN;
  }
}

BOOL ttsJSON_IsNumber(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 8;
  }

  return result;
}

void *ttsJSON_Delete(void *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = *(v2 + 24);
      if ((v3 & 0x100) == 0 && *(v2 + 16))
      {
        ttsJSON_Delete();
        v3 = *(v2 + 24);
      }

      if ((v3 & 0x100) == 0)
      {
        v4 = *(v2 + 32);
        if (v4)
        {
          heap_Free(*(v2 + 64), v4);
          v3 = *(v2 + 24);
        }
      }

      if ((v3 & 0x200) == 0)
      {
        v5 = *(v2 + 56);
        if (v5)
        {
          heap_Free(*(v2 + 64), v5);
        }
      }

      result = heap_Free(*(v2 + 64), v2);
    }

    while (v1);
  }

  return result;
}

uint64_t ttsJSON_SetNumberHelper(uint64_t result, double a2)
{
  if (a2 >= 2147483650.0)
  {
    v2 = 0x7FFFFFFF;
  }

  else if (a2 > -2147483650.0)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0x80000000;
  }

  *(result + 40) = v2;
  *(result + 48) = a2;
  return result;
}

void *ttsJSON_SetValuestring(uint64_t a1, char *__s)
{
  if ((*(a1 + 24) & 0x110) != 0x10)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  if (v4 <= cstdlib_strlen(*(a1 + 32)))
  {
    cstdlib_strcpy(*(a1 + 32), __s);
    return *(a1 + 32);
  }

  else
  {
    v5 = ttsJSON_strdup(*(a1 + 64), __s);
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        heap_Free(*(a1 + 64), v6);
      }

      *(a1 + 32) = v5;
    }
  }

  return v5;
}

void *ttsJSON_strdup(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = heap_Alloc(a1, v4 + 1);
  v6 = v5;
  if (v5)
  {
    cstdlib_memcpy(v5, __s, v4 + 1);
  }

  return v6;
}

void *ttsJSON_ParseWithOpts(uint64_t a1, char *__s, void *a3, int a4)
{
  if (!__s)
  {
    return 0;
  }

  v8 = cstdlib_strlen(__s) + 1;

  return ttsJSON_ParseWithLengthOpts(a1, __s, v8, a3, a4);
}

void *ttsJSON_ParseWithLengthOpts(uint64_t a1, const char *a2, unint64_t a3, void *a4, int a5)
{
  v16 = 0u;
  v17 = 0u;
  global_error_0 = 0;
  global_error_1 = 0;
  if (!a2)
  {
    goto LABEL_20;
  }

  v7 = a3;
  if (!a3)
  {
    goto LABEL_20;
  }

  *&v16 = a2;
  *(&v16 + 1) = a3;
  v9 = ttsJSON_New_Item(a1);
  if (!v9)
  {
    v13 = 0;
LABEL_22:
    v14 = v7 - 1;
    if (!v7)
    {
      v14 = 0;
    }

    if (v13 >= v7)
    {
      v13 = v14;
    }

    if (a4)
    {
      *a4 = &a2[v13];
    }

    v10 = 0;
    global_error_0 = a2;
    global_error_1 = v13;
    return v10;
  }

  v10 = v9;
  if (v7 >= 5 && !cstdlib_strncmp(a2, "﻿", 3uLL))
  {
    *&v17 = 3;
  }

  v11 = buffer_skip_whitespace(&v16);
  if (!parse_value(v10, v11))
  {
    goto LABEL_19;
  }

  if (a5)
  {
    v12 = v17;
    if (v16 && v17 < *(&v16 + 1))
    {
      while (*(v16 + v12) <= 0x20u)
      {
        *&v17 = ++v12;
        if (*(&v16 + 1) == v12)
        {
          goto LABEL_16;
        }
      }

      if (*(&v16 + 1) != v12)
      {
        goto LABEL_17;
      }

LABEL_16:
      v12 = *(&v16 + 1) - 1;
      *&v17 = *(&v16 + 1) - 1;
    }

LABEL_17:
    if (v12 >= *(&v16 + 1) || *(v16 + v12))
    {
LABEL_19:
      ttsJSON_Delete(v10);
LABEL_20:
      if (!a2)
      {
        return 0;
      }

      v7 = *(&v16 + 1);
      v13 = v17;
      goto LABEL_22;
    }
  }

  if (a4)
  {
    *a4 = v16 + v17;
  }

  return v10;
}

void *ttsJSON_New_Item(uint64_t a1)
{
  v2 = heap_Alloc(a1, 72);
  v3 = v2;
  if (v2)
  {
    cstdlib_memset(v2, 0, 0x48uLL);
    v3[8] = a1;
  }

  return v3;
}

uint64_t parse_value(uint64_t a1, uint64_t *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a2 || !*a2)
  {
    return 0;
  }

  v5 = a2[1];
  v4 = a2[2];
  if (v4 + 4 <= v5)
  {
    v6 = cstdlib_strncmp((*a2 + v4), "null", 4uLL);
    v4 = a2[2];
    if (!v6)
    {
      *(a1 + 24) = 4;
      v12 = v4 + 4;
LABEL_18:
      a2[2] = v12;
      return 1;
    }

    v5 = a2[1];
  }

  if (v4 + 5 <= v5)
  {
    v7 = cstdlib_strncmp((*a2 + v4), "false", 5uLL);
    v4 = a2[2];
    if (!v7)
    {
      result = 1;
      *(a1 + 24) = 1;
      v13 = v4 + 5;
      goto LABEL_35;
    }

    v5 = a2[1];
  }

  if (v4 + 4 <= v5)
  {
    v8 = cstdlib_strncmp((*a2 + v4), "true", 4uLL);
    v4 = a2[2];
    if (!v8)
    {
      *(a1 + 24) = 2;
      result = 1;
      *(a1 + 40) = 1;
      v13 = v4 + 4;
      goto LABEL_35;
    }

    v5 = a2[1];
  }

  if (v4 >= v5)
  {
    return 0;
  }

  v9 = (*a2 + v4);
  v10 = *v9;
  if (v10 == 34)
  {

    return parse_string(a1, a2);
  }

  if (v10 == 45 || (v10 - 48) <= 9)
  {
    v15 = 0;
    v16 = v5 >= v4;
    v17 = v5 - v4;
    v32 = 0;
    if (!v16)
    {
      v17 = 0;
    }

    while (v17 != v15)
    {
      v18 = v9[v15];
      if ((v18 - 48) < 0xA || ((v18 - 43) <= 0x3A ? (v19 = ((1 << (v18 - 43)) & 0x40000000400000DLL) == 0) : (v19 = 1), !v19))
      {
        v33[v15++] = v18;
        if (v15 != 63)
        {
          continue;
        }
      }

      goto LABEL_45;
    }

    v15 = v17;
LABEL_45:
    v33[v15] = 0;
    cstdlib_strtod(v33, &v32);
    v24 = v32;
    if (v33 != v32)
    {
      *(a1 + 48) = v23;
      if (v23 > -2147483650.0)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0x80000000;
      }

      if (v23 < 2147483650.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0x7FFFFFFF;
      }

      *(a1 + 40) = v26;
      *(a1 + 24) = 8;
      v12 = v24 - v33 + a2[2];
      goto LABEL_18;
    }

    return 0;
  }

  if (v10 != 123)
  {
    if (v10 != 91)
    {
      return 0;
    }

    v20 = a2[3];
    if (v20 > 0x3E7)
    {
      return 0;
    }

    a2[3] = v20 + 1;
    if (*v9 != 91)
    {
      return 0;
    }

    a2[2] = v4 + 1;
    buffer_skip_whitespace(a2);
    v21 = a2[2];
    if (v21 < a2[1])
    {
      if (*(*a2 + v21) == 93)
      {
        v22 = 0;
        --a2[3];
LABEL_43:
        *(a1 + 24) = 32;
        *(a1 + 16) = v22;
        v12 = v21 + 1;
        goto LABEL_18;
      }

      v27 = 0;
      v28 = 0;
      a2[2] = v21 - 1;
      while (1)
      {
        v29 = ttsJSON_New_Item(*(a1 + 64));
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v22 = v29;
        if (v27)
        {
          *v28 = v29;
          v29[1] = v28;
          v22 = v27;
        }

        ++a2[2];
        buffer_skip_whitespace(a2);
        if (!parse_value(v30, a2))
        {
          goto LABEL_66;
        }

        buffer_skip_whitespace(a2);
        v21 = a2[2];
        if (v21 >= a2[1])
        {
          goto LABEL_66;
        }

        v31 = *(*a2 + v21);
        v27 = v22;
        v28 = v30;
        if (v31 != 44)
        {
          if (v31 == 93)
          {
            --a2[3];
            v22[1] = v30;
            goto LABEL_43;
          }

LABEL_66:
          v27 = v22;
LABEL_67:
          ttsJSON_Delete(v27);
          return 0;
        }
      }

      if (v27)
      {
        goto LABEL_67;
      }

      return 0;
    }

    result = 0;
    v13 = v21 - 1;
LABEL_35:
    a2[2] = v13;
    return result;
  }

  return parse_object(a1, a2);
}

void *buffer_skip_whitespace(void *result)
{
  if (result)
  {
    if (*result)
    {
      v1 = result[1];
      v2 = result[2];
      v3 = v1 - v2;
      if (v1 > v2)
      {
        v4 = (*result + v2);
        v5 = v2 + 1;
        while (1)
        {
          v6 = *v4++;
          if (v6 > 0x20)
          {
            break;
          }

          result[2] = v5++;
          if (!--v3)
          {
            goto LABEL_11;
          }
        }

        if (v3)
        {
          return result;
        }

LABEL_11:
        result[2] = v1 - 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t print(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  cstdlib_memset(v10, 0, 0x28uLL);
  result = heap_Alloc(*(a1 + 64), 256);
  v10[0] = result;
  v10[1] = 256;
  v12 = a2;
  if (!result)
  {
    return result;
  }

  print_value(a1, v10, v5);
  v6 = v10[0];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v11;
  if (v10[0])
  {
    v9 = cstdlib_strlen((v10[0] + v11));
    v6 = v10[0];
    v8 = v11 + v9;
    v11 += v9;
  }

  result = heap_Realloc(*(a1 + 64), v6, v8 + 1);
  if (!result)
  {
    v6 = v10[0];
LABEL_7:
    if (v6)
    {
      heap_Free(*(a1 + 64), v6);
    }

    return 0;
  }

  return result;
}

uint64_t ttsJSON_PrintBuffered(uint64_t a1, unsigned int a2, int a3)
{
  v9[3] = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v5 = a2;
    result = heap_Alloc(*(a1 + 64), a2);
    v9[0] = result;
    if (!result)
    {
      return result;
    }

    v9[1] = v5;
    v9[2] = 0;
    v10 = 0;
    v11 = a3;
    print_value(a1, v9, v7);
    if (v8)
    {
      return v9[0];
    }

    heap_Free(*(a1 + 64), v9[0]);
  }

  return 0;
}

void print_value(const oid *objid, size_t objidlen, const netsnmp_variable_list *variable)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!objid || !objidlen)
  {
    return;
  }

  v5 = *(objid + 24);
  if (v5 > 0xF)
  {
    if (*(objid + 24) > 0x3Fu)
    {
      if (v5 != 64)
      {
        if (v5 == 128)
        {
          v20 = objid[4];
          if (v20)
          {
            v21 = cstdlib_strlen(v20);
            v22 = ensure(*(objid + 8), objidlen, v21 + 1);
            if (v22)
            {
              cstdlib_memcpy(v22, *(objid + 4), v21 + 1);
            }
          }
        }

        return;
      }

      v25 = objid[2];
      if (*(objidlen + 36))
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      v27 = ensure(*(objid + 8), objidlen, v26 + 1);
      if (!v27)
      {
        return;
      }

      *v27 = 123;
      ++*(objidlen + 24);
      if (*(objidlen + 36))
      {
        v27[1] = 10;
      }

      *(objidlen + 16) += v26;
      if (v25)
      {
        while (1)
        {
          if (*(objidlen + 36))
          {
            v28 = ensure(*(objid + 8), objidlen, *(objidlen + 24));
            if (!v28)
            {
              return;
            }

            v29 = *(objidlen + 24);
            if (v29)
            {
              for (i = 0; i < v29; ++i)
              {
                *(v28 + i) = 9;
                v29 = *(objidlen + 24);
              }
            }

            *(objidlen + 16) += v29;
          }

          if (!print_string_ptr(*(objid + 8), *(v25 + 56), objidlen))
          {
            break;
          }

          if (*objidlen)
          {
            *(objidlen + 16) += cstdlib_strlen((*objidlen + *(objidlen + 16)));
          }

          v31 = *(objidlen + 36) ? 2 : 1;
          v32 = ensure(*(objid + 8), objidlen, v31);
          if (!v32)
          {
            break;
          }

          *v32 = 58;
          if (*(objidlen + 36))
          {
            v32[1] = 9;
          }

          *(objidlen + 16) += v31;
          print_value(v25, objidlen, v33);
          if (!v34)
          {
            break;
          }

          if (*objidlen)
          {
            *(objidlen + 16) += cstdlib_strlen((*objidlen + *(objidlen + 16)));
          }

          v35 = *(objidlen + 36) ? (*v25 != 0) + 1 : *v25 != 0;
          v36 = ensure(*(objid + 8), objidlen, v35 + 1);
          if (!v36)
          {
            break;
          }

          if (*v25)
          {
            *v36++ = 44;
          }

          if (*(objidlen + 36))
          {
            *v36++ = 10;
          }

          *v36 = 0;
          *(objidlen + 16) += v35;
          v25 = *v25;
          if (!v25)
          {
            goto LABEL_79;
          }
        }

        return;
      }

LABEL_79:
      if (*(objidlen + 36))
      {
        v37 = *(objidlen + 24) + 1;
      }

      else
      {
        v37 = 2;
      }

      v15 = ensure(*(objid + 8), objidlen, v37);
      if (!v15)
      {
        return;
      }

      if (*(objidlen + 36) && *(objidlen + 24) != 1)
      {
        v45 = 0;
        do
        {
          *(v15 + v45++) = 9;
        }

        while (v45 < *(objidlen + 24) - 1);
        v15 = (v15 + v45);
      }

      v16 = 125;
    }

    else
    {
      if (v5 == 16)
      {
        v23 = objid[8];
        v24 = objid[4];

        print_string_ptr(v23, v24, objidlen);
        return;
      }

      if (v5 != 32)
      {
        return;
      }

      v8 = objid[2];
      v9 = ensure(*(objid + 8), objidlen, 1uLL);
      if (!v9)
      {
        return;
      }

      *v9 = 91;
      *(objidlen + 16) = vaddq_s64(*(objidlen + 16), vdupq_n_s64(1uLL));
      if (v8)
      {
        while (1)
        {
          print_value(v8, objidlen, v10);
          if (!v11)
          {
            return;
          }

          if (*objidlen)
          {
            *(objidlen + 16) += cstdlib_strlen((*objidlen + *(objidlen + 16)));
          }

          if (*v8)
          {
            if (*(objidlen + 36))
            {
              v12 = 2;
            }

            else
            {
              v12 = 1;
            }

            v13 = ensure(*(objid + 8), objidlen, v12 + 1);
            if (!v13)
            {
              return;
            }

            *v13 = 44;
            v14 = v13 + 1;
            if (*(objidlen + 36))
            {
              v14 = v13 + 2;
              v13[1] = 32;
            }

            *v14 = 0;
            *(objidlen + 16) += v12;
            v8 = *v8;
            if (v8)
            {
              continue;
            }
          }

          break;
        }
      }

      v15 = ensure(*(objid + 8), objidlen, 2uLL);
      if (!v15)
      {
        return;
      }

      v16 = 93;
    }

    *v15 = v16;
    --*(objidlen + 24);
    return;
  }

  if (*(objid + 24) > 3u)
  {
    if (v5 == 4)
    {
      v6 = ensure(*(objid + 8), objidlen, 5uLL);
      if (!v6)
      {
        return;
      }

      v7 = "null";
      goto LABEL_43;
    }

    if (v5 != 8)
    {
      return;
    }

    v17 = *(objid + 6);
    *v47 = 0;
    v48 = 0;
    v50 = 0;
    v49 = 0;
    v46 = 0.0;
    v18 = fabs(v17);
    if (v18 == INFINITY)
    {
      v19 = __sprintf_chk(v47, 0, 0x1AuLL, "null");
    }

    else if (v17 == *(objid + 10))
    {
      v19 = __sprintf_chk(v47, 0, 0x1AuLL, "%d");
    }

    else
    {
      v38 = __sprintf_chk(v47, 0, 0x1AuLL, "%1.15g", v17);
      if (sscanf(v47, "%lg", &v46) == 1)
      {
        v39 = fabs(v46);
        if (v39 <= v18)
        {
          v39 = v18;
        }

        if (vabdd_f64(v46, v17) <= v39 * 2.22044605e-16)
        {
          goto LABEL_89;
        }
      }

      v19 = __sprintf_chk(v47, 0, 0x1AuLL, "%1.17g");
    }

    v38 = v19;
LABEL_89:
    if (v38 <= 0x19)
    {
      v40 = ensure(*(objid + 8), objidlen, v38 + 1);
      if (v40)
      {
        if (v38)
        {
          v41 = v47;
          v42 = v40;
          v43 = v38;
          do
          {
            v44 = *v41++;
            *v42++ = v44;
            --v43;
          }

          while (v43);
        }

        *(v40 + v38) = 0;
        *(objidlen + 16) += v38;
      }
    }

    return;
  }

  if (v5 == 1)
  {
    v6 = ensure(*(objid + 8), objidlen, 6uLL);
    if (!v6)
    {
      return;
    }

    v7 = "false";
    goto LABEL_43;
  }

  if (v5 == 2)
  {
    v6 = ensure(*(objid + 8), objidlen, 5uLL);
    if (v6)
    {
      v7 = "true";
LABEL_43:
      cstdlib_strcpy(v6, v7);
    }
  }
}

uint64_t ttsJSON_PrintPreallocated(const oid *a1, uint64_t a2, const netsnmp_variable_list *a3, int a4)
{
  v4 = 0;
  v7[3] = 0;
  if (a2 && (a3 & 0x80000000) == 0)
  {
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = 0;
    v8 = 1;
    v9 = a4;
    print_value(a1, v7, a3);
    return v5;
  }

  return v4;
}

uint64_t ttsJSON_GetArraySize(uint64_t result)
{
  if (result)
  {
    v1 = (result + 16);
    LODWORD(result) = -1;
    do
    {
      v1 = *v1;
      result = (result + 1);
    }

    while (v1);
  }

  return result;
}

void *ttsJSON_GetArrayItem(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    v4 = a2;
    result = (a1 + 16);
    do
    {
      result = *result;
      v6 = v4-- != 0;
    }

    while (result && v6);
  }

  return result;
}

void *get_object_item(uint64_t a1, char *__s1, int a3)
{
  result = 0;
  if (a1 && __s1)
  {
    v6 = *(a1 + 16);
    if (a3)
    {
      if (v6)
      {
        while (1)
        {
          v7 = v6[7];
          if (!v7 || !cstdlib_strcmp(__s1, v7))
          {
            break;
          }

          v6 = *v6;
          if (!v6)
          {
            return 0;
          }
        }

LABEL_20:
        if (v6[7])
        {
          return v6;
        }

        else
        {
          return 0;
        }
      }
    }

    else if (v6)
    {
      while (1)
      {
        v8 = v6[7];
        if (v8)
        {
          if (v8 == __s1)
          {
            goto LABEL_20;
          }

          v9 = cstdlib_tolower(*__s1);
          v10 = cstdlib_tolower(*v8);
          v11 = __s1;
          while (v9 == v10)
          {
            if (!*v11)
            {
              goto LABEL_20;
            }

            v12 = *++v11;
            v9 = cstdlib_tolower(v12);
            v13 = *++v8;
            v10 = cstdlib_tolower(v13);
          }

          v14 = cstdlib_tolower(*v11);
          if (v14 == cstdlib_tolower(*v8))
          {
            goto LABEL_20;
          }
        }

        result = 0;
        v6 = *v6;
        if (!v6)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t add_item_to_array(void *a1, void *a2)
{
  result = 0;
  if (a1 != a2 && a1 && a2)
  {
    v4 = a1[2];
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        *v5 = a2;
        a2[1] = v5;
        result = 1;
        *(v4 + 8) = a2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      a1[2] = a2;
      result = 1;
      *a2 = 0;
      a2[1] = a2;
    }
  }

  return result;
}

uint64_t add_item_to_object(void *a1, char *__s, uint64_t a3, int a4)
{
  if (a1 == a3)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v5 = __s;
  if (!__s || !a3)
  {
    return 0;
  }

  if (a4)
  {
    v7 = *(a3 + 24);
    v8 = v7 | 0x200;
    if ((v7 & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v11 = *(a3 + 56);
    if (v11)
    {
      heap_Free(a1[8], v11);
    }

    goto LABEL_12;
  }

  v9 = ttsJSON_strdup(a1[8], __s);
  if (!v9)
  {
    return 0;
  }

  v5 = v9;
  v10 = *(a3 + 24);
  v8 = v10 & 0xFFFFFDFF;
  if ((v10 & 0x200) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  *(a3 + 56) = v5;
  *(a3 + 24) = v8;

  return add_item_to_array(a1, a3);
}

uint64_t ttsJSON_AddItemReferenceToArray(void *a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0;
  }

  reference = create_reference(a2);
  v4 = 0;
  if (reference != a1 && reference)
  {
    v5 = a1[2];
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        *v6 = reference;
        reference[1] = v6;
        v4 = 1;
        *(v5 + 8) = reference;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      a1[2] = reference;
      v4 = 1;
      *reference = 0;
      reference[1] = reference;
    }
  }

  return v4;
}

void *create_reference(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = ttsJSON_New_Item(a1[8]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  cstdlib_memcpy(v2, a1, 0x48uLL);
  v3[7] = 0;
  *(v3 + 6) |= 0x100u;
  *v3 = 0;
  v3[1] = 0;
  return v3;
}

uint64_t ttsJSON_AddItemReferenceToObject(void *a1, char *a2, uint64_t *a3)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  reference = create_reference(a3);

  return add_item_to_object(a1, a2, reference, 0);
}

void *ttsJSON_AddNullToObject(void *a1, char *a2)
{
  v4 = ttsJSON_New_Item(a1[8]);
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = 4;
  }

  if (!add_item_to_object(a1, a2, v4, 0))
  {
    ttsJSON_Delete(v5);
    return 0;
  }

  return v5;
}

void *ttsJSON_CreateNull(uint64_t a1)
{
  result = ttsJSON_New_Item(a1);
  if (result)
  {
    *(result + 6) = 4;
  }

  return result;
}

void *ttsJSON_AddTrueToObject(void *a1, char *a2)
{
  v4 = ttsJSON_New_Item(a1[8]);
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = 2;
  }

  if (!add_item_to_object(a1, a2, v4, 0))
  {
    ttsJSON_Delete(v5);
    return 0;
  }

  return v5;
}

void *ttsJSON_CreateTrue(uint64_t a1)
{
  result = ttsJSON_New_Item(a1);
  if (result)
  {
    *(result + 6) = 2;
  }

  return result;
}

void *ttsJSON_AddFalseToObject(void *a1, char *a2)
{
  v4 = ttsJSON_New_Item(a1[8]);
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = 1;
  }

  if (!add_item_to_object(a1, a2, v4, 0))
  {
    ttsJSON_Delete(v5);
    return 0;
  }

  return v5;
}

void *ttsJSON_CreateFalse(uint64_t a1)
{
  result = ttsJSON_New_Item(a1);
  if (result)
  {
    *(result + 6) = 1;
  }

  return result;
}

void *ttsJSON_AddBoolToObject(void *a1, char *a2, int a3)
{
  v6 = ttsJSON_New_Item(a1[8]);
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    *(v6 + 6) = v8;
  }

  if (!add_item_to_object(a1, a2, v6, 0))
  {
    ttsJSON_Delete(v7);
    return 0;
  }

  return v7;
}

void *ttsJSON_CreateBool(uint64_t a1, int a2)
{
  result = ttsJSON_New_Item(a1);
  if (result)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    *(result + 6) = v4;
  }

  return result;
}

void *ttsJSON_AddNumberToObject(void *a1, char *a2, double a3)
{
  v6 = ttsJSON_New_Item(a1[8]);
  v7 = v6;
  if (v6)
  {
    *(v6 + 6) = 8;
    *(v6 + 6) = a3;
    if (a3 > -2147483650.0)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0x80000000;
    }

    if (a3 < 2147483650.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x7FFFFFFF;
    }

    *(v6 + 10) = v9;
  }

  if (!add_item_to_object(a1, a2, v6, 0))
  {
    ttsJSON_Delete(v7);
    return 0;
  }

  return v7;
}

void *ttsJSON_CreateNumber(uint64_t a1, double a2)
{
  result = ttsJSON_New_Item(a1);
  if (result)
  {
    *(result + 6) = 8;
    *(result + 6) = a2;
    if (a2 >= 2147483650.0)
    {
      v4 = 0x7FFFFFFF;
    }

    else if (a2 > -2147483650.0)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0x80000000;
    }

    *(result + 10) = v4;
  }

  return result;
}

void *ttsJSON_AddStringToObject(void *a1, char *a2, char *a3)
{
  String = ttsJSON_CreateString(a1[8], a3);
  if (!add_item_to_object(a1, a2, String, 0))
  {
    ttsJSON_Delete(String);
    return 0;
  }

  return String;
}

void *ttsJSON_CreateString(uint64_t a1, char *a2)
{
  v4 = ttsJSON_New_Item(a1);
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = 16;
    v6 = ttsJSON_strdup(a1, a2);
    v5[4] = v6;
    if (!v6)
    {
      ttsJSON_Delete(v5);
      return 0;
    }
  }

  return v5;
}

void *ttsJSON_AddRawToObject(void *a1, char *a2, char *a3)
{
  Raw = ttsJSON_CreateRaw(a1[8], a3);
  if (!add_item_to_object(a1, a2, Raw, 0))
  {
    ttsJSON_Delete(Raw);
    return 0;
  }

  return Raw;
}

void *ttsJSON_CreateRaw(uint64_t a1, char *a2)
{
  v4 = ttsJSON_New_Item(a1);
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = 128;
    v6 = ttsJSON_strdup(a1, a2);
    v5[4] = v6;
    if (!v6)
    {
      ttsJSON_Delete(v5);
      return 0;
    }
  }

  return v5;
}

void *ttsJSON_AddObjectToObject(void *a1, char *a2)
{
  v4 = ttsJSON_New_Item(a1[8]);
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = 64;
  }

  if (!add_item_to_object(a1, a2, v4, 0))
  {
    ttsJSON_Delete(v5);
    return 0;
  }

  return v5;
}

void *ttsJSON_CreateObject(uint64_t a1)
{
  result = ttsJSON_New_Item(a1);
  if (result)
  {
    *(result + 6) = 64;
  }

  return result;
}

void *ttsJSON_AddArrayToObject(void *a1, char *a2)
{
  v4 = ttsJSON_New_Item(a1[8]);
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = 32;
  }

  if (!add_item_to_object(a1, a2, v4, 0))
  {
    ttsJSON_Delete(v5);
    return 0;
  }

  return v5;
}

void *ttsJSON_CreateArray(uint64_t a1)
{
  result = ttsJSON_New_Item(a1);
  if (result)
  {
    *(result + 6) = 32;
  }

  return result;
}

uint64_t *ttsJSON_DetachItemViaPointer(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *a2;
  if (v2 == a2)
  {
    if (v3)
    {
      *(v3 + 8) = a2[1];
    }

    *(a1 + 16) = v3;
  }

  else
  {
    v4 = a2[1];
    *v4 = v3;
    if (v3)
    {
      *(v3 + 8) = v4;
    }

    else
    {
      v2[1] = v4;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return a2;
}

uint64_t *ttsJSON_DetachItemFromArray(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1)
  {
    v2 = a2;
    v3 = (a1 + 16);
    do
    {
      v3 = *v3;
      v5 = v2-- != 0;
    }

    while (v3 && v5);
  }

  else
  {
    v3 = 0;
  }

  return ttsJSON_DetachItemViaPointer(a1, v3);
}

void *ttsJSON_DeleteItemFromArray(uint64_t a1, unsigned int a2)
{
  v2 = ttsJSON_DetachItemFromArray(a1, a2);

  return ttsJSON_Delete(v2);
}

uint64_t *ttsJSON_DetachItemFromObject(uint64_t a1, char *a2)
{
  object_item = get_object_item(a1, a2, 0);

  return ttsJSON_DetachItemViaPointer(a1, object_item);
}

uint64_t *ttsJSON_DetachItemFromObjectCaseSensitive(uint64_t a1, char *a2)
{
  object_item = get_object_item(a1, a2, 1);

  return ttsJSON_DetachItemViaPointer(a1, object_item);
}

void *ttsJSON_DeleteItemFromObject(uint64_t a1, char *a2)
{
  object_item = get_object_item(a1, a2, 0);
  v4 = ttsJSON_DetachItemViaPointer(a1, object_item);

  return ttsJSON_Delete(v4);
}

void *ttsJSON_DeleteItemFromObjectCaseSensitive(uint64_t a1, char *a2)
{
  object_item = get_object_item(a1, a2, 1);
  v4 = ttsJSON_DetachItemViaPointer(a1, object_item);

  return ttsJSON_Delete(v4);
}

uint64_t ttsJSON_InsertItemInArray(void *a1, unsigned int a2, void *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return add_item_to_array(a1, a3);
  }

  v3 = a2;
  v4 = a1 + 2;
  v5 = a1 + 2;
  do
  {
    v5 = *v5;
    v7 = v3-- != 0;
  }

  while (v5 && v7);
  if (!v5)
  {
    return add_item_to_array(a1, a3);
  }

  v8 = v5[1];
  *a3 = v5;
  a3[1] = v8;
  v5[1] = a3;
  if (v5 != *v4)
  {
    v4 = a3[1];
  }

  *v4 = a3;
  return 1;
}

uint64_t ttsJSON_ReplaceItemViaPointer(uint64_t a1, void *a2, void *a3)
{
  v3 = 0;
  if (a2 && a1 && a3)
  {
    if (a3 != a2)
    {
      v4 = *a2;
      *a3 = *a2;
      v5 = v4;
      if (v4)
      {
        *(v4 + 8) = a3;
      }

      v8 = *(a1 + 16);
      v6 = (a1 + 16);
      v7 = v8;
      if (v8 == a2)
      {
        if (v7[1] == a2)
        {
          a3[1] = a3;
        }
      }

      else
      {
        v9 = a3[1];
        if (v9)
        {
          *v9 = a3;
          v5 = *a3;
        }

        if (v5)
        {
          goto LABEL_16;
        }

        v6 = v7 + 1;
      }

      *v6 = a3;
LABEL_16:
      *a2 = 0;
      a2[1] = 0;
      ttsJSON_Delete(a2);
      return 1;
    }

    return 1;
  }

  return v3;
}

uint64_t ttsJSON_ReplaceItemInArray(uint64_t a1, unsigned int a2, void *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1)
  {
    v3 = a2;
    v4 = (a1 + 16);
    do
    {
      v4 = *v4;
      v6 = v3-- != 0;
    }

    while (v4 && v6);
  }

  else
  {
    v4 = 0;
  }

  return ttsJSON_ReplaceItemViaPointer(a1, v4, a3);
}

uint64_t replace_item_in_object(uint64_t a1, char *__s, uint64_t a3, int a4)
{
  if (!__s || !a3)
  {
    return 0;
  }

  if ((*(a3 + 25) & 2) == 0)
  {
    v8 = *(a3 + 56);
    if (v8)
    {
      heap_Free(*(a1 + 64), v8);
    }
  }

  v9 = ttsJSON_strdup(*(a1 + 64), __s);
  *(a3 + 56) = v9;
  if (!v9)
  {
    return 0;
  }

  *(a3 + 24) &= ~0x200u;
  object_item = get_object_item(a1, __s, a4);

  return ttsJSON_ReplaceItemViaPointer(a1, object_item, a3);
}

void *ttsJSON_CreateStringReference(uint64_t a1, uint64_t a2)
{
  result = ttsJSON_New_Item(a1);
  if (result)
  {
    *(result + 6) = 272;
    result[4] = a2;
  }

  return result;
}

void *ttsJSON_CreateObjectReference(uint64_t a1, uint64_t a2)
{
  result = ttsJSON_New_Item(a1);
  if (result)
  {
    *(result + 6) = 320;
    result[2] = a2;
  }

  return result;
}

void *ttsJSON_CreateArrayReference(uint64_t a1, uint64_t a2)
{
  result = ttsJSON_New_Item(a1);
  if (result)
  {
    *(result + 6) = 288;
    result[2] = a2;
  }

  return result;
}

void *ttsJSON_CreateIntArray(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (a2)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v7 = ttsJSON_New_Item(a1);
      v3 = v7;
      if (v7)
      {
        *(v7 + 6) = 32;
        if (a3)
        {
          v8 = 0;
          v9 = 0;
          while (1)
          {
            v10 = *(a2 + 4 * v9);
            v11 = ttsJSON_New_Item(a1);
            if (!v11)
            {
              break;
            }

            *(v11 + 6) = 8;
            *(v11 + 6) = v10;
            *(v11 + 10) = v10;
            if (v9)
            {
              *v8 = v11;
              v11[1] = v8;
            }

            else
            {
              v3[2] = v11;
            }

            ++v9;
            v8 = v11;
            if (v9 >= a3)
            {
              goto LABEL_13;
            }
          }

          ttsJSON_Delete(v3);
          return 0;
        }

        else
        {
          v11 = 0;
LABEL_13:
          v12 = v3[2];
          if (v12)
          {
            *(v12 + 8) = v11;
          }
        }
      }
    }
  }

  return v3;
}

void *ttsJSON_CreateFloatArray(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (a2)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v7 = ttsJSON_New_Item(a1);
      v3 = v7;
      if (v7)
      {
        *(v7 + 6) = 32;
        if (a3)
        {
          v8 = 0;
          v9 = 0;
          while (1)
          {
            v10 = *(a2 + 4 * v9);
            v11 = ttsJSON_New_Item(a1);
            if (!v11)
            {
              break;
            }

            *(v11 + 6) = 8;
            *(v11 + 6) = v10;
            if (v10 >= 2147483650.0)
            {
              v12 = 0x7FFFFFFF;
            }

            else if (v10 <= -2147500000.0)
            {
              v12 = 0x80000000;
            }

            else
            {
              v12 = v10;
            }

            *(v11 + 10) = v12;
            if (v9)
            {
              *v8 = v11;
              v11[1] = v8;
            }

            else
            {
              v3[2] = v11;
            }

            ++v9;
            v8 = v11;
            if (v9 >= a3)
            {
              goto LABEL_18;
            }
          }

          ttsJSON_Delete(v3);
          return 0;
        }

        else
        {
          v11 = 0;
LABEL_18:
          v13 = v3[2];
          if (v13)
          {
            *(v13 + 8) = v11;
          }
        }
      }
    }
  }

  return v3;
}

void *ttsJSON_CreateDoubleArray(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (a2)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v7 = ttsJSON_New_Item(a1);
      v3 = v7;
      if (v7)
      {
        *(v7 + 6) = 32;
        if (a3)
        {
          v8 = 0;
          v9 = 0;
          while (1)
          {
            v10 = *(a2 + 8 * v9);
            v11 = ttsJSON_New_Item(a1);
            if (!v11)
            {
              break;
            }

            *(v11 + 6) = 8;
            *(v11 + 6) = v10;
            if (v10 >= 2147483650.0)
            {
              v12 = 0x7FFFFFFF;
            }

            else if (v10 <= -2147483650.0)
            {
              v12 = 0x80000000;
            }

            else
            {
              v12 = v10;
            }

            *(v11 + 10) = v12;
            if (v9)
            {
              *v8 = v11;
              v11[1] = v8;
            }

            else
            {
              v3[2] = v11;
            }

            ++v9;
            v8 = v11;
            if (v9 >= a3)
            {
              goto LABEL_18;
            }
          }

          ttsJSON_Delete(v3);
          return 0;
        }

        else
        {
          v11 = 0;
LABEL_18:
          v13 = v3[2];
          if (v13)
          {
            *(v13 + 8) = v11;
          }
        }
      }
    }
  }

  return v3;
}

void *ttsJSON_CreateStringArray(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (a2)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v7 = ttsJSON_New_Item(a1);
      v3 = v7;
      if (v7)
      {
        *(v7 + 6) = 32;
        if (a3)
        {
          v8 = 0;
          v9 = 0;
          while (1)
          {
            String = ttsJSON_CreateString(a1, *(a2 + 8 * v9));
            if (!String)
            {
              break;
            }

            if (v9)
            {
              *v8 = String;
              String[1] = v8;
            }

            else
            {
              v3[2] = String;
            }

            ++v9;
            v8 = String;
            if (v9 >= a3)
            {
              goto LABEL_13;
            }
          }

          ttsJSON_Delete(v3);
          return 0;
        }

        else
        {
          String = 0;
LABEL_13:
          v11 = v3[2];
          if (v11)
          {
            *(v11 + 8) = String;
          }
        }
      }
    }
  }

  return v3;
}

void *ttsJSON_Duplicate(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = ttsJSON_New_Item(*(a1 + 64));
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = *(a1 + 24) & 0xFFFFFEFF;
    *(v4 + 10) = *(a1 + 40);
    v4[6] = *(a1 + 48);
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = ttsJSON_strdup(*(a1 + 64), v6);
      v5[4] = v7;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      if ((*(a1 + 25) & 2) != 0)
      {
        v5[7] = v8;
      }

      else
      {
        v9 = ttsJSON_strdup(*(a1 + 64), v8);
        v5[7] = v9;
        if (!v9)
        {
LABEL_8:
          ttsJSON_Delete(v5);
          return 0;
        }
      }
    }

    if (!a2)
    {
      return v5;
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      while (1)
      {
        v13 = ttsJSON_Duplicate(v11, 1);
        if (!v13)
        {
          goto LABEL_8;
        }

        if (v12)
        {
          *v12 = v13;
          *(v13 + 8) = v12;
        }

        else
        {
          v5[2] = v13;
        }

        v11 = *v11;
        v12 = v13;
        if (!v11)
        {
          goto LABEL_22;
        }
      }
    }

    v13 = 0;
LABEL_22:
    v14 = v5[2];
    if (v14)
    {
      *(v14 + 8) = v13;
    }
  }

  return v5;
}

unsigned __int8 *ttsJSON_Minify(unsigned __int8 *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      while (1)
      {
LABEL_3:
        while (1)
        {
          v2 = result;
          v3 = *result;
          if (v3 <= 0x2F)
          {
            break;
          }

LABEL_14:
          if (!*result)
          {
            *v1 = 0;
            return result;
          }

          *v1++ = v3;
LABEL_5:
          ++result;
        }

        if (((1 << v3) & 0x100002600) != 0)
        {
          goto LABEL_5;
        }

        if (v3 == 34)
        {
          break;
        }

        if (v3 != 47)
        {
          goto LABEL_14;
        }

        ++result;
        v4 = v2[1];
        if (v4 == 42)
        {
          for (result = v2 + 2; *result != 42; ++result)
          {
            if (!*result)
            {
              goto LABEL_3;
            }

LABEL_29:
            ;
          }

          if (result[1] != 47)
          {
            goto LABEL_29;
          }

          result += 2;
        }

        else if (v4 == 47)
        {
          for (result = v2 + 2; *result; ++result)
          {
            if (*result == 10)
            {
              goto LABEL_30;
            }
          }
        }
      }

      *v1++ = 34;
      v6 = result[1];
      v5 = *++result;
    }

    while (!v6);
    while (1)
    {
      *v1 = v5;
      v7 = *result;
      if (v7 == 92)
      {
        if (result[1] == 34)
        {
          *++v1 = 34;
          ++result;
        }
      }

      else if (v7 == 34)
      {
        *v1++ = 34;
LABEL_30:
        ++result;
        goto LABEL_3;
      }

      v8 = *++result;
      v5 = v8;
      ++v1;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

BOOL ttsJSON_IsInvalid(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 0;
  }

  return result;
}

BOOL ttsJSON_IsFalse(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 1;
  }

  return result;
}

BOOL ttsJSON_IsTrue(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 2;
  }

  return result;
}

BOOL ttsJSON_IsBool(_BOOL8 result)
{
  if (result)
  {
    return (*(result + 24) & 3) != 0;
  }

  return result;
}

BOOL ttsJSON_IsNull(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 4;
  }

  return result;
}

BOOL ttsJSON_IsArray(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 32;
  }

  return result;
}

BOOL ttsJSON_IsObject(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 64;
  }

  return result;
}

BOOL ttsJSON_IsRaw(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 128;
  }

  return result;
}

uint64_t ttsJSON_Compare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  v6 = *(a1 + 24);
  if (*(a2 + 24) != v6)
  {
    return 0;
  }

  v9 = *(a1 + 24) - 1 > 0x3F || ((1 << (v6 - 1)) & 0x800000008000808BLL) == 0;
  if (v9 && *(a1 + 24) != 128)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v10 = *(a1 + 24);
  if (v10 <= 0xF)
  {
    v3 = 1;
    if (v10 - 1 < 2 || v10 == 4)
    {
      return v3;
    }

    if (v10 == 8)
    {
      v11 = *(a1 + 48);
      v12 = *(a2 + 48);
      v13 = fabs(v11);
      v14 = fabs(v12);
      if (v13 <= v14)
      {
        v13 = v14;
      }

      return vabdd_f64(v11, v12) <= v13 * 2.22044605e-16;
    }

    return 0;
  }

  if (*(a1 + 24) <= 0x3Fu)
  {
    if (v10 != 16)
    {
      if (v10 != 32)
      {
        return 0;
      }

      v15 = (a1 + 16);
      v16 = (a2 + 16);
      while (1)
      {
        v16 = *v16;
        v15 = *v15;
        if (!v15 || v16 == 0)
        {
          break;
        }

        v3 = 0;
        if (!ttsJSON_Compare(v15, v16, a3))
        {
          return v3;
        }
      }

      return v15 == v16;
    }

LABEL_33:
    v18 = *(a1 + 32);
    if (!v18)
    {
      return 0;
    }

    v19 = *(a2 + 32);
    if (!v19)
    {
      return 0;
    }

    return cstdlib_strcmp(v18, v19) == 0;
  }

  if (v10 != 64)
  {
    if (v10 != 128)
    {
      return 0;
    }

    goto LABEL_33;
  }

  v21 = a1 + 16;
  while (1)
  {
    v21 = *v21;
    if (!v21)
    {
      break;
    }

    object_item = get_object_item(a2, *(v21 + 56), a3);
    if (!object_item)
    {
      return 0;
    }

    v3 = 0;
    if (!ttsJSON_Compare(v21, object_item, a3))
    {
      return v3;
    }
  }

  v23 = a2 + 16;
  do
  {
    v23 = *v23;
    v3 = v23 == 0;
    if (!v23)
    {
      break;
    }

    v24 = get_object_item(a1, *(v23 + 56), a3);
    if (!v24)
    {
      break;
    }
  }

  while (ttsJSON_Compare(v23, v24, a3));
  return v3;
}

uint64_t parse_string(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = (*a2 + a2[2]);
  v5 = v4 + 1;
  if (*v4 != 34)
  {
    goto LABEL_10;
  }

  v6 = a2[1];
  if (&v5[-v3] >= v6)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = 1;
  v10 = v4 + 1;
  while (1)
  {
    v11 = v4[v9];
    if (v11 == 92)
    {
      if (&v4[++v9 - v3] >= v6)
      {
        goto LABEL_10;
      }

      ++v8;
      goto LABEL_9;
    }

    if (v11 == 34)
    {
      break;
    }

LABEL_9:
    v10 = &v4[++v9];
    if (&v4[v9 - v3] >= v6)
    {
      goto LABEL_10;
    }
  }

  v14 = heap_Alloc(*(a1 + 64), v10 - &v4[v8] + 1);
  if (!v14)
  {
LABEL_10:
    result = 0;
    v13 = &v5[-*a2];
    goto LABEL_11;
  }

  v15 = v14;
  v16 = v14;
  if (v9 >= 2)
  {
    v17 = &v4[v9];
    v16 = v14;
    while (1)
    {
      v18 = *v5;
      if (v18 == 92)
      {
        break;
      }

      ++v5;
      *v16++ = v18;
LABEL_44:
      if (v5 >= v17)
      {
        goto LABEL_62;
      }
    }

    if (v10 - v5 < 1)
    {
      goto LABEL_63;
    }

    v19 = v5[1];
    if (v19 <= 0x65)
    {
      if (v19 - 34 > 0x3A || ((1 << (v19 - 34)) & 0x400000000002001) == 0)
      {
        if (v19 != 98)
        {
          goto LABEL_63;
        }

        LOBYTE(v19) = 8;
      }

      goto LABEL_41;
    }

    if (v5[1] <= 0x71u)
    {
      if (v19 != 102)
      {
        if (v19 != 110)
        {
          goto LABEL_63;
        }

        LOBYTE(v19) = 10;
        goto LABEL_41;
      }

      *v16++ = 12;
    }

    else
    {
      if (v19 == 114)
      {
        LOBYTE(v19) = 13;
      }

      else
      {
        if (v19 != 116)
        {
          if (v19 != 117 || (v10 - v5) < 6)
          {
LABEL_63:
            heap_Free(*(a1 + 64), v15);
            goto LABEL_10;
          }

          v20 = parse_hex4((v5 + 2));
          v21 = v20;
          if ((v20 & 0xFFFFFC00) == 0xD800)
          {
            if (v10 - (v5 + 6) < 6)
            {
              goto LABEL_63;
            }

            if (v5[6] != 92)
            {
              goto LABEL_63;
            }

            if (v5[7] != 117)
            {
              goto LABEL_63;
            }

            v26 = parse_hex4((v5 + 8));
            if ((v26 - 57344) < 0xFFFFFC00)
            {
              goto LABEL_63;
            }

            v21 = (v26 & 0x3FF | ((v21 & 0x3FF) << 10)) + 0x10000;
            v22 = 12;
          }

          else
          {
            if ((v20 & 0xFFFFFC00) == 0xDC00)
            {
              goto LABEL_63;
            }

            if (v20 < 0x80)
            {
              v29 = v20;
              v22 = 6;
              v23 = 1;
              goto LABEL_57;
            }

            if (v20 < 0x800)
            {
              v22 = 6;
              v23 = 2;
              v24 = -64;
LABEL_53:
              v27 = v21;
              v28 = (v23 - 1);
              do
              {
                v16[v28] = v27 & 0x3F | 0x80;
                v27 >>= 6;
                --v28;
              }

              while (v28);
              v29 = v27 | v24;
LABEL_57:
              *v16 = v29;
              v16 += v23;
LABEL_43:
              v5 += v22;
              goto LABEL_44;
            }

            if (v20 < 0x10000)
            {
              v22 = 6;
              v23 = 3;
              v24 = -32;
              goto LABEL_53;
            }

            if (HIWORD(v20) > 0x10u)
            {
              goto LABEL_63;
            }

            v22 = 6;
          }

          v23 = 4;
          v24 = -16;
          goto LABEL_53;
        }

        LOBYTE(v19) = 9;
      }

LABEL_41:
      *v16++ = v19;
    }

    v22 = 2;
    goto LABEL_43;
  }

LABEL_62:
  *v16 = 0;
  *(a1 + 24) = 16;
  *(a1 + 32) = v15;
  v13 = &v10[-*a2 + 1];
  result = 1;
LABEL_11:
  a2[2] = v13;
  return result;
}

uint64_t parse_object(uint64_t a1, uint64_t *a2)
{
  v2 = a2[3];
  if (v2 > 0x3E7)
  {
    return 0;
  }

  a2[3] = v2 + 1;
  v5 = a2[2];
  if (v5 >= a2[1] || *(*a2 + v5) != 123)
  {
    return 0;
  }

  a2[2] = v5 + 1;
  buffer_skip_whitespace(a2);
  v7 = a2[2];
  if (v7 >= a2[1])
  {
    result = 0;
    a2[2] = v7 - 1;
    return result;
  }

  if (*(*a2 + v7) != 125)
  {
    v9 = 0;
    v10 = 0;
    a2[2] = v7 - 1;
    while (1)
    {
      v11 = ttsJSON_New_Item(*(a1 + 64));
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v8 = v11;
      if (v9)
      {
        *v10 = v11;
        v11[1] = v10;
        v8 = v9;
      }

      ++a2[2];
      buffer_skip_whitespace(a2);
      if (!parse_string(v12, a2))
      {
        goto LABEL_22;
      }

      buffer_skip_whitespace(a2);
      *(v12 + 56) = *(v12 + 32);
      *(v12 + 32) = 0;
      v13 = a2[2];
      if (v13 >= a2[1])
      {
        goto LABEL_22;
      }

      if (*(*a2 + v13) != 58)
      {
        goto LABEL_22;
      }

      a2[2] = v13 + 1;
      buffer_skip_whitespace(a2);
      if (!parse_value(v12, a2))
      {
        goto LABEL_22;
      }

      buffer_skip_whitespace(a2);
      v7 = a2[2];
      if (v7 >= a2[1])
      {
        goto LABEL_22;
      }

      v14 = *(*a2 + v7);
      v9 = v8;
      v10 = v12;
      if (v14 != 44)
      {
        if (v14 == 125)
        {
          --a2[3];
          v8[1] = v12;
          goto LABEL_8;
        }

LABEL_22:
        v9 = v8;
LABEL_23:
        ttsJSON_Delete(v9);
        return 0;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

    return 0;
  }

  v8 = 0;
  --a2[3];
LABEL_8:
  *(a1 + 24) = 64;
  *(a1 + 16) = v8;
  a2[2] = v7 + 1;
  return 1;
}

uint64_t parse_hex4(uint64_t a1)
{
  v1 = 0;
  LODWORD(v2) = 0;
  while (1)
  {
    v3 = *(a1 + v1);
    if ((v3 - 48) >= 0xA)
    {
      break;
    }

    v4 = -48;
LABEL_8:
    LODWORD(v2) = v4 + v2 + v3;
    if (v1 == 3)
    {
      v2 = v2;
    }

    else
    {
      v2 = (16 * v2);
    }

    if (++v1 == 4)
    {
      return v2;
    }
  }

  if ((v3 - 65) < 6)
  {
    v4 = -55;
    goto LABEL_8;
  }

  if ((v3 - 97) <= 5)
  {
    v4 = -87;
    goto LABEL_8;
  }

  return 0;
}

uint64_t ensure(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = *a2;
  if (!v4)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    if (a3 >> 31)
    {
      return 0;
    }

    v8 = *(a2 + 16);
LABEL_8:
    v9 = a3 + v8 + 1;
    if (v9 <= v6)
    {
      return v4 + v8;
    }

    if (!*(a2 + 32))
    {
      if (v9 >> 30)
      {
        if (v9 >> 31)
        {
          return 0;
        }

        v10 = 0x7FFFFFFFLL;
      }

      else
      {
        v10 = 2 * v9;
      }

      v11 = heap_Realloc(a1, v4, v10);
      if (v11)
      {
        *a2 = v11;
        *(a2 + 8) = v10;
        return v11 + *(a2 + 16);
      }

      else
      {
        heap_Free(a1, *a2);
        result = 0;
        *a2 = 0;
        *(a2 + 8) = 0;
      }

      return result;
    }

    return 0;
  }

  result = 0;
  if (!(a3 >> 31))
  {
    v8 = *(a2 + 16);
    if (v8 < v6)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t print_string_ptr(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a2)
  {
    result = ensure(a1, a3, 3uLL);
    if (!result)
    {
      return result;
    }

    cstdlib_strcpy(result, "");
    return 1;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = a2[v4];
    if (v6 <= 0x22)
    {
      if (((1 << v6) & 0x400003700) != 0)
      {
        goto LABEL_5;
      }

      if (!a2[v4])
      {
        break;
      }
    }

    if (v6 == 92)
    {
LABEL_5:
      ++v5;
      goto LABEL_6;
    }

    if (v6 < 0x20)
    {
      v5 += 5;
    }

LABEL_6:
    ++v4;
  }

  result = ensure(a1, a3, v5 + v4 + 3);
  if (result)
  {
    v8 = result;
    *result = 34;
    if (v5)
    {
      v9 = *a2;
      if (*a2)
      {
        v10 = a2 + 1;
        v11 = result;
        while (1)
        {
          if (v9 >= 0x20u && v9 != 34 && v9 != 92)
          {
            v12 = v11 + 1;
            goto LABEL_37;
          }

          v12 = v11 + 2;
          v11[1] = 92;
          v13 = *(v10 - 1);
          if (v13 <= 0xB)
          {
            break;
          }

          if (*(v10 - 1) > 0x21u)
          {
            if (v13 == 34)
            {
              *v12 = 34;
              goto LABEL_38;
            }

            if (v13 != 92)
            {
              goto LABEL_33;
            }

            *v12 = 92;
          }

          else
          {
            if (v13 == 12)
            {
              *v12 = 102;
              goto LABEL_38;
            }

            if (v13 != 13)
            {
              goto LABEL_33;
            }

            *v12 = 114;
          }

LABEL_38:
          v14 = *v10++;
          v9 = v14;
          v11 = v12;
          if (!v14)
          {
            goto LABEL_39;
          }
        }

        switch(v13)
        {
          case 8u:
            v9 = 98;
            goto LABEL_37;
          case 9u:
            v9 = 116;
            goto LABEL_37;
          case 0xAu:
            v9 = 110;
LABEL_37:
            *v12 = v9;
            goto LABEL_38;
        }

LABEL_33:
        sprintf(v12, "u%04x", *(v10 - 1));
        v12 = v11 + 6;
        goto LABEL_38;
      }

LABEL_39:
      *(v8 + v5 + v4 + 1) = 34;
    }

    else
    {
      cstdlib_memcpy((result + 1), a2, v4);
      *(v8 + v4 + 1) = 34;
    }

    return 1;
  }

  return result;
}

uint64_t hashtable_ObjOpen(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = 2385518602;
  v9 = heap_Alloc(*(a2 + 8), 104);
  if (v9)
  {
    v10 = v9;
    *(v9 + 96) = a2;
    *(v9 + 8) = a4;
    *(v9 + 16) = a3;
    *v9 = 0;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    v11 = heap_Alloc(*(a2 + 8), 8 * a3);
    v10[11] = v11;
    if (v11)
    {
      v12 = add;
      v13 = lookup_0;
      if (a4)
      {
        if (a4 != 1)
        {
          heap_Free(*(a2 + 8), v11);
          heap_Free(*(a2 + 8), v10);
          return 2385518599;
        }

        v12 = nadd;
        v13 = nlookup;
      }

      v10[9] = v13;
      v10[10] = v12;
      if (a3)
      {
        v14 = 0;
        do
        {
          *(v10[11] + 8 * v14++) = 0;
        }

        while (a3 != v14);
      }

      v8 = 0;
      *v10 = hashtable_ObjOpen;
      *a1 = v10;
    }

    else
    {
      heap_Free(*(a2 + 8), v10);
    }
  }

  return v8;
}

uint64_t lookup_0(void *a1, const char *a2)
{
  v4 = a1[11];
  v5 = a1[5];
  if (v5)
  {
    v6 = v5(a2, a1[6]);
  }

  else
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = 0;
      v9 = (a2 + 1);
      do
      {
        v8 = 31 * v8 + v7;
        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
    }

    else
    {
      v8 = 0;
    }

    v6 = v8 % a1[2];
  }

  for (i = *(v4 + 8 * v6); i; i = *(i + 16))
  {
    v12 = *i;
    v13 = a1[7];
    if (v13)
    {
      if (v13(a2, v12, a1[8]))
      {
        return i;
      }
    }

    else if (!cstdlib_strcmp(a2, v12))
    {
      return i;
    }
  }

  return i;
}

void *add(void *a1, char *a2, uint64_t a3)
{
  v6 = lookup_0(a1, a2);
  if (!v6)
  {
    v6 = heap_Alloc(*(a1[12] + 8), 24);
    if (!v6)
    {
      return v6;
    }

    v8 = strhelper_Strdup(*(a1[12] + 8), a2);
    *v6 = v8;
    if (!v8)
    {
      heap_Free(*(a1[12] + 8), v6);
      return 0;
    }

    v9 = a1[5];
    if (v9)
    {
      v10 = v9(a2, a1[6]);
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = 0;
        v13 = (a2 + 1);
        do
        {
          v12 = 31 * v12 + v11;
          v14 = *v13++;
          v11 = v14;
        }

        while (v14);
      }

      else
      {
        v12 = 0;
      }

      v10 = v12 % a1[2];
    }

    v15 = a1[11];
    v6[2] = *(v15 + 8 * v10);
    *(v15 + 8 * v10) = v6;
  }

  v6[1] = a3;
  return v6;
}

const void **nlookup(void *a1, const void *a2)
{
  v3 = a1[11];
  for (result = *(v3 + 8 * Num2Hashval(a1, a2)); result; result = result[2])
  {
    if (*result == a2)
    {
      break;
    }
  }

  return result;
}

const void **nadd(void *a1, const void *a2, const void *a3)
{
  v6 = nlookup(a1, a2);
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = heap_Alloc(*(a1[12] + 8), 24);
  v6 = v7;
  if (v7)
  {
    *v7 = a2;
    v8 = Num2Hashval(a1, a2);
    v9 = a1[11];
    v6[2] = *(v9 + 8 * v8);
    *(v9 + 8 * v8) = v6;
LABEL_4:
    v6[1] = a3;
  }

  return v6;
}

uint64_t hashtable_ElementSetDestructor(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*result == hashtable_ObjOpen)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t hashtable_SetStringToHashFunction(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (*result == hashtable_ObjOpen)
    {
      *(result + 40) = a2;
      *(result + 48) = a3;
    }
  }

  return result;
}

uint64_t hashtable_SetStringCompareFunction(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (*result == hashtable_ObjOpen)
    {
      *(result + 56) = a2;
      *(result + 64) = a3;
    }
  }

  return result;
}

void *hashtable_ObjClose(void *result)
{
  if (result)
  {
    v1 = result;
    if (!*result || *result == hashtable_ObjOpen)
    {
      v2 = result[11];
      if (v2)
      {
        v3 = result[2];
        if (v3)
        {
          v4 = v3 - 1;
          do
          {
            FreeDupla(*(*(v1 + 96) + 8), *(*(v1 + 88) + 8 * v4), *(v1 + 32), *(v1 + 8) != 1);
            *(*(v1 + 88) + 8 * v4--) = 0;
          }

          while (v4 != -1);
          v2 = *(v1 + 88);
        }

        heap_Free(*(*(v1 + 96) + 8), v2);
        *(v1 + 88) = 0;
      }

      *v1 = 0;
      v5 = *(*(v1 + 96) + 8);

      return heap_Free(v5, v1);
    }
  }

  return result;
}

void *FreeDupla(void *result, uint64_t *a2, void (*a3)(void *), int a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = result;
    do
    {
      v8 = v6;
      v6 = v6[2];
      if (a4)
      {
        heap_Free(v7, *v8);
      }

      *v8 = 0;
      if (a3)
      {
        if (v8[1])
        {
          a3(v7);
        }
      }

      v8[1] = 0;
      result = heap_Free(v7, v8);
    }

    while (v6);
  }

  return result;
}

void *hashtable_RemoveAll(void *result)
{
  if (result)
  {
    v1 = result;
    if (!*result || *result == hashtable_ObjOpen)
    {
      if (result[11])
      {
        v2 = result[2];
        if (v2)
        {
          v3 = v2 - 1;
          do
          {
            result = FreeDupla(*(v1[12] + 8), *(v1[11] + 8 * v3), v1[4], *(v1 + 2) != 1);
            *(v1[11] + 8 * v3--) = 0;
          }

          while (v3 != -1);
        }
      }
    }
  }

  return result;
}

uint64_t hashtable_Set(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return *result == hashtable_ObjOpen && (*(result + 80))(result, a2) != 0;
  }

  return result;
}

uint64_t hashtable_Get(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*result == hashtable_ObjOpen)
    {
      result = (*(result + 72))(result, a2);
      if (result)
      {
        return *(result + 8);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (*hashtable_GetKeyPointer(uint64_t (*result)(void *a1, uint64_t a2, uint64_t a3, int a4), uint64_t a2))(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (result)
  {
    if (*result == hashtable_ObjOpen)
    {
      result = (*(result + 9))(result, a2);
      if (result)
      {
        return *result;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *hashtable_Dump(_DWORD *result, const char *a2, void (*a3)(void, char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v5 = result;
    if (*result == hashtable_ObjOpen)
    {
      v8 = result[2];
      v9 = "unknown";
      if (!v8)
      {
        v9 = "string";
      }

      if (v8 == 1)
      {
        v10 = "integer";
      }

      else
      {
        v10 = v9;
      }

      __sprintf_chk(v30, 0, 0x1000uLL, "<HASH address=%p title=%s type=%s>", result, a2, v10);
      log_OutText(*(*(v5 + 12) + 32), "HASHTABLE", 4, 0, "%s", v11, v12, v13, v30);
      v14 = *(v5 + 2);
      if (v14)
      {
        for (i = 0; i < v14; ++i)
        {
          v16 = *(*(v5 + 11) + 8 * i);
          if (v16)
          {
            __sprintf_chk(v30, 0, 0x1000uLL, "<ELEM value=%lu>", i);
            log_OutText(*(*(v5 + 12) + 32), "HASHTABLE", 4, 0, "%s", v17, v18, v19, v30);
            do
            {
              if (a3)
              {
                a3(*(v16 + 8), v29, a5);
              }

              else
              {
                __sprintf_chk(v29, 0, 0x50uLL, "%s", *(v16 + 8));
              }

              if (v5[2] == 1)
              {
                __sprintf_chk(v30, 0, 0x1000uLL, "<DUPLA key =%lu value = %s/>");
              }

              else
              {
                __sprintf_chk(v30, 0, 0x1000uLL, "<DUPLA key =%s value = %s/>");
              }

              log_OutText(*(*(v5 + 12) + 32), "HASHTABLE", 4, 0, "%s", v20, v21, v22, v30);
              v16 = *(v16 + 16);
            }

            while (v16);
            __sprintf_chk(v30, 0, 0x1000uLL, "</ELEM>");
            log_OutText(*(*(v5 + 12) + 32), "HASHTABLE", 4, 0, "%s", v23, v24, v25, v30);
            v14 = *(v5 + 2);
          }
        }
      }

      __sprintf_chk(v30, 0, 0x1000uLL, "</HASH>");
      return log_OutText(*(*(v5 + 12) + 32), "HASHTABLE", 4, 0, "%s", v26, v27, v28, v30);
    }
  }

  return result;
}

uint64_t hashtable_Remove(uint64_t result, unsigned __int8 *a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (*result != hashtable_ObjOpen)
  {
    return result;
  }

  if (*(result + 8) == 1)
  {
    result = Num2Hashval(result, a2);
  }

  else
  {
    v4 = *(result + 40);
    if (!v4)
    {
      v12 = *a2;
      if (*a2)
      {
        v13 = 0;
        v14 = a2 + 1;
        do
        {
          v13 = 31 * v13 + v12;
          v15 = *v14++;
          v12 = v15;
        }

        while (v15);
      }

      else
      {
        v13 = 0;
      }

      v5 = v13 % *(result + 16);
      goto LABEL_9;
    }

    result = v4(a2, *(result + 48));
  }

  v5 = result;
LABEL_9:
  v6 = *(*(v2 + 88) + 8 * v5);
  if (!v6)
  {
    return result;
  }

  v7 = *(*(v2 + 88) + 8 * v5);
  while (1)
  {
    v8 = v6;
    v9 = *v6;
    v10 = *(v2 + 56);
    if (!v10)
    {
      break;
    }

    result = v10(a2, v9, *(v2 + 64));
    if (result)
    {
      goto LABEL_17;
    }

LABEL_15:
    v6 = v8[2];
    v7 = v8;
    if (!v6)
    {
      return result;
    }
  }

  result = cstdlib_strcmp(a2, v9) == 0;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (v7 == v8)
  {
    v11 = (*(v2 + 88) + 8 * v5);
  }

  else
  {
    v11 = v7 + 2;
  }

  *v11 = v8[2];
  if (*(v2 + 8) != 1)
  {
    heap_Free(*(*(v2 + 96) + 8), *v8);
  }

  *v8 = 0;
  v16 = *(v2 + 32);
  if (v16 && v8[1])
  {
    v16(*(*(v2 + 96) + 8));
  }

  v8[1] = 0;
  v17 = *(*(v2 + 96) + 8);

  return heap_Free(v17, v8);
}

uint64_t Num2Hashval(void *a1, const void *a2)
{
  *&v10[19] = *MEMORY[0x277D85DE8];
  __sprintf_chk(&v9, 0, 0x14uLL, "%p", a2);
  v3 = a1[5];
  if (v3)
  {
    return v3(&v9, a1[6]);
  }

  v5 = v9;
  if (v9)
  {
    v6 = 0;
    v7 = v10;
    do
    {
      v6 = 31 * v6 + v5;
      v8 = *v7++;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 % a1[2];
}

void *hashtable_EnumCreate(void *result)
{
  if (result)
  {
    v1 = result;
    if (*result == hashtable_ObjOpen)
    {
      result = heap_Alloc(*(result[12] + 8), 32);
      if (result)
      {
        v2 = *v1[11];
        result[1] = 0;
        result[2] = v2;
        result[3] = v1;
        *result = hashtable_EnumCreate;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t hashtable_EnumGetKey(uint64_t a1)
{
  if (!a1 || *a1 != hashtable_EnumCreate)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(v3 + 16);
  v6 = *(a1 + 8);
  if (v6 < v5)
  {
    v7 = v6 + 1;
    while (!v4)
    {
      *(a1 + 8) = v7;
      if (v7 >= v5)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(*(v3 + 88) + 8 * v7);
        *(a1 + 16) = v4;
      }

      if (v7++ >= v5)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

LABEL_13:
  if (v4)
  {
LABEL_14:
    v1 = *v4;
    *(a1 + 16) = v4[2];
    return v1;
  }

  return 0;
}

void *hashtable_EnumDestroy(void *result)
{
  if (result)
  {
    if (*result == hashtable_EnumCreate)
    {
      *result = 0;
      return heap_Free(*(*(result[3] + 96) + 8), result);
    }
  }

  return result;
}

uint64_t hashtable_Merge(uint64_t a1, uint64_t a2)
{
  v2 = 2385518594;
  if (a2 && a1 && *a2 == hashtable_ObjOpen && *a1 == hashtable_ObjOpen)
  {
    v5 = hashtable_EnumCreate(a2);
    if (v5)
    {
      v6 = v5;
      Key = hashtable_EnumGetKey(v5);
      if (Key)
      {
        v8 = Key;
        do
        {
          if (*a2 == hashtable_ObjOpen && (v10 = (*(a2 + 72))(a2, v8)) != 0)
          {
            v9 = *(v10 + 8);
          }

          else
          {
            v9 = 0;
          }

          if (*a1 == hashtable_ObjOpen)
          {
            (*(a1 + 80))(a1, v8, v9);
          }

          v8 = hashtable_EnumGetKey(v6);
        }

        while (v8);
      }

      if (*v6 == hashtable_EnumCreate)
      {
        *v6 = 0;
        heap_Free(*(*(v6[3] + 96) + 8), v6);
      }

      return 0;
    }

    else
    {
      return 2385518602;
    }
  }

  return v2;
}

void *hashtable_bCheckIsHashTable(void *result)
{
  if (result)
  {
    return (*result == hashtable_ObjOpen);
  }

  return result;
}

uint64_t log_OutText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1 || log_GetLogLevel(a1) < a3)
  {
    return 0;
  }

  v14 = 0;
  v17 = a3 > 4 && *(a1 + 100) != 0;
  if (a5 && !v17)
  {
    if (a2)
    {
      v14 = 0;
      v18 = a1 + 24;
      for (i = -1; i != 4; ++i)
      {
        if (*v18)
        {
          v20 = a3 >= 2 && i == 0;
          v21 = !v20;
          if (*(*v18 + 48) && v21)
          {
            v23 = (*(*v18 + 48))(*(v18 - 8), a2, a3, a4, a5, &a9);
            if (v23 >= 0)
            {
              v14 = v14;
            }

            else
            {
              v14 = v23;
            }
          }
        }

        v18 += 16;
      }

      v24 = *(a1 + 112);
      if (v24 && *(v24 + 48))
      {
        v25 = (*(*(a1 + 112) + 48))(*(a1 + 104), a2, a3, a4, a5, &a9);
        if (v25 >= 0)
        {
          return v14;
        }

        else
        {
          return v25;
        }
      }
    }

    else
    {
      return 2226135046;
    }
  }

  return v14;
}

uint64_t log_GetLogLevel(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result + 24;
    v3 = 1;
    v4 = 5;
    do
    {
      if (*v2)
      {
        v5 = *(*v2 + 80);
        if (v5)
        {
          v6 = v5(*(v2 - 8));
          if (v6 > v3)
          {
            v3 = v6;
          }
        }
      }

      v2 += 16;
      --v4;
    }

    while (v4);
    v7 = *(v1 + 112);
    if (v7)
    {
      v8 = *(v7 + 80);
      if (v8)
      {
        v9 = v8(*(v1 + 104));
        if (v9 > v3)
        {
          v3 = v9;
        }
      }
    }

    if (v3 >= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = v3;
    }

    if (*(v1 + 100))
    {
      return v10;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t log_VOutText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || log_GetLogLevel(a1) < a3)
  {
    return 0;
  }

  v10 = 0;
  v13 = a3 > 4 && *(a1 + 100) != 0;
  if (a5 && !v13)
  {
    if (a2)
    {
      v10 = 0;
      v14 = a1 + 24;
      v15 = 5;
      do
      {
        if (*v14 && *(*v14 + 48))
        {
          v16 = (*(*v14 + 48))(*(v14 - 8), a2, a3, a4, a5);
          if (v16 >= 0)
          {
            v10 = v10;
          }

          else
          {
            v10 = v16;
          }
        }

        v14 += 16;
        --v15;
      }

      while (v15);
      v17 = *(a1 + 112);
      if (v17 && *(v17 + 48))
      {
        v18 = (*(*(a1 + 112) + 48))(*(a1 + 104), a2, a3, a4, a5);
        if (v18 >= 0)
        {
          return v10;
        }

        else
        {
          return v18;
        }
      }
    }

    else
    {
      return 2226135046;
    }
  }

  return v10;
}

uint64_t log_OutBinary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  if (!a1 || log_GetLogLevel(a1) < a3 || a3 >= 5 && *(a1 + 100))
  {
    return 0;
  }

  v13 = 2226135046;
  if (a2 && a7)
  {
    if (a9)
    {
      ssftstring_Clear(a9);
    }

    v13 = 0;
    v15 = a1 + 24;
    v16 = 5;
    do
    {
      if (*v15)
      {
        v17 = *(*v15 + 56);
        if (v17)
        {
          v18 = *(v15 - 8);
          if (a9)
          {
            if (ssftstring_Size(a9))
            {
              v19 = 0;
            }

            else
            {
              v19 = a9;
            }
          }

          else
          {
            v19 = 0;
          }

          v20 = v17(v18, a2, a3, a4, a5, a6, a7, a8, v19);
          if (v20 >= 0)
          {
            v13 = v13;
          }

          else
          {
            v13 = v20;
          }
        }
      }

      v15 += 16;
      --v16;
    }

    while (v16);
    v21 = *(a1 + 112);
    if (v21)
    {
      v22 = *(v21 + 56);
      if (v22)
      {
        v23 = *(a1 + 104);
        if (a9)
        {
          if (ssftstring_Size(a9))
          {
            v24 = 0;
          }

          else
          {
            v24 = a9;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = v22(v23, a2, a3, a4, a5, a6, a7, a8, v24);
        if (v25 >= 0)
        {
          return v13;
        }

        else
        {
          return v25;
        }
      }
    }
  }

  return v13;
}

uint64_t log_OutPublic(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (result)
  {
    if (a2)
    {
      return log_VOutPublic(result, a2, a3, a4, &a9);
    }

    else
    {
      return 2226135046;
    }
  }

  return result;
}

uint64_t log_VOutPublic(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v19 = a5;
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 2226135046;
  }

  __b = 0u;
  v18 = 0u;
  cstdlib_memset(&__b, 0, 0x20uLL);
  if (!a4 || (a4 = log_ParseKeyValuePairs_Restricted(*a1, a4, v19, &__b), (a4 & 0x80000000) == 0))
  {
    for (i = 0; i != 10; i += 2)
    {
      v10 = a1[i + 3];
      if (v10)
      {
        v11 = v10[8];
        if (v11)
        {
          v12 = v11(a1[i + 2], a2, a3, HIDWORD(__b), v18, *(&v18 + 1));
          if (v12 >= 0)
          {
            a4 = a4;
          }

          else
          {
            a4 = v12;
          }
        }
      }
    }

    v13 = a1[14];
    if (v13)
    {
      v14 = v13[8];
      if (v14)
      {
        v15 = v14(a1[13], a2, a3, HIDWORD(__b), v18, *(&v18 + 1));
        if (v15 >= 0)
        {
          a4 = a4;
        }

        else
        {
          a4 = v15;
        }
      }
    }

    log_FreeKeyValuePairs(*a1, &__b);
  }

  return a4;
}

uint64_t log_ParseKeyValuePairs_Restricted(uint64_t *a1, char *__s, unsigned int *a3, uint64_t a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = 2226135047;
  if (cstdlib_strlen(__s) > 0x7F)
  {
    goto LABEL_120;
  }

  if (cstdlib_strlen(__s) - 128 < 0xFFFFFF7F)
  {
    v7 = 2226135049;
    goto LABEL_120;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = __s[v8];
    if (v10 != 37)
    {
      break;
    }

    v11 = v8 + 1;
    if (__s[v8 + 1] == 108 && __s[v8 + 2] == 115)
    {
      v77[v9] = 37;
      v77[v9 + 1] = 83;
      v9 += 2;
      v8 += 3;
    }

    else
    {
LABEL_11:
      v77[v9++] = v10;
      v8 = v11;
    }
  }

  if (__s[v8])
  {
    v11 = v8 + 1;
    goto LABEL_11;
  }

  v77[v9] = 0;
  if (!a4)
  {
    goto LABEL_120;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = v77[v12];
    if (v14 == 32)
    {
      v17 = 1;
      goto LABEL_20;
    }

    if (v14 == 37)
    {
      ++v13;
      v15 = v77[v12 + 1];
      v16 = v15 - 83;
      if ((v15 - 83) <= 0x25)
      {
        if (((1 << v16) & 0x25200B0001) != 0)
        {
          v17 = 2;
LABEL_20:
          v12 += v17;
          continue;
        }

        if (((1 << v16) & 0x2200000) != 0)
        {
          v18 = v77[v12 + 2] - 100;
          if (v18 > 0x11 || ((1 << v18) & 0x28001) == 0)
          {
            goto LABEL_120;
          }

          v17 = 3;
          goto LABEL_20;
        }
      }

      if (v15 != 46 || v77[v12 + 2] != 42 || (v77[v12 + 3] | 0x20) != 0x73)
      {
        goto LABEL_120;
      }

      v17 = 4;
      goto LABEL_20;
    }

    break;
  }

  if (v77[v12])
  {
    goto LABEL_120;
  }

  if (v13)
  {
    v19 = 2226135047;
  }

  else
  {
    v19 = 0;
  }

  *(a4 + 8) = 0;
  v20 = heap_Alloc(a1, 4096);
  *a4 = v20;
  if (!v20)
  {
LABEL_99:
    v7 = 2226135050;
    goto LABEL_120;
  }

  v21 = v13 & 0xFFFFFFFE;
  *(a4 + 8) = 4096;
  *v20 = 0;
  *(a4 + 12) = 0;
  if ((v13 & 0xFFFFFFFE) >= 2)
  {
    v22 = heap_Calloc(a1, v21 >> 1, 8);
    *(a4 + 16) = v22;
    if (!v22 || (v23 = heap_Calloc(a1, v21 >> 1, 8), (*(a4 + 24) = v23) == 0))
    {
      v7 = 2226135050;
      goto LABEL_120;
    }
  }

  else if (!v21)
  {
    goto LABEL_117;
  }

  v24 = 0;
  v25 = 0;
  while (2)
  {
    v26 = v77[v25];
    if (v26 == 32)
    {
      v27 = v25;
      goto LABEL_88;
    }

    if (v26 == 37)
    {
      v27 = v25 + 1;
      v28 = v77[v25 + 1];
      if (v28 == 46)
      {
        if (v77[v25 + 2] == 42)
        {
          v29 = a3;
          a3 += 2;
          v30 = *v29;
          v27 = v25 + 3;
          v28 = v77[v25 + 3];
          goto LABEL_47;
        }

        v30 = -1;
      }

      else
      {
        v30 = -1;
LABEL_47:
        if (v28 == 108)
        {
          v31 = v27 + 1;
        }

        else
        {
          v31 = v27;
        }

        if (v28 == 104)
        {
          ++v27;
        }

        else
        {
          v27 = v31;
        }
      }

      v32 = v77[v27];
      if (v32 > 0x6F)
      {
        if (v77[v27] > 0x74u)
        {
          if (v32 == 117)
          {
            v49 = a3;
            a3 += 2;
            v42 = *v49;
            v43 = 10;
          }

          else
          {
            if (v32 != 120)
            {
              goto LABEL_120;
            }

            v41 = a3;
            a3 += 2;
            v42 = *v41;
            v43 = 16;
          }

          LH_utoa(v42, __sa, v43);
          goto LABEL_81;
        }

        if (v32 == 112)
        {
          a3 += 2;
          __sprintf_chk(__sa, 0, 0x20uLL, "%p");
          goto LABEL_81;
        }

        if (v32 != 115)
        {
          goto LABEL_120;
        }

        v34 = a3;
        a3 += 2;
        v35 = *v34;
        if (v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = "";
        }

        if (v30 == -1)
        {
          v30 = cstdlib_strlen(v36);
        }

        v37 = aux_ResizeKeyValueVect(a1, a4, v30 + 2);
        if ((v37 & 0x80000000) != 0)
        {
LABEL_119:
          v7 = v37;
          goto LABEL_120;
        }

        v38 = *a4;
        v39 = &v38[cstdlib_strlen(*a4)];
        cstdlib_strncat(*a4, v36, v30);
        v40 = *a4;
      }

      else
      {
        if (v77[v27] <= 0x63u)
        {
          if (v32 != 83)
          {
            if (v32 != 99)
            {
              goto LABEL_120;
            }

            v33 = a3;
            a3 += 2;
            *__sa = *v33;
            goto LABEL_81;
          }

          v44 = a3;
          a3 += 2;
          v45 = *v44;
          if (v30 == -1)
          {
            v47 = 0;
              ;
            }

            v46 = v47 - 1;
          }

          else
          {
            v46 = v30;
            v47 = v30 + 1;
          }

          v54 = heap_Calloc(a1, v47, 2);
          if (!v54)
          {
            goto LABEL_99;
          }

          v55 = v54;
          if (v46)
          {
            v56 = v54;
            v57 = v46;
            do
            {
              v58 = *v45++;
              *v56++ = v58;
              --v57;
            }

            while (v57);
          }

          *(v54 + 2 * v46) = 0;
          v59 = utf8_16BitNbrOfUtf8Chars(v54);
          v60 = aux_ResizeKeyValueVect(a1, a4, v59 + 2);
          if ((v60 & 0x80000000) != 0)
          {
            v75 = v60;
            heap_Free(a1, v55);
            v7 = v75;
            goto LABEL_120;
          }

          v61 = *a4;
          v39 = &v61[cstdlib_strlen(*a4)];
          v62 = *a4;
          v63 = cstdlib_strlen(*a4);
          utf8_16bitToUtf8(v55, &v62[v63]);
          cstdlib_strcat(*a4, " ");
          heap_Free(a1, v55);
LABEL_84:
          v52 = v24 >> 1;
          if (v24)
          {
            *(*(a4 + 24) + 8 * v52) = v39;
            ++*(a4 + 12);
          }

          else
          {
            *(*(a4 + 16) + 8 * v52) = v39;
          }

          v19 = 0;
          ++v24;
LABEL_88:
          v25 = v27 + 1;
          if (v24 >= v21)
          {
            goto LABEL_102;
          }

          continue;
        }

        if (v32 == 100)
        {
          v48 = a3;
          a3 += 2;
          LH_itoa(*v48, __sa, 0xAu);
        }

        else
        {
          if (v32 != 102)
          {
            goto LABEL_120;
          }

          a3 += 2;
          __sprintf_chk(__sa, 0, 0x20uLL, "%f");
        }

LABEL_81:
        v50 = cstdlib_strlen(__sa);
        v37 = aux_ResizeKeyValueVect(a1, a4, v50 + 2);
        if ((v37 & 0x80000000) != 0)
        {
          goto LABEL_119;
        }

        v51 = *a4;
        v39 = &v51[cstdlib_strlen(*a4)];
        cstdlib_strcat(*a4, __sa);
        v40 = *a4;
      }

      cstdlib_strcat(v40, " ");
      goto LABEL_84;
    }

    break;
  }

  if (v77[v25])
  {
    goto LABEL_120;
  }

LABEL_102:
  if (*(a4 + 12))
  {
    v64 = 0;
    do
    {
      if (v64)
      {
        v65 = *(*(a4 + 16) + 8 * v64);
        if (v65)
        {
          v66 = (v65 - 1);
          if (v66 > *a4 && *v66 == 32)
          {
            *v66 = 0;
          }
        }
      }

      v67 = *(*(a4 + 24) + 8 * v64);
      if (v67)
      {
        v68 = (v67 - 1);
        if (v68 > *a4 && *v68 == 32)
        {
          *v68 = 0;
        }
      }

      ++v64;
      v69 = *(a4 + 12);
    }

    while (v64 < v69);
    v70 = *(a4 + 24);
    v71 = v69 - 1;
    v72 = *(v70 + 8 * v71);
    if (v72 && *(v72 + cstdlib_strlen(*(v70 + 8 * v71)) - 1) == 32)
    {
      v73 = *(*(a4 + 24) + 8 * (*(a4 + 12) - 1));
      v73[cstdlib_strlen(v73) - 1] = 0;
    }
  }

LABEL_117:
  v7 = v19;
  if ((v19 & 0x80000000) != 0)
  {
LABEL_120:
    log_FreeKeyValuePairs(a1, a4);
  }

  return v7;
}

void *log_FreeKeyValuePairs(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  if (v4)
  {
    result = heap_Free(result, v4);
    *a2 = 0;
  }

  v5 = a2[2];
  if (v5)
  {
    result = heap_Free(v3, v5);
    a2[2] = 0;
  }

  v6 = a2[3];
  if (v6)
  {
    result = heap_Free(v3, v6);
    a2[3] = 0;
  }

  return result;
}

uint64_t **log_OutEvent(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (result)
  {
    return log_VOutEvent(result, a2, a3, &a9);
  }

  return result;
}

uint64_t log_VOutEvent(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v22 = a4;
  if (!a1)
  {
    return 0;
  }

  __b = 0u;
  v21 = 0u;
  cstdlib_memset(&__b, 0, 0x20uLL);
  if (a3)
  {
    a3 = log_ParseKeyValuePairs_Restricted(*a1, a3, v22, &__b);
    if ((a3 & 0x80000000) != 0)
    {
      return a3;
    }

    v7 = a1[15];
    if (v7)
    {
      if (*v7)
      {
        v8 = *a1;
        v9 = heap_Realloc(*a1, v21, 8 * (HIDWORD(__b) + 1));
        if (v9)
        {
          *&v21 = v9;
          v10 = heap_Realloc(v8, *(&v21 + 1), 8 * (HIDWORD(__b) + 1));
          if (v10)
          {
            *(&v21 + 1) = v10;
            v11 = HIDWORD(__b);
            *(v21 + 8 * HIDWORD(__b)) = "SECURE";
            *(*(&v21 + 1) + 8 * v11) = v7;
            HIDWORD(__b) = v11 + 1;
          }
        }
      }
    }
  }

  for (i = 0; i != 10; i += 2)
  {
    v13 = a1[i + 3];
    if (v13)
    {
      v14 = v13[9];
      if (v14)
      {
        v15 = v14(a1[i + 2], a2, HIDWORD(__b), v21, *(&v21 + 1));
        if (v15 >= 0)
        {
          a3 = a3;
        }

        else
        {
          a3 = v15;
        }
      }
    }
  }

  v16 = a1[14];
  if (v16)
  {
    v17 = v16[9];
    if (v17)
    {
      v18 = v17(a1[13], a2, HIDWORD(__b), v21, *(&v21 + 1));
      if (v18 >= 0)
      {
        a3 = a3;
      }

      else
      {
        a3 = v18;
      }
    }
  }

  log_FreeKeyValuePairs(*a1, &__b);
  return a3;
}

uint64_t log_SetSessionID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 24;
  v6 = 5;
  do
  {
    if (*v5)
    {
      v7 = *(*v5 + 88);
      if (v7)
      {
        v8 = v7(*(v5 - 8), a2);
        if (v8 >= 0)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }
      }
    }

    v5 += 16;
    --v6;
  }

  while (v6);
  v9 = *(a1 + 112);
  if (v9)
  {
    v10 = *(v9 + 88);
    if (v10)
    {
      v11 = v10(*(a1 + 104), a2);
      if (v11 >= 0)
      {
        return v4;
      }

      else
      {
        return v11;
      }
    }
  }

  return v4;
}

uint64_t log_OutTraceTuningData(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (!a1 || !log_HasTraceTuningDataSubscriber(a1))
  {
    return 0;
  }

  __b = 0u;
  v21 = 0u;
  cstdlib_memset(&__b, 0, 0x20uLL);
  if (!a3 || (a3 = log_ParseKeyValuePairs_Restricted(*a1, a3, &a9, &__b), (a3 & 0x80000000) == 0))
  {
    for (i = 0; i != 10; i += 2)
    {
      v13 = a1[i + 3];
      if (v13)
      {
        v14 = v13[12];
        if (v14)
        {
          v15 = v14(a1[i + 2], a2, HIDWORD(__b), v21, *(&v21 + 1));
          if (v15 >= 0)
          {
            a3 = a3;
          }

          else
          {
            a3 = v15;
          }
        }
      }
    }

    v16 = a1[14];
    if (v16)
    {
      v17 = v16[12];
      if (v17)
      {
        v18 = v17(a1[13], a2, HIDWORD(__b), v21, *(&v21 + 1));
        if (v18 >= 0)
        {
          a3 = a3;
        }

        else
        {
          a3 = v18;
        }
      }
    }

    log_FreeKeyValuePairs(*a1, &__b);
  }

  return a3;
}