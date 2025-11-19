uint64_t mvwaddchnstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, const chtype *a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = addchnstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwaddchstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, const chtype *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = addchstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwaddnstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = addnstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwaddstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = addstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwchgat_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, attr_t a5, __int16 a6, const void *a7)
{
  v11 = _nc_abiver(&_nc_abiver);
  v12 = *v11;
  *v11 = 393216;
  result = wmove(v15, v13, v14);
  if (result != -1)
  {
    result = chgat(a4, a5, a6, a7);
  }

  *v11 = v12;
  return result;
}

uint64_t mvwgetch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wmove(v4, v2, v3);
  if (result != -1)
  {
    result = getch();
  }

  *v0 = v1;
  return result;
}

uint64_t mvwgetnstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = getnstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwgetstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = getstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwhline_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, chtype a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = hline(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = mvwin(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t mvwinch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wmove(v4, v2, v3);
  if (result != -1)
  {
    result = inch();
  }

  *v0 = v1;
  return result;
}

uint64_t mvwinchnstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, chtype *a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = inchnstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwinchstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, chtype *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = inchstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwinnstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = innstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwinsch_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, chtype a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = insch(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwinsnstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = insnstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwinsstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = insstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwinstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = instr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwprintw_NCURSES60(WINDOW *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = _nc_abiver(&_nc_abiver);
  v12 = *v11;
  *v11 = 393216;
  result = wmove(a1, v13, v14);
  if (result != -1)
  {
    result = vwprintw(a1, a4, &a9);
  }

  *v11 = v12;
  return result;
}

uint64_t mvwscanw_NCURSES60(WINDOW *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = _nc_abiver(&_nc_abiver);
  v12 = *v11;
  *v11 = 393216;
  result = wmove(a1, v13, v14);
  if (result != -1)
  {
    result = vwscanw(a1, a4, &a9);
  }

  *v11 = v12;
  return result;
}

uint64_t mvwvline_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, chtype a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = vline(a4, a5);
  }

  *v7 = v8;
  return result;
}

WINDOW *newpad_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = newpad(v3, v2);
  *v0 = v1;
  return result;
}

SCREEN *newterm_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = newterm(v4, v2, v3);
  *v0 = v1;
  return result;
}

WINDOW *newwin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = newwin(v5, v2, v3, v4);
  *v0 = v1;
  return result;
}

uint64_t overlay_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = overlay(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t overwrite_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = overwrite(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t pair_content_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = pair_content(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t pechochar_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = pechochar(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t pnoutrefresh_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = pnoutrefresh(v8, v2, v3, v4, v5, v6, v7);
  *v0 = v1;
  return result;
}

uint64_t prefresh_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = prefresh(v8, v2, v3, v4, v5, v6, v7);
  *v0 = v1;
  return result;
}

uint64_t printw_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = _nc_abiver(&_nc_abiver);
  v10 = *v9;
  *v9 = 393216;
  result = vwprintw(stdscr, v11, &a9);
  *v9 = v10;
  return result;
}

uint64_t putwin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = putwin(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t redrawwin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = redrawwin(v2);
  *v0 = v1;
  return result;
}

uint64_t refresh_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = refresh();
  *v0 = v1;
  return result;
}

uint64_t scanw_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = _nc_abiver(&_nc_abiver);
  v10 = *v9;
  *v9 = 393216;
  result = vwscanw(stdscr, v11, &a9);
  *v9 = v10;
  return result;
}

uint64_t scr_dump_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = scr_dump(v2);
  *v0 = v1;
  return result;
}

uint64_t scr_init_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = scr_init(v2);
  *v0 = v1;
  return result;
}

uint64_t scrl_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = scrl(v2);
  *v0 = v1;
  return result;
}

uint64_t scroll_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = scroll(v2);
  *v0 = v1;
  return result;
}

uint64_t scrollok_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = scrollok(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t scr_restore_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = scr_restore(v2);
  *v0 = v1;
  return result;
}

uint64_t scr_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = scr_set(v2);
  *v0 = v1;
  return result;
}

SCREEN *set_term_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = set_term(v2);
  *v0 = v1;
  return result;
}

uint64_t slk_attroff_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_attroff(v2);
  *v0 = v1;
  return result;
}

uint64_t slk_attr_off_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_attr_off(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t slk_attron_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_attron(v2);
  *v0 = v1;
  return result;
}

uint64_t slk_attr_on_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_attr_on(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t slk_attrset_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_attrset(v2);
  *v0 = v1;
  return result;
}

uint64_t slk_attr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_attr();
  *v0 = v1;
  return result;
}

uint64_t slk_attr_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_attr_set(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t slk_clear_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_clear();
  *v0 = v1;
  return result;
}

uint64_t slk_color_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_color(v2);
  *v0 = v1;
  return result;
}

uint64_t slk_init_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_init(v2);
  *v0 = v1;
  return result;
}

char *slk_label_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_label(v2);
  *v0 = v1;
  return result;
}

uint64_t slk_noutrefresh_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_noutrefresh();
  *v0 = v1;
  return result;
}

uint64_t slk_refresh_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_refresh();
  *v0 = v1;
  return result;
}

uint64_t slk_restore_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_restore();
  *v0 = v1;
  return result;
}

uint64_t slk_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_set(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t slk_touch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_touch();
  *v0 = v1;
  return result;
}

uint64_t standout_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = standout();
  *v0 = v1;
  return result;
}

uint64_t standend_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = standend();
  *v0 = v1;
  return result;
}

uint64_t start_color_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = start_color();
  *v0 = v1;
  return result;
}

WINDOW *subpad_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = subpad(v6, v2, v3, v4, v5);
  *v0 = v1;
  return result;
}

WINDOW *subwin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = subwin(v6, v2, v3, v4, v5);
  *v0 = v1;
  return result;
}

uint64_t ungetch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = ungetch(v2);
  *v0 = v1;
  return result;
}

uint64_t vidattr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = vidattr(v2);
  *v0 = v1;
  return result;
}

uint64_t vidputs_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = vidputs(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t vline_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = vline(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t vwprintw_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = vwprintw(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t vw_printw_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = vw_printw(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t vwscanw_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = vwscanw(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t vw_scanw_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = vw_scanw(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t waddch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = waddch(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t waddchnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = waddchnstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t waddchstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = waddchstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t waddnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = waddnstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t waddstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = waddstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wattron_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wattron(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wattroff_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wattroff(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wattrset_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wattrset(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wattr_get_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wattr_get(v5, v2, v3, v4);
  *v0 = v1;
  return result;
}

uint64_t wattr_on_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wattr_on(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t wattr_off_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wattr_off(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t wattr_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wattr_set(v5, v2, v3, v4);
  *v0 = v1;
  return result;
}

uint64_t wbkgd_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wbkgd(v3, v2);
  *v0 = v1;
  return result;
}

void wbkgdset_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  wbkgdset(v3, v2);
  *v0 = v1;
}

uint64_t wborder_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wborder(v9, v2, v3, v4, v5, v6, v7, v8, v10);
  *v0 = v1;
  return result;
}

uint64_t wchgat_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wchgat(v6, v2, v3, v4, v5);
  *v0 = v1;
  return result;
}

uint64_t wclear_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wclear(v2);
  *v0 = v1;
  return result;
}

uint64_t wcolor_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wcolor_set(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t wdeleteln_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wdeleteln(v2);
  *v0 = v1;
  return result;
}

uint64_t wechochar_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wechochar(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wgetch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wgetch(v2);
  *v0 = v1;
  return result;
}

uint64_t wgetnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wgetnstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t wgetstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wgetstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t whline_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = whline(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t winch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winch(v2);
  *v0 = v1;
  return result;
}

uint64_t winchnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winchnstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t winchstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winchstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t winnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winnstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t winsch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winsch(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t winsdelln_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winsdelln(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t winsertln_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winsertln(v2);
  *v0 = v1;
  return result;
}

uint64_t winsnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winsnstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t winsstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winsstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t winstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wnoutrefresh_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wnoutrefresh(v2);
  *v0 = v1;
  return result;
}

uint64_t wprintw_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = _nc_abiver(&_nc_abiver);
  v10 = *v9;
  *v9 = 393216;
  result = vwprintw(v12, v11, &a9);
  *v9 = v10;
  return result;
}

uint64_t wredrawln_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wredrawln(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t wrefresh_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wrefresh(v2);
  *v0 = v1;
  return result;
}

uint64_t wscanw_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = _nc_abiver(&_nc_abiver);
  v10 = *v9;
  *v9 = 393216;
  result = vwscanw(v12, v11, &a9);
  *v9 = v10;
  return result;
}

uint64_t wscrl_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wscrl(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wstandout_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wstandout(v2);
  *v0 = v1;
  return result;
}

uint64_t wstandend_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wstandend(v2);
  *v0 = v1;
  return result;
}

uint64_t wvline_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wvline(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t putp_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = putp(v2);
  *v0 = v1;
  return result;
}

BOOL is_term_resized_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_term_resized(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t assume_default_colors_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = assume_default_colors(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t resize_term_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = resize_term(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t resizeterm_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = resizeterm(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t use_default_colors_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = use_default_colors();
  *v0 = v1;
  return result;
}

uint64_t use_screen_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = use_screen(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t use_window_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = use_window(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t wresize_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wresize(v4, v2, v3);
  *v0 = v1;
  return result;
}

WINDOW *wgetparent_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wgetparent(v2);
  *v0 = v1;
  return result;
}

BOOL is_cleared_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_cleared(v2);
  *v0 = v1;
  return result;
}

BOOL is_idcok_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_idcok(v2);
  *v0 = v1;
  return result;
}

BOOL is_idlok_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_idlok(v2);
  *v0 = v1;
  return result;
}

BOOL is_immedok_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_immedok(v2);
  *v0 = v1;
  return result;
}

BOOL is_keypad_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_keypad(v2);
  *v0 = v1;
  return result;
}

BOOL is_leaveok_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_leaveok(v2);
  *v0 = v1;
  return result;
}

BOOL is_nodelay_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_nodelay(v2);
  *v0 = v1;
  return result;
}

BOOL is_notimeout_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_notimeout(v2);
  *v0 = v1;
  return result;
}

BOOL is_pad_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_pad(v2);
  *v0 = v1;
  return result;
}

BOOL is_scrollok_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_scrollok(v2);
  *v0 = v1;
  return result;
}

BOOL is_subwin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_subwin(v2);
  *v0 = v1;
  return result;
}

BOOL is_syncok_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = is_syncok(v2);
  *v0 = v1;
  return result;
}

uint64_t wgetdelay_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wgetdelay(v2);
  *v0 = v1;
  return result;
}

uint64_t wgetscrreg_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wgetscrreg(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t add_wch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = add_wch(v2);
  *v0 = v1;
  return result;
}

uint64_t add_wchnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = add_wchnstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t add_wchstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = add_wchstr(v2);
  *v0 = v1;
  return result;
}

uint64_t addnwstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = addnwstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t addwstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = addwstr(v2);
  *v0 = v1;
  return result;
}

uint64_t bkgrnd_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = bkgrnd(v2);
  *v0 = v1;
  return result;
}

uint64_t bkgrndset_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = bkgrndset(v2);
  *v0 = v1;
  return result;
}

uint64_t border_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = border_set(v9, v2, v3, v4, v5, v6, v7, v8);
  *v0 = v1;
  return result;
}

uint64_t box_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = box_set(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t echo_wchar_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = echo_wchar(v2);
  *v0 = v1;
  return result;
}

uint64_t erasewchar_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = erasewchar(v2);
  *v0 = v1;
  return result;
}

uint64_t get_wch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = get_wch(v2);
  *v0 = v1;
  return result;
}

uint64_t get_wstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = get_wstr(v2);
  *v0 = v1;
  return result;
}

uint64_t getbkgrnd_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = getbkgrnd(v2);
  *v0 = v1;
  return result;
}

uint64_t getcchar_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = getcchar(v6, v2, v3, v4, v5);
  *v0 = v1;
  return result;
}

uint64_t getn_wstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = getn_wstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t hline_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = hline_set(v3, v2);
  *v0 = v1;
  return result;
}

void in_wch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  in_wch(v2);
  *v0 = v1;
}

uint64_t in_wchnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = in_wchnstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t in_wchstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = in_wchstr(v2);
  *v0 = v1;
  return result;
}

uint64_t innwstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = innwstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t ins_nwstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = ins_nwstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t ins_wch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = ins_wch(v2);
  *v0 = v1;
  return result;
}

uint64_t ins_wstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = ins_wstr(v2);
  *v0 = v1;
  return result;
}

uint64_t inwstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = inwstr(v2);
  *v0 = v1;
  return result;
}

char *key_name_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = key_name(v2);
  *v0 = v1;
  return result;
}

uint64_t killwchar_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = killwchar(v2);
  *v0 = v1;
  return result;
}

uint64_t mvadd_wch_NCURSES60(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = _nc_abiver(&_nc_abiver);
  v5 = *v4;
  *v4 = 393216;
  result = wmove(stdscr, v6, v7);
  if (result != -1)
  {
    result = add_wch(a3);
  }

  *v4 = v5;
  return result;
}

uint64_t mvadd_wchnstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = _nc_abiver(&_nc_abiver);
  v7 = *v6;
  *v6 = 393216;
  result = wmove(stdscr, v8, v9);
  if (result != -1)
  {
    result = add_wchnstr(a3, a4);
  }

  *v6 = v7;
  return result;
}

uint64_t mvadd_wchstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _nc_abiver(&_nc_abiver);
  v5 = *v4;
  *v4 = 393216;
  result = wmove(stdscr, v6, v7);
  if (result != -1)
  {
    result = add_wchstr(a3);
  }

  *v4 = v5;
  return result;
}

uint64_t mvaddnwstr_NCURSES60(uint64_t a1, uint64_t a2, __int32 *a3, int a4)
{
  v6 = _nc_abiver(&_nc_abiver);
  v7 = *v6;
  *v6 = 393216;
  result = wmove(stdscr, v8, v9);
  if (result != -1)
  {
    result = addnwstr(a3, a4);
  }

  *v6 = v7;
  return result;
}

uint64_t mvaddwstr_NCURSES60(uint64_t a1, uint64_t a2, __int32 *a3)
{
  v4 = _nc_abiver(&_nc_abiver);
  v5 = *v4;
  *v4 = 393216;
  result = wmove(stdscr, v6, v7);
  if (result != -1)
  {
    result = addwstr(a3);
  }

  *v4 = v5;
  return result;
}

uint64_t mvget_wch_NCURSES60(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = _nc_abiver(&_nc_abiver);
  v5 = *v4;
  *v4 = 393216;
  result = wmove(stdscr, v6, v7);
  if (result != -1)
  {
    result = get_wch(a3);
  }

  *v4 = v5;
  return result;
}

uint64_t mvget_wstr_NCURSES60(uint64_t a1, uint64_t a2, __int32 *a3)
{
  v4 = _nc_abiver(&_nc_abiver);
  v5 = *v4;
  *v4 = 393216;
  result = wmove(stdscr, v6, v7);
  if (result != -1)
  {
    result = get_wstr(a3);
  }

  *v4 = v5;
  return result;
}

uint64_t mvgetn_wstr_NCURSES60(uint64_t a1, uint64_t a2, __int32 *a3, unsigned int a4)
{
  v6 = _nc_abiver(&_nc_abiver);
  v7 = *v6;
  *v6 = 393216;
  result = wmove(stdscr, v8, v9);
  if (result != -1)
  {
    result = getn_wstr(a3, a4);
  }

  *v6 = v7;
  return result;
}

uint64_t mvhline_set_NCURSES60(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v6 = _nc_abiver(&_nc_abiver);
  v7 = *v6;
  *v6 = 393216;
  result = wmove(stdscr, v8, v9);
  if (result != -1)
  {
    result = hline_set(a3, a4);
  }

  *v6 = v7;
  return result;
}

void mvin_wch_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _nc_abiver(&_nc_abiver);
  v5 = *v4;
  *v4 = 393216;
  if (wmove(stdscr, v6, v7) != -1)
  {
    in_wch(a3);
  }

  *v4 = v5;
}

uint64_t mvin_wchnstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = _nc_abiver(&_nc_abiver);
  v7 = *v6;
  *v6 = 393216;
  result = wmove(stdscr, v8, v9);
  if (result != -1)
  {
    result = in_wchnstr(a3, a4);
  }

  *v6 = v7;
  return result;
}

uint64_t mvin_wchstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _nc_abiver(&_nc_abiver);
  v5 = *v4;
  *v4 = 393216;
  result = wmove(stdscr, v6, v7);
  if (result != -1)
  {
    result = in_wchstr(a3);
  }

  *v4 = v5;
  return result;
}

uint64_t mvinnwstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = _nc_abiver(&_nc_abiver);
  v7 = *v6;
  *v6 = 393216;
  result = wmove(stdscr, v8, v9);
  if (result != -1)
  {
    result = innwstr(a3, a4);
  }

  *v6 = v7;
  return result;
}

uint64_t mvins_nwstr_NCURSES60(uint64_t a1, uint64_t a2, __int32 *a3, int a4)
{
  v6 = _nc_abiver(&_nc_abiver);
  v7 = *v6;
  *v6 = 393216;
  result = wmove(stdscr, v8, v9);
  if (result != -1)
  {
    result = ins_nwstr(a3, a4);
  }

  *v6 = v7;
  return result;
}

uint64_t mvins_wch_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _nc_abiver(&_nc_abiver);
  v5 = *v4;
  *v4 = 393216;
  result = wmove(stdscr, v6, v7);
  if (result != -1)
  {
    result = ins_wch(a3);
  }

  *v4 = v5;
  return result;
}

uint64_t mvins_wstr_NCURSES60(uint64_t a1, uint64_t a2, __int32 *a3)
{
  v4 = _nc_abiver(&_nc_abiver);
  v5 = *v4;
  *v4 = 393216;
  result = wmove(stdscr, v6, v7);
  if (result != -1)
  {
    result = ins_wstr(a3);
  }

  *v4 = v5;
  return result;
}

uint64_t mvinwstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _nc_abiver(&_nc_abiver);
  v5 = *v4;
  *v4 = 393216;
  result = wmove(stdscr, v6, v7);
  if (result != -1)
  {
    result = inwstr(a3);
  }

  *v4 = v5;
  return result;
}

uint64_t mvvline_set_NCURSES60(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v6 = _nc_abiver(&_nc_abiver);
  v7 = *v6;
  *v6 = 393216;
  result = wmove(stdscr, v8, v9);
  if (result != -1)
  {
    result = vline_set(a3, a4);
  }

  *v6 = v7;
  return result;
}

uint64_t mvwadd_wch_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = add_wch(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwadd_wchnstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = add_wchnstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwadd_wchstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = add_wchstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwaddnwstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, __int32 *a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = addnwstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwaddwstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, __int32 *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = addwstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwget_wch_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = get_wch(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwget_wstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, __int32 *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = get_wstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwgetn_wstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, __int32 *a4, unsigned int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = getn_wstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwhline_set_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = hline_set(a4, a5);
  }

  *v7 = v8;
  return result;
}

void mvwin_wch_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  if (wmove(v9, v7, v8) != -1)
  {
    in_wch(a4);
  }

  *v5 = v6;
}

uint64_t mvwin_wchnstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = in_wchnstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwin_wchstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = in_wchstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwinnwstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = innwstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwins_nwstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, __int32 *a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = ins_nwstr(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t mvwins_wch_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = ins_wch(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwins_wstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, __int32 *a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = ins_wstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwinwstr_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _nc_abiver(&_nc_abiver);
  v6 = *v5;
  *v5 = 393216;
  result = wmove(v9, v7, v8);
  if (result != -1)
  {
    result = inwstr(a4);
  }

  *v5 = v6;
  return result;
}

uint64_t mvwvline_set_NCURSES60(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, int a5)
{
  v7 = _nc_abiver(&_nc_abiver);
  v8 = *v7;
  *v7 = 393216;
  result = wmove(v11, v9, v10);
  if (result != -1)
  {
    result = vline_set(a4, a5);
  }

  *v7 = v8;
  return result;
}

uint64_t pecho_wchar_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = pecho_wchar(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t setcchar_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = setcchar(v6, v2, v3, v4, v5);
  *v0 = v1;
  return result;
}

uint64_t slk_wset_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = slk_wset(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t term_attrs_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = term_attrs();
  *v0 = v1;
  return result;
}

uint64_t unget_wch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = unget_wch(v2);
  *v0 = v1;
  return result;
}

uint64_t vid_attr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = vid_attr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t vid_puts_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = vid_puts(v5, v2, v3, v4);
  *v0 = v1;
  return result;
}

