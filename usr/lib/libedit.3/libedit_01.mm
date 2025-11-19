int rl_insert(int a1, int a2)
{
  v2 = a2;
  if (qword_2A13BD708)
  {
    v4 = qword_2A18CB778 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    rl_initialize();
  }

  v7[0] = v2;
  v7[1] = 0;
  if (a1 >= 1)
  {
    v5 = a1 + 1;
    do
    {
      el_push(qword_2A18CB778, v7);
      --v5;
    }

    while (v5 > 1);
  }

  return 0;
}

int rl_read_key(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = qword_2A18CB778;
  if (qword_2A18CB778)
  {
    v1 = qword_2A13BD708 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    rl_initialize();
    v0 = qword_2A18CB778;
  }

  result = el_getc(v0, v4);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void rl_reset_terminal(const char *a1)
{
  v1 = qword_2A18CB778;
  if (qword_2A13BD708)
  {
    v2 = qword_2A18CB778 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    rl_initialize();
    v1 = qword_2A18CB778;
  }

  el_reset(v1);
}

int rl_insert_text(const char *a1)
{
  if (a1)
  {
    v1 = a1;
    if (!*a1)
    {
      goto LABEL_11;
    }

    v2 = qword_2A18CB778;
    if (!qword_2A13BD708 || qword_2A18CB778 == 0)
    {
      rl_initialize();
      v2 = qword_2A18CB778;
    }

    if (el_insertstr(v2, v1) < 0)
    {
LABEL_11:
      LODWORD(a1) = 0;
    }

    else
    {
      LODWORD(a1) = strlen(v1);
    }
  }

  return a1;
}

int rl_add_defun(const char *a1, Function *a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a3 <= 0xFF)
  {
    qword_2A13BD838[a3] = a2;
    el_set(qword_2A18CB778, 9, a1, a1, sub_29874AB78);
    vis(v7, a3, 92, 0);
    el_set(qword_2A18CB778, 4, v7, a1, 0);
    result = 0;
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29874AB78(uint64_t a1, uint64_t a2)
{
  if (!qword_2A13BD838[a2])
  {
    return 6;
  }

  v3 = el_line(qword_2A18CB778);
  buffer = v3->buffer;
  rl_point = LODWORD(v3->cursor) - LODWORD(v3->buffer);
  rl_end = LODWORD(v3->lastchar) - buffer;
  (qword_2A13BD838[a2])(0, a2);
  return 2 * (dword_2A13BE4C0 != 0);
}

void rl_callback_read_char(void)
{
  v9 = 0;
  v0 = el_gets(qword_2A18CB778, &v9);
  if (v0 && (v1 = v9, v2 = v9 - 1, --v9, v1 > 0))
  {
    v3 = v0;
    if (v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = *v0 == *(qword_2A18CB778 + 510);
    }

    v7 = v0[v2];
    if (v7 == 13 || v7 == 10)
    {
      v4 = 2;
    }

    if (v4 && off_2A18CB788)
    {
      el_set(qword_2A18CB778, 15, 0);
      if (v4 == 2)
      {
        v6 = strdup(v3);
        if (v6)
        {
          v6[v9] = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = off_2A18CB788;
      goto LABEL_22;
    }
  }

  else
  {
    v5 = off_2A18CB788;
    if (off_2A18CB788 && *(qword_2A18CB778 + 137) == 255)
    {
      v6 = 0;
LABEL_22:
      v5(v6);
    }
  }
}

void rl_callback_handler_install(const char *a1, VCPFunction *a2)
{
  if (!qword_2A18CB778)
  {
    rl_initialize();
  }

  rl_set_prompt(a1);
  off_2A18CB788 = a2;
  el_set(qword_2A18CB778, 15, 1);
}

int rl_get_previous_history(int a1, int a2)
{
  v4[0] = a2;
  v4[1] = 0;
  if (a1)
  {
    v2 = a1;
    do
    {
      --v2;
      el_push(qword_2A18CB778, v4);
    }

    while (v2);
  }

  return 0;
}

int rl_parse_and_bind(const char *a1)
{
  v5 = 0;
  v4 = 0;
  v2 = tok_init(0);
  tok_str(v2, a1, &v4, &v5);
  v4 = el_parse(qword_2A18CB778, v4, v5);
  tok_end(v2);
  return v4 != 0;
}

void rl_stuff_char(int a1)
{
  v1[0] = a1;
  v1[1] = 0;
  el_insertstr(qword_2A18CB778, v1);
}

void rl_get_screen_size(int *a1, int *a2)
{
  if (a1)
  {
    el_get(qword_2A18CB778, 17, "li", a1, 0);
  }

  if (a2)
  {
    el_get(qword_2A18CB778, 17, "co", a2, 0);
  }
}

void rl_set_screen_size(int a1, int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x40uLL, "%d", a1);
  el_set(qword_2A18CB778, 6, "li", __str, 0);
  snprintf(__str, 0x40uLL, "%d", a2);
  el_set(qword_2A18CB778, 6, "co", __str, 0);
  v3 = *MEMORY[0x29EDCA608];
}

char **__cdecl rl_completion_matches(const char *a1, rl_compentry_func_t *a2)
{
  v4 = malloc_type_malloc(0x50uLL, 0x10040436913F5uLL);
  if (!v4)
  {
    return v4;
  }

  v5 = (a2)(a1, 0);
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = 0;
  v7 = 10;
  do
  {
    *&v4[8 * v6 + 8] = v5;
    if (v6 + 2 == v7)
    {
      v7 += 10;
      v8 = malloc_type_realloc(v4, 8 * v7, 0x10040436913F5uLL);
      if (!v8)
      {
        goto LABEL_27;
      }

      v4 = v8;
    }

    v5 = (a2)(a1, ++v6);
  }

  while (v5);
  if (!v6)
  {
    goto LABEL_27;
  }

  *&v4[8 * v6 + 8] = 0;
  if (v6 == 1)
  {
    v9 = *(v4 + 1);
    goto LABEL_11;
  }

  qsort(v4 + 8, v6, 8uLL, sub_29874B230);
  v11 = *(v4 + 1);
  v12 = -1;
  v13 = 1;
  do
  {
    v14 = v11;
    ++v13;
    v11 = *&v4[8 * v13];
    v15 = *v14;
    if (*v14)
    {
      v16 = 0;
      v17 = v14 + 1;
      while (v15 == v11[v16])
      {
        v18 = v16 + 1;
        v15 = v17[v16++];
        if (!v15)
        {
          goto LABEL_21;
        }
      }

      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

LABEL_21:
    if (v12 >= v18)
    {
      v12 = v18;
    }
  }

  while (v6 != v13);
  if (!v12)
  {
    if (*a1)
    {
      v9 = a1;
LABEL_11:
      v10 = strdup(v9);
      *v4 = v10;
      if (!v10)
      {
        goto LABEL_27;
      }

      return v4;
    }

    v12 = 0;
  }

  v19 = malloc_type_malloc(v12 + 1, 0x100004077774924uLL);
  *v4 = v19;
  if (!v19)
  {
LABEL_27:
    free(v4);
    return 0;
  }

  memcpy(v19, *(v4 + 1), v12);
  *(*v4 + v12) = 0;
  return v4;
}

HISTORY_STATE *history_get_history_state(void)
{
  result = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (result)
  {
    result->length = history_length;
  }

  return result;
}

uint64_t sub_29874B2FC(uint64_t a1, __int32 a2, int a3)
{
  result = wcwidth(a2);
  v7 = result;
  if (result <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = result;
  }

  if (a3)
  {
    while (*(a1 + 848) + v8 > *(a1 + 152))
    {
      result = sub_29874B2FC(a1, 32, 1);
    }
  }

  v9 = *(a1 + 72);
  *(*(v9 + 8 * *(a1 + 852)) + 4 * *(a1 + 848)) = a2;
  if (v7 >= 2)
  {
    v10 = v8 + 1;
    v11 = v8 - 1;
    do
    {
      *(*(v9 + 8 * *(a1 + 852)) + 4 * (v11 + *(a1 + 848))) = -1;
      --v10;
      --v11;
    }

    while (v10 > 2);
  }

  if (a3)
  {
    v12 = *(a1 + 848) + v8;
    *(a1 + 848) = v12;
    v13 = *(a1 + 152);
    if (v12 >= v13)
    {
      *(*(v9 + 8 * *(a1 + 852)) + 4 * v13) = 0;

      return sub_29874B410(a1);
    }
  }

  return result;
}

uint64_t sub_29874B410(uint64_t result)
{
  *(result + 848) = 0;
  v1 = *(result + 852) + 1;
  v2 = *(result + 156);
  if (v1 >= v2)
  {
    v3 = *(result + 72);
    v4 = *v3;
    if (v2 < 2)
    {
      v2 = 1;
    }

    else
    {
      v5 = 0;
      do
      {
        *(*(result + 72) + v5) = *(*(result + 72) + v5 + 8);
        v5 += 8;
      }

      while (8 * v2 - 8 != v5);
      v3 = *(result + 72);
    }

    *v4 = 0;
    v3[v2 - 1] = v4;
  }

  else
  {
    *(result + 852) = v1;
  }

  return result;
}

uint64_t sub_29874B484(uint64_t a1)
{
  v1 = a1;
  v157 = *MEMORY[0x29EDCA608];
  *(a1 + 848) = 0;
  sub_298747030(a1, 12);
  *(v1 + 848) = 0;
  v2 = *(v1 + 104);
  if (*(v1 + 96) >= v2)
  {
    if (*(v1 + 1064) == *(v1 + 1048))
    {
      v3 = -4;
      if (v2 == *(v1 + 88))
      {
        v3 = 0;
      }

      v2 += v3;
    }

    *(v1 + 96) = v2;
  }

  sub_298747030(v1, 0);
  v4 = *(v1 + 88);
  if (v4 >= *(v1 + 104))
  {
    v17 = *(v1 + 848);
  }

  else
  {
    v5 = 0;
    v6 = -1;
    do
    {
      if (v4 == *(v1 + 96))
      {
        v7 = wcwidth(*v4);
        v6 = *(v1 + 848);
        v5 = *(v1 + 852);
        if (v7 >= 2)
        {
          v8 = v6 + v7;
          v9 = *(v1 + 152);
          if (v6 + v7 > v9)
          {
            v6 = 0;
          }

          if (v8 > v9)
          {
            ++v5;
          }
        }
      }

      v10 = *v4;
      v11 = sub_298752D88(*v4);
      if (v11 == -3)
      {
        v12 = *(v1 + 852);
        sub_29874B2FC(v1, 0, 0);
        if (v12 == *(v1 + 852))
        {
          sub_29874B410(v1);
        }
      }

      else if (v11)
      {
        if (v11 == -2)
        {
          do
          {
            sub_29874B2FC(v1, 32, 1);
          }

          while ((*(v1 + 848) & 7) != 0);
        }

        else
        {
          v13 = sub_298752BF4(v156, 8uLL, v10);
          if (v13 >= 1)
          {
            v14 = v13;
            v15 = v156;
            do
            {
              v16 = *v15++;
              sub_29874B2FC(v1, v16, 1);
              --v14;
            }

            while (v14);
          }
        }
      }

      else
      {
        sub_29874B2FC(v1, v10, 1);
      }

      ++v4;
    }

    while (v4 < *(v1 + 104));
    v17 = *(v1 + 848);
    if (v6 != -1)
    {
      goto LABEL_31;
    }
  }

  v5 = *(v1 + 852);
  v6 = v17;
LABEL_31:
  v18 = *(v1 + 896);
  if (!v18 || *(v1 + 900) || *(v1 + 852) || (v135 = *(v1 + 152) - (v17 + v18), v135 < 2))
  {
    *(v1 + 896) = 0;
  }

  else
  {
    v136 = v135 + 1;
    do
    {
      sub_29874B2FC(v1, 32, 1);
      --v136;
    }

    while (v136 > 2);
    sub_298747030(v1, 12);
  }

  sub_29874B2FC(v1, 0, 0);
  LODWORD(v19) = *(v1 + 852);
  *(v1 + 860) = v19;
  if ((v19 & 0x80000000) != 0)
  {
    LODWORD(v20) = 0;
    goto LABEL_233;
  }

  v137 = v5;
  v138 = v6;
  v20 = 0;
  v153 = v1;
  do
  {
    v21 = v20;
    v22 = *(v1 + 72);
    v23 = *(*(v1 + 64) + 8 * v21);
    v155 = v21;
    v24 = *(v22 + 8 * v21);
    v25 = *v23;
    if (*v23)
    {
      v26 = *(v22 + 8 * v21);
      v27 = *(*(v1 + 64) + 8 * v21);
      do
      {
        if (v25 != *v26)
        {
          break;
        }

        v28 = v27[1];
        ++v27;
        v25 = v28;
        ++v26;
      }

      while (v28);
    }

    else
    {
      v27 = *(*(v1 + 64) + 8 * v21);
      v26 = *(v22 + 8 * v21);
    }

    v29 = v27 - 1;
    v30 = v27 - v23;
    v31 = 4 - v27;
    v143 = v27 - v23;
    do
    {
      v32 = v30;
      v33 = v31;
      v34 = v29[1];
      ++v29;
      v30 += 4;
      v31 -= 4;
    }

    while (v34);
    do
    {
      v35 = v29;
      v36 = v32;
      v37 = v33;
      if (v27 >= v29)
      {
        break;
      }

      --v29;
      v32 -= 4;
      v33 += 4;
    }

    while (*(v35 - 1) == 32);
    *v35 = 0;
    v38 = v26 - 1;
    v39 = 4;
    do
    {
      v40 = v39;
      v41 = v38[1];
      ++v38;
      v39 += 4;
    }

    while (v41);
    do
    {
      v42 = v40;
      v43 = v26 + v40;
      if (v26 >= (v26 + v40 - 4))
      {
        break;
      }

      v40 -= 4;
    }

    while (*(v43 - 2) == 32);
    *(v43 - 1) = 0;
    v44 = (v43 - 4);
    v45 = *v27;
    if (!*v27 && !*v26)
    {
      goto LABEL_224;
    }

    v46 = v35;
    v47 = v44;
    do
    {
      if (v46 <= v27)
      {
        break;
      }

      if (v47 <= v26)
      {
        break;
      }

      v49 = *--v46;
      v48 = v49;
      v50 = *(v47 - 4);
      v47 -= 4;
    }

    while (v48 == v50);
    v51 = (v46 + 1);
    v52 = v47 + 4;
    v151 = v23;
    if (v45 && v26 < v52)
    {
      v53 = (v47 + 4);
      v54 = (v47 + 4);
      v55 = v46 + 1;
      v56 = v46 + 1;
      v57 = v26;
      do
      {
        if (v45 == *v57)
        {
          v58 = v27;
          v59 = v57;
          if (v57 < v52)
          {
            v58 = v27;
            v59 = v57;
            if (v27 < v51)
            {
              v60 = v57;
              v61 = v27;
              while (*v61 == *v60)
              {
                v58 = v61 + 1;
                v59 = v60 + 1;
                if (v60 < v47)
                {
                  ++v60;
                  v67 = v61++ >= v46;
                  if (!v67)
                  {
                    continue;
                  }
                }

                goto LABEL_69;
              }

              v58 = v61;
              v59 = v60;
            }
          }

LABEL_69:
          v62 = v59 - v57;
          v63 = (v59 - v57) >> 1;
          v64 = v63 <= v57 - v26;
          if (v63 > v57 - v26)
          {
            v65 = v27;
          }

          else
          {
            v65 = v56;
          }

          if (v64)
          {
            v58 = v55;
            v66 = v54;
          }

          else
          {
            v66 = v57;
          }

          if (v64)
          {
            v59 = v53;
          }

          if (v53 - v54 < v62)
          {
            v56 = v65;
            v55 = v58;
            v54 = v66;
            v53 = v59;
          }
        }

        v67 = v57++ >= v47;
      }

      while (!v67);
    }

    else
    {
      v56 = v46 + 1;
      v55 = v46 + 1;
      v54 = (v47 + 4);
      v53 = (v47 + 4);
    }

    if (*v26)
    {
      v67 = v27 >= v51;
    }

    else
    {
      v67 = 1;
    }

    if (!v67)
    {
      v68 = v27;
      do
      {
        if (*v26 == *v68)
        {
          v69 = v26;
          v70 = v68;
          if (v68 < v51)
          {
            v69 = v26;
            v70 = v68;
            if (v26 < v52)
            {
              v71 = v68;
              v72 = v26;
              while (*v71 == *v72)
              {
                v70 = v71 + 4;
                v69 = v72 + 1;
                if (v71 < v46)
                {
                  v71 += 4;
                  v67 = v72++ >= v47;
                  if (!v67)
                  {
                    continue;
                  }
                }

                goto LABEL_98;
              }

              v69 = v72;
              v70 = v71;
            }
          }

LABEL_98:
          v73 = v70 - v68;
          v74 = (v70 - v68) >> 1;
          v75 = v74 <= v68 - v27;
          if (v74 > v68 - v27)
          {
            v76 = v68;
          }

          else
          {
            v76 = v56;
          }

          if (v75)
          {
            v70 = v55;
            v77 = v54;
          }

          else
          {
            v77 = v26;
          }

          if (v75)
          {
            v69 = v53;
          }

          if (v55 - v56 < v73)
          {
            v56 = v76;
            v55 = v70;
            v54 = v77;
            v53 = v69;
          }
        }

        v67 = v68++ >= v46;
      }

      while (!v67);
    }

    v78 = -(v46 + v37);
    if (v78 >= 16)
    {
      v79 = (v46 + 1);
    }

    else
    {
      v79 = v35;
    }

    if (v78 >= 16)
    {
      v80 = (v47 + 4);
    }

    else
    {
      v80 = v44;
    }

    v81 = ((v54 - v26) >> 2) - ((v56 - v27) >> 2);
    v82 = ((v80 - v53) >> 2) - ((v79 - v55) >> 2);
    v83 = *(v1 + 160);
    if ((v83 & 1) == 0)
    {
      if (v81 >= 1)
      {
        v56 = v79;
        v55 = v79;
        v54 = v80;
        v53 = v80;
      }

      if (v82 <= 0)
      {
        v84 = v79;
      }

      else
      {
        v84 = v35;
      }

      if (v82 > 0)
      {
        v80 = v44;
      }

      if (v84 - v27 >= v80 - v26)
      {
        v79 = v84;
      }

      else
      {
        v79 = v35;
      }

      if (v84 - v27 < v80 - v26)
      {
        v80 = v44;
      }
    }

    v148 = v24;
    if ((v83 & 2) == 0)
    {
      if (v81 < 0)
      {
        v56 = v79;
        v55 = v79;
        v54 = v80;
        v53 = v80;
      }

      if (v82 >= 0)
      {
        v85 = v79;
      }

      else
      {
        v85 = v35;
      }

      if (v82 < 0)
      {
        v80 = v44;
      }

      if (v85 - v27 <= v80 - v26)
      {
        v79 = v85;
      }

      else
      {
        v79 = v35;
      }

      if (v85 - v27 > v80 - v26)
      {
        v80 = v44;
      }
    }

    v86 = v55 - v56;
    if (v55 - v56 >= 16)
    {
      v87 = v55;
    }

    else
    {
      v87 = v79;
    }

    if (v55 - v56 >= 16)
    {
      v88 = v56;
    }

    else
    {
      v88 = v79;
    }

    if (v55 - v56 >= 16)
    {
      v89 = v54;
    }

    else
    {
      v89 = v80;
    }

    if (v55 - v56 >= 16)
    {
      v90 = v53;
    }

    else
    {
      v90 = v80;
    }

    v139 = v88;
    v141 = v87;
    v145 = v90;
    v146 = v89 - v26;
    v142 = v88 - v27;
    v91 = v146 - (v88 - v27);
    v149 = v79;
    v144 = v80 - v90;
    v154 = v144 - ((v79 - v87) >> 2);
    sub_29874DBE0(v153, v155);
    v152 = v89;
    v150 = v91;
    if (v89 == v26 || v91 < 1)
    {
      if ((v91 & 0x80000000) == 0)
      {
        goto LABEL_170;
      }

      v103 = v143 >> 2;
      sub_29874DD94(v153, v143 >> 2);
      v94 = v89 - v26;
      if (v35 != v139)
      {
        v140 = -v150;
        sub_29874E154(v153, -v150);
        v104 = *(v153 + 152);
        v105 = (v151 + 4 * v103);
        if (v103 - v150 >= v104)
        {
          v107 = v148;
        }

        else
        {
          v106 = v151 + 4 * v104;
          if (&v105[v140] < v106)
          {
            do
            {
              *v105 = v105[v140];
              ++v105;
            }

            while (&v105[v140] < v106);
          }

          v107 = v148;
          v105 = v106;
        }

        *v105 = 0;
        sub_29874DFE0(v153, v26, v146);
        v96 = v150;
        v97 = v107;
        if (v89 != v26)
        {
          v126 = v89 - v26;
          v127 = v26;
          v128 = v27;
          do
          {
            v129 = *v127;
            if (!*v127)
            {
              break;
            }

            ++v127;
            *v128++ = v129;
            --v126;
          }

          while (v126);
          v96 = v150;
        }

        goto LABEL_171;
      }

      sub_29874DFE0(v153, v26, v146);
      v109 = (v36 >> 2) - ((v26 + v42 - v148 - 4) >> 2);
      if ((v154 & 0x80000000) == 0)
      {
        v110 = v154;
      }

      else
      {
        v110 = -v154;
      }

      if (-v150 > v109)
      {
        v109 = -v150;
      }

      if (v110 <= v109)
      {
        v111 = v109;
      }

      else
      {
        v111 = v110;
      }

      sub_29874E504(v153, v111);
      v1 = v153;
    }

    else
    {
      if (v86 >= 16)
      {
        v92 = v55;
      }

      else
      {
        v92 = v149;
      }

      if (v35 != v149)
      {
        v92 = v35;
      }

      v93 = v91 & 0x7FFFFFFF;
      if ((v93 + ((v92 - v151) >> 2)) > *(v153 + 152))
      {
LABEL_170:
        v96 = 0;
        v94 = v146;
        v97 = v148;
LABEL_171:
        v1 = v153;
        if ((v154 & 0x80000000) != 0)
        {
          v101 = ((v141 - v151) >> 2) + v96;
          if (v101 < *(v153 + 152))
          {
            v102 = v97;
            v147 = v96;
            sub_29874DD94(v153, v101);
            if (v35 == v149)
            {
              sub_29874DFE0(v153, v145, v144);
              v112 = (v36 >> 2) - ((v26 + v42 - v102 - 4) >> 2);
              if (v147 >= 0)
              {
                v113 = v147;
              }

              else
              {
                v113 = -v147;
              }

              if (v113 > v112)
              {
                v112 = v113;
              }

              if (-v154 > v112)
              {
                v114 = -v154;
              }

              else
              {
                v114 = v112;
              }

              sub_29874E504(v153, v114);
              v97 = v102;
              v96 = v147;
            }

            else
            {
              sub_29874E154(v153, -v154);
              sub_29874DFE0(v153, v145, v144);
              v96 = v147;
              v97 = v102;
            }
          }
        }

        if (v152 != v26 && v94 >= v142 >> 2 && !v96)
        {
          v115 = v97;
          sub_29874DD94(v153, (v26 - v97) >> 2);
          if (v44 == v152)
          {
            sub_29874DFE0(v153, v26, v94);
            v97 = v115;
            if (v42 != 4)
            {
              do
              {
                v122 = *v26;
                if (!*v26)
                {
                  break;
                }

                ++v26;
                *v27++ = v122;
                --v94;
              }

              while (v94);
            }
          }

          else
          {
            v116 = v150;
            if (v150 >= 1)
            {
              sub_29874E2C8(v153, v26, v150);
              sub_29874C668(v151, v143 >> 2, *(v153 + 152), v26, v150);
              v116 = v150;
            }

            v117 = v94 - v116;
            v118 = &v26[v116];
            sub_29874DFE0(v153, v118, v117);
            v97 = v115;
            if (v117)
            {
              v119 = &v27[v150];
              v120 = v150 - v94;
              do
              {
                v121 = *v118;
                if (!*v118)
                {
                  break;
                }

                ++v118;
                *v119++ = v121;
                v67 = __CFADD__(v120++, 1);
              }

              while (!v67);
            }
          }
        }

        if ((v154 & 0x80000000) == 0)
        {
          sub_29874DD94(v153, (v145 - v97) >> 2);
          if (v35 == v149)
          {
            v125 = v153;
            v123 = v145;
            v124 = v144;
          }

          else
          {
            if (v154)
            {
              sub_29874E2C8(v153, v145, v154);
            }

            v123 = &v145[v154 & 0x7FFFFFFF];
            v124 = v144 - (v154 & 0x7FFFFFFF);
            v125 = v153;
          }

          sub_29874DFE0(v125, v123, v124);
        }

        goto LABEL_224;
      }

      sub_29874DD94(v153, (v26 - v148) >> 2);
      v94 = v146;
      if (v44 != v152)
      {
        sub_29874E2C8(v153, v26, v150);
        sub_29874C668(v151, v143 >> 2, *(v153 + 152), v26, v150);
        v95 = &v26[v93];
        sub_29874DFE0(v153, v95, v146 - v93);
        v96 = v150;
        v97 = v148;
        if (v146 != v93)
        {
          v98 = &v27[v93];
          v99 = v93 - v146;
          do
          {
            v100 = *v95;
            if (!*v95)
            {
              break;
            }

            ++v95;
            *v98++ = v100;
            v67 = __CFADD__(v99++, 1);
          }

          while (!v67);
          v96 = v150;
        }

        goto LABEL_171;
      }

      sub_29874DFE0(v153, v26, v146);
      v1 = v153;
      if (v42 != 4)
      {
        do
        {
          v108 = *v26;
          if (!*v26)
          {
            break;
          }

          ++v26;
          *v27++ = v108;
          --v94;
        }

        while (v94);
      }
    }

LABEL_224:
    sub_29874C058(*(*(v1 + 64) + 8 * v155), *(*(v1 + 72) + 8 * v155), *(v1 + 152));
    v20 = v155 + 1;
    v19 = *(v1 + 860);
  }

  while (v155 < v19);
  v5 = v137;
  v6 = v138;
LABEL_233:
  v130 = *(v1 + 856);
  if (v130 > v19 && v20 <= v130)
  {
    v131 = v20;
    do
    {
      sub_29874DBE0(v1, v131);
      sub_29874DD94(v1, 0);
      v132 = wcslen(*(*(v1 + 64) + 8 * v131));
      sub_29874E504(v1, v132);
      **(*(v1 + 64) + 8 * v131++) = 0;
    }

    while (*(v1 + 856) > v131 - 1);
    LODWORD(v19) = *(v1 + 860);
  }

  *(v1 + 856) = v19;
  sub_29874DBE0(v1, v5);
  result = sub_29874DD94(v1, v6);
  v134 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29874C058(char *__b, uint64_t a2, unint64_t a3)
{
  v4 = 0;
  if (a3)
  {
    while (1)
    {
      v5 = *(a2 + 4 * v4);
      if (!v5)
      {
        break;
      }

      *__b = v5;
      __b += 4;
      if (a3 == ++v4)
      {
        goto LABEL_7;
      }
    }
  }

  v6 = a3 - v4;
  if (a3 > v4)
  {
    memset_pattern16(__b, &unk_298756290, 4 * v6);
    __b += 4 * v6;
  }

LABEL_7:
  *__b = 0;
}

uint64_t sub_29874C0C0(uint64_t a1)
{
  sub_29874DBE0(a1, *(a1 + 856));
  sub_29874E0EC(a1, 0xAu);
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  if (*(a1 + 156) >= 1)
  {
    v2 = 0;
    v3 = *(a1 + 64);
    do
    {
      **(v3 + 8 * v2++) = 0;
    }

    while (v2 < *(a1 + 156));
  }

  *(a1 + 856) = 0;

  return sub_29874F318(a1);
}

uint64_t sub_29874C13C(uint64_t result)
{
  *(result + 52) = 0;
  *(result + 56) = 0;
  if (*(result + 156) >= 1)
  {
    v1 = 0;
    v2 = *(result + 64);
    do
    {
      **(v2 + 8 * v1++) = 0;
    }

    while (v1 < *(result + 156));
  }

  *(result + 856) = 0;
  return result;
}

uint64_t sub_29874C174(uint64_t a1)
{
  v3 = *(a1 + 96);
  v2 = *(a1 + 104);
  if (v3 >= v2)
  {
    v3 = *(a1 + 104);
    if (*(a1 + 1064) == *(a1 + 1048))
    {
      v4 = -4;
      if (v2 == *(a1 + 88))
      {
        v4 = 0;
      }

      v3 = v2 + v4;
    }

    *(a1 + 96) = v3;
  }

  v5 = *(a1 + 872);
  v6 = *(a1 + 876);
  v7 = *(a1 + 152);
  v8 = *(a1 + 88);
  if (v8 < v3)
  {
    do
    {
      v9 = sub_298752D88(*v8);
      if (v9 == -3)
      {
        v10 = 0;
        ++v6;
      }

      else if (v9 == -2)
      {
        v10 = v5 - (v5 | 0xFFFFFFF8);
      }

      else
      {
        v11 = wcwidth(*v8);
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        v13 = v11 > 1 && v12 + v5 > v7;
        if (v13)
        {
          v5 = 0;
        }

        v6 += v13;
        v10 = v5 + sub_298752D0C(*v8);
      }

      if (v10 < v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = v7;
      }

      if (v10 >= v7)
      {
        ++v6;
      }

      v5 = v10 - v14;
      ++v8;
    }

    while (v8 < *(a1 + 96));
    v2 = *(a1 + 104);
  }

  if (v8 < v2)
  {
    v15 = wcwidth(*v8);
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = v15 > 1 && v16 + v5 > v7;
    if (v17)
    {
      v5 = 0;
    }

    v6 += v17;
  }

  sub_29874DBE0(a1, v6);
  sub_29874DD94(a1, v5);

  return sub_29874F318(a1);
}

uint64_t sub_29874C2E0(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 96);
  v3 = *(v2 - 4);
  if (v3 != 9 && v2 == *(a1 + 104))
  {
    v4 = *(a1 + 896);
    v5 = *(a1 + 152) - (*(a1 + 52) + v4);
    if (v4)
    {
      v8 = __OFSUB__(v5, 2);
      v6 = v5 == 2;
      v7 = v5 - 2 < 0;
    }

    else
    {
      v8 = 0;
      v6 = 0;
      v7 = 0;
    }

    if (!(v7 ^ v8 | v6))
    {
      v9 = sub_298752D88(v3);
      if (v9 > -2)
      {
        if (v9 != -1)
        {
          if (v9)
          {
LABEL_20:
            result = sub_29874F318(a1);
            v16 = *MEMORY[0x29EDCA608];
            return result;
          }

LABEL_16:
          sub_29874C434(a1, v3);
          goto LABEL_20;
        }
      }

      else if (v9 != -4)
      {
        if (v9 != -3)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      v12 = sub_298752BF4(v17, 8uLL, v3);
      if (v12 >= 1)
      {
        v13 = v12;
        v14 = v17;
        do
        {
          v15 = *v14++;
          sub_29874C434(a1, v15);
          --v13;
        }

        while (v13);
      }

      goto LABEL_20;
    }
  }

  v10 = *MEMORY[0x29EDCA608];

  return sub_29874B484(a1);
}

uint64_t sub_29874C434(uint64_t a1, unsigned __int32 a2)
{
  v4 = wcwidth(a2);
  v5 = v4;
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  if (v4 >= 2)
  {
    while (*(a1 + 52) + v6 > *(a1 + 152))
    {
      sub_29874C434(a1, 32);
    }
  }

  result = sub_29874E0EC(a1, a2);
  v8 = *(a1 + 64);
  v9 = *(a1 + 52);
  v10 = v8[*(a1 + 56)];
  *(a1 + 52) = v9 + 1;
  v10[v9] = a2;
  if (v5 >= 2)
  {
    v11 = v6 + 1;
    do
    {
      v12 = *(a1 + 52);
      v13 = v8[*(a1 + 56)];
      *(a1 + 52) = v12 + 1;
      v13[v12] = -1;
      --v11;
    }

    while (v11 > 2);
  }

  if (*(a1 + 52) >= *(a1 + 152))
  {
    *(a1 + 52) = 0;
    v14 = *(a1 + 56) + 1;
    v15 = *(a1 + 156);
    if (v14 >= v15)
    {
      v16 = *v8;
      if (v15 < 2)
      {
        v15 = 1;
      }

      else
      {
        v17 = 0;
        do
        {
          *(*(a1 + 64) + v17) = *(*(a1 + 64) + v17 + 8);
          v17 += 8;
        }

        while (8 * v15 - 8 != v17);
        v8 = *(a1 + 64);
      }

      *v16 = 0;
      v8[v15 - 1] = v16;
    }

    else
    {
      *(a1 + 56) = v14;
      ++*(a1 + 856);
    }

    v18 = *(a1 + 160);
    if ((v18 & 0x80) != 0)
    {
      if ((v18 & 0x100) == 0)
      {
        return result;
      }

      v19 = 8;
      v20 = 32;
    }

    else
    {
      v19 = 10;
      v20 = 13;
    }

    sub_29874E0EC(a1, v20);

    return sub_29874E0EC(a1, v19);
  }

  return result;
}

uint64_t sub_29874C5CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 856);
  if ((*(result + 160) & 4) != 0)
  {
    if ((v2 & 0x80000000) == 0)
    {
      do
      {
        sub_29874DBE0(v1, v2);
        sub_29874DD94(v1, 0);
        result = sub_29874E504(v1, *(v1 + 152));
        --v2;
      }

      while (v2 != -1);
    }
  }

  else
  {
    sub_29874DBE0(result, *(result + 856));
    sub_29874E0EC(v1, 0xDu);

    return sub_29874E0EC(v1, 0xAu);
  }

  return result;
}

uint64_t sub_29874C668(uint64_t result, int a2, int a3, int *a4, unsigned int a5)
{
  LODWORD(v5) = a3 - a2;
  if (a3 - a2 >= a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = v5;
  }

  if (v5 >= 1)
  {
    v6 = (result + 4 * a3);
    v7 = v6 - 1;
    v8 = result + 4 * a2;
    if (&v6[-v5 - 1] >= v8)
    {
      do
      {
        *v7 = v7[-v5];
        --v7;
      }

      while (&v7[-v5] >= v8);
    }

    *v6 = 0;
    if (a3 > a2)
    {
      v9 = result + 4 * a2 + 4;
      do
      {
        v10 = *a4++;
        *(v9 - 4) = v10;
        if (v9 >= v6)
        {
          break;
        }

        v9 += 4;
        v11 = v5 > 1;
        LODWORD(v5) = v5 - 1;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t sub_29874C6EC(uint64_t a1)
{
  v2 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
  *(a1 + 1216) = v2;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1232) = 0x1FFFFFFFFLL;
  *(a1 + 1244) = 0;
  return result;
}

uint64_t sub_29874C77C(__int32 *a1, __int32 *a2)
{
  if (wcsstr(a1, a2))
  {
    return 1;
  }

  memset(&v8, 0, sizeof(v8));
  v5 = sub_29875277C(a2, &unk_2A13BE460);
  v4 = 0;
  if (!regcomp(&v8, v5, 0))
  {
    v6 = sub_29875277C(a1, &unk_2A13BE460);
    v4 = regexec(&v8, v6, 0, 0, 0) == 0;
    MEMORY[0x29C2920A0](&v8);
  }

  return v4;
}

size_t sub_29874C834(size_t result)
{
  if ((*(result + 136) & 0xFE) != 0x16)
  {
    v1 = result;
    v2 = *(result + 1096) == 1 && *(result + 1064) == *(result + 1048);
    v3 = *(result + 96) + 4 * v2;
    v4 = *(result + 88);
    if (((v3 - v4) >> 2) >= 0x3FF)
    {
      v5 = 1023;
    }

    else
    {
      v5 = (v3 - v4) >> 2;
    }

    *(result + 1224) = v5;
    v6 = *(result + 1216);
    if (v3 == v4)
    {
      result = wcslen(v6);
      *(v1 + 1224) = result;
    }

    else
    {
      result = wcsncpy(v6, v4, v5);
      *(*(v1 + 1216) + 4 * *(v1 + 1224)) = 0;
    }
  }

  return result;
}

uint64_t sub_29874C8D8(size_t a1, uint64_t a2)
{
  v2 = *(a1 + 1224);
  if ((*(a1 + 104) + 4 * v2 + 24) >= *(a1 + 112))
  {
    return 6;
  }

  v4 = *(a1 + 96);
  v5 = -1;
  if (a2 != 23)
  {
    v5 = 1;
  }

  v67 = v5;
  v6 = byte_2A13BE480;
  v7 = *(a1 + 1176);
  if (a2 == 23)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  v66 = v8;
  v9 = 88;
  if (a2 == 23)
  {
    v9 = 104;
  }

  v65 = v9;
  v68 = a2;
  v69 = 0;
  v10 = a2;
  while (1)
  {
    v11 = *(a1 + 1224);
    if (!v11)
    {
      byte_2A13BE480 = 0;
      v12 = *(a1 + 1216);
      *(a1 + 1224) = 2;
      *v12 = 0x2A0000002ELL;
      v11 = 2;
    }

    v13 = *(a1 + 104);
    *v13 = 10;
    v14 = v13 + 1;
    v15 = &unk_2987562C0;
    if (v10 != 23)
    {
      v15 = &unk_2987562B0;
    }

    v16 = *v15;
    if (*v15)
    {
      v17 = v15 + 1;
      do
      {
        *v14++ = v16;
        v18 = *v17++;
        v16 = v18;
      }

      while (v18);
    }

    if (byte_2A13BE480)
    {
      v19 = 63;
    }

    else
    {
      v19 = 58;
    }

    *v14 = v19;
    v20 = v14 + 1;
    *(a1 + 104) = v20;
    if (v11 >= 3)
    {
      v21 = *(a1 + 1216);
      v22 = v21 + 4 * v11;
      v23 = (v21 + 8);
      do
      {
        v24 = *v23++;
        *v20++ = v24;
      }

      while (v23 < v22);
      *(a1 + 104) = v20;
    }

    *v20 = 0;
    sub_29874B484(a1);
    if (el_wgetc(a1, &v69) != 1)
    {
      return sub_298740928(a1);
    }

    v25 = v69;
    v26 = *(*(a1 + 1064) + v69);
    if (v26 <= 0x27)
    {
      if (v26 != 4)
      {
        if (v26 == 6 || v26 == 8)
        {
          v28 = *(a1 + 1224);
          if (v28 >= 0x3FE)
          {
LABEL_53:
            el_beep_0(a1);
            goto LABEL_54;
          }

          v29 = *(a1 + 1216);
          *(a1 + 1224) = v28 + 1;
          *(v29 + 4 * v28) = v25;
          v30 = *(a1 + 104);
          *v30 = v69;
          *(a1 + 104) = v30 + 4;
        }

        else
        {
LABEL_41:
          if (v69 == 7)
          {
            v33 = 0;
            v32 = 1;
            v31 = 6;
            goto LABEL_59;
          }

          if (v69 == 27)
          {
            goto LABEL_58;
          }

          if (v69 != 23)
          {
            dword_2A13BE484 = v69;
            el_wpush(a1, &dword_2A13BE484);
LABEL_58:
            v33 = 0;
            v32 = 1;
            v31 = 4;
            goto LABEL_59;
          }

          v34 = *(a1 + 1224);
          if (v34 >= 3)
          {
            v35 = *(a1 + 1216);
            v36 = v35 + 4 * v34;
            v37 = (v35 + 8);
            while (!memchr("*[]?", *v37, 5uLL))
            {
              if (++v37 >= v36)
              {
                goto LABEL_48;
              }
            }

            goto LABEL_53;
          }

LABEL_48:
          v38 = *(a1 + 104);
          v39 = (*(a1 + 96) + 4 * v34 - 12);
          *(a1 + 96) = v39;
          v40 = sub_298740084(v39, v38, 1, sub_29873FEC0);
          v41 = *(a1 + 96);
          while (v41 < v40)
          {
            v42 = *v41;
            if (*v41 == 10)
            {
              break;
            }

            v43 = *(a1 + 1224);
            if (v43 >= 0x3FE)
            {
              el_beep_0(a1);
              break;
            }

            v44 = *(a1 + 1216);
            *(a1 + 1224) = v43 + 1;
            *(v44 + 4 * v43) = v42;
            v45 = *v41++;
            v46 = *(a1 + 104);
            *v46 = v45;
            *(a1 + 96) = v41;
            *(a1 + 104) = v46 + 1;
          }

          *(a1 + 96) = v4;
          **(a1 + 104) = 0;
        }

        sub_29874B484(a1);
LABEL_54:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        goto LABEL_59;
      }

LABEL_39:
      if (*(a1 + 1224) <= 2uLL)
      {
        goto LABEL_53;
      }

      v31 = 0;
      v33 = 0;
      v32 = 1;
      goto LABEL_59;
    }

    if (v26 == 40)
    {
      goto LABEL_39;
    }

    if (v26 == 43)
    {
      v31 = 0;
      v32 = 0;
      v33 = 1;
      v10 = 22;
      goto LABEL_59;
    }

    if (v26 != 44)
    {
      goto LABEL_41;
    }

    v31 = 0;
    v32 = 0;
    v33 = 1;
    v10 = 23;
LABEL_59:
    v47 = *(a1 + 88);
    for (i = *(a1 + 104); i > v47 && *i != 10; *(a1 + 104) = i)
    {
      *i-- = 0;
    }

    *i = 0;
    if (v32)
    {
      goto LABEL_97;
    }

    v49 = *(a1 + 1216);
    v50 = *(a1 + 1224);
    v69 = 93;
    v51 = (v49 + 4 * v50 - 4);
    while (v51 >= v49 + 8)
    {
      v53 = *v51--;
      v52 = v53;
      if (v53 == 93 || v52 == 91)
      {
        v69 = v52;
        v54 = v52 != 91;
        goto LABEL_70;
      }
    }

    v54 = 1;
LABEL_70:
    if (v50 >= 3 && v54)
    {
      if (v10 != v68)
      {
        v33 = 0;
      }

      if (v33)
      {
        if (byte_2A13BE480 == 1)
        {
          *(a1 + 1176) = v66;
          if (sub_298743C3C(a1) == 6)
          {
            sub_298743C3C(a1);
          }

          v55 = *(a1 + v65);
          *(a1 + 96) = v55;
          v49 = *(a1 + 1216);
          v50 = *(a1 + 1224);
          v47 = *(a1 + 88);
        }

        else
        {
          v55 = *(a1 + 96) + 4 * v67;
          *(a1 + 96) = v55;
        }
      }

      else
      {
        v55 = *(a1 + 96);
      }

      v56 = 4 * v50;
      v57 = v50 + 2;
      *(a1 + 1224) = v57;
      *(v49 + v56) = 0x2A0000002ELL;
      *(v49 + 4 * v57) = 0;
      if (v55 < v47 || v55 > *(a1 + 104) || sub_29874CEC8(a1, v10) == 6)
      {
        *(a1 + 136) = v10;
        if (v10 == 23)
        {
          v58 = sub_298741224(a1);
        }

        else
        {
          v58 = sub_29874142C(a1);
        }

        if (v58 == 6)
        {
          v59 = *(a1 + 1224) - 2;
          *(a1 + 1224) = v59;
          *(*(a1 + 1216) + 4 * v59) = 0;
          el_beep_0(a1);
          if (*(a1 + 1176) != v7)
          {
            *(a1 + 1176) = v7;
            if (sub_298743C3C(a1) == 6)
            {
              return 6;
            }
          }

          *(a1 + 96) = v4;
          v60 = 1;
          goto LABEL_95;
        }

        v61 = 88;
        if (v10 == 23)
        {
          v61 = 104;
        }

        *(a1 + 96) = *(a1 + v61);
        sub_29874CEC8(a1, v10);
      }

      v60 = 0;
      v62 = *(a1 + 1224) - 2;
      *(a1 + 1224) = v62;
      *(*(a1 + 1216) + 4 * v62) = 0;
LABEL_95:
      byte_2A13BE480 = v60;
    }

    v31 = sub_29874C8D8(a1, v10);
    if (!((v31 != 6 || (byte_2A13BE480 & 1) == 0) | v6 & 1))
    {
      v63 = 0;
      v31 = 0;
      goto LABEL_103;
    }

LABEL_97:
    if (v31)
    {
      if (v2 || v31 != 6)
      {
        return v31;
      }

      v63 = 1;
    }

    else
    {
      v63 = 0;
    }

LABEL_103:
    byte_2A13BE480 = v6;
    *(a1 + 1224) = v2;
    if (*(a1 + 1176) != v7)
    {
      *(a1 + 1176) = v7;
      if (sub_298743C3C(a1) == 6)
      {
        return 6;
      }
    }

    *(a1 + 96) = v4;
    if (v63)
    {
      break;
    }

    if (v32)
    {
      return v31;
    }
  }

  sub_29874B484(a1);
  return 6;
}

uint64_t sub_29874CEC8(void *a1, int a2)
{
  v3 = a1[12];
  v4 = a1[152];
  v7 = *(v4 + 4);
  v5 = (v4 + 4);
  v6 = v7;
  *v5 = 94;
  if (a2 == 23)
  {
    while (v3 >= a1[11])
    {
      if (sub_29874C77C(v3, v5))
      {
        goto LABEL_10;
      }

      --v3;
    }
  }

  else if (*v3)
  {
    while (v3 < a1[14])
    {
      if (sub_29874C77C(v3, v5))
      {
LABEL_10:
        result = 0;
        *v5 = v6;
        a1[12] = v3;
        return result;
      }

      v8 = v3[1];
      ++v3;
      if (!v8)
      {
        break;
      }
    }
  }

  *v5 = v6;
  return 6;
}

uint64_t sub_29874CF74(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v5 = v2;
  v23[511] = *MEMORY[0x29EDCA608];
  *v22 = 0x2A0000002ELL;
  *(v2 + 1232) = v3;
  if (v3 == 23)
  {
    v6 = &unk_2987562D0;
  }

  else
  {
    v6 = &unk_2987562DC;
  }

  v7 = sub_298740764(v2, v23, v6);
  if (v7 == -1)
  {
    goto LABEL_13;
  }

  v8 = &v22[v7];
  v11 = v8[2];
  v9 = v8 + 2;
  v10 = v11;
  *v9 = 0;
  if (v7)
  {
    v12 = v7 + 4;
    *v9 = 0x2A0000002ELL;
    v22[v12] = 0;
    wcsncpy(*(v5 + 1216), v22, 0x3FFuLL);
    *(v5 + 1224) = v12;
  }

  else
  {
    if (!*(v5 + 1224))
    {
LABEL_17:
      sub_29874B484(v5);
      result = 6;
      goto LABEL_18;
    }

    v16 = *(v5 + 1216);
    if ((*v16 | 4) != 0x2E)
    {
      wcsncpy(v22, v16, 0x3FFuLL);
      v17 = *(v5 + 1216);
      *v17 = 0x2A0000002ELL;
      wcsncpy((v17 + 8), v22, 0x3FDuLL);
      v18 = *(v5 + 1224);
      v19 = *(v5 + 1216);
      v20 = v19 + 4 * v18;
      v18 += 3;
      *(v5 + 1224) = v18;
      *(v20 + 4) = 0x2A0000002ELL;
      *(v19 + 4 * v18) = 0;
    }
  }

  *(v5 + 136) = v4;
  v13 = *(v5 + 88);
  *(v5 + 96) = v13;
  *(v5 + 104) = v13;
  if (v4 == 23)
  {
    v14 = sub_298741224(v5);
  }

  else
  {
    v14 = sub_29874142C(v5);
  }

  if (v14 == 6)
  {
    goto LABEL_17;
  }

  if (v10 != 27)
  {
LABEL_13:
    result = 4;
    goto LABEL_18;
  }

  sub_29874B484(v5);
  result = sub_29874102C(v5);
LABEL_18:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29874D138(size_t a1, int a2)
{
  *(a1 + 136) = a2;
  *(a1 + 104) = *(a1 + 88);
  if (a2 == 23)
  {
    return sub_298741224(a1);
  }

  if (a2 == 22)
  {
    return sub_29874142C(a1);
  }

  return 6;
}

uint64_t sub_29874D16C(EditLine *a1, int a2, __int32 a3, int a4, int a5)
{
  if (!a3)
  {
    return 6;
  }

  if (a3 == -1)
  {
    v16 = 0;
    if (el_wgetc(a1, &v16) != 1)
    {
      return sub_298740928(a1);
    }

    a3 = v16;
  }

  *(a1 + 310) = a3;
  *(a1 + 309) = a2;
  *(a1 + 1244) = a5;
  v9 = *(a1 + 12);
  if (a4)
  {
    v10 = *(a1 + 13);
    v11 = *v9;
LABEL_7:
    if (v11 == a3)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0;
    }

    v9 += v12;
    if (v9 < v10)
    {
      --a4;
      while (v9 >= *(a1 + 11))
      {
        if (*v9 == a3)
        {
          v11 = a3;
          if (a4)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }

        v9 += a2;
        if (v9 >= v10)
        {
          return 6;
        }
      }
    }

    return 6;
  }

  else
  {
LABEL_17:
    if (a5)
    {
      v13 = -a2;
    }

    else
    {
      v13 = 0;
    }

    v14 = &v9[v13];
    *(a1 + 12) = v14;
    if (*(a1 + 250))
    {
      if (a2 >= 1)
      {
        *(a1 + 12) = v14 + 1;
      }

      sub_2987402A4(a1);
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_29874D29C(uint64_t a1)
{
  v2 = malloc_type_malloc(0x78uLL, 0x1080040455F1686uLL);
  *(a1 + 1248) = v2;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  *(v2 + 28) = 134627335;
  sigprocmask(1, v2 + 28, &v6);
  v3 = 0;
  v4 = *(a1 + 1248);
  do
  {
    *(v4 + v3) = -1;
    v4 = *(a1 + 1248);
    *(v4 + v3 + 8) = 0;
    v3 += 16;
  }

  while (v3 != 112);
  sigprocmask(3, &v6, 0);
  return 0;
}

uint64_t sub_29874D374(uint64_t a1)
{
  v8 = 0;
  v7.__sigaction_u.__sa_handler = 0;
  *&v7.sa_mask = 0;
  v6.__sigaction_u.__sa_handler = sub_29874D43C;
  *&v6.sa_mask = 0;
  sigprocmask(1, (*(a1 + 1248) + 112), &v8);
  v2 = 0;
  qword_2A13BE490 = a1;
  v3 = dword_2987562E8;
  do
  {
    v4 = *v3++;
    if (sigaction(v4, &v6, &v7) != -1 && v7.__sigaction_u.__sa_handler != sub_29874D43C)
    {
      *(*(a1 + 1248) + v2) = v7;
    }

    v2 += 16;
  }

  while (v2 != 112);
  return sigprocmask(3, &v8, 0);
}

uint64_t sub_29874D43C(int a1)
{
  v2 = 1 << (a1 - 1);
  if (a1 > 32)
  {
    v2 = 0;
  }

  v7 = 0;
  v8 = v2;
  sigprocmask(1, &v8, &v7);
  v3 = qword_2A13BE490;
  *(*(qword_2A13BE490 + 1248) + 116) = a1;
  if (a1 == 28)
  {
    el_resize(v3);
  }

  else if (a1 == 19)
  {
    sub_29875090C(v3);
    if (sub_2987410F4() == 4)
    {
      sub_29874B484(qword_2A13BE490);
    }

    sub_29874F318(qword_2A13BE490);
  }

  else
  {
    sub_298750E0C(v3);
  }

  for (i = 0; i != 7; ++i)
  {
    if (dword_2987562E8[i] == a1)
    {
      break;
    }
  }

  sigaction(a1, (*(qword_2A13BE490 + 1248) + 16 * i), 0);
  v5 = qword_2A13BE490;
  *(*(qword_2A13BE490 + 1248) + 16 * i) = -1;
  *(*(v5 + 1248) + 16 * i + 8) = 0;
  sigprocmask(3, &v7, 0);
  return kill(0, a1);
}

uint64_t sub_29874D564(uint64_t a1)
{
  v8 = 0;
  sigprocmask(1, (*(a1 + 1248) + 112), &v8);
  v2 = 0;
  v3 = 2;
  v4 = &dword_2987562EC;
  do
  {
    v5 = *(a1 + 1248);
    if (*(v5 + v2) != -1)
    {
      sigaction(v3, (v5 + v2), 0);
    }

    v6 = *v4++;
    v3 = v6;
    v2 += 16;
  }

  while (v2 != 112);
  return sigprocmask(3, &v8, 0);
}

uint64_t sub_29874D5F8(void *a1)
{
  v2 = malloc_type_malloc(0x800uLL, 0x100004077774924uLL);
  a1[21] = v2;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = malloc_type_malloc(0x800uLL, 0x100004077774924uLL);
  a1[25] = v3;
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = malloc_type_malloc(0xE0uLL, 0x1052040397E700EuLL);
  a1[26] = v4;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[22] = 0;
  v5 = malloc_type_malloc(0x138uLL, 0x10040436913F5uLL);
  a1[23] = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v5[38] = 0;
  *(v5 + 17) = 0u;
  *(v5 + 18) = 0u;
  *(v5 + 15) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *v5 = 0u;
  v6 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
  a1[24] = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  *v6 = 0u;
  v6[1] = 0u;
  sub_29874D7E0(a1, 0);
  result = 0;
  v8 = a1[26];
  *v8 = &unk_2987563BC;
  *(v8 + 8) = 16;
  *(v8 + 16) = 14;
  *(v8 + 24) = 0;
  *(v8 + 32) = &unk_2987563D0;
  *(v8 + 40) = 19;
  *(v8 + 64) = &unk_2987563DC;
  *(v8 + 48) = 17;
  *(v8 + 56) = 0;
  *(v8 + 72) = 17;
  *(v8 + 80) = 16;
  *(v8 + 88) = 0;
  *(v8 + 96) = &unk_2987563F0;
  *(v8 + 104) = 18;
  *(v8 + 112) = 13;
  *(v8 + 120) = 0;
  *(v8 + 128) = &unk_298756408;
  *(v8 + 136) = 36;
  *(v8 + 144) = 10;
  *(v8 + 152) = 0;
  *(v8 + 160) = &unk_29875641C;
  *(v8 + 168) = 37;
  *(v8 + 176) = 11;
  *(v8 + 184) = 0;
  *(v8 + 192) = &unk_29875642C;
  *(v8 + 200) = 38;
  *(v8 + 208) = 3;
  *(v8 + 216) = 0;
  return result;
}

uint64_t sub_29874D7E0(uint64_t a1, char *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v19 = 0x8000000;
  v20 = 0;
  sigprocmask(1, &v19, &v20);
  v21 = &v22;
  if (!a2 && (a2 = getenv("TERM")) == 0 || !*a2)
  {
    a2 = "dumb";
  }

  v18 = 0;
  if (!strcmp(a2, "emacs"))
  {
    *(a1 + 44) |= 4u;
  }

  bzero(*(a1 + 200), 0x800uLL);
  v4 = tgetent(*(a1 + 200), a2);
  v5 = v4;
  if (v4 <= 0)
  {
    if (v4)
    {
      if (v4 == -1)
      {
        fwrite("Cannot read termcap database;\n", 0x1EuLL, 1uLL, *(a1 + 24));
      }
    }

    else
    {
      fprintf(*(a1 + 24), "No entry for terminal type %s;\n", a2);
    }

    fwrite("using dumb terminal settings.\n", 0x1EuLL, 1uLL, *(a1 + 24));
    v11 = 0;
    v12 = *(a1 + 192);
    *(v12 + 4) = xmmword_298756310;
    *(v12 + 20) = *(v12 + 28);
    do
    {
      *(*(a1 + 184) + ((v11 * 8) >> 1)) = 0;
      v13 = off_29EEAA128[v11 + 2];
      v11 += 2;
    }

    while (v13);
  }

  else
  {
    **(a1 + 192) = tgetflag("am");
    *(*(a1 + 192) + 24) = tgetflag("xn");
    *(*(a1 + 192) + 4) = tgetflag("pt");
    *(*(a1 + 192) + 20) = tgetflag("xt");
    *(*(a1 + 192) + 16) = tgetflag("km");
    *(*(a1 + 192) + 28) = tgetflag("MT");
    *(*(a1 + 192) + 12) = tgetnum("co");
    *(*(a1 + 192) + 8) = tgetnum("li");
    v6 = off_29EEAA128;
    v7 = "al";
    do
    {
      v8 = strchr(v7, *v7);
      v9 = tgetstr(v8, &v21);
      sub_29874E718(a1, v6, v9);
      v10 = v6[2];
      v6 += 2;
      v7 = v10;
    }

    while (v10);
  }

  v14 = *(a1 + 192);
  v15 = *(v14 + 12);
  if (v15 <= 1)
  {
    v15 = 80;
    *(v14 + 12) = 80;
  }

  if (*(v14 + 8) < 1)
  {
    *(v14 + 8) = 24;
  }

  *(a1 + 156) = v15;
  *(a1 + 152) = *(v14 + 8);
  sub_29874E944(a1);
  sub_29874EB38(a1, &v18 + 1, &v18);
  result = sub_29874EC1C(a1, SHIDWORD(v18), v18);
  if (result != -1)
  {
    sigprocmask(3, &v20, 0);
    sub_29874EDD4(a1);
    *(a1 + 144) = a2;
    if (v5 >= 1)
    {
      result = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29874DAD0(uint64_t a1)
{
  free(*(a1 + 168));
  *(a1 + 168) = 0;
  free(*(a1 + 200));
  *(a1 + 200) = 0;
  *(a1 + 176) = 0;
  free(*(a1 + 184));
  *(a1 + 184) = 0;
  free(*(a1 + 192));
  *(a1 + 192) = 0;
  free(*(a1 + 208));
  *(a1 + 208) = 0;

  sub_29874DB44(a1);
}

void sub_29874DB44(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2 + 1;
      do
      {
        free(v3);
        v5 = *v4++;
        v3 = v5;
      }

      while (v5);
    }

    free(v2);
  }

  v6 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v8 = v6 + 1;
      do
      {
        free(v7);
        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    free(v6);
  }
}

uint64_t sub_29874DBE0(uint64_t result, int a2)
{
  v2 = *(result + 56);
  v3 = v2 - a2;
  if (v2 != a2)
  {
    v5 = result;
    if (*(result + 156) >= a2)
    {
      v6 = a2 - v2;
      if (a2 - v2 < 1)
      {
        v12 = *(result + 184);
        result = *(v12 + 280);
        if (!result || !*result || v6 >= -1 && (v13 = *(v12 + 208)) != 0 && *v13)
        {
          v14 = *(v12 + 208);
          if (v14 && v6 && *v14)
          {
            do
            {
              v15 = *(*(v5 + 184) + 208);
              qword_2A13BE498 = *(v5 + 16);
              result = tputs(v15, 1, sub_29874FD88);
              --v3;
            }

            while (v3);
          }

          goto LABEL_30;
        }

        v6 = -v6;
      }

      else
      {
        v7 = v6 + 1;
        while ((*(v5 + 160) & 0x80) != 0)
        {
          v8 = *(*(v5 + 64) + 8 * *(v5 + 56));
          if (!*v8)
          {
            break;
          }

          v9 = *(v5 + 152);
          v10 = v9 - 1;
          if (v9 != 1)
          {
            do
            {
              if (v8[v10] != -1)
              {
                break;
              }

              --v10;
            }

            while (v10);
          }

          sub_29874DD94(v5, v10);
          result = sub_29874DFE0(v5, (*(*(v5 + 64) + 8 * *(v5 + 56)) + 4 * *(v5 + 52)), *(v5 + 152) - *(v5 + 52));
          --v7;
          v11 = __OFSUB__(v6--, 1);
          if ((v6 < 0) ^ v11 | (v6 == 0))
          {
            goto LABEL_30;
          }
        }

        if (v6 == 1 || (result = *(*(v5 + 184) + 248)) == 0 || !*result)
        {
          do
          {
            result = sub_29874E0EC(v5, 0xAu);
            --v7;
          }

          while (v7 > 1);
          *(v5 + 52) = 0;
          goto LABEL_30;
        }
      }

      v16 = tgoto(result, v6, v6);
      qword_2A13BE498 = *(v5 + 16);
      result = tputs(v16, v6, sub_29874FD88);
LABEL_30:
      *(v5 + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_29874DD94(uint64_t result, int a2)
{
  v2 = *(result + 52);
  if (v2 != a2)
  {
    v4 = result;
    if (*(result + 152) >= a2)
    {
      v5 = -7 * (a2 >> 3) + a2;
      while (1)
      {
        if (!a2)
        {
          result = sub_29874E0EC(v4, 0xDu);
          goto LABEL_40;
        }

        v6 = a2 - v2;
        if ((a2 - v2 - 5) <= 0xFFFFFFF6)
        {
          result = *(*(v4 + 184) + 32);
          if (result)
          {
            if (*result)
            {
              v9 = tgoto(result, a2, a2);
              qword_2A13BE498 = *(v4 + 16);
              v10 = a2;
              goto LABEL_39;
            }
          }
        }

        if (v6 >= 1)
        {
          break;
        }

        v7 = v2 - a2;
        if (v6 <= -5)
        {
          result = *(*(v4 + 184) + 264);
          if (result)
          {
            if (*result)
            {
              v9 = tgoto(result, v2 - a2, v2 - a2);
              qword_2A13BE498 = *(v4 + 16);
              v10 = -v6;
              goto LABEL_39;
            }
          }
        }

        if ((*(v4 + 160) & 8) != 0)
        {
          if (v5 >= v7)
          {
LABEL_23:
            if (v6 < 0)
            {
              if (v7 <= 1)
              {
                v11 = 1;
              }

              else
              {
                v11 = v2 - a2;
              }

              do
              {
                result = sub_29874E0EC(v4, 8u);
                --v11;
              }

              while (v11);
            }

            goto LABEL_40;
          }
        }

        else if (v7 <= a2)
        {
          goto LABEL_23;
        }

        result = sub_29874E0EC(v4, 0xDu);
        v2 = 0;
        *(v4 + 52) = 0;
        if (*(v4 + 152) < a2)
        {
          return result;
        }
      }

      if (v6 >= 5)
      {
        v8 = *(*(v4 + 184) + 272);
        if (v8)
        {
          if (*v8)
          {
            v9 = tgoto(v8, a2 - v2, a2 - v2);
            qword_2A13BE498 = *(v4 + 16);
            v10 = v6;
LABEL_39:
            result = tputs(v9, v10, sub_29874FD88);
            goto LABEL_40;
          }
        }
      }

      if ((*(v4 + 160) & 8) != 0)
      {
        v12 = v2 & 0xF8;
        v13 = a2 & 0xFFFFFFF8;
        if (v12 != (a2 & 0xFFFFFFF8) && *(*(*(v4 + 64) + 8 * *(v4 + 56)) + 4 * (a2 & 0xF8)) != -1)
        {
          while (v12 < v13)
          {
            sub_29874E0EC(v4, 9u);
            v12 += 8;
          }

          *(v4 + 52) = v13;
          v6 = a2 & 7;
          v2 = a2 & 0xFFFFFFF8;
        }
      }

      result = sub_29874DFE0(v4, (*(*(v4 + 64) + 8 * *(v4 + 56)) + 4 * v2), v6);
LABEL_40:
      *(v4 + 52) = a2;
    }
  }

  return result;
}

uint64_t sub_29874DFE0(uint64_t result, unsigned __int32 *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    if (*(result + 152) >= a3)
    {
      do
      {
        v6 = *a2++;
        result = sub_29874E0EC(v4, v6);
        v7 = *(v4 + 52) + 1;
        *(v4 + 52) = v7;
        --v3;
      }

      while (v3);
      v8 = *(v4 + 152);
      if (v7 >= v8)
      {
        v9 = *(v4 + 160);
        if ((v9 & 0x80) == 0)
        {
          v10 = v8 - 1;
LABEL_7:
          *(v4 + 52) = v10;
          return result;
        }

        v11 = *(v4 + 56) + 1;
        *(v4 + 52) = 0;
        *(v4 + 56) = v11;
        if ((v9 & 0x100) != 0)
        {
          v17 = **(*(v4 + 64) + 8 * v11);
          if (!v17)
          {
            result = sub_29874E0EC(v4, 0x20u);
            v10 = 1;
            goto LABEL_7;
          }

          result = sub_29874DFE0(v4, &v17, 1);
          v12 = *(v4 + 52);
          v13 = *(*(v4 + 64) + 8 * *(v4 + 56));
          if (*(v13 + 4 * v12) == -1)
          {
            v14 = (v13 + 4 * v12 + 4);
            v15 = v12 + 1;
            do
            {
              *(v4 + 52) = v15;
              v16 = *v14++;
              ++v15;
            }

            while (v16 == -1);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_29874E0EC(uint64_t a1, unsigned __int32 a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  result = sub_298752840(v6, 6uLL, a2);
  if (result > 0)
  {
    v6[result] = 0;
    return fputs(v6, *(a1 + 16));
  }

  return result;
}

char *sub_29874E154(char *result, int a2)
{
  if (a2 < 1)
  {
    return result;
  }

  v2 = result;
  if ((result[160] & 2) == 0)
  {
    return result;
  }

  v3 = a2;
  if (*(result + 38) < a2)
  {
    return result;
  }

  v4 = *(result + 23);
  v5 = v4[30];
  if (v5)
  {
    if (*v5)
    {
      if (a2 != 1 || (v6 = v4[6]) == 0 || !*v6)
      {
        result = tgoto(v5, a2, a2);
        qword_2A13BE498 = *(v2 + 2);
        v10 = v3;
        goto LABEL_21;
      }
    }
  }

  v7 = v4[8];
  if (v7 && *v7)
  {
    qword_2A13BE498 = *(v2 + 2);
    tputs(v7, 1, sub_29874FD88);
    v4 = *(v2 + 23);
  }

  v8 = v4[6];
  if (v8 && *v8)
  {
    do
    {
      --v3;
      v9 = *(*(v2 + 23) + 48);
      qword_2A13BE498 = *(v2 + 2);
      tputs(v9, 1, sub_29874FD88);
    }

    while (v3);
    v4 = *(v2 + 23);
  }

  result = v4[9];
  if (result && *result)
  {
    qword_2A13BE498 = *(v2 + 2);
    v10 = 1;
LABEL_21:

    return tputs(result, v10, sub_29874FD88);
  }

  return result;
}

uint64_t sub_29874E2C8(uint64_t result, unsigned __int32 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = result;
    if (*(result + 160))
    {
      v4 = a3;
      if (*(result + 152) >= a3)
      {
        v6 = *(result + 184);
        v7 = v6[32];
        if (!v7 || !*v7 || a3 == 1 && (v8 = v6[13]) != 0 && *v8)
        {
          v9 = v6[14];
          if (v9 && *v9 && (v10 = v6[10]) != 0 && *v10)
          {
            qword_2A13BE498 = *(v3 + 16);
            tputs(v9, 1, sub_29874FD88);
            *(v3 + 52) += v4;
            do
            {
              v11 = *a2++;
              sub_29874E0EC(v3, v11);
              --v4;
            }

            while (v4);
            v12 = *(v3 + 184);
            v13 = *(v12 + 120);
            if (v13 && *v13)
            {
              qword_2A13BE498 = *(v3 + 16);
              tputs(v13, 1, sub_29874FD88);
              v12 = *(v3 + 184);
            }

            v14 = *(v12 + 80);
            qword_2A13BE498 = *(v3 + 16);

            return tputs(v14, 1, sub_29874FD88);
          }

          else
          {
            do
            {
              v15 = *(*(v3 + 184) + 104);
              if (v15 && *v15)
              {
                qword_2A13BE498 = *(v3 + 16);
                tputs(v15, 1, sub_29874FD88);
              }

              v16 = *a2++;
              sub_29874E0EC(v3, v16);
              ++*(v3 + 52);
              result = *(*(v3 + 184) + 120);
              if (result && *result)
              {
                qword_2A13BE498 = *(v3 + 16);
                result = tputs(result, 1, sub_29874FD88);
              }

              --v4;
            }

            while (v4);
          }
        }

        else
        {
          v17 = tgoto(v7, a3, a3);
          qword_2A13BE498 = *(v3 + 16);
          tputs(v17, v4, sub_29874FD88);

          return sub_29874DFE0(v3, a2, v4);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29874E504(uint64_t result, int a2)
{
  v3 = result;
  if ((*(result + 160) & 4) != 0 && (result = *(*(result + 184) + 24)) != 0 && *result)
  {
    qword_2A13BE498 = *(v3 + 16);

    return tputs(result, 1, sub_29874FD88);
  }

  else
  {
    if (a2 >= 1)
    {
      v4 = a2;
      do
      {
        result = sub_29874E0EC(v3, 0x20u);
        --v4;
      }

      while (v4);
    }

    *(v3 + 52) += a2;
  }

  return result;
}

uint64_t sub_29874E5B8(void *a1)
{
  v2 = a1[23];
  v3 = v2[5];
  if (v3 && *v3)
  {
    v4 = *(a1[24] + 8);
    qword_2A13BE498 = a1[2];
LABEL_4:

    return tputs(v3, v4, sub_29874FD88);
  }

  v6 = v2[12];
  if (v6)
  {
    if (*v6)
    {
      v7 = v2[2];
      if (v7)
      {
        if (*v7)
        {
          v8 = *(a1[24] + 8);
          qword_2A13BE498 = a1[2];
          tputs(v6, v8, sub_29874FD88);
          v3 = *(a1[23] + 16);
          v4 = *(a1[24] + 8);
          qword_2A13BE498 = a1[2];
          goto LABEL_4;
        }
      }
    }
  }

  sub_29874E0EC(a1, 0xDu);

  return sub_29874E0EC(a1, 0xAu);
}

void el_beep_0(EditLine *a1)
{
  v2 = *(*(a1 + 23) + 8);
  if (v2 && *v2)
  {
    qword_2A13BE498 = *(a1 + 2);
    tputs(v2, 1, sub_29874FD88);
  }

  else
  {
    sub_29874E0EC(a1, 7u);
  }
}

void sub_29874E718(uint64_t a1, uint64_t a2, const char *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 184);
  v6 = (a2 - off_29EEAA128) >> 1;
  bzero(__src, 0x800uLL);
  if (!a3 || !*a3)
  {
    *(v5 + v6) = 0;
    goto LABEL_31;
  }

  v7 = strlen(a3);
  v8 = v7;
  v9 = *(v5 + v6);
  if (!v9)
  {
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_31:
    v24 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v7 <= strlen(*(v5 + v6)))
  {
    v10 = *MEMORY[0x29EDCA608];

    strcpy(v9, a3);
    return;
  }

LABEL_10:
  v11 = *(a1 + 176);
  if ((v11 + 3) < 0x800)
  {
    v12 = (*(a1 + 168) + v11);
LABEL_30:
    *(v5 + v6) = v12;
    strcpy(v12, a3);
    *(a1 + 176) += v8 + 1;
    goto LABEL_31;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(v5 + v14);
    if (v15)
    {
      v16 = v15 == v9;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = *v15;
      if (*v15)
      {
        v18 = (v15 + 1);
        do
        {
          v19 = v13 + 1;
          __src[v13] = v17;
          v20 = *v18++;
          v17 = v20;
          ++v13;
        }

        while (v20);
      }

      else
      {
        v19 = v13;
      }

      v13 = v19 + 1;
      __src[v19] = 0;
    }

    v21 = v14 >= 0x130;
    v14 += 8;
  }

  while (!v21);
  memcpy(*(a1 + 168), __src, 0x800uLL);
  *(a1 + 176) = v13;
  if ((v13 - 2045) > 0xFFFFFFFFFFFFF7FFLL)
  {
    v12 = (*(a1 + 168) + v13);
    goto LABEL_30;
  }

  v22 = *(a1 + 24);
  v23 = *MEMORY[0x29EDCA608];

  fwrite("Out of termcap string space.\n", 0x1DuLL, 1uLL, v22);
}

uint64_t sub_29874E944(uint64_t result)
{
  v1 = result;
  *(result + 160) = 0;
  v2 = *(result + 824);
  v3 = *(result + 192);
  if (v2)
  {
    v2 = v3[1];
    if (v2)
    {
      v2 = 8 * (v3[5] == 0);
    }

    *(result + 160) = v2;
  }

  if (v3[4])
  {
    v4 = 64;
  }

  else
  {
    v4 = (v3[7] != 0) << 6;
  }

  v5 = v2 | v4;
  *(result + 160) = v5;
  v6 = *(result + 184);
  v7 = *(v6 + 24);
  if (v7)
  {
    LODWORD(v7) = 4 * (*v7 != 0);
  }

  v8 = v7 | v5;
  *(result + 160) = v8;
  v9 = *(v6 + 48);
  if (v9 && *v9)
  {
    LODWORD(v10) = 2;
  }

  else
  {
    v10 = *(v6 + 240);
    if (v10)
    {
      LODWORD(v10) = 2 * (*v10 != 0);
    }
  }

  v11 = v10 | v8;
  *(result + 160) = v11;
  v12 = *(v6 + 112);
  if (v12 && *v12 || (v13 = *(v6 + 104)) != 0 && *v13)
  {
    LODWORD(v14) = 1;
  }

  else
  {
    v14 = *(v6 + 256);
    if (v14)
    {
      LODWORD(v14) = *v14 != 0;
    }
  }

  v15 = v14 | v11;
  *(result + 160) = v15;
  v16 = *(v6 + 208);
  if (v16 && *v16)
  {
    LODWORD(v17) = 32;
  }

  else
  {
    v17 = *(v6 + 280);
    if (v17)
    {
      LODWORD(v17) = 32 * (*v17 != 0);
    }
  }

  v18 = v17 | v15;
  *(result + 160) = v18;
  v19 = v18 | ((*v3 != 0) << 7);
  *(result + 160) = v19;
  v20 = v19 | ((v3[6] != 0) << 8);
  *(result + 160) = v20;
  v21 = *(v6 + 168);
  if (!v21)
  {
    v25 = v20 & 0xFFFFFFEF;
    goto LABEL_38;
  }

  if (*v21 && (v22 = *(v6 + 224)) != 0 && *v22)
  {
    result = strcmp(*(v6 + 168), v22);
    v23 = v20 | (16 * (result == 0));
  }

  else
  {
    v23 = v20 & 0xFFFFFFEF;
  }

  *(v1 + 160) = v23;
  if (*v21)
  {
    v24 = *(v6 + 184);
    if (v24)
    {
      if (*v24)
      {
        result = strcmp(v21, v24);
        v25 = v23 | (16 * (result == 0));
LABEL_38:
        *(v1 + 160) = v25;
      }
    }
  }

  return result;
}

BOOL sub_29874EB38(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v6 = *(a1 + 192);
  *a3 = *(v6 + 12);
  *a2 = *(v6 + 8);
  v7 = *(a1 + 32);
  v11 = 0;
  if (ioctl(v7, 0x40087468uLL, &v11) != -1)
  {
    if (WORD1(v11))
    {
      *a3 = WORD1(v11);
    }

    if (v11)
    {
      *a2 = v11;
    }
  }

  v8 = *(a1 + 32);
  v11 = 0;
  if (ioctl(v8, 0x40087468uLL, &v11) != -1)
  {
    if (WORD1(v11))
    {
      *a3 = WORD1(v11);
    }

    if (v11)
    {
      *a2 = v11;
    }
  }

  v9 = *(a1 + 192);
  return *(v9 + 12) != *a3 || *(v9 + 8) != *a2;
}

uint64_t sub_29874EC1C(uint64_t a1, int a2, int a3)
{
  if (a3 >= 2)
  {
    v4 = a3;
  }

  else
  {
    v4 = 80;
  }

  v5 = *(a1 + 192);
  if (a2 >= 1)
  {
    v6 = a2;
  }

  else
  {
    v6 = 24;
  }

  *(v5 + 8) = v6;
  *(v5 + 12) = v4;
  sub_29874DB44(a1);
  v7 = *(a1 + 192);
  *(a1 + 152) = *(v7 + 12);
  v8 = *(v7 + 8);
  *(a1 + 156) = v8;
  v9 = malloc_type_malloc(8 * v8 + 8, 0x10040436913F5uLL);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  v11 = *(a1 + 156);
  if (v11 >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = malloc_type_malloc(4 * *(a1 + 152) + 4, 0x100004052888210uLL);
      v10[v12] = v13;
      if (!v13)
      {
        break;
      }

      ++v12;
      v11 = *(a1 + 156);
      if (v12 >= v11)
      {
        goto LABEL_12;
      }
    }

    if (v12)
    {
      v20 = v12 + 1;
      do
      {
        free(v10[(v20-- - 2)]);
      }

      while (v20 > 1);
    }

    v21 = v10;
LABEL_26:
    free(v21);
    return 0xFFFFFFFFLL;
  }

LABEL_12:
  v10[v11] = 0;
  *(a1 + 64) = v10;
  v14 = malloc_type_malloc(8 * v11 + 8, 0x10040436913F5uLL);
  if (v14)
  {
    v15 = v14;
    v16 = *(a1 + 156);
    if (v16 < 1)
    {
LABEL_17:
      v15[v16] = 0;
      *(a1 + 72) = v15;
      sub_29874C13C(a1);
      return 0;
    }

    v17 = 0;
    while (1)
    {
      v18 = malloc_type_malloc(4 * *(a1 + 152) + 4, 0x100004052888210uLL);
      v15[v17] = v18;
      if (!v18)
      {
        break;
      }

      ++v17;
      v16 = *(a1 + 156);
      if (v17 >= v16)
      {
        goto LABEL_17;
      }
    }

    if (v17)
    {
      v22 = v17 + 1;
      do
      {
        free(v15[(v22-- - 2)]);
      }

      while (v22 > 1);
    }

    v21 = v15;
    goto LABEL_26;
  }

  return 0xFFFFFFFFLL;
}

void sub_29874EDD4(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a1 + 168))
  {
    v2 = *(a1 + 1056);
    if (v2)
    {
      v3 = *(a1 + 208);
      if (*(a1 + 1096) == 1)
      {
        v2 = *(a1 + 1048);
        v4 = 1080;
      }

      else
      {
        v4 = 1072;
      }

      v5 = *(a1 + v4);
      sub_298745514(a1, &dword_298756448, (v3 + 48), *(v3 + 56));
      sub_298745514(a1, &dword_298756458, (v3 + 16), *(v3 + 24));
      sub_298745514(a1, &dword_298756468, (v3 + 112), *(v3 + 120));
      sub_298745514(a1, &dword_298756478, (v3 + 80), *(v3 + 88));
      sub_298745514(a1, &dword_298756488, (v3 + 144), *(v3 + 152));
      sub_298745514(a1, &dword_298756498, (v3 + 176), *(v3 + 184));
      sub_298745514(a1, &dword_2987564A8, (v3 + 48), *(v3 + 56));
      sub_298745514(a1, &dword_2987564B8, (v3 + 16), *(v3 + 24));
      sub_298745514(a1, &dword_2987564C8, (v3 + 112), *(v3 + 120));
      sub_298745514(a1, &dword_2987564D8, (v3 + 80), *(v3 + 88));
      sub_298745514(a1, &dword_2987564E8, (v3 + 144), *(v3 + 152));
      sub_298745514(a1, &dword_2987564F8, (v3 + 176), *(v3 + 184));
      if (*(a1 + 1096) == 1)
      {
        sub_298745514(a1, dword_29875644C, (v3 + 48), *(v3 + 56));
        sub_298745514(a1, dword_29875645C, (v3 + 16), *(v3 + 24));
        sub_298745514(a1, dword_29875646C, (v3 + 112), *(v3 + 120));
        sub_298745514(a1, dword_29875647C, (v3 + 80), *(v3 + 88));
        sub_298745514(a1, dword_29875648C, (v3 + 144), *(v3 + 152));
        sub_298745514(a1, dword_29875649C, (v3 + 176), *(v3 + 184));
        sub_298745514(a1, dword_2987564AC, (v3 + 48), *(v3 + 56));
        sub_298745514(a1, dword_2987564BC, (v3 + 16), *(v3 + 24));
        sub_298745514(a1, dword_2987564CC, (v3 + 112), *(v3 + 120));
        sub_298745514(a1, dword_2987564DC, (v3 + 80), *(v3 + 88));
        sub_298745514(a1, dword_2987564EC, (v3 + 144), *(v3 + 152));
        sub_298745514(a1, dword_2987564FC, (v3 + 176), *(v3 + 184));
      }

      for (i = 0; i != 7; ++i)
      {
        v7 = v3 + 32 * i;
        v8 = *(*(a1 + 184) + 8 * *(v7 + 8));
        if (!v8 || !*v8)
        {
          continue;
        }

        v9 = 0;
        v10 = 0;
        while (v8[v10])
        {
          v18[v9++] = v8[v10++];
          if (v10 == 8)
          {
            goto LABEL_17;
          }
        }

        if (v10 <= 7)
        {
          bzero(&v18[v9], 32 - v9 * 4);
        }

LABEL_17:
        v11 = *(v7 + 24);
        if (v11 == 2)
        {
          sub_29874576C(a1, v2, v18);
        }

        else
        {
          v12 = *v8;
          if (v8[1])
          {
            v13 = *(v2 + v12);
            if (*(v5 + v12) == v13 || v13 == 24)
            {
              sub_298745514(a1, v18, (v7 + 16), v11);
              v15 = 24;
LABEL_31:
              *(v2 + v12) = v15;
              continue;
            }
          }

          else
          {
            v13 = *(v2 + v12);
          }

          if (v13 == 34)
          {
            sub_29874576C(a1, v2, v18);
            v16 = *(v7 + 24);
            if (!v16)
            {
              v15 = *(v7 + 16);
              goto LABEL_31;
            }

            sub_298745514(a1, v18, (v7 + 16), v16);
          }
        }
      }
    }
  }

  v17 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29874F1D0(uint64_t a1, __int32 *a2, void *a3, int a4)
{
  v7 = (*(a1 + 208) + 24);
  v8 = 7;
  while (1)
  {
    result = wcscmp(a2, *(v7 - 3));
    if (!result)
    {
      break;
    }

    v7 += 8;
    if (!--v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  *(v7 - 1) = *a3;
  *v7 = a4;
  return result;
}

uint64_t sub_29874F244(uint64_t a1, __int32 *a2)
{
  v3 = *(a1 + 208);
  v4 = 7;
  while (1)
  {
    result = wcscmp(a2, *v3);
    if (!result)
    {
      break;
    }

    v3 += 32;
    if (!--v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  *(v3 + 24) = 2;
  return result;
}

uint64_t sub_29874F2A0(uint64_t result, __int32 *a2)
{
  v3 = result;
  v4 = *(result + 208) + 16;
  v5 = 7;
  do
  {
    if (!*a2 || (result = wcscmp(a2, *(v4 - 16)), !result))
    {
      v6 = *(v4 + 8);
      if (v6 != 2)
      {
        result = sub_298745A30(v3, *(v4 - 16), v4, v6);
      }
    }

    v4 += 32;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_29874F320(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = sub_298752BF4(v7, 8uLL, a2);
  v4 = v3 & ~(v3 >> 63);
  v7[v4] = 0;
  sub_29874DFE0(a1, v7, v4);
  result = fflush(*(a1 + 16));
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29874F3A4(uint64_t a1)
{
  fwrite("\n\tYour terminal has the\n", 0x18uLL, 1uLL, *(a1 + 16));
  fwrite("\tfollowing characteristics:\n\n", 0x1DuLL, 1uLL, *(a1 + 16));
  fprintf(*(a1 + 16), "\tIt has %d columns and %d lines\n", *(*(a1 + 192) + 12), *(*(a1 + 192) + 8));
  if ((*(a1 + 160) & 0x40) != 0)
  {
    v2 = "a";
  }

  else
  {
    v2 = "no";
  }

  fprintf(*(a1 + 16), "\tIt has %s meta key\n", v2);
  if ((*(a1 + 160) & 8) != 0)
  {
    v3 = " ";
  }

  else
  {
    v3 = "not ";
  }

  fprintf(*(a1 + 16), "\tIt can%suse tabs\n", v3);
  if ((*(a1 + 160) & 0x80) != 0)
  {
    v4 = "has";
  }

  else
  {
    v4 = "does not have";
  }

  fprintf(*(a1 + 16), "\tIt %s automatic margins\n", v4);
  v5 = *(a1 + 160);
  if ((v5 & 0x80) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      v6 = "has";
    }

    else
    {
      v6 = "does not have";
    }

    fprintf(*(a1 + 16), "\tIt %s magic margins\n", v6);
  }

  v7 = *(a1 + 184);
  v8 = "al";
  v9 = off_29EEAA138;
  do
  {
    v10 = *v7;
    if (*v7 && *v10)
    {
      v11 = sub_2987528BC(v10, a1 + 1264);
      v12 = sub_298752AB4(v11);
      v13 = sub_29875277C(v12, a1 + 1264);
    }

    else
    {
      v13 = "(empty)";
    }

    fprintf(*(a1 + 16), "\t%25s (%s) == %s\n", *(v9 - 1), v8, v13);
    ++v7;
    v14 = *v9;
    v9 += 2;
    v8 = v14;
  }

  while (v14);
  fputc(10, *(a1 + 16));
  return 0;
}

uint64_t sub_29874F564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v5 = *(a3 + 8);
    if (v5)
    {
      if (*(a3 + 16))
      {
        v6 = sub_29875277C(v5, a1 + 1264);
        strncpy(__dst, v6, 8uLL);
        __dst[7] = 0;
        v7 = sub_29875277C(*(a3 + 16), a1 + 1264);
        strncpy(__str, v7, 8uLL);
        __str[7] = 0;
        v8 = off_29EEAA128;
        v9 = "al";
        do
        {
          if (!strcmp(v9, __dst))
          {
            sub_29874E718(a1, v8, __str);
            sub_29874E944(a1);
            result = 0;
            goto LABEL_13;
          }

          v10 = v8[2];
          v8 += 2;
          v9 = v10;
        }

        while (v10);
        v11 = "am";
        v12 = off_29EEAA3B8;
        while (strcmp(v11, __dst))
        {
          v13 = *v12;
          v12 += 2;
          v11 = v13;
          if (!v13)
          {
            __endptr = 0;
            v14 = strtol(__str, &__endptr, 10);
            if (*__endptr)
            {
              break;
            }

            v17 = v14;
            result = 0;
            v18 = *(a1 + 192);
            v18[8] = v17;
            *(a1 + 156) = v18[3];
            *(a1 + 152) = v18[2];
            goto LABEL_13;
          }
        }
      }
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_13:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29874F6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a3 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = "al";
  do
  {
    result = strcmp(v7, v3);
    if (!result)
    {
      v13 = *(*(a1 + 184) + ((v6 * 8) >> 1));
LABEL_13:
      *v4 = v13;
      return result;
    }

    v7 = off_29EEAA128[v6 + 2];
    v6 += 2;
  }

  while (v7);
  v9 = 0;
  v10 = 0;
  v11 = "am";
  while (strcmp(v11, v3))
  {
    v12 = &off_29EEAA3A8[v10];
    v10 += 2;
    v11 = v12[2];
    v9 += 4;
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v14 = *(*(a1 + 192) + v9);
  if (v10 < 4 || ((v10 * 8) & 0x7FFFFFFFFFFFFFD0) == 0x40)
  {
    result = 0;
    if (v14)
    {
      v13 = &unk_2A13BD680;
    }

    else
    {
      v13 = &unk_2A13BD684;
    }

    goto LABEL_13;
  }

  result = 0;
  *v4 = v14;
  return result;
}

uint64_t sub_29874F7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v50 = &v52;
  if (!a3)
  {
    goto LABEL_82;
  }

  v4 = a3 + 8;
  v3 = *(a3 + 8);
  if (!v3)
  {
    goto LABEL_82;
  }

  v51 = 0;
  if (*v3 == 45)
  {
    v6 = *(v3 + 4);
    v7 = v6 == 115 || v6 != 118;
    v8 = v6 != 115;
    v10 = *(a3 + 16);
    v9 = a3 + 16;
    v3 = v10;
    if (!v10)
    {
      goto LABEL_28;
    }

    v4 = v9;
    if (!*v3)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v8 = 1;
    v7 = 1;
    if (!*v3)
    {
      goto LABEL_28;
    }
  }

  if (!wcscmp(v3, dword_298756328))
  {
    v16 = *(a1 + 16);
    v28 = (*(a1 + 160) & 8) == 0;
LABEL_27:
    fprintf(v16, "%s\n");
    goto LABEL_28;
  }

  if (!wcscmp(v3, dword_29875633C))
  {
    v16 = *(a1 + 16);
    v28 = *(*(a1 + 192) + 16) == 0;
    goto LABEL_27;
  }

  if (!wcscmp(v3, dword_298756350))
  {
    v16 = *(a1 + 16);
    v28 = (*(a1 + 160) & 0x100) == 0;
    goto LABEL_27;
  }

  if (!wcscmp(v3, dword_29875635C))
  {
    v16 = *(a1 + 16);
    v28 = (*(a1 + 160) & 0x80) == 0;
    goto LABEL_27;
  }

  if (!wcscmp(v3, dword_298756368))
  {
    v18 = *(a1 + 16);
    v20 = *(a1 + 832);
    goto LABEL_31;
  }

  if (!wcscmp(v3, dword_29875637C) || !wcscmp(v3, dword_298756390))
  {
    v18 = *(a1 + 16);
    v19 = *(*(a1 + 192) + 8);
LABEL_31:
    fprintf(v18, "%d\n");
    goto LABEL_28;
  }

  if (!wcscmp(v3, dword_2987563A8))
  {
    v18 = *(a1 + 16);
    v21 = *(*(a1 + 192) + 12);
    goto LABEL_31;
  }

  v11 = 0;
  v12 = "al";
  while (1)
  {
    v13 = sub_29875277C(*v4, a1 + 1264);
    if (!strcmp(v12, v13))
    {
      break;
    }

    v12 = off_29EEAA128[v11 + 2];
    v11 += 2;
    if (!v12)
    {
      v14 = sub_29875277C(*v4, a1 + 1264);
      v15 = tgetstr(v14, &v50);
      goto LABEL_34;
    }
  }

  v15 = *(*(a1 + 184) + ((v11 * 8) >> 1));
LABEL_34:
  if (!v15 || (v22 = *v15, !*v15))
  {
    if (v8)
    {
      v30 = *v4;
    }

    goto LABEL_82;
  }

  v23 = 0;
  v49 = v15;
  v24 = v15;
  while (v22 == 37)
  {
    v26 = *++v24;
    v25 = v26;
    v27 = v26 - 37;
    if ((v26 - 37) > 0x3F)
    {
      goto LABEL_44;
    }

    if (((1 << v27) & 0x8000000000006240) != 0)
    {
      ++v23;
      goto LABEL_48;
    }

    if (((1 << v27) & 0xA2000001) == 0)
    {
LABEL_44:
      v28 = (v25 - 105) > 9 || ((1 << (v25 - 105)) & 0x221) == 0;
      if (v28 && !v7)
      {
      }
    }

LABEL_48:
    v29 = *++v24;
    v22 = v29;
  }

  if (v22)
  {
    goto LABEL_48;
  }

  if (v23 == 2)
  {
    goto LABEL_69;
  }

  if (v23 == 1)
  {
    v32 = *(v4 + 8);
    if (v32 && *v32)
    {
      v33 = wcstol(v32, &v51, 10);
      if (!*v51 && (v33 & 0x8000000000000000) == 0)
      {
        v34 = *(v4 + 16);
        if (v34 && *v34)
        {
          goto LABEL_58;
        }

        v35 = tgoto(v49, 0, v33);
        qword_2A13BE498 = *(a1 + 16);
        goto LABEL_85;
      }

      if (!v8)
      {
        goto LABEL_82;
      }

      v46 = *(a1 + 24);
      v47 = *(v4 + 8);
      goto LABEL_93;
    }

    goto LABEL_80;
  }

  if (v23)
  {
    if (!v7)
    {
      fprintf(*(a1 + 24), "echotc: Warning: Too many required arguments (%d).\n", v23);
    }

LABEL_69:
    v36 = *(v4 + 8);
    if (v36 && *v36)
    {
      v37 = wcstol(v36, &v51, 10);
      if (*v51 || (v38 = v37, v37 < 0))
      {
        if (v8)
        {
          v45 = *(v4 + 8);
        }

        goto LABEL_82;
      }

      v39 = *(v4 + 16);
      if (v39 && *v39)
      {
        v40 = wcstol(v39, &v51, 10);
        if (!*v51 && (v40 & 0x8000000000000000) == 0)
        {
          v41 = v40;
          v42 = *(v4 + 24);
          if (v42 && *v42)
          {
            goto LABEL_58;
          }

          v35 = tgoto(v49, v38, v40);
          qword_2A13BE498 = *(a1 + 16);
          v43 = v41;
          goto LABEL_86;
        }

        if (!v8)
        {
          goto LABEL_82;
        }

        v46 = *(a1 + 24);
        v48 = *(v4 + 16);
LABEL_93:
        goto LABEL_82;
      }
    }

LABEL_80:
    if (v8)
    {
      fwrite("echotc: Warning: Missing argument.\n", 0x23uLL, 1uLL, *(a1 + 24));
    }

LABEL_82:
    result = 0xFFFFFFFFLL;
    goto LABEL_83;
  }

  v31 = *(v4 + 8);
  if (v31 && *v31)
  {
LABEL_58:
    if (v8)
    {
    }

    goto LABEL_82;
  }

  qword_2A13BE498 = *(a1 + 16);
  v35 = v49;
LABEL_85:
  v43 = 1;
LABEL_86:
  tputs(v35, v43, sub_29874FD88);
LABEL_28:
  result = 0;
LABEL_83:
  v44 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29874FD88(int a1)
{
  if (qword_2A13BE498)
  {
    return fputc(a1, qword_2A13BE498);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

TokenizerW *__cdecl tok_winit(const __int32 *a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x1090040E7945993uLL);
  if (v2)
  {
    if (a1)
    {
      v3 = a1;
    }

    else
    {
      v3 = &unk_298756520;
    }

    v4 = sub_2987537AC(v3);
    *v2 = v4;
    if (v4)
    {
      *(v2 + 8) = xmmword_298756510;
      v5 = malloc_type_malloc(0x50uLL, 0x10040436913F5uLL);
      *(v2 + 3) = v5;
      if (v5)
      {
        *v5 = 0;
        v6 = malloc_type_malloc(0x50uLL, 0x100004052888210uLL);
        *(v2 + 7) = v6;
        if (v6)
        {
          *(v2 + 5) = v6 + 80;
          *(v2 + 6) = v6;
          *(v2 + 4) = v6;
          *(v2 + 8) = 0;
          return v2;
        }

        free(*(v2 + 3));
      }

      free(*v2);
    }

    free(v2);
    return 0;
  }

  return v2;
}

void tok_wreset(TokenizerW *a1)
{
  *(a1 + 1) = 0;
  v1 = *(a1 + 7);
  *(a1 + 6) = v1;
  *(a1 + 4) = v1;
  *(a1 + 8) = 0;
}

void tok_wend(TokenizerW *a1)
{
  free(*a1);
  free(*(a1 + 7));
  free(*(a1 + 3));

  free(a1);
}

int tok_wline(TokenizerW *a1, const LineInfoW *a2, int *a3, const __int32 ***a4, int *a5, int *a6)
{
  buffer = a2->buffer;
  v9 = -1;
  LODWORD(v10) = -1;
  while (1)
  {
    if (buffer >= a2->lastchar)
    {
      v11 = &unk_298756530;
    }

    else
    {
      v11 = buffer;
    }

    if (v11 == a2->cursor)
    {
      v9 = *(a1 + 2);
      v10 = (*(a1 + 4) - *(a1 + 6)) >> 2;
    }

    v12 = *v11;
    if (*v11 <= 33)
    {
      break;
    }

    switch(v12)
    {
      case '""':
        v13 = *(a1 + 16);
        *(a1 + 17) = *(a1 + 17) & 0xFFFFFFFC | 1;
        result = -1;
        if (v13 <= 1)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

LABEL_44:
          if (v13 != 1)
          {
            return result;
          }

LABEL_53:
          v21 = *(a1 + 4);
          *v21 = *v11;
          *(a1 + 4) = v21 + 1;
          goto LABEL_54;
        }

        if (v13 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_69;
      case '\\':
        v13 = *(a1 + 16);
        *(a1 + 17) = *(a1 + 17) & 0xFFFFFFFC | 1;
        result = -1;
        if (v13 <= 1)
        {
          if (v13)
          {
            goto LABEL_44;
          }

          v33 = 3;
        }

        else
        {
          if (v13 != 2)
          {
            if (v13 != 3)
            {
              goto LABEL_26;
            }

            v32 = *(a1 + 4);
            *v32 = *v11;
            *(a1 + 4) = v32 + 1;
            goto LABEL_69;
          }

          v33 = 4;
        }

LABEL_73:
        *(a1 + 16) = v33;
        goto LABEL_54;
      case '\'':
        v13 = *(a1 + 16);
        *(a1 + 17) = *(a1 + 17) & 0xFFFFFFFC | 1;
        result = -1;
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            goto LABEL_53;
          }

LABEL_21:
          if (v13 == 3)
          {
            goto LABEL_52;
          }

LABEL_26:
          if (v13 != 4)
          {
            return result;
          }

          goto LABEL_40;
        }

        if (v13)
        {
          if (v13 != 1)
          {
            return result;
          }

LABEL_69:
          *(a1 + 16) = 0;
          goto LABEL_54;
        }

        v33 = 1;
        goto LABEL_73;
    }

LABEL_31:
    v17 = *(a1 + 16);
    *(a1 + 17) &= ~2u;
    result = -1;
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        goto LABEL_52;
      }

      if (v17 != 4)
      {
        return result;
      }

      v19 = *(a1 + 4);
      *v19 = 92;
      *(a1 + 16) = 2;
      v20 = *v11;
      *(a1 + 4) = v19 + 2;
      v19[1] = v20;
    }

    else
    {
      if ((v17 - 1) < 2)
      {
        goto LABEL_53;
      }

      if (v17)
      {
        return result;
      }

      v18 = *v11;
      if (wcschr(*a1, *v11))
      {
        sub_298750328(a1);
      }

      else
      {
        v34 = *(a1 + 4);
        *v34 = v18;
        *(a1 + 4) = v34 + 1;
      }
    }

LABEL_54:
    v22 = *(a1 + 5);
    if (*(a1 + 4) >= (v22 - 16))
    {
      v23 = *(a1 + 7);
      v24 = ((v22 - v23) >> 2) + 20;
      v25 = malloc_type_realloc(v23, 4 * v24, 0x100004052888210uLL);
      if (!v25)
      {
        return -1;
      }

      v26 = *(a1 + 7);
      if (v25 != v26)
      {
        v27 = *(a1 + 1);
        if (v27)
        {
          for (i = 0; i != v27; ++i)
          {
            *(*(a1 + 3) + 8 * i) = &v25[*(*(a1 + 3) + 8 * i) - *(a1 + 7)];
          }

          v26 = *(a1 + 7);
        }

        *(a1 + 4) = &v25[*(a1 + 4) - v26];
        *(a1 + 6) = &v25[*(a1 + 6) - v26];
        *(a1 + 7) = v25;
      }

      *(a1 + 5) = &v25[4 * v24];
    }

    v29 = *(a1 + 2);
    if (*(a1 + 1) >= (v29 - 4))
    {
      v30 = v29 + 10;
      *(a1 + 2) = v30;
      v31 = malloc_type_realloc(*(a1 + 3), 8 * v30, 0x10040436913F5uLL);
      if (!v31)
      {
        return -1;
      }

      *(a1 + 3) = v31;
    }

    buffer = v11 + 1;
  }

  if (!v12)
  {
    result = *(a1 + 16);
    if (result <= 3)
    {
      if (result != 3)
      {
        if ((result - 1) < 2)
        {
          return result;
        }

        if (result)
        {
          return -1;
        }

        v35 = *(a1 + 17);
        if ((v35 & 2) != 0)
        {
          *(a1 + 17) = v35 & 0xFFFFFFFD;
          return 3;
        }

        goto LABEL_82;
      }

LABEL_52:
      *(a1 + 16) = 0;
      goto LABEL_53;
    }

    if (result != 4)
    {
      return -1;
    }

LABEL_40:
    *(a1 + 16) = 2;
    goto LABEL_53;
  }

  if (v12 != 10)
  {
    goto LABEL_31;
  }

  result = 0;
  v16 = *(a1 + 16);
  v15 = *(a1 + 17);
  *(a1 + 17) = v15 & 0xFFFFFFFD;
  if (v16 > 2)
  {
    if (v16 != 3)
    {
      if (v16 != 4)
      {
        return result;
      }

      *(a1 + 17) = v15 | 2;
LABEL_42:
      *(a1 + 16) = 2;
      goto LABEL_54;
    }

    *(a1 + 17) = v15 | 2;
    goto LABEL_69;
  }

  if ((v16 - 1) < 2)
  {
    goto LABEL_53;
  }

  if (v16)
  {
    return result;
  }

LABEL_82:
  if (v9 == -1 && v10 == -1)
  {
    v9 = *(a1 + 2);
    v10 = (*(a1 + 4) - *(a1 + 6)) >> 2;
  }

  if (a5)
  {
    *a5 = v9;
  }

  if (a6)
  {
    *a6 = v10;
  }

  sub_298750328(a1);
  result = 0;
  *a4 = *(a1 + 3);
  *a3 = *(a1 + 1);
  return result;
}

uint64_t sub_298750328(uint64_t result)
{
  v1 = *(result + 32);
  *v1 = 0;
  v2 = *(result + 68);
  v3 = *(result + 48);
  if ((v2 & 1) != 0 || v1 != v3)
  {
    v4 = *(result + 24);
    v5 = *(result + 8);
    *(result + 8) = v5 + 1;
    *(v4 + 8 * v5) = v3;
    *(*(result + 24) + 8 * (v5 + 1)) = 0;
    v6 = *(result + 32) + 4;
    *(result + 32) = v6;
    *(result + 48) = v6;
  }

  *(result + 68) = v2 & 0xFFFFFFFE;
  return result;
}

int tok_wstr(TokenizerW *a1, const __int32 *a2, int *a3, const __int32 ***a4)
{
  v8.buffer = a2;
  v8.cursor = wcschr(a2, 0);
  v8.lastchar = v8.cursor;
  return tok_wline(a1, &v8, a3, a4, 0, 0);
}

uint64_t sub_2987503E4(uint64_t a1)
{
  result = 0;
  *(a1 + 392) = *&off_29EEAA4E8;
  *(a1 + 408) = xmmword_29EEAA4F8;
  *(a1 + 424) = *&off_29EEAA508;
  *(a1 + 440) = xmmword_29EEAA518;
  *(a1 + 328) = *&off_29EEAA4A8;
  *(a1 + 344) = xmmword_29EEAA4B8;
  *(a1 + 360) = *&off_29EEAA4C8;
  *(a1 + 376) = xmmword_29EEAA4D8;
  *(a1 + 264) = *&off_29EEAA468;
  *(a1 + 280) = xmmword_29EEAA478;
  *(a1 + 296) = *&off_29EEAA488;
  *(a1 + 312) = xmmword_29EEAA498;
  *(a1 + 216) = xmmword_29EEAA438;
  *(a1 + 840) = 0;
  *(a1 + 844) = -1;
  *(a1 + 232) = *&off_29EEAA448;
  *(a1 + 248) = xmmword_29EEAA458;
  *(a1 + 488) = xmmword_298756580;
  *(a1 + 504) = unk_298756590;
  *(a1 + 515) = unk_29875659B;
  *(a1 + 456) = xmmword_298756560;
  *(a1 + 472) = unk_298756570;
  if ((*(a1 + 44) & 4) == 0)
  {
    if (!isatty(*(a1 + 36)))
    {
      return 0xFFFFFFFFLL;
    }

    v20 = 0;
    if (ioctl(*(a1 + 36), 0x40047477uLL, &v20) < 0)
    {
      v3 = *__error();
      result = 0xFFFFFFFFLL;
      if (v3 != 25)
      {
        return result;
      }

      v20 = -1;
    }

    else if ((v20 & 0x80000000) == 0 && getpgrp() != v20)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = (a1 + 536);
    result = sub_298750C8C(a1, (a1 + 536));
    if (result != -1)
    {
      v5 = *(a1 + 568);
      v6 = *(a1 + 584);
      *(a1 + 712) = v5;
      *(a1 + 728) = v6;
      v7 = *(a1 + 600);
      *(a1 + 744) = v7;
      v9 = *v4;
      v8 = *(a1 + 552);
      *(a1 + 680) = *v4;
      *(a1 + 696) = v8;
      *(a1 + 640) = v5;
      *(a1 + 656) = v6;
      *(a1 + 672) = v7;
      *(a1 + 608) = v9;
      *(a1 + 624) = v8;
      *(a1 + 784) = v5;
      *(a1 + 800) = v6;
      *(a1 + 752) = v9;
      *(a1 + 768) = v8;
      *(a1 + 816) = v7;
      v10 = cfgetispeed((a1 + 608));
      if (!v10)
      {
        v10 = cfgetospeed((a1 + 608));
      }

      *(a1 + 832) = v10;
      v11 = *(a1 + 616);
      *(a1 + 608) = *(a1 + 608) & ~*(a1 + 228) | *(a1 + 224);
      v12 = v11.i32[0] & ~*(a1 + 244) | *(a1 + 240);
      *(a1 + 824) = vand_s8(vmovn_s64(vceqq_s64(vandq_s8(v11, xmmword_298756540), xmmword_298756550)), 0x100000001);
      *(a1 + 616) = v12;
      *(a1 + 624) = v11.i32[2] & ~*(a1 + 260) | *(a1 + 256);
      *(a1 + 632) = *(a1 + 632) & ~*(a1 + 276) | *(a1 + 272);
      if (*(a1 + 777))
      {
        sub_298750CE4((a1 + 752), (a1 + 506));
        v13 = (a1 + 481);
        v14 = 23;
        do
        {
          v15 = v13[25];
          v16 = *(a1 + 844);
          if (v15 != v16 && *v13 != v16)
          {
            *v13 = v15;
          }

          ++v13;
          --v14;
        }

        while (v14);
        v17 = 25;
        v18 = (a1 + 456);
        do
        {
          v19 = v18[50];
          if (v19 != *(a1 + 844))
          {
            *v18 = v19;
          }

          ++v18;
          --v17;
        }

        while (v17);
      }

      sub_298750D78((a1 + 608), (a1 + 456));
      result = sub_29875073C(a1, 1, (a1 + 608));
      if (result != -1)
      {
        *(a1 + 680) = *(a1 + 680) & ~*(a1 + 308) | *(a1 + 304);
        *(a1 + 688) = *(a1 + 688) & ~*(a1 + 324) | *(a1 + 320);
        *(a1 + 696) = *(a1 + 696) & ~*(a1 + 340) | *(a1 + 336);
        *(a1 + 704) = *(a1 + 704) & ~*(a1 + 356) | *(a1 + 352);
        sub_298750D78((a1 + 680), (a1 + 481));
        sub_29875079C(a1, 1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_298750720(uint64_t result)
{
  if ((*(result + 44) & 6) == 0)
  {
    return sub_29875073C(result, 2, (result + 536));
  }

  return result;
}

uint64_t sub_29875073C(uint64_t a1, int a2, termios *a3)
{
  do
  {
    v6 = tcsetattr(*(a1 + 32), a2, a3);
  }

  while (v6 == -1 && *__error() == 4);
  return v6;
}

uint64_t sub_29875079C(uint64_t result, int a2)
{
  v3 = result;
  v18 = *MEMORY[0x29EDCA608];
  v16[1] = 0;
  v17[1] = 0;
  v4 = *(result + 1056);
  v5 = *(result + 1048);
  if (*(result + 1096) == 1)
  {
    v6 = (result + 1088);
    v7 = *(result + 1080);
  }

  else
  {
    v7 = 0;
    v6 = (result + 1072);
  }

  v8 = result + 712;
  v9 = *v6;
  v10 = 2;
  v11 = &unk_2987565AC;
  do
  {
    v12 = *(v3 + 481 + v10);
    v17[0] = v12;
    v13 = *(v8 + *(v11 + 1));
    v16[0] = v13;
    if (a2 || v12 != v13)
    {
      sub_29874576C(v3, v4, v16);
      *(v4 + v16[0]) = *(v9 + v16[0]);
      result = sub_29874576C(v3, v4, v17);
      *(v4 + v17[0]) = v11[*(v3 + 1096) + 8];
      if (v7)
      {
        sub_29874576C(v3, v5, v16);
        *(v5 + v16[0]) = *(v7 + v16[0]);
        result = sub_29874576C(v3, v5, v17);
        *(v5 + v17[0]) = v11[*(v3 + 1096) + 9];
      }
    }

    v14 = *(v11 + 3);
    v11 += 12;
    v10 = v14;
  }

  while (v14 != -1);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29875090C(uint64_t a1)
{
  if ((*(a1 + 840) - 1) < 2)
  {
    return 0;
  }

  if ((*(a1 + 44) & 6) != 0)
  {
    return 0;
  }

  v3 = (a1 + 752);
  result = sub_298750C8C(a1, (a1 + 752));
  if (result != -1)
  {
    *(a1 + 828) = (~*(a1 + 768) & 0x300) == 0;
    v4 = cfgetispeed((a1 + 752));
    if (!v4)
    {
      v4 = cfgetospeed((a1 + 752));
    }

    *(a1 + 832) = v4;
    v5 = cfgetispeed((a1 + 608));
    if (!v5)
    {
      v5 = cfgetospeed((a1 + 608));
    }

    v6 = *(a1 + 832);
    if (v5 != v6)
    {
      goto LABEL_15;
    }

    v7 = cfgetispeed((a1 + 680));
    if (!v7)
    {
      v7 = cfgetospeed((a1 + 680));
    }

    v6 = *(a1 + 832);
    if (v7 != v6)
    {
LABEL_15:
      cfsetispeed((a1 + 608), v6);
      cfsetospeed((a1 + 608), *(a1 + 832));
      cfsetispeed((a1 + 680), *(a1 + 832));
      cfsetospeed((a1 + 680), *(a1 + 832));
    }

    v8 = *(a1 + 776);
    if ((v8 & 0x100) != 0)
    {
      v9 = *(a1 + 768);
      if (v9 != *(a1 + 624))
      {
        *(a1 + 624) = v9 & ~*(a1 + 260) | *(a1 + 256);
        *(a1 + 696) = v9 & ~*(a1 + 340) | *(a1 + 336);
      }

      if (v8 != *(a1 + 632) && v8 != *(a1 + 704))
      {
        *(a1 + 632) = v8 & ~*(a1 + 276) | *(a1 + 272);
        *(a1 + 704) = v8 & ~*(a1 + 356) | *(a1 + 352);
      }

      v10 = *v3;
      if (*v3 != *(a1 + 608) && v10 != *(a1 + 680))
      {
        *(a1 + 608) = v10 & ~*(a1 + 228) | *(a1 + 224);
        *(a1 + 680) = v10 & ~*(a1 + 308) | *(a1 + 304);
      }

      v11 = *(a1 + 760);
      LOBYTE(v12) = v11;
      if (v11 != *(a1 + 616))
      {
        v12 = *(a1 + 616);
        if (v11 != *(a1 + 688))
        {
          v12 = v11 & ~*(a1 + 244) | *(a1 + 240);
          *(a1 + 616) = v12;
          *(a1 + 688) = v11 & ~*(a1 + 324) | *(a1 + 320);
        }
      }

      if ((v12 & 4) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = (*(a1 + 160) >> 3) & 1;
      }

      *(a1 + 824) = v13;
      sub_298750CE4((a1 + 752), (a1 + 506));
      v14 = 0;
      while (*(a1 + v14 + 506) == *(a1 + v14 + 456))
      {
        if (++v14 == 25)
        {
          goto LABEL_50;
        }
      }

      v15 = 0;
      v16 = *(a1 + 368);
      v17 = *(a1 + 372);
      do
      {
        if ((v16 & (1 << v15)) == 0)
        {
          v18 = *(a1 + v15 + 506);
          if (v18 != *(a1 + v15 + 456))
          {
            *(a1 + v15 + 481) = v18;
          }
        }

        if ((v17 & (1 << v15)) != 0)
        {
          *(a1 + v15 + 481) = *(a1 + 844);
        }

        ++v15;
      }

      while (v15 != 25);
      sub_29875079C(a1, 0);
      sub_298750D78((a1 + 680), (a1 + 481));
      v19 = *(a1 + 288);
      v20 = *(a1 + 292);
      v21 = 506;
      v22 = (a1 + 456);
      do
      {
        v23 = 1 << (v21 + 6);
        if ((v19 & v23) == 0)
        {
          v24 = v22[50];
          if (v24 != *v22)
          {
            *v22 = v24;
          }
        }

        if ((v20 & v23) != 0)
        {
          *v22 = *(a1 + 844);
        }

        ++v21;
        ++v22;
      }

      while (v21 != 531);
      sub_298750D78((a1 + 608), (a1 + 456));
    }

LABEL_50:
    result = sub_29875073C(a1, 1, (a1 + 680));
    if (result != -1)
    {
      result = 0;
      *(a1 + 840) = 1;
    }
  }

  return result;
}

uint64_t sub_298750C8C(uint64_t a1, termios *a2)
{
  do
  {
    v4 = tcgetattr(*(a1 + 32), a2);
  }

  while (v4 == -1 && *__error() == 4);
  return v4;
}

_BYTE *sub_298750CE4(_BYTE *result, _BYTE *a2)
{
  *a2 = result[40];
  a2[1] = result[41];
  a2[2] = result[35];
  a2[3] = result[37];
  a2[4] = result[32];
  a2[5] = result[33];
  a2[6] = result[34];
  a2[10] = result[44];
  a2[11] = result[45];
  a2[12] = result[36];
  a2[13] = result[42];
  a2[14] = result[43];
  a2[15] = result[38];
  a2[16] = result[47];
  a2[17] = result[46];
  a2[18] = result[50];
  a2[23] = result[48];
  a2[24] = result[49];
  return result;
}

_BYTE *sub_298750D78(_BYTE *result, _BYTE *a2)
{
  result[40] = *a2;
  result[41] = a2[1];
  result[35] = a2[2];
  result[37] = a2[3];
  result[32] = a2[4];
  result[33] = a2[5];
  result[34] = a2[6];
  result[44] = a2[10];
  result[45] = a2[11];
  result[36] = a2[12];
  result[42] = a2[13];
  result[43] = a2[14];
  result[38] = a2[15];
  result[47] = a2[16];
  result[46] = a2[17];
  result[50] = a2[18];
  result[48] = a2[23];
  result[49] = a2[24];
  return result;
}

uint64_t sub_298750E0C(uint64_t a1)
{
  if (!*(a1 + 840))
  {
    return 0;
  }

  if ((*(a1 + 44) & 6) != 0)
  {
    return 0;
  }

  result = sub_29875073C(a1, 1, (a1 + 608));
  if (result != -1)
  {
    result = 0;
    *(a1 + 840) = 0;
  }

  return result;
}

uint64_t sub_298750E74(uint64_t a1)
{
  if (*(a1 + 840) == 2)
  {
    return 0;
  }

  if ((*(a1 + 44) & 6) != 0)
  {
    return 0;
  }

  *(a1 + 816) = *(a1 + 744);
  v3 = *(a1 + 696);
  *(a1 + 752) = *(a1 + 680);
  *(a1 + 768) = v3;
  v4 = *(a1 + 728);
  *(a1 + 784) = *(a1 + 712);
  *(a1 + 800) = v4;
  *(a1 + 752) = *(a1 + 752) & ~*(a1 + 388) | *(a1 + 384);
  *(a1 + 760) = *(a1 + 760) & ~*(a1 + 404) | *(a1 + 400);
  *(a1 + 768) = *(a1 + 768) & ~*(a1 + 420) | *(a1 + 416);
  *(a1 + 776) = *(a1 + 776) & ~*(a1 + 436) | *(a1 + 432);
  result = sub_29875073C(a1, 1, (a1 + 752));
  if (result != -1)
  {
    result = 0;
    *(a1 + 840) = 2;
  }

  return result;
}

uint64_t sub_298750F70(uint64_t a1)
{
  if (*(a1 + 840) != 2)
  {
    return 0;
  }

  if ((*(a1 + 44) & 6) != 0)
  {
    return 0;
  }

  result = sub_29875073C(a1, 1, (a1 + 680));
  if (result != -1)
  {
    result = 0;
    *(a1 + 840) = 1;
  }

  return result;
}

uint64_t sub_298750FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 44) & 6) != 0)
  {
    goto LABEL_2;
  }

  if (!a3)
  {
LABEL_51:
    result = 0xFFFFFFFFLL;
    goto LABEL_52;
  }

  v54 = a1 + 216;
  v6 = sub_29875277C(*a3, a1 + 1264);
  strncpy(__dst, v6, 0x400uLL);
  __dst[1023] = 0;
  v9 = *(a3 + 8);
  v7 = (a3 + 8);
  v8 = v9;
  if (!v9)
  {
    v16 = 0;
    v15 = 0;
    goto LABEL_54;
  }

  v10 = 0;
  v11 = 0;
  v12 = (a1 + 608);
  while (*v8 == 45 && !v8[2])
  {
    v13 = v8[1];
    if (v13 > 112)
    {
      if (v13 == 113)
      {
        v10 = 2;
        v12 = (a1 + 752);
      }

      else
      {
        if (v13 != 120)
        {
LABEL_77:
          goto LABEL_51;
        }

        v10 = 0;
        v12 = (a1 + 608);
      }
    }

    else if (v13 == 97)
    {
      ++v11;
    }

    else
    {
      if (v13 != 100)
      {
        goto LABEL_77;
      }

      v10 = 1;
      v12 = (a1 + 680);
    }

    v14 = v7[1];
    ++v7;
    v8 = v14;
    if (!v14)
    {
      v15 = v10;
      v16 = v11 != 0;
LABEL_54:
      v35 = 0;
      v36 = 0;
      v37 = -1;
      v38 = "ignbrk";
      v39 = &off_29EEAA538;
      do
      {
        v40 = *(v39 - 1);
        if (v40 != v37)
        {
          v41 = &unk_29875BB52;
          if (v37 != -1)
          {
            v41 = "\n";
          }

          v42 = v54 + 80 * v15;
          fprintf(*(a1 + 16), "%s%s", v41, *(v42 + 16 * v40));
          v36 = strlen(*(v42 + 16 * v40));
          v37 = v40;
          v35 = v36;
        }

        if (v37 == -1)
        {
          v48 = 0;
        }

        else
        {
          v43 = v54 + 80 * v15 + 16 * v37;
          v44 = *(v39 - 2);
          v46 = *(v43 + 8);
          v45 = *(v43 + 12);
          if ((v44 & v46) != 0)
          {
            v47 = 43;
          }

          else
          {
            v47 = 0;
          }

          if ((v45 & v44) != 0)
          {
            v48 = 45;
          }

          else
          {
            v48 = v47;
          }
        }

        if (v48 != 0 || v16)
        {
          v49 = strlen(v38);
          v50 = 1;
          if (v48)
          {
            v50 = 2;
          }

          v51 = v50 + v49;
          v36 += v50 + v49;
          if (v36 >= *(a1 + 152))
          {
            fprintf(*(a1 + 16), "\n%*s", v35, &unk_29875BB52);
            v36 = v51 + v35;
          }

          v52 = *(a1 + 16);
          if (v48)
          {
            fprintf(v52, "%c%s ");
          }

          else
          {
            fprintf(v52, "%s ");
          }
        }

        v53 = *v39;
        v39 += 2;
        v38 = v53;
      }

      while (v53);
      fputc(10, *(a1 + 16));
LABEL_2:
      result = 0;
      goto LABEL_52;
    }
  }

  v17 = "ignbrk";
  v18 = &off_29EEAA538;
  while (2)
  {
    v55 = 0;
    v19 = *v8;
    if (*v8 == 45 || v19 == 43)
    {
      ++v8;
    }

    else
    {
      v19 = 0;
    }

    ++v7;
    v20 = wcschr(v8, 61);
    v55 = v20;
    v21 = v17;
    while (1)
    {
      v22 = sub_29875277C(v8, a1 + 1264);
      if (v20)
      {
        if (strncmp(v17, v22, v55 - v8))
        {
          goto LABEL_31;
        }
      }

      else if (strcmp(v17, v22))
      {
        goto LABEL_31;
      }

      if (!v55)
      {
        v23 = *(v18 - 2);
        if (v19 == 45)
        {
          v31 = v54 + 80 * v10 + 16 * *(v18 - 1);
          v32 = *(v31 + 8) & ~v23;
          v33 = *(v31 + 12) | v23;
          *(v31 + 8) = v32;
          *(v31 + 12) = v33;
          v17 = v21;
        }

        else
        {
          v17 = v21;
          v24 = (v54 + 80 * v10 + 16 * *(v18 - 1));
          if (v19 == 43)
          {
            v25 = v24[1].i32[0] | v23;
            v26 = v24[1].i32[1] & ~v23;
            v24[1].i32[0] = v25;
            v24[1].i32[1] = v26;
          }

          else
          {
            v24[1] = vand_s8(v24[1], vdup_n_s32(~v23));
          }
        }

        v18 = &off_29EEAA538;
        goto LABEL_46;
      }

      if (*(v18 - 1) == 4)
      {
        break;
      }

LABEL_31:
      v17 = *v18;
      if (!*v18)
      {
        goto LABEL_51;
      }

      v20 = v55;
      v18 += 2;
    }

    v27 = *(v18 - 2);
    v28 = v55[1];
    ++v55;
    if (v28)
    {
      v29 = sub_298746CB0(&v55);
    }

    else
    {
      v29 = *(a1 + 844);
    }

    v17 = v21;
    v18 = &off_29EEAA538;
    if (!v27)
    {
      sub_298754FA4();
    }

    v30 = __clz(__rbit32(v27));
    if (v30 >= 0x19 || ((0x187FC7Fu >> v30) & 1) == 0)
    {
      sub_298754F78();
    }

    v12->c_cc[qword_298756600[v30]] = v29;
LABEL_46:
    v8 = *v7;
    if (*v7)
    {
      continue;
    }

    break;
  }

  if (*(a1 + 840) != v10)
  {
    goto LABEL_2;
  }

  result = sub_29875073C(a1, 1, v12);
  if (result != -1)
  {
    goto LABEL_2;
  }

LABEL_52:
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2987514D0(uint64_t a1, int a2)
{
  v2 = *(a1 + 944);
  v3 = *(a1 + 936);
  if (v3)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 6;
  }

  v8 = v2 - v3;
  sub_29873FA30(a1);
  if (!a2)
  {
    v9 = *(a1 + 96);
    if (v9 < *(a1 + 104))
    {
      *(a1 + 96) = v9 + 4;
    }
  }

  sub_29873FAE4(a1, v8 >> 2);
  v10 = *(a1 + 96);
  if (v10 + v8 > *(a1 + 104))
  {
    return 6;
  }

  memcpy(v10, *(a1 + 936), v8);
  return 4;
}

uint64_t sub_298751578(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 88);
  if (v2 == v3)
  {
    return 6;
  }

  *(a1 + 96) = sub_2987401E0(v2, v3, *(a1 + 128), sub_29873FFBC);
  if (!*(a1 + 1000))
  {
    return 5;
  }

  sub_2987402A4(a1);
  return 4;
}

uint64_t sub_2987515E8(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 88);
  if (v2 == v3)
  {
    return 6;
  }

  *(a1 + 96) = sub_2987401E0(v2, v3, *(a1 + 128), sub_29873FF34);
  if (!*(a1 + 1000))
  {
    return 5;
  }

  sub_2987402A4(a1);
  return 4;
}

uint64_t sub_298751658(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 104);
  if (v1 >= v2 - 4)
  {
    return 6;
  }

  *(a1 + 96) = sub_298740100(a1, v1, v2, *(a1 + 128), sub_29873FFBC);
  if (*(a1 + 1096) != 1 || !*(a1 + 1000))
  {
    return 5;
  }

  sub_2987402A4(a1);
  return 4;
}

uint64_t sub_2987516D8(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 104);
  if (v1 >= v2 - 4)
  {
    return 6;
  }

  *(a1 + 96) = sub_298740100(a1, v1, v2, *(a1 + 128), sub_29873FF34);
  if (*(a1 + 1096) != 1 || !*(a1 + 1000))
  {
    return 5;
  }

  sub_2987402A4(a1);
  return 4;
}

uint64_t sub_298751758(uint64_t a1)
{
  if (*(a1 + 96) >= *(a1 + 104))
  {
    return 6;
  }

  sub_29873FA30(a1);
  if (*(a1 + 128) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = MEMORY[0x29EDCA600];
  while (1)
  {
    v4 = *(a1 + 96);
    v5 = *v4;
    if (v5 > 0x7F)
    {
      if (__maskrune(*v4, 0x8000uLL))
      {
LABEL_9:
        v7 = __tolower(v5);
        goto LABEL_10;
      }

      if (__maskrune(v5, 0x1000uLL))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = *(v3 + 4 * v5 + 60);
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_9;
      }

      if ((v6 & 0x1000) != 0)
      {
LABEL_7:
        v7 = __toupper(v5);
LABEL_10:
        v8 = *(a1 + 96);
        *v8 = v7;
        goto LABEL_11;
      }
    }

    v8 = *(a1 + 96);
LABEL_11:
    *(a1 + 96) = v8 + 1;
    if ((v8 + 1) >= *(a1 + 104))
    {
      break;
    }

    sub_29874C2E0(a1);
    if (++v2 >= *(a1 + 128))
    {
      return 0;
    }
  }

  *(a1 + 96) = v8;
  sub_29874C2E0(a1);
  return 0;
}

uint64_t sub_298751864(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = *(a1 + 1000);
  if (v4)
  {
    if (v4 == a2)
    {
      if ((a2 & 4) == 0)
      {
        sub_29873FA30(a1);
      }

      sub_29873FAA8(a1, *(a1 + 88), (*(a1 + 104) - *(a1 + 88)) >> 2);
      *(a1 + 1000) = 0;
      *(a1 + 1008) = 0;
      if ((v2 & 4) == 0)
      {
        v5 = *(a1 + 88);
        *(a1 + 96) = v5;
        *(a1 + 104) = v5;
      }

      if ((v2 & 2) != 0)
      {
        *(a1 + 1064) = *(a1 + 1056);
      }

      return 4;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    *(a1 + 1008) = *(a1 + 96);
    *(a1 + 1000) = a2;
    return 3;
  }
}

uint64_t sub_2987518FC(void *a1)
{
  a1[12] = a1[11];
  sub_29873FA30(a1);
  a1[133] = a1[132];
  return 5;
}

uint64_t sub_298751934(uint64_t a1)
{
  if (*(a1 + 96) >= *(a1 + 104))
  {
    return 6;
  }

  *(a1 + 1064) = *(a1 + 1056);
  *(a1 + 120) = 2;
  sub_29873FA30(a1);
  return 3;
}

uint64_t sub_298751978(uint64_t a1)
{
  *(a1 + 1064) = *(a1 + 1056);
  *(a1 + 120) = 1;
  sub_29873FA30(a1);
  return 0;
}

uint64_t sub_2987519A4(uint64_t a1)
{
  sub_29873FD24(a1, *(a1 + 128));
  *(a1 + 1064) = *(a1 + 1056);
  return 4;
}

uint64_t sub_2987519D8(uint64_t a1)
{
  sub_29873FA30(a1);
  sub_29873FAA8(a1, *(a1 + 88), (*(a1 + 104) - *(a1 + 88)) >> 2);
  sub_29874262C(a1);
  *(a1 + 1064) = *(a1 + 1056);
  return 4;
}

uint64_t sub_298751A2C(uint64_t a1)
{
  sub_29873FA30(a1);
  sub_29873FAA8(a1, *(a1 + 96), (*(a1 + 104) - *(a1 + 96)) >> 2);
  sub_298740B9C(a1);
  *(a1 + 1064) = *(a1 + 1056);
  return 4;
}

uint64_t sub_298751A7C(uint64_t a1)
{
  *(a1 + 1064) = *(a1 + 1056);
  sub_29873FA30(a1);
  return 0;
}

uint64_t sub_298751AA0(void *a1)
{
  a1[133] = a1[132];
  v2 = a1[12];
  v1 = a1[13];
  if (v2 >= v1)
  {
    v4 = 0;
  }

  else
  {
    v3 = v2 + 4;
    if (v3 <= v1)
    {
      v1 = v3;
    }

    a1[12] = v1;
    v4 = 5;
  }

  sub_29873FA30(a1);
  return v4;
}

uint64_t sub_298751AF4(void *a1)
{
  a1[133] = a1[132];
  a1[12] = a1[13];
  sub_29873FA30(a1);
  return 5;
}

uint64_t sub_298751B28(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  if (v2 == v3)
  {
    return 6;
  }

  v4 = sub_29874035C(v2, v3, *(a1 + 128), sub_29873FFBC);
  *(a1 + 96) = v4;
  if (!*(a1 + 1000))
  {
    return 5;
  }

  *(a1 + 96) = v4 + 1;
  sub_2987402A4(a1);
  return 4;
}

uint64_t sub_298751BA0(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  if (v2 == v3)
  {
    return 6;
  }

  v4 = sub_29874035C(v2, v3, *(a1 + 128), sub_29873FF34);
  *(a1 + 96) = v4;
  if (!*(a1 + 1000))
  {
    return 5;
  }

  *(a1 + 96) = v4 + 1;
  sub_2987402A4(a1);
  return 4;
}

uint64_t sub_298751C18(uint64_t a1)
{
  v1 = *(a1 + 912);
  if (v1 == -1)
  {
    return 6;
  }

  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 112);
  *(a1 + 912) = (*(a1 + 104) - v2) >> 2;
  v5 = *(a1 + 920);
  *(a1 + 920) = (v3 - v2) >> 2;
  v6 = *(a1 + 928);
  *(a1 + 928) = v2;
  *(a1 + 88) = v6;
  *(a1 + 96) = v6 + 4 * v5;
  *(a1 + 104) = v6 + 4 * v1;
  *(a1 + 112) = v6 + v4 - v2;
  return 4;
}

uint64_t sub_298751C78(uint64_t a1)
{
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 120) = 0;
  *(a1 + 1064) = *(a1 + 1048);
  v1 = *(a1 + 96);
  if (v1 > *(a1 + 88))
  {
    *(a1 + 96) = v1 - 4;
  }

  return 5;
}

uint64_t sub_298751CA8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 124))
  {

    return sub_298740F84(a1, a2);
  }

  else
  {
    *(a1 + 96) = *(a1 + 88);
    if (*(a1 + 1000))
    {
      sub_2987402A4(a1);
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_298751CF8(uint64_t a1)
{
  if (*(a1 + 96) <= *(a1 + 88))
  {
    return 6;
  }

  sub_29873FE8C(a1);
  *(a1 + 96) -= 4;
  return 4;
}

uint64_t sub_298751D44(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 == *(a1 + 104) && v2 == *(a1 + 88))
  {
    sub_29874F320(a1, a2);
    return 2;
  }

  else
  {
    el_beep_0(a1);
    return 6;
  }
}

uint64_t sub_298751D84(void *a1)
{
  v2 = a1[117];
  v3 = a1[11];
  v4 = a1[12];
  if (v3 < v4)
  {
    v5 = a1[11];
    do
    {
      v6 = *v5++;
      *v2++ = v6;
    }

    while (v5 < v4);
  }

  a1[118] = v2;
  sub_29873FDE8(a1, (v4 - v3) >> 2);
  a1[12] = a1[11];
  return 4;
}

uint64_t sub_298751DF8(size_t a1)
{
  if (*(a1 + 1224))
  {
    return sub_29874D138(a1, *(a1 + 1232));
  }

  else
  {
    return 6;
  }
}

uint64_t sub_298751E10(size_t a1)
{
  if (!*(a1 + 1224))
  {
    return 6;
  }

  if (*(a1 + 1232) == 23)
  {
    v1 = 22;
  }

  else
  {
    v1 = 23;
  }

  return sub_29874D138(a1, v1);
}

uint64_t sub_298751E98(uint64_t a1)
{
  v2 = *(a1 + 1236);
  result = sub_29874D16C(a1, -v2, *(a1 + 1240), *(a1 + 128), *(a1 + 1244));
  *(a1 + 1236) = v2;
  return result;
}

uint64_t sub_298751ED4(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  *v20 = xmmword_2987566C8;
  *&v20[3] = *(&xmmword_2987566C8 + 12);
  v3 = a1 + 96;
  v2 = *(a1 + 96);
  **(v3 + 8) = 0;
  v4 = wcscspn(v2, v20);
  v5 = *(a1 + 96);
  v6 = *(v5 + 4 * v4);
  if (v6)
  {
    v7 = v4;
    v8 = wcschr(v20, v6);
    v9 = v5 + 4 * v7 + 4;
    v10 = ((v8 - v20) >> 2) & 1;
    v11 = 4 - 8 * v10;
    v12 = -8 * v10;
    v13 = 1;
    while (1)
    {
      v14 = (v9 + v12);
      if ((v9 + v12) < *(a1 + 88) || v14 >= *(a1 + 104))
      {
        break;
      }

      v15 = *v14;
      if (v15 == *(v20 + ((4 * ((v8 - v20) >> 2)) ^ 4)))
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v15 == v6)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      v9 += v11;
      v13 += v17;
      if (!v13)
      {
        *(a1 + 96) = v9 - 4;
        if (*(a1 + 1000))
        {
          *(a1 + 96) = v9;
          sub_2987402A4(a1);
          result = 4;
        }

        else
        {
          result = 5;
        }

        goto LABEL_15;
      }
    }
  }

  result = 6;
LABEL_15:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29875201C(uint64_t a1)
{
  sub_29873FA30(a1);

  return sub_298743C3C(a1);
}

uint64_t sub_298752054(uint64_t a1)
{
  *(a1 + 96) = *(a1 + 88);
  --*(a1 + 128);
  return sub_298740D08(a1);
}

uint64_t sub_2987520A0(uint64_t a1)
{
  *(a1 + 96) = *(a1 + 88);
  sub_29873FAE4(a1, 1);
  **(a1 + 96) = 35;
  sub_29874B484(a1);

  return sub_29874102C(a1);
}

uint64_t sub_298752104(uint64_t a1)
{
  v2 = *(a1 + 1176);
  if (!v2)
  {
    wcsncpy(*(a1 + 1152), *(a1 + 88), 0x400uLL);
    *(a1 + 1168) = *(a1 + 1152) + *(a1 + 104) - *(a1 + 88);
  }

  if (!*(a1 + 124))
  {
    *(a1 + 1176) = 0x7FFFFFFF;
    sub_298743C3C(a1);
    goto LABEL_8;
  }

  *(a1 + 1176) = 1;
  result = sub_298743C3C(a1);
  if (result == 6)
  {
    return result;
  }

  v4 = *(a1 + 1200) - *(a1 + 128) + 1;
  *(a1 + 1176) = v4;
  if (v4 >= 0)
  {
LABEL_8:
    result = sub_298743C3C(a1);
    if (result != 6)
    {
      return result;
    }
  }

  *(a1 + 1176) = v2;
  return 6;
}

uint64_t sub_2987521B8(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  strcpy(v19, "/tmp/histedit.XXXXXXXXXX");
  if (*(a1 + 124))
  {
    result = sub_298752104(a1);
    if (result == 6)
    {
      goto LABEL_15;
    }
  }

  v18 = 0;
  v3 = mkstemp(v19);
  if (v3 < 0)
  {
LABEL_14:
    result = 6;
    goto LABEL_15;
  }

  v4 = v3;
  v5 = *(a1 + 104);
  v6 = *(a1 + 88);
  v7 = malloc_type_malloc(0x1800uLL, 0x100004077774924uLL);
  if (!v7)
  {
    v10 = 0;
LABEL_13:
    free(v10);
    free(v7);
    close(v4);
    unlink(v19);
    goto LABEL_14;
  }

  v8 = v5 - v6;
  v9 = malloc_type_malloc(v8 + 1, 0x100004052888210uLL);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_13;
  }

  wcsncpy(v9, *(a1 + 88), v8 >> 2);
  *(v10 + v8) = 0;
  wcstombs(v7, v10, 0x17FFuLL);
  v7[6143] = 0;
  v11 = strlen(v7);
  write(v4, v7, v11);
  write(v4, "\n", 1uLL);
  v12 = fork();
  if (v12 == -1)
  {
    goto LABEL_13;
  }

  v13 = v12;
  if (!v12)
  {
    close(v4);
    execlp("vi", "vi", v19, 0);
    exit(0);
  }

    ;
  }

  lseek(v4, 0, 0);
  v14 = read(v4, v7, 0x1800uLL);
  v15 = *(a1 + 88);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = mbstowcs(v15, v7, (*(a1 + 104) - v15) >> 2);
    v15 = *(a1 + 88);
    if (v16)
    {
      v16 -= v15[v16 - 1] == 10;
    }
  }

  *(a1 + 96) = v15;
  *(a1 + 104) = &v15[v16];
  free(v7);
  free(v10);
  close(v4);
  unlink(v19);
  result = sub_29874102C(a1);
LABEL_15:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298752424(uint64_t a1)
{
  if ((*(a1 + 44) & 0x40) != 0)
  {
    v2 = sub_298743DF8(a1, 3);
    if (!v2)
    {
      return 6;
    }
  }

  else
  {
    if ((*(a1 + 1192))(*(a1 + 1184), a1 + 1200, 3) == -1)
    {
      return 6;
    }

    v2 = *(a1 + 1208);
    if (!v2)
    {
      return 6;
    }
  }

  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x29EDCA600];
  while (1)
  {
    v6 = v4;
    v4 = (v2 - 1);
    do
    {
      v7 = v2;
      v8 = v4[1];
      if (v8 > 0x7F)
      {
        v9 = __maskrune(v8, 0x4000uLL);
      }

      else
      {
        v9 = *(v5 + 4 * v8 + 60) & 0x4000;
      }

      ++v2;
      ++v4;
    }

    while (v9);
    v10 = *v4;
    v2 = v3;
    if (!*v4)
    {
LABEL_22:
      if (!v6)
      {
        return 6;
      }

      goto LABEL_23;
    }

    v2 = v4;
    do
    {
      if (v10 > 0x7F)
      {
        if (__maskrune(v10, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v5 + 4 * v10 + 60) & 0x4000) != 0)
      {
        break;
      }

      v11 = v2[1];
      ++v2;
      v10 = v11;
    }

    while (v11);
    if (*(a1 + 124))
    {
      v12 = *(a1 + 128);
      *(a1 + 128) = v12 - 1;
      if (v12 < 2)
      {
        break;
      }
    }

    v3 = v2;
    v6 = v4;
    if (!*v2)
    {
      goto LABEL_22;
    }
  }

  v6 = v7;
  if (!v7)
  {
    return 6;
  }

LABEL_23:
  if (*(a1 + 124) && *(a1 + 128))
  {
    return 6;
  }

  sub_29873FA30(a1);
  v13 = *(a1 + 96);
  if (v13 < *(a1 + 104))
  {
    *(a1 + 96) = v13 + 4;
  }

  sub_29873FAE4(a1, ((v2 - v6) >> 2) + 1);
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  if (v14 < v15)
  {
    *v14++ = 32;
  }

  if (v6 < v2 && v14 < v15)
  {
    v16 = (v6 + 1);
    do
    {
      *v14++ = *(v16 - 4);
      if (v16 >= v2)
      {
        break;
      }

      v16 += 4;
    }

    while (v14 < v15);
  }

  *(a1 + 96) = v14;
  *(a1 + 1064) = *(a1 + 1056);
  return 4;
}

uint64_t sub_298752614(EditLine *a1)
{
  if (!*(a1 + 31))
  {
    v2 = *(a1 + 248);
    if (v2)
    {
      *(a1 + 31) = 1;
      *(a1 + 32) = v2;
    }
  }

  *(a1 + 126) = *(a1 + 12);
  *(a1 + 250) = *(a1 + 249);
  v3 = *(a1 + 121);
  v4 = *(a1 + 120);
  if (v3 != v4)
  {
    v5 = *(a1 + 122);
    if ((v3 + 1) > v5)
    {
      v3 = (v5 - 4);
      *(a1 + 121) = v5 - 4;
    }

    *v3 = 0;
    el_wpush(a1, v4);
  }

  v6 = *(a1 + 984);
  *(a1 + 137) = v6;
  *(a1 + 35) = *(a1 + 247);
  v7 = *(*(a1 + 139) + 8 * v6);

  return v7(a1);
}

void **sub_2987526D4(void **result, size_t a2, unint64_t a3)
{
  v4 = result;
  if (result[1] < a2)
  {
    result[1] = a2;
    result = malloc_type_realloc(*result, a2, 0x100004077774924uLL);
    if (!result)
    {
      v4[1] = 0;
      free(*v4);
      result = 0;
    }

    *v4 = result;
  }

  if (v4[3] < a3)
  {
    v4[3] = a3;
    result = malloc_type_realloc(v4[2], 4 * a3, 0x100004052888210uLL);
    if (!result)
    {
      v4[3] = 0;
      free(v4[2]);
      result = 0;
    }

    v4[2] = result;
  }

  return result;
}

unsigned __int32 *sub_29875277C(unsigned __int32 *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *a2;
    if (*a2 || (sub_2987526D4(a2, 0x400uLL, 0), (v4 = *a2) != 0))
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = v3 + 1;
        do
        {
          v7 = *(a2 + 8);
          v8 = &v4[-*a2];
          if (v7 - v8 <= 4)
          {
            sub_2987526D4(a2, v7 + 1024, 0);
            if (!*a2)
            {
              return 0;
            }

            v4 = &v8[*a2];
            v5 = *(v6 - 1);
          }

          v9 = sub_298752840(v4, 5uLL, v5);
          if (v9 == -1)
          {
            abort();
          }

          v4 += v9;
          v10 = *v6++;
          v5 = v10;
        }

        while (v10);
      }

      *v4 = 0;
      return *a2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_298752840(char *a1, unint64_t a2, unsigned __int32 a3)
{
  v3 = 1;
  v4 = 2;
  v5 = 3;
  if (a3 >= 0x10000)
  {
    v5 = 4 * (a3 < 0x110000);
  }

  if (a3 >= 0x800)
  {
    v4 = v5;
  }

  if (a3 >= 128)
  {
    v3 = v4;
  }

  if (v3 > a2)
  {
    return -1;
  }

  LODWORD(result) = wctomb(a1, a3);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  wctomb(0, 0);
  return 0;
}

__int32 *sub_2987528BC(__int32 *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if ((*(a2 + 16) || (sub_2987526D4(a2, 0, 0x400uLL), *(a2 + 16))) && (v4 = mbstowcs(0, v3, 0), v4 != -1))
    {
      if (v4 > *(a2 + 24))
      {
        sub_2987526D4(a2, 0, v4 + 1);
      }

      result = *(a2 + 16);
      if (result)
      {
        mbstowcs(result, v3, *(a2 + 24));
        return *(a2 + 16);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_29875295C(int a1, const char **a2, uint64_t a3)
{
  if (a1 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a1;
    v8 = a2;
    do
    {
      if (*v8)
      {
        v9 = strlen(*v8) + 1;
      }

      else
      {
        v9 = 0;
      }

      v6 += v9;
      ++v8;
      --v7;
    }

    while (v7);
  }

  sub_2987526D4(a3, 0, v6);
  if (!*(a3 + 24))
  {
    return 0;
  }

  v10 = malloc_type_malloc(8 * a1 + 8, 0x10040436913F5uLL);
  v10[a1] = 0;
  if (a1 >= 1)
  {
    v11 = 0;
    v12 = *(a3 + 16);
    v13 = 8 * a1;
    do
    {
      if (a2[v11 / 8])
      {
        v10[v11 / 8] = v12;
        v14 = mbstowcs(v12, a2[v11 / 8], v6);
        if (v14 == -1)
        {
          free(v10);
          return 0;
        }

        v6 -= v14 + 1;
        v12 += v14 + 1;
      }

      else
      {
        v10[v11 / 8] = 0;
      }

      v11 += 8;
    }

    while (v13 != v11);
  }

  return v10;
}

uint64_t sub_298752A80(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  if (a1 >= 0x10000)
  {
    v2 = 4 * (a1 < 0x110000);
  }

  if (a1 >= 0x800)
  {
    v1 = v2;
  }

  if (a1 >= 128)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

unsigned int *sub_298752AB4(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    v2 = qword_2A13BE4A0;
    if (!qword_2A13BE4A0)
    {
      qword_2A13BE4A8 = 1024;
      v2 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
      qword_2A13BE4A0 = v2;
    }

    v3 = *v1;
    if (v3)
    {
      do
      {
        result = qword_2A13BE4A0;
        while (1)
        {
          v4 = sub_298752BF4(v2, qword_2A13BE4A8 - ((v2 - result) >> 2), v3);
          if (v4 != -1)
          {
            break;
          }

          v5 = qword_2A13BE4A0;
          qword_2A13BE4A8 += 1024;
          result = malloc_type_realloc(qword_2A13BE4A0, 4 * qword_2A13BE4A8, 0x100004052888210uLL);
          if (!result)
          {
            goto LABEL_17;
          }

          qword_2A13BE4A0 = result;
          v2 = &v2[result - v5];
          v3 = *v1;
          if (!v3)
          {
            goto LABEL_13;
          }
        }

        v6 = v1[1];
        ++v1;
        v3 = v6;
        v2 += 4 * v4;
      }

      while (v6);
      result = qword_2A13BE4A0;
    }

    else
    {
      result = v2;
    }

LABEL_13:
    v7 = qword_2A13BE4A8;
    if (v2 < &result[qword_2A13BE4A8])
    {
      goto LABEL_16;
    }

    ++qword_2A13BE4A8;
    result = malloc_type_realloc(result, 4 * (v7 + 1), 0x100004052888210uLL);
    if (result)
    {
      qword_2A13BE4A0 = result;
      v2 = &result[qword_2A13BE4A8 - 1];
LABEL_16:
      *v2 = 0;
      return result;
    }

LABEL_17:
    free(qword_2A13BE4A0);
    result = 0;
    qword_2A13BE4A8 = 0;
  }

  return result;
}

uint64_t sub_298752BF4(_DWORD *a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_298752D88(a3);
  if (v6 >= 0xFFFFFFFD)
  {
    if (a2 >= 2)
    {
      v7 = a3 | 0x40;
      if (a3 == 127)
      {
        v7 = 63;
      }

      *a1 = 94;
      a1[1] = v7;
      return 2;
    }

    return -1;
  }

  if (v6 != -4)
  {
    if (a2)
    {
      *a1 = a3;
      return 1;
    }

    return -1;
  }

  if (sub_298752D0C(a3) > a2)
  {
    return -1;
  }

  *a1 = 0x550000005CLL;
  a1[2] = 43;
  if (a3 < 0x10000)
  {
    v9 = a1 + 3;
    result = 7;
  }

  else
  {
    v9 = a1 + 4;
    a1[3] = a0123456789abcd[(a3 >> 16) & 0xF];
    result = 8;
  }

  *v9 = a0123456789abcd[a3 >> 12];
  v9[1] = a0123456789abcd[(a3 >> 8) & 0xF];
  v9[2] = a0123456789abcd[a3 >> 4];
  v9[3] = a0123456789abcd[a3 & 0xF];
  return result;
}

uint64_t sub_298752D0C(__darwin_ct_rune_t a1)
{
  v2 = sub_298752D88(a1);
  if (v2 <= -3)
  {
    if (a1 < 0x10000)
    {
      v4 = 7;
    }

    else
    {
      v4 = 8;
    }

    if (v2 == -4)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else if (v2)
  {
    if (v2 == -1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return wcwidth(a1);
  }
}

uint64_t sub_298752D88(__darwin_ct_rune_t a1)
{
  if (a1 == 9)
  {
    return 4294967294;
  }

  if (a1 == 10)
  {
    return 4294967293;
  }

  if (a1 <= 255)
  {
    if (a1 <= 0x7F)
    {
      v3 = *(MEMORY[0x29EDCA600] + 4 * a1 + 60);
      if ((v3 & 0x200) == 0)
      {
        v4 = v3 & 0x40000;
        goto LABEL_12;
      }

      return 0xFFFFFFFFLL;
    }

    if (__maskrune(a1, 0x200uLL))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v4 = __maskrune(a1, 0x40000uLL);
LABEL_12:
  if (v4)
  {
    return 0;
  }

  else
  {
    return 4294967292;
  }
}

int el_getc(EditLine *a1, char *a2)
{
  v7 = 0;
  v4 = *(a1 + 11);
  if ((v4 & 0x10) == 0)
  {
    *(a1 + 11) = v4 | 0x20;
  }

  result = el_wgetc(a1, &v7);
  v6 = *(a1 + 11);
  if ((v6 & 0x10) == 0)
  {
    *(a1 + 11) = v6 & 0xFFFFFFCF;
  }

  if (result >= 1)
  {
    *a2 = v7;
  }

  return result;
}

void el_push(EditLine *a1, const char *a2)
{
  v3 = sub_2987528BC(a2, a1 + 1296);

  el_wpush(a1, v3);
}

const char *__cdecl el_gets(EditLine *a1, int *a2)
{
  v4 = *(a1 + 11);
  if ((v4 & 0x10) == 0)
  {
    *(a1 + 11) = v4 | 0x20;
  }

  v5 = el_wgets(a1, a2);
  v6 = *(a1 + 11);
  if ((v6 & 0x10) == 0)
  {
    *(a1 + 11) = v6 & 0xFFFFFFCF;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = sub_29875277C(v5, a1 + 1296);
  v8 = v7;
  if (v7)
  {
    *a2 = strlen(v7);
  }

  return v8;
}

int el_parse(EditLine *a1, int a2, const char **a3)
{
  v5 = sub_29875295C(a2, a3, a1 + 1296);
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  v7 = el_wparse(a1, a2, v5);
  free(v6);
  return v7;
}

int el_set(EditLine *a1, int a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v38 = va_arg(va1, __int32 *);
  va_copy(va2, va1);
  v39 = va_arg(va2, void);
  va_copy(va3, va2);
  v40 = va_arg(va3, void);
  v37 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    va_copy(v25, va);
    v3 = -1;
    switch(a2)
    {
      case 0:
      case 12:
        v11 = v38;
        v12 = 0;
        goto LABEL_15;
      case 1:
        v10 = el_wset(a1, 1, v38, v24, va1);
        goto LABEL_31;
      case 2:
        v23 = sub_2987528BC(v38, a1 + 1296);
        v10 = el_wset(a1, 2, v23, v24, va1);
        goto LABEL_31;
      case 3:
      case 11:
      case 15:
      case 16:
        v10 = el_wset(a1, a2, v38, v24, va1);
        goto LABEL_31;
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        v36 = 0;
        v35 = 0u;
        v34 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v5 = 1;
        v27 = 0u;
        do
        {
          v6 = va_arg(v25, const char *);
          (&v26)[v5] = v6;
          if (!v6)
          {
            break;
          }

          ++v5;
        }

        while (v5 != 20);
        v26 = 0;
        v7 = sub_29875295C(v5 + 1, &v26, a1 + 1296);
        if (!v7)
        {
          goto LABEL_23;
        }

        v8 = v7;
        v3 = -1;
        if (a2 <= 5)
        {
          if (a2 == 4)
          {
            *v7 = &unk_29875BAC8;
            v9 = sub_2987462CC();
          }

          else
          {
            if (a2 != 5)
            {
              goto LABEL_36;
            }

            *v7 = &unk_29875BADC;
            v9 = sub_29874F3A4(a1);
          }
        }

        else
        {
          switch(a2)
          {
            case 6:
              *v7 = &unk_29875BAF8;
              v9 = sub_29874F564(a1, v5, v7);
              break;
            case 7:
              *v7 = &unk_29875BB10;
              v9 = sub_29874F7FC(a1, v5, v7);
              break;
            case 8:
              *v7 = &unk_29875BB2C;
              v9 = sub_298750FE0(a1, v5, v7);
              break;
            default:
              goto LABEL_36;
          }
        }

        v3 = v9;
LABEL_36:
        v18 = v8;
LABEL_37:
        free(v18);
        break;
      case 9:
        v26 = v38;
        *&v27 = v39;
        v13 = v40;
        v14 = sub_29875295C(2, &v26, a1 + 1296);
        if (!v14)
        {
          goto LABEL_23;
        }

        v15 = v14;
        v16 = sub_2987537AC(*v14);
        v17 = sub_2987537AC(v15[1]);
        v3 = sub_2987468C4(a1, v16, v17, v13);
        v18 = v15;
        goto LABEL_37;
      case 10:
        v3 = sub_298743C2C(a1, v38, v39);
        v19 = *(a1 + 11) | 0x40;
        goto LABEL_28;
      case 13:
        v3 = el_wset(a1, 13, v38);
        v19 = *(a1 + 11) | 0x80;
LABEL_28:
        *(a1 + 11) = v19;
        break;
      case 14:
        v10 = el_wset(a1, 14, v38, v24, va1);
        goto LABEL_31;
      case 19:
        v10 = el_wset(a1, 19, v38, v39, va2);
        goto LABEL_31;
      case 20:
        v10 = el_wset(a1, 20, v22, v24, va);
        goto LABEL_31;
      case 21:
      case 22:
        v11 = v38;
        v12 = v39;
LABEL_15:
        v10 = sub_298747134(a1, v11, v12, a2, 0);
        goto LABEL_31;
      case 23:
        v10 = sub_298740918(a1, v38, v39);
LABEL_31:
        v3 = v10;
        break;
      default:
        break;
    }
  }

  else
  {
LABEL_23:
    v3 = -1;
  }

  v20 = *MEMORY[0x29EDCA608];
  return v3;
}

int el_get(EditLine *a1, int a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v24 = va_arg(va1, unsigned __int32 **);
  va_copy(va2, va1);
  v25 = va_arg(va2, _BYTE *);
  v23 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = -1;
    goto LABEL_22;
  }

  va_copy(v11, va);
  result = -1;
  if (a2 > 13)
  {
    if (a2 <= 16)
    {
      if ((a2 - 15) < 2)
      {
        goto LABEL_21;
      }

      if (a2 == 14)
      {
        result = el_wget(a1, 14, v24, v10, va1);
      }
    }

    else if ((a2 - 21) < 2)
    {
      v7 = v25;
      LODWORD(v12) = 0;
      result = sub_298747184(a1, v24, &v12, a2);
      *v7 = v12;
    }

    else if (a2 == 17)
    {
      v22 = 0;
      v21 = 0u;
      v20 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = 1;
      v13 = 0u;
      do
      {
        v9 = va_arg(v11, unsigned __int32 *);
        (&v12)[v8] = v9;
        if (!v9)
        {
          break;
        }

        ++v8;
      }

      while (v8 != 20);
      v12 = aGettc_0;
      result = sub_29874F6E0(a1, v8, &v12);
    }

    else if (a2 == 18)
    {
      result = el_wget(a1, 18, v24, v25, va2);
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 <= 11)
      {
        if (a2 != 3 && a2 != 11)
        {
          goto LABEL_22;
        }

LABEL_21:
        result = el_wget(a1, a2, v24, v10, va1);
        goto LABEL_22;
      }

      if (a2 != 12)
      {
        result = el_wget(a1, 13, v24, v10, va1);
        goto LABEL_22;
      }

LABEL_26:
      result = sub_298747184(a1, v24, 0, a2);
      goto LABEL_22;
    }

    switch(a2)
    {
      case 0:
        goto LABEL_26;
      case 1:
        result = el_wget(a1, 1, v24, v10, va1);
        break;
      case 2:
        v4 = v24;
        v12 = 0;
        v5 = el_wget(a1, 2, &v12);
        *v4 = sub_29875277C(v12, a1 + 1296);
        if (*(a1 + 163))
        {
          result = v5;
        }

        else
        {
          result = -1;
        }

        break;
    }
  }

LABEL_22:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

const LineInfo *__cdecl el_line(EditLine *a1)
{
  v2 = el_wline(a1);
  v3 = (a1 + 1328);
  v4 = sub_29875277C(v2->buffer, a1 + 1296);
  *(a1 + 166) = v4;
  buffer = v2->buffer;
  if (v2->buffer >= v2->cursor)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *buffer++;
      v6 += sub_298752A80(v7);
    }

    while (buffer < v2->cursor);
    v4 = *v3;
    buffer = v2->buffer;
  }

  *(a1 + 167) = v4 + v6;
  if (buffer >= v2->lastchar)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *buffer++;
      v8 += sub_298752A80(v9);
    }

    while (buffer < v2->lastchar);
    v4 = *v3;
  }

  *(a1 + 168) = v4 + v8;
  return (a1 + 1328);
}

int el_insertstr(EditLine *a1, const char *a2)
{
  v3 = sub_2987528BC(a2, a1 + 1296);

  return el_winsertstr(a1, v3);
}

__int32 *sub_2987537AC(const __int32 *a1)
{
  v2 = wcslen(a1) + 1;
  result = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
  if (result)
  {

    return wmemcpy(result, a1, v2);
  }

  return result;
}

History *history_init(void)
{
  v0 = malloc_type_malloc(0x60uLL, 0x108004000789A1EuLL);
  v1 = v0;
  if (v0)
  {
    if (sub_298744174(v0) == -1)
    {
      free(v1);
      return 0;
    }

    else
    {
      *(v1 + 2) = -1;
      v1[3] = sub_29875391C;
      v1[2] = sub_29875397C;
      v1[4] = sub_2987539B8;
      v1[5] = sub_2987539F4;
      v1[6] = sub_298753A70;
      v1[7] = sub_298753AC8;
      v1[9] = sub_298753B44;
      v1[10] = sub_298753B8C;
      v1[11] = sub_298753CA4;
      v1[8] = sub_298753DB0;
    }
  }

  return v1;
}

uint64_t sub_29875391C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 == a1)
  {
    *a2 = 5;
    v6 = "empty list";
  }

  else
  {
    v4 = *(v2 + 24);
    if (v4 != a1)
    {
      result = 0;
      *(a1 + 40) = v4;
      *a2 = *v4;
      return result;
    }

    *a2 = 6;
    v6 = "no next event";
  }

  *(a2 + 8) = v6;
  return 0xFFFFFFFFLL;
}

uint64_t sub_29875397C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a1 + 40) = v2;
  if (v2 == a1)
  {
    *a2 = 3;
    *(a2 + 8) = "first event not found";
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a2 = *v2;
  }

  return result;
}

uint64_t sub_2987539B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(a1 + 40) = v2;
  if (v2 == a1)
  {
    *a2 = 4;
    *(a2 + 8) = "last event not found";
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a2 = *v2;
  }

  return result;
}

uint64_t sub_2987539F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 == a1)
  {
    v6 = *(a1 + 52);
    v7 = v6 <= 0;
    if (v6 <= 0)
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }

    *a2 = v8;
    v9 = 5;
    if (!v7)
    {
      v9 = 6;
    }

    v10 = (&off_29EEAB358)[v9];
  }

  else
  {
    v4 = *(v3 + 32);
    if (v4 != a1)
    {
      result = 0;
      *(a1 + 40) = v4;
      *a2 = *v4;
      return result;
    }

    *a2 = 7;
    v10 = "no previous event";
  }

  *(a2 + 8) = v10;
  return 0xFFFFFFFFLL;
}

uint64_t sub_298753A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 == a1)
  {
    v4 = *(a1 + 52);
    v5 = v4 <= 0;
    if (v4 <= 0)
    {
      v6 = 5;
    }

    else
    {
      v6 = 8;
    }

    *a2 = v6;
    v7 = 5;
    if (!v5)
    {
      v7 = 8;
    }

    *(a2 + 8) = (&off_29EEAB358)[v7];
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a2 = *v2;
  }

  return result;
}

uint64_t sub_298753AC8(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 52))
  {
    v3 = *(a1 + 40);
    if (v3 == a1 || *v3 != a3)
    {
      v3 = a1;
      do
      {
        v3 = *(v3 + 24);
      }

      while (v3 != a1 && *v3 != a3);
      *(a1 + 40) = v3;
    }

    if (v3 != a1)
    {
      return 0;
    }

    v5 = "event not found";
    v6 = 9;
  }

  else
  {
    v5 = "empty list";
    v6 = 5;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  return 0xFFFFFFFFLL;
}

void sub_298753B44(uint64_t a1)
{
  for (i = *(a1 + 32); i != a1; i = *(a1 + 32))
  {
    sub_298745228(a1, i);
  }

  *(a1 + 40) = a1;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
}

uint64_t sub_298753B8C(uint64_t a1, uint64_t a2, char *__s2)
{
  if (*(a1 + 60))
  {
    v6 = *(a1 + 24);
    if (v6 != a1)
    {
      result = strcmp(*(v6 + 8), __s2);
      if (!result)
      {
        return result;
      }
    }
  }

  v8 = malloc_type_malloc(0x28uLL, 0x10F00401F389D68uLL);
  if (!v8)
  {
LABEL_15:
    *a2 = 2;
    *(a2 + 8) = "malloc() failed";
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = strdup(__s2);
  v9[1] = v10;
  if (!v10)
  {
    free(v9);
    goto LABEL_15;
  }

  v11 = *(a1 + 24);
  v9[2] = 0;
  v9[3] = v11;
  v9[4] = a1;
  *(v11 + 32) = v9;
  *(a1 + 24) = v9;
  v12 = vadd_s32(*(a1 + 52), 0x100000001);
  *v9 = v12.i32[1];
  *(a1 + 52) = v12;
  *(a1 + 40) = v9;
  *a2 = *v9;
  v13 = *(a1 + 52);
  result = 1;
  if (v13 >= 1 && v13 > *(a1 + 48))
  {
    do
    {
      sub_298745228(a1, *(a1 + 32));
      v14 = *(a1 + 52);
    }

    while (v14 >= 1 && v14 > *(a1 + 48));
    return 1;
  }

  return result;
}

uint64_t sub_298753CA4(uint64_t a1, uint64_t a2, char *__s2)
{
  v6 = *(a1 + 40);
  if (v6 == a1)
  {

    return sub_298753B8C(a1, a2, __s2);
  }

  else
  {
    v7 = strlen(*(v6 + 8));
    v8 = strlen(__s2) + v7;
    v9 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      v11 = strncpy(v9, *(*(a1 + 40) + 8), v8 + 1);
      v11[v8] = 0;
      v12 = strlen(v11);
      strncat(v10, __s2, v8 - v12);
      free(*(v6 + 8));
      result = 0;
      *(v6 + 8) = v10;
      *a2 = **(a1 + 40);
    }

    else
    {
      *a2 = 2;
      *(a2 + 8) = "malloc() failed";
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_298753DB0(uint64_t a1, uint64_t a2, int a3)
{
  if (sub_298753AC8(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 40);
  *(a2 + 8) = strdup(*(v6 + 8));
  *a2 = *v6;
  sub_298745228(a1, v6);
  return 0;
}

void history_end(History *a1)
{
  if (*(a1 + 3) == sub_29875391C)
  {
    sub_298753B44(*a1);
  }

  free(*a1);

  free(a1);
}

int history(History *a1, HistEvent *a2, int a3, ...)
{
  va_start(va, a3);
  v80 = va_arg(va, const char *);
  v81 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2));
  v82 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2));
  v83 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2));
  v84 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2));
  v85 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2));
  v86 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2, int a3));
  v87 = va_arg(va, void (*)(uint64_t a1));
  v88 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2, char *__s2));
  v89 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2, char *__s2));
  v90 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2, int a3));
  a2->num = 0;
  a2->str = "OK";
  switch(a3)
  {
    case 0:
      *(a1 + 2) = -1;
      v5 = v81;
      v6 = v82;
      v7 = v83;
      v8 = v84;
      v9 = v85;
      v10 = v86;
      v11 = v87;
      v12 = v88;
      v13 = v89;
      v14 = v90;
      if (v81)
      {
        v15 = v82 == 0;
      }

      else
      {
        v15 = 1;
      }

      v24 = v15 || v83 == 0 || v84 == 0 || v85 == 0 || v86 == 0 || v88 == 0 || v89 == 0 || v87 == 0 || v90 == 0 || v80 == 0;
      v25 = v24;
      v26 = *(a1 + 3);
      if (v24)
      {
        if (v26 == sub_29875391C)
        {
          goto LABEL_122;
        }

        v27 = v25;
        v28 = sub_298744174(a1);
        v25 = v27;
        v14 = sub_298753DB0;
        v13 = sub_298753CA4;
        v12 = sub_298753B8C;
        v11 = sub_298753B44;
        v10 = sub_298753AC8;
        v9 = sub_298753A70;
        v8 = sub_2987539F4;
        v7 = sub_2987539B8;
        v6 = sub_29875391C;
        if (v28 == -1)
        {
LABEL_122:
          a2->num = 12;
          v40 = "required parameter(s) not supplied";
          goto LABEL_137;
        }

        v5 = sub_29875397C;
      }

      else
      {
        if (v26 == sub_29875391C)
        {
          v75 = v25;
          sub_298753B44(*a1);
          v11 = v87;
          v14 = v90;
          v25 = v75;
        }

        *(a1 + 2) = -1;
      }

      *(a1 + 2) = v5;
      *(a1 + 3) = v6;
      *(a1 + 4) = v7;
      *(a1 + 5) = v8;
      *(a1 + 6) = v9;
      *(a1 + 7) = v10;
      *(a1 + 10) = v12;
      *(a1 + 11) = v13;
      *(a1 + 8) = v14;
      *(a1 + 9) = v11;
      if (!v25)
      {
        return 0;
      }

      goto LABEL_122;
    case 1:
      if (*(a1 + 3) != sub_29875391C)
      {
        goto LABEL_85;
      }

      if ((v80 & 0x80000000) == 0)
      {
        v34 = 0;
        *(*a1 + 48) = v80;
        return v34;
      }

      a2->num = 15;
      v40 = "bad parameters";
      goto LABEL_137;
    case 2:
      if (*(a1 + 3) != sub_29875391C)
      {
        v40 = "function not allowed with other history-functions-set the default";
        v41 = 14;
        goto LABEL_136;
      }

      v59 = *(*a1 + 52);
      a2->num = v59;
      if (v59 > -2)
      {
        return 0;
      }

      v40 = "history size negative";
      v41 = 13;
      goto LABEL_136;
    case 3:
      return (*(a1 + 2))(*a1, a2);
    case 4:
      return (*(a1 + 4))(*a1, a2);
    case 5:
      return (*(a1 + 5))(*a1, a2);
    case 6:
      return (*(a1 + 3))(*a1, a2);
    case 7:
      return (*(a1 + 7))(*a1, a2, v80);
    case 8:
      return (*(a1 + 6))(*a1, a2);
    case 9:
      return (*(a1 + 11))(*a1, a2, v80);
    case 10:
      v34 = (*(a1 + 10))(*a1, a2, v80);
      if (v34 != -1)
      {
        *(a1 + 2) = a2->num;
      }

      return v34;
    case 11:
      if ((*(a1 + 7))(*a1, a2, *(a1 + 2)) == -1)
      {
        return -1;
      }

      return (*(a1 + 11))(*a1, a2, v80);
    case 12:
      history_end(a1);
      return 0;
    case 13:
      v47 = strlen(v80);
      v48 = (*(a1 + 6))(*a1, a2);
      while (2)
      {
        if (v48 == -1)
        {
          goto LABEL_116;
        }

        if (strncmp(v80, a2->str, v47))
        {
          v48 = (*(a1 + 5))(*a1, a2);
          continue;
        }

        return 0;
      }

    case 14:
      v30 = strlen(v80);
      v31 = (*(a1 + 6))(*a1, a2);
      while (2)
      {
        if (v31 == -1)
        {
          goto LABEL_116;
        }

        if (strncmp(v80, a2->str, v30))
        {
          v31 = (*(a1 + 3))(*a1, a2);
          continue;
        }

        return 0;
      }

    case 15:
      v42 = (*(a1 + 6))(*a1, a2);
      while (2)
      {
        if (v42 == -1)
        {
          goto LABEL_116;
        }

        if (a2->num != v80)
        {
          v42 = (*(a1 + 3))(*a1, a2);
          continue;
        }

        return 0;
      }

    case 16:
      v29 = (*(a1 + 6))(*a1, a2);
      while (2)
      {
        if (v29 == -1)
        {
          goto LABEL_116;
        }

        if (a2->num != v80)
        {
          v29 = (*(a1 + 5))(*a1, a2);
          continue;
        }

        return 0;
      }

    case 17:
      v43 = fopen(v80, "r");
      if (!v43)
      {
        goto LABEL_83;
      }

      v44 = v43;
      __n = 0;
      v78 = 0;
      __s = 0;
      v45 = fgetln(v43, &__n);
      if (!v45 || strncmp(v45, "_HiStOrY_V2_\n", __n) || (v63 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL)) == 0)
      {
        fclose(v44);
        goto LABEL_83;
      }

      v64 = v63;
      v65 = fgetln(v44, &__n);
      if (v65)
      {
        v66 = v65;
        v34 = 0;
        v67 = 1024;
        while (1)
        {
          v68 = __n;
          if (__n && v66[__n - 1] == 10)
          {
            v68 = --__n;
          }

          if (v67 < v68)
          {
            v67 = (v68 & 0xFFFFFFFFFFFFFC00) + 1024;
            v69 = malloc_type_realloc(v64, v67, 0x100004077774924uLL);
            if (!v69)
            {
              break;
            }

            v68 = __n;
            v64 = v69;
          }

          v77 = 0;
          v70 = v64;
          if (v68)
          {
            v70 = v64;
            do
            {
              --v68;
              v72 = *v66++;
              v71 = v72;
              while (1)
              {
                v73 = unvis(v70, v71, &v77, 0);
                if (v73 != 2)
                {
                  break;
                }

                ++v70;
              }

              if (v73 && v73 != 3)
              {
                if (v73 != 1)
                {
                  goto LABEL_163;
                }

                ++v70;
              }
            }

            while (v68);
          }

          v74 = unvis(v70, 0, &v77, 2048) == 1 ? v70 + 1 : v70;
          *v74 = 0;
LABEL_163:
          if ((*(a1 + 10))(*a1, &v78, v64) == -1)
          {
            break;
          }

          ++v34;
          v66 = fgetln(v44, &__n);
          if (!v66)
          {
            goto LABEL_172;
          }
        }

        v34 = -1;
      }

      else
      {
        v34 = 0;
      }

