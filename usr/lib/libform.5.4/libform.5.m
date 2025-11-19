int set_fieldtype_arg(FIELDTYPE *a1, void *(__cdecl *const make_arg)(va_list *), void *(__cdecl *const copy_arg)(const void *), void (__cdecl *const free_arg)(void *))
{
  v4 = -2;
  if (a1 && make_arg)
  {
    v4 = 0;
    a1->status |= 2u;
    a1->makearg = make_arg;
    a1->copyarg = copy_arg;
    a1->freearg = free_arg;
  }

  *__error() = v4;
  return v4;
}

void *__cdecl field_arg(const FIELD *a1)
{
  v1 = _nc_Default_Field;
  if (a1)
  {
    v1 = a1;
  }

  return v1->arg;
}

int set_field_fore(FIELD *a1, chtype a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (!a1)
  {
    a1 = _nc_Default_Field;
  }

  if (!a1)
  {
LABEL_2:
    v2 = -2;
  }

  else if (a1->fore == a2)
  {
    v2 = 0;
  }

  else
  {
    a1->fore = a2;
    v2 = _nc_Synchronize_Attributes(a1);
  }

  *__error() = v2;
  return v2;
}

chtype field_fore(const FIELD *a1)
{
  v1 = _nc_Default_Field;
  if (a1)
  {
    v1 = a1;
  }

  return v1->fore & 0xFFFFFF00;
}

int set_field_back(FIELD *a1, chtype a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (!a1)
  {
    a1 = _nc_Default_Field;
  }

  if (!a1)
  {
LABEL_2:
    v2 = -2;
  }

  else if (a1->back == a2)
  {
    v2 = 0;
  }

  else
  {
    a1->back = a2;
    v2 = _nc_Synchronize_Attributes(a1);
  }

  *__error() = v2;
  return v2;
}

chtype field_back(const FIELD *a1)
{
  v1 = _nc_Default_Field;
  if (a1)
  {
    v1 = a1;
  }

  return v1->back & 0xFFFFFF00;
}

int set_current_field(FORM *a1, FIELD *a2)
{
  v2 = -2;
  if (a1 && a2)
  {
    if (a2->form != a1 || (~a2->opts & 3) != 0)
    {
      v2 = -12;
    }

    else if (a1->status)
    {
      if ((a1->status & 2) != 0)
      {
        v2 = -5;
      }

      else if (a1->current == a2)
      {
        v2 = 0;
      }

      else if (_nc_Internal_Validation(a1))
      {
        fieldterm = a1->fieldterm;
        if (fieldterm)
        {
          a1->status |= 2u;
          (fieldterm)(a1);
          a1->status &= ~2u;
        }

        page = a2->page;
        if (page == a1->curpage)
        {
          v2 = _nc_Set_Current_Field(a1, a2);
        }

        else
        {
          formterm = a1->formterm;
          if (formterm)
          {
            a1->status |= 2u;
            (formterm)(a1);
            a1->status &= ~2u;
            LOWORD(page) = a2->page;
          }

          v2 = _nc_Set_Form_Page(a1, page, a2);
          forminit = a1->forminit;
          if (forminit)
          {
            a1->status |= 2u;
            (forminit)(a1);
            a1->status &= ~2u;
          }
        }

        fieldinit = a1->fieldinit;
        if (fieldinit)
        {
          a1->status |= 2u;
          (fieldinit)(a1);
          a1->status &= ~2u;
        }

        _nc_Refresh_Current_Field(a1);
      }

      else
      {
        v2 = -13;
      }
    }

    else
    {
      v2 = 0;
      a1->current = a2;
      a1->curpage = a2->page;
    }
  }

  *__error() = v2;
  return v2;
}

FIELD *__cdecl current_field(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  return v1->current;
}

int field_index(const FIELD *a1)
{
  if (a1 && a1->form)
  {
    return a1->index;
  }

  else
  {
    return -1;
  }
}

void *_nc_Make_Argument(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1 && (*a1 & 2) != 0)
  {
    if (*a1)
    {
      v4 = malloc(0x10uLL);
      if (v4)
      {
        *v4 = _nc_Make_Argument(*(a1 + 16), a2, a3);
        v4[1] = _nc_Make_Argument(*(a1 + 24), a2, a3);
        return v4;
      }
    }

    else
    {
      v4 = (*(a1 + 32))(a2);
      if (v4)
      {
        return v4;
      }
    }

    ++*a3;
    return v4;
  }

  return 0;
}

void *_nc_Copy_Argument(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!a1 || (*a1 & 2) == 0)
  {
    return 0;
  }

  v4 = a2;
  if (*a1)
  {
    v8 = malloc(0x10uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = _nc_Copy_Argument(a1, *v4, a3);
      v9[1] = _nc_Copy_Argument(a1, v4[1], a3);
      return v9;
    }

    v4 = 0;
LABEL_12:
    ++*a3;
    return v4;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v4 = v7(a2);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  return v4;
}

void _nc_Free_Argument(uint64_t a1, void *a2)
{
  if (a1 && (*a1 & 2) != 0)
  {
    if (*a1)
    {
      if (a2)
      {
        _nc_Free_Argument(*(a1 + 16), *a2);
        _nc_Free_Argument(*(a1 + 24), a2[1]);

        free(a2);
      }
    }

    else
    {
      v4 = *(a1 + 48);
      if (v4)
      {

        v4(a2);
      }
    }
  }
}

BOOL _nc_Copy_Type(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v3 = *(a2 + 88);
  v4 = *(a2 + 96);
  *(a1 + 88) = v3;
  v5 = (a1 + 88);
  v6 = _nc_Copy_Argument(v3, v4, &v10);
  v5[1] = v6;
  v7 = v10;
  v8 = *v5;
  if (v10)
  {
    _nc_Free_Argument(v8, v6);
    *v5 = 0;
    v5[1] = 0;
  }

  else if (v8)
  {
    ++*(v8 + 8);
  }

  return v7 == 0;
}

void _nc_Free_Type(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    --*(v2 + 8);
    _nc_Free_Argument(v2, *(a1 + 96));
  }
}

FIELD *__cdecl new_field(int a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = -2;
  if (a1 < 1)
  {
    goto LABEL_18;
  }

  if (a2 < 1)
  {
    goto LABEL_18;
  }

  v10 = a4;
  v11 = a3;
  if ((a4 | a3 | a5 | a6) < 0)
  {
    goto LABEL_18;
  }

  v13 = malloc(0x88uLL);
  if (!v13)
  {
LABEL_17:
    v6 = -1;
LABEL_18:
    v14 = 0;
    *__error() = v6;
    return v14;
  }

  v14 = v13;
  v15 = xmmword_2A13C17F8;
  v13[6] = xmmword_2A13C17E8;
  v13[7] = v15;
  *(v13 + 16) = qword_2A13C1808;
  v16 = xmmword_2A13C17B8;
  v13[2] = xmmword_2A13C17A8;
  v13[3] = v16;
  v17 = xmmword_2A13C17D8;
  v13[4] = xmmword_2A13C17C8;
  v13[5] = v17;
  v18 = xmmword_2A13C1798;
  *v13 = xmmword_2A13C1788;
  v13[1] = v18;
  *(v13 + 1) = a1;
  *(v13 + 2) = a2;
  *(v13 + 3) = a5 + a1;
  *(v13 + 4) = a2;
  *(v13 + 3) = v11;
  *(v13 + 4) = v10;
  *(v13 + 6) = a5;
  *(v13 + 14) = a6;
  *(v13 + 9) = v13;
  *(v13 + 16) = newpad(1, (a5 + a1) * a2 + 1);
  *(v14 + 120) = calloc((a6 + 1), 8uLL);
  if (!_nc_Copy_Type(v14, &xmmword_2A13C1788) || (v19 = *(v14 + 16) * *(v14 + 12), v20 = v19 + 1, v21 = *(v14 + 28), v22 = malloc(28 * (v20 + v20 * v21)), (*(v14 + 104) = v22) == 0))
  {
    free_field(v14);
    goto LABEL_17;
  }

  if ((v21 & 0x80000000) == 0)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(v14 + 104);
      if (v19 < 1)
      {
        v28 = 0;
      }

      else
      {
        v26 = (v25 + v23);
        v27 = v19;
        do
        {
          *v26 = xmmword_298AAA0B8;
          *(v26 + 12) = *(&xmmword_298AAA0B8 + 12);
          v26 = (v26 + 28);
          --v27;
        }

        while (v27);
        v28 = v19;
      }

      v29 = v25 + 28 * v24 * v20 + 28 * v28;
      *v29 = 0;
      *(v29 + 8) = 0;
      *(v29 + 24) = 0;
      *(v29 + 16) = 0;
      v23 += 28 * v19 + 28;
    }

    while (v24++ < *(v14 + 28));
  }

  return v14;
}

int free_field(FIELD *a1)
{
  if (a1)
  {
    if (a1->form)
    {
      v2 = -4;
    }

    else
    {
      link = a1->link;
      if (link == a1)
      {
        buf = a1->buf;
        if (buf)
        {
          free(buf);
        }
      }

      else
      {
        v4 = a1;
        do
        {
          v5 = v4;
          v4 = v4->link;
        }

        while (v4 != a1);
        v5->link = link;
      }

      type = a1->type;
      if (type)
      {
        --type->ref;
        _nc_Free_Argument(type, a1->arg);
      }

      v8 = *&a1[1].status;
      if (v8)
      {
        nbuf = a1->nbuf;
        if ((nbuf & 0x80000000) == 0)
        {
          v10 = 0;
          do
          {
            v11 = *(*&a1[1].status + 8 * v10);
            if (v11)
            {
              free(v11);
              LOWORD(nbuf) = a1->nbuf;
            }
          }

          while (v10++ < nbuf);
          v8 = *&a1[1].status;
        }

        free(v8);
        delwin(*&a1[1].fcol);
      }

      free(a1);
      v2 = 0;
    }
  }

  else
  {
    v2 = -2;
  }

  *__error() = v2;
  return v2;
}

FIELD *__cdecl dup_field(FIELD *a1, int a2, int a3)
{
  v3 = -2;
  if (!a1)
  {
    goto LABEL_12;
  }

  v4 = a3;
  v5 = a2;
  if ((a3 | a2) < 0)
  {
    goto LABEL_12;
  }

  v7 = malloc(0x88uLL);
  if (!v7)
  {
LABEL_11:
    v3 = -1;
LABEL_12:
    v8 = 0;
    *__error() = v3;
    return v8;
  }

  v8 = v7;
  v9 = _nc_Default_Field;
  *v7 = *_nc_Default_Field;
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[3];
  *(v7 + 4) = v9[4];
  v13 = v9[5];
  v14 = *(v9 + 16);
  v15 = v9[7];
  *(v7 + 6) = v9[6];
  *(v7 + 7) = v15;
  *(v7 + 2) = v11;
  *(v7 + 3) = v12;
  *(v7 + 1) = v10;
  *(v7 + 16) = v14;
  *(v7 + 5) = v13;
  *(v7 + 3) = v5;
  *(v7 + 4) = v4;
  *(v7 + 9) = v7;
  *(v7 + 2) = *&a1->rows;
  *(v7 + 12) = *&a1->drows;
  *(v7 + 7) = *&a1->nbuf;
  *(v7 + 36) = *&a1->pad;
  *(v7 + 14) = a1->usrptr;
  if (!_nc_Copy_Type(v7, a1) || (v16 = 28 * (v8->nbuf + 1 + (v8->nbuf + 1) * v8->dcols * v8->drows), v17 = malloc(v16), (v8->buf = v17) == 0))
  {
    free_field(v8);
    goto LABEL_11;
  }

  if (v16)
  {
    v18 = 0;
    do
    {
      v19 = (v8->buf + v18);
      v20 = (a1->buf + v18);
      v21 = *v20;
      *(v19 + 12) = *(v20 + 12);
      *v19 = v21;
      v18 += 28;
      --v16;
    }

    while (v16);
  }

  return v8;
}

int set_fieldtype_choice(FIELDTYPE *a1, BOOL (__cdecl *const next_choice)(FIELD *, const void *), BOOL (__cdecl *const prev_choice)(FIELD *, const void *))
{
  v3 = -2;
  if (a1 && next_choice && prev_choice)
  {
    v3 = 0;
    a1->status |= 4u;
    a1->next = next_choice;
    a1->prev = prev_choice;
  }

  *__error() = v3;
  return v3;
}

FIELDTYPE *__cdecl link_fieldtype(FIELDTYPE *a1, FIELDTYPE *a2)
{
  if (!a1 || !a2)
  {
    v11 = __error();
    result = 0;
    v12 = -2;
LABEL_13:
    *v11 = v12;
    return result;
  }

  result = malloc(0x58uLL);
  if (!result)
  {
    v11 = __error();
    result = 0;
    v12 = -1;
    goto LABEL_13;
  }

  v5 = _nc_Default_FieldType;
  v6 = _nc_Default_FieldType[3];
  *&result->makearg = _nc_Default_FieldType[2];
  *&result->freearg = v6;
  *&result->ccheck = v5[4];
  result->prev = *(v5 + 10);
  v7 = v5[1];
  *&result->status = *v5;
  *&result->left = v7;
  status = result->status;
  v9 = result->status | 1;
  result->status = v9;
  v10 = a1->status;
  if ((a1->status & 2) != 0 || (a2->status & 2) != 0)
  {
    v9 = status | 3;
    result->status = status | 3;
  }

  if ((v10 & 4) != 0 || (a2->status & 4) != 0)
  {
    result->status = v9 | 4;
  }

  result->left = a1;
  result->right = a2;
  ++a1->ref;
  ++a2->ref;
  return result;
}

int field_info(const FIELD *a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = a1->rows;
    }

    if (a3)
    {
      *a3 = a1->cols;
    }

    if (a4)
    {
      *a4 = a1->frow;
    }

    if (a5)
    {
      *a5 = a1->fcol;
    }

    if (a6)
    {
      *a6 = a1->nrow;
    }

    v7 = 0;
    if (a7)
    {
      *a7 = a1->nbuf;
    }
  }

  else
  {
    v7 = -2;
  }

  *__error() = v7;
  return v7;
}

int dynamic_field_info(const FIELD *a1, int *a2, int *a3, int *a4)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = a1->drows;
    }

    if (a3)
    {
      *a3 = a1->dcols;
    }

    v4 = 0;
    if (a4)
    {
      *a4 = a1->maxgrow;
    }
  }

  else
  {
    v4 = -2;
  }

  *__error() = v4;
  return v4;
}

int set_field_just(FIELD *a1, int a2)
{
  if (a2 > 3)
  {
    v2 = -2;
  }

  else
  {
    if (!a1)
    {
      a1 = _nc_Default_Field;
    }

    if (a1->just == a2)
    {
      v2 = 0;
    }

    else
    {
      a1->just = a2;
      v2 = _nc_Synchronize_Attributes(a1);
    }
  }

  *__error() = v2;
  return v2;
}

int field_just(const FIELD *a1)
{
  v1 = _nc_Default_Field;
  if (a1)
  {
    v1 = a1;
  }

  return v1->just;
}

FIELD *__cdecl link_field(FIELD *a1, int a2, int a3)
{
  v3 = -2;
  if (!a1)
  {
    goto LABEL_7;
  }

  v4 = a3;
  v5 = a2;
  if ((a3 | a2) < 0)
  {
    goto LABEL_7;
  }

  v7 = malloc(0x88uLL);
  if (!v7)
  {
LABEL_6:
    v3 = -1;
LABEL_7:
    v8 = 0;
    *__error() = v3;
    return v8;
  }

  v8 = v7;
  v9 = _nc_Default_Field;
  *v7 = *_nc_Default_Field;
  v11 = v9[1];
  v10 = v9[2];
  v12 = v9[3];
  *(v7 + 4) = v9[4];
  v13 = *(v9 + 16);
  v14 = v9[5];
  v15 = v9[7];
  *(v7 + 6) = v9[6];
  *(v7 + 7) = v15;
  *(v7 + 2) = v10;
  *(v7 + 3) = v12;
  *(v7 + 1) = v11;
  *(v7 + 16) = v13;
  *(v7 + 5) = v14;
  *(v7 + 3) = v5;
  *(v7 + 4) = v4;
  *(v7 + 9) = a1->link;
  a1->link = v7;
  *(v7 + 2) = *&a1->rows;
  *(v7 + 7) = *&a1->nbuf;
  *(v7 + 12) = *&a1->drows;
  *(v7 + 20) = *&a1->maxgrow;
  *(v7 + 36) = *&a1->pad;
  *(v7 + 104) = *&a1->buf;
  if (!_nc_Copy_Type(v7, a1))
  {
    free_field(v8);
    goto LABEL_6;
  }

  return v8;
}

int set_max_field(FIELD *a1, int a2)
{
  v2 = -2;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    v3 = a1->nrow + a1->rows;
    if (!a2 || (v3 != 1 ? (dcols = a1->drows) : (dcols = a1->dcols), dcols <= a2))
    {
      a1->maxgrow = a2;
      status = a1->status;
      a1->status &= ~8u;
      if ((a1->opts & 0x200) != 0 || a2 && (v3 != 1 ? (drows = a1->drows) : (drows = a1->dcols), drows >= a2))
      {
        v2 = 0;
      }

      else
      {
        v2 = 0;
        a1->status = status | 8;
      }
    }
  }

  *__error() = v2;
  return v2;
}

int move_field(FIELD *a1, int a2, int a3)
{
  v3 = -2;
  if (a1 && ((a3 | a2) & 0x80000000) == 0)
  {
    if (a1->form)
    {
      v3 = -4;
    }

    else
    {
      v3 = 0;
      a1->frow = a2;
      a1->fcol = a3;
    }
  }

  *__error() = v3;
  return v3;
}

FIELDTYPE *__cdecl new_fieldtype(BOOL (__cdecl *const field_check)(FIELD *, const void *), BOOL (__cdecl *const char_check)(int, const void *))
{
  if (field_check | char_check)
  {
    result = malloc(0x58uLL);
    if (result)
    {
      v5 = xmmword_2A13C1940;
      *&result->freearg = xmmword_2A13C1930;
      *&result->ccheck = v5;
      v6 = xmmword_2A13C1920;
      *&result->left = xmmword_2A13C1910;
      *&result->makearg = v6;
      result->prev = qword_2A13C1950;
      *&result->status = xmmword_2A13C1900;
      result->fcheck = field_check;
      result->ccheck = char_check;
      return result;
    }

    v7 = __error();
    result = 0;
    v8 = -1;
  }

  else
  {
    v7 = __error();
    result = 0;
    v8 = -2;
  }

  *v7 = v8;
  return result;
}

int free_fieldtype(FIELDTYPE *a1)
{
  if (a1)
  {
    if (a1->ref || (a1->status & 8) != 0)
    {
      v3 = -4;
    }

    else
    {
      if (a1->status)
      {
        left = a1->left;
        if (left)
        {
          --left->ref;
        }

        right = a1->right;
        if (right)
        {
          --right->ref;
        }
      }

      free(a1);
      v3 = 0;
    }
  }

  else
  {
    v3 = -2;
  }

  *__error() = v3;
  return v3;
}

