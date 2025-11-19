BOOL little2_nameMatchesAscii(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, _BYTE *a4)
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
    v7 = v6 < 2;
    v6 -= 2;
    if (v7 || a2[1] || *a2 != v4)
    {
      break;
    }

    a2 += 2;
    v8 = *v5++;
    v4 = v8;
    if (!v8)
    {
      return a2 == a3;
    }
  }

  return 0;
}

uint64_t little2_nameLength(uint64_t a1, unsigned __int8 *a2)
{
  for (i = a2; ; i += v4)
  {
    v3 = i[1];
    if (v3 > 0xDB)
    {
      if (v3 == 255)
      {
        if (*i > 0xFDu)
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
    if (!i[1])
    {
      break;
    }

LABEL_5:
    ;
  }

  v5 = *(a1 + 136 + *i) - 5;
  if (v5 < 0x19 && ((0x17E0007u >> v5) & 1) != 0)
  {
    v4 = qword_298778150[(*(a1 + 136 + *i) - 5)];
    goto LABEL_5;
  }

  return (i - a2);
}

unsigned __int8 *little2_skipS(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2[1])
  {
    v3 = a1 + 136;
    while (1)
    {
      v4 = *(v3 + *a2);
      v5 = v4 > 0x15;
      v6 = (1 << v4) & 0x200600;
      if (v5 || v6 == 0)
      {
        break;
      }

      result = a2 + 2;
      v8 = a2[3];
      a2 += 2;
      if (v8)
      {
        return result;
      }
    }
  }

  return a2;
}

uint64_t little2_getAtts(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4)
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
      v11 = a2 + 3;
      v10 = a2[3];
      v12 = a2 + 2;
      if (v10 > 0xDB)
      {
        break;
      }

      v13 = a2;
      if (v10 - 216 >= 4)
      {
        if (a2[3])
        {
          goto LABEL_16;
        }

        v15 = *v12;
        a2 += 2;
        switch(*(v7 + v15))
        {
          case 3:
            a2 = v12;
            if (result < a3)
            {
              *(a4 + 32 * result + 24) = 0;
              a2 = v12;
            }

            continue;
          case 5:
          case 0x16:
          case 0x18:
          case 0x1D:
            goto LABEL_16;
          case 6:
            a2 = v11;
            if (!v8)
            {
              v8 = 1;
              a2 = v11;
              if (result < a3)
              {
                v18 = a4 + 32 * result;
                *v18 = v12;
                *(v18 + 24) = 1;
                a2 = v11;
              }
            }

            continue;
          case 7:
            goto LABEL_4;
          case 9:
          case 0xA:
            v8 = 0;
            a2 = v12;
            if (v9 == 1)
            {
              continue;
            }

            a2 = v12;
            v8 = v9;
            if (v9 != 2)
            {
              continue;
            }

            a2 = v12;
            if (result >= a3)
            {
              continue;
            }

            *(a4 + 32 * result + 24) = 0;
            goto LABEL_66;
          case 0xB:
          case 0x11:
            v8 = 2;
            a2 = v12;
            if (v9 == 2)
            {
              continue;
            }

            return result;
          case 0xC:
            if (v8 == 2)
            {
              v8 = 2;
              a2 = v12;
              if (v6 == 12)
              {
                if (result < a3)
                {
                  *(a4 + 32 * result + 16) = v12;
                }

                v8 = 0;
                result = (result + 1);
                v6 = 12;
                a2 = v12;
              }

              continue;
            }

            v6 = 12;
            v8 = 2;
            a2 = v12;
            if (result >= a3)
            {
              continue;
            }

            *(a4 + 32 * result + 8) = v13 + 4;
            v6 = 12;
            goto LABEL_66;
          case 0xD:
            if (v8 == 2)
            {
              v8 = 2;
              a2 = v12;
              if (v6 == 13)
              {
                if (result < a3)
                {
                  *(a4 + 32 * result + 16) = v12;
                }

                v8 = 0;
                result = (result + 1);
                v6 = 13;
                a2 = v12;
              }

              continue;
            }

            v6 = 13;
            v8 = 2;
            a2 = v12;
            if (result >= a3)
            {
              continue;
            }

            *(a4 + 32 * result + 8) = v13 + 4;
            v6 = 13;
            goto LABEL_66;
          case 0x15:
            v8 = 0;
            a2 = v12;
            if (v9 == 1)
            {
              continue;
            }

            a2 = v12;
            v8 = v9;
            if (v9 != 2)
            {
              continue;
            }

            a2 = v12;
            if (result >= a3)
            {
              continue;
            }

            v19 = a4 + 32 * result;
            v8 = 2;
            a2 = v12;
            if (!*(v19 + 24))
            {
              continue;
            }

            if (v12 == *(v19 + 8) || v15 != 32)
            {
              goto LABEL_65;
            }

            v20 = v13[5];
            if (v20 > 0xDB)
            {
              if (v20 - 220 < 4)
              {
                v21 = 8;
                goto LABEL_64;
              }

              if (v20 == 255 && v13[4] > 0xFDu)
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

            if (v13[5])
            {
              goto LABEL_63;
            }

            v22 = v13[4];
            if (v22 == 32)
            {
              goto LABEL_65;
            }

            v21 = *(v7 + v22);
LABEL_64:
            v8 = 2;
            a2 = v12;
            if (v21 != v6)
            {
              continue;
            }

LABEL_65:
            *(v19 + 24) = 0;
LABEL_66:
            v8 = 2;
            a2 = v12;
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
            *v17 = v12;
            *(v17 + 24) = 1;
          }
        }

        a2 = v13 + 4;
        v8 = v9;
      }
    }

    a2 += 2;
    if (v10 - 220 >= 4)
    {
      if (v10 == 255)
      {
        v14 = *v12 <= 0xFDu && v8 == 0;
        a2 = v12;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
LABEL_16:
        a2 = v12;
        if (!v8)
        {
LABEL_17:
          v8 = 1;
          a2 = v12;
          if (result < a3)
          {
            v16 = a4 + 32 * result;
            *v16 = v12;
            *(v16 + 24) = 1;
            a2 = v12;
          }
        }
      }
    }
  }
}