LABEL_172:
      free(v64);
      fclose(v44);
      if (v34 == -1)
      {
LABEL_83:
        a2->num = 10;
        v40 = "can't read history from file";
        goto LABEL_137;
      }

      return v34;
    case 18:
      v49 = fopen(v80, "w");
      if (!v49)
      {
        goto LABEL_124;
      }

      v50 = v49;
      v78 = 0;
      __s = 0;
      v51 = fileno(v49);
      if (fchmod(v51, 0x180u) == -1 || fputs("_HiStOrY_V2_\n", v50) == -1 || (v52 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL)) == 0)
      {
        fclose(v50);
        goto LABEL_124;
      }

      v53 = v52;
      if ((*(a1 + 4))(*a1, &v78) == -1)
      {
        v34 = 0;
        goto LABEL_175;
      }

      v34 = 0;
      v54 = 1024;
      while (2)
      {
        v55 = __s;
        v56 = 4 * strlen(__s);
        if (v56 < v54)
        {
          goto LABEL_103;
        }

        v54 = (v56 & 0xFFFFFFFFFFFFFC00) + 1024;
        v57 = malloc_type_realloc(v53, v54, 0x100004077774924uLL);
        if (v57)
        {
          v53 = v57;
LABEL_103:
          strvis(v53, v55, 28);
          fprintf(v50, "%s\n", v53);
          ++v34;
          if ((*(a1 + 5))(*a1, &v78) == -1)
          {
            goto LABEL_175;
          }

          continue;
        }

        break;
      }

      v34 = -1;
