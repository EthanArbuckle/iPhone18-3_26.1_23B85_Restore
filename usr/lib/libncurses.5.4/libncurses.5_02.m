int halfdelay(int a1)
{
  if ((a1 - 1) > 0xFE || cur_term == 0)
  {
    return -1;
  }

  cbreak();
  result = 0;
  *(SP + 784) = a1 + 1;
  return result;
}

int nodelay(WINDOW *a1, BOOL a2)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 9) = a2 - 1;
  return result;
}

int notimeout(WINDOW *a1, BOOL a2)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 24) = a2;
  return result;
}

void wtimeout(WINDOW *a1, int a2)
{
  if (a1)
  {
    *(a1 + 9) = a2;
  }
}

int keypad(WINDOW *a1, BOOL a2)
{
  if (!a1)
  {
    return -1;
  }

  v2 = a2;
  *(a1 + 32) = a2;
  v3 = _nc_screen_of(a1);

  return _nc_keypad(v3, v2);
}

uint64_t _nc_keypad(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  Strings = cur_term->type.Strings;
  if (a2)
  {
    if (_nc_putp("keypad_xmit", Strings[89]) != -1)
    {
      _nc_flush();
    }

    if ((*(a1 + 176) & 1) == 0)
    {
      _nc_init_keytry(a1);
      *(a1 + 176) = 1;
    }
  }

  else
  {
    v6 = Strings[88];
    if (v6 && _nc_putp("keypad_local", v6) != -1)
    {
      _nc_flush();
    }
  }

  result = 0;
  *(a1 + 177) = a2 != 0;
  return result;
}

int meta(WINDOW *a1, BOOL a2)
{
  v2 = a2;
  if (!a1)
  {
    v3 = SP;
    if (SP)
    {
      goto LABEL_3;
    }

    return -1;
  }

  v3 = _nc_screen_of(a1);
  if (!v3)
  {
    return -1;
  }

LABEL_3:
  *(v3 + 792) = v2;
  v4 = 101;
  if (v2)
  {
    v4 = 102;
    v5 = "meta_on";
  }

  else
  {
    v5 = "meta_off";
  }

  _nc_putp(v5, cur_term->type.Strings[v4]);
  return 0;
}

int curs_set(int a1)
{
  result = -1;
  if (a1 <= 2 && SP)
  {
    v3 = *(SP + 760);
    if (v3 == a1)
    {
      return a1;
    }

    else
    {
      Strings = cur_term->type.Strings;
      if (a1)
      {
        if (a1 == 1)
        {
          v5 = Strings[16];
          v6 = "cursor_normal";
        }

        else
        {
          v5 = Strings[20];
          v6 = "cursor_visible";
        }
      }

      else
      {
        v5 = Strings[13];
        v6 = "cursor_invisible";
      }

      result = _nc_putp(v6, v5);
      if (result != -1)
      {
        _nc_flush();
        if (v3 == -1)
        {
          result = 1;
        }

        else
        {
          result = v3;
        }
      }

      *(SP + 760) = a1;
    }
  }

  return result;
}

uint64_t _nc_putp_flush(int a1, char *a2)
{
  v2 = _nc_putp(a1, a2);
  if (v2 != -1)
  {
    _nc_flush();
  }

  return v2;
}

int typeahead(int a1)
{
  if (!cur_term)
  {
    return -1;
  }

  result = 0;
  *(SP + 44) = a1;
  return result;
}

uint64_t sub_29949338C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (*(v2 + 18) != a1 && !sub_29949338C(a1, *v2))
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2994933F8(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || !a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 10);
  v4 = *(a1 + 8);
  v5 = *(a1 + 6) + v3;
  v6 = *(a1 + 4) + v4;
  v7 = *(a2 + 10);
  v8 = *(a2 + 8);
  v9 = *(a2 + 6) + v7;
  v10 = *(a2 + 4) + v8;
  v11 = v9 < v3 || v5 < v7;
  v12 = v11 || v10 < v4;
  if (v12 || v6 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 <= v8)
  {
    v15 = *(a2 + 8);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  v16 = v15 - v4;
  if (v3 <= v7)
  {
    v17 = *(a2 + 10);
  }

  else
  {
    v17 = *(a1 + 10);
  }

  v18 = v17 - v3;
  if (v6 >= v10)
  {
    v19 = *(a2 + 4) + v8;
  }

  else
  {
    v19 = v6;
  }

  if (v5 >= v9)
  {
    v5 = *(a2 + 6) + v7;
  }

  return copywin(a1, a2, v16, v18, v15 - v8, v17 - v7, v19 - v8, v5 - v7, a3);
}

int copywin(const WINDOW *a1, WINDOW *a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  result = -1;
  if (a1)
  {
    if (a2)
    {
      if (a7 >= a5 && a8 >= a6)
      {
        v12 = a3;
        *(a2 + 22);
        if (a3 - a5 + a7 <= *(a1 + 2) + 1 && a4 - a6 + a8 <= *(a1 + 3) + 1 && *(a2 + 2) >= a7 && *(a2 + 3) >= a8)
        {
          v39 = _nc_abiver(&_nc_abiver);
          v19 = 0;
          v21 = v20 & 0xFFFFFF00;
          v23 = v22 + 1;
          v24 = v16;
          v43 = v15;
          v44 = v18;
          v41 = v14;
          v42 = v13;
          v40 = v20 & 0xFFFFFF00;
          while ((v24 & 0x80000000) != 0 || (v12 & 0x80000000) != 0)
          {
LABEL_40:
            ++v12;
            if (v24++ == v18)
            {
              return (v19 & 1) - 1;
            }
          }

          v25 = 0;
          v26 = v17;
          v27 = v15;
          while (1)
          {
            if ((v26 & 0x80000000) != 0 || (v27 & 0x80000000) != 0)
            {
              goto LABEL_37;
            }

            if (a9)
            {
              v28 = (*(*(a1 + 5) + 16 * v12) + 28 * v27);
              v29 = v28[1];
              if (v29 == 32)
              {
                goto LABEL_36;
              }

              v30 = (*(*(a2 + 5) + 16 * v24) + 28 * v26);
              if (*v30 == *v28 && v30[1] == v29 && v30[2] == v28[2] && v30[3] == v28[3] && v30[4] == v28[4] && v30[5] == v28[5] && (*v39 <= 0x5FFFFu || v30[6] == v28[6]))
              {
                goto LABEL_36;
              }

              v31 = *v28;
              *(v30 + 3) = *(v28 + 3);
              *v30 = v31;
              v32 = *(*(a2 + 5) + 16 * v24);
              *(v32 + 28 * v26) = *(*(*(a1 + 5) + 16 * v12) + 28 * v27) & v14 | v21 | *(v32 + 28 * v26);
            }

            else
            {
              v33 = (*(*(a2 + 5) + 16 * v24) + 28 * v26);
              v34 = (*(*(a1 + 5) + 16 * v12) + 28 * v27);
              if (*v33 == *v34 && v33[1] == v34[1] && v33[2] == v34[2] && v33[3] == v34[3] && v33[4] == v34[4] && v33[5] == v34[5] && (*v39 <= 0x5FFFFu || v33[6] == v34[6]))
              {
                goto LABEL_36;
              }

              v35 = *v34;
              *(v33 + 3) = *(v34 + 3);
              *v33 = v35;
            }

            v25 = 1;
LABEL_36:
            v19 = 1;
LABEL_37:
            ++v27;
            if (v23 == ++v26)
            {
              if (v25)
              {
                v36 = v17;
                v37 = v16;
                wtouchln(a2, v16, v13 + 1, 1);
                v21 = v40;
                v14 = v41;
                v13 = v42;
                v15 = v43;
                v18 = v44;
                v16 = v37;
                v17 = v36;
              }

              goto LABEL_40;
            }
          }
        }
      }
    }
  }

  return result;
}

WINDOW *__cdecl newpad(int a1, int a2)
{
  v2 = 0;
  if (a1 >= 1 && a2 >= 1)
  {
    v2 = _nc_makenew(a1, a2, 0, 0, 16);
    if (v2)
    {
      v5 = _nc_abiver(&_nc_abiver);
      v6 = 0;
      while (1)
      {
        v7 = calloc(a2, 0x1CuLL);
        *(*(v2 + 5) + 16 * v6) = v7;
        if (!v7)
        {
          break;
        }

        do
        {
          *(v7 + 6) = 0;
          *(v7 + 8) = 0u;
          *v7 = 0x2000000000;
          if (*v5 >= 0x60000u)
          {
            *(v7 + 6) = 0;
            *v7 = 0;
          }

          v7 += 28;
        }

        while (v7 < *(*(v2 + 5) + 16 * v6) + 28 * a2);
        if (++v6 == a1)
        {
          return v2;
        }
      }

      _nc_freewin(v2);
      return 0;
    }
  }

  return v2;
}