int set_field_opts(FIELD *a1, Field_Options a2)
{
  if (!a1)
  {
    a1 = _nc_Default_Field;
  }

  v2 = _nc_Synchronize_Options(a1, a2 & 0x7FF);
  *__error() = v2;
  return v2;
}

Field_Options field_opts(const FIELD *a1)
{
  v1 = _nc_Default_Field;
  if (a1)
  {
    v1 = a1;
  }

  return v1->opts & 0x7FF;
}

int field_opts_on(FIELD *a1, Field_Options a2)
{
  if (!a1)
  {
    a1 = _nc_Default_Field;
  }

  v2 = _nc_Synchronize_Options(a1, a1->opts | a2 & 0x7FFu);
  *__error() = v2;
  return v2;
}

int field_opts_off(FIELD *a1, Field_Options a2)
{
  if (!a1)
  {
    a1 = _nc_Default_Field;
  }

  v2 = _nc_Synchronize_Options(a1, a1->opts & (~a2 | 0xFFFFF800));
  *__error() = v2;
  return v2;
}

int set_field_pad(FIELD *a1, int a2)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = _nc_Default_Field;
  }

  if (a2 <= 0x7Fu)
  {
    if ((*(MEMORY[0x29EDCA600] + 4 * a2 + 60) & 0x40000) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v4 = -2;
    goto LABEL_11;
  }

  if (!__maskrune(a2, 0x40000uLL))
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v3->pad == a2)
  {
    v4 = 0;
  }

  else
  {
    v3->pad = a2;
    v4 = _nc_Synchronize_Attributes(v3);
  }

LABEL_11:
  *__error() = v4;
  return v4;
}

int field_pad(const FIELD *a1)
{
  v1 = _nc_Default_Field;
  if (a1)
  {
    v1 = a1;
  }

  return v1->pad;
}

int set_new_page(FIELD *a1, BOOL a2)
{
  v2 = _nc_Default_Field;
  if (a1)
  {
    v2 = a1;
  }

  if (v2->form)
  {
    v3 = -4;
  }

  else
  {
    v3 = 0;
    if (a2)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    v2->status = v2->status & 0xFFFB | v4;
  }

  *__error() = v3;
  return v3;
}

BOOL new_page(const FIELD *a1)
{
  v1 = _nc_Default_Field;
  if (a1)
  {
    v1 = a1;
  }

  return (v1->status >> 2) & 1;
}

BOOL field_status(const FIELD *a1)
{
  v1 = _nc_Default_Field;
  if (a1)
  {
    v1 = a1;
  }

  return v1->status & 1;
}

int set_field_type(FIELD *a1, FIELDTYPE *a2, ...)
{
  va_start(va, a2);
  v9 = 0;
  va_copy(v10, va);
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = _nc_Default_Field;
  }

  _nc_Free_Type(v3);
  v3->type = a2;
  p_type = &v3->type;
  Argument = _nc_Make_Argument(a2, &v10, &v9);
  p_type[1] = Argument;
  v6 = *p_type;
  if (v9)
  {
    _nc_Free_Argument(v6, Argument);
    *p_type = 0;
    p_type[1] = 0;
    v7 = -1;
  }

  else
  {
    v7 = 0;
    if (v6)
    {
      ++*(v6 + 8);
    }
  }

  *__error() = v7;
  return v7;
}

FIELDTYPE *__cdecl field_type(const FIELD *a1)
{
  v1 = _nc_Default_Field;
  if (a1)
  {
    v1 = a1;
  }

  return v1->type;
}

int set_field_userptr(FIELD *a1, void *a2)
{
  v2 = _nc_Default_Field;
  if (a1)
  {
    v2 = a1;
  }

  v2->usrptr = a2;
  *__error() = 0;
  return 0;
}

void *__cdecl field_userptr(const FIELD *a1)
{
  v1 = _nc_Default_Field;
  if (a1)
  {
    v1 = a1;
  }

  return v1->usrptr;
}

int pos_form_cursor(FORM *a1)
{
  if (a1)
  {
    if (a1->status)
    {
      v1 = _nc_Position_Form_Cursor(a1);
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

BOOL data_behind(const FORM *a1)
{
  if (a1)
  {
    if ((a1->status & 1) != 0 && (current = a1->current) != 0)
    {
      v2 = current->nrow + current->rows == 1;
      v3 = 16;
      if (v2)
      {
        v3 = 20;
      }

      LOBYTE(a1) = *(&a1->status + v3) != 0;
    }

    else
    {
      LOBYTE(a1) = 0;
    }
  }

  return a1;
}

BOOL data_ahead(const FORM *a1)
{
  if (!a1)
  {
    return 0;
  }

  if ((a1->status & 1) == 0)
  {
    return 0;
  }

  current = a1->current;
  if (!current)
  {
    return 0;
  }

  rows = current->rows;
  if (current->nrow + rows != 1)
  {
    v13 = a1->toprow + rows;
    if (v13 < current->drows)
    {
      do
      {
        wmove(a1->w, v13, 0);
        w = a1->w;
        if (w)
        {
          v15 = *w;
          v16 = *(w + 1);
        }

        else
        {
          v15 = -1;
          v16 = -1;
        }

        cols = current->cols;
        if (cols >= 1)
        {
          pad_low = LOBYTE(current->pad);
          while (wmove(w, v15, v16) != -1)
          {
            if (win_wch() != -1 && pad_low)
            {
LABEL_34:
              v19 = 1;
              goto LABEL_35;
            }

            ++v16;
            if (!--cols)
            {
              break;
            }
          }
        }

        ++v13;
      }

      while (v13 < current->drows);
      goto LABEL_31;
    }

    return 0;
  }

  v4 = current->cols;
  v5 = a1->begincol + v4;
  dcols = current->dcols;
  if (v5 >= dcols)
  {
    return 0;
  }

  do
  {
    v7 = dcols - v5;
    if (v7 >= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v7;
    }

    wmove(a1->w, 0, v5);
    v9 = a1->w;
    if (v9)
    {
      v10 = *v9;
      v11 = *(v9 + 1);
    }

    else
    {
      v10 = -1;
      v11 = -1;
    }

    if (v8 >= 1)
    {
      v12 = LOBYTE(current->pad);
      while (wmove(v9, v10, v11) != -1)
      {
        if (win_wch() != -1 && v12)
        {
          goto LABEL_34;
        }

        ++v11;
        if (!--v8)
        {
          break;
        }
      }
    }

    LOWORD(v4) = current->cols;
    v5 += v4;
    dcols = current->dcols;
  }

  while (v5 < dcols);
LABEL_31:
  v19 = 0;
LABEL_35:
  wmove(a1->w, a1->currow, a1->curcol);
  return v19;
}

FORM *__cdecl new_form(FIELD **a1)
{
  v1 = *MEMORY[0x29EDC9718];
  if (!*MEMORY[0x29EDC9718] || !*(v1 + 48) || (*(v1 + 41) & 1) != 0 || (v3 = malloc(0x80uLL)) == 0)
  {
    v14 = -1;
    goto LABEL_8;
  }

  v4 = v3;
  v5 = _nc_Default_Form;
  v6 = _nc_Default_Form[2];
  v7 = _nc_Default_Form[3];
  v8 = _nc_Default_Form[1];
  *&v3->status = *_nc_Default_Form;
  *&v3->toprow = v8;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  *&v3->forminit = v5[6];
  *&v3->fieldinit = v11;
  *&v3->field = v9;
  *&v3->page = v10;
  *&v3->opts = v6;
  *&v3->sub = v7;
  v12 = *(v1 + 152);
  v3->win = v12;
  v3->sub = v12;
  v13 = sub_298AA2FB8(v3, a1);
  if (v13)
  {
    v14 = v13;
    free_form(v4);
LABEL_8:
    v4 = 0;
    *__error() = v14;
    return v4;
  }

  if (v4->maxpage < 1)
  {
    v4->curpage = -1;
    v4->current = 0;
  }

  else
  {
    v4->curpage = 0;
    form_driver(v4, -291056);
  }

  return v4;
}

int free_form(FORM *a1)
{
  if (a1)
  {
    if (a1->status)
    {
      v3 = -3;
    }

    else
    {
      sub_298AA2E94(a1);
      page = a1->page;
      if (page)
      {
        free(page);
      }

      free(a1);
      v3 = 0;
    }
  }

  else
  {
    v3 = -2;
  }

  *__error() = v3;
  return v3;
}

void sub_298AA2E94(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v3 = *v1;
    if (*v1)
    {
      v4 = v1 + 1;
      do
      {
        if (*(v3 + 80) == a1)
        {
          *(v3 + 80) = 0;
        }

        v5 = *v4++;
        v3 = v5;
      }

      while (v5);
    }

    *(a1 + 2) = 0;
    *(a1 + 24) = -1;
    *(a1 + 64) = 0;
    v6 = *(a1 + 80);
    if (v6)
    {
      free(v6);
    }

    *(a1 + 80) = 0;
  }
}

int set_form_fields(FORM *a1, FIELD **a2)
{
  if (a1)
  {
    if (a1->status)
    {
      v5 = -3;
    }

    else
    {
      field = a1->field;
      sub_298AA2E94(a1);
      v5 = sub_298AA2FB8(a1, a2);
      if (v5)
      {
        sub_298AA2FB8(a1, field);
      }

      else if (a1->maxpage < 1)
      {
        a1->curpage = -1;
        a1->current = 0;
      }

      else
      {
        a1->curpage = 0;
        form_driver(a1, -291056);
      }
    }
  }

  else
  {
    v5 = -2;
  }

  *__error() = v5;
  return v5;
}

uint64_t sub_298AA2FB8(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  *(a1 + 64) = a2;
  *(a1 + 24) = 0;
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (*(v3 + 80))
        {
          v2 = 4294967292;
          goto LABEL_46;
        }

        if (!v5 || (*v3 & 4) != 0)
        {
          ++v6;
        }

        *(v3 + 80) = a1;
        v7 = v5 + 1;
        v3 = a2[++v5];
      }

      while (v3);
      if ((v7 & 0x8000) != 0)
      {
        goto LABEL_44;
      }

      v8 = malloc(8 * v6);
      if (v8)
      {
        v9 = 0;
        *(a1 + 80) = v8;
        v10 = *(a1 + 2);
        v11 = *(a1 + 4);
        v12 = v8;
        do
        {
          if (v9)
          {
            v13 = *(v2 + 8 * v9);
            if ((*v13 & 4) != 0)
            {
              v12[4] = v9;
              v12 += 4;
              *(v12 - 3) = v9 - 1;
            }
          }

          else
          {
            *v12 = 0;
            v13 = *v2;
          }

          v14 = v13[1] + v13[3];
          v15 = v13[4];
          v16 = v13[2];
          if (v14 > v10)
          {
            *(a1 + 2) = v14;
            v10 = v14;
          }

          v17 = v16 + v15;
          if (v17 > v11)
          {
            *(a1 + 4) = v17;
            v11 = v17;
          }

          ++v9;
        }

        while ((v7 & 0xFFFF7FFF) != v9);
        v12[1] = v7 - 1;
        *(a1 + 24) = v7;
        *(a1 + 26) = v6;
        v18 = v6;
        if (v18 >= 1)
        {
          for (i = 0; i != v18; ++i)
          {
            v20 = &v8[4 * i];
            v21 = v20[1];
            if (*v20 <= v21)
            {
              v23 = 0;
              v24 = *v20;
              do
              {
                v25 = *(v2 + 8 * v24);
                *(v25 + 34) = v24;
                *(v25 + 32) = i;
                if (v23)
                {
                  v26 = *(v25 + 6);
                  v27 = v23;
                  while (1)
                  {
                    v28 = *(v27 + 6);
                    if (v28 >= v26 && (v28 != v26 || *(v27 + 8) >= *(v25 + 8)))
                    {
                      break;
                    }

                    v27 = *(v27 + 56);
                    if (v27 == v23)
                    {
                      v29 = 0;
                      goto LABEL_35;
                    }
                  }

                  v29 = v23;
LABEL_35:
                  v30 = *(v27 + 64);
                  *(v25 + 56) = v27;
                  *(v25 + 64) = v30;
                  *(v27 + 64) = v25;
                  *(*(v25 + 64) + 56) = v25;
                  if (v27 == v29)
                  {
                    v23 = v25;
                  }
                }

                else
                {
                  *(v25 + 56) = v25;
                  *(v25 + 64) = v25;
                  v23 = v25;
                }
              }

              while (v24++ != v21);
              if (v23)
              {
                v22 = *(v23 + 34);
                LOWORD(v23) = *(*(v23 + 64) + 34);
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = 0;
              LOWORD(v23) = 0;
            }

            v20[2] = v22;
            v20[3] = v23;
          }
        }

        v2 = 0;
      }

      else
      {
        v2 = 0xFFFFFFFFLL;
      }
    }

    else
    {
LABEL_44:
      v2 = 4294967294;
    }
  }

LABEL_46:
  *__error() = v2;
  return v2;
}

FIELD **__cdecl form_fields(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  return v1->field;
}

int field_count(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  return v1->maxfield;
}

uint64_t _nc_get_fieldbuffer(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v4 = *(result + 56);
  if (!v4 || (v5 = *(v4 + 4), v5 < 0))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    v18 = a2[9];
    result = (*MEMORY[0x29EDC9720])();
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      if (v8 >= a2[3])
      {
        break;
      }

      wmove(v4, v8, 0);
      v10 = (a3 + 28 * v9);
      v11 = a2[4];
      result = win_wchnstr();
      if (v11 >= 1)
      {
        v12 = v11;
        do
        {
          v13 = *v10;
          *v10 = v13;
          if (*v7 >= 0x60000u)
          {
            v10[6] = 0;
          }

          *v10 = v13;
          v10 += 7;
          --v12;
        }

        while (v12);
      }

      v9 += v11;
    }

    while (v8++ != v5);
    v15 = a3 + 28 * v9;
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 24) = 0;
    *(v15 + 16) = 0;
    if (v18 != 32 && v9 >= 1)
    {
      v16 = a3 + 8;
      do
      {
        if (*(v16 - 4) == v18 && !*v16)
        {
          v17 = xmmword_2A13C18A8;
          *(v16 + 4) = *(&xmmword_2A13C18A8 + 12);
          *(v16 - 8) = v17;
        }

        v16 += 28;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t _nc_Position_Form_Cursor(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      v4 = *(*MEMORY[0x29EDC9718] + 152);
    }
  }

  wmove(v2, *(a1 + 8), *(a1 + 12));
  if ((*(v3 + 48) & 4) != 0 && *(v3 + 12) <= *(v3 + 2) && *(v3 + 16) <= *(v3 + 4))
  {
    v4 = *(a1 + 56);
  }

  else
  {
    wmove(v4, *(a1 + 8) + *(v3 + 6) - *(a1 + 16), *(a1 + 12) + *(v3 + 8) - *(a1 + 20));
  }

  wcursyncup(v4);
  return 0;
}

uint64_t _nc_Refresh_Current_Field(uint64_t a1)
{
  if (!a1)
  {
    v10 = __error();
    result = 4294967294;
    goto LABEL_21;
  }

  v2 = *(a1 + 56);
  if (!v2 || (v3 = *(a1 + 72)) == 0)
  {
    v10 = __error();
    result = 0xFFFFFFFFLL;
LABEL_21:
    *v10 = result;
    return result;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      v4 = *(*MEMORY[0x29EDC9718] + 152);
    }
  }

  if ((v3[24] & 4) == 0)
  {
    goto LABEL_35;
  }

  v5 = v3[1];
  if (*(v3 + 3) > v5)
  {
    if (*(v3 + 6) + v5 != 1)
    {
      v6 = *(a1 + 16);
      v7 = v6 + v5;
      v8 = *(a1 + 8);
      v9 = *v3;
      if (v8 < v6)
      {
        *(a1 + 16) = v8;
        v9 |= 2u;
        *v3 = v9;
        v6 = v8;
      }

      if (v8 >= v7)
      {
        v6 = v8 - v5 + 1;
        *(a1 + 16) = v6;
        v9 |= 2u;
        *v3 = v9;
      }

      if ((v9 & 2) != 0)
      {
        v15 = v6 + v5;
        *v3 = v9 & 0xFFFD;
      }

      else
      {
        if (v6 < v7)
        {
          while (!is_linetouched(*(a1 + 56), v6))
          {
            if (v7 == ++v6)
            {
              goto LABEL_33;
            }
          }
        }

        if (v6 >= v7)
        {
          goto LABEL_33;
        }

        v15 = v6;
        while (is_linetouched(*(a1 + 56), v15))
        {
          if (v7 == ++v15)
          {
            v15 = v7;
            goto LABEL_31;
          }
        }
      }

      goto LABEL_31;
    }

    goto LABEL_24;
  }

  if (*(v3 + 4) > v3[2])
  {
    if (*(v3 + 6) + v5 != 1)
    {
      v6 = *(a1 + 16);
      v15 = v6 + v5;
LABEL_31:
      if (v15 != v6)
      {
        copywin(*(a1 + 56), v4, v6, 0, v6 + v3[3] - *(a1 + 16), v3[4], v15 + v3[3] + ~*(a1 + 16), v3[4] + v3[2] - 1, 0);
      }

LABEL_33:
      v2 = v4;
      goto LABEL_34;
    }

LABEL_24:
    v12 = *(a1 + 12);
    v13 = *(a1 + 20);
    if (v12 >= v13)
    {
      v14 = v3[2];
      if (v12 >= v13 + v14)
      {
        v13 = v12 - v14 + 1;
        *(a1 + 20) = v13;
      }
    }

    else
    {
      *(a1 + 20) = v12;
      v14 = v3[2];
      v13 = v12;
    }

    copywin(v2, v4, 0, v13, v3[3], v3[4], v3[3], v3[4] + v14 - 1, 0);
    goto LABEL_33;
  }

LABEL_34:
  wsyncup(v2);
LABEL_35:
  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = *(v16 + 4) + 1;
  }

  else
  {
    v17 = -1;
  }

  wtouchln(v16, 0, v17, 0);

  return _nc_Position_Form_Cursor(a1);
}

uint64_t _nc_Synchronize_Attributes(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = *(a1 + 80);
  if (!v2 || (*v2 & 1) == 0 || (*(a1 + 48) & 1) == 0 || *(a1 + 32) != *(v2 + 28))
  {
    return 0;
  }

  if (*(v2 + 72) == a1)
  {
    sub_298AA38C4(*(a1 + 80));
    wbkgdset(*(v2 + 56), *(a1 + 44) | *(a1 + 36));
    v4 = *(v2 + 56);
    if (v4)
    {
      v5 = *(a1 + 40);
      *(v4 + 116) = BYTE1(v5);
      *(v4 + 16) = v5;
    }

    werase(v4);
    wmove(*(v2 + 56), *(v2 + 8), *(v2 + 12));
    v6 = *(a1 + 48);
    if ((v6 & 4) == 0)
    {
      v7 = *(v2 + 48);
      if (!v7)
      {
        v7 = *(v2 + 40);
        if (!v7)
        {
          v7 = *(*MEMORY[0x29EDC9718] + 152);
        }
      }

      copywin(*(v2 + 56), v7, 0, 0, *(a1 + 6), *(a1 + 8), *(a1 + 2) - 1, *(a1 + 4) - 1, 0);
      wsyncup(v7);
      sub_298AA3A18(a1, *(v2 + 56));
      *a1 |= 2u;
      _nc_Refresh_Current_Field(v2);
      return 0;
    }

    if (*(a1 + 30) && *(a1 + 24) + *(a1 + 2) == 1)
    {
      if ((v6 & 0x200) != 0)
      {
        if ((v6 & 0x400) != 0 || *(a1 + 16) == *(a1 + 4))
        {
          goto LABEL_27;
        }
      }

      else if ((v6 & 0x400) != 0)
      {
LABEL_27:
        sub_298AA3920(a1, *(v2 + 56));
        return 0;
      }
    }

    sub_298AA3A18(a1, *(v2 + 56));
    return 0;
  }

  return sub_298AA3B28(a1, 0);
}