LABEL_175:
      free(v53);
      fclose(v50);
      if (v34 == -1)
      {
LABEL_124:
        a2->num = 11;
        v40 = "can't write history";
        goto LABEL_137;
      }

      return v34;
    case 19:
      (*(a1 + 9))(*a1, a2);
      return 0;
    case 20:
      if (*(a1 + 3) != sub_29875391C)
      {
LABEL_85:
        a2->num = 14;
        v40 = "function not allowed with other history-functions-set the default";
        goto LABEL_137;
      }

      v60 = *(*a1 + 60);
      v34 = 0;
      if (v80)
      {
        v61 = v60 | 1;
      }

      else
      {
        v61 = v60 & 0xFFFFFFFE;
      }

      *(*a1 + 60) = v61;
      return v34;
    case 21:
      if (*(a1 + 3) == sub_29875391C)
      {
        v34 = 0;
        v46 = *(*a1 + 60) & 1;
      }

      else
      {
        a2->str = "function not allowed with other history-functions-set the default";
        v34 = -1;
        v46 = 14;
      }

      a2->num = v46;
      return v34;
    case 22:
      return (*(a1 + 8))(*a1, a2, v80);
    case 23:
      if ((*(a1 + 6))(*a1, a2) == -1)
      {
        goto LABEL_116;
      }

      v58 = v80 + 1;
      while (--v58 > 0)
      {
        if ((*(a1 + 5))(*a1, a2) == -1)
        {
LABEL_116:
          a2->num = 9;
          v40 = "event not found";
LABEL_137:
          a2->str = v40;
          return -1;
        }
      }

      if (!v81)
      {
        return 0;
      }

      v34 = 0;
      *v81 = *(*(*a1 + 40) + 16);
      return v34;
    case 24:
      v36 = v80;
      v37 = *a1;
      if (!*(*a1 + 52))
      {
        v40 = "empty list";
        v41 = 5;
LABEL_136:
        a2->num = v41;
        goto LABEL_137;
      }

      v38 = *a1;
      do
      {
        v38 = *(v38 + 32);
      }

      while (v38 != v37 && v36-- > 0);
      *(v37 + 40) = v38;
      if (v38 == v37)
      {
        v40 = "event not found";
        v41 = 9;
        goto LABEL_136;
      }

      if (v81 != -1)
      {
        a2->str = strdup(*(v38 + 8));
        a2->num = *v38;
        if (v81)
        {
          *v81 = *(v38 + 16);
          v38 = *(v37 + 40);
        }

        sub_298745228(v37, v38);
      }

      return 0;
    case 25:
      if (!v80)
      {
        return -1;
      }

      v33 = strdup(v80);
      if (!v33)
      {
        return -1;
      }

      v34 = 0;
      v35 = *(*a1 + 40);
      *(v35 + 8) = v33;
      *(v35 + 16) = v81;
      return v34;
    default:
      a2->num = 1;
      v40 = "unknown error";
      goto LABEL_137;
  }
}