WINDOW *__cdecl subpad(WINDOW *result, int a2, int a3, int a4, int a5)
{
  if (result)
  {
    if ((*(result + 6) & 0x10) != 0)
    {
      return derwin(result, a2, a3, a4, a5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int prefresh(WINDOW *a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  if (pnoutrefresh(a1, a2, a3, a4, a5, a6, a7) == -1 || doupdate() == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int pnoutrefresh(WINDOW *a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  if (!a1)
  {
    return -1;
  }

  if ((*(a1 + 6) & 0x10) == 0)
  {
    return -1;
  }

  v14 = _nc_screen_of(a1);
  v15 = a2 & ~(a2 >> 31);
  LODWORD(v16) = a3 & ~(a3 >> 31);
  v17 = a4 & ~(a4 >> 31);
  LODWORD(v18) = a5 & ~(a5 >> 31);
  v19 = v15 - v17 + a6;
  v20 = *(a1 + 2);
  v24 = v20 < v19;
  v21 = v20 - (v15 - v17);
  LODWORD(v22) = v15 - v17 + v21;
  if (v24)
  {
    v22 = v22;
  }

  else
  {
    v21 = a6;
    v22 = v19;
  }

  v68 = v22;
  v23 = *(a1 + 3);
  v24 = v23 < v16 - v18 + a7;
  v25 = v23 - (v16 - v18);
  v26 = v24 ? v25 : a7;
  v27 = v24 ? v16 - v18 + v25 : v16 - v18 + a7;
  v67 = v27;
  if (v21 >= *(v14 + 128))
  {
    return -1;
  }

  v28 = v14;
  result = -1;
  if (v18 <= v26 && v17 <= v21 && v26 < *(v28 + 130))
  {
    v63 = v26;
    v64 = v21;
    v65 = a4 & ~(a4 >> 31);
    v66 = a2 & ~(a2 >> 31);
    if (v15 <= v68)
    {
      v30 = *(a1 + 42) + v17;
      v31 = _nc_abiver(&_nc_abiver);
      v34 = a2 & ~(a2 >> 31);
      v35 = 28 * v16;
      v36 = 28 * v18;
      while (1)
      {
        v37 = *(v28 + 144);
        if (v33 > *(v37 + 4))
        {
          goto LABEL_46;
        }

        v38 = *(a1 + 5) + 16 * v34;
        if (v16 <= v67)
        {
          break;
        }

LABEL_44:
        *(v38 + 8) = -1;
        ++v33;
        if (v34++ >= v68)
        {
          goto LABEL_46;
        }
      }

      v39 = 0;
      v40 = *(v37 + 40) + 16 * v33;
      v41 = v16 - 1;
      v42 = v18;
      while (1)
      {
        v43 = (v35 + v39 + *v38);
        v44 = *v43;
        v45 = v43[1];
        v47 = v43[2];
        v46 = v43[3];
        v49 = v43[4];
        v48 = v43[5];
        v50 = v43[6];
        if (!v39 && v35 && (v44 & 0xFE) - 2 <= 0x1D)
        {
          v51 = *(*v38 + 28 * v16 - 28);
          v50 = BYTE1(v51);
          v44 = *v31 > v32 ? v51 & 0xFFFF00FF | (BYTE1(v51) << 8) : *(*v38 + 28 * v16 - 28);
          v45 = 32;
          v47 = 0;
          v46 = 0;
          v49 = 0;
          v48 = 0;
          if (*v31 <= v32)
          {
            v50 = 0;
          }
        }

        v52 = *v40;
        v53 = *v40 + v36;
        if (v44 == *(v53 + v39) && v45 == *(v53 + v39 + 4))
        {
          v54 = v52 + v36 + v39;
          if (v47 == *(v54 + 8) && v46 == *(v54 + 12))
          {
            v55 = v52 + v36 + v39;
            if (v49 == *(v55 + 16) && v48 == *(v55 + 20) && (*v31 <= v32 || v50 == *(v52 + v36 + v39 + 24)))
            {
              goto LABEL_43;
            }
          }
        }

        *(v53 + v39) = v44;
        v56 = (v53 + v39);
        v56[1] = v45;
        v56[2] = v47;
        v56[3] = v46;
        v56[4] = v49;
        v56[5] = v48;
        v56[6] = v50;
        v57 = *(v40 + 8);
        if (v57 == -1)
        {
          *(v40 + 10) = v42;
        }

        else if (v42 >= v57)
        {
          if (v42 > *(v40 + 10))
          {
            *(v40 + 10) = v42;
          }

          goto LABEL_43;
        }

        *(v40 + 8) = v42;
LABEL_43:
        ++v42;
        ++v41;
        v39 += 28;
        if (v41 >= v67)
        {
          goto LABEL_44;
        }
      }
    }

LABEL_46:
    *(a1 + 5) = v18;
    *(a1 + 4) = v65;
    if (*(a1 + 25) == 1)
    {
      *(a1 + 25) = 0;
      *(*(v28 + 144) + 25) = 1;
    }

    v59 = *(a1 + 26);
    if (!v59)
    {
      v60 = *a1;
      if (v66 <= v60)
      {
        v61 = *(a1 + 1);
        if (v16 <= v61 && v68 >= v60 && v67 >= v61)
        {
          v62 = *(v28 + 144);
          *v62 = v65 - v66 + v60 + *(a1 + 42);
          v62[1] = v18 - v16 + v61;
        }
      }
    }

    result = 0;
    *(*(v28 + 144) + 26) = v59;
    *(a1 + 6) &= ~0x20u;
    *(a1 + 36) = v66;
    *(a1 + 37) = v16;
    *(a1 + 38) = v65;
    *(a1 + 39) = v18;
    *(a1 + 40) = v64;
    *(a1 + 41) = v63;
  }

  return result;
}

int pechochar(WINDOW *a1, const chtype a2)
{
  if (!a1)
  {
    return -1;
  }

  if ((*(a1 + 6) & 0x10) != 0)
  {
    waddch(a1, a2);
    prefresh(a1, *(a1 + 36), *(a1 + 37), *(a1 + 38), *(a1 + 39), *(a1 + 40), *(a1 + 41));
    return 0;
  }

  else
  {

    return wechochar(a1, a2);
  }
}

uint64_t pecho_wchar(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 12) & 0x10) != 0)
  {
    wadd_wch(a1, a2);
    prefresh(a1, *(a1 + 72), *(a1 + 74), *(a1 + 76), *(a1 + 78), *(a1 + 80), *(a1 + 82));
    return 0;
  }

  else
  {

    return wecho_wchar(a1, a2);
  }
}

int vwprintw(WINDOW *a1, const char *a2, va_list a3)
{
  v4 = _nc_printf_string(a2, a3);
  if (!v4)
  {
    return -1;
  }

  return waddnstr(a1, v4, -1);
}

int mvprintw(int a1, int a2, const char *a3, ...)
{
  va_start(va, a3);
  result = wmove(stdscr, a1, a2);
  if (result != -1)
  {
    return vwprintw(stdscr, a3, va);
  }

  return result;
}

int mvwprintw(WINDOW *a1, int a2, int a3, const char *a4, ...)
{
  va_start(va, a4);
  result = wmove(a1, a2, a3);
  if (result != -1)
  {
    return vwprintw(a1, a4, va);
  }

  return result;
}

int raw(void)
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = cur_term;
  if (cur_term)
  {
    v1 = *&cur_term->Nttyb.c_cflag;
    *&v8.c_iflag = *&cur_term->Nttyb.c_iflag;
    *&v8.c_cflag = v1;
    v8.c_ospeed = cur_term->Nttyb.c_ospeed;
    v2 = DWORD2(v1) & 0xFFFFFA7F;
    v3 = *&cur_term->Nttyb.c_cc[16];
    *v8.c_cc = *cur_term->Nttyb.c_cc;
    *&v8.c_cc[16] = v3;
    v8.c_lflag = v2;
    v8.c_iflag = v8.c_iflag & 0xFFFFFDF5;
    *&v8.c_cc[16] = 1;
    result = _nc_set_tty_mode(&v8);
    if (!result)
    {
      *(SP + 780) = 0x100000001;
      v5 = *&v8.c_cflag;
      *&v0->Nttyb.c_iflag = *&v8.c_iflag;
      v6 = *v8.c_cc;
      *&v0->Nttyb.c_cc[16] = *&v8.c_cc[16];
      *v0->Nttyb.c_cc = v6;
      v0->Nttyb.c_ospeed = v8.c_ospeed;
      *&v0->Nttyb.c_cflag = v5;
    }
  }

  else
  {
    result = -1;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

int cbreak(void)
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = cur_term;
  if (cur_term)
  {
    v1 = *&cur_term->Nttyb.c_cflag;
    *&v7.c_iflag = *&cur_term->Nttyb.c_iflag;
    *&v7.c_cflag = v1;
    v2 = *&cur_term->Nttyb.c_cc[16];
    *v7.c_cc = *cur_term->Nttyb.c_cc;
    *&v7.c_cc[16] = v2;
    v7.c_ospeed = cur_term->Nttyb.c_ospeed;
    v7.c_iflag = v7.c_iflag & 0xFFFFFEFF;
    v7.c_lflag = v7.c_lflag & 0xFFFFFE7F | 0x80;
    *&v7.c_cc[16] = 1;
    result = _nc_set_tty_mode(&v7);
    if (!result)
    {
      *(SP + 784) = 1;
      v4 = *&v7.c_cflag;
      *&v0->Nttyb.c_iflag = *&v7.c_iflag;
      v0->Nttyb.c_ospeed = v7.c_ospeed;
      v5 = *v7.c_cc;
      *&v0->Nttyb.c_cc[16] = *&v7.c_cc[16];
      *v0->Nttyb.c_cc = v5;
      *&v0->Nttyb.c_cflag = v4;
    }
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void qiflush(void)
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = cur_term;
  if (cur_term)
  {
    v1 = *&cur_term->Nttyb.c_cflag;
    v2 = *&cur_term->Nttyb.c_cc[16];
    *v6.c_cc = *cur_term->Nttyb.c_cc;
    *&v6.c_cc[16] = v2;
    v6.c_ospeed = cur_term->Nttyb.c_ospeed;
    *&v6.c_iflag = *&cur_term->Nttyb.c_iflag;
    v6.c_cflag = v1;
    v6.c_lflag = DWORD2(v1) & 0x7FFFFFFF;
    if (!_nc_set_tty_mode(&v6))
    {
      v3 = *&v6.c_iflag;
      *&v0->Nttyb.c_cflag = *&v6.c_cflag;
      v4 = *&v6.c_cc[16];
      *v0->Nttyb.c_cc = *v6.c_cc;
      *&v0->Nttyb.c_cc[16] = v4;
      v0->Nttyb.c_ospeed = v6.c_ospeed;
      *&v0->Nttyb.c_iflag = v3;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

int noraw(void)
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = cur_term;
  if (cur_term)
  {
    v1 = *&cur_term->Nttyb.c_cflag;
    *&v8.c_iflag = *&cur_term->Nttyb.c_iflag;
    *&v8.c_cflag = v1;
    v8.c_ospeed = cur_term->Nttyb.c_ospeed;
    v2 = cur_term->Ottyb.c_lflag & 0x400 | *(&v1 + 1);
    v3 = *&cur_term->Nttyb.c_cc[16];
    *v8.c_cc = *cur_term->Nttyb.c_cc;
    *&v8.c_cc[16] = v3;
    v8.c_lflag = v2 | 0x180;
    v8.c_iflag |= 0x20AuLL;
    result = _nc_set_tty_mode(&v8);
    if (!result)
    {
      *(SP + 780) = 0;
      v5 = *&v8.c_cflag;
      *&v0->Nttyb.c_iflag = *&v8.c_iflag;
      v0->Nttyb.c_ospeed = v8.c_ospeed;
      v6 = *v8.c_cc;
      *&v0->Nttyb.c_cc[16] = *&v8.c_cc[16];
      *v0->Nttyb.c_cc = v6;
      *&v0->Nttyb.c_cflag = v5;
    }
  }

  else
  {
    result = -1;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

int nocbreak(void)
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = cur_term;
  if (cur_term)
  {
    v1 = *&cur_term->Nttyb.c_cflag;
    *&v7.c_iflag = *&cur_term->Nttyb.c_iflag;
    *&v7.c_cflag = v1;
    v2 = *&cur_term->Nttyb.c_cc[16];
    *v7.c_cc = *cur_term->Nttyb.c_cc;
    *&v7.c_cc[16] = v2;
    v7.c_ospeed = cur_term->Nttyb.c_ospeed;
    v7.c_lflag = *(&v1 + 1) | 0x100;
    v7.c_iflag |= 0x100uLL;
    result = _nc_set_tty_mode(&v7);
    if (!result)
    {
      *(SP + 784) = 0;
      v4 = *&v7.c_cflag;
      *&v0->Nttyb.c_iflag = *&v7.c_iflag;
      v0->Nttyb.c_ospeed = v7.c_ospeed;
      v5 = *v7.c_cc;
      *&v0->Nttyb.c_cc[16] = *&v7.c_cc[16];
      *v0->Nttyb.c_cc = v5;
      *&v0->Nttyb.c_cflag = v4;
    }
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void noqiflush(void)
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = cur_term;
  if (cur_term)
  {
    v1 = *&cur_term->Nttyb.c_cflag;
    v2 = *&cur_term->Nttyb.c_cc[16];
    *v6.c_cc = *cur_term->Nttyb.c_cc;
    *&v6.c_cc[16] = v2;
    v6.c_ospeed = cur_term->Nttyb.c_ospeed;
    *&v6.c_iflag = *&cur_term->Nttyb.c_iflag;
    v6.c_cflag = v1;
    v6.c_lflag = *(&v1 + 1) | 0x80000000;
    if (!_nc_set_tty_mode(&v6))
    {
      v3 = *&v6.c_iflag;
      *&v0->Nttyb.c_cflag = *&v6.c_cflag;
      v4 = *&v6.c_cc[16];
      *v0->Nttyb.c_cc = *v6.c_cc;
      *&v0->Nttyb.c_cc[16] = v4;
      v0->Nttyb.c_ospeed = v6.c_ospeed;
      *&v0->Nttyb.c_iflag = v3;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

int intrflush(WINDOW *a1, BOOL a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (SP && (v2 = cur_term) != 0)
  {
    v3 = *&cur_term->Nttyb.c_cflag;
    v4 = *&cur_term->Nttyb.c_cc[16];
    *v10.c_cc = *cur_term->Nttyb.c_cc;
    *&v10.c_cc[16] = v4;
    v10.c_ospeed = cur_term->Nttyb.c_ospeed;
    *&v10.c_iflag = *&cur_term->Nttyb.c_iflag;
    *&v10.c_cflag = v3;
    v5 = DWORD2(v3) & 0x7FFFFFFF;
    if (!a2)
    {
      v5 = *(&v3 + 1) | 0x80000000;
    }

    v10.c_lflag = v5;
    result = _nc_set_tty_mode(&v10);
    if (!result)
    {
      v7 = *&v10.c_iflag;
      *&v2->Nttyb.c_cflag = *&v10.c_cflag;
      v8 = *&v10.c_cc[16];
      *v2->Nttyb.c_cc = *v10.c_cc;
      *&v2->Nttyb.c_cc[16] = v8;
      v2->Nttyb.c_ospeed = v10.c_ospeed;
      *&v2->Nttyb.c_iflag = v7;
    }
  }

  else
  {
    result = -1;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

int wredrawln(WINDOW *a1, int a2, int a3)
{
  if (!a1)
  {
    return -1;
  }

  v6 = _nc_screen_of(a1);
  v7 = a2 & ~(a2 >> 31);
  result = wtouchln(a1, v7, a3, 1);
  if (result != -1)
  {
    result = wtouchln(*(v6 + 136), v7 + *(a1 + 4), a3, 1);
    if (result != -1)
    {
      v9 = v7 + a3;
      v10 = *(v6 + 136);
      v11 = *(v10 + 4) - *(a1 + 4) + 1;
      if (v7 + a3 >= v11)
      {
        v12 = *(v10 + 4) - *(a1 + 4) + 1;
      }

      else
      {
        v12 = v7 + a3;
      }

      v13 = *(a1 + 2);
      if (v12 >= v13 + 1)
      {
        v12 = v13 + 1;
      }

      v14 = *(v10 + 6) - *(a1 + 5);
      if (*(a1 + 3) + 1 >= (v14 + 1))
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = *(a1 + 3) + 1;
      }

      if (v7 < v12)
      {
        v16 = 28 * v15;
        if (*(a1 + 2) + 1 < v11)
        {
          v11 = *(a1 + 2) + 1;
        }

        if (v11 >= v9)
        {
          v17 = v9;
        }

        else
        {
          v17 = v11;
        }

        do
        {
          v18 = v7 + *(a1 + 4);
          bzero((*(*(*(v6 + 136) + 40) + 16 * v18) + 28 * *(a1 + 5)), v16);
          _nc_make_oldhash(v18);
          ++v7;
        }

        while (v17 != v7);
      }

      return 0;
    }
  }

  return result;
}

int wrefresh(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *(SP + 136);
  if (v2 == a1)
  {
    *(v2 + 25) = 1;

    return doupdate();
  }

  else
  {
    if (wnoutrefresh(a1))
    {
      return -1;
    }

    if (*(a1 + 25) == 1)
    {
      *(*(SP + 144) + 25) = 1;
    }

    result = doupdate();
    *(a1 + 25) = 0;
  }

  return result;
}

int wnoutrefresh(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  if ((*(a1 + 6) & 0x10) != 0)
  {
    return -1;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 4);
  v4 = SP;
  v5 = *(SP + 144);
  v6 = *(a1 + 100);
  *(v5 + 88) = *(a1 + 88);
  *(v5 + 100) = v6;
  *(*(v4 + 144) + 16) = *(a1 + 4);
  wsyncdown(a1);
  *(a1 + 6) &= ~0x20u;
  v7 = SP;
  *(*(SP + 144) + 6);
  *(a1 + 3);
  if (*(a1 + 2) < 0)
  {
    goto LABEL_75;
  }

  v8 = *(a1 + 42) + v3;
  v9 = _nc_abiver(&_nc_abiver);
  v14 = 0;
  do
  {
    v7 = SP;
    v15 = *(SP + 144);
    if (v13 > *(v15 + 4))
    {
      goto LABEL_75;
    }

    v16 = *(a1 + 5) + 16 * v14;
    v17 = *(v16 + 8);
    if (v17 != -1)
    {
      v18 = *(v16 + 10);
      if (v11 >= v18)
      {
        v19 = *(v16 + 10);
      }

      else
      {
        v19 = v11;
      }

      LODWORD(v20) = v17 + v2;
      v21 = *v16;
      v22 = *(*v16 + 28 * *(v16 + 8));
      v23 = v22 - 2;
      v24 = (v20 - v22 + 1) & ~((v20 - v22 + 1) >> 31);
      v25 = v24 - v2;
      if (v17 + v2 <= v24)
      {
        v25 = *(v16 + 8);
      }

      if (v20 < v24)
      {
        v24 = v17 + v2;
      }

      if (v23 <= 0x1D)
      {
        v17 = v25;
        LODWORD(v20) = v24;
      }

      if (*(v21 + 28 * v19))
      {
        v18 = v18;
        if (v18 >= v12)
        {
          v18 = v12;
        }

        if (v18 >= v10)
        {
          v26 = v10;
        }

        else
        {
          v26 = v18;
        }

        v27 = v11 + v26 - v19;
        v28 = (v21 + 28 * v26 + 28);
        do
        {
          v19 = v26;
          if (v27 == v26)
          {
            break;
          }

          ++v26;
          v29 = *v28;
          v28 += 28;
        }

        while (v29 != 1);
      }

      v30 = *(v15 + 40) + 16 * v13;
      if (v19 >= *(a1 + 3))
      {
        v31 = *(a1 + 3);
      }

      else
      {
        v31 = v19;
      }

      v32 = v31 + v2;
      v33 = *v30;
      v34 = *(*v30 + 28 * v20);
      v35 = v34 - 2;
      v36 = (v20 - v34 + 1) & ~((v20 - v34 + 1) >> 31);
      if (v35 >= 0x1E)
      {
        v36 = v20;
      }

      if (*(v33 + 28 * v32))
      {
        v37 = *(a1 + 3);
        v38 = *(v15 + 6);
        if (v19 < v37)
        {
          v37 = v19;
        }

        v39 = v37 + v2;
        if (v32 <= v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = v31 + v2;
        }

        v41 = v40 + v37 - v31;
        v42 = v2 - 1 + v37;
        v43 = v40 - v32;
        v44 = (v33 + 28 * v39 + 28);
        while (v43)
        {
          v45 = *v44;
          v44 += 7;
          ++v42;
          --v43;
          if ((v45 & 0xFEu) - 2 >= 0x1E)
          {
            goto LABEL_42;
          }
        }

        v42 = v41;
      }

      else
      {
        v42 = v31 + v2;
      }

LABEL_42:
      v46 = v42 > v32 || v36 < v20;
      if (v46 && v36 <= v42)
      {
        v47 = v36;
        v48 = 28 * v36;
        for (i = v42 - v36 + 1; i; --i)
        {
          v50 = (*v30 + v48);
          *(v50 + 12) = *(&xmmword_2994B0668 + 12);
          *v50 = xmmword_2994B0668;
          v51 = *(v30 + 8);
          if (v51 == -1)
          {
            *(v30 + 10) = v47;
          }

          else if (v47 >= v51)
          {
            if (v47 > *(v30 + 10))
            {
              *(v30 + 10) = v47;
            }

            goto LABEL_55;
          }

          *(v30 + 8) = v47;
LABEL_55:
          ++v47;
          v48 += 28;
        }
      }

      if (v17 <= v19)
      {
        v52 = 0;
        v20 = v20;
        v53 = v19 + 1;
        v54 = 28 * v17;
        v55 = v53 - v17;
        v56 = 28 * v20;
        do
        {
          v57 = *v16;
          v58 = (*v16 + v54 + v52);
          v59 = *v30;
          v60 = (*v30 + v56 + v52);
          if (*v58 != *v60 || (v61 = v57 + v54 + v52, v62 = v59 + v56 + v52, *(v61 + 4) != *(v62 + 4)) || *(v61 + 8) != *(v62 + 8) || (v63 = v57 + v54 + v52, v64 = v59 + v56 + v52, *(v63 + 12) != *(v64 + 12)) || *(v63 + 16) != *(v64 + 16) || *(v57 + v54 + v52 + 20) != *(v59 + v56 + v52 + 20) || *v9 >= 0x60000u && *(v57 + v54 + v52 + 24) != *(v59 + v56 + v52 + 24))
          {
            v65 = *v58;
            *(v60 + 12) = *(v58 + 12);
            *v60 = v65;
            v66 = *(v30 + 8);
            if (v66 == -1)
            {
              *(v30 + 10) = v20;
            }

            else if (v20 >= v66)
            {
              if (v20 > *(v30 + 10))
              {
                *(v30 + 10) = v20;
              }

              goto LABEL_72;
            }

            *(v30 + 8) = v20;
          }

LABEL_72:
          ++v20;
          v52 += 28;
          --v55;
        }

        while (v55);
      }
    }

    *(v16 + 8) = -1;
    ++v13;
    v46 = v14++ < *(a1 + 2);
  }

  while (v46);
  v7 = SP;
LABEL_75:
  if (*(a1 + 25) == 1)
  {
    *(a1 + 25) = 0;
    *(*(v7 + 144) + 25) = 1;
  }

  v67 = *(a1 + 26);
  v68 = *(v7 + 144);
  if (v67 != 1)
  {
    *v68 = *(a1 + 4) + *a1 + *(a1 + 42);
    *(v68 + 2) = *(a1 + 5) + *(a1 + 1);
  }

  result = 0;
  *(v68 + 26) = v67;
  return result;
}

int restartterm(char *a1, int a2, int *a3)
{
  if (_nc_setupterm(a1, a2, a3, 0) || !SP)
  {
    return -1;
  }

  v4 = *(SP + 784);
  v5 = *(SP + 780);
  v6 = *(SP + 776);
  if (*(SP + 788))
  {
    echo();
    if (v4)
    {
LABEL_6:
      cbreak();
      goto LABEL_7;
    }
  }

  else
  {
    noecho();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  nocbreak();
  if (v5)
  {
    raw();
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_12:
    nonl();
    goto LABEL_13;
  }

LABEL_7:
  noraw();
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_8:
  nl();
LABEL_13:
  reset_prog_mode();
  _nc_update_screensize(SP);
  return 0;
}

int vwscanw(WINDOW *a1, char *a2, va_list a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = wgetnstr(a1, __str, 1023);
  if (result != -1)
  {
    result = vsscanf(__str, a2, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

int mvscanw(int a1, int a2, char *a3, ...)
{
  va_start(va, a3);
  if (wmove(stdscr, a1, a2))
  {
    return -1;
  }

  else
  {
    return vwscanw(stdscr, a3, va);
  }
}

int mvwscanw(WINDOW *a1, int a2, int a3, char *a4, ...)
{
  va_start(va, a4);
  if (wmove(a1, a2, a3))
  {
    return -1;
  }

  else
  {
    return vwscanw(a1, a4, va);
  }
}

WINDOW *__cdecl getwin(FILE *a1)
{
  if (!a1)
  {
    return 0;
  }

  memset(v18, 0, 40);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v2 = 0;
  if ((sub_299495200(&v13, 4, a1) & 0x80000000) != 0 || v13 == -2004318072)
  {
    return v2;
  }

  if ((sub_299495200(&v13 + 4, 116, a1) & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = SWORD2(v13);
  if (WORD2(v13))
  {
    if (SWORD2(v13) < 0x4000)
    {
      v4 = SWORD3(v13);
      if (WORD3(v13))
      {
        if (SWORD3(v13) < 0x4000)
        {
          v5 = WORD6(v13);
          v6 = (BYTE12(v13) & 0x10) != 0 ? newpad(SWORD2(v13) + 1, SWORD3(v13) + 1) : newwin(SWORD2(v13) + 1, SWORD3(v13) + 1, 0, 0);
          v2 = v6;
          if (v6)
          {
            v7 = DWORD2(v13);
            *v6 = v13;
            *(v6 + 2) = v7;
            *(v6 + 42) = WORD2(v18[0]);
            *(v6 + 6) = v5 & 0xFFFE;
            *(v6 + 4) = v14;
            *(v6 + 32) = v15;
            v8 = v16;
            *(v6 + 9) = DWORD1(v15);
            *(v6 + 2) = v3;
            *(v6 + 3) = v4;
            *(v6 + 88) = *(v18 + 8);
            *(v6 + 100) = *(&v18[1] + 4);
            *(v6 + 3) = *(&v14 + 1);
            *(v6 + 12) = v8;
            if ((v5 & 0x10) != 0)
            {
              *(v6 + 9) = *(&v17 + 1);
              *(v6 + 20) = v18[0];
            }

            if ((v3 & 0x80000000) == 0)
            {
              v9 = 0;
              v10 = 28 * v4;
              v11 = -1;
              while ((sub_299495200(*(*(v2 + 5) + v9), v10 + 28, a1) & 0x80000000) == 0)
              {
                v3 = *(v2 + 2);
                ++v11;
                v9 += 16;
                if (v11 >= v3)
                {
                  goto LABEL_19;
                }
              }

              delwin(v2);
              return 0;
            }

LABEL_19:
            wtouchln(v2, 0, v3 + 1, 1);
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_299495200(_BYTE *a1, uint64_t a2, FILE *a3)
{
  clearerr(a3);
  if (!a2)
  {
    return 0;
  }

  while (1)
  {
    result = fgetc(a3);
    if (result == -1)
    {
      break;
    }

    *a1++ = result;
    if (!--a2)
    {
      return 0;
    }
  }

  return result;
}

int putwin(WINDOW *a1, FILE *a2)
{
  if (!a1)
  {
    return -1;
  }

  v4 = *(a1 + 3);
  clearerr(a2);
  if (fwrite(a1, 0x78uLL, 1uLL, a2) != 1 || ferror(a2))
  {
    return -1;
  }

  if ((*(a1 + 2) & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = v4 + 1;
    v8 = -1;
    while (fwrite(*(*(a1 + 5) + v6), 0x1CuLL, v7, a2) == v7)
    {
      result = ferror(a2);
      if (result)
      {
        break;
      }

      ++v8;
      v6 += 16;
      if (v8 >= *(a1 + 2))
      {
        return result;
      }
    }

    return -1;
  }

  return 0;
}

int scr_restore(const char *a1)
{
  if ((_nc_access(a1, 4) & 0x80000000) != 0)
  {
    return -1;
  }

  v2 = fopen(a1, "rb");
  if (!v2)
  {
    return -1;
  }

  v3 = v2;
  delwin(*(SP + 144));
  v4 = getwin(v3);
  *(SP + 144) = v4;
  newscr = v4;
  fclose(v3);
  if (*(SP + 144))
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

int scr_dump(const char *a1)
{
  if ((_nc_access(a1, 2) & 0x80000000) != 0)
  {
    return -1;
  }

  v2 = fopen(a1, "wb");
  if (!v2)
  {
    return -1;
  }

  v3 = v2;
  putwin(newscr, v2);
  fclose(v3);
  return 0;
}

int scr_init(const char *a1)
{
  if (!SP || *(cur_term->type.Strings + 40) && cur_term->type.Booleans[24])
  {
    return -1;
  }

  if ((_nc_access(a1, 4) & 0x80000000) != 0)
  {
    return -1;
  }

  v2 = fopen(a1, "rb");
  if (!v2)
  {
    return -1;
  }

  v3 = v2;
  delwin(*(SP + 136));
  v4 = getwin(v3);
  *(SP + 136) = v4;
  curscr = v4;
  fclose(v3);
  if (*(SP + 136))
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

int scr_set(const char *a1)
{
  if (scr_init(a1))
  {
    return -1;
  }

  delwin(*(SP + 144));
  v2 = dupwin(curscr);
  *(SP + 144) = v2;
  newscr = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t _nc_scroll_window(uint64_t result, int a2, int a3, int a4, __int128 *a5)
{
  if ((a3 & 0x80000000) == 0)
  {
    v5 = a4;
    if (a4 >= a3)
    {
      v7 = result;
      if (*(result + 4) >= a4)
      {
        v32 = a4 - a3;
        v10 = 28 * *(result + 6);
        if (a2 < 0)
        {
          v11 = (a3 - a2);
          if (v11 <= a4)
          {
            v12 = a4 + 1;
            v13 = 16 * a4;
            v14 = 16 * a2 + v13;
            do
            {
              memcpy(*(*(v7 + 40) + v13), *(*(v7 + 40) + v14), v10 + 28);
              --v12;
              v14 -= 16;
              v13 -= 16;
            }

            while (v12 > v11);
          }

          v15 = a3;
          do
          {
            if (v15 > *(v7 + 4))
            {
              break;
            }

            if ((*(v7 + 6) & 0x80000000) == 0)
            {
              v16 = 0;
              v17 = -1;
              do
              {
                v18 = (*(*(v7 + 40) + 16 * v15) + v16);
                v19 = *a5;
                *(v18 + 12) = *(a5 + 12);
                *v18 = v19;
                ++v17;
                v16 += 28;
              }

              while (v17 < *(v7 + 6));
            }

            ++v15;
          }

          while (v11 > v15);
        }

        if (a2 >= 1)
        {
          v20 = v5 - a2;
          if (v5 - a2 >= a3)
          {
            v21 = 16 * a3;
            v22 = v21 + 16 * a2;
            v23 = a3;
            do
            {
              if (v23 > *(v7 + 4))
              {
                break;
              }

              memcpy(*(*(v7 + 40) + v21), *(*(v7 + 40) + v22), v10 + 28);
              v22 += 16;
              v21 += 16;
            }

            while (v20 > v23++);
          }

          if (v20 < 0)
          {
            v25 = -1;
          }

          else
          {
            v25 = v5 - a2;
          }

          if (v25 < v5)
          {
            v26 = *(v7 + 6);
            do
            {
              if ((v26 & 0x8000) == 0)
              {
                v27 = 0;
                v28 = -1;
                do
                {
                  v29 = (*(*(v7 + 40) + 16 * v5) + v27);
                  v30 = *a5;
                  *(v29 + 12) = *(a5 + 12);
                  *v29 = v30;
                  ++v28;
                  v27 += 28;
                }

                while (v28 < *(v7 + 6));
                v26 = *(v7 + 6);
              }

              --v5;
            }

            while (v5 > v25);
          }
        }

        result = wtouchln(v7, a3, v32 + 1, 1);
        if (*(v7 + 176))
        {
          v31 = *(v7 + 184) + a2;
          if (v31 < 0)
          {
            v31 = 0;
          }

          else if (v31 > *(v7 + 4))
          {
            v31 = 0;
          }

          *(v7 + 184) = v31;
        }
      }
    }
  }

  return result;
}

int wscrl(WINDOW *a1, int a2)
{
  if (!a1)
  {
    return -1;
  }

  if (*(a1 + 27) != 1)
  {
    return -1;
  }

  if (a2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 25);
    v6[0] = *(a1 + 88);
    *(v6 + 12) = *(a1 + 100);
    _nc_scroll_window(a1, a2, v3, v4, v6);
    _nc_synchook(a1);
  }

  return 0;
}

int scrollok(WINDOW *a1, BOOL a2)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 27) = a2;
  return result;
}

int wsetscrreg(WINDOW *a1, int a2, int a3)
{
  result = -1;
  if (a1)
  {
    if ((a2 & 0x80000000) == 0 && a3 > a2)
    {
      v5 = *(a1 + 2);
      if (v5 >= a3 && (a3 & 0x80000000) == 0 && v5 >= a2)
      {
        result = 0;
        *(a1 + 24) = a2;
        *(a1 + 25) = a3;
      }
    }
  }

  return result;
}

SCREEN *__cdecl set_term(SCREEN *a1)
{
  v1 = SP;
  SP = a1;
  if (a1)
  {
    set_curterm(*(a1 + 6));
    v3 = *(a1 + 17);
    v4 = *(a1 + 18);
    v5 = *(a1 + 19);
    v6 = *(a1 + 242);
    v7 = *(a1 + 246);
  }

  else
  {
    set_curterm(0);
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  curscr = v3;
  newscr = v4;
  stdscr = v5;
  COLORS = v6;
  COLOR_PAIRS = v7;
  return v1;
}

void delscreen(SCREEN *a1)
{
  v1 = &_nc_screen_chain;
  v2 = _nc_screen_chain;
  if (_nc_screen_chain)
  {
    if (_nc_screen_chain == a1)
    {
      v4 = 0;
LABEL_7:
      if (v4)
      {
        v1 = (v4 + 1392);
      }

      *v1 = *(a1 + 174);
      _nc_freewin(*(a1 + 17));
      _nc_freewin(*(a1 + 18));
      _nc_freewin(*(a1 + 19));
      v5 = *(a1 + 100);
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          if (*(v5 + 26) >= 1)
          {
            v7 = 0;
            v8 = 0;
            do
            {
              v9 = *(v5 + 16);
              if (*(v9 + v7))
              {
                free(*(v9 + v7));
                v5 = *(a1 + 100);
                v9 = *(v5 + 16);
              }

              if (*(v9 + v7 + 8))
              {
                free(*(v9 + v7 + 8));
                v5 = *(a1 + 100);
              }

              ++v8;
              v7 += 24;
            }

            while (v8 < *(v5 + 26));
            v6 = *(v5 + 16);
          }

          free(v6);
          v5 = *(a1 + 100);
        }

        free(v5);
        *(a1 + 100) = 0;
      }

      sub_299495B34(*(a1 + 20));
      *(a1 + 20) = 0;
      sub_299495B34(*(a1 + 21));
      *(a1 + 21) = 0;
      v10 = *(a1 + 93);
      if (v10)
      {
        free(v10);
      }

      v11 = *(a1 + 120);
      if (v11)
      {
        free(v11);
      }

      v12 = *(a1 + 122);
      if (v12)
      {
        free(v12);
      }

      v13 = *(a1 + 175);
      if (v13)
      {
        free(v13);
      }

      v14 = *(a1 + 176);
      if (v14)
      {
        free(v14);
      }

      v15 = *(a1 + 177);
      if (v15)
      {
        free(v15);
      }

      v16 = *(a1 + 128);
      if (v16)
      {
        free(v16);
      }

      v17 = *(a1 + 129);
      if (v17)
      {
        free(v17);
      }

      _nc_flush();
      del_curterm(*(a1 + 6));
      v18 = *(a1 + 2);
      if (v18)
      {
        free(v18);
      }

      free(a1);
      if (SP == a1)
      {
        curscr = 0;
        newscr = 0;
        stdscr = 0;
        COLORS = 0;
        COLOR_PAIRS = 0;
        SP = 0;
        if (_nc_wacs)
        {
          free(_nc_wacs);
        }

        _nc_wacs = 0;
      }
    }

    else
    {
      while (1)
      {
        v4 = v2;
        v2 = *(v2 + 1392);
        if (!v2)
        {
          break;
        }

        if (v2 == a1)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

void sub_299495B34(void *a1)
{
  if (a1)
  {
    sub_299495B34(*a1);
    sub_299495B34(a1[1]);

    free(a1);
  }
}

uint64_t _nc_setupscreen(int a1, int a2, FILE *a3, int a4, int a5)
{
  v46 = a2;
  v47 = a1;
  SP = calloc(1uLL, 0x648uLL);
  if (!SP)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = calloc(0x80uLL, 4uLL);
  *(SP + 1024) = v8;
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = calloc(0x80uLL, 1uLL);
  v10 = SP;
  *(SP + 1032) = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  *(v10 + 1392) = _nc_screen_chain;
  _nc_screen_chain = v10;
  v11 = calloc(1uLL, 0x1CuLL);
  *(v10 + 744) = v11;
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  SP = v10;
  *(v10 + 48) = cur_term;
  _nc_get_screensize(v10, &v47, &v46);
  LINES = v47;
  COLS = v46;
  *(v10 + 40) = a4 != 0;
  if (a4)
  {
    v47 = 1;
    LINES = 1;
    v12 = cur_term;
    *(cur_term->type.Strings + 5) = 0;
    *(v12->type.Strings + 107) = 0;
    *(v12->type.Strings + 11) = 0;
    *(v12->type.Strings + 10) = 0;
    *(v12->type.Strings + 114) = 0;
    *(v12->type.Strings + 19) = 0;
    *(v12->type.Strings + 127) = 0;
    *(v12->type.Strings + 12) = *(v12->type.Strings + 2);
  }

  _nc_set_buffer(a3, 1);
  v13 = v47;
  *(v10 + 128) = v47;
  *(v10 + 132) = v13;
  *(v10 + 130) = v46;
  fflush(a3);
  if (a3)
  {
    v14 = fileno(a3);
  }

  else
  {
    v14 = -1;
  }

  *(v10 + 4) = v14;
  *(v10 + 8) = a3;
  v15 = (v46 + 6) * (v47 + 2);
  *(v10 + 24) = v15;
  v16 = malloc(v15);
  *(v10 + 16) = v16;
  if (!v16)
  {
    *(v10 + 24) = 0;
  }

  *(v10 + 32) = 0;
  *(v10 + 768) = -1;
  *(v10 + 776) = xmmword_2994B0690;
  *(v10 + 728) = -1;
  *(v10 + 736) = 1;
  *(v10 + 760) = -1;
  *&PC[472] = 0;
  *(v10 + 1448) = _nc_outch;
  *(v10 + 1464) = 0;
  _nc_set_no_padding(v10);
  *(v10 + 993) = 0;
  *(v10 + 996) = 7;
  v17 = getenv("NCURSES_ASSUMED_COLORS");
  if (v17)
  {
    v45 = 0;
    v44 = 0;
    v18 = sscanf(v17, "%d%c%d%c", &v45 + 4, &v44 + 1, &v45, &v44);
    if (v18 >= 1)
    {
      v19 = 511;
      if ((v45 & 0x8000000000000000) == 0)
      {
        if (SHIDWORD(v45) >= cur_term->type.Numbers[13])
        {
          v19 = 511;
        }

        else
        {
          v19 = HIDWORD(v45);
        }
      }

      *(v10 + 996) = v19;
      if (v18 >= 3)
      {
        v20 = 511;
        if ((v45 & 0x80000000) == 0)
        {
          if (v45 >= cur_term->type.Numbers[13])
          {
            v20 = 511;
          }

          else
          {
            v20 = v45;
          }
        }

        *(v10 + 1000) = v20;
      }
    }
  }

  *(v10 + 1052) = 166;
  *(v10 + 1056) = sub_2994961CC;
  *(v10 + 1064) = sub_2994961D4;
  *(v10 + 1072) = sub_2994961DC;
  *(v10 + 1080) = nullsub_1;
  *(v10 + 1088) = nullsub_2;
  *(v10 + 1096) = -1;
  *(v10 + 1008) = termattrs();
  if (has_colors())
  {
    *(v10 + 1008) |= 0xFF00u;
  }

  v21 = cur_term;
  Numbers = cur_term->type.Numbers;
  v23 = Numbers[4];
  if (v23 >= 1)
  {
    v24 = *(v10 + 1008);
    *(v10 + 1016) = v24 & 0x81BF0000;
    *(v10 + 1012) = v24 & 0x819F0000;
    *(v21->type.Strings + 146) = 0;
    *(v21->type.Strings + 155) = 0;
    *(v21->type.Strings + 25) = 0;
    *(v21->type.Strings + 38) = 0;
    Numbers = v21->type.Numbers;
    LOWORD(v23) = Numbers[4];
  }

  if ((v23 & 0x8000) == 0)
  {
    Numbers[4] = -1;
    *(v21->type.Strings + 131) = 0;
    *(v21->type.Strings + 26) = 0;
    *(v21->type.Strings + 27) = 0;
    *(v21->type.Strings + 30) = 0;
    *(v21->type.Strings + 34) = 0;
    *(v21->type.Strings + 35) = 0;
    *(v21->type.Strings + 36) = 0;
  }

  _nc_init_acs();
  v25 = _nc_unicode_locale();
  *(v10 + 1601) = v25;
  if (_nc_wacs)
  {
    if (v25)
    {
LABEL_32:
      v26 = _nc_locale_breaks_acs(*(v10 + 48)) != 0;
      goto LABEL_36;
    }

LABEL_35:
    v26 = 0;
LABEL_36:
    *(v10 + 1600) = v26;
    locale = _nc_get_locale();
    v28 = !locale || *locale == 67 && !locale[1] || strcmp(locale, "POSIX") == 0;
    *(v10 + 1456) = v28;
    *(v10 + 1043) = 256;
    *(v10 + 1400) = 0u;
    v29 = newwin(v47, v46, 0, 0);
    *(v10 + 144) = v29;
    if (v29)
    {
      v30 = newwin(v47, v46, 0, 0);
      *(v10 + 136) = v30;
      if (v30)
      {
        newscr = *(v10 + 144);
        v31 = newscr;
        curscr = v30;
        *(v10 + 1344) = resizeterm;
        *(v10 + 1352) = _nc_ungetch;
        *(v31 + 25) = 1;
        *(v30 + 25) = 0;
        def_shell_mode();
        def_prog_mode();
        v32 = off_2A1462930;
        if (off_2A1462930 && off_2A1462930 != algn_2A14628B8)
        {
          v33 = &unk_2A14628D0;
          v34 = 24;
          while (1)
          {
            v35 = *(v33 - 1);
            if (v35 == _nc_slk_initialize)
            {
              if (a5 > 2 || cur_term->type.Numbers[8] <= 0)
              {
LABEL_48:
                v36 = *(v33 - 4);
                if (v36 >= 0)
                {
                  v37 = *(v33 - 4);
                }

                else
                {
                  v37 = -v36;
                }

                if (v36 < 0)
                {
                  v38 = v36 + *(v10 + 132);
                }

                else
                {
                  v38 = 0;
                }

                v39 = newwin(v37, v46, v38, 0);
                if (!v39)
                {
                  goto LABEL_66;
                }

                *(v33 - 3) = v39;
                (*(v33 - 1))();
                if ((*(v33 - 2) & 0x80000000) == 0)
                {
                  *(v10 + 134) += v37;
                }

                *(v10 + 132) -= v37;
                v32 = off_2A1462930;
              }
            }

            else if (v35)
            {
              goto LABEL_48;
            }

            if (v33 != v32)
            {
              v33 += 3;
              v40 = v34 < 120;
              v34 += 24;
              if (v40)
              {
                continue;
              }
            }

            off_2A1462930 = algn_2A14628B8;
            break;
          }
        }

        v41 = newwin(*(v10 + 132), v46, 0, 0);
        *(v10 + 152) = v41;
        if (v41)
        {
          v42 = v41;
          result = 0;
          LINES = *(v10 + 132);
          stdscr = v42;
          *(v10 + 41) = 0;
          return result;
        }
      }
    }

    goto LABEL_66;
  }

  _nc_init_wacs();
  if (_nc_wacs)
  {
    if (*(v10 + 1601))
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

LABEL_66:
  SP = 0;
  return 0xFFFFFFFFLL;
}

uint64_t _nc_ripoffline(int a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = off_2A1462930;
  if (!off_2A1462930)
  {
    v2 = algn_2A14628B8;
    goto LABEL_7;
  }

  if (off_2A1462930 < &off_2A1462930)
  {
LABEL_7:
    v3 = 0;
    *(v2 + 2) = a1;
    *(v2 + 2) = a2;
    off_2A1462930 = v2 + 24;
    return v3;
  }

  return 0xFFFFFFFFLL;
}

int ripoffline(int a1, int (__cdecl *a2)(WINDOW *, int))
{
  v2 = off_2A1462930;
  if (!off_2A1462930)
  {
    v2 = algn_2A14628B8;
    goto LABEL_5;
  }

  if (off_2A1462930 < &off_2A1462930)
  {
LABEL_5:
    v3 = 0;
    *(v2 + 2) = (a1 >> 31) | 1;
    *(v2 + 2) = a2;
    off_2A1462930 = v2 + 24;
    return v3;
  }

  return -1;
}

uint64_t _nc_handle_sigwinch(uint64_t result)
{
  if (*&PC[20])
  {
    *&PC[20] = 0;
    for (i = _nc_screen_chain; i; i = *(i + 1392))
    {
      *(i + 1384) = 1;
    }
  }

  if (result)
  {
    return *(result + 1384);
  }

  return result;
}

uint64_t _nc_get_screensize(uint64_t result, int *a2, int *a3)
{
  v5 = result;
  v6 = cur_term;
  Numbers = cur_term->type.Numbers;
  *a2 = Numbers[2];
  *a3 = *Numbers;
  if ((_nc_prescreen[0] & 1) != 0 || byte_2A1462B98 == 1)
  {
    result = isatty(v6->Filedes);
    if (result)
    {
      v13 = 0;
      *__error() = 0;
      while (1)
      {
        result = ioctl(cur_term->Filedes, 0x40087468uLL, &v13);
        if ((result & 0x80000000) == 0)
        {
          break;
        }

        result = __error();
        if (*result != 4)
        {
          goto LABEL_13;
        }
      }

      if (v5 && (*(v5 + 40) & 1) != 0)
      {
        v8 = 1;
      }

      else
      {
        v8 = v13;
      }

      *a2 = v8;
      *a3 = WORD1(v13);
    }

LABEL_13:
    if (_nc_prescreen[0] == 1)
    {
      if (byte_2A1462B98 == 1)
      {
        if ((!v5 || (*(v5 + 40) & 1) == 0) && _nc_getenv_num("LINES") >= 1)
        {
          _nc_setenv_num("LINES", *a2);
        }

        if (_nc_getenv_num("COLUMNS") >= 1)
        {
          _nc_setenv_num("COLUMNS", *a3);
        }
      }

      v9 = _nc_getenv_num("LINES");
      if (v9 >= 1)
      {
        *a2 = v9;
      }

      result = _nc_getenv_num("COLUMNS");
      if (result >= 1)
      {
        *a3 = result;
      }
    }

    v10 = *a2;
    if (*a2 <= 0)
    {
      v10 = v6->type.Numbers[2];
      *a2 = v10;
    }

    v11 = *a3;
    if (*a3 <= 0)
    {
      v11 = *v6->type.Numbers;
      *a3 = v11;
      v10 = *a2;
    }

    if (v10 <= 0)
    {
      LOWORD(v10) = 24;
      *a2 = 24;
      v11 = *a3;
    }

    if (v11 <= 0)
    {
      LOWORD(v11) = 80;
      *a3 = 80;
      v10 = *a2;
    }

    Numbers = v6->type.Numbers;
    Numbers[2] = v10;
    *Numbers = v11;
  }

  v12 = Numbers[1];
  if (v12 < 0)
  {
    v12 = 8;
  }

  TABSIZE = v12;
  return result;
}

uint64_t _nc_update_screensize(uint64_t a1)
{
  v9 = 0;
  Numbers = cur_term->type.Numbers;
  v3 = Numbers[2];
  v4 = *Numbers;
  result = _nc_get_screensize(a1, &v9 + 1, &v9);
  if (a1)
  {
    v6 = *(a1 + 1344);
    if (v6)
    {
      result = HIDWORD(v9);
      if (HIDWORD(v9) == v3 && v9 == v4)
      {
        if (*(a1 + 1384) == 1)
        {
          v8 = *(a1 + 1352);
          if (v8)
          {
            result = v8(SP, 410);
          }
        }
      }

      else
      {
        result = v6();
      }

      *(a1 + 1384) = 0;
    }
  }

  return result;
}

uint64_t _nc_setup_tinfo(const char *a1, TERMTYPE *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  result = _nc_read_entry(a1, v17, a2);
  if (result == 1)
  {
    num_Booleans = a2->num_Booleans;
    if (a2->num_Booleans)
    {
      v5 = 0;
      do
      {
        Booleans = a2->Booleans;
        if (Booleans[v5] >= 2u)
        {
          Booleans[v5] = 0;
          num_Booleans = a2->num_Booleans;
        }

        ++v5;
      }

      while (v5 < num_Booleans);
    }

    if (a2->num_Strings)
    {
      v7 = 0;
      v8 = 8 * a2->num_Strings;
      do
      {
        Strings = a2->Strings;
        if (Strings[v7 / 8] == -1)
        {
          Strings[v7 / 8] = 0;
        }

        v7 += 8;
      }

      while (v8 != v7);
    }

    ext_Booleans = a2->ext_Booleans;
    ext_Numbers = a2->ext_Numbers;
    ext_Strings = a2->ext_Strings;
    if (ext_Numbers + ext_Booleans + ext_Strings)
    {
      v13 = 0;
      v14 = 8 * (ext_Numbers + ext_Strings + ext_Booleans);
      do
      {
        ext_Names = a2->ext_Names;
        if (ext_Names[v13 / 8] == -1)
        {
          ext_Names[v13 / 8] = 0;
        }

        v13 += 8;
      }

      while (v14 != v13);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

const char *_nc_tinfo_cmdch(uint64_t a1, int a2)
{
  result = getenv("CC");
  if (result)
  {
    v5 = result;
    result = strlen(result);
    if (result == 1)
    {
      v6 = *(a1 + 60);
      if (*(a1 + 60))
      {
        v7 = 0;
        v8 = *v5;
        do
        {
          v9 = *(*(a1 + 32) + 8 * v7);
          if (v9)
          {
            v10 = *v9;
            if (*v9)
            {
              v11 = v9 + 1;
              do
              {
                if (v10 == a2)
                {
                  *(v11 - 1) = v8;
                }

                v12 = *v11++;
                v10 = v12;
              }

              while (v12);
            }

            v6 = *(a1 + 60);
          }

          ++v7;
        }

        while (v7 < v6);
      }
    }
  }

  return result;
}

uint64_t _nc_locale_breaks_acs(uint64_t a1)
{
  if (getenv("NCURSES_NO_UTF8_ACS"))
  {

    return _nc_getenv_num("NCURSES_NO_UTF8_ACS");
  }

  else
  {
    result = tigetnum("U8");
    if ((result & 0x80000000) != 0)
    {
      result = getenv("TERM");
      if (result)
      {
        v3 = result;
        if (strstr(result, "linux"))
        {
          return 1;
        }

        result = strstr(v3, "screen");
        if (result)
        {
          result = getenv("TERMCAP");
          if (result)
          {
            v4 = result;
            result = strstr(result, "screen");
            if (result)
            {
              result = strstr(v4, "hhII00");
              if (result)
              {
                v5 = *(a1 + 32);
                v6 = *(v5 + 200);
                if (v6)
                {
                  if (strchr(*(v5 + 200), 14) || strchr(v6, 15))
                  {
                    return 1;
                  }
                }

                v7 = *(v5 + 1048);
                if (!v7)
                {
                  return 0;
                }

                if (strchr(*(v5 + 1048), 14))
                {
                  return 1;
                }

                result = strchr(v7, 15);
                if (result)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _nc_setupterm(char *__s, int a2, int *a3, int a4)
{
  v7 = __s;
  v8 = cur_term;
  if (!__s)
  {
    v18 = getenv("TERM");
    if (!v18 || (v7 = v18, !*v18))
    {
      if (!a3)
      {
        v19 = *MEMORY[0x29EDCA610];
        v20 = "TERM environment variable not set.\n";
LABEL_34:
        v21 = 35;
LABEL_53:
        fwrite(v20, v21, 1uLL, v19);
        goto LABEL_55;
      }

      goto LABEL_36;
    }
  }

  if (strlen(v7) >= 0x201)
  {
    if (!a3)
    {
      fprintf(*MEMORY[0x29EDCA610], "TERM environment must be <= %d characters.\n");
      goto LABEL_55;
    }

LABEL_36:
    v17 = -1;
    goto LABEL_37;
  }

  if (a2 == 1 && !isatty(1))
  {
    a2 = 2;
  }

  if (!a4 || !v8 || a2 != v8->Filedes || (termname = v8->_termname) == 0 || strcmp(termname, v7) || !_nc_name_match(v8->type.term_names, v7, "|"))
  {
    v10 = calloc(1uLL, 0xF0uLL);
    if (!v10)
    {
      if (!a3)
      {
        v19 = *MEMORY[0x29EDCA610];
        v20 = "Not enough memory to create terminal structure.\n";
        v21 = 48;
        goto LABEL_53;
      }

      goto LABEL_36;
    }

    v8 = v10;
    v11 = _nc_setup_tinfo(v7, v10);
    if (v11 != 1)
    {
      v12 = v11;
      v13 = _nc_fallback(v7);
      if (v13)
      {
        _nc_copy_termtype(&v8->type, v13);
      }

      else
      {
        del_curterm(v8);
        if (!v12)
        {
          if (!a3)
          {
            fprintf(*MEMORY[0x29EDCA610], "'%s': unknown terminal type.\n");
            goto LABEL_55;
          }

          goto LABEL_29;
        }

        if (v12 == -1)
        {
          if (!a3)
          {
            v19 = *MEMORY[0x29EDCA610];
            v20 = "terminals database is inaccessible\n";
            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }
    }

    strncpy(ttytype, v8->type.term_names, 0xFFuLL)[255] = 0;
    v8->Filedes = a2;
    v8->_termname = strdup(v7);
    set_curterm(v8);
    v14 = *(v8->type.Strings + 9);
    if (v14)
    {
      _nc_tinfo_cmdch(v8, *v14);
    }

    if (isatty(a2))
    {
      def_prog_mode();
      baudrate();
    }
  }

  _nc_get_screensize(SP, &LINES, &COLS);
  if (a3)
  {
    *a3 = 1;
  }

  Booleans = v8->type.Booleans;
  if (Booleans[6])
  {
    Strings = v8->type.Strings;
    if ((Strings[10] + 1) <= 1 && ((Strings[11] + 1) < 2 || (Strings[12] + 1) < 2) || (Strings[5] + 1) < 2)
    {
      del_curterm(v8);
      if (a3)
      {
LABEL_29:
        v17 = 0;
LABEL_37:
        *a3 = v17;
        return 0xFFFFFFFFLL;
      }

      fprintf(*MEMORY[0x29EDCA610], "'%s': I need something more specific.\n");
LABEL_55:
      exit(1);
    }

    if (!a3)
    {
      fprintf(*MEMORY[0x29EDCA610], "'%s': terminal is not really generic.\n");
      goto LABEL_55;
    }

LABEL_49:
    v17 = 1;
    goto LABEL_37;
  }

  if (Booleans[7])
  {
    if (!a3)
    {
      fprintf(*MEMORY[0x29EDCA610], "'%s': I can't handle hardcopy terminals.\n");
      goto LABEL_55;
    }

    goto LABEL_49;
  }

  return 0;
}

uint64_t _nc_format_slks(int a1)
{
  if (!SP)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(SP + 800);
  if (v1)
  {
    v2 = *(v1 + 28);
    v3 = *(SP + 808);
    if (v3 >= 3)
    {
      v4 = (a1 - 12 * v2 - 9) / 2;
      if (v4 <= 1)
      {
        v4 = 1;
      }

      v5 = *(v1 + 24);
      if (v5 >= 1)
      {
        v6 = 0;
        v7 = 0;
        v8 = (*(v1 + 16) + 16);
        do
        {
          *v8 = v7;
          v8 += 6;
          v9 = v7 + v2;
          if ((v6 & 0x7FFFFFFB) == 3)
          {
            v10 = v4;
          }

          else
          {
            v10 = 1;
          }

          v7 = v9 + v10;
          ++v6;
        }

        while (v5 != v6);
      }

LABEL_37:
      result = 0;
      *v1 = 1;
      return result;
    }

    if (v3 == 1)
    {
      v21 = *(v1 + 24);
      v22 = (a1 - v21 * v2 - 5) / 2;
      if (v22 <= 1)
      {
        v22 = 1;
      }

      if (v21 >= 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = *(v1 + 16) + 16;
        v26 = 24 * v21;
        do
        {
          *(v25 + v23) = v24;
          v27 = v24 + v2;
          if (v23 == 96 || v23 == 48)
          {
            v29 = v22;
          }

          else
          {
            v29 = 1;
          }

          v24 = v27 + v29;
          v23 += 24;
        }

        while (v26 != v23);
      }

      goto LABEL_37;
    }

    if (v3 == 2)
    {
      v12 = *(v1 + 24);
      if (a1 - v12 * v2 <= 7)
      {
        v13 = 7;
      }

      else
      {
        v13 = a1 - v12 * v2;
      }

      if (v12 >= 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = v13 - 6;
        v17 = *(v1 + 16) + 16;
        v18 = 24 * v12;
        do
        {
          *(v17 + v14) = v15;
          v19 = v15 + v2;
          if (v14 == 72)
          {
            v20 = v16;
          }

          else
          {
            v20 = 1;
          }

          v15 = v19 + v20;
          v14 += 24;
        }

        while (v18 != v14);
      }

      goto LABEL_37;
    }

    sub_299496DBC();
  }

  return 0xFFFFFFFFLL;
}

void sub_299496DBC()
{
  if (SP)
  {
    v0 = *(SP + 800);
    if (v0)
    {
      if (v0[2])
      {
        free(v0[2]);
        v0 = *(SP + 800);
      }

      free(v0);
      *(SP + 800) = 0;
    }
  }
}

uint64_t _nc_slk_initialize(uint64_t a1, int a2)
{
  if (_nc_screen_of(a1))
  {
    if (*(SP + 800))
    {
      return 0;
    }

    v5 = cur_term->type.Numbers[8];
    v6 = calloc(1uLL, 0x40uLL);
    v7 = SP;
    *(SP + 800) = v6;
    if (v6)
    {
      v8 = *(v7 + 808);
      if (!v8)
      {
        v8 = *&PC[100];
        *(v7 + 808) = *&PC[100];
      }

      Numbers = cur_term->type.Numbers;
      if (Numbers[15])
      {
        v10 = 0x40000;
      }

      else
      {
        v10 = 0x10000;
      }

      v6[8] = *(v6 + 32) | v10;
      if (v5 <= 0)
      {
        if (v8 >= 3)
        {
          v5 = 12;
        }

        else
        {
          v5 = 8;
        }

        *(v6 + 12) = v5;
        if (v8 >= 3)
        {
          v11 = 5;
        }

        else
        {
          v11 = 8;
        }
      }

      else
      {
        *(v6 + 12) = v5;
        v11 = Numbers[9] * Numbers[10];
      }

      *(v6 + 14) = v11;
      if (v8 >= 3)
      {
        v12 = 12;
      }

      else
      {
        v12 = 8;
      }

      if (v12 <= v5)
      {
        LOWORD(v12) = v5;
      }

      *(v6 + 13) = v12;
      if (v11 >= 1)
      {
        v13 = calloc(v12, 0x18uLL);
        v14 = *(SP + 800);
        *(v14 + 16) = v13;
        if (v13)
        {
          if (*(v14 + 26) < 1)
          {
LABEL_32:
            result = _nc_format_slks(a2);
            *(*(SP + 800) + 8) = a1;
            if (a1)
            {
              *&PC[100] = 0;
              return result;
            }
          }

          else
          {
            v15 = 0;
            v16 = 0;
            v17 = *(v14 + 28);
            while (1)
            {
              *(*(*(SP + 800) + 16) + v15) = _nc_doalloc(0, v17 + 1);
              v18 = *(*(*(SP + 800) + 16) + v15);
              if (!v18)
              {
                break;
              }

              bzero(v18, v17 + 1);
              *(*(*(SP + 800) + 16) + v15 + 8) = _nc_doalloc(0, v17 + 1);
              v19 = *(*(*(SP + 800) + 16) + v15 + 8);
              if (!v19)
              {
                break;
              }

              if (v17 + 1 >= 2)
              {
                memset(v19, 32, v17);
                v19 = *(*(*(SP + 800) + 16) + v15 + 8);
              }

              *(v19 + v17) = 0;
              v20 = *(SP + 800);
              *(*(v20 + 16) + v15 + 21) = v16++ < *(v20 + 24);
              v15 += 24;
              if (v16 >= *(v20 + 26))
              {
                goto LABEL_32;
              }
            }
          }
        }
      }

      sub_299496DBC();
    }
  }

  return 0xFFFFFFFFLL;
}

int slk_restore(void)
{
  if (!SP)
  {
    return -1;
  }

  v0 = *(SP + 800);
  if (!v0)
  {
    return -1;
  }

  *v0 = 1;
  return slk_refresh();
}

uint64_t slk_wset(int a1, __int32 *a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a2 && (memset(&v14, 0, sizeof(v14)), v13 = a2, v6 = wcsrtombs(0, &v13, 0, &v14), v6 != -1) && (v7 = v6, (v8 = _nc_doalloc(0, v6 + 1)) != 0))
  {
    v9 = v8;
    v13 = a2;
    if (wcsrtombs(v8, &v13, v7, &v14) == -1)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v9[v7] = 0;
      v10 = slk_set(a1, v9, a3);
    }

    free(v9);
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

int slk_attr_set(const attr_t a1, __int16 a2, void *a3)
{
  if (!SP)
  {
    return -1;
  }

  result = -1;
  if ((a2 & 0x80000000) == 0 && !a3)
  {
    v5 = *(SP + 800);
    if (v5)
    {
      if (*(SP + 988) > a2)
      {
        *(v5 + 32) = *(v5 + 32) | a1 & 0xFFFFFF00;
        if (a2)
        {
          if (*_nc_abiver(&_nc_abiver) < 0x60000u)
          {
            v11 = v7 & 0xFFFF00FF | (v6 << 8);
          }

          else
          {
            *(v8 + 56) = v6;
            v9 = v7 & 0xFFFF00FF;
            v10 = v6 << 8;
            if (v6 > 0xFF)
            {
              v10 = 65280;
            }

            v11 = v9 | v10;
          }

          result = 0;
          *(v8 + 32) = v11;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

int slk_attroff(const chtype a1)
{
  if (!SP)
  {
    return -1;
  }

  v1 = *(SP + 800);
  if (!v1)
  {
    return -1;
  }

  *(v1 + 32) &= ~a1 | 0xFF;
  if ((a1 & 0xFF00) == 0)
  {
    return 0;
  }

  if (*_nc_abiver(&_nc_abiver) >= 0x60000u)
  {
    *(v2 + 56) = 0;
  }

  result = 0;
  *(v2 + 32) = v3 & 0xFFFF00FF;
  return result;
}

int slk_attron(const chtype a1)
{
  if (!SP)
  {
    return -1;
  }

  v1 = *(SP + 800);
  if (!v1)
  {
    return -1;
  }

  *(v1 + 32) |= a1 & 0xFFFFFF00;
  if ((a1 & 0xFF00) == 0)
  {
    return 0;
  }

  if (*_nc_abiver(&_nc_abiver) < 0x60000u)
  {
    v6 = v4 & 0xFFFF00FF | v5;
  }

  else
  {
    *(v3 + 56) = v2;
    v6 = v4 & 0xFFFF00FF | (v2 << 8);
  }

  result = 0;
  *(v3 + 32) = v6;
  return result;
}

int slk_attrset(const chtype a1)
{
  if (!SP)
  {
    return -1;
  }

  v1 = *(SP + 800);
  if (!v1)
  {
    return -1;
  }

  result = 0;
  *(v1 + 32) = *(v1 + 32) | a1 & 0xFFFFFF00;
  return result;
}

attr_t slk_attr(void)
{
  if (!SP)
  {
    return 0;
  }

  v0 = *(SP + 800);
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 32);
  if (*_nc_abiver(&_nc_abiver) < 0x60000u)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(v3 + 56);
    v6 = v4;
    if (!v5)
    {
      v5 = v6;
    }
  }

  return v2 | (v5 << 8);
}

int slk_clear(void)
{
  v0 = SP;
  if (!SP)
  {
    return -1;
  }

  v1 = *(SP + 800);
  if (!v1)
  {
    return -1;
  }

  *(v1 + 1) = 1;
  v2 = *(v1 + 8);
  v3 = *(v0 + 152);
  v4 = *(v3 + 88);
  *(v2 + 100) = *(v3 + 100);
  *(v2 + 88) = v4;
  v5 = *(v0 + 152);
  v6 = *(*(v0 + 800) + 8);
  *(v6 + 16) = *(v5 + 16);
  if (v6 == v5)
  {
    return 0;
  }

  werase(v6);
  v7 = *(*(SP + 800) + 8);

  return wrefresh(v7);
}

int slk_color(__int16 a1)
{
  if (!SP)
  {
    return -1;
  }

  v1 = a1;
  result = -1;
  if ((v1 & 0x80000000) == 0 && *(SP + 800))
  {
    if (*(SP + 988) <= v1)
    {
      return -1;
    }

    else
    {
      if (*_nc_abiver(&_nc_abiver) < 0x60000u)
      {
        result = 0;
      }

      else
      {
        result = 0;
        *(v4 + 56) = v3;
        if (v3 <= 0xFF)
        {
          v5 = v3 << 8;
        }

        else
        {
          v5 = 65280;
        }

        v3 = v5 >> 8;
      }

      *(v4 + 33) = v3;
    }
  }

  return result;
}

int slk_init(int a1)
{
  if (a1 > 3 || *&PC[100])
  {
    return -1;
  }

  *&PC[100] = a1 + 1;
  if (a1 <= 1)
  {
    v1 = -1;
  }

  else
  {
    v1 = 1 - a1;
  }

  return _nc_ripoffline(v1, _nc_slk_initialize);
}

char *__cdecl slk_label(int a1)
{
  if (!SP)
  {
    return 0;
  }

  v1 = 0;
  if (a1 >= 1)
  {
    v2 = *(SP + 800);
    if (v2)
    {
      if (*(v2 + 26) >= a1)
      {
        return *(*(v2 + 16) + 24 * a1 - 24);
      }

      return 0;
    }
  }

  return v1;
}

int slk_noutrefresh(void)
{
  if (!SP)
  {
    return -1;
  }

  v0 = *(SP + 800);
  if (!v0)
  {
    return -1;
  }

  if (*(v0 + 1))
  {
    return 0;
  }

  sub_299497698(SP);
  v2 = *(*(SP + 800) + 8);

  return wnoutrefresh(v2);
}

uint64_t sub_299497698(uint64_t result)
{
  v1 = *(result + 800);
  if ((*(v1 + 1) & 1) == 0)
  {
    v23 = cur_term->type.Numbers[8];
    v2 = *(v1 + 26);
    if (v2 >= 1)
    {
      v3 = result;
      v4 = 0;
      v25 = *(result + 808);
      v5 = v25 < 3 && v23 > 0;
      if (v25 >= 3)
      {
        v6 = v25 - 3;
      }

      else
      {
        v6 = 0;
      }

      v24 = v6;
      v7 = *(v1 + 16);
      do
      {
        if ((*v1 & 1) != 0 || *(v7 + 24 * v4 + 20))
        {
          v8 = v7 + 24 * v4;
          if (*(v8 + 21))
          {
            if (v5)
            {
              if (v4 < cur_term->type.Numbers[8])
              {
                v9 = tparm(cur_term->type.Strings[147], v4 + 1, *(v8 + 8));
                result = _nc_putp("plab_norm", v9);
              }
            }

            else
            {
              if (v25 == 4)
              {
                v10 = *(v1 + 8);
                v11 = _nc_screen_of(v10);
                if (v10)
                {
                  v12 = v11;
                  if (v11)
                  {
                    if (*(v11 + 808) == 4)
                    {
                      if (wmove(v10, 0, 0) != -1)
                      {
                        whline(v10, 0, *(v10 + 6) + 1);
                      }

                      wmove(v10, 0, 0);
                      v13 = *(v12 + 800);
                      if (*(v13 + 24) >= 1)
                      {
                        v14 = 0;
                        v15 = 16;
                        do
                        {
                          mvwprintw(v10, 0, *(*(v13 + 16) + v15), "F%d", ++v14);
                          v13 = *(v12 + 800);
                          v15 += 24;
                        }

                        while (v14 < *(v13 + 24));
                      }
                    }
                  }
                }
              }

              wmove(*(v1 + 8), v24, *(*(v1 + 16) + 24 * v4 + 16));
              v16 = *(v1 + 8);
              if (v16)
              {
                v17 = *(v1 + 32);
                *(v16 + 116) = BYTE1(v17);
                *(v16 + 16) = v17;
              }

              result = waddnstr(v16, *(*(v1 + 16) + 24 * v4 + 8), -1);
              v18 = *(v1 + 8);
              if (v18)
              {
                v19 = *(*(v3 + 152) + 16);
                *(v18 + 116) = BYTE1(v19);
                *(v18 + 16) = v19;
              }
            }
          }

          v7 = *(v1 + 16);
          *(v7 + 24 * v4 + 20) = 0;
          LOWORD(v2) = *(v1 + 26);
        }

        ++v4;
      }

      while (v4 < v2);
    }

    *v1 = 0;
    if (v23 >= 1)
    {
      v20 = 156;
      if (*(v1 + 1))
      {
        v20 = 157;
        v21 = "label_off";
      }

      else
      {
        v21 = "label_on";
      }

      v22 = cur_term->type.Strings[v20];

      return _nc_putp(v21, v22);
    }
  }

  return result;
}

int slk_refresh(void)
{
  if (!SP)
  {
    return -1;
  }

  v0 = *(SP + 800);
  if (!v0)
  {
    return -1;
  }

  if (*(v0 + 1))
  {
    return 0;
  }

  sub_299497698(SP);
  v2 = *(*(SP + 800) + 8);

  return wrefresh(v2);
}

int slk_set(int a1, const char *a2, int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (!SP)
  {
    goto LABEL_35;
  }

  result = -1;
  if (a1 < 1)
  {
    goto LABEL_36;
  }

  v5 = *(SP + 800);
  if (!v5)
  {
    goto LABEL_36;
  }

  v6 = a3;
  if (a3 > 2 || *(v5 + 26) < a1)
  {
    goto LABEL_36;
  }

  v27 = (a1 - 1);
  v7 = 0;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = &unk_2994B2093;
  }

  v9 = *(SP + 808);
  v10 = MEMORY[0x29EDCA600];
  do
  {
    v11 = v8[v7];
    if (v11 < 0)
    {
      v12 = __maskrune(v8[v7], 0x4000uLL);
    }

    else
    {
      v12 = *(v10 + 4 * v11 + 60) & 0x4000;
    }

    ++v7;
  }

  while (v12);
  if (v9 >= 3)
  {
    v13 = 5;
  }

  else
  {
    v13 = 8;
  }

  if (v8[v7 - 1])
  {
    v14 = 0;
    v15 = &v8[v7 - 1];
    do
    {
      v28 = 0;
      memset(&v29, 0, sizeof(v29));
      v16 = strlen(v15);
      v17 = mbrtowc(0, v15, v16, &v29);
      if (v17 == -1)
      {
        break;
      }

      v18 = v17;
      mbrtowc(&v28, v15, v17, &v29);
      if (!(v28 > 0x7F ? __maskrune(v28, 0x40000uLL) : *(v10 + 4 * v28 + 60) & 0x40000))
      {
        break;
      }

      if (wcwidth(v28) + v14 > v13)
      {
        break;
      }

      v14 += wcwidth(v28);
      v15 += v18;
    }

    while (*v15);
  }

  else
  {
    v14 = 0;
    LODWORD(v15) = v8 + v7 - 1;
  }

  v20 = *(v5 + 16);
  v21 = *(v20 + 24 * v27);
  if (v21)
  {
    free(v21);
    v20 = *(v5 + 16);
  }

  v22 = strdup(&v8[v7 - 1]);
  *(v20 + 24 * v27) = v22;
  if (!v22 || (v23 = v15 - v8 - v7 + 1, v22[v23] = 0, v24 = _nc_doalloc(*(v20 + 24 * v27 + 8), v13 + v15 - v8 - v7 + 2), v25 = *(v5 + 16), (*(v25 + 24 * v27 + 8) = v24) == 0))
  {
LABEL_35:
    result = -1;
    goto LABEL_36;
  }

  if (v6)
  {
    if (v6 == 2)
    {
      v6 = v13 - v14;
    }

    else
    {
      v6 = (v13 - v14) / 2;
    }

    if (v6 < 1)
    {
      v6 = 0;
    }

    else
    {
      memset(v24, 32, v6);
      v25 = *(v5 + 16);
    }
  }

  memcpy((*(v25 + 24 * v27 + 8) + v6), *(v25 + 24 * v27), v23);
  if (v6 < v13)
  {
    memset((*(*(v5 + 16) + 24 * v27 + 8) + v6 + v23), 32, v13 - (v14 + v6));
  }

  result = 0;
  *(*(*(v5 + 16) + 24 * v27 + 8) + v13 + v15 - v14 - v8 - v7 + 1) = 0;
  *(*(v5 + 16) + 24 * v27 + 20) = 1;
LABEL_36:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

int slk_touch(void)
{
  if (!SP)
  {
    return -1;
  }

  v0 = *(SP + 800);
  if (!v0)
  {
    return -1;
  }

  result = 0;
  *v0 = 1;
  return result;
}

int tgetent(char *a1, const char *a2)
{
  v50 = -1;
  _nc_setupterm(a2, 1, &v50, 1);
  v3 = 0;
  v4 = &PC[144];
  while (*(v4 - 16) != 1 || *v4 != a1)
  {
    ++v3;
    v4 += 5;
    if (v3 == 4)
    {
      v5 = 0;
      v6 = 0;
      v7 = &PC[120];
      do
      {
        v8 = *v7;
        v7 += 40;
        if (v8 < *&PC[40 * v6 + 120])
        {
          v6 = v5;
        }

        ++v5;
      }

      while (v5 != 4);
LABEL_22:
      *&PC[280] = v6;
      goto LABEL_23;
    }
  }

  *&PC[280] = v3;
  v9 = *(v4 - 1);
  if (v9)
  {
    free(v9);
    v6 = *&PC[280];
    v10 = *&PC[280];
    *&PC[40 * *&PC[280] + 136] = 0;
  }

  else
  {
    v10 = v3;
    v6 = v3;
  }

  v11 = *&PC[40 * v10 + 152];
  if (v11)
  {
    v12 = v11 == cur_term;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    del_curterm(v11);
    for (i = 0; i != 160; i += 40)
    {
      if (*&PC[i + 152] == v11)
      {
        *&PC[i + 152] = 0;
      }
    }

    v6 = v3;
    goto LABEL_22;
  }

LABEL_23:
  v14 = cur_term;
  v15 = &PC[40 * v6 + 16];
  *(v15 + 17) = cur_term;
  *(v15 + 13) = ++*&PC[288];
  PC[0] = 0;
  UP = 0;
  *&PC[8] = 0;
  *(v15 + 15) = 0;
  if (v50 == 1)
  {
    Strings = v14->type.Strings;
    v17 = Strings[14];
    if (v17)
    {
      if (*v17 == 8)
      {
        v18 = v17[1];
        v14->type.Booleans[37] = v18 == 0;
        Strings = v14->type.Strings;
        if (!v18)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14->type.Booleans[37] = 0;
        Strings = v14->type.Strings;
      }

      Strings[397] = Strings[14];
      Strings = v14->type.Strings;
    }

LABEL_30:
    v19 = Strings[104];
    if (v19)
    {
      PC[0] = *v19;
    }

    if (Strings[19])
    {
      UP = Strings[19];
    }

    if (Strings[397])
    {
      *&PC[8] = Strings[397];
    }

    v20 = _nc_trim_sgr0(&v14->type);
    v21 = *&PC[280];
    *&PC[40 * *&PC[280] + 136] = v20;
    if (v20)
    {
      v22 = v20;
      v23 = *(cur_term->type.Strings + 39);
      if (!strcmp(v20, v23))
      {
        if (v22 != v23)
        {
          free(v22);
          v21 = *&PC[280];
        }

        *&PC[40 * v21 + 136] = 0;
      }
    }

    v24 = &PC[40 * v21 + 16];
    *(v24 + 16) = a1;
    v24[112] = 1;
    _nc_set_no_padding(SP);
    baudrate();
    v25 = cur_term;
    v26 = cur_term->type.Strings;
    v27 = v26[2];
    if ((v27 + 1) >= 2)
    {
      v36 = strchr(v27, 42);
      if (v36)
      {
        v37 = atoi(v36 + 1);
        if (v37)
        {
          v25->type.Numbers[34] = v37;
        }
      }
    }

    v28 = v26[103];
    if ((v28 + 1) >= 2)
    {
      v38 = strchr(v28, 42);
      if (v38)
      {
        v39 = atoi(v38 + 1);
        if (v39)
        {
          v25->type.Numbers[35] = v39;
        }
      }
    }

    if ((v26[394] + 1) <= 1)
    {
      v29 = v26[50];
      if ((v29 + 1) >= 2)
      {
        v26[394] = v29;
        *(v25->type.Strings + 50) = 0;
        v26 = v25->type.Strings;
      }
    }

    if ((v26[395] + 1) <= 1)
    {
      v30 = v26[123];
      if ((v30 + 1) >= 2 && (v26[122] + 1) <= 1 && (v26[124] + 1) <= 1)
      {
        v26[395] = v30;
        *(v25->type.Strings + 123) = 0;
      }
    }

    Numbers = v25->type.Numbers;
    if (Numbers[33] == -1)
    {
      v35 = Numbers[4];
      v32 = v25->type.Strings;
      if (v35 != 0xFFFF && (v32[36] + 1) >= 2)
      {
        Numbers[33] = v35;
      }
    }

    else
    {
      v32 = v25->type.Strings;
    }

    v33 = v32[103];
    if ((v33 + 1) >= 2)
    {
      v40 = *v33;
      if (v40 == 10)
      {
        v41 = -v33[1];
      }

      else
      {
        v41 = 10 - v40;
      }

      v34 = v41 == 0;
    }

    else
    {
      v34 = 0;
    }

    v25->type.Booleans[41] = v34;
    v42 = v25->type.Strings;
    v43 = v42[14];
    if ((v43 + 1) >= 2)
    {
      v46 = strchr(v43, 42);
      if (v46)
      {
        v47 = atoi(v46 + 1);
        if (v47)
        {
          v25->type.Numbers[36] = v47;
        }
      }
    }

    v44 = v42[134];
    if ((v44 + 1) >= 2)
    {
      v48 = strchr(v44, 42);
      if (v48)
      {
        v49 = atoi(v48 + 1);
        if (v49)
        {
          v25->type.Numbers[37] = v49;
        }
      }
    }
  }

  return v50;
}

int tgetflag(char *a1)
{
  v1 = cur_term;
  if (cur_term && *a1 && a1[1])
  {
    type_entry = _nc_find_type_entry(a1, 0, 1);
    if (type_entry)
    {
      nte_index = type_entry->nte_index;
      if ((nte_index & 0x8000000000000000) == 0)
      {
        return v1->type.Booleans[nte_index];
      }
    }

    else
    {
      num_Booleans = v1->type.num_Booleans;
      if (num_Booleans >= 0x2D)
      {
        v7 = *a1;
        v8 = &v1->type.ext_Names[v1->type.ext_Booleans - num_Booleans + 44];
        nte_index = 44;
        while (1)
        {
          v9 = *v8;
          if (v7 == **v8)
          {
            v10 = !v9[1] || v7 == 0;
            v11 = !v10 && a1[1] == v9[1];
            if (v11 && !v9[2])
            {
              break;
            }
          }

          ++nte_index;
          ++v8;
          if (num_Booleans == nte_index)
          {
            return 0;
          }
        }

        return v1->type.Booleans[nte_index];
      }
    }
  }

  return 0;
}

int tgetnum(char *a1)
{
  v1 = cur_term;
  if (!cur_term || !*a1 || !a1[1])
  {
    return -1;
  }

  type_entry = _nc_find_type_entry(a1, 1, 1);
  if (!type_entry)
  {
    num_Numbers = v1->type.num_Numbers;
    if (num_Numbers >= 0x28)
    {
      v7 = *a1;
      v8 = &v1->type.ext_Names[v1->type.ext_Numbers + v1->type.ext_Booleans - num_Numbers + 39];
      nte_index = 39;
      while (1)
      {
        v9 = *v8;
        if (v7 == **v8)
        {
          v10 = !v9[1] || v7 == 0;
          v11 = !v10 && a1[1] == v9[1];
          if (v11 && !v9[2])
          {
            break;
          }
        }

        ++nte_index;
        ++v8;
        if (num_Numbers == nte_index)
        {
          return -1;
        }
      }

      goto LABEL_6;
    }

    return -1;
  }

  nte_index = type_entry->nte_index;
  if (nte_index < 0)
  {
    return -1;
  }

LABEL_6:
  if (v1->type.Numbers[nte_index] < 0)
  {
    return -1;
  }

  else
  {
    return v1->type.Numbers[nte_index];
  }
}

char *__cdecl tgetstr(char *a1, char **a2)
{
  v2 = cur_term;
  if (!cur_term || !*a1 || !a1[1])
  {
    return 0;
  }

  type_entry = _nc_find_type_entry(a1, 2, 1);
  if (!type_entry)
  {
    num_Strings = v2->type.num_Strings;
    if (num_Strings >= 0x19F)
    {
      v9 = *a1;
      v10 = &v2->type.ext_Names[v2->type.ext_Strings + v2->type.ext_Numbers + v2->type.ext_Booleans - num_Strings + 414];
      nte_index = 414;
      while (1)
      {
        v11 = *v10;
        if (v9 == **v10)
        {
          v12 = !v11[1] || v9 == 0;
          v13 = !v12 && a1[1] == v11[1];
          if (v13 && !v11[2])
          {
            break;
          }
        }

        ++nte_index;
        ++v10;
        if (num_Strings == nte_index)
        {
          return 0;
        }
      }

      goto LABEL_6;
    }

    return 0;
  }

  nte_index = type_entry->nte_index;
  if (nte_index < 0)
  {
    return 0;
  }

LABEL_6:
  v7 = v2->type.Strings[nte_index];
  if ((v7 + 1) >= 2)
  {
    if (v7 == cur_term->type.Strings[39] && *&PC[40 * *&PC[280] + 136])
    {
      v7 = *&PC[40 * *&PC[280] + 136];
    }

    if (a2 && *a2)
    {
      strcpy(*a2, v7);
      v7 = *a2;
      *a2 += strlen(*a2) + 1;
    }
  }

  return v7;
}

char *termname(void)
{
  if (cur_term)
  {
    return cur_term->_termname;
  }

  else
  {
    return 0;
  }
}

int tigetflag(char *a1)
{
  v1 = cur_term;
  if (!cur_term)
  {
    return -1;
  }

  type_entry = _nc_find_type_entry(a1, 0, 0);
  if (type_entry)
  {
    LODWORD(v4) = type_entry->nte_index;
  }

  else
  {
    num_Booleans = v1->type.num_Booleans;
    if (num_Booleans < 0x2D)
    {
      return -1;
    }

    v7 = &v1->type.ext_Names[v1->type.ext_Booleans - num_Booleans + 44];
    v4 = 44;
    while (strcmp(a1, *v7))
    {
      ++v4;
      ++v7;
      if (num_Booleans == v4)
      {
        return -1;
      }
    }
  }

  if ((v4 & 0x80000000) == 0)
  {
    return v1->type.Booleans[v4];
  }

  return -1;
}

int tigetnum(char *a1)
{
  v1 = cur_term;
  if (!cur_term)
  {
    return -2;
  }

  type_entry = _nc_find_type_entry(a1, 1, 0);
  if (type_entry)
  {
    LODWORD(v4) = type_entry->nte_index;
  }

  else
  {
    num_Numbers = v1->type.num_Numbers;
    if (num_Numbers < 0x28)
    {
      return -2;
    }

    v7 = &v1->type.ext_Names[v1->type.ext_Numbers + v1->type.ext_Booleans - num_Numbers + 39];
    v4 = 39;
    while (strcmp(a1, *v7))
    {
      ++v4;
      ++v7;
      if (num_Numbers == v4)
      {
        return -2;
      }
    }
  }

  if ((v4 & 0x80000000) != 0)
  {
    return -2;
  }

  if (v1->type.Numbers[v4] < 0)
  {
    return -1;
  }

  else
  {
    return v1->type.Numbers[v4];
  }
}

char *__cdecl tigetstr(char *a1)
{
  v1 = cur_term;
  if (!cur_term)
  {
    return -1;
  }

  type_entry = _nc_find_type_entry(a1, 2, 0);
  if (type_entry)
  {
    LODWORD(v4) = type_entry->nte_index;
  }

  else
  {
    num_Strings = v1->type.num_Strings;
    if (num_Strings < 0x19F)
    {
      return -1;
    }

    v7 = &v1->type.ext_Names[v1->type.ext_Strings + v1->type.ext_Numbers + v1->type.ext_Booleans - num_Strings + 414];
    v4 = 414;
    while (strcmp(a1, *v7))
    {
      ++v4;
      ++v7;
      if (num_Strings == v4)
      {
        return -1;
      }
    }
  }

  if ((v4 & 0x80000000) == 0)
  {
    return v1->type.Strings[v4];
  }

  return -1;
}

BOOL is_linetouched(WINDOW *a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if ((a2 & 0x80000000) == 0 && *(a1 + 2) >= a2)
  {
    return *(*(a1 + 5) + 16 * a2 + 8) != -1;
  }

  return result;
}

BOOL is_wintouched(WINDOW *a1)
{
  if (a1)
  {
    if (*(a1 + 2) < 0)
    {
      LOBYTE(a1) = 0;
    }

    else
    {
      v1 = *(a1 + 2);
      v2 = (*(a1 + 5) + 8);
      do
      {
        v3 = *v2;
        v2 += 8;
        LOBYTE(a1) = v3 != 0xFFFF;
      }

      while (v3 == 0xFFFF && v1-- != 0);
    }
  }

  return a1;
}

int wtouchln(WINDOW *a1, int a2, int a3, int a4)
{
  v4 = -1;
  if (a1)
  {
    if (((a3 | a2) & 0x80000000) == 0)
    {
      v5 = *(a1 + 2);
      if (v5 >= a2)
      {
        if (a3 < 1)
        {
          return 0;
        }

        else
        {
          v6 = a3 + a2;
          if (a4)
          {
            v7 = 0;
          }

          else
          {
            v7 = -1;
          }

          v8 = (*(a1 + 5) + 16 * a2 + 10);
          do
          {
            *(v8 - 1) = v7;
            if (a4)
            {
              v9 = *(a1 + 3);
            }

            else
            {
              v9 = -1;
            }

            v4 = 0;
            *v8 = v9;
            v8 += 8;
            if (v6 <= a2 + 1)
            {
              break;
            }
          }

          while (a2++ < v5);
        }
      }
    }
  }

  return v4;
}

int _nc_tparm_analyze(const char *a1, char **a2, int *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = strlen(a1);
  v7 = v6;
  if (v6 > qword_2A1462AA8)
  {
    qword_2A1462AA8 += v6 + 2;
    off_2A1462AA0 = _nc_doalloc(off_2A1462AA0, qword_2A1462AA8);
    if (!off_2A1462AA0)
    {
      return 0;
    }
  }

  a2[8] = 0;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *a3 = 0;
  v8 = v7;
  if (v7 < 1)
  {
    v9 = 0;
    goto LABEL_93;
  }

  v9 = 0;
  v10 = a2 - 1;
  v11 = a1;
  v12 = -1;
  do
  {
    if (*v11 != 37)
    {
      goto LABEL_82;
    }

    ++v11;
    v13 = off_2A1462AA0;
    if (!off_2A1462AA0)
    {
      goto LABEL_30;
    }

    *off_2A1462AA0 = 37;
    v14 = v13 + 1;
    v15 = *v11;
    if (!*v11)
    {
      goto LABEL_29;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      if (v15 <= 0x2Du)
      {
        if (v15 == 32)
        {
          *v14++ = 32;
          goto LABEL_26;
        }

        if (v15 == 35)
        {
          *v14++ = 35;
          goto LABEL_26;
        }

        if (v15 != 45)
        {
          goto LABEL_24;
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_27;
        }

        *v14++ = 45;
LABEL_18:
        v19 = 1;
        goto LABEL_26;
      }

      if (v15 - 58 <= 0x3E)
      {
        if (v15 == 58)
        {
          goto LABEL_18;
        }

        if (((1 << (v15 - 58)) & 0x4220060040000000) != 0)
        {
          break;
        }
      }

      if (v15 != 46)
      {
LABEL_24:
        if (v15 - 48 > 9)
        {
          goto LABEL_27;
        }

        v16 = v15 + 10 * v16 - 48;
        v17 |= v16 > 10000;
        *v14++ = v15;
        goto LABEL_26;
      }

      v16 = 0;
      *v14++ = 46;
      v17 |= v18;
      v18 = 1;
LABEL_26:
      v20 = *++v11;
      v15 = v20;
      if (!v20)
      {
LABEL_27:
        if ((v17 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    *v14++ = v15;
    if (v17)
    {
LABEL_28:
      *v13 = 37;
      v14 = v13 + 2;
      v13[1] = *v11;
    }

LABEL_29:
    *v14 = 0;
LABEL_30:
    v21 = *v11;
    if (v21 <= 0x57)
    {
      if (*v11 > 0x3Bu)
      {
        if (*v11 > 0x40u)
        {
          if (v21 == 65 || v21 == 79)
          {
            goto LABEL_80;
          }

          if (v21 == 80)
          {
            ++v9;
            ++v11;
          }
        }

        else if (v21 - 60 < 3)
        {
          goto LABEL_80;
        }

        goto LABEL_82;
      }

      if (*v11 > 0x29u)
      {
        if (v21 - 42 < 2 || v21 == 45 || v21 == 47)
        {
          goto LABEL_80;
        }

        goto LABEL_82;
      }

      if (v21 != 33)
      {
        if (v21 == 38)
        {
          goto LABEL_80;
        }

        if (v21 == 39)
        {
          v12 = -1;
          v11 += 2;
        }

        goto LABEL_82;
      }

LABEL_79:
      ++v9;
      goto LABEL_81;
    }

    if (*v11 <= 0x6Eu)
    {
      if (*v11 <= 0x66u)
      {
        if (v21 - 99 >= 2 && v21 != 88)
        {
          if (v21 != 94)
          {
            goto LABEL_82;
          }

LABEL_80:
          v9 += 2;
LABEL_81:
          v12 = -1;
          goto LABEL_82;
        }

LABEL_74:
        if (v12 < 1)
        {
          ++v9;
        }

        goto LABEL_81;
      }

      if (v21 == 103)
      {
        ++v11;
        goto LABEL_82;
      }

      if (v21 != 108)
      {
        if (v21 == 109)
        {
          goto LABEL_80;
        }

        goto LABEL_82;
      }

LABEL_71:
      if (v12 >= 1)
      {
        v10[v12] = &unk_2A1462CD0;
      }

      ++v9;
      goto LABEL_82;
    }

    if (*v11 <= 0x77u)
    {
      if (v21 == 111)
      {
        goto LABEL_74;
      }

      if (v21 == 112)
      {
        v23 = *++v11;
        v24 = v23 - 48;
        if ((v23 - 48) <= 9)
        {
          if (v24 > *a3)
          {
            *a3 = v24;
          }

          v12 = v24;
        }

        goto LABEL_82;
      }

      if (v21 != 115)
      {
        goto LABEL_82;
      }

      goto LABEL_71;
    }

    if (*v11 > 0x7Bu)
    {
      if (v21 == 124)
      {
        goto LABEL_80;
      }

      if (v21 != 126)
      {
        goto LABEL_82;
      }

      goto LABEL_79;
    }

    if (v21 == 120)
    {
      goto LABEL_74;
    }

    if (v21 == 123)
    {
      do
      {
        v22 = *++v11;
      }

      while ((v22 - 48) < 0xA);
    }

LABEL_82:
    if (*v11)
    {
      ++v11;
    }
  }

  while (v11 - a1 < v8);
LABEL_93:
  if (v9 >= 9)
  {
    return 9;
  }

  else
  {
    return v9;
  }
}

char *tparm(char *a1, ...)
{
  va_start(va, a1);
  _nc_tparm_err = 0;
  return sub_29949908C(1, -1, -1, a1, va);
}

uint64_t sub_29949908C(int a1, int a2, int a3, char *__s, char **a5)
{
  v231 = *MEMORY[0x29EDCA608];
  v223 = a5;
  v222 = 0;
  if (!__s)
  {
    goto LABEL_97;
  }

  v230 = 0;
  v229 = 0u;
  v227 = 0u;
  v228 = 0u;
  *v226 = 0u;
  qword_2A1462A98 = 0;
  v9 = strlen(__s);
  v10 = _nc_tparm_analyze(__s, v226, &v222);
  if (!off_2A1462AA0)
  {
    goto LABEL_97;
  }

  if (v10 >= 9)
  {
    v11 = 9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v222;
  if (v222 >= 9)
  {
    v13 = 9;
  }

  else
  {
    v13 = v222;
  }

  v221 = v222;
  v222 = v13;
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      if (v226[v15])
      {
        v17 = v223++;
        v226[v15] = *v17;
        *(&v224 + v15) = 0;
        v16 |= 1 << v15;
      }

      else
      {
        v18 = v223++;
        if (a1)
        {
          v19 = *v18;
        }

        else
        {
          v19 = *v18;
        }

        *(&v224 + v15) = v19;
      }

      ++v15;
    }

    while (v14 != v15);
  }

  dword_2A1462A80 = 0;
  if (!v12)
  {
    v222 = v11;
    if (v10 >= 1)
    {
      v20 = 0;
      v21 = _nc_tparm_err;
      v22 = v11 + 1;
      v23 = &v224 + (v11 - 1);
      v24 = &v226[v11 - 1];
      do
      {
        v25 = *v24;
        if (*v24)
        {
          if (v20 > 19)
          {
            goto LABEL_32;
          }

          v26 = &_nc_prescreen[16 * v20];
          v26[152] = 0;
          *(v26 + 18) = v25;
        }

        else
        {
          if (v20 > 19)
          {
LABEL_32:
            _nc_tparm_err = ++v21;
            goto LABEL_33;
          }

          v27 = *v23;
          v28 = &_nc_prescreen[16 * v20];
          v28[152] = 1;
          *(v28 + 36) = v27;
        }

        v20 = ++dword_2A1462A80;
LABEL_33:
        --v22;
        --v23;
        --v24;
      }

      while (v22 > 1);
    }

    v13 = v11;
  }

  if (a3 != -1 && v16 != a3 && v16)
  {
    if (!cur_term)
    {
      goto LABEL_97;
    }

    if ((Strings = cur_term->type.Strings, v30 = Strings[115], (v30 + 1) >= 2) && !strcmp(v30, __s) || (v31 = Strings[116], (v31 + 1) >= 2) && !strcmp(v31, __s) || (v32 = Strings[117], (v32 + 1) >= 2) && !strcmp(v32, __s) || (v33 = Strings[147], (v33 + 1) >= 2) && !strcmp(v33, __s))
    {
      v36 = 2;
    }

    else
    {
      v34 = Strings[361];
      if ((v34 + 1) >= 2 && !strcmp(v34, __s))
      {
        v36 = 6;
      }

      else
      {
        v35 = tigetstr("Cs");
        v36 = (v35 + 1) >= 2 && strcmp(v35, __s) == 0;
        v37 = tigetstr("Ms");
        if ((v37 + 1) >= 2 && !strcmp(v37, __s))
        {
          v36 = 3;
        }
      }
    }

    if (v36 != v16)
    {
      goto LABEL_97;
    }
  }

  if (a2 != -1 && v13 != a2 && cur_term)
  {
    v38 = cur_term->type.Strings;
    v39 = v38[135];
    if ((v39 + 1) >= 2 && !strcmp(v39, __s) || (v40 = v38[360], (v40 + 1) >= 2) && !strcmp(v40, __s) || (v41 = v38[359], (v41 + 1) >= 2) && !strcmp(v41, __s) || (v42 = v38[303], (v42 + 1) >= 2) && !strcmp(v42, __s) || (v43 = v38[302], (v43 + 1) >= 2) && !strcmp(v43, __s))
    {
      v45 = 0;
    }

    else
    {
      v44 = tigetstr("xm");
      v45 = a2;
      if ((v44 + 1) >= 2)
      {
        if (!strcmp(v44, __s))
        {
          v45 = 3;
        }

        else
        {
          v45 = a2;
        }
      }

      v46 = tigetstr("S0");
      if ((v46 + 1) >= 2 && !strcmp(v46, __s))
      {
        v45 = 0;
      }
    }

    result = 0;
    if (v13 >= v45 && v13 <= a2)
    {
      v49 = v11;
    }

    else
    {
      v49 = a2;
    }

    if (v14)
    {
      v50 = 1;
    }

    else
    {
      v50 = v49 == 0;
    }

    v51 = !v50;
    if (v14 > v49 || (v51 & 1) != 0)
    {
      goto LABEL_484;
    }

    if (v49 != 9 && v14 != v49)
    {
LABEL_97:
      result = 0;
      goto LABEL_484;
    }
  }

  if (v9 < 1)
  {
    goto LABEL_480;
  }

  v220 = 0;
  v52 = __s;
LABEL_100:
  v53 = *v52;
  if (v53 != 37)
  {
    v65 = qword_2A1462A98;
    v66 = qword_2A1462A98 + 1;
    v67 = qword_2A1462A88;
    if (qword_2A1462A98 + 1 > qword_2A1462A90)
    {
      qword_2A1462A90 = 2 * v66;
      v67 = _nc_doalloc(qword_2A1462A88, 2 * v66);
      qword_2A1462A88 = v67;
      if (!v67)
      {
        goto LABEL_485;
      }

      v65 = qword_2A1462A98;
      v66 = qword_2A1462A98 + 1;
    }

    v68 = v53 == 0;
    v69 = 0x80;
LABEL_130:
    if (!v68)
    {
      v69 = v53;
    }

    qword_2A1462A98 = v66;
    v67[v65] = v69;
LABEL_466:
    v71 = *v52;
LABEL_467:
    if (!v71)
    {
      goto LABEL_480;
    }

    goto LABEL_468;
  }

  v54 = v52 + 1;
  qword_2A1462938 = v52;
  v55 = off_2A1462AA0;
  if (!off_2A1462AA0)
  {
    v70 = 0;
    goto LABEL_142;
  }

  *off_2A1462AA0 = 37;
  v56 = v55 + 1;
  v57 = *v54;
  if (!*v54)
  {
    v58 = 0;
LABEL_138:
    v64 = 0;
    goto LABEL_139;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  while (1)
  {
    if (v57 <= 0x2Du)
    {
      if (v57 == 32)
      {
        *v56++ = 32;
        goto LABEL_122;
      }

      if (v57 == 35)
      {
        *v56++ = 35;
        goto LABEL_122;
      }

      if (v57 != 45)
      {
        goto LABEL_120;
      }

      if ((v62 & 1) == 0)
      {
        goto LABEL_123;
      }

      *v56++ = 45;
LABEL_112:
      v62 = 1;
      goto LABEL_122;
    }

    if (v57 - 58 <= 0x3E)
    {
      if (v57 == 58)
      {
        goto LABEL_112;
      }

      if (((1 << (v57 - 58)) & 0x4220060040000000) != 0)
      {
        break;
      }
    }

    if (v57 != 46)
    {
LABEL_120:
      if (v57 - 48 > 9)
      {
        goto LABEL_123;
      }

      v58 = v57 + 10 * v58 - 48;
      v60 |= v58 > 10000;
      *v56++ = v57;
      goto LABEL_122;
    }

    *v56++ = 46;
    v60 |= v61;
    if ((v61 & 1) == 0)
    {
      v59 = v58;
    }

    v61 = 1;
    v58 = 0;
LABEL_122:
    v63 = *++v54;
    v57 = v63;
    if (!v63)
    {
LABEL_123:
      if (v60)
      {
        goto LABEL_124;
      }

      goto LABEL_136;
    }
  }

  *v56++ = v57;
  if (v60)
  {
LABEL_124:
    v59 = 0;
    v58 = 0;
    v64 = 0;
    *v55 = 37;
    v56 = v55 + 2;
    v55[1] = *v54;
    if ((v61 & 1) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_137;
  }

LABEL_136:
  if ((v61 & 1) == 0)
  {
    goto LABEL_138;
  }

LABEL_137:
  v64 = v58;
  v58 = v59;
LABEL_139:
  *v56 = 0;
  if (v58 <= v64)
  {
    v70 = v64;
  }

  else
  {
    v70 = v58;
  }

LABEL_142:
  v52 = v54;
  v71 = *v54;
  if (v71 <= 78)
  {
    if (v71 <= 44)
    {
      if (v71 > 38)
      {
        switch(v71)
        {
          case '\'':
            if (dword_2A1462A80 > 19)
            {
              ++_nc_tparm_err;
            }

            else
            {
              v112 = v52[1];
              v113 = &_nc_prescreen[16 * dword_2A1462A80];
              v113[152] = 1;
              *(v113 + 36) = v112;
              ++dword_2A1462A80;
            }

            v52 += 2;
            goto LABEL_466;
          case '*':
            v75 = dword_2A1462A80;
            v99 = dword_2A1462A80 - 1;
            if (dword_2A1462A80 < 1)
            {
              v101 = 0;
              ++_nc_tparm_err;
            }

            else
            {
              --dword_2A1462A80;
              v100 = &_nc_prescreen[16 * v99];
              if (v100[152] == 1)
              {
                v101 = *(v100 + 36);
              }

              else
              {
                v101 = 0;
              }

              if (v99)
              {
                v75 -= 2;
                dword_2A1462A80 = v75;
                v179 = &_nc_prescreen[16 * v75];
                if (v179[152] == 1)
                {
                  v180 = *(v179 + 36);
                }

                else
                {
                  v180 = 0;
                }

                if (v75 <= 0x13)
                {
                  goto LABEL_428;
                }

                goto LABEL_455;
              }

              v75 = 0;
            }

            v180 = 0;
            ++_nc_tparm_err;
LABEL_428:
            v210 = v180 * v101;
            break;
          case '+':
            v75 = dword_2A1462A80;
            v82 = dword_2A1462A80 - 1;
            if (dword_2A1462A80 < 1)
            {
              v84 = 0;
              ++_nc_tparm_err;
            }

            else
            {
              --dword_2A1462A80;
              v83 = &_nc_prescreen[16 * v82];
              if (v83[152] == 1)
              {
                v84 = *(v83 + 36);
              }

              else
              {
                v84 = 0;
              }

              if (v82)
              {
                v75 -= 2;
                dword_2A1462A80 = v75;
                v173 = &_nc_prescreen[16 * v75];
                if (v173[152] == 1)
                {
                  v174 = *(v173 + 36);
                }

                else
                {
                  v174 = 0;
                }

                if (v75 <= 0x13)
                {
                  goto LABEL_420;
                }

                goto LABEL_455;
              }

              v75 = 0;
            }

            v174 = 0;
            ++_nc_tparm_err;
LABEL_420:
            v210 = v174 + v84;
            break;
          default:
            goto LABEL_467;
        }

        goto LABEL_464;
      }

      switch(v71)
      {
        case '!':
          v105 = dword_2A1462A80;
          v106 = dword_2A1462A80 - 1;
          if (dword_2A1462A80 >= 1)
          {
            --dword_2A1462A80;
            v107 = &_nc_prescreen[16 * v106];
            v108 = v107[152] != 1 || *(v107 + 36) == 0;
LABEL_383:
            if (v105 <= 0x14)
            {
              goto LABEL_384;
            }

LABEL_455:
            ++_nc_tparm_err;
            goto LABEL_466;
          }

          ++_nc_tparm_err;
          v108 = 1;
LABEL_341:
          v106 = v105;
LABEL_384:
          v207 = &_nc_prescreen[16 * v106];
          v207[152] = 1;
          *(v207 + 36) = v108;
          break;
        case '%':
          v93 = qword_2A1462A98;
          v94 = qword_2A1462A98 + 1;
          v95 = qword_2A1462A88;
          if (qword_2A1462A98 + 1 > qword_2A1462A90)
          {
            qword_2A1462A90 = 2 * v94;
            v95 = _nc_doalloc(qword_2A1462A88, 2 * v94);
            qword_2A1462A88 = v95;
            if (!v95)
            {
              goto LABEL_485;
            }

            v93 = qword_2A1462A98;
            v94 = qword_2A1462A98 + 1;
          }

          qword_2A1462A98 = v94;
          v95[v93] = 37;
          goto LABEL_466;
        case '&':
          v75 = dword_2A1462A80;
          v76 = dword_2A1462A80 - 1;
          if (dword_2A1462A80 < 1)
          {
            v78 = 0;
            ++_nc_tparm_err;
          }

          else
          {
            --dword_2A1462A80;
            v77 = &_nc_prescreen[16 * v76];
            if (v77[152] == 1)
            {
              v78 = *(v77 + 36);
            }

            else
            {
              v78 = 0;
            }

            if (v76)
            {
              v75 -= 2;
              dword_2A1462A80 = v75;
              v169 = &_nc_prescreen[16 * v75];
              if (v169[152] == 1)
              {
                v170 = *(v169 + 36);
              }

              else
              {
                v170 = 0;
              }

              if (v75 <= 0x13)
              {
                goto LABEL_414;
              }

              goto LABEL_455;
            }

            v75 = 0;
          }

          v170 = 0;
          ++_nc_tparm_err;
LABEL_414:
          v210 = v170 & v78;
LABEL_464:
          v215 = &_nc_prescreen[16 * v75];
          v215[152] = 1;
          *(v215 + 36) = v210;
          break;
        default:
          goto LABEL_467;
      }

LABEL_465:
      ++dword_2A1462A80;
      goto LABEL_466;
    }

    if (v71 > 60)
    {
      switch(v71)
      {
        case '=':
          v75 = dword_2A1462A80;
          v114 = dword_2A1462A80 - 1;
          if (dword_2A1462A80 < 1)
          {
            v116 = 0;
            ++_nc_tparm_err;
          }

          else
          {
            --dword_2A1462A80;
            v115 = &_nc_prescreen[16 * v114];
            if (v115[152] == 1)
            {
              v116 = *(v115 + 36);
            }

            else
            {
              v116 = 0;
            }

            if (v114)
            {
              v75 -= 2;
              dword_2A1462A80 = v75;
              v185 = &_nc_prescreen[16 * v75];
              if (v185[152] == 1)
              {
                v186 = *(v185 + 36);
              }

              else
              {
                v186 = 0;
              }

              if (v75 <= 0x13)
              {
                goto LABEL_437;
              }

              goto LABEL_455;
            }

            v75 = 0;
          }

          v186 = 0;
          ++_nc_tparm_err;
LABEL_437:
          v210 = v186 == v116;
          break;
        case '>':
          v75 = dword_2A1462A80;
          v102 = dword_2A1462A80 - 1;
          if (dword_2A1462A80 < 1)
          {
            v104 = 0;
            ++_nc_tparm_err;
          }

          else
          {
            --dword_2A1462A80;
            v103 = &_nc_prescreen[16 * v102];
            if (v103[152] == 1)
            {
              v104 = *(v103 + 36);
            }

            else
            {
              v104 = 0;
            }

            if (v102)
            {
              v75 -= 2;
              dword_2A1462A80 = v75;
              v181 = &_nc_prescreen[16 * v75];
              if (v181[152] == 1)
              {
                v182 = *(v181 + 36);
              }

              else
              {
                v182 = 0;
              }

              if (v75 <= 0x13)
              {
                goto LABEL_431;
              }

              goto LABEL_455;
            }

            v75 = 0;
          }

          v182 = 0;
          ++_nc_tparm_err;
LABEL_431:
          v210 = v182 > v104;
          break;
        case 'A':
          v75 = dword_2A1462A80;
          v85 = dword_2A1462A80 - 1;
          if (dword_2A1462A80 < 1)
          {
            v87 = 0;
            ++_nc_tparm_err;
          }

          else
          {
            --dword_2A1462A80;
            v86 = &_nc_prescreen[16 * v85];
            v87 = v86[152] == 1 && *(v86 + 36) != 0;
            if (v85)
            {
              v75 -= 2;
              dword_2A1462A80 = v75;
              v175 = &_nc_prescreen[16 * v75];
              v176 = v175[152] == 1 && *(v175 + 36) != 0;
              if (v75 <= 0x13)
              {
                goto LABEL_423;
              }

              goto LABEL_455;
            }

            v75 = 0;
          }

          v176 = 0;
          ++_nc_tparm_err;
LABEL_423:
          v210 = v87 && v176;
          break;
        default:
          goto LABEL_467;
      }

      goto LABEL_464;
    }

    if (v71 == 45)
    {
      v75 = dword_2A1462A80;
      v109 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        v111 = 0;
        ++_nc_tparm_err;
      }

      else
      {
        --dword_2A1462A80;
        v110 = &_nc_prescreen[16 * v109];
        if (v110[152] == 1)
        {
          v111 = *(v110 + 36);
        }

        else
        {
          v111 = 0;
        }

        if (v109)
        {
          v75 -= 2;
          dword_2A1462A80 = v75;
          v183 = &_nc_prescreen[16 * v75];
          if (v183[152] == 1)
          {
            v184 = *(v183 + 36);
          }

          else
          {
            v184 = 0;
          }

          if (v75 <= 0x13)
          {
            goto LABEL_434;
          }

          goto LABEL_455;
        }

        v75 = 0;
      }

      v184 = 0;
      ++_nc_tparm_err;
LABEL_434:
      v210 = v184 - v111;
      goto LABEL_464;
    }

    if (v71 != 47)
    {
      if (v71 != 60)
      {
        goto LABEL_467;
      }

      v75 = dword_2A1462A80;
      v79 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        v81 = 0;
        ++_nc_tparm_err;
      }

      else
      {
        --dword_2A1462A80;
        v80 = &_nc_prescreen[16 * v79];
        if (v80[152] == 1)
        {
          v81 = *(v80 + 36);
        }

        else
        {
          v81 = 0;
        }

        if (v79)
        {
          v75 -= 2;
          dword_2A1462A80 = v75;
          v171 = &_nc_prescreen[16 * v75];
          if (v171[152] == 1)
          {
            v172 = *(v171 + 36);
          }

          else
          {
            v172 = 0;
          }

          if (v75 <= 0x13)
          {
            goto LABEL_417;
          }

          goto LABEL_455;
        }

        v75 = 0;
      }

      v172 = 0;
      ++_nc_tparm_err;
LABEL_417:
      v210 = v172 < v81;
      goto LABEL_464;
    }

    v75 = dword_2A1462A80;
    v96 = dword_2A1462A80 - 1;
    if (dword_2A1462A80 < 1)
    {
      v98 = 0;
      ++_nc_tparm_err;
    }

    else
    {
      --dword_2A1462A80;
      v97 = &_nc_prescreen[16 * v96];
      if (v97[152] == 1)
      {
        v98 = *(v97 + 36);
      }

      else
      {
        v98 = 0;
      }

      if (v96)
      {
        v75 -= 2;
        dword_2A1462A80 = v75;
        v177 = &_nc_prescreen[16 * v75];
        if (v177[152] == 1)
        {
          v178 = *(v177 + 36);
        }

        else
        {
          v178 = 0;
        }

LABEL_425:
        v211 = v178 / v98;
LABEL_454:
        v210 = v211;
        if (v75 <= 19)
        {
          goto LABEL_464;
        }

        goto LABEL_455;
      }

      v75 = 0;
    }

    v178 = 0;
    ++_nc_tparm_err;
    goto LABEL_425;
  }

  switch(v71)
  {
    case 'X':
    case 'd':
    case 'o':
    case 'x':
      v72 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        v74 = 0;
        ++_nc_tparm_err;
      }

      else
      {
        --dword_2A1462A80;
        v73 = &_nc_prescreen[16 * v72];
        if (v73[152] == 1)
        {
          v74 = *(v73 + 36);
        }

        else
        {
          v74 = 0;
        }
      }

      if (v70 <= 30)
      {
        v117 = 30;
      }

      else
      {
        v117 = v70;
      }

      v119 = qword_2A1462A98;
      v118 = off_2A1462AA0;
      v120 = qword_2A1462A98 + (v117 + 1);
      v121 = qword_2A1462A88;
      if (v120 <= qword_2A1462A90)
      {
        goto LABEL_212;
      }

      qword_2A1462A90 = 2 * v120;
      v122 = _nc_doalloc(qword_2A1462A88, 2 * v120);
      qword_2A1462A88 = v122;
      if (!v122)
      {
        goto LABEL_485;
      }

      v121 = v122;
      v119 = qword_2A1462A98;
LABEL_212:
      v123 = fmtcheck(v118, "%d");
      sprintf((v121 + v119), v123, v74);
      goto LABEL_213;
    case 'Y':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '_':
    case 'a':
    case 'b':
    case 'f':
    case 'h':
    case 'j':
    case 'k':
    case 'n':
    case 'q':
    case 'r':
    case 'u':
    case 'v':
    case 'w':
    case 'y':
    case 'z':
    case '}':
      goto LABEL_467;
    case '^':
      v75 = dword_2A1462A80;
      v127 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        v129 = 0;
        ++_nc_tparm_err;
      }

      else
      {
        --dword_2A1462A80;
        v128 = &_nc_prescreen[16 * v127];
        if (v128[152] == 1)
        {
          v129 = *(v128 + 36);
        }

        else
        {
          v129 = 0;
        }

        if (v127)
        {
          v75 -= 2;
          dword_2A1462A80 = v75;
          v203 = &_nc_prescreen[16 * v75];
          if (v203[152] == 1)
          {
            v204 = *(v203 + 36);
          }

          else
          {
            v204 = 0;
          }

          if (v75 > 0x13)
          {
            goto LABEL_455;
          }

LABEL_451:
          v210 = v204 ^ v129;
          goto LABEL_464;
        }

        v75 = 0;
      }

      v204 = 0;
      ++_nc_tparm_err;
      goto LABEL_451;
    case 'c':
      v140 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        v53 = 0;
        ++_nc_tparm_err;
      }

      else
      {
        --dword_2A1462A80;
        v141 = &_nc_prescreen[16 * v140];
        if (v141[152] == 1)
        {
          v53 = *(v141 + 36);
        }

        else
        {
          v53 = 0;
        }
      }

      v65 = qword_2A1462A98;
      v66 = qword_2A1462A98 + 1;
      v67 = qword_2A1462A88;
      if (qword_2A1462A98 + 1 <= qword_2A1462A90)
      {
        goto LABEL_389;
      }

      qword_2A1462A90 = 2 * v66;
      v67 = _nc_doalloc(qword_2A1462A88, 2 * v66);
      qword_2A1462A88 = v67;
      if (!v67)
      {
        goto LABEL_485;
      }

      v65 = qword_2A1462A98;
      v66 = qword_2A1462A98 + 1;
LABEL_389:
      v68 = v53 == 0;
      v69 = 0x80;
      goto LABEL_130;
    case 'e':
      v134 = 0;
      ++v52;
      while (2)
      {
        v135 = *v52;
        if (v135 == 37)
        {
          v136 = *++v52;
          v135 = v136;
          if (v136 != 59)
          {
            if (v135 == 63)
            {
              v135 = 63;
              ++v134;
            }

            goto LABEL_236;
          }

          v137 = __OFSUB__(v134--, 1);
          if (v134 < 0 == v137)
          {
            v135 = 63;
LABEL_236:
            if (v135)
            {
              ++v52;
            }

            continue;
          }

LABEL_468:
          if (++v52 - __s >= v9)
          {
            goto LABEL_480;
          }

          goto LABEL_100;
        }

        break;
      }

      if (*v52)
      {
        goto LABEL_236;
      }

LABEL_480:
      v216 = qword_2A1462A98;
      v217 = qword_2A1462A98 + 1;
      v218 = qword_2A1462A88;
      if (qword_2A1462A98 + 1 > qword_2A1462A90)
      {
        qword_2A1462A90 = 2 * v217;
        v218 = _nc_doalloc(qword_2A1462A88, 2 * v217);
        qword_2A1462A88 = v218;
        if (!v218)
        {
LABEL_485:
          _nc_err_abort("Out of memory");
        }

        v216 = qword_2A1462A98;
      }

      v218[v216] = 0;
      result = qword_2A1462A88;
LABEL_484:
      v219 = *MEMORY[0x29EDCA608];
      return result;
    case 'g':
      v146 = *++v52;
      v145 = v146;
      if (v146 - 65 > 0x19)
      {
        if ((v145 - 97) > 0x19)
        {
          goto LABEL_466;
        }

        v147 = dword_2A1462A80;
        if (dword_2A1462A80 > 19)
        {
          goto LABEL_455;
        }

        v148 = *&_nc_prescreen[4 * v145 + 124];
      }

      else
      {
        v147 = dword_2A1462A80;
        if (dword_2A1462A80 > 19)
        {
          goto LABEL_455;
        }

        v148 = *&_nc_prescreen[4 * v145 + 356];
      }

LABEL_285:
      v165 = &_nc_prescreen[16 * v147];
      v165[152] = 1;
      *(v165 + 36) = v148;
      goto LABEL_465;
    case 'i':
      if (v220)
      {
        v220 = 1;
        goto LABEL_468;
      }

      if (v226[0])
      {
        if (v226[1])
        {
          goto LABEL_477;
        }

        v164 = ++v225;
        if (v221)
        {
          goto LABEL_477;
        }
      }

      else
      {
        v214 = ++v224;
        if (v221)
        {
          if (!v226[1])
          {
            ++v225;
          }

LABEL_477:
          v220 = 1;
          goto LABEL_466;
        }

        LODWORD(qword_2A1462940) = v214;
        if (v226[1])
        {
          goto LABEL_477;
        }

        v164 = ++v225;
      }

      LODWORD(qword_2A1462950) = v164;
      goto LABEL_477;
    case 'l':
      v153 = dword_2A1462A80;
      v154 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        ++_nc_tparm_err;
        v156 = &unk_2A1462CD1;
        v154 = dword_2A1462A80;
      }

      else
      {
        --dword_2A1462A80;
        v155 = &_nc_prescreen[16 * v154];
        v156 = &unk_2A1462CD1;
        if ((v155[152] & 1) == 0)
        {
          v157 = *(v155 + 18);
          if (v157)
          {
            v156 = v157;
          }

          else
          {
            v156 = &unk_2A1462CD1;
          }
        }

        if (v153 > 0x14)
        {
          goto LABEL_455;
        }
      }

      v199 = strlen(v156);
      v200 = &_nc_prescreen[16 * v154];
      v200[152] = 1;
      *(v200 + 36) = v199;
      goto LABEL_465;
    case 'm':
      v75 = dword_2A1462A80;
      v130 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        v132 = 0;
        ++_nc_tparm_err;
      }

      else
      {
        --dword_2A1462A80;
        v131 = &_nc_prescreen[16 * v130];
        if (v131[152] == 1)
        {
          v132 = *(v131 + 36);
        }

        else
        {
          v132 = 0;
        }

        if (v130)
        {
          v75 -= 2;
          dword_2A1462A80 = v75;
          v205 = &_nc_prescreen[16 * v75];
          if (v205[152] == 1)
          {
            v206 = *(v205 + 36);
          }

          else
          {
            v206 = 0;
          }

LABEL_453:
          v211 = v206 % v132;
          goto LABEL_454;
        }

        v75 = 0;
      }

      v206 = 0;
      ++_nc_tparm_err;
      goto LABEL_453;
    case 'p':
      v142 = *++v52;
      v71 = v142;
      if ((v142 - 49) > 8)
      {
        goto LABEL_467;
      }

      v143 = v226[v71 - 49];
      if (v143)
      {
        if (dword_2A1462A80 > 19)
        {
          goto LABEL_455;
        }

        v144 = &_nc_prescreen[16 * dword_2A1462A80];
        v144[152] = 0;
        *(v144 + 18) = v143;
      }

      else
      {
        if (dword_2A1462A80 > 19)
        {
          goto LABEL_455;
        }

        v212 = *(&v224 + (v71 - 49));
        v213 = &_nc_prescreen[16 * dword_2A1462A80];
        v213[152] = 1;
        *(v213 + 36) = v212;
      }

      goto LABEL_465;
    case 's':
      v149 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        ++_nc_tparm_err;
        v151 = &unk_2A1462CD1;
      }

      else
      {
        --dword_2A1462A80;
        v150 = &_nc_prescreen[16 * v149];
        v151 = &unk_2A1462CD1;
        if ((v150[152] & 1) == 0)
        {
          v152 = *(v150 + 18);
          if (v152)
          {
            v151 = v152;
          }

          else
          {
            v151 = &unk_2A1462CD1;
          }
        }
      }

      v191 = off_2A1462AA0;
      v192 = strlen(v151);
      v193 = v70;
      if (v70 <= v192)
      {
        v193 = v192;
      }

      v194 = qword_2A1462A98;
      v195 = qword_2A1462A98 + v193 + 1;
      v196 = qword_2A1462A88;
      if (v195 <= qword_2A1462A90)
      {
        goto LABEL_366;
      }

      qword_2A1462A90 = 2 * v195;
      v197 = _nc_doalloc(qword_2A1462A88, 2 * v195);
      qword_2A1462A88 = v197;
      if (!v197)
      {
        goto LABEL_485;
      }

      v196 = v197;
      v194 = qword_2A1462A98;
LABEL_366:
      v198 = fmtcheck(v191, "%s");
      sprintf((v196 + v194), v198, v151);
LABEL_213:
      qword_2A1462A98 += strlen((qword_2A1462A88 + qword_2A1462A98));
      goto LABEL_466;
    case 't':
      v138 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        ++_nc_tparm_err;
LABEL_343:
        v187 = 0;
        ++v52;
        while (1)
        {
          v188 = *v52;
          if (v188 == 37)
          {
            v189 = *++v52;
            v188 = v189;
            if (v189 == 59)
            {
              v137 = __OFSUB__(v187--, 1);
              if (v187 < 0 != v137)
              {
                goto LABEL_468;
              }

              v188 = 63;
            }

            else if (v188 == 63)
            {
              ++v187;
            }

            else if (v188 == 101 && v187 == 0)
            {
              goto LABEL_468;
            }
          }

          else if (!*v52)
          {
            goto LABEL_480;
          }

          if (v188)
          {
            ++v52;
          }
        }
      }

      --dword_2A1462A80;
      v139 = &_nc_prescreen[16 * v138];
      if ((v139[152] & 1) == 0 || !*(v139 + 36))
      {
        goto LABEL_343;
      }

      goto LABEL_466;
    case '{':
      v158 = *++v52;
      v159 = v158 - 48;
      if ((v158 - 48) > 9)
      {
        v148 = 0;
      }

      else
      {
        v148 = 0;
        do
        {
          v148 = v159 + 10 * v148;
          v160 = *++v52;
          v159 = v160 - 48;
        }

        while ((v160 - 48) < 0xA);
      }

      v147 = dword_2A1462A80;
      if (dword_2A1462A80 <= 19)
      {
        goto LABEL_285;
      }

      goto LABEL_455;
    case '|':
      v75 = dword_2A1462A80;
      v124 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        v126 = 0;
        ++_nc_tparm_err;
      }

      else
      {
        --dword_2A1462A80;
        v125 = &_nc_prescreen[16 * v124];
        if (v125[152] == 1)
        {
          v126 = *(v125 + 36);
        }

        else
        {
          v126 = 0;
        }

        if (v124)
        {
          v75 -= 2;
          dword_2A1462A80 = v75;
          v201 = &_nc_prescreen[16 * v75];
          if (v201[152] == 1)
          {
            v202 = *(v201 + 36);
          }

          else
          {
            v202 = 0;
          }

          if (v75 > 0x13)
          {
            goto LABEL_455;
          }

LABEL_448:
          v210 = v202 | v126;
          goto LABEL_464;
        }

        v75 = 0;
      }

      v202 = 0;
      ++_nc_tparm_err;
      goto LABEL_448;
    case '~':
      v105 = dword_2A1462A80;
      v106 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        ++_nc_tparm_err;
        v108 = -1;
        goto LABEL_341;
      }

      --dword_2A1462A80;
      v133 = &_nc_prescreen[16 * v106];
      if (v133[152] == 1)
      {
        v108 = ~*(v133 + 36);
      }

      else
      {
        v108 = -1;
      }

      goto LABEL_383;
    default:
      if (v71 != 79)
      {
        if (v71 != 80)
        {
          goto LABEL_467;
        }

        v89 = *++v52;
        v88 = v89;
        if (v89 - 65 > 0x19)
        {
          if ((v88 - 97) <= 0x19)
          {
            v166 = dword_2A1462A80 - 1;
            if (dword_2A1462A80 < 1)
            {
              v168 = 0;
              ++_nc_tparm_err;
            }

            else
            {
              --dword_2A1462A80;
              v167 = &_nc_prescreen[16 * v166];
              if (v167[152] == 1)
              {
                v168 = *(v167 + 36);
              }

              else
              {
                v168 = 0;
              }
            }

            *&_nc_prescreen[4 * v88 + 124] = v168;
          }
        }

        else
        {
          v90 = dword_2A1462A80 - 1;
          if (dword_2A1462A80 < 1)
          {
            v92 = 0;
            ++_nc_tparm_err;
          }

          else
          {
            --dword_2A1462A80;
            v91 = &_nc_prescreen[16 * v90];
            if (v91[152] == 1)
            {
              v92 = *(v91 + 36);
            }

            else
            {
              v92 = 0;
            }
          }

          *&_nc_prescreen[4 * v88 + 356] = v92;
        }

        goto LABEL_466;
      }

      v75 = dword_2A1462A80;
      v161 = dword_2A1462A80 - 1;
      if (dword_2A1462A80 < 1)
      {
        v163 = 0;
        ++_nc_tparm_err;
      }

      else
      {
        --dword_2A1462A80;
        v162 = &_nc_prescreen[16 * v161];
        v163 = v162[152] == 1 && *(v162 + 36) != 0;
        if (v161)
        {
          v75 -= 2;
          dword_2A1462A80 = v75;
          v208 = &_nc_prescreen[16 * v75];
          v209 = v208[152] == 1 && *(v208 + 36) != 0;
          if (v75 > 0x13)
          {
            goto LABEL_455;
          }

LABEL_463:
          v210 = v163 || v209;
          goto LABEL_464;
        }

        v75 = 0;
      }

      v209 = 0;
      ++_nc_tparm_err;
      goto LABEL_463;
  }
}

char *tiparm_s(int a1, int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (a2 > 0x1FF)
  {
    return 0;
  }

  _nc_tparm_err = 0;
  return sub_29949908C(0, a1, a2, a3, va);
}

char *tiparm(const char *a1, ...)
{
  va_start(va, a1);
  _nc_tparm_err = 0;
  return sub_29949908C(0, -1, -1, a1, va);
}

char *_nc_tiparm(int a1, const char *a2, ...)
{
  va_start(va, a2);
  _nc_tparm_err = 0;
  return sub_29949908C(0, a1, -1, a2, va);
}

char *_nc_set_no_padding(uint64_t a1)
{
  result = getenv("NCURSES_NO_PADDING");
  if (a1)
  {
    *(a1 + 812) = result != 0;
  }

  else
  {
    byte_2A1462B88 = result != 0;
  }

  return result;
}

int delay_output(int a1)
{
  if (!cur_term)
  {
    return -1;
  }

  if (cur_term->type.Booleans[25])
  {
    _nc_flush();
    napms(a1);
  }

  else
  {
    v3 = off_2A18BE850;
    v4 = _nc_baudrate(ospeed);
    v5 = v4 * a1 / 9000;
    _nc_nulls_sent += v5;
    if (v4 * a1 >= 9000)
    {
      v6 = v5 + 1;
      do
      {
        v3(PC[0]);
        --v6;
      }

      while (v6 > 1);
    }

    if (v3 == _nc_outch)
    {
      _nc_flush();
    }
  }

  return 0;
}

void _nc_flush()
{
  if (SP)
  {
    if ((*(SP + 4) & 0x80000000) == 0)
    {
      v0 = *(SP + 32);
      if (v0)
      {
        v1 = *(SP + 16);
        *(SP + 32) = 0;
        do
        {
          while (1)
          {
            v2 = write(*(SP + 4), v1, v0);
            if (v2 < 1)
            {
              break;
            }

            v1 += v2;
            v0 -= v2;
            if (!v0)
            {
              return;
            }
          }
        }

        while (*__error() == 35 || *__error() == 4);
      }
    }
  }
}

uint64_t _nc_outch(char a1)
{
  v2 = SP;
  if (cur_term)
  {
    v3 = SP == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v10 = a1;
    v4 = fileno(*MEMORY[0x29EDCA620]);
    p_buf = &v10;
    goto LABEL_12;
  }

  v6 = *(SP + 16);
  if (!v6)
  {
    __buf = a1;
    v4 = fileno(*(SP + 8));
    p_buf = &__buf;
LABEL_12:
    if (write(v4, p_buf, 1uLL) == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  v7 = *(SP + 32);
  v8 = v7 + 1;
  if ((v7 + 1) >= *(SP + 24))
  {
    _nc_flush();
    v2 = SP;
    v6 = *(SP + 16);
    v7 = *(SP + 32);
    v8 = v7 + 1;
  }

  result = 0;
  *(v2 + 32) = v8;
  *(v6 + v7) = a1;
  return result;
}

int tputs(const char *a1, int a2, int (__cdecl *a3)(int))
{
  if (SP)
  {
    v3 = cur_term == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return -1;
  }

  v4 = a1;
  if ((a1 + 1) < 2)
  {
    return -1;
  }

  v8 = off_2A18BE850;
  if (cur_term)
  {
    Strings = cur_term->type.Strings;
    v10 = Strings[1] == a1 || Strings[45] == a1;
    if (!cur_term->type.Booleans[20] && cur_term->type.Numbers[5])
    {
      if (SP)
      {
        if ((*(SP + 812) & 1) == 0)
        {
LABEL_59:
          if (_nc_baudrate(ospeed) >= cur_term->type.Numbers[5])
          {
            v10 = 1;
          }
        }
      }

      else if ((byte_2A1462B88 & 1) == 0)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  off_2A18BE850 = a3;
  while (1)
  {
    while (1)
    {
      v11 = *v4;
      if (v11 != 36)
      {
        if (!*v4)
        {
          goto LABEL_53;
        }

        (a3)(v11);
        goto LABEL_29;
      }

      if (v4[1] != 60)
      {
        break;
      }

      v13 = v4[2];
      v4 += 2;
      v12 = v13;
      v14 = v13 - 48;
      v15 = v13 != 46 && v14 > 9;
      if (!v15 && strchr(v4, 62))
      {
        if (v14 > 9)
        {
          v18 = 0;
        }

        else
        {
          v16 = 0;
          do
          {
            v16 = 10 * v16 + v12 - 48;
            v17 = *++v4;
            v12 = v17;
          }

          while ((v17 - 48) < 0xA);
          v18 = 10 * v16;
        }

        if (v12 == 46)
        {
          v20 = v4[1];
          v19 = v4 + 1;
          v21 = v20 - 48;
          v22 = v20 - 48;
          v23 = v21 >= 0xA;
          if (v21 >= 0xA)
          {
            v24 = v19;
          }

          else
          {
            v24 = v19 + 1;
          }

          if (v23)
          {
            v22 = 0;
          }

          v4 = v24 - 1;
          do
          {
            v25 = *++v4;
            LOBYTE(v12) = v25;
          }

          while ((v25 - 48) < 0xA);
          v18 += v22;
        }

        v26 = 0;
        while (v12 == 47 || v12 == 42)
        {
          if (v12 == 42)
          {
            v27 = a2;
          }

          else
          {
            v27 = 1;
          }

          v18 *= v27;
          v26 |= v12 != 42;
          v28 = *++v4;
          LOBYTE(v12) = v28;
        }

        if (v18 >= 1 && ((v10 | v26) & 1) != 0)
        {
          delay_output(v18 / 0xAu);
        }

        goto LABEL_29;
      }

      (a3)(36);
      (a3)(60);
    }

    (a3)(36);
    if (!v4[1])
    {
      break;
    }

    (a3)();
    ++v4;
LABEL_29:
    if (!*v4)
    {
      break;
    }

    ++v4;
  }

LABEL_53:
  result = 0;
  off_2A18BE850 = v8;
  return result;
}

uint64_t _nc_putp(int a1, char *a2)
{
  if (a2)
  {
    return tputs(a2, 1, _nc_outch);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _nc_signal_handler(uint64_t result)
{
  v1 = result;
  if (byte_2A1462CD8)
  {
    goto LABEL_12;
  }

  if (result)
  {
    if (qword_2A1462CE0)
    {
      v2 = (&qword_2A1462CEC + 4);
    }

    else
    {
      result = sigaction(18, 0, (&qword_2A1462CEC + 4));
      if (result || *(&qword_2A1462CEC + 4))
      {
        byte_2A1462CD8 = 1;
        if (!v1)
        {
          return result;
        }

LABEL_13:
        if ((PC[28] & 1) == 0)
        {
          sub_29949AF38(2, sub_29949AFC4);
          sub_29949AF38(15, sub_29949AFC4);
          result = sub_29949AF38(28, sub_29949B07C);
          PC[28] = 1;
        }

        return result;
      }

      v2 = &qword_2A1462CE0;
      dword_2A1462CE8 = 0;
      qword_2A1462CEC = qword_2A1462CEC | 2;
      qword_2A1462CE0 = sub_29949AE14;
    }

    result = sigaction(18, v2, 0);
LABEL_12:
    if (!v1)
    {
      return result;
    }

    goto LABEL_13;
  }

  qword_2A1462CE0 = 1;

  return sigaction(18, &qword_2A1462CE0, (&qword_2A1462CEC + 4));
}

uint64_t sub_29949AE14()
{
  *&PC[16] = 1;
  if (SP)
  {
    if (!*(SP + 736))
    {
      v0 = tcgetpgrp(0);
      if (v0 == getpgrp())
      {
        def_prog_mode();
      }
    }
  }

  v4.__sigaction_u.__sa_handler = 0;
  *&v4.sa_mask = 0;
  v6 = 0;
  v7 = 134225920;
  sigprocmask(1, &v7, &v6);
  if ((v6 & 0x200000) != 0)
  {
    v1 = 0x20000;
  }

  else
  {
    v7 = 0x200000;
    sigprocmask(1, &v7, 0);
    v1 = 2228224;
  }

  endwin();
  v7 = v1;
  sigprocmask(2, &v7, 0);
  v5.__sigaction_u.__sa_handler = 0;
  *&v5.sa_mask = 0x200000000;
  sigaction(18, &v5, &v4);
  v2 = getpid();
  kill(v2, 18);
  sigaction(18, &v4, 0);
  flushinp();
  def_shell_mode();
  doupdate();
  return sigprocmask(3, &v6, 0);
}

uint64_t sub_29949AF38(int a1, void (__cdecl *a2)(int))
{
  *&v7.sa_mask = 0;
  if (a1 != 28)
  {
    v7.sa_flags = 2;
  }

  v8.__sigaction_u.__sa_handler = 0;
  *&v8.sa_mask = 0;
  v7.__sigaction_u.__sa_handler = a2;
  result = sigaction(a1, 0, &v8);
  if (!result)
  {
    v6 = a1 == 28 && v8.__sigaction_u.__sa_handler == 1;
    if (!v8.__sigaction_u.__sa_handler || v8.__sigaction_u.__sa_handler == a2 || v6)
    {
      return sigaction(a1, &v7, 0);
    }
  }

  return result;
}

void sub_29949AFC4(int a1)
{
  v1 = SP;
  v2 = (*&PC[24])++;
  if (!v2 && (a1 == 15 || a1 == 2))
  {
    v6.__sigaction_u.__sa_handler = 1;
    *&v6.sa_mask = 0;
    if (!sigaction(a1, &v6, 0))
    {
      for (i = _nc_screen_chain; i; i = *(i + 1392))
      {
        v4 = *(i + 8);
        if (v4)
        {
          v5 = fileno(v4);
          if (isatty(v5))
          {
            *(i + 1448) = _nc_outch;
          }
        }

        set_term(i);
        endwin();
        if (v1)
        {
          *(v1 + 736) = 0;
        }
      }
    }
  }

  _exit(1);
}

int _nc_get_tty_mode(termios *buf)
{
  result = -1;
  if (buf && SP)
  {
    v3 = cur_term;
    if (cur_term)
    {
      while (1)
      {
        result = tcgetattr(v3->Filedes, buf);
        if (!result)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      buf->c_ospeed = 0;
      *buf->c_cc = 0u;
      *&buf->c_cc[16] = 0u;
      *&buf->c_iflag = 0u;
      *&buf->c_cflag = 0u;
      return -1;
    }
  }

  return result;
}

int _nc_set_tty_mode(termios *buf)
{
  result = -1;
  if (buf)
  {
    if (SP)
    {
      v3 = cur_term;
      if (cur_term)
      {
        while (1)
        {
          result = tcsetattr(v3->Filedes, 1, buf);
          if (!result)
          {
            break;
          }

          if (*__error() != 4)
          {
            if (*__error() == 25 && SP != 0)
            {
              *(SP + 772) = 1;
            }

            return -1;
          }
        }
      }
    }
  }

  return result;
}

int def_shell_mode(void)
{
  v0 = cur_term;
  if (!cur_term || _nc_get_tty_mode(&cur_term->Ottyb))
  {
    return -1;
  }

  result = 0;
  if ((v0->Ottyb.c_oflag & 4) != 0)
  {
    *cur_term->type.Strings = 0;
    *(cur_term->type.Strings + 134) = 0;
  }

  return result;
}

int def_prog_mode(void)
{
  v0 = cur_term;
  if (!cur_term)
  {
    return -1;
  }

  result = _nc_get_tty_mode(&cur_term->Nttyb);
  if (result)
  {
    return -1;
  }

  v0->Nttyb.c_oflag &= 0xFFFFFFFBuLL;
  return result;
}

int reset_prog_mode(void)
{
  if (!cur_term)
  {
    return -1;
  }

  if (_nc_set_tty_mode(&cur_term->Nttyb))
  {
    return -1;
  }

  result = SP;
  if (SP)
  {
    if (*(SP + 177) == 1)
    {
      _nc_keypad(SP, 1);
    }

    return 0;
  }

  return result;
}

int reset_shell_mode(void)
{
  v0 = cur_term;
  if (!cur_term)
  {
    return -1;
  }

  if (SP)
  {
    _nc_keypad(SP, 0);
    _nc_flush();
  }

  return _nc_set_tty_mode(&v0->Ottyb);
}

int savetty(void)
{
  if (SP)
  {
    v1 = (SP + 56);
  }

  else
  {
    v1 = qword_2A1462B80;
    if (!qword_2A1462B80)
    {
      v1 = calloc(1uLL, 0x48uLL);
      qword_2A1462B80 = v1;
    }
  }

  return _nc_get_tty_mode(v1);
}

int resetty(void)
{
  if (SP)
  {
    v1 = (SP + 56);
  }

  else
  {
    v1 = qword_2A1462B80;
    if (!qword_2A1462B80)
    {
      v1 = calloc(1uLL, 0x48uLL);
      qword_2A1462B80 = v1;
    }
  }

  return _nc_set_tty_mode(v1);
}

uint64_t _nc_timed_wait(int *a1, char a2, int a3, int *a4)
{
  memset(&v23, 0, sizeof(v23));
  while (1)
  {
    v24.tv_sec = 0;
    *&v24.tv_usec = 0;
    gettimeofday(&v24, 0);
    tv_sec = v24.tv_sec;
    tv_usec = v24.tv_usec;
    memset(&v23, 0, sizeof(v23));
    if (a2)
    {
      v12 = *a1;
      if (__darwin_check_fd_set_overflow(*a1, &v23, 0))
      {
        *(v23.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v12;
      }

      v9 = *a1 + 1;
      if ((a2 & 2) == 0)
      {
LABEL_4:
        if ((a3 & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v9 = 0;
      if ((a2 & 2) == 0)
      {
        goto LABEL_4;
      }
    }

    v13 = a1[274];
    if ((v13 & 0x80000000) == 0)
    {
      if (__darwin_check_fd_set_overflow(a1[274], &v23, 0))
      {
        *(v23.fds_bits + ((v13 >> 3) & 0x1FFFFFFC)) |= 1 << v13;
      }

      if (v13 <= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = v13;
      }

      v9 = v14 + 1;
    }

    if ((a3 & 0x80000000) == 0)
    {
LABEL_5:
      v24.tv_sec = a3 / 0x3E8uLL;
      *(&v24.tv_usec + 1) = 0;
      v24.tv_usec = 1000 * (a3 % 0x3E8u);
      v10 = &v24;
      v11 = v9;
      goto LABEL_18;
    }

LABEL_17:
    v11 = v9;
    v10 = 0;
LABEL_18:
    v15 = select(v11, &v23, 0, 0, v10);
    v24.tv_sec = 0;
    *&v24.tv_usec = 0;
    gettimeofday(&v24, 0);
    v16 = v24.tv_usec;
    if (tv_usec > v24.tv_usec)
    {
      v16 = v24.tv_usec + 1000000;
    }

    v17 = (((v16 - tv_usec) / -1000 - 1000 * (LODWORD(v24.tv_sec) - tv_sec - (tv_usec > v24.tv_usec))) & ~(a3 >> 31)) + a3;
    if (v15 || v17 < 101)
    {
      break;
    }

    napms(100);
    a3 = v17 - 100;
  }

  if (a4)
  {
    *a4 = v17;
  }

  if (v15 < 1)
  {
    return 0;
  }

  if (a2 & 2) != 0 && (v18 = a1[274], (v18 & 0x80000000) == 0) && __darwin_check_fd_set_overflow(a1[274], &v23, 0) && ((*(v23.fds_bits + ((v18 >> 3) & 0x1FFFFFFC)) >> v18))
  {
    v19 = 2;
    if ((a2 & 1) == 0)
    {
      return v19;
    }

LABEL_33:
    v20 = *a1;
    if (__darwin_check_fd_set_overflow(v20, &v23, 0) && ((*(v23.fds_bits + ((v20 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v20) & 1) != 0)
    {
      return v19 | 1;
    }
  }

  else
  {
    v19 = 0;
    if (a2)
    {
      goto LABEL_33;
    }
  }

  return v19;
}

uint64_t _nc_wcrtomb(char *a1, __int32 a2, mbstate_t *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v3 = wcrtomb(a1, a2, a3);
  }

  else
  {
    v7 = v8;
    v8[0] = a2;
    v8[1] = 0;
    v3 = wcsrtombs(0, &v7, 0, a3);
  }

  v4 = v3;
  if (v3 == 0xFFFFFFFFLL)
  {
    __error();
  }

  else if (!v3)
  {
    v4 = 1;
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t unget_wch(__int32 a1)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(&v12, 0, sizeof(v12));
  v2 = _nc_wcrtomb(0, a1, &v12);
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && (v3 = v2, (v4 = malloc(v2)) != 0))
  {
    v5 = v4;
    memset(&v12, 0, sizeof(v12));
    v6 = wcrtomb(v4, a1, &v12);
    *__error() = v6;
    v7 = v3 - 1;
    while ((v7 & 0x80000000) == 0)
    {
      if (ungetch(v5[v7-- & 0x7FFFFFFF]))
      {
        v9 = 0xFFFFFFFFLL;
        goto LABEL_9;
      }
    }

    v9 = 0;
LABEL_9:
    free(v5);
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t _nc_ungetch(__int16 *a1, int a2)
{
  if (!a1 || a1[365] < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1[365];
  v3 = a1[364];
  if (v3 < 0)
  {
    v4 = 0;
    a1[364] = 0;
    if (v2 <= 0x87)
    {
      v6 = v2 + 1;
    }

    else
    {
      v6 = -1;
    }

    a1[365] = v6;
    a1[366] = v6;
  }

  else
  {
    if (a1[364])
    {
      v4 = v3 - 1;
    }

    else
    {
      v4 = 136;
    }

    a1[364] = v4;
    if (v2 == v4)
    {
      a1[365] = -1;
      v4 = v2;
    }
  }

  v5 = 0;
  *&a1[2 * v4 + 90] = a2;
  return v5;
}

uint64_t vid_puts(int a1, uint64_t a2, int a3, int (__cdecl *a4)(int))
{
  v5 = 0x2A1462000uLL;
  v6 = &cur_term;
  if (SP)
  {
    if (*(SP + 752))
    {
      v7 = *(SP + 993) ^ 1;
    }

    else
    {
      v7 = 0;
    }

    dword_2A1462D00 = **(SP + 744);
    v10 = _nc_abiver(&_nc_abiver);
    v15 = v14;
    if (*v10 >= 0x60000u)
    {
      v16 = *(v13 + 24);
      if (v16)
      {
        v15 = v16;
      }
    }

    v8 = v11 & 0xFFFFFF00;
    *(v5 + 3332) = v15;
    if ((*v6)->type.Numbers[4] >= 1)
    {
      v8 &= ~*(v12 + 1012);
    }
  }

  else
  {
    v7 = 0;
    v8 = a1 & 0xFFFFFF00;
    v9 = 1;
  }

  if ((a2 != 0) | v7 & 1 && (v17 = (*v6)->type.Numbers[15], v17 >= 1))
  {
    v18 = v17 >> 2;
    v19 = ((v17 >> 2) & 0x40 | v17 & 0x3F | (v17 >> 6 << 7)) << 16;
    v20 = v18 & ((v8 & 0x40000) >> 18);
    if (v20)
    {
      v19 &= ~0x40000u;
    }

    v8 &= ~v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = dword_2A1462D00;
  v22 = *(v5 + 3332);
  if (v8 != dword_2A1462D00 || v22 != a2)
  {
    v80 = (a2 != 0) | v7;
    v24 = a4;
    v25 = v20;
    if (v20)
    {
      v26 = v8 & 0xFFFBFFFF;
    }

    else
    {
      v26 = v8;
    }

    v27 = dword_2A1462D00 & ~v26;
    v28 = v27 & 0xFFFF00FF;
    v81 = v9;
    if (!((a2 != 0 || (v9 & 1) == 0) | v7 & 1) && (v22 || ((v20 ^ ((dword_2A1462D00 & 0x40000) == 0)) & 1) == 0))
    {
      _nc_do_color(v22, 0, v20 & 1, a4);
      v9 = v81;
    }

    if (v26)
    {
      v79 = v7;
      v29 = v26 & 0xFFFF00FF & (~v21 | 0xFE00FFFF);
      Strings = cur_term->type.Strings;
      v31 = Strings[131];
      if (v31)
      {
        if (v29 | v28)
        {
          v32 = _nc_tiparm(9, v31, v9, HIWORD(v26) & 1, (v26 >> 17) & 1, (v26 >> 18) & 1, (v26 >> 19) & 1, (v26 >> 20) & 1, (v26 >> 21) & 1, (v26 >> 23) & 1, HIBYTE(v26) & 1, (v26 >> 22) & 1);
          tputs(v32, 1, v24);
          LODWORD(v9) = v81;
          dword_2A1462D00 &= 0xFFFF00FF;
          dword_2A1462D04 = 0;
        }

        if (SP && *(SP + 1042) != 1)
        {
          goto LABEL_63;
        }

        if ((v26 & 0x80000000) != 0)
        {
          v33 = *(cur_term->type.Strings + 311);
          if (!v33)
          {
LABEL_63:
            v35 = v25;
            if ((v9 & v80) != 1)
            {
              goto LABEL_149;
            }

            v44 = dword_2A1462D04;
            if (dword_2A1462D04 != a2 || ((a2 == 0) & v79) != 0)
            {
              goto LABEL_68;
            }

            v40 = (dword_2A1462D00 & 0x40000) == 0;
            goto LABEL_67;
          }
        }

        else
        {
          if ((v21 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          v33 = *(cur_term->type.Strings + 321);
          if (!v33)
          {
            goto LABEL_63;
          }
        }

        tputs(v33, 1, v24);
        LODWORD(v9) = v81;
        goto LABEL_63;
      }

      v78 = v26 & 0xFFFF00FF;
      if ((v27 & 0x400000) != 0)
      {
        v41 = Strings[38];
        v35 = v25;
        if (v41)
        {
          tputs(v41, 1, v24);
          LODWORD(v9) = v81;
          v28 = v27 & 0xFFBF00FF;
        }
      }

      else
      {
        v35 = v25;
      }

      v42 = SP;
      if (SP)
      {
        if (*(SP + 1041) != 1 || (v28 & 0x20000) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((v28 & 0x20000) == 0)
      {
        goto LABEL_83;
      }

      v46 = *(cur_term->type.Strings + 44);
      if (v46)
      {
        tputs(v46, 1, v24);
        LODWORD(v9) = v81;
        v28 &= 0xFFFD00FF;
        v42 = SP;
      }

      if (v42)
      {
LABEL_77:
        if (*(v42 + 1040) != 1 || (v28 & 0x10000) == 0)
        {
          goto LABEL_88;
        }

        goto LABEL_85;
      }

LABEL_83:
      if ((v28 & 0x10000) == 0)
      {
        goto LABEL_89;
      }

      v42 = 0;
LABEL_85:
      v48 = *(cur_term->type.Strings + 43);
      if (v48)
      {
        tputs(v48, 1, v24);
        LODWORD(v9) = v81;
        v28 &= ~0x10000u;
        v42 = SP;
      }

      if (v42)
      {
LABEL_88:
        if (*(v42 + 1042) != 1)
        {
          goto LABEL_92;
        }
      }

LABEL_89:
      if ((v28 & 0x80000000) != 0)
      {
        v49 = cur_term->type.Strings;
        v50 = v49[321];
        if (!v50)
        {
          goto LABEL_94;
        }

        tputs(v50, 1, v24);
        LODWORD(v9) = v81;
        v28 &= ~0x80000000;
      }

LABEL_92:
      if (!v28)
      {
LABEL_96:
        if ((v9 & v80) == 1 && (dword_2A1462D04 != a2 || ((a2 == 0) & v79) != 0 || ((v35 ^ ((dword_2A1462D00 & 0x40000) == 0)) & 1) == 0))
        {
          _nc_do_color(dword_2A1462D04, a2, v35 & 1, v24);
        }

        if ((v29 & 0x400000) != 0)
        {
          v52 = *(cur_term->type.Strings + 25);
          if (v52)
          {
            tputs(v52, 1, v24);
          }
        }

        if ((v29 & 0x80000) != 0)
        {
          v53 = *(cur_term->type.Strings + 26);
          if (v53)
          {
            tputs(v53, 1, v24);
          }
        }

        if ((v29 & 0x200000) != 0)
        {
          v54 = *(cur_term->type.Strings + 27);
          if (v54)
          {
            tputs(v54, 1, v24);
          }
        }

        if ((v29 & 0x100000) != 0)
        {
          v55 = *(cur_term->type.Strings + 30);
          if (v55)
          {
            tputs(v55, 1, v24);
          }
        }

        if ((v29 & 0x40000) != 0)
        {
          v56 = *(cur_term->type.Strings + 34);
          if (v56)
          {
            tputs(v56, 1, v24);
          }
        }

        if ((v29 & 0x10000) != 0)
        {
          v57 = *(cur_term->type.Strings + 35);
          if (v57)
          {
            tputs(v57, 1, v24);
          }
        }

        if ((v29 & 0x1000000) != 0)
        {
          v58 = *(cur_term->type.Strings + 33);
          if (v58)
          {
            tputs(v58, 1, v24);
          }
        }

        if ((v29 & 0x800000) != 0)
        {
          v59 = *(cur_term->type.Strings + 32);
          if (v59)
          {
            tputs(v59, 1, v24);
          }
        }

        if ((v29 & 0x20000) != 0)
        {
          v60 = *(cur_term->type.Strings + 36);
          if (v60)
          {
            tputs(v60, 1, v24);
          }
        }

        if ((v29 & 0x80000000) != 0)
        {
          v61 = *(cur_term->type.Strings + 311);
          if (v61)
          {
            tputs(v61, 1, v24);
          }
        }

        if ((v29 & 0x2000000) != 0)
        {
          v62 = *(cur_term->type.Strings + 386);
          if (v62)
          {
            tputs(v62, 1, v24);
          }
        }

        if ((v29 & 0x4000000) != 0)
        {
          v63 = *(cur_term->type.Strings + 387);
          if (v63)
          {
            tputs(v63, 1, v24);
          }
        }

        if ((v29 & 0x8000000) != 0)
        {
          v64 = *(cur_term->type.Strings + 388);
          if (v64)
          {
            tputs(v64, 1, v24);
          }
        }

        if ((v29 & 0x10000000) != 0)
        {
          v65 = *(cur_term->type.Strings + 389);
          if (v65)
          {
            tputs(v65, 1, v24);
          }
        }

        if ((v29 & 0x20000000) != 0)
        {
          v66 = *(cur_term->type.Strings + 390);
          if (v66)
          {
            tputs(v66, 1, v24);
          }
        }

        if ((v29 & 0x40000000) != 0)
        {
          v67 = *(cur_term->type.Strings + 391);
          if (v67)
          {
            tputs(v67, 1, v24);
          }
        }

        goto LABEL_149;
      }

      v49 = cur_term->type.Strings;
LABEL_94:
      v51 = v49[39];
      if (v51)
      {
        tputs(v51, 1, v24);
        LODWORD(v9) = v81;
        dword_2A1462D00 &= 0xFFFF00FF;
        dword_2A1462D04 = 0;
        v29 = v78;
      }

      goto LABEL_96;
    }

    v34 = dword_2A1462D00;
    v35 = v25;
    if ((dword_2A1462D00 & 0x400000) != 0)
    {
      v36 = *(cur_term->type.Strings + 38);
      if (!v36)
      {
        goto LABEL_42;
      }

      tputs(v36, 1, v24);
      LODWORD(v9) = v81;
      v34 = dword_2A1462D00 & 0xFFBFFFFF;
      dword_2A1462D00 &= ~0x400000u;
    }

    if (!v34)
    {
      v40 = 1;
      goto LABEL_57;
    }

LABEL_42:
    v37 = cur_term->type.Strings;
    v38 = v37[39];
    if (v38)
    {
LABEL_43:
      tputs(v38, 1, v24);
      LODWORD(v9) = v81;
LABEL_44:
      v39 = dword_2A1462D00;
      dword_2A1462D00 &= 0xFFFF00FF;
      dword_2A1462D04 = 0;
      v40 = (v39 & 0x40000) == 0;
LABEL_57:
      if ((v9 & v80) != 1)
      {
        goto LABEL_149;
      }

      v44 = dword_2A1462D04;
      if (dword_2A1462D04 != a2 || ((a2 == 0) & v7) != 0)
      {
        goto LABEL_68;
      }

LABEL_67:
      if (((v35 ^ v40) & 1) == 0)
      {
LABEL_68:
        _nc_do_color(v44, a2, v35 & 1, v24);
      }

LABEL_149:
      v68 = v8 | 0x40000;
      if ((v35 & 1) == 0)
      {
        v68 = v8;
      }

      if (SP)
      {
        **(SP + 744) = **(SP + 744) | v68 & 0xFFFFFF00;
        v69 = _nc_abiver(&_nc_abiver);
        v72 = v71 & 0xFFFF00FF;
        if (*v69 < 0x60000u)
        {
          v73 = a2 << 8;
        }

        else
        {
          v70[6] = a2;
          v73 = a2 << 8;
          if (a2 > 255)
          {
            v73 = 65280;
          }
        }

        *v70 = v72 | v73;
      }

      else
      {
        dword_2A1462D00 = v68;
        dword_2A1462D04 = a2;
      }

      return 0;
    }

    v45 = SP;
    if (SP)
    {
      if ((v21 & 0x20000) == 0 || (*(SP + 1041) & 1) == 0)
      {
        goto LABEL_164;
      }
    }

    else if ((v21 & 0x20000) == 0)
    {
      goto LABEL_170;
    }

    v75 = v37[44];
    if (v75)
    {
      tputs(v75, 1, v24);
      LODWORD(v9) = v81;
      v28 = v21 & 0xFFFD00FF;
      v45 = SP;
    }

    if (v45)
    {
LABEL_164:
      if (*(v45 + 1040) != 1 || (v28 & 0x10000) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_172;
    }

LABEL_170:
    if ((v28 & 0x10000) == 0)
    {
      goto LABEL_176;
    }

    v45 = 0;
LABEL_172:
    v77 = *(cur_term->type.Strings + 43);
    if (v77)
    {
      tputs(v77, 1, v24);
      LODWORD(v9) = v81;
      v28 &= 0xFFFE00FF;
      v45 = SP;
    }

    if (v45)
    {
LABEL_175:
      if (*(v45 + 1042) != 1)
      {
        goto LABEL_44;
      }
    }

LABEL_176:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    v38 = *(cur_term->type.Strings + 321);
    if (!v38)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  return 0;
}

uint64_t term_attrs()
{
  if (!SP)
  {
    return 0;
  }

  v0 = termattrs();
  Strings = cur_term->type.Strings;
  if (Strings[386])
  {
    v2 = v0 | 0x2000000;
  }

  else
  {
    v2 = v0;
  }

  if (Strings[387])
  {
    v2 |= 0x4000000u;
  }

  if (Strings[388])
  {
    v2 |= 0x8000000u;
  }

  if (Strings[389])
  {
    v2 |= 0x10000000u;
  }

  if (Strings[390])
  {
    v2 |= 0x20000000u;
  }

  if (Strings[391])
  {
    return v2 | 0x40000000;
  }

  else
  {
    return v2;
  }
}

int vidputs(chtype a1, NCURSES_OUTC a2)
{
  if (SP)
  {
    v2 = *(SP + 752);
    v3 = v2 != 0;
    if (v2)
    {
      v4 = *(SP + 993) ^ 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = a1 & 0xFFFFFF00;
    dword_2A14628B4 = **(SP + 744);
    if (cur_term->type.Numbers[4] >= 1)
    {
      v5 &= ~*(SP + 1012);
    }
  }

  else
  {
    v4 = 0;
    v5 = a1 & 0xFFFFFF00;
    v3 = 1;
  }

  if ((v5 & 0xFF00) != 0 || (v4) && (v6 = cur_term->type.Numbers[15], v6 >= 1))
  {
    v7 = (v6 & 0x3F | (((v6 >> 8) & 1) << 6) & 0xFFFFFE7F | (v6 >> 6 << 7)) << 16;
    v8 = (v5 >> 18) & ((v6 & 4) >> 2);
    v9 = v7 & 0xFFFBFFFF;
    if (!v8)
    {
      v9 = v7;
    }

    v5 &= ~v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = dword_2A14628B4;
  if (v5 != dword_2A14628B4)
  {
    if (v8)
    {
      v12 = v5 & 0xFFFBFFFF;
    }

    else
    {
      v12 = v5;
    }

    v59 = v3;
    v13 = dword_2A14628B4 & ~v12;
    v14 = v13 & 0xFFFF00FF;
    if (!((BYTE1(v5) != 0 || !v3) | v4 & 1) && (BYTE1(dword_2A14628B4) || ((v8 ^ ((dword_2A14628B4 & 0x40000) == 0)) & 1) == 0))
    {
      _nc_do_color(BYTE1(dword_2A14628B4), 0, v8 & 1, a2);
      v3 = v59;
    }

    v60 = v8;
    if (v12)
    {
      v15 = v12 & 0xFFFF00FF & (~v10 | 0xFE00FFFF);
      Strings = cur_term->type.Strings;
      v17 = Strings[131];
      if (v17)
      {
        if (v15 | v14)
        {
          v18 = tparm(v17, HIWORD(v12) & 1, (v12 >> 17) & 1, (v12 >> 18) & 1, (v12 >> 19) & 1, (v12 >> 20) & 1, (v12 >> 21) & 1, (v12 >> 23) & 1, HIBYTE(v12) & 1, (v12 >> 22) & 1);
          tputs(v18, 1, a2);
          v3 = v59;
          dword_2A14628B4 &= 0xFFFF00FF;
        }

        if (SP && *(SP + 1042) != 1)
        {
          goto LABEL_54;
        }

        if ((v12 & 0x80000000) != 0)
        {
          v19 = *(cur_term->type.Strings + 311);
          if (!v19)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          v19 = *(cur_term->type.Strings + 321);
          if (!v19)
          {
            goto LABEL_54;
          }
        }

        tputs(v19, 1, a2);
        v3 = v59;
LABEL_54:
        if (v3 & ((BYTE1(v5) != 0) | v4)) != 1 || BYTE1(v5) == BYTE1(dword_2A14628B4) && (v4 & (BYTE1(v5) == 0)) == 0 && ((v60 ^ ((dword_2A14628B4 & 0x40000) == 0)))
        {
          goto LABEL_141;
        }

        v26 = BYTE1(dword_2A14628B4);
        v25 = v60 & 1;
        v24 = BYTE1(v5);
        goto LABEL_59;
      }

      if ((v13 & 0x400000) != 0)
      {
        v27 = Strings[38];
        if (v27)
        {
          tputs(v27, 1, a2);
          v3 = v59;
          v14 = v13 & 0xFFBF00FF;
        }
      }

      v28 = SP;
      if (SP)
      {
        if (*(SP + 1041) != 1 || (v14 & 0x20000) == 0)
        {
          goto LABEL_68;
        }
      }

      else if ((v14 & 0x20000) == 0)
      {
        goto LABEL_74;
      }

      v31 = *(cur_term->type.Strings + 44);
      if (v31)
      {
        tputs(v31, 1, a2);
        v3 = v59;
        v14 &= 0xFFFD00FF;
        v28 = SP;
      }

      if (v28)
      {
LABEL_68:
        if (*(v28 + 1040) != 1 || (v14 & 0x10000) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_76;
      }

LABEL_74:
      if ((v14 & 0x10000) == 0)
      {
        goto LABEL_80;
      }

      v28 = 0;
LABEL_76:
      v33 = *(cur_term->type.Strings + 43);
      if (v33)
      {
        tputs(v33, 1, a2);
        v3 = v59;
        v14 &= ~0x10000u;
        v28 = SP;
      }

      if (v28)
      {
LABEL_79:
        if (*(v28 + 1042) != 1)
        {
          goto LABEL_83;
        }
      }

LABEL_80:
      if ((v14 & 0x80000000) != 0)
      {
        v34 = cur_term->type.Strings;
        v35 = v34[321];
        if (!v35)
        {
          goto LABEL_85;
        }

        tputs(v35, 1, a2);
        v3 = v59;
        v14 &= ~0x80000000;
      }

LABEL_83:
      if (!v14)
      {
        v37 = BYTE1(v5);
LABEL_88:
        if ((v3 & ((v37 != 0) | v4)) == 1 && (v37 != BYTE1(dword_2A14628B4) || (v4 & (v37 == 0)) != 0 || ((v60 ^ ((dword_2A14628B4 & 0x40000) == 0)) & 1) == 0))
        {
          _nc_do_color(BYTE1(dword_2A14628B4), v37, v60 & 1, a2);
        }

        if ((v15 & 0x400000) != 0)
        {
          v38 = *(cur_term->type.Strings + 25);
          if (v38)
          {
            tputs(v38, 1, a2);
          }
        }

        if ((v15 & 0x80000) != 0)
        {
          v39 = *(cur_term->type.Strings + 26);
          if (v39)
          {
            tputs(v39, 1, a2);
          }
        }

        if ((v15 & 0x200000) != 0)
        {
          v40 = *(cur_term->type.Strings + 27);
          if (v40)
          {
            tputs(v40, 1, a2);
          }
        }

        if ((v15 & 0x100000) != 0)
        {
          v41 = *(cur_term->type.Strings + 30);
          if (v41)
          {
            tputs(v41, 1, a2);
          }
        }

        if ((v15 & 0x40000) != 0)
        {
          v42 = *(cur_term->type.Strings + 34);
          if (v42)
          {
            tputs(v42, 1, a2);
          }
        }

        if ((v15 & 0x10000) != 0)
        {
          v43 = *(cur_term->type.Strings + 35);
          if (v43)
          {
            tputs(v43, 1, a2);
          }
        }

        if ((v15 & 0x1000000) != 0)
        {
          v44 = *(cur_term->type.Strings + 33);
          if (v44)
          {
            tputs(v44, 1, a2);
          }
        }

        if ((v15 & 0x800000) != 0)
        {
          v45 = *(cur_term->type.Strings + 32);
          if (v45)
          {
            tputs(v45, 1, a2);
          }
        }

        if ((v15 & 0x20000) != 0)
        {
          v46 = *(cur_term->type.Strings + 36);
          if (v46)
          {
            tputs(v46, 1, a2);
          }
        }

        if ((v15 & 0x80000000) != 0)
        {
          v47 = *(cur_term->type.Strings + 311);
          if (v47)
          {
            tputs(v47, 1, a2);
          }
        }

        if ((v15 & 0x2000000) != 0)
        {
          v48 = *(cur_term->type.Strings + 386);
          if (v48)
          {
            tputs(v48, 1, a2);
          }
        }

        if ((v15 & 0x4000000) != 0)
        {
          v49 = *(cur_term->type.Strings + 387);
          if (v49)
          {
            tputs(v49, 1, a2);
          }
        }

        if ((v15 & 0x8000000) != 0)
        {
          v50 = *(cur_term->type.Strings + 388);
          if (v50)
          {
            tputs(v50, 1, a2);
          }
        }

        if ((v15 & 0x10000000) != 0)
        {
          v51 = *(cur_term->type.Strings + 389);
          if (v51)
          {
            tputs(v51, 1, a2);
          }
        }

        if ((v15 & 0x20000000) != 0)
        {
          v52 = *(cur_term->type.Strings + 390);
          if (v52)
          {
            tputs(v52, 1, a2);
          }
        }

        if ((v15 & 0x40000000) != 0)
        {
          v53 = *(cur_term->type.Strings + 391);
          if (v53)
          {
            tputs(v53, 1, a2);
          }
        }

        goto LABEL_141;
      }

      v34 = cur_term->type.Strings;
LABEL_85:
      v36 = v34[39];
      v37 = BYTE1(v5);
      if (v36)
      {
        tputs(v36, 1, a2);
        v3 = v59;
        dword_2A14628B4 &= 0xFFFF00FF;
        v15 = v12 & 0xFFFF00FF;
      }

      goto LABEL_88;
    }

    v20 = dword_2A14628B4;
    if ((dword_2A14628B4 & 0x400000) != 0)
    {
      v21 = *(cur_term->type.Strings + 38);
      if (!v21)
      {
        goto LABEL_37;
      }

      tputs(v21, 1, a2);
      v3 = v59;
      v20 = dword_2A14628B4 & 0xFFBFFFFF;
      dword_2A14628B4 &= ~0x400000u;
    }

    if (!v20)
    {
LABEL_40:
      v24 = BYTE1(v5);
      if ((v3 & ((BYTE1(v5) != 0) | v4)) != 1)
      {
LABEL_141:
        v54 = v5 | 0x40000;
        if ((v60 & 1) == 0)
        {
          v54 = v5;
        }

        if (SP)
        {
          **(SP + 744) = **(SP + 744) | v54 & 0xFFFFFF00;
        }

        else
        {
          dword_2A14628B4 = v54;
        }

        return 0;
      }

      v25 = v8 & 1;
      v26 = 0;
LABEL_59:
      _nc_do_color(v26, v24, v25, a2);
      goto LABEL_141;
    }

LABEL_37:
    v22 = cur_term->type.Strings;
    v23 = v22[39];
    if (v23)
    {
LABEL_38:
      tputs(v23, 1, a2);
      v3 = v59;
LABEL_39:
      dword_2A14628B4 &= 0xFFFF00FF;
      goto LABEL_40;
    }

    v30 = SP;
    if (SP)
    {
      if ((v10 & 0x20000) == 0 || (*(SP + 1041) & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if ((v10 & 0x20000) == 0)
    {
      goto LABEL_157;
    }

    v56 = v22[44];
    if (v56)
    {
      tputs(v56, 1, a2);
      v3 = v59;
      v14 = v10 & 0xFFFD00FF;
      v30 = SP;
    }

    if (v30)
    {
LABEL_151:
      if (*(v30 + 1040) != 1 || (v14 & 0x10000) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_159;
    }

LABEL_157:
    if ((v14 & 0x10000) == 0)
    {
      goto LABEL_163;
    }

    v30 = 0;
LABEL_159:
    v58 = *(cur_term->type.Strings + 43);
    if (v58)
    {
      tputs(v58, 1, a2);
      v3 = v59;
      v14 &= 0xFFFE00FF;
      v30 = SP;
    }

    if (v30)
    {
LABEL_162:
      if (*(v30 + 1042) != 1)
      {
        goto LABEL_39;
      }
    }

LABEL_163:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v23 = *(cur_term->type.Strings + 321);
    if (!v23)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  return 0;
}

chtype termattrs(void)
{
  if (!SP || !*(SP + 48))
  {
    return 0;
  }

  Strings = cur_term->type.Strings;
  if (Strings[26])
  {
    v1 = ((Strings[25] != 0) << 22) | 0x80000;
  }

  else
  {
    v1 = (Strings[25] != 0) << 22;
  }

  if (Strings[27])
  {
    v1 |= 0x200000u;
  }

  if (Strings[30])
  {
    v1 |= 0x100000u;
  }

  if (Strings[34])
  {
    v1 |= 0x40000u;
  }

  if (Strings[35])
  {
    v1 |= 0x10000u;
  }

  if (Strings[33])
  {
    v1 |= 0x1000000u;
  }

  if (Strings[32])
  {
    v1 |= 0x800000u;
  }

  if (Strings[36])
  {
    v1 |= 0x20000u;
  }

  if (*(SP + 752))
  {
    v2 = v1 | 0xFF00;
  }

  else
  {
    v2 = v1;
  }

  if (Strings[311])
  {
    return v2 | 0x80000000;
  }

  else
  {
    return v2;
  }
}

int wvline(WINDOW *a1, chtype a2, int a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    v6 = a3 + v4 - 1;
    v7 = *(a1 + 2);
    if (v6 >= v7)
    {
      v8 = *(a1 + 2);
    }

    else
    {
      v8 = a3 + v4 - 1;
    }

    v31 = 0uLL;
    v9 = _nc_abiver(&_nc_abiver);
    if (*v9 <= v12)
    {
      v13 = 0;
    }

    else
    {
      v11 = v10 & 0xFFFF0000 | (BYTE1(v10) << 8);
      v13 = BYTE1(v10);
    }

    v25[0] = v11;
    v25[1] = v10;
    v26 = v31;
    v27 = v13;
    _nc_render(a1, v25);
    v14 = v28;
    v31 = v29;
    if (v8 >= v4)
    {
      if (v7 >= v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v7;
      }

      v16 = v30;
      v17 = v15 + 1;
      v18 = 16 * v15;
      do
      {
        v19 = *(a1 + 5);
        v20 = v19 + v18;
        v21 = *(v19 + v18) + 28 * v5;
        *v21 = v14;
        *(v21 + 8) = v31;
        *(v21 + 24) = v16;
        v22 = *(v19 + v18 + 8);
        if (v22 == -1)
        {
          *(v20 + 10) = v5;
        }

        else if (v5 >= v22)
        {
          if (v5 > *(v19 + v18 + 10))
          {
            *(v19 + v18 + 10) = v5;
          }

          goto LABEL_19;
        }

        *(v20 + 8) = v5;
LABEL_19:
        --v17;
        v18 -= 16;
      }

      while (v17 > v4);
    }

    _nc_synchook(a1);
    result = 0;
  }

  else
  {
    result = -1;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t wvline_set(__int16 *a1, _OWORD *a2, int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = a3 + v4 - 1;
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = a1[2];
  }

  else
  {
    v8 = a3 + v4 - 1;
  }

  v9 = (_nc_wacs + 3360);
  if (a2)
  {
    v9 = a2;
  }

  v20[0] = *v9;
  *(v20 + 12) = *(v9 + 12);
  v19[0] = v20[0];
  *(v19 + 12) = *(v20 + 12);
  _nc_render(a1, v19);
  if (v8 >= v4)
  {
    v10 = v6;
    if (v7 < v6)
    {
      v10 = v7;
    }

    v11 = v10 + 1;
    v12 = 16 * v10;
    do
    {
      v13 = *(a1 + 5);
      v14 = v13 + v12;
      v15 = (*(v13 + v12) + 28 * v5);
      v16 = v20[0];
      *(v15 + 12) = *(v20 + 12);
      *v15 = v16;
      v17 = *(v13 + v12 + 8);
      if (v17 == -1)
      {
        *(v14 + 10) = v5;
      }

      else if (v5 >= v17)
      {
        if (v5 > *(v13 + v12 + 10))
        {
          *(v13 + v12 + 10) = v5;
        }

        goto LABEL_17;
      }

      *(v14 + 8) = v5;
LABEL_17:
      --v11;
      v12 -= 16;
    }

    while (v11 > v4);
  }

  _nc_synchook(a1);
  return 0;
}

uint64_t _nc_init_wacs()
{
  v0 = _nc_unicode_locale();
  result = calloc(0x80uLL, 0x1CuLL);
  _nc_wacs = result;
  if (result)
  {
    v2 = _nc_abiver(&_nc_abiver);
    v3 = 54;
    v4 = &dword_2994B06B4;
    do
    {
      result = wcwidth(v4[v0]);
      v5 = *(v4 - 1);
      if (v0 && result == 1)
      {
        v6 = _nc_wacs + 28 * v5;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *v6 = 0;
        *(v6 + 24) = 0;
        v7 = v4[1];
      }

      else
      {
        v8 = acs_map[v5];
        v6 = _nc_wacs + 28 * v5;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
        *v6 = 0;
        if ((v8 & 0x400000) != 0)
        {
          *v6 = 0x400000;
          *(v6 + 4) = v5;
          goto LABEL_10;
        }

        v7 = *v4;
      }

      *v6 = 0;
      *(v6 + 4) = v7;
LABEL_10:
      if (*v2 > 0x5FFFFu)
      {
        v9 = (_nc_wacs + 28 * v5);
        v9[6] = 0;
        *v9 &= 0xFFFF00FF;
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

int wattr_off(WINDOW *a1, attr_t a2, void *a3)
{
  if (!a1)
  {
    return -1;
  }

  v3 = _nc_abiver(&_nc_abiver);
  if ((v4 & 0xFF00) != 0 && *v3 >= 0x60000u)
  {
    *(v5 + 116) = 0;
  }

  else if ((v4 & 0xFF00) == 0)
  {
    v7 = ~v4;
    goto LABEL_8;
  }

  v7 = ~v4 & 0xFFFF00FF;
LABEL_8:
  result = 0;
  *(v5 + 16) &= v7;
  return result;
}

int wattr_on(WINDOW *a1, attr_t a2, void *a3)
{
  if (!a1)
  {
    return -1;
  }

  v3 = _nc_abiver(&_nc_abiver);
  if ((v4 & 0xFF00) != 0 && *v3 >= 0x60000u)
  {
    *(v5 + 116) = BYTE1(v4);
  }

  else if ((v4 & 0xFF00) == 0)
  {
    v10 = *(v5 + 16);
    v7 = (v5 + 16);
    v9 = v10;
    goto LABEL_8;
  }

  v8 = *(v5 + 16);
  v7 = (v5 + 16);
  v9 = v8 & 0xFFFF00FF;
LABEL_8:
  result = 0;
  *v7 = v9 | v4;
  return result;
}

chtype winch(WINDOW *a1)
{
  if (a1)
  {
    LODWORD(a1) = *(*(*(a1 + 5) + 16 * *a1) + 28 * *(a1 + 1)) | *(*(*(a1 + 5) + 16 * *a1) + 28 * *(a1 + 1) + 4);
  }

  return a1;
}

void _nc_synchook(WINDOW *a1)
{
  if (*(a1 + 30) == 1)
  {
    wrefresh(a1);
  }

  if (*(a1 + 31) == 1)
  {

    wsyncup(a1);
  }
}

void wsyncup(WINDOW *a1)
{
  if (a1)
  {
    while (*(a1 + 8))
    {
      v1 = a1;
      a1 = *(a1 + 8);
      if ((*(v1 + 2) & 0x80000000) == 0)
      {
        v2 = 0;
        v3 = *(v1 + 2) + 1;
        v4 = (*(v1 + 5) + 10);
        do
        {
          v5 = *(v4 - 1);
          if ((v5 & 0x80000000) == 0)
          {
            v6 = *(v1 + 13);
            v7 = *(a1 + 5) + 16 * (v2 + *(v1 + 14));
            v8 = *v4;
            v9 = v6 + v5;
            v10 = *(v7 + 8);
            if (v10 == -1 || v9 < v10)
            {
              *(v7 + 8) = v9;
            }

            v12 = v6 + v8;
            v13 = *(v7 + 10);
            if (v13 == -1 || v12 > v13)
            {
              *(v7 + 10) = v12;
            }
          }

          ++v2;
          v4 += 8;
        }

        while (v3 != v2);
      }
    }
  }
}

int mvderwin(WINDOW *a1, int a2, int a3)
{
  if (!a1)
  {
    return -1;
  }

  result = -1;
  if (((a3 | a2) & 0x80000000) == 0)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      if (a3 + *(a1 + 3) + 1 <= *(v7 + 6) + 1 && a2 + *(a1 + 2) + 1 <= *(v7 + 4) + 1)
      {
        wsyncup(a1);
        *(a1 + 13) = a3;
        *(a1 + 14) = a2;
        if ((*(a1 + 2) & 0x80000000) == 0)
        {
          v8 = *(a1 + 5);
          v9 = *(a1 + 2) + 1;
          v10 = (*(v7 + 40) + 16 * a2);
          do
          {
            v11 = *v10;
            v10 += 2;
            *v8 = v11 + 28 * a3;
            v8 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
      }
    }
  }

  return result;
}

int syncok(WINDOW *a1, BOOL a2)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 31) = a2;
  return result;
}

void wsyncdown(WINDOW *a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      wsyncdown(*(a1 + 8));
      v3 = *(a1 + 2);
      if ((v3 & 0x80000000) == 0)
      {
        v4 = 0;
        v5 = (v3 + 1);
        v6 = (*(v2 + 40) + 16 * *(a1 + 14) + 10);
        v7 = 16 * v5;
        do
        {
          v8 = *(v6 - 1);
          if ((v8 & 0x80000000) == 0)
          {
            v9 = *(a1 + 13);
            v10 = *v6 - v9;
            v11 = (v8 - v9) & ~((v8 - v9) >> 31);
            v12 = *(a1 + 3);
            if (v10 < v12)
            {
              v12 = v10;
            }

            v13 = *(a1 + 5) + v4;
            v14 = *(v13 + 8);
            if (v14 == -1 || v11 < v14)
            {
              *(v13 + 8) = v11;
            }

            v16 = *(v13 + 10);
            if (v16 == -1 || v12 > v16)
            {
              *(v13 + 10) = v12;
            }
          }

          v6 += 8;
          v4 += 16;
        }

        while (v7 != v4);
      }
    }
  }
}

void wcursyncup(WINDOW *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *(v1 + 8);
      if (!v2)
      {
        break;
      }

      wmove(v2, *(v1 + 14) + *v1, *(v1 + 13) + *(v1 + 1));
      v1 = *(v1 + 8);
    }

    while (v1);
  }
}