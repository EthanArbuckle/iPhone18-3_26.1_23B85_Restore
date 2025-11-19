uint64_t arb::ascan(unsigned __int8 **this, const char **a2, unsigned __int8 *a3, const char *a4)
{
  v4 = *this;
  v5 = a2 + *this;
  while (1)
  {
    while (v4 < v5)
    {
      v6 = *v4;
      if ((ctype[2 * v6] & 0x40) == 0)
      {
        break;
      }

      v7 = ctype[2 * v6 + 1];
      v8 = *a3;
      v15 = &ctype[2 * *a3];
      v10 = v15[1];
      if ((*v15 & 0x40) != 0)
      {
        goto LABEL_21;
      }

LABEL_6:
      if (!v8)
      {
        if (a4)
        {
          if (*v4 == 91)
          {
            v27 = v4 + 1;
            v26 = v4[1];
            if (v4[1])
            {
              if ((v26 - 33) >= 0xFFFFFFE0)
              {
                do
                {
LABEL_50:
                  v28 = *++v27;
                  v26 = v28;
                }

                while ((v28 - 33) > 0xFFFFFFDF);
              }

LABEL_51:
              if (v26 != 35)
              {
                v13 = v4;
                if ((v26 - 58) >= 0xFFFFFFF6)
                {
                  v7 = 0;
                  v13 = v27;
                  do
                  {
                    v10 = 0;
                    v7 = v26 + 10 * v7 - 48;
                    v33 = *++v13;
                    v26 = v33;
                  }

                  while ((v33 - 58) > 0xFFFFFFF5);
                }

                goto LABEL_59;
              }

              v29 = v27;
              while (1)
              {
                v30 = *++v29;
                v26 = v30;
                if (!v30)
                {
                  break;
                }

                v31 = *v27;
                v27 = v29;
                if (v31 == 10)
                {
                  v27 = v29;
                  if ((v26 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_51;
                }
              }
            }
          }
        }

LABEL_57:
        *this = v4;
        return (v7 - v10);
      }

      if (v7)
      {
        goto LABEL_57;
      }

      LODWORD(v11) = *v4;
      if (*v4)
      {
        if ((v11 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_10:
            v12 = *++v4;
            LODWORD(v11) = v12;
          }

          while ((v12 - 33) > 0xFFFFFFDF);
        }

LABEL_11:
        if (v11 == 35)
        {
          v13 = v4 + 1;
          while (1)
          {
            LODWORD(v11) = *v13;
            if (!*v13)
            {
              break;
            }

            v14 = *(v13++ - 1);
            if (v14 == 10)
            {
              v4 = v13 - 1;
              if ((v11 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_10;
              }

              goto LABEL_11;
            }
          }

          v11 = 0;
          if (v13 >= v5)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v11 = v11;
          v13 = v4;
          if (v4 >= v5)
          {
LABEL_24:
            v7 = 0;
            if (v10)
            {
              goto LABEL_59;
            }

            goto LABEL_25;
          }
        }
      }

      else
      {
        v11 = 0;
        v13 = v4;
        if (v4 >= v5)
        {
          goto LABEL_24;
        }
      }

      v7 = ctype[2 * v11 + 1];
      if (v7 != v10)
      {
        goto LABEL_59;
      }

LABEL_25:
      if (v8 == 91)
      {
        v17 = *++a3;
        v16 = v17;
        if ((v17 - 58) < 0xFFFFFFF6)
        {
          goto LABEL_41;
        }

        v10 = 0;
        v18 = a3;
        do
        {
          v10 = v16 + 10 * v10 - 48;
          v19 = *++v18;
          v16 = v19;
        }

        while ((v19 - 58) > 0xFFFFFFF5);
        v4 = v13 + 1;
        v20 = v13[1];
        if (!v13[1])
        {
          goto LABEL_41;
        }

        if ((v20 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_31:
            v21 = *++v4;
            v20 = v21;
          }

          while ((v21 - 33) > 0xFFFFFFDF);
        }

LABEL_32:
        if (v20 == 35)
        {
          v22 = v4;
          while (1)
          {
            v23 = *++v22;
            v20 = v23;
            if (!v23)
            {
              break;
            }

            v24 = *v4;
            v4 = v22;
            if (v24 == 10)
            {
              v4 = v22;
              if ((v20 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_31;
              }

              goto LABEL_32;
            }
          }

LABEL_41:
          v4 = v13 + 1;
        }

        else
        {
          if ((v20 - 58) < 0xFFFFFFF6)
          {
            goto LABEL_41;
          }

          v7 = 0;
          do
          {
            v7 = v20 + 10 * v7 - 48;
            v25 = *++v4;
            v20 = v25;
          }

          while ((v25 - 58) > 0xFFFFFFF5);
          a3 = v18;
          if (v7 != v10)
          {
            goto LABEL_59;
          }
        }
      }

      else
      {
        v4 = v13 + 1;
        ++a3;
      }
    }

    v7 = 0;
    v8 = *a3;
    v9 = &ctype[2 * *a3];
    v10 = v9[1];
    if ((*v9 & 0x40) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    if (v7 != v10)
    {
      break;
    }

    ++a3;
    ++v4;
  }

  v13 = v4;
LABEL_59:
  *this = v13;
  return (v7 - v10);
}

char *map_insert(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 + 1 <= v5)
  {
    v7 = *a1;
  }

  else
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF0) + 16;
    v7 = *a1;
    if (v5 != v6)
    {
      a1[2] = v6;
      v7 = malloc_type_realloc(v7, 88 * v6, 0x10500400A17BEF8uLL);
      *a1 = v7;
      v4 = a1[1];
      v8 = a1[2];
      if (v4 > v8)
      {
        a1[1] = v8;
        v4 = v8;
      }
    }
  }

  if (v4 > a2)
  {
    memmove(&v7[88 * a2 + 88], &v7[88 * a2], 88 * (v4 - a2));
    v7 = *a1;
    v4 = a1[1];
  }

  a1[1] = (v4 + 1);
  return &v7[88 * a2];
}

uint64_t itoa(char *a1, signed int a2)
{
  if (a2 < 0)
  {
    *a1 = 45;
    a2 = -a2;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = vdupq_n_s32(a2);
  v4 = vandq_s8(vuzp1q_s16(vcgtq_u32(v3, xmmword_260391160), vcgtq_u32(v3, xmmword_260391150)), xmmword_260391170);
  v4.i32[0] = vaddvq_s16(v4);
  v5 = vcnt_s8(*v4.i8);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  if (a2 > 9)
  {
    v6 = v5.i32[0] + 1;
  }

  if (v6 > 4)
  {
    if (v6 <= 6)
    {
      if (v6 == 5)
      {
LABEL_22:
        v12 = a2 / 100000;
        a2 %= 100000;
        a1[v2++] = v12 + 48;
        goto LABEL_23;
      }

LABEL_21:
      v11 = a2 / 1000000;
      a2 %= 1000000;
      a1[v2++] = v11 + 48;
      goto LABEL_22;
    }

    switch(v6)
    {
      case 7:
LABEL_13:
        v9 = a2 / 10000000;
        a2 %= 10000000;
        a1[v2++] = v9 + 48;
        goto LABEL_21;
      case 8:
LABEL_12:
        v8 = a2 / 100000000;
        a2 %= 100000000;
        a1[v2++] = v8 + 48;
        goto LABEL_13;
      case 9:
        v7 = a2 / 0x3B9ACA00u;
        a2 %= 0x3B9ACA00u;
        a1[v2++] = v7 | 0x30;
        goto LABEL_12;
    }

LABEL_17:
    a1[v2] = a2 + 48;
    return v2 + 1;
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
LABEL_24:
      v14 = a2 / 1000;
      a2 %= 1000;
      a1[v2++] = v14 + 48;
      goto LABEL_25;
    }

LABEL_23:
    v13 = a2 / 10000;
    a2 %= 10000;
    a1[v2++] = v13 + 48;
    goto LABEL_24;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
LABEL_25:
      v15 = a2 / 100;
      a2 %= 100;
      a1[v2++] = v15 + 48;
      goto LABEL_26;
    }

    goto LABEL_17;
  }

LABEL_26:
  a1[v2] = a2 / 10 + 48;
  v16 = v2 + 1;
  a1[v16] = a2 % 10 + 48;
  return v16 + 1;
}

char *arb::obj_add(uint64_t a1, char *__s1, const char **a3, uint64_t a4, int a5)
{
  *v55 = 0;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *a1 + 88 * v10;
  v53 = *a1;
  if (!v10)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v12 = v10 >> 1;
    v56 = __s1;
    v13 = &v9[88 * (v10 >> 1)];
    v14 = arb::ascan(&v56, a3, v13, 1);
    if (!v14)
    {
      break;
    }

    if (v14 > 0)
    {
      v10 -= v12 + 1;
    }

    else
    {
      v11 = &v9[88 * (v10 >> 1)];
      v10 >>= 1;
    }

    if (v14 > 0)
    {
      v15 = v12 + 1;
    }

    else
    {
      v15 = 0;
    }

    v9 += 88 * v15;
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  if (!v9)
  {
LABEL_26:
    v13 = 0;
    if (a3 < 0xC || !a4)
    {
      return v13;
    }

    v13 = 0;
    v24 = *__s1;
    if (v24 > 0x71)
    {
      if (v24 == 114)
      {
        if (!strncmp(__s1, "result", 6uLL))
        {
          v34 = arb::achr((__s1 + 6), 0x2E);
          if (v34)
          {
            v35 = v34;
            if (!strncmp(v34, "color", 5uLL))
            {
              arb::aidx((v35 + 5), v55, 0, v36);
              v13 = map_insert(a1, 0x2E8BA2E8BA2E8BA3 * ((v11 - v53) >> 3));
              v13[arb::stoa(v13, __s1, a3)] = 0;
              v43 = *v55;
              *(v13 + 5) = &outputKind;
              *(v13 + 6) = 2;
              *(v13 + 14) = v43;
              *(v13 + 9) = 0;
              *(v13 + 10) = 0;
              *(v13 + 8) = 0;
              if (v43 >= *(a4 + 42))
              {
                *(a4 + 42) = v43 + 1;
              }

              return v13;
            }
          }

          v28 = __s1 + 6;
LABEL_47:
          v37 = strncmp(v28, "position", 8uLL);
          v38 = *(a4 + 4);
          v13 = 0;
          if (!v37)
          {
LABEL_48:
            v39 = v38 & 0x3FFFFFFF;
LABEL_52:
            *(a4 + 4) = v39;
            return v13;
          }

LABEL_51:
          v39 = v38 | 0x8000000;
          goto LABEL_52;
        }
      }

      else if (v24 != 115)
      {
        if (v24 != 118)
        {
          return v13;
        }

        if (!strncmp(__s1, "vertex", 6uLL))
        {
          v25 = arb::achr((__s1 + 6), 0x2E);
          if (v25)
          {
            v26 = v25;
            if (strncmp(v25, "texcoord", 8uLL))
            {
              v28 = v26;
              goto LABEL_47;
            }

            arb::aidx((v26 + 8), v55, 0, v27);
            v13 = map_insert(a1, 0x2E8BA2E8BA2E8BA3 * ((v11 - v53) >> 3));
            v13[arb::stoa(v13, __s1, a3)] = 0;
            v46 = *v55;
            *(v13 + 5) = &vertexKind;
            *(v13 + 6) = 2;
            *(v13 + 14) = v46;
            *(v13 + 9) = 0;
            *(v13 + 10) = 0;
            *(v13 + 8) = 0;
            if (v46 < *(a4 + 36))
            {
              return v13;
            }

            v47 = v46 + 1;
LABEL_68:
            *(a4 + 36) = v47;
            return v13;
          }
        }
      }

LABEL_50:
      v13 = 0;
      v38 = *(a4 + 4);
      goto LABEL_51;
    }

    if (v24 == 102)
    {
      if (strncmp(__s1, "fragment", 8uLL))
      {
        goto LABEL_50;
      }

      v41 = arb::achr((__s1 + 8), 0x2E);
      if (!v41)
      {
        goto LABEL_50;
      }

      v42 = v41;
      if (!strncmp(v41, "texcoord", 8uLL))
      {
        if (!arb::achr((v42 + 8), 0x5B) || arb::aidx((v42 + 8), v55, 0, v44))
        {
          v13 = map_insert(a1, 0x2E8BA2E8BA2E8BA3 * ((v11 - v53) >> 3));
          v13[arb::stoa(v13, __s1, a3)] = 0;
          v45 = *v55;
          *(v13 + 5) = &fragmentKind;
          *(v13 + 6) = 2;
          *(v13 + 14) = v45;
          *(v13 + 9) = 0;
          *(v13 + 10) = 0;
          *(v13 + 8) = 0;
          if (v45 >= *(a4 + 36))
          {
            *(a4 + 36) = v45 + 1;
          }

          if (a5)
          {
            *(a4 + 12) &= ~(1 << *(v13 + 14));
          }

          return v13;
        }

        if (*(a4 + 36) <= 7u)
        {
          v13 = 0;
          v47 = 8;
          goto LABEL_68;
        }
      }

      else if (strncmp(v42, "position", 8uLL))
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v24 != 112)
      {
        return v13;
      }

      if (strncmp(__s1, "program", 7uLL))
      {
        goto LABEL_50;
      }

      v29 = arb::achr((__s1 + 7), 0x2E);
      if (!v29)
      {
        goto LABEL_50;
      }

      v30 = v29;
      if (!strncmp(v29, "local", 5uLL))
      {
        arb::aidx((v30 + 5), v55, 0, v31);
        v13 = map_insert(a1, 0x2E8BA2E8BA2E8BA3 * ((v11 - v53) >> 3));
        v13[arb::stoa(v13, __s1, a3)] = 0;
        v32 = *v55;
        *(v13 + 5) = &paramKind;
        *(v13 + 6) = 2;
        *(v13 + 14) = v32;
        *(v13 + 9) = 0;
        *(v13 + 10) = 0;
        *(v13 + 8) = 0;
        if (v32 >= *(a4 + 22))
        {
          v33 = v32 + 1;
          *(a4 + 22) = v33;
          *(a4 + 44) = 16 * v33;
        }

        return v13;
      }
    }

    return 0;
  }

  if (!a4)
  {
    return v13;
  }

  v16 = *(v13 + 5);
  if (a5 && v16 == &fragmentKind)
  {
    *(a4 + 12) &= ~(1 << *(v13 + 14));
    v16 = &fragmentKind;
  }

  if (strncmp(v16, "vertex", 6uLL))
  {
    return v13;
  }

  v19 = v16[6];
  v18 = v16 + 6;
  v17 = v19;
  if (!v19)
  {
    return v13;
  }

  if ((v17 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_19:
      v20 = *++v18;
      v17 = v20;
    }

    while ((v20 - 33) > 0xFFFFFFDF);
  }

LABEL_20:
  if (v17 == 35)
  {
    v21 = v18;
    while (1)
    {
      v22 = *++v21;
      v17 = v22;
      if (!v22)
      {
        return v13;
      }

      v23 = *v18;
      v18 = v21;
      if (v23 == 10)
      {
        v18 = v21;
        if ((v17 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }
  }

  if (v17 == 46)
  {
    v50 = v18[1];
    v49 = (v18 + 1);
    v48 = v50;
    if (v50)
    {
      if ((v48 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_72:
          v51 = *++v49;
          v48 = v51;
        }

        while ((v51 - 33) > 0xFFFFFFDF);
      }

LABEL_73:
      if (v48 == 35)
      {
        ++v49;
        while (1)
        {
          v48 = *v49;
          if (!*v49)
          {
            break;
          }

          v52 = *(v49++ - 1);
          if (v52 == 10)
          {
            --v49;
            if ((v48 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_72;
            }

            goto LABEL_73;
          }
        }
      }
    }

    if (!strncmp(v49, "position", 8uLL))
    {
      v38 = *(a4 + 4);
      goto LABEL_48;
    }
  }

  return v13;
}

uint64_t arb::stoa(arb *this, char *a2, const char *a3)
{
  v3 = 0;
  if (a3)
  {
    v4 = 0;
    do
    {
      v5 = a2[v4];
      if ((v5 - 33) <= 0xFFFFFFDF)
      {
        *(this + v3++) = v5;
        v6 = &a2[++v4];
        if (a2[v4] == 35)
        {
LABEL_9:
          v7 = 35;
LABEL_11:
          if (v7 == 35)
          {
            ++v6;
            while (1)
            {
              v7 = *v6;
              if (!*v6)
              {
                break;
              }

              v9 = *(v6++ - 1);
              if (v9 == 10)
              {
                --v6;
                if ((v7 - 33) >= 0xFFFFFFE0)
                {
                  do
                  {
                    v8 = *++v6;
                    v7 = v8;
                  }

                  while ((v8 - 33) > 0xFFFFFFDF);
                }

                goto LABEL_11;
              }
            }
          }

          v4 = v6 - a2;
        }
      }

      else
      {
        v6 = &a2[++v4];
        if (a2[v4] == 35)
        {
          goto LABEL_9;
        }
      }
    }

    while (v4 < a3);
  }

  return v3;
}

unsigned __int8 *arb::asymbol(arb *this, char *a2, const char **a3, unint64_t *a4)
{
  v6 = this;
  v7 = *this;
  if (v7 != 45)
  {
    goto LABEL_214;
  }

  v6 = (this + 1);
  v7 = *(this + 1);
  if (!*(this + 1))
  {
    goto LABEL_21;
  }

  if ((v7 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_4:
      v8 = *(v6 + 1);
      v6 = (v6 + 1);
      v7 = v8;
    }

    while ((v8 - 33) > 0xFFFFFFDF);
  }

LABEL_5:
  if (v7 == 35)
  {
    v6 = (v6 + 1);
    while (1)
    {
      v7 = *v6;
      if (!*v6)
      {
        break;
      }

      v9 = *(v6 - 1);
      v6 = (v6 + 1);
      if (v9 == 10)
      {
        v6 = (v6 - 1);
        if ((v7 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_4;
        }

        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_214:
    if (v7 == 124)
    {
      v11 = *(v6 + 1);
      v6 = (v6 + 1);
      v10 = v11;
      if (v11)
      {
        if ((v10 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_14:
            v12 = *(v6 + 1);
            v6 = (v6 + 1);
            v10 = v12;
          }

          while ((v12 - 33) > 0xFFFFFFDF);
        }

LABEL_15:
        if (v10 == 35)
        {
          v6 = (v6 + 1);
          while (1)
          {
            v10 = *v6;
            if (!*v6)
            {
              break;
            }

            v13 = *(v6 - 1);
            v6 = (v6 + 1);
            if (v13 == 10)
            {
              v6 = (v6 - 1);
              if ((v10 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_14;
              }

              goto LABEL_15;
            }
          }
        }
      }
    }
  }

LABEL_21:
  v14 = strncmp(v6, "state", 5uLL);
  *a2 = v6;
  *a3 = 0;
  v16 = *v6;
  if ((v16 - 48) < 0xA || (ctype[2 * *v6] & 0x40) == 0)
  {
    if (v16 == 123)
    {
      v18 = v6;
      do
      {
        if (v16 == 35)
        {
          while (v16 == 35)
          {
            v18 = (v18 + 1);
            do
            {
              v16 = *v18;
              if (!*v18)
              {
                goto LABEL_43;
              }

              v20 = *(v18 - 1);
              v18 = (v18 + 1);
            }

            while (v20 != 10);
            v18 = (v18 - 1);
            if ((v16 - 33) >= 0xFFFFFFE0)
            {
              do
              {
                v19 = *(v18 + 1);
                v18 = (v18 + 1);
                v16 = v19;
              }

              while ((v19 - 33) > 0xFFFFFFDF);
            }
          }
        }

        else
        {
          v21 = *(v18 + 1);
          v18 = (v18 + 1);
          v16 = v21;
        }
      }

      while (v16 != 125 && v16 != 0);
LABEL_43:
      v25 = *(v18 + 1);
      v23 = v18 + 1;
      v24 = v25;
      if (v25)
      {
        if ((v24 - 33) < 0xFFFFFFE0)
        {
          goto LABEL_46;
        }

        do
        {
LABEL_45:
          v26 = *++v23;
          v24 = v26;
        }

        while ((v26 - 33) > 0xFFFFFFDF);
LABEL_46:
        while (v24 == 35)
        {
          ++v23;
          do
          {
            v24 = *v23;
            if (!*v23)
            {
              goto LABEL_188;
            }

            v27 = *(v23++ - 1);
          }

          while (v27 != 10);
          --v23;
          if ((v24 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_45;
          }
        }
      }

LABEL_188:
      v79 = (v23 - v6);
    }

    else
    {
      if ((ctype[2 * *v6] & 0x80) == 0)
      {
        return 0;
      }

      if (*(v6 + 1) == 68)
      {
        result = v6 + 2;
        *a3 = 2;
        return result;
      }

      v83 = 0;
      do
      {
        v84 = ctype[2 * (v83++)[v6 + 1]];
      }

      while (v84 < 0);
      *a3 = v83;
      v23 = &v83[v6];
      if ((ctype[2 * v83[v6]] & 0x20) == 0)
      {
LABEL_190:
        v80 = &v23[(ctype[2 * *v23] >> 5) & 1];
        v81 = &v80[(ctype[2 * *v80] >> 5) & 1];
        v82 = &v81[(ctype[2 * *v81] >> 5) & 1];
        return &v82[(ctype[2 * *v82] >> 5) & 1];
      }

      v79 = v83 - 1;
    }

    *a3 = v79;
    goto LABEL_190;
  }

  v28 = v14;
  v29 = v6;
  while (1)
  {
    do
    {
      v31 = *++v29;
      v30 = v31;
    }

    while ((ctype[2 * v31] & 0x40) != 0);
    if (!v30)
    {
      result = v29;
      *a3 = (v29 - v6);
      v36 = *v29;
      if (v36 == 46)
      {
        goto LABEL_93;
      }

      goto LABEL_200;
    }

    v32 = v29;
    if ((v30 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_55:
        v33 = *++v32;
        v30 = v33;
      }

      while ((v33 - 33) > 0xFFFFFFDF);
    }

LABEL_56:
    if (v30 == 35)
    {
      result = v32 + 1;
      while (1)
      {
        v30 = *result;
        if (!*result)
        {
          goto LABEL_91;
        }

        v35 = *(result++ - 1);
        if (v35 == 10)
        {
          v32 = result - 1;
          if ((v30 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_55;
          }

          goto LABEL_56;
        }
      }
    }

    if (v30 != 91)
    {
      break;
    }

    result = arb::aidx(v32, 0, 0, v15);
    v37 = result;
    if (result)
    {
      goto LABEL_92;
    }

    v38 = 91;
    while (1)
    {
      if (v38 != 35)
      {
        v41 = *++v32;
        v38 = v41;
        goto LABEL_77;
      }

LABEL_70:
      if (v38 == 35)
      {
        break;
      }

LABEL_77:
      if (v38 == 93 || v38 == 0)
      {
        goto LABEL_82;
      }
    }

    ++v32;
    while (1)
    {
      v38 = *v32;
      if (!*v32)
      {
        break;
      }

      v40 = *(v32++ - 1);
      if (v40 == 10)
      {
        --v32;
        if ((v38 - 33) >= 0xFFFFFFE0)
        {
          do
          {
            v39 = *++v32;
            v38 = v39;
          }

          while ((v39 - 33) > 0xFFFFFFDF);
        }

        goto LABEL_70;
      }
    }

LABEL_82:
    v43 = v32[1];
    result = v32 + 1;
    if (v32[1])
    {
      if ((v43 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_84:
          v44 = *++result;
          v43 = v44;
        }

        while ((v44 - 33) > 0xFFFFFFDF);
      }

LABEL_85:
      if (v43 == 35)
      {
        ++result;
        while (1)
        {
          v43 = *result;
          if (!*result)
          {
            break;
          }

          v45 = *(result++ - 1);
          if (v45 == 10)
          {
            --result;
            if ((v43 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_84;
            }

            goto LABEL_85;
          }
        }
      }
    }

LABEL_91:
    v37 = v29;
LABEL_92:
    *a3 = (v37 - v6);
    v36 = *result;
    if (v36 != 46)
    {
      goto LABEL_200;
    }

LABEL_93:
    v46 = result[1];
    v29 = result + 1;
    if (!result[1])
    {
      goto LABEL_118;
    }

    if ((v46 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_95:
        v47 = *++v29;
        v46 = v47;
      }

      while ((v47 - 33) > 0xFFFFFFDF);
    }

LABEL_96:
    if (v46 == 35)
    {
      ++v29;
      while (1)
      {
        v46 = *v29;
        if (!*v29)
        {
          goto LABEL_118;
        }

        v48 = *(v29++ - 1);
        if (v48 == 10)
        {
          --v29;
          if ((v46 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_95;
          }

          goto LABEL_96;
        }
      }
    }

    if (v46 != 114)
    {
      goto LABEL_118;
    }

    if (v29[1] != 111 || v29[2] != 119 || (ctype[2 * v29[3]] & 0x40) != 0)
    {
      v46 = 114;
      goto LABEL_118;
    }

    v49 = arb::aidx((v29 + 3), 0, 0, v15);
    v50 = *v49;
    if (!*v49)
    {
LABEL_197:
      v29 = v49;
      goto LABEL_199;
    }

    v51 = v49;
    if ((v50 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_108:
        v52 = *++v51;
        v50 = v52;
      }

      while ((v52 - 33) > 0xFFFFFFDF);
    }

LABEL_109:
    if (v50 == 35)
    {
      v53 = v51;
      while (1)
      {
        v54 = *++v53;
        v50 = v54;
        if (!v54)
        {
          goto LABEL_197;
        }

        v55 = *v51;
        v51 = v53;
        if (v55 == 10)
        {
          v51 = v53;
          if ((v50 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_108;
          }

          goto LABEL_109;
        }
      }
    }

    if (v50 != 46)
    {
      goto LABEL_197;
    }

    v76 = v51[1];
    v29 = v51 + 1;
    v46 = v76;
    if (v76)
    {
      if ((v46 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_179:
          v77 = *++v29;
          v46 = v77;
        }

        while ((v77 - 33) > 0xFFFFFFDF);
      }

LABEL_180:
      if (v46 == 35)
      {
        ++v29;
        while (1)
        {
          v46 = *v29;
          if (!*v29)
          {
            break;
          }

          v78 = *(v29++ - 1);
          if (v78 == 10)
          {
            --v29;
            if ((v46 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_179;
            }

            goto LABEL_180;
          }
        }
      }
    }

LABEL_118:
    if (v28)
    {
      goto LABEL_125;
    }

    if (v46 != 101 || v29[1] != 121 || v29[2] != 101)
    {
      if (!strncmp(v29, "object", 6uLL))
      {
        v56 = v29 + 6;
        v57 = v29[6];
        if (v29[6])
        {
          goto LABEL_133;
        }

        goto LABEL_141;
      }

      goto LABEL_125;
    }

    v56 = v29 + 3;
    v57 = v29[3];
    if (!v29[3])
    {
      goto LABEL_141;
    }

LABEL_133:
    v58 = v56;
    if ((v57 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_134:
        v59 = *++v58;
        v57 = v59;
      }

      while ((v59 - 33) > 0xFFFFFFDF);
    }

LABEL_135:
    if (v57 == 35)
    {
      v60 = v58;
      while (1)
      {
        v61 = *++v60;
        v57 = v61;
        if (!v61)
        {
          break;
        }

        v62 = *v58;
        v58 = v60;
        if (v62 == 10)
        {
          v58 = v60;
          if ((v57 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_134;
          }

          goto LABEL_135;
        }
      }
    }

LABEL_141:
    v65 = v56[1];
    v63 = v56 + 1;
    v64 = v65;
    if (v65)
    {
      if ((v64 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_143:
          v66 = *++v63;
          v64 = v66;
        }

        while ((v66 - 33) > 0xFFFFFFDF);
      }

LABEL_144:
      if (v64 == 35)
      {
        ++v63;
        while (1)
        {
          v64 = *v63;
          if (!*v63)
          {
            break;
          }

          v67 = *(v63++ - 1);
          if (v67 == 10)
          {
            --v63;
            if ((v64 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_143;
            }

            goto LABEL_144;
          }
        }
      }
    }

    v29 = v63 + 1;
    *a3 = (v63 + 1 - v6);
    v68 = v63[1];
    if (v63[1])
    {
      v69 = v63 + 1;
      if ((v68 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_152:
          v70 = *++v69;
          v68 = v70;
        }

        while ((v70 - 33) > 0xFFFFFFDF);
      }

LABEL_153:
      if (v68 == 35)
      {
        v71 = v69;
        while (1)
        {
          v72 = *++v71;
          v68 = v72;
          if (!v72)
          {
            goto LABEL_199;
          }

          v73 = *v69;
          v69 = v71;
          if (v73 == 10)
          {
            v69 = v71;
            if ((v68 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_152;
            }

            goto LABEL_153;
          }
        }
      }

      if (v68 != 46)
      {
        goto LABEL_199;
      }

      v46 = v69[1];
      v29 = v69 + 1;
      if (v69[1])
      {
        if ((v46 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_169:
            v74 = *++v29;
            v46 = v74;
          }

          while ((v74 - 33) > 0xFFFFFFDF);
        }

LABEL_170:
        if (v46 == 35)
        {
          ++v29;
          while (1)
          {
            v46 = *v29;
            if (!*v29)
            {
              break;
            }

            v75 = *(v29++ - 1);
            if (v75 == 10)
            {
              --v29;
              if ((v46 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_169;
              }

              goto LABEL_170;
            }
          }
        }
      }

LABEL_125:
      if ((ctype[2 * v46] & 0x20) != 0)
      {
        if ((ctype[2 * v29[1]] & 0x20) != 0)
        {
          if ((ctype[2 * v29[2]] & 0x20) != 0)
          {
            if ((ctype[2 * v29[3]] & 0x20) != 0)
            {
              if ((ctype[2 * v29[4]] & 0x40) == 0)
              {
                v29 += 4;
                goto LABEL_199;
              }
            }

            else if ((ctype[2 * v29[3]] & 0x40) == 0)
            {
              v29 += 3;
              goto LABEL_199;
            }
          }

          else if ((ctype[2 * v29[2]] & 0x40) == 0)
          {
            v29 += 2;
            goto LABEL_199;
          }
        }

        else if ((ctype[2 * v29[1]] & 0x40) == 0)
        {
          ++v29;
          goto LABEL_199;
        }
      }

      if ((v46 - 48) >= 0xA && (ctype[2 * v46] & 0x40) != 0)
      {
        continue;
      }
    }

LABEL_199:
    v36 = *v29;
    result = v29;
    goto LABEL_200;
  }

  result = v32;
  *a3 = (v29 - v6);
  v36 = *v32;
  if (v36 == 46)
  {
    goto LABEL_93;
  }

LABEL_200:
  if (v36)
  {
    v85 = result;
    if ((v36 - 33) >= 0xE0u)
    {
      do
      {
LABEL_202:
        v86 = *++v85;
        LOBYTE(v36) = v86;
      }

      while ((v86 - 33) > 0xDFu);
    }

LABEL_203:
    if (v36 == 35)
    {
      v87 = v85;
      while (1)
      {
        v88 = *++v87;
        LOBYTE(v36) = v88;
        if (!v88)
        {
          break;
        }

        v89 = *v85;
        v85 = v87;
        if (v89 == 10)
        {
          v85 = v87;
          if ((v36 - 33) >= 0xE0u)
          {
            goto LABEL_202;
          }

          goto LABEL_203;
        }
      }
    }

    else if (v36 == 124)
    {
      return v85 + 1;
    }
  }

  return result;
}

const char *arb::isidentity(arb *this, arb *a2, const char *a3, const char *a4, const char *a5)
{
  if (this != a2)
  {
    return 0;
  }

  v5 = a4;
  if (&a3[a2] != a4)
  {
    v7 = a5;
    if (strncmp(a4 - 4, "xyzw", 4uLL))
    {
      if (strncmp(v5 - 4, "rgba", 4uLL))
      {
        v8 = v7;
        v9 = &v5[-v7];
        if (strncmp(v9, "xyzw", v8))
        {
          if (strncmp(v9, "rgba", v8))
          {
            return 0;
          }
        }
      }
    }
  }

  return v5;
}

unsigned __int8 *arb::obj_search(uint64_t a1, unint64_t a2, unsigned __int8 *a3, const char **a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  while (1)
  {
    v8 = v6 >> 1;
    v13 = a3;
    v9 = (a1 + 88 * (v6 >> 1));
    v10 = arb::ascan(&v13, a4, v9, 1);
    if (!v10)
    {
      break;
    }

    if (v10 <= 0)
    {
      v6 >>= 1;
    }

    else
    {
      v6 -= v8 + 1;
    }

    if (v10 > 0)
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = 0;
    }

    a1 += 88 * v11;
    if (!v6)
    {
      return 0;
    }
  }

  return v9;
}

BOOL arb::isepsilon(arb *this, const char *a2, const char *a3)
{
  v3 = this;
  if (*a2 != 46 || (v6 = *(a2 + 1), v4 = a2 + 1, (v5 = v6) == 0))
  {
LABEL_16:
    v12 = 0;
    v13 = 3;
    goto LABEL_17;
  }

  if ((v5 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_4:
      v7 = *++v4;
      v5 = v7;
    }

    while ((v7 - 33) > 0xFFFFFFDF);
  }

LABEL_5:
  if (v5 == 35)
  {
    v8 = v4;
    while (1)
    {
      v9 = *++v8;
      v5 = v9;
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = *v4;
      v4 = v8;
      if (v10 == 10)
      {
        v4 = v8;
        if ((v5 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_4;
        }

        goto LABEL_5;
      }
    }
  }

  v11 = v5 - 98;
  if (v11 > 0x18)
  {
    goto LABEL_16;
  }

  if (((1 << v11) & 0x410000) != 0)
  {
    v13 = 0;
    v12 = 1;
    goto LABEL_17;
  }

  if (((1 << v11) & 0x800020) != 0)
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_17;
  }

  if (((1 << v11) & 0x1000001) == 0)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v13 = 2;
  if (*this != 123)
  {
    return !strncmp(v3, "9.999999975e-07", 0xFuLL) || strncmp(v3, "1e-6", 4uLL) == 0;
  }

LABEL_17:
  v3 = this + 1;
  v14 = *(this + 1);
  if (*(this + 1))
  {
    if ((v14 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_20:
        v15 = *++v3;
        v14 = v15;
      }

      while ((v15 - 33) > 0xFFFFFFDF);
    }

LABEL_21:
    if (v14 == 35)
    {
      ++v3;
      while (1)
      {
        v14 = *v3;
        if (!*v3)
        {
          break;
        }

        v16 = *(v3++ - 1);
        if (v16 == 10)
        {
          --v3;
          if ((v14 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }
      }
    }
  }

  if ((v12 & 1) == 0)
  {
    while (1)
    {
      v18 = v3 - 1;
      do
      {
        v20 = *++v18;
        v19 = v20;
      }

      while (ctype[2 * v20] < 0);
      if (!v19)
      {
        return 0;
      }

      if ((v19 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_35:
          v21 = *++v18;
          v19 = v21;
        }

        while ((v21 - 33) > 0xFFFFFFDF);
      }

LABEL_36:
      if (v19 == 35)
      {
        v22 = v18;
        while (1)
        {
          v23 = *++v22;
          v19 = v23;
          if (!v23)
          {
            return 0;
          }

          v24 = *v18;
          v18 = v22;
          if (v24 == 10)
          {
            v18 = v22;
            if ((v19 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }
        }
      }

      if (v19 != 44)
      {
        return 0;
      }

      v26 = *(v18 + 1);
      v3 = v18 + 1;
      v25 = v26;
      if (v26)
      {
        if ((v25 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_45:
            v27 = *++v3;
            v25 = v27;
          }

          while ((v27 - 33) > 0xFFFFFFDF);
        }

LABEL_46:
        if (v25 == 35)
        {
          ++v3;
          while (1)
          {
            v25 = *v3;
            if (!*v3)
            {
              break;
            }

            v28 = *(v3++ - 1);
            if (v28 == 10)
            {
              --v3;
              if ((v25 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_45;
              }

              goto LABEL_46;
            }
          }
        }
      }

      if (!--v13)
      {
        return !strncmp(v3, "9.999999975e-07", 0xFuLL) || strncmp(v3, "1e-6", 4uLL) == 0;
      }
    }
  }

  else
  {
    return !strncmp(v3, "9.999999975e-07", 0xFuLL) || strncmp(v3, "1e-6", 4uLL) == 0;
  }
}

_BYTE *arb::atoi(_BYTE *this, char *a2, int *a3)
{
  v3 = *this;
  if (v3 == 45)
  {
    v4 = -1;
LABEL_13:
    v9 = *++this;
    v3 = v9;
    if (!v9)
    {
      return 0;
    }

    goto LABEL_4;
  }

  v4 = 1;
  if (v3 == 43)
  {
    goto LABEL_13;
  }

  if (!*this)
  {
    return 0;
  }

LABEL_4:
  if ((v3 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_5:
      v5 = *++this;
      v3 = v5;
    }

    while ((v5 - 33) > 0xFFFFFFDF);
  }

LABEL_6:
  if (v3 == 35)
  {
    v6 = this;
    while (1)
    {
      v7 = *++v6;
      v3 = v7;
      if (!v7)
      {
        return 0;
      }

      v8 = *this;
      this = v6;
      if (v8 == 10)
      {
        this = v6;
        if ((v3 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      }
    }
  }

  if ((v3 - 58) < 0xFFFFFFF6)
  {
    return 0;
  }

  v10 = 0;
  do
  {
    v10 = v3 + 10 * v10 - 48;
    v11 = *++this;
    v3 = v11;
  }

  while ((v11 - 58) > 0xFFFFFFF5);
  *a2 = v10 * v4;
  v12 = *this;
  if (*this)
  {
    if ((v12 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_21:
        v13 = *++this;
        v12 = v13;
      }

      while ((v13 - 33) > 0xFFFFFFDF);
    }

LABEL_22:
    if (v12 == 35)
    {
      ++this;
      while (1)
      {
        v12 = *this;
        if (!*this)
        {
          break;
        }

        v14 = *(this++ - 1);
        if (v14 == 10)
        {
          --this;
          if ((v12 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }
      }
    }
  }

  return this;
}

unsigned __int8 *arb::obj_write_op(uint64_t *a1, string_t *a2, _BYTE *__src)
{
  v5 = *__src;
  if (__PAIR64__(__src[1], v5) == 0x5700000053)
  {
    v6 = __src[2] == 90;
    if ((ctype[2 * v5] & 0x40) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    if ((ctype[2 * v5] & 0x40) != 0)
    {
LABEL_17:
      v16 = __src - 1;
      do
      {
        v17 = v5;
        LODWORD(v5) = *(v16 + 2);
        if (v17 == 95 && v5 == 83)
        {
          if (v16[3] == 83)
          {
            v7 = (v16 + 1);
            v18 = *v16;
            if ((v18 - 48) >= 2)
            {
              if (v18 == 67 && (*(v16 - 2) != 70 || *(v16 - 1) != 82 || (ctype[2 * *(v16 - 3)] & 0x40) != 0))
              {
                v21 = __src;
                v22 = strncmp(v16 - 4, "TRUNC", 5uLL);
                __src = v21;
                if (v22)
                {
                  v7 = v16;
                }
              }
            }

            else
            {
              v20 = *(v16 - 1);
              v19 = (v16 - 1);
              if (v20 == 67)
              {
                v7 = v19;
              }
            }

            goto LABEL_6;
          }

          LODWORD(v5) = 83;
        }

        ++v16;
      }

      while ((ctype[2 * v5] & 0x40) != 0);
    }
  }

  v7 = 0;
LABEL_6:
  v8 = __src - 1;
  do
  {
    v10 = *++v8;
    v9 = v10;
  }

  while ((ctype[2 * v10] & 0x40) != 0);
  *v127 = 0;
  *v128 = 0;
  v125 = 0;
  v126 = 0;
  if (v9)
  {
    v11 = v8;
    if ((v9 - 33) < 0xFFFFFFE0)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_10:
      v12 = *++v11;
      v9 = v12;
    }

    while ((v12 - 33) > 0xFFFFFFDF);
LABEL_11:
    while (v9 == 35)
    {
      v13 = v11;
      do
      {
        v14 = *++v13;
        v9 = v14;
        if (!v14)
        {
          goto LABEL_39;
        }

        v15 = *v11;
        v11 = v13;
      }

      while (v15 != 10);
      v11 = v13;
      if ((v9 - 33) >= 0xFFFFFFE0)
      {
        goto LABEL_10;
      }
    }

    if ((v9 & 0xFE) == 0x3A)
    {
      v23 = v11 + 1 - __src;
      if (v11 + 1 == __src)
      {
        return 0;
      }

      v25 = a2[1];
      v24 = a2[2];
      v26 = &v25[v23];
      if (v24)
      {
        if (v26 >= *v24)
        {
          v27 = (v26 + 255) & 0xFFFFFFFFFFFFFF00;
          v28 = __src;
          v29 = malloc_type_realloc(*(v24 + 2), v27, 0x100004077774924uLL);
          __src = v28;
          v30 = a2[2];
          *(v30 + 2) = v29;
          *v30 = v27;
          *a2 = v29;
        }
      }

      else
      {
        v115 = __src;
        str_alloc(a2, v26);
        __src = v115;
      }

      v116 = 0;
      v117 = 0;
      v118 = &v25[*a2];
      while (1)
      {
        v119 = __src[v117];
        if ((v119 - 33) > 0xFFFFFFDF)
        {
          v120 = &__src[++v117];
          if (__src[v117] != 35)
          {
            goto LABEL_177;
          }
        }

        else
        {
          v118[v116++] = v119;
          v120 = &__src[++v117];
          if (__src[v117] != 35)
          {
            goto LABEL_177;
          }
        }

        v121 = 35;
        while (v121 == 35)
        {
          ++v120;
          do
          {
            v121 = *v120;
            if (!*v120)
            {
              goto LABEL_176;
            }

            v123 = *(v120++ - 1);
          }

          while (v123 != 10);
          --v120;
          if ((v121 - 33) >= 0xFFFFFFE0)
          {
            do
            {
              v122 = *++v120;
              v121 = v122;
            }

            while ((v122 - 33) > 0xFFFFFFDF);
          }
        }

LABEL_176:
        v117 = v120 - __src;
LABEL_177:
        if (v117 >= v23)
        {
          a2[1] += v116;
          return 0;
        }
      }
    }
  }

LABEL_39:
  if (v7)
  {
    v31 = v7 - __src;
    v33 = a2[1];
    v32 = a2[2];
    v34 = &v33[v7 - __src];
    if (v32)
    {
      if (v34 >= *v32)
      {
        v35 = (v34 + 255) & 0xFFFFFFFFFFFFFF00;
        v36 = __src;
        v37 = malloc_type_realloc(*(v32 + 2), v35, 0x100004077774924uLL);
        __src = v36;
        v38 = a2[2];
        *(v38 + 2) = v37;
        *v38 = v35;
        *a2 = v37;
      }
    }

    else
    {
      v42 = __src;
      str_alloc(a2, v34);
      __src = v42;
    }

    v43 = *a2;
    a2[1] += v31;
    memcpy(&v33[v43], __src, v31);
    v39 = a1;
    v40 = a2;
    __src = v8;
    v41 = 0;
  }

  else
  {
    v39 = a1;
    v40 = a2;
    v41 = 1;
  }

  v45 = arb::obj_write_dest(v39, v40, __src, v128, &v125, v41, 1);
LABEL_47:
  v46 = *v45;
  if (!*v45)
  {
    v89 = v45;
    goto LABEL_124;
  }

  v47 = *v45;
  v48 = v45;
  if ((v46 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_49:
      v49 = *(v48 + 1);
      v48 = (v48 + 1);
      v47 = v49;
    }

    while ((v49 - 33) > 0xFFFFFFDF);
  }

LABEL_50:
  if (v47 != 35)
  {
    if (v47 != 44)
    {
      goto LABEL_122;
    }

    v55 = *(v48 + 1);
    v54 = (v48 + 1);
    v53 = v55;
    if (v55)
    {
      if ((v53 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_59:
          v56 = *(v54 + 1);
          v54 = (v54 + 1);
          v53 = v56;
        }

        while ((v56 - 33) > 0xFFFFFFDF);
      }

LABEL_60:
      if (v53 == 35)
      {
        v54 = (v54 + 1);
        while (1)
        {
          v53 = *v54;
          if (!*v54)
          {
            break;
          }

          v57 = *(v54 - 1);
          v54 = (v54 + 1);
          if (v57 == 10)
          {
            v54 = (v54 - 1);
            if ((v53 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_59;
            }

            goto LABEL_60;
          }
        }
      }
    }

    v59 = a2[1];
    v58 = a2[2];
    v60 = v59 + 1;
    if (v58)
    {
      if (v60 >= *v58)
      {
        v61 = malloc_type_realloc(*(v58 + 2), (v59 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
        v62 = a2[2];
        *(v62 + 2) = v61;
        *v62 = (v59 & 0xFFFFFFFFFFFFFF00) + 256;
        *a2 = v61;
      }
    }

    else
    {
      str_alloc(a2, v60);
    }

    v63 = *a2;
    ++a2[1];
    v63[v59] = 44;
    v64 = arb::asymbol(v54, v127, &v126, v44);
    if (v64)
    {
      v45 = arb::obj_write_symbol(a1, a2, v54, *v127, v126, v64);
      goto LABEL_120;
    }

    v65 = *v54;
    if (v65 != 40)
    {
      v45 = v54;
      goto LABEL_120;
    }

    v66 = v54;
    while (1)
    {
      if (v65 == 35)
      {
LABEL_77:
        if (v65 == 35)
        {
          v66 = (v66 + 1);
          while (1)
          {
            v65 = *v66;
            if (!*v66)
            {
              break;
            }

            v68 = *(v66 - 1);
            v66 = (v66 + 1);
            if (v68 == 10)
            {
              v66 = (v66 - 1);
              if ((v65 - 33) >= 0xFFFFFFE0)
              {
                do
                {
                  v67 = *(v66 + 1);
                  v66 = (v66 + 1);
                  v65 = v67;
                }

                while ((v67 - 33) > 0xFFFFFFDF);
              }

              goto LABEL_77;
            }
          }

LABEL_89:
          v72 = *(v66 + 1);
          v45 = (v66 + 1);
          v71 = v72;
          if (v72)
          {
            if ((v71 - 33) >= 0xFFFFFFE0)
            {
              do
              {
LABEL_91:
                v73 = *(v45 + 1);
                v45 = (v45 + 1);
                v71 = v73;
              }

              while ((v73 - 33) > 0xFFFFFFDF);
            }

LABEL_92:
            if (v71 == 35)
            {
              v45 = (v45 + 1);
              while (1)
              {
                v71 = *v45;
                if (!*v45)
                {
                  break;
                }

                v74 = *(v45 - 1);
                v45 = (v45 + 1);
                if (v74 == 10)
                {
                  v45 = (v45 - 1);
                  if ((v71 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_92;
                }
              }
            }
          }

          v75 = v45 - v54;
          if (v45 == v54)
          {
            goto LABEL_120;
          }

          v77 = a2[1];
          v76 = a2[2];
          v78 = &v77[v75];
          if (v76)
          {
            if (v78 >= *v76)
            {
              v124 = (v78 + 255) & 0xFFFFFFFFFFFFFF00;
              v79 = malloc_type_realloc(*(v76 + 2), v124, 0x100004077774924uLL);
              v80 = a2[2];
              *(v80 + 2) = v79;
              *v80 = v124;
              *a2 = v79;
            }
          }

          else
          {
            str_alloc(a2, v78);
          }

          v81 = 0;
          v82 = 0;
          v83 = &v77[*a2];
          while (2)
          {
            v84 = *(v54 + v82);
            if ((v84 - 33) > 0xFFFFFFDF)
            {
              ++v82;
              v85 = v54 + v82;
              if (*(v54 + v82) == 35)
              {
LABEL_111:
                v86 = 35;
LABEL_113:
                if (v86 == 35)
                {
                  ++v85;
                  while (1)
                  {
                    v86 = *v85;
                    if (!*v85)
                    {
                      break;
                    }

                    v88 = *(v85++ - 1);
                    if (v88 == 10)
                    {
                      --v85;
                      if ((v86 - 33) >= 0xFFFFFFE0)
                      {
                        do
                        {
                          v87 = *++v85;
                          v86 = v87;
                        }

                        while ((v87 - 33) > 0xFFFFFFDF);
                      }

                      goto LABEL_113;
                    }
                  }
                }

                v82 = v85 - v54;
              }
            }

            else
            {
              v83[v81++] = v84;
              ++v82;
              v85 = v54 + v82;
              if (*(v54 + v82) == 35)
              {
                goto LABEL_111;
              }
            }

            if (v82 < v75)
            {
              continue;
            }

            break;
          }

          a2[1] += v81;
LABEL_120:
          if (v6)
          {
            v46 = *v45;
            goto LABEL_122;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v69 = *(v66 + 1);
        v66 = (v66 + 1);
        v65 = v69;
      }

      if (v65 == 41 || v65 == 0)
      {
        goto LABEL_89;
      }
    }
  }

  v50 = v48;
  while (1)
  {
    v51 = *(v50 + 1);
    v50 = (v50 + 1);
    v47 = v51;
    if (!v51)
    {
      break;
    }

    v52 = *v48;
    v48 = v50;
    if (v52 == 10)
    {
      v48 = v50;
      if ((v47 - 33) >= 0xFFFFFFE0)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }
  }

LABEL_122:
  v89 = v45;
  if (!v46 || v46 == 59)
  {
    goto LABEL_124;
  }

  while (2)
  {
    if (v46 != 35)
    {
      v104 = *(v89 + 1);
      v89 = (v89 + 1);
      v46 = v104;
LABEL_147:
      if (v46 == 59 || v46 == 0)
      {
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

LABEL_140:
  if (v46 != 35)
  {
    goto LABEL_147;
  }

  v89 = (v89 + 1);
  while (1)
  {
    v46 = *v89;
    if (!*v89)
    {
      break;
    }

    v103 = *(v89 - 1);
    v89 = (v89 + 1);
    if (v103 == 10)
    {
      v89 = (v89 - 1);
      if ((v46 - 33) >= 0xFFFFFFE0)
      {
        do
        {
          v102 = *(v89 + 1);
          v89 = (v89 + 1);
          v46 = v102;
        }

        while ((v102 - 33) > 0xFFFFFFDF);
      }

      goto LABEL_140;
    }
  }

LABEL_124:
  v92 = *(v89 + 1);
  v90 = (v89 + 1);
  v91 = v92;
  if (v92)
  {
    if ((v91 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_126:
        v93 = *(v90 + 1);
        v90 = (v90 + 1);
        v91 = v93;
      }

      while ((v93 - 33) > 0xFFFFFFDF);
    }

LABEL_127:
    if (v91 == 35)
    {
      v90 = (v90 + 1);
      while (1)
      {
        v91 = *v90;
        if (!*v90)
        {
          break;
        }

        v94 = *(v90 - 1);
        v90 = (v90 + 1);
        if (v94 == 10)
        {
          v90 = (v90 - 1);
          if ((v91 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_126;
          }

          goto LABEL_127;
        }
      }
    }
  }

  v95 = v90 - v45;
  if (v90 == v45)
  {
    goto LABEL_170;
  }

  v97 = a2[1];
  v96 = a2[2];
  v98 = &v97[v95];
  if (v96)
  {
    if (v98 >= *v96)
    {
      v99 = (v98 + 255) & 0xFFFFFFFFFFFFFF00;
      v100 = malloc_type_realloc(*(v96 + 2), v99, 0x100004077774924uLL);
      v101 = a2[2];
      *(v101 + 2) = v100;
      *v101 = v99;
      *a2 = v100;
    }
  }

  else
  {
    str_alloc(a2, v98);
  }

  v106 = 0;
  v107 = 0;
  v108 = &v97[*a2];
  while (2)
  {
    v109 = *(v45 + v107);
    if ((v109 - 33) > 0xFFFFFFDF)
    {
      ++v107;
      v110 = v45 + v107;
      if (*(v45 + v107) == 35)
      {
LABEL_161:
        v111 = 35;
LABEL_163:
        if (v111 == 35)
        {
          ++v110;
          while (1)
          {
            v111 = *v110;
            if (!*v110)
            {
              break;
            }

            v113 = *(v110++ - 1);
            if (v113 == 10)
            {
              --v110;
              if ((v111 - 33) >= 0xFFFFFFE0)
              {
                do
                {
                  v112 = *++v110;
                  v111 = v112;
                }

                while ((v112 - 33) > 0xFFFFFFDF);
              }

              goto LABEL_163;
            }
          }
        }

        v107 = v110 - v45;
      }
    }

    else
    {
      v108[v106++] = v109;
      ++v107;
      v110 = v45 + v107;
      if (*(v45 + v107) == 35)
      {
        goto LABEL_161;
      }
    }

    if (v107 < v95)
    {
      continue;
    }

    break;
  }

  a2[1] += v106;
LABEL_170:
  if (!v7)
  {
    return 0;
  }

  return v7;
}

unsigned __int8 *arb::obj_write_dest(uint64_t a1, string_t *a2, arb *this, char *a4, const char **a5, int a6, int a7)
{
  v10 = a4;
  v13 = this;
  while (1)
  {
    do
    {
      v14 = v13;
      v16 = *v13;
      v13 = (v13 + 1);
      v15 = v16;
    }

    while ((ctype[2 * v16] & 0x40) != 0);
    if (!v15)
    {
      break;
    }

    if ((v15 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_5:
        v17 = *++v14;
        v15 = v17;
      }

      while ((v17 - 33) > 0xFFFFFFDF);
    }

LABEL_6:
    if (v15 == 35)
    {
      ++v14;
      while (1)
      {
        v15 = *v14;
        if (!*v14)
        {
          goto LABEL_24;
        }

        v18 = *(v14++ - 1);
        if (v18 == 10)
        {
          --v14;
          if ((v15 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_5;
          }

          goto LABEL_6;
        }
      }
    }

    if (v15 != 46)
    {
      break;
    }

    v19 = v14[1];
    v13 = (v14 + 1);
    if (!v14[1])
    {
LABEL_23:
      v14 = v13;
      break;
    }

    if ((v19 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_15:
        v20 = *(v13 + 1);
        v13 = (v13 + 1);
        v19 = v20;
      }

      while ((v20 - 33) > 0xFFFFFFDF);
    }

LABEL_16:
    if (v19 == 35)
    {
      v14 = v13 + 1;
      while (1)
      {
        v19 = *v14;
        if (!*v14)
        {
          goto LABEL_24;
        }

        v21 = *(v14++ - 1);
        if (v21 == 10)
        {
          v13 = (v14 - 1);
          if ((v19 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }
    }

    if (!v19)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v22 = a2[1];
  v23 = v14 - this;
  if (v14 == this)
  {
    goto LABEL_45;
  }

  v24 = &v22[v23];
  v25 = a2[2];
  if (v25)
  {
    if (v24 >= *v25)
    {
      v27 = (v24 + 255) & 0xFFFFFFFFFFFFFF00;
      v28 = malloc_type_realloc(*(v25 + 2), v27, 0x100004077774924uLL);
      v29 = a2[2];
      *(v29 + 2) = v28;
      *v29 = v27;
      v10 = a4;
      *a2 = v28;
    }
  }

  else
  {
    str_alloc(a2, v24);
  }

  v30 = 0;
  v31 = 0;
  v32 = &v22[*a2];
  do
  {
    v33 = *(this + v31);
    if ((v33 - 33) <= 0xFFFFFFDF)
    {
      v32[v30++] = v33;
      ++v31;
      v34 = this + v31;
      if (*(this + v31) != 35)
      {
        continue;
      }
    }

    else
    {
      ++v31;
      v34 = this + v31;
      if (*(this + v31) != 35)
      {
        continue;
      }
    }

    v35 = 35;
LABEL_38:
    if (v35 == 35)
    {
      ++v34;
      while (1)
      {
        v35 = *v34;
        if (!*v34)
        {
          break;
        }

        v37 = *(v34++ - 1);
        if (v37 == 10)
        {
          --v34;
          if ((v35 - 33) >= 0xFFFFFFE0)
          {
            do
            {
              v36 = *++v34;
              v35 = v36;
            }

            while ((v36 - 33) > 0xFFFFFFDF);
          }

          goto LABEL_38;
        }
      }
    }

    v31 = v34 - this;
  }

  while (v31 < v23);
  v22 = &a2[1][v30];
  a2[1] = v22;
LABEL_45:
  v38 = (v22 + 1);
  v39 = a2[2];
  if (v39)
  {
    if (v38 >= *v39)
    {
      v40 = malloc_type_realloc(*(v39 + 2), (v22 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v41 = a2[2];
      *(v41 + 2) = v40;
      *v41 = (v22 & 0xFFFFFFFFFFFFFF00) + 256;
      *a2 = v40;
    }
  }

  else
  {
    str_alloc(a2, v38);
  }

  v42 = *a2;
  ++a2[1];
  v22[v42] = 32;
  v43 = arb::asymbol(v14, v10, a5, a4);
  if (!v43)
  {
    v44 = v14;
    goto LABEL_67;
  }

  v44 = v43;
  if (a6)
  {
    goto LABEL_62;
  }

  v87 = v10;
  v88 = a5;
  v86 = a6;
  v45 = *(a1 + 8);
  if (!v45)
  {
LABEL_61:
    a6 = v86;
    v10 = v87;
    a5 = v88;
LABEL_62:
    v52 = *v10;
    v53 = *a5;
    if (a7)
    {
      v54 = a1;
      v55 = a2;
      v56 = v14;
      v57 = v44;
    }

    else
    {
      v57 = &v53[v52];
      v54 = a1;
      v55 = a2;
      v56 = *v10;
    }

    arb::obj_write_symbol(v54, v55, v56, v52, v53, v57);
    goto LABEL_67;
  }

  v46 = *v10;
  v47 = *a5;
  v48 = *a1;
  while (1)
  {
    v49 = v45 >> 1;
    v90 = v46;
    v50 = arb::ascan(&v90, v47, (v48 + 88 * (v45 >> 1)), 1);
    if (!v50)
    {
      break;
    }

    if (v50 <= 0)
    {
      v45 >>= 1;
    }

    else
    {
      v45 -= v49 + 1;
    }

    if (v50 > 0)
    {
      v51 = v49 + 1;
    }

    else
    {
      v51 = 0;
    }

    v48 += 88 * v51;
    if (!v45)
    {
      goto LABEL_61;
    }
  }

  a6 = v86;
  v10 = v87;
  a5 = v88;
  if (!v48 || *(v48 + 88 * (v45 >> 1) + 40) != &outputKind)
  {
    goto LABEL_62;
  }

  v65 = a2[1];
  v64 = a2[2];
  v66 = v65 + 1;
  if (v64)
  {
    if (v66 >= *v64)
    {
      v67 = malloc_type_realloc(*(v64 + 2), (v65 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v68 = a2[2];
      *(v68 + 2) = v67;
      *v68 = (v65 & 0xFFFFFFFFFFFFFF00) + 256;
      *a2 = v67;
    }
  }

  else
  {
    str_alloc(a2, v66);
  }

  v79 = *a2;
  ++a2[1];
  v79[v65] = 114;
  v80 = *(a1 + 60);
  v82 = a2[1];
  v81 = a2[2];
  v83 = (v82 + 20);
  if (v81)
  {
    if (v83 >= *v81)
    {
      v84 = malloc_type_realloc(*(v81 + 2), (v82 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v85 = a2[2];
      *(v85 + 2) = v84;
      *v85 = (v82 + 275) & 0xFFFFFFFFFFFFFF00;
      *a2 = v84;
    }
  }

  else
  {
    str_alloc(a2, v83);
  }

  a2[1] += itoa(&v82[*a2], v80);
  if (a7)
  {
    str_putm(a2, &(*v88)[*v87], v44 - &(*v88)[*v87]);
  }

LABEL_67:
  v58 = *v44;
  if (!*v44)
  {
    return v44;
  }

  v59 = v44;
LABEL_69:
  if ((v58 - 33) >= 0xFFFFFFE0)
  {
    do
    {
      v60 = *++v59;
      v58 = v60;
    }

    while ((v60 - 33) > 0xFFFFFFDF);
  }

  if (v58 == 35)
  {
    v61 = v59;
    while (1)
    {
      v62 = *++v59;
      v58 = v62;
      if (!v62)
      {
        return v44;
      }

      v63 = *v61;
      v61 = v59;
      if (v63 == 10)
      {
        goto LABEL_69;
      }
    }
  }

  if (v58 != 40)
  {
    return v44;
  }

  v69 = v59;
  while (2)
  {
    if (v58 != 35)
    {
      v72 = *++v69;
      v58 = v72;
LABEL_93:
      if (v58 == 41 || v58 == 0)
      {
        goto LABEL_98;
      }

      continue;
    }

    break;
  }

LABEL_86:
  if (v58 != 35)
  {
    goto LABEL_93;
  }

  ++v69;
  while (1)
  {
    v58 = *v69;
    if (!*v69)
    {
      break;
    }

    v71 = *(v69++ - 1);
    if (v71 == 10)
    {
      --v69;
      if ((v58 - 33) >= 0xFFFFFFE0)
      {
        do
        {
          v70 = *++v69;
          v58 = v70;
        }

        while ((v70 - 33) > 0xFFFFFFDF);
      }

      goto LABEL_86;
    }
  }

LABEL_98:
  v75 = *(v69 + 1);
  v44 = (v69 + 1);
  v74 = v75;
  if (v75)
  {
    if ((v74 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_100:
        v76 = *++v44;
        v74 = v76;
      }

      while ((v76 - 33) > 0xFFFFFFDF);
    }

LABEL_101:
    if (v74 == 35)
    {
      ++v44;
      while (1)
      {
        v74 = *v44;
        if (!*v44)
        {
          break;
        }

        v77 = *(v44++ - 1);
        if (v77 == 10)
        {
          --v44;
          if ((v74 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_100;
          }

          goto LABEL_101;
        }
      }
    }
  }

  if (a6)
  {
    str_putm(a2, v59, v44 - v59);
  }

  return v44;
}

char *arb::obj_write_symbol(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, char *a5, char *a6)
{
  v180 = a5;
  v11 = a1[1];
  if (v11)
  {
    v12 = *a1;
    while (1)
    {
      v13 = v11 >> 1;
      *v181 = a4;
      v14 = v12 + 88 * (v11 >> 1);
      v15 = arb::ascan(v181, a5, v14, 1);
      if (!v15)
      {
        break;
      }

      if (v15 <= 0)
      {
        v11 >>= 1;
      }

      else
      {
        v11 -= v13 + 1;
      }

      if (v15 > 0)
      {
        v17 = v13 + 1;
      }

      else
      {
        v17 = 0;
      }

      v12 += 88 * v17;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    *v181 = 0;
    if (v12)
    {
      if (a3 == a4)
      {
        goto LABEL_122;
      }

      v19 = *(a2 + 8);
      v18 = *(a2 + 16);
      v20 = v19 + a4 - a3;
      if (v18)
      {
        if (v20 >= *v18)
        {
          v21 = (v20 + 255) & 0xFFFFFFFFFFFFFF00;
          v22 = malloc_type_realloc(*(v18 + 16), v21, 0x100004077774924uLL);
          v23 = *(a2 + 16);
          v23[2] = v22;
          *v23 = v21;
          *a2 = v22;
        }
      }

      else
      {
        str_alloc(a2, v20);
      }

      v93 = 0;
      v94 = 0;
      v95 = *a2 + v19;
      while (1)
      {
        v96 = v94[a3];
        if ((v96 - 33) <= 0xFFFFFFDF)
        {
          *(v95 + v93++) = v96;
          v97 = &(++v94)[a3];
          if (v94[a3] == 35)
          {
LABEL_113:
            v98 = 35;
            while (v98 == 35)
            {
              ++v97;
              do
              {
                v98 = *v97;
                if (!*v97)
                {
                  goto LABEL_107;
                }

                v100 = *(v97++ - 1);
              }

              while (v100 != 10);
              --v97;
              if ((v98 - 33) >= 0xFFFFFFE0)
              {
                do
                {
                  v99 = *++v97;
                  v98 = v99;
                }

                while ((v99 - 33) > 0xFFFFFFDF);
              }
            }

LABEL_107:
            v94 = (v97 - a3);
          }
        }

        else
        {
          v97 = &(++v94)[a3];
          if (v94[a3] == 35)
          {
            goto LABEL_113;
          }
        }

        if (v94 >= a4 - a3)
        {
          *(a2 + 8) += v93;
LABEL_122:
          v101 = *(v14 + 48);
          if (!v101)
          {
            goto LABEL_143;
          }

          v102 = *(v14 + 40);
          v104 = *(a2 + 8);
          v103 = *(a2 + 16);
          v105 = v104 + v101;
          if (v103)
          {
            if (v105 >= *v103)
            {
              v106 = (v105 + 255) & 0xFFFFFFFFFFFFFF00;
              v107 = malloc_type_realloc(*(v103 + 16), v106, 0x100004077774924uLL);
              v108 = *(a2 + 16);
              v108[2] = v107;
              *v108 = v106;
              *a2 = v107;
            }
          }

          else
          {
            str_alloc(a2, v105);
          }

          v109 = 0;
          v110 = 0;
          v111 = *a2 + v104;
          while (2)
          {
            v112 = v110[v102];
            if ((v112 - 33) <= 0xFFFFFFDF)
            {
              *(v111 + v109++) = v112;
              ++v110;
              v113 = &v110[v102];
              if (v110[v102] == 35)
              {
LABEL_134:
                v114 = 35;
                while (v114 == 35)
                {
                  ++v113;
                  do
                  {
                    v114 = *v113;
                    if (!*v113)
                    {
                      goto LABEL_128;
                    }

                    v116 = *(v113++ - 1);
                  }

                  while (v116 != 10);
                  --v113;
                  if ((v114 - 33) >= 0xFFFFFFE0)
                  {
                    do
                    {
                      v115 = *++v113;
                      v114 = v115;
                    }

                    while ((v115 - 33) > 0xFFFFFFDF);
                  }
                }

LABEL_128:
                v110 = &v113[-v102];
              }
            }

            else
            {
              ++v110;
              v113 = &v110[v102];
              if (v110[v102] == 35)
              {
                goto LABEL_134;
              }
            }

            if (v110 >= v101)
            {
              *(a2 + 8) += v109;
LABEL_143:
              v117 = *(v14 + 56);
              if (v117 != -1)
              {
                if ((*(v14 + 80) & 0x10) == 0)
                {
                  v119 = *(a2 + 8);
                  v118 = *(a2 + 16);
                  v120 = v119 + 20;
                  if (*(*(v14 + 40) + *(v14 + 48) - 1) == 91)
                  {
                    if (v118)
                    {
                      if (v120 >= *v118)
                      {
                        v121 = malloc_type_realloc(*(v118 + 16), (v119 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                        v122 = *(a2 + 16);
                        v122[2] = v121;
                        *v122 = (v119 + 275) & 0xFFFFFFFFFFFFFF00;
                        *a2 = v121;
                      }
                    }

                    else
                    {
                      str_alloc(a2, v120);
                    }

                    v137 = (*a2 + v119);
                    goto LABEL_163;
                  }

                  if (v118)
                  {
                    if (v120 >= *v118)
                    {
                      v128 = malloc_type_realloc(*(v118 + 16), (v119 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                      v129 = *(a2 + 16);
                      v129[2] = v128;
                      *v129 = (v119 + 275) & 0xFFFFFFFFFFFFFF00;
                      *a2 = v128;
                    }
                  }

                  else
                  {
                    str_alloc(a2, v120);
                  }

                  *(a2 + 8) += itoa((*a2 + v119), v117);
                  if ((*(v14 + 80) & 0x20) == 0)
                  {
LABEL_190:
                    v161 = &a5[a4];
                    if (&a5[a4] == a6)
                    {
                      goto LABEL_95;
                    }

                    if (*(v14 + 40) == &arrayKind)
                    {
                      v162 = *v161;
                      if (*v161)
                      {
                        if ((v162 - 33) < 0xFFFFFFE0)
                        {
                          goto LABEL_195;
                        }

                        do
                        {
LABEL_194:
                          v163 = *++v161;
                          v162 = v163;
                        }

                        while ((v163 - 33) > 0xFFFFFFDF);
LABEL_195:
                        while (v162 == 35)
                        {
                          ++v161;
                          do
                          {
                            v162 = *v161;
                            if (!*v161)
                            {
                              goto LABEL_201;
                            }

                            v164 = *(v161++ - 1);
                          }

                          while (v164 != 10);
                          --v161;
                          if ((v162 - 33) >= 0xFFFFFFE0)
                          {
                            goto LABEL_194;
                          }
                        }
                      }

LABEL_201:
                      v167 = v161[1];
                      v165 = (v161 + 1);
                      v166 = v167;
                      if (v167)
                      {
                        if ((v166 - 33) < 0xFFFFFFE0)
                        {
                          goto LABEL_204;
                        }

                        do
                        {
LABEL_203:
                          v168 = *(v165 + 1);
                          v165 = (v165 + 1);
                          v166 = v168;
                        }

                        while ((v168 - 33) > 0xFFFFFFDF);
LABEL_204:
                        while (v166 == 35)
                        {
                          v165 = (v165 + 1);
                          do
                          {
                            v166 = *v165;
                            if (!*v165)
                            {
                              goto LABEL_210;
                            }

                            v169 = *(v165 - 1);
                            v165 = (v165 + 1);
                          }

                          while (v169 != 10);
                          v165 = (v165 - 1);
                          if ((v166 - 33) >= 0xFFFFFFE0)
                          {
                            goto LABEL_203;
                          }
                        }
                      }

LABEL_210:
                      v170 = v165;
                      v172 = *(a2 + 8);
                      v171 = *(a2 + 16);
                      v173 = v172 + 1;
                      if (v171)
                      {
                        if (v173 >= *v171)
                        {
                          v174 = malloc_type_realloc(*(v171 + 16), (v172 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
                          v175 = *(a2 + 16);
                          v175[2] = v174;
                          *v175 = (v172 & 0xFFFFFFFFFFFFFF00) + 256;
                          *a2 = v174;
                        }
                      }

                      else
                      {
                        str_alloc(a2, v173);
                      }

                      v176 = *a2;
                      ++*(a2 + 8);
                      v176[v172] = 91;
                      v177 = arb::asymbol(v170, v181, &v180, v16);
                      v161 = arb::obj_write_symbol(a1, a2, v170, *v181, v180, v177);
                    }

                    str_putm(a2, v161, a6 - v161);
                    goto LABEL_95;
                  }

LABEL_169:
                  v145 = *(v14 + 72);
                  if (!v145)
                  {
                    goto LABEL_190;
                  }

                  v146 = *(v14 + 64);
                  v148 = *(a2 + 8);
                  v147 = *(a2 + 16);
                  v149 = v148 + v145;
                  if (v147)
                  {
                    if (v149 >= *v147)
                    {
                      v150 = (v149 + 255) & 0xFFFFFFFFFFFFFF00;
                      v151 = malloc_type_realloc(*(v147 + 16), v150, 0x100004077774924uLL);
                      v152 = *(a2 + 16);
                      v152[2] = v151;
                      *v152 = v150;
                      *a2 = v151;
                    }
                  }

                  else
                  {
                    str_alloc(a2, v149);
                  }

                  v153 = 0;
                  v154 = 0;
                  v155 = *a2 + v148;
                  while (2)
                  {
                    v156 = v154[v146];
                    if ((v156 - 33) <= 0xFFFFFFDF)
                    {
                      *(v155 + v153++) = v156;
                      ++v154;
                      v157 = &v154[v146];
                      if (v154[v146] == 35)
                      {
LABEL_181:
                        v158 = 35;
                        while (v158 == 35)
                        {
                          ++v157;
                          do
                          {
                            v158 = *v157;
                            if (!*v157)
                            {
                              goto LABEL_175;
                            }

                            v160 = *(v157++ - 1);
                          }

                          while (v160 != 10);
                          --v157;
                          if ((v158 - 33) >= 0xFFFFFFE0)
                          {
                            do
                            {
                              v159 = *++v157;
                              v158 = v159;
                            }

                            while ((v159 - 33) > 0xFFFFFFDF);
                          }
                        }

LABEL_175:
                        v154 = &v157[-v146];
                      }
                    }

                    else
                    {
                      ++v154;
                      v157 = &v154[v146];
                      if (v154[v146] == 35)
                      {
                        goto LABEL_181;
                      }
                    }

                    if (v154 >= v145)
                    {
                      *(a2 + 8) += v153;
                      goto LABEL_190;
                    }

                    continue;
                  }
                }

                v124 = *(a2 + 8);
                v123 = *(a2 + 16);
                v125 = v124 + 5;
                if (v123)
                {
                  if (v125 >= *v123)
                  {
                    v126 = malloc_type_realloc(*(v123 + 16), (v124 + 260) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                    v127 = *(a2 + 16);
                    v127[2] = v126;
                    *v127 = (v124 + 260) & 0xFFFFFFFFFFFFFF00;
                    *a2 = v126;
                  }
                }

                else
                {
                  str_alloc(a2, v125);
                }

                v130 = *a2;
                *(a2 + 8) += 5;
                v131 = &v130[v124];
                v131[4] = 91;
                *v131 = 2003792430;
                v117 = *(v14 + 56);
                v133 = *(a2 + 8);
                v132 = *(a2 + 16);
                v134 = v133 + 20;
                if (v132)
                {
                  if (v134 >= *v132)
                  {
                    v135 = malloc_type_realloc(*(v132 + 16), (v133 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                    v136 = *(a2 + 16);
                    v136[2] = v135;
                    *v136 = (v133 + 275) & 0xFFFFFFFFFFFFFF00;
                    *a2 = v135;
                  }
                }

                else
                {
                  str_alloc(a2, v134);
                }

                v137 = (*a2 + v133);
LABEL_163:
                v138 = itoa(v137, v117);
                v139 = *(a2 + 16);
                v140 = *(a2 + 8) + v138;
                *(a2 + 8) = v140;
                v141 = v140 + 1;
                if (v139)
                {
                  if (v141 >= *v139)
                  {
                    v142 = malloc_type_realloc(*(v139 + 16), (v140 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
                    v143 = *(a2 + 16);
                    v143[2] = v142;
                    *v143 = (v140 & 0xFFFFFFFFFFFFFF00) + 256;
                    *a2 = v142;
                  }
                }

                else
                {
                  str_alloc(a2, v141);
                }

                v144 = *a2;
                ++*(a2 + 8);
                v144[v140] = 93;
              }

              if ((*(v14 + 80) & 0x20) == 0)
              {
                goto LABEL_190;
              }

              goto LABEL_169;
            }

            continue;
          }
        }
      }
    }
  }

LABEL_17:
  v25 = strncmp(a4, "texture", 7uLL);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = a4 + 7;
  }

  *v181 = v26;
  if (!v25)
  {
    *v179 = 0;
    arb::aidx((a4 + 7), v179, 0, v24);
    if (a3 != a4)
    {
      v35 = *(a2 + 8);
      v34 = *(a2 + 16);
      v36 = v35 + a4 - a3;
      if (v34)
      {
        if (v36 >= *v34)
        {
          v37 = (v36 + 255) & 0xFFFFFFFFFFFFFF00;
          v38 = malloc_type_realloc(*(v34 + 16), v37, 0x100004077774924uLL);
          v39 = *(a2 + 16);
          v39[2] = v38;
          *v39 = v37;
          *a2 = v38;
        }
      }

      else
      {
        str_alloc(a2, v36);
      }

      v51 = 0;
      v52 = 0;
      v53 = *a2 + v35;
      while (1)
      {
        v54 = v52[a3];
        if ((v54 - 33) <= 0xFFFFFFDF)
        {
          *(v53 + v51++) = v54;
          v55 = &(++v52)[a3];
          if (v52[a3] == 35)
          {
LABEL_55:
            v56 = 35;
            while (v56 == 35)
            {
              ++v55;
              do
              {
                v56 = *v55;
                if (!*v55)
                {
                  goto LABEL_49;
                }

                v58 = *(v55++ - 1);
              }

              while (v58 != 10);
              --v55;
              if ((v56 - 33) >= 0xFFFFFFE0)
              {
                do
                {
                  v57 = *++v55;
                  v56 = v57;
                }

                while ((v57 - 33) > 0xFFFFFFDF);
              }
            }

LABEL_49:
            v52 = (v55 - a3);
          }
        }

        else
        {
          v55 = &(++v52)[a3];
          if (v52[a3] == 35)
          {
            goto LABEL_55;
          }
        }

        if (v52 >= a4 - a3)
        {
          v49 = *(a2 + 8) + v51;
          *(a2 + 8) = v49;
          v50 = v49 + 8;
          v48 = *(a2 + 16);
          if (v48)
          {
            goto LABEL_64;
          }

LABEL_46:
          str_alloc(a2, v50);
          goto LABEL_66;
        }
      }
    }

    v49 = *(a2 + 8);
    v48 = *(a2 + 16);
    v50 = v49 + 8;
    if (!v48)
    {
      goto LABEL_46;
    }

LABEL_64:
    if (v50 >= *v48)
    {
      v59 = malloc_type_realloc(*(v48 + 16), (v49 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v60 = *(a2 + 16);
      v60[2] = v59;
      *v60 = (v49 + 263) & 0xFFFFFFFFFFFFFF00;
      *a2 = v59;
    }

LABEL_66:
    v61 = *a2;
    *(a2 + 8) += 8;
    *&v61[v49] = 0x5B65727574786574;
    v62 = *v179;
    v64 = *(a2 + 8);
    v63 = *(a2 + 16);
    v65 = v64 + 20;
    if (v63)
    {
      if (v65 >= *v63)
      {
        v66 = malloc_type_realloc(*(v63 + 16), (v64 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
        v67 = *(a2 + 16);
        v67[2] = v66;
        *v67 = (v64 + 275) & 0xFFFFFFFFFFFFFF00;
        *a2 = v66;
      }
    }

    else
    {
      str_alloc(a2, v65);
    }

    v68 = itoa((*a2 + v64), v62);
    v69 = *(a2 + 16);
    v70 = *(a2 + 8) + v68;
    *(a2 + 8) = v70;
    *v179 = v68 + 8;
    v71 = v70 + 1;
    if (v69)
    {
      if (v71 >= *v69)
      {
        v72 = malloc_type_realloc(*(v69 + 16), (v70 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
        v73 = *(a2 + 16);
        v73[2] = v72;
        *v73 = (v70 & 0xFFFFFFFFFFFFFF00) + 256;
        *a2 = v72;
      }
    }

    else
    {
      str_alloc(a2, v71);
    }

    v74 = *a2;
    ++*(a2 + 8);
    v74[v70] = 93;
    v75 = &a5[a4];
    if (v75 == a6)
    {
      goto LABEL_95;
    }

    v77 = *(a2 + 8);
    v76 = *(a2 + 16);
    v78 = v77 + a6 - v75;
    if (v76)
    {
      if (v78 >= *v76)
      {
        v79 = (v78 + 255) & 0xFFFFFFFFFFFFFF00;
        v80 = malloc_type_realloc(*(v76 + 16), v79, 0x100004077774924uLL);
        v81 = *(a2 + 16);
        v81[2] = v80;
        *v81 = v79;
        *a2 = v80;
      }
    }

    else
    {
      str_alloc(a2, v78);
    }

    v40 = 0;
    v82 = 0;
    v83 = *a2 + v77;
    while (1)
    {
      v84 = v82[v75];
      if ((v84 - 33) <= 0xFFFFFFDF)
      {
        *(v83 + v40++) = v84;
        v85 = &(++v82)[v75];
        if (v82[v75] == 35)
        {
LABEL_86:
          v86 = 35;
LABEL_88:
          if (v86 == 35)
          {
            ++v85;
            while (1)
            {
              v86 = *v85;
              if (!*v85)
              {
                break;
              }

              v88 = *(v85++ - 1);
              if (v88 == 10)
              {
                --v85;
                if ((v86 - 33) >= 0xFFFFFFE0)
                {
                  do
                  {
                    v87 = *++v85;
                    v86 = v87;
                  }

                  while ((v87 - 33) > 0xFFFFFFDF);
                }

                goto LABEL_88;
              }
            }
          }

          v82 = (v85 - v75);
        }
      }

      else
      {
        v85 = &(++v82)[v75];
        if (v82[v75] == 35)
        {
          goto LABEL_86;
        }
      }

      if (v82 >= a6 - v75)
      {
LABEL_94:
        *(a2 + 8) += v40;
        goto LABEL_95;
      }
    }
  }

  v27 = (a6 - a3);
  if (a6 != a3)
  {
    v29 = *(a2 + 8);
    v28 = *(a2 + 16);
    v30 = &v27[v29];
    if (v28)
    {
      if (v30 >= *v28)
      {
        v31 = (v30 + 255) & 0xFFFFFFFFFFFFFF00;
        v32 = malloc_type_realloc(*(v28 + 16), v31, 0x100004077774924uLL);
        v33 = *(a2 + 16);
        v33[2] = v32;
        *v33 = v31;
        *a2 = v32;
      }
    }

    else
    {
      str_alloc(a2, v30);
    }

    v40 = 0;
    v41 = 0;
    v42 = *a2 + v29;
    while (1)
    {
      v43 = v41[a3];
      if ((v43 - 33) <= 0xFFFFFFDF)
      {
        *(v42 + v40++) = v43;
        v44 = &(++v41)[a3];
        if (v41[a3] == 35)
        {
LABEL_37:
          v45 = 35;
LABEL_39:
          if (v45 == 35)
          {
            ++v44;
            while (1)
            {
              v45 = *v44;
              if (!*v44)
              {
                break;
              }

              v47 = *(v44++ - 1);
              if (v47 == 10)
              {
                --v44;
                if ((v45 - 33) >= 0xFFFFFFE0)
                {
                  do
                  {
                    v46 = *++v44;
                    v45 = v46;
                  }

                  while ((v46 - 33) > 0xFFFFFFDF);
                }

                goto LABEL_39;
              }
            }
          }

          v41 = (v44 - a3);
        }
      }

      else
      {
        v44 = &(++v41)[a3];
        if (v41[a3] == 35)
        {
          goto LABEL_37;
        }
      }

      if (v41 >= v27)
      {
        goto LABEL_94;
      }
    }
  }

LABEL_95:
  v89 = *a6;
  if (*a6)
  {
    if ((v89 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_97:
        v90 = *++a6;
        v89 = v90;
      }

      while ((v90 - 33) > 0xFFFFFFDF);
    }

LABEL_98:
    if (v89 == 35)
    {
      ++a6;
      while (1)
      {
        v89 = *a6;
        if (!*a6)
        {
          break;
        }

        v91 = *(a6++ - 1);
        if (v91 == 10)
        {
          --a6;
          if ((v89 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_97;
          }

          goto LABEL_98;
        }
      }
    }
  }

  return a6;
}

void arb::obj_write_ssat(uint64_t a1, uint64_t a2, arb *this, unint64_t *a4)
{
  v114 = *this;
  v7 = v114;
  v8 = this;
  if ((ctype[2 * *this] & 0x40) != 0)
  {
    v8 = this;
    do
    {
      v9 = *(v8 + 1);
      v8 = (v8 + 1);
      v7 = v9;
    }

    while ((ctype[2 * v9] & 0x40) != 0);
  }

  v115 = 0;
  *v116 = 0;
  v10 = v8;
  if (v7)
  {
    v10 = v8;
    if ((v7 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_6:
        v11 = *(v10 + 1);
        v10 = (v10 + 1);
        v7 = v11;
      }

      while ((v11 - 33) > 0xFFFFFFDF);
    }

LABEL_7:
    if (v7 == 35)
    {
      v10 = (v10 + 1);
      while (1)
      {
        v7 = *v10;
        if (!*v10)
        {
          break;
        }

        v12 = *(v10 - 1);
        v10 = (v10 + 1);
        if (v12 == 10)
        {
          v10 = (v10 - 1);
          if ((v7 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }
      }
    }
  }

  *v116 = v10;
  arb::asymbol(v10, v116, &v115, a4);
  v13 = v115;
  v14 = *v116;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = v16 >> 1;
  v117 = *v116;
  v18 = v15 + 88 * (v16 >> 1);
  for (i = arb::ascan(&v117, v115, v18, 1); i; i = arb::ascan(&v117, v13, v18, 1))
  {
    if (i <= 0)
    {
      v16 = v17;
    }

    else
    {
      v16 -= v17 + 1;
    }

    if (i > 0)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = 0;
    }

    v15 += 88 * v20;
    v17 = v16 >> 1;
    v117 = v14;
    v18 = v15 + 88 * (v16 >> 1);
  }

  v22 = *(a2 + 8);
  v21 = *(a2 + 16);
  if (*(v18 + 40) == &outputKind)
  {
    v26 = v22 + 5;
    if (v21)
    {
      if (v26 >= *v21)
      {
        v27 = malloc_type_realloc(*(v21 + 16), (v22 + 260) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
        v28 = *(a2 + 16);
        v28[2] = v27;
        *v28 = (v22 + 260) & 0xFFFFFFFFFFFFFF00;
        *a2 = v27;
      }
    }

    else
    {
      str_alloc(a2, v26);
    }

    v51 = *a2;
    *(a2 + 8) += 5;
    v52 = &v51[v22];
    v52[4] = 114;
    *v52 = 542001485;
    v53 = *(a1 + 60);
    v55 = *(a2 + 8);
    v54 = *(a2 + 16);
    v56 = v55 + 20;
    if (v54)
    {
      if (v56 >= *v54)
      {
        v57 = malloc_type_realloc(*(v54 + 16), (v55 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
        v58 = *(a2 + 16);
        v58[2] = v57;
        *v58 = (v55 + 275) & 0xFFFFFFFFFFFFFF00;
        *a2 = v57;
      }
    }

    else
    {
      str_alloc(a2, v56);
    }

    v59 = itoa((*a2 + v55), v53);
    v60 = *(a2 + 16);
    v61 = *(a2 + 8) + v59;
    *(a2 + 8) = v61;
    v62 = v61 + 2;
    if (v60)
    {
      if (v62 >= *v60)
      {
        v63 = malloc_type_realloc(*(v60 + 16), (v61 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
        v64 = *(a2 + 16);
        v64[2] = v63;
        *v64 = (v61 + 257) & 0xFFFFFFFFFFFFFF00;
        *a2 = v63;
      }
    }

    else
    {
      str_alloc(a2, v62);
    }

    v65 = *a2;
    *(a2 + 8) += 2;
    *&v65[v61] = 29228;
    v66 = *(a1 + 60);
    v68 = *(a2 + 8);
    v67 = *(a2 + 16);
    v69 = v68 + 20;
    if (v67)
    {
      if (v69 >= *v67)
      {
        v70 = malloc_type_realloc(*(v67 + 16), (v68 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
        v71 = *(a2 + 16);
        v71[2] = v70;
        *v71 = (v68 + 275) & 0xFFFFFFFFFFFFFF00;
        *a2 = v70;
      }
    }

    else
    {
      str_alloc(a2, v69);
    }

    v72 = itoa((*a2 + v68), v66);
    v73 = *(a2 + 16);
    v74 = *(a2 + 8) + v72;
    *(a2 + 8) = v74;
    v75 = v74 + 7;
    if (v73)
    {
      if (v75 >= *v73)
      {
        v76 = malloc_type_realloc(*(v73 + 16), (v74 + 262) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
        v77 = *(a2 + 16);
        v77[2] = v76;
        *v77 = (v74 + 262) & 0xFFFFFFFFFFFFFF00;
        *a2 = v76;
      }
    }

    else
    {
      str_alloc(a2, v75);
    }

    v78 = *a2;
    *(a2 + 8) += 7;
    v79 = &v78[v74];
    *(v79 + 3) = 1480674570;
    *v79 = 171651372;
    if (v114 != 95)
    {
      v80 = v8 - this - 5;
      v82 = *(a2 + 8);
      v81 = *(a2 + 16);
      v83 = v82 + v80;
      if (v81)
      {
        if (v83 >= *v81)
        {
          v84 = (v83 + 255) & 0xFFFFFFFFFFFFFF00;
          v85 = malloc_type_realloc(*(v81 + 16), v84, 0x100004077774924uLL);
          v86 = *(a2 + 16);
          v86[2] = v85;
          *v86 = v84;
          *a2 = v85;
        }
      }

      else
      {
        str_alloc(a2, v83);
      }

      v99 = *a2;
      *(a2 + 8) += v80;
      memcpy(&v99[v82], this, v8 - this - 5);
    }

    arb::obj_write_dest(a1, a2, v8, v116, &v115, 1, 1);
    v101 = *(a2 + 8);
    v100 = *(a2 + 16);
    v102 = v101 + 2;
    if (v100)
    {
      if (v102 >= *v100)
      {
        v103 = malloc_type_realloc(*(v100 + 16), (v101 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
        v104 = *(a2 + 16);
        v104[2] = v103;
        *v104 = (v101 + 257) & 0xFFFFFFFFFFFFFF00;
        *a2 = v103;
      }
    }

    else
    {
      str_alloc(a2, v102);
    }

    v105 = *a2;
    *(a2 + 8) += 2;
    *&v105[v101] = 29228;
    v106 = *(a1 + 60);
    v108 = *(a2 + 8);
    v107 = *(a2 + 16);
    v109 = v108 + 20;
    if (v107)
    {
      if (v109 >= *v107)
      {
        v110 = malloc_type_realloc(*(v107 + 16), (v108 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
        v111 = *(a2 + 16);
        v111[2] = v110;
        *v111 = (v108 + 275) & 0xFFFFFFFFFFFFFF00;
        *a2 = v110;
      }
    }

    else
    {
      str_alloc(a2, v109);
    }

    v112 = itoa((*a2 + v108), v106);
    v94 = *(a2 + 16);
    v95 = *(a2 + 8) + v112;
    *(a2 + 8) = v95;
    v96 = v95 + 4;
    if (v94)
    {
      goto LABEL_69;
    }

LABEL_82:
    str_alloc(a2, v96);
    goto LABEL_83;
  }

  v23 = v22 + 3;
  if (v21)
  {
    if (v23 >= *v21)
    {
      v24 = malloc_type_realloc(*(v21 + 16), (v22 + 258) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v25 = *(a2 + 16);
      v25[2] = v24;
      *v25 = (v22 + 258) & 0xFFFFFFFFFFFFFF00;
      *a2 = v24;
    }
  }

  else
  {
    str_alloc(a2, v23);
  }

  v29 = *a2;
  *(a2 + 8) += 3;
  v30 = &v29[v22];
  v30[2] = 78;
  *v30 = 18765;
  arb::obj_write_dest(a1, a2, v8, v116, &v115, 1, 1);
  v32 = *(a2 + 8);
  v31 = *(a2 + 16);
  v33 = v32 + 1;
  if (v31)
  {
    if (v33 >= *v31)
    {
      v34 = malloc_type_realloc(*(v31 + 16), (v32 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v35 = *(a2 + 16);
      v35[2] = v34;
      *v35 = (v32 & 0xFFFFFFFFFFFFFF00) + 256;
      *a2 = v34;
    }
  }

  else
  {
    str_alloc(a2, v33);
  }

  v36 = *a2;
  ++*(a2 + 8);
  v36[v32] = 44;
  arb::obj_write_symbol(a1, a2, *v116, *v116, v115, &v115[*v116]);
  v38 = *(a2 + 8);
  v37 = *(a2 + 16);
  v39 = v38 + 7;
  if (v37)
  {
    if (v39 >= *v37)
    {
      v40 = malloc_type_realloc(*(v37 + 16), (v38 + 262) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
      v41 = *(a2 + 16);
      v41[2] = v40;
      *v41 = (v38 + 262) & 0xFFFFFFFFFFFFFF00;
      *a2 = v40;
    }
  }

  else
  {
    str_alloc(a2, v39);
  }

  v42 = *a2;
  *(a2 + 8) += 7;
  v43 = &v42[v38];
  *(v43 + 3) = 1480674570;
  *v43 = 171651372;
  if (v114 != 95)
  {
    v44 = v8 - this - 5;
    v46 = *(a2 + 8);
    v45 = *(a2 + 16);
    v47 = v46 + v44;
    if (v45)
    {
      if (v47 >= *v45)
      {
        v48 = (v47 + 255) & 0xFFFFFFFFFFFFFF00;
        v49 = malloc_type_realloc(*(v45 + 16), v48, 0x100004077774924uLL);
        v50 = *(a2 + 16);
        v50[2] = v49;
        *v50 = v48;
        *a2 = v49;
      }
    }

    else
    {
      str_alloc(a2, v47);
    }

    v87 = *a2;
    *(a2 + 8) += v44;
    memcpy(&v87[v46], this, v8 - this - 5);
  }

  arb::obj_write_dest(a1, a2, v8, v116, &v115, 1, 1);
  v89 = *(a2 + 8);
  v88 = *(a2 + 16);
  v90 = v89 + 1;
  if (v88)
  {
    if (v90 >= *v88)
    {
      v91 = malloc_type_realloc(*(v88 + 16), (v89 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
      v92 = *(a2 + 16);
      v92[2] = v91;
      *v92 = (v89 & 0xFFFFFFFFFFFFFF00) + 256;
      *a2 = v91;
    }
  }

  else
  {
    str_alloc(a2, v90);
  }

  v93 = *a2;
  ++*(a2 + 8);
  v93[v89] = 44;
  arb::obj_write_symbol(a1, a2, *v116, *v116, v115, &v115[*v116]);
  v95 = *(a2 + 8);
  v94 = *(a2 + 16);
  v96 = v95 + 4;
  if (!v94)
  {
    goto LABEL_82;
  }

LABEL_69:
  if (v96 >= *v94)
  {
    v97 = malloc_type_realloc(*(v94 + 16), (v95 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
    v98 = *(a2 + 16);
    v98[2] = v97;
    *v98 = (v95 + 259) & 0xFFFFFFFFFFFFFF00;
    *a2 = v97;
  }

LABEL_83:
  v113 = *a2;
  *(a2 + 8) += 4;
  *&v113[v95] = 993078572;
}

void str_putm(string_t *a1, const char *a2, unint64_t a3)
{
  if (a3)
  {
    v7 = a1[1];
    v6 = a1[2];
    v8 = &v7[a3];
    if (v6)
    {
      if (v8 >= *v6)
      {
        v9 = (v8 + 255) & 0xFFFFFFFFFFFFFF00;
        v10 = malloc_type_realloc(*(v6 + 2), v9, 0x100004077774924uLL);
        v11 = a1[2];
        *(v11 + 2) = v10;
        *v11 = v9;
        *a1 = v10;
      }
    }

    else
    {
      str_alloc(a1, v8);
    }

    v12 = 0;
    v13 = 0;
    v14 = &v7[*a1];
    while (1)
    {
      v15 = a2[v13];
      if ((v15 - 33) <= 0xFFFFFFDF)
      {
        if (a2[v13] > 0x66u)
        {
          if (v15 == 114)
          {
            LOBYTE(v15) = 120;
          }

          else if (v15 == 103)
          {
            LOBYTE(v15) = 121;
          }
        }

        else if (v15 == 97)
        {
          LOBYTE(v15) = 119;
        }

        else if (v15 == 98)
        {
          LOBYTE(v15) = 122;
        }

        v14[v12++] = v15;
        v16 = &a2[++v13];
        if (a2[v13] == 35)
        {
LABEL_22:
          v17 = 35;
LABEL_24:
          if (v17 == 35)
          {
            ++v16;
            while (1)
            {
              v17 = *v16;
              if (!*v16)
              {
                break;
              }

              v19 = *(v16++ - 1);
              if (v19 == 10)
              {
                --v16;
                if ((v17 - 33) >= 0xFFFFFFE0)
                {
                  do
                  {
                    v18 = *++v16;
                    v17 = v18;
                  }

                  while ((v18 - 33) > 0xFFFFFFDF);
                }

                goto LABEL_24;
              }
            }
          }

          v13 = v16 - a2;
        }
      }

      else
      {
        v16 = &a2[++v13];
        if (a2[v13] == 35)
        {
          goto LABEL_22;
        }
      }

      if (v13 >= a3)
      {
        a1[1] += v12;
        return;
      }
    }
  }
}

_BYTE *glsl::glindex(glsl *this, char *a2, unsigned int *a3)
{
  while (1)
  {
    do
    {
LABEL_3:
      v3 = this;
      v4 = this + 1;
      v5 = *this;
      this = (this + 1);
    }

    while ((v5 - 33) >= 0xFFFFFFE0);
    if (v5 != 47)
    {
      break;
    }

    v6 = *v4;
    if (v6 == 42)
    {
      this = (v3 + 2);
      if (*(v3 + 2))
      {
        do
        {
          if (*(v4 - 1) == 42 && *v4 == 47)
          {
            break;
          }

          v9 = v4[2];
          ++v4;
        }

        while (v9);
        this = (v4 + 1);
      }
    }

    else
    {
      if (v6 != 47)
      {
        return 0;
      }

      v7 = (v3 + 2);
      while (*v7)
      {
        v8 = *(v7 - 1);
        this = v7;
        v7 = (v7 + 1);
        if (v8 == 10)
        {
          goto LABEL_3;
        }
      }

      this = v7;
    }
  }

  if (v5 != 91)
  {
    return 0;
  }

  v10 = *v4;
  if ((v10 - 58) < 0xFFFFFFF6)
  {
    return 0;
  }

  v12 = 0;
  do
  {
    v12 = v10 + 10 * v12 - 48;
    v13 = *++v4;
    v10 = v13;
  }

  while ((v13 - 58) > 0xFFFFFFF5);
  *a2 = v12;
  while (1)
  {
    do
    {
LABEL_24:
      v14 = v4;
      v15 = v4 + 1;
      v16 = *v4++;
    }

    while ((v16 - 33) >= 0xFFFFFFE0);
    if (v16 != 47)
    {
      break;
    }

    v17 = *v15;
    if (v17 == 42)
    {
      v4 = v14 + 2;
      if (v14[2])
      {
        do
        {
          if (*(v15 - 1) == 42 && *v15 == 47)
          {
            break;
          }

          v20 = v15[2];
          ++v15;
        }

        while (v20);
        v4 = v15 + 1;
      }
    }

    else
    {
      if (v17 != 47)
      {
        return 0;
      }

      v18 = v14 + 2;
      while (*v18)
      {
        v19 = *(v18 - 1);
        v4 = v18++;
        if (v19 == 10)
        {
          goto LABEL_24;
        }
      }

      v4 = v18;
    }
  }

  if (v16 == 93)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

void string_t::~string_t(string_t *this)
{
  v1 = this[3];
  if (v1)
  {
    this[4] = v1;
    operator delete(v1);
  }
}

void HGString::sample2d()
{
  if (__cxa_guard_acquire(&qword_280C5D0B8))
  {
    qword_280C5D500 = "//GLfs2.0      \n//LEN=000000019d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture7;\nvarying highp vec4 hg_TexCoord7;\nvoid main(void)\n{\n    gl_FragColor = texture2D(hg_Texture7, hg_TexCoord7.xy);\n}\n//MD5=bbf4ec74:245e90b8:e9ac0fd8:351c5b3a\n//SIG=00000000:00000080:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0008:08:0:1:0\n";
    qword_280C5D508 = 413;
    xmmword_280C5D510 = 0u;
    xmmword_280C5D520 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D500, v1);

    __cxa_guard_release(&qword_280C5D0B8);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D0B0))
  {
    qword_280C5D4D0 = "//GLfs2.0      \n//LEN=000000019d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture6;\nvarying highp vec4 hg_TexCoord6;\nvoid main(void)\n{\n    gl_FragColor = texture2D(hg_Texture6, hg_TexCoord6.xy);\n}\n//MD5=22ccfeea:0aa3beb7:0667a734:f532af78\n//SIG=00000000:00000040:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0007:07:0:1:0\n";
    qword_280C5D4D8 = 413;
    xmmword_280C5D4E0 = 0u;
    xmmword_280C5D4F0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D4D0, v1);

    __cxa_guard_release(&qword_280C5D0B0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D0A8))
  {
    qword_280C5D4A0 = "//GLfs2.0      \n//LEN=000000019d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture5;\nvarying highp vec4 hg_TexCoord5;\nvoid main(void)\n{\n    gl_FragColor = texture2D(hg_Texture5, hg_TexCoord5.xy);\n}\n//MD5=05661ebe:db59835f:7507946b:b29cf29a\n//SIG=00000000:00000020:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0006:06:0:1:0\n";
    qword_280C5D4A8 = 413;
    xmmword_280C5D4B0 = 0u;
    xmmword_280C5D4C0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D4A0, v1);

    __cxa_guard_release(&qword_280C5D0A8);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D0A0))
  {
    qword_280C5D470 = "//GLfs2.0      \n//LEN=000000019d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture4;\nvarying highp vec4 hg_TexCoord4;\nvoid main(void)\n{\n    gl_FragColor = texture2D(hg_Texture4, hg_TexCoord4.xy);\n}\n//MD5=a55c80ef:87e7f7dc:a3f787cf:27bdb14f\n//SIG=00000000:00000010:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0005:05:0:1:0\n";
    qword_280C5D478 = 413;
    xmmword_280C5D480 = 0u;
    unk_280C5D490 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D470, v1);

    __cxa_guard_release(&qword_280C5D0A0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D098))
  {
    qword_280C5D440 = "//GLfs2.0      \n//LEN=000000019d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture3;\nvarying highp vec4 hg_TexCoord3;\nvoid main(void)\n{\n    gl_FragColor = texture2D(hg_Texture3, hg_TexCoord3.xy);\n}\n//MD5=59bfeda2:66444b75:343be20d:f7a096c6\n//SIG=00000000:00000008:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0004:04:0:1:0\n";
    qword_280C5D448 = 413;
    xmmword_280C5D450 = 0u;
    xmmword_280C5D460 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D440, v1);

    __cxa_guard_release(&qword_280C5D098);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D090))
  {
    qword_280C5D410 = "//GLfs2.0      \n//LEN=000000019d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture2;\nvarying highp vec4 hg_TexCoord2;\nvoid main(void)\n{\n    gl_FragColor = texture2D(hg_Texture2, hg_TexCoord2.xy);\n}\n//MD5=64d01b6e:569dc44a:d1f1e083:2b518d16\n//SIG=00000000:00000004:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
    qword_280C5D418 = 413;
    xmmword_280C5D420 = 0u;
    unk_280C5D430 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D410, v1);

    __cxa_guard_release(&qword_280C5D090);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D088))
  {
    qword_280C5D3E0 = "//GLfs2.0      \n//LEN=000000019d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord1;\nvoid main(void)\n{\n    gl_FragColor = texture2D(hg_Texture1, hg_TexCoord1.xy);\n}\n//MD5=ac6d4b6f:fe3ac506:6576bd5e:27c645c3\n//SIG=00000000:00000002:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
    qword_280C5D3E8 = 413;
    xmmword_280C5D3F0 = 0u;
    unk_280C5D400 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D3E0, v1);

    __cxa_guard_release(&qword_280C5D088);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D080))
  {
    qword_280C5D3B0 = "//GLfs2.0      \n//LEN=000000019d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main(void)\n{\n    gl_FragColor = texture2D(hg_Texture0, hg_TexCoord0.xy);\n}\n//MD5=1d8d1a82:d291bc55:596ea65f:a606ed93\n//SIG=00000000:00000001:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    qword_280C5D3B8 = 413;
    xmmword_280C5D3C0 = 0u;
    unk_280C5D3D0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D3B0, v1);

    __cxa_guard_release(&qword_280C5D080);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D078))
  {
    qword_280C5D380 = "!!ARBfp1.0     \n##LEN=000000019b\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f7=fragment.texcoord[7];\n##%\n##@\n##7\nTEX $o0,$f7,texture[7],2D;\nEND\n##MD5=4ef19759:2d6000ec:2c5f0d39:0e366cec\n##SIG=00000000:00000080:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0008:08:0:1:0\n";
    qword_280C5D388 = 411;
    xmmword_280C5D390 = 0u;
    unk_280C5D3A0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D380, v1);

    __cxa_guard_release(&qword_280C5D078);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D070))
  {
    qword_280C5D350 = "!!ARBfp1.0     \n##LEN=000000019b\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f6=fragment.texcoord[6];\n##%\n##@\n##6\nTEX $o0,$f6,texture[6],2D;\nEND\n##MD5=dc6255ee:ec02b910:da88252c:9affa0c5\n##SIG=00000000:00000040:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0007:07:0:1:0\n";
    qword_280C5D358 = 411;
    xmmword_280C5D360 = 0u;
    unk_280C5D370 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D350, v1);

    __cxa_guard_release(&qword_280C5D070);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D068))
  {
    qword_280C5D320 = "!!ARBfp1.0     \n##LEN=000000019b\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f5=fragment.texcoord[5];\n##%\n##@\n##5\nTEX $o0,$f5,texture[5],2D;\nEND\n##MD5=3383524a:11b3f71a:c55ccc0e:8d9dc0e3\n##SIG=00000000:00000020:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0006:06:0:1:0\n";
    qword_280C5D328 = 411;
    xmmword_280C5D330 = 0u;
    unk_280C5D340 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D320, v1);

    __cxa_guard_release(&qword_280C5D068);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D060))
  {
    qword_280C5D2F0 = "!!ARBfp1.0     \n##LEN=000000019b\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f4=fragment.texcoord[4];\n##%\n##@\n##4\nTEX $o0,$f4,texture[4],2D;\nEND\n##MD5=7dc2386c:febf27ca:d6e811c9:91dd69db\n##SIG=00000000:00000010:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0005:05:0:1:0\n";
    qword_280C5D2F8 = 411;
    xmmword_280C5D300 = 0u;
    unk_280C5D310 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D2F0, v1);

    __cxa_guard_release(&qword_280C5D060);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D058))
  {
    qword_280C5D2C0 = "!!ARBfp1.0     \n##LEN=000000019b\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f3=fragment.texcoord[3];\n##%\n##@\n##3\nTEX $o0,$f3,texture[3],2D;\nEND\n##MD5=3899c790:e60c7f5f:7881594e:b87c7ab6\n##SIG=00000000:00000008:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0004:04:0:1:0\n";
    qword_280C5D2C8 = 411;
    xmmword_280C5D2D0 = 0u;
    unk_280C5D2E0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D2C0, v1);

    __cxa_guard_release(&qword_280C5D058);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D050))
  {
    qword_280C5D290 = "!!ARBfp1.0     \n##LEN=000000019b\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f2=fragment.texcoord[2];\n##%\n##@\n##2\nTEX $o0,$f2,texture[2],2D;\nEND\n##MD5=f65ae3b0:67c9ec7f:86a5b786:54ad4649\n##SIG=00000000:00000004:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
    qword_280C5D298 = 411;
    xmmword_280C5D2A0 = 0u;
    unk_280C5D2B0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D290, v1);

    __cxa_guard_release(&qword_280C5D050);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D048))
  {
    qword_280C5D260 = "!!ARBfp1.0     \n##LEN=000000019b\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f1=fragment.texcoord[1];\n##%\n##@\n##1\nTEX $o0,$f1,texture[1],2D;\nEND\n##MD5=b736e8a9:2ce9f250:7cba081b:ac720bf8\n##SIG=00000000:00000002:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
    qword_280C5D268 = 411;
    xmmword_280C5D270 = 0u;
    unk_280C5D280 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D260, v1);

    __cxa_guard_release(&qword_280C5D048);
  }
}

{
  if (__cxa_guard_acquire(&_MergedGlobals_15))
  {
    qword_280C5D230 = "!!ARBfp1.0     \n##LEN=000000019b\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\n##%\n##@\n##0\nTEX $o0,$f0,texture[0],2D;\nEND\n##MD5=16e93a90:20a9533a:c6576d6f:12e8ee4d\n##SIG=00000000:00000001:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    unk_280C5D238 = 411;
    xmmword_280C5D240 = 0u;
    unk_280C5D250 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D230, v1);

    __cxa_guard_release(&_MergedGlobals_15);
  }
}

void metal_sample2d0_half_s()
{
  if (__cxa_guard_acquire(&qword_280C5D0C0))
  {
    qword_280C5D530 = "//Metal1.0     \n//LEN=0000000207\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    FragmentOut output;\n\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    return output;\n}\n//MD5=17b31ac2:0d32b286:d460af2f:68ac1617\n//SIG=00400000:00000001:00000000:00000001:0000:0000:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    qword_280C5D538 = 519;
    xmmword_280C5D540 = 0u;
    xmmword_280C5D550 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D530, v1);

    __cxa_guard_release(&qword_280C5D0C0);
  }
}

void metal_sample2d1_half_s()
{
  if (__cxa_guard_acquire(&qword_280C5D0C8))
  {
    qword_280C5D560 = "//Metal1.0     \n//LEN=0000000207\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    FragmentOut output;\n\n    output.color0 = (float4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    return output;\n}\n//MD5=66126f08:7a0a0541:50cb14b8:dc20ab48\n//SIG=00400000:00000002:00000000:00000002:0000:0000:0000:0000:0000:0000:0004:0000:0002:02:0:1:0\n";
    qword_280C5D568 = 519;
    xmmword_280C5D570 = 0u;
    xmmword_280C5D580 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D560, v1);

    __cxa_guard_release(&qword_280C5D0C8);
  }
}

void metal_sample2d2_half_s()
{
  if (__cxa_guard_acquire(&qword_280C5D0D0))
  {
    qword_280C5D590 = "//Metal1.0     \n//LEN=0000000207\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    FragmentOut output;\n\n    output.color0 = (float4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    return output;\n}\n//MD5=e29ca5bf:3aefc427:e9cb6767:1fb5bfae\n//SIG=00400000:00000004:00000000:00000004:0000:0000:0000:0000:0000:0000:0008:0000:0003:03:0:1:0\n";
    qword_280C5D598 = 519;
    xmmword_280C5D5A0 = 0u;
    xmmword_280C5D5B0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D590, v1);

    __cxa_guard_release(&qword_280C5D0D0);
  }
}

void metal_sample2d3_half_s()
{
  if (__cxa_guard_acquire(&qword_280C5D0D8))
  {
    qword_280C5D5C0 = "//Metal1.0     \n//LEN=0000000207\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]])\n{\n    FragmentOut output;\n\n    output.color0 = (float4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    return output;\n}\n//MD5=26246cf2:677801c1:4ecdf5a0:4b8d05e2\n//SIG=00400000:00000008:00000000:00000008:0000:0000:0000:0000:0000:0000:0010:0000:0004:04:0:1:0\n";
    qword_280C5D5C8 = 519;
    xmmword_280C5D5D0 = 0u;
    xmmword_280C5D5E0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D5C0, v1);

    __cxa_guard_release(&qword_280C5D0D8);
  }
}

void metal_sample2d4_half_s()
{
  if (__cxa_guard_acquire(&qword_280C5D0E0))
  {
    qword_280C5D5F0 = "//Metal1.0     \n//LEN=0000000207\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]])\n{\n    FragmentOut output;\n\n    output.color0 = (float4) hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    return output;\n}\n//MD5=e58b568d:54c2b894:b659516b:b176e5ac\n//SIG=00400000:00000010:00000000:00000010:0000:0000:0000:0000:0000:0000:0020:0000:0005:05:0:1:0\n";
    qword_280C5D5F8 = 519;
    xmmword_280C5D600 = 0u;
    xmmword_280C5D610 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D5F0, v1);

    __cxa_guard_release(&qword_280C5D0E0);
  }
}

void metal_sample2d5_half_s()
{
  if (__cxa_guard_acquire(&qword_280C5D0E8))
  {
    qword_280C5D620 = "//Metal1.0     \n//LEN=0000000207\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float5* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]])\n{\n    FragmentOut output;\n\n    output.color0 = (float4) hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    return output;\n}\n//MD5=66f8f1b6:850d7b58:5ce020bb:4d7656a8\n//SIG=00400000:00000020:00000000:00000020:0000:0000:0000:0000:0000:0000:0040:0000:0006:06:0:1:0\n";
    qword_280C5D628 = 519;
    xmmword_280C5D630 = 0u;
    xmmword_280C5D640 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D620, v1);

    __cxa_guard_release(&qword_280C5D0E8);
  }
}

void metal_sample2d6_half_s()
{
  if (__cxa_guard_acquire(&qword_280C5D0F0))
  {
    qword_280C5D650 = "//Metal1.0     \n//LEN=0000000207\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture6 [[ texture(6) ]], \n    sampler hg_Sampler6 [[ sampler(6) ]])\n{\n    FragmentOut output;\n\n    output.color0 = (float4) hg_Texture6.sample(hg_Sampler6, frag._texCoord6.xy);\n    return output;\n}\n//MD5=71cedd26:3f95a3bd:40380951:bd74d411\n//SIG=00400000:00000040:00000000:00000040:0000:0000:0000:0000:0000:0000:0080:0000:0007:07:0:1:0\n";
    qword_280C5D658 = 519;
    xmmword_280C5D660 = 0u;
    xmmword_280C5D670 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D650, v1);

    __cxa_guard_release(&qword_280C5D0F0);
  }
}

void metal_sample2d7_half_s()
{
  if (__cxa_guard_acquire(&qword_280C5D0F8))
  {
    qword_280C5D680 = "//Metal1.0     \n//LEN=0000000207\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture7 [[ texture(7) ]], \n    sampler hg_Sampler7 [[ sampler(7) ]])\n{\n    FragmentOut output;\n\n    output.color0 = (float4) hg_Texture7.sample(hg_Sampler7, frag._texCoord7.xy);\n    return output;\n}\n//MD5=366faa97:74f51e41:1aae0693:9870a122\n//SIG=00400000:00000080:00000000:00000080:0000:0000:0000:0000:0000:0000:0100:0000:0008:08:0:1:0\n";
    qword_280C5D688 = 519;
    xmmword_280C5D690 = 0u;
    xmmword_280C5D6A0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D680, v1);

    __cxa_guard_release(&qword_280C5D0F8);
  }
}

void metal_sample2d0_s()
{
  if (__cxa_guard_acquire(&qword_280C5D100))
  {
    qword_280C5D6B0 = "//Metal1.0     \n//LEN=00000001ff\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    return output;\n}\n//MD5=6f669bc0:cf2c4116:fad604f7:6fdb36bb\n//SIG=00000000:00000001:00000000:00000000:0000:0000:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    qword_280C5D6B8 = 511;
    xmmword_280C5D6C0 = 0u;
    xmmword_280C5D6D0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D6B0, v1);

    __cxa_guard_release(&qword_280C5D100);
  }
}

void metal_sample2d1_s()
{
  if (__cxa_guard_acquire(&qword_280C5D108))
  {
    qword_280C5D6E0 = "//Metal1.0     \n//LEN=00000001ff\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    return output;\n}\n//MD5=337083c6:b5efb30c:e0498c87:962e883b\n//SIG=00000000:00000002:00000000:00000000:0000:0000:0000:0000:0000:0000:0004:0000:0002:02:0:1:0\n";
    qword_280C5D6E8 = 511;
    xmmword_280C5D6F0 = 0u;
    xmmword_280C5D700 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D6E0, v1);

    __cxa_guard_release(&qword_280C5D108);
  }
}

void metal_sample2d2_s()
{
  if (__cxa_guard_acquire(&qword_280C5D110))
  {
    qword_280C5D710 = "//Metal1.0     \n//LEN=00000001ff\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    return output;\n}\n//MD5=78787321:d0f473ee:95960d97:3438eca2\n//SIG=00000000:00000004:00000000:00000000:0000:0000:0000:0000:0000:0000:0008:0000:0003:03:0:1:0\n";
    qword_280C5D718 = 511;
    xmmword_280C5D720 = 0u;
    xmmword_280C5D730 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D710, v1);

    __cxa_guard_release(&qword_280C5D110);
  }
}

void metal_sample2d3_s()
{
  if (__cxa_guard_acquire(&qword_280C5D118))
  {
    qword_280C5D740 = "//Metal1.0     \n//LEN=00000001ff\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    return output;\n}\n//MD5=cd8bb6cc:4819f5f1:ddf3db57:3dfec92f\n//SIG=00000000:00000008:00000000:00000000:0000:0000:0000:0000:0000:0000:0010:0000:0004:04:0:1:0\n";
    qword_280C5D748 = 511;
    xmmword_280C5D750 = 0u;
    xmmword_280C5D760 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D740, v1);

    __cxa_guard_release(&qword_280C5D118);
  }
}

void metal_sample2d4_s()
{
  if (__cxa_guard_acquire(&qword_280C5D120))
  {
    qword_280C5D770 = "//Metal1.0     \n//LEN=00000001ff\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    return output;\n}\n//MD5=2e9dff36:f2698c51:cfa8aed7:24c4c84e\n//SIG=00000000:00000010:00000000:00000000:0000:0000:0000:0000:0000:0000:0020:0000:0005:05:0:1:0\n";
    qword_280C5D778 = 511;
    xmmword_280C5D780 = 0u;
    xmmword_280C5D790 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D770, v1);

    __cxa_guard_release(&qword_280C5D120);
  }
}

void metal_sample2d5_s()
{
  if (__cxa_guard_acquire(&qword_280C5D128))
  {
    qword_280C5D7A0 = "//Metal1.0     \n//LEN=00000001ff\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    return output;\n}\n//MD5=cc86252f:23fe64ab:2c3c7c52:1bfd6a43\n//SIG=00000000:00000020:00000000:00000000:0000:0000:0000:0000:0000:0000:0040:0000:0006:06:0:1:0\n";
    qword_280C5D7A8 = 511;
    xmmword_280C5D7B0 = 0u;
    xmmword_280C5D7C0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D7A0, v1);

    __cxa_guard_release(&qword_280C5D128);
  }
}

void metal_sample2d6_s()
{
  if (__cxa_guard_acquire(&qword_280C5D130))
  {
    qword_280C5D7D0 = "//Metal1.0     \n//LEN=00000001ff\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture6 [[ texture(6) ]], \n    sampler hg_Sampler6 [[ sampler(6) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Texture6.sample(hg_Sampler6, frag._texCoord6.xy);\n    return output;\n}\n//MD5=99bcb848:93607e3e:f6e46520:b61c284e\n//SIG=00000000:00000040:00000000:00000000:0000:0000:0000:0000:0000:0000:0080:0000:0007:07:0:1:0\n";
    qword_280C5D7D8 = 511;
    xmmword_280C5D7E0 = 0u;
    xmmword_280C5D7F0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D7D0, v1);

    __cxa_guard_release(&qword_280C5D130);
  }
}

void metal_sample2d7_s()
{
  if (__cxa_guard_acquire(&qword_280C5D138))
  {
    qword_280C5D800 = "//Metal1.0     \n//LEN=00000001ff\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture7 [[ texture(7) ]], \n    sampler hg_Sampler7 [[ sampler(7) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Texture7.sample(hg_Sampler7, frag._texCoord7.xy);\n    return output;\n}\n//MD5=5dc21ffb:da771f51:4ded01d3:f8c247ab\n//SIG=00000000:00000080:00000000:00000000:0000:0000:0000:0000:0000:0000:0100:0000:0008:08:0:1:0\n";
    qword_280C5D808 = 511;
    xmmword_280C5D810 = 0u;
    xmmword_280C5D820 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D800, v1);

    __cxa_guard_release(&qword_280C5D138);
  }
}

void HGString::sampleRect()
{
  if (__cxa_guard_acquire(&qword_280C5D178))
  {
    qword_280C5D980 = "!!ARBfp1.0     \n##LEN=000000019d\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f7=fragment.texcoord[7];\n##%\n##@\n##7\nTEX $o0,$f7,texture[7],RECT;\nEND\n##MD5=dd11faf4:09e5515e:92d0cd6f:ce9e10ae\n##SIG=00000000:00000080:00000080:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0008:08:0:1:0\n";
    qword_280C5D988 = 413;
    xmmword_280C5D990 = 0u;
    xmmword_280C5D9A0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D980, v1);

    __cxa_guard_release(&qword_280C5D178);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D170))
  {
    qword_280C5D950 = "!!ARBfp1.0     \n##LEN=000000019d\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f6=fragment.texcoord[6];\n##%\n##@\n##6\nTEX $o0,$f6,texture[6],RECT;\nEND\n##MD5=612cfe17:9d77fa2d:25c645b8:3fc04f19\n##SIG=00000000:00000040:00000040:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0007:07:0:1:0\n";
    qword_280C5D958 = 413;
    xmmword_280C5D960 = 0u;
    xmmword_280C5D970 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D950, v1);

    __cxa_guard_release(&qword_280C5D170);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D168))
  {
    qword_280C5D920 = "!!ARBfp1.0     \n##LEN=000000019d\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f5=fragment.texcoord[5];\n##%\n##@\n##5\nTEX $o0,$f5,texture[5],RECT;\nEND\n##MD5=05fcc9b2:9b232369:60268b6e:77392bc9\n##SIG=00000000:00000020:00000020:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0006:06:0:1:0\n";
    qword_280C5D928 = 413;
    xmmword_280C5D930 = 0u;
    xmmword_280C5D940 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D920, v1);

    __cxa_guard_release(&qword_280C5D168);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D160))
  {
    qword_280C5D8F0 = "!!ARBfp1.0     \n##LEN=000000019d\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f4=fragment.texcoord[4];\n##%\n##@\n##4\nTEX $o0,$f4,texture[4],RECT;\nEND\n##MD5=0d4c4995:9892fdda:25d75c20:e69d0655\n##SIG=00000000:00000010:00000010:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0005:05:0:1:0\n";
    qword_280C5D8F8 = 413;
    xmmword_280C5D900 = 0u;
    xmmword_280C5D910 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D8F0, v1);

    __cxa_guard_release(&qword_280C5D160);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D158))
  {
    qword_280C5D8C0 = "!!ARBfp1.0     \n##LEN=000000019d\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f3=fragment.texcoord[3];\n##%\n##@\n##3\nTEX $o0,$f3,texture[3],RECT;\nEND\n##MD5=f09d8453:c175c072:e9ec1c7d:df7723d4\n##SIG=00000000:00000008:00000008:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0004:04:0:1:0\n";
    qword_280C5D8C8 = 413;
    xmmword_280C5D8D0 = 0u;
    xmmword_280C5D8E0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D8C0, v1);

    __cxa_guard_release(&qword_280C5D158);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D150))
  {
    qword_280C5D890 = "!!ARBfp1.0     \n##LEN=000000019d\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f2=fragment.texcoord[2];\n##%\n##@\n##2\nTEX $o0,$f2,texture[2],RECT;\nEND\n##MD5=040e4cc4:32c92579:c792bf9b:f6c58a30\n##SIG=00000000:00000004:00000004:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
    qword_280C5D898 = 413;
    xmmword_280C5D8A0 = 0u;
    xmmword_280C5D8B0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D890, v1);

    __cxa_guard_release(&qword_280C5D150);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D148))
  {
    qword_280C5D860 = "!!ARBfp1.0     \n##LEN=000000019d\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f1=fragment.texcoord[1];\n##%\n##@\n##1\nTEX $o0,$f1,texture[1],RECT;\nEND\n##MD5=187ebb5e:75f053ee:b9cd2328:68d3c628\n##SIG=00000000:00000002:00000002:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
    qword_280C5D868 = 413;
    xmmword_280C5D870 = 0u;
    xmmword_280C5D880 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D860, v1);

    __cxa_guard_release(&qword_280C5D148);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D140))
  {
    qword_280C5D830 = "!!ARBfp1.0     \n##LEN=000000019d\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\n##%\n##@\n##0\nTEX $o0,$f0,texture[0],RECT;\nEND\n##MD5=13e335a2:9b4d2bf6:db2e47e2:03487278\n##SIG=00000000:00000001:00000001:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    qword_280C5D838 = 413;
    xmmword_280C5D840 = 0u;
    xmmword_280C5D850 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D830, v1);

    __cxa_guard_release(&qword_280C5D140);
  }
}

void HGString::zero()
{
  if (__cxa_guard_acquire(&qword_280C5D1A0))
  {
    qword_280C5DA70 = "//GLfs2.0      \n//LEN=0000000142\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nvoid main()\n{\n\n    gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n}\n//MD5=7adfdc9a:833a3e83:3a6b376d:41cc225f\n//SIG=00000000:00000000:00000000:00000000:0008:0000:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    qword_280C5DA78 = 322;
    xmmword_280C5DA80 = 0u;
    xmmword_280C5DA90 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DA70, v1);

    __cxa_guard_release(&qword_280C5D1A0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D198))
  {
    qword_280C5DA40 = "!!ARBfp1.0     \n##LEN=00000001db\n##                          \nOPTION ARB_draw_buffers;      \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nOUTPUT $o1=result.color[1];\nOUTPUT $o2=result.color[2];\nOUTPUT $o3=result.color[3];\n##%\n##@\nMOV $o0,0;\nMOV $o1,0;\nMOV $o2,0;\nMOV $o3,0;\nEND\n##MD5=cadf4aa4:08ce60f0:fa35326a:3fdb468b\n##SIG=00000000:00000000:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0000:00:0:4:0\n";
    qword_280C5DA48 = 475;
    xmmword_280C5DA50 = 0u;
    xmmword_280C5DA60 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DA40, v1);

    __cxa_guard_release(&qword_280C5D198);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D190))
  {
    qword_280C5DA10 = "!!ARBfp1.0     \n##LEN=00000001b4\n##                          \nOPTION ARB_draw_buffers;      \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nOUTPUT $o1=result.color[1];\nOUTPUT $o2=result.color[2];\n##%\n##@\nMOV $o0,0;\nMOV $o1,0;\nMOV $o2,0;\nEND\n##MD5=c57659bc:b333a723:e93c4b2e:3d8afb44\n##SIG=00000000:00000000:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0000:00:0:3:0\n";
    qword_280C5DA18 = 436;
    xmmword_280C5DA20 = 0u;
    xmmword_280C5DA30 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DA10, v1);

    __cxa_guard_release(&qword_280C5D190);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D188))
  {
    qword_280C5D9E0 = "!!ARBfp1.0     \n##LEN=000000018d\n##                          \nOPTION ARB_draw_buffers;      \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nOUTPUT $o1=result.color[1];\n##%\n##@\nMOV $o0,0;\nMOV $o1,0;\nEND\n##MD5=4220a7e0:dd39f279:15beca1d:51f222cf\n##SIG=00000000:00000000:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0000:00:0:2:0\n";
    qword_280C5D9E8 = 397;
    xmmword_280C5D9F0 = 0u;
    xmmword_280C5DA00 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D9E0, v1);

    __cxa_guard_release(&qword_280C5D188);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D180))
  {
    qword_280C5D9B0 = "!!ARBfp1.0     \n##LEN=0000000166\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\n##%\n##@\nMOV $o0,0;\nEND\n##MD5=3ceff9da:f8e4fe0b:1f0d94c2:9c9fb061\n##SIG=00000000:00000000:00000000:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    qword_280C5D9B8 = 358;
    xmmword_280C5D9C0 = 0u;
    xmmword_280C5D9D0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5D9B0, v1);

    __cxa_guard_release(&qword_280C5D180);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D1A8))
  {
    qword_280C5DAA0 = "//Metal1.0     \n//LEN=0000000144\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]])\n{\n    FragmentOut out;\n    out.color0 = float4(0.0, 0.0, 0.0, 0.0);\n    return out;\n}\n//MD5=0e8c5223:95470a31:cf2258f7:9d6891f3\n//SIG=00000000:00000000:00000000:00000000:0004:0000:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    qword_280C5DAA8 = 324;
    xmmword_280C5DAB0 = 0u;
    xmmword_280C5DAC0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DAA0, v1);

    __cxa_guard_release(&qword_280C5D1A8);
  }
}

void HGString::uniform()
{
  if (__cxa_guard_acquire(&qword_280C5D1D0))
  {
    qword_280C5DB90 = "//GLfs2.0      \n//LEN=0000000161\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp vec4 hg_ProgramLocal0;\nvoid main()\n{\n    gl_FragColor = hg_ProgramLocal0;\n}\n//MD5=6f46fc08:7f6efe98:42430a53:9b0c48ab\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    qword_280C5DB98 = 353;
    xmmword_280C5DBA0 = 0u;
    xmmword_280C5DBB0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DB90, v1);

    __cxa_guard_release(&qword_280C5D1D0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D1C8))
  {
    qword_280C5DB60 = "!!ARBfp1.0     \n##LEN=0000000253\n##                          \nOPTION ARB_draw_buffers;      \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nOUTPUT $o1=result.color[1];\nOUTPUT $o2=result.color[2];\nOUTPUT $o3=result.color[3];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\nPARAM $p3=program.local[3];\n##%\n##@\nMOV $o0,$p0;\nMOV $o1,$p1;\nMOV $o2,$p2;\nMOV $o3,$p3;\nEND\n##MD5=b167705d:4bee0a9e:4099e1d1:d66d666c\n##SIG=00000000:00000000:00000000:00000000:0000:0004:0000:0000:0000:0000:0000:0000:0000:00:0:4:0\n";
    qword_280C5DB68 = 595;
    xmmword_280C5DB70 = 0u;
    xmmword_280C5DB80 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DB60, v1);

    __cxa_guard_release(&qword_280C5D1C8);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D1C0))
  {
    qword_280C5DB30 = "!!ARBfp1.0     \n##LEN=000000020e\n##                          \nOPTION ARB_draw_buffers;      \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nOUTPUT $o1=result.color[1];\nOUTPUT $o2=result.color[2];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\n##%\n##@\nMOV $o0,$p0;\nMOV $o1,$p1;\nMOV $o2,$p2;\nEND\n##MD5=f7bc6585:49c7c440:b099ae3e:eb448ac4\n##SIG=00000000:00000000:00000000:00000000:0000:0003:0000:0000:0000:0000:0000:0000:0000:00:0:3:0\n";
    qword_280C5DB38 = 526;
    xmmword_280C5DB40 = 0u;
    xmmword_280C5DB50 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DB30, v1);

    __cxa_guard_release(&qword_280C5D1C0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D1B8))
  {
    qword_280C5DB00 = "!!ARBfp1.0     \n##LEN=00000001c9\n##                          \nOPTION ARB_draw_buffers;      \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nOUTPUT $o1=result.color[1];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\n##%\n##@\nMOV $o0,$p0;\nMOV $o1,$p1;\nEND\n##MD5=738a1d38:64b2f1bf:c3afc4a3:dc2a01ed\n##SIG=00000000:00000000:00000000:00000000:0000:0002:0000:0000:0000:0000:0000:0000:0000:00:0:2:0\n";
    qword_280C5DB08 = 457;
    xmmword_280C5DB10 = 0u;
    xmmword_280C5DB20 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DB00, v1);

    __cxa_guard_release(&qword_280C5D1B8);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D1B0))
  {
    qword_280C5DAD0 = "!!ARBfp1.0     \n##LEN=0000000184\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nPARAM $p0=program.local[0];\n##%\n##@\nMOV $o0,$p0;\nEND\n##MD5=d462425f:378ab328:d024cd98:47c08aa4\n##SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    qword_280C5DAD8 = 388;
    xmmword_280C5DAE0 = 0u;
    xmmword_280C5DAF0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DAD0, v1);

    __cxa_guard_release(&qword_280C5D1B0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D1D8))
  {
    qword_280C5DBC0 = "//Metal1.0     \n//LEN=000000016d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut out;\n    out.color0 = hg_Params[0];\n    return out;\n}\n//MD5=4c294923:0d8b5516:557382a3:0e90cae8\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    qword_280C5DBC8 = 365;
    xmmword_280C5DBD0 = 0u;
    xmmword_280C5DBE0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DBC0, v1);

    __cxa_guard_release(&qword_280C5D1D8);
  }
}

void HGString::transform()
{
  if (__cxa_guard_acquire(qword_280C5D220))
  {
    qword_280C5DD70 = "//GLvs2.0      \n//LEN=00000005ea\nattribute vec4 hg_Position;\nuniform mat4 hg_ProjectionMatrix;\nuniform mat4 hg_TextureMatrix0;\nuniform mat4 hg_TextureMatrix1;\nuniform mat4 hg_TextureMatrix2;\nuniform mat4 hg_TextureMatrix3;\nuniform mat4 hg_TextureMatrix4;\nuniform mat4 hg_TextureMatrix5;\nuniform mat4 hg_TextureMatrix6;\nuniform mat4 hg_TextureMatrix7;\nattribute vec4 hg_MultiTexCoord0;\nattribute vec4 hg_MultiTexCoord1;\nattribute vec4 hg_MultiTexCoord2;\nattribute vec4 hg_MultiTexCoord3;\nattribute vec4 hg_MultiTexCoord4;\nattribute vec4 hg_MultiTexCoord5;\nattribute vec4 hg_MultiTexCoord6;\nattribute vec4 hg_MultiTexCoord7;\nvarying vec4 hg_TexCoord0;\nvarying vec4 hg_TexCoord1;\nvarying vec4 hg_TexCoord2;\nvarying vec4 hg_TexCoord3;\nvarying vec4 hg_TexCoord4;\nvarying vec4 hg_TexCoord5;\nvarying vec4 hg_TexCoord6;\nvarying vec4 hg_TexCoord7;\nvoid main(void)\n{\n    gl_Position = hg_ProjectionMatrix * hg_Position;\n    hg_TexCoord0 = hg_TextureMatrix0 * hg_MultiTexCoord0;\n    hg_TexCoord1 = hg_TextureMatrix1 * hg_MultiTexCoord1;\n    hg_TexCoord2 = hg_TextureMatrix2 * hg_MultiTexCoord2;\n    hg_TexCoord3 = hg_TextureMatrix3 * hg_MultiTexCoord3;\n    hg_TexCoord4 = hg_TextureMatrix4 * hg_MultiTexCoord4;\n    hg_TexCoord5 = hg_TextureMatrix5 * hg_MultiTexCoord5;\n    hg_TexCoord6 = hg_TextureMatrix6 * hg_MultiTexCoord6;\n    hg_TexCoord7 = hg_TextureMatrix7 * hg_MultiTexCoord7;\n}\n//MD5=b215da98:d83418c2:544c293f:9ac9d419\n//SIG=00000000:00000000:00000000:00000000:0000:0024:0000:0000:0000:0000:0000:0000:0008:00:0:0:0\n";
    qword_280C5DD78 = 1514;
    xmmword_280C5DD80 = 0u;
    xmmword_280C5DD90 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DD70, v1);

    __cxa_guard_release(qword_280C5D220);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D218))
  {
    qword_280C5DD40 = "//GLvs2.0      \n//LEN=0000000553\nattribute vec4 hg_Position;\nuniform mat4 hg_ProjectionMatrix;\nuniform mat4 hg_TextureMatrix0;\nuniform mat4 hg_TextureMatrix1;\nuniform mat4 hg_TextureMatrix2;\nuniform mat4 hg_TextureMatrix3;\nuniform mat4 hg_TextureMatrix4;\nuniform mat4 hg_TextureMatrix5;\nuniform mat4 hg_TextureMatrix6;\nattribute vec4 hg_MultiTexCoord0;\nattribute vec4 hg_MultiTexCoord1;\nattribute vec4 hg_MultiTexCoord2;\nattribute vec4 hg_MultiTexCoord3;\nattribute vec4 hg_MultiTexCoord4;\nattribute vec4 hg_MultiTexCoord5;\nattribute vec4 hg_MultiTexCoord6;\nvarying vec4 hg_TexCoord0;\nvarying vec4 hg_TexCoord1;\nvarying vec4 hg_TexCoord2;\nvarying vec4 hg_TexCoord3;\nvarying vec4 hg_TexCoord4;\nvarying vec4 hg_TexCoord5;\nvarying vec4 hg_TexCoord6;\nvoid main(void)\n{\n    gl_Position = hg_ProjectionMatrix * hg_Position;\n    hg_TexCoord0 = hg_TextureMatrix0 * hg_MultiTexCoord0;\n    hg_TexCoord1 = hg_TextureMatrix1 * hg_MultiTexCoord1;\n    hg_TexCoord2 = hg_TextureMatrix2 * hg_MultiTexCoord2;\n    hg_TexCoord3 = hg_TextureMatrix3 * hg_MultiTexCoord3;\n    hg_TexCoord4 = hg_TextureMatrix4 * hg_MultiTexCoord4;\n    hg_TexCoord5 = hg_TextureMatrix5 * hg_MultiTexCoord5;\n    hg_TexCoord6 = hg_TextureMatrix6 * hg_MultiTexCoord6;\n}\n//MD5=7dfc62a1:3d3ce3a2:d06f47b1:41964040\n//SIG=00000000:00000000:00000000:00000000:0000:0020:0000:0000:0000:0000:0000:0000:0007:00:0:0:0\n";
    qword_280C5DD48 = 1363;
    xmmword_280C5DD50 = 0u;
    xmmword_280C5DD60 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DD40, v1);

    __cxa_guard_release(&qword_280C5D218);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D210))
  {
    qword_280C5DD10 = "//GLvs2.0      \n//LEN=00000004bc\nattribute vec4 hg_Position;\nuniform mat4 hg_ProjectionMatrix;\nuniform mat4 hg_TextureMatrix0;\nuniform mat4 hg_TextureMatrix1;\nuniform mat4 hg_TextureMatrix2;\nuniform mat4 hg_TextureMatrix3;\nuniform mat4 hg_TextureMatrix4;\nuniform mat4 hg_TextureMatrix5;\nattribute vec4 hg_MultiTexCoord0;\nattribute vec4 hg_MultiTexCoord1;\nattribute vec4 hg_MultiTexCoord2;\nattribute vec4 hg_MultiTexCoord3;\nattribute vec4 hg_MultiTexCoord4;\nattribute vec4 hg_MultiTexCoord5;\nvarying vec4 hg_TexCoord0;\nvarying vec4 hg_TexCoord1;\nvarying vec4 hg_TexCoord2;\nvarying vec4 hg_TexCoord3;\nvarying vec4 hg_TexCoord4;\nvarying vec4 hg_TexCoord5;\nvoid main(void)\n{\n    gl_Position = hg_ProjectionMatrix * hg_Position;\n    hg_TexCoord0 = hg_TextureMatrix0 * hg_MultiTexCoord0;\n    hg_TexCoord1 = hg_TextureMatrix1 * hg_MultiTexCoord1;\n    hg_TexCoord2 = hg_TextureMatrix2 * hg_MultiTexCoord2;\n    hg_TexCoord3 = hg_TextureMatrix3 * hg_MultiTexCoord3;\n    hg_TexCoord4 = hg_TextureMatrix4 * hg_MultiTexCoord4;\n    hg_TexCoord5 = hg_TextureMatrix5 * hg_MultiTexCoord5;\n}\n//MD5=450acf6f:24c8abd8:64c7ce12:3c4bd63d\n//SIG=00000000:00000000:00000000:00000000:0000:001c:0000:0000:0000:0000:0000:0000:0006:00:0:0:0\n";
    qword_280C5DD18 = 1212;
    xmmword_280C5DD20 = 0u;
    xmmword_280C5DD30 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DD10, v1);

    __cxa_guard_release(&qword_280C5D210);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D208))
  {
    qword_280C5DCE0 = "//GLvs2.0      \n//LEN=0000000425\nattribute vec4 hg_Position;\nuniform mat4 hg_ProjectionMatrix;\nuniform mat4 hg_TextureMatrix0;\nuniform mat4 hg_TextureMatrix1;\nuniform mat4 hg_TextureMatrix2;\nuniform mat4 hg_TextureMatrix3;\nuniform mat4 hg_TextureMatrix4;\nattribute vec4 hg_MultiTexCoord0;\nattribute vec4 hg_MultiTexCoord1;\nattribute vec4 hg_MultiTexCoord2;\nattribute vec4 hg_MultiTexCoord3;\nattribute vec4 hg_MultiTexCoord4;\nvarying vec4 hg_TexCoord0;\nvarying vec4 hg_TexCoord1;\nvarying vec4 hg_TexCoord2;\nvarying vec4 hg_TexCoord3;\nvarying vec4 hg_TexCoord4;\nvoid main(void)\n{\n    gl_Position = hg_ProjectionMatrix * hg_Position;\n    hg_TexCoord0 = hg_TextureMatrix0 * hg_MultiTexCoord0;\n    hg_TexCoord1 = hg_TextureMatrix1 * hg_MultiTexCoord1;\n    hg_TexCoord2 = hg_TextureMatrix2 * hg_MultiTexCoord2;\n    hg_TexCoord3 = hg_TextureMatrix3 * hg_MultiTexCoord3;\n    hg_TexCoord4 = hg_TextureMatrix4 * hg_MultiTexCoord4;\n}\n//MD5=9d94f62f:3562211b:261ee061:c15dfe35\n//SIG=00000000:00000000:00000000:00000000:0000:0018:0000:0000:0000:0000:0000:0000:0005:00:0:0:0\n";
    qword_280C5DCE8 = 1061;
    xmmword_280C5DCF0 = 0u;
    xmmword_280C5DD00 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DCE0, v1);

    __cxa_guard_release(&qword_280C5D208);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D200))
  {
    qword_280C5DCB0 = "//GLvs2.0      \n//LEN=000000038e\nattribute vec4 hg_Position;\nuniform mat4 hg_ProjectionMatrix;\nuniform mat4 hg_TextureMatrix0;\nuniform mat4 hg_TextureMatrix1;\nuniform mat4 hg_TextureMatrix2;\nuniform mat4 hg_TextureMatrix3;\nattribute vec4 hg_MultiTexCoord0;\nattribute vec4 hg_MultiTexCoord1;\nattribute vec4 hg_MultiTexCoord2;\nattribute vec4 hg_MultiTexCoord3;\nvarying vec4 hg_TexCoord0;\nvarying vec4 hg_TexCoord1;\nvarying vec4 hg_TexCoord2;\nvarying vec4 hg_TexCoord3;\nvoid main(void)\n{\n    gl_Position = hg_ProjectionMatrix * hg_Position;\n    hg_TexCoord0 = hg_TextureMatrix0 * hg_MultiTexCoord0;\n    hg_TexCoord1 = hg_TextureMatrix1 * hg_MultiTexCoord1;\n    hg_TexCoord2 = hg_TextureMatrix2 * hg_MultiTexCoord2;\n    hg_TexCoord3 = hg_TextureMatrix3 * hg_MultiTexCoord3;\n}\n//MD5=50ca4534:b10918ea:75eb3624:be748584\n//SIG=00000000:00000000:00000000:00000000:0000:0014:0000:0000:0000:0000:0000:0000:0004:00:0:0:0\n";
    qword_280C5DCB8 = 910;
    xmmword_280C5DCC0 = 0u;
    xmmword_280C5DCD0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DCB0, v1);

    __cxa_guard_release(&qword_280C5D200);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D1F8))
  {
    qword_280C5DC80 = "//GLvs2.0      \n//LEN=00000002f7\nattribute vec4 hg_Position;\nuniform mat4 hg_ProjectionMatrix;\nuniform mat4 hg_TextureMatrix0;\nuniform mat4 hg_TextureMatrix1;\nuniform mat4 hg_TextureMatrix2;\nattribute vec4 hg_MultiTexCoord0;\nattribute vec4 hg_MultiTexCoord1;\nattribute vec4 hg_MultiTexCoord2;\nvarying vec4 hg_TexCoord0;\nvarying vec4 hg_TexCoord1;\nvarying vec4 hg_TexCoord2;\nvoid main(void)\n{\n    gl_Position = hg_ProjectionMatrix * hg_Position;\n    hg_TexCoord0 = hg_TextureMatrix0 * hg_MultiTexCoord0;\n    hg_TexCoord1 = hg_TextureMatrix1 * hg_MultiTexCoord1;\n    hg_TexCoord2 = hg_TextureMatrix2 * hg_MultiTexCoord2;\n}\n//MD5=46e1660d:64e5cba3:90dbf667:6da3c1bc\n//SIG=00000000:00000000:00000000:00000000:0000:0010:0000:0000:0000:0000:0000:0000:0003:00:0:0:0\n";
    qword_280C5DC88 = 759;
    xmmword_280C5DC90 = 0u;
    xmmword_280C5DCA0 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DC80, v1);

    __cxa_guard_release(&qword_280C5D1F8);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D1F0))
  {
    qword_280C5DC50 = "//GLvs2.0      \n//LEN=0000000260\nattribute vec4 hg_Position;\nuniform mat4 hg_ProjectionMatrix;\nuniform mat4 hg_TextureMatrix0;\nuniform mat4 hg_TextureMatrix1;\nattribute vec4 hg_MultiTexCoord0;\nattribute vec4 hg_MultiTexCoord1;\nvarying vec4 hg_TexCoord0;\nvarying vec4 hg_TexCoord1;\nvoid main(void)\n{\n    gl_Position = hg_ProjectionMatrix * hg_Position;\n    hg_TexCoord0 = hg_TextureMatrix0 * hg_MultiTexCoord0;\n    hg_TexCoord1 = hg_TextureMatrix1 * hg_MultiTexCoord1;\n}\n//MD5=0d16a22d:f5ee5b44:fa0fdd4e:171d7327\n//SIG=00000000:00000000:00000000:00000000:0000:000c:0000:0000:0000:0000:0000:0000:0002:00:0:0:0\n";
    qword_280C5DC58 = 608;
    xmmword_280C5DC60 = 0u;
    xmmword_280C5DC70 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DC50, v1);

    __cxa_guard_release(&qword_280C5D1F0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D1E8))
  {
    qword_280C5DC20 = "//GLvs2.0      \n//LEN=00000001c9\nattribute vec4 hg_Position;\nuniform mat4 hg_ProjectionMatrix;\nuniform mat4 hg_TextureMatrix0;\nattribute vec4 hg_MultiTexCoord0;\nvarying vec4 hg_TexCoord0;\nvoid main(void)\n{\n    gl_Position = hg_ProjectionMatrix * hg_Position;\n    hg_TexCoord0 = hg_TextureMatrix0 * hg_MultiTexCoord0;\n}\n//MD5=71174425:010f0f7c:df2f36ee:91448d34\n//SIG=00000000:00000000:00000000:00000000:0000:0008:0000:0000:0000:0000:0000:0000:0001:00:0:0:0\n";
    qword_280C5DC28 = 457;
    xmmword_280C5DC30 = 0u;
    xmmword_280C5DC40 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DC20, v1);

    __cxa_guard_release(&qword_280C5D1E8);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5D1E0))
  {
    qword_280C5DBF0 = "//GLvs2.0      \n//LEN=0000000132\nattribute vec4 hg_Position;\nuniform mat4 hg_ProjectionMatrix;\nvoid main(void)\n{\n    gl_Position = hg_ProjectionMatrix * hg_Position;\n}\n//MD5=798335e4:f8112073:f251d283:ad257ca6\n//SIG=00000000:00000000:00000000:00000000:0000:0004:0000:0000:0000:0000:0000:0000:0000:00:0:0:0\n";
    qword_280C5DBF8 = 306;
    xmmword_280C5DC00 = 0u;
    xmmword_280C5DC10 = 0u;
    v0 = OUTLINED_FUNCTION_0_5();
    __cxa_atexit(v0, &qword_280C5DBF0, v1);

    __cxa_guard_release(&qword_280C5D1E0);
  }
}