uint64_t vline_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = vline_set(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wadd_wch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wadd_wch(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wadd_wchnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wadd_wchnstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t wadd_wchstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wadd_wchstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t waddnwstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = waddnwstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t waddwstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = waddwstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wbkgrnd_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wbkgrnd(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wbkgrndset_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wbkgrndset(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wborder_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wborder_set(v9, v2, v3, v4, v5, v6, v7, v8, v10);
  *v0 = v1;
  return result;
}

uint64_t wecho_wchar_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wecho_wchar(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wget_wch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wget_wch(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wget_wstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wget_wstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wgetbkgrnd_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wgetbkgrnd(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wgetn_wstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wgetn_wstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t whline_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = whline_set(v4, v2, v3);
  *v0 = v1;
  return result;
}

void win_wch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  win_wch(v3, v2);
  *v0 = v1;
}

uint64_t win_wchnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = win_wchnstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t win_wchstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = win_wchstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t winnwstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winnwstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t wins_nwstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wins_nwstr(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t wins_wch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wins_wch(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t wins_wstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wins_wstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t winwstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = winwstr(v3, v2);
  *v0 = v1;
  return result;
}

int *wunctrl_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wunctrl(v2);
  *v0 = v1;
  return result;
}

uint64_t wvline_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = wvline_set(v4, v2, v3);
  *v0 = v1;
  return result;
}

int beep(void)
{
  if (!cur_term)
  {
    return -1;
  }

  Strings = cur_term->type.Strings;
  v2 = Strings[1];
  if (!v2)
  {
    v4 = Strings[45];
    if (v4)
    {
      v5 = _nc_putp_flush("flash_screen", v4);
      _nc_flush();
      return v5;
    }

    return -1;
  }

  return _nc_putp_flush("bell", v2);
}

uint64_t wbkgrndset(uint64_t result, int *a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 88);
  v4 = *a2;
  if ((v3 & 0xFF00) != 0)
  {
    v5 = ~v3 & 0xFFFF00FF;
  }

  else
  {
    v5 = ~v3;
  }

  v6 = *(result + 16) & v5;
  if ((v4 & 0xFF00) != 0)
  {
    v6 &= 0xFFFF00FF;
  }

  *(result + 16) = v6 | v4;
  v9 = *_nc_abiver(&_nc_abiver);
  if (v9 < 0x60000)
  {
    if (v11)
    {
      *(v2 + 116) = 0;
    }
  }

  else
  {
    if (v11 | *(v2 + 112))
    {
      *(v2 + 116) = 0;
    }

    v12 = *(v7 + 6);
    if (v12)
    {
      goto LABEL_15;
    }
  }

  v12 = v10;
  if (v10)
  {
LABEL_15:
    *(v2 + 116) = v12;
  }

  if (*(v7 + 1))
  {
    v13 = *v7;
    *(v8 + 12) = *(v7 + 12);
    *v8 = v13;
    v15 = *(v2 + 88);
    v14 = *(v2 + 92);
  }

  else
  {
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 24) = 0;
    *(v8 + 16) = 0;
    v14 = 32;
    *(v2 + 92) = 32;
    v15 = *v7;
    *(v2 + 88) = *v7;
    if (v9 >= 0x60000)
    {
      *(v2 + 112) = BYTE1(v15);
      v16 = v15 & 0xFFFF00FF;
      *(v2 + 88) = v15 & 0xFFFF00FF | (BYTE1(v15) << 8);
      v17 = *(v7 + 6);
      if (!v17)
      {
        v17 = *(v7 + 1);
      }

      *(v2 + 112) = v17;
      if (v17 <= 255)
      {
        v18 = v17 << 8;
      }

      else
      {
        v18 = 65280;
      }

      v15 = v16 | v18;
      *(v2 + 88) = v16 | v18;
    }
  }

  result = _nc_to_char(v14);
  if (result == -1)
  {
    v19 = 32;
  }

  else
  {
    v19 = result;
  }

  v20 = v19 | v15 & 0xFFFF00FF;
  v21 = *(v2 + 116);
  if (!v21)
  {
    v21 = *(v2 + 17);
  }

  *(v2 + 20) = v20 | (v21 << 8);
  return result;
}

void wbkgdset(WINDOW *a1, chtype a2)
{
  v4[1] = 0;
  v4[2] = 0;
  v5 = 0;
  v4[0] = vand_s8(vdup_n_s32(a2), 0xFFFFFFFF00);
  if (*_nc_abiver(&_nc_abiver) >= 0x60000u)
  {
    v5 = BYTE1(v2);
    LODWORD(v4[0]) = v2 & 0xFFFF0000 | (BYTE1(v2) << 8);
  }

  wbkgrndset(v3, v4);
}

uint64_t wbkgrnd(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  *v32 = *a2;
  *&v32[3] = *(a2 + 12);
  v3 = (a1 + 88);
  v4 = *(a1 + 88);
  v5 = *(a1 + 92);
  v24 = *(a1 + 100);
  v25 = *(a1 + 96);
  v22 = *(a1 + 108);
  v23 = *(a1 + 104);
  v19 = *(a1 + 112);
  wbkgrndset(a1, v32);
  v20 = v3;
  v6 = *v3;
  *(a1 + 116) = BYTE1(*v3);
  *(a1 + 16) = v6;
  v7 = *(a1 + 4);
  if ((v7 & 0x80000000) == 0)
  {
    v21 = _nc_abiver(&_nc_abiver);
    v8 = 0;
    v9 = *(a1 + 6);
    do
    {
      if ((v9 & 0x8000) == 0)
      {
        v10 = 0;
        v11 = -1;
        do
        {
          v12 = *(*(a1 + 40) + 16 * v8);
          v13 = v12 + v10;
          v14 = *(v12 + v10);
          if (v14 == v4 && *(v13 + 4) == v5 && *(v12 + v10 + 8) == v25 && *(v12 + v10 + 12) == v24 && *(v12 + v10 + 16) == v23 && *(v12 + v10 + 20) == v22 && (*v21 < 0x60000u || *(v12 + v10 + 24) == v19))
          {
            v15 = *v20;
            v16 = *(v20 + 12);
          }

          else
          {
            v30 = *(v13 + 4);
            v31 = *(v13 + 20);
            v26 = v14 & 0x4000FF;
            v27 = v30;
            v28 = v31;
            _nc_render(a1, &v26);
            v15 = *v29;
            v16 = *&v29[12];
          }

          *(v13 + 12) = v16;
          *v13 = v15;
          ++v11;
          v10 += 28;
        }

        while (v11 < *(a1 + 6));
        v9 = *(a1 + 6);
        LOWORD(v7) = *(a1 + 4);
      }
    }

    while (v8++ < v7);
  }

  wtouchln(a1, 0, v7 + 1, 1);
  _nc_synchook(a1);
  return 0;
}

int wbkgd(WINDOW *a1, chtype a2)
{
  v6 = 0;
  v7 = 0;
  v5 = vand_s8(vdup_n_s32(a2), 0xFFFFFFFF00);
  if (*_nc_abiver(&_nc_abiver) >= 0x60000u)
  {
    v7 = BYTE1(v2);
    LODWORD(v5) = v2 & 0xFFFF0000 | (BYTE1(v2) << 8);
  }

  return wbkgrnd(v3, &v5);
}

int wborder(WINDOW *a1, chtype a2, chtype a3, chtype a4, chtype a5, chtype a6, chtype a7, chtype a8, chtype a9)
{
  if (!a1)
  {
    return -1;
  }

  v17 = _nc_abiver(&_nc_abiver);
  if (*v17 < 0x60000u)
  {
    v18 = 0;
    v19 = v16 & 0xFFFFFF00;
  }

  else
  {
    v18 = BYTE1(v16);
    v19 = v16 & 0xFFFF0000 | (BYTE1(v16) << 8);
  }

  LODWORD(v95) = v19;
  DWORD1(v95) = v16;
  *(&v95 + 1) = 0;
  v96 = 0;
  v97 = v18;
  _nc_render(a1, &v95);
  if (!a3)
  {
    a3 = HIDWORD(xmmword_2A1462FFC);
  }

  if (*v17 <= 0x5FFFFu)
  {
    v21 = 0;
    v22 = a3 & 0xFFFFFF00;
  }

  else
  {
    v21 = BYTE1(a3);
    v22 = a3 & 0xFFFF0000 | (BYTE1(a3) << 8);
  }

  v23 = v98;
  v91 = v99;
  LODWORD(v95) = v22;
  DWORD1(v95) = a3;
  *(&v95 + 1) = 0;
  v96 = 0;
  v97 = v21;
  _nc_render(a1, &v95);
  if (!a4)
  {
    a4 = dword_2A1462FEC;
  }

  if (*v17 <= 0x5FFFFu)
  {
    v24 = 0;
    v25 = a4 & 0xFFFFFF00;
  }

  else
  {
    v24 = BYTE1(a4);
    v25 = a4 & 0xFFFF0000 | (BYTE1(a4) << 8);
  }

  v26 = v98;
  v89 = v99;
  LODWORD(v95) = v25;
  DWORD1(v95) = a4;
  *(&v95 + 1) = 0;
  v96 = 0;
  v97 = v24;
  _nc_render(a1, &v95);
  if (!a5)
  {
    a5 = dword_2A1462FEC;
  }

  if (*v17 <= 0x5FFFFu)
  {
    v27 = 0;
    v28 = a5 & 0xFFFFFF00;
  }

  else
  {
    v27 = BYTE1(a5);
    v28 = a5 & 0xFFFF0000 | (BYTE1(a5) << 8);
  }

  v29 = v98;
  v88 = v99;
  LODWORD(v95) = v28;
  DWORD1(v95) = a5;
  *(&v95 + 1) = 0;
  v96 = 0;
  v97 = v27;
  _nc_render(a1, &v95);
  if (!a6)
  {
    a6 = dword_2A1462FD8;
  }

  v90 = v26;
  if (*v17 <= 0x5FFFFu)
  {
    v30 = 0;
    v31 = a6 & 0xFFFFFF00;
  }

  else
  {
    v30 = BYTE1(a6);
    v31 = a6 & 0xFFFF0000 | (BYTE1(a6) << 8);
  }

  v32 = v99;
  v87 = v98;
  LODWORD(v95) = v31;
  DWORD1(v95) = a6;
  *(&v95 + 1) = 0;
  v96 = 0;
  v97 = v30;
  _nc_render(a1, &v95);
  if (!a7)
  {
    a7 = dword_2A1462FD4;
  }

  v92 = v23;
  v33 = v29;
  if (*v17 <= 0x5FFFFu)
  {
    v34 = 0;
    v35 = a7 & 0xFFFFFF00;
  }

  else
  {
    v34 = BYTE1(a7);
    v35 = a7 & 0xFFFF0000 | (BYTE1(a7) << 8);
  }

  v37 = v98;
  v36 = v99;
  LODWORD(v95) = v35;
  DWORD1(v95) = a7;
  *(&v95 + 1) = 0;
  v96 = 0;
  v97 = v34;
  _nc_render(a1, &v95);
  if (!a8)
  {
    a8 = xmmword_2A1462FDC;
  }

  v38 = a9;
  if (*v17 <= 0x5FFFFu)
  {
    v39 = 0;
    v40 = a8 & 0xFFFFFF00;
  }

  else
  {
    v39 = BYTE1(a8);
    v40 = a8 & 0xFFFF0000 | (BYTE1(a8) << 8);
  }

  v41 = v98;
  v94 = v99;
  LODWORD(v95) = v40;
  DWORD1(v95) = a8;
  *(&v95 + 1) = 0;
  v96 = 0;
  v97 = v39;
  _nc_render(a1, &v95);
  if (!a9)
  {
    v38 = dword_2A1462FD0;
  }

  v42 = v41;
  if (*v17 <= 0x5FFFFu)
  {
    v43 = 0;
    v44 = v38 & 0xFFFFFF00;
  }

  else
  {
    v43 = BYTE1(v38);
    v44 = v38 & 0xFFFF0000 | (BYTE1(v38) << 8);
  }

  v45 = v99;
  v93 = v98;
  LODWORD(v95) = v44;
  DWORD1(v95) = v38;
  *(&v95 + 1) = 0;
  v96 = 0;
  v97 = v43;
  _nc_render(a1, &v95);
  v46 = v98;
  v47 = v99;
  v48 = *(a1 + 3);
  v49 = *(a1 + 2);
  if ((v48 & 0x8000000000000000) == 0)
  {
    LOWORD(v50) = 0;
    v51 = vand_s8(vdup_n_s32(v88 | v33), 0xFFFFFFFF00);
    v52 = ((v88 | v33) >> 8);
    v53 = ((v32 | v87) >> 8);
    v54 = vand_s8(vdup_n_s32(v32 | v87), 0xFFFFFFFF00);
    do
    {
      v55 = **(a1 + 5) + 28 * v50;
      *(v55 + 24) = 0;
      *(v55 + 8) = 0;
      *(v55 + 16) = 0;
      *v55 = 0;
      *v55 = v51;
      v56 = *(a1 + 5);
      if (*v17 > 0x5FFFFu)
      {
        v57 = (*v56 + 28 * v50);
        v57[6] = v52;
        *v57 = (v52 << 8) | *v57 & 0xFFFF00FF;
      }

      v58 = v56[2 * v49] + 28 * v50;
      *(v58 + 8) = 0;
      *(v58 + 16) = 0;
      *(v58 + 24) = 0;
      *v58 = v54;
      if (*v17 > 0x5FFFFu)
      {
        v59 = (*(*(a1 + 5) + 16 * v49) + 28 * v50);
        v59[6] = v53;
        *v59 = (v53 << 8) | *v59 & 0xFFFF00FF;
      }

      v50 = (v50 + 1);
    }

    while (v50 <= v48);
  }

  v60 = v36 | v37;
  v61 = *(a1 + 5);
  *(v61 + 4) = 0;
  v62 = &v61[2 * v49];
  *(v62 + 4) = 0;
  *(v61 + 5) = v48;
  *(v62 + 5) = v48;
  if ((v49 & 0x80000000) == 0)
  {
    LOWORD(v63) = 0;
    v64 = vand_s8(vdup_n_s32(v91 | v92), 0xFFFFFFFF00);
    v65 = ((v91 | v92) >> 8);
    v66 = vand_s8(vdup_n_s32(v89 | v90), 0xFFFFFFFF00);
    v67 = ((v89 | v90) >> 8);
    do
    {
      v68 = 2 * v63;
      v69 = v61[v68];
      *(v69 + 24) = 0;
      *(v69 + 8) = 0;
      *(v69 + 16) = 0;
      *v69 = 0;
      *v69 = v64;
      v70 = *(*(a1 + 5) + v68 * 8);
      if (*v17 > 0x5FFFFu)
      {
        v70[6] = v65;
        *v70 = *v70 & 0xFFFF00FF | (v65 << 8);
      }

      v63 = v63;
      v71 = &v70[7 * v48];
      v71[6] = 0;
      *(v71 + 1) = 0;
      *(v71 + 2) = 0;
      *v71 = 0;
      *v71 = v66;
      v61 = *(a1 + 5);
      if (*v17 > 0x5FFFFu)
      {
        v72 = (v61[2 * v63] + 28 * v48);
        v72[6] = v67;
        *v72 = (v67 << 8) | *v72 & 0xFFFF00FF;
      }

      v73 = &v61[2 * v63];
      *(v73 + 4) = 0;
      *(v73 + 5) = v48;
      LODWORD(v63) = (v63 + 1);
    }

    while (v63 <= v49);
  }

  v74 = v94 | v42;
  v75 = *v61;
  *(v75 + 24) = 0;
  *(v75 + 8) = 0;
  *(v75 + 16) = 0;
  *v75 = 0;
  *v75 = vand_s8(vdup_n_s32(v60), 0xFFFFFFFF00);
  v76 = **(a1 + 5);
  if (*v17 > 0x5FFFFu)
  {
    *(v76 + 24) = BYTE1(v60);
    *(v76 + 1) = BYTE1(v60);
  }

  v77 = v45 | v93;
  v78 = v76 + 28 * v48;
  *(v78 + 24) = 0;
  *(v78 + 8) = 0;
  *(v78 + 16) = 0;
  *v78 = 0;
  *v78 = vand_s8(vdup_n_s32(v74), 0xFFFFFFFF00);
  v79 = *(a1 + 5);
  if (*v17 > 0x5FFFFu)
  {
    v80 = *v79 + 28 * v48;
    *(v80 + 24) = BYTE1(v74);
    *(v80 + 1) = BYTE1(v74);
  }

  v81 = v47 | v46;
  v82 = 16 * v49;
  v83 = v79[2 * v49];
  *(v83 + 24) = 0;
  *(v83 + 8) = 0;
  *(v83 + 16) = 0;
  *v83 = 0;
  *v83 = vand_s8(vdup_n_s32(v77), 0xFFFFFFFF00);
  v84 = *(*(a1 + 5) + v82);
  if (*v17 > 0x5FFFFu)
  {
    *(v84 + 24) = BYTE1(v77);
    *(v84 + 1) = BYTE1(v77);
  }

  v85 = (v84 + 28 * v48);
  v85[1] = 0;
  v85[2] = 0;
  v85[3].i32[0] = 0;
  *v85 = vand_s8(vdup_n_s32(v81), 0xFFFFFFFF00);
  if (*v17 > 0x5FFFFu)
  {
    v86 = *(*(a1 + 5) + v82) + 28 * v48;
    *(v86 + 24) = BYTE1(v81);
    *(v86 + 1) = BYTE1(v81);
  }

  _nc_synchook(a1);
  return 0;
}

uint64_t wborder_set(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, _OWORD *a6, _OWORD *a7, _OWORD *a8, _OWORD *a9)
{
  memset(&v52[256], 0, 28);
  memset(&v52[224], 0, 28);
  memset(&v52[192], 0, 28);
  memset(&v52[160], 0, 28);
  memset(&v52[128], 0, 28);
  memset(&v52[96], 0, 28);
  memset(&v52[64], 0, 28);
  memset(&v52[32], 0, 28);
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = (_nc_wacs + 3360);
  if (a2)
  {
    v16 = a2;
  }

  *v52 = *v16;
  *&v52[12] = *(v16 + 12);
  _nc_render(a1, v52);
  v17 = (_nc_wacs + 3360);
  if (a3)
  {
    v17 = a3;
  }

  *v52 = *v17;
  *&v52[12] = *(v17 + 12);
  _nc_render(a1, v52);
  v18 = (_nc_wacs + 3164);
  if (a4)
  {
    v18 = a4;
  }

  *v52 = *v18;
  *&v52[12] = *(v18 + 12);
  _nc_render(a1, v52);
  v19 = (_nc_wacs + 3164);
  if (a5)
  {
    v19 = a5;
  }

  *v52 = *v19;
  *&v52[12] = *(v19 + 12);
  _nc_render(a1, v52);
  v20 = (_nc_wacs + 3024);
  if (a6)
  {
    v20 = a6;
  }

  *v52 = *v20;
  *&v52[12] = *(v20 + 12);
  _nc_render(a1, v52);
  v21 = (_nc_wacs + 2996);
  if (a7)
  {
    v21 = a7;
  }

  *v52 = *v21;
  *&v52[12] = *(v21 + 12);
  _nc_render(a1, v52);
  v22 = (_nc_wacs + 3052);
  if (a8)
  {
    v22 = a8;
  }

  *v52 = *v22;
  *&v52[12] = *(v22 + 12);
  _nc_render(a1, v52);
  v23 = (_nc_wacs + 2968);
  if (a9)
  {
    v23 = a9;
  }

  *v52 = *v23;
  *&v52[12] = *(v23 + 12);
  _nc_render(a1, v52);
  v24 = *(a1 + 6);
  v25 = *(a1 + 4);
  if ((v24 & 0x8000000000000000) == 0)
  {
    LOWORD(v26) = 0;
    do
    {
      v27 = 28 * v26;
      v28 = (**(a1 + 40) + v27);
      v29 = *&v52[192];
      *(v28 + 12) = *&v52[204];
      *v28 = v29;
      v30 = (*(*(a1 + 40) + 16 * v25) + v27);
      v31 = *&v52[160];
      *(v30 + 12) = *&v52[172];
      *v30 = v31;
      v26 = (v26 + 1);
    }

    while (v26 <= v24);
  }

  v32 = *(a1 + 40);
  *(v32 + 8) = 0;
  v33 = v32 + 16 * v25;
  *(v33 + 8) = 0;
  *(v32 + 10) = v24;
  *(v33 + 10) = v24;
  if ((v25 & 0x80000000) == 0)
  {
    LOWORD(v34) = 0;
    do
    {
      v35 = 16 * v34;
      v36 = *(v32 + v35);
      v37 = *&v52[256];
      *(v36 + 12) = *&v52[268];
      *v36 = v37;
      v38 = (*(*(a1 + 40) + v35) + 28 * v24);
      v39 = *&v52[224];
      *(v38 + 12) = *&v52[236];
      *v38 = v39;
      v32 = *(a1 + 40);
      v40 = v32 + v35;
      *(v40 + 8) = 0;
      *(v40 + 10) = v24;
      v34 = (v34 + 1);
    }

    while (v34 <= v25);
  }

  v41 = *v32;
  v42 = *&v52[128];
  *(v41 + 12) = *&v52[140];
  *v41 = v42;
  v43 = 28 * v24;
  v44 = (**(a1 + 40) + v43);
  v45 = *&v52[96];
  *(v44 + 12) = *&v52[108];
  *v44 = v45;
  v46 = 16 * v25;
  v47 = *(*(a1 + 40) + v46);
  v48 = *&v52[64];
  *(v47 + 12) = *&v52[76];
  *v47 = v48;
  v49 = (*(*(a1 + 40) + v46) + v43);
  v50 = *&v52[32];
  *(v49 + 12) = *&v52[44];
  *v49 = v50;
  _nc_synchook(a1);
  return 0;
}

uint64_t setcchar(unsigned __int8 *a1, __int32 *a2, int a3, int a4, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (a2 && !a5)
  {
    v10 = wcslen(a2);
    if (v10 < 2)
    {
LABEL_11:
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 6) = 0;
      *(a1 + 2) = 0;
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      if (wcwidth(*a2) < 0)
      {
        return 0xFFFFFFFFLL;
      }

      if (v10 >= 5)
      {
        v11 = 5;
      }

      else
      {
        v11 = v10;
      }

      v10 = v11;
      v12 = 1;
      while (!wcwidth(a2[v12]))
      {
        if (v11 == ++v12)
        {
          goto LABEL_11;
        }
      }

      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 6) = 0;
      v10 = v12;
      *(a1 + 2) = 0;
    }

    *a1 = *a1 | a3 & 0xFFFFFF00;
    if (*_nc_abiver(&_nc_abiver) < 0x60000u)
    {
      v17 = a3 & 0xFFFF0000 | (a4 << 8) | v13;
    }

    else
    {
      *(a1 + 6) = a4;
      v15 = v14 & 0xFFFF00FF;
      v16 = a4 << 8;
      if (a4 > 255)
      {
        v16 = 65280;
      }

      v17 = v15 | v16;
    }

    *a1 = v17;
    memcpy(a1 + 4, a2, 4 * v10);
    return 0;
  }

  return result;
}