Tokenizer *__cdecl tok_init(const char *a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x1090040E7945993uLL);
  if (v2)
  {
    if (a1)
    {
      v3 = a1;
    }

    else
    {
      v3 = "\t \n";
    }

    v4 = strdup(v3);
    *v2 = v4;
    if (v4)
    {
      *(v2 + 8) = xmmword_298756510;
      v5 = malloc_type_malloc(0x50uLL, 0x10040436913F5uLL);
      *(v2 + 3) = v5;
      if (v5)
      {
        *v5 = 0;
        v6 = malloc_type_malloc(0x14uLL, 0x100004077774924uLL);
        *(v2 + 7) = v6;
        if (v6)
        {
          *(v2 + 5) = v6 + 20;
          *(v2 + 6) = v6;
          *(v2 + 4) = v6;
          *(v2 + 8) = 0;
          return v2;
        }

        free(*(v2 + 3));
      }

      free(*v2);
    }

    free(v2);
    return 0;
  }

  return v2;
}

void tok_reset(Tokenizer *a1)
{
  *(a1 + 1) = 0;
  v1 = *(a1 + 7);
  *(a1 + 6) = v1;
  *(a1 + 4) = v1;
  *(a1 + 8) = 0;
}

void tok_end(Tokenizer *a1)
{
  free(*a1);
  free(*(a1 + 7));
  free(*(a1 + 3));

  free(a1);
}