uint64_t sub_298AA38C4(uint64_t result)
{
  if ((*result & 0x10) != 0)
  {
    v2 = result;
    *result = *result & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(result, *(result + 72), *(*(result + 72) + 104));
    v3 = *(v2 + 56);
    v4 = *(v2 + 8);
    v5 = *(v2 + 12);

    return wmove(v3, v4, v5);
  }

  return result;
}

uint64_t sub_298AA3920(uint64_t result, WINDOW *a2)
{
  v2 = *(result + 104);
  v3 = *(result + 16) * *(result + 12);
  v4 = v2 + 28 * v3;
  v5 = v2;
  if (v3 >= 1)
  {
    do
    {
      if (*(v5 + 4) != 32)
      {
        break;
      }

      if (*(v5 + 8))
      {
        break;
      }

      v5 += 28;
    }

    while (v5 < v4);
  }

  if (v5 == v4)
  {
    v6 = *(result + 104);
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 + 28 * v3 - v6;
  do
  {
    v8 = v7;
    if (v4 <= v2)
    {
      break;
    }

    if (*(v4 - 24) != 32)
    {
      break;
    }

    v9 = *(v4 - 20);
    v4 -= 28;
    v7 -= 28;
  }

  while (!v9);
  if ((-1227133513 * (v8 >> 2)) >= 1)
  {
    wmove(a2, 0, 0);

    return wadd_wchnstr();
  }

  return result;
}

uint64_t sub_298AA3A18(uint64_t a1, WINDOW *a2)
{
  if (a2)
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 2);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = 0;
      v7 = *(a1 + 104);
      v8 = 28 * *(a2 + 3) + 28;
      do
      {
        v9 = v7;
        v7 += v8;
        v10 = v8;
        do
        {
          v11 = v10;
          v12 = v9 + v10;
          if (v12 <= v9)
          {
            break;
          }

          if (*(v12 - 24) != 32)
          {
            break;
          }

          v13 = *(v12 - 20);
          v10 = v11 - 28;
        }

        while (!v13);
        if ((-1227133513 * (v11 >> 2)) >= 1)
        {
          wmove(a2, v6, 0);
          wadd_wchnstr();
        }
      }

      while (v6++ != v5);
    }
  }

  else
  {
    v4 = -1;
    v3 = -1;
  }

  return wmove(a2, v3, v4);
}

uint64_t sub_298AA3B28(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 80);
  v5 = *(v4 + 48);
  if (!v5)
  {
    v5 = *(v4 + 40);
    if (!v5)
    {
      v5 = *(*MEMORY[0x29EDC9718] + 152);
    }
  }

  v6 = derwin(v5, *(a1 + 2), *(a1 + 4), *(a1 + 6), *(a1 + 8));
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (*(a1 + 48))
  {
    wbkgdset(v6, *(a1 + 44) | *(a1 + 36));
    v8 = (a1 + 40);
  }

  else
  {
    v8 = (v5 + 16);
  }

  v10 = *v8;
  *(v7 + 29) = BYTE1(v10);
  *(v7 + 4) = v10;
  werase(v7);
  if ((a2 & 1) == 0)
  {
    v11 = *(a1 + 48);
    if ((v11 & 4) != 0)
    {
      if (*(a1 + 30) && *(a1 + 24) + *(a1 + 2) == 1)
      {
        if ((v11 & 0x200) != 0)
        {
          if ((v11 & 0x400) != 0 || *(a1 + 16) == *(a1 + 4))
          {
            goto LABEL_23;
          }
        }

        else if ((v11 & 0x400) != 0)
        {
LABEL_23:
          sub_298AA413C(a1, v7);
          goto LABEL_21;
        }
      }

      sub_298AA3A18(a1, v7);
    }

LABEL_21:
    *a1 &= ~2u;
  }

  wsyncup(v7);
  delwin(v7);
  return 0;
}

uint64_t _nc_Synchronize_Options(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = a2;
  v4 = *(a1 + 48);
  v5 = v4 ^ a2;
  *(a1 + 48) = a2;
  v6 = *(a1 + 80);
  if (!v6 || (*v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(v6 + 72) == a1)
  {
    *(a1 + 48) = v4;
    return 4294967282;
  }

  if (*(v6 + 28) != *(a1 + 32))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    v7 = (a2 & 1) == 0;
LABEL_34:
    v8 = sub_298AA3B28(a1, v7);
    if ((v5 & 0x200) == 0)
    {
      return v8;
    }

    goto LABEL_12;
  }

  if ((a2 & 1) == 0)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  if ((v5 & 4) != 0)
  {
    goto LABEL_34;
  }

LABEL_11:
  if ((v5 & 0x200) == 0)
  {
    return v8;
  }

LABEL_12:
  v9 = *(a1 + 24) + *(a1 + 2);
  if ((v2 & 0x200) != 0)
  {
    *a1 &= ~8u;
    if (v9 != 1 || *(a1 + 16) != *(a1 + 4))
    {
      return v8;
    }

    goto LABEL_24;
  }

  v10 = *(a1 + 20);
  if (!v10)
  {
    *a1 |= 8u;
    if (v9 != 1)
    {
      return v8;
    }

LABEL_24:
    if (*(a1 + 30))
    {
      v12 = *(a1 + 80);
      if (v12)
      {
        if ((*v12 & 1) != 0 && (*(a1 + 48) & 1) != 0 && *(a1 + 32) == v12[14] && sub_298AA3B28(a1, 0))
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    return v8;
  }

  if (v9 == 1)
  {
    if (*(a1 + 16) >= v10)
    {
      return v8;
    }

    *a1 |= 8u;
    goto LABEL_24;
  }

  if (*(a1 + 12) < v10)
  {
    *a1 |= 8u;
  }

  return v8;
}

uint64_t _nc_Set_Current_Field(uint64_t a1, uint64_t a2)
{
  result = 4294967294;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 72);
      if (v5)
      {
        if (*(a2 + 80) == a1)
        {
          if ((*a1 & 2) != 0)
          {
            return 4294967291;
          }

          if (!*(a1 + 64))
          {
            return 4294967285;
          }

          if (v5 == a2 && (*a1 & 1) != 0)
          {
LABEL_44:
            result = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            return result;
          }

          if (!*(a1 + 56) || (*(v5 + 48) & 1) == 0 || *(*(v5 + 80) + 28) != *(v5 + 32))
          {
LABEL_26:
            v10 = *(a2 + 12);
            if ((*(a2 + 48) & 4) != 0 && (v11 = *(a2 + 2), v10 <= v11) && (v12 = *(a2 + 4), *(a2 + 16) <= v12))
            {
              v24 = *(a1 + 48);
              if (!v24)
              {
                v24 = *(a1 + 40);
                if (!v24)
                {
                  v24 = *(*MEMORY[0x29EDC9718] + 152);
                }
              }

              v13 = derwin(v24, v11, v12, *(a2 + 6), *(a2 + 8));
            }

            else
            {
              v13 = newpad(v10, *(a2 + 16));
            }

            v14 = v13;
            if (!v13)
            {
              return 0xFFFFFFFFLL;
            }

            *(a1 + 72) = a2;
            v15 = *(a1 + 56);
            if (v15)
            {
              delwin(v15);
            }

            *(a1 + 56) = v14;
            *a1 &= ~0x10u;
            wbkgdset(v14, *(a2 + 44) | *(a2 + 36));
            v16 = *(a1 + 56);
            if (v16)
            {
              v17 = *(a2 + 40);
              *(v16 + 116) = BYTE1(v17);
              *(v16 + 16) = v17;
            }

            v18 = *(a2 + 48);
            if ((v18 & 4) != 0 && (v19 = *(a2 + 2), *(a2 + 12) <= v19) && (v20 = *(a2 + 16), v21 = *(a2 + 4), v20 <= v21))
            {
              if (*(a2 + 30) && *(a2 + 24) + v19 == 1)
              {
                v25 = (v18 & 0x200) != 0 && v20 == v21;
                v26 = !v25;
                if ((v18 & 0x400) != 0 || !v26)
                {
                  werase(v16);
                  sub_298AA3920(a2, *(a1 + 56));
                  wsyncup(*(a1 + 56));
                }
              }
            }

            else
            {
              werase(v16);
              sub_298AA3A18(a2, *(a1 + 56));
            }

            v22 = *(a1 + 56);
            if (v22)
            {
              v23 = *(v22 + 4) + 1;
            }

            else
            {
              v23 = -1;
            }

            wtouchln(v22, 0, v23, 0);
            goto LABEL_44;
          }

          _nc_Refresh_Current_Field(a1);
          v6 = *(v5 + 48);
          if ((v6 & 4) != 0)
          {
            v7 = *(v5 + 2);
            if (*(v5 + 12) > v7)
            {
              v8 = *v5;
              if (*(a1 + 16))
              {
                v9 = v8 | 2;
              }

              else
              {
                v9 = v8 & 0xFFFD;
              }

              *v5 = v9;
              goto LABEL_25;
            }

            if (*(v5 + 30) && *(v5 + 24) + v7 == 1)
            {
              if ((v6 & 0x200) != 0)
              {
                if ((v6 & 0x400) == 0 && *(v5 + 16) != *(v5 + 4))
                {
                  goto LABEL_25;
                }
              }

              else if ((v6 & 0x400) == 0)
              {
                goto LABEL_25;
              }

              _nc_get_fieldbuffer(a1, v5, *(v5 + 104));
              werase(*(a1 + 56));
              sub_298AA413C(v5, *(a1 + 56));
              v27 = *(a1 + 56);
              if ((*(v5 + 49) & 4) != 0 && !*(v27 + 64))
              {
                v28 = *(a1 + 48);
                if (!v28)
                {
                  v28 = *(a1 + 40);
                  if (!v28)
                  {
                    v28 = *(*MEMORY[0x29EDC9718] + 152);
                  }
                }

                copywin(v27, v28, 0, 0, *(v5 + 6), *(v5 + 8), *(v5 + 6), *(v5 + 8) + *(v5 + 4) - 1, 0);
                v27 = *(a1 + 48);
                if (!v27)
                {
                  v27 = *(a1 + 40);
                  if (!v27)
                  {
                    v27 = *(*MEMORY[0x29EDC9718] + 152);
                  }
                }
              }

              wsyncup(v27);
            }
          }

LABEL_25:
          delwin(*(a1 + 56));
          *(a1 + 56) = 0;
          goto LABEL_26;
        }
      }
    }
  }

  return result;
}

uint64_t sub_298AA413C(uint64_t result, WINDOW *a2)
{
  v2 = *(result + 104);
  v3 = *(result + 16) * *(result + 12);
  v4 = v2 + 28 * v3;
  v5 = v2;
  if (v3 >= 1)
  {
    do
    {
      if (*(v5 + 4) != 32)
      {
        break;
      }

      if (*(v5 + 8))
      {
        break;
      }

      v5 += 28;
    }

    while (v5 < v4);
  }

  if (v5 == v4)
  {
    v6 = *(result + 104);
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 + 28 * v3 - v6;
  do
  {
    v8 = v7;
    if (v4 <= v2)
    {
      break;
    }

    if (*(v4 - 24) != 32)
    {
      break;
    }

    v9 = *(v4 - 20);
    v4 -= 28;
    v7 -= 28;
  }

  while (!v9);
  v10 = -1227133513 * (v8 >> 2);
  if (v10 >= 1)
  {
    v11 = *(result + 4) - v10;
    if (v11 < 0)
    {
      v14 = 0;
    }

    else
    {
      v12 = *(result + 30);
      v13 = v11 >> 1;
      if (v12 != 2)
      {
        v13 = 0;
      }

      if (v12 == 3)
      {
        v14 = *(result + 4) - v10;
      }

      else
      {
        v14 = v13;
      }
    }

    wmove(a2, 0, v14);

    return wadd_wchnstr();
  }

  return result;
}

uint64_t _nc_Internal_Validation(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *a1;
  if ((*a1 & 0x10) != 0)
  {
    *a1 = v3 & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(a1, v2, *(v2 + 104));
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
    v3 = *a1;
  }

  if ((v3 & 0x20) != 0 || (*(v2 + 49) & 1) == 0)
  {
    result = sub_298AA42F4(*(v2 + 88), v2, *(v2 + 96));
    if (!result)
    {
      return result;
    }

    *a1 &= ~0x20u;
    *v2 |= 1u;
    sub_298AA43B4(v2);
  }

  return 1;
}

uint64_t sub_298AA42F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = a1;
    while (1)
    {
      if ((*(a2 + 48) & 0x80) != 0)
      {
        v6 = (*(a2 + 104) + 8);
        while (1)
        {
          v7 = *(v6 - 1);
          if (v7 != 32)
          {
            break;
          }

          v8 = *v6;
          v6 += 7;
          if (v8)
          {
            goto LABEL_9;
          }
        }

        if (!v7)
        {
          break;
        }
      }

LABEL_9:
      if ((*v5 & 1) == 0)
      {
        v9 = *(v5 + 56);
        if (!v9)
        {
          return 1;
        }

        return v9(a2, a3);
      }

      if ((sub_298AA42F4(*(v5 + 16), a2, *a3) & 1) == 0)
      {
        v5 = *(v5 + 24);
        a3 = a3[1];
        if (v5)
        {
          continue;
        }
      }

      return 1;
    }
  }

  return 1;
}

uint64_t sub_298AA43B4(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = *(a1 + 72);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 == a1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v4 = sub_298AA5B4C(v2);
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4 == 0;
    }

    if (v5)
    {
      v3 = v3;
    }

    else
    {
      v3 = v4;
    }

    v2 = *(v2 + 72);
  }

  while (v2 != a1 && v2 != 0);
  return v3;
}

uint64_t _nc_First_Active_Field(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 80);
  v3 = *(a1 + 28);
  v4 = (v1 + 8 * *(v2 + 8 * v3 + 2));
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v7 + 8 * *(*v4 + 34));
  v9 = (*(v6 + 80) + 8 * *(v6 + 28));
  v10 = (v7 + 8 * *v9);
  v11 = (v7 + 8 * v9[1]);
  do
  {
    if (v8 == v11)
    {
      v8 = v10;
    }

    else
    {
      ++v8;
    }

    result = *v8;
    v13 = *(*v8 + 48) & 3;
  }

  while (*v8 != v5 && v13 != 3);
  if (v13 != 3 && result == v5)
  {
    v16 = (v1 + 8 * *(result + 34));
    v17 = (v1 + 8 * *(v2 + 8 * v3));
    do
    {
      if (v16 == v4)
      {
        v16 = v17;
      }

      else
      {
        ++v16;
      }

      v18 = *(*v16 + 48) & 1;
    }

    while (result != *v16 && v18 == 0);
    v20 = *v16 == v5 && v18 == 0;
    result = *v16;
    if (v20)
    {
      return *v17;
    }
  }

  return result;
}

uint64_t _nc_Set_Form_Page(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 28) == a2)
  {
    return 0;
  }

  v7 = *(a1 + 48);
  if (!v7)
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      v7 = *(*MEMORY[0x29EDC9718] + 152);
    }
  }

  werase(v7);
  *(a1 + 28) = a2;
  v8 = *(*(a1 + 64) + 8 * *(*(a1 + 80) + 8 * a2 + 4));
  v9 = v8;
  do
  {
    if ((*(v9 + 48) & 1) != 0 && sub_298AA3B28(v9, 0))
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *(v9 + 56);
  }

  while (v9 != v8);
  if (a3)
  {

    return _nc_Set_Current_Field(a1, a3);
  }

  else
  {

    return sub_298AA45F4(a1);
  }
}

uint64_t sub_298AA45F4(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 8 * *(*(a1 + 80) + 8 * *(a1 + 28) + 2));
  v2 = *(v1 + 80);
  v3 = *(v2 + 64);
  v4 = (v3 + 8 * *(v1 + 34));
  v5 = (*(v2 + 80) + 8 * *(v2 + 28));
  v6 = (v3 + 8 * *v5);
  v7 = (v3 + 8 * v5[1]);
  do
  {
    if (v4 == v7)
    {
      v4 = v6;
    }

    else
    {
      ++v4;
    }
  }

  while (*v4 != v1 && (*(*v4 + 48) & 3) != 3);
  return _nc_Set_Current_Field(a1, *v4);
}

