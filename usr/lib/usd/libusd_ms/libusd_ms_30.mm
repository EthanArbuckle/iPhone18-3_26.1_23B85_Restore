double sub_29A16A1E0(uint64_t a1, unint64_t *a2, uint64_t *a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  if (a6 <= a7)
  {
    v14 = a8;
    if (a1 != a2)
    {
      v14 = a8;
      v15 = a1;
      do
      {
        v16 = *v15;
        v15 += 2;
        a4 = *&v16;
        *v14 = v16;
        v14 += 2;
      }

      while (v15 != a2);
    }

    return sub_29A16A308(a8, v14, a2, a3, a1, a4);
  }

  else
  {
    v10 = a8;
    if (a2 != a3)
    {
      v10 = a8;
      v11 = a2;
      do
      {
        v12 = *v11;
        v11 += 2;
        a4 = *&v12;
        *v10 = v12;
        v10 += 2;
      }

      while (v11 != a3);
    }

    return sub_29A16A3A0(a4, v10, v10, a8, a8, a2, a2, a1, a1, a3, a3);
  }
}

uint64_t sub_29A16A2B4(uint64_t result, uint64_t a2, unint64_t *a3)
{
  if (a2 != result)
  {
    v3 = (a2 - result) >> 4;
    v4 = *a3;
    do
    {
      v5 = v3 >> 1;
      v6 = result + 16 * (v3 >> 1);
      if (v4 >= *v6 && (*v6 < v4 || *(a3 + 1) >= *(v6 + 8)))
      {
        result = v6 + 16;
        v5 = v3 + ~v5;
      }

      v3 = v5;
    }

    while (v5);
  }

  return result;
}

double sub_29A16A308(uint64_t *a1, uint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t a5, double result)
{
  while (a1 != a2)
  {
    if (a3 == a4)
    {
      v9 = 0;
      do
      {
        v10 = a5 + v9 * 8;
        v11 = &a1[v9];
        *v10 = a1[v9];
        result = *&a1[v9 + 1];
        *(v10 + 8) = result;
        v9 += 2;
      }

      while (v11 + 2 != a2);
      return result;
    }

    v6 = *a3;
    v7 = *a1;
    if (*a3 < *a1)
    {
      result = *(a3 + 1);
LABEL_5:
      *a5 = v6;
      *(a5 + 8) = result;
      a3 += 2;
      goto LABEL_10;
    }

    if (v7 >= v6)
    {
      result = *(a3 + 1);
      v8 = *(a1 + 1);
      if (result < v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = *(a1 + 1);
    }

    *a5 = v7;
    *(a5 + 8) = v8;
    a1 += 2;
LABEL_10:
    a5 += 16;
  }

  return result;
}

double sub_29A16A3A0(double result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 != a5)
  {
    v11 = (a11 - 8);
    while (a7 != a9)
    {
      v12 = a7 - 16;
      v13 = *(a7 - 16);
      v14 = *(a3 - 16);
      if (v14 >= v13)
      {
        if (v13 < v14 || (result = *(a7 - 8), *(a3 - 8) >= result))
        {
          v13 = *(a3 - 16);
          result = *(a3 - 8);
          v12 = a7;
          a3 -= 16;
        }
      }

      else
      {
        result = *(a7 - 8);
      }

      *(v11 - 1) = v13;
      *v11 = result;
      v11 -= 2;
      a7 = v12;
      if (a3 == a5)
      {
        return result;
      }
    }

    for (; a3 != a5; v11 -= 2)
    {
      v15 = *(a3 - 16);
      a3 -= 16;
      *(v11 - 1) = v15;
      result = *(a3 + 8);
      *v11 = result;
    }
  }

  return result;
}

uint64_t *sub_29A16A43C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  *a1 = *a2;
  *a2 = v3;
  v4 = a1[1];
  a1[1] = a2[1];
  a2[1] = v4;
  result = a1 + 2;
  for (i = a2 + 2; i != a3; i += 2)
  {
    if (result == a2)
    {
      a2 = i;
    }

    v7 = *result;
    *result = *i;
    *i = v7;
    v8 = result[1];
    result[1] = i[1];
    i[1] = v8;
    result += 2;
  }

  if (result != a2)
  {
    v9 = result;
    v10 = a2;
    do
    {
      while (1)
      {
        v11 = *v9;
        *v9 = *v10;
        *v10 = v11;
        v12 = v9[1];
        v9[1] = v10[1];
        v10[1] = v12;
        v9 += 2;
        v10 += 2;
        if (v10 == a3)
        {
          break;
        }

        if (v9 == a2)
        {
          a2 = v10;
        }
      }

      v10 = a2;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t sub_29A16A500(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 5)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 5;
      if (v19 >= a5)
      {
        sub_29A16A6E4(a1, a2, a1[1], a2 + 32 * a5);
        v24 = 0;
        v25 = (v7 + 32 * a5);
        v26 = v7;
        do
        {
          v27 = *v26;
          v26 += 4;
          *(v24 + v5) = v27;
          std::string::operator=((v24 + v5 + 8), (v7 + 8));
          v24 += 32;
          v7 = v26;
        }

        while (v26 != v25);
      }

      else
      {
        v20 = (v18 + a3);
        a1[1] = sub_29A15A758(a1, v18 + a3, a4, a1[1]);
        if (v19 >= 1)
        {
          sub_29A16A6E4(a1, v5, v10, v5 + 32 * a5);
          if (v10 != v5)
          {
            v21 = 0;
            v22 = v7;
            do
            {
              v23 = *v22;
              v22 += 4;
              *(v21 + v5) = v23;
              std::string::operator=((v21 + v5 + 8), (v7 + 8));
              v21 += 32;
              v7 = v22;
            }

            while (v22 != v20);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 5);
      if (v12 >> 59)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 4 > v12)
      {
        v12 = v14 >> 4;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v15 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v16 = v13 >> 5;
      v33 = a1;
      if (v15)
      {
        v17 = sub_29A10CB10(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v29 = v17;
      v30 = &v17[32 * v16];
      v31 = v30;
      v32 = &v17[32 * v15];
      sub_29A16A764(&v29, v7, a5);
      v5 = sub_29A16A7FC(a1, &v29, v5);
      sub_29A1595C4(&v29);
    }
  }

  return v5;
}

uint64_t sub_29A16A6E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 8);
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 8) = v10;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = 0;
      v9 += 32;
      v8 += 32;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29A16A8B8(&v12, a2, v7, v6);
}

void *sub_29A16A764(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v5 = v4 + 8;
    v6 = 32 * a3;
    v7 = (a2 + 8);
    v4 += 32 * a3;
    do
    {
      *(v5 - 8) = *(v7 - 1);
      if (*(v7 + 23) < 0)
      {
        result = sub_29A008D14(v5, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        *(v5 + 16) = *(v7 + 2);
        *v5 = v8;
      }

      v5 += 32;
      v7 += 2;
      v6 -= 32;
    }

    while (v6);
  }

  v3[2] = v4;
  return result;
}

uint64_t sub_29A16A7FC(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_29A159488(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_29A159488(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_29A16A8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      *(a4 + v7 - 32) = *(a3 + v7 - 32);
      v9 = (a4 + v7 - 24);
      if (*(a4 + v7 - 1) < 0)
      {
        operator delete(*v9);
      }

      v10 = *(v8 - 24);
      *(a4 + v7 - 8) = *(v8 - 8);
      *v9 = v10;
      *(v8 - 1) = 0;
      *(v8 - 24) = 0;
      v7 -= 32;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void sub_29A16A954(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = (a2 - a1) >> 5;
  v9 = (a3 - a2) >> 5;
  if (v9 >= v8)
  {
    v10 = (a2 - a1) >> 5;
  }

  else
  {
    v10 = (a3 - a2) >> 5;
  }

  if (v10 < 1)
  {
    v15 = 0;
  }

  else
  {
    v11 = MEMORY[0x29EDC9418];
    while (1)
    {
      v12 = operator new(32 * v10, v11);
      if (v12)
      {
        break;
      }

      v13 = v10 >> 1;
      v14 = v10 > 1;
      v10 >>= 1;
      if (!v14)
      {
        v15 = 0;
        v10 = v13;
        goto LABEL_11;
      }
    }

    v15 = v12;
  }

LABEL_11:
  sub_29A16AA70(a1, a2, a3, a4, v8, v9, v15, v10);
  if (v15)
  {

    operator delete(v15);
  }
}

void sub_29A16AA58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A16AA70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v8 = a6;
    do
    {
      if (v8 <= a8 || a5 <= a8)
      {
        sub_29A16AD24(a1, a2, a3, a4, a5, v8, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = a1[v12];
        if (*a2 < v14 || v14 >= *a2 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a2 + 1, &a1[v12 + 1]))
        {
          break;
        }

        v12 += 4;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v17 = -v13;
      if (-v13 >= v8)
      {
        if (v13 == -1)
        {
          v22 = &a1[v12];
          v23 = a1[v12];
          *v22 = *a2;
          *a2 = v23;
          v24 = a1[v12 + 1];
          *(&v32 + 7) = *(&a1[v12 + 2] + 7);
          *&v32 = a1[v12 + 2];
          v25 = HIBYTE(a1[v12 + 3]);
          v22[1] = 0;
          v22[2] = 0;
          v22[3] = 0;
          result = *(a2 + 1);
          v22[3] = a2[3];
          *(v22 + 1) = result;
          a2[1] = v24;
          a2[2] = v32;
          *(a2 + 23) = *(&v32 + 7);
          *(a2 + 31) = v25;
          return result;
        }

        v28 = v17 / 2;
        v19 = &a1[4 * (v17 / 2) + v12];
        v18 = sub_29A16B31C(a2, v19, (a3 - a2) >> 5);
        v27 = (v18 - a2) >> 5;
      }

      else
      {
        v27 = v8 / 2;
        v18 = &a2[4 * (v8 / 2)];
        v19 = sub_29A16AE88(&a1[v12], a2, v18);
        v28 = (v19 - a1 - v12 * 8) >> 5;
      }

      v20 = v18;
      if (v19 != a2)
      {
        v20 = v19;
        if (a2 != v18)
        {
          v20 = sub_29A16B3A4(v19, a2, v18);
        }
      }

      a5 = -(v28 + v13);
      v21 = v8 - v27;
      if (v28 + v27 >= v8 - (v28 + v27) - v13)
      {
        sub_29A16AA70(v20, v18, a3, a4, -(v28 + v13), v8 - v27, a7, a8);
        a1 = (a1 + v12 * 8);
        v18 = v19;
        v21 = v27;
        a5 = v28;
        a3 = v20;
      }

      else
      {
        sub_29A16AA70(&a1[v12], v19, v20, a4, v28, v27, a7, a8);
        a1 = v20;
      }

      v8 = v21;
      a2 = v18;
    }

    while (v21);
  }

  return result;
}

void sub_29A16AD24(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 <= a6)
  {
    if (a1 == a2)
    {
      v12 = 0;
      v13 = a7;
    }

    else
    {
      v12 = 0;
      v13 = a7;
      v16 = a1;
      do
      {
        *v13 = *v16;
        v17 = *(v16 + 1);
        *(v13 + 24) = v16[3];
        *(v13 + 8) = v17;
        v16[2] = 0;
        v16[3] = 0;
        v16[1] = 0;
        ++v12;
        v16 += 4;
        v13 += 32;
      }

      while (v16 != a2);
    }

    v18 = v12;
    sub_29A16AF10(a7, v13, a2, a3, a1);
  }

  else
  {
    if (a2 == a3)
    {
      v10 = 0;
      v11 = a7;
    }

    else
    {
      v10 = 0;
      v11 = a7;
      v14 = a2;
      do
      {
        *v11 = *v14;
        v15 = *(v14 + 1);
        *(v11 + 24) = v14[3];
        *(v11 + 8) = v15;
        v14[2] = 0;
        v14[3] = 0;
        v14[1] = 0;
        ++v10;
        v14 += 4;
        v11 += 32;
      }

      while (v14 != a3);
    }

    v18 = v10;
    sub_29A16B028(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  if (a7)
  {
    sub_29A16B2B8(&v18, a7);
  }
}

void sub_29A16AE68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A16B2B8((v2 - 24), v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A16AE88(char *a1, char *a2, void *a3)
{
  v3 = a1;
  if (a2 != a1)
  {
    v5 = (a2 - a1) >> 5;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[32 * (v5 >> 1)];
      if (*a3 >= *v7 && (*v7 < *a3 || !pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a3 + 1, v7 + 1)))
      {
        v3 = v7 + 32;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  return v3;
}

void sub_29A16AF10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a1 != a2)
  {
    v17 = v5;
    v18 = v6;
    v11 = a1;
    do
    {
      if (a3 == a4)
      {
        sub_29A16B174(&v16, v11, a2, a5);
        return;
      }

      v12 = *a3;
      v13 = *v11;
      if (*a3 >= *v11)
      {
        if (v13 < v12)
        {
          goto LABEL_12;
        }

        if (!pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a3 + 1, (v11 + 8)))
        {
          v13 = *v11;
LABEL_12:
          *a5 = v13;
          if (*(a5 + 31) < 0)
          {
            operator delete(*(a5 + 8));
          }

          v15 = *(v11 + 8);
          *(a5 + 24) = *(v11 + 24);
          *(a5 + 8) = v15;
          *(v11 + 31) = 0;
          *(v11 + 8) = 0;
          v11 += 32;
          goto LABEL_15;
        }

        v12 = *a3;
      }

      *a5 = v12;
      if (*(a5 + 31) < 0)
      {
        operator delete(*(a5 + 8));
      }

      v14 = *(a3 + 1);
      *(a5 + 24) = a3[3];
      *(a5 + 8) = v14;
      *(a3 + 31) = 0;
      *(a3 + 8) = 0;
      a3 += 4;
LABEL_15:
      a5 += 32;
    }

    while (v11 != a2);
  }
}

void sub_29A16B028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, unint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (a2 != a4)
  {
    v12 = a2;
    v13 = a10;
    v14 = a10 - 32;
    v15 = a10;
    do
    {
      if (a6 == a8)
      {
        sub_29A16B1F8(a1, v12, a4, a9, v13, v25);
        return;
      }

      v17 = a6 - 4;
      v16 = *(a6 - 4);
      v19 = (v12 - 32);
      v18 = *(v12 - 32);
      if (v18 >= v16)
      {
        if (v16 < v18)
        {
          goto LABEL_13;
        }

        if (!pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((v12 - 24), a6 - 3))
        {
          v18 = *v19;
LABEL_13:
          *v14 = v18;
          v20 = v14 + 8;
          v21 = v12;
          v17 = a6;
          v12 -= 32;
          if ((*(v14 + 31) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

LABEL_6:
          operator delete(*v20);
          v12 = v19;
          goto LABEL_7;
        }

        v16 = *v17;
      }

      *v14 = v16;
      v20 = v15 - 24;
      v21 = a6;
      v19 = v12;
      if (*(v14 + 31) < 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      v22 = *(v21 - 24);
      *(v20 + 16) = *(v21 - 8);
      *v20 = v22;
      v15 -= 32;
      *(v21 - 1) = 0;
      *(v21 - 24) = 0;
      v13 -= 32;
      v14 -= 32;
      a6 = v17;
    }

    while (v12 != a4);
  }
}

uint64_t sub_29A16B174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_29A16B1F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  if (a2 == a3)
  {
    v11 = a2;
  }

  else
  {
    v11 = a3;
    v12 = 0;
    do
    {
      v13 = a2 + v12;
      *(a5 + v12 - 32) = *(a2 + v12 - 32);
      v14 = (a5 + v12 - 24);
      if (*(a5 + v12 - 1) < 0)
      {
        operator delete(*v14);
      }

      v15 = *(v13 - 24);
      *(a5 + v12 - 8) = *(v13 - 8);
      *v14 = v15;
      *(v13 - 1) = 0;
      *(v13 - 24) = 0;
      v12 -= 32;
    }

    while (a2 + v12 != v11);
    a5 += v12;
  }

  *a6 = a1;
  a6[1] = v11;
  a6[2] = a4;
  a6[3] = a5;
}

void sub_29A16B2B8(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = (a2 + 31);
    v6 = (a2 + 31);
    do
    {
      v7 = *v6;
      v6 += 32;
      if (v7 < 0)
      {
        operator delete(*(v5 - 23));
        v2 = *a1;
      }

      ++v4;
      v5 = v6;
    }

    while (v4 < v2);
  }
}

void *sub_29A16B31C(void *a1, void *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = v4 >> 1;
      v7 = &a1[4 * (v4 >> 1)];
      if (*v7 < *a2 || *a2 >= *v7 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v7 + 1, a2 + 1))
      {
        a1 = v7 + 4;
        v6 = v4 + ~v6;
      }

      v4 = v6;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29A16B3A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = (a1 + 32);
  v4 = result;
  v5 = a2;
  while (1)
  {
    v6 = *(v4 - 4);
    *(v4 - 4) = *v5;
    *v5 = v6;
    v7 = *(v4 - 3);
    *&v15 = *(v4 - 2);
    *(&v15 + 7) = *(v4 - 9);
    v8 = *(v4 - 1);
    *(v4 - 2) = 0;
    *(v4 - 1) = 0;
    *(v4 - 3) = 0;
    v9 = v5[3];
    *(v4 - 3) = *(v5 + 1);
    *(v4 - 1) = v9;
    *(v5 + 23) = *(&v15 + 7);
    v5[1] = v7;
    v5[2] = v15;
    *(v5 + 31) = v8;
    v5 += 4;
    if (v5 == a3)
    {
      break;
    }

    if (v4 == a2)
    {
      a2 = v5;
    }

    v4 += 4;
    result += 4;
  }

  if (v4 != a2)
  {
    v10 = a2;
    do
    {
      while (1)
      {
        v11 = *v4;
        *v4 = *v10;
        *v10 = v11;
        v12 = v4[1];
        *&v16 = v4[2];
        *(&v16 + 7) = *(v4 + 23);
        v13 = *(v4 + 31);
        v4[2] = 0;
        v4[3] = 0;
        v4[1] = 0;
        v14 = *(v10 + 1);
        v4[3] = v10[3];
        *(v4 + 1) = v14;
        v10[1] = v12;
        v10[2] = v16;
        *(v10 + 23) = *(&v16 + 7);
        *(v10 + 31) = v13;
        v4 += 4;
        v10 += 4;
        if (v10 == a3)
        {
          break;
        }

        if (v4 == a2)
        {
          a2 = v10;
        }
      }

      v10 = a2;
    }

    while (v4 != a2);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceReporterTokens_StaticTokenType::~TraceReporterTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::TraceReporterTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::TraceReporterTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::TraceReporterTokens_StaticTokenType::TraceReporterTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::TraceReporterTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "WARNING:", 0);
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

void pxrInternal__aapl__pxrReserved__::TraceReporter::TraceReporter(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  v9 = v5;
  pxrInternal__aapl__pxrReserved__::TraceReporterBase::TraceReporterBase(a1, &v9);
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *a1 = &unk_2A2041328;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 96), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 112) = *(a2 + 2);
    *(a1 + 96) = v7;
  }

  *(a1 + 128) = 0;
  *(a1 + 120) = 1;
  *(a1 + 122) = 1;
  *(a1 + 136) = 0;
  sub_29A16B840(&v8);
  *(a1 + 128) = v8;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateTree>::_RemoveRef();
}

void sub_29A16B828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B2902EC();
  }

  JUMPOUT(0x29A16B820);
}

