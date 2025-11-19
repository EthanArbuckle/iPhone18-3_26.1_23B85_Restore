uint64_t ermclo()
{
  if (ermfop)
  {
    result = fclose(msgfil);
  }

  ermfop = 0;
  ercmle = 0;
  return result;
}

void ermini()
{
  ercnxu = 0;
  ercusd = 0;
  ercmle = 0;
  ermfop = 0;
  ermloc = -2;
  ermltm = 0;
}

uint64_t dxerr_report_get_errno(_DWORD *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1)
  {
    return a1[4];
  }

  return 4294967293;
}

double dxerr_report_create(uint64_t a1)
{
  if (a1)
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 13) = 0;
  }

  return result;
}

uint64_t dxerr_report_activate(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1)
  {
    return 4294967294;
  }

  result = 0;
  *a1 = 1;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  return result;
}

_BYTE *fgl(_BYTE *a1, int a2, FILE *a3)
{
  v6 = a2;
  v7 = a1;
  while (1)
  {
    v8 = getc(a3);
    v9 = v8;
    if (v8 == -1)
    {
      break;
    }

    if (v6 < 2)
    {
      --v6;
      break;
    }

    if (v8 != 13)
    {
      if (v8 == 10)
      {
        goto LABEL_11;
      }

      --v6;
      *v7++ = v8;
    }
  }

  if (a2 >= 1 && v6 <= 0)
  {
    ungetc(v8, a3);
  }

LABEL_11:
  v10 = v7 == a1 && v9 == -1;
  *v7 = 0;
  if (v10)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

_BYTE *dxios_fgl(_BYTE *a1, int a2, uint64_t a3)
{
  v6 = dxios_stream_gcmt(a3);
  v7 = v6 == -1;
  v8 = a1;
  if (v6 == -1)
  {
    v10 = a2;
  }

  else
  {
    v9 = a2;
    while (v9 >= 2 && v6 != 10)
    {
      *v8++ = v6;
      v6 = dxios_stream_gcmt(a3);
      --v9;
      if (v6 == -1)
      {
        v7 = 1;
        goto LABEL_12;
      }
    }

    v10 = v9 - 1;
  }

  if (a2 >= 1 && v10 <= 0)
  {
    dxios_stream_ungetc(v6, a3);
  }

LABEL_12:
  *v8 = 0;
  if (v7 && v8 == a1)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

FILE *fopes(char *a1, char *a2, char *a3)
{
  if (strcic(a1, ""))
  {

    return dxios_search_fopen(a1, a3, 255, a2, 288);
  }

  else
  {
    if (a3)
    {
      strcpy(a3, a1);
    }

    if (*a2 == 119 && (!a2[1] || a2[1] == 98 && !a2[2]))
    {
      v7 = &__stdoutp;
    }

    else
    {
      v7 = &__stdinp;
    }

    return *v7;
  }
}

double dxios_stream_create(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = xmmword_2D090;
  *(a1 + 16) = 0u;
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

_DWORD *dxios_stream_destroy(_DWORD *result)
{
  if (*result)
  {
    return dxios_stream_deactivate(result, 0);
  }

  return result;
}

uint64_t dxios_stream_deactivate(uint64_t a1, void *a2)
{
  if (*a1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = v4(*(a1 + 32), *(a1 + 16));
      *(a1 + 32) = 0;
      if (!a2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = 0;
      if (!a2)
      {
LABEL_5:
        *a1 = 0;
        if (!v5)
        {
          return v5;
        }

        goto LABEL_8;
      }
    }

    *a2 = *(a1 + 24);
    goto LABEL_5;
  }

  v5 = 4294967293;
LABEL_8:
  dxerr_report_activate(*(a1 + 16), dxios_pg_name, v5);
  return v5;
}

uint64_t dxios_stream_activate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    v9 = 0xFFFFFFFFLL;
    dxerr_report_activate(*(a1 + 16), dxios_pg_name, -1);
    dxios_stream_deactivate(a1, 0);
  }

  else
  {
    v9 = 0;
    *a1 = xmmword_2D0A0;
    *(a1 + 24) = 0;
    *(a1 + 32) = a2;
    *(a1 + 40) = a3;
    *(a1 + 48) = a4;
    *(a1 + 56) = a5;
    *(a1 + 64) = a6;
    *(a1 + 72) = a7;
    *(a1 + 80) = a8;
  }

  return v9;
}

unint64_t dxios_stream_read(_BYTE *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 * a2;
  v6 = *(a4 + 4);
  if (v5)
  {
    v7 = v6 == -1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = *(a4 + 8);
    if (v5)
    {
      v9 = v8 == -1;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
      goto LABEL_13;
    }

    *a1 = v8;
    *(a4 + 8) = -1;
  }

  else
  {
    *a1 = v6;
    *(a4 + 4) = -1;
  }

  --v5;
  v10 = 1;
LABEL_13:
  v11 = *(a4 + 56);
  if (v5)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a4 + 32);
    v11(a1, *(a4 + 16));
  }

  return v10 / a2;
}

unint64_t dxios_stream_write(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v6 = a4[8];
  if (v6)
  {
    (v6)(a1, a4[2], a3 * a2, &v8, a4);
    v6 = v8;
  }

  a4[3] += v6;
  return v6 / a2;
}

uint64_t dxios_stream_ungetc(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 4) = result;
  return result;
}

uint64_t dxios_stream_rewind(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = v3(*(a1 + 32), *(a1 + 16), a2);
    }

    else
    {
      v6 = *(a1 + 72);
      if (!v6)
      {
        goto LABEL_9;
      }

      v4 = v6(*(a1 + 32), *(a1 + 16), 0);
    }

    v5 = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_9:
    v5 = 0;
    *(a1 + 12) = 1;
    return v5;
  }

  v5 = 4294967293;
LABEL_8:
  dxerr_report_activate(*(a1 + 16), dxios_pg_name, v5);
  return v5;
}

unint64_t dxios_stream_gpbw(_BYTE *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 80);
  if (!v5)
  {
    return 0;
  }

  v18 = 0;
  if (v5(*(a4 + 32), *(a4 + 16), &v18))
  {
    return 0;
  }

  v13 = *(a4 + 72);
  if (!v13 || !*(a4 + 56))
  {
    return 0;
  }

  v14 = v13(*(a4 + 32), *(a4 + 16), a5);
  if (a5 || v14)
  {
    if (!v14)
    {
      goto LABEL_11;
    }

    return 0;
  }

  *(a4 + 12) = 1;
LABEL_11:
  v11 = dxios_stream_read(a1, a2, a3, a4);
  v15 = *(a4 + 72);
  if (v15)
  {
    if (*(a4 + 56))
    {
      v16 = v18;
      v17 = v15(*(a4 + 32), *(a4 + 16), v18);
      if (!v16 && !v17)
      {
        *(a4 + 12) = 1;
      }
    }
  }

  return v11;
}

uint64_t dxios_stream_tell(void *a1, uint64_t a2)
{
  v2 = a1[10];
  if (v2)
  {
    return v2(a1[4], a1[2], a2);
  }

  else
  {
    return 4294967288;
  }
}

uint64_t dxios_stream_seek_set(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 4294967288;
  }

  if (!*(a1 + 56))
  {
    return 4294967285;
  }

  result = v2(*(a1 + 32), *(a1 + 16), a2);
  if (!a2 && !result)
  {
    *(a1 + 12) = 1;
  }

  return result;
}

BOOL dxios_stream_eof(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    return 0;
  }

  v7 = v1;
  v8 = v2;
  if (*(a1 + 8) != -1)
  {
    return 0;
  }

  v6 = 0;
  v5 = dxios_stream_read(&v6, 1uLL, 1, a1);
  if (v5 == 1)
  {
    *(a1 + 4) = v6;
  }

  return v5 != 1;
}