int form_driver(FORM *a1, int a2)
{
  if (!a1)
  {
    v5 = __error();
    v4 = -2;
LABEL_56:
    *v5 = v4;
    return v4;
  }

  if (!a1->field)
  {
    v5 = __error();
    v4 = -11;
    goto LABEL_56;
  }

  if (a2 != -291056)
  {
    if ((a1->status & 2) != 0)
    {
      v5 = __error();
      v4 = -5;
      goto LABEL_56;
    }

    if ((a1->status & 1) == 0)
    {
      v5 = __error();
      v4 = -7;
      goto LABEL_56;
    }

    if ((a2 - 512) <= 0x38)
    {
      v6 = (&unk_2A1F188C0 + 16 * (a2 - 512));
      v7 = *v6;
      if (a2 == v7)
      {
        if (WORD1(v7) <= 8u)
        {
          v8 = *(v6 + 1);
          if (v8)
          {
            v9 = v7 >> 16;
            if ((0x1C4uLL >> v9))
            {
              v10 = v8(a1);
            }

            else
            {
              v10 = (off_2A1F18C50[v9])(v8, a1);
            }

            goto LABEL_54;
          }
        }

        v4 = -1;
LABEL_55:
        _nc_Refresh_Current_Field(a1);
        v5 = __error();
        goto LABEL_56;
      }

LABEL_37:
      v4 = -8;
      goto LABEL_55;
    }

    if (a2 != 409)
    {
      if (a2 > 0xFF)
      {
        goto LABEL_37;
      }

      if (a2 > 0x7F ? __maskrune(a2, 0x200uLL) : *(MEMORY[0x29EDCA600] + 4 * a2 + 60) & 0x200)
      {
        goto LABEL_37;
      }

      v10 = sub_298AA4DB4(a1, a2);
LABEL_54:
      v4 = v10;
      goto LABEL_55;
    }

    memset(&v26, 0, sizeof(v26));
    win = a1->win;
    if (!win)
    {
      win = *(*MEMORY[0x29EDC9718] + 152);
    }

    if (a1->sub)
    {
      sub = a1->sub;
    }

    else
    {
      sub = win;
    }

    getmouse(&v26);
    if ((v26.bstate & 0x1C) != 0 && wenclose(win, v26.y, v26.x))
    {
      x = v26.x;
      y = v26.y;
      if (wmouse_trafo(*MEMORY[0x29EDC9728], &y, &x, 0))
      {
        v13 = *(sub + 4);
        if (y >= v13)
        {
          if (y <= *(sub + 2) + v13)
          {
            if (wenclose(sub, v26.y, v26.x))
            {
              x = v26.x;
              y = v26.y;
              if (wmouse_trafo(sub, &y, &x, 0))
              {
                v17 = &a1->page[a1->curpage];
                pmin = v17->pmin;
                pmax = v17->pmax;
                if (pmin <= pmax)
                {
                  v21 = pmin;
                  v22 = pmax + 1;
                  while (1)
                  {
                    v23 = a1->field[v21];
                    if ((~v23->opts & 3) == 0 && !sub_298AA4D44(a1->field[v21], y, x))
                    {
                      break;
                    }

                    ++v21;
                    v4 = -12;
                    if (v22 == v21)
                    {
                      goto LABEL_55;
                    }
                  }

                  v10 = _nc_Set_Current_Field(a1, v23);
                  if (!v10)
                  {
                    v10 = _nc_Position_Form_Cursor(a1);
                    if (!v10)
                    {
                      v4 = (LOBYTE(v26.bstate) << 28 >> 31) & 0xFFFFFFF8;
                      goto LABEL_55;
                    }
                  }

                  goto LABEL_54;
                }
              }
            }
          }

          else
          {
            if ((v26.bstate & 4) != 0)
            {
              v14 = a1;
              v15 = 516;
              goto LABEL_53;
            }

            if ((v26.bstate & 8) != 0)
            {
              v14 = a1;
              v15 = 512;
              goto LABEL_53;
            }

            if ((v26.bstate & 0x10) != 0)
            {
              v14 = a1;
              v15 = 519;
              goto LABEL_53;
            }
          }
        }

        else
        {
          if ((v26.bstate & 4) != 0)
          {
            v14 = a1;
            v15 = 517;
            goto LABEL_53;
          }

          if ((v26.bstate & 8) != 0)
          {
            v14 = a1;
            v15 = 513;
            goto LABEL_53;
          }

          if ((v26.bstate & 0x10) != 0)
          {
            v14 = a1;
            v15 = 518;
LABEL_53:
            v10 = form_driver(v14, v15);
            goto LABEL_54;
          }
        }
      }
    }

    v4 = -12;
    goto LABEL_55;
  }

  a1->current = _nc_First_Active_Field(a1);
  v4 = 0;
  *__error() = 0;
  return v4;
}

uint64_t sub_298AA49C0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (!_nc_Internal_Validation(a2))
  {
    return 4294967283;
  }

  if (a2)
  {
    v3 = *(a2 + 120);
    if (v3)
    {
      *a2 |= 2u;
      v3(a2);
      *a2 &= ~2u;
    }

    v4 = *(a2 + 104);
    if (v4)
    {
      *a2 |= 2u;
      v4(a2);
      *a2 &= ~2u;
    }

    v5 = a1(a2);
    v6 = *(a2 + 96);
    if (v6)
    {
      *a2 |= 2u;
      v6(a2);
      *a2 &= ~2u;
    }

    v7 = *(a2 + 112);
    if (v7)
    {
      *a2 |= 2u;
      v7(a2);
      *a2 &= ~2u;
    }

    return v5;
  }

  return a1(0);
}

uint64_t sub_298AA4AE0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (!_nc_Internal_Validation(a2))
  {
    return 4294967283;
  }

  if (a2)
  {
    v3 = *(a2 + 120);
    if (v3)
    {
      *a2 |= 2u;
      v3(a2);
      *a2 &= ~2u;
    }

    v4 = a1(a2);
    v5 = *(a2 + 112);
    if (v5)
    {
      *a2 |= 2u;
      v5(a2);
      *a2 &= ~2u;
    }

    return v4;
  }

  return a1(0);
}

uint64_t sub_298AA4BB0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (*(*(a2 + 72) + 24) + *(*(a2 + 72) + 2) == 1)
  {
    return 4294967284;
  }

  result = a1(a2);
  if (!result)
  {
    **(a2 + 72) |= 2u;
  }

  return result;
}

uint64_t sub_298AA4C10(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (*(*(a2 + 72) + 24) + *(*(a2 + 72) + 2) == 1)
  {
    return a1(a2);
  }

  else
  {
    return 4294967284;
  }
}

uint64_t sub_298AA4C3C(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  if (a1 == sub_298AA729C && (*(a2 + 32) & 2) != 0 && !*(a2 + 8) && !*(a2 + 12))
  {
    v4 = sub_298AA6020;
  }

  else
  {
    if (a1 != sub_298AA6DBC)
    {
      if ((*(*(a2 + 72) + 48) & 8) == 0)
      {
        return 4294967284;
      }

      result = a1(a2);
      if (!result)
      {
        *a2 |= 0x10u;
      }

      return result;
    }

    if ((*(a2 + 32) & 1) == 0 || *(a2 + 8) || *(a2 + 12))
    {

      return sub_298AA6DBC(a2);
    }

    v4 = sub_298AA5FC8;
  }

  return sub_298AA4AE0(v4, a2);
}

uint64_t sub_298AA4D44(__int16 *a1, int a2, int a3)
{
  if (a1 && (v3 = a1[3], v3 <= a2) && a1[1] + v3 > a2 && (v4 = a1[4], v4 <= a3) && a1[2] + v4 > a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294967283;
  }

  *__error() = v5;
  return v5;
}

uint64_t sub_298AA4DB4(uint64_t a1, chtype a2)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 48);
  if ((~v3 & 0xA) != 0)
  {
    goto LABEL_23;
  }

  if ((v3 & 0x20) != 0 && !*(a1 + 8) && !*(a1 + 12) && (*a1 & 0x30) == 0)
  {
    werase(*(a1 + 56));
  }

  v6 = *(a1 + 56);
  if ((*a1 & 4) != 0)
  {
    waddch(v6, a2);
  }

  else
  {
    wmove(v6, *(a1 + 8), *(*(a1 + 72) + 16) - 1);
    v7 = winch(*(a1 + 56));
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
    if (v7 != 32 && v7 != *(*(a1 + 72) + 36))
    {
      if (*(v2 + 24) + *(v2 + 2) != 1 || (*v2 & 8) == 0)
      {
LABEL_23:
        v9 = 4294967284;
        goto LABEL_24;
      }

      if (!sub_298AA577C(v2, 1))
      {
LABEL_32:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }
    }

    winsch(*(a1 + 56), a2);
  }

  v9 = sub_298AA7B48(a1);
  if (!v9)
  {
    if (*(v2 + 12) - 1 == *(a1 + 8))
    {
      v10 = *(v2 + 16) - 1;
      v11 = *(a1 + 12);
      *a1 |= 0x10u;
      if (v10 == v11)
      {
        if ((*v2 & 8) != 0)
        {
          if (!sub_298AA577C(v2, 1))
          {
            goto LABEL_32;
          }
        }

        else if ((*(v2 + 48) & 0x40) != 0)
        {
          v9 = sub_298AA4AE0(sub_298AA5FC8, a1);
          goto LABEL_24;
        }
      }
    }

    else
    {
      *a1 |= 0x10u;
    }

    if (!*(*(a1 + 56) + 176))
    {
      sub_298AA6354(a1);
    }

    v9 = 0;
  }

LABEL_24:
  *__error() = v9;
  return v9;
}

uint64_t form_driver_w(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    v5 = __error();
    v4 = 4294967294;
LABEL_53:
    *v5 = v4;
    return v4;
  }

  if (!*(a1 + 64))
  {
    v5 = __error();
    v4 = 4294967285;
    goto LABEL_53;
  }

  if (a3 != -291056)
  {
    if ((*a1 & 2) != 0)
    {
      v5 = __error();
      v4 = 4294967291;
      goto LABEL_53;
    }

    if ((*a1 & 1) == 0)
    {
      v5 = __error();
      v4 = 4294967289;
      goto LABEL_53;
    }

    if (a2 == 256 && (a3 - 512) <= 0x38)
    {
      v6 = (&unk_2A1F188C0 + 16 * (a3 - 512));
      v7 = *v6;
      if (a3 == v7)
      {
        if (WORD1(v7) <= 8u)
        {
          v8 = *(v6 + 1);
          if (v8)
          {
            v9 = v7 >> 16;
            if ((0x1C4uLL >> v9))
            {
              v10 = v8(a1);
            }

            else
            {
              v10 = (off_2A1F18C50[v9])(v8, a1);
            }

            goto LABEL_51;
          }
        }

        v4 = 0xFFFFFFFFLL;
LABEL_52:
        _nc_Refresh_Current_Field(a1);
        v5 = __error();
        goto LABEL_53;
      }

LABEL_33:
      v4 = 4294967288;
      goto LABEL_52;
    }

    if (a3 != 409)
    {
      if (a2)
      {
        goto LABEL_33;
      }

      v10 = sub_298AA52A4(a1);
LABEL_51:
      v4 = v10;
      goto LABEL_52;
    }

    memset(&v25, 0, sizeof(v25));
    v11 = *(a1 + 40);
    if (!v11)
    {
      v11 = *(*MEMORY[0x29EDC9718] + 152);
    }

    if (*(a1 + 48))
    {
      v12 = *(a1 + 48);
    }

    else
    {
      v12 = v11;
    }

    getmouse(&v25);
    if ((v25.bstate & 0x1C) != 0 && wenclose(v11, v25.y, v25.x))
    {
      x = v25.x;
      y = v25.y;
      if (wmouse_trafo(*MEMORY[0x29EDC9728], &y, &x, 0))
      {
        v13 = *(v12 + 4);
        if (y >= v13)
        {
          if (y <= *(v12 + 2) + v13)
          {
            if (wenclose(v12, v25.y, v25.x))
            {
              x = v25.x;
              y = v25.y;
              if (wmouse_trafo(v12, &y, &x, 0))
              {
                v16 = (*(a1 + 80) + 8 * *(a1 + 28));
                v17 = *v16;
                v18 = v16[1];
                if (v17 <= v18)
                {
                  v20 = v17;
                  v21 = v18 + 1;
                  while (1)
                  {
                    v22 = *(*(a1 + 64) + 8 * v20);
                    if ((~*(v22 + 48) & 3) == 0 && !sub_298AA4D44(*(*(a1 + 64) + 8 * v20), y, x))
                    {
                      break;
                    }

                    ++v20;
                    v4 = 4294967284;
                    if (v21 == v20)
                    {
                      goto LABEL_52;
                    }
                  }

                  v10 = _nc_Set_Current_Field(a1, v22);
                  if (!v10)
                  {
                    v10 = _nc_Position_Form_Cursor(a1);
                    if (!v10)
                    {
                      v4 = (LOBYTE(v25.bstate) << 28 >> 31) & 0xFFFFFFF8;
                      goto LABEL_52;
                    }
                  }

                  goto LABEL_51;
                }
              }
            }
          }

          else
          {
            if ((v25.bstate & 4) != 0)
            {
              v14 = a1;
              v15 = 516;
              goto LABEL_50;
            }

            if ((v25.bstate & 8) != 0)
            {
              v14 = a1;
              v15 = 512;
              goto LABEL_50;
            }

            if ((v25.bstate & 0x10) != 0)
            {
              v14 = a1;
              v15 = 519;
              goto LABEL_50;
            }
          }
        }

        else
        {
          if ((v25.bstate & 4) != 0)
          {
            v14 = a1;
            v15 = 517;
            goto LABEL_50;
          }

          if ((v25.bstate & 8) != 0)
          {
            v14 = a1;
            v15 = 513;
            goto LABEL_50;
          }

          if ((v25.bstate & 0x10) != 0)
          {
            v14 = a1;
            v15 = 518;
LABEL_50:
            v10 = form_driver(v14, v15);
            goto LABEL_51;
          }
        }
      }
    }

    v4 = 4294967284;
    goto LABEL_52;
  }

  *(a1 + 72) = _nc_First_Active_Field(a1);
  v4 = 0;
  *__error() = 0;
  return v4;
}

uint64_t sub_298AA52A4(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 72);
  if ((~*(v1 + 48) & 0xA) != 0)
  {
    goto LABEL_12;
  }

  setcchar();
  if ((*(v1 + 48) & 0x20) != 0 && !*(a1 + 8) && !*(a1 + 12) && (*a1 & 0x30) == 0)
  {
    werase(*(a1 + 56));
  }

  if ((*a1 & 4) != 0)
  {
    wadd_wch();
  }

  else
  {
    wmove(*(a1 + 56), *(a1 + 8), *(*(a1 + 72) + 16) - 1);
    v3 = winch(*(a1 + 56));
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
    if (v3 != 32 && v3 != *(*(a1 + 72) + 36))
    {
      if (*(v1 + 24) + *(v1 + 2) != 1 || (*v1 & 8) == 0)
      {
LABEL_12:
        v4 = 4294967284;
        goto LABEL_26;
      }

      if (!sub_298AA577C(v1, 1))
      {
        goto LABEL_28;
      }
    }

    v5 = *(a1 + 56);
    wins_wch();
  }

  v4 = sub_298AA7B48(a1);
  if (v4)
  {
    goto LABEL_26;
  }

  if (*(v1 + 12) - 1 == *(a1 + 8))
  {
    v6 = *(v1 + 16) - 1;
    v7 = *(a1 + 12);
    *a1 |= 0x10u;
    if (v6 == v7)
    {
      if ((*v1 & 8) == 0)
      {
        if ((*(v1 + 48) & 0x40) != 0)
        {
          v4 = sub_298AA4AE0(sub_298AA5FC8, a1);
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if (!sub_298AA577C(v1, 1))
      {
LABEL_28:
        v4 = 0xFFFFFFFFLL;
        goto LABEL_26;
      }
    }
  }

  else
  {
    *a1 |= 0x10u;
  }

LABEL_23:
  if (!*(*(a1 + 56) + 176))
  {
    sub_298AA6354(a1);
  }

  v4 = 0;
LABEL_26:
  *__error() = v4;
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

int set_field_buffer(FIELD *a1, int a2, const char *a3)
{
  v3 = -2;
  if (a2 < 0 || !a1 || !a3 || a1->nbuf < a2)
  {
    goto LABEL_38;
  }

  v7 = a1->dcols * a1->drows;
  if ((a1->status & 8) != 0)
  {
    v8 = strlen(a3);
    if (v8 > v7)
    {
      if (!sub_298AA577C(a1, (v8 - v7) / ((a1->nrow + a1->rows) * a1->cols) + 1))
      {
LABEL_31:
        v3 = -1;
        goto LABEL_38;
      }

      v7 = a1->dcols * a1->drows;
    }
  }

  buf = a1->buf;
  v10 = wresize(*&a1[1].fcol, 1, v7 + 1);
  v11 = *&a1[1].fcol;
  if (v10 == -1)
  {
    delwin(v11);
    v11 = newpad(1, a1->dcols * a1->drows + 1);
    *&a1[1].fcol = v11;
  }

  v12 = (a1->dcols * a1->drows);
  wclear(v11);
  if (wmove(*&a1[1].fcol, 0, 0) != -1)
  {
    waddnstr(*&a1[1].fcol, a3, -1);
  }

  v13 = calloc(v12 + 1, 0x1CuLL);
  if (!v13)
  {
    goto LABEL_31;
  }

  v14 = v13;
  if (a1->drows >= 1)
  {
    v15 = 0;
    do
    {
      if (wmove(*&a1[1].fcol, 0, a1->dcols * v15) != -1)
      {
        v16 = *&a1[1].fcol;
        dcols = a1->dcols;
        win_wchnstr();
      }

      ++v15;
    }

    while (v15 < a1->drows);
  }

  if (v12 >= 1)
  {
    v18 = (*MEMORY[0x29EDC9720])();
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = &v14[v20];
      if (!*&v14[v20] && !*(v22 + 1) && !*&v14[v20 + 8] && !*&v14[v20 + 12] && !*&v14[v20 + 20] && (*v18 < 0x60000u || !*&v14[v20 + 24]))
      {
        break;
      }

      v23 = (v19 + v20);
      v24 = *v22;
      *(v23 + 12) = *(v22 + 12);
      *v23 = v24;
      ++v21;
      v20 += 28;
      if (28 * v12 == v20)
      {
        goto LABEL_29;
      }
    }

    if (v12 > v21)
    {
      v29 = v12 - v21;
      v30 = (v19 + v20);
      do
      {
        v31 = xmmword_2A13C18A8;
        *(v30 + 12) = *(&xmmword_2A13C18A8 + 12);
        *v30 = v31;
        v30 = (v30 + 28);
        --v29;
      }

      while (v29);
    }
  }

LABEL_29:
  free(v14);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v25 = sub_298AA5B4C(a1);
    v26 = sub_298AA43B4(a1);
    if (v26)
    {
      v27 = v25 == 0;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      v3 = v26;
    }

    else
    {
      v3 = v25;
    }
  }

LABEL_38:
  *__error() = v3;
  return v3;
}

