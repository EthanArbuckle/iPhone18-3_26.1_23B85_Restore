int scandir_b(const char *a1, dirent ***a2, void *a3, void *a4)
{
  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v7;
  v9 = malloc_type_malloc(0x100uLL, 0x2004093837F09uLL);
  if (!v9)
  {
LABEL_19:
    free(v9);
    closedir(v8);
LABEL_20:
    LODWORD(v10) = -1;
    return v10;
  }

  v19 = a2;
  v10 = 0;
  v11 = -1;
  v12 = 32;
  while (1)
  {
    v13 = readdir(v8);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    if (!a3 || (*(a3 + 2))(a3, v13))
    {
      v15 = malloc_type_malloc(((v14->d_namlen + 4) & 0x1FFFC) + 24, 0x1000040D92F83E5uLL);
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      *v15 = v14->d_ino;
      v15[20] = v14->d_type;
      *(v15 + 8) = v14->d_reclen;
      *(v15 + 9) = v14->d_namlen;
      j__mkostemp(v15 + 21, v14 + 21);
      if (v10 >= v12)
      {
        v17 = malloc_type_realloc(v9, 16 * v12, 0x2004093837F09uLL);
        if (!v17)
        {
          free(v16);
LABEL_17:
          if (v10)
          {
            do
            {
              free(*(v9 + v11--));
            }

            while (v11 != -1);
          }

          goto LABEL_19;
        }

        v12 *= 2;
        v9 = v17;
      }

      *(v9 + v10++) = v16;
      ++v11;
    }
  }

  closedir(v8);
  if (a4 && v10)
  {
    qsort_b(v9, v10, 8uLL, a4);
  }

  *v19 = v9;
  return v10;
}

uint64_t __printf_arginfo_errno(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __printf_arginfo_errno_cold_1();
  }

  *a3 = 1;
  return 1;
}

uint64_t __printf_render_errno(uint64_t *a1, uint64_t a2, int **a3)
{
  v5 = **a3;
  if (v5 < 0 || v5 >= 108)
  {
    sprintf(v15, "errno=%d/0x%x", **a3, v5);
    v13 = j__strsignal_r(v15, v11, v12);
    v14 = __printf_out(a1, a2, v15, v13);
    __printf_flush(a1);
    return v14;
  }

  else
  {
    v6 = strerror(v5);
    v9 = j__strsignal_r(v6, v7, v8);

    return __printf_out(a1, a2, v6, v9);
  }
}

uint64_t __printf_arginfo_float(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a2)
  {
    __printf_arginfo_float_cold_1();
  }

  if (*(a1 + 40) < 0)
  {
    v3 = 256;
  }

  else
  {
    *a3 = 128;
    if (*(a1 + 40))
    {
      v3 = 65664;
    }

    else
    {
      v3 = 128;
    }
  }

  *a3 = v3;
  return 1;
}

uint64_t __printf_render_float(uint64_t *a1, uint64_t a2, double **a3)
{
  if ((*(a2 + 40) & 0x80000000) == 0)
  {
    LODWORD(v6) = *(a2 + 20);
    v69 = 0;
    v71 = *(a2 + 36);
    thousands_sep = localeconv_l(*(a2 + 8))->thousands_sep;
    v66 = j__strsignal_r(thousands_sep, v7, v8);
    if ((*(a2 + 40) & 0x100) != 0)
    {
      v11 = localeconv_l(*(a2 + 8));
      fixed = __fix_nogrouping(v11->grouping);
    }

    else
    {
      fixed = 0;
    }

    v73 = 0;
    v74 = 0;
    v72 = 0;
    v70 = 0.0;
    decimal_point = localeconv_l(*(a2 + 8))->decimal_point;
    v15 = j__strsignal_r(decimal_point, v13, v14);
    LOBYTE(v16) = 0;
    v17 = *(a2 + 28);
    if (v17 > 96)
    {
      if (v17 <= 101)
      {
        if (v17 != 97)
        {
          if (v17 != 101)
          {
            goto LABEL_22;
          }

LABEL_16:
          if (v6 >= 0)
          {
            LODWORD(v6) = v6 + 1;
          }

          else
          {
            LODWORD(v6) = 7;
          }

          v16 = *(a2 + 28);
          goto LABEL_27;
        }

LABEL_39:
        v21 = v17 == 97;
        if (v17 == 97)
        {
          v22 = 120;
        }

        else
        {
          v22 = 88;
        }

        if (v21)
        {
          LOBYTE(v16) = 112;
        }

        else
        {
          LOBYTE(v16) = 80;
        }

        if (v21)
        {
          v23 = &__lowercase_hex;
        }

        else
        {
          v23 = &__uppercase_hex;
        }

        v69 = v22;
        v6 = v6 + (v6 >= 0);
        if (*(a2 + 40))
        {
          v70 = **a3;
          v24 = __hldtoa(v23, v6, &v74, &v73, &v72);
        }

        else
        {
          v24 = __hdtoa(v23, v6, &v74, &v73, &v72, **a3);
        }

        v19 = v24;
        if (v6 < 0)
        {
          LODWORD(v6) = v72 - v24;
        }

        if (v74 == 0x7FFFFFFF)
        {
          v69 = 0;
        }

LABEL_55:
        if (v73)
        {
          v71 = 45;
        }

        v25 = v74;
        v65 = v19;
        v60 = decimal_point;
        v61 = v15;
        if (v74 == 0x7FFFFFFF)
        {
          v26 = *(a2 + 28);
          v63 = v6;
          if (*v19 == 78)
          {
            if (v26 <= 96)
            {
              v27 = "NAN";
            }

            else
            {
              v27 = "nan";
            }

            v71 = 0;
          }

          else if (v26 <= 96)
          {
            v27 = "INF";
          }

          else
          {
            v27 = "inf";
          }

          v59 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v62 = v16 == 0;
          v32 = 3;
LABEL_123:
          if (v32 < 0)
          {
            v43 = -1;
          }

          else
          {
            v43 = v32;
          }

          if (v71)
          {
            ++v43;
          }

          if (v69)
          {
            v43 += 2;
          }

          v64 = v43;
          if (*(a2 + 32) == 48 || (*(a2 + 40) & 0x40) != 0)
          {
            v44 = 0;
            if (!v71)
            {
              goto LABEL_136;
            }
          }

          else
          {
            v44 = __printf_pad(a1, (*(a2 + 24) - v43), 0);
            if (!v71)
            {
LABEL_136:
              if (v69)
              {
                v68 = 48;
                v44 += __printf_puts(a1, &v68, 2);
              }

              if (*(a2 + 32) == 48 && (*(a2 + 40) & 0x40) == 0)
              {
                v44 += __printf_pad(a1, (*(a2 + 24) - v64), 1);
              }

              v45 = __printf_pad(a1, ~v32, 1) + v44;
              if (v25 == 0x7FFFFFFF)
              {
                v46 = __printf_puts(a1, v27, v32);
              }

              else
              {
                if (!v62)
                {
                  if (v63 > 1 || (*(a2 + 40) & 0x10) != 0)
                  {
                    v75 = *v27;
                    j__mkdtempat_np(v76, v60);
                    v54 = __printf_puts(a1, &v75, (v61 + 1));
                    v55 = v54 + __printf_puts(a1, (v27 + 1), (v59 - 1));
                    v53 = v55 + __printf_pad(a1, (v63 - v59), 1) + v45;
                  }

                  else
                  {
                    v53 = __printf_puts(a1, v27, 1) + v45;
                  }

                  v56 = __printf_puts(a1, v78, HIDWORD(v59)) + v53;
LABEL_182:
                  if ((*(a2 + 40) & 0x40) != 0)
                  {
                    v56 = __printf_pad(a1, (*(a2 + 24) - v64), 0) + v56;
                  }

                  __printf_flush(a1);
                  if (v65)
                  {
                    __freedtoa(v65);
                  }

                  return v56;
                }

                if (v74 <= 0)
                {
                  v57 = __printf_puts(a1, "0", 1) + v45;
                  if (v63 || (*(a2 + 40) & 0x10) != 0)
                  {
                    v57 += __printf_puts(a1, v60, v61);
                  }

                  v45 = __printf_pad(a1, -v74, 1) + v57;
                  LODWORD(v52) = v74 + v63;
                }

                else
                {
                  if (v31 >= v72 - v27)
                  {
                    v47 = (v72 - v27);
                  }

                  else
                  {
                    v47 = v31;
                  }

                  if (v47 >= 1)
                  {
                    v45 += __printf_puts(a1, v27, v47);
                  }

                  v45 += __printf_pad(a1, v31 - (v47 & ~(v47 >> 31)), 1);
                  v27 += v31;
                  if (fixed)
                  {
                    v48 = v30 > 0;
                    if (v29 > 0 || v30 >= 1)
                    {
                      do
                      {
                        fixed -= !v48;
                        v49 = __printf_puts(a1, thousands_sep, v66) + v45;
                        v50 = *fixed;
                        if (v72 - v27 >= v50)
                        {
                          v51 = v50;
                        }

                        else
                        {
                          v51 = (v72 - v27);
                        }

                        if (v51 >= 1)
                        {
                          v49 += __printf_puts(a1, v27, v51);
                          v50 = *fixed;
                        }

                        v29 -= !v48;
                        v30 -= v48;
                        v45 = __printf_pad(a1, v50 - (v51 & ~(v51 >> 31)), 1) + v49;
                        v27 += *fixed;
                        v48 = v30 > 0;
                      }

                      while (v29 > 0 || v30 > 0);
                    }

                    if (v27 > v72)
                    {
                      v27 = v72;
                    }
                  }

                  LODWORD(v52) = v63;
                  if (v63 || (*(a2 + 40) & 0x10) != 0)
                  {
                    v45 += __printf_puts(a1, v60, v61);
                  }

                  else
                  {
                    LODWORD(v52) = 0;
                  }
                }

                v58 = v52;
                if (v52 >= v72 - v27)
                {
                  v52 = (v72 - v27);
                }

                else
                {
                  v52 = v52;
                }

                if (v52 >= 1)
                {
                  v45 += __printf_puts(a1, v27, v52);
                }

                v46 = __printf_pad(a1, v58 - (v52 & ~(v52 >> 31)), 1);
              }

              v56 = (v46 + v45);
              goto LABEL_182;
            }
          }

          v44 += __printf_puts(a1, &v71, 1);
          goto LABEL_136;
        }

        LODWORD(v59) = v72 - v19;
        if ((*(a2 + 28) | 0x20) == 0x67)
        {
          if ((*(a2 + 40) & 0x10) != 0)
          {
            v28 = v6;
          }

          else
          {
            v28 = v72 - v19;
          }

          if (v74 >= -3 && v74 <= v6)
          {
            v28 = (v28 - v74) & ~((v28 - v74) >> 31);
            goto LABEL_89;
          }
        }

        else
        {
          v28 = v6;
        }

        if (v16)
        {
          v33 = v74 - 1;
          v78[0] = v16;
          if (v74 >= 1)
          {
            v34 = 43;
          }

          else
          {
            v34 = 45;
          }

          if (v74 - 1 < 0)
          {
            v33 = 1 - v74;
          }

          v35 = &v79;
          v78[1] = v34;
          if (v33 < 0xA)
          {
            if ((v16 & 0x5F) == 0x45)
            {
              v35 = v80;
              v79 = 48;
            }

            *v35 = v33 | 0x30;
            LODWORD(v35) = v35 + 1;
          }

          else
          {
            v36 = 0;
            do
            {
              v37 = v33;
              v33 /= 0xAu;
              v76[v36-- + 4] = (v37 - 10 * v33) | 0x30;
            }

            while (v37 > 0x63);
            v38 = v36 + 5;
            v76[v36 + 4] = v33 | 0x30;
            if (v36 + 7 <= 7)
            {
              v39 = &v78[-v36 - 2];
              j__mkdtempat_np(&v79, &v76[v38 - 1]);
              v40 = 5;
              if (v38 > 5)
              {
                v40 = v38;
              }

              LODWORD(v35) = v39 + v40;
            }

            v19 = v65;
          }

          HIDWORD(v59) = v35 - (&vars0 - 104);
          v32 = (v28 + HIDWORD(v59));
          if (v28 > 1 || (*(a2 + 40) & 0x10) != 0)
          {
            v62 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = (v32 + 1);
          }

          else
          {
            v62 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
          }

          v63 = v28;
LABEL_122:
          v27 = v19;
          goto LABEL_123;
        }

LABEL_89:
        if (v74 <= 0)
        {
          v32 = 1;
        }

        else
        {
          v32 = v74;
        }

        v63 = v28;
        if (v28 || (*(a2 + 40) & 0x10) != 0)
        {
          v32 = (v32 + v28 + 1);
        }

        v30 = 0;
        if (!fixed || v74 < 1)
        {
          v62 = 1;
          v27 = v19;
          v29 = 0;
          HIDWORD(v59) = 0;
          v31 = v74;
          goto LABEL_123;
        }

        v29 = 0;
        v41 = *fixed;
        if (v41 == 127 || v74 <= v41)
        {
          v30 = 0;
          v31 = v74;
        }

        else
        {
          v30 = 0;
          v29 = 0;
          v31 = v74;
          do
          {
            v31 -= v41;
            if (fixed[1])
            {
              ++v29;
            }

            else
            {
              ++v30;
            }

            if (fixed[1])
            {
              ++fixed;
            }

            v41 = *fixed;
          }

          while (v41 != 127 && v31 > v41);
        }

        HIDWORD(v59) = 0;
        v32 = (v29 + v32 + v30);
        v62 = 1;
        goto LABEL_122;
      }

      if (v17 != 102)
      {
        if (v17 != 103)
        {
          goto LABEL_22;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v17 <= 69)
      {
        if (v17 != 65)
        {
          if (v17 != 69)
          {
LABEL_22:
            __printf_render_float_cold_1();
          }

          goto LABEL_16;
        }

        goto LABEL_39;
      }

      if (v17 != 70)
      {
        if (v17 != 71)
        {
          goto LABEL_22;
        }

LABEL_25:
        LOBYTE(v16) = v17 - 2;
        if (v6 <= 1)
        {
          LODWORD(v6) = 1;
        }
      }
    }

LABEL_27:
    if (v6 < 0)
    {
      LODWORD(v6) = 6;
    }

    if (*(a2 + 40))
    {
      v70 = **a3;
      if (v16)
      {
        v20 = 2;
      }

      else
      {
        v20 = 3;
      }

      v19 = __ldtoa(&v70, v20, v6, &v74, &v73, &v72);
    }

    else
    {
      if (v16)
      {
        v18 = 2;
      }

      else
      {
        v18 = 3;
      }

      v19 = __dtoa(v18, v6, &v74, &v73, &v72, **a3);
      if (v74 == 9999)
      {
        v74 = 0x7FFFFFFF;
      }
    }

    goto LABEL_55;
  }

  return __xprintf_vector(a1, a2, a3);
}

uint64_t __printf_arginfo_hexdump(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 <= 1)
  {
    __printf_arginfo_hexdump_cold_1();
  }

  *a3 = 0x100000020;
  return 2;
}

uint64_t __printf_render_hexdump(uint64_t *a1, uint64_t a2, unsigned __int8 ***a3)
{
  v3 = *(a2 + 24) - 1;
  if (v3 >= 0xF)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(a2 + 24);
  }

  v5 = *a3[1];
  if (v5)
  {
    v6 = a2;
    LODWORD(v7) = 0;
    v8 = 0;
    v9 = **a3;
    if (v3 >= 0xF)
    {
      v3 = 15;
    }

    v30 = v3;
    v31 = v4;
    v29 = v3 + 1;
    while (1)
    {
      if ((*(v6 + 40) & 0x80) != 0)
      {
        v10 = &v37[sprintf(&v36, " %04x", v8) - 1];
      }

      else
      {
        v10 = &v36;
      }

      if (v4 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = v4;
      }

      if (v4)
      {
        v35 = v5;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        v33 = v12;
        v13 = -v12;
        v14 = -v12;
        v15 = v9;
        do
        {
          v16 = v10;
          v17 = *v15++;
          v18 = sprintf(v10, " %02x", v17);
          v10 += v18;
          v19 = __CFADD__(v14++, 1);
        }

        while (!v19);
        v6 = a2;
        if ((*(a2 + 40) & 0x10) != 0)
        {
          v4 = v31;
          v20 = v33;
          if (v33 >= v31)
          {
            *v10 = 8134688;
            v21 = v10 + 3;
          }

          else
          {
            v21 = &v16[v18 + 3];
            v22 = v29 - v33;
            do
            {
              *(v21 - 3) = 2105376;
              v21 += 3;
              --v22;
            }

            while (v22);
            *(v21 - 3) = 8134688;
          }

          v23 = v9;
          do
          {
            v25 = *v23++;
            v24 = v25;
            if ((v25 - 127) < 0xFFFFFFA1)
            {
              v24 = 46;
            }

            *v21++ = v24;
            v19 = __CFADD__(v13++, 1);
          }

          while (!v19);
          v5 = v35;
          goto LABEL_36;
        }

        v4 = v31;
        v5 = v35;
      }

      else if ((*(v6 + 40) & 0x10) != 0)
      {
        v20 = 0;
        *v10 = 8134688;
        v21 = v10 + 3;
LABEL_36:
        if (v20 < v4)
        {
          v26 = v30 - v20;
          v27 = v26 + 1;
          j__mkostemps(v21, 32, v26 + 1);
          v21 += v27;
        }

        *v21 = 124;
        v10 = v21 + 1;
      }

      v5 -= v11;
      if (v5)
      {
        *v10 = 10;
        LODWORD(v10) = v10 + 1;
      }

      v9 += v11;
      v8 += v11;
      v7 = __printf_puts(a1, v37, v10 - v37) + v7;
      __printf_flush(a1);
      if (!v5)
      {
        return v7;
      }
    }
  }

  return 0;
}

uint64_t __printf_arginfo_int(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a2)
  {
    __printf_arginfo_int_cold_1();
  }

  *a3 = 1;
  if (*(a1 + 40) < 0)
  {
    v4 = 256;
    goto LABEL_18;
  }

  v3 = *(a1 + 40);
  v4 = 65537;
  if ((v3 & 0x2000) != 0)
  {
    v4 = 8388609;
    goto LABEL_18;
  }

  if (v3 >> 14)
  {
    v4 = 4194305;
    goto LABEL_18;
  }

  if ((v3 & 8) != 0)
  {
    v4 = 131073;
    goto LABEL_18;
  }

  if (v3 > 0xFFF)
  {
    v4 = 2097153;
    goto LABEL_18;
  }

  if (v3 > 0x7FF)
  {
    v4 = 1048577;
    goto LABEL_18;
  }

  if (v3)
  {
LABEL_18:
    *a3 = v4;
    return 1;
  }

  if ((v3 & 4) != 0)
  {
    v4 = 262145;
    goto LABEL_18;
  }

  if ((v3 & 2) != 0)
  {
    v4 = 2;
    goto LABEL_18;
  }

  return 1;
}

