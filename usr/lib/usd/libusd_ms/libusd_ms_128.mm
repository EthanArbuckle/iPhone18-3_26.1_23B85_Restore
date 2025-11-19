uint64_t sub_29ABDF12C(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *a2;
  sub_29ABD30AC(v7, *a1);
  if (v2 != v3)
  {
    if (*(v3 + 52) >= 7u)
    {
      v4 = *v3;
    }

    else
    {
      v4 = v3;
    }

    sub_29ABDFEA4(v2, v4, &v4[8 * *(v3 + 48)]);
  }

  if (v7 != v3)
  {
    if (v9 >= 7)
    {
      v5 = v7[0];
    }

    else
    {
      v5 = v7;
    }

    sub_29ABDFEA4(v3, v5, &v5[8 * v8]);
  }

  return sub_29ABC3488(v7);
}

uint64_t sub_29ABDF200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v17 = a2;
  v18 = a1;
  v15 = a4;
  v16 = a3;
  v20 = a2;
  v21 = a1;
  v19 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v21;
LABEL_9:
      v13 = &v19;
      goto LABEL_10;
    }

    sub_29ABDF12C(&v21, &v20);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_29ABDF12C(&v20, &v19);
    if ((*a5)(v20, v21))
    {
      v12 = &v21;
      v13 = &v20;
LABEL_10:
      sub_29ABDF12C(v12, v13);
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    sub_29ABDF12C(&v16, &v15);
    result = (*a5)(v16, a2);
    if (result)
    {
      sub_29ABDF12C(&v17, &v16);
      result = (*a5)(v17, a1);
      if (result)
      {
        return sub_29ABDF12C(&v18, &v17);
      }
    }
  }

  return result;
}

uint64_t sub_29ABDF340(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v18 = *MEMORY[0x29EDCA608];
  if (result != a2)
  {
    v4 = result;
    v5 = result + 56;
    if (result + 56 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v5;
        result = (*a3)(v5, v9);
        if (result)
        {
          sub_29ABD30AC(v15, v8);
          v10 = v7;
          while (1)
          {
            v11 = *(v4 + v10 + 52) >= 7u ? *(v4 + v10) : v4 + v10;
            sub_29ABDFEA4(v4 + v10 + 56, v11, &v11[8 * *(v4 + v10 + 48)]);
            if (!v10)
            {
              break;
            }

            v12 = (*a3)(v15, v4 + v10 - 56);
            v10 -= 56;
            if ((v12 & 1) == 0)
            {
              v13 = (v4 + v10 + 56);
              goto LABEL_13;
            }
          }

          v13 = v4;
LABEL_13:
          if (v13 != v15)
          {
            if (v17 >= 7)
            {
              v14 = v15[0];
            }

            else
            {
              v14 = v15;
            }

            sub_29ABDFEA4(v13, v14, &v14[8 * v16]);
          }

          result = sub_29ABC3488(v15);
        }

        v5 = v8 + 56;
        v7 += 56;
      }

      while (v8 + 56 != a2);
    }
  }

  return result;
}

uint64_t sub_29ABDF4A4(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v15 = *MEMORY[0x29EDCA608];
  if (result != a2)
  {
    v4 = result;
    for (i = result + 56; v4 + 56 != a2; i = v4 + 56)
    {
      v7 = v4;
      v4 = i;
      result = (*a3)(i, v7);
      if (result)
      {
        sub_29ABD30AC(v12, v4);
        v8 = v4;
        do
        {
          if (*(v8 - 1) >= 7u)
          {
            v9 = *(v8 - 7);
          }

          else
          {
            v9 = (v8 - 7);
          }

          sub_29ABDFEA4(v8, v9, &v9[8 * *(v8 - 2)]);
          v10 = (*a3)(v12, (v8 - 14));
          v8 -= 7;
        }

        while ((v10 & 1) != 0);
        if (v8 != v12)
        {
          if (v14 >= 7)
          {
            v11 = v12[0];
          }

          else
          {
            v11 = v12;
          }

          sub_29ABDFEA4(v8, v11, &v11[8 * v13]);
        }

        result = sub_29ABC3488(v12);
      }
    }
  }

  return result;
}

uint64_t sub_29ABDF5E0(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *a2;
  sub_29ABD30AC(v7, *a1);
  if (v2 != v3)
  {
    if (*(v3 + 52) >= 7u)
    {
      v4 = *v3;
    }

    else
    {
      v4 = v3;
    }

    sub_29ABDFEA4(v2, v4, &v4[8 * *(v3 + 48)]);
  }

  if (v7 != v3)
  {
    if (v9 >= 7)
    {
      v5 = v7[0];
    }

    else
    {
      v5 = v7;
    }

    sub_29ABDFEA4(v3, v5, &v5[8 * v8]);
  }

  return sub_29ABC3488(v7);
}

unint64_t sub_29ABDF6B4(uint64_t a1, unint64_t a2, unsigned int (**a3)(void *))
{
  v19 = *MEMORY[0x29EDCA608];
  v14 = a2;
  v15 = a1;
  sub_29ABD30AC(v16, a1);
  if ((*a3)(v16, a2 - 56))
  {
    v6 = a1;
    do
    {
      v6 += 56;
      v15 = v6;
    }

    while (((*a3)(v16, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 56;
    do
    {
      v6 = v7;
      v15 = v7;
      if (v7 >= v14)
      {
        break;
      }

      v8 = (*a3)(v16, v7);
      v7 = v6 + 56;
    }

    while (!v8);
  }

  v9 = v14;
  if (v6 < v14)
  {
    do
    {
      v9 -= 56;
      v14 = v9;
    }

    while (((*a3)(v16, v9) & 1) != 0);
    v6 = v15;
  }

  if (v6 < v9)
  {
    do
    {
      sub_29ABDF12C(&v15, &v14);
      do
      {
        v15 += 56;
      }

      while (!(*a3)(v16));
      do
      {
        v14 -= 56;
      }

      while (((*a3)(v16) & 1) != 0);
      v6 = v15;
    }

    while (v15 < v14);
  }

  if (v6 - 56 != a1)
  {
    if (*(v6 - 4) >= 7u)
    {
      v10 = *(v6 - 56);
    }

    else
    {
      v10 = (v6 - 56);
    }

    sub_29ABDFEA4(a1, v10, &v10[8 * *(v6 - 8)]);
  }

  if ((v6 - 56) != v16)
  {
    if (v18 >= 7)
    {
      v11 = v16[0];
    }

    else
    {
      v11 = v16;
    }

    sub_29ABDFEA4(v6 - 56, v11, &v11[8 * v17]);
  }

  v12 = v15;
  sub_29ABC3488(v16);
  return v12;
}

void sub_29ABDF874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

char *sub_29ABDF8AC(uint64_t a1, unint64_t a2, uint64_t (**a3)(void))
{
  v24 = *MEMORY[0x29EDCA608];
  v19 = a2;
  sub_29ABD30AC(v21, a1);
  v5 = 0;
  do
  {
    v20 = a1 + v5 + 56;
    v5 += 56;
  }

  while (((*a3)() & 1) != 0);
  v6 = v19;
  if (v5 == 56)
  {
    v9 = a1 + 56;
    do
    {
      if (v9 >= v6)
      {
        break;
      }

      v10 = *a3;
      v6 -= 56;
      v19 = v6;
    }

    while (((v10)(v6, v21) & 1) == 0);
  }

  else
  {
    v7 = v19 - 56;
    do
    {
      v19 = v7;
      v8 = (*a3)(v7, v21);
      v7 -= 56;
    }

    while (!v8);
    v9 = v20;
  }

  v11 = v9;
  if (v9 < v19)
  {
    do
    {
      sub_29ABDF12C(&v20, &v19);
      do
      {
        v20 += 56;
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v19 -= 56;
      }

      while (!(*a3)());
      v11 = v20;
    }

    while (v20 < v19);
  }

  v12 = (v11 - 56);
  if (v11 - 56 != a1)
  {
    v13 = *(v11 - 56);
    v15 = v11 - 8;
    v14 = *(v11 - 8);
    if (*(v15 + 4) >= 7u)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    sub_29ABDFEA4(a1, v16, &v16[8 * v14]);
  }

  if (v12 != v21)
  {
    if (v23 >= 7)
    {
      v17 = v21[0];
    }

    else
    {
      v17 = v21;
    }

    sub_29ABDFEA4(v12, v17, &v17[8 * v22]);
  }

  sub_29ABC3488(v21);
  return v12;
}

uint64_t sub_29ABDFA98(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v32 = *MEMORY[0x29EDCA608];
  v23 = a2;
  v24 = a1;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a1 + 56;
        v10 = a2 - 56;
        v28 = a1 + 56;
        v29[0] = a1;
        v27 = a2 - 56;
        v11 = (*a3)(a1 + 56, a1);
        v12 = (*a3)(v10, v9);
        if (v11)
        {
          if (v12)
          {
            sub_29ABDF12C(v29, &v27);
          }

          else
          {
            sub_29ABDF12C(v29, &v28);
            if ((*a3)(v27, v28))
            {
              sub_29ABDF12C(&v28, &v27);
            }
          }
        }

        else if (v12)
        {
          sub_29ABDF12C(&v28, &v27);
          if ((*a3)(v28, v29[0]))
          {
            sub_29ABDF12C(v29, &v28);
          }
        }

        return 1;
      case 4:
        sub_29ABDF200(a1, a1 + 56, a1 + 112, a2 - 56, a3);
        return 1;
      case 5:
        v28 = a1 + 56;
        v29[0] = a1;
        v8 = a2 - 56;
        v26 = a1 + 168;
        v27 = a1 + 112;
        v25 = a2 - 56;
        sub_29ABDF200(a1, a1 + 56, a1 + 112, a1 + 168, a3);
        if ((*a3)(v8, a1 + 168))
        {
          sub_29ABDF12C(&v26, &v25);
          if ((*a3)(v26, a1 + 112))
          {
            sub_29ABDF12C(&v27, &v26);
            if ((*a3)(v27, a1 + 56))
            {
              sub_29ABDF12C(&v28, &v27);
              if ((*a3)(v28, a1))
              {
                sub_29ABDF12C(v29, &v28);
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v23 = a2 - 56;
      if ((v7)(a2 - 56))
      {
        sub_29ABDF12C(&v24, &v23);
      }

      return 1;
    }
  }

  v13 = a1 + 112;
  v28 = a1 + 56;
  v29[0] = a1;
  v27 = a1 + 112;
  v14 = (*a3)(a1 + 56, a1);
  v15 = (*a3)(a1 + 112, a1 + 56);
  if (v14)
  {
    if (v15)
    {
      sub_29ABDF12C(v29, &v27);
    }

    else
    {
      sub_29ABDF12C(v29, &v28);
      if ((*a3)(v27, v28))
      {
        sub_29ABDF12C(&v28, &v27);
      }
    }
  }

  else if (v15)
  {
    sub_29ABDF12C(&v28, &v27);
    if ((*a3)(v28, v29[0]))
    {
      sub_29ABDF12C(v29, &v28);
    }
  }

  v16 = a1 + 168;
  if (v16 != a2)
  {
    v17 = 0;
    do
    {
      if ((*a3)(v16, v13))
      {
        sub_29ABD30AC(v29, v16);
        do
        {
          v18 = v13;
          if (*(v13 + 52) >= 7u)
          {
            v19 = *v13;
          }

          else
          {
            v19 = v13;
          }

          sub_29ABDFEA4(v13 + 56, v19, &v19[8 * *(v13 + 48)]);
          if (v13 == v24)
          {
            break;
          }

          v13 -= 56;
        }

        while (((*a3)(v29, (v18 - 7)) & 1) != 0);
        if (v18 != v29)
        {
          if (v31 >= 7)
          {
            v20 = v29[0];
          }

          else
          {
            v20 = v29;
          }

          sub_29ABDFEA4(v18, v20, &v20[8 * v30]);
        }

        if (++v17 == 8)
        {
          v21 = v16 + 56 == v23;
          sub_29ABC3488(v29);
          return v21;
        }

        sub_29ABC3488(v29);
      }

      v13 = v16;
      v16 += 56;
    }

    while (v16 != v23);
  }

  return 1;
}

void sub_29ABDFE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

void sub_29ABDFEA4(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = *(a1 + 52);
  v7 = a1;
  if (v6 >= 7)
  {
    v7 = *a1;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 8 * v8;
    do
    {
      if ((*v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      ++v7;
      v9 -= 8;
    }

    while (v9);
    v6 = *(a1 + 52);
  }

  *(a1 + 48) = 0;
  v10 = a3 - a2;
  v11 = (a3 - a2) >> 3;
  if (v11 > v6)
  {
    sub_29ABDFF98(a1, v11);
    v6 = *(a1 + 52);
  }

  v12 = a1;
  if (v6 >= 7)
  {
    v12 = *a1;
  }

  for (; v4 != a3; ++v12)
  {
    v13 = *v4;
    *v12 = *v4;
    if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4 += 8;
  }

  *(a1 + 48) = v10 >> 3;
}

void sub_29ABDFF98(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(8 * a2);
  v5 = v4;
  v6 = *(a1 + 52);
  v7 = a1;
  if (v6 >= 7)
  {
    v7 = *a1;
  }

  v8 = *(a1 + 48);
  v9 = 8 * v8;
  if (v8)
  {
    v10 = 8 * v8;
    v11 = v4;
    do
    {
      *v11++ = *v7;
      *v7++ = 0;
      v10 -= 8;
    }

    while (v10);
  }

  v12 = a1;
  if (v6 >= 7)
  {
    v12 = *a1;
  }

  if (v8)
  {
    do
    {
      if ((*v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      ++v12;
      v9 -= 8;
    }

    while (v9);
    v6 = *(a1 + 52);
  }

  if (v6 >= 7)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 52) = v2;
}

uint64_t sub_29ABE0060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 57)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 56 * v10;
      do
      {
        sub_29ABE01B8(v7, a4, v9, v12);
        v12 -= 56;
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if ((*a4)(v13, v18))
        {
          sub_29ABDF12C(&v17, &v18);
          sub_29ABE01B8(v18, a4, v9, v18);
        }

        v13 = v17 + 56;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 57)
    {
      v14 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      do
      {
        sub_29ABE03A8(v7, v6, a4, v14);
        v6 -= 56;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_29ABE01B8(uint64_t result, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - result) >> 3))
    {
      v10 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3)) | 1;
      v11 = result + 56 * v10;
      v12 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3) + 2;
      if (v12 < a3 && (*a2)(result + 56 * v10, v11 + 56))
      {
        v11 += 56;
        v10 = v12;
      }

      result = (*a2)(v11, v5);
      if ((result & 1) == 0)
      {
        sub_29ABD30AC(v17, v5);
        do
        {
          v13 = v11;
          if (v5 != v11)
          {
            if (*(v11 + 52) >= 7u)
            {
              v14 = *v11;
            }

            else
            {
              v14 = v11;
            }

            sub_29ABDFEA4(v5, v14, &v14[8 * *(v11 + 48)]);
          }

          if (v7 < v10)
          {
            break;
          }

          v15 = (2 * v10) | 1;
          v11 = v6 + 56 * v15;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v15;
          }

          else if ((*a2)(v6 + 56 * v15, v11 + 56))
          {
            v11 += 56;
          }

          else
          {
            v10 = v15;
          }

          v5 = v13;
        }

        while (!(*a2)(v11, v17));
        if (v13 != v17)
        {
          if (v19 >= 7)
          {
            v16 = v17[0];
          }

          else
          {
            v16 = v17;
          }

          sub_29ABDFEA4(v13, v16, &v16[8 * v18]);
        }

        return sub_29ABC3488(v17);
      }
    }
  }

  return result;
}

uint64_t sub_29ABE03A8(uint64_t result, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a4 >= 2)
  {
    v7 = result;
    sub_29ABD30AC(v13, result);
    v8 = sub_29ABE050C(v7, a3, a4);
    v9 = v8;
    if (v8 == (a2 - 56))
    {
      if (v8 != v13)
      {
        if (v15 >= 7)
        {
          v12 = v13[0];
        }

        else
        {
          v12 = v13;
        }

        sub_29ABDFEA4(v8, v12, &v12[8 * v14]);
      }
    }

    else
    {
      if (*(a2 - 4) >= 7u)
      {
        v10 = *(a2 - 56);
      }

      else
      {
        v10 = (a2 - 56);
      }

      sub_29ABDFEA4(v8, v10, &v10[8 * *(a2 - 8)]);
      if ((a2 - 56) != v13)
      {
        if (v15 >= 7)
        {
          v11 = v13[0];
        }

        else
        {
          v11 = v13;
        }

        sub_29ABDFEA4(a2 - 56, v11, &v11[8 * v14]);
      }

      sub_29ABE05E0(v7, (v9 + 7), a3, 0x6DB6DB6DB6DB6DB7 * ((v9 - v7 + 56) >> 3));
    }

    return sub_29ABC3488(v13);
  }

  return result;
}