uint64_t sub_298AA577C(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    if ((*result & 8) == 0)
    {
      return 0;
    }

    v4 = *(result + 24) + *(result + 2);
    v5 = *(result + 12);
    v6 = *(result + 16);
    v7 = *(result + 104);
    v8 = *(result + 80);
    if (v8 && (v9 = *v8, (*v8 & 1) != 0) && (v10 = *(v8 + 72), v10 == result))
    {
      if ((v9 & 0x10) != 0)
      {
        *v8 = v9 & 0xFFCF | 0x20;
        _nc_get_fieldbuffer(v8, v10, *(v10 + 104));
        wmove(*(v8 + 56), *(v8 + 8), *(v8 + 12));
      }

      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    v53 = v4;
    if (v4 == 1)
    {
      v11 = *(v2 + 4) * a2;
      v12 = *(v2 + 16);
      v13 = *(v2 + 20);
      v14 = v13 - v12;
      if (v13 - v12 >= v11)
      {
        v14 = *(v2 + 4) * a2;
      }

      if (v13)
      {
        v11 = v14;
      }

      v15 = v12 + v11;
      *(v2 + 16) = v15;
    }

    else
    {
      v13 = *(v2 + 20);
      v16 = (*(v2 + 24) + *(v2 + 2)) * a2;
      v17 = *(v2 + 12);
      v18 = v13 - v17;
      if (v13 - v17 >= v16)
      {
        v18 = (*(v2 + 24) + *(v2 + 2)) * a2;
      }

      if (v13)
      {
        v16 = v18;
      }

      v15 = v17 + v16;
      *(v2 + 12) = v15;
    }

    if (v15 == v13)
    {
      *v2 &= ~8u;
    }

    v19 = *(v2 + 16) * *(v2 + 12);
    v20 = v19 + 1;
    v21 = *(v2 + 28);
    v22 = malloc(28 * (v20 + v20 * v21));
    if (v22)
    {
      v23 = v22;
      *(v2 + 104) = v22;
      if ((v21 & 0x80000000) == 0)
      {
        v24 = 0;
        v25 = 0;
        v26 = v6 * v5;
        v27 = v7;
        do
        {
          v28 = *(v2 + 104);
          v29 = *(v2 + 16) * *(v2 + 12) + 1;
          if (v26 < 1)
          {
            v34 = 0;
          }

          else
          {
            v30 = (v28 + v24 * v29);
            v31 = (v6 * v5);
            v32 = v27;
            do
            {
              v33 = *v32;
              *(v30 + 12) = *(v32 + 12);
              *v30 = v33;
              v30 = (v30 + 28);
              v32 = (v32 + 28);
              --v31;
            }

            while (v31);
            v34 = v6 * v5;
          }

          if (v34 < v19)
          {
            v35 = (v28 + 28 * (v26 & ~(v26 >> 31)) + v24 * v29);
            v36 = v19 - (v26 & ~(v26 >> 31));
            do
            {
              v37 = xmmword_2A13C18A8;
              *(v35 + 12) = *(&xmmword_2A13C18A8 + 12);
              *v35 = v37;
              v35 = (v35 + 28);
              --v36;
            }

            while (v36);
          }

          v38 = v28 + 28 * v25 * v29 + 28 * v19;
          *v38 = 0;
          *(v38 + 8) = 0;
          *(v38 + 24) = 0;
          *(v38 + 16) = 0;
          v27 = (v27 + 28 * v26 + 28);
          v24 += 28;
        }

        while (v25++ < *(v2 + 28));
        LODWORD(v20) = *(v2 + 16) * *(v2 + 12) + 1;
      }

      v40 = wresize(*(v2 + 128), 1, v20);
      v41 = v54;
      if (v40 == -1)
      {
        v41 = 1;
      }

      if (v41)
      {
        if (v40 == -1)
        {
LABEL_49:
          *(v2 + 12) = v5;
          *(v2 + 16) = v6;
          *(v2 + 104) = v7;
          v49 = *(v2 + 20);
          if (v53 == 1)
          {
            if (v6 == v49)
            {
              goto LABEL_59;
            }
          }

          else if (v5 == v49)
          {
LABEL_59:
            free(v23);
            return 0;
          }

          *v2 |= 8u;
          goto LABEL_59;
        }
      }

      else
      {
        v42 = newpad(*(v2 + 12), *(v2 + 16));
        if (!v42)
        {
          goto LABEL_49;
        }

        v43 = v42;
        v44 = *(v8 + 56);
        if (v44)
        {
          delwin(v44);
        }

        *(v8 + 56) = v43;
        wbkgdset(v43, *(v2 + 44) | *(v2 + 36));
        v45 = *(v8 + 56);
        if (v45)
        {
          v46 = *(v2 + 40);
          *(v45 + 116) = BYTE1(v46);
          *(v45 + 16) = v46;
        }

        werase(v45);
        sub_298AA3A18(v2, *(v8 + 56));
        v47 = *(v8 + 56);
        if (v47)
        {
          v48 = *(v47 + 4) + 1;
        }

        else
        {
          v48 = -1;
        }

        wtouchln(v47, 0, v48, 0);
        wmove(*(v8 + 56), *(v8 + 8), *(v8 + 12));
      }

      free(v7);
      v50 = *(v2 + 72);
      if (v50 != v2)
      {
        v51 = *(v2 + 104);
        v52 = *(v2 + 12);
        do
        {
          v50[13] = v51;
          *(v50 + 12) = v52;
          v50 = v50[9];
        }

        while (v50 != v2);
      }

      return 1;
    }

    else
    {
      *(v2 + 12) = v5;
      *(v2 + 16) = v6;
      if (v53 == 1)
      {
        if (v6 == v13)
        {
          return 0;
        }
      }

      else if (v5 == v13)
      {
        return 0;
      }

      result = 0;
      *v2 |= 8u;
    }
  }

  return result;
}

uint64_t sub_298AA5B4C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (!v2 || (*v2 & 1) == 0 || (*(a1 + 48) & 1) == 0 || *(a1 + 32) != *(v2 + 28))
    {
      result = 0;
      goto LABEL_9;
    }

    if (*(v2 + 72) != a1)
    {
      result = sub_298AA3B28(a1, 0);
LABEL_9:
      *a1 |= 1u;
      return result;
    }

    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    werase(*(v2 + 56));
    v4 = *(a1 + 48);
    if ((v4 & 4) != 0 && *(a1 + 30) && *(a1 + 24) + *(a1 + 2) == 1)
    {
      if ((v4 & 0x200) != 0)
      {
        if ((v4 & 0x400) != 0 || *(a1 + 16) == *(a1 + 4))
        {
          goto LABEL_21;
        }
      }

      else if ((v4 & 0x400) != 0)
      {
LABEL_21:
        sub_298AA3920(a1, *(v2 + 56));
        goto LABEL_20;
      }
    }

    sub_298AA3A18(a1, *(v2 + 56));
LABEL_20:
    *a1 |= 2u;
    result = _nc_Refresh_Current_Field(v2);
    goto LABEL_9;
  }

  return 4294967294;
}

char *__cdecl field_buffer(const FIELD *a1, int a2)
{
  v2 = 0;
  v17 = *MEMORY[0x29EDCA608];
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (a1->nbuf >= a2)
    {
      buf = a1->buf;
      v6 = (a1->dcols * a1->drows);
      v7 = a2 + a2 * v6;
      if (v6 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = buf + 7 * v7 + 1;
        v10 = (a1->dcols * a1->drows);
        do
        {
          if ((*(v9 - 1) & 0xFEu) - 2 >= 0x1E && *v9)
          {
            v8 += _nc_wcrtomb();
          }

          v9 += 7;
          --v10;
        }

        while (v10);
      }

      v11 = *&a1[1].status;
      v12 = *(v11 + 8 * a2);
      if (v12)
      {
        free(v12);
        v11 = *&a1[1].status;
      }

      *(v11 + 8 * a2) = malloc(v8 + 1);
      v2 = *(*&a1[1].status + 8 * a2);
      if (v2)
      {
        wclear(*&a1[1].fcol);
        wmove(*&a1[1].fcol, 0, 0);
        if (v6 >= 1)
        {
          v13 = buf + 7 * v7;
          do
          {
            if ((*v13 & 0xFEu) - 2 >= 0x1E && v13[1])
            {
              v14 = *&a1[1].fcol;
              wadd_wch();
            }

            v13 += 7;
            --v6;
          }

          while (v6);
        }

        wmove(*&a1[1].fcol, 0, 0);
        winnstr(*&a1[1].fcol, v2, v8);
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return v2;
}

_DWORD *_nc_Widen_String(const char *a1, _DWORD *a2)
{
  v21 = 0;
  v3 = strlen(a1);
  v20 = 0;
  v4 = 0;
  v5 = 1;
  while (v3)
  {
    v19 = v4;
    v6 = 0;
    LODWORD(v7) = 0;
    do
    {
      v8 = &a1[v6];
      if (v3 == v6)
      {
LABEL_8:
        if (v5)
        {
          v14 = 1;
          goto LABEL_14;
        }

        v15 = *v8;
        v14 = 1;
        goto LABEL_13;
      }

      v9 = 1;
      while (1)
      {
        v10 = v8[v9];
        v8[v9] = 0;
        v11 = mblen(0, 0);
        *__error() = v11;
        v12 = mbtowc(0, 0, 0);
        *__error() = v12;
        v13 = mbtowc(&v21, &a1[v6], v9);
        v8[v9] = v10;
        if (v13 >= 1)
        {
          break;
        }

        if (++v9 > v3 - v6)
        {
          goto LABEL_8;
        }
      }

      v14 = v13;
      if ((v5 & 1) == 0)
      {
        v15 = v21;
LABEL_13:
        v20[v7] = v15;
      }

LABEL_14:
      v6 += v14;
      v7 = (v7 + 1);
    }

    while (v6 < v3);
    if (v19 & 1 | (v7 == 0))
    {
      return v20;
    }

    v16 = calloc(v7, 4uLL);
    v5 = 0;
    *a2 = v7;
    v4 = 1;
    v20 = v16;
    if (!v16)
    {
      return 0;
    }
  }

  return v20;
}

uint64_t sub_298AA5F90(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (!v1)
  {
    v1 = *(a1 + 26);
  }

  return _nc_Set_Form_Page(a1, v1 - 1, 0);
}

uint64_t sub_298AA5FC8(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(v1 + 80);
  v3 = *(v2 + 64);
  v4 = (v3 + 8 * *(v1 + 34));
  v5 = (*(v2 + 80) + 8 * *(v2 + 28));
  v6 = (v3 + 8 * *v5);
  v7 = (v3 + 8 * v5[1]);
  do
  {
    if (v4 == v7)
    {
      v4 = v6;
    }

    else
    {
      ++v4;
    }
  }

  while (*v4 != v1 && (*(*v4 + 48) & 3) != 3);
  return _nc_Set_Current_Field(a1, *v4);
}

uint64_t sub_298AA6020(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(v1 + 80);
  v3 = *(v2 + 64);
  v4 = (v3 + 8 * *(v1 + 34));
  v5 = (*(v2 + 80) + 8 * *(v2 + 28));
  v6 = (v3 + 8 * *v5);
  v7 = (v3 + 8 * v5[1]);
  do
  {
    if (v4 == v6)
    {
      v4 = v7;
    }

    else
    {
      --v4;
    }
  }

  while (*v4 != v1 && (*(*v4 + 48) & 3) != 3);
  return _nc_Set_Current_Field(a1, *v4);
}

uint64_t sub_298AA6078(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 8 * *(*(a1 + 80) + 8 * *(a1 + 28)));
  v2 = *(v1 + 80);
  v3 = *(v2 + 64);
  v4 = (v3 + 8 * *(v1 + 34));
  v5 = (*(v2 + 80) + 8 * *(v2 + 28));
  v6 = (v3 + 8 * *v5);
  v7 = (v3 + 8 * v5[1]);
  do
  {
    if (v4 == v6)
    {
      v4 = v7;
    }

    else
    {
      --v4;
    }
  }

  while (*v4 != v1 && (*(*v4 + 48) & 3) != 3);
  return _nc_Set_Current_Field(a1, *v4);
}

uint64_t sub_298AA60E4(uint64_t a1)
{
  v1 = *(a1 + 72);
  do
  {
    v1 = *(v1 + 56);
  }

  while (v1 != *(a1 + 72) && (*(v1 + 48) & 3) != 3);
  return _nc_Set_Current_Field(a1, v1);
}

uint64_t sub_298AA6108(uint64_t a1)
{
  v1 = *(a1 + 72);
  do
  {
    v1 = *(v1 + 64);
  }

  while (v1 != *(a1 + 72) && (*(v1 + 48) & 3) != 3);
  return _nc_Set_Current_Field(a1, v1);
}

uint64_t sub_298AA612C(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 8 * *(*(a1 + 80) + 8 * *(a1 + 28) + 6));
  do
  {
    v1 = *(v1 + 56);
  }

  while (v1 != *(*(a1 + 64) + 8 * *(*(a1 + 80) + 8 * *(a1 + 28) + 6)) && (*(v1 + 48) & 3) != 3);
  return _nc_Set_Current_Field(a1, v1);
}

uint64_t sub_298AA6164(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 8 * *(*(a1 + 80) + 8 * *(a1 + 28) + 4));
  do
  {
    v1 = *(v1 + 64);
  }

  while (v1 != *(*(a1 + 64) + 8 * *(*(a1 + 80) + 8 * *(a1 + 28) + 4)) && (*(v1 + 48) & 3) != 3);
  return _nc_Set_Current_Field(a1, v1);
}

uint64_t sub_298AA619C(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(v1 + 6);
  v3 = v1;
  while (1)
  {
    v3 = *(v3 + 64);
    if (v3 == v1 || (*(v3 + 48) & 3) == 3)
    {
      v1 = v3;
      if (*(v3 + 6) == v2)
      {
        break;
      }
    }
  }

  return _nc_Set_Current_Field(a1, v3);
}

uint64_t sub_298AA61D4(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(v1 + 6);
  v3 = v1;
  while (1)
  {
    v3 = *(v3 + 56);
    if (v3 == v1 || (*(v3 + 48) & 3) == 3)
    {
      v1 = v3;
      if (*(v3 + 6) == v2)
      {
        break;
      }
    }
  }

  return _nc_Set_Current_Field(a1, v3);
}

uint64_t sub_298AA620C(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(v1 + 6);
  v3 = *(v1 + 8);
  v4 = v1;
  while (1)
  {
    do
    {
      v4 = *(v4 + 64);
    }

    while (v4 != v1 && (*(v4 + 48) & 3) != 3);
    v6 = *(v4 + 6);
    if (v6 != v2)
    {
      break;
    }

    v1 = v4;
    if (*(v4 + 8) == v3)
    {
      return _nc_Set_Current_Field(a1, v4);
    }
  }

  while (*(v4 + 8) > v3)
  {
    v7 = v4;
    do
    {
      v7 = *(v7 + 64);
    }

    while (v7 != v4 && (*(v7 + 48) & 3) != 3);
    v4 = v7;
    if (*(v7 + 6) != v6)
    {
      v4 = v7;
      do
      {
        v4 = *(v4 + 56);
      }

      while (v4 != v7 && (*(v4 + 48) & 3) != 3);
      return _nc_Set_Current_Field(a1, v4);
    }
  }

  return _nc_Set_Current_Field(a1, v4);
}

uint64_t sub_298AA62B0(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(v1 + 6);
  v3 = *(v1 + 8);
  v4 = v1;
  while (1)
  {
    do
    {
      v4 = *(v4 + 56);
    }

    while (v4 != v1 && (*(v4 + 48) & 3) != 3);
    v6 = *(v4 + 6);
    if (v6 != v2)
    {
      break;
    }

    v1 = v4;
    if (*(v4 + 8) == v3)
    {
      return _nc_Set_Current_Field(a1, v4);
    }
  }

  while (*(v4 + 8) < v3)
  {
    v7 = v4;
    do
    {
      v7 = *(v7 + 56);
    }

    while (v7 != v4 && (*(v7 + 48) & 3) != 3);
    v4 = v7;
    if (*(v7 + 6) != v6)
    {
      v4 = v7;
      do
      {
        v4 = *(v4 + 64);
      }

      while (v4 != v7 && (*(v4 + 48) & 3) != 3);
      return _nc_Set_Current_Field(a1, v4);
    }
  }

  return _nc_Set_Current_Field(a1, v4);
}

uint64_t sub_298AA6354(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = sub_298AA7A44(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  v4 = *(a1 + 12) + v3;
  *(a1 + 12) = v4;
  if (v4 != *(v2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = v5 + 1;
  if (v5 + 1 == *(v2 + 12))
  {
    v6 = v3;
    v7 = *(v2 + 2);
    v8 = *(v2 + 24);
    if (v8 + v7 != 1)
    {
      if (sub_298AA577C(v2, 1))
      {
        goto LABEL_5;
      }

      v7 = *(v2 + 2);
      v8 = *(v2 + 24);
      v5 = *(a1 + 8) - 1;
    }

    *(a1 + 8) = v5;
    if (v8 + v7 != 1 || (sub_298AA577C(v2, 1) & 1) == 0)
    {
      v9 = *(a1 + 12) - v6;
      result = 4294967284;
      goto LABEL_11;
    }

    return 0;
  }

LABEL_5:
  v9 = 0;
  result = 0;
LABEL_11:
  *(a1 + 12) = v9;
  return result;
}

uint64_t sub_298AA6438(uint64_t a1)
{
  v2 = sub_298AA7A44(*(a1 + 56), *(a1 + 8), *(a1 + 12) - 1);
  v3 = *(a1 + 12);
  *(a1 + 12) = v3 - v2;
  if (v3 - v2 >= 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = v5 - 1;
  if (v5 <= 0)
  {
    *(a1 + 8) = v5;
    result = 4294967284;
  }

  else
  {
    result = 0;
    v3 = *(*(a1 + 72) + 16) - 1;
  }

  *(a1 + 12) = v3;
  return result;
}

uint64_t sub_298AA64B4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 8);
  *(a1 + 8) = v3 + 1;
  if (v3 + 1 == *(v2 + 12))
  {
    if (*(v2 + 24) + *(v2 + 2) != 1)
    {
      if (sub_298AA577C(v2, 1))
      {
        return 0;
      }

      v3 = *(a1 + 8) - 1;
    }

    *(a1 + 8) = v3;
    return 4294967284;
  }

  else
  {
    result = 0;
    *(a1 + 12) = 0;
  }

  return result;
}

uint64_t sub_298AA6534(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = v1 - 1;
  if (v1 <= 0)
  {
    *(a1 + 8) = v1;
    return 4294967284;
  }

  else
  {
    v2 = 0;
    *(a1 + 12) = 0;
  }

  return v2;
}

uint64_t sub_298AA6564(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 104);
  v4 = *(v2 + 16);
  v5 = v3 + 28 * *(a1 + 8) * v4 + 28 * *(a1 + 12);
  if ((*a1 & 0x10) != 0)
  {
    *a1 = *a1 & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(a1, v2, v3);
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
    v4 = *(v2 + 16);
    v3 = *(v2 + 104);
  }

  v6 = v4 * *(v2 + 12);
  v7 = v6 + 1227133513 * ((v5 - v3) >> 2);
  v8 = v5 + 28 * v7;
  if (v7 < 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = v5;
    do
    {
      if (*(v9 + 4) == 32 && !*(v9 + 8))
      {
        break;
      }

      v9 += 28;
    }

    while (v9 < v8);
  }

  if (v9 == v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  v11 = v6 + 1227133513 * ((v10 - v3) >> 2);
  v12 = v10 + 28 * v11;
  if (v11 < 1)
  {
    v13 = v10;
  }

  else
  {
    v13 = v10;
    do
    {
      if (*(v13 + 4) != 32)
      {
        break;
      }

      if (*(v13 + 8))
      {
        break;
      }

      v13 += 28;
    }

    while (v13 < v12);
  }

  if (v13 == v12)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(a1 + 72);
  v16 = -1227133513 * ((v14 - *(v15 + 104)) >> 2);
  v17 = *(v15 + 12);
  v18 = v16 / *(v15 + 16);
  v19 = v16 - v18 * *(v15 + 4);
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  if (v17 < v18)
  {
    *(a1 + 8) = 0;
  }

  return 0;
}

uint64_t sub_298AA66D0(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 104);
  v4 = v3 + 28 * *(a1 + 8) * *(v2 + 16) + 28 * *(a1 + 12);
  if ((*a1 & 0x10) != 0)
  {
    *a1 = *a1 & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(a1, v2, v3);
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
    v3 = *(v2 + 104);
  }

  v5 = 28 * (-1227133513 * ((v4 - v3) >> 2));
  do
  {
    v6 = v5;
    v7 = v3 + v5;
    if (v3 + v5 <= v3)
    {
      break;
    }

    if (*(v7 - 24) != 32)
    {
      break;
    }

    v5 -= 28;
  }

  while (!*(v3 + v6 - 20));
  v8 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 2);
  v9 = v3 + 28 * v8;
  if (v8 >= 1)
  {
    do
    {
      if (*(v9 - 24) == 32 && !*(v9 - 20))
      {
        break;
      }

      v9 -= 28;
    }

    while (v9 > v3);
  }

  if (v7 == v4)
  {
    v16 = 28 * (-1227133513 * ((v9 - v3) >> 2));
    do
    {
      v17 = v16;
      v18 = v3 + v16;
      if (v18 <= v3)
      {
        break;
      }

      if (*(v18 - 24) != 32)
      {
        break;
      }

      v19 = *(v18 - 20);
      v16 = v17 - 28;
    }

    while (!v19);
    v20 = 0x6DB6DB6DB6DB6DB7 * (v17 >> 2);
    v9 = v3 + 28 * v20;
    if (v20 >= 1)
    {
      do
      {
        if (*(v9 - 24) == 32 && !*(v9 - 20))
        {
          break;
        }

        v9 -= 28;
      }

      while (v9 > v3);
    }
  }

  v10 = *(a1 + 72);
  v11 = -1227133513 * ((v9 - *(v10 + 104)) >> 2);
  v12 = *(v10 + 12);
  v13 = v11 / *(v10 + 16);
  v14 = v11 - v13 * *(v10 + 4);
  *(a1 + 8) = v13;
  *(a1 + 12) = v14;
  if (v12 < v13)
  {
    *(a1 + 8) = 0;
  }

  return 0;
}

