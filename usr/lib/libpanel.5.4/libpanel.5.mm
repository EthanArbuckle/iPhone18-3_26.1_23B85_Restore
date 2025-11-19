PANEL *__cdecl panel_above(const PANEL *a1)
{
  if (a1)
  {
    return a1->above;
  }

  v1 = *_nc_panelhook();
  if (v1 != *(_nc_panelhook() + 8))
  {
    a1 = *(_nc_panelhook() + 8);
    return a1->above;
  }

  return 0;
}

PANEL *__cdecl panel_below(const PANEL *a1)
{
  if (a1)
  {
    p_below = &a1->below;
    below = a1->below;
    if (!below || below == *(_nc_panelhook() + 8))
    {
      return 0;
    }

    return *p_below;
  }

  v3 = *_nc_panelhook();
  if (v3 != *(_nc_panelhook() + 8))
  {
    p_below = _nc_panelhook();
    return *p_below;
  }

  return 0;
}

int bottom_panel(PANEL *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *_nc_panelhook();
  if (v2 != *(_nc_panelhook() + 8) && *(*(_nc_panelhook() + 8) + 16) == a1)
  {
    return 0;
  }

  if (a1->above || a1->below || *(_nc_panelhook() + 8) == a1)
  {
    win = a1->win;
    if (a1->win)
    {
      v4 = *(win + 2) + 1;
    }

    else
    {
      v4 = -1;
    }

    wtouchln(win, 0, v4, 1);
    v6 = *(_nc_panelhook() + 8);
    if (v6)
    {
      while (1)
      {
        v7 = v6->win;
        if (!v6->win)
        {
          goto LABEL_44;
        }

        if (v6 != a1)
        {
          v8 = a1->win;
          v9 = *(a1->win + 4);
          v10 = v7[4];
          v11 = v7[2] + v10;
          if (v11 >= v9)
          {
            v12 = v9 + v8[2] + 1;
            if (v12 > v10)
            {
              v13 = v8[5];
              v14 = v7[5];
              v15 = v14 + v7[3] + 1;
              if (v15 > v13)
              {
                v16 = v13 + v8[3] + 1;
                if (v16 > v14)
                {
                  if (v13 <= v14)
                  {
                    v17 = v14;
                  }

                  else
                  {
                    v17 = v13;
                  }

                  if (v16 < v15)
                  {
                    v15 = v16;
                  }

                  v18 = v9 <= v10 ? v10 : *(a1->win + 4);
                  v19 = v12 > v11 ? v11 + 1 : v12;
                  if (v19 > v18)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_43:
        v6 = v6->above;
        if (!v6)
        {
          goto LABEL_44;
        }
      }

      v20 = v15 - 1;
      if (v10 <= *(a1->win + 4))
      {
        v21 = *(a1->win + 4);
      }

      else
      {
        v21 = v10;
      }

      v22 = 16 * v21;
      while (!is_linetouched(a1->win, v18 - *(a1->win + 4)))
      {
LABEL_42:
        ++v18;
        v22 += 16;
        if (v19 == v18)
        {
          goto LABEL_43;
        }
      }

      v23 = v6->win;
      v24 = *(v6->win + 5) - 16 * *(v6->win + 4);
      v25 = *(v24 + v22 + 8);
      if (v25 == -1)
      {
        v26 = *(v23 + 5);
      }

      else
      {
        v26 = *(v23 + 5);
        if (v17 - v26 >= v25)
        {
          goto LABEL_39;
        }
      }

      *(v24 + v22 + 8) = v17 - v26;
LABEL_39:
      v27 = v24 + v22;
      v28 = *(v27 + 10);
      if (v28 == -1 || v20 - v26 > v28)
      {
        *(v27 + 10) = v20 - v26;
      }

      goto LABEL_42;
    }

LABEL_44:
    above = a1->above;
    if (!above)
    {
      if (a1->below)
      {
        above = 0;
      }

      else
      {
        if (*(_nc_panelhook() + 8) != a1)
        {
          v5 = -1;
LABEL_61:
          a1->below = 0;
          a1->above = 0;
          goto LABEL_62;
        }

        above = a1->above;
      }
    }

    below = a1->below;
    if (below)
    {
      below->above = above;
    }

    if (above)
    {
      above->below = below;
    }

    if (*(_nc_panelhook() + 8) == a1)
    {
      v31 = a1->above;
      *(_nc_panelhook() + 8) = v31;
    }

    if (*_nc_panelhook() == a1)
    {
      v32 = a1->below;
      v5 = 0;
      *_nc_panelhook() = v32;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_61;
  }

  v5 = 0;
LABEL_62:
  a1->below = *(_nc_panelhook() + 8);
  v33 = *(*(_nc_panelhook() + 8) + 16);
  a1->above = v33;
  if (v33)
  {
    v33->below = a1;
  }

  *(*(_nc_panelhook() + 8) + 16) = a1;
  return v5;
}

int del_panel(PANEL *a1)
{
  if (a1)
  {
    if (!a1->above && !a1->below && *(_nc_panelhook() + 8) != a1)
    {
      goto LABEL_52;
    }

    win = a1->win;
    if (a1->win)
    {
      v3 = *(win + 2) + 1;
    }

    else
    {
      v3 = -1;
    }

    wtouchln(win, 0, v3, 1);
    v5 = *(_nc_panelhook() + 8);
    if (v5)
    {
      while (1)
      {
        v6 = v5->win;
        if (!v5->win)
        {
          goto LABEL_42;
        }

        if (v5 != a1)
        {
          v7 = a1->win;
          v8 = *(a1->win + 4);
          v9 = v6[4];
          v10 = v6[2] + v9;
          if (v10 >= v8)
          {
            v11 = v8 + v7[2] + 1;
            if (v11 > v9)
            {
              v12 = v7[5];
              v13 = v6[5];
              v14 = v13 + v6[3] + 1;
              if (v14 > v12)
              {
                v15 = v12 + v7[3] + 1;
                if (v15 > v13)
                {
                  if (v12 <= v13)
                  {
                    v16 = v13;
                  }

                  else
                  {
                    v16 = v12;
                  }

                  if (v15 < v14)
                  {
                    v14 = v15;
                  }

                  v17 = v8 <= v9 ? v9 : *(a1->win + 4);
                  v18 = v11 > v10 ? v10 + 1 : v11;
                  if (v18 > v17)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_41:
        v5 = v5->above;
        if (!v5)
        {
          goto LABEL_42;
        }
      }

      v19 = v14 - 1;
      if (v9 <= *(a1->win + 4))
      {
        v20 = *(a1->win + 4);
      }

      else
      {
        v20 = v9;
      }

      v21 = 16 * v20;
      while (!is_linetouched(a1->win, v17 - *(a1->win + 4)))
      {
LABEL_40:
        ++v17;
        v21 += 16;
        if (v18 == v17)
        {
          goto LABEL_41;
        }
      }

      v22 = v5->win;
      v23 = *(v5->win + 5) - 16 * *(v5->win + 4);
      v24 = *(v23 + v21 + 8);
      if (v24 == -1)
      {
        v25 = *(v22 + 5);
      }

      else
      {
        v25 = *(v22 + 5);
        if (v16 - v25 >= v24)
        {
          goto LABEL_37;
        }
      }

      *(v23 + v21 + 8) = v16 - v25;
LABEL_37:
      v26 = v23 + v21;
      v27 = *(v26 + 10);
      if (v27 == -1 || v19 - v25 > v27)
      {
        *(v26 + 10) = v19 - v25;
      }

      goto LABEL_40;
    }

LABEL_42:
    above = a1->above;
    if (!above)
    {
      if (a1->below)
      {
        above = 0;
      }

      else
      {
        if (*(_nc_panelhook() + 8) != a1)
        {
          v4 = -1;
          goto LABEL_58;
        }

        above = a1->above;
      }
    }

    below = a1->below;
    if (below)
    {
      below->above = above;
    }

    if (above)
    {
      above->below = below;
    }

    if (*(_nc_panelhook() + 8) == a1)
    {
      v30 = a1->above;
      *(_nc_panelhook() + 8) = v30;
    }

    if (*_nc_panelhook() == a1)
    {
      v31 = a1->below;
      v4 = 0;
      *_nc_panelhook() = v31;
    }

    else
    {
LABEL_52:
      v4 = 0;
    }

LABEL_58:
    free(a1);
    return v4;
  }

  return -1;
}

int panel_hidden(const PANEL *a1)
{
  if (!a1)
  {
    return -1;
  }

  if (a1->above || a1->below)
  {
    return 0;
  }

  return *(_nc_panelhook() + 8) != a1;
}

int hide_panel(PANEL *a1)
{
  if (!a1)
  {
    return -1;
  }

  if (!a1->above && !a1->below && *(_nc_panelhook() + 8) != a1)
  {
    return 0;
  }

  win = a1->win;
  if (a1->win)
  {
    v3 = *(win + 2) + 1;
  }

  else
  {
    v3 = -1;
  }

  wtouchln(win, 0, v3, 1);
  v5 = *(_nc_panelhook() + 8);
  if (v5)
  {
    while (1)
    {
      v6 = v5->win;
      if (!v5->win)
      {
        goto LABEL_42;
      }

      if (v5 != a1)
      {
        v7 = a1->win;
        v8 = *(a1->win + 4);
        v9 = v6[4];
        v10 = v6[2] + v9;
        if (v10 >= v8)
        {
          v11 = v8 + v7[2] + 1;
          if (v11 > v9)
          {
            v12 = v7[5];
            v13 = v6[5];
            v14 = v13 + v6[3] + 1;
            if (v14 > v12)
            {
              v15 = v12 + v7[3] + 1;
              if (v15 > v13)
              {
                if (v12 <= v13)
                {
                  v16 = v13;
                }

                else
                {
                  v16 = v12;
                }

                if (v15 < v14)
                {
                  v14 = v15;
                }

                v17 = v8 <= v9 ? v9 : *(a1->win + 4);
                v18 = v11 > v10 ? v10 + 1 : v11;
                if (v18 > v17)
                {
                  break;
                }
              }
            }
          }
        }
      }

LABEL_41:
      v5 = v5->above;
      if (!v5)
      {
        goto LABEL_42;
      }
    }

    v19 = v14 - 1;
    if (v9 <= *(a1->win + 4))
    {
      v20 = *(a1->win + 4);
    }

    else
    {
      v20 = v9;
    }

    v21 = 16 * v20;
    while (!is_linetouched(a1->win, v17 - *(a1->win + 4)))
    {
LABEL_40:
      ++v17;
      v21 += 16;
      if (v18 == v17)
      {
        goto LABEL_41;
      }
    }

    v22 = v5->win;
    v23 = *(v5->win + 5) - 16 * *(v5->win + 4);
    v24 = *(v23 + v21 + 8);
    if (v24 == -1)
    {
      v25 = *(v22 + 5);
    }

    else
    {
      v25 = *(v22 + 5);
      if (v16 - v25 >= v24)
      {
        goto LABEL_37;
      }
    }

    *(v23 + v21 + 8) = v16 - v25;
LABEL_37:
    v26 = v23 + v21;
    v27 = *(v26 + 10);
    if (v27 == -1 || v19 - v25 > v27)
    {
      *(v26 + 10) = v19 - v25;
    }

    goto LABEL_40;
  }

LABEL_42:
  above = a1->above;
  if (above)
  {
    goto LABEL_45;
  }

  if (a1->below)
  {
    above = 0;
LABEL_45:
    below = a1->below;
    if (below)
    {
      below->above = above;
    }

    if (above)
    {
      above->below = below;
    }

    if (*(_nc_panelhook() + 8) == a1)
    {
      v30 = a1->above;
      *(_nc_panelhook() + 8) = v30;
    }

    if (*_nc_panelhook() == a1)
    {
      v31 = a1->below;
      *_nc_panelhook() = v31;
    }

    goto LABEL_56;
  }

  if (*(_nc_panelhook() + 8) == a1)
  {
    above = a1->above;
    goto LABEL_45;
  }

LABEL_56:
  result = 0;
  a1->below = 0;
  a1->above = 0;
  return result;
}

int move_panel(PANEL *a1, int a2, int a3)
{
  if (!a1)
  {
    return -1;
  }

  if (a1->above || a1->below || *(_nc_panelhook() + 8) == a1)
  {
    win = a1->win;
    v7 = a1->win ? *(win + 2) + 1 : -1;
    wtouchln(win, 0, v7, 1);
    v9 = *(_nc_panelhook() + 8);
    if (v9)
    {
      while (1)
      {
        v10 = v9->win;
        if (!v9->win)
        {
          goto LABEL_44;
        }

        if (v9 != a1)
        {
          v11 = a1->win;
          v12 = *(a1->win + 4);
          v13 = v10[4];
          v14 = v10[2] + v13;
          if (v14 >= v12)
          {
            v15 = v12 + v11[2] + 1;
            if (v15 > v13)
            {
              v16 = v11[5];
              v17 = v10[5];
              v18 = v17 + v10[3] + 1;
              if (v18 > v16)
              {
                v19 = v16 + v11[3] + 1;
                if (v19 > v17)
                {
                  if (v16 <= v17)
                  {
                    v20 = v17;
                  }

                  else
                  {
                    v20 = v16;
                  }

                  if (v19 < v18)
                  {
                    v18 = v19;
                  }

                  v21 = v12 <= v13 ? v13 : *(a1->win + 4);
                  v22 = v15 > v14 ? v14 + 1 : v15;
                  if (v22 > v21)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_41:
        v9 = v9->above;
        if (!v9)
        {
          goto LABEL_44;
        }
      }

      v23 = v18 - 1;
      if (v13 <= *(a1->win + 4))
      {
        v24 = *(a1->win + 4);
      }

      else
      {
        v24 = v13;
      }

      v25 = 16 * v24;
      while (!is_linetouched(a1->win, v21 - *(a1->win + 4)))
      {
LABEL_40:
        ++v21;
        v25 += 16;
        if (v22 == v21)
        {
          goto LABEL_41;
        }
      }

      v26 = v9->win;
      v27 = *(v9->win + 5) - 16 * *(v9->win + 4);
      v28 = *(v27 + v25 + 8);
      if (v28 == -1)
      {
        v29 = *(v26 + 5);
      }

      else
      {
        v29 = *(v26 + 5);
        if (v20 - v29 >= v28)
        {
          goto LABEL_37;
        }
      }

      *(v27 + v25 + 8) = v20 - v29;
LABEL_37:
      v30 = v27 + v25;
      v31 = *(v30 + 10);
      if (v31 == -1 || v23 - v29 > v31)
      {
        *(v30 + 10) = v23 - v29;
      }

      goto LABEL_40;
    }
  }

LABEL_44:
  v32 = a1->win;

  return mvwin(v32, a2, a3);
}

PANEL *__cdecl new_panel(WINDOW *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(_nc_panelhook() + 16))
  {
    if (!*(_nc_panelhook() + 16))
    {
      v2 = malloc(0x20uLL);
      *(_nc_panelhook() + 16) = v2;
      if (*(_nc_panelhook() + 16))
      {
        v3 = *(_nc_panelhook() + 16);
        *v3 = *(SP + 152);
        v3[1] = 0;
        v3[2] = 0;
        v3[3] = 0;
        *_nc_panelhook() = v3;
        *(_nc_panelhook() + 8) = v3;
      }
    }

    _nc_panelhook();
  }

  if ((*(a1 + 6) & 0x10) != 0)
  {
    return 0;
  }

  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    v4->win = a1;
    v4->below = 0;
    v4->above = 0;
    v4->user = 0;
    show_panel(v4);
  }

  return v5;
}

int replace_panel(PANEL *a1, WINDOW *a2)
{
  if (!a1)
  {
    return -1;
  }

  if (*&a1->below != 0 || *(_nc_panelhook() + 8) == a1)
  {
    win = a1->win;
    v5 = a1->win ? *(win + 2) + 1 : -1;
    wtouchln(win, 0, v5, 1);
    v7 = *(_nc_panelhook() + 8);
    if (v7)
    {
      while (1)
      {
        v8 = v7->win;
        if (!v7->win)
        {
          goto LABEL_43;
        }

        if (v7 != a1)
        {
          v9 = a1->win;
          v10 = *(a1->win + 4);
          v11 = v8[4];
          v12 = v8[2] + v11;
          if (v12 >= v10)
          {
            v13 = v10 + v9[2] + 1;
            if (v13 > v11)
            {
              v14 = v9[5];
              v15 = v8[5];
              v16 = v15 + v8[3] + 1;
              if (v16 > v14)
              {
                v17 = v14 + v9[3] + 1;
                if (v17 > v15)
                {
                  if (v14 <= v15)
                  {
                    v18 = v15;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (v17 < v16)
                  {
                    v16 = v17;
                  }

                  v19 = v10 <= v11 ? v11 : *(a1->win + 4);
                  v20 = v13 > v12 ? v12 + 1 : v13;
                  if (v20 > v19)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_40:
        v7 = v7->above;
        if (!v7)
        {
          goto LABEL_43;
        }
      }

      v21 = v16 - 1;
      if (v11 <= *(a1->win + 4))
      {
        v22 = *(a1->win + 4);
      }

      else
      {
        v22 = v11;
      }

      v23 = 16 * v22;
      while (!is_linetouched(a1->win, v19 - *(a1->win + 4)))
      {
LABEL_39:
        ++v19;
        v23 += 16;
        if (v20 == v19)
        {
          goto LABEL_40;
        }
      }

      v24 = v7->win;
      v25 = *(v7->win + 5) - 16 * *(v7->win + 4);
      v26 = *(v25 + v23 + 8);
      if (v26 == -1)
      {
        v27 = *(v24 + 5);
      }

      else
      {
        v27 = *(v24 + 5);
        if (v18 - v27 >= v26)
        {
          goto LABEL_36;
        }
      }

      *(v25 + v23 + 8) = v18 - v27;
LABEL_36:
      v28 = v25 + v23;
      v29 = *(v28 + 10);
      if (v29 == -1 || v21 - v27 > v29)
      {
        *(v28 + 10) = v21 - v27;
      }

      goto LABEL_39;
    }
  }

LABEL_43:
  result = 0;
  a1->win = a2;
  return result;
}

int show_panel(PANEL *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *_nc_panelhook();
  if (v2 != *(_nc_panelhook() + 8) && *_nc_panelhook() == a1)
  {
    return 0;
  }

  if (a1->above || a1->below || *(_nc_panelhook() + 8) == a1)
  {
    win = a1->win;
    if (a1->win)
    {
      v4 = *(win + 2) + 1;
    }

    else
    {
      v4 = -1;
    }

    wtouchln(win, 0, v4, 1);
    v6 = *(_nc_panelhook() + 8);
    if (v6)
    {
      while (1)
      {
        v7 = v6->win;
        if (!v6->win)
        {
          goto LABEL_44;
        }

        if (v6 != a1)
        {
          v8 = a1->win;
          v9 = *(a1->win + 4);
          v10 = v7[4];
          v11 = v7[2] + v10;
          if (v11 >= v9)
          {
            v12 = v9 + v8[2] + 1;
            if (v12 > v10)
            {
              v13 = v8[5];
              v14 = v7[5];
              v15 = v14 + v7[3] + 1;
              if (v15 > v13)
              {
                v16 = v13 + v8[3] + 1;
                if (v16 > v14)
                {
                  if (v13 <= v14)
                  {
                    v17 = v14;
                  }

                  else
                  {
                    v17 = v13;
                  }

                  if (v16 < v15)
                  {
                    v15 = v16;
                  }

                  v18 = v9 <= v10 ? v10 : *(a1->win + 4);
                  v19 = v12 > v11 ? v11 + 1 : v12;
                  if (v19 > v18)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_43:
        v6 = v6->above;
        if (!v6)
        {
          goto LABEL_44;
        }
      }

      v20 = v15 - 1;
      if (v10 <= *(a1->win + 4))
      {
        v21 = *(a1->win + 4);
      }

      else
      {
        v21 = v10;
      }

      v22 = 16 * v21;
      while (!is_linetouched(a1->win, v18 - *(a1->win + 4)))
      {
LABEL_42:
        ++v18;
        v22 += 16;
        if (v19 == v18)
        {
          goto LABEL_43;
        }
      }

      v23 = v6->win;
      v24 = *(v6->win + 5) - 16 * *(v6->win + 4);
      v25 = *(v24 + v22 + 8);
      if (v25 == -1)
      {
        v26 = *(v23 + 5);
      }

      else
      {
        v26 = *(v23 + 5);
        if (v17 - v26 >= v25)
        {
          goto LABEL_39;
        }
      }

      *(v24 + v22 + 8) = v17 - v26;
LABEL_39:
      v27 = v24 + v22;
      v28 = *(v27 + 10);
      if (v28 == -1 || v20 - v26 > v28)
      {
        *(v27 + 10) = v20 - v26;
      }

      goto LABEL_42;
    }

LABEL_44:
    above = a1->above;
    if (!above)
    {
      if (a1->below)
      {
        above = 0;
      }

      else
      {
        if (*(_nc_panelhook() + 8) != a1)
        {
LABEL_59:
          a1->below = 0;
          a1->above = 0;
          goto LABEL_60;
        }

        above = a1->above;
      }
    }

    below = a1->below;
    if (below)
    {
      below->above = above;
    }

    if (above)
    {
      above->below = below;
    }

    if (*(_nc_panelhook() + 8) == a1)
    {
      v31 = a1->above;
      *(_nc_panelhook() + 8) = v31;
    }

    if (*_nc_panelhook() == a1)
    {
      v32 = a1->below;
      *_nc_panelhook() = v32;
    }

    goto LABEL_59;
  }

LABEL_60:
  *(*_nc_panelhook() + 16) = a1;
  a1->below = *_nc_panelhook();
  a1->above = 0;
  v33 = _nc_panelhook();
  result = 0;
  *v33 = a1;
  return result;
}

void update_panels(void)
{
  if (SP)
  {
    for (i = *(_nc_panelhook() + 8); i; i = i[2])
    {
      v1 = i[2];
      if (!v1)
      {
        break;
      }

      do
      {
        v2 = *v1;
        if (!*v1)
        {
          break;
        }

        if (v1 != i)
        {
          v3 = *i;
          v4 = *(*i + 4);
          v5 = v2[4];
          v6 = v2[2] + v5;
          if (v6 >= v4)
          {
            v7 = v4 + v3[2] + 1;
            if (v7 > v5)
            {
              v8 = v3[5];
              v9 = v2[5];
              v10 = v9 + v2[3] + 1;
              if (v10 > v8)
              {
                v11 = v8 + v3[3] + 1;
                if (v11 > v9)
                {
                  if (v8 <= v9)
                  {
                    v12 = v9;
                  }

                  else
                  {
                    v12 = v8;
                  }

                  if (v11 < v10)
                  {
                    v10 = v11;
                  }

                  v13 = v4 <= v5 ? v5 : *(*i + 4);
                  v14 = v7 > v6 ? v6 + 1 : v7;
                  if (v14 > v13)
                  {
                    v15 = v10 - 1;
                    if (v5 <= *(*i + 4))
                    {
                      v16 = *(*i + 4);
                    }

                    else
                    {
                      v16 = v5;
                    }

                    v17 = 16 * v16;
                    while (!is_linetouched(*i, v13 - *(*i + 4)))
                    {
LABEL_35:
                      ++v13;
                      v17 += 16;
                      if (v14 == v13)
                      {
                        goto LABEL_36;
                      }
                    }

                    v18 = *v1;
                    v19 = *(*v1 + 5) - 16 * (*v1)[4];
                    v20 = *(v19 + v17 + 8);
                    if (v20 == -1)
                    {
                      v21 = v18[5];
                    }

                    else
                    {
                      v21 = v18[5];
                      if (v12 - v21 >= v20)
                      {
                        goto LABEL_32;
                      }
                    }

                    *(v19 + v17 + 8) = v12 - v21;
LABEL_32:
                    v22 = v19 + v17;
                    v23 = *(v22 + 10);
                    if (v23 == -1 || v15 - v21 > v23)
                    {
                      *(v22 + 10) = v15 - v21;
                    }

                    goto LABEL_35;
                  }
                }
              }
            }
          }
        }

LABEL_36:
        v1 = v1[2];
      }

      while (v1);
    }

    for (j = *(_nc_panelhook() + 8); j; j = *(j + 16))
    {
      wnoutrefresh(*j);
    }
  }
}

int set_panel_userptr(PANEL *a1, void *a2)
{
  if (!a1)
  {
    return -1;
  }

  result = 0;
  a1->user = a2;
  return result;
}

void *__cdecl panel_userptr(void *result)
{
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

WINDOW *__cdecl panel_window(WINDOW *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}