uint64_t sub_29A16B840@<X0>(pxrInternal__aapl__pxrReserved__::TraceAggregateTree **a1@<X8>)
{
  v2 = operator new(0x90uLL);
  result = pxrInternal__aapl__pxrReserved__::TraceAggregateTree::TraceAggregateTree(v2);
  *a1 = v2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceReporter::~TraceReporter(pxrInternal__aapl__pxrReserved__::TraceReporter *this)
{
  *this = &unk_2A2041328;
  sub_29A153364();
}

{
  pxrInternal__aapl__pxrReserved__::TraceReporter::~TraceReporter(this);
}

void pxrInternal__aapl__pxrReserved__::TraceReporter::_PrintTimes(uint64_t a1, void *a2)
{
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v3 = sub_29A16BBA4((a1 + 128));
  v4 = *(v3 + 32);
  v5 = (v3 + 40);
  if (v4 != (v3 + 40))
  {
    do
    {
      v6 = v4[2];
      *v24 = vextq_s8(v6, v6, 8uLL);
      if ((v6.i8[0] & 7) != 0 && (atomic_fetch_add_explicit((v6.i64[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v24[1] = (v24[1] & 0xFFFFFFFFFFFFFFF8);
      }

      sub_29A16DCE0(&v26, v24);
      if ((v24[1] & 7) != 0)
      {
        atomic_fetch_add_explicit((v24[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v4->i64[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = v7->i64[0];
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[1].i64[0];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v5);
  }

  v10 = v26;
  if (v26 != v27)
  {
    do
    {
      v11 = pxrInternal__aapl__pxrReserved__::ArchTicksToSeconds((v10[4] * 1000.0));
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%9.3f ms ", v12, v13, *&v11);
      if ((v25 & 0x80u) == 0)
      {
        v14 = v24;
      }

      else
      {
        v14 = v24[0];
      }

      if ((v25 & 0x80u) == 0)
      {
        v15 = v25;
      }

      else
      {
        v15 = v24[1];
      }

      v16 = sub_29A00911C(a2, v14, v15);
      sub_29A16BC24((v10 + 5), __p);
      if ((v23 & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v18 = v23;
      }

      else
      {
        v18 = __p[1];
      }

      v19 = sub_29A00911C(v16, v17, v18);
      sub_29A00911C(v19, "\n", 1);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      v20 = v10[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v10[2];
          v9 = *v21 == v10;
          v10 = v21;
        }

        while (!v9);
      }

      v10 = v21;
    }

    while (v21 != v27);
  }

  sub_29A16DC74(&v26, v27[0]);
}

uint64_t sub_29A16BBA4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

uint64_t *sub_29A16BC24@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, uint64_t a2@<X8>)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*(result + 23) < 0)
  {
    v5 = *result;
    v6 = result[1];

    return sub_29A008D14(a2, v5, v6);
  }

  else
  {
    v4 = *result;
    *(a2 + 16) = result[2];
    *a2 = v4;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceReporter::Report(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 <= 0)
  {
    v16[0] = "trace/reporter.cpp";
    v16[1] = "Report";
    v16[2] = 192;
    v16[3] = "void pxrInternal__aapl__pxrReserved__::TraceReporter::Report(std::ostream &, int)";
    v17 = 0;
    v3 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "iterationCount %d is invalid; falling back to 1", a3);
  }

  pxrInternal__aapl__pxrReserved__::TraceReporter::_RebuildEventAndAggregateTrees(a1);
  if (*(a1 + 122) == 1)
  {
    v6 = sub_29A16BBA4((a1 + 128));
    sub_29A153658(v16, (v6 + 24));
    sub_29A152A08(v16);
  }

  if (*(a1 + 121) == 1)
  {
    v7 = sub_29A16BBA4((a1 + 128));
    sub_29A153658(v15, (v7 + 24));
    sub_29A152A08(v15);
  }

  if (v3 <= 1)
  {
    sub_29A00911C(a2, "\nTree view  ==============\n", 27);
    v10 = "   inclusive    exclusive        \n";
    v11 = a2;
    v12 = 34;
  }

  else
  {
    v8 = sub_29A00911C(a2, "\nNumber of iterations: ", 23);
    v9 = MEMORY[0x29C2C1ED0](v8, v3);
    sub_29A00911C(v9, "\n", 1);
    sub_29A00911C(a2, "\nTree view  ==============\n", 27);
    v10 = "  incl./iter   excl./iter       samples/iter\n";
    v11 = a2;
    v12 = 45;
  }

  sub_29A00911C(v11, v10, v12);
  v13 = sub_29A16BBA4((a1 + 128));
  sub_29A153658(v14, (v13 + 24));
  if (v14[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  v14[2] = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateNode>::_AddRef();
}

void sub_29A16BF70(void *a1, uint64_t *a2, int a3, unsigned int a4)
{
  if (*(sub_29A160CEC(a2) + 24) != 1)
  {
LABEL_105:
    memset(&v62, 0, sizeof(v62));
    v53 = sub_29A160CEC(a2);
    v54 = *(v53 + 96);
    if (v54 != *(v53 + 104))
    {
      sub_29A160D6C(&v62, v54);
    }

    __p.__r_.__value_.__r.__words[0] = &v62;
    sub_29A160250(&__p);
    return;
  }

  if ((*(sub_29A160CEC(a2) + 184) & 2) == 0)
  {
    v8 = *(sub_29A160CEC(a2) + 184);
    v9 = *(sub_29A160CEC(a2) + 40);
    v10 = sub_29A160CEC(a2);
    if ((v8 & 4) != 0)
    {
      v11 = 64;
    }

    else
    {
      v11 = 56;
    }

    ExclusiveTime = pxrInternal__aapl__pxrReserved__::TraceAggregateNode::GetExclusiveTime(v10, (v8 & 4) >> 2);
    v13 = *(sub_29A160CEC(a2) + v11);
    v14 = *(sub_29A160CEC(a2) + 32);
    v55 = v14;
    if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v55 = v14 & 0xFFFFFFFFFFFFFFF8;
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }

    sub_29A16BC24(&v55, &v56);
    v15 = pxrInternal__aapl__pxrReserved__::ArchTicksToSeconds(((v9 * 1000.0) / a4));
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%9.3f ms ", v16, v17, *&v15);
    if (!v9)
    {
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v62.__r_.__value_.__l.__size_;
      }

      sub_29A00944C(&__p, size, 32);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      v62 = __p;
    }

    v19 = pxrInternal__aapl__pxrReserved__::ArchTicksToSeconds(((ExclusiveTime * 1000.0) / a4));
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%9.3f ms ", v20, v21, *&v19);
    if (!ExclusiveTime)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = __p.__r_.__value_.__l.__size_;
      }

      sub_29A00944C(&__b, v24, 32);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __b;
    }

    memset(&__b, 0, sizeof(__b));
    if (a4 == 1)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%7.0f samples ", v22, v23, v13);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%10.3f samples ", v22, v23, v13 / a4);
    }

    __b = v59;
    if (v13 <= 0)
    {
      v37 = SHIBYTE(__b.__r_.__value_.__r.__words[2]);
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = __b.__r_.__value_.__l.__size_;
      }

      sub_29A00944C(&v59, v38, 32);
      if (v37 < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      __b = v59;
    }

    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v62;
    }

    else
    {
      v39 = v62.__r_.__value_.__r.__words[0];
    }

    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v62.__r_.__value_.__l.__size_;
    }

    v41 = sub_29A00911C(a1, v39, v40);
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
      v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = __p.__r_.__value_.__l.__size_;
    }

    v44 = sub_29A00911C(v41, p_p, v43);
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_b = &__b;
    }

    else
    {
      p_b = __b.__r_.__value_.__r.__words[0];
    }

    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = __b.__r_.__value_.__l.__size_;
    }

    v47 = sub_29A00911C(v44, p_b, v46);
    sub_29A00911C(v47, " ", 1);
    sub_29A16DBB0(a3, &v59);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v59;
    }

    else
    {
      v48 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v59.__r_.__value_.__l.__size_;
    }

    sub_29A00911C(a1, v48, v49);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
      if ((v8 & 4) == 0)
      {
LABEL_89:
        if ((v58 & 0x80u) == 0)
        {
          v50 = &v56;
        }

        else
        {
          v50 = v56;
        }

        if ((v58 & 0x80u) == 0)
        {
          v51 = v58;
        }

        else
        {
          v51 = v57;
        }

        v52 = sub_29A00911C(a1, v50, v51);
        sub_29A00911C(v52, "\n", 1);
        if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__b.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (v58 < 0)
        {
          operator delete(v56);
        }

        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_105;
      }
    }

    else if ((v8 & 4) == 0)
    {
      goto LABEL_89;
    }

    sub_29A00911C(a1, "*", 1);
    goto LABEL_89;
  }

  v25 = *(sub_29A160CEC(a2) + 32);
  v55 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 = v25 & 0xFFFFFFFFFFFFFFF8;
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A16BC24(&v55, &v56);
  *(&v62.__r_.__value_.__s + 23) = 13;
  strcpy(&v62, "             ");
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "             ");
  *(&__b.__r_.__value_.__s + 23) = 16;
  strcpy(&__b, "                ");
  sub_29A16DBB0(a3 - 1, &v59);
  v26 = sub_29A00911C(a1, &v62, 13);
  v27 = sub_29A00911C(v26, &__p, 13);
  v28 = sub_29A00911C(v27, &__b, 16);
  v29 = sub_29A00911C(v28, " ", 1);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v59;
  }

  else
  {
    v30 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v59.__r_.__value_.__l.__size_;
  }

  v32 = sub_29A00911C(v29, v30, v31);
  sub_29A00911C(v32, " ", 1);
  v33 = sub_29A00911C(a1, "[", 1);
  if ((v58 & 0x80u) == 0)
  {
    v34 = &v56;
  }

  else
  {
    v34 = v56;
  }

  if ((v58 & 0x80u) == 0)
  {
    v35 = v58;
  }

  else
  {
    v35 = v57;
  }

  v36 = sub_29A00911C(v33, v34, v35);
  sub_29A00911C(v36, "]\n", 2);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v58 < 0)
  {
    operator delete(v56);
  }

  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29A16C568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v38 - 105) < 0)
  {
    operator delete(*(v38 - 128));
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TraceReporter::LoadReport(void *a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A173F260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F260))
  {
    sub_29A0CD6B0(&unk_2A173F220, "Number of iterations: (\\d+)", 0);
    __cxa_atexit(sub_29A0CD654, &unk_2A173F220, &dword_299FE7000);
    __cxa_guard_release(&qword_2A173F260);
  }

  if ((atomic_load_explicit(&qword_2A173F280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F280))
  {
    sub_29A008E78(&qword_2A173F268, "Tree view  ==============");
    __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A173F268, &dword_299FE7000);
    __cxa_guard_release(&qword_2A173F280);
  }

  if ((atomic_load_explicit(&qword_2A173F2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F2C8))
  {
    sub_29A16D088();
    __cxa_atexit(sub_29A0CD654, &unk_2A173F288, &dword_299FE7000);
    __cxa_guard_release(&qword_2A173F2C8);
  }

  v42[6] = 0;
  v42[7] = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  memset(v42, 0, 41);
  locale = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  memset(&v38, 0, sizeof(v38));
  v4 = MEMORY[0x29EDC93D0];
LABEL_5:
  v5 = 1;
  while (1)
  {
    while (1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v6 = std::locale::use_facet(__dst, v4);
      v7 = (v6->__vftable[2].~facet_0)(v6, 10);
      std::locale::~locale(__dst);
      v8 = sub_29A0DE07C(a1, &v38, v7);
      if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
      {
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        sub_29A153394(v39);
        sub_29A16DC44();
      }

      if ((v5 & 1) == 0)
      {
        break;
      }

      v9 = byte_2A173F27F;
      if (byte_2A173F27F < 0)
      {
        v9 = qword_2A173F270;
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v38.__r_.__value_.__l.__size_;
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v38;
      }

      else
      {
        v11 = v38.__r_.__value_.__r.__words[0];
      }

      if (size == v9)
      {
        v12 = byte_2A173F27F >= 0 ? &qword_2A173F268 : qword_2A173F268;
        if (!memcmp(v11, v12, size))
        {
          sub_29A16B840(&__dst[0].__locale_);
          locale = __dst[0].__locale_;
          __dst[0].__locale_ = 0;
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateTree>::_RemoveRef();
        }
      }

      v13 = strlen(v11);
      v5 = 1;
      if (sub_29A0D5434(&unk_2A173F220, v11, v11 + v13, v42, 4160))
      {
        if (v46 != 1)
        {
          v32 = v42[0];
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v42[1] - v42[0]) >> 3);
          if (v33 <= 1)
          {
            v34 = v42;
          }

          else
          {
            v34 = v42[0];
          }

          if (*(v34 + 40) == 1)
          {
            if (v33 <= 1)
            {
              v32 = v42;
            }

            sub_29A0D2BE0(__dst, v32[3], v32[4], v32[4] - v32[3]);
          }

          else
          {
            __dst[0].__locale_ = 0;
            __dst[1].__locale_ = 0;
            *&v36 = 0;
          }

          std::stoi(__dst, 0, 10);
          if (SBYTE7(v36) < 0)
          {
            operator delete(__dst[0].__locale_);
          }

          goto LABEL_5;
        }

LABEL_34:
        v42[1] = v42[0];
      }
    }

    pxrInternal__aapl__pxrReserved__::TfStringTrim(" \n\t\r", &v38, __dst);
    if (SBYTE7(v36) < 0)
    {
      v14 = __dst[1].__locale_;
      operator delete(__dst[0].__locale_);
      if (!v14)
      {
LABEL_59:
        v36 = 0u;
        v37 = 0u;
        *&__dst[0].__locale_ = 0u;
        sub_29A1708EC(v39, __dst);
        sub_29A153394(__dst);
        goto LABEL_5;
      }
    }

    else if (!BYTE7(v36))
    {
      goto LABEL_59;
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v38;
    }

    else
    {
      v15 = v38.__r_.__value_.__r.__words[0];
    }

    v16 = strlen(v15);
    v5 = 0;
    if (sub_29A0D5434(&unk_2A173F288, v15, v15 + v16, v42, 4160))
    {
      if (v46 != 1)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v42[1] - v42[0]) >> 3);
        v19 = (v42[0] + 112);
        if (v18 <= 4)
        {
          v19 = &v42[5];
        }

        if (*v19 == 1)
        {
          v20 = v18 > 4;
          v21 = &v42[3];
          if (v20)
          {
            v21 = (v42[0] + 96);
          }

          v22 = *v21;
          v23 = (v42[0] + 104);
          if (!v20)
          {
            v23 = &v42[4];
          }

          v24 = (*v23 - v22) / 2 + 1;
        }

        else
        {
          v24 = 1;
        }

        while (*(&v40 + 1) > v24)
        {
          sub_29B28F93C(v39);
        }

        v25 = *(&v40 + 1) + v40 - 1;
        v26 = *(v39[1] + ((v25 >> 5) & 0x7FFFFFFFFFFFFF8));
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v42[1] - v42[0]) >> 3);
        v28 = (v42[0] + 88);
        if (v27 <= 3)
        {
          v28 = &v42[5];
        }

        if (*v28 == 1)
        {
          v29 = v27 > 3;
          v30 = &v42[3];
          if (v29)
          {
            v30 = (v42[0] + 72);
          }

          v31 = (v42[0] + 80);
          if (!v29)
          {
            v31 = &v42[4];
          }

          sub_29A0D2BE0(__dst, *v30, *v31, *v31 - *v30);
        }

        else
        {
          __dst[0].__locale_ = 0;
          __dst[1].__locale_ = 0;
          *&v36 = 0;
        }

        pxrInternal__aapl__pxrReserved__::TfStringToDouble(__dst, v17);
        if (SBYTE7(v36) < 0)
        {
          operator delete(__dst[0].__locale_);
        }

        sub_29A152A08(v26 + 16 * v25);
      }

      v5 = 0;
      goto LABEL_34;
    }
  }
}