uint64_t __printf_render_int(uint64_t *a1, uint64_t a2, unsigned __int16 **a3)
{
  v6 = *(a2 + 40);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a2 + 40);
    v62 = 0;
    if ((v6 & 0x100) != 0)
    {
      path = localeconv_l(*(a2 + 8))->thousands_sep;
      v13 = j__strsignal_r(path, v11, v12);
      v14 = localeconv_l(*(a2 + 8));
      fixed = __fix_nogrouping(v14->grouping);
      v8 = v13;
    }

    else
    {
      path = 0;
      v8 = 0;
      fixed = 0;
    }

    v15 = *(a2 + 28);
    if (v15 > 104)
    {
      if (v15 <= 116)
      {
        if (v15 != 105)
        {
          if (v15 != 111)
          {
            goto LABEL_143;
          }

          goto LABEL_16;
        }

LABEL_19:
        v20 = *a3;
        v62 = *(a2 + 36);
        v21 = *(a2 + 40);
        if ((v21 & 0x7801) == 0 && (v21 & 8) == 0)
        {
          if ((v21 & 4) != 0)
          {
            v22 = *v20;
            if ((v22 & 0x8000) == 0)
            {
              v16 = 0;
              v19 = 0;
              v18 = 10;
              v17 = &__lowercase_hex;
              goto LABEL_134;
            }

            v16 = 0;
            v19 = 0;
            v58 = v22;
          }

          else
          {
            v22 = *v20;
            if ((v21 & 2) == 0)
            {
              if ((v22 & 0x80000000) == 0)
              {
                v19 = 0;
                v16 = 0;
                v17 = &__lowercase_hex;
                v18 = 10;
                goto LABEL_134;
              }

              v16 = 0;
              v19 = 0;
              v23 = -v22;
LABEL_48:
              v62 = 45;
              goto LABEL_49;
            }

            if ((v22 & 0x80) == 0)
            {
              v19 = 0;
              v16 = 0;
              v17 = &__lowercase_hex;
              v18 = 10;
              goto LABEL_37;
            }

            v16 = 0;
            v19 = 0;
            v58 = v22;
          }

          v23 = -v58;
          goto LABEL_48;
        }

        v23 = *v20;
        if ((*v20 & 0x8000000000000000) == 0)
        {
          v16 = 0;
          v19 = 0;
          goto LABEL_49;
        }

        v16 = 0;
        v19 = 0;
        v23 = -v23;
        goto LABEL_48;
      }

      if (v15 == 117)
      {
LABEL_28:
        v19 = 0;
        v16 = 0;
        v17 = &__lowercase_hex;
        v18 = 10;
        goto LABEL_33;
      }

      if (v15 != 120)
      {
        goto LABEL_143;
      }

      v19 = 0;
      v17 = &__lowercase_hex;
    }

    else
    {
      if (v15 <= 87)
      {
        if (v15 != 79)
        {
          if (v15 != 85)
          {
LABEL_143:
            __printf_render_int_cold_2(v15);
          }

          goto LABEL_28;
        }

LABEL_16:
        v16 = 0;
        v17 = &__lowercase_hex;
        v18 = 8;
        v19 = 1;
LABEL_33:
        v24 = *a3;
        v25 = *(a2 + 40);
        if ((v25 & 0x7801) != 0 || (v25 & 8) != 0)
        {
          v23 = *v24;
          goto LABEL_39;
        }

        if ((v25 & 4) != 0)
        {
          v22 = *v24;
        }

        else
        {
          v22 = *v24;
          if ((v25 & 2) != 0)
          {
LABEL_37:
            v23 = v22;
LABEL_39:
            if (v18 == 8)
            {
              v28 = v23;
              v27 = &v65;
              do
              {
                *--v27 = v28 & 7 | 0x30;
                v32 = v28 >= 8;
                v28 >>= 3;
              }

              while (v32);
              goto LABEL_51;
            }

            if (v18 != 10)
            {
              v26 = v23;
              v27 = &v65;
              do
              {
                *--v27 = v17[v26 & 0xF];
                v32 = v26 >= 0x10;
                v26 >>= 4;
              }

              while (v32);
              goto LABEL_51;
            }

LABEL_49:
            if (v23 > 9)
            {
              v59 = v19;
              v60 = v16;
              if ((v23 & 0x8000000000000000) != 0)
              {
                v27 = &v64;
                v64 = (v23 % 0xA) | 0x30;
                v31 = 1;
                v23 /= 0xAuLL;
              }

              else
              {
                v31 = 0;
                v27 = &v65;
              }

              do
              {
                *--v27 = (v23 % 0xA) | 0x30;
                ++v31;
                if ((v7 & 0x100) != 0)
                {
                  v32 = v31 == *fixed && v23 >= 0xA;
                  if (v32 && *fixed != 127)
                  {
                    v27 -= v8;
                    j__mkdtempat_np(v27, path);
                    v31 = 0;
                    if (fixed[1])
                    {
                      ++fixed;
                    }
                  }
                }

                v32 = v23 >= 0xA;
                v23 /= 0xAuLL;
              }

              while (v32);
              v19 = v59;
              v16 = v60;
              goto LABEL_52;
            }

            v27 = &v64;
            v64 = v23 | 0x30;
LABEL_51:
            if (!v23)
            {
              if (!*(a2 + 20))
              {
                v30 = 0;
                v29 = 0;
                if ((v19 & ((*(a2 + 40) & 0x10) >> 4)) == 0)
                {
                  v27 = &v65;
                }

LABEL_76:
                v33 = (&v65 - v27);
                v34 = &v65 - v27 + v30;
                if (v62)
                {
                  v35 = v34 + 1;
                }

                else
                {
                  v35 = v34;
                }

                v36 = *(a2 + 20);
                if (v33 >= v36)
                {
                  if (v36 != -1 || *(a2 + 32) != 48 || (v42 = *(a2 + 24), v43 = __OFSUB__(v42, v35), v44 = v42 - v35, (v44 < 0) ^ v43 | (v44 == 0)))
                  {
                    v37 = 0;
                    v38 = 0;
                    goto LABEL_98;
                  }

                  if ((*(a2 + 40) & 0x40) != 0)
                  {
                    v37 = 0;
                  }

                  else
                  {
                    v37 = v44;
                  }
                }

                else
                {
                  v37 = (v36 - v33);
                }

                v35 += v37;
                v38 = v37 > 0;
                v39 = v27 <= v63 || v37 < 1;
                if (!v39)
                {
                  v40 = &v27[~v63];
                  if (v40 >= (v37 - 1))
                  {
                    v40 = (v37 - 1);
                  }

                  j__mkostemps(&v27[~v40], 48, v40 + 1);
                  do
                  {
                    --v27;
                    v41 = (v37 - 1);
                    v38 = v37 > 1;
                    if (v27 <= v63)
                    {
                      break;
                    }

                    v39 = v37 > 1;
                    LODWORD(v37) = v37 - 1;
                  }

                  while (v39);
                  v37 = v41;
                }

LABEL_98:
                if (v35 <= 127)
                {
                  v45 = v62;
                  if (v62)
                  {
                    v46 = -1;
                  }

                  else
                  {
                    if (!v29)
                    {
                      goto LABEL_110;
                    }

                    *(v27 - 1) = v29[1];
                    v45 = *v29;
                    v46 = -2;
                  }

                  v27 += v46;
                  *v27 = v45;
LABEL_110:
                  v52 = *(a2 + 24);
                  if (&v65 - v27 >= v52 || (*(a2 + 40) & 0x40) != 0)
                  {
                    goto LABEL_120;
                  }

                  v53 = v52 - (&v65 - v27);
                  if (v27 > v63 && v53 >= 1)
                  {
                    v54 = v52 + v27 - v63 - 128;
                    if (&v27[~v63] >= v54)
                    {
                      v55 = v52 + v27 - v63 - 128;
                    }

                    else
                    {
                      v55 = &v27[~v63];
                    }

                    v27 += ~v55;
                    j__mkostemps(v27, 32, v55 + 1);
                    v53 = (v54 - v55);
                  }

                  if (!v53)
                  {
LABEL_120:
                    v48 = 0;
                  }

                  else
                  {
                    v48 = __printf_pad(a1, v53, 0);
                  }

LABEL_126:
                  v56 = __printf_puts(a1, v27, &v65 - v27) + v48;
                  v57 = *(a2 + 24);
                  if (v57 > v56 && (*(a2 + 40) & 0x40) != 0)
                  {
                    v56 = __printf_pad(a1, (v57 - v56), 0) + v56;
                  }

                  __printf_flush(a1);
                  return v56;
                }

                if ((*(a2 + 40) & 0x40) != 0 || (v47 = *(a2 + 24), v47 <= v35))
                {
                  v48 = 0;
                }

                else
                {
                  v48 = __printf_pad(a1, (v47 - v35), 0);
                }

                if (v62)
                {
                  v49 = &v62;
                  v50 = a1;
                  v51 = 1;
                }

                else
                {
                  if (!v29)
                  {
                    goto LABEL_124;
                  }

                  v50 = a1;
                  v49 = v29;
                  v51 = 2;
                }

                v48 += __printf_puts(v50, v49, v51);
LABEL_124:
                if (v38)
                {
                  v48 += __printf_pad(a1, v37, 1);
                }

                goto LABEL_126;
              }

LABEL_75:
              v30 = 0;
              v29 = 0;
              goto LABEL_76;
            }

LABEL_52:
            if ((*(a2 + 40) & 0x10) != 0)
            {
              if (v19)
              {
                *--v27 = 48;
              }

              if (v16)
              {
                if (*(a2 + 28) == 120)
                {
                  v29 = "0x";
                }

                else
                {
                  v29 = "0X";
                }

                v30 = 2;
                goto LABEL_76;
              }
            }

            goto LABEL_75;
          }
        }

LABEL_134:
        v23 = v22;
        goto LABEL_39;
      }

      if (v15 != 88)
      {
        if (v15 != 100)
        {
          goto LABEL_143;
        }

        goto LABEL_19;
      }

      v19 = 0;
      v17 = &__uppercase_hex;
    }

    v18 = 16;
    v16 = 1;
    goto LABEL_33;
  }

  return __xprintf_vector();
}

uint64_t __printf_arginfo_ptr(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a2)
  {
    __printf_arginfo_ptr_cold_1();
  }

  if (*(a1 + 40) < 0)
  {
    v3 = 256;
  }

  else
  {
    v3 = 32;
  }

  *a3 = v3;
  return 1;
}

uint64_t __printf_render_ptr(uint64_t *a1, __int128 *a2, uint64_t **a3)
{
  if (*(a2 + 20) < 0)
  {

    return __xprintf_vector();
  }

  else
  {
    v4 = **a3;
    v5 = a2[3];
    v12 = a2[2];
    v13 = v5;
    v14 = a2[4];
    v15 = *(a2 + 10);
    v6 = a2[1];
    v10 = *a2;
    v11 = v6;
    HIDWORD(v11) = 120;
    WORD4(v12) |= 0x11u;
    v8 = &v9;
    v9 = v4;
    return __printf_render_int(a1, &v10, &v8);
  }
}

uint64_t __printf_arginfo_quote(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __printf_arginfo_quote_cold_1();
  }

  *a3 = 32;
  return 1;
}

uint64_t __printf_render_quote(uint64_t *a1, char *a2, unsigned __int8 ***a3)
{
  v3 = a2;
  v4 = a1;
  v5 = **a3;
  if (!v5)
  {
    v25 = "(null)";
    v26 = 8;
LABEL_44:

    return __printf_out(a1, a2, v25, v26);
  }

  LOBYTE(v6) = *v5;
  if (!*v5)
  {
    v25 = "";
    v26 = 2;
    goto LABEL_44;
  }

  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v6;
    if ((v6 & 0x80) != 0)
    {
      v10 = ___runetype(v6);
    }

    else
    {
      v10 = _DefaultRuneLocale.__runetype[v6];
    }

    v11 = (v10 >> 14) & 1;
    if (v9 == 92 || v9 == 34)
    {
      v11 = 1;
    }

    v7 += v11;
    v6 = v5[v8++];
  }

  while (v6);
  if (!v7)
  {
    v26 = j__strsignal_r(v5, a2, a3);
    a1 = v4;
    a2 = v3;
    v25 = v5;
    goto LABEL_44;
  }

  v15 = __printf_out(v4, v3, "", 1);
  v16 = *v5;
  if (!*v5)
  {
    goto LABEL_40;
  }

  v17 = v5 + 1;
  v18 = v5;
  do
  {
    if (v16 <= 0x1Fu)
    {
      switch(v16)
      {
        case 9:
          v19 = "\\t";
          goto LABEL_34;
        case 10:
          v19 = "\\n";
          goto LABEL_34;
        case 13:
          v19 = "\\r";
          goto LABEL_34;
      }

LABEL_25:
      v20 = v16;
      if (v16 < 0)
      {
        if ((___runetype(v16) & 0x4000) == 0)
        {
          goto LABEL_37;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v16] & 0x4000) == 0)
      {
        goto LABEL_37;
      }

      v27 = v20;
      v19 = v28;
      sprintf(v28, "\\%03o", v27);
      goto LABEL_34;
    }

    if (v16 == 32)
    {
      v19 = " ";
      goto LABEL_34;
    }

    if (v16 == 34)
    {
      v19 = "\\"";
      goto LABEL_34;
    }

    v19 = "\\\";
    if (v16 != 92)
    {
      goto LABEL_25;
    }

LABEL_34:
    if (v17 - 1 != v5)
    {
      v15 += __printf_out(v4, v3, v5, (v18 - v5));
    }

    v21 = j__strsignal_r(v19, v13, v14);
    v15 += __printf_out(v4, v3, v19, v21);
    v5 = v17;
LABEL_37:
    v22 = *v17++;
    v16 = v22;
    ++v18;
  }

  while (v22);
  if (v17 - 1 != v5)
  {
    v15 += __printf_out(v4, v3, v5, (v18 - v5));
  }

LABEL_40:
  v23 = __printf_out(v4, v3, "", 1);
  __printf_flush(v4);
  return (v23 + v15);
}

uint64_t __printf_arginfo_chr(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a2)
  {
    __printf_arginfo_chr_cold_1();
  }

  if (*(a1 + 40) < 0)
  {
    v3 = 256;
  }

  else
  {
    v3 = 4;
    if ((*(a1 + 40) & 8) == 0)
    {
      if (*(a1 + 28) == 67)
      {
        v3 = 4;
      }

      else
      {
        v3 = 1;
      }
    }
  }

  *a3 = v3;
  return 1;
}

uint64_t __printf_render_chr(uint64_t *a1, uint64_t a2)
{
  v19 = 0;
  memset(&v20, 0, sizeof(v20));
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v18 - ((v6 + 15) & 0x1FFFFFFF0);
  v9 = *(v8 + 40);
  if (v9 < 0)
  {
    return __xprintf_vector(a1, a2);
  }

  if ((v9 & 8) == 0 && *(a2 + 28) != 67)
  {
    v19 = **v4;
    v15 = &v19;
    v13 = a1;
    v14 = a2;
    v12 = 1;
    goto LABEL_9;
  }

  v10 = **v4;
  *v20.__mbstate8 = v5;
  *(&v20._mbstateL + 1) = v5;
  *(&v20._mbstateL + 2) = v5;
  *(&v20._mbstateL + 3) = v5;
  *(&v20._mbstateL + 4) = v5;
  *(&v20._mbstateL + 5) = v5;
  *(&v20._mbstateL + 6) = v5;
  *(&v20._mbstateL + 7) = v5;
  v11 = wcrtomb_l(v7, v10, &v20, *(a2 + 8));
  if (v11 != -1)
  {
    v12 = v11;
    v13 = a1;
    v14 = a2;
    v15 = v7;
LABEL_9:
    v16 = __printf_out(v13, v14, v15, v12);
    __printf_flush(a1);
    return v16;
  }

  return 0xFFFFFFFFLL;
}

uint64_t __printf_arginfo_time(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __printf_arginfo_time_cold_1();
  }

  *a3 = 32;
  return 1;
}

uint64_t __printf_render_time(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v5 = *(a2 + 40);
  if ((v5 & 8) != 0)
  {
    v6 = **a3;
    v9 = 1000 * *(v6 + 8);
    v10 = 6;
  }

  else
  {
    v6 = **a3;
    if ((v5 & 1) == 0)
    {
      v7 = 0;
      v8 = 0;
      goto LABEL_12;
    }

    v9 = *(v6 + 8);
    v10 = 9;
  }

  if (*(a2 + 20) >= 0)
  {
    v7 = *(a2 + 20);
  }

  else
  {
    v7 = v10;
  }

  if (v7)
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

LABEL_12:
  v11 = *v6;
  if ((v5 & 0x10) == 0)
  {
    v12 = v21;
    v13 = sprintf(v21, "%jd");
    goto LABEL_35;
  }

  if (v11 <= 31535999)
  {
    v12 = v21;
    v14 = *v6;
    if (v11 <= 86399)
    {
      if (v11 <= 3599)
      {
        v15 = *v6;
        if (v11 <= 59)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v12 = &v21[sprintf(v21, "%jdy", v11 / 0x1E13380uLL)];
  v14 = v11 % 0x1E13380uLL;
  if (v7 || v14)
  {
LABEL_19:
    v12 += sprintf(v12, "%jdd", v14 / 0x15180uLL);
    v14 = v14 % 0x15180;
    if (v7)
    {
      goto LABEL_23;
    }
  }

  if (!v14)
  {
LABEL_24:
    if (!v14)
    {
      v15 = 0;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_23:
  v12 += sprintf(v12, "%jdh", v14 / 0xE10uLL);
  v14 = v14 % 0xE10;
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_27:
  v12 += sprintf(v12, "%jdm", v14 / 0x3Cu);
  v15 = v14 % 0x3Cu;
LABEL_28:
  if (!v7 && !v15 && v11 != 0)
  {
    goto LABEL_41;
  }

  v13 = sprintf(v12, "%jds");
LABEL_35:
  v12 += v13;
  if (v7)
  {
    if (v7 <= 8)
    {
      v17 = v7 - 9;
      do
      {
        v8 /= 10;
      }

      while (!__CFADD__(v17++, 1));
    }

    LODWORD(v12) = v12 + sprintf(v12, ".%.*d", v7, v8);
  }

LABEL_41:
  v19 = __printf_out(a1, a2, v21, v12 - v21);
  __printf_flush(a1);
  return v19;
}

uint64_t __printf_arginfo_vis(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __printf_arginfo_vis_cold_1();
  }

  *a3 = 32;
  return 1;
}

uint64_t __printf_render_vis(uint64_t *a1, uint64_t a2, const char ***a3)
{
  v5 = **a3;
  if (v5)
  {
    v6 = *(a2 + 20);
    if ((v6 & 0x80000000) != 0)
    {
      v6 = j__strsignal_r(**a3, a2, a3);
    }

    v7 = malloc_type_malloc((4 * v6) | 1, 0x64B5F4F2uLL);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = v7;
    v9 = *(a2 + 40);
    if ((v9 & 0x80) != 0)
    {
      v10 = v6;
      v11 = v5;
      v12 = 156;
    }

    else if (*(a2 + 32) == 48)
    {
      v10 = v6;
      v11 = v5;
      v12 = 29;
    }

    else
    {
      v10 = v6;
      v11 = v5;
      if ((v9 & 0x10) != 0)
      {
        v12 = 28;
      }

      else
      {
        v12 = 31;
      }
    }

    v15 = strvisx(v7, v11, v10, v12);
    v14 = __printf_out(a1, a2, v8, v15) + v15;
    __printf_flush(a1);
    free(v8);
    return v14;
  }

  else
  {

    return __printf_out(a1, a2, "(null)", 6);
  }
}

uint64_t __printf_flush(uint64_t *a1)
{
  result = __sfvwrite(*a1, (a1 + 1));
  a1[19] = (a1 + 3);
  a1[1] = (a1 + 3);
  a1[2] = 0;
  return result;
}

uint64_t __printf_pad(uint64_t *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = &zeroes_1;
  }

  else
  {
    v3 = &blanks_1;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v4 = a2;
  if (a2 < 0x11)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    do
    {
      __printf_puts(a1, v3, 16);
      v6 += 16;
      v4 = v7 - 16;
      v8 = v7 > 0x20;
      v7 -= 16;
    }

    while (v8);
  }

  __printf_puts(a1, v3, v4);
  return (v6 + v4);
}

uint64_t __printf_arginfo_n(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    __printf_arginfo_n_cold_1();
  }

  *a3 = 32;
  return 1;
}

uint64_t __printf_render_n(uint64_t a1, uint64_t a2, _BYTE **a3)
{
  v3 = *a3;
  v4 = *(a2 + 40);
  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 44);
    if (off_1EAC9EA90)
    {
      (off_1EAC9EA90)(v3, 1);
    }

    *v3 = v6;
  }

  else if ((v4 & 4) != 0)
  {
    v7 = *(a2 + 44);
    if (off_1EAC9EA90)
    {
      (off_1EAC9EA90)(v3, 2);
    }

    *v3 = v7;
  }

  else
  {
    if ((v4 & 8) != 0 || (v4 & 1) != 0 || (*(a2 + 40) & 0x1000) != 0 || (*(a2 + 40) & 0x2000) != 0 || (*(a2 + 40) & 0x800) != 0)
    {
      v5 = *(a2 + 44);
    }

    else
    {
      LODWORD(v5) = *(a2 + 44);
      if ((*(a2 + 40) & 0x4000) == 0)
      {
        if (off_1EAC9EA90)
        {
          (off_1EAC9EA90)(v3, 4);
        }

        *v3 = v5;
        return 0;
      }

      v5 = v5;
    }

    if (off_1EAC9EA90)
    {
      (off_1EAC9EA90)(v3, 8);
    }

    *v3 = v5;
  }

  return 0;
}

uint64_t __xprintf_vector(uint64_t *a1, uint64_t a2, _DWORD **a3)
{
  v4 = *(a2 + 48);
  v32 = *(a2 + 32);
  v33 = v4;
  v34 = *(a2 + 64);
  v35 = *(a2 + 80);
  v5 = *(a2 + 16);
  v31[0] = *a2;
  v31[1] = v5;
  v6 = *a3;
  v36 = *(a2 + 16);
  if (v36 == 88)
  {
    if (*(a2 + 28) == 99)
    {
      v36 = 0;
      *(&v33 + 1) = &v36;
      *&v34 = &v36;
      goto LABEL_8;
    }

    v36 = 32;
    *(&v33 + 1) = &v36;
    goto LABEL_7;
  }

  *(&v33 + 1) = &v36;
  *&v34 = &v36;
  if (v36)
  {
LABEL_7:
    *&v34 = &v37;
  }

LABEL_8:
  v7 = WORD4(v32);
  v8 = WORD4(v32) & 0x7FFF;
  WORD4(v32) &= ~0x8000u;
  v9 = *(a2 + 40);
  if ((v9 & 4) != 0)
  {
    if (*(a2 + 28) == 112)
    {
      v30 = *v6;
      v29 = &v30;
      LODWORD(v11) = __printf_render_ptr(a1, v31, &v29);
      for (i = 2; i != 16; i += 2)
      {
        v15 = v34 - DWORD2(v33);
        __printf_puts(a1, *(&v33 + 1), (v34 - DWORD2(v33)));
        v30 = *(v6 + i);
        v11 = v11 + __printf_render_ptr(a1, v31, &v29) + v15;
      }
    }

    else
    {
      LODWORD(v29) = *v6;
      *&v30 = COERCE_DOUBLE(&v29);
      LODWORD(v11) = __printf_render_int(a1, v31, &v30);
      for (j = 2; j != 16; j += 2)
      {
        v19 = v34 - DWORD2(v33);
        __printf_puts(a1, *(&v33 + 1), (v34 - DWORD2(v33)));
        LODWORD(v29) = *(v6 + j);
        v11 = v11 + __printf_render_int(a1, v31, &v30) + v19;
      }
    }
  }

  else if ((v9 & 8) != 0)
  {
    WORD4(v32) = v7 & 0x7FF7;
    if (*(a2 + 28) == 112)
    {
      v30 = *v6;
      v29 = &v30;
      LODWORD(v11) = __printf_render_ptr(a1, v31, &v29);
      for (k = 1; k != 4; ++k)
      {
        v17 = v34 - DWORD2(v33);
        __printf_puts(a1, *(&v33 + 1), (v34 - DWORD2(v33)));
        v30 = v6[k];
        v11 = v11 + __printf_render_ptr(a1, v31, &v29) + v17;
      }
    }

    else
    {
      LODWORD(v29) = *v6;
      *&v30 = COERCE_DOUBLE(&v29);
      LODWORD(v11) = __printf_render_int(a1, v31, &v30);
      for (m = 1; m != 4; ++m)
      {
        v21 = v34 - DWORD2(v33);
        __printf_puts(a1, *(&v33 + 1), (v34 - DWORD2(v33)));
        LODWORD(v29) = v6[m];
        v11 = v11 + __printf_render_int(a1, v31, &v30) + v21;
      }
    }
  }

  else
  {
    v10 = (*(a2 + 28) - 65);
    if (v10 > 0x37)
    {
LABEL_37:
      v30 = *v6;
      v29 = &v30;
      LODWORD(v11) = __printf_render_ptr(a1, v31, &v29);
      for (n = 1; n != 16; ++n)
      {
        v28 = v34 - DWORD2(v33);
        __printf_puts(a1, *(&v33 + 1), (v34 - DWORD2(v33)));
        v30 = *(v6 + n);
        v11 = v11 + __printf_render_ptr(a1, v31, &v29) + v28;
      }

      return v11;
    }

    if (((1 << (*(a2 + 28) - 65)) & 0x7100000051) == 0)
    {
      if (((1 << (*(a2 + 28) - 65)) & 0x90410800800000) != 0)
      {
        WORD4(v32) = v8 | 2;
        LODWORD(v29) = *v6;
        *&v30 = COERCE_DOUBLE(&v29);
        LODWORD(v11) = __printf_render_int(a1, v31, &v30);
        for (ii = 1; ii != 16; ++ii)
        {
          v13 = v34 - DWORD2(v33);
          __printf_puts(a1, *(&v33 + 1), (v34 - DWORD2(v33)));
          LODWORD(v29) = *(v6 + ii);
          v11 = v11 + __printf_render_int(a1, v31, &v30) + v13;
        }

        return v11;
      }

      if (v10 == 34)
      {
        LODWORD(v29) = *v6;
        *&v30 = COERCE_DOUBLE(&v29);
        LODWORD(v11) = __printf_render_chr(a1, v31);
        for (jj = 1; jj != 16; ++jj)
        {
          v26 = v34 - DWORD2(v33);
          __printf_puts(a1, *(&v33 + 1), (v34 - DWORD2(v33)));
          LODWORD(v29) = *(v6 + jj);
          v11 = v11 + __printf_render_chr(a1, v31) + v26;
        }

        return v11;
      }

      goto LABEL_37;
    }

    *&v30 = *v6;
    v29 = &v30;
    LODWORD(v11) = __printf_render_float(a1, v31, &v29);
    for (kk = 1; kk != 4; ++kk)
    {
      v23 = v34 - DWORD2(v33);
      __printf_puts(a1, *(&v33 + 1), (v34 - DWORD2(v33)));
      *&v30 = *&v6[kk];
      v11 = v11 + __printf_render_float(a1, v31, &v29) + v23;
    }
  }

  return v11;
}