uint64_t dxios_stream_gcmt(uint64_t a1)
{
  v9 = 0;
  if (dxios_stream_read(&v9, 1uLL, 1, a1) == 1)
  {
    v2 = v9;
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  if (v2 == 13 || v2 == 10)
  {
    v10 = 0;
    v4 = dxios_stream_read(&v10, 1uLL, 1, a1);
    v5 = v10;
    if (v4 != 1)
    {
      v5 = -1;
    }

    if (v5 != 13 && v5 != 10 || v5 == v2)
    {
      *(a1 + 8) = v5;
    }

    return 10;
  }

  return v2;
}

uint64_t dxios_stream_getc(uint64_t a1)
{
  v2 = 0;
  if (dxios_stream_read(&v2, 1uLL, 1, a1) == 1)
  {
    return v2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t dxios_stream_pcmt(uint64_t a1, void *a2)
{
  v2 = a1;
  if (dxios_stream_putc(a1, a2) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  return v2;
}

uint64_t dxios_stream_putc(unsigned int a1, void *a2)
{
  v8 = 0;
  v2 = a2[8];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1;
  v2(&v7, a2[2], 1, &v8, a2);
  v5 = v8;
  a2[3] += v8;
  if (v5 == 1)
  {
    return a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t dxios_stream_puts(_BYTE *a1, void *a2)
{
  while (1)
  {
    v4 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    if (dxios_stream_putc(v4, a2) != v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t dxios_stream_printf(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v68 = 0;
  v67 = &a9;
  v9 = *a2;
  if (*a2)
  {
    v10 = a2;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = &v71;
    do
    {
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          if ((v9 - 48) <= 9u)
          {
            v15 = v9 + 10 * v15 - 48;
LABEL_24:
            v12 = 3;
            goto LABEL_180;
          }

          goto LABEL_29;
        }
      }

      else
      {
        if (!v12)
        {
          if (v9 == 37)
          {
            v14 = 0;
            v13 = 0;
            goto LABEL_48;
          }

          dxios_stream_putc(v9, a1);
          goto LABEL_26;
        }

        if (v12 != 1)
        {
          if (v9 == 46)
          {
            goto LABEL_23;
          }

          if ((v9 - 48) <= 9u)
          {
            v16 = (v9 - 48) + 10 * v16;
LABEL_51:
            v12 = 2;
            goto LABEL_180;
          }

LABEL_29:
          if (v9 - 76 <= 0x20 && ((1 << (v9 - 76)) & 0x110000001) != 0)
          {
            v12 = 5;
            v14 = v9;
            goto LABEL_180;
          }

          goto LABEL_12;
        }

        if (v9 <= 0x2Au)
        {
          if (v9 == 32)
          {
            v13 |= 4u;
            goto LABEL_48;
          }

          if (v9 == 35)
          {
            v13 |= 8u;
            goto LABEL_48;
          }
        }

        else
        {
          switch(v9)
          {
            case '+':
              v13 |= 2u;
              goto LABEL_48;
            case '0':
              v13 |= 0x20u;
              goto LABEL_48;
            case '-':
              v13 |= 0x10u;
LABEL_48:
              v12 = 1;
              goto LABEL_180;
          }
        }

        if ((v9 - 48) <= 9u)
        {
          v16 = (v9 - 48);
          v13 |= 0x40u;
          goto LABEL_51;
        }

        if (v9 > 0x67u)
        {
          if (v9 == 104 || v9 == 108)
          {
LABEL_141:
            v14 = v9;
            v12 = 5;
            goto LABEL_180;
          }
        }

        else
        {
          if (v9 == 46)
          {
LABEL_23:
            v15 = 0;
            v13 |= 0x80u;
            goto LABEL_24;
          }

          if (v9 == 76)
          {
            goto LABEL_141;
          }
        }
      }

LABEL_12:
      v69 = 0;
      if (v9 <= 0x4Bu)
      {
        if (v9 != 37)
        {
          if (v9 != 69 && v9 != 71)
          {
            goto LABEL_180;
          }

LABEL_38:
          if ((v13 & 0x80) == 0)
          {
            v15 = 6;
          }

          while (v16)
          {
            --v16;
            dxios_stream_putc(0x30u, a1);
          }

          goto LABEL_179;
        }

        if ((v13 & 0x50) == 0x40)
        {
          while (v16)
          {
            --v16;
            dxios_stream_putc(0x20u, a1);
          }

          v16 = -1;
        }

        dxios_stream_putc(0x25u, a1);
        if ((v13 & 0x40) != 0)
        {
          while (v16)
          {
            --v16;
            dxios_stream_putc(0x20u, a1);
          }

          goto LABEL_179;
        }

LABEL_26:
        v12 = 0;
        goto LABEL_180;
      }

      v18 = 88;
      switch(v9)
      {
        case 'X':
        case 'x':
          if (v14 == 108)
          {
            v18 = v9;
LABEL_111:
            v43 = v67;
            v67 += 2;
            v20 = *v43;
            v14 = 108;
            v9 = v18;
            if (!*v43)
            {
              goto LABEL_156;
            }
          }

          else if (v14 == 104)
          {
            v19 = v67;
            v67 += 2;
            v20 = *v19;
            if (!*v19)
            {
              goto LABEL_156;
            }
          }

          else
          {
            v44 = v67;
            v67 += 2;
            v20 = *v44;
            if (!*v44)
            {
              goto LABEL_156;
            }
          }

          v42 = 3;
          v45 = v17;
          do
          {
            v46 = v20 & 0xF | 0x30;
            if (v46 <= 0x39)
            {
              v47 = 0;
            }

            else
            {
              v47 = v9 - 81;
            }

            *(v45 - 1) = v47 + v46;
            v45 = (v45 + 1);
            ++v42;
            v48 = v20 > 0xF;
            v20 >>= 4;
          }

          while (v48);
          if ((v13 & 8) == 0)
          {
            v42 -= 2;
            goto LABEL_154;
          }

          *(v45 - 1) = v9;
          goto LABEL_153;
        case 'Y':
        case 'Z':
        case '[':
        case '\\':
        case ']':
        case '^':
        case '_':
        case 'a':
        case 'b':
        case 'j':
        case 'k':
        case 'm':
        case 'q':
        case 'r':
        case 't':
        case 'v':
        case 'w':
          break;
        case 'c':
          if ((v13 & 0x50) == 0x40)
          {
            v30 = v16 - 1;
            if (v16 != 1)
            {
              do
              {
                dxios_stream_putc(0x20u, a1);
                --v30;
              }

              while (v30);
            }

            v16 = 0;
          }

          v31 = v67;
          v67 += 2;
          dxios_stream_putc(*v31, a1);
          if ((v13 & 0x40) == 0)
          {
            goto LABEL_26;
          }

          v32 = v16 - 1;
          if (v16 != 1)
          {
            do
            {
              dxios_stream_putc(0x20u, a1);
              --v32;
            }

            while (v32);
          }

          v16 = 0;
          goto LABEL_176;
        case 'd':
        case 'i':
          v21 = v67;
          v67 += 2;
          if (v14 == 108)
          {
            v22 = *v21;
          }

          else
          {
            v22 = *v21;
          }

          v13 |= v22 >> 63;
          if (!v22)
          {
            goto LABEL_156;
          }

          if (v22 >= 0)
          {
            v41 = v22;
          }

          else
          {
            v41 = -v22;
          }

          v42 = 1;
          do
          {
            v70[v42++ - 1] = (v41 % 0xA) | 0x30;
            v29 = v41 >= 0xA;
            v41 /= 0xAuLL;
          }

          while (v29);
          goto LABEL_154;
        case 'e':
        case 'g':
          goto LABEL_38;
        case 'f':
          if ((v13 & 0x80) == 0)
          {
            v15 = 6;
          }

          dbl_and_fcvt = dxios_get_dbl_and_fcvt();
          v27 = strlen(dbl_and_fcvt) + 1;
          if ((v13 & 0x50) == 0x40)
          {
            if (v16 != v27)
            {
              v28 = v27 - v16;
              do
              {
                dxios_stream_putc(0x20u, a1);
                v29 = __CFADD__(v28++, 1);
              }

              while (!v29);
            }

            v16 = -1;
          }

          else
          {
            v16 -= v27;
          }

          v48 = v68-- < 1;
          if (!v48)
          {
            do
            {
              v49 = *dbl_and_fcvt++;
              dxios_stream_putc(v49, a1);
              v50 = v68--;
            }

            while (v50 > 0);
          }

          dxios_stream_putc(0x2Eu, a1);
          v51 = *dbl_and_fcvt;
          if (*dbl_and_fcvt)
          {
            v52 = (dbl_and_fcvt + 1);
            do
            {
              dxios_stream_putc(v51, a1);
              v53 = *v52++;
              v51 = v53;
            }

            while (v53);
          }

          if ((v13 & 0x40) == 0)
          {
            goto LABEL_176;
          }

          while (v16)
          {
            --v16;
            dxios_stream_putc(0x20u, a1);
          }

          goto LABEL_179;
        case 'h':
        case 'l':
          return 0;
        case 'n':
          v12 = 0;
          v23 = v67;
          v67 += 2;
          **v23 = 0;
          break;
        case 'o':
          if (v14 == 108)
          {
            v57 = v67;
            v67 += 2;
            v40 = *v57;
            if (!*v57)
            {
              goto LABEL_156;
            }
          }

          else if (v14 == 104)
          {
            v39 = v67;
            v67 += 2;
            v40 = *v39;
            if (!*v39)
            {
              goto LABEL_156;
            }
          }

          else
          {
            v59 = v67;
            v67 += 2;
            v40 = *v59;
            if (!*v59)
            {
              goto LABEL_156;
            }
          }

          v42 = 1;
          do
          {
            v70[v42++ - 1] = v40 & 7 | 0x30;
            v48 = v40 > 7;
            v40 >>= 3;
          }

          while (v48);
          if ((v13 & 8) != 0)
          {
            v45 = &v70[v42++ - 1];
LABEL_153:
            *v45 = 48;
          }

          goto LABEL_154;
        case 'p':
          goto LABEL_111;
        case 's':
          v66 = v17;
          v33 = v67;
          v67 += 2;
          v34 = *v33;
          v35 = strlen(*v33);
          if (v15 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v15;
          }

          if ((v13 & 0x80) != 0)
          {
            v37 = v36;
          }

          else
          {
            v37 = v35;
          }

          if ((v13 & 0x50) != 0x40)
          {
            v16 -= v37;
            if (!v37)
            {
              goto LABEL_134;
            }

            do
            {
LABEL_133:
              --v37;
              v54 = *v34++;
              dxios_stream_putc(v54, a1);
            }

            while (v37);
            goto LABEL_134;
          }

          if (v16 != v37)
          {
            v38 = v37 - v16;
            do
            {
              dxios_stream_putc(0x20u, a1);
              v29 = __CFADD__(v38++, 1);
            }

            while (!v29);
          }

          v16 = -1;
          if (v37)
          {
            goto LABEL_133;
          }

LABEL_134:
          if ((v13 & 0x40) != 0)
          {
            v17 = v66;
            while (v16)
            {
              --v16;
              dxios_stream_putc(0x20u, a1);
            }

LABEL_179:
            v12 = 0;
            v16 = -1;
            break;
          }

          v12 = 0;
          v17 = v66;
          break;
        case 'u':
          if (v14 == 108)
          {
            v55 = v67;
            v67 += 2;
            v25 = *v55;
            if (!*v55)
            {
              goto LABEL_156;
            }
          }

          else if (v14 == 104)
          {
            v24 = v67;
            v67 += 2;
            v25 = *v24;
            if (!*v24)
            {
              goto LABEL_156;
            }
          }

          else
          {
            v56 = v67;
            v67 += 2;
            v25 = *v56;
            if (!*v56)
            {
LABEL_156:
              v70[0] = 48;
              v13 &= 0xFFFDu;
              v58 = v17;
              goto LABEL_157;
            }
          }

          v42 = 1;
          do
          {
            v70[v42++ - 1] = (v25 % 0xA) | 0x30;
            v29 = v25 >= 0xA;
            v25 /= 0xAuLL;
          }

          while (v29);
LABEL_154:
          v58 = &v70[v42 - 1];
LABEL_157:
          v16 = v16 - ((v13 & 7) != 0) + v70 - v58;
          if ((v13 & 0x70) == 0x40)
          {
            while (v16)
            {
              --v16;
              dxios_stream_putc(0x20u, a1);
            }

            v16 = -1;
          }

          if (v13)
          {
            v60 = 45;
          }

          else if ((v13 & 2) != 0)
          {
            v60 = 43;
          }

          else
          {
            if ((v13 & 4) == 0)
            {
              goto LABEL_168;
            }

            v60 = 32;
          }

          dxios_stream_putc(v60, a1);
LABEL_168:
          if ((~v13 & 0x60) == 0)
          {
            while (v16)
            {
              --v16;
              dxios_stream_putc(0x30u, a1);
            }

            v16 = -1;
          }

          v61 = *(v58 - 1);
          if (v61)
          {
            v62 = v58 - 2;
            do
            {
              dxios_stream_putc(v61, a1);
              v63 = *v62--;
              v61 = v63;
            }

            while (v63);
          }

          if ((v13 & 0x40) == 0)
          {
LABEL_176:
            v12 = 0;
            break;
          }

          while (v16)
          {
            --v16;
            dxios_stream_putc(0x20u, a1);
          }

          goto LABEL_179;
        default:
          if (v9 != 76)
          {
            break;
          }

          return 0;
      }

LABEL_180:
      v64 = *++v10;
      v9 = v64;
    }

    while (v64);
  }

  return 0;
}

uint64_t dxios_close(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (dxios_stream_deactivate(a1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  free(a1);
  return 0;
}

uint64_t dxios_mapped_mode(uint64_t a1, char *__s)
{
  v2 = a1;
  if ((a1 & 0xFFFFFFFE) == 4)
  {
    strcpy(v6, ".txt");
    if (__s && (v4 = strlen(__s), v4 >= 5) && !strcic(&__s[v4 - 4], v6))
    {
      return 2 * (v2 != 4);
    }

    else if (v2 == 4)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return v2;
}

char *dxios_fopen_mode(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_34550[a1];
  }
}

uint64_t dxios_fopen_mode_w(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_34570 + a1);
  }
}

uint64_t dxios_stream_activate_autobuf(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!dxios_mode_is_for_reading(a2))
  {
    v8 = dxc_alloc(a3 + 32);
    if (v8)
    {
      v9 = v8;
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *v8 = v8 + 32;
      *(v8 + 1) = v8 + 32;
      *(v8 + 2) = a3;
      *(v8 + 3) = a4;
      v7 = dxios_stream_activate(a1, v8, dxios_buf_close, 0, 0, dxios_buf_write, dxios_buf_seek_set, dxios_buf_tell);
      if (!v7)
      {
        return v7;
      }

      free(v9);
    }

    else
    {
      v7 = 4294967294;
    }

    dxerr_report_activate(*(a1 + 16), dxios_pg_name, v7);
    return v7;
  }

  return 4294967290;
}

uint64_t dxios_buf_close(void *a1)
{
  if (a1)
  {
    free(a1);
  }

  return 0;
}

uint64_t dxios_buf_write(void *__src, int a2, size_t __n, size_t *a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  v6 = *(a5 + 32);
  if (!v6)
  {
    return 0;
  }

  v8 = __n;
  v10 = v6[1];
  v11 = &v10[-*v6];
  v12 = &v11[__n];
  v13 = v6[2];
  v14 = &v11[__n - v13];
  if (&v11[__n] < v13 || (v15 = v6[3]) == 0)
  {
LABEL_9:
    *a4 = v8;
    v19 = v6[2];
    if (v12 >= v19)
    {
      v8 = v19 - v11;
      *a4 = v19 - v11;
    }

    if (v8)
    {
      memcpy(v10, __src, v8);
      result = 0;
      v6[1] += *a4;
      return result;
    }

    return 0;
  }

  if (v14 <= v15)
  {
    v14 = v6[3];
  }

  v16 = &v14[v13];
  v17 = dxc_realloc(*(a5 + 32), &v14[v13 + 32]);
  if (v17)
  {
    v6 = v17;
    *(v17 + 2) = v16;
    v18 = v17 + 32;
    v10 = &v11[v17 + 32];
    *v6 = v18;
    v6[1] = v10;
    *(a5 + 32) = v6;
    goto LABEL_9;
  }

  return 4294967294;
}

uint64_t dxios_buf_seek_set(void *a1, uint64_t a2, uint64_t a3)
{
  result = 4294967286;
  if (a1 && (a3 & 0x8000000000000000) == 0 && a1[2] >= a3)
  {
    result = 0;
    a1[1] = *a1 + a3;
  }

  return result;
}

uint64_t dxios_buf_tell(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    *a3 = a1[1] - *a1;
  }

  return 0;
}

uint64_t dxios_stream_capture_buf(uint64_t a1, void *a2, int a3, size_t *a4)
{
  if (!a2)
  {
    return 4294967282;
  }

  *a2 = 0;
  if (!a1 || !*a1)
  {
    return 4294967293;
  }

  if (*(a1 + 40) != dxios_buf_close)
  {
    return 4294967283;
  }

  if (*(a1 + 64) != dxios_buf_write)
  {
    return 4294967290;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    return 4294967284;
  }

  v9 = *(v6 + 8);
  v10 = v9 - *v6;
  if (a3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v9 - *v6;
  }

  v12 = malloc_type_malloc(v11, 0xCF5FE8A4uLL);
  *a2 = v12;
  if (!v12)
  {
    return 4294967294;
  }

  memcpy(v12, *v6, v10);
  if (a3)
  {
    *(*a2 + v10) = 0;
  }

  result = 0;
  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t dxios_stream_activate_buf(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (dxios_mode_is_for_reading(a2))
  {
    v8 = dxios_buf_read;
  }

  else
  {
    v8 = 0;
  }

  if (dxios_mode_is_for_reading(a2))
  {
    v9 = 0;
  }

  else
  {
    v9 = dxios_buf_write;
  }

  if (*a1)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v12 = dxc_alloc(0x20uLL);
    if (v12)
    {
      v13 = v12;
      *v12 = 0u;
      v12[1] = 0u;
      *v12 = a3;
      *(v12 + 1) = a3;
      *(v12 + 2) = a4;
      *(v12 + 3) = 0;
      v10 = dxios_stream_activate(a1, v12, dxios_buf_close, 0, v8, v9, dxios_buf_seek_set, dxios_buf_tell);
      if (!v10)
      {
        return v10;
      }

      free(v13);
    }

    else
    {
      v10 = 4294967294;
    }
  }

  dxerr_report_activate(*(a1 + 16), dxios_pg_name, v10);
  return v10;
}

uint64_t dxios_buf_read(void *a1, uint64_t a2, size_t a3, size_t *a4, void *a5)
{
  if (a5)
  {
    v7 = a5[1];
    if (a5[2] - v7 + *a5 < a3)
    {
      a3 = a5[2] - v7 + *a5;
    }

    *a4 = a3;
    memcpy(a1, v7, a3);
    a5[1] += *a4;
  }

  return 0;
}

uint64_t dxios_series_activate_ram(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v4 = 4294967276;
    goto LABEL_6;
  }

  if (*(a1 + 16) || *(a1 + 104))
  {
    v4 = 4294967272;
    goto LABEL_6;
  }

  v8 = dxc_alloc(a2 + 32);
  if (!v8)
  {
LABEL_15:
    v4 = 4294967271;
    goto LABEL_6;
  }

  v9 = v8;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *v8 = v8 + 32;
  *(v8 + 1) = v8 + 32;
  *(v8 + 2) = a2;
  *(v8 + 3) = a3;
  v10 = dxios_stream_activate(a1 + 16, v8, dxios_buf_close, dxios_buf_rewind, dxios_buf_read, 0, dxios_buf_seek_set, dxios_buf_tell);
  if (v10)
  {
    v4 = v10;
    free(v9);
    goto LABEL_6;
  }

  v11 = dxc_alloc(a2 + 32);
  if (!v11)
  {
    dxios_stream_deactivate(a1 + 16, 0);
    goto LABEL_15;
  }

  v12 = v11;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *v11 = v11 + 32;
  *(v11 + 1) = v11 + 32;
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  v4 = dxios_stream_activate(a1 + 104, v11, dxios_buf_close, dxios_buf_rewind, 0, dxios_buf_write, dxios_buf_seek_set, dxios_buf_tell);
  if (!v4)
  {
    *a1 = 1;
    return v4;
  }

  free(v12);
  dxios_stream_deactivate(a1 + 16, 0);
LABEL_6:
  dxerr_report_activate(*(a1 + 8), dxios_pg_name, v4);
  return v4;
}

uint64_t dxios_buf_rewind(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (a1)
  {
    v4 = dxios_mode_is_for_reading(a3);
    v5 = *a1;
    if (v4)
    {
      a1[2] = a1[1] - v5;
    }

    a1[1] = v5;
  }

  return 0;
}

uint64_t dxios_stream_activate_fp(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (dxios_mode_is_for_reading(a3))
  {
    v8 = dxios_fread;
  }

  else
  {
    v8 = 0;
  }

  if (dxios_mode_is_for_reading(a3))
  {
    v9 = 0;
  }

  else
  {
    v9 = dxios_fwrite;
  }

  if (a4)
  {
    v10 = dxios_fclose;
  }

  else
  {
    v10 = 0;
  }

  return dxios_stream_activate(a1, a2, v10, 0, v8, v9, dxios_fseek_set, dxios_ftell);
}

uint64_t dxios_fread(void *a1, uint64_t a2, size_t a3, size_t *a4, FILE *__stream)
{
  *a4 = fread(a1, 1uLL, a3, __stream);
  v7 = ferror(__stream);
  if (v7)
  {
    dxerr_report_activate(a2, 0, v7);
  }

  return v7;
}

uint64_t dxios_fwrite(const void *a1, uint64_t a2, size_t a3, size_t *a4, uint64_t a5)
{
  *a4 = fwrite(a1, 1uLL, a3, *(a5 + 32));
  v7 = ferror(*(a5 + 32));
  if (v7)
  {
    dxerr_report_activate(a2, 0, v7);
  }

  return v7;
}

uint64_t dxios_fclose(FILE *a1, uint64_t a2)
{
  v3 = fclose(a1);
  if (v3)
  {
    dxerr_report_activate(a2, 0, v3);
  }

  return v3;
}

uint64_t dxios_fseek_set(FILE *a1, uint64_t a2, uint64_t a3)
{
  if (!fseek(a1, a3, 0))
  {
    return 0;
  }

  v5 = ferror(a1);
  if (v5)
  {
    v6 = a2;
    v7 = 0;
    v8 = v5;
  }

  else
  {
    v7 = dxios_pg_name;
    v6 = a2;
    v8 = -10;
  }

  dxerr_report_activate(v6, v7, v8);
  return v5;
}

uint64_t dxios_ftell(FILE *a1, uint64_t a2, uint64_t *a3)
{
  v5 = ftell(a1);
  if (v5 == -1)
  {
    v6 = *__error();
    dxerr_report_activate(a2, 0, v6);
  }

  else
  {
    v6 = 0;
    *a3 = v5;
  }

  return v6;
}

const char *strcat_lower(const char *a1, _BYTE *a2)
{
  v4 = &a1[strlen(a1)];
  v5 = *a2;
  if (*a2)
  {
    v6 = a2 + 1;
    do
    {
      if ((v5 & 0x80) == 0 && (_DefaultRuneLocale.__runetype[v5] & 0x8000) != 0)
      {
        v5 = __tolower(v5);
      }

      *v4++ = v5;
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  *v4 = 0;
  return a1;
}

const __int32 *wcscat_lower(const __int32 *a1, unsigned int *a2)
{
  v4 = &a1[wcslen(a1)];
  v5 = *a2;
  if (*a2)
  {
    v6 = a2 + 1;
    do
    {
      if (v5 <= 0x7F && (_DefaultRuneLocale.__runetype[v5] & 0x8000) != 0)
      {
        v5 = __tolower(v5);
      }

      *v4++ = v5;
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  *v4 = 0;
  return a1;
}

uint64_t dxios_search_add_cache(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    *a3 = gActivateCachedStream;
  }

  if (a4)
  {
    *a4 = gActivateCachedStreamParam;
  }

  gActivateCachedStream = a1;
  gActivateCachedStreamParam = a2;
  return 0;
}

FILE *dxios_search_fopen(char *__s, _BYTE *a2, uint64_t a3, char *__mode, int a5)
{
  v9 = 0;
  while (1)
  {
    v10 = (a5 >> (8 - 4 * v9)) & 0xF;
    if (v10 == 2)
    {
      v13 = strlen(__s);
      if (dxcprl)
      {
        v14 = v13;
        v15 = &dxcprl;
        while (1)
        {
          v16 = strlen(v15);
          if (v16 + v14 <= 0xFE)
          {
            __strcpy_chk();
            strcat_lower(__filename, __s);
            v17 = fopen(__filename, __mode);
            if (v17)
            {
              break;
            }
          }

          v18 = &v15[v16];
          v19 = *(v18 + 1);
          v15 = v18 + 1;
          if (!v19)
          {
            goto LABEL_12;
          }
        }

        v12 = v17;
        if (a2)
        {
          strcpx(a2, __filename, a3);
        }
      }

      else
      {
LABEL_12:
        v12 = 0;
        if (a2)
        {
          *a2 = 0;
        }
      }

      goto LABEL_15;
    }

    if (v10 == 1)
    {
      break;
    }

    v12 = 0;
LABEL_15:
    if (v9 <= 1)
    {
      ++v9;
      if (!v12)
      {
        continue;
      }
    }

    return v12;
  }

  v11 = fopen(__s, __mode);
  v12 = v11;
  if (!a2 || !v11)
  {
    goto LABEL_15;
  }

  strcpx(a2, __s, a3);
  return v12;
}

FILE *dxios_search_fopen_w(__int32 *a1, _DWORD *a2, uint64_t a3, const __int32 *a4, int a5)
{
  v9 = 0;
  while (1)
  {
    v10 = (a5 >> (8 - 4 * v9)) & 0xF;
    if (v10 == 2)
    {
      v13 = wcslen(a1);
      if (dxcprl)
      {
        v14 = v13;
        v15 = &dxcprl;
        while (1)
        {
          v16 = strlen(v15);
          if (v16 + v14 <= 0xFE)
          {
            mbstowcs(v22, v15, 0xFFuLL);
            wcscat_lower(v22, a1);
            v17 = dx_wfopen(v22, a4);
            if (v17)
            {
              break;
            }
          }

          v18 = &v15[v16];
          v19 = *(v18 + 1);
          v15 = v18 + 1;
          if (!v19)
          {
            goto LABEL_12;
          }
        }

        v12 = v17;
        if (a2)
        {
          wcscpx(a2, v22, a3);
        }
      }

      else
      {
LABEL_12:
        v12 = 0;
        if (a2)
        {
          *a2 = 0;
        }
      }

      goto LABEL_15;
    }

    if (v10 == 1)
    {
      break;
    }

    v12 = 0;
LABEL_15:
    if (v9 <= 1)
    {
      ++v9;
      if (!v12)
      {
        continue;
      }
    }

    return v12;
  }

  v11 = dx_wfopen(a1, a4);
  v12 = v11;
  if (!a2 || !v11)
  {
    goto LABEL_15;
  }

  wcscpx(a2, a1, a3);
  return v12;
}

_DWORD *dxios_search_open(char *a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = malloc_type_malloc(0x58uLL, 0x10A0040F692AC0EuLL);
  v11 = v10;
  if (v10)
  {
    dxios_stream_create(v10, 0);
    if (dxios_stream_activate_filename_search(v11, a1, a2, a3, a4, a5))
    {
      dxios_stream_destroy(v11);
      free(v11);
      return 0;
    }
  }

  return v11;
}

uint64_t dxios_stream_activate_filename_search(_DWORD *a1, char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, int a6)
{
  memset(v19, 0, sizeof(v19));
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v19;
  }

  if (a3)
  {
    v8 = a4;
  }

  else
  {
    v8 = 256;
  }

  if (*a1)
  {
    goto LABEL_8;
  }

  v13 = 0;
  v18 = a6 & 0xF000;
  v14 = 8;
  while (1)
  {
    v15 = (a6 >> v14) & 0xF;
    if ((a6 & 0x2000) == 0 && gActivateCachedStream && !gActivateCachedStream(gActivateCachedStreamParam, 0, a1, a5, 0, 1, a2, v15, v7, v8))
    {
      if (*a1 || v13 >= 2)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }

    v16 = dxios_fopen_mode(a5);
    v17 = dxios_search_fopen(a2, v7, v8, v16, v15 | v18);
    if (gActivateCachedStream)
    {
      if (!gActivateCachedStream(gActivateCachedStreamParam, 1, a1, a5, v17, 1, a2, v15, v7, v8) && *a1)
      {
        break;
      }
    }

    if (v17)
    {
      if (!dxios_stream_activate_fp(a1, v17, a5, 1))
      {
        goto LABEL_8;
      }

      fclose(v17);
    }

    if (v13 > 1)
    {
      goto LABEL_8;
    }

LABEL_23:
    ++v13;
    v14 -= 4;
    if (*a1)
    {
      goto LABEL_8;
    }
  }

  fclose(v17);
LABEL_8:
  if (*a1)
  {
    return 0;
  }

  else
  {
    return 4294967292;
  }
}

_DWORD *dxios_search_open_w(__int32 *a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = malloc_type_malloc(0x58uLL, 0x10A0040F692AC0EuLL);
  v11 = v10;
  if (v10)
  {
    dxios_stream_create(v10, 0);
    if (dxios_stream_activate_filename_search_w(v11, a1, a2, a3, a4, a5))
    {
      dxios_stream_destroy(v11);
      free(v11);
      return 0;
    }
  }

  return v11;
}

uint64_t dxios_stream_activate_filename_search_w(_DWORD *a1, __int32 *a2, _DWORD *a3, uint64_t a4, uint64_t a5, int a6)
{
  bzero(v18, 0x400uLL);
  if (!a3)
  {
    a3 = v18;
    a4 = 256;
  }

  if (!*a1)
  {
    v13 = 0;
    v14 = 8;
    do
    {
      v15 = (a6 >> v14) & 0xF;
      if ((a6 & 0x2000) != 0 || !gActivateCachedStream || gActivateCachedStream(gActivateCachedStreamParam, 0, a1, a5, 0, 4, a2, v15, a3, a4))
      {
        v16 = dxios_fopen_mode_w(a5);
        v17 = dxios_search_fopen_w(a2, a3, a4, v16, v15 | a6 & 0xF000);
        if (gActivateCachedStream && !gActivateCachedStream(gActivateCachedStreamParam, 1, a1, a5, v17, 4, a2, v15, a3, a4) && *a1)
        {
          fclose(v17);
          break;
        }

        if (v17)
        {
          if (!dxios_stream_activate_fp(a1, v17, a5, 1))
          {
            break;
          }

          fclose(v17);
        }

        if (v13 > 1)
        {
          break;
        }
      }

      else if (*a1 || v13 >= 2)
      {
        break;
      }

      ++v13;
      v14 -= 4;
    }

    while (!*a1);
  }

  if (*a1)
  {
    return 0;
  }

  else
  {
    return 4294967292;
  }
}

void jreaf(uint64_t a1)
{
  free(*(a1 + 29584));
  free(*(a1 + 29576));
  free(*(a1 + 29568));
  v2 = *(a1 + 29560);

  free(v2);
}

uint64_t jreaq(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 28672;
  *(a1 + 29544) = dxios_stream_mdri(a2);
  if (*(v4 + 964) > 12)
  {
    v5 = dxios_stream_mdrl(a2);
  }

  else
  {
    v5 = dxios_stream_mdri(a2);
  }

  *(a1 + 29552) = v5;
  v6 = *(v4 + 872);
  v7 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
  *(a1 + 29560) = v7;
  if (!v7)
  {
    return 1;
  }

  v8 = 4 * v6;
  v9 = malloc_type_malloc(v8, 0x100004052888210uLL);
  *(a1 + 29568) = v9;
  if (!v9)
  {
    return 1;
  }

  v10 = malloc_type_malloc(v8, 0x100004052888210uLL);
  *(a1 + 29576) = v10;
  if (!v10)
  {
    return 1;
  }

  v11 = malloc_type_malloc(*(a1 + 29552), 0xAD4E8688uLL);
  *(a1 + 29584) = v11;
  if (!v11)
  {
    return 1;
  }

  v12 = *(v4 + 872);
  if (*(v4 + 964) >= 13)
  {
    if (v12 >= 1)
    {
      v16 = 0;
      do
      {
        *(*(a1 + 29560) + 8 * v16++) = dxios_stream_mdrl(a2);
        v14 = *(v4 + 872);
      }

      while (v16 < v14);
      goto LABEL_17;
    }
  }

  else if (v12 >= 1)
  {
    v13 = 0;
    do
    {
      *(*(a1 + 29560) + 8 * v13++) = dxios_stream_mdri(a2);
      v14 = *(v4 + 872);
    }

    while (v13 < v14);
LABEL_17:
    if (v14 < 1)
    {
      v19 = 0;
    }

    else
    {
      for (i = 0; i < v18; ++i)
      {
        *(*(a1 + 29568) + 4 * i) = dxios_stream_mdri(a2);
        v18 = *(v4 + 872);
      }

      v19 = v18 > 0;
    }

    if (*(v4 + 964) >= 13)
    {
      if (v19)
      {
        v22 = 0;
        do
        {
          *(*(a1 + 29576) + 4 * v22++) = dxios_stream_mdri(a2);
        }

        while (v22 < *(v4 + 872));
      }
    }

    else if (v19)
    {
      v20 = 0;
      do
      {
        v21 = dxios_stream_mdri(a2);
        *(*(a1 + 29576) + 4 * v20++) = (v21 << 10) & 0xC000 | v21 & 0xFFCF;
      }

      while (v20 < *(v4 + 872));
    }
  }

  if (*(a1 + 29552) >= 1)
  {
    v23 = 0;
    do
    {
      *(*(a1 + 29584) + v23++) = dxios_stream_getc(a2);
    }

    while (v23 < *(a1 + 29552));
  }

  return 0;
}

double jreaqi(uint64_t a1)
{
  result = 0.0;
  *(a1 + 29560) = 0u;
  *(a1 + 29576) = 0u;
  return result;
}

_DWORD *lfiniq(_DWORD *result)
{
  v1 = result + 7168;
  if (result[7385] != 3)
  {
    v2 = result;
    result = wdput(result);
    if (*(v1 + 3504))
    {

      return nlput(v2);
    }
  }

  return result;
}

_DWORD *wdput(_DWORD *result)
{
  v1 = result;
  v2 = result + 7168;
  v3 = result[8048];
  if (v3 >= 1)
  {
    if (result[8084] + v3 + result[8040] < 66 || (result = nlput(result), v4 = v2[880], v5 = __OFSUB__(v4, 1), --v4, v2[880] = v4, !((v4 < 0) ^ v5 | (v4 == 0))))
    {
      v6 = 0;
      do
      {
        result = dxios_stream_putc(0x20u, *(v1 + 4021));
        v7 = v2[880];
        ++v6;
      }

      while (v6 < v7);
      *(v2 + 3504) = 32;
      v2[872] += v7;
      v2[880] = 0;
    }
  }

  v8 = v2[916];
  if (v8 >= 1)
  {
    *(v1 + v8 + 32200) = 0;
    result = dxios_stream_puts(v1 + 32200, *(v1 + 4021));
    v9 = v2[916];
    *(v2 + 3504) = *(v1 + v9 + 32199);
    v2[872] += v9;
    v2[916] = 0;
  }

  return result;
}

uint64_t nlput(uint64_t a1)
{
  v2 = a1 + 28672;
  if (*(a1 + 29488))
  {
    if (*(a1 + 32156))
    {
      v4 = *(a1 + 32176);
      if (v4 == 45 || v4 == 32)
      {
        dxios_stream_putc(0x20u, *(a1 + 32168));
        dxios_stream_putc(0x2Du, *(a1 + 32168));
      }
    }

    v3 = 10;
  }

  else
  {
    v3 = 32;
  }

  result = dxios_stream_putc(v3, *(a1 + 32168));
  *(v2 + 3504) = 0;
  *(v2 + 3488) = 0;
  return result;
}

uint64_t linecq(uint64_t result, int a2)
{
  v2 = a2;
  v3 = result;
  v4 = result + 28672;
  if (*(result + 29540) == 3)
  {
    v5 = a2;
    v6 = *(v3 + 32168);

    return dxios_stream_putc(v5, v6);
  }

  if (*(result + 32184))
  {
    if (a2 == 28)
    {
      v7 = 32188;
    }

    else
    {
      if (a2 != 31)
      {
        goto LABEL_11;
      }

      v7 = 32180;
    }

    v2 = *(result + v7);
  }

LABEL_11:
  v9 = v2 > 27 && v2 != 32;
  if (v2 == 23 || v9)
  {
    v11 = *(result + 32336);
    if (v11 >= *(result + 32196))
    {
      result = wdput(result);
      if (*(v4 + 3484))
      {
        dxios_stream_putc(0x2Du, *(v3 + 32168));
        result = dxios_stream_putc(0xAu, *(v3 + 32168));
      }

      *(v4 + 3504) = 0;
      *(v4 + 3488) = 0;
      v11 = *(v4 + 3664);
    }

    *(v4 + 3664) = v11 + 1;
    *(v3 + v11 + 32200) = v2;
  }

  else if (v2 == 10)
  {
    wdput(result);

    return nlput(v3);
  }

  else if (v2 == 32)
  {
    if (*(result + 32336) > 0 || (v10 = *(result + 32192), v10 >= 63))
    {
      result = wdput(result);
      v10 = *(v4 + 3520);
    }

    *(v4 + 3520) = v10 + 1;
  }

  return result;
}

uint64_t linitq(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 32168) = a3;
  v4 = *(a4 + 288);
  *(a1 + 29536) = v4;
  if (a2 < 0)
  {
    a2 = *(a1 + 29540);
  }

  else
  {
    *(a1 + 29540) = a2;
  }

  if (a2 > 2)
  {
    if (a2 <= 5)
    {
      if (a2 == 4 && v4 != 28)
      {
        *(a1 + 32196) = 130;
        *(a1 + 32156) = 1;
        *(a1 + 32184) = 1;
        if (v4 == 36)
        {
          v5 = 124;
        }

        else
        {
          v5 = 36;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (a2 == 6)
    {
      *(a1 + 32196) = 130;
      *(a1 + 32156) = 1;
      *(a1 + 32184) = 1;
      v5 = 124;
      goto LABEL_20;
    }

    if (a2 == 7)
    {
      *(a1 + 32196) = 130;
      *(a1 + 32156) = 1;
      *(a1 + 32184) = 1;
      v5 = 36;
LABEL_20:
      *(a1 + 32188) = v5;
      *(a1 + 32180) = 32;
      goto LABEL_21;
    }

LABEL_17:
    *(a1 + 32196) = 131;
    *(a1 + 32156) = 0;
    goto LABEL_18;
  }

  if (a2 && a2 != 2)
  {
    goto LABEL_17;
  }

  *(a1 + 32196) = 130;
  *(a1 + 32156) = 1;
LABEL_18:
  *(a1 + 32184) = 0;
LABEL_21:
  *(a1 + 32160) = 0;
  *(a1 + 32176) = 0;
  *(a1 + 32192) = 0;
  return 0;
}

uint64_t mdri(FILE *a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = getc(a1);
    v4 = 0;
    v3 |= v6 << v2;
    v2 += 8;
  }

  while ((v5 & 1) != 0);
  if ((v3 & 0x8000) != 0)
  {
    return v3 | 0xFFFF0000;
  }

  else
  {
    return v3;
  }
}

uint64_t dxios_stream_mdri(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = dxios_stream_getc(a1);
    v4 = 0;
    v3 |= v6 << v2;
    v2 += 8;
  }

  while ((v5 & 1) != 0);
  if ((v3 & 0x8000) != 0)
  {
    return v3 | 0xFFFF0000;
  }

  else
  {
    return v3;
  }
}

unint64_t mdrl(FILE *a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 |= getc(a1) << v2;
    v2 += 8;
  }

  while (v2 != 32);
  if (v3 < 0)
  {
    return v3 | 0xFFFFFFFF00000000;
  }

  else
  {
    return v3;
  }
}

unint64_t dxios_stream_mdrl(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 |= dxios_stream_getc(a1) << v2;
    v2 += 8;
  }

  while (v2 != 32);
  if (v3 < 0)
  {
    return v3 | 0xFFFFFFFF00000000;
  }

  else
  {
    return v3;
  }
}

uint64_t mdrv(FILE *a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 |= getc(a1) << v2;
    v2 += 8;
  }

  while (v2 != 64);
  return v3;
}

uint64_t dxios_stream_mdrv(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 |= dxios_stream_getc(a1) << v2;
    v2 += 8;
  }

  while (v2 != 64);
  return v3;
}

uint64_t dxnin_engine_destroy(_DWORD *a1)
{
  if (*a1)
  {
    dxnin_engine_deactivate(a1);
  }

  return dxbin_engine_destroy((a1 + 10));
}

uint64_t dxnin_engine_deactivate(uint64_t a1)
{
  if (!*a1)
  {
    v3 = 4294967292;
LABEL_8:
    dxerr_report_activate(*(a1 + 32), "niniq", v3);
    return v3;
  }

  v2 = dxbin_engine_deactivate(a1 + 40);
  v3 = v2;
  if (*a1)
  {
    free(*(a1 + 376));
    *a1 = 0;
    if (!v3)
    {
      return v3;
    }

    goto LABEL_7;
  }

  if (v2)
  {
LABEL_7:
    v3 = 4294967294;
    goto LABEL_8;
  }

  return v3;
}

double dxnin_engine_create(_DWORD *a1, uint64_t a2)
{
  bzero(a1, 0x7320uLL);
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 4) = 0;
  *(a1 + 79) = 0;
  *(a1 + 77) = 0;

  return dxbin_engine_create((a1 + 10), a2);
}

uint64_t dxnin_engine_activate(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 120) = a5;
  *(a1 + 128) = a6;
  *(a1 + 328) = a5;
  *(a1 + 336) = a6;
  bzero((a1 + 352), 0x38E0uLL);
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 432) = 0;
  *(a1 + 436) = 0;
  *(a1 + 644) = 0;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v26 = 0;
  dxtbl_lintbl_create(v27, *(a1 + 32));
  if (dxtbl_lintbl_activate(v27, a2, "-ninit 6") || dxtbl_lintbl_readint(v27, 0, 0x7FFFFFFF, &v28 + 1))
  {
    goto LABEL_14;
  }

  if ((a4 & 0x80000000) == 0)
  {
    *(a1 + 56) = a4;
  }

  if (dxtbl_lintbl_readBOOLean(v27, (a1 + 60)) || dxtbl_lintbl_readchic(v27, (a1 + 64)) || dxtbl_lintbl_readchic(v27, (a1 + 68)) || dxtbl_lintbl_readint(v27, 0, 0x7FFFFFFF, (a1 + 72)) || dxtbl_lintbl_read(v27, (a1 + 84), 0xFuLL) || read_bscpc(v27, a1) || dxtbl_lintbl_readint(v27, 0, 0x7FFFFFFF, (a1 + 100)) || dxtbl_lintbl_readint(v27, 0, 0x7FFFFFFF, (a1 + 104)) || dxtbl_lintbl_readint(v27, 0, 0x7FFFFFFF, (a1 + 108)))
  {
    goto LABEL_14;
  }

  v10 = -1;
  if (dxtbl_lintbl_readint(v27, -1, 0x7FFFFFFF, (a1 + 112)))
  {
    goto LABEL_15;
  }

  if (dxtbl_lintbl_readint(v27, 0, 1, (a1 + 464)) || dxtbl_lintbl_readint(v27, 0, 2, (a1 + 456)) || (v14 = (a1 + 460), dxtbl_lintbl_readint(v27, 0, 2, (a1 + 460))) || dxtbl_lintbl_readint(v27, 0, 1, (a1 + 468)) || dxtbl_lintbl_readint(v27, 0, 1, &v26) || readfonts(v27, a1 + 352) || dxtbl_lintbl_readint(v27, 0, 3, (a1 + 452)) || dxtbl_lintbl_readint(v27, 0, 1, &v28) || dxtbl_lintbl_readint(v27, 0, 1, (a1 + 320)) || dxtbl_lintbl_readchic(v27, (a1 + 300)) || dxtbl_lintbl_readchic(v27, (a1 + 296)) || dxtbl_lintbl_readchic(v27, (a1 + 292)) || dxtbl_lintbl_readchic(v27, (a1 + 304)) || dxtbl_lintbl_readint(v27, 0, 1, (a1 + 384)) || dxtbl_lintbl_read(v27, (a1 + 472), 0xFuLL) || dxtbl_lintbl_read(v27, (a1 + 487), 0xFuLL) || dxtbl_lintbl_read(v27, (a1 + 502), 0xFuLL) || dxtbl_lintbl_read(v27, (a1 + 517), 0xFuLL) || dxtbl_lintbl_read(v27, (a1 + 532), 0xFuLL) || dxtbl_lintbl_read(v27, (a1 + 547), 0xFuLL) || dxtbl_lintbl_read(v27, (a1 + 562), 0xFuLL) || dxtbl_lintbl_read(v27, (a1 + 577), 0xFuLL) || dxtbl_lintbl_read(v27, (a1 + 592), 0xFuLL) || dxtbl_lintbl_read(v27, (a1 + 607), 0xFuLL) || dxtbl_lintbl_read(v27, (a1 + 622), 0xFuLL) || dxtbl_lintbl_readint(v27, 0, 0x7FFFFFFF, (a1 + 13500)) || dxtbl_lintbl_readint(v27, 0, 0x7FFFFFFF, (a1 + 360)) || dxtbl_lintbl_deactivate(v27))
  {
LABEL_14:
    v10 = -1;
LABEL_15:
    dxerr_report_activate(*(a1 + 32), "niniq", v10);
    *(a1 + 389) = 0;
    v11 = *(a1 + 32);
    v12 = 0xFFFFFFFFLL;
    dxerr_report_activate(v11, "niniq", -1);
    return v12;
  }

  v15 = 0x1000100u >> (8 * v28);
  if (v28 >= 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0x1010000u >> (8 * v28);
  }

  if (v28 >= 4)
  {
    LOBYTE(v15) = 0;
  }

  *(a1 + 13505) = v16;
  *(a1 + 13504) = v15;
  v17 = *(a1 + 360);
  if (v17)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 364) = v18;
  *(a1 + 288) = *(a1 + 64);
  v19 = *(a1 + 308) - 1;
  if (v19 <= 2)
  {
    *(a1 + 456) = v19;
  }

  v20 = *(a1 + 312) - 1;
  if (v20 <= 2)
  {
    *v14 = v20;
  }

  v21 = *(a1 + 316) - 1;
  if (v21 <= 1)
  {
    *(a1 + 468) = v21;
  }

  if (v26 == 1)
  {
    v22 = 96;
  }

  else
  {
    v22 = 97;
  }

  if (v26 == 1)
  {
    v23 = 126;
  }

  else
  {
    v23 = 122;
  }

  *(a1 + 408) = v22;
  *(a1 + 404) = v23;
  if (dxbin_engine_activate(a1 + 40, a3, SHIDWORD(v28)))
  {
    v10 = -2;
    goto LABEL_15;
  }

  if (*(a1 + 464) == 1)
  {
    v24 = 14;
  }

  else
  {
    v25 = *v14 != 2 && *(a1 + 292) != 0;
    *(a1 + 388) = v25;
    *(a1 + 440) = 32;
    if (((*(a1 + 452) - 1) & 0xFFFFFFFD) != 0)
    {
      v24 = 4;
    }

    else
    {
      v24 = 23;
    }
  }

  *(a1 + 416) = v24;
  *(a1 + 389) = 0;
  *a1 = 1;
  memcpy((a1 + 14912), (a1 + 352), 0x38E0uLL);
  return 0;
}