void sub_29A16D088()
{
  sub_29A008E78(v33, "(?:(\\d+\\.\\d{3}) ms)");
  if (v34 >= 0)
  {
    v2 = v33;
  }

  else
  {
    v2 = v33[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s\\s+%s?\\s+", v0, v1, v2, v2);
  if (v32 >= 0)
  {
    v5 = &v31;
  }

  else
  {
    v5 = v31;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("(?:%s|(?:)\\s+)", v3, v4, v5);
  sub_29A008E78(v27, "(\\d+|\\d+\\.\\d{3}) samples\\s+");
  sub_29A008E78(v25, "([ |]+)");
  sub_29A008E78(v23, "(.*)");
  std::operator+<char>();
  if ((v28 & 0x80u) == 0)
  {
    v6 = v27;
  }

  else
  {
    v6 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v7 = v28;
  }

  else
  {
    v7 = v27[1];
  }

  v8 = std::string::append(&v18, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((v26 & 0x80u) == 0)
  {
    v10 = v25;
  }

  else
  {
    v10 = v25[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v11 = v26;
  }

  else
  {
    v11 = v25[1];
  }

  v12 = std::string::append(&v19, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((v24 & 0x80u) == 0)
  {
    v14 = v23;
  }

  else
  {
    v14 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v23[1];
  }

  v16 = std::string::append(&v20, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v22 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  sub_29A16DD78(&unk_2A173F288, __p, 0);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_29A16D2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (*(v44 - 113) < 0)
  {
    operator delete(*(v44 - 136));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (*(v44 - 65) < 0)
  {
    operator delete(*(v44 - 88));
  }

  if (*(v44 - 41) < 0)
  {
    operator delete(*(v44 - 64));
  }

  if (*(v44 - 17) < 0)
  {
    operator delete(*(v44 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A16D3AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A1706C8(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceReporter::CreateValidEventId(pxrInternal__aapl__pxrReserved__::TraceReporter *this)
{
  pxrInternal__aapl__pxrReserved__::TraceThreadId::TraceThreadId(&__p);
  if (v3 < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void *pxrInternal__aapl__pxrReserved__::TraceReporter::ReportTimes(pxrInternal__aapl__pxrReserved__::TraceReporter *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TraceReporter::_RebuildEventAndAggregateTrees(a1);
  sub_29A00911C(a2, "\nTotal time for each key ==============\n", 40);
  pxrInternal__aapl__pxrReserved__::TraceReporter::_PrintTimes(a1, a2);

  return sub_29A00911C(a2, "\n", 1);
}

void pxrInternal__aapl__pxrReserved__::TraceReporter::ReportChromeTracing(uint64_t *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TraceReporter::_RebuildEventAndAggregateTrees(a1);
  pxrInternal__aapl__pxrReserved__::JsWriter::JsWriter(&v5, a2, 0);
  v4 = sub_29A152A58(a1 + 17);
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::TraceEventTree::WriteChromeTraceObject(v4, &v5, v6);
  sub_29A15F538(v6);
  pxrInternal__aapl__pxrReserved__::JsWriter::~JsWriter(&v5);
}

void sub_29A16D534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, char a10)
{
  sub_29A15F538(&a10);
  pxrInternal__aapl__pxrReserved__::JsWriter::~JsWriter(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceReporter::_RebuildEventAndAggregateTrees(pxrInternal__aapl__pxrReserved__::TraceReporter *this)
{
  pxrInternal__aapl__pxrReserved__::TraceReporterBase::_Update(this);
  v2 = sub_29A16BBA4(this + 16);
  sub_29A153658(v6, (v2 + 24));
  v3 = sub_29B28F7F8(v6);
  if (v4 & 1 | v3)
  {
    sub_29A152A08(v6);
  }

  return sub_29B28F9E0(v6);
}

void sub_29A16D6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, atomic_uint *a19)
{
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    if (atomic_fetch_add_explicit(a19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a19 + 8))(a19);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TraceReporter::GetAggregateTreeRoot@<X0>(pxrInternal__aapl__pxrReserved__::TraceReporter *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = (sub_29A16BBA4(this + 16) + 24);

  return sub_29A153658(a2, v3);
}

void pxrInternal__aapl__pxrReserved__::TraceReporter::GetEventRoot(pxrInternal__aapl__pxrReserved__::TraceReporter *this@<X0>, void *a2@<X8>)
{
  *a2 = *(sub_29A152A58(this + 17) + 24);

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceReporter::GetCounterIndex(pxrInternal__aapl__pxrReserved__::TraceReporter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = sub_29A16BBA4(this + 16);

  return pxrInternal__aapl__pxrReserved__::TraceAggregateTree::GetCounterIndex(v3, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceReporter::AddCounter(pxrInternal__aapl__pxrReserved__::TraceReporter *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int a3, double a4)
{
  v7 = sub_29A16BBA4(this + 16);

  return pxrInternal__aapl__pxrReserved__::TraceAggregateTree::AddCounter(v7, a2, a3, a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceReporter::_ProcessCollection(uint64_t result, pxrInternal__aapl__pxrReserved__::TraceCollection ***a2)
{
  if (*a2)
  {
    v3 = sub_29A152A58((result + 136));
    pxrInternal__aapl__pxrReserved__::TraceEventTree::Add(v3, *a2);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::TraceReporter::GetGlobalReporter@<X0>(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A173F2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F2D0))
  {
    sub_29A0ECEEC(&v8, "Trace", "TraceReporter");
    v4 = malloc(0x90uLL);
    sub_29A0E9CEC(&v8);
    sub_29A008E78(&v8, "Trace global reporter");
    sub_29A16DB68(&v6);
    v5 = v6;
    v6 = 0;
    v7 = v5;
    pxrInternal__aapl__pxrReserved__::TraceReporter::TraceReporter(v4, &v8, &v7);
  }

  return sub_29B2904AC(a1);
}

void sub_29A16DAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  free(v17);
  __cxa_guard_abort(&qword_2A173F2D0);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector *sub_29A16DB68@<X0>(pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector **a1@<X8>)
{
  v2 = operator new(0x48uLL);
  result = pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector::TraceReporterDataSourceCollector(v2);
  *a1 = v2;
  return result;
}

void sub_29A16DBB0(int a1@<W0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = a1;
  std::string::resize(a2, a1, 32);
  if (a1 >= 3)
  {
    v5 = 2;
    do
    {
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2->__r_.__value_.__r.__words[0];
      }

      v6->__r_.__value_.__s.__data_[v5] = 124;
      v5 += 4;
    }

    while (v5 < v4);
  }
}

void sub_29A16DC28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A16DC74(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A16DC74(a1, *a2);
    sub_29A16DC74(a1, a2[1]);
    v4 = a2[5];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

uint64_t *sub_29A16DCE0(uint64_t **a1, __int128 *a2)
{
  v4 = operator new(0x30uLL);
  v5 = *a2;
  *(v4 + 2) = *a2;
  *(a2 + 1) = 0;
  v6 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    do
    {
      while (1)
      {
        v6 = v7;
        if (v5 >= v7[4])
        {
          break;
        }

        v7 = *v7;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v7 = v7[1];
    }

    while (v7);
    v8 = v6 + 1;
  }

  else
  {
    v8 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v6, v8, v4);
  return v4;
}

const std::locale *sub_29A16DD78(const std::locale *a1, uint64_t a2, int a3)
{
  v6 = sub_29A0CD748(a1);
  LODWORD(v6[3].__locale_) = a3;
  *(&v6[3].__locale_ + 4) = 0u;
  *(&v6[5].__locale_ + 4) = 0u;
  HIDWORD(v6[7].__locale_) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (sub_29A16DE18(v6, v8, &v8[v7]) != &v8[v7])
  {
    sub_29A0CD97C();
  }

  return a1;
}

void sub_29A16DDF8(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_29A014BEC(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_29A16DE18(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A203ED98;
  v7 = operator new(0x10uLL);
  *v7 = &unk_2A203EE68;
  v7[1] = v6;
  sub_29A0CD9D4((a1 + 40), v7);
  *(a1 + 56) = *(a1 + 40);
  v8 = *(a1 + 24) & 0x1F0;
  if (v8 > 0x3F)
  {
    switch(v8)
    {
      case 0x40u:
LABEL_12:

        return sub_29A16E1BC(a1, a2, a3);
      case 0x80u:

        return sub_29A16E25C(a1, a2, a3);
      case 0x100u:

        return sub_29A16E39C(a1, a2, a3);
      default:
        goto LABEL_24;
    }
  }

  else if (v8)
  {
    if (v8 != 16)
    {
      if (v8 != 32)
      {
LABEL_24:
        sub_29A0CDF4C();
      }

      goto LABEL_12;
    }

    return sub_29A16E100(a1, a2, a3);
  }

  else
  {

    return sub_29A16DFEC(a1, a2, a3);
  }
}

unsigned __int8 *sub_29A16DFEC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_29A16E4DC(a1, a2, a3);
  if (v7 == a2)
  {
    v8 = operator new(0x10uLL);
    v9 = *(a1 + 56);
    v10 = *(v9 + 8);
    *v8 = &unk_2A203EE68;
    v8[1] = v10;
    *(v9 + 8) = v8;
    *(a1 + 56) = *(*(a1 + 56) + 8);
  }

  while (v7 != a3 && *v7 == 124)
  {
    v11 = *(a1 + 56);
    v12 = v7 + 1;
    v7 = sub_29A16E4DC(a1, v7 + 1, a3);
    if (v12 == v7)
    {
      v13 = operator new(0x10uLL);
      v14 = *(a1 + 56);
      v15 = *(v14 + 8);
      *v13 = &unk_2A203EE68;
      v13[1] = v15;
      *(v14 + 8) = v13;
      *(a1 + 56) = *(*(a1 + 56) + 8);
    }

    sub_29A0CE2B0(a1, v6, v11);
  }

  return v7;
}

unsigned __int8 *sub_29A16E100(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    sub_29A0CEB7C(a1);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = sub_29A16FDCC(a1, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      sub_29A0CEBF0(a1);
      ++v6;
    }

    if (v6 != v4)
    {
      sub_29A0D4958();
    }
  }

  return v4;
}

unsigned __int8 *sub_29A16E1BC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_29A170304(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    sub_29A0D4958();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = *(a1 + 56);
    v10 = sub_29A170304(a1, v8 + 1, a3);
    if (v8 + 1 == v10)
    {
      goto LABEL_8;
    }

    v8 = v10;
    sub_29A0CE2B0(a1, v6, v9);
  }

  return v8;
}

unsigned __int8 *sub_29A16E25C(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    v9 = operator new(0x10uLL);
    v10 = *(v6 + 8);
    *v9 = &unk_2A203EE68;
    v9[1] = v10;
    *(v6 + 8) = v9;
    *(a1 + 56) = *(*(a1 + 56) + 8);
  }

  else
  {
    sub_29A16E100(a1, __s, v8);
  }

  while (1)
  {
    v15 = v8 == a3 ? v8 : v8 + 1;
    if (v15 == a3)
    {
      break;
    }

    v11 = memchr(v15, 10, a3 - v15);
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = a3;
    }

    v12 = *(a1 + 56);
    if (v8 == v15)
    {
      v13 = operator new(0x10uLL);
      v14 = *(v12 + 8);
      *v13 = &unk_2A203EE68;
      v13[1] = v14;
      *(v12 + 8) = v13;
      *(a1 + 56) = *(*(a1 + 56) + 8);
    }

    else
    {
      sub_29A16E100(a1, v15, v8);
    }

    sub_29A0CE2B0(a1, v6, v12);
  }

  return a3;
}

unsigned __int8 *sub_29A16E39C(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    v9 = operator new(0x10uLL);
    v10 = *(v6 + 8);
    *v9 = &unk_2A203EE68;
    v9[1] = v10;
    *(v6 + 8) = v9;
    *(a1 + 56) = *(*(a1 + 56) + 8);
  }

  else
  {
    sub_29A16E1BC(a1, __s, v8);
  }

  while (1)
  {
    v15 = v8 == a3 ? v8 : v8 + 1;
    if (v15 == a3)
    {
      break;
    }

    v11 = memchr(v15, 10, a3 - v15);
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = a3;
    }

    v12 = *(a1 + 56);
    if (v8 == v15)
    {
      v13 = operator new(0x10uLL);
      v14 = *(v12 + 8);
      *v13 = &unk_2A203EE68;
      v13[1] = v14;
      *(v12 + 8) = v13;
      *(a1 + 56) = *(*(a1 + 56) + 8);
    }

    else
    {
      sub_29A16E1BC(a1, v15, v8);
    }

    sub_29A0CE2B0(a1, v6, v12);
  }

  return a3;
}

unsigned __int8 *sub_29A16E4DC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  do
  {
    v5 = a2;
    a2 = sub_29A16E528(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

unsigned __int8 *sub_29A16E528(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_29A16E5D0(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_29A16E7E8(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = *(a1 + 28) + 1;

      return sub_29A16E9CC(a1, v9, a3, v7, v8 + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *sub_29A16E5D0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      if (v6 == 40 && a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
      {
        v7 = a2[2];
        if (v7 == 33)
        {
          sub_29A0CD748(v14);
          v15 = 0u;
          v17 = 0;
          v16 = 0u;
          LODWORD(v15) = *(a1 + 24);
          v8 = sub_29A16DE18(v14, v3 + 3, a3);
          v13 = DWORD1(v15);
          sub_29A0CECE8(a1, v14, 1, *(a1 + 28));
          *(a1 + 28) += v13;
          if (v8 == a3 || *v8 != 41)
          {
            sub_29A0CED70();
          }

          goto LABEL_27;
        }

        if (v7 == 61)
        {
          sub_29A0CD748(v14);
          v15 = 0u;
          v17 = 0;
          v16 = 0u;
          LODWORD(v15) = *(a1 + 24);
          v8 = sub_29A16DE18(v14, v3 + 3, a3);
          v9 = DWORD1(v15);
          sub_29A0CECE8(a1, v14, 0, *(a1 + 28));
          *(a1 + 28) += v9;
          if (v8 == a3 || *v8 != 41)
          {
            sub_29A0CED70();
          }

LABEL_27:
          v3 = v8 + 1;
          sub_29A0CD654(v14);
          return v3;
        }
      }

      return v3;
    }

    sub_29A0CEBF0(a1);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    sub_29A0CEB7C(a1);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v11 = a2[1];
    if (v11 == 66)
    {
      v12 = 1;
    }

    else
    {
      if (v11 != 98)
      {
        return v3;
      }

      v12 = 0;
    }

    sub_29A0CEC64(a1, v12);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *sub_29A16E7E8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 <= 0x3E)
    {
      if (v6 != 40)
      {
        if (v6 == 46)
        {
          v7 = operator new(0x10uLL);
          v8 = *(a1 + 56);
          v9 = *(v8 + 8);
          *v7 = &unk_2A203F030;
          v7[1] = v9;
          *(v8 + 8) = v7;
          *(a1 + 56) = *(*(a1 + 56) + 8);
          return ++v3;
        }

        if (v6 - 42 >= 2)
        {
          return sub_29A0D08E0(a1, a2, a3);
        }

LABEL_29:
        sub_29A0D0888();
      }

      v11 = a2 + 1;
      if (a2 + 1 != a3)
      {
        if (a2 + 2 != a3 && *v11 == 63 && a2[2] == 58)
        {
          ++*(a1 + 36);
          v12 = sub_29A16DFEC(a1, a2 + 3, a3);
          if (v12 != a3 && *v12 == 41)
          {
            --*(a1 + 36);
            return v12 + 1;
          }
        }

        else
        {
          sub_29A0D07A0(a1);
          v13 = *(a1 + 28);
          ++*(a1 + 36);
          v14 = sub_29A16DFEC(a1, v11, a3);
          if (v14 != a3)
          {
            v3 = v14;
            if (*v14 == 41)
            {
              sub_29A0D0818(a1, v13);
              --*(a1 + 36);
              return ++v3;
            }
          }
        }
      }

      sub_29A0CED70();
    }

    if (*a2 > 0x5Bu)
    {
      if (v6 == 92)
      {
        return sub_29A16ECD4(a1, a2, a3);
      }

      if (v6 == 123)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v6 == 91)
      {
        return sub_29A16ED7C(a1, a2, a3);
      }

      if (v6 == 63)
      {
        goto LABEL_29;
      }
    }

    return sub_29A0D08E0(a1, a2, a3);
  }

  return v3;
}

unsigned __int8 *sub_29A16E9CC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = sub_29A16FCE0(a1, a2 + 1, a3, &v28);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = v28;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = v28;
LABEL_32:
              v21 = a4;
              v22 = 0;
LABEL_45:
              sub_29A0D4400(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = v28;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = v28;
LABEL_44:
            v21 = a4;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = v28;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = v28;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = sub_29A16FCE0(v11, v23, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = v28;
          if (v27 >= v28)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = a4;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      sub_29A0D4630();
    }

LABEL_57:
    sub_29A0D45D8();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = v6 == a3;
    }

    if (!v19 && *v6 == 63)
    {
      v6 = a2 + 2;
      v14 = 0;
      goto LABEL_25;
    }

    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      v14 = 1;
LABEL_25:
      v18 = -1;
      goto LABEL_32;
    }

    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}

unsigned __int8 *sub_29A16ECD4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = (a2 + 1);
    if (a2 + 1 == a3)
    {
      sub_29A0D0A38();
    }

    v7 = sub_29A16EE98(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_29A0D0B48(a1, v3 + 1, a3), v7 == v5))
    {
      v8 = sub_29A16EF50(a1, v3 + 1, a3, 0);
      if (v8 != v5)
      {
        return v8;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *sub_29A16ED7C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    v6 = sub_29A0D1C24(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_21;
    }

    v7 = v6;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      sub_29A0D1CA0(v6, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = v5;
        v5 = sub_29A16F23C(a1, v5, a3, v7);
      }

      while (v8 != v5);
    }

    if (v8 == a3)
    {
      goto LABEL_21;
    }

    if (*v8 == 45)
    {
      sub_29A0D1CA0(v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_21:
      sub_29A0D2D90();
    }

    return v8 + 1;
  }

  return a2;
}

unsigned __int8 *sub_29A16EE98(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a3 != a2)
  {
    v4 = *a2;
    v5 = (v4 - 48);
    if (v4 == 48)
    {
      sub_29A0D0F08(a1, v5);
      return ++v3;
    }

    if ((v4 - 49) > 8)
    {
      return v3;
    }

    if (++v3 == a3)
    {
      v3 = a3;
    }

    else
    {
      while (1)
      {
        v6 = *v3;
        if ((v6 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_16;
        }

        ++v3;
        LODWORD(v5) = v6 + 10 * v5 - 48;
        if (v3 == a3)
        {
          v3 = a3;
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_16;
      }
    }

    if (v5 <= *(a1 + 28))
    {
      sub_29A0D1060(a1, v5);
      return v3;
    }

LABEL_16:
    sub_29A0D1008();
  }

  return v3;
}

char *sub_29A16EF50(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          v8 = 12;
          goto LABEL_69;
        }

        v9 = this;
        LOBYTE(v8) = 12;
      }

      else
      {
        if (v5 != 110)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v8 = 10;
          goto LABEL_69;
        }

        v9 = this;
        LOBYTE(v8) = 10;
      }
    }

    else
    {
      if (v5 != 48)
      {
        if (v5 == 99)
        {
          v4 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_72;
          }

          if (*v4 < 65)
          {
            goto LABEL_72;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_72;
          }

          v8 = v7 & 0x1F;
          if (this)
          {
            goto LABEL_67;
          }

          goto LABEL_69;
        }

        if (v5 == 95)
        {
          goto LABEL_72;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v8 = v5;
        if (this)
        {
LABEL_67:
          v9 = this;
          goto LABEL_68;
        }

LABEL_69:
        sub_29A0D0F08(a1, v8);
        return ++v4;
      }

      if (!this)
      {
        v8 = 0;
        goto LABEL_69;
      }

      v9 = this;
      LOBYTE(v8) = 0;
    }

LABEL_68:
    std::string::operator=(v9, v8);
    return ++v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (!this)
      {
        v8 = 13;
        goto LABEL_69;
      }

      v9 = this;
      LOBYTE(v8) = 13;
    }

    else
    {
      if (v5 != 116)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v8 = 9;
        goto LABEL_69;
      }

      v9 = this;
      LOBYTE(v8) = 9;
    }

    goto LABEL_68;
  }

  if (v5 != 117)
  {
    if (v5 != 118)
    {
      if (v5 == 120)
      {
        v6 = 0;
        goto LABEL_41;
      }

      goto LABEL_64;
    }

    if (!this)
    {
      v8 = 11;
      goto LABEL_69;
    }

    v9 = this;
    LOBYTE(v8) = 11;
    goto LABEL_68;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v10 = a2[1];
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
  {
    goto LABEL_72;
  }

  v4 = a2 + 2;
  if (a2 + 2 == a3)
  {
    goto LABEL_72;
  }

  v11 = *v4;
  v12 = -48;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    v11 |= 0x20u;
    if ((v11 - 97) >= 6)
    {
      goto LABEL_72;
    }

    v12 = -87;
  }

  v6 = 16 * (v12 + v11);
LABEL_41:
  if (v4 + 1 == a3)
  {
    goto LABEL_72;
  }

  v13 = v4[1];
  v14 = -48;
  if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
  {
    v13 |= 0x20u;
    if ((v13 - 97) >= 6)
    {
      goto LABEL_72;
    }

    v14 = -87;
  }

  if (v4 + 2 == a3)
  {
LABEL_72:
    sub_29A0D0A38();
  }

  v15 = v4[2];
  v16 = -48;
  if ((v15 & 0xF8) != 0x30 && (v15 & 0xFE) != 0x38)
  {
    v15 |= 0x20u;
    if ((v15 - 97) < 6)
    {
      v16 = -87;
      goto LABEL_51;
    }

    goto LABEL_72;
  }

LABEL_51:
  if (this)
  {
    std::string::operator=(this, v16 + v15 + 16 * (v14 + v6 + v13));
  }

  else
  {
    sub_29A0D0F08(a1, (v16 + v15 + 16 * (v14 + v6 + v13)));
  }

  v4 += 3;
  return v4;
}

unsigned __int8 *sub_29A16F23C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v23, 0, sizeof(v23));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = sub_29A16F7C4(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = sub_29A16F5FC(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v17 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v4 = sub_29A16F87C(a1, a2 + 2, a3, &v23);
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v4 = sub_29A16FA84(a1, v4 + 1, a3, &v23);
        }

        else
        {
          v4 = sub_29A16F960(a1, v4 + 1, a3, &v23, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v23, v12);
    ++v4;
  }

LABEL_16:
  if (v4 != a3)
  {
    v13 = *v4;
    if (v13 != 93)
    {
      v15 = v4 + 1;
      if (v4 + 1 != a3 && v13 == 45 && *v15 != 93)
      {
        memset(&v22, 0, sizeof(v22));
        v4 += 2;
        if (v15 + 1 != a3 && *v15 == 91 && *v4 == 46)
        {
          v16 = sub_29A16F87C(a1, v15 + 2, a3, &v22);
LABEL_55:
          v4 = v16;
          goto LABEL_56;
        }

        if ((v11 | 0x40) == 0x40)
        {
          LODWORD(v15) = *v15;
          if (v15 == 92)
          {
            if (v11)
            {
              v16 = sub_29A16FA84(a1, v4, a3, &v22);
            }

            else
            {
              v16 = sub_29A16F960(a1, v4, a3, &v22, v6);
            }

            goto LABEL_55;
          }
        }

        else
        {
          LOBYTE(v15) = *v15;
        }

        std::string::operator=(&v22, v15);
LABEL_56:
        v21 = v23;
        memset(&v23, 0, sizeof(v23));
        __p = v22;
        memset(&v22, 0, sizeof(v22));
        sub_29A0D37C8(v6, &v21, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        goto LABEL_41;
      }
    }
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v23.__r_.__value_.__l.__size_)
    {
      if (v23.__r_.__value_.__l.__size_ != 1)
      {
        v14 = v23.__r_.__value_.__r.__words[0];
LABEL_40:
        sub_29A0D3BC8(v6, v14->__r_.__value_.__s.__data_[0], v14->__r_.__value_.__s.__data_[1]);
        goto LABEL_41;
      }

      v14 = v23.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else if (*(&v23.__r_.__value_.__s + 23))
  {
    v14 = &v23;
    if (HIBYTE(v23.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_40;
    }

LABEL_25:
    sub_29A0D1CA0(v6, v14->__r_.__value_.__s.__data_[0]);
  }

LABEL_41:
  v17 = 1;
LABEL_42:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    return v4;
  }

  return v6;
}

void sub_29A16F584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_29A16F5FC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v22 = 23869;
  LOBYTE(__p[0]) = 0;
  v8 = sub_29A16FC64(a2, a3, &v22, &v23);
  if (v8 == a3)
  {
    sub_29A0D2D90();
  }

  v9 = v8;
  sub_29A0D2A34(a1, a2, v8, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_7;
    }

LABEL_27:
    sub_29A0D3CA4();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_27;
  }

  v11 = v19;
LABEL_7:
  sub_29A0D2C80(a1, v11, v11 + v10, __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    sub_29A070BA0(a4 + 136);
  }

  v13 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v13 = v20;
  }

  if (v13 == 2)
  {
    v15 = &v19;
    if ((v21 & 0x80u) != 0)
    {
      v15 = v19;
    }

    sub_29A0D3BC8(a4, *v15, v15[1]);
  }

  else
  {
    if (v13 != 1)
    {
      sub_29A0D3CA4();
    }

    v14 = &v19;
    if ((v21 & 0x80u) != 0)
    {
      v14 = v19;
    }

    sub_29A0D1CA0(a4, *v14);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v9 + 2;
}

void sub_29A16F78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_29A16F7C4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  strcpy(v12, ":]");
  v8 = sub_29A16FC64(a2, a3, v12, &v12[2]);
  if (v8 == a3)
  {
    sub_29A0D2D90();
  }

  v9 = v8;
  v10 = sub_29A0D3D54(a1, a2, v8, *(a1 + 24) & 1);
  if (!v10)
  {
    sub_29A0D3CFC();
  }

  *(a4 + 160) |= v10;
  return v9 + 2;
}

unsigned __int8 *sub_29A16F87C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v15 = 23854;
  v16[1] = 0;
  v8 = sub_29A16FC64(a2, a3, &v15, v16);
  if (v8 == a3)
  {
    sub_29A0D2D90();
  }

  v9 = v8;
  sub_29A0D2A34(a1, a2, v8, &v13);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    sub_29A0D3CA4();
  }

  return v9 + 2;
}

char *sub_29A16F960(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_29A0D0A38();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return sub_29A16EF50(a1, a2, a3, this);
        }

        *(a5 + 160) |= 0x500u;
        sub_29A0D1CA0(a5, 95);
        return (a2 + 1);
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return (a2 + 1);
      }

      if (v6 != 100)
      {
        return sub_29A16EF50(a1, a2, a3, this);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return (a2 + 1);
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return (a2 + 1);
      }

      return sub_29A16EF50(a1, a2, a3, this);
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_29A0D3E28(a5, 95);
    return (a2 + 1);
  }

  return sub_29A16EF50(a1, a2, a3, this);
}

unsigned __int8 *sub_29A16FA84(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_55:
    sub_29A0D0A38();
  }

  v5 = *a2;
  if (v5 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          LOBYTE(v7) = 7;
          goto LABEL_31;
        }

        v7 = 7;
        goto LABEL_51;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          LOBYTE(v7) = 8;
LABEL_31:
          std::string::operator=(v6, v7);
          return a2 + 1;
        }

        v7 = 8;
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    v7 = v5;
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_51;
  }

  if (*a2 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        LOBYTE(v7) = 12;
        goto LABEL_31;
      }

      v7 = 12;
      goto LABEL_51;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        LOBYTE(v7) = 10;
        goto LABEL_31;
      }

      v7 = 10;
      goto LABEL_51;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          LOBYTE(v7) = 13;
          goto LABEL_31;
        }

        v7 = 13;
        goto LABEL_51;
      case 't':
        if (this)
        {
          v6 = this;
          LOBYTE(v7) = 9;
          goto LABEL_31;
        }

        v7 = 9;
        goto LABEL_51;
      case 'v':
        if (this)
        {
          v6 = this;
          LOBYTE(v7) = 11;
          goto LABEL_31;
        }

        v7 = 11;
LABEL_51:
        sub_29A0D0F08(a1, v7);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xF8) != 0x30)
  {
    goto LABEL_55;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v9 & 0xF8) != 0x30)
    {
      goto LABEL_42;
    }

    v8 = *v9 + 8 * v8 - 48;
    if (a2 + 2 != a3)
    {
      v10 = a2[2];
      v11 = v10 & 0xF8;
      v12 = v10 + 8 * v8 - 48;
      if (v11 == 48)
      {
        v9 = a2 + 3;
      }

      else
      {
        v9 = a2 + 2;
      }

      if (v11 == 48)
      {
        v8 = v12;
      }

      goto LABEL_42;
    }
  }

  v9 = a3;
LABEL_42:
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    sub_29A0D0F08(a1, v8);
  }

  return v9;
}

unsigned __int8 *sub_29A16FC64(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = a2 - v4 + 1;
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

unsigned __int8 *sub_29A16FCE0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 == a3)
      {
        return a3;
      }

      else
      {
        while (1)
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            sub_29A0D45D8();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          if (++a2 == a3)
          {
            return a3;
          }
        }
      }
    }
  }

  return a2;
}

