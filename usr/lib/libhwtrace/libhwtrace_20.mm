unint64_t sub_298BE32E4(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  v6 = sub_298BE4564(*a2, *a1);
  v7 = *a3;
  v8 = *a2;
  if (v6)
  {
    result = sub_298BE4564(*a3, *a2);
    v14 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v14;
    }

    else
    {
      *a1 = *a2;
      *a2 = v14;
      result = sub_298BE4564(*a3, v14);
      if (result)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else
  {
    v9 = (*(*v7 + 16))(*a3);
    result = (*(*v8 + 16))(v8);
    if (v9 == result)
    {
      if (v7[8] >= v8[8])
      {
        return result;
      }
    }

    else
    {
      v11 = (*(*v7 + 16))(v7);
      result = (*(*v8 + 16))(v8);
      if (v11 >= result)
      {
        return result;
      }
    }

    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    result = sub_298BE4564(*a2, *a1);
    if (result)
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
    }
  }

  return result;
}

BOOL sub_298BE3480(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 **a3, unsigned __int8 **a4)
{
  sub_298BE32E4(a1, a2, a3);
  result = sub_298BE4564(*a4, *a3);
  if (result)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    result = sub_298BE4564(*a3, *a2);
    if (result)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      result = sub_298BE4564(*a2, *a1);
      if (result)
      {
        v11 = *a1;
        *a1 = *a2;
        *a2 = v11;
      }
    }
  }

  return result;
}