void HRasterizerTexture::~HRasterizerTexture(HRasterizerTexture *this)
{
  HgcRasterizerTexture::~HgcRasterizerTexture(this);

  HGObject::operator delete(v1);
}

void HGSynchronizable::HGSynchronizable(HGSynchronizable *this)
{
  this->var0 = &unk_2872142D0;
  this->var2 = 0;
  this->var3 = 0;
  pthread_mutex_init(&this->var1, 0);
  pthread_cond_init(&this->var4, 0);
}

void HGSynchronizable::~HGSynchronizable(HGSynchronizable *this)
{
  this->var0 = &unk_2872142D0;
  pthread_cond_destroy(&this->var4);
  pthread_mutex_destroy(&this->var1);
}

{
  this->var0 = &unk_2872142D0;
  pthread_cond_destroy(&this->var4);
  pthread_mutex_destroy(&this->var1);

  JUMPOUT(0x2666E9F00);
}

_opaque_pthread_t *HGSynchronizable::Lock(HGSynchronizable *this)
{
  var2 = this->var2;
  result = pthread_self();
  if (var2 == result)
  {
    ++this->var3;
  }

  else
  {
    pthread_mutex_lock(&this->var1);
    this->var3 = 0;
    result = pthread_self();
    this->var2 = result;
  }

  return result;
}