uint64_t sub_298AA68A0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if ((*a1 & 0x10) != 0)
  {
    *a1 = *a1 & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(a1, v2, *(v2 + 104));
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  }

  v3 = *(v2 + 104);
  v4 = *(v2 + 16) * *(v2 + 12);
  v5 = v3 + 28 * v4;
  if (v4 < 1)
  {
    v6 = *(v2 + 104);
  }

  else
  {
    v6 = *(v2 + 104);
    do
    {
      if (*(v6 + 4) != 32)
      {
        break;
      }

      if (*(v6 + 8))
      {
        break;
      }

      v6 += 28;
    }

    while (v6 < v5);
  }

  if (v6 != v5)
  {
    v3 = v6;
  }

  v7 = *(a1 + 72);
  v8 = -1227133513 * ((v3 - *(v7 + 104)) >> 2);
  v9 = *(v7 + 12);
  v10 = v8 / *(v7 + 16);
  v11 = v8 - v10 * *(v7 + 4);
  *(a1 + 8) = v10;
  *(a1 + 12) = v11;
  if (v9 < v10)
  {
    *(a1 + 8) = 0;
  }

  return 0;
}

uint64_t sub_298AA6984(uint64_t a1)
{
  v2 = *(a1 + 72);
  if ((*a1 & 0x10) != 0)
  {
    *a1 = *a1 & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(a1, v2, *(v2 + 104));
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  }

  v3 = 0;
  v4 = *(v2 + 104);
  v5 = v4 + 28 * *(v2 + 16) * *(v2 + 12);
  v6 = -v5;
  do
  {
    v7 = v6;
    v8 = v3;
    if (v5 <= v4)
    {
      break;
    }

    if (*(v5 - 24) != 32)
    {
      break;
    }

    v9 = *(v5 - 20);
    v5 -= 28;
    v6 += 28;
    v3 += 28;
  }

  while (!v9);
  v10 = -28;
  if (v8)
  {
    v10 = 0;
  }

  v11 = *(a1 + 72);
  v12 = -1227133513 * ((v10 - *(v11 + 104) - v7) >> 2);
  v13 = *(v11 + 12);
  v14 = v12 / *(v11 + 16);
  v15 = v12 - v14 * *(v11 + 4);
  *(a1 + 8) = v14;
  *(a1 + 12) = v15;
  if (v13 < v14)
  {
    *(a1 + 8) = 0;
  }

  return 0;
}

uint64_t sub_298AA6A74(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v2;
  if ((*a1 & 0x10) != 0)
  {
    *a1 = *a1 & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(a1, v2, *(v2 + 104));
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
    v3 = *(a1 + 72);
  }

  v4 = *(v3 + 104);
  v5 = *(v3 + 16);
  v6 = v4 + 28 * *(a1 + 8) * v5;
  v7 = *(v2 + 16);
  v8 = v6 + 28 * v7;
  if (v7 < 1)
  {
    v9 = v4 + 28 * *(a1 + 8) * v5;
  }

  else
  {
    v9 = v4 + 28 * *(a1 + 8) * v5;
    do
    {
      if (*(v9 + 4) != 32)
      {
        break;
      }

      if (*(v9 + 8))
      {
        break;
      }

      v9 += 28;
    }

    while (v9 < v8);
  }

  if (v9 != v8)
  {
    v6 = v9;
  }

  v10 = -1227133513 * ((v6 - v4) >> 2);
  v11 = v10 / v5;
  v12 = v10 - v11 * *(v3 + 4);
  *(a1 + 8) = v11;
  *(a1 + 12) = v12;
  if (*(v3 + 12) < v11)
  {
    *(a1 + 8) = 0;
  }

  return 0;
}

uint64_t sub_298AA6B64(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v2;
  if ((*a1 & 0x10) != 0)
  {
    *a1 = *a1 & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(a1, v2, *(v2 + 104));
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
    v3 = *(a1 + 72);
  }

  v4 = 0;
  v5 = *(v3 + 16);
  v6 = *(a1 + 8);
  v7 = *(v3 + 104) + 28 * v6 * v5;
  v8 = *(v2 + 16);
  v9 = v7 + 28 * v8;
  v10 = -28 * (v8 + v6 * v5);
  do
  {
    v11 = v10;
    v12 = v4;
    if (v9 <= v7)
    {
      break;
    }

    if (*(v9 - 24) != 32)
    {
      break;
    }

    v13 = *(v9 - 20);
    v9 -= 28;
    v10 += 28;
    v4 += 28;
  }

  while (!v13);
  v14 = -28;
  if (v12)
  {
    v14 = 0;
  }

  v15 = -1227133513 * ((v14 - v11) >> 2);
  v16 = v15 / v5;
  v17 = v15 - v16 * *(v3 + 4);
  *(a1 + 8) = v16;
  *(a1 + 12) = v17;
  if (*(v3 + 12) < v16)
  {
    *(a1 + 8) = 0;
  }

  return 0;
}

uint64_t sub_298AA6C64(uint64_t a1)
{
  v2 = sub_298AA7A44(*(a1 + 56), *(a1 + 8), *(a1 + 12) - 1);
  v3 = *(a1 + 12);
  v4 = v3 - v2;
  if (v3 >= v2)
  {
    v3 -= v2;
  }

  *(a1 + 12) = v3;
  return (v4 >> 31) & 0xFFFFFFF4;
}

uint64_t sub_298AA6CAC(uint64_t a1)
{
  v2 = sub_298AA7A44(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  v3 = *(a1 + 12);
  v4 = v3 + v2;
  *(a1 + 12) = v3 + v2;
  v5 = *(a1 + 72);
  if (v4 < *(v5 + 16) || *(v5 + 24) + *(v5 + 2) == 1 && (sub_298AA577C(v5, 1) & 1) != 0)
  {
    return 0;
  }

  *(a1 + 12) = v3;
  return 4294967284;
}

uint64_t sub_298AA6D24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0)
  {
    v2 = 4294967284;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v1 - (v1 > 0);
  return v2;
}

uint64_t sub_298AA6D48(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 8);
  *(a1 + 8) = v3 + 1;
  if (v3 + 1 != *(v2 + 12))
  {
    return 0;
  }

  if (*(v2 + 24) + *(v2 + 2) != 1)
  {
    if (sub_298AA577C(v2, 1))
    {
      return 0;
    }

    v3 = *(a1 + 8) - 1;
  }

  *(a1 + 8) = v3;
  return 4294967284;
}

uint64_t sub_298AA6DBC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 12) - 1;
  v4 = *(a1 + 8);
  v5 = *a1;
  if ((*a1 & 4) == 0)
  {
    if (v3 == v4)
    {
      if ((*v2 & 8) == 0 || *(v2 + 24) + *(v2 + 2) == 1)
      {
        if ((*(a1 + 32) & 1) == 0)
        {
          return 4294967284;
        }

        goto LABEL_12;
      }

LABEL_24:
      if (sub_298AA577C(v2, 1))
      {
        LODWORD(v7) = *(v2 + 16);
LABEL_26:
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        v15 = *(*(a1 + 72) + 104) + 28 * v13 * *(*(a1 + 72) + 16) + 28 * v14;
        v16 = v15 + 28 * (v7 - v14);
        v17 = 28 * v7 - 28 * v14;
        do
        {
          if (v16 <= v15)
          {
            break;
          }

          if (*(v16 - 24) != 32)
          {
            break;
          }

          v18 = *(v16 - 20);
          v16 -= 28;
          v17 -= 28;
        }

        while (!v18);
        wmove(*(a1 + 56), v13, v14);
        wclrtoeol(*(a1 + 56));
        v19 = *(a1 + 8) + 1;
        *(a1 + 8) = v19;
        wmove(*(a1 + 56), v19, 0);
        winsdelln(*(a1 + 56), 1);
        v20 = *(a1 + 56);
        wadd_wchnstr();
        result = 0;
        goto LABEL_34;
      }

      return 0xFFFFFFFFLL;
    }

    if ((v5 & 0x10) != 0)
    {
      *a1 = v5 & 0xFFCB | 0x20;
      _nc_get_fieldbuffer(a1, v2, *(v2 + 104));
      wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
      v3 = *(v2 + 12) - 1;
    }

    v7 = *(v2 + 16);
    v8 = *(v2 + 104) + 28 * v3 * v7;
    v9 = v8 + 28 * v7;
    v10 = -28 * v7;
    do
    {
      v11 = v10;
      if (v9 <= v8)
      {
        break;
      }

      if (*(v9 - 24) != 32)
      {
        break;
      }

      v12 = *(v9 - 20);
      v9 -= 28;
      v10 += 28;
    }

    while (!v12);
    if (!v11)
    {
      goto LABEL_26;
    }

    if ((*v2 & 8) != 0)
    {
      goto LABEL_24;
    }

    return 4294967284;
  }

  if (v3 != v4)
  {
LABEL_33:
    wmove(*(a1 + 56), v4, *(a1 + 12));
    wclrtoeol(*(a1 + 56));
    result = 0;
    *(a1 + 8) = (*(a1 + 8) + 1);
LABEL_34:
    *a1 |= 0x10u;
    return result;
  }

  if ((*v2 & 8) != 0 && *(v2 + 24) + *(v2 + 2) != 1)
  {
    if (!sub_298AA577C(*(a1 + 72), 1))
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *(a1 + 8);
    goto LABEL_33;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    return 4294967284;
  }

  wmove(*(a1 + 56), v3, *(a1 + 12));
  wclrtoeol(*(a1 + 56));
  *a1 |= 0x10u;
LABEL_12:

  return sub_298AA4AE0(sub_298AA5FC8, a1);
}

uint64_t sub_298AA7060(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!sub_298AA7AB0(*(v2 + 88), *(v2 + 96)))
  {
    return 4294967284;
  }

  wmove(*(a1 + 56), *(a1 + 8), *(*(a1 + 72) + 16) - 1);
  v3 = winch(*(a1 + 56));
  wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  if (v3 == 32 || v3 == *(*(a1 + 72) + 36))
  {
    goto LABEL_7;
  }

  if (*(v2 + 24) + *(v2 + 2) != 1 || (*v2 & 8) == 0)
  {
    return 4294967284;
  }

  if (!sub_298AA577C(v2, 1))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_7:
  winsch(*(a1 + 56), 0x20u);

  return sub_298AA7B48(a1);
}

uint64_t sub_298AA7144(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!sub_298AA7AB0(*(v2 + 88), *(v2 + 96)))
  {
    return 4294967284;
  }

  if (*(a1 + 8) == *(v2 + 12) - 1)
  {
    if (*(v2 + 24) + *(v2 + 2) == 1)
    {
      return 4294967284;
    }
  }

  else
  {
    v3 = *(a1 + 72);
    if ((*a1 & 0x10) != 0)
    {
      *a1 = *a1 & 0xFFCF | 0x20;
      _nc_get_fieldbuffer(a1, v3, *(v3 + 104));
      wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
    }

    v4 = *(v3 + 16);
    v5 = *(v3 + 104) + 28 * (*(v3 + 12) - 1) * v4;
    v6 = v5 + 28 * v4;
    v7 = -28 * v4;
    do
    {
      v8 = v7;
      if (v6 <= v5)
      {
        break;
      }

      if (*(v6 - 24) != 32)
      {
        break;
      }

      v9 = *(v6 - 20);
      v6 -= 28;
      v7 += 28;
    }

    while (!v9);
    if (*(v2 + 24) + *(v2 + 2) == 1)
    {
      return 4294967284;
    }

    if (!v8)
    {
LABEL_16:
      *(a1 + 12) = 0;
      winsdelln(*(a1 + 56), 1);
      return 0;
    }
  }

  if ((*v2 & 8) == 0)
  {
    return 4294967284;
  }

  if (sub_298AA577C(v2, 1))
  {
    goto LABEL_16;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_298AA729C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 12);
  if (!*(a1 + 8))
  {
    return 4294967284;
  }

  v5 = *(a1 + 72);
  *(a1 + 12) = v1 - 1;
  if (v1 <= 0)
  {
    *(a1 + 12) = v1;
    v6 = *a1;
    if ((*a1 & 4) != 0)
    {
      return 4294967284;
    }

    v7 = *(v5 + 104);
    v8 = *(v5 + 16);
    v9 = v8 * (v2 - 1);
    v10 = v7 + 28 * v8 * v2;
    if ((v6 & 0x10) != 0)
    {
      *a1 = v6 & 0xFFCB | 0x20;
      _nc_get_fieldbuffer(a1, v5, v7);
      wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
      v8 = *(v5 + 16);
    }

    v11 = v7 + 28 * v9;
    v12 = v8;
    v13 = 28 * v8;
    v14 = v7 + v13 + 28 * v9;
    do
    {
      v15 = v14;
      v16 = v13;
      v17 = v11 + v13;
      if (v17 <= v11)
      {
        break;
      }

      if (*(v17 - 24) != 32)
      {
        break;
      }

      v18 = *(v17 - 20);
      v14 -= 28;
      v13 = v16 - 28;
    }

    while (!v18);
    v19 = 28 * v12;
    do
    {
      v20 = v19;
      v21 = v10 + v19;
      if (v21 <= v10)
      {
        break;
      }

      if (*(v21 - 24) != 32)
      {
        break;
      }

      v22 = *(v21 - 20);
      v19 = v20 - 28;
    }

    while (!v22);
    if ((*(v5 + 4) + 1227133513 * (v16 >> 2)) < (-1227133513 * (v20 >> 2)))
    {
      return 4294967284;
    }

    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
    winsdelln(*(a1 + 56), -1);
    v23 = *(a1 + 72);
    v24 = -1227133513 * ((v15 - *(v23 + 104)) >> 2);
    v25 = *(v23 + 12);
    v26 = v24 / *(v23 + 16);
    v27 = v24 - v26 * *(v23 + 4);
    *(a1 + 8) = v26;
    *(a1 + 12) = v27;
    if (v25 < v26)
    {
      v26 = 0;
      *(a1 + 8) = 0;
    }

    if (v2 < 1 || v26 != v2)
    {
      wmove(*(a1 + 56), v26, v27);
      v29 = *(a1 + 56);
      wadd_wchnstr();
      return 0;
    }

    v28 = *(v5 + 16) - 1;
    *(a1 + 8) = v2 - 1;
    *(a1 + 12) = v28;
  }

  sub_298AA7F24(a1);
  return 0;
}

uint64_t sub_298AA7498(uint64_t a1)
{
  *(a1 + 12) = 0;
  winsdelln(*(a1 + 56), -1);
  return 0;
}

uint64_t sub_298AA74C0(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 104);
  v4 = *(v2 + 16);
  v5 = *(a1 + 12);
  v6 = v3 + 28 * *(a1 + 8) * v4;
  v7 = v6 + 28 * v5;
  if ((*a1 & 0x10) != 0)
  {
    *a1 = *a1 & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(a1, v2, v3);
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  }

  if (*(v7 + 4) == 32 && !*(v7 + 8))
  {
    return 4294967284;
  }

  v8 = *(a1 + 12);
  v9 = v6 + 28 * v8;
  if (v8 >= 1)
  {
    do
    {
      if (*(v9 - 24) == 32 && !*(v9 - 20))
      {
        break;
      }

      v9 -= 28;
    }

    while (v9 > v6);
  }

  v10 = *(a1 + 72);
  v11 = -1227133513 * ((v9 - *(v10 + 104)) >> 2);
  v12 = *(v10 + 12);
  v13 = v11 / *(v10 + 16);
  v14 = v11 - v13 * *(v10 + 4);
  *(a1 + 8) = v13;
  *(a1 + 12) = v14;
  if (v12 < v13)
  {
    v13 = 0;
    *(a1 + 8) = 0;
  }

  v15 = v6 + 28 * v4;
  wmove(*(a1 + 56), v13, v14);
  wclrtoeol(*(a1 + 56));
  v16 = v7 + 28 * (v4 - v5);
  if (v4 - v5 < 1)
  {
    v17 = v6 + 28 * v5;
  }

  else
  {
    v17 = v6 + 28 * v5;
    do
    {
      if (*(v17 + 4) == 32 && !*(v17 + 8))
      {
        break;
      }

      v17 += 28;
    }

    while (v17 < v16);
  }

  if (v17 == v16)
  {
    v18 = v6 + 28 * v5;
  }

  else
  {
    v18 = v17;
  }

  v19 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v18) >> 2);
  v20 = v18 + 28 * v19;
  if (v19 < 1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v18;
    do
    {
      if (*(v21 + 4) != 32)
      {
        break;
      }

      if (*(v21 + 8))
      {
        break;
      }

      v21 += 28;
    }

    while (v21 < v20);
  }

  if (v21 == v20)
  {
    v22 = v18;
  }

  else
  {
    v22 = v21;
  }

  if (v22 != v7 && (*(v22 + 4) != 32 || *(v22 + 8)))
  {
    v23 = *(a1 + 56);
    v24 = 28 * (-1227133513 * ((v15 - v22) >> 2));
    do
    {
      v25 = v24;
      v26 = v22 + v24;
      if (v26 <= v22)
      {
        break;
      }

      if (*(v26 - 24) != 32)
      {
        break;
      }

      v27 = *(v26 - 20);
      v24 = v25 - 28;
    }

    while (!v27);
    wadd_wchnstr();
  }

  return 0;
}

uint64_t sub_298AA7704(uint64_t a1)
{
  wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  wclrtoeol(*(a1 + 56));
  return 0;
}

uint64_t sub_298AA773C(uint64_t a1)
{
  wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  wclrtobot(*(a1 + 56));
  return 0;
}

uint64_t sub_298AA7774(uint64_t a1)
{
  *(a1 + 8) = 0;
  werase(*(a1 + 56));
  return 0;
}

uint64_t sub_298AA77C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 72) + 12) - *(*(a1 + 72) + 2);
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if ((v4 < 0) ^ v3 | (v4 == 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5 < 1)
  {
    return 4294967284;
  }

  v6 = 0;
  *(a1 + 8) += v5;
  *(a1 + 16) = v5 + v1;
  return v6;
}