uint64_t getcchar(uint64_t a1, __int32 *a2, unsigned int *a3, _WORD *a4, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (a1 && !a5)
  {
    v10 = wmemchr((a1 + 4), 0, 5uLL);
    if (v10)
    {
      v11 = ((v10 - a1 - 4) >> 2);
    }

    else
    {
      v11 = 5;
    }

    if (a2)
    {
      result = 0xFFFFFFFFLL;
      if (a3 && a4 && (v11 & 0x80000000) == 0)
      {
        *a3 = *a1 & 0xFFFFFF00;
        if (*_nc_abiver(&_nc_abiver) < 0x60000u || (v12 = *(a1 + 24)) == 0)
        {
          LOWORD(v12) = *(a1 + 1);
        }

        *a4 = v12;
        wmemcpy(a2, (a1 + 4), v11);
        result = 0;
        a2[v11] = 0;
      }
    }

    else if (v11 < 5)
    {
      return (v11 + 1);
    }

    else
    {
      return 5;
    }
  }

  return result;
}

int wchgat(WINDOW *a1, int a2, attr_t a3, __int16 a4, const void *a5)
{
  if (!a1)
  {
    return -1;
  }

  if (*(a1 + 1) > *(a1 + 3))
  {
    return 0;
  }

  v6 = *(a1 + 5) + 16 * *a1;
  v7 = _nc_abiver(&_nc_abiver);
  v15 = v14 | (v9 << 8);
  v16 = v9 << 8;
  if (v9 > 255)
  {
    v16 = 65280;
  }

  v17 = v12 + 1;
  v18 = v13 | (v9 << 8);
  v19 = 28 * v11;
  do
  {
    if (v8 != -1)
    {
      v20 = __OFSUB__(v8--, 1);
      if (v8 < 0 != v20)
      {
        break;
      }
    }

    v21 = *v10;
    v22 = *(*v10 + v19);
    *(*v10 + v19) = v18 | v22;
    if (*v7 < 0x60000u)
    {
      v23 = v15 | v22;
    }

    else
    {
      *(v21 + v19 + 24) = v9;
      v23 = v16 | (v18 | v22) & 0xFFFF00FF;
    }

    *(v21 + v19) = v23;
    v24 = *(v10 + 4);
    if (v24 == -1)
    {
      *(v10 + 5) = v11;
    }

    else if (v11 >= v24)
    {
      if (v11 > *(v10 + 5))
      {
        *(v10 + 5) = v11;
      }

      goto LABEL_19;
    }

    *(v10 + 4) = v11;
LABEL_19:
    ++v11;
    v19 += 28;
  }

  while (v17 != v11);
  return 0;
}

int wclear(WINDOW *a1)
{
  result = werase(a1);
  if (result != -1)
  {
    *(a1 + 25) = 1;
  }

  return result;
}

int clearok(WINDOW *a1, BOOL a2)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 25) = a2;
  return result;
}

int wclrtobot(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = *(a1 + 1);
  *v10 = *(a1 + 88);
  *&v10[12] = *(a1 + 100);
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v2 <= v3)
  {
    do
    {
      v4 = *(a1 + 5) + 16 * v2;
      v5 = *(a1 + 3);
      v6 = *(v4 + 8);
      if (v6 == -1 || v6 > v1)
      {
        *(v4 + 8) = v1;
      }

      v7 = *v4;
      *(v4 + 10) = v5;
      if (v5 >= v1)
      {
        v8 = (v7 + 28 * v1);
        do
        {
          *v8 = *v10;
          *(v8 + 12) = *&v10[12];
          v8 = (v8 + 28);
        }

        while (v8 <= v7 + 28 * v5);
        LOWORD(v3) = *(a1 + 2);
      }

      v1 = 0;
      v2 = (v2 + 1);
    }

    while (v2 <= v3);
  }

  _nc_synchook(a1);
  return 0;
}

int wclrtoeol(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = *a1;
  v2 = *(a1 + 6);
  if ((v2 & 0x40) != 0 && v1 < *(a1 + 2))
  {
    v2 &= ~0x40u;
    *(a1 + 6) = v2;
  }

  if ((v2 & 0x40) != 0)
  {
    return -1;
  }

  if (v1 > *(a1 + 2))
  {
    return -1;
  }

  v3 = *(a1 + 1);
  v4 = *(a1 + 3);
  if (v3 > v4)
  {
    return -1;
  }

  *v12 = *(a1 + 88);
  *&v12[12] = *(a1 + 100);
  v6 = *(a1 + 5) + 16 * v1;
  v7 = *(v6 + 8);
  if (v7 == -1 || v7 > v3)
  {
    *(v6 + 8) = v3;
  }

  *(v6 + 10) = v4;
  v9 = *v6;
  v10 = *v6 + 28 * v4;
  v11 = (v9 + 28 * v3);
  do
  {
    *v11 = *v12;
    *(v11 + 12) = *&v12[12];
    v11 = (v11 + 28);
  }

  while (v11 <= v10);
  _nc_synchook(a1);
  return 0;
}

uint64_t _nc_reset_colors()
{
  v0 = *(SP + 756);
  if (v0 >= 1)
  {
    *(SP + 756) = -v0;
  }

  Strings = cur_term->type.Strings;
  v2 = Strings[297];
  v3 = v2 != 0;
  if (v2)
  {
    _nc_putp("orig_pair", v2);
    Strings = cur_term->type.Strings;
  }

  v4 = Strings[298];
  if (v4)
  {
    _nc_putp("orig_colors", v4);
    return 1;
  }

  return v3;
}

int start_color(void)
{
  if (!SP)
  {
    return -1;
  }

  if (*(SP + 752))
  {
    return 0;
  }

  Numbers = cur_term->type.Numbers;
  v1 = Numbers[14];
  v2 = Numbers[13];
  v3 = *(cur_term->type.Strings + 297);
  if (v3)
  {
    _nc_putp("orig_pair", v3);
  }

  else
  {
    sub_29948C540(*(SP + 996), _nc_outch);
    v4 = SP ? *(SP + 1000) : 0;
    sub_29948C5C0(v4, _nc_outch);
  }

  if (v1 < 1 || v2 < 1)
  {
    return 0;
  }

  v7 = SP;
  v8 = (v1 + 2 * v2 + 1);
  *(SP + 988) = v8;
  *(v7 + 984) = v1;
  *(v7 + 968) = v2;
  COLOR_PAIRS = v1;
  COLORS = v2;
  v9 = calloc(v8, 4uLL);
  *(SP + 976) = v9;
  if (!v9)
  {
    return -1;
  }

  v10 = calloc(v2, 0x10uLL);
  v11 = SP;
  *(SP + 960) = v10;
  if (!v10)
  {
    v19 = *(v11 + 976);
    if (v19)
    {
      free(v19);
      *(SP + 976) = 0;
    }

    return -1;
  }

  **(v11 + 976) = *(v11 + 1000) & 0x1FF | ((*(v11 + 996) & 0x1FF) << 9);
  if (cur_term->type.Booleans[29])
  {
    v12 = &unk_2994B0504;
  }

  else
  {
    v12 = &unk_2994B0584;
  }

  if (COLORS >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 16 * COLORS;
    do
    {
      v16 = *(v11 + 960);
      if (v14 > 7)
      {
        *(v16 + v13) = v12[v14 & 7];
        v11 = SP;
        v17 = *(SP + 960);
        if (cur_term->type.Booleans[29])
        {
          *(v17 + v13 + 2) = 100;
        }

        else
        {
          if (*(v17 + v13))
          {
            *(v17 + v13) = 1000;
          }

          v18 = v17 + v13;
          if (*(v18 + 2))
          {
            *(v18 + 2) = 1000;
          }

          if (*(v18 + 4))
          {
            *(v18 + 4) = 1000;
          }
        }
      }

      else
      {
        *(v16 + v13) = v12[v13 / 0x10];
        v11 = SP;
      }

      ++v14;
      v13 += 16;
    }

    while (v15 != v13);
  }

  result = 0;
  *(v11 + 752) = 1;
  return result;
}

uint64_t sub_29948C540(uint64_t a1, int (__cdecl *a2)(int))
{
  Strings = cur_term->type.Strings;
  v4 = Strings[359];
  if (!v4)
  {
    v4 = Strings[302];
    if (a1 <= 15)
    {
      a1 = dword_2994B0604[a1];
    }
  }

  v5 = _nc_tiparm(1, v4, a1);

  return tputs(v5, 1, a2);
}

uint64_t sub_29948C5C0(uint64_t a1, int (__cdecl *a2)(int))
{
  Strings = cur_term->type.Strings;
  v4 = Strings[360];
  if (!v4)
  {
    v4 = Strings[303];
    if (a1 <= 15)
    {
      a1 = dword_2994B0604[a1];
    }
  }

  v5 = _nc_tiparm(1, v4, a1);

  return tputs(v5, 1, a2);
}

BOOL has_colors(void)
{
  if (!cur_term)
  {
    return 0;
  }

  Numbers = cur_term->type.Numbers;
  if (Numbers[13] < 0 || Numbers[14] < 0)
  {
    return 0;
  }

  Strings = cur_term->type.Strings;
  return Strings[302] && Strings[303] || Strings[359] && Strings[360] || Strings[301] != 0;
}

int color_content(__int16 a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v4 = a1;
  result = -1;
  if ((v4 & 0x80000000) == 0 && SP)
  {
    v6 = COLORS <= v4 || cur_term->type.Numbers[13] <= v4;
    if (!v6 && *(SP + 752))
    {
      v7 = (*(SP + 960) + 16 * v4);
      v8 = v7[1];
      v9 = v7[2];
      if (a2)
      {
        *a2 = *v7;
      }

      if (a3)
      {
        *a3 = v8;
      }

      result = 0;
      if (a4)
      {
        *a4 = v9;
      }
    }
  }

  return result;
}

int pair_content(__int16 a1, __int16 *a2, __int16 *a3)
{
  v3 = a1;
  result = -1;
  if ((v3 & 0x80000000) == 0 && SP && *(SP + 988) > v3 && *(SP + 752))
  {
    v5 = *(*(SP + 976) + 4 * v3);
    v6 = v5 & 0x1FF;
    if ((~v5 & 0x1FF) == 0)
    {
      v6 = -1;
    }

    if (a2)
    {
      if ((~v5 & 0x3FE00) != 0)
      {
        v7 = (v5 >> 9) & 0x1FF;
      }

      else
      {
        v7 = -1;
      }

      *a2 = v7;
    }

    result = 0;
    if (a3)
    {
      *a3 = v6;
    }
  }

  return result;
}

uint64_t _nc_do_color(uint64_t result, uint64_t a2, int a3, int (__cdecl *a4)(int))
{
  v18 = 511;
  v17 = 511;
  v16 = -1;
  v15 = -1;
  if ((a2 & 0x80000000) != 0)
  {
    return result;
  }

  v4 = SP;
  if (!SP || *(SP + 988) <= a2 || !*(SP + 752))
  {
    return result;
  }

  v7 = result;
  if (a2)
  {
    v8 = *(cur_term->type.Strings + 301);
    if (v8)
    {
      v9 = _nc_tiparm(1, v8, a2);

      return tputs(v9, 1, a4);
    }

    result = pair_content(a2, &v18, &v17);
    if (result == -1)
    {
      return result;
    }
  }

  if ((v7 & 0x80000000) == 0)
  {
    result = pair_content(v7, &v16, &v15);
    if (result != -1)
    {
      if ((v18 < 0x1FFu || v16 >= 0x1FFu) && (v17 < 0x1FFu || v15 > 0x1FEu))
      {
        goto LABEL_31;
      }

      if (*(v4 + 994) == 1)
      {
        if (v15 >= 0x1FFu && v16 <= 0x1FEu)
        {
          v10 = "\x1B[39m";
LABEL_28:
          tputs(v10, 1, a4);
LABEL_31:
          v13 = v18;
          if (v18 >= 0x1FFu)
          {
            if (SP)
            {
              v13 = *(SP + 996);
            }

            else
            {
              v13 = 7;
            }

            v18 = v13;
          }

          result = v17;
          if (v17 >= 0x1FFu)
          {
            if (SP)
            {
              result = *(SP + 1000);
            }

            else
            {
              result = 0;
            }

            v17 = result;
          }

          if (a3)
          {
            v18 = result;
            v17 = v13;
            v14 = v13;
          }

          else
          {
            v14 = result;
            result = v13;
          }

          if (result <= 0x1FE)
          {
            result = sub_29948C540(result, a4);
            v14 = v17;
          }

          if (v14 <= 0x1FE)
          {
            return sub_29948C5C0(v14, a4);
          }

          return result;
        }

        if (v16 >= 0x1FFu && v15 <= 0x1FEu)
        {
          v10 = "\x1B[49m";
          goto LABEL_28;
        }
      }

      v12 = *(cur_term->type.Strings + 297);
      if (v12)
      {
        _nc_putp("orig_pair", v12);
      }

      goto LABEL_31;
    }
  }

  v11 = *(cur_term->type.Strings + 297);
  if (v11)
  {
    result = _nc_putp("orig_pair", v11);
  }

  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  return result;
}

int wcolor_set(WINDOW *a1, __int16 a2, void *a3)
{
  result = -1;
  if ((a2 & 0x80000000) == 0 && a1 && !a3 && SP && *(SP + 988) > a2)
  {
    result = 0;
    *(a1 + 29) = a2;
  }

  return result;
}

TERMINAL *__cdecl set_curterm(TERMINAL *a1)
{
  v2 = cur_term;
  if (SP)
  {
    *(SP + 48) = a1;
  }

  cur_term = a1;
  if (a1)
  {
    ospeed = _nc_ospeed(a1->_baudrate);
    Strings = a1->type.Strings;
    if (Strings)
    {
      v4 = Strings[104];
      if (v4)
      {
        LOBYTE(v4) = *v4;
      }

      PC[0] = v4;
    }
  }

  return v2;
}

int del_curterm(TERMINAL *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = cur_term;
  _nc_free_termtype(&a1->type);
  if (v2 == a1)
  {
    if (SP)
    {
      *(SP + 48) = 0;
    }

    cur_term = 0;
  }

  termname = a1->_termname;
  if (termname)
  {
    free(termname);
  }

  if (*&PC[480])
  {
    free(*&PC[480]);
    *&PC[480] = 0;
  }

  free(a1);
  return 0;
}

uint64_t _nc_screen_of(uint64_t result)
{
  if (result)
  {
    return *(result - 8);
  }

  return result;
}

int wdelch(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  *v10 = *(a1 + 88);
  *&v10[12] = *(a1 + 100);
  v1 = *(a1 + 5) + 16 * *a1;
  v2 = *(a1 + 3);
  v3 = *v1 + 28 * v2;
  v4 = *(a1 + 1);
  v5 = (*v1 + 28 * *(a1 + 1));
  v6 = *(v1 + 8);
  if (v6 == -1 || v6 > v4)
  {
    *(v1 + 8) = v4;
  }

  *(v1 + 10) = v2;
  if (v5 >= v3)
  {
    v8 = v5;
  }

  else
  {
    do
    {
      v8 = (v5 + 28);
      *v5 = *(v5 + 28);
      *(v5 + 12) = *(v5 + 40);
      v5 = v8;
    }

    while (v8 < v3);
  }

  *v8 = *v10;
  *(v8 + 12) = *&v10[12];
  _nc_synchook(a1);
  return 0;
}

int delwin(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = *&PC[472];
  if (!*&PC[472])
  {
    return -1;
  }

  v3 = 1;
  do
  {
    while (v1 + 2 == a1)
    {
      v3 = 0;
      v1 = *v1;
      if (!v1)
      {
        goto LABEL_13;
      }
    }

    if ((*(v1 + 14) & 1) != 0 && v1[10] == a1)
    {
      return -1;
    }

    v1 = *v1;
  }

  while (v1);
  if (v3)
  {
    return -1;
  }

LABEL_13:
  if (*(a1 + 6))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v6 = -1;
      goto LABEL_19;
    }
  }

  else
  {
    v5 = *(SP + 136);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v6 = *(v5 + 4) + 1;
LABEL_19:
  wtouchln(v5, 0, v6, 1);
LABEL_20:

  return _nc_freewin(a1);
}

int assume_default_colors(int a1, int a2)
{
  v3 = a1;
  Strings = cur_term->type.Strings;
  if (!Strings[297] && !Strings[298] || Strings[300])
  {
    return -1;
  }

  v6 = a1 > 0x1FE;
  if (a1 <= 0x1FE)
  {
    v7 = a1;
  }

  else
  {
    v7 = 511;
  }

  if (a2 > 0x1FE)
  {
    v6 = 1;
  }

  *(SP + 993) = v6;
  v8 = tigetflag("AX") == 1;
  v9 = SP;
  *(SP + 994) = v8;
  *(v9 + 996) = v7;
  if (a2 >= 0x1FF)
  {
    v10 = 511;
  }

  else
  {
    v10 = a2;
  }

  *(v9 + 1000) = v10;
  if (!*(v9 + 976))
  {
    return 0;
  }

  v11 = *(v9 + 993);
  *(v9 + 992) = 257;
  init_pair(0, v3, a2);
  result = 0;
  *(SP + 993) = v11;
  return result;
}

int echo(void)
{
  if (!SP)
  {
    return -1;
  }

  result = 0;
  *(SP + 788) = 1;
  return result;
}

int noecho(void)
{
  if (!SP)
  {
    return -1;
  }

  result = 0;
  *(SP + 788) = 0;
  return result;
}

int endwin(void)
{
  v0 = SP;
  if (!SP)
  {
    return -1;
  }

  *(SP + 736) = 1;
  (*(v0 + 1088))();
  _nc_screen_wrap();
  _nc_mvcur_wrap();

  return reset_shell_mode();
}

int werase(WINDOW *a1)
{
  if (!a1)
  {
    return -1;
  }

  *v14 = *(a1 + 88);
  *&v14[12] = *(a1 + 100);
  v1 = *(a1 + 2);
  if ((v1 & 0x80000000) == 0)
  {
    v2 = 0;
    v3 = *(a1 + 5);
    v4 = *(a1 + 3);
    do
    {
      v5 = *(v3 + 16 * v2);
      if ((*v5 & 0xFEu) - 2 > 0x1D)
      {
        v8 = *(v3 + 16 * v2);
      }

      else
      {
        v6 = *(a1 + 8);
        if (v6)
        {
          LODWORD(v6) = *(a1 + 5);
        }

        v7 = v6 + 1;
        v8 = *(v3 + 16 * v2);
        do
        {
          if (--v7 < 1)
          {
            break;
          }

          v9 = *(v8 - 28);
          v8 = (v8 - 28);
        }

        while (v9 != 1);
      }

      v10 = &v5[7 * v4];
      if (v8 <= v10)
      {
        do
        {
          *(v8 + 12) = *&v14[12];
          *v8 = *v14;
          v8 = (v8 + 28);
        }

        while (v8 <= v10);
        v3 = *(a1 + 5);
        v4 = *(a1 + 3);
        LOWORD(v1) = *(a1 + 2);
      }

      v11 = v3 + 16 * v2;
      *(v11 + 8) = 0;
      *(v11 + 10) = v4;
    }

    while (v2++ < v1);
  }

  *a1 = 0;
  *(a1 + 6) &= ~0x40u;
  _nc_synchook(a1);
  return 0;
}