uint64_t little2_charRefNumber(uint64_t a1, _BYTE *a2)
{
  if (!a2[5] && a2[4] == 120)
  {
    v2 = 0;
    for (i = a2 + 7; ; i += 2)
    {
      if (!*i)
      {
        v4 = *(i - 1);
        if (v4 == 59)
        {
          return checkCharRefNumber(v2);
        }

        if (*(i - 1) - 48 <= 0x36)
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
  for (j = a2 + 5; *j; j += 2)
  {
    v6 = -49;
LABEL_20:
    v2 = (v6 + 10 * v2);
    if (v2 >= 1114112)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = *(j - 1);
  if (v7 != 59)
  {
    v6 = v7 - 48;
    goto LABEL_20;
  }

  return checkCharRefNumber(v2);
}

uint64_t little2_predefinedEntityName(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = (a3 - a2) / 2;
  if (v3 == 4)
  {
    if (!a2[1])
    {
      v7 = *a2;
      if (v7 == 97)
      {
        if (!a2[3] && a2[2] == 112 && !a2[5] && a2[4] == 111 && !a2[7] && a2[6] == 115)
        {
          return 39;
        }
      }

      else if (v7 == 113 && !a2[3] && a2[2] == 117 && !a2[5] && a2[4] == 111 && !a2[7] && a2[6] == 116)
      {
        return 34;
      }
    }

    return 0;
  }

  if (v3 == 3)
  {
    if (!a2[1] && *a2 == 97 && !a2[3] && a2[2] == 109 && !a2[5] && a2[4] == 112)
    {
      return 38;
    }

    return 0;
  }

  if (v3 != 2 || a2[3] || a2[2] != 116 || a2[1])
  {
    return 0;
  }

  v4 = *a2;
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

uint64_t little2_updatePosition(uint64_t result, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 >= 2)
  {
    v4 = result + 136;
    while (a2[1] - 216 >= 4)
    {
      if (a2[1])
      {
        goto LABEL_13;
      }

      v5 = *(v4 + *a2);
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
        if (a3 - (a2 + 2) >= 2 && !a2[3] && *(v4 + a2[2]) == 10)
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

uint64_t little2_isPublicId(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 + 2);
  v5 = a3 - (a2 + 2) - 2;
  if (v5 >= 2)
  {
    do
    {
      if (v4[1])
      {
LABEL_15:
        result = 0;
        *a4 = v4;
        return result;
      }

      v6 = *v4;
      v7 = *(a1 + 136 + *v4);
      if (v7 <= 0x23)
      {
        if (((1 << v7) & 0xFCB8FE600) != 0)
        {
          goto LABEL_5;
        }

        if (((1 << v7) & 0x4400000) != 0)
        {
          if ((v6 & 0x80) == 0)
          {
            goto LABEL_5;
          }
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

uint64_t little2_toUtf8(uint64_t a1, unsigned __int8 **a2, uint64_t a3, _BYTE **a4, _BYTE *a5)
{
  v5 = *a2;
  v6 = (a3 - *a2) & 0xFFFFFFFFFFFFFFFELL;
  if (v6 >= 1)
  {
    v7 = &v5[v6];
    do
    {
      v8 = *v5;
      v9 = v8;
      v10 = v5[1];
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
          v20 = (v19 >> 6) & 0xC3 | (16 * (v9 & 3)) | (4 * (v5[1] & 3)) | 0x80;
          v21 = (*a4)++;
          *v21 = v20;
          LOBYTE(v9) = v19 & 0x3F | 0x80;
          v22 = *a4;
          goto LABEL_11;
        }

        if (v5[1])
        {
          v23 = *a4;
          if (a5 - *a4 < 3)
          {
LABEL_21:
            result = 2;
            goto LABEL_23;
          }

          *a4 = v23 + 1;
          *v23 = (v10 >> 4) | 0xE0;
          v13 = (4 * (v10 & 0xF)) | (v9 >> 6) | 0x80;
          v11 = *a4;
          goto LABEL_6;
        }

        if ((v8 & 0x80000000) == 0)
        {
          v22 = *a4;
          if (*a4 == a5)
          {
            goto LABEL_21;
          }

LABEL_11:
          *a4 = v22 + 1;
          *v22 = v9;
          goto LABEL_12;
        }
      }

      v11 = *a4;
      if (a5 - *a4 < 2)
      {
        goto LABEL_21;
      }

      HIDWORD(v12) = v5[1];
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

uint64_t little2_toUtf16(uint64_t a1, char **a2, uint64_t a3, unint64_t *a4, unint64_t a5)
{
  v5 = *a2;
  v6 = (a3 - *a2) & 0xFFFFFFFFFFFFFFFELL;
  v7 = &(*a2)[v6];
  if (v6 <= (a5 - *a4))
  {
    result = 0;
  }

  else
  {
    result = (*(v7 - 1) & 0xF8) == 216;
    v9 = -2;
    if ((*(v7 - 1) & 0xF8) != 0xD8)
    {
      v9 = 0;
    }

    v7 += v9;
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

    *v10 = *v5;
    *a4 = (v10 + 1);
    v5 = *a2 + 2;
    *a2 = v5;
  }

  return result;
}

uint64_t little2_scanLit(int a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 **a5)
{
  v5 = a4 - a3;
  if (a4 - a3 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2 + 136;
  while (1)
  {
    v7 = a3[1];
    if (v7 > 0xDB)
    {
      if (v7 == 255)
      {
        if (*a3 > 0xFDu)
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

    if (a3[1])
    {
      goto LABEL_25;
    }

    v9 = *(v6 + *a3);
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
  if (a3[3])
  {
    return 0;
  }

  v11 = *(v6 + *v8);
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

uint64_t little2_scanDecl(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2[1])
  {
LABEL_3:
    result = 0;
    *a4 = a2;
    return result;
  }

  v5 = a1 + 136;
  v6 = *(a1 + 136 + *a2);
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
        if (v7[1])
        {
          goto LABEL_28;
        }

        v9 = *(v5 + *v7);
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
        if (v7[3])
        {
          goto LABEL_20;
        }

        v10 = *(v5 + v7[2]);
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

  return little2_scanComment(a1, a2 + 2, a3, a4);
}

uint64_t little2_scanPi(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a2[1];
  if (v8 > 0xDB)
  {
    if (v8 - 220 < 4 || v8 == 255 && *a2 > 0xFDu)
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

    if (!a2[1])
    {
      v10 = *(a1 + *a2 + 136);
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

  if (((namingBitmap[(*a2 >> 5) | (8 * nmstrtPages[a2[1]])] >> *a2) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (a3 - a2 - 2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = 0;
  v25 = 0;
  v13 = a1 + 136;
  v14 = 3;
  result = 0xFFFFFFFFLL;
  while (1)
  {
    v15 = &a2[v14];
    v16 = a2[v14];
    if (v16 > 0xDB)
    {
      if (v16 == 255)
      {
        if (*(v15 - 1) > 0xFDu)
        {
          goto LABEL_84;
        }
      }

      else if (v16 - 220 < 4)
      {
        goto LABEL_84;
      }

LABEL_37:
      if (((namingBitmap[(*(v15 - 1) >> 5) | (8 * namePages[a2[v14]])] >> *(v15 - 1)) & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_38;
    }

    if (a2[v14])
    {
      if (v16 - 216 < 4)
      {
        goto LABEL_51;
      }

      goto LABEL_37;
    }

    v17 = *(v13 + *(v15 - 1));
    if (v17 <= 0x17)
    {
      break;
    }

    if (v17 - 24 >= 4)
    {
      if (v17 != 29)
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

  if (*(v13 + *(v15 - 1)) <= 0xEu)
  {
    if (*(v13 + *(v15 - 1)) > 8u)
    {
      if (v17 - 9 >= 2)
      {
        goto LABEL_84;
      }

      goto LABEL_54;
    }

    if (v17 != 5)
    {
      if (v17 == 6)
      {
        if (v4 + v12 == 4)
        {
          return 4294967294;
        }
      }

      else
      {
        if (v17 != 7)
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
    v18 = &a2[-v12 + 2];
    goto LABEL_86;
  }

  if (v17 == 22)
  {
    goto LABEL_38;
  }

  if (v17 == 15)
  {
    v23 = &a2[-v12];
    result = little2_checkPiTarget(a2, &a2[-v12 + 2], &v25);
    if (!result)
    {
      *a4 = &a2[-v12 + 2];
      return result;
    }

    if ((v4 + v12 - 4) < 2)
    {
      return 0xFFFFFFFFLL;
    }

    v18 = v23 + 4;
    if (!a2[v14 + 2] && a2[v14 + 1] == 62)
    {
      v24 = v23 + 6;
LABEL_95:
      *a4 = v24;
      return v25;
    }

LABEL_85:
    result = 0;
LABEL_86:
    *a4 = v18;
    return result;
  }

  if (v17 != 21)
  {
LABEL_84:
    v18 = &a2[-v12 + 2];
    goto LABEL_85;
  }

LABEL_54:
  result = little2_checkPiTarget(a2, &a2[-v12 + 2], &v25);
  if (result)
  {
    v19 = v4 + v12 - 4;
    if (v19 >= 2)
    {
      v18 = &a2[-v12 + 4];
      result = 0xFFFFFFFFLL;
      while (1)
      {
        v20 = v18[1];
        if (v20 > 0xDB)
        {
          break;
        }

        if (v20 - 216 < 4)
        {
          goto LABEL_59;
        }

        if (v18[1])
        {
          goto LABEL_71;
        }

        v22 = *(v13 + *v18);
        if (v22 <= 6)
        {
          if (v22 != 5)
          {
            if (v22 == 6)
            {
              if (v19 == 2)
              {
                return 4294967294;
              }

              v21 = v18 + 3;
              goto LABEL_72;
            }

            if (v22 < 2)
            {
              goto LABEL_85;
            }
          }

          goto LABEL_71;
        }

        if (v22 == 7)
        {
LABEL_59:
          if (v19 < 4)
          {
            return 4294967294;
          }

          v21 = v18 + 4;
          goto LABEL_72;
        }

        if (v22 != 15)
        {
          if (v22 == 8)
          {
            goto LABEL_85;
          }

          goto LABEL_71;
        }

        v21 = v18 + 2;
        if (a3 - (v18 + 2) < 2)
        {
          return 0xFFFFFFFFLL;
        }

        if (!v18[3] && *v21 == 62)
        {
          v24 = v18 + 4;
          goto LABEL_95;
        }

LABEL_72:
        v19 = a3 - v21;
        v18 = v21;
        if (a3 - v21 <= 1)
        {
          return result;
        }
      }

      if (v20 == 255)
      {
        if (*v18 > 0xFDu)
        {
          goto LABEL_85;
        }
      }

      else if (v20 - 220 < 4)
      {
        goto LABEL_85;
      }

LABEL_71:
      v21 = v18 + 2;
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

uint64_t little2_scanPercent(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2[1];
  if (v5 > 0xDB)
  {
    if (v5 - 220 < 4 || v5 == 255 && *a2 > 0xFDu)
    {
      goto LABEL_7;
    }

LABEL_15:
    if (((namingBitmap[(*a2 >> 5) | (8 * nmstrtPages[a2[1]])] >> *a2) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (v5 - 216 < 4)
  {
    goto LABEL_4;
  }

  if (a2[1])
  {
    goto LABEL_15;
  }

  v7 = *(a1 + *a2 + 136);
  if (v7 > 0x1E)
  {
LABEL_39:
    if (v7 == 6)
    {
      if (v4 != 2)
      {
        goto LABEL_7;
      }

      return 4294967294;
    }

    if (v7 != 7)
    {
      goto LABEL_7;
    }

LABEL_4:
    if (v4 >= 4)
    {
      goto LABEL_7;
    }

    return 4294967294;
  }

  if (((1 << v7) & 0x40200600) != 0)
  {
    result = 22;
    goto LABEL_8;
  }

  if (((1 << v7) & 0x1400000) == 0)
  {
    if (v7 != 29)
    {
      goto LABEL_39;
    }

    goto LABEL_15;
  }

LABEL_16:
  a2 += 2;
  v8 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a1 + 136;
  result = 0xFFFFFFFFLL;
  while (1)
  {
    v10 = a2[1];
    if (v10 > 0xDB)
    {
      if (v10 == 255)
      {
        if (*a2 > 0xFDu)
        {
          goto LABEL_7;
        }
      }

      else if (v10 - 220 < 4)
      {
        goto LABEL_7;
      }

LABEL_30:
      if (((namingBitmap[(*a2 >> 5) | (8 * namePages[a2[1]])] >> *a2) & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }

    if (a2[1])
    {
      if (v10 - 216 < 4)
      {
        goto LABEL_48;
      }

      goto LABEL_30;
    }

    v11 = *(v9 + *a2);
    if (v11 <= 0x17)
    {
      break;
    }

    if (v11 - 24 >= 4)
    {
      if (v11 != 29)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }

LABEL_31:
    a2 += 2;
    v8 -= 2;
    if (v8 <= 1)
    {
      return result;
    }
  }

  if (*(v9 + *a2) > 0x15u)
  {
    if (v11 != 22)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

  if (v11 != 6)
  {
    if (v11 != 7)
    {
      if (v11 != 18)
      {
        goto LABEL_7;
      }

      a2 += 2;
      result = 28;
      goto LABEL_8;
    }

LABEL_48:
    if (v8 < 4)
    {
      return 4294967294;
    }

    goto LABEL_7;
  }

  if (v8 == 2)
  {
    return 4294967294;
  }

LABEL_7:
  result = 0;
LABEL_8:
  *a4 = a2;
  return result;
}

uint64_t little2_scanPoundName(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2[1];
  if (v6 > 0xDB)
  {
    if (v6 - 220 < 4 || v6 == 255 && *a2 > 0xFDu)
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

    if (!a2[1])
    {
      result = 0;
      v8 = *(a1 + *a2 + 136);
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

  if (((namingBitmap[(*a2 >> 5) | (8 * nmstrtPages[a2[1]])] >> *a2) & 1) == 0)
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
    v12 = a2[1];
    if (v12 > 0xDB)
    {
      if (v12 == 255)
      {
        if (*a2 > 0xFDu)
        {
          goto LABEL_8;
        }
      }

      else if (v12 - 220 < 4)
      {
        goto LABEL_8;
      }

LABEL_35:
      if (((namingBitmap[(*a2 >> 5) | (8 * namePages[a2[1]])] >> *a2) & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

    if (a2[1])
    {
      if (v12 - 216 < 4)
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    v13 = *(v11 + *a2);
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

uint64_t little2_scanComment(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2[1] || *a2 != 45)
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
    v7 = a2[1];
    if (v7 > 0xDB)
    {
      if (v7 == 255)
      {
        if (*a2 > 0xFDu)
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

    if (a2[1])
    {
      goto LABEL_20;
    }

    v9 = *(v5 + *a2);
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

    if (!a2[3] && *v8 == 45)
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

  if (a2[5])
  {
    result = 0;
    a2 += 4;
  }

  else
  {
    v10 = a2[4];
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

BOOL little2_checkPiTarget(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 11;
  if (a2 - a1 != 6 || a1[1])
  {
    return 1;
  }

  v4 = *a1;
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

  if (a1[3])
  {
    return 1;
  }

  v6 = a1[2];
  if (v6 != 109)
  {
    if (v6 != 77)
    {
      return 1;
    }

    v5 = 1;
  }

  if (a1[5])
  {
    return 1;
  }

  v7 = a1[4];
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

uint64_t little2_scanRef(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2[1];
  if (v6 > 0xDB)
  {
    if (v6 - 220 < 4 || v6 == 255 && *a2 > 0xFDu)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v6 - 216 < 4)
    {
      goto LABEL_4;
    }

    if (!a2[1])
    {
      result = 0;
      v8 = a1 + 136;
      v9 = *(a1 + 136 + *a2);
      if (v9 <= 0x15)
      {
        if (v9 == 6)
        {
          if (v4 != 2)
          {
            goto LABEL_7;
          }

          return 4294967294;
        }

        if (v9 == 7)
        {
LABEL_4:
          if (v4 >= 4)
          {
            goto LABEL_7;
          }

          return 4294967294;
        }

        if (v9 != 19)
        {
          goto LABEL_8;
        }

        v10 = a2 + 2;
        if (a3 - (a2 + 2) >= 2)
        {
          if (a2[3])
          {
            goto LABEL_16;
          }

          v16 = *v10;
          if (v16 == 120)
          {
            v10 = a2 + 4;
            if (a3 - (a2 + 4) >= 2)
            {
              if (!a2[5] && (*(v8 + *v10) & 0xFE) == 0x18)
              {
                a2 += 6;
                v17 = a3 - a2;
                if (a3 - a2 >= 2)
                {
                  result = 0xFFFFFFFFLL;
                  while (!a2[1])
                  {
                    v18 = *(v8 + *a2);
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

                return 0xFFFFFFFFLL;
              }

LABEL_16:
              result = 0;
LABEL_17:
              a2 = v10;
              goto LABEL_8;
            }
          }

          else
          {
            if (*(v8 + v16) != 25)
            {
              goto LABEL_16;
            }

            v10 = a2 + 4;
            v19 = v4 - 4;
            while (1)
            {
              v20 = v19 < 2;
              v19 -= 2;
              if (v20)
              {
                break;
              }

              a2 = v10;
              if (v10[1])
              {
                goto LABEL_7;
              }

              v10 += 2;
              v21 = *(v8 + *a2);
              if (v21 != 25)
              {
                if (v21 != 18)
                {
                  goto LABEL_7;
                }

                result = 10;
                goto LABEL_17;
              }
            }
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (v9 == 22 || v9 == 24)
      {
        goto LABEL_27;
      }

      if (v9 != 29)
      {
        goto LABEL_8;
      }
    }
  }

  if (((namingBitmap[(*a2 >> 5) | (8 * nmstrtPages[a2[1]])] >> *a2) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_27:
  a2 += 2;
  v12 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = a1 + 136;
  result = 0xFFFFFFFFLL;
  while (1)
  {
    v14 = a2[1];
    if (v14 > 0xDB)
    {
      if (v14 == 255)
      {
        if (*a2 > 0xFDu)
        {
          goto LABEL_7;
        }
      }

      else if (v14 - 220 < 4)
      {
        goto LABEL_7;
      }

LABEL_41:
      if (((namingBitmap[(*a2 >> 5) | (8 * namePages[a2[1]])] >> *a2) & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_42;
    }

    if (a2[1])
    {
      if (v14 - 216 < 4)
      {
        goto LABEL_63;
      }

      goto LABEL_41;
    }

    v15 = *(v13 + *a2);
    if (v15 <= 0x17)
    {
      break;
    }

    if (v15 - 24 >= 4)
    {
      if (v15 != 29)
      {
        goto LABEL_7;
      }

      goto LABEL_41;
    }

LABEL_42:
    a2 += 2;
    v12 -= 2;
    if (v12 <= 1)
    {
      return result;
    }
  }

  if (*(v13 + *a2) > 0x15u)
  {
    if (v15 != 22)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

  if (v15 != 6)
  {
    if (v15 != 7)
    {
      if (v15 != 18)
      {
        goto LABEL_7;
      }

      a2 += 2;
      result = 9;
      goto LABEL_8;
    }

LABEL_63:
    if (v12 < 4)
    {
      return 4294967294;
    }

    goto LABEL_7;
  }

  if (v12 == 2)
  {
    return 4294967294;
  }

LABEL_7:
  result = 0;
LABEL_8:
  *a4 = a2;
  return result;
}

uint64_t little2_scanAtts(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v38 = a2;
  v4 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = a1 + 136;
  v10 = a3 - 4;
  while (1)
  {
    v11 = a2[1];
    if (v11 > 0xDB)
    {
      if (v11 == 255)
      {
        if (*a2 > 0xFDu)
        {
          goto LABEL_131;
        }
      }

      else if (v11 - 220 < 4)
      {
        goto LABEL_131;
      }

      goto LABEL_16;
    }

    if (a2[1])
    {
      if (v11 - 216 < 4)
      {
        goto LABEL_128;
      }

      goto LABEL_16;
    }

    v12 = *(v9 + *a2);
    if (v12 <= 0x16)
    {
      break;
    }

    if (v12 - 24 < 4)
    {
      goto LABEL_17;
    }

    if (v12 != 23)
    {
      if (v12 != 29)
      {
        goto LABEL_131;
      }

LABEL_16:
      if (((namingBitmap[(*a2 >> 5) | (8 * namePages[a2[1]])] >> *a2) & 1) == 0)
      {
        goto LABEL_131;
      }

LABEL_17:
      a2 += 2;
LABEL_18:
      v38 = a2;
      goto LABEL_19;
    }

    if (v8)
    {
      goto LABEL_131;
    }

    v16 = a2 + 2;
    v38 = (a2 + 2);
    v17 = a3 - (a2 + 2);
    if (v17 < 2)
    {
      return 0xFFFFFFFFLL;
    }

    v18 = a2[3];
    if (v18 > 0xDB)
    {
      if (v18 == 255)
      {
        if (*v16 > 0xFDu)
        {
          goto LABEL_138;
        }
      }

      else if (v18 - 220 < 4)
      {
        goto LABEL_138;
      }

LABEL_93:
      if (((namingBitmap[(*v16 >> 5) | (8 * nmstrtPages[a2[3]])] >> *v16) & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_94;
    }

    if (a2[3])
    {
      if (v18 - 216 < 4)
      {
        goto LABEL_137;
      }

      goto LABEL_93;
    }

    v19 = *(v9 + *v16);
    if (v19 <= 0x17)
    {
      if (v19 != 22)
      {
        if (v19 == 6)
        {
          if (v17 != 2)
          {
            goto LABEL_138;
          }

          return 4294967294;
        }

        if (v19 == 7)
        {
LABEL_137:
          if (v17 >= 4)
          {
            goto LABEL_138;
          }

          return 4294967294;
        }

LABEL_138:
        result = 0;
        a2 = v16;
        goto LABEL_132;
      }

      goto LABEL_94;
    }

    if (v19 != 24)
    {
      if (v19 != 29)
      {
        goto LABEL_138;
      }

      goto LABEL_93;
    }

LABEL_94:
    a2 += 4;
    v38 = a2;
    v8 = 1;
LABEL_19:
    v4 = a3 - a2;
    if (a3 - a2 <= 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(v9 + *a2) > 0xDu)
  {
    if (v12 == 14)
    {
      goto LABEL_46;
    }

    if (v12 == 21)
    {
      goto LABEL_27;
    }

    if (v12 != 22)
    {
      goto LABEL_131;
    }

    goto LABEL_17;
  }

  if (v12 - 9 >= 2)
  {
    if (v12 == 6)
    {
      if (v4 == 2)
      {
        return 4294967294;
      }
    }

    else if (v12 == 7)
    {
LABEL_128:
      if (v4 < 4)
      {
        return 4294967294;
      }
    }

    goto LABEL_131;
  }

LABEL_27:
  a2 += 2;
  v13 = a3 - a2;
  if (a3 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    if (a2[1])
    {
      goto LABEL_131;
    }

    v14 = *(v9 + *a2);
    if ((v14 - 9) >= 2 && v14 != 21)
    {
      break;
    }

    a2 += 2;
    v13 -= 2;
    if (v13 <= 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v14 != 14)
  {
    goto LABEL_131;
  }

  v38 = a2;
LABEL_46:
  v16 = a2 + 2;
  if (a3 - (a2 + 2) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v37 = v10;
  for (i = v10 - a2; ; i -= 2)
  {
    if (v16[1])
    {
      goto LABEL_138;
    }

    v21 = *(v9 + *v16);
    if ((v21 & 0xFE) == 0xC)
    {
      break;
    }

    if (v21 > 0x15 || ((1 << v21) & 0x200600) == 0)
    {
      goto LABEL_138;
    }

    v16 += 2;
    result = 0xFFFFFFFFLL;
    if (i <= 1)
    {
      return result;
    }
  }

  v16 += 2;
  v38 = v16;
  if (i < 2)
  {
    return 0xFFFFFFFFLL;
  }

  while (2)
  {
    v25 = v16[1];
    if (v25 > 0xDB)
    {
      if (v25 - 220 < 4)
      {
        v26 = 8;
        goto LABEL_72;
      }

      if (v25 != 255 || *v16 <= 0xFDu)
      {
        goto LABEL_71;
      }

      v26 = 0;
    }

    else
    {
      if (v25 - 216 < 4)
      {
        v26 = 7;
        goto LABEL_72;
      }

      if (!v16[1])
      {
        v26 = *(v9 + *v16);
        goto LABEL_72;
      }

LABEL_71:
      v26 = 29;
    }

LABEL_72:
    if (v26 != v21)
    {
      if (v26 > 5)
      {
        switch(v26)
        {
          case 6:
            if (i == 2)
            {
              return 4294967294;
            }

            v16 += 3;
            break;
          case 7:
            if (i < 4)
            {
              return 4294967294;
            }

            v16 += 4;
            break;
          case 8:
            goto LABEL_138;
          default:
LABEL_86:
            v16 += 2;
            break;
        }

        v38 = v16;
      }

      else
      {
        if (v26 != 3)
        {
          if (v26 <= 2)
          {
            goto LABEL_138;
          }

          goto LABEL_86;
        }

        result = little2_scanRef(a1, v16 + 2, a3, &v38);
        if (result < 1)
        {
          if (!result)
          {
            a2 = v38;
            goto LABEL_132;
          }

          return result;
        }

        v16 = v38;
      }

      i = a3 - v16;
      result = 0xFFFFFFFFLL;
      if (a3 - v16 <= 1)
      {
        return result;
      }

      continue;
    }

    break;
  }

  a2 = v16 + 2;
  v38 = (v16 + 2);
  if (a3 - (v16 + 2) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v16[3])
  {
LABEL_131:
    result = 0;
    goto LABEL_132;
  }

  result = 0;
  v27 = *(v9 + *a2);
  if (v27 > 0xA)
  {
    if (v27 == 21)
    {
      goto LABEL_103;
    }

    if (v27 == 11)
    {
LABEL_161:
      a2 += 2;
      result = 1;
      goto LABEL_132;
    }

    if (v27 != 17)
    {
      goto LABEL_132;
    }

LABEL_150:
    v16 = a2 + 2;
    v38 = (a2 + 2);
    if (a3 - (a2 + 2) >= 2)
    {
      if (!a2[3])
      {
        v36 = a2[2];
        if (v36 == 62)
        {
          a2 += 4;
        }

        else
        {
          a2 += 2;
        }

        if (v36 == 62)
        {
          result = 3;
        }

        else
        {
          result = 0;
        }

        goto LABEL_132;
      }

      goto LABEL_138;
    }

    return 0xFFFFFFFFLL;
  }

  if (v27 - 9 >= 2)
  {
    goto LABEL_132;
  }

LABEL_103:
  a2 = v16 + 4;
  if (a3 - (v16 + 4) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v28 = 0;
  v29 = a3 - v16;
  for (j = 4; ; j += 2)
  {
    v31 = &v16[j];
    v32 = v16[j + 1];
    if (v16[j + 1])
    {
      if ((v32 - 216) < 4)
      {
LABEL_141:
        if ((v29 + v28 - 4) >= 4)
        {
          goto LABEL_142;
        }

        return 4294967294;
      }

      if ((v32 - 220) < 4)
      {
        goto LABEL_142;
      }

      if (v32 == 255)
      {
        v34 = &v16[-v28];
        if (v16[j] >= 0xFEu)
        {
          result = 0;
          a2 = v34 + 4;
          goto LABEL_132;
        }

LABEL_124:
        v10 = v37;
        v38 = &v16[-v28 + 4];
        if (((namingBitmap[(v16[j] >> 5) | (8 * nmstrtPages[v34[5]])] >> v16[j]) & 1) == 0)
        {
          goto LABEL_131;
        }

        goto LABEL_125;
      }

LABEL_123:
      v34 = &v16[-v28];
      goto LABEL_124;
    }

    v33 = *(v9 + *v31);
    if (v33 > 0xA)
    {
      break;
    }

    if (v33 - 9 >= 2)
    {
      if (v33 == 6)
      {
        if (v29 + v28 != 6)
        {
          goto LABEL_142;
        }

        return 4294967294;
      }

      if (v33 != 7)
      {
        goto LABEL_142;
      }

      goto LABEL_141;
    }

LABEL_111:
    a2 += 2;
    v28 -= 2;
    result = 0xFFFFFFFFLL;
    if (v29 + v28 - 4 <= 1)
    {
      return result;
    }
  }

  if (*(v9 + *v31) > 0x15u)
  {
    v35 = v33 == 22 || v33 == 24;
    v10 = v37;
    if (v35)
    {
LABEL_125:
      v8 = 0;
      a2 = &v16[-v28 + 6];
      goto LABEL_18;
    }

    if (v33 != 29)
    {
      goto LABEL_142;
    }

    goto LABEL_123;
  }

  switch(v33)
  {
    case 0x15u:
      goto LABEL_111;
    case 0xBu:
      a2 = &v16[-v28 + 4];
      goto LABEL_161;
    case 0x11u:
      a2 = &v16[-v28 + 4];
      goto LABEL_150;
  }

LABEL_142:
  result = 0;
  a2 = &v16[-v28 + 4];
LABEL_132:
  *a4 = a2;
  return result;
}

BOOL streqci(unsigned __int8 *a1, unsigned __int8 *a2)
{
  do
  {
    v3 = *a1++;
    v2 = v3;
    v5 = *a2++;
    v4 = v5;
    if ((v2 - 97) < 0x1A)
    {
      LOBYTE(v2) = v2 - 32;
    }

    if ((v4 - 97) < 0x1A)
    {
      LOBYTE(v4) = v4 - 32;
    }

    if (v2 == v4)
    {
      v6 = 2 * (v2 == 0);
    }

    else
    {
      v6 = 1;
    }
  }

  while (!v6);
  return v6 == 2;
}

uint64_t ascii_toUtf8(uint64_t a1, char **a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  while (1)
  {
    v5 = *a2;
    if (*a2 >= a3)
    {
      return 0;
    }

    if (*a4 >= a5)
    {
      break;
    }

    *a2 = v5 + 1;
    v6 = *v5;
    v7 = (*a4)++;
    *v7 = v6;
  }

  if (*a4 != a5)
  {
    return 0;
  }

  return 2;
}

uint64_t big2_prologTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if (((a3 - a2) & 0xFFFFFFFFFFFFFFFELL) == 0 || ((a3 - a2) & 1) == 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = &a2[(a3 - a2) & 0xFFFFFFFFFFFFFFFELL];
  }

  if (a3 - a2 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a2;
  if (v9 > 0xDB)
  {
    if (v9 - 220 < 4 || v9 == 255 && a2[1] > 0xFDu)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v9 - 216 < 4)
    {
LABEL_13:
      if (v6 - a2 < 4)
      {
        return 4294967294;
      }

LABEL_16:
      result = 0;
      *a4 = a2;
      return result;
    }

    if (!*a2)
    {
      v10 = a1 + 136;
      v11 = *(a1 + 136 + a2[1]) - 2;
      result = 18;
      switch(v11)
      {
        case 0:
          v12 = a2 + 2;
          if (v6 - (a2 + 2) < 2)
          {
            return 0xFFFFFFFFLL;
          }

          v13 = *v12;
          if ((v13 - 220) < 4)
          {
            goto LABEL_21;
          }

          if (*v12)
          {
            if (v13 != 255 || a2[3] <= 0xFDu)
            {
              goto LABEL_134;
            }
          }

          else
          {
            v34 = *(v10 + a2[3]);
            if (v34 <= 0x1D)
            {
              if (((1 << v34) & 0x214000E0) != 0)
              {
LABEL_134:
                *a4 = a2;
                return 29;
              }

              if (v34 == 15)
              {
                return big2_scanPi(a1, a2 + 4, v6, a4);
              }

              if (v34 == 16)
              {
                return big2_scanDecl(a1, a2 + 4, v6, a4);
              }
            }
          }

LABEL_21:
          result = 0;
          *a4 = v12;
          return result;
        case 2:
          v25 = a2 + 2;
          v26 = v6 - (a2 + 2);
          if (v26 < 2)
          {
            return 4294967270;
          }

          if (*v25 || a2[3] != 93)
          {
            goto LABEL_111;
          }

          if (v26 < 4)
          {
            return 0xFFFFFFFFLL;
          }

          if (a2[4] || a2[5] != 62)
          {
LABEL_111:
            *a4 = v25;
            return 26;
          }

          else
          {
            *a4 = a2 + 6;
            return 34;
          }

        case 3:
          if (v6 - a2 >= 2)
          {
            goto LABEL_16;
          }

          return 4294967294;
        case 4:
          if (v6 - a2 >= 3)
          {
            goto LABEL_16;
          }

          return 4294967294;
        case 5:
          goto LABEL_13;
        case 7:
          if (a2 + 2 != v6)
          {
            goto LABEL_93;
          }

          *a4 = v6;
          return 4294967281;
        case 8:
        case 19:
LABEL_93:
          v28 = a2 + 2;
          v29 = v6 - (a2 + 2);
          if (v29 >= 2)
          {
            do
            {
              if (*v28)
              {
                break;
              }

              v30 = *(v10 + v28[1]);
              if (v30 != 21 && v30 != 10 && (v30 != 9 || v28 + 2 == v6))
              {
                break;
              }

              v28 += 2;
              v29 -= 2;
            }

            while (v29 > 1);
          }

          *a4 = v28;
          return 15;
        case 9:
          *a4 = a2 + 2;
          return 17;
        case 10:
          v23 = a2 + 2;
          v24 = 12;
          return big2_scanLit(v24, a1, v23, v6, a4);
        case 11:
          v23 = a2 + 2;
          v24 = 13;
          return big2_scanLit(v24, a1, v23, v6, a4);
        case 17:
          return big2_scanPoundName(a1, a2 + 2, v6, a4);
        case 18:
          *a4 = a2 + 2;
          return 25;
        case 20:
        case 22:
          goto LABEL_28;
        case 21:
        case 23:
        case 24:
        case 25:
          goto LABEL_27;
        case 27:
          break;
        case 28:
          return big2_scanPercent(a1, a2 + 2, v6, a4);
        case 29:
          *a4 = a2 + 2;
          return 23;
        case 30:
          v27 = a2 + 2;
          if (v6 - (a2 + 2) < 2)
          {
            return 4294967272;
          }

          if (*v27)
          {
            goto LABEL_87;
          }

          v33 = *(v10 + a2[3]);
          if (v33 > 0x24)
          {
            goto LABEL_130;
          }

          if (((1 << v33) & 0x1900200000) != 0)
          {
            goto LABEL_131;
          }

          if (v33 == 33)
          {
            *a4 = a2 + 4;
            return 36;
          }

          else if (v33 == 34)
          {
            *a4 = a2 + 4;
            return 37;
          }

          else
          {
LABEL_130:
            if ((v33 - 9) >= 3)
            {
              if (v33 != 15)
              {
LABEL_87:
                result = 0;
                *a4 = v27;
                return result;
              }

              *a4 = a2 + 4;
              return 35;
            }

            else
            {
LABEL_131:
              *a4 = v27;
              return 24;
            }
          }

        case 33:
          *a4 = a2 + 2;
          return 38;
        case 34:
          *a4 = a2 + 2;
          return 21;
        default:
          goto LABEL_16;
      }
    }
  }

  v14 = a2[1];
  if (((1 << v14) & namingBitmap[(v14 >> 5) | (8 * nmstrtPages[*a2])]) != 0)
  {
    result = 18;
  }

  else
  {
    if ((namingBitmap[(v14 >> 5) | (8 * namePages[*a2])] & (1 << v14)) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    result = 19;
  }

LABEL_28:
  v15 = a2 + 2;
  v16 = v6 - (a2 + 2);
  if (v16 < 2)
  {
    return -result;
  }

  v17 = a1 + 136;
  while (1)
  {
    v18 = *v15;
    if (v18 > 0xDB)
    {
      if (v18 == 255)
      {
        if (v15[1] > 0xFDu)
        {
          goto LABEL_70;
        }
      }

      else if (v18 - 220 < 4)
      {
        goto LABEL_70;
      }

      goto LABEL_45;
    }

    if (*v15)
    {
      break;
    }

    switch(*(v17 + v15[1]))
    {
      case 6:
        if (v16 != 2)
        {
          goto LABEL_70;
        }

        return 4294967294;
      case 7:
        goto LABEL_69;
      case 9:
      case 0xA:
      case 0xB:
      case 0x14:
      case 0x15:
      case 0x1E:
      case 0x20:
      case 0x23:
      case 0x24:
        goto LABEL_71;
      case 0xF:
        if (result == 19)
        {
          goto LABEL_70;
        }

        *a4 = v15 + 2;
        return 30;
      case 0x16:
      case 0x18:
      case 0x19:
      case 0x1A:
      case 0x1B:
        goto LABEL_46;
      case 0x17:
        v19 = v15 + 2;
        if (result == 41)
        {
          goto LABEL_38;
        }

        if (result != 18)
        {
          break;
        }

        v20 = v6 - v19;
        if (v6 - v19 < 2)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = *v19;
        if (v21 > 0xDB)
        {
          if (v21 - 220 < 4 || v21 == 255 && v15[3] > 0xFDu)
          {
LABEL_38:
            result = 19;
            break;
          }

          goto LABEL_58;
        }

        if (*v19)
        {
          if (v21 - 216 < 4)
          {
            goto LABEL_66;
          }

          goto LABEL_58;
        }

        v22 = *(v17 + v15[3]);
        result = 19;
        if (v22 > 0x17)
        {
          if (v22 - 24 >= 4)
          {
            if (v22 != 29)
            {
              break;
            }

LABEL_58:
            if (((namingBitmap[(v15[3] >> 5) | (8 * namePages[*v19])] >> v15[3]) & 1) == 0)
            {
              goto LABEL_67;
            }
          }

LABEL_59:
          v19 = v15 + 4;
          result = 41;
          break;
        }

        if (*(v17 + v15[3]) <= 0x15u)
        {
          switch(v22)
          {
            case 5u:
              goto LABEL_67;
            case 6u:
              if (v20 != 2)
              {
LABEL_67:
                result = 0;
                *a4 = v19;
                return result;
              }

              return 4294967294;
            case 7u:
LABEL_66:
              if (v20 >= 4)
              {
                goto LABEL_67;
              }

              return 4294967294;
          }
        }

        else if (v22 == 22)
        {
          goto LABEL_59;
        }

        break;
      case 0x1D:
        goto LABEL_45;
      case 0x21:
        if (result == 19)
        {
          goto LABEL_70;
        }

        *a4 = v15 + 2;
        return 31;
      case 0x22:
        if (result == 19)
        {
          goto LABEL_70;
        }

        *a4 = v15 + 2;
        return 32;
      default:
        goto LABEL_70;
    }

LABEL_47:
    v16 = v6 - v19;
    v15 = v19;
    if (v6 - v19 <= 1)
    {
      return -result;
    }
  }

  if (v18 - 216 >= 4)
  {
LABEL_45:
    if (((namingBitmap[(v15[1] >> 5) | (8 * namePages[*v15])] >> v15[1]) & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_46:
    v19 = v15 + 2;
    goto LABEL_47;
  }

LABEL_69:
  if (v16 < 4)
  {
    return 4294967294;
  }

LABEL_70:
  result = 0;
LABEL_71:
  *a4 = v15;
  return result;
}

uint64_t big2_contentTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v4 = a3 - a2;
  v5 = (a3 - a2) & 0xFFFFFFFFFFFFFFFELL;
  if (v5)
  {
    v6 = ((a3 - a2) & 1) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    a3 = &a2[v5];
  }

  if ((v4 & 1) != 0 && !v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a2;
  if (v9 > 0xDB)
  {
    if (v9 - 220 < 4 || v9 == 255 && a2[1] > 0xFDu)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  if (v9 - 216 < 4)
  {
LABEL_14:
    if ((a3 - a2) < 4)
    {
      return 4294967294;
    }

    v10 = a2 + 4;
    goto LABEL_31;
  }

  if (!*a2)
  {
    v11 = a1 + 136;
    v12 = *(a1 + 136 + a2[1]);
    if (v12 > 5)
    {
      if (*(a1 + 136 + a2[1]) <= 7u)
      {
        if (v12 == 6)
        {
          if ((a3 - a2) < 3)
          {
            return 4294967294;
          }

          v10 = a2 + 3;
          goto LABEL_31;
        }

        if (v12 == 7)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }

      switch(v12)
      {
        case 8u:
          goto LABEL_17;
        case 9u:
          v21 = a2 + 2;
          if ((a3 - (a2 + 2)) < 2)
          {
            return 4294967293;
          }

          if (!*v21 && *(v11 + a2[3]) == 10)
          {
            v21 = a2 + 4;
          }

          break;
        case 0xAu:
          v21 = a2 + 2;
          break;
        default:
          goto LABEL_30;
      }

      *a4 = v21;
      return 7;
    }

    if (*(a1 + 136 + a2[1]) <= 2u)
    {
      if (v12 >= 2)
      {
        v13 = a2 + 2;
        v14 = a3 - (a2 + 2);
        if (v14 < 2)
        {
          return 0xFFFFFFFFLL;
        }

        v15 = *v13;
        if (v15 > 0xDB)
        {
          if (v15 - 220 < 4)
          {
            goto LABEL_97;
          }

          if (v15 == 255)
          {
            LODWORD(v22) = a2[3];
            if (v22 > 0xFD)
            {
              goto LABEL_97;
            }

            goto LABEL_110;
          }
        }

        else
        {
          if (v15 - 216 < 4)
          {
            goto LABEL_26;
          }

          if (!*v13)
          {
            v22 = a2[3];
            v23 = *(v11 + v22);
            if (v23 <= 0xF)
            {
              if (*(v11 + v22) <= 6u)
              {
                if (v23 == 6 && v14 == 2)
                {
                  return 4294967294;
                }

                goto LABEL_97;
              }

              if (v23 != 7)
              {
                if (v23 != 15)
                {
                  goto LABEL_97;
                }

                return big2_scanPi(a1, a2 + 4, a3, a4);
              }

LABEL_26:
              if (v14 < 4)
              {
                return 4294967294;
              }

              goto LABEL_97;
            }

            if (*(v11 + v22) > 0x15u)
            {
              if (v23 == 22 || v23 == 24)
              {
LABEL_111:
                v24 = a2 + 4;
                v25 = a3 - (a2 + 4);
                if (v25 < 2)
                {
                  return 0xFFFFFFFFLL;
                }

                v26 = 0;
                while (1)
                {
                  v27 = *v24;
                  if (v27 > 0xDB)
                  {
                    break;
                  }

                  if (*v24)
                  {
                    if (v27 - 216 < 4)
                    {
                      goto LABEL_176;
                    }

                    goto LABEL_126;
                  }

                  v28 = v24[1];
                  v29 = *(v11 + v28);
                  if (v29 <= 0x16)
                  {
                    if (*(v11 + v28) <= 0x10u)
                    {
                      if (*(v11 + v28) > 8u)
                      {
                        if (v29 - 9 < 2)
                        {
LABEL_187:
                          v40 = a3 - v24 - 2;
                          if (v40 < 2)
                          {
                            return 0xFFFFFFFFLL;
                          }

                          for (i = v24 + 4; ; i += 2)
                          {
                            v42 = *(i - 2);
                            if (*(i - 2))
                            {
                              if ((v42 - 216) >= 4)
                              {
                                if ((v42 - 220) < 4)
                                {
                                  goto LABEL_271;
                                }

                                if (v42 == 255)
                                {
                                  v43 = *(i - 1);
                                  if (v43 > 0xFD)
                                  {
                                    goto LABEL_271;
                                  }

                                  v42 = 0xFFu;
                                }

                                else
                                {
                                  v43 = *(i - 1);
                                }

LABEL_258:
                                if (((namingBitmap[(v43 >> 5) | (8 * nmstrtPages[v42])] >> v43) & 1) == 0)
                                {
                                  goto LABEL_271;
                                }

                                return big2_scanAtts(a1, i, a3, a4);
                              }

LABEL_250:
                              if (v40 < 4)
                              {
                                return 4294967294;
                              }

                              goto LABEL_271;
                            }

                            v43 = *(i - 1);
                            v44 = *(v11 + *(i - 1));
                            if (v44 > 0xA)
                            {
                              if (*(v11 + *(i - 1)) > 0x15u)
                              {
                                if (v44 != 22 && v44 != 24)
                                {
                                  if (v44 != 29)
                                  {
                                    goto LABEL_271;
                                  }

                                  v42 = 0;
                                  goto LABEL_258;
                                }

                                return big2_scanAtts(a1, i, a3, a4);
                              }

                              if (v44 != 21)
                              {
                                if (v44 != 11)
                                {
                                  if (v44 == 17)
                                  {
                                    v24 = i - 2;
LABEL_263:
                                    v20 = v24 + 2;
                                    if ((a3 - (v24 + 2)) >= 2)
                                    {
                                      if (!*v20 && v24[3] == 62)
                                      {
                                        *a4 = v24 + 4;
                                        return 4;
                                      }

LABEL_267:
                                      v7 = 0;
                                      goto LABEL_61;
                                    }

                                    return 0xFFFFFFFFLL;
                                  }

LABEL_271:
                                  v7 = 0;
                                  v20 = i - 2;
                                  goto LABEL_61;
                                }

                                v24 = i - 2;
LABEL_180:
                                *a4 = v24 + 2;
                                return 2;
                              }
                            }

                            else if (*(v11 + *(i - 1)) <= 8u)
                            {
                              if (v44 == 5)
                              {
                                goto LABEL_271;
                              }

                              if (v44 != 6)
                              {
                                if (v44 != 7)
                                {
                                  goto LABEL_271;
                                }

                                goto LABEL_250;
                              }

                              if (v40 != 2)
                              {
                                goto LABEL_271;
                              }

                              return 4294967294;
                            }

                            v40 -= 2;
                            v7 = 0xFFFFFFFFLL;
                            if (v40 <= 1)
                            {
                              return v7;
                            }
                          }
                        }

                        if (v29 == 11)
                        {
                          goto LABEL_180;
                        }
                      }

                      else if (v29 != 5)
                      {
                        if (v29 == 6)
                        {
                          if (v25 == 2)
                          {
                            return 4294967294;
                          }
                        }

                        else if (v29 == 7)
                        {
LABEL_176:
                          if (v25 < 4)
                          {
                            return 4294967294;
                          }
                        }
                      }

LABEL_177:
                      v7 = 0;
                      *a4 = v24;
                      return v7;
                    }

                    v30 = 2;
                    if (v29 != 22)
                    {
                      if (v29 == 17)
                      {
                        goto LABEL_263;
                      }

                      if (v29 == 21)
                      {
                        goto LABEL_187;
                      }

                      goto LABEL_177;
                    }
                  }

                  else
                  {
                    if (v29 - 24 < 4)
                    {
                      goto LABEL_128;
                    }

                    if (v29 != 23)
                    {
                      if (v29 != 29)
                      {
                        goto LABEL_177;
                      }

                      goto LABEL_127;
                    }

                    if (v26)
                    {
                      goto LABEL_177;
                    }

                    v31 = v24 + 2;
                    v32 = a3 - (v24 + 2);
                    if (v32 < 2)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v33 = *v31;
                    if (v33 > 0xDB)
                    {
                      if (v33 == 255)
                      {
                        LODWORD(v34) = v24[3];
                        if (v34 > 0xFD)
                        {
                          goto LABEL_242;
                        }

                        goto LABEL_150;
                      }

                      if (v33 - 220 < 4)
                      {
                        goto LABEL_242;
                      }

                      goto LABEL_149;
                    }

                    if (*v31)
                    {
                      if (v33 - 216 < 4)
                      {
                        goto LABEL_200;
                      }

LABEL_149:
                      LODWORD(v34) = v24[3];
LABEL_150:
                      if (((namingBitmap[(v34 >> 5) | (8 * nmstrtPages[*v31])] >> v34) & 1) == 0)
                      {
                        goto LABEL_242;
                      }

                      v26 = 1;
LABEL_152:
                      v30 = 4;
                      goto LABEL_129;
                    }

                    v34 = v24[3];
                    v35 = *(v11 + v34);
                    if (v35 <= 0x15)
                    {
                      if (v35 != 5)
                      {
                        if (v35 == 6)
                        {
                          if (v32 == 2)
                          {
                            return 4294967294;
                          }
                        }

                        else if (v35 == 7)
                        {
LABEL_200:
                          if (v32 < 4)
                          {
                            return 4294967294;
                          }
                        }
                      }

LABEL_242:
                      v7 = 0;
                      *a4 = v31;
                      return v7;
                    }

                    v26 = 1;
                    if (v35 == 22)
                    {
                      goto LABEL_152;
                    }

                    v30 = 4;
                    if (v35 != 24)
                    {
                      if (v35 != 29)
                      {
                        goto LABEL_242;
                      }

                      goto LABEL_150;
                    }
                  }

LABEL_129:
                  v24 += v30;
                  v25 = a3 - v24;
                  v7 = 0xFFFFFFFFLL;
                  if ((a3 - v24) <= 1)
                  {
                    return v7;
                  }
                }

                if (v27 == 255)
                {
                  LODWORD(v28) = v24[1];
                  if (v28 > 0xFD)
                  {
                    goto LABEL_177;
                  }

LABEL_127:
                  if (((namingBitmap[(v28 >> 5) | (8 * namePages[*v24])] >> v28) & 1) == 0)
                  {
                    goto LABEL_177;
                  }

LABEL_128:
                  v30 = 2;
                  goto LABEL_129;
                }

                if (v27 - 220 < 4)
                {
                  goto LABEL_177;
                }

LABEL_126:
                LODWORD(v28) = v24[1];
                goto LABEL_127;
              }

              if (v23 != 29)
              {
                goto LABEL_97;
              }

LABEL_110:
              if (((namingBitmap[(v22 >> 5) | (8 * nmstrtPages[*v13])] >> v22) & 1) == 0)
              {
                goto LABEL_97;
              }

              goto LABEL_111;
            }

            if (v23 == 16)
            {
              v13 = a2 + 4;
              if ((a3 - (a2 + 4)) < 2)
              {
                return 0xFFFFFFFFLL;
              }

              if (*v13)
              {
                goto LABEL_97;
              }

              v38 = *(v11 + a2[5]);
              if (v38 == 20)
              {
                v20 = a2 + 6;
                if ((a3 - (a2 + 6)) >= 12)
                {
                  for (j = 0; j != 6; ++j)
                  {
                    if (*v20 || v20[1] != big2_scanCdataSection_CDATA_LSQB[j])
                    {
                      goto LABEL_267;
                    }

                    v20 += 2;
                  }

                  v7 = 8;
                  v20 = a2 + 18;
LABEL_61:
                  *a4 = v20;
                  return v7;
                }

                return 0xFFFFFFFFLL;
              }

              if (v38 != 27)
              {
                goto LABEL_97;
              }

              return big2_scanComment(a1, a2 + 6, a3, a4);
            }

            if (v23 != 17)
            {
              goto LABEL_97;
            }

            v13 = a2 + 4;
            v36 = a3 - (a2 + 4);
            if (v36 < 2)
            {
              return 0xFFFFFFFFLL;
            }

            v37 = *v13;
            if (v37 > 0xDB)
            {
              if (v37 - 220 < 4)
              {
                goto LABEL_97;
              }

              if (v37 == 255)
              {
                LODWORD(v39) = a2[5];
                if (v39 > 0xFD)
                {
                  goto LABEL_97;
                }

                goto LABEL_222;
              }
            }

            else
            {
              if (v37 - 216 < 4)
              {
                goto LABEL_165;
              }

              if (!*v13)
              {
                v7 = 0;
                v39 = a2[5];
                v45 = *(v11 + v39);
                if (v45 <= 0x15)
                {
                  if (v45 == 6)
                  {
                    if (v36 == 2)
                    {
                      return 4294967294;
                    }

                    goto LABEL_97;
                  }

                  if (v45 != 7)
                  {
                    goto LABEL_98;
                  }

LABEL_165:
                  if (v36 < 4)
                  {
                    return 4294967294;
                  }

                  goto LABEL_97;
                }

                if (v45 == 22 || v45 == 24)
                {
                  goto LABEL_223;
                }

                if (v45 != 29)
                {
                  goto LABEL_98;
                }

LABEL_222:
                if (((namingBitmap[(v39 >> 5) | (8 * nmstrtPages[*v13])] >> v39) & 1) == 0)
                {
                  goto LABEL_97;
                }

LABEL_223:
                v47 = a3 - a2;
                if ((a3 - a2 - 6) < 2)
                {
                  return 0xFFFFFFFFLL;
                }

                v48 = 0;
                for (k = 6; ; k += 2)
                {
                  v50 = a2[k];
                  if (v50 > 0xDB)
                  {
                    break;
                  }

                  if (a2[k])
                  {
                    if (v50 - 216 < 4)
                    {
                      goto LABEL_276;
                    }

                    goto LABEL_237;
                  }

                  v51 = a2[k + 1];
                  v52 = *(v11 + v51);
                  if ((v52 - 22) >= 6)
                  {
                    if (*(v11 + v51) <= 0xAu)
                    {
                      if ((v52 - 9) >= 2)
                      {
                        if (v52 == 6)
                        {
                          if (v47 + v48 == 8)
                          {
                            return 4294967294;
                          }
                        }

                        else if (v52 == 7)
                        {
LABEL_276:
                          if (v47 + v48 - 6 < 4)
                          {
                            return 4294967294;
                          }
                        }

                        goto LABEL_277;
                      }

LABEL_280:
                      v54 = v47 + v48 - 8;
                      if (v54 < 2)
                      {
                        return 0xFFFFFFFFLL;
                      }

                      v13 = &a2[-v48 + 8];
                      while (1)
                      {
                        if (*v13)
                        {
                          goto LABEL_97;
                        }

                        v55 = *(v11 + v13[1]);
                        if ((v55 - 9) >= 2 && v55 != 21)
                        {
                          break;
                        }

                        v13 += 2;
                        v54 -= 2;
                        v7 = 0xFFFFFFFFLL;
                        if (v54 <= 1)
                        {
                          return v7;
                        }
                      }

                      if (v55 == 11)
                      {
                        v13 += 2;
                        goto LABEL_295;
                      }

LABEL_97:
                      v7 = 0;
                      goto LABEL_98;
                    }

                    if (v52 != 29)
                    {
                      if (v52 != 11)
                      {
                        if (v52 == 21)
                        {
                          goto LABEL_280;
                        }

LABEL_277:
                        v7 = 0;
                        v13 = &a2[-v48 + 6];
LABEL_98:
                        *a4 = v13;
                        return v7;
                      }

                      v13 = &a2[-v48 + 8];
LABEL_295:
                      v7 = 5;
                      goto LABEL_98;
                    }

                    goto LABEL_238;
                  }

LABEL_239:
                  v48 -= 2;
                  v7 = 0xFFFFFFFFLL;
                  if ((v47 + v48 - 6) <= 1)
                  {
                    return v7;
                  }
                }

                if (v50 == 255)
                {
                  LODWORD(v51) = a2[k + 1];
                  if (v51 > 0xFD)
                  {
                    goto LABEL_277;
                  }
                }

                else
                {
                  if (v50 - 220 < 4)
                  {
                    goto LABEL_277;
                  }

LABEL_237:
                  LODWORD(v51) = a2[k + 1];
                }

LABEL_238:
                if (((namingBitmap[(v51 >> 5) | (8 * namePages[a2[k]])] >> v51) & 1) == 0)
                {
                  goto LABEL_277;
                }

                goto LABEL_239;
              }
            }

            LODWORD(v39) = a2[5];
            goto LABEL_222;
          }
        }

        LODWORD(v22) = a2[3];
        goto LABEL_110;
      }

LABEL_17:
      v7 = 0;
      *a4 = a2;
      return v7;
    }

    if (v12 == 3)
    {
      return big2_scanRef(a1, a2 + 2, a3, a4);
    }

    if (v12 == 4)
    {
      v10 = a2 + 2;
      if ((a3 - (a2 + 2)) >= 2)
      {
        if (*v10 || a2[3] != 93)
        {
          goto LABEL_31;
        }

        v13 = a2 + 4;
        if ((a3 - (a2 + 4)) >= 2)
        {
          if (!*v13 && a2[5] == 62)
          {
            goto LABEL_97;
          }

          goto LABEL_31;
        }
      }

      return 4294967291;
    }

    if (v12 == 5 && (a3 - a2) < 2)
    {
      return 4294967294;
    }
  }

LABEL_30:
  v10 = a2 + 2;
LABEL_31:
  v16 = a3 - v10;
  if ((a3 - v10) >= 2)
  {
    while (1)
    {
      v17 = *v10;
      if (v17 > 0xDB)
      {
        if (v17 == 255)
        {
          if (v10[1] > 0xFDu)
          {
            goto LABEL_64;
          }
        }

        else if (v17 - 220 < 4)
        {
          goto LABEL_64;
        }

        goto LABEL_45;
      }

      if (v17 - 216 < 4)
      {
        goto LABEL_34;
      }

      if (*v10)
      {
        goto LABEL_45;
      }

      v19 = *(a1 + 136 + v10[1]);
      if (v19 > 5)
      {
        if (v19 != 6)
        {
          if (v19 != 7)
          {
            if (v19 - 8 < 3)
            {
              goto LABEL_64;
            }

            goto LABEL_45;
          }

LABEL_34:
          if (v16 <= 3)
          {
            goto LABEL_64;
          }

          v18 = v10 + 4;
          goto LABEL_46;
        }

        if (v16 == 2)
        {
          goto LABEL_64;
        }

        v18 = v10 + 3;
      }

      else
      {
        if (v19 != 4)
        {
          if (v19 < 4)
          {
            goto LABEL_64;
          }

LABEL_45:
          v18 = v10 + 2;
          goto LABEL_46;
        }

        if (v16 < 4)
        {
          goto LABEL_64;
        }

        v18 = v10 + 2;
        if (!v10[2] && v10[3] == 93)
        {
          if (v16 < 6)
          {
LABEL_64:
            *a4 = v10;
            return 6;
          }

          if (!v10[4] && v10[5] == 62)
          {
            v7 = 0;
            v20 = v10 + 4;
            goto LABEL_61;
          }
        }
      }

LABEL_46:
      v16 = a3 - v18;
      v10 = v18;
      if ((a3 - v18) <= 1)
      {
        goto LABEL_63;
      }
    }
  }

  v18 = v10;
LABEL_63:
  *a4 = v18;
  return 6;
}

uint64_t big2_cdataSectionTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v4 = (a3 - a2) & 0xFFFFFFFFFFFFFFFELL;
  if (v4)
  {
    v5 = ((a3 - a2) & 1) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = &a2[v4];
  if (v5)
  {
    v6 = a3;
  }

  if (((a3 - a2) & 1) == 0 || v4)
  {
    v7 = *a2;
    if (*a2 > 0xDBu)
    {
      if ((v7 - 220) >= 4 && (v7 != 255 || a2[1] <= 0xFDu))
      {
        goto LABEL_32;
      }

      v7 = 0;
    }

    else
    {
      if ((v7 - 216) < 4)
      {
LABEL_13:
        if (v6 - a2 < 4)
        {
          return 4294967294;
        }

        v8 = a2 + 4;
        goto LABEL_33;
      }

      if (*a2)
      {
        goto LABEL_32;
      }

      v9 = *(a1 + 136 + a2[1]);
      if (v9 > 6)
      {
        if (*(a1 + 136 + a2[1]) <= 8u)
        {
          if (v9 == 7)
          {
            goto LABEL_13;
          }

          if (v9 == 8)
          {
            goto LABEL_54;
          }

          goto LABEL_32;
        }

        if (v9 == 9)
        {
          v8 = a2 + 2;
          if (v6 - (a2 + 2) < 2)
          {
            return 0xFFFFFFFFLL;
          }

          if (*v8)
          {
            v7 = 7;
LABEL_53:
            a2 = v8;
            goto LABEL_54;
          }

          if (*(a1 + 136 + a2[3]) == 10)
          {
            a2 += 4;
          }

          else
          {
            a2 += 2;
          }
        }

        else
        {
          if (v9 != 10)
          {
            goto LABEL_32;
          }

          a2 += 2;
        }

        v7 = 7;
        goto LABEL_54;
      }

      if (*(a1 + 136 + a2[1]) > 4u)
      {
        if (v9 == 5)
        {
          if (v6 - a2 < 2)
          {
            return 4294967294;
          }
        }

        else if (v9 == 6)
        {
          if (v6 - a2 < 3)
          {
            return 4294967294;
          }

          v8 = a2 + 3;
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (v9 >= 2)
      {
        if (v9 == 4)
        {
          v8 = a2 + 2;
          if (v6 - (a2 + 2) < 2)
          {
            return 0xFFFFFFFFLL;
          }

          if (!*v8 && a2[3] == 93)
          {
            if (v6 - (a2 + 4) < 2)
            {
              return 0xFFFFFFFFLL;
            }

            if (!a2[4] && a2[5] == 62)
            {
              a2 += 6;
              v7 = 40;
              goto LABEL_54;
            }
          }

LABEL_33:
          v10 = v6 - v8;
          if (v6 - v8 >= 2)
          {
            while (1)
            {
              v11 = *v8;
              if (v11 > 0xDB)
              {
                break;
              }

              if (v11 - 216 < 4)
              {
                goto LABEL_36;
              }

              v12 = 2;
              if (!*v8)
              {
                v13 = *(a1 + 136 + v8[1]);
                if (v13 <= 0xA)
                {
                  if (v13 == 6)
                  {
                    if (v10 == 2)
                    {
                      goto LABEL_52;
                    }

                    v12 = 3;
                    goto LABEL_51;
                  }

                  if (v13 != 7)
                  {
                    v12 = 2;
                    if (((1 << v13) & 0x713) != 0)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_51;
                  }

LABEL_36:
                  if (v10 < 4)
                  {
                    goto LABEL_52;
                  }

                  v12 = 4;
                  goto LABEL_51;
                }

                goto LABEL_40;
              }

LABEL_51:
              v8 += v12;
              v10 = v6 - v8;
              if (v6 - v8 <= 1)
              {
                goto LABEL_52;
              }
            }

            if (v11 != 255)
            {
              v12 = 2;
              if (v11 - 220 < 4)
              {
                goto LABEL_52;
              }

              goto LABEL_51;
            }

            if (v8[1] > 0xFDu)
            {
              goto LABEL_52;
            }

LABEL_40:
            v12 = 2;
            goto LABEL_51;
          }

LABEL_52:
          v7 = 6;
          goto LABEL_53;
        }

LABEL_32:
        v8 = a2 + 2;
        goto LABEL_33;
      }
    }

LABEL_54:
    *a4 = a2;
    return v7;
  }

  return 0xFFFFFFFFLL;
}

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
    v4 = qword_298778150[(*(a1 + 136 + i[1]) - 5)];
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