WINDOW *__cdecl dupwin(WINDOW *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  if ((*(a1 + 6) & 0x10) != 0)
  {
    v4 = newpad(v2 + 1, v3 + 1);
  }

  else
  {
    v4 = newwin(v2 + 1, v3 + 1, *(a1 + 4), *(a1 + 5));
  }

  v5 = v4;
  if (v4)
  {
    v6 = *a1;
    *v4 = *a1;
    *(v4 + 2) = *(a1 + 2);
    *(v4 + 42) = *(a1 + 42);
    *(v4 + 6) = *(a1 + 6) & 0xFFFE;
    *(v4 + 4) = *(a1 + 4);
    v7 = *(a1 + 88);
    *(v4 + 100) = *(a1 + 100);
    *(v4 + 88) = v7;
    *(v4 + 3) = *(a1 + 3);
    *(v4 + 32) = *(a1 + 32);
    *(v4 + 9) = *(a1 + 9);
    *(v4 + 13) = 0;
    *(v4 + 14) = 0;
    *(v4 + 8) = 0;
    *(v4 + 24) = *(a1 + 24);
    *(v4 + 25) = *(a1 + 25);
    if ((*(a1 + 6) & 0x10) != 0)
    {
      v8 = *(a1 + 9);
      *(v4 + 20) = *(a1 + 20);
      *(v4 + 9) = v8;
    }

    if ((v6 & 0x800000000000) == 0)
    {
      v9 = 0;
      v10 = 28 * (*(a1 + 3) + 1);
      v11 = *(v4 + 5);
      v12 = *(a1 + 5);
      v13 = -1;
      do
      {
        memcpy(*(v11 + v9), *(v12 + v9), v10);
        v12 = *(a1 + 5);
        v11 = *(v5 + 5);
        *(v11 + v9 + 8) = *(v12 + v9 + 8);
        ++v13;
        v9 += 16;
      }

      while (v13 < *(v5 + 2));
    }
  }

  return v5;
}

int *wunctrl(int *result)
{
  if (result)
  {
    v1 = result;
    if (SP && (*(SP + 1456) || (*result & 0x400000) != 0 || (*result & 0xFEu) - 2 >= 0x1E) && !result[2] && _nc_is_charable(result[1]))
    {
      v2 = _nc_to_char(v1[1]);
      v3 = unctrl(v2);
      v4 = &dword_2A1462D08;
      qword_2A1462D20 = &dword_2A1462D08;
      v5 = *v3;
      if (*v3)
      {
        v6 = (v3 + 1);
        do
        {
          v7 = _nc_to_widechar(v5);
          v8 = qword_2A1462D20;
          v9 = qword_2A1462D20;
          *qword_2A1462D20 = v7;
          qword_2A1462D20 = v9 + 4;
          v10 = *v6++;
          v5 = v10;
        }

        while (v10);
        v4 = (v8 + 4);
      }

      *v4 = 0;
      return &dword_2A1462D08;
    }

    else
    {
      return v1 + 1;
    }
  }

  return result;
}

char *__cdecl _nc_first_name(const char *const a1)
{
  v2 = *&PC[80];
  if (*&PC[80] || (result = malloc(0x201uLL), v2 = result, (*&PC[80] = result) != 0))
  {
    if (_nc_syntax == 1 && _nc_user_definable)
    {
      v4 = strchr(a1, 124);
      if (v4 - a1 == 2 && v4 != 0)
      {
        a1 = v4 + 1;
      }
    }

    for (i = 0; i != 512; ++i)
    {
      v7 = a1[i];
      v2[i] = v7;
      v2 = *&PC[80];
      if (!v7)
      {
        break;
      }

      if (*(*&PC[80] + i) == 124)
      {
        break;
      }
    }

    *(*&PC[80] + i) = 0;
    return *&PC[80];
  }

  return result;
}

