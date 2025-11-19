_DWORD *xo_retain_clear_all()
{
  v0 = xo_retain();
  for (i = 0; i != 64; ++i)
  {
    v2 = *(v0 + 8 * i);
    if (v2)
    {
      do
      {
        v3 = *v2;
        xo_free();
        v2 = v3;
      }

      while (v3);
    }

    *(v0 + 8 * i) = 0;
  }

  result = xo_retain_count();
  *result = 0;
  return result;
}

_DWORD *xo_retain_clear()
{
  result = xo_retain();
  v3 = &result[2 * v2];
  while (1)
  {
    v4 = v3;
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (v3[2] == v1)
    {
      *v4 = *v3;
      result = xo_retain_count();
      --*result;
      return result;
    }
  }

  return result;
}

uint64_t xo_warn_hcv(uint64_t result, int a2, int a3, char *__s, va_list a5)
{
  v9 = result;
  v68 = *MEMORY[0x29EDCA608];
  v67 = a5;
  if (result)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
    v9 = result;
    if (a3)
    {
LABEL_3:
      if (!__s || (*v9 & 0x10) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_10;
    }
  }

  if (!__s)
  {
    goto LABEL_60;
  }

LABEL_10:
  v10 = strlen(__s);
  v11 = xo_program;
  if (xo_program)
  {
    v12 = strlen(xo_program);
    MEMORY[0x2A1C7C4A8]();
    v14 = &v65 - v13;
    bzero(&v65 - v13, v15 + 3);
    if (v12)
    {
      memcpy(v14, v11, v12);
      *&v14[v12] = 8250;
      v16 = v12 + 2;
      goto LABEL_15;
    }
  }

  else
  {
    MEMORY[0x2A1C7C4A8]();
    v14 = &v65 - ((v10 + 18) & 0xFFFFFFFFFFFFFFF0);
    bzero(v14, v10 + 3);
  }

  v16 = 0;
LABEL_15:
  v17 = &v14[v16];
  memcpy(&v14[v16], __s, v10);
  v17[v10] = 0;
  if ((*v9 & 0x80) != 0)
  {
    v22 = *(v9 + 72);
    v23 = *(v9 + 80);
    if (v23 + 7 >= v22 + *(v9 + 88))
    {
      v24 = (v23 - v22 + 8198) & 0xFFFFFFFFFFFFE000;
      v25 = xo_realloc(v22, v24);
      v26 = *(v9 + 80);
      if (!v25)
      {
        goto LABEL_26;
      }

      v23 = (v25 + v26 - *(v9 + 72));
      *(v9 + 72) = v25;
      *(v9 + 80) = v23;
      *(v9 + 88) = v24;
    }

    v27 = *xo_warn_hcv_err_open;
    *(v23 + 3) = *&xo_warn_hcv_err_open[3];
    *v23 = v27;
    v26 = *(v9 + 80) + 7;
    *(v9 + 80) = v26;
LABEL_26:
    v28 = *(v9 + 72);
    if (v26 + 9 >= (v28 + *(v9 + 88)))
    {
      v29 = (v26 + 9 - v28 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v30 = xo_realloc(v28, v29);
      if (!v30)
      {
LABEL_30:
        v66 = v67;
        v32 = *(v9 + 80);
        v33 = *(v9 + 72) - v32 + *(v9 + 88);
        v34 = vsnprintf(v32, v33, v14, v67);
        if (v33 > v34)
        {
          goto LABEL_35;
        }

        v35 = *(v9 + 72);
        v36 = *(v9 + 80) + v34;
        if (v36 < v35 + *(v9 + 88))
        {
LABEL_34:
          v67 = v66;
          v34 = vsnprintf(*(v9 + 80), *(v9 + 88) - *(v9 + 80) + *(v9 + 72), __s, v66);
LABEL_35:
          v39 = xo_escape_xml((v9 + 72), v34, 1u);
          v40 = *(v9 + 72);
          v41 = (*(v9 + 80) + v39);
          *(v9 + 80) = v41;
          if ((v41 + 10) >= v40 + *(v9 + 88))
          {
            v42 = &v41[-v40 + 8201] & 0xFFFFFFFFFFFFE000;
            v43 = xo_realloc(v40, v42);
            v44 = *(v9 + 80);
            if (!v43)
            {
              goto LABEL_39;
            }

            v41 = v44 + v43 - *(v9 + 72);
            *(v9 + 72) = v43;
            *(v9 + 80) = v41;
            *(v9 + 88) = v42;
          }

          v45 = *xo_warn_hcv_msg_close;
          *(v41 + 4) = *&xo_warn_hcv_msg_close[8];
          *v41 = v45;
          v44 = (*(v9 + 80) + 10);
          *(v9 + 80) = v44;
LABEL_39:
          v46 = *(v9 + 72);
          if ((v44 + 1) >= v46 + *(v9 + 88))
          {
            v47 = (v44 - v46 + 8199) & 0xFFFFFFFFFFFFE000;
            v48 = xo_realloc(v46, v47);
            if (!v48)
            {
              goto LABEL_43;
            }

            v44 = (v48 + *(v9 + 80) - *(v9 + 72));
            *(v9 + 72) = v48;
            *(v9 + 80) = v44;
            *(v9 + 88) = v47;
          }

          *v44 = xo_warn_hcv_err_close;
          *(v9 + 80) += 8;
LABEL_43:
          if (a2 < 0)
          {
            v50 = *(v9 + 80);
            goto LABEL_55;
          }

          v49 = strerror(a2);
          v50 = *(v9 + 80);
          if (!v49)
          {
            goto LABEL_55;
          }

          v51 = v49;
          v52 = *(v9 + 72);
          if ((v50 + 2) >= v52 + *(v9 + 88))
          {
            v53 = &v50[-v52 + 8193] & 0xFFFFFFFFFFFFE000;
            v54 = xo_realloc(v52, v53);
            v50 = *(v9 + 80);
            if (!v54)
            {
LABEL_49:
              v55 = strlen(v51);
              if (!v55)
              {
                goto LABEL_55;
              }

              v56 = v55;
              v57 = &v50[v55];
              v58 = *(v9 + 72);
              if (v57 >= v58 + *(v9 + 88))
              {
                v59 = &v57[-v58 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
                v60 = xo_realloc(v58, v59);
                v50 = *(v9 + 80);
                if (!v60)
                {
                  goto LABEL_55;
                }

                v50 = &v50[v60 - *(v9 + 72)];
                *(v9 + 72) = v60;
                *(v9 + 80) = v50;
                *(v9 + 88) = v59;
              }

              memcpy(v50, v51, v56);
              v50 = (*(v9 + 80) + v56);
              *(v9 + 80) = v50;
LABEL_55:
              v61 = *(v9 + 72);
              if ((v50 + 1) >= v61 + *(v9 + 88))
              {
                v62 = &v50[-v61 + 0x2000] & 0xFFFFFFFFFFFFE000;
                v63 = xo_realloc(v61, v62);
                if (!v63)
                {
LABEL_59:
                  result = xo_write(v9);
                  goto LABEL_60;
                }

                v50 = (v63 + *(v9 + 80) - *(v9 + 72));
                *(v9 + 72) = v63;
                *(v9 + 80) = v50;
                *(v9 + 88) = v62;
              }

              *v50 = 10;
              ++*(v9 + 80);
              goto LABEL_59;
            }

            v50 = &v50[v54 - *(v9 + 72)];
            *(v9 + 72) = v54;
            *(v9 + 80) = v50;
            *(v9 + 88) = v53;
          }

          *v50 = 8250;
          v50 = (*(v9 + 80) + 2);
          *(v9 + 80) = v50;
          goto LABEL_49;
        }

        v37 = (v36 - v35 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        result = xo_realloc(v35, v37);
        if (result)
        {
          v38 = result + *(v9 + 80) - *(v9 + 72);
          *(v9 + 72) = result;
          *(v9 + 80) = v38;
          *(v9 + 88) = v37;
          goto LABEL_34;
        }

LABEL_60:
        v64 = *MEMORY[0x29EDCA608];
        return result;
      }

      v26 = v30 + *(v9 + 80) - *(v9 + 72);
      *(v9 + 72) = v30;
      *(v9 + 80) = v26;
      *(v9 + 88) = v29;
    }

    v31 = *xo_warn_hcv_msg_open;
    *(v26 + 8) = xo_warn_hcv_msg_open[8];
    *v26 = v31;
    *(v9 + 80) += 9;
    goto LABEL_30;
  }

  v18 = MEMORY[0x29EDCA610];
  vfprintf(*MEMORY[0x29EDCA610], v14, a5);
  if ((a2 & 0x80000000) == 0)
  {
    v19 = strerror(a2);
    if (v19)
    {
      fprintf(*v18, ": %s", v19);
    }
  }

  v20 = *v18;
  v21 = *MEMORY[0x29EDCA608];

  return fputc(10, v20);
}

void xo_err(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = __error();
  v12 = xo_warn_hcv(0, *v11, 0, a2, &a9);
  xo_finish(v12, v13, v14, v15, v16, v17, v18, v19);
  exit(a1);
}

void xo_errx(int a1, char *__s, ...)
{
  va_start(va, __s);
  v3 = xo_warn_hcv(0, -1, 0, __s, va);
  xo_finish(v3, v4, v5, v6, v7, v8, v9, v10);
  exit(a1);
}

void xo_errc(int a1, int a2, char *__s, ...)
{
  va_start(va, __s);
  v4 = xo_warn_hcv(0, a2, 0, __s, va);
  xo_finish(v4, v5, v6, v7, v8, v9, v10, v11);
  exit(a1);
}

uint64_t xo_message_hcv(uint64_t result, int a2, char *__s, va_list a4)
{
  v7 = result;
  v69 = *MEMORY[0x29EDCA608];
  v67 = a4;
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
    v7 = result;
  }

  if (!__s || !*__s)
  {
    goto LABEL_80;
  }

  v66 = 0;
  result = strlen(__s);
  v8 = __s[result - 1];
  v9 = *(v7 + 16);
  if (v9 > 2)
  {
    if (v9 - 4 < 2)
    {
      goto LABEL_80;
    }

    if (v9 != 3)
    {
      goto LABEL_79;
    }

    v66 = v67;
    v10 = 1024;
    v11 = v68;
    v12 = vsnprintf(v68, 0x400uLL, __s, v67);
    v13 = v12;
    if (v12 >= 1025)
    {
      v10 = v12 + 1024;
      MEMORY[0x2A1C7C4A8](v12);
      v11 = &v65[-((v13 + 1039) & 0xFFFFFFFFFFFFFFF0)];
      bzero(v11, v13 + 1024);
      v66 = v67;
      v13 = vsnprintf(v11, v13 + 1024, __s, v67);
    }

    if (v8 != 10)
    {
      v14 = &xo_version_extra;
      v15 = v10 - v13;
      if (a2 <= 0)
      {
        v16 = &xo_version_extra;
      }

      else
      {
        v16 = ": ";
      }

      if (a2 >= 1)
      {
        v14 = strerror(a2);
      }

      v17 = snprintf(&v11[v13], v15, "%s%s\n", v16, v14);
      if (v17 >= 1)
      {
        v13 += v17;
      }
    }

    xo_buf_append_div(v7, "message", 0, 0, 0, v11, v13, 0, 0, 0, 0);
    goto LABEL_68;
  }

  if (!*(v7 + 16))
  {
    v18 = xo_printf_v(v7, __s, a4);
    if (v18 >= 1)
    {
      if ((*(v7 + 2) & 0x20) != 0)
      {
        *(v7 + 376) += v18;
      }

      if ((*(v7 + 8) & 8) != 0)
      {
        *(v7 + 352) += v18;
      }
    }

    if (a2 >= 1 && v8 != 10)
    {
      v25 = strerror(a2);
      if (v25)
      {
        xo_printf(v7, ": %s", v19, v20, v21, v22, v23, v24, v25);
      }

      goto LABEL_52;
    }

    if (v8 != 10)
    {
LABEL_52:
      xo_printf(v7, "\n", v19, v20, v21, v22, v23, v24, v65[0]);
    }

LABEL_68:
    if (*(v7 + 16) != 3)
    {
      goto LABEL_79;
    }

    v54 = *(v7 + 8);
    if ((v54 & 2) == 0)
    {
      goto LABEL_79;
    }

    *(v7 + 8) = v54 & 0xFFFFFFFFFFFFFFFDLL;
    v55 = *(v7 + 72);
    v56 = *(v7 + 80);
    if (v56 + 6 >= (v55 + *(v7 + 88)))
    {
      v57 = (v56 + 6 - v55 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v58 = xo_realloc(v55, v57);
      if (!v58)
      {
        goto LABEL_74;
      }

      v56 = v58 + *(v7 + 80) - *(v7 + 72);
      *(v7 + 72) = v58;
      *(v7 + 80) = v56;
      *(v7 + 88) = v57;
    }

    v59 = *xo_message_hcv_div_close;
    *(v56 + 4) = *&xo_message_hcv_div_close[4];
    *v56 = v59;
    *(v7 + 80) += 6;
LABEL_74:
    if ((*v7 & 2) != 0)
    {
      v60 = *(v7 + 72);
      v61 = *(v7 + 80);
      if ((v61 + 1) < v60 + *(v7 + 88))
      {
LABEL_78:
        *v61 = 10;
        ++*(v7 + 80);
        goto LABEL_79;
      }

      v62 = &v61[-v60 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v63 = xo_realloc(v60, v62);
      if (v63)
      {
        v61 = (v63 + *(v7 + 80) - *(v7 + 72));
        *(v7 + 72) = v63;
        *(v7 + 80) = v61;
        *(v7 + 88) = v62;
        goto LABEL_78;
      }
    }

LABEL_79:
    result = xo_flush_h(v7);
    goto LABEL_80;
  }

  if (v9 == 1)
  {
    if ((*v7 & 2) != 0)
    {
      xo_buf_indent(v7, *(v7 + 20));
    }

    v26 = *(v7 + 72);
    v27 = *(v7 + 80);
    if (v27 + 9 >= (v26 + *(v7 + 88)))
    {
      v28 = (v27 + 9 - v26 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v29 = xo_realloc(v26, v28);
      if (!v29)
      {
        goto LABEL_40;
      }

      v27 = v29 + *(v7 + 80) - *(v7 + 72);
      *(v7 + 72) = v29;
      *(v7 + 80) = v27;
      *(v7 + 88) = v28;
    }

    v30 = *xo_message_hcv_msg_open;
    *(v27 + 8) = xo_message_hcv_msg_open[8];
    *v27 = v30;
    *(v7 + 80) += 9;
LABEL_40:
    v66 = v67;
    v31 = *(v7 + 80);
    v32 = *(v7 + 72) - v31 + *(v7 + 88);
    v33 = vsnprintf(v31, v32, __s, v67);
    if (v32 <= v33)
    {
      v34 = *(v7 + 72);
      v35 = *(v7 + 80) + v33;
      if (v35 >= v34 + *(v7 + 88))
      {
        v36 = (v35 - v34 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        result = xo_realloc(v34, v36);
        if (!result)
        {
          goto LABEL_80;
        }

        v37 = result + *(v7 + 80) - *(v7 + 72);
        *(v7 + 72) = result;
        *(v7 + 80) = v37;
        *(v7 + 88) = v36;
      }

      v67 = v66;
      v33 = vsnprintf(*(v7 + 80), *(v7 + 88) - *(v7 + 80) + *(v7 + 72), __s, v66);
    }

    v38 = *(v7 + 80) + xo_escape_xml((v7 + 72), v33, 0);
    *(v7 + 80) = v38;
    if (a2 < 1 || v8 == 10)
    {
      if (v8 == 10)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v39 = strerror(a2);
      if (v39)
      {
        v40 = v39;
        if (xo_buf_has_room((v7 + 72), 2))
        {
          **(v7 + 80) = 8250;
          *(v7 + 80) += 2;
        }

        v41 = strlen(v40);
        xo_buf_append((v7 + 72), v40, v41);
      }
    }

    v42 = *(v7 + 72);
    v43 = *(v7 + 80);
    if ((v43 + 1) >= v42 + *(v7 + 88))
    {
      v44 = &v43[-v42 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v45 = xo_realloc(v42, v44);
      v38 = *(v7 + 80);
      if (!v45)
      {
        goto LABEL_58;
      }

      v43 = (v45 + v38 - *(v7 + 72));
      *(v7 + 72) = v45;
      *(v7 + 80) = v43;
      *(v7 + 88) = v44;
    }

    *v43 = 10;
    v38 = *(v7 + 80) + 1;
    *(v7 + 80) = v38;
LABEL_58:
    v46 = *(v7 + 72);
    if (v38 + 10 >= (v46 + *(v7 + 88)))
    {
      v47 = (v38 + 10 - v46 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v48 = xo_realloc(v46, v47);
      if (!v48)
      {
        goto LABEL_62;
      }

      v38 = v48 + *(v7 + 80) - *(v7 + 72);
      *(v7 + 72) = v48;
      *(v7 + 80) = v38;
      *(v7 + 88) = v47;
    }

    v49 = *xo_message_hcv_msg_close;
    *(v38 + 8) = *&xo_message_hcv_msg_close[8];
    *v38 = v49;
    *(v7 + 80) += 10;
LABEL_62:
    if ((*v7 & 2) != 0)
    {
      v50 = *(v7 + 72);
      v51 = *(v7 + 80);
      if ((v51 + 1) < v50 + *(v7 + 88))
      {
LABEL_66:
        *v51 = 10;
        ++*(v7 + 80);
        goto LABEL_67;
      }

      v52 = &v51[-v50 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v53 = xo_realloc(v50, v52);
      if (v53)
      {
        v51 = (v53 + *(v7 + 80) - *(v7 + 72));
        *(v7 + 72) = v53;
        *(v7 + 80) = v51;
        *(v7 + 88) = v52;
        goto LABEL_66;
      }
    }

LABEL_67:
    xo_write(v7);
    goto LABEL_68;
  }

  if (v9 != 2)
  {
    goto LABEL_79;
  }

LABEL_80:
  v64 = *MEMORY[0x29EDCA608];
  return result;
}

char *xo_buf_indent(void *a1, size_t __len)
{
  v2 = __len;
  if (__len <= 0)
  {
    v2 = xo_indent(a1);
  }

  v5 = a1[9];
  v4 = a1[10];
  v6 = &v4[v2];
  if (v6 >= v5 + a1[11])
  {
    v7 = &v6[-v5 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(a1[9], v7);
    if (!result)
    {
      return result;
    }

    v9 = result;
    v4 = &result[a1[10] - a1[9]];
    a1[9] = v9;
    a1[10] = v4;
    a1[11] = v7;
  }

  result = memset(v4, 32, v2);
  a1[10] += v2;
  return result;
}

uint64_t *xo_buf_append(uint64_t *result, const void *a2, size_t a3)
{
  if (a2 && a3)
  {
    v5 = result;
    result = xo_buf_has_room(result, a3);
    if (result)
    {
      result = memcpy(v5[1], a2, a3);
      v5[1] += a3;
    }
  }

  return result;
}

uint64_t xo_buf_has_room(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = a1[1] + a2;
  if (v5 >= v3 + a1[2])
  {
    v6 = (v5 - v3 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    result = xo_realloc();
    if (!result)
    {
      return result;
    }

    v8 = result + a1[1] - *a1;
    *a1 = result;
    a1[1] = v8;
    a1[2] = v6;
  }

  return 1;
}

uint64_t xo_escape_xml(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a2;
  if (a2 >= 1)
  {
    v4 = a3;
    v6 = 0;
    v7 = a1[1];
    v8 = v7;
    do
    {
      v9 = *v8;
      if (v9 == 38)
      {
        v6 += 4;
      }

      else
      {
        if (((v9 == 34) & (a3 >> 9)) != 0)
        {
          v10 = v6 + 5;
        }

        else
        {
          v10 = v6;
        }

        if (v9 == 60)
        {
          v10 = v6 + 3;
        }

        if (v9 == 62)
        {
          v6 += 3;
        }

        else
        {
          v6 = v10;
        }
      }

      ++v8;
    }

    while (v8 < &v7[a2]);
    if (v6)
    {
      v11 = *a1;
      if (&v7[v6] >= *a1 + a1[2])
      {
        v12 = &v7[v6 - v11 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v13 = xo_realloc();
        if (!v13)
        {
          return 0;
        }

        v7 = (v13 + a1[1] - *a1);
        *a1 = v13;
        a1[1] = v7;
        a1[2] = v12;
      }

      v14 = &v7[v3 + v6];
      v15 = &v7[v3 - 1];
      while (1)
      {
        --v14;
        v16 = *v15;
        if (v16 == 38)
        {
          v17 = xo_xml_amp;
          goto LABEL_27;
        }

        if (v16 == 60)
        {
          break;
        }

        if (v16 == 62)
        {
          v17 = xo_xml_gt;
LABEL_27:
          v18 = strlen(v17);
          v14 = &v14[-v18 + 1];
          memcpy(v14, v17, v18);
          goto LABEL_28;
        }

        if ((v4 & 0x200) != 0)
        {
          v17 = xo_xml_quot;
          if (v16 == 34)
          {
            goto LABEL_27;
          }
        }

        *v14 = v16;
LABEL_28:
        if (v15 > v7 && v15-- != v14)
        {
          continue;
        }

        v3 += v6;
        return v3;
      }

      v17 = xo_xml_lt;
      goto LABEL_27;
    }
  }

  return v3;
}

uint64_t xo_write(void *a1)
{
  v4 = a1 + 9;
  v2 = a1[9];
  v3 = v4[1];
  if (v3 == v2)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v3 + 1 < &v2[a1[11]])
  {
    goto LABEL_5;
  }

  v5 = (v3 + 1 - v2 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
  v6 = xo_realloc();
  if (v6)
  {
    v3 = (v6 + a1[10] - a1[9]);
    a1[9] = v6;
    a1[10] = v3;
    a1[11] = v5;
LABEL_5:
    *v3 = 0;
    ++a1[10];
  }

  a1[1] &= ~8uLL;
  a1[44] = 0;
  a1[45] = 0;
  a1[43] = 0;
  v7 = a1[3];
  if (v7)
  {
    result = v7(a1[8], a1[9]);
  }

  else
  {
    result = 0;
  }

  a1[10] = a1[9];
LABEL_11:
  a1[1] &= ~0x10uLL;
  return result;
}

uint64_t xo_buf_append_div(unint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, char *a6, uint64_t a7, char *a8, size_t a9, char *a10, size_t a11)
{
  v11 = a8;
  v159 = a2;
  v19 = a10;
  v20 = a9;
  v162[3] = *MEMORY[0x29EDCA608];
  if (a8 && !a10)
  {
    (MEMORY[0x2A1C7C4A8])();
    v19 = &v154 - ((a9 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v19, a9 + 1);
    memcpy(v19, v11, a9);
    v19[a9] = 0;
    if (*v19 == 37 && (v19[1] - 48) <= 9)
    {
      do
      {
        v21 = v19[2] - 48;
        ++v19;
      }

      while (v21 < 0xA);
      *v19 = 37;
    }

    a11 = strlen(v19);
  }

  if (a4 && (a3 & 0xC0) == 0x80 && (*a1 & 0x20) != 0)
  {
    v157 = a9;
    v22 = *(a1 + 200);
    v161 = a3;
    v162[0] = v22;
    v154 = (a1 + 200);
    v23 = *(a1 + 56);
    if (v23)
    {
      v23(a1, *(a1 + 200), 0);
    }

    v24 = *(a1 + 144);
    *(a1 + 152) = v24;
    if (*(a1 + 160) <= 1)
    {
      v25 = xo_realloc(v24, 0x2000);
      if (!v25)
      {
        goto LABEL_17;
      }

      v26 = v25;
      v24 = (v25 + *(a1 + 152) - *(a1 + 144));
      *(a1 + 144) = v26;
      *(a1 + 152) = v24;
      *(a1 + 160) = 0x2000;
    }

    *v24 = 91;
    ++*(a1 + 152);
LABEL_17:
    xo_buf_escape(a1, (a1 + 144), a4, a5, 0);
    v27 = *(a1 + 144);
    v28 = *(a1 + 152);
    v29 = v27 + *(a1 + 160);
    v30 = *a1;
    v158 = a5;
    if ((v30 & 2) != 0)
    {
      if ((v28 + 1) >= v29)
      {
        v34 = (v28 - v27 + 8195) & 0xFFFFFFFFFFFFE000;
        v35 = xo_realloc(v27, v34);
        if (!v35)
        {
          goto LABEL_27;
        }

        v28 = (v35 + *(a1 + 152) - *(a1 + 144));
        *(a1 + 144) = v35;
        *(a1 + 152) = v28;
        *(a1 + 160) = v34;
      }

      *v28 = 656424224;
      v33 = 4;
    }

    else
    {
      if (v28 + 2 >= v29)
      {
        v31 = (v28 - v27 + 8193) & 0xFFFFFFFFFFFFE000;
        v32 = xo_realloc(v27, v31);
        if (!v32)
        {
          goto LABEL_27;
        }

        v28 = (v32 + *(a1 + 152) - *(a1 + 144));
        *(a1 + 144) = v32;
        *(a1 + 152) = v28;
        *(a1 + 160) = v31;
      }

      *v28 = 10045;
      v33 = 2;
    }

    *(a1 + 152) += v33;
LABEL_27:
    xo_do_format_field(a1, (a1 + 144), v19, a11, v161 & 0xFFFFF4B7 | 0x300);
    v36 = *(a1 + 144);
    v37 = *(a1 + 152);
    if ((v37 + 1) >= v36 + *(a1 + 160))
    {
      v38 = (v37 - v36 + 8193) & 0xFFFFFFFFFFFFE000;
      v39 = xo_realloc(v36, v38);
      if (!v39)
      {
LABEL_31:
        v155 = a6;
        v156 = a7;
        v40 = *(a1 + 168) + 24 * *(a1 + 176);
        v43 = *(v40 + 16);
        v41 = (v40 + 16);
        v42 = v43;
        v160 = a4;
        v44 = v11;
        if (v43)
        {
          v45 = strlen(v42);
        }

        else
        {
          v45 = 0;
        }

        v46 = *(a1 + 152) - *(a1 + 144);
        v47 = xo_realloc(v42, v46 + v45 + 1);
        if (v47)
        {
          v48 = v47;
          memcpy((v47 + v45), *(a1 + 144), v46);
          *(v48 + v46 + v45) = 0;
          *v41 = v48;
        }

        *v154 = v162[0];
        v49 = *(a1 + 56);
        if (v49)
        {
          v49(a1, *(a1 + 200), 1);
        }

        a4 = v160;
        a3 = v161;
        v11 = v44;
        a6 = v155;
        a7 = v156;
        v20 = v157;
        a5 = v158;
        goto LABEL_39;
      }

      v37 = (v39 + *(a1 + 152) - *(a1 + 144));
      *(a1 + 144) = v39;
      *(a1 + 152) = v37;
      *(a1 + 160) = v38;
    }

    *v37 = 23847;
    *(a1 + 152) += 2;
    goto LABEL_31;
  }

LABEL_39:
  if ((a3 & 8) != 0)
  {
    result = xo_do_format_field(a1, 0, v19, a11, a3 | 0x800);
    goto LABEL_145;
  }

  v158 = a5;
  xo_line_ensure_open(a1);
  if ((*a1 & 2) != 0)
  {
    xo_buf_indent(a1, *(a1 + 20));
  }

  v50 = *(a1 + 72);
  v51 = *(a1 + 80);
  if (v51 + 12 < (v50 + *(a1 + 88)))
  {
    goto LABEL_45;
  }

  v52 = (v51 + 12 - v50 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
  v53 = xo_realloc(v50, v52);
  if (v53)
  {
    v51 = v53 + *(a1 + 80) - *(a1 + 72);
    *(a1 + 72) = v53;
    *(a1 + 80) = v51;
    *(a1 + 88) = v52;
LABEL_45:
    v54 = *xo_buf_append_div_div_start;
    *(v51 + 8) = *&xo_buf_append_div_div_start[8];
    *v51 = v54;
    *(a1 + 80) += 12;
  }

  v160 = a4;
  v161 = a3;
  v157 = v20;
  v55 = v159;
  v56 = strlen(v159);
  if (v159)
  {
    v57 = v56;
    if (v56)
    {
      v59 = *(a1 + 72);
      v58 = *(a1 + 80);
      if (v58 + v57 >= v59 + *(a1 + 88))
      {
        v60 = (v58 + v57 - v59 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        v61 = xo_realloc(*(a1 + 72), v60);
        if (!v61)
        {
          goto LABEL_52;
        }

        v62 = v61;
        v58 = (v61 + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = v62;
        *(a1 + 80) = v58;
        *(a1 + 88) = v60;
      }

      memcpy(v58, v55, v57);
      *(a1 + 80) += v57;
    }
  }

LABEL_52:
  v64 = *(a1 + 408);
  v63 = *(a1 + 416);
  v65 = v63 - v64;
  if (v63 == v64)
  {
    v66 = *(a1 + 80);
  }

  else
  {
    v66 = *(a1 + 80);
    if (!v64)
    {
      goto LABEL_60;
    }

    v67 = *(a1 + 72);
    if (v66 + v65 >= v67 + *(a1 + 88))
    {
      v68 = (v66 + v65 - v67 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v69 = xo_realloc(v67, v68);
      v66 = *(a1 + 80);
      if (!v69)
      {
        goto LABEL_60;
      }

      v66 = (v66 + v69 - *(a1 + 72));
      *(a1 + 72) = v69;
      *(a1 + 80) = v66;
      *(a1 + 88) = v68;
    }

    memcpy(v66, v64, v65);
    v66 = (*(a1 + 80) + v65);
    *(a1 + 80) = v66;
  }

LABEL_60:
  v71 = v160;
  if (!v160)
  {
    goto LABEL_124;
  }

  v72 = *(a1 + 72);
  if (v66 + 12 >= v72 + *(a1 + 88))
  {
    v73 = (v66 - v72 + 8203) & 0xFFFFFFFFFFFFE000;
    v74 = xo_realloc(v72, v73);
    if (!v74)
    {
      goto LABEL_65;
    }

    v66 = (v74 + *(a1 + 80) - *(a1 + 72));
    *(a1 + 72) = v74;
    *(a1 + 80) = v66;
    *(a1 + 88) = v73;
  }

  v75 = *xo_buf_append_div_div_tag;
  *(v66 + 2) = *&xo_buf_append_div_div_tag[8];
  *v66 = v75;
  *(a1 + 80) += 12;
LABEL_65:
  v76 = v158;
  xo_buf_escape(a1, (a1 + 72), v71, v158, 0);
  v77 = *a1;
  if ((*a1 & 0x40000) == 0)
  {
    if ((v77 & 0x20) == 0)
    {
      goto LABEL_67;
    }

LABEL_70:
    v78 = *(a1 + 72);
    v79 = *(a1 + 80);
    if (v79 + 14 >= v78 + *(a1 + 88))
    {
      v80 = (v79 - v78 + 8205) & 0xFFFFFFFFFFFFE000;
      v81 = xo_realloc(v78, v80);
      if (!v81)
      {
LABEL_74:
        v83 = *(a1 + 208);
        if (v83)
        {
          v84 = strlen(*(a1 + 208));
          if (v84)
          {
            v85 = v84;
            v87 = *(a1 + 72);
            v86 = *(a1 + 80);
            if (v86 + v85 >= v87 + *(a1 + 88))
            {
              v88 = (v86 + v85 - v87 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
              v89 = xo_realloc(*(a1 + 72), v88);
              if (!v89)
              {
                goto LABEL_80;
              }

              v90 = v89;
              v86 = (v89 + *(a1 + 80) - *(a1 + 72));
              *(a1 + 72) = v90;
              *(a1 + 80) = v86;
              *(a1 + 88) = v88;
            }

            memcpy(v86, v83, v85);
            *(a1 + 80) += v85;
          }
        }

LABEL_80:
        v155 = a6;
        v156 = a7;
        v159 = v11;
        v91 = v161;
        if ((*(a1 + 176) & 0x80000000) == 0)
        {
          v92 = 0;
          v93 = -1;
          do
          {
            ++v93;
            v94 = *(a1 + 168);
            v95 = v94 + v92;
            if (!*(v94 + v92 + 8) || (*(v95 + 4) | 4) == 7)
            {
              goto LABEL_84;
            }

            v96 = *(a1 + 72);
            v97 = *(a1 + 80);
            if ((v97 + 1) >= v96 + *(a1 + 88))
            {
              v98 = &v97[-v96 + 0x2000] & 0xFFFFFFFFFFFFE000;
              v99 = xo_realloc(v96, v98);
              if (!v99)
              {
                goto LABEL_90;
              }

              v97 = (v99 + *(a1 + 80) - *(a1 + 72));
              *(a1 + 72) = v99;
              *(a1 + 80) = v97;
              *(a1 + 88) = v98;
            }

            *v97 = 47;
            ++*(a1 + 80);
LABEL_90:
            v100 = strlen(*(v95 + 8));
            xo_buf_escape(a1, (a1 + 72), *(v95 + 8), v100, 0);
            v101 = *(v94 + v92 + 16);
            if (!v101 || v91 < 0 && v93 == *(a1 + 176))
            {
              goto LABEL_84;
            }

            v102 = strlen(v101);
            if (!v102)
            {
              goto LABEL_84;
            }

            v103 = v102;
            v105 = *(a1 + 72);
            v104 = *(a1 + 80);
            if (v104 + v103 < v105 + *(a1 + 88))
            {
              goto LABEL_97;
            }

            v106 = (v104 + v103 - v105 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
            v107 = xo_realloc(*(a1 + 72), v106);
            if (v107)
            {
              v108 = v107;
              v104 = (v107 + *(a1 + 80) - *(a1 + 72));
              *(a1 + 72) = v108;
              *(a1 + 80) = v104;
              *(a1 + 88) = v106;
LABEL_97:
              memcpy(v104, v101, v103);
              *(a1 + 80) += v103;
            }

LABEL_84:
            v92 += 24;
          }

          while (v93 < *(a1 + 176));
        }

        v109 = *(a1 + 72);
        v110 = *(a1 + 80);
        v11 = v159;
        v71 = v160;
        a6 = v155;
        a7 = v156;
        if ((v110 + 1) >= v109 + *(a1 + 88))
        {
          v111 = &v110[-v109 + 0x2000] & 0xFFFFFFFFFFFFE000;
          v112 = xo_realloc(v109, v111);
          if (!v112)
          {
            goto LABEL_102;
          }

          v110 = (v112 + *(a1 + 80) - *(a1 + 72));
          *(a1 + 72) = v112;
          *(a1 + 80) = v110;
          *(a1 + 88) = v111;
        }

        *v110 = 47;
        ++*(a1 + 80);
LABEL_102:
        v76 = v158;
        xo_buf_escape(a1, (a1 + 72), v71, v158, 0);
        if ((*a1 & 0x40) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_103;
      }

      v79 = (v81 + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = v81;
      *(a1 + 80) = v79;
      *(a1 + 88) = v80;
    }

    v82 = *xo_buf_append_div_div_xpath;
    *(v79 + 6) = *&xo_buf_append_div_div_xpath[6];
    *v79 = v82;
    *(a1 + 80) += 14;
    goto LABEL_74;
  }

  *(a1 + 8) |= 0x10uLL;
  *(a1 + 368) = *(a1 + 80) - *(a1 + 72) + 1;
  if ((v77 & 0x20) != 0)
  {
    goto LABEL_70;
  }

LABEL_67:
  if ((v77 & 0x40) == 0)
  {
    goto LABEL_117;
  }

LABEL_103:
  if (*(a1 + 184))
  {
    v113 = xo_info_find(a1, v71, v76);
    if (v113)
    {
      v114 = v113;
      if (!v113[1])
      {
        goto LABEL_111;
      }

      v115 = *(a1 + 72);
      v116 = *(a1 + 80);
      if (v116 + 13 >= v115 + *(a1 + 88))
      {
        v117 = (v116 - v115 + 8204) & 0xFFFFFFFFFFFFE000;
        v118 = xo_realloc(v115, v117);
        if (!v118)
        {
LABEL_110:
          v120 = strlen(v114[1]);
          xo_buf_escape(a1, (a1 + 72), v114[1], v120, 0);
LABEL_111:
          if (!v114[2])
          {
            goto LABEL_117;
          }

          v121 = *(a1 + 72);
          v122 = *(a1 + 80);
          if (v122 + 13 >= v121 + *(a1 + 88))
          {
            v123 = (v122 - v121 + 8204) & 0xFFFFFFFFFFFFE000;
            v124 = xo_realloc(v121, v123);
            if (!v124)
            {
LABEL_116:
              v126 = strlen(v114[2]);
              xo_buf_escape(a1, (a1 + 72), v114[2], v126, 0);
              goto LABEL_117;
            }

            v122 = (v124 + *(a1 + 80) - *(a1 + 72));
            *(a1 + 72) = v124;
            *(a1 + 80) = v122;
            *(a1 + 88) = v123;
          }

          v125 = *xo_buf_append_div_in_help;
          *(v122 + 5) = *&xo_buf_append_div_in_help[5];
          *v122 = v125;
          *(a1 + 80) += 13;
          goto LABEL_116;
        }

        v116 = (v118 + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = v118;
        *(a1 + 80) = v116;
        *(a1 + 88) = v117;
      }

      v119 = *xo_buf_append_div_in_type;
      *(v116 + 5) = *&xo_buf_append_div_in_type[5];
      *v116 = v119;
      *(a1 + 80) += 13;
      goto LABEL_110;
    }
  }

LABEL_117:
  if ((v161 & 0x80) == 0)
  {
    v66 = *(a1 + 80);
    goto LABEL_124;
  }

  v66 = *(a1 + 80);
  if ((*(a1 + 1) & 8) != 0)
  {
    v127 = *(a1 + 72);
    if (v66 + 15 >= v127 + *(a1 + 88))
    {
      v128 = (v66 - v127 + 8206) & 0xFFFFFFFFFFFFE000;
      v129 = xo_realloc(v127, v128);
      v66 = *(a1 + 80);
      if (!v129)
      {
        goto LABEL_124;
      }

      v66 = (v66 + v129 - *(a1 + 72));
      *(a1 + 72) = v129;
      *(a1 + 80) = v66;
      *(a1 + 88) = v128;
    }

    v130 = *xo_buf_append_div_div_key;
    *(v66 + 7) = *&xo_buf_append_div_div_key[7];
    *v66 = v130;
    v66 = (*(a1 + 80) + 15);
    *(a1 + 80) = v66;
  }

LABEL_124:
  v131 = *(a1 + 72);
  v132 = v66;
  if (v66 + 2 >= v131 + *(a1 + 88))
  {
    v133 = xo_realloc(*(a1 + 72), (v66 - v131 + 8193) & 0xFFFFFFFFFFFFE000);
    v134 = *(a1 + 80);
    if (!v133)
    {
      goto LABEL_128;
    }

    v132 = (v133 + v134 - *(a1 + 72));
    *(a1 + 72) = v133;
    *(a1 + 80) = v132;
    *(a1 + 88) = (v66 - v131 + 8193) & 0xFFFFFFFFFFFFE000;
  }

  *v132 = *xo_buf_append_div_div_end;
  v134 = *(a1 + 80) + 2;
  *(a1 + 80) = v134;
LABEL_128:
  v135 = v134 - *(a1 + 72);
  v136 = *(a1 + 376);
  v162[0] = v135;
  v162[1] = v136;
  v162[2] = *(a1 + 352);
  if (a7)
  {
    v137 = a6;
    v138 = v161;
    appended = xo_data_append_content(a1, v137, a7, v161);
  }

  else
  {
    v138 = v161;
    appended = xo_do_format_field(a1, 0, v11, v157, v161);
  }

  v140 = *(a1 + 80);
  if ((v138 & 0x8000) != 0)
  {
    v141 = (v135 + *(a1 + 72));
    v142 = v140 - v141;
    MEMORY[0x2A1C7C4A8](appended);
    v144 = &v154 - v143;
    bzero(&v154 - v143, v142 + 1);
    memcpy(v144, v141, v142);
    v144[v142] = 0;
    xo_format_humanize(a1, (a1 + 72), v162, v138);
    v145 = *(a1 + 72);
    v146 = *(a1 + 80);
    v147 = v146 + v142 + 15;
    if (v147 >= v145 + *(a1 + 88))
    {
      v148 = (v147 - v145 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v145 = xo_realloc(v145, v148);
      v140 = *(a1 + 80);
      if (!v145)
      {
        goto LABEL_136;
      }

      v146 = v145 + v140 - *(a1 + 72);
      *(a1 + 72) = v145;
      *(a1 + 80) = v146;
      *(a1 + 88) = v148;
    }

    memmove(v66 + v145 - v131 + v142 + 15, v66 + v145 - v131, v146 - (v66 + v145 - v131));
    qmemcpy(v66 + *(a1 + 72) - v131, " data-number=", 15);
    memcpy(v66 + *(a1 + 72) - v131 + 15, v144, v142);
    v140 = *(a1 + 80) + v142 + 15;
    *(a1 + 80) = v140;
  }

LABEL_136:
  result = *(a1 + 72);
  if (v140 + 6 >= (result + *(a1 + 88)))
  {
    v149 = (v140 + 6 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(result, v149);
    if (!result)
    {
      goto LABEL_140;
    }

    v140 = result + *(a1 + 80) - *(a1 + 72);
    *(a1 + 72) = result;
    *(a1 + 80) = v140;
    *(a1 + 88) = v149;
  }

  v150 = *xo_buf_append_div_div_close;
  *(v140 + 4) = *&xo_buf_append_div_div_close[4];
  *v140 = v150;
  *(a1 + 80) += 6;
LABEL_140:
  if ((*a1 & 2) != 0)
  {
    result = *(a1 + 72);
    v151 = *(a1 + 80);
    if ((v151 + 1) < result + *(a1 + 88))
    {
LABEL_144:
      *v151 = 10;
      ++*(a1 + 80);
      goto LABEL_145;
    }

    v152 = &v151[-result + 0x2000] & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(result, v152);
    if (result)
    {
      v151 = (result + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = result;
      *(a1 + 80) = v151;
      *(a1 + 88) = v152;
      goto LABEL_144;
    }
  }

LABEL_145:
  v153 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xo_printf_v(uint64_t a1, char *__format, va_list a3)
{
  v5 = *(a1 + 72) - *(a1 + 80) + *(a1 + 88);
  result = vsnprintf(*(a1 + 80), v5, __format, a3);
  if (v5 <= result)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 80) + result;
    if (v8 >= v7 + *(a1 + 88))
    {
      v9 = (v8 - v7 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v10 = xo_realloc(*(a1 + 72), v9);
      if (!v10)
      {
        return -1;
      }

      v11 = v10 + *(a1 + 80) - *(a1 + 72);
      *(a1 + 72) = v10;
      *(a1 + 80) = v11;
      *(a1 + 88) = v9;
    }

    result = vsnprintf(*(a1 + 80), *(a1 + 88) - *(a1 + 80) + *(a1 + 72), __format, a3);
  }

  if (result >= 1)
  {
    *(a1 + 80) += result;
  }

  return result;
}

uint64_t xo_flush_h(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v1 = xo_default_handle();
  }

  if (*(v1 + 16) == 5)
  {
    xo_encoder_handle(v1, 13, 0, 0, 0);
  }

  v2 = xo_write(v1);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = *(v1 + 40);
    if (v3)
    {
      if ((v3(*(v1 + 64)) & 0x80000000) != 0)
      {
        return -1;
      }
    }
  }

  return v2;
}

_BYTE *xo_failure(_BYTE *result, char *__s)
{
  if ((*result & 0x10) != 0)
  {
    return xo_warn_hcv(result, -1, 1, __s);
  }

  return result;
}

uint64_t xo_create(__int16 a1, uint64_t a2)
{
  v4 = xo_realloc(0, 472);
  v5 = v4;
  if (v4)
  {
    *(v4 + 464) = 0;
    *(v4 + 432) = 0u;
    *(v4 + 448) = 0u;
    *(v4 + 400) = 0u;
    *(v4 + 416) = 0u;
    *(v4 + 368) = 0u;
    *(v4 + 384) = 0u;
    *(v4 + 336) = 0u;
    *(v4 + 352) = 0u;
    *(v4 + 304) = 0u;
    *(v4 + 320) = 0u;
    *(v4 + 272) = 0u;
    *(v4 + 288) = 0u;
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
    *(v4 + 208) = 0u;
    *(v4 + 224) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    *(v4 + 16) = a1;
    *v4 = a2;
    xo_init_handle(v4);
    *(v5 + 16) = a1;
  }

  return v5;
}

uint64_t xo_init_handle(uint64_t a1)
{
  v2 = *MEMORY[0x29EDCA620];
  *(a1 + 64) = *MEMORY[0x29EDCA620];
  *(a1 + 24) = xo_write_to_file;
  *(a1 + 40) = xo_flush_file;
  v3 = fileno(v2);
  if (isatty(v3))
  {
    *a1 |= 0x800000uLL;
  }

  if ((xo_locale_inited & 1) == 0)
  {
    xo_locale_inited = 1;
    v4 = getenv("LC_ALL");
    if (!v4)
    {
      v4 = getenv("LC_CTYPE");
      if (!v4)
      {
        v4 = getenv("LANG");
      }
    }

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = "C";
    }

    setlocale(2, v5);
  }

  *(a1 + 88) = 0x2000;
  v6 = xo_realloc(0, 0x2000);
  *(a1 + 72) = v6;
  *(a1 + 80) = v6;
  *(a1 + 112) = 0x2000;
  result = xo_realloc(0, 0x2000);
  *(a1 + 96) = result;
  *(a1 + 104) = result;
  v8 = *(a1 + 8);
  if ((v8 & 0x20) == 0)
  {
    *(a1 + 8) = v8 | 0x20;
    *(a1 + 20) = 2;
    result = xo_depth_check(a1, 128);
    *(a1 + 8) &= ~0x20uLL;
  }

  return result;
}

void *xo_create_to_file(uint64_t a1, __int16 a2, uint64_t a3)
{
  result = xo_create(a2, a3);
  if (result)
  {
    result[8] = a1;
    result[3] = xo_write_to_file;
    result[4] = xo_close_file;
    result[5] = xo_flush_file;
  }

  return result;
}

uint64_t xo_set_file_h(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    xo_failure(a1, "xo_set_file: NULL fp");
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = 0;
  *(a1 + 64) = a2;
  *(a1 + 24) = xo_write_to_file;
  *(a1 + 32) = xo_close_file;
  *(a1 + 40) = xo_flush_file;
  return v3;
}

_DWORD *xo_destroy(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v2 = xo_default_handle();
  }

  xo_flush_h(v2);
  v3 = *(v2 + 32);
  if (v3 && (*v2 & 1) != 0)
  {
    v3(*(v2 + 64));
  }

  xo_free(*(v2 + 168));
  v4 = *(v2 + 72);
  if (v4)
  {
    xo_free(v4);
  }

  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  v5 = *(v2 + 96);
  if (v5)
  {
    xo_free(v5);
  }

  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  v6 = *(v2 + 144);
  if (v6)
  {
    xo_free(v6);
  }

  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  v7 = *(v2 + 120);
  if (v7)
  {
    xo_free(v7);
  }

  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  v8 = *(v2 + 408);
  if (v8)
  {
    xo_free(v8);
  }

  *(v2 + 408) = 0;
  *(v2 + 416) = 0;
  *(v2 + 424) = 0;
  v9 = *(v2 + 432);
  if (v9)
  {
    xo_free(v9);
  }

  if (a1)
  {
    v10 = xo_free;

    return v10(v2);
  }

  else
  {
    v12 = xo_default_handle();
    *(v12 + 464) = 0;
    *(v12 + 432) = 0u;
    *(v12 + 448) = 0u;
    *(v12 + 400) = 0u;
    *(v12 + 416) = 0u;
    *(v12 + 368) = 0u;
    *(v12 + 384) = 0u;
    *(v12 + 336) = 0u;
    *(v12 + 352) = 0u;
    *(v12 + 304) = 0u;
    *(v12 + 320) = 0u;
    *(v12 + 272) = 0u;
    *(v12 + 288) = 0u;
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
    *(v12 + 208) = 0u;
    *(v12 + 224) = 0u;
    *(v12 + 176) = 0u;
    *(v12 + 192) = 0u;
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
    result = xo_default_inited();
    *result = 0;
  }

  return result;
}

uint64_t xo_set_style(uint64_t result, __int16 a2)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *(result + 16) = a2;
  return result;
}

uint64_t xo_get_style(uint64_t a1)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  return *(a1 + 16);
}

uint64_t xo_set_style_name(uint64_t a1, const char *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = xo_name_to_style(a2);
  if (v3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  result = 0;
  *(a1 + 16) = v4;
  return result;
}

uint64_t xo_name_to_style(const char *a1)
{
  if (!strcmp(a1, "xml"))
  {
    return 1;
  }

  if (!strcmp(a1, "json"))
  {
    return 2;
  }

  if (!strcmp(a1, "encoder"))
  {
    return 5;
  }

  result = strcmp(a1, "text");
  if (result)
  {
    if (!strcmp(a1, "html"))
    {
      return 3;
    }

    else if (!strcmp(a1, "sdparams"))
    {
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t xo_set_options(uint64_t a1, char *__s)
{
  v2 = __s;
  v25[1] = *MEMORY[0x29EDCA608];
  if (!__s)
  {
    goto LABEL_96;
  }

  v3 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v3 = xo_default_handle();
  }

  if (*v2 == 58)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v4 = v2;
                v6 = *++v2;
                v5 = v6;
                if (v6 <= 87)
                {
                  break;
                }

                if (v5 <= 104)
                {
                  if (v5 > 101)
                  {
                    if (v5 == 102)
                    {
                      *v3 |= 0x400000uLL;
                    }

                    else if (v5 == 103)
                    {
                      *v3 |= 0x10000000uLL;
                    }
                  }

                  else if (v5 == 88)
                  {
                    *(v3 + 16) = 1;
                  }

                  else if (v5 == 99)
                  {
                    *v3 |= 0x2000000uLL;
                  }
                }

                else if (v5 <= 109)
                {
                  if (v5 == 105)
                  {
                    v7 = strspn((v4 + 2), "0123456789");
                    if (v7 >= 1)
                    {
                      v8 = v7;
                      *(v3 + 20) = atoi((v4 + 2));
                      v2 = v4 + v8;
                    }
                  }

                  else if (v5 == 107)
                  {
                    *v3 |= 0x800uLL;
                  }
                }

                else
                {
                  switch(v5)
                  {
                    case 'n':
                      *v3 |= 0x8000000uLL;
                      break;
                    case 'u':
                      *v3 |= 0x100000uLL;
                      break;
                    case 'x':
                      *v3 |= 0x20uLL;
                      break;
                  }
                }
              }

              if (v5 <= 79)
              {
                break;
              }

              if (v5 > 84)
              {
                if (v5 == 85)
                {
                  *v3 |= 0x40000uLL;
                }

                else if (v5 == 87)
                {
                  *v3 |= 0x10uLL;
                }
              }

              else if (v5 == 80)
              {
                *v3 |= 2uLL;
              }

              else if (v5 == 84)
              {
                *(v3 + 16) = 0;
              }
            }

            if (v5 <= 72)
            {
              break;
            }

            if (v5 == 73)
            {
              *v3 |= 0x40uLL;
            }

            else if (v5 == 74)
            {
              *(v3 + 16) = 2;
            }
          }

          if (v5 != 70)
          {
            break;
          }

          *v3 |= 0x800000uLL;
        }

        if (v5 != 72)
        {
          break;
        }

        *(v3 + 16) = 3;
      }
    }

    while (v5);
    goto LABEL_95;
  }

  v9 = strlen(v2);
  v10 = v9 + 1;
  v11 = v25 - ((MEMORY[0x2A1C7C4A8](v9) + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  memcpy(v11, v2, v10);
  v12 = &v11[v10 - 1];
  if (v11 >= v12)
  {
LABEL_95:
    v2 = 0;
    goto LABEL_96;
  }

  v2 = 0;
  v13 = -1;
  do
  {
    v14 = strchr(v11, 44);
    v15 = v14;
    if (v14)
    {
      *v14 = 0;
      v15 = v14 + 1;
    }

    if (*v11 == 64)
    {
      v17 = v11[1];
      v16 = (v11 + 1);
      if (!v17)
      {
        goto LABEL_88;
      }

      v2 = xo_encoder_init(v3, v16);
      if (!v2)
      {
        goto LABEL_89;
      }

LABEL_58:
      xo_warnx("error initializing encoder: %s");
LABEL_66:
      if (!v15)
      {
        break;
      }

      goto LABEL_90;
    }

    v18 = strchr(v11, 61);
    v19 = v18;
    if (v18)
    {
      *v18 = 0;
      v19 = v18 + 1;
    }

    if (!strcmp("colors", v11))
    {
      xo_set_color_map(v3, v19);
      if (!v15)
      {
        break;
      }

      goto LABEL_90;
    }

    v20 = xo_name_to_style(v11);
    if ((v20 & 0x80000000) == 0 && v20 != 5)
    {
      if (v13 < 0)
      {
        v13 = v20;
        if (!v15)
        {
          break;
        }

        goto LABEL_90;
      }

      xo_warnx("ignoring multiple styles: '%s'");
      goto LABEL_66;
    }

    v21 = xo_name_lookup(xo_xof_names, v11, 0xFFFFFFFFFFFFFFFFLL);
    if (v21)
    {
      v22 = *v3 | v21;
      goto LABEL_72;
    }

    if (!strcmp(v11, "no-color"))
    {
      v22 = *v3 & 0xFFFFFFFFFDFFFFFFLL;
LABEL_72:
      *v3 = v22;
      if (!v15)
      {
        break;
      }

      goto LABEL_90;
    }

    if (strcmp(v11, "indent"))
    {
      if (strcmp(v11, "encoder"))
      {
        xo_warnx("unknown libxo option value: '%s'", v11);
        v2 = 0xFFFFFFFFLL;
        if (!v15)
        {
          break;
        }

        goto LABEL_90;
      }

      if (!v19)
      {
LABEL_88:
        xo_failure(v3, "missing value for encoder option");
LABEL_89:
        if (!v15)
        {
          break;
        }

        goto LABEL_90;
      }

      v2 = xo_encoder_init(v3, v19);
      if (!v2)
      {
        goto LABEL_89;
      }

      goto LABEL_58;
    }

    if (v19)
    {
      *(v3 + 20) = atoi(v19);
      if (!v15)
      {
        break;
      }

      goto LABEL_90;
    }

    xo_failure(v3, "missing value for indent option");
    if (!v15)
    {
      break;
    }

LABEL_90:
    v11 = v15;
  }

  while (v15 < v12);
  if (v13 >= 1)
  {
    *(v3 + 16) = v13;
  }

LABEL_96:
  v23 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t xo_set_color_map(uint64_t result, char *__s)
{
  v2 = __s;
  v3 = result;
  if (__s)
  {
    result = strlen(__s);
    v4 = result + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = &v2[v4 - 1];
  v6 = 1;
  v7 = 385;
  while (v2)
  {
    v8 = v2;
    if (!*v2 || v2 >= v5)
    {
      break;
    }

    v10 = strchr(v2, 43);
    v2 = v10;
    if (v10)
    {
      *v10 = 0;
      v2 = v10 + 1;
    }

    result = strchr(v8, 47);
    v11 = result;
    if (result)
    {
      *result = 0;
      v11 = (result + 1);
    }

    if (*v8)
    {
      v12 = 0;
      while (1)
      {
        result = strcmp(xo_color_names[v12], v8);
        if (!result)
        {
          break;
        }

        if (++v12 == 9)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      LODWORD(v12) = -1;
    }

    LOBYTE(v13) = v6;
    if (v11)
    {
      LOBYTE(v13) = v6;
      if (*v11)
      {
        v13 = 0;
        while (1)
        {
          result = strcmp(xo_color_names[v13], v11);
          if (!result)
          {
            break;
          }

          if (++v13 == 9)
          {
            LOBYTE(v13) = v6;
            break;
          }
        }
      }
    }

    if (v12 >= 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = v6;
    }

    *(v3 + v6 + 384) = v14;
    *(v3 + v6++ + 393) = v13;
    ++v7;
    if (v6 == 10)
    {
      *v3 |= 0x100000000uLL;
      return result;
    }
  }

  v15 = *v3;
  if (v6 <= 1)
  {
    *v3 = v15 & 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    *v3 = v15 | 0x100000000;
    if (v6 > 8)
    {
      return result;
    }
  }

  do
  {
    v16 = v3 + v7;
    v16[9] = v7 + 0x80;
    *v16 = v7++ + 0x80;
  }

  while (v7 != 393);
  return result;
}

void *xo_set_flags(void *result, uint64_t a2)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *result |= a2;
  return result;
}

uint64_t xo_get_flags(uint64_t a1)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  return *a1;
}

_BYTE *xo_set_leading_xpath(uint64_t a1, char *__s)
{
  v3 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v3 = xo_default_handle();
  }

  result = *(v3 + 208);
  if (result)
  {
    result = xo_free(result);
    *(v3 + 208) = 0;
  }

  if (__s)
  {
    result = xo_strndup(__s, 0xFFFFFFFFFFFFFFFFLL);
    *(v3 + 208) = result;
  }

  return result;
}

_BYTE *xo_strndup(char *__s, size_t a2)
{
  v2 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v2 = strlen(__s);
  }

  v4 = xo_realloc(0, v2 + 1);
  v5 = v4;
  if (v4)
  {
    memcpy(v4, __s, v2);
    v5[v2] = 0;
  }

  return v5;
}

uint64_t xo_set_info(uint64_t result, void *a2, int a3)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  if (a2 && a3 < 0)
  {
    if (*a2)
    {
      a3 = 0;
      v5 = a2 + 3;
      do
      {
        ++a3;
        v6 = *v5;
        v5 += 3;
      }

      while (v6);
    }

    else
    {
      a3 = 0;
    }
  }

  *(result + 184) = a2;
  *(result + 192) = a3;
  return result;
}

uint64_t xo_set_formatter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

void *xo_clear_flags(void *result, uint64_t a2)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *result &= ~a2;
  return result;
}

uint64_t xo_simplify_format(uint64_t a1, unsigned __int8 *a2, int a3, void (*a4)(uint64_t, void, void))
{
  v7 = a1;
  v62 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v7 = xo_default_handle();
  }

  *(v7 + 376) = 0;
  v8 = __error();
  *(v7 + 440) = *v8;
  v9 = 1;
  for (i = a2; ; ++i)
  {
    v11 = *i;
    if (v11 != 10 && v11 != 123)
    {
      break;
    }

    ++v9;
LABEL_11:
    ;
  }

  if (*i)
  {
    goto LABEL_11;
  }

  v12 = (2 * v9) | 1;
  MEMORY[0x2A1C7C4A8](v8);
  v14 = &__str[-(v12 * v13) - 4];
  bzero(v14, v15);
  if (!xo_parse_fields(v7, v14, v12, a2))
  {
    v18 = xo_realloc(0, 0x2000);
    v17 = v18;
    if (a3)
    {
      v19 = 0;
      v20 = 0;
      for (j = v14 + 88; ; j += 24)
      {
        v22 = *(j - 20);
        if (v22 > 70)
        {
          if (v22 == 71 || v22 == 123)
          {
            continue;
          }
        }

        else
        {
          if (v22 == 10 || v22 == 43)
          {
            continue;
          }

          if (!v22)
          {
            break;
          }
        }

        if (++v19 > 0x3E)
        {
          break;
        }

        if (*j)
        {
          v20 |= 1 << *j;
        }
      }

      v23 = 0;
      for (k = v14; ; k += 96)
      {
        v25 = *(k + 2);
        if (v25 > 70)
        {
          if (v25 == 71 || v25 == 123)
          {
            continue;
          }
        }

        else
        {
          if (v25 == 10 || v25 == 43)
          {
            continue;
          }

          if (!v25)
          {
            break;
          }
        }

        if (!*(k + 22))
        {
          do
          {
            ++v23;
          }

          while (((1 << v23) & v20) != 0);
          if (v23 > v19)
          {
            break;
          }

          *(k + 22) = v23;
          v20 |= 1 << v23;
        }
      }
    }

    v26 = *(v14 + 2);
    if (!v26)
    {
      v28 = 0x2000;
      v29 = v18;
LABEL_102:
      if ((v29 + 1) >= v17 + v28)
      {
        v57 = xo_realloc(v17, &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000);
        if (!v57)
        {
          goto LABEL_106;
        }

        v29 = &v29[v57 - v17];
        v17 = v57;
      }

      *v29 = 0;
      goto LABEL_106;
    }

    v27 = (v14 + 64);
    v28 = 0x2000;
    v29 = v18;
    while (1)
    {
      v30 = *(v27 - 8);
      if ((v30 & 0x80000) != 0)
      {
        if (a4)
        {
          if (v26 != 86)
          {
            v31 = *(v27 - 5);
            if (v31)
            {
              a4(v31, *v27, (v30 >> 20) & 1);
            }
          }
        }
      }

      if (v26 > 70)
      {
        break;
      }

      if (v26 != 10)
      {
        if (v26 == 43)
        {
          v32 = *(v27 - 5);
          if (!v32)
          {
            goto LABEL_97;
          }

          v33 = *v27;
          if (!*v27)
          {
            goto LABEL_97;
          }

          if (&v29[v33] >= v17 + v28)
          {
            v34 = &v29[v33 - v17 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
            v35 = xo_realloc(v17, v34);
            if (!v35)
            {
              goto LABEL_97;
            }

            v29 = &v29[v35 - v17];
            v17 = v35;
            v28 = v34;
          }

          memcpy(v29, v32, v33);
          goto LABEL_96;
        }

        goto LABEL_62;
      }

      if ((v29 + 1) < v17 + v28)
      {
        goto LABEL_94;
      }

      v55 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v56 = xo_realloc(v17, v55);
      if (v56)
      {
        v29 = &v29[v56 - v17];
        v17 = v56;
        v28 = v55;
LABEL_94:
        v54 = 10;
LABEL_95:
        *v29 = v54;
        v33 = 1;
LABEL_96:
        v29 += v33;
      }

LABEL_97:
      v26 = v27[10];
      v27 += 24;
      if (!v26)
      {
        goto LABEL_102;
      }
    }

    if (v26 == 71)
    {
      goto LABEL_97;
    }

    if (v26 == 123)
    {
      if ((v29 + 1) >= v17 + v28)
      {
        v36 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
        v37 = xo_realloc(v17, v36);
        if (!v37)
        {
LABEL_81:
          v48 = *(v27 - 5);
          if (v48)
          {
            v49 = *v27;
            if (*v27)
            {
              if (&v29[v49] < v17 + v28)
              {
LABEL_86:
                memcpy(v29, v48, v49);
                v29 += v49;
                goto LABEL_87;
              }

              v50 = &v29[v49 - v17 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
              v51 = xo_realloc(v17, v50);
              if (v51)
              {
                v29 = &v29[v51 - v17];
                v17 = v51;
                v28 = v50;
                goto LABEL_86;
              }
            }
          }

LABEL_87:
          if ((v29 + 1) < v17 + v28)
          {
            goto LABEL_90;
          }

          v52 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
          v53 = xo_realloc(v17, v52);
          if (v53)
          {
            v29 = &v29[v53 - v17];
            v17 = v53;
            v28 = v52;
LABEL_90:
            v54 = 125;
            goto LABEL_95;
          }

          goto LABEL_97;
        }

        v29 = &v29[v37 - v17];
        v17 = v37;
        v28 = v36;
      }

      *v29++ = 123;
      goto LABEL_81;
    }

LABEL_62:
    if ((v29 + 1) >= v17 + v28)
    {
      v38 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v39 = xo_realloc(v17, v38);
      if (!v39)
      {
        goto LABEL_66;
      }

      v29 = &v29[v39 - v17];
      v17 = v39;
      v28 = v38;
    }

    *v29++ = 123;
LABEL_66:
    if (v26 != 86)
    {
      if ((v29 + 1) < v17 + v28)
      {
LABEL_70:
        *v29++ = v26;
        goto LABEL_71;
      }

      v40 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v41 = xo_realloc(v17, v40);
      if (v41)
      {
        v29 = &v29[v41 - v17];
        v17 = v41;
        v28 = v40;
        goto LABEL_70;
      }
    }

LABEL_71:
    if (v27[6])
    {
      snprintf(__str, 0xCuLL, "%u", v27[6]);
      v42 = strlen(__str);
      if (v42)
      {
        v43 = v42;
        if (&v29[v42] >= v17 + v28)
        {
          v44 = &v29[v42 - v17 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
          v45 = xo_realloc(v17, v44);
          if (!v45)
          {
            goto LABEL_77;
          }

          v29 = &v29[v45 - v17];
          v17 = v45;
          v28 = v44;
        }

        memcpy(v29, __str, v43);
        v29 += v43;
      }
    }

LABEL_77:
    if ((v29 + 1) >= v17 + v28)
    {
      v46 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v47 = xo_realloc(v17, v46);
      if (!v47)
      {
        goto LABEL_81;
      }

      v29 = &v29[v47 - v17];
      v17 = v47;
      v28 = v46;
    }

    *v29++ = 58;
    goto LABEL_81;
  }

  v17 = 0;
LABEL_106:
  v58 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t xo_parse_fields(_BYTE *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  if (*a4)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = a2;
  v13 = a4;
  while (2)
  {
    v14 = v11;
    *(v12 + 16) = v13;
    v15 = *v13;
    if (v15 == 10)
    {
      *(v12 + 8) = 10;
      *(v12 + 56) = 1;
      ++v13;
      goto LABEL_23;
    }

    if (v15 != 123)
    {
      v19 = 0;
      while (v15 && v15 != 10 && v15 != 123)
      {
        LOBYTE(v15) = v13[++v19];
      }

      *(v12 + 8) = 43;
      *(v12 + 24) = v13;
      *(v12 + 64) = v19;
      v13 += v19;
      *(v12 + 48) = v13;
      goto LABEL_23;
    }

    v16 = v13[1];
    *(v12 + 16) = v13 + 1;
    if (v16 == 123)
    {
      *(v12 + 8) = 123;
      for (i = 2; ; ++i)
      {
        if (v13[i] == 125)
        {
          v18 = &v13[i];
          if (v13[i + 1] == 125)
          {
            *(v12 + 56) = i;
            if (*v18 == 125)
            {
              v18 = &v13[2 * (v18[1] == 125) + i];
            }

            *(v12 + 48) = v18;
            v13 = v18;
            goto LABEL_23;
          }
        }

        else if (!v13[i])
        {
          xo_printable(a4);
          v37 = "missing closing '}}': '%s'";
          goto LABEL_81;
        }
      }
    }

    v21 = xo_parse_roles(a1, a4, v13 + 1, v12);
    if (!v21)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(v12 + 88))
    {
      v10 = 1;
    }

    if (*v21 != 58)
    {
      xo_printable(a4);
      v37 = "missing content (':'): '%s'";
      goto LABEL_81;
    }

    for (j = 1; ; ++j)
    {
      v23 = v21[j];
      if (v23 <= 0x5B)
      {
        break;
      }

      if (v23 == 92)
      {
        if (!v21[++j])
        {
LABEL_80:
          v37 = "backslash at the end of string";
          goto LABEL_81;
        }
      }

      else if (v23 == 125)
      {
        goto LABEL_43;
      }

LABEL_42:
      ;
    }

    if (v21[j] && v23 != 47)
    {
      goto LABEL_42;
    }

LABEL_43:
    v24 = &v21[j];
    v25 = j - 1;
    if (v25)
    {
      *(v12 + 64) = v25;
      *(v12 + 24) = v21 + 1;
      v23 = *v24;
    }

    if (v23 != 47)
    {
      v28 = 0;
      v26 = 0;
      goto LABEL_66;
    }

    v26 = ++v24;
    while (2)
    {
      v23 = *v24;
      if (v23 > 0x5B)
      {
        if (v23 == 92)
        {
          if (!*++v24)
          {
            goto LABEL_80;
          }
        }

        else if (v23 == 125)
        {
          break;
        }

        goto LABEL_55;
      }

      if (*v24 && v23 != 47)
      {
LABEL_55:
        ++v24;
        continue;
      }

      break;
    }

    v28 = (v24 - v26);
    if (v23 == 47)
    {
      v29 = 0;
      v30 = ++v24;
      while (*v24 && *v24 != 125)
      {
        ++v24;
        ++v29;
      }

      *(v12 + 40) = v30;
      *(v12 + 80) = v29;
      v23 = *v24;
    }

LABEL_66:
    if (v23 != 125)
    {
      xo_printable(a4);
      v37 = "missing closing '}': %s";
LABEL_81:
      xo_failure(a1, v37);
      return 0xFFFFFFFFLL;
    }

    v31 = &v24[-*(v12 + 16)];
    v13 = v24 + 1;
    *(v12 + 48) = v13;
    *(v12 + 56) = v31;
    if (*(v12 + 64))
    {
      v32 = 0;
    }

    else
    {
      v32 = v26 == 0;
    }

    if (v32)
    {
      if ((*(v12 + 2) & 0x20) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v26)
    {
      *(v12 + 32) = v26;
      *(v12 + 72) = v28;
      goto LABEL_23;
    }

    v33 = *(v12 + 8) - 67;
    v34 = v33 > 0x1A;
    v35 = (1 << v33) & 0x5000011;
    if (v34 || v35 == 0)
    {
      *(v12 + 32) = "%s";
      *(v12 + 72) = 2;
    }

LABEL_23:
    v11 = v14 + 1;
    v12 += 96;
    if (*v13)
    {
      v20 = v11 >= a3;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      continue;
    }

    break;
  }

  if (v10)
  {
    v38 = 0;
    v39 = (a2 + 88);
    v40 = -1;
    while (1)
    {
      v41 = *v39;
      if (*v39)
      {
        if (v41 > v11)
        {
          v37 = "field number exceeds number of fields: '%s'";
          goto LABEL_81;
        }
      }

      else
      {
        v41 = v40 + 2;
        *v39 = v40 + 2;
      }

      if (v41 <= 0x40)
      {
        v42 = 1 << (v41 - 1);
        if ((v42 & v38) != 0)
        {
          v37 = "field number %u reused: '%s'";
          goto LABEL_81;
        }

        v38 |= v42;
      }

      result = 0;
      ++v40;
      v39 += 24;
      if (v14 == v40)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t xo_emit_hv(unint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v4 = xo_default_handle();
  }

  *(v4 + 200) = a3;
  result = xo_do_emit(v4, 0, a2);
  *(v4 + 200) = 0;
  return result;
}

uint64_t xo_do_emit(unint64_t a1, int a2, unsigned __int8 *a3)
{
  v29[1] = *MEMORY[0x29EDCA608];
  *(a1 + 376) = 0;
  *(a1 + 440) = *__error();
  if (!a3)
  {
    result = 0;
    goto LABEL_28;
  }

  v7 = ((a2 | (*a1 >> 30)) & 1) == 0 || *a1 < 0;
  v8 = xo_retain_count();
  v10 = v8;
  if (!v7 && *v8)
  {
    v29[0] = a3;
    v8 = xo_retain(&xo_retain, v9);
    v12 = &v8[2 * v11];
    do
    {
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    while (v12[2] != a3);
    v13 = v12[4];
    v14 = *(v12 + 6);
    ++v12[1];
    if (v13)
    {
LABEL_27:
      result = xo_do_emit_fields(a1, v13, v14);
      goto LABEL_28;
    }
  }

LABEL_14:
  v15 = 1;
  for (i = a3; ; ++i)
  {
    v17 = *i;
    if (v17 != 10 && v17 != 123)
    {
      break;
    }

    ++v15;
LABEL_20:
    ;
  }

  if (*i)
  {
    goto LABEL_20;
  }

  v14 = (2 * v15) | 1;
  MEMORY[0x2A1C7C4A8](v8);
  v13 = v29 - v14 * v18;
  bzero(v13, 96 * v14);
  bzero(v13, 96 * v14);
  if (!xo_parse_fields(a1, v13, v14, a3))
  {
    if (!v7)
    {
      v29[0] = a3;
      v21 = xo_realloc(0, (96 * (2 * v15 + 2)) | 0x28);
      if (v21)
      {
        v22 = v21;
        v23 = 9 * ((a3 >> 4) & 0xFFFFFF ^ (((a3 >> 4) & 0xFFFFFF) >> 16) ^ 0x3D);
        v24 = ((982451653 * (v23 ^ (v23 >> 4))) ^ ((982451653 * (v23 ^ (v23 >> 4))) >> 15)) & 0x3F;
        v25 = v21 + 40;
        memcpy((v21 + 40), v13, 96 * v14);
        *v22 = 0u;
        *(v22 + 16) = 0u;
        *(v22 + 16) = a3;
        *(v22 + 32) = v25;
        *(v22 + 24) = v14;
        v27 = xo_retain(&xo_retain, v26);
        *v22 = *(v27 + 8 * v24);
        *(v27 + 8 * v24) = v22;
        ++*v10;
      }
    }

    goto LABEL_27;
  }

  result = 0xFFFFFFFFLL;
LABEL_28:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xo_emit_h(unint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v10 = xo_default_handle();
  }

  *(v10 + 200) = &a9;
  result = xo_do_emit(v10, 0, a2);
  *(v10 + 200) = 0;
  return result;
}

uint64_t xo_emit(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!*xo_default_inited())
  {
    xo_default_init();
  }

  v10 = xo_default_handle();
  *(v10 + 200) = &a9;
  result = xo_do_emit(v10, 0, a1);
  *(v10 + 200) = 0;
  return result;
}

uint64_t xo_emit_hvf(unint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v6 = xo_default_handle();
  }

  *(v6 + 200) = a4;
  result = xo_do_emit(v6, a2, a3);
  *(v6 + 200) = 0;
  return result;
}

uint64_t xo_emit_hf(unint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v11 = xo_default_handle();
  }

  *(v11 + 200) = &a9;
  result = xo_do_emit(v11, a2, a3);
  *(v11 + 200) = 0;
  return result;
}

uint64_t xo_emit_f(int a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!*xo_default_inited())
  {
    xo_default_init();
  }

  v11 = xo_default_handle();
  *(v11 + 200) = &a9;
  result = xo_do_emit(v11, a1, a2);
  *(v11 + 200) = 0;
  return result;
}

uint64_t xo_emit_field_hv(unint64_t a1, unsigned __int8 *a2, const char *a3, const char *a4, const char *a5, uint64_t a6)
{
  v10 = a1;
  v22 = a6;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v10 = xo_default_handle();
  }

  v20 = 0u;
  v21 = 0u;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = "V";
  }

  v18 = 0uLL;
  v19 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  if (!xo_parse_roles(v10, v11, v11, &v16))
  {
    return -1;
  }

  *&v17 = a4;
  *(&v17 + 1) = a3;
  *&v18 = a4;
  *(&v18 + 1) = a5;
  if (a3)
  {
    v12 = strlen(a3);
  }

  else
  {
    v12 = 0;
  }

  *&v20 = v12;
  if (a4)
  {
    v14 = strlen(a4);
  }

  else
  {
    v14 = 0;
  }

  *(&v20 + 1) = v14;
  if (a5)
  {
    v15 = strlen(a5);
  }

  else
  {
    v15 = 0;
  }

  *&v21 = v15;
  if (a3 && !a4 && ((DWORD2(v16) - 67) > 0x1A || ((1 << (BYTE8(v16) - 67)) & 0x5000011) == 0))
  {
    *&v18 = "%s";
    *(&v20 + 1) = 2;
  }

  *(v10 + 200) = v22;
  return xo_do_emit_fields(v10, &v16, 1);
}

unsigned __int8 *xo_parse_roles(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v4 = a3;
  if (a3)
  {
    v21 = a4;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (2)
    {
      v10 = *v4;
      switch(*v4)
      {
        case ',':
          v12 = 0;
          v13 = (v4 + 1);
          while (1)
          {
            v14 = v4[1];
            v15 = v14 > 0x3A || ((1 << v14) & 0x400900000000001) == 0;
            if (!v15 || v14 == 125)
            {
              break;
            }

            ++v4;
            ++v12;
          }

          if (v12 >= 1)
          {
            v16 = xo_name_lookup(xo_role_names, v13, v12);
            if (v16)
            {
              v9 = v16;
            }

            else
            {
              v17 = xo_name_lookup(xo_modifier_names, v13, v12);
              if (v17)
              {
                v8 |= v17;
              }

              else
              {
                xo_failure(a1, "unknown keyword ignored: '%.*s'");
              }
            }
          }

          goto LABEL_13;
        case '-':
        case '.':
        case ';':
        case '<':
        case '=':
        case '>':
        case '?':
        case '@':
        case 'A':
        case 'B':
        case 'F':
        case 'H':
        case 'I':
        case 'J':
        case 'K':
        case 'M':
        case 'O':
        case 'Q':
        case 'R':
        case 'S':
        case 'X':
        case 'Y':
        case 'Z':
        case '^':
        case '_':
        case 'b':
        case 'f':
        case 'i':
        case 'j':
        case 'm':
        case 'o':
        case 'r':
        case 's':
        case 'u':
        case 'v':
        case 'x':
        case 'y':
        case 'z':
        case '{':
        case '|':
          goto LABEL_51;
        case '/':
        case ':':
        case '}':
          goto LABEL_49;
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          v7 = v10 + 10 * v7 - 48;
          goto LABEL_7;
        case 'C':
        case 'D':
        case 'E':
        case 'G':
        case 'L':
        case 'N':
        case 'P':
        case 'T':
        case 'U':
        case 'V':
        case 'W':
        case '[':
        case ']':
          if (!v9)
          {
            goto LABEL_8;
          }

          xo_printable(a2);
          v18 = "field descriptor uses multiple types: '%s'";
          goto LABEL_43;
        case '\\':
          if (*++v4)
          {
            goto LABEL_13;
          }

          v18 = "backslash at the end of string";
          goto LABEL_43;
        case 'a':
          v8 |= 0x200000uLL;
          goto LABEL_7;
        case 'c':
          v8 |= 1uLL;
          goto LABEL_7;
        case 'd':
          v8 |= 0x40uLL;
          goto LABEL_7;
        case 'e':
          v8 |= 8uLL;
          goto LABEL_7;
        case 'g':
          v8 |= 0x80000uLL;
          goto LABEL_7;
        case 'h':
          v8 |= 0x8000uLL;
          goto LABEL_7;
        case 'k':
          v8 |= 0x80uLL;
          goto LABEL_7;
        case 'l':
          v8 |= 0x2000uLL;
          goto LABEL_7;
        case 'n':
          v8 |= 0x20uLL;
          goto LABEL_7;
        case 'p':
          v8 |= 0x100000uLL;
          goto LABEL_7;
        case 'q':
          v8 |= 0x10uLL;
          goto LABEL_7;
        case 't':
          v8 |= 0x1000uLL;
          goto LABEL_7;
        case 'w':
          v8 |= 4uLL;
LABEL_7:
          v10 = v9;
LABEL_8:
          if (v10 == 85 || v10 == 78) && (v8)
          {
            xo_printable(a2);
            xo_failure(a1, "colon modifier on 'N' or 'U' field ignored: '%s'");
            v8 &= ~1uLL;
          }

          v9 = v10;
LABEL_13:
          ++v4;
          continue;
        default:
          if (*v4)
          {
LABEL_51:
            xo_printable(a2);
            v18 = "field descriptor uses unknown modifier: '%s'";
LABEL_43:
            xo_failure(a1, v18);
            return 0;
          }

LABEL_49:
          v19 = v7;
          a4 = v21;
          *v21 = v8;
          if (v9)
          {
            goto LABEL_46;
          }

          break;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
    *a4 = 0;
  }

  LODWORD(v9) = 86;
LABEL_46:
  *(a4 + 2) = v9;
  *(a4 + 22) = v19;
  return v4;
}

uint64_t xo_do_emit_fields(unint64_t a1, uint64_t a2, int a3)
{
  v135 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v6 = *(a1 + 8);
  if ((v6 & 1) != 0 || *(a1 + 16) == 5)
  {
    v127 = 0;
  }

  else
  {
    v127 = (v5 >> 23) & 1;
  }

  v7 = 0x2A1B69000uLL;
  if (!a3)
  {
    goto LABEL_245;
  }

  v123 = *a1;
  v8 = 0;
  v120 = a1 + 393;
  v121 = a1 + 384;
  v9 = MEMORY[0x29EDCA600];
  do
  {
    v10 = *(a2 + 8);
    if (!v10)
    {
      break;
    }

    v11 = *a2;
    if ((*a2 & 0x200000) != 0)
    {
      v14 = *(a1 + 200);
      *(a1 + 200) = v14 + 1;
      v12 = *v14;
      if (*v14)
      {
        v13 = strlen(*v14);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v12 = *(a2 + 24);
      v13 = *(a2 + 64);
    }

    if (v10 <= 77)
    {
      if (v10 == 10)
      {
        xo_line_close(a1);
        if (!v127 || (xo_flush_h(a1) & 0x8000000000000000) == 0)
        {
          goto LABEL_243;
        }

        goto LABEL_256;
      }

      if (v10 == 43)
      {
        v15 = *(a2 + 24);
        v16 = *(a2 + 64);
        goto LABEL_21;
      }
    }

    else if (v10 == 78 || v10 == 85)
    {
      if ((v11 & 4) != 0)
      {
        xo_format_content(a1, "padding", 0, " ", 1, 0, 0, v11);
        v11 &= ~4uLL;
      }
    }

    else if (v10 == 123)
    {
      v15 = *(a2 + 16);
      v16 = *(a2 + 56);
LABEL_21:
      xo_format_text(a1, v15, v16);
      goto LABEL_243;
    }

    if (v10 > 85)
    {
      switch(v10)
      {
        case ']':
          xo_anchor_stop(a1, a2, v12, v13);
          goto LABEL_239;
        case '[':
          v21 = *(a1 + 8);
          if ((v21 & 8) != 0)
          {
            xo_failure(a1, "the anchor already recording is discarded");
            v21 = *(a1 + 8);
          }

          *(a1 + 8) = v21 | 8;
          *(a1 + 344) = *(a1 + 80) - *(a1 + 72);
          *(a1 + 352) = 0;
          *(a1 + 360) = xo_find_width(a1, a2, v12, v13);
          goto LABEL_239;
        case 'V':
          xo_format_value(a1, v12, v13, 0, 0, *(a2 + 32), *(a2 + 72), *(a2 + 40), *(a2 + 80), v11);
          goto LABEL_239;
      }

      goto LABEL_53;
    }

    if (v10 != 67)
    {
      if (v10 == 71)
      {
        v17 = *(a2 + 32);
        v18 = *(a2 + 72);
        v19 = *(a1 + 448);
        if (v19)
        {
          (*(v7 + 192))(v19);
          *(a1 + 448) = 0;
        }

        if (v13 | v18)
        {
          if (v13 || !v18)
          {
            *(a1 + 448) = xo_strndup(v12, v13);
          }

          else
          {
            v20 = *(a1 + 80) - *(a1 + 72);
            xo_do_format_field(a1, 0, v17, v18, 0);
            *(a1 + 448) = xo_strndup((v20 + *(a1 + 72)), *(a1 + 80) - (v20 + *(a1 + 72)));
            if ((v20 & 0x8000000000000000) == 0)
            {
              *(a1 + 80) = *(a1 + 72) + v20;
            }
          }
        }

        goto LABEL_243;
      }

LABEL_53:
      if (!v13 && !*(a2 + 32))
      {
        goto LABEL_239;
      }

      if (v10 > 79)
      {
        if (v10 > 84)
        {
          if (v10 == 85)
          {
            xo_format_units(a1, a2, v12, v13);
            goto LABEL_239;
          }

          if (v10 == 87)
          {
            v28 = "warning";
            goto LABEL_150;
          }
        }

        else
        {
          if (v10 == 80)
          {
            v28 = "padding";
            goto LABEL_150;
          }

          if (v10 == 84)
          {
            xo_format_title(a1, a2, v12, v13);
            goto LABEL_239;
          }
        }
      }

      else if (v10 > 75)
      {
        if (v10 == 76)
        {
          v28 = "label";
          goto LABEL_150;
        }

        if (v10 == 78)
        {
          v28 = "note";
          goto LABEL_150;
        }
      }

      else
      {
        v28 = "decoration";
        if (v10 == 68)
        {
LABEL_150:
          v61 = "__warning";
          if (v10 != 87)
          {
            v61 = 0;
          }

          if (v10 == 69)
          {
            v62 = "__error";
          }

          else
          {
            v62 = v61;
          }

          xo_format_content(a1, v28, v62, v12, v13, *(a2 + 32), *(a2 + 72), v11);
          goto LABEL_239;
        }

        if (v10 == 69)
        {
          v28 = "error";
          goto LABEL_150;
        }
      }

      xo_failure(a1, "unknown field type: '%c'");
      goto LABEL_239;
    }

    v22 = *(a2 + 32);
    v23 = *(a2 + 72);
    __s = 0;
    v131 = 0;
    v132 = 0;
    if (v13)
    {
      v24 = *(a1 + 16);
      v7 = 0x2A1B69000;
      if (v24 <= 5 && ((1 << v24) & 0x36) != 0)
      {
        goto LABEL_239;
      }

      v122 = v11;
      v132 = 0x2000;
      v25 = xo_realloc(0, 0x2000);
      __s = v25;
      v131 = v25;
      if (v12)
      {
        v26 = v25;
        if (v13 < 0x2000)
        {
          goto LABEL_52;
        }

        v27 = xo_realloc(v25, (v13 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
        if (v27)
        {
          v26 = v27;
          __s = v27;
          v132 = (v13 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
LABEL_52:
          memcpy(v26, v12, v13);
          v131 = &v26[v13];
        }
      }
    }

    else
    {
      v122 = v11;
      v132 = 0x2000;
      v29 = xo_realloc(0, 0x2000);
      __s = v29;
      v131 = v29;
      if (v23)
      {
        xo_do_format_field(a1, &__s, v22, v23, 0);
      }

      else
      {
        strcpy(v29, "reset");
        v131 = v29 + 6;
      }
    }

    v7 = 0x2A1B69000;
    if ((*(a1 + 3) & 4) == 0 || *(a1 + 16) != 3 && *(a1 + 16))
    {
      goto LABEL_237;
    }

    v30 = v131;
    if (v131 + 1 >= &__s[v132])
    {
      v31 = (v131 + 1 - __s + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v32 = xo_realloc(__s, v31);
      if (!v32)
      {
        goto LABEL_81;
      }

      v30 = &v32[v131 - __s];
      __s = v32;
      v131 = v30;
      v132 = v31;
    }

    *v30 = 0;
    ++v131;
LABEL_81:
    v128 = *(a1 + 402);
    v33 = *(a1 + 403);
    v125 = *(a1 + 404);
    v34 = __s;
    v35 = strlen(__s);
    if (__s)
    {
      v36 = &__s[v35 - 1];
      if (v36 > __s)
      {
        while (1)
        {
          v37 = v34 - 1;
          do
          {
            v38 = v37;
            v39 = v37[1];
            if ((v39 & 0x80000000) != 0)
            {
              v40 = __maskrune(v39, 0x4000uLL);
            }

            else
            {
              v40 = *(v9 + 4 * v39 + 60) & 0x4000;
            }

            ++v37;
          }

          while (v40);
          v41 = strchr(v38 + 1, 44);
          v34 = v41;
          if (v41)
          {
            *v41 = 0;
            v34 = v41 + 1;
          }

          for (i = &v38[strlen(v38 + 1)]; ; --i)
          {
            v43 = *i;
            v44 = (v43 & 0x80000000) != 0 ? __maskrune(v43, 0x4000uLL) : *(v9 + 4 * v43 + 60) & 0x4000;
            if (i <= v37 || !v44)
            {
              break;
            }

            *i = 0;
          }

          v45 = *v37;
          if (v45 == 98)
          {
            break;
          }

          if (v45 == 102)
          {
            if (v37[1] == 103 && v37[2] == 45)
            {
              v47 = 0;
              while (strcmp(xo_color_names[v47], v37 + 3))
              {
                if (++v47 == 9)
                {
                  goto LABEL_121;
                }
              }

              v33 = v47;
              goto LABEL_137;
            }

            goto LABEL_118;
          }

          if (v45 != 110 || v37[1] != 111 || v37[2] != 45)
          {
            goto LABEL_118;
          }

          v46 = 0;
          while (strcmp(xo_effect_names[v46], v37 + 3))
          {
            if (++v46 == 5)
            {
              goto LABEL_121;
            }
          }

          v128 = (v128 & ~(1 << v46));
LABEL_137:
          if (!v34 || v34 >= v36)
          {
            goto LABEL_143;
          }
        }

        if (v37[1] == 103 && v37[2] == 45)
        {
          for (j = 0; j != 9; ++j)
          {
            if (!strcmp(xo_color_names[j], v37 + 3))
            {
              v125 = j;
              goto LABEL_137;
            }
          }

LABEL_121:
          if ((*a1 & 0x10) != 0)
          {
            xo_failure(a1, "unknown color/effect string detected: '%s'");
          }

          goto LABEL_137;
        }

LABEL_118:
        v49 = 0;
        while (strcmp(xo_effect_names[v49], v37))
        {
          if (++v49 == 5)
          {
            goto LABEL_121;
          }
        }

        v50 = 1 << v49;
        v51 = v128 | (1 << v49);
        v52 = v51 & 0xE1;
        if (1 << v49 == 1)
        {
          v51 = 1;
        }

        if (v50 == 1)
        {
          v53 = 0;
        }

        else
        {
          v53 = v33;
        }

        v54 = v125;
        if (v50 == 1)
        {
          v55 = 0;
        }

        else
        {
          v55 = v125;
        }

        v56 = v50 == 2;
        if (v50 == 2)
        {
          v57 = v52;
        }

        else
        {
          v57 = v51;
        }

        v128 = v57;
        if (!v56)
        {
          v33 = v53;
          v54 = v55;
        }

        v125 = v54;
        goto LABEL_137;
      }
    }

LABEL_143:
    if ((*a1 & 0x100000000) != 0)
    {
      v58 = v33;
      v59 = v125;
      v60 = v128;
      if (v33 <= 8)
      {
        v58 = *(v121 + v33);
      }

      v7 = 0x2A1B69000;
      if ((*a1 & 0x100000000) != 0 && v125 <= 8)
      {
        v59 = *(v120 + v125);
      }
    }

    else
    {
      v58 = v33;
      v7 = 0x2A1B69000;
      v59 = v125;
      v60 = v128;
    }

    v126 = v59;
    if (!*(a1 + 16))
    {
      __src = 27;
      if ((*(a1 + 402) & ~v60) != 0)
      {
        v128 = v60 | 1;
        *(a1 + 402) = 0;
      }

      v77 = 0;
      v78 = 1;
      v79 = &v134;
      v80 = 1;
      do
      {
        if ((v80 & (*(a1 + 402) ^ v128)) != 0)
        {
          v78 += snprintf(v79, 1024 - v78, ";%s", xo_effect_on_codes[v77]);
          if (v78 > 1023)
          {
            goto LABEL_201;
          }

          if (v80 == 1)
          {
            *(a1 + 402) = 0;
            *(a1 + 404) = 0;
          }
        }

        v80 *= 2;
        v79 = &__src + v78;
        ++v77;
      }

      while (v77 != 5);
      if (v58 != *(a1 + 403))
      {
        v81 = v58 - 1;
        if (!v58)
        {
          v81 = 9;
        }

        v78 += snprintf(v79, 1024 - v78, ";3%u", v81);
      }

      if (v126 != *(a1 + 404))
      {
        v82 = v126 - 1;
        if (!v126)
        {
          v82 = 9;
        }

        v78 += snprintf(&__src + v78, 1024 - v78, ";4%u", v82);
      }

      if (v78 != 1 && v78 <= 1020)
      {
        v134 = 91;
        *(&__src + v78) = 109;
        if (&__src + v78 + 1 != &__src)
        {
          v83 = v78 + 1;
          v85 = *(a1 + 72);
          v84 = *(a1 + 80);
          if (v84 + v83 < v85 + *(a1 + 88))
          {
            goto LABEL_200;
          }

          v86 = (v84 + v83 - v85 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
          v87 = xo_realloc(*(a1 + 72), v86);
          if (v87)
          {
            v88 = v87;
            v84 = (v87 + *(a1 + 80) - *(a1 + 72));
            *(a1 + 72) = v88;
            *(a1 + 80) = v84;
            *(a1 + 88) = v86;
LABEL_200:
            memcpy(v84, &__src, v83);
            *(a1 + 80) += v83;
          }
        }
      }

LABEL_201:
      LOBYTE(v63) = v128 & 0xFE;
      LOBYTE(v59) = v126;
      goto LABEL_236;
    }

    v63 = v60 & 0xFE;
    if (*(a1 + 402) == v63 && *(a1 + 403) == v58 && *(a1 + 404) == v59)
    {
      goto LABEL_236;
    }

    v119 = v58;
    v64 = 0;
    *(a1 + 416) = *(a1 + 408);
    v65 = 1;
    v124 = v60 & 0xFE;
    do
    {
      if ((v65 & v63) == 0)
      {
        goto LABEL_175;
      }

      v66 = *(a1 + 408);
      v67 = *(a1 + 416);
      if ((v67 + 8) >= v66 + *(a1 + 424))
      {
        v68 = &v67[-v66 + 8199] & 0xFFFFFFFFFFFFE000;
        v69 = xo_realloc(v66, v68);
        v70 = *(a1 + 416);
        if (!v69)
        {
          goto LABEL_171;
        }

        v67 = &v70[v69 - *(a1 + 408)];
        *(a1 + 408) = v69;
        *(a1 + 416) = v67;
        *(a1 + 424) = v68;
      }

      *v67 = 0x2D74636566666520;
      v70 = (*(a1 + 416) + 8);
      *(a1 + 416) = v70;
LABEL_171:
      v71 = xo_effect_names[v64];
      v72 = strlen(v71);
      v73 = *(a1 + 408);
      if (&v70[v72] >= v73 + *(a1 + 424))
      {
        v74 = &v70[v72 - v73 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v75 = xo_realloc(v73, v74);
        v63 = v124;
        if (!v75)
        {
          goto LABEL_175;
        }

        v70 = (v75 + *(a1 + 416) - *(a1 + 408));
        *(a1 + 408) = v75;
        *(a1 + 416) = v70;
        *(a1 + 424) = v74;
      }

      memcpy(v70, v71, v72);
      *(a1 + 416) += v72;
      v63 = v124;
LABEL_175:
      v65 *= 2;
      ++v64;
    }

    while (v64 != 5);
    LOBYTE(v58) = v119;
    if (v119)
    {
      v76 = xo_color_names[v119];
    }

    else
    {
      v76 = 0;
    }

    v7 = 0x2A1B69000;
    if (v126)
    {
      v89 = xo_color_names[v126];
    }

    else
    {
      v89 = 0;
    }

    v90 = "inverse";
    if (v89)
    {
      v91 = v89;
    }

    else
    {
      v91 = "inverse";
    }

    if (v76)
    {
      v90 = v76;
    }

    if ((v128 & 0x10) != 0)
    {
      v92 = v91;
    }

    else
    {
      v92 = v76;
    }

    if ((v128 & 0x10) != 0)
    {
      v93 = v90;
    }

    else
    {
      v93 = v89;
    }

    if (v92)
    {
      v94 = *(a1 + 408);
      v95 = *(a1 + 416);
      if ((v95 + 10) < v94 + *(a1 + 424))
      {
        goto LABEL_221;
      }

      v96 = &v95[-v94 + 8201] & 0xFFFFFFFFFFFFE000;
      v97 = xo_realloc(v94, v96);
      v98 = *(a1 + 416);
      if (v97)
      {
        v95 = &v98[v97 - *(a1 + 408)];
        *(a1 + 408) = v97;
        *(a1 + 416) = v95;
        *(a1 + 424) = v96;
LABEL_221:
        *(v95 + 4) = 11623;
        *v95 = *" color-fg-";
        v98 = (*(a1 + 416) + 10);
        *(a1 + 416) = v98;
      }

      v99 = strlen(v92);
      v100 = *(a1 + 408);
      if (&v98[v99] < v100 + *(a1 + 424))
      {
LABEL_225:
        memcpy(v98, v92, v99);
        *(a1 + 416) += v99;
        v7 = 0x2A1B69000uLL;
      }

      else
      {
        v101 = &v98[v99 - v100 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v102 = xo_realloc(v100, v101);
        v7 = 0x2A1B69000;
        if (v102)
        {
          v98 = (v102 + *(a1 + 416) - *(a1 + 408));
          *(a1 + 408) = v102;
          *(a1 + 416) = v98;
          *(a1 + 424) = v101;
          goto LABEL_225;
        }
      }
    }

    if (v93)
    {
      v103 = *(a1 + 408);
      v104 = *(a1 + 416);
      if ((v104 + 10) < v103 + *(a1 + 424))
      {
        goto LABEL_230;
      }

      v105 = &v104[-v103 + 8201] & 0xFFFFFFFFFFFFE000;
      v106 = xo_realloc(v103, v105);
      v107 = *(a1 + 416);
      if (v106)
      {
        v104 = &v107[v106 - *(a1 + 408)];
        *(a1 + 408) = v106;
        *(a1 + 416) = v104;
        *(a1 + 424) = v105;
LABEL_230:
        *(v104 + 4) = 11623;
        *v104 = *" color-bg-";
        v107 = (*(a1 + 416) + 10);
        *(a1 + 416) = v107;
      }

      v108 = strlen(v93);
      v109 = *(a1 + 408);
      if (&v107[v108] < v109 + *(a1 + 424))
      {
LABEL_234:
        memcpy(v107, v93, v108);
        *(a1 + 416) += v108;
      }

      else
      {
        v110 = &v107[v108 - v109 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v111 = xo_realloc(v109, v110);
        if (v111)
        {
          v107 = (v111 + *(a1 + 416) - *(a1 + 408));
          *(a1 + 408) = v111;
          *(a1 + 416) = v107;
          *(a1 + 424) = v110;
          goto LABEL_234;
        }
      }
    }

    LOBYTE(v63) = v124;
    LOBYTE(v59) = v126;
LABEL_236:
    *(a1 + 402) = v63;
    *(a1 + 403) = v58;
    *(a1 + 404) = v59;
LABEL_237:
    LOBYTE(v11) = v122;
    if (__s)
    {
      (*(v7 + 192))(__s);
    }

LABEL_239:
    if (v11)
    {
      xo_format_content(a1, "decoration", 0, ":", 1, 0, 0, 0);
    }

    if ((v11 & 4) != 0)
    {
      xo_format_content(a1, "padding", 0, " ", 1, 0, 0, 0);
    }

LABEL_243:
    a2 += 96;
    ++v8;
  }

  while (v8 != a3);
  v6 = *(a1 + 8);
  v5 = v123;
LABEL_245:
  *(a1 + 8) = v6 & 0xFFFFFFFFFFFFFFFELL;
  v112 = (v5 >> 22) & 1;
  if ((*(a1 + 80) - *(a1 + 72)) > 7680)
  {
    v112 = 1;
  }

  v113 = v6 & 8;
  if (v112 == 1 && v113 == 0)
  {
    v115 = xo_flush_h(a1) >> 63;
  }

  else
  {
    LOBYTE(v115) = 0;
  }

  v116 = *(a1 + 448);
  if (v116)
  {
    (*(v7 + 192))(v116);
    *(a1 + 448) = 0;
  }

  if (v115)
  {
LABEL_256:
    result = -1;
  }

  else
  {
    result = *(a1 + 376);
  }

  v118 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xo_attr_hv(uint64_t a1, char *__s, char *a3, va_list a4)
{
  v7 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v7 = xo_default_handle();
  }

  v8 = strlen(__s);
  v9 = v8;
  v10 = *(v7 + 16);
  if (v10 != 5)
  {
    if (v10 != 1)
    {
      return 0;
    }

    v11 = *(v7 + 120);
    v12 = *(v7 + 128);
    v13 = &v12[v9 + 5];
    if (v13 >= v11 + *(v7 + 136))
    {
      v14 = &v13[-v11 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
      v15 = xo_realloc(v11, v14);
      if (!v15)
      {
        return -1;
      }

      v12 = (v15 + *(v7 + 128) - *(v7 + 120));
      *(v7 + 120) = v15;
      *(v7 + 136) = v14;
    }

    *(v7 + 128) = v12 + 1;
    *v12 = 32;
    memcpy(*(v7 + 128), __s, v9);
    v16 = (*(v7 + 128) + v9);
    *(v7 + 128) = v16 + 1;
    *v16 = 61;
    v17 = *(v7 + 128);
    *(v7 + 128) = v17 + 1;
    *v17 = 34;
    v18 = xo_vsnprintf(v7, v7 + 120, a3, a4);
    if (v18 < 0)
    {
      v19 = *(v7 + 128);
    }

    else
    {
      v18 = xo_escape_xml((v7 + 120), v18, 1u);
      v19 = (*(v7 + 128) + v18);
      *(v7 + 128) = v19;
    }

    v34 = *(v7 + 120);
    if ((v19 + 2) < v34 + *(v7 + 136))
    {
      goto LABEL_30;
    }

    v35 = &v19[-v34 + 8193] & 0xFFFFFFFFFFFFE000;
    v36 = xo_realloc(v34, v35);
    if (v36)
    {
      v19 = (v36 + *(v7 + 128) - *(v7 + 120));
      *(v7 + 120) = v36;
      *(v7 + 136) = v35;
LABEL_30:
      *(v7 + 128) = v19 + 1;
      *v19 = 34;
      **(v7 + 128) = 0;
      return v18 + v9 + 5;
    }

    return -1;
  }

  v20 = *(v7 + 120);
  v21 = *(v7 + 128);
  if (__s && v8)
  {
    v22 = v21 + v8;
    v23 = *(v7 + 128);
    if (v21 + v9 >= v20 + *(v7 + 136))
    {
      v24 = (v22 - v20 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v25 = xo_realloc(*(v7 + 120), v24);
      v26 = *(v7 + 120);
      v27 = *(v7 + 128);
      if (!v25)
      {
        goto LABEL_20;
      }

      v23 = &v27[v25 - v26];
      *(v7 + 120) = v25;
      *(v7 + 128) = v23;
      *(v7 + 136) = v24;
    }

    memcpy(v23, __s, v9);
    v26 = *(v7 + 120);
    v27 = (*(v7 + 128) + v9);
    *(v7 + 128) = v27;
  }

  else
  {
    v26 = *(v7 + 120);
    v27 = *(v7 + 128);
  }

LABEL_20:
  if ((v27 + 1) >= v26 + *(v7 + 136))
  {
    v29 = &v27[-v26 + 0x2000] & 0xFFFFFFFFFFFFE000;
    v30 = xo_realloc(v26, v29);
    v31 = *(v7 + 128);
    if (!v30)
    {
      goto LABEL_24;
    }

    v27 = (v30 + v31 - *(v7 + 120));
    *(v7 + 120) = v30;
    *(v7 + 128) = v27;
    *(v7 + 136) = v29;
  }

  *v27 = 0;
  v31 = *(v7 + 128) + 1;
  *(v7 + 128) = v31;
LABEL_24:
  v32 = *(v7 + 120);
  result = xo_vsnprintf(v7, v7 + 120, a3, a4);
  if ((result & 0x8000000000000000) == 0)
  {
    v33 = (*(v7 + 128) + result);
    *(v7 + 128) = v33;
    *v33 = 0;
    return xo_encoder_handle(v7, 15, *(v7 + 120) + v21 - v20, *(v7 + 120) + v31 - v32, 0);
  }

  return result;
}

uint64_t xo_vsnprintf(uint64_t a1, uint64_t a2, char *__format, va_list a4)
{
  v8 = a2 + 8;
  v7 = *(a2 + 8);
  v9 = *a2 - v7 + *(v8 + 8);
  v10 = *(a1 + 48);
  if (v10)
  {
    result = v10(a1);
  }

  else
  {
    result = vsnprintf(v7, v9, __format, a4);
  }

  if (result >= v9)
  {
    v12 = *(a2 + 8) + result;
    if (v12 >= *a2 + *(a2 + 16))
    {
      v13 = (v12 - *a2 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v14 = xo_realloc(*a2, v13);
      if (!v14)
      {
        return -1;
      }

      v15 = v14 + *(a2 + 8) - *a2;
      *a2 = v14;
      *(a2 + 8) = v15;
      *(a2 + 16) = v13;
    }

    v16 = *(a2 + 16);
    v17 = *a2 - *(a2 + 8);
    v18 = *(a1 + 48);
    if (v18)
    {
      return v18(a1, *(a2 + 8), v17 + v16, __format);
    }

    else
    {
      return vsnprintf(*(a2 + 8), v17 + v16, __format, a4);
    }
  }

  return result;
}

uint64_t xo_set_depth(uint64_t a1, int a2)
{
  v3 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v3 = xo_default_handle();
  }

  result = xo_depth_check(v3, a2);
  if (!result)
  {
    v5 = *(v3 + 176) + a2;
    *(v3 + 176) = v5;
    *(v3 + 18) += a2;
    if (*(v3 + 16) == 2 && (*(v3 + 2) & 1) == 0 && v5 >= 1)
    {
      *(v3 + 8) |= 4uLL;
    }
  }

  return result;
}

uint64_t xo_depth_check(uint64_t a1, int a2)
{
  if (*(a1 + 180) > a2)
  {
    return 0;
  }

  v4 = a2 + 128;
  v5 = xo_realloc(*(a1 + 168), 24 * v4);
  if (v5)
  {
    v6 = v5;
    bzero((v5 + 24 * *(a1 + 180)), 24 * (v4 - *(a1 + 180)));
    result = 0;
    *(a1 + 180) = v4;
    *(a1 + 168) = v6;
  }

  else
  {
    xo_failure(a1, "xo_depth_check: out of memory (%d)");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t xo_transition(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v11 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v11 = xo_default_handle();
  }

  v12 = *(v11 + 168);
  v13 = *(v11 + 176);
  v14 = v13;
  v15 = v12 + 24 * v13;
  v16 = *(v15 + 4);
  if (v16 != 10 || v13 == 0)
  {
    v18 = *(v15 + 4);
  }

  else
  {
    v19 = 24 - 24 * v13;
    do
    {
      v18 = *(v15 - 20);
      v15 -= 24;
      v20 = v18 != 10 || v19 == 0;
      v19 += 24;
    }

    while (!v20);
  }

  v21 = 0;
  v22 = v8 | (v18 << 8);
  if (v22 <= 773)
  {
    if (v22 > 258)
    {
      if (v22 > 266)
      {
        if (v22 > 769)
        {
          if (v22 <= 771)
          {
            if (v22 != 770)
            {
              if (v16 != 10)
              {
                v23 = xo_do_close_list(v11, 0);
                goto LABEL_77;
              }

              goto LABEL_95;
            }

            goto LABEL_94;
          }

          if (v22 == 772)
          {
LABEL_94:
            if (v16 == 10)
            {
              goto LABEL_95;
            }

            goto LABEL_105;
          }

LABEL_114:
          v23 = xo_do_open_instance(v11, a2, a3);
          goto LABEL_118;
        }

        if (v22 == 267)
        {
          goto LABEL_129;
        }

        if (v22 != 268)
        {
          if (v22 != 769)
          {
            goto LABEL_102;
          }

LABEL_107:
          if (v16 == 10)
          {
            goto LABEL_95;
          }

          v23 = xo_do_close_leaf_list(v11, 0);
          if ((v23 & 0x80000000) == 0)
          {
            goto LABEL_109;
          }

LABEL_118:
          v21 = v23;
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_132;
          }

          goto LABEL_129;
        }

        goto LABEL_117;
      }

      if (v22 > 261)
      {
        if (v22 == 262)
        {
          goto LABEL_94;
        }

        if (v22 != 263)
        {
          if (v22 == 264)
          {
            goto LABEL_94;
          }

          goto LABEL_102;
        }

        goto LABEL_117;
      }

      if (v22 != 259)
      {
        if (v22 != 260)
        {
LABEL_111:
          v34 = v11;
LABEL_112:
          v23 = xo_do_open_list(v34, a2, a3, a4, a5, a6, a7, a8);
          goto LABEL_113;
        }

        goto LABEL_105;
      }

      goto LABEL_78;
    }

    if (v22 <= 6)
    {
      if (v22 > 3)
      {
        if (v22 != 4)
        {
          if (v22 != 5)
          {
            v26 = "xo_close_instance ignored when called from initial state ('%s')";
LABEL_127:
            xo_failure(v11, v26);
            goto LABEL_128;
          }

          goto LABEL_111;
        }

LABEL_105:
        v31 = v11;
        v32 = a3;
        v33 = v8;
LABEL_106:
        xo_do_close(v31, v32, v33);
LABEL_128:
        v21 = 0;
        goto LABEL_129;
      }

      switch(v22)
      {
        case 1:
          goto LABEL_109;
        case 2:
          v23 = xo_do_close_container(v11, a3);
          goto LABEL_118;
        case 3:
LABEL_78:
          v23 = xo_do_open_list(v11, a2, a3, a4, a5, a6, a7, a8);
          goto LABEL_118;
      }

LABEL_102:
      v36 = *(v15 + 4);
      v26 = "unknown transition: (%u -> %u)";
      goto LABEL_127;
    }

    if (v22 <= 11)
    {
      if (v22 != 7)
      {
        if (v22 == 8)
        {
          v26 = "xo_close_leaf_list ignored when called from initial state ('%s')";
          goto LABEL_127;
        }

        if (v22 == 11)
        {
          goto LABEL_129;
        }

        goto LABEL_102;
      }

      goto LABEL_117;
    }

    if (v22 == 12)
    {
LABEL_117:
      v23 = xo_do_open_leaf_list(v11, a2, a3, a4, a5, a6, a7, a8);
      goto LABEL_118;
    }

    if (v22 != 257)
    {
      if (v22 == 258)
      {
        goto LABEL_94;
      }

      goto LABEL_102;
    }

LABEL_109:
    v21 = xo_do_open_container(v11, a2, a3);
    if (v21 < 0)
    {
LABEL_132:
      *(v11 + 8) |= 0x40uLL;
      return v21;
    }

LABEL_129:
    if ((*(v11 + 2) & 0x40) != 0 && xo_flush_h(v11) < 0)
    {
      v21 = -1;
    }

    goto LABEL_132;
  }

  if (v22 <= 1287)
  {
    if (v22 <= 1281)
    {
      if (v22 > 778)
      {
        if (v22 == 779)
        {
          if (v16 == 10)
          {
            goto LABEL_95;
          }

          v31 = v11;
          v32 = 0;
          v33 = 4;
          goto LABEL_106;
        }

        if (v22 == 780)
        {
          goto LABEL_129;
        }

        if (v22 != 1281)
        {
          goto LABEL_102;
        }

        goto LABEL_109;
      }

      if (v22 == 774)
      {
        goto LABEL_94;
      }

      if (v22 != 775)
      {
        if (v22 == 776)
        {
          goto LABEL_94;
        }

        goto LABEL_102;
      }

      goto LABEL_115;
    }

    if (v22 <= 1284)
    {
      if (v22 == 1282)
      {
        goto LABEL_94;
      }

      if (v22 != 1283)
      {
        goto LABEL_105;
      }

      goto LABEL_78;
    }

    if (v22 != 1285)
    {
      if (v22 == 1286)
      {
        if (v16 == 10)
        {
          goto LABEL_95;
        }

        v23 = xo_do_close_instance(v11, a3);
        goto LABEL_118;
      }

      goto LABEL_117;
    }

    v34 = v11;
    if (v16 == 10)
    {
      goto LABEL_112;
    }

    v23 = xo_do_close_instance(v11, 0);
    goto LABEL_113;
  }

  if (v22 > 1795)
  {
    if (v22 > 1798)
    {
      if (v22 > 1802)
      {
        if (v22 != 1803)
        {
          if (v22 == 1804)
          {
            goto LABEL_129;
          }

          goto LABEL_102;
        }

        if (v16 == 10)
        {
          goto LABEL_95;
        }

        v24 = v11;
        v25 = 0;
        goto LABEL_124;
      }

      if (v22 != 1799)
      {
        if (v22 != 1800)
        {
          goto LABEL_102;
        }

        if (v16 == 10)
        {
          goto LABEL_95;
        }

        v24 = v11;
        v25 = a3;
LABEL_124:
        v23 = xo_do_close_leaf_list(v24, v25);
        goto LABEL_118;
      }

LABEL_115:
      if (v16 == 10)
      {
        goto LABEL_95;
      }

      v23 = xo_do_close_list(v11, 0);
      if (v23 < 0)
      {
        goto LABEL_118;
      }

      goto LABEL_117;
    }

    if (v22 == 1796)
    {
      goto LABEL_105;
    }

    if (v22 != 1797)
    {
LABEL_103:
      if (v16 == 10)
      {
        goto LABEL_95;
      }

      v23 = xo_do_close_leaf_list(v11, 0);
      if (v23 < 0)
      {
        goto LABEL_118;
      }

      goto LABEL_105;
    }

    if (v16 == 10)
    {
      goto LABEL_95;
    }

    v23 = xo_do_close_leaf_list(v11, 0);
LABEL_113:
    if (v23 < 0)
    {
      goto LABEL_118;
    }

    goto LABEL_114;
  }

  if (v22 <= 1792)
  {
    if (v22 == 1288)
    {
      goto LABEL_94;
    }

    if (v22 == 1291)
    {
      goto LABEL_129;
    }

    if (v22 != 1292)
    {
      goto LABEL_102;
    }

    goto LABEL_117;
  }

  if (v22 == 1793)
  {
    goto LABEL_107;
  }

  if (v22 == 1794)
  {
    goto LABEL_103;
  }

  if (v16 != 10)
  {
    v23 = xo_do_close_leaf_list(v11, 0);
LABEL_77:
    if (v23 < 0)
    {
      goto LABEL_118;
    }

    goto LABEL_78;
  }

LABEL_95:
  v27 = v12 + 24 * v14;
  if (v18 <= 0xE)
  {
    v28 = xo_state_name_names[v18];
  }

  v29 = *(v27 + 8);
  if (v8 <= 0xE)
  {
    v30 = xo_state_name_names[v8];
  }

  xo_failure(v11, "marker '%s' prevents transition from %s to %s");
  return -1;
}

uint64_t xo_open_marker_h(uint64_t a1, char *a2)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  xo_depth_change(a1, a2, 1, 0, 10, *(*(a1 + 168) + 24 * *(a1 + 176)) & 0xF1);
  return 0;
}

_BYTE *xo_depth_change(_BYTE *result, char *__s1, int a3, __int16 a4, int a5, int a6)
{
  v8 = result;
  v9 = *(result + 8);
  if (v9 == 3 || v9 == 0)
  {
    a4 = 0;
  }

  v12 = *result;
  v13 = (*result >> 7) & 8 | a6;
  v14 = *(result + 44);
  if ((a3 & 0x80000000) == 0)
  {
    result = xo_depth_check(result, v14 + a3);
    if (result)
    {
      return result;
    }

    v16 = *(v8 + 21);
    v17 = *(v8 + 44);
    v18 = v16 + 24 * (v17 + a3);
    *v18 = v13;
    *(v18 + 4) = a5;
    v19 = *v8;
    if ((*v8 & 0x2000) != 0)
    {
      *(v16 + 24 * v17) |= 1u;
      *v8 = v19 & 0xFFFFFFFFFFFFDFFFLL;
    }

    if (__s1)
    {
      v20 = __s1;
    }

    else
    {
      v20 = "failure";
    }

    result = xo_strndup(v20, 0xFFFFFFFFFFFFFFFFLL);
    *(v18 + 8) = result;
    goto LABEL_21;
  }

  if (v14)
  {
    v21 = *(result + 21) + 24 * v14;
    v22 = *(v21 + 8);
    if ((v12 & 0x10) == 0)
    {
LABEL_17:
      if (v22)
      {
        xo_free(v22);
        *(v21 + 8) = 0;
      }

      result = *(v21 + 16);
      if (result)
      {
        result = xo_free(result);
        *(v21 + 16) = 0;
      }

LABEL_21:
      *(v8 + 44) += a3;
      *(v8 + 9) += a4;
      return result;
    }

    if (__s1 && v22 && strcmp(__s1, *(v21 + 8)))
    {
      v23 = "incorrect close: '%s' .vs. '%s'";
    }

    else
    {
      v24 = *v21 ^ v13;
      if ((v24 & 2) != 0)
      {
        v23 = "list close on list confict: '%s'";
      }

      else
      {
        if ((v24 & 4) == 0)
        {
          goto LABEL_17;
        }

        v23 = "list close on instance confict: '%s'";
      }
    }
  }

  else
  {
    if ((v12 & 0x1000) != 0)
    {
      return result;
    }

    v23 = "close with empty stack: '%s'";
  }

  return xo_failure(v8, v23);
}

uint64_t xo_close_marker_h(_BYTE *a1, char *a2)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  xo_do_close(a1, a2, 10);
  return 0;
}

_BYTE *xo_do_close(_BYTE *result, char *__s1, int a3)
{
  v5 = result;
  if (a3 > 5)
  {
    switch(a3)
    {
      case 6:
        v7 = 5;
        break;
      case 8:
        v7 = 7;
        break;
      case 10:
        v6 = 0;
        v7 = 10;
        goto LABEL_13;
      default:
        return result;
    }

    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 4)
    {
      return result;
    }

    v7 = 3;
LABEL_11:
    v6 = 1;
    goto LABEL_13;
  }

  v6 = 1;
  v7 = 1;
LABEL_13:
  v8 = *(result + 44);
  if (v8 < 1)
  {
LABEL_24:
    v15 = xo_state_name_names[a3];
    v16 = "xo_%s can't find match for '%s'";
    return xo_failure(v5, v16);
  }

  else
  {
    v9 = *(result + 21);
    v10 = v9 + 24 * v8;
    v11 = v6 ^ 1;
    while (1)
    {
      v12 = *(v10 + 4);
      v13 = v12 == 10 ? v11 : 1;
      if ((v13 & 1) == 0)
      {
        break;
      }

      if (v12 == v7)
      {
        if (!__s1)
        {
          goto LABEL_30;
        }

        v14 = *(v10 + 8);
        if (!v14 || !strcmp(__s1, v14))
        {
          goto LABEL_30;
        }
      }

      v10 -= 24;
      if (v10 <= v9)
      {
        goto LABEL_24;
      }
    }

    if (__s1)
    {
      v17 = xo_state_name_names[a3];
      v19 = *(v10 + 8);
      v16 = "close (xo_%s) fails at marker '%s'; not found '%s'";
      return xo_failure(v5, v16);
    }

    v18 = *(v10 + 8);
    xo_failure(v5, "close stops at marker '%s'");
LABEL_30:

    return xo_do_close_all(v5, v10);
  }
}

void *xo_set_writer(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  result[8] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

uint64_t (*xo_set_allocator(uint64_t (*result)(void), uint64_t (*a2)(void)))(void)
{
  xo_realloc = result;
  xo_free = a2;
  return result;
}

uint64_t xo_finish_h(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v8 = xo_default_handle();
  }

  if ((*(v8 + 3) & 1) == 0)
  {
    xo_do_close_all(v8, *(v8 + 168));
  }

  v9 = *(v8 + 16);
  if (v9 == 5)
  {
    xo_encoder_handle(v8, 12, 0, 0, 0);
    goto LABEL_20;
  }

  if (v9 == 2)
  {
    v10 = *v8;
    if ((*v8 & 0x10000) == 0)
    {
      v11 = "\n";
      if ((v10 & 2) == 0)
      {
        v11 = &xo_version_extra;
      }

      v12 = *(v8 + 8);
      if ((v12 & 4) != 0)
      {
        *(v8 + 8) = v12 & 0xFFFFFFFFFFFFFFFBLL;
        if ((v10 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if ((v12 & 0x40) == 0)
        {
          v11 = &xo_version_extra;
        }

        if ((v10 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      v13 = *(v8 + 20) * *(v8 + 18);
LABEL_19:
      xo_printf(v8, "%s%*s%s}\n", a3, a4, a5, a6, a7, a8, v11);
    }
  }

LABEL_20:

  return xo_flush_h(v8);
}

uint64_t xo_do_close_all(uint64_t result, unint64_t a2)
{
  v2 = *(result + 168) + 24 * *(result + 176);
  if (v2 >= a2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = *(v2 + 4);
      if (v6 > 4)
      {
        if (v6 == 5)
        {
          result = xo_do_close_instance(v4, 0);
          goto LABEL_16;
        }

        if (v6 == 7)
        {
          result = xo_do_close_leaf_list(v4, 0);
LABEL_16:
          v5 = result;
          goto LABEL_17;
        }

        if (v6 != 10)
        {
          goto LABEL_17;
        }

        v7 = *v2 & 0xF1;
        result = xo_depth_change(v4, *(v2 + 8), -1, 0, 10, 0);
        v5 = 0;
        *(*(v4 + 168) + 24 * *(v4 + 176)) |= v7;
      }

      else
      {
        if (v6)
        {
          if (v6 == 1)
          {
            result = xo_do_close_container(v4, 0);
            goto LABEL_16;
          }

          if (v6 == 3)
          {
            result = xo_do_close_list(v4, 0);
            goto LABEL_16;
          }

LABEL_17:
          if (v5 < 0)
          {
            v8 = *(v2 + 4);
            result = xo_failure(v4, "close %d failed: %d");
          }

          goto LABEL_19;
        }

        v5 = *(v2 + 4);
      }

LABEL_19:
      v2 -= 24;
    }

    while (v2 >= a2);
  }

  return result;
}

uint64_t xo_indent(uint64_t a1)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  if ((*a1 & 2) != 0)
  {
    return (*(a1 + 20) & (*(a1 + 8) << 29 >> 31)) + *(a1 + 20) * *(a1 + 18);
  }

  else
  {
    return 0;
  }
}

uint64_t xo_errorn_hv(uint64_t result, int a2, char *a3, va_list a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = result;
  v21[1] = *MEMORY[0x29EDCA608];
  v21[0] = a4;
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
    v11 = result;
  }

  if (a2)
  {
    result = strlen(a3);
    if (result >= 1)
    {
      v12 = result;
      if (a3[result - 1] != 10)
      {
        MEMORY[0x2A1C7C4A8](result);
        bzero(v21 - ((v12 + 17) & 0xFFFFFFFFFFFFFFF0), v12 + 2);
        result = memcpy(v21 - ((v12 + 17) & 0xFFFFFFFFFFFFFFF0), a3, v12);
        *(v21 + v12 - ((v12 + 17) & 0xFFFFFFFFFFFFFFF0)) = 10;
        a3 = v21 - ((v12 + 17) & 0xFFFFFFFFFFFFFFF0);
      }
    }
  }

  v13 = *(v11 + 16);
  if ((v13 - 1) < 2)
  {
    *(v11 + 200) = v21[0];
    xo_transition(v11, 0, "error", 1, a5, a6, a7, a8);
    v14 = strlen(a3);
    xo_format_value(v11, "message", 7uLL, 0, 0, a3, v14, 0, 0, 0);
    result = xo_transition(v11, 0, "error", 2, v15, v16, v17, v18);
LABEL_17:
    *(v11 + 200) = 0;
    goto LABEL_18;
  }

  if (v13 == 3)
  {
    *(v11 + 200) = v21[0];
    v19 = strlen(a3);
    xo_buf_append_div(v11, "error", 0, 0, 0, 0, 0, a3, v19, 0, 0);
    if ((*(v11 + 8) & 2) != 0)
    {
      xo_line_close(v11);
    }

    result = xo_write(v11);
    goto LABEL_17;
  }

  if (!*(v11 + 16))
  {
    result = vfprintf(*MEMORY[0x29EDCA610], a3, a4);
  }

LABEL_18:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xo_line_close(uint64_t result)
{
  v1 = result;
  if (!*(result + 16))
  {
    v5 = (result + 80);
    v8 = *(result + 80);
    v9 = v8 + 1;
    result = *(result + 72);
    v10 = *(v1 + 88);
    goto LABEL_12;
  }

  if (*(result + 16) != 3)
  {
    return result;
  }

  v2 = *(result + 8);
  if ((v2 & 2) == 0)
  {
    xo_line_ensure_open(result);
    v2 = *(v1 + 8);
  }

  v3 = v2 & 0xFFFFFFFFFFFFFFFDLL;
  v5 = (v1 + 80);
  v4 = *(v1 + 80);
  *(v1 + 8) = v3;
  result = *(v1 + 72);
  if (v4 + 6 < (result + *(v1 + 88)))
  {
    goto LABEL_8;
  }

  v6 = (v4 + 6 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
  result = xo_realloc(result, v6);
  if (result)
  {
    v4 = result + *(v1 + 80) - *(v1 + 72);
    *(v1 + 72) = result;
    *(v1 + 80) = v4;
    *(v1 + 88) = v6;
LABEL_8:
    v7 = *xo_line_close_div_close;
    *(v4 + 4) = *&xo_line_close_div_close[4];
    *v4 = v7;
    *v5 += 6;
  }

  if ((*v1 & 2) == 0)
  {
    return result;
  }

  result = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = v8 + 1;
  v10 = *(v1 + 88);
LABEL_12:
  if (v9 >= result + v10)
  {
    v11 = &v9[-result + 0x1FFF] & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(result, v11);
    if (!result)
    {
      return result;
    }

    v8 = (result + *(v1 + 80) - *(v1 + 72));
    *(v1 + 72) = result;
    *(v1 + 80) = v8;
    *(v1 + 88) = v11;
  }

  *v8 = 10;
  ++*v5;
  return result;
}

uint64_t xo_format_value(unint64_t a1, char *a2, size_t a3, char *a4, uint64_t a5, char *a6, size_t a7, char *a8, size_t a9, uint64_t a10)
{
  v149 = a4;
  v17 = a10;
  v153 = *MEMORY[0x29EDCA608];
  v148 = *a1;
  v18 = *(a1 + 168);
  v19 = *(a1 + 176);
  v20 = (v18 + 24 * v19);
  if ((a10 & 0x2000) != 0)
  {
    if ((*v20 & 0xE0) != 0x80)
    {
      MEMORY[0x2A1C7C4A8](a1);
      memcpy(&v146 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0), a2, a3);
      *(&v146 + a3 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0)) = 0;
      if (xo_transition(a1, 0, &v146 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0), 12, v30, v31, v32, v33) < 0)
      {
        v17 |= 0x48uLL;
      }

      else
      {
        *(*(a1 + 168) + 24 * *(a1 + 176)) |= 0x80u;
      }

      v18 = *(a1 + 168);
      v19 = *(a1 + 176);
    }

    v38 = v18 + 24 * v19;
    v39 = *(v38 + 8);
    if (v39)
    {
      a3 = strlen(*(v38 + 8));
      a2 = v39;
    }
  }

  else
  {
    v21 = *v20;
    if ((a10 & 0x80) == 0)
    {
      if ((*v20 & 0xA0) == 0x20)
      {
        goto LABEL_23;
      }

      MEMORY[0x2A1C7C4A8](a1);
      memcpy(&v146 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0), a2, a3);
      *(&v146 + a3 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0)) = 0;
      if (xo_transition(a1, 0, &v146 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0), 11, v22, v23, v24, v25) < 0)
      {
        v17 |= 0x48uLL;
        v26 = *(a1 + 168);
        v27 = *(a1 + 176);
        v29 = *(v26 + 24 * v27) | 0x20;
        goto LABEL_22;
      }

      v26 = *(a1 + 168);
      v27 = *(a1 + 176);
      v28 = 24 * v27;
      v29 = *(v26 + v28) | 0x20;
LABEL_15:
      *(v26 + v28) = v29;
LABEL_22:
      *(v26 + 24 * v27) = v29;
      goto LABEL_23;
    }

    if ((a10 & 0x40) == 0 && (v21 & 0x20) != 0)
    {
      xo_failure(a1, "key field emitted after normal value field: '%.*s'");
      goto LABEL_23;
    }

    if ((v21 & 0x40) == 0)
    {
      MEMORY[0x2A1C7C4A8](a1);
      memcpy(&v146 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0), a2, a3);
      *(&v146 + a3 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0)) = 0;
      if (xo_transition(a1, 0, &v146 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0), 11, v34, v35, v36, v37) < 0)
      {
        v17 |= 0x48uLL;
        v26 = *(a1 + 168);
        v27 = *(a1 + 176);
        v29 = *(v26 + 24 * v27) | 0x40;
        goto LABEL_22;
      }

      v26 = *(a1 + 168);
      v27 = *(a1 + 176);
      v28 = 24 * v27;
      v29 = *(v26 + v28) | 0x40;
      goto LABEL_15;
    }
  }

LABEL_23:
  v40 = a9;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  result = xo_xml_leader_len(a1, a2);
  v42 = *(a1 + 16);
  if (v42 > 2)
  {
    if (v42 == 3)
    {
      result = xo_buf_append_div(a1, "data", (v17 << 8) & 0x800 | v17, a2, a3, v149, a5, a6, a7, a8, a9);
      goto LABEL_223;
    }

    if (v42 != 4)
    {
      if (v42 != 5)
      {
        goto LABEL_223;
      }

      if ((v17 & 0x40) != 0)
      {
        goto LABEL_106;
      }

      if ((v17 & 0x10) != 0)
      {
        v47 = 10;
      }

      else if ((v17 & 0x20) != 0)
      {
        v47 = 11;
      }

      else
      {
        if (!a7)
        {
          a6 = "true";
          LODWORD(v148) = 11;
          a7 = 4;
          if (a8)
          {
            goto LABEL_157;
          }

          goto LABEL_152;
        }

        result = memchr("diouxXDOUeEfFgGaAcCp", a6[a7 - 1], 0x15uLL);
        if (result)
        {
          v47 = 11;
        }

        else
        {
          v47 = 10;
        }
      }

      LODWORD(v148) = v47;
      if (a8)
      {
        goto LABEL_157;
      }

LABEL_152:
      MEMORY[0x2A1C7C4A8](result);
      a8 = &v146 - ((a7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(a8, a7 + 1);
      memcpy(a8, a6, a7);
      a8[a7] = 0;
      if (*a8 == 37 && (a8[1] - 48) <= 9)
      {
        do
        {
          v109 = a8[2] - 48;
          ++a8;
        }

        while (v109 < 0xA);
        *a8 = 37;
      }

      v40 = strlen(a8);
LABEL_157:
      v110 = 0x2A1B69000uLL;
      if (a3)
      {
        v112 = (a1 + 80);
        v111 = *(a1 + 80);
        v113 = *(a1 + 72);
        v114 = &v111[-v113];
        if (!a2)
        {
LABEL_165:
          v117 = *(a1 + 72);
          if ((v111 + 1) >= v117 + *(a1 + 88))
          {
            v118 = &v111[-v117 + 0x2000] & 0xFFFFFFFFFFFFE000;
            v119 = (*(v110 + 184))(*(a1 + 72), v118);
            v120 = *v112;
            if (!v119)
            {
              goto LABEL_169;
            }

            v121 = v119;
            v111 = (v119 + v120 - *(a1 + 72));
            *(a1 + 72) = v121;
            *(a1 + 80) = v111;
            *(a1 + 88) = v118;
          }

          *v111 = 0;
          v120 = *v112 + 1;
          *v112 = v120;
LABEL_169:
          v122 = *(a1 + 72);
          if (a5)
          {
            xo_data_append_content(a1, v149, a5, v17);
          }

          else
          {
            xo_do_format_field(a1, 0, a8, v40, v17);
          }

          v123 = v148;
          v124 = *(a1 + 72);
          v125 = *(a1 + 80);
          if ((v125 + 1) >= v124 + *(a1 + 88))
          {
            v126 = &v125[-v124 + 0x2000] & 0xFFFFFFFFFFFFE000;
            v127 = (*(v110 + 184))();
            if (!v127)
            {
LABEL_176:
              result = xo_encoder_handle(a1, v123, &v114[*(a1 + 72)], *(a1 + 72) + v120 - v122, v17);
              v108 = *(a1 + 72);
              goto LABEL_222;
            }

            v125 = (v127 + *(a1 + 80) - *(a1 + 72));
            *(a1 + 72) = v127;
            *(a1 + 80) = v125;
            *(a1 + 88) = v126;
          }

          *v125 = 0;
          ++*v112;
          goto LABEL_176;
        }
      }

      else
      {
        xo_failure(a1, "missing field name: %s");
        v112 = (a1 + 80);
        v111 = *(a1 + 80);
        v113 = *(a1 + 72);
        v114 = &v111[-v113];
        a2 = xo_format_value_missing_225;
        a3 = 18;
      }

      if (&v111[a3] >= v113 + *(a1 + 88))
      {
        v115 = &v111[a3 - v113 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v116 = xo_realloc(v113, v115);
        v111 = *v112;
        if (!v116)
        {
          v110 = 0x2A1B69000;
          goto LABEL_165;
        }

        v111 = &v111[v116 - *(a1 + 72)];
        *(a1 + 72) = v116;
        *(a1 + 80) = v111;
        *(a1 + 88) = v115;
        v110 = 0x2A1B69000uLL;
      }

      memcpy(v111, a2, a3);
      v111 = (*v112 + a3);
      *v112 = v111;
      goto LABEL_165;
    }

    if ((v17 & 0x40) != 0)
    {
      goto LABEL_106;
    }

    if (!a8)
    {
      MEMORY[0x2A1C7C4A8](result);
      a8 = &v146 - ((a7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(a8, a7 + 1);
      memcpy(a8, a6, a7);
      a8[a7] = 0;
      if (*a8 == 37 && (a8[1] - 48) <= 9)
      {
        do
        {
          v75 = a8[2] - 48;
          ++a8;
        }

        while (v75 < 0xA);
        *a8 = 37;
      }

      v40 = strlen(a8);
    }

    if (!a3)
    {
      xo_failure(a1, "missing field name: %s");
      a2 = xo_format_value_missing_221;
      a3 = 18;
    }

    xo_buf_escape(a1, (a1 + 72), a2, a3, 0);
    v76 = *(a1 + 72);
    v77 = *(a1 + 80);
    if ((v77 + 1) >= v76 + *(a1 + 88))
    {
      v78 = (v77 - v76 + 8193) & 0xFFFFFFFFFFFFE000;
      v79 = xo_realloc(v76, v78);
      if (!v79)
      {
LABEL_104:
        if (a5)
        {
          xo_data_append_content(a1, v149, a5, v17);
        }

        else
        {
          xo_do_format_field(a1, 0, a8, v40, v17);
        }

        result = *(a1 + 72);
        v106 = *(a1 + 80);
        if ((v106 + 1) >= result + *(a1 + 88))
        {
          v107 = (v106 - result + 8193) & 0xFFFFFFFFFFFFE000;
          result = xo_realloc(result, v107);
          if (!result)
          {
            goto LABEL_223;
          }

          v106 = (result + *(a1 + 80) - *(a1 + 72));
          *(a1 + 72) = result;
          *(a1 + 80) = v106;
          *(a1 + 88) = v107;
        }

        *v106 = 8226;
        v108 = *(a1 + 80) + 2;
LABEL_222:
        *(a1 + 80) = v108;
        goto LABEL_223;
      }

      v77 = (v79 + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = v79;
      *(a1 + 80) = v77;
      *(a1 + 88) = v78;
    }

    *v77 = 8765;
    *(a1 + 80) += 2;
    goto LABEL_104;
  }

  if (!*(a1 + 16))
  {
    v48 = (v17 << 8) & 0x800;
    v49 = *(a1 + 376);
    v150 = *(a1 + 80) - *(a1 + 72);
    v151 = v49;
    v152 = *(a1 + 352);
    if (a5)
    {
      result = xo_data_append_content(a1, v149, a5, v48 | v17);
      if ((v17 & 0x8000) == 0)
      {
        goto LABEL_223;
      }
    }

    else
    {
      result = xo_do_format_field(a1, 0, a6, a7, v48 | v17);
      if ((v17 & 0x8000) == 0)
      {
        goto LABEL_223;
      }
    }

    result = xo_format_humanize(a1, (a1 + 72), &v150, v48 | v17);
    goto LABEL_223;
  }

  if (v42 == 1)
  {
    if ((v17 & 0x40) != 0)
    {
      goto LABEL_106;
    }

    v50 = result;
    if (!a8)
    {
      MEMORY[0x2A1C7C4A8](result);
      a8 = &v146 - ((a7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(a8, a7 + 1);
      memcpy(a8, a6, a7);
      a8[a7] = 0;
      if (*a8 == 37 && (a8[1] - 48) <= 9)
      {
        do
        {
          v51 = a8[2] - 48;
          ++a8;
        }

        while (v51 < 0xA);
        *a8 = 37;
      }

      v40 = strlen(a8);
    }

    if (!a3)
    {
      xo_failure(a1, "missing field name: %s");
      a2 = xo_format_value_missing;
      a3 = 18;
    }

    if ((v148 & 2) != 0)
    {
      xo_buf_indent(a1, 0xFFFFFFFFuLL);
    }

    v52 = *(a1 + 72);
    v53 = *(a1 + 80);
    if ((v53 + 1) >= v52 + *(a1 + 88))
    {
      v54 = &v53[-v52 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v55 = xo_realloc(v52, v54);
      if (!v55)
      {
        goto LABEL_67;
      }

      v53 = (v55 + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = v55;
      *(a1 + 80) = v53;
      *(a1 + 88) = v54;
    }

    *v53 = 60;
    ++*(a1 + 80);
LABEL_67:
    if (!*v50)
    {
      goto LABEL_72;
    }

    v56 = *(a1 + 72);
    v57 = *(a1 + 80);
    if ((v57 + 1) >= v56 + *(a1 + 88))
    {
      v58 = &v57[-v56 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v59 = xo_realloc(v56, v58);
      if (!v59)
      {
        goto LABEL_72;
      }

      v57 = (v59 + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = v59;
      *(a1 + 80) = v57;
      *(a1 + 88) = v58;
    }

    *v57 = *v50;
    ++*(a1 + 80);
LABEL_72:
    xo_buf_escape(a1, (a1 + 72), a2, a3, 0);
    v61 = *(a1 + 120);
    v60 = *(a1 + 128);
    v62 = v60 - v61;
    if (v60 == v61)
    {
LABEL_79:
      if ((v17 & 0x80) != 0 && (*(a1 + 1) & 8) != 0 && xo_buf_has_room((a1 + 72), 10))
      {
        v69 = *(a1 + 80);
        v70 = *xo_format_value_attr;
        *(v69 + 8) = *&xo_format_value_attr[8];
        *v69 = v70;
        *(a1 + 80) += 10;
      }

      v71 = *(a1 + 72);
      v72 = *(a1 + 80);
      if ((*(a1 + 2) & 4) != 0)
      {
        *(a1 + 8) |= 0x10uLL;
        *(a1 + 368) = &v72[-v71];
      }

      if ((v72 + 1) >= v71 + *(a1 + 88))
      {
        v73 = &v72[-v71 + 0x2000] & 0xFFFFFFFFFFFFE000;
        v74 = xo_realloc(v71, v73);
        if (!v74)
        {
          goto LABEL_89;
        }

        v72 = (v74 + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = v74;
        *(a1 + 80) = v72;
        *(a1 + 88) = v73;
      }

      *v72 = 62;
      ++*(a1 + 80);
LABEL_89:
      if (a5)
      {
        xo_data_append_content(a1, v149, a5, v17);
      }

      else
      {
        xo_do_format_field(a1, 0, a8, v40, v17);
      }

      v93 = *(a1 + 72);
      v94 = *(a1 + 80);
      if ((v94 + 1) >= v93 + *(a1 + 88))
      {
        v95 = (v94 - v93 + 8193) & 0xFFFFFFFFFFFFE000;
        v96 = xo_realloc(v93, v95);
        if (!v96)
        {
          goto LABEL_131;
        }

        v94 = (v96 + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = v96;
        *(a1 + 80) = v94;
        *(a1 + 88) = v95;
      }

      *v94 = 12092;
      *(a1 + 80) += 2;
LABEL_131:
      if (!*v50)
      {
        goto LABEL_136;
      }

      v97 = *(a1 + 72);
      v98 = *(a1 + 80);
      if ((v98 + 1) >= v97 + *(a1 + 88))
      {
        v99 = &v98[-v97 + 0x2000] & 0xFFFFFFFFFFFFE000;
        v100 = xo_realloc(v97, v99);
        if (!v100)
        {
          goto LABEL_136;
        }

        v98 = (v100 + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = v100;
        *(a1 + 80) = v98;
        *(a1 + 88) = v99;
      }

      *v98 = *v50;
      ++*(a1 + 80);
LABEL_136:
      xo_buf_escape(a1, (a1 + 72), a2, a3, 0);
      result = *(a1 + 72);
      v101 = *(a1 + 80);
      if ((v101 + 1) >= result + *(a1 + 88))
      {
        v102 = &v101[-result + 0x2000] & 0xFFFFFFFFFFFFE000;
        result = xo_realloc(result, v102);
        if (!result)
        {
LABEL_140:
          if ((v148 & 2) == 0)
          {
            goto LABEL_223;
          }

          result = *(a1 + 72);
          v103 = *(a1 + 80);
          if ((v103 + 1) >= result + *(a1 + 88))
          {
            v104 = &v103[-result + 0x2000] & 0xFFFFFFFFFFFFE000;
            result = xo_realloc(result, v104);
            if (!result)
            {
              goto LABEL_223;
            }

            v103 = (result + *(a1 + 80) - *(a1 + 72));
            *(a1 + 72) = result;
            *(a1 + 80) = v103;
            *(a1 + 88) = v104;
          }

          v105 = 10;
          goto LABEL_221;
        }

        v101 = (result + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = result;
        *(a1 + 80) = v101;
        *(a1 + 88) = v102;
      }

      *v101 = 62;
      ++*(a1 + 80);
      goto LABEL_140;
    }

    if (v61)
    {
      v64 = *(a1 + 72);
      v63 = *(a1 + 80);
      if (v63 + v62 < v64 + *(a1 + 88))
      {
LABEL_77:
        memcpy(v63, v61, v62);
        *(a1 + 80) += v62;
        goto LABEL_78;
      }

      v65 = (v63 + v62 - v64 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v66 = *(a1 + 72);
      v147 = v65;
      v67 = xo_realloc(v66, v65);
      if (v67)
      {
        v68 = v67;
        v63 = (v67 + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = v68;
        *(a1 + 80) = v63;
        *(a1 + 88) = v147;
        goto LABEL_77;
      }
    }

LABEL_78:
    *(a1 + 128) = *(a1 + 120);
    goto LABEL_79;
  }

  if (v42 != 2)
  {
    goto LABEL_223;
  }

  if ((v17 & 0x40) == 0)
  {
    if (!a8)
    {
      MEMORY[0x2A1C7C4A8](result);
      a8 = &v146 - ((a7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(a8, a7 + 1);
      memcpy(a8, a6, a7);
      a8[a7] = 0;
      if (*a8 == 37 && (a8[1] - 48) <= 9)
      {
        do
        {
          v43 = a8[2] - 48;
          ++a8;
        }

        while (v43 < 0xA);
        *a8 = 37;
      }

      v40 = strlen(a8);
    }

    v44 = *a1;
    v45 = (*(a1 + 168) + 24 * *(a1 + 176));
    v46 = *v45;
    if ((*a1 & 0x2000) != 0)
    {
      v46 |= 1u;
      *v45 = v46;
      *a1 = v44 & 0xFFFFFFFFFFFFDFFFLL;
    }

    if ((v46 & 1) == 0)
    {
      *v45 = v46 | 1;
      goto LABEL_121;
    }

    v84 = *(a1 + 72);
    v85 = *(a1 + 80);
    if ((v85 + 1) >= v84 + *(a1 + 88))
    {
      v86 = &v85[-v84 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v87 = xo_realloc(v84, v86);
      if (!v87)
      {
LABEL_115:
        if ((v17 & 0x2000) == 0 && (*a1 & 2) != 0)
        {
          v88 = *(a1 + 72);
          v89 = *(a1 + 80);
          if ((v89 + 1) >= v88 + *(a1 + 88))
          {
            v90 = &v89[-v88 + 0x2000] & 0xFFFFFFFFFFFFE000;
            v91 = xo_realloc(v88, v90);
            if (!v91)
            {
              goto LABEL_121;
            }

            v89 = (v91 + *(a1 + 80) - *(a1 + 72));
            *(a1 + 72) = v91;
            *(a1 + 80) = v89;
            *(a1 + 88) = v90;
          }

          *v89 = 10;
          ++*(a1 + 80);
        }

LABEL_121:
        if ((v17 & 0x10) == 0)
        {
          if ((v17 & 0x20) != 0)
          {
            is_numeric = 1;
          }

          else
          {
            if (a5)
            {
              goto LABEL_124;
            }

            if (v40)
            {
              is_numeric = xo_format_is_numeric(a8, v40);
            }

            else
            {
              a8 = "true";
              is_numeric = 1;
              v40 = 4;
            }
          }

LABEL_178:
          if (!a3)
          {
            xo_failure(a1, "missing field name: %s");
            a2 = xo_format_value_missing_219;
            a3 = 18;
          }

          if ((v17 & 0x2000) != 0)
          {
            if ((v46 & 1) != 0 && (v148 & 2) != 0)
            {
              if (xo_buf_has_room((a1 + 72), 1))
              {
                *(*(a1 + 80))++ = 10;
              }
            }

            else if ((v148 & 2) == 0)
            {
              goto LABEL_206;
            }

            xo_buf_indent(a1, 0xFFFFFFFFuLL);
LABEL_206:
            if (is_numeric)
            {
              v81 = a1;
              if (a5)
              {
                result = xo_data_append_content(a1, v149, a5, v17);
                goto LABEL_223;
              }

              v82 = a8;
              v83 = v40;
              v80 = v17;
              goto LABEL_108;
            }

            v140 = *(a1 + 72);
            v141 = *(a1 + 80);
            if ((v141 + 1) >= v140 + *(a1 + 88))
            {
              v142 = &v141[-v140 + 0x2000] & 0xFFFFFFFFFFFFE000;
              v143 = xo_realloc(v140, v142);
              if (!v143)
              {
LABEL_213:
                if (a5)
                {
                  xo_data_append_content(a1, v149, a5, v17);
                }

                else
                {
                  xo_do_format_field(a1, 0, a8, v40, v17);
                }

                result = *(a1 + 72);
                v103 = *(a1 + 80);
                if ((v103 + 1) >= result + *(a1 + 88))
                {
                  v144 = &v103[-result + 0x2000] & 0xFFFFFFFFFFFFE000;
                  result = xo_realloc(result, v144);
                  if (!result)
                  {
                    goto LABEL_223;
                  }

                  v103 = (result + *(a1 + 80) - *(a1 + 72));
                  *(a1 + 72) = result;
                  *(a1 + 80) = v103;
                  *(a1 + 88) = v144;
                }

                v105 = 34;
LABEL_221:
                *v103 = v105;
                v108 = *(a1 + 80) + 1;
                goto LABEL_222;
              }

              v141 = (v143 + *(a1 + 80) - *(a1 + 72));
              *(a1 + 72) = v143;
              *(a1 + 80) = v141;
              *(a1 + 88) = v142;
            }

            *v141 = 34;
            ++*(a1 + 80);
            goto LABEL_213;
          }

          if ((v148 & 2) != 0)
          {
            xo_buf_indent(a1, 0xFFFFFFFFuLL);
          }

          v128 = *(a1 + 72);
          v129 = *(a1 + 80);
          if ((v129 + 1) >= v128 + *(a1 + 88))
          {
            v130 = &v129[-v128 + 0x2000] & 0xFFFFFFFFFFFFE000;
            v131 = xo_realloc(v128, v130);
            v132 = *(a1 + 80);
            if (!v131)
            {
LABEL_187:
              v133 = *(a1 + 72);
              xo_buf_escape(a1, (a1 + 72), a2, a3, 0);
              v134 = *(a1 + 72);
              v135 = *(a1 + 80);
              if ((*(a1 + 2) & 0x10) != 0)
              {
                v136 = v132 - v133;
                if (v132 - v133 < v135 - v134)
                {
                  do
                  {
                    v137 = *(a1 + 72);
                    if (*(v137 + v136) == 45)
                    {
                      *(v137 + v136) = 95;
                    }

                    ++v136;
                  }

                  while (v136 < v135 - v134);
                  v134 = *(a1 + 72);
                  v135 = *(a1 + 80);
                }
              }

              if ((v135 + 1) >= v134 + *(a1 + 88))
              {
                v138 = (v135 - v134 + 8193) & 0xFFFFFFFFFFFFE000;
                v139 = xo_realloc(v134, v138);
                if (!v139)
                {
LABEL_197:
                  if ((v148 & 2) != 0 && xo_buf_has_room((a1 + 72), 1))
                  {
                    *(*(a1 + 80))++ = 32;
                  }

                  goto LABEL_206;
                }

                v135 = (v139 + *(a1 + 80) - *(a1 + 72));
                *(a1 + 72) = v139;
                *(a1 + 80) = v135;
                *(a1 + 88) = v138;
              }

              *v135 = 14882;
              *(a1 + 80) += 2;
              goto LABEL_197;
            }

            v129 = (v131 + v132 - *(a1 + 72));
            *(a1 + 72) = v131;
            *(a1 + 80) = v129;
            *(a1 + 88) = v130;
          }

          *v129 = 34;
          v132 = *(a1 + 80) + 1;
          *(a1 + 80) = v132;
          goto LABEL_187;
        }

LABEL_124:
        is_numeric = 0;
        goto LABEL_178;
      }

      v85 = (v87 + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = v87;
      *(a1 + 80) = v85;
      *(a1 + 88) = v86;
    }

    *v85 = 44;
    ++*(a1 + 80);
    goto LABEL_115;
  }

LABEL_106:
  if (!a5)
  {
    v80 = v17 | 0x800;
    v81 = a1;
    v82 = a6;
    v83 = a7;
LABEL_108:
    result = xo_do_format_field(v81, 0, v82, v83, v80);
  }

LABEL_223:
  v145 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xo_parse_args(int a1, uint64_t *a2)
{
  if (!xo_program)
  {
    xo_program = *a2;
    v4 = xo_program;
    v5 = strrchr(xo_program, 47);
    if (v5)
    {
      v4 = v5 + 1;
      xo_program = (v5 + 1);
    }

    v6 = strlen(v4);
    if (v6 >= 6)
    {
      v7 = &v4[v6 - 5];
      if (!strcmp(v7, ".test"))
      {
        *v7 = 0;
      }
    }
  }

  if (!*xo_default_inited())
  {
    xo_default_init();
  }

  v8 = xo_default_handle();
  v9 = 1;
  if (a1 < 2)
  {
LABEL_28:
    if ((*(v8 + 3) & 2) != 0 && isatty(1))
    {
      *v8 |= 0x4000000uLL;
    }

    a2[v9] = 0;
    return v9;
  }

  LODWORD(v10) = 1;
  while (1)
  {
    v11 = a2[v10];
    if (!v11 || strncmp(a2[v10], xo_parse_args_libxo_opt, 7uLL))
    {
      if (v9 != v10)
      {
        a2[v9] = v11;
      }

      v9 = (v9 + 1);
      goto LABEL_16;
    }

    v12 = (v11 + 7);
    v13 = *(v11 + 7);
    if (v13 <= 0x39)
    {
      break;
    }

    if (v13 != 58)
    {
      if (v13 != 61)
      {
        goto LABEL_35;
      }

      v12 = (v11 + 8);
    }

    if ((xo_set_options(v8, v12) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_16:
    LODWORD(v10) = v10 + 1;
    if (v10 >= a1)
    {
      goto LABEL_28;
    }
  }

  if (*(v11 + 7))
  {
    if (v13 == 45 && !strcmp((v11 + 8), "check"))
    {
      exit(121);
    }

LABEL_35:
    xo_warnx("unknown libxo option: '%s'");
    return 0xFFFFFFFFLL;
  }

  v10 = v10 + 1;
  v14 = a2[v10];
  if (v14)
  {
    if ((xo_set_options(v8, v14) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_16;
  }

  xo_warnx("missing libxo option");
  return 0xFFFFFFFFLL;
}

size_t xo_dump_stack(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v1 = xo_default_handle();
  }

  v2 = MEMORY[0x29EDCA610];
  result = fwrite("Stack dump:\n", 0xCuLL, 1uLL, *MEMORY[0x29EDCA610]);
  if (*(v1 + 176) >= 1)
  {
    v4 = 0;
    v5 = (*(v1 + 168) + 32);
    do
    {
      v6 = *(v5 - 1);
      v7 = "unknown";
      if (v6 <= 0xE)
      {
        v7 = xo_state_name_names[v6];
      }

      ++v4;
      v8 = *v5;
      if (!*v5)
      {
        v8 = "--";
      }

      result = fprintf(*v2, "   [%d] %s '%s' [%x]\n", v4, v7, v8, *(v5 - 2));
      v5 += 3;
    }

    while (v4 < *(v1 + 176));
  }

  return result;
}

char *xo_set_version_h(char *result, char *__s)
{
  v3 = result;
  if (result)
  {
    if (!__s)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!*xo_default_inited())
  {
    xo_default_init();
  }

  result = xo_default_handle();
  v3 = result;
  if (__s)
  {
LABEL_7:
    result = strchr(__s, 34);
    if (!result)
    {
      v9 = *(v3 + 16);
      switch(v9)
      {
        case 5:

          return xo_encoder_handle(v3, 16, 0, __s, 0);
        case 2:
          result = xo_strndup(__s, 0xFFFFFFFFFFFFFFFFLL);
          *(v3 + 432) = result;
          break;
        case 1:
          return xo_attr_h(v3, "version", "%s", v4, v5, v6, v7, v8, __s);
      }
    }
  }

  return result;
}

uint64_t xo_emit_warn_hcv(uint64_t result, int a2, int a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a5;
  v9 = result;
  v63 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
    v9 = result;
  }

  if (a4)
  {
    xo_open_marker_h(v9, "xo_emit_warn_hcv");
    if (a2)
    {
      v14 = "__warning";
    }

    else
    {
      v14 = "__error";
    }

    xo_transition(v9, 0, v14, 1, v10, v11, v12, v13);
    if (xo_program)
    {
      xo_emit("{wc:program}", v15, v16, v17, v18, v19, v20, v21, xo_program);
    }

    if (*(v9 + 16) - 1 <= 1)
    {
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      v38 = 0x2000;
      v36 = xo_realloc(0, 0x2000);
      v37 = v36;
      xo_depth_check(v34, 128);
      *(&v45 + 1) = a5;
      xo_do_emit(v34, 0, a4);
      *(&v45 + 1) = 0;
      xo_format_value(v9, "message", 7uLL, v36, v37 - v36, 0, 0, 0, 0, 0);
      xo_free(*(&v43 + 1));
      if (v36)
      {
        xo_free(v36);
      }

      v5 = a5;
    }

    xo_emit_hv(v9, a4, v5);
    v22 = strlen(a4);
    if (v22 >= 1 && a4[v22 - 1] != 10)
    {
      if (a3 >= 1)
      {
        v30 = strerror(a3);
        if (v30)
        {
          xo_emit_h(v9, ": {G:strerror}{g:error/%s}", v24, v25, v26, v27, v28, v29, v30);
        }
      }

      xo_emit("\n", v23, v24, v25, v26, v27, v28, v29, v32);
    }

    xo_close_marker_h(v9, "xo_emit_warn_hcv");
    result = xo_flush_h(v9);
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

void xo_emit_err_v(int a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = xo_emit_warn_hcv(0, 0, a2, a3, a4);
  xo_finish(v5, v6, v7, v8, v9, v10, v11, v12);
  exit(a1);
}

uint64_t xo_get_private(uint64_t a1)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  return *(a1 + 464);
}

uint64_t xo_set_private(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *(result + 464) = a2;
  return result;
}

uint64_t xo_get_encoder(uint64_t a1)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  return *(a1 + 456);
}

uint64_t xo_set_encoder(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *(result + 16) = 5;
  *(result + 456) = a2;
  return result;
}

uint64_t xo_explicit_transition(uint64_t result, int a2, char *__s1, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = result;
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
    v11 = result;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {

      return xo_do_open_instance(v11, a4, __s1);
    }

    else if (a2 == 6)
    {
      xo_depth_change(v11, __s1, 1, 1, 5, (a4 >> 7) & 8);
      v12 = *v11;
      if ((*v11 & 0x2000) != 0)
      {
        *(*(v11 + 168) + 24 * *(v11 + 176)) |= 1u;
        *v11 = v12 & 0xFFFFFFFFFFFFDFFFLL;
      }

      return xo_do_close_instance(v11, __s1);
    }
  }

  else if (a2 == 3)
  {

    return xo_do_open_list(v11, a4, __s1, a4, a5, a6, a7, a8);
  }

  else if (a2 == 4)
  {
    xo_depth_change(v11, __s1, 1, 1, 3, (a4 >> 7) & 8 | (*v11 >> 13) & 1 | 2);

    return xo_do_close_list(v11, __s1);
  }

  return result;
}

uint64_t xo_do_open_list(uint64_t a1, uint64_t a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __s;
  v10 = a1;
  v29[1] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v10 = xo_default_handle();
  }

  v11 = *(v10 + 16);
  if (v11 == 5)
  {
    v24 = xo_encoder_handle(v10, 4, v8, 0, a2);
LABEL_29:
    v25 = 0;
    goto LABEL_32;
  }

  if (v11 != 2)
  {
    v24 = 0;
    goto LABEL_29;
  }

  if ((*v10 & 0x10000) == 0 && (*(v10 + 8) & 4) == 0)
  {
    xo_emit_top(v10);
  }

  if (!v8)
  {
    xo_failure(v10, "NULL passed for list name");
    v8 = "failure";
  }

  v12 = *v10;
  v13 = (*(v10 + 168) + 24 * *(v10 + 176));
  v14 = *v13;
  if ((*v10 & 0x2000) != 0)
  {
    v14 |= 1u;
    *v13 = v14;
    v12 &= ~0x2000uLL;
    *v10 = v12;
  }

  v15 = ",\n";
  if ((v12 & 2) == 0)
  {
    v15 = ", ";
  }

  if (v14)
  {
    LOBYTE(v16) = v15;
  }

  else
  {
    v16 = &xo_version_extra;
  }

  *v13 = v14 | 1;
  if ((v12 & 0x100000) != 0)
  {
    v17 = strlen(v8);
    v18 = MEMORY[0x2A1C7C4A8](v17);
    v19 = v29 - ((v18 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v19, v18 + 1);
    if (v19 < &v19[v17 + 1])
    {
      v20 = v19 - 1;
      v21 = v8;
      do
      {
        v23 = *v21++;
        v22 = v23;
        if (v23 == 45)
        {
          v22 = 95;
        }

        *++v20 = v22;
      }

      while (v20 < &v19[v17]);
    }
  }

  if ((v12 & 2) != 0)
  {
    v26 = (*(v10 + 20) & (*(v10 + 8) << 29 >> 31)) + *(v10 + 20) * *(v10 + 18);
  }

  v24 = xo_printf(v10, "%s%*s%s: [%s", __s, a4, a5, a6, a7, a8, v16);
  v25 = 1;
LABEL_32:
  xo_depth_change(v10, v8, 1, v25, 3, (a2 >> 7) & 8 | 2);
  v27 = *MEMORY[0x29EDCA608];
  return v24;
}

uint64_t xo_do_open_instance(uint64_t a1, uint64_t a2, char *__s)
{
  v5 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v5 = xo_default_handle();
  }

  if ((*v5 & 2) != 0)
  {
    v6 = "\n";
  }

  else
  {
    v6 = &xo_version_extra;
  }

  if (!__s)
  {
    xo_failure(v5, "NULL passed for instance name");
    __s = "failure";
  }

  strlen(__s);
  xo_xml_leader_len(v5, __s);
  v13 = *v5;
  v14 = *v5 | a2;
  v15 = *(v5 + 16);
  switch(v15)
  {
    case 5:
      v20 = xo_encoder_handle(v5, 8, __s, 0, v14);
      break;
    case 2:
      v17 = (*(v5 + 168) + 24 * *(v5 + 176));
      v18 = *v17;
      if ((v13 & 0x2000) != 0)
      {
        v18 |= 1u;
        *v17 = v18;
        v13 &= ~0x2000uLL;
        *v5 = v13;
      }

      v19 = ",\n";
      if ((v13 & 2) == 0)
      {
        v19 = ", ";
      }

      if ((v18 & 1) == 0)
      {
        v19 = &xo_version_extra;
      }

      *v17 = v18 | 1;
      if ((v13 & 2) != 0)
      {
        v21 = (*(v5 + 20) & (*(v5 + 8) << 29 >> 31)) + *(v5 + 20) * *(v5 + 18);
      }

      v20 = xo_printf(v5, "%s%*s{%s", v7, v8, v9, v10, v11, v12, v19);
      break;
    case 1:
      if ((v13 & 2) != 0)
      {
        v16 = (*(v5 + 20) & (*(v5 + 8) << 29 >> 31)) + *(v5 + 20) * *(v5 + 18);
      }

      else
      {
        LOBYTE(v16) = 0;
      }

      v22 = xo_printf(v5, "%*s<%s%s", v7, v8, v9, v10, v11, v12, v16);
      v29 = v22;
      v31 = *(v5 + 120);
      v30 = *(v5 + 128);
      v32 = v30 - v31;
      if (v30 == v31)
      {
        goto LABEL_35;
      }

      v29 = v32 + v22;
      if (v31)
      {
        v34 = *(v5 + 72);
        v33 = *(v5 + 80);
        if (v33 + v32 < v34 + *(v5 + 88))
        {
LABEL_33:
          memcpy(v33, v31, v32);
          *(v5 + 80) += v32;
          goto LABEL_34;
        }

        v35 = (v33 + v32 - v34 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        v36 = xo_realloc(*(v5 + 72), v35);
        if (v36)
        {
          v37 = v36;
          v33 = (v36 + *(v5 + 80) - *(v5 + 72));
          *(v5 + 72) = v37;
          *(v5 + 80) = v33;
          *(v5 + 88) = v35;
          goto LABEL_33;
        }
      }

LABEL_34:
      *(v5 + 128) = *(v5 + 120);
LABEL_35:
      v20 = xo_printf(v5, ">%s", v23, v24, v25, v26, v27, v28, v6) + v29;
      break;
    default:
      v20 = 0;
      break;
  }

  xo_depth_change(v5, __s, 1, 1, 5, (v14 >> 7) & 8);
  return v20;
}

uint64_t xo_do_close_instance(uint64_t a1, char *__s)
{
  v3 = a1;
  v26[1] = *MEMORY[0x29EDCA608];
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
      __s = v26 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
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
      xo_depth_change(v3, __s, -1, -1, 6, 0);
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
          xo_depth_change(v3, __s, -1, 0, 6, 0);
          result = xo_encoder_handle(v3, 9, __s, 0, 0);
        }

        goto LABEL_28;
      }

LABEL_21:
      xo_depth_change(v3, __s, -1, 0, 6, 0);
      result = 0;
      goto LABEL_28;
    }

    if ((*v3 & 2) != 0)
    {
      v17 = "\n";
    }

    else
    {
      v17 = &xo_version_extra;
    }

    xo_depth_change(v3, __s, -1, -1, 6, 0);
    if ((*v3 & 2) != 0)
    {
      v24 = (*(v3 + 20) & (*(v3 + 8) << 29 >> 31)) + *(v3 + 20) * *(v3 + 18);
    }

    result = xo_printf(v3, "%s%*s}", v18, v19, v20, v21, v22, v23, v17);
    *(*(v3 + 168) + 24 * *(v3 + 176)) |= 1u;
  }

LABEL_28:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xo_do_close_list(uint64_t a1, char *__s1)
{
  v2 = __s1;
  v19[1] = *MEMORY[0x29EDCA608];
  if (!__s1)
  {
    v4 = *(a1 + 168) + 24 * *(a1 + 176);
    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = strlen(*(v4 + 8));
      v7 = MEMORY[0x2A1C7C4A8]();
      v2 = v19 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
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
    xo_depth_change(a1, v2, -1, 0, 4, 2);
    result = xo_encoder_handle(a1, 5, v2, 0, 0);
  }

  else
  {
    if (v8 == 2)
    {
      v9 = (*(a1 + 168) + 24 * *(a1 + 176));
      v10 = &xo_version_extra;
      if (*v9)
      {
        if ((*a1 & 2) != 0)
        {
          v10 = "\n";
        }

        else
        {
          v10 = &xo_version_extra;
        }
      }

      *v9 |= 1u;
      xo_depth_change(a1, v2, -1, -1, 4, 2);
      xo_indent(a1);
      result = xo_printf(a1, "%s%*s]", v11, v12, v13, v14, v15, v16, v10);
    }

    else
    {
      xo_depth_change(a1, v2, -1, 0, 4, 2);
      result = 0;
    }

    *(*(a1 + 168) + 24 * *(a1 + 176)) |= 1u;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *xo_default_init()
{
  v0 = xo_default_handle();
  xo_init_handle(v0);
  if ((v0[1] & 1) == 0)
  {
    v1 = getenv("LIBXO_OPTIONS");
    if (v1)
    {
      xo_set_options_simple(v0, v1);
    }
  }

  result = xo_default_inited();
  *result = 1;
  return result;
}

uint64_t xo_set_options_simple(_BYTE *a1, char *__s)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v4 = strlen(__s) + 1;
  v5 = v14 - ((MEMORY[0x2A1C7C4A8]() + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v5, v4);
  result = memcpy(v5, __s, v4);
  v7 = &v5[v4 - 1];
  if (v5 < v7)
  {
    do
    {
      v8 = strchr(v5, 44);
      v9 = v8;
      if (v8)
      {
        *v8 = 0;
        v9 = v8 + 1;
      }

      v10 = strchr(v5, 61);
      v11 = v10;
      if (v10)
      {
        *v10 = 0;
        v11 = v10 + 1;
      }

      if (!strcmp("colors", v5))
      {
        result = xo_set_color_map(a1, v11);
        if (!v9)
        {
          break;
        }
      }

      else
      {
        result = xo_name_lookup(xo_xof_simple_names, v5, 0xFFFFFFFFFFFFFFFFLL);
        if (result)
        {
          v12 = *a1 | result;
        }

        else
        {
          result = strcmp(v5, "no-color");
          if (result)
          {
            result = xo_failure(a1, "unknown simple option: %s");
            break;
          }

          v12 = *a1 & 0xFFFFFFFFFDFFFFFFLL;
        }

        *a1 = v12;
        if (!v9)
        {
          break;
        }
      }

      v5 = v9;
    }

    while (v9 < v7);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

const char *xo_name_lookup(void *a1, char *__s2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    v3 = strlen(__s2);
  }

  v6 = v3 + 1;
  v7 = MEMORY[0x29EDCA600];
  for (i = __s2; ; ++i)
  {
    v9 = *i;
    if ((v9 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v7 + 4 * v9 + 60) & 0x4000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    --v6;
  }

  if (__maskrune(v9, 0x4000uLL))
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = &__s2[v3];
  do
  {
    v12 = *v10--;
    v11 = v12;
    if ((v12 & 0x80000000) != 0)
    {
      v13 = __maskrune(v11, 0x4000uLL);
    }

    else
    {
      v13 = *(v7 + 4 * v11 + 60) & 0x4000;
    }

    --v6;
  }

  while (v13);
  if (!*i)
  {
    return 0;
  }

  result = a1[1];
  if (result)
  {
    while (strncmp(result, i, v6))
    {
      result = a1[3];
      a1 += 2;
      if (!result)
      {
        return result;
      }
    }

    return *a1;
  }

  return result;
}

uint64_t xo_buf_escape(uint64_t a1, uint64_t *a2, void *__src, uint64_t __n, unsigned int a5)
{
  v6 = __n;
  v10 = a2[1];
  if (v10 + __n >= *a2 + a2[2])
  {
    v11 = (v10 + __n - *a2 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(*a2, v11);
    if (!result)
    {
      return result;
    }

    v13 = result;
    v10 = (result + a2[1] - *a2);
    *a2 = v13;
    a2[1] = v10;
    a2[2] = v11;
  }

  result = memcpy(v10, __src, v6);
  v14 = *(a1 + 16);
  if (v14 > 2)
  {
    if (v14 == 4)
    {
      result = xo_escape_sdparams(a2, v6);
      goto LABEL_12;
    }

    if (v14 != 3)
    {
      goto LABEL_13;
    }

LABEL_10:
    result = xo_escape_xml(a2, v6, a5);
    goto LABEL_12;
  }

  if (v14 == 1)
  {
    goto LABEL_10;
  }

  if (v14 == 2)
  {
    result = xo_escape_json(a2, v6);
LABEL_12:
    v6 = result;
  }

LABEL_13:
  a2[1] += v6;
  return result;
}

uint64_t xo_do_format_field(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5)
{
  v5 = a5;
  v6 = a1;
  if ((a5 & 0x100) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = *a1;
  v9 = 2;
  if ((*a1 & 0x20000000) == 0)
  {
    if (*(a1 + 16))
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }
  }

  v99 = *(a1 + 376);
  v98 = v9;
  if ((a5 & 0x80000) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  v105 = v10;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (a1 + 72);
  }

  v96 = *v11;
  v97 = v11[1];
  if (a4 < 1)
  {
    if ((*&v5 & 0x180000) == 0)
    {
      return 0;
    }

LABEL_250:
    v91 = xo_format_gettext(v6, v5, v97 - v96, v99, v98);
    v92 = v91;
    if ((*(v6 + 2) & 0x20) != 0)
    {
      *(v6 + 376) += v91 - v99;
    }

    if ((*(v6 + 8) & 8) == 0)
    {
      return 0;
    }

    result = 0;
    *(v6 + 352) += v92 - v99;
    return result;
  }

  v12 = 0;
  v13 = a3;
  v14 = &a3[a4];
  v118[0] = 0;
  v101 = &a3[a4 - 2];
  v103 = &a3[a4 - 1];
  v104 = v5;
  v117 = 0u;
  v111 = v7;
  v114 = v11;
  v115 = &a3[a4];
  while (2)
  {
    v15 = *v13;
    if (v15 != 37)
    {
      if (!v12)
      {
        v12 = v13;
      }

      if (v15 == 92)
      {
        if (v13[1])
        {
          v16 = v13 + 1;
        }

        else
        {
          v16 = v13;
        }
      }

      else
      {
        v16 = v13;
      }

      goto LABEL_226;
    }

    v16 = v13 + 1;
    if ((v13 + 1) < v14 && *v16 == 37)
    {
      if (!v12)
      {
        v12 = (v13 + 1);
      }

      goto LABEL_226;
    }

    if ((v5 & 0x800) == 0 && v12)
    {
      v17 = xo_format_string_direct(v6, v11, v5 | 0x4000, 0, v12, v13 - v12, -1, v105, 2);
      v8 = *v6;
      if ((*v6 & 0x200000) != 0)
      {
        *(v6 + 376) += v17;
      }

      if ((*(v6 + 8) & 8) != 0)
      {
        *(v6 + 352) += v17;
      }
    }

    v118[0] = 0;
    HIDWORD(v117) = -1;
    *(&v117 + 4) = -1;
    if (*v16 != 64)
    {
      v18 = v13;
      if ((v8 & 8) == 0)
      {
        goto LABEL_45;
      }

LABEL_51:
      if (v7 != 1)
      {
        v61 = *(v6 + 16) - 1;
        if (v61 >= 5 || ((0x1Bu >> v61) & 1) == 0)
        {
LABEL_129:
          v21 = 1;
          if ((v5 & 0x800) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

    v18 = v13 + 2;
    if ((v13 + 2) < v14)
    {
      v19 = v101 - v13;
      do
      {
        v20 = *v18;
        if (v20 == 42)
        {
          if ((v8 & 0x200) == 0)
          {
            *(v6 + 200) += 8;
          }
        }

        else if (v20 == 64)
        {
          goto LABEL_44;
        }

        ++v18;
        --v19;
      }

      while (v19);
      v18 = v14;
    }

LABEL_44:
    if ((v8 & 8) != 0)
    {
      goto LABEL_51;
    }

LABEL_45:
    v21 = 0;
    if ((v8 & 0x40) != 0 && v7)
    {
      if (*(v6 + 16) != 3)
      {
        goto LABEL_129;
      }

LABEL_52:
      v21 = 0;
    }

    if ((v5 & 0x800) != 0)
    {
LABEL_54:
      v21 = 1;
    }

LABEL_55:
    v16 = v18 + 1;
    v116 = v21;
    v22 = 0;
    if ((v18 + 1) >= v14)
    {
      v113 = 0;
      LOBYTE(v23) = 0;
      __ca = 32;
      goto LABEL_95;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = v103 - v18;
    v31 = -1;
    while (1)
    {
      v32 = *v16;
      if (v32 > 0x6B)
      {
        if (*v16 > 0x73u)
        {
          if (v32 == 116)
          {
            ++v26;
            goto LABEL_89;
          }

          if (v32 == 122)
          {
            ++v27;
            goto LABEL_89;
          }
        }

        else
        {
          if (v32 == 108)
          {
            v23 = (v23 + 1);
            goto LABEL_89;
          }

          if (v32 == 113)
          {
            v28 = (v28 + 1);
            goto LABEL_89;
          }
        }
      }

      else if (*v16 > 0x67u)
      {
        if (v32 == 104)
        {
          ++v24;
          goto LABEL_89;
        }

        if (v32 == 106)
        {
          ++v25;
          goto LABEL_89;
        }
      }

      else
      {
        if (v32 == 45)
        {
          v22 = 1;
          goto LABEL_89;
        }

        if (v32 == 46)
        {
          if (++v29 >= 3)
          {
            v94 = "Too many dots in format: '%s'";
LABEL_257:
            xo_failure(v6, v94);
            return -1;
          }

          goto LABEL_89;
        }
      }

      v33 = v32;
      v34 = v32 - 48;
      if (v34 <= 9)
      {
        if (v31 < 0)
        {
          v31 = v33 == 48;
          v34 = *v16 - 48;
        }

        v35 = *(&v117 + v29 + 1);
        if (v35 <= 0)
        {
          v36 = 0;
        }

        else
        {
          v36 = 10 * v35;
        }

        *(&v117 + v29 + 1) = v34 + v36;
        goto LABEL_89;
      }

      if (v33 == 42)
      {
        ++LODWORD(v118[0]);
        *(v118 + v29 + 4) = 1;
        goto LABEL_89;
      }

      v107 = v25;
      v108 = v26;
      __c = v31;
      v112 = v27;
      v37 = v28;
      v38 = v22;
      v39 = v8;
      v40 = v23;
      if (memchr("diouxXDOUeEfFgGaAcCsSpm", v33, 0x18uLL))
      {
        break;
      }

      v28 = v37;
      v6 = a1;
      v27 = v112;
      v26 = v108;
      v31 = __c;
      v25 = v107;
      if (v33 == 118 || (v23 = v40, v8 = v39, v22 = v38, v33 == 110))
      {
        v94 = "unsupported format: '%s'";
        goto LABEL_257;
      }

LABEL_89:
      ++v16;
      if (!--v30)
      {
        goto LABEL_90;
      }
    }

    LOBYTE(v23) = v40;
    LOWORD(v8) = v39;
    LODWORD(v22) = v38;
    v6 = a1;
    v31 = __c;
LABEL_90:
    v113 = v24;
    if (v31 <= 0)
    {
      v41 = 32;
    }

    else
    {
      v41 = 48;
    }

    __ca = v41;
    v5 = v104;
    v7 = v111;
    v11 = v114;
    v14 = v115;
    v21 = v116;
LABEL_95:
    if (v16 == v14)
    {
      v42 = v23;
      v43 = v22;
      xo_failure(v6, "field format missing format character: %s");
      LODWORD(v22) = v43;
      LOBYTE(v23) = v42;
      v8 = *v6;
    }

    v44 = *v16;
    if ((v8 & 0x200) == 0 && (v44 | 0x20) == 0x73)
    {
      for (i = 0; i != 3; ++i)
      {
        if (*(v118 + i + 4))
        {
          v46 = *(v6 + 200);
          *(v6 + 200) = v46 + 2;
          v47 = *v46;
          v48 = v118 + 4 * i + 4;
          *(v48 - 4) = v47;
          if (v47 < 0)
          {
            if (i)
            {
              *(v48 - 4) = -1;
            }

            else
            {
              DWORD1(v117) = -DWORD1(v117);
              LODWORD(v22) = 1;
            }
          }
        }
      }
    }

    v49 = DWORD2(v117);
    if (SDWORD2(v117) > -1 && v117 < 0)
    {
      v51 = DWORD2(v117);
    }

    else
    {
      v51 = HIDWORD(v117);
    }

    HIDWORD(v117) = v51;
    if ((v44 - 68) <= 0x11 && ((1 << (v44 - 68)) & 0x20801) != 0)
    {
      LOBYTE(v23) = 1;
    }

    if (v21)
    {
      goto LABEL_219;
    }

    v100 = v22;
    v106 = v23;
    v52 = v16 - v18;
    v53 = *(v6 + 96);
    v54 = *(v6 + 104);
    v55 = &v54[v16 - v18 + 2];
    if (v55 < v53 + *(v6 + 112))
    {
      goto LABEL_119;
    }

    v56 = (v55 - v53 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    v57 = xo_realloc(v53, v56);
    if (v57)
    {
      v54 = (v57 + *(v6 + 104) - *(v6 + 96));
      *(v6 + 96) = v57;
      *(v6 + 104) = v54;
      *(v6 + 112) = v56;
LABEL_119:
      memcpy(v54, v18, v52 + 1);
      *v54 = 37;
      v54[v52 + 1] = 0;
      v7 = v111;
      v11 = v114;
      if (*(v6 + 48))
      {
LABEL_120:
        v58 = xo_vsnprintf(v6, v114, v54, *(v6 + 200));
        LOBYTE(v23) = v106;
        if (v58 < 1)
        {
          goto LABEL_219;
        }

        v59 = v58;
        if (v111 <= 2)
        {
          if (v111 != 1)
          {
            if (v111 != 2)
            {
              goto LABEL_144;
            }

            if ((v5 & 0x1000) != 0)
            {
              v59 = xo_trim_ws(v114, v58);
            }

            v63 = xo_escape_json(v114, v59);
            goto LABEL_176;
          }

          if ((v5 & 0x1000) != 0)
          {
            v59 = xo_trim_ws(v114, v58);
          }
        }

        else if (v111 != 3)
        {
          if (v111 != 4)
          {
            if (v111 == 5 && (v5 & 0x1000) != 0)
            {
              v59 = xo_trim_ws(v114, v58);
              LOBYTE(v23) = v106;
              v60 = v59;
              goto LABEL_177;
            }

LABEL_144:
            v60 = v58;
LABEL_177:
            if ((*(v6 + 2) & 0x20) != 0)
            {
              *(v6 + 376) += v59;
            }

            if ((*(v6 + 8) & 8) != 0)
            {
              *(v6 + 352) += v59;
            }

LABEL_217:
            if (v60 >= 1)
            {
              v11[1] += v60;
            }

LABEL_219:
            v8 = *v6;
            if ((*v6 & 0x200) != 0)
            {
              goto LABEL_224;
            }

            if ((v44 & 0xFFFFFFDF) == 0x53)
            {
              v14 = v115;
              if (v116)
              {
                goto LABEL_222;
              }

              v12 = 0;
              goto LABEL_226;
            }

            if (v44 == 109)
            {
LABEL_224:
              v12 = 0;
              goto LABEL_225;
            }

            v87 = v23;
            for (j = 0; j != 3; ++j)
            {
              if (*(v118 + j + 4))
              {
                *(v6 + 200) += 8;
              }
            }

            v89 = v8;
            if (memchr("diouxXDOU", v44, 0xAuLL))
            {
              if (v113 < 2u)
              {
                v14 = v115;
                v8 = v89;
LABEL_222:
                v12 = 0;
                *(v6 + 200) += 8;
LABEL_226:
                v13 = v16 + 1;
                if ((v16 + 1) >= v14)
                {
                  if ((v5 & 0x800) == 0 && v12)
                  {
                    v90 = xo_format_string_direct(v6, v11, v5 | 0x4000, 0, v12, v13 - v12, -1, v105, 2);
                    if ((*(v6 + 2) & 0x20) != 0)
                    {
                      *(v6 + 376) += v90;
                    }

                    if ((*(v6 + 8) & 8) != 0)
                    {
                      *(v6 + 352) += v90;
                    }
                  }

                  goto LABEL_250;
                }

                continue;
              }
            }

            else if (!memchr("eEfFgGaA", v44, 9uLL))
            {
              v8 = v89;
              if (v44 != 67 && (v44 != 99 || !v87) && v44 != 99 && v44 != 112)
              {
                goto LABEL_224;
              }

              v12 = 0;
              *(v6 + 200) += 8;
LABEL_225:
              v14 = v115;
              goto LABEL_226;
            }

            v12 = 0;
            *(v6 + 200) += 8;
            v14 = v115;
            v8 = v89;
            goto LABEL_226;
          }

          if ((v5 & 0x1000) != 0)
          {
            v59 = xo_trim_ws(v114, v58);
          }

          v63 = xo_escape_sdparams(v114, v59);
LABEL_176:
          v60 = v63;
          LOBYTE(v23) = v106;
          goto LABEL_177;
        }

        v63 = xo_escape_xml(v114, v59, v5 & 0x200);
        goto LABEL_176;
      }

      switch(v44)
      {
        case 's':
LABEL_134:
          v62 = 1;
          if (v44 != 83 && !v106)
          {
            if (v113)
            {
              v62 = 3;
            }

            else
            {
              v62 = 2;
            }
          }

          break;
        case 'm':
          v62 = 2;
          break;
        case 'S':
          goto LABEL_134;
        default:
          goto LABEL_120;
      }

      if ((*(v6 + 3) & 0x20) != 0)
      {
        v64 = 2;
      }

      else if (*(v6 + 16))
      {
        v64 = 2;
      }

      else
      {
        v64 = 3;
      }

      v65 = v62;
      v66 = (v64 | (v62 << 8));
      if ((v66 - 258) >= 2 && (v66 - 514) >= 2 && (v66 - 770) >= 2)
      {
        xo_failure(v6, "invalid conversion (%c:%c)");
        LOBYTE(v23) = v106;
        v60 = 0;
      }

      else
      {
        v67 = v49;
        v68 = v114[1] - *v114;
        if (v44 == 109)
        {
          v69 = strerror(*(v6 + 440));
          v70 = v69;
          if ((v67 & 0x80000000) == 0)
          {
            v71 = v69;
            goto LABEL_160;
          }

          if (v69)
          {
            v73 = strlen(v69);
            goto LABEL_188;
          }

          if ((v5 & 0x20) == 0)
          {
LABEL_187:
            v73 = 6;
            v70 = xo_format_string_null;
            goto LABEL_188;
          }

LABEL_168:
          if (*(v6 + 16) - 1 > 4)
          {
            goto LABEL_187;
          }

          v74 = (*(v6 + 16) - 1);
          v73 = qword_29998DDE0[v74];
          v70 = (&off_29F27AD58)[v74];
LABEL_188:
          v71 = 0;
          if (v64 == v65 && (DWORD1(v117) & 0x80000000) != 0 && (v67 & v51 & 0x80000000) != 0)
          {
            if ((*(v6 + 8) & 8) == 0 && (*(v6 + 2) & 0x20) == 0)
            {
              v75 = strlen(v70);
              v11 = v114;
              xo_buf_escape(v6, v114, v70, v75, v5);
              v76 = v68 + *v114;
              v60 = v114[1] - v76;
              v114[1] = v76;
LABEL_204:
              v7 = v111;
              LOBYTE(v23) = v106;
              if ((v5 & 0x1000) == 0)
              {
                goto LABEL_217;
              }

LABEL_214:
              v86 = *(v6 + 16);
              if (v86 <= 5 && ((1 << v86) & 0x36) != 0)
              {
                v60 = xo_trim_ws(v11, v60);
                LOBYTE(v23) = v106;
              }

              goto LABEL_217;
            }

            v71 = 0;
          }

          v67 = v73;
        }

        else
        {
          v72 = *(v6 + 200);
          *(v6 + 200) = v72 + 1;
          v71 = *v72;
          if (v62 != 1)
          {
LABEL_160:
            if (v71)
            {
              v73 = v67;
            }

            else
            {
              v73 = 6;
            }

            if (v71)
            {
              v70 = v71;
            }

            else
            {
              v70 = xo_format_string_null;
            }

            if (!v71 && (v5 & 0x20) != 0)
            {
              goto LABEL_168;
            }

            goto LABEL_188;
          }

          if (v71)
          {
            v70 = 0;
          }

          else
          {
            v67 = 6;
            v70 = xo_format_string_null;
          }
        }

        v95 = v65;
        v11 = v114;
        v77 = xo_format_string_direct(v6, v114, v5, v71, v70, v67, v51, v64, v95);
        if (v77 < 0)
        {
          goto LABEL_203;
        }

        v78 = v77;
        v79 = *v114;
        v80 = (v68 + *v114);
        v60 = v114[1] - v80;
        v114[1] = v80;
        v81 = DWORD1(v117);
        if (v78 >= SDWORD1(v117))
        {
          v5 = v104;
          goto LABEL_209;
        }

        if (&v80[DWORD1(v117)] < v79 + v114[2])
        {
          goto LABEL_201;
        }

        v82 = &v80[DWORD1(v117) - v79 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v83 = xo_realloc(v79, v82);
        v11 = v114;
        if (!v83)
        {
LABEL_203:
          v60 = 0;
          v11[1] = *v11 + v68;
          v5 = v104;
          goto LABEL_204;
        }

        v80 = (v83 + v114[1] - *v114);
        *v114 = v83;
        v114[1] = v80;
        v114[2] = v82;
LABEL_201:
        v84 = v81 - v78;
        if (v100)
        {
          v80 += v60;
          v85 = v84;
        }

        else
        {
          v85 = v84;
          memmove(&v80[v84], v80, v60);
        }

        v5 = v104;
        memset(v80, __ca, v85);
        v60 += v85;
        v78 += v85;
LABEL_209:
        v7 = v111;
        LOBYTE(v23) = v106;
        if ((*(v6 + 2) & 0x20) != 0)
        {
          *(v6 + 376) += v78;
        }

        if ((*(v6 + 8) & 8) != 0)
        {
          *(v6 + 352) += v78;
        }
      }

      v11 = v114;
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_217;
      }

      goto LABEL_214;
    }

    return -1;
  }
}

uint64_t xo_line_ensure_open(uint64_t result)
{
  v1 = result;
  if ((*result & 0x200000000) != 0)
  {
    v8 = *(result + 8) | 2;
    *result &= ~0x200000000uLL;
    *(result + 8) = v8;
    return result;
  }

  v2 = *(result + 8);
  if ((v2 & 2) == 0 && *(result + 16) == 3)
  {
    *(result + 8) = v2 | 2;
    result = *(result + 72);
    v3 = *(v1 + 80);
    if (v3 + 18 >= (result + *(v1 + 88)))
    {
      v4 = (v3 + 18 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      result = xo_realloc();
      if (!result)
      {
LABEL_8:
        if ((*v1 & 2) == 0)
        {
          return result;
        }

        result = *(v1 + 72);
        v6 = *(v1 + 80);
        if ((v6 + 1) >= result + *(v1 + 88))
        {
          v7 = &v6[-result + 0x2000] & 0xFFFFFFFFFFFFE000;
          result = xo_realloc();
          if (!result)
          {
            return result;
          }

          v6 = (result + *(v1 + 80) - *(v1 + 72));
          *(v1 + 72) = result;
          *(v1 + 80) = v6;
          *(v1 + 88) = v7;
        }

        *v6 = 10;
        ++*(v1 + 80);
        return result;
      }

      v3 = result + *(v1 + 80) - *(v1 + 72);
      *(v1 + 72) = result;
      *(v1 + 80) = v3;
      *(v1 + 88) = v4;
    }

    v5 = *xo_line_ensure_open_div_open;
    *(v3 + 16) = *&xo_line_ensure_open_div_open[16];
    *v3 = v5;
    *(v1 + 80) += 18;
    goto LABEL_8;
  }

  return result;
}

void *xo_info_find(uint64_t a1, const void *a2, size_t a3)
{
  v10[1] = *MEMORY[0x29EDCA608];
  MEMORY[0x2A1C7C4A8]();
  v7 = v10 - ((v6 + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6 + 1);
  memcpy(v7, a2, a3);
  v7[a3] = 0;
  result = bsearch(v7, *(a1 + 184), *(a1 + 192), 0x18uLL, xo_info_compare);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t xo_format_humanize(unint64_t result, unint64_t *a2, void *a3, unsigned int a4)
{
  if ((*(result + 3) & 8) != 0)
  {
    return result;
  }

  v6 = result;
  result = *a2;
  v7 = a2[1];
  if (&v7[-*a2] == *a3)
  {
    return result;
  }

  __endptr = 0;
  if ((v7 + 1) >= result + a2[2])
  {
    v9 = &v7[-result + 0x2000] & 0xFFFFFFFFFFFFE000;
    v10 = xo_realloc(result, v9);
    if (!v10)
    {
      goto LABEL_7;
    }

    v7 = (v10 + a2[1] - *a2);
    *a2 = v10;
    a2[1] = v7;
    a2[2] = v9;
  }

  *v7 = 0;
  ++a2[1];
LABEL_7:
  v11 = strtoull((*a2 + *a3), &__endptr, 0);
  if (v11 == -1)
  {
    result = __error();
    if (*result == 34)
    {
      return result;
    }
  }

  result = *a2;
  v12 = *a3;
  if (__endptr == (*a2 + *a3))
  {
    return result;
  }

  v13 = a2[2];
  v14 = a2[1] + 10;
  if (v14 >= result + v13)
  {
    v13 = (v14 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(result, v13);
    if (!result)
    {
      return result;
    }

    *a2 = result;
    a2[2] = v13;
    v12 = *a3;
  }

  v15 = &v12[result];
  a2[1] = &v12[result];
  if (!v11)
  {
    if (result)
    {
      v16 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_24;
    }

LABEL_69:
    xo_format_humanize_cold_1();
  }

  v16 = -1;
  if (((a4 >> 15) & 8) != 0)
  {
    v21 = v11;
    do
    {
      ++v16;
      v22 = v21 >= 0x3E8;
      v21 /= 0x3E8uLL;
    }

    while (v22);
  }

  else
  {
    v17 = v11;
    do
    {
      ++v16;
      v18 = v17 > 0x3FF;
      v17 >>= 10;
    }

    while (v18);
  }

  if (!result)
  {
    goto LABEL_69;
  }

  v19 = v11;
  v20 = v11 >> 63;
LABEL_24:
  if (v16 < 7 || (v16 & 0x30) != 0)
  {
    v23 = v13 - v12;
    if (v13 != v12)
    {
      *v15 = 0;
    }

    if (v11 < 0)
    {
      v24 = -100;
    }

    else
    {
      v24 = 100;
    }

    v25 = 2;
    result = &xo_version_extra;
    if (v11 < 0)
    {
      v25 = 3;
    }

    v26 = ((a4 >> 15) & 2) >> 1;
    if (v23 > v25 + v26)
    {
      result = v19 * v24;
      __size = v13 - v12;
      if ((v16 & 0x30) != 0)
      {
        v38 = v15;
        if (v23 - (v25 + v26) < 1)
        {
          v28 = 100;
        }

        else
        {
          v27 = v13 - v26 - v25 - v12 + 1;
          v28 = 100;
          do
          {
            v28 *= 10;
            --v27;
          }

          while (v27 > 1);
        }

        v36 = v25 + v26;
        if ((__PAIR128__(v20, v19) * __PAIR128__(v11 >> 63, v24)) >= v28)
        {
          v31 = 0;
          do
          {
            result = __udivti3();
            v29 = v31 + 1;
            if (__PAIR128__(v32, result) < v28)
            {
              break;
            }

            v22 = v31++ >= 6;
          }

          while (!v22);
        }

        else
        {
          v29 = 0;
        }

        if ((v16 & 0x10) != 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v16 >= 7)
        {
          v29 = 7;
        }

        else
        {
          v29 = v16;
        }

        if (!v16)
        {
          goto LABEL_64;
        }

        v36 = v25 + v26;
        v38 = v15;
        v30 = v29;
        do
        {
          result = __divti3();
          --v30;
        }

        while (v30);
      }

      if ((a4 & 0x20000) != 0)
      {
        v15 = v38;
        if (result <= 0x3E2 && v29)
        {
          if (v36 + 3 > __size)
          {
            return result;
          }

          v37 = ((result + 5) / 100);
          if (v11 >= 0)
          {
            v33 = &xo_version_extra;
          }

          else
          {
            v33 = "-";
          }

          decimal_point = localeconv()->decimal_point;
          result = snprintf(v38, __size, "%s%d%s%d%s%s%s", v33, v37);
          goto LABEL_65;
        }
      }

      else
      {
        v15 = v38;
      }

LABEL_64:
      __divti3();
      result = snprintf(v15, __size, "%s%lld%s%s%s");
LABEL_65:
      v29 = result;
LABEL_66:
      if (v29 >= 1)
      {
        a2[1] += v29;
        v35 = a3[2];
        *(v6 + 376) = a3[1] + v29;
        *(v6 + 352) = v35 + v29;
      }
    }
  }

  return result;
}

uint64_t xo_escape_json(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = a1[1];
    v6 = v5;
    do
    {
      v7 = *v6;
      if (v7 > 0x21)
      {
        if (v7 == 92 || v7 == 34)
        {
          ++v4;
        }
      }

      else
      {
        v8 = v7 == 10 || v7 == 13;
        if (v8)
        {
          ++v4;
        }
      }

      ++v6;
    }

    while (v6 < &v5[a2]);
    if (v4)
    {
      v9 = *a1;
      if (&v5[v4] >= *a1 + a1[2])
      {
        v10 = &v5[v4 - v9 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v11 = xo_realloc();
        if (!v11)
        {
          return 0;
        }

        v5 = (v11 + a1[1] - *a1);
        *a1 = v11;
        a1[1] = v5;
        a1[2] = v10;
      }

      v12 = &v5[v2 + v4];
      v13 = &v5[v2 - 1];
      while (1)
      {
        v14 = *v13;
        if (v14 > 0x21)
        {
          break;
        }

        if (v14 != 10)
        {
          if (v14 == 13)
          {
            *(v12 - 1) = 29276;
            v12 -= 2;
            goto LABEL_28;
          }

LABEL_26:
          *--v12 = v14;
          goto LABEL_28;
        }

        *(v12 - 1) = 28252;
        v12 -= 2;
LABEL_28:
        if (v13 > v5)
        {
          v8 = v13-- == v12;
          if (!v8)
          {
            continue;
          }
        }

        v2 += v4;
        return v2;
      }

      if (v14 == 92 || v14 == 34)
      {
        *(v12 - 2) = 92;
        v12 -= 2;
        v12[1] = v14;
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

  return v2;
}

uint64_t xo_escape_sdparams(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = a1[1];
    v6 = v5;
    do
    {
      v7 = *v6 - 34;
      v8 = v7 > 0x3B;
      v9 = (1 << v7) & 0xC00000000000001;
      v10 = v8 || v9 == 0;
      if (!v10)
      {
        ++v4;
      }

      ++v6;
    }

    while (v6 < &v5[a2]);
    if (v4)
    {
      v11 = *a1;
      if (&v5[v4] >= *a1 + a1[2])
      {
        v12 = &v5[v4 - v11 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v13 = xo_realloc();
        if (!v13)
        {
          return 0;
        }

        v5 = (v13 + a1[1] - *a1);
        *a1 = v13;
        a1[1] = v5;
        a1[2] = v12;
      }

      v14 = &v5[v2 + v4];
      v15 = &v5[v2 - 1];
      do
      {
        v16 = *v15;
        if ((v16 - 34) > 0x3B || ((1 << (v16 - 34)) & 0xC00000000000001) == 0)
        {
          *--v14 = v16;
        }

        else
        {
          *(v14 - 2) = 92;
          v14 -= 2;
          v14[1] = v16;
        }

        if (v15 <= v5)
        {
          break;
        }

        v10 = v15-- == v14;
      }

      while (!v10);
      v2 += v4;
    }
  }

  return v2;
}