uint64_t dxnin_engine_activate_tablename(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = dxios_search_open(a2, 0, 255, 0, 288);
  if (v11)
  {
    v12 = v11;
    v13 = dxnin_engine_activate(a1, v11, a3, a4, a5, a6);
    dxios_close(v12);
    return v13;
  }

  else
  {
    dxerr_report_activate(*(a1 + 32), "niniq", -5);
    return 4294967291;
  }
}

uint64_t dxnin_engine_reactivate(uint64_t a1, uint64_t a2)
{
  memcpy((a1 + 352), (a1 + 14912), 0x38E0uLL);
  v4 = *(a1 + 640);
  if (v4 >= 1)
  {
    v5 = (v4 + 3) & 0xFFFFFFFC;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_2B8F0;
    v8 = xmmword_2B900;
    v9 = (*(a1 + 376) + 128);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 22) = 0;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 11) = 0;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = 0;
        v9[11] = 0;
      }

      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 44;
      v5 -= 4;
    }

    while (v5);
  }

  return dxbin_engine_reactivate(a1 + 40, a2);
}

uint64_t extract_styname(uint64_t result, uint64_t a2, int a3)
{
  if (a3 < 2)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = (a3 - 1);
    while (1)
    {
      v5 = *(result + 16 + 4 * v3);
      v6 = v5 > 0x20 || ((1 << v5) & 0x180000001) == 0;
      if (!v6 || v5 == 96)
      {
        break;
      }

      *(a2 + v3++) = v5;
      if (v4 == v3)
      {
        goto LABEL_13;
      }
    }

    LODWORD(v4) = v3;
LABEL_13:
    v4 = v4;
  }

  *(a2 + v4) = 0;
  return result;
}

uint64_t dxnin_engine_getc(uint64_t a1)
{
  v2 = *(a1 + 656);
  if (v2)
  {
    v3 = *(a1 + 648);
    result = *(a1 + v3 + 660);
    *(a1 + 656) = v2 - 1;
    *(a1 + 648) = v3 + 1;
    return result;
  }

  v5 = a1 + 12288;
  v6 = (a1 + 344);
  *(a1 + 648) = 0;
  switch(*(a1 + 416))
  {
    case 3:
      v7 = *(a1 + 448);
      v8 = *(a1 + 396);
      *(a1 + 396) = v8 + 1;
      if (!chdids(v7, v8, (a1 + 344)))
      {
        *(a1 + 416) = *(a1 + 400);
      }

      return *v6;
    case 5:
      goto LABEL_371;
    case 6:
      v10 = *(a1 + 8);
      goto LABEL_244;
    case 9:
      goto LABEL_405;
    case 0xA:
      goto LABEL_261;
    case 0xB:
      goto LABEL_245;
    case 0xC:
      v11 = *(a1 + 16);
      *(a1 + 448) = *(v11 + 32);
      *(a1 + 416) = 11;
      *(v11 + 40) = 3;
      goto LABEL_16;
    case 0xD:
      goto LABEL_323;
    case 0xE:
      dxbin_engine_getc(a1 + 40);
      result = *(a1 + 136);
      if (result >> 1 == 32640)
      {
        goto LABEL_323;
      }

      *v6 = result;
      return result;
    case 0xF:
      v12 = *(a1 + 8);
      goto LABEL_268;
    case 0x17:
      v9 = 24;
      goto LABEL_327;
    case 0x18:
      *(a1 + 416) = 4;
      return 128;
    case 0x1A:
      *(a1 + 416) = 13;
      return 127;
    default:
      goto LABEL_18;
  }

  while (1)
  {
LABEL_18:
    if (*(a1 + 368))
    {
      v13 = *(a1 + 644);
      if (v13)
      {
        goto LABEL_232;
      }

LABEL_322:
      if (*(a1 + 452) >= 2)
      {
        v9 = 26;
LABEL_327:
        *(a1 + 416) = v9;
        return 255;
      }

      else
      {
LABEL_323:
        result = 256;
        *(a1 + 344) = 256;
        *(a1 + 416) = 13;
      }

      return result;
    }

    v164 = v6;
    v165 = v5;
    v14 = 0;
    v15 = a1 + 13512;
LABEL_22:
    v16 = 1;
LABEL_23:
    if ((v16 & 1) == 0)
    {
      goto LABEL_35;
    }

    v13 = *(a1 + 644);
    if (*(a1 + 368))
    {
      v17 = 1;
    }

    else
    {
      v17 = v13 == 25;
    }

    if (!v17)
    {
      v18 = *(a1 + 356);
      v19 = *(v15 + 56 * v18 + 40);
      v20 = *(a1 + 436);
      if ((!v13 || v19 < v20 || v19 - v20 >= 1321) && (v19 < v20 || !v13 || !*(a1 + 4)))
      {
        *(a1 + 644) = v13 + 1;
        v14 = v15 + 56 * ((v18 + v13) % 25);
        *(v14 + 40) = v20;
        *(v14 + 32) = a1 + 700 + 4 * v20;
LABEL_35:
        *(v14 + 44) = -1;
        *v14 = 0;
        *(v14 + 4) = 0;
        *(v14 + 12) = 0;
        *(v14 + 16) = 0;
        v21 = *(a1 + 432);
        *(a1 + 432) = 0;
        v22 = *(a1 + 440);
        if ((v22 - 31) < 2 || *(a1 + 24))
        {
          *(a1 + 24) = 0;
          *(v14 + 20) = 0;
          *(v14 + 46) = 1;
        }

        else
        {
          *(v14 + 20) = 1;
          **(v14 + 32) = v22;
          *(v14 + 46) = 0;
          if (chalu(*(a1 + 440)))
          {
            *(v14 + 44) = 1;
          }

          else if (chall(*(a1 + 440)))
          {
            *(v14 + 44) = 0;
          }
        }

        v23 = 0;
        while (1)
        {
          v24 = dxbin_engine_getc(a1 + 40);
          *(a1 + 440) = v24;
          if (v24 > 30)
          {
            if ((v24 - 65280) < 2)
            {
              goto LABEL_138;
            }

            if (v24 == 31)
            {
              *(a1 + 4) = 0;
              v46 = 31;
              goto LABEL_145;
            }

            if (v24 == 32)
            {
LABEL_138:
              v46 = *(a1 + 440);
              if (v46 >> 1 == 32640)
              {
                *(a1 + 368) = 1;
              }

LABEL_145:
              *(v14 + 24) = v46;
              if (*(v14 + 44) < 2)
              {
                goto LABEL_218;
              }

              *(*(v14 + 32) + 4 * *(v14 + 20)) = 0;
              if (wcmp(v14, a1 + 472))
              {
                if (wcmp(v14, a1 + 487))
                {
                  if (wcmp(v14, a1 + 502))
                  {
                    if (wcmp(v14, a1 + 517))
                    {
                      if (wcmp(v14, a1 + 532))
                      {
                        if (wcmp(v14, a1 + 547))
                        {
                          if (wcmp(v14, a1 + 562))
                          {
                            if (wcmp(v14, a1 + 577))
                            {
                              if (wcmp(v14, a1 + 592))
                              {
                                if (wcmp(v14, a1 + 607))
                                {
                                  if (wcmp(v14, a1 + 622))
                                  {
                                    if (wcmp(v14, "nwncb"))
                                    {
                                      if (wcmp(v14, "cpe-l"))
                                      {
                                        if (!wcmp(v14, "cpe-l-off"))
                                        {
                                          goto LABEL_162;
                                        }

                                        if (wcmp(v14, "cpe-fts"))
                                        {
                                          if (!wcmp(v14, "cpe-fts-off"))
                                          {
LABEL_162:
                                            v16 = 0;
                                            *(v165 + 1217) = 0;
                                            goto LABEL_23;
                                          }

                                          if (*(a1 + 13500))
                                          {
                                            *(v14 + 48) = 0;
                                            if (*(a1 + 328) && chlwc(*(*(v14 + 32) + 4)) == 101 && (chlwc(*(*(v14 + 32) + 8)) == 115 || chlwc(*(*(v14 + 32) + 8)) == 101))
                                            {
                                              v47 = *(v14 + 32);
                                              if (*(v47 + 12) == 126)
                                              {
                                                v48 = 0;
                                                v49 = v47 + 16;
                                                do
                                                {
                                                  v50 = *(v49 + 4 * v48);
                                                  if (v50 <= 0x20 && ((1 << v50) & 0x180000001) != 0)
                                                  {
                                                    break;
                                                  }

                                                  if (v50 == 96)
                                                  {
                                                    break;
                                                  }

                                                  *(v170 + v48++) = v50;
                                                }

                                                while (v48 != 39);
                                                *(v170 + v48) = 0;
                                                v52 = *(a1 + 328);
                                                v161 = *(a1 + 336);
                                                v53 = chlwc(*(*(v14 + 32) + 8)) == 101;
                                                v52(v166, v161, v170, v53, 0);
                                                v54 = v167;
                                                if (v167)
                                                {
                                                  v55 = *v167;
                                                  if (*v167)
                                                  {
                                                    v56 = *(v14 + 48) == 0;
                                                    do
                                                    {
                                                      if (!v56)
                                                      {
                                                        break;
                                                      }

                                                      if (v55 == 28)
                                                      {
                                                        v57 = 0;
                                                        v162 = v54 + 1;
                                                        do
                                                        {
                                                          v58 = v162[v57];
                                                          if (v162[v57])
                                                          {
                                                            v59 = v58 == 31;
                                                          }

                                                          else
                                                          {
                                                            v59 = 1;
                                                          }

                                                          if (v59)
                                                          {
                                                            break;
                                                          }

                                                          if (v58 == 126)
                                                          {
                                                            break;
                                                          }

                                                          v168[v57++] = __tolower(v58);
                                                        }

                                                        while (v57 != 4);
                                                        v168[v57] = 0;
                                                        v60 = wcapsend(a1, v168);
                                                        *(v14 + 48) = v60;
                                                        v54 = &v162[v57];
                                                        if (v60)
                                                        {
                                                          break;
                                                        }
                                                      }

                                                      v61 = *++v54;
                                                      v55 = v61;
                                                      v56 = 1;
                                                    }

                                                    while (v61);
                                                  }
                                                }

                                                goto LABEL_218;
                                              }
                                            }

                                            v62 = 0;
                                            v63 = 1;
                                            while (1)
                                            {
                                              v163 = v63;
                                              if (v62 + 1 >= *(v14 + 20))
                                              {
                                                break;
                                              }

                                              v64 = chlwc(*(*(v14 + 32) + 4 * v62 + 4));
                                              if (v64 > 0xFF)
                                              {
                                                break;
                                              }

                                              if (v64 - 31 < 2 || v64 == 126)
                                              {
                                                v65 = v62 + 1;
                                                goto LABEL_216;
                                              }

                                              v168[v62] = v64;
                                              v63 = v163 + 1;
                                              if (++v62 == 4)
                                              {
                                                v65 = 5;
                                                goto LABEL_216;
                                              }
                                            }

                                            v65 = v163;
LABEL_216:
                                            v168[v65 - 1] = 0;
                                            v66 = wcapsend(a1, v168);
                                          }

                                          else
                                          {
                                            v66 = 1;
                                          }

                                          *(v14 + 48) = v66;
LABEL_218:
                                          if (*(a1 + 384))
                                          {
                                            v67 = v21 == 0;
                                          }

                                          else
                                          {
                                            v67 = 0;
                                          }

                                          if (v67 && v23 == -1)
                                          {
                                            *v14 = 1;
                                          }

                                          v69 = *(v14 + 20) + *(a1 + 436);
                                          if (v69 + 1 <= 1877)
                                          {
                                            v70 = v69 + 1;
                                          }

                                          else
                                          {
                                            v70 = 0;
                                          }

                                          *(a1 + 436) = v70;
                                          goto LABEL_22;
                                        }

                                        v16 = 0;
                                        *(v165 + 1216) = 1;
                                      }

                                      else
                                      {
                                        v16 = 0;
                                        *(v165 + 1217) = 1;
                                      }
                                    }

                                    else
                                    {
                                      v16 = 0;
                                      *(a1 + 432) = 1;
                                    }
                                  }

                                  else
                                  {
                                    v16 = 0;
                                    *(a1 + 100) = 2;
                                  }
                                }

                                else
                                {
                                  v16 = 0;
                                  *(a1 + 100) = 1;
                                }
                              }

                              else
                              {
                                v16 = 0;
                                *(a1 + 100) = 0;
                              }
                            }

                            else
                            {
                              v16 = 0;
                              *(a1 + 100) = 3;
                            }
                          }

                          else
                          {
                            v16 = 0;
                            *(a1 + 108) = 3;
                          }
                        }

                        else
                        {
                          v16 = 0;
                          *(a1 + 108) = 1;
                        }
                      }

                      else
                      {
                        v16 = 0;
                        *(a1 + 108) = 0;
                      }
                    }

                    else
                    {
                      v16 = 0;
                      *(a1 + 108) = 2;
                    }
                  }

                  else
                  {
                    v16 = 0;
                    *(a1 + 72) = 2;
                  }
                }

                else
                {
                  v16 = 0;
                  *(a1 + 72) = 1;
                }
              }

              else
              {
                v16 = 0;
                *(a1 + 72) = 0;
              }

              goto LABEL_23;
            }
          }

          else if (v24 == 28)
          {
            *(a1 + 4) = 1;
          }

          v25 = *(v14 + 44);
          if (*(v14 + 44) > 1)
          {
            if (v25 == 3)
            {
              LODWORD(v26) = *(v14 + 20);
              if (v26 == 2)
              {
                goto LABEL_138;
              }

              goto LABEL_90;
            }

            if (v25 == 2 && v24 == 96)
            {
              *(a1 + 24) = 1;
              v46 = 96;
              goto LABEL_145;
            }

            goto LABEL_89;
          }

          v26 = *(v14 + 20);
          if (v26 == 1)
          {
            break;
          }

          if (v26 >= 1)
          {
            v29 = *(a1 + 288);
            goto LABEL_65;
          }

LABEL_90:
          if (*(v14 + 40) + v26 > 3198)
          {
            goto LABEL_138;
          }

          v34 = *(v14 + 44);
          if (v34 == 1)
          {
            v36 = *(a1 + 440);
            if (v26 >= 1)
            {
              if (*(*(v14 + 32) + 4 * v26 - 4) == 23 || v36 == 23)
              {
                goto LABEL_113;
              }

              goto LABEL_110;
            }

            if (v36 == 23)
            {
              goto LABEL_108;
            }

LABEL_110:
            if (!chall(v36))
            {
              goto LABEL_113;
            }

            v38 = 0;
LABEL_112:
            *(v14 + 44) = v38;
LABEL_113:
            v40 = *(a1 + 440);
            v41 = *(v14 + 32);
            v42 = *(v14 + 20);
            *(v14 + 20) = v42 + 1;
            *(v41 + 4 * v42) = v40;
            if (v40 != 23)
            {
              v43 = *(v14 + 20);
              if (v43 == 1 || *(v41 + 4 * v43 - 8) != 23)
              {
                if (v40 == 45)
                {
                  if (*(a1 + 360))
                  {
                    v44 = *(v14 + 4);
                    ++*(v14 + 8);
                    if (!v44)
                    {
                      *(v14 + 4) = v43;
                    }
                  }
                }

                if (*(a1 + 384))
                {
                  v45 = v23 + 1;
                }

                else
                {
                  v45 = v23;
                }

                if (v45 > 2)
                {
                  if (v45 == 3)
                  {
                    v23 = -1;
                  }

                  else if (v45 == 4)
                  {
LABEL_131:
                    if (v40 == 64)
                    {
                      goto LABEL_136;
                    }

                    if ((v40 - 48) < 0xA)
                    {
                      v23 = 3;
                    }

                    if (v40 == 58 && !v23)
                    {
LABEL_136:
                      v23 = 1;
                    }
                  }
                }

                else
                {
                  if (v45 == 1)
                  {
                    goto LABEL_131;
                  }

                  if (v45 == 2 && v40 == 46)
                  {
                    v23 = 2;
                  }
                }
              }
            }
          }

          else
          {
            if (v34 != 0xFFFF)
            {
              goto LABEL_113;
            }

            v35 = *(a1 + 440);
            if (v26 >= 1)
            {
              if (*(*(v14 + 32) + 4 * v26 - 4) == 23 || v35 == 23)
              {
                goto LABEL_113;
              }

LABEL_105:
              if (chalu(v35))
              {
                v38 = 1;
                goto LABEL_112;
              }

              v36 = *(a1 + 440);
              goto LABEL_110;
            }

            if (v35 != 23)
            {
              goto LABEL_105;
            }

LABEL_108:
            v39 = *(v14 + 32);
            *(v14 + 20) = v26 + 1;
            *(v39 + 4 * v26) = 23;
          }
        }

        v27 = *(v14 + 32);
        v28 = *v27;
        v29 = *(a1 + 288);
        if (*v27 != v29)
        {
LABEL_65:
          if (v24 == v29 || (v24 - 29) <= 1 && v29 == 28)
          {
            goto LABEL_138;
          }

          if (*(a1 + 468) == 1 && v24 != 23 && *(*(v14 + 32) + 4 * v26 - 4) != 23)
          {
            v33 = chall(v24);
            if (v25 == 0xFFFF)
            {
              if (v33 || chalu(*(a1 + 440)))
              {
                goto LABEL_138;
              }
            }

            else if (!v33 && !chalu(*(a1 + 440)) && *(a1 + 440) == 39)
            {
              goto LABEL_138;
            }
          }

          goto LABEL_89;
        }

        if (v28 == 28)
        {
          v30 = *&dusci[12 * v24];
          goto LABEL_50;
        }

        if (v24 <= 0x7F)
        {
          if ((v24 | 2) == 0x2E)
          {
            goto LABEL_89;
          }
        }

        else if (v24 != 248)
        {
          goto LABEL_89;
        }

        v30 = *&dusci[12 * v24];
        if (v30)
        {
          goto LABEL_89;
        }

LABEL_50:
        if ((v30 & 2) != 0)
        {
          v31 = 2;
        }

        else
        {
          v31 = 2;
          if (v24 != 35)
          {
            v32 = (a1 + 300);
            if (v24 != 248)
            {
              if (v28 == 28)
              {
                v31 = 2;
              }

              else
              {
                v31 = 3;
              }

              if (v28 == 28)
              {
                v32 = (a1 + 300);
              }

              else
              {
                v32 = (a1 + 296);
              }
            }

            goto LABEL_82;
          }
        }

        v32 = (a1 + 300);
LABEL_82:
        *(v14 + 44) = v31;
        *v27 = *v32;
LABEL_89:
        LODWORD(v26) = *(v14 + 20);
        goto LABEL_90;
      }
    }

    v6 = v164;
    v5 = v165;
LABEL_232:
    v71 = *(a1 + 356);
    v10 = (a1 + 56 * v71 + 13512);
    *(a1 + 8) = v10;
    *(a1 + 356) = (v71 + 1) % 25;
    *(a1 + 644) = v13 - 1;
    *(a1 + 392) = 0;
    v72 = *(a1 + 56 * v71 + 13556);
    if (v72 == 1)
    {
      break;
    }

    if (v72 <= 1)
    {
      goto LABEL_242;
    }

    if (v72 != 3)
    {
      if (v72 == 2)
      {
        v94 = 0;
        if (*(a1 + 328))
        {
          v94 = 0;
          if (chlwc(*(*(a1 + 56 * v71 + 13544) + 4)) == 101)
          {
            if (chlwc(*(*(*(a1 + 8) + 32) + 8)) == 115 || (v94 = 0, chlwc(*(*(*(a1 + 8) + 32) + 8)) == 101))
            {
              v94 = 0;
              v95 = *(a1 + 8);
              v96 = *(v95 + 32);
              if (*(v96 + 12) == 126)
              {
                v97 = 0;
                v98 = v96 + 16;
                do
                {
                  v99 = *(v98 + 4 * v97);
                  if (v99 <= 0x20 && ((1 << v99) & 0x180000001) != 0)
                  {
                    break;
                  }

                  if (v99 == 96)
                  {
                    break;
                  }

                  v169[v97++] = v99;
                }

                while (v97 != 39);
                v169[v97] = 0;
                v101 = *(a1 + 328);
                v102 = *(a1 + 336);
                v103 = chlwc(*(*(v95 + 32) + 8)) == 101;
                v101(v170, v102, v169, v103, 0);
                v94 = v170[3];
              }
            }
          }
        }

        v104 = chlwc(*(*(*(a1 + 8) + 32) + 4));
        v105 = 0;
        if (v104 == 108)
        {
          v106 = chlwc(*(*(*(a1 + 8) + 32) + 8));
          v105 = 0;
          if (v106 == 103)
          {
            v105 = *(*(*(a1 + 8) + 32) + 12) == 126;
          }
        }

        *(a1 + 389) = v105;
        if (*(a1 + 640) >= 1)
        {
          v107 = 0;
          do
          {
            v108 = *(a1 + 376) + 44 * v107;
            *(a1 + 16) = v108;
            if (!wcmp(*(a1 + 8), v108) || dxbin_code_in_str(a1 + 40, v94, *(a1 + 16), 2))
            {
              v109 = *(a1 + 356);
              if (v109 > 24)
              {
                goto LABEL_304;
              }

              v110 = v109 + 1;
              v111 = a1 + 13544 + 56 * v109;
              while (*(v111 + 12) > 1)
              {
                v111 += 56;
                v17 = v110++ == 25;
                if (v17)
                {
                  goto LABEL_304;
                }
              }

              if (**v111 != 95)
              {
LABEL_304:
                v112 = *(a1 + 16);
                v113 = *(v112 + 36);
                if (v113)
                {
                  if (lookcw(a1, (v112 + 15), v113))
                  {
                    v114 = 1;
                  }

                  else
                  {
                    v114 = 2;
                  }

                  v112 = *(a1 + 16);
                }

                else
                {
                  v114 = 1;
                }

                *(v112 + 40) = v114;
              }
            }

            ++v107;
          }

          while (v107 < *(a1 + 640));
        }

        if (*(a1 + 320))
        {
          v115 = dxbin_code_in_str(a1 + 40, v94, "cb", 0);
          v116 = 0;
          if (v115)
          {
            goto LABEL_317;
          }

          if (chlwc(*(*(*(a1 + 8) + 32) + 4)) == 99)
          {
            v117 = chlwc(*(*(*(a1 + 8) + 32) + 8));
            v116 = 0;
            if (v117 == 98)
            {
              goto LABEL_317;
            }
          }

          v118 = dxbin_code_in_str(a1 + 40, v94, "tx", 0);
          v116 = 1;
          if (v118 || chlwc(*(*(*(a1 + 8) + 32) + 4)) == 116 && (v144 = chlwc(*(*(*(a1 + 8) + 32) + 8)), v116 = 1, v144 == 120))
          {
LABEL_317:
            *(a1 + 468) = v116;
          }
        }
      }

LABEL_371:
      v145 = *(a1 + 392);
      v146 = v145 + 1;
      *(a1 + 392) = v145 + 1;
      v12 = *(a1 + 8);
      if (v145 < *(v12 + 20))
      {
        if (v145 < 4 || *(a1 + 389) == 0)
        {
          v148 = *(a1 + 456);
          if (v148 == 1)
          {
            v151 = chlwc(*(*(v12 + 32) + 4 * v146 - 4));
            v12 = *(a1 + 8);
            *(*(v12 + 32) + 4 * *(a1 + 392) - 4) = v151;
          }

          else if (!v148)
          {
            v149 = *(v12 + 32) + 4 * v146;
            v150 = *(v149 - 4);
            if (v150 >= *(a1 + 408) && v150 <= *(a1 + 404))
            {
              *(v149 - 4) = v150 - 32;
            }
          }
        }

        *(a1 + 448) = *(*(v12 + 32) + 4 * *(a1 + 392) - 4);
        v78 = 5;
        goto LABEL_414;
      }

      goto LABEL_266;
    }

    v119 = *(a1 + 56 * v71 + 13544);
    if (v119[1] != 36)
    {
      goto LABEL_371;
    }

    *v119 = *(a1 + 288);
    *(a1 + 56 * v71 + 13532) = 1;
    *(a1 + 56 * v71 + 13556) = 0;
    *(a1 + 412) = 0;
LABEL_261:
    v12 = *(a1 + 8);
    v90 = *(a1 + 392);
    v91 = *(v12 + 20);
    if (*(v12 + 16))
    {
      v92 = v90 == v91;
    }

    else
    {
      v92 = 0;
    }

    if (v92)
    {
      *(a1 + 416) = 10;
      *(v12 + 12) = 0;
      *(v12 + 16) = 0;
      *(a1 + 448) = *(a1 + 364);
      goto LABEL_16;
    }

    if (v90 != v91)
    {
      v122 = *(v12 + 32);
      v123 = v90 + 1;
      *(a1 + 392) = v90 + 1;
      v124 = *(v122 + 4 * v90);
      *(a1 + 444) = v124;
      if (v124 == 23 && v123 < v91)
      {
        *(a1 + 392) = v90 + 2;
        v126 = *(a1 + 656);
        if (v126 <= 39)
        {
          v142 = *(v122 + 4 * v123);
          *(a1 + 656) = v126 + 1;
          *(a1 + v126 + 660) = v142;
          v127 = *(a1 + 444);
        }

        else
        {
          v127 = 23;
        }

        *(a1 + 448) = v127;
        goto LABEL_413;
      }

      if (v123 == v91 && *v12 && (v124 | 2) == 0x2E)
      {
        *(a1 + 416) = 10;
        *v12 = 0;
        *(a1 + 392) = v90;
LABEL_331:
        v121 = "\x0E/c\x0F";
        return queue_addstr((a1 + 648), v121);
      }

      v128 = *(v12 + 4);
      if (v128)
      {
        if (chall(*(v122 + 4 * v128)) || chalu(*(*(*(a1 + 8) + 32) + 4 * *(*(a1 + 8) + 4))))
        {
          hyp = get_hyp(*(a1 + 8));
          v12 = *(a1 + 8);
          *(v12 + 12) = hyp;
        }

        else
        {
          v12 = *(a1 + 8);
        }
      }

      v130 = *(v12 + 12);
      if (v130 <= 1)
      {
        if (*(v12 + 8) < 2)
        {
LABEL_384:
          *(v12 + 12) = 0;
          *(v12 + 4) = 0;
          goto LABEL_385;
        }

        while (v130 <= 1)
        {
          v131 = *(v12 + 4);
          v132 = *(v12 + 20);
          if (v132 > v131)
          {
            v133 = ~v131;
            v134 = v132 - v131;
            v135 = (*(v12 + 32) + 4 * v131);
            while (1)
            {
              v136 = *v135++;
              if (v136 == 45)
              {
                break;
              }

              --v133;
              if (!--v134)
              {
                goto LABEL_357;
              }
            }

            *(v12 + 4) = -v133;
          }

LABEL_357:
          v130 = get_hyp(v12);
          v12 = *(a1 + 8);
          v137 = *(v12 + 8);
          v138 = __OFSUB__(v137--, 1);
          *(v12 + 8) = v137;
          *(v12 + 12) = v130;
          if ((v137 < 0) ^ v138 | (v137 == 0))
          {
            if (v130 < 2)
            {
              goto LABEL_384;
            }

            break;
          }
        }
      }

      v139 = *(v12 + 4);
      if (v139)
      {
        v140 = *(a1 + 392);
        if (v140 == v139 - v130)
        {
          *(v12 + 16) = v139;
          *(v12 + 4) = 0;
          *(a1 + 416) = 10;
          v141 = *(a1 + 360);
LABEL_368:
          *(a1 + 448) = v141;
          *(a1 + 392) = v140 - 1;
          goto LABEL_16;
        }
      }

      v143 = *(v12 + 16);
      if (v143)
      {
        v140 = *(a1 + 392);
        if (v140 == v130 + v143 + 1)
        {
          *(v12 + 12) = 0;
          *(a1 + 416) = 10;
          v141 = *(a1 + 364);
          goto LABEL_368;
        }
      }

LABEL_385:
      v152 = *(a1 + 412);
      v153 = *(a1 + 460);
      if (*(a1 + 412))
      {
        if (v153 <= 1)
        {
          if (!chall(*(a1 + 444)))
          {
            if (*(a1 + 468) == 1 && !chalu(*(a1 + 444)) && !chcmb(*(a1 + 444)) && *(a1 + 412) == 1)
            {
              *(a1 + 412) = 0;
            }

            goto LABEL_405;
          }

          v152 = *(a1 + 412);
        }

        if (v152 == 1)
        {
          *(a1 + 412) = 0;
        }

        v154 = *(a1 + 304);
        if (v154)
        {
          goto LABEL_392;
        }
      }

      else if (v153 <= 1 && chalu(*(a1 + 444)) && *(a1 + 388))
      {
        v155 = *(a1 + 392);
        v156 = *(a1 + 8);
        if (v155 != *(v156 + 20) && (*(a1 + 460) > 1u || !nmucc(v156, v155)))
        {
          v159 = *(a1 + 292);
          *(a1 + 448) = v159;
          *(a1 + 416) = 9;
          *(a1 + 412) = 1;
          v160 = *(a1 + 656);
          if (v160 <= 39)
          {
            *(a1 + 656) = v160 + 1;
            *(a1 + v160 + 660) = v159;
          }

          goto LABEL_16;
        }

        v154 = *(a1 + 292);
LABEL_392:
        *(a1 + 448) = v154;
        v78 = 9;
        goto LABEL_414;
      }

LABEL_405:
      v157 = *(a1 + 460);
      v158 = *(a1 + 444);
      if (v157 == 1)
      {
        LODWORD(v158) = chlwc(v158);
      }

      else
      {
        if (v157 || v158 < *(a1 + 408) || v158 > *(a1 + 404))
        {
          goto LABEL_412;
        }

        LODWORD(v158) = v158 - 32;
      }

      *(a1 + 444) = v158;
LABEL_412:
      *(a1 + 448) = v158;
LABEL_413:
      v78 = 10;
      goto LABEL_414;
    }

LABEL_266:
    if (*(a1 + 412) == 2 && looklc(a1, 1))
    {
      *(a1 + 448) = *(a1 + 304);
      *(a1 + 416) = 15;
      *(a1 + 412) = 0;
      goto LABEL_16;
    }

LABEL_268:
    if (*v12)
    {
      *(a1 + 416) = 15;
      *v12 = 0;
      goto LABEL_331;
    }

    *(a1 + 348) = 1;
    v93 = *(v12 + 24);
    if ((v93 - 31) < 2)
    {
      goto LABEL_272;
    }

    if ((v93 - 65280) < 2)
    {
      goto LABEL_322;
    }

    if (v93 == 96)
    {
LABEL_272:
      *(a1 + 448) = v93;
      *(a1 + 389) = 0;
      v78 = 4;
      goto LABEL_414;
    }
  }

  v73 = *(a1 + 13500);
  if (v73 && *(a1 + 412) != 2 && !looklc(a1, v73))
  {
    *(a1 + 412) = 2;
    v74 = *(a1 + 292);
    *(a1 + 448) = v74;
    if (*(a1 + 656) <= 38)
    {
      v75 = -2;
      do
      {
        v76 = *(a1 + 656);
        *(a1 + 656) = v76 + 1;
        *(a1 + 660 + v76) = v74;
      }

      while (!__CFADD__(v75++, 1));
    }

    v78 = 6;
    goto LABEL_414;
  }

LABEL_242:
  if (*(a1 + 412) == 1)
  {
    *(a1 + 412) = 0;
  }

LABEL_244:
  if (*v10)
  {
    *(a1 + 416) = 11;
    v121 = "\x0Ec\x0F";
    return queue_addstr((a1 + 648), v121);
  }

LABEL_245:
  v79 = *(a1 + 640);
  if (v79 < 1)
  {
LABEL_250:
    v83 = *(a1 + 352);
    if (v83 < v79)
    {
      v84 = v83 + 1;
      v85 = 44 * v83;
      while (1)
      {
        v86 = *(a1 + 376);
        v87 = v86 + v85;
        *(a1 + 16) = v86 + v85;
        v88 = *(v86 + v85 + 40);
        if (*(*(a1 + 8) + 46) && v88 == 1)
        {
          break;
        }

        if (v88 == 3)
        {
          if (lookcw(a1, (v86 + v85 + 15), 1))
          {
            v120 = *(a1 + 16);
            *(a1 + 448) = *(v120 + 32);
            *(v120 + 40) = 0;
            *(a1 + 352) = v84;
            goto LABEL_325;
          }

          v79 = *(a1 + 640);
        }

        ++v83;
        ++v84;
        v85 += 44;
        if (v83 >= v79)
        {
          goto LABEL_260;
        }
      }

      *(a1 + 448) = *(v87 + 32);
      *(a1 + 352) = v84;
      if (lookcw(a1, (v87 + 15), 1))
      {
        *(*(a1 + 16) + 40) = 0;
      }

LABEL_325:
      v78 = 11;
      goto LABEL_414;
    }

LABEL_260:
    *(a1 + 352) = 0;
    goto LABEL_261;
  }

  v80 = *(a1 + 376);
  v81 = v80 + 44 * (v79 - 1);
  v82 = *(a1 + 640);
  while (*(v80 + 40) != 2)
  {
    v80 += 44;
    if (!--v82)
    {
      *(a1 + 16) = v81;
      goto LABEL_250;
    }
  }

  *(a1 + 16) = v80;
  *(a1 + 448) = *(v80 + 32);
  v78 = 12;
LABEL_414:
  *(a1 + 416) = v78;
LABEL_16:
  if (!chdids(*(a1 + 448), 0, v6))
  {
    return *v6;
  }

  *(a1 + 400) = *(a1 + 416);
  *(a1 + 416) = 3;
  *(a1 + 396) = 1;
  return *(a1 + 344);
}