uint64_t sub_298AA780C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v3 < 0 != v2)
  {
    return 4294967284;
  }

  result = 0;
  --*(a1 + 8);
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_298AA7888(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(*(a1 + 72) + 16) - *(*(a1 + 72) + 4);
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if ((v4 < 0) ^ v3 | (v4 == 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5 < 1)
  {
    return 4294967284;
  }

  v6 = 0;
  *(a1 + 12) += v5;
  *(a1 + 20) = v5 + v1;
  return v6;
}

uint64_t sub_298AA78D4(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v3 < 0 != v2)
  {
    return 4294967284;
  }

  result = 0;
  --*(a1 + 12);
  *(a1 + 20) = v3;
  return result;
}

uint64_t sub_298AA7950(uint64_t a1)
{
  if (_nc_Internal_Validation(a1))
  {
    return 0;
  }

  else
  {
    return 4294967283;
  }
}

uint64_t sub_298AA7974(uint64_t a1)
{
  v1 = *(a1 + 72);
  if ((*a1 & 0x10) != 0)
  {
    *a1 = *a1 & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(a1, v1, *(v1 + 104));
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  }

  if (sub_298AA818C(*(v1 + 88), v1, *(v1 + 96)))
  {
    return 0;
  }

  else
  {
    return 4294967284;
  }
}

uint64_t sub_298AA79DC(uint64_t a1)
{
  v1 = *(a1 + 72);
  if ((*a1 & 0x10) != 0)
  {
    *a1 = *a1 & 0xFFCF | 0x20;
    _nc_get_fieldbuffer(a1, v1, *(v1 + 104));
    wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  }

  if (sub_298AA8224(*(v1 + 88), v1, *(v1 + 96)))
  {
    return 0;
  }

  else
  {
    return 4294967284;
  }
}