uint64_t sub_29A16FD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a2;
    a2 = sub_29A16FDCC(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

unsigned __int8 *sub_29A16FDCC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_29A16FE68(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v10 = *(a1 + 28) + 1;

  return sub_29A16FF70(a1, v8, a3, v6, v7 + 1, v10);
}

unsigned __int8 *sub_29A16FE68(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a3;
  v6 = sub_29A17013C(a1, a2, a3);
  v7 = v6;
  if (v6 != a2)
  {
    return v6;
  }

  if (a2 == v3 || a2 + 1 == v3 || *v6 != 92)
  {
    return a2;
  }

  v8 = *(a2 + 1);
  if (v8 == 40)
  {
    v9 = a2 + 2;
  }

  else
  {
    v9 = v6;
  }

  if (v9 != a2)
  {
    sub_29A0D07A0(a1);
    v11 = *(a1 + 28);
    v12 = sub_29A16FD80(a1, v9, v3);
    if (v12 != v3)
    {
      if (v12 + 1 == v3 || *v12 != 92)
      {
        goto LABEL_23;
      }

      if (v12[1] == 41)
      {
        v3 = (v12 + 2);
      }

      else
      {
        v3 = v12;
      }
    }

    if (v3 != v12)
    {
      sub_29A0D0818(a1, v11);
      return v3;
    }

LABEL_23:
    sub_29A0CED70();
  }

  v3 = a2 + 2;
  if (!sub_29A0D4FE8(a1, v8))
  {
    return v7;
  }

  return v3;
}

unsigned __int8 *sub_29A16FF70(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  v6 = a2;
  if (a2 != a3)
  {
    v11 = *a2;
    if (v11 == 42)
    {
      sub_29A0D4400(a1, 0, -1, a4, a5, a6, 1);
      return ++v6;
    }

    v13 = a3;
    if (a2 + 1 != a3 && v11 == 92)
    {
      v14 = a2[1] == 123 ? a2 + 2 : a2;
      if (v14 != a2)
      {
        v24 = 0;
        v15 = sub_29A16FCE0(a1, v14, a3, &v24);
        if (v15 == v14)
        {
          goto LABEL_34;
        }

        if (v15 != v13)
        {
          v16 = *v15;
          if (v16 == 44)
          {
            v23 = -1;
            v17 = sub_29A16FCE0(a1, v15 + 1, v13, &v23);
            if (v17 != v13)
            {
              if (v17 + 1 == v13 || *v17 != 92)
              {
                goto LABEL_33;
              }

              if (v17[1] == 125)
              {
                v13 = v17 + 2;
              }

              else
              {
                v13 = v17;
              }
            }

            if (v13 != v17)
            {
              v19 = v23;
              v18 = v24;
              if (v23 == -1)
              {
                v20 = a5;
                v21 = a6;
                v22 = a1;
                v19 = -1;
                goto LABEL_32;
              }

              if (v23 >= v24)
              {
                v20 = a5;
                v21 = a6;
                v22 = a1;
LABEL_32:
                sub_29A0D4400(v22, v18, v19, a4, v20, v21, 1);
                return v13;
              }

LABEL_34:
              sub_29A0D45D8();
            }
          }

          else if (v15 + 1 != v13 && v16 == 92)
          {
            v13 = v15[1] == 125 ? v15 + 2 : v15;
            if (v15 != v13)
            {
              v18 = v24;
              v20 = a5;
              v21 = a6;
              v22 = a1;
              v19 = v24;
              goto LABEL_32;
            }
          }
        }

LABEL_33:
        sub_29A0D4630();
      }
    }
  }

  return v6;
}

unsigned __int8 *sub_29A17013C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_29A17021C(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_29A17028C(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    v8 = operator new(0x10uLL);
    v9 = *(a1 + 56);
    v10 = *(v9 + 8);
    *v8 = &unk_2A203F468;
    v8[1] = v10;
    *(v9 + 8) = v8;
    *(a1 + 56) = *(*(a1 + 56) + 8);
    return ++v6;
  }

  return sub_29A16ED7C(a1, a2, a3);
}

unsigned __int8 *sub_29A17021C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if ((a2 + 1 != a3 || v4 != 36) && ((v4 - 46) > 0x2E || ((1 << (v4 - 46)) & 0x600000000001) == 0))
    {
      sub_29A0D0F08(a1, v4);
      ++v3;
    }
  }

  return v3;
}

unsigned __int8 *sub_29A17028C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3)
  {
    v3 = a2 + 1;
    if (a2 + 1 != a3 && *a2 == 92)
    {
      v4 = *v3;
      if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
      {
        sub_29A0D0F08(a1, v4);
        return v3 + 1;
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_29A170304(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_29A170364(a1, a2, a3);
  if (v6 == a2)
  {
    sub_29A0D4958();
  }

  do
  {
    v7 = v6;
    v6 = sub_29A170364(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned __int8 *sub_29A170364(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_29A1704A8(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        sub_29A0CEBF0(a1);
        break;
      case '(':
        sub_29A0D07A0(a1);
        v11 = *(a1 + 28);
        ++*(a1 + 36);
        v12 = sub_29A16E1BC(a1, v9 + 1, a3);
        if (v12 == a3 || (v9 = v12, *v12 != 41))
        {
          sub_29A0CED70();
        }

        sub_29A0D0818(a1, v11);
        --*(a1 + 36);
        break;
      case '^':
        sub_29A0CEB7C(a1);
        break;
      default:
        goto LABEL_12;
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return a2;
  }

  v13 = *(a1 + 28) + 1;

  return sub_29A16E9CC(a1, v9, a3, v6, v7 + 1, v13);
}

unsigned __int8 *sub_29A1704A8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_29A0D52D0(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_29A170588(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    v8 = operator new(0x10uLL);
    v9 = *(a1 + 56);
    v10 = *(v9 + 8);
    *v8 = &unk_2A203F468;
    v8[1] = v10;
    *(v9 + 8) = v8;
    *(a1 + 56) = *(*(a1 + 56) + 8);
    return ++v6;
  }

  return sub_29A16ED7C(a1, a2, a3);
}

unsigned __int8 *sub_29A170588(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      if ((*(a1 + 24) & 0x1F0) == 0x40)
      {
        return sub_29A16FA84(a1, a2 + 1, a3, 0);
      }

      else if (sub_29A0D4FE8(a1, v4))
      {
        v3 += 2;
      }
    }

    else
    {
      sub_29A0D0F08(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

void sub_29A170644(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29A16DC44();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

uint64_t sub_29A1706C8(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v21 = a1;
  if (v6)
  {
    v9 = sub_29A017BD4(a1, v6);
    v6 = v10;
    v3 = *a1;
    v4 = a1[1];
    v11 = (v4 - *a1) >> 4;
  }

  else
  {
    v9 = 0;
    v11 = v5;
  }

  v12 = &v9[16 * v5];
  v18 = v9;
  v19 = v12;
  *v12 = *a2;
  *a2 = 0;
  *(v12 + 2) = *(a2 + 8);
  *&v20 = v12 + 16;
  *(&v20 + 1) = &v9[16 * v6];
  v13 = &v12[-16 * v11];
  sub_29A1707E8(a1, v3, v4, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29A17089C(&v18);
  return v17;
}

void sub_29A1707D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A17089C(va);
  _Unwind_Resume(a1);
}

void sub_29A1707E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    *a4 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateTree>::_AddRef();
  }
}

void sub_29A170874(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A16DC44();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A17089C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 16;
    sub_29A16DC44();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A1708EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 == v4)
  {
    v6 = (a1 + 40);
    v5 = *(a1 + 8);
  }

  else
  {
    v6 = (a1 + 40);
    v7 = *(a1 + 32);
    v8 = &v4[v7 >> 8];
    v9 = *v8 + 16 * v7;
    v10 = *(v4 + (((*(a1 + 40) + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v7);
    if (v9 != v10)
    {
      do
      {
        v11 = *(v9 + 8);
        if (v11 && atomic_fetch_add_explicit(v11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v11 + 8))(v11);
        }

        v9 += 16;
        if (v9 - *v8 == 4096)
        {
          v12 = v8[1];
          ++v8;
          v9 = v12;
        }
      }

      while (v9 != v10);
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
    }
  }

  *v6 = 0;
  v13 = v5 - v4;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v4);
      v14 = *(a1 + 16);
      v4 = (*(a1 + 8) + 8);
      *(a1 + 8) = v4;
      v13 = (v14 - v4) >> 3;
    }

    while (v13 > 2);
  }

  if (v13 == 1)
  {
    v15 = 128;
    goto LABEL_17;
  }

  if (v13 == 2)
  {
    v15 = 256;
LABEL_17:
    *(a1 + 32) = v15;
  }

  sub_29A170A5C(a1);
  result = sub_29A170C20(a1, a2);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_29A170A5C(void **a1)
{
  if (a1[5])
  {
    sub_29A170AE0(a1, 0);
    sub_29A153BF4(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_29A170B40(a1);
}

uint64_t sub_29A170AE0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void sub_29A170B40(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 == v3)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = sub_29A00C9BC(a1, (v1 - v3) >> 3);
      v2 = *a1;
      v4 = a1[3] - *a1;
    }

    if (v7 < v4 >> 3)
    {
      v8 = a1[1];
      v9 = a1[2] - v8;
      if (v9)
      {
        v10 = v6;
        do
        {
          v11 = *v8++;
          *v10++ = v11;
          v9 -= 8;
        }

        while (v9);
        v8 = a1[1];
        v12 = a1[2];
        v2 = *a1;
      }

      else
      {
        v12 = a1[1];
      }

      *a1 = v6;
      a1[1] = v6;
      a1[2] = v6 + v12 - v8;
      a1[3] = &v6[v7];
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_29A170C20(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_29A170B40(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

unint64_t sub_29A170C88(atomic_ullong *a1)
{
  v2 = sub_29A170D08();
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

pxrInternal__aapl__pxrReserved__::TraceReporterTokens_StaticTokenType *sub_29A170D08()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TraceReporterTokens_StaticTokenType::TraceReporterTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29A170D4C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 16), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29A170DA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceReporterBase::TraceReporterBase(uint64_t result, uint64_t *a2)
{
  *(result + 8) = 1;
  *(result + 16) = 0;
  *result = &unk_2A2041368;
  v2 = *a2;
  *a2 = 0;
  *(result + 24) = v2;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 56) = 0;
  *(result + 48) = 0;
  *(result + 64) = result + 72;
  *(result + 40) = sub_29A17119C;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::TraceReporterBase::SerializeProcessedCollections(void *a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v4 = a1[7];
  __dmb(0xBu);
  v5 = tbb::internal::concurrent_vector_base_v3::internal_capacity((a1 + 5));
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (!v9)
      {
        v10 = sub_29A0EC0EC(v8);
        v11 = a1[8];
        __dmb(0xBu);
        v9 = (*(v11 + 8 * v10) - 32 * ((1 << v10) >> 1) + v7);
      }

      sub_29A017F80(v15, v9);
      v12 = v8 + 1;
      if (((v8 - 1) & (v8 + 1)) != 0)
      {
        ++v9;
      }

      else
      {
        v9 = 0;
      }

      v7 += 16;
      ++v8;
    }

    while (v6 != v12);
  }

  v13 = pxrInternal__aapl__pxrReserved__::TraceSerialization::Write(a2, v15);
  v16 = v15;
  sub_29A0176E4(&v16);
  return v13;
}

void sub_29A170F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A0176E4(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TraceReporterBase::~TraceReporterBase(pxrInternal__aapl__pxrReserved__::TraceReporterBase *this)
{
  *this = &unk_2A2041368;
  sub_29A1711AC(this + 4);
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_29A0F6078(this + 2, v2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceReporterBase::_Clear(pxrInternal__aapl__pxrReserved__::TraceReporterBase *this)
{
  tbb::internal::concurrent_vector_base_v3::internal_clear((this + 40), tbb::concurrent_vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::TraceCollection>,tbb::cache_aligned_allocator<std::shared_ptr<pxrInternal__aapl__pxrReserved__::TraceCollection>>>::destroy_array);
  result = *(this + 3);
  if (result)
  {
    v3 = *(*result + 16);

    return v3();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceReporterBase::_Update(pxrInternal__aapl__pxrReserved__::TraceReporterBase *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 24))(v7);
    v3 = v7[0];
    v4 = v7[1];
    while (v3 != v4)
    {
      (*(*this + 16))(this, v3);
      sub_29A17112C(this + 32, v3, v5, v6);
      v3 += 2;
    }

    v6[0] = v7;
    sub_29A0176E4(v6);
  }
}

void sub_29A17110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A17112C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  result = tbb::internal::concurrent_vector_base_v3::internal_push_back((a1 + 8), 16, &v10, a3);
  v11 = result;
  v7 = a2[1];
  *result = *a2;
  result[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    result = v11;
  }

  v8 = v10;
  *a4 = a1;
  a4[1] = v8;
  a4[2] = result;
  return result;
}

unint64_t *sub_29A1711AC(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::TraceCollection>,tbb::cache_aligned_allocator<std::shared_ptr<pxrInternal__aapl__pxrReserved__::TraceCollection>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::TraceCollection>,tbb::cache_aligned_allocator<std::shared_ptr<pxrInternal__aapl__pxrReserved__::TraceCollection>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (a1 + 16 * a2 - 8);
    do
    {
      if (*v3)
      {
        sub_29A014BEC(*v3);
      }

      v3 -= 2;
      --v2;
    }

    while (v2);
  }
}

void *pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollection::TraceReporterDataSourceCollection(void *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A2041408;
  v3 = a1 + 1;
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_29A1714CC(v3, &v6, &v8, 1uLL);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return a1;
}

void sub_29A171314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceBase::~TraceReporterDataSourceBase(v11);
  _Unwind_Resume(a1);
}

__n128 pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollection::TraceReporterDataSourceCollection(void *a1, __n128 *a2)
{
  *a1 = &unk_2A2041408;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2A2041408;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollection::Clear(pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollection *this)
{
  v1 = *(this + 8);
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = v1;
  v2 = *(this + 3);
  *(this + 3) = 0;
  v5 = v2;
  v6 = &v4;
  sub_29A0176E4(&v6);
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollection::ConsumeData@<Q0>(pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollection *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 8);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *a2 = result;
  v3 = *(this + 3);
  *(this + 3) = 0;
  a2[1].n128_u64[0] = v3;
  return result;
}

void sub_29A171410(void **a1)
{
  *a1 = &unk_2A2041408;
  v2 = a1 + 1;
  sub_29A0176E4(&v2);
  pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceBase::~TraceReporterDataSourceBase(a1);
}

void sub_29A17146C(void **a1)
{
  *a1 = &unk_2A2041408;
  v3 = a1 + 1;
  sub_29A0176E4(&v3);
  pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceBase::~TraceReporterDataSourceBase(a1);
  operator delete(v2);
}

void *sub_29A1714CC(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A171554(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A171534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A171554(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29A1715DC(v7);
  return v4;
}

uint64_t sub_29A1715DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector *pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector::TraceReporterDataSourceCollector(pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector *this)
{
  v3[4] = *MEMORY[0x29EDCA608];
  v3[0] = &unk_2A20414B8;
  v3[1] = sub_29A1716C4;
  v3[3] = v3;
  pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector::TraceReporterDataSourceCollector(this, v3);
  sub_29A171D3C(v3);
  return this;
}

{
  v3[4] = *MEMORY[0x29EDCA608];
  v3[0] = &unk_2A20414B8;
  v3[1] = sub_29A1716C4;
  v3[3] = v3;
  pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector::TraceReporterDataSourceCollector(this, v3);
  sub_29A171D3C(v3);
  return this;
}

void sub_29A1716B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A171D3C(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector::TraceReporterDataSourceCollector(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = &unk_2A2041450;
  sub_29A171CBC((a1 + 2), a2);
  a1[6] = &unk_2A20415E8;
  v4 = tbb::internal::NFS_Allocate(1uLL, 704, 0, v3);
  a1[7] = v4;
  bzero(v4, 0x2C0uLL);
  *(a1[7] + 256) = vdupq_n_s64(0x10uLL);
  a1[6] = &unk_2A2041568;
  sub_29A172088(v7, a1);
  v5 = sub_29A1720FC(v7, pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector::_OnTraceCollection, 0);
  pxrInternal__aapl__pxrReserved__::TfNotice::_Register(v5, v8);
  sub_29B290898(v8, v7);
  return a1;
}

void sub_29A1717D4(_Unwind_Exception *a1)
{
  sub_29A171E8C(v3);
  sub_29A171D3C(v1 + 16);
  sub_29A0F6078(v2, v5);
  pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceBase::~TraceReporterDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29A1718EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A171D3C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector::_OnTraceCollection(pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector *this, const pxrInternal__aapl__pxrReserved__::TraceCollectionAvailable *a2)
{
  v3 = *(this + 5);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  result = (*(*v3 + 48))(v3);
  if (result)
  {
    v6 = *(this + 7);
    add = atomic_fetch_add((v6 + 128), 1uLL);

    return sub_29A17282C((v6 + 40 * ((3 * add) & 7) + 384), a2 + 8, add, this + 6, sub_29A172810);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector::ConsumeData(pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector *this@<X0>, const void **a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::TraceCollector::CreateCollection(v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v21 = 0uLL;
  while (sub_29A172510(this + 48, &v21))
  {
    v6 = a2[1];
    v5 = a2[2];
    if (v6 >= v5)
    {
      v8 = *a2;
      v9 = v6 - *a2;
      v10 = v9 >> 4;
      v11 = (v9 >> 4) + 1;
      if (v11 >> 60)
      {
        sub_29A00C9A4();
      }

      v12 = v5 - v8;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v22[4] = a2;
      if (v13)
      {
        v14 = sub_29A017BD4(a2, v13);
        v13 = v15;
        v8 = *a2;
        v9 = a2[1] - *a2;
      }

      else
      {
        v14 = 0;
      }

      v16 = &v14[16 * v10];
      v17 = &v16[-16 * (v9 >> 4)];
      *v16 = v21;
      v7 = v16 + 16;
      v18 = &v14[16 * v13];
      v21 = 0uLL;
      memcpy(v17, v8, v9);
      v19 = *a2;
      *a2 = v17;
      a2[1] = v7;
      v20 = a2[2];
      a2[2] = v18;
      v22[2] = v19;
      v22[3] = v20;
      v22[0] = v19;
      v22[1] = v19;
      sub_29A017C0C(v22);
    }

    else
    {
      *v6 = v21;
      v7 = v6 + 1;
      v21 = 0uLL;
    }

    a2[1] = v7;
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }
}

void sub_29A171B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void sub_29A171B48(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v2 = *(a1 + 8);
    v3 = v2[16];
    __dmb(0xBu);
    v4 = *v2;
    __dmb(0xBu);
    v5 = v2[16];
    __dmb(0xBu);
    if (v3 == v5)
    {
      v6 = v2[34];
      __dmb(0xBu);
      if (v3 == v6 + v4)
      {
        break;
      }
    }

    sub_29A172510(a1, &v7);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A171BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A171BE0(uint64_t *a1)
{
  *a1 = &unk_2A2041450;
  v2 = a1 + 1;
  sub_29A171E8C(a1 + 6);
  sub_29A171D3C((a1 + 2));
  sub_29A0F6078(v2, v3);

  pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceBase::~TraceReporterDataSourceBase(a1);
}

void sub_29A171C4C(uint64_t *a1)
{
  *a1 = &unk_2A2041450;
  v2 = a1 + 1;
  sub_29A171E8C(a1 + 6);
  sub_29A171D3C((a1 + 2));
  sub_29A0F6078(v2, v3);
  pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceBase::~TraceReporterDataSourceBase(a1);

  operator delete(v4);
}

uint64_t sub_29A171CBC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_29A171D3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_29A171DC4(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A20414B8;
  result[1] = v3;
  return result;
}

uint64_t sub_29A171E0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A20414B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A171E40(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2041538))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A171E8C(void *a1)
{
  *a1 = &unk_2A2041568;
  sub_29A171B48(a1);
  sub_29A171EEC(a1);

  return sub_29A171F6C(a1, v2);
}

uint64_t sub_29A171EEC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 8) + 400;
  do
  {
    v4 = *(v3 + v2);
    __dmb(0xBu);
    if (v4 >= 2)
    {
      result = (*(*v1 + 24))(v1);
      __dmb(0xBu);
      *(v3 + v2) = 0;
    }

    v2 += 40;
  }

  while (v2 != 320);
  return result;
}

uint64_t sub_29A171F6C(uint64_t a1, void *a2)
{
  *a1 = &unk_2A20415E8;
  tbb::internal::NFS_Free(*(a1 + 8), a2);
  return a1;
}

void sub_29A171FB8(void *a1)
{
  v1 = sub_29A171E8C(a1);

  operator delete(v1);
}

uint64_t sub_29A172040(int a1, tbb::internal *this, uint64_t a3, void *a4)
{
  v4 = tbb::internal::NFS_Allocate(this, 1, 0, a4);
  if (!v4)
  {
    tbb::internal::throw_exception_v4(1);
  }

  return v4;
}

void *sub_29A172088(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 8), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29A1720E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1720FC(void *a1, uint64_t a2, uint64_t a3)
{
  *&v8 = a2;
  *(&v8 + 1) = a3;
  v4 = operator new(0x68uLL);
  v7[0] = &unk_2A203F7A8;
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v6);
  sub_29B2904D8(v4, a1, &v8, v7);
  (*v7[0])(v7);
  return v4;
}

void sub_29A1721AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void))
{
  (*a11)(&a11);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1721E8(uint64_t a1, const std::type_info *a2)
{
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v12);
  if (v12[0] == v2)
  {
    v12[0] = "tf/notice.h";
    v12[1] = "GetNoticeType";
    v12[2] = 614;
    v12[3] = "virtual TfType pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector>, pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr, void (pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector::*)(const pxrInternal__aapl__pxrReserved__::TraceCollectionAvailable &), pxrInternal__aapl__pxrReserved__::TraceCollectionAvailable>>::GetNoticeType() const [Derived = pxrInternal__aapl__pxrReserved__::TfNotice::_Deliverer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector>, pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr, void (pxrInternal__aapl__pxrReserved__::TraceReporterDataSourceCollector::*)(const pxrInternal__aapl__pxrReserved__::TraceCollectionAvailable &), pxrInternal__aapl__pxrReserved__::TraceCollectionAvailable>]";
    v13 = 0;
    v14 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((off_2A2041198 & 0x7FFFFFFFFFFFFFFFLL), &v8);
    v3 = std::string::insert(&v8, 0, "notice type ");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v9, " undefined in the TfType system");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v11 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v12, __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  return v2;
}

void sub_29A172308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A172354(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = (*(*a1 + 24))(a1);
  result = pxrInternal__aapl__pxrReserved__::TfType::IsA(a2, v6);
  if (result)
  {
    IsInvalid = pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::IsInvalid((a1 + 56));
    result = 0;
    if (a3)
    {
      if ((IsInvalid & 1) == 0)
      {
        return pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::GetWeakBase((a1 + 56)) == a3;
      }
    }
  }

  return result;
}

uint64_t sub_29A1723E0(uint64_t a1)
{
  if (!pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::operator BOOL(a1 + 56))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr::GetWeakBase((a1 + 56));
}

void *sub_29A172430(uint64_t a1)
{
  v2 = operator new(0x68uLL);
  (*(*a1 + 24))(a1);
  sub_29B2904D8(v2, (a1 + 40), (a1 + 88), a1 + 56);
  return v2;
}

void sub_29A1724C0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B290920();
}

BOOL sub_29A172510(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *v4;
    __dmb(0xBu);
    v6 = v4[16];
    __dmb(0xBu);
    v7 = v6 - v5;
    v8 = v7 > 0;
LABEL_3:
    if (v7 < 1)
    {
      return 0;
    }

    while (1)
    {
      v9 = v5;
      atomic_compare_exchange_strong(v4, &v9, v5 + 1);
      if (v9 == v5)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v4, 0, memory_order_relaxed);
      if (add_explicit != v5)
      {
        v11 = v4[16];
        __dmb(0xBu);
        v7 = v11 - add_explicit;
        v5 = add_explicit;
        goto LABEL_3;
      }
    }

    if (sub_29A1725D0(&v4[5 * ((3 * v5) & 7) + 48], a2, v5, a1))
    {
      return v8;
    }
  }
}

BOOL sub_29A1725D0(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a3 & 0xFFFFFFFFFFFFFFF8;
  v9 = a1[1];
  __dmb(0xBu);
  if (v9 != (a3 & 0xFFFFFFFFFFFFFFF8))
  {
    while (1)
    {
      v12 = a1[1];
      __dmb(0xBu);
      if (v12 == v8)
      {
        break;
      }

      sched_yield();
    }
  }

  v10 = a1[3];
  __dmb(0xBu);
  if (v10 == v8)
  {
    while (1)
    {
      v11 = a1[3];
      __dmb(0xBu);
      if (v11 != v8)
      {
        break;
      }

      sched_yield();
    }
  }

  v13 = *a1;
  __dmb(0xBu);
  v14 = *(a4 + 8);
  v15 = *(v14 + 256) - 1;
  v16 = v15 & (a3 >> 3);
  if (v16 == v15)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v20[0] = v8 + 8;
  v20[1] = a1;
  v20[2] = v17;
  v20[3] = a4;
  v18 = *(v13 + 8) & (1 << v16);
  if (v18)
  {
    sub_29A1726EC(a1, a2, v13, v16);
  }

  else
  {
    atomic_fetch_add((v14 + 272), 0xFFFFFFFFFFFFFFFFLL);
  }

  sub_29A172748(v20);
  return v18 != 0;
}

void sub_29A1726EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + 16 * a4;
  v6 = *(v4 + 16);
  v5 = (v4 + 16);
  *v5 = 0;
  v5[1] = 0;
  v7 = *(a2 + 8);
  *a2 = v6;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = v5[1];
  if (v8)
  {

    sub_29A014BEC(v8);
  }
}

uint64_t *sub_29A172748(uint64_t *a1)
{
  v2 = a1[2];
  if (v2 < 2)
  {
    v10 = *a1;
    v9 = a1[1];
    __dmb(0xBu);
    *(v9 + 8) = v10;
  }

  else
  {
    sub_29A0EB5BC(&v12, a1[1] + 32);
    v3 = *v2;
    v4 = a1[1];
    __dmb(0xBu);
    *v4 = v3;
    if (v3 <= 1)
    {
      v5 = a1[1];
      __dmb(0xBu);
      *(v5 + 16) = 0;
    }

    v6 = v12;
    if (v12)
    {
      __dmb(0xBu);
      *v6 = 0;
    }

    v8 = *a1;
    v7 = a1[1];
    __dmb(0xBu);
    *(v7 + 8) = v8;
    (*(*a1[3] + 24))(a1[3], v2);
  }

  return a1;
}

void *sub_29A172810(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A17282C(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, uint64_t))
{
  v9 = a3 & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(a4[1] + 256) - 1) & (a3 >> 3);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*a4 + 16))(a4);
    *v11 = 0;
    v11[1] = 0;
  }

  v12 = a1[3];
  __dmb(0xBu);
  if (v12 != v9)
  {
    sub_29A172A58(a1, a1 + 3, v9, a4[1]);
  }

  if (v11)
  {
    sub_29A0EB5BC(&v16, (a1 + 4));
    v13 = a1[2];
    __dmb(0xBu);
    if (v13 < 2)
    {
      __dmb(0xBu);
      *a1 = v11;
    }

    else
    {
      *v13 = v11;
    }

    __dmb(0xBu);
    a1[2] = v11;
    v14 = v16;
    if (v16)
    {
      __dmb(0xBu);
      *v14 = 0;
    }
  }

  else
  {
    v11 = a1[2];
    __dmb(0xBu);
  }

  result = a5(&v11[2 * v10 + 2], a2);
  v11[1] |= 1 << v10;
  atomic_fetch_add(a1 + 3, 8uLL);
  return result;
}

void sub_29A172970(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_fetch_add((*(v1 + 8) + 272), 1uLL);
  sub_29A1729DC(v2, v3);
}

void sub_29A1729DC(void *a1, uint64_t a2)
{
  sub_29A0EB5BC(&v6, (a1 + 4));
  __dmb(0xBu);
  a1[3] = a2 + 9;
  v4 = a1[2];
  __dmb(0xBu);
  if (v4 < 2)
  {
    __dmb(0xBu);
    *a1 = 1;
  }

  else
  {
    *v4 = 1;
  }

  __dmb(0xBu);
  a1[2] = 1;
  v5 = v6;
  if (v6)
  {
    __dmb(0xBu);
    *v5 = 0;
  }

  __cxa_rethrow();
}

uint64_t sub_29A172A58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = sched_yield();
  v8 = *a2;
  __dmb(0xBu);
  if (v8 != a3)
  {
    v9 = (a4 + 272);
    do
    {
      if (v8)
      {
        atomic_fetch_add(v9, 1uLL);
        tbb::internal::throw_exception_v4(2);
      }

      result = sched_yield();
      v8 = *a2;
      __dmb(0xBu);
    }

    while (v8 != a3);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::TraceSerialization::Write(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!*a2)
  {
    return 0;
  }

  v3 = a2[1];
  v8 = *a2;
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v6, 0, sizeof(v6));
  sub_29A1714CC(v6, &v8, &v10, 1uLL);
  v4 = pxrInternal__aapl__pxrReserved__::TraceSerialization::Write(a1, v6);
  v7 = v6;
  sub_29A0176E4(&v7);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  return v4;
}

{
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v10);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7[0] = "trace/serialization.cpp";
    v7[1] = "Write";
    v7[2] = 38;
    v7[3] = "static BOOL pxrInternal__aapl__pxrReserved__::TraceSerialization::Write(std::ostream &, const std::vector<std::shared_ptr<TraceCollection>> &)";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(v9, "Writing JSON", v7);
    pxrInternal__aapl__pxrReserved__::JsWriter::JsWriter(v7, a1, 0);
    pxrInternal__aapl__pxrReserved__::Trace_JSONSerialization::WriteCollectionsToJSON();
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  return v4 != v5;
}

