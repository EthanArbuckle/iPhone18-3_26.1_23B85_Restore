int set_menu_fore(MENU *a1, chtype a2)
{
  if (a2)
  {
    v2 = -2;
  }

  else
  {
    v4 = a1;
    if (a1)
    {
      if (a1->fore != a2)
      {
        a1->fore = a2;
        if (a1->status)
        {
          _nc_Draw_Menu(a1);
          _nc_Show_Menu(v4);
        }
      }
    }

    else
    {
      v4 = &_nc_Default_Menu;
    }

    v2 = 0;
    v4->fore = a2;
  }

  *__error() = v2;
  return v2;
}

chtype menu_fore(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->fore;
}

int set_menu_back(MENU *a1, chtype a2)
{
  if (a2)
  {
    v2 = -2;
  }

  else
  {
    v4 = a1;
    if (a1)
    {
      if (a1->back != a2)
      {
        a1->back = a2;
        if (a1->status)
        {
          _nc_Draw_Menu(a1);
          _nc_Show_Menu(v4);
        }
      }
    }

    else
    {
      v4 = &_nc_Default_Menu;
    }

    v2 = 0;
    v4->back = a2;
  }

  *__error() = v2;
  return v2;
}

chtype menu_back(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->back;
}

int set_menu_grey(MENU *a1, chtype a2)
{
  if (a2)
  {
    v2 = -2;
  }

  else
  {
    v4 = a1;
    if (a1)
    {
      if (a1->grey != a2)
      {
        a1->grey = a2;
        if (a1->status)
        {
          _nc_Draw_Menu(a1);
          _nc_Show_Menu(v4);
        }
      }
    }

    else
    {
      v4 = &_nc_Default_Menu;
    }

    v2 = 0;
    v4->grey = a2;
  }

  *__error() = v2;
  return v2;
}

chtype menu_grey(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->grey;
}

uint64_t _nc_menu_cursor_pos(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = 4294967294;
  if (a3 && a1 && a4)
  {
    if (!a2)
    {
      a2 = *(a1 + 96);
    }

    if (*(a1 + 180))
    {
      result = 0;
      *a4 = (*(a1 + 20) + *(a1 + 24)) * *(a2 + 56);
      *a3 = (*(a2 + 54) - *(a1 + 104)) * *(a1 + 26);
    }

    else
    {
      return 4294967289;
    }
  }

  return result;
}

int pos_menu_cursor(const MENU *a1)
{
  if (a1)
  {
    if (a1->status)
    {
      curitem = a1->curitem;
      v3 = (a1->itemlen + a1->spc_cols) * curitem->x;
      v4 = (curitem->y - a1->toprow) * a1->spc_rows;
      userwin = a1->userwin;
      if (!userwin)
      {
        userwin = *(SP + 152);
      }

      if (a1->usersub)
      {
        usersub = a1->usersub;
      }

      else
      {
        usersub = userwin;
      }

      if ((a1->opt & 0x10) != 0)
      {
        pindex = a1->pindex;
        if (pindex >= 1)
        {
          v3 = v3 + pindex + a1->marklen - 1;
        }
      }

      wmove(usersub, v4, v3);
      if (userwin != usersub)
      {
        wcursyncup(usersub);
        wsyncup(usersub);
        if (usersub)
        {
          v8 = *(usersub + 2) + 1;
        }

        else
        {
          v8 = -1;
        }

        wtouchln(usersub, 0, v8, 0);
      }

      v1 = 0;
    }

    else
    {
      v1 = -7;
    }
  }

  else
  {
    v1 = -2;
  }

  *__error() = v1;
  return v1;
}