uint64_t erasewchar(_DWORD *a1)
{
  result = erasechar();
  if (result != -1)
  {
    v3 = result;
    result = 0;
    *a1 = v3;
  }

  return result;
}

uint64_t killwchar(_DWORD *a1)
{
  result = killchar();
  if (result != -1)
  {
    v3 = result;
    result = 0;
    *a1 = v3;
  }

  return result;
}

int flash(void)
{
  if (SP && *(SP + 48))
  {
    Strings = cur_term->type.Strings;
    v1 = Strings[45];
    if (v1)
    {
      v2 = "flash_screen";
      return _nc_putp_flush(v2, v1);
    }

    v1 = Strings[1];
    if (v1)
    {
      v2 = "bell";
      return _nc_putp_flush(v2, v1);
    }
  }

  return -1;
}

void _nc_free_and_exit(int a1)
{
  if (SP)
  {
    delscreen(SP);
    v2 = *(SP + 48);
    if (v2)
    {
      del_curterm(v2);
    }
  }

  exit(a1);
}

uint64_t wget_wch(uint64_t a1, _DWORD *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v19 = 0;
  if (_nc_screen_of(a1))
  {
    v4 = 0;
    v18 = 0;
    while (1)
    {
      v5 = _nc_wgetch(a1, &v19, 1);
      v6 = v5;
      if (v5 == -1)
      {
        goto LABEL_16;
      }

      if (v5 == 256)
      {
        break;
      }

      v7 = v19;
      if (v4 == 54)
      {
        v15 = SP;
        goto LABEL_14;
      }

      v8 = v4 + 1;
      __s[v4] = v19;
      v9 = mblen(0, 0);
      *__error() = v9;
      v10 = mbtowc(0, 0, 0);
      *__error() = v10;
      v11 = mblen(__s, ++v4);
      if ((v11 & 0x80000000) == 0)
      {
        v12 = v11;
        v13 = mblen(0, 0);
        *__error() = v13;
        v14 = mbtowc(0, 0, 0);
        *__error() = v14;
        if (mbtowc(&v18, __s, v8) != v12)
        {
          _nc_ungetch(SP, v19);
          v6 = 0xFFFFFFFFLL;
        }

        v19 = v18;
        if (!a2)
        {
          goto LABEL_18;
        }

LABEL_17:
        *a2 = v19;
        goto LABEL_18;
      }
    }

    if (!v4)
    {
      v6 = 256;
      if (!a2)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v15 = SP;
    v7 = v19;
LABEL_14:
    _nc_ungetch(v15, v7);
  }

  v6 = 0xFFFFFFFFLL;
LABEL_16:
  if (a2)
  {
    goto LABEL_17;
  }

LABEL_18:
  v16 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t wgetn_wstr(WINDOW *a1, __int32 *a2, unsigned int a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v6 = _nc_screen_of(a1);
  if (!a1)
  {
    goto LABEL_62;
  }

  v7 = v6;
  memset(&buf, 0, sizeof(buf));
  v33 = 0;
  _nc_get_tty_mode(&buf);
  v8 = (v7 + 776);
  v30 = *v8;
  nl();
  noecho();
  noraw();
  cbreak();
  v32 = erasechar();
  v31 = killchar();
  v9 = *a1;
  v10 = *(a1 + 1);
  if (is_wintouched(a1) || (*(a1 + 6) & 0x20) != 0)
  {
    wrefresh(a1);
  }

  v11 = wget_wch(a1, &v33);
  if (v11 == -1)
  {
    v24 = 1;
    v13 = a2;
    goto LABEL_57;
  }

  v29 = v8;
  v12 = vmovn_s32(vtstq_s32(v30, v30)).i8[6] & 1;
  v13 = a2;
  while (1)
  {
    v14 = v33;
    if (v33 == 13 || v33 == 10)
    {
      break;
    }

    if (v33 <= 256)
    {
      if (v33 == v32)
      {
        v33 = 263;
LABEL_44:
        if (v13 <= a2)
        {
          goto LABEL_21;
        }

        v19 = a1;
        v20 = v9;
        v21 = v10;
        v22 = a2;
        v23 = v13;
        goto LABEL_20;
      }

      if (v33 == v31)
      {
        v33 = 335;
LABEL_40:
        while (v13 > a2)
        {
          v13 = sub_29948DC1C(a1, v9, v10, a2, v13, v12);
        }

        goto LABEL_21;
      }
    }

    if (v11 == 256)
    {
      if (v33 <= 262)
      {
        if (v33 != 260)
        {
          if (v33 == 258)
          {
            goto LABEL_49;
          }

LABEL_47:
          beep();
          goto LABEL_21;
        }
      }

      else if (v33 != 263)
      {
        if (v33 == 335)
        {
          goto LABEL_40;
        }

        if (v33 == 343)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      goto LABEL_44;
    }

    if ((a3 & 0x80000000) == 0 && a3 <= v13 - a2)
    {
      goto LABEL_47;
    }

    v13[1] = 0;
    *v13 = v14;
    if (!v12)
    {
      goto LABEL_37;
    }

    v16 = *a1;
    v17 = sub_29948DCE0(a1, v13);
    v18 = *(a1 + 6);
    if (v17 != -1)
    {
      if ((v18 & 0x40) != 0)
      {
        if (*(a1 + 27) == 1 && v16 == *(a1 + 2) && *a1 == v16)
        {
          if (v9 >= 2)
          {
            --v9;
          }

          else
          {
            v9 = 0;
          }
        }

        *(a1 + 6) = v18 & 0xFFBF;
      }

      wrefresh(a1);
LABEL_37:
      ++v13;
      goto LABEL_21;
    }

    *(a1 + 6) = v18 & 0xFFBF;
    waddch(a1, 0x20u);
    v19 = a1;
    v20 = v9;
    v21 = v10;
    v22 = a2;
    v23 = (v13 + 1);
LABEL_20:
    v13 = sub_29948DC1C(v19, v20, v21, v22, v23, v12);
LABEL_21:
    v11 = wget_wch(a1, &v33);
    if (v11 == -1)
    {
      v24 = 1;
LABEL_56:
      v8 = v29;
      goto LABEL_57;
    }
  }

  v33 = 343;
LABEL_49:
  if (!v12 || *a1 != *(a1 + 2))
  {
    v24 = 0;
    goto LABEL_56;
  }

  v8 = v29;
  if (*(a1 + 27) == 1)
  {
    wechochar(a1, 0xAu);
  }

  v24 = 0;
LABEL_57:
  *(a1 + 1) = 0;
  *(a1 + 6) &= ~0x40u;
  v25 = *a1;
  if (v25 < *(a1 + 2))
  {
    *a1 = v25 + 1;
  }

  wrefresh(a1);
  v26.i64[0] = 0x100000001;
  v26.i64[1] = 0x100000001;
  *v8 = vbicq_s8(v26, vceqzq_s32(v30));
  _nc_set_tty_mode(&buf);
  result = 0;
  *v13 = 0;
  if (v24)
  {
    if (v13 == a2)
    {
      *v13 = 0xFFFFFFFFLL;
    }

LABEL_62:
    result = 0xFFFFFFFFLL;
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_29948DC1C(WINDOW *a1, int a2, int a3, __int32 *a4, unint64_t a5, int a6)
{
  v6 = a5;
  if (a5 > a4)
  {
    *(a5 - 4) = 0;
    v6 = a5 - 4;
    if (a6)
    {
      v7 = a4;
      v9 = *a1;
      v10 = *(a1 + 1);
      wmove(a1, a2, a3);
      if (*v7)
      {
        do
        {
          sub_29948DCE0(a1, v7);
          v11 = v7[1];
          ++v7;
        }

        while (v11);
      }

      v12 = *a1;
      v13 = *a1;
      v14 = *(a1 + 1);
      while (v9 > v13 || v13 == v9 && *(a1 + 1) < v10)
      {
        waddch(a1, 0x20u);
        v13 = *a1;
      }

      wmove(a1, v12, v14);
    }
  }

  return v6;
}

uint64_t sub_29948DCE0(WINDOW *a1, __int32 *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v5 = 0uLL;
  v7 = 0;
  v6 = 0;
  v8[0] = *a2;
  v8[1] = 0;
  setcchar(&v5, v8, 0, 0, 0);
  result = wadd_wch(a1, &v5);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _nc_wgetch(uint64_t a1, int *a2, int a3)
{
  v59 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  v6 = _nc_screen_of(a1);
  result = 0xFFFFFFFFLL;
  if (!a1 || !v6)
  {
    goto LABEL_153;
  }

  v8 = *(v6 + 728);
  if (*(v6 + 728) < 0)
  {
    if (v8 == 0xFFFF && (*(v6 + 772) & 1) == 0 && !*(v6 + 780) && !*(v6 + 784) && (*(v6 + 178) & 1) == 0)
    {
      if (sub_29948E520(a1, __s) != -1)
      {
        _nc_ungetch(v6, 10);
      }

      v54 = strlen(__s);
      if (v54 >= 1)
      {
        v55 = &__s[v54];
        do
        {
          v56 = *--v55;
          _nc_ungetch(v6, v56);
        }

        while (v55 > __s);
      }

      v57 = sub_29948E4BC(v6);
      v17 = v57 > 256;
      *a2 = v57;
      goto LABEL_32;
    }
  }

  else if (*(v6 + 732) != v8)
  {
    sub_29948E45C(a1);
    v9 = *(v6 + 728);
    if (v9 < 0)
    {
      v10 = -1;
    }

    else
    {
      v10 = *(v6 + 4 * v9 + 180);
    }

    v14 = *(v6 + 732);
    if (v9 <= 135)
    {
      v15 = v9 + 1;
    }

    else
    {
      v15 = 0;
    }

    *(v6 + 728) = v15;
    v16 = *(v6 + 730);
    if (v14 == v9)
    {
      if (v16 == v15)
      {
        v15 = -1;
        *(v6 + 728) = 0xFFFF;
      }

      *(v6 + 732) = v15;
    }

    else if (v16 == v15)
    {
      *(v6 + 728) = 0xFFFF;
    }

    *a2 = v10;
    goto LABEL_31;
  }

  v11 = *(a1 + 32);
  if (v11 != *(v6 + 177))
  {
    _nc_keypad(v6, v11);
  }

  sub_29948E45C(a1);
  if (((*(a1 + 24) & 1) != 0 || (*(a1 + 36) & 0x80000000) == 0 || *(v6 + 784) >= 2) && *(v6 + 728) == -1)
  {
    v12 = *(v6 + 784);
    v13 = v12 < 2 ? *(a1 + 36) : 100 * v12 - 100;
    if (!_nc_timed_wait(v6, 3, v13, 0))
    {
LABEL_149:
      if (!_nc_handle_sigwinch(v6) || (_nc_update_screensize(v6), v48 = *(v6 + 728), v48 < 0) || (v49 = *(v6 + 732), v49 == v48))
      {
        result = 0xFFFFFFFFLL;
        goto LABEL_153;
      }

      v10 = *(v6 + 180 + 4 * v48);
      if (v48 <= 0x87)
      {
        v51 = v48 + 1;
      }

      else
      {
        v51 = 0;
      }

      *(v6 + 728) = v51;
      if (*(v6 + 730) == v51)
      {
        *(v6 + 728) = 0xFFFF;
      }

      *a2 = v10;
      if ((v49 & 0x8000) != 0)
      {
        *(v6 + 732) = v49 + 1;
      }

      else
      {
        v52 = *(v6 + 180 + 4 * v49);
        if (v49 <= 0x87)
        {
          v53 = v49 + 1;
        }

        else
        {
          v53 = 0;
        }

        *(v6 + 732) = v53;
        if (v52 != -1)
        {
          goto LABEL_31;
        }
      }

      sub_29948E4BC(v6);
      v10 = *a2;
LABEL_31:
      v17 = v10 > 256;
LABEL_32:
      result = (v17 << 8);
      goto LABEL_153;
    }
  }

  if (*(a1 + 32) != 1)
  {
    v33 = *(v6 + 728);
    if (v33 == 0xFFFF)
    {
      if (*(v6 + 730) < 0)
      {
        LOWORD(v33) = -1;
        goto LABEL_123;
      }

      __s[0] = 0;
      v34 = read(*v6, __s, 1uLL);
      v35 = __s[0];
      if ((v34 + 1) < 2)
      {
        v35 = -1;
      }

      v36 = *(v6 + 730);
      *(v6 + 4 * v36 + 180) = v35;
      *(v6 + 734) = 0;
      v33 = *(v6 + 728);
      if (v33 == 0xFFFF)
      {
        *(v6 + 732) = v36;
        *(v6 + 728) = v36;
        LOWORD(v33) = v36;
      }

      if (v36 <= 135)
      {
        v37 = v36 + 1;
      }

      else
      {
        v37 = 0;
      }

      if (v37 == v33)
      {
        v37 = -1;
      }

      *(v6 + 730) = v37;
      if ((v33 & 0x8000) != 0)
      {
LABEL_123:
        v43 = *(v6 + 732);
        v40 = v33 + 1;
        *(v6 + 728) = v33 + 1;
        v42 = *(v6 + 730) == (v33 + 1);
        v24 = -1;
        if (v43 == v33)
        {
          v38 = (v6 + 732);
          if (*(v6 + 730) != (v33 + 1))
          {
            goto LABEL_121;
          }

          goto LABEL_120;
        }

        goto LABEL_126;
      }
    }

    else if ((v33 & 0x8000) != 0)
    {
      goto LABEL_123;
    }

    v24 = *(v6 + 4 * v33 + 180);
    v38 = (v6 + 732);
    v39 = *(v6 + 732);
    if (v33 < 0x88u)
    {
      v40 = v33 + 1;
      *(v6 + 728) = v33 + 1;
      v41 = *(v6 + 730) == (v33 + 1);
    }

    else
    {
      v40 = 0;
      *(v6 + 728) = 0;
      v41 = *(v6 + 730) == 0;
    }

    v42 = v41;
    if (v39 == v33)
    {
      if (!v42)
      {
LABEL_121:
        *v38 = v40;
        goto LABEL_128;
      }

LABEL_120:
      v40 = -1;
      *(v6 + 728) = 0xFFFF;
      goto LABEL_121;
    }

LABEL_126:
    if (v42)
    {
      *(v6 + 728) = 0xFFFF;
    }

LABEL_128:
    if (v24 != -1)
    {
      goto LABEL_129;
    }

    goto LABEL_149;
  }

  LODWORD(v18) = 0;
  v19 = v6 + 180;
  while (2)
  {
    v20 = ESCDELAY;
    v21 = *(v6 + 160);
    do
    {
      v22 = *(v6 + 728);
      if (v22 < 0)
      {
        LOWORD(v23) = *(v6 + 730);
      }

      else
      {
        v23 = *(v6 + 732);
        if (v23 != v22)
        {
          v24 = *(v19 + 4 * v22);
          if (v24 > 256)
          {
            goto LABEL_74;
          }
        }

        LODWORD(v25) = *(v6 + 730);
        if (v23 != v25)
        {
          if ((v23 & 0x8000) != 0)
          {
            goto LABEL_61;
          }

          goto LABEL_43;
        }
      }

      if ((v23 & 0x8000) != 0)
      {
        goto LABEL_97;
      }

      __s[0] = 0;
      v27 = read(*v6, __s, 1uLL);
      LODWORD(v22) = __s[0];
      if ((v27 + 1) < 2)
      {
        LODWORD(v22) = -1;
      }

      v25 = *(v6 + 730);
      *(v19 + 4 * v25) = v22;
      *(v6 + 734) = 0;
      LODWORD(v22) = *(v6 + 728);
      if (v22 == 0xFFFF)
      {
        *(v6 + 732) = v25;
        *(v6 + 728) = v25;
        LOWORD(v22) = v25;
      }

      if (v25 <= 135)
      {
        LOWORD(v25) = v25 + 1;
      }

      else
      {
        LOWORD(v25) = 0;
      }

      if (v25 == v22)
      {
        LOWORD(v25) = -1;
      }

      *(v6 + 730) = v25;
      if ((v27 + 1) < 2)
      {
LABEL_97:
        *(v6 + 732) = v22;
        v24 = -1;
        goto LABEL_98;
      }

      v23 = *(v6 + 732);
      if ((v23 & 0x8000) != 0)
      {
LABEL_61:
        v26 = v23 + 1;
        *(v6 + 732) = v26;
        LOBYTE(v24) = -1;
        goto LABEL_62;
      }

LABEL_43:
      v24 = *(v19 + 4 * v23);
      if (v23 <= 0x87)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = 0;
      }

      *(v6 + 732) = v26;
      if (v24 > 256)
      {
        *(v6 + 732) = v22;
        v31 = v25;
        v32 = v25 - 1;
        if (v31 < 1)
        {
          v32 = 136;
        }

        *(v6 + 730) = v32;
        if (v22 == v32)
        {
          bzero((v6 + 180), 0x224uLL);
          *(v6 + 728) = 0xFFFF;
          *(v6 + 732) = 0;
        }

        goto LABEL_80;
      }

LABEL_62:
      if (!v21)
      {
        goto LABEL_71;
      }

      while (*(v21 + 16) != v24)
      {
        v21 = v21[1];
        if (!v21)
        {
          goto LABEL_71;
        }
      }

      v24 = *(v21 + 9);
      if (*(v21 + 9))
      {
        if (v26 == v25)
        {
          bzero((v6 + 180), 0x224uLL);
          *(v6 + 730) = 0;
          v24 = *(v21 + 9);
          v26 = -1;
        }

        *(v6 + 728) = v26;
        goto LABEL_80;
      }

      v21 = *v21;
    }

    while ((v22 & 0x8000) == 0 && v26 != v25 || _nc_timed_wait(v6, 3, v20, 0));
    LOWORD(v22) = *(v6 + 728);
LABEL_71:
    if ((v22 & 0x8000) != 0)
    {
      v24 = -1;
    }

    else
    {
      v24 = *(v19 + 4 * v22);
    }

LABEL_74:
    if (v22 <= 135)
    {
      v28 = v22 + 1;
    }

    else
    {
      v28 = 0;
    }

    *(v6 + 728) = v28;
    if (*(v6 + 730) == v28)
    {
      v28 = -1;
      *(v6 + 728) = 0xFFFF;
    }

    *(v6 + 732) = v28;
LABEL_80:
    if (v24 != 409)
    {
LABEL_98:
      if (!v18)
      {
        goto LABEL_128;
      }

      _nc_ungetch(v6, v24);
      break;
    }

    if (((*(v6 + 1064))(v6) & 1) == 0)
    {
      v29 = *(v6 + 1052);
      if ((v29 & 0x80000000) == 0)
      {
        v18 = (v18 + 1);
        v30 = _nc_timed_wait(v6, 3, v29, 0);
        if (v30)
        {
          if ((v30 & 4) == 0)
          {
            continue;
          }
        }

        if (((*(v6 + 1072))(v6, v18) & 1) == 0)
        {
          continue;
        }
      }
    }

    break;
  }

  v24 = 409;
LABEL_129:
  if (*(v6 + 788) && (*(a1 + 12) & 0x10) == 0)
  {
    v44 = v24 == 263 ? 8 : v24;
    if (v44 <= 0x100)
    {
      wechochar(a1, v44);
    }
  }

  if (v24 == 13)
  {
    if (*(v6 + 776))
    {
      v24 = 10;
    }

    else
    {
      v24 = 13;
    }
  }

  v46 = (v24 & 0x80) != 0 && v24 <= 256 && a3 == 0;
  v47 = v24 & 0x7F;
  if (!v46)
  {
    v47 = v24;
  }

  *a2 = v47;
  result = (v47 > 256) << 8;
LABEL_153:
  v50 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29948E45C(uint64_t a1)
{
  result = is_wintouched(a1);
  if ((result | ((*(a1 + 12) & 0x20) >> 5)) == 1 && (*(a1 + 12) & 0x10) == 0)
  {

    return wrefresh(a1);
  }

  return result;
}

uint64_t sub_29948E4BC(uint64_t a1)
{
  v1 = *(a1 + 728);
  if (v1 < 0)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = *(a1 + 4 * v1 + 180);
  }

  v3 = *(a1 + 732);
  if (v1 <= 135)
  {
    v4 = v1 + 1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 728) = v4;
  v5 = *(a1 + 730);
  if (v3 == v1)
  {
    if (v5 == v4)
    {
      v4 = -1;
      *(a1 + 728) = 0xFFFF;
    }

    *(a1 + 732) = v4;
  }

  else if (v5 == v4)
  {
    *(a1 + 728) = 0xFFFF;
  }

  return v2;
}

uint64_t sub_29948E520(WINDOW *a1, char *a2)
{
  v4 = _nc_screen_of(a1);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  *(v4 + 178) = 1;
  result = wgetnstr(a1, a2, 135);
  *(v5 + 178) = 0;
  return result;
}

int wgetch(WINDOW *a1)
{
  v2 = _nc_screen_of(a1);
  if (v2)
  {
    v3 = *(v2 + 792);
  }

  else
  {
    v3 = 0;
  }

  v5 = 0;
  if (_nc_wgetch(a1, &v5, v3) == -1)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

int wgetnstr(WINDOW *a1, char *a2, int a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = _nc_screen_of(a1);
  if (!a1)
  {
    result = -1;
    goto LABEL_53;
  }

  v6 = v5;
  memset(&buf, 0, sizeof(buf));
  _nc_get_tty_mode(&buf);
  v7 = *(v6 + 788);
  v8 = *(v6 + 776);
  v24 = v6;
  v23 = *(v6 + 784);
  nl();
  noecho();
  noraw();
  cbreak();
  v9 = erasechar();
  v25 = killchar();
  v10 = *a1;
  v11 = *(a1 + 1);
  if (is_wintouched(a1) || (*(a1 + 6) & 0x20) != 0)
  {
    wrefresh(a1);
  }

  v12 = v9;
  v13 = a2;
  while (1)
  {
    v14 = wgetch(a1);
    v15 = v14;
    if (v14 > 12)
    {
      if (v14 == 13 || v14 == 343 || v14 == 258)
      {
        break;
      }

      goto LABEL_13;
    }

    if (v14 == -1)
    {
      goto LABEL_44;
    }

    if (v14 == 10)
    {
      break;
    }

LABEL_13:
    if ((v14 & 0xFFFFFFFE) == 0x19A)
    {
      goto LABEL_44;
    }

    if (v14 == v12 || v14 == 263 || v14 == 260)
    {
      if (v13 > a2)
      {
LABEL_24:
        v13 = sub_29948E918(a1, v10, v11, a2, v13, v7 != 0);
      }
    }

    else if (v14 == v25)
    {
        ;
      }
    }

    else if (v14 <= 256 && (a3 < 0 || v13 - a2 < a3))
    {
      *v13++ = v14;
      if (v7)
      {
        v16 = *a1;
        v17 = waddch(a1, v14);
        v18 = *(a1 + 6);
        if (v17 == -1)
        {
          *(a1 + 6) = v18 & 0xFFBF;
          waddch(a1, 0x20u);
          goto LABEL_24;
        }

        if ((v18 & 0x40) != 0)
        {
          if (*(a1 + 27) == 1 && v16 == *(a1 + 2) && *a1 == v16)
          {
            if (v10 >= 2)
            {
              --v10;
            }

            else
            {
              v10 = 0;
            }
          }

          *(a1 + 6) = v18 & 0xFFBF;
        }

        wrefresh(a1);
      }
    }

    else
    {
      beep();
    }
  }

  if (v7 && *a1 == *(a1 + 2) && *(a1 + 27) == 1)
  {
    wechochar(a1, 0xAu);
  }

LABEL_44:
  *(a1 + 1) = 0;
  *(a1 + 6) &= ~0x40u;
  v19 = *a1;
  if (v19 < *(a1 + 2))
  {
    *a1 = v19 + 1;
  }

  wrefresh(a1);
  v24[98].i32[1] = v7 != 0;
  v24[97] = vbic_s8(0x100000001, vceqz_s32(v8));
  v24[98].i32[0] = v23 != 0;
  _nc_set_tty_mode(&buf);
  *v13 = 0;
  if (v15 == -1)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  if ((v15 - 410) >= 2)
  {
    result = v20;
  }

  else
  {
    result = v15;
  }

LABEL_53:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_29948E918(WINDOW *a1, int a2, int a3, const char *a4, unint64_t a5, int a6)
{
  v6 = a5;
  if (a5 > a4)
  {
    *(a5 - 1) = 0;
    v6 = a5 - 1;
    if (a6)
    {
      v9 = *a1;
      v10 = *(a1 + 1);
      wmove(a1, a2, a3);
      waddnstr(a1, a4, -1);
      v11 = *a1;
      v12 = *a1;
      v13 = *(a1 + 1);
      while (v9 > v12 || v12 == v9 && *(a1 + 1) < v10)
      {
        waddch(a1, 0x20u);
        v12 = *a1;
      }

      wmove(a1, v11, v13);
    }
  }

  return v6;
}

BOOL has_ic(void)
{
  if (!cur_term)
  {
    return 0;
  }

  Strings = cur_term->type.Strings;
  if (!Strings[52] && !Strings[108] && (!Strings[31] || !Strings[42]))
  {
    return 0;
  }

  if (Strings[21])
  {
    return 1;
  }

  return Strings[105] != 0;
}

BOOL has_il(void)
{
  if (!cur_term)
  {
    return 0;
  }

  Strings = cur_term->type.Strings;
  if (!Strings[53] && !Strings[110])
  {
    return 0;
  }

  if (Strings[22])
  {
    return 1;
  }

  return Strings[106] != 0;
}

int whline(WINDOW *a1, chtype a2, int a3)
{
  v35 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = *(a1 + 5) + 16 * *a1;
    v5 = *(a1 + 1);
    v6 = a3 + v5 - 1;
    v7 = *(a1 + 3);
    if (v6 >= v7)
    {
      v8 = *(a1 + 3);
    }

    else
    {
      v8 = a3 + v5 - 1;
    }

    v9 = *(v4 + 8);
    if (v9 == -1 || v9 > v5)
    {
      *(v4 + 8) = v5;
    }

    v11 = *(v4 + 10);
    if (v11 == -1 || v8 > v11)
    {
      *(v4 + 10) = v8;
    }

    v34 = 0uLL;
    if (a2)
    {
      v13 = _nc_abiver(&_nc_abiver);
      if (*v13 <= v15)
      {
        v16 = 0;
        v17 = v14 & 0xFFFFFF00;
      }

      else
      {
        v16 = BYTE1(v14);
        v17 = v14 & 0xFFFF0000 | (BYTE1(v14) << 8);
      }
    }

    else
    {
      v19 = _nc_abiver(&_nc_abiver);
      if (*v19 <= v20)
      {
        v16 = 0;
      }

      else
      {
        v17 = v14 & 0xFFFF0000 | (BYTE1(v14) << 8);
        v16 = BYTE1(v14);
      }
    }

    v28[0] = v17;
    v28[1] = v14;
    v29 = v34;
    v30 = v16;
    _nc_render(a1, v28);
    v21 = v31;
    v34 = v32;
    if (v8 >= v5)
    {
      v22 = v33;
      v23 = v6;
      if (v7 < v6)
      {
        v23 = v7;
      }

      v24 = v23 + 1;
      v25 = 28 * v23;
      do
      {
        v26 = *v4 + v25;
        *v26 = v21;
        *(v26 + 8) = v34;
        *(v26 + 24) = v22;
        --v24;
        v25 -= 28;
      }

      while (v24 > v5);
    }

    _nc_synchook(a1);
    result = 0;
  }

  else
  {
    result = -1;
  }

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t whline_set(__int16 *a1, _OWORD *a2, int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 5) + 16 * *a1;
  v5 = a1[1];
  v6 = a3 + v5 - 1;
  v7 = a1[3];
  if (v6 >= v7)
  {
    v8 = a1[3];
  }

  else
  {
    v8 = a3 + v5 - 1;
  }

  v9 = *(v4 + 8);
  if (v9 == -1 || v9 > v5)
  {
    *(v4 + 8) = v5;
  }

  v11 = *(v4 + 10);
  if (v11 == -1 || v8 > v11)
  {
    *(v4 + 10) = v8;
  }

  v13 = (_nc_wacs + 3164);
  if (a2)
  {
    v13 = a2;
  }

  v21[0] = *v13;
  *(v21 + 12) = *(v13 + 12);
  v20[0] = v21[0];
  *(v20 + 12) = *(v21 + 12);
  _nc_render(a1, v20);
  if (v8 >= v5)
  {
    v14 = v6;
    if (v7 < v6)
    {
      v14 = v7;
    }

    v15 = v14 + 1;
    v16 = 28 * v14;
    do
    {
      v17 = (*v4 + v16);
      v18 = v21[0];
      *(v17 + 12) = *(v21 + 12);
      *v17 = v18;
      --v15;
      v16 -= 28;
    }

    while (v15 > v5);
  }

  _nc_synchook(a1);
  return 0;
}

void immedok(WINDOW *a1, BOOL a2)
{
  if (a1)
  {
    *(a1 + 30) = a2;
  }
}

__n128 win_wch(__int16 *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(*(a1 + 5) + 16 * *a1) + 28 * a1[1];
      result = *v2;
      *(a2 + 12) = *(v2 + 12);
      *a2 = result;
    }
  }

  return result;
}

uint64_t win_wchnstr(__int16 *a1, uint64_t a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v5 = a1[3] - a1[1];
    if (v5 + 1 < a3)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = a3;
    }

    if (a3 < 0)
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = v6;
    }

    if (v7 < 1)
    {
      v14 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *(*(a1 + 5) + 16 * *a1) + 28 * a1[1];
      v11 = 28 * v7;
      do
      {
        if (!v8 || (*(v10 + v8) & 0xFE) == 0)
        {
          v12 = (a2 + 28 * v9);
          v13 = *(v10 + v8);
          ++v9;
          *(v12 + 12) = *(v10 + v8 + 12);
          *v12 = v13;
        }

        v8 += 28;
      }

      while (v11 != v8);
      v14 = v9;
    }

    result = 0;
    v15 = a2 + 28 * v14;
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 24) = 0;
    *(v15 + 16) = 0;
  }

  return result;
}