uint64_t looklc(uint64_t a1, int a2)
{
  v2 = *(a1 + 644);
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  for (i = *(a1 + 356); ; ++i)
  {
    v5 = a1 + 13512 + 56 * (i % 25);
    if (*(v5 + 44) > 1)
    {
      if (*(v5 + 48))
      {
        return 1;
      }

      goto LABEL_10;
    }

    if (*(v5 + 44) != 1)
    {
      if (!*(v5 + 44))
      {
        return 1;
      }

      goto LABEL_10;
    }

    if (++v3 == a2)
    {
      break;
    }

LABEL_10:
    if (!--v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t wcmp(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) < 1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = chlwc(*(v4 + 4));
  if (v5 > 0xFF)
  {
    v9 = 0;
    return v5 - v9;
  }

  else
  {
    v6 = 0;
    v7 = v4 + 8;
    while (1)
    {
      v8 = __tolower(*(a2 + v6));
      if (v5 != v8)
      {
LABEL_8:
        v9 = v8;
        return v5 - v9;
      }

      if (!v5)
      {
        return 0;
      }

      if (v6 + 1 < *(a1 + 20))
      {
        v5 = chlwc(*(v7 + 4 * v6++));
        if (v5 <= 0xFF)
        {
          continue;
        }
      }

      goto LABEL_8;
    }
  }
}

uint64_t lookcw(uint64_t a1, char *a2, int a3)
{
  v5 = 0;
  v6 = 0;
  v7 = a1 + 13512;
  v8 = *(a1 + 644);
  while (v5 != v8)
  {
    v9 = *(a1 + 356) + v5++;
    v10 = v7 + 56 * (v9 % 25);
    v11 = *(v10 + 44);
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        if (!wcmp(v10, a2))
        {
          return 1;
        }

        if (*(a1 + 328))
        {
          if (chlwc(*(*(v10 + 32) + 4)) == 101 && chlwc(*(*(v10 + 32) + 8)) == 101)
          {
            v12 = *(v10 + 32);
            if (*(v12 + 12) == 126)
            {
              v13 = 0;
              v14 = v12 + 16;
              do
              {
                v15 = *(v14 + 4 * v13);
                if (v15 <= 0x20 && ((1 << v15) & 0x180000001) != 0)
                {
                  break;
                }

                if (v15 == 96)
                {
                  break;
                }

                v21[v13++] = v15;
              }

              while (v13 != 39);
              v21[v13] = 0;
              v18 = 1;
              (*(a1 + 328))(v20, *(a1 + 336), v21, 1, 0);
              if (dxbin_code_in_str(a1 + 40, v20[3], a2, 2))
              {
                return v18;
              }
            }
          }
        }
      }

LABEL_22:
      v8 = *(a1 + 644);
    }

    else
    {
      if (!*(v10 + 46))
      {
        goto LABEL_22;
      }

      if (++v6 == a3)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t queue_addstr(char *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 2);
  if (v5 + v4 > 40)
  {
    return 0;
  }

  strcpy(&a1[v5 + 12], __s);
  v7 = *(a1 + 2) + v4;
  *(a1 + 2) = v7;
  v8 = *a1;
  result = a1[v8 + 12];
  *(a1 + 2) = v7 - 1;
  *a1 = v8 + 1;
  return result;
}

uint64_t get_hyp(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 20) - v2;
  v4 = v3 + 1;
  v5 = v3 + 2;
  if (v2 <= v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (v6 >= 2)
  {
    v7 = -2;
    for (i = 1; i != v6; ++i)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = 0;
        v13 = *(a1 + 32);
        v14 = *(a1 + 4);
        v15 = v11;
        v16 = v7 + v11 + v14;
        while (1)
        {
          v17 = *(v13 + 4 * (v16 + v12));
          if (v17 != 23)
          {
            break;
          }

          v12 += 2;
          if (v15 + v12 >= i)
          {
            goto LABEL_23;
          }
        }

        v18 = v14 + v10;
        v19 = v10++;
        while (*(v13 + 4 * v18) == 23)
        {
          v18 += 2;
          v10 += 2;
          v19 += 2;
          if (v18 > *(a1 + 20))
          {
            goto LABEL_23;
          }
        }

        v20 = chlwc(v17);
        if (v20 != chlwc(*(*(a1 + 32) + 4 * (*(a1 + 4) + v19))) || chlwc(*(*(a1 + 32) + 4 * (*(a1 + 4) + v7 + v15 + v12))) == 45 || !chall(*(*(a1 + 32) + 4 * (*(a1 + 4) + v7 + v15 + v12))) && !chalu(*(*(a1 + 32) + 4 * (*(a1 + 4) + v7 + v15 + v12))))
        {
          v9 = 1;
        }

        v11 = v12 + v15 + 1;
      }

      while (i > v11);
LABEL_23:
      if (!v9)
      {
        *(a1 + 12) = i;
      }

      --v7;
    }
  }

  return *(a1 + 12);
}

BOOL nmucc(uint64_t a1, int a2)
{
  v2 = *(a1 + 20);
  if (v2 <= a2)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = a2;
  v6 = *(v4 + 4 * a2);
  if (v6 == 23)
  {
    v5 = a2 + 2;
    if (v5 >= v2)
    {
      return 1;
    }

    v6 = *(v4 + 4 * v5);
  }

  return !chalu(v6) && !chcmb(*(*(a1 + 32) + 4 * v5));
}

uint64_t read_bscpc(uint64_t a1, uint64_t a2)
{
  v3 = dxtbl_lintbl_read(a1, __s, 4uLL);
  if (!v3)
  {
    v4 = strlen(__s);
    *(a2 + 80) = v4;
    memmove((a2 + 76), __s, v4);
  }

  return v3;
}

uint64_t readfonts(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 288);
  dxtbl_lintbl_readint(a1, 0, 0x7FFFFFFF, (a2 + 288));
  v5 = *(a2 + 288);
  if (v5)
  {
    *(a2 + 24) = malloc_type_malloc(44 * v5, 0x1000040B9EB0B01uLL);
    if (*(a2 + 288) >= 1)
    {
      v6 = 0;
      v7 = 32;
      do
      {
        v8 = *(a2 + 24) + v7;
        dxtbl_lintbl_read(a1, v18, 0x28uLL);
        if (sscanf(v18, "%s %s %d %d", v8 - 32, v8 - 17, v8 + 4, v8) < 4)
        {
          return 1;
        }

        ++v6;
        v9 = *v4;
        v7 += 44;
      }

      while (v6 < v9);
      if (v9 >= 1)
      {
        v10 = (v9 + 3) & 0xFFFFFFFC;
        v11 = vdupq_n_s64(v9 - 1);
        v12 = xmmword_2B8F0;
        v13 = xmmword_2B900;
        v14 = (*(a2 + 24) + 128);
        v15 = vdupq_n_s64(4uLL);
        do
        {
          v16 = vmovn_s64(vcgeq_u64(v11, v13));
          if (vuzp1_s16(v16, *v11.i8).u8[0])
          {
            *(v14 - 22) = 0;
          }

          if (vuzp1_s16(v16, *&v11).i8[2])
          {
            *(v14 - 11) = 0;
          }

          if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
          {
            *v14 = 0;
            v14[11] = 0;
          }

          v12 = vaddq_s64(v12, v15);
          v13 = vaddq_s64(v13, v15);
          v14 += 44;
          v10 -= 4;
        }

        while (v10);
      }
    }
  }

  return 0;
}

uint64_t wcapsend(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (v2 != 35)
    {
      goto LABEL_7;
    }

    if (a2[1])
    {
      return 1;
    }

    v3 = "";
  }

  else
  {
    v3 = "#";
  }

  if (!*v3)
  {
    return 1;
  }

LABEL_7:
  if (*a2)
  {
    if (v2 != 58)
    {
      goto LABEL_13;
    }

    if (a2[1])
    {
      return 1;
    }

    v4 = "";
  }

  else
  {
    v4 = ":";
  }

  if (!*v4)
  {
    return 1;
  }

LABEL_13:
  if (*a2)
  {
    if (v2 != 59)
    {
      goto LABEL_19;
    }

    if (a2[1])
    {
      return 1;
    }

    v5 = "";
  }

  else
  {
    v5 = ";";
  }

  if (!*v5)
  {
    return 1;
  }

LABEL_19:
  if (*a2)
  {
    if (v2 != 60)
    {
      goto LABEL_25;
    }

    if (a2[1])
    {
      return 1;
    }

    v6 = "";
  }

  else
  {
    v6 = "<";
  }

  if (!*v6)
  {
    return 1;
  }

LABEL_25:
  if (*a2)
  {
    if (v2 != 62)
    {
      goto LABEL_31;
    }

    if (a2[1])
    {
      return 1;
    }

    v7 = "";
  }

  else
  {
    v7 = ">";
  }

  if (!*v7)
  {
    return 1;
  }

LABEL_31:
  if (*a2)
  {
    v8 = a2 + 1;
    v9 = 3;
    v10 = *a2;
    v11 = "aln";
    while (v9)
    {
      if (v10 != *v11)
      {
        goto LABEL_39;
      }

      v12 = *v8++;
      v10 = v12;
      --v9;
      ++v11;
      if (!v12)
      {
        goto LABEL_38;
      }
    }

    return 1;
  }

  v11 = "aln";
LABEL_38:
  if (!*v11)
  {
    return 1;
  }

LABEL_39:
  if (*a2)
  {
    v13 = a2 + 1;
    v14 = 2;
    v15 = *a2;
    v16 = "ca";
    while (v14)
    {
      if (v15 != *v16)
      {
        goto LABEL_47;
      }

      v17 = *v13++;
      v15 = v17;
      --v14;
      ++v16;
      if (!v17)
      {
        goto LABEL_46;
      }
    }

    return 1;
  }

  v16 = "ca";
LABEL_46:
  if (!*v16)
  {
    return 1;
  }

LABEL_47:
  if (*a2)
  {
    v18 = a2 + 1;
    v19 = 2;
    v20 = *a2;
    v21 = "cb";
    while (v19)
    {
      if (v20 != *v21)
      {
        goto LABEL_55;
      }

      v22 = *v18++;
      v20 = v22;
      --v19;
      ++v21;
      if (!v22)
      {
        goto LABEL_54;
      }
    }

    return 1;
  }

  v21 = "cb";
LABEL_54:
  if (!*v21)
  {
    return 1;
  }

LABEL_55:
  if (*a2)
  {
    v23 = a2 + 1;
    v24 = 2;
    v25 = *a2;
    v26 = "cp";
    while (v24)
    {
      if (v25 != *v26)
      {
        goto LABEL_63;
      }

      v27 = *v23++;
      v25 = v27;
      --v24;
      ++v26;
      if (!v27)
      {
        goto LABEL_62;
      }
    }

    return 1;
  }

  v26 = "cp";
LABEL_62:
  if (!*v26)
  {
    return 1;
  }

LABEL_63:
  if (*a2)
  {
    v28 = a2 + 1;
    v29 = 2;
    v30 = *a2;
    v31 = "cu";
    while (v29)
    {
      if (v30 != *v31)
      {
        goto LABEL_71;
      }

      v32 = *v28++;
      v30 = v32;
      --v29;
      ++v31;
      if (!v32)
      {
        goto LABEL_70;
      }
    }

    return 1;
  }

  v31 = "cu";
LABEL_70:
  if (!*v31)
  {
    return 1;
  }

LABEL_71:
  if (*a2)
  {
    v33 = a2 + 1;
    v34 = 2;
    v35 = *a2;
    v36 = "cz";
    while (v34)
    {
      if (v35 != *v36)
      {
        goto LABEL_79;
      }

      v37 = *v33++;
      v35 = v37;
      --v34;
      ++v36;
      if (!v37)
      {
        goto LABEL_78;
      }
    }

    return 1;
  }

  v36 = "cz";
LABEL_78:
  if (!*v36)
  {
    return 1;
  }

LABEL_79:
  if (*a2)
  {
    if (v2 != 100)
    {
      goto LABEL_85;
    }

    if (a2[1])
    {
      return 1;
    }

    v38 = "";
  }

  else
  {
    v38 = "d";
  }

  if (!*v38)
  {
    return 1;
  }

LABEL_85:
  if (*a2)
  {
    v39 = a2 + 1;
    v40 = 2;
    v41 = *a2;
    v42 = "fc";
    while (v40)
    {
      if (v41 != *v42)
      {
        goto LABEL_93;
      }

      v43 = *v39++;
      v41 = v43;
      --v40;
      ++v42;
      if (!v43)
      {
        goto LABEL_92;
      }
    }

    return 1;
  }

  v42 = "fc";
LABEL_92:
  if (!*v42)
  {
    return 1;
  }

LABEL_93:
  if (*a2)
  {
    v44 = a2 + 1;
    v45 = 2;
    v46 = *a2;
    v47 = "fr";
    while (v45)
    {
      if (v46 != *v47)
      {
        goto LABEL_101;
      }

      v48 = *v44++;
      v46 = v48;
      --v45;
      ++v47;
      if (!v48)
      {
        goto LABEL_100;
      }
    }

    return 1;
  }

  v47 = "fr";
LABEL_100:
  if (!*v47)
  {
    return 1;
  }

LABEL_101:
  if (*(a1 + 13504))
  {
    if (*a2)
    {
      v49 = a2 + 1;
      v50 = 3;
      v51 = *a2;
      v52 = "fte";
      while (v50)
      {
        if (v51 != *v52)
        {
          goto LABEL_110;
        }

        v53 = *v49++;
        v51 = v53;
        --v50;
        ++v52;
        if (!v53)
        {
          goto LABEL_109;
        }
      }

      return 1;
    }

    v52 = "fte";
LABEL_109:
    if (!*v52)
    {
      return 1;
    }

LABEL_110:
    if (*a2)
    {
      v54 = a2 + 1;
      v55 = 3;
      v56 = *a2;
      v57 = "fts";
      while (v55)
      {
        if (v56 != *v57)
        {
          goto LABEL_118;
        }

        v58 = *v54++;
        v56 = v58;
        --v55;
        ++v57;
        if (!v58)
        {
          goto LABEL_117;
        }
      }

      return 1;
    }

    v57 = "fts";
LABEL_117:
    if (!*v57)
    {
      return 1;
    }
  }