void sub_29A172B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_29A0176E4(&a13);
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  _Unwind_Resume(a1);
}

void sub_29A172C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, uint64_t *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::JsWriter::~JsWriter(va);
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(va1);
  v4 = *(v2 - 40);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TraceSerialization::Read(void *a1@<X0>, uint64_t a2@<X1>, uint64_t ***a3@<X8>)
{
  v12 = 0u;
  v13 = 0u;
  pxrInternal__aapl__pxrReserved__::JsParseStream(a1, &v12, v10);
  if (pxrInternal__aapl__pxrReserved__::JsValue::IsNull(v10))
  {
    if (a2)
    {
      v7 = &v12 + 8;
      if (v13 < 0)
      {
        v7 = *(&v12 + 1);
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Error parsing JSON\nline: %d, col: %d ->\n\t%s.\n", v5, v6, v12, DWORD1(v12), v7);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v8;
      *(a2 + 16) = v9;
    }

    *a3 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Trace_JSONSerialization::CollectionFromJSON(v10, a3);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(*(&v12 + 1));
  }
}

void sub_29A172D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (*(v16 - 17) < 0)
  {
    operator delete(*(v16 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::TraceStaticKeyData::operator==(const char **a1, const char **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 != v5)
  {
    v6 = !v4 || v5 == 0;
    if (v6 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  v7 = a1[1];
  v8 = a2[1];
  if (v7 != v8)
  {
    v9 = !v7 || v8 == 0;
    if (v9 || strcmp(v7, v8))
    {
      return 0;
    }
  }

  v11 = a1[2];
  v12 = a2[2];
  if (v11 == v12)
  {
    return 1;
  }

  result = 0;
  if (v11)
  {
    if (v12)
    {
      return strcmp(a1[2], v12) == 0;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceStaticKeyData::GetString(pxrInternal__aapl__pxrReserved__::TraceStaticKeyData *this@<X0>, uint64_t a2@<X8>)
{
  v22[2] = *MEMORY[0x29EDCA608];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *this;
  if (*this && *(this + 1))
  {
    if (*(this + 2))
    {
      sub_29A008E78(v17, v4);
      sub_29A008E78(&__p, *(this + 1));
      pxrInternal__aapl__pxrReserved__::ArchGetPrettierFunctionName(v17, &__p, &v19);
      v5 = std::string::append(&v19, " (");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v20.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v20, *(this + 2));
      v8 = *&v7->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = std::string::append(&v21, ")");
      v10 = v9->__r_.__value_.__r.__words[0];
      v22[0] = v9->__r_.__value_.__l.__size_;
      *(v22 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
      v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v12 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
      *(a2 + 15) = *(v22 + 7);
      v13 = v22[0];
      *a2 = v10;
      *(a2 + 8) = v13;
      *(a2 + 23) = v11;
      if (v12 < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v18 < 0)
      {
        v14 = v17[0];
LABEL_20:
        operator delete(v14);
      }
    }

    else
    {
      sub_29A008E78(&v20, v4);
      sub_29A008E78(&v19, *(this + 1));
      pxrInternal__aapl__pxrReserved__::ArchGetPrettierFunctionName(&v20, &v19, &v21);
      v15 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
      *a2 = v21;
      *(&v21.__r_.__value_.__s + 23) = 0;
      v21.__r_.__value_.__s.__data_[0] = 0;
      if (v15 < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        v14 = v20.__r_.__value_.__r.__words[0];
        goto LABEL_20;
      }
    }
  }

  else
  {
    MEMORY[0x29C2C1A60](a2, *(this + 2));
  }
}

void sub_29A173054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TraceThreadId *pxrInternal__aapl__pxrReserved__::TraceThreadId::TraceThreadId(pxrInternal__aapl__pxrReserved__::TraceThreadId *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = pthread_self();
  if (pxrInternal__aapl__pxrReserved__::ArchGetMainThreadId(v2) == v2)
  {
    MEMORY[0x29C2C1A60](this, "Main Thread");
  }

  else
  {
    sub_29A00B6DC(&v8);
    v3 = sub_29A00911C(&v8, "Thread ", 7);
    v4 = pthread_self();
    sub_29A0F993C(v3, v4);
    std::stringbuf::str();
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = v6;
    *(this + 2) = v7;
    v8 = *MEMORY[0x29EDC9538];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v9 = MEMORY[0x29EDC9570] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    MEMORY[0x29C2C4390](&v12);
  }

  return this;
}

void sub_29A1732E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A00B848(va);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TraceThreadId::TraceThreadId(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  return __dst;
}

{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  return __dst;
}

BOOL pxrInternal__aapl__pxrReserved__::TraceThreadId::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

BOOL pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v6 = a1[1];
    v7 = *(a2 + 23);
    v4 = a2[1];
    if ((v7 & 0x80000000) == 0)
    {
      v4 = *(a2 + 23);
    }

    if (v6 == v4)
    {
      v5 = v7 >> 63;
      goto LABEL_10;
    }

    v2 = a1[1];
    return v2 < v4;
  }

  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (v4 != v2)
  {
    return v2 < v4;
  }

  v5 = v3 >> 63;
  v6 = *(a1 + 23);
LABEL_10:
  if ((v2 & 0x80000000) == 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  if ((v2 & 0x80000000) != 0)
  {
    a1 = *a1;
  }

  if (v5)
  {
    a2 = *a2;
  }

  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = memcmp(a1, a2, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v8 < v6;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A173F2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F2F0))
  {
    v2 = operator new(0x158uLL);
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v2);
    qword_2A173F2E8 = v2;
    __cxa_guard_release(&qword_2A173F2F0);
  }

  return qword_2A173F2E8;
}

void sub_29A173550(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A173F2F0);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(pxrInternal__aapl__pxrReserved__ *this)
{
  if (!atomic_load(&qword_2A173F2F8))
  {
    sub_29B290994();
  }
}

pthread_t *sub_29A1735A8(pthread_t *a1, uint64_t *a2)
{
  v4 = operator new(8uLL);
  std::__thread_struct::__thread_struct(v4);
  v5 = operator new(0x10uLL);
  v6 = *a2;
  *v5 = v4;
  v5[1] = v6;
  v9 = v5;
  v7 = pthread_create(a1, 0, sub_29A173678, v5);
  if (v7)
  {
    std::__throw_system_error(v7, "thread constructor failed");
    __break(1u);
    JUMPOUT(0x29A173644);
  }

  v9 = 0;
  sub_29A1736E0(&v9);
  return a1;
}

void sub_29A173678(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  while (1)
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(*(a1 + 8));
    __ns.__rep_ = 50000000;
    std::this_thread::sleep_for (&__ns);
  }
}

uint64_t **sub_29A1736E0(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_29A173724(v2, 0);
    operator delete(v2);
  }

  return a1;
}

void sub_29A173724(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = MEMORY[0x29C2C2020]();

    operator delete(v4);
  }
}

pxrInternal__aapl__pxrReserved__::WorkDispatcher *pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(pxrInternal__aapl__pxrReserved__::WorkDispatcher *this, uint64_t a2, uint64_t a3, void *a4)
{
  *this = 0;
  *(this + 16) = 327683;
  *(this + 42) = 55;
  tbb::task_group_context::init(this, a2, a3, a4);
  *(this + 264) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 37) = 0;
  *(this + 36) = 0;
  *(this + 38) = this + 312;
  *(this + 35) = sub_29A173B68;
  atomic_store(0, this + 336);
  v7 = this;
  v5 = tbb::internal::allocate_root_with_context_proxy::allocate(&v7, 8uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A203ACB0;
  *(this + 32) = v5;
  *(v5 - 3) = 1;
  return this;
}

void sub_29A17381C(_Unwind_Exception *a1)
{
  sub_29A173B78(v1 + 34);
  tbb::task_group_context::~task_group_context(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(pxrInternal__aapl__pxrReserved__::WorkDispatcher *this)
{
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(this);
  tbb::interface5::internal::task_base::destroy(*(this + 32), v2);
  sub_29A173B78(this + 34);

  tbb::task_group_context::~task_group_context(this);
}

unint64_t pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(pxrInternal__aapl__pxrReserved__::WorkDispatcher *this)
{
  result = (*(**(*(this + 32) - 40) + 8))(*(*(this + 32) - 40), *(this + 32), 0);
  if ((atomic_exchange(this + 336, 1u) & 1) == 0)
  {
    if (tbb::task_group_context::is_group_execution_cancelled(this))
    {
      tbb::task_group_context::reset(this);
    }

    v3 = *(this + 37);
    __dmb(0xBu);
    v4 = tbb::internal::concurrent_vector_base_v3::internal_capacity((this + 280));
    if (v4 >= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        if (!v8)
        {
          v9 = sub_29A0EC0EC(v7);
          v10 = *(this + 38);
          __dmb(0xBu);
          v8 = (*(v10 + 8 * v9) - 48 * ((1 << v9) >> 1) + v6);
        }

        if (*(v8 + 2))
        {
          pxrInternal__aapl__pxrReserved__::TfErrorTransport::_PostImpl(v8);
        }

        v11 = v7 + 1;
        if (((v7 - 1) & (v7 + 1)) != 0)
        {
          v8 = (v8 + 24);
        }

        else
        {
          v8 = 0;
        }

        v6 += 24;
        ++v7;
      }

      while (v5 != v11);
    }

    result = tbb::internal::concurrent_vector_base_v3::internal_clear((this + 280), tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfErrorTransport,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::TfErrorTransport>>::destroy_array);
    atomic_store(0, this + 336);
    atomic_store(0, this + 264);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(unint64_t *a1, uint64_t a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v12 = 0;
  v5 = sub_29A0ED084((v4 + 152), &v12);
  v6 = sub_29A0FE7E0(a1, 0);
  v12 = 0;
  v7 = sub_29A0ED084((v4 + 152), &v12);
  sub_29A173B14(v11, v5, v6, v7);
  v8 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a2 + 8), 1uLL, 0x18, tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfErrorTransport,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::TfErrorTransport>>::initialize_array, 0);
  v9 = sub_29A0EC0EC(v8);
  v10 = *(a2 + 32);
  __dmb(0xBu);
  sub_29A1180F8((*(v10 + 8 * v9) + 24 * (v8 - ((1 << v9) & 0x1FFFFFFFFFFFFFFELL))), v11);
  sub_29A0F9490(v11);
}

uint64_t *sub_29A173B14(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_29A117E88(a1, a1, a2, a3, a4);
  return a1;
}

unint64_t *sub_29A173B78(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfErrorTransport,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::TfErrorTransport>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfErrorTransport,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::TfErrorTransport>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (a1 + 24 * a2 - 24);
    do
    {
      sub_29A0F9490(v3);
      v3 -= 3;
      --v2;
    }

    while (v2);
  }
}

void *tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfErrorTransport,tbb::cache_aligned_allocator<pxrInternal__aapl__pxrReserved__::TfErrorTransport>>::initialize_array(void *result, uint64_t a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    *result = result;
    result[1] = result;
    result[2] = 0;
    result += 3;
  }

  return result;
}

void sub_29A173C3C()
{
  if (!atomic_load(PXR_WORK_THREAD_LIMIT))
  {
    sub_29B290A44();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Work_InitializeThreading(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = sub_29A173CD4(this);
  result = tbb::task_scheduler_init::default_num_threads(v1);
  if (v1)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    result = tbb::task_scheduler_init::initialize(v3, v1, 1, v4, v5);
    qword_2A173F300 = v3;
  }

  return result;
}

uint64_t sub_29A173CD4(tbb::task_scheduler_init *a1)
{
  v1 = atomic_load(PXR_WORK_THREAD_LIMIT);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
  }

  if ((*v1 & 0x80000000) == 0)
  {
    return *v1;
  }

  v2 = *v1;
  v4 = tbb::task_scheduler_init::default_num_threads(a1) + v2;
  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::WorkSetConcurrencyLimit(pxrInternal__aapl__pxrReserved__ *this)
{
  if (this)
  {
    LODWORD(v1) = this;
    v2 = sub_29A173CD4(this);
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v1 = v1;
    }
  }

  else
  {
    v1 = tbb::interface7::internal::task_arena_base::internal_max_concurrency(0);
  }

  if (qword_2A173F300)
  {
    tbb::task_scheduler_init::terminate(qword_2A173F300, v3, v4, v5, v6);
    v10 = qword_2A173F300;

    return tbb::task_scheduler_init::initialize(v10, v1, v7, v8, v9);
  }

  else
  {
    v12 = operator new(8uLL);
    *v12 = 0;
    result = tbb::task_scheduler_init::initialize(v12, v1, 1, v13, v14);
    qword_2A173F300 = v12;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::WorkSetMaximumConcurrencyLimit(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = tbb::task_scheduler_init::default_num_threads(this);

  return pxrInternal__aapl__pxrReserved__::WorkSetConcurrencyLimit(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::WorkSetConcurrencyLimitArgument(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = this;
  if ((this & 0x80000000) != 0)
  {
    v2 = tbb::task_scheduler_init::default_num_threads(this) + this;
    if (v2 <= 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v2;
    }
  }

  return pxrInternal__aapl__pxrReserved__::WorkSetConcurrencyLimit(v1);
}

void sub_29A173E8C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::WORK_SYNCHRONIZE_ASYNC_DESTROY_CALLS))
  {
    sub_29B290A78();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::WORK_SYNCHRONIZE_ASYNC_DESTROY_CALLS);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  return *v1;
}

void sub_29A173F08()
{
  memset(v29, 0, sizeof(v29));
  v26 = 0;
  v27 = 0;
  v28 = 0;
  memset(&__p, 0, sizeof(__p));
  if (!pxrInternal__aapl__pxrReserved__::ArchGetAddressInfo(sub_29A173F08, &__p, 0, 0, 0))
  {
    v0 = v27;
    if (v27 >= v28)
    {
      v1 = sub_29A1744A4(&v26, "Failed to determine absolute path for Plug search using using ArchGetAddressInfo().  This is expected if pxr is linked as a static library.\n");
    }

    else
    {
      sub_29A008E78(v27, "Failed to determine absolute path for Plug search using using ArchGetAddressInfo().  This is expected if pxr is linked as a static library.\n");
      v1 = v0 + 24;
    }

    v27 = v1;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v3 = v27;
    if (v27 >= v28)
    {
      v4 = sub_29A1745C4(&v26, "Using ArchGetExecutablePath() to determine absolute path for Plug search location.\n");
    }

    else
    {
      sub_29A008E78(v27, "Using ArchGetExecutablePath() to determine absolute path for Plug search location.\n");
      v4 = v3 + 24;
    }

    v27 = v4;
    pxrInternal__aapl__pxrReserved__::ArchGetExecutablePath(&v30);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v30;
  }

  pxrInternal__aapl__pxrReserved__::TfGetPathName(&__p, &v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v30;
  p_p = &__p;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Plug will search for plug infos under '%s'\n", v5, v6, p_p);
  v8 = v27;
  if (v27 >= v28)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    if (0x5555555555555556 * ((v28 - v26) >> 3) > v11)
    {
      v11 = 0x5555555555555556 * ((v28 - v26) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v28 - v26) >> 3) >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    v32 = &v26;
    if (v12)
    {
      v13 = sub_29A012C48(&v26, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[24 * v10];
    v15 = &v13[24 * v12];
    v16 = *v23;
    *(v14 + 2) = v24;
    *v14 = v16;
    v23[1] = 0;
    v24 = 0;
    v23[0] = 0;
    v17 = v14 + 24;
    v18 = &v14[-(v27 - v26)];
    memcpy(v18, v26, v27 - v26);
    v19 = v26;
    v20 = v28;
    v26 = v18;
    v27 = v17;
    v28 = v15;
    v30.__r_.__value_.__r.__words[2] = v19;
    v31 = v20;
    v30.__r_.__value_.__r.__words[0] = v19;
    v30.__r_.__value_.__l.__size_ = v19;
    sub_29A01FF14(&v30);
    v27 = v17;
  }

  else
  {
    v9 = *v23;
    *(v27 + 2) = v24;
    *v8 = v9;
    v27 = v8 + 24;
  }

  sub_29A008E78(v23, "PXR_PLUGINPATH_NAME");
  sub_29A008E78(v21, "");
  pxrInternal__aapl__pxrReserved__::TfGetenv(v23, v21, &v30);
  sub_29A174368(v29, &v30, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  sub_29A008E78(&v30, "usd");
  sub_29A174368(v29, &v30, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v30, "../plugin/usd");
  sub_29A174368(v29, &v30, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Plug_SetPaths(v29, &v26, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v30.__r_.__value_.__r.__words[0] = &v26;
  sub_29A012C90(&v30);
  v30.__r_.__value_.__r.__words[0] = v29;
  sub_29A012C90(&v30);
}

void sub_29A174298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30)
{
  v32 = v30;
  a30 = v32;
  if (a28 < 0)
  {
    operator delete(__p);
  }

  __p = &a29;
  sub_29A012C90(&__p);
  a29 = v31 - 96;
  sub_29A012C90(&a29);
  _Unwind_Resume(a1);
}

void sub_29A174368(const void **a1, std::string *a2, const void **a3)
{
  sub_29A008E78(__p, ":");
  pxrInternal__aapl__pxrReserved__::TfStringSplit(a2, __p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v10[0];
  v7 = v10[1];
  while (v6 != v7)
  {
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v6 + 8))
      {
        goto LABEL_13;
      }
    }

    else if (!*(v6 + 23))
    {
      goto LABEL_13;
    }

    if (!pxrInternal__aapl__pxrReserved__::TfIsRelativePath(v6))
    {
      sub_29A070BA0(a1);
    }

    pxrInternal__aapl__pxrReserved__::TfStringCatPaths(a3, v6, __p);
    sub_29A091654(a1, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_13:
    v6 += 24;
  }

  __p[0] = v10;
  sub_29A012C90(__p);
}

void sub_29A174454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1744A4(uint64_t a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[24 * v2];
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29A1745B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29A1745C4(uint64_t a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[24 * v2];
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29A1746D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Plug_SetUSDLibInitEntitlements(void *a1)
{
  sub_29A1747C8();
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    do
    {
      if (*(v3 + 55) < 0)
      {
        sub_29A008D14(__p, v3[4], v3[5]);
      }

      else
      {
        *__p = *(v3 + 2);
        v9 = v3[6];
      }

      sub_29A095658(&qword_2A173F310, __p, __p);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }
}

void sub_29A1747AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1747C8()
{
  if ((atomic_load_explicit(&qword_2A173F308, memory_order_acquire) & 1) == 0)
  {
    sub_29B290AAC();
  }
}

BOOL pxrInternal__aapl__pxrReserved__::Plug_RegistrationMetadata::PassesEntitlementCheck(pxrInternal__aapl__pxrReserved__::Plug_RegistrationMetadata *this)
{
  sub_29A1747C8();
  v2 = *(this + 19);
  v3 = *(this + 20);
  if (v2 == v3)
  {
LABEL_4:
    if (*(this + 17) == *(this + 16))
    {
      return 1;
    }

    v4 = SecTaskCreateFromSelf(0);
    if (!v4 && sub_29A174A74(0))
    {
      v7 = (this + 8);
      if (*(this + 31) < 0)
      {
        v7 = *v7;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Failed to fetch entitlement task for %s\n", v5, v6, v7);
    }

    v8 = *(this + 16);
    v27 = *(this + 17);
    error = 0;
    if (v8 == v27)
    {
      v12 = 0;
      goto LABEL_44;
    }

    v9 = *MEMORY[0x29EDB8ED8];
LABEL_12:
    v11 = *v8;
    v10 = v8[1];
    v12 = *v8 == v10;
    if (*v8 == v10)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v13 = sub_29A01BCCC(&qword_2A173F310, v11);
      if (v4 && v13 == &qword_2A173F318)
      {
        v14 = v11;
        if (*(v11 + 23) < 0)
        {
          v14 = *v11;
        }

        v15 = CFStringCreateWithCString(v9, v14, 0x8000100u);
        v16 = SecTaskCopyValueForEntitlement(v4, v15, &error);
        CFRelease(v15);
        if (!v16)
        {
          if (!error)
          {
            goto LABEL_36;
          }

          if (sub_29A174A74(0))
          {
            if (*(v11 + 23) < 0)
            {
              v11 = *v11;
            }

            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Failed to check entitlement %s\n", v19, v20, v11);
          }

          v21 = error;
LABEL_35:
          CFRelease(v21);
LABEL_36:
          v8 += 3;
          if (v8 == v27)
          {
LABEL_44:
            CFRelease(v4);
            return v12;
          }

          goto LABEL_12;
        }

        v17 = CFGetTypeID(v16);
        if (v17 != CFBooleanGetTypeID())
        {
          if (sub_29A174A74(0))
          {
            if (*(v11 + 23) < 0)
            {
              v11 = *v11;
            }

            pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Entitlement is not a BOOLean %s\n", v22, v23, v11);
          }

          v21 = v16;
          goto LABEL_35;
        }

        Value = CFBooleanGetValue(v16);
        CFRelease(v16);
        if (!Value)
        {
          goto LABEL_36;
        }
      }

      else if (v13 == &qword_2A173F318)
      {
        goto LABEL_36;
      }

      v11 += 3;
      if (v11 == v10)
      {
        v12 = 1;
        goto LABEL_44;
      }
    }
  }

  while (sub_29A01BCCC(&qword_2A173F310, v2) == &qword_2A173F318)
  {
    v2 += 3;
    if (v2 == v3)
    {
      goto LABEL_4;
    }
  }

  v12 = 0;
  if (sub_29A174A74(0))
  {
    if (*(v2 + 23) < 0)
    {
      v2 = *v2;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Found superseding entitlement %s. Disabling this plugin.\n", v24, v25, v2);
    return 0;
  }

  return v12;
}

BOOL sub_29A174A74(int a1)
{
  v2 = sub_29A174B04();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29A174B04();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F2954A8[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

uint64_t sub_29A174B04()
{
  if ((atomic_load_explicit(&qword_2A14F68E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F68E8))
  {
    v1 = operator new(0x10uLL);
    *v1 = 0;
    v1[1] = 0;
    qword_2A14F68E0 = v1;
    __cxa_guard_release(&qword_2A14F68E8);
  }

  return qword_2A14F68E0;
}

void sub_29A174B80()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2041690, 0, "PLUG_LOAD", 0);
  v0 = sub_29A174B04();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "PLUG_LOAD", "Plugin loading");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2041690, 1, "PLUG_REGISTRATION", 0);
  v1 = sub_29A174B04();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "PLUG_REGISTRATION", "Plugin registration");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2041690, 2, "PLUG_LOAD_IN_SECONDARY_THREAD", 0);
  v2 = sub_29A174B04();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 8, "PLUG_LOAD_IN_SECONDARY_THREAD", "Plugins loaded from non-main threads");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2041690, 3, "PLUG_INFO_SEARCH", 0);
  v3 = sub_29A174B04() + 12;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3, "PLUG_INFO_SEARCH", "Plugin info file search");
}

uint64_t pxrInternal__aapl__pxrReserved__::GetEmbeddedPlugInfo@<X0>(uint64_t a1@<X8>)
{
  v241 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A173F350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F350))
  {
    v4 = a1;
    sub_29A008E78(__src, "aaplHttpResolver");
    if (SHIBYTE(v99) < 0)
    {
      sub_29A008D14(&__dst, __src[0], __src[1]);
    }

    else
    {
      __dst = *__src;
      v101 = v99;
    }

    v102 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    AaplHttpResolver: {\n                        bases: [ArResolver],\n                        uriSchemes: [http, https]\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: aaplHttpResolver,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library,\n            Entitlements: [[com.apple.private.usd.enablehttp-resolver]]\n        }\n    ]\n}\n";
    sub_29A008E78(&v96, "aaplUsdGclCodec");
    if (SHIBYTE(v97) < 0)
    {
      sub_29A008D14(&v103, v96, *(&v96 + 1));
    }

    else
    {
      v103 = v96;
      v104 = v97;
    }

    v105 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    AaplUsdGclCodecFileFormat: {\n                        bases: [\n                            SdfFileFormat\n                        ], \n                        displayName: Apple USD GCL Codec, \n                        extensions: [\n                            gcl, \n                            pmc\n                        ], \n                        formatId: gcl, \n                        primary: true, \n                        target: usd\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: aaplUsdGclCodec, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v94, "aaplUsdInteractive");
    if (SHIBYTE(v95) < 0)
    {
      sub_29A008D14(&v106, v94, *(&v94 + 1));
    }

    else
    {
      v106 = v94;
      v107 = v95;
    }

    v108 = "{\n"
           "    Plugins: [\n"
           "        {\n"
           "            Info: {\n"
           "                Types: {\n"
           "                    UsdInteractivePreliminary_Action: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_Action\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdTyped\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_Action, \n"
           "                        schemaKind: abstractTyped\n"
           "                    }, \n"
           "                    UsdInteractivePreliminary_AnchoringAPI: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_AnchoringAPI\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdAPISchemaBase\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_AnchoringAPI, \n"
           "                        schemaKind: singleApplyAPI\n"
           "                    }, \n"
           "                    UsdInteractivePreliminary_Behavior: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_Behavior\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdTyped\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_Behavior, \n"
           "                        schemaKind: concreteTyped\n"
           "                    }, \n"
           "                    UsdInteractivePreliminary_ReferenceImage: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_ReferenceImage\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdTyped\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_ReferenceImage, \n"
           "                        schemaKind: concreteTyped\n"
           "                    }, \n"
           "                    UsdInteractivePreliminary_Text: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_Text\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdGeomGprim\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_Text, \n"
           "                        schemaKind: concreteTyped\n"
           "                    }, \n"
           "                    UsdInteractivePreliminary_Trigger: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_Trigger\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdTyped\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_Trigger, \n"
           "                        schemaKind: abstractTyped\n"
           "                    }\n"
           "                }\n"
           "            }, \n"
           "            LibraryPath: , \n"
           "            Name: aaplUsdInteractive, \n"
           "            ResourcePath: resources, \n"
           "            Root: .., \n"
           "            Type: library\n"
           "        }\n"
           "    ]\n"
           "}\n";
    sub_29A008E78(&v92, "aaplUsdPhysics");
    if (SHIBYTE(v93) < 0)
    {
      sub_29A008D14(&v109, v92, *(&v92 + 1));
    }

    else
    {
      v109 = v92;
      v110 = v93;
    }

    v111 = "{\n"
           "    Plugins: [\n"
           "        {\n"
           "            Info: {\n"
           "                Types: {\n"
           "                    UsdPhysicsPreliminary_InfiniteColliderPlane: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_InfiniteColliderPlane\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdGeomGprim\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_InfiniteColliderPlane, \n"
           "                        schemaKind: abstractTyped\n"
           "                    }, \n"
           "                    UsdPhysicsPreliminary_PhysicsColliderAPI: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_PhysicsColliderAPI\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdAPISchemaBase\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_PhysicsColliderAPI, \n"
           "                        schemaKind: singleApplyAPI\n"
           "                    }, \n"
           "                    UsdPhysicsPreliminary_PhysicsForce: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_PhysicsForce\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdGeomXformable\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_PhysicsForce, \n"
           "                        schemaKind: abstractTyped\n"
           "                    }, \n"
           "                    UsdPhysicsPreliminary_PhysicsGravitationalForce: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_PhysicsGravitationalForce\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdPhysicsPreliminary_PhysicsForce\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_PhysicsGravitationalForce, \n"
           "                        schemaKind: concreteTyped\n"
           "                    }, \n"
           "                    UsdPhysicsPreliminary_PhysicsMaterialAPI: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_PhysicsMaterialAPI\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdAPISchemaBase\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_PhysicsMaterialAPI, \n"
           "                        schemaKind: singleApplyAPI\n"
           "                    }, \n"
           "                    UsdPhysicsPreliminary_PhysicsRigidBodyAPI: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Preliminary_PhysicsRigidBodyAPI\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdAPISchemaBase\n"
           "                        ], \n"
           "                        schemaIdentifier: Preliminary_PhysicsRigidBodyAPI, \n"
           "                        schemaKind: singleApplyAPI\n"
           "                    }\n"
           "                }\n"
           "            }, \n"
           "            LibraryPath: , \n"
           "            Name: aaplUsdPhysics, \n"
           "            ResourcePath: resources, \n"
           "            Root: .., \n"
           "            Type: library\n"
           "        }\n"
           "    ]\n"
           "}\n";
    sub_29A008E78(&v90, "aaplUsdSplats");
    if (SHIBYTE(v91) < 0)
    {
      sub_29A008D14(&v112, v90, *(&v90 + 1));
    }

    else
    {
      v112 = v90;
      v113 = v91;
    }

    v114 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdSplatsPreliminary_GaussianSplatsAPI: {\n                        alias: {\n                            UsdSchemaBase: Preliminary_GaussianSplatsAPI\n                        }, \n                        apiSchemaCanOnlyApplyTo: [\n                            UsdGeomPoints\n                        ], \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: Preliminary_GaussianSplatsAPI, \n                        schemaKind: singleApplyAPI\n                    }, \n                    UsdSplatsPreliminary_SphericalHarmonicsAPI: {\n                        alias: {\n                            UsdSchemaBase: Preliminary_SphericalHarmonicsAPI\n                        }, \n                        apiSchemaCanOnlyApplyTo: [\n                            UsdGeomPoints\n                        ], \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: Preliminary_SphericalHarmonicsAPI, \n                        schemaKind: singleApplyAPI\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: usdSplats, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v88, "appleAnnotation");
    if (SHIBYTE(v89) < 0)
    {
      sub_29A008D14(&v115, v88, *(&v88 + 1));
    }

    else
    {
      v115 = v88;
      v116 = v89;
    }

    v117 = aPluginsInfo_4;
    sub_29A008E78(&v86, "appleCamera");
    if (SHIBYTE(v87) < 0)
    {
      sub_29A008D14(&v118, v86, *(&v86 + 1));
    }

    else
    {
      v118 = v86;
      v119 = v87;
    }

    v120 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    AppleCameraRenderingAPI: {\n                        apiSchemaCanOnlyApplyTo: [\n                            UsdGeomCamera\n                        ], \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: AppleCameraRenderingAPI, \n                        schemaKind: singleApplyAPI\n                    }, \n                    AppleFisheyeCamera: {\n                        autoGenerated: true, \n                        bases: [\n                            UsdGeomCamera\n                        ], \n                        schemaIdentifier: AppleFisheyeCamera, \n                        schemaKind: concreteTyped\n                    }, \n                    AppleImmersiveCamera: {\n                        autoGenerated: true, \n                        bases: [\n                            UsdGeomCamera\n                        ], \n                        schemaIdentifier: AppleImmersiveCamera, \n                        schemaKind: concreteTyped\n                    }, \n                    ApplePanoramicCamera: {\n                        autoGenerated: true, \n                        bases: [\n                            UsdGeomCamera\n                        ], \n                        schemaIdentifier: ApplePanoramicCamera, \n                        schemaKind: concreteTyped\n                    }, \n                    ApplePhysicalCameraAPI: {\n                        apiSchemaCanOnlyApplyTo: [\n                            UsdGeomCamera\n                        ], \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: ApplePhysicalCameraAPI, \n                        schemaKind: singleApplyAPI\n                    }, \n                    AppleSpatialCameraAPI: {\n                        apiSchemaCanOnlyApplyTo: [\n                            UsdGeomCamera\n                        ], \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: AppleSpatialCameraAPI, \n                        schemaKind: singleApplyAPI\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: appleCamera, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v84, "ar");
    if (SHIBYTE(v85) < 0)
    {
      sub_29A008D14(&v121, v84, *(&v84 + 1));
    }

    else
    {
      v121 = v84;
      v122 = v85;
    }

    v123 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    ArResolver: {},\n                    ArDefaultResolver: {\n                        bases: [\n                            ArResolver\n                        ],\n                        implementsContexts: true\n                    },\n                    ArPackageResolver: {}\n                }\n            },\n            LibraryPath: , \n            Name: ar, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v82, "arCustom");
    if (SHIBYTE(v83) < 0)
    {
      sub_29A008D14(&v124, v82, *(&v82 + 1));
    }

    else
    {
      v124 = v82;
      v125 = v83;
    }

    v126 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    ArMemoryResolver: {\n                        bases: [ArResolver],\n                        uriSchemes: [memory]\n                    }\n                }\n            },\n            LibraryPath: , \n            Name: arCustom, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v80, "hdGp");
    if (SHIBYTE(v81) < 0)
    {
      sub_29A008D14(&v127, v80, *(&v80 + 1));
    }

    else
    {
      v127 = v80;
      v128 = v81;
    }

    v129 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    HdGpSceneIndexPlugin: {\n                        bases: [\n                            HdSceneIndexPlugin\n                        ], \n                        displayName:\n                            HdGpGenerativeProceduralResolvingSceneIndex,\n                        loadWithRenderer: ,\n                        priority: 0\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: hdGp, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v78, "hdStorm");
    if (SHIBYTE(v79) < 0)
    {
      sub_29A008D14(&v130, v78, *(&v78 + 1));
    }

    else
    {
      v130 = v78;
      v131 = v79;
    }

    v132 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    HdStormRendererPlugin: {\n                        bases: [\n                            HdRendererPlugin\n                        ],\n                        displayName: GL,\n                        priority: 0\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: hdStorm,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v76, "hgiGL");
    if (SHIBYTE(v77) < 0)
    {
      sub_29A008D14(&v133, v76, *(&v76 + 1));
    }

    else
    {
      v133 = v76;
      v134 = v77;
    }

    v135 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    HgiGL : {\n                        bases: [Hgi]\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: hgiGL,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v74, "hgiMetal");
    if (SHIBYTE(v75) < 0)
    {
      sub_29A008D14(&v136, v74, *(&v74 + 1));
    }

    else
    {
      v136 = v74;
      v137 = v75;
    }

    v138 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    HgiMetal : {\n                        bases: [Hgi]\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: hgiMetal,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v72, "hio");
    if (SHIBYTE(v73) < 0)
    {
      sub_29A008D14(&v139, v72, *(&v72 + 1));
    }

    else
    {
      v139 = v72;
      v140 = v73;
    }

    v141 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                   Hio_OpenEXRImage : {\n                        bases: [HioImage],\n                        imageTypes: [exr],\n                        precedence: 30\n                    },\n                    Hio_StbImage : {\n                        bases: [HioImage],\n                        imageTypes: [bmp, jpg, jpeg, png, tga, hdr],\n                        precedence: 30\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: hio,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v70, "hioImageIO");
    if (SHIBYTE(v71) < 0)
    {
      sub_29A008D14(&v142, v70, *(&v70 + 1));
    }

    else
    {
      v142 = v70;
      v143 = v71;
    }

    v144 = "{\n  Plugins: [\n    {\n      Info: {\n        Types: {\n          HioImageIO_Image : {\n            bases: [HioImage],\n            imageTypes: [tif, tiff, zfile, tx, avif],\n            precedence: 10\n          }\n        }\n      },\n      LibraryPath: ,\n      Name: hioImageIO,\n      ResourcePath: resources,\n      Root: ..,\n      Type: library\n    }\n  ]\n}\n";
    sub_29A008E78(&v68, "ndr");
    if (SHIBYTE(v69) < 0)
    {
      sub_29A008D14(&v145, v68, *(&v68 + 1));
    }

    else
    {
      v145 = v68;
      v146 = v69;
    }

    v147 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    NdrDiscoveryPlugin: {},\n                    _NdrFilesystemDiscoveryPlugin : {\n                        bases: [NdrDiscoveryPlugin],\n                        displayName: Filesystem Discovery\n                    },\n                    NdrParserPlugin: {}\n                }\n            },\n            LibraryPath: , \n            Name: ndr, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v66, "sdf");
    if (SHIBYTE(v67) < 0)
    {
      sub_29A008D14(&v148, v66, *(&v66 + 1));
    }

    else
    {
      v148 = v66;
      v149 = v67;
    }

    v150 = "{\n    Plugins: [\n        {\n            Info: {\n                SdfMetadata: {\n                    payloadAssetDependencies: {\n                        appliesTo: prims,\n                        displayGroup: Pipeline,\n                        type: asset[]\n                    }\n                },\n                Types: {\n                    SdfFileFormat: {\n                        displayName: Sdf file format base class,\n                        target: sdf\n                    },\n                    SdfTextFileFormat: {\n                        bases: [\n                            SdfFileFormat\n                        ],\n                        displayName: Sdf Text File Format,\n                        extensions: [\n                            sdf\n                        ],\n                        formatId: sdf\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: sdf,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v64, "sdrGlslfx");
    if (SHIBYTE(v65) < 0)
    {
      sub_29A008D14(&v151, v64, *(&v64 + 1));
    }

    else
    {
      v151 = v64;
      v152 = v65;
    }

    v153 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    SdrGlslfxParserPlugin: {\n                        bases: [NdrParserPlugin], \n                        displayName: Glslfx-based shader definition parser plugin\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: sdrGlslfx,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v62, "usd");
    if (SHIBYTE(v63) < 0)
    {
      sub_29A008D14(&v154, v62, *(&v62 + 1));
    }

    else
    {
      v154 = v62;
      v155 = v63;
    }

    v156 = aPluginsInfo_16;
    sub_29A008E78(&v60, "usdAbc");
    if (SHIBYTE(v61) < 0)
    {
      sub_29A008D14(&v157, v60, *(&v60 + 1));
    }

    else
    {
      v157 = v60;
      v158 = v61;
    }

    v159 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdAbcAlembicFileFormat: {\n                        bases: [\n                            SdfFileFormat\n                        ],\n                        displayName: USD Alembic File Format,\n                        extensions: [\n                            abc\n                        ],\n                        formatId: abc,\n                        primary: true,\n                        target: usd,\n                        supportsWriting: false,\n                        supportsEditing: false\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: usdAbc,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v58, "usdDeformers");
    if (SHIBYTE(v59) < 0)
    {
      sub_29A008D14(&v160, v58, *(&v58 + 1));
    }

    else
    {
      v160 = v58;
      v161 = v59;
    }

    v162 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdDeformersBlendShape: {\n                        alias: {\n                            UsdSchemaBase: AAPLBlendShape\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdTyped\n                        ], \n                        schemaIdentifier: AAPLBlendShape, \n                        schemaKind: concreteTyped\n                    }, \n                    UsdDeformersDeformableMesh: {\n                        alias: {\n                            UsdSchemaBase: DeformableMesh\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdGeomMesh\n                        ], \n                        schemaIdentifier: DeformableMesh, \n                        schemaKind: concreteTyped\n                    }, \n                    UsdDeformersMorphDeformerAPI: {\n                        alias: {\n                            UsdSchemaBase: MorphDeformerAPI\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: MorphDeformerAPI, \n                        schemaKind: singleApplyAPI\n                    }, \n                    UsdDeformersSkinDeformerAPI: {\n                        alias: {\n                            UsdSchemaBase: SkinDeformerAPI\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: SkinDeformerAPI, \n                        schemaKind: singleApplyAPI\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: usdDeformers, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v56, "usdGeom");
    if (SHIBYTE(v57) < 0)
    {
      sub_29A008D14(&v163, v56, *(&v56 + 1));
    }

    else
    {
      v163 = v56;
      v164 = v57;
    }

    v165 = aPluginsInfo_19;
    sub_29A008E78(&v54, "usdGeomValidators");
    if (SHIBYTE(v55) < 0)
    {
      sub_29A008D14(&v166, v54, *(&v54 + 1));
    }

    else
    {
      v166 = v54;
      v167 = v55;
    }

    v168 = "{\n    Plugins: [\n        {\n            Info: {\n                Validators: {\n                    StageMetadataChecker: {\n                        doc: All stages must declare their 'upAxis' and 'metersPerUnit'.\n                    }, \n                    SubsetFamilies: {\n                        doc: Validates all of the geom subset families authored beneath an Imageable prim., \n                        keywords: [\n                            UsdGeomSubset\n                        ], \n                        schemaTypes: [\n                            UsdGeomImageable\n                        ]\n                    }, \n                    SubsetParentIsImageable: {\n                        doc: Validates that GeomSubset prims are direct descendants of an Imageable prim., \n                        keywords: [\n                            UsdGeomSubset\n                        ], \n                        schemaTypes: [\n                            UsdGeomSubset\n                        ]\n                    }, \n                    keywords: [\n                        UsdGeomValidators\n                    ]\n                }\n            }, \n            LibraryPath: , \n            Name: usdGeomValidators, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v52, "usdGltf");
    if (SHIBYTE(v53) < 0)
    {
      sub_29A008D14(&v169, v52, *(&v52 + 1));
    }

    else
    {
      v169 = v52;
      v170 = v53;
    }

    v171 = "{\n    Plugins: [\n        {\n            Info: {\n                SdfMetadata: {\n                    gltfAssetsPath: {\n                        appliesTo: [ prims ], \n                        displayGroup: Core, \n                        documentation:: Path to store assets to, instead of resolving from the source file, \n                        type: string\n                    }\n                },\n                Types: {\n                    UsdGltfFileFormat: {\n                        bases: [SdfFileFormat],\n                        displayName: GLTF file format,\n                        extensions: [ gltf, glb ],\n                        formatId: gltf,\n                        primary: true,\n                        supportsWriting: false,\n                        supportsEditing: false,\n                        target: usd\n                    },\n                    adobe::usd::GltfResolver : {\n                        bases: [ ArPackageResolver ],\n                        extensions: [ gltf, glb ]\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: usdGltf_plugin,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library,\n            Entitlements: [[com.apple.private.usd.enableusdgltf]]\n        }\n    ]\n}\n";
    sub_29A008E78(&v50, "usdImaging");
    if (SHIBYTE(v51) < 0)
    {
      sub_29A008D14(&v172, v50, *(&v50 + 1));
    }

    else
    {
      v172 = v50;
      v173 = v51;
    }

    v174 = aPluginsInfo_22;
    sub_29A008E78(&v48, "usdImagingGL");
    if (SHIBYTE(v49) < 0)
    {
      sub_29A008D14(&v175, v48, *(&v48 + 1));
    }

    else
    {
      v175 = v48;
      v176 = v49;
    }

    v177 = "{\n    Plugins: [\n        {\n            Info : {},\n            LibraryPath: ,\n            Name: usdImagingGL,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v46, "usdLux");
    if (SHIBYTE(v47) < 0)
    {
      sub_29A008D14(&v178, v46, *(&v46 + 1));
    }

    else
    {
      v178 = v46;
      v179 = v47;
    }

    v180 = aPluginsInfo_24;
    sub_29A008E78(&v44, "usdMedia");
    if (SHIBYTE(v45) < 0)
    {
      sub_29A008D14(&v181, v44, *(&v44 + 1));
    }

    else
    {
      v181 = v44;
      v182 = v45;
    }

    v183 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdMediaAssetPreviewsAPI: {\n                        alias: {\n                            UsdSchemaBase: AssetPreviewsAPI\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: AssetPreviewsAPI, \n                        schemaKind: singleApplyAPI\n                    }, \n                    UsdMediaSpatialAudio: {\n                        alias: {\n                            UsdSchemaBase: SpatialAudio\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdGeomXformable\n                        ], \n                        schemaIdentifier: SpatialAudio, \n                        schemaKind: concreteTyped\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: usdMedia, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v42, "usdMtlx");
    if (SHIBYTE(v43) < 0)
    {
      sub_29A008D14(&v184, v42, *(&v42 + 1));
    }

    else
    {
      v184 = v42;
      v185 = v43;
    }

    v186 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdMtlxDiscoveryPlugin: {\n                        bases: [\n                            NdrDiscoveryPlugin\n                        ], \n                        displayName: MaterialX Discovery\n                    }, \n                    UsdMtlxFileFormat: {\n                        bases: [\n                            SdfFileFormat\n                        ], \n                        displayName: USD MaterialX File Format, \n                        extensions: [\n                            mtlx\n                        ], \n                        formatId: mtlx, \n                        primary: true, \n                        supportsEditing: false, \n                        supportsWriting: false, \n                        target: usd\n                    }, \n                    UsdMtlxMaterialXConfigAPI: {\n                        alias: {\n                            UsdSchemaBase: MaterialXConfigAPI\n                        }, \n                        apiSchemaCanOnlyApplyTo: [\n                            UsdShadeMaterial\n                        ], \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: MaterialXConfigAPI, \n                        schemaKind: singleApplyAPI\n                    }, \n                    UsdMtlxParserPlugin: {\n                        bases: [\n                            NdrParserPlugin\n                        ], \n                        displayName: MaterialX Node Parser\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: usdMtlx, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v40, "usdObj");
    if (SHIBYTE(v41) < 0)
    {
      sub_29A008D14(&v187, v40, *(&v40 + 1));
    }

    else
    {
      v187 = v40;
      v188 = v41;
    }

    v189 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdObjFileFormat: {\n                        bases: [SdfFileFormat],\n                        displayName: OBJ file format,\n                        extensions: [ obj ],\n                        formatId: obj,\n                        primary: true,\n                        supportsWriting: false,\n                        supportsEditing: false,\n                        target: usd\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: usdObj_plugin,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library,\n            Entitlements: [[com.apple.private.usd.enableadobefileformats]]\n        }\n    ]\n}\n";
    sub_29A008E78(&v38, "usdPhysics");
    if (SHIBYTE(v39) < 0)
    {
      sub_29A008D14(&v190, v38, *(&v38 + 1));
    }

    else
    {
      v190 = v38;
      v191 = v39;
    }

    v192 = aPluginsInfo_28;
    sub_29A008E78(&v36, "usdPly");
    if (SHIBYTE(v37) < 0)
    {
      sub_29A008D14(&v193, v36, *(&v36 + 1));
    }

    else
    {
      v193 = v36;
      v194 = v37;
    }

    v195 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdPlyFileFormat: {\n                        bases: [SdfFileFormat],\n                        displayName: PLY file format,\n                        extensions: [ ply ],\n                        formatId: ply,\n                        primary: true,\n                        supportsWriting: false,\n                        supportsEditing: false,\n                        target: usd\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: usdPly_plugin,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library,\n            Entitlements: [[com.apple.private.usd.enableadobefileformats]]\n        }\n    ]\n}\n";
    sub_29A008E78(&v34, "usdProc");
    if (SHIBYTE(v35) < 0)
    {
      sub_29A008D14(&v196, v34, *(&v34 + 1));
    }

    else
    {
      v196 = v34;
      v197 = v35;
    }

    v198 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdProcGenerativeProcedural: {\n                        alias: {\n                            UsdSchemaBase: GenerativeProcedural\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdGeomBoundable\n                        ], \n                        schemaIdentifier: GenerativeProcedural, \n                        schemaKind: concreteTyped\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: usdProc, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v32, "usdProcImaging");
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(&v199, v32, *(&v32 + 1));
    }

    else
    {
      v199 = v32;
      v200 = v33;
    }

    v201 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    \n                    UsdProcImagingGenerativeProceduralAdapter: {\n                        bases: [\n                            UsdImagingInstanceablePrimAdapter\n                        ], \n                        primTypeName: GenerativeProcedural\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: usdProcImaging, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v30, "usdRender");
    if (SHIBYTE(v31) < 0)
    {
      sub_29A008D14(&v202, v30, *(&v30 + 1));
    }

    else
    {
      v202 = v30;
      v203 = v31;
    }

    v204 = "{\n    Plugins: [\n        {\n            Info: {\n                SdfMetadata: {\n                    renderSettingsPrimPath: {\n                        appliesTo: layers, \n                        default: , \n                        type: string\n                    }\n                }, \n                Types: {\n                    UsdRenderPass: {\n                        alias: {\n                            UsdSchemaBase: RenderPass\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdTyped\n                        ], \n                        schemaIdentifier: RenderPass, \n                        schemaKind: concreteTyped\n                    }, \n                    UsdRenderProduct: {\n                        alias: {\n                            UsdSchemaBase: RenderProduct\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdRenderSettingsBase\n                        ], \n                        schemaIdentifier: RenderProduct, \n                        schemaKind: concreteTyped\n                    }, \n                    UsdRenderSettings: {\n                        alias: {\n                            UsdSchemaBase: RenderSettings\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdRenderSettingsBase\n                        ], \n                        schemaIdentifier: RenderSettings, \n                        schemaKind: concreteTyped\n                    }, \n                    UsdRenderSettingsBase: {\n                        alias: {\n                            UsdSchemaBase: RenderSettingsBase\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdTyped\n                        ], \n                        schemaIdentifier: RenderSettingsBase, \n                        schemaKind: abstractTyped\n                    }, \n                    UsdRenderVar: {\n                        alias: {\n                            UsdSchemaBase: RenderVar\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdTyped\n                        ], \n                        schemaIdentifier: RenderVar, \n                        schemaKind: concreteTyped\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: usdRender, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(&v28, "usdSemantics");
    if (SHIBYTE(v29) < 0)
    {
      sub_29A008D14(&v205, v28, *(&v28 + 1));
    }

    else
    {
      v205 = v28;
      v206 = v29;
    }

    v207 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdSemanticsLabelsAPI: {\n                        alias: {\n                            UsdSchemaBase: SemanticsLabelsAPI\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: SemanticsLabelsAPI, \n                        schemaKind: multipleApplyAPI\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: usdSemantics, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(v26, "usdShade");
    if (SHIBYTE(v27) < 0)
    {
      sub_29A008D14(&v208, v26[0], v26[1]);
    }

    else
    {
      v208 = *v26;
      v209 = v27;
    }

    v210 = aPluginsInfo_34;
    sub_29A008E78(&v24, "usdShadeValidators");
    if (SHIBYTE(v25) < 0)
    {
      sub_29A008D14(&v211, v24, *(&v24 + 1));
    }

    else
    {
      v211 = v24;
      v212 = v25;
    }

    v213 = "{\n"
           "    Plugins: [\n"
           "        {\n"
           "            Info: {\n"
           "                Validators: {\n"
           "                    EncapsulationRulesValidator: {\n"
           "                        doc: Connectable prims (e.g. Shader, Material, etc) can only be nested inside other Container-like Connectable prims. Container-like prims include Material, NodeGraph, Light, LightFilter. Shader is not a Container-like prim.\n"
           "                    }, \n"
           "                    MaterialBindingApiAppliedValidator: {\n"
           "                        doc: Verify a prim has the MaterialBindingAPI applied if it has a material binding relationship.\n"
           "                    }, \n"
           "                    MaterialBindingCollectionValidator: {\n"
           "                        doc: Verify that a collection defining a material binding is well-formed, \n"
           "                        schemaTypes: [\n"
           "                            MaterialBindingAPI\n"
           "                        ]\n"
           "                    }, \n"
           "                    MaterialBindingRelationships: {\n"
           "                        doc: All properties named 'material:binding' or in that namespace should be relationships.\n"
           "                    },\n"
           "                    NormalMapTextureValidator : {\n"
           "                        doc: UsdUVTexture nodes that feed the _inputs:normals_ of a UsdPreviewSurface must ensure that the data is encoded and scaled properly. Specifically, since normals are expected to be in the range [(-1,-1,-1), (1,1,1)], the Texture node must transform 8-bit textures from their [0..1] range by setting its _inputs:scale_ to (2, 2, 2, 1) and _inputs:bias_ to (-1, -1, -1, 0). Normal map data is commonly expected to be linearly encoded.  However, many image-writing tools automatically set the profile of three-channel, 8-bit images to SRGB.  To prevent an unwanted transformation, the UsdUVTexture's _inputs:sourceColorSpace_ must be set to raw.,\n"
           "                        schemaTypes: [\n"
           "                            UsdShadeShader\n"
           "                        ]\n"
           "                    },\n"
           "                    ShaderSdrCompliance: {\n"
           "                        doc: Shader prim's input types must be conforming to their appropriate sdf types in the respective sdr shader., \n"
           "                        schemaTypes: [\n"
           "                            UsdShadeShader\n"
           "                        ]\n"
           "                    }, \n"
           "                    SubsetMaterialBindFamilyName: {\n"
           "                        doc: Geom subsets with authored material bindings should have the 'materialBind' family name., \n"
           "                        keywords: [\n"
           "                            UsdGeomSubset\n"
           "                        ], \n"
           "                        schemaTypes: [\n"
           "                            UsdGeomSubset\n"
           "                        ]\n"
           "                    }, \n"
           "                    SubsetsMaterialBindFamily: {\n"
           "                        doc: Geom subsets of the 'materialBind' family should have a restricted family type., \n"
           "                        keywords: [\n"
           "                            UsdGeomSubset\n"
           "                        ], \n"
           "                        schemaTypes: [\n"
           "                            UsdGeomImageable\n"
           "                        ]\n"
           "                    }, \n"
           "                    keywords: [\n"
           "                        UsdShadeValidators\n"
           "                    ]\n"
           "                }\n"
           "            }, \n"
           "            LibraryPath: , \n"
           "            Name: usdShadeValidators, \n"
           "            ResourcePath: resources, \n"
           "            Root: .., \n"
           "            Type: library\n"
           "        }\n"
           "    ]\n"
           "}\n";
    sub_29A008E78(v22, "usdSkel");
    if (SHIBYTE(v23) < 0)
    {
      sub_29A008D14(&v214, v22[0], v22[1]);
    }

    else
    {
      v214 = *v22;
      v215 = v23;
    }

    v216 = "{\n"
           "    Plugins: [\n"
           "        {\n"
           "            Info: {\n"
           "                SdfMetadata: {\n"
           "                    weight: {\n"
           "                        appliesTo: [\n"
           "                            attributes\n"
           "                        ], \n"
           "                        default: 0, \n"
           "                        displayGroup: BlendShape, \n"
           "                        documentation: The weight value at which an inbeteen shape is applied., \n"
           "                        type: float\n"
           "                    }\n"
           "                }, \n"
           "                Types: {\n"
           "                    UsdSkelAnimation: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: SkelAnimation\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdTyped\n"
           "                        ], \n"
           "                        schemaIdentifier: SkelAnimation, \n"
           "                        schemaKind: concreteTyped\n"
           "                    }, \n"
           "                    UsdSkelBindingAPI: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: SkelBindingAPI\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdAPISchemaBase\n"
           "                        ], \n"
           "                        schemaIdentifier: SkelBindingAPI, \n"
           "                        schemaKind: singleApplyAPI\n"
           "                    }, \n"
           "                    UsdSkelBlendShape: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: BlendShape\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdTyped\n"
           "                        ], \n"
           "                        schemaIdentifier: BlendShape, \n"
           "                        schemaKind: concreteTyped\n"
           "                    }, \n"
           "                    UsdSkelRoot: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: SkelRoot\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdGeomBoundable\n"
           "                        ], \n"
           "                        implementsComputeExtent: true, \n"
           "                        schemaIdentifier: SkelRoot, \n"
           "                        schemaKind: concreteTyped\n"
           "                    }, \n"
           "                    UsdSkelSkeleton: {\n"
           "                        alias: {\n"
           "                            UsdSchemaBase: Skeleton\n"
           "                        }, \n"
           "                        autoGenerated: true, \n"
           "                        bases: [\n"
           "                            UsdGeomBoundable\n"
           "                        ], \n"
           "                        implementsComputeExtent: true, \n"
           "                        schemaIdentifier: Skeleton, \n"
           "                        schemaKind: concreteTyped\n"
           "                    }\n"
           "                }\n"
           "            }, \n"
           "            LibraryPath: , \n"
           "            Name: usdSkel, \n"
           "            ResourcePath: resources, \n"
           "            Root: .., \n"
           "            Type: library\n"
           "        }\n"
           "    ]\n"
           "}\n";
    sub_29A008E78(&v20, "usdSkelValidators");
    if (SHIBYTE(v21) < 0)
    {
      sub_29A008D14(&v217, v20, *(&v20 + 1));
    }

    else
    {
      v217 = v20;
      v218 = v21;
    }

    v219 = "{\n    Plugins: [\n        {\n            Info: {\n                Validators: {\n                    SkelBindingApiAppliedValidator: {\n                        doc: Verify a prim has the SkelBindingAPI applied if it has a UsdSkelBinding property.\n                    }, \n                    SkelBindingApiValidator: {\n                        doc: Verify that a prim with SkelBindingAPI applied, is either of SkelRoot type or parented by a SkelRoot prim., \n                        schemaTypes: [\n                            UsdSkelBindingAPI\n                        ]\n                    }, \n                    keywords: [\n                        UsdSkelValidators\n                    ]\n                }\n            }, \n            LibraryPath: , \n            Name: usdSkelValidators, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(v18, "usdStl");
    if (SHIBYTE(v19) < 0)
    {
      sub_29A008D14(&v220, v18[0], v18[1]);
    }

    else
    {
      v220 = *v18;
      v221 = v19;
    }

    v222 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdStlFileFormat: {\n                        bases: [SdfFileFormat],\n                        displayName: STL file format,\n                        extensions: [ stl ],\n                        formatId: stl,\n                        primary: true,\n                        supportsWriting: false,\n                        supportsEditing: false,\n                        target: usd\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: usdStl_plugin,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library,\n            Entitlements: [[com.apple.private.usd.enableadobefileformats]]\n        }\n    ]\n}\n";
    sub_29A008E78(v16, "usdUI");
    if (SHIBYTE(v17) < 0)
    {
      sub_29A008D14(&v223, v16[0], v16[1]);
    }

    else
    {
      v223 = *v16;
      v224 = v17;
    }

    v225 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdUIAccessibilityAPI: {\n                        alias: {\n                            UsdSchemaBase: AccessibilityAPI\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: AccessibilityAPI, \n                        schemaKind: multipleApplyAPI\n                    }, \n                    UsdUIBackdrop: {\n                        alias: {\n                            UsdSchemaBase: Backdrop\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdTyped\n                        ], \n                        schemaIdentifier: Backdrop, \n                        schemaKind: concreteTyped\n                    }, \n                    UsdUINodeGraphNodeAPI: {\n                        alias: {\n                            UsdSchemaBase: NodeGraphNodeAPI\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: NodeGraphNodeAPI, \n                        schemaKind: singleApplyAPI\n                    }, \n                    UsdUISceneGraphPrimAPI: {\n                        alias: {\n                            UsdSchemaBase: SceneGraphPrimAPI\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdAPISchemaBase\n                        ], \n                        schemaIdentifier: SceneGraphPrimAPI, \n                        schemaKind: singleApplyAPI\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: usdUI, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(v14, "usdUtilsValidators");
    if (SHIBYTE(v15) < 0)
    {
      sub_29A008D14(&v226, v14[0], v14[1]);
    }

    else
    {
      v226 = *v14;
      v227 = v15;
    }

    v228 = "{\n    Plugins: [\n        {\n            Info: {\n                Validators: {\n                    FileExtensionValidator: {\n                        doc: Only valid core layer extensions (.usd, .usda, .usdc, .usdz), valid core texture extensions (.exr, .jpg, .jpeg, .png) and embedded audio files (.M4A, .MP3, .WAV) are allowed in a package.,\n                        keywords: [\n                            UsdzValidators\n                        ]\n                    },\n                    MissingReferenceValidator: {\n                        doc: The composed USD stage should not contain any unresolvable asset dependencies (in every possible variation of the asset), when using the default asset resolver.\n                    },\n                    PackageEncapsulationValidator: {\n                        doc: If the root layer is a package, then its recommended for the composed stage to not contain references to files outside the package. The package should be self-contained, warn if not., \n                        keywords: [\n                            UsdzValidators\n                        ]\n                    },\n                    RootPackageValidator: {\n                        doc: Files within the root layer of a usdz package should not be compressed or encrypted, and should be aligned to 64 bytes.,\n                        keywords: [\n                            UsdzValidators\n                        ]\n                    },\n                    UsdzPackageValidator: {\n                        doc: Files within all usdz packages within a stage should not be compressed or encrypted, and should be aligned to 64 bytes.,\n                        keywords: [\n                            UsdzValidators\n                        ]\n                    },\n                    keywords: [\n                        UsdUtilsValidators\n                    ]\n                }\n            },\n            LibraryPath: ,\n            Name: usdUtilsValidators, \n            ResourcePath: resources,\n            Root: ..,\n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(v12, "usdValidation");
    if (SHIBYTE(v13) < 0)
    {
      sub_29A008D14(&v229, v12[0], v12[1]);
    }

    else
    {
      v229 = *v12;
      v230 = v13;
    }

    v231 = "{\n    Plugins: [\n        {\n            Info: {\n                Validators: {\n                    CompositionErrorTest: {\n                        doc: Validator aims at providing all composition errors, which were generated while composing the stage.\n                    }, \n                    StageMetadataChecker: {\n                        doc: Stages that can be consumed as referenceable assets must have a valid 'defaultPrim' specified.\n                    }, \n                    keywords: [\n                        UsdCoreValidators\n                    ]\n                }\n            }, \n            LibraryPath: , \n            Name: usdValidation, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(v10, "usdVol");
    if (SHIBYTE(v11) < 0)
    {
      sub_29A008D14(&v232, v10[0], v10[1]);
    }

    else
    {
      v232 = *v10;
      v233 = v11;
    }

    v234 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdVolField3DAsset: {\n                        alias: {\n                            UsdSchemaBase: Field3DAsset\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdVolFieldAsset\n                        ], \n                        schemaIdentifier: Field3DAsset, \n                        schemaKind: concreteTyped\n                    }, \n                    UsdVolFieldAsset: {\n                        alias: {\n                            UsdSchemaBase: FieldAsset\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdVolFieldBase\n                        ], \n                        schemaIdentifier: FieldAsset, \n                        schemaKind: abstractTyped\n                    }, \n                    UsdVolFieldBase: {\n                        alias: {\n                            UsdSchemaBase: FieldBase\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdGeomXformable\n                        ], \n                        schemaIdentifier: FieldBase, \n                        schemaKind: abstractTyped\n                    }, \n                    UsdVolOpenVDBAsset: {\n                        alias: {\n                            UsdSchemaBase: OpenVDBAsset\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdVolFieldAsset\n                        ], \n                        schemaIdentifier: OpenVDBAsset, \n                        schemaKind: concreteTyped\n                    }, \n                    UsdVolVolume: {\n                        alias: {\n                            UsdSchemaBase: Volume\n                        }, \n                        autoGenerated: true, \n                        bases: [\n                            UsdGeomGprim\n                        ], \n                        schemaIdentifier: Volume, \n                        schemaKind: concreteTyped\n                    }\n                }\n            }, \n            LibraryPath: , \n            Name: usdVol, \n            ResourcePath: resources, \n            Root: .., \n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(v8, "usdVolImaging");
    if (SHIBYTE(v9) < 0)
    {
      sub_29A008D14(&v235, v8[0], v8[1]);
    }

    else
    {
      v235 = *v8;
      v236 = v9;
    }

    v237 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdImagingOpenVDBAssetAdapter: {\n                        bases: [\n                            UsdImagingFieldAdapter\n                        ],\n                        isInternal: true,\n                        primTypeName: OpenVDBAsset\n                    },\n                    UsdImagingField3DAssetAdapter: {\n                        bases: [\n                            UsdImagingFieldAdapter\n                        ],\n                        isInternal: true,\n                        primTypeName: Field3DAsset\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: usdVolImaging,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library\n        }\n    ]\n}\n";
    sub_29A008E78(__p, "usdXpc");
    if (SHIBYTE(v7) < 0)
    {
      sub_29A008D14(&v238, __p[0], __p[1]);
    }

    else
    {
      v238 = *__p;
      v239 = v7;
    }

    v240 = "{\n    Plugins: [\n        {\n            Info: {\n                Types: {\n                    UsdXpcFileFormat: {\n                        bases: [\n                            SdfFileFormat\n                        ],\n                        displayName: USD XPC Service for legacy 3D format loader,\n                        extensions: [\n                            obj, ply, stl\n                        ],\n                        formatId: xpc,\n                        primary: true,\n                        supportsWriting: false,\n                        supportsEditing: false,\n                        target: usd\n                    }\n                }\n            },\n            LibraryPath: ,\n            Name: usdXpc,\n            ResourcePath: resources,\n            Root: ..,\n            Type: library,\n            SupersedingEntitlements: [com.apple.private.usd.enableadobefileformats]\n        }\n    ]\n}\n";
    sub_29A177F50(&unk_2A173F328, &__dst, 47);
    v5 = 188;
    do
    {
      if (SHIBYTE(__src[v5 + 1]) < 0)
      {
        operator delete(__src[v5 - 1]);
      }

      v5 -= 4;
    }

    while (v5 * 8);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if (SHIBYTE(v55) < 0)
    {
      operator delete(v54);
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58);
    }

    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v69) < 0)
    {
      operator delete(v68);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(v74);
    }

    if (SHIBYTE(v77) < 0)
    {
      operator delete(v76);
    }

    if (SHIBYTE(v79) < 0)
    {
      operator delete(v78);
    }

    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80);
    }

    if (SHIBYTE(v83) < 0)
    {
      operator delete(v82);
    }

    if (SHIBYTE(v85) < 0)
    {
      operator delete(v84);
    }

    if (SHIBYTE(v87) < 0)
    {
      operator delete(v86);
    }

    if (SHIBYTE(v89) < 0)
    {
      operator delete(v88);
    }

    if (SHIBYTE(v91) < 0)
    {
      operator delete(v90);
    }

    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92);
    }

    if (SHIBYTE(v95) < 0)
    {
      operator delete(v94);
    }

    if (SHIBYTE(v97) < 0)
    {
      operator delete(v96);
    }

    if (SHIBYTE(v99) < 0)
    {
      operator delete(__src[0]);
    }

    __cxa_atexit(sub_29A17657C, &unk_2A173F328, &dword_299FE7000);
    __cxa_guard_release(&qword_2A173F350);
    a1 = v4;
  }

  return sub_29A178228(a1, &unk_2A173F328);
}