uint64_t sub_29ABE050C(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 56 * v6;
    v9 = v8 + 56;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 112;
      if ((*a2)(v8 + 56, v8 + 112))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (a1 != v9)
    {
      if (*(v9 + 52) >= 7u)
      {
        v13 = *v9;
      }

      else
      {
        v13 = v9;
      }

      sub_29ABDFEA4(a1, v13, &v13[8 * *(v9 + 48)]);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_29ABE05E0(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = result + 56 * (v4 >> 1);
    v9 = a2 - 56;
    result = (*a3)(v8, a2 - 56);
    if (result)
    {
      sub_29ABD30AC(v13, v9);
      do
      {
        v10 = v8;
        if (v9 != v8)
        {
          if (*(v8 + 52) >= 7u)
          {
            v11 = *v8;
          }

          else
          {
            v11 = v8;
          }

          sub_29ABDFEA4(v9, v11, &v11[8 * *(v8 + 48)]);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = v6 + 56 * v7;
        v9 = v10;
      }

      while (((*a3)(v8, v13) & 1) != 0);
      if (v10 != v13)
      {
        if (v15 >= 7)
        {
          v12 = v13[0];
        }

        else
        {
          v12 = v13;
        }

        sub_29ABDFEA4(v10, v12, &v12[8 * v14]);
      }

      return sub_29ABC3488(v13);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::HdContainerSchema *this@<X0>, void *a2@<X8>)
{
  result = *this;
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdContainerSchema::BuildRetained@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

pxrInternal__aapl__pxrReserved__::HdCoordSys *pxrInternal__aapl__pxrReserved__::HdCoordSys::HdCoordSys(pxrInternal__aapl__pxrReserved__::HdCoordSys *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdSprim::HdSprim(this, a2);
  *v4 = &unk_2A20769D0;
  sub_29ABE0804(a2, v4 + 16);
  return this;
}

void sub_29ABE0804(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, uint64_t a2@<X8>)
{
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a1);
  v4 = atomic_load(&qword_2A1748F30);
  if (!v4)
  {
    v4 = sub_29ABE0E28();
  }

  if ((*(v4 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v4 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  if (*(EmptyString + 23) >= 0)
  {
    v6 = EmptyString;
  }

  else
  {
    v6 = *EmptyString;
  }

  v7 = *(Name + 23);
  v8 = Name[1];
  if (v7 >= 0)
  {
    v9 = *(Name + 23);
  }

  else
  {
    v9 = Name[1];
  }

  v10 = strlen(v6);
  if (v9 < v10)
  {
    goto LABEL_16;
  }

  v11 = *Name;
  if (v7 >= 0)
  {
    v11 = Name;
  }

  if (!strcmp(&v11[v9 - v10], v6))
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    if (!v13)
    {
      v13 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
    }

    v14 = *(v13 + 10) & 0xFFFFFFFFFFFFFFF8;
    if (v14)
    {
      v15 = (v14 + 16);
      if (*(v14 + 39) < 0)
      {
        v15 = *v15;
      }
    }

    else
    {
      v15 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix(Name, *v15, &__dst);
  }

  else
  {
LABEL_16:
    if (v7 < 0)
    {
      sub_29A008D14(&__dst, *Name, v8);
    }

    else
    {
      v12 = *Name;
      __dst.__r_.__value_.__r.__words[2] = Name[2];
      *&__dst.__r_.__value_.__l.__data_ = v12;
    }
  }

  v16 = atomic_load(&qword_2A1748F30);
  if (!v16)
  {
    v16 = sub_29ABE0E28();
  }

  if ((*v16 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v17 = ((*v16 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v17 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::StripPrefixNamespace(&__dst, v17, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29ABE09B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCoordSys::Sync(uint64_t this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v6 = this;
  v21 = *MEMORY[0x29EDCA608];
  if (a2 || (this = sub_29B2C4F64(v16), (this & 1) != 0))
  {
    if (*a4)
    {
      if ((atomic_load_explicit(&qword_2A1748F28, memory_order_acquire) & 1) == 0)
      {
        v9 = __cxa_guard_acquire(&qword_2A1748F28);
        if (v9)
        {
          v10 = *pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetSchemaToken(v9);
          v18 = v10;
          if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v18 &= 0xFFFFFFFFFFFFFFF8;
          }

          v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
          if (!v11)
          {
            v11 = sub_29ABE0FE8(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
          }

          v12 = *(v11 + 1);
          v19 = v12;
          if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v19 &= 0xFFFFFFFFFFFFFFF8;
          }

          memset(v15, 0, sizeof(v15));
          sub_29A12EF7C(v15, &v18, &v20, 2uLL);
          pxrInternal__aapl__pxrReserved__::SdfPath::JoinIdentifier(v15, &v20);
          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&unk_2A1748F20);
          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__r_.__value_.__l.__data_);
          }

          v17 = v15;
          sub_29A124AB0(&v17);
          for (i = 8; i != -8; i -= 8)
          {
            v14 = *(&v18 + i);
            if ((v14 & 7) != 0)
            {
              atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          __cxa_atexit(sub_29A424A8C, &unk_2A1748F20, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1748F28);
        }
      }

      (*(*a2 + 120))(&v20, a2, v6 + 8, &unk_2A1748F20);
      if (sub_29A1FA710(&v20))
      {
        if ((v20.__r_.__value_.__s.__data_[8] & 4) != 0)
        {
          v7 = (*((v20.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8) + 168))(&v20);
        }

        else
        {
          v7 = &v20;
        }

        sub_29A166F2C((v6 + 16), v7);
      }

      else
      {
        sub_29ABE0804((v6 + 8), v15);
        v8 = (v6 + 16);
        if (v15 == (v6 + 16))
        {
          if ((v15[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v15[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v8 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v8 = v15[0];
        }
      }

      this = sub_29A186B14(&v20);
    }

    *a4 = 0;
  }

  return this;
}

void sub_29ABE0C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A1748F28);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdCoordSys::~HdCoordSys(pxrInternal__aapl__pxrReserved__::HdCoordSys *this)
{
  *this = &unk_2A20769D0;
  v1 = *(this + 2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdSprim::~HdSprim(this);
}

{
  *this = &unk_2A20769D0;
  v1 = *(this + 2);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdSprim::~HdSprim(this);
}

{
  *this = &unk_2A20769D0;
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdSprim::~HdSprim(this);

  operator delete(v3);
}

unint64_t sub_29ABE0E28()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "coordSys", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "binding", 0);
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A1748F30, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A1748F30);
  }

  return v0;
}

void sub_29ABE0F6C(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens_StaticTokenType *sub_29ABE0FE8(atomic_ullong *a1)
{
  result = sub_29ABE1030();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens_StaticTokenType::~HdCoordSysSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens_StaticTokenType *sub_29ABE1030()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens_StaticTokenType::HdCoordSysSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens_StaticTokenType::~HdCoordSysSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens_StaticTokenType::HdCoordSysSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "coordSys", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "name", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABE11F0(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetName(pxrInternal__aapl__pxrReserved__::HdCoordSysSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABE0FE8(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABE0FE8(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
    }

    sub_29A166F2C(v11, v4 + 1);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABE140C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::Builder::SetName(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens))
    {
      sub_29ABE0FE8(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdCoordSysSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
  if (!result)
  {
    return sub_29ABE0FE8(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdCoordSysSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdCoordSysSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748F70))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABE0FE8(&pxrInternal__aapl__pxrReserved__::HdCoordSysSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748F38, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748F38, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748F70);
  }

  return &unk_2A1748F38;
}

void pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens_StaticTokenType::~HdCoordSysBindingSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens_StaticTokenType *this)
{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v2 = (this + 8);
  sub_29A124AB0(&v2);
  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens_StaticTokenType::HdCoordSysBindingSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "coordSysBinding", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A12EF7C(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetCoordSysBindingNames@<X0>(pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema *this@<X0>, void *a2@<X8>)
{
  result = *this;
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetCoordSysBinding(pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema *this@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 7) != 0)
  {
    v3 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v4 = v3;
    }
  }

  sub_29ABE18CC(this, a3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABE18CC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABE1B68(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

double pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::BuildRetained@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens))
    {
      sub_29ABE1BF8(&pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens);
  if (!result)
  {
    return sub_29ABE1BF8(&pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748FB0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABE1BF8(&pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748F78, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748F78, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748FB0);
  }

  return &unk_2A1748F78;
}

void *sub_29ABE1B68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2076A10, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

unint64_t sub_29ABE1BF8(atomic_ullong *a1)
{
  v2 = sub_29ABE1C78();
  v3 = v2;
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    if (v2)
    {
      v6 = (v2 + 8);
      sub_29A124AB0(&v6);
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v3);
    }

    return atomic_load(a1);
  }

  return v3;
}

pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens_StaticTokenType *sub_29ABE1C78()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens_StaticTokenType::HdCoordSysBindingSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens_StaticTokenType::~HdCubeSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens_StaticTokenType::HdCubeSchemaTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "cube", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "size", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABE1E38(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdCubeSchema::GetSize(pxrInternal__aapl__pxrReserved__::HdCubeSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABE22C0(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
  }

  v5 = v4[1];
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCubeSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABE22C0(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
    }

    sub_29A166F2C(v11, v4 + 1);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABE2054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdCubeSchema::Builder::SetSize(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdCubeSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens))
    {
      sub_29ABE22C0(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

atomic_uint **pxrInternal__aapl__pxrReserved__::HdCubeSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdCubeSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
  if (!result)
  {
    return sub_29ABE22C0(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdCubeSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdCubeSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1748FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748FF0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABE22C0(&pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748FB8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748FB8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748FF0);
  }

  return &unk_2A1748FB8;
}

atomic_uint **sub_29ABE22C0(atomic_ullong *a1)
{
  result = sub_29ABE2308();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens_StaticTokenType::~HdCubeSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29ABE2308()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdCubeSchemaTokens_StaticTokenType::HdCubeSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens_StaticTokenType::~HdCylinderSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens_StaticTokenType *this)
{
  v10 = (this + 72);
  sub_29A124AB0(&v10);
  v2 = *(this + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 7);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 6);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 4);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 3);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 2);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 1);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens_StaticTokenType::HdCylinderSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens_StaticTokenType *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "cylinder", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "height", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "radius", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "radiusTop", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "radiusBottom", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "axis", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "X", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "Y", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "Z", 0);
  v3 = (this + 72);
  v4 = *this;
  v25 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v5;
    }
  }

  v6 = *(this + 1);
  v26 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v7;
    }
  }

  v8 = *(this + 2);
  v27 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v9;
    }
  }

  v10 = *(this + 3);
  v28 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v11;
    }
  }

  v12 = *(this + 4);
  v29 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v13;
    }
  }

  v14 = *(this + 5);
  v30 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v15;
    }
  }

  v16 = *(this + 6);
  v31 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v17;
    }
  }

  v18 = *(this + 7);
  v32 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v19;
    }
  }

  v20 = *(this + 8);
  v33 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v21;
    }
  }

  *v3 = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  sub_29A12EF7C(v3, &v25, &v34, 9uLL);
  for (i = 64; i != -8; i -= 8)
  {
    v23 = *(&v25 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABE26F8(_Unwind_Exception *a1)
{
  v3 = 64;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[8];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[7];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[6];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[5];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[4];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[3];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[2];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[1];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetHeight(pxrInternal__aapl__pxrReserved__::HdCylinderSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetRadius(pxrInternal__aapl__pxrReserved__::HdCylinderSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetRadiusTop(pxrInternal__aapl__pxrReserved__::HdCylinderSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetRadiusBottom(pxrInternal__aapl__pxrReserved__::HdCylinderSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB394(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetAxis(pxrInternal__aapl__pxrReserved__::HdCylinderSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  }

  v5 = *(v4 + 5);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdCylinderSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
{
  v50 = *MEMORY[0x29EDCA608];
  v11 = &v46;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  v46 = 0u;
  v12 = v48;
  if (*a1)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    if (!v14)
    {
      v14 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    }

    v11 = v47;
    v12 = v48 + 1;
    sub_29A166F2C(v48, v14 + 1);
    v16 = *a1;
    v15 = a1[1];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(&v46 + 1);
    *&v46 = v16;
    *(&v46 + 1) = v15;
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  if (*a2)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    }

    sub_29A166F2C(v12, v19 + 2);
    ++v18;
    v21 = *a2;
    v20 = a2[1];
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(v11 + 1);
    *v11 = v21;
    *(v11 + 1) = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
    }
  }

  if (*a3)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    if (!v23)
    {
      v23 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    }

    sub_29A166F2C(v48 + v18, v23 + 3);
    v24 = v18 + 1;
    v25 = &v47[v18 - 1];
    v27 = *a3;
    v26 = a3[1];
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = v25[1];
    *v25 = v27;
    v25[1] = v26;
    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }

  else
  {
    v24 = v18;
  }

  if (*a4)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    if (!v29)
    {
      v29 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    }

    sub_29A166F2C(v48 + v24, v29 + 4);
    v30 = v24 + 1;
    v31 = &v47[v24 - 1];
    v33 = *a4;
    v32 = a4[1];
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v34 = v31[1];
    *v31 = v33;
    v31[1] = v32;
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  else
  {
    v30 = v24;
  }

  if (*a5)
  {
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    if (!v35)
    {
      v35 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    }

    sub_29A166F2C(v48 + v30, v35 + 5);
    v36 = v30 + 1;
    v37 = &v47[v30 - 1];
    v39 = *a5;
    v38 = a5[1];
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v40 = v37[1];
    *v37 = v39;
    v37[1] = v38;
    if (v40)
    {
      sub_29A014BEC(v40);
    }
  }

  else
  {
    v36 = v30;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v36, v48, &v46, &v45);
  *a6 = v45;
  for (i = 72; i != -8; i -= 16)
  {
    v42 = *(&v47[-1] + i);
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  for (j = 32; j != -8; j -= 8)
  {
    v44 = *(v48 + j);
    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29ABE2EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v22 = 72;
  while (1)
  {
    v23 = *(&a11 + v22);
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    v22 -= 16;
    if (v22 == -8)
    {
      v24 = 32;
      while (1)
      {
        v25 = *(&a21 + v24);
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v24 -= 8;
        if (v24 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdCylinderSchema::Builder::SetHeight(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCylinderSchema::Builder::SetRadius(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCylinderSchema::Builder::SetRadiusTop(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCylinderSchema::Builder::SetRadiusBottom(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdCylinderSchema::Builder::SetAxis(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens))
    {
      sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdCylinderSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  if (!result)
  {
    return sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdCylinderSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdCylinderSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749030))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1748FF8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1748FF8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749030);
  }

  return &unk_2A1748FF8;
}

double pxrInternal__aapl__pxrReserved__::HdCylinderSchema::BuildAxisDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdCylinderSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
  }

  if ((*(v5 + 6) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
    }

    if ((*(v7 + 7) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABE34F4(&pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens);
      }

      if ((*(v8 + 8) ^ *this) > 7)
      {
        sub_29ABCCFA4(this, &v12);
        result = *&v12;
        *a2 = v12;
        return result;
      }

      if ((atomic_load_explicit(&qword_2A1749078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749078))
      {
        sub_29ABCCFA4(this, &qword_2A1749068);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1749068, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1749078);
      }

      v6 = &qword_2A1749068;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1749060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749060))
      {
        sub_29ABCCFA4(this, &qword_2A1749050);
        __cxa_atexit(sub_29ABCD02C, &qword_2A1749050, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1749060);
      }

      v6 = &qword_2A1749050;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1749048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749048))
    {
      sub_29ABCCFA4(this, &qword_2A1749038);
      __cxa_atexit(sub_29ABCD02C, &qword_2A1749038, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749048);
    }

    v6 = &qword_2A1749038;
  }

  v10 = *v6;
  v9 = v6[1];
  *a2 = v10;
  *(a2 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens_StaticTokenType *sub_29ABE34F4(atomic_ullong *a1)
{
  result = sub_29ABE353C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens_StaticTokenType::~HdCylinderSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens_StaticTokenType *sub_29ABE353C()
{
  v0 = operator new(0x60uLL);
  pxrInternal__aapl__pxrReserved__::HdCylinderSchemaTokens_StaticTokenType::HdCylinderSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdContainerDataSource::Get(pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *this@<X1>, void *a2@<X0>, __int128 *a3@<X8>)
{
  v3 = a3;
  if (!*a2)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    return;
  }

  ElementCount = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElementCount(this);
  if (!ElementCount)
  {
    v17 = a2[1];
    *v3 = *a2;
    *(v3 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    return;
  }

  v7 = ElementCount;
  v20 = 0uLL;
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = ElementCount - 1;
  while (1)
  {
    Element = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(this, v10);
    (*(*v8 + 24))(&v19, v8, Element);
    v13 = v19;
    v19 = 0uLL;
    v14 = *(&v20 + 1);
    v20 = v13;
    if (v14)
    {
      break;
    }

    v15 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_12:
    if (v10 >= v11)
    {
      v16 = v9;
    }

    else
    {
      sub_29ABC3244(&v20, &v19);
      v16 = *(&v19 + 1);
      v8 = v19;
      v19 = 0uLL;
      if (v9)
      {
        sub_29A014BEC(v9);
        if (*(&v19 + 1))
        {
          sub_29A014BEC(*(&v19 + 1));
        }
      }

      if (!v8)
      {
        goto LABEL_26;
      }
    }

    ++v10;
    v9 = v16;
    if (v7 == v10)
    {
      v15 = v20;
      goto LABEL_25;
    }
  }

  sub_29A014BEC(v14);
  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  v15 = v20;
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_24:
  v16 = v9;
LABEL_25:
  v18 = *(&v20 + 1);
  *v3 = v15;
  *(v3 + 1) = v18;
  v3 = &v20;
LABEL_26:
  *v3 = 0;
  *(v3 + 1) = 0;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }
}

void sub_29ABE3728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdGetMergedContributingSampleTimesForInterval(uint64_t a1, uint64_t *a2, uint64_t a3, float a4, float a5)
{
  if (a1)
  {
    v9 = a1;
    v10 = 0;
    while (1)
    {
      v11 = *a2;
      if (!*a2)
      {
        goto LABEL_13;
      }

      __p = 0;
      v23 = 0;
      v24 = 0;
      v12 = (*(*v11 + 24))(v11, &__p, a4, a5);
      v13 = __p;
      if ((v12 & 1) == 0)
      {
        goto LABEL_11;
      }

      v14 = v23;
      if (__p == v23 || a3 == 0)
      {
        break;
      }

      v16 = *(a3 + 8);
      v17 = *a3;
      if (*a3 == v16)
      {
        if (v17)
        {
          *(a3 + 8) = v17;
          operator delete(v17);
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          v13 = __p;
          v14 = v23;
        }

        *a3 = v13;
        *(a3 + 8) = v14;
        *(a3 + 16) = v24;
        v10 = 1;
        goto LABEL_13;
      }

      v20 = 0uLL;
      v21 = 0;
      sub_29ABE4008(v17, v16, __p, v23, &v20, &v25);
      v18 = *a3;
      if (*a3)
      {
        *(a3 + 8) = v18;
        operator delete(v18);
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
      }

      *a3 = v20;
      v13 = __p;
      *(a3 + 16) = v21;
      v10 = 1;
      if (v13)
      {
LABEL_12:
        v23 = v13;
        operator delete(v13);
      }

LABEL_13:
      a2 += 2;
      if (!--v9)
      {
        return v10 & 1;
      }
    }

    v10 |= __p != v23;
LABEL_11:
    if (__p)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v10 = 0;
  return v10 & 1;
}

void sub_29ABE38B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdDebugPrintDataSource(void *a1, void *a2, int a3)
{
  v46[2] = *MEMORY[0x29EDCA608];
  sub_29ABC3244(a2, &v44);
  if (v44)
  {
    (*(*v44 + 16))(&__b);
    v6 = 126 - 2 * __clz((v42 - __b) >> 3);
    if (v42 == __b)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    sub_29ABE40EC(__b, v42, &v39, v7, 1);
    v8 = __b;
    v9 = v42;
    if (__b != v42)
    {
      do
      {
        (*(*v44 + 24))(&v39);
        if (v39)
        {
          sub_29A00944C(&__p, a3, 9);
          if ((v38 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v38 & 0x80u) == 0)
          {
            v11 = v38;
          }

          else
          {
            v11 = v37;
          }

          v12 = sub_29A00911C(a1, p_p, v11);
          v13 = sub_29A00911C(v12, "[", 1);
          v14 = pxrInternal__aapl__pxrReserved__::operator<<(v13, v8);
          sub_29A00911C(v14, "]\n", 2);
          if (v38 < 0)
          {
            operator delete(__p);
          }

          v34 = v39;
          v35 = v40;
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::HdDebugPrintDataSource(a1, &v34, (a3 + 1));
          if (v35)
          {
            sub_29A014BEC(v35);
          }
        }

        if (v40)
        {
          sub_29A014BEC(v40);
        }

        v8 += 8;
      }

      while (v8 != v9);
    }

    __p = &__b;
    sub_29A124AB0(&__p);
  }

  else
  {
    sub_29ABE3E74(a2, &__p);
    if (__p)
    {
      v15 = (*(*__p + 16))(__p);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          sub_29A00944C(&__b, a3, 9);
          if ((v43 & 0x80u) == 0)
          {
            p_b = &__b;
          }

          else
          {
            p_b = __b;
          }

          if ((v43 & 0x80u) == 0)
          {
            v18 = v43;
          }

          else
          {
            v18 = v42;
          }

          v19 = sub_29A00911C(a1, p_b, v18);
          v20 = sub_29A00911C(v19, "[", 1);
          v21 = MEMORY[0x29C2C1F00](v20, i);
          sub_29A00911C(v21, "]\n", 2);
          if (v43 < 0)
          {
            operator delete(__b);
          }

          (*(*__p + 24))(&v32);
          pxrInternal__aapl__pxrReserved__::HdDebugPrintDataSource(a1, &v32, (a3 + 1));
          if (v33)
          {
            sub_29A014BEC(v33);
          }
        }
      }
    }

    else
    {
      sub_29ABE3F04(a2, &v39);
      if (v39)
      {
        sub_29A00944C(&__b, a3, 9);
        if ((v43 & 0x80u) == 0)
        {
          v22 = &__b;
        }

        else
        {
          v22 = __b;
        }

        if ((v43 & 0x80u) == 0)
        {
          v23 = v43;
        }

        else
        {
          v23 = v42;
        }

        v24 = sub_29A00911C(a1, v22, v23);
        (*(*v39 + 16))(v46, 0.0);
        v25 = pxrInternal__aapl__pxrReserved__::operator<<(v24, v46);
        sub_29A00911C(v25, "\n", 1);
        sub_29A186B14(v46);
      }

      else if (*a2)
      {
        sub_29A00944C(&__b, a3, 9);
        if ((v43 & 0x80u) == 0)
        {
          v26 = &__b;
        }

        else
        {
          v26 = __b;
        }

        if ((v43 & 0x80u) == 0)
        {
          v27 = v43;
        }

        else
        {
          v27 = v42;
        }

        v28 = sub_29A00911C(a1, v26, v27);
        sub_29A00911C(v28, "UNKNOWN\n", 8);
      }

      else
      {
        sub_29A00944C(&__b, a3, 9);
        if ((v43 & 0x80u) == 0)
        {
          v29 = &__b;
        }

        else
        {
          v29 = __b;
        }

        if ((v43 & 0x80u) == 0)
        {
          v30 = v43;
        }

        else
        {
          v30 = v42;
        }

        v31 = sub_29A00911C(a1, v29, v30);
        sub_29A00911C(v31, "NULL\n", 5);
      }

      if (v43 < 0)
      {
        operator delete(__b);
      }

      if (v40)
      {
        sub_29A014BEC(v40);
      }
    }

    if (v37)
    {
      sub_29A014BEC(v37);
    }
  }

  if (v45)
  {
    sub_29A014BEC(v45);
  }
}

void sub_29ABE3D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a29)
  {
    sub_29A014BEC(a29);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABE3E74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2076A28, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *sub_29ABE3F04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2075CD0, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdDebugPrintDataSource(uint64_t *a1, int a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdDebugPrintDataSource(MEMORY[0x29EDC93C8], &v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29ABE3FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABE4008(int *a1@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X3>, const void **a5@<X4>, int **a6@<X8>)
{
  v9 = a1;
  if (a1 == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      sub_29A0C2184(a5, a3++);
    }

    v11 = v9;
  }

  else
  {
    v11 = a2;
    while (a3 != a4)
    {
      if (*a3 >= *v9)
      {
        a3 += *v9 >= *a3;
        sub_29A0C2184(a5, v9++);
      }

      else
      {
        sub_29A0C2184(a5, a3++);
      }

      if (v9 == v11)
      {
        v9 = v11;
        goto LABEL_10;
      }
    }

    while (v9 != v11)
    {
      sub_29A0C2184(a5, v9++);
    }
  }

  *a6 = v11;
  a6[1] = a4;
  a6[2] = a5;
}

uint64_t sub_29ABE40EC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = v7;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v7 = v11;
    v13 = v12;
    v14 = a2 - v11;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      result = sub_29A153D90(a3, a2 - 1, v11);
      if (result)
      {
        v47 = *v11;
LABEL_80:
        *v11 = *v8;
LABEL_81:
        *v8 = v47;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v14 <= 23)
    {
      if (a5)
      {

        return sub_29ABE47FC(v11, a2, a3);
      }

      else
      {

        return sub_29ABE4948(v11, a2, a3);
      }
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        return sub_29ABE5198(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[v14 >> 1];
    if (v14 >= 0x81)
    {
      v16 = sub_29A153D90(a3, &v11[v14 >> 1], v11);
      v17 = sub_29A153D90(a3, a2 - 1, v15);
      if (v16)
      {
        v18 = *v7;
        if (v17)
        {
          *v7 = *v8;
          goto LABEL_28;
        }

        *v7 = *v15;
        *v15 = v18;
        if (sub_29A153D90(a3, a2 - 1, v15))
        {
          v18 = *v15;
          *v15 = *v8;
LABEL_28:
          *v8 = v18;
        }
      }

      else if (v17)
      {
        v22 = *v15;
        *v15 = *v8;
        *v8 = v22;
        if (sub_29A153D90(a3, v15, v7))
        {
          v23 = *v7;
          *v7 = *v15;
          *v15 = v23;
        }
      }

      v26 = v15 - 1;
      v27 = sub_29A153D90(a3, v15 - 1, v7 + 1);
      v28 = sub_29A153D90(a3, a2 - 2, v15 - 1);
      if (v27)
      {
        v29 = v7[1];
        if (v28)
        {
          v7[1] = *v9;
          goto LABEL_40;
        }

        v7[1] = *v26;
        *v26 = v29;
        if (sub_29A153D90(a3, a2 - 2, v15 - 1))
        {
          v29 = *v26;
          *v26 = *v9;
LABEL_40:
          *v9 = v29;
        }
      }

      else if (v28)
      {
        v30 = *v26;
        *v26 = *v9;
        *v9 = v30;
        if (sub_29A153D90(a3, v15 - 1, v7 + 1))
        {
          v31 = v7[1];
          v7[1] = *v26;
          *v26 = v31;
        }
      }

      v32 = sub_29A153D90(a3, v15 + 1, v7 + 2);
      v33 = sub_29A153D90(a3, a2 - 3, v15 + 1);
      if (v32)
      {
        v34 = v7[2];
        if (v33)
        {
          v7[2] = *v10;
          goto LABEL_49;
        }

        v7[2] = v15[1];
        v15[1] = v34;
        if (sub_29A153D90(a3, a2 - 3, v15 + 1))
        {
          v34 = v15[1];
          v15[1] = *v10;
LABEL_49:
          *v10 = v34;
        }
      }

      else if (v33)
      {
        v35 = v15[1];
        v15[1] = *v10;
        *v10 = v35;
        if (sub_29A153D90(a3, v15 + 1, v7 + 2))
        {
          v36 = v7[2];
          v7[2] = v15[1];
          v15[1] = v36;
        }
      }

      v37 = sub_29A153D90(a3, v15, v15 - 1);
      v38 = sub_29A153D90(a3, v15 + 1, v15);
      if (v37)
      {
        v39 = *v26;
        if (v38)
        {
          *v26 = v15[1];
          goto LABEL_58;
        }

        *v26 = *v15;
        *v15 = v39;
        if (sub_29A153D90(a3, v15 + 1, v15))
        {
          v39 = *v15;
          *v15 = v15[1];
LABEL_58:
          v15[1] = v39;
        }
      }

      else if (v38)
      {
        v40 = *v15;
        *v15 = v15[1];
        v15[1] = v40;
        if (sub_29A153D90(a3, v15, v15 - 1))
        {
          v41 = *v26;
          *v26 = *v15;
          *v15 = v41;
        }
      }

      v42 = *v7;
      *v7 = *v15;
      *v15 = v42;
      goto LABEL_60;
    }

    v19 = sub_29A153D90(a3, v11, &v11[v14 >> 1]);
    v20 = sub_29A153D90(a3, a2 - 1, v7);
    if (v19)
    {
      v21 = *v15;
      if (v20)
      {
        *v15 = *v8;
LABEL_37:
        *v8 = v21;
        goto LABEL_60;
      }

      *v15 = *v7;
      *v7 = v21;
      if (sub_29A153D90(a3, a2 - 1, v7))
      {
        v21 = *v7;
        *v7 = *v8;
        goto LABEL_37;
      }
    }

    else if (v20)
    {
      v24 = *v7;
      *v7 = *v8;
      *v8 = v24;
      if (sub_29A153D90(a3, v7, v15))
      {
        v25 = *v15;
        *v15 = *v7;
        *v7 = v25;
      }
    }

LABEL_60:
    if ((a5 & 1) == 0 && (sub_29A153D90(a3, v7 - 1, v7) & 1) == 0)
    {
      result = sub_29ABE4A64(v7, a2, a3);
      v11 = result;
      goto LABEL_67;
    }

    v43 = sub_29ABE4C1C(v7, a2, a3);
    if ((v44 & 1) == 0)
    {
      goto LABEL_65;
    }

    v45 = sub_29ABE4DDC(v7, v43, a3);
    v11 = v43 + 1;
    result = sub_29ABE4DDC(v43 + 1, a2, a3);
    if (result)
    {
      a4 = -v13;
      a2 = v43;
      if (v45)
      {
        return result;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v45)
    {
LABEL_65:
      result = sub_29ABE40EC(v7, v43, a3, -v13, a5 & 1);
      v11 = v43 + 1;
LABEL_67:
      a5 = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      return sub_29A281D08(v11, v11 + 1, v11 + 2, a2 - 1, a3);
    }

    if (v14 == 5)
    {
      sub_29A281D08(v11, v11 + 1, v11 + 2, v11 + 3, a3);
      result = sub_29A153D90(a3, a2 - 1, v11 + 3);
      if (!result)
      {
        return result;
      }

      v48 = v11[3];
      v11[3] = *v8;
      *v8 = v48;
      result = sub_29A153D90(a3, v11 + 3, v11 + 2);
      if (!result)
      {
        return result;
      }

      v49 = v11[2];
      v11[2] = v11[3];
      v11[3] = v49;
      result = sub_29A153D90(a3, v11 + 2, v11 + 1);
      if (!result)
      {
        return result;
      }

      v50 = v11[1];
      v11[1] = v11[2];
      v11[2] = v50;
      goto LABEL_95;
    }

    goto LABEL_11;
  }

  v46 = sub_29A153D90(a3, v11 + 1, v11);
  result = sub_29A153D90(a3, v8, v11 + 1);
  if ((v46 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v51 = v11[1];
    v11[1] = *v8;
    *v8 = v51;
LABEL_95:
    result = sub_29A153D90(a3, v11 + 1, v11);
    if (result)
    {
      v52 = *v11;
      *v11 = v11[1];
      v11[1] = v52;
    }

    return result;
  }

  v47 = *v11;
  if (result)
  {
    goto LABEL_80;
  }

  *v11 = v11[1];
  v11[1] = v47;
  result = sub_29A153D90(a3, v8, v11 + 1);
  if (result)
  {
    v47 = v11[1];
    v11[1] = *v8;
    goto LABEL_81;
  }

  return result;
}

uint64_t sub_29ABE47FC(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v5;
        result = sub_29A153D90(a3, v5, v9);
        if (result)
        {
          v15 = *v8;
          *v8 = 0;
          v10 = v7;
          while (1)
          {
            v11 = (v4 + v10);
            v12 = *(v4 + v10 + 8);
            if ((v12 & 7) != 0)
            {
              atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v13 = *v11;
            *v11 = 0;
            v11[1] = v13;
            if (!v10)
            {
              break;
            }

            result = sub_29A153D90(a3, &v15, (v4 + v10 - 8));
            v10 -= 8;
            if ((result & 1) == 0)
            {
              v14 = (v4 + v10 + 8);
              goto LABEL_12;
            }
          }

          v14 = v4;
LABEL_12:
          if (&v15 == v14)
          {
            if ((v15 & 7) != 0)
            {
              atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            if ((*v14 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v14 = v15;
          }
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_29ABE4948(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v7 = v4;
      v4 = i;
      result = sub_29A153D90(a3, i, v7);
      if (result)
      {
        v10 = *v4;
        *v4 = 0;
        v8 = v4;
        do
        {
          if ((*v8 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v9 = *(v8 - 1);
          *(v8 - 1) = 0;
          *v8 = v9;
          result = sub_29A153D90(a3, &v10, v8 - 2);
          --v8;
        }

        while ((result & 1) != 0);
        if (v8 == &v10)
        {
          if ((v10 & 7) != 0)
          {
            atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v8 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v8 = v10;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_29ABE4A64(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v12 = *a1;
  *a1 = 0;
  if (sub_29A153D90(a3, &v12, a2 - 1))
  {
    v6 = a1;
    do
    {
      ++v6;
    }

    while ((sub_29A153D90(a3, &v12, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_29A153D90(a3, &v12, v7);
      v7 = v6 + 1;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      --v4;
    }

    while ((sub_29A153D90(a3, &v12, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    do
    {
      ++v6;
    }

    while (!sub_29A153D90(a3, &v12, v6));
    do
    {
      --v4;
    }

    while ((sub_29A153D90(a3, &v12, v4) & 1) != 0);
  }

  v10 = v6 - 1;
  if (v6 - 1 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *v10;
    *v10 = 0;
  }

  if (&v12 == v10)
  {
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v10 = v12;
  }

  return v6;
}

void sub_29ABE4BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29ABE4C1C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = 0;
  v13 = *a1;
  *a1 = 0;
  do
  {
    v7 = sub_29A153D90(a3, &a1[++v6], &v13);
  }

  while ((v7 & 1) != 0);
  v8 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      --a2;
    }

    while ((sub_29A153D90(a3, a2, &v13) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!sub_29A153D90(a3, a2, &v13));
  }

  if (v8 >= a2)
  {
    result = v8 - 1;
  }

  else
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        ++v9;
      }

      while ((sub_29A153D90(a3, v9, &v13) & 1) != 0);
      do
      {
        --v10;
      }

      while (!sub_29A153D90(a3, v10, &v13));
    }

    while (v9 < v10);
    result = v9 - 1;
  }

  if (result != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *result;
    *result = 0;
  }

  if (&v13 == result)
  {
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *result = v13;
  }

  return result;
}

void sub_29ABE4DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29ABE4DDC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 1;
        v13 = sub_29A153D90(a3, a1 + 1, a1);
        v14 = sub_29A153D90(a3, v7, a1 + 1);
        if (v13)
        {
          v8 = *a1;
          if (!v14)
          {
            *a1 = a1[1];
            a1[1] = v8;
            if (!sub_29A153D90(a3, v7, a1 + 1))
            {
              return 1;
            }

            v8 = a1[1];
            a1[1] = *v7;
            goto LABEL_16;
          }

LABEL_15:
          *a1 = *v7;
LABEL_16:
          *v7 = v8;
          return 1;
        }

        if (!v14)
        {
          return 1;
        }

        v19 = a1[1];
        a1[1] = *v7;
        *v7 = v19;
        break;
      case 4:
        sub_29A281D08(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        v9 = a2 - 1;
        sub_29A281D08(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!sub_29A153D90(a3, v9, a1 + 3))
        {
          return 1;
        }

        v10 = a1[3];
        a1[3] = *v9;
        *v9 = v10;
        if (!sub_29A153D90(a3, a1 + 3, a1 + 2))
        {
          return 1;
        }

        v11 = a1[2];
        a1[2] = a1[3];
        a1[3] = v11;
        if (!sub_29A153D90(a3, a1 + 2, a1 + 1))
        {
          return 1;
        }

        v12 = a1[1];
        a1[1] = a1[2];
        a1[2] = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_29A153D90(a3, a1 + 1, a1))
    {
      v20 = *a1;
      *a1 = a1[1];
      a1[1] = v20;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if (sub_29A153D90(a3, a2 - 1, a1))
    {
      v8 = *a1;
      goto LABEL_15;
    }

    return 1;
  }

LABEL_17:
  v15 = a1 + 2;
  v16 = sub_29A153D90(a3, a1 + 1, a1);
  v17 = sub_29A153D90(a3, a1 + 2, a1 + 1);
  if (v16)
  {
    v18 = *a1;
    if (v17)
    {
      *a1 = a1[2];
      a1[2] = v18;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v18;
      if (sub_29A153D90(a3, a1 + 2, a1 + 1))
      {
        v23 = a1[1];
        a1[1] = *v15;
        *v15 = v23;
      }
    }
  }

  else if (v17)
  {
    v21 = a1[1];
    a1[1] = a1[2];
    a1[2] = v21;
    if (sub_29A153D90(a3, a1 + 1, a1))
    {
      v22 = *a1;
      *a1 = a1[1];
      a1[1] = v22;
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if (sub_29A153D90(a3, v24, v15))
    {
      v34 = *v24;
      *v24 = 0;
      v27 = v25;
      while (1)
      {
        v28 = (a1 + v27 + 24);
        v29 = (a1 + v27 + 16);
        if (v29 != v28)
        {
          if ((*v28 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v28 = *v29;
          *v29 = 0;
        }

        if (v27 == -16)
        {
          break;
        }

        v30 = sub_29A153D90(a3, &v34, (a1 + v27 + 8));
        v27 -= 8;
        if ((v30 & 1) == 0)
        {
          v31 = (a1 + v27 + 24);
          goto LABEL_44;
        }
      }

      v31 = a1;
LABEL_44:
      if (&v34 == v31)
      {
        v32 = v34;
      }

      else
      {
        if ((*v31 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v32 = 0;
        *v31 = v34;
        v34 = 0;
      }

      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v15 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_29ABE5198(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_29ABE5324(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (sub_29A153D90(a4, v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_29ABE5324(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        *a1 = 0;
        v16 = sub_29A282A78(a1, a4, v8);
        v17 = *v16;
        v18 = *v16 & 7;
        if (v14 == v16)
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = v15;
        }

        else
        {
          if (v18)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v16 = *v14;
          *v14 = v15;
          sub_29ABE54E0(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29ABE5324(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && sub_29A153D90(a2, (result + 8 * (v10 + 1)), v12 + 1))
      {
        ++v12;
        v11 = v13;
      }

      result = sub_29A153D90(a2, v12, v5);
      if ((result & 1) == 0)
      {
        v16 = *v5;
        *v5 = 0;
        do
        {
          v14 = v12;
          if (v12 != v5)
          {
            if ((*v5 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v5 = *v12;
            *v12 = 0;
          }

          if (v7 < v11)
          {
            break;
          }

          v15 = (2 * v11) | 1;
          v12 = (v6 + 8 * v15);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v15;
          }

          else if (sub_29A153D90(a2, (v6 + 8 * v15), v12 + 1))
          {
            ++v12;
          }

          else
          {
            v11 = v15;
          }

          result = sub_29A153D90(a2, v12, &v16);
          v5 = v14;
        }

        while (!result);
        if (&v16 == v14)
        {
          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v14 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v14 = v16;
        }
      }
    }
  }

  return result;
}

uint64_t sub_29ABE54E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = sub_29A153D90(a3, v8, (a2 - 8));
    if (result)
    {
      v11 = *v9;
      *v9 = 0;
      do
      {
        v10 = v8;
        if (v8 != v9)
        {
          if ((*v9 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v9 = *v8;
          *v8 = 0;
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = sub_29A153D90(a3, v8, &v11);
        v9 = v10;
      }

      while ((result & 1) != 0);
      if (&v11 == v10)
      {
        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v10 = v11;
      }
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceHash(uint64_t a1, float a2, float a3)
{
  *v4 = a2;
  *&v4[1] = a3;
  v5[0] = a1;
  v5[1] = v4;
  v6 = 0;
  v7 = 0;
  sub_29ABE566C(&v6, v5);
  return bswap64(0x9E3779B97F4A7C55 * v6);
}

void sub_29ABE566C(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, uint64_t *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v3 = a2[1];
  sub_29ABE3F04(*a2, &p_p_p);
  if (p_p_p)
  {
    v5 = *v3;
    if (*v3 == *(v3 + 4))
    {
      ((*p_p_p)[2])(&__p, *&v5);
      Hash = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(&__p);
      if (*(a1 + 8))
      {
        Hash += (*a1 + Hash + (*a1 + Hash) * (*a1 + Hash)) >> 1;
      }

      else
      {
        *(a1 + 8) = 1;
      }

      *a1 = Hash;
      sub_29A186B14(&__p);
    }

    else
    {
      __p = 0;
      v26 = 0;
      v27 = 0;
      ((*p_p_p)[3])(*&v5);
      if (__p == v26)
      {
        sub_29A0C2184(&__p, v3);
      }

      pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "TSB", 3);
      v7 = __p;
      v8 = v26;
      if (__p != v26)
      {
        do
        {
          v9 = *v7;
          pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "Time", 4);
          if (v9 == 0.0)
          {
            v10 = 0.0;
          }

          else
          {
            v10 = v9;
          }

          v11 = LODWORD(v10);
          if (*(a1 + 8))
          {
            v11 = ((*a1 + LODWORD(v10) + (*a1 + LODWORD(v10)) * (*a1 + LODWORD(v10))) >> 1) + LODWORD(v10);
          }

          else
          {
            *(a1 + 8) = 1;
          }

          *a1 = v11;
          pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "Value", 5);
          ((*p_p_p)[2])(&p_p, v9);
          v12 = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(&p_p);
          if (*(a1 + 8))
          {
            v12 += (*a1 + v12 + (*a1 + v12) * (*a1 + v12)) >> 1;
          }

          else
          {
            *(a1 + 8) = 1;
          }

          *a1 = v12;
          sub_29A186B14(&p_p);
          ++v7;
        }

        while (v7 != v8);
      }

      pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "TSE", 3);
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }
    }
  }

  if (v24)
  {
    sub_29A014BEC(v24);
  }

  sub_29ABE3E74(v4, &p_p_p);
  if (p_p_p)
  {
    v13 = ((*p_p_p)[2])(p_p_p);
    pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "VB", 2);
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "Element", 7);
        ((*p_p_p)[3])(&__p);
        if (__p)
        {
          p_p = &__p;
          v29 = v3;
          sub_29ABE566C(a1, &p_p);
        }

        if (v26)
        {
          sub_29A014BEC(v26);
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "VE", 2);
  }

  if (v24)
  {
    sub_29A014BEC(v24);
  }

  sub_29ABC3244(v4, &v21);
  if (v21)
  {
    (*(*v21 + 16))(&__p);
    v15 = 126 - 2 * __clz((v26 - __p) >> 3);
    if (v26 == __p)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    sub_29A2815F8(__p, v26, &p_p_p, v16, 1);
    v17 = sub_29A5AE88C(__p, v26);
    sub_29A3203E8(&__p, v17, v26);
    pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "CB", 2);
    v18 = __p;
    v19 = v26;
    if (__p != v26)
    {
      do
      {
        (*(*v21 + 24))(&p_p);
        if (p_p)
        {
          pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "Key", 3);
          v20 = v18->__vftable & 0xFFFFFFFFFFFFFFF8;
          if (*(a1 + 8))
          {
            v20 += (*a1 + v20 + (*a1 + v20) * (*a1 + v20)) >> 1;
          }

          else
          {
            *(a1 + 8) = 1;
          }

          *a1 = v20;
          pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "Value", 5);
          p_p_p = &p_p;
          v24 = v3;
          sub_29ABE566C(a1, &p_p_p);
        }

        if (v29)
        {
          sub_29A014BEC(v29);
        }

        v18 = (v18 + 8);
      }

      while (v18 != v19);
    }

    pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, "CE", 2);
    p_p = &__p;
    sub_29A124AB0(&p_p);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }
}

void sub_29ABE5B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeTokens_StaticTokenType::~HdLegacyPrimTypeTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeTokens_StaticTokenType::HdLegacyPrimTypeTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "openvdbAsset", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "field3dAsset", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29ABE5DC0(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeIsVolumeField(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeTokens);
  if (!v3)
  {
    v3 = sub_29ABED328(&pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeTokens);
  }

  if ((*v3 ^ *this) < 8)
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED328(&pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeTokens);
  }

  return (v5[1] ^ *this) < 8;
}

pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::HdDataSourceLegacyPrim(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a4)
{
  *this = &unk_2A2076A50;
  v8 = (this + 12);
  sub_29A1E21F4(this + 2, a2);
  sub_29A1E2240(v8, a2 + 1);
  v9 = *a3;
  *(this + 2) = *a3;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 3) = a4;
  *(this + 32) = 0;
  *(this + 33) &= ~1u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  if (!a4)
  {
    v11[0] = "hd/dataSourceLegacyPrim.cpp";
    v11[1] = "HdDataSourceLegacyPrim";
    v11[2] = 2363;
    v11[3] = "pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::HdDataSourceLegacyPrim(const SdfPath &, const TfToken &, HdSceneDelegate *)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "_sceneDelegate", 0);
  }

  return this;
}

void sub_29ABE5FC0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 80);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29B2C4FB0(v1, v2);
  sub_29A1DCEA8((v1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABE5FF4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::PrimDirtied(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(this);
  v5 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(a2, DefaultLocator);
  if (v5)
  {
    atomic_store(0, this + 32);
    *(this + 33) &= ~1u;
    v8 = 0;
    v9 = 0;
    sub_29ABE60F4(this + 5, &v8);
    v6 = *(this + 8);
    *(this + 7) = 0;
    *(this + 8) = 0;
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    v5 = v9;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  v7 = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v5);
  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(a2, v7))
  {
    v8 = 0;
    v9 = 0;
    sub_29ABE60F4(this + 9, &v8);
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }
}

void sub_29ABE60D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABE60F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29ABEC600(a1, &v3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29ABE6144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::GetCachedLocators(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1749248, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1749248);
    if (v2)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v2);
      v4 = sub_29ABD30AC(v8, DefaultLocator);
      v5 = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v4);
      sub_29ABD30AC(v9, v5);
      v7[0] = v8;
      v7[1] = 2;
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1749080, v7);
      for (i = 14; i != -14; i -= 14)
      {
        sub_29ABC3488(&v8[i]);
      }

      __cxa_atexit(sub_29ABE62AC, &unk_2A1749080, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749248);
    }
  }

  return &unk_2A1749080;
}

void sub_29ABE6260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = &a19;
  v21 = -112;
  do
  {
    v20 = (sub_29ABC3488(v20) - 56);
    v21 += 56;
  }

  while (v21);
  __cxa_guard_abort(&qword_2A1749248);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_IsLight(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::HdPrimTypeIsLight((this + 16), a2))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(this + 3);
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    (*(*v4 + 320))(&v7, v4, this + 8, v5 + 680);
    if (sub_29A1EFCDC(&v7))
    {
      if ((v8 & 4) != 0)
      {
        v3 = *(*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(&v7);
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = 0;
    }

    sub_29A186B14(&v7);
  }

  return v3 & 1;
}

BOOL pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_IsInstanceable(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (pxrInternal__aapl__pxrReserved__::HdPrimTypeIsGprim((this + 16), a2) || (pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_IsLight(this, v3) & 1) != 0)
  {
    return 1;
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return (*(v5 + 21) ^ *(this + 2)) < 8uLL;
}

void *pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::GetNames@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v4 + 7) ^ *(this + 2)) <= 7)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    if (!v5)
    {
      v5 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    }

    sub_29A1D8028(a2, v5);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v6)
  {
    v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v6 + 10) ^ *(this + 2)) <= 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    }

    sub_29A1D8028(a2, v7);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  }

  sub_29A1D8028(a2, v8);
  if (pxrInternal__aapl__pxrReserved__::HdPrimTypeIsGprim((this + 16), v9))
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
    if (!v11)
    {
      v11 = sub_29ABEE1C8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
    }

    v12 = sub_29A1D8028(a2, v11);
    SchemaToken = pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetSchemaToken(v12);
    sub_29A1D8028(a2, SchemaToken);
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    if (!v14)
    {
      v14 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
    }

    sub_29A1D8028(a2, v14);
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens);
    if (!v15)
    {
      v15 = sub_29ABE1BF8(&pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens);
    }

    sub_29A1D8028(a2, v15);
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
    if (!v16)
    {
      v16 = sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
    }

    sub_29A1D8028(a2, v16);
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
    if (!v17)
    {
      v17 = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
    }

    sub_29A1D8028(a2, v17);
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
    if (!v18)
    {
      v18 = sub_29ABCF248(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
    }

    sub_29A1D8028(a2, v18);
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    }

    sub_29A1D8028(a2, v19);
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    if (!v20)
    {
      v20 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    }

    sub_29A1D8028(a2, v20);
  }

  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_IsLight(this, v10))
  {
    goto LABEL_37;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v22)
  {
    v22 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v22 + 37) ^ *(this + 2)) <= 7)
  {
LABEL_37:
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
    if (!v23)
    {
      v23 = sub_29ABEE484(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
    }

    sub_29A1D8028(a2, v23);
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    if (!v24)
    {
      v24 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    }

    sub_29A1D8028(a2, v24);
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens);
    if (!v25)
    {
      v25 = sub_29ABEE510(&pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens);
    }

    sub_29A1D8028(a2, v25);
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
    if (!v26)
    {
      v26 = sub_29ABDBB64(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
    }

    sub_29A1D8028(a2, v26);
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
    if (!v27)
    {
      v27 = sub_29ABEE59C(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
    }

    sub_29A1D8028(a2, v27);
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v28)
  {
    v28 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v28 + 19) ^ *(this + 2)) <= 7)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
    if (!v29)
    {
      v29 = sub_29ABEE484(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
    }

    sub_29A1D8028(a2, v29);
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v30)
  {
    v30 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v30 + 21) ^ *(this + 2)) <= 7)
  {
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    if (!v31)
    {
      v31 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    }

    sub_29A1D8028(a2, v31);
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!v32)
    {
      v32 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    }

    sub_29A1D8028(a2, v32);
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
    if (!v33)
    {
      v33 = sub_29ABEE628(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
    }

    sub_29A1D8028(a2, v33);
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
    if (!v34)
    {
      v34 = sub_29ABCF248(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
    }

    sub_29A1D8028(a2, v34);
  }

  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_IsInstanceable(this, v21))
  {
    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
    if (!v36)
    {
      v36 = sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
    }

    sub_29A1D8028(a2, v36);
  }

  v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v37)
  {
    v37 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v37 + 17) ^ *(this + 2)) <= 7)
  {
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v38)
    {
      v38 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    sub_29A1D8028(a2, v38);
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    if (!v39)
    {
      v39 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    }

    sub_29A1D8028(a2, v39);
  }

  v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v40)
  {
    v40 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v40 + 39) ^ *(this + 2)) <= 7)
  {
    v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    if (!v41)
    {
      v41 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    }

    sub_29A1D8028(a2, v41);
  }

  v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v42)
  {
    v42 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v42 + 40) ^ *(this + 2)) <= 7)
  {
    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    if (!v43)
    {
      v43 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
    }

    sub_29A1D8028(a2, v43);
  }

  v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v44)
  {
    v44 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v44 + 23) ^ *(this + 2)) <= 7)
  {
    v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
    if (!v45)
    {
      v45 = sub_29ABEE740(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
    }

    sub_29A1D8028(a2, v45);
  }

  v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v46)
  {
    v46 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v46 + 24) ^ *(this + 2)) <= 7)
  {
    v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
    if (!v47)
    {
      v47 = sub_29ABEE7CC(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
    }

    sub_29A1D8028(a2, v47);
  }

  v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v48)
  {
    v48 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v48 + 25) ^ *(this + 2)) <= 7)
  {
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
    if (!v49)
    {
      v49 = sub_29ABEE858(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
    }

    sub_29A1D8028(a2, v49);
  }

  if (pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeIsVolumeField((this + 16), v35))
  {
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    if (!v50)
    {
      v50 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
    }

    sub_29A1D8028(a2, v50);
  }

  v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v51)
  {
    v51 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v51 + 15) ^ *(this + 2)) <= 7)
  {
    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens);
    if (!v52)
    {
      v52 = sub_29ABEE8E4(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens);
    }

    sub_29A1D8028(a2, v52);
  }

  v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v53)
  {
    v53 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v53 + 38) ^ *(this + 2)) <= 7)
  {
    v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    if (!v54)
    {
      v54 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
    }

    sub_29A1D8028(a2, v54);
  }

  v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v55)
  {
    v55 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v55 + 20) ^ *(this + 2)) <= 7)
  {
    v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    if (!v56)
    {
      v56 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
    }

    sub_29A1D8028(a2, v56);
  }

  v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v57)
  {
    v57 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v57 + 18) ^ *(this + 2)) <= 7)
  {
    v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v58)
    {
      v58 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    sub_29A1D8028(a2, v58 + 18);
  }

  v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v59)
  {
    v59 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if ((*(v59 + 26) ^ *(this + 2)) <= 7)
  {
    v60 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v60)
    {
      v60 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    sub_29A1D8028(a2, v60 + 26);
  }

  v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
  if (!v61)
  {
    v61 = sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
  }

  return sub_29A1D8028(a2, v61);
}