int winchnstr(WINDOW *a1, chtype *a2, int a3)
{
  if (a2)
  {
    if (a1 && a3)
    {
      v4 = 0;
      v5 = *(a1 + 1);
      v6 = *(a1 + 3);
      v7 = 28 * v5;
      while ((v5 + v4) <= v6)
      {
        a2[v4++] = *(*(*(a1 + 5) + 16 * *a1) + v7) | *(*(*(a1 + 5) + 16 * *a1) + v7 + 4);
        v7 += 28;
        if ((a3 & 0x80000000) == 0 && v4 >= a3)
        {
          break;
        }
      }
    }

    else
    {
      LODWORD(v4) = 0;
    }

    a2[v4] = 0;
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

WINDOW *initscr(void)
{
  if ((PC[29] & 1) == 0)
  {
    PC[29] = 1;
    if (getenv("NCURSES_PRINT_ABI"))
    {
      fprintf(*MEMORY[0x29EDCA610], "ncurses: minimum supported ABI: %d.%d, maximum supported ABI: %d.%d\n", 5, 4, 6, 0);
    }

    v0 = getenv("TERM");
    if (!v0 || (v1 = v0, !*v0))
    {
      v1 = "unknown";
    }

    if (!newterm(v1, *MEMORY[0x29EDCA620], *MEMORY[0x29EDCA618]))
    {
      fprintf(*MEMORY[0x29EDCA610], "Error opening terminal: %s.\n", v1);
      exit(1);
    }

    def_prog_mode();
  }

  return stdscr;
}

uint64_t _nc_insert_wch(WINDOW *a1, uint64_t a2)
{
  v4 = wcwidth(*(a2 + 4));
  if ((v4 & 0x80000000) != 0)
  {
    v15 = *(a2 + 4);

    return winsch(a1, v15);
  }

  else
  {
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    v6 = *(a1 + 1);
    v7 = *(a1 + 3);
    if (v6 <= v7)
    {
      v8 = *(a1 + 5) + 16 * *a1;
      v9 = *v8;
      v10 = (*v8 + 28 * *(a1 + 3));
      v11 = *(v8 + 8);
      if (v11 == -1 || v11 > v6)
      {
        *(v8 + 8) = v6;
      }

      *(v8 + 10) = v7;
      if (v7 <= v6)
      {
        v14 = v10;
      }

      else
      {
        v13 = v9 + 28 * v6;
        do
        {
          v14 = (v10 - 28);
          *v10 = *(v10 - 28 * v5);
          *(v10 + 12) = *(v10 - 28 * v5 + 12);
          v10 = v14;
        }

        while (v14 > v13);
      }

      v21[0] = *a2;
      *(v21 + 12) = *(a2 + 12);
      _nc_render(a1, v21);
      v17 = *v22;
      *(v14 + 12) = *&v22[12];
      *v14 = v17;
      if (v5 >= 2)
      {
        v18 = v14 + 7;
        v19 = v5 - 1;
        v20 = 2;
        do
        {
          *v18 = *v18 & 0xFFFFFF00 | v20;
          v18 += 7;
          ++v20;
          --v19;
        }

        while (v19);
      }

      ++*(a1 + 1);
    }

    return 0;
  }
}

uint64_t wins_wch(WINDOW *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1;
  inserted = _nc_insert_wch(a1, a2);
  *a1 = v3;
  _nc_synchook(a1);
  return inserted;
}

uint64_t wins_nwstr(__int16 *a1, __int32 *a2, int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v5 = a3;
    if (a3 <= 0 && (v5 = wcslen(a2), v5 < 1))
    {
      return 0;
    }

    else
    {
      v7 = _nc_screen_of(a1);
      v8 = *a1;
      v9 = a1[1];
      v10 = *a2;
      if (*a2)
      {
        v11 = 0;
        v12 = a2 + 1;
        while (v5 > v11 >> 2)
        {
          v13 = wcwidth(v10);
          v14 = v13 == 1 || v13 <= -1;
          v15 = *(v12 - 1);
          if (v14 && v15 < 0x80)
          {
            inserted = _nc_insert_ch(v7, a1, v15);
          }

          else
          {
            v19 = *(v12 - 1);
            memset(v20, 0, sizeof(v20));
            v21 = 0;
            setcchar(v20, &v19, 0, 0, 0);
            inserted = _nc_insert_wch(a1, v20);
          }

          v3 = inserted;
          if (inserted)
          {
            goto LABEL_19;
          }

          v17 = *v12++;
          v10 = v17;
          v11 += 4;
          if (!v17)
          {
            break;
          }
        }
      }

      v3 = 0;
LABEL_19:
      a1[1] = v9;
      *a1 = v8;
      _nc_synchook(a1);
    }
  }

  return v3;
}

uint64_t _nc_insert_ch(uint64_t a1, __int16 *a2, int a3)
{
  v6 = a3;
  if (a3 > 9)
  {
    if (a3 != 10 && a3 != 13)
    {
      goto LABEL_16;
    }

LABEL_11:
    *&v36[16] = 0;
    *&v36[12] = 0;
    *&v36[24] = 0;
    *v36 = a3 & 0xFFFFFF00;
    *&v36[4] = a3;
    if (*_nc_abiver(&_nc_abiver) >= 0x60000u)
    {
      *&v36[24] = a3 >> 8;
    }

    *v35 = *v36;
    *&v35[12] = *&v36[12];
    _nc_waddch_nosync(a2, v35);
    return 0;
  }

  if (a3 == 8)
  {
    goto LABEL_11;
  }

  if (a3 != 9)
  {
LABEL_16:
    if (!*(a2 + 44))
    {
      v15 = a3 > 0x7Fu ? __maskrune(a3, 0x40000uLL) : *(MEMORY[0x29EDCA600] + 4 * a3 + 60) & 0x40000;
      if (v15 | a3 & 0x400000 || a1 && *(a1 + 1456) && (v6 > 0x7F ? (v28 = __maskrune(v6, 0x200uLL)) : (v28 = *(MEMORY[0x29EDCA600] + 4 * v6 + 60) & 0x200), !v28))
      {
        if (a2[1] <= a2[3])
        {
          v18 = *(*(a2 + 5) + 16 * *a2);
          memset(&v36[8], 0, 20);
          *v36 = a3 & 0xFFFFFF00;
          *&v36[4] = v6;
          if (*_nc_abiver(&_nc_abiver) >= 0x60000u)
          {
            *&v36[24] = BYTE1(a3);
            *v36 = a3 & 0xFFFF0000 | (BYTE1(a3) << 8);
          }

          v24 = (v21 + v20 * v22);
          v25 = *(v23 + 8);
          if (v25 == -1 || v25 > v19)
          {
            *(v23 + 8) = v19;
          }

          *(v23 + 10) = v20;
          if (v20 <= v19)
          {
            v27 = (v21 + v20 * v22);
          }

          else
          {
            v26 = v21 + v19 * v22;
            do
            {
              v27 = (v24 - 28);
              *v24 = *(v24 - 28);
              *(v24 + 12) = *(v24 - 1);
              v24 = v27;
            }

            while (v27 > v26);
          }

          v34[0] = *v36;
          *(v34 + 12) = *&v36[12];
          _nc_render(a2, v34);
          result = 0;
          v33 = *v35;
          *(v27 + 12) = *&v35[12];
          *v27 = v33;
          ++a2[1];
          return result;
        }

        return 0;
      }
    }

    if (v6 > 0x7F)
    {
      if (__maskrune(v6, 0x200uLL))
      {
LABEL_19:
        v10 = unctrl(v6);
        v11 = *v10;
        if (*v10)
        {
          v12 = a3 & 0xFFFFFF00;
          v13 = (v10 + 1);
          do
          {
            result = _nc_insert_ch(a1, a2, v12 | v11);
            if (result)
            {
              break;
            }

            v14 = *v13++;
            v11 = v14;
          }

          while (v14);
          return result;
        }

        return 0;
      }
    }

    else if ((*(MEMORY[0x29EDCA600] + 4 * v6 + 60) & 0x200) != 0)
    {
      goto LABEL_19;
    }

    memset(&v36[8], 0, 20);
    v16 = a3 & 0xFFFFFF00;
    *v36 = a3 & 0xFFFFFF00;
    *&v36[4] = v6;
    if (*_nc_abiver(&_nc_abiver) >= 0x60000u)
    {
      *&v36[24] = BYTE1(a3);
      *v36 = a3 & 0xFFFF0000 | (BYTE1(a3) << 8);
    }

    *v35 = *v36;
    *&v35[12] = *&v36[12];
    _nc_render(a2, v35);
    v17 = _nc_build_wch(a2, v36);
    if (v17 >= 1)
    {
      return _nc_insert_wch(a2, v36);
    }

    if (v17 == -1)
    {
      v29 = unctrl(v6);
      if (strlen(v29) < 2)
      {
        return 0xFFFFFFFFLL;
      }

      v30 = *v29;
      if (*v29)
      {
        v31 = (v29 + 1);
        do
        {
          result = _nc_insert_ch(a1, a2, v16 | v30);
          if (result)
          {
            break;
          }

          v32 = *v31++;
          v30 = v32;
        }

        while (v32);
        return result;
      }
    }

    return 0;
  }

  v7 = TABSIZE - a2[1] % TABSIZE;
  if (v7 < 1)
  {
    return 0;
  }

  v8 = v7 + 1;
  while (1)
  {
    result = _nc_insert_ch(a1, a2, 32);
    if (result)
    {
      break;
    }

    if (--v8 < 2)
    {
      return 0;
    }
  }

  return result;
}

int winsch(WINDOW *a1, chtype a2)
{
  if (!a1)
  {
    return -1;
  }

  v4 = *a1;
  v5 = _nc_screen_of(a1);
  inserted = _nc_insert_ch(v5, a1, a2);
  *a1 = v4;
  _nc_synchook(a1);
  return inserted;
}

int winsdelln(WINDOW *a1, int a2)
{
  if (!a1)
  {
    return -1;
  }

  if (a2)
  {
    v3 = *a1;
    v4 = *(a1 + 2);
    v6[0] = *(a1 + 88);
    *(v6 + 12) = *(a1 + 100);
    _nc_scroll_window(a1, -a2, v3, v4, v6);
    _nc_synchook(a1);
  }

  return 0;
}

int winsnstr(WINDOW *a1, const char *a2, int a3)
{
  result = -1;
  if (a1 && a2)
  {
    v7 = _nc_screen_of(a1);
    v8 = *a1;
    v9 = *(a1 + 1);
    v10 = *a2;
    if (*a2)
    {
      v11 = v7;
      v12 = 0;
      v13 = a2 + 1;
      do
      {
        if (a3 >= 1 && v12 >= a3)
        {
          break;
        }

        _nc_insert_ch(v11, a1, v10);
        v10 = v13[v12++];
      }

      while (v10);
    }

    *(a1 + 1) = v9;
    *a1 = v8;
    _nc_synchook(a1);
    return 0;
  }

  return result;
}

int winnstr(WINDOW *a1, char *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!a1)
  {
    goto LABEL_26;
  }

  v5 = a3;
  if (a3 < 0)
  {
    v5 = *(a1 + 3) - *(a1 + 1) + 1;
  }

  if (v5 < 1)
  {
LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  v6 = 0;
  v7 = *(a1 + 1);
  v8 = 16 * *a1;
  while (1)
  {
    v9 = (*(*(a1 + 5) + v8) + 28 * v7);
    v22 = 0;
    v21 = 0;
    if ((*v9 & 0xFEu) - 2 < 0x1E)
    {
      goto LABEL_23;
    }

    v10 = getcchar(v9, 0, 0, 0, 0);
    if (v10 < 1)
    {
      goto LABEL_23;
    }

    v11 = calloc((v10 + 1), 4uLL);
    if (!v11)
    {
      goto LABEL_23;
    }

    v12 = v11;
    if (!getcchar(v9, v11, &v22, &v21, 0))
    {
      v13 = wcstombs(0, v12, 0);
      if (v13)
      {
        v14 = v13;
        if (v13 != -1 || *__error() != 92)
        {
          break;
        }
      }
    }

LABEL_22:
    free(v12);
LABEL_23:
    if (v7 < *(a1 + 3))
    {
      ++v7;
      if (v6 < v5)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  v15 = v14 + v6 + 10;
  if (v6 + v14 <= v5 && v15 >= 1)
  {
    v17 = calloc(v15, 1uLL);
    if (v17)
    {
      v18 = v17;
      wcstombs(v17, v12, v14);
      for (i = 0; i != v14; ++i)
      {
        a2[v6 + i] = v18[i];
      }

      v6 += i;
      free(v18);
      goto LABEL_22;
    }
  }

  free(v12);
LABEL_27:
  a2[v6] = 0;
  return v6;
}

uint64_t winnwstr(__int16 *a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2)
  {
    result = 0;
    v5 = a1[1];
    v6 = *(*(a1 + 5) + 16 * *a1);
    v7 = v6 + 28 * v5 + 4;
    do
    {
      if (result >= a3 || result == -1)
      {
        break;
      }

      if ((*(v6 + 28 * v5) & 0xFEu) - 2 >= 0x1E)
      {
        v8 = 0;
        while (1)
        {
          v9 = *(v7 + 4 * v8);
          if (!v9)
          {
            result = (result + v8);
            goto LABEL_16;
          }

          if (a3 - result == v8)
          {
            break;
          }

          *(a2 + 4 * result + 4 * v8++) = v9;
          if (v8 == 5)
          {
            result = (result + 5);
            goto LABEL_16;
          }
        }

        if (result)
        {
          result = result;
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }
      }

LABEL_16:
      v7 += 28;
    }

    while (v5++ < a1[3]);
    if (result >= 1)
    {
      *(a2 + 4 * result) = 0;
    }
  }

  return result;
}

uint64_t winwstr(__int16 *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (winnwstr(a1, a2, 5 * (a1[3] - a1[1]) + 5) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

char erasechar(void)
{
  if (cur_term)
  {
    return cur_term->Ottyb.c_cc[3];
  }

  else
  {
    return -1;
  }
}

char killchar(void)
{
  if (cur_term)
  {
    return cur_term->Ottyb.c_cc[5];
  }

  else
  {
    return -1;
  }
}

int flushinp(void)
{
  if (!cur_term)
  {
    return -1;
  }

  tcflush(cur_term->Filedes, 1);
  v0 = SP;
  result = 0;
  if (SP)
  {
    *(SP + 728) = 0xFFFF;
    *(v0 + 732) = 0;
  }

  return result;
}

char *key_name(int a1)
{
  v6[0] = 0;
  v7 = 0;
  v9 = 0;
  v8 = 0;
  v6[1] = a1;
  v1 = wunctrl(v6);
  v2 = byte_2A1462CB8;
  v3 = wcstombs(byte_2A1462CB8, v1, 6uLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (v3 == -1 && *__error() == 92)
  {
    return 0;
  }

  byte_2A1462CB8[v4] = 0;
  return v2;
}

int leaveok(WINDOW *a1, BOOL a2)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 26) = a2;
  return result;
}

char *longname(void)
{
  v0 = ttytype;
  v1 = strlen(ttytype);
  if (v1 >= 1)
  {
    v2 = &ttytype[v1];
    while (*v2 != 124)
    {
      if (--v2 <= ttytype)
      {
        return v0;
      }
    }

    return v2 + 1;
  }

  return v0;
}

int getmouse(MEVENT *a1)
{
  v1 = -1;
  if (!a1 || !SP)
  {
    return v1;
  }

  if (!*(SP + 1048))
  {
    return -1;
  }

  v2 = *(SP + 1336);
  v3 = SP + 1144;
  v4 = SP + 1312;
  if (v2 <= SP + 1144)
  {
    v5 = (SP + 1312);
  }

  else
  {
    v5 = (v2 - 24);
  }

  if (*v5 == -1)
  {
LABEL_13:
    *&a1->y = 0;
    a1->bstate = 0;
    a1->id = -1;
    a1->x = 0;
    return -1;
  }

  v6 = *(SP + 1112);
  while ((v6 & *(v5 + 2)) == 0)
  {
    v7 = v5 > v3;
    *v5 = -1;
    v5 -= 12;
    if (!v7)
    {
      v5 = v4;
    }

    if (*v5 == -1)
    {
      goto LABEL_13;
    }
  }

  v1 = 0;
  v9 = *v5;
  a1->bstate = *(v5 + 2);
  *&a1->id = v9;
  *v5 = -1;
  *(SP + 1336) = v5;
  return v1;
}

int ungetmouse(MEVENT *a1)
{
  if (!a1 || !SP)
  {
    return -1;
  }

  v1 = *(SP + 1336);
  v2 = *&a1->id;
  *(v1 + 16) = a1->bstate;
  *v1 = v2;
  if (v1 >= SP + 1312)
  {
    v3 = SP + 1144;
  }

  else
  {
    v3 = v1 + 24;
  }

  *(SP + 1336) = v3;
  return ungetch(409);
}

mmask_t mousemask(mmask_t a1, mmask_t *a2)
{
  v3 = SP;
  if (!SP)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = *(SP + 1104);
  }

  if (!a1 && *(v3 + 1045) != 1)
  {
    return 0;
  }

  sub_29948FF00(v3);
  if (!*(SP + 1048))
  {
    return 0;
  }

  v4 = a1 & 0xF7DF7DF;
  sub_2994900B4(SP, v4 != 0);
  v5 = 0;
  v6 = SP;
  *(SP + 1104) = v4;
  *(v6 + 1112) = v4;
  v7 = v4;
  do
  {
    v8 = v7 & (16 << v5);
    if ((v7 & (16 << v5)) != 0)
    {
      v9 = (8 << v5);
    }

    else
    {
      v9 = 0;
    }

    v10 = v7 | v9;
    v11 = v10 & (8 << v5);
    if ((v10 & (8 << v5)) != 0)
    {
      v12 = (4 << v5);
    }

    else
    {
      v12 = 0;
    }

    v7 = v10 | v12;
    if (v8 | v11)
    {
      *(v6 + 1112) = v7;
    }

    if ((v7 & (4 << v5)) != 0)
    {
      v7 |= (3 << v5);
      *(v6 + 1112) = v7;
    }

    v5 += 6;
  }

  while (v5 != 24);
  return v4;
}

uint64_t sub_29948FF00(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 1045) & 1) == 0)
    {
      v2 = 0;
      *(a1 + 1045) = 1;
      *(a1 + 1336) = a1 + 1144;
      do
      {
        *(a1 + 1144 + v2) = -1;
        v2 += 24;
      }

      while (v2 != 192);
      v3 = cur_term;
      v4 = *(cur_term->type.Strings + 355);
      if (v4)
      {
        if (strcmp(v4, "\x1B[M") && !strstr(v3->type.term_names, "xterm"))
        {
          goto LABEL_14;
        }
      }

      else if (!strstr(cur_term->type.term_names, "xterm") || _nc_add_to_try((a1 + 160), "\x1B[M", 409))
      {
        goto LABEL_14;
      }

      *(a1 + 1048) = -1;
      *(a1 + 1128) = 0;
      v6 = tigetstr("XM");
      *(a1 + 1136) = v6;
      if ((v6 + 1) >= 2)
      {
        v8 = strstr(v6, "[?");
        if (v8)
        {
          v9 = v8 + 2;
          if (v8[2] - 48 <= 9)
          {
            do
            {
              v10 = 0;
              do
              {
                v11 = v9[v10++];
              }

              while ((v11 - 48) < 0xA);
              v12 = v10 - 1;
              v13 = strncmp(v9, "1006", v10 - 1);
              v9 += v12;
              if (!v13)
              {
                *(a1 + 1128) = 1;
                v11 = *v9;
              }

              if (v11 != 59)
              {
                break;
              }

              do
              {
                v15 = *++v9;
                v14 = v15;
              }

              while (v15 == 59);
            }

            while ((v14 - 48) <= 9);
          }
        }
      }

      else
      {
        tigetnum("XM");
        *(a1 + 1136) = "\x1B[?1000%?%p1%{1}%=%th%el%;";
      }
    }