int tok_line(Tokenizer *a1, const LineInfo *a2, int *a3, const char ***a4, int *a5, int *a6)
{
  buffer = a2->buffer;
  v9 = -1;
  v10 = -1;
  while (1)
  {
    if (buffer >= a2->lastchar)
    {
      v11 = &unk_29875BB52;
    }

    else
    {
      v11 = buffer;
    }

    if (v11 == a2->cursor)
    {
      v9 = *(a1 + 2);
      v10 = *(a1 + 8) - *(a1 + 12);
    }

    v12 = *v11;
    if (v12 <= 0x21)
    {
      break;
    }

    switch(v12)
    {
      case '""':
        v13 = *(a1 + 16);
        *(a1 + 17) = *(a1 + 17) & 0xFFFFFFFC | 1;
        result = -1;
        if (v13 <= 1)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

LABEL_44:
          if (v13 != 1)
          {
            return result;
          }

LABEL_54:
          v20 = *v11;
LABEL_55:
          v21 = *(a1 + 4);
          *(a1 + 4) = v21 + 1;
          *v21 = v20;
          goto LABEL_56;
        }

        if (v13 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_71;
      case '\\':
        v13 = *(a1 + 16);
        *(a1 + 17) = *(a1 + 17) & 0xFFFFFFFC | 1;
        result = -1;
        if (v13 <= 1)
        {
          if (v13)
          {
            goto LABEL_44;
          }

          v34 = 3;
        }

        else
        {
          if (v13 != 2)
          {
            if (v13 != 3)
            {
              goto LABEL_26;
            }

            v32 = *v11;
            v33 = *(a1 + 4);
            *(a1 + 4) = v33 + 1;
            *v33 = v32;
            goto LABEL_71;
          }

          v34 = 4;
        }

        break;
      case '\'':
        v13 = *(a1 + 16);
        *(a1 + 17) = *(a1 + 17) & 0xFFFFFFFC | 1;
        result = -1;
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            goto LABEL_54;
          }

LABEL_21:
          if (v13 == 3)
          {
LABEL_53:
            *(a1 + 16) = 0;
            goto LABEL_54;
          }

LABEL_26:
          if (v13 != 4)
          {
            return result;
          }

          goto LABEL_52;
        }

        if (v13)
        {
          if (v13 != 1)
          {
            return result;
          }

LABEL_71:
          *(a1 + 16) = 0;
          goto LABEL_56;
        }

        v34 = 1;
        break;
      default:
        goto LABEL_31;
    }

    *(a1 + 16) = v34;