void sub_29ABE6D90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetPrimvarsDataSource(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, _OWORD *a2@<X8>)
{
  v2 = this;
  v4 = atomic_load(this + 32);
  if (v4)
  {
    sub_29ABEC66C(this + 5, &v64);
    *a2 = v64;
    return;
  }

  v50 = a2;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    (*(**(v2 + 3) + 416))(&v62);
    v51 = v5;
    sub_29ABE7584(v5, &v61);
    v9 = v62;
    v8 = v63;
    v55 = v63;
    while (v9 != v8)
    {
      if (!v6)
      {
        v6 = operator new(0x38uLL);
        v10 = *(v2 + 3);
        *v6 = &unk_2A2076D20;
        *(v6 + 8) = 0u;
        *(v6 + 24) = 0u;
        sub_29A1E21F4(v6 + 10, v2 + 2);
        sub_29A1E2240(v6 + 11, v2 + 3);
        *(v6 + 6) = v10;
        if (!v10)
        {
          *&v64 = "hd/dataSourceLegacyPrim.cpp";
          *(&v64 + 1) = "Hd_DataSourceLegacyPrimvarsContainer";
          v65 = 332;
          v66 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceLegacyPrimvarsContainer::Hd_DataSourceLegacyPrimvarsContainer(const SdfPath &, HdSceneDelegate *)";
          v67 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v64, "_sceneDelegate", 0);
        }

        v11 = operator new(0x20uLL);
        v11->__vftable = &unk_2A2077008;
        v11->__shared_owners_ = 0;
        v11->__shared_weak_owners_ = 0;
        v11[1].__vftable = v6;
        if (v7)
        {
          sub_29A014BEC(v7);
        }

        v7 = v11;
      }

      v12 = *(v9 + 24);
      v13 = v61;
      if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v13 &= 0xFFFFFFFFFFFFFFF8;
      }

      v14 = *(v9 + 16);
      v60 = v13;
      if ((v14 & 7) != 0)
      {
        if ((atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v14 &= 0xFFFFFFFFFFFFFFF8;
        }

        v59 = v14;
      }

      else
      {
        v59 = *(v9 + 16);
      }

      v15 = *v9;
      if ((*v9 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v17 = (v6 + 32);
      v16 = *(v6 + 4);
      if (v16)
      {
        v19 = *(v6 + 1);
        v18 = *(v6 + 2);
        if ((v15 & 7) != 0)
        {
          v20 = v15 & 0xFFFFFFFFFFFFFFF8;
          if (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
          {
            v20 = v15;
          }
        }

        else
        {
          v20 = v15;
        }

        *&v64 = v20;
        *(&v64 + 1) = (v18 - v19) >> 5;
        v23 = sub_29A162678(v16, &v64, &v64);
        if ((v64 & 7) != 0)
        {
          atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v24 & 1) == 0)
        {
          v21 = *(v6 + 1) + 32 * v23[3];
          v58 = v15;
          if ((v15 & 7) != 0)
          {
            goto LABEL_84;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v21 = *(v6 + 1);
        v22 = *(v6 + 2);
        if (v21 != v22)
        {
          while ((*v21 ^ v15) >= 8)
          {
            v21 += 32;
            if (v21 == v22)
            {
              goto LABEL_39;
            }
          }
        }

        if (v21 != v22)
        {
          v58 = v15;
          if ((v15 & 7) != 0)
          {
            goto LABEL_84;
          }

          goto LABEL_85;
        }
      }

LABEL_39:
      *&v64 = v15;
      v57 = v12;
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *&v64 = v15 & 0xFFFFFFFFFFFFFFF8;
      }

      v58 = v15;
      v56 = v15 & 7;
      LOBYTE(v66) = 0;
      *(&v64 + 1) = 0;
      v65 = 0;
      v26 = *(v6 + 2);
      v25 = *(v6 + 3);
      if (v26 >= v25)
      {
        v28 = *(v6 + 1);
        v29 = (v26 - v28) >> 5;
        if ((v29 + 1) >> 59)
        {
          sub_29A00C9A4();
        }

        v30 = v25 - v28;
        v31 = v30 >> 4;
        if (v30 >> 4 <= (v29 + 1))
        {
          v31 = v29 + 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFE0)
        {
          v32 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        v12 = v57;
        if (v32)
        {
          if (v32 >> 59)
          {
            sub_29A00C8B8();
          }

          v33 = operator new(32 * v32);
        }

        else
        {
          v33 = 0;
        }

        v34 = &v33[32 * v29];
        sub_29ABEC75C(v34, &v64);
        v36 = *(v6 + 1);
        v35 = *(v6 + 2);
        v37 = (v34 + v36 - v35);
        if (v35 != v36)
        {
          v53 = (v34 + v36 - v35);
          v54 = v7;
          v38 = *(v6 + 1);
          v39 = v53;
          do
          {
            sub_29ABEC75C(v39, v38);
            v38 += 4;
            v39 += 32;
          }

          while (v38 != v35);
          v7 = v54;
          v12 = v57;
          do
          {
            sub_29ABEC7EC(v36);
            v36 += 4;
          }

          while (v36 != v35);
          v36 = *(v6 + 1);
          v37 = v53;
        }

        v27 = v34 + 32;
        *(v6 + 1) = v37;
        *(v6 + 2) = v34 + 32;
        *(v6 + 3) = &v33[32 * v32];
        if (v36)
        {
          operator delete(v36);
        }

        v2 = this;
      }

      else
      {
        sub_29ABEC75C(*(v6 + 2), &v64);
        v27 = v26 + 32;
        v12 = v57;
      }

      *(v6 + 2) = v27;
      if ((v65 & 7) != 0)
      {
        atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v56;
      if ((BYTE8(v64) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v64 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v64 & 7) != 0)
      {
        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = *(v6 + 2);
      if ((v41 - *(v6 + 1)) >= 0x3E1 && !*v17)
      {
        v42 = operator new(0x28uLL);
        *v42 = 0u;
        v42[1] = 0u;
        *(v42 + 8) = 1065353216;
        sub_29A019AA0(v42, 0x20uLL);
        sub_29A1601D8(v6 + 4, v42);
        v41 = *(v6 + 2);
        v43 = *(v6 + 1);
        if (v41 == v43)
        {
          v12 = v57;
        }

        else
        {
          v44 = 0;
          v45 = 0;
          do
          {
            v46 = *v17;
            v47 = *(v43 + v44);
            if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v47 &= 0xFFFFFFFFFFFFFFF8;
            }

            *&v64 = v47;
            *(&v64 + 1) = v45;
            sub_29A162678(v46, &v64, &v64);
            if ((v64 & 7) != 0)
            {
              atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            ++v45;
            v43 = *(v6 + 1);
            v41 = *(v6 + 2);
            v44 += 32;
          }

          while (v45 < (v41 - v43) >> 5);
          v12 = v57;
          v40 = v56;
        }
      }

      v21 = v41 - 32;
      if (v40)
      {
LABEL_84:
        atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_85:
      v48 = *(v21 + 8);
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v21 + 8) = v60;
      v49 = *(v21 + 16);
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v21 + 16) = v59;
      *(v21 + 24) = v12;
      v9 += 32;
      v8 = v55;
    }

    if ((v61 & 7) != 0)
    {
      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *&v64 = &v62;
    sub_29ABEE9FC(&v64);
    v5 = v51 + 1;
  }

  while (v51 != 5);
  *&v64 = v6;
  *(&v64 + 1) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29ABE60F4(v2 + 5, &v64);
  atomic_store(1u, v2 + 32);
  *v50 = v6;
  v50[1] = v7;
  if (*(&v64 + 1))
  {
    sub_29A014BEC(*(&v64 + 1));
  }
}

void sub_29ABE73F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void **a25)
{
  sub_29A1DCEA8(v25 + 10);
  sub_29ABEEA98(v26);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v25);
  operator delete(v29);
  if ((a21 & 7) != 0)
  {
    atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a25 = &a22;
  sub_29ABEE9FC(&a25);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens_StaticTokenType *sub_29ABE7584@<X0>(int a1@<W0>, atomic_uint **a2@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (!result)
      {
        result = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v5 = *(result + 9);
    }

    else if (a1 == 4)
    {
      if (!result)
      {
        result = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v5 = *(result + 10);
    }

    else
    {
      if (!result)
      {
        result = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v5 = *(result + 11);
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (!result)
      {
        result = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v5 = *(result + 7);
    }

    else
    {
      if (!result)
      {
        result = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v5 = *(result + 8);
    }
  }

  else
  {
    if (!result)
    {
      result = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v5 = *(result + 6);
  }

  *a2 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v6;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetExtComputationPrimvarsDataSource(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, void *a2@<X8>)
{
  if (*(this + 33))
  {
    v3 = *(this + 8);
    *a2 = *(this + 7);
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    return;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    (*(**(this + 3) + 368))(v51);
    v48 = v4;
    sub_29ABE7584(v4, &v50);
    v6 = v51[0];
    if (v51[0] != v51[1])
    {
      v7 = operator new(0x30uLL);
      *v7 = &unk_2A2077080;
      *(v7 + 8) = 0u;
      *(v7 + 24) = 0u;
      sub_29A1E21F4(v7 + 10, this + 2);
      sub_29A1E2240(v7 + 11, this + 3);
      v8 = operator new(0x20uLL);
      *v8 = &unk_2A2077270;
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = v7;
      v52 = v50;
      if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v52 &= 0xFFFFFFFFFFFFFFF8;
      }

      v9 = *(v6 + 16);
      v53 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v53 &= 0xFFFFFFFFFFFFFFF8;
      }

      sub_29A1E21F4(&v54, (v6 + 28));
      sub_29A1E2240(&v55, (v6 + 32));
      v10 = *(v6 + 40);
      v56 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v56 &= 0xFFFFFFFFFFFFFFF8;
      }

      v57 = *(v6 + 48);
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v59);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v59 + 1);
      *(&v59 + 1) = 0;
      v11 = *v6;
      v61 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v61 &= 0xFFFFFFFFFFFFFFF8;
      }

      v62 = v58;
      v58 = 0uLL;
      v63 = v59;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(&v59);
      v64 = DWORD1(v59);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(&v59 + 1);
      v65 = *(&v59 + 1);
      *(&v59 + 1) = 0;
      v66 = v60;
      v13 = (v7 + 32);
      v12 = *(v7 + 4);
      if (v12)
      {
        v15 = *(v7 + 1);
        v14 = *(v7 + 2);
        v16 = v61;
        if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v16 &= 0xFFFFFFFFFFFFFFF8;
        }

        v67 = v16;
        v68 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 3);
        v17 = sub_29A162678(v12, &v67, &v67);
        if ((v67 & 7) != 0)
        {
          atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v18 & 1) == 0)
        {
          v19 = (*(v7 + 1) + 56 * v17[3]);
          goto LABEL_81;
        }
      }

      else
      {
        v19 = *(v7 + 1);
        v20 = *(v7 + 2);
        if (v19 != v20)
        {
          while ((*v19 ^ v61) >= 8)
          {
            v19 += 7;
            if (v19 == v20)
            {
              goto LABEL_31;
            }
          }
        }

        if (v19 != v20)
        {
LABEL_81:
          if ((v65 & 7) != 0)
          {
            atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v64);
          sub_29A1DE3A4(&v63);
          if ((BYTE8(v62) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v62 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v62 & 7) != 0)
          {
            atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v61 & 7) != 0)
          {
            atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((BYTE8(v59) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v59 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v59 + 1);
          sub_29A1DE3A4(&v59);
          if ((BYTE8(v58) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v58 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v58 & 7) != 0)
          {
            atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v43 = v19 + 1;
          if (&v52 != v19 + 1)
          {
            if ((*v43 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v19[1] = v52;
            v52 = 0;
            v44 = v19[2];
            if ((v44 & 7) != 0)
            {
              atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v19[2] = v53;
            v53 = 0;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }
      }

LABEL_31:
      v67 = v61;
      if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v67 &= 0xFFFFFFFFFFFFFFF8;
      }

      v68 = v62;
      if ((v62 & 7) != 0 && (atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v68 &= 0xFFFFFFFFFFFFFFF8;
      }

      v69 = *(&v62 + 1);
      if ((BYTE8(v62) & 7) != 0 && (atomic_fetch_add_explicit((*(&v62 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v69 &= 0xFFFFFFFFFFFFFFF8;
      }

      sub_29A1E21F4(&v70, &v63);
      sub_29A1E2240(&v71, &v64);
      v72 = v65;
      if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v72 &= 0xFFFFFFFFFFFFFFF8;
      }

      v73 = v66;
      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21)
      {
        v24 = *(v7 + 1);
        v25 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v24) >> 3);
        v26 = v25 + 1;
        if ((v25 + 1) > 0x492492492492492)
        {
          sub_29A00C9A4();
        }

        v27 = 0x6DB6DB6DB6DB6DB7 * ((v21 - v24) >> 3);
        if (2 * v27 > v26)
        {
          v26 = 2 * v27;
        }

        if (v27 >= 0x249249249249249)
        {
          v28 = 0x492492492492492;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (v28 > 0x492492492492492)
          {
            sub_29A00C8B8();
          }

          v29 = operator new(56 * v28);
        }

        else
        {
          v29 = 0;
        }

        v30 = &v29[56 * v25];
        sub_29ABEC9E8(v30, &v67);
        v32 = *(v7 + 1);
        v31 = *(v7 + 2);
        v33 = (v30 + v32 - v31);
        if (v31 != v32)
        {
          v49 = (v30 + v32 - v31);
          v34 = *(v7 + 1);
          v35 = v49;
          do
          {
            sub_29ABEC9E8(v35, v34);
            v34 += 7;
            v35 += 56;
          }

          while (v34 != v31);
          do
          {
            sub_29ABECADC(v32);
            v32 += 7;
          }

          while (v32 != v31);
          v32 = *(v7 + 1);
          v33 = v49;
        }

        v23 = v30 + 56;
        *(v7 + 1) = v33;
        *(v7 + 2) = v30 + 56;
        *(v7 + 3) = &v29[56 * v28];
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        sub_29ABEC9E8(*(v7 + 2), &v67);
        v23 = v22 + 56;
      }

      *(v7 + 2) = v23;
      if ((v72 & 7) != 0)
      {
        atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v71);
      sub_29A1DE3A4(&v70);
      if ((v69 & 7) != 0)
      {
        atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v68 & 7) != 0)
      {
        atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v67 & 7) != 0)
      {
        atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = *(v7 + 2);
      if ((0x6DB6DB6DB6DB6DB7 * ((v36 - *(v7 + 1)) >> 3)) >= 0x20 && !*v13)
      {
        v37 = operator new(0x28uLL);
        *v37 = 0u;
        v37[1] = 0u;
        *(v37 + 8) = 1065353216;
        sub_29A019AA0(v37, 0x20uLL);
        sub_29A1601D8(v7 + 4, v37);
        v36 = *(v7 + 2);
        v38 = *(v7 + 1);
        if (v36 != v38)
        {
          v39 = 0;
          v40 = 0;
          do
          {
            v41 = *v13;
            v42 = *(v38 + v39);
            if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v42 &= 0xFFFFFFFFFFFFFFF8;
            }

            v67 = v42;
            v68 = v40;
            sub_29A162678(v41, &v67, &v67);
            if ((v67 & 7) != 0)
            {
              atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            ++v40;
            v38 = *(v7 + 1);
            v36 = *(v7 + 2);
            v39 += 56;
          }

          while (v40 < 0x6DB6DB6DB6DB6DB7 * ((v36 - v38) >> 3));
        }
      }

      v19 = (v36 - 56);
      goto LABEL_81;
    }

    if ((v50 & 7) != 0)
    {
      atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v67 = v51;
    sub_29ABF15A8(&v67);
    v4 = v48 + 1;
  }

  while (v48 != 5);
  v45 = *(this + 8);
  v46 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v45)
  {
    sub_29A014BEC(v45);
    v5 = *(this + 7);
    v46 = *(this + 8);
  }

  *(this + 33) |= 1u;
  *a2 = v5;
  a2[1] = v46;
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29ABE7FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetMaterialBindingsDataSource@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  (*(**(this + 3) + 296))(&v12, *(this + 3), this + 8);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v12))
  {
    if ((atomic_load_explicit(&qword_2A1749258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749258))
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens);
      if (!v5)
      {
        v5 = sub_29ABF207C(&pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchemaTokens);
      }

      v6 = *(v5 + 1);
      qword_2A1749250 = v6;
      if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        qword_2A1749250 &= 0xFFFFFFFFFFFFFFF8;
      }

      __cxa_atexit(sub_29AC05538, 0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749258);
    }

    v9 = 0;
    v10 = 0;
    sub_29ABE8360(&v12, &v7);
    v8 = v7;
    v7 = 0uLL;
    v3 = pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::Builder::SetPath(&v9, &v8);
    pxrInternal__aapl__pxrReserved__::HdMaterialBindingSchema::Builder::Build(v11, v3);
    v13 = *v11;
    *v11 = 0uLL;
    if (*(&v8 + 1))
    {
      sub_29A014BEC(*(&v8 + 1));
    }

    if (*(&v7 + 1))
    {
      sub_29A014BEC(*(&v7 + 1));
    }

    if (v10)
    {
      sub_29A014BEC(v10);
    }

    pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::BuildRetained(1uLL, &qword_2A1749250, &v13, v11);
    *a2 = *v11;
    if (*(&v13 + 1))
    {
      sub_29A014BEC(*(&v13 + 1));
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12 + 1);
  return sub_29A1DE3A4(&v12);
}

void sub_29ABE82E0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A1749258);
  sub_29A1DCEA8((v1 - 56));
  _Unwind_Resume(a1);
}