HGSynchronizable *HGSynchronizable::Unlock(HGSynchronizable *this)
{
  var3 = this->var3;
  if (var3)
  {
    this->var3 = var3 - 1;
  }

  else
  {
    this->var2 = 0;
    this->var3 = 0;
    return pthread_mutex_unlock(&this->var1);
  }

  return this;
}

pthread_t HGSynchronizable::Wait(HGSynchronizable *this)
{
  var3 = this->var3;
  this->var2 = 0;
  p_var2 = &this->var2;
  this->var3 = 0;
  pthread_cond_wait(&this->var4, &this->var1);
  this->var3 = var3;
  result = pthread_self();
  *p_var2 = result;
  return result;
}

uint64_t HGMultiTexBlendBase::create(HGMultiTexBlendBase *this)
{
  if (this <= 4)
  {
    switch(this)
    {
      case 2:
        v4 = HGObject::operator new(0x1E0uLL);
        HGMultiTexBlend<2>::HGMultiTexBlend(v4);
      case 3:
        v7 = HGObject::operator new(0x1E0uLL);
        HGMultiTexBlend<3>::HGMultiTexBlend(v7);
      case 4:
        v2 = HGObject::operator new(0x1F0uLL);
        HGMultiTexBlend<4>::HGMultiTexBlend(v2);
    }
  }

  else
  {
    if (this <= 6)
    {
      if (this != 5)
      {
        v1 = HGObject::operator new(0x200uLL);
        HGMultiTexBlend<6>::HGMultiTexBlend(v1);
      }

      v5 = HGObject::operator new(0x1F0uLL);
      HGMultiTexBlend<5>::HGMultiTexBlend(v5);
    }

    if (this == 7)
    {
      v6 = HGObject::operator new(0x200uLL);
      HGMultiTexBlend<7>::HGMultiTexBlend(v6);
    }

    if (this == 8)
    {
      v3 = HGObject::operator new(0x210uLL);
      HGMultiTexBlend<8>::HGMultiTexBlend(v3);
    }
  }

  return 0;
}