LABEL_14:
    v5 = *(a1 + 1045);
    return v5 & 1;
  }

  v5 = 0;
  return v5 & 1;
}

void sub_2994900B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!sub_29948FF00(a1))
    {
      return;
    }

    *(a1 + 1120) = 0;
    v3 = *(a1 + 1048);
    if (!v3)
    {
      return;
    }

    if (v3 == -1)
    {
      keyok(409, 1);
      v4 = _nc_tiparm(1, *(a1 + 1136), 1);
      _nc_putp("xterm-mouse", v4);
      *(a1 + 1100) = 1;
    }

    *(a1 + 1056) = sub_299490374;
    *(a1 + 1064) = sub_29949037C;
    *(a1 + 1072) = sub_29949073C;
    *(a1 + 1080) = sub_299490BA8;
    *(a1 + 1088) = sub_299490BC8;
  }

  else
  {
    if (*(a1 + 1045) != 1)
    {
      return;
    }

    if ((sub_29948FF00(a1) & 1) == 0)
    {
      return;
    }

    v5 = *(a1 + 1048);
    if (!v5)
    {
      return;
    }

    if (v5 == -1)
    {
      v6 = _nc_tiparm(1, *(a1 + 1136), 0);
      _nc_putp("xterm-mouse", v6);
      *(a1 + 1100) = 0;
    }
  }

  _nc_flush();
}

BOOL wenclose(const WINDOW *a1, int a2, int a3)
{
  if (a1)
  {
    v3 = a2 - *(a1 + 42);
    v4 = *(a1 + 4);
    LOBYTE(a1) = v3 >= v4 && (v5 = *(a1 + 5), v5 <= a3) && *(a1 + 3) + v5 >= a3 && *(a1 + 2) + v4 >= v3;
  }

  return a1;
}

int mouseinterval(int a1)
{
  if (!SP)
  {
    return 166;
  }

  result = *(SP + 1052);
  if ((a1 & 0x80000000) == 0)
  {
    *(SP + 1052) = a1;
  }

  return result;
}

BOOL _nc_has_mouse(_BOOL8 result)
{
  if (result)
  {
    return *(result + 1048) != 0;
  }

  return result;
}

BOOL wmouse_trafo(const WINDOW *a1, int *a2, int *a3, BOOL a4)
{
  v4 = 0;
  if (a1 && a2 && a3)
  {
    v5 = *a2;
    v6 = *a3;
    if (!a4)
    {
      v11 = *(a1 + 42);
      v12 = *(a1 + 4);
      if (v5 - v11 >= v12)
      {
        v13 = *(a1 + 5);
        v10 = v6 - v13;
        if (v6 >= v13 && *(a1 + 3) + v13 >= v6 && *(a1 + 2) + v12 >= v5 - v11)
        {
          v9 = v5 - (v12 + v11);
          goto LABEL_17;
        }
      }

      return 0;
    }

    v4 = 0;
    v7 = *(a1 + 4);
    v8 = v5 + v7;
    if (v8 >= v7 && (v6 & 0x80000000) == 0)
    {
      if (v6 <= *(a1 + 3) && *(a1 + 2) + v7 >= v8)
      {
        v9 = v8 + *(a1 + 42);
        v10 = v6 + *(a1 + 5);
LABEL_17:
        *a3 = v10;
        *a2 = v9;
        return 1;
      }

      return 0;
    }
  }

  return v4;
}

uint64_t sub_29949037C(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1048) != -1)
  {
    result = 0;
    goto LABEL_64;
  }

  v3 = *(a1 + 1336);
  v4 = *(a1 + 1128);
  if (v4 != 1)
  {
    if (!v4)
    {
      v5 = 0;
      do
      {
        v6 = read(*a1, &v32[v5], 3 - v5);
        v5 += v6;
      }

      while (v6 != -1 && v5 < 3);
      *v3 = 0;
      v8 = v32[0];
      *(v3 + 16) = 0;
      if (sub_299490BE8(a1, v3, v8, (~v8 & 0x60) == 0))
      {
        v9 = *(v3 + 16);
      }

      else
      {
        v13 = *(a1 + 1120);
        if ((v13 & 0x82082) != 0)
        {
          v14 = 0;
          v9 = 266305;
          *(v3 + 16) = 266305;
          do
          {
            if ((v13 & (2 << v14)) == 0)
            {
              v9 &= ~(1 << v14);
              *(v3 + 16) = v9;
            }

            v14 += 6;
          }

          while (v14 != 24);
          *(a1 + 1120) = 0;
        }

        else
        {
          v9 = 0x8000000;
          *(v3 + 16) = 0x8000000;
        }
      }

      if ((v8 & 0x1C) != 0)
      {
        *(v3 + 16) = v9 | (v8 << 20) & 0x1000000 | (((v8 >> 2) & 3) << 25);
      }

      v22 = v32[2] - 33;
      *(v3 + 4) = v32[1] - 33;
      *(v3 + 8) = v22;
      goto LABEL_56;
    }

LABEL_49:
    if (v3 >= SP + 1312)
    {
      v23 = SP + 1144;
    }

    else
    {
      v23 = v3 + 24;
    }

    *(a1 + 1336) = v23;
LABEL_60:
    v26 = *(v3 + 16);
    v27 = (v26 & 0x82082) == 0;
    v28 = (v26 >> 19) & 1;
    if (v27)
    {
      result = 0;
    }

    else
    {
      result = v28;
    }

    goto LABEL_64;
  }

  memset(v30, 0, sizeof(v30));
  v31 = 0u;
  if (read(*a1, v32, 1uLL) == -1)
  {
    LOBYTE(v10) = 0;
    *v3 = 0;
LABEL_15:
    v11 = 2 << (6 * (v10 & 3));
    v12 = *(a1 + 1120);
    if ((v12 & v11) != 0)
    {
      v9 = 1 << (6 * (v10 & 3));
      *(v3 + 16) = v9;
      *(a1 + 1120) = v12 & ~v11;
    }

    else
    {
      LODWORD(v9) = 0x8000000;
      *(v3 + 16) = 0x8000000;
    }

    goto LABEL_55;
  }

  v15 = 0;
  v16 = 0;
  v17 = -1;
  v18 = 1;
  while (1)
  {
    if (v16 >= 77)
    {
      if (LODWORD(v30[0]) != -1)
      {
        goto LABEL_49;
      }

      goto LABEL_53;
    }

    v19 = v32[v15];
    v15 = v16 + 1;
    v20 = v15;
    v32[v15] = 0;
    if (v19 - 48 < 0xA)
    {
      if (v18)
      {
        ++v17;
      }

      v18 = 0;
      *(v30 + v17 + 2) = v19 + 10 * *(v30 + v17 + 2) - 48;
      goto LABEL_29;
    }

    if (v19 == 59)
    {
      if (v18)
      {
        ++v17;
      }

      v18 = 1;
      goto LABEL_29;
    }

    if (v19 - 127 > 0xFFFFFFA0)
    {
      break;
    }

    ++LODWORD(v30[0]);
    v15 = v16;
    v20 = v16;
LABEL_29:
    v21 = read(*a1, &v32[v15], 1uLL);
    v16 = v20;
    if (v21 == -1)
    {
      goto LABEL_47;
    }
  }

  if (v19 < 0x40)
  {
    ++LODWORD(v30[0]);
    goto LABEL_29;
  }

  HIDWORD(v31) = v19;
LABEL_47:
  if ((v20 & 0x80000000) != 0 || LODWORD(v30[0]))
  {
    goto LABEL_49;
  }

LABEL_53:
  v10 = DWORD2(v30[0]);
  v24 = HIDWORD(v31);
  *v3 = 0;
  if (v24 != 77)
  {
    goto LABEL_15;
  }

  sub_299490BE8(a1, v3, v10, (v10 >> 6) & 1);
  v9 = *(v3 + 16);
LABEL_55:
  *(v3 + 4) = vqsub_u32(*(v30 + 12), 0x100000001);
LABEL_56:
  if (v3 >= SP + 1312)
  {
    v25 = SP + 1144;
  }

  else
  {
    v25 = v3 + 24;
  }

  *(a1 + 1336) = v25;
  if ((v9 & 0x8000000) == 0)
  {
    goto LABEL_60;
  }

  result = 1;
LABEL_64:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_29949073C(void *a1, int a2)
{
  v2 = a1[167];
  if (a2 > 7)
  {
    v6 = a1[167];
  }

  else
  {
    v3 = SP + 1144;
    v4 = SP + 1312;
    v5 = a2 - 8;
    v6 = a1[167];
    do
    {
      v7 = v6 >= v4;
      *v6 = -1;
      v6 += 12;
      if (v7)
      {
        v6 = v3;
      }

      v7 = __CFADD__(v5++, 1);
    }

    while (!v7);
  }

  v8 = 0;
  v9 = 0;
  v10 = SP;
  do
  {
    v11 = (v10 + 1144);
    v12 = v10 + 1312;
LABEL_12:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 12;
      v14 = *v13;
      if (v13 >= v12)
      {
        v6 = v11;
      }

      v15 = v6 == v2;
      if (v6 == v2)
      {
        goto LABEL_34;
      }

      if (v14 == 0xFFFF)
      {
        goto LABEL_35;
      }

      if (*v6 == -1)
      {
        break;
      }

      if (*(v13 + 1) != *(v6 + 1))
      {
        break;
      }

      if (*(v13 + 2) != *(v6 + 2))
      {
        break;
      }

      v16 = *(v13 + 2);
      if ((v16 & 0x82082) == 0)
      {
        break;
      }

      v17 = *(v6 + 2);
      if ((v17 & 0x82082) != 0)
      {
        break;
      }

      v18 = 0;
      while (((v16 & (2 << v18)) == 0) != ((v17 & (1 << v18)) != 0))
      {
        v18 += 6;
        if (v18 == 24)
        {
          v19 = 0;
          v20 = a1[138];
          v21 = 1;
LABEL_26:
          v22 = 6 * v21++ - 6;
          do
          {
            v23 = (4 << v22);
            if ((v20 & v23) != 0 && (*(v13 + 2) & (2 << v22)) != 0)
            {
              v19 = 1;
              v17 = v17 & ~(1 << v22) | v23;
              *(v6 + 2) = v17;
              if (v21 != 5)
              {
                goto LABEL_26;
              }

              goto LABEL_42;
            }

            ++v21;
            v22 += 6;
          }

          while (v21 != 6);
          if ((v19 & 1) == 0)
          {
            break;
          }

LABEL_42:
          if (v8)
          {
            v25 = 1;
          }

          else
          {
            v25 = v9 == 0;
          }

          *v13 = -1;
          if (!v25)
          {
            v8 = v13;
          }

          goto LABEL_12;
        }
      }

LABEL_34:
      if (v14 != 0xFFFF)
      {
        goto LABEL_49;
      }

LABEL_35:
      if (v8)
      {
        v24 = 1;
      }

      else
      {
        v24 = v9 == 0;
      }

      if (!v24)
      {
        v8 = v13;
      }

      v13 = v6;
      if (v6 == v2)
      {
        goto LABEL_59;
      }
    }

    v15 = 0;
LABEL_49:
    if (!v9)
    {
      v9 = v13;
      if (v15)
      {
        break;
      }

      goto LABEL_12;
    }

    if (!v8)
    {
      if (v15)
      {
        break;
      }

      goto LABEL_12;
    }

    v26 = *v13;
    *(v8 + 16) = *(v13 + 2);
    *v8 = v26;
    *v13 = -1;
    v10 = SP;
    if (v8 >= SP + 1312)
    {
      v8 = SP + 1144;
    }

    else
    {
      v8 += 24;
    }
  }

  while (!v15);