void *sub_29ABE8360@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A2076C48;
  sub_29A1E21F4(v4 + 2, a1);
  sub_29A1E2240(v4 + 3, a1 + 1);

  return sub_29ABEDE00(a2, v4);
}

double pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetXformDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, _OWORD *a2@<X8>)
{
  v16 = 0u;
  v17 = 0u;
  v4 = operator new(0xC8uLL);
  v5 = v4;
  v6 = *(this + 2);
  v7 = *(this + 3);
  *v4 = &unk_2A20772E8;
  v4[1] = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4(v4 + 4, this + 2);
  sub_29A1E2240((v5 + 20), this + 3);
  sub_29ABF2524((v5 + 24));
  *(v5 + 192) = v7;
  if (!v7)
  {
    *&v19 = "hd/dataSourceLegacyPrim.cpp";
    *(&v19 + 1) = "Hd_DataSourceLegacyMatrixValue";
    v20 = 421;
    v21 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceLegacyMatrixValue::Hd_DataSourceLegacyMatrixValue(const TfToken &, const SdfPath &, HdSceneDelegate *)";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v19, "_sceneDelegate", 0);
  }

  v8 = operator new(0x20uLL);
  v8->__vftable = &unk_2A2077378;
  v8->__shared_owners_ = 0;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v5;
  v14 = v5;
  v15 = v8;
  v9 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetMatrix(&v16, &v14);
  v12 = 1;
  pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v12, &v13);
  v19 = v13;
  v13 = 0uLL;
  v10 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetResetXformStack(v9, &v19);
  pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::Build(v10, &v18);
  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  result = *&v18;
  *a2 = v18;
  return result;
}