void HGMultiTexBlend<2>::HGMultiTexBlend(uint64_t a1)
{
  HGNode::HGNode(a1);
  *v2 = &unk_287214300;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  *(a1 + 440) = v3;
  v4 = HGObject::operator new(0x1A0uLL);
  HgcMultiTexBlend_2::HgcMultiTexBlend_2(v4);
}

void sub_25FC37EBC(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGMultiTexBlend<2>::~HGMultiTexBlend(HGNode *this)
{
  *this = &unk_287214300;
  v2 = *(this + 55);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 58);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 56);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 57);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  HGNode::~HGNode(this);
}

void HGMultiTexBlend<2>::~HGMultiTexBlend(HGNode *a1)
{
  HGMultiTexBlend<2>::~HGMultiTexBlend(a1);

  HGObject::operator delete(v1);
}

uint64_t HGMultiTexBlend<2>::setTransform(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + 448;
  result = *(a1 + 448 + 8 * a2);
  if (result)
  {
    (*(*result + 576))(result, a3);
    v6 = *(**(v3 + 8 * a2) + 160);

    return v6();
  }

  return result;
}

uint64_t HGMultiTexBlend<2>::GetOutput(uint64_t a1, HGRenderer *a2)
{
  (*(**(a1 + 464) + 96))(*(a1 + 464), 0, *(a1 + 408), *(a1 + 412), *(a1 + 416), *(a1 + 420));
  (*(**(a1 + 464) + 96))(*(a1 + 464), 1, *(a1 + 424), *(a1 + 428), *(a1 + 432), *(a1 + 436));
  v4 = *(a1 + 440);
  Input = HGRenderer::GetInput(a2, a1, 0);
  (*(*v4 + 120))(v4, 0, Input);
  return *(a1 + 464);
}