int _nc_name_match(const char *const a1, const char *const a2, const char *const a3)
{
  if (a1)
  {
    while (1)
    {
      v3 = *a1;
      if (!*a1)
      {
LABEL_21:
        LODWORD(a1) = 0;
        return a1;
      }

      v4 = *a2;
      if (*a2)
      {
        v5 = a2 + 1;
        while (1)
        {
          v3 = *a1;
          v6 = v3 != v4;
          if (v3 != v4)
          {
            break;
          }

          ++a1;
          v7 = *v5++;
          v4 = v7;
          if (!v7)
          {
            v3 = *a1;
            break;
          }
        }

        if (!v3)
        {
          v8 = 0;
          v9 = 1;
          if (v6)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v6 = 0;
      }

      v8 = 0;
      while (1)
      {
        v10 = a3 + 1;
        v11 = *a3;
        if (*a3)
        {
          break;
        }

LABEL_16:
        v13 = *++a1;
        v3 = v13;
        v8 = 1;
        if (!v13)
        {
          goto LABEL_21;
        }
      }

      while (v3 != v11)
      {
        v12 = *v10++;
        v11 = v12;
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      v9 = 0;
      if (v6)
      {
        goto LABEL_20;
      }

LABEL_19:
      if ((v8 & 1) == 0)
      {
        LODWORD(a1) = 1;
        return a1;
      }

LABEL_20:
      ++a1;
      if (v9)
      {
        goto LABEL_21;
      }
    }
  }

  return a1;
}

uint64_t _nc_panelhook()
{
  if (SP)
  {
    return SP + 1360;
  }

  else
  {
    return 0;
  }
}

int _nc_capcmp(const char *a1, const char *a2)
{
  v2 = (a1 + 1) > 1;
  if ((a1 + 1) <= 1 && (a2 + 1) < 2)
  {
    return 0;
  }

  if ((a2 + 1) <= 1)
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    v4 = *a1;
    if (v4 == 36)
    {
      if (a1[1] == 60)
      {
        for (a1 += 2; ; ++a1)
        {
          LOBYTE(v4) = *a1;
          v5 = *a1;
          if (v5 - 48 >= 0xA && (v5 > 0x3E || ((1 << v4) & 0x4000C40000000000) == 0))
          {
            break;
          }
        }
      }

      else
      {
        LOBYTE(v4) = 36;
      }
    }

    v7 = *a2;
    if (v7 == 36)
    {
      if (a2[1] != 60)
      {
        LOBYTE(v7) = 36;
        goto LABEL_32;
      }

      for (a2 += 2; ; ++a2)
      {
        LOBYTE(v7) = *a2;
        v8 = *a2;
        if (v8 - 48 >= 0xA && (v8 > 0x3E || ((1 << v7) & 0x4000C40000000000) == 0))
        {
          break;
        }
      }
    }

    if (!(v4 | v7))
    {
      return 0;
    }

LABEL_32:
    if (v4 != v7)
    {
      return v7 - v4;
    }

    ++a1;
    ++a2;
  }
}

size_t sub_29949F0F8(size_t result, char a2, char *__s)
{
  if (__s)
  {
    v5 = result;
    result = strlen(__s);
    if (result == 1)
    {
      v6 = *__s;
      if (*__s)
      {
        __sa[0] = a2;
        __sa[1] = v6;
        __sa[2] = 0;
        return _nc_safe_strcat(v5, __sa);
      }
    }
  }

  return result;
}

void _nc_init_termtype(TERMTYPE *const a1)
{
  *&a1->num_Booleans = 0x19E0027002CLL;
  *&a1->ext_Numbers = 0;
  if (!a1->Booleans && (v2 = malloc(0x2CuLL), (a1->Booleans = v2) == 0) || !a1->Numbers && (v3 = malloc(0x4EuLL), (a1->Numbers = v3) == 0) || !a1->Strings && (v4 = malloc(0xCF0uLL), (a1->Strings = v4) == 0))
  {
    _nc_err_abort("Out of memory");
  }

  v5 = 0;
  do
  {
    a1->Booleans[v5++] = 0;
  }

  while (v5 < a1->num_Booleans);
  if (a1->num_Numbers)
  {
    v6 = 0;
    Numbers = a1->Numbers;
    do
    {
      Numbers[v6++] = -1;
    }

    while (v6 < a1->num_Numbers);
  }

  if (a1->num_Strings)
  {
    v8 = 0;
    v9 = 8 * a1->num_Strings;
    do
    {
      a1->Strings[v8 / 8] = 0;
      v8 += 8;
    }

    while (v9 != v8);
  }
}

int _nc_read_termtype(TERMTYPE *a1, char *a2, int a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2);
  v101 = *MEMORY[0x29EDCA608];
  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  if (v5 < 1)
  {
    goto LABEL_133;
  }

  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v5 >= 0xC ? 12 : v5;
  __memcpy_chk();
  if (v6 < 0xC || v90 != 282)
  {
    goto LABEL_133;
  }

  LODWORD(v10) = 0;
  if (((v92 << 8) & 0x8000) != 0)
  {
    goto LABEL_134;
  }

  v11 = (v94 << 8);
  if (v11 < 0)
  {
    goto LABEL_134;
  }

  v12 = (v96 << 8);
  if (v12 < 0)
  {
    goto LABEL_134;
  }

  v13 = (v98 << 8);
  if (v13 < 0)
  {
    goto LABEL_134;
  }

  v14 = (v100 << 8);
  if (v14 < 0)
  {
    goto LABEL_134;
  }

  v15 = (v92 << 8) | v91;
  v16 = v93;
  v17 = v14 | v99;
  v18 = v15 + v17 + 1;
  if (v17)
  {
    if (v98 > 7u)
    {
      goto LABEL_133;
    }

    v88 = v95;
    __count = v17;
    v10 = malloc(v18);
    if (!v10)
    {
      goto LABEL_134;
    }

    v19 = v13 | v97;
  }

  else
  {
    v88 = v95;
    __count = 0;
    v10 = malloc(v18);
    v19 = 0;
    if (!v10)
    {
      LODWORD(v10) = 0;
      goto LABEL_134;
    }
  }

  v83 = v19;
  if (v15 >= 0x200)
  {
    v20 = 512;
  }

  else
  {
    v20 = (v92 << 8) | v91;
  }

  *v8 = v10;
  *(v8 + 8) = v10;
  v86 = v20;
  if (v6 == 12)
  {
    v21 = v10;
    LODWORD(v22) = 0;
    v23 = 12;
  }

  else
  {
    if (v6 - v9 >= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = (v6 - v9);
    }

    v21 = v10;
    memcpy(v10, (v7 + v9), v22);
    v20 = v86;
    v23 = v22 + v9;
  }

  v24 = v11 | v16;
  if (v20 != v22)
  {
    bzero(&v21[v22], v20 - v22);
    v20 = v86;
  }

  v21[v20] = 0;
  if (v24 <= 44)
  {
    v25 = 44;
  }

  else
  {
    v25 = v24;
  }

  v10 = calloc(v25, 1uLL);
  *(v8 + 16) = v10;
  if (v10)
  {
    v26 = v23;
    v27 = v6 - v23;
    if (v6 - v23 < 1)
    {
      LODWORD(v28) = 0;
    }

    else
    {
      if (v27 >= v24)
      {
        v28 = v24;
      }

      else
      {
        v28 = v27;
      }

      memcpy(v10, (v7 + v26), v28);
      v26 += v28;
    }

    if (v28 >= v24)
    {
      v29 = v12 | v88;
      if (((v24 + v15) & 1) != 0 && v26 < v6)
      {
        LOBYTE(v90) = *(v7 + v26);
        v30 = v26 + 1;
      }

      else
      {
        v30 = v26;
      }

      if (v29 <= 39)
      {
        v31 = 39;
      }

      else
      {
        v31 = v29;
      }

      v10 = calloc(v31, 2uLL);
      *(v8 + 24) = v10;
      if (!v10)
      {
        goto LABEL_134;
      }

      v32 = v10;
      v89 = v29;
      v33 = 2 * v29;
      if (v6 - v30 < 1)
      {
        v34 = 0;
      }

      else
      {
        v34 = v6 - v30 >= v33 ? 2 * v29 : v6 - v30;
        __memcpy_chk();
        v30 += v34;
      }

      if (v34 == v33)
      {
        sub_29949FAD8(&v90, v32, v89);
        v35 = v83;
        if (v83 <= 414)
        {
          v36 = 414;
        }

        else
        {
          v36 = v83;
        }

        v10 = calloc(v36, 8uLL);
        *(v8 + 32) = v10;
        if (!v10)
        {
          goto LABEL_134;
        }

        if (v83)
        {
          v37 = v10;
          v38 = 2 * v83;
          if (v6 - v30 < 1)
          {
            v39 = 0;
          }

          else
          {
            if (v6 - v30 >= v38)
            {
              v39 = 2 * v83;
            }

            else
            {
              v39 = v6 - v30;
            }

            __memcpy_chk();
            v30 += v39;
          }

          v41 = __count;
          if (v39 != v38)
          {
            goto LABEL_133;
          }

          v42 = v86 + 1;
          v43 = v6 - v30;
          if (v6 - v30 < 1)
          {
            LODWORD(v44) = 0;
          }

          else
          {
            v44 = v43 >= __count ? __count : v43;
            memcpy(&v21[v42], (v7 + v30), v44);
            v41 = __count;
            v30 += v44;
          }

          if (v44 != v41)
          {
            goto LABEL_133;
          }

          v45 = &v21[v42];
          v35 = v83;
          v40 = v41;
          sub_29949FB38(&v90, v37, v83, v41, v45);
        }

        else
        {
          v40 = __count;
        }

        *(v8 + 56) = 2555948;
        *(v8 + 60) = v36;
        v46 = v24;
        if ((v40 & 1) != 0 && v30 < v6)
        {
          v47 = v35;
          LOBYTE(v90) = *(v7 + v30++);
        }

        else
        {
          v47 = v35;
        }

        if (!_nc_user_definable)
        {
          goto LABEL_108;
        }

        v48 = v6 - v30;
        if (v6 - v30 < 1)
        {
          goto LABEL_108;
        }

        v49 = v48 >= 0xA ? 10 : v48;
        __memcpy_chk();
        if (v48 < 0xA)
        {
          goto LABEL_108;
        }

        v50 = (HIBYTE(v90) << 8);
        v51 = v50 | v90;
        if (v51 <= 0)
        {
          v63 = &v92;
          v64 = -1;
          while (v64 != 3)
          {
            v65 = *(v63 - 1);
            ++v64;
            v63 += 2;
            if (v65 >= 1)
            {
              if (v64 <= 3)
              {
                goto LABEL_87;
              }

              goto LABEL_108;
            }
          }

          goto LABEL_108;
        }

LABEL_87:
        v52 = v49;
        LODWORD(v10) = 0;
        v53 = (v92 << 8);
        v54 = v53 | v91;
        v55 = (v94 << 8);
        __counta = v54 + v51 + (v55 | v93);
        v87 = v55 | v93;
        if (__counta > 0x7FF)
        {
          goto LABEL_134;
        }

        if ((v95 | (v96 << 8)) > 4095)
        {
          goto LABEL_134;
        }

        v56 = (v98 << 8);
        v82 = v56 | v97;
        if (v82 > 4095 || v50 < 0 || v53 < 0 || v55 < 0 || (v96 << 8) < 0 || v56 < 0)
        {
          goto LABEL_134;
        }

        *(v8 + 56) = v51 + 44;
        *(v8 + 58) = v54 + 39;
        *(v8 + 60) = v87 + v36;
        v57 = _nc_doalloc(*(v8 + 16), (v51 + 44));
        *(v8 + 16) = v57;
        if (!v57 || (v58 = _nc_doalloc(*(v8 + 24), 2 * *(v8 + 58)), (*(v8 + 24) = v58) == 0) || (v59 = _nc_doalloc(*(v8 + 32), 8 * *(v8 + 60)), (*(v8 + 32) = v59) == 0))
        {
          _nc_err_abort("Out of memory", v82);
        }

        v60 = v52 + v30;
        *(v8 + 62) = v51;
        if (v51)
        {
          v61 = v6 - v60;
          if (v6 - v60 < 1)
          {
            LODWORD(v62) = 0;
          }

          else
          {
            if (v61 >= v51)
            {
              v62 = v51;
            }

            else
            {
              v62 = v61;
            }

            memcpy((*(v8 + 16) + 44), (v7 + v60), v62);
            LODWORD(v60) = v62 + v60;
          }

          if (v62 != v51)
          {
            goto LABEL_133;
          }

          if ((v51 & 1) != 0 && v60 < v6)
          {
            LOBYTE(v90) = *(v7 + v60);
            LODWORD(v60) = v60 + 1;
          }
        }

        *(v8 + 64) = v54;
        if (v54)
        {
          v69 = 2 * v54;
          if (v6 - v60 < 1)
          {
            v70 = 0;
          }

          else
          {
            if (v6 - v60 >= v69)
            {
              v70 = 2 * v54;
            }

            else
            {
              v70 = v6 - v60;
            }

            __memcpy_chk();
            LODWORD(v60) = v70 + v60;
          }

          if (v70 != v69)
          {
            goto LABEL_133;
          }

          sub_29949FAD8(&v90, (*(v8 + 24) + 78), v54);
        }

        if (__counta + v87 <= 0x7FF)
        {
          if (!v87 && !__counta || ((v72 = 2 * (__counta + v87), v6 - v60 < 1) ? (v73 = 0) : (v6 - v60 >= v72 ? (v73 = 2 * (__counta + v87)) : (v73 = v6 - v60), __memcpy_chk(), LODWORD(v60) = v73 + v60), v73 == v72))
          {
            if (!v82)
            {
              goto LABEL_153;
            }

            v10 = malloc(v82);
            *(v8 + 40) = v10;
            if (!v10)
            {
              goto LABEL_134;
            }

            v74 = v6 - v60;
            if (v6 - v60 < 1)
            {
              LODWORD(v75) = 0;
            }

            else
            {
              v75 = v74 >= v82 ? v82 : v74;
              memcpy(v10, (v7 + v60), v75);
            }

            if (v75 == v82)
            {
LABEL_153:
              *(v8 + 66) = v87;
              if (v87)
              {
                sub_29949FB38(&v90, *(v8 + 32) + 8 * v47, v87, v82, *(v8 + 40));
                v76 = 0;
                v77 = *(v8 + 32);
                v78 = v87 + 1;
                v79 = 8 * v87 + 3304;
                do
                {
                  *(v77 + v79) = *(v77 + 8 * (v47 + v78 - 2));
                  v77 = *(v8 + 32);
                  v80 = *(v77 + v79);
                  if ((v80 + 1) >= 2)
                  {
                    v76 += strlen(v80) + 1;
                  }

                  --v78;
                  v79 -= 8;
                }

                while (v78 > 1);
                if (!__counta)
                {
                  goto LABEL_108;
                }

LABEL_162:
                v10 = calloc(__counta, 8uLL);
                *(v8 + 48) = v10;
                if (!v10)
                {
                  goto LABEL_134;
                }

                sub_29949FB38((&v90 + v87), v10, __counta, v82, *(v8 + 40) + v76);
                goto LABEL_108;
              }

              if (__counta)
              {
                v76 = 0;
                goto LABEL_162;
              }

LABEL_108:
              if (v46 <= 43)
              {
                v66 = v46;
                do
                {
                  *(*(v8 + 16) + v66++) = 0;
                }

                while (v66 != 44);
              }

              if (v89 <= 38)
              {
                memset((*(v8 + 24) + 2 * (v89 & 0x7FFF)), 255, ((76 - 2 * (v89 & 0x7FFF)) & 0x1FFFFFFFELL) + 2);
              }

              if (v47 > 413)
              {
                LODWORD(v10) = 1;
              }

              else
              {
                v67 = v47 - 1;
                v68 = 8 * v47;
                LODWORD(v10) = 1;
                do
                {
                  *(*(v8 + 32) + v68) = 0;
                  ++v67;
                  v68 += 8;
                }

                while (v67 < 413);
              }

              goto LABEL_134;
            }
          }
        }
      }
    }

LABEL_133:
    LODWORD(v10) = 0;
  }

LABEL_134:
  v71 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t sub_29949FAD8(uint64_t result, __int16 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = (result + 1);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      if (v5 == 254)
      {
        if (v6 != 255)
        {
          goto LABEL_9;
        }

        v7 = -2;
      }

      else
      {
        if (v5 != 255 || v6 != 255)
        {
LABEL_9:
          v7 = v5 | (v6 << 8);
          goto LABEL_10;
        }

        v7 = -1;
      }

LABEL_10:
      v4 += 2;
      *a2++ = v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_29949FB38(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = a5 + a4;
    v12 = a3;
    while (1)
    {
      v13 = (a1 + 2 * v9);
      v14 = *v13;
      v15 = v13[1];
      if (v14 != 254)
      {
        break;
      }

      if (v15 != 255)
      {
        goto LABEL_9;
      }

      v16 = -1;
LABEL_16:
      *(a2 + 8 * v9) = v16;
      if (v16 + 1 >= 2)
      {
        while (v16 <= v11)
        {
          if (!*v16)
          {
            goto LABEL_23;
          }

          ++v16;
        }

        *(a2 + 8 * v9) = 0;
      }

LABEL_23:
      if (++v9 == v12)
      {
        return;
      }
    }

    if (v14 != 255 || v15 != 255)
    {
LABEL_9:
      v17 = v14 | (v15 << 8);
      if (a4 >= v17)
      {
        if (v17 >= a4)
        {
          if ((v10 & 1) == 0)
          {
            _nc_warning("corrupt data found in convert_strings");
          }

          v16 = 0;
          v10 = 1;
        }

        else
        {
          v16 = a5 + v17;
        }

        goto LABEL_16;
      }
    }

    v16 = 0;
    goto LABEL_16;
  }
}

int _nc_read_file_entry(const char *const a1, TERMTYPE *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v5 = v2;
  v13 = *MEMORY[0x29EDCA608];
  if ((_nc_access(v2, 4) & 0x80000000) == 0)
  {
    v6 = fopen(v5, "rb");
    if (v6)
    {
      v7 = v6;
      v8 = fread(__ptr, 1uLL, 0x1001uLL, v6);
      if (v8 >= 1)
      {
        if (_nc_read_termtype(v4, __ptr, v8))
        {
          v9 = 1;
LABEL_9:
          fclose(v7);
          goto LABEL_10;
        }

        _nc_free_termtype(v4);
      }

      v9 = 0;
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_10:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

int _nc_read_entry(const char *const a1, char *const a2, TERMTYPE *const a3)
{
  sprintf(a2, "%.*s", 1023, a1);
  file_entry = *a1;
  if (*a1)
  {
    if (file_entry == 46)
    {
      file_entry = *(a1 + 1);
      if (!a1[1])
      {
        return file_entry;
      }

      if (file_entry == 46 && !a1[2])
      {
        return 0;
      }
    }

    if (_nc_pathlast(a1) || strchr(a1, 58))
    {
      return 0;
    }

    *v12 = 0;
    _nc_first_db(&v12[1], v12);
    db = _nc_next_db(&v12[1], v12);
    if (db)
    {
      v9 = db;
      while (1)
      {
        if (_nc_is_dir_path(v9) && (v10 = strlen(v9), v10 + strlen(a1) + 5 <= 0x400))
        {
          sprintf(a2, "%s/%02x/%s", v9, *a1, a1);
          file_entry = _nc_read_file_entry(a2, a3);
        }

        else
        {
          file_entry = _nc_read_termcap_entry(a1, a3);
          source = _nc_get_source();
          sprintf(a2, "%.*s", 1023, source);
        }

        if (file_entry == 1)
        {
          break;
        }

        v9 = _nc_next_db(&v12[1], v12);
        if (!v9)
        {
          return file_entry;
        }
      }

      _nc_last_db();
    }

    else
    {
      return -1;
    }
  }

  return file_entry;
}

uint64_t _nc_read_termcap_entry(const char *a1, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v40 = 0;
  v24 = 0;
  v4 = getenv("TERMCAP");
  if (v4)
  {
    v5 = v4;
    if (_nc_is_abs_path(v4))
    {
      LODWORD(v6) = sub_2994A0220(&v24, v5, 0);
      v7 = 0;
      goto LABEL_20;
    }

    if (_nc_name_match(v5, a1, "|:"))
    {
      __sprintf_chk(__s, 0, 0x400uLL, "%.*s\n", 1022, v5);
      _nc_set_source("TERMCAP");
      _nc_read_entry_source(0, __s, 0, 0, 0);
      goto LABEL_28;
    }
  }

  v8 = getenv("TERMPATH");
  if (!v8)
  {
    v8 = "/etc/termcap:/usr/share/misc/termcap";
  }

  v7 = strdup(v8);
  v9 = 0;
  v6 = 0;
  while (1)
  {
    if (v7[v9] == 58)
    {
      v7[v9] = 0;
      goto LABEL_15;
    }

    if (!v7[v9])
    {
      break;
    }

    if (!v9 || !v7[v9 - 1])
    {
      v6 = sub_2994A0220(&v24, &v7[v9], v6);
    }

LABEL_15:
    ++v9;
  }

  v10 = getenv("HOME");
  if (v10 && *v10 && strlen(v10) + 12 <= 0x3FF)
  {
    __strcpy_chk();
    __sprintf_chk(__s, 0, 0x400uLL, "%s/.termcap", v22);
    LODWORD(v6) = sub_2994A0220(&v24, __s, v6);
  }

LABEL_20:
  if (v6 >= 1)
  {
    v11 = v6;
    v12 = &v24;
    do
    {
      v13 = *v12;
      if (!_nc_access(*v12, 4))
      {
        v14 = fopen(v13, "r");
        if (v14)
        {
          v15 = v14;
          _nc_set_source(v13);
          _nc_read_entry_source(v15, 0, 0, 1, 0);
          fclose(v15);
        }
      }

      ++v12;
      --v11;
    }

    while (v11);
  }

  if (v7)
  {
    free(v7);
  }

LABEL_28:
  if (_nc_head)
  {
    _nc_resolve_uses2(1, 0);
    v16 = _nc_head;
    if (_nc_head)
    {
      while (!_nc_name_match(v16->tterm.term_names, a1, "|:"))
      {
        v16 = v16->next;
        if (!v16)
        {
          goto LABEL_32;
        }
      }

      *a2 = *&v16->tterm.term_names;
      v18 = *&v16->tterm.Booleans;
      v19 = *&v16->tterm.Strings;
      v20 = *&v16->tterm.ext_Names;
      *(a2 + 64) = *&v16->tterm.ext_Numbers;
      *(a2 + 32) = v19;
      *(a2 + 48) = v20;
      *(a2 + 16) = v18;
      _nc_free_entry(_nc_head, v16);
      result = 1;
    }

    else
    {
LABEL_32:
      result = 0;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2994A0220(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strchr(__s, 58);
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
  }

  if (a3 <= 31 && !_nc_access(__s, 4))
  {
    *(a1 + 8 * a3) = __s;
    a3 = (a3 + 1);
  }

  *(a1 + 8 * a3) = 0;
  if (v7)
  {
    *v7 = 58;
  }

  return a3;
}

BOOL is_term_resized(int a1, int a2)
{
  result = 0;
  if (a1 >= 1 && a2 >= 1)
  {
    return *(SP + 128) != a1 || *(SP + 130) != a2;
  }

  return result;
}

int resize_term(int a1, int a2)
{
  result = -1;
  if (a2 >= 1 && a1 >= 1 && SP)
  {
    v5 = *(SP + 128);
    v6 = *(SP + 132);
    v7 = v5 - v6;
    v8 = *(SP + 130);
    if (v5 == a1 && v8 == a2)
    {
      v13 = a1 - v7;
    }

    else
    {
      dword_2A1462D38 = *(SP + 128);
      dword_2A1462D3C = v8;
      v10 = v8;
      if (v5 < a1)
      {
        v11 = sub_2994A04D8(a1, v8, v5 - v6);
        dword_2A1462D38 = a1;
        dword_2A1462D3C = v8;
        if (v11)
        {
          return -1;
        }

        v10 = *(SP + 130);
        v5 = a1;
      }

      if (v10 < a2)
      {
        v12 = sub_2994A04D8(v5, a2, v7);
        dword_2A1462D38 = v5;
        dword_2A1462D3C = a2;
        v8 = a2;
        if (v12)
        {
          return -1;
        }
      }

      if (v5 > a1 || v8 > a2)
      {
        v15 = 0;
        do
        {
          v16 = *&PC[472];
          if (!*&PC[472])
          {
            break;
          }

          v17 = 0;
          do
          {
            if ((*(v16 + 14) & 0x10) == 0)
            {
              v18 = 0;
              v19 = (v16 + 2);
LABEL_26:
              v20 = &PC[472];
              while (1)
              {
                v20 = *v20;
                if (!v20)
                {
                  break;
                }

                if (*(v20 + 10) == v19)
                {
                  v19 = v20 + 16;
                  ++v18;
                  goto LABEL_26;
                }
              }

              if (v18 == v15)
              {
                if (sub_2994A06D8((v16 + 2), a1, a2, v7))
                {
                  return -1;
                }

                v17 = 1;
              }
            }

            v16 = *v16;
          }

          while (v16);
          ++v15;
        }

        while ((v17 & 1) != 0);
      }

      v21 = SP;
      *(SP + 128) = a1;
      *(v21 + 130) = a2;
      Numbers = cur_term->type.Numbers;
      Numbers[2] = a1;
      *Numbers = a2;
      v13 = a1 - v7;
      *(v21 + 132) = v13;
      v23 = *(v21 + 1400);
      if (v23)
      {
        free(v23);
        v21 = SP;
        *(SP + 1400) = 0;
      }

      v24 = *(v21 + 1408);
      if (v24)
      {
        free(v24);
        *(SP + 1408) = 0;
      }
    }

    result = 0;
    LINES = v13;
    COLS = a2;
  }

  return result;
}

uint64_t sub_2994A04D8(int a1, int a2, int a3)
{
  v6 = 1;
  while (2)
  {
    v7 = *&PC[472];
    if (*&PC[472])
    {
      v8 = 0;
      do
      {
        if ((*(v7 + 14) & 0x10) == 0)
        {
          v9 = v6;
          v10 = v7 + 2;
          do
          {
            v10 = v10[8];
            --v9;
          }

          while (v10);
          if (!v9)
          {
            if (sub_2994A06D8((v7 + 2), a1, a2, a3))
            {
              return 0xFFFFFFFFLL;
            }

            v8 = 1;
          }
        }

        v7 = *v7;
      }

      while (v7);
      ++v6;
      if (v8)
      {
        continue;
      }
    }

    break;
  }

  return 0;
}

int resizeterm(int a1, int a2)
{
  v2 = -1;
  if (a2 >= 1 && a1 >= 1)
  {
    v4 = SP;
    if (SP)
    {
      *(SP + 1384) = 0;
      if (*(v4 + 128) == a1 && *(v4 + 130) == a2)
      {
        v2 = 0;
      }

      else
      {
        v6 = *(v4 + 800);
        if (v6 && (*(v6 + 1) & 1) == 0)
        {
          slk_clear();
          v7 = 1;
        }

        else
        {
          v7 = 0;
        }

        v2 = resize_term(a1, a2);
        clearok(*(SP + 136), 1);
        v8 = 0;
        v9 = &dword_2A14628C0;
        v4 = SP;
        do
        {
          v10 = *(v9 - 1);
          if (v10)
          {
            v11 = v10 == *(v4 + 152);
          }

          else
          {
            v11 = 1;
          }

          if (!v11 && *v9 < 0 && *(v9 + 1) != _nc_slk_initialize)
          {
            wtouchln(*(v9 - 1), 0, *(v10 + 4) + 1, 1);
            wnoutrefresh(*(v9 - 1));
            v4 = SP;
          }

          v9 += 6;
          v8 += 24;
        }

        while (v8 < 120);
        if (v7)
        {
          slk_restore();
          slk_touch();
          slk_refresh();
          v4 = SP;
        }
      }

      _nc_ungetch(v4, 410);
    }
  }

  return v2;
}

uint64_t sub_2994A06D8(uint64_t a1, int a2, int a3, int a4)
{
  v8 = dword_2A1462D38;
  v9 = _nc_screen_of(a1);
  v10 = 0;
  v11 = v8 - a4 + *(v9 + 134);
  v12 = *(a1 + 4) + 1;
  v13 = *(a1 + 6);
  v14 = &qword_2A14628C8;
  while (1)
  {
    if (*(v14 - 2) == a1)
    {
      v15 = *(v14 - 2);
      if (v15)
      {
        break;
      }
    }

    v14 += 3;
    v10 += 24;
    if (v10 >= 120)
    {
      goto LABEL_5;
    }
  }

  if ((v15 & 0x80000000) == 0)
  {
LABEL_5:
    v16 = *(a1 + 8);
    if (v11 <= v16)
    {
      *(a1 + 8) = v16 + a2 - dword_2A1462D38;
    }

    else
    {
      if (a2 != dword_2A1462D38 && v12 == dword_2A1462D38)
      {
        v18 = a2;
      }

      else
      {
        v18 = *(a1 + 4) + 1;
      }

      if (a2 != dword_2A1462D38 && v12 == dword_2A1462D38 - a4)
      {
        v12 = a2 - a4;
      }

      else
      {
        v12 = v18;
      }
    }

    goto LABEL_19;
  }

  v25 = 0;
  v26 = 0;
  v27 = &dword_2A14628C0;
  do
  {
    if (*v27 < 0)
    {
      v26 -= *v27;
      if (*(v27 - 1) == a1)
      {
        break;
      }
    }

    v27 += 6;
    v25 += 24;
  }

  while (v25 < 120);
  *(a1 + 8) = a2 - *(a1 + 84) - v26;
  if (*v14 == _nc_slk_initialize)
  {
    _nc_format_slks(a3);
  }

LABEL_19:
  if (v12 >= a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = v12;
  }

  if (v13 < a3)
  {
    v21 = v13 + 1;
  }

  else
  {
    v21 = a3;
  }

  if (dword_2A1462D3C != a3 && v21 == dword_2A1462D3C)
  {
    v23 = a3;
  }

  else
  {
    v23 = v21;
  }

  return wresize(a1, v20, v23);
}

char *_nc_printf_string(const char *a1, va_list a2)
{
  if (a1)
  {
    v4 = *(SP + 128);
    v5 = *&PC[492];
    if (*&PC[492] >= v4)
    {
      v6 = *(SP + 130);
      v7 = *&PC[488];
      if (*&PC[488] >= v6)
      {
        result = *&PC[104];
        if (!*&PC[104])
        {
          return result;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *&PC[492] = *(SP + 128);
      v6 = *(SP + 130);
      v5 = v4;
      v7 = *&PC[488];
    }

    if (v7 < v6)
    {
      *&PC[488] = v6;
      v7 = v6;
    }

    *&PC[112] = v5 + v5 * v7 + 1;
    result = _nc_doalloc(*&PC[104], *&PC[112]);
    *&PC[104] = result;
    if (result)
    {
LABEL_10:
      vsnprintf(result, *&PC[112], a1, a2);
      return *&PC[104];
    }
  }

  else
  {
    result = *&PC[104];
    if (*&PC[104])
    {
      free(*&PC[104]);
      result = 0;
      *&PC[104] = 0;
      *&PC[112] = 0;
    }
  }

  return result;
}

void *_nc_str_init(void *result, _BYTE *a2, uint64_t a3)
{
  if (result)
  {
    *result = a2;
    result[1] = a2;
    result[2] = a3 - 1;
    result[3] = a3 - 1;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return result;
}

void *_nc_str_null(void *result, uint64_t a2)
{
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = a2 - 1;
    result[3] = a2 - 1;
  }

  return result;
}

__n128 _nc_str_copy(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _nc_safe_strcat(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = *(a1 + 8);
  if (v7)
  {
    strcpy(v7, __s);
    v5 = *(a1 + 16);
    *(a1 + 8) += v6;
  }

  *(a1 + 16) = v5 - v6;
  return 1;
}

uint64_t _nc_safe_strcpy(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  if (v4 >= *(a1 + 16))
  {
    return 0;
  }

  v5 = v4;
  if (*a1)
  {
    strcpy(*a1, __s);
    *(a1 + 8) = *a1 + v5;
  }

  *(a1 + 16) = *(a1 + 24) - v5;
  return 1;
}

_BYTE *_nc_expand_try(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  result = 0;
  if (a1 && a2)
  {
    while (1)
    {
      result = _nc_expand_try(*a1, a2, a3, a4 + 1);
      if (result)
      {
        break;
      }

      if (*(a1 + 18) == a2 && !(*a3)--)
      {
        result = calloc(a4 + 2, 1uLL);
        if (!result)
        {
          return result;
        }

        break;
      }

      a1 = *(a1 + 8);
      if (!a1)
      {
        return 0;
      }
    }

    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = 0x80;
    }

    result[a4] = v10;
  }

  return result;
}

uint64_t _nc_remove_key(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (!_nc_remove_key(v3, a2))
  {
    v5 = *v2;
    if (*(*v2 + 18) == a2)
    {
      if (*v5)
      {
        *(v5 + 9) = 0;
      }

      else
      {
        *v2 = v5[1];
        free(v5);
      }

      return 1;
    }

    v3 = v5[1];
    v2 = v5 + 1;
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _nc_remove_string(uint64_t *a1, _BYTE *a2)
{
  do
  {
    if (!a2)
    {
      return 0;
    }

    v3 = *a2;
    if (!*a2)
    {
      return 0;
    }

    result = *a1;
    if (!*a1)
    {
      return result;
    }

    v5 = a1;
    if (*(result + 16) != v3)
    {
      while (1)
      {
        v6 = result;
        result = *(result + 8);
        if (!result)
        {
          return result;
        }

        if (*(result + 16) == v3)
        {
          v5 = (v6 + 8);
          break;
        }
      }
    }

    v7 = *++a2;
    a1 = result;
  }

  while (v7);
  if (*result)
  {
    return 0;
  }

  *v5 = *(result + 8);
  free(result);
  return 1;
}

char *__cdecl _nc_trim_sgr0(TERMTYPE *a1)
{
  Strings = a1->Strings;
  v2 = Strings[39];
  if (v2 == -1 || !v2 || (Strings[131] + 1) < 2)
  {
    return v2;
  }

  v4 = sub_2994A1034(a1, 1);
  v5 = sub_2994A1034(a1, 0);
  v6 = a1->Strings;
  v7 = strdup(v6[39]);
  if (sub_2994A10A0(v4, v6[25]) && sub_2994A10A0(v5, *(a1->Strings + 38)) && sub_2994A10A0(v7, *(a1->Strings + 38)))
  {
    if (sub_2994A114C(v5, v7) && !sub_2994A114C(v5, v4))
    {
      v8 = *(a1->Strings + 38);
      if (v8)
      {
        v9 = strlen(v5);
        v10 = strlen(v8);
        v11 = v9 - v10;
        if (v9 > v10)
        {
          v12 = 0;
          while (1)
          {
            v13 = sub_2994A12EC(v8, &v5[v12]);
            if (v13)
            {
              break;
            }

            if (++v12 > v11)
            {
              goto LABEL_14;
            }
          }

          LOBYTE(v20) = v5[(v13 + v12)];
          if (v20)
          {
            v21 = v13 + v12 + 1;
            v22 = v12;
            do
            {
              LODWORD(v12) = v22 + 1;
              v5[v22] = v20;
              v20 = v5[v21++];
              ++v22;
            }

            while (v20);
          }

          v5[v12] = 0;
          goto LABEL_60;
        }
      }

LABEL_14:
      if (!v5)
      {
        goto LABEL_52;
      }

      v14 = *v5;
      if (v14 == 233)
      {
        v15 = 1;
      }

      else
      {
        if (v14 != 27 || v5[1] != 91)
        {
          goto LABEL_52;
        }

        v15 = 2;
      }

      if (v5[strlen(v5) - 1] == 109)
      {
        v17 = &v5[v15];
        v18 = *v17;
        if (v18 == 48)
        {
          v19 = v17[1];
          if (v19 == 59)
          {
            v17 += 2;
          }

          else
          {
            if ((v19 & 0x80) != 0)
            {
              v23 = __maskrune(v19, 0x100uLL);
            }

            else
            {
              v23 = *(MEMORY[0x29EDCA600] + 4 * v19 + 60) & 0x100;
            }

            if (v23)
            {
              ++v17;
            }
          }

          v18 = *v17;
        }

        if (v18 == 49)
        {
          v24 = v17 + 1;
          if (v17[1] == 48)
          {
            v25 = v17[2];
            if (v25 == 59)
            {
              v43 = v17 - v5 - (*(v17 - 1) == 59);
              goto LABEL_50;
            }

            if ((v25 & 0x80) != 0)
            {
              v26 = __maskrune(v25, 0x100uLL);
            }

            else
            {
              v26 = *(MEMORY[0x29EDCA600] + 4 * v25 + 60) & 0x100;
            }

            if (v26)
            {
              v43 = v17 - v5 - (*(v17 - 1) == 59);
              if (v17[1] != 48)
              {
LABEL_68:
                LOBYTE(v39) = v5[v24 - v5];
                if (v39)
                {
                  v40 = v24 - v5 + 1;
                  v41 = v43;
                  do
                  {
                    v42 = v41 + 1;
                    v5[v41] = v39;
                    v39 = v5[v40++];
                    ++v41;
                  }

                  while (v39);
                }

                else
                {
                  v42 = v43;
                }

                v5[v42] = 0;
LABEL_60:
                v37 = a1->Strings;
                if (!strcmp(v5, v37[39]))
                {
                  free(v5);
                  v2 = v37[39];
                }

                else
                {
                  v2 = v5;
                }

                goto LABEL_21;
              }

LABEL_50:
              v27 = v17[2];
              if (v27 == 59)
              {
                v24 = v17 + 3;
              }

              else
              {
                if ((v27 & 0x80) != 0)
                {
                  v38 = __maskrune(v27, 0x100uLL);
                }

                else
                {
                  v38 = *(MEMORY[0x29EDCA600] + 4 * v27 + 60) & 0x100;
                }

                if (v38)
                {
                  v24 = v17 + 2;
                }
              }

              goto LABEL_68;
            }
          }
        }
      }

LABEL_52:
      v28 = strstr(v7, v5);
      if (v28)
      {
        v29 = v28;
        if (strcmp(v7, v5))
        {
          v30 = v29 - v7;
          v31 = strlen(v5);
          v32 = strdup(v7);
          v33 = v32;
          LOBYTE(v34) = v32[v31];
          if (v34)
          {
            v35 = v31 + 1;
            do
            {
              v36 = v30 + 1;
              v32[v30] = v34;
              v34 = v32[v35++];
              ++v30;
            }

            while (v34);
          }

          else
          {
            v36 = v30;
          }

          v32[v36] = 0;
          free(v5);
          v5 = v33;
        }
      }

      goto LABEL_60;
    }

    goto LABEL_20;
  }

  if (v5)
  {
LABEL_20:
    free(v5);
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  if (v4)
  {
    free(v4);
  }

  return v2;
}

char *sub_2994A1034(uint64_t a1, uint64_t a2)
{
  v2 = _nc_tiparm(9, *(*(a1 + 32) + 1048), 0, 0, 0, 0, 0, 0, 0, 0, a2);
  if ((v2 + 1) < 2)
  {
    return 0;
  }

  return strdup(v2);
}

BOOL sub_2994A10A0(char *__s, const char *a2)
{
  if (__s)
  {
    if ((a2 + 1) >= 2)
    {
      v5 = strlen(__s);
      v6 = strlen(a2);
      v7 = v5 > v6;
      v8 = v5 - v6;
      if (v7)
      {
        v9 = v6;
        if (!strncmp(a2, __s, v6))
        {
          v10 = 0;
          v11 = 1;
          do
          {
            __s[v10] = __s[v9 + v10];
            v10 = v11;
            v7 = v8 > v11++;
          }

          while (v7);
          strcpy(&__s[v10], a2);
        }
      }
    }
  }

  return __s != 0;
}

BOOL sub_2994A114C(char *__s, const char *a2)
{
  result = 0;
  if (!__s)
  {
    return result;
  }

  v4 = a2;
  if (!a2)
  {
    return result;
  }

  v5 = *__s;
  if (v5 == 233)
  {
    v6 = 1;
  }

  else if (v5 == 27)
  {
    v6 = 2 * (__s[1] == 91);
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  if (v7 == 233)
  {
    v8 = 1;
    if (!v6)
    {
      goto LABEL_32;
    }

LABEL_13:
    if (v8)
    {
      if (v6 == v8)
      {
        __s += v6;
        v4 = &a2[v6];
        v9 = *__s;
        v10 = *v4;
        if (v9 != v10)
        {
          if (v9 == 48)
          {
            v11 = __s[1];
            if (v11 == 59)
            {
              __s += 2;
            }

            else
            {
              if ((v11 & 0x80) != 0)
              {
                v12 = __maskrune(v11, 0x100uLL);
                v10 = *v4;
              }

              else
              {
                v12 = *(MEMORY[0x29EDCA600] + 4 * v11 + 60) & 0x100;
              }

              if (v12)
              {
                ++__s;
              }
            }
          }

          if (v10 == 48)
          {
            v13 = *(v4 + 1);
            if (v13 == 59)
            {
              v4 += 2;
            }

            else
            {
              if ((v13 & 0x80) != 0)
              {
                v14 = __maskrune(v13, 0x100uLL);
              }

              else
              {
                v14 = *(MEMORY[0x29EDCA600] + 4 * v13 + 60) & 0x100;
              }

              if (v14)
              {
                ++v4;
              }
            }
          }
        }
      }
    }

    goto LABEL_32;
  }

  if (v7 == 27)
  {
    v8 = 2 * (a2[1] == 91);
    if (v6)
    {
      goto LABEL_13;
    }
  }

LABEL_32:
  v15 = strlen(__s);
  v16 = strlen(v4);
  result = 0;
  if (v15 && v16)
  {
    if (v15 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    return strncmp(__s, v4, v17) == 0;
  }

  return result;
}

unint64_t sub_2994A12EC(unint64_t result, unsigned __int8 *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = 0;
    LODWORD(result) = 0;
    while (v2 == *a2)
    {
      result = (v4 + result);
      if (v2 != 36)
      {
        goto LABEL_26;
      }

      v5 = v3;
      if (v3[1] == 60)
      {
        v5 = v3 + 1;
        do
        {
          v7 = *++v5;
          v6 = v7;
          v8 = v7 - 48;
        }

        while (v7 == 47 || v8 < 0xA);
        if (v6 == 62)
        {
          ++v5;
        }
      }

      if (a2[1] != 60)
      {
        goto LABEL_26;
      }

      v10 = a2 + 1;
      v11 = -1;
      do
      {
        v13 = *++v10;
        v12 = v13;
        v14 = v13 - 48;
        --v11;
      }

      while (v13 == 47 || v14 < 0xA);
      v16 = v12 == 62;
      v17 = v12 == 62;
      if (v16)
      {
        ++v10;
      }

      if (v5 == v3 || v17 == v11)
      {
LABEL_26:
        v4 = 0;
        result = (result + 1);
        v5 = v3 + 1;
        ++a2;
      }

      else
      {
        v4 = v17 - v11;
        a2 = v10;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        return result;
      }
    }
  }

  return 0;
}

int doupdate(void)
{
  v0 = SP;
  if (!SP)
  {
    return -1;
  }

  v1 = *(SP + 136);
  v2 = curscr;
  if (v1)
  {
    v3 = 0;
    if (v1 != curscr)
    {
      curscr = *(SP + 136);
    }
  }

  else
  {
    *(SP + 136) = curscr;
    v3 = v2 == 0;
  }

  v5 = *(v0 + 144);
  v6 = newscr;
  if (v5)
  {
    v7 = 0;
    if (v5 != newscr)
    {
      newscr = *(v0 + 144);
    }
  }

  else
  {
    *(v0 + 144) = newscr;
    v7 = v6 == 0;
  }

  v8 = *(v0 + 152);
  v9 = stdscr;
  if (v8)
  {
    v10 = 0;
    if (v8 != stdscr)
    {
      stdscr = v8;
    }
  }

  else
  {
    *(v0 + 152) = stdscr;
    v10 = v9 == 0;
  }

  result = -1;
  if (!v3 && !v7 && !v10)
  {
    _nc_signal_handler(0);
    v11 = SP;
    if (*(SP + 734))
    {
      --*(SP + 734);
    }

    if (!*(v11 + 736))
    {
      if (!_nc_handle_sigwinch(v11))
      {
        goto LABEL_23;
      }

      v11 = SP;
    }

    _nc_update_screensize(v11);
LABEL_23:
    v12 = SP;
    if (*(SP + 736))
    {
      reset_prog_mode();
      _nc_mvcur_resume();
      _nc_screen_resume();
      (*(SP + 1080))();
      v12 = SP;
      *(SP + 736) = 0;
    }

    if ((*(*(v12 + 136) + 25) & 1) == 0 && *(*(v12 + 144) + 25) != 1)
    {
      sub_2994A1DC8();
      v22 = *(SP + 128);
      v23 = *(*(SP + 144) + 4);
      if (v23 + 1 < v22)
      {
        v24 = (v23 + 1);
      }

      else
      {
        v24 = v22;
      }

      if (*(SP + 952))
      {
        _nc_scroll_optimize();
      }

      v25 = sub_2994A1E94(v24);
      v26 = v25;
      if (v25 <= 0)
      {
        v30 = SP;
        v31 = *(SP + 144);
      }

      else
      {
        v27 = 0;
        v28 = 5;
        v29 = 8;
        do
        {
          if (v28 == 5)
          {
            sub_2994A1DC8();
            v28 = 0;
          }

          v30 = SP;
          v31 = *(SP + 144);
          if (*(*(v31 + 5) + v29) != -1 || *(*(*(SP + 136) + 40) + v29) != -1)
          {
            sub_2994A2214(v27);
            ++v28;
            v30 = SP;
            v31 = *(SP + 144);
          }

          if (v27 <= v31[2])
          {
            *(*(v31 + 5) + v29) = -1;
          }

          v32 = *(v30 + 136);
          if (v27 <= *(v32 + 4))
          {
            *(*(v32 + 40) + v29) = -1;
          }

          ++v27;
          v29 += 16;
        }

        while (v26 != v27);
      }

      goto LABEL_114;
    }

    if (cur_term->type.Booleans[28])
    {
      v13 = *(*(v12 + 152) + 89) << 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v12 + 128);
    v15 = *(*(v12 + 144) + 4);
    if (v15 + 1 < v14)
    {
      v16 = (v15 + 1);
    }

    else
    {
      v16 = v14;
    }

    *v70 = v13;
    *&v70[20] = 0;
    *&v70[4] = *(&xmmword_2994B0E48 + 4);
    Strings = cur_term->type.Strings;
    v18 = Strings[5];
    v19 = v18 || Strings[7] || Strings[6] != 0;
    if (*(v12 + 752) && (*(v12 + 993) & 1) == 0)
    {
      v21 = _nc_abiver(&_nc_abiver);
      v34 = *(v33 + 744);
      if (*v21 < 0x60000u || (v35 = *(v34 + 24)) == 0)
      {
        LOWORD(v35) = *(v34 + 1);
      }

      _nc_do_color(v35, 0, 0, _nc_outch);
      if (cur_term->type.Booleans[28] == 0 || !v19)
      {
        v20 = SP;
LABEL_76:
        v44 = *(v20 + 744);
        if (*v44 == v13)
        {
          if (*v21 < 0x60000u || (v45 = v44[6]) == 0 || (v46 = v13 >> 8, v45 == v46))
          {
LABEL_83:
            if (*(v20 + 128) >= 1)
            {
              v47 = 0;
              do
              {
                _nc_mvcur(*(v20 + 764), *(v20 + 768), v47, 0);
                v20 = SP;
                if (*(SP + 130) >= 1)
                {
                  v48 = 0;
                  do
                  {
                    sub_2994A52BC(v70);
                    ++v48;
                    v20 = SP;
                  }

                  while (v48 < *(SP + 130));
                }

                ++v47;
              }

              while (v47 < *(v20 + 128));
            }

LABEL_89:
            _nc_mvcur(*(v20 + 764), *(v20 + 768), 0, 0);
LABEL_104:
            v53 = SP;
            if (*(SP + 128) >= 1)
            {
              v54 = 0;
              do
              {
                if (*(v53 + 130) >= 1)
                {
                  v55 = 0;
                  v56 = 0;
                  do
                  {
                    v57 = (*(*(*(v53 + 136) + 40) + 16 * v54) + v55);
                    *v57 = *v70;
                    *(v57 + 12) = *&v70[12];
                    ++v56;
                    v53 = SP;
                    v55 += 28;
                  }

                  while (v56 < *(SP + 130));
                }

                ++v54;
              }

              while (v54 < *(v53 + 128));
            }

            v58 = sub_2994A1E94(v16);
            if (v58 >= 1)
            {
              v59 = v58;
              v60 = 0;
              do
              {
                sub_2994A2214(v60);
                v60 = (v60 + 1);
              }

              while (v59 != v60);
            }

            LODWORD(v26) = 0;
            v30 = SP;
            v31 = *(SP + 144);
            *(*(SP + 136) + 25) = 0;
            *(v31 + 25) = 0;
LABEL_114:
            if (v26 <= v31[2])
            {
              v61 = *(v31 + 5) + 16 * v26 + 10;
              v62 = v31[2] - v26 + 1;
              do
              {
                *(v61 - 2) = -1;
                v61 += 16;
                --v62;
              }

              while (v62);
            }

            v63 = *(v30 + 136);
            if (v26 <= *(v63 + 4))
            {
              v64 = *(v63 + 40) + 16 * v26 + 10;
              v65 = *(v63 + 4) - v26 + 1;
              do
              {
                *(v64 - 2) = -1;
                v64 += 16;
                --v65;
              }

              while (v65);
            }

            if ((v31[13] & 1) == 0)
            {
              v66 = v31[1];
              *(v63 + 2) = v31[1];
              v67 = *v31;
              *v63 = *v31;
              _nc_mvcur(*(v30 + 764), *(v30 + 768), v67, v66);
              v30 = SP;
            }

            if (**(v30 + 744) || *_nc_abiver(&_nc_abiver) >= 0x60000u && *(v68 + 24))
            {
              vid_puts(0, 0, 0, _nc_outch);
            }

            _nc_flush();
            *(*(SP + 136) + 16) = *(*(SP + 144) + 16);
            _nc_signal_handler(1);
            return 0;
          }
        }

        else
        {
          v46 = v13 >> 8;
        }

        vid_puts(v13, v46, 0, _nc_outch);
        v20 = SP;
        goto LABEL_83;
      }

      Strings = cur_term->type.Strings;
      v18 = Strings[5];
    }

    else if (!v19)
    {
      v21 = _nc_abiver(&_nc_abiver);
      goto LABEL_76;
    }

    if (v18)
    {
      if (**(SP + 744) == v13)
      {
        if (*_nc_abiver(&_nc_abiver) < 0x60000u)
        {
          goto LABEL_92;
        }

        v38 = *(v37 + 24);
        if (!v38)
        {
          goto LABEL_92;
        }

        v39 = v13 >> 8;
        if (v38 == v39)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v39 = v13 >> 8;
      }

      vid_puts(v13, v39, 0, _nc_outch);
      v36 = *(cur_term->type.Strings + 5);
LABEL_92:
      _nc_putp("clear_screen", v36);
      *(SP + 764) = 0;
      goto LABEL_104;
    }

    if (Strings[7])
    {
      *(SP + 764) = -1;
      _nc_mvcur(-1, -1, 0, 0);
      if (**(SP + 744) == v13)
      {
        if (*_nc_abiver(&_nc_abiver) < 0x60000u)
        {
          goto LABEL_103;
        }

        v42 = *(v41 + 24);
        if (!v42)
        {
          goto LABEL_103;
        }

        v43 = v13 >> 8;
        if (v42 == v43)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v43 = v13 >> 8;
      }

      vid_puts(v13, v43, 0, _nc_outch);
      v40 = SP;
LABEL_103:
      tputs(*(cur_term->type.Strings + 7), *(v40 + 128), _nc_outch);
      goto LABEL_104;
    }

    if (!Strings[6])
    {
      goto LABEL_104;
    }

    v49 = SP;
    *(SP + 764) = -1;
    if (**(v49 + 744) == v13)
    {
      if (*_nc_abiver(&_nc_abiver) < 0x60000u || (v51 = *(v50 + 24)) == 0 || (v52 = v13 >> 8, v51 == v52))
      {
LABEL_130:
        if (*(v20 + 128) >= 1)
        {
          v69 = 0;
          do
          {
            _nc_mvcur(*(v20 + 764), *(v20 + 768), v69, 0);
            _nc_putp("clr_eol", cur_term->type.Strings[6]);
            ++v69;
            v20 = SP;
          }

          while (v69 < *(SP + 128));
        }

        goto LABEL_89;
      }
    }

    else
    {
      v52 = v13 >> 8;
    }

    vid_puts(v13, v52, 0, _nc_outch);
    v20 = SP;
    goto LABEL_130;
  }

  return result;
}

void _nc_screen_resume()
{
  v0 = SP;
  **(SP + 744) = **(SP + 744);
  *(*(v0 + 144) + 25) = 1;
  if (*(v0 + 752) || *(v0 + 756))
  {
    _nc_reset_colors();
    v1 = SP;
    v2 = *(SP + 756);
    if (v2 < 0)
    {
      v3 = 0;
      v4 = 0;
      *(SP + 756) = -v2;
      do
      {
        v5 = *(v1 + 960) + v3;
        if (*(v5 + 12))
        {
          init_color(v4, *(v5 + 6), *(v5 + 8), *(v5 + 10));
          v1 = SP;
        }

        ++v4;
        v3 += 16;
      }

      while (v4 < *(v1 + 756));
    }
  }

  Strings = cur_term->type.Strings;
  v7 = Strings[39];
  if (v7)
  {
    v8 = "exit_attribute_mode";
LABEL_16:
    _nc_putp(v8, v7);
    goto LABEL_17;
  }

  v9 = Strings[38];
  if (v9)
  {
    _nc_putp("exit_alt_charset_mode", v9);
    Strings = cur_term->type.Strings;
  }

  v10 = Strings[43];
  if (v10)
  {
    _nc_putp("exit_standout_mode", v10);
    Strings = cur_term->type.Strings;
  }

  v7 = Strings[44];
  if (v7)
  {
    v8 = "exit_underline_mode";
    goto LABEL_16;
  }

LABEL_17:
  v11 = cur_term;
  v12 = cur_term->type.Strings;
  v13 = v12[42];
  if (v13)
  {
    _nc_putp("exit_insert_mode", v13);
    v11 = cur_term;
    v12 = cur_term->type.Strings;
  }

  v14 = v12[151];
  if (v14)
  {
    v15 = v12[152];
    if (v15)
    {
      if (v11->type.Booleans[1])
      {
        v16 = "enter_am_mode";
      }

      else
      {
        v16 = "exit_am_mode";
        v14 = v15;
      }

      _nc_putp(v16, v14);
    }
  }
}

void sub_2994A1DC8()
{
  if (!*(SP + 734))
  {
    v0 = *(SP + 44);
    if ((v0 & 0x80000000) == 0)
    {
      v1.tv_sec = 0;
      *&v1.tv_usec = 0;
      memset(&v2, 0, sizeof(v2));
      if (__darwin_check_fd_set_overflow(v0, &v2, 0))
      {
        *(v2.fds_bits + ((v0 >> 3) & 0x1FFFFFFC)) |= 1 << v0;
      }

      if (select(*(SP + 44) + 1, &v2, 0, 0, &v1))
      {
        *(SP + 734) = 5;
        _nc_flush();
      }
    }
  }
}

uint64_t sub_2994A1E94(uint64_t a1)
{
  v1 = a1;
  v2 = &SP;
  v3 = *(SP + 144);
  v4 = *(v3 + 6);
  if (v4 + 1 < *(SP + 130))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = *(SP + 130);
  }

  if (!*(cur_term->type.Strings + 7))
  {
    return v1;
  }

  v6 = (a1 - 1);
  v7 = *(*(v3 + 40) + 16 * v6) + 28 * v5;
  v8 = *(v7 - 28);
  v9 = *(v7 - 24);
  v10 = *(v7 - 20);
  v11 = *(v7 - 16);
  v12 = *(v7 - 12);
  v13 = *(v7 - 8);
  v14 = *(v7 - 4);
  if (cur_term->type.Booleans[28] || !*(SP + 752))
  {
    goto LABEL_6;
  }

  if (*(SP + 993) != 1 || *(SP + 996) != 511 || *(SP + 1000) != 511)
  {
    return v1;
  }

  if (*_nc_abiver(&_nc_abiver) >= 0x60000u && (v30 = v14, v14) || (v30 = BYTE1(v8), BYTE1(v8)))
  {
    LOWORD(v42[0]) = 0;
    v43 = 0;
    if (pair_content(v30, v42, &v43) == -1 || LOWORD(v42[0]) != 511 || v43 != 511)
    {
      return v1;
    }

    v31 = v9 == 32 && v10 == 0;
    v2 = &SP;
    if (!v31)
    {
      return v1;
    }
  }

  else
  {
LABEL_6:
    if (v9 != 32 || v10 != 0)
    {
      return v1;
    }
  }

  v16 = (v8 & 0x7FC700FF) != 0 || v1 < 1;
  if (!v16)
  {
    v17 = *v2;
    v21 = *_nc_abiver(&_nc_abiver);
    v22 = v1;
    do
    {
      if (v19 >= 1)
      {
        v23 = (*(*(*(v20 + 144) + 40) + 16 * v6) + 12);
        v24 = 1;
        do
        {
          if (*(v23 - 3) != v8 || *(v23 - 2) != v9 || *(v23 - 1) != v10 || *v23 != v11 || v23[1] != v12)
          {
            goto LABEL_61;
          }

          v25 = v23[2] == v13;
          if (v23[2] == v13 && v21 >= 0x60000)
          {
            v25 = v23[3] == v14;
          }

          if (!v25)
          {
            break;
          }

          v23 += 7;
          v16 = v24++ < v19;
        }

        while (v16);
        if (!v25)
        {
LABEL_61:
          v29 = v22;
          break;
        }

        v26 = (*(*(*(v20 + 136) + 40) + 16 * v6) + 12);
        v27 = 1;
        do
        {
          if (*(v26 - 3) != v8 || *(v26 - 2) != v9 || *(v26 - 1) != v10 || *v26 != v11 || v26[1] != v12)
          {
            v29 = v6;
            goto LABEL_42;
          }

          v28 = v26[2] == v13;
          if (v26[2] == v13 && v21 >= 0x60000)
          {
            v28 = v26[3] == v14;
          }

          if (!v28)
          {
            break;
          }

          v26 += 7;
          v16 = v27++ < v19;
        }

        while (v16);
        v29 = v6;
        if (!v28)
        {
          goto LABEL_42;
        }
      }

      v29 = v22;
LABEL_42:
      v22 = v29;
      v16 = v6-- <= 0;
    }

    while (!v16);
    if (v29 < v1)
    {
      v32 = v18;
      _nc_mvcur(*(*v18 + 764), *(*v18 + 768), v29, 0);
      v42[0] = v8;
      v42[1] = v9;
      v42[2] = v10;
      v42[3] = v11;
      v42[4] = v12;
      v42[5] = v13;
      v42[6] = v14;
      sub_2994A46CC(v42);
      v33 = *v32;
      v34 = *(*v32 + 1400);
      if (v34)
      {
        v35 = *(v33 + 1408);
        if (v35)
        {
          v36 = *(v33 + 128);
          if (v29 < v36)
          {
            v37 = (v35 + 8 * v29);
            v38 = (v34 + 8 * v29);
            v39 = v36 - v29;
            do
            {
              v40 = *v37++;
              *v38++ = v40;
              --v39;
            }

            while (v39);
          }
        }
      }
    }

    return v29;
  }

  return v1;
}

uint64_t sub_2994A2214(uint64_t result)
{
  v1 = result;
  v2 = SP;
  v3 = 16 * result;
  v4 = *(*(*(SP + 144) + 40) + v3);
  v5 = *(*(*(SP + 136) + 40) + v3);
  v6 = *(SP + 1400);
  if (v6)
  {
    v7 = *(SP + 1408);
    if (v7)
    {
      *(v6 + 8 * result) = *(v7 + 8 * result);
    }
  }

  v8 = *(v2 + 752);
  if (v8 && *(v2 + 130) >= 1)
  {
    result = _nc_abiver(&_nc_abiver);
    v10 = v4 + 6;
    v11 = (v5 + 24);
    do
    {
      v12 = *(v10 - 6);
      v13 = *(v11 - 6);
      if (v12 != v13 || *(v10 - 5) != *(v11 - 5) || *(v10 - 4) != *(v11 - 4) || *(v10 - 3) != *(v11 - 3) || *(v10 - 2) != *(v11 - 2) || *(v10 - 1) != *(v11 - 1) || *result > 0x5FFFFu && *v10 != *v11)
      {
        v14 = BYTE1(v13);
        v15 = BYTE1(v12);
        if (*result <= 0x5FFFFu)
        {
          v16 = BYTE1(v12);
        }

        else
        {
          if (*v11)
          {
            v14 = *v11;
          }

          v16 = *v10;
          if (!*v10)
          {
            v16 = BYTE1(v12);
          }
        }

        v17 = v13 & 0xFFFF00FF;
        v18 = v12 & 0xFFFF00FF;
        if (v14 != v16 && v17 == v18)
        {
          v20 = *(v2 + 988);
          v21 = v14 < v20 && v16 < v20;
          if (v21 && *(*(v2 + 976) + 4 * v14) == *(*(v2 + 976) + 4 * v16))
          {
            if (*result <= 0x5FFFFu)
            {
              *(v11 - 6) = v17;
              if (*result <= 0x5FFFFu || (v24 = *v10) == 0)
              {
                v24 = *(v10 - 6) >> 8;
              }

              v23 = v24 << 8;
            }

            else
            {
              v22 = *v10;
              if (!*v10)
              {
                v22 = v15;
              }

              *v11 = v22;
              if (v22 <= 255)
              {
                v23 = v22 << 8;
              }

              else
              {
                v23 = 65280;
              }
            }

            *(v11 - 6) = v23 | v17;
          }
        }
      }

      v10 += 7;
      v11 += 7;
      --v9;
    }

    while (v9);
  }

  v25 = &cur_term;
  Booleans = cur_term->type.Booleans;
  Strings = cur_term->type.Strings;
  if (Booleans[3] && Strings[6] && *(v2 + 130) >= 1)
  {
    result = _nc_abiver(&_nc_abiver);
    v28 = 0;
    v30 = 28 * v29;
    while (1)
    {
      v31 = v4[v28 / 4];
      if (v31 != *(v5 + v28))
      {
        break;
      }

      if (*result > 0x5FFFFu)
      {
        v32 = v4[v28 / 4 + 6];
        v33 = BYTE1(v31);
        if (!v32)
        {
          v32 = v33;
        }

        if (*(v5 + v28 + 24))
        {
          v33 = *(v5 + v28 + 24);
        }

        if (v32 != v33)
        {
          break;
        }
      }

      v28 += 28;
      if (v30 == v28)
      {
        goto LABEL_56;
      }
    }

    v83 = v25;
    v84 = v1;
    _nc_mvcur(*(v2 + 764), *(v2 + 768), v1, 0);
    *v208 = xmmword_2994B0E48;
    *&v208[12] = *(&xmmword_2994B0E48 + 12);
    if ((*v83)->type.Booleans[28])
    {
      *v208 = *(*(SP + 152) + 89) << 8;
    }

    sub_2994A489C(v208, 0);
    result = sub_2994A5A90(v5, v4, v84, 0, *(SP + 130) - 1);
    LODWORD(v46) = 0;
    goto LABEL_361;
  }

LABEL_56:
  v34 = v4 + 3;
  v35 = v4[3];
  if (!Strings[269])
  {
    goto LABEL_76;
  }

  v36 = *v4;
  v37 = v4[1];
  v38 = v4[2];
  v39 = v4[4];
  v40 = v4[5];
  v41 = v4[6];
  if (!v8 || Booleans[28])
  {
    goto LABEL_73;
  }

  if (*(v2 + 993) != 1 || *(v2 + 996) != 511 || *(v2 + 1000) != 511)
  {
    goto LABEL_76;
  }

  result = _nc_abiver(&_nc_abiver);
  v43 = *result < 0x60000u || v42 == 0;
  v44 = v42;
  if (v43)
  {
    v44 = BYTE1(v36);
    if (!BYTE1(v36))
    {
LABEL_73:
      if (v37 != 32)
      {
        goto LABEL_76;
      }

      goto LABEL_74;
    }
  }

  v45 = v1;
  *v208 = 0;
  v209 = 0;
  result = pair_content(v44, v208, &v209);
  v2 = SP;
  if (result == -1)
  {
    v1 = v45;
    v25 = &cur_term;
    goto LABEL_76;
  }

  v1 = v45;
  v25 = &cur_term;
  if (*v208 != 511 || v209 != 511 || v37 != 32)
  {
LABEL_76:
    v46 = *(v2 + 130);
    if (v46 < 1)
    {
      LODWORD(v46) = 0;
    }

    else
    {
      result = _nc_abiver(&_nc_abiver);
      v47 = 0;
      v48 = (v5 + 12);
      while (*(v34 - 3) == *(v48 - 3) && *(v34 - 2) == *(v48 - 2) && *(v34 - 1) == *(v48 - 1) && *v34 == *v48 && v34[1] == v48[1] && v34[2] == v48[2] && (*result <= 0x5FFFFu || v34[3] == v48[3]))
      {
        ++v47;
        v34 += 7;
        v48 += 7;
        if (v46 == v47)
        {
          goto LABEL_90;
        }
      }

      LODWORD(v46) = v47;
    }

    goto LABEL_90;
  }

LABEL_74:
  if (v38 || (v36 & 0x7FC700FF) != 0)
  {
    goto LABEL_76;
  }

  LODWORD(v85) = *(v2 + 130);
  if (v85 < 1)
  {
    LODWORD(v90) = 0;
LABEL_182:
    if (v90 < v85)
    {
      result = _nc_abiver(&_nc_abiver);
      v102 = 28 * v90 + 12;
      v103 = (v4 + v102);
      v104 = (v5 + v102);
      while (*(v103 - 3) == *(v104 - 3) && *(v103 - 2) == *(v104 - 2) && *(v103 - 1) == *(v104 - 1) && *v103 == *v104 && v103[1] == v104[1] && v103[2] == v104[2] && (*result <= 0x5FFFFu || v103[3] == v104[3]))
      {
        LODWORD(v90) = v90 + 1;
        v103 += 7;
        v104 += 7;
        if (v90 >= v101)
        {
          LODWORD(v46) = v101;
          goto LABEL_90;
        }
      }
    }

LABEL_194:
    LODWORD(v46) = v90;
    goto LABEL_90;
  }

  result = _nc_abiver(&_nc_abiver);
  v90 = 0;
  v91 = (v5 + 12);
  while (*(v91 - 3) == v36 && *(v91 - 2) == 32 && !*(v91 - 1) && *v91 == v35 && v91[1] == v88 && v91[2] == v89 && (*result <= 0x5FFFFu || v91[3] == v86))
  {
    ++v90;
    v91 += 7;
    if (v85 == v90)
    {
      LODWORD(v90) = v85;
      break;
    }
  }

  v46 = 0;
  v92 = 1;
  while (*(v34 - 3) == v36 && *(v34 - 2) == 32 && !*(v34 - 1) && *v34 == v35 && v34[1] == v88 && v34[2] == v89 && (*result <= 0x5FFFFu || v34[3] == v86))
  {
    v92 = ++v46 < v85;
    v34 += 7;
    if (v85 == v46)
    {
      LODWORD(v46) = v85;
      break;
    }
  }

  if (v46 == v90)
  {
    goto LABEL_182;
  }

  if (v46 >= v90)
  {
    v93 = v87[221];
    if (v93 < v46 - v90)
    {
      v94 = result;
      v200 = v88;
      v206 = v86;
      v197 = v89;
      v181 = v1;
      if (v92 || v87[220] > v93)
      {
        _nc_mvcur(v87[191], v87[192], v1, v46 - 1);
        v95 = *(SP + 744);
        v96 = v206;
        if (*v95 == v36)
        {
          if (*v94 <= 0x5FFFF)
          {
            goto LABEL_180;
          }

          v97 = v95[6];
          v98 = BYTE1(v36);
          if (!v97)
          {
            v97 = BYTE1(v36);
          }

          if (v206)
          {
            v98 = v206;
          }

          if (v97 == v98)
          {
LABEL_180:
            v99 = "clr_bol";
            v100 = 2152;
LABEL_339:
            result = _nc_putp(v99, *(cur_term->type.Strings + v100));
            if (v46 <= v90)
            {
              LODWORD(v46) = v90;
              v1 = v181;
            }

            else
            {
              v171 = v46 - v90;
              v172 = (v5 + 28 * v90 + 12);
              v1 = v181;
              do
              {
                *(v172 - 3) = v36;
                *(v172 - 2) = 32;
                *(v172 - 1) = 0;
                *v172 = v35;
                v172[1] = v200;
                v172[2] = v197;
                v172[3] = v206;
                v172 += 7;
                --v171;
              }

              while (v171);
            }

            v25 = &cur_term;
            goto LABEL_90;
          }
        }

        v109 = BYTE1(v36);
        v110 = *v94;
        v111 = "clr_bol";
        v112 = 2152;
        v113 = "clr_bol";
        if (!v206)
        {
          v96 = BYTE1(v36);
        }

        v114 = 2152;
      }

      else
      {
        _nc_mvcur(v87[191], v87[192], v1, 0);
        v161 = *(SP + 744);
        v96 = v206;
        if (*v161 == v36)
        {
          if (*v94 <= 0x5FFFF)
          {
            goto LABEL_307;
          }

          v162 = v161[6];
          v163 = BYTE1(v36);
          if (!v162)
          {
            v162 = BYTE1(v36);
          }

          if (v206)
          {
            v163 = v206;
          }

          if (v162 == v163)
          {
LABEL_307:
            v99 = "clr_eol";
            v100 = 48;
            goto LABEL_339;
          }
        }

        v109 = BYTE1(v36);
        v110 = *v94;
        v111 = "clr_eol";
        v112 = 48;
        v113 = "clr_eol";
        if (!v206)
        {
          v96 = BYTE1(v36);
        }

        v114 = 48;
      }

      if (v110 <= 0x5FFFF)
      {
        v100 = v112;
      }

      else
      {
        v109 = v96;
        v100 = v114;
      }

      if (v110 > 0x5FFFF)
      {
        v170 = v113;
      }

      else
      {
        v170 = v111;
      }

      v196 = v170;
      vid_puts(v36, v109, 0, _nc_outch);
      LODWORD(v99) = v196;
      goto LABEL_339;
    }

    goto LABEL_194;
  }

LABEL_90:
  v49 = SP;
  if (v46 >= *(SP + 130))
  {
    return result;
  }

  v50 = &v4[7 * *(SP + 130)];
  v52 = *(v50 - 7);
  v51 = *(v50 - 6);
  v54 = *(v50 - 5);
  v53 = *(v50 - 4);
  v55 = *(v50 - 3);
  v56 = *(v50 - 2);
  v57 = *(v50 - 1);
  if ((*v25)->type.Booleans[28] || !*(SP + 752))
  {
    goto LABEL_92;
  }

  if (*(SP + 993) != 1 || *(SP + 996) != 511 || *(SP + 1000) != 511)
  {
    goto LABEL_128;
  }

  result = _nc_abiver(&_nc_abiver);
  v69 = *result < 0x60000u || v57 == 0;
  v70 = v57;
  if (v69)
  {
    v70 = BYTE1(v52);
    if (!BYTE1(v52))
    {
LABEL_92:
      if (v51 != 32 || v54 != 0)
      {
        goto LABEL_128;
      }

LABEL_97:
      if ((v52 & 0x7FC700FF) != 0)
      {
        goto LABEL_128;
      }

      v59 = *(v49 + 130);
      v60 = v59 - 1;
      v204 = v55;
      if (v59 - 1 <= v46)
      {
        v65 = *(v49 + 130);
        v63 = v59 - 1;
      }

      else
      {
        v61 = _nc_abiver(&_nc_abiver);
        v63 = v59 - 1;
        v64 = v46 + 1;
        v65 = v59;
        v60 = v59 - 1;
        if (*(v5 + 28 * (v59 - 1)) == v52)
        {
          v66 = v59 - 2;
          v67 = (v5 + 28 * v59 - 24);
          v65 = v59;
          while (1)
          {
            v60 = v65 - 1;
            if (*v67 != v51 || v67[1] != v54 || v67[2] != v53 || v67[3] != v62 || v67[4] != v56 || *v61 > 0x5FFFFu && v67[5] != v57)
            {
              break;
            }

            if (v66 <= v46)
            {
              v65 = v46 + 1;
              v60 = v46;
              break;
            }

            v68 = *(v67 - 8);
            --v66;
            v67 -= 7;
            --v65;
            if (v68 != v52)
            {
              v65 = v60--;
              break;
            }
          }
        }

        if (v4[7 * v63] == v52)
        {
          v115 = v59 - 2;
          v116 = &v4[7 * v59 - 6];
          while (1)
          {
            v63 = v59 - 1;
            if (*v116 != v51 || v116[1] != v54 || v116[2] != v53 || v116[3] != v62 || v116[4] != v56 || *v61 > 0x5FFFFu && v116[5] != v57)
            {
              break;
            }

            if (v115 <= v46)
            {
              v63 = v46;
              goto LABEL_216;
            }

            v117 = *(v116 - 8);
            --v115;
            v116 -= 7;
            --v59;
            if (v117 != v52)
            {
              v59 = v63--;
              break;
            }
          }
        }
      }

      v64 = v59;
      if (v63 == v46)
      {
LABEL_216:
        v59 = v64;
        if (*(v49 + 880) < v65 - v64)
        {
          v118 = v53;
          _nc_mvcur(*(v49 + 764), *(v49 + 768), v1, v46);
          v119 = &v4[7 * v46];
          if (*v119 != v52 || v119[1] != v51 || v119[2] != v54 || v119[3] != v118 || v119[4] != v204 || v119[5] != v56 || *_nc_abiver(&_nc_abiver) > 0x5FFFFu && v119[6] != v57)
          {
            sub_2994A52BC(v119);
          }

          *v208 = v52;
          *&v208[4] = v51;
          *&v208[8] = v54;
          *&v208[12] = v118;
          *&v208[16] = v204;
          *&v208[20] = v56;
          *&v208[24] = v57;
          result = sub_2994A489C(v208, 0);
          goto LABEL_361;
        }
      }

      v120 = v65 - v59;
      v198 = v56;
      v190 = v59;
      if (v65 == v59)
      {
        result = _nc_abiver(&_nc_abiver);
        v126 = v124;
        v127 = v125;
LABEL_229:
        v183 = result;
        v128 = *result;
        v129 = &v4[7 * v126];
        v130 = (v5 + 28 * v127);
        while (1)
        {
          v131 = v127;
          if (*v129 != *v130 || v129[1] != v130[1] || v129[2] != v130[2] || v129[3] != v130[3] || v129[4] != v130[4] || v129[5] != v130[5] || v128 > 0x5FFFF && v129[6] != v130[6])
          {
            break;
          }

          if ((*v129 & 0xFEu) - 2 <= 0x1D && (*(v129 - 7) != *(v130 - 7) || *(v129 - 6) != *(v130 - 6) || *(v129 - 5) != *(v130 - 5) || *(v129 - 4) != *(v130 - 4) || *(v129 - 3) != *(v130 - 3) || *(v129 - 2) != *(v130 - 2) || v128 > 0x5FFFF && *(v129 - 1) != *(v130 - 1)))
          {
            break;
          }

          v132 = v126 - 1;
          --v127;
          if (v126)
          {
            v129 -= 7;
            v130 -= 7;
            --v126;
            if (v131)
            {
              continue;
            }
          }

          goto LABEL_262;
        }

        v132 = v126;
LABEL_262:
        v185 = v52;
        if (v127 >= v132)
        {
          v138 = v132;
        }

        else
        {
          v138 = v127;
        }

        if (v138 >= v46)
        {
          v202 = v122;
          v188 = v57;
          v139 = v123;
          v192 = v125;
          v194 = v124;
          _nc_mvcur(*(SP + 764), *(SP + 768), v123, v46);
          result = sub_2994A5A90(v5, v4, v139, v46, v138);
          v125 = v192;
          v124 = v194;
          v122 = v202;
          v121 = &cur_term;
          v123 = v139;
          v57 = v188;
        }

        if (v127 < v132)
        {
          if (v124 <= v125)
          {
            v140 = v125;
          }

          else
          {
            v140 = v124;
          }

          v207 = v140;
          if (v138)
          {
            v141 = LOBYTE(v4[7 * v138 + 7]);
            if (v141 < 2)
            {
LABEL_278:
              LODWORD(v142) = v138;
            }

            else
            {
              v142 = v127;
              v143 = &v4[7 * v127];
              while (1)
              {
                LODWORD(v127) = v142;
                if (!v142 || v141 > 0x1F)
                {
                  break;
                }

                --v142;
                --v138;
                v144 = *v143;
                v143 -= 7;
                v141 = v144;
                if (v144 <= 1)
                {
                  LODWORD(v127) = v142;
                  goto LABEL_278;
                }
              }
            }
          }

          else if (v46 <= 0 && *v4 == 1)
          {
            v150 = v4 + 7;
            LODWORD(v142) = -1;
            do
            {
              v151 = *v150;
              v150 += 7;
              LODWORD(v142) = v142 + 1;
            }

            while ((v151 & 0xFEu) - 2 < 0x1E);
            LODWORD(v127) = v127 + v142;
          }

          else
          {
            LODWORD(v142) = 0;
          }

          v152 = v121;
          v153 = v123;
          v154 = v124;
          _nc_mvcur(*(SP + 764), *(SP + 768), v123, v142 + 1);
          v155 = v207;
          if (v154 > v132)
          {
            goto LABEL_348;
          }

          v156 = (*v152)->type.Strings;
          if (v156[108])
          {
            v157 = *(SP + 900);
          }

          else
          {
            if (v156[31] && v156[42])
            {
              v159 = *(SP + 936);
              v160 = *(SP + 928) - v127 + *(SP + 932);
            }

            else
            {
              if (!v156[52])
              {
                v157 = 1000000;
                goto LABEL_347;
              }

              v159 = *(SP + 936) + *(SP + 892);
              v160 = -v127;
            }

            v157 = v160 + v159 * v132;
          }

LABEL_347:
          if (v157 > v207 - v142)
          {
LABEL_348:
            v173 = v5;
            v174 = v4;
            v175 = v153;
            v176 = v142 + 1;
LABEL_360:
            result = sub_2994A5A90(v173, v174, v175, v176, v155);
            goto LABEL_361;
          }

          result = sub_2994A5918(&v4[7 * v142 + 7], (v132 - v127));
LABEL_361:
          v178 = *(SP + 130);
          v179 = __OFSUB__(v178, v46);
          v180 = v178 - v46;
          if ((v180 < 0) ^ v179 | (v180 == 0))
          {
            return result;
          }

          v106 = (v5 + 28 * v46);
          v107 = &v4[7 * v46];
          v108 = 28 * v180;
          return memcpy(v106, v107, v108);
        }

        if (v127 <= v132)
        {
          goto LABEL_361;
        }

        v195 = v124;
        v203 = v122;
        v189 = v57;
        v182 = v123;
        _nc_mvcur(*(SP + 764), *(SP + 768), v123, v138 + 1);
        v145 = cur_term->type.Strings;
        if (v145[105])
        {
          v146 = SP;
          v147 = *(SP + 896);
          v148 = v182;
          v149 = v195;
        }

        else
        {
          v158 = v145[21];
          v146 = SP;
          v149 = v195;
          if (v158)
          {
            v147 = *(SP + 888) * v127 - v132;
          }

          else
          {
            v147 = 1000000;
          }

          v148 = v182;
        }

        if (v147 > v149 + ~v138 + *(v146 + 880))
        {
          if (sub_2994A5A90(v5, v4, v148, v138 + 1, v149))
          {
            _nc_mvcur(*(SP + 764), *(SP + 768), v148, v190);
          }

          *v208 = v185;
          *&v208[4] = v51;
          *&v208[8] = v54;
          *&v208[12] = v203;
          *&v208[16] = v204;
          *&v208[20] = v198;
          *&v208[24] = v189;
LABEL_355:
          result = sub_2994A489C(v208, 0);
          goto LABEL_361;
        }

        v164 = *(v146 + 744);
        v165 = *v183;
        if (*v164 == v185)
        {
          v166 = v189;
          if (v165 <= 0x5FFFF)
          {
            goto LABEL_328;
          }

          v167 = v164[6];
          v168 = BYTE1(v185);
          if (!v167)
          {
            v167 = BYTE1(v185);
          }

          if (v189)
          {
            v168 = v189;
          }

          if (v167 == v168)
          {
            goto LABEL_328;
          }
        }

        else
        {
          v166 = v189;
          if (v165 <= 0x5FFFF)
          {
            v169 = BYTE1(v185);
LABEL_327:
            vid_puts(v185, v169, 0, _nc_outch);
LABEL_328:
            result = sub_2994A5CB0((v127 - v132));
            goto LABEL_361;
          }
        }

        v169 = BYTE1(v185);
        if (v166)
        {
          v169 = v166;
        }

        goto LABEL_327;
      }

      v133 = &v4[7 * v63];
      v134 = (v5 + 28 * v60);
      v201 = v53;
      v191 = v60;
      v193 = v63;
      if (*v133 == *v134 && v133[1] == v134[1] && v133[2] == v134[2] && v133[3] == v134[3] && v133[4] == v134[4] && v133[5] == v134[5])
      {
        v184 = _nc_abiver(&_nc_abiver);
        if ((*v184 <= 0x5FFFFu || *(v135 + 24) == *(v136 + 24)) && *(v49 + 1044) == 1)
        {
          v187 = v57;
          v137 = v1;
          if (has_ic())
          {
            v125 = v191;
            v124 = v193;
            v126 = v193;
            v127 = v191;
            v123 = v137;
            v121 = &cur_term;
            v57 = v187;
            v122 = v201;
            result = v184;
            goto LABEL_229;
          }

          v49 = SP;
          v1 = v137;
          v57 = v187;
        }
      }

      v177 = v1;
      _nc_mvcur(*(v49 + 764), *(v49 + 768), v1, v46);
      if (v120 <= *(SP + 880))
      {
        if (v193 <= v191)
        {
          v155 = v191;
        }

        else
        {
          v155 = v193;
        }

        v173 = v5;
        v174 = v4;
        v175 = v177;
        v176 = v46;
        goto LABEL_360;
      }

      if (sub_2994A5A90(v5, v4, v177, v46, v193))
      {
        _nc_mvcur(*(SP + 764), *(SP + 768), v177, v190);
      }

      *v208 = v52;
      *&v208[4] = v51;
      *&v208[8] = v54;
      *&v208[12] = v201;
      *&v208[16] = v204;
      *&v208[20] = v198;
      *&v208[24] = v57;
      goto LABEL_355;
    }
  }

  v199 = v53;
  v205 = v55;
  v186 = v57;
  v71 = v1;
  *v208 = 0;
  v209 = 0;
  result = pair_content(v70, v208, &v209);
  v49 = SP;
  if (result == -1 || *v208 != 511)
  {
    v1 = v71;
    goto LABEL_128;
  }

  v1 = v71;
  if (v209 == 511)
  {
    v72 = v51 == 32 && v54 == 0;
    v57 = v186;
    v53 = v199;
    v55 = v205;
    if (v72)
    {
      goto LABEL_97;
    }
  }

LABEL_128:
  v73 = *(v49 + 130);
  LODWORD(v74) = v73 - 1;
  if (v73 - 1 > v46)
  {
    result = _nc_abiver(&_nc_abiver);
    v74 = v73 - 1;
    if (v4[7 * v74] == *(v5 + 28 * v74))
    {
      v75 = *result;
      v76 = v73 - 2;
      v77 = 28 * v73 - 24;
      v78 = (v5 + v77);
      v79 = (v4 + v77);
      v80 = (v4 + v77);
      while (1)
      {
        LODWORD(v74) = v73 - 1;
        v81 = *v80;
        v80 -= 7;
        result = *v78;
        if (v81 != result)
        {
          break;
        }

        result = v78[1];
        if (v79[1] != result)
        {
          break;
        }

        result = v78[2];
        if (v79[2] != result)
        {
          break;
        }

        result = v78[3];
        if (v79[3] != result)
        {
          break;
        }

        result = v78[4];
        if (v79[4] != result)
        {
          break;
        }

        if (v75 > 0x5FFFF)
        {
          result = v78[5];
          if (v79[5] != result)
          {
            break;
          }
        }

        if (v76 <= v46)
        {
          v73 = v46 + 1;
          LODWORD(v74) = v46;
          break;
        }

        v82 = *(v79 - 8);
        --v76;
        result = *(v78 - 8);
        v78 -= 7;
        v79 = v80;
        --v73;
        if (v82 != result)
        {
          v73 = v74;
          LODWORD(v74) = v74 - 1;
          break;
        }
      }
    }
  }

  if (v73 > v46)
  {
    v105 = v1;
    _nc_mvcur(*(v49 + 764), *(v49 + 768), v1, v46);
    sub_2994A5A90(v5, v4, v105, v46, v74);
    v106 = (v5 + 28 * v46);
    v107 = &v4[7 * v46];
    v108 = 28 * (v74 - v46 + 1);
    return memcpy(v106, v107, v108);
  }

  return result;
}

uint64_t _nc_scrolln(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!SP || !*(SP + 48) || (*(SP + 41) & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (cur_term->type.Booleans[28])
  {
    v9 = *(*(SP + 152) + 89) << 8;
  }

  else
  {
    v9 = 0;
  }

  v44 = 0;
  v43 = *(&xmmword_2994B0E48 + 4);
  if (a1 < 1)
  {
    v13 = -a1;
    v40 = v9;
    v42 = 0;
    v41 = *(&xmmword_2994B0E48 + 4);
    if (sub_2994A4AE0(-a1, a2, a3, 0, a4, &v40) != -1)
    {
      goto LABEL_19;
    }

    Strings = cur_term->type.Strings;
    v22 = Strings[3];
    if (v22)
    {
      if (a2 && ((v23 = *(SP + 764), v23 != a2) ? (v24 = v23 == a2 - 1) : (v24 = 1), v24 && (v25 = Strings[128]) != 0 && Strings[126]))
      {
        _nc_putp("save_cursor", v25);
        v26 = _nc_tiparm(2, *(cur_term->type.Strings + 3), a2, a3);
        _nc_putp("change_scroll_region", v26);
        _nc_putp("restore_cursor", cur_term->type.Strings[126]);
      }

      else
      {
        v36 = _nc_tiparm(2, v22, a2, a3);
        _nc_putp("change_scroll_region", v36);
        *(SP + 764) = -1;
      }

      v40 = v9;
      v42 = 0;
      v41 = *(&xmmword_2994B0E48 + 4);
      v37 = sub_2994A4AE0(-a1, a2, a3, a2, a3, &v40);
      v38 = _nc_tiparm(2, *(cur_term->type.Strings + 3), 0, a4);
      _nc_putp("change_scroll_region", v38);
      v39 = SP;
      *(SP + 764) = -1;
      if (v37 != -1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v39 = SP;
    }

    if (*(v39 + 1043) != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v40 = v9;
    v42 = 0;
    v41 = *(&xmmword_2994B0E48 + 4);
    result = sub_2994A43C0(-a1, a1 + a3 + 1, a2, &v40);
    if (result == -1)
    {
      return result;
    }

LABEL_19:
    Booleans = cur_term->type.Booleans;
    if (Booleans[26])
    {
      if (v13 < 1)
      {
LABEL_55:
        v35 = *(SP + 136);
        v40 = v9;
        v41 = v43;
        v42 = v44;
        _nc_scroll_window(v35, a1, a2, a3, &v40);
        _nc_scroll_oldhash(a1, a2, a3);
        return 0;
      }
    }

    else
    {
      if (a2)
      {
        goto LABEL_55;
      }

      if (!Booleans[11] || v13 <= 0)
      {
        goto LABEL_55;
      }
    }

    v32 = a2;
    v33 = a1;
    do
    {
      _nc_mvcur(*(SP + 764), *(SP + 768), v32, 0);
      sub_2994A489C(&xmmword_2994B0E48, 0);
      ++v32;
    }

    while (!__CFADD__(v33++, 1));
    goto LABEL_55;
  }

  v40 = v9;
  v42 = 0;
  v41 = *(&xmmword_2994B0E48 + 4);
  if (sub_2994A3D04(a1, a2, a3, 0, a4, &v40) != -1)
  {
LABEL_10:
    v10 = cur_term->type.Booleans;
    if (v10[26] || a3 == a4 && v10[12])
    {
      v11 = a3;
      v12 = a1;
      if (a3 == a4 && (v11 = a3, v12 = a1, *(cur_term->type.Strings + 7)))
      {
        _nc_mvcur(*(SP + 764), *(SP + 768), a3 - a1 + 1, 0);
        sub_2994A46CC(&xmmword_2994B0E48);
      }

      else
      {
        do
        {
          _nc_mvcur(*(SP + 764), *(SP + 768), v11, 0);
          sub_2994A489C(&xmmword_2994B0E48, 0);
          --v11;
          --v12;
        }

        while (v12);
      }
    }

    goto LABEL_55;
  }

  v15 = cur_term->type.Strings;
  v16 = v15[3];
  if (v16)
  {
    if ((a1 == 1 && v15[129] || v15[109]) && ((v17 = *(SP + 764), v17 != a3) ? (v18 = v17 == a3 - 1) : (v18 = 1), v18 && (v19 = v15[128]) != 0 && v15[126]))
    {
      _nc_putp("save_cursor", v19);
      v20 = _nc_tiparm(2, *(cur_term->type.Strings + 3), a2, a3);
      _nc_putp("change_scroll_region", v20);
      _nc_putp("restore_cursor", cur_term->type.Strings[126]);
    }

    else
    {
      v27 = _nc_tiparm(2, v16, a2, a3);
      _nc_putp("change_scroll_region", v27);
      *(SP + 764) = -1;
    }

    v40 = v9;
    v42 = 0;
    v41 = *(&xmmword_2994B0E48 + 4);
    v28 = sub_2994A3D04(a1, a2, a3, a2, a3, &v40);
    v29 = _nc_tiparm(2, *(cur_term->type.Strings + 3), 0, a4);
    _nc_putp("change_scroll_region", v29);
    v30 = SP;
    *(SP + 764) = -1;
    if (v28 != -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v30 = SP;
  }

  if (*(v30 + 1043) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v40 = v9;
  v42 = 0;
  v41 = *(&xmmword_2994B0E48 + 4);
  result = sub_2994A43C0(a1, a2, a3 - a1 + 1, &v40);
  if (result != -1)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2994A3D04(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int *a6)
{
  Strings = cur_term->type.Strings;
  if (a1 == 1)
  {
    if (a3 == a5 && a2 == a4 && Strings[129])
    {
      _nc_mvcur(*(SP + 764), *(SP + 768), a3, 0);
      v10 = **(SP + 744);
      v11 = *a6;
      v12 = _nc_abiver(&_nc_abiver);
      if (v15 != v13)
      {
        goto LABEL_12;
      }

      if (*v12 > 0x5FFFFu)
      {
        v16 = *(v14 + 24);
        v17 = BYTE1(v15);
        if (!v16)
        {
          v16 = v17;
        }

        if (a6[6])
        {
          v17 = a6[6];
        }

        if (v16 != v17)
        {
LABEL_12:
          if (*v12 <= 0x5FFFFu)
          {
            LOWORD(v18) = BYTE1(v13);
          }

          else
          {
            v18 = a6[6];
            if (!v18)
            {
              LOWORD(v18) = BYTE1(v13);
            }
          }

          vid_puts(v13, v18, 0, _nc_outch);
        }
      }

      v56 = *(cur_term->type.Strings + 129);
      v57 = "scroll_forward";
LABEL_90:
      _nc_putp(v57, v56);
      goto LABEL_91;
    }

    if (a3 == a5 && Strings[22])
    {
      _nc_mvcur(*(SP + 764), *(SP + 768), a2, 0);
      v19 = **(SP + 744);
      v20 = *a6;
      v21 = _nc_abiver(&_nc_abiver);
      if (v24 != v22)
      {
        goto LABEL_24;
      }

      if (*v21 > 0x5FFFFu)
      {
        v25 = *(v23 + 24);
        v26 = BYTE1(v24);
        if (!v25)
        {
          v25 = v26;
        }

        if (a6[6])
        {
          v26 = a6[6];
        }

        if (v25 != v26)
        {
LABEL_24:
          if (*v21 <= 0x5FFFFu)
          {
            LOWORD(v27) = BYTE1(v22);
          }

          else
          {
            v27 = a6[6];
            if (!v27)
            {
              LOWORD(v27) = BYTE1(v22);
            }
          }

          vid_puts(v22, v27, 0, _nc_outch);
        }
      }

      v56 = *(cur_term->type.Strings + 22);
      v57 = "delete_line";
      goto LABEL_90;
    }
  }

  if (a3 == a5 && a2 == a4 && Strings[109])
  {
    _nc_mvcur(*(SP + 764), *(SP + 768), a3, 0);
    v28 = **(SP + 744);
    v29 = *a6;
    v30 = _nc_abiver(&_nc_abiver);
    if (v33 != v31)
    {
      goto LABEL_37;
    }

    if (*v30 > 0x5FFFFu)
    {
      v34 = *(v32 + 24);
      v35 = BYTE1(v33);
      if (!v34)
      {
        v34 = v35;
      }

      if (a6[6])
      {
        v35 = a6[6];
      }

      if (v34 != v35)
      {
LABEL_37:
        if (*v30 <= 0x5FFFFu)
        {
          LOWORD(v36) = BYTE1(v31);
        }

        else
        {
          v36 = a6[6];
          if (!v36)
          {
            LOWORD(v36) = BYTE1(v31);
          }
        }

        vid_puts(v31, v36, 0, _nc_outch);
      }
    }

    v55 = _nc_tiparm(1, *(cur_term->type.Strings + 109), a1);
LABEL_86:
    tputs(v55, a1, _nc_outch);
    goto LABEL_91;
  }

  if (a3 == a5 && Strings[106])
  {
    _nc_mvcur(*(SP + 764), *(SP + 768), a2, 0);
    v37 = **(SP + 744);
    v38 = *a6;
    v39 = _nc_abiver(&_nc_abiver);
    if (v42 != v40)
    {
      goto LABEL_49;
    }

    if (*v39 > 0x5FFFFu)
    {
      v43 = *(v41 + 24);
      v44 = BYTE1(v42);
      if (!v43)
      {
        v43 = v44;
      }

      if (a6[6])
      {
        v44 = a6[6];
      }

      if (v43 != v44)
      {
LABEL_49:
        if (*v39 <= 0x5FFFFu)
        {
          LOWORD(v45) = BYTE1(v40);
        }

        else
        {
          v45 = a6[6];
          if (!v45)
          {
            LOWORD(v45) = BYTE1(v40);
          }
        }

        vid_puts(v40, v45, 0, _nc_outch);
      }
    }

    v55 = _nc_tiparm(1, *(cur_term->type.Strings + 106), a1);
    goto LABEL_86;
  }

  if (a3 == a5 && a2 == a4 && Strings[129])
  {
    _nc_mvcur(*(SP + 764), *(SP + 768), a3, 0);
    v46 = **(SP + 744);
    v47 = *a6;
    v48 = _nc_abiver(&_nc_abiver);
    if (v51 != v49)
    {
      goto LABEL_62;
    }

    if (*v48 > 0x5FFFFu)
    {
      v52 = *(v50 + 24);
      v53 = BYTE1(v51);
      if (!v52)
      {
        v52 = v53;
      }

      if (a6[6])
      {
        v53 = a6[6];
      }

      if (v52 != v53)
      {
LABEL_62:
        if (*v48 <= 0x5FFFFu)
        {
          LOWORD(v54) = BYTE1(v49);
        }

        else
        {
          v54 = a6[6];
          if (!v54)
          {
            LOWORD(v54) = BYTE1(v49);
          }
        }

        vid_puts(v49, v54, 0, _nc_outch);
      }
    }

    if (a1 >= 1)
    {
      v72 = a1;
      do
      {
        _nc_putp("scroll_forward", cur_term->type.Strings[129]);
        --v72;
      }

      while (v72);
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
    if (a3 != a5 || !Strings[22])
    {
      return result;
    }

    _nc_mvcur(*(SP + 764), *(SP + 768), a2, 0);
    v59 = **(SP + 744);
    v60 = *a6;
    v61 = _nc_abiver(&_nc_abiver);
    if (v64 != v62)
    {
      goto LABEL_80;
    }

    if (*v61 > 0x5FFFFu)
    {
      v65 = *(v63 + 24);
      v66 = BYTE1(v64);
      if (!v65)
      {
        v65 = v66;
      }

      if (a6[6])
      {
        v66 = a6[6];
      }

      if (v65 != v66)
      {
LABEL_80:
        if (*v61 <= 0x5FFFFu)
        {
          LOWORD(v67) = BYTE1(v62);
        }

        else
        {
          v67 = a6[6];
          if (!v67)
          {
            LOWORD(v67) = BYTE1(v62);
          }
        }

        vid_puts(v62, v67, 0, _nc_outch);
      }
    }

    if (a1 >= 1)
    {
      v73 = a1;
      do
      {
        _nc_putp("delete_line", cur_term->type.Strings[22]);
        --v73;
      }

      while (v73);
    }
  }

LABEL_91:
  v68 = SP;
  if (*(SP + 752) && (*(SP + 993) & 1) == 0 && !cur_term->type.Booleans[28] && a1 >= 1)
  {
    v70 = 0;
    do
    {
      _nc_mvcur(*(v68 + 764), *(v68 + 768), a3 - v70, 0);
      v68 = SP;
      if (*(SP + 130) >= 1)
      {
        v71 = 0;
        do
        {
          sub_2994A52BC(a6);
          ++v71;
          v68 = SP;
        }

        while (v71 < *(SP + 130));
      }

      ++v70;
    }

    while (v70 != a1);
  }

  return 0;
}

uint64_t sub_2994A43C0(uint64_t a1, int a2, int a3, int *a4)
{
  Strings = cur_term->type.Strings;
  if (!Strings[106] && !Strings[22] || !Strings[110] && !Strings[53])
  {
    return 0xFFFFFFFFLL;
  }

  _nc_mvcur(*(SP + 764), *(SP + 768), a2, 0);
  v8 = **(SP + 744);
  v9 = *a4;
  v10 = _nc_abiver(&_nc_abiver);
  v14 = v10;
  if (v13 != v11)
  {
    goto LABEL_12;
  }

  if (*v10 > 0x5FFFFu)
  {
    v15 = *(v12 + 24);
    v16 = BYTE1(v13);
    if (!v15)
    {
      v15 = v16;
    }

    if (a4[6])
    {
      v16 = a4[6];
    }

    if (v15 != v16)
    {
LABEL_12:
      if (*v10 <= 0x5FFFFu)
      {
        LOWORD(v17) = BYTE1(v11);
      }

      else
      {
        v17 = a4[6];
        if (!v17)
        {
          LOWORD(v17) = BYTE1(v11);
        }
      }

      vid_puts(v11, v17, 0, _nc_outch);
    }
  }

  v19 = cur_term->type.Strings;
  if (a1 != 1)
  {
    v21 = v19[106];
    if (v21)
    {
LABEL_25:
      v23 = _nc_tiparm(1, v21, a1);
      tputs(v23, a1, _nc_outch);
      goto LABEL_27;
    }

    v22 = a1;
    if (a1 < 1)
    {
      goto LABEL_27;
    }

    do
    {
LABEL_26:
      _nc_putp("delete_line", cur_term->type.Strings[22]);
      --v22;
    }

    while (v22);
    goto LABEL_27;
  }

  v20 = v19[22];
  if (!v20)
  {
    v21 = v19[106];
    v22 = 1;
    if (v21)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  _nc_putp("delete_line", v20);
LABEL_27:
  _nc_mvcur(*(SP + 764), *(SP + 768), a3, 0);
  v24 = *(SP + 744);
  v25 = *v24;
  v26 = *a4;
  if (*v24 != *a4)
  {
    goto LABEL_34;
  }

  if (*v14 > 0x5FFFFu)
  {
    v27 = v24[6];
    v28 = BYTE1(v25);
    if (!v27)
    {
      v27 = v28;
    }

    if (a4[6])
    {
      v28 = a4[6];
    }

    if (v27 != v28)
    {
LABEL_34:
      if (*v14 <= 0x5FFFFu)
      {
        LOWORD(v29) = BYTE1(v26);
      }

      else
      {
        v29 = a4[6];
        if (!v29)
        {
          LOWORD(v29) = BYTE1(v26);
        }
      }

      vid_puts(v26, v29, 0, _nc_outch);
    }
  }

  v30 = cur_term->type.Strings;
  if (a1 != 1)
  {
    v32 = v30[110];
    if (v32)
    {
LABEL_46:
      v33 = _nc_tiparm(1, v32, a1);
      tputs(v33, a1, _nc_outch);
      return 0;
    }

    if (a1 < 1)
    {
      return 0;
    }

    do
    {
LABEL_47:
      _nc_putp("insert_line", cur_term->type.Strings[53]);
      LODWORD(a1) = a1 - 1;
    }

    while (a1);
    return 0;
  }

  v31 = v30[53];
  if (!v31)
  {
    v32 = v30[110];
    if (v32)
    {
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  _nc_putp("insert_line", v31);
  return 0;
}

uint64_t sub_2994A46CC(unsigned int *a1)
{
  v2 = *(SP + 764) & ~(*(SP + 764) >> 31);
  v3 = *(SP + 768) & ~(*(SP + 768) >> 31);
  v4 = **(SP + 744);
  v5 = *a1;
  v6 = _nc_abiver(&_nc_abiver);
  if (v11 != v7)
  {
    goto LABEL_8;
  }

  if (*v6 > v9)
  {
    v12 = *(v10 + 24);
    v13 = BYTE1(v11);
    if (!v12)
    {
      v12 = v13;
    }

    if (a1[6])
    {
      v13 = a1[6];
    }

    if (v12 != v13)
    {
LABEL_8:
      if (*v6 <= v9)
      {
        LOWORD(v14) = BYTE1(v7);
      }

      else
      {
        v14 = a1[6];
        if (!v14)
        {
          LOWORD(v14) = BYTE1(v7);
        }
      }

      vid_puts(v7, v14, 0, _nc_outch);
      v8 = SP;
    }
  }

  result = tputs(*(cur_term->type.Strings + 7), *(v8 + 128) - v2, _nc_outch);
  v16 = SP;
  if (v3 < *(SP + 130))
  {
    v17 = 28 * v3;
    do
    {
      v18 = (*(*(*(v16 + 136) + 40) + 16 * v2) + v17);
      v19 = *a1;
      *(v18 + 12) = *(a1 + 3);
      *v18 = v19;
      v16 = SP;
      v17 += 28;
      ++v3;
    }

    while (v3 < *(SP + 130));
  }

  for (i = (v2 + 1); i < *(v16 + 128); ++i)
  {
    if (*(v16 + 130) >= 1)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = (*(*(*(v16 + 136) + 40) + 16 * i) + v21);
        v24 = *a1;
        *(v23 + 12) = *(a1 + 3);
        *v23 = v24;
        ++v22;
        v16 = SP;
        v21 += 28;
      }

      while (v22 < *(SP + 130));
    }
  }

  return result;
}

unsigned int *sub_2994A489C(unsigned int *result, int a2)
{
  v2 = result;
  v3 = SP;
  if (*(SP + 136) && (*(SP + 764) & 0x80000000) == 0 && *(SP + 768) < *(SP + 130))
  {
    result = _nc_abiver(&_nc_abiver);
    do
    {
      if ((v4 & 0x80000000) == 0)
      {
        v5 = *(*(*(v3 + 136) + 40) + 16 * *(v3 + 764)) + 28 * v4;
        if (*v5 != *v2 || *(v5 + 4) != v2[1] || *(v5 + 8) != v2[2] || *(v5 + 12) != v2[3] || *(v5 + 16) != v2[4] || *(v5 + 20) != v2[5] || *result >= 0x60000 && *(v5 + 24) != v2[6])
        {
          v6 = *v2;
          *(v5 + 12) = *(v2 + 3);
          *v5 = v6;
          v3 = SP;
          a2 = 1;
        }
      }

      ++v4;
    }

    while (v4 < *(v3 + 130));
  }

  if (a2)
  {
    v7 = **(v3 + 744);
    v8 = *v2;
    result = _nc_abiver(&_nc_abiver);
    if (v13 != v9)
    {
      goto LABEL_24;
    }

    if (*result > v11)
    {
      v14 = *(v12 + 24);
      v15 = BYTE1(v13);
      if (!v14)
      {
        v14 = v15;
      }

      if (v2[6])
      {
        v15 = v2[6];
      }

      if (v14 != v15)
      {
LABEL_24:
        if (*result <= v11)
        {
          LOWORD(v16) = BYTE1(v9);
        }

        else
        {
          v16 = v2[6];
          if (!v16)
          {
            LOWORD(v16) = BYTE1(v9);
          }
        }

        result = vid_puts(v9, v16, 0, _nc_outch);
        v10 = SP;
      }
    }

    v17 = *(cur_term->type.Strings + 6);
    if (v17)
    {
      v18 = *(v10 + 130) - *(v10 + 768);
      if (*(v10 + 880) <= v18)
      {

        return _nc_putp("clr_eol", v17);
      }
    }

    else
    {
      v18 = *(v10 + 130) - *(v10 + 768);
    }

    if (v18 >= 1)
    {
      v19 = v18 + 1;
      do
      {
        result = sub_2994A52BC(v2);
        --v19;
      }

      while (v19 > 1);
    }
  }

  return result;
}

uint64_t sub_2994A4AE0(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int *a6)
{
  Strings = cur_term->type.Strings;
  if (a1 == 1)
  {
    if (a3 == a5 && a2 == a4 && Strings[130])
    {
      _nc_mvcur(*(SP + 764), *(SP + 768), a2, 0);
      v10 = **(SP + 744);
      v11 = *a6;
      v12 = _nc_abiver(&_nc_abiver);
      if (v15 != v13)
      {
        goto LABEL_12;
      }

      if (*v12 > 0x5FFFFu)
      {
        v16 = *(v14 + 24);
        v17 = BYTE1(v15);
        if (!v16)
        {
          v16 = v17;
        }

        if (a6[6])
        {
          v17 = a6[6];
        }

        if (v16 != v17)
        {
LABEL_12:
          if (*v12 <= 0x5FFFFu)
          {
            LOWORD(v18) = BYTE1(v13);
          }

          else
          {
            v18 = a6[6];
            if (!v18)
            {
              LOWORD(v18) = BYTE1(v13);
            }
          }

          vid_puts(v13, v18, 0, _nc_outch);
        }
      }

      v56 = *(cur_term->type.Strings + 130);
      v57 = "scroll_reverse";
LABEL_90:
      _nc_putp(v57, v56);
      goto LABEL_91;
    }

    if (a3 == a5 && Strings[53])
    {
      _nc_mvcur(*(SP + 764), *(SP + 768), a2, 0);
      v19 = **(SP + 744);
      v20 = *a6;
      v21 = _nc_abiver(&_nc_abiver);
      if (v24 != v22)
      {
        goto LABEL_24;
      }

      if (*v21 > 0x5FFFFu)
      {
        v25 = *(v23 + 24);
        v26 = BYTE1(v24);
        if (!v25)
        {
          v25 = v26;
        }

        if (a6[6])
        {
          v26 = a6[6];
        }

        if (v25 != v26)
        {
LABEL_24:
          if (*v21 <= 0x5FFFFu)
          {
            LOWORD(v27) = BYTE1(v22);
          }

          else
          {
            v27 = a6[6];
            if (!v27)
            {
              LOWORD(v27) = BYTE1(v22);
            }
          }

          vid_puts(v22, v27, 0, _nc_outch);
        }
      }

      v56 = *(cur_term->type.Strings + 53);
      v57 = "insert_line";
      goto LABEL_90;
    }
  }

  if (a3 == a5 && a2 == a4 && Strings[113])
  {
    _nc_mvcur(*(SP + 764), *(SP + 768), a2, 0);
    v28 = **(SP + 744);
    v29 = *a6;
    v30 = _nc_abiver(&_nc_abiver);
    if (v33 != v31)
    {
      goto LABEL_37;
    }

    if (*v30 > 0x5FFFFu)
    {
      v34 = *(v32 + 24);
      v35 = BYTE1(v33);
      if (!v34)
      {
        v34 = v35;
      }

      if (a6[6])
      {
        v35 = a6[6];
      }

      if (v34 != v35)
      {
LABEL_37:
        if (*v30 <= 0x5FFFFu)
        {
          LOWORD(v36) = BYTE1(v31);
        }

        else
        {
          v36 = a6[6];
          if (!v36)
          {
            LOWORD(v36) = BYTE1(v31);
          }
        }

        vid_puts(v31, v36, 0, _nc_outch);
      }
    }

    v55 = _nc_tiparm(1, *(cur_term->type.Strings + 113), a1);
LABEL_86:
    tputs(v55, a1, _nc_outch);
    goto LABEL_91;
  }

  if (a3 == a5 && Strings[110])
  {
    _nc_mvcur(*(SP + 764), *(SP + 768), a2, 0);
    v37 = **(SP + 744);
    v38 = *a6;
    v39 = _nc_abiver(&_nc_abiver);
    if (v42 != v40)
    {
      goto LABEL_49;
    }

    if (*v39 > 0x5FFFFu)
    {
      v43 = *(v41 + 24);
      v44 = BYTE1(v42);
      if (!v43)
      {
        v43 = v44;
      }

      if (a6[6])
      {
        v44 = a6[6];
      }

      if (v43 != v44)
      {
LABEL_49:
        if (*v39 <= 0x5FFFFu)
        {
          LOWORD(v45) = BYTE1(v40);
        }

        else
        {
          v45 = a6[6];
          if (!v45)
          {
            LOWORD(v45) = BYTE1(v40);
          }
        }

        vid_puts(v40, v45, 0, _nc_outch);
      }
    }

    v55 = _nc_tiparm(1, *(cur_term->type.Strings + 110), a1);
    goto LABEL_86;
  }

  if (a3 == a5 && a2 == a4 && Strings[130])
  {
    _nc_mvcur(*(SP + 764), *(SP + 768), a2, 0);
    v46 = **(SP + 744);
    v47 = *a6;
    v48 = _nc_abiver(&_nc_abiver);
    if (v51 != v49)
    {
      goto LABEL_62;
    }

    if (*v48 > 0x5FFFFu)
    {
      v52 = *(v50 + 24);
      v53 = BYTE1(v51);
      if (!v52)
      {
        v52 = v53;
      }

      if (a6[6])
      {
        v53 = a6[6];
      }

      if (v52 != v53)
      {
LABEL_62:
        if (*v48 <= 0x5FFFFu)
        {
          LOWORD(v54) = BYTE1(v49);
        }

        else
        {
          v54 = a6[6];
          if (!v54)
          {
            LOWORD(v54) = BYTE1(v49);
          }
        }

        vid_puts(v49, v54, 0, _nc_outch);
      }
    }

    if (a1 >= 1)
    {
      v72 = a1;
      do
      {
        _nc_putp("scroll_reverse", cur_term->type.Strings[130]);
        --v72;
      }

      while (v72);
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
    if (a3 != a5 || !Strings[53])
    {
      return result;
    }

    _nc_mvcur(*(SP + 764), *(SP + 768), a2, 0);
    v59 = **(SP + 744);
    v60 = *a6;
    v61 = _nc_abiver(&_nc_abiver);
    if (v64 != v62)
    {
      goto LABEL_80;
    }

    if (*v61 > 0x5FFFFu)
    {
      v65 = *(v63 + 24);
      v66 = BYTE1(v64);
      if (!v65)
      {
        v65 = v66;
      }

      if (a6[6])
      {
        v66 = a6[6];
      }

      if (v65 != v66)
      {
LABEL_80:
        if (*v61 <= 0x5FFFFu)
        {
          LOWORD(v67) = BYTE1(v62);
        }

        else
        {
          v67 = a6[6];
          if (!v67)
          {
            LOWORD(v67) = BYTE1(v62);
          }
        }

        vid_puts(v62, v67, 0, _nc_outch);
      }
    }

    if (a1 >= 1)
    {
      v73 = a1;
      do
      {
        _nc_putp("insert_line", cur_term->type.Strings[53]);
        --v73;
      }

      while (v73);
    }
  }

LABEL_91:
  v68 = SP;
  if (*(SP + 752) && (*(SP + 993) & 1) == 0 && !cur_term->type.Booleans[28] && a1 >= 1)
  {
    v70 = 0;
    do
    {
      _nc_mvcur(*(v68 + 764), *(v68 + 768), v70 + a2, 0);
      v68 = SP;
      if (*(SP + 130) >= 1)
      {
        v71 = 0;
        do
        {
          sub_2994A52BC(a6);
          ++v71;
          v68 = SP;
        }

        while (v71 < *(SP + 130));
      }

      ++v70;
    }

    while (v70 != a1);
  }

  return 0;
}

void _nc_screen_wrap()
{
  if (SP)
  {
    if (**(SP + 744) || *_nc_abiver(&_nc_abiver) >= 0x60000u && *(v1 + 24))
    {
      vid_puts(0, 0, 0, _nc_outch);
      v0 = SP;
    }

    if (*(v0 + 752) && (*(v0 + 993) & 1) == 0)
    {
      *(v0 + 993) = 1;
      _nc_do_color(0xFFFFFFFFLL, 0, 0, _nc_outch);
      v2 = SP;
      *(SP + 993) = 0;
      _nc_mvcur(*(v2 + 764), *(v2 + 768), *(v2 + 128) - 1, 0);
      sub_2994A489C(&xmmword_2994B0E48, 1);
      v0 = SP;
    }

    if (*(v0 + 756))
    {

      _nc_reset_colors();
    }
  }
}

uint64_t sub_2994A52BC(uint64_t a1)
{
  result = *(SP + 764);
  if (result == *(SP + 128) - 1 && (v3 = *(SP + 768), v4 = *(SP + 130), v3 == v4 - 1) && cur_term->type.Booleans[1])
  {
    Strings = cur_term->type.Strings;
    if (Strings[151] && Strings[152])
    {
      _nc_putp("exit_am_mode", Strings[152]);
      sub_2994A54C4(a1);
      --*(SP + 768);
      result = _nc_putp("enter_am_mode", cur_term->type.Strings[151]);
    }

    else if (Strings[31] && Strings[42] || Strings[52] || Strings[108])
    {
      _nc_mvcur(result, v3, *(SP + 764), v4 - 2);
      sub_2994A54C4(a1);
      _nc_mvcur(*(SP + 764), *(SP + 768), *(SP + 128) - 1, *(SP + 130) - 2);
      result = sub_2994A5918(*(*(*(SP + 144) + 40) + 16 * *(SP + 128) - 16) + 28 * *(SP + 130) - 56, 1);
    }
  }

  else
  {
    result = sub_2994A54C4(a1);
  }

  v6 = SP;
  v7 = *(SP + 768);
  if (v7 >= *(SP + 130))
  {
    Booleans = cur_term->type.Booleans;
    if (Booleans[4])
    {
      *(SP + 764) = -1;
    }

    else if (Booleans[1])
    {
      *(SP + 768) = 0;
      ++*(v6 + 764);
      if (!Booleans[14] && **(v6 + 744))
      {

        return vid_puts(0, 0, 0, _nc_outch);
      }
    }

    else
    {
      *(SP + 768) = v7 - 1;
    }
  }

  return result;
}

uint64_t sub_2994A54C4(uint64_t result)
{
  v41 = *MEMORY[0x29EDCA608];
  v1 = *result;
  if ((*result & 0xFEu) - 2 < 0x1E)
  {
    goto LABEL_64;
  }

  v2 = result;
  v3 = *(result + 24);
  memset(&v40, 0, sizeof(v40));
  v4 = wcwidth(*(result + 4));
  if (v4 <= 0)
  {
    v6 = *(v2 + 1);
    if (v6 > 0xFF)
    {
LABEL_14:
      v2 = &xmmword_2994B0E48;
      goto LABEL_15;
    }

    if (v6 > 0x7F)
    {
      if (!__maskrune(*(v2 + 1), 0x40000uLL))
      {
        goto LABEL_9;
      }
    }

    else if ((*(MEMORY[0x29EDCA600] + 4 * v6 + 60) & 0x40000) == 0)
    {
LABEL_9:
      v7 = *(SP + 1456);
      if (v6 >= 0xA0 && v7 > 0)
      {
        goto LABEL_15;
      }

      if (v7 >= 2 && *(v2 + 1) > 127)
      {
        goto LABEL_15;
      }

      if ((v1 & 0x400000) != 0)
      {
        v32 = *(v2 + 1);
        if (v32 > 127)
        {
          goto LABEL_15;
        }

        v33 = *(SP + 1024);
        if (v33)
        {
          if (*(v33 + 4 * v32))
          {
            goto LABEL_15;
          }
        }
      }

      goto LABEL_14;
    }

LABEL_15:
    v5 = 1;
    goto LABEL_16;
  }

  v5 = v4;
LABEL_16:
  memset(v39, 0, 28);
  v8 = &_nc_abiver;
  if ((v1 & 0x400000) != 0)
  {
    v9 = *(SP + 1024);
    if (v9)
    {
      v10 = *(v2 + 1);
      if (v10 <= 127)
      {
        v39[0] = *v2;
        *(v39 + 12) = *(v2 + 12);
        if (*(SP + 1600) == 1 && *(*(SP + 1032) + SDWORD1(v39[0])) == 1)
        {
          v11 = _nc_wacs + 28 * SDWORD1(v39[0]);
        }

        else
        {
          if (*(SP + 1601) != 1)
          {
            goto LABEL_26;
          }

          if (*(*(SP + 1032) + SDWORD1(v39[0])))
          {
            goto LABEL_26;
          }

          v11 = _nc_wacs + 28 * SDWORD1(v39[0]);
          if (!*(v11 + 4))
          {
            goto LABEL_26;
          }
        }

        v1 &= ~0x400000u;
        v39[0] = *v11;
        *(v39 + 12) = *(v11 + 12);
LABEL_26:
        if ((v1 & 0x400000) != 0)
        {
          v12 = *(v9 + 4 * v10);
          if (v12)
          {
            memset(v39 + 8, 0, 20);
            *&v39[0] = __PAIR64__(v12, v1);
            v13 = _nc_abiver(&_nc_abiver);
            if (*v13 > v14)
            {
              DWORD2(v39[1]) = BYTE1(v1);
              LODWORD(v39[0]) = v1 & 0xFFFF00FF | (BYTE1(v1) << 8);
            }
          }

          else
          {
            v39[0] = *v2;
            *(v39 + 12) = *(v2 + 12);
            v1 &= ~0x400000u;
          }
        }

        v2 = v39;
      }
    }
  }

  v34 = 0;
  v35 = 0;
  v37 = 0;
  v36 = 0;
  if (cur_term->type.Booleans[18] && *(v2 + 1) == 126)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v34 = v1 | 0x6000000000;
    v15 = (*v8)(v8);
    if (*v15 > v16)
    {
      v37 = BYTE1(v1);
      LODWORD(v34) = v1 & 0xFFFF00FF | (BYTE1(v1) << 8);
    }

    v2 = &v34;
  }

  v17 = **(SP + 744);
  result = (*v8)(v8);
  if (v20 != v1)
  {
    goto LABEL_44;
  }

  if (*result > v18)
  {
    v21 = *(v19 + 24);
    v22 = BYTE1(v1);
    if (!v21)
    {
      v21 = BYTE1(v1);
    }

    if (v3)
    {
      v22 = v3;
    }

    if (v21 != v22)
    {
LABEL_44:
      if (*result <= v18)
      {
        v23 = BYTE1(v1);
      }

      else
      {
        v23 = BYTE1(v1);
        if (v3)
        {
          v23 = v3;
        }
      }

      result = vid_puts(v1, v23, 0, _nc_outch);
    }
  }

  if ((*v2 & 0xFEu) - 2 >= 0x1E)
  {
    v24 = v2 + 1;
    if (!*(v2 + 2) && (result = _nc_is_charable(*v24), result))
    {
LABEL_61:
      result = _nc_outch(*v24);
    }

    else
    {
      v25 = 0;
      memset(&v40, 0, sizeof(v40));
      do
      {
        v26 = v24[v25];
        if (!v26)
        {
          break;
        }

        result = wcrtomb(v38, v24[v25], &v40);
        if (result < 1)
        {
          if (v25 || v26 > 0xFF)
          {
            break;
          }

          goto LABEL_61;
        }

        v27 = result & 0x7FFFFFFF;
        v28 = v38;
        do
        {
          v29 = *v28++;
          result = _nc_outch(v29);
          --v27;
        }

        while (v27);
        ++v25;
      }

      while (v25 != 5);
    }
  }

  *(SP + 768) += v5;
  v30 = *(cur_term->type.Strings + 145);
  if (v30)
  {
    result = _nc_putp("char_padding", v30);
  }

LABEL_64:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2994A5918(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = cur_term;
  Strings = cur_term->type.Strings;
  v6 = Strings[108];
  if (v6)
  {
    v7 = _nc_tiparm(1, v6, a2);
    for (result = tputs(v7, a2, _nc_outch); a2; LODWORD(a2) = a2 - 1)
    {
      result = sub_2994A54C4(v3);
      v3 += 28;
    }
  }

  else
  {
    v8 = Strings[31];
    if (v8 && Strings[42])
    {
      _nc_putp("enter_insert_mode", v8);
      for (; a2; LODWORD(a2) = a2 - 1)
      {
        sub_2994A54C4(v3);
        v9 = *(cur_term->type.Strings + 54);
        if (v9)
        {
          _nc_putp("insert_padding", v9);
        }

        v3 += 28;
      }

      v10 = *(cur_term->type.Strings + 42);

      return _nc_putp("exit_insert_mode", v10);
    }

    else
    {
      for (; a2; LODWORD(a2) = a2 - 1)
      {
        _nc_putp("insert_character", v4->type.Strings[52]);
        result = sub_2994A54C4(v3);
        v4 = cur_term;
        v11 = *(cur_term->type.Strings + 54);
        if (v11)
        {
          result = _nc_putp("insert_padding", v11);
          v4 = cur_term;
        }

        v3 += 28;
      }
    }
  }

  return result;
}

uint64_t sub_2994A5A90(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a4;
  v7 = a5 - a4;
  if (a1 == a2 || v7 < *(SP + 924))
  {

    return sub_2994A5D68((a2 + 28 * a4), (v7 + 1));
  }

  v9 = -a4;
  if (a5 >= a4)
  {
    v14 = _nc_abiver(&_nc_abiver);
    v10 = 0;
    v15 = 0;
    v12 = v16 + 1;
    v17 = 28 * v5 + 12;
    v18 = (a2 + v17);
    v20 = (v19 + v17);
    v21 = v5;
    while (v15 || (*(v20 - 3) & 0xFEu) - 2 >= 0x1E)
    {
      if (*(v20 - 3) == *(v18 - 3) && *(v20 - 2) == *(v18 - 2) && *(v20 - 1) == *(v18 - 1) && *v20 == *v18 && v20[1] == v18[1] && v20[2] == v18[2] && (*v14 < 0x60000u || v20[3] == v18[3]))
      {
        ++v15;
      }

      else
      {
        if (v15 <= *(SP + 924))
        {
          break;
        }

        sub_2994A5D68((a2 + 28 * v21), (v5 + v9 + v10));
        _nc_mvcur(*(SP + 764), *(SP + 768), a3, v5);
        v15 = 0;
        v21 = v5;
      }

LABEL_23:
      v10 = -v15;
      v9 = -v21;
      ++v5;
      v18 += 7;
      v20 += 7;
      if (v12 == v5)
      {
        v11 = v15 == 0;
        v5 = v21;
        goto LABEL_25;
      }
    }

    v15 = 0;
    goto LABEL_23;
  }

  v10 = 0;
  v11 = 1;
  v12 = a4;
LABEL_25:
  LODWORD(result) = sub_2994A5D68((a2 + 28 * v5), (v12 + v10 + v9));
  if (v11)
  {
    return result;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2994A5CB0(uint64_t result)
{
  v1 = result;
  v2 = *(cur_term->type.Strings + 105);
  if (v2)
  {
    v3 = _nc_tiparm(1, v2, result);

    return tputs(v3, v1, _nc_outch);
  }

  else if (result >= 1)
  {
    do
    {
      result = _nc_putp("delete_character", cur_term->type.Strings[21]);
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_2994A5D68(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  Strings = cur_term->type.Strings;
  if (!Strings[37] && !Strings[121])
  {
    if (a2 >= 1)
    {
      v36 = a2;
      do
      {
        sub_2994A52BC(a1);
        a1 += 7;
        --v36;
      }

      while (v36);
    }

    return 0;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v5 = _nc_abiver(&_nc_abiver);
  while (1)
  {
    memset(v39, 0, sizeof(v39));
    if (v2 < 2)
    {
      v8 = a1;
LABEL_96:
      v37 = *v8;
      *&v39[3] = *(v8 + 3);
      *v39 = v37;
LABEL_97:
      sub_2994A52BC(v39);
      return 0;
    }

    v6 = v2 - 2;
    v7 = a1 + 20;
    v8 = a1;
    while (1)
    {
      v9 = v8[7];
      v8 += 7;
      if (*a1 == v9 && a1[1] == a1[8] && a1[2] == a1[9] && a1[3] == a1[10] && a1[4] == a1[11] && a1[5] == a1[12] && (*v5 < 0x60000 || a1[6] == a1[13]))
      {
        break;
      }

      sub_2994A52BC(a1);
      --v6;
      v7 += 7;
      a1 = v8;
      v10 = v2 <= 2;
      v2 = (v2 - 1);
      if (v10)
      {
        goto LABEL_96;
      }
    }

    v11 = *a1;
    *&v39[3] = *(a1 + 3);
    *v39 = v11;
    if (v2 == 1)
    {
      goto LABEL_97;
    }

    if (v2 < 3)
    {
      v12 = 0;
      v14 = 2;
    }

    else
    {
      v12 = 1;
      v13 = 3;
      while (*(v7 - 6) == v39[0] && *(v7 - 5) == v39[1] && *(v7 - 4) == v39[2] && *(v7 - 3) == v39[3] && *(v7 - 2) == v39[4] && *(v7 - 1) == v39[5] && (*v5 <= 0x5FFFF || *v7 == v39[6]))
      {
        v12 = v13++ < v2;
        v7 += 7;
        if (!--v6)
        {
          v14 = v2;
          goto LABEL_33;
        }
      }

      v14 = (v13 - 1);
    }

LABEL_33:
    if (!*(cur_term->type.Strings + 37) || v14 <= *(SP + 916) + *(SP + 904) || !cur_term->type.Booleans[28] && *(SP + 752) && (*(SP + 993) != 1 || *(SP + 996) != 511 || *(SP + 1000) != 511 || (*v5 >= 0x60000 && (v19 = v39[6], v39[6]) || (v19 = BYTE1(v39[0]), BYTE1(v39[0]))) && ((*v40 = 0, pair_content(v19, &v40[1], v40) == -1) || v40[1] != 511 || v40[0] != 511)) || v39[1] != 32 || v39[2] || (v39[0] & 0x7FC700FF) != 0)
    {
      v20 = *(cur_term->type.Strings + 121);
      if (!v20 || v14 <= *(SP + 908))
      {
        if (v14 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v14;
        }

        v28 = a1;
        do
        {
          sub_2994A52BC(v28);
          v28 += 28;
          --v27;
        }

        while (v27);
        goto LABEL_72;
      }

      v21 = *(SP + 130);
      v38 = *(SP + 768) + v14;
      v22 = *(SP + 744);
      v23 = *v22;
      v24 = *v5;
      if (*v22 == v39[0])
      {
        if (v24 <= 0x5FFFF)
        {
          goto LABEL_81;
        }

        v25 = v22[6];
        v26 = BYTE1(v23);
        if (!v25)
        {
          v25 = v26;
        }

        if (v39[6])
        {
          v26 = v39[6];
        }

        if (v25 == v26)
        {
          goto LABEL_81;
        }
      }

      else if (v24 <= 0x5FFFF)
      {
        v31 = BYTE1(v39[0]);
LABEL_80:
        vid_puts(v39[0], v31, 0, _nc_outch);
        v20 = *(cur_term->type.Strings + 121);
LABEL_81:
        v32 = v14 - (v38 >= v21);
        v33 = _nc_tiparm(2, v20, v39[1], v32);
        tputs(v33, v32, _nc_outch);
        *(SP + 768) += v32;
        if (v38 >= v21)
        {
          sub_2994A52BC(v39);
        }

        goto LABEL_72;
      }

      v31 = v39[6];
      if (!v39[6])
      {
        v31 = BYTE1(v39[0]);
      }

      goto LABEL_80;
    }

    v15 = *(SP + 744);
    v16 = *v5;
    if (*v15 != v39[0])
    {
      if (v16 <= 0x5FFFF)
      {
        v34 = BYTE1(v39[0]);
      }

      else
      {
LABEL_84:
        v34 = v39[6];
        if (!v39[6])
        {
          v34 = BYTE1(v39[0]);
        }
      }

      vid_puts(v39[0], v34, 0, _nc_outch);
      goto LABEL_89;
    }

    if (v16 > 0x5FFFF)
    {
      v17 = v15[6];
      v18 = BYTE1(v39[0]);
      if (!v17)
      {
        v17 = BYTE1(v39[0]);
      }

      if (v39[6])
      {
        v18 = v39[6];
      }

      if (v17 != v18)
      {
        goto LABEL_84;
      }
    }

LABEL_89:
    v35 = _nc_tiparm(1, *(cur_term->type.Strings + 37), v14);
    _nc_putp("erase_chars", v35);
    if (!v12)
    {
      return 1;
    }

    _nc_mvcur(*(SP + 764), *(SP + 768), *(SP + 764), *(SP + 768) + v14);
LABEL_72:
    result = 0;
    a1 += 7 * v14;
    v30 = __OFSUB__(v2, v14);
    v2 = (v2 - v14);
    if ((v2 < 0) ^ v30 | (v2 == 0))
    {
      return result;
    }
  }
}

char *_nc_unctrl(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  if (a1 && ((v3 = *(a1 + 1456), (a2 & 0xE0) == 0x80) && v3 >= 2 || a2 >= 0xA0u && (v3 > 0 || !v3 && __maskrune(a2, 0x40000uLL))))
  {
    v4 = &unk_2994B1064 + 2 * v2 - 256;
  }

  else
  {
    v4 = &unk_2994B0E64 + 2 * v2;
  }

  return &unk_2994B1164 + *v4;
}

int use_screen(SCREEN *a1, NCURSES_SCREEN_CB a2, void *a3)
{
  v6 = SP;
  set_term(a1);
  LODWORD(a3) = (a2)(a1, a3);
  set_term(v6);
  return a3;
}

const char *sub_2994A6400(int a1, char *__s, int a3)
{
  if (!__s)
  {
    return "(null)";
  }

  v3 = __s;
  if (__s == -1)
  {
    return "(cancelled)";
  }

  v5 = a3;
  if (a3 < 0)
  {
    v5 = strlen(__s);
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a1 & 0x80000000) == 0)
  {
LABEL_7:
    v7 = _nc_doalloc(qword_2A1462D40[a1], 4 * v5 + 4);
    qword_2A1462D40[a1] = v7;
    if (!v7)
    {
      return "(_nc_visbuf2n failed)";
    }

    v4 = v7;
    *v7 = 34;
    v8 = v7 + 1;
    if (v5 < 1)
    {
LABEL_36:
      *v8 = 34;
      return v4;
    }

    v9 = v5 + 1;
    v10 = MEMORY[0x29EDCA600];
    while (1)
    {
      v11 = *v3;
      if (!*v3)
      {
        goto LABEL_36;
      }

      if (v11 == 92 || v11 == 34)
      {
        *v8 = 92;
        v8[1] = v11;
        v8 += 2;
      }

      else if ((v11 & 0x80) == 0 && (v11 == 32 || (*(v10 + 4 * v11 + 60) & 0x800) != 0))
      {
        *v8++ = v11;
      }

      else
      {
        if (*v3 <= 0xCu)
        {
          if (v11 == 8)
          {
            *v8 = 25180;
            v8 += 2;
            goto LABEL_14;
          }

          if (v11 == 10)
          {
            *v8 = 28252;
            v8 += 2;
            goto LABEL_14;
          }
        }

        else
        {
          switch(v11)
          {
            case 0xD:
              *v8 = 29276;
              v8 += 2;
              goto LABEL_14;
            case 0x1B:
              *v8 = 25948;
              v8 += 2;
              goto LABEL_14;
            case 0x7F:
              *v8 = 24156;
              v8[2] = 63;
LABEL_35:
              v8 += 3;
              goto LABEL_14;
          }
        }

        if ((v11 & 0x80) == 0 && (*(v10 + 4 * v11 + 60) & 0x200) != 0)
        {
          *v8 = 24156;
          v8[2] = v11 + 64;
          goto LABEL_35;
        }

        sprintf(v8, "\\%03lo", *v3);
        v8 += strlen(v8);
      }

LABEL_14:
      ++v3;
      *v8 = 0;
      if (--v9 <= 1)
      {
        goto LABEL_36;
      }
    }
  }

  v12 = 0;
  v4 = "(_nc_visbuf2n failed)";
  do
  {
    free(qword_2A1462D40[v12]);
    qword_2A1462D40[v12++] = 0;
  }

  while (v12 != 4);
  return v4;
}

int wresize(WINDOW *a1, int a2, int a3)
{
  if (!a1)
  {
    return -1;
  }

  v4 = a2 - 1;
  if (a2 < 1)
  {
    return -1;
  }

  v6 = a3 - 1;
  if (a3 < 1)
  {
    return -1;
  }

  v8 = *(a1 + 2);
  if (v4 == v8 && v6 == *(a1 + 3))
  {
    return 0;
  }

  v44 = a3 - 1;
  v43 = *(a1 + 3);
  if (*(a1 + 6))
  {
    v34 = *(a1 + 8);
    if (*(a1 + 14) + v4 > *(v34 + 4) || *(a1 + 13) + v6 > *(v34 + 6))
    {
      return -1;
    }

    v41 = *(v34 + 40);
  }

  else
  {
    v41 = 0;
  }

  v42 = a2;
  v10 = calloc(a2, 0x10uLL);
  if (!v10)
  {
    return -1;
  }

  v11 = v10;
  v12 = 0;
  v13 = v42;
  v14 = v43;
  v15 = v43 + 1;
  v16 = *(a1 + 6);
  __size = 28 * a3;
  v17 = v44;
  v18 = v41;
  v39 = v16;
  v38 = v4;
  do
  {
    if (v12 > v8)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

    v20 = &v11[16 * v12];
    if (v16)
    {
      if (v18 && (v23 = *(v18 + 16 * (*(a1 + 14) + v12))) != 0)
      {
        v22 = (v23 + 28 * *(a1 + 13));
      }

      else
      {
        v22 = 0;
      }
    }

    else if (v12 > v8)
    {
      v22 = malloc(__size);
      v24 = a3;
      v25 = v22;
      if (!v22)
      {
        goto LABEL_54;
      }

      do
      {
        *v25 = *(a1 + 88);
        *(v25 + 12) = *(a1 + 100);
        v25 = (v25 + 28);
        --v24;
      }

      while (v24);
      v17 = v44;
      v13 = v42;
      v14 = v43;
      v18 = v41;
      v15 = v43 + 1;
      LOBYTE(v16) = v39;
    }

    else
    {
      if (v17 == v14)
      {
        v21 = *(a1 + 5);
        v22 = *(v21 + 16 * v12);
        goto LABEL_35;
      }

      v22 = malloc(__size);
      if (!v22)
      {
LABEL_54:
        sub_2994A69EC(v11, v12);
        return -1;
      }

      v26 = 0;
      v27 = 0;
      v17 = v44;
      v14 = v43;
      v18 = v41;
      v15 = v43 + 1;
      LOBYTE(v16) = v39;
      do
      {
        v28 = (v22 + v26);
        if (v27 <= v43)
        {
          v30 = (*(*(a1 + 5) + 16 * v12) + v26);
          v29 = *(v30 + 12);
          *v28 = *v30;
        }

        else
        {
          *v28 = *(a1 + 88);
          v29 = *(a1 + 100);
        }

        *(v28 + 12) = v29;
        ++v27;
        v26 += 28;
      }

      while (a3 != v27);
      v13 = v42;
    }

    if (v12 > v8)
    {
      goto LABEL_37;
    }

    v21 = *(a1 + 5);
LABEL_35:
    *(v20 + 2) = *(v21 + 16 * v12 + 8);
    if (v17 != v14 || v12 > v8)
    {
LABEL_37:
      if (v19 >= a3)
      {
        LOWORD(v19) = 0;
      }

      else if (v19 <= *(v20 + 4))
      {
        goto LABEL_42;
      }

      *(v20 + 4) = v19;
LABEL_42:
      *(v20 + 5) = v17;
    }

    *&v11[16 * v12++] = v22;
  }

  while (v12 != v13);
  if ((v16 & 1) == 0)
  {
    if (v44 == v14)
    {
      if (v8 >= a2)
      {
        v31 = 16 * v13;
        v32 = v38;
        do
        {
          free(*(*(a1 + 5) + v31));
          ++v32;
          v31 += 16;
        }

        while (v32 < v8);
      }
    }

    else if ((v8 & 0x80000000) == 0)
    {
      v35 = 0;
      do
      {
        free(*(*(a1 + 5) + v35));
        v35 += 16;
      }

      while (16 * (v8 + 1) != v35);
    }
  }

  free(*(a1 + 5));
  *(a1 + 5) = v11;
  *(a1 + 3) = v44;
  *(a1 + 2) = v38;
  if (*(a1 + 24) > v38)
  {
    *(a1 + 24) = v38;
  }

  v36 = *(a1 + 25);
  if (v36 > v38 || v36 == v8)
  {
    *(a1 + 25) = v38;
  }

  if (*(a1 + 1) > v44)
  {
    *(a1 + 1) = v44;
  }

  if (*a1 > v38)
  {
    *a1 = v38;
  }

  sub_2994A6A54(a1);
  return 0;
}

void sub_2994A69EC(char *a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = a2 + 1;
    v4 = &a1[16 * a2 - 16];
    do
    {
      v5 = *v4;
      v4 -= 2;
      free(v5);
      --v3;
    }

    while (v3 > 1);
  }

  free(a1);
}

uint64_t sub_2994A6A54(uint64_t result)
{
  v1 = *&PC[472];
  if (*&PC[472])
  {
    v2 = result;
    v3 = *(result + 40);
    do
    {
      if (v1[10] == v2)
      {
        v4 = *(v1 + 18);
        v5 = *(v2 + 4);
        if (v4 > v5)
        {
          *(v1 + 18) = v5;
          v4 = v5;
        }

        v6 = *(v1 + 17);
        v7 = *(v2 + 6);
        if (v6 > v7)
        {
          *(v1 + 17) = v7;
          v6 = v7;
        }

        if (v4 + *(v1 + 10) <= v5)
        {
          v8 = *(v1 + 10);
        }

        else
        {
          v8 = v5 - v4;
          *(v1 + 10) = v8;
        }

        if (v6 + *(v1 + 11) > v7)
        {
          *(v1 + 11) = v7 - v6;
        }

        if ((v8 & 0x8000) == 0)
        {
          v9 = v1[7];
          v10 = (v8 + 1);
          v11 = (v3 + 16 * v4);
          do
          {
            v12 = *v11;
            v11 += 2;
            *v9 = v12 + 28 * v6;
            v9 += 2;
            --v10;
          }

          while (v10);
        }

        result = sub_2994A6A54(v1 + 2);
      }

      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

void _nc_set_writedir(const char *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 || (a1 = getenv("TERMINFO")) != 0)
  {
    _nc_tic_dir(a1);
  }

  v1 = _nc_tic_dir(0);
  if ((sub_2994A6C30(v1) & 0x80000000) != 0)
  {
    v2 = _nc_home_terminfo();
    if (v2)
    {
      v3 = v2;
      if ((sub_2994A6C30(v2) & 0x80000000) != 0)
      {
        v7 = __error();
        _nc_err_abort("%s: permission denied (errno %d)", v3, *v7);
      }

      v1 = v3;
    }
  }

  v4 = _nc_tic_dir(v1);
  if (chdir(v4) < 0 || !getcwd(__s1, 0x400uLL))
  {
    _nc_err_abort("%s: not a directory", v1);
  }

  v5 = strdup(__s1);
  _nc_keep_tic_dir(v5);
  v6 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2994A6C30(const char *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = _nc_tic_dir(0);
  if (v2 == a1 || (v3 = v2, _nc_is_abs_path(a1)))
  {
    if (strlen(a1) + 1 <= 0x400)
    {
      __strcpy_chk();
      goto LABEL_7;
    }

LABEL_12:
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v4 = strlen(v3);
  if (v4 + strlen(a1) + 2 > 0x400)
  {
    goto LABEL_12;
  }

  __sprintf_chk(v10, 0, 0x400uLL, "%s/%s", v3, a1);
LABEL_7:
  memset(&v9, 0, sizeof(v9));
  v5 = stat(a1, &v9);
  if (v5 < 0)
  {
    result = mkdir(a1, 0x1FFu);
    goto LABEL_14;
  }

  v6 = v5;
  if ((_nc_access(a1, 7) & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  if ((v9.st_mode & 0xF000) == 0x4000)
  {
    result = v6;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void _nc_write_entry(TERMTYPE *const a1)
{
  v1 = (MEMORY[0x2A1C7C4A8])(a1);
  v16 = *MEMORY[0x29EDCA608];
  v2 = strlen(*v1);
  if (!v2)
  {
    _nc_syserr_abort("no terminal name found.");
  }

  v3 = v2;
  if (v2 >= 0xFFF)
  {
    _nc_syserr_abort("terminal name too long: %s", *v1);
  }

  memset(&v12, 0, sizeof(v12));
  __strcpy_chk();
  i = &__s[v3];
  v5 = &__s[v3 - 1];
  if (v3 != 1)
  {
    do
    {
      if (*v5 == 124)
      {
        break;
      }

      --v5;
    }

    while (v5 > __s);
  }

  if (v5 != __s)
  {
    *v5 = 0;
    for (i = __s; *i; ++i)
    {
      if (*i == 124)
      {
        *i++ = 0;
        break;
      }
    }
  }

  _nc_set_type(__s);
  if (!dword_2A1462D60++)
  {
    qword_2A1462D68 = 0;
  }

  if (strlen(__s) >= 0x3FC)
  {
    _nc_warning("terminal name too long.");
  }

  __sprintf_chk(v15, 0, 0x400uLL, "%02x/%s", __s[0], __s);
  if (qword_2A1462D68 >= 1 && (stat(v15, &v12) & 0x80000000) == 0 && v12.st_mtimespec.tv_sec >= qword_2A1462D68)
  {
    _nc_warning("name multiply defined.");
  }

  sub_2994A70FC(__s[0]);
  sub_2994A71BC(v15, v1);
  if (!qword_2A1462D68 && (stat(v15, &v12) < 0 || (qword_2A1462D68 = v12.st_mtimespec.tv_sec) == 0))
  {
    v11 = _nc_tic_dir(0);
    _nc_syserr_abort("error obtaining time from %s/%s", v11, v15);
  }

  while (*i)
  {
    v7 = i++;
    while (1)
    {
      v9 = *i++;
      v8 = v9;
      if (!v9)
      {
        break;
      }

      if (v8 == 124)
      {
        *(i - 1) = 0;
        goto LABEL_29;
      }
    }

    --i;
LABEL_29:
    if (strlen(v7) < 0x3FD)
    {
      if (strchr(v7, 47))
      {
        _nc_warning("cannot link alias %s.");
      }

      else
      {
        sub_2994A70FC(*v7);
        __sprintf_chk(v14, 0, 0x400uLL, "%02x/%s", *v7, v7);
        if (!strcmp(v15, v14))
        {
          _nc_warning("self-synonym ignored");
        }

        else if (stat(v14, &v12) < 0 || v12.st_mtimespec.tv_sec >= qword_2A1462D68)
        {
          if (!_nc_access(v14, 2))
          {
            sub_2994A71BC(v14, v1);
          }
        }

        else
        {
          _nc_warning("alias %s multiply defined.");
        }
      }
    }

    else
    {
      _nc_warning("terminal alias %s too long.");
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2994A70FC(int __c)
{
  if (!__c || (result = memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", __c, 0x3FuLL)) == 0)
  {
    _nc_err_abort("Illegal terminfo subdirectory %02x", __c);
  }

  v3 = result - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  if ((byte_2A1462D74[result - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"] & 1) == 0)
  {
    __sprintf_chk(v5, 0, 5uLL, "%02x", __c);
    result = sub_2994A6C30(v5);
    if ((result & 0x80000000) != 0)
    {
      v4 = _nc_tic_dir(0);
      _nc_err_abort("%s/%s: permission denied", v4, v5);
    }

    byte_2A1462D74[v3] = 1;
  }

  return result;
}

uint64_t sub_2994A71BC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v5 = v2;
  v81 = *MEMORY[0x29EDCA608];
  if (_nc_access(v2, 2) || (v6 = fopen(v5, "wb")) == 0)
  {
    sub_2994AA7DC(v5);
  }

  v7 = v6;
  v70 = v5;
  if (_nc_user_definable)
  {
    v8 = 44;
  }

  else
  {
    v8 = 37;
  }

  v9 = strlen(*v4);
  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = *(v4 + 16);
  do
  {
    if (v13[v11] == 1)
    {
      v12 = v11 + 1;
    }

    ++v11;
  }

  while (v8 != v11);
  v14 = 0;
  v15 = 0;
  v16 = 33;
  if (_nc_user_definable)
  {
    v16 = 39;
  }

  v17 = *(v4 + 24);
  do
  {
    if (v17[v14] != -1)
    {
      v15 = v14 + 1;
    }

    ++v14;
  }

  while (v16 != v14);
  __stream = v7;
  v74 = v4;
  v18 = 0;
  v19 = 0;
  v20 = 394;
  if (_nc_user_definable)
  {
    v20 = 414;
  }

  v21 = *(v4 + 32);
  do
  {
    if (v21[v18])
    {
      v19 = v18 + 1;
    }

    ++v18;
  }

  while (v20 != v18);
  v22 = v9 + 1;
  v23 = sub_2994A79A0(v21, v19, v80);
  LOWORD(v78) = 282;
  v24 = 513;
  if (v22 < 0x201)
  {
    v24 = v10 + 1;
  }

  WORD1(v78) = v24;
  WORD2(v78) = v12;
  HIWORD(v78) = v15;
  LOWORD(v79) = v19;
  BYTE2(v79) = v23;
  v25 = v23 + 255;
  v72 = v23;
  if (v23 >= 0)
  {
    HIBYTE(v25) = BYTE1(v23);
  }

  HIBYTE(v79) = HIBYTE(v25);
  v77 = v79;
  __ptr = v78;
  if (v22 < 0xFF4)
  {
    v26 = v10 + 1;
  }

  else
  {
    v26 = 4084;
  }

  __memcpy_chk();
  if (v22 > 0xFF4)
  {
    goto LABEL_129;
  }

  v27 = v26 + 12;
  if (v12)
  {
    v28 = &v78;
    v29 = v13;
    v30 = v12;
    do
    {
      v31 = *v29++;
      *v28++ = v31 == 1;
      --v30;
    }

    while (v30);
  }

  if (v26 == 4084)
  {
    v32 = 0;
  }

  else
  {
    v32 = v12 >= 4096 - v27 ? 4096 - v27 : v12;
    memcpy(&__ptr + v27, &v78, v32);
    v27 += v32;
  }

  if (v32 != v12)
  {
    goto LABEL_129;
  }

  if ((v12 + v22))
  {
    if (v27 == 4096)
    {
      goto LABEL_129;
    }

    *(&__ptr + v27++) = 0;
  }

  sub_2994A7A34(&v78, v17, v15);
  if (v27 == 4096)
  {
    if (v15)
    {
      goto LABEL_129;
    }

    sub_2994A7A34(&v78, v80, v19);
LABEL_51:
    v35 = 0;
    v36 = 4096;
    goto LABEL_56;
  }

  if (2 * v15 >= 4096 - v27)
  {
    v33 = 4096 - v27;
  }

  else
  {
    v33 = 2 * v15;
  }

  memcpy(&__ptr + v27, &v78, v33);
  if (v15 != v33 >> 1)
  {
    goto LABEL_129;
  }

  v34 = v27 + v33;
  sub_2994A7A34(&v78, v80, v19);
  if (v27 + v33 == 4096)
  {
    goto LABEL_51;
  }

  if (2 * v19 >= 4096 - v34)
  {
    v37 = 4096 - v34;
  }

  else
  {
    v37 = 2 * v19;
  }

  memcpy(&__ptr + v34, &v78, v37);
  v36 = v34 + v37;
  v35 = v37 >> 1;
LABEL_56:
  if (v35 != v19)
  {
    goto LABEL_129;
  }

  if (v19)
  {
    v38 = v21;
    v39 = v36;
    do
    {
      v40 = *v38;
      if ((*v38 + 1) >= 2)
      {
        if (v39 == 4096)
        {
          v41 = 0;
        }

        else
        {
          v42 = strlen(*v38);
          v41 = v42 + 1 < 4096 - v39 ? v42 + 1 : 4096 - v39;
          memcpy(&__ptr + v39, v40, v41);
          v36 += v41;
          v40 = *v38;
          v39 = v36;
        }

        if (v41 != strlen(v40) + 1)
        {
          goto LABEL_129;
        }
      }

      ++v38;
    }

    while (--v19);
  }

  if (sub_2994A7A94(v74))
  {
    v43 = *(v74 + 62);
    v71 = *(v74 + 64);
    v44 = *(v74 + 66);
    if (v72)
    {
      if (v36 == 4096)
      {
        goto LABEL_129;
      }

      *(&__ptr + v36++) = 0;
    }

    v45 = v21 + 414;
    v46 = sub_2994A79A0(v45, v44, v80);
    if (v44 > 0x7FF)
    {
      goto LABEL_129;
    }

    v47 = v46;
    v48 = (v71 + v43 + v44);
    v49 = *(v74 + 48);
    v50 = sub_2994A79A0(v49, v48, &v80[v44]);
    LOWORD(v78) = v43;
    v51 = v50 + v47;
    WORD1(v78) = v71;
    WORD2(v78) = v44;
    HIWORD(v78) = v71 + v43 + v44 + v44;
    v75 = (v48 + v44);
    LOBYTE(v79) = v50 + v47;
    if (v50 + v47 < 0 != __OFADD__(v50, v47))
    {
      HIBYTE(v51) = (v50 + v47 + 255) >> 8;
    }

    BYTE1(v79) = HIBYTE(v51);
    if (v36 == 4096)
    {
      goto LABEL_129;
    }

    v52 = 4096 - v36;
    v53 = v52 >= 0xA ? 10 : 4096 - v36;
    memcpy(&__ptr + v36, &v78, v53);
    if (v52 < 0xA)
    {
      goto LABEL_129;
    }

    v54 = v36 + v53;
    if (v43)
    {
      if (v54 == 4096)
      {
        v55 = 0;
      }

      else
      {
        if (v43 >= 4096 - v54)
        {
          v55 = 4096 - v54;
        }

        else
        {
          v55 = v43;
        }

        memcpy(&__ptr + v54, v13 + 44, v55);
        v54 += v55;
      }

      if (v55 != v43)
      {
        goto LABEL_129;
      }

      if (v43)
      {
        if (v54 == 4096)
        {
          goto LABEL_129;
        }

        *(&__ptr + v54++) = 0;
      }
    }

    if (v71)
    {
      sub_2994A7A34(&v78, v17 + 39, v71);
      if (v54 == 4096)
      {
        v56 = 0;
      }

      else
      {
        v57 = 2 * v71 >= 4096 - v54 ? 4096 - v54 : 2 * v71;
        memcpy(&__ptr + v54, &v78, v57);
        v54 += v57;
        v56 = v57 >> 1;
      }

      if (v56 != v71)
      {
        goto LABEL_129;
      }
    }

    sub_2994A7A34(&v78, v80, v75);
    if (v54 == 4096)
    {
      v58 = 0;
      v36 = 4096;
    }

    else
    {
      v59 = 2 * v75 >= 4096 - v54 ? 4096 - v54 : 2 * v75;
      memcpy(&__ptr + v54, &v78, v59);
      v36 = v54 + v59;
      v58 = v59 >> 1;
    }

    if (v58 != v75)
    {
LABEL_129:
      v69 = _nc_tic_dir(0);
      _nc_syserr_abort("error writing %s/%s", v69, v70);
    }

    if (v44)
    {
      v60 = v36;
      do
      {
        v61 = *v45;
        if ((*v45 + 1) >= 2)
        {
          if (v60 == 4096)
          {
            v62 = 0;
          }

          else
          {
            v63 = strlen(*v45);
            v62 = v63 + 1 < 4096 - v60 ? v63 + 1 : 4096 - v60;
            memcpy(&__ptr + v60, v61, v62);
            v36 += v62;
            v61 = *v45;
            v60 = v36;
          }

          if (v62 != strlen(v61) + 1)
          {
            goto LABEL_129;
          }
        }

        ++v45;
      }

      while (--v44);
    }

    if (v48)
    {
      v64 = v36;
      do
      {
        if (v64 == 4096)
        {
          v65 = 0;
        }

        else
        {
          v66 = strlen(*v49);
          v65 = v66 + 1 < 4096 - v64 ? v66 + 1 : 4096 - v64;
          memcpy(&__ptr + v64, *v49, v65);
          v36 += v65;
          v64 = v36;
        }

        if (v65 != strlen(*v49) + 1)
        {
          goto LABEL_129;
        }

        ++v49;
      }

      while (--v48);
    }
  }

  ++dword_2A1462D70;
  if (fwrite(&__ptr, 1uLL, v36, __stream) != v36)
  {
    goto LABEL_129;
  }

  result = fclose(__stream);
  v68 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2994A79A0(const char **a1, uint64_t a2, _WORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v6 = 0;
  do
  {
    v7 = *a1;
    if (*a1 == -1)
    {
      *a3 = -2;
    }

    else if (v7)
    {
      *a3 = v6;
      v6 = v6 + strlen(v7) + 1;
    }

    else
    {
      *a3 = -1;
    }

    ++a3;
    ++a1;
    --v4;
  }

  while (v4);
  return v6;
}

uint64_t sub_2994A7A34(uint64_t result, _WORD *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 1);
    do
    {
      v4 = *a2;
      if (v4 == 65534)
      {
        *(v3 - 1) = -2;
      }

      else if (v4 == 0xFFFF)
      {
        *(v3 - 1) = -1;
      }

      else
      {
        *(v3 - 1) = v4;
        *v3 = (*a2 + (*a2 >> 23)) >> 8;
      }

      ++a2;
      v3 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

BOOL sub_2994A7A94(uint64_t a1)
{
  if (!_nc_user_definable)
  {
    return 0;
  }

  v1 = *(a1 + 62);
  if (*(a1 + 62))
  {
    v2 = 0;
    v3 = (*(a1 + 16) + 44);
    v4 = 1;
    do
    {
      v5 = *v3++;
      if (v5 == 1)
      {
        v2 = v4;
      }

      ++v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  v7 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v8 = 0;
    v9 = (*(a1 + 24) + 78);
    v10 = 1;
    do
    {
      v11 = *v9++;
      if (v11 != -1)
      {
        v8 = v10;
      }

      ++v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = v8 + v2;
  v13 = *(a1 + 66);
  if (*(a1 + 66))
  {
    v14 = 0;
    v15 = (*(a1 + 32) + 3312);
    v16 = 1;
    do
    {
      if (*v15++)
      {
        v14 = v16;
      }

      ++v16;
      --v13;
    }

    while (v13);
    LODWORD(v13) = v14;
  }

  return v12 + v13 != 0;
}

char *_nc_keyname(uint64_t a1, unsigned int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a2 == -1)
  {
    v4 = "-1";
    goto LABEL_9;
  }

  if (a2 != 348)
  {
    v6 = &dword_2994B15B0;
    while (1)
    {
      v3 = *(v6 - 2);
      if (v3 == -1)
      {
        break;
      }

      v7 = *v6;
      v6 += 2;
      if (v7 == a2)
      {
        goto LABEL_8;
      }
    }

    if (a2 > 0xFF)
    {
      if (a1 && *(a1 + 48))
      {
        v14 = cur_term;
        v15 = _nc_tracing;
        _nc_tracing = 0;
        v16 = keybound(a2, 0);
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          do
          {
            num_Strings = v14->type.num_Strings;
            if (num_Strings < 0x19F)
            {
LABEL_25:
              free(v17);
            }

            else
            {
              Strings = v14->type.Strings;
              v21 = &qword_29EF25668;
              v22 = num_Strings - 414;
              v23 = 414;
              while (1)
              {
                v24 = Strings[v23];
                if (v24)
                {
                  if (!strcmp(v17, v24))
                  {
                    break;
                  }
                }

                ++v23;
                ++v21;
                if (!--v22)
                {
                  goto LABEL_25;
                }
              }

              if (v23 >= 0x19E)
              {
                v21 = &v14->type.ext_Names[v14->type.ext_Strings + v14->type.ext_Numbers + v14->type.ext_Booleans - v22];
              }

              v4 = *v21;
              free(v17);
              if (v4)
              {
                goto LABEL_51;
              }
            }

            v17 = keybound(a2, ++v18);
          }

          while (v17);
          v4 = 0;
        }

        else
        {
          v4 = 0;
        }

LABEL_51:
        _nc_tracing = v15;
        goto LABEL_9;
      }
    }

    else
    {
      v10 = *&PC[88];
      if (*&PC[88] || (v10 = calloc(0x100uLL, 8uLL), (*&PC[88] = v10) != 0))
      {
        if (a1)
        {
          v11 = *&PC[96];
          if (!*(a1 + 792))
          {
            v12 = 0;
            v13 = 1;
LABEL_35:
            if (v11 != v13)
            {
              v25 = 0;
              *&PC[96] = v13;
              do
              {
                if (v10[v25])
                {
                  free(v10[v25]);
                  *(*&PC[88] + v25 * 8) = 0;
                  v10 = *&PC[88];
                }

                ++v25;
              }

              while (v25 != 256);
            }

            v4 = v10[a2];
            if (!v4)
            {
              v26 = __s1;
              if (a2 < 128)
              {
                v27 = 1;
              }

              else
              {
                v27 = v12 ^ 1;
              }

              v28 = a2;
              if ((v27 & 1) == 0)
              {
                strcpy(__s1, "M-");
                v26 = &__s1[2];
                v28 = a2 - 128;
              }

              if (v28 > 31)
              {
                if (v28 == 127)
                {
                  strcpy(v26, "^?");
                }

                else
                {
                  __sprintf_chk(v26, 0, 0x14uLL, "%c");
                }
              }

              else
              {
                __sprintf_chk(v26, 0, 0x14uLL, "^%c");
              }

              *(*&PC[88] + 8 * a2) = strdup(__s1);
              v4 = *(*&PC[88] + 8 * a2);
            }

            goto LABEL_9;
          }
        }

        else
        {
          v11 = *&PC[96];
        }

        v13 = 2;
        v12 = 1;
        goto LABEL_35;
      }
    }

    v4 = 0;
    goto LABEL_9;
  }

  v3 = 0;
LABEL_8:
  v4 = &aKeyA1_0[v3];
LABEL_9:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

int attrset(int a1)
{
  v1 = stdscr;
  if (!stdscr)
  {
    return -1;
  }

  result = 0;
  *(stdscr + 29) = BYTE1(a1);
  *(v1 + 4) = a1;
  return result;
}

int attr_get(attr_t *a1, __int16 *a2, void *a3)
{
  if (a1)
  {
    v3 = stdscr;
    if (stdscr)
    {
      v3 = *(stdscr + 4);
    }

    *a1 = v3;
  }

  if (a2)
  {
    LOWORD(v4) = stdscr;
    if (stdscr)
    {
      v4 = *(stdscr + 29);
    }

    *a2 = v4;
  }

  return 0;
}

int attr_set(attr_t a1, __int16 a2, void *a3)
{
  v3 = stdscr;
  if (stdscr)
  {
    *(stdscr + 4) = a1 & 0xFFFF00FF;
    *(v3 + 29) = a2;
  }

  return 0;
}

chtype getbkgd(WINDOW *a1)
{
  if (a1)
  {
    LODWORD(a1) = *(a1 + 5);
  }

  return a1;
}

int mvaddch(int a1, int a2, const chtype a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return waddch(v5, a3);
  }

  return result;
}

int mvaddchnstr(int a1, int a2, const chtype *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return waddchnstr(v7, a3, a4);
  }

  return result;
}

int mvaddchstr(int a1, int a2, const chtype *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return waddchnstr(v5, a3, -1);
  }

  return result;
}

int mvaddnstr(int a1, int a2, const char *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return waddnstr(v7, a3, a4);
  }

  return result;
}

int mvaddstr(int a1, int a2, const char *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return waddnstr(v5, a3, -1);
  }

  return result;
}

int mvchgat(int a1, int a2, int a3, attr_t a4, __int16 a5, const void *a6)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v11 = stdscr;

    return wchgat(v11, a3, a4, a5, a6);
  }

  return result;
}

int mvdelch(int a1, int a2)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v3 = stdscr;

    return wdelch(v3);
  }

  return result;
}

int mvgetch(int a1, int a2)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v3 = stdscr;

    return wgetch(v3);
  }

  return result;
}

int mvgetnstr(int a1, int a2, char *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wgetnstr(v7, a3, a4);
  }

  return result;
}

int mvgetstr(int a1, int a2, char *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wgetnstr(v5, a3, -1);
  }

  return result;
}

int mvhline(int a1, int a2, chtype a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return whline(v7, a3, a4);
  }

  return result;
}

chtype mvinch(int a1, int a2)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v3 = stdscr;

    return winch(v3);
  }

  return result;
}

int mvinchnstr(int a1, int a2, chtype *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return winchnstr(v7, a3, a4);
  }

  return result;
}

int mvinchstr(int a1, int a2, chtype *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return winchnstr(v5, a3, -1);
  }

  return result;
}

int mvinnstr(int a1, int a2, char *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return winnstr(v7, a3, a4);
  }

  return result;
}

int mvinsch(int a1, int a2, chtype a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return winsch(v5, a3);
  }

  return result;
}

int mvinsnstr(int a1, int a2, const char *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return winsnstr(v7, a3, a4);
  }

  return result;
}

int mvinsstr(int a1, int a2, const char *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return winsnstr(v5, a3, -1);
  }

  return result;
}

int mvinstr(int a1, int a2, char *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return winnstr(v5, a3, -1);
  }

  return result;
}

int mvvline(int a1, int a2, chtype a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wvline(v7, a3, a4);
  }

  return result;
}

int mvwaddch(WINDOW *a1, int a2, int a3, const chtype a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddch(a1, a4);
  }

  return result;
}

int mvwaddchnstr(WINDOW *a1, int a2, int a3, const chtype *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddchnstr(a1, a4, a5);
  }

  return result;
}

int mvwaddchstr(WINDOW *a1, int a2, int a3, const chtype *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddchnstr(a1, a4, -1);
  }

  return result;
}

int mvwaddnstr(WINDOW *a1, int a2, int a3, const char *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddnstr(a1, a4, a5);
  }

  return result;
}

int mvwaddstr(WINDOW *a1, int a2, int a3, const char *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddnstr(a1, a4, -1);
  }

  return result;
}

int mvwchgat(WINDOW *a1, int a2, int a3, int a4, attr_t a5, __int16 a6, const void *a7)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wchgat(a1, a4, a5, a6, a7);
  }

  return result;
}

int mvwdelch(WINDOW *a1, int a2, int a3)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wdelch(a1);
  }

  return result;
}

int mvwgetch(WINDOW *a1, int a2, int a3)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wgetch(a1);
  }

  return result;
}

int mvwgetnstr(WINDOW *a1, int a2, int a3, char *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wgetnstr(a1, a4, a5);
  }

  return result;
}

int mvwgetstr(WINDOW *a1, int a2, int a3, char *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wgetnstr(a1, a4, -1);
  }

  return result;
}

int mvwhline(WINDOW *a1, int a2, int a3, chtype a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return whline(a1, a4, a5);
  }

  return result;
}

chtype mvwinch(WINDOW *a1, int a2, int a3)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winch(a1);
  }

  return result;
}

int mvwinchnstr(WINDOW *a1, int a2, int a3, chtype *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winchnstr(a1, a4, a5);
  }

  return result;
}

int mvwinchstr(WINDOW *a1, int a2, int a3, chtype *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winchnstr(a1, a4, -1);
  }

  return result;
}

int mvwinnstr(WINDOW *a1, int a2, int a3, char *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winnstr(a1, a4, a5);
  }

  return result;
}