uint64_t _nc_Match_Next_Character_In_Item_Name(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(*a3 + 52);
  if ((a2 & 0xFFFFFFF7) != 0)
  {
    v7 = *(a1 + 40);
    if (v7 >= *(a1 + 14))
    {
LABEL_31:
      v24 = 4294967287;
      goto LABEL_33;
    }

    v8 = *(a1 + 32);
    *(a1 + 40) = v7 + 1;
    *(v8 + v7) = a2;
    *(*(a1 + 32) + *(a1 + 40)) = 0;
    v26 = a2 & 0xFFFFFFF7;
    if (v6 <= 0)
    {
      v6 = *(a1 + 88) - 1;
    }

    else
    {
      --v6;
    }
  }

  else
  {
    v26 = 0;
  }

  v9 = 0;
  v10 = v6;
  do
  {
    v11 = v9;
    if (a2 == 8)
    {
      if (v10 <= 0)
      {
        v10 = *(a1 + 88) - 1;
      }

      else
      {
        --v10;
      }
    }

    else if (v10 + 1 < *(a1 + 88))
    {
      ++v10;
    }

    else
    {
      v10 = 0;
    }

    v12 = *(a1 + 32);
    v13 = **(*(a1 + 80) + 8 * v10);
    if ((*(a1 + 176) & 8) != 0)
    {
      v15 = *v13;
      if (*v13)
      {
        v16 = v13 + 1;
        while (1)
        {
          v17 = *v12;
          if (!*v12)
          {
            goto LABEL_30;
          }

          v18 = __toupper(v15);
          if (v18 == __toupper(v17))
          {
            ++v12;
            v19 = *v16++;
            v15 = v19;
            if (v19)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    else
    {
      do
      {
        v14 = *v13;
        if (!*v13)
        {
          break;
        }

        ++v13;
      }

      while (*v12 == v14);
      ++v12;
    }

    if (!*v12)
    {
      break;
    }

    v9 = (*v12 != 0) | v11;
  }

  while (v10 != v6);
  if (*v12)
  {
    if (v26)
    {
      v20 = *(a1 + 40);
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      if (v22 < 0 == v21)
      {
        v23 = *(a1 + 32);
        *(a1 + 40) = v22;
        *(v23 + v22) = 0;
      }
    }

    goto LABEL_31;
  }

LABEL_30:
  if (((v10 == *(*a3 + 52)) & v11) != 0)
  {
    goto LABEL_31;
  }

  v24 = 0;
  *a3 = *(*(a1 + 80) + 8 * v10);
LABEL_33:
  *__error() = v24;
  return v24;
}

int menu_driver(MENU *a1, int a2)
{
  if (!a1)
  {
    v4 = __error();
    matched = -2;
    goto LABEL_83;
  }

  status = a1->status;
  if ((status & 2) != 0)
  {
    v4 = __error();
    matched = -5;
    goto LABEL_83;
  }

  if ((status & 1) == 0)
  {
    v4 = __error();
    matched = -7;
    goto LABEL_83;
  }

  curitem = a1->curitem;
  v29 = curitem;
  toprow = a1->toprow;
  if (a2 != 528 && (a2 & 0x21E) != 0x20E)
  {
    a1->pindex = 0;
    *a1->pattern = 0;
  }

  matched = 0;
  switch(a2)
  {
    case 512:
      left = curitem->left;
      if (left)
      {
        goto LABEL_49;
      }

      goto LABEL_71;
    case 513:
      left = curitem->right;
      if (!left)
      {
        goto LABEL_71;
      }

      goto LABEL_49;
    case 514:
      left = curitem->up;
      if (!left)
      {
        goto LABEL_71;
      }

      goto LABEL_49;
    case 515:
      left = curitem->down;
      if (!left)
      {
        goto LABEL_71;
      }

      goto LABEL_49;
    case 516:
      if (!toprow)
      {
        goto LABEL_71;
      }

      left = curitem->up;
      if (!left)
      {
        goto LABEL_71;
      }

      --toprow;
      goto LABEL_49;
    case 517:
      if (a1->arows + toprow >= a1->rows)
      {
        goto LABEL_71;
      }

      left = curitem->down;
      if (!left)
      {
        goto LABEL_71;
      }

      ++toprow;
LABEL_49:
      v29 = left;
      goto LABEL_76;
    case 518:
      arows = a1->arows;
      v17 = a1->rows - (toprow + arows);
      if (v17 >= arows)
      {
        v17 = a1->arows;
      }

      if (v17 < 1)
      {
        goto LABEL_71;
      }

      toprow += v17;
      if (!curitem)
      {
        goto LABEL_60;
      }

      v18 = v17 + 1;
      do
      {
        left = curitem->down;
        if (!left)
        {
LABEL_62:
          matched = 0;
          v29 = curitem;
          goto LABEL_73;
        }

        --v18;
        curitem = curitem->down;
      }

      while (v18 >= 2);
LABEL_61:
      matched = 0;
LABEL_68:
      v29 = left;
      goto LABEL_74;
    case 519:
      v20 = a1->arows;
      if (v20 >= toprow)
      {
        v20 = toprow;
      }

      if (v20 < 1)
      {
        goto LABEL_71;
      }

      toprow -= v20;
      if (curitem)
      {
        v21 = v20 + 1;
        do
        {
          left = curitem->up;
          if (!left)
          {
            goto LABEL_62;
          }

          --v21;
          curitem = curitem->up;
        }

        while (v21 >= 2);
      }

      else
      {
LABEL_60:
        left = 0;
      }

      goto LABEL_61;
    case 520:
      goto LABEL_59;
    case 521:
      goto LABEL_66;
    case 522:
      goto LABEL_28;
    case 523:
      index = curitem->index;
      if (index <= 0)
      {
        goto LABEL_65;
      }

      matched = 0;
      left = a1->items[(index - 1)];
      goto LABEL_68;
    case 524:
      if (a1->opt)
      {
        goto LABEL_71;
      }

      v19 = a1->curitem;
      if (v19->opt)
      {
        v19->value ^= 1u;
        wmove(a1->win, v19->y * a1->spc_rows, (a1->spc_cols + a1->itemlen) * v19->x);
        _nc_Post_Item(a1, a1->curitem);
        _nc_Show_Menu(a1);
LABEL_70:
        matched = 0;
      }

      else
      {
        matched = -10;
      }

      goto LABEL_73;
    case 525:
      goto LABEL_73;
    case 526:
      pindex = a1->pindex;
      v11 = __OFSUB__(pindex, 1);
      v12 = pindex - 1;
      if (v12 < 0 != v11)
      {
        goto LABEL_71;
      }

      pattern = a1->pattern;
      a1->pindex = v12;
      pattern[v12] = 0;
      pos_menu_cursor(a1);
      goto LABEL_70;
    case 527:
      if (*a1->pattern)
      {
        v9 = 0;
        goto LABEL_15;
      }

LABEL_28:
      v15 = curitem->index + 1;
      if (v15 < a1->nitems)
      {
        matched = 0;
        left = a1->items[v15];
        goto LABEL_68;
      }

      if ((a1->opt & 0x20) != 0)
      {
        goto LABEL_71;
      }

LABEL_59:
      matched = 0;
      left = *a1->items;
      goto LABEL_68;
    case 528:
      if (*a1->pattern)
      {
        v9 = 8;
        goto LABEL_15;
      }

      v22 = curitem->index;
      if (v22)
      {
        matched = 0;
        v23 = &a1->items[v22];
LABEL_67:
        left = *(v23 - 1);
        goto LABEL_68;
      }

LABEL_65:
      if ((a1->opt & 0x20) == 0)
      {
LABEL_66:
        matched = 0;
        v23 = &a1->items[a1->nitems];
        goto LABEL_67;
      }

LABEL_71:
      matched = -12;
LABEL_73:
      left = v29;
LABEL_74:
      if (left)
      {
        if (!matched)
        {
LABEL_76:
          y = left->y;
          if (toprow <= y)
          {
            v25 = a1->arows;
            v26 = toprow + v25;
            v27 = y - v25;
            if (v26 <= y)
            {
              y = v27 + 1;
            }

            else
            {
              y = toprow;
            }
          }

          _nc_New_TopRow_and_CurrentItem(a1, y, left);
          matched = 0;
        }
      }

      else
      {
        matched = -5;
      }

      v4 = __error();
LABEL_83:
      *v4 = matched;
      return matched;
    default:
      if ((_DefaultRuneLocale.__runetype[0] & 0x40000) != 0)
      {
        v9 = 0;
LABEL_15:
        matched = _nc_Match_Next_Character_In_Item_Name(a1, v9, &v29);
      }

      else
      {
        matched = -8;
      }

      goto LABEL_73;
  }
}

int set_menu_format(MENU *a1, int frows, int fcols)
{
  if ((fcols | frows) < 0)
  {
    v6 = -2;
  }

  else if (a1)
  {
    if (a1->status)
    {
      v6 = -3;
    }

    else
    {
      if (a1->items)
      {
        if (!frows)
        {
          frows = a1->frows;
        }

        if (!fcols)
        {
          fcols = a1->fcols;
        }

        pattern = a1->pattern;
        if (pattern)
        {
          a1->pindex = 0;
          *pattern = 0;
        }

        a1->frows = frows;
        a1->fcols = fcols;
        nitems = a1->nitems;
        v5 = (nitems - 1) / fcols + 1;
        if ((a1->opt & 4) != 0)
        {
          if (fcols < nitems)
          {
            LOWORD(nitems) = fcols;
          }
        }

        else
        {
          nitems = (nitems - 1) / v5 + 1;
        }

        a1->rows = v5;
        a1->cols = nitems;
        if (v5 >= frows)
        {
          LOWORD(v5) = frows;
        }

        a1->arows = v5;
        a1->toprow = 0;
        a1->curitem = *a1->items;
        a1->status |= 4u;
        _nc_Calculate_Item_Length_and_Width(a1);
LABEL_25:
        v6 = 0;
        goto LABEL_26;
      }

      v6 = -11;
    }
  }

  else
  {
    if (frows >= 1)
    {
      word_C010 = frows;
    }

    if (fcols < 1)
    {
      goto LABEL_25;
    }

    v6 = 0;
    word_C012 = fcols;
  }

LABEL_26:
  *__error() = v6;
  return v6;
}

void menu_format(const MENU *a1, int *a2, int *a3)
{
  v3 = &_nc_Default_Menu;
  if (a2)
  {
    if (!a1)
    {
      a1 = &_nc_Default_Menu;
    }

    *a2 = a1->frows;
  }

  if (a3)
  {
    if (a1)
    {
      v3 = a1;
    }

    *a3 = v3->fcols;
  }
}

uint64_t _nc_Connect_Items(MENU *a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = 1;
      v7 = *a2;
      while (!v7->imenu)
      {
        v7 = a2[v6++];
        if (!v7)
        {
          if (v5)
          {
            v8 = 0;
            opt = a1->opt;
            do
            {
              if (opt)
              {
                v5->value = 0;
              }

              v5->index = v8;
              v5->imenu = a1;
              v5 = a2[++v8];
            }

            while (v5);
            if (v8)
            {
              a1->items = a2;
              a1->nitems = v8;
              v10 = *a2;
              if (*a2)
              {
                v11 = 0;
                v12 = 0;
                v13 = a2 + 1;
                do
                {
                  v14 = _nc_Calculate_Text_Width(v10);
                  if (v14 > v12)
                  {
                    v12 = v14;
                  }

                  v15 = _nc_Calculate_Text_Width(*(v13 - 1) + 16);
                  if (v15 > v11)
                  {
                    v11 = v15;
                  }

                  v16 = *v13++;
                  v10 = v16;
                }

                while (v16);
              }

              else
              {
                LOWORD(v12) = 0;
                LOWORD(v11) = 0;
              }

              a1->namelen = v12;
              a1->desclen = v11;
              v17 = malloc((v12 + 1));
              a1->pattern = v17;
              if (v17)
              {
                a1->pindex = 0;
                *v17 = 0;
                set_menu_format(a1, a1->frows, a1->fcols);
                v18 = *a2;
                result = 1;
                v19 = 104;
                v20 = 96;
                goto LABEL_30;
              }
            }
          }

          break;
        }
      }

      v21 = *a2;
      if (*a2)
      {
        v22 = (a2 + 1);
        do
        {
          v21->index = 0;
          v21->imenu = 0;
          v23 = *v22++;
          v21 = v23;
        }

        while (v23);
      }
    }

    pattern = a1->pattern;
    if (pattern)
    {
      free(pattern);
    }

    v18 = 0;
    result = 0;
    a1->pattern = 0;
    a1->pindex = 0;
    v19 = 88;
    v20 = 80;
LABEL_30:
    *(&a1->height + v20) = v18;
    *(&a1->height + v19) = 0;
  }

  return result;
}

void _nc_Disconnect_Items(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = v2 + 1;
        do
        {
          *(v3 + 52) = 0;
          *(v3 + 32) = 0;
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        free(v6);
      }

      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
    }
  }
}