LABEL_118:
  if (*a2)
  {
    v59 = a2 + 1;
    v60 = 2;
    v61 = *a2;
    v62 = "gd";
    while (v60)
    {
      if (v61 != *v62)
      {
        goto LABEL_126;
      }

      v63 = *v59++;
      v61 = v63;
      --v60;
      ++v62;
      if (!v63)
      {
        goto LABEL_125;
      }
    }

    return 1;
  }

  v62 = "gd";
LABEL_125:
  if (!*v62)
  {
    return 1;
  }

LABEL_126:
  if (*a2)
  {
    if (v2 != 104)
    {
      goto LABEL_132;
    }

    if (a2[1])
    {
      return 1;
    }

    v64 = "";
  }

  else
  {
    v64 = "h";
  }

  if (!*v64)
  {
    return 1;
  }

LABEL_132:
  if (*a2)
  {
    v65 = a2 + 1;
    v66 = 2;
    v67 = *a2;
    v68 = "if";
    while (v66)
    {
      if (v67 != *v68)
      {
        goto LABEL_140;
      }

      v69 = *v65++;
      v67 = v69;
      --v66;
      ++v68;
      if (!v69)
      {
        goto LABEL_139;
      }
    }

    return 1;
  }

  v68 = "if";
LABEL_139:
  if (!*v68)
  {
    return 1;
  }

LABEL_140:
  if (*a2)
  {
    v70 = a2 + 1;
    v71 = 2;
    v72 = *a2;
    v73 = "im";
    while (v71)
    {
      if (v72 != *v73)
      {
        goto LABEL_148;
      }

      v74 = *v70++;
      v72 = v74;
      --v71;
      ++v73;
      if (!v74)
      {
        goto LABEL_147;
      }
    }

    return 1;
  }

  v73 = "im";
LABEL_147:
  if (!*v73)
  {
    return 1;
  }

LABEL_148:
  if (*a2)
  {
    v75 = a2 + 1;
    v76 = 3;
    v77 = *a2;
    v78 = "ind";
    while (v76)
    {
      if (v77 != *v78)
      {
        goto LABEL_156;
      }

      v79 = *v75++;
      v77 = v79;
      --v76;
      ++v78;
      if (!v79)
      {
        goto LABEL_155;
      }
    }

    return 1;
  }

  v78 = "ind";
LABEL_155:
  if (!*v78)
  {
    return 1;
  }

LABEL_156:
  if (*a2)
  {
    v80 = a2 + 1;
    v81 = 2;
    v82 = *a2;
    v83 = "iq";
    while (v81)
    {
      if (v82 != *v83)
      {
        goto LABEL_164;
      }

      v84 = *v80++;
      v82 = v84;
      --v81;
      ++v83;
      if (!v84)
      {
        goto LABEL_163;
      }
    }

    return 1;
  }

  v83 = "iq";
LABEL_163:
  if (!*v83)
  {
    return 1;
  }

LABEL_164:
  if (*a2)
  {
    v85 = a2 + 1;
    v86 = 2;
    v87 = *a2;
    v88 = "kb";
    while (v86)
    {
      if (v87 != *v88)
      {
        goto LABEL_172;
      }

      v89 = *v85++;
      v87 = v89;
      --v86;
      ++v88;
      if (!v89)
      {
        goto LABEL_171;
      }
    }

    return 1;
  }

  v88 = "kb";
LABEL_171:
  if (!*v88)
  {
    return 1;
  }

LABEL_172:
  if (*a2)
  {
    v90 = a2 + 1;
    v91 = 2;
    v92 = *a2;
    v93 = "kd";
    while (v91)
    {
      if (v92 != *v93)
      {
        goto LABEL_180;
      }

      v94 = *v90++;
      v92 = v94;
      --v91;
      ++v93;
      if (!v94)
      {
        goto LABEL_179;
      }
    }

    return 1;
  }

  v93 = "kd";
LABEL_179:
  if (!*v93)
  {
    return 1;
  }

LABEL_180:
  if (*a2)
  {
    v95 = a2 + 1;
    v96 = 2;
    v97 = *a2;
    v98 = "kp";
    while (v96)
    {
      if (v97 != *v98)
      {
        goto LABEL_188;
      }

      v99 = *v95++;
      v97 = v99;
      --v96;
      ++v98;
      if (!v99)
      {
        goto LABEL_187;
      }
    }

    return 1;
  }

  v98 = "kp";
LABEL_187:
  if (!*v98)
  {
    return 1;
  }

LABEL_188:
  if (*(a1 + 13505))
  {
    if (*a2)
    {
      v100 = a2 + 1;
      v101 = "l";
      v102 = *a2;
      while (v102 == *v101)
      {
        ++v101;
        v103 = *v100++;
        v102 = v103;
        if (!v103)
        {
          goto LABEL_195;
        }
      }
    }

    else
    {
      v101 = "l";
LABEL_195:
      if (!*v101)
      {
        return 1;
      }
    }
  }

  if (*a2)
  {
    v104 = a2 + 1;
    v105 = 2;
    v106 = *a2;
    v107 = "ld";
    while (v105)
    {
      if (v106 != *v107)
      {
        goto LABEL_204;
      }

      v108 = *v104++;
      v106 = v108;
      --v105;
      ++v107;
      if (!v108)
      {
        goto LABEL_203;
      }
    }

    return 1;
  }

  v107 = "ld";
LABEL_203:
  if (!*v107)
  {
    return 1;
  }

LABEL_204:
  if (*a2)
  {
    v109 = a2 + 1;
    v110 = 2;
    v111 = *a2;
    v112 = "lg";
    while (v110)
    {
      if (v111 != *v112)
      {
        goto LABEL_212;
      }

      v113 = *v109++;
      v111 = v113;
      --v110;
      ++v112;
      if (!v113)
      {
        goto LABEL_211;
      }
    }

    return 1;
  }

  v112 = "lg";
LABEL_211:
  if (!*v112)
  {
    return 1;
  }

LABEL_212:
  if (*a2)
  {
    v114 = a2 + 1;
    v115 = 4;
    v116 = *a2;
    v117 = "line";
    while (v115)
    {
      if (v116 != *v117)
      {
        goto LABEL_220;
      }

      v118 = *v114++;
      v116 = v118;
      --v115;
      ++v117;
      if (!v118)
      {
        goto LABEL_219;
      }
    }

    return 1;
  }

  v117 = "line";
LABEL_219:
  if (!*v117)
  {
    return 1;
  }

LABEL_220:
  if (*a2)
  {
    v119 = a2 + 1;
    v120 = 3;
    v121 = *a2;
    v122 = "lnb";
    while (v120)
    {
      if (v121 != *v122)
      {
        goto LABEL_228;
      }

      v123 = *v119++;
      v121 = v123;
      --v120;
      ++v122;
      if (!v123)
      {
        goto LABEL_227;
      }
    }

    return 1;
  }

  v122 = "lnb";
LABEL_227:
  if (!*v122)
  {
    return 1;
  }

LABEL_228:
  if (*a2)
  {
    v124 = a2 + 1;
    v125 = 3;
    v126 = *a2;
    v127 = "lpr";
    while (v125)
    {
      if (v126 != *v127)
      {
        goto LABEL_236;
      }

      v128 = *v124++;
      v126 = v128;
      --v125;
      ++v127;
      if (!v128)
      {
        goto LABEL_235;
      }
    }

    return 1;
  }

  v127 = "lpr";
LABEL_235:
  if (!*v127)
  {
    return 1;
  }

LABEL_236:
  if (*a2)
  {
    v129 = a2 + 1;
    v130 = 2;
    v131 = *a2;
    v132 = "me";
    while (v130)
    {
      if (v131 != *v132)
      {
        goto LABEL_244;
      }

      v133 = *v129++;
      v131 = v133;
      --v130;
      ++v132;
      if (!v133)
      {
        goto LABEL_243;
      }
    }

    return 1;
  }

  v132 = "me";
LABEL_243:
  if (!*v132)
  {
    return 1;
  }

LABEL_244:
  if (*a2)
  {
    v134 = a2 + 1;
    v135 = 3;
    v136 = *a2;
    v137 = "mfc";
    while (v135)
    {
      if (v136 != *v137)
      {
        goto LABEL_252;
      }

      v138 = *v134++;
      v136 = v138;
      --v135;
      ++v137;
      if (!v138)
      {
        goto LABEL_251;
      }
    }

    return 1;
  }

  v137 = "mfc";
LABEL_251:
  if (!*v137)
  {
    return 1;
  }

LABEL_252:
  if (*a2)
  {
    v139 = a2 + 1;
    v140 = 4;
    v141 = *a2;
    v142 = "musi";
    while (v140)
    {
      if (v141 != *v142)
      {
        goto LABEL_260;
      }

      v143 = *v139++;
      v141 = v143;
      --v140;
      ++v142;
      if (!v143)
      {
        goto LABEL_259;
      }
    }

    return 1;
  }

  v142 = "musi";
LABEL_259:
  if (!*v142)
  {
    return 1;
  }

LABEL_260:
  if (*a2)
  {
    v144 = a2 + 1;
    v145 = "p";
    v146 = *a2;
    while (v146 == *v145)
    {
      ++v145;
      v147 = *v144++;
      v146 = v147;
      if (!v147)
      {
        goto LABEL_266;
      }
    }
  }

  else
  {
    v145 = "p";
LABEL_266:
    if (!*v145)
    {
      return 1;
    }
  }

  if (*a2)
  {
    v148 = a2 + 1;
    v149 = 2;
    v150 = *a2;
    v151 = "pg";
    while (v149)
    {
      if (v150 != *v151)
      {
        goto LABEL_275;
      }

      v152 = *v148++;
      v150 = v152;
      --v149;
      ++v151;
      if (!v152)
      {
        goto LABEL_274;
      }
    }

    return 1;
  }

  v151 = "pg";
LABEL_274:
  if (!*v151)
  {
    return 1;
  }

LABEL_275:
  if (*a2)
  {
    v153 = a2 + 1;
    v154 = 2;
    v155 = *a2;
    v156 = "pi";
    while (v154)
    {
      if (v155 != *v156)
      {
        goto LABEL_283;
      }

      v157 = *v153++;
      v155 = v157;
      --v154;
      ++v156;
      if (!v157)
      {
        goto LABEL_282;
      }
    }

    return 1;
  }

  v156 = "pi";
LABEL_282:
  if (!*v156)
  {
    return 1;
  }

LABEL_283:
  if (*a2)
  {
    v158 = a2 + 1;
    v159 = 2;
    v160 = *a2;
    v161 = "pl";
    while (v159)
    {
      if (v160 != *v161)
      {
        goto LABEL_291;
      }

      v162 = *v158++;
      v160 = v162;
      --v159;
      ++v161;
      if (!v162)
      {
        goto LABEL_290;
      }
    }

    return 1;
  }

  v161 = "pl";
LABEL_290:
  if (!*v161)
  {
    return 1;
  }

LABEL_291:
  if (*a2)
  {
    v163 = a2 + 1;
    v164 = 2;
    v165 = *a2;
    v166 = "pm";
    while (v164)
    {
      if (v165 != *v166)
      {
        goto LABEL_299;
      }

      v167 = *v163++;
      v165 = v167;
      --v164;
      ++v166;
      if (!v167)
      {
        goto LABEL_298;
      }
    }

    return 1;
  }

  v166 = "pm";
LABEL_298:
  if (!*v166)
  {
    return 1;
  }

LABEL_299:
  if (*a2)
  {
    v168 = a2 + 1;
    v169 = 3;
    v170 = *a2;
    v171 = "psa";
    while (v169)
    {
      if (v170 != *v171)
      {
        goto LABEL_307;
      }

      v172 = *v168++;
      v170 = v172;
      --v169;
      ++v171;
      if (!v172)
      {
        goto LABEL_306;
      }
    }

    return 1;
  }

  v171 = "psa";
LABEL_306:
  if (!*v171)
  {
    return 1;
  }

LABEL_307:
  if (*a2)
  {
    v173 = a2 + 1;
    v174 = 3;
    v175 = *a2;
    v176 = "psc";
    while (v174)
    {
      if (v175 != *v176)
      {
        goto LABEL_315;
      }

      v177 = *v173++;
      v175 = v177;
      --v174;
      ++v176;
      if (!v177)
      {
        goto LABEL_314;
      }
    }

    return 1;
  }

  v176 = "psc";
LABEL_314:
  if (!*v176)
  {
    return 1;
  }

LABEL_315:
  if (*a2)
  {
    v178 = a2 + 1;
    v179 = 3;
    v180 = *a2;
    v181 = "pst";
    while (v179)
    {
      if (v180 != *v181)
      {
        goto LABEL_323;
      }

      v182 = *v178++;
      v180 = v182;
      --v179;
      ++v181;
      if (!v182)
      {
        goto LABEL_322;
      }
    }

    return 1;
  }

  v181 = "pst";
LABEL_322:
  if (!*v181)
  {
    return 1;
  }

LABEL_323:
  if (*a2)
  {
    v183 = a2 + 1;
    v184 = 3;
    v185 = *a2;
    v186 = "pty";
    while (v184)
    {
      if (v185 != *v186)
      {
        goto LABEL_331;
      }

      v187 = *v183++;
      v185 = v187;
      --v184;
      ++v186;
      if (!v187)
      {
        goto LABEL_330;
      }
    }

    return 1;
  }

  v186 = "pty";
LABEL_330:
  if (!*v186)
  {
    return 1;
  }

LABEL_331:
  if (!*a2)
  {
    v188 = "q";
LABEL_336:
    if (!*v188)
    {
      return 1;
    }

    goto LABEL_337;
  }

  if (v2 == 113)
  {
    if (a2[1])
    {
      return 1;
    }

    v188 = "";
    goto LABEL_336;
  }

LABEL_337:
  if (*a2)
  {
    v189 = a2 + 1;
    v190 = 2;
    v191 = *a2;
    v192 = "rd";
    while (v190)
    {
      if (v191 != *v192)
      {
        goto LABEL_345;
      }

      v193 = *v189++;
      v191 = v193;
      --v190;
      ++v192;
      if (!v193)
      {
        goto LABEL_344;
      }
    }

    return 1;
  }

  v192 = "rd";
LABEL_344:
  if (!*v192)
  {
    return 1;
  }

LABEL_345:
  if (*a2)
  {
    v194 = a2 + 1;
    v195 = 4;
    v196 = *a2;
    v197 = "remw";
    while (v195)
    {
      if (v196 != *v197)
      {
        goto LABEL_353;
      }

      v198 = *v194++;
      v196 = v198;
      --v195;
      ++v197;
      if (!v198)
      {
        goto LABEL_352;
      }
    }

    return 1;
  }

  v197 = "remw";
LABEL_352:
  if (!*v197)
  {
    return 1;
  }

LABEL_353:
  if (*a2)
  {
    v199 = a2 + 1;
    v200 = 3;
    v201 = *a2;
    v202 = "rfe";
    while (v200)
    {
      if (v201 != *v202)
      {
        goto LABEL_361;
      }

      v203 = *v199++;
      v201 = v203;
      --v200;
      ++v202;
      if (!v203)
      {
        goto LABEL_360;
      }
    }

    return 1;
  }

  v202 = "rfe";
LABEL_360:
  if (!*v202)
  {
    return 1;
  }

LABEL_361:
  if (*a2)
  {
    v204 = a2 + 1;
    v205 = 3;
    v206 = *a2;
    v207 = "rfs";
    while (v205)
    {
      if (v206 != *v207)
      {
        goto LABEL_369;
      }

      v208 = *v204++;
      v206 = v208;
      --v205;
      ++v207;
      if (!v208)
      {
        goto LABEL_368;
      }
    }

    return 1;
  }

  v207 = "rfs";
LABEL_368:
  if (!*v207)
  {
    return 1;
  }

LABEL_369:
  if (*a2)
  {
    v209 = a2 + 1;
    v210 = 2;
    v211 = *a2;
    v212 = "rn";
    while (v210)
    {
      if (v211 != *v212)
      {
        goto LABEL_377;
      }

      v213 = *v209++;
      v211 = v213;
      --v210;
      ++v212;
      if (!v213)
      {
        goto LABEL_376;
      }
    }

    return 1;
  }

  v212 = "rn";
LABEL_376:
  if (!*v212)
  {
    return 1;
  }

LABEL_377:
  if (*a2)
  {
    v214 = a2 + 1;
    v215 = 2;
    v216 = *a2;
    v217 = "rp";
    while (v215)
    {
      if (v216 != *v217)
      {
        goto LABEL_385;
      }

      v218 = *v214++;
      v216 = v218;
      --v215;
      ++v217;
      if (!v218)
      {
        goto LABEL_384;
      }
    }

    return 1;
  }

  v217 = "rp";
LABEL_384:
  if (!*v217)
  {
    return 1;
  }

LABEL_385:
  if (*a2)
  {
    v219 = a2 + 1;
    v220 = "sc";
    v221 = *a2;
    while (v221 == *v220)
    {
      ++v220;
      v222 = *v219++;
      v221 = v222;
      if (!v222)
      {
        goto LABEL_391;
      }
    }
  }

  else
  {
    v220 = "sc";
LABEL_391:
    if (!*v220)
    {
      return 1;
    }
  }

  if (*a2)
  {
    v223 = a2 + 1;
    v224 = 2;
    v225 = *a2;
    v226 = "sd";
    while (v224)
    {
      if (v225 != *v226)
      {
        goto LABEL_400;
      }

      v227 = *v223++;
      v225 = v227;
      --v224;
      ++v226;
      if (!v227)
      {
        goto LABEL_399;
      }
    }

    return 1;
  }

  v226 = "sd";
LABEL_399:
  if (!*v226)
  {
    return 1;
  }

LABEL_400:
  if (*a2)
  {
    v228 = a2 + 1;
    v229 = 2;
    v230 = *a2;
    v231 = "si";
    while (v229)
    {
      if (v230 != *v231)
      {
        goto LABEL_408;
      }

      v232 = *v228++;
      v230 = v232;
      --v229;
      ++v231;
      if (!v232)
      {
        goto LABEL_407;
      }
    }

    return 1;
  }

  v231 = "si";
LABEL_407:
  if (!*v231)
  {
    return 1;
  }

LABEL_408:
  if (*a2)
  {
    v233 = a2 + 1;
    v234 = "sk";
    v235 = *a2;
    while (v235 == *v234)
    {
      ++v234;
      v236 = *v233++;
      v235 = v236;
      if (!v236)
      {
        goto LABEL_414;
      }
    }
  }

  else
  {
    v234 = "sk";
LABEL_414:
    if (!*v234)
    {
      return 1;
    }
  }

  if (*a2)
  {
    v237 = a2 + 1;
    v238 = 2;
    v239 = *a2;
    v240 = "sl";
    while (v238)
    {
      if (v239 != *v240)
      {
        goto LABEL_423;
      }

      v241 = *v237++;
      v239 = v241;
      --v238;
      ++v240;
      if (!v241)
      {
        goto LABEL_422;
      }
    }

    return 1;
  }

  v240 = "sl";
LABEL_422:
  if (!*v240)
  {
    return 1;
  }