void sub_29A175F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (a88 < 0)
  {
    operator delete(a87);
  }

  if (a90 < 0)
  {
    operator delete(a89);
  }

  if (a92 < 0)
  {
    operator delete(a91);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(STACK[0x308]);
  }

  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(STACK[0x338]);
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(STACK[0x368]);
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x3AF]) < 0)
  {
    operator delete(STACK[0x398]);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  if (SLOBYTE(STACK[0x3DF]) < 0)
  {
    operator delete(STACK[0x3C8]);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    operator delete(STACK[0x428]);
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  if (SLOBYTE(STACK[0x46F]) < 0)
  {
    operator delete(STACK[0x458]);
  }

  while (v92 != &STACK[0x470])
  {
    v94 = *(v92 - 9);
    v92 -= 4;
    if (v94 < 0)
    {
      operator delete(*v92);
    }
  }

  __cxa_guard_abort(&qword_2A173F350);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Plug_TaskArena *pxrInternal__aapl__pxrReserved__::Plug_TaskArena::Plug_TaskArena(pxrInternal__aapl__pxrReserved__::Plug_TaskArena *this)
{
  v2 = operator new(0x158uLL);
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v2);
  *this = v2;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::Plug_TaskArena::Plug_TaskArena(void *result)
{
  *result = 0;
  return result;
}

{
  *result = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Plug_TaskArena::~Plug_TaskArena(pxrInternal__aapl__pxrReserved__::WorkDispatcher **this)
{
  sub_29A178BC4(this, 0);
}

{
  sub_29A178BC4(this, 0);
}

pxrInternal__aapl__pxrReserved__::WorkDispatcher *pxrInternal__aapl__pxrReserved__::Plug_TaskArena::Wait(pxrInternal__aapl__pxrReserved__::WorkDispatcher **this)
{
  result = *this;
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::WorkDispatcher::Wait(result);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Plug_RegistrationMetadata::Plug_RegistrationMetadata(uint64_t a1, pxrInternal__aapl__pxrReserved__::JsValue *this, std::string *a3, uint64_t a4)
{
  *(a1 + 8) = 0u;
  v8 = (a1 + 8);
  *(a1 + 64) = 0;
  *a1 = 0;
  *(a1 + 56) = a1 + 64;
  v9 = (a1 + 56);
  *(a1 + 72) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 80) = 0u;
  v10 = (a1 + 80);
  *(a1 + 128) = 0u;
  v11 = (a1 + 128);
  *(a1 + 40) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsObject(this))
  {
    v106.__r_.__value_.__r.__words[0] = "plug/info.cpp";
    v106.__r_.__value_.__l.__size_ = "Plug_RegistrationMetadata";
    v106.__r_.__value_.__r.__words[2] = 576;
    v107 = "pxrInternal__aapl__pxrReserved__::Plug_RegistrationMetadata::Plug_RegistrationMetadata(const JsValue &, const std::string &, const std::string &)";
    v108 = 0;
    if (*(a4 + 23) >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v106, 3, "Plugin info %s doesn't hold an object; plugin ignored", v19);
    return a1;
  }

  JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(this);
  v13 = JsObject;
  v14 = atomic_load(&qword_2A173F358);
  if (!v14)
  {
    JsObject = sub_29A178550();
    v14 = JsObject;
  }

  v16 = *(v14 + 24);
  v15 = (v14 + 24);
  v17 = v16 & 0xFFFFFFFFFFFFFFF8;
  if ((v16 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (v17 + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(JsObject);
  }

  v20 = sub_29A01BCCC(v13, EmptyString);
  v21 = v20;
  v105 = (v13 + 8);
  if ((v13 + 8) == v20)
  {
    goto LABEL_106;
  }

  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString((v20 + 56)))
  {
    goto LABEL_89;
  }

  String = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v21 + 56));
  if (*(String + 23) < 0)
  {
    if (*(String + 1) != 7 || (**String == 1919052140 ? (v24 = *(*String + 3) == 2037539186) : (v24 = 0), !v24))
    {
      if (*(String + 1) != 8)
      {
        goto LABEL_30;
      }

      String = *String;
LABEL_24:
      if (*String == 0x656372756F736572)
      {
        v25 = 3;
        goto LABEL_32;
      }

LABEL_30:
      v27 = "doesn't hold a valid type";
LABEL_107:
      v106.__r_.__value_.__r.__words[0] = "plug/info.cpp";
      v106.__r_.__value_.__l.__size_ = "Plug_RegistrationMetadata";
      v106.__r_.__value_.__r.__words[2] = 795;
      v107 = "pxrInternal__aapl__pxrReserved__::Plug_RegistrationMetadata::Plug_RegistrationMetadata(const JsValue &, const std::string &, const std::string &)";
      v108 = 0;
      if (*(a4 + 23) >= 0)
      {
        v75 = a4;
      }

      else
      {
        v75 = *a4;
      }

      v76 = *v15 & 0xFFFFFFFFFFFFFFF8;
      if (v76)
      {
        v77 = (v76 + 16);
        if (*(v76 + 39) < 0)
        {
          v77 = *v77;
        }
      }

      else
      {
        v77 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v106, 3, "Plugin info %s key '%s' %s; plugin ignored", v75, v77, v27);
      *a1 = 0;
      return a1;
    }
  }

  else
  {
    v23 = *(String + 23);
    if (v23 != 7)
    {
      if (v23 != 8)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    if (*String != 1919052140 || *(String + 3) != 2037539186)
    {
      goto LABEL_30;
    }
  }

  v25 = 1;
LABEL_32:
  *a1 = v25;
  v28 = atomic_load(&qword_2A173F358);
  if (!v28)
  {
    String = sub_29A178550();
    v28 = String;
  }

  v29 = *(v28 + 32);
  v15 = (v28 + 32);
  v30 = v29 & 0xFFFFFFFFFFFFFFF8;
  if ((v29 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v31 = (v30 + 16);
  }

  else
  {
    v31 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(String);
  }

  v32 = sub_29A01BCCC(v13, v31);
  v33 = v32;
  if (v105 == v32)
  {
    goto LABEL_106;
  }

  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString((v32 + 56)))
  {
    goto LABEL_89;
  }

  v34 = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v33 + 56));
  v35 = std::string::operator=(v8, v34);
  v36 = *(a1 + 31);
  if (v36 < 0)
  {
    v36 = *(a1 + 16);
  }

  if (!v36)
  {
    v27 = "doesn't hold a valid name";
    goto LABEL_107;
  }

  v37 = atomic_load(&qword_2A173F358);
  if (!v37)
  {
    v35 = sub_29A178550();
    v37 = v35;
  }

  v38 = *(v37 + 48);
  v15 = (v37 + 48);
  v39 = v38 & 0xFFFFFFFFFFFFFFF8;
  if ((v38 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v40 = (v39 + 16);
  }

  else
  {
    v40 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
  }

  v41 = sub_29A01BCCC(v13, v40);
  v42 = v41;
  if (v105 == v41)
  {
    PathName = pxrInternal__aapl__pxrReserved__::TfGetPathName(a3, &v106);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = v106;
  }

  else
  {
    if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString((v41 + 56)))
    {
      goto LABEL_89;
    }

    v43 = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v42 + 56));
    sub_29A177178(a3, v43, 0, &v106);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = v106;
    v45 = *(a1 + 55);
    if (v45 < 0)
    {
      v45 = *(a1 + 40);
    }

    if (!v45)
    {
      goto LABEL_88;
    }
  }

  v46 = atomic_load(&qword_2A173F358);
  if (!v46)
  {
    PathName = sub_29A178550();
    v46 = PathName;
  }

  v47 = *(v46 + 56);
  v15 = (v46 + 56);
  v48 = v47 & 0xFFFFFFFFFFFFFFF8;
  if ((v47 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v49 = (v48 + 16);
  }

  else
  {
    v49 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(PathName);
  }

  v50 = sub_29A01BCCC(v13, v49);
  v51 = v50;
  if (v105 == v50)
  {
    if (*a1 != 1)
    {
      goto LABEL_76;
    }

LABEL_106:
    v27 = "is missing";
    goto LABEL_107;
  }

  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString((v50 + 56)))
  {
    goto LABEL_89;
  }

  v50 = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v51 + 56));
  v52 = *(v50 + 23);
  if ((v52 & 0x80u) != 0)
  {
    v52 = *(v50 + 8);
  }

  if (v52)
  {
    v53 = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v51 + 56));
    sub_29A17734C(a1 + 32, v53, &v106);
    if (*(a1 + 103) < 0)
    {
      operator delete(*v10);
    }

    *v10 = v106;
    v54 = *(a1 + 103);
    if (v54 < 0)
    {
      v54 = *(a1 + 88);
    }

    if (!v54)
    {
      goto LABEL_88;
    }
  }