LABEL_56:
    v22 = *(a1 + 5);
    if (*(a1 + 4) >= (v22 - 4))
    {
      v23 = *(a1 + 7);
      v24 = v22 - v23 + 20;
      v25 = malloc_type_realloc(v23, v24, 0x100004077774924uLL);
      if (!v25)
      {
        return -1;
      }

      v26 = *(a1 + 7);
      if (v25 != v26)
      {
        v27 = *(a1 + 1);
        if (v27)
        {
          for (i = 0; i != v27; ++i)
          {
            *(*(a1 + 3) + 8 * i) = &v25[*(*(a1 + 3) + 8 * i) - *(a1 + 7)];
          }

          v26 = *(a1 + 7);
        }

        *(a1 + 4) = &v25[*(a1 + 4) - v26];
        *(a1 + 6) = &v25[*(a1 + 6) - v26];
        *(a1 + 7) = v25;
      }

      *(a1 + 5) = &v25[v24];
    }

    v29 = *(a1 + 2);
    if (*(a1 + 1) >= (v29 - 4))
    {
      v30 = v29 + 10;
      *(a1 + 2) = v30;
      v31 = malloc_type_realloc(*(a1 + 3), 8 * v30, 0x10040436913F5uLL);
      if (!v31)
      {
        return -1;
      }

      *(a1 + 3) = v31;
    }

    buffer = v11 + 1;
  }

  if (!*v11)
  {
    result = *(a1 + 16);
    if (result <= 3)
    {
      if (result != 3)
      {
        if ((result - 1) < 2)
        {
          return result;
        }

        if (result)
        {
          return -1;
        }

        v35 = *(a1 + 17);
        if ((v35 & 2) != 0)
        {
          *(a1 + 17) = v35 & 0xFFFFFFFD;
          return 3;
        }

        goto LABEL_84;
      }

      goto LABEL_53;
    }

    if (result != 4)
    {
      return -1;
    }

    goto LABEL_52;
  }

  if (v12 != 10)
  {
LABEL_31:
    v17 = *(a1 + 16);
    *(a1 + 17) &= ~2u;
    result = -1;
    if (v17 <= 2)
    {
      if ((v17 - 1) < 2)
      {
        goto LABEL_54;
      }

      if (v17)
      {
        return result;
      }

      v18 = *v11;
      if (strchr(*a1, *v11))
      {
        sub_298754EAC(a1);
        goto LABEL_56;
      }

      v20 = v18;
      goto LABEL_55;
    }

    if (v17 == 3)
    {
      goto LABEL_53;
    }

    if (v17 != 4)
    {
      return result;
    }

    v19 = *(a1 + 4);
    *(a1 + 4) = v19 + 1;
    *v19 = 92;
LABEL_52:
    *(a1 + 16) = 2;
    goto LABEL_54;
  }

  result = 0;
  v16 = *(a1 + 16);
  v15 = *(a1 + 17);
  *(a1 + 17) = v15 & 0xFFFFFFFD;
  if (v16 > 2)
  {
    if (v16 != 3)
    {
      if (v16 != 4)
      {
        return result;
      }

      *(a1 + 17) = v15 | 2;
LABEL_42:
      *(a1 + 16) = 2;
      goto LABEL_56;
    }

    *(a1 + 17) = v15 | 2;
    goto LABEL_71;
  }

  if ((v16 - 1) < 2)
  {
    goto LABEL_54;
  }

  if (v16)
  {
    return result;
  }