void sub_29ABE8590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29ABF2108(v7 + 24);
  sub_29A1DCEA8((v7 + 16));
  v9 = *(v7 + 8);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v7);
  operator delete(v10);
  sub_29A95E544(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetMaterialDataSource@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  (*(**(this + 3) + 304))(&v5, *(this + 3), this + 8);
  if (sub_29ABE87F8(&v5))
  {
    if ((v6 & 4) != 0)
    {
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(&v5);
    }

    sub_29ABECB70(&v4);
  }

  *a2 = 0;
  a2[1] = 0;
  return sub_29A186B14(&v5);
}

void sub_29ABE87A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABE8884(va);
  sub_29A186B14(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABE87F8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B716AC8 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2076D00);
}

uint64_t sub_29ABE8884(uint64_t a1)
{
  sub_29A184A10((a1 + 48), 0);
  v3 = (a1 + 24);
  sub_29A1E234C(&v3);
  sub_29ABED2CC(a1, *(a1 + 8));
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetIntegratorDataSource@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, _OWORD *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(this + 3);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEE740(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
  }

  (*(*v4 + 120))(&v9, v4, this + 8, v5 + 8);
  if (sub_29ABF2E64(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v6 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9, 0);
    }

    else
    {
      v6 = v9;
    }

    if ((*v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
    }

    sub_29ABECFB8(&v8);
  }

  *a2 = 0uLL;
  return sub_29A186B14(&v9);
}