void HGMultiTexBlend<3>::HGMultiTexBlend(uint64_t a1)
{
  HGNode::HGNode(a1);
  *v2 = &unk_287214560;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  *(a1 + 440) = v3;
  v4 = HGObject::operator new(0x1A0uLL);
  HgcMultiTexBlend_3::HgcMultiTexBlend_3(v4);
}

void sub_25FC383C4(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGMultiTexBlend<3>::~HGMultiTexBlend(HGNode *this)
{
  *this = &unk_287214560;
  v2 = *(this + 55);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 59);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 56);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 57);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 58);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  HGNode::~HGNode(this);
}

void HGMultiTexBlend<3>::~HGMultiTexBlend(HGNode *a1)
{
  HGMultiTexBlend<3>::~HGMultiTexBlend(a1);

  HGObject::operator delete(v1);
}

uint64_t HGMultiTexBlend<3>::setTransform(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + 448;
  result = *(a1 + 448 + 8 * a2);
  if (result)
  {
    (*(*result + 576))(result, a3);
    v6 = *(**(v3 + 8 * a2) + 160);

    return v6();
  }

  return result;
}

uint64_t HGMultiTexBlend<3>::GetOutput(uint64_t a1, HGRenderer *a2)
{
  (*(**(a1 + 472) + 96))(*(a1 + 472), 0, *(a1 + 408), *(a1 + 412), *(a1 + 416), *(a1 + 420));
  (*(**(a1 + 472) + 96))(*(a1 + 472), 1, *(a1 + 424), *(a1 + 428), *(a1 + 432), *(a1 + 436));
  v4 = *(a1 + 440);
  Input = HGRenderer::GetInput(a2, a1, 0);
  (*(*v4 + 120))(v4, 0, Input);
  return *(a1 + 472);
}