LABEL_84:
  if (v9 == -1 && v10 == -1)
  {
    v9 = *(a1 + 2);
    v10 = *(a1 + 8) - *(a1 + 12);
  }

  if (a5)
  {
    *a5 = v9;
  }

  if (a6)
  {
    *a6 = v10;
  }

  sub_298754EAC(a1);
  result = 0;
  *a4 = *(a1 + 3);
  *a3 = *(a1 + 1);
  return result;
}

uint64_t sub_298754EAC(uint64_t result)
{
  **(result + 32) = 0;
  v1 = *(result + 68);
  if (v1)
  {
    v2 = *(result + 48);
  }

  else
  {
    v2 = *(result + 48);
    if (*(result + 32) == v2)
    {
      goto LABEL_6;
    }
  }

  v3 = *(result + 24);
  v4 = *(result + 8);
  *(result + 8) = v4 + 1;
  *(v3 + 8 * v4) = v2;
  *(*(result + 24) + 8 * (v4 + 1)) = 0;
  v5 = *(result + 32) + 1;
  *(result + 32) = v5;
  *(result + 48) = v5;
LABEL_6:
  *(result + 68) = v1 & 0xFFFFFFFE;
  return result;
}

int tok_str(Tokenizer *a1, const char *a2, int *a3, const char ***a4)
{
  v8.buffer = a2;
  v8.cursor = &a2[strlen(a2)];
  v8.lastchar = v8.cursor;
  return tok_line(a1, &v8, a3, a4, 0, 0);
}