void sub_29ABE8CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a28)
  {
    sub_29A014BEC(a28);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a32)
  {
    sub_29A014BEC(a32);
  }

  if (a30)
  {
    sub_29A014BEC(a30);
  }

  sub_29ABEF2C0(&a17);
  a17 = (v32 - 176);
  sub_29A0176E4(&a17);
  a17 = (v32 - 152);
  sub_29A124AB0(&a17);
  sub_29ABF2FA4(v32 - 128);
  sub_29A186B14(v32 - 72);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetSampleFilterDataSource@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, _OWORD *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(this + 3);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEE7CC(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
  }

  (*(*v4 + 120))(&v9, v4, this + 8, v5 + 8);
  if (sub_29ABF2E64(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v6 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9, 0);
    }

    else
    {
      v6 = v9;
    }

    if ((*v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
    }

    sub_29ABECFB8(&v8);
  }

  *a2 = 0uLL;
  return sub_29A186B14(&v9);
}

void sub_29ABE9248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a28)
  {
    sub_29A014BEC(a28);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a32)
  {
    sub_29A014BEC(a32);
  }

  if (a30)
  {
    sub_29A014BEC(a30);
  }

  sub_29ABEF2C0(&a17);
  a17 = (v32 - 176);
  sub_29A0176E4(&a17);
  a17 = (v32 - 152);
  sub_29A124AB0(&a17);
  sub_29ABF2FA4(v32 - 128);
  sub_29A186B14(v32 - 72);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetDisplayFilterDataSource@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, _OWORD *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(this + 3);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEE858(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
  }

  (*(*v4 + 120))(&v9, v4, this + 8, v5 + 8);
  if (sub_29ABF2E64(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v6 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9, 0);
    }

    else
    {
      v6 = v9;
    }

    if ((*v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
    }

    sub_29ABECFB8(&v8);
  }

  *a2 = 0uLL;
  return sub_29A186B14(&v9);
}

void sub_29ABE97B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a28)
  {
    sub_29A014BEC(a28);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a32)
  {
    sub_29A014BEC(a32);
  }

  if (a30)
  {
    sub_29A014BEC(a30);
  }

  sub_29ABEF2C0(&a17);
  a17 = (v32 - 176);
  sub_29A0176E4(&a17);
  a17 = (v32 - 152);
  sub_29A124AB0(&a17);
  sub_29ABF2FA4(v32 - 128);
  sub_29A186B14(v32 - 72);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetDisplayStyleDataSource@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  v5 = *(this + 3);
  *v4 = &unk_2A20774E0;
  v4[1] = v5;
  sub_29A1E21F4(v4 + 4, this + 2);
  sub_29A1E2240(v4 + 5, this + 3);
  *(v4 + 6) = 0;
  *(v4 + 7) = 256;
  *(v4 + 32) = 0;
  *(v4 + 36) = 0;
  if (!v4[1])
  {
    v7[0] = "hd/dataSourceLegacyPrim.cpp";
    v7[1] = "Hd_DisplayStyleDataSource";
    v7[2] = 1555;
    v7[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DisplayStyleDataSource::Hd_DisplayStyleDataSource(HdSceneDelegate *, const SdfPath &)";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "_sceneDelegate", 0);
  }

  result = operator new(0x20uLL);
  *result = &unk_2A20776E8;
  result[1] = 0;
  result[2] = 0;
  result[3] = v4;
  *a2 = v4;
  a2[1] = result;
  return result;
}