void HGMultiTexBlend<4>::HGMultiTexBlend(uint64_t a1)
{
  HGNode::HGNode(a1);
  *v2 = &unk_2872147C0;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  *(a1 + 440) = v3;
  v4 = HGObject::operator new(0x1A0uLL);
  HgcMultiTexBlend_4::HgcMultiTexBlend_4(v4);
}

void sub_25FC38968(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGMultiTexBlend<4>::~HGMultiTexBlend(HGNode *this)
{
  *this = &unk_2872147C0;
  v2 = *(this + 55);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 60);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 56);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 57);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 58);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 59);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  HGNode::~HGNode(this);
}

void HGMultiTexBlend<4>::~HGMultiTexBlend(HGNode *a1)
{
  HGMultiTexBlend<4>::~HGMultiTexBlend(a1);

  HGObject::operator delete(v1);
}

uint64_t HGMultiTexBlend<4>::setTransform(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + 448;
  result = *(a1 + 448 + 8 * a2);
  if (result)
  {
    (*(*result + 576))(result, a3);
    v6 = *(**(v3 + 8 * a2) + 160);

    return v6();
  }

  return result;
}

uint64_t HGMultiTexBlend<4>::GetOutput(uint64_t a1, HGRenderer *a2)
{
  (*(**(a1 + 480) + 96))(*(a1 + 480), 0, *(a1 + 408), *(a1 + 412), *(a1 + 416), *(a1 + 420));
  (*(**(a1 + 480) + 96))(*(a1 + 480), 1, *(a1 + 424), *(a1 + 428), *(a1 + 432), *(a1 + 436));
  v4 = *(a1 + 440);
  Input = HGRenderer::GetInput(a2, a1, 0);
  (*(*v4 + 120))(v4, 0, Input);
  return *(a1 + 480);
}

void HGMultiTexBlend<5>::HGMultiTexBlend(uint64_t a1)
{
  HGNode::HGNode(a1);
  *v2 = &unk_287214A20;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  *(a1 + 440) = v3;
  v4 = HGObject::operator new(0x1A0uLL);
  HgcMultiTexBlend_5::HgcMultiTexBlend_5(v4);
}

void sub_25FC38FC8(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGMultiTexBlend<5>::~HGMultiTexBlend(HGNode *this)
{
  *this = &unk_287214A20;
  v2 = *(this + 55);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 61);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 56);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 57);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 58);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 59);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(this + 60);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  HGNode::~HGNode(this);
}

void HGMultiTexBlend<5>::~HGMultiTexBlend(HGNode *a1)
{
  HGMultiTexBlend<5>::~HGMultiTexBlend(a1);

  HGObject::operator delete(v1);
}

uint64_t HGMultiTexBlend<5>::setTransform(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + 448;
  result = *(a1 + 448 + 8 * a2);
  if (result)
  {
    (*(*result + 576))(result, a3);
    v6 = *(**(v3 + 8 * a2) + 160);

    return v6();
  }

  return result;
}

uint64_t HGMultiTexBlend<5>::GetOutput(uint64_t a1, HGRenderer *a2)
{
  (*(**(a1 + 488) + 96))(*(a1 + 488), 0, *(a1 + 408), *(a1 + 412), *(a1 + 416), *(a1 + 420));
  (*(**(a1 + 488) + 96))(*(a1 + 488), 1, *(a1 + 424), *(a1 + 428), *(a1 + 432), *(a1 + 436));
  v4 = *(a1 + 440);
  Input = HGRenderer::GetInput(a2, a1, 0);
  (*(*v4 + 120))(v4, 0, Input);
  return *(a1 + 488);
}

void HGMultiTexBlend<6>::HGMultiTexBlend(uint64_t a1)
{
  HGNode::HGNode(a1);
  *v2 = &unk_287214C80;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  *(a1 + 440) = v3;
  v4 = HGObject::operator new(0x1A0uLL);
  HgcMultiTexBlend_6::HgcMultiTexBlend_6(v4);
}

void sub_25FC396D4(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGMultiTexBlend<6>::~HGMultiTexBlend(HGNode *this)
{
  *this = &unk_287214C80;
  v2 = *(this + 55);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 62);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 56);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 57);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 58);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 59);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(this + 60);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(this + 61);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  HGNode::~HGNode(this);
}

void HGMultiTexBlend<6>::~HGMultiTexBlend(HGNode *a1)
{
  HGMultiTexBlend<6>::~HGMultiTexBlend(a1);

  HGObject::operator delete(v1);
}

uint64_t HGMultiTexBlend<6>::setTransform(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + 448;
  result = *(a1 + 448 + 8 * a2);
  if (result)
  {
    (*(*result + 576))(result, a3);
    v6 = *(**(v3 + 8 * a2) + 160);

    return v6();
  }

  return result;
}

uint64_t HGMultiTexBlend<6>::GetOutput(uint64_t a1, HGRenderer *a2)
{
  (*(**(a1 + 496) + 96))(*(a1 + 496), 0, *(a1 + 408), *(a1 + 412), *(a1 + 416), *(a1 + 420));
  (*(**(a1 + 496) + 96))(*(a1 + 496), 1, *(a1 + 424), *(a1 + 428), *(a1 + 432), *(a1 + 436));
  v4 = *(a1 + 440);
  Input = HGRenderer::GetInput(a2, a1, 0);
  (*(*v4 + 120))(v4, 0, Input);
  return *(a1 + 496);
}

void HGMultiTexBlend<7>::HGMultiTexBlend(uint64_t a1)
{
  HGNode::HGNode(a1);
  *v2 = &unk_287214EE0;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  *(a1 + 440) = v3;
  v4 = HGObject::operator new(0x1A0uLL);
  HgcMultiTexBlend_7::HgcMultiTexBlend_7(v4);
}

void sub_25FC39E8C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGMultiTexBlend<7>::~HGMultiTexBlend(HGNode *this)
{
  *this = &unk_287214EE0;
  v2 = *(this + 55);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 63);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 56);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 57);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 58);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 59);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(this + 60);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(this + 61);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  v10 = *(this + 62);
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  HGNode::~HGNode(this);
}

void HGMultiTexBlend<7>::~HGMultiTexBlend(HGNode *a1)
{
  HGMultiTexBlend<7>::~HGMultiTexBlend(a1);

  HGObject::operator delete(v1);
}

uint64_t HGMultiTexBlend<7>::setTransform(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + 448;
  result = *(a1 + 448 + 8 * a2);
  if (result)
  {
    (*(*result + 576))(result, a3);
    v6 = *(**(v3 + 8 * a2) + 160);

    return v6();
  }

  return result;
}

uint64_t HGMultiTexBlend<7>::GetOutput(uint64_t a1, HGRenderer *a2)
{
  (*(**(a1 + 504) + 96))(*(a1 + 504), 0, *(a1 + 408), *(a1 + 412), *(a1 + 416), *(a1 + 420));
  (*(**(a1 + 504) + 96))(*(a1 + 504), 1, *(a1 + 424), *(a1 + 428), *(a1 + 432), *(a1 + 436));
  v4 = *(a1 + 440);
  Input = HGRenderer::GetInput(a2, a1, 0);
  (*(*v4 + 120))(v4, 0, Input);
  return *(a1 + 504);
}

void HGMultiTexBlend<8>::HGMultiTexBlend(uint64_t a1)
{
  HGNode::HGNode(a1);
  *v2 = &unk_287215140;
  v3 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v3);
  *(a1 + 440) = v3;
  v4 = HGObject::operator new(0x1A0uLL);
  HgcMultiTexBlend_8::HgcMultiTexBlend_8(v4);
}

void sub_25FC3A6D0(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGMultiTexBlend<8>::~HGMultiTexBlend(HGNode *this)
{
  *this = &unk_287215140;
  v2 = *(this + 55);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 64);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 56);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 57);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 58);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 59);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(this + 60);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(this + 61);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  v10 = *(this + 62);
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = *(this + 63);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  HGNode::~HGNode(this);
}

void HGMultiTexBlend<8>::~HGMultiTexBlend(HGNode *a1)
{
  HGMultiTexBlend<8>::~HGMultiTexBlend(a1);

  HGObject::operator delete(v1);
}

uint64_t HGMultiTexBlend<8>::setTransform(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + 448;
  result = *(a1 + 448 + 8 * a2);
  if (result)
  {
    (*(*result + 576))(result, a3);
    v6 = *(**(v3 + 8 * a2) + 160);

    return v6();
  }

  return result;
}

uint64_t HGMultiTexBlend<8>::GetOutput(uint64_t a1, HGRenderer *a2)
{
  (*(**(a1 + 512) + 96))(*(a1 + 512), 0, *(a1 + 408), *(a1 + 412), *(a1 + 416), *(a1 + 420));
  (*(**(a1 + 512) + 96))(*(a1 + 512), 1, *(a1 + 424), *(a1 + 428), *(a1 + 432), *(a1 + 436));
  v4 = *(a1 + 440);
  Input = HGRenderer::GetInput(a2, a1, 0);
  (*(*v4 + 120))(v4, 0, Input);
  return *(a1 + 512);
}

void HGGradientRadial::HGGradientRadial(HGGradientRadial *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_287215460;
  *(v2 + 416) = 0;
  HGNode::SetFlags(v2, 0, 5);
  *(this + 4) |= 0x601u;
  *(this + 102) = 3;
}

void sub_25FC3AB5C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 416);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGGradientRadial::~HGGradientRadial(HGGradientRadial *this)
{
  *this = &unk_287215460;
  v1 = *(this + 52);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 52));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGGradientRadial::~HGGradientRadial(HGNode *this)
{
  *this = &unk_287215460;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGGradientRadial::GetOutput(HGNode *this, HGRenderer *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  Input = HGRenderer::GetInput(a2, this, 0);
  if (!(*(*a2 + 304))(a2) || (DOD = HGRenderer::GetDOD(a2, Input), (HIDWORD(v6) - HIDWORD(DOD)) > 1))
  {
    (*(*this + 104))(this, 3, &v39);
    (*(*this + 104))(this, 4, &v36);
    (*(*this + 104))(this, 5, &v33);
    v10 = *&v39.var0 == 1.0;
    if (*&v39.var1 != 0.0)
    {
      v10 = 0;
    }

    v9.n128_f32[0] = v33;
    v8.n128_f32[0] = v34;
    v7.n128_f32[0] = v35;
    if (v10 && *&v39.var3 == 0.0 && v36 == 0.0 && v37 == 1.0 && v38 == 0.0 && v33 == 0.0 && v34 == 0.0 && v35 == 1.0)
    {
      v11 = 0;
LABEL_33:
      *(this + 102) = v11;
      (*(*this + 104))(this, 2, v32, v7, v8, v9);
      v32[3] = 1.0 / v32[0];
      (*(*this + 96))(this, 2);
      v21 = *(this + 102);
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v25 = HGObject::operator new(0x1A0uLL);
          HgcGradientRadialAffine::HgcGradientRadialAffine(v25);
        }

        if (v21 == 3)
        {
          v23 = HGObject::operator new(0x1A0uLL);
          HgcGradientRadialPerspective::HgcGradientRadialPerspective(v23);
        }
      }

      else
      {
        if (!v21)
        {
          v24 = HGObject::operator new(0x1A0uLL);
          HgcGradientRadialIdentity::HgcGradientRadialIdentity(v24);
        }

        if (v21 == 1)
        {
          v22 = HGObject::operator new(0x1A0uLL);
          HgcGradientRadialTranslate::HgcGradientRadialTranslate(v22);
        }
      }

      (*(**(this + 52) + 120))(*(this + 52), 0, Input);
      (*(*this + 104))(this, 0, &v28);
      (*(**(this + 52) + 96))(*(this + 52), 0, v28, v29, v30, v31);
      (*(*this + 104))(this, 1, &v28);
      (*(**(this + 52) + 96))(*(this + 52), 1, v28, v29, v30, v31);
      (*(*this + 104))(this, 2, &v28);
      (*(**(this + 52) + 96))(*(this + 52), 2, v28, v29, v30, v31);
      (*(*this + 104))(this, 3, &v28);
      (*(**(this + 52) + 96))(*(this + 52), 3, v28, v29, v30, v31);
      (*(*this + 104))(this, 4, &v28);
      (*(**(this + 52) + 96))(*(this + 52), 4, v28, v29, v30, v31);
      (*(*this + 104))(this, 5, &v28);
      (*(**(this + 52) + 96))(*(this + 52), 5, v28, v29, v30, v31);
      (*(*this + 104))(this, 6, &v28);
      (*(**(this + 52) + 96))(*(this + 52), 6, v28, v29, v30, v31);
      return *(this + 52);
    }

    if (v36 != 0.0)
    {
      v10 = 0;
    }

    if (v10 && v37 == 1.0)
    {
      if (v33 != 0.0)
      {
        goto LABEL_32;
      }

      if (v34 == 0.0 && v35 == 1.0)
      {
        v11 = 1;
        goto LABEL_33;
      }
    }

    if (v33 == 0.0 && v34 == 0.0)
    {
      v8.n128_u32[0] = 1.0;
      if (v35 == 1.0)
      {
        v11 = 2;
        goto LABEL_33;
      }
    }

LABEL_32:
    v11 = 3;
    goto LABEL_33;
  }

  v13 = DOD;
  v14 = v6;
  v15 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v15);
  HGTextureWrap::SetTextureWrapMode(v15, 3, v16);
  v17 = HGRectMake4i(0, 0, 0, 1u);
  *&v39.var0 = HGRectGrow(v13, v14, v17);
  *&v39.var2 = v18;
  HGTextureWrap::SetCropRect(v15, &v39);
  (*(*v15 + 120))(v15, 0, Input);
  v19 = HGObject::operator new(0x1B0uLL);
  HGNode::HGNode(v19);
  *v19 = &unk_287215460;
  *(v19 + 52) = 0;
  HGNode::SetFlags(v19, 0, 5);
  *(v19 + 4) |= 0x601u;
  *(v19 + 102) = 3;
  v20 = *(this + 52);
  if (v20 == v19)
  {
    (*(*v19 + 24))(v19);
    v19 = *(this + 52);
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 24))(v20);
    }

    *(this + 52) = v19;
  }

  (*(*v19 + 120))(v19, 0, v15);
  (*(*this + 104))(this, 0, &v39);
  (*(**(this + 52) + 96))(*(this + 52), 0, *&v39.var0, *&v39.var1, *&v39.var2, *&v39.var3);
  (*(*this + 104))(this, 1, &v39);
  (*(**(this + 52) + 96))(*(this + 52), 1, *&v39.var0, *&v39.var1, *&v39.var2, *&v39.var3);
  (*(*this + 104))(this, 2, &v39);
  (*(**(this + 52) + 96))(*(this + 52), 2, *&v39.var0, *&v39.var1, *&v39.var2, *&v39.var3);
  (*(*this + 104))(this, 3, &v39);
  (*(**(this + 52) + 96))(*(this + 52), 3, *&v39.var0, *&v39.var1, *&v39.var2, *&v39.var3);
  (*(*this + 104))(this, 4, &v39);
  (*(**(this + 52) + 96))(*(this + 52), 4, *&v39.var0, *&v39.var1, *&v39.var2, *&v39.var3);
  (*(*this + 104))(this, 5, &v39);
  (*(**(this + 52) + 96))(*(this + 52), 5, *&v39.var0, *&v39.var1, *&v39.var2, *&v39.var3);
  (*(*this + 104))(this, 6, &v39);
  (*(**(this + 52) + 96))(*(this + 52), 6, *&v39.var0, *&v39.var1, *&v39.var2, *&v39.var3);
  v27 = *(this + 52);
  (*(*v15 + 24))(v15);
  return v27;
}

void sub_25FC3B914(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const char *HGGradientRadial::label_B(HGGradientRadial *this)
{
  v1 = *(this + 102);
  if (v1 > 2)
  {
    return "kXFormPerspective";
  }

  else
  {
    return off_279AA87B0[v1];
  }
}

void HGGradientRadial::info(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t HGColorConformLook3DLUT::HGColorConformLook3DLUT(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  HGObject::HGObject(a1);
  *v4 = &unk_287222BB8;
  v4[8] = 0;
  v4[2] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[4] = 33;
  v5 = 0;
  v6 = @"CinemaGamut_CanonLog2-to-BT.709_WideDR_33_Ver1.0";
  switch(a2)
  {
    case 0:
      v5 = 0;
      *(a1 + 32) = 65;
      v6 = @"ARRI_LogC4-to-Gamma24_Rec709-D65_v1-65";
      goto LABEL_15;
    case 1:
      *(a1 + 32) = 65;
      v6 = @"ARRI_LogC4-to-Gamma24_Rec2020-D65_v1-65";
      v5 = 3;
      goto LABEL_15;
    case 2:
      goto LABEL_15;
    case 3:
      v6 = @"CinemaGamut_CanonLog2-to-BT.2020_WideDR_33_Ver1.0";
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 0;
      v6 = @"CinemaGamut_CanonLog3-to-BT.709_WideDR_33_Ver1.0";
      goto LABEL_15;
    case 5:
      v6 = @"CinemaGamut_CanonLog3-to-BT.2020_WideDR_33_Ver1.0";
      v5 = 3;
      goto LABEL_15;
    case 6:
      v5 = 0;
      v6 = @"VLog_to_V709_forV35_ver100";
      goto LABEL_15;
    case 7:
      v6 = @"VLog_to_V2020_forV35_20160707";
      v5 = 3;
      goto LABEL_15;
    case 8:
      v5 = 0;
      v6 = @"Z_6_N-Log-Full_to_REC709_Full_33_V01-00";
      goto LABEL_15;
    case 9:
      v5 = 0;
      *(a1 + 32) = 65;
      v6 = @"AppleLogToRec709_v1.0";
      goto LABEL_15;
    case 10:
      v5 = 0;
      v6 = @"DJI_Mavic_3_D-Log_to_Rec.709_V1";
      goto LABEL_15;
    case 11:
      v5 = 0;
      v6 = @"XH2S_FLog_FGamut_to_WDR_BT.709_33grid_V.1.00";
      goto LABEL_15;
    case 12:
      v5 = 0;
      v6 = @"XH2S_FLog2_FGamut_to_WDR_BT.709_33grid_V.1.00";
LABEL_15:
      *(a1 + 108) = v5;
      *(a1 + 112) = 1;
      break;
    default:
      v6 = 0;
      break;
  }

  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Helium"];
  if (v7 && (v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:{objc_msgSend(v7, "pathForResource:ofType:", v6, @"3dlut"}], (v9 = v8) != 0))
  {
    CC_SHA1([v8 bytes], objc_msgSend(v8, "length"), md);
    HGColorConformLook3DLUT::SetChecksum(a1, md, 20);
    HGColorConformLook3DLUT::SetBuffer(a1, v9);
    *(a1 + 24) = 1065353216;
    v10 = *(a1 + 32);
    *(a1 + 40) = 6 * v10;
    *(a1 + 48) = 6 * v10 * v10;
    *(a1 + 56) = 0;
    *(a1 + 60) = 1;
    *(a1 + 88) = xmmword_2603431B0;
    *(a1 + 104) = 0;
  }

  else
  {
    HGColorConformLook3DLUT::Clear(a1);
  }

  return a1;
}

void sub_25FC3BE24(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 9) = v4;
    operator delete(v4);
  }

  HGObject::~HGObject(v1);
  _Unwind_Resume(a1);
}

void HGTransform::HGTransform(HGTransform *this)
{
  HGObject::HGObject(this);
  *v1 = &unk_2872156C8;
  *(v1 + 56) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 16) = 0x3FF0000000000000;
  *(v1 + 56) = 0x3FF0000000000000;
  *(v1 + 96) = 0x3FF0000000000000;
  *(v1 + 136) = 0x3FF0000000000000;
}

void HGTransform::~HGTransform(HGTransform *this)
{
  HGObject::~HGObject(this);

  HGObject::operator delete(v1);
}

float64x2_t HGTransform::GetMatrixf(float64x2_t *this, float32x4_t *a2)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(this[3]), this[4]);
  *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(this[1]), this[2]);
  a2[1] = v2;
  result = this[8];
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(this[7]), result);
  a2[2] = vcvt_hight_f32_f64(vcvt_f32_f64(this[5]), this[6]);
  a2[3] = v4;
  return result;
}

double HGTransform::GetMatrixd(HGTransform *this, double *a2)
{
  *a2 = *(this + 2);
  a2[1] = *(this + 3);
  a2[2] = *(this + 4);
  a2[3] = *(this + 5);
  a2[4] = *(this + 6);
  a2[5] = *(this + 7);
  a2[6] = *(this + 8);
  a2[7] = *(this + 9);
  a2[8] = *(this + 10);
  a2[9] = *(this + 11);
  a2[10] = *(this + 12);
  a2[11] = *(this + 13);
  a2[12] = *(this + 14);
  a2[13] = *(this + 15);
  a2[14] = *(this + 16);
  result = *(this + 17);
  a2[15] = result;
  return result;
}

float64x2_t HGTransform::GetMatrixfloat4x4(float64x2_t *this, simd::float4x4 *a2)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(this[3]), this[4]);
  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(this[5]), this[6]);
  result = this[8];
  v5 = vcvt_hight_f32_f64(vcvt_f32_f64(this[7]), result);
  a2->columns[0] = vcvt_hight_f32_f64(vcvt_f32_f64(this[1]), this[2]);
  a2->columns[1] = v2;
  a2->columns[2] = v3;
  a2->columns[3] = v5;
  return result;
}

double HGTransform::LoadIdentity(HGTransform *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 72) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 2) = 0x3FF0000000000000;
  *(this + 7) = 0x3FF0000000000000;
  *(this + 12) = 0x3FF0000000000000;
  *(this + 17) = 0x3FF0000000000000;
  return result;
}

float64x2_t HGTransform::LoadColumnf(HGTransform *this, float32x2_t *a2, int a3)
{
  v3 = (this + 32 * a3);
  result = vcvtq_f64_f32(*a2);
  v5 = vcvtq_f64_f32(a2[1]);
  v3[1] = result;
  v3[2] = v5;
  return result;
}

float64x2_t HGTransform::LoadMatrixf(float64x2_t *this, float32x2_t *a2)
{
  v2 = vcvtq_f64_f32(a2[1]);
  this[1] = vcvtq_f64_f32(*a2);
  this[2] = v2;
  v3 = vcvtq_f64_f32(a2[3]);
  this[3] = vcvtq_f64_f32(a2[2]);
  this[4] = v3;
  v4 = vcvtq_f64_f32(a2[5]);
  this[5] = vcvtq_f64_f32(a2[4]);
  this[6] = v4;
  result = vcvtq_f64_f32(a2[6]);
  v6 = vcvtq_f64_f32(a2[7]);
  this[7] = result;
  this[8] = v6;
  return result;
}

double HGTransform::LoadMatrixd(HGTransform *this, double *a2)
{
  *(this + 2) = *a2;
  *(this + 3) = a2[1];
  *(this + 4) = a2[2];
  *(this + 5) = a2[3];
  *(this + 6) = a2[4];
  *(this + 7) = a2[5];
  *(this + 8) = a2[6];
  *(this + 9) = a2[7];
  *(this + 10) = a2[8];
  *(this + 11) = a2[9];
  *(this + 12) = a2[10];
  *(this + 13) = a2[11];
  *(this + 14) = a2[12];
  *(this + 15) = a2[13];
  *(this + 16) = a2[14];
  result = a2[15];
  *(this + 17) = result;
  return result;
}

uint64_t HGTransform::LoadMatrixfloat4x4(HGTransform *this, const simd::float4x4 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2->columns[1];
  v5[0] = a2->columns[0];
  v5[1] = v2;
  v3 = a2->columns[3];
  v5[2] = a2->columns[2];
  v5[3] = v3;
  return (*(*this + 64))(this, v5);
}

uint64_t HGTransform::LoadMatrixdouble4x4(HGTransform *this, const simd::double4x4 *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *&a2->columns[0].f64[2];
  v7[0] = *a2->columns[0].f64;
  v7[1] = v2;
  v3 = *&a2->columns[1].f64[2];
  v7[2] = *a2->columns[1].f64;
  v7[3] = v3;
  v4 = *&a2->columns[2].f64[2];
  v7[4] = *a2->columns[2].f64;
  v7[5] = v4;
  v5 = *&a2->columns[3].f64[2];
  v7[6] = *a2->columns[3].f64;
  v7[7] = v5;
  return (*(*this + 72))(this, v7);
}

__n128 HGTransform::LoadTransform(HGTransform *this, const HGTransform *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v4;
  *(this + 1) = v2;
  *(this + 2) = v3;
  result = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 8);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = v7;
  *(this + 5) = result;
  *(this + 6) = v6;
  return result;
}

float64_t HGTransform::LoadOrtho(float64x2_t *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  (*(*&this->f64[0] + 56))(this);
  v10 = vsub_f32(__PAIR64__(LODWORD(a5), LODWORD(a3)), __PAIR64__(LODWORD(a4), LODWORD(a2)));
  this[1].f64[0] = 2.0 / v10.f32[0];
  this[3].f64[1] = 2.0 / v10.f32[1];
  this[6].f64[0] = -2.0 / (a7 - a6);
  this[7] = vcvtq_f64_f32(vdiv_f32(vneg_f32(vadd_f32(__PAIR64__(LODWORD(a4), LODWORD(a2)), __PAIR64__(LODWORD(a5), LODWORD(a3)))), v10));
  result = (-(a6 + a7) / (a7 - a6));
  this[8].f64[0] = result;
  return result;
}