LABEL_59:
  if (v8)
  {
    v2 = v8;
  }

  v27 = SP + 1144;
  v28 = SP + 1312;
  v29 = 0;
  if (v9)
  {
    if (v9 >= v28)
    {
      v30 = (SP + 1144);
    }

    else
    {
      v30 = v9 + 12;
    }

    v31 = v9;
    do
    {
      v32 = v31;
      v31 = v30;
      while (v30 != v2)
      {
        if (*v30 != -1)
        {
          if ((*(v32 + 2) & 0x104104) != 0)
          {
            v33 = *(v30 + 2);
            if ((v33 & 0x104104) != 0)
            {
              v34 = 0;
              v35 = a1[138];
              v36 = 1;
LABEL_72:
              v37 = 6 * v36++ - 6;
              do
              {
                v38 = (8 << v37);
                if ((v35 & v38) != 0)
                {
                  v39 = (4 << v37);
                  if ((*(v32 + 2) & v39) != 0 && (v33 & v39) != 0)
                  {
                    v33 = v33 & ~v39 | v38;
                    *(v31 + 16) = v33;
                    v34 = 1;
                    if (v36 != 5)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_84;
                  }
                }

                ++v36;
                v37 += 6;
              }

              while (v36 != 6);
              if ((v34 & 1) == 0)
              {
                goto LABEL_85;
              }

LABEL_84:
              *v32 = -1;
            }
          }

LABEL_85:
          if ((*(v32 + 4) & 0x208208) != 0)
          {
            v41 = *(v31 + 16);
            if ((v41 & 0x104104) != 0)
            {
              v42 = 0;
              v43 = a1[138];
              v44 = 1;
LABEL_88:
              v45 = 6 * v44++ - 6;
              do
              {
                v46 = (16 << v45);
                if ((v43 & v46) != 0 && (*(v32 + 2) & (8 << v45)) != 0)
                {
                  v47 = (4 << v45);
                  if ((v41 & v47) != 0)
                  {
                    v41 = v41 & ~v47 | v46;
                    *(v31 + 16) = v41;
                    v42 = 1;
                    if (v44 != 5)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_97;
                  }
                }

                ++v44;
                v45 += 6;
              }

              while (v44 != 6);
              if ((v42 & 1) == 0)
              {
                break;
              }

LABEL_97:
              *v32 = -1;
            }
          }

          break;
        }
      }

      if ((a1[139] & *(v32 + 2)) != 0)
      {
        if (*v32 != -1)
        {
          if (v29)
          {
            v48 = *v32;
            *(v29 + 16) = *(v32 + 2);
            *v29 = v48;
            *v32 = -1;
            if (v29 >= SP + 1312)
            {
              v29 = SP + 1144;
            }

            else
            {
              v29 += 24;
            }
          }

          goto LABEL_111;
        }
      }

      else
      {
        *v32 = -1;
      }

      if (v29)
      {
        v49 = v29;
      }

      else
      {
        v49 = v32;
      }

      if (v32 == v9)
      {
        v9 = v31;
      }

      else
      {
        v29 = v49;
      }

LABEL_111:
      v27 = SP + 1144;
      v28 = SP + 1312;
      v30 = (v31 + 24);
      if (v31 >= SP + 1312)
      {
        v30 = (SP + 1144);
      }
    }

    while (v31 != v2);
  }

  if (v29)
  {
    v50 = v29;
  }

  else
  {
    v50 = v2;
  }

  a1[167] = v50;
  if (v50 <= v27)
  {
    v51 = v28;
  }

  else
  {
    v51 = (v50 - 24);
  }

  return *v51 != -1;
}

uint64_t sub_299490BA8(uint64_t result)
{
  if (*(result + 1048) == -1)
  {
    if (*(result + 1104))
    {
      return sub_2994900B4();
    }
  }

  return result;
}

uint64_t sub_299490BC8(uint64_t result)
{
  if (*(result + 1048) == -1)
  {
    if (*(result + 1104))
    {
      return sub_2994900B4();
    }
  }

  return result;
}

uint64_t sub_299490BE8(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if ((a3 & 3u) > 1)
  {
    if ((a3 & 3) != 2)
    {
      return 0;
    }

    v5 = *(a1 + 1120);
    v6 = 0x8000000;
    if ((v5 & 0x2000) == 0)
    {
      v6 = 0x2000;
    }

    *(a2 + 16) = v6;
    v7 = v5 | 0x2000;
    goto LABEL_19;
  }

  if ((a3 & 3) != 0)
  {
    if (a4)
    {
      v4 = 0x8000000;
      goto LABEL_11;
    }

    v11 = *(a1 + 1120);
    v12 = 0x8000000;
    if ((v11 & 0x80) == 0)
    {
      v12 = 128;
    }

    *(a2 + 16) = v12;
    v7 = v11 | 0x80;
LABEL_19:
    *(a1 + 1120) = v7;
    return 1;
  }

  if (!a4)
  {
    v9 = *(a1 + 1120);
    v10 = 0x8000000;
    if ((v9 & 2) == 0)
    {
      v10 = 2;
    }

    *(a2 + 16) = v10;
    v7 = v9 | 2;
    goto LABEL_19;
  }

  v4 = 0x80000;
LABEL_11:
  *(a2 + 16) = v4;
  return 1;
}

int wmove(WINDOW *a1, int a2, int a3)
{
  result = -1;
  if (a1 && (a3 & 0x80000000) == 0 && (a2 & 0x80000000) == 0 && *(a1 + 3) >= a3 && *(a1 + 2) >= a2)
  {
    result = 0;
    *(a1 + 1) = a3;
    *a1 = a2;
    *(a1 + 6) = *(a1 + 6) & 0xFF9F | 0x20;
  }

  return result;
}

