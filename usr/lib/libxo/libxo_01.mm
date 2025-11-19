uint64_t xo_format_string_direct(uint64_t a1, uint64_t *a2, __int16 a3, __int32 *a4, char *a5, uint64_t a6, int a7, int a8, int a9)
{
  v81 = 0;
  v9 = a6;
  if (a6 >= 1)
  {
    v14 = *a2;
    v15 = a2[1] + a6;
    if (v15 < *a2 + a2[2])
    {
      goto LABEL_6;
    }

    v16 = (v15 - v14 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    v17 = xo_realloc(v14, v16);
    if (v17)
    {
      v18 = v17 + a2[1] - *a2;
      *a2 = v17;
      a2[1] = v18;
      a2[2] = v16;
      goto LABEL_6;
    }

    return 0;
  }

  if (!a6)
  {
    return 0;
  }

LABEL_6:
  v19 = 0;
  v20 = a7;
  while (2)
  {
    v75 = v20 - v19;
    while (1)
    {
      if (a5)
      {
        v21 = *a5;
        if (!*a5)
        {
          return v19;
        }

        if ((a3 & 0x4000) != 0 && (v21 == 92 || v21 == 37))
        {
          if (!--v9)
          {
            return v19;
          }

          if (!*++a5)
          {
            return v19;
          }
        }
      }

      if (a4 && !*a4)
      {
        return v19;
      }

      switch(a9)
      {
        case 3:
          if (v9 <= 0)
          {
            v26 = 6;
          }

          else
          {
            v26 = v9;
          }

          v24 = mbrtowc(&v81, a5, v26, (a1 + 216));
          if ((v24 & 0x8000000000000000) == 0)
          {
            if (!v24)
            {
              return v19;
            }

            goto LABEL_34;
          }

          v73 = *a5;
          xo_failure(a1, "invalid mbs char: %02hhx");
          v81 = 63;
LABEL_33:
          v24 = 1;
LABEL_34:
          a5 += v24;
          break;
        case 2:
          v25 = *a5;
          if ((*a5 & 0x80000000) == 0)
          {
            v81 = *a5;
            goto LABEL_33;
          }

          if ((v25 & 0xE0) == 0xC0)
          {
            v24 = 2u;
          }

          else if ((v25 & 0xF0) == 0xE0)
          {
            v24 = 3u;
          }

          else
          {
            if ((v25 & 0xF8) != 0xF0)
            {
              v71 = "invalid UTF-8 character: %02hhx";
LABEL_130:
              xo_failure(a1, v71);
              return 0xFFFFFFFFLL;
            }

            v24 = 4u;
          }

          if (v9 >= 1 && v9 < v24)
          {
            return v19;
          }

          v33 = (*(&xo_utf8_data_bits + v24) & v25);
          v34 = 1;
          do
          {
            v35 = a5[v34];
            if ((v35 & 0xC0) != 0x80)
            {
              v81 = -1;
              goto LABEL_129;
            }

            v36 = v35 & 0x3F | (v33 << 6);
            ++v34;
            v33 = v36;
          }

          while (v24 != v34);
          v81 = v36;
          if (v36 != -1)
          {
            goto LABEL_34;
          }

LABEL_129:
          v74 = *a5;
          v71 = "invalid UTF-8 character: %02hhx/%d";
          goto LABEL_130;
        case 1:
          v23 = *a4++;
          v81 = v23;
          v24 = 1;
          break;
        default:
          v24 = 0;
          break;
      }

      if (v9 > 0)
      {
        v9 = (v9 - v24) & ~((v9 - v24) >> 63);
      }

      v27 = v81;
      v28 = xo_wcwidth(v81);
      if ((v28 & 0x80000000) != 0)
      {
        v30 = v27 > 0x7F ? __maskrune(v27, 0x200uLL) : *(MEMORY[0x29EDCA600] + 4 * v27 + 60) & 0x200;
        v29 = v30 == 0;
      }

      else
      {
        v29 = v28;
      }

      v31 = *(a1 + 16);
      if (*(a1 + 16))
      {
        if (a7 < 1 || v31 != 3)
        {
          goto LABEL_49;
        }
      }

      else if (a7 < 1)
      {
        goto LABEL_49;
      }

      if (v29 > v75)
      {
        return v19;
      }

LABEL_49:
      if (a8 != 2)
      {
        v37 = a2[1];
        if ((v37 + 7) >= *a2 + a2[2])
        {
          v38 = &v37[-*a2 + 8198] & 0xFFFFFFFFFFFFE000;
          v39 = xo_realloc(*a2, v38);
          if (!v39)
          {
            return 0xFFFFFFFFLL;
          }

          v40 = v39;
          v37 = (v39 + a2[1] - *a2);
          *a2 = v40;
          a2[1] = v37;
          a2[2] = v38;
        }

        v41 = wcrtomb(v37, v81, (a1 + 216));
        if (v41 <= 0)
        {
          xo_failure(a1, "could not convert wide char: %lx");
          v61 = a2[1];
          a2[1] = (v61 + 1);
          *v61 = 63;
          LODWORD(v29) = 1;
          goto LABEL_125;
        }

        v42 = a2[1] + v41;
        goto LABEL_122;
      }

      if (*(a1 + 16) > 2u)
      {
        if (v31 == 4)
        {
          v32 = v81;
          if ((v81 - 34) <= 0x3B && ((1 << (v81 - 34)) & 0xC00000000000001) != 0)
          {
            v57 = *a2;
            v58 = a2[1];
            if ((v58 + 2) >= *a2 + a2[2])
            {
              v59 = &v58[-v57 + 8193] & 0xFFFFFFFFFFFFE000;
              v60 = xo_realloc(v57, v59);
              if (!v60)
              {
                return 0xFFFFFFFFLL;
              }

              v58 = (v60 + a2[1] - *a2);
              *a2 = v60;
              a2[2] = v59;
            }

            a2[1] = (v58 + 1);
            *v58 = 92;
            v55 = v81;
            goto LABEL_113;
          }

          goto LABEL_68;
        }

        if (v31 != 3)
        {
LABEL_65:
          v32 = v81;
          goto LABEL_68;
        }

LABEL_59:
        v32 = v81;
        switch(v81)
        {
          case '&':
            v62 = xo_xml_amp;
            break;
          case '<':
            v62 = xo_xml_lt;
            break;
          case '>':
            v62 = xo_xml_gt;
            break;
          default:
            if ((a3 & 0x200) == 0 || v81 != 34)
            {
              goto LABEL_68;
            }

            v62 = xo_xml_quot;
            break;
        }

        v63 = strlen(v62);
        v65 = *a2;
        v64 = a2[1];
        v66 = v64 + v63 - 1;
        if (v66 >= *a2 + a2[2])
        {
          v77 = v62;
          v67 = (v66 - v65 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
          v68 = xo_realloc(v65, v67);
          if (!v68)
          {
            return 0xFFFFFFFFLL;
          }

          v69 = v68;
          v64 = (v68 + a2[1] - *a2);
          *a2 = v69;
          a2[1] = v64;
          a2[2] = v67;
          v62 = v77;
        }

        memcpy(v64, v62, v63);
        v42 = a2[1] + v63;
LABEL_122:
        a2[1] = v42;
        goto LABEL_125;
      }

      if (v31 == 1)
      {
        goto LABEL_59;
      }

      if (v31 != 2)
      {
        goto LABEL_65;
      }

      v32 = v81;
      if (v81 <= 0x22 && ((1 << v81) & 0x400002400) != 0)
      {
        break;
      }

      if (v81 == 92)
      {
        break;
      }

LABEL_68:
      if (v32 < 0x80)
      {
        v76 = v19;
        v19 = 1u;
        goto LABEL_94;
      }

      if (v32 < 0x800)
      {
        v76 = v19;
        v19 = 2u;
        goto LABEL_94;
      }

      if (v32 < 0x10000)
      {
        v76 = v19;
        v19 = 3u;
        goto LABEL_94;
      }

      if (v32 < 0x200000)
      {
        v76 = v19;
        v19 = 4u;
LABEL_94:
        v43 = *a2;
        v44 = a2[1];
        v45 = v32;
        if (&v44[v19] >= *a2 + a2[2])
        {
          v46 = &v44[v19 - v43 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
          v47 = xo_realloc(v43, v46);
          if (!v47)
          {
            return 0xFFFFFFFFLL;
          }

          v44 = (v47 + a2[1] - *a2);
          *a2 = v47;
          a2[1] = v44;
          a2[2] = v46;
          v45 = v81;
        }

        if (v32 >= 0x80)
        {
          v49 = v19 - 1;
          do
          {
            v44[v49] = v45 & 0x3F | 0x80;
            v45 >>= 6;
            v50 = v49-- + 1;
          }

          while (v50 > 1);
          v48 = *(&xo_utf8_len_bits + v19) | *v44 & *(&xo_utf8_data_bits + v19);
        }

        else
        {
          v48 = v45 & 0x7F;
        }

        *v44 = v48;
        a2[1] += v19;
        LODWORD(v19) = v76;
        goto LABEL_125;
      }

      xo_failure(a1, "ignoring bad length");
      if (!v9)
      {
        return v19;
      }
    }

    v51 = *a2;
    v52 = a2[1];
    if ((v52 + 2) < *a2 + a2[2])
    {
      goto LABEL_106;
    }

    v53 = &v52[-v51 + 8193] & 0xFFFFFFFFFFFFE000;
    v54 = xo_realloc(v51, v53);
    if (!v54)
    {
      return 0xFFFFFFFFLL;
    }

    v52 = (v54 + a2[1] - *a2);
    *a2 = v54;
    a2[2] = v53;
LABEL_106:
    a2[1] = (v52 + 1);
    *v52 = 92;
    v55 = v81;
    if (v81 == 13)
    {
      v56 = 114;
    }

    else
    {
      if (v81 == 10)
      {
        v56 = 110;
        goto LABEL_124;
      }

LABEL_113:
      v56 = v55 & 0x7F;
    }

LABEL_124:
    v81 = v56;
    v70 = a2[1];
    a2[1] = (v70 + 1);
    *v70 = v56;
LABEL_125:
    v19 = (v19 + v29);
    v20 = a7;
    if (v9)
    {
      continue;
    }

    return v19;
  }
}

size_t xo_trim_ws(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2 >= 1)
  {
    v5 = 0;
    v6 = &v4[a2];
    while (v4[v5] == 32)
    {
      v7 = &v4[++v5];
      if (&v4[v5] >= v6)
      {
        goto LABEL_8;
      }
    }

    if (!v5)
    {
      goto LABEL_9;
    }

    v7 = &v4[v5];
LABEL_8:
    v2 += v4 - v7;
    memmove(v4, v7, v2);
    v4 = *(a1 + 8);
  }

LABEL_9:
  v8 = 0;
  v9 = &v4[v2];
  do
  {
    v10 = v9;
    v11 = v8;
    if (v4 >= v9)
    {
      break;
    }

    --v9;
    ++v8;
  }

  while (*(v10 - 1) == 32);
  if (v11)
  {
    v2 -= v11;
    *v10 = 0;
  }

  return v2;
}

uint64_t xo_format_gettext(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v35[1] = *MEMORY[0x29EDCA608];
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = (a1 + 72);
  if ((v12 + 1) >= v11 + v13[2])
  {
    v14 = &v12[-v11 + 0x2000] & 0xFFFFFFFFFFFFE000;
    v15 = xo_realloc(v11, v14);
    if (!v15)
    {
LABEL_31:
      v34 = *MEMORY[0x29EDCA608];
      return a4;
    }

    v12 = (v15 + *(a1 + 80) - *(a1 + 72));
    *(a1 + 72) = v15;
    *(a1 + 80) = v12;
    *(a1 + 88) = v14;
  }

  *v12 = 0;
  v16 = *v13;
  v17 = (*v13 + a3);
  if ((a2 & 0x100000) == 0)
  {
    v18 = (*v13 + a3);
    if (a5 == 2)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v19 = *(a1 + 80);
  v20 = (a3 + v16 - 1);
  do
  {
    if (v20 < v16)
    {
      v26 = 0;
      goto LABEL_15;
    }

    v21 = *v20--;
  }

  while ((v21 - 48) > 9);
  v22 = 0;
  v23 = v20 + 1;
  v24 = 1;
  do
  {
    v25 = *v23 - 48;
    if (v25 > 9)
    {
      break;
    }

    v22 += v25 * v24;
    v24 *= 10;
    --v23;
  }

  while (v23 >= v16);
  v26 = v22 == 1;
LABEL_15:
  v27 = memchr((*v13 + a3), 44, v19 - v17);
  if (!v27)
  {
    v33 = "no comma in plural gettext field: '%s'";
LABEL_30:
    xo_failure(a1, v33);
    goto LABEL_31;
  }

  if (v27 == v17)
  {
    v33 = "nothing before comma in plural gettext field: '%s'";
    goto LABEL_30;
  }

  if (v27 == v19)
  {
    v33 = "nothing after comma in plural gettext field: '%s'";
    goto LABEL_30;
  }

  *v27 = 0;
  if (v26)
  {
    v18 = v17;
  }

  else
  {
    v18 = v27 + 1;
  }

  if (v18 != v17 || (*(a1 + 80) = v27, a5 != 2))
  {
LABEL_26:
    v30 = strlen(v18);
    v31 = MEMORY[0x2A1C7C4A8]();
    v32 = v35 - ((v31 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v32, v31 + 1);
    memcpy(v32, v18, v30 + 1);
    *(a1 + 80) = *(a1 + 72) + a3;
    a4 = xo_format_string_direct(a1, v13, a2, 0, v32, v30, 0, a5, 2);
    goto LABEL_31;
  }

  v28 = *MEMORY[0x29EDCA608];

  return xo_count_utf8_cols(v17, v27 - v17);
}

uint64_t xo_wcwidth(signed int a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = 0xFFFFFFFFLL;
  if (a1 >= 32 && (a1 - 127) >= 0x21)
  {
    if ((a1 - 918000) >= 0xFFF20110)
    {
      v2 = 0;
      v3 = 141;
      do
      {
        v4 = (v3 + v2) / 2;
        v5 = (&xo_wcwidth_combining + 8 * v4);
        if (v5[1] >= a1)
        {
          if (*v5 <= a1)
          {
            return 0;
          }

          v3 = v4 - 1;
        }

        else
        {
          v2 = v4 + 1;
        }
      }

      while (v3 >= v2);
    }

    if (a1 < 4352)
    {
      return 1;
    }

    else
    {
      v1 = 2;
      if (a1 >> 5 >= 0x8B && (a1 - 9001) >= 2)
      {
        v6 = (a1 - 11904) >> 4 >= 0x765 || a1 == 12351;
        v1 = 2;
        if (v6 && (vaddvq_s32(vandq_s8(vcgtq_u32(xmmword_29998D900, vaddq_s32(vdupq_n_s32(a1), xmmword_29998D8F0)), xmmword_29998D910)) & 0xF) == 0 && (a1 - 65280) >= 0x61 && (a1 - 65504) >= 7 && (a1 - 0x20000) >= 0xFFFE)
        {
          if ((a1 - 196608) >= 0xFFFE)
          {
            return 1;
          }

          else
          {
            return 2;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t xo_count_utf8_cols(char *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = a1;
  v3 = 0;
  v4 = &a1[a2];
  v5 = MEMORY[0x29EDCA600];
  while (1)
  {
    v6 = *v2;
    if (*v2 < 0)
    {
      break;
    }

    v7 = 1;
LABEL_15:
    if (v6 > 0x7F)
    {
      if (__maskrune(v6, 0x40000uLL))
      {
LABEL_19:
        v11 = xo_wcwidth(v6);
        if ((v11 & 0x80000000) != 0)
        {
          if (v6 > 0x7F)
          {
            v13 = __maskrune(v6, 0x200uLL);
          }

          else
          {
            v13 = *(v5 + 4 * v6 + 60) & 0x200;
          }

          v12 = v13 == 0;
        }

        else
        {
          v12 = v11;
        }

        v3 += v12;
      }
    }

    else if ((*(v5 + 4 * v6 + 60) & 0x40000) != 0)
    {
      goto LABEL_19;
    }

    v2 += v7;
    if (v2 >= v4)
    {
      return v3;
    }
  }

  if ((v6 & 0xE0) == 0xC0)
  {
    v7 = 2u;
LABEL_11:
    v8 = *(&xo_utf8_data_bits + v7) & v6;
    v9 = 1;
    while (1)
    {
      v10 = v2[v9];
      if ((v10 & 0xC0) != 0x80)
      {
        break;
      }

      v6 = v10 & 0x3F | (v8 << 6);
      ++v9;
      v8 = v6;
      if (v7 == v9)
      {
        if (v6 == -1)
        {
          return v3;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if ((v6 & 0xF0) == 0xE0)
    {
      v7 = 3u;
      goto LABEL_11;
    }

    if ((v6 & 0xF8) == 0xF0)
    {
      v7 = 4u;
      goto LABEL_11;
    }
  }

  return v3;
}

uint64_t xo_data_append_content(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v6 = 2;
  if ((*(a1 + 3) & 0x20) == 0)
  {
    if (*(a1 + 16))
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

  v7 = *(a1 + 80);
  v8 = *(a1 + 72);
  result = xo_format_string_direct(a1, (a1 + 72), a4 | 0x4000u, 0, a2, a3, -1, v6, 2);
  if ((*&a4 & 0x180000) != 0)
  {
    result = xo_format_gettext(a1, a4, v7 - v8, result, v6);
  }

  if ((*(a1 + 2) & 0x20) != 0)
  {
    *(a1 + 376) += result;
  }

  if ((*(a1 + 8) & 8) != 0)
  {
    *(a1 + 352) += result;
  }

  return result;
}

_BYTE *xo_printable(uint64_t a1)
{
  if (!a1)
  {
    return &xo_version_extra;
  }

  v1 = xo_printable_bufnum();
  if (*v1 == 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = *v1 + 1;
  }

  *v1 = v2;
  v3 = xo_printable_bufset();
  result = (v3 + (v5 << 7));
  v7 = *v4;
  v8 = result;
  if (*v4)
  {
    v9 = 0;
    v10 = v4 + 1;
    v8 = result;
    do
    {
      switch(v7)
      {
        case 34:
          ++v9;
          *v8 = 92;
          result[v9] = 34;
          break;
        case 13:
          ++v9;
          *v8 = 92;
          result[v9] = 114;
          break;
        case 10:
          ++v9;
          *v8 = 92;
          result[v9] = 110;
          break;
        default:
          *v8 = v7;
          break;
      }

      v8 = &result[v9 + 1];
      v11 = *v10++;
      v7 = v11;
      if (!v11)
      {
        break;
      }
    }

    while (v9++ < 126);
  }

  *v8 = 0;
  return result;
}

unint64_t xo_format_text(unint64_t result, char *__src, uint64_t a3)
{
  v3 = __src;
  v4 = result;
  if (*(result + 16) == 3)
  {
    return xo_buf_append_div(result, "text", 0, 0, 0, __src, a3, 0, 0, 0, 0);
  }

  if (!*(result + 16))
  {
    v5 = (result + 72);
    v6 = &__src[a3];
    v7 = (result + 80);
    if (a3 >= 1)
    {
      v8 = 0;
      v46 = *(result + 72) - *(result + 80);
      v9 = __src;
      while (1)
      {
        v10 = *v3;
        if (v10 < 0)
        {
          break;
        }

        result = 1;
LABEL_49:
        v8 += result;
        if (++v3 >= v6)
        {
          v39 = v8;
          v3 = v9;
          goto LABEL_55;
        }
      }

      if (v9 == v3)
      {
        v18 = *v3;
        v17 = v6 - v3;
        goto LABEL_16;
      }

      if (v9)
      {
        v12 = *(v4 + 72);
        v11 = *(v4 + 80);
        v13 = &v11[v3 - v9];
        if (v13 >= v12 + *(v4 + 88))
        {
          v14 = &v13[-v12 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
          v15 = xo_realloc(*(v4 + 72), v14);
          if (!v15)
          {
            goto LABEL_13;
          }

          v16 = v15;
          v11 = (v15 + *(v4 + 80) - *(v4 + 72));
          *(v4 + 72) = v16;
          *(v4 + 80) = v11;
          *(v4 + 88) = v14;
        }

        memcpy(v11, v9, v3 - v9);
        *v7 += v3 - v9;
      }

LABEL_13:
      v10 = *v3;
      v17 = v6 - v3;
      v18 = *v3;
      if ((v10 & 0x80000000) == 0)
      {
        v19 = 0;
        v20 = 0;
        v21 = 1u;
        goto LABEL_22;
      }

LABEL_16:
      if ((v18 & 0xE0) == 0xC0)
      {
        v20 = 0;
        v19 = 1;
        v21 = 2u;
      }

      else if ((v18 & 0xF0) == 0xE0)
      {
        v19 = 1;
        v20 = 1;
        v21 = 3u;
      }

      else
      {
        if ((v18 & 0xF8) != 0xF0)
        {
          v40 = "invalid UTF-8 data: %02hhx";
          goto LABEL_53;
        }

        v19 = 1;
        v20 = 1;
        v21 = 4u;
      }

LABEL_22:
      if (v21 > v17)
      {
        v40 = "invalid UTF-8 data (short): %02hhx (%d/%d)";
        goto LABEL_53;
      }

      if (v20)
      {
        if (v21 <= 3)
        {
          v22 = 3;
        }

        else
        {
          v22 = v21;
        }

        v23 = 2;
        while ((v3[v23] & 0xC0) == 0x80)
        {
          if (v22 == ++v23)
          {
            goto LABEL_30;
          }
        }

        v40 = "invalid UTF-8 data (byte %d): %x";
LABEL_53:
        result = xo_failure(v4, v40);
        v41 = v46;
LABEL_65:
        *v7 = *v5 + v41;
        return result;
      }

LABEL_30:
      if (v19)
      {
        v24 = (v10 & *(&xo_utf8_data_bits + v21));
        v25 = v21 - 1;
        v26 = v3 + 1;
        while (1)
        {
          v28 = *v26++;
          v27 = v28;
          if ((v28 & 0xC0) != 0x80)
          {
            break;
          }

          v18 = v27 & 0x3F | (v24 << 6);
          v24 = v18;
          if (!--v25)
          {
            if (v18 != -1)
            {
              goto LABEL_35;
            }

            break;
          }
        }

        v35 = v4;
        v36 = "invalid UTF-8 byte sequence";
        goto LABEL_42;
      }

LABEL_35:
      v30 = *(v4 + 72);
      v29 = *(v4 + 80);
      v31 = v30 + *(v4 + 88);
      if ((*(v4 + 1) & 0x40) != 0)
      {
        if (v29 + v21 >= v31)
        {
          v37 = (v29 + v21 - v30 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
          result = xo_realloc(*(v4 + 72), v37);
          if (!result)
          {
            goto LABEL_48;
          }

          v38 = result;
          v29 = (result + *(v4 + 80) - *(v4 + 72));
          *(v4 + 72) = v38;
          *(v4 + 80) = v29;
          *(v4 + 88) = v37;
        }

        memcpy(v29, v3, v21);
        v34 = v21;
      }

      else
      {
        if (v29 + 7 >= v31)
        {
          v32 = (v29 - v30 + 8198) & 0xFFFFFFFFFFFFE000;
          result = xo_realloc(*(v4 + 72), v32);
          if (!result)
          {
LABEL_48:
            v9 = &v3[v21];
            v3 = &v3[v21 - 1];
            goto LABEL_49;
          }

          v33 = result;
          v29 = (result + *(v4 + 80) - *(v4 + 72));
          *(v4 + 72) = v33;
          *(v4 + 80) = v29;
          *(v4 + 88) = v32;
        }

        *(v4 + 312) = 0u;
        *(v4 + 328) = 0u;
        *(v4 + 280) = 0u;
        *(v4 + 296) = 0u;
        *(v4 + 248) = 0u;
        *(v4 + 264) = 0u;
        *(v4 + 216) = 0u;
        *(v4 + 232) = 0u;
        v34 = wcrtomb(v29, v18, (v4 + 216));
        if (v34 <= 0)
        {
          v35 = v4;
          v36 = "could not convert wide char: %lx";
LABEL_42:
          xo_failure(v35, v36);
          result = 0;
          goto LABEL_48;
        }
      }

      *v7 += v34;
      result = xo_wcwidth(v18);
      goto LABEL_48;
    }

    v39 = 0;
LABEL_55:
    if ((*(v4 + 2) & 0x20) != 0)
    {
      *(v4 + 376) += v39;
    }

    if ((*(v4 + 8) & 8) != 0)
    {
      *(v4 + 352) += v39;
    }

    v41 = v6 - v3;
    if (v6 != v3 && v3)
    {
      v43 = *(v4 + 72);
      v42 = *(v4 + 80);
      if (v42 + v41 >= v43 + *(v4 + 88))
      {
        v44 = (v42 + v41 - v43 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        result = xo_realloc(*(v4 + 72), v44);
        if (!result)
        {
          return result;
        }

        v45 = result;
        v42 = (result + *(v4 + 80) - *(v4 + 72));
        *(v4 + 72) = v45;
        *(v4 + 80) = v42;
        *(v4 + 88) = v44;
      }

      result = memcpy(v42, v3, v6 - v3);
      v5 = (v4 + 80);
      goto LABEL_65;
    }
  }

  return result;
}

uint64_t xo_format_content(uint64_t result, const char *a2, char *a3, char *a4, uint64_t a5, char *a6, size_t a7, uint64_t a8)
{
  v14 = result;
  v15 = *(result + 16);
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      return xo_buf_append_div(result, a2, a8, 0, 0, a4, a5, a6, a7, 0, 0);
    }

    if (v15 != 4)
    {
      if (v15 != 5 || a5 != 0)
      {
        return result;
      }

      goto LABEL_21;
    }
  }

  else if (v15 - 1 >= 2)
  {
    if (*(result + 16))
    {
      return result;
    }

    if (a5)
    {

      return xo_data_append_content(result, a4, a5, a8);
    }

    v22 = a6;
    v23 = a7;
    v21 = a8;
    goto LABEL_25;
  }

  if (!a3)
  {
    if (a5)
    {
      return result;
    }

LABEL_21:
    v21 = a8 | 0x800;
    v22 = a6;
    v23 = a7;
LABEL_25:

    return xo_do_format_field(result, 0, v22, v23, v21);
  }

  xo_transition(result, 0, a3, 1, a5, a6, a7, a8);
  xo_format_value(v14, "message", 7uLL, a4, a5, a6, a7, 0, 0, a8);

  return xo_transition(v14, 0, a3, 2, v17, v18, v19, v20);
}

_BYTE *xo_anchor_stop(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v19[1] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 8);
  if ((v5 & 8) != 0)
  {
    *(a1 + 8) = v5 & 0xFFFFFFFFFFFFFFEFLL;
    result = xo_find_width(a1, a2, a3, a4);
    v8 = result;
    if (!result)
    {
      v8 = *(a1 + 360);
    }

    if (v8)
    {
      v9 = v8 >= 0 ? v8 : -v8;
      v10 = v9 - *(a1 + 352);
      if (v10 >= 1)
      {
        if (v9 <= 0x2000)
        {
          v11 = *(a1 + 344);
          v13 = *(a1 + 72);
          v12 = *(a1 + 80);
          MEMORY[0x2A1C7C4A8](result);
          v14 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v14, v10);
          memset(v14, 32, v10);
          result = xo_format_content(a1, "padding", 0, v14, v10, 0, 0, 0);
          if ((v8 & 0x8000000000000000) == 0)
          {
            v15 = v12 - v13;
            v16 = *(a1 + 72);
            v17 = *(a1 + 80) - v16 - v15;
            if (v17 >= 1)
            {
              if (v17 > v10)
              {
                MEMORY[0x2A1C7C4A8](result);
                v14 = v19 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
                bzero(v14, v17);
              }

              memcpy(v14, (v16 + v15), v17);
              memmove((v16 + v11 + v17), (v16 + v11), v15 - v11);
              result = memmove((*(a1 + 72) + v11), v14, v17);
            }
          }
        }

        else
        {
          result = xo_failure(a1, "width over %u are not supported");
        }
      }
    }

    *(a1 + 8) &= ~8uLL;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    v18 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return xo_failure(a1, "no start anchor");
  }

  return result;
}

uint64_t xo_format_title(uint64_t result, uint64_t *a2, const void *a3, size_t a4)
{
  v5 = result;
  v52 = *MEMORY[0x29EDCA608];
  v6 = a2[9];
  v7 = *a2;
  if (v6)
  {
    v8 = a2[9];
  }

  else
  {
    v8 = 2;
  }

  if (v6)
  {
    v9 = a2[4];
  }

  else
  {
    v9 = "%s";
  }

  v10 = *(result + 16);
  if (v10 > 5 || ((1 << v10) & 0x36) == 0)
  {
    v15 = *(result + 80);
    v51 = *(result + 72);
    v16 = *(result + 88);
    if (v10 != 3)
    {
      goto LABEL_34;
    }

    xo_line_ensure_open(result);
    if ((*v5 & 2) != 0)
    {
      xo_buf_indent(v5, *(v5 + 20));
    }

    v17 = *(v5 + 72);
    v18 = *(v5 + 80);
    if (v18 + 17 >= (v17 + *(v5 + 88)))
    {
      v19 = (v18 + 17 - v17 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v20 = xo_realloc(v17, v19);
      if (!v20)
      {
        goto LABEL_23;
      }

      v18 = v20 + *(v5 + 80) - *(v5 + 72);
      *(v5 + 72) = v20;
      *(v5 + 80) = v18;
      *(v5 + 88) = v19;
    }

    v21 = *xo_format_title_div_open;
    *(v18 + 16) = xo_format_title_div_open[16];
    *v18 = v21;
    *(v5 + 80) += 17;
LABEL_23:
    v50 = v16;
    v22 = v15;
    v24 = *(v5 + 408);
    v23 = *(v5 + 416);
    v25 = v23 - v24;
    if (v23 == v24)
    {
      result = *(v5 + 80);
    }

    else
    {
      result = *(v5 + 80);
      if (!v24)
      {
        goto LABEL_30;
      }

      v26 = *(v5 + 72);
      if (result + v25 >= v26 + *(v5 + 88))
      {
        v27 = (result + v25 - v26 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        v28 = *(v5 + 72);
        v49 = v27;
        v29 = xo_realloc(v28, v27);
        result = *(v5 + 80);
        if (!v29)
        {
          goto LABEL_30;
        }

        result = v29 + result - *(v5 + 72);
        *(v5 + 72) = v29;
        *(v5 + 80) = result;
        *(v5 + 88) = v49;
      }

      memcpy(result, v24, v25);
      result = *(v5 + 80) + v25;
      *(v5 + 80) = result;
    }

LABEL_30:
    v30 = *(v5 + 72);
    v15 = v22;
    v16 = v50;
    if (result + 2 >= (v30 + *(v5 + 88)))
    {
      v31 = (result + 2 - v30 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      result = xo_realloc(*(v5 + 72), v31);
      if (!result)
      {
        goto LABEL_34;
      }

      v32 = result;
      result += *(v5 + 80) - *(v5 + 72);
      *(v5 + 72) = v32;
      *(v5 + 80) = result;
      *(v5 + 88) = v31;
    }

    *result = *xo_format_title_div_middle;
    *(v5 + 80) += 2;
LABEL_34:
    if (a4)
    {
      MEMORY[0x2A1C7C4A8](result);
      v33 = &v49 - ((v8 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(v33, v8 + 1);
      v34 = memcpy(v33, v9, v8);
      v33[v8] = 0;
      MEMORY[0x2A1C7C4A8](v34);
      v35 = &v49 - ((a4 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(v35, a4 + 1);
      memcpy(v35, a3, a4);
      v35[a4] = 0;
      if (v35[a4 - 1] == 115)
      {
        result = snprintf(0, 0, v33, &v49 - ((a4 + 16) & 0xFFFFFFFFFFFFFFF0));
        if (result >= 1)
        {
          v36 = (result + 1);
          MEMORY[0x2A1C7C4A8](result);
          bzero(&v49 - ((v36 + 15) & 0x1FFFFFFF0), v36);
          v37 = snprintf(&v49 - ((v36 + 15) & 0x1FFFFFFF0), v36, v33, v35);
          result = xo_data_append_content(v5, &v49 - ((v36 + 15) & 0x1FFFFFFF0), v37, v7);
        }

        goto LABEL_53;
      }

      v41 = v51 - v15 + v16;
      result = snprintf(*(v5 + 80), v41, v33, &v49 - ((a4 + 16) & 0xFFFFFFFFFFFFFFF0));
      v40 = result;
      if (v41 <= result)
      {
        result = *(v5 + 72);
        v42 = *(v5 + 80);
        v43 = *(v5 + 88);
        if (&v42[v40] >= result + v43)
        {
          v43 = &v42[v40 - result + 0x1FFF] & 0xFFFFFFFFFFFFE000;
          result = xo_realloc(result, v43);
          if (!result)
          {
            goto LABEL_12;
          }

          v42 = (result + *(v5 + 80) - *(v5 + 72));
          *(v5 + 72) = result;
          *(v5 + 80) = v42;
          *(v5 + 88) = v43;
        }

        result = snprintf(v42, v43 - v42 + result, v33, &v49 - ((a4 + 16) & 0xFFFFFFFFFFFFFFF0));
        v40 = result;
      }

      if (v40 >= 1)
      {
        if ((*(v5 + 2) & 0x20) != 0)
        {
          *(v5 + 376) += v40;
        }

        if ((*(v5 + 8) & 8) != 0)
        {
          *(v5 + 352) += v40;
        }
      }
    }

    else
    {
      v38 = *(v5 + 80) - *(v5 + 72);
      result = xo_do_format_field(v5, 0, v9, v8, v7);
      v39 = *(v5 + 72) + v38;
      v40 = *(v5 + 80) - v39;
      *(v5 + 80) = v39;
    }

    if (*(v5 + 16) == 3)
    {
      result = xo_escape_xml((v5 + 72), v40, 0);
      v40 = result;
    }

    if (v40 >= 1)
    {
      *(v5 + 80) += v40;
    }

LABEL_53:
    if (*(v5 + 16) != 3)
    {
      goto LABEL_12;
    }

    result = *(v5 + 72);
    v44 = *(v5 + 80);
    if (v44 + 6 >= (result + *(v5 + 88)))
    {
      v45 = (v44 + 6 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      result = xo_realloc(result, v45);
      if (!result)
      {
        goto LABEL_58;
      }

      v44 = result + *(v5 + 80) - *(v5 + 72);
      *(v5 + 72) = result;
      *(v5 + 80) = v44;
      *(v5 + 88) = v45;
    }

    v46 = *xo_format_title_div_close;
    *(v44 + 4) = *&xo_format_title_div_close[4];
    *v44 = v46;
    *(v5 + 80) += 6;
LABEL_58:
    if ((*v5 & 2) != 0)
    {
      result = *(v5 + 72);
      v47 = *(v5 + 80);
      if ((v47 + 1) >= result + *(v5 + 88))
      {
        v48 = &v47[-result + 0x2000] & 0xFFFFFFFFFFFFE000;
        result = xo_realloc(result, v48);
        if (!result)
        {
          goto LABEL_12;
        }

        v47 = (result + *(v5 + 80) - *(v5 + 72));
        *(v5 + 72) = result;
        *(v5 + 80) = v47;
        *(v5 + 88) = v48;
      }

      *v47 = 10;
      ++*(v5 + 80);
    }

LABEL_12:
    v12 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (a4)
  {
    goto LABEL_12;
  }

  v13 = *MEMORY[0x29EDCA608];

  return xo_do_format_field(result, 0, v9, v8, v7 | 0x800);
}

uint64_t *xo_format_units(uint64_t *result, uint64_t *a2, char *a3, uint64_t a4)
{
  v6 = result;
  v29[1] = *MEMORY[0x29EDCA608];
  v7 = a2[4];
  v8 = a2[9];
  v9 = *a2;
  if ((result[1] & 0x10) != 0)
  {
    v11 = result + 9;
    v12 = result[9];
    v13 = result[10];
    v14 = *(result + 8);
    if (v14 == 3)
    {
      v29[0] = result[46];
      v18 = v13;
      if (v13 + 13 >= v12 + result[11])
      {
        v19 = xo_realloc(v12, (v13 - v12 + 8204) & 0xFFFFFFFFFFFFE000);
        if (!v19)
        {
          goto LABEL_16;
        }

        v18 = (v19 + v6[10] - v6[9]);
        v6[9] = v19;
        v6[10] = v18;
        v6[11] = (v13 - v12 + 8204) & 0xFFFFFFFFFFFFE000;
      }

      v20 = *xo_format_units_units_start_html;
      *(v18 + 5) = *&xo_format_units_units_start_html[5];
      *v18 = v20;
      v17 = 13;
    }

    else
    {
      if (v14 != 1)
      {
LABEL_26:
        v28 = *MEMORY[0x29EDCA608];
        return result;
      }

      v29[0] = result[46];
      v15 = v13;
      if ((v13 + 1) >= v12 + result[11])
      {
        v16 = xo_realloc(v12, (v13 - v12 + 8199) & 0xFFFFFFFFFFFFE000);
        if (!v16)
        {
          goto LABEL_16;
        }

        v15 = (v16 + v6[10] - v6[9]);
        v6[9] = v16;
        v6[10] = v15;
        v6[11] = (v13 - v12 + 8199) & 0xFFFFFFFFFFFFE000;
      }

      *v15 = xo_format_units_units_start_xml;
      v17 = 8;
    }

    v6[10] += v17;
LABEL_16:
    if (a4)
    {
      xo_buf_escape(v6, v6 + 9, a3, a4, 0);
    }

    else
    {
      xo_do_format_field(v6, 0, v7, v8, v9);
    }

    v21 = v13 - v12;
    result = v6[9];
    v22 = v6[10];
    if (v22 + 1 >= result + v6[11])
    {
      v23 = (v22 + 1 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      result = xo_realloc(result, v23);
      v24 = v6[10];
      if (!result)
      {
        goto LABEL_23;
      }

      v22 = result + v24 - v6[9];
      v6[9] = result;
      v6[10] = v22;
      v6[11] = v23;
    }

    *v22 = 34;
    v24 = v6[10] + 1;
    v6[10] = v24;
LABEL_23:
    v25 = *v11;
    v26 = v24 - *v11 - v21;
    if (v26 <= 0)
    {
      v6[10] = &v21[v25];
    }

    else
    {
      MEMORY[0x2A1C7C4A8](result);
      bzero(v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
      memcpy(v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), &v21[v25], v26);
      v27 = v29[0];
      memmove((v25 + v29[0] + v26), (v25 + v29[0]), &v21[-v29[0]]);
      result = memmove((*v11 + v27), v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    }

    goto LABEL_26;
  }

  v10 = *MEMORY[0x29EDCA608];

  return xo_format_content(result, "units", 0, a3, a4, v7, v8, v9);
}

uint64_t xo_find_width(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  __endptr[1] = *MEMORY[0x29EDCA608];
  v7 = *(a2 + 32);
  v8 = *(a2 + 72);
  __endptr[0] = 0;
  if (!a4)
  {
    if (!v8)
    {
      goto LABEL_21;
    }

    if (*(a1 + 48))
    {
      v11 = 0;
    }

    else
    {
      v11 = v8 == 2;
    }

    if (v11)
    {
      v12 = *v7;
      if (v12 == 37)
      {
        v12 = v7[1];
        if (v12 == 100)
        {
          if ((*(a1 + 1) & 2) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(a1 + 200);
          *(a1 + 200) = v13 + 2;
          result = *v13;
          goto LABEL_22;
        }

        v14 = 117;
      }

      else
      {
        v14 = 37;
      }

      if (v14 == v12)
      {
        if ((*(a1 + 1) & 2) != 0)
        {
          goto LABEL_21;
        }

        v15 = *(a1 + 200);
        *(a1 + 200) = v15 + 2;
        result = *v15;
        goto LABEL_22;
      }
    }

    v17 = *(a1 + 72);
    v18 = *(a1 + 80);
    v19 = *(a1 + 8);
    if ((v19 & 8) != 0)
    {
      *(a1 + 8) = v19 & 0xFFFFFFFFFFFFFFF7;
    }

    v20 = &v18[-v17];
    if (xo_do_format_field(a1, (a1 + 72), v7, v8, 0) < 0)
    {
      goto LABEL_34;
    }

    v21 = *(a1 + 72);
    v22 = *(a1 + 80);
    if ((v22 + 1) >= v21 + *(a1 + 88))
    {
      v23 = &v22[-v21 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v24 = xo_realloc(v21, v23);
      if (!v24)
      {
        goto LABEL_30;
      }

      v22 = (v24 + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = v24;
      *(a1 + 80) = v22;
      *(a1 + 88) = v23;
    }

    *v22 = 0;
    ++*(a1 + 80);
LABEL_30:
    result = strtol(v18, __endptr, 0);
    if ((result - 0x7FFFFFFFFFFFFFFFLL) >= 2 && v18 != __endptr[0] && !*__endptr[0])
    {
LABEL_35:
      *(a1 + 80) = &v20[*(a1 + 72)];
      if ((v19 & 8) != 0)
      {
        *(a1 + 8) |= 8uLL;
      }

      goto LABEL_22;
    }

    xo_failure(a1, "invalid width for anchor: '%s'");
LABEL_34:
    result = 0;
    goto LABEL_35;
  }

  MEMORY[0x2A1C7C4A8](a1);
  v9 = __endptr - ((a4 + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, a4 + 1);
  memcpy(v9, a3, a4);
  v9[a4] = 0;
  result = strtol(v9, __endptr, 0);
  if ((result - 0x7FFFFFFFFFFFFFFFLL) < 2 || v9 == __endptr[0] || *__endptr[0])
  {
    xo_failure(a1, "invalid width for anchor: '%s'");
LABEL_21:
    result = 0;
  }

LABEL_22:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xo_do_open_container(uint64_t a1, uint64_t a2, char *__s)
{
  v3 = __s;
  v48[1] = *MEMORY[0x29EDCA608];
  if ((*a1 & 2) != 0)
  {
    v6 = "\n";
  }

  else
  {
    v6 = &xo_version_extra;
  }

  if (!__s)
  {
    xo_failure(a1, "NULL passed for container name");
    v3 = "failure";
  }

  strlen(v3);
  xo_xml_leader_len(a1, v3);
  v13 = *a1;
  v14 = *a1 | a2;
  v15 = *(a1 + 16);
  switch(v15)
  {
    case 5:
      v28 = xo_encoder_handle(a1, 2, v3, 0, v14);
      break;
    case 2:
      if ((v13 & 0x2000) != 0)
      {
        *(*(a1 + 168) + 24 * *(a1 + 176)) |= 1u;
        v13 &= ~0x2000uLL;
        *a1 = v13;
      }

      if ((v13 & 0x10000) == 0 && (*(a1 + 8) & 4) == 0)
      {
        xo_emit_top(a1);
        v13 = *a1;
      }

      v17 = *(a1 + 168);
      v18 = *(v17 + 24 * *(a1 + 176));
      v19 = ",\n";
      if ((v13 & 2) == 0)
      {
        v19 = ", ";
      }

      if (v18)
      {
        LOBYTE(v20) = v19;
      }

      else
      {
        v20 = &xo_version_extra;
      }

      *(v17 + 24 * *(a1 + 176)) = v18 | 1;
      if ((v13 & 0x100000) != 0)
      {
        v21 = strlen(v3);
        v22 = MEMORY[0x2A1C7C4A8](v21);
        v23 = v48 - ((v22 + 16) & 0xFFFFFFFFFFFFFFF0);
        bzero(v23, v22 + 1);
        if (v23 < &v23[v21 + 1])
        {
          v24 = v23 - 1;
          v25 = v3;
          do
          {
            v27 = *v25++;
            v26 = v27;
            if (v27 == 45)
            {
              v26 = 95;
            }

            *++v24 = v26;
          }

          while (v24 < &v23[v21]);
        }
      }

      if ((v13 & 2) != 0)
      {
        v29 = (*(a1 + 20) & (*(a1 + 8) << 29 >> 31)) + *(a1 + 20) * *(a1 + 18);
      }

      v28 = xo_printf(a1, "%s%*s%s: {%s", v7, v8, v9, v10, v11, v12, v20);
      break;
    case 1:
      if ((v13 & 2) != 0)
      {
        v16 = (*(a1 + 20) & (*(a1 + 8) << 29 >> 31)) + *(a1 + 20) * *(a1 + 18);
      }

      else
      {
        LOBYTE(v16) = 0;
      }

      v30 = xo_printf(a1, "%*s<%s%s", v7, v8, v9, v10, v11, v12, v16);
      v37 = v30;
      v39 = *(a1 + 120);
      v38 = *(a1 + 128);
      v40 = v38 - v39;
      if (v38 == v39)
      {
        goto LABEL_41;
      }

      v37 = v40 + v30;
      if (v39)
      {
        v42 = *(a1 + 72);
        v41 = *(a1 + 80);
        if (v41 + v40 < v42 + *(a1 + 88))
        {
LABEL_39:
          memcpy(v41, v39, v40);
          *(a1 + 80) += v40;
          goto LABEL_40;
        }

        v43 = (v41 + v40 - v42 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        v44 = xo_realloc(*(a1 + 72), v43);
        if (v44)
        {
          v45 = v44;
          v41 = (v44 + *(a1 + 80) - *(a1 + 72));
          *(a1 + 72) = v45;
          *(a1 + 80) = v41;
          *(a1 + 88) = v43;
          goto LABEL_39;
        }
      }

LABEL_40:
      *(a1 + 128) = *(a1 + 120);
LABEL_41:
      v28 = xo_printf(a1, ">%s", v31, v32, v33, v34, v35, v36, v6) + v37;
      break;
    default:
      v28 = 0;
      break;
  }

  xo_depth_change(a1, v3, 1, 1, 1, (v14 >> 7) & 8);
  v46 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t xo_do_close_leaf_list(uint64_t a1, char *__s1)
{
  v2 = __s1;
  v22[1] = *MEMORY[0x29EDCA608];
  if (!__s1)
  {
    v4 = *(a1 + 168) + 24 * *(a1 + 176);
    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = strlen(*(v4 + 8));
      v7 = MEMORY[0x2A1C7C4A8]();
      v2 = v22 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(v2, v7 + 1);
      memcpy(v2, v5, v6 + 1);
    }

    else if ((*v4 & 8) != 0)
    {
      v2 = 0;
    }

    else
    {
      xo_failure(a1, "missing name without 'dtrt' mode");
      v2 = "failure";
    }
  }

  v8 = *(a1 + 16);
  if (v8 == 5)
  {
    v19 = xo_encoder_handle(a1, 7, v2, 0, 0);
LABEL_16:
    xo_depth_change(a1, v2, -1, 0, 8, 2);
    v9 = (a1 + 168);
    v10 = (a1 + 176);
    goto LABEL_17;
  }

  if (v8 != 2)
  {
    v19 = 0;
    goto LABEL_16;
  }

  v9 = (a1 + 168);
  v10 = (a1 + 176);
  v11 = (*(a1 + 168) + 24 * *(a1 + 176));
  v12 = &xo_version_extra;
  if (*v11)
  {
    if ((*a1 & 2) != 0)
    {
      v12 = "\n";
    }

    else
    {
      v12 = &xo_version_extra;
    }
  }

  *v11 |= 1u;
  xo_depth_change(a1, v2, -1, -1, 8, 2);
  xo_indent(a1);
  v19 = xo_printf(a1, "%s%*s]", v13, v14, v15, v16, v17, v18, v12);
LABEL_17:
  *(*v9 + 24 * *v10) |= 1u;
  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t xo_do_close_container(uint64_t a1, char *__s)
{
  v3 = a1;
  v27[1] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v3 = xo_default_handle();
  }

  *v3;
  if (!__s)
  {
    v4 = *(v3 + 168) + 24 * *(v3 + 176);
    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = strlen(*(v4 + 8));
      v7 = MEMORY[0x2A1C7C4A8]();
      __s = v27 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(__s, v7 + 1);
      memcpy(__s, v5, v6 + 1);
    }

    else if ((*v4 & 8) != 0)
    {
      __s = 0;
    }

    else
    {
      xo_failure(v3, "missing name without 'dtrt' mode");
      __s = "failure";
    }
  }

  strlen(__s);
  xo_xml_leader_len(v3, __s);
  result = 0;
  v9 = *(v3 + 16);
  if (v9 <= 1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_21;
    }

    if (v9 == 1)
    {
      xo_depth_change(v3, __s, -1, -1, 2, 0);
      LOBYTE(v16) = 0;
      if ((*v3 & 2) != 0)
      {
        v16 = (*(v3 + 20) & (*(v3 + 8) << 29 >> 31)) + *(v3 + 20) * *(v3 + 18);
      }

      result = xo_printf(v3, "%*s</%s%s>%s", v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        if (v9 == 5)
        {
          xo_depth_change(v3, __s, -1, 0, 2, 0);
          result = xo_encoder_handle(v3, 3, __s, 0, 0);
        }

        goto LABEL_30;
      }

LABEL_21:
      xo_depth_change(v3, __s, -1, 0, 2, 0);
      result = 0;
      goto LABEL_30;
    }

    v17 = *v3;
    if ((*v3 & 0x2000) != 0)
    {
      *(*(v3 + 168) + 24 * *(v3 + 176)) |= 1u;
      v17 &= ~0x2000uLL;
      *v3 = v17;
    }

    if ((v17 & 2) != 0)
    {
      v18 = "\n";
    }

    else
    {
      v18 = &xo_version_extra;
    }

    xo_depth_change(v3, __s, -1, -1, 2, 0);
    if ((*v3 & 2) != 0)
    {
      v25 = (*(v3 + 20) & (*(v3 + 8) << 29 >> 31)) + *(v3 + 20) * *(v3 + 18);
    }

    result = xo_printf(v3, "%s%*s}%s", v19, v20, v21, v22, v23, v24, v18);
    *(*(v3 + 168) + 24 * *(v3 + 176)) |= 1u;
  }

LABEL_30:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xo_do_open_leaf_list(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v10 = xo_default_handle();
  }

  v11 = *v10;
  v12 = *(v10 + 16);
  if (v12 == 5)
  {
    v14 = xo_encoder_handle(v10, 6, v8, 0, a2);
LABEL_13:
    v15 = 0;
    goto LABEL_27;
  }

  if (v12 != 2)
  {
    v14 = 0;
    goto LABEL_13;
  }

  if ((v11 & 0x10000) == 0 && (*(v10 + 8) & 4) == 0)
  {
    if ((v11 & 2) != 0)
    {
      v13 = *(v10 + 20) * *(v10 + 18);
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    xo_printf(v10, "%*s{%s", a3, a4, a5, a6, a7, a8, v13);
    *(v10 + 8) |= 4uLL;
  }

  if (!v8)
  {
    xo_failure(v10, "NULL passed for list name");
    v8 = "failure";
  }

  v16 = *v10;
  v17 = (*(v10 + 168) + 24 * *(v10 + 176));
  v18 = *v17;
  if ((*v10 & 0x2000) != 0)
  {
    v18 |= 1u;
    *v17 = v18;
    v16 &= ~0x2000uLL;
    *v10 = v16;
  }

  v19 = ",\n";
  if ((v16 & 2) == 0)
  {
    v19 = ", ";
  }

  if ((v18 & 1) == 0)
  {
    v19 = &xo_version_extra;
  }

  *v17 = v18 | 1;
  if ((v16 & 2) != 0)
  {
    v20 = (*(v10 + 20) & (*(v10 + 8) << 29 >> 31)) + *(v10 + 20) * *(v10 + 18);
  }

  v14 = xo_printf(v10, "%s%*s%s: [%s", a3, a4, a5, a6, a7, a8, v19);
  v15 = 1;
LABEL_27:
  xo_depth_change(v10, v8, 1, v15, 7, (a2 >> 7) & 8 | 2);
  return v14;
}

uint64_t xo_emit_top(uint64_t a1)
{
  v2 = xo_indent(a1);
  result = xo_printf(a1, "%*s{%s", v3, v4, v5, v6, v7, v8, v2);
  *(a1 + 8) |= 4uLL;
  if (*(a1 + 432))
  {
    v10 = xo_indent(a1);
    v17 = *(a1 + 432);
    xo_printf(a1, "%*s__version: %s, %s", v11, v12, v13, v14, v15, v16, v10);
    result = xo_free(*(a1 + 432));
    *(a1 + 432) = 0;
  }

  return result;
}

const char *xo_xml_leader_len(_BYTE *a1, char *a2)
{
  if (!a2)
  {
    return &xo_version_extra;
  }

  v3 = *a2;
  if ((v3 & 0x80000000) != 0)
  {
    v4 = __maskrune(*a2, 0x100uLL);
  }

  else
  {
    v4 = *(MEMORY[0x29EDCA600] + 4 * v3 + 60) & 0x100;
  }

  if (v3 == 95 || v4 != 0)
  {
    return &xo_version_extra;
  }

  xo_failure(a1, "invalid XML tag name: '%.*s'");
  return "_";
}

BOOL xo_format_is_numeric(_BYTE *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = a1 + 1;
  if (*a1 != 37)
  {
    return 0;
  }

  v3 = &a1[a2];
  v4 = 0;
  v5 = a2 - 1;
  if (a2 != 1)
  {
    v6 = a1 + 1;
    do
    {
      if (!*v6)
      {
        break;
      }

      if (!memchr("0123456789.*+ -", *v6, 0x10uLL))
      {
        break;
      }

      ++v4;
      ++v6;
    }

    while (v6 < v3);
  }

  v7 = v5 <= v4;
  v8 = v5 - v4;
  if (v7)
  {
    return 0;
  }

  v9 = &v2[v4];
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v9;
    do
    {
      if (!*v11)
      {
        break;
      }

      if (!memchr("hljtqz", *v11, 7uLL))
      {
        break;
      }

      ++v10;
      ++v11;
    }

    while (v11 < v3);
  }

  result = 0;
  if (v8 > v10 && v8 - v10 == 1)
  {
    return memchr("diouDOUeEfFgG", v9[v10], 0xEuLL) != 0;
  }

  return result;
}

void *xo_encoder_path_add(const char *a1)
{
  result = xo_encoder_setup();
  if (a1)
  {
    if (!qword_2A14C25C8)
    {
      xo_encoder_path = 0;
      qword_2A14C25C8 = &xo_encoder_path;
    }

    v3 = strlen(a1);
    result = xo_realloc(0, v3 + 17);
    if (result)
    {
      v4 = result;
      v5 = (result + 2);
      result = memcpy(result + 2, a1, v3);
      v5[v3] = 0;
      v6 = qword_2A14C25C8;
      *v4 = 0;
      v4[1] = v6;
      *v6 = v4;
      qword_2A14C25C8 = v4;
    }
  }

  return result;
}

void *xo_encoder_setup()
{
  if ((xo_encoder_setup_initted & 1) == 0)
  {
    xo_encoder_setup_initted = 1;
    if (!qword_2A14C25C8)
    {
      xo_encoder_path = 0;
      qword_2A14C25C8 = &xo_encoder_path;
    }

    if (!qword_2A14C25D8)
    {
      xo_encoders = 0;
      qword_2A14C25D8 = &xo_encoders;
    }

    return xo_encoder_path_add(&unk_29998EC21);
  }

  return result;
}

uint64_t **xo_encoders_clean()
{
  result = xo_encoder_setup();
  for (i = xo_encoders; xo_encoders; i = xo_encoders)
  {
    v2 = *i;
    v3 = i[1];
    if (*i)
    {
      v4 = *i;
    }

    else
    {
      v4 = &xo_encoders;
    }

    v4[1] = v3;
    *v3 = v2;
    v5 = i[4];
    if (v5)
    {
      dlclose(v5);
    }

    result = xo_free(i);
  }

  if (qword_2A14C25C8)
  {
    for (result = xo_encoder_path; xo_encoder_path; result = xo_encoder_path)
    {
      v6 = *result;
      v7 = result[1];
      if (*result)
      {
        v8 = *result;
      }

      else
      {
        v8 = &xo_encoder_path;
      }

      v8[1] = v7;
      *v7 = v6;
      xo_free(result);
    }
  }

  else
  {
    xo_encoder_path = 0;
    qword_2A14C25C8 = &xo_encoder_path;
  }

  return result;
}

uint64_t *xo_encoder_register(char *a1, uint64_t a2)
{
  xo_encoder_setup();
  result = xo_encoder_find(a1);
  if (!result)
  {
    result = xo_encoder_list_add(a1);
    if (result)
    {
      result[3] = a2;
    }
  }

  return result;
}

uint64_t *xo_encoder_find(char *__s2)
{
  if (!qword_2A14C25D8)
  {
    xo_encoders = 0;
    qword_2A14C25D8 = &xo_encoders;
  }

  v2 = &xo_encoders;
  do
  {
    v2 = *v2;
  }

  while (v2 && strcmp(v2[2], __s2));
  return v2;
}

void *xo_encoder_list_add(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = xo_realloc(0, 40);
  if (v2)
  {
    v3 = strlen(a1);
    v4 = xo_realloc(0, v3 + 1);
    v2[2] = v4;
    if (v4)
    {
      memcpy(v4, a1, v3 + 1);
      v5 = qword_2A14C25D8;
      *v2 = 0;
      v2[1] = v5;
      *v5 = v2;
      qword_2A14C25D8 = v2;
      return v2;
    }

    xo_free(v2);
    return 0;
  }

  return v2;
}

uint64_t *xo_encoder_unregister(char *a1)
{
  xo_encoder_setup();
  result = xo_encoder_find(a1);
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    v5 = &xo_encoders;
    if (*result)
    {
      v5 = *result;
    }

    v5[1] = v4;
    *v4 = v3;
    v6 = xo_free;

    return v6();
  }

  return result;
}

uint64_t xo_encoder_init(_BYTE *a1, char *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  xo_encoder_setup();
  v4 = strchr(a2, 58);
  v5 = strchr(a2, 43);
  v6 = v5;
  if (v4)
  {
    if (v5 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    if (v5)
    {
      v6 = v7;
    }

    else
    {
      v6 = v4;
    }
  }

  else if (!v5)
  {
    v13 = 17;
    goto LABEL_13;
  }

  v8 = *v6;
  v9 = strlen(a2);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v11 = &v22 - ((v10 + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10 + 1);
  memcpy(v11, a2, v9);
  v11[v9] = 0;
  v12 = &v11[v6 - a2];
  *v12 = 0;
  v6 = v12 + 1;
  if (v8 == 43)
  {
    v13 = 18;
  }

  else
  {
    v13 = 17;
  }

  a2 = v11;
LABEL_13:
  if (strchr(a2, 47) || strchr(a2, 58))
  {
    v14 = "invalid encoder name: %s";
LABEL_16:
    xo_failure(a1, v14);
    result = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v17 = xo_encoder_find(a2);
  if (!v17)
  {
    if (qword_2A14C25C8)
    {
      v18 = xo_encoder_path;
      if (xo_encoder_path)
      {
        while (1)
        {
          if (snprintf(v25, 0x400uLL, "%s/%s.enc", (v18 + 16), a2) <= 0x400)
          {
            v19 = dlopen(v25, 2);
            if (v19)
            {
              break;
            }
          }

          v18 = *v18;
          if (!v18)
          {
            goto LABEL_36;
          }
        }

        v20 = v19;
        v21 = dlsym(v19, "xo_encoder_library_init");
        if (v21)
        {
          v23 = 1;
          v24 = 0;
          if (!v21(&v23))
          {
            if (v24)
            {
              v17 = xo_encoder_list_add(a2);
              if (v17)
              {
                v17[3] = v24;
                v17[4] = v20;
                goto LABEL_20;
              }
            }
          }
        }

        dlclose(v20);
      }
    }

    else
    {
      xo_encoder_path = 0;
      qword_2A14C25C8 = &xo_encoder_path;
    }

LABEL_36:
    v14 = "encoder not founde: %s";
    goto LABEL_16;
  }

LABEL_20:
  xo_set_encoder(a1, v17[3]);
  result = xo_encoder_handle(a1, 1, a2, 0, 0);
  if (!result && v6)
  {
    result = xo_encoder_handle(a1, v13, a2, v6, 0);
  }

LABEL_17:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xo_encoder_handle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = xo_get_private(a1);
  encoder = xo_get_encoder(a1);
  if (!encoder)
  {
    return 0xFFFFFFFFLL;
  }

  return encoder(a1, a2, a3, a4, v10, a5);
}

uint64_t xo_encoder_create(char *a1, uint64_t a2)
{
  v3 = xo_create(5, a2);
  v4 = v3;
  if (v3 && xo_encoder_init(v3, a1))
  {
    xo_destroy(v4);
    return 0;
  }

  return v4;
}

const char *xo_encoder_op_name(unsigned int a1)
{
  if (a1 <= 0x12)
  {
    return (&xo_encoder_op_name_names)[a1];
  }

  else
  {
    return "unknown";
  }
}

uint64_t xo_open_log(uint64_t a1, int a2, int a3)
{
  pthread_mutex_lock(&xo_syslog_mutex);
  xo_open_log_unlocked(a1, a2, a3);

  return pthread_mutex_unlock(&xo_syslog_mutex);
}

uint64_t xo_open_log_unlocked(uint64_t result, int a2, int a3)
{
  if (result)
  {
    xo_logtag = result;
  }

  xo_logstat = a2;
  if (a3 && (a3 & 0xFFFFFC07) == 0)
  {
    xo_logfacility = a3;
  }

  if ((a2 & 8) != 0)
  {
    result = xo_connect_log();
  }

  xo_opened = 1;
  return result;
}

uint64_t xo_close_log()
{
  pthread_mutex_lock(&xo_syslog_mutex);
  if (xo_logfile != -1)
  {
    close(xo_logfile);
    xo_logfile = -1;
  }

  xo_logtag = 0;
  xo_status = 0;

  return pthread_mutex_unlock(&xo_syslog_mutex);
}

uint64_t xo_set_logmask(int a1)
{
  pthread_mutex_lock(&xo_syslog_mutex);
  v2 = xo_logmask;
  if (a1)
  {
    xo_logmask = a1;
  }

  pthread_mutex_unlock(&xo_syslog_mutex);
  return v2;
}

void *xo_set_syslog_handler(void *result, void *a2, void *a3)
{
  xo_syslog_open = result;
  xo_syslog_send = a2;
  xo_syslog_close = a3;
  return result;
}

uint64_t xo_vsyslog(uint64_t a1, const char *a2, unsigned __int8 *a3, uint64_t a4)
{
  v80 = *MEMORY[0x29EDCA608];
  v72 = a4;
  v12 = *__error();
  if (!xo_vsyslog_my_pid)
  {
    if (xo_unit_test)
    {
      v13 = 222;
    }

    else
    {
      v13 = getpid();
    }

    xo_vsyslog_my_pid = v13;
  }

  if (a1 >= 0x400)
  {
    xo_syslog(35, "syslog-unknown-priority", "syslog: unknown facility/priority: %#x", v7, v8, v9, v10, v11, a1);
    LODWORD(a1) = a1 & 0x3FF;
  }

  pthread_mutex_lock(&xo_syslog_mutex);
  if ((xo_logmask >> (a1 & 7)))
  {
    if (a1 >= 8)
    {
      v14 = 0;
    }

    else
    {
      v14 = xo_logfacility;
    }

    v69 = v74;
    v70 = v74;
    v71 = 2048;
    v15 = xo_create(4, 0);
    if (!v15)
    {
LABEL_84:
      result = pthread_mutex_unlock(&xo_syslog_mutex);
      v61 = *MEMORY[0x29EDCA608];
      return result;
    }

    v16 = v15;
    if (!xo_logtag)
    {
      xo_logtag = getprogname();
    }

    xo_set_writer(v16, &v69, xo_syslog_handle_write, xo_syslog_handle_close, xo_syslog_handle_flush);
    memset(&v68, 0, sizeof(v68));
    v67 = 0uLL;
    v65 = a3;
    v64 = v12;
    if (xo_unit_test)
    {
      *&v67 = 1435085229;
      DWORD2(v67) = 123456;
    }

    else
    {
      gettimeofday(&v67, 0);
    }

    v19 = v14 | a1;
    v20 = localtime_r(&v67, &v68);
    v21 = xo_logstat;
    if ((xo_logstat & 0x20) == 0)
    {
      v22 = 0;
      goto LABEL_28;
    }

    MEMORY[0x2A1C7C4A8](v20);
    v22 = v62;
    bzero(v62, 0x800uLL);
    if (xo_logtag)
    {
      v23 = &v62[xo_snprintf(v62, 2048, "%s", xo_logtag)];
      if ((xo_logstat & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v23 = v62;
      if ((v21 & 1) == 0)
      {
LABEL_26:
        if (xo_logtag)
        {
          xo_snprintf(v23, v63 - v23, ": ");
        }

LABEL_28:
        v25 = v69;
        v24 = v70;
        v26 = xo_snprintf(v70, v71 - v70 + v69, "<%d>1 ", v19);
        v70 += v26;
        v27 = strftime(v70, v71 - v70 + v69, "%FT%T", &v68);
        v70 += v27;
        v28 = xo_snprintf(v70, v71 - v70 + v69, ".%03.3u", SDWORD2(v67) / 1000);
        v70 += v28;
        v29 = strftime(v70, v71 - v70 + v69, "%z ", &v68);
        v30 = &v70[v29];
        v70 = v30;
        v73[4] = 0;
        if (xo_unit_test)
        {
          strcpy(&v73[4], "worker-host");
          v31 = &v73[4];
        }

        else
        {
          gethostname(&v73[4], 0x48uLL);
          v30 = v70;
          if (v73[4])
          {
            v31 = &v73[4];
          }

          else
          {
            v31 = "-";
          }
        }

        v32 = xo_snprintf(v30, v71 - v30 + v69, "%s ", v31);
        v33 = &v70[v32];
        v70 = v33;
        v34 = xo_logtag;
        if (!xo_logtag)
        {
          v34 = "-";
        }

        v35 = xo_snprintf(v33, v71 - v33 + v69, "%s ", v34);
        v70 += v35;
        v36 = xo_snprintf(v70, v71 - v70 + v69, "%d ", xo_vsyslog_my_pid);
        v37 = &v70[v36];
        v70 = v37;
        if (a2)
        {
          if (*a2 != 64)
          {
            v38 = &xo_syslog_enterprise_id;
            if (xo_syslog_enterprise_id)
            {
              v39 = "@";
            }

            else
            {
              v75.iov_base = 0;
              v40 = sysctlbyname("kern.syslog.enterprise_id", 0, &v75, 0, 0);
              if (!v40 && v75.iov_base)
              {
                MEMORY[0x2A1C7C4A8](v40);
                v42 = &v62[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
                bzero(v42, v41);
                v43 = sysctlbyname("kern.syslog.enterprise_id", v42, &v75, 0, 0);
                if (v75.iov_base && v43 == 0)
                {
                  v38 = v42;
                }
              }

              if (!*v38)
              {
                v38 = &xo_syslog_enterprise_id;
                snprintf(&xo_syslog_enterprise_id, 0xCuLL, "%u", 32473);
              }

              v39 = "@";
              v37 = v70;
            }

            goto LABEL_54;
          }

          ++a2;
          v38 = &unk_29998EC21;
        }

        else
        {
          v38 = &unk_29998EC21;
          a2 = "-";
        }

        v39 = &unk_29998EC21;
LABEL_54:
        v45 = xo_snprintf(v37, v71 - v37 + v69, "%s [%s%s%s ", a2, a2, v39, v38);
        v70 += v45;
        v66 = v72;
        v46 = __error();
        v47 = v64;
        *v46 = v64;
        v48 = v65;
        xo_emit_hv(v16, v65, v66);
        xo_flush_h(v16);
        v49 = v70;
        v50 = v70 - 1;
        if (*(v70 - 1) == 32)
        {
          --v70;
          v49 = v50;
        }

        v51 = xo_snprintf(v49, v71 - v49 + v69, "] ");
        v70 += v51;
        v52 = xo_snprintf(v70, v71 - v70 + v69, "%c%c%c", 239, 187, 191);
        v70 += v52;
        if ((xo_logstat & 0x20) != 0)
        {
          v53 = (v70 - v69);
        }

        else
        {
          v53 = 0;
        }

        xo_set_style(v16, 0);
        xo_set_flags(v16, 0x20000000);
        *__error() = v47;
        xo_emit_hv(v16, v48, v66);
        xo_flush_h(v16);
        v54 = v70 - 1;
        if (*(v70 - 1) == 10)
        {
          --v70;
          *v54 = 0;
        }

        if ((xo_get_flags(v16) & 4) != 0)
        {
          fprintf(*MEMORY[0x29EDCA610], "xo: syslog: %s\n", &v69[v24 - v25]);
        }

        v55 = v69;
        v56 = &v69[v53];
        if (xo_syslog_send)
        {
          xo_syslog_send(v69, v22, &v69[v53]);
        }

        else
        {
          v57 = strlen(v69);
          if (v22)
          {
            strcpy(v73, "\n");
            v75.iov_base = v22;
            v75.iov_len = strlen(v22);
            v76 = v56;
            v77 = strlen(v56);
            v78 = v73;
            v79 = 1;
            writev(2, &v75, 3);
          }

          if ((xo_opened & 1) == 0)
          {
            xo_logstat |= 8u;
            xo_connect_log();
            xo_opened = 1;
          }

          xo_connect_log();
          v58 = v57;
          if (send(xo_logfile, v55, v57, 0) < 0)
          {
            if (*__error() == 55)
            {
              goto LABEL_78;
            }

            if (xo_syslog_close)
            {
              xo_syslog_close();
            }

            else
            {
              if (xo_logfile != -1)
              {
                close(xo_logfile);
                xo_logfile = -1;
              }

              xo_status = 0;
            }

            xo_connect_log();
            while (send(xo_logfile, v55, v57, 0) < 0)
            {
LABEL_78:
              if (*__error() != 55)
              {
                if ((xo_logstat & 2) != 0)
                {
                  v59 = open("/dev/console", 16777221, 0);
                  if ((v59 & 0x80000000) == 0)
                  {
                    v60 = v59;
                    strcpy(v73, "\r\n");
                    v75.iov_base = strchr(v55, 62) + 1;
                    v75.iov_len = &v55[v58] - v75.iov_base;
                    v76 = v73;
                    v77 = 2;
                    writev(v60, &v75, 2);
                    close(v60);
                  }
                }

                break;
              }

              usleep(1u);
            }
          }
        }

        xo_destroy(v16);
        goto LABEL_84;
      }
    }

    v23 += xo_snprintf(v23, v63 - v23, "[%d]", xo_vsyslog_my_pid);
    goto LABEL_26;
  }

  v17 = *MEMORY[0x29EDCA608];

  return pthread_mutex_unlock(&xo_syslog_mutex);
}

uint64_t xo_syslog_handle_write(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 16) - *(a1 + 8) + *a1;
  if (v5 <= v4)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = v4;
  }

  memcpy(*(a1 + 8), __s, v6);
  v7 = (*(a1 + 8) + v6);
  *(a1 + 8) = v7;
  *v7 = 0;
  return v6;
}

uint64_t xo_snprintf(char *__str, int64_t __size, const char *a3, ...)
{
  va_start(va, a3);
  result = 0;
  if (__str && __size)
  {
    LODWORD(result) = vsnprintf(__str, __size, a3, va);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      *__str = 0;
    }

    else if (result >= __size)
    {
      return __size;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t xo_connect_log()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = xo_syslog_open;
  if (xo_syslog_open)
  {
    v1 = *MEMORY[0x29EDCA608];

    return v0();
  }

  else
  {
    result = xo_logfile;
    if (xo_logfile != -1 || (result = socket(1, 2, 0), xo_logfile = result, result != -1))
    {
      if ((xo_status & 1) == 0)
      {
        strcpy(&v4[1], "/var/run/syslog");
        memset(&v4[9], 0, 80);
        v4[0] = 362;
        v5 = 0;
        result = connect(result, v4, 0x6Au);
        if (result == -1)
        {
          if ((xo_status & 1) == 0)
          {
            result = close(xo_logfile);
            xo_logfile = -1;
          }
        }

        else
        {
          xo_status = 1;
        }
      }
    }

    v3 = *MEMORY[0x29EDCA608];
  }

  return result;
}