double HGTransform::LoadFrustum(HGTransform *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  (*(*this + 56))(this);
  *(this + 2) = ((a6 + a6) / (a3 - a2));
  *(this + 7) = ((a6 + a6) / (a5 - a4));
  *(this + 10) = ((a2 + a3) / (a3 - a2));
  *(this + 11) = ((a4 + a5) / (a5 - a4));
  *(this + 15) = 0;
  *(this + 24) = 0u;
  *(this + 12) = (-(a6 + a7) / (a7 - a6));
  *(this + 16) = (((a7 * -2.0) * a6) / (a7 - a6));
  *(this + 40) = 0u;
  *(this + 4) = 0u;
  result = -1.0;
  *(this + 104) = xmmword_26034C200;
  *(this + 17) = 0;
  return result;
}

void HGTransform::Translate(HGTransform *this, double a2, double a3, double a4)
{
  HGObject::HGObject(v8);
  v13 = 0;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v8[0] = &unk_2872156C8;
  v8[2] = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000uLL;
  v14 = 0x3FF0000000000000;
  v15 = 0;
  v19 = 0x3FF0000000000000;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  (*(*this + 192))(this, v8);
  HGObject::~HGObject(v8);
}

void HGTransform::Rotate(HGTransform *this, double a2, double a3, double a4, double a5)
{
  v9 = a2 * 0.0174532925;
  v10 = sin(a2 * 0.0174532925);
  if (v10 != 0.0)
  {
    v11 = a3 * a3;
    v12 = a4 * a4;
    v13 = a5 * a5;
    v14 = a3 * a3 + a4 * a4 + a5 * a5;
    if (v14 != 1.0)
    {
      if (v14 == 0.0)
      {
        return;
      }

      v15 = sqrt(v14);
      a3 = a3 / v15;
      a4 = a4 / v15;
      a5 = a5 / v15;
      v11 = v11 / v14;
      v12 = v12 / v14;
      v13 = v13 / v14;
    }

    v16 = v10;
    v17 = cos(v9);
    v18 = v17;
    HGObject::HGObject(v22);
    v22[0] = &unk_2872156C8;
    v22[5] = 0;
    v22[9] = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0x3FF0000000000000;
    v19 = (1.0 - v18) * (a4 * a3);
    *&v22[2] = (1.0 - v18) * v11 + v18;
    *&v22[3] = v19 - a5 * v16;
    v20 = (1.0 - v18) * (a5 * a3);
    *&v22[4] = a4 * v16 + v20;
    v21 = (1.0 - v18) * (a5 * a4);
    *&v22[6] = a5 * v16 + v19;
    *&v22[7] = (1.0 - v18) * v12 + v18;
    *&v22[8] = v21 - a3 * v16;
    *&v22[10] = v20 - a4 * v16;
    *&v22[11] = v21 + a3 * v16;
    *&v22[12] = (1.0 - v18) * v13 + v18;
    (*(*this + 192))(this, v22);
    HGObject::~HGObject(v22);
  }
}

void HGTransform::Shear(HGTransform *this, double a2, double a3, double a4, double a5)
{
  v9 = __sincos_stret(a2 * 0.0174532925);
  sinval = v9.__sinval;
  if (sinval != 0.0)
  {
    cosval = v9.__cosval;
    if (cosval != 0.0)
    {
      v12 = a3 * a3;
      v13 = a3 * a3 + a4 * a4 + a5 * a5;
      if (v13 != 1.0)
      {
        if (v13 == 0.0)
        {
          return;
        }

        a3 = a3 / sqrt(v13);
        v12 = v12 / v13;
      }

      v14 = sinval;
      HGObject::HGObject(v17);
      v15 = a3 < 0.0 && v12 == 1.0;
      v22 = 0;
      v19 = 0u;
      v18 = 0u;
      v21 = 0u;
      v24 = 0u;
      v25 = 0u;
      v17[0] = &unk_2872156C8;
      v17[2] = 0x3FF0000000000000;
      v20 = 0x3FF0000000000000uLL;
      v23 = 0x3FF0000000000000;
      v26 = 0x3FF0000000000000;
      v16 = -v14;
      if (v15)
      {
        v16 = v14;
      }

      *(&v19 + 1) = v16 / *&v9.__cosval;
      (*(*this + 192))(this, v17);
      HGObject::~HGObject(v17);
    }
  }
}

void HGTransform::Scale(HGTransform *this, double a2, double a3, double a4)
{
  HGObject::HGObject(v8);
  v8[0] = &unk_2872156C8;
  v13 = 0;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0x3FF0000000000000;
  *&v8[2] = a2;
  v11 = *&a3;
  v14 = a4;
  (*(*this + 192))(this, v8);
  HGObject::~HGObject(v8);
}

void HGTransform::Perspective(HGTransform *this, double a2, double a3)
{
  HGObject::HGObject(v8);
  v13 = 0;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8[0] = &unk_2872156C8;
  v8[2] = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000uLL;
  v14 = 1.0;
  v17 = 0x3FF0000000000000;
  v6 = tan(a2 * 0.00872664626);
  v7 = v6 + v6;
  if (v7 != 0.0)
  {
    v14 = a3 / v7 + 1.0;
    *&v15 = -v7 / a3;
    *(&v16 + 1) = -v14;
    (*(*this + 192))(this, v8);
  }

  HGObject::~HGObject(v8);
}

float64x2_t HGTransform::Multiply(float64x2_t *this, float64x2_t *a2)
{
  if (a2)
  {
    v2 = this[1].f64[0];
    v3 = this[1].f64[1];
    v4 = this[2].f64[0];
    v5 = this[2].f64[1];
    v6 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(a2[1], v2), vmulq_n_f64(a2[3], v3)), vmulq_n_f64(a2[5], v4)), vmulq_n_f64(a2[7], v5));
    v7 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(a2[2], v2), vmulq_n_f64(a2[4], v3)), vmulq_n_f64(a2[6], v4)), vmulq_n_f64(a2[8], v5));
    this[1] = v6;
    this[2] = v7;
    v7.f64[0] = this[3].f64[0];
    v8 = this[3].f64[1];
    v9 = this[4].f64[0];
    v10 = this[4].f64[1];
    v11 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(a2[1], v7.f64[0]), vmulq_n_f64(a2[3], v8)), vmulq_n_f64(a2[5], v9)), vmulq_n_f64(a2[7], v10));
    v12 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(a2[2], v7.f64[0]), vmulq_n_f64(a2[4], v8)), vmulq_n_f64(a2[6], v9)), vmulq_n_f64(a2[8], v10));
    this[3] = v11;
    this[4] = v12;
    v12.f64[0] = this[5].f64[0];
    v13 = this[5].f64[1];
    v14 = this[6].f64[0];
    v15 = this[6].f64[1];
    v16 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(a2[1], v12.f64[0]), vmulq_n_f64(a2[3], v13)), vmulq_n_f64(a2[5], v14)), vmulq_n_f64(a2[7], v15));
    v17 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(a2[2], v12.f64[0]), vmulq_n_f64(a2[4], v13)), vmulq_n_f64(a2[6], v14)), vmulq_n_f64(a2[8], v15));
    this[5] = v16;
    this[6] = v17;
    v17.f64[0] = this[7].f64[0];
    v18 = this[7].f64[1];
    v19 = this[8].f64[0];
    v20 = this[8].f64[1];
    v21 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(a2[1], v17.f64[0]), vmulq_n_f64(a2[3], v18)), vmulq_n_f64(a2[5], v19)), vmulq_n_f64(a2[7], v20));
    result = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(a2[2], v17.f64[0]), vmulq_n_f64(a2[4], v18)), vmulq_n_f64(a2[6], v19)), vmulq_n_f64(a2[8], v20));
    this[7] = v21;
    this[8] = result;
  }

  return result;
}

double HGTransform::PreMultiply(HGTransform *this, const HGTransform *a2)
{
  if (a2)
  {
    v3 = *(this + 2);
    v2 = *(this + 3);
    v5 = *(this + 6);
    v4 = *(this + 7);
    v7 = *(this + 10);
    v6 = *(this + 11);
    v9 = *(this + 14);
    v8 = *(this + 15);
    v10 = v3 * *(a2 + 2) + v5 * *(a2 + 3) + v7 * *(a2 + 4) + v9 * *(a2 + 5);
    v11 = v3 * *(a2 + 6) + v5 * *(a2 + 7) + v7 * *(a2 + 8) + v9 * *(a2 + 9);
    v12 = v3 * *(a2 + 10) + v5 * *(a2 + 11) + v7 * *(a2 + 12) + v9 * *(a2 + 13);
    v13 = v3 * *(a2 + 14) + v5 * *(a2 + 15) + v7 * *(a2 + 16) + v9 * *(a2 + 17);
    *(this + 2) = v10;
    *(this + 6) = v11;
    *(this + 10) = v12;
    *(this + 14) = v13;
    v14 = v2 * *(a2 + 2) + v4 * *(a2 + 3) + v6 * *(a2 + 4) + v8 * *(a2 + 5);
    v15 = v2 * *(a2 + 6) + v4 * *(a2 + 7) + v6 * *(a2 + 8) + v8 * *(a2 + 9);
    v16 = v2 * *(a2 + 10) + v4 * *(a2 + 11) + v6 * *(a2 + 12) + v8 * *(a2 + 13);
    v17 = v2 * *(a2 + 14) + v4 * *(a2 + 15) + v6 * *(a2 + 16) + v8 * *(a2 + 17);
    *(this + 3) = v14;
    *(this + 7) = v15;
    *(this + 11) = v16;
    *(this + 15) = v17;
    v19 = *(this + 4);
    v18 = *(this + 5);
    v21 = *(this + 8);
    v20 = *(this + 9);
    v23 = *(this + 12);
    v22 = *(this + 13);
    v25 = *(this + 16);
    v24 = *(this + 17);
    v26 = v19 * *(a2 + 2) + v21 * *(a2 + 3) + v23 * *(a2 + 4) + v25 * *(a2 + 5);
    v27 = v19 * *(a2 + 6) + v21 * *(a2 + 7) + v23 * *(a2 + 8) + v25 * *(a2 + 9);
    v28 = v19 * *(a2 + 10) + v21 * *(a2 + 11) + v23 * *(a2 + 12) + v25 * *(a2 + 13);
    v29 = v19 * *(a2 + 14) + v21 * *(a2 + 15) + v23 * *(a2 + 16) + v25 * *(a2 + 17);
    *(this + 4) = v26;
    *(this + 8) = v27;
    *(this + 12) = v28;
    *(this + 16) = v29;
    v30 = v18 * *(a2 + 2) + v20 * *(a2 + 3) + v22 * *(a2 + 4) + v24 * *(a2 + 5);
    v31 = v18 * *(a2 + 6) + v20 * *(a2 + 7) + v22 * *(a2 + 8) + v24 * *(a2 + 9);
    v32 = v18 * *(a2 + 10) + v20 * *(a2 + 11) + v22 * *(a2 + 12) + v24 * *(a2 + 13);
    result = v18 * *(a2 + 14) + v20 * *(a2 + 15) + v22 * *(a2 + 16) + v24 * *(a2 + 17);
    *(this + 5) = v30;
    *(this + 9) = v31;
    *(this + 13) = v32;
    *(this + 17) = result;
  }

  return result;
}

float64x2_t *HGTransform::Transform(float64x2_t *this, float32x4_t *a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v5 = this[1];
    v4 = this[2];
    v7 = this[3];
    v6 = this[4];
    v9 = this[5];
    v8 = this[6];
    v11 = this[7];
    v10 = this[8];
    if (a4 <= 3 || ((v12 = 16 * (a4 - 1) + 16, a3 + v12 > a2) ? (v13 = a2 + v12 > a3) : (v13 = 0), v13))
    {
      LODWORD(v14) = 0;
      v15 = a2;
      v16 = a3;
    }

    else
    {
      v14 = a4 & 0x7FFFFFFC;
      v15 = &a2[v14];
      v16 = &a3[4 * v14];
      v17 = v14;
      do
      {
        v33 = vld4q_f32(a3);
        a3 += 16;
        v18 = vcvt_hight_f64_f32(v33.val[0]);
        v19 = vcvtq_f64_f32(*v33.val[0].f32);
        v20 = vcvt_hight_f64_f32(v33.val[1]);
        v21 = vcvtq_f64_f32(*v33.val[1].f32);
        v22 = vcvtq_f64_f32(*v33.val[2].f32);
        v23 = vcvt_hight_f64_f32(v33.val[2]);
        v24 = vcvt_hight_f64_f32(v33.val[3]);
        v33.val[0] = vcvtq_f64_f32(*v33.val[3].f32);
        v33.val[2] = vaddq_f64(vaddq_f64(vmulq_laneq_f64(v19, v5, 1), vmulq_laneq_f64(v21, v7, 1)), vmulq_laneq_f64(v22, v9, 1));
        v25 = vaddq_f64(vaddq_f64(vmulq_laneq_f64(v18, v5, 1), vmulq_laneq_f64(v20, v7, 1)), vmulq_laneq_f64(v23, v9, 1));
        v26 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v18, v5.f64[0]), vmulq_n_f64(v20, v7.f64[0])), vmulq_n_f64(v23, v9.f64[0])), vmulq_n_f64(v24, v11.f64[0]));
        v27 = vaddq_f64(vaddq_f64(vmulq_n_f64(v19, v4.f64[0]), vmulq_n_f64(v21, v6.f64[0])), vmulq_n_f64(v22, v8.f64[0]));
        v28 = vaddq_f64(vaddq_f64(vmulq_n_f64(v18, v4.f64[0]), vmulq_n_f64(v20, v6.f64[0])), vmulq_n_f64(v23, v8.f64[0]));
        v33.val[1] = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v19, v5.f64[0]), vmulq_n_f64(v21, v7.f64[0])), vmulq_n_f64(v22, v9.f64[0])), vmulq_n_f64(v33.val[0], v11.f64[0]));
        v29 = vaddq_f64(vmulq_laneq_f64(v19, v4, 1), vmulq_laneq_f64(v21, v6, 1));
        v33.val[2] = vaddq_f64(v33.val[2], vmulq_laneq_f64(v33.val[0], v11, 1));
        v30 = vaddq_f64(vaddq_f64(vmulq_laneq_f64(v18, v4, 1), vmulq_laneq_f64(v20, v6, 1)), vmulq_laneq_f64(v23, v8, 1));
        v31 = vmulq_laneq_f64(v33.val[0], v10, 1);
        v33.val[0] = vaddq_f64(v27, vmulq_n_f64(v33.val[0], v10.f64[0]));
        v34.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v33.val[2]), vaddq_f64(v25, vmulq_laneq_f64(v24, v11, 1)));
        v34.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v33.val[1]), v26);
        v34.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vaddq_f64(v29, vmulq_laneq_f64(v22, v8, 1)), v31)), vaddq_f64(v30, vmulq_laneq_f64(v24, v10, 1)));
        v34.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v33.val[0]), vaddq_f64(v28, vmulq_n_f64(v24, v10.f64[0])));
        vst4q_f32(a2->f32, v34);
        a2 += 4;
        v17 -= 4;
      }

      while (v17);
      if (v14 == a4)
      {
        return this;
      }
    }

    v32 = a4 - v14;
    do
    {
      *v15++ = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v5, *v16), vmulq_n_f64(v7, v16[1])), vmulq_n_f64(v9, v16[2])), vmulq_n_f64(v11, v16[3]))), vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v4, *v16), vmulq_n_f64(v6, v16[1])), vmulq_n_f64(v8, v16[2])), vmulq_n_f64(v10, v16[3])));
      v16 += 4;
      --v32;
    }

    while (v32);
  }

  return this;
}

float32x2_t HGTransform::Project(float64x2_t *this, float32x2_t *a2, int a3, int a4)
{
  result = vcvt_f32_f64(vdivq_f64(vaddq_f64(this[7], vaddq_f64(vmulq_n_f64(this[1], a3), vmulq_n_f64(this[3], a4))), vdupq_lane_s64(COERCE__INT64(this[8].f64[1] + this[2].f64[1] * a3 + this[4].f64[1] * a4), 0)));
  *a2 = result;
  return result;
}

double *HGTransform::Invert(double *this)
{
  v1 = 0;
  v68 = *MEMORY[0x277D85DE8];
  v2 = this + 2;
  v3 = this[2];
  v4 = this + 6;
  v5 = this[6];
  v6 = this + 10;
  v7 = this[10];
  v8 = this + 14;
  v9 = this[14];
  v10 = this[3];
  v11 = this[7];
  v12 = this[8];
  v13 = this[11];
  v14 = this[12];
  v16 = this[15];
  v15 = this[16];
  v18 = this[4];
  v17 = this[5];
  v19 = this[9];
  v20 = this[13];
  v21 = this + 2;
  v22 = 1.0;
  v23 = 1.0;
  v24 = 1.0;
  v25 = 1.0;
  v26 = this[17];
  do
  {
    v27 = fabs(v25 * v3);
    v28 = fabs(v24 * v10);
    v29 = fabs(v18 * v23);
    v30 = fabs(v17 * v22);
    if (v27 < v28)
    {
      v31 = v28;
    }

    else
    {
      v31 = v27;
    }

    if (v29 < v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v29;
    }

    if (v31 <= v32)
    {
      if (v29 <= v30)
      {
        if (v17 * v22 == 0.0)
        {
LABEL_21:
          this[2] = 1.0;
          *(this + 3) = 0u;
          *(this + 5) = 0u;
          this[7] = 1.0;
          *(this + 4) = 0u;
          *(this + 5) = 0u;
          this[12] = 1.0;
          *(this + 13) = 0u;
          *(this + 15) = 0u;
          this[17] = 1.0;
          return this;
        }

        v54 = v19 / v17;
        v19 = v20 / v17;
        v20 = v26 / v17;
        v55 = v19 * v3;
        v56 = v26 / v17 * v3;
        v26 = 1.0 / v17;
        v57 = 1.0 / v17 * v3;
        v3 = v5 - v54 * v3;
        v5 = v7 - v55;
        v7 = v9 - v56;
        v46 = v11 - v54 * v10;
        v11 = v13 - v19 * v10;
        v13 = v16 - v20 * v10;
        v58 = v18 * v19;
        v59 = v18 * v20;
        v60 = v18 * v26;
        v18 = v12 - v18 * v54;
        v12 = v14 - v58;
        v22 = 0.0;
        v9 = 0.0 - v57;
        v16 = 0.0 - v26 * v10;
        v14 = v15 - v59;
        v33 = 3;
        v15 = 0.0 - v60;
        v17 = v54;
        v8 = v2;
      }

      else
      {
        if (v18 * v23 == 0.0)
        {
          goto LABEL_21;
        }

        v42 = v12 / v18;
        v12 = v14 / v18;
        v14 = v15 / v18;
        v43 = v12 * v3;
        v44 = v15 / v18 * v3;
        v15 = 1.0 / v18;
        v45 = 1.0 / v18 * v3;
        v3 = v5 - v42 * v3;
        v5 = v7 - v43;
        v7 = v9 - v44;
        v46 = v11 - v42 * v10;
        v11 = v13 - v12 * v10;
        v13 = v16 - v14 * v10;
        v47 = v19 - v42 * v17;
        v19 = v20 - v12 * v17;
        v23 = 0.0;
        v9 = 0.0 - v45;
        v16 = 0.0 - v15 * v10;
        v20 = v26 - v17 * v14;
        v33 = 2;
        v18 = v42;
        v26 = 0.0 - v15 * v17;
        v17 = v47;
        v6 = v2;
      }

      v10 = v46;
    }

    else if (v27 <= v28)
    {
      if (v24 * v10 == 0.0)
      {
        goto LABEL_21;
      }

      v48 = v11 / v10;
      v11 = v13 / v10;
      v13 = v16 / v10;
      v49 = v11 * v3;
      v50 = v16 / v10 * v3;
      v16 = 1.0 / v10;
      v51 = 1.0 / v10 * v3;
      v3 = v5 - v48 * v3;
      v5 = v7 - v49;
      v7 = v9 - v50;
      v52 = v12 - v18 * v48;
      v12 = v14 - v18 * v11;
      v14 = v15 - v18 * v13;
      v53 = v19 - v17 * v48;
      v19 = v20 - v17 * v11;
      v24 = 0.0;
      v9 = 0.0 - v51;
      v15 = 0.0 - v18 * v16;
      v20 = v26 - v17 * v13;
      v33 = 1;
      v18 = v52;
      v26 = 0.0 - v17 * v16;
      v17 = v53;
      v4 = v2;
      v10 = v48;
    }

    else
    {
      if (v25 * v3 == 0.0)
      {
        goto LABEL_21;
      }

      v33 = 0;
      v34 = v5 / v3;
      v5 = v7 / v3;
      v35 = v10 * v34;
      v7 = v9 / v3;
      v36 = v10 * v5;
      v37 = v10 * (v9 / v3);
      v9 = 1.0 / v3;
      v38 = v10 * (1.0 / v3);
      v39 = v11 - v35;
      v11 = v13 - v36;
      v13 = v16 - v37;
      v40 = v12 - v18 * v34;
      v12 = v14 - v18 * v5;
      v14 = v15 - v18 * v7;
      v41 = v19 - v17 * v34;
      v19 = v20 - v17 * v5;
      v25 = 0.0;
      v16 = 0.0 - v38;
      v15 = 0.0 - v18 * v9;
      v20 = v26 - v17 * v7;
      v18 = v40;
      v26 = 0.0 - v17 * v9;
      v17 = v41;
      v21 = v2;
      v10 = v39;
      v3 = v34;
    }

    v65[v1++] = v33;
    v2 += 4;
  }

  while (v1 != 4);
  v61 = v65[0];
  v62 = v65[1];
  v21[v65[0]] = v3;
  v21[v62] = v10;
  v63 = v66;
  v64 = v67;
  v21[v66] = v18;
  v21[v64] = v17;
  v4[v61] = v5;
  v4[v62] = v11;
  v4[v63] = v12;
  v4[v64] = v19;
  v6[v61] = v7;
  v6[v62] = v13;
  v6[v63] = v14;
  v6[v64] = v20;
  v8[v61] = v9;
  v8[v62] = v16;
  v8[v63] = v15;
  v8[v64] = v26;
  return this;
}

float64x2_t HGTransform::Invert2D(float64x2_t *this)
{
  v2 = this[3].f64[0];
  v1.f64[0] = this[3].f64[1];
  v3 = this[8].f64[1];
  v4 = this[4].f64[1];
  v5 = this[2].f64[1];
  v6 = this[1].f64[0];
  v7.f64[0] = this[1].f64[1];
  v8 = v1.f64[0] * v6 - v2 * v7.f64[0];
  v9 = v4 * v7.f64[0];
  v10 = v1.f64[0] * v5;
  v11 = this[7];
  v12 = v1.f64[0] * v3 - vmuld_lane_f64(v4, v11, 1);
  v13 = v4 * v11.f64[0] - v3 * v2;
  v14 = v12 * v6 + v7.f64[0] * v13;
  v15 = v3 * v7.f64[0];
  v7.f64[1] = v2;
  v16 = vmulq_f64(v11, v7);
  v1.f64[1] = v6;
  v17 = vsubq_f64(vextq_s8(v16, v16, 8uLL), vmulq_f64(v11, v1));
  v18 = v14 + v5 * v17.f64[0];
  if (v18 == 0.0)
  {
    v18 = 0.0000000596046448;
  }

  v19 = v8 / v18;
  v20 = v2 * v5 - v4 * v6;
  v21 = v3 * v6;
  v22 = v9 - v10;
  v23 = fabs(v19);
  v24 = -0.0000000596046448;
  if (v19 >= 0.0)
  {
    v24 = 0.0000000596046448;
  }

  if (v23 <= 0.0000000596046448)
  {
    v25 = v24;
  }

  else
  {
    v25 = v19;
  }

  this[1].f64[0] = v12 / v18;
  this[1].f64[1] = (vmuld_lane_f64(v5, v11, 1) - v15) / v18;
  this[2].f64[1] = v22 / v18;
  this[3].f64[0] = v13 / v18;
  this[3].f64[1] = (v21 - v5 * v11.f64[0]) / v18;
  this[4].f64[1] = v20 / v18;
  this[8].f64[1] = v25;
  this[8].f64[0] = 0.0;
  this[4].f64[0] = 0.0;
  this[2].f64[0] = 0.0;
  this[5].f64[0] = 0.0;
  this[5].f64[1] = 0.0;
  result = vdivq_f64(v17, vdupq_lane_s64(*&v18, 0));
  this[6] = xmmword_2603426F0;
  this[7] = result;
  return result;
}

double HGTransform::Adjoint2D(HGTransform *this)
{
  v2 = *(this + 6);
  v1 = *(this + 7);
  v3 = *(this + 17);
  v4 = *(this + 9);
  v6 = *(this + 14);
  v5 = *(this + 15);
  v7 = *(this + 5);
  v9 = *(this + 2);
  v8 = *(this + 3);
  *(this + 2) = v1 * v3 - v4 * v5;
  *(this + 3) = v5 * v7 - v3 * v8;
  *(this + 5) = v4 * v8 - v1 * v7;
  *(this + 6) = v4 * v6 - v3 * v2;
  *(this + 7) = v3 * v9 - v6 * v7;
  *(this + 9) = v2 * v7 - v4 * v9;
  *(this + 14) = v5 * v2 - v1 * v6;
  *(this + 15) = v6 * v8 - v5 * v9;
  *(this + 17) = v1 * v9 - v2 * v8;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  result = 1.0;
  *(this + 6) = xmmword_2603426F0;
  return result;
}

double HGTransform::Matrix2D(HGTransform *this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  result = 1.0;
  *(this + 6) = xmmword_2603426F0;
  return result;
}

BOOL HGTransform::IsXYFlipAndOrIntegerTranslation(HGTransform *this)
{
  v1 = *(this + 3) != 0.0 || *(this + 4) != 0.0 || *(this + 5) != 0.0 || *(this + 6) != 0.0 || *(this + 8) != 0.0 || *(this + 9) != 0.0 || *(this + 10) != 0.0 || *(this + 11) != 0.0 || *(this + 12) != 1.0 || *(this + 13) != 0.0 || *(this + 16) != 0.0 || *(this + 17) != 1.0;
  v2 = *(this + 2);
  if (v2 != 1.0 && v2 != -1.0)
  {
    return 0;
  }

  v4 = *(this + 7);
  v5 = v4 != 1.0;
  if (v4 == -1.0)
  {
    v5 = 0;
  }

  if (v1 || v5)
  {
    return 0;
  }

  v6 = *(this + 14);
  v7 = v6;
  if (vabdd_f64(llroundf(v7), v6) >= 0.00100000005)
  {
    return 0;
  }

  v8 = *(this + 15);
  v9 = v8;
  return vabdd_f64(llroundf(v9), v8) < 0.00100000005;
}

float64_t HGTransform::Transpose(float64x2_t *this)
{
  v1.f64[0] = this[2].f64[0];
  v2 = this[1].f64[1];
  v3.f64[0] = this[2].f64[1];
  v4 = this[5].f64[0];
  v5 = this[5].f64[1];
  this[1].f64[1] = this[3].f64[0];
  this[2].f64[0] = v4;
  v1.f64[1] = this[4].f64[0];
  v6 = this[6].f64[1];
  this[2].f64[1] = this[7].f64[0];
  this[3].f64[0] = v2;
  v3.f64[1] = this[4].f64[1];
  this[5] = vcvtq_f64_f32(vcvt_f32_f64(v1));
  v7 = this[7].f64[1];
  v1.f64[0] = this[8].f64[0];
  this[4].f64[0] = v5;
  this[4].f64[1] = v7;
  this[7] = vcvtq_f64_f32(vcvt_f32_f64(v3));
  *&v7 = v6;
  this[6].f64[1] = v1.f64[0];
  result = *&v7;
  this[8].f64[0] = result;
  return result;
}