uint64_t _nc_msec_cost(char *__s, int a2)
{
  if (__s)
  {
    v2 = __s;
    v3 = a2;
    v4 = SP;
    v5 = byte_2A1462B88;
    v6 = 0.0;
    while (1)
    {
      v7 = *v2;
      if (v7 != 36)
      {
        if (!*v2)
        {
          return v6;
        }

LABEL_19:
        if (v4)
        {
          v6 = v6 + *(v4 + 816);
        }

        goto LABEL_21;
      }

      if (v2[1] != 60 || !strchr(v2, 62))
      {
        goto LABEL_19;
      }

      v2 += 2;
      v8 = 0.0;
      while (1)
      {
        v7 = *v2;
        if (!*v2 || v7 == 62)
        {
          break;
        }

        if ((v7 - 48) > 9)
        {
          if (v7 == 46)
          {
            v10 = *++v2;
            v9 = v10;
            if ((v10 - 48) <= 9)
            {
              v11 = (v9 - 48) / 10.0;
              v8 = v8 + v11;
            }
          }

          else if (v7 == 42)
          {
            v8 = v8 * v3;
          }
        }

        else
        {
          v8 = (*v2 - 48) + (v8 * 10.0);
        }

        ++v2;
      }

      if (v4)
      {
        if ((*(v4 + 812) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if ((v5 & 1) == 0)
      {
LABEL_27:
        v6 = v6 + (v8 * 10.0);
      }

LABEL_21:
      ++v2;
      if (!v7)
      {
        return v6;
      }
    }
  }

  return 1000000;
}

void _nc_mvcur_resume()
{
  v0 = SP;
  if (SP)
  {
    Strings = cur_term->type.Strings;
    v2 = Strings[28];
    if (v2)
    {
      _nc_putp("enter_ca_mode", v2);
      Strings = cur_term->type.Strings;
      v0 = SP;
    }

    v3 = Strings[3];
    if (v3)
    {
      v4 = _nc_tiparm(2, v3, 0, (*(v0 + 128) - 1));
      _nc_putp("change_scroll_region", v4);
      v0 = SP;
    }

    *(v0 + 764) = -1;
    v5 = *(v0 + 760);
    if (v5 != -1)
    {
      *(v0 + 760) = -1;

      curs_set(v5);
    }
  }
}

void _nc_mvcur_init()
{
  v0 = SP;
  v1 = *(SP + 8);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = fileno(v1);
  v3 = isatty(v2);
  v0 = SP;
  if (!v3)
  {
    goto LABEL_6;
  }

  baudrate = cur_term->_baudrate;
  if (baudrate <= 0)
  {
    baudrate = 9600;
  }

  *(SP + 816) = 0x15F90u / baudrate;
  if (baudrate > 0x15F90)
  {
LABEL_6:
    *(v0 + 816) = 1;
  }

  Strings = cur_term->type.Strings;
  *(v0 + 820) = _nc_msec_cost(Strings[2], 0);
  *(v0 + 828) = _nc_msec_cost(Strings[12], 0);
  *(v0 + 832) = _nc_msec_cost(Strings[18], 0);
  *(v0 + 836) = _nc_msec_cost(Strings[14], 0);
  *(v0 + 840) = _nc_msec_cost(Strings[17], 0);
  *(v0 + 844) = _nc_msec_cost(Strings[11], 0);
  *(v0 + 848) = _nc_msec_cost(Strings[19], 0);
  *(v0 + 928) = _nc_msec_cost(Strings[31], 0);
  *(v0 + 932) = _nc_msec_cost(Strings[42], 0);
  *(v0 + 936) = 0;
  v6 = Strings[54];
  if (v6)
  {
    *(v0 + 936) = _nc_msec_cost(v6, 0);
  }

  v7 = Strings[10];
  if (!v7)
  {
    v7 = Strings[15];
  }

  v8 = 1000000;
  *(v0 + 944) = v7;
  v9 = _nc_tiparm(2, v7, 23, 23);
  *(SP + 824) = _nc_msec_cost(v9, 1);
  v10 = _nc_tiparm(1, *(cur_term->type.Strings + 111), 23);
  *(SP + 852) = _nc_msec_cost(v10, 1);
  v11 = _nc_tiparm(1, *(cur_term->type.Strings + 112), 23);
  *(SP + 856) = _nc_msec_cost(v11, 1);
  v12 = _nc_tiparm(1, *(cur_term->type.Strings + 107), 23);
  *(SP + 860) = _nc_msec_cost(v12, 1);
  v13 = _nc_tiparm(1, *(cur_term->type.Strings + 114), 23);
  *(SP + 864) = _nc_msec_cost(v13, 1);
  v14 = _nc_tiparm(1, *(cur_term->type.Strings + 8), 23);
  *(SP + 868) = _nc_msec_cost(v14, 1);
  v15 = _nc_tiparm(1, *(cur_term->type.Strings + 127), 23);
  v16 = _nc_msec_cost(v15, 1);
  v17 = SP;
  *(SP + 872) = v16;
  v18 = cur_term;
  v19 = cur_term->type.Strings;
  v20 = _nc_msec_cost(v19[7], 1);
  v21 = 1000000;
  if (v20 != 1000000)
  {
    v21 = (v20 + v17[204] - 1) / v17[204];
  }

  v17[219] = v21;
  v22 = _nc_msec_cost(v19[6], 1);
  v23 = 1000000;
  if (v22 != 1000000)
  {
    v23 = (v22 + v17[204] - 1) / v17[204];
  }

  v17[220] = v23;
  v24 = _nc_msec_cost(v19[269], 1);
  v25 = 1000000;
  if (v24 != 1000000)
  {
    v25 = (v24 + v17[204] - 1) / v17[204];
  }

  v17[221] = v25;
  v26 = _nc_msec_cost(v19[21], 1);
  v27 = 1000000;
  if (v26 != 1000000)
  {
    v27 = (v26 + v17[204] - 1) / v17[204];
  }

  v17[222] = v27;
  v28 = _nc_msec_cost(v19[52], 1);
  v29 = 1000000;
  if (v28 != 1000000)
  {
    v29 = (v28 + v17[204] - 1) / v17[204];
  }

  v17[223] = v29;
  if (v18->type.Booleans[28])
  {
    v17[220] = 0;
  }

  v30 = _nc_tiparm(1, v19[105], 23);
  v31 = _nc_msec_cost(v30, 1);
  v32 = 1000000;
  if (v31 != 1000000)
  {
    v32 = (v31 + *(SP + 816) - 1) / *(SP + 816);
  }

  *(SP + 896) = v32;
  v33 = _nc_tiparm(1, *(cur_term->type.Strings + 108), 23);
  v34 = _nc_msec_cost(v33, 1);
  v35 = 1000000;
  if (v34 != 1000000)
  {
    v35 = (v34 + *(SP + 816) - 1) / *(SP + 816);
  }

  *(SP + 900) = v35;
  v36 = _nc_tiparm(1, *(cur_term->type.Strings + 37), 23);
  v37 = _nc_msec_cost(v36, 1);
  v38 = 1000000;
  if (v37 != 1000000)
  {
    v38 = (v37 + *(SP + 816) - 1) / *(SP + 816);
  }

  *(SP + 904) = v38;
  v39 = _nc_tiparm(2, *(cur_term->type.Strings + 121), 32, 23);
  v40 = _nc_msec_cost(v39, 1);
  v41 = SP;
  v42 = 1000000;
  if (v40 != 1000000)
  {
    v42 = (v40 + *(SP + 816) - 1) / *(SP + 816);
  }

  *(SP + 908) = v42;
  v43 = _nc_tiparm(2, *(v41 + 944), 23, 23);
  v44 = _nc_msec_cost(v43, 1);
  v45 = 1000000;
  if (v44 != 1000000)
  {
    v45 = (v44 + *(SP + 816) - 1) / *(SP + 816);
  }

  *(SP + 916) = v45;
  v46 = _nc_tiparm(1, *(cur_term->type.Strings + 8), 23);
  v47 = _nc_msec_cost(v46, 1);
  v48 = 1000000;
  if (v47 != 1000000)
  {
    v48 = (v47 + *(SP + 816) - 1) / *(SP + 816);
  }

  *(SP + 912) = v48;
  v49 = _nc_tiparm(1, *(cur_term->type.Strings + 112), 23);
  v50 = _nc_msec_cost(v49, 1);
  v51 = SP;
  if (v50 != 1000000)
  {
    v8 = (v50 + *(SP + 816) - 1) / *(SP + 816);
  }

  *(SP + 920) = v8;
  v52 = v51[229];
  v53 = v51[228];
  if (v53 >= v8)
  {
    v53 = v8;
  }

  if (v52 >= v53)
  {
    v52 = v53;
  }

  v51[231] = v52;
  v54 = cur_term;
  v55 = cur_term->type.Strings;
  v56 = v55[128];
  if (v56)
  {
    v57 = v55[28];
    if (v57)
    {
      if (strstr(v57, v56))
      {
        v55[128] = 0;
        *(v54->type.Strings + 126) = 0;
      }
    }
  }

  _nc_mvcur_resume();
}

uint64_t _nc_mvcur_wrap()
{
  result = sub_2994915AC(-1, -1, *(SP + 128) - 1, 0, _nc_outch, 1);
  if (SP)
  {
    v1 = *(SP + 760);
    if (v1 != -1)
    {
      curs_set(1);
      *(SP + 760) = v1;
    }

    v2 = *(cur_term->type.Strings + 40);
    if (v2)
    {
      _nc_putp("exit_ca_mode", v2);
    }

    return _nc_outch(13);
  }

  return result;
}

uint64_t sub_2994915AC(int a1, int a2, int a3, int a4, int (__cdecl *a5)(int), int a6)
{
  v68 = *MEMORY[0x29EDCA608];
  v6 = SP;
  if (!SP)
  {
    v11 = 0xFFFFFFFFLL;
    goto LABEL_109;
  }

  v9 = a2;
  v10 = a1;
  if (a1 == a3 && a2 == a4)
  {
    v11 = 0;
    goto LABEL_109;
  }

  v12 = *(SP + 130);
  if (v12 <= a4)
  {
    v13 = a4 / v12 + a3;
  }

  else
  {
    v13 = a3;
  }

  if (v12 <= a4)
  {
    v14 = (a4 % v12);
  }

  else
  {
    v14 = a4;
  }

  v15 = *(SP + 744);
  v16 = *v15;
  v65 = v15[6];
  if ((*v15 & 0x400000) != 0 || v16 && !cur_term->type.Booleans[14])
  {
    vid_puts(0, 0, 0, a5);
    v6 = SP;
    v12 = *(SP + 130);
  }

  if (v12 <= v9)
  {
    if (*(v6 + 776))
    {
      v17 = (v9 + 1) / v12;
      v10 += v17;
      v18 = *(v6 + 128);
      if (v10 >= v18)
      {
        v19 = v10 + ~v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v17 - v19;
      if (v17 - v19 >= 1)
      {
        v21 = *(cur_term->type.Strings + 2);
        if (v21)
        {
          _nc_putp("carriage_return", v21);
        }

        else
        {
          (a5)(13);
        }

        v22 = v20 + 1;
        do
        {
          v23 = *(cur_term->type.Strings + 103);
          if (v23)
          {
            _nc_putp("newline", v23);
          }

          else
          {
            (a5)(10);
          }

          --v22;
        }

        while (v22 > 1);
        v9 = 0;
      }
    }

    else
    {
      v9 = -1;
      v10 = -1;
    }
  }

  v24 = *(SP + 128);
  if (v10 >= v24)
  {
    v25 = v24 - 1;
  }

  else
  {
    v25 = v10;
  }

  if (v13 >= v24)
  {
    v26 = (v24 - 1);
  }

  else
  {
    v26 = v13;
  }

  memset(v66, 0, sizeof(v66));
  v27 = _nc_str_init(v66, v67, 512);
  v28 = _nc_tiparm(2, *(SP + 944), v26, v14);
  v29 = 1000000;
  if (!_nc_safe_strcpy(v27, v28))
  {
    goto LABEL_49;
  }

  v29 = *(SP + 824);
  if (v9 != -1 && v25 != -1)
  {
    if (v14 < 8 || *(SP + 130) - 8 <= v14)
    {
      goto LABEL_49;
    }

    v30 = v26 - v25;
    if (v26 - v25 < 0)
    {
      v30 = v25 - v26;
    }

    v31 = v14 - v9;
    if (v14 - v9 < 0)
    {
      v31 = v9 - v14;
    }

    if ((v30 + v31) <= 7)
    {
LABEL_49:
      if (v9 == -1 || v25 == -1)
      {
        v34 = 0;
        if (v25 == -1)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v32 = _nc_str_null(v66, 512);
        v33 = sub_299491CCC(v32, v25, v9, v26, v14, a6);
        v34 = v33 != 1000000 && v33 < v29;
        if (v33 != 1000000 && v33 < v29)
        {
          v29 = v33;
        }
      }

      if (*(cur_term->type.Strings + 2))
      {
        v35 = _nc_str_null(v66, 512);
        v36 = sub_299491CCC(v35, v25, 0, v26, v14, a6);
        if (v36 != 1000000 && *(SP + 820) + v36 < v29)
        {
          v34 = 2;
          v29 = *(SP + 820) + v36;
        }
      }

LABEL_58:
      if (*(cur_term->type.Strings + 12))
      {
        v37 = _nc_str_null(v66, 512);
        v38 = sub_299491CCC(v37, 0, 0, v26, v14, a6);
        if (v38 != 1000000 && *(SP + 828) + v38 < v29)
        {
          v34 = 3;
          v29 = *(SP + 828) + v38;
        }
      }

      v64 = a6;
      if (*(cur_term->type.Strings + 18))
      {
        v39 = _nc_str_null(v66, 512);
        v40 = sub_299491CCC(v39, *(SP + 128) - 1, 0, v26, v14, a6);
        v41 = v14;
        if (v40 != 1000000 && *(SP + 832) + v40 < v29)
        {
          v34 = 4;
          v29 = *(SP + 832) + v40;
        }
      }

      else
      {
        v41 = v14;
      }

      v42 = v16;
      if (v9 < 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = *(SP + 820);
      }

      Booleans = cur_term->type.Booleans;
      if (*Booleans)
      {
        v45 = Booleans[4];
        v63 = v25 - 1;
        if (v25 >= 1 && v45 == 0)
        {
          if (*(cur_term->type.Strings + 14))
          {
            v47 = _nc_str_null(v66, 512);
            v48 = sub_299491CCC(v47, v63, *(SP + 130) - 1, v26, v41, v64);
            if (v48 != 1000000)
            {
              v49 = v48 + v43 + *(SP + 836);
              if (v49 < v29)
              {
                _nc_str_init(v66, v67, 512);
                if (v9 > 0)
                {
                  _nc_safe_strcat(v66, cur_term->type.Strings[2]);
                }

                _nc_safe_strcat(v66, cur_term->type.Strings[14]);
                sub_299491CCC(v66, v63, *(SP + 130) - 1, v26, v41, v64);
                v29 = v49;
                goto LABEL_87;
              }
            }
          }
        }
      }

      if (!v34)
      {
LABEL_87:
        v16 = v42;
        LODWORD(v14) = v41;
        goto LABEL_94;
      }

      _nc_str_init(v66, v67, 512);
      v16 = v42;
      if (v34 > 2)
      {
        v14 = v41;
        if (v34 == 3)
        {
          _nc_safe_strcpy(v66, cur_term->type.Strings[12]);
          v50 = 0;
        }

        else
        {
          _nc_safe_strcpy(v66, cur_term->type.Strings[18]);
          v50 = *(SP + 128) - 1;
        }
      }

      else
      {
        v14 = v41;
        if (v34 == 1)
        {
          v50 = v25;
          v51 = v9;
LABEL_93:
          sub_299491CCC(v66, v50, v51, v26, v14, v64);
          goto LABEL_94;
        }

        _nc_safe_strcpy(v66, cur_term->type.Strings[2]);
        v50 = v25;
      }

      v51 = 0;
      goto LABEL_93;
    }
  }

LABEL_94:
  if (v29 == 1000000)
  {
    v52 = SP;
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    tputs(v67, 1, a5);
    v11 = 0;
    v52 = SP;
    *(SP + 764) = v26;
    *(v52 + 768) = v14;
  }

  v53 = **(v52 + 744);
  v54 = _nc_abiver(&_nc_abiver);
  if (v16 != v57)
  {
    goto LABEL_104;
  }

  if (*v54 > v55)
  {
    v58 = v65;
    if (!v65)
    {
      v58 = BYTE1(v16);
    }

    v59 = *(v56 + 24);
    if (!v59)
    {
      v59 = BYTE1(v16);
    }

    if (v58 != v59)
    {
LABEL_104:
      if (*v54 <= v55)
      {
        v60 = BYTE1(v16);
      }

      else
      {
        v60 = BYTE1(v16);
        if (v65)
        {
          v60 = v65;
        }
      }

      vid_puts(v16, v60, 0, a5);
    }
  }

LABEL_109:
  v61 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_299491CCC(__int128 *a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v90 = *MEMORY[0x29EDCA608];
  v87 = 0u;
  v88 = 0u;
  *&v12 = _nc_str_copy(&v87, a1).n128_u64[0];
  if (a4 == a2)
  {
    v13 = 0;
    goto LABEL_33;
  }

  v83 = a6;
  v14 = 1000000;
  v15 = *(cur_term->type.Strings + 127);
  v13 = 1000000;
  if (v15)
  {
    v16 = _nc_tiparm(1, v15, v12, a4);
    if (_nc_safe_strcat(a1, v16))
    {
      v13 = *(SP + 872);
    }
  }

  Strings = cur_term->type.Strings;
  v18 = (a4 - a2);
  if (a4 <= a2)
  {
    v28 = (a2 - a4);
    if (Strings[114])
    {
      if (*(SP + 864) < v13)
      {
        *&v29 = _nc_str_copy(a1, &v87).n128_u64[0];
        v31 = v30;
        v32 = _nc_tiparm(1, *(cur_term->type.Strings + 114), v29, v28);
        if (_nc_safe_strcat(v31, v32))
        {
          v13 = *(SP + 864);
        }
      }
    }

    if (*(cur_term->type.Strings + 19) && *(SP + 848) * v28 < v13)
    {
      _nc_str_copy(a1, &v87);
      v34 = v33;
      v35 = *(cur_term->type.Strings + 19);
      if (strlen(v35) * v28 >= *(v33 + 16))
      {
        goto LABEL_102;
      }

      if (v28 >= 1)
      {
        v13 = *(SP + 848) * v28;
        v36 = v28 + 1;
        while (_nc_safe_strcat(v34, v35))
        {
          if (--v36 <= 1)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_102;
      }

      goto LABEL_86;
    }
  }

  else
  {
    if (Strings[107])
    {
      if (*(SP + 860) < v13)
      {
        *&v19 = _nc_str_copy(a1, &v87).n128_u64[0];
        v21 = v20;
        v22 = _nc_tiparm(1, *(cur_term->type.Strings + 107), v19, v18);
        if (_nc_safe_strcat(v21, v22))
        {
          v13 = *(SP + 860);
        }
      }
    }

    v23 = *(cur_term->type.Strings + 11);
    if (v23 && (*v23 != 10 || *(SP + 776)) && *(SP + 844) * v18 < v13)
    {
      _nc_str_copy(a1, &v87);
      v25 = v24;
      v26 = *(cur_term->type.Strings + 11);
      if (strlen(v26) * v18 >= *(v24 + 16))
      {
        goto LABEL_102;
      }

      if (v18 >= 1)
      {
        v13 = *(SP + 844) * v18;
        v27 = v18 + 1;
        while (_nc_safe_strcat(v25, v26))
        {
          if (--v27 <= 1)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_102;
      }

LABEL_86:
      v13 = 0;
      a6 = v83;
      goto LABEL_33;
    }
  }

LABEL_32:
  a6 = v83;
  if (v13 == 1000000)
  {
    goto LABEL_102;
  }

LABEL_33:
  v37 = a1[1];
  v87 = *a1;
  v88 = v37;
  if (a5 == a3)
  {
    v38 = 0;
LABEL_101:
    v14 = (v38 + v13);
    goto LABEL_102;
  }

  v14 = 1000000;
  v85 = 0u;
  v86 = 0u;
  v38 = 1000000;
  if (*(cur_term->type.Strings + 8))
  {
    *&v39 = _nc_str_copy(a1, &v87).n128_u64[0];
    v41 = v40;
    v42 = _nc_tiparm(1, *(cur_term->type.Strings + 8), v39, a5);
    v43 = _nc_safe_strcat(v41, v42);
    v38 = 1000000;
    if (v43)
    {
      v38 = *(SP + 868);
    }
  }

  v44 = cur_term->type.Strings;
  v84 = (a5 - a3);
  if (a5 <= a3)
  {
    v67 = (a3 - a5);
    if (v44[111])
    {
      if (*(SP + 852) < v38)
      {
        *&v68 = _nc_str_copy(a1, &v87).n128_u64[0];
        v70 = v69;
        v71 = _nc_tiparm(1, *(cur_term->type.Strings + 111), v68, v67);
        if (_nc_safe_strcat(v70, v71))
        {
          v38 = *(SP + 852);
        }
      }
    }

    if (*(cur_term->type.Strings + 14))
    {
      _nc_str_init(&v85, __s, 512);
      v72 = *(cur_term->type.Strings + 14);
      v73 = 1000000;
      if (strlen(v72) * v67 < v86)
      {
        if (v67 < 1)
        {
          v73 = 0;
        }

        else
        {
          v73 = *(SP + 836) * v67;
          v74 = v67 + 1;
          while (_nc_safe_strcat(&v85, v72))
          {
            if (--v74 <= 1)
            {
              goto LABEL_90;
            }
          }

          v73 = 1000000;
        }
      }

LABEL_90:
      if (v73 < v38)
      {
        _nc_str_copy(a1, &v87);
        if (_nc_safe_strcat(v75, __s))
        {
          v38 = v73;
        }
      }
    }
  }

  else
  {
    if (v44[112])
    {
      if (*(SP + 856) < v38)
      {
        *&v45 = _nc_str_copy(a1, &v87).n128_u64[0];
        v47 = v46;
        v48 = _nc_tiparm(1, *(cur_term->type.Strings + 112), v45, v84);
        if (_nc_safe_strcat(v47, v48))
        {
          v38 = *(SP + 856);
        }
      }
    }

    if (*(cur_term->type.Strings + 17))
    {
      _nc_str_init(&v85, __s, 512);
      v49 = v86;
      if (a6)
      {
        v50 = v84;
        if (v84 >= 1 && v84 < v86)
        {
          v51 = _nc_abiver(&_nc_abiver);
          v52 = 28 * a3;
          v54 = 16 * v53;
          do
          {
            v55 = (*(*(*(SP + 144) + 40) + v54) + v52);
            v56 = *v55;
            v57 = *(SP + 744);
            if (*v55 != *v57)
            {
              goto LABEL_67;
            }

            v58 = v55[1];
            v59 = v55[2];
            if (*v51 >= 0x60000u)
            {
              v60 = v55[6];
              if (!v60)
              {
                v60 = BYTE1(v56);
              }

              v61 = v57[6];
              if (!v61)
              {
                v61 = BYTE1(v56);
              }

              if (v60 != v61)
              {
LABEL_67:
                v49 = v86;
                goto LABEL_68;
              }
            }

            if (*(SP + 1456) | v56 & 0x400000)
            {
              v62 = 0;
            }

            else
            {
              v62 = v56 >= 2u;
            }

            if (v62)
            {
              if (v56 < 0x20u || v59 != 0)
              {
                goto LABEL_67;
              }
            }

            else if (v59)
            {
              goto LABEL_67;
            }

            if (!_nc_is_charable(v58))
            {
              goto LABEL_67;
            }

            v52 += 28;
            --v50;
          }

          while (v50);
          v76 = 28 * a3 + 4;
          v77 = v84;
          do
          {
            v78 = *(*(*(*(SP + 144) + 40) + v54) + v76);
            v79 = (*(&v85 + 1))++;
            *v79 = v78;
            v76 += 28;
            --v77;
          }

          while (v77);
          **(&v85 + 1) = 0;
          *&v86 = v86 - v84;
          v65 = *(SP + 816) * v84;
          goto LABEL_97;
        }
      }

      else
      {
LABEL_68:
        LODWORD(v50) = v84;
      }

      v64 = *(cur_term->type.Strings + 17);
      v65 = 1000000;
      if (strlen(v64) * v50 < v49)
      {
        if (v50 < 1)
        {
          v65 = 0;
        }

        else
        {
          v65 = *(SP + 840) * v50;
          v66 = v50 + 1;
          while (_nc_safe_strcat(&v85, v64))
          {
            if (--v66 <= 1)
            {
              goto LABEL_97;
            }
          }

          v65 = 1000000;
        }
      }

LABEL_97:
      if (v65 < v38)
      {
        _nc_str_copy(a1, &v87);
        if (_nc_safe_strcat(v80, __s))
        {
          v38 = v65;
        }
      }
    }
  }

  if (v38 != 1000000)
  {
    goto LABEL_101;
  }

LABEL_102:
  v81 = *MEMORY[0x29EDCA608];
  return v14;
}

int mvwin(WINDOW *a1, int a2, int a3)
{
  if (!a1)
  {
    return -1;
  }

  if ((*(a1 + 6) & 0x10) != 0)
  {
    return -1;
  }

  v3 = *(a1 + 2);
  if (v3 + a2 >= *(SP + 128) || (a3 | a2) < 0 || *(a1 + 3) + a3 >= *(SP + 130))
  {
    return -1;
  }

  *(a1 + 4) = a2;
  *(a1 + 5) = a3;
  return wtouchln(a1, 0, v3 + 1, 1);
}

int napms(int a1)
{
  v2 = 0;
  __rqtp.tv_sec = a1 / 1000;
  __rqtp.tv_nsec = 1000000 * (a1 % 1000);
  while (nanosleep(&__rqtp, &v2) == -1 && *__error() == 4)
  {
    __rqtp = v2;
  }

  return 0;
}

SCREEN *__cdecl newterm(char *a1, FILE *a2, FILE *a3)
{
  v39 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *MEMORY[0x29EDCA620];
  }

  v5 = *MEMORY[0x29EDCA618];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *MEMORY[0x29EDCA618];
  }

  v7 = SP;
  if (SP)
  {
    v8 = *(SP + 48);
  }

  else
  {
    v8 = 0;
  }

  v37 = 0;
  v9 = fileno(v4);
  if (_nc_setupterm(a1, v9, &v37, 0) == -1)
  {
    result = 0;
    goto LABEL_53;
  }

  SP = 0;
  v10 = *&PC[100];
  if (_nc_setupscreen(LINES, COLS, v4, byte_2A14628B1, *&PC[100]) == -1)
  {
    result = 0;
    SP = v7;
    goto LABEL_53;
  }

  if (v7)
  {
    *(v7 + 48) = v8;
  }

  v11 = COLS;
  v12 = *(SP + 48);
  v13 = _nc_getenv_num("ESCDELAY");
  if ((v13 & 0x80000000) == 0)
  {
    set_escdelay(v13);
  }

  if (v10 && v10 <= 2 && cur_term->type.Numbers[8] >= 1)
  {
    _nc_slk_initialize(*(SP + 152), v11);
  }

  *SP = fileno(v6);
  v14 = fileno(v6);
  typeahead(v14);
  v15 = (~*(v12 + 96) & 0x300) == 0 && (*(v12 + 80) & 0x20) == 0;
  v17 = SP;
  *(SP + 792) = v15;
  *(v17 + 736) = 0;
  Strings = cur_term->type.Strings;
  if (Strings[129] && Strings[130])
  {
    goto LABEL_32;
  }

  if (!Strings[113] && !Strings[110] && !Strings[53])
  {
    v19 = 0;
    goto LABEL_33;
  }

  if (Strings[109] || Strings[106])
  {
LABEL_32:
    v19 = 1;
  }

  else
  {
    v19 = Strings[22] != 0;
  }

LABEL_33:
  *(v17 + 952) = v19;
  baudrate();
  v20 = SP;
  *(SP + 160) = 0;
  v21 = cur_term->type.Strings;
  v22 = v21[43];
  if (v22)
  {
    v23 = v21[39];
    if (v23)
    {
      v24 = strcmp(v22, v23) != 0;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v20[1040] = v24;
  v25 = v21[44];
  if (v25)
  {
    v26 = v21[39];
    if (v26)
    {
      v27 = strcmp(v25, v26) != 0;
    }

    else
    {
      v27 = 1;
    }
  }

  else
  {
    v27 = 0;
  }

  v20[1041] = v27;
  v28 = v21[321];
  if (v28)
  {
    v29 = v21[39];
    if (v29)
    {
      v30 = strcmp(v28, v29) != 0;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  v20[1042] = v30;
  _nc_mvcur_init();
  _nc_screen_init();
  v31 = cur_term;
  if (!cbreak())
  {
    v32 = *&v31->Nttyb.c_cflag;
    *&buf.c_iflag = *&v31->Nttyb.c_iflag;
    *&buf.c_cflag = v32;
    v33 = *&v31->Nttyb.c_cc[16];
    *buf.c_cc = *v31->Nttyb.c_cc;
    *&buf.c_cc[16] = v33;
    buf.c_ospeed = v31->Nttyb.c_ospeed;
    buf.c_lflag = DWORD2(v32) & 0xFFFFFFE7;
    *&buf.c_iflag = vandq_s8(*&buf.c_iflag, xmmword_2994B0650);
    if (!_nc_set_tty_mode(&buf))
    {
      v34 = *&buf.c_iflag;
      *&v31->Nttyb.c_cflag = *&buf.c_cflag;
      v35 = *&buf.c_cc[16];
      *v31->Nttyb.c_cc = *buf.c_cc;
      *&v31->Nttyb.c_cc[16] = v35;
      v31->Nttyb.c_ospeed = buf.c_ospeed;
      *&v31->Nttyb.c_iflag = v34;
    }
  }

  _nc_signal_handler(1);
  result = SP;
LABEL_53:
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _nc_freewin(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  v3 = &PC[472];
  do
  {
    v3 = *v3;
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = v2;
    v2 = v3;
  }

  while (v3 + 16 != a1);
  v5 = _nc_screen_chain;
  if (_nc_screen_chain)
  {
    while (1)
    {
      if (v5[17] == a1)
      {
        v5[17] = 0;
        v7 = &curscr;
        goto LABEL_16;
      }

      if (v5[19] == a1)
      {
        v5[19] = 0;
        v7 = &stdscr;
        goto LABEL_16;
      }

      if (v5[18] == a1)
      {
        break;
      }

      v5 = v5[174];
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    v5[18] = 0;
    v7 = &newscr;
LABEL_16:
    if (*v7 == a1)
    {
      *v7 = 0;
    }
  }

LABEL_18:
  v8 = &PC[472];
  if (v4)
  {
    v8 = v4;
  }

  *v8 = *v3;
  if ((*(a1 + 12) & 1) == 0)
  {
    v9 = *(a1 + 4);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = 0;
      v11 = -1;
      do
      {
        v12 = *(*(a1 + 40) + v10);
        if (v12)
        {
          free(v12);
          LOWORD(v9) = *(a1 + 4);
        }

        ++v11;
        v10 += 16;
      }

      while (v11 < v9);
    }
  }

  free(*(a1 + 40));
  free(v3);
  return 0;
}

WINDOW *__cdecl newwin(int a1, int a2, int a3, int a4)
{
  v4 = 0;
  if ((a2 | a1 | a3 | a4) < 0 || !SP)
  {
    return v4;
  }

  v5 = a2;
  v6 = a1;
  if (!a1)
  {
    v6 = *(SP + 132) - a3;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_16:
    v5 = *(SP + 130) - a4;
    goto LABEL_5;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_5:
  v4 = _nc_makenew(v6, v5, a3, a4, 0);
  if (v4 && v6 >= 1)
  {
    v7 = _nc_abiver(&_nc_abiver);
    v8 = 0;
    while (1)
    {
      v9 = calloc(v5, 0x1CuLL);
      *(*(v4 + 5) + 16 * v8) = v9;
      if (!v9)
      {
        break;
      }

      if (v5 >= 1)
      {
        do
        {
          *(v9 + 6) = 0;
          *(v9 + 8) = 0u;
          *v9 = 0x2000000000;
          if (*v7 >= 0x60000u)
          {
            *(v9 + 6) = 0;
            *v9 = 0;
          }

          v9 += 28;
        }

        while (v9 < *(*(v4 + 5) + 16 * v8) + 28 * v5);
      }

      if (++v8 == v6)
      {
        return v4;
      }
    }

    _nc_freewin(v4);
    return 0;
  }

  return v4;
}

char *_nc_makenew(unsigned int a1, int a2, int a3, int a4, __int16 a5)
{
  result = 0;
  v7 = a2 - 1;
  if ((a2 - 1) <= 0x7FFE)
  {
    v8 = a1 - 1;
    if (a1 - 1 <= 0x7FFE)
    {
      if (SP)
      {
        result = calloc(1uLL, 0xD0uLL);
        if (result)
        {
          v13 = result;
          v14 = a1;
          v15 = calloc(a1, 0x10uLL);
          *(v13 + 7) = v15;
          if (v15)
          {
            *(v13 + 4) = 0;
            *(v13 + 10) = v8;
            *(v13 + 11) = v7;
            *(v13 + 12) = a3;
            *(v13 + 13) = a4;
            *(v13 + 50) = *(SP + 134);
            *(v13 + 14) = a5;
            *(v13 + 8) = 0;
            *(v13 + 32) = 0;
            *(v13 + 14) = 0;
            *(v13 + 15) = 0;
            *(v13 + 13) = 0x2000000000;
            if (*_nc_abiver(&_nc_abiver) >= 0x60000u)
            {
              *(v13 + 26) = 0;
            }

            result = v13 + 16;
            v18 = (a5 & 0x10) == 0 && *(v17 + 128) == a1 && *(v17 + 130) == a2;
            v13[41] = v18;
            *(v13 + 42) = 0x1000000;
            v13[48] = 0;
            *(v13 + 13) = -1;
            *(v13 + 23) = 0;
            *(v13 + 68) = -1;
            *(v13 + 32) = 0;
            *(v13 + 33) = v8;
            *(v13 + 10) = 0;
            *(v13 + 11) = -1;
            v19 = (v16 + 10);
            *(v13 + 24) = -1;
            do
            {
              *(v19 - 1) = 0;
              *v19 = v7;
              v19 += 8;
              --v14;
            }

            while (v14);
            if ((a5 & 0x10) == 0 && a4 + a2 == *(v17 + 130))
            {
              v20 = a5 | 2;
              *(v13 + 14) = a5 | 2;
              v21 = *(v17 + 128);
              if (!a4 && !a3 && v21 == a1)
              {
                v20 = a5 | 6;
                *(v13 + 14) = a5 | 6;
                v21 = a1;
              }

              if (a3 + a1 == v21)
              {
                *(v13 + 14) = v20 | 8;
              }
            }

            *v13 = *&PC[472];
            *(v13 + 1) = SP;
            *&PC[472] = v13;
          }

          else
          {
            free(v13);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

WINDOW *__cdecl derwin(WINDOW *a1, int a2, int a3, int a4, int a5)
{
  result = 0;
  if (a1 && ((a3 | a2 | a4 | a5) & 0x80000000) == 0)
  {
    v9 = *(a1 + 2) + 1;
    if (a4 + a2 <= v9 && (v10 = *(a1 + 3) + 1, a5 + a3 <= v10))
    {
      v11 = v9 - a4;
      if (a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = v11;
      }

      if (a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = v10 - a5;
      }

      if ((*(a1 + 6) & 0x10) != 0)
      {
        v14 = 17;
      }

      else
      {
        v14 = 1;
      }

      result = _nc_makenew(v12, v13, *(a1 + 4) + a4, *(a1 + 5) + a5, v14);
      if (result)
      {
        *(result + 13) = a5;
        *(result + 14) = a4;
        *(result + 4) = *(a1 + 4);
        v15 = *(a1 + 88);
        *(result + 100) = *(a1 + 100);
        *(result + 88) = v15;
        if (v12 >= 1)
        {
          v16 = *(result + 5);
          v17 = (*(a1 + 5) + 16 * a4);
          do
          {
            v18 = *v17;
            v17 += 2;
            *v16 = v18 + 28 * a5;
            v16 += 2;
            --v12;
          }

          while (v12);
        }

        *(result + 8) = a1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

WINDOW *__cdecl subwin(WINDOW *result, int a2, int a3, int a4, int a5)
{
  if (result)
  {
    return derwin(result, a2, a3, a4 - *(result + 4), a5 - *(result + 5));
  }

  return result;
}

int nl(void)
{
  if (!SP)
  {
    return -1;
  }

  result = 0;
  *(SP + 776) = 1;
  return result;
}

int nonl(void)
{
  if (!SP)
  {
    return -1;
  }

  result = 0;
  *(SP + 776) = 0;
  return result;
}

int idlok(WINDOW *a1, BOOL a2)
{
  if (!a1)
  {
    return -1;
  }

  v2 = a2;
  v4 = _nc_screen_of(a1);
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  v6 = v2 && (has_il() || *(cur_term->type.Strings + 3) != 0);
  result = 0;
  *(a1 + 28) = v6;
  *(v5 + 1043) = v6;
  return result;
}

void idcok(WINDOW *a1, BOOL a2)
{
  if (a1)
  {
    v2 = a2;
    v4 = _nc_screen_of(a1);
    v5 = v2 && has_ic();
    *(a1 + 29) = v5;
    *(v4 + 1044) = v5;
  }
}