uint64_t at_quick_exit(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v2[1] = a1;
  v3 = *v2;
  v4 = *v2;
  atomic_compare_exchange_strong(&handlers, &v4, v2);
  if (v4 != v3)
  {
    v5 = v4;
    do
    {
      *v2 = v4;
      atomic_compare_exchange_strong(&handlers, &v5, v2);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }

  return 0;
}

void quick_exit(int a1)
{
  for (i = atomic_load_explicit(&handlers, memory_order_acquire); i; i = *i)
  {
    (*(i + 8))();
  }

  _Exit(a1);
}

uint64_t __default_utx_init()
{
  v0 = malloc_type_calloc(1uLL, 0x2E0uLL, 0x10300404E040BDAuLL);
  __utx__ = v0;
  *v0 = 0x17600787475;
  result = pthread_mutex_init((v0 + 648), 0);
  v2 = __utx__;
  *(__utx__ + 712) = "/var/run/utmpx";
  *(v2 + 728) |= 1u;
  return result;
}

uint64_t _setutxent(uint64_t a1)
{
  if (!a1)
  {
    _setutxent_cold_2();
  }

  if (*a1 != 0x17600787475)
  {
    _setutxent_cold_1();
  }

  pthread_mutex_lock((a1 + 648));
  MEMORY[0x193AD5FD0](a1 + 8, 640);
  v2 = *(a1 + 720);
  if (v2)
  {
    fseeko(v2, 628, 0);
  }

  return pthread_mutex_unlock((a1 + 648));
}

void setutxent(void)
{
  pthread_once(&__default_utx_once, __default_utx_init);
  v0 = __utx__;

  _setutxent(v0);
}

int *__endutxent(uint64_t a1)
{
  result = MEMORY[0x193AD5FD0](a1 + 8, 640);
  if (*(a1 + 720))
  {
    v3 = *__error();
    fclose(*(a1 + 720));
    result = __error();
    *result = v3;
    *(a1 + 720) = 0;
    *(a1 + 728) &= ~2u;
  }

  return result;
}

uint64_t _endutxent(uint64_t a1)
{
  if (!a1)
  {
    _endutxent_cold_2();
  }

  if (*a1 != 0x17600787475)
  {
    _endutxent_cold_1();
  }

  pthread_mutex_lock((a1 + 648));
  __endutxent(a1);

  return pthread_mutex_unlock((a1 + 648));
}

void endutxent(void)
{
  pthread_once(&__default_utx_once, __default_utx_init);
  v0 = __utx__;

  _endutxent(v0);
}

uint64_t __getutxent(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(__ptr, 0, sizeof(__ptr));
  v2 = *(a1 + 720);
  if (!v2)
  {
    memset(&v8, 0, sizeof(v8));
    v4 = fopen(*(a1 + 712), "r+");
    *(a1 + 720) = v4;
    if (!v4)
    {
      v4 = fopen(*(a1 + 712), "w+");
      *(a1 + 720) = v4;
      if (!v4)
      {
        v4 = fopen(*(a1 + 712), "r");
        *(a1 + 720) = v4;
        if (!v4)
        {
          goto LABEL_17;
        }

        *(a1 + 728) |= 2u;
      }
    }

    fileno(v4);
    fcntl_NOCANCEL();
    v5 = fileno(*(a1 + 720));
    if (fstat(v5, &v8) != -1)
    {
      if (!v8.st_size)
      {
        MEMORY[0x193AD5FD0](__ptr + 8, 620);
        WORD4(v10) = 10;
        strcpy(__ptr, "utmpx-1.00");
        if (fwrite(__ptr, 0x274uLL, 1uLL, *(a1 + 720)) != 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (fread(__ptr, 0x274uLL, 1uLL, *(a1 + 720)) == 1)
      {
        if (*&__ptr[0] ^ 0x2E312D78706D7475 | *(__ptr + 3) ^ 0x30302E312D7870 || WORD4(v10) != 10)
        {
          *__error() = 22;
          goto LABEL_16;
        }

LABEL_15:
        v2 = *(a1 + 720);
        goto LABEL_2;
      }
    }

LABEL_16:
    v6 = *__error();
    fclose(*(a1 + 720));
    *__error() = v6;
    *(a1 + 720) = 0;
    goto LABEL_17;
  }

LABEL_2:
  if (fread(__ptr, 0x274uLL, 1uLL, v2) != 1)
  {
LABEL_17:
    MEMORY[0x193AD5FD0](a1 + 8, 640);
    return 0;
  }

  v3 = a1 + 8;
  _utmpx32_64(__ptr, v3);
  return v3;
}

uint64_t _getutxent(uint64_t a1)
{
  if (!a1)
  {
    _getutxent_cold_2();
  }

  if (*a1 != 0x17600787475)
  {
    _getutxent_cold_1();
  }

  pthread_mutex_lock((a1 + 648));
  v2 = __getutxent(a1);
  pthread_mutex_unlock((a1 + 648));
  return v2;
}

utmpx *getutxent(void)
{
  pthread_once(&__default_utx_once, __default_utx_init);
  v0 = __utx__;

  return _getutxent(v0);
}

uint64_t _getutxid(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 296))
  {
    return 0;
  }

  if (!a1)
  {
    _getutxid_cold_2();
  }

  if (*a1 != 0x17600787475)
  {
    _getutxid_cold_1();
  }

  memset(v7, 0, 512);
  pthread_mutex_lock((a1 + 648));
  v4 = _utmpx_working_copy(a2, v7, 1);
  if (v4)
  {
    v5 = __getutxid(a1, v4);
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock((a1 + 648));
  return v5;
}

uint64_t __getutxid(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 304);
    if (!*(a1 + 304))
    {
      goto LABEL_8;
    }

    v5 = *(a2 + 296);
    if ((v5 - 5) >= 4)
    {
      break;
    }

    if ((v4 - 5) <= 3)
    {
      v4 = *(a1 + 264);
      v5 = *(a2 + 256);
      goto LABEL_7;
    }

LABEL_8:
    result = __getutxent(a1);
    if (!result)
    {
      return result;
    }
  }

  if ((v5 - 1) > 3)
  {
    return 0;
  }

LABEL_7:
  if (v4 != v5)
  {
    goto LABEL_8;
  }

  return a1 + 8;
}

utmpx *__cdecl getutxid(const utmpx *a1)
{
  pthread_once(&__default_utx_once, __default_utx_init);
  v2 = __utx__;

  return _getutxid(v2, a1);
}

uint64_t _getutxline(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    _getutxline_cold_2();
  }

  if (*a1 != 0x17600787475)
  {
    _getutxline_cold_1();
  }

  pthread_mutex_lock((a1 + 648));
  v6 = a1 + 8;
  while ((*(a1 + 304) & 0xFFFE) != 6 || j__strsvisx((a1 + 268), (a2 + 260), 0x20uLL, v4, v5))
  {
    if (!__getutxent(a1))
    {
      v6 = 0;
      break;
    }
  }

  pthread_mutex_unlock((a1 + 648));
  return v6;
}

utmpx *__cdecl getutxline(const utmpx *a1)
{
  pthread_once(&__default_utx_once, __default_utx_init);
  v2 = __utx__;

  return _getutxline(v2, a1);
}

char *_pututxline(uint64_t a1, char *a2)
{
  v2 = a2;
  if (a2)
  {
    if (!a1)
    {
      _pututxline_cold_2();
    }

    if (*a1 != 0x17600787475)
    {
      _pututxline_cold_1();
    }

    pthread_mutex_lock((a1 + 648));
    pthread_once(&__default_utx_once, __default_utx_init);
    v2 = __pututxline(__utx__, v2);
    if (v2)
    {
      pthread_once(&__default_utx_once, __default_utx_init);
      if (*(__utx__ + 728))
      {
        _utmpx_asl(v2);
      }
    }

    pthread_mutex_unlock((a1 + 648));
  }

  else
  {
    *__error() = 22;
  }

  return v2;
}

uint64_t __pututxline(uint64_t a1, char *path)
{
  memset(v18, 0, 512);
  memset(__ptr, 0, 512);
  v16 = -1;
  if ((*(a1 + 728) & 1) != 0 && ((v4 = *(a1 + 720), (*(a1 + 728) & 2) != 0) && v4 || !v4 && geteuid()) || !*(a1 + 720) && ((__getutxent(a1), !*(a1 + 720)) || (*(a1 + 728) & 2) != 0))
  {
    v11 = __error();
    v9 = 0;
    v12 = 1;
LABEL_28:
    *v11 = v12;
    return v9;
  }

  v5 = _utmpx_working_copy(path, v18, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = __getutxid(a1, v5);
  if (v7)
  {
    goto LABEL_11;
  }

  MEMORY[0x193AD5FD0](a1 + 8, 640);
  v8 = *(a1 + 720);
  if (v8)
  {
    fseeko(v8, 628, 0);
  }

  v7 = __getutxid(a1, v6);
  if (v7)
  {
    goto LABEL_11;
  }

  if (*(v6 + 296) == 8 && (*(path + 148) & 0x4000) != 0)
  {
    goto LABEL_37;
  }

  v13 = fileno(*(a1 + 720));
  v16 = lseek(v13, 0, 1);
  if (v16 < 0)
  {
    return 0;
  }

  fileno(*(a1 + 720));
  if (fcntl_NOCANCEL() == -1)
  {
    return 0;
  }

  v14 = fseeko(*(a1 + 720), 0, 2);
  v7 = 0;
  v9 = 0;
  if (v14 != -1)
  {
LABEL_11:
    if ((v16 & 0x8000000000000000) == 0)
    {
LABEL_16:
      _utmpx64_32(v6, __ptr);
      if (fwrite(__ptr, 0x274uLL, 1uLL, *(a1 + 720)) != 1 || fflush(*(a1 + 720)) == -1)
      {
        v9 = 0;
      }

      else
      {
        v9 = a1 + 8;
        j__mkdtempat_np(a1 + 8, v6);
        notify_post("com.apple.system.utmpx");
      }

      goto LABEL_23;
    }

    if (*(v6 + 296) != 8 || (*(path + 148) & 0x4000) == 0 || *(v7 + 296) == 7)
    {
      if (fseeko(*(a1 + 720), -628, 1) == -1)
      {
        return 0;
      }

      goto LABEL_16;
    }

LABEL_37:
    v11 = __error();
    v9 = 0;
    v12 = 22;
    goto LABEL_28;
  }

LABEL_23:
  if ((v16 & 0x8000000000000000) == 0)
  {
    v10 = *__error();
    fileno(*(a1 + 720));
    if (fcntl_NOCANCEL() != -1)
    {
      *__error() = v10;
      return v9;
    }

    return 0;
  }

  return v9;
}

utmpx *__cdecl pututxline(const utmpx *a1)
{
  pthread_once(&__default_utx_once, __default_utx_init);
  v2 = __utx__;

  return _pututxline(v2, a1->ut_user);
}

uint64_t __utmpxname(uint64_t a1, char *__sig, size_t a3)
{
  if (!__sig)
  {
    v9 = *(a1 + 728);
    if ((v9 & 1) == 0)
    {
      free(*(a1 + 712));
      v9 = *(a1 + 728);
    }

    *(a1 + 712) = "/var/run/utmpx";
    *(a1 + 728) = v9 | 1;
    goto LABEL_13;
  }

  v5 = j__strsignal_r(__sig, __sig, a3);
  if (v5 > 0x3FF || __sig[v5 - 1] != 120)
  {
    return 0;
  }

  v6 = *(a1 + 728);
  if (v6)
  {
    v7 = 0;
    *(a1 + 712) = 0;
  }

  else
  {
    v7 = *(a1 + 712);
  }

  *(a1 + 728) = v6 & 0xFE;
  result = reallocf(v7, v5 + 1);
  *(a1 + 712) = result;
  if (result)
  {
    j__strnstr(result, __sig, v10);
LABEL_13:
    __endutxent(a1);
    return 1;
  }

  return result;
}

uint64_t _utmpxname(uint64_t a1, char *a2)
{
  if (!a1)
  {
    _utmpxname_cold_2();
  }

  if (*a1 != 0x17600787475)
  {
    _utmpxname_cold_1();
  }

  pthread_mutex_lock((a1 + 648));
  v5 = __utmpxname(a1, a2, v4);
  pthread_mutex_unlock((a1 + 648));
  return v5;
}

int utmpxname(const char *a1)
{
  pthread_once(&__default_utx_once, __default_utx_init);
  v2 = __utx__;

  return _utmpxname(v2, a1);
}

ssize_t strfmon(char *a1, size_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__global_locale;
  }

  return _strfmon(a1, a2, v6, a3, va);
}