LABEL_76:
  v55 = atomic_load(&qword_2A173F358);
  if (!v55)
  {
    v50 = sub_29A178550();
    v55 = v50;
  }

  v56 = *(v55 + 64);
  v15 = (v55 + 64);
  v57 = v56 & 0xFFFFFFFFFFFFFFF8;
  if ((v56 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v58 = (v57 + 16);
  }

  else
  {
    v58 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v50);
  }

  v59 = sub_29A01BCCC(v13, v58);
  v60 = v59;
  if (v105 == v59)
  {
    v62 = pxrInternal__aapl__pxrReserved__::TfGetPathName((a1 + 32), &v106);
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    *(a1 + 104) = v106;
    goto LABEL_93;
  }

  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString((v59 + 56)))
  {
LABEL_89:
    v27 = "doesn't hold a string";
    goto LABEL_107;
  }

  v61 = pxrInternal__aapl__pxrReserved__::JsValue::GetString((v60 + 56));
  sub_29A17734C(a1 + 32, v61, &v106);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 104) = v106;
  v63 = *(a1 + 127);
  if (v63 < 0)
  {
    v63 = *(a1 + 112);
  }

  if (!v63)
  {
LABEL_88:
    v27 = "doesn't hold a valid path";
    goto LABEL_107;
  }