uint64_t _nc_Calculate_Text_Width(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 8))
  {
    if (*a1)
    {
      v3 = mbstowcs(0, *a1, 0);
      v4 = v3;
      if (v3 >= 1)
      {
        v5 = malloc((4 * v3 + 8) & 0x3FFFFFFFCLL);
        if (v5)
        {
          v6 = v5;
          v7 = *a1;
          v8 = v4 & 0x7FFFFFFF;
          mbstowcs(v5, v7, v8);
          v9 = 0;
          LODWORD(v1) = 0;
          do
          {
            v10 = wcwidth(v6[v9]);
            if (v10 <= 1)
            {
              v11 = 1;
            }

            else
            {
              v11 = v10;
            }

            v1 = (v11 + v1);
            ++v9;
          }

          while (v8 != v9);
          free(v6);
        }
      }
    }
  }

  return v1;
}

uint64_t _nc_Calculate_Item_Length_and_Width(uint64_t a1)
{
  *a1 = (*(a1 + 12) - 1) * *(a1 + 26) + 1;
  result = sub_1564(a1, 1);
  v3 = result + *(a1 + 18);
  if ((*(a1 + 176) & 2) != 0 && *(a1 + 16) >= 1)
  {
    result = sub_1564(a1, 0);
    v3 += result + *(a1 + 22);
  }

  *(a1 + 20) = v3;
  *(a1 + 2) = v3 * *(a1 + 6) + (*(a1 + 6) - 1) * *(a1 + 24);
  return result;
}

uint64_t sub_1564(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      LODWORD(v4) = 0;
      if (a2)
      {
        v5 = 0;
      }

      else
      {
        v5 = 16;
      }

      v6 = v2 + 1;
      do
      {
        v7 = _nc_Calculate_Text_Width(v3 + v5);
        if (v7 <= v4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v7;
        }

        v8 = *v6++;
        v3 = v8;
      }

      while (v8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = 16;
    if (a2)
    {
      v9 = 14;
    }

    return *(a1 + v9);
  }

  return v4;
}

uint64_t _nc_Link_Items(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = *(result + 80);
  if (!v1 || !*v1)
  {
    return result;
  }

  v2 = *(result + 88);
  v3 = *(result + 176);
  *(result + 180) &= ~4u;
  if ((v3 & 4) != 0)
  {
    if (v2 < 1)
    {
      return result;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = *(result + 6);
    v25 = *(result + 6);
    v26 = v24 - 1;
    for (i = v1 - 1; ; ++i)
    {
      v28 = v22 * v24;
      v29 = i;
      if (!v23)
      {
        if ((v3 & 0x20) != 0)
        {
          v31 = 0;
          goto LABEL_49;
        }

        v30 = v28 + v26;
        if (v28 + v26 >= v2)
        {
          v30 = v2 - 1;
        }

        v29 = &v1[v30];
      }

      v31 = *v29;
LABEL_49:
      v32 = i[1];
      *(v32 + 64) = v31;
      if (v23 >= v26 || v21 + 1 >= v2)
      {
        if ((v3 & 0x20) != 0)
        {
          *(v32 + 72) = 0;
          v33 = *(result + 4);
          if (!v22)
          {
            goto LABEL_63;
          }
        }

        else
        {
          *(v32 + 72) = v1[v28];
          v33 = *(result + 4);
          if (!v22)
          {
LABEL_56:
            v34 = v23 + (v33 - 1) * v24;
            if (v34 >= v2)
            {
              v34 = v2 - 1;
            }

            *(v32 + 80) = v1[v34];
            if (v25 + v21 >= v2)
            {
              goto LABEL_67;
            }

            v35 = v21 + v25;
            goto LABEL_70;
          }
        }
      }

      else
      {
        *(v32 + 72) = i[2];
        v33 = *(result + 4);
        if (!v22)
        {
          if ((v3 & 0x20) == 0)
          {
            goto LABEL_56;
          }

LABEL_63:
          v36 = 0;
          goto LABEL_64;
        }
      }

      v36 = v1[v21 - v25];
LABEL_64:
      *(v32 + 80) = v36;
      if (v21 >= v2 - v25)
      {
        if ((v3 & 0x20) != 0)
        {
          v37 = 0;
          goto LABEL_72;
        }

LABEL_67:
        if (v22 + 1 >= v33)
        {
          v35 = v23;
        }

        else
        {
          v35 = v2 - 1;
        }

        goto LABEL_70;
      }

      v35 = v24 + v21;
LABEL_70:
      v37 = v1[v35];
LABEL_72:
      *(v32 + 88) = v37;
      *(v32 + 56) = v23;
      *(v32 + 54) = v22;
      v38 = v23 + 1;
      if (v23 + 1 == v24)
      {
        v23 = 0;
      }

      else
      {
        ++v23;
      }

      if (v38 == v24)
      {
        ++v22;
      }

      if (v2 == ++v21)
      {
        return result;
      }
    }
  }

  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(result + 4);
    v7 = (*(result + 6) - 1) * v6;
    v8 = v6 - 1;
    for (j = v2; j; --j)
    {
      v10 = v5 * v6;
      v11 = v5 * v6 + v4;
      v12 = &v1[v11];
      v13 = *v12;
      if (v5)
      {
        v14 = v11 - v6;
      }

      else
      {
        if ((v3 & 0x20) != 0)
        {
          *(v13 + 64) = 0;
          v16 = v11 + v6;
          if (v11 + v6 < v2)
          {
LABEL_15:
            v17 = v1[v16];
          }

          else
          {
LABEL_20:
            v17 = 0;
          }

          *(v13 + 72) = v17;
          if (v4)
          {
            *(v13 + 80) = *(v12 - 1);
            if (v4 < v8)
            {
              goto LABEL_32;
            }

            if ((v3 & 0x20) != 0)
            {
              goto LABEL_40;
            }

            goto LABEL_34;
          }

          if ((v3 & 0x20) != 0)
          {
            *(v13 + 80) = 0;
            if (v6 < 2)
            {
LABEL_40:
              v20 = 0;
              goto LABEL_35;
            }

LABEL_32:
            v10 = v11 + 1;
            if (v11 + 1 >= v2)
            {
              v10 = v4 + (v5 - 1) * v6 + 1;
            }

            goto LABEL_34;
          }

          goto LABEL_26;
        }

        if (v7 + v4 >= v2)
        {
          v15 = v6;
        }

        else
        {
          v15 = 0;
        }

        v14 = v7 + v4 - v15;
      }

      *(v13 + 64) = v1[v14];
      v16 = v11 + v6;
      if (v11 + v6 < v2)
      {
        goto LABEL_15;
      }

      if ((v3 & 0x20) != 0)
      {
        goto LABEL_20;
      }

      *(v13 + 72) = v1[v4];
      if (v4)
      {
        v18 = *(v12 - 1);
        goto LABEL_29;
      }

LABEL_26:
      v19 = v8 + v10;
      if (v8 + v10 >= v2)
      {
        v19 = v2 - 1;
      }

      v18 = v1[v19];
LABEL_29:
      *(v13 + 80) = v18;
      if (v4 < v8)
      {
        goto LABEL_32;
      }

LABEL_34:
      v20 = v1[v10];
LABEL_35:
      *(v13 + 88) = v20;
      *(v13 + 56) = v5;
      *(v13 + 54) = v4;
      result = (v4 + 1);
      if (result == v6)
      {
        ++v5;
        v4 = 0;
      }

      else
      {
        ++v4;
      }
    }
  }

  return result;
}