BOOL sub_298BE3518(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 **a3, unsigned __int8 **a4, unsigned __int8 **a5)
{
  sub_298BE32E4(a1, a2, a3);
  if (sub_298BE4564(*a4, *a3))
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    if (sub_298BE4564(*a3, *a2))
    {
      v11 = *a2;
      *a2 = *a3;
      *a3 = v11;
      if (sub_298BE4564(*a2, *a1))
      {
        v12 = *a1;
        *a1 = *a2;
        *a2 = v12;
      }
    }
  }

  result = sub_298BE4564(*a5, *a4);
  if (result)
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    result = sub_298BE4564(*a4, *a3);
    if (result)
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      result = sub_298BE4564(*a3, *a2);
      if (result)
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        result = sub_298BE4564(*a2, *a1);
        if (result)
        {
          v17 = *a1;
          *a1 = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

unsigned __int8 *sub_298BE363C(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  v4 = (result + 8);
  if (result + 8 == a2)
  {
    return result;
  }

  v5 = 0;
  v6 = result;
  while (2)
  {
    v7 = v6;
    v6 = v4;
    result = sub_298BE4564(v7[1], *v7);
    if (!result)
    {
      goto LABEL_7;
    }

    v8 = 0;
    v9 = *v6;
    *v6 = 0;
    for (i = v5; ; i -= 8)
    {
      v11 = (v3 + i);
      v12 = *(v3 + i);
      *v11 = 0;
      v11[1] = v12;
      if (v8)
      {
        (*(*v8 + 8))(v8);
        if (!i)
        {
LABEL_4:
          v7 = v3;
          goto LABEL_5;
        }
      }

      else if (!i)
      {
        goto LABEL_4;
      }

      v13 = *(v3 + i - 8);
      v14 = (*(*v9 + 16))(v9);
      if (v14 != (*(*v13 + 16))(v13))
      {
        break;
      }

      if (v9[8] >= v13[8])
      {
        goto LABEL_5;
      }

LABEL_11:
      --v7;
      v8 = *v11;
    }

    v15 = (*(*v9 + 16))(v9);
    if (v15 < (*(*v13 + 16))(v13))
    {
      goto LABEL_11;
    }

    v7 = (v3 + i);
LABEL_5:
    result = *v7;
    *v7 = v9;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

LABEL_7:
    v4 = v6 + 1;
    v5 += 8;
    if (v6 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

unsigned __int8 *sub_298BE383C(unsigned __int8 *result, unsigned __int8 **a2)
{
  if (result != a2)
  {
    v3 = result;
    while (1)
    {
      do
      {
        if (v3 + 1 == a2)
        {
          return result;
        }

        v4 = v3++;
        result = sub_298BE4564(v4[1], *v4);
      }

      while (!result);
      v5 = 0;
      v6 = *v3;
      *v3 = 0;
      while (1)
      {
        v7 = *v4;
        *v4 = 0;
        v4[1] = v7;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        v8 = *(v4 - 1);
        v9 = (*(*v6 + 16))(v6);
        if (v9 != (*(*v8 + 16))(v8))
        {
          break;
        }

        if (v6[8] >= v8[8])
        {
          goto LABEL_3;
        }

LABEL_9:
        v5 = *v4--;
      }

      v10 = (*(*v6 + 16))(v6);
      if (v10 < (*(*v8 + 16))(v8))
      {
        goto LABEL_9;
      }

LABEL_3:
      result = *v4;
      *v4 = v6;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t sub_298BE39FC(uint64_t result, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 8 * v7);
      do
      {
        result = sub_298BE4654(v5, v6, v9--);
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = v4;
      do
      {
        result = sub_298BE4564(*v10, *v5);
        if (result)
        {
          v11 = *v10;
          *v10 = *v5;
          *v5 = v11;
          result = sub_298BE4654(v5, v6, v5);
        }

        ++v10;
      }

      while (v10 != a3);
    }

    if (v6 >= 2)
    {
      v40 = v5;
      do
      {
        v13 = 0;
        v41 = *v5;
        v42 = v4;
        *v5 = 0;
        v14 = v5;
        do
        {
          v15 = &v14[v13];
          v16 = v15 + 1;
          v17 = (2 * v13) | 1;
          v13 = 2 * v13 + 2;
          if (v13 >= v6)
          {
            v13 = v17;
            v28 = *v16;
            *v16 = 0;
            v27 = *v14;
            *v14 = v28;
            if (v27)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v20 = v15[2];
            v18 = v15 + 2;
            v19 = v20;
            v21 = *(v18 - 1);
            v22 = (*(*v21 + 16))(v21);
            if (v22 == (*(*v19 + 16))(v19))
            {
              v24 = v21[8] >= v19[8];
            }

            else
            {
              v23 = (*(*v21 + 16))(v21);
              v24 = v23 >= (*(*v19 + 16))(v19);
            }

            if (!v24)
            {
              v16 = v18;
            }

            else
            {
              v13 = v17;
            }

            v26 = *v16;
            *v16 = 0;
            v27 = *v14;
            *v14 = v26;
            if (v27)
            {
LABEL_25:
              (*(*v27 + 8))(v27);
            }
          }

          v14 = v16;
        }

        while (v13 <= ((v6 - 2) >> 1));
        v4 = v42 - 1;
        if (v16 == v42 - 1)
        {
          result = *v16;
          v5 = v40;
          *v16 = v41;
          if (result)
          {
            goto LABEL_43;
          }

          goto LABEL_13;
        }

        v29 = *v4;
        *v4 = 0;
        v30 = *v16;
        *v16 = v29;
        v5 = v40;
        if (v30)
        {
          (*(*v30 + 8))(v30);
          result = *v4;
          *v4 = v41;
          if (!result)
          {
            goto LABEL_33;
          }
        }

        else
        {
          result = *v4;
          *v4 = v41;
          if (!result)
          {
LABEL_33:
            v31 = v16 + 1 - v40;
            v12 = v31 < 2;
            v32 = v31 - 2;
            if (v12)
            {
              goto LABEL_13;
            }

            goto LABEL_34;
          }
        }

        result = (*(*result + 8))(result);
        v39 = v16 + 1 - v40;
        v12 = v39 < 2;
        v32 = v39 - 2;
        if (v12)
        {
          goto LABEL_13;
        }

LABEL_34:
        v33 = v32 >> 1;
        v34 = &v40[v32 >> 1];
        result = sub_298BE4564(*v34, *v16);
        if (!result)
        {
          goto LABEL_13;
        }

        v35 = *v16;
        *v16 = 0;
        while (2)
        {
          v36 = v34;
          v37 = *v34;
          *v34 = 0;
          v38 = *v16;
          *v16 = v37;
          if (!v38)
          {
            if (!v33)
            {
              goto LABEL_12;
            }

LABEL_38:
            v33 = (v33 - 1) >> 1;
            v34 = &v40[v33];
            v16 = v36;
            if (!sub_298BE4564(*v34, v35))
            {
              goto LABEL_12;
            }

            continue;
          }

          break;
        }

        (*(*v38 + 8))(v38);
        if (v33)
        {
          goto LABEL_38;
        }

LABEL_12:
        result = *v36;
        *v36 = v35;
        if (!result)
        {
          goto LABEL_13;
        }

LABEL_43:
        result = (*(*result + 8))(result);
LABEL_13:
        v12 = v6-- <= 2;
      }

      while (!v12);
    }
  }

  return result;
}

unsigned __int8 **sub_298BE3E08(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = a2;
  v4 = *a1;
  *a1 = 0;
  if (sub_298BE4564(v4, *(a2 - 1)))
  {
    v5 = a1;
    do
    {
      v6 = v5[1];
      ++v5;
    }

    while (!sub_298BE4564(v4, v6));
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v5 = v7;
      if (v7 >= v2)
      {
        break;
      }

      ++v7;
    }

    while (!sub_298BE4564(v4, *v5));
  }

  if (v5 < v2)
  {
    do
    {
      v8 = *--v2;
    }

    while (sub_298BE4564(v4, v8));
  }

LABEL_20:
  while (v5 < v2)
  {
    v9 = *v5;
    *v5++ = *v2;
    *v2 = v9;
    while (1)
    {
      v10 = *v5;
      v11 = (*(*v4 + 16))(v4);
      if (v11 != (*(*v10 + 16))(v10))
      {
        break;
      }

      if (v4[8] < v10[8])
      {
        goto LABEL_18;
      }

LABEL_13:
      ++v5;
    }

    v12 = (*(*v4 + 16))(v4);
    if (v12 >= (*(*v10 + 16))(v10))
    {
      goto LABEL_13;
    }

    do
    {
LABEL_18:
      while (1)
      {
        v14 = *--v2;
        v13 = v14;
        v15 = (*(*v4 + 16))(v4);
        if (v15 != (*(*v13 + 16))(v13))
        {
          break;
        }

        if (v4[8] >= v13[8])
        {
          goto LABEL_20;
        }
      }

      v16 = (*(*v4 + 16))(v4);
    }

    while (v16 < (*(*v13 + 16))(v13));
  }

  v17 = v5 - 1;
  if (v5 - 1 != a1 && (v18 = *v17, *v17 = 0, v19 = *a1, *a1 = v18, v19))
  {
    (*(*v19 + 8))(v19);
    v20 = *v17;
    *v17 = v4;
    if (v20)
    {
      goto LABEL_26;
    }

    return v5;
  }

  else
  {
    v20 = *v17;
    *v17 = v4;
    if (!v20)
    {
      return v5;
    }

LABEL_26:
    (*(*v20 + 8))(v20);
    return v5;
  }
}

unsigned __int8 **sub_298BE4104(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v4 = 0;
  v5 = *a1;
  *a1 = 0;
    ;
  }

  v7 = &a1[v4];
  v8 = &a1[v4 - 1];
  if (v4 == 1)
  {
    if (v7 < a2)
    {
      do
      {
        while (1)
        {
          v15 = *--a2;
          v14 = v15;
          v16 = (*(*v15 + 16))(v15);
          if (v16 == (*(*v5 + 16))(v5))
          {
            break;
          }

          v17 = (*(*v14 + 16))(v14);
          v18 = (*(*v5 + 16))(v5);
          if (v7 >= a2 || v17 < v18)
          {
            goto LABEL_5;
          }
        }
      }

      while (v7 < a2 && v14[8] >= v5[8]);
    }
  }

  else
  {
    do
    {
      v9 = *--a2;
    }

    while (!sub_298BE4564(v9, v5));
  }

LABEL_5:
  if (v7 < a2)
  {
    v19 = v7;
    v20 = a2;
    do
    {
      v21 = *v19;
      *v19 = *v20;
      *v20 = v21;
      do
      {
        v22 = v19[1];
        ++v19;
      }

      while (sub_298BE4564(v22, v5));
      do
      {
        v23 = *--v20;
      }

      while (!sub_298BE4564(v23, v5));
    }

    while (v19 < v20);
    v8 = v19 - 1;
  }

  if (v8 != a1)
  {
    v10 = *v8;
    *v8 = 0;
    v11 = *a1;
    *a1 = v10;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = *v8;
  *v8 = v5;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return v8;
}

BOOL sub_298BE4344(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_298BE32E4(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        sub_298BE3480(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_298BE3518(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      if (sub_298BE4564(*(a2 - 1), *a1))
      {
        v5 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v5;
      }

      return 1;
    }
  }

  v6 = a1 + 2;
  sub_298BE32E4(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (sub_298BE4564(*v9, *v6))
      {
        v13 = 0;
        v14 = *v9;
        *v9 = 0;
        for (i = v11; ; i -= 8)
        {
          v16 = a1;
          v17 = a1 + i;
          v18 = *(a1 + i + 16);
          *(v17 + 2) = 0;
          *(v17 + 3) = v18;
          if (v13)
          {
            (*(*v13 + 8))(v13);
            v16 = a1;
          }

          if (i == -16)
          {
            v20 = v16;
            goto LABEL_25;
          }

          v19 = v16 + i;
          if (!sub_298BE4564(v14, *(v16 + i + 8)))
          {
            break;
          }

          v13 = *(v17 + 2);
        }

        v20 = (v19 + 16);
LABEL_25:
        v21 = a2;
        v22 = *v20;
        *v20 = v14;
        if (v22)
        {
          (*(*v22 + 8))(v22);
          v21 = a2;
        }

        if (++v12 == 8)
        {
          return v9 + 1 == v21;
        }
      }

      else
      {
        v21 = a2;
      }

      v6 = v9;
      v11 += 8;
      result = 1;
      if (++v9 == v21)
      {
        return result;
      }
    }
  }

  return 1;
}

BOOL sub_298BE4564(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (v4 == (*(*a2 + 16))(a2))
  {
    v6 = a1[8] >= a2[8];
  }

  else
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = v5 >= (*(*a2 + 16))(a2);
  }

  return !v6;
}

uint64_t sub_298BE4654(uint64_t result, uint64_t a2, unsigned __int8 **a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v5 = result;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (a3 - result) >> 3)
    {
      v8 = (a3 - result) >> 2;
      v9 = v8 + 1;
      v10 = (result + 8 * (v8 + 1));
      v11 = v8 + 2;
      if (v8 + 2 < a2 && sub_298BE4564(*v10, v10[1]))
      {
        ++v10;
        v9 = v11;
      }

      result = sub_298BE4564(*v10, *v4);
      if ((result & 1) == 0)
      {
        v12 = *v4;
        *v4 = 0;
        do
        {
          v13 = v10;
          v14 = *v10;
          *v10 = 0;
          v15 = *v4;
          *v4 = v14;
          if (v15)
          {
            (*(*v15 + 8))(v15);
            if (v6 < v9)
            {
              break;
            }
          }

          else if (v6 < v9)
          {
            break;
          }

          v16 = (2 * v9) | 1;
          v10 = (v5 + 8 * v16);
          if (2 * v9 + 2 < a2 && sub_298BE4564(*v10, v10[1]))
          {
            ++v10;
            v16 = 2 * v9 + 2;
          }

          v4 = v13;
          v9 = v16;
        }

        while (!sub_298BE4564(*v10, v12));
        result = *v13;
        *v13 = v12;
        if (result)
        {
          v17 = *(*result + 8);

          return v17();
        }
      }
    }
  }

  return result;
}

uint64_t sub_298BE47FC(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *result;
  *result = 0;
  if (v1)
  {
    if (!v2)
    {
      return result;
    }

    v3 = result;
    (*(*v2 + 8))(v2);
    return v3;
  }

  if (v2)
  {
    v3 = result;
    v4 = sub_298BE4884(v2);
    MEMORY[0x29C2945F0](v4, 0x10B0C409FC09D11);
    return v3;
  }

  return result;
}

uint64_t sub_298BE4884(uint64_t a1)
{
  sub_298AEB71C(a1 + 48);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_298BE48C8(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    sub_298BE499C(v7);
  }

  v8 = (8 * (v3 >> 3));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void sub_298BE499C(unint64_t a1)
{
  if (!(a1 >> 61))
  {

    operator new();
  }

  sub_298ADDDA0();
}

void sub_298BE49D8(uint64_t *a1, __int128 *a2)
{
  v2 = *(a2 + 56);
  v3 = 64;
  if (v2)
  {
    v3 = 40;
  }

  v4 = *(a2 + v3);
  v5 = *a1;
  v6 = 72;
  if (*(a2 + 56))
  {
    v6 = 48;
  }

  v7 = *(a2 + v6);
  if (*(a2 + 56))
  {
    v10 = *a2;
    if (*(a2 + 39) < 0)
    {
      sub_298AFE11C(&__p, *(a2 + 2), *(a2 + 3));
    }

    else
    {
      __p = a2[1];
      v12 = *(a2 + 4);
    }

    v13 = *(a2 + 40);
    v2 = 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v14 = v2;
  sub_298BF6510(v5, v4, v7, &v10, &v15);
  v9 = v15;
  if (v15)
  {
    v15 = 0;
    v16 = v9;
    sub_298B06434(&v16, "Error adding object/segment to symbolicator", 0x2BuLL);
    sub_298AF1D58(&v16);
    exit(1);
  }

  if (v14 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_298BE4AEC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4[0] = 0;
  v4[16] = 0;
  return (*(*v2 + 40))(v2, a2, "shared cache branch island", v4);
}

void *sub_298BE4B44(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (4 * v3 + 4 >= 3 * v4)
  {
    v7 = a1;
    sub_298BE4CDC(a1, 2 * v4);
    v9 = *a2;
    v10 = *(v7 + 16) - 1;
    v11 = (37 * *a2) & v10;
    a3 = (*v7 + (v11 << 6));
    v12 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_17;
    }

    v13 = 0;
    v14 = 1;
    while (v12 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == -2;
      }

      if (v15)
      {
        v13 = a3;
      }

      v16 = v11 + v14++;
      v11 = v16 & v10;
      a3 = (*v7 + (v11 << 6));
      v12 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v4 + ~v3 - *(a1 + 12) > v4 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a1;
    sub_298BE4CDC(a1, *(a1 + 16));
    v9 = *a2;
    v18 = *(v7 + 16) - 1;
    v19 = (37 * *a2) & v18;
    a3 = (*v7 + (v19 << 6));
    v20 = *a3;
    if (*a2 == *a3)
    {
LABEL_17:
      a1 = v7;
      ++*(v7 + 8);
      if (v9 == -1)
      {
        return a3;
      }

      goto LABEL_4;
    }

    v13 = 0;
    v21 = 1;
    while (v20 != -1)
    {
      if (v13)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20 == -2;
      }

      if (v22)
      {
        v13 = a3;
      }

      v23 = v19 + v21++;
      v19 = v23 & v18;
      a3 = (*v7 + (v19 << 6));
      v20 = *a3;
      if (v9 == *a3)
      {
        goto LABEL_17;
      }
    }
  }

  if (v13)
  {
    a3 = v13;
  }

  a1 = v7;
LABEL_3:
  v5 = *a3;
  ++*(a1 + 8);
  if (v5 != -1)
  {
LABEL_4:
    --*(a1 + 12);
  }

  return a3;
}

void *sub_298BE4CDC(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(v8 << 6, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v11 = *(a1 + 4);
    if (v11)
    {
      if (((v11 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[8 * (v12 & 0x7FFFFFFFFFFFFFELL)];
      v13 = result + 8;
      v14 = v12 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 8) = -1;
        *v13 = -1;
        v13 += 16;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x7FFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[8 * v11];
        do
        {
          *v10 = -1;
          v10 += 8;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v26 = *v16;
        if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v27 = *(a1 + 4) - 1;
          v28 = v27 & (37 * v26);
          v22 = (*a1 + (v28 << 6));
          v29 = *v22;
          if (v26 != *v22)
          {
            v30 = 0;
            v31 = 1;
            while (v29 != -1)
            {
              if (v30)
              {
                v32 = 0;
              }

              else
              {
                v32 = v29 == -2;
              }

              if (v32)
              {
                v30 = v22;
              }

              v33 = v28 + v31++;
              v28 = v33 & v27;
              v22 = (*a1 + (v28 << 6));
              v29 = *v22;
              if (v26 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v30)
            {
              v22 = v30;
            }
          }

LABEL_24:
          *v22 = v26;
          v23 = *(v16 + 1);
          v24 = *(v16 + 3);
          v25 = *(v16 + 5);
          v22[7] = v16[7];
          *(v22 + 5) = v25;
          *(v22 + 3) = v24;
          *(v22 + 1) = v23;
          ++*(a1 + 2);
        }

        v16 += 8;
      }

      while (v16 != &v4[8 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v17 = *(a1 + 4);
  if (v17)
  {
    if (((v17 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[8 * (v18 & 0x7FFFFFFFFFFFFFELL)];
    v19 = result + 8;
    v20 = v18 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 8) = -1;
      *v19 = -1;
      v19 += 16;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x7FFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[8 * v17];
      do
      {
        *v10 = -1;
        v10 += 8;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t sub_298BE4EF8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  sub_298BE4F84(a1 + 8, 0);
  *(a1 + 664) = 0u;
  *(a1 + 656) = a1 + 664;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0x1000000000;
  *(a1 + 744) = 1;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 1065353216;
  sub_298BF24B0((a1 + 816), a2);
  *(a1 + 712) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  return a1;
}

uint64_t sub_298BE4F84(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v3 = sub_298B21768(0, 1, "vm-overlap-error");
  *(a1 + 8) = 0;
  *(a1 + 9) = v3;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  sub_298ADC128(a1 + 64);
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 504) = 1065353216;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 577) = 0u;
  return a1;
}

uint64_t *sub_298BE5020(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_298AEAB60(v2);
    MEMORY[0x29C2945F0](v4, 0x10B0C402291093ALL);
    return v3;
  }

  return v1;
}

uint64_t sub_298BE5074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = **a1;
  **a1 = 0;
  v8 = **(a1 + 16);
  v6[1] = 0;
  LOBYTE(v14) = 0;
  sub_298ADC1D4((v6 + 72), v8 + a2, v8 + a3, &v14, &v11);
  v9 = v11;
  if (!v11)
  {
    sub_298BDB5B8(v6 + 16, v8 + a2, v8 + a3, &v11);
    v9 = v11;
    if (!v11)
    {
      v6[648] = 0;
    }
  }

  v13 = v9;
  v14 = v7;
  v11 = 0;
  sub_298ADE6E8(&v14, &v13, &v12);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  **a1 = v12;
  v12 = 0;
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

uint64_t sub_298BE51BC(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v63 = *MEMORY[0x29EDCA608];
  __s[0] = a2;
  __s[1] = a3;
  v39 = a4;
  v40 = a5;
  v8 = *a1;
  v10 = a3 == 16 && *a2 == 0x6C7070612E6D6F63 && *(a2 + 8) == 0x6C656E72656B2E65;
  v38 = v10;
  v42 = 0u;
  v43 = 0;
  v44 = v46;
  v45 = 0x400000000;
  v46[4] = v47;
  v46[5] = 0;
  v47[0] = 0;
  v47[1] = 1;
  v60 = 0;
  v61 = &v42;
  v58 = 0u;
  v59 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v62 = 1;
  v62 = sub_298B21768(0, 1, "vm-overlap-error");
  *&v32 = v8;
  *(&v32 + 1) = __s;
  *&v33 = a1[1];
  *(&v33 + 1) = &v38;
  *&v34 = a1[2];
  *(&v34 + 1) = &v39;
  v35 = a1[3];
  v36 = a1[4];
  v37 = &v42;
  v28 = *v35;
  LOBYTE(v29) = 1;
  sub_298BF4D2C(a4, a5, sub_298BE54D8, &v32, &v28);
  sub_298BF4EE8(v39, v40, 0, &v32);
  v11 = a1[5];
  v28 = v32;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v12 = v11[3];
  v13 = v11[4];
  if (v12 >= v13)
  {
    v16 = v11[2];
    v17 = 0xCCCCCCCCCCCCCCCDLL * (&v12[-v16] >> 4);
    if (v17 + 1 > 0x333333333333333)
    {
      sub_298ADDDA0();
    }

    v18 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v16) >> 4);
    v19 = 2 * v18;
    if (2 * v18 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    if (v18 >= 0x199999999999999)
    {
      v20 = 0x333333333333333;
    }

    else
    {
      v20 = v19;
    }

    if (v20)
    {
      if (v20 <= 0x333333333333333)
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v21 = 80 * v17;
    sub_298BB0E68((80 * v17), __s[0]);
    v22 = v29;
    *(v21 + 24) = v28;
    *(v21 + 40) = v22;
    *(v21 + 56) = v30;
    *(v21 + 72) = v31;
    v15 = 80 * v17 + 80;
    v23 = v11[2];
    v24 = v11[3] - v23;
    v25 = (v21 - v24);
    memcpy(v25, v23, v24);
    v11[2] = v25;
    v11[3] = v15;
    v11[4] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v14 = sub_298BB0E68(v12, __s[0]);
    *(v14 + 24) = v28;
    *(v14 + 40) = v29;
    *(v14 + 56) = v30;
    *(v14 + 9) = v31;
    v15 = (v14 + 80);
  }

  v11[3] = v15;
  result = sub_298AEB71C(&v42);
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BE54D8(uint64_t *a1, uint64_t *a2)
{
  v72 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v12 = *a1;
  v11 = a1[1];
  v55 = *a1 + 8;
  v14 = *v11;
  v13 = v11[1];
  v51[0] = v14;
  v51[1] = v13;
  v51[2] = "::";
  v52 = 773;
  v53[0] = v51;
  v53[2] = v3;
  v53[3] = v4;
  v54 = 1282;
  sub_298B996A4(v53, &v56);
  v58[0] = 0;
  v58[1] = 0;
  v58[2] = v5;
  v58[3] = v6;
  v59 = v6;
  v15 = a1[2];
  v60 = *v15 + v8;
  v61 = *v15;
  v62 = 0;
  v63 = 0;
  if (v7)
  {
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v65) = v9;
    if (v9)
    {
      memmove(__p, v7, v9);
    }

    *(__p + v9) = 0;
    v15 = a1[2];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v65 = 0;
  }

  v66 = *v15 + v10;
  v67 = 0;
  v68 = 0;
  v69 = xmmword_298D1B1F0;
  v70 = 0;
  v71 = 0;
  if (*a1[3] == 1)
  {
    v16 = a1[4];
    v17 = *(v16 + 8);
    if (v17)
    {
      v18 = a1[5];
      v19 = a1[6];
      v20 = *v18;
      v21 = v18[1];
      v22 = *v19;
      v23 = v19[1];
      v24 = *v15;
      v25 = *v16;
      v53[0] = &v55;
      sub_298BF50E8(v20, v21, v22, v23, v24, v25, v17, &v50, sub_298BE5A3C, v53, 0);
      v26 = a1[7];
      v27 = *v26;
      *v26 = 0;
      v28 = v50;
      v50 = 0;
      v51[0] = v28;
      v53[0] = v27;
      sub_298ADE6E8(v53, v51, &v49);
      if (v51[0])
      {
        (*(*v51[0] + 8))(v51[0]);
      }

      if (v53[0])
      {
        (*(*v53[0] + 8))(v53[0]);
      }

      *a1[7] = v49;
      if (v50)
      {
        (*(*v50 + 8))(v50);
      }
    }
  }

  v29 = a1[5];
  v30 = *v29;
  v31 = *(*v29 + 16);
  if (!v31)
  {
LABEL_22:
    uuid_parse(0, v58);
    if (*a1[3] != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v32 = v29[1];
  v33 = 32;
  if (v32 < 0x20)
  {
    v33 = v32;
  }

  v34 = v32 - v33;
  v35 = v30 + v33;
  while (*v35 != 27)
  {
    v36 = *(v35 + 4);
    if (v34 < v36)
    {
      v36 = v34;
    }

    v34 -= v36;
    v35 += v36;
    if (!--v31)
    {
      goto LABEL_22;
    }
  }

  uuid_copy(v58, (v35 + 8));
  if (*a1[3] == 1)
  {
LABEL_25:
    v37 = a1[7];
    v38 = *v37;
    *v37 = 0;
    v39 = a1[8];
    LOBYTE(v48) = 0;
    sub_298ADC1D4(v39, v60, v59 + v60, &v48, &v49);
    v53[0] = v38;
    v51[0] = v49;
    v49 = 0;
    sub_298ADE6E8(v53, v51, &v50);
    if (v51[0])
    {
      (*(*v51[0] + 8))(v51[0]);
    }

    if (v53[0])
    {
      (*(*v53[0] + 8))(v53[0]);
    }

    *a1[7] = v50;
    v50 = 0;
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }
  }

LABEL_31:
  v40 = a1[7];
  v41 = *v40;
  *v40 = 0;
  v42 = v59;
  if (v59)
  {
    *(v12 + 1) = 0;
    sub_298BD3D9C(&v48, v55, &v55);
    v42 = v48;
  }

  v53[0] = v41;
  v51[0] = v42;
  sub_298ADE6E8(v53, v51, &v50);
  if (v51[0])
  {
    (*(*v51[0] + 8))(v51[0]);
  }

  if (v53[0])
  {
    (*(*v53[0] + 8))(v53[0]);
  }

  *a1[7] = v50;
  v43 = v71;
  v71 = 0;
  if (v43)
  {
    MEMORY[0x29C2945C0](v43, 0x1000C8077774924);
  }

  v44 = v70;
  v70 = 0;
  if (!v44)
  {
    if ((SHIBYTE(v65) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_45:
    operator delete(__p[0]);
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_46:
    operator delete(v56);
    v47 = *MEMORY[0x29EDCA608];
    return 0;
  }

  sub_298AE9B00(v44, *(v44 + 8));
  MEMORY[0x29C2945F0](v44, 0x1020C4062D53EE8);
  if (SHIBYTE(v65) < 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  if (v57 < 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  v45 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_298BE5A3C(uint64_t result, unint64_t a2, int a3)
{
  v3 = *result;
  if (!*(*result + 144))
  {
    if (v3[19])
    {
      v4 = v3[9];
      if (v4 <= a2 && v3[8] + v4 > a2)
      {
        v5 = v3[21];
        if (!v5)
        {
          v7 = v3[6];
          v6 = v3[7];
          operator new[]();
        }

        *(v5 + a2 - v4) = a3;
      }
    }
  }

  return result;
}

uint64_t *sub_298BE5B3C(uint64_t *result)
{
  if ((result[7] & 1) == 0)
  {
    return sub_298BD9AA8(result);
  }

  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t sub_298BE5BA4(uint64_t *a1)
{
  v59 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = a1[1];
  sub_298B89CC0(*a1, "AddressSpaces", 0xDuLL);
  sub_298B89A80(v1);
  sub_298B89BA0(v1);
  sub_298B89CC0(v1, "SharedMap", 9uLL);
  sub_298B89A80(v1);
  v4 = v2[57];
  v3 = v2[58];
  for (i = v1; v4 != v3; i = v1)
  {
    sub_298B89BA0(i);
    sub_298BD31D0(v4, v1);
    sub_298B89C2C(v1);
    v4 += 176;
  }

  sub_298B89B0C(i);
  --*(v1 + 8);
  v6 = v2[82];
  if (v6 != v2 + 83)
  {
    do
    {
      v52 = "pid=";
      v53 = 259;
      v7 = v6[4];
      v8 = v6[5];
      if (v7)
      {
        v9 = 20;
        do
        {
          *(v57 + v9--) = (v7 % 0xA) | 0x30;
          v10 = v7 > 9;
          v7 /= 0xAuLL;
        }

        while (v10);
        v11 = v9 + 1;
        v12 = 20 - v9;
        if ((20 - v9) >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_298ADDDA0();
        }
      }

      else
      {
        v58 = 48;
        v11 = 20;
        v12 = 1;
      }

      v47 = v6;
      if (v12 > 0x16)
      {
        operator new();
      }

      v49 = v12;
      if (v11 != 21)
      {
        memcpy(&__dst, v57 + v11, v12);
      }

      *(&__dst + v12) = 0;
      v51 = 260;
      p_dst = &__dst;
      sub_298ADC860(&v52, &p_dst, v57);
      sub_298B996A4(v57, __p);
      if (v55 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v55 >= 0)
      {
        v14 = v55;
      }

      else
      {
        v14 = __p[1];
      }

      sub_298B89CC0(v1, v13, v14);
      sub_298B89A80(v1);
      v16 = *(v8 + 448);
      v15 = *(v8 + 456);
      v17 = v1;
      while (v16 != v15)
      {
        sub_298B894A0(v17);
        sub_298AEF5BC(v1);
        *(*v1 + 8 * *(v1 + 8) - 8) = 2;
        *(v1 + 172) += *(v1 + 168);
        v18 = *(v1 + 160);
        v19 = *(v18 + 32);
        if (v19 >= *(v18 + 24))
        {
          while (1)
          {
            v29 = *(v18 + 16);
            if (v29)
            {
              *(v18 + 32) = v29;
              sub_298B9BB84(v18);
              v19 = *(v18 + 32);
              goto LABEL_23;
            }

            if (!*(v18 + 56))
            {
              break;
            }

            sub_298B9AE98(v18);
            v19 = *(v18 + 32);
            if (v19 < *(v18 + 24))
            {
              goto LABEL_23;
            }
          }

          v56 = 123;
          sub_298B9BB84(v18);
        }

        else
        {
LABEL_23:
          *(v18 + 32) = v19 + 1;
          *v19 = 123;
        }

        sub_298BD31D0(v16, v1);
        v20 = *(v1 + 168);
        *(v1 + 172) -= v20;
        v21 = *(*v1 + 8 * *(v1 + 8) - 4) != 1 || v20 == 0;
        if (v21)
        {
LABEL_29:
          v22 = *(v1 + 160);
          v23 = *(v22 + 32);
          if (v23 >= *(v22 + 24))
          {
            goto LABEL_36;
          }

          goto LABEL_30;
        }

        v24 = *(v1 + 160);
        v25 = *(v24 + 32);
        if (v25 >= *(v24 + 24))
        {
          while (1)
          {
            v30 = *(v24 + 16);
            if (v30)
            {
              break;
            }

            if (!*(v24 + 56))
            {
              v56 = 10;
              sub_298B9BB84(v24);
              v26 = *(v1 + 160);
              v27 = *(v1 + 172);
              if (v27 < 0x50)
              {
                goto LABEL_35;
              }

LABEL_54:
              while (2)
              {
                if (v27 >= 0x4F)
                {
                  v31 = 79;
                }

                else
                {
                  v31 = v27;
                }

                v32 = *(v26 + 32);
                v33 = *(v26 + 24) - v32;
                if (v33 < v31)
                {
                  v35 = v31;
                  v34 = "                                                                                ";
                  while (1)
                  {
                    v36 = *(v26 + 16);
                    v45 = v34;
                    if (!v36)
                    {
                      break;
                    }

LABEL_75:
                    if (v32 == v36)
                    {
                      v33 *= v35 / v33;
                      v35 -= v33;
                      sub_298B9BB84(v26);
                      v32 = *(v26 + 32);
                      v38 = *(v26 + 24) - v32;
                      if (v35 <= v38)
                      {
                        sub_298B9BE18(v26, &v45[v33], v35);
                        goto LABEL_70;
                      }
                    }

                    else
                    {
                      sub_298B9BE18(v26, v34, v33);
                      v37 = *(v26 + 32);
                      *(v26 + 32) = *(v26 + 16);
                      sub_298B9BB84(v26);
                      v35 -= v33;
                      v32 = *(v26 + 32);
                      v38 = *(v26 + 24) - v32;
                    }

                    v34 = &v45[v33];
                    v33 = v38;
                    if (v38 >= v35)
                    {
                      goto LABEL_59;
                    }
                  }

                  while (1)
                  {
                    if (!*(v26 + 56))
                    {
                      sub_298B9BB84(v26);
                      goto LABEL_70;
                    }

                    sub_298B9AE98(v26);
                    v32 = *(v26 + 32);
                    v33 = *(v26 + 24) - v32;
                    if (v33 >= v35)
                    {
                      break;
                    }

                    v36 = *(v26 + 16);
                    v34 = v45;
                    if (v36)
                    {
                      goto LABEL_75;
                    }
                  }

                  v34 = v45;
                }

                else
                {
                  v34 = "                                                                                ";
                  v35 = v31;
                }

LABEL_59:
                if (v35 <= 1)
                {
                  if (!v35)
                  {
                    goto LABEL_69;
                  }

                  if (v35 == 1)
                  {
                    goto LABEL_68;
                  }
                }

                else
                {
                  switch(v35)
                  {
                    case 2uLL:
                      goto LABEL_65;
                    case 3uLL:
                      goto LABEL_64;
                    case 4uLL:
                      v32[3] = v34[3];
                      v32 = *(v26 + 32);
LABEL_64:
                      v32[2] = v34[2];
                      v32 = *(v26 + 32);
LABEL_65:
                      v32[1] = v34[1];
                      v32 = *(v26 + 32);
LABEL_68:
                      *v32 = *v34;
LABEL_69:
                      *(v26 + 32) += v35;
LABEL_70:
                      LODWORD(v27) = v27 - v31;
                      if (!v27)
                      {
                        goto LABEL_29;
                      }

                      continue;
                  }
                }

                break;
              }

              memcpy(v32, v34, v35);
              goto LABEL_69;
            }

            sub_298B9AE98(v24);
            v25 = *(v24 + 32);
            if (v25 < *(v24 + 24))
            {
              goto LABEL_34;
            }
          }

          *(v24 + 32) = v30;
          sub_298B9BB84(v24);
          v25 = *(v24 + 32);
        }

LABEL_34:
        *(v24 + 32) = v25 + 1;
        *v25 = 10;
        v26 = *(v1 + 160);
        v27 = *(v1 + 172);
        if (v27 >= 0x50)
        {
          goto LABEL_54;
        }

LABEL_35:
        sub_298B9BCEC(v26, "                                                                                ", v27);
        v22 = *(v1 + 160);
        v23 = *(v22 + 32);
        if (v23 >= *(v22 + 24))
        {
          while (1)
          {
LABEL_36:
            v28 = *(v22 + 16);
            if (v28)
            {
              *(v22 + 32) = v28;
              sub_298B9BB84(v22);
              v23 = *(v22 + 32);
              goto LABEL_30;
            }

            if (!*(v22 + 56))
            {
              break;
            }

            sub_298B9AE98(v22);
            v23 = *(v22 + 32);
            if (v23 < *(v22 + 24))
            {
              goto LABEL_30;
            }
          }

          v56 = 125;
          sub_298B9BB84(v22);
          goto LABEL_31;
        }

LABEL_30:
        *(v22 + 32) = v23 + 1;
        *v23 = 125;
LABEL_31:
        --*(v1 + 8);
        v16 += 176;
        v17 = v1;
      }

      sub_298B89B0C(v17);
      --*(v1 + 8);
      if (v55 < 0)
      {
        operator delete(__p[0]);
        if ((v49 & 0x80000000) == 0)
        {
LABEL_89:
          v39 = v47;
          v40 = v47[1];
          if (v40)
          {
            goto LABEL_96;
          }

          goto LABEL_90;
        }
      }

      else if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

      operator delete(__dst);
      v39 = v47;
      v40 = v47[1];
      if (v40)
      {
        do
        {
LABEL_96:
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
        goto LABEL_92;
      }

      do
      {
LABEL_90:
        v41 = v39[2];
        v21 = *v41 == v39;
        v39 = v41;
      }

      while (!v21);
LABEL_92:
      v6 = v41;
    }

    while (v41 != v2 + 83);
  }

  sub_298B89C2C(v1);
  sub_298B89B0C(v1);
  --*(v1 + 8);
  v42 = *a1;
  sub_298B89CC0(*a1, "BranchIslands", 0xDuLL);
  sub_298B89A80(v42);
  v57[0] = v42;
  sub_298BD57EC((v2 + 2), sub_298BE62FC, v57);
  result = sub_298B89B0C(v42);
  --*(v42 + 8);
  v44 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BE62FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  sub_298BD3C10(v9, a2, a3);
  v13 = 6;
  if (v10 >= 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = v9[0];
  }

  if (v10 >= 0)
  {
    v5 = SHIBYTE(v10);
  }

  else
  {
    v5 = v9[1];
  }

  if (!sub_298B88E98(v4, v5, 0))
  {
    if (v10 >= 0)
    {
      v7 = v9;
    }

    else
    {
      v7 = v9[0];
    }

    if (v10 >= 0)
    {
      v8 = SHIBYTE(v10);
    }

    else
    {
      v8 = v9[1];
    }

    sub_298B88F28(v7, v8, &v11);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    *v9 = v11;
    v10 = v12;
  }

  *__p = *v9;
  v15 = v10;
  v9[1] = 0;
  v10 = 0;
  v9[0] = 0;
  sub_298B891F0(v3, &v13);
  if (v13 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v13 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v13 == 6 && SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BE6460(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298AEB078(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void *sub_298BE64AC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    if (v3 != (v1 + 40))
    {
      free(v3);
    }

    MEMORY[0x29C2945F0](v1, 0x1081C40312490D9);
    return v2;
  }

  return result;
}

void sub_298BE6508(uint64_t a1, unint64_t a2, char *__s, unint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *a1;
  if (*(*a1 + 16) == 1 && (*v7 > a2 || v7[1] <= a2))
  {
    return;
  }

  v8 = **(a1 + 8) + a2;
  v9 = *(v6 + 768);
  if (v9)
  {
    v10 = *(v6 + 752);
    v11 = v9 - 1;
    v12 = (v9 - 1) & (37 * v8);
    v13 = (v10 + 16 * v12);
    v14 = *v13;
    if (v8 == *v13)
    {
      goto LABEL_20;
    }

    v15 = 0;
    v16 = 1;
    while (v14 != -1)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14 == -2;
      }

      if (v17)
      {
        v15 = v13;
      }

      v18 = v12 + v16++;
      v12 = v18 & v11;
      v13 = (v10 + 16 * (v18 & v11));
      v14 = *v13;
      if (v8 == *v13)
      {
        goto LABEL_20;
      }
    }

    if (v15)
    {
      v13 = v15;
    }

    v52 = *(v6 + 760);
    if (4 * v52 + 4 < 3 * v9)
    {
      if (v9 + ~v52 - *(v6 + 764) > v9 >> 3)
      {
        goto LABEL_17;
      }

      v53 = a4;
      sub_298BE6B90(v6 + 752, v9);
      v62 = *(v6 + 752);
      v63 = *(v6 + 768) - 1;
      v64 = v63 & (37 * v8);
      v13 = (v62 + 16 * v64);
      v65 = *v13;
      if (v8 != *v13)
      {
        v58 = 0;
        v67 = 1;
        while (v65 != -1)
        {
          if (v58)
          {
            v68 = 0;
          }

          else
          {
            v68 = v65 == -2;
          }

          if (v68)
          {
            v58 = v13;
          }

          v69 = v64 + v67++;
          v64 = v69 & v63;
          v13 = (v62 + 16 * (v69 & v63));
          v65 = *v13;
          if (v8 == *v13)
          {
            goto LABEL_83;
          }
        }

        goto LABEL_97;
      }

LABEL_83:
      a4 = v53;
      ++*(v6 + 760);
      if (v8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v19 = (4 * *(v6 + 760) + 4);
  }

  v53 = a4;
  sub_298BE6B90(v6 + 752, 2 * v9);
  v54 = *(v6 + 752);
  v55 = *(v6 + 768) - 1;
  v56 = v55 & (37 * v8);
  v13 = (v54 + 16 * v56);
  v57 = *v13;
  if (v8 == *v13)
  {
    goto LABEL_83;
  }

  v58 = 0;
  v59 = 1;
  while (v57 != -1)
  {
    if (v58)
    {
      v60 = 0;
    }

    else
    {
      v60 = v57 == -2;
    }

    if (v60)
    {
      v58 = v13;
    }

    v61 = v56 + v59++;
    v56 = v61 & v55;
    v13 = (v54 + 16 * (v61 & v55));
    v57 = *v13;
    if (v8 == *v13)
    {
      goto LABEL_83;
    }
  }

LABEL_97:
  if (v58)
  {
    v13 = v58;
  }

  a4 = v53;
LABEL_17:
  v20 = *v13;
  ++*(v6 + 760);
  if (v20 != -1)
  {
LABEL_18:
    --*(v6 + 764);
  }

LABEL_19:
  *v13 = v8;
  v13[1] = 0;
LABEL_20:
  v13[1] = __s;
  if (*v6 != 1)
  {
    goto LABEL_42;
  }

  v21 = a4;
  v22 = sub_298B9CDFC();
  v23 = v22;
  v24 = v22[4];
  if (v22[3] - v24 > 0xDuLL)
  {
    qmemcpy(v24, "note: Stub in ", 14);
    v28 = (v22[4] + 14);
    *(v23 + 32) = v28;
    v30 = *(a1 + 24);
    v26 = *v30;
    v27 = *(v30 + 8);
    if (v27 <= *(v23 + 24) - v28)
    {
LABEL_23:
      if (v27)
      {
        v29 = v27;
        memcpy(v28, v26, v27);
        v28 = (*(v23 + 32) + v29);
        *(v23 + 32) = v28;
      }

      if (*(v23 + 24) - v28 <= 3uLL)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }
  }

  else
  {
    sub_298B9BCEC(v22, "note: Stub in ", 0xEuLL);
    v25 = *(a1 + 24);
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v23 + 32);
    if (v27 <= *(v23 + 24) - v28)
    {
      goto LABEL_23;
    }
  }

  sub_298B9BCEC(v23, v26, v27);
  v28 = *(v23 + 32);
  if (*(v23 + 24) - v28 <= 3uLL)
  {
LABEL_26:
    sub_298B9BCEC(v23, " at ", 4uLL);
    goto LABEL_30;
  }

LABEL_29:
  *v28 = 544497952;
  *(v23 + 32) += 4;
LABEL_30:
  sub_298ADC8F4(&__p, v8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(v23, p_p, size);
  v33 = *(v23 + 32);
  if ((*(v23 + 24) - v33) <= 9)
  {
    sub_298B9BCEC(v23, " jumps to ", 0xAuLL);
    v34 = *(v23 + 32);
    v35 = v21;
    if (v21 <= *(v23 + 24) - v34)
    {
      goto LABEL_38;
    }

LABEL_48:
    sub_298B9BCEC(v23, __s, v35);
    v34 = *(v23 + 32);
    if (*(v23 + 24) != v34)
    {
      goto LABEL_41;
    }

LABEL_49:
    sub_298B9BCEC(v23, "\n", 1uLL);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_50;
  }

  *(v33 + 8) = 8303;
  *v33 = *" jumps to ";
  v42 = *(v23 + 24);
  v34 = (*(v23 + 32) + 10);
  *(v23 + 32) = v34;
  v35 = v21;
  if (v21 > v42 - v34)
  {
    goto LABEL_48;
  }

LABEL_38:
  if (v35)
  {
    v36 = v35;
    memcpy(v34, __s, v35);
    v34 = (*(v23 + 32) + v36);
    *(v23 + 32) = v34;
  }

  if (*(v23 + 24) == v34)
  {
    goto LABEL_49;
  }

LABEL_41:
  *v34 = 10;
  ++*(v23 + 32);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_50:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_42:
  sub_298BB0E68(&__p, __s);
  v71 = &__p;
  v37 = sub_298B7F538((v6 + 776), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v66 = v37;
    operator delete(__p.__r_.__value_.__l.__data_);
    v37 = v66;
    if (!v66[5])
    {
      return;
    }
  }

  else if (!v37[5])
  {
    return;
  }

  if (*v6 != 1)
  {
    return;
  }

  v38 = v37;
  v39 = sub_298B9CDFC();
  v40 = v39;
  v41 = v39[4];
  if (v39[3] - v41 > 0x39uLL)
  {
    qmemcpy(v41, "warning: Refusing to clobber indirect symbol load address ", 58);
    v39[4] += 58;
  }

  else
  {
    sub_298B9BCEC(v39, "warning: Refusing to clobber indirect symbol load address ", 0x3AuLL);
  }

  sub_298ADC8F4(&__p, v38[5]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &__p;
  }

  else
  {
    v43 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = __p.__r_.__value_.__l.__size_;
  }

  sub_298B9BCEC(v40, v43, v44);
  v45 = *(v40 + 32);
  if (*(v40 + 24) - v45 <= 0x15uLL)
  {
    sub_298B9BCEC(v40, " due to stub found in ", 0x16uLL);
    v46 = *(a1 + 24);
    v47 = *v46;
    v48 = *(v46 + 8);
    v49 = *(v40 + 32);
    if (v48 <= *(v40 + 24) - v49)
    {
      goto LABEL_60;
    }

LABEL_66:
    sub_298B9BCEC(v40, v47, v48);
    v49 = *(v40 + 32);
    if (*(v40 + 24) != v49)
    {
      goto LABEL_63;
    }

    goto LABEL_67;
  }

  qmemcpy(v45, " due to stub found in ", 22);
  v49 = (*(v40 + 32) + 22);
  *(v40 + 32) = v49;
  v51 = *(a1 + 24);
  v47 = *v51;
  v48 = *(v51 + 8);
  if (v48 > *(v40 + 24) - v49)
  {
    goto LABEL_66;
  }

LABEL_60:
  if (v48)
  {
    v50 = v48;
    memcpy(v49, v47, v48);
    v49 = (*(v40 + 32) + v50);
    *(v40 + 32) = v49;
  }

  if (*(v40 + 24) != v49)
  {
LABEL_63:
    *v49 = 10;
    ++*(v40 + 32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_87;
    }

    return;
  }

LABEL_67:
  sub_298B9BCEC(v40, "\n", 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_87:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

char *sub_298BE6B90(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (v10 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 - ((v10 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2;
      v14 = vdupq_n_s64(v12);
      v15 = result + 16;
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v11), xmmword_298D1A120)));
        if (v16.i8[0])
        {
          *(v15 - 2) = -1;
        }

        if (v16.i8[4])
        {
          *v15 = -1;
        }

        v11 += 2;
        v15 += 4;
      }

      while (v13 != v11);
    }

    if (v3)
    {
      v17 = 0;
      v18 = v4;
      do
      {
        v19 = *v18;
        if (*v18 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v20 = v10 - 1;
          v21 = (37 * v19) & (v10 - 1);
          v22 = (*a1 + 16 * v21);
          v23 = *v22;
          if (v19 != *v22)
          {
            v25 = 0;
            v26 = 1;
            while (v23 != -1)
            {
              if (v25)
              {
                v35 = 0;
              }

              else
              {
                v35 = v23 == -2;
              }

              if (v35)
              {
                v25 = v22;
              }

              v36 = v21 + v26++;
              v21 = v36 & v20;
              v22 = (*a1 + 16 * (v36 & v20));
              v23 = *v22;
              if (v19 == *v22)
              {
                goto LABEL_20;
              }
            }

            if (v25)
            {
              v22 = v25;
            }
          }

LABEL_20:
          v24 = v18[1];
          *v22 = v19;
          v22[1] = v24;
          *(a1 + 8) = ++v17;
        }

        v18 += 2;
      }

      while (v18 != &v4[2 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v27 = *(a1 + 16);
  if (v27)
  {
    v28 = 0;
    v29 = v27 + 0xFFFFFFFFFFFFFFFLL;
    v30 = v29 & 0xFFFFFFFFFFFFFFFLL;
    v31 = (v29 & 0xFFFFFFFFFFFFFFFLL) - (v29 & 1) + 2;
    v32 = vdupq_n_s64(v30);
    v33 = result + 16;
    do
    {
      v34 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v28), xmmword_298D1A120)));
      if (v34.i8[0])
      {
        *(v33 - 2) = -1;
      }

      if (v34.i8[4])
      {
        *v33 = -1;
      }

      v28 += 2;
      v33 += 4;
    }

    while (v31 != v28);
  }

  return result;
}

uint64_t sub_298BE6DC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 3)
  {
    goto LABEL_91;
  }

  if (*a1 == 12616 && *(a1 + 2) == 49)
  {
    v5 = 0;
    v4 = 0x100000000;
    return v5 | v4;
  }

  if (*a1 != 12616 || *(a1 + 2) != 51)
  {
    if (*a1 == 12616 && *(a1 + 2) == 52)
    {
      v4 = 0x100000000;
      v5 = 2;
      return v5 | v4;
    }

    if (a2 == 3)
    {
      if (*a1 != 12621 || *(a1 + 2) != 49)
      {
        goto LABEL_91;
      }
    }

    else
    {
      if (*a1 == 1345663304)
      {
        v4 = 0x100000000;
        v5 = 3;
        return v5 | v4;
      }

      if (*a1 != 12621 || *(a1 + 2) != 49)
      {
        switch(*a1)
        {
          case 0x47353148:
            v4 = 0x100000000;
            v5 = 5;
            return v5 | v4;
          case 0x50363148:
            v4 = 0x100000000;
            v5 = 6;
            return v5 | v4;
          case 0x47363148:
            v4 = 0x100000000;
            v5 = 7;
            return v5 | v4;
          case 0x50373148:
            v4 = 0x100000000;
            v5 = 8;
            return v5 | v4;
          case 0x47373148:
            v4 = 0x100000000;
            v5 = 9;
            return v5 | v4;
          case 0x50383148:
            v4 = 0x100000000;
            v5 = 10;
            return v5 | v4;
        }

        if (a2 >= 0x12)
        {
          if (*a1 == 0x4948435F34435341 && *(a1 + 8) == 0x4F43545F4B4F4F4ELL && *(a1 + 16) == 17746)
          {
            v4 = 0x100000000;
            v5 = 11;
            return v5 | v4;
          }

          if (*a1 == 0x4D45545F34435341 && *(a1 + 8) == 0x4F43455F54534550 && *(a1 + 16) == 17746)
          {
            v4 = 0x100000000;
            v5 = 12;
            return v5 | v4;
          }

          if (*a1 == 0x4948435F35435341 && *(a1 + 8) == 0x4F43545F4B4F4F4ELL && *(a1 + 16) == 17746)
          {
            v4 = 0x100000000;
            v5 = 13;
            return v5 | v4;
          }

          if (*a1 == 0x4D45545F35435341 && *(a1 + 8) == 0x4F43455F54534550 && *(a1 + 16) == 17746)
          {
            v4 = 0x100000000;
            v5 = 14;
            return v5 | v4;
          }

          if (*a1 == 0x4948435F36435341 && *(a1 + 8) == 0x4F43545F4B4F4F4ELL && *(a1 + 16) == 17746)
          {
            v4 = 0x100000000;
            v5 = 15;
            return v5 | v4;
          }

          if (*a1 == 0x4D45545F36435341 && *(a1 + 8) == 0x4F43455F54534550 && *(a1 + 16) == 17746)
          {
            v4 = 0x100000000;
            v5 = 16;
            return v5 | v4;
          }

          if (*a1 == 0x4948435F37435341 && *(a1 + 8) == 0x4F43545F4B4F4F4ELL && *(a1 + 16) == 17746)
          {
            v4 = 0x100000000;
            v5 = 17;
            return v5 | v4;
          }

          if (*a1 == 0x4D45545F37435341 && *(a1 + 8) == 0x4F43455F54534550 && *(a1 + 16) == 17746)
          {
            v4 = 0x100000000;
            v5 = 18;
            return v5 | v4;
          }
        }

LABEL_91:
        v4 = 0;
        v5 = 0;
        return v5 | v4;
      }
    }

    v4 = 0x100000000;
    v5 = 4;
    return v5 | v4;
  }

  v4 = 0x100000000;
  v5 = 1;
  return v5 | v4;
}

uint64_t sub_298BE713C(unsigned __int8 *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a1;
  if (v2 == 69)
  {
    return 0x100000000;
  }

  if (v2 == 80)
  {
    return 0x100000001;
  }

  if (a2 == 1)
  {
    if (v2 == 77)
    {
      return 0x100000002;
    }

    return 0;
  }

  if (*a1 == 20557)
  {
    return 0x100000004;
  }

  if (v2 == 77)
  {
    return 0x100000002;
  }

  if (a2 < 3)
  {
    return 0;
  }

  if (*a1 != 21313 || a1[2] != 67)
  {
    return 0;
  }

  return 0x100000003;
}

void sub_298BE71F8(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1)
  {
    operator new();
  }

  if (a1[1] == 1)
  {
    operator new();
  }

  if (a1[2] != 1)
  {
    if (a1[3] == 1)
    {
      goto LABEL_22;
    }

LABEL_17:
    if (a1[4] == 1)
    {
      goto LABEL_34;
    }

LABEL_18:
    if (a1[5] != 1)
    {
      goto LABEL_58;
    }

    goto LABEL_46;
  }

  v5 = a2[2];
  if (v5)
  {
    MEMORY[0] = 2;
    v4 = 1;
  }

  else
  {
    v6 = 1;
    if (2 * v5 > 1)
    {
      v6 = 2 * v5;
    }

    if (v5 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      operator new();
    }

    MEMORY[0] = 2;
    v4 = 1;
    a2[1] = 1;
    a2[2] = 0;
  }

  a2[1] = 1;
  if (a1[3] != 1)
  {
    goto LABEL_17;
  }

LABEL_22:
  v8 = a2[2];
  if (v4 >= v8)
  {
    v9 = v4;
    v10 = v4 + 1;
    if ((v4 + 1) < 0)
    {
      goto LABEL_59;
    }

    if (2 * v8 > v10)
    {
      v10 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    *v4++ = 3;
    memcpy(0, 0, v9);
    a2[1] = v9 + 1;
    a2[2] = 0;
  }

  else
  {
    *v4++ = 3;
  }

  a2[1] = v4;
  if (a1[4] != 1)
  {
    goto LABEL_18;
  }

LABEL_34:
  v12 = a2[2];
  if (v4 >= v12)
  {
    v13 = v4;
    v14 = v4 + 1;
    if ((v4 + 1) < 0)
    {
      goto LABEL_59;
    }

    if (2 * v12 > v14)
    {
      v14 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      operator new();
    }

    *v4++ = 4;
    memcpy(0, 0, v13);
    a2[1] = v13 + 1;
    a2[2] = 0;
  }

  else
  {
    *v4++ = 4;
  }

  a2[1] = v4;
  if (a1[5] == 1)
  {
LABEL_46:
    v16 = a2[2];
    if (v4 < v16)
    {
      *v4 = 5;
      v17 = v4 + 1;
LABEL_57:
      a2[1] = v17;
      goto LABEL_58;
    }

    v18 = v4;
    v19 = v4 + 1;
    if ((v4 + 1) >= 0)
    {
      if (2 * v16 > v19)
      {
        v19 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        operator new();
      }

      *v4 = 5;
      v17 = v4 + 1;
      memcpy(0, 0, v18);
      a2[1] = v18 + 1;
      a2[2] = 0;
      goto LABEL_57;
    }

LABEL_59:
    *a2 = 0;
    sub_298ADDDA0();
  }

LABEL_58:
  *a2 = 0;
}

uint64_t sub_298BE75E4(_DWORD *a1, uint64_t a2)
{
  if (a2 == 4)
  {
    switch(*a1)
    {
      case 0x30204C45:
        v2 = 0;
        break;
      case 0x31204C45:
        v2 = 1;
        break;
      case 0x32204C45:
        v3 = 1;
        v2 = 2;
        return v2 | (v3 << 8);
      case 0x30204C47:
        v3 = 1;
        v2 = 3;
        return v2 | (v3 << 8);
      case 0x31204C47:
        v3 = 1;
        v2 = 4;
        return v2 | (v3 << 8);
      case 0x32204C47:
        v3 = 1;
        v2 = 5;
        return v2 | (v3 << 8);
      default:
        goto LABEL_8;
    }

    v3 = 1;
    return v2 | (v3 << 8);
  }

LABEL_8:
  v2 = 0;
  v3 = 0;
  return v2 | (v3 << 8);
}

uint64_t sub_298BE76AC(void *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    return 0;
  }

  if (*a1 == 0x4D41526563617254)
  {
    return 0x100000000;
  }

  if (a2 < 0xB)
  {
    return 0;
  }

  if (*a1 != 0x7274536563617254 || *(a1 + 3) != 0x6D61657274536563)
  {
    return 0;
  }

  return 0x100000001;
}

uint64_t sub_298BE7730(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  if (!v4)
  {
    v4 = *(a2 + 48);
  }

  *(result + 8) = 0;
  *(result + 16) = v3;
  *(result + 24) = v4;
  *result = &unk_2A1F1EBD8;
  *(result + 32) = a3;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

double sub_298BE7788@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a2 + 32))(a2, 0, 1);
  if (v9 <= a3)
  {
    v14 = &unk_2A1F1EC10;
    LOBYTE(v15) = 0;
    BYTE8(v15) = 0;
    LOBYTE(v16) = 0;
    BYTE8(v16) = 0;
    LOBYTE(v17) = 0;
    BYTE8(v17) = 0;
    LOBYTE(v18) = 0;
    BYTE8(v18) = 0;
    (*(*a2 + 48))(&v13, a2, 0, a3, &v14, a1, *(a1 + 32));
    v10 = v13;
    if (v13)
    {
      *(a4 + 64) |= 1u;
      *a4 = v10;
    }

    else
    {
      *(a4 + 64) &= ~1u;
      v11 = v16;
      *a4 = v15;
      *(a4 + 16) = v11;
      result = *&v17;
      v12 = v18;
      *(a4 + 32) = v17;
      *(a4 + 48) = v12;
    }
  }

  else
  {
    *(a4 + 64) &= ~1u;
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
  }

  return result;
}

void *sub_298BE78F8@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X8>)
{
  v10 = result;
  v12 = &result[2 * a6];
  if (a4)
  {
    v13 = a3;
    if (*(v12 + 48) == 1 && v12[5] >= a5)
    {
      *(a8 + 8) &= ~1u;
      *a8 = a3;
      return result;
    }
  }

  else
  {
    v13 = result[2];
  }

  v30 = 0;
  v31 = xmmword_298D1B1F0;
  v29 = &unk_2A1F1E940;
  v25[0] = &unk_2A1F1EC48;
  v25[1] = a6;
  v26 = v13;
  v27 = 0;
  v28 = a7;
  v14 = a5 + 270;
  v15 = (*(*a2 + 24))(a2);
  if (v15 >= v14)
  {
    v16 = a5 + 270;
  }

  else
  {
    v16 = v15;
  }

  result = (*(*a2 + 48))(&v24, a2, a5, v16, v25, &v29, v10[4]);
  v17 = v24;
  if (v24)
  {
    v18 = *(a8 + 8) | 1;
  }

  else
  {
    v19 = v10[3];
    if (v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = v10[3];
    }

    v21 = v26;
    if ((v28 & 0x80) == 0)
    {
      v21 = v20 & 0xFF00000000000000 | v26;
      if (v28 <= 0x3Fu)
      {
        v21 |= v20 & 0xFF000000000000;
        if (v28 <= 0x1Fu)
        {
          v21 |= v20 & 0xFF0000000000;
          if (v28 <= 0xFu)
          {
            v21 |= v20 & 0xFF00000000;
            if (v28 <= 7u)
            {
              v21 |= v20 & 0xFF000000;
              if (v28 <= 3u)
              {
                v21 |= v20 & 0xFF0000;
                if (v28 <= 1u)
                {
                  v21 |= v20 & 0xFF00;
                  if (!v28)
                  {
                    v21 |= v20;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v21 >= v19)
    {
      v22 = v10[3];
    }

    else
    {
      v22 = v21;
    }

    if (v19)
    {
      v17 = v22;
    }

    else
    {
      v17 = v21;
    }

    if (v17 <= v13)
    {
      v23 = v13;
    }

    else
    {
      v23 = v17;
    }

    if (v13)
    {
      v17 = v23;
    }

    v12[5] = v27;
    *(v12 + 48) = 1;
    v18 = *(a8 + 8) & 0xFE;
  }

  *(a8 + 8) = v18;
  *a8 = v17;
  return result;
}

void sub_298BE7B34(uint64_t a1)
{
  if (*(a1 + 98) == 1)
  {
    operator new();
  }

  v2 = *a1;
  sub_298C38CF4(*(a1 + 184), &v8);
  v3 = (*(a1 + 168) - *(a1 + 160)) >> 3;
  if (v2 <= 10)
  {
    if ((v2 - 1) >= 0xA)
    {
      operator new();
    }

    v4 = *(a1 + 36);
    if (v4 == 1)
    {
      operator new();
    }

    if (!v4)
    {
      operator new();
    }

    goto LABEL_10;
  }

  if (v2 > 14)
  {
    if (v2 > 16)
    {
      if (v2 != 17)
      {
        goto LABEL_30;
      }
    }

    else if (v2 != 15)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v2 <= 12)
    {
      if (v2 != 11)
      {
        operator new();
      }

LABEL_10:
      operator new();
    }

    if (v2 != 13)
    {
      v6 = *(a1 + 36);
LABEL_27:
      if (v6 == 1)
      {
        operator new();
      }

      if (!v6)
      {
        operator new();
      }

LABEL_30:
      v7 = *(a1 + 36);
      operator new();
    }

    v5 = *(a1 + 36);
    if (v5 == 1)
    {
LABEL_24:
      operator new();
    }

    if (!v5)
    {
      goto LABEL_23;
    }
  }

  v6 = *(a1 + 36);
  if (v6 != 1)
  {
    if (!v6)
    {
LABEL_23:
      operator new();
    }

    goto LABEL_27;
  }

  goto LABEL_24;
}

uint64_t sub_298BE7F94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = result + 16 * *(a2 + 2);
    *(v4 + 8) = v3;
    *(v4 + 16) = 1;
  }

  *a3 = 0;
  return result;
}

uint64_t sub_298BE7FCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *(result + 24) = *(a2 + 40);
  if (*(result + 8) != *(a2 + 2) || *a2 != 1)
  {
    goto LABEL_2;
  }

  v3 = *(a2 + 16);
  if (v3 != 7)
  {
    if (v3)
    {
      v4 = *(a2 + 5);
      v5 = *(a2 + 4);
    }

    else
    {
      v4 = *(a2 + 5);
      if (!*(a2 + 4))
      {
LABEL_2:
        *a3 = 0;
        return result;
      }

      v5 = *(a2 + 4);
    }

    *(result + 16) = *(result + 16) & ~(0xFFFFFFFFFFFFFFFFLL >> (56 - 8 * v4)) | (v5 << (8 * v4));
    v6 = *(result + 32) | (1 << v4);
    *(result + 32) = v6;
    *(result + 33) = v6 == 0xFF;
    goto LABEL_2;
  }

  *(result + 16) = *(a2 + 8);
  *(result + 32) = 511;
  *a3 = 0;
  return result;
}

void sub_298BE80DC()
{
  std::generic_category();
  v2[0] = "HWTrace.cpp";
  v2[2] = ":";
  v3 = 771;
  v1 = 3;
  LODWORD(__p) = 3486515;
  v4[0] = v2;
  v4[2] = &__p;
  v5 = 1026;
  v6[0] = v4;
  v6[2] = ": ";
  v7 = 770;
  v8[0] = v6;
  v8[2] = "Not supported";
  v9 = 770;
  sub_298B996A4(v8, &v10);
  operator new();
}

unint64_t sub_298BE82AC(uint64_t a1, unint64_t a2)
{
  v2 = 12 * (a2 / 0xC);
  v3 = v2 - 6;
  if (!v2)
  {
    v3 = 0;
  }

  *(a1 + 24);
  return v3;
}

uint64_t sub_298BE830C(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  v5 = 12 * (a2 / 0xC);
  if (v5)
  {
    v6 = v5 - 6;
  }

  else
  {
    v6 = 0;
  }

  a3(a4, v6);

  return (a3)(a4, v6 + 6);
}

void *sub_298BE8384@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v122 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    std::generic_category();
    v109 = "HWTrace.cpp";
    v111 = ":";
    v112 = 771;
    v108 = 3;
    LODWORD(__p[0]) = 3617845;
    *v115 = &v109;
    v117 = __p;
    v119 = 1026;
    v97 = v115;
    v99 = ": ";
    LOWORD(v101) = 770;
    v10 = "Empty trace";
LABEL_5:
    *&v103 = &v97;
    *&v104 = v10;
    LOWORD(v105) = 770;
    sub_298B996A4(&v103, &v120);
    operator new();
  }

  v8 = *(a1 + 24);
  v9 = 12 * (v8 >> 7);
  if (v9 < a3)
  {
    std::generic_category();
    v109 = "HWTrace.cpp";
    v111 = ":";
    v112 = 771;
    v108 = 3;
    LODWORD(__p[0]) = 3748917;
    *v115 = &v109;
    v117 = __p;
    v119 = 1026;
    v97 = v115;
    v99 = ": ";
    LOWORD(v101) = 770;
    v10 = "Range is too big";
    goto LABEL_5;
  }

  *(a5 + 8) = *(a1 + 32);
  v12 = 12 * (a2 / 0xC);
  v13 = 12 * (a3 / 0xC);
  v44 = a3 == v13;
  v14 = v13 + 12;
  if (v44)
  {
    v14 = a3;
  }

  if (v12)
  {
    v15 = v12 - 6;
  }

  else
  {
    v15 = 0;
  }

  if (v14 + 6 <= v9)
  {
    v16 = v14 + 6;
  }

  else
  {
    v16 = v14;
  }

  v17 = (v16 / 6 - v15 / 6) << 6;
  if (v8 >= (v15 / 6) << 6)
  {
    v18 = (v15 / 6) << 6;
  }

  else
  {
    v18 = v8;
  }

  v19 = *(a1 + 16) + v18;
  v20 = (v8 - v18);
  if (v20 >= v17)
  {
    v20 = v17;
  }

  v109 = *(a1 + 8);
  v110 = v19;
  v85 = v19;
  v86 = v20;
  v111 = v20;
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  v23 = &v22[v21];
  if (v21)
  {
    v24 = 8 * v21;
    while (v19 > *v22)
    {
      ++v22;
      v24 -= 8;
      if (!v24)
      {
        v25 = a3;
        v26 = a6;
        v22 = v23;
        goto LABEL_25;
      }
    }
  }

  v25 = a3;
  v26 = a6;
LABEL_25:
  (*(*a5 + 16))(a5);
  v90 = *(a5 + 24);
  result = (*(*a5 + 24))(v113, a5, a1, v15);
  if (v114)
  {
    v29 = *&v113[0];
    *&v113[0] = 0;
    *a7 = v29;
    v30 = v26;
    if (v29)
    {
      goto LABEL_126;
    }
  }

  else
  {
    *a7 = 0;
    v30 = v26;
  }

  v103 = v113[0];
  v104 = v113[1];
  v105 = v113[2];
  v106 = v113[3];
  WORD2(v99) = 0;
  v100 = 0;
  v101 = 0;
  if (v86 < 0x80)
  {
    goto LABEL_122;
  }

  v31 = v23 - v22;
  v80 = a5;
  v81 = v30;
  v87 = v25;
  do
  {
    if (v31)
    {
      if (*v22 == v85)
      {
        v82 = v31 - 1;
        ++v22;
        v32 = 1;
        result = sub_298BE8D68(v115, &v109, v30);
        if (v118)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v82 = v31;
        v32 = 0;
        result = sub_298BE8D68(v115, &v109, v30);
        if (v118)
        {
LABEL_38:
          v33 = *v115;
          *a7 = *v115;
          if (v33)
          {
            goto LABEL_123;
          }
        }
      }
    }

    else
    {
      v32 = 0;
      v82 = 0;
      result = sub_298BE8D68(v115, &v109, v30);
      if (v118)
      {
        goto LABEL_38;
      }
    }

    v34 = 0;
    v35 = v117;
    *a7 = 0;
    do
    {
      v36 = v34 - 6;
      v83 = v34;
      v84 = v35;
      if (v34 < 6)
      {
        v36 = v34;
      }

      v37 = &v35[8 * (v34 > 5)] + 21 * (v36 >> 1);
      v39 = *v37;
      v38 = *(v37 + 8);
      *(&v40 + 1) = *(v37 + 16);
      *&v40 = v38;
      LODWORD(v37) = *(v37 + 20);
      v41 = *(&v40 + 1) & 0xFFFFFF00FFFFFFFFLL | (v37 << 32);
      v89 = v40 >> 21;
      v88 = v37 >> 6;
      v42 = 1;
      do
      {
        v43 = v42;
        v44 = (v42 & 1) == 0;
        v45 = 117;
        if (!v44)
        {
          v45 = 33;
        }

        v46 = (2 * v41) << ((v45 ^ 0x7F) & 0x1E);
        v47 = -107;
        if (!v44)
        {
          v47 = 65;
        }

        v48 = v89;
        if (!v44)
        {
          v48 = v39 >> 1;
        }

        v49 = 93;
        if (v44)
        {
          v50 = v88;
        }

        else
        {
          v49 = 9;
          v50 = (v38 >> 18) & 3;
        }

        v51 = v38 >> (v45 & 0x3F);
        if (((v45 ^ 0x7F) & 0x40) != 0)
        {
          LODWORD(v46) = 0;
        }

        v44 = (v45 & 0x40) == 0;
        v52 = ((2 * v38) << (~v45 & 0x1E)) | (v39 >> (v45 & 0x3F));
        if (!v44)
        {
          LODWORD(v52) = v51;
        }

        v53 = v52 | v46;
        v94 = 0u;
        v95 = 0u;
        v96 = 0;
        v93[0] = v39;
        v93[1] = v38;
        v93[2] = v41;
        v54 = ((2 * *(&v93[1] + (v47 >> 3))) << ~(v47 & 7u)) | (*(v93 + (v47 >> 3)) >> (v47 & 7));
        v55 = v38 >> (v49 & 0x3F);
        v56 = (2 * v41) << ((v49 ^ 0x7F) & 0x3E);
        if (((v49 ^ 0x7F) & 0x40) != 0)
        {
          v56 = 0;
        }

        if ((v49 & 0x40) == 0)
        {
          v55 = ((2 * v38) << (~v49 & 0x3E)) | (v39 >> (v49 & 0x3F));
        }

        __p[0] = ((v55 | v56) & 0xFFFFFFFF00000000 | v48);
        LOBYTE(v97) = v39 & 1;
        BYTE1(v97) = v32 & 1 | ((v38 & 0x20000) != 0);
        BYTE2(v97) = v50;
        BYTE3(v97) = v53 & 1;
        BYTE4(v97) = BYTE1(v54);
        v57 = v53 >> 5;
        BYTE5(v97) = v53 >> 5;
        if ((((v53 & 0x1E) << 13) | (v53 >> 3) & 3) >= 4u)
        {
          v58 = (v53 >> 1) & 3;
          if (v58 > 1)
          {
            if (v58 != 3)
            {
              v58 = 2;
            }

LABEL_68:
            LODWORD(v99) = v58;
            WORD2(v99) = (v53 >> 3) & 3 | 0x100;
            goto LABEL_69;
          }

          if (v58)
          {
            goto LABEL_68;
          }

          v58 = 14;
        }

        else
        {
          v58 = dword_298D1B230[(((v53 & 0x1E) << 13) | (v53 >> 3) & 3)];
        }

        LODWORD(v99) = v58;
LABEL_69:
        v59 = BYTE1(v54);
        v100 = __p;
        v101 = 4;
        v102 = v15;
        v60 = *(&v103 + 16 * v50 + 8);
        v61 = &v103 + v50;
        if (v60 == 1 && (v39 & 1) != 0)
        {
          if ((v53 & 0xE0) == 0)
          {
            v62 = 1;
            goto LABEL_75;
          }
        }

        else if (v60)
        {
          v62 = v39;
          goto LABEL_75;
        }

        *(&v103 + 16 * v50 + 8);
        v70 = *v61;
        v71 = *(v61 + 8);
        result = (*(*v80 + 32))(&v120);
        if (v121)
        {
          v72 = v120;
          v120 = 0;
          *a7 = v72;
          if (v72)
          {
            goto LABEL_123;
          }
        }

        else
        {
          *a7 = 0;
          if (v120)
          {
            *v61 = v120;
            *(v61 + 8) = 1;
          }
        }

        result = sub_298BE8D68(v115, &v109, v81);
        if ((v118 & 1) != 0 && (v73 = *v115, *a7 = *v115, v73))
        {
          v74 = 0;
        }

        else
        {
          v84 = v117;
          *a7 = 0;
          v74 = 1;
        }

        if (v121)
        {
          result = v120;
          v120 = 0;
          if (result)
          {
            v79 = v74;
            result = (*(*result + 8))(result);
            v74 = v79;
          }
        }

        if (!v74)
        {
          goto LABEL_123;
        }

        v57 = BYTE5(v97);
        v59 = BYTE4(v97);
        v58 = v99;
        v62 = v97;
LABEL_75:
        v63 = *v61;
        if (*(v61 + 2))
        {
          v64 = *v61;
        }

        else
        {
          v64 = 0;
        }

        if (v57)
        {
          v65 = 1;
        }

        else
        {
          v65 = v64 == 0;
        }

        v66 = v64 & 0xFFFFFFFFFFFFFF00 | v59;
        if (v65)
        {
          v66 = v64;
        }

        if ((v62 & 1) != 0 && v58 == 7)
        {
          v116 = 0;
          v115[0] = __p[0] & 3;
          *&v115[1] = __p[0] >> 2;
          v66 = __p[0] >> 2;
        }

        if (v90)
        {
          v67 = v66 > v90;
        }

        else
        {
          v67 = 0;
        }

        v68 = !v67;
        if (v66 <= v64 || (v62 & 1) == 0 || !v68)
        {
          v98 = v64;
          if (!v64)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v98 = v66;
          v63 = v66;
        }

        v69 = &v103 + BYTE2(v97);
        *v69 = v63;
        *(v69 + 8) = 1;
LABEL_98:
        if (v15 >= a2 && v15 < v87)
        {
          result = (*(*a4 + 16))(a4, &v97);
          if (*a7)
          {
            goto LABEL_123;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_122;
          }
        }

        v32 = 0;
        v42 = 0;
        ++v15;
      }

      while ((v43 & 1) != 0);
      v32 = 0;
      v35 = v84;
      v34 = v83 + 2;
    }

    while (v83 < 0xA);
    v75 = v85;
    v76 = v86;
    v77 = 128;
    if (v86 < 0x80)
    {
      v77 = v86;
    }

    v85 += v77;
    v86 -= v77;
    v110 = v75 + v77;
    v111 = (v76 - v77);
    v67 = v76 - v77 > 0x7F;
    v30 = v81;
    v31 = v82;
  }

  while (v67);
LABEL_122:
  *a7 = 0;
LABEL_123:
  if (v114)
  {
    result = *&v113[0];
    *&v113[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_126:
  v78 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BE8D68(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2[2] <= 0x7FuLL)
  {
    std::generic_category();
    v14[0] = "StorageLayer.h";
    v14[2] = ":";
    v15 = 771;
    v13 = 3;
    LODWORD(__p) = 3160372;
    v16[0] = v14;
    v16[2] = &__p;
    v17 = 1026;
    v18[0] = v16;
    v18[2] = ": ";
    v19 = 770;
    v20[0] = v18;
    v20[2] = "not enough bytes";
    v21 = 770;
    sub_298B996A4(v20, &v22);
    operator new();
  }

  sub_298C38928(a2, 0, 0x80uLL, a3, &v23);
  v6 = v24;
  result = v23;
  if ((v24 & 1) != 0 && v23)
  {
    *(a1 + 24) |= 1u;
    *a1 = result;
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = a2[1];
    *(a1 + 24) &= ~1u;
    *a1 = a3;
    *(a1 + 8) = v9;
    *(a1 + 16) = result;
    if ((v6 & 1) != 0 && result)
    {
      result = (*(*result + 8))(result);
      v10 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v11 = *MEMORY[0x29EDCA608];
    }
  }

  return result;
}

unint64_t sub_298BE9044(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    v2 = 0;
  }

  *(a1 + 24);
  return v2;
}

uint64_t sub_298BE9078(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v5 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  }

  else
  {
    v5 = 0;
  }

  a3(a4, v5);

  return (a3)(a4, v5 + 2);
}

uint64_t sub_298BE90DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v110 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    std::generic_category();
    *v104 = "HWTrace.cpp";
    v107 = ":";
    v109 = 771;
    v103 = 3;
    LODWORD(v101) = 3617845;
    v81 = v104;
    v83 = &v101;
    LOWORD(v85) = 1026;
    *&v87 = &v81;
    *&v88 = ": ";
    LOWORD(v89) = 770;
    v12 = "Empty trace";
LABEL_5:
    *&v94 = &v87;
    *&v95 = v12;
    LOWORD(v96) = 770;
    sub_298B996A4(&v94, &__p);
    operator new();
  }

  v8 = a3;
  v10 = *(a1 + 24);
  v11 = (v10 >> 4) & 0xFFFFFFFFFFFFFFCLL;
  if (v11 < a3)
  {
    std::generic_category();
    *v104 = "HWTrace.cpp";
    v107 = ":";
    v109 = 771;
    v103 = 3;
    LODWORD(v101) = 3748917;
    v81 = v104;
    v83 = &v101;
    LOWORD(v85) = 1026;
    *&v87 = &v81;
    *&v88 = ": ";
    LOWORD(v89) = 770;
    v12 = "Range is too big";
    goto LABEL_5;
  }

  *(a5 + 8) = *(a1 + 32);
  v15 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v16 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  }

  else
  {
    v16 = 0;
  }

  if ((v15 | 2) <= v11)
  {
    v17 = v15 | 2;
  }

  else
  {
    v17 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  v18 = 16 * v16;
  v19 = 16 * (v17 - v16);
  if (v10 < 16 * v16)
  {
    v18 = v10;
  }

  v20 = *(a1 + 16) + v18;
  v21 = v10 - v18;
  if (v21 >= v19)
  {
    v21 = v19;
  }

  __p = *(a1 + 8);
  v92 = v20;
  v22 = v21;
  v93 = v21;
  v24 = *(a1 + 40);
  v23 = *(a1 + 48);
  v25 = &v24[v23];
  if (v23)
  {
    v26 = 8 * v23;
    while (v20 > *v24)
    {
      ++v24;
      v26 -= 8;
      if (!v26)
      {
        v24 = v25;
        break;
      }
    }
  }

  (*(*a5 + 16))(a5);
  v67 = *(a5 + 16);
  v77 = *(a5 + 24);
  result = (*(*a5 + 24))(v99, a5, a1, v16);
  if (v100)
  {
    v28 = *&v99[0];
    *&v99[0] = 0;
    *a7 = v28;
    if (v28)
    {
      goto LABEL_133;
    }
  }

  else
  {
    *a7 = 0;
  }

  v70 = v16;
  v71 = v20;
  v73 = a1;
  v87 = v99[0];
  v88 = v99[1];
  v89 = v99[2];
  v90 = v99[3];
  WORD2(v83) = 0;
  v84 = 0;
  v85 = 0;
  if (v22 < 0x40)
  {
    goto LABEL_129;
  }

  v29 = v22;
  v30 = v25 - v24;
  v75 = v8;
  v31 = v70;
  while (1)
  {
LABEL_27:
    v69 = v29;
    if (v30)
    {
      if (*v24 == v71)
      {
        v68 = v30 - 1;
        ++v24;
        v32 = 1;
        v33 = 1;
        result = sub_298BE9C14(&v94, &__p, a6);
        if ((BYTE8(v95) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v68 = v30;
        v32 = 0;
        v33 = 0;
        result = sub_298BE9C14(&v94, &__p, a6);
        if ((BYTE8(v95) & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v68 = 0;
      result = sub_298BE9C14(&v94, &__p, a6);
      if ((BYTE8(v95) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v34 = v94;
    *a7 = v94;
    if (v34)
    {
      break;
    }

LABEL_35:
    v35 = v95;
    *a7 = 0;
    if ((~*v35 & 0x55AA55EE55AA550) == 0)
    {
      v36 = 0;
      v94 = *v35;
      v95 = v35[1];
      v96 = v35[2];
      v97 = v35[3];
      v76 = v94 & 1;
      v72 = v94 & 1;
      v37 = (&v87 + v72);
      v38 = (v37 | 8);
      while (1)
      {
        v39 = &v94 + 28 * (v36 >> 1) + 8;
        v40 = *&v39[4 * (v36 & 1) + 20];
        v41 = &v39[10 * (v36 & 1)];
        v42 = *v41;
        LOWORD(v41) = *(v41 + 4);
        v79 = v42;
        v80 = v41;
        LOBYTE(v81) = 1;
        BYTE1(v81) = v33 & 1;
        BYTE2(v81) = v76;
        BYTE3(v81) = v40 & 1;
        BYTE4(v81) = v40 >> 9;
        v43 = (v40 >> 6) & 7;
        BYTE5(v81) = (v40 >> 6) & 7;
        if ((v40 & 0x60000) == 0)
        {
          v44 = (v40 >> 1) & 3;
          if (v44 - 1 < 3)
          {
            break;
          }
        }

        v45 = (v40 >> 1) & 0x1F;
        if ((((((v40 >> 1) & 0x1F) - 4) >> 2) | ((((v40 >> 1) & 0x1F) - 4) << 6)) < 7u)
        {
          v46 = dword_298D1B260[(((((v40 >> 1) & 0x1F) - 4) >> 2) | ((v45 - 4) << 6))];
LABEL_42:
          LODWORD(v83) = v46;
          goto LABEL_50;
        }

        v44 = (v40 >> 17) & 3;
        if (v44 > 1)
        {
          if (v44 == 3)
          {
            v46 = 6;
          }

          else
          {
            v46 = 5;
          }

          goto LABEL_42;
        }

        if (v44)
        {
          v46 = 4;
          goto LABEL_42;
        }

        if (v45)
        {
          v46 = 14;
        }

        else
        {
          v46 = 0;
        }

        LODWORD(v83) = v46;
        if ((v46 - 1) <= 2)
        {
          goto LABEL_49;
        }

LABEL_50:
        v84 = &v79;
        v85 = 5;
        v86 = v31;
        if ((v40 & 0x1C0) == 0 && *v38 != 0)
        {
          v51 = (v40 >> 9);
          v52 = *v37;
          v53 = 1;
          goto LABEL_72;
        }

        v48 = 510 << v43;
        if (*v38)
        {
          v49 = v48;
        }

        else
        {
          v49 = 0;
        }

        v52 = *v37;
        result = (*(*a5 + 32))(&v101, a5, v73, *v37, *(v37 + 8), v31, v72, v49 & 0xFE);
        if (v102)
        {
          v50 = v101;
          v101 = 0;
          *a7 = v50;
          if (v50)
          {
            goto LABEL_130;
          }
        }

        else
        {
          *a7 = 0;
          v54 = v101;
          if (v101)
          {
            *v37 = v101;
            *(v37 + 8) = 1;
            v52 = v54;
          }
        }

        result = sub_298BE9C14(v104, &__p, a6);
        if ((v108 & 1) != 0 && (v55 = *v104, *a7 = *v104, v55))
        {
          v56 = 0;
          if (v102)
          {
            goto LABEL_68;
          }
        }

        else
        {
          *a7 = 0;
          v56 = 1;
          if (v102)
          {
LABEL_68:
            result = v101;
            v101 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }
        }

        if (!v56)
        {
          goto LABEL_130;
        }

        v46 = v83;
        v43 = BYTE5(v81);
        v51 = BYTE4(v81);
        v53 = v81;
LABEL_72:
        if (*v38)
        {
          v57 = v52;
        }

        else
        {
          v57 = 0;
        }

        if (v43)
        {
          v58 = 1;
        }

        else
        {
          v58 = v57 == 0;
        }

        v59 = v57 & 0xFFFFFFFFFFFFFF00 | v51;
        if (v58)
        {
          v59 = v57;
        }

        if ((v53 & 1) != 0 && v46 == 7)
        {
          v104[0] = v79 & 7;
          *&v104[1] = v79 >> 3;
          v105 = v80 & 7;
          v106 = v80 >> 3;
          v59 = v79 >> 3;
        }

        if (v77)
        {
          v60 = v59 > v77;
        }

        else
        {
          v60 = 0;
        }

        v61 = !v60;
        if (v59 > v57 && (v53 & 1) != 0 && v61)
        {
          v82 = v59;
          v52 = v59;
LABEL_94:
          v62 = &v87 + BYTE2(v81);
          *v62 = v52;
          *(v62 + 8) = 1;
          goto LABEL_95;
        }

        v82 = v57;
        if (v57)
        {
          goto LABEL_94;
        }

LABEL_95:
        if (v31 >= a2 && v31 < v75)
        {
          result = (*(*a4 + 16))(a4, &v81);
          if (*a7)
          {
            goto LABEL_130;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_129;
          }
        }

        v33 = 0;
        ++v31;
        if (++v36 == 4)
        {
          v30 = v68;
          v65 = 64;
          if (v69 < 0x40)
          {
            v65 = v69;
          }

          v29 = v69 - v65;
          v71 += v65;
          v92 = v71;
          v93 = v69 - v65;
          v8 = v75;
          if (v69 - v65 <= 0x3F)
          {
LABEL_129:
            *a7 = 0;
            goto LABEL_130;
          }

          goto LABEL_27;
        }
      }

      LODWORD(v83) = (v40 >> 1) & 3;
LABEL_49:
      WORD2(v83) = (v40 >> 3) & 7 | 0x100;
      v46 = v44;
      goto LABEL_50;
    }

    LOBYTE(v81) = 0;
    BYTE1(v81) = v32;
    *(&v81 + 2) = 0;
    v63 = v87;
    if ((BYTE8(v87) & 1) == 0)
    {
      v63 = v67;
    }

    v82 = v63;
    LODWORD(v83) = 2;
    if (BYTE5(v83) == 1)
    {
      BYTE5(v83) = 0;
    }

    v84 = 0;
    v85 = 0;
    if (v31 >= a2 && v31 < v8)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_129;
      }

      v86 = v31;
      (*(*a4 + 24))(a4, v31);
      result = (*(*a4 + 16))(a4, &v81);
      if (*a7)
      {
        break;
      }
    }

    if (v31 + 1 >= a2 && v31 + 1 < v8)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_129;
      }

      v86 = v31 + 1;
      (*(*a4 + 24))(a4, v31 + 1);
      result = (*(*a4 + 16))(a4, &v81);
      if (*a7)
      {
        break;
      }
    }

    v29 -= 32;
    v71 += 32;
    v92 = v71;
    v93 = v69 - 32;
    if (v31 == v70 && v29 >= 0x40)
    {
      result = (*(*a5 + 24))(&v94, a5, v73, v70 + 2);
      if (v98)
      {
        v64 = v94;
        *&v94 = 0;
        *a7 = v64;
        if (v64)
        {
          break;
        }
      }

      else
      {
        *a7 = 0;
      }

      v87 = v94;
      v88 = v95;
      v89 = v96;
      v90 = v97;
    }

    v31 += 2;
    v30 = v68;
    if (v29 <= 0x3F)
    {
      goto LABEL_129;
    }
  }

LABEL_130:
  if (v100)
  {
    result = *&v99[0];
    *&v99[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_133:
  v66 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BE9C14(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2[2] <= 0x3FuLL)
  {
    std::generic_category();
    v14[0] = "StorageLayer.h";
    v14[2] = ":";
    v15 = 771;
    v13 = 3;
    LODWORD(__p) = 3160372;
    v16[0] = v14;
    v16[2] = &__p;
    v17 = 1026;
    v18[0] = v16;
    v18[2] = ": ";
    v19 = 770;
    v20[0] = v18;
    v20[2] = "not enough bytes";
    v21 = 770;
    sub_298B996A4(v20, &v22);
    operator new();
  }

  sub_298C38928(a2, 0, 0x40uLL, a3, &v23);
  v6 = v24;
  result = v23;
  if ((v24 & 1) != 0 && v23)
  {
    *(a1 + 24) |= 1u;
    *a1 = result;
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = a2[1];
    *(a1 + 24) &= ~1u;
    *a1 = a3;
    *(a1 + 8) = v9;
    *(a1 + 16) = result;
    if ((v6 & 1) != 0 && result)
    {
      result = (*(*result + 8))(result);
      v10 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v11 = *MEMORY[0x29EDCA608];
    }
  }

  return result;
}

unint64_t sub_298BE9EF8(uint64_t a1, unint64_t a2)
{
  v2 = 18 * (a2 / 0x12);
  v3 = v2 - 9;
  if (!v2)
  {
    v3 = 0;
  }

  *(a1 + 24);
  return v3;
}

uint64_t sub_298BE9F70(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  v5 = 9 * (*(a1 + 24) >> 8);
  v6 = sub_298BE9EF8(a1, a2);
  a3(a4, v6);

  return (a3)(a4, v6 + 9);
}

uint64_t sub_298BE9FE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void *a6@<X5>, const char **a7@<X8>)
{
  v155 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    v104 = std::generic_category();
    v152 = "HWTrace.cpp";
    v154 = 259;
    v142 = ":";
    v144 = 259;
    sub_298ADC860(&v152, &v142, &v124);
    sub_298AFB090(0x223uLL, 0, __p);
    v141 = 260;
    v140[0] = __p;
    sub_298ADC860(&v124, v140, &v131);
    v137[0] = ": ";
    v138 = 259;
    sub_298ADC860(&v131, v137, &v145);
    v105 = "Empty trace";
    goto LABEL_222;
  }

  v9 = *(a1 + 24);
  v10 = 18 * (v9 >> 8);
  if (v10 < a3)
  {
    v104 = std::generic_category();
    v152 = "HWTrace.cpp";
    v154 = 259;
    v142 = ":";
    v144 = 259;
    sub_298ADC860(&v152, &v142, &v124);
    sub_298AFB090(0x225uLL, 0, __p);
    v141 = 260;
    v140[0] = __p;
    sub_298ADC860(&v124, v140, &v131);
    v137[0] = ": ";
    v138 = 259;
    sub_298ADC860(&v131, v137, &v145);
    v105 = "Range is too big";
LABEL_222:
    v135 = v105;
    v136 = 259;
    sub_298ADC860(&v145, &v135, v150);
    sub_298ADDCA4(45, v104, v150);
  }

  v12 = a5;
  a5[8] = *(a1 + 32);
  v14 = 18 * (a2 / 0x12);
  v15 = 18 * (a3 / 0x12);
  v73 = a3 == v15;
  v16 = v15 + 18;
  if (v73)
  {
    v16 = a3;
  }

  if (v14)
  {
    v17 = v14 - 9;
  }

  else
  {
    v17 = 0;
  }

  if (v16 + 9 <= v10)
  {
    v18 = v16 + 9;
  }

  else
  {
    v18 = v16;
  }

  v19 = (v18 / 9 - v17 / 9) << 7;
  if (v9 >= (v17 / 9) << 7)
  {
    v20 = (v17 / 9) << 7;
  }

  else
  {
    v20 = v9;
  }

  v21 = *(a1 + 16) + v20;
  v22 = v9 - v20;
  if (v22 >= v19)
  {
    v22 = v19;
  }

  v118 = v22;
  v24 = *(a1 + 40);
  v23 = *(a1 + 48);
  v25 = &v24[v23];
  if (v23)
  {
    v26 = 8 * v23;
    while (v21 > *v24)
    {
      ++v24;
      v26 -= 8;
      if (!v26)
      {
        v24 = v25;
        break;
      }
    }
  }

  v120 = *(a1 + 8);
  (*(*a5 + 16))(a5);
  v27 = v12[3];
  v117 = v12[2];
  result = (*(*v12 + 24))(v150, v12, a1, v17);
  if (v151)
  {
    v29 = *&v150[0];
    *&v150[0] = 0;
    *a7 = v29;
    v30 = v21;
    if (v29)
    {
      goto LABEL_188;
    }
  }

  else
  {
    *a7 = 0;
    v30 = v21;
  }

  v131 = v150[0];
  v132 = v150[1];
  v133 = v150[2];
  v134 = v150[3];
  v127 = 0;
  v128 = 0;
  v129 = 0;
  if (v118 < 0x100)
  {
    goto LABEL_184;
  }

  v31 = v25 - v24;
  v32 = v17;
  v121 = a3;
  v112 = v17;
  v113 = a1;
LABEL_27:
  v119 = v30;
  if (v31)
  {
    if (*v24 == v30)
    {
      v114 = v31 - 1;
      ++v24;
      v115 = 1;
      v33 = 1;
    }

    else
    {
      v114 = v31;
      v115 = 0;
      v33 = 0;
    }
  }

  else
  {
    v115 = 0;
    v33 = 0;
    v114 = 0;
  }

  result = (*(*v120 + 24))(v120);
  v34 = v119;
  v35 = result - v119;
  if (result - v119 >= 0x100)
  {
    v35 = 256;
  }

  v36 = a6[1];
  v37 = v35 + v119;
  if (v36 > v119 || ((v38 = a6[3]) != 0 ? (v39 = v37 > v38 + v36) : (v39 = 1), v39))
  {
    v40 = a6[4];
    v41 = v37 >= v40 >> 1;
    v42 = v37 - (v40 >> 1);
    if (!v41)
    {
      v42 = 0;
    }

    if (v35 >= v40 >> 1)
    {
      v36 = v119;
    }

    else
    {
      v36 = v42;
    }

    if (v40 <= 0x100)
    {
      v43 = 256;
    }

    else
    {
      v43 = a6[4];
    }

    v44 = (*(*v120 + 24))(v120);
    if (v44 - v36 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44 - v36;
    }

    v46 = a6[5];
    if (v46)
    {
      v47 = a6[3];
    }

    else
    {
      v47 = 0;
    }

    result = (**v120)(&v145, v120, v36, v45, (a6 + 5), v47, v46 != 0);
    v106 = v145;
    if ((v146 & 1) != 0 && v145)
    {
      *a7 = v145;
      goto LABEL_185;
    }

    v38 = *(&v145 + 1);
    a6[1] = v36;
    a6[2] = v106;
    a6[3] = v38;
    v34 = v119;
  }

  else
  {
    v106 = a6[2];
  }

  if (v38 >= v34 - v36)
  {
    v38 = v34 - v36;
  }

  v48 = (v106 + v38);
  *a7 = 0;
  if ((*(v106 + v38 + 126) & 0x80000000) == 0 && *(v48 + 127) < 0)
  {
    v116 = v12;
    v111 = a6;
    v49 = 0;
    while (1)
    {
      v50 = (v48 + 112);
      v51 = (v48 + 240);
      v52 = &v48[28 * ((v49 - 10) >> 1)];
      v53 = (v52 + 128);
      v54 = (v52 + 142);
      if (v49 >= 0xA)
      {
        v51 = v54;
        v50 = v53;
      }

      v109 = v49;
      v110 = v48;
      if (v49 <= 7)
      {
        v51 = &v48[28 * (v49 >> 1) + 14];
        v50 = &v48[28 * (v49 >> 1)];
      }

      v55 = *(v50 + 2) | (*(v50 + 6) << 32);
      v56 = *v50;
      v57 = *(v51 + 8) | (*(v51 + 12) << 32);
      v58 = *v51;
      v59 = 1;
      do
      {
        v60 = v59;
        if (v59)
        {
          v61 = v55;
        }

        else
        {
          v61 = v57;
        }

        if (v59)
        {
          v62 = v56;
        }

        else
        {
          v62 = v58;
        }

        *(&v63 + 1) = v61;
        *&v63 = v62;
        v64 = v61 >> 1;
        v142 = v63 >> 1;
        v143 = v61 >> 1;
        v65 = v61 & 0xFFFFFFFFFFFFLL;
        LOBYTE(v124) = v62 & 1;
        BYTE1(v124) = ((v55 & 0x80000000000) != 0) | v33 & 1;
        v66 = (v61 >> 17) & 0x7FFFFFFF;
        v67 = (v61 >> 44) & 3;
        BYTE2(v124) = (v61 >> 44) & 3;
        BYTE3(v124) = (v61 & 0x20000) != 0;
        BYTE4(v124) = v61 >> 26;
        v68 = (v66 >> 6) & 7;
        BYTE5(v124) = (v66 >> 6) & 7;
        if ((v66 & 0x60000) == 0)
        {
          v69 = (v66 >> 1) & 3;
          if (v69 - 1 < 3)
          {
            v126 = (v66 >> 1) & 3;
LABEL_75:
            v127 = (v66 >> 3) & 7 | 0x100;
            goto LABEL_76;
          }
        }

        v82 = (v66 >> 1) & 0x1F;
        v83 = ((((v66 >> 1) & 0x1F) - 4) >> 2) | ((v82 - 4) << 6);
        if ((((((v66 >> 1) & 0x1F) - 4) >> 2) | ((((v66 >> 1) & 0x1F) - 4) << 6)) >= 7u)
        {
          v84 = (v66 >> 17) & 3;
          if (v84 > 1)
          {
            if (v84 == 3)
            {
              v69 = 6;
              v126 = 6;
            }

            else
            {
              v69 = 5;
              v126 = 5;
            }

            goto LABEL_76;
          }

          if (v84)
          {
            v69 = 4;
            v126 = 4;
          }

          else
          {
            if (v82)
            {
              v69 = 14;
            }

            else
            {
              v69 = 0;
            }

            v126 = v69;
            if (v69 - 1 <= 2)
            {
              v69 = 0;
              goto LABEL_75;
            }
          }
        }

        else
        {
          v69 = dword_298D1B260[(((((v66 >> 1) & 0x1F) - 4) >> 2) | ((v82 - 4) << 6))];
          v126 = dword_298D1B260[v83];
        }

LABEL_76:
        v70 = (v65 >> 26);
        v128 = &v142;
        v129 = 5;
        v130 = v32;
        v71 = &v131 + v67;
        v72 = *(v71 + 8);
        v73 = v72 != 1 || (v62 & 1) == 0;
        if (v73)
        {
          if (v72)
          {
            goto LABEL_82;
          }
        }

        else if ((v66 & 0x1C0) == 0)
        {
          LOBYTE(v62) = 1;
          goto LABEL_82;
        }

        *(v71 + 8);
        v89 = *v71;
        v90 = *(v71 + 8);
        result = (*(*v116 + 32))(&v152);
        if (v153)
        {
          v91 = v152;
          v152 = 0;
          *a7 = v91;
          if (v91)
          {
            goto LABEL_185;
          }
        }

        else
        {
          *a7 = 0;
          if (v152)
          {
            *v71 = v152;
            *(v71 + 8) = 1;
          }
        }

        result = (*(*v120 + 24))(v120);
        v92 = v119;
        v93 = result - v119;
        if (result - v119 >= 0x100)
        {
          v93 = 256;
        }

        v94 = v111[1];
        v95 = v93 + v119;
        if (v94 <= v119)
        {
          v96 = v111[3];
          if (v96)
          {
            if (v95 <= v96 + v94)
            {
              v102 = v111[2];
              goto LABEL_211;
            }
          }
        }

        v97 = v111[4];
        v41 = v95 >= v97 >> 1;
        v98 = v95 - (v97 >> 1);
        if (!v41)
        {
          v98 = 0;
        }

        if (v93 >= v97 >> 1)
        {
          v99 = v119;
        }

        else
        {
          v99 = v98;
        }

        if (v97 > 0x100)
        {
          v100 = v111[4];
        }

        v107 = v99;
        (*(*v120 + 24))(v120);
        if (v111[5])
        {
          v101 = v111[3];
        }

        result = (**v120)(&v145);
        v102 = v145;
        if ((v146 & 1) == 0 || !v145)
        {
          v96 = *(&v145 + 1);
          v92 = v119;
          v94 = v107;
          v111[1] = v107;
          v111[2] = v102;
          v111[3] = v96;
LABEL_211:
          if (v96 >= v92 - v94)
          {
            v96 = v92 - v94;
          }

          v110 = &v102[v96];
          v103 = 1;
          v102 = 0;
          goto LABEL_214;
        }

        v103 = 0;
LABEL_214:
        *a7 = v102;
        if (v153)
        {
          result = v152;
          v152 = 0;
          if (result)
          {
            v108 = v103;
            result = (*(*result + 8))(result);
            v103 = v108;
          }
        }

        if (!v103)
        {
          goto LABEL_185;
        }

        LOBYTE(v64) = v143;
        v68 = BYTE5(v124);
        v70 = BYTE4(v124);
        v69 = v126;
        LOBYTE(v62) = v124;
LABEL_82:
        v74 = *v71;
        if ((*(v71 + 2) & 1) == 0)
        {
          v74 = 0;
        }

        if (v68)
        {
          v75 = 1;
        }

        else
        {
          v75 = v74 == 0;
        }

        v76 = v74 & 0xFFFFFFFFFFFFFF00 | v70;
        if (v75)
        {
          v76 = v74;
        }

        if ((v62 & 1) != 0 && v69 == 7)
        {
          LOBYTE(v145) = v142 & 7;
          *(&v145 + 1) = v142 >> 3;
          *(&v145 + 9) = v64 & 7;
          *(&v145 + 11) = v64 >> 3;
          v76 = v142 >> 3;
        }

        v77 = v62 & (v76 > v74);
        if (v27)
        {
          v78 = v76 > v27;
        }

        else
        {
          v78 = 0;
        }

        v79 = !v78;
        if ((v77 & v79) != 0)
        {
          v80 = v76;
        }

        else
        {
          v80 = v74;
        }

        v125 = v80;
        if (v80)
        {
          v81 = &v131 + BYTE2(v124);
          *v81 = v80;
          *(v81 + 8) = 1;
        }

        if (v32 >= a2 && v32 < v121)
        {
          result = (*(*a4 + 16))(a4, &v124);
          if (*a7)
          {
            goto LABEL_185;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_184;
          }
        }

        v33 = 0;
        v59 = 0;
        ++v32;
      }

      while ((v60 & 1) != 0);
      v33 = 0;
      v48 = v110;
      v49 = v109 + 2;
      if (v109 >= 0x10)
      {
        v86 = 256;
        v118 -= 256;
        a6 = v111;
        v12 = v116;
LABEL_150:
        v30 = v86 + v119;
        v31 = v114;
        if (v118 <= 0xFF)
        {
LABEL_184:
          *a7 = 0;
          goto LABEL_185;
        }

        goto LABEL_27;
      }
    }
  }

  LOBYTE(v124) = 0;
  BYTE1(v124) = v115;
  *(&v124 + 2) = 0;
  v85 = v131;
  if ((BYTE8(v131) & 1) == 0)
  {
    v85 = v117;
  }

  v125 = v85;
  v126 = 2;
  if (HIBYTE(v127) == 1)
  {
    HIBYTE(v127) = 0;
  }

  v128 = 0;
  v129 = 0;
  if (v32 < a2 || v32 >= v121)
  {
    goto LABEL_230;
  }

  result = (*(*a4 + 32))(a4);
  if (result)
  {
    goto LABEL_184;
  }

  v130 = v32;
  (*(*a4 + 24))(a4, v32);
  result = (*(*a4 + 16))(a4, &v124);
  if (!*a7)
  {
LABEL_230:
    if (v32 + 1 < a2 || v32 + 1 >= v121)
    {
      goto LABEL_133;
    }

    result = (*(*a4 + 32))(a4);
    if (result)
    {
      goto LABEL_184;
    }

    v130 = v32 + 1;
    (*(*a4 + 24))(a4, v32 + 1);
    result = (*(*a4 + 16))(a4, &v124);
    if (!*a7)
    {
LABEL_133:
      if (v32 + 2 < a2 || v32 + 2 >= v121)
      {
        goto LABEL_135;
      }

      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_184;
      }

      v130 = v32 + 2;
      (*(*a4 + 24))(a4, v32 + 2);
      result = (*(*a4 + 16))(a4, &v124);
      if (!*a7)
      {
LABEL_135:
        if (v32 + 3 < a2 || v32 + 3 >= v121)
        {
          goto LABEL_137;
        }

        result = (*(*a4 + 32))(a4);
        if (result)
        {
          goto LABEL_184;
        }

        v130 = v32 + 3;
        (*(*a4 + 24))(a4, v32 + 3);
        result = (*(*a4 + 16))(a4, &v124);
        if (!*a7)
        {
LABEL_137:
          if (v32 + 4 < a2 || v32 + 4 >= v121)
          {
            goto LABEL_139;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_184;
          }

          v130 = v32 + 4;
          (*(*a4 + 24))(a4, v32 + 4);
          result = (*(*a4 + 16))(a4, &v124);
          if (!*a7)
          {
LABEL_139:
            if (v32 + 5 < a2 || v32 + 5 >= v121)
            {
              goto LABEL_141;
            }

            result = (*(*a4 + 32))(a4);
            if (result)
            {
              goto LABEL_184;
            }

            v130 = v32 + 5;
            (*(*a4 + 24))(a4, v32 + 5);
            result = (*(*a4 + 16))(a4, &v124);
            if (!*a7)
            {
LABEL_141:
              if (v32 + 6 < a2 || v32 + 6 >= v121)
              {
                goto LABEL_152;
              }

              result = (*(*a4 + 32))(a4);
              if (result)
              {
                goto LABEL_184;
              }

              v130 = v32 + 6;
              (*(*a4 + 24))(a4, v32 + 6);
              result = (*(*a4 + 16))(a4, &v124);
              if (!*a7)
              {
LABEL_152:
                if (v32 + 7 < a2 || v32 + 7 >= v121)
                {
                  goto LABEL_229;
                }

                result = (*(*a4 + 32))(a4);
                if (result)
                {
                  goto LABEL_184;
                }

                v130 = v32 + 7;
                (*(*a4 + 24))(a4, v32 + 7);
                result = (*(*a4 + 16))(a4, &v124);
                if (!*a7)
                {
LABEL_229:
                  if (v32 + 8 < a2 || v32 + 8 >= v121)
                  {
                    goto LABEL_144;
                  }

                  result = (*(*a4 + 32))(a4);
                  if (result)
                  {
                    goto LABEL_184;
                  }

                  v130 = v32 + 8;
                  (*(*a4 + 24))(a4, v32 + 8);
                  result = (*(*a4 + 16))(a4, &v124);
                  if (!*a7)
                  {
LABEL_144:
                    v118 -= 128;
                    if (v32 == v112 && v118 >= 0x100)
                    {
                      result = (*(*v12 + 24))(&v145, v12, v113, v112 + 9);
                      if (v149)
                      {
                        v87 = v145;
                        *&v145 = 0;
                        *a7 = v87;
                        if (v87)
                        {
                          goto LABEL_185;
                        }
                      }

                      else
                      {
                        *a7 = 0;
                      }

                      v131 = v145;
                      v132 = v146;
                      v133 = v147;
                      v134 = v148;
                    }

                    v32 += 9;
                    v86 = 128;
                    goto LABEL_150;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_185:
  if (v151)
  {
    result = *&v150[0];
    *&v150[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_188:
  v88 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_298BEB2E4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFFELL) - 1;
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    v2 = 0;
  }

  *(a1 + 24);
  return v2;
}

uint64_t sub_298BEB314(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v5 = (a2 & 0xFFFFFFFFFFFFFFFELL) - 1;
  }

  else
  {
    v5 = 0;
  }

  a3(a4, v5);

  return (a3)(a4, v5 + 1);
}

void *sub_298BEB374@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v105 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    std::generic_category();
    *&v89 = "HWTrace.cpp";
    *&v90 = ":";
    v91 = 771;
    v104 = 3;
    LODWORD(v102) = 3617845;
    v79 = &v89;
    v81 = &v102;
    LOWORD(v83) = 1026;
    *&v85 = &v79;
    *&v86 = ": ";
    LOWORD(v87) = 770;
    v12 = "Empty trace";
LABEL_5:
    *&v95 = &v85;
    *&v96 = v12;
    LOWORD(v97) = 770;
    sub_298B996A4(&v95, &__p);
    operator new();
  }

  v8 = a3;
  v10 = *(a1 + 24);
  v11 = (v10 >> 4) & 0xFFFFFFFFFFFFFFELL;
  if (v11 < a3)
  {
    std::generic_category();
    *&v89 = "HWTrace.cpp";
    *&v90 = ":";
    v91 = 771;
    v104 = 3;
    LODWORD(v102) = 3748917;
    v79 = &v89;
    v81 = &v102;
    LOWORD(v83) = 1026;
    *&v85 = &v79;
    *&v86 = ": ";
    LOWORD(v87) = 770;
    v12 = "Range is too big";
    goto LABEL_5;
  }

  *(a5 + 8) = *(a1 + 32);
  v15 = (a3 & 1) + a3;
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v16 = (a2 & 0xFFFFFFFFFFFFFFFELL) - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 - v16;
  v18 = v15 >= v11;
  v19 = 16 * v16;
  if (!v18)
  {
    ++v17;
  }

  v20 = 16 * v17;
  if (v10 < v19)
  {
    v19 = v10;
  }

  v21 = *(a1 + 16) + v19;
  v22 = v10 - v19;
  if (v22 >= v20)
  {
    v22 = v20;
  }

  __p = *(a1 + 8);
  v93 = v21;
  v23 = v22;
  v94 = v22;
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  v26 = &v25[v24];
  v75 = v26;
  if (v24)
  {
    v27 = 8 * v24;
    while (v21 > *v25)
    {
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        v25 = v26;
        break;
      }
    }
  }

  (*(*a5 + 16))(a5);
  v70 = *(a5 + 16);
  v76 = *(a5 + 24);
  result = (*(*a5 + 24))(v100, a5, a1, v16);
  if (v101)
  {
    v29 = *&v100[0];
    *&v100[0] = 0;
    *a7 = v29;
    if (v29)
    {
      goto LABEL_124;
    }
  }

  else
  {
    *a7 = 0;
  }

  v71 = v16;
  v72 = a1;
  v85 = v100[0];
  v86 = v100[1];
  v87 = v100[2];
  v88 = v100[3];
  WORD2(v81) = 0;
  v82 = 0;
  v83 = 0;
  if (v23 < 0x20)
  {
    goto LABEL_120;
  }

  v30 = v23;
  v31 = v21;
  v32 = v75 - v25;
  v74 = v8;
  while (1)
  {
LABEL_26:
    v68 = v31;
    v69 = v30;
    if (v32)
    {
      if (*v25 == v31)
      {
        v67 = v32 - 1;
        ++v25;
        v33 = 1;
        v34 = 1;
        result = sub_298BEBDA4(&v95, &__p, a6);
        if ((BYTE8(v96) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v67 = v32;
        v33 = 0;
        v34 = 0;
        result = sub_298BEBDA4(&v95, &__p, a6);
        if ((BYTE8(v96) & 1) == 0)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v67 = 0;
      result = sub_298BEBDA4(&v95, &__p, a6);
      if ((BYTE8(v96) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v35 = v95;
    *a7 = v95;
    if (v35)
    {
      break;
    }

LABEL_34:
    v36 = v96;
    *a7 = 0;
    v37 = *v36;
    if (*v36 == 0x155AA550055AA551 || v37 == 0x155AA551155AA551 || v37 == 0x155AA552255AA551)
    {
      v40 = 0;
      v89 = *v36;
      v90 = *(v36 + 1);
      v41 = v89 == 0x155AA552255AA551;
      v42 = (&v85 + v41);
      v43 = 1;
      while (1)
      {
        v44 = v43;
        v45 = *(&v90 + 2 * v40 + 4);
        v78 = *(&v89 + v40 + 1);
        LOBYTE(v79) = 1;
        BYTE1(v79) = v34 & 1;
        BYTE2(v79) = v41;
        *(&v79 + 3) = v45 & 0xFF01;
        v46 = v45 >> 8;
        v47 = v45 >> 5;
        BYTE5(v79) = v45 >> 5;
        if ((((v45 & 0x1E) << 13) | (v45 >> 3) & 3) >= 4u)
        {
          v48 = (v45 >> 1) & 3;
          if (v48 > 1)
          {
            if (v48 != 3)
            {
              v48 = 2;
            }

LABEL_51:
            LODWORD(v81) = v48;
            WORD2(v81) = (v45 >> 3) & 3 | 0x100;
            goto LABEL_52;
          }

          if (v48)
          {
            goto LABEL_51;
          }

          v48 = 14;
        }

        else
        {
          v48 = dword_298D1B230[(((v45 & 0x1E) << 13) | (v45 >> 3) & 3)];
        }

        LODWORD(v81) = v48;
LABEL_52:
        v82 = &v78;
        v83 = 4;
        v84 = v16;
        v49 = *v42;
        v50 = *(v42 + 8);
        if (*(v42 | 8) == 1 && (v45 & 0xE0) == 0)
        {
          v51 = 1;
          goto LABEL_72;
        }

        if (*(v42 | 8))
        {
          v52 = 510 << v47;
        }

        else
        {
          v52 = 0;
        }

        result = (*(*a5 + 32))(&v102, a5, v72, *v42, v50, v16, v41, v52 & 0xFE);
        if (v103)
        {
          v53 = v102;
          v102 = 0;
          *a7 = v53;
          if (v53)
          {
            goto LABEL_121;
          }
        }

        else
        {
          *a7 = 0;
          v54 = v102;
          if (v102)
          {
            *v42 = v102;
            *(v42 + 8) = 1;
            v49 = v54;
          }
        }

        result = sub_298BEBDA4(&v95, &__p, a6);
        if ((BYTE8(v96) & 1) != 0 && (v55 = v95, *a7 = v95, v55))
        {
          v56 = 0;
          if (v103)
          {
            goto LABEL_68;
          }
        }

        else
        {
          *a7 = 0;
          v56 = 1;
          if (v103)
          {
LABEL_68:
            result = v102;
            v102 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }
        }

        if (!v56)
        {
          goto LABEL_121;
        }

        v50 = *(v42 + 8);
        v47 = BYTE5(v79);
        v46 = BYTE4(v79);
        v48 = v81;
        v51 = v79;
LABEL_72:
        if (v50)
        {
          v57 = v49;
        }

        else
        {
          v57 = 0;
        }

        if (v47)
        {
          v58 = 1;
        }

        else
        {
          v58 = v57 == 0;
        }

        v59 = v57 & 0xFFFFFFFFFFFFFF00 | v46;
        if (v58)
        {
          v59 = v57;
        }

        if ((v51 & 1) != 0 && v48 == 7)
        {
          *(&v95 + 9) = 0;
          LOBYTE(v95) = v78 & 3;
          *(&v95 + 1) = v78 >> 2;
          v59 = v78 >> 2;
        }

        if (v76)
        {
          v60 = v59 > v76;
        }

        else
        {
          v60 = 0;
        }

        v61 = !v60;
        if (v59 > v57 && (v51 & 1) != 0 && v61)
        {
          v80 = v59;
          v49 = v59;
LABEL_94:
          v62 = &v85 + BYTE2(v79);
          *v62 = v49;
          *(v62 + 8) = 1;
          goto LABEL_95;
        }

        v80 = v57;
        if (v57)
        {
          goto LABEL_94;
        }

LABEL_95:
        if (v16 >= a2 && v16 < v74)
        {
          result = (*(*a4 + 16))(a4, &v79);
          if (*a7)
          {
            goto LABEL_121;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_120;
          }
        }

        v43 = 0;
        v34 = 0;
        ++v16;
        v40 = 1;
        if ((v44 & 1) == 0)
        {
          v63 = 32;
          if (v69 < 0x20)
          {
            v63 = v69;
          }

          v31 = v68 + v63;
          v30 = v69 - v63;
          v93 = v68 + v63;
          v94 = v69 - v63;
          v8 = v74;
          v32 = v67;
          if (v69 - v63 <= 0x1F)
          {
LABEL_120:
            *a7 = 0;
            goto LABEL_121;
          }

          goto LABEL_26;
        }
      }
    }

    LOBYTE(v79) = 0;
    BYTE1(v79) = v33;
    *(&v79 + 2) = 0;
    v64 = v85;
    if ((BYTE8(v85) & 1) == 0)
    {
      v64 = v70;
    }

    v80 = v64;
    LODWORD(v81) = 2;
    if (BYTE5(v81) == 1)
    {
      BYTE5(v81) = 0;
    }

    v82 = 0;
    v83 = 0;
    if (v16 >= a2 && v16 < v8)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_120;
      }

      v84 = v16;
      (*(*a4 + 24))(a4, v16);
      result = (*(*a4 + 16))(a4, &v79);
      if (*a7)
      {
        break;
      }
    }

    v31 = v68 + 16;
    v30 = v69 - 16;
    v93 = v68 + 16;
    v94 = v69 - 16;
    if (v16 == v71 && v30 >= 0x20)
    {
      result = (*(*a5 + 24))(&v95, a5, v72, v71 + 1);
      if (v99)
      {
        v65 = v95;
        *&v95 = 0;
        *a7 = v65;
        if (v65)
        {
          break;
        }
      }

      else
      {
        *a7 = 0;
      }

      v85 = v95;
      v86 = v96;
      v87 = v97;
      v88 = v98;
      v31 = v68 + 16;
    }

    ++v16;
    v32 = v67;
    if (v30 <= 0x1F)
    {
      goto LABEL_120;
    }
  }

LABEL_121:
  if (v101)
  {
    result = *&v100[0];
    *&v100[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_124:
  v66 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BEBDA4(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2[2] <= 0x1FuLL)
  {
    std::generic_category();
    v14[0] = "StorageLayer.h";
    v14[2] = ":";
    v15 = 771;
    v13 = 3;
    LODWORD(__p) = 3160372;
    v16[0] = v14;
    v16[2] = &__p;
    v17 = 1026;
    v18[0] = v16;
    v18[2] = ": ";
    v19 = 770;
    v20[0] = v18;
    v20[2] = "not enough bytes";
    v21 = 770;
    sub_298B996A4(v20, &v22);
    operator new();
  }

  sub_298C38928(a2, 0, 0x20uLL, a3, &v23);
  v6 = v24;
  result = v23;
  if ((v24 & 1) != 0 && v23)
  {
    *(a1 + 24) |= 1u;
    *a1 = result;
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = a2[1];
    *(a1 + 24) &= ~1u;
    *a1 = a3;
    *(a1 + 8) = v9;
    *(a1 + 16) = result;
    if ((v6 & 1) != 0 && result)
    {
      result = (*(*result + 8))(result);
      v10 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v11 = *MEMORY[0x29EDCA608];
    }
  }

  return result;
}

unint64_t sub_298BEC0A8(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    v2 = 0;
  }

  *(a1 + 24);
  return v2;
}

uint64_t sub_298BEC0F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v5 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  }

  else
  {
    v5 = 0;
  }

  a3(a4, v5);

  return (a3)(a4, v5 + 2);
}

uint64_t sub_298BEC154@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v106 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    std::generic_category();
    *v101 = "HWTrace.cpp";
    v103 = ":";
    v105 = 771;
    v100 = 3;
    LODWORD(v98) = 3617845;
    v78 = v101;
    v80 = &v98;
    LOWORD(v82) = 1026;
    *&v84 = &v78;
    *&v85 = ": ";
    LOWORD(v86) = 770;
    v12 = "Empty trace";
LABEL_5:
    *&v91 = &v84;
    *&v92 = v12;
    LOWORD(v93) = 770;
    sub_298B996A4(&v91, &__p);
    operator new();
  }

  v8 = a3;
  v9 = a1;
  v10 = *(a1 + 24);
  v11 = 4 * (v10 / 0x38);
  if (v11 < a3)
  {
    std::generic_category();
    *v101 = "HWTrace.cpp";
    v103 = ":";
    v105 = 771;
    v100 = 3;
    LODWORD(v98) = 3748917;
    v78 = v101;
    v80 = &v98;
    LOWORD(v82) = 1026;
    *&v84 = &v78;
    *&v85 = ": ";
    LOWORD(v86) = 770;
    v12 = "Range is too big";
    goto LABEL_5;
  }

  *(a5 + 8) = *(a1 + 32);
  v16 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v17 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  }

  else
  {
    v17 = 0;
  }

  if ((v16 | 2) <= v11)
  {
    v18 = v16 | 2;
  }

  else
  {
    v18 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  v19 = 14 * v17;
  v20 = 28 * ((v18 >> 1) - (v17 >> 1));
  if (v10 < 14 * v17)
  {
    v19 = v10;
  }

  v21 = *(a1 + 16) + v19;
  v22 = v10 - v19;
  if (v22 >= v20)
  {
    v22 = v20;
  }

  __p = *(a1 + 8);
  v89 = v21;
  v71 = v22;
  v90 = v22;
  v24 = *(a1 + 40);
  v23 = *(a1 + 48);
  v25 = &v24[v23];
  if (v23)
  {
    v26 = 8 * v23;
    while (v21 > *v24)
    {
      ++v24;
      v26 -= 8;
      if (!v26)
      {
        v24 = v25;
        break;
      }
    }
  }

  (*(*a5 + 16))(a5);
  v69 = *(a5 + 16);
  v75 = *(a5 + 24);
  result = (*(*a5 + 24))(v96, a5, v9, v17);
  if (v97)
  {
    v28 = *&v96[0];
    *&v96[0] = 0;
    *a7 = v28;
    if (v28)
    {
      goto LABEL_129;
    }
  }

  else
  {
    *a7 = 0;
  }

  v70 = v21;
  v84 = v96[0];
  v85 = v96[1];
  v86 = v96[2];
  v87 = v96[3];
  WORD2(v80) = 0;
  v81 = 0;
  v82 = 0;
  if (v71 < 0x38)
  {
    goto LABEL_125;
  }

  v29 = v25 - v24;
  v74 = v8;
  v30 = v17;
  v67 = v17;
  v72 = a6;
  v73 = v9;
  while (1)
  {
LABEL_27:
    if (v29)
    {
      if (*v24 == v70)
      {
        v68 = v29 - 1;
        ++v24;
        v31 = 1;
        v32 = 1;
        result = sub_298BECC60(&v91, &__p, a6);
        if ((BYTE8(v92) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v68 = v29;
        v31 = 0;
        v32 = 0;
        result = sub_298BECC60(&v91, &__p, a6);
        if ((BYTE8(v92) & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v68 = 0;
      result = sub_298BECC60(&v91, &__p, a6);
      if ((BYTE8(v92) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v33 = v91;
    *a7 = v91;
    if (v33)
    {
      break;
    }

LABEL_35:
    v34 = v92;
    *a7 = 0;
    v35 = *v34;
    if (*v34 == 0x155AA550055AA551 || v35 == 0x155AA551155AA551 || v35 == 0x155AA552255AA551)
    {
      v38 = 0;
      v91 = *v34;
      v92 = *(v34 + 1);
      v93 = *(v34 + 2);
      *&v94 = v34[6];
      v39 = v91 == 0x155AA552255AA551;
      v40 = (&v84 + v39);
      while (1)
      {
        v41 = &v91 + 24 * (v38 >> 1) + 8;
        v42 = *&v41[4 * (v38 & 1) + 16];
        v77 = *&v41[8 * (v38 & 1)];
        LOBYTE(v78) = 1;
        BYTE1(v78) = v32 & 1;
        BYTE2(v78) = v39;
        *(&v78 + 3) = v42 & 0xFF01;
        v43 = v42 >> 8;
        v44 = v42 >> 5;
        BYTE5(v78) = v42 >> 5;
        if ((((v42 & 0x1E) << 13) | (v42 >> 3) & 3) >= 4u)
        {
          v45 = (v42 >> 1) & 3;
          if (v45 > 1)
          {
            if (v45 != 3)
            {
              v45 = 2;
            }

LABEL_52:
            LODWORD(v80) = v45;
            WORD2(v80) = (v42 >> 3) & 3 | 0x100;
            goto LABEL_53;
          }

          if (v45)
          {
            goto LABEL_52;
          }

          v45 = 14;
        }

        else
        {
          v45 = dword_298D1B230[(((v42 & 0x1E) << 13) | (v42 >> 3) & 3)];
        }

        LODWORD(v80) = v45;
LABEL_53:
        v81 = &v77;
        v82 = 4;
        v83 = v30;
        v46 = *v40;
        v47 = *(v40 + 8);
        if (*(v40 | 8) == 1 && (v42 & 0xE0) == 0)
        {
          v48 = 1;
          goto LABEL_73;
        }

        if (*(v40 | 8))
        {
          v49 = 510 << v44;
        }

        else
        {
          v49 = 0;
        }

        result = (*(*a5 + 32))(&v98, a5, v73, *v40, v47, v30, v39, v49 & 0xFE);
        if (v99)
        {
          v50 = v98;
          v98 = 0;
          *a7 = v50;
          if (v50)
          {
            goto LABEL_126;
          }
        }

        else
        {
          *a7 = 0;
          v51 = v98;
          if (v98)
          {
            *v40 = v98;
            *(v40 + 8) = 1;
            v46 = v51;
          }
        }

        result = sub_298BECC60(v101, &__p, v72);
        if ((v104 & 1) != 0 && (v52 = *v101, *a7 = *v101, v52))
        {
          v53 = 0;
          if (v99)
          {
            goto LABEL_69;
          }
        }

        else
        {
          *a7 = 0;
          v53 = 1;
          if (v99)
          {
LABEL_69:
            result = v98;
            v98 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }
        }

        if (!v53)
        {
          goto LABEL_126;
        }

        v47 = *(v40 + 8);
        v44 = BYTE5(v78);
        v43 = BYTE4(v78);
        v45 = v80;
        v48 = v78;
LABEL_73:
        if (v47)
        {
          v54 = v46;
        }

        else
        {
          v54 = 0;
        }

        if (v44)
        {
          v55 = 1;
        }

        else
        {
          v55 = v54 == 0;
        }

        v56 = v54 & 0xFFFFFFFFFFFFFF00 | v43;
        if (v55)
        {
          v56 = v54;
        }

        if ((v48 & 1) != 0 && v45 == 7)
        {
          v102 = 0;
          v101[0] = v77 & 3;
          *&v101[1] = v77 >> 2;
          v56 = v77 >> 2;
        }

        if (v75)
        {
          v57 = v56 > v75;
        }

        else
        {
          v57 = 0;
        }

        v58 = !v57;
        if (v56 > v54 && (v48 & 1) != 0 && v58)
        {
          v79 = v56;
          v46 = v56;
LABEL_95:
          v59 = &v84 + BYTE2(v78);
          *v59 = v46;
          *(v59 + 8) = 1;
          goto LABEL_96;
        }

        v79 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

LABEL_96:
        if (v30 >= a2 && v30 < v74)
        {
          result = (*(*a4 + 16))(a4, &v78);
          if (*a7)
          {
            goto LABEL_126;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_125;
          }
        }

        v32 = 0;
        ++v30;
        if (++v38 == 4)
        {
          v60 = v70;
          v61 = v71;
          v62 = 56;
          if (v71 < 0x38)
          {
            v62 = v71;
          }

          v70 += v62;
          v71 -= v62;
          v89 = v60 + v62;
          v90 = v61 - v62;
          a6 = v72;
          v9 = v73;
          v8 = v74;
          v29 = v68;
          if (v61 - v62 <= 0x37)
          {
LABEL_125:
            *a7 = 0;
            goto LABEL_126;
          }

          goto LABEL_27;
        }
      }
    }

    LOBYTE(v78) = 0;
    BYTE1(v78) = v31;
    *(&v78 + 2) = 0;
    v63 = v84;
    if ((BYTE8(v84) & 1) == 0)
    {
      v63 = v69;
    }

    v79 = v63;
    LODWORD(v80) = 2;
    if (BYTE5(v80) == 1)
    {
      BYTE5(v80) = 0;
    }

    v81 = 0;
    v82 = 0;
    if (v30 >= a2 && v30 < v8)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_125;
      }

      v83 = v30;
      (*(*a4 + 24))(a4, v30);
      result = (*(*a4 + 16))(a4, &v78);
      if (*a7)
      {
        break;
      }
    }

    if (v30 + 1 >= a2 && v30 + 1 < v8)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_125;
      }

      v83 = v30 + 1;
      (*(*a4 + 24))(a4, v30 + 1);
      result = (*(*a4 + 16))(a4, &v78);
      if (*a7)
      {
        break;
      }
    }

    v64 = v71 - 28;
    v70 += 28;
    v89 = v70;
    v90 = v71 - 28;
    if (v30 == v67 && v64 >= 0x38)
    {
      result = (*(*a5 + 24))(&v91, a5, v9, v67 + 2);
      if (v95)
      {
        v65 = v91;
        *&v91 = 0;
        *a7 = v65;
        if (v65)
        {
          break;
        }
      }

      else
      {
        *a7 = 0;
      }

      v84 = v91;
      v85 = v92;
      v86 = v93;
      v87 = v94;
    }

    v30 += 2;
    v71 -= 28;
    v29 = v68;
    if (v64 <= 0x37)
    {
      goto LABEL_125;
    }
  }

LABEL_126:
  if (v97)
  {
    result = *&v96[0];
    *&v96[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_129:
  v66 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BECC60(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2[2] <= 0x37uLL)
  {
    std::generic_category();
    v14[0] = "StorageLayer.h";
    v14[2] = ":";
    v15 = 771;
    v13 = 3;
    LODWORD(__p) = 3160372;
    v16[0] = v14;
    v16[2] = &__p;
    v17 = 1026;
    v18[0] = v16;
    v18[2] = ": ";
    v19 = 770;
    v20[0] = v18;
    v20[2] = "not enough bytes";
    v21 = 770;
    sub_298B996A4(v20, &v22);
    operator new();
  }

  sub_298C38928(a2, 0, 0x38uLL, a3, &v23);
  v6 = v24;
  result = v23;
  if ((v24 & 1) != 0 && v23)
  {
    *(a1 + 24) |= 1u;
    *a1 = result;
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = a2[1];
    *(a1 + 24) &= ~1u;
    *a1 = a3;
    *(a1 + 8) = v9;
    *(a1 + 16) = result;
    if ((v6 & 1) != 0 && result)
    {
      result = (*(*result + 8))(result);
      v10 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v11 = *MEMORY[0x29EDCA608];
    }
  }

  return result;
}

unint64_t sub_298BECF54(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFFELL) - 1;
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    v2 = 0;
  }

  *(a1 + 24);
  return v2;
}

uint64_t sub_298BECF90(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v5 = (a2 & 0xFFFFFFFFFFFFFFFELL) - 1;
  }

  else
  {
    v5 = 0;
  }

  a3(a4, v5);

  return (a3)(a4, v5 + 1);
}

void *sub_298BECFF0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v109 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    std::generic_category();
    *v104 = "HWTrace.cpp";
    v106 = ":";
    v108 = 771;
    v103 = 3;
    LODWORD(v101) = 3617845;
    v82 = v104;
    v84 = &v101;
    LOWORD(v86) = 1026;
    *&v88 = &v82;
    *&v89 = ": ";
    LOWORD(v90) = 770;
    v12 = "Empty trace";
LABEL_5:
    *&v95 = &v88;
    *&v96 = v12;
    LOWORD(v97[0]) = 770;
    sub_298B996A4(&v95, &__p);
    operator new();
  }

  v8 = a3;
  v10 = *(a1 + 24);
  v11 = (v10 / 0x14) & 0xFFFFFFFFFFFFFFELL;
  if (v11 < a3)
  {
    std::generic_category();
    *v104 = "HWTrace.cpp";
    v106 = ":";
    v108 = 771;
    v103 = 3;
    LODWORD(v101) = 3748917;
    v82 = v104;
    v84 = &v101;
    LOWORD(v86) = 1026;
    *&v88 = &v82;
    *&v89 = ": ";
    LOWORD(v90) = 770;
    v12 = "Range is too big";
    goto LABEL_5;
  }

  *(a5 + 8) = *(a1 + 32);
  v15 = (a3 & 1) + a3;
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v16 = (a2 & 0xFFFFFFFFFFFFFFFELL) - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 - v16;
  v18 = v15 >= v11;
  v19 = 20 * v16;
  if (!v18)
  {
    ++v17;
  }

  v20 = 20 * v17;
  if (v10 < v19)
  {
    v19 = v10;
  }

  v21 = *(a1 + 16) + v19;
  v22 = v10 - v19;
  if (v22 >= v20)
  {
    v22 = v20;
  }

  __p = *(a1 + 8);
  v93 = v21;
  v23 = v22;
  v94 = v22;
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  v26 = &v25[v24];
  if (v24)
  {
    v27 = 8 * v24;
    while (v21 > *v25)
    {
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        v25 = v26;
        break;
      }
    }
  }

  (*(*a5 + 16))(a5);
  v71 = *(a5 + 16);
  v77 = *(a5 + 24);
  result = (*(*a5 + 24))(v99, a5, a1, v16);
  if (v100)
  {
    v29 = *&v99[0];
    *&v99[0] = 0;
    *a7 = v29;
    if (v29)
    {
      goto LABEL_123;
    }
  }

  else
  {
    *a7 = 0;
  }

  v72 = v16;
  v73 = v21;
  v74 = a1;
  v88 = v99[0];
  v89 = v99[1];
  v90 = v99[2];
  v91 = v99[3];
  WORD2(v84) = 0;
  v85 = 0;
  v86 = 0;
  if (v23 < 0x28)
  {
    goto LABEL_119;
  }

  v30 = v23;
  v31 = v26 - v25;
  v32 = v72;
  v76 = v8;
  while (1)
  {
LABEL_26:
    v70 = v30;
    if (v31 && *v25 == v73)
    {
      --v31;
      ++v25;
      v33 = 1;
      v34 = 1;
      result = sub_298BEDA34(&v95, &__p, a6);
      if ((BYTE8(v96) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v33 = 0;
      v34 = 0;
      result = sub_298BEDA34(&v95, &__p, a6);
      if ((BYTE8(v96) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v35 = v95;
    *a7 = v95;
    if (v35)
    {
      break;
    }

LABEL_32:
    v36 = v96;
    *a7 = 0;
    v37 = *v36;
    if (*v36 == 0x155AA550055AA551 || v37 == 0x155AA551155AA551 || v37 == 0x155AA552255AA551)
    {
      v69 = v31;
      v40 = 0;
      v95 = *v36;
      v96 = *(v36 + 1);
      *&v97[0] = v36[4];
      v41 = v95 == 0x155AA552255AA551;
      v42 = (&v88 + v41);
      v43 = 1;
      while (1)
      {
        v44 = v43;
        v45 = *(v97 + v40);
        v46 = *(&v96 + v40 + 2);
        v47 = v46 | (v45 << 32);
        v79 = *(&v95 + v40 + 1);
        v81 = v45;
        v80 = v46;
        LOBYTE(v82) = 1;
        BYTE1(v82) = v34 & 1;
        BYTE2(v82) = v41;
        BYTE3(v82) = BYTE2(v46) & 1;
        BYTE4(v82) = v47 >> 25;
        v48 = (v46 >> 22) & 7;
        BYTE5(v82) = (v46 >> 22) & 7;
        if ((((v47 >> 16) & 0x3E) << 21) & 0xFFFFFF | ((v47 >> 16) >> 3) & 7) < 6 && ((0x2Fu >> (((v47 >> 16) >> 3) & 7)))
        {
          v49 = dword_298D1B27C[(((v47 >> 16) & 0x3E) << 21) & 0xFFFFFF | ((v47 >> 16) >> 3) & 7];
        }

        else
        {
          v49 = (v46 >> 17) & 3;
          if (v49 - 1 < 3)
          {
            LODWORD(v84) = (v47 >> 17) & 3;
            WORD2(v84) = (v47 >> 19) & 7 | 0x100;
            goto LABEL_48;
          }

          v49 = 14;
        }

        LODWORD(v84) = v49;
LABEL_48:
        v85 = &v79;
        v86 = 5;
        v87 = v32;
        if (*(v42 | 8))
        {
          v50 = *v42;
          if ((v46 & 0x1C00000) == 0)
          {
            v54 = (v47 >> 25);
            v55 = 1;
            goto LABEL_69;
          }
        }

        else
        {
          v50 = *v42;
        }

        v51 = 510 << ((v47 >> 22) & 7);
        if (*(v42 | 8))
        {
          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        result = (*(*a5 + 32))(&v101, a5, v74, v50, *(v42 + 8), v32, v41, v52 & 0xFE);
        if (v102)
        {
          v53 = v101;
          v101 = 0;
          *a7 = v53;
          if (v53)
          {
            goto LABEL_120;
          }
        }

        else
        {
          *a7 = 0;
          v56 = v101;
          if (v101)
          {
            *v42 = v101;
            *(v42 + 8) = 1;
            v50 = v56;
          }
        }

        result = sub_298BEDA34(v104, &__p, a6);
        if ((v107 & 1) != 0 && (v57 = *v104, *a7 = *v104, v57))
        {
          v58 = 0;
          if (v102)
          {
            goto LABEL_65;
          }
        }

        else
        {
          *a7 = 0;
          v58 = 1;
          if (v102)
          {
LABEL_65:
            result = v101;
            v101 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }
        }

        if (!v58)
        {
          goto LABEL_120;
        }

        v48 = BYTE5(v82);
        v54 = BYTE4(v82);
        v49 = v84;
        v55 = v82;
LABEL_69:
        if (*(v42 + 8))
        {
          v59 = v50;
        }

        else
        {
          v59 = 0;
        }

        if (v48)
        {
          v60 = 1;
        }

        else
        {
          v60 = v59 == 0;
        }

        v61 = v59 & 0xFFFFFFFFFFFFFF00 | v54;
        if (v60)
        {
          v61 = v59;
        }

        if ((v55 & 1) != 0 && v49 == 7)
        {
          v105 = 0;
          v104[0] = v79 & 7;
          *&v104[1] = v79 >> 3;
          v61 = v79 >> 3;
        }

        if (v77)
        {
          v62 = v61 > v77;
        }

        else
        {
          v62 = 0;
        }

        v63 = !v62;
        if (v61 <= v59 || (v55 & 1) == 0 || !v63)
        {
          v83 = v59;
          if (!v59)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v83 = v61;
          v50 = v61;
        }

        v64 = &v88 + BYTE2(v82);
        *v64 = v50;
        *(v64 + 8) = 1;
LABEL_92:
        if (v32 >= a2 && v32 < v76)
        {
          if ((v55 & 1) == 0)
          {
            LODWORD(v84) = 0;
            v85 = 0;
            v86 = 0;
          }

          result = (*(*a4 + 16))(a4, &v82);
          if (*a7)
          {
            goto LABEL_120;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_119;
          }
        }

        v43 = 0;
        v34 = 0;
        ++v32;
        v40 = 1;
        if ((v44 & 1) == 0)
        {
          v31 = v69;
          v65 = 40;
          if (v70 < 0x28)
          {
            v65 = v70;
          }

          v30 = v70 - v65;
          v73 += v65;
          v93 = v73;
          v94 = v70 - v65;
          v8 = v76;
          if (v70 - v65 <= 0x27)
          {
LABEL_119:
            *a7 = 0;
            goto LABEL_120;
          }

          goto LABEL_26;
        }
      }
    }

    LOBYTE(v82) = 0;
    BYTE1(v82) = v33;
    *(&v82 + 2) = 0;
    v66 = v88;
    if ((BYTE8(v88) & 1) == 0)
    {
      v66 = v71;
    }

    v83 = v66;
    LODWORD(v84) = 2;
    if (BYTE5(v84) == 1)
    {
      BYTE5(v84) = 0;
    }

    v85 = 0;
    v86 = 0;
    if (v32 >= a2 && v32 < v8)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_119;
      }

      v87 = v32;
      (*(*a4 + 24))(a4, v32);
      result = (*(*a4 + 16))(a4, &v82);
      if (*a7)
      {
        break;
      }
    }

    v30 -= 20;
    v73 += 20;
    v93 = v73;
    v94 = v70 - 20;
    if (v32 == v72 && v30 >= 0x28)
    {
      result = (*(*a5 + 24))(&v95, a5, v74, v72 + 1);
      if (v98)
      {
        v67 = v95;
        *&v95 = 0;
        *a7 = v67;
        if (v67)
        {
          break;
        }
      }

      else
      {
        *a7 = 0;
      }

      v88 = v95;
      v89 = v96;
      v90 = v97[0];
      v91 = v97[1];
    }

    ++v32;
    if (v30 <= 0x27)
    {
      goto LABEL_119;
    }
  }

LABEL_120:
  if (v100)
  {
    result = *&v99[0];
    *&v99[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_123:
  v68 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BEDA34(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2[2] <= 0x27uLL)
  {
    std::generic_category();
    v14[0] = "StorageLayer.h";
    v14[2] = ":";
    v15 = 771;
    v13 = 3;
    LODWORD(__p) = 3160372;
    v16[0] = v14;
    v16[2] = &__p;
    v17 = 1026;
    v18[0] = v16;
    v18[2] = ": ";
    v19 = 770;
    v20[0] = v18;
    v20[2] = "not enough bytes";
    v21 = 770;
    sub_298B996A4(v20, &v22);
    operator new();
  }

  sub_298C38928(a2, 0, 0x28uLL, a3, &v23);
  v6 = v24;
  result = v23;
  if ((v24 & 1) != 0 && v23)
  {
    *(a1 + 24) |= 1u;
    *a1 = result;
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = a2[1];
    *(a1 + 24) &= ~1u;
    *a1 = a3;
    *(a1 + 8) = v9;
    *(a1 + 16) = result;
    if ((v6 & 1) != 0 && result)
    {
      result = (*(*result + 8))(result);
      v10 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v11 = *MEMORY[0x29EDCA608];
    }
  }

  return result;
}

unint64_t sub_298BEDD14(uint64_t a1, unint64_t a2)
{
  v2 = 10 * (a2 / 0xA);
  v3 = v2 - 5;
  if (!v2)
  {
    v3 = 0;
  }

  *(a1 + 24);
  return v3;
}

uint64_t sub_298BEDD74(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  v5 = 10 * (a2 / 0xA);
  if (v5)
  {
    v6 = v5 - 5;
  }

  else
  {
    v6 = 0;
  }

  a3(a4, v6);

  return (a3)(a4, v6 + 5);
}

uint64_t sub_298BEDDEC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v100 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    std::generic_category();
    v85 = "HWTrace.cpp";
    v87 = ":";
    v88 = 771;
    v97 = 3;
    strcpy(v96, "547");
    v75 = &v85;
    v77 = v96;
    LOWORD(v79) = 1026;
    *&v81 = &v75;
    *&v82 = ": ";
    LOWORD(v83) = 770;
    v11 = "Empty trace";
LABEL_5:
    *&v89 = &v81;
    *&v90 = v11;
    LOWORD(v91) = 770;
    sub_298B996A4(&v89, &v98);
    operator new();
  }

  v9 = *(a1 + 24);
  v10 = 10 * (v9 >> 7);
  if (v10 < a3)
  {
    std::generic_category();
    v85 = "HWTrace.cpp";
    v87 = ":";
    v88 = 771;
    v97 = 3;
    strcpy(v96, "549");
    v75 = &v85;
    v77 = v96;
    LOWORD(v79) = 1026;
    *&v81 = &v75;
    *&v82 = ": ";
    LOWORD(v83) = 770;
    v11 = "Range is too big";
    goto LABEL_5;
  }

  *(a5 + 8) = *(a1 + 32);
  v15 = 10 * (a2 / 0xA);
  v16 = 10 * (a3 / 0xA);
  v52 = a3 == v16;
  v17 = v16 + 10;
  if (v52)
  {
    v17 = a3;
  }

  v18 = v15 - 5;
  if (!v15)
  {
    v18 = 0;
  }

  if (v17 + 5 <= v10)
  {
    v19 = v17 + 5;
  }

  else
  {
    v19 = v17;
  }

  v20 = (v19 / 5 - v18 / 5) << 6;
  if (v9 >= (v18 / 5) << 6)
  {
    v21 = (v18 / 5) << 6;
  }

  else
  {
    v21 = v9;
  }

  v22 = *(a1 + 16) + v21;
  v23 = (v9 - v21);
  if (v23 >= v20)
  {
    v23 = v20;
  }

  v85 = *(a1 + 8);
  v86 = v22;
  v69 = v18;
  v70 = v23;
  v87 = v23;
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  v26 = &v25[v24];
  if (v24)
  {
    v27 = 8 * v24;
    while (v22 > *v25)
    {
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        v25 = v26;
        break;
      }
    }
  }

  (*(*a5 + 16))(a5);
  v66 = *(a5 + 16);
  v71 = *(a5 + 24);
  result = (*(*a5 + 24))(v94, a5, a1, v69);
  if (v95)
  {
    v30 = *&v94[0];
    *&v94[0] = 0;
    *a7 = v30;
    if (v30)
    {
      goto LABEL_139;
    }
  }

  else
  {
    *a7 = 0;
  }

  v64 = a5;
  v81 = v94[0];
  v82 = v94[1];
  v83 = v94[2];
  v84 = v94[3];
  WORD2(v77) = 0;
  v78 = 0;
  v79 = 0;
  if (v70 < 0x80)
  {
    goto LABEL_135;
  }

  v31 = v26 - v25;
  v32 = v69;
  v65 = a6;
  while (1)
  {
LABEL_32:
    if (v31)
    {
      if (*v25 == v22)
      {
        v67 = v31 - 1;
        ++v25;
        v33 = 1;
        v34 = 1;
        result = sub_298BE8D68(&v89, &v85, a6);
        if ((BYTE8(v90) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v67 = v31;
        v33 = 0;
        v34 = 0;
        result = sub_298BE8D68(&v89, &v85, a6);
        if ((BYTE8(v90) & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v67 = 0;
      result = sub_298BE8D68(&v89, &v85, a6);
      if ((BYTE8(v90) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v35 = v89;
    *a7 = v89;
    if (v35)
    {
      break;
    }

LABEL_40:
    v36 = v90;
    *a7 = 0;
    if (((*(v36 + 59) | (*(v36 + 63) << 32)) & 0x8000000000000000) == 0 && ((*(v36 + 123) | (*(v36 + 127) << 32)) & 0x8000000000000000) != 0)
    {
      v40 = 0;
      while (1)
      {
        memset(v96, 0, 14);
        if (v40 > 4)
        {
          v42 = v40 - 5;
          v41 = (v36 + 64);
        }

        else
        {
          v41 = v36;
          v42 = v40;
        }

        result = sub_298BEEAF8(v41, v42);
        v96[0] = result;
        WORD2(v96[1]) = WORD2(v43);
        LODWORD(v96[1]) = v43;
        v44 = v43 | (BYTE4(v43) << 32);
        *(&v45 + 1) = v43;
        *&v45 = result;
        v46 = (v43 >> 23) & 7;
        v72 = v45 >> 1;
        v73 = v44 >> 1;
        v74 = (BYTE4(v43) >> 1) & 7;
        LOBYTE(v75) = result & 1;
        *(&v75 + 1) = v34 & 1 | ((v43 & 0xFF0000000000) != 0);
        BYTE3(v75) = (v43 & 0x20000) != 0;
        BYTE4(v75) = v44 >> 26;
        BYTE5(v75) = (v43 >> 23) & 7;
        if ((((v44 >> 17) & 0x3E) << 21) & 0xFFFFFF | ((v44 >> 17) >> 3) & 7) < 6 && ((0x2Fu >> (((v44 >> 17) >> 3) & 7)))
        {
          break;
        }

        v47 = (v43 >> 18) & 3;
        if (v47 - 1 >= 3)
        {
          v47 = 14;
          goto LABEL_81;
        }

        LODWORD(v77) = (v43 >> 18) & 3;
        WORD2(v77) = ((v44 >> 17) >> 3) & 7 | 0x100;
LABEL_82:
        v48 = v32 + v40;
        v49 = (v44 >> 26);
        v78 = &v72;
        v79 = 5;
        v80 = v32 + v40;
        if (BYTE8(v81) == 1 && (result & 1) != 0)
        {
          if ((v43 & 0x3800000) == 0)
          {
            result = 1;
            goto LABEL_87;
          }
        }

        else if (BYTE8(v81))
        {
          goto LABEL_87;
        }

        result = (*(*v64 + 32))(&v98);
        if (v99)
        {
          v57 = v98;
          v98 = 0;
          *a7 = v57;
          if (v57)
          {
            goto LABEL_136;
          }
        }

        else
        {
          *a7 = 0;
          if (v98)
          {
            *&v81 = v98;
            BYTE8(v81) = 1;
          }
        }

        result = sub_298BE8D68(&v89, &v85, v65);
        if ((BYTE8(v90) & 1) != 0 && (v58 = v89, *a7 = v89, v58))
        {
          v59 = 0;
        }

        else
        {
          v36 = v90;
          *a7 = 0;
          v59 = 1;
        }

        if (v99)
        {
          result = v98;
          v98 = 0;
          if (result)
          {
            v63 = v59;
            result = (*(*result + 8))(result);
            v59 = v63;
          }
        }

        if (!v59)
        {
          goto LABEL_136;
        }

        v46 = BYTE5(v75);
        v49 = BYTE4(v75);
        v47 = v77;
        result = v75;
LABEL_87:
        v50 = v81;
        if (BYTE8(v81))
        {
          v51 = v81;
        }

        else
        {
          v51 = 0;
        }

        if (v46)
        {
          v52 = 1;
        }

        else
        {
          v52 = v51 == 0;
        }

        v53 = v51 & 0xFFFFFFFFFFFFFF00 | v49;
        if (v52)
        {
          v53 = v51;
        }

        if ((result & 1) != 0 && v47 == 7)
        {
          *(&v89 + 9) = 0;
          LOBYTE(v89) = v72 & 7;
          *(&v89 + 1) = v72 >> 3;
          v53 = v72 >> 3;
        }

        if (v71)
        {
          v54 = v53 > v71;
        }

        else
        {
          v54 = 0;
        }

        v55 = !v54;
        if (v53 <= v51 || (result & 1) == 0 || !v55)
        {
          v76 = v51;
          if (!v51)
          {
            goto LABEL_110;
          }
        }

        else
        {
          v76 = v53;
          v50 = v53;
        }

        v56 = &v81 + BYTE2(v75);
        *v56 = v50;
        *(v56 + 8) = 1;
LABEL_110:
        if (v48 >= a2 && v48 < a3)
        {
          if ((result & 1) == 0)
          {
            LODWORD(v77) = 0;
            v78 = 0;
            v79 = 0;
          }

          result = (*(*a4 + 16))(a4, &v75);
          if (*a7)
          {
            goto LABEL_136;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_135;
          }
        }

        v34 = 0;
        if (++v40 == 10)
        {
          v60 = v70;
          v61 = 128;
          if (v70 < 0x80)
          {
            v61 = v70;
          }

          v22 += v61;
          v86 = v22;
          v87 = (v70 - v61);
          v32 += 10;
          a6 = v65;
          v70 -= v61;
          v31 = v67;
          if (v60 - v61 <= 0x7F)
          {
LABEL_135:
            *a7 = 0;
            goto LABEL_136;
          }

          goto LABEL_32;
        }
      }

      v47 = dword_298D1B27C[(((v44 >> 17) & 0x3E) << 21) & 0xFFFFFF | ((v44 >> 17) >> 3) & 7];
LABEL_81:
      LODWORD(v77) = v47;
      goto LABEL_82;
    }

    LOBYTE(v75) = 0;
    BYTE1(v75) = v33;
    *(&v75 + 2) = 0;
    v37 = v81;
    if ((BYTE8(v81) & 1) == 0)
    {
      v37 = v66;
    }

    v76 = v37;
    LODWORD(v77) = 2;
    if (BYTE5(v77) == 1)
    {
      BYTE5(v77) = 0;
    }

    v78 = 0;
    v79 = 0;
    a6 = v65;
    if (v32 >= a2 && v32 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32;
      (*(*a4 + 24))(a4, v32);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 1 >= a2 && v32 + 1 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 1;
      (*(*a4 + 24))(a4, v32 + 1);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 2 >= a2 && v32 + 2 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 2;
      (*(*a4 + 24))(a4, v32 + 2);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 3 >= a2 && v32 + 3 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 3;
      (*(*a4 + 24))(a4, v32 + 3);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 4 >= a2 && v32 + 4 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 4;
      (*(*a4 + 24))(a4, v32 + 4);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    v22 += 64;
    v38 = v70 - 64;
    v86 = v22;
    v87 = (v70 - 64);
    if (v32 == v69 && v38 >= 0x80)
    {
      result = (*(*v64 + 24))(&v89);
      if (v93)
      {
        v39 = v89;
        *&v89 = 0;
        *a7 = v39;
        if (v39)
        {
          break;
        }
      }

      else
      {
        *a7 = 0;
      }

      v81 = v89;
      v82 = v90;
      v83 = v91;
      v84 = v92;
    }

    v32 += 5;
    v70 -= 64;
    v31 = v67;
    if (v38 <= 0x7F)
    {
      goto LABEL_135;
    }
  }

LABEL_136:
  if (v95)
  {
    result = *&v94[0];
    *&v94[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_139:
  v62 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BEEAF8(uint64_t *a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 59) | (*(a1 + 63) << 32);
  result = *(a1 + 51);
  if ((v3 & 0x8000000000000000) != 0)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v14 = *(a1 + 18);
        *(&v15 + 1) = *(a1 + 8);
        *&v15 = a1[3];
        result = v15 >> 12;
      }

      else if (a2 == 3)
      {
        *(&v9 + 1) = *(a1 + 46);
        *&v9 = *(a1 + 38);
        result = (v9 >> 2) & 0xFFFFFFFFFFFFFFFELL | (v9 >> 2) & 1;
        v16 = (*(&v9 + 1) | (*(a1 + 50) << 32)) >> 2;
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {
        v6 = *(a1 + 1);
        result = (v6 >> 38) & 0xFFFFFFFFFFFFFFFELL | (v6 >> 38) & 1;
      }
    }

    else
    {
      result = *a1;
      v12 = HIDWORD(a1[1]) & 0xF;
    }
  }

  else if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = *(a1 + 18);
        *(&v8 + 1) = *(a1 + 8);
        *&v8 = a1[3];
        result = v8 >> 12;
      }
    }

    else
    {
      v11 = *(a1 + 1);
      result = (v11 >> 38) & 0xFFFFFFFFFFFFFFFELL | (v11 >> 38) & 1;
    }
  }

  else if (a2 == 2)
  {
    *(&v10 + 1) = *(a1 + 46);
    *&v10 = *(a1 + 38);
    result = (v10 >> 2) & 0xFFFFFFFFFFFFFFFELL | (v10 >> 2) & 1;
    v17 = (*(&v10 + 1) | (*(a1 + 50) << 32)) >> 2;
  }

  else if (a2 == 4)
  {
    result = *a1;
    v5 = HIDWORD(a1[1]) & 0xF;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_298BEED7C(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    v2 = 0;
  }

  *(a1 + 24);
  return v2;
}

uint64_t sub_298BEEDC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v5 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  }

  else
  {
    v5 = 0;
  }

  a3(a4, v5);

  return (a3)(a4, v5 + 2);
}

uint64_t sub_298BEEE28@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v108 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    std::generic_category();
    *v103 = "HWTrace.cpp";
    v105 = ":";
    v107 = 771;
    v102 = 3;
    LODWORD(v100) = 3617845;
    v80 = v103;
    v82 = &v100;
    LOWORD(v84) = 1026;
    *&v86 = &v80;
    *&v87 = ": ";
    LOWORD(v88) = 770;
    v12 = "Empty trace";
LABEL_5:
    *&v93 = &v86;
    *&v94 = v12;
    LOWORD(v95) = 770;
    sub_298B996A4(&v93, &__p);
    operator new();
  }

  v8 = a3;
  v10 = *(a1 + 24);
  v11 = (v10 / 0x12) & 0xFFFFFFFFFFFFFFCLL;
  if (v11 < a3)
  {
    std::generic_category();
    *v103 = "HWTrace.cpp";
    v105 = ":";
    v107 = 771;
    v102 = 3;
    LODWORD(v100) = 3748917;
    v80 = v103;
    v82 = &v100;
    LOWORD(v84) = 1026;
    *&v86 = &v80;
    *&v87 = ": ";
    LOWORD(v88) = 770;
    v12 = "Range is too big";
    goto LABEL_5;
  }

  *(a5 + 8) = *(a1 + 32);
  v15 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v16 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  }

  else
  {
    v16 = 0;
  }

  if ((v15 | 2) <= v11)
  {
    v17 = v15 | 2;
  }

  else
  {
    v17 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  v18 = 36 * ((v17 >> 1) - (v16 >> 1));
  if (v10 >= 4 * ((v16 >> 1) + 4 * v16))
  {
    v19 = 4 * ((v16 >> 1) + 4 * v16);
  }

  else
  {
    v19 = v10;
  }

  v20 = *(a1 + 16) + v19;
  v21 = v10 - v19;
  if (v21 >= v18)
  {
    v21 = v18;
  }

  __p = *(a1 + 8);
  v91 = v20;
  v22 = v21;
  v92 = v21;
  v24 = *(a1 + 40);
  v23 = *(a1 + 48);
  v25 = &v24[v23];
  if (v23)
  {
    v26 = 8 * v23;
    while (v20 > *v24)
    {
      ++v24;
      v26 -= 8;
      if (!v26)
      {
        v24 = v25;
        break;
      }
    }
  }

  (*(*a5 + 16))(a5);
  v69 = *(a5 + 16);
  v75 = *(a5 + 24);
  result = (*(*a5 + 24))(v98, a5, a1, v16);
  if (v99)
  {
    v28 = *&v98[0];
    *&v98[0] = 0;
    *a7 = v28;
    if (v28)
    {
      goto LABEL_131;
    }
  }

  else
  {
    *a7 = 0;
  }

  v70 = v16;
  v71 = v20;
  v72 = a1;
  v86 = v98[0];
  v87 = v98[1];
  v88 = v98[2];
  v89 = v98[3];
  WORD2(v82) = 0;
  v83 = 0;
  v84 = 0;
  if (v22 < 0x48)
  {
    goto LABEL_127;
  }

  v29 = v22;
  v30 = v25 - v24;
  v74 = v8;
  v31 = v70;
  while (1)
  {
LABEL_28:
    v68 = v29;
    if (v30)
    {
      if (*v24 == v71)
      {
        v67 = v30 - 1;
        ++v24;
        v32 = 1;
        v33 = 1;
        result = sub_298BEF978(&v93, &__p, a6);
        if ((BYTE8(v94) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v67 = v30;
        v32 = 0;
        v33 = 0;
        result = sub_298BEF978(&v93, &__p, a6);
        if ((BYTE8(v94) & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v67 = 0;
      result = sub_298BEF978(&v93, &__p, a6);
      if ((BYTE8(v94) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v34 = v93;
    *a7 = v93;
    if (v34)
    {
      break;
    }

LABEL_36:
    v35 = v94;
    *a7 = 0;
    v36 = *v35;
    if (*v35 == 0x155AA550055AA551 || v36 == 0x155AA551155AA551 || v36 == 0x155AA552255AA551)
    {
      v39 = 0;
      v93 = *v35;
      v94 = *(v35 + 1);
      v95 = *(v35 + 2);
      v96 = *(v35 + 3);
      v97 = v35[8];
      v40 = v93 == 0x155AA552255AA551;
      v41 = (&v86 + v40);
      while (1)
      {
        v42 = &v93 + 32 * (v39 >> 1) + 8;
        v43 = &v42[4 * (v39 & 1)];
        v44 = *(v43 + 6);
        v45 = *(v43 + 4);
        v46 = v45 | (v44 << 32);
        v77 = *&v42[8 * (v39 & 1)];
        v79 = v44;
        v78 = v45;
        LOBYTE(v80) = 1;
        BYTE1(v80) = v33 & 1;
        BYTE2(v80) = v40;
        BYTE3(v80) = BYTE2(v45) & 1;
        BYTE4(v80) = v46 >> 25;
        v47 = (v45 >> 22) & 7;
        BYTE5(v80) = (v45 >> 22) & 7;
        if ((((v46 >> 16) & 0x3E) << 21) & 0xFFFFFF | ((v46 >> 16) >> 3) & 7) < 6 && ((0x2Fu >> (((v46 >> 16) >> 3) & 7)))
        {
          v48 = dword_298D1B27C[(((v46 >> 16) & 0x3E) << 21) & 0xFFFFFF | ((v46 >> 16) >> 3) & 7];
        }

        else
        {
          v48 = (v45 >> 17) & 3;
          if (v48 - 1 < 3)
          {
            LODWORD(v82) = (v45 >> 17) & 3;
            WORD2(v82) = (v45 >> 19) & 7 | 0x100;
            goto LABEL_52;
          }

          v48 = 14;
        }

        LODWORD(v82) = v48;
LABEL_52:
        v83 = &v77;
        v84 = 5;
        v85 = v31;
        if (*(v41 | 8))
        {
          v49 = *v41;
          if ((v45 & 0x1C00000) == 0)
          {
            v52 = (v46 >> 25);
            v53 = 1;
            goto LABEL_73;
          }
        }

        else
        {
          v49 = *v41;
        }

        if (*(v41 | 8))
        {
          v50 = 510 << ((v45 >> 22) & 7);
        }

        else
        {
          v50 = 0;
        }

        result = (*(*a5 + 32))(&v100, a5, v72, v49, *(v41 + 8), v31, v40, v50 & 0xFE);
        if (v101)
        {
          v51 = v100;
          v100 = 0;
          *a7 = v51;
          if (v51)
          {
            goto LABEL_128;
          }
        }

        else
        {
          *a7 = 0;
          v54 = v100;
          if (v100)
          {
            *v41 = v100;
            *(v41 + 8) = 1;
            v49 = v54;
          }
        }

        result = sub_298BEF978(v103, &__p, a6);
        if ((v106 & 1) != 0 && (v55 = *v103, *a7 = *v103, v55))
        {
          v56 = 0;
          if (v101)
          {
            goto LABEL_69;
          }
        }

        else
        {
          *a7 = 0;
          v56 = 1;
          if (v101)
          {
LABEL_69:
            result = v100;
            v100 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }
        }

        if (!v56)
        {
          goto LABEL_128;
        }

        v47 = BYTE5(v80);
        v52 = BYTE4(v80);
        v48 = v82;
        v53 = v80;
LABEL_73:
        if (*(v41 + 8))
        {
          v57 = v49;
        }

        else
        {
          v57 = 0;
        }

        if (v47)
        {
          v58 = 1;
        }

        else
        {
          v58 = v57 == 0;
        }

        v59 = v57 & 0xFFFFFFFFFFFFFF00 | v52;
        if (v58)
        {
          v59 = v57;
        }

        if ((v53 & 1) != 0 && v48 == 7)
        {
          v104 = 0;
          v103[0] = v77 & 3;
          *&v103[1] = v77 >> 2;
          v59 = v77 >> 2;
        }

        if (v75)
        {
          v60 = v59 > v75;
        }

        else
        {
          v60 = 0;
        }

        v61 = !v60;
        if (v59 <= v57 || (v53 & 1) == 0 || !v61)
        {
          v81 = v57;
          if (!v57)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v81 = v59;
          v49 = v59;
        }

        v62 = &v86 + BYTE2(v80);
        *v62 = v49;
        *(v62 + 8) = 1;
LABEL_96:
        if (v31 >= a2 && v31 < v74)
        {
          if ((v53 & 1) == 0)
          {
            LODWORD(v82) = 0;
            v83 = 0;
            v84 = 0;
          }

          result = (*(*a4 + 16))(a4, &v80);
          if (*a7)
          {
            goto LABEL_128;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_127;
          }
        }

        v33 = 0;
        ++v31;
        if (++v39 == 4)
        {
          v30 = v67;
          v63 = 72;
          if (v68 < 0x48)
          {
            v63 = v68;
          }

          v29 = v68 - v63;
          v71 += v63;
          v91 = v71;
          v92 = v68 - v63;
          v8 = v74;
          if (v68 - v63 <= 0x47)
          {
LABEL_127:
            *a7 = 0;
            goto LABEL_128;
          }

          goto LABEL_28;
        }
      }
    }

    LOBYTE(v80) = 0;
    BYTE1(v80) = v32;
    *(&v80 + 2) = 0;
    v64 = v86;
    if ((BYTE8(v86) & 1) == 0)
    {
      v64 = v69;
    }

    v81 = v64;
    LODWORD(v82) = 2;
    if (BYTE5(v82) == 1)
    {
      BYTE5(v82) = 0;
    }

    v83 = 0;
    v84 = 0;
    if (v31 >= a2 && v31 < v8)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_127;
      }

      v85 = v31;
      (*(*a4 + 24))(a4, v31);
      result = (*(*a4 + 16))(a4, &v80);
      if (*a7)
      {
        break;
      }
    }

    if (v31 + 1 >= a2 && v31 + 1 < v8)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_127;
      }

      v85 = v31 + 1;
      (*(*a4 + 24))(a4, v31 + 1);
      result = (*(*a4 + 16))(a4, &v80);
      if (*a7)
      {
        break;
      }
    }

    v29 -= 36;
    v71 += 36;
    v91 = v71;
    v92 = v68 - 36;
    if (v31 == v70 && v29 >= 0x48)
    {
      result = (*(*a5 + 24))(&v93, a5, v72, v70 + 2);
      if (v97)
      {
        v65 = v93;
        *&v93 = 0;
        *a7 = v65;
        if (v65)
        {
          break;
        }
      }

      else
      {
        *a7 = 0;
      }

      v86 = v93;
      v87 = v94;
      v88 = v95;
      v89 = v96;
    }

    v31 += 2;
    v30 = v67;
    if (v29 <= 0x47)
    {
      goto LABEL_127;
    }
  }

LABEL_128:
  if (v99)
  {
    result = *&v98[0];
    *&v98[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_131:
  v66 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BEF978(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2[2] <= 0x47uLL)
  {
    std::generic_category();
    v14[0] = "StorageLayer.h";
    v14[2] = ":";
    v15 = 771;
    v13 = 3;
    LODWORD(__p) = 3160372;
    v16[0] = v14;
    v16[2] = &__p;
    v17 = 1026;
    v18[0] = v16;
    v18[2] = ": ";
    v19 = 770;
    v20[0] = v18;
    v20[2] = "not enough bytes";
    v21 = 770;
    sub_298B996A4(v20, &v22);
    operator new();
  }

  sub_298C38928(a2, 0, 0x48uLL, a3, &v23);
  v6 = v24;
  result = v23;
  if ((v24 & 1) != 0 && v23)
  {
    *(a1 + 24) |= 1u;
    *a1 = result;
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = a2[1];
    *(a1 + 24) &= ~1u;
    *a1 = a3;
    *(a1 + 8) = v9;
    *(a1 + 16) = result;
    if ((v6 & 1) != 0 && result)
    {
      result = (*(*result + 8))(result);
      v10 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v11 = *MEMORY[0x29EDCA608];
    }
  }

  return result;
}

unint64_t sub_298BEFC58(uint64_t a1, unint64_t a2)
{
  v2 = 10 * (a2 / 0xA);
  v3 = v2 - 5;
  if (!v2)
  {
    v3 = 0;
  }

  *(a1 + 24);
  return v3;
}

uint64_t sub_298BEFCB8(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  v5 = 10 * (a2 / 0xA);
  if (v5)
  {
    v6 = v5 - 5;
  }

  else
  {
    v6 = 0;
  }

  a3(a4, v6);

  return (a3)(a4, v6 + 5);
}

uint64_t sub_298BEFD30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v100 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    std::generic_category();
    v85 = "HWTrace.cpp";
    v87 = ":";
    v88 = 771;
    v97 = 3;
    strcpy(v96, "547");
    v75 = &v85;
    v77 = v96;
    LOWORD(v79) = 1026;
    *&v81 = &v75;
    *&v82 = ": ";
    LOWORD(v83) = 770;
    v11 = "Empty trace";
LABEL_5:
    *&v89 = &v81;
    *&v90 = v11;
    LOWORD(v91) = 770;
    sub_298B996A4(&v89, &v98);
    operator new();
  }

  v9 = *(a1 + 24);
  v10 = 10 * (v9 >> 7);
  if (v10 < a3)
  {
    std::generic_category();
    v85 = "HWTrace.cpp";
    v87 = ":";
    v88 = 771;
    v97 = 3;
    strcpy(v96, "549");
    v75 = &v85;
    v77 = v96;
    LOWORD(v79) = 1026;
    *&v81 = &v75;
    *&v82 = ": ";
    LOWORD(v83) = 770;
    v11 = "Range is too big";
    goto LABEL_5;
  }

  *(a5 + 8) = *(a1 + 32);
  v15 = 10 * (a2 / 0xA);
  v16 = 10 * (a3 / 0xA);
  v52 = a3 == v16;
  v17 = v16 + 10;
  if (v52)
  {
    v17 = a3;
  }

  v18 = v15 - 5;
  if (!v15)
  {
    v18 = 0;
  }

  if (v17 + 5 <= v10)
  {
    v19 = v17 + 5;
  }

  else
  {
    v19 = v17;
  }

  v20 = (v19 / 5 - v18 / 5) << 6;
  if (v9 >= (v18 / 5) << 6)
  {
    v21 = (v18 / 5) << 6;
  }

  else
  {
    v21 = v9;
  }

  v22 = *(a1 + 16) + v21;
  v23 = (v9 - v21);
  if (v23 >= v20)
  {
    v23 = v20;
  }

  v85 = *(a1 + 8);
  v86 = v22;
  v69 = v18;
  v70 = v23;
  v87 = v23;
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  v26 = &v25[v24];
  if (v24)
  {
    v27 = 8 * v24;
    while (v22 > *v25)
    {
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        v25 = v26;
        break;
      }
    }
  }

  (*(*a5 + 16))(a5);
  v66 = *(a5 + 16);
  v71 = *(a5 + 24);
  result = (*(*a5 + 24))(v94, a5, a1, v69);
  if (v95)
  {
    v30 = *&v94[0];
    *&v94[0] = 0;
    *a7 = v30;
    if (v30)
    {
      goto LABEL_139;
    }
  }

  else
  {
    *a7 = 0;
  }

  v64 = a5;
  v81 = v94[0];
  v82 = v94[1];
  v83 = v94[2];
  v84 = v94[3];
  WORD2(v77) = 0;
  v78 = 0;
  v79 = 0;
  if (v70 < 0x80)
  {
    goto LABEL_135;
  }

  v31 = v26 - v25;
  v32 = v69;
  v65 = a6;
  while (1)
  {
LABEL_32:
    if (v31)
    {
      if (*v25 == v22)
      {
        v67 = v31 - 1;
        ++v25;
        v33 = 1;
        v34 = 1;
        result = sub_298BE8D68(&v89, &v85, a6);
        if ((BYTE8(v90) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v67 = v31;
        v33 = 0;
        v34 = 0;
        result = sub_298BE8D68(&v89, &v85, a6);
        if ((BYTE8(v90) & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v67 = 0;
      result = sub_298BE8D68(&v89, &v85, a6);
      if ((BYTE8(v90) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v35 = v89;
    *a7 = v89;
    if (v35)
    {
      break;
    }

LABEL_40:
    v36 = v90;
    *a7 = 0;
    if (((*(v36 + 59) | (*(v36 + 63) << 32)) & 0x8000000000000000) == 0 && ((*(v36 + 123) | (*(v36 + 127) << 32)) & 0x8000000000000000) != 0)
    {
      v40 = 0;
      while (1)
      {
        memset(v96, 0, 14);
        if (v40 > 4)
        {
          v42 = v40 - 5;
          v41 = (v36 + 64);
        }

        else
        {
          v41 = v36;
          v42 = v40;
        }

        result = sub_298BEEAF8(v41, v42);
        v96[0] = result;
        WORD2(v96[1]) = WORD2(v43);
        LODWORD(v96[1]) = v43;
        v44 = v43 | (BYTE4(v43) << 32);
        *(&v45 + 1) = v43;
        *&v45 = result;
        v46 = (v43 >> 23) & 7;
        v72 = v45 >> 1;
        v73 = v44 >> 1;
        v74 = (BYTE4(v43) >> 1) & 7;
        LOBYTE(v75) = result & 1;
        *(&v75 + 1) = v34 & 1 | ((v43 & 0xFF0000000000) != 0);
        BYTE3(v75) = (v43 & 0x20000) != 0;
        BYTE4(v75) = v44 >> 26;
        BYTE5(v75) = (v43 >> 23) & 7;
        if ((((v44 >> 17) & 0x3E) << 21) & 0xFFFFFF | ((v44 >> 17) >> 3) & 7) < 6 && ((0x2Fu >> (((v44 >> 17) >> 3) & 7)))
        {
          break;
        }

        v47 = (v43 >> 18) & 3;
        if (v47 - 1 >= 3)
        {
          v47 = 14;
          goto LABEL_81;
        }

        LODWORD(v77) = (v43 >> 18) & 3;
        WORD2(v77) = ((v44 >> 17) >> 3) & 7 | 0x100;
LABEL_82:
        v48 = v32 + v40;
        v49 = (v44 >> 26);
        v78 = &v72;
        v79 = 5;
        v80 = v32 + v40;
        if (BYTE8(v81) == 1 && (result & 1) != 0)
        {
          if ((v43 & 0x3800000) == 0)
          {
            result = 1;
            goto LABEL_87;
          }
        }

        else if (BYTE8(v81))
        {
          goto LABEL_87;
        }

        result = (*(*v64 + 32))(&v98);
        if (v99)
        {
          v57 = v98;
          v98 = 0;
          *a7 = v57;
          if (v57)
          {
            goto LABEL_136;
          }
        }

        else
        {
          *a7 = 0;
          if (v98)
          {
            *&v81 = v98;
            BYTE8(v81) = 1;
          }
        }

        result = sub_298BE8D68(&v89, &v85, v65);
        if ((BYTE8(v90) & 1) != 0 && (v58 = v89, *a7 = v89, v58))
        {
          v59 = 0;
        }

        else
        {
          v36 = v90;
          *a7 = 0;
          v59 = 1;
        }

        if (v99)
        {
          result = v98;
          v98 = 0;
          if (result)
          {
            v63 = v59;
            result = (*(*result + 8))(result);
            v59 = v63;
          }
        }

        if (!v59)
        {
          goto LABEL_136;
        }

        v46 = BYTE5(v75);
        v49 = BYTE4(v75);
        v47 = v77;
        result = v75;
LABEL_87:
        v50 = v81;
        if (BYTE8(v81))
        {
          v51 = v81;
        }

        else
        {
          v51 = 0;
        }

        if (v46)
        {
          v52 = 1;
        }

        else
        {
          v52 = v51 == 0;
        }

        v53 = v51 & 0xFFFFFFFFFFFFFF00 | v49;
        if (v52)
        {
          v53 = v51;
        }

        if ((result & 1) != 0 && v47 == 7)
        {
          *(&v89 + 9) = 0;
          LOBYTE(v89) = v72 & 3;
          *(&v89 + 1) = v72 >> 2;
          v53 = v72 >> 2;
        }

        if (v71)
        {
          v54 = v53 > v71;
        }

        else
        {
          v54 = 0;
        }

        v55 = !v54;
        if (v53 <= v51 || (result & 1) == 0 || !v55)
        {
          v76 = v51;
          if (!v51)
          {
            goto LABEL_110;
          }
        }

        else
        {
          v76 = v53;
          v50 = v53;
        }

        v56 = &v81 + BYTE2(v75);
        *v56 = v50;
        *(v56 + 8) = 1;
LABEL_110:
        if (v48 >= a2 && v48 < a3)
        {
          if ((result & 1) == 0)
          {
            LODWORD(v77) = 0;
            v78 = 0;
            v79 = 0;
          }

          result = (*(*a4 + 16))(a4, &v75);
          if (*a7)
          {
            goto LABEL_136;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_135;
          }
        }

        v34 = 0;
        if (++v40 == 10)
        {
          v60 = v70;
          v61 = 128;
          if (v70 < 0x80)
          {
            v61 = v70;
          }

          v22 += v61;
          v86 = v22;
          v87 = (v70 - v61);
          v32 += 10;
          a6 = v65;
          v70 -= v61;
          v31 = v67;
          if (v60 - v61 <= 0x7F)
          {
LABEL_135:
            *a7 = 0;
            goto LABEL_136;
          }

          goto LABEL_32;
        }
      }

      v47 = dword_298D1B27C[(((v44 >> 17) & 0x3E) << 21) & 0xFFFFFF | ((v44 >> 17) >> 3) & 7];
LABEL_81:
      LODWORD(v77) = v47;
      goto LABEL_82;
    }

    LOBYTE(v75) = 0;
    BYTE1(v75) = v33;
    *(&v75 + 2) = 0;
    v37 = v81;
    if ((BYTE8(v81) & 1) == 0)
    {
      v37 = v66;
    }

    v76 = v37;
    LODWORD(v77) = 2;
    if (BYTE5(v77) == 1)
    {
      BYTE5(v77) = 0;
    }

    v78 = 0;
    v79 = 0;
    a6 = v65;
    if (v32 >= a2 && v32 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32;
      (*(*a4 + 24))(a4, v32);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 1 >= a2 && v32 + 1 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 1;
      (*(*a4 + 24))(a4, v32 + 1);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 2 >= a2 && v32 + 2 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 2;
      (*(*a4 + 24))(a4, v32 + 2);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 3 >= a2 && v32 + 3 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 3;
      (*(*a4 + 24))(a4, v32 + 3);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 4 >= a2 && v32 + 4 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 4;
      (*(*a4 + 24))(a4, v32 + 4);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    v22 += 64;
    v38 = v70 - 64;
    v86 = v22;
    v87 = (v70 - 64);
    if (v32 == v69 && v38 >= 0x80)
    {
      result = (*(*v64 + 24))(&v89);
      if (v93)
      {
        v39 = v89;
        *&v89 = 0;
        *a7 = v39;
        if (v39)
        {
          break;
        }
      }

      else
      {
        *a7 = 0;
      }

      v81 = v89;
      v82 = v90;
      v83 = v91;
      v84 = v92;
    }

    v32 += 5;
    v70 -= 64;
    v31 = v67;
    if (v38 <= 0x7F)
    {
      goto LABEL_135;
    }
  }

LABEL_136:
  if (v95)
  {
    result = *&v94[0];
    *&v94[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_139:
  v62 = *MEMORY[0x29EDCA608];
  return result;
}