uint64_t HGTransformUtils::GetDOD(HGTransformUtils *this, const HGTransform *a2, HGRect a3, float a4, float a5)
{
  v7 = *&a3.var0;
  v95 = *MEMORY[0x277D85DE8];
  if (HGRectIsNull(a2, *&a3.var0))
  {
    return 0;
  }

  if (!(*(*this + 224))(this))
  {
    a4 = a4 + 0.00024414;
  }

  *(&v87 + 2) = a2 - a4;
  *(&v87 + 3) = SHIDWORD(a2) - a4;
  v88 = 0x3F80000000000000;
  v89.f32[0] = a4 + v7;
  v89.f32[1] = *(&v87 + 3);
  v90 = 0x3F80000000000000;
  v91.f32[0] = v89.f32[0];
  v91.f32[1] = a4 + SHIDWORD(v7);
  v92 = 0x3F80000000000000;
  v93.f32[0] = *(&v87 + 2);
  v93.f32[1] = v91.f32[1];
  v94 = 0x3F80000000000000;
  (*(*this + 208))(this, &v87 + 8, &v87 + 8, 4);
  v11.i32[0] = HIDWORD(v88);
  v12.i32[0] = HIDWORD(v90);
  v13.i32[0] = HIDWORD(v92);
  v14.i32[0] = HIDWORD(v94);
  v15 = *(&v88 + 1) < a5;
  v16 = (4 * (*(&v92 + 1) < a5)) | (2 * (*(&v90 + 1) < a5)) | (8 * (*(&v94 + 1) < a5));
  if (*(&v88 + 1) < a5)
  {
    ++v16;
  }

  if (v16 == 15)
  {
    return 0;
  }

  if (!v16)
  {
    *(&v87 + 1) = vdiv_f32(*(&v87 + 8), vdup_lane_s32(v11, 0));
    v89 = vdiv_f32(v89, vdup_lane_s32(v12, 0));
    v91 = vdiv_f32(v91, vdup_lane_s32(v13, 0));
    v93 = vdiv_f32(v93, vdup_lane_s32(v14, 0));
    return HGRectMake4f(v15, fminf(*(&v87 + 2), fminf(v89.f32[0], fminf(v91.f32[0], v93.f32[0]))), fminf(*(&v87 + 3), fminf(v89.f32[1], fminf(v91.f32[1], v93.f32[1]))), fmaxf(*(&v87 + 2), fmaxf(v89.f32[0], fmaxf(v91.f32[0], v93.f32[0]))), fmaxf(*(&v87 + 3), fmaxf(v89.f32[1], fmaxf(v91.f32[1], v93.f32[1]))));
  }

  v17 = *(&v90 + 1) >= a5;
  if (*(&v88 + 1) >= a5)
  {
    v17 = 1;
  }

  v18 = *(&v92 + 1) >= a5 || v17;
  if (*(&v92 + 1) < a5)
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  if (*(&v94 + 1) >= a5)
  {
    v18 = 1;
  }

  if (!v17)
  {
    LOBYTE(v15) = v19;
  }

  if (v18)
  {
    v20 = v15;
  }

  else
  {
    v20 = 4;
  }

  if ((v16 >> ((v20 + 1) & 3)))
  {
    v21 = &v87 + 2 * ((v20 + 1) & 3) + 1;
    v79 = vadd_f32(*v21, vmul_n_f32(vsub_f32(*(&v87 + 16 * (v20 & 3) + 8), *v21), (a5 - v21[1].f32[1]) / (*(&v88 + 4 * (v20 & 3) + 1) - v21[1].f32[1])));
    v80 = a5;
    if ((v16 >> (v20 & 3 ^ 2)))
    {
      v22 = 0;
      v23 = 1;
      goto LABEL_33;
    }

    v28 = &v87 + 2 * (v20 & 3 ^ 2u) + 1;
    v29 = v28[1].f32[1];
    v30 = *v28;
    v81 = vadd_f32(*v21, vmul_n_f32(vsub_f32(*v28, *v21), (a5 - v21[1].f32[1]) / (v29 - v21[1].f32[1])));
    v82 = a5;
    v31 = 2;
  }

  else
  {
    v24 = &v87 + 2 * ((v20 + 1) & 3) + 1;
    v25 = v24[1].f32[1];
    v79 = *v24;
    v80 = v25;
    v26 = v20 & 3 ^ 2;
    v27 = &v87 + 2 * v26 + 1;
    if ((v16 >> v26))
    {
      v22 = 0;
      v81 = vadd_f32(*v27, vmul_n_f32(vsub_f32(*v24, *v27), (a5 - v27[1].f32[1]) / (v24[1].f32[1] - v27[1].f32[1])));
      v82 = a5;
      v23 = 2;
      goto LABEL_33;
    }

    v30 = *v27;
    v29 = v27[1].f32[1];
    v31 = 1;
  }

  v32 = &v79 + 3 * v31;
  *v32 = v30;
  v32[2] = v29;
  v23 = v31 + 1;
  v22 = 1;
LABEL_33:
  v33 = (v20 - 1) & 3;
  if ((v16 >> v33))
  {
    if (v22)
    {
      v34 = &v87 + 2 * (v20 & 3 ^ 2u) + 1;
      v35 = (&v79 + 12 * v23);
      *v35 = vadd_f32(*(&v87 + 16 * v33 + 8), vmul_n_f32(vsub_f32(*v34, *(&v87 + 16 * v33 + 8)), (a5 - *(&v88 + 4 * v33 + 1)) / (v34[1].f32[1] - *(&v88 + 4 * v33 + 1))));
      v35[1].f32[0] = a5;
      v23 = (v23 + 1);
    }

    v36 = v20 & 3;
    if ((v16 >> v36))
    {
      goto LABEL_46;
    }

    v37 = &v87 + 2 * v33 + 1;
    v38 = v37[1].f32[1];
    v39 = a5 - v38;
    v40 = &v87 + 2 * v36 + 1;
    v41 = (&v79 + 12 * v23);
    v41[1].f32[0] = a5;
    a5 = v40[1].f32[1];
    v42 = v39 / (a5 - v38);
    v43 = *v40;
    *v41 = vadd_f32(*v37, vmul_n_f32(vsub_f32(*v40, *v37), v42));
    v44 = v23 + 1;
    v45 = v43.f32[1];
    goto LABEL_44;
  }

  if (v22)
  {
    v46 = &v87 + 4 * ((v20 - 1) & 3) + 2;
    v47 = *v46;
    v48 = v46[3];
  }

  else
  {
    v49 = &v87 + 2 * (v20 & 3 ^ 2u) + 1;
    v50 = &v87 + 2 * ((v20 - 1) & 3) + 1;
    v48 = v50[1].f32[1];
    v51 = (&v79 + 12 * v23);
    v47 = *v50;
    *v51 = vadd_f32(*v49, vmul_n_f32(vsub_f32(*v50, *v49), (a5 - v49[1].f32[1]) / (v48 - v49[1].f32[1])));
    v51[1].f32[0] = a5;
    LODWORD(v23) = v23 + 1;
  }

  v52 = &v79 + 3 * v23;
  *v52 = v47;
  v52[2] = v48;
  v44 = v23 + 1;
  v53 = v20 & 3;
  v54 = &v87 + 4 * (v20 & 3) + 2;
  if (((v16 >> v53) & 1) == 0)
  {
    v43.f32[0] = *v54;
    v45 = v54[1];
    a5 = v54[3];
LABEL_44:
    v60 = &v79 + 3 * v44;
    *v60 = v43.f32[0];
    goto LABEL_45;
  }

  v55 = &v87 + 4 * v33 + 2;
  v56 = (a5 - v54[3]) / (v55[3] - v54[3]);
  v57 = v54[1];
  v58 = v55[1];
  v59 = v56 * (*v55 - *v54);
  v60 = &v79 + 3 * v44;
  *v60 = *v54 + v59;
  v45 = v57 + (v56 * (v58 - v57));
LABEL_45:
  v60[1] = v45;
  v60[2] = a5;
  v23 = v44 + 1;
LABEL_46:
  v61 = &v80;
  v62 = vld1_dup_f32(v61);
  v79 = vdiv_f32(v79, v62);
  if (v23 != 1)
  {
    v63 = &v82;
    v64 = vld1_dup_f32(v63);
    v81 = vdiv_f32(v81, v64);
    if (v23 != 2)
    {
      v65 = v84;
      v66 = vld1_dup_f32(v65);
      v83 = vdiv_f32(v83, v66);
      if (v23 != 3)
      {
        v67 = &v85;
        v68 = vld1_dup_f32(v67);
        *&v84[4] = vdiv_f32(*&v84[4], v68);
        if (v23 != 4)
        {
          v69 = &v87;
          v70 = vld1_dup_f32(v69);
          v86 = vdiv_f32(v86, v70);
          if (v23 != 5)
          {
            v71 = &v87 + 3;
            v72 = vld1_dup_f32(v71);
            *(&v87 + 4) = vdiv_f32(*(&v87 + 4), v72);
          }
        }
      }
    }
  }

  v74 = v79.f32[1];
  v73 = v79.f32[0];
  if (v23 < 2)
  {
    v78 = v79.f32[1];
    v77 = v79.f32[0];
  }

  else
  {
    v75 = fminf(v79.f32[0], v81.f32[0]);
    v76 = fminf(v79.f32[1], v81.f32[1]);
    v77 = fmaxf(v79.f32[0], v81.f32[0]);
    v78 = fmaxf(v79.f32[1], v81.f32[1]);
    if (v23 == 2)
    {
      v73 = v75;
      v74 = v76;
    }

    else
    {
      v73 = fminf(v75, v83.f32[0]);
      v74 = fminf(v76, v83.f32[1]);
      v77 = fmaxf(v77, v83.f32[0]);
      v78 = fmaxf(v78, v83.f32[1]);
      if (v23 != 3)
      {
        v73 = fminf(v73, *&v84[4]);
        v74 = fminf(v74, *&v84[8]);
        v77 = fmaxf(v77, *&v84[4]);
        v78 = fmaxf(v78, *&v84[8]);
        if (v23 != 4)
        {
          v73 = fminf(v73, v86.f32[0]);
          v74 = fminf(v74, v86.f32[1]);
          v77 = fmaxf(v77, v86.f32[0]);
          v78 = fmaxf(v78, v86.f32[1]);
          if (v23 != 5)
          {
            v73 = fminf(v73, *(&v87 + 1));
            v74 = fminf(v74, *(&v87 + 2));
            v77 = fmaxf(v77, *(&v87 + 1));
            v78 = fmaxf(v78, *(&v87 + 2));
          }
        }
      }
    }
  }

  return HGRectMake4f(v23, v73 - a4, v74 - a4, a4 + v77, a4 + v78);
}

uint64_t HGTransformUtils::GetROI(HGTransformUtils *this, unint64_t a2, HGRect a3, float a4, float a5)
{
  var0 = a3.var0;
  v8 = a2;
  v103 = *MEMORY[0x277D85DE8];
  v10 = HIDWORD(a2);
  var1 = a3.var1;
  v12 = (*(*this + 224))(this);
  *(&v95 + 2) = v8 + 0.5;
  *(&v95 + 3) = v10 + 0.5;
  v96 = 0x3F80000000000000;
  v97.f32[0] = var0 + -0.5;
  v97.f32[1] = *(&v95 + 3);
  v98 = 0x3F80000000000000;
  v99.f32[0] = v97.f32[0];
  v99.f32[1] = var1 + -0.5;
  v100 = 0x3F80000000000000;
  v101.f32[0] = *(&v95 + 2);
  v101.f32[1] = v99.f32[1];
  v102 = 0x3F80000000000000;
  (*(*this + 208))(this, &v95 + 8, &v95 + 8, 4);
  v13.i32[0] = HIDWORD(v96);
  v14.i32[0] = HIDWORD(v98);
  v15.i32[0] = HIDWORD(v100);
  v16.i32[0] = HIDWORD(v102);
  v17 = *(&v96 + 1) < a5;
  v18 = (4 * (*(&v100 + 1) < a5)) | (2 * (*(&v98 + 1) < a5)) | (8 * (*(&v102 + 1) < a5));
  if (*(&v96 + 1) < a5)
  {
    ++v18;
  }

  if (v12)
  {
    v19 = a4;
  }

  else
  {
    v19 = a4 + 0.00024414;
  }

  if (v18 == 15)
  {
    return 0;
  }

  if (v18)
  {
    v28 = *(&v98 + 1) >= a5;
    if (*(&v96 + 1) >= a5)
    {
      v28 = 1;
    }

    v29 = *(&v100 + 1) >= a5 || v28;
    if (*(&v100 + 1) < a5)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    if (*(&v102 + 1) >= a5)
    {
      v29 = 1;
    }

    if (!v28)
    {
      LOBYTE(v17) = v30;
    }

    if (v29)
    {
      v31 = v17;
    }

    else
    {
      v31 = 4;
    }

    if ((v18 >> ((v31 + 1) & 3)))
    {
      v32 = &v95 + 2 * ((v31 + 1) & 3) + 1;
      v87 = vadd_f32(*v32, vmul_n_f32(vsub_f32(*(&v95 + 16 * (v31 & 3) + 8), *v32), (a5 - v32[1].f32[1]) / (*(&v96 + 4 * (v31 & 3) + 1) - v32[1].f32[1])));
      v88 = a5;
      if ((v18 >> (v31 & 3 ^ 2)))
      {
        v33 = 0;
        v17 = 1;
        v34 = (v31 - 1) & 3;
        if (((v18 >> v34) & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_39:
        if (v33)
        {
          v61 = &v95 + 2 * (v31 & 3 ^ 2u) + 1;
          v62 = (&v87 + 12 * v17);
          *v62 = vadd_f32(*(&v95 + 16 * v34 + 8), vmul_n_f32(vsub_f32(*v61, *(&v95 + 16 * v34 + 8)), (a5 - *(&v96 + 4 * v34 + 1)) / (v61[1].f32[1] - *(&v96 + 4 * v34 + 1))));
          v62[1].f32[0] = a5;
          v17 = (v17 + 1);
        }

        v63 = v31 & 3;
        if ((v18 >> v63))
        {
          goto LABEL_46;
        }

        v64 = &v95 + 2 * v34 + 1;
        v65 = v64[1].f32[1];
        v66 = a5 - v65;
        v67 = &v95 + 2 * v63 + 1;
        v68 = (&v87 + 12 * v17);
        v68[1].f32[0] = a5;
        a5 = v67[1].f32[1];
        v69 = v66 / (a5 - v65);
        v70 = *v67;
        *v68 = vadd_f32(*v64, vmul_n_f32(vsub_f32(*v67, *v64), v69));
        v50 = v17 + 1;
        v59 = v70.f32[1];
        goto LABEL_44;
      }

      v42 = &v95 + 2 * (v31 & 3 ^ 2u) + 1;
      v43 = v42[1].f32[1];
      v44 = *v42;
      v89 = vadd_f32(*v32, vmul_n_f32(vsub_f32(*v42, *v32), (a5 - v32[1].f32[1]) / (v43 - v32[1].f32[1])));
      v90 = a5;
      v45 = 2;
    }

    else
    {
      v35 = &v95 + 2 * ((v31 + 1) & 3) + 1;
      v36 = v35[1].f32[1];
      v87 = *v35;
      v88 = v36;
      v37 = v31 & 3 ^ 2;
      v38 = &v95 + 2 * v37 + 1;
      if ((v18 >> v37))
      {
        v33 = 0;
        v89 = vadd_f32(*v38, vmul_n_f32(vsub_f32(*v35, *v38), (a5 - v38[1].f32[1]) / (v35[1].f32[1] - v38[1].f32[1])));
        v90 = a5;
        v17 = 2;
        v34 = (v31 - 1) & 3;
        if ((v18 >> v34))
        {
          goto LABEL_39;
        }

LABEL_31:
        if (v33)
        {
          v39 = &v95 + 4 * v34 + 2;
          v40 = *v39;
          v41 = v39[3];
        }

        else
        {
          v46 = &v95 + 2 * (v31 & 3 ^ 2u) + 1;
          v47 = &v95 + 2 * v34 + 1;
          v41 = v47[1].f32[1];
          v48 = (&v87 + 12 * v17);
          v40 = *v47;
          *v48 = vadd_f32(*v46, vmul_n_f32(vsub_f32(*v47, *v46), (a5 - v46[1].f32[1]) / (v41 - v46[1].f32[1])));
          v48[1].f32[0] = a5;
          LODWORD(v17) = v17 + 1;
        }

        v49 = &v87 + 3 * v17;
        *v49 = v40;
        v49[2] = v41;
        v50 = v17 + 1;
        v51 = v31 & 3;
        v52 = &v95 + 4 * (v31 & 3) + 2;
        if ((v18 >> v51))
        {
          v53 = &v95 + 4 * v34 + 2;
          v54 = (a5 - v52[3]) / (v53[3] - v52[3]);
          v55 = v52[1];
          v56 = v53[1];
          v57 = v54 * (*v53 - *v52);
          v58 = &v87 + 3 * v50;
          *v58 = *v52 + v57;
          v59 = v55 + (v54 * (v56 - v55));
LABEL_45:
          v58[1] = v59;
          v58[2] = a5;
          v17 = v50 + 1;
LABEL_46:
          v71 = &v88;
          v72 = vld1_dup_f32(v71);
          v87 = vdiv_f32(v87, v72);
          if (v17 != 1)
          {
            v73 = &v90;
            v74 = vld1_dup_f32(v73);
            v89 = vdiv_f32(v89, v74);
            if (v17 != 2)
            {
              v75 = v92;
              v76 = vld1_dup_f32(v75);
              v91 = vdiv_f32(v91, v76);
              if (v17 != 3)
              {
                v77 = &v93;
                v78 = vld1_dup_f32(v77);
                *&v92[4] = vdiv_f32(*&v92[4], v78);
                if (v17 != 4)
                {
                  v79 = &v95;
                  v80 = vld1_dup_f32(v79);
                  v94 = vdiv_f32(v94, v80);
                  if (v17 != 5)
                  {
                    v81 = &v95 + 3;
                    v82 = vld1_dup_f32(v81);
                    *(&v95 + 4) = vdiv_f32(*(&v95 + 4), v82);
                  }
                }
              }
            }
          }

          v84 = v87.f32[1];
          v83 = v87.f32[0];
          if (v17 < 2)
          {
            v24 = v87.f32[1];
            v23 = v87.f32[0];
          }

          else
          {
            v85 = fminf(v87.f32[0], v89.f32[0]);
            v86 = fminf(v87.f32[1], v89.f32[1]);
            v23 = fmaxf(v87.f32[0], v89.f32[0]);
            v24 = fmaxf(v87.f32[1], v89.f32[1]);
            if (v17 == 2)
            {
              v83 = v85;
              v84 = v86;
            }

            else
            {
              v83 = fminf(v85, v91.f32[0]);
              v84 = fminf(v86, v91.f32[1]);
              v23 = fmaxf(v23, v91.f32[0]);
              v24 = fmaxf(v24, v91.f32[1]);
              if (v17 != 3)
              {
                v83 = fminf(v83, *&v92[4]);
                v84 = fminf(v84, *&v92[8]);
                v23 = fmaxf(v23, *&v92[4]);
                v24 = fmaxf(v24, *&v92[8]);
                if (v17 != 4)
                {
                  v83 = fminf(v83, v94.f32[0]);
                  v84 = fminf(v84, v94.f32[1]);
                  v23 = fmaxf(v23, v94.f32[0]);
                  v24 = fmaxf(v24, v94.f32[1]);
                  if (v17 != 5)
                  {
                    v83 = fminf(v83, *(&v95 + 1));
                    v84 = fminf(v84, *(&v95 + 2));
                    v23 = fmaxf(v23, *(&v95 + 1));
                    v24 = fmaxf(v24, *(&v95 + 2));
                  }
                }
              }
            }
          }

          v25 = v83 - v19;
          v26 = v84 - v19;
          return HGRectMake4f(v17, v25, v26, v19 + v23, v19 + v24);
        }

        v70.f32[0] = *v52;
        v59 = v52[1];
        a5 = v52[3];
LABEL_44:
        v58 = &v87 + 3 * v50;
        *v58 = v70.f32[0];
        goto LABEL_45;
      }

      v44 = *v38;
      v43 = v38[1].f32[1];
      v45 = 1;
    }

    v60 = &v87 + 3 * v45;
    *v60 = v44;
    v60[2] = v43;
    v17 = v45 + 1;
    v33 = 1;
    v34 = (v31 - 1) & 3;
    if ((v18 >> v34))
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  v20 = vdiv_f32(v97, vdup_lane_s32(v14, 0));
  *(&v95 + 1) = vdiv_f32(*(&v95 + 8), vdup_lane_s32(v13, 0));
  v97 = v20;
  v21 = vdiv_f32(v101, vdup_lane_s32(v16, 0));
  v99 = vdiv_f32(v99, vdup_lane_s32(v15, 0));
  v101 = v21;
  v22 = fminf(*(&v95 + 2), fminf(v20.f32[0], fminf(v99.f32[0], v21.f32[0])));
  v23 = fmaxf(*(&v95 + 2), fmaxf(v20.f32[0], fmaxf(v99.f32[0], v21.f32[0])));
  v24 = fmaxf(*(&v95 + 3), fmaxf(v20.f32[1], fmaxf(v99.f32[1], v21.f32[1])));
  v25 = v22 - v19;
  v26 = fminf(*(&v95 + 3), fminf(v20.f32[1], fminf(v99.f32[1], v21.f32[1]))) - v19;
  return HGRectMake4f(v17, v25, v26, v19 + v23, v19 + v24);
}

void *HGBuffer::HGBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = HGBitmap::HGBitmap(a1, a2, a3, a4);
  *result = &unk_287215808;
  return result;
}

void *HGBuffer::HGBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  result = HGBitmap::HGBitmap(a1, a2, a3, a4, a5);
  *result = &unk_287215808;
  return result;
}

void HGBuffer::~HGBuffer(HGBitmap *this, void *a2)
{
  HGBitmap::~HGBitmap(this, a2);

  HGObject::operator delete(v2);
}

BOOL HGProgramDescriptor::IsMergeable(HGProgramDescriptor *this)
{
  v1 = *(this + 87);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = *(this + 111);
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(this + 12))
    {
      return v1 != 0;
    }

    goto LABEL_7;
  }

  v1 = *(this + 9);
  v2 = *(this + 111);
  if (v2 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v2)
  {
    return v1 != 0;
  }

LABEL_7:
  v4 = *(this + 183);
  if (v4 < 0)
  {
    return v1 != 0 && *(this + 21) != 0;
  }

  else
  {
    return v1 != 0 && v4 != 0;
  }
}

BOOL HGProgramDescriptor::IsComplete(HGProgramDescriptor *this)
{
  if ((*(this + 87) & 0x8000000000000000) != 0)
  {
    if (*(this + 9))
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 87))
  {
LABEL_3:
    if ((*(this + 111) & 0x8000000000000000) != 0)
    {
      if (*(this + 12))
      {
        return 1;
      }
    }

    else if (*(this + 111))
    {
      return 1;
    }

    v1 = *(this + 183);
    if (v1 < 0)
    {
      return *(this + 21) != 0;
    }

    return v1 != 0;
  }

  if ((*(this + 63) & 0x8000000000000000) != 0)
  {
    if (!*(this + 6))
    {
      return 0;
    }
  }

  else if (!*(this + 63))
  {
    return 0;
  }

  if ((*(this + 111) & 0x8000000000000000) != 0)
  {
    if (*(this + 12))
    {
      return 1;
    }
  }

  else if (*(this + 111))
  {
    return 1;
  }

  v1 = *(this + 159);
  if (v1 < 0)
  {
    v1 = *(this + 18);
  }

  return v1 != 0;
}

uint64_t HGProgramDescriptor::IsConcatenated(HGProgramDescriptor *this)
{
  v1 = *(this + 87);
  if (v1 < 0)
  {
    v1 = *(this + 9);
    v2 = *(this + 111);
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = *(this + 183);
      if (v5 < 0)
      {
        v5 = *(this + 21);
      }

      v3 = v5 != 0;
      if (!v1)
      {
        return 0;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = *(this + 111);
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  if (!*(this + 12))
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = 1;
  if (!v1)
  {
    return 0;
  }

LABEL_11:
  if (!v3)
  {
    return 0;
  }

  for (i = *(this + 14); i != *(this + 15); i += 16)
  {
    if (!*i && *(i + 8))
    {
      return 1;
    }
  }

  return 0;
}

__n128 HGProgramDescriptor::SetReturnBinding(uint64_t a1, uint64_t a2)
{
  *(a1 + 184) = *a2;
  std::string::operator=((a1 + 192), (a2 + 8));
  result = *(a2 + 32);
  *(a1 + 216) = result;
  return result;
}

void HGProgramDescriptor::SetArgumentBindings(uint64_t *a1, uint64_t *a2)
{
  v4 = (a1 + 29);
  if (v4 != a2)
  {
    std::vector<HGBinding>::__assign_with_size[abi:ne200100]<HGBinding*,HGBinding*>(v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  }

  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    while (1)
    {
      v9 = *(*a2 + v6);
      if (v9 == 9)
      {
        break;
      }

      if (v9 != 10)
      {
        goto LABEL_9;
      }

      v14 = 1;
      v15 = 0;
      v10 = a1[15];
      if (v10 < a1[16])
      {
        *v10 = 1;
LABEL_8:
        *(v10 + 8) = 0;
        a1[15] = v10 + 16;
        goto LABEL_9;
      }

      v11 = std::vector<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>::__emplace_back_slow_path<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>(a1 + 14, &v14);
      v12 = v15;
      a1[15] = v11;
      if (v12)
      {
        goto LABEL_14;
      }

LABEL_9:
      v6 += 48;
      if (!--v8)
      {
        return;
      }
    }

    v14 = 2;
    v15 = 0;
    v10 = a1[15];
    if (v10 >= a1[16])
    {
      v13 = std::vector<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>::__emplace_back_slow_path<std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>>(a1 + 14, &v14);
      v12 = v15;
      a1[15] = v13;
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_14:
      (*(*v12 + 24))(v12);
      goto LABEL_9;
    }

    *v10 = 2;
    goto LABEL_8;
  }
}

uint64_t std::pair<HGProgramDescriptor::InputType,HGRef<HGProgramDescriptor>>::~pair(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    (*(*v1 + 24))(*(result + 8));
    return v2;
  }

  return result;
}

void HGProgramDescriptor::SetStageInBindings(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 256);
  if (v2 != a2)
  {
    std::vector<HGBinding>::__assign_with_size[abi:ne200100]<HGBinding*,HGBinding*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  }
}

void *HGProgramDescriptor::SetInput(void *result, unint64_t a2, void *a3)
{
  v3 = result[14];
  if (a2 < (result[15] - v3) >> 4)
  {
    v4 = *a3;
    if (*a3)
    {
      v5 = result;
      (*(*v4 + 16))(v4);
      v7 = v5[14];
      *(v7 + 16 * a2) = 0;
      v8 = (v7 + 16 * a2 + 8);
      result = *v8;
      if (*v8 == v4)
      {
        return (*(*v4 + 24))(v4);
      }
    }

    else
    {
      *(v3 + 16 * a2) = 0;
      v8 = (v3 + 16 * a2 + 8);
      result = *v8;
      if (!*v8)
      {
        return result;
      }
    }

    if (result)
    {
      result = (*(*result + 24))(result);
    }

    *v8 = v4;
  }

  return result;
}

void *HGProgramDescriptor::SetInput(void *result, unint64_t a2, int a3)
{
  v3 = result[14];
  if (a2 < (result[15] - v3) >> 4)
  {
    v4 = v3 + 16 * a2;
    *v4 = a3;
    result = *(v4 + 8);
    if (result)
    {
      result = (*(*result + 24))(result);
      *(v4 + 8) = 0;
    }
  }

  return result;
}

uint64_t HGProgramDescriptor::EncodeShaderDeclarations(uint64_t result, std::string *this)
{
  v3 = *(result + 87);
  if (v3 < 0)
  {
    v3 = *(result + 72);
    v4 = *(result + 111);
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(result + 111);
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  if (*(result + 96))
  {
LABEL_4:
    v5 = 1;
    if (!v3)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_8:
  v6 = *(result + 183);
  if (v6 < 0)
  {
    v6 = *(result + 168);
  }

  v5 = v6 != 0;
  if (v3)
  {
LABEL_11:
    if (v5)
    {
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = 1046;
      }

      else
      {
        v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) + 1023;
      }

      std::string::reserve(this, v7);
      HGMetalUtils::stringForMetalHeader(v8);
    }
  }

  return result;
}

void sub_25FC3F09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

std::string *HGProgramDescriptor::privateEncodeShaderDeclarations(uint64_t a1, std::string *a2)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  while (v4 != v5)
  {
    v6 = *v4;
    LODWORD(__p) = *v4;
    v7 = *(v4 + 1);
    v31 = v7;
    if (v7)
    {
      (*(*v7 + 16))(v7);
      if (!v6)
      {
        (*(*v7 + 16))(v7);
        HGProgramDescriptor::privateEncodeShaderDeclarations(v7, a2);
        (*(*v7 + 24))(v7);
      }

      (*(*v7 + 24))(v7);
    }

    v4 += 4;
  }

  std::string::append(a2, "[[ visible ]] ");
  if (*(a1 + 215) >= 0)
  {
    v8 = *(a1 + 215);
  }

  else
  {
    v8 = *(a1 + 200);
  }

  if (v8 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_71;
  }

  if (v8 + 1 >= 0x17)
  {
    operator new();
  }

  v31 = 0;
  v32 = 0;
  __p = 0;
  HIBYTE(v32) = v8 + 1;
  if (v8)
  {
    if (*(a1 + 215) >= 0)
    {
      v9 = (a1 + 192);
    }

    else
    {
      v9 = *(a1 + 192);
    }

    memmove(&__p, v9, v8);
  }

  *(&__p + v8) = 32;
  if (v32 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v32 >= 0)
  {
    v11 = HIBYTE(v32);
  }

  else
  {
    v11 = v31;
  }

  std::string::append(a2, p_p, v11);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  v12 = *(a1 + 87) >= 0 ? *(a1 + 87) : *(a1 + 72);
  if (v12 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_71:
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 + 1 >= 0x17)
  {
    operator new();
  }

  v31 = 0;
  v32 = 0;
  __p = 0;
  HIBYTE(v32) = v12 + 1;
  if (v12)
  {
    if (*(a1 + 87) >= 0)
    {
      v13 = (a1 + 64);
    }

    else
    {
      v13 = *(a1 + 64);
    }

    memmove(&__p, v13, v12);
  }

  *(&__p + v12) = 40;
  if (v32 >= 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p;
  }

  if (v32 >= 0)
  {
    v15 = HIBYTE(v32);
  }

  else
  {
    v15 = v31;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  v17 = *(a1 + 232);
  v16 = *(a1 + 240);
  if (v17 != v16)
  {
    std::string::append(a2, "");
    v18 = *(v17 + 36) - 1;
    if (v18 <= 3)
    {
      std::string::append(a2, off_279AA87C8[v18]);
    }

    v19 = *(v17 + 31);
    if (v19 >= 0)
    {
      v20 = (v17 + 8);
    }

    else
    {
      v20 = *(v17 + 8);
    }

    if (v19 >= 0)
    {
      v21 = *(v17 + 31);
    }

    else
    {
      v21 = *(v17 + 16);
    }

    std::string::append(a2, v20, v21);
    v22 = *(v17 + 36) - 1;
    if (v22 <= 3)
    {
      std::string::append(a2, off_279AA87E8[v22]);
    }

    for (i = v17 + 48; i != v16; i += 48)
    {
      std::string::append(a2, ", ");
      v24 = *(i + 36) - 1;
      if (v24 <= 3)
      {
        std::string::append(a2, off_279AA87C8[v24]);
      }

      v25 = *(i + 31);
      if (v25 >= 0)
      {
        v26 = (i + 8);
      }

      else
      {
        v26 = *(i + 8);
      }

      if (v25 >= 0)
      {
        v27 = *(i + 31);
      }

      else
      {
        v27 = *(i + 16);
      }

      std::string::append(a2, v26, v27);
      v28 = *(i + 36) - 1;
      if (v28 <= 3)
      {
        std::string::append(a2, off_279AA87E8[v28]);
      }
    }
  }

  return std::string::append(a2, ");\n");
}