int mvwinsch(WINDOW *a1, int a2, int a3, chtype a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winsch(a1, a4);
  }

  return result;
}

int mvwinsnstr(WINDOW *a1, int a2, int a3, const char *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winsnstr(a1, a4, a5);
  }

  return result;
}

int mvwinsstr(WINDOW *a1, int a2, int a3, const char *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winsnstr(a1, a4, -1);
  }

  return result;
}

int mvwinstr(WINDOW *a1, int a2, int a3, char *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winnstr(a1, a4, -1);
  }

  return result;
}

int mvwvline(WINDOW *a1, int a2, int a3, chtype a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wvline(a1, a4, a5);
  }

  return result;
}

int redrawwin(WINDOW *a1)
{
  if (a1)
  {
    v1 = *(a1 + 2) + 1;
  }

  else
  {
    v1 = -1;
  }

  return wredrawln(a1, 0, v1);
}

int slk_attr_off(const attr_t a1, void *a2)
{
  if (a2)
  {
    return -1;
  }

  else
  {
    return slk_attroff(a1);
  }
}

int slk_attr_on(attr_t a1, void *a2)
{
  if (a2)
  {
    return -1;
  }

  else
  {
    return slk_attron(a1);
  }
}

int standout(void)
{
  v0 = stdscr;
  if (!stdscr)
  {
    return -1;
  }

  result = 0;
  *(stdscr + 29) = 0;
  *(v0 + 4) = 0x10000;
  return result;
}