uint64_t _strfmon(char *a1, unint64_t a2, locale_t a3, unsigned __int8 *a4, double *a5)
{
  v142 = a5;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v9 = localeconv_l(a3);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v137 = a2;
  v13 = &a1[a2];
  v14 = &__global_locale;
  if (a3 != -1)
  {
    v14 = a3;
  }

  v138 = a3;
  if (a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = __c_locale;
  }

  v16 = 32;
  v17 = a1;
LABEL_7:
  while (2)
  {
    while (2)
    {
      v18 = -v17;
      for (i = v17; ; ++i)
      {
        v20 = *a4;
        if (v20 == 37)
        {
          break;
        }

        if (!*a4)
        {
          if (i < v13)
          {
            *i = 0;
            free(v10);
            free(v12);
            return i - a1;
          }

          goto LABEL_259;
        }

LABEL_13:
        if (i >= v13)
        {
          goto LABEL_259;
        }

        ++a4;
        *i = v20;
        --v18;
      }

      if (a4[1] == 37)
      {
        ++a4;
        goto LABEL_13;
      }

      v136 = a1;
      v21 = 32;
      v22 = 5;
      while (2)
      {
        while (2)
        {
          while (2)
          {
            ++a4;
            while (1)
            {
              v23 = *a4;
              if (v23 != 61)
              {
                break;
              }

              v21 = a4[1];
              a4 += 2;
              if (!v21)
              {
                goto LABEL_266;
              }
            }

            if (*a4 > 0x2Au)
            {
              if (v23 != 43)
              {
                if (v23 == 45)
                {
                  v22 |= 0x20u;
                  continue;
                }

                if (v23 == 94)
                {
                  v22 &= ~1u;
                  continue;
                }

                goto LABEL_33;
              }

              if ((v22 & 2) == 0)
              {
                v22 |= 6u;
                continue;
              }

LABEL_266:
              v120 = 22;
              goto LABEL_260;
            }

            break;
          }

          if (v23 == 33)
          {
            v22 |= 0x10u;
            continue;
          }

          break;
        }

        if (v23 == 40)
        {
          if ((v22 & 2) == 0)
          {
            v22 |= 0xAu;
            continue;
          }

          goto LABEL_266;
        }

        break;
      }

LABEL_33:
      v24 = *a4;
      if (v23 < 0)
      {
        runetype = (*(*(v15 + 166) + 120) + 60);
      }

      else
      {
        runetype = _DefaultRuneLocale.__runetype;
      }

      if ((runetype[*a4] & 0x400) == 0)
      {
        v26 = -1;
        goto LABEL_46;
      }

      v26 = 0;
      if ((v23 & 0x80) == 0)
      {
LABEL_39:
        v27 = _DefaultRuneLocale.__runetype;
        goto LABEL_41;
      }

      while (1)
      {
        v27 = (*(*(v15 + 166) + 120) + 60);
LABEL_41:
        if ((v27[v24] & 0x400) == 0)
        {
          break;
        }

        v26 = 10 * v26 + v24 - 48;
        if (v26 > 0xFFFFFF)
        {
          goto LABEL_259;
        }

        v28 = *++a4;
        v24 = v28;
        if ((v28 & 0x80) == 0)
        {
          goto LABEL_39;
        }
      }

      if (i - v136 + v26 >= v137)
      {
        goto LABEL_259;
      }

LABEL_46:
      if (v24 == 35)
      {
        v29 = *++a4;
        v24 = v29;
        if (v29 < 0)
        {
          v30 = (*(*(v15 + 166) + 120) + 60);
        }

        else
        {
          v30 = _DefaultRuneLocale.__runetype;
        }

        if ((v30[v24] & 0x400) == 0)
        {
          goto LABEL_266;
        }

        v31 = 0;
        if ((v24 & 0x80) == 0)
        {
LABEL_53:
          v32 = _DefaultRuneLocale.__runetype;
          goto LABEL_55;
        }

        while (1)
        {
          v32 = (*(*(v15 + 166) + 120) + 60);
LABEL_55:
          if ((v32[v24] & 0x400) == 0)
          {
            break;
          }

          v31 = 10 * v31 + v24 - 48;
          if (v31 > 0xFFFFFF)
          {
            goto LABEL_259;
          }

          v33 = *++a4;
          v24 = v33;
          if ((v33 & 0x80) == 0)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v31 = -1;
      }

      if (v24 == 46)
      {
        v34 = *++a4;
        v24 = v34;
        if (v34 < 0)
        {
          v35 = (*(*(v15 + 166) + 120) + 60);
        }

        else
        {
          v35 = _DefaultRuneLocale.__runetype;
        }

        if ((v35[v24] & 0x400) == 0)
        {
          goto LABEL_266;
        }

        v36 = 0;
        if ((v24 & 0x80) == 0)
        {
LABEL_66:
          v37 = _DefaultRuneLocale.__runetype;
          goto LABEL_68;
        }

        while (1)
        {
          v37 = (*(*(v15 + 166) + 120) + 60);
LABEL_68:
          if ((v37[v24] & 0x400) == 0)
          {
            break;
          }

          v36 = (10 * v36 + v24 - 48);
          if (v36 > 0xFFFFFF)
          {
            goto LABEL_259;
          }

          v38 = *++a4;
          v24 = v38;
          if ((v38 & 0x80) == 0)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v36 = 0xFFFFFFFFLL;
      }

      v132 = v10;
      v126 = v15;
      v128 = v11;
      v130 = v31;
      if (v24 == 110)
      {
        v39 = v9;
        v40 = v22 & 0xFFFFFFBF;
      }

      else
      {
        if (v24 != 105)
        {
          goto LABEL_266;
        }

        v39 = v9;
        v40 = v22 | 0x40;
      }

      if (v12)
      {
        v41 = v12;
        v42 = v16;
        free(v41);
        v16 = v42;
      }

      if ((v40 & 0x40) != 0)
      {
        v43 = strdup(*(v39 + 24));
        if (!v43)
        {
          goto LABEL_267;
        }

        v127 = v43[3];
        v43[3] = 0;
      }

      else
      {
        v127 = v16;
        v43 = strdup(*(v39 + 32));
        if (!v43)
        {
LABEL_267:
          v12 = 0;
          v10 = v132;
          goto LABEL_261;
        }
      }

      v131 = v43;
      v44 = v142++;
      v45 = *v44;
      if (*v44 >= 0.0)
      {
        v46 = v40;
      }

      else
      {
        v46 = v40 | 0x80;
      }

      if (v45 >= 0.0)
      {
        v47 = *v44;
      }

      else
      {
        v47 = -v45;
      }

      if ((v130 & 0x80000000) == 0)
      {
        v134 = __calc_left_pad(v46 ^ 0x80, v43, v39);
        v48 = __calc_left_pad(v46, v131, v39);
        v128 = (v134 - v48) & ~((v134 - v48) >> 31);
      }

      v135 = v46;
      v143 = 0;
      fixed = __fix_nogrouping(*(v39 + 56));
      v50 = **(v39 + 40);
      if (!v50)
      {
        v50 = **v39;
      }

      v51 = *(v39 + 48);
      v52 = *v51;
      v53 = 80;
      v12 = v131;
      if (!*v51)
      {
        v52 = **(v39 + 8);
      }

      if (v130 == -1)
      {
        v54 = 0;
      }

      else
      {
        v54 = v130;
      }

      if (v36 == -1)
      {
        if ((v135 & 0x40) == 0)
        {
          v53 = 81;
        }

        v55 = *(v39 + v53);
        if (v55 == 127)
        {
          LOBYTE(v55) = 2;
        }

        v36 = v55;
      }

      v129 = v39;
      v125 = fixed;
      v124 = v52;
      v122 = v50;
      if (v135)
      {
        v56 = *fixed;
        if ((*fixed - 127) >= 0x82u)
        {
          v57 = 0;
          v58 = v54;
          while (v58 > v56)
          {
            v59 = fixed[++v57];
            if (v59 == 127)
            {
              break;
            }

            v60 = v56;
            v58 -= v56;
            v56 = v59;
            if (!v59)
            {
              LODWORD(v57) = (v58 - 1) / v60 + v57;
              break;
            }
          }
        }

        else
        {
          LODWORD(v57) = 0;
        }

        v54 += v57;
      }

      snprintf_l(v144, 0x20uLL, v138, "%%%d.%df", (v36 + v54 + 1), v36);
      v61 = asprintf_l(&v143, v138, v144, *&v47);
      if (v61 < 0)
      {
LABEL_269:
        v121 = *__error();
        goto LABEL_264;
      }

      v64 = v61;
      v65 = (2 * j__strsignal_r(v143, v62, v63)) | 1;
      v66 = malloc_type_malloc(v65, 0xF80C324CuLL);
      if (!v66)
      {
        free(v143);
        goto LABEL_269;
      }

      v133 = v66;
      MEMORY[0x193AD5FD0](v66, v65);
      if (*v143 == 32)
      {
        v67 = 0;
        do
        {
          v68 = v143[++v67];
        }

        while (v68 == 32);
        v64 -= v67;
        v123 = v67;
      }

      else
      {
        v123 = 0;
        v67 = 0;
      }

      v69 = &v133[v65 - 1];
      if (v36 >= 1)
      {
        v70 = &v69[-v36];
        j__mkdtempat_np(v70, &v143[v64 + v67 - v36]);
        *(v70 - 1) = v122;
        v69 = v70 - 1;
        v64 += ~v36;
      }

      v71 = v125;
      if ((v135 & 1) != 0 && v124 && (v72 = *v125, (v72 - 1) <= 0x7D))
      {
        if (v64 <= v72)
        {
          v73 = 0;
          v75 = v135;
        }

        else
        {
          v73 = 0;
          v74 = v67 - 1;
          v75 = v135;
          do
          {
            if (v72 >= 1)
            {
              v76 = v74 + v64;
              v77 = v72 + 1;
              v64 -= v72;
              do
              {
                *--v69 = v143[v76--];
                --v77;
              }

              while (v77 > 1);
            }

            *--v69 = v124;
            ++v73;
            v72 = v71[1];
            if (v71[1])
            {
              if (v72 == 127)
              {
                break;
              }

              v72 = v72;
              ++v71;
            }

            else
            {
              while (1)
              {
                v72 = *v71;
                if (v64 <= v72)
                {
                  break;
                }

                if (v72 >= 1)
                {
                  v78 = v74 + v64;
                  v79 = v72 + 1;
                  v64 -= v72;
                  do
                  {
                    *--v69 = v143[v78--];
                    --v79;
                  }

                  while (v79 > 1);
                }

                *--v69 = v124;
                ++v73;
              }
            }
          }

          while (v64 > v72);
        }

        if (v64 < 1)
        {
          v12 = v131;
          v10 = v133;
        }

        else
        {
          v81 = v67 + v64 - 1;
          v82 = v64 + 1;
          v12 = v131;
          v10 = v133;
          do
          {
            *--v69 = v143[v81--];
            --v82;
          }

          while (v82 > 1);
        }

        v80 = v123 - v73;
      }

      else
      {
        v69 -= v64;
        j__mkdtempat_np(v69, &v143[v67]);
        v80 = (__PAIR64__(v123, v36) - 1) >> 32;
        v12 = v131;
        v10 = v133;
        v75 = v135;
      }

      if (v80 >= 1)
      {
        v69 -= v80;
        j__mkostemps(v69, v21, v80);
      }

      a1 = v136;
      j__mkostemp(v10, v69);
      free(v143);
      __setup_vars(v75, &v141 + 1, &v141, &v140, &v139, v129);
      v83 = v128;
      v17 = i;
      if (v128 >= 1)
      {
        v9 = v129;
        v15 = v126;
        v16 = v127;
        while (v17 < v13)
        {
          *v17++ = 32;
          v84 = __OFSUB__(v83--, 1);
          if ((v83 < 0) ^ v84 | (v83 == 0))
          {
            v11 = v83 - 1;
            goto LABEL_157;
          }
        }

        goto LABEL_259;
      }

      v11 = v128 - 1;
      v9 = v129;
      v15 = v126;
      v16 = v127;
LABEL_157:
      if (v140)
      {
        v85 = 1;
      }

      else
      {
        v85 = (v75 & 0x80) == 0;
      }

      if (!v85)
      {
        if (v17 >= v13)
        {
          goto LABEL_259;
        }

        *v17++ = 40;
      }

      if (HIBYTE(v141) != 1)
      {
        if (v140 != 1)
        {
          goto LABEL_198;
        }

        v95 = *v139;
        if (*v139)
        {
          v96 = v139 + 1;
          while (v17 < v13)
          {
            *v17++ = v95;
            v97 = *v96++;
            v95 = v97;
            if (!v97)
            {
              goto LABEL_192;
            }
          }

          goto LABEL_259;
        }

LABEL_192:
        if (v141 != 2)
        {
          goto LABEL_198;
        }

LABEL_193:
        if (v17 >= v13)
        {
          goto LABEL_259;
        }

        *v17++ = 32;
        goto LABEL_198;
      }

      if ((v140 & 0xFD) == 1)
      {
        v86 = *v139;
        if (*v139)
        {
          v87 = v139 + 1;
          while (v17 < v13)
          {
            *v17++ = v86;
            v88 = *v87++;
            v86 = v88;
            if (!v88)
            {
              goto LABEL_169;
            }
          }

          goto LABEL_259;
        }

LABEL_169:
        if (v141 == 2)
        {
          if (v17 >= v13)
          {
            goto LABEL_259;
          }

          *v17++ = 32;
        }
      }

      if ((v75 & 0x10) == 0)
      {
        v89 = *v12;
        if (*v12)
        {
          v90 = v12 + 1;
          while (v17 < v13)
          {
            *v17++ = v89;
            v91 = *v90++;
            v89 = v91;
            if (!v91)
            {
              goto LABEL_177;
            }
          }

          goto LABEL_259;
        }

LABEL_177:
        if (v140 != 4)
        {
          if (v141 == 1)
          {
            if (v17 >= v13)
            {
              goto LABEL_259;
            }

            *v17++ = v16;
          }

          goto LABEL_198;
        }

        if (v141 == 2)
        {
          if (v17 >= v13)
          {
            goto LABEL_259;
          }

          *v17++ = v16;
        }

        v92 = *v139;
        if (*v139)
        {
          v93 = v139 + 1;
          while (v17 < v13)
          {
            *v17++ = v92;
            v94 = *v93++;
            v92 = v94;
            if (!v94)
            {
              goto LABEL_185;
            }
          }

          goto LABEL_259;
        }

LABEL_185:
        if (v141 == 1)
        {
          goto LABEL_193;
        }
      }

LABEL_198:
      v98 = *v10;
      if (*v10)
      {
        v99 = v10 + 1;
        while (v17 < v13)
        {
          *v17++ = v98;
          v100 = *v99++;
          v98 = v100;
          if (!v100)
          {
            goto LABEL_202;
          }
        }

        goto LABEL_259;
      }

LABEL_202:
      if (HIBYTE(v141))
      {
        goto LABEL_233;
      }

      if (v140 == 3)
      {
        if (v141 == 1)
        {
          if (v17 >= v13)
          {
            goto LABEL_259;
          }

          *v17++ = 32;
        }

        v101 = *v139;
        if (*v139)
        {
          v102 = v139 + 1;
          while (v17 < v13)
          {
            *v17++ = v101;
            v103 = *v102++;
            v101 = v103;
            if (!v103)
            {
              goto LABEL_211;
            }
          }

          goto LABEL_259;
        }
      }

LABEL_211:
      if ((v75 & 0x10) != 0)
      {
LABEL_233:
        v108 = v140;
      }

      else
      {
        v104 = v140 == 3 && v141 == 2;
        if (v104 || v141 == 1 && v140 <= 4u && v140 != 3)
        {
          if (v17 >= v13)
          {
            goto LABEL_259;
          }

          *v17++ = v16;
        }

        v105 = *v12;
        if (*v12)
        {
          v106 = v12 + 1;
          while (v17 < v13)
          {
            *v17++ = v105;
            v107 = *v106++;
            v105 = v107;
            if (!v107)
            {
              goto LABEL_225;
            }
          }

          goto LABEL_259;
        }

LABEL_225:
        v108 = v140;
        if (v140 == 4)
        {
          if (v141 == 2)
          {
            if (v17 >= v13)
            {
              goto LABEL_259;
            }

            *v17++ = 32;
          }

          v109 = *v139;
          if (*v139)
          {
            v110 = v139 + 1;
            while (v17 < v13)
            {
              *v17++ = v109;
              v111 = *v110++;
              v109 = v111;
              if (!v111)
              {
                goto LABEL_233;
              }
            }

            goto LABEL_259;
          }

          goto LABEL_233;
        }
      }

      if (v108 == 2)
      {
        if (v141 == 2)
        {
          if (v17 >= v13)
          {
            goto LABEL_259;
          }

          *v17++ = 32;
        }

        v112 = *v139;
        if (*v139)
        {
          v113 = v139 + 1;
          while (v17 < v13)
          {
            *v17++ = v112;
            v114 = *v113++;
            v112 = v114;
            if (!v114)
            {
              goto LABEL_242;
            }
          }

          goto LABEL_259;
        }
      }

LABEL_242:
      if (!v140)
      {
        if ((v75 & 0x80) != 0)
        {
          if (v17 >= v13)
          {
            goto LABEL_259;
          }

          v115 = 41;
LABEL_249:
          *v17++ = v115;
        }

        else if ((v130 & 0x80000000) == 0)
        {
          if (v17 >= v13)
          {
            goto LABEL_259;
          }

          v115 = 32;
          goto LABEL_249;
        }
      }

      ++a4;
      v116 = v17 - i;
      if (v17 - i >= v26)
      {
        continue;
      }

      break;
    }

    if ((v135 & 0x20) == 0)
    {
      v117 = v15;
      j__mkostemp(&i[v26 - v116], i);
      j__mkostemps(i, 32, v26 - v116);
      v16 = v127;
      v15 = v117;
      v9 = v129;
      v17 += v26 - v116;
      v10 = v133;
      v11 = v116;
      continue;
    }

    break;
  }

  v118 = &v17[v18];
  while (v17 < v13)
  {
    *v17++ = 32;
    if (++v118 >= v26)
    {
      goto LABEL_7;
    }
  }

LABEL_259:
  v120 = 7;
LABEL_260:
  *__error() = v120;
LABEL_261:
  v121 = *__error();
  if (v10)
  {
    free(v10);
  }

  if (v12)
  {
LABEL_264:
    free(v12);
  }

  *__error() = v121;
  return -1;
}

ssize_t strfmon_l(char *a1, size_t a2, locale_t a3, const char *a4, ...)
{
  va_start(va, a4);
  v4 = &__global_locale;
  if (a3 != -1)
  {
    v4 = a3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = __c_locale;
  }

  return _strfmon(a1, a2, v5, a4, va);
}

uint64_t __calc_left_pad(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a1;
  v13 = 0;
  v12 = 0;
  *__sig = 0;
  __setup_vars(a1, &v13 + 1, &v13, &v12, __sig, a3);
  v7 = HIBYTE(v13);
  if (HIBYTE(v13))
  {
    v8 = j__strsignal_r(a2, v5, v6);
    if (v13)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v12 - 3 < 2)
  {
    if (!v7)
    {
      return v9;
    }

    return (v9 + j__strsignal_r(__sig[0], v5, v6));
  }

  if (v12 == 1)
  {
    return (v9 + j__strsignal_r(__sig[0], v5, v6));
  }

  if (v12)
  {
    return v9;
  }

  else
  {
    return v9 + ((v4 >> 7) & 1);
  }
}

uint64_t __setup_vars(uint64_t result, _BYTE *a2, _BYTE *a3, _BYTE *a4, const char **a5, uint64_t a6)
{
  if ((~result & 0xC0) == 0)
  {
    *a2 = *(a6 + 89);
    *a3 = *(a6 + 91);
    if ((result & 8) == 0)
    {
      v6 = *(a6 + 93);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((result & 0x40) != 0)
  {
    *a2 = *(a6 + 88);
    *a3 = *(a6 + 90);
    if ((result & 8) == 0)
    {
      v7 = *(a6 + 92);
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if ((result & 0x80) == 0)
  {
    *a2 = *(a6 + 82);
    *a3 = *(a6 + 83);
    if ((result & 8) == 0)
    {
      v7 = *(a6 + 86);
LABEL_11:
      *a4 = v7;
      v8 = *(a6 + 64);
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  *a2 = *(a6 + 84);
  *a3 = *(a6 + 85);
  if ((result & 8) == 0)
  {
    v6 = *(a6 + 87);
    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
LABEL_15:
  *a4 = v6;
  v8 = *(a6 + 72);
  if (!*v8)
  {
    v8 = "-";
  }

LABEL_17:
  *a5 = v8;
  if (*a2)
  {
    *a2 = 1;
  }

  if (*a3 == 127)
  {
    *a3 = 0;
  }

  if (*a4 == 127)
  {
    *a4 = 0;
  }

  return result;
}

void *__cdecl rb_tree_find_node_geq(rb_tree_t *a1, const void *a2)
{
  v2 = a1->opaque[0];
  if (!a1->opaque[0])
  {
    return 0;
  }

  v4 = 0;
  v5 = a1->opaque[1];
  v6 = v5[1];
  while (1)
  {
    v7 = v2 - v5[2];
    v8 = v6(v5[3], v7, a2);
    if (!v8)
    {
      break;
    }

    if (v8 > 0)
    {
      v4 = v2;
    }

    v2 = v2[v8 >> 31];
    if (!v2)
    {
      if (!v4)
      {
        return 0;
      }

      return v4 - v5[2];
    }
  }

  return v7;
}

int regncomp(regex_t *a1, const char *a2, size_t a3, int a4)
{
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__global_locale;
  }

  return regncomp_l(a1, a2, a3, a4, v6);
}

uint64_t regwncomp_l(uint64_t a1, uint64_t a2, int a3, unsigned int a4, char *a5)
{
  v5 = &__global_locale;
  if (a5 != -1)
  {
    v5 = a5;
  }

  if (a5)
  {
    v6 = v5;
  }

  else
  {
    v6 = __c_locale;
  }

  return tre_compile(a1, a2, a3, a4, v6);
}

int regwncomp(regex_t *a1, const __int32 *a2, size_t a3, int a4)
{
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__global_locale;
  }

  return tre_compile(a1, a2, a3, a4, v6);
}

int regwcomp_l(regex_t *a1, const __int32 *a2, int a3, locale_t a4)
{
  v7 = &__global_locale;
  if (a4 != -1)
  {
    v7 = a4;
  }

  if (a4)
  {
    v8 = v7;
  }

  else
  {
    v8 = __c_locale;
  }

  v9 = wcslen(a2);

  return tre_compile(a1, a2, v9, a3, v8);
}

int regwcomp(regex_t *a1, const __int32 *a2, int a3)
{
  v6 = wcslen(a2);
  v7 = __locale_key;
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &__global_locale;
  }

  return tre_compile(a1, a2, v6, a3, v9);
}

uint64_t tre_reset_last_matched_branches(uint64_t result, int *a2, int a3, int a4, int a5)
{
  if (a3 >= 1)
  {
    v7 = a3;
    v9 = result;
    v10 = 0;
    v11 = result + 16 * a4;
    do
    {
      v12 = a2[2];
      if (v12 == 1)
      {
        v13 = *a2;
        if (a4 >= 1 && (a5 || *(v9 + 16 * *(v13 + 5) + 12) < *(v11 + 12)))
        {
          v14 = *(v13 + 6);
          if (v14 >= 1)
          {
            v15 = *v13;
            v16 = v14 + 1;
            do
            {
              v17 = *v15++;
              *(v9 + 16 * v17) = 0;
              --v16;
            }

            while (v16 > 1);
          }
        }

        if (*(v13 + 4) >= 1)
        {
          result = tre_reset_last_matched_branches(v9, v13[1]);
        }
      }

      else
      {
        if (a5)
        {
          goto LABEL_17;
        }

        if (v12 >= 1)
        {
          v10 = 0;
          v18 = (*a2 + 20);
          v19 = v12 + 1;
          do
          {
            v20 = *v18;
            v18 += 8;
            v21 = *(v9 + 16 * v20 + 12);
            if (v21 > v10)
            {
              v10 = v21;
            }

            --v19;
          }

          while (v19 > 1);
LABEL_17:
          if (v12 >= 1)
          {
            v22 = *a2;
            do
            {
              if (a5 || *(v9 + 16 * *(v22 + 5) + 12) < v10)
              {
                v23 = *(v22 + 6);
                if (v23 >= 1)
                {
                  v24 = *v22;
                  v25 = v23 + 1;
                  do
                  {
                    v26 = *v24++;
                    *(v9 + 16 * v26) = 0;
                    --v25;
                  }

                  while (v25 > 1);
                }
              }

              if (*(v22 + 4) >= 1)
              {
                result = tre_reset_last_matched_branches(v9, v22[1]);
              }

              v22 += 4;
              v27 = __OFSUB__(v12--, 1);
            }

            while (!((v12 < 0) ^ v27 | (v12 == 0)));
          }

          goto LABEL_32;
        }

        v10 = 0;
      }

LABEL_32:
      a2 += 4;
    }

    while (v7-- > 1);
  }

  return result;
}

int regwnexec(const regex_t *a1, const __int32 *a2, size_t a3, size_t a4, regmatch_t __pmatch[], int a6)
{
  if (a1->re_magic == 62053)
  {
    return tre_match(a1->re_g, a2, a3, 0, a4, &__pmatch->rm_so, a6);
  }

  else
  {
    return 2;
  }
}

int regwexec(const regex_t *a1, const __int32 *a2, size_t a3, regmatch_t __pmatch[], int a5)
{
  if (a1->re_magic == 62053)
  {
    return tre_match(a1->re_g, a2, -1, 0, a3, &__pmatch->rm_so, a5);
  }

  else
  {
    return 2;
  }
}

char *tre_ast_new_iter(uint64_t a1, uint64_t a2, int a3, int a4, char a5)
{
  result = tre_ast_new_node(a1, 2, 0x20uLL);
  if (result)
  {
    v10 = *result;
    *v10 = a2;
    *(v10 + 8) = a3;
    *(v10 + 12) = a4;
    *(v10 + 16) = *(v10 + 16) & 0xFE | a5 & 1;
    *(result + 14) = *(a2 + 56);
  }

  return result;
}

char *tre_ast_new_union(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = tre_ast_new_node(a1, 3, 0x18uLL);
  if (result)
  {
    v6 = *result;
    *v6 = a2;
    v6[1] = a3;
    *(result + 14) = *(a3 + 56) + *(a2 + 56);
  }

  return result;
}

uint64_t tre_add_tag_right(uint64_t a1, uint64_t a2, int a3)
{
  v6 = tre_mem_alloc_impl(a1, 0, 0, 0, 0x10uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v8 = tre_ast_new_literal(a1, -3, a3, -1);
  v7[1] = v8;
  if (!v8)
  {
    return 12;
  }

  v9 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x48uLL);
  *v7 = v9;
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  result = 0;
  v12 = *(a2 + 48);
  *v10 = *a2;
  *(v10 + 32) = -1;
  *(v10 + 12) = v12;
  *(v10 + 13) = -1;
  *a2 = v7;
  *(a2 + 48) = 1;
  *(a2 + 40) = v10;
  return result;
}

uint64_t tre_copy_ast(uint64_t a1, int *a2, uint64_t a3, char a4, _DWORD *a5, uint64_t a6, void *a7, int *a8)
{
  v16 = tre_stack_num_objects(a2);
  tre_stack_push_voidptr(a2, a3);
  result = tre_stack_push_int(a2, 0);
  if (!result)
  {
    v41 = a8;
    v40 = a4;
    v39 = a6;
    v18 = 0;
    v19 = 1;
    while (1)
    {
      if (tre_stack_num_objects(a2) <= v16)
      {
        result = 0;
        goto LABEL_3;
      }

      v20 = tre_stack_pop_int(a2);
      if (v20)
      {
        if (v20 == 1)
        {
          a7 = tre_stack_pop_voidptr(a2);
        }

        result = 0;
        goto LABEL_10;
      }

      v21 = tre_stack_pop_voidptr(a2);
      result = 0;
      v22 = *(v21 + 12);
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          if (v22 != 3)
          {
            goto LABEL_10;
          }

          v23 = *v21;
          v29 = tre_ast_new_union(a1, **v21, *(*v21 + 1));
          *a7 = v29;
          if (!v29)
          {
            goto LABEL_56;
          }

          a7 = *v29;
          result = tre_stack_push_voidptr(a2, v23[1]);
          if (result)
          {
            goto LABEL_3;
          }

          result = tre_stack_push_int(a2, 0);
          if (result)
          {
            goto LABEL_3;
          }

          v28 = a7 + 1;
          v27 = a2;
          goto LABEL_25;
        }

        v35 = *v21;
        result = tre_stack_push_voidptr(a2, **v21);
        if (result)
        {
          goto LABEL_3;
        }

        result = tre_stack_push_int(a2, 0);
        if (result)
        {
          goto LABEL_3;
        }

        v36 = tre_ast_new_iter(a1, *v35, *(v35 + 2), *(v35 + 3), v35[2] & 1);
        *a7 = v36;
        if (!v36)
        {
LABEL_56:
          result = 12;
          goto LABEL_3;
        }

        v37 = v36;
        result = 0;
        a7 = *v37;
      }

      else
      {
        if (!v22)
        {
          v30 = *v21;
          v31 = (*v21)[1];
          v32 = (*v21)[2];
          v33 = **v21;
          if ((v33 & 0x80000000) == 0)
          {
            v34 = v30[2];
            goto LABEL_37;
          }

          if (v33 == -4)
          {
            v34 = 0;
LABEL_37:
            v32 += *a5;
            ++v18;
          }

          else if ((v40 & 1) != 0 && v33 == -3)
          {
            v34 = 0;
            v32 = -1;
            v33 = -1;
            v31 = -1;
          }

          else if (v33 == -3)
          {
            v34 = 0;
            if ((v40 & 2) != 0 && v19)
            {
              v34 = 0;
              v19 = 0;
              if (*(v39 + 4 * v31) == 2)
              {
                *(v39 + 4 * v31) = 1;
              }

              v33 = -3;
            }
          }

          else
          {
            v34 = 0;
          }

          v38 = tre_ast_new_literal(a1, v33, v31, v32);
          *a7 = v38;
          if (v38)
          {
            result = 0;
          }

          else
          {
            result = 12;
          }

          if (v32 > *v41)
          {
            *v41 = v32;
          }

          if ((*v30 & 0x80000000) == 0)
          {
            *(*v38 + 16) = v34;
          }

          goto LABEL_10;
        }

        if (v22 == 1)
        {
          v23 = *v21;
          v24 = tre_ast_new_catenation(a1, **v21, *(*v21 + 1));
          *a7 = v24;
          if (!v24)
          {
            goto LABEL_56;
          }

          a7 = *v24;
          v25 = *v24;
          v25[1] = 0;
          v26 = v25 + 1;
          *a7 = 0;
          result = tre_stack_push_voidptr(a2, v23[1]);
          if (result)
          {
            goto LABEL_3;
          }

          result = tre_stack_push_int(a2, 0);
          if (result)
          {
            goto LABEL_3;
          }

          v27 = a2;
          v28 = v26;
LABEL_25:
          result = tre_stack_push_voidptr(v27, v28);
          if (result)
          {
            goto LABEL_3;
          }

          result = tre_stack_push_int(a2, 1u);
          if (result)
          {
            goto LABEL_3;
          }

          result = tre_stack_push_voidptr(a2, *v23);
          if (result)
          {
            goto LABEL_3;
          }

          result = tre_stack_push_int(a2, 0);
        }
      }

LABEL_10:
      if (result)
      {
        goto LABEL_3;
      }
    }
  }

  v18 = 0;
LABEL_3:
  *a5 += v18;
  return result;
}

uint64_t tre_tnfa_run_backtrack(uint64_t a1, __darwin_ct_rune_t *a2, int a3, int a4, uint64_t a5, char a6, unsigned int *a7)
{
  v10 = a1;
  memset(v437, 0, sizeof(v437));
  v11 = *(a1 + 96);
  v12 = tre_mem_new_impl(0, 0);
  v13 = *(v10 + 80);
  memset(&v438, 0, sizeof(v438));
  if (!v12)
  {
    return 12;
  }

  v14 = v12;
  v15 = tre_mem_alloc_impl(v12, 0, 0, 0, 0xC0uLL);
  if (!v15)
  {
    tre_mem_destroy(v14);
    return 12;
  }

  v408 = v11;
  *(v15 + 22) = 0;
  *(v15 + 23) = 0;
  v16 = v15;
  v17 = *(v10 + 72);
  v18 = 16 * v13;
  v19 = malloc_type_malloc((v18 + 16 * v17 + 4 * *(v10 + 92) + 14), 0x9662B796uLL);
  if (!v19)
  {
    return 12;
  }

  v419 = v14;
  v392 = a7;
  v423 = a6 & 2;
  v20 = 16 * v13;
  v21 = 16 * v17;
  v22 = &v19[v18];
  v23 = 8 - (&v19[v18] & 7);
  if ((&v19[v18] & 7) == 0)
  {
    v23 = 0;
  }

  v415 = &v22[v23];
  v24 = &v22[v23 + v21];
  v25 = 8 - (v24 & 7);
  if ((v24 & 7) == 0)
  {
    v25 = 0;
  }

  v417 = (v24 + v25);
  v26 = &v19[v23 + v18 + v25 + v21];
  v393 = (a5 + 8);
  v394 = (v19 + 8);
  v27 = 1;
  v28 = -1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v425 = -1;
  v420 = a2;
  v421 = a2;
  LODWORD(v432) = 1;
  v433 = v10;
  *dfd = a5;
  v430 = a4;
  v428 = v20;
  path = v19;
  v400 = v26;
LABEL_9:
  v29 = v19;
  MEMORY[0x193AD5FD0]();
  if (a5)
  {
    MEMORY[0x193AD5FD0](a5, v20);
  }

  if (*(v10 + 92) >= 1)
  {
    v30 = 0;
    do
    {
      *&v26[4 * v30++] = 0;
    }

    while (v30 < *(v10 + 92));
  }

  v31 = v437[0];
  v32 = v29;
  v33 = v16;
  v434 = v437[0];
  if (!a4)
  {
    ++v28;
    if (a3 < 0 || v28 < a3)
    {
      v34 = *v420++;
      goto LABEL_30;
    }

LABEL_27:
    v407 = 0;
    v437[0] = 0;
    goto LABEL_31;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      v407 = v437[0];
      goto LABEL_31;
    }

    ++v28;
    if (a3 < 0 || v28 < a3)
    {
      v34 = *v421++;
LABEL_30:
      v407 = v34;
      v437[0] = v34;
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v28 += v432;
  if (a3 < 0 || a3 > v28)
  {
    v35 = *v421;
    if (v35 < 0)
    {
      v149 = a3 - v28;
      if (a3 < 0)
      {
        v149 = 32;
      }

      v150 = mbrtowc_l(v437, v421, v149, &v438, *(v10 + 56));
      if (v150 > 0xFFFFFFFFFFFFFFFDLL)
      {
        return 17;
      }

      if (a3 < 0 || v150)
      {
        v421 += v150;
        v407 = v437[0];
        LODWORD(v432) = v150;
      }

      else
      {
        v407 = 0;
        v437[0] = 0;
        ++v421;
        LODWORD(v432) = 1;
      }

      v10 = v433;
      v31 = v434;
      v20 = v428;
      v32 = path;
      v33 = v16;
      goto LABEL_31;
    }

    ++v421;
    v407 = v35;
    v437[0] = v35;
  }

  else
  {
    v407 = 0;
    v437[0] = 0;
  }

  LODWORD(v432) = 1;
LABEL_31:
  *&v437[1] = v438;
  v36 = *(v10 + 8);
  v37 = (v408 >> 3) & 1;
  v38 = (v36 + 8);
  v418 = v28;
  v426 = v37;
  v39 = 0;
  v40 = 0;
  if (!*(v36 + 8))
  {
    v143 = *dfd;
    a4 = v430;
    v145 = (v408 >> 3) & 1;
    goto LABEL_194;
  }

  v42 = (a6 & 1) == 0 && v28 < 1;
  if (v31 != 10)
  {
    LOBYTE(v37) = 0;
  }

  v43 = v42 | v37;
  do
  {
    v44 = *(v36 + 40);
    if (!v44)
    {
      goto LABEL_128;
    }

    if (!(((*(v36 + 40) & 1) == 0) | v43 & 1))
    {
      goto LABEL_143;
    }

    if ((v44 & 2) != 0)
    {
      v45 = (v408 >> 3) & 1;
      if (v437[0] != 10)
      {
        v45 = 0;
      }

      v46 = v437[0] | v423 && v45 == 0;
      if (v46)
      {
        goto LABEL_143;
      }
    }

    if ((v44 & 8) != 0)
    {
      if (v31 == 95)
      {
        goto LABEL_143;
      }

      if (v31 > 0x7F)
      {
        v52 = *(v433 + 56);
        if (v31 >= 0x100)
        {
          v53 = v31;
          v54 = v40;
          v55 = v32;
          v56 = v27;
          v57 = v33;
          LOWORD(v58) = ___runetype_l(v53, v52);
          v33 = v57;
          v27 = v56;
          v31 = v434;
          v32 = v55;
          v40 = v54;
          goto LABEL_75;
        }

        v67 = &__global_locale;
        if (v52 != -1)
        {
          v67 = *(v433 + 56);
        }

        if (!v52)
        {
          v67 = &__c_locale;
        }

        v50 = *(v67[166] + 120);
      }

      else
      {
        v50 = &_DefaultRuneLocale;
      }

      v58 = v50->__runetype[v31];
LABEL_75:
      if ((v58 & 0x500) != 0)
      {
        goto LABEL_143;
      }

      if (v437[0] == 95)
      {
        goto LABEL_51;
      }

      if (v437[0] > 0x7Fu)
      {
        v85 = *(v433 + 56);
        if (v437[0] >= 0x100u)
        {
          v86 = v40;
          v87 = v32;
          v88 = v27;
          v89 = v33;
          LOWORD(v90) = ___runetype_l(v437[0], v85);
          v33 = v89;
          v27 = v88;
          v31 = v434;
          v32 = v87;
          v40 = v86;
          goto LABEL_159;
        }

        v132 = &__global_locale;
        if (v85 != -1)
        {
          v132 = *(v433 + 56);
        }

        if (!v85)
        {
          v132 = &__c_locale;
        }

        v68 = *(v132[166] + 120);
      }

      else
      {
        v68 = &_DefaultRuneLocale;
      }

      v90 = v68->__runetype[v437[0]];
LABEL_159:
      if ((v90 & 0x500) == 0)
      {
        goto LABEL_143;
      }
    }

LABEL_51:
    v47 = *(v36 + 40);
    if ((v47 & 0x10) == 0)
    {
      if ((v47 & 0x20) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_53;
    }

    if (v31 != 95)
    {
      if (v31 > 0x7F)
      {
        v60 = *(v433 + 56);
        if (v31 >= 0x100)
        {
          v61 = v31;
          v62 = v40;
          v63 = v32;
          v64 = v27;
          v65 = v33;
          LOWORD(v66) = ___runetype_l(v61, v60);
          v33 = v65;
          v27 = v64;
          v31 = v434;
          v32 = v63;
          v40 = v62;
          goto LABEL_87;
        }

        v76 = &__global_locale;
        if (v60 != -1)
        {
          v76 = *(v433 + 56);
        }

        if (!v60)
        {
          v76 = &__c_locale;
        }

        v51 = *(v76[166] + 120);
      }

      else
      {
        v51 = &_DefaultRuneLocale;
      }

      v66 = v51->__runetype[v31];
LABEL_87:
      if ((v66 & 0x500) == 0)
      {
        goto LABEL_143;
      }
    }

    if (v437[0] == 95)
    {
      goto LABEL_143;
    }

    if (v437[0] > 0x7Fu)
    {
      v78 = *(v433 + 56);
      if (v437[0] >= 0x100u)
      {
        v79 = v40;
        v80 = v32;
        v81 = v27;
        v82 = v33;
        LOWORD(v83) = ___runetype_l(v437[0], v78);
        v33 = v82;
        v27 = v81;
        v31 = v434;
        v32 = v80;
        v40 = v79;
        goto LABEL_99;
      }

      v84 = &__global_locale;
      if (v78 != -1)
      {
        v84 = *(v433 + 56);
      }

      if (!v78)
      {
        v84 = &__c_locale;
      }

      v77 = *(v84[166] + 120);
    }

    else
    {
      v77 = &_DefaultRuneLocale;
    }

    v83 = v77->__runetype[v437[0]];
LABEL_99:
    if ((v83 & 0x500) != 0)
    {
      goto LABEL_143;
    }

    v47 = *(v36 + 40);
    if ((v47 & 0x20) == 0)
    {
      goto LABEL_127;
    }

LABEL_53:
    if (!v28)
    {
      goto LABEL_127;
    }

    v48 = v437[0];
    if (!v437[0])
    {
      goto LABEL_127;
    }

    if (v31 == 95)
    {
      v49 = 1;
      goto LABEL_111;
    }

    if (v31 <= 0x7F)
    {
      v59 = &_DefaultRuneLocale;
LABEL_109:
      v75 = v59->__runetype[v31];
      goto LABEL_110;
    }

    v69 = *(v433 + 56);
    if (v31 < 0x100)
    {
      v91 = &__global_locale;
      if (v69 != -1)
      {
        v91 = *(v433 + 56);
      }

      if (!v69)
      {
        v91 = &__c_locale;
      }

      v59 = *(v91[166] + 120);
      goto LABEL_109;
    }

    v70 = v40;
    v71 = v32;
    v72 = v27;
    v73 = v33;
    v74 = ___runetype_l(v31, v69);
    v33 = v73;
    v27 = v72;
    v32 = v71;
    v40 = v70;
    LOWORD(v75) = v74;
    v48 = v437[0];
LABEL_110:
    v49 = (v75 & 0x500) != 0;
LABEL_111:
    if (v48 != 95)
    {
      if (v48 > 0x7F)
      {
        v94 = *(v433 + 56);
        if (v48 >= 0x100)
        {
          v95 = v40;
          v96 = v32;
          v97 = v27;
          v98 = v33;
          LOWORD(v99) = ___runetype_l(v48, v94);
          v33 = v98;
          v27 = v97;
          v31 = v434;
          v32 = v96;
          v40 = v95;
LABEL_123:
          v92 = (v99 & 0x500) != 0;
          goto LABEL_124;
        }

        v100 = &__global_locale;
        if (v94 != -1)
        {
          v100 = *(v433 + 56);
        }

        if (!v94)
        {
          v100 = &__c_locale;
        }

        v93 = *(v100[166] + 120);
      }

      else
      {
        v93 = &_DefaultRuneLocale;
      }

      v99 = v93->__runetype[v48];
      goto LABEL_123;
    }

    v92 = 1;
LABEL_124:
    if (v49 == v92)
    {
      v28 = v418;
      goto LABEL_143;
    }

    v47 = *(v36 + 40);
    v28 = v418;
LABEL_127:
    if ((v47 & 0x40) != 0)
    {
      if (!v28)
      {
        goto LABEL_143;
      }

      v122 = v437[0];
      if (!v437[0])
      {
        goto LABEL_143;
      }

      if (v31 == 95)
      {
        v123 = 1;
        goto LABEL_168;
      }

      if (v31 > 0x7F)
      {
        v125 = *(v433 + 56);
        if (v31 >= 0x100)
        {
          v126 = v40;
          v127 = v32;
          v128 = v27;
          v129 = v33;
          v130 = ___runetype_l(v31, v125);
          v33 = v129;
          v27 = v128;
          v32 = v127;
          v40 = v126;
          LOWORD(v131) = v130;
          v122 = v437[0];
LABEL_167:
          v123 = (v131 & 0x500) != 0;
LABEL_168:
          if (v122 == 95)
          {
            v134 = 1;
            goto LABEL_181;
          }

          if (v122 > 0x7F)
          {
            v136 = *(v433 + 56);
            if (v122 >= 0x100)
            {
              v137 = v40;
              v138 = v32;
              v139 = v27;
              v140 = v33;
              LOWORD(v141) = ___runetype_l(v122, v136);
              v33 = v140;
              v27 = v139;
              v31 = v434;
              v32 = v138;
              v40 = v137;
LABEL_180:
              v134 = (v141 & 0x500) != 0;
LABEL_181:
              v46 = v123 == v134;
              v28 = v418;
              if (!v46)
              {
                goto LABEL_143;
              }

              goto LABEL_128;
            }

            v142 = &__global_locale;
            if (v136 != -1)
            {
              v142 = *(v433 + 56);
            }

            if (!v136)
            {
              v142 = &__c_locale;
            }

            v135 = *(v142[166] + 120);
          }

          else
          {
            v135 = &_DefaultRuneLocale;
          }

          v141 = v135->__runetype[v122];
          goto LABEL_180;
        }

        v133 = &__global_locale;
        if (v125 != -1)
        {
          v133 = *(v433 + 56);
        }

        if (!v125)
        {
          v133 = &__c_locale;
        }

        v124 = *(v133[166] + 120);
      }

      else
      {
        v124 = &_DefaultRuneLocale;
      }

      v131 = v124->__runetype[v31];
      goto LABEL_167;
    }

LABEL_128:
    if (v39)
    {
      v101 = v40;
      v102 = *(v33 + 184);
      if (v102)
      {
        v103 = *(v102 + 40);
        v104 = *(v33 + 184);
      }

      else
      {
        v105 = v33;
        v106 = tre_mem_alloc_impl(v419, 0, 0, 0, 0xC0uLL);
        if (!v106)
        {
          v388 = v419;
          goto LABEL_644;
        }

        v107 = v106;
        *(v106 + 22) = v105;
        *(v106 + 23) = 0;
        v103 = tre_mem_alloc_impl(v419, 0, 0, 0, v20);
        *(v107 + 5) = v103;
        if (!v103)
        {
          goto LABEL_640;
        }

        *(v105 + 184) = v107;
        v104 = v107;
        v28 = v418;
        v31 = v434;
      }

      *v104 = v28;
      *(v104 + 1) = v432;
      *(v104 + 1) = v421;
      *(v104 + 2) = v420;
      *(v104 + 3) = *v38;
      v108 = v437[0];
      *(v104 + 8) = *(v36 + 16);
      *(v104 + 9) = v108;
      v109 = v104;
      j__mkdtempat_np(v103, path);
      v33 = v109;
      v110 = *(&v438._mbstateL + 3);
      *(v109 + 80) = *(&v438._mbstateL + 2);
      *(v109 + 96) = v110;
      v111 = *(&v438._mbstateL + 1);
      *(v109 + 48) = *v438.__mbstate8;
      *(v109 + 64) = v111;
      v112 = *(&v438._mbstateL + 7);
      *(v109 + 144) = *(&v438._mbstateL + 6);
      *(v109 + 160) = v112;
      v113 = *(&v438._mbstateL + 5);
      *(v109 + 112) = *(&v438._mbstateL + 4);
      *(v109 + 128) = v113;
      v114 = *(v36 + 24);
      if (v114)
      {
        v115 = *v114;
        v40 = v101;
        v32 = path;
        if ((v115 & 0x80000000) == 0)
        {
          v116 = *(v109 + 40);
          v117 = v114 + 1;
          do
          {
            v118 = (v116 + 16 * v115);
            if (!(*v118)++)
            {
              v118[1] = v28;
            }

            v118[2] = v28;
            v118[3] = v27;
            v120 = *v117++;
            v115 = v120;
          }

          while ((v120 & 0x80000000) == 0);
        }

        v27 = (v27 + 1);
      }

      else
      {
        v40 = v101;
        v32 = path;
      }
    }

    else
    {
      v39 = *v38;
      v40 = *(v36 + 24);
    }

LABEL_143:
    v121 = *(v36 + 64);
    v38 = (v36 + 64);
    v36 += 56;
  }

  while (v121);
  v143 = *dfd;
  if (v40)
  {
    v144 = *v40;
    a4 = v430;
    if ((v144 & 0x80000000) != 0)
    {
      v10 = v433;
      v145 = v426;
    }

    else
    {
      v10 = v433;
      v145 = v426;
      do
      {
        v146 = &v32[16 * v144];
        if (!(*v146)++)
        {
          *(v146 + 1) = v28;
        }

        *(v146 + 2) = v28;
        *(v146 + 3) = v27;
        v148 = v40[1];
        ++v40;
        v144 = v148;
      }

      while ((v148 & 0x80000000) == 0);
    }

    v27 = (v27 + 1);
  }

  else
  {
    a4 = v430;
    v10 = v433;
    v145 = v426;
  }

LABEL_194:
  v431 = v420;
  v435 = v421;
  if (v39)
  {
    goto LABEL_209;
  }

  while (1)
  {
LABEL_205:
    if (!*(v33 + 176))
    {
      a5 = v143;
      v26 = v400;
      v19 = path;
      if ((v425 & 0x80000000) == 0)
      {
        goto LABEL_647;
      }

      if (v28 != v418)
      {
        goto LABEL_585;
      }

      if (a3 < 0)
      {
        if (v437[0])
        {
          goto LABEL_585;
        }

LABEL_647:
        v389 = v425 >> 31;
        *v392 = v425;
        v390 = path;
LABEL_648:
        tre_mem_destroy(v419);
        free(v390);
        return v389;
      }

      if (v418 >= a3)
      {
        goto LABEL_647;
      }

LABEL_585:
      v16 = v33;
      v437[0] = v407;
      v438 = *&v437[1];
      v28 = v418;
      goto LABEL_9;
    }

    v151 = v27;
    v152 = v40;
    v39 = *(v33 + 24);
    if ((*(v39 + 40) & 0x80) != 0)
    {
      v417[*(v33 + 32)] = 0;
    }

    v28 = *v33;
    v435 = *(v33 + 8);
    v431 = *(v33 + 16);
    LODWORD(v432) = *(v33 + 4);
    v437[0] = *(v33 + 36);
    v153 = v33;
    j__mkdtempat_np(path, *(v33 + 40));
    v154 = *(v153 + 48);
    v155 = *(v153 + 96);
    v156 = *(v153 + 128);
    v157 = *(v153 + 144);
    *(&v438._mbstateL + 4) = *(v153 + 112);
    *(&v438._mbstateL + 5) = v156;
    v158 = *(v153 + 160);
    *(&v438._mbstateL + 6) = v157;
    *(&v438._mbstateL + 7) = v158;
    v159 = *(v153 + 64);
    v160 = *(v153 + 80);
    *v438.__mbstate8 = v154;
    *(&v438._mbstateL + 1) = v159;
    *(&v438._mbstateL + 2) = v160;
    *(&v438._mbstateL + 3) = v155;
    v33 = *(v153 + 176);
    v40 = v152;
    v27 = v151;
LABEL_209:
    v161 = path;
LABEL_210:
    if ((v425 & 0x80000000) != 0 || !*(v10 + 84))
    {
      a4 = v430;
      if (v39 != *(v10 + 16))
      {
        goto LABEL_226;
      }

LABEL_597:
      v371 = v425;
      goto LABEL_598;
    }

    v162 = *(v10 + 40);
    v163 = *v162;
    if ((v163 & 0x80000000) == 0)
    {
      break;
    }

    a4 = v430;
    if (v39 != *(v10 + 16))
    {
      goto LABEL_226;
    }

LABEL_586:
    v360 = *(v10 + 40);
    v361 = *v360;
    if ((v361 & 0x80000000) != 0)
    {
      goto LABEL_597;
    }

    v362 = v360 + 2;
    while (1)
    {
      v363 = *(v362 - 1);
      v364 = (v143 + 16 * v363);
      if (*v364)
      {
        v365 = &v161[16 * v363];
        if (*v365)
        {
          if (v364[2] == *(v365 + 2))
          {
            v366 = (v143 + 16 * v361);
            v367 = &v161[16 * v361];
            v368 = *v367;
            if (*v366)
            {
              if (!v368)
              {
                goto LABEL_205;
              }
            }

            else if (v368)
            {
              v371 = -1;
              goto LABEL_598;
            }

            v369 = *(v367 + 2) - v366[2];
            if (v369)
            {
              break;
            }
          }
        }
      }

      v370 = *v362;
      v362 += 2;
      v361 = v370;
      if ((v370 & 0x80000000) != 0)
      {
        goto LABEL_597;
      }
    }

    v371 = v425;
    if (v369 < 0)
    {
      v371 = -1;
    }

    if (v369 <= 0)
    {
LABEL_598:
      if (v371 < v28)
      {
        if (!v143)
        {
          goto LABEL_601;
        }

        goto LABEL_600;
      }

      if (!v143 || v371 != v28)
      {
        v425 = v371;
        continue;
      }

      v375 = *(v10 + 80);
      if (v375 < 1)
      {
        goto LABEL_601;
      }

      v376 = *(v10 + 32);
      v377 = v393;
      v378 = v394;
      while (2)
      {
        v380 = *v376++;
        v379 = v380;
        if (v380 == 2)
        {
          v383 = *(v378 - 2);
          v384 = *(v377 - 2);
          if (v383)
          {
            if (!v384)
            {
              goto LABEL_600;
            }

            v385 = *(v377 - 1);
            v386 = *(v378 - 1);
LABEL_616:
            v387 = v385 - v386;
            if (v387)
            {
              goto LABEL_632;
            }

            v387 = v384 - v383;
            if (v384 != v383)
            {
              goto LABEL_632;
            }

            if (v383 != 1)
            {
              v381 = *v378;
              v382 = *v377;
              goto LABEL_620;
            }

LABEL_626:
            v378 += 4;
            v377 += 4;
            if (!--v375)
            {
              goto LABEL_601;
            }

            continue;
          }
        }

        else
        {
          if (v379 != 1)
          {
            if (!v379)
            {
              v381 = *v377;
              v382 = *v378;
LABEL_620:
              v387 = v381 - v382;
              if (v387)
              {
                goto LABEL_632;
              }
            }

            goto LABEL_626;
          }

          v383 = *(v378 - 2);
          v384 = *(v377 - 2);
          if (v383)
          {
            if (!v384)
            {
              goto LABEL_600;
            }

            v385 = *(v378 - 1);
            v386 = *(v377 - 1);
            goto LABEL_616;
          }
        }

        break;
      }

      if (v384)
      {
        v387 = -1;
      }

      else
      {
        v387 = 0;
      }

      if (v387)
      {
LABEL_632:
        if (v387 < 1)
        {
LABEL_601:
          v425 = v28;
          continue;
        }

LABEL_600:
        v372 = v40;
        v373 = v27;
        v374 = v33;
        j__mkdtempat_np(v143, v161);
        v33 = v374;
        v27 = v373;
        v40 = v372;
        goto LABEL_601;
      }

      goto LABEL_626;
    }
  }

  v164 = v162 + 2;
  a4 = v430;
  while (2)
  {
    v165 = *(v164 - 1);
    v166 = (v143 + 16 * v165);
    if (*v166)
    {
      v167 = &v161[16 * v165];
      if (*v167)
      {
        if (v166[2] == *(v167 + 2))
        {
          v168 = (v143 + 16 * v163);
          v169 = &v161[16 * v163];
          v170 = *v169;
          if (*v168)
          {
            if (!v170)
            {
              goto LABEL_205;
            }

            goto LABEL_219;
          }

          if (!v170)
          {
LABEL_219:
            if (*(v169 + 2) > v168[2])
            {
              goto LABEL_205;
            }
          }
        }
      }
    }

    v171 = *v164;
    v164 += 2;
    v163 = v171;
    if ((v171 & 0x80000000) == 0)
    {
      continue;
    }

    break;
  }

  if (v39 == *(v10 + 16))
  {
    goto LABEL_586;
  }

LABEL_226:
  v172 = (v39 + 8);
  if (*(v39 + 8) && (*(v39 + 40) & 0x80) != 0)
  {
    v174 = v33;
    v175 = v40;
    v176 = *(v39 + 48);
    v177 = tre_fill_pmatch(v176 + 1, v415, *(v433 + 96) & 0xFB, v433, v161, v28);
    if (v177)
    {
      v389 = v177;
      v390 = path;
      goto LABEL_648;
    }

    v180 = &v415[16 * v176];
    v181 = *v180;
    if ((*v180 & 0x80000000) != 0)
    {
      v143 = *dfd;
      v10 = v433;
      v20 = v428;
      v145 = v426;
      v40 = v175;
      v33 = v174;
      goto LABEL_205;
    }

    v182 = *(v180 + 2);
    v183 = v182 - v181;
    if (a3 < 0)
    {
      v188 = *v180 & 0x7FFFFFFFLL;
      if (v430)
      {
        v185 = j__strsvisx(a2 + v188, v435 - 1, v183, v178, v179);
      }

      else
      {
        v185 = wcsncmp(&a2[v188], v431 - 1, v183);
      }

      v20 = v428;
    }

    else
    {
      v20 = v428;
      if (a3 - v28 < v183)
      {
        v40 = v175;
        v33 = v174;
LABEL_631:
        v143 = *dfd;
        a4 = v430;
        v10 = v433;
        v145 = v426;
        goto LABEL_205;
      }

      v184 = *v180 & 0x7FFFFFFFLL;
      if (v430)
      {
        v185 = j__mkdtemp(a2 + v184);
      }

      else
      {
        v185 = wmemcmp(&a2[v184], v431 - 1, v183);
      }
    }

    v40 = v175;
    v33 = v174;
    if (!v185)
    {
      v189 = *(v39 + 16);
      if (v182 != v181 || !v417[v189])
      {
        v417[v189] = v182 == v181;
        v186 = &v435[v183 - 1];
        v173 = v437[0];
        v431 += v183 - 1;
        if (v430)
        {
          if (v430 != 2)
          {
            v161 = path;
            if (v430 == 1)
            {
              v28 += v183;
              if (a3 < 0 || v28 < a3)
              {
                v192 = *v186++;
                v437[0] = v192;
              }

              else
              {
                v437[0] = 0;
              }
            }

            else
            {
              v28 += v183 - 1;
            }

            v145 = v426;
            goto LABEL_285;
          }

          v28 += v183 - 1 + v432;
          if (a3 < 0 || a3 > v28)
          {
            v190 = *v186;
            v145 = v426;
            if ((v190 & 0x80000000) == 0)
            {
              ++v186;
              v437[0] = v190;
              goto LABEL_273;
            }

            v359 = a3 - v28;
            if (a3 < 0)
            {
              v359 = 32;
            }

            v435 = v186;
            v432 = mbrtowc_l(v437, v186, v359, &v438, *(v433 + 56));
            if (v432 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v40 = v175;
              v33 = v174;
              if (a3 < 0 || v432)
              {
                v186 = &v435[v432];
                goto LABEL_280;
              }

              goto LABEL_575;
            }

            return 17;
          }

          v437[0] = 0;
          LODWORD(v432) = 1;
        }

        else
        {
          v28 += v183;
          if (a3 < 0 || v28 < a3)
          {
            v191 = *v431++;
            v437[0] = v191;
          }

          else
          {
            v437[0] = 0;
          }
        }

        v145 = v426;
        goto LABEL_280;
      }
    }

    goto LABEL_631;
  }

  if ((a3 & 0x80000000) == 0)
  {
    if (a3 > v28)
    {
      v173 = v437[0];
      goto LABEL_238;
    }

LABEL_583:
    v10 = v433;
    v143 = *dfd;
    goto LABEL_205;
  }

  v173 = v437[0];
  if (!v437[0])
  {
    goto LABEL_583;
  }

LABEL_238:
  if (a4)
  {
    if (a4 != 2)
    {
      if (a4 == 1)
      {
        ++v28;
        v186 = v435;
        if (a3 < 0 || v28 < a3)
        {
          v186 = v435 + 1;
          v187 = *v435;
          goto LABEL_256;
        }

LABEL_250:
        v437[0] = 0;
        goto LABEL_285;
      }

LABEL_284:
      v186 = v435;
      goto LABEL_285;
    }

    v28 += v432;
    if ((a3 & 0x80000000) == 0 && a3 <= v28)
    {
      v437[0] = 0;
      LODWORD(v432) = 1;
      goto LABEL_284;
    }

    if ((*v435 & 0x80000000) == 0)
    {
      v186 = v435 + 1;
      v437[0] = *v435;
      LODWORD(v432) = 1;
      goto LABEL_285;
    }

    v355 = v33;
    v356 = v40;
    v357 = a3 - v28;
    if (a3 < 0)
    {
      v357 = 32;
    }

    v358 = mbrtowc_l(v437, v435, v357, &v438, *(v433 + 56));
    if (v358 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v40 = v356;
      v33 = v355;
      if (a3 < 0 || v358)
      {
        v186 = &v435[v358];
        LODWORD(v432) = v358;
        goto LABEL_280;
      }

LABEL_575:
      v437[0] = 0;
      v186 = v435 + 1;
LABEL_273:
      LODWORD(v432) = 1;
LABEL_280:
      v161 = path;
      goto LABEL_285;
    }

    return 17;
  }

  ++v28;
  v186 = v435;
  if ((a3 & 0x80000000) == 0 && v28 >= a3)
  {
    goto LABEL_250;
  }

  v187 = *v431++;
LABEL_256:
  v437[0] = v187;
LABEL_285:
  v435 = v186;
  if (!*v172)
  {
    v193 = 0;
    v198 = v40;
    goto LABEL_555;
  }

  v193 = 0;
  v195 = (a6 & 1) == 0 && v28 < 1;
  if (v173 == 10)
  {
    v196 = v145;
  }

  else
  {
    v196 = 0;
  }

  v197 = v195 | v196;
  v198 = v40;
  v429 = v195 | v196;
  while (2)
  {
    if (*v39 > v173 || *(v39 + 4) < v173)
    {
      goto LABEL_550;
    }

    v199 = *(v39 + 40);
    if (!v199)
    {
      goto LABEL_536;
    }

    if (!(((*(v39 + 40) & 1) == 0) | v197 & 1))
    {
      goto LABEL_550;
    }

    if ((v199 & 2) != 0)
    {
      v203 = v437[0] == 10 ? v145 : 0;
      if (v437[0] | v423 && !v203)
      {
        goto LABEL_550;
      }
    }

    if ((v199 & 8) != 0)
    {
      if (v173 == 95)
      {
        goto LABEL_550;
      }

      if (v173 > 0x7F)
      {
        v206 = *(v433 + 56);
        if (v173 >= 0x100)
        {
          v207 = v197;
          v208 = v193;
          v209 = v145;
          v210 = v27;
          v211 = v33;
          LOWORD(v212) = ___runetype_l(v173, v206);
          v33 = v211;
          v27 = v210;
          v145 = v209;
          v20 = v428;
          v161 = path;
          v193 = v208;
          v197 = v207;
          goto LABEL_332;
        }

        v221 = &__global_locale;
        if (v206 != -1)
        {
          v221 = *(v433 + 56);
        }

        if (!v206)
        {
          v221 = &__c_locale;
        }

        v204 = *(v221[166] + 120);
      }

      else
      {
        v204 = &_DefaultRuneLocale;
      }

      v212 = v204->__runetype[v173];
LABEL_332:
      if ((v212 & 0x500) != 0)
      {
        goto LABEL_550;
      }

      if (v437[0] == 95)
      {
        goto LABEL_302;
      }

      if (v437[0] > 0x7Fu)
      {
        v247 = *(v433 + 56);
        if (v437[0] >= 0x100u)
        {
          v248 = v197;
          v249 = v193;
          v250 = v145;
          v251 = v27;
          v252 = v33;
          LOWORD(v253) = ___runetype_l(v437[0], v247);
          v33 = v252;
          v27 = v251;
          v145 = v250;
          v20 = v428;
          v161 = path;
          v193 = v249;
          v197 = v248;
          goto LABEL_407;
        }

        v278 = &__global_locale;
        if (v247 != -1)
        {
          v278 = *(v433 + 56);
        }

        if (!v247)
        {
          v278 = &__c_locale;
        }

        v222 = *(v278[166] + 120);
      }

      else
      {
        v222 = &_DefaultRuneLocale;
      }

      v253 = v222->__runetype[v437[0]];
LABEL_407:
      if ((v253 & 0x500) == 0)
      {
        goto LABEL_550;
      }
    }

LABEL_302:
    v200 = *(v39 + 40);
    if ((v200 & 0x10) != 0)
    {
      if (v173 == 95)
      {
        goto LABEL_345;
      }

      if (v173 > 0x7F)
      {
        v214 = *(v433 + 56);
        if (v173 >= 0x100)
        {
          v215 = v197;
          v216 = v193;
          v217 = v145;
          v218 = v27;
          v219 = v33;
          LOWORD(v220) = ___runetype_l(v173, v214);
          v33 = v219;
          v27 = v218;
          v145 = v217;
          v20 = v428;
          v161 = path;
          v193 = v216;
          v197 = v215;
          goto LABEL_344;
        }

        v230 = &__global_locale;
        if (v214 != -1)
        {
          v230 = *(v433 + 56);
        }

        if (!v214)
        {
          v230 = &__c_locale;
        }

        v205 = *(v230[166] + 120);
      }

      else
      {
        v205 = &_DefaultRuneLocale;
      }

      v220 = v205->__runetype[v173];
LABEL_344:
      if ((v220 & 0x500) == 0)
      {
        goto LABEL_550;
      }

LABEL_345:
      if (v437[0] == 95)
      {
        goto LABEL_550;
      }

      if (v437[0] > 0x7Fu)
      {
        v232 = *(v433 + 56);
        if (v437[0] >= 0x100u)
        {
          v233 = v197;
          v234 = v193;
          v235 = v145;
          v236 = v27;
          v237 = v33;
          LOWORD(v238) = ___runetype_l(v437[0], v232);
          v33 = v237;
          v27 = v236;
          v145 = v235;
          v20 = v428;
          v161 = path;
          v193 = v234;
          v197 = v233;
          goto LABEL_356;
        }

        v239 = &__global_locale;
        if (v232 != -1)
        {
          v239 = *(v433 + 56);
        }

        if (!v232)
        {
          v239 = &__c_locale;
        }

        v231 = *(v239[166] + 120);
      }

      else
      {
        v231 = &_DefaultRuneLocale;
      }

      v238 = v231->__runetype[v437[0]];
LABEL_356:
      if ((v238 & 0x500) != 0)
      {
        goto LABEL_550;
      }

      v200 = *(v39 + 40);
      if ((v200 & 0x20) == 0)
      {
        goto LABEL_358;
      }

LABEL_304:
      if (!v28)
      {
        goto LABEL_358;
      }

      v201 = v437[0];
      if (!v437[0])
      {
        goto LABEL_358;
      }

      if (v173 == 95)
      {
        v202 = 1;
        goto LABEL_375;
      }

      if (v173 > 0x7F)
      {
        v223 = *(v433 + 56);
        if (v173 >= 0x100)
        {
          v224 = v193;
          v225 = v145;
          v226 = v27;
          v227 = v33;
          v228 = ___runetype_l(v173, v223);
          v33 = v227;
          v27 = v226;
          v145 = v225;
          v161 = path;
          v193 = v224;
          LOWORD(v229) = v228;
          v201 = v437[0];
LABEL_374:
          v202 = (v229 & 0x500) != 0;
LABEL_375:
          if (v201 == 95)
          {
            v255 = 1;
            goto LABEL_388;
          }

          if (v201 > 0x7F)
          {
            v257 = *(v433 + 56);
            if (v201 >= 0x100)
            {
              v258 = v197;
              v259 = v193;
              v260 = v27;
              v261 = v33;
              LOWORD(v262) = ___runetype_l(v201, v257);
              v33 = v261;
              v27 = v260;
              v145 = v426;
              v161 = path;
              v193 = v259;
              v197 = v258;
LABEL_387:
              v255 = (v262 & 0x500) != 0;
LABEL_388:
              if (v202 == v255)
              {
                goto LABEL_441;
              }

              v200 = *(v39 + 40);
              v20 = v428;
              if ((v200 & 0x40) == 0)
              {
                goto LABEL_359;
              }

              goto LABEL_390;
            }

            v263 = &__global_locale;
            if (v257 != -1)
            {
              v263 = *(v433 + 56);
            }

            if (!v257)
            {
              v263 = &__c_locale;
            }

            v256 = *(v263[166] + 120);
          }

          else
          {
            v256 = &_DefaultRuneLocale;
          }

          v262 = v256->__runetype[v201];
          goto LABEL_387;
        }

        v254 = &__global_locale;
        if (v223 != -1)
        {
          v254 = *(v433 + 56);
        }

        if (!v223)
        {
          v254 = &__c_locale;
        }

        v213 = *(v254[166] + 120);
      }

      else
      {
        v213 = &_DefaultRuneLocale;
      }

      v229 = v213->__runetype[v173];
      goto LABEL_374;
    }

    if ((v200 & 0x20) != 0)
    {
      goto LABEL_304;
    }

LABEL_358:
    if ((v200 & 0x40) == 0)
    {
LABEL_359:
      if ((v200 & 4) == 0)
      {
        goto LABEL_536;
      }

      goto LABEL_360;
    }

LABEL_390:
    if (!v28)
    {
      goto LABEL_550;
    }

    v264 = v437[0];
    if (!v437[0])
    {
      goto LABEL_550;
    }

    if (v173 == 95)
    {
      v265 = 1;
      goto LABEL_425;
    }

    if (v173 <= 0x7F)
    {
      v266 = &_DefaultRuneLocale;
      goto LABEL_423;
    }

    v271 = *(v433 + 56);
    if (v173 < 0x100)
    {
      v280 = &__global_locale;
      if (v271 != -1)
      {
        v280 = *(v433 + 56);
      }

      if (!v271)
      {
        v280 = &__c_locale;
      }

      v266 = *(v280[166] + 120);
LABEL_423:
      v277 = v266->__runetype[v173];
    }

    else
    {
      v272 = v193;
      v273 = v145;
      v274 = v27;
      v275 = v33;
      v276 = ___runetype_l(v173, v271);
      v33 = v275;
      v27 = v274;
      v145 = v273;
      v161 = path;
      v193 = v272;
      LOWORD(v277) = v276;
      v264 = v437[0];
    }

    v265 = (v277 & 0x500) != 0;
LABEL_425:
    if (v264 != 95)
    {
      if (v264 > 0x7F)
      {
        v283 = *(v433 + 56);
        if (v264 >= 0x100)
        {
          v284 = v197;
          v285 = v193;
          v286 = v27;
          v287 = v33;
          LOWORD(v288) = ___runetype_l(v264, v283);
          v33 = v287;
          v27 = v286;
          v145 = v426;
          v161 = path;
          v193 = v285;
          v197 = v284;
LABEL_437:
          v281 = (v288 & 0x500) != 0;
          goto LABEL_438;
        }

        v289 = &__global_locale;
        if (v283 != -1)
        {
          v289 = *(v433 + 56);
        }

        if (!v283)
        {
          v289 = &__c_locale;
        }

        v282 = *(v289[166] + 120);
      }

      else
      {
        v282 = &_DefaultRuneLocale;
      }

      v288 = v282->__runetype[v264];
      goto LABEL_437;
    }

    v281 = 1;
LABEL_438:
    if (v265 != v281)
    {
LABEL_441:
      v20 = v428;
      goto LABEL_550;
    }

    v20 = v428;
    if ((*(v39 + 40) & 4) == 0)
    {
      goto LABEL_536;
    }

LABEL_360:
    v240 = *(v39 + 48);
    v241 = *(v433 + 96);
    v396 = v241;
    v406 = v240;
    if ((v241 & 2) == 0)
    {
LABEL_361:
      v242 = 0;
      v243 = 0;
      v244 = 0;
      goto LABEL_444;
    }

    v244 = (v241 >> 1) & 1;
    if (v173 >= 0x80)
    {
      v409 = (v241 >> 1) & 1;
      v267 = v33;
      v268 = v193;
      v269 = *(v433 + 56);
      if (v173 < 0x100)
      {
        v279 = &__global_locale;
        if (v269 != -1)
        {
          v279 = *(v433 + 56);
        }

        if (!v269)
        {
          v279 = &__c_locale;
        }

        v270 = *(*(v279[166] + 120) + 4 * v173 + 60);
        if ((v270 & 0x1000) == 0)
        {
          goto LABEL_415;
        }
      }

      else if ((___runetype_l(v173, *(v433 + 56)) & 0x1000) == 0)
      {
        LOWORD(v270) = ___runetype_l(v173, v269);
LABEL_415:
        if ((v270 & 0x8000) == 0)
        {
          v242 = 0;
          v243 = 0;
          v193 = v268;
          v244 = 0;
          v161 = path;
          v33 = v267;
          v240 = v406;
          goto LABEL_444;
        }

        v243 = ___tolower_l(v173, v269);
        v242 = v173;
        goto LABEL_443;
      }

      v242 = ___toupper_l(v173, v269);
      v243 = v173;
LABEL_443:
      v193 = v268;
      v161 = path;
      v33 = v267;
      v240 = v406;
      v244 = v409;
      goto LABEL_444;
    }

    v245 = &_DefaultRuneLocale.__magic[4 * v173];
    v246 = *(v245 + 15);
    if ((v246 & 0x1000) != 0)
    {
      v242 = *(v245 + 527);
      v243 = v173;
    }

    else
    {
      if ((v246 & 0x8000) == 0)
      {
        goto LABEL_361;
      }

      v243 = *(v245 + 271);
      v242 = v173;
    }

LABEL_444:
    v290 = *v240;
    if (*v240 < 1)
    {
LABEL_529:
      v300 = 0;
      goto LABEL_530;
    }

    v291 = 0;
    v413 = v243;
    v414 = v242;
    v397 = v243;
    v398 = v242;
    v292 = v240;
    v293 = v240;
    v411 = v27;
    v412 = *v240;
    v404 = v33;
    v410 = v244;
    v399 = v193;
    while (2)
    {
      v295 = v293[2];
      v293 += 2;
      v294 = v295;
      if (v295 > 3)
      {
        if (v294 != 4)
        {
          if (v294 != 5)
          {
            goto LABEL_525;
          }

          v301 = v244;
          v302 = v197;
          v303 = v193;
          v304 = v33;
          v305 = v293;
          v300 = __collate_equiv_wchar(*(v433 + 56), v173, v292[3], v301);
          v293 = v305;
          v242 = v414;
          v33 = v304;
          v244 = v410;
          v27 = v411;
          v161 = path;
          v193 = v303;
          v197 = v302;
LABEL_467:
          v290 = v412;
          if (v300)
          {
            goto LABEL_530;
          }

          goto LABEL_525;
        }

        v307 = v292[3];
        v308 = *(v433 + 56);
        if (v244)
        {
          if (v242 > 0x7F)
          {
            if (v242 < 0x100)
            {
              v321 = &__global_locale;
              if (v308 != -1)
              {
                v321 = *(v433 + 56);
              }

              if (!v308)
              {
                v321 = &__c_locale;
              }

              v317 = *(*(v321[166] + 120) + 4 * v398 + 60);
            }

            else
            {
              v314 = *(v433 + 56);
              v315 = v193;
              v316 = v293;
              v402 = v292[3];
              v317 = ___runetype_l(v242, v308);
              v308 = v314;
              v307 = v402;
              v293 = v316;
              v242 = v414;
              v33 = v404;
              v27 = v411;
              v290 = v412;
              v161 = path;
              v193 = v315;
              v197 = v429;
            }

            v309 = v317 & v307;
          }

          else
          {
            v309 = _DefaultRuneLocale.__runetype[v398] & v307;
          }

          if (v309)
          {
LABEL_552:
            v300 = 1;
            goto LABEL_530;
          }

          v318 = v413;
          if (v413 <= 0x7F)
          {
            v313 = v397;
            goto LABEL_507;
          }

          if (v413 >= 0x100)
          {
            goto LABEL_509;
          }

          v327 = &__global_locale;
          if (v308 != -1)
          {
            v327 = v308;
          }

          if (!v308)
          {
            v327 = &__c_locale;
          }

          v328 = *(*(v327 + 166) + 120);
          v329 = v397;
        }

        else
        {
          if (v173 <= 0x7F)
          {
            v313 = v173;
LABEL_507:
            v322 = _DefaultRuneLocale.__runetype[v313] & v307;
LABEL_523:
            v300 = v322 != 0;
            goto LABEL_524;
          }

          if (v173 >= 0x100)
          {
            v318 = v173;
LABEL_509:
            v323 = v197;
            v324 = v193;
            v325 = v293;
            v403 = v307;
            v326 = ___runetype_l(v318, v308);
            v307 = v403;
            v293 = v325;
            v242 = v414;
            v33 = v404;
            v161 = path;
            v193 = v324;
            v197 = v323;
            v27 = v411;
            v290 = v412;
LABEL_522:
            v322 = v326 & v307;
            goto LABEL_523;
          }

          v330 = &__global_locale;
          if (v308 != -1)
          {
            v330 = *(v433 + 56);
          }

          if (!v308)
          {
            v330 = &__c_locale;
          }

          v328 = *(v330[166] + 120);
          v329 = v173;
        }

        v326 = *(v328 + 4 * v329 + 60);
        goto LABEL_522;
      }

      if (v294 == 1)
      {
        v306 = v292[3];
        if (v244)
        {
          v300 = v306 == v413;
          if (v306 == v242)
          {
            goto LABEL_552;
          }

          goto LABEL_524;
        }

        v300 = v306 == v173;
        if (v306 == v173)
        {
          goto LABEL_530;
        }

LABEL_525:
        ++v291;
        v292 = v293;
        if (v291 >= v290)
        {
          goto LABEL_529;
        }

        continue;
      }

      break;
    }

    if (v294 != 2)
    {
      goto LABEL_525;
    }

    if (++v291 >= v290)
    {
      goto LABEL_529;
    }

    v293 = v292 + 4;
    if (v292[4] != 3)
    {
      goto LABEL_529;
    }

    v296 = v292[3];
    v297 = v292[5];
    v298 = &__global_locale;
    if (*(StatusReg + 8 * __locale_key))
    {
      v298 = *(StatusReg + 8 * __locale_key);
    }

    if (*(v298[166] + 64) >= 2)
    {
      if (v244)
      {
        v300 = v296 <= v413 && v413 <= v297;
        if (v296 <= v242 && v242 <= v297)
        {
          goto LABEL_552;
        }

LABEL_524:
        if (v300)
        {
          goto LABEL_530;
        }
      }

      else
      {
        v300 = v296 <= v173 && v297 >= v173;
        if (v300)
        {
          goto LABEL_530;
        }
      }

      goto LABEL_525;
    }

    v395 = v297;
    v401 = v293;
    v310 = *(v433 + 56);
    if (!v244)
    {
      v320 = *(v433 + 56);
      if (__collate_range_cmp(v296, v173, v310) <= 0)
      {
        v300 = __collate_range_cmp(v395, v173, v320) >= 0;
        v193 = v399;
        v161 = path;
        v197 = v429;
        v293 = v401;
        v33 = v404;
        v242 = v414;
        if (v300)
        {
          goto LABEL_530;
        }
      }

      else
      {
        v193 = v399;
        v161 = path;
        v197 = v429;
        v293 = v401;
        v33 = v404;
        v242 = v414;
      }

      goto LABEL_525;
    }

    v311 = *(v433 + 56);
    v312 = v296;
    if (__collate_range_cmp(v296, v242, v310) > 0 || (__collate_range_cmp(v395, v414, v311) & 0x80000000) != 0)
    {
      if (__collate_range_cmp(v312, v413, v311) > 0)
      {
        v193 = v399;
        v161 = path;
        v197 = v429;
        v293 = v401;
        v33 = v404;
        v242 = v414;
        v290 = v412;
        goto LABEL_525;
      }

      v300 = __collate_range_cmp(v395, v413, v311) >= 0;
      v193 = v399;
      v161 = path;
      v197 = v429;
      v293 = v401;
      v33 = v404;
      v242 = v414;
      goto LABEL_467;
    }

    v300 = 1;
    v193 = v399;
    v161 = path;
    v197 = v429;
    v33 = v404;
LABEL_530:
    if (v406[1])
    {
      v20 = v428;
      v145 = v426;
      if ((v173 != 10 || (v396 & 8) == 0) && !v300)
      {
        goto LABEL_536;
      }

      goto LABEL_550;
    }

    v20 = v428;
    v145 = v426;
    if (!v300)
    {
      goto LABEL_550;
    }

LABEL_536:
    if (!v193)
    {
      v193 = *v172;
      v198 = *(v39 + 24);
      goto LABEL_550;
    }

    v331 = v193;
    v332 = *(v33 + 184);
    if (v332)
    {
      v333 = *(v332 + 40);
      v334 = *(v33 + 184);
LABEL_543:
      *v334 = v28;
      *(v334 + 1) = v432;
      *(v334 + 1) = v435;
      *(v334 + 2) = v431;
      *(v334 + 3) = *v172;
      v338 = v437[0];
      *(v334 + 8) = *(v39 + 16);
      *(v334 + 9) = v338;
      v339 = v334;
      j__mkdtempat_np(v333, v161);
      v33 = v339;
      v340 = *(&v438._mbstateL + 3);
      *(v339 + 80) = *(&v438._mbstateL + 2);
      *(v339 + 96) = v340;
      v341 = *(&v438._mbstateL + 1);
      *(v339 + 48) = *v438.__mbstate8;
      *(v339 + 64) = v341;
      v342 = *(&v438._mbstateL + 7);
      *(v339 + 144) = *(&v438._mbstateL + 6);
      *(v339 + 160) = v342;
      v343 = *(&v438._mbstateL + 5);
      *(v339 + 112) = *(&v438._mbstateL + 4);
      *(v339 + 128) = v343;
      v344 = *(v39 + 24);
      if (v344)
      {
        v345 = *v344;
        if ((v345 & 0x80000000) == 0)
        {
          v346 = *(v339 + 40);
          v347 = v344 + 1;
          do
          {
            v348 = (v346 + 16 * v345);
            if (!(*v348)++)
            {
              v348[1] = v28;
            }

            v348[2] = v28;
            v348[3] = v27;
            v350 = *v347++;
            v345 = v350;
          }

          while ((v350 & 0x80000000) == 0);
        }
      }

      v27 = (v27 + 1);
      v193 = v331;
      v161 = path;
      v197 = v429;
LABEL_550:
      v351 = *(v39 + 64);
      v172 = (v39 + 64);
      v39 += 56;
      if (v351)
      {
        continue;
      }

LABEL_555:
      if (!v193)
      {
        v40 = v198;
        a4 = v430;
        goto LABEL_583;
      }

      v40 = 0;
      v39 = v193;
      v10 = v433;
      v143 = *dfd;
      if (v198)
      {
        while (1)
        {
          v354 = *v198;
          if ((v354 & 0x80000000) != 0)
          {
            break;
          }

          v352 = &v161[16 * v354];
          if (!(*v352)++)
          {
            *(v352 + 1) = v28;
          }

          ++v198;
          *(v352 + 2) = v28;
          *(v352 + 3) = v27;
        }

        v27 = (v27 + 1);
        v40 = v198;
        v39 = v193;
      }

      goto LABEL_210;
    }

    break;
  }

  v335 = v27;
  v27 = v33;
  v336 = tre_mem_alloc_impl(v419, 0, 0, 0, 0xC0uLL);
  if (v336)
  {
    v337 = v336;
    *(v336 + 22) = v27;
    *(v336 + 23) = 0;
    v333 = tre_mem_alloc_impl(v419, 0, 0, 0, v428);
    *(v337 + 5) = v333;
    if (v333)
    {
      *(v27 + 184) = v337;
      v334 = v337;
      v20 = v428;
      v145 = v426;
      v161 = path;
      LODWORD(v27) = v335;
      goto LABEL_543;
    }

LABEL_640:
    v388 = v419;
  }

  else
  {
    v388 = v419;
  }

LABEL_644:
  tre_mem_destroy(v388);
  free(path);
  free(v415);
  free(v417);
  return 12;
}

uint64_t tre_parse_bound(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 84);
  v4 = *(a1 + 40);
  if (v2 >= v4)
  {
    if (v3)
    {
      return 1;
    }

    else
    {
      return 9;
    }
  }

  if ((*v2 - 48) > 9)
  {
    if (v3)
    {
      return 1;
    }

    else
    {
      return 10;
    }
  }

  v7 = (v3 >> 6) & 1;
  v8 = -1;
  v9 = *(a1 + 24);
  do
  {
    v10 = *v9 - 48;
    if (v10 > 9)
    {
      break;
    }

    v8 = v10 + 10 * (v8 & ~(v8 >> 31));
    ++v9;
  }

  while (v9 < v4);
  if (v9 < v4 && *v9 == 44)
  {
    ++v9;
    v11 = -1;
    if (v9 >= v4)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = *v9 - 48;
      if (v12 > 9)
      {
        break;
      }

      v11 = v12 + 10 * (v11 & ~(v11 >> 31));
      ++v9;
    }

    while (v9 < v4);
  }

  else
  {
    v11 = v8;
  }

  if ((v11 & 0x80000000) == 0)
  {
    result = 10;
    if (v11 > 0xFF || v8 > 255 || v8 > v11)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (v8 > 255)
  {
    return 10;
  }

LABEL_25:
  if (v9 >= v4)
  {
    return 9;
  }

  if (v9 == v2)
  {
    return 10;
  }

  if ((v3 & 1) == 0)
  {
    if ((v9 + 1) < v4 && *v9 == 92 && v9[1] == 125)
    {
      v14 = v9 + 2;
      if ((v9 + 2) >= v4 || *v14 != 42)
      {
        goto LABEL_44;
      }

      return 13;
    }

    return 10;
  }

  if (*v9 != 125)
  {
    return 10;
  }

  v14 = v9 + 1;
  if ((v9 + 1) < v4)
  {
    if ((*v14 - 42) < 2)
    {
      return 13;
    }

    if (*v14 == 63)
    {
      if ((v3 & 0x100) == 0)
      {
        return 13;
      }

      v7 = (v3 & 0x40) == 0;
      v14 = v9 + 2;
    }
  }

LABEL_44:
  if (v7)
  {
    ++*(a1 + 76);
  }

  if (a2)
  {
    v15 = tre_ast_new_iter(*a1, *a2, v8, v11, v7);
    *a2 = v15;
    if (!v15)
    {
      return 12;
    }
  }

  result = 0;
  *(a1 + 24) = v14;
  return result;
}

_DWORD *tre_expand_macro(_DWORD *result, unint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  if (result < a2)
  {
    if (*result == 116)
    {
      v3 = "\t";
LABEL_8:
      LOBYTE(v8) = *v3;
      if (*v3)
      {
        v9 = 0;
        v10 = v3 + 1;
        do
        {
          a3[v9] = v8;
          v11 = v9 + 1;
          if (v9 > 0x3E)
          {
            break;
          }

          v8 = v10[v9++];
        }

        while (v8);
      }

      else
      {
        v11 = 0;
      }

      a3[v11] = 0;
    }

    else
    {
      v4 = &byte_1E727A840;
      v5 = 12;
      while (--v5)
      {
        v6 = v4 + 16;
        v7 = *v4;
        v4 += 16;
        if (*result == v7)
        {
          v3 = *(v6 - 1);
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t tre_search_cnames(__int32 *a1, size_t a2)
{
  v4 = 0;
  v5 = 95;
  while (1)
  {
    v6 = (v5 + v4) >> 1;
    v7 = (&cnames + 2 * v6);
    v8 = *v7;
    v9 = wcsncmp(a1, *v7, a2);
    if (!v9 && !v8[a2])
    {
      break;
    }

    if (v9 <= 0)
    {
      v5 = v6 - 1;
    }

    else
    {
      v4 = v6 + 1;
    }

    if (v4 > v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(v7 + 2);
}

uint64_t tre_new_item(int a1, int a2, int *a3, int **a4)
{
  v6 = *a4;
  v7 = **a4;
  v8 = *a3;
  if (v7 >= v8)
  {
    if (v8 > 1023)
    {
      return 12;
    }

    *a3 = 2 * v8;
    v6 = malloc_type_realloc(v6, (16 * v8) | 8, 0x100004000313F17uLL);
    if (!v6)
    {
      return 12;
    }

    *a4 = v6;
    v9 = *v6;
  }

  else
  {
    v9 = **a4;
  }

  v11 = 0;
  v12 = &v6[2 * v7];
  v12[2] = a1;
  v12[3] = a2;
  *v6 = v9 + 1;
  return v11;
}

int sigpause(int a1)
{
  if (!*MEMORY[0x1E69E9B90])
  {
    *MEMORY[0x1E69E9B90] = 1;
  }

  v3 = 0;
  pthread_testcancel();
  if ((a1 - 32) > 0xFFFFFFE0)
  {
    if ((sigprocmask(1, 0, &v3) & 0x80000000) == 0)
    {
      v3 &= ~(1 << (a1 - 1));
      return sigsuspend_NOCANCEL();
    }
  }

  else
  {
    *__error() = 22;
  }

  return -1;
}

int lockf(int a1, int a2, off_t a3)
{
  if (a2 <= 1)
  {
    if (a2 <= 1)
    {
      return __fcntl();
    }

    goto LABEL_9;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      result = __fcntl();
      if (result == -1)
      {
        return result;
      }

      if (!getpid())
      {
        return 0;
      }

      v4 = __error();
      v5 = 35;
LABEL_10:
      *v4 = v5;
      return -1;
    }

LABEL_9:
    v4 = __error();
    v5 = 22;
    goto LABEL_10;
  }

  return __fcntl();
}

int pause(void)
{
  v1 = 0;
  sigprocmask(0, 0, &v1);
  return sigsuspend(&v1);
}

int system(const char *a1)
{
  __argv[0] = "sh";
  __argv[1] = "-c";
  __argv[2] = a1;
  __argv[3] = 0;
  if (!*MEMORY[0x1E69E9B90])
  {
    *MEMORY[0x1E69E9B90] = 1;
  }

  pthread_testcancel();
  if (!a1)
  {
    return 0;
  }

  *v16 = 0;
  v15.__sigaction_u.__sa_handler = 0;
  *&v15.sa_mask = 0;
  v14.__sigaction_u.__sa_handler = 0;
  *&v14.sa_mask = 0;
  v13.__sigaction_u.__sa_handler = 0;
  *&v13.sa_mask = 0;
  *v12 = 0;
  v10 = 0;
  v2 = posix_spawnattr_init(&v10);
  if (v2)
  {
    *__error() = v2;
    return -1;
  }

  v11 = 0;
  pthread_mutex_lock(&__systemfn_mutex_0);
  v15.__sigaction_u.__sa_handler = 1;
  *&v15.sa_mask = 0;
  sigaction(2, &v15, &v14);
  if (v14.__sigaction_u.__sa_handler == 1)
  {
    v4 = 8;
    v5 = 4;
  }

  else
  {
    v11 = 2;
    v4 = 12;
    v5 = 6;
  }

  sigaction(3, &v15, &v13);
  if (v13.__sigaction_u.__sa_handler != 1)
  {
    v11 = v5;
    v4 = 12;
  }

  v12[1] = 0x80000;
  sigprocmask(1, &v12[1], v12);
  posix_spawnattr_setsigmask(&v10, v12);
  if ((v4 & 4) != 0)
  {
    posix_spawnattr_setsigdefault(&v10, &v11);
  }

  posix_spawnattr_setflags(&v10, v4);
  v6 = _NSGetEnviron();
  v7 = posix_spawn(&v16[1], "/bin/sh", 0, &v10, __argv, *v6);
  posix_spawnattr_destroy(&v10);
  if (v7 == 35 || v7 == 12)
  {
    v9 = -1;
  }

  else
  {
    if (!v7)
    {
      v8 = v16[1];
      while (1)
      {
        v16[1] = wait4(v8, v16, 0, 0);
        if (v16[1] != -1)
        {
          goto LABEL_25;
        }

        if (*__error() != 4)
        {
          v9 = v16[1];
          if (v16[1] != -1)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }
    }

    v9 = 32512;
  }

LABEL_24:
  v16[0] = v9;
LABEL_25:
  sigaction(2, &v14, 0);
  sigaction(3, &v13, 0);
  sigprocmask(3, v12, 0);
  pthread_mutex_unlock(&__systemfn_mutex_0);
  return v16[0];
}

FILE *popen_DARWIN_EXTSN(unint64_t a1, unsigned __int8 *a2)
{
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a1);
    if (off_1EAC9EA80)
    {
      (off_1EAC9EA80)(a2);
    }
  }

  v18 = 0;
  *__argv = 0u;
  v20 = 0u;
  v17 = 0;
  if (!a2)
  {
    goto LABEL_10;
  }

  v4 = *a2;
  if (v4 == 119)
  {
    goto LABEL_48;
  }

  if (v4 != 114)
  {
LABEL_10:
    v5 = 0;
    *__error() = 22;
    return v5;
  }

  if (a2[1] != 43 || a2[2])
  {
LABEL_48:
    if (a2[1])
    {
      goto LABEL_10;
    }

    if ((pipe(v21) & 0x80000000) == 0)
    {
      v7 = 0;
      goto LABEL_16;
    }

    return 0;
  }

  v7 = 1;
  if (socketpair(1, 1, 0, v21) < 0)
  {
    return 0;
  }

  a2 = "r+";
LABEL_16:
  if (*a2 == 114)
  {
    v5 = fdopen_DARWIN_EXTSN(v21[0], a2);
    if (v5)
    {
      goto LABEL_18;
    }

LABEL_22:
    close_NOCANCEL();
    close_NOCANCEL();
    return v5;
  }

  v5 = fdopen_DARWIN_EXTSN(v21[1], a2);
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_18:
  v8 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
  if (!v8)
  {
    fclose(v5);
    close_NOCANCEL();
    return 0;
  }

  v9 = v8;
  v10 = posix_spawn_file_actions_init(&v17);
  if (v10)
  {
    v11 = v10;
    fclose(v5);
    close_NOCANCEL();
    free(v9);
    v5 = 0;
    *__error() = v11;
  }

  else
  {
    if (*a2 == 114)
    {
      posix_spawn_file_actions_addclose(&v17, v21[0]);
      if (v21[1] != 1)
      {
        posix_spawn_file_actions_adddup2(&v17, v21[1], 1);
        posix_spawn_file_actions_addclose(&v17, v21[1]);
      }

      if (v7)
      {
        posix_spawn_file_actions_adddup2(&v17, 1, 0);
      }
    }

    else
    {
      if (v21[0])
      {
        posix_spawn_file_actions_adddup2(&v17, v21[0], 0);
        posix_spawn_file_actions_addclose(&v17, v21[0]);
      }

      posix_spawn_file_actions_addclose(&v17, v21[1]);
    }

    pthread_mutex_lock(&__popen_pidlist_mutex);
    for (i = __popen_pidlist; i; i = *i)
    {
      posix_spawn_file_actions_addclose(&v17, *(i + 16));
    }

    __argv[0] = "sh";
    __argv[1] = "-c";
    v20 = a1;
    v13 = _NSGetEnviron();
    v14 = posix_spawn(&v18, "/bin/sh", &v17, 0, __argv, *v13);
    pthread_mutex_unlock(&__popen_pidlist_mutex);
    posix_spawn_file_actions_destroy(&v17);
    if (v14)
    {
      if (v14 == 35 || v14 == 12)
      {
        fclose(v5);
        close_NOCANCEL();
        free(v9);
        v5 = 0;
        *__error() = v14;
        return v5;
      }

      v18 = -1;
    }

    if (*a2 == 114)
    {
      v16 = v21[0];
    }

    else
    {
      v16 = v21[1];
    }

    *(v9 + 4) = v16;
    close_NOCANCEL();
    v9[1] = v5;
    *(v9 + 5) = v18;
    pthread_mutex_lock(&__popen_pidlist_mutex);
    *v9 = __popen_pidlist;
    __popen_pidlist = v9;
    pthread_mutex_unlock(&__popen_pidlist_mutex);
    fwide(v5, -1);
  }

  return v5;
}

uint64_t fdopen_DARWIN_EXTSN(int a1, unsigned __int8 *a2)
{
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a2);
  }

  v11 = 0;
  if (a1 >= 0x8000)
  {
    v4 = __error();
    result = 0;
    v6 = 24;
LABEL_5:
    *v4 = v6;
    return result;
  }

  v7 = __sflags(a2, &v11);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = fcntl_NOCANCEL();
  if (v9 < 0)
  {
    return 0;
  }

  v10 = v9;
  if ((v9 & 3) != 2 && (v9 & 3) != (v11 & 3))
  {
    v4 = __error();
    result = 0;
    v6 = 22;
    goto LABEL_5;
  }

  result = __sfp(0);
  if (result)
  {
    *(result + 16) = v8;
    if ((v10 & 8) == 0 && (v11 & 8) != 0)
    {
      *(result + 16) = v8 | 0x100;
    }

    *(result + 18) = a1;
    *(result + 64) = __sread;
    *(result + 80) = __swrite;
    *(result + 72) = __sseek;
    *(result + 48) = result;
    *(result + 56) = __sclose;
  }

  return result;
}

uint64_t fopen_DARWIN_EXTSN(uint64_t a1, unsigned __int8 *a2)
{
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a1);
    if (off_1EAC9EA80)
    {
      (off_1EAC9EA80)(a2);
    }
  }

  v8 = 0;
  v3 = __sflags(a2, &v8);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = __sfp(0);
  if (!v5)
  {
    return v5;
  }

  v6 = open_NOCANCEL();
  if ((v6 & 0x80000000) != 0)
  {
    __sfprelease(v5);
    return 0;
  }

  if (v6 < 0x8000)
  {
    *(v5 + 18) = v6;
    *(v5 + 16) = v4;
    *(v5 + 64) = __sread;
    *(v5 + 80) = __swrite;
    *(v5 + 72) = __sseek;
    *(v5 + 48) = v5;
    *(v5 + 56) = __sclose;
    if ((v8 & 8) != 0)
    {
      _sseek(v5, 0, 2);
    }
  }

  else
  {
    *(v5 + 16) = 0;
    close_NOCANCEL();
    v5 = 0;
    *__error() = 24;
  }

  return v5;
}

uint64_t getgroups_DARWIN_EXTSN(unsigned int a1, uint64_t a2)
{
  v4 = getuid();
  v5 = getpwuid(v4);
  if (v5)
  {
    if (a1)
    {
      v7 = a1;
      if ((MEMORY[0x193AD6260](v5->pw_name, v5->pw_gid, a2, &v7) & 0x80000000) == 0)
      {
        return v7;
      }
    }

    else
    {
      result = getgroupcount();
      if (result)
      {
        return result;
      }
    }
  }

  *__error() = 22;
  return 0xFFFFFFFFLL;
}

uint64_t __memccpy_chk(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a5 < a4)
  {
    __chk_fail_overflow();
  }

  v8 = MEMORY[0x193AD64A0]();
  v9 = v8;
  if (v8)
  {
    v10 = v8 - a1;
  }

  else
  {
    v10 = a4;
  }

  __chk_overlap(a1, v10, a2, v10);
  return v9;
}

uint64_t __snprintf_object_size_chk(char *a1, size_t a2, size_t __size, char *__format, ...)
{
  va_start(va, __format);
  if (a2 < __size)
  {
    __chk_fail_overflow();
  }

  return vsnprintf(a1, __size, __format, va);
}

int __vsprintf_chk(char *a1, int a2, size_t a3, const char *a4, va_list a5)
{
  if (a3 >> 31)
  {

    return vsprintf(a1, a4, a5);
  }

  else
  {
    result = vsnprintf(a1, a3, a4, a5);
    if ((result & 0x80000000) == 0 && result >= a3)
    {
      __chk_fail_overflow();
    }
  }

  return result;
}

uint64_t __sprintf_object_size_chk(char *a1, size_t a2, char *a3, ...)
{
  va_start(va, a3);
  if (a2 >> 31)
  {
    return vsprintf(a1, a3, va);
  }

  result = vsnprintf(a1, a2, a3, va);
  if ((result & 0x80000000) == 0 && result >= a2)
  {
    __chk_fail_overflow();
  }

  return result;
}

char *__stpncpy_chk(char *a1, const char *a2, size_t a3, size_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  __stpncpy_chk_cold_1(a1, a2, a3, &v5);
  return v5;
}

int __vsnprintf_chk(char *a1, size_t a2, int a3, size_t a4, const char *a5, va_list a6)
{
  if (a4 < a2)
  {
    __chk_fail_overflow();
  }

  return vsnprintf(a1, a2, a5, a6);
}

void fts_build_cold_1()
{
  v0 = _os_assert_log();
  _os_crash(v0);
  __break(1u);
}

void _os_debug_log(char *a1, ...)
{
  va_start(va, a1);
  v3 = MEMORY[0x1E69E99F0];
  if (*(MEMORY[0x1E69E99F0] + 192) == -1)
  {
    v4 = *(MEMORY[0x1E69E99F0] + 200);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_0();
  }

  if ((*(v4 + 20) & 2) == 0)
  {
    v11 = 0;
    v5 = vasprintf(&v11, a1, va);
    v6 = v11;
    if (v11)
    {
      v7 = v11;
      if (v5 >= 0x15)
      {
        if (*(v4 + 20))
        {
          v8 = v11[16];
          v9 = mach_absolute_time();
          if (*(v3 + 192) == -1)
          {
            v10 = *(v3 + 200);
          }

          else
          {
            v10 = OUTLINED_FUNCTION_0();
          }

          snprintf(v6, 0x11uLL, "%16llu", v9 - *v10);
          v7 = v11;
          v11[16] = v8;
        }

        else
        {
          v7 = v11 + 20;
          v11 += 20;
        }
      }

      _os_debug_log_write(7, v7, v1);
      free(v6);
    }
  }
}

char *_os_assert_log()
{
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  v3 = dladdr(v1, &v20);
  if (v3)
  {
    *uu = 0;
    v23 = 0;
    _os_get_image_uuid(v20.dli_fbase, uu);
    uuid_unparse(uu, out);
    dli_fname = v20.dli_fname;
    strrchr(v20.dli_fname, 47);
    OUTLINED_FUNCTION_3();
  }

  else
  {
    v0 = 0;
    dli_fname = 0;
  }

  v6 = OUTLINED_FUNCTION_5(v3, v4, "%s:%lu");
  OUTLINED_FUNCTION_6(v6, v7, "0x%llx");
  build = _os_get_build(v24);
  v15 = OUTLINED_FUNCTION_1(build, v9, "assertion failed: %s: %s + %lu [%s]: %s", v10, v11, v12, v13, v14, v24, dli_fname, v0, out, v25, v19, v20.dli_fname, v20.dli_fbase, v20.dli_sname, v20.dli_saddr, v21, uu[0]);
  snprintf(v15, v16, v17);
  if ((_os_log_redirect(v20.dli_fbase, uu) & 1) == 0)
  {
    _os_debug_log_error_offset(uu, v2);
  }

  return strdup(uu);
}

char *_os_assert_log_ctx(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v11 = OUTLINED_FUNCTION_1(a1, a2, a3, a4, a5, a6, a7, a8, v34, v36, v38, v40, v42, v44, v46.dli_fname, v46.dli_fbase, v46.dli_sname, v46.dli_saddr, v47, __s1[0]);
  MEMORY[0x193AD5FD0](v11);
  OUTLINED_FUNCTION_0_0();
  v12 = dladdr(v8, &v46);
  if (v12)
  {
    OUTLINED_FUNCTION_4(v12, v13, v14, v15, v16, v17, v18, v19, v35, v37, v39, v41, v43, v45, v46.dli_fname, v46.dli_fbase);
    uuid_unparse(uu, out);
    dli_fname = v46.dli_fname;
    strrchr(v46.dli_fname, 47);
    OUTLINED_FUNCTION_2();
  }

  else
  {
    v9 = 0;
    dli_fname = 0;
  }

  v21 = OUTLINED_FUNCTION_5(v12, v13, "%s:%lu");
  OUTLINED_FUNCTION_6(v21, v22, "0x%llx");
  build = _os_get_build(v49);
  v30 = OUTLINED_FUNCTION_1(build, v24, "assertion failed: %s: %s + %lu [%s]: %s", v25, v26, v27, v28, v29, v49, dli_fname, v9, out, v50, v45, v46.dli_fname, v46.dli_fbase, v46.dli_sname, v46.dli_saddr, v47, __s1[0]);
  snprintf(v30, v31, v32);
  _simple_asl_msg_new();
  a1();
  _simple_sfree();
  return strdup(__s1);
}

void _os_crash_fmt_cold_1()
{
  os_log_pack_send_and_compose();
  abort_with_payload();
  mpool_new_cold_1();
}

void arc4_init_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg(*a1);
  __break(1u);
}

void __assert_rtn(const char *a1, const char *a2, int a3, const char *a4)
{
  if (a1)
  {
    if (a1 == -1)
    {
      _simple_dprintf();
      if (qword_1EAC9CAC0)
      {
        goto LABEL_13;
      }

      if (!_simple_salloc())
      {
        goto LABEL_12;
      }
    }

    else
    {
      _simple_dprintf();
      if (qword_1EAC9CAC0)
      {
        goto LABEL_13;
      }

      if (!_simple_salloc())
      {
LABEL_12:
        qword_1EAC9CAC0 = a4;
LABEL_13:
        abort();
      }
    }
  }

  else
  {
    _simple_dprintf();
    if (qword_1EAC9CAC0)
    {
      goto LABEL_13;
    }

    if (!_simple_salloc())
    {
      goto LABEL_12;
    }
  }

  _simple_sprintf();
  a4 = _simple_string();
  goto LABEL_12;
}

void err(int a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = __error();
  verrc(a1, *v4, a2, va);
}

void verrc(int a1, int a2, const char *a3, __darwin_va_list a4)
{
  v7 = *&a1;
  v8 = _e_err_file;
  if (!_e_err_file)
  {
    v8 = __stderrp;
    _e_err_file = __stderrp;
  }

  v9 = getprogname();
  fprintf(v8, "%s: ", v9);
  if (a3)
  {
    _e_visprintf(_e_err_file, a3, a4);
    fwrite(": ", 2uLL, 1uLL, _e_err_file);
  }

  v10 = _e_err_file;
  v11 = strerror(a2);
  fprintf(v10, "%s\n", v11);
  if (_e_err_exit)
  {
    if (_e_err_exit == 1)
    {
      (*(off_1EAC9EA30 + 2))(off_1EAC9EA30, v7);
    }

    else
    {
      off_1EAC9EA30(v7);
    }
  }

  exit(v7);
}

void verrx(int a1, const char *a2, __darwin_va_list a3)
{
  v5 = *&a1;
  v6 = _e_err_file;
  if (!_e_err_file)
  {
    v6 = __stderrp;
    _e_err_file = __stderrp;
  }

  v7 = getprogname();
  fprintf(v6, "%s: ", v7);
  if (a2)
  {
    _e_visprintf(_e_err_file, a2, a3);
  }

  fputc(10, _e_err_file);
  if (_e_err_exit)
  {
    if (_e_err_exit == 1)
    {
      (*(off_1EAC9EA30 + 2))(off_1EAC9EA30, v5);
    }

    else
    {
      off_1EAC9EA30(v5);
    }
  }

  exit(v5);
}

void warn(const char *a1, ...)
{
  va_start(va, a1);
  v2 = __error();
  vwarnc(*v2, a1, va);
}

void vwarnc(int a1, const char *a2, __darwin_va_list a3)
{
  v6 = _e_err_file;
  if (!_e_err_file)
  {
    v6 = __stderrp;
    _e_err_file = __stderrp;
  }

  v7 = getprogname();
  fprintf(v6, "%s: ", v7);
  if (a2)
  {
    _e_visprintf(_e_err_file, a2, a3);
    fwrite(": ", 2uLL, 1uLL, _e_err_file);
  }

  v8 = _e_err_file;
  v9 = strerror(a1);
  fprintf(v8, "%s\n", v9);
}

void vwarn(const char *a1, __darwin_va_list a2)
{
  v4 = *__error();

  vwarnc(v4, a1, a2);
}

void vwarnx(const char *a1, __darwin_va_list a2)
{
  v4 = _e_err_file;
  if (!_e_err_file)
  {
    v4 = __stderrp;
    _e_err_file = __stderrp;
  }

  v5 = getprogname();
  fprintf(v4, "%s: ", v5);
  if (a1)
  {
    _e_visprintf(_e_err_file, a1, a2);
  }

  v6 = _e_err_file;

  fputc(10, v6);
}

void perror(const char *a1)
{
  if (a1)
  {
    v3 = v10;
    if (*a1)
    {
      v10[0] = a1;
      v10[1] = j__strsignal_r(a1, v1, v2);
      v10[2] = ": ";
      v10[3] = 2;
      v3 = &v11;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = __error();
  strerror_r(*v4, __strerrbuf, 0x800uLL);
  *v3 = __strerrbuf;
  v7 = j__strsignal_r(__strerrbuf, v5, v6);
  v3[2] = "\n";
  v8 = v3 + 2;
  *(v8 - 1) = v7;
  v8[1] = 1;
  flockfile(__stderrp);
  __sflush(__stderrp);
  writev_NOCANCEL();
  v9 = __stderrp;
  __stderrp->_flags &= ~0x1000u;
  funlockfile(v9);
}

void __vfprintf_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg(*a1);
  __break(1u);
}

size_t regerror(int a1, const regex_t *a2, char *a3, size_t a4)
{
  if (a1 != 255)
  {
    v12 = &rerrs;
    do
    {
      v14 = *v12;
      v12 += 6;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == (a1 & 0xFFFFFEFF);
      }

      else
      {
        v15 = 1;
      }
    }

    while (!v15);
    if ((a1 & 0x100) == 0)
    {
      v9 = *(v12 - 1);
      goto LABEL_21;
    }

    if (v13)
    {
      v9 = __big;
      j__strnstr(__big, *(v12 - 2), a3);
      goto LABEL_21;
    }

    v20 = a1 & 0xFFFFFEFF;
    v16 = "REG_0x%x";
    goto LABEL_20;
  }

  re_endp = a2->re_endp;
  if (!j__strncasecmp_l("REG_NOMATCH", re_endp, a3, a4))
  {
    v10 = 1;
LABEL_18:
    v20 = v10;
    v16 = "%d";
LABEL_20:
    v9 = __big;
    sprintf(__big, v16, v20);
    goto LABEL_21;
  }

  v8 = off_1E727A088;
  v9 = "0";
  while (1)
  {
    v10 = *(v8 - 2);
    if (!v10)
    {
      break;
    }

    v11 = *v8;
    v8 += 3;
    if (!j__strncasecmp_l(v11, re_endp, a3, v7))
    {
      goto LABEL_18;
    }
  }

LABEL_21:
  v18 = j__strsignal_r(v9, a2, a3) + 1;
  if (a4)
  {
    if (v18 >= a4)
    {
      j__strtod(a3, v9);
      a3[a4 - 1] = 0;
    }

    else
    {
      j__strnstr(a3, v9, v17);
    }
  }

  return v18;
}

void abort(void)
{
  if (!qword_1EAC9CAC0)
  {
    qword_1EAC9CAC0 = "abort() called";
  }

  v0 = pthread_self();
  if (__cleanup)
  {
    _cleanup();
  }

  OUTLINED_FUNCTION_0_1(-1569, v1, v2, HIDWORD(v2), 0, 0);
  __pthread_workqueue_setkill();
  pthread_sigmask(3, &v3, 0);
  pthread_kill(v0, 6);
  usleep_NOCANCEL(0x2710u);
  __abort();
}

void __abort()
{
  if (!qword_1EAC9CAC0)
  {
    qword_1EAC9CAC0 = "__abort() called";
  }

  v0 = pthread_self();
  v3.__sigaction_u.__sa_handler = 0;
  *&v3.sa_mask = 0xFFFFFFFFLL;
  sigaction(6, &v3, 0);
  OUTLINED_FUNCTION_0_1(v3.sa_mask & 0xFFFFFFDF, v1, v2, HIDWORD(v2), v3.__sigaction_u.__sa_handler, v3.sa_mask);
  __pthread_workqueue_setkill();
  pthread_sigmask(3, &v3.sa_mask, 0);
  pthread_kill(v0, 6);
  usleep_NOCANCEL(0x2710u);
  v3.sa_mask = -25;
  sigprocmask(3, &v3.sa_mask, 0);
  __break(1u);
}

void getopt_internal_cold_1()
{
  if (getopt_internal_posixly_correct)
  {
    warnx("illegal option -- %c");
  }

  else
  {
    warnx("invalid option -- %c");
  }
}

void ptsname_cold_2()
{
  v0 = _os_assert_log();
  _os_crash(v0);
  __break(1u);
}

void _psort_cold_1()
{
  v0 = __error();
  strerror(*v0);
  abort_report_np("%s:%s:%u: %s: getargs: %s");
}

void _psort_cold_1_0()
{
  v0 = __error();
  strerror(*v0);
  abort_report_np("%s:%s:%u: %s: getargs: %s");
}

void _psort_cold_1_1()
{
  v0 = __error();
  strerror(*v0);
  abort_report_np("%s:%s:%u: %s: getargs: %s");
}

char *__stpncpy_chk_cold_1(char *a1, const char *a2, size_t a3, char **a4)
{
  result = stpncpy(a1, a2, a3);
  *a4 = result;
  if (__chk_assert_no_overlap)
  {
    if (result - a1 == a3)
    {
      v9 = result - a1;
    }

    else
    {
      v9 = result - a1 + 1;
    }

    return __chk_overlap(a1, v9, a2, v9);
  }

  return result;
}

char *__cdecl j__catgets(nl_catd a1, int a2, int a3, const char *a4)
{
    ;
  }
}

in_addr_t j__inet_lnaof(in_addr a1)
{
    ;
  }
}

int j__mergesort_b(void *__base, size_t __nel, size_t __width, void *__compar)
{
    ;
  }
}

int j__mkdirx_np(const char *a1, filesec_t a2)
{
    ;
  }
}

char *__cdecl j__mkdtemp(char *a1)
{
    ;
  }
}

char *__cdecl j__mkdtempat_np(int dfd, char *path)
{
    ;
  }
}

int j__mkostemp(char *path, int oflags)
{
    ;
  }
}

int j__mkostemps(char *path, int slen, int oflags)
{
    ;
  }
}

void j__strmode(int __mode, char *__bp)
{
    ;
  }
}

int j__strncasecmp_l(const char *a1, const char *a2, size_t a3, locale_t a4)
{
    ;
  }
}

char *__cdecl j__strnstr(const char *__big, const char *__little, size_t __len)
{
    ;
  }
}

char *__cdecl j__strsep(char **__stringp, const char *__delim)
{
    ;
  }
}

char *__cdecl j__strsignal(int __sig)
{
    ;
  }
}

int j__strsignal_r(int __sig, char *__strsignalbuf, size_t __buflen)
{
    ;
  }
}

int j__strsvisx(char *a1, const char *a2, size_t a3, int a4, const char *a5)
{
    ;
  }
}

double j__strtod(const char *a1, char **a2)
{
    ;
  }
}

void j__strtoencf16()
{
    ;
  }
}