LABEL_93:
  v64 = atomic_load(&qword_2A173F358);
  if (!v64)
  {
    v62 = sub_29A178550();
    v64 = v62;
  }

  v65 = *(v64 + 40);
  v15 = (v64 + 40);
  v66 = v65 & 0xFFFFFFFFFFFFFFF8;
  if ((v65 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v67 = (v66 + 16);
  }

  else
  {
    v67 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v62);
  }

  v68 = sub_29A01BCCC(v13, v67);
  v69 = v68;
  if (v105 == v68)
  {
    goto LABEL_106;
  }

  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsObject((v68 + 56)))
  {
    v27 = "doesn't hold an object";
    goto LABEL_107;
  }

  v70 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject((v69 + 56));
  if (v9 != v70)
  {
    v70 = sub_29A1782A0(v9, *v70, (v70 + 8));
  }

  v71 = atomic_load(&qword_2A173F358);
  if (!v71)
  {
    v70 = sub_29A178550();
    v71 = v70;
  }

  v72 = *(v71 + 72);
  v15 = (v71 + 72);
  v73 = v72 & 0xFFFFFFFFFFFFFFF8;
  if ((v72 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v74 = (v73 + 16);
  }

  else
  {
    v74 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v70);
  }

  JsArray = sub_29A01BCCC(v13, v74);
  v80 = JsArray;
  if (v105 != JsArray)
  {
    if (!pxrInternal__aapl__pxrReserved__::JsValue::IsArray((JsArray + 7)))
    {
      v27 = "outer element is not an array";
      goto LABEL_107;
    }

    JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v80 + 7);
    v81 = *JsArray;
    if (*JsArray != JsArray[1])
    {
      v27 = "inner element is not an array";
      if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray(v81))
      {
        v82 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(v81);
        memset(&v106, 0, sizeof(v106));
        v83 = *v82;
        if (*v82 == *(v82 + 8))
        {
          sub_29A17742C(v11);
        }

        if (pxrInternal__aapl__pxrReserved__::JsValue::IsString(v83))
        {
          pxrInternal__aapl__pxrReserved__::JsValue::GetString(v83);
          std::vector<std::string>::emplace_back<std::string const&>();
        }

        v109 = &v106;
        sub_29A012C90(&v109);
        v27 = "entitlement is not a string";
      }

      goto LABEL_107;
    }
  }

  v84 = atomic_load(&qword_2A173F358);
  if (!v84)
  {
    JsArray = sub_29A178550();
    v84 = JsArray;
  }

  v85 = *(v84 + 80);
  v15 = (v84 + 80);
  v86 = v85 & 0xFFFFFFFFFFFFFFF8;
  if ((v85 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v87 = (v86 + 16);
  }

  else
  {
    v87 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(JsArray);
  }

  v88 = sub_29A01BCCC(v13, v87);
  v89 = v88;
  if (v105 != v88)
  {
    if (!pxrInternal__aapl__pxrReserved__::JsValue::IsArray((v88 + 56)))
    {
      v27 = "element is not an array";
      goto LABEL_107;
    }

    v90 = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray((v89 + 56));
    v91 = *v90;
    if (*v90 != *(v90 + 8))
    {
      v27 = "conflictingEntitlement is not a string";
      if (pxrInternal__aapl__pxrReserved__::JsValue::IsString(v91))
      {
        pxrInternal__aapl__pxrReserved__::JsValue::GetString(v91);
        std::vector<std::string>::emplace_back<std::string const&>();
      }

      goto LABEL_107;
    }
  }

  v92 = *v13;
  if (*v13 != v105)
  {
    do
    {
      v93 = atomic_load(&qword_2A173F358);
      if (!v93)
      {
        v93 = sub_29A178550();
      }

      v94 = (v92 + 4);
      if (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v93 + 24), v92 + 4))
      {
        v95 = atomic_load(&qword_2A173F358);
        if (!v95)
        {
          v95 = sub_29A178550();
        }

        if (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v95 + 32), v92 + 4))
        {
          v96 = atomic_load(&qword_2A173F358);
          if (!v96)
          {
            v96 = sub_29A178550();
          }

          if (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v96 + 40), v92 + 4))
          {
            v97 = atomic_load(&qword_2A173F358);
            if (!v97)
            {
              v97 = sub_29A178550();
            }

            if (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v97 + 48), v92 + 4))
            {
              v98 = atomic_load(&qword_2A173F358);
              if (!v98)
              {
                v98 = sub_29A178550();
              }

              if (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v98 + 56), v92 + 4))
              {
                v99 = atomic_load(&qword_2A173F358);
                if (!v99)
                {
                  v99 = sub_29A178550();
                }

                if (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v99 + 64), v92 + 4))
                {
                  v100 = atomic_load(&qword_2A173F358);
                  if (!v100)
                  {
                    v100 = sub_29A178550();
                  }

                  if (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v100 + 72), v92 + 4))
                  {
                    v101 = atomic_load(&qword_2A173F358);
                    if (!v101)
                    {
                      v101 = sub_29A178550();
                    }

                    if (!pxrInternal__aapl__pxrReserved__::TfToken::operator==((v101 + 80), v92 + 4))
                    {
                      v106.__r_.__value_.__r.__words[0] = "plug/info.cpp";
                      v106.__r_.__value_.__l.__size_ = "Plug_RegistrationMetadata";
                      v106.__r_.__value_.__r.__words[2] = 786;
                      v107 = "pxrInternal__aapl__pxrReserved__::Plug_RegistrationMetadata::Plug_RegistrationMetadata(const JsValue &, const std::string &, const std::string &)";
                      v108 = 0;
                      if (*(a4 + 23) >= 0)
                      {
                        v102 = a4;
                      }

                      else
                      {
                        v102 = *a4;
                      }

                      if (*(v92 + 55) < 0)
                      {
                        v94 = *v94;
                      }

                      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v106, 3, "Plugin info %s: ignoring unknown key '%s'", v102, v94);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v103 = v92[1];
      if (v103)
      {
        do
        {
          v104 = v103;
          v103 = *v103;
        }

        while (v103);
      }

      else
      {
        do
        {
          v104 = v92[2];
          v24 = *v104 == v92;
          v92 = v104;
        }

        while (!v24);
      }

      v92 = v104;
    }

    while (v104 != v105);
  }

  return a1;
}