uint64_t sub_298AA7A44(uint64_t a1, unsigned int a2, int a3)
{
  if (a1 && (a3 & 0x80000000) == 0 && (a2 & 0x80000000) == 0)
  {
    v3 = a3;
    while (*(a1 + 6) >= a3 && *(a1 + 4) >= a2)
    {
      v4 = (*(*(a1 + 40) + 16 * a2) + 28 * v3);
      if ((*v4 & 0xFEu) - 2 >= 0x1E)
      {
        return wcwidth(v4[1]);
      }

      v5 = __OFSUB__(v3--, 1);
      if (v3 < 0 != v5)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_298AA7AB0(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return (*(MEMORY[0x29EDCA600] + 189) & 2) == 0;
  }

  v3 = a1;
  while ((*v3 & 1) != 0)
  {
    if (sub_298AA7AB0(*(v3 + 16), *a2))
    {
      return 1;
    }

    v3 = *(v3 + 24);
    a2 = a2[1];
    if (!v3)
    {
      return (*(MEMORY[0x29EDCA600] + 189) & 2) == 0;
    }
  }

  v4 = *(v3 + 64);
  if (!v4)
  {
    return (*(MEMORY[0x29EDCA600] + 189) & 2) == 0;
  }

  return v4(32, a2);
}

uint64_t sub_298AA7B48(uint64_t a1)
{
  v1 = *(a1 + 72);
  if ((*(v1 + 48) & 0x10) == 0 || *(v1 + 24) + *(v1 + 2) == 1)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(v1 + 12);
  wmove(*(a1 + 56), v3, *(v1 + 16) - 1);
  v5 = winch(*(a1 + 56));
  wmove(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  v6 = *(a1 + 72);
  if (v5 == 32 || v5 == *(v6 + 36))
  {
    return 0;
  }

  if (v4 - 1 != v3)
  {
    goto LABEL_13;
  }

  if ((*v1 & 8) == 0)
  {
    return 0;
  }

  if (sub_298AA577C(v1, 1))
  {
    v6 = *(a1 + 72);
LABEL_13:
    v9 = *(v6 + 104) + 28 * *(a1 + 8) * *(v6 + 16);
    _nc_get_fieldbuffer(a1, v1, *(v1 + 104));
    v10 = *(v1 + 16);
    v11 = v9 + 28 * v10;
    if (v10 >= 1)
    {
      do
      {
        if (*(v11 - 24) == 32 && !*(v11 - 20))
        {
          break;
        }

        v11 -= 28;
      }

      while (v11 > v9);
    }

    v12 = -1227133513 * ((v11 - v9) >> 2);
    if (v12 >= 1)
    {
      if (sub_298AA7CF4(a1, *(a1 + 8) + 1, v11, v10 - v12))
      {
        sub_298AA7F24(a1);
        _nc_get_fieldbuffer(a1, v1, *(v1 + 104));
        return 4294967284;
      }

      wmove(*(a1 + 56), *(a1 + 8), v12);
      wclrtoeol(*(a1 + 56));
      v13 = *(a1 + 12);
      v14 = __OFSUB__(v13, v12);
      v15 = v13 - v12;
      if (v15 < 0 == v14)
      {
        result = 0;
        ++*(a1 + 8);
        *(a1 + 12) = v15;
        return result;
      }
    }

    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_298AA7CF4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 72);
  v9 = *(v8 + 16);
  v10 = *(v8 + 104) + 28 * v9 * a2;
  v11 = 28 * v9;
  do
  {
    v12 = v11;
    v13 = v10 + v11;
    if (v13 <= v10)
    {
      break;
    }

    if (*(v13 - 24) != 32)
    {
      break;
    }

    v14 = *(v13 - 20);
    v11 = v12 - 28;
  }

  while (!v14);
  if ((v9 + 1227133513 * (v12 >> 2)) > a4)
  {
    v15 = (a1 + 56);
LABEL_7:
    wmove(*v15, a2, 0);
    sub_298AA7FDC(*v15, a3, a4);
    wmove(*v15, a2, a4);
    sub_298AA7FDC(*v15, &xmmword_2A13C18A8, 1);
    return 0;
  }

  v17 = *(v8 + 12) - 1;
  if (v17 == a2)
  {
    if ((*v8 & 8) == 0)
    {
      return 4294967284;
    }

    if (!sub_298AA577C(*(a1 + 72), 1))
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(v9) = *(v8 + 16);
    v10 = *(v8 + 104) + 28 * v9 * a2;
    v17 = *(v8 + 12) - 1;
  }

  if (v17 <= a2)
  {
    return 4294967284;
  }

  v18 = v10 + 28 * v9 + 28 * ~a4;
  v19 = v18 + 28 * a4;
  if (a4 < 0)
  {
    v21 = v10 + 28 * v9 + 28 * ~a4;
  }

  else
  {
    v20 = v10 + 28 * v9 + 28 * ~a4;
    while (*(v20 + 4) == 32 && !*(v20 + 8))
    {
      v21 = v20 + 28;
      v22 = v20 >= v19;
      v20 += 28;
      if (v22)
      {
        goto LABEL_24;
      }
    }

    v21 = v20;
  }

LABEL_24:
  if (v21 != v19 + 28)
  {
    v18 = v21;
  }

  v23 = 0x6DB6DB6DB6DB6DB7 * ((v18 - v10) >> 2);
  v24 = v10 + 28 * v23;
  if (v23 >= 1)
  {
    do
    {
      if (*(v24 - 24) == 32 && !*(v24 - 20))
      {
        break;
      }

      v24 -= 28;
    }

    while (v24 > v10);
  }

  v25 = -1227133513 * ((v24 - v10) >> 2);
  result = sub_298AA7CF4(a1, (a2 + 1));
  if (!result)
  {
    v26 = *(a1 + 56);
    v15 = (a1 + 56);
    wmove(v26, a2, v25);
    wclrtoeol(*v15);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_298AA7F24(uint64_t a1)
{
  v2 = sub_298AA7A44(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  v3 = *(a1 + 56);
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  if (v3)
  {
    v6 = *(a1 + 12);
    while ((v6 & 0x80000000) == 0 && (v4 & 0x80000000) == 0 && v6 <= *(v3 + 6) && v4 <= *(v3 + 4))
    {
      v7 = (*(*(*(v3 + 40) + 16 * v4) + 28 * v6--) & 0xFE) - 2;
      if (v7 >= 0x1E)
      {
        v5 = v6 + 1;
        break;
      }
    }
  }

  *(a1 + 12) = v5;
  result = wmove(v3, v4, v5);
  if (v2 >= 1)
  {
    v9 = v2 + 1;
    do
    {
      result = wdelch(*(a1 + 56));
      --v9;
    }

    while (v9 > 1);
  }

  return result;
}

uint64_t sub_298AA7FDC(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v5 = result;
    do
    {
      if (v5)
      {
        v6 = *v5;
        v7 = *(v5 + 1) + 1;
      }

      else
      {
        v7 = 0;
        v6 = -1;
      }

      result = wins_wch();
      if (result)
      {
        break;
      }

      result = wmove(v5, v6, v7);
      v8 = v3-- != 0;
      if (result)
      {
        break;
      }

      a2 += 28;
    }

    while (v3 != 0 && v8);
  }

  return result;
}

uint64_t sub_298AA806C(uint64_t a1, int a2)
{
  if (a2 >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = -a2;
  }

  if (a2 < 1)
  {
    v8 = *(a1 + 16);
    if (v2 >= v8)
    {
      v9 = *(a1 + 16);
    }

    else
    {
      v9 = v2;
    }

    if (v9 >= 1)
    {
      v6 = 0;
      *(a1 + 8) -= v9;
      v7 = v8 - v9;
      goto LABEL_15;
    }

    return 4294967284;
  }

  v3 = *(a1 + 16);
  v4 = *(*(a1 + 72) + 12) - *(*(a1 + 72) + 2);
  if (v3 + v2 <= v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4 - v3;
  }

  if (v5 < 1)
  {
    return 4294967284;
  }

  v6 = 0;
  *(a1 + 8) += v5;
  v7 = v5 + v3;
LABEL_15:
  *(a1 + 16) = v7;
  return v6;
}

uint64_t sub_298AA80FC(uint64_t a1, int a2)
{
  if (a2 >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = -a2;
  }

  if (a2 < 1)
  {
    v8 = *(a1 + 20);
    if (v2 >= v8)
    {
      v9 = *(a1 + 20);
    }

    else
    {
      v9 = v2;
    }

    if (v9 >= 1)
    {
      v6 = 0;
      *(a1 + 12) -= v9;
      v7 = v8 - v9;
      goto LABEL_15;
    }

    return 4294967284;
  }

  v3 = *(a1 + 20);
  v4 = *(*(a1 + 72) + 16) - *(*(a1 + 72) + 4);
  if (v3 + v2 <= v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4 - v3;
  }

  if (v5 < 1)
  {
    return 4294967284;
  }

  v6 = 0;
  *(a1 + 12) += v5;
  v7 = v5 + v3;
LABEL_15:
  *(a1 + 20) = v7;
  return v6;
}

uint64_t sub_298AA818C(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v5 = result;
    while (1)
    {
      if ((*v5 & 4) == 0)
      {
        return 0;
      }

      if ((*v5 & 1) == 0)
      {
        break;
      }

      if (sub_298AA818C(*(v5 + 16), a2, *a3))
      {
        return 1;
      }

      v5 = *(v5 + 24);
      a3 = a3[1];
      if (!v5)
      {
        return 0;
      }
    }

    v6 = *(v5 + 72);

    return v6(a2, a3);
  }

  return result;
}

uint64_t sub_298AA8224(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v5 = result;
    while (1)
    {
      if ((*v5 & 4) == 0)
      {
        return 0;
      }

      if ((*v5 & 1) == 0)
      {
        break;
      }

      if (sub_298AA8224(*(v5 + 16), a2, *a3))
      {
        return 1;
      }

      v5 = *(v5 + 24);
      a3 = a3[1];
      if (!v5)
      {
        return 0;
      }
    }

    v6 = *(v5 + 80);

    return v6(a2, a3);
  }

  return result;
}

int set_field_init(FORM *a1, Form_Hook a2)
{
  v2 = _nc_Default_Form;
  if (a1)
  {
    v2 = a1;
  }

  v2->fieldinit = a2;
  *__error() = 0;
  return 0;
}

Form_Hook field_init(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  return v1->fieldinit;
}

int set_field_term(FORM *a1, Form_Hook a2)
{
  v2 = _nc_Default_Form;
  if (a1)
  {
    v2 = a1;
  }

  v2->fieldterm = a2;
  *__error() = 0;
  return 0;
}

Form_Hook field_term(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  return v1->fieldterm;
}

int set_form_init(FORM *a1, Form_Hook a2)
{
  v2 = _nc_Default_Form;
  if (a1)
  {
    v2 = a1;
  }

  v2->forminit = a2;
  *__error() = 0;
  return 0;
}

Form_Hook form_init(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  return v1->forminit;
}

int set_form_term(FORM *a1, Form_Hook a2)
{
  v2 = _nc_Default_Form;
  if (a1)
  {
    v2 = a1;
  }

  v2->formterm = a2;
  *__error() = 0;
  return 0;
}

Form_Hook form_term(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  return v1->formterm;
}

int set_form_opts(FORM *a1, Form_Options a2)
{
  v2 = _nc_Default_Form;
  if (a1)
  {
    v2 = a1;
  }

  v2->opts = a2 & 3;
  *__error() = 0;
  return 0;
}

Form_Options form_opts(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  return v1->opts & 3;
}

int form_opts_on(FORM *a1, Form_Options a2)
{
  v2 = _nc_Default_Form;
  if (a1)
  {
    v2 = a1;
  }

  v2->opts |= a2 & 3;
  *__error() = 0;
  return 0;
}

int form_opts_off(FORM *a1, Form_Options a2)
{
  v2 = _nc_Default_Form;
  if (a1)
  {
    v2 = a1;
  }

  v2->opts &= ~a2 | 0xFFFFFFFC;
  *__error() = 0;
  return 0;
}

int set_form_page(FORM *a1, int a2)
{
  v2 = -2;
  if (a1 && (a2 & 0x80000000) == 0 && a1->maxpage > a2)
  {
    if (a1->status)
    {
      if ((a1->status & 2) != 0)
      {
        v2 = -5;
      }

      else if (a1->curpage == a2)
      {
        v2 = 0;
      }

      else if (_nc_Internal_Validation(a1))
      {
        fieldterm = a1->fieldterm;
        if (fieldterm)
        {
          a1->status |= 2u;
          (fieldterm)(a1);
          a1->status &= ~2u;
        }

        formterm = a1->formterm;
        if (formterm)
        {
          a1->status |= 2u;
          (formterm)(a1);
          a1->status &= ~2u;
        }

        v2 = _nc_Set_Form_Page(a1, a2, 0);
        forminit = a1->forminit;
        if (forminit)
        {
          a1->status |= 2u;
          (forminit)(a1);
          a1->status &= ~2u;
        }

        fieldinit = a1->fieldinit;
        if (fieldinit)
        {
          a1->status |= 2u;
          (fieldinit)(a1);
          a1->status &= ~2u;
        }

        _nc_Refresh_Current_Field(a1);
      }

      else
      {
        v2 = -13;
      }
    }

    else
    {
      a1->curpage = a2;
      v2 = 0;
      a1->current = _nc_First_Active_Field(a1);
    }
  }

  *__error() = v2;
  return v2;
}

int form_page(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  return v1->curpage;
}

int post_form(FORM *a1)
{
  if (!a1)
  {
    v5 = -2;
    goto LABEL_20;
  }

  if (a1->status)
  {
    v5 = -3;
    goto LABEL_20;
  }

  if (!a1->field)
  {
    v5 = -11;
    goto LABEL_20;
  }

  sub = a1->sub;
  if (sub || (sub = a1->win) != 0)
  {
    LOWORD(cols) = a1->cols;
  }

  else
  {
    sub = *(*MEMORY[0x29EDC9718] + 152);
    cols = a1->cols;
    if (!sub)
    {
      if ((cols & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      v4 = -1;
      goto LABEL_9;
    }
  }

  if (*(sub + 3) + 1 < cols)
  {
LABEL_10:
    v5 = -6;
    goto LABEL_20;
  }

  v4 = *(sub + 2) + 1;
LABEL_9:
  if (v4 < a1->rows)
  {
    goto LABEL_10;
  }

  curpage = a1->curpage;
  a1->curpage = -1;
  v5 = _nc_Set_Form_Page(a1, curpage, a1->current);
  if (!v5)
  {
    status = a1->status;
    v8 = a1->status | 1;
    a1->status = v8;
    forminit = a1->forminit;
    if (forminit)
    {
      a1->status = status | 3;
      (forminit)(a1);
      v8 = a1->status & 0xFFFD;
      a1->status = v8;
    }

    fieldinit = a1->fieldinit;
    if (fieldinit)
    {
      a1->status = v8 | 2;
      (fieldinit)(a1);
      a1->status &= ~2u;
    }

    _nc_Refresh_Current_Field(a1);
    v5 = 0;
  }

LABEL_20:
  *__error() = v5;
  return v5;
}

int unpost_form(FORM *a1)
{
  if (a1)
  {
    status = a1->status;
    if (a1->status)
    {
      if ((status & 2) != 0)
      {
        v3 = -5;
      }

      else
      {
        fieldterm = a1->fieldterm;
        if (fieldterm)
        {
          a1->status = status | 2;
          (fieldterm)(a1);
          status = a1->status & 0xFFFD;
          a1->status = status;
        }

        formterm = a1->formterm;
        if (formterm)
        {
          a1->status = status | 2;
          (formterm)(a1);
          a1->status &= ~2u;
        }

        sub = a1->sub;
        if (!sub)
        {
          sub = a1->win;
          if (!sub)
          {
            sub = *(*MEMORY[0x29EDC9718] + 152);
          }
        }

        werase(sub);
        delwin(a1->w);
        v3 = 0;
        a1->w = 0;
        a1->status &= ~1u;
      }
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

const char *__cdecl form_request_name(int a1)
{
  if ((a1 - 569) > 0xFFFFFFC6)
  {
    return &aNextPage[13 * (a1 - 512)];
  }

  v1 = __error();
  result = 0;
  *v1 = -2;
  return result;
}

int form_request_by_name(const char *a1)
{
  *&v13[15] = *MEMORY[0x29EDCA608];
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
    v13[v2 - 1] = 0;
    v3 = v12;
    if (v12)
    {
      v4 = v13;
      do
      {
        *(v4 - 1) = __toupper(v3);
        v5 = *v4++;
        v3 = v5;
      }

      while (v5);
    }

    v6 = -57;
    v7 = "NEXT_PAGE";
    while (strcmp(v7, &v12))
    {
      v7 += 13;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_13;
      }
    }

    result = v6 + 569;
  }

  else
  {
LABEL_13:
    v9 = __error();
    result = -9;
    *v9 = -9;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

int scale_form(const FORM *a1, int *a2, int *a3)
{
  if (a1)
  {
    if (a1->field)
    {
      if (a2)
      {
        *a2 = a1->rows;
      }

      v3 = 0;
      if (a3)
      {
        *a3 = a1->cols;
      }
    }

    else
    {
      v3 = -11;
    }
  }

  else
  {
    v3 = -2;
  }

  *__error() = v3;
  return v3;
}

int set_form_sub(FORM *a1, WINDOW *a2)
{
  if (a1 && (a1->status & 1) != 0)
  {
    v2 = -3;
  }

  else
  {
    v2 = 0;
    v3 = _nc_Default_Form;
    if (a1)
    {
      v3 = a1;
    }

    v3->sub = a2;
  }

  *__error() = v2;
  return v2;
}

WINDOW *__cdecl form_sub(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  result = v1->sub;
  if (!result)
  {
    result = v1->win;
    if (!result)
    {
      return *(*MEMORY[0x29EDC9718] + 152);
    }
  }

  return result;
}

int set_form_userptr(FORM *a1, void *a2)
{
  v2 = _nc_Default_Form;
  if (a1)
  {
    v2 = a1;
  }

  v2->usrptr = a2;
  *__error() = 0;
  return 0;
}

void *__cdecl form_userptr(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  return v1->usrptr;
}

int set_form_win(FORM *a1, WINDOW *a2)
{
  if (a1 && (a1->status & 1) != 0)
  {
    v2 = -3;
  }

  else
  {
    v2 = 0;
    v3 = _nc_Default_Form;
    if (a1)
    {
      v3 = a1;
    }

    v3->win = a2;
  }

  *__error() = v2;
  return v2;
}

WINDOW *__cdecl form_win(const FORM *a1)
{
  v1 = _nc_Default_Form;
  if (a1)
  {
    v1 = a1;
  }

  win = v1->win;
  if (win)
  {
    return win;
  }

  else
  {
    return *MEMORY[0x29EDC9728];
  }
}

_DWORD *sub_298AA8B94(int **a1)
{
  v1 = *a1;
  *a1 += 2;
  v2 = *v1;
  result = malloc(4uLL);
  if (result)
  {
    *result = v2;
  }

  return result;
}

_DWORD *sub_298AA8BD0(_DWORD *a1)
{
  result = malloc(4uLL);
  if (result)
  {
    *result = *a1;
  }

  return result;
}

void sub_298AA8C04(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_298AA8C10(const FIELD *a1, int *a2)
{
  v2 = *a2;
  v3 = field_buffer(a1, 0) - 1;
  do
  {
    v5 = *++v3;
    v4 = v5;
  }

  while (v5 == 32);
  v6 = (v2 >> 31) & 1;
  if (!v4)
  {
    return v6 & 1;
  }

  v15 = 0;
  v7 = _nc_Widen_String(v3, &v15);
  if (!v7)
  {
    return v6 & 1;
  }

  v8 = v7;
  v9 = v15;
  if (v15 < 1)
  {
    LOBYTE(v6) = 1;
    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
  v12 = v2 - 1;
  LOBYTE(v6) = 1;
  while (1)
  {
    v13 = v8[v10];
    if (v11)
    {
      if (v13 != 32)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    if (v13 != 32)
    {
      break;
    }

    LOBYTE(v6) = v10 >= v12;
LABEL_12:
    v11 = 1;
LABEL_15:
    if (++v10 >= v9)
    {
      goto LABEL_19;
    }
  }

  if (sub_298AA8CF4(v13))
  {
    v11 = 0;
    v9 = v15;
    goto LABEL_15;
  }

LABEL_18:
  LOBYTE(v6) = 0;
LABEL_19:
  free(v8);
  return v6 & 1;
}

BOOL sub_298AA8CF4(unsigned int a1)
{
  v1 = a1;
  if (a1 > 0x7F)
  {
    if (__maskrune(a1, 0x500uLL))
    {
      return 1;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * a1 + 60) & 0x500) != 0)
  {
    return 1;
  }

  if (v1 > 0x7Fu)
  {
    v3 = __maskrune(v1, 0x500uLL);
  }

  else
  {
    v3 = *(MEMORY[0x29EDCA600] + 4 * v1 + 60) & 0x500;
  }

  return v3 != 0;
}

_DWORD *sub_298AA8D88(int **a1)
{
  v1 = *a1;
  *a1 += 2;
  v2 = *v1;
  result = malloc(4uLL);
  if (result)
  {
    *result = v2;
  }

  return result;
}

_DWORD *sub_298AA8DC4(_DWORD *a1)
{
  result = malloc(4uLL);
  if (result)
  {
    *result = *a1;
  }

  return result;
}

void sub_298AA8DF8(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_298AA8E04(const FIELD *a1, int *a2)
{
  v2 = *a2;
  v3 = field_buffer(a1, 0) - 1;
  do
  {
    v5 = *++v3;
    v4 = v5;
  }

  while (v5 == 32);
  v6 = (v2 >> 31) & 1;
  if (!v4)
  {
    return v6 & 1;
  }

  v15 = 0;
  v7 = _nc_Widen_String(v3, &v15);
  if (!v7)
  {
    return v6 & 1;
  }

  v8 = v7;
  v9 = v15;
  if (v15 < 1)
  {
    LOBYTE(v6) = 1;
    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
  v12 = v2 - 1;
  LOBYTE(v6) = 1;
  while (1)
  {
    v13 = v8[v10];
    if (v11)
    {
      if (v13 != 32)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    if (v13 != 32)
    {
      break;
    }

    LOBYTE(v6) = v10 >= v12;
LABEL_12:
    v11 = 1;
LABEL_15:
    if (++v10 >= v9)
    {
      goto LABEL_19;
    }
  }

  if (sub_298AA8EE8(v13))
  {
    v11 = 0;
    v9 = v15;
    goto LABEL_15;
  }

LABEL_18:
  LOBYTE(v6) = 0;
LABEL_19:
  free(v8);
  return v6 & 1;
}

BOOL sub_298AA8EE8(unsigned int a1)
{
  v1 = a1;
  if (a1 > 0x7F)
  {
    if (__maskrune(a1, 0x100uLL))
    {
      return 1;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * a1 + 60) & 0x100) != 0)
  {
    return 1;
  }

  if (v1 > 0x7Fu)
  {
    v3 = __maskrune(v1, 0x100uLL);
  }

  else
  {
    v3 = *(MEMORY[0x29EDCA600] + 4 * v1 + 60) & 0x100;
  }

  return v3 != 0;
}

_BYTE *sub_298AA8F74(uint64_t *a1)
{
  v1 = *a1;
  *a1 += 8;
  v2 = *v1;
  *a1 = v1 + 16;
  v3 = *(v1 + 8);
  *a1 = v1 + 24;
  v4 = *(v1 + 16);
  v5 = malloc(0x10uLL);
  v6 = v5;
  if (v5)
  {
    v5[12] = v3 != 0;
    v5[13] = v4 != 0;
    *v5 = 0;
    if (v2 && *v2)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        ++v7;
      }

      while (v2[v8++]);
      *(v6 + 2) = v7;
      v10 = malloc(v8 * 8);
      *v6 = v10;
      if (v10)
      {
        v11 = v10;
        v12 = *v2;
        if (*v2)
        {
          v13 = v2 + 1;
          do
          {
            *v11++ = strdup(v12);
            v14 = *v13++;
            v12 = v14;
          }

          while (v14);
        }

        *v11 = 0;
      }
    }

    else
    {
      *(v5 + 2) = 0;
    }
  }

  return v6;
}

char ***sub_298AA9050(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc(0x10uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = *a1;
    v4 = *(a1 + 8);
    if (v4 >= 1)
    {
      v5 = *a1;
      v6 = malloc(8 * v4 + 8);
      *v3 = v6;
      if (v6)
      {
        v7 = v6;
        if (v5)
        {
          v8 = *v5;
          if (*v5)
          {
            v9 = v5 + 1;
            do
            {
              *v7++ = strdup(v8);
              v10 = *v9++;
              v8 = v10;
            }

            while (v10);
          }
        }

        *v7 = 0;
      }
    }
  }

  return v3;
}

void sub_298AA90EC(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2 && a1[2] >= 1)
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
        v2 = *a1;
      }

      free(v2);
    }

    free(a1);
  }
}

uint64_t sub_298AA9160(FIELD *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 12);
  v5 = *(a2 + 13);
  v6 = field_buffer(a1, 0);
  do
  {
    if (!v3)
    {
      return 0;
    }

    v7 = *v3;
    if (!*v3)
    {
      return 0;
    }

    ++v3;
    v8 = sub_298AA93E8(v7, v6, v4);
  }

  while (!v8);
  if (v8 != 2 && v5 != 0)
  {
    v10 = *v3;
    if (*v3)
    {
      v11 = 1;
      do
      {
        v12 = sub_298AA93E8(v10, v6, v4);
        if (v12)
        {
          if (v12 == 2)
          {
            v7 = v10;
            goto LABEL_18;
          }

          v7 = 0;
        }

        v10 = v3[v11++];
      }

      while (v10);
      if (v7)
      {
        goto LABEL_18;
      }

      return 0;
    }
  }

LABEL_18:
  set_field_buffer(a1, 0, v7);
  return 1;
}

uint64_t sub_298AA923C(FIELD *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = field_buffer(a1, 0);
  if (!v4)
  {
    return 0;
  }

  v8 = v7;
  v9 = v6 + 1;
  do
  {
    if (!--v9)
    {
      v4 = *a2;
      goto LABEL_9;
    }

    v10 = *v4++;
  }

  while (sub_298AA93E8(v10, v8, v5) != 2);
  if (v9 > 1)
  {
    goto LABEL_10;
  }

  v4 = *a2;
  if (v9 == 1)
  {
    goto LABEL_10;
  }

LABEL_9:
  if (sub_298AA93E8(byte_2A13C1958, v8, v5) != 2)
  {
    return 0;
  }

LABEL_10:
  set_field_buffer(a1, 0, *v4);
  return 1;
}

uint64_t sub_298AA9300(FIELD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = (*a2 + 8 * v4 - 8);
  v6 = *(a2 + 12);
  v7 = field_buffer(a1, 0);
  if (!v5)
  {
    return 0;
  }

  v8 = v7;
  v9 = v4 + 1;
  do
  {
    if (!--v9)
    {
      v5 = (*a2 + 8 * *(a2 + 8) - 8);
      goto LABEL_9;
    }

    v10 = *v5--;
  }

  while (sub_298AA93E8(v10, v8, v6) != 2);
  if (v9 > 1)
  {
    goto LABEL_10;
  }

  v5 = (*a2 + 8 * *(a2 + 8) - 8);
  if (v9 == 1)
  {
    goto LABEL_10;
  }

LABEL_9:
  if (sub_298AA93E8(byte_2A13C1958, v8, v6) != 2)
  {
    return 0;
  }

LABEL_10:
  set_field_buffer(a1, 0, *v5);
  return 1;
}

uint64_t sub_298AA93E8(unsigned __int8 *a1, unsigned __int8 *a2, char a3)
{
  do
  {
    v6 = *a2++;
    v5 = v6;
  }

  while (v6 == 32);
  do
  {
    v8 = *a1++;
    v7 = v8;
  }

  while (v8 == 32);
  if (!v5)
  {
    return 2 * (v7 == 0);
  }

  if (a3)
  {
    for (i = -1; ; ++i)
    {
      v10 = a1[i];
      if (v10 != a2[i])
      {
        break;
      }

      if (!v10)
      {
        return 2;
      }
    }

    v15 = &a1[i];
    v16 = &a2[i];
  }

  else
  {
    for (j = -1; ; ++j)
    {
      v13 = __toupper(a1[j]);
      v14 = a2[j];
      if (v13 != __toupper(v14))
      {
        break;
      }

      if (!v14)
      {
        return 2;
      }
    }

    v15 = &a1[j];
    v16 = &a2[j];
  }

  while (*v16 == 32)
  {
    ++v16;
  }

  if (*v16)
  {
    return 0;
  }

  if (*v15)
  {
    return 1;
  }

  return 2;
}

_DWORD *sub_298AA94E8(int **a1)
{
  v1 = *a1;
  *a1 += 2;
  v2 = *v1;
  *a1 = v1 + 4;
  v3 = *(v1 + 1);
  *a1 = v1 + 6;
  v4 = *(v1 + 2);
  result = malloc(0x18uLL);
  if (result)
  {
    *result = v2;
    result[1] = 0;
    *(result + 1) = v3;
    *(result + 2) = v4;
  }

  return result;
}

void *sub_298AA9548(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = malloc(0x18uLL);
  if (!result)
  {
    return 0;
  }

  *result = *a1;
  result[2] = *(a1 + 16);
  return result;
}

void sub_298AA9590(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_298AA959C(FIELD *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v5 = *a2;
  v6 = field_buffer(a1, 0);
  v7 = v6;
  do
  {
    v8 = *v6++;
  }

  while (v8 == 32);
  if (!*(v6 - 1))
  {
    goto LABEL_26;
  }

  if (v8 == 45)
  {
    if (!*v6)
    {
LABEL_26:
      result = 0;
      goto LABEL_27;
    }
  }

  else
  {
    --v6;
  }

  *v15 = 0;
  result = _nc_Widen_String(v6, v15);
  if (result)
  {
    if (*v15 >= 1)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = *(result + v10);
        if (v11)
        {
          break;
        }

        if (v12 == 32)
        {
          goto LABEL_15;
        }

        if ((v12 > 0xFF || (*(MEMORY[0x29EDCA600] + 4 * v12 + 60) & 0x400) == 0) && (*(result + v10) & 0xFEu) - 48 > 9)
        {
LABEL_25:
          free(result);
          goto LABEL_26;
        }

        v11 = 0;
LABEL_20:
        v10 += 4;
        if (4 * *v15 == v10)
        {
          goto LABEL_21;
        }
      }

      if (v12 != 32)
      {
        goto LABEL_25;
      }

LABEL_15:
      v11 = 1;
      goto LABEL_20;
    }

LABEL_21:
    free(result);
    v13 = atol(v7);
    if (v4 >= v3 || (result = 0, v13 >= v4) && v13 <= v3)
    {
      __sprintf_chk(v15, 0, 0x64uLL, "%.*ld", v5 & ~(v5 >> 31), v13);
      set_field_buffer(a1, 0, v15);
      result = 1;
    }
  }

LABEL_27:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298AA9738(int a1)
{
  if (a1 - 48 < 0xA)
  {
    v1 = 1;
  }

  else
  {
    v1 = (*(MEMORY[0x29EDCA600] + 4 * a1 + 60) >> 10) & 1;
  }

  if (a1 == 45)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_298AA9768(const FIELD *a1)
{
  v1 = field_buffer(a1, 0);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  if (*v1 - 48 > 9)
  {
    return 0;
  }

  v2 = v1;
  if (sscanf(v1, "%u.%u.%u.%u%n", &v9, &v8 + 4, &v8, &v7, &v9 + 4) != 4)
  {
    return 0;
  }

  v3 = &v2[SHIDWORD(v9)];
  v4 = MEMORY[0x29EDCA600];
  do
  {
    v5 = *v3;
    if (v5 < 0)
    {
      result = __maskrune(*v3, 0x4000uLL);
    }

    else
    {
      result = *(v4 + 4 * v5 + 60) & 0x4000;
    }

    ++v3;
  }

  while (result);
  if (!*(v3 - 1) && v9 <= 0xFF && HIDWORD(v8) <= 0xFF && v8 <= 0xFF)
  {
    return v7 < 0x100;
  }

  return result;
}

void *sub_298AA9878(int **a1)
{
  v1 = *a1;
  *a1 += 2;
  v2 = *v1;
  *a1 = v1 + 4;
  v3 = *(v1 + 1);
  *a1 = v1 + 6;
  v4 = *(v1 + 2);
  v5 = malloc(0x20uLL);
  v6 = v5;
  if (v5)
  {
    *v5 = v2;
    v5[1] = v3;
    v5[2] = v4;
    v5[3] = localeconv();
  }

  return v6;
}

_OWORD *sub_298AA98E8(_OWORD *a1)
{
  if (!a1)
  {
    return 0;
  }

  result = malloc(0x20uLL);
  if (!result)
  {
    return 0;
  }

  v3 = a1[1];
  *result = *a1;
  result[1] = v3;
  return result;
}

void sub_298AA9928(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_298AA9934(FIELD *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *a2;
  v7 = field_buffer(a1, 0);
  v8 = v7;
  v9 = *(a2 + 24);
  do
  {
    v10 = *v7++;
  }

  while (v10 == 32);
  if (!*(v7 - 1))
  {
    goto LABEL_35;
  }

  if (v10 == 43 || v10 == 45)
  {
    if (!*v7)
    {
LABEL_35:
      result = 0;
      goto LABEL_36;
    }
  }

  else
  {
    --v7;
  }

  *v19 = 0;
  result = _nc_Widen_String(v7, v19);
  if (result)
  {
    if (*v19 >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v15 = *(result + v12);
        if (v14)
        {
          break;
        }

        if (v15 == 32)
        {
          goto LABEL_16;
        }

        if (v9 && *v9)
        {
          v16 = **v9;
        }

        else
        {
          v16 = 46;
        }

        if (v15 == v16)
        {
          if (v13 > 0)
          {
            goto LABEL_34;
          }

          v14 = 0;
          v13 = 1;
        }

        else
        {
          if ((v15 > 0xFF || (*(MEMORY[0x29EDCA600] + 4 * v15 + 60) & 0x400) == 0) && (*(result + v12) & 0xFEu) - 48 > 9)
          {
LABEL_34:
            free(result);
            goto LABEL_35;
          }

          v14 = 0;
        }

LABEL_17:
        v12 += 4;
        if (4 * *v19 == v12)
        {
          goto LABEL_30;
        }
      }

      if (v15 != 32)
      {
        goto LABEL_34;
      }

LABEL_16:
      v14 = 1;
      goto LABEL_17;
    }

LABEL_30:
    free(result);
    v17 = atof(v8);
    if (v5 >= v4 || (result = 0, v17 >= v5) && v17 <= v4)
    {
      __sprintf_chk(v19, 0, 0x40uLL, "%.*f", v6 & ~(v6 >> 31), v17);
      set_field_buffer(a1, 0, v19);
      result = 1;
    }
  }

LABEL_36:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_298AA9B1C(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (a1 <= 0xFF && (*(MEMORY[0x29EDCA600] + 4 * a1 + 60) & 0x400) != 0 || (a1 & 0xFE) - 48 < 0xA)
  {
    return 1;
  }

  v3 = 1;
  if (a1 != 43 && a1 != 45)
  {
    if (v2 && *v2)
    {
      v5 = **v2;
    }

    else
    {
      v5 = 46;
    }

    return v5 == a1;
  }

  return v3;
}

void **sub_298AA9B90(const char ***a1)
{
  v1 = (*a1)++;
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = calloc(1uLL, 0x10uLL);
  if (v3)
  {
    v4 = malloc(0x20uLL);
    *v3 = v4;
    if (!v4)
    {
LABEL_7:
      free(v3);
      return 0;
    }

    if (regcomp(v4, v2, 13))
    {
      if (*v3)
      {
        free(*v3);
      }

      goto LABEL_7;
    }

    v6 = malloc(8uLL);
    v3[1] = v6;
    if (v6)
    {
      *v6 = 1;
    }
  }

  return v3;
}

uint64_t sub_298AA9C2C(uint64_t result)
{
  if (result)
  {
    ++**(result + 8);
  }

  return result;
}

void sub_298AA9C44(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if ((*v2)-- == 1)
    {
      if (*a1)
      {
        free(v2);
        MEMORY[0x29C293540](*a1);
        free(*a1);
      }

      free(a1);
    }
  }
}

BOOL sub_298AA9CB8(const FIELD *a1, const regex_t **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = field_buffer(a1, 0);
  return regexec(v2, v3, 0, 0, 0) == 0;
}