void sub_29ABE9A18(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetInstancedByDataSource@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  (*(**(this + 3) + 264))(&v11, *(this + 3), this + 8);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v11))
  {
    v8 = 0u;
    v9 = 0u;
    sub_29A1E21F4(&v12, &v11);
    sub_29A1E2240(&v13, &v11 + 1);
    sub_29ABE9CEC(v5, &v12, 1);
    sub_29ABE9C5C(v5, &v6);
    v7 = v6;
    v6 = 0uLL;
    v3 = pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::Builder::SetPaths(&v8, &v7);
    pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::Builder::Build(v3, &v10);
    *a2 = v10;
    v10 = 0uLL;
    if (*(&v7 + 1))
    {
      sub_29A014BEC(*(&v7 + 1));
    }

    if (*(&v6 + 1))
    {
      sub_29A014BEC(*(&v6 + 1));
    }

    sub_29ABED558(v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
    sub_29A1DE3A4(&v12);
    if (*(&v9 + 1))
    {
      sub_29A014BEC(*(&v9 + 1));
    }

    if (*(&v8 + 1))
    {
      sub_29A014BEC(*(&v8 + 1));
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  return sub_29A1DE3A4(&v11);
}

void sub_29ABE9BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ABE9C5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2076A98;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ABEDB04(a2, v4);
}

uint64_t sub_29ABE9CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29ABF452C(a1, a2, a2 + 8 * a3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetInstancerTopologyDataSource(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, uint64_t *a2@<X8>)
{
  sub_29ABEC66C(this + 9, &v9);
  v4 = v9;
  if (!v9)
  {
    v5 = operator new(0x40uLL);
    v6 = *(this + 3);
    *v5 = &unk_2A2077760;
    sub_29A1E21F4(v5 + 2, this + 2);
    sub_29A1E2240(v5 + 3, this + 3);
    *(v5 + 24) = 0u;
    *(v5 + 2) = v6;
    *(v5 + 40) = 0u;
    *(v5 + 7) = 0;
    if (!v6)
    {
      v11 = "hd/dataSourceLegacyPrim.cpp";
      v12 = "Hd_InstancerTopologyDataSource";
      v13 = 1475;
      v14 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_InstancerTopologyDataSource::Hd_InstancerTopologyDataSource(const SdfPath &, HdSceneDelegate *)";
      v15 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v11, "_sceneDelegate", 0);
      v6 = *(v5 + 2);
    }

    (*(*v6 + 272))(&v11, v6, v5 + 8);
    sub_29ABF4840(v5 + 3, v11, v12);
    v16 = &v11;
    sub_29A1E234C(&v16);
    v7 = operator new(0x20uLL);
    v7->__vftable = &unk_2A2077930;
    v7->__shared_owners_ = 0;
    v7->__shared_weak_owners_ = 0;
    v7[1].__vftable = v5;
    v8 = v10;
    v9 = v5;
    v10 = v7;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    sub_29ABE60F4(this + 9, &v9);
    v4 = v9;
  }

  *a2 = v4;
  a2[1] = v10;
}

void sub_29ABE9EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  sub_29ABED558(v11);
  sub_29A1DCEA8(v10 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v10);
  operator delete(v13);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetVolumeFieldBindingDataSource(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, void *a2@<X8>)
{
  (*(**(this + 3) + 336))(&v12, *(this + 3), this + 8);
  v3 = v12;
  v4 = v13;
  if (v12 == v13)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    memset(v8, 0, sizeof(v8));
    do
    {
      sub_29A1D8028(&v9, v3);
      v5 = v3 + 2;
      sub_29ABE8360(v5, &v6);
      v7 = v6;
      v6 = 0uLL;
      sub_29A01729C(v8, &v7);
      if (*(&v7 + 1))
      {
        sub_29A014BEC(*(&v7 + 1));
      }

      if (*(&v6 + 1))
      {
        sub_29A014BEC(*(&v6 + 1));
      }

      v3 = (v5 + 2);
    }

    while (v3 != v4);
    pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchema::BuildRetained((v10 - v9) >> 3, v9, v8[0], &v7);
    *a2 = v7;
    *&v7 = v8;
    sub_29A0176E4(&v7);
    v8[0] = &v9;
    sub_29A124AB0(v8);
  }

  v9 = &v12;
  sub_29ABF537C(&v9);
}

void sub_29ABEA0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ****a11, uint64_t a12, uint64_t a13, void ***a14, uint64_t a15, uint64_t a16, void **a17)
{
  a11 = &a14;
  sub_29A0176E4(&a11);
  a14 = &a17;
  sub_29A124AB0(&a14);
  a17 = (v17 - 56);
  sub_29ABF537C(&a17);
  _Unwind_Resume(a1);
}

void sub_29ABEA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  JUMPOUT(0x29ABEA0B4);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetCoordSysBindingDataSource(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, void *a2@<X8>)
{
  (*(**(this + 3) + 168))(&v27, *(this + 3), this + 8);
  if (!v27 || (v3 = v27[1], v4 = *v27, *v27 == v3))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    memset(v23, 0, sizeof(v23));
    do
    {
      Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v4);
      v6 = atomic_load(&qword_2A1749260);
      if (!v6)
      {
        v6 = sub_29ABF5468();
      }

      if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v6 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
      }

      if (*(EmptyString + 23) >= 0)
      {
        v8 = EmptyString;
      }

      else
      {
        v8 = *EmptyString;
      }

      v9 = *(Name + 23);
      v10 = Name[1];
      if (v9 >= 0)
      {
        v11 = *(Name + 23);
      }

      else
      {
        v11 = Name[1];
      }

      v12 = strlen(v8);
      if (v11 < v12)
      {
        goto LABEL_19;
      }

      v13 = *Name;
      if (v9 >= 0)
      {
        v13 = Name;
      }

      if (!strcmp(&v13[v11 - v12], v8))
      {
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        if (!v15)
        {
          v15 = sub_29A393E28(&pxrInternal__aapl__pxrReserved__::SdfPathTokens);
        }

        v16 = *(v15 + 10) & 0xFFFFFFFFFFFFFFF8;
        if (v16)
        {
          v17 = (v16 + 16);
          if (*(v16 + 39) < 0)
          {
            v17 = *v17;
          }
        }

        else
        {
          v17 = "";
        }

        pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix(Name, *v17, &__dst);
      }

      else
      {
LABEL_19:
        if (v9 < 0)
        {
          sub_29A008D14(&__dst, *Name, v10);
        }

        else
        {
          v14 = *Name;
          __dst.__r_.__value_.__r.__words[2] = Name[2];
          *&__dst.__r_.__value_.__l.__data_ = v14;
        }
      }

      v18 = atomic_load(&qword_2A1749260);
      if (!v18)
      {
        v18 = sub_29ABF5468();
      }

      if ((*(v18 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v19 = ((*(v18 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v19 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::StripPrefixNamespace(&__dst, v19, &__p);
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v20);
      sub_29A153214(&v24, &v20);
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_29ABE8360(v4, &v20);
      *&__p.__r_.__value_.__l.__data_ = v20;
      v20 = 0uLL;
      sub_29A01729C(v23, &__p);
      if (__p.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__p.__r_.__value_.__l.__size_);
      }

      if (*(&v20 + 1))
      {
        sub_29A014BEC(*(&v20 + 1));
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v4 = (v4 + 8);
    }

    while (v4 != v3);
    pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchema::BuildRetained((v25 - v24) >> 3, v24, v23[0], &__p);
    *a2 = *&__p.__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[0] = v23;
    sub_29A0176E4(&__p);
    __p.__r_.__value_.__r.__words[0] = &v24;
    sub_29A124AB0(&__p);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }
}

void sub_29ABEA3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  __p = &a25;
  sub_29A0176E4(&__p);
  __p = &a28;
  sub_29A124AB0(&__p);
  v30 = *(v28 - 88);
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetVisibilityDataSource(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, uint64_t *a2@<X8>)
{
  if ((*(**(this + 3) + 80))(*(this + 3), this + 8))
  {
    if ((atomic_load_explicit(&qword_2A1749278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749278))
    {
      v11 = 0;
      v12 = 0;
      v8 = 1;
      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v8, &v9);
      v10 = v9;
      v9 = 0uLL;
      v6 = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::Builder::SetVisibility(&v11, &v10);
      pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::Builder::Build(&qword_2A1749268, v6);
      if (*(&v10 + 1))
      {
        sub_29A014BEC(*(&v10 + 1));
      }

      if (*(&v9 + 1))
      {
        sub_29A014BEC(*(&v9 + 1));
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }

      __cxa_atexit(sub_29ABE5FF4, &qword_2A1749268, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749278);
    }

    v3 = &qword_2A1749268;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1749290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749290))
    {
      v11 = 0;
      v12 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v8, &v9);
      v10 = v9;
      v9 = 0uLL;
      v7 = pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::Builder::SetVisibility(&v11, &v10);
      pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::Builder::Build(&qword_2A1749280, v7);
      if (*(&v10 + 1))
      {
        sub_29A014BEC(*(&v10 + 1));
      }

      if (*(&v9 + 1))
      {
        sub_29A014BEC(*(&v9 + 1));
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }

      __cxa_atexit(sub_29ABE5FF4, &qword_2A1749280, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749290);
    }

    v3 = &qword_2A1749280;
  }

  v5 = *v3;
  v4 = v3[1];
  *a2 = v5;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29ABEA68C(_Unwind_Exception *a1)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  __cxa_guard_abort(&qword_2A1749290);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetPurposeDataSource(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, _OWORD *a2@<X8>)
{
  (*(**(this + 3) + 144))(&v9, *(this + 3), this + 8);
  v6 = 0;
  v7 = 0;
  sub_29ABCCFA4(&v9, &v4);
  v5 = v4;
  v4 = 0uLL;
  v3 = pxrInternal__aapl__pxrReserved__::HdPurposeSchema::Builder::SetPurpose(&v6, &v5);
  pxrInternal__aapl__pxrReserved__::HdPurposeSchema::Builder::Build(v8, v3);
  *a2 = *v8;
  *v8 = 0uLL;
  if (*(&v5 + 1))
  {
    sub_29A014BEC(*(&v5 + 1));
  }

  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABEA7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v16 = *(v14 - 24);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetExtentDataSource(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, _OWORD *a2@<X8>)
{
  (*(**(this + 3) + 64))(&v14, *(this + 3), this + 8);
  v11 = 0u;
  v12 = 0u;
  v3 = operator new(0x20uLL);
  *v3 = &unk_2A20779A8;
  *(v3 + 8) = v14;
  *(v3 + 3) = v15;
  sub_29ABF5720(&v9, v3);
  v10 = v9;
  v9 = 0uLL;
  v4 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::SetMin(&v11, &v10);
  v5 = operator new(0x20uLL);
  *v5 = &unk_2A20779A8;
  *(v5 + 8) = v16;
  *(v5 + 3) = v17;
  sub_29ABF5720(&v7, v5);
  v8 = v7;
  v7 = 0uLL;
  v6 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::SetMax(v4, &v8);
  pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::Build(v6, &v13);
  *a2 = v13;
  v13 = 0uLL;
  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }

  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }

  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }
}

void sub_29ABEA9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    sub_29A014BEC(a9);
  }

  if (a7)
  {
    sub_29A014BEC(a7);
  }

  sub_29A95E544(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetCategoriesDataSource(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, uint64_t a2@<X8>)
{
  (*(**(this + 3) + 152))(v4, *(this + 3), this + 8);
  if (v4[0])
  {
    pxrInternal__aapl__pxrReserved__::HdCategoriesSchema::BuildRetained(v4[0], 0, v4[4], 0, &v3);
    *a2 = v3;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetInstanceCategoriesDataSource(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, _OWORD *a2@<X8>)
{
  v10 = 0;
  v11 = 0;
  v4 = operator new(0x38uLL);
  v5 = *(this + 3);
  v4->~__shared_weak_count = &unk_2A2077A88;
  sub_29A1E21F4(&v4->~__shared_weak_count_0, this + 2);
  sub_29A1E2240(&v4->~__shared_weak_count_0 + 1, this + 3);
  v4->__on_zero_shared_weak = 0;
  v4->__on_zero_shared = v5;
  LOBYTE(v4->__get_deleter) = 0;
  v4[1].~__shared_weak_count = 0;
  v4[1].~__shared_weak_count_0 = 0;
  if (!v5)
  {
    v13[0] = "hd/dataSourceLegacyPrim.cpp";
    v13[1] = "Hd_InstanceCategoriesVectorDataSource";
    v13[2] = 1411;
    v13[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_InstanceCategoriesVectorDataSource::Hd_InstanceCategoriesVectorDataSource(const SdfPath &, HdSceneDelegate *)";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "_sceneDelegate", 0);
  }

  v6 = operator new(0x20uLL);
  v6->__vftable = &unk_2A2077AD0;
  v6->__shared_owners_ = 0;
  v6->__shared_weak_owners_ = 0;
  v6[1].__vftable = v4;
  v8 = v4;
  v9 = v6;
  v7 = pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema::Builder::SetCategoriesValues(&v10, &v8);
  pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchema::Builder::Build(&v12, v7);
  *a2 = v12;
  v12 = 0uLL;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29ABEABEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A0176E4(va);
  sub_29A1DCEA8(v8 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v8);
  operator delete(v10);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::Get(pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*v6 ^ *a2) <= 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v7)
    {
      v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v7 + 7) ^ *(this + 2)) <= 7)
    {
      v8 = operator new(0x28uLL);
      v9 = *(this + 3);
      *v8 = &unk_2A2077B48;
      sub_29A1E21F4(v8 + 2, this + 2);
      sub_29A1E2240(v8 + 3, this + 3);
      *(v8 + 3) = 0;
      *(v8 + 4) = 0;
      *(v8 + 2) = v9;
      v10 = operator new(0x20uLL);
      v11 = &unk_2A2078258;
LABEL_15:
      *v10 = v11;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = v8;
      *a3 = v8;
      *(a3 + 8) = v10;
      return;
    }

    goto LABEL_168;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  if (!v12)
  {
    v12 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  }

  if ((*v12 ^ *a2) <= 7)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v13)
    {
      v13 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    if ((*(v13 + 10) ^ *(this + 2)) <= 7)
    {
      v8 = operator new(0x28uLL);
      v14 = *(this + 3);
      *v8 = &unk_2A20782D0;
      sub_29A1E21F4(v8 + 2, this + 2);
      sub_29A1E2240(v8 + 3, this + 3);
      *(v8 + 3) = 0;
      *(v8 + 4) = 0;
      *(v8 + 2) = v14;
      v10 = operator new(0x20uLL);
      v11 = &unk_2A2078900;
      goto LABEL_15;
    }

    goto LABEL_168;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  if (!v15)
  {
    v15 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  }

  if ((*v15 ^ *a2) <= 7)
  {

    pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetPrimvarsDataSource(this, a3);
    return;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
  if (!v16)
  {
    v16 = sub_29ABEE1C8(&pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarsSchemaTokens);
  }

  if ((*v16 ^ *a2) <= 7)
  {

    pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetExtComputationPrimvarsDataSource(this, a3);
    return;
  }

  if ((*pxrInternal__aapl__pxrReserved__::HdMaterialBindingsSchema::GetSchemaToken(v16) ^ *a2) <= 7)
  {

    pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetMaterialBindingsDataSource(this, a3);
    return;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  if (!v18)
  {
    v18 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  }

  if ((*v18 ^ *a2) <= 7)
  {

    pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetXformDataSource(this, a3);
    return;
  }

  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
  if (!v19)
  {
    v19 = sub_29ABEE484(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
  }

  if ((*v19 ^ *a2) <= 7)
  {

    pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetMaterialDataSource(this, a3);
    return;
  }

  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v20)
  {
    v20 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  if ((*v20 ^ *a2) <= 7)
  {

    pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetDisplayStyleDataSource(this, a3);
    return;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
  if (!v21)
  {
    v21 = sub_29ABEE970(&pxrInternal__aapl__pxrReserved__::HdSceneIndexEmulationTokens);
  }

  if ((*v21 ^ *a2) <= 7)
  {
    sub_29ABEB8B4(this + 3, &v44);
    goto LABEL_54;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
  if (!v22)
  {
    v22 = sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
  }

  if ((*v22 ^ *a2) > 7)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    if (!v23)
    {
      v23 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
    }

    if ((*v23 ^ *a2) > 7)
    {
      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens);
      if (!v24)
      {
        v24 = sub_29ABEE8E4(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldBindingSchemaTokens);
      }

      if ((*v24 ^ *a2) > 7)
      {
        v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens);
        if (!v25)
        {
          v25 = sub_29ABE1BF8(&pxrInternal__aapl__pxrReserved__::HdCoordSysBindingSchemaTokens);
        }

        if ((*v25 ^ *a2) > 7)
        {
          v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
          if (!v26)
          {
            v26 = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
          }

          if ((*v26 ^ *a2) > 7)
          {
            v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
            if (!v27)
            {
              v27 = sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
            }

            if ((*v27 ^ *a2) > 7)
            {
              v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
              if (!v28)
              {
                v28 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
              }

              if ((*v28 ^ *a2) > 7)
              {
                v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
                if (!v29)
                {
                  v29 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
                }

                if ((*v29 ^ *a2) <= 7)
                {
                  sub_29ABEB918(this + 2, this + 3, &v44);
                  goto LABEL_54;
                }

                v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens);
                if (!v30)
                {
                  v30 = sub_29ABEE510(&pxrInternal__aapl__pxrReserved__::HdLightSchemaTokens);
                }

                if ((*v30 ^ *a2) <= 7)
                {
                  sub_29ABEBA58(this + 2, this + 3, &v44);
                  goto LABEL_54;
                }

                v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
                if (!v31)
                {
                  v31 = sub_29ABCF248(&pxrInternal__aapl__pxrReserved__::HdCategoriesSchemaTokens);
                }

                if ((*v31 ^ *a2) <= 7)
                {

                  pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetCategoriesDataSource(this, a3);
                }

                v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
                if (!v32)
                {
                  v32 = sub_29ABEE628(&pxrInternal__aapl__pxrReserved__::HdInstanceCategoriesSchemaTokens);
                }

                if ((*v32 ^ *a2) > 7)
                {
                  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
                  if (!v33)
                  {
                    v33 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
                  }

                  if ((*v33 ^ *a2) <= 7)
                  {
                    sub_29ABEBB30(this + 3, this + 2, &v44);
                    goto LABEL_54;
                  }

                  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
                  if (!v34)
                  {
                    v34 = sub_29ABEE024(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsSchemaTokens);
                  }

                  if ((*v34 ^ *a2) <= 7)
                  {
                    sub_29ABEBCD0(this + 3, this + 2, &v44);
                    goto LABEL_54;
                  }

                  v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
                  if (!v35)
                  {
                    v35 = sub_29ABEE7CC(&pxrInternal__aapl__pxrReserved__::HdSampleFilterSchemaTokens);
                  }

                  if ((*v35 ^ *a2) > 7)
                  {
                    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
                    if (!v36)
                    {
                      v36 = sub_29ABEE740(&pxrInternal__aapl__pxrReserved__::HdIntegratorSchemaTokens);
                    }

                    if ((*v36 ^ *a2) > 7)
                    {
                      v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
                      if (!v37)
                      {
                        v37 = sub_29ABEE858(&pxrInternal__aapl__pxrReserved__::HdDisplayFilterSchemaTokens);
                      }

                      if ((*v37 ^ *a2) > 7)
                      {
                        v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
                        if (!v38)
                        {
                          v38 = sub_29ABED4CC(&pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens);
                        }

                        if ((*v38 ^ *a2) > 7)
                        {
                          v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
                          if (!v39)
                          {
                            v39 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
                          }

                          if ((*(v39 + 18) ^ *a2) > 7)
                          {
                            v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
                            if (!v40)
                            {
                              v40 = sub_29ABEDF0C(&pxrInternal__aapl__pxrReserved__::HdExtComputationSchemaTokens);
                            }

                            if ((*v40 ^ *a2) > 7)
                            {
                              v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
                              if (!v41)
                              {
                                v41 = sub_29ABEE0B0(&pxrInternal__aapl__pxrReserved__::HdImageShaderSchemaTokens);
                              }

                              if ((*v41 ^ *a2) > 7)
                              {
                                v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
                                if (!v42)
                                {
                                  v42 = sub_29ABDBB64(&pxrInternal__aapl__pxrReserved__::HdCollectionsSchemaTokens);
                                }

                                if ((*v42 ^ *a2) <= 7)
                                {
                                  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_IsLight(this, v17))
                                  {
                                    sub_29ABEC23C(this + 2, this + 3, &v44);
                                    goto LABEL_54;
                                  }

                                  v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
                                  if (!v43)
                                  {
                                    v43 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
                                  }

                                  if ((*(v43 + 37) ^ *(this + 2)) <= 7)
                                  {
                                    sub_29ABEC37C(this + 2, this + 3, &v44);
                                    goto LABEL_54;
                                  }
                                }

LABEL_168:
                                *a3 = 0;
                                *(a3 + 8) = 0;
                                return;
                              }

                              sub_29ABEC0FC(this + 2, this + 3, &v44);
                            }

                            else
                            {
                              sub_29ABEC024(this + 2, this + 3, &v44);
                            }
                          }

                          else
                          {
                            sub_29ABEBF50(this + 3, this + 2, &v44);
                          }
                        }

                        else
                        {
                          sub_29ABEBE10(this + 2, this + 3, &v44);
                        }

LABEL_54:
                        *a3 = v44;
                        return;
                      }

                      pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetDisplayFilterDataSource(this, a3);
                    }

                    else
                    {

                      pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetIntegratorDataSource(this, a3);
                    }
                  }

                  else
                  {

                    pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetSampleFilterDataSource(this, a3);
                  }
                }

                else
                {

                  pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetInstanceCategoriesDataSource(this, a3);
                }
              }

              else
              {

                pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetExtentDataSource(this, a3);
              }
            }

            else
            {

              pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetPurposeDataSource(this, a3);
            }
          }

          else
          {

            pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetVisibilityDataSource(this, a3);
          }
        }

        else
        {

          pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetCoordSysBindingDataSource(this, a3);
        }
      }

      else
      {

        pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetVolumeFieldBindingDataSource(this, a3);
      }
    }

    else
    {

      pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetInstancerTopologyDataSource(this, a3);
    }
  }

  else
  {

    pxrInternal__aapl__pxrReserved__::HdDataSourceLegacyPrim::_GetInstancedByDataSource(this, a3);
  }
}

void *sub_29ABEB8B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A2078978;
  v4[1] = v5;

  return sub_29ABF9B90(a2, v4);
}