LABEL_423:
  if (*a2)
  {
    v242 = a2 + 1;
    v243 = "st";
    v244 = *a2;
    while (v244 == *v243)
    {
      ++v243;
      v245 = *v242++;
      v244 = v245;
      if (!v245)
      {
        goto LABEL_429;
      }
    }
  }

  else
  {
    v243 = "st";
LABEL_429:
    if (!*v243)
    {
      return 1;
    }
  }

  if (*a2)
  {
    v246 = a2 + 1;
    v247 = 2;
    v248 = *a2;
    v249 = "ta";
    while (v247)
    {
      if (v248 != *v249)
      {
        goto LABEL_438;
      }

      v250 = *v246++;
      v248 = v250;
      --v247;
      ++v249;
      if (!v250)
      {
        goto LABEL_437;
      }
    }
  }

  else
  {
    v249 = "ta";
LABEL_437:
    if (*v249)
    {
LABEL_438:
      if (*a2)
      {
        v251 = a2 + 1;
        v252 = 2;
        v253 = *a2;
        v254 = "te";
        while (v252)
        {
          if (v253 != *v254)
          {
            goto LABEL_446;
          }

          v255 = *v251++;
          v253 = v255;
          --v252;
          ++v254;
          if (!v255)
          {
            goto LABEL_445;
          }
        }
      }

      else
      {
        v254 = "te";
LABEL_445:
        if (*v254)
        {
LABEL_446:
          if (*a2)
          {
            v256 = a2 + 1;
            v257 = 3;
            v258 = *a2;
            v259 = "tlc";
            while (v257)
            {
              if (v258 != *v259)
              {
                goto LABEL_454;
              }

              v260 = *v256++;
              v258 = v260;
              --v257;
              ++v259;
              if (!v260)
              {
                goto LABEL_453;
              }
            }
          }

          else
          {
            v259 = "tlc";
LABEL_453:
            if (*v259)
            {
LABEL_454:
              if (*a2)
              {
                v261 = a2 + 1;
                v262 = 3;
                v263 = *a2;
                v264 = "tle";
                while (v262)
                {
                  if (v263 != *v264)
                  {
                    goto LABEL_462;
                  }

                  v265 = *v261++;
                  v263 = v265;
                  --v262;
                  ++v264;
                  if (!v265)
                  {
                    goto LABEL_461;
                  }
                }
              }

              else
              {
                v264 = "tle";
LABEL_461:
                if (*v264)
                {
LABEL_462:
                  if (*a2)
                  {
                    v266 = a2 + 1;
                    v267 = 3;
                    v268 = *a2;
                    v269 = "tlp";
                    while (v267)
                    {
                      if (v268 != *v269)
                      {
                        goto LABEL_470;
                      }

                      v270 = *v266++;
                      v268 = v270;
                      --v267;
                      ++v269;
                      if (!v270)
                      {
                        goto LABEL_469;
                      }
                    }
                  }

                  else
                  {
                    v269 = "tlp";
LABEL_469:
                    if (*v269)
                    {
LABEL_470:
                      if (*a2)
                      {
                        v271 = a2 + 1;
                        v272 = 3;
                        v273 = *a2;
                        v274 = "tls";
                        while (v272)
                        {
                          if (v273 != *v274)
                          {
                            goto LABEL_478;
                          }

                          v275 = *v271++;
                          v273 = v275;
                          --v272;
                          ++v274;
                          if (!v275)
                          {
                            goto LABEL_477;
                          }
                        }
                      }

                      else
                      {
                        v274 = "tls";
LABEL_477:
                        if (*v274)
                        {
LABEL_478:
                          if (*a2)
                          {
                            v276 = a2 + 1;
                            v277 = 2;
                            v278 = *a2;
                            v279 = "tn";
                            while (v277)
                            {
                              if (v278 != *v279)
                              {
                                goto LABEL_486;
                              }

                              v280 = *v276++;
                              v278 = v280;
                              --v277;
                              ++v279;
                              if (!v280)
                              {
                                goto LABEL_485;
                              }
                            }
                          }

                          else
                          {
                            v279 = "tn";
LABEL_485:
                            if (*v279)
                            {
LABEL_486:
                              if (*a2)
                              {
                                v281 = a2 + 1;
                                v282 = 3;
                                v283 = *a2;
                                v284 = "top";
                                while (v282)
                                {
                                  if (v283 != *v284)
                                  {
                                    goto LABEL_494;
                                  }

                                  v285 = *v281++;
                                  v283 = v285;
                                  --v282;
                                  ++v284;
                                  if (!v285)
                                  {
                                    goto LABEL_493;
                                  }
                                }
                              }

                              else
                              {
                                v284 = "top";
LABEL_493:
                                if (*v284)
                                {
LABEL_494:
                                  if (*a2)
                                  {
                                    v286 = a2 + 1;
                                    v287 = 2;
                                    v288 = *a2;
                                    v289 = "ts";
                                    while (v287)
                                    {
                                      if (v288 != *v289)
                                      {
                                        goto LABEL_502;
                                      }

                                      v290 = *v286++;
                                      v288 = v290;
                                      --v287;
                                      ++v289;
                                      if (!v290)
                                      {
                                        goto LABEL_501;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v289 = "ts";
LABEL_501:
                                    if (*v289)
                                    {
LABEL_502:
                                      if (*a2)
                                      {
                                        v291 = a2 + 1;
                                        v292 = 2;
                                        v293 = *a2;
                                        v294 = "tt";
                                        while (v292)
                                        {
                                          if (v293 != *v294)
                                          {
                                            goto LABEL_510;
                                          }

                                          v295 = *v291++;
                                          v293 = v295;
                                          --v292;
                                          ++v294;
                                          if (!v295)
                                          {
                                            goto LABEL_509;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v294 = "tt";
LABEL_509:
                                        if (*v294)
                                        {
LABEL_510:
                                          if (*a2)
                                          {
                                            v296 = a2 + 1;
                                            v297 = 2;
                                            v298 = *a2;
                                            v299 = "tx";
                                            while (v297)
                                            {
                                              if (v298 != *v299)
                                              {
                                                goto LABEL_518;
                                              }

                                              v300 = *v296++;
                                              v298 = v300;
                                              --v297;
                                              ++v299;
                                              if (!v300)
                                              {
                                                goto LABEL_517;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            v299 = "tx";
LABEL_517:
                                            if (*v299)
                                            {
LABEL_518:
                                              if (*a2)
                                              {
                                                v301 = a2 + 1;
                                                v302 = 3;
                                                v303 = *a2;
                                                v304 = "uce";
                                                while (v302)
                                                {
                                                  if (v303 != *v304)
                                                  {
                                                    goto LABEL_526;
                                                  }

                                                  v305 = *v301++;
                                                  v303 = v305;
                                                  --v302;
                                                  ++v304;
                                                  if (!v305)
                                                  {
                                                    goto LABEL_525;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v304 = "uce";
LABEL_525:
                                                if (*v304)
                                                {
LABEL_526:
                                                  if (*a2)
                                                  {
                                                    v306 = a2 + 1;
                                                    v307 = 3;
                                                    v308 = *a2;
                                                    v309 = "ucs";
                                                    while (v307)
                                                    {
                                                      if (v308 != *v309)
                                                      {
                                                        goto LABEL_534;
                                                      }

                                                      v310 = *v306++;
                                                      v308 = v310;
                                                      --v307;
                                                      ++v309;
                                                      if (!v310)
                                                      {
                                                        goto LABEL_533;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v309 = "ucs";
LABEL_533:
                                                    if (*v309)
                                                    {
LABEL_534:
                                                      if (*a2)
                                                      {
                                                        v311 = a2 + 1;
                                                        v312 = 2;
                                                        v313 = *a2;
                                                        v314 = "vc";
                                                        while (v312)
                                                        {
                                                          if (v313 != *v314)
                                                          {
                                                            goto LABEL_542;
                                                          }

                                                          v315 = *v311++;
                                                          v313 = v315;
                                                          --v312;
                                                          ++v314;
                                                          if (!v315)
                                                          {
                                                            goto LABEL_541;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v314 = "vc";
LABEL_541:
                                                        if (*v314)
                                                        {
LABEL_542:
                                                          if (*a2)
                                                          {
                                                            v316 = a2 + 1;
                                                            v317 = 2;
                                                            v318 = *a2;
                                                            v319 = "vs";
                                                            while (v317)
                                                            {
                                                              if (v318 != *v319)
                                                              {
                                                                goto LABEL_550;
                                                              }

                                                              v320 = *v316++;
                                                              v318 = v320;
                                                              --v317;
                                                              ++v319;
                                                              if (!v320)
                                                              {
                                                                goto LABEL_549;
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v319 = "vs";
LABEL_549:
                                                            if (*v319)
                                                            {
LABEL_550:
                                                              if (*a2)
                                                              {
                                                                v321 = a2 + 1;
                                                                v322 = 2;
                                                                v323 = *a2;
                                                                v324 = "wl";
                                                                while (v322)
                                                                {
                                                                  if (v323 != *v324)
                                                                  {
                                                                    goto LABEL_558;
                                                                  }

                                                                  v325 = *v321++;
                                                                  v323 = v325;
                                                                  --v322;
                                                                  ++v324;
                                                                  if (!v325)
                                                                  {
                                                                    goto LABEL_557;
                                                                  }
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v324 = "wl";
LABEL_557:
                                                                if (*v324)
                                                                {
LABEL_558:
                                                                  if (*a2)
                                                                  {
                                                                    v326 = a2 + 1;
                                                                    v327 = 3;
                                                                    v328 = *a2;
                                                                    v329 = "xcs";
                                                                    while (v327)
                                                                    {
                                                                      if (v328 != *v329)
                                                                      {
                                                                        goto LABEL_566;
                                                                      }

                                                                      v330 = *v326++;
                                                                      v328 = v330;
                                                                      --v327;
                                                                      ++v329;
                                                                      if (!v330)
                                                                      {
                                                                        goto LABEL_565;
                                                                      }
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v329 = "xcs";
LABEL_565:
                                                                    if (*v329)
                                                                    {
LABEL_566:
                                                                      if (*a2)
                                                                      {
                                                                        v331 = a2 + 1;
                                                                        v332 = "\uFFFD";
                                                                        v333 = 3;
                                                                        while (v333)
                                                                        {
                                                                          if (v2 != *v332)
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          v334 = *v331++;
                                                                          v2 = v334;
                                                                          --v333;
                                                                          ++v332;
                                                                          if (!v334)
                                                                          {
                                                                            goto LABEL_573;
                                                                          }
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v332 = "\uFFFD";
LABEL_573:
                                                                        if (*v332)
                                                                        {
                                                                          return 0;
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
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t dxscb_engine_process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x4004uLL, 0x100004052888210uLL);
  if (!v6)
  {
    return 270;
  }

  v7 = v6;
  v8 = 0;
  do
  {
    v9 = (*(a1 + 128))(a3);
    v7[v8] = v9;
    if (v9 == -1)
    {
      break;
    }
  }

  while (v8++ != 4095);
  *(a1 + 24) = 0;
  v11 = *(a1 + 32);
  *(a1 + 36) = v11;
  dxscb_engine_deferred_table_load(a1, v11);
  v12 = *(*(a1 + 16) + 2048);
  if (v12)
  {
    if (*(v12 + 12) >= 1)
    {
      v13 = 0;
      v14 = *(a1 + 136);
      do
      {
        v14(*(*(v12 + 40) + v13++), a2);
      }

      while (v13 < *(v12 + 12));
    }

    if (*(v12 + 25) == 40)
    {
      v15 = *(a1 + 40);
      if (v15 <= 19)
      {
        v16 = *(a1 + 36);
        *(a1 + 40) = v15 + 1;
        *(a1 + 4 * v15 + 44) = v16;
      }
    }

    v17 = *(v12 + 20);
    if (v17)
    {
      if (v17 != *(a1 + 36))
      {
        *(a1 + 36) = v17;
        if (v17 <= 0xA)
        {
          dxscb_engine_deferred_table_load(a1, v17);
        }
      }
    }
  }

  v18 = *v7;
  if ((*v7 & 0x80000000) == 0)
  {
    v19 = 0;
    v20 = a1 + 44;
    v21 = v7;
    do
    {
      v22 = *(*(a1 + 16) + 8 * v18);
      if (v22)
      {
        while (1)
        {
          if (*(v22 + 24) != 1)
          {
            v23 = *(v22 + 4);
            if (!v23 || v23 == *(a1 + 36))
            {
              break;
            }
          }

LABEL_29:
          v22 = *v22;
          if (!v22)
          {
            if (*(a1 + 36) >= 1)
            {
              (*(a1 + 136))(v18, a2);
            }

            v7[v19] = (*(a1 + 128))(a3);
            goto LABEL_45;
          }
        }

        v24 = *(v22 + 2);
        v25 = v22[4];
        if (v24 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = *(v22 + 2);
        }

        v27 = v26 - 1;
        v28 = v19 + 1;
        while (v27)
        {
          v29 = v7[v28 & 0xFFF];
          v30 = *v25++;
          --v27;
          ++v28;
          if (v29 != v30)
          {
            goto LABEL_29;
          }
        }

        if (*(v22 + 3) >= 1)
        {
          v31 = 0;
          v32 = *(a1 + 136);
          do
          {
            v32(*(v22[5] + v31++), a2);
          }

          while (v31 < *(v22 + 3));
        }

        if (v24 >= 1)
        {
          do
          {
            v7[v19] = (*(a1 + 128))(a3);
            v19 = (v19 + 1) & 0xFFF;
            --v24;
          }

          while (v24);
        }

        v33 = *(v22 + 25);
        if (v33 == 41)
        {
          v36 = *(a1 + 40);
          v37 = __OFSUB__(v36, 1);
          v38 = v36 - 1;
          if (v38 < 0 == v37)
          {
            *(a1 + 36) = *(v20 + 4 * v38);
            *(a1 + 40) = v38;
          }
        }

        else if (v33 == 40)
        {
          v34 = *(a1 + 40);
          if (v34 <= 19)
          {
            v35 = *(a1 + 36);
            *(a1 + 40) = v34 + 1;
            *(v20 + 4 * v34) = v35;
          }
        }

        v39 = *(v22 + 5);
        if (v39)
        {
          if (v39 != *(a1 + 36))
          {
            *(a1 + 36) = v39;
            if (v39 <= 0xA)
            {
              dxscb_engine_deferred_table_load(a1, v39);
            }
          }
        }

        ++*(a1 + 24);
      }

      else
      {
        if (*(a1 + 36) >= 1)
        {
          (*(a1 + 136))(v18, a2);
        }

        *v21 = (*(a1 + 128))(a3);
LABEL_45:
        v19 = (v19 + 1) & 0xFFF;
      }

      v21 = &v7[v19];
      v18 = *v21;
    }

    while ((*v21 & 0x80000000) == 0);
  }

  v40 = *(*(a1 + 16) + 2056);
  if (v40)
  {
    while (1)
    {
      if (*(v40 + 24) == 1)
      {
        v41 = *(v40 + 4);
        if (!v41 || v41 == *(a1 + 36))
        {
          break;
        }
      }

      v40 = *v40;
      if (!v40)
      {
        goto LABEL_64;
      }
    }

    if (*(v40 + 3) >= 1)
    {
      v43 = 0;
      v44 = *(a1 + 136);
      do
      {
        v44(*(v40[5] + v43++), a2);
      }

      while (v43 < *(v40 + 3));
    }
  }

LABEL_64:
  free(v7);
  return 0;
}

void prdtf(uint64_t a1)
{
  jreaf(a1);
  free(*(a1 + 30816));
  free(*(a1 + 30824));
  free(*(a1 + 30808));
  free(*(a1 + 30784));
  free(*(a1 + 30776));
  free(*(a1 + 30760));
  free(*(a1 + 30752));
  free(*(a1 + 30736));
  free(*(a1 + 30728));
  free(*(a1 + 30712));
  free(*(a1 + 30704));
  free(*(a1 + 30696));
  free(*(a1 + 30688));
  v2 = *(a1 + 30680);

  free(v2);
}

id DBTLog()
{
  if (DBTLog_onceToken != -1)
  {
    DBTLog_cold_1();
  }

  v1 = DBTLog_log;

  return v1;
}

id DBTLogFormatParser()
{
  if (DBTLogFormatParser_onceToken != -1)
  {
    DBTLogFormatParser_cold_1();
  }

  v1 = DBTLogFormatParser_log;

  return v1;
}

uint64_t prdtqr(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 29540;
  v6 = a1 + 29592;
  do
  {
    *(v6 + v4++) = dxios_stream_getc(a2);
  }

  while (v4 != 40);
  *(v5 + 92) = 0;
  v7 = 68;
  do
  {
    dxios_stream_getc(a2);
    --v7;
  }

  while (v7);
  if (dxios_stream_mdri(a2) != 6727)
  {
    return 2;
  }

  v8 = dxios_stream_mdri(a2);
  *(v5 + 96) = v8;
  if (v8 - 21 < 0xFFFFFFF5)
  {
    return 3;
  }

  if (v8 < 0x12)
  {
    v10 = 1;
  }

  else
  {
    v10 = dxios_stream_mdri(a2);
  }

  *(v5 + 3344) = v10;
  *(a1 + 30712) = 0;
  *(a1 + 30680) = 0u;
  *(a1 + 30696) = 0u;
  *(a1 + 30728) = 0u;
  *(a1 + 30752) = 0u;
  *(a1 + 30776) = 0u;
  *(a1 + 30808) = 0;
  *(a1 + 30824) = 0;
  *(a1 + 30816) = 0;
  jreaqi(a1);
  *(v5 + 1132) = dxios_stream_mdri(a2);
  *(v5 + 1180) = dxios_stream_mdri(a2);
  *(v5 + 1204) = dxios_stream_mdri(a2);
  *(v5 + 1228) = dxios_stream_mdri(a2);
  v11 = malloc_type_malloc(*(v5 + 1132), 0xBA7CA294uLL);
  *(a1 + 30680) = v11;
  if (!v11)
  {
    goto LABEL_86;
  }

  v12 = malloc_type_malloc(8 * *(v5 + 1132), 0x100004000313F17uLL);
  *(a1 + 30688) = v12;
  if (!v12)
  {
    goto LABEL_86;
  }

  v13 = 4 * *(v5 + 1132);
  v14 = malloc_type_malloc(v13, 0x100004052888210uLL);
  *(a1 + 30696) = v14;
  if (!v14)
  {
    goto LABEL_86;
  }

  v15 = malloc_type_malloc(*(v5 + 1132), 0x63B47F42uLL);
  *(a1 + 30704) = v15;
  if (!v15)
  {
    goto LABEL_86;
  }

  v16 = malloc_type_malloc(v13, 0x100004052888210uLL);
  *(a1 + 30712) = v16;
  if (!v16)
  {
    goto LABEL_86;
  }

  v17 = 4 * *(v5 + 1180);
  v18 = malloc_type_malloc(v17, 0x100004052888210uLL);
  *(a1 + 30728) = v18;
  if (!v18)
  {
    goto LABEL_86;
  }

  v19 = malloc_type_malloc(v17, 0x100004052888210uLL);
  *(a1 + 30736) = v19;
  if (!v19)
  {
    goto LABEL_86;
  }

  v20 = 8 * *(v5 + 3344) * *(v5 + 1204);
  v21 = malloc_type_malloc(v20, 0x100004000313F17uLL);
  *(a1 + 30752) = v21;
  if (!v21)
  {
    goto LABEL_86;
  }

  v22 = malloc_type_malloc(v20, 0x100004000313F17uLL);
  *(a1 + 30760) = v22;
  if (!v22)
  {
    goto LABEL_86;
  }

  v23 = 8 * *(v5 + 3344) * *(v5 + 1228);
  v24 = malloc_type_malloc(v23, 0x100004000313F17uLL);
  *(a1 + 30776) = v24;
  if (!v24)
  {
    goto LABEL_86;
  }

  v25 = malloc_type_malloc(v23, 0x100004000313F17uLL);
  *(a1 + 30784) = v25;
  if (!v25)
  {
    goto LABEL_86;
  }

  if (*(v5 + 1132) >= 1)
  {
    v26 = 0;
    do
    {
      *(*(a1 + 30680) + v26) = dxios_stream_getc(a2);
      v27 = *(v5 + 96);
      if (v27 > 10)
      {
        if (v27 > 0xC)
        {
          v28 = dxios_stream_mdrv(a2);
        }

        else
        {
          v28 = dxios_stream_mdrl(a2);
        }
      }

      else
      {
        v28 = dxios_stream_mdri(a2);
      }

      *(*(a1 + 30688) + 8 * v26) = v28;
      *(*(a1 + 30696) + 4 * v26) = dxios_stream_mdri(a2);
      *(*(a1 + 30704) + v26) = dxios_stream_getc(a2);
      *(*(a1 + 30712) + 4 * v26++) = dxios_stream_mdri(a2);
    }

    while (v26 < *(v5 + 1132));
  }

  v29 = dxios_stream_mdri(a2);
  if (v29 > 256)
  {
    prdtf(a1);
    return 4;
  }

  v30 = v29;
  if (v29 < 1)
  {
    goto LABEL_37;
  }

  v31 = (v5 + 104);
  v32 = v29;
  do
  {
    *v31++ = dxios_stream_mdri(a2);
    --v32;
  }

  while (v32);
  if (v30 != 256)
  {
LABEL_37:
    if (v30 <= 255)
    {
      v33 = 255;
    }

    else
    {
      v33 = v30;
    }

    bzero((a1 + 4 * v30 + 29644), 4 * (v33 - v30) + 4);
  }

  if (*(v5 + 96) > 11)
  {
    *(v5 + 1264) = dxios_stream_mdri(a2);
    *(v5 + 1296) = dxios_stream_mdri(a2);
    *(v5 + 1292) = dxios_stream_mdri(a2);
    v46 = malloc_type_malloc(*(v5 + 1264), 0x77A2A95uLL);
    *(a1 + 30808) = v46;
    if (!v46)
    {
      goto LABEL_86;
    }

    v47 = malloc_type_malloc(8 * *(v5 + 1292) + 8, 0x10040436913F5uLL);
    *(a1 + 30824) = v47;
    if (!v47)
    {
      goto LABEL_86;
    }

    v48 = malloc_type_malloc(8 * *(v5 + 1296), 0x10040436913F5uLL);
    *(a1 + 30816) = v48;
    if (!v48)
    {
      goto LABEL_86;
    }

    if ((*(v5 + 1292) & 0x80000000) == 0)
    {
      v49 = 0;
      do
      {
        *(*(a1 + 30824) + 4 * v49) = dxios_stream_mdri(a2);
      }

      while (v49++ < *(v5 + 1292));
    }

    if (*(v5 + 1296) >= 1)
    {
      v51 = 0;
      do
      {
        *(*(a1 + 30816) + 4 * v51++) = dxios_stream_mdri(a2);
      }

      while (v51 < *(v5 + 1296));
    }

    if (*(v5 + 1264) >= 1)
    {
      v52 = 0;
      do
      {
        *(*(a1 + 30808) + v52++) = dxios_stream_getc(a2);
      }

      while (v52 < *(v5 + 1264));
    }
  }

  else
  {
    *(a1 + 30836) = 0;
    *(a1 + 30804) = 0u;
    *(a1 + 30820) = 0u;
  }

  if (jreaq(a1, a2))
  {
LABEL_86:
    prdtf(a1);
    return 5;
  }

  if (*(v5 + 1180) >= 1)
  {
    v34 = 0;
    do
    {
      *(*(a1 + 30728) + 4 * v34) = dxios_stream_mdri(a2);
      *(*(a1 + 30736) + 4 * v34++) = dxios_stream_mdri(a2);
    }

    while (v34 < *(v5 + 1180));
  }

  if (*(v5 + 1204) >= 1)
  {
    v35 = 0;
    while (1)
    {
      v36 = *(v5 + 96);
      if (v36 <= 10)
      {
        break;
      }

      if (v36 <= 0xC)
      {
        v37 = dxios_stream_mdrl(a2);
        goto LABEL_55;
      }

      if (v36 < 0x12)
      {
        v37 = dxios_stream_mdrv(a2);
        goto LABEL_55;
      }

      v38 = *(v5 + 3344);
      if (v38 >= 1)
      {
        v41 = 0;
        do
        {
          v42 = dxios_stream_mdrv(a2);
          v38 = *(v5 + 3344);
          *(*(a1 + 30752) + 8 * (v41 + v35 * v38)) = v42;
          ++v41;
        }

        while (v41 < v38);
      }

LABEL_56:
      v39 = *(v5 + 96);
      if (v39 > 10)
      {
        if (v39 > 0xC)
        {
          if (v39 >= 0x12)
          {
            if (v38 >= 1)
            {
              v43 = 0;
              do
              {
                v44 = dxios_stream_mdrv(a2);
                v45 = *(v5 + 3344);
                *(*(a1 + 30760) + 8 * (v43 + v35 * v45)) = v44;
                ++v43;
              }

              while (v43 < v45);
            }

            goto LABEL_63;
          }

          v40 = dxios_stream_mdrv(a2);
        }

        else
        {
          v40 = dxios_stream_mdrl(a2);
        }
      }

      else
      {
        v40 = dxios_stream_mdri(a2);
      }

      *(*(a1 + 30760) + 8 * *(v5 + 3344) * v35) = v40;
LABEL_63:
      if (++v35 >= *(v5 + 1204))
      {
        goto LABEL_87;
      }
    }

    v37 = dxios_stream_mdri(a2);
LABEL_55:
    v38 = *(v5 + 3344);
    *(*(a1 + 30752) + 8 * v38 * v35) = v37;
    goto LABEL_56;
  }

LABEL_87:
  if (*(v5 + 1228) >= 1)
  {
    v53 = 0;
    while (1)
    {
      v54 = *(v5 + 96);
      if (v54 <= 10)
      {
        break;
      }

      if (v54 <= 0xC)
      {
        v55 = dxios_stream_mdrl(a2);
        goto LABEL_95;
      }

      if (v54 < 0x12)
      {
        v55 = dxios_stream_mdrv(a2);
        goto LABEL_95;
      }

      v56 = *(v5 + 3344);
      if (v56 >= 1)
      {
        v59 = 0;
        do
        {
          v60 = dxios_stream_mdrv(a2);
          v56 = *(v5 + 3344);
          *(*(a1 + 30776) + 8 * (v59 + v53 * v56)) = v60;
          ++v59;
        }

        while (v59 < v56);
      }

LABEL_96:
      v57 = *(v5 + 96);
      if (v57 > 10)
      {
        if (v57 > 0xC)
        {
          if (v57 >= 0x12)
          {
            if (v56 >= 1)
            {
              v61 = 0;
              do
              {
                v62 = dxios_stream_mdrv(a2);
                v63 = *(v5 + 3344);
                *(*(a1 + 30784) + 8 * (v61 + v53 * v63)) = v62;
                ++v61;
              }

              while (v61 < v63);
            }

            goto LABEL_103;
          }

          v58 = dxios_stream_mdrv(a2);
        }

        else
        {
          v58 = dxios_stream_mdrl(a2);
        }
      }

      else
      {
        v58 = dxios_stream_mdri(a2);
      }

      *(*(a1 + 30784) + 8 * *(v5 + 3344) * v53) = v58;
LABEL_103:
      if (++v53 >= *(v5 + 1228))
      {
        goto LABEL_113;
      }
    }

    v55 = dxios_stream_mdri(a2);
LABEL_95:
    v56 = *(v5 + 3344);
    *(*(a1 + 30776) + 8 * v56 * v53) = v55;
    goto LABEL_96;
  }

LABEL_113:
  *(v5 + 1260) = dxios_stream_getc(a2);
  *(v5 + 1252) = dxios_stream_mdri(a2);
  *(v5 + 100) = dxios_stream_mdri(a2);
  *v5 = dxios_stream_mdri(a2);
  dxios_stream_mdri(a2);
  dxios_stream_mdri(a2);
  dxios_stream_mdri(a2);
  v64 = dxios_stream_mdri(a2);
  result = 0;
  if (v64 <= 1)
  {
    v64 = 1;
  }

  *(v5 + 1256) = v64;
  return result;
}

double dxtbl_lintbl_create(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t dxtbl_lintbl_destroy(uint64_t a1)
{
  if (*a1)
  {
    return dxtbl_lintbl_deactivate(a1);
  }

  return a1;
}

uint64_t dxtbl_lintbl_deactivate(uint64_t a1)
{
  if (!*a1)
  {
    return 4294967096;
  }

  *a1 = 0;
  if (!dxtbl_lintbl_read(a1, dxtbl_lintbl_deactivate_sentinel, 0x12CuLL) && dxtbl_lintbl_deactivate_sentinel[0] == 2763306)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = 4294967196;
  dxerr_report_activate(v2, "rtbl", -100);
  return v3;
}

uint64_t dxtbl_lintbl_readint(uint64_t a1, int a2, int a3, int *a4)
{
  if (dxtbl_lintbl_read(a1, v12, 0x64uLL))
  {
    return 0;
  }

  v8 = atoi(v12);
  *a4 = v8;
  if (v8 >= a2 && v8 <= a3)
  {
    return 0;
  }

  v11 = *(a1 + 8);
  v9 = 4294967136;
  dxerr_report_activate(v11, "rtbl", -160);
  return v9;
}

uint64_t dxtbl_lintbl_read(uint64_t a1, const char *a2, unint64_t a3)
{
LABEL_1:
  *a2 = 0;
  ++*(a1 + 24);
  if (a3)
  {
    v6 = a3;
    v7 = a2;
    while (1)
    {
      do
      {
        v8 = read_char(a1);
      }

      while (v8 == 13);
      if (v8 == 10)
      {
        *v7 = 0;
        v9 = v7 - a2 + 1;
        goto LABEL_13;
      }

      if (v8 == 257)
      {
        *v7 = 0;
        v9 = v7 - a2 + 1;
        if (v9 == 1)
        {
          goto LABEL_1;
        }

        goto LABEL_13;
      }

      if (v8 == 256)
      {
        break;
      }

      *v7++ = v8;
      if (!--v6)
      {
        goto LABEL_22;
      }
    }

    v9 = v7 - a2;
    if (v9)
    {
      goto LABEL_13;
    }

    return 0;
  }

  else
  {
    v7 = a2;
LABEL_22:
    *(v7 - 1) = 0;
    v9 = v7 - a2;
    do
    {
      ++v9;
      v14 = read_char(a1);
    }

    while ((v14 - 256) >= 2 && v14 != 10);
LABEL_13:
    if (v9 <= a3)
    {
      v11 = &a2[strlen(a2)];
      do
      {
        v12 = v11;
        if (v11 <= a2)
        {
          break;
        }

        --v11;
      }

      while (*(v12 - 1) == 32);
      v10 = 0;
      *v12 = 0;
    }

    else
    {
      v10 = 4294967221;
      dxerr_report_activate(*(a1 + 8), "rtbl", -75);
    }
  }

  return v10;
}

uint64_t dxtbl_lintbl_readchic(uint64_t a1, _DWORD *a2)
{
  if (!dxtbl_lintbl_read(a1, v4, 0x64uLL))
  {
    *a2 = v4[0];
  }

  return 0;
}

uint64_t dxtbl_lintbl_readBOOLean(uint64_t a1, BOOL *a2)
{
  if (!dxtbl_lintbl_read(a1, v4, 0x64uLL))
  {
    *a2 = v4[0] != 48;
  }

  return 0;
}

uint64_t dxtbl_lintbl_activate(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*a1)
  {
    v4 = 4294967095;
  }

  else
  {
    *a1 = 1;
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
    if (!dxtbl_lintbl_read(a1, dxtbl_lintbl_activate_sentinel, 0x12CuLL) && !strcmp(a3, dxtbl_lintbl_activate_sentinel))
    {
      return 0;
    }

    *a1 = 0;
    v4 = 4294967215;
  }

  dxerr_report_activate(*(a1 + 8), "rtbl", v4);
  return v4;
}

uint64_t read_char(uint64_t a1)
{
  LODWORD(result) = dxios_stream_getc(*(a1 + 16));
  if (result == 124)
  {
    v3 = dxios_stream_getc(*(a1 + 16));
    if (v3 == 10)
    {
      return 257;
    }

    v4 = v3;
    if (v3 != 124)
    {
      if (v3 == 32)
      {
        v5 = *(a1 + 16);
        do
        {
          v6 = dxios_stream_getc(v5);
        }

        while (v6 != -1 && v6 != 10);
        return 257;
      }

      v11[0] = v3;
      if (v3 == 0xFF || (v7 = dxios_stream_getc(*(a1 + 16)), v11[1] = v7, v7 == -1) || (v8 = v7, v9 = dxios_stream_getc(*(a1 + 16)), v11[2] = v9, v9 << 24 == -16777216) || (v4 - 48) > 9)
      {
        v10 = -60;
      }

      else
      {
        v10 = -60;
        if ((v8 - 48) <= 9 && (v9 - 48) <= 9)
        {
          v11[3] = 0;
          result = atoi(v11);
          if (result <= 255)
          {
            return result;
          }

          v10 = -70;
        }
      }

      dxerr_report_activate(*(a1 + 8), "rtbl", v10);
    }

    return 124;
  }

  else if (result == -1)
  {
    return 256;
  }

  else
  {
    return result;
  }
}

double siniq(uint64_t a1)
{
  *(a1 + 30840) = *(a1 + 29640) != 3;
  *(a1 + 30844) = 0;
  result = 0.0;
  *(a1 + 32148) = 0;
  *(a1 + 32048) = 0;
  *(a1 + 32092) = 0;
  return result;
}

double stacq(uint64_t a1, int a2)
{
  if (a2 == 256)
  {
    scltb(a1, -1);

    lfiniq(a1);
    return result;
  }

  v5 = *(a1 + 30844);
  if (v5 == 1)
  {
    linecq(a1, a2);
    *(a1 + 30844) = 0;
    return result;
  }

  v6 = (a1 + 29640);
  if (v5 == 3)
  {
    *(a1 + 30844) = 0;
    if (a2 <= 98)
    {
      if (a2 == 97)
      {
        *(a1 + 30840) = 3;
        *(a1 + *(a1 + 32048) + 32056) = 0;
        v15 = *(a1 + 32048);
        if (v15 <= 29)
        {
          *(a1 + 32048) = v15 + 1;
        }

        return result;
      }

      if (a2 != 98)
      {
        return result;
      }
    }

    else
    {
      if (a2 != 99)
      {
        if (a2 == 100)
        {
          v11 = 2;
        }

        else
        {
          if (a2 != 101)
          {
            return result;
          }

          v11 = 1;
        }

        *(a1 + 32052) = v11;
        return result;
      }

      sgose(a1);
    }

    *(a1 + 30840) = 1;
    return result;
  }

  if (v5 == 2)
  {
    *(a1 + 30844) = 0;
    v7 = chupc(a2 | (*(a1 + 32088) << 8));
    v8 = v7;
    v9 = *(a1 + 32152);
    *(a1 + 32152) = 0;
    if (v7 >= 0x100)
    {
      stacq(a1, v7 >> 8);
    }

    stacq(a1, v8);
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    *(a1 + 32152) = v10;
    return result;
  }

  if (*v6 != 2)
  {
    goto LABEL_49;
  }

  if (a2 > 31)
  {
    v14 = &dusci[12 * a2];
    if ((*v14 & 2) != 0)
    {
      v16 = *(a1 + 32152);
      if (v16 >= 1)
      {
        if (v16 == 1)
        {
          *(a1 + 32152) = 0;
        }

        v12 = *(v14 + 2);
        if (v12 != 156)
        {
          goto LABEL_50;
        }

        stacq(a1, 4294967294);
      }
    }

    else if ((*v14 & 0x20) != 0 && *(a1 + 32152) >= 1)
    {
      *(a1 + 30844) = 2;
      *(a1 + 32088) = a2;
      return result;
    }

LABEL_49:
    v12 = a2;
    goto LABEL_50;
  }

  if (a2 > 14)
  {
    if (a2 == 15)
    {
      *(a1 + 32152) = 0;
      return result;
    }

    if (a2 == 28)
    {
      *(a1 + 32092) = 1;
      v12 = 28;
    }

    else
    {
      v12 = a2;
      if (a2 == 31)
      {
        *(a1 + 32092) = 0;
      }
    }
  }

  else if (a2 == -2)
  {
    v12 = 156;
  }

  else
  {
    if (a2 == 2)
    {
      v13 = 1;
      goto LABEL_100;
    }

    v12 = a2;
    if (a2 == 14)
    {
      v13 = 2;
LABEL_100:
      *(a1 + 32152) = v13;
      return result;
    }
  }

LABEL_50:
  v17 = *(a1 + 30840);
  if (!v17)
  {

    linecq(a1, v12);
    return result;
  }

  switch(v12)
  {
    case 16:
      v19 = 3;
LABEL_74:
      *(a1 + 30844) = v19;
      return result;
    case 28:
      v18 = 1;
      break;
    case 31:
      v18 = 0;
      break;
    default:
      goto LABEL_60;
  }

  *(a1 + 32092) = v18;
LABEL_60:
  switch(v17)
  {
    case 3:
      if (v12 < 28)
      {
        if ((v12 - 17) < 3)
        {
          return result;
        }

        if (v12 != 23)
        {
          goto LABEL_77;
        }

LABEL_109:
        linecq(a1, 23);
        v19 = 1;
        goto LABEL_74;
      }

      v21 = *(a1 + 32048) - 1;
      *(a1 + 40 * v21 + *(a1 + 32056 + v21) + 30848) = v12;
      v22 = *(a1 + 32056 + v21);
      if (v22 <= 39)
      {
        *(a1 + 32056 + v21) = v22 + 1;
      }

      break;
    case 2:
      if (v12 == 23)
      {
        linecq(a1, 23);
        *(a1 + 30844) = 1;
LABEL_77:
        v20 = *(a1 + 34428);
        if (v20 <= 14)
        {
          *(a1 + 4 * v20 + 34432) = v12;
          v20 = *(a1 + 34428);
        }

        if (v20 != 0x7FFFFFFF)
        {
          *(a1 + 34428) = v20 + 1;
        }

        return result;
      }

      if (v12 >= 28 && v12 != 32)
      {
        v23 = *(a1 + 32148);
        if (v23 <= 39)
        {
          *(a1 + v23 + 32108) = v12;
          if (*v6 == 2)
          {
            v24 = *(a1 + 32148);
            if (*(a1 + 32104) == -1)
            {
LABEL_118:
              *(a1 + 32104) = v24;
            }
          }

          else
          {
            if (v12 != 35)
            {
              v24 = *(a1 + 32148);
              goto LABEL_125;
            }

            v24 = *(a1 + 32148);
            if (*(a1 + 32096) == 1)
            {
              goto LABEL_118;
            }
          }

LABEL_125:
          *(a1 + 32148) = v24 + 1;
          return result;
        }

        v27 = a1;
        v28 = v12;
        goto LABEL_121;
      }

      if (v12 > 18)
      {
        if (v12 == 19)
        {
          return result;
        }

        if (v12 != 32)
        {
          goto LABEL_77;
        }

        if (*(a1 + 32096) < 2)
        {
          v25 = *(a1 + 32148);
          if (v25 <= 39)
          {
            *(a1 + v25 + 32108) = 32;
            v26 = *(a1 + 32148);
            *(a1 + 32100) = v26;
            *(a1 + 32148) = v26 + 1;
            ++*(a1 + 32096);
            return result;
          }
        }

        v27 = a1;
        v28 = 32;
LABEL_121:

        return scltb(v27, v28);
      }

      if (v12 == 17)
      {
        scltb(a1, -1);
        *(a1 + 30840) = 2;
        result = NAN;
        *(a1 + 32096) = 0xFFFFFFFF00000001;
        *(a1 + 32104) = -1;
        return result;
      }

      if (v12 != 18)
      {
        goto LABEL_77;
      }

      return scswp(a1);
    case 1:
      if (v12 >= 28)
      {
        if (v12 >= 0x20 && !*(a1 + 32092) && *(a1 + 32052) == 1)
        {
          sgose(a1);
          *(a1 + 32052) = 0;
        }

        linecq(a1, v12);
        if (v12 >= 0x20 && (*&dusci[12 * v12] & 0x20) == 0 && !*(a1 + 32092) && *(a1 + 32052) == 2)
        {
          sgose(a1);
          *(a1 + 32052) = 0;
        }

        return result;
      }

      if ((v12 - 18) < 2)
      {
        return result;
      }

      if (v12 != 23)
      {
        if (v12 == 17)
        {
          *(a1 + 30840) = 2;
          result = NAN;
          *(a1 + 32096) = 0xFFFFFFFF00000001;
          *(a1 + 32104) = -1;
          return result;
        }

        goto LABEL_77;
      }

      goto LABEL_109;
    default:
      return result;
  }

  return result;
}

double scltb(uint64_t a1, int a2)
{
  v4 = a1 + 28672;
  if (*(a1 + 32148) >= 1)
  {
    v5 = 0;
    do
    {
      linecq(a1, *(a1 + 32108 + v5++));
    }

    while (v5 < *(v4 + 3476));
  }

  *(v4 + 3476) = 0;
  if (a2 >= 1)
  {
    linecq(a1, a2);
  }

  if (*(v4 + 968) != 3)
  {
    *&result = 1;
    *(a1 + 30840) = 1;
  }

  return result;
}

uint64_t sgose(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32048);
  if (v2 >= 1)
  {
    v3 = result + 32056;
    v4 = result + 40 * v2 + 30808;
    do
    {
      v5 = v2--;
      if (*(v3 + v2) >= 1)
      {
        v6 = 0;
        do
        {
          result = linecq(v1, *(v4 + v6++));
        }

        while (v6 < *(v3 + v2));
      }

      v4 -= 40;
    }

    while (v5 >= 2);
  }

  *(v1 + 32048) = 0;
  return result;
}

double scswp(uint64_t a1)
{
  v2 = (a1 + 28672);
  if (*(a1 + 32096) != 2 || (v3 = *(a1 + 32100), v3 < 0) || (LODWORD(v4) = *(a1 + 32104), (v4 & 0x80000000) != 0))
  {

    return scltb(a1, -1);
  }

  else
  {
    if (v4)
    {
      v5 = 0;
      do
      {
        linecq(a1, *(a1 + 32108 + v5));
        v4 = v2[858];
        ++v5;
      }

      while (v5 < v4);
      v3 = v2[857];
    }

    if (v3 + 2 <= v2[869])
    {
      v7 = v3 + 1;
      v8 = v3 + 32109;
      do
      {
        linecq(a1, *(a1 + v8));
        ++v7;
        ++v8;
      }

      while (v7 < v2[869]);
      LODWORD(v4) = v2[858];
    }

    if (v2[242] == 2 && *(a1 + v4 + 32108) != 37)
    {
      linecq(a1, 32);
      LODWORD(v4) = v2[858];
    }

    if (v4 < v2[857])
    {
      v4 = v4;
      do
      {
        v9 = v4 + 1;
        linecq(a1, *(a1 + 32108 + v4));
        v4 = v9;
      }

      while (v9 < v2[857]);
    }

    v2[869] = 0;
    if (v2[242] != 3)
    {
      *&result = 1;
      *(a1 + 30840) = 1;
    }
  }

  return result;
}

uint64_t strcic(char *a1, char *a2)
{
  v4 = __tolower(*a1);
  v5 = v4;
  v6 = __tolower(*a2);
  if (v4 != v6)
  {
    return (v5 - v6);
  }

  v7 = v4 << 24;
  v8 = a2 + 1;
  v9 = a1 + 1;
  while (v7)
  {
    v10 = *v9++;
    v11 = __tolower(v10);
    v7 = v11 << 24;
    v5 = v11;
    v12 = *v8++;
    v6 = __tolower(v12);
    if (v5 != v6)
    {
      return (v5 - v6);
    }
  }

  return 0;
}

_BYTE *strcpx(_BYTE *result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    while (1)
    {
      v5 = *a2++;
      *v4 = v5;
      if (!v5)
      {
        break;
      }

      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result[a3 - 1] = 0;
  }

  return result;
}

void dxbte_engine_create(void *a1, uint64_t a2)
{
  v4 = a1 + 8591;
  v5 = a1 + 3684;
  bzero(a1, 0x8738uLL);
  dxnin_engine_create(a1, a2);
  *v5 = 0;
  a1[3685] = a2;
  v5[300] = 0;
  *v4 = 0;
  v4[16] = 0;
  v4[32] = 0;
}

uint64_t dxbte_engine_destroy(uint64_t a1)
{
  if (*(a1 + 29472))
  {
    return dxbte_engine_deactivate(a1);
  }

  return a1;
}

uint64_t dxbte_engine_deactivate(uint64_t a1)
{
  if (*(a1 + 29472))
  {
    if (*(a1 + 34560))
    {
      dxbte_engine_deactivate();
      free(*(a1 + 34560));
      *(a1 + 34560) = 0;
    }

    prdtf(a1);
    dxnin_engine_deactivate(a1);
    v2 = 0;
    *(a1 + 29472) = 0;
  }

  else
  {
    v2 = 100;
    dxerr_report_activate(*(a1 + 29480), &dxbte_pg_name, 100);
  }

  return v2;
}

uint64_t dxbte_engine_activate_tablename(uint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, char *a10, char *a11, int a12)
{
  v19 = 1;
  v20 = dxios_search_open(a10, 0, 255, 1, 288);
  if (v20)
  {
    v21 = v20;
    v22 = a8;
    v23 = dxios_search_open(a11, 0, 255, 0, 288);
    if (v23)
    {
      v24 = v23;
      v19 = dxbte_engine_activate(a1, a2, a3, a4, a5, a6, a7, v22, a9, v21, v23, a12);
      dxios_close(v21);
      dxios_close(v24);
      if (!v19)
      {
        return v19;
      }
    }

    else
    {
      dxios_close(v21);
      v19 = 6;
    }
  }

  dxerr_report_activate(a1[3685], &dxbte_pg_name, v19);
  return v19;
}

uint64_t dxbte_engine_activate(uint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11, int a12)
{
  v25 = 0;
  v20 = a1 + 3684;
  memset(v24, 0, sizeof(v24));
  dxios_stream_create(v24, a1[3685]);
  dxios_stream_activate_buf(v24, 1u, "", 0);
  if (*v20)
  {
    v21 = 110;
  }

  else
  {
    v21 = dxnin_engine_activate(a1, a11, v24, a2, a4, a5);
    if (!v21)
    {
      *v20 = 1;
      v20[5] = a8;
      v20[6] = a9;
      v20[12] = a3;
      a1[3688] = a6;
      a1[3689] = a7;
      a1[3691] = 0;
      if (a4)
      {
        v22 = a4;
      }

      else
      {
        v22 = dummy_style_func;
      }

      a1[4293] = v22;
      a1[4294] = a5;
      v20[4] = a12;
      v21 = prdtqr(a1, a10);
      v20[299] = v20[75];
      siniq(a1);
      if (v21)
      {
        dxerr_report_activate(a1[3685], &dxbte_pg_name, v21);
        dxbte_engine_deactivate(a1);
      }
    }
  }

  dxios_stream_destroy(v24);
  return v21;
}

void dummy_style_func(uint64_t a1@<X1>, void *a2@<X3>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[3] = 0;
  *a3 = a1;
  a3[1] = 0;
  if (a2)
  {
    *a2 = a1;
  }
}

uint64_t dxbte_engine_get_trnmod(uint64_t a1, _DWORD *a2)
{
  v2 = a1 + 28672;
  if (!*(a1 + 29472))
  {
    return 100;
  }

  if (!a2)
  {
    return 120;
  }

  result = 0;
  *a2 = *(v2 + 2120);
  return result;
}

uint64_t dxbte_engine_process(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a1 + 29488;
  v9 = *(a1 + 29496);
  if (*(a1 + 29492))
  {
    whrini();
  }

  v218 = (a1 + 34344);
  memset(v242, 0, 200);
  if (a4)
  {
    v10 = (a4 + 1);
    v230 = a4;
    v11 = *a4;
    v12 = *a4 - 9;
    v13 = a1;
    v227 = v10;
    if (v12 < 0xFFFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }

    v14 = v11 - 1;
    v15 = *&v10[24 * v11 - 8];
    v13 = a1;
    if (!v15)
    {
      goto LABEL_13;
    }

    v13 = a1;
    while (1)
    {
      v13 = *(v13 + 34560);
      if (!v13)
      {
        break;
      }

      if (!--v15)
      {
        goto LABEL_12;
      }
    }

    v13 = a1;
LABEL_12:
    if (v14 >= 8)
    {
LABEL_14:
      *(v13 + 32888) = 0u;
    }

    else
    {
LABEL_13:
      v16 = &v10[24 * v14];
      *(v13 + 32888) = *v16;
      *(v13 + 32896) = *(v16 + 1);
    }
  }

  else
  {
    *(&v242[10] + 8) = 0uLL;
    *(&v242[11] + 8) = 0uLL;
    *(&v242[8] + 8) = 0uLL;
    *(&v242[9] + 8) = 0uLL;
    *(&v242[6] + 8) = 0uLL;
    *(&v242[7] + 8) = 0uLL;
    *(&v242[4] + 8) = 0uLL;
    *(&v242[5] + 8) = 0uLL;
    *(&v242[2] + 8) = 0uLL;
    *(&v242[3] + 8) = 0uLL;
    v242[0] = 1uLL;
    v230 = v242;
    v13 = a1;
    *(&v242[1] + 8) = 0uLL;
    v227 = v242 + 8;
  }

  v221 = a1;
  siniq(a1);
  *(v13 + 34004) = 0;
  v17 = v9 == 0;
  *(v13 + 34360) = -2;
  v219 = v8;
  v220 = (v8 + 3400);
  *(v13 + 34268) = -1;
  *(v13 + 32336) = 0;
  v222 = a2;
  v223 = a3;
LABEL_16:
  v18 = (v13 + 33928);
  v19 = (v13 + 29492);
  dxnin_engine_reactivate(v13, a2);
  *(v13 + 29528) = a3;
  linitq(v13, *(v13 + 29520), a3, v13);
  v20 = 0;
  v21 = v13 + 34012;
  v22 = (v13 + 32344);
  if (*(v13 + 34004) <= 0)
  {
    v23 = v13 + 32344;
  }

  else
  {
    v23 = v13 + 34012;
  }

  do
  {
    *(v23 + v20) = dxnin_engine_getc(v13);
    v20 += 4;
  }

  while (v20 != 256);
  if (*(v13 + 34004) < 1)
  {
    *(v13 + 32340) = 0;
  }

  else
  {
    *(v13 + 34008) = 0;
  }

  if (!v17)
  {
    for (i = 0; i != 22; ++i)
    {
      stacq(v13, pg_wdemo[i]);
    }

    stacq(v13, 32);
  }

  v237 = v13 + 29644;
  v231 = v13 + 32600;
  v235 = (v13 + 32888);
  v240 = v13 + 33940;
  v226 = v13 + 32904;
  v224 = v13 + 34272;
  v225 = (v13 + 34304);
LABEL_28:
  v25 = *(v22 + *(v13 + 32340));
  if (*(v13 + 30792))
  {
    v26 = 0;
  }

  else
  {
    v26 = v25 == 23;
  }

  if (v26)
  {
    do
    {
      ttmark(v13);
      v25 = *(v22 + *(v13 + 32340));
    }

    while (v25 == 23);
  }

  while (1)
  {
    if (v25 != 256)
    {
      v32 = *(v237 + 4 * v25);
      if (v32 <= 0)
      {
        v35 = *(v13 + 34364);
        if (v35 <= 14)
        {
          *(v13 + 34368 + 4 * v35) = v25;
          v35 = *(v13 + 34364);
        }

        if (v35 != 0x7FFFFFFF)
        {
          *(v13 + 34364) = v35 + 1;
        }

        v34 = *(v237 + 4 * *(v13 + 30800));
        v36 = *(v13 + 30796);
        if (v36 != 1)
        {
          if (v36 > 1)
          {
            v76 = *(v13 + 32340);
LABEL_278:
            v138 = *(v22 + v76);
            if (v138 == 256)
            {
              v139 = 256;
            }

            else
            {
              v139 = *(v22 + v76);
              do
              {
                if (*(v13 + 34004) < 1)
                {
                  v145 = dxnin_engine_getc(v13);
                  v76 = *(v13 + 32340);
                }

                else
                {
                  v143 = *(v13 + 34336);
                  if (v143 >= *(v13 + 34340))
                  {
                    v145 = 256;
                  }

                  else
                  {
                    v144 = *(v13 + 34328);
                    *(v13 + 34336) = v143 + 1;
                    v145 = *(v144 + v143);
                  }
                }

                *(v22 + v76) = v145;
                v76 = (*(v13 + 32340) + 1) & 0x3F;
                *(v13 + 32340) = v76;
                if ((dusci[12 * v138] & 0x20) == 0)
                {
                  break;
                }

                v138 = *(v22 + v76);
                v139 = v138 + (v139 << 8);
              }

              while (v138 != 256);
              v36 = *(v13 + 30796);
            }

            if (v36 == 2 || (stacq(v13, 32), *(v13 + 30796) != 4))
            {
              v146 = 64;
            }

            else
            {
              v146 = 59;
            }

            stacq(v13, v146);
            stacq(v13, 36);
            chdiu(v139);
            if (v139 == 62762)
            {
              for (j = 0; j != 11; ++j)
              {
                stacq(v13, unsupp[j]);
              }

LABEL_339:
              stacq(v13, 32);
              v137 = *(v13 + 30696) + 4 * *(v13 + 29772);
LABEL_340:
              v158 = (v137 - 4);
              goto LABEL_341;
            }

            v148 = chdiu(v139);
            v149 = v148 == 42;
            v150 = v139 != 42;
            if (v149 && v150)
            {
              v151 = 100;
            }

            else
            {
              v151 = 117;
            }

            if (v149 && v150)
            {
              v152 = v139;
            }

            else
            {
              v152 = v148;
            }

            stacq(v13, v151);
            v153 = *(v13 + 30796);
            if (v153 == 4)
            {
              v154 = 43;
            }

            else
            {
              if (v153 <= 3)
              {
                stacq(v13, 34);
              }

              v154 = 54;
            }

            stacq(v13, v154);
            v159 = 1;
            do
            {
              v160 = v159;
              v161 = v152 / v159;
              v159 *= 16;
            }

            while (v161 > 15);
            v162 = 0;
            while (2)
            {
              v163 = *(v13 + 30796);
              v164 = v152 / v160;
              if (v163 > 3)
              {
                v26 = v163 == 4;
                v167 = &ahdig[v164];
                if (v26)
                {
                  v167 = &lhdig[v164];
                }
              }

              else
              {
                if (v164 < 10)
                {
                  v165 = 1;
                  if (!v162)
                  {
                    v166 = 35;
LABEL_336:
                    stacq(v13, v166);
                  }
                }

                else
                {
                  v165 = 0;
                  if (v162)
                  {
                    v166 = 59;
                    goto LABEL_336;
                  }
                }

                v167 = &uhdig[v164];
                v162 = v165;
              }

              stacq(v13, *v167);
              v152 %= v160;
              v114 = v160 > 0xF;
              v160 >>= 4;
              if (!v114)
              {
                goto LABEL_339;
              }

              continue;
            }
          }

          goto LABEL_280;
        }

        v33 = *(v13 + 30712) + 4 * v34;
      }

      else
      {
        v33 = *(v13 + 30712) + 4 * v32;
        v34 = *(v237 + 4 * v25);
      }

      v37 = *(v33 - 4);
      if (v37 >= 1)
      {
        v238 = 0;
        *(v13 + 32864) = *(v13 + 32340);
        *(v13 + 32856) = 0;
        v38 = 1;
        v39 = v37;
        v229 = v34;
        v228 = v37;
LABEL_57:
        v234 = v38 + 1;
        v233 = 4 * v38 + 32600;
        v236 = v38;
        while (1)
        {
          v40 = v39;
          v41 = *(*(v13 + 29560) + 8 * (v39 - 1));
          v42 = *(*(v13 + 29576) + 4 * (v39 - 1));
          v39 = *(*(v13 + 29568) + 4 * (v39 - 1));
          if ((v42 & 0x3F) != 0)
          {
            LODWORD(v43) = v38;
            if (v238)
            {
              goto LABEL_88;
            }

            v241 = v39;
            v239 = v40;
            v44 = (v42 & 0x3F) + v38;
            v45 = v234;
            if (v44 > v234)
            {
              v45 = (v42 & 0x3F) + v38;
            }

            v232 = v45;
            v46 = v233;
            LODWORD(v43) = v38;
            do
            {
              if (*(v13 + 32860) < v43 && !trcedbc(v13, v43) || *(v13 + v46) != *(*(v13 + 29584) + v41 - 1))
              {
                goto LABEL_87;
              }

              ++v41;
              LODWORD(v43) = v43 + 1;
              v46 += 4;
            }

            while (v44 > v43);
            v43 = v232;
            v38 = v236;
            v40 = v239;
          }

          else
          {
            v241 = v39;
            v43 = v38;
          }

          v47 = v42 & 0xC0;
          if (v47 == 192)
          {
            v39 = v241;
          }

          else
          {
            v239 = v40;
            if (v43 > *(v13 + 32860) && !trcedbc(v13, v43))
            {
              goto LABEL_87;
            }

            v50 = *(v237 + 4 * *(v231 + 4 * v43));
            if (v50 < 1)
            {
              goto LABEL_87;
            }

            v51 = (*(v13 + 29584) + v41);
            v52 = *(v51 - 1);
            if (v47 == 128 || v52 == 254)
            {
              *(v13 + 32868) = xmmword_2D110;
              v67 = v52 | (*v51 << 8);
              if (v47 == 128)
              {
                v68 = v67;
              }

              else
              {
                v68 = *v51;
              }

              if (trcck(v13, v43, v68) < 1)
              {
                *(v13 + 32868) = -2;
LABEL_87:
                v38 = v236;
                v40 = v239;
                v39 = v241;
                goto LABEL_88;
              }

              v41 += 2;
              v69 = *(v13 + 32868);
              v38 = v236;
              v40 = v239;
              v39 = v241;
              if ((v69 & 0x80000000) == 0)
              {
                *(v13 + 32868) = v69 + ~v43 + *(v13 + 32872);
              }
            }

            else
            {
              v53 = btestv((*(v13 + 30688) + 8 * v50 - 8), v52);
              v39 = v241;
              if (!v53)
              {
                goto LABEL_103;
              }

              if ((v42 & 0x40) != 0)
              {
                ++v41;
              }

              else
              {
                v54 = v43 + 1;
                if (v43 >= *(v13 + 32860) && (v55 = trcedbc(v13, v54), v54 = v43 + 1, !v55) || (v56 = *(v237 + 4 * *(v231 + 4 * v54)), v56 < 1) || !btestv((*(v13 + 30688) + 8 * v56 - 8), *(*(v13 + 29584) + v41)))
                {
LABEL_103:
                  v38 = v236;
                  v40 = v239;
                  goto LABEL_88;
                }

                v41 += 2;
              }

              v38 = v236;
              v40 = v239;
            }
          }

          *v18 = 1;
          if ((v42 & 0x8000) != 0)
          {
            v49 = 1;
          }

          else
          {
            v48 = (*(v13 + 29584) + v41);
            v49 = *(v48 - 1);
            *v18 = v49;
            if (*(v13 + 29636) < 15)
            {
              ++v41;
            }

            else
            {
              v41 += 2;
              v49 |= *v48 << 8;
              *v18 = v49;
            }
          }

          v57 = *(v13 + 32884);
          if (v57 < 1)
          {
            break;
          }

          v58 = (*(*(v13 + 30728) + 4 * v49 - 4) - 1) * v57;
          v59 = (*(v13 + 30760) + 8 * v58);
          v60 = (*(v13 + 30752) + 8 * v58);
          v61 = (v13 + 32888);
          while (1)
          {
            v63 = *v60++;
            v62 = v63;
            v65 = *v59++;
            v64 = v65;
            v66 = *v61++;
            if (((v66 ^ v64) & v62) != 0)
            {
              break;
            }

            if (!--v57)
            {
              goto LABEL_126;
            }
          }

LABEL_88:
          if (v39 <= 0)
          {
            v34 = v229;
            v37 = v228;
            if (!v39)
            {
              goto LABEL_128;
            }

            v70 = -v39;
            if (v43 == v38)
            {
              if (v38 <= v70)
              {
                v72 = *(v13 + 29568) - 4;
                do
                {
                  ++v40;
                  while (1)
                  {
                    v73 = *(v72 + 4 * v40);
                    if (v73 < 0)
                    {
                      break;
                    }

                    v40 = *(v72 + 4 * v40);
                    if (!v73)
                    {
                      goto LABEL_128;
                    }
                  }

                  v70 = -v73;
                }

                while (v38 <= v70);
              }
            }

            else if (v38 <= v70)
            {
              v39 = v40 + 1;
              v38 = v70;
              goto LABEL_57;
            }

            v39 = v40 + 1;
            v238 = 1;
            v38 = v70;
            goto LABEL_57;
          }

          if (v43 != v38)
          {
            if (v39 == v40 + 1)
            {
              v38 = v38;
            }

            else
            {
              v38 = (v38 + 1);
            }

            v71 = v238;
            if (v39 == v40 + 1)
            {
              v71 = 1;
            }

            v238 = v71;
            v39 = v40 + 1;
            goto LABEL_57;
          }
        }

LABEL_126:
        *(v13 + 33932) = 2;
        if ((v42 & 0x4000) != 0)
        {
          v75 = 0;
        }

        else
        {
          v74 = *(v13 + 29584) + v41++;
          LODWORD(v74) = *(v74 - 1);
          v75 = v74 == 0;
          *(v13 + 33932) = v74;
        }

        LODWORD(v77) = (v42 >> 8) & 0x3F;
        *(v13 + 33936) = v77;
        if (v77)
        {
          v78 = 0;
          v79 = *(v13 + 29584) + v41 - 1;
          v80 = v240;
          do
          {
            *(v80 + v78) = *(v79 + v78);
            v77 = *(v13 + 33936);
            ++v78;
          }

          while (v78 < v77);
          if (v75)
          {
            goto LABEL_199;
          }
        }

        else
        {
          v80 = v240;
          if (v75)
          {
            goto LABEL_199;
          }
        }

        v81 = 0;
        do
        {
          if (!*(v13 + 30792))
          {
            while (*(v22 + *(v13 + 32340)) == 23)
            {
              ttmark(v13);
            }

            if (v81 >= 1 && *(v13 + 34004) <= 0)
            {
              do
              {
                v85 = *(v13 + 32340);
                if (*(v22 + v85) != 28)
                {
                  break;
                }

                if (*(v22 + ((v85 + 1) & 0x3F)) != 101)
                {
                  break;
                }

                v86 = *(v22 + ((v85 + 2) & 0x3F));
                if (v86 != 115 && v86 != 101)
                {
                  break;
                }

                if (*(v22 + ((v85 + 3) & 0x3F)) != 126)
                {
                  break;
                }

                v87 = 4;
                do
                {
                  if (*(v13 + 34004) < 1)
                  {
                    v90 = dxnin_engine_getc(v13);
                    LODWORD(v85) = *(v13 + 32340);
                  }

                  else
                  {
                    v88 = *(v13 + 34336);
                    if (v88 >= *(v13 + 34340))
                    {
                      v90 = 256;
                    }

                    else
                    {
                      v89 = *(v13 + 34328);
                      *(v13 + 34336) = v88 + 1;
                      v90 = *(v89 + v88);
                    }
                  }

                  *(v22 + v85) = v90;
                  LODWORD(v85) = (*(v13 + 32340) + 1) & 0x3F;
                  *(v13 + 32340) = v85;
                  --v87;
                }

                while (v87);
                v91 = v86 != 115;
                v92 = *(v22 + v85);
                if ((v92 - 31) >= 2)
                {
                  v93 = 0;
                  do
                  {
                    if (v92 == 96 || v93 > 0x1E)
                    {
                      break;
                    }

                    v243[v93] = v92;
                    if (*(v13 + 34004) < 1)
                    {
                      v96 = dxnin_engine_getc(v13);
                      LODWORD(v85) = *(v13 + 32340);
                    }

                    else
                    {
                      v94 = *(v13 + 34336);
                      if (v94 >= *(v13 + 34340))
                      {
                        v96 = 256;
                      }

                      else
                      {
                        v95 = *(v13 + 34328);
                        *(v13 + 34336) = v94 + 1;
                        v96 = *(v95 + v94);
                      }
                    }

                    *(v22 + v85) = v96;
                    LODWORD(v85) = (*(v13 + 32340) + 1) & 0x3F;
                    *(v13 + 32340) = v85;
                    v92 = *(v22 + v85);
                    ++v93;
                  }

                  while ((v92 - 31) > 1);
                }

                else
                {
                  v93 = 0;
                }

                v243[v93] = 0;
                if (*(v13 + 34004) < 1)
                {
                  v99 = dxnin_engine_getc(v13);
                  LODWORD(v85) = *(v13 + 32340);
                  v80 = v240;
                }

                else
                {
                  v97 = *(v13 + 34336);
                  v80 = v240;
                  if (v97 >= *(v13 + 34340))
                  {
                    v99 = 256;
                  }

                  else
                  {
                    v98 = *(v13 + 34328);
                    *(v13 + 34336) = v97 + 1;
                    v99 = *(v98 + v97);
                  }
                }

                *(v22 + v85) = v99;
                *(v13 + 32340) = (*(v13 + 32340) + 1) & 0x3F;
                (*(v13 + 34344))(&v244, *(v13 + 34352), v243, v91, 0);
                v100 = *(&v245 + 1);
                if (*(&v245 + 1))
                {
                  v101 = strlen(*(&v245 + 1));
                  if (v101 >= 1)
                  {
                    v102 = v81 + v101;
                    v103 = *(v13 + 33932);
                    if (v81 + v101 > v103)
                    {
                      v104 = 0;
                      *(v13 + 34008) = 0;
                      do
                      {
                        *(v21 + 4 * v104) = *(v22 + v104);
                        v105 = *(v13 + 34008);
                        v104 = v105 + 1;
                        *(v13 + 34008) = v105 + 1;
                      }

                      while (v105 < 63);
                      v106 = 0;
                      v107 = 0;
                      v108 = *(v13 + 32340);
                      *(v13 + 34004) = 2;
                      *(v13 + 34008) = v108;
                      *(v13 + 34360) = -2;
                      *(v13 + 32340) = 0;
                      do
                      {
                        if (v106 >= v101)
                        {
                          v109 = 256;
                        }

                        else
                        {
                          v109 = *(v100 + v106++);
                        }

                        *(v22 + v107) = v109;
                        v110 = *(v13 + 32340);
                        v107 = v110 + 1;
                        *(v13 + 32340) = v110 + 1;
                      }

                      while (v110 < 63);
                      v111 = *(v13 + 33932);
                      *(v13 + 32340) = v111 - v81;
                      if (v111 - v81 < 1)
                      {
                        v81 = v111;
                      }

                      else
                      {
                        memset_pattern16(v22, &unk_2D120, 4 * (v111 + ~v81) + 4);
                        v81 = *(v13 + 33932);
                      }

                      break;
                    }

                    v81 += v101;
                    if (v102 >= v103)
                    {
                      break;
                    }
                  }
                }
              }

              while (*(v13 + 34004) < 1);
            }

            if (v81 >= *(v13 + 33932))
            {
              break;
            }
          }

          if (*(v13 + 34004) < 1)
          {
            v84 = dxnin_engine_getc(v13);
          }

          else
          {
            v82 = *(v13 + 34336);
            if (v82 >= *(v13 + 34340))
            {
              v84 = 256;
            }

            else
            {
              v83 = *(v13 + 34328);
              *(v13 + 34336) = v82 + 1;
              v84 = *(v83 + v82);
            }
          }

          *(v22 + *(v13 + 32340)) = v84;
          *(v13 + 32340) = (*(v13 + 32340) + 1) & 0x3F;
          ++v81;
        }

        while (v81 < *(v13 + 33932));
        LODWORD(v77) = *(v13 + 33936);
LABEL_199:
        if (v77 >= 1)
        {
          v112 = 1;
          do
          {
            v113 = *(v80 + v112 - 1);
            if (v113 > 0x1F || *(v13 + 30792))
            {
              goto LABEL_203;
            }

            v115 = v112;
            if (*(v80 + v112 - 1) <= 0x15u)
            {
              if (*(v80 + v112 - 1) <= 0xCu)
              {
                if (v113 != 1)
                {
                  if (v113 == 12)
                  {
                    if (v112 < v77)
                    {
                      ++v112;
                      v118 = *(v80 + v115);
                      if ((v118 - 129) >= 0xFFFFFF80)
                      {
                        v119 = v118 - 1;
                        *(v226 + 8 * v119) *= 2;
                        *(v226 + 8 * v119) |= btestv(&v235[v119 >> 6], v119 & 0x3F);
                      }
                    }

                    goto LABEL_205;
                  }

                  goto LABEL_203;
                }

                ttsng(v13);
              }

              else
              {
                if (v113 == 13)
                {
                  if (v112 < v77)
                  {
                    ++v112;
                    v121 = *(v80 + v115);
                    if ((v121 - 129) >= 0xFFFFFF80)
                    {
                      v122 = v121 - 1;
                      v123 = &v235[(v121 - 1) >> 6];
                      v124 = (v121 - 1) & 0x3F;
                      if (*(v226 + 8 * (v121 - 1)))
                      {
                        bsetv(v123, v124);
                      }

                      else
                      {
                        bclrv(v123, v124);
                      }

                      *(v226 + 8 * v122) >>= 1;
                    }
                  }

                  goto LABEL_205;
                }

                if (v113 != 20)
                {
                  if (v113 == 21)
                  {
                    goto LABEL_362;
                  }

LABEL_203:
                  if (*(v13 + 34004) <= 1u)
                  {
                    stacq(v13, v113);
                  }

                  goto LABEL_205;
                }

                tttbl(v13);
              }
            }

            else if (*(v80 + v112 - 1) <= 0x18u)
            {
              if (v113 == 22)
              {
                if (v112 < v77 - 1)
                {
                  v120 = *(v80 + v112);
                  v112 += 2;
                  ttgesp(v13, v120, *(v80 + v115 + 1));
                }

                goto LABEL_205;
              }

              if (v113 != 24)
              {
                goto LABEL_203;
              }

              v117 = *(v22 + *(v13 + 32340));
              if ((v117 - 31) < 2 || v117 == 96)
              {
LABEL_229:
                ttsh1(v13);
              }
            }

            else
            {
              switch(v113)
              {
                case 0x19u:
                  goto LABEL_229;
                case 0x1Au:
                  ttshnd(v13, 1);
                  break;
                case 0x1Bu:
                  if (v112 < v77)
                  {
                    ++v112;
                    v116 = *(v80 + v115);
                    if (v116 <= 1 && *(v13 + 34004) <= 0)
                    {
                      *(v224 + (*(v13 + 34268) & ~(*(v13 + 34268) >> 31))) = 0;
                      (*(v13 + 34344))(&v244, *(v13 + 34352));
                      v126 = v245;
                      *v225 = v244;
                      *(v13 + 34320) = v126;
                      v127 = *(v13 + 34328);
                      if (v127)
                      {
                        v128 = strlen(*(v13 + 34328));
                        *(v13 + 34340) = v128;
                        if (v128 >= 1)
                        {
                          v129 = 0;
                          *(v13 + 34008) = 0;
                          do
                          {
                            *(v21 + 4 * v129) = *(v22 + v129);
                            v130 = *(v13 + 34008);
                            v129 = v130 + 1;
                            *(v13 + 34008) = v130 + 1;
                          }

                          while (v130 < 63);
                          v131 = 0;
                          v132 = *(v13 + 32340);
                          *(v13 + 34004) = 2;
                          *(v13 + 34008) = v132;
                          *(v13 + 34360) = -2;
                          *(v13 + 34336) = 0;
                          *(v13 + 32340) = 0;
                          do
                          {
                            v133 = *(v13 + 34336);
                            if (v133 >= *(v13 + 34340))
                            {
                              v134 = 256;
                            }

                            else
                            {
                              *(v13 + 34336) = v133 + 1;
                              v134 = *(v127 + v133);
                            }

                            *(v22 + v131) = v134;
                            v135 = *(v13 + 32340);
                            v131 = v135 + 1;
                            *(v13 + 32340) = v135 + 1;
                          }

                          while (v135 < 63);
                          *(v13 + 32340) = 0;
                        }
                      }

                      break;
                    }

                    if (*(v80 + v115) <= 3u)
                    {
                      if (v116 == 2)
                      {
                        if (*(v13 + 34004) >= 1)
                        {
                          *(v13 + 34004) = 1;
                        }

                        break;
                      }

                      if (v116 == 3 && *(v13 + 34004) >= 1)
                      {
                        v125 = 2;
LABEL_265:
                        *(v13 + 34004) = v125;
                      }
                    }

                    else
                    {
                      if (v116 == 4)
                      {
                        if (*(v13 + 34004) <= 0)
                        {
                          if (*(v22 + ((*(v13 + 32868) + *(v13 + 32340)) & 0x3F)) == 28)
                          {
                            do
                            {
                              v136 = ttshnd(v13, *(v13 + 32868));
                              if (*(v13 + 34004) <= 1u)
                              {
                                stacq(v13, v136);
                              }
                            }

                            while ((v136 - 31) >= 2 && v136 != 96 && v136 != 256);
                          }
                        }

                        else
                        {
                          *(v13 + 34360) = *(v13 + 32868);
                        }

                        break;
                      }

                      if (v116 != 5)
                      {
                        if (v116 == 6 && *(v13 + 34004) <= 0)
                        {
                          *(v13 + 34004) = 0;
                        }

                        break;
                      }

                      if (*(v13 + 34004) <= 0)
                      {
                        v125 = -1;
                        goto LABEL_265;
                      }
                    }
                  }

                  break;
                default:
                  goto LABEL_203;
              }
            }

LABEL_205:
            LODWORD(v77) = *(v13 + 33936);
            v114 = v112++ < v77;
          }

          while (v114);
        }

        v137 = *(v13 + 30736) + 4 * *v18;
        goto LABEL_340;
      }

LABEL_128:
      v36 = *(v13 + 30796);
      if (v36 > 1)
      {
        v76 = *(v13 + 32340);
        if (v37 < 0 || (dusci[12 * *(v22 + v76)] & 0x20) != 0)
        {
          goto LABEL_278;
        }
      }

LABEL_280:
      if (*(v13 + 34004) < 1)
      {
        v142 = dxnin_engine_getc(v13);
      }

      else
      {
        v140 = *(v13 + 34336);
        if (v140 >= *(v13 + 34340))
        {
          v142 = 256;
        }

        else
        {
          v141 = *(v13 + 34328);
          *(v13 + 34336) = v140 + 1;
          v142 = *(v141 + v140);
        }
      }

      *(v22 + *(v13 + 32340)) = v142;
      v155 = (*(v13 + 32340) + 1) & 0x3F;
      *(v13 + 32340) = v155;
      v156 = v34 - 1;
      v157 = *(*(v13 + 30704) + v156);
      if (v157 > 0x1F || *(v13 + 30792))
      {
        goto LABEL_312;
      }

      if (*(*(v13 + 30704) + v156) > 0x15u)
      {
        if (*(*(v13 + 30704) + v156) > 0x18u)
        {
          if (v157 != 25)
          {
            if (v157 == 26)
            {
              ttshnd(v13, 1);
            }

            else if (v157 != 27)
            {
              goto LABEL_312;
            }

LABEL_314:
            v158 = (*(v13 + 30696) + 4 * v156);
LABEL_341:
            v168 = *v158;
            if (*v19 && whrani() < *v19)
            {
              v169 = (whrani() / 0xE38uLL);
              if (v169 >= 8)
              {
                v169 = 8;
              }

              stacq(v13, dword_2D130[v169]);
            }

            v170 = *(v13 + 32884);
            if (v170 >= 1)
            {
              v171 = v170 * (v168 - 1);
              v172 = (*(v13 + 30784) + 8 * v171);
              v173 = (*(v13 + 30776) + 8 * v171);
              v174 = (v13 + 32888);
              do
              {
                v176 = *v173++;
                v175 = v176;
                v177 = *v172++;
                *v174 = (*v174 ^ v177) & ~v175 | v177 & v175;
                ++v174;
                --v170;
              }

              while (v170);
            }

            goto LABEL_28;
          }

LABEL_358:
          ttsh1(v13);
          goto LABEL_314;
        }

        if (v157 == 22)
        {
          goto LABEL_314;
        }

        if (v157 == 24)
        {
          v178 = *(v22 + v155);
          if ((v178 - 31) >= 2 && v178 != 96)
          {
            goto LABEL_314;
          }

          goto LABEL_358;
        }

LABEL_312:
        if (*(v13 + 34004) <= 1u)
        {
          stacq(v13, v157);
        }

        goto LABEL_314;
      }

      if (*(*(v13 + 30704) + v156) <= 0x13u)
      {
        if (v157 - 12 < 2)
        {
          goto LABEL_314;
        }

        if (v157 == 1)
        {
          ttsng(v13);
          goto LABEL_314;
        }

        goto LABEL_312;
      }

      if (v157 == 20)
      {
        tttbl(v13);
        goto LABEL_314;
      }

LABEL_362:
      *v220 = 0;
      v220[1] = 0;
      v179 = *(v13 + 34268);
      if (v179 < 1)
      {
        v193 = *v230;
        v189 = v221;
        if (*v230 >= 2)
        {
          *v230 = v193 - 1;
          v189 = v221;
          if ((v193 - 10) >= 0xFFFFFFFFFFFFFFF8)
          {
            v194 = *&v227[24 * v193 - 32];
            v189 = v221;
            if (v194)
            {
              while (1)
              {
                v189 = *(v189 + 34560);
                if (!v189)
                {
                  break;
                }

                if (!--v194)
                {
                  goto LABEL_395;
                }
              }

              v189 = v221;
            }
          }
        }
      }

      else
      {
        *(v224 + v179) = 0;
        v180 = *(v13 + 29504);
        if (v180 && v180(*(v13 + 29512)))
        {
          v181 = v221;
          do
          {
            v182 = v181;
            v181 = *(v181 + 34568);
          }

          while (v181);
          v183 = v221;
          do
          {
            v184 = v183;
            v183 = *(v183 + 34560);
          }

          while (v183);
          if (v182)
          {
            v185 = v182;
            while (strcic(v185 + 34584, (v221 + 34272)))
            {
              v185 = *(v185 + 4320);
              if (!v185)
              {
                goto LABEL_373;
              }
            }

            v182 = v185;
          }

          else
          {
LABEL_373:
            v186 = malloc_type_malloc(0x8738uLL, 0x10F004069F50C7AuLL);
            if (v186)
            {
              v187 = v186;
              dxbte_engine_create(v186, *(v221 + 29480));
              if (!dxbte_engine_activate_tablename(v187, *(v221 + 56), *(v219 + 32), *v218, v218[1], *(v221 + 29504), *(v221 + 29512), *(v219 + 4), 0, v243, &v244, *v219))
              {
                v187[4321] = v184;
                *(v184 + 34560) = v187;
                strcpx(v187 + 34584, (v221 + 34272), 30);
                v182 = v187;
              }
            }
          }

          v188 = (*v230)++;
          v189 = v221;
          if (v188 <= 7)
          {
            v195 = &v227[24 * v188];
            *v195 = *(v182 + 4111);
            *(v195 + 1) = *(v182 + 4112);
            if (v182 == v221)
            {
              v190 = 0;
              v192 = v227;
            }

            else
            {
              LODWORD(v190) = 0;
              v196 = v221;
              v192 = v227;
              while (v196)
              {
                LODWORD(v190) = v190 + 1;
                v196 = *(v196 + 34560);
                if (v196 == v182)
                {
                  goto LABEL_393;
                }
              }

              LODWORD(v190) = 0;
LABEL_393:
              v190 = v190;
            }

LABEL_394:
            *&v192[24 * v188 + 16] = v190;
            v189 = v182;
          }
        }

        else
        {
          v188 = (*v230)++;
          v189 = v221;
          if (v188 <= 7)
          {
            v190 = 0;
            v191 = &v227[24 * v188];
            *v191 = *(v219 + 3400);
            *(v191 + 1) = *(v219 + 3408);
            v192 = v227;
            v182 = v221;
            goto LABEL_394;
          }
        }
      }

LABEL_395:
      *(v189 + 29528) = *(v13 + 29528);
      *(v189 + 34004) = *(v13 + 34004);
      *(v189 + 34360) = -2;
      *(v189 + 34336) = *(v13 + 34336);
      v197 = *v225;
      *(v189 + 34320) = *(v13 + 34320);
      *(v189 + 34304) = v197;
      v198 = *(v13 + 32456);
      v200 = *(v13 + 32408);
      v199 = *(v13 + 32424);
      *(v189 + 32440) = *(v13 + 32440);
      *(v189 + 32456) = v198;
      *(v189 + 32408) = v200;
      *(v189 + 32424) = v199;
      v201 = *(v13 + 32520);
      v203 = *(v13 + 32472);
      v202 = *(v13 + 32488);
      *(v189 + 32504) = *(v13 + 32504);
      *(v189 + 32520) = v201;
      *(v189 + 32472) = v203;
      *(v189 + 32488) = v202;
      v204 = *(v13 + 32584);
      v206 = *(v13 + 32536);
      v205 = *(v13 + 32552);
      *(v189 + 32568) = *(v13 + 32568);
      *(v189 + 32584) = v204;
      *(v189 + 32536) = v206;
      *(v189 + 32552) = v205;
      v207 = *v22;
      v208 = *(v13 + 32360);
      v209 = *(v13 + 32392);
      *(v189 + 32376) = *(v13 + 32376);
      *(v189 + 32392) = v209;
      *(v189 + 32344) = v207;
      *(v189 + 32360) = v208;
      *(v189 + 32340) = *(v13 + 32340);
      *(v189 + 32200) = *(v13 + 32200);
      v210 = *(v13 + 32216);
      v211 = *(v13 + 32232);
      v212 = *(v13 + 32264);
      *(v189 + 32248) = *(v13 + 32248);
      *(v189 + 32264) = v212;
      *(v189 + 32216) = v210;
      *(v189 + 32232) = v211;
      v213 = *(v13 + 32280);
      v214 = *(v13 + 32296);
      v215 = *(v13 + 32312);
      *(v189 + 32325) = *(v13 + 32325);
      *(v189 + 32296) = v214;
      *(v189 + 32312) = v215;
      *(v189 + 32280) = v213;
      *(v189 + 32336) = *(v13 + 32336);
      *(v189 + 32888) = 0u;
      v17 = 1;
      v13 = v189;
      a2 = v222;
      a3 = v223;
      goto LABEL_16;
    }

    if (*(v13 + 34004) < 1)
    {
      break;
    }

    v27 = 0;
    *(v13 + 34004) = 0;
    *(v13 + 32340) = 0;
    do
    {
      *(v22 + v27) = *(v21 + 4 * v27);
      v28 = *(v13 + 32340);
      v27 = v28 + 1;
      *(v13 + 32340) = v28 + 1;
    }

    while (v28 < 63);
    v29 = *(v13 + 34008);
    *(v13 + 32340) = v29;
    v25 = *(v22 + v29);
    if (*(v13 + 30792))
    {
      v30 = 0;
    }

    else
    {
      v30 = v25 == 23;
    }

    if (v30)
    {
      do
      {
        ttmark(v13);
        v25 = *(v22 + *(v13 + 32340));
      }

      while (v25 == 23);
    }

    v31 = *(v13 + 34360);
    if ((v31 & 0x80000000) == 0)
    {
      ttgesp(v13, 1, v31);
      *(v13 + 34360) = -2;
    }
  }

  stacq(v13, 256);
  if (*v230 <= 8)
  {
    v216 = &v227[24 * *v230];
    *(v216 - 3) = *v235;
    *(v216 - 2) = *(v13 + 32896);
  }

  return 0;
}