const MENU *_nc_Show_Menu(const MENU *result)
{
  if ((result->status & 3) == 1)
  {
    v2 = result;
    mvderwin(result->sub, v2->toprow * v2->spc_rows, 0);
    usersub = v2->usersub;
    if (usersub || (usersub = v2->userwin) != 0 || (usersub = *(SP + 152)) != 0)
    {
      height = *(usersub + 2) + 1;
      width = *(usersub + 3) + 1;
    }

    else
    {
      height = -1;
      width = -1;
    }

    if (height >= v2->height)
    {
      height = v2->height;
    }

    if (width >= v2->width)
    {
      width = v2->width;
    }

    copywin(v2->sub, usersub, 0, 0, 0, 0, height - 1, width - 1, 0);

    return pos_menu_cursor(v2);
  }

  return result;
}

const MENU *_nc_New_TopRow_and_CurrentItem(const MENU *result, int a2, ITEM *a3)
{
  v5 = result;
  status = result->status;
  if ((status & 1) == 0)
  {
    v7 = result->rows - result->frows;
    if (v7 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = result->rows - result->frows;
    }

    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result->toprow = v9;
    result->curitem = a3;
    return result;
  }

  curitem = result->curitem;
  if (curitem != a3)
  {
    itemterm = result->itemterm;
    if (itemterm)
    {
      result->status = status | 2;
      itemterm(result);
      status = *(v5 + 180) & 0xFFFD;
      *(v5 + 180) = status;
    }
  }

  v12 = *(v5 + 104);
  if (v12 != a2)
  {
    v13 = *(v5 + 136);
    if (v13)
    {
      *(v5 + 180) = status | 2;
      v13(v5);
      status = *(v5 + 180) & 0xFFFD;
      *(v5 + 180) = status;
    }
  }

  v14 = *(v5 + 96);
  v15 = *(v5 + 4) - *(v5 + 8);
  if (v15 >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = *(v5 + 4) - *(v5 + 8);
  }

  if (v15 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(v5 + 104) = v17;
  *(v5 + 96) = a3;
  if (v12 == a2)
  {
    if (curitem == a3)
    {

      return pos_menu_cursor(v5);
    }
  }

  else
  {
    v18 = *(v5 + 128);
    if (v18)
    {
      *(v5 + 180) = status | 2;
      v18(v5);
      *(v5 + 180) &= ~2u;
    }

    if (curitem == a3)
    {
      goto LABEL_33;
    }
  }

  if (v14 != *(v5 + 96))
  {
    wmove(*(v5 + 48), *(v14 + 54) * *(v5 + 26), (*(v5 + 24) + *(v5 + 20)) * *(v14 + 56));
    _nc_Post_Item(v5, v14);
    wmove(*(v5 + 48), *(*(v5 + 96) + 54) * *(v5 + 26), (*(v5 + 24) + *(v5 + 20)) * *(*(v5 + 96) + 56));
    _nc_Post_Item(v5, *(v5 + 96));
  }

  v19 = *(v5 + 144);
  if (v19)
  {
    *(v5 + 180) |= 2u;
    v19(v5);
    *(v5 + 180) &= ~2u;
  }

LABEL_33:

  return _nc_Show_Menu(v5);
}

int set_menu_init(MENU *a1, Menu_Hook a2)
{
  v2 = &_nc_Default_Menu;
  if (a1)
  {
    v2 = a1;
  }

  v2->menuinit = a2;
  *__error() = 0;
  return 0;
}

Menu_Hook menu_init(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->menuinit;
}

int set_menu_term(MENU *a1, Menu_Hook a2)
{
  v2 = &_nc_Default_Menu;
  if (a1)
  {
    v2 = a1;
  }

  v2->menuterm = a2;
  *__error() = 0;
  return 0;
}

Menu_Hook menu_term(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->menuterm;
}

int set_item_init(MENU *a1, Menu_Hook a2)
{
  v2 = &_nc_Default_Menu;
  if (a1)
  {
    v2 = a1;
  }

  v2->iteminit = a2;
  *__error() = 0;
  return 0;
}

Menu_Hook item_init(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->iteminit;
}

int set_item_term(MENU *a1, Menu_Hook a2)
{
  v2 = &_nc_Default_Menu;
  if (a1)
  {
    v2 = a1;
  }

  v2->itemterm = a2;
  *__error() = 0;
  return 0;
}

Menu_Hook item_term(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->itemterm;
}

int set_current_item(MENU *menu, ITEM *item)
{
  v2 = -2;
  if (menu && item && item->imenu == menu)
  {
    status = menu->status;
    if ((status & 2) != 0)
    {
      v2 = -5;
    }

    else
    {
      if (menu->curitem != item)
      {
        if ((status & 4) != 0)
        {
          _nc_Link_Items(menu);
        }

        menu->pindex = 0;
        *menu->pattern = 0;
        y = item->y;
        toprow = menu->toprow;
        if (y < toprow)
        {
          menu->toprow = item->y;
          toprow = y;
        }

        arows = menu->arows;
        if (arows + toprow <= y)
        {
          rows = menu->rows;
          v10 = rows - arows;
          if (rows - toprow <= y)
          {
            LOWORD(y) = v10;
          }

          menu->toprow = y;
          toprow = y;
        }

        _nc_New_TopRow_and_CurrentItem(menu, toprow, item);
      }

      v2 = 0;
    }
  }

  *__error() = v2;
  return v2;
}

ITEM *__cdecl current_item(ITEM *result)
{
  if (result)
  {
    if (result->up)
    {
      return result[1].name.str;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int item_index(const ITEM *a1)
{
  if (a1 && a1->imenu)
  {
    return a1->index;
  }

  else
  {
    return -1;
  }
}

const char *__cdecl item_name(const char *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

const char *__cdecl item_description(const char *result)
{
  if (result)
  {
    return *(result + 2);
  }

  return result;
}

ITEM *__cdecl new_item(const char *a1, const char *a2)
{
  if (!a1 || !*a1 || !sub_1EC8(a1))
  {
    v10 = __error();
    v5 = 0;
    v11 = -2;
LABEL_10:
    *v10 = v11;
    return v5;
  }

  v4 = calloc(1uLL, 0x60uLL);
  v5 = v4;
  if (!v4)
  {
    v10 = __error();
    v11 = -1;
    goto LABEL_10;
  }

  v6 = *algn_C0D0;
  v4->name = _nc_Default_Item;
  v4->description = v6;
  v7 = xmmword_C0E0;
  v8 = *&dword_C0F0;
  v9 = unk_C110;
  *&v4->left = xmmword_C100;
  *&v4->up = v9;
  *&v4->imenu = v7;
  *&v4->opt = v8;
  v4->name.length = strlen(a1);
  v5->name.str = a1;
  if (a2 && *a2 && sub_1EC8(a2))
  {
    v5->description.length = strlen(a2);
    v5->description.str = a2;
  }

  else
  {
    v5->description.length = 0;
    v5->description.str = 0;
  }

  return v5;
}

BOOL sub_1EC8(char *a1)
{
  v2 = mbstowcs(0, a1, 0);
  v3 = v2;
  if (v2 >= 1 && (v4 = calloc((v2 + 2), 4uLL)) != 0)
  {
    v5 = v4;
    v6 = v3 & 0x7FFFFFFF;
    mbstowcs(v4, a1, v6);
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v5[v7];
      if (v9 > 0x7F)
      {
        if (!__maskrune(v9, 0x40000uLL))
        {
          break;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v9] & 0x40000) == 0)
      {
        break;
      }

      v8 = ++v7 >= v6;
    }

    while (v6 != v7);
    free(v5);
  }

  else
  {
    return 1;
  }

  return v8;
}

int free_item(ITEM *a1)
{
  if (a1)
  {
    if (a1->imenu)
    {
      v1 = -4;
    }

    else
    {
      free(a1);
      v1 = 0;
    }
  }

  else
  {
    v1 = -2;
  }

  *__error() = v1;
  return v1;
}

int set_menu_mark(MENU *a1, const char *a2)
{
  do
  {
    v3 = a1;
    if (!a2)
    {
      goto LABEL_5;
    }

    v4 = *a2;
    if (!*a2)
    {
      goto LABEL_6;
    }

    if (sub_1EC8(a2))
    {
      v4 = strlen(a2);
    }

    else
    {
LABEL_5:
      v4 = 0;
    }

LABEL_6:
    a1 = &_nc_Default_Menu;
  }

  while (!v3);
  mark = v3->mark;
  status = v3->status;
  if ((status & 1) != 0 && v3->marklen != v4)
  {
    v9 = -2;
  }

  else
  {
    v3->marklen = v4;
    if (!v4)
    {
      v3->mark = 0;
      LOBYTE(v8) = status;
      goto LABEL_14;
    }

    v7 = strdup(a2);
    v3->mark = v7;
    if (v7)
    {
      LOBYTE(v8) = status;
      if (v3 != &_nc_Default_Menu)
      {
        LOBYTE(v8) = status | 8;
        v3->status = status | 8;
      }

LABEL_14:
      if ((status & 8) != 0 && mark)
      {
        free(mark);
        v8 = v3->status;
      }

      if (v8)
      {
        _nc_Draw_Menu(v3);
        _nc_Show_Menu(v3);
      }

      else
      {
        _nc_Calculate_Item_Length_and_Width(v3);
      }

      v9 = 0;
    }

    else
    {
      v3->mark = mark;
      if (mark)
      {
        v10 = strlen(mark);
      }

      else
      {
        v10 = 0;
      }

      v3->marklen = v10;
      v9 = -1;
    }
  }

  *__error() = v9;
  return v9;
}

const char *__cdecl menu_mark(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->mark;
}

int set_item_opts(ITEM *a1, Item_Options a2)
{
  v2 = a2 & 1;
  if (a1)
  {
    if (a1->opt != v2)
    {
      imenu = a1->imenu;
      a1->opt = v2;
      if ((a2 & 1) == 0 && a1->value)
      {
        a1->value = 0;
      }

      if (imenu && (imenu->status & 1) != 0)
      {
        wmove(imenu->win, a1->y * imenu->spc_rows, (imenu->spc_cols + imenu->itemlen) * a1->x);
        _nc_Post_Item(imenu, a1);
        _nc_Show_Menu(imenu);
      }
    }
  }

  else
  {
    dword_C0F0 = a2 & 1;
  }

  *__error() = 0;
  return 0;
}

int item_opts_off(ITEM *a1, Item_Options a2)
{
  if (a2 >= 2)
  {
    v4 = __error();
    result = -2;
    *v4 = -2;
  }

  else
  {
    v2 = &_nc_Default_Item;
    if (a1)
    {
      v2 = a1;
    }

    set_item_opts(a1, v2->opt & ~a2);
    return 0;
  }

  return result;
}

int item_opts_on(ITEM *a1, Item_Options a2)
{
  v2 = &_nc_Default_Item;
  if (a1)
  {
    v2 = a1;
  }

  set_item_opts(a1, v2->opt | a2 & 1);
  return 0;
}

Item_Options item_opts(const ITEM *a1)
{
  v1 = &_nc_Default_Item;
  if (a1)
  {
    v1 = a1;
  }

  return v1->opt & 1;
}

int set_top_row(MENU *a1, int a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  status = a1->status;
  if ((status & 2) != 0)
  {
    v6 = -5;
    goto LABEL_16;
  }

  items = a1->items;
  if (!items)
  {
    v6 = -11;
    goto LABEL_16;
  }

  if ((a2 & 0x80000000) == 0 && a1->rows - a1->arows >= a2)
  {
    if (a1->toprow != a2)
    {
      if ((status & 4) != 0)
      {
        _nc_Link_Items(a1);
        items = a1->items;
      }

      v7 = a2;
      if ((a1->opt & 4) != 0)
      {
        v7 = a1->cols * a2;
      }

      v8 = items[v7];
      a1->pindex = 0;
      *a1->pattern = 0;
      _nc_New_TopRow_and_CurrentItem(a1, a2, v8);
    }

    v6 = 0;
  }

  else
  {
LABEL_6:
    v6 = -2;
  }

LABEL_16:
  *__error() = v6;
  return v6;
}

int top_row(const MENU *a1)
{
  if (a1 && (items = a1->items) != 0 && *items)
  {
    return a1->toprow;
  }

  else
  {
    return -1;
  }
}

int set_item_value(ITEM *a1, BOOL a2)
{
  if (a1)
  {
    if (a1->opt)
    {
      imenu = a1->imenu;
      if (!imenu)
      {
        if (a1->value != a2)
        {
          v4 = 0;
          a1->value = a2;
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      if ((imenu->opt & 1) == 0)
      {
        if (a1->value != a2)
        {
          a1->value = a2;
          if (imenu->status)
          {
            wmove(imenu->win, a1->y * imenu->spc_rows, (imenu->spc_cols + imenu->itemlen) * a1->x);
            _nc_Post_Item(imenu, a1);
            _nc_Show_Menu(imenu);
          }
        }

LABEL_11:
        v4 = 0;
        goto LABEL_13;
      }
    }

    v4 = -12;
  }

  else
  {
    v4 = 0;
    byte_C0FA = a2;
  }

LABEL_13:
  *__error() = v4;
  return v4;
}

BOOL item_value(const ITEM *a1)
{
  v1 = &_nc_Default_Item;
  if (a1)
  {
    v1 = a1;
  }

  return v1->value;
}

BOOL item_visible(const ITEM *a1)
{
  if (!a1)
  {
    return 0;
  }

  imenu = a1->imenu;
  if (!imenu || (imenu->status & 1) == 0)
  {
    return 0;
  }

  toprow = imenu->toprow;
  v3 = imenu->arows + toprow;
  y = a1->y;
  if (y >= toprow)
  {
    v7 = __OFSUB__(v3, y);
    v5 = v3 == y;
    v6 = v3 - y < 0;
  }

  else
  {
    v7 = 0;
    v5 = 1;
    v6 = 0;
  }

  return !(v6 ^ v7 | v5);
}

int set_menu_items(MENU *a1, ITEM **a2)
{
  if (a1 && (!a2 || *a2))
  {
    if (a1->status)
    {
      v4 = -3;
    }

    else
    {
      if (a1->items)
      {
        _nc_Disconnect_Items(a1);
      }

      if (a2 && !_nc_Connect_Items(a1, a2))
      {
        v4 = -4;
      }

      else
      {
        v4 = 0;
        a1->items = a2;
      }
    }
  }

  else
  {
    v4 = -2;
  }

  *__error() = v4;
  return v4;
}

ITEM **__cdecl menu_items(ITEM **result)
{
  if (result)
  {
    return result[10];
  }

  return result;
}

int item_count(const MENU *a1)
{
  if (a1)
  {
    return a1->nitems;
  }

  else
  {
    return -1;
  }
}

MENU *__cdecl new_menu(ITEM **a1)
{
  v2 = calloc(1uLL, 0xB8uLL);
  if (!v2)
  {
    v13 = -1;
    goto LABEL_7;
  }

  v3 = v2;
  v4 = _nc_Default_Menu;
  v5 = unk_C018;
  v6 = unk_C038;
  *&v2->pattern = xmmword_C028;
  *&v2->win = v6;
  *&v2->height = v4;
  *&v2->desclen = v5;
  v7 = xmmword_C048;
  v8 = unk_C058;
  v9 = *&dword_C078;
  *&v2->curitem = unk_C068;
  *&v2->back = v9;
  *&v2->userwin = v7;
  *&v2->items = v8;
  v10 = xmmword_C088;
  v11 = unk_C098;
  v12 = unk_C0A8;
  *&v2->opt = *&dword_C0B8;
  *&v2->iteminit = v11;
  *&v2->userptr = v12;
  *&v2->menuinit = v10;
  v2->status = 0;
  *&v2->rows = *&v2->frows;
  if (a1 && *a1 && (_nc_Connect_Items(v2, a1) & 1) == 0)
  {
    free(v3);
    v13 = -11;
LABEL_7:
    v3 = 0;
    *__error() = v13;
  }

  return v3;
}

int free_menu(MENU *a1)
{
  if (a1)
  {
    status = a1->status;
    if (status)
    {
      v4 = -3;
    }

    else
    {
      if (a1->items)
      {
        _nc_Disconnect_Items(a1);
        status = a1->status;
      }

      if ((status & 8) != 0)
      {
        mark = a1->mark;
        if (mark)
        {
          free(mark);
        }
      }

      free(a1);
      v4 = 0;
    }
  }

  else
  {
    v4 = -2;
  }

  *__error() = v4;
  return v4;
}

int set_menu_opts(MENU *a1, Menu_Options a2)
{
  v2 = a1;
  v3 = a2 & 0x3F;
  if (a1)
  {
    if (a1->status)
    {
      LODWORD(v2) = -3;
    }

    else
    {
      v4 = a2;
      if (((a1->opt ^ a2) & 4) != 0)
      {
        items = a1->items;
        if (items)
        {
          v6 = *items;
          if (v6)
          {
            a1->toprow = 0;
            a1->curitem = v6;
            set_menu_format(a1, a1->frows, a1->fcols);
          }
        }
      }

      v2->opt = v3;
      if (v4)
      {
        v7 = v2->items;
        if (v7)
        {
          v8 = *v7;
          if (*v7)
          {
            v9 = v7 + 1;
            do
            {
              v8->value = 0;
              v10 = *v9++;
              v8 = v10;
            }

            while (v10);
          }
        }
      }

      if ((v4 & 2) != 0)
      {
        _nc_Calculate_Item_Length_and_Width(v2);
      }

      LODWORD(v2) = 0;
    }
  }

  else
  {
    dword_C0B8 = a2 & 0x3F;
  }

  *__error() = v2;
  return v2;
}

int menu_opts_off(MENU *a1, Menu_Options a2)
{
  v2 = &_nc_Default_Menu;
  if (a1)
  {
    v2 = a1;
  }

  return set_menu_opts(a1, v2->opt & (~a2 | 0xFFFFFFC0));
}

int menu_opts_on(MENU *a1, Menu_Options a2)
{
  v2 = &_nc_Default_Menu;
  if (a1)
  {
    v2 = a1;
  }

  return set_menu_opts(a1, v2->opt | a2 & 0x3F);
}

Menu_Options menu_opts(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->opt & 0x3F;
}

int set_menu_pad(MENU *a1, int a2)
{
  v2 = a2;
  if (a2 > 0x7Fu)
  {
    if (__maskrune(a2, 0x40000uLL))
    {
      goto LABEL_3;
    }

LABEL_10:
    LODWORD(a1) = -2;
    goto LABEL_11;
  }

  if ((_DefaultRuneLocale.__runetype[a2] & 0x40000) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = &_nc_Default_Menu;
  if (a1)
  {
    v4 = a1;
  }

  v4->pad = v2;
  if (a1)
  {
    if (a1->status)
    {
      _nc_Draw_Menu(a1);
      _nc_Show_Menu(a1);
    }

    LODWORD(a1) = 0;
  }

LABEL_11:
  *__error() = a1;
  return a1;
}

int menu_pad(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->pad;
}

char *__cdecl menu_pattern(char *result)
{
  if (result)
  {
    if (*(result + 4))
    {
      return *(result + 4);
    }

    else
    {
      return &unk_C120;
    }
  }

  return result;
}

int set_menu_pattern(MENU *a1, const char *a2)
{
  if (a1 && a2)
  {
    if (a1->items)
    {
      if ((a1->status & 2) == 0)
      {
        a1->pindex = 0;
        *a1->pattern = 0;
        LOBYTE(v4) = *a2;
        if (*a2)
        {
          if ((a1->status & 4) == 0)
          {
            toprow = a1->toprow;
            curitem = a1->curitem;
            goto LABEL_13;
          }

          _nc_Link_Items(a1);
          v4 = *a2;
          toprow = a1->toprow;
          v8 = a1->curitem;
          curitem = v8;
          if (v4)
          {
LABEL_13:
            v9 = a2 + 1;
            while (1)
            {
              if ((v4 & 0x80) != 0)
              {
                if (!__maskrune(v4, 0x40000uLL))
                {
                  break;
                }
              }

              else if ((_DefaultRuneLocale.__runetype[v4] & 0x40000) == 0)
              {
                break;
              }

              if (_nc_Match_Next_Character_In_Item_Name(a1, v4, &curitem))
              {
                break;
              }

              v10 = *v9++;
              LOBYTE(v4) = v10;
              if (!v10)
              {
                v8 = curitem;
                goto LABEL_21;
              }
            }

            a1->pindex = 0;
            *a1->pattern = 0;
            pos_menu_cursor(a1);
            v6 = __error();
            result = -9;
            goto LABEL_31;
          }

LABEL_21:
          y = v8->y;
          if (y >= toprow)
          {
            v12 = toprow;
          }

          else
          {
            v12 = v8->y;
          }

          arows = a1->arows;
          if (v12 + arows <= y)
          {
            rows = a1->rows;
            v15 = rows - arows;
            if (rows - v12 <= y)
            {
              LOWORD(y) = v15;
            }

            v12 = y;
          }

          _nc_New_TopRow_and_CurrentItem(a1, v12, v8);
        }

        else
        {
          pos_menu_cursor(a1);
        }

        v16 = __error();
        result = 0;
        *v16 = 0;
        return result;
      }

      v6 = __error();
      result = -5;
    }

    else
    {
      v6 = __error();
      result = -11;
    }
  }

  else
  {
    v6 = __error();
    result = -2;
  }

LABEL_31:
  *v6 = result;
  return result;
}

uint64_t _nc_Post_Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *v4;
    v6 = *(v4 + 1);
  }

  else
  {
    v5 = -1;
    v6 = -1;
  }

  wattr_on(v4, *(a1 + 112), 0);
  if ((*(a2 + 58) & 1) != 0 || *(a1 + 96) == a2)
  {
    if (*(a1 + 18))
    {
      if ((*(a1 + 176) & 1) != 0 || !*(a2 + 58) || *(a1 + 96) == a2)
      {
        waddnstr(*(a1 + 48), *(a1 + 168), -1);
      }

      else
      {
        wattr_on(*(a1 + 48), *(a1 + 108), 0);
        waddnstr(*(a1 + 48), *(a1 + 168), -1);
        wattr_on(*(a1 + 48), *(a1 + 108), 0);
      }
    }
  }

  else
  {
    v7 = *(a1 + 18);
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      do
      {
        waddch(*(a1 + 48), 0x20u);
        --v8;
      }

      while (v8 > 1);
    }
  }

  wattr_off(*(a1 + 48), *(a1 + 112), 0);
  v9 = *(a2 + 48);
  v39 = *(a1 + 18);
  if (v9)
  {
    if ((*(a2 + 58) & 1) != 0 || *(a1 + 96) == a2)
    {
      wattr_on(*(a1 + 48), *(a1 + 108), 0);
      v40 = 0;
      v10 = 1;
    }

    else
    {
      wattr_on(*(a1 + 48), *(a1 + 112), 0);
      v10 = 0;
      v40 = 1;
    }
  }

  else
  {
    wattr_on(*(a1 + 48), *(a1 + 116), 0);
    v10 = 0;
    v40 = 0;
  }

  waddnstr(*(a1 + 48), *a2, *(a2 + 8));
  result = _nc_Calculate_Text_Width(a2);
  v12 = *(a1 + 14);
  if (v12 - result >= 1)
  {
    v13 = v12 - result + 1;
    do
    {
      result = waddch(*(a1 + 48), 0x20u);
      --v13;
    }

    while (v13 > 1);
    v12 = *(a1 + 14);
  }

  if ((*(a1 + 176) & 2) != 0 && *(a1 + 16) >= 1)
  {
    if (*(a1 + 22) < 1)
    {
      v20 = -2;
      v17 = -1;
    }

    else
    {
      v37 = v6;
      v14 = 0;
      v15 = (*(a1 + 22) + (*(a1 + 22) >> 15)) >> 1;
      v16 = -1;
      v17 = -1;
      do
      {
        v18 = *(a1 + 48);
        if (v15 == v14)
        {
          waddch(v18, *(a1 + 120));
          v19 = *(a1 + 48);
          if (v19)
          {
            v17 = *v19;
            v16 = v19[1];
          }

          else
          {
            v17 = -1;
            v16 = -1;
          }
        }

        else
        {
          waddch(v18, 0x20u);
        }

        ++v14;
      }

      while (v14 < *(a1 + 22));
      v20 = v16 - 1;
      v6 = v37;
    }

    if (*(a2 + 24))
    {
      waddnstr(*(a1 + 48), *(a2 + 16), *(a2 + 24));
    }

    result = _nc_Calculate_Text_Width(a2 + 16);
    v21 = *(a1 + 16);
    if (v21 - result >= 1)
    {
      v22 = v21 - result + 1;
      do
      {
        result = waddch(*(a1 + 48), 0x20u);
        --v22;
      }

      while (v22 > 1);
      v21 = *(a1 + 16);
    }

    if (*(a1 + 26) > 1)
    {
      v23 = *(a1 + 48);
      if (v23)
      {
        v38 = *v23;
        v24 = *(v23 + 1);
      }

      else
      {
        v24 = -1;
        v38 = -1;
      }

      v36 = v24;
      v25 = *(a1 + 22);
      if ((v9 & (v10 ^ 1) & 1) == 0)
      {
        v26 = 108;
        if ((v9 & 1) == 0)
        {
          v26 = 116;
        }

        wattr_off(v23, *(a1 + v26), 0);
      }

      wattr_on(*(a1 + 48), *(a1 + 112), 0);
      if (*(a1 + 26) >= 2)
      {
        v27 = v12 + v39 + v21 + v25;
        v28 = 1;
        do
        {
          v29 = *(a1 + 48);
          if (v29)
          {
            v30 = *(v29 + 4) + 1;
          }

          else
          {
            v30 = -1;
          }

          if (v28 + v5 < v30)
          {
            wmove(v29, v28 + v5, v6);
            if (v27 >= 1)
            {
              v31 = v27;
              do
              {
                waddch(*(a1 + 48), 0x20u);
                --v31;
              }

              while (v31);
            }
          }

          v32 = *(a1 + 48);
          if (v32)
          {
            v33 = *(v32 + 4) + 1;
          }

          else
          {
            v33 = -1;
          }

          if (v28 + v17 < v33 && wmove(v32, v28 + v17, v20) != -1)
          {
            waddch(*(a1 + 48), *(a1 + 120));
          }

          ++v28;
        }

        while (v28 < *(a1 + 26));
      }

      result = wmove(*(a1 + 48), v38, v36);
      if ((v40 & 1) == 0)
      {
        result = wattr_off(*(a1 + 48), *(a1 + 112), 0);
      }
    }
  }

  if (v10)
  {
    result = wattr_off(*(a1 + 48), *(a1 + 108), 0);
  }

  if (v40)
  {
    result = wattr_off(*(a1 + 48), *(a1 + 112), 0);
  }

  if ((v9 & 1) == 0)
  {
    v34 = *(a1 + 48);
    v35 = *(a1 + 116);

    return wattr_off(v34, v35, 0);
  }

  return result;
}

uint64_t _nc_Draw_Menu(uint64_t a1)
{
  v2 = **(a1 + 80);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(v3 + 20);
  }

  else
  {
    v4 = 0;
  }

  wbkgdset(v3, *(a1 + 112));
  werase(*(a1 + 48));
  wbkgdset(*(a1 + 48), v4);
  v5 = 0;
  if ((*(a1 + 176) & 0x20) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  do
  {
    wmove(*(a1 + 48), v5, 0);
    if ((*(a1 + 176) & 0x20) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v2;
    }

    _nc_Post_Item(a1, v2);
    wattr_on(*(a1 + 48), *(a1 + 112), 0);
    v8 = *(v2 + 72);
    v9 = *(a1 + 48);
    if (v8 != v7 && v8 != 0)
    {
      do
      {
        if (v9)
        {
          v11 = *v9;
          v12 = *(v9 + 1);
        }

        else
        {
          v11 = -1;
          v12 = -1;
        }

        if (*(a1 + 26) < 1)
        {
          LOWORD(v14) = *(a1 + 24);
        }

        else
        {
          v13 = 0;
          do
          {
            wmove(*(a1 + 48), v13 + v11, v12);
            v14 = *(a1 + 24);
            if (v14 >= 1)
            {
              for (i = 0; i < v14; ++i)
              {
                waddch(*(a1 + 48), 0x20u);
                v14 = *(a1 + 24);
              }
            }

            ++v13;
          }

          while (v13 < *(a1 + 26));
          v9 = *(a1 + 48);
        }

        wmove(v9, v11, v12 + v14);
        _nc_Post_Item(a1, v8);
        wattr_on(*(a1 + 48), *(a1 + 112), 0);
        v8 = *(v8 + 72);
        v9 = *(a1 + 48);
      }

      while (v8 != v7 && v8);
    }

    result = wattr_off(v9, *(a1 + 112), 0);
    v2 = *(v2 + 88);
    if (!v2)
    {
      break;
    }

    v5 += *(a1 + 26);
  }

  while (v2 != v6);
  return result;
}

int post_menu(MENU *a1)
{
  if (a1)
  {
    status = a1->status;
    if ((status & 2) != 0)
    {
      v19 = -5;
    }

    else if (status)
    {
      v19 = -3;
    }

    else
    {
      items = a1->items;
      if (items && *items)
      {
        v4 = a1->rows - 1;
        v5 = v4 * a1->spc_rows + 1;
        usersub = a1->usersub;
        if (usersub || (usersub = a1->userwin) != 0 || (usersub = *(SP + 152)) != 0)
        {
          v7 = *(usersub + 2) + 1;
        }

        else
        {
          v7 = -1;
        }

        v8 = newpad(v4 * a1->spc_rows + 1, a1->width);
        a1->win = v8;
        if (v8 && (v7 >= v5 ? (v9 = v5) : (v9 = v7), v9 >= a1->height ? (height = a1->height) : (height = v9), v11 = subpad(v8, height, a1->width, 0, 0), (a1->sub = v11) != 0))
        {
          v12 = a1->status;
          if ((v12 & 4) != 0)
          {
            _nc_Link_Items(a1);
            v12 = a1->status;
          }

          a1->status = v12 | 1;
          if ((a1->opt & 1) == 0)
          {
            v13 = a1->items;
            v14 = *v13;
            if (*v13)
            {
              v15 = v13 + 1;
              do
              {
                v14->value = 0;
                v16 = *v15++;
                v14 = v16;
              }

              while (v16);
            }
          }

          _nc_Draw_Menu(a1);
          menuinit = a1->menuinit;
          if (menuinit)
          {
            a1->status |= 2u;
            (menuinit)(a1);
            a1->status &= ~2u;
          }

          iteminit = a1->iteminit;
          if (iteminit)
          {
            a1->status |= 2u;
            (iteminit)(a1);
            a1->status &= ~2u;
          }

          _nc_Show_Menu(a1);
          v19 = 0;
        }

        else
        {
          v19 = -1;
        }
      }

      else
      {
        v19 = -11;
      }
    }
  }

  else
  {
    v19 = -2;
  }

  *__error() = v19;
  return v19;
}

int unpost_menu(MENU *a1)
{
  if (a1)
  {
    status = a1->status;
    if ((status & 2) != 0)
    {
      v3 = -5;
    }

    else if (status)
    {
      itemterm = a1->itemterm;
      if (itemterm)
      {
        a1->status = status | 2;
        (itemterm)(a1);
        status = a1->status & 0xFFFD;
        a1->status = status;
      }

      menuterm = a1->menuterm;
      if (menuterm)
      {
        a1->status = status | 2;
        (menuterm)(a1);
        a1->status &= ~2u;
      }

      usersub = a1->usersub;
      if (!usersub)
      {
        usersub = a1->userwin;
        if (!usersub)
        {
          usersub = *(SP + 152);
        }
      }

      werase(usersub);
      wsyncup(usersub);
      delwin(a1->sub);
      a1->sub = 0;
      delwin(a1->win);
      v3 = 0;
      a1->win = 0;
      a1->status &= ~1u;
    }

    else
    {
      v3 = -7;
    }
  }

  else
  {
    v3 = -2;
  }

  *__error() = v3;
  return v3;
}

const char *__cdecl menu_request_name(int a1)
{
  if ((a1 - 529) > 0xFFFFFFEE)
  {
    return &aLeftItem[14 * (a1 - 512)];
  }

  v1 = __error();
  result = 0;
  *v1 = -2;
  return result;
}

int menu_request_by_name(const char *a1)
{
  if (a1 && (v1 = strlen(a1)) != 0)
  {
    if (v1 >= 0xE)
    {
      v2 = 14;
    }

    else
    {
      v2 = v1;
    }

    __memcpy_chk();
    v11[v2] = 0;
    v3 = v11[0];
    if (v11[0])
    {
      v4 = &v12;
      do
      {
        *(v4 - 1) = __toupper(v3);
        v5 = *v4;
        v4 = (v4 + 1);
        v3 = v5;
      }

      while (v5);
    }

    v6 = -17;
    v7 = "LEFT_ITEM";
    while (strcmp(v7, v11))
    {
      v7 += 14;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_13;
      }
    }

    return v6 + 529;
  }

  else
  {
LABEL_13:
    v9 = __error();
    result = -9;
    *v9 = -9;
  }

  return result;
}

int scale_menu(const MENU *a1, int *a2, int *a3)
{
  if (a1)
  {
    items = a1->items;
    if (items && *items)
    {
      if (a2)
      {
        *a2 = a1->height;
      }

      v4 = 0;
      if (a3)
      {
        *a3 = a1->width;
      }
    }

    else
    {
      v4 = -11;
    }
  }

  else
  {
    v4 = -2;
  }

  *__error() = v4;
  return v4;
}

int set_menu_spacing(MENU *a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    a1 = &_nc_Default_Menu;
  }

  if (a1->status)
  {
    v5 = -3;
  }

  else if (a2 < 0)
  {
    v5 = -2;
  }

  else
  {
    v4 = TABSIZE;
    if (!TABSIZE)
    {
      v4 = 8;
    }

    v5 = -2;
    if (v4 >= a4 && (a4 & 0x80000000) == 0 && a3 <= 3 && v4 >= a2)
    {
      if (a2 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = a2;
      }

      a1->spc_desc = v6;
      if (a3 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = a3;
      }

      a1->spc_rows = v7;
      if (a4 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = a4;
      }

      a1->spc_cols = v8;
      _nc_Calculate_Item_Length_and_Width(a1);
      v5 = 0;
    }
  }

  *__error() = v5;
  return v5;
}

int menu_spacing(const MENU *a1, int *a2, int *a3, int *a4)
{
  v4 = &_nc_Default_Menu;
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    *a2 = v4->spc_desc;
  }

  if (a3)
  {
    *a3 = v4->spc_rows;
  }

  if (a4)
  {
    *a4 = v4->spc_cols;
  }

  *__error() = 0;
  return 0;
}