int standend(void)
{
  v0 = stdscr;
  if (!stdscr)
  {
    return -1;
  }

  result = 0;
  *(stdscr + 29) = 0;
  *(v0 + 4) = 0;
  return result;
}

int touchwin(WINDOW *a1)
{
  if (a1)
  {
    v1 = *(a1 + 2) + 1;
  }

  else
  {
    v1 = -1;
  }

  return wtouchln(a1, 0, v1, 1);
}

int untouchwin(WINDOW *a1)
{
  if (a1)
  {
    v1 = *(a1 + 2) + 1;
  }

  else
  {
    v1 = -1;
  }

  return wtouchln(a1, 0, v1, 0);
}

int wattrset(WINDOW *a1, int a2)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 29) = BYTE1(a2);
  *(a1 + 4) = a2;
  return result;
}

int wattr_get(WINDOW *a1, attr_t *a2, __int16 *a3, void *a4)
{
  if (a2)
  {
    if (a1)
    {
      v4 = *(a1 + 4);
    }

    else
    {
      v4 = 0;
    }

    *a2 = v4;
  }

  if (a3)
  {
    if (a1)
    {
      v5 = *(a1 + 29);
    }

    else
    {
      LOWORD(v5) = 0;
    }

    *a3 = v5;
  }

  return 0;
}