void *sub_29ABEB918@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a2;
  *v6 = &unk_2A2078B30;
  sub_29A1E21F4(v6 + 2, a1);
  sub_29A1E2240(v6 + 3, a1 + 1);
  *(v6 + 2) = v7;
  if (!v7)
  {
    v9[0] = "hd/dataSourceLegacyPrim.cpp";
    v9[1] = "Hd_DataSourceCamera";
    v9[2] = 1021;
    v9[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceCamera::Hd_DataSourceCamera(const SdfPath &, HdSceneDelegate *)";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "_sceneDelegate", 0);
  }

  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A2079410;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void sub_29ABEBA08(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29ABEBA58@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a2;
  *v6 = &unk_2A2079488;
  sub_29A1E21F4(v6 + 2, a1);
  sub_29A1E2240(v6 + 3, a1 + 1);
  *(v6 + 2) = v7;
  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A2079590;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void *sub_29ABEBB30@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  v7 = *a1;
  *v6 = &unk_2A2079608;
  *(v6 + 1) = v7;
  sub_29A1E21F4(v6 + 4, a2);
  sub_29A1E2240(v6 + 5, a2 + 1);
  *(v6 + 24) = xmmword_29B6C2BB0;
  v6[40] = 0;
  v8 = *(v6 + 1);
  if (!v8)
  {
    *&v10 = "hd/dataSourceLegacyPrim.cpp";
    *(&v10 + 1) = "Hd_DataSourceRenderBuffer";
    v11 = 2031;
    v12 = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceRenderBuffer::Hd_DataSourceRenderBuffer(HdSceneDelegate *, const SdfPath &)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "_sceneDelegate", 0);
    v8 = *(v6 + 1);
  }

  (*(*v8 + 312))(&v10);
  *(v6 + 24) = v10;
  v6[40] = v11;
  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A2079998;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void sub_29ABEBC7C(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29ABEBCD0@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a1;
  *v6 = &unk_2A2079A10;
  v6[1] = v7;
  sub_29A1E21F4(v6 + 4, a2);
  sub_29A1E2240(v6 + 5, a2 + 1);
  if (!v6[1])
  {
    v9[0] = "hd/dataSourceLegacyPrim.cpp";
    v9[1] = "Hd_DataSourceRenderSettings";
    v9[2] = 2161;
    v9[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceRenderSettings::Hd_DataSourceRenderSettings(HdSceneDelegate *, const SdfPath &)";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "_sceneDelegate", 0);
  }

  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A2079D68;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void sub_29ABEBDC0(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29ABEBE10@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a2;
  *v6 = &unk_2A2079DE0;
  sub_29A1E21F4(v6 + 2, a1);
  sub_29A1E2240(v6 + 3, a1 + 1);
  *(v6 + 2) = v7;
  if (!v7)
  {
    v9[0] = "hd/dataSourceLegacyPrim.cpp";
    v9[1] = "Hd_DataSourceVolumeField";
    v9[2] = 1373;
    v9[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceVolumeField::Hd_DataSourceVolumeField(const SdfPath &, HdSceneDelegate *)";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "_sceneDelegate", 0);
  }

  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A2079E28;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void sub_29ABEBF00(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29ABEBF50@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a1;
  *v6 = &unk_2A2079EA0;
  v6[1] = v7;
  sub_29A1E21F4(v6 + 4, a2);
  sub_29A1E2240(v6 + 5, a2 + 1);
  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A2079EE8;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void *sub_29ABEC024@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a2;
  *v6 = &unk_2A2079F60;
  sub_29A1E21F4(v6 + 2, a1);
  sub_29A1E2240(v6 + 3, a1 + 1);
  *(v6 + 2) = v7;
  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A207A520;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void *sub_29ABEC0FC@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a2;
  *v6 = &unk_2A207A598;
  sub_29A1E21F4(v6 + 2, a1);
  sub_29A1E2240(v6 + 3, a1 + 1);
  *(v6 + 2) = v7;
  if (!v7)
  {
    v9[0] = "hd/dataSourceLegacyPrim.cpp";
    v9[1] = "Hd_DataSourceImageShader";
    v9[2] = 2244;
    v9[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceImageShader::Hd_DataSourceImageShader(const SdfPath &, HdSceneDelegate *)";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "_sceneDelegate", 0);
  }

  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A207A5E0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void sub_29ABEC1EC(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29ABEC23C@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a2;
  *v6 = &unk_2A207A658;
  sub_29A1E21F4(v6 + 2, a1);
  sub_29A1E2240(v6 + 3, a1 + 1);
  *(v6 + 2) = v7;
  if (!v7)
  {
    v9[0] = "hd/dataSourceLegacyPrim.cpp";
    v9[1] = "Hd_DataSourceLightCollections";
    v9[2] = 1297;
    v9[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceLightCollections::Hd_DataSourceLightCollections(const SdfPath &, HdSceneDelegate *)";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "_sceneDelegate", 0);
  }

  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A207A768;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void sub_29ABEC32C(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29ABEC37C@<X0>(_DWORD *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a2;
  *v6 = &unk_2A207A7E0;
  sub_29A1E21F4(v6 + 2, a1);
  sub_29A1E2240(v6 + 3, a1 + 1);
  *(v6 + 2) = v7;
  if (!v7)
  {
    v9[0] = "hd/dataSourceLegacyPrim.cpp";
    v9[1] = "Hd_DataSourceLightFilterCollections";
    v9[2] = 1339;
    v9[3] = "pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Hd_DataSourceLightFilterCollections::Hd_DataSourceLightFilterCollections(const SdfPath &, HdSceneDelegate *)";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "_sceneDelegate", 0);
  }

  *a3 = v6;
  result = operator new(0x20uLL);
  *result = &unk_2A207A828;
  result[1] = 0;
  result[2] = 0;
  result[3] = v6;
  a3[1] = result;
  return result;
}

void sub_29ABEC46C(_Unwind_Exception *a1)
{
  sub_29A1DCEA8(v1 + 2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29ABEC4BC(uint64_t a1)
{
  *a1 = &unk_2A2076A50;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a1 + 16);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ABEC55C(uint64_t a1)
{
  *a1 = &unk_2A2076A50;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a1 + 16);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v6);
}

void sub_29ABEC600(uint64_t *a1, uint64_t *a2)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = *a1;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[1];
  a1[1] = a2[1];
  a2[1] = v6;

  std::__sp_mut::unlock(sp_mut);
}

void sub_29ABEC66C(void *a1@<X0>, void *a2@<X8>)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens_StaticTokenType *sub_29ABEC6D0(atomic_ullong *a1)
{
  result = sub_29ABEC718();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens_StaticTokenType::~HdPrimvarSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens_StaticTokenType *sub_29ABEC718()
{
  v0 = operator new(0xB8uLL);
  pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens_StaticTokenType::HdPrimvarSchemaTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29ABEC75C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = a2[1];
  *(result + 8) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a2[2];
  *(result + 16) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 24) = *(a2 + 24);
  return result;
}

void *sub_29ABEC7EC(void *result)
{
  v1 = result[2];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = result[1];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29ABEC838(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29ABEC8B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29ABEC950(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

__n128 sub_29ABEC9E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a2[1];
  *(a1 + 8) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = a2[2];
  *(a1 + 16) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1E21F4((a1 + 24), a2 + 6);
  sub_29A1E2240((a1 + 28), a2 + 7);
  v7 = a2[4];
  *(a1 + 32) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = *(a2 + 5);
  *(a1 + 40) = result;
  return result;
}

_DWORD *sub_29ABECADC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  result = sub_29A1DE3A4((a1 + 24));
  v4 = *(a1 + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29ABECB70(void *a1)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialNetwork>,void *> *,long>>>();
}

void sub_29ABECBC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*,pxrInternal__aapl__pxrReserved__::HdMaterialRelationship*>();
}

void sub_29ABECC94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ABED178(va);
  sub_29ABECE84(va);
  if ((*v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ABECCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialRelationship,pxrInternal__aapl__pxrReserved__::HdMaterialRelationship&>();
  }

  v7 = 1;
  sub_29ABECD74(v6);
  return a4;
}

uint64_t sub_29ABECD74(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ABECDAC(a1);
  }

  return a1;
}

uint64_t *sub_29ABECDAC(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 32;
      result = sub_29ABECE00(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

_DWORD *sub_29ABECE00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 20));
  sub_29A1DE3A4((a2 + 16));
  v4 = *(a2 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

void sub_29ABECE84(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 32;
        sub_29ABECE00(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29ABECF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HdMaterialNode>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdMaterialNode,pxrInternal__aapl__pxrReserved__::HdMaterialNode&>();
  }

  v7 = 1;
  sub_29ABED088(v6);
  return a4;
}

void sub_29ABECFB8(void *a1)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>();
}

uint64_t *sub_29ABED010(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4(a1 + 1, a2 + 1);
  return a1;
}

uint64_t sub_29ABED088(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ABED0C0(a1);
  }

  return a1;
}

uint64_t *sub_29ABED0C0(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 40;
      result = sub_29ABED114(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

_DWORD *sub_29ABED114(uint64_t a1, uint64_t a2)
{
  sub_29A5B0668(a2 + 16, *(a2 + 24));
  v3 = *(a2 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 4));

  return sub_29A1DE3A4(a2);
}

void sub_29ABED178(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 40;
        sub_29ABED114(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29ABED200(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29ABED25C(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29ABED25C(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = (a1 + 56);
  sub_29A124AB0(&v3);
  v3 = (a1 + 32);
  sub_29ABED178(&v3);
  v3 = v2;
  sub_29ABECE84(&v3);
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29ABED2CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29ABED2CC(a1, *a2);
    sub_29ABED2CC(a1, a2[1]);
    sub_29ABED25C((a2 + 4));

    operator delete(a2);
  }
}

atomic_uint **sub_29ABED328(atomic_ullong *a1)
{
  result = sub_29ABED370();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeTokens_StaticTokenType::~HdLegacyPrimTypeTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

atomic_uint **sub_29ABED370()
{
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::HdLegacyPrimTypeTokens_StaticTokenType::HdLegacyPrimTypeTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *sub_29ABED3B4(atomic_ullong *a1)
{
  result = sub_29ABED3FC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType::~HdPrimTypeTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *sub_29ABED3FC()
{
  v0 = operator new(0x170uLL);
  pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType::HdPrimTypeTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens_StaticTokenType *sub_29ABED440(atomic_ullong *a1)
{
  result = sub_29ABED488();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens_StaticTokenType::~HdMeshSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens_StaticTokenType *sub_29ABED488()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens_StaticTokenType::HdMeshSchemaTokens_StaticTokenType(v0);
  return v0;
}

pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens_StaticTokenType *sub_29ABED4CC(atomic_ullong *a1)
{
  result = sub_29ABED514();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens_StaticTokenType::~HdVolumeFieldSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens_StaticTokenType *sub_29ABED514()
{
  v0 = operator new(0x48uLL);
  pxrInternal__aapl__pxrReserved__::HdVolumeFieldSchemaTokens_StaticTokenType::HdVolumeFieldSchemaTokens_StaticTokenType(v0);
  return v0;
}

void sub_29ABED558(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_29B2943EC(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 8 * *a1;
        do
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v5 + 1);
          sub_29A1DE3A4(v5);
          v5 += 2;
          v6 -= 8;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete(v5 - 4);
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType *sub_29ABED5F8(atomic_ullong *a1)
{
  result = sub_29ABED640();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens_StaticTokenType::~HdInstancerTopologySchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}