int set_menu_sub(MENU *a1, WINDOW *a2)
{
  if (a1)
  {
    if (a1->status)
    {
      v3 = -3;
      goto LABEL_7;
    }

    p_usersub = &a1->usersub;
  }

  else
  {
    p_usersub = &xmmword_C048 + 1;
  }

  v3 = 0;
  *p_usersub = a2;
LABEL_7:
  *__error() = v3;
  return v3;
}

WINDOW *__cdecl menu_sub(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  result = v1->usersub;
  if (!result)
  {
    result = v1->userwin;
    if (!result)
    {
      return *(SP + 152);
    }
  }

  return result;
}

int set_menu_userptr(MENU *a1, void *a2)
{
  v2 = &_nc_Default_Menu;
  if (a1)
  {
    v2 = a1;
  }

  v2->userptr = a2;
  *__error() = 0;
  return 0;
}

void *__cdecl menu_userptr(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  return v1->userptr;
}

int set_menu_win(MENU *a1, WINDOW *a2)
{
  if (a1)
  {
    if (a1->status)
    {
      v3 = -3;
      goto LABEL_7;
    }

    p_userwin = &a1->userwin;
  }

  else
  {
    p_userwin = &xmmword_C048;
  }

  v3 = 0;
  *p_userwin = a2;
LABEL_7:
  *__error() = v3;
  return v3;
}

WINDOW *__cdecl menu_win(const MENU *a1)
{
  v1 = &_nc_Default_Menu;
  if (a1)
  {
    v1 = a1;
  }

  result = v1->userwin;
  if (!result)
  {
    return *(SP + 152);
  }

  return result;
}

int set_item_userptr(ITEM *a1, void *a2)
{
  v2 = &_nc_Default_Item;
  if (a1)
  {
    v2 = a1;
  }

  v2->userptr = a2;
  *__error() = 0;
  return 0;
}

void *__cdecl item_userptr(const ITEM *a1)
{
  v1 = &_nc_Default_Item;
  if (a1)
  {
    v1 = a1;
  }

  return v1->userptr;
}