int wattr_set(WINDOW *a1, attr_t a2, __int16 a3, void *a4)
{
  if (a1)
  {
    *(a1 + 4) = a2 & 0xFFFF00FF;
    *(a1 + 29) = a3;
  }

  return 0;
}

int wstandout(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 29) = 0;
  *(a1 + 4) = 0x10000;
  return result;
}

int wstandend(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 29) = 0;
  *(a1 + 4) = 0;
  return result;
}

int getattrs(const WINDOW *a1)
{
  if (a1)
  {
    LODWORD(a1) = *(a1 + 4);
  }

  return a1;
}

int getcurx(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 1);
  }

  else
  {
    return -1;
  }
}

int getcury(const WINDOW *a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return -1;
  }
}

int getbegx(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 5);
  }

  else
  {
    return -1;
  }
}

int getbegy(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  else
  {
    return -1;
  }
}

int getmaxx(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 3) + 1;
  }

  else
  {
    return -1;
  }
}

int getmaxy(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 2) + 1;
  }

  else
  {
    return -1;
  }
}

int getparx(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 13);
  }

  else
  {
    return -1;
  }
}

int getpary(const WINDOW *a1)
{
  if (a1)
  {
    return *(a1 + 14);
  }

  else
  {
    return -1;
  }
}

WINDOW *__cdecl wgetparent(WINDOW *result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

BOOL is_cleared(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 25);
  }

  return a1;
}

BOOL is_idcok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 29);
  }

  return a1;
}

BOOL is_idlok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 28);
  }

  return a1;
}

BOOL is_immedok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 30);
  }

  return a1;
}

BOOL is_keypad(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 32);
  }

  return a1;
}

BOOL is_leaveok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 26);
  }

  return a1;
}

BOOL is_nodelay(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 9) == 0;
  }

  return a1;
}

BOOL is_notimeout(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 24);
  }

  return a1;
}

BOOL is_pad(const WINDOW *a1)
{
  if (a1)
  {
    LODWORD(a1) = (*(a1 + 6) >> 4) & 1;
  }

  return a1;
}

BOOL is_scrollok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 27);
  }

  return a1;
}

BOOL is_subwin(const WINDOW *a1)
{
  if (a1)
  {
    LOWORD(a1) = *(a1 + 6) & 1;
  }

  return a1;
}

BOOL is_syncok(const WINDOW *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *(a1 + 31);
  }

  return a1;
}

int wgetdelay(const WINDOW *a1)
{
  if (a1)
  {
    LODWORD(a1) = *(a1 + 9);
  }

  return a1;
}

int wgetscrreg(const WINDOW *a1, int *a2, int *a3)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *a2 = *(a1 + 24);
  *a3 = *(a1 + 25);
  return result;
}

uint64_t getbkgrnd(_OWORD *a1)
{
  if (stdscr)
  {
    v1 = *(stdscr + 88);
    *(a1 + 12) = *(stdscr + 100);
    *a1 = v1;
  }

  return 0;
}

uint64_t mvadd_wch(int a1, int a2, _OWORD *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wadd_wch(v5, a3);
  }

  return result;
}

uint64_t mvadd_wchnstr(int a1, int a2, uint64_t a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wadd_wchnstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvadd_wchstr(int a1, int a2, uint64_t a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wadd_wchnstr(v5, a3, -1);
  }

  return result;
}

uint64_t mvaddnwstr(int a1, int a2, __int32 *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return waddnwstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvaddwstr(int a1, int a2, __int32 *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return waddnwstr(v5, a3, -1);
  }

  return result;
}

uint64_t mvget_wch(int a1, int a2, _DWORD *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wget_wch(v5, a3);
  }

  return result;
}

uint64_t mvget_wstr(int a1, int a2, __int32 *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wgetn_wstr(v5, a3, 0xFFFFFFFF);
  }

  return result;
}

uint64_t mvgetn_wstr(int a1, int a2, __int32 *a3, unsigned int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wgetn_wstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvhline_set(int a1, int a2, _OWORD *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return whline_set(v7, a3, a4);
  }

  return result;
}

double mvin_wch(int a1, int a2, uint64_t a3)
{
  if (wmove(stdscr, a1, a2) != -1)
  {
    v5 = stdscr;

    *&result = win_wch(v5, a3).n128_u64[0];
  }

  return result;
}

uint64_t mvin_wchnstr(int a1, int a2, uint64_t a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return win_wchnstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvin_wchstr(int a1, int a2, uint64_t a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return win_wchnstr(v5, a3, -1);
  }

  return result;
}

uint64_t mvinnwstr(int a1, int a2, uint64_t a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return winnwstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvins_nwstr(int a1, int a2, __int32 *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wins_nwstr(v7, a3, a4);
  }

  return result;
}

uint64_t mvins_wch(int a1, int a2, uint64_t a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wins_wch(v5, a3);
  }

  return result;
}

uint64_t mvins_wstr(int a1, int a2, __int32 *a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return wins_nwstr(v5, a3, -1);
  }

  return result;
}

uint64_t mvinwstr(int a1, int a2, uint64_t a3)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v5 = stdscr;

    return winwstr(v5, a3);
  }

  return result;
}

uint64_t mvvline_set(int a1, int a2, _OWORD *a3, int a4)
{
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    v7 = stdscr;

    return wvline_set(v7, a3, a4);
  }

  return result;
}

uint64_t mvwadd_wch(WINDOW *a1, int a2, int a3, _OWORD *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wadd_wch(a1, a4);
  }

  return result;
}

uint64_t mvwadd_wchnstr(WINDOW *a1, int a2, int a3, uint64_t a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wadd_wchnstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwadd_wchstr(WINDOW *a1, int a2, int a3, uint64_t a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wadd_wchnstr(a1, a4, -1);
  }

  return result;
}

uint64_t mvwaddnwstr(WINDOW *a1, int a2, int a3, __int32 *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddnwstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwaddwstr(WINDOW *a1, int a2, int a3, __int32 *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return waddnwstr(a1, a4, -1);
  }

  return result;
}

uint64_t mvwget_wch(WINDOW *a1, int a2, int a3, _DWORD *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wget_wch(a1, a4);
  }

  return result;
}

uint64_t mvwget_wstr(WINDOW *a1, int a2, int a3, __int32 *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wgetn_wstr(a1, a4, 0xFFFFFFFF);
  }

  return result;
}

uint64_t mvwgetn_wstr(WINDOW *a1, int a2, int a3, __int32 *a4, unsigned int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wgetn_wstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwhline_set(WINDOW *a1, int a2, int a3, _OWORD *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return whline_set(a1, a4, a5);
  }

  return result;
}

double mvwin_wch(__int16 *a1, int a2, int a3, uint64_t a4)
{
  if (wmove(a1, a2, a3) != -1)
  {

    *&result = win_wch(a1, a4).n128_u64[0];
  }

  return result;
}

uint64_t mvwin_wchnstr(WINDOW *a1, int a2, int a3, uint64_t a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return win_wchnstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwin_wchstr(WINDOW *a1, int a2, int a3, uint64_t a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return win_wchnstr(a1, a4, -1);
  }

  return result;
}

uint64_t mvwinnwstr(WINDOW *a1, int a2, int a3, uint64_t a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winnwstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwins_nwstr(WINDOW *a1, int a2, int a3, __int32 *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wins_nwstr(a1, a4, a5);
  }

  return result;
}

uint64_t mvwins_wch(WINDOW *a1, int a2, int a3, uint64_t a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wins_wch(a1, a4);
  }

  return result;
}

uint64_t mvwins_wstr(WINDOW *a1, int a2, int a3, __int32 *a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wins_nwstr(a1, a4, -1);
  }

  return result;
}

uint64_t mvwinwstr(WINDOW *a1, int a2, int a3, uint64_t a4)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return winwstr(a1, a4);
  }

  return result;
}

uint64_t mvwvline_set(WINDOW *a1, int a2, int a3, _OWORD *a4, int a5)
{
  result = wmove(a1, a2, a3);
  if (result != -1)
  {

    return wvline_set(a1, a4, a5);
  }

  return result;
}

uint64_t wgetbkgrnd(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    v2 = *(a1 + 88);
    *(a2 + 12) = *(a1 + 100);
    *a2 = v2;
  }

  return 0;
}

void sub_2994AA7DC(const char *a1)
{
  perror(a1);
  v2 = _nc_tic_dir(0);
  _nc_syserr_abort("can't open %s/%s", v2, a1);
}