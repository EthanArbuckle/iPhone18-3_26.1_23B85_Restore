void sub_29A0D37C8(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_29A0D297C(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_29A0D297C(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_29A0D3EC4((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_29A0D4024();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_29A0D3EC4((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_29A0D3BC8(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_29A0D40F8(v6, v7);
}

void sub_29A0D3CA4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 1);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void sub_29A0D3CFC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 2);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

uint64_t sub_29A0D3D54(uint64_t a1, void *a2, uint64_t a3, BOOL a4)
{
  sub_29A0D2BE0(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_29A0D3E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0D3E28(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    sub_29A00D178(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_29A00D178(a1 + 64, &v7);
}

void **sub_29A0D3EC4(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_29A00C9A4();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v22[4] = result;
    if (v12)
    {
      v13 = sub_29A08E058(result, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[48 * v9];
    v15 = &v13[48 * v12];
    v16 = *a2;
    *(v14 + 2) = *(a2 + 2);
    *v14 = v16;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v17 = *(a2 + 24);
    *(v14 + 5) = *(a2 + 5);
    *(v14 + 24) = v17;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v14 + 48;
    v18 = v3[1] - *v3;
    v19 = &v14[-v18];
    memcpy(&v14[-v18], *v3, v18);
    v20 = *v3;
    *v3 = v19;
    v3[1] = v8;
    v21 = v3[2];
    v3[2] = v15;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = sub_29A0D407C(v22);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 5) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  v3[1] = v8;
  return result;
}

void sub_29A0D4024()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 9);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void **sub_29A0D407C(void **a1)
{
  sub_29A0D40B0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A0D40B0(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_29A0D27F8(v4, i - 48);
  }
}

void sub_29A0D40F8(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = sub_29A010BBC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[2 * v10];
    v12 = &v11[2 * v7];
    *v12 = *a2;
    v6 = v12 + 2;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void *sub_29A0D41C8(void *a1)
{
  *a1 = &unk_2A203EEE0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A0D4234(void *__p)
{
  *__p = &unk_2A203EEE0;
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_29A0D42B0(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_29A0D42E0(void *a1)
{
  *a1 = &unk_2A203EEE0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A0D434C(void *__p)
{
  *__p = &unk_2A203EEE0;
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_29A0D43C8(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_29A0D4400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  v14 = operator new(0x10uLL);
  v15 = *(a1 + 56);
  v16 = *(v15 + 8);
  *v14 = &unk_2A203EE68;
  v14[1] = v16;
  *(v15 + 8) = 0;
  v17 = operator new(0x38uLL);
  v18 = *(a1 + 32);
  v17[1] = *(a4 + 8);
  v17[2] = v14;
  *v17 = &unk_2A203F300;
  v17[3] = a2;
  v17[4] = a3;
  *(v17 + 10) = v18;
  *(v17 + 11) = a5;
  *(v17 + 12) = a6;
  *(v17 + 52) = a7;
  *(a4 + 8) = 0;
  result = operator new(0x10uLL);
  *result = &unk_2A203F390;
  result[1] = v17;
  *(*(a1 + 56) + 8) = result;
  *(a1 + 56) = v17[2];
  *(a4 + 8) = v17;
  *(a1 + 32) = v18 + 1;
  return result;
}

void sub_29A0D4514(_Unwind_Exception *a1)
{
  v3 = sub_29A0D47C0(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_29A0D453C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
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
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void sub_29A0D45D8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 8);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void sub_29A0D4630()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 7);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void sub_29A0D468C(void *a1)
{
  v1 = sub_29A0D47C0(a1);

  operator delete(v1);
}

unsigned int *sub_29A0D46B4(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_29A0D4874(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_29A0D4764(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_29A0D4874(result, a3);
  }

  return result;
}

void sub_29A0D4798(void *a1)
{
  v1 = sub_29A0D47C0(a1);

  operator delete(v1);
}

void *sub_29A0D47C0(void *a1)
{
  *a1 = &unk_2A203F360;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2A203EEE0;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_29A0D4874(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_29A0D48CC(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_29A0D48E4(void *a1)
{
  v1 = sub_29A0D47C0(a1);

  operator delete(v1);
}

uint64_t sub_29A0D4918(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_29A0D4944(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_29A0D4958()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 15);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *sub_29A0D49B0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_29A0D4A4C(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = *(a1 + 28) + 1;

  return sub_29A0D4B50(a1, v8, a3, v6, v7 + 1, v9);
}

unsigned __int8 *sub_29A0D4A4C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_29A0D4D14(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      sub_29A0D07A0(a1);
      v10 = *(a1 + 28);
      do
      {
        v11 = v9;
        v12 = sub_29A0D49B0(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        sub_29A0CED70();
      }

      v7 = v12 + 2;
      sub_29A0D0818(a1, v10);
    }

    else
    {
      v13 = sub_29A0D4FE8(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *sub_29A0D4B50(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
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

    if (a2 + 1 != a3 && v11 == 92 && a2[1] == 123)
    {
      v14 = a2 + 2;
      v27 = 0;
      v15 = sub_29A0D453C(a1, a2 + 2, a3, &v27);
      if (v15 == v14)
      {
        goto LABEL_25;
      }

      if (v15 != a3)
      {
        v16 = v15 + 1;
        v17 = *v15;
        if (v17 == 44)
        {
          v26 = -1;
          v18 = sub_29A0D453C(a1, v16, a3, &v26);
          if (v18 != a3)
          {
            v19 = v18;
            if (v18 + 1 != a3 && *v18 == 92)
            {
              v20 = v18[1];
              v21 = v20 == 125;
              if (v20 == 125)
              {
                v22 = v26;
                if (v26 == -1)
                {
                  v23 = a5;
                  v24 = a6;
                  v25 = a1;
                  v22 = -1;
                  goto LABEL_23;
                }

                if (v26 >= v27)
                {
                  v23 = a5;
                  v24 = a6;
                  v25 = a1;
LABEL_23:
                  sub_29A0D4400(v25, v27, v22, a4, v23, v24, 1);
                  return &v19[2 * v21];
                }

LABEL_25:
                sub_29A0D45D8();
              }
            }
          }
        }

        else if (v16 != a3 && v17 == 92 && *v16 == 125)
        {
          v6 = v15 + 2;
          sub_29A0D4400(a1, v27, v27, a4, a5, a6, 1);
          return v6;
        }
      }

      sub_29A0D4630();
    }
  }

  return v6;
}

unsigned __int8 *sub_29A0D4D14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    v7 = sub_29A0D4E48(a1, a2, a3);
    if (v7 != a2)
    {
      return v7;
    }
  }

  else
  {
    v7 = a2 + 1;
    v6 = *a2;
    if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
    {
      sub_29A0D0F08(a1, v6);
      return v7;
    }

    v9 = sub_29A0D4E48(a1, a2, a3);
    v7 = v9;
    if (v9 != a2)
    {
      return v7;
    }

    if (*v9 == 46)
    {
      v10 = operator new(0x10uLL);
      v11 = *(a1 + 56);
      v12 = *(v11 + 8);
      *v10 = &unk_2A203F468;
      v10[1] = v12;
      *(v11 + 8) = v10;
      *(a1 + 56) = *(*(a1 + 56) + 8);
      return ++v7;
    }
  }

  return sub_29A0D0684(a1, a2, a3);
}

_BYTE *sub_29A0D4E48(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      sub_29A0D0F08(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

void *sub_29A0D4EC0(void *a1)
{
  *a1 = &unk_2A203EEE0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A0D4F2C(void *__p)
{
  *__p = &unk_2A203EEE0;
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_29A0D4FA8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_29A0D4FE8(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > *(a1 + 28))
  {
    sub_29A0D1008();
  }

  sub_29A0D1060(a1, a2 - 48);
  return 1;
}

unsigned __int8 *sub_29A0D5048(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_29A0D50A8(a1, a2, a3);
  if (v6 == a2)
  {
    sub_29A0D4958();
  }

  do
  {
    v7 = v6;
    v6 = sub_29A0D50A8(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_29A0D50A8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_29A0D51EC(a1, a2, a3);
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
        v12 = sub_29A0CDC1C(a1, v9 + 1, a3);
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
    return v9;
  }

  v13 = *(a1 + 28) + 1;

  return sub_29A0CE878(a1, v9, a3, v6, v7 + 1, v13);
}

unsigned __int8 *sub_29A0D51EC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_29A0D52D0(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_29A0D535C(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    v9 = operator new(0x10uLL);
    v10 = *(a1 + 56);
    v11 = *(v10 + 8);
    *v9 = &unk_2A203F468;
    v9[1] = v11;
    *(v10 + 8) = v9;
    *(a1 + 56) = *(*(a1 + 56) + 8);
    return ++v6;
  }

  return sub_29A0D0684(a1, a2, a3);
}

unsigned __int8 *sub_29A0D52D0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36);
    if (v5 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v4 - 36)) & 0x5800000080004D1) != 0)
    {
      return v3;
    }

    if (v5 == 5)
    {
      if (*(a1 + 36))
      {
        return v3;
      }

      v7 = 41;
    }

    else
    {
LABEL_8:
      if ((v4 - 123) < 2)
      {
        return v3;
      }

      v7 = v4;
    }

    sub_29A0D0F08(a1, v7);
    ++v3;
  }

  return v3;
}

unsigned __int8 *sub_29A0D535C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    sub_29A0D0F08(a1, v5);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = sub_29A0D4FE8(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return sub_29A0D35EC(a1, v4, a3, 0);
}

uint64_t sub_29A0D5434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_29A0CF5F0(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_29A0D5784(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 1;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_29A0CFA14(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_29A0D5784(a1, v11, a3, a4, v9 | 0x80u, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_29A0CFA14(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
      }

      while (++v11 != a3);
    }

    v12 = (a4 + 24);
    sub_29A0CFA14(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_29A0D5784(a1, v11, a3, a4, v9 | 0x80u, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_29A0D5600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_29A0D7148(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_29A0D5784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_29A0CF664(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_29A0D5CF4(a1, a2, a3, a4, a5, a6);
  }

  return sub_29A0D57A4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_29A0D57A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  sub_29A0D61E0(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_29A0CFC90((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      sub_29A0CFCC0();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_29A0D636C(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        sub_29A0D62E4(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            sub_29A0D0028(&v59, v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_29A0D62E4(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      sub_29A0D0424(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      sub_29A0D04A4(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      sub_29A0D61E0(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_29A0CFD18();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  sub_29A0D6CE4(&v59);
  return v49;
}

uint64_t sub_29A0D5CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  *v50 = 0;
  memset(&v50[8], 0, 32);
  v51 = 0u;
  memset(v52, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *&v48 = a3;
  *(&v48 + 1) = a3;
  v49 = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  sub_29A0CFB78(&v53, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v54;
  *(v54 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_29A0CFC54((v13 - 8), *(a1 + 28), &v48);
  sub_29A0CFC90(v54 - 5, *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v54;
  *(v54 - 2) = v6;
  v18 = a3 - a2;
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      sub_29A0CFCC0();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          sub_29A0D0424(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          sub_29A0D04A4(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          sub_29A0CFB78(&v53, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_29A0CFD18();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v54 - 12;
        sub_29A0D0028(&v53, v54 - 12);
        v54 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = v24 - *(v17 - 11);
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v50 = *v22;
        *&v50[16] = v27;
        if (v50 != v22)
        {
          sub_29A0D6E98(&v50[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          sub_29A0D7024(v52, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v52[3] + 5) = *(v17 - 11);
        v52[3] = v28;
        v14 = v26;
      }

      v29 = v54;
      if (v14 == v18)
      {
        v30 = v53;
        while (v29 != v30)
        {
          v29 -= 12;
          sub_29A0D0028(&v53, v29);
        }

        v54 = v30;
        v15 = 1;
        v14 = a3 - a2;
      }

      else
      {
        v34 = v54 - 12;
        sub_29A0D0028(&v53, v54 - 12);
        v54 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v54;
  }

  while (v53 != v54);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = a2 + v14;
  *(v35 + 16) = 1;
  if (v51 != *&v50[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *&v50[32]) >> 3);
    v37 = (*&v50[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (*&v50[32])
  {
    *&v51 = *&v50[32];
    operator delete(*&v50[32]);
  }

  *v50 = &v53;
  sub_29A0D0554(v50);
  return v41;
}

void sub_29A0D6180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_29A0CFC10(&a11);
  sub_29A0CFC10(&a27);
  a27 = v27 - 120;
  sub_29A0D0554(&a27);
  _Unwind_Resume(a1);
}

__n128 sub_29A0D61E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = 42 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = *(a1 + 40) + *(a1 + 32);
  if (v6 == v7)
  {
    sub_29A0D6460(a1);
    v5 = *(a1 + 8);
    v7 = *(a1 + 40) + *(a1 + 32);
  }

  v8 = *(v5 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  result = *(a2 + 56);
  *(v8 + 56) = result;
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v11 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 80) = v11;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_29A0D62E4(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_29A0D0028(a1, (*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_29A0D6A3C(a1, 1);
}

int64x2_t sub_29A0D636C(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_29A0D6AB4(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_29B435730);
  a1[2] = result;
  return result;
}

void sub_29A0D6460(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x2A;
  v4 = v2 - 42;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 - a1[1];
  v9 = v7 - *a1;
  if (v8 < v9)
  {
    if (v7 != v6)
    {
      *&v20 = operator new(0xFC0uLL);
      sub_29A0D6614(a1, &v20);
      return;
    }

    *&v20 = operator new(0xFC0uLL);
    sub_29A0D671C(a1, &v20);
LABEL_4:
    v5 = a1[1];
    *&v20 = *v5;
    a1[1] = v5 + 1;
    sub_29A0D6614(a1, &v20);
    return;
  }

  if (v7 == *a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 >> 2;
  }

  v22 = a1;
  *&v20 = sub_29A00C9BC(a1, v10);
  *(&v20 + 1) = v20 + v8;
  *&v21 = v20 + v8;
  *(&v21 + 1) = v20 + 8 * v11;
  v19 = operator new(0xFC0uLL);
  sub_29A0D6828(&v20, &v19);
  v12 = a1[2];
  for (i = -7 - v12; ; i += 8)
  {
    v14 = a1[1];
    if (v12 == v14)
    {
      break;
    }

    sub_29A0D6930(&v20, --v12);
  }

  v15 = *a1;
  v16 = v20;
  v17 = v21;
  *&v20 = *a1;
  *(&v20 + 1) = v14;
  v18 = *(a1 + 1);
  *a1 = v16;
  *(a1 + 1) = v17;
  v21 = v18;
  if (v12 != v18)
  {
    *&v21 = v18 + (-(v18 + i) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_29A0D65C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A0D6614(void *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      v12 = sub_29A00C9BC(a1, v11);
      v14 = &v12[8 * (v11 >> 2)];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = &v14[v16];
        v17 = &v12[8 * (v11 >> 2)];
        do
        {
          v18 = *v15++;
          *v17 = v18;
          v17 += 8;
          v16 -= 8;
        }

        while (v16);
      }

      v19 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[8 * v13];
      if (v19)
      {
        operator delete(v19);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = ((v6 >> 3) + 1) / -2;
      v8 = ((v6 >> 3) + 1) / 2;
      v9 = &v5[-8 * v8];
      v10 = v4 - v5;
      if (v4 != v5)
      {
        memmove(&v5[-8 * v8], v5, v4 - v5);
        v5 = a1[1];
      }

      v4 = &v9[v10];
      a1[1] = &v5[8 * v7];
      a1[2] = &v9[v10];
    }
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_29A0D671C(void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      v10 = 2 * v9;
      v11 = sub_29A00C9BC(a1, v9);
      v5 = &v11[(v10 + 6) & 0xFFFFFFFFFFFFFFF8];
      v13 = a1[1];
      v14 = v5;
      v15 = a1[2] - v13;
      if (v15)
      {
        v14 = &v5[v15];
        v16 = v5;
        do
        {
          v17 = *v13++;
          *v16 = v17;
          v16 += 8;
          v15 -= 8;
        }

        while (v15);
      }

      v18 = *a1;
      *a1 = v11;
      a1[1] = v5;
      a1[2] = v14;
      a1[3] = &v11[8 * v12];
      if (v18)
      {
        operator delete(v18);
        v5 = a1[1];
      }
    }

    else
    {
      v8 = (((v7 - v6) >> 3) + 1) / 2;
      v5 = &v4[8 * v8];
      if (v6 != v4)
      {
        memmove(&v4[8 * v8], v4, v6 - v4);
        v6 = a1[2];
      }

      a1[1] = v5;
      a1[2] = &v6[8 * v8];
    }
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_29A0D6828(void *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      v12 = sub_29A00C9BC(a1[4], v11);
      v14 = &v12[8 * (v11 >> 2)];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = &v14[v16];
        v17 = &v12[8 * (v11 >> 2)];
        do
        {
          v18 = *v15++;
          *v17 = v18;
          v17 += 8;
          v16 -= 8;
        }

        while (v16);
      }

      v19 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[8 * v13];
      if (v19)
      {
        operator delete(v19);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = ((v6 >> 3) + 1) / -2;
      v8 = ((v6 >> 3) + 1) / 2;
      v9 = &v5[-8 * v8];
      v10 = v4 - v5;
      if (v4 != v5)
      {
        memmove(&v5[-8 * v8], v5, v4 - v5);
        v5 = a1[1];
      }

      v4 = &v9[v10];
      a1[1] = &v5[8 * v7];
      a1[2] = &v9[v10];
    }
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_29A0D6930(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      v10 = 2 * v9;
      v11 = sub_29A00C9BC(*(a1 + 32), v9);
      v5 = &v11[(v10 + 6) & 0xFFFFFFFFFFFFFFF8];
      v13 = *(a1 + 8);
      v14 = v5;
      v15 = *(a1 + 16) - v13;
      if (v15)
      {
        v14 = &v5[v15];
        v16 = v5;
        do
        {
          v17 = *v13++;
          *v16 = v17;
          v16 += 8;
          v15 -= 8;
        }

        while (v15);
      }

      v18 = *a1;
      *a1 = v11;
      *(a1 + 8) = v5;
      *(a1 + 16) = v14;
      *(a1 + 24) = &v11[8 * v12];
      if (v18)
      {
        operator delete(v18);
        v5 = *(a1 + 8);
      }
    }

    else
    {
      v8 = (((v7 - v6) >> 3) + 1) / 2;
      v5 = &v4[8 * v8];
      if (v6 != v4)
      {
        memmove(&v4[8 * v8], v4, v6 - v4);
        v6 = *(a1 + 16);
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = &v6[8 * v8];
    }
  }

  else
  {
    v5 = *(a1 + 8);
  }

  *(v5 - 1) = *a2;
  *(a1 + 8) -= 8;
}

uint64_t sub_29A0D6A3C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_29A0D6AB4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 - v2;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v2) >> 3) - 1;
  }

  v6 = a1[4];
  if ((v5 - (a1[5] + v6)) < 0x2A)
  {
    v7 = a1[3];
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v4 >= v9)
    {
      if (v7 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 >> 2;
      }

      v25 = a1;
      v22 = sub_29A00C9BC(a1, v10);
      v23 = v22;
      *&v24 = v22;
      *(&v24 + 1) = &v22[8 * v11];
      v21 = operator new(0xFC0uLL);
      sub_29A0D6828(&v22, &v21);
      v13 = a1[1];
      v12 = a1[2];
      if (v13 != v12)
      {
        do
        {
          sub_29A0D6828(&v22, v13);
          v13 += 8;
          v12 = a1[2];
        }

        while (v13 != v12);
        v13 = a1[1];
      }

      v14 = *a1;
      v15 = v23;
      *a1 = v22;
      a1[1] = v15;
      v22 = v14;
      v23 = v13;
      v16 = a1[3];
      v17 = v24;
      *(a1 + 1) = v24;
      *&v24 = v12;
      *(&v24 + 1) = v16;
      if (v17 - v15 == 8)
      {
        v18 = 21;
      }

      else
      {
        v18 = a1[4] + 42;
      }

      a1[4] = v18;
      if (v12 != v13)
      {
        *&v24 = &v12[(v13 - v12 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      if (v2 == v8)
      {
        v22 = operator new(0xFC0uLL);
        sub_29A0D6614(a1, &v22);
        v19 = a1[2];
        v22 = *(v19 - 8);
        a1[2] = v19 - 8;
      }

      else
      {
        v22 = operator new(0xFC0uLL);
      }

      sub_29A0D671C(a1, &v22);
      if (a1[2] - a1[1] == 8)
      {
        v20 = 21;
      }

      else
      {
        v20 = a1[4] + 42;
      }

      a1[4] = v20;
    }
  }

  else
  {
    a1[4] = v6 + 42;
    v22 = *(v3 - 1);
    a1[2] = v3 - 8;
    sub_29A0D671C(a1, &v22);
  }
}

void sub_29A0D6C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A0D6CE4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_29A0D0028(a1, v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_29A0D6E48(a1);
}

uint64_t sub_29A0D6E48(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

char *sub_29A0D6E98(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - result) >> 3) >= a4)
  {
    v15 = a1[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - result) >> 3) >= a4)
    {
      while (v6 != a3)
      {
        *result = *v6;
        result[16] = *(v6 + 16);
        v6 = (v6 + 24);
        result += 24;
      }

      a1[1] = result;
    }

    else
    {
      v16 = (a2 + v15 - result);
      if (v15 != result)
      {
        do
        {
          *result = *v6;
          result[16] = *(v6 + 16);
          v6 = (v6 + 24);
          result += 24;
        }

        while (v6 != v16);
      }

      if (v16 == a3)
      {
        v17 = v15;
      }

      else
      {
        v17 = v15;
        do
        {
          v18 = *v16;
          *(v15 + 2) = *(v16 + 2);
          *v15 = v18;
          v15 += 24;
          v16 = (v16 + 24);
          v17 += 24;
        }

        while (v16 != a3);
      }

      a1[1] = v17;
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    result = sub_29A012BFC(a1, v12);
    v13 = a1[1];
    while (v6 != a3)
    {
      v14 = *v6;
      *(v13 + 2) = *(v6 + 2);
      *v13 = v14;
      v13 += 24;
      v6 = (v6 + 24);
    }

    a1[1] = v13;
  }

  return result;
}

char *sub_29A0D7024(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  result = *a1;
  if (a4 <= (v8 - result) >> 4)
  {
    v14 = a1[1];
    if (a4 <= (v14 - result) >> 4)
    {
      while (v6 != a3)
      {
        v20 = *v6;
        v21 = v6[1];
        v6 += 2;
        *result = v20;
        *(result + 1) = v21;
        result += 16;
      }

      a1[1] = result;
    }

    else
    {
      v15 = (a2 + v14 - result);
      if (v14 != result)
      {
        do
        {
          v16 = *v6;
          v17 = v6[1];
          v6 += 2;
          *result = v16;
          *(result + 1) = v17;
          result += 16;
        }

        while (v6 != v15);
      }

      if (v15 == a3)
      {
        v18 = v14;
      }

      else
      {
        v18 = v14;
        do
        {
          v19 = *v15++;
          *v14 = v19;
          v14 += 16;
          v18 += 16;
        }

        while (v15 != a3);
      }

      a1[1] = v18;
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 3;
    if (v8 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A0D0518(a1, v11);
    v12 = a1[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 2;
      *v12 = v13;
      v12 += 16;
    }

    a1[1] = v12;
  }

  return result;
}

void sub_29A0D7148(uint64_t a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29A0D7184(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + 24 * a2;
  }
}

void sub_29A0D7184(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = &v4[24 * a2];
      v12 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 1) = 0;
        v4[16] = 0;
        v4 += 24;
        v12 -= 24;
      }

      while (v12);
      v4 = v11;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_29A012C48(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[24 * v6];
    v14 = &v13[24 * a2];
    v15 = 24 * a2;
    v16 = v13;
    do
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 0;
      v16 += 24;
      v15 -= 24;
    }

    while (v15);
    v17 = &v10[24 * v9];
    v18 = *a1;
    v19 = a1[1];
    v20 = &v13[*a1 - v19];
    if (v19 != *a1)
    {
      v21 = v20;
      do
      {
        v22 = *v18;
        *(v21 + 2) = *(v18 + 2);
        *v21 = v22;
        v21 += 24;
        v18 += 24;
      }

      while (v18 != v19);
      v18 = *a1;
    }

    *a1 = v20;
    a1[1] = v14;
    a1[2] = v17;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Arch_Error(pxrInternal__aapl__pxrReserved__ *this, const char *a2, const char *a3, const char *a4, const char *a5)
{
  v8 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], " ArchError: %s\n", this);
  fprintf(*v8, "  Function: %s\n", a2);
  fprintf(*v8, "      File: %s\n", a4);
  fprintf(*v8, "      Line: %zu\n", a3);
  v10 = pxrInternal__aapl__pxrReserved__::ArchAbort(1, v9);
  return pxrInternal__aapl__pxrReserved__::Arch_Warning(v10, v11, v12, v13, v14);
}

uint64_t pxrInternal__aapl__pxrReserved__::Arch_Warning(pxrInternal__aapl__pxrReserved__ *this, const char *a2, const char *a3, const char *a4, const char *a5)
{
  v8 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], " ArchWarn: %s\n", this);
  fprintf(*v8, " Function: %s\n", a2);
  fprintf(*v8, "     File: %s\n", a4);
  return fprintf(*v8, "     Line: %zu\n", a3);
}

void *pxrInternal__aapl__pxrReserved__::ArchStrerror@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = __error();
  strerror_r(*v3, __strerrbuf, 0x100uLL);
  return sub_29A008E78(a1, __strerrbuf);
}

void *pxrInternal__aapl__pxrReserved__::ArchStrerror@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  strerror_r(this, __strerrbuf, 0x100uLL);
  return sub_29A008E78(a2, __strerrbuf);
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchStatIsWritable(uint64_t this, const stat *a2)
{
  if (this)
  {
    v2 = this;
    if ((*(this + 4) & 2) != 0 || getegid() == *(this + 20) && (*(v2 + 4) & 0x10) != 0)
    {
      return 1;
    }

    else if (geteuid() == *(v2 + 16))
    {
      return (*(v2 + 4) >> 7) & 1;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::ArchGetModificationTime(pxrInternal__aapl__pxrReserved__ *this, double *a2, double *a3)
{
  v4 = stat(this, &v6);
  if (!v4)
  {
    *a2 = v6.st_mtimespec.tv_nsec * 0.000000001 + v6.st_mtimespec.tv_sec;
  }

  return v4 == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchNormPath@<X0>(uint64_t result@<X0>, std::string *a2@<X8>)
{
  v2 = result;
  LODWORD(v4) = *(result + 23);
  if ((v4 & 0x80000000) != 0)
  {
    result = sub_29A008D14(a2, *result, *(result + 8));
    LODWORD(v4) = *(v2 + 23);
    if ((v4 & 0x80000000) != 0)
    {
      v7 = *v2;
      v6 = *(v2 + 8);
      v5 = 1;
      goto LABEL_5;
    }
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *result;
    a2->__r_.__value_.__r.__words[2] = *(result + 16);
  }

  v5 = 0;
  v6 = v4;
  v7 = v2;
LABEL_5:
  v8 = &v7[v6];
  if (v6)
  {
    while (*v7 == 47)
    {
      ++v7;
      if (!--v6)
      {
        v7 = v8;
        goto LABEL_15;
      }
    }
  }

  if (v7 != v8)
  {
    v9 = v7;
    while (*v9 != 47)
    {
      if (++v9 == v8)
      {
        goto LABEL_15;
      }
    }

    v8 = v9;
  }

LABEL_15:
  v10 = *v2;
  if (v5)
  {
    v11 = *v2;
  }

  else
  {
    v11 = v2;
  }

  v12 = &v7[-v11];
  if (v12 > 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  LOBYTE(v14) = v4 < 0;
  v4 = v4;
  if (v4 >= 0)
  {
    v15 = v2;
  }

  else
  {
    v15 = *v2;
  }

  if (v4 < 0)
  {
    v4 = *(v2 + 8);
  }

  if (v7 == &v15[v4])
  {
LABEL_108:
    LOBYTE(v42) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_109;
  }

  v16 = v13;
  while (1)
  {
LABEL_28:
    v17 = v8 - v7;
    if (v8 - v7 != 2)
    {
      if (v17 == 1 && *v7 == 46)
      {
        goto LABEL_82;
      }

LABEL_48:
      if ((v14 & 1) == 0)
      {
        v10 = v2;
      }

      if (v7 == &v10[v16])
      {
        v16 += v17;
        size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) != 0)
        {
          size = a2->__r_.__value_.__l.__size_;
        }

        if (v16 != size)
        {
          ++v16;
        }
      }

      else
      {
        while (v7 != v8)
        {
          v27 = *v7++;
          v26 = v27;
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = a2;
          }

          else
          {
            v28 = a2->__r_.__value_.__r.__words[0];
          }

          v28->__r_.__value_.__s.__data_[v16++] = v26;
        }

        v29 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
        v30 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v29 = a2->__r_.__value_.__l.__size_;
        }

        if (v16 != v29)
        {
          if (v30 >= 0)
          {
            v31 = a2;
          }

          else
          {
            v31 = a2->__r_.__value_.__r.__words[0];
          }

          v31->__r_.__value_.__s.__data_[v16++] = 47;
        }
      }

      goto LABEL_82;
    }

    if (*v7 != 46 || v7[1] != 46)
    {
      goto LABEL_48;
    }

    v18 = (a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? a2 : a2->__r_.__value_.__r.__words[0];
    v19 = v13 + v18;
    v20 = v13 + v18;
    v21 = v16 + v18;
    if (v16 == v13 || *(v21 - 1) != 47)
    {
LABEL_42:
      if (v21 != v19)
      {
        v23 = v21;
        result = v21;
        while (1)
        {
          v24 = *--result;
          if (v24 == 47)
          {
            break;
          }

          v23 = result;
          if (result == v19)
          {
            v23 = v13 + v18;
            break;
          }
        }

        v20 = v23;
        goto LABEL_70;
      }
    }

    else
    {
      v22 = v13 + 1 - v16;
      while (v22)
      {
        result = *(v21 - 2);
        --v21;
        ++v22;
        if (result != 47)
        {
          goto LABEL_42;
        }
      }

      v21 = v13 + v18;
    }

    if (v18 == v19)
    {
      goto LABEL_73;
    }

LABEL_70:
    if (v21 - v20 == 2 && *(v21 - 1) == 46 && *(v21 - 2) == 46)
    {
LABEL_73:
      *(v18 + v16) = 46;
      v32 = v16 + 2;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = a2->__r_.__value_.__r.__words[0];
      }

      v33->__r_.__value_.__s.__data_[v16 + 1] = 46;
      v34 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = a2->__r_.__value_.__l.__size_;
      }

      if (v32 == v34)
      {
        v16 += 2;
      }

      else
      {
        v16 += 3;
        if (v35 >= 0)
        {
          v41 = a2;
        }

        else
        {
          v41 = a2->__r_.__value_.__r.__words[0];
        }

        v41->__r_.__value_.__s.__data_[v32] = 47;
      }

      goto LABEL_82;
    }

    v36 = v20 - v18;
    if (v21 != v19)
    {
      v16 = v36;
    }

LABEL_82:
    v37 = *(v2 + 23);
    v10 = *v2;
    v38 = *(v2 + 8);
    if ((v37 & 0x80000000) == 0)
    {
      v39 = v2;
    }

    else
    {
      v39 = *v2;
    }

    if ((v37 & 0x80000000) == 0)
    {
      v38 = *(v2 + 23);
    }

    v40 = &v39[v38];
    if (v8 != v40)
    {
      while (*v8 == 47)
      {
        if (++v8 == v40)
        {
          v7 = v40;
          goto LABEL_92;
        }
      }
    }

    v7 = v8;
LABEL_92:
    if (v7 == v40)
    {
      break;
    }

    v14 = v37 >> 63;
    v8 = v7;
    while (*v8 != 47)
    {
      if (++v8 == v40)
      {
        v8 = v40;
        goto LABEL_28;
      }
    }
  }

  if (v16 <= v13)
  {
    v13 = v16;
    goto LABEL_108;
  }

  v42 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v43 = a2->__r_.__value_.__r.__words[0];
  if (v42 >= 0)
  {
    v43 = a2;
  }

  if (v43->__r_.__value_.__s.__data_[v16 - 1] == 47)
  {
    v13 = v16 - 1;
  }

  else
  {
    v13 = v16;
  }

LABEL_109:
  v44 = a2->__r_.__value_.__l.__size_;
  v45 = v42;
  if ((v42 & 0x80u) == 0)
  {
    v46 = v42;
  }

  else
  {
    v46 = a2->__r_.__value_.__l.__size_;
  }

  if (v13 != v46)
  {
    result = std::string::erase(a2, v13, 0xFFFFFFFFFFFFFFFFLL);
    v45 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    v44 = a2->__r_.__value_.__l.__size_;
    LOBYTE(v42) = *(&a2->__r_.__value_.__s + 23);
  }

  if ((v42 & 0x80u) == 0)
  {
    v47 = v45;
  }

  else
  {
    v47 = v44;
  }

  if (!v47)
  {
    return MEMORY[0x29C2C1A60](a2, ".");
  }

  return result;
}

void sub_29A0D79DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArchAbsPath(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v4 = a1;
    if (!*(a1 + 23))
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
      return;
    }

    goto LABEL_5;
  }

  v4 = *a1;
  if (*(a1 + 8))
  {
LABEL_5:
    if (*v4 == 47)
    {

      pxrInternal__aapl__pxrReserved__::ArchNormPath(a1, a2);
    }

    else
    {
      v5 = operator new[](0x400uLL);
      if (getcwd(v5, 0x400uLL))
      {
        sub_29A008E78(&v13, v5);
        v6 = std::string::append(&v13, "/");
        v7 = *&v6->__r_.__value_.__l.__data_;
        v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
        *&v14.__r_.__value_.__l.__data_ = v7;
        v6->__r_.__value_.__l.__size_ = 0;
        v6->__r_.__value_.__r.__words[2] = 0;
        v6->__r_.__value_.__r.__words[0] = 0;
        v8 = *(a1 + 23);
        if (v8 >= 0)
        {
          v9 = a1;
        }

        else
        {
          v9 = *a1;
        }

        if (v8 >= 0)
        {
          v10 = *(a1 + 23);
        }

        else
        {
          v10 = *(a1 + 8);
        }

        v11 = std::string::append(&v14, v9, v10);
        v12 = *&v11->__r_.__value_.__l.__data_;
        v16 = v11->__r_.__value_.__r.__words[2];
        *__p = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        pxrInternal__aapl__pxrReserved__::ArchNormPath(__p, a2);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v13.__r_.__value_.__l.__data_);
        }
      }

      else if (*(a1 + 23) < 0)
      {
        sub_29A008D14(a2, *a1, *(a1 + 8));
      }

      else
      {
        *&a2->__r_.__value_.__l.__data_ = *a1;
        a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
      }

      operator delete[](v5);
    }

    return;
  }

  sub_29A008D14(a2, v4, 0);
}

void sub_29A0D7BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

  operator delete[](v28);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::ArchGetStatMode(pxrInternal__aapl__pxrReserved__ *this, char *a2, int *a3)
{
  v4 = stat(this, &v6);
  if (!v4)
  {
    *a2 = v6.st_mode;
  }

  return v4 == 0;
}

off_t pxrInternal__aapl__pxrReserved__::ArchGetFileLength(FILE *this, __sFILE *a2)
{
  if (!this)
  {
    return -1;
  }

  v2 = fileno(this);
  if (fstat(v2, &v4) < 0)
  {
    return -1;
  }

  else
  {
    return v4.st_size;
  }
}

off_t pxrInternal__aapl__pxrReserved__::ArchGetFileLength(pxrInternal__aapl__pxrReserved__ *this, const char *a2)
{
  if (stat(this, &v3) < 0)
  {
    return -1;
  }

  else
  {
    return v3.st_size;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchGetFileName@<X0>(FILE *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = fileno(this);
  result = fcntl(v4, 50, v6);
  if (result != -1)
  {
    return MEMORY[0x29C2C1A60](a2, v6);
  }

  return result;
}

void sub_29A0D7D9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArchMakeTmpFileName(uint64_t *a1, uint64_t *a2)
{
  TemporaryDirectory = qword_2A153EDF8;
  if (!qword_2A153EDF8)
  {
    TemporaryDirectory = __DarwinGetTemporaryDirectory();
    qword_2A153EDF8 = TemporaryDirectory;
  }

  sub_29A008E78(__p, TemporaryDirectory);
  add = atomic_fetch_add(dword_2A14F6190, 1u);
  v6 = getpid();
  if (v13 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (*(a1 + 23) >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (add == 1)
  {
    pxrInternal__aapl__pxrReserved__::ArchStringPrintf("%s/%s.%d%s", v7, v8, v9, v10, v6, v11);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::ArchStringPrintf("%s/%s.%d.%d%s", v7, v8, v9, v10, v6, add, v11);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0D7EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchGetTmpDir(pxrInternal__aapl__pxrReserved__ *this)
{
  result = qword_2A153EDF8;
  if (!qword_2A153EDF8)
  {
    result = __DarwinGetTemporaryDirectory();
    qword_2A153EDF8 = result;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchMakeTmpFile(const char *a1, char *a2)
{
  TemporaryDirectory = qword_2A153EDF8;
  if (!qword_2A153EDF8)
  {
    TemporaryDirectory = __DarwinGetTemporaryDirectory();
    qword_2A153EDF8 = TemporaryDirectory;
  }

  sub_29A008E78(__p, TemporaryDirectory);
  TmpFile = pxrInternal__aapl__pxrReserved__::ArchMakeTmpFile(__p, a1, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return TmpFile;
}

void sub_29A0D7F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchMakeTmpFile(uint64_t *a1, const char *a2, char *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::ArchStringPrintf("%s/%s.XXXXXX", a2, a3, v4);
  if (v18 < 0)
  {
    MEMORY[0x2A1C7C4A8](v5, v6, v7);
    v9 = &v17 - ((v12 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v9, v12 + 1);
    v11 = v17;
  }

  else
  {
    MEMORY[0x2A1C7C4A8](v5, v18 + 1, v7);
    v9 = &v17 - v8;
    bzero(&v17 - v8, v10);
    v11 = &v17;
  }

  v13 = strcpy(v9, v11);
  v14 = mkstemp(v13);
  v15 = v14;
  if (v14 != -1)
  {
    fchmod(v14, 0x1A0u);
    if (a3)
    {
      MEMORY[0x29C2C1A60](a3, v9);
    }
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  return v15;
}

void pxrInternal__aapl__pxrReserved__::ArchMakeTmpSubdir(uint64_t *a1@<X0>, const char *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::ArchStringPrintf("%s/%s.XXXXXX", a2, a3, v5);
  if (v18 < 0)
  {
    v9 = v17[1] + 1;
    MEMORY[0x2A1C7C4A8](v6, v7, v8);
    v11 = v17 - ((v13 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v11, v9);
    v12 = v17[0];
  }

  else
  {
    v9 = (v18 + 1);
    MEMORY[0x2A1C7C4A8](v6, v7, v8);
    v11 = v17 - v10;
    bzero(v17 - v10, v9);
    v12 = v17;
  }

  v14 = strncpy(v11, v12, v9);
  v15 = mkdtemp(v14);
  v16 = v15;
  if (v15)
  {
    chmod(v15, 0x1E8u);
    MEMORY[0x29C2C1A60](a4, v16);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_29A0D8280(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0D82B4()
{
  result = __DarwinGetTemporaryDirectory();
  qword_2A153EDF8 = result;
  return result;
}

size_t *pxrInternal__aapl__pxrReserved__::Arch_Unmapper::operator()(size_t *result, void *a2)
{
  if (a2)
  {
    return munmap(a2, *result);
  }

  return result;
}

{
  if (a2)
  {
    return munmap(a2, *result);
  }

  return result;
}

double sub_29A0D8308@<D0>(FILE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  FileLength = pxrInternal__aapl__pxrReserved__::ArchGetFileLength(a1, a2);
  if (FileLength < 0)
  {
    *a3 = 0;
    a3[1] = -1;
  }

  else
  {
    v8 = FileLength;
    v9 = fileno(a1);
    v10 = mmap(0, v8, 1, 2, v9, 0);
    if (v10 == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    *a3 = v11;
    a3[1] = v8;
    if (a2 && !v11)
    {
      v12 = *__error();
      v13 = "system limit on mapped regions exceeded, or out of memory";
      if (v12 == 12 || v12 == 24)
      {
        goto LABEL_11;
      }

      if (v12 == 22)
      {
        v13 = "bad arguments to mmap()";
LABEL_11:
        MEMORY[0x29C2C1A60](a2, v13);
        return result;
      }

      pxrInternal__aapl__pxrReserved__::ArchStrerror(&v14);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      result = *&v14;
      *a2 = v14;
      *(a2 + 16) = v15;
    }
  }

  return result;
}

double sub_29A0D8414@<D0>(FILE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  FileLength = pxrInternal__aapl__pxrReserved__::ArchGetFileLength(a1, a2);
  if (FileLength < 0)
  {
    *a3 = 0;
    a3[1] = -1;
  }

  else
  {
    v8 = FileLength;
    v9 = fileno(a1);
    v10 = mmap(0, v8, 3, 2, v9, 0);
    if (v10 == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    *a3 = v11;
    a3[1] = v8;
    if (a2 && !v11)
    {
      v12 = *__error();
      v13 = "system limit on mapped regions exceeded, or out of memory";
      if (v12 == 12 || v12 == 24)
      {
        goto LABEL_11;
      }

      if (v12 == 22)
      {
        v13 = "bad arguments to mmap()";
LABEL_11:
        MEMORY[0x29C2C1A60](a2, v13);
        return result;
      }

      pxrInternal__aapl__pxrReserved__::ArchStrerror(&v14);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      result = *&v14;
      *a2 = v14;
      *(a2 + 16) = v15;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::ArchMapFileReadOnly(const char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v5 = fopen(a1, "rb");
  if (v5)
  {
    v6 = v5;
    sub_29A0D8308(v5, a2, a3);

    fclose(v6);
  }

  else
  {
    if (a2)
    {
      pxrInternal__aapl__pxrReserved__::ArchStrerror(&v7);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v7;
      *(a2 + 16) = v8;
    }

    *a3 = 0;
    a3[1] = -1;
  }
}

void pxrInternal__aapl__pxrReserved__::ArchMapFileReadWrite(const char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v5 = fopen(a1, "rb");
  if (v5)
  {
    v6 = v5;
    sub_29A0D8414(v5, a2, a3);

    fclose(v6);
  }

  else
  {
    if (a2)
    {
      pxrInternal__aapl__pxrReserved__::ArchStrerror(&v7);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v7;
      *(a2 + 16) = v8;
    }

    *a3 = 0;
    a3[1] = -1;
  }
}

void pxrInternal__aapl__pxrReserved__::ArchMemAdvise(uint64_t a1, uint64_t a2, int a3)
{
  if ((atomic_load_explicit(&qword_2A153EE08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EE08))
  {
    qword_2A153EE00 = -sysconf(29);
    __cxa_guard_release(&qword_2A153EE08);
  }

  v6 = qword_2A153EE00 & a1;
  v7 = a1 - (qword_2A153EE00 & a1) + a2;
  v8 = posix_madvise((qword_2A153EE00 & a1), v7, dword_29B4359E0[a3]);
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x29EDCA610];
    v11 = *__error();
    pxrInternal__aapl__pxrReserved__::ArchStrerror(__p);
    if (v14 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    fprintf(v10, "failed call to posix_madvise(%zd, %zd)ret=%d, errno=%d '%s'\n", v6, v7, v9, v11, v12);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

ssize_t pxrInternal__aapl__pxrReserved__::ArchPRead(FILE *this, __sFILE *a2, char *a3, off_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v7 = fileno(this);
  result = pread(v7, a2, v5, a4);
  if (result != v5 && result)
  {
    v9 = 0;
    while (1)
    {
      if (result == -1)
      {
        if (*__error() != 4)
        {
          return -1;
        }
      }

      else if (result >= 1)
      {
        a2 = (a2 + result);
        a4 += result;
        v5 -= result;
        v9 += result;
      }

      result = pread(v7, a2, v5, a4);
      if (result == v5 || !result)
      {
        result += v9;
        return result;
      }
    }
  }

  return result;
}

char *pxrInternal__aapl__pxrReserved__::ArchPWrite(FILE *this, __sFILE *a2, char *a3, off_t a4)
{
  if (a4 < 0)
  {
    return -1;
  }

  v4 = a4;
  v7 = fileno(this);
  v8 = pwrite(v7, a2, a3, v4);
  if (v8 != a3)
  {
    v9 = 0;
    while (v8 != -1)
    {
      v10 = v9;
      v11 = a3;
      v9 += v8;
      a3 -= v8;
      v4 += v8;
      a2 = (a2 + v8);
      v8 = pwrite(v7, a2, a3, v4);
      if (v8 == a3)
      {
        return &v11[v10];
      }
    }

    return -1;
  }

  return a3;
}

void pxrInternal__aapl__pxrReserved__::ArchReadLink(pxrInternal__aapl__pxrReserved__ *this@<X0>, void *a2@<X8>)
{
  if (this && *this)
  {
    v5 = 0;
    v6 = 1024;
    while (1)
    {
      v7 = operator new[](v6);
      if (v5)
      {
        operator delete[](v5);
      }

      v8 = readlink(this, v7, v6);
      if (v8 == -1)
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
        goto LABEL_15;
      }

      if (v8 < v6)
      {
        break;
      }

      if (lstat(this, &v9))
      {
        v6 *= 2;
      }

      else
      {
        v6 = v9.st_size + 1;
      }

      v5 = v7;
    }

    v7[v8] = 0;
    sub_29A008E78(a2, v7);
LABEL_15:
    operator delete[](v7);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void *sub_29A0D8AA8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return munmap(result, *(a1 + 8));
  }

  return result;
}

void *sub_29A0D8AD8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return munmap(result, *(a1 + 8));
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::ArchGetPrettierFunctionName(uint64_t a1@<X0>, const std::string *a2@<X1>, std::string *a3@<X8>)
{
  v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v6 = a2->__r_.__value_.__r.__words[0];
  size = a2->__r_.__value_.__l.__size_;
  if (v5 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if (v5 >= 0)
  {
    v9 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = a2->__r_.__value_.__l.__size_;
  }

  if (v9 >= 7)
  {
    v10 = v8 + v9;
    v11 = v9;
    v12 = v8;
    do
    {
      v13 = memchr(v12, 32, v11 - 6);
      if (!v13)
      {
        break;
      }

      v14 = *v13 == 1769429792 && *(v13 + 3) == 543716457;
      if (v14)
      {
        if (v13 != v10)
        {
          v15 = v13 - v8;
          if (v15 != -1)
          {
            std::string::basic_string(&v89, a2, 0, v15, &v87);
            std::string::basic_string(&v87, a2, v15 + 6, v9 - v15 - 7, &__str);
            __dst = v89;
            v86 = v87;
            goto LABEL_23;
          }
        }

        break;
      }

      v12 = (v13 + 1);
      v11 = v10 - v12;
    }

    while (v10 - v12 >= 7);
  }

  if ((v5 & 0x80000000) != 0)
  {
    sub_29A008D14(&__dst, v6, size);
  }

  else
  {
    __dst = *a2;
  }

  memset(&v86, 0, sizeof(v86));
LABEL_23:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  v16 = sub_29A008E78(&v89, "::");
  v17 = *(a1 + 23);
  if (v17 >= 0)
  {
    v18 = a1;
  }

  else
  {
    v18 = *a1;
  }

  if (v17 >= 0)
  {
    v19 = *(a1 + 23);
  }

  else
  {
    v19 = *(a1 + 8);
  }

  std::string::append(v16, v18, v19);
  v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __p.__r_.__value_.__l.__size_;
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v89;
  }

  else
  {
    v22 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v89.__r_.__value_.__l.__size_;
  }

  if (v23 && v20 >= v23)
  {
    v45 = p_p + v20;
    v46 = v22->__r_.__value_.__s.__data_[0];
    v47 = p_p;
    do
    {
      v48 = v20 - v23;
      if (v48 == -1)
      {
        break;
      }

      v49 = memchr(v47, v46, v48 + 1);
      if (!v49)
      {
        break;
      }

      v50 = v49;
      if (!memcmp(v49, v22, v23))
      {
        if (v50 == v45)
        {
          v78 = -1;
        }

        else
        {
          v78 = v50 - p_p;
        }

        if (v78 + 1 > 1)
        {
          if (*(a1 + 23) >= 0)
          {
            v79 = *(a1 + 23);
          }

          else
          {
            v79 = *(a1 + 8);
          }

          v80 = sub_29A0D94AC(&__p, v78);
          std::string::basic_string(&__str, &__p, v80, v78 + v79 - v80 + 2, &v87);
          goto LABEL_48;
        }

        break;
      }

      v47 = (v50 + 1);
      v20 = v45 - (v50 + 1);
    }

    while (v20 >= v23);
  }

  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(&__str, *a1, *(a1 + 8));
  }

  else
  {
    __str = *a1;
  }

LABEL_48:
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v82.__r_.__value_.__r.__words[1] = 0uLL;
  v82.__r_.__value_.__r.__words[0] = &v82.__r_.__value_.__l.__size_;
  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v86.__r_.__value_.__l.__size_;
  }

  for (i = std::string::rfind(&v86, 61, v24); i != -1; i = std::string::rfind(&v86, 61, v24))
  {
    v26 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v86;
    }

    else
    {
      v27 = v86.__r_.__value_.__r.__words[0];
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v86.__r_.__value_.__l.__size_;
    }

    if (v26 <= i)
    {
LABEL_66:
      v28 = -1;
    }

    else
    {
      v28 = i;
      while (1)
      {
        v29 = v27->__r_.__value_.__s.__data_[v28];
        if (v29 != 61 && v29 != 32)
        {
          break;
        }

        if (v26 == ++v28)
        {
          goto LABEL_66;
        }
      }
    }

    if (v26 > i)
    {
      v26 = i + 1;
    }

    if (v26)
    {
      v30 = v26 - 1;
      do
      {
        v31 = v27->__r_.__value_.__s.__data_[v30];
        if (v31 != 61 && v31 != 32)
        {
          break;
        }

        --v30;
      }

      while (v30 != -1);
    }

    else
    {
      v30 = -1;
    }

    v32 = sub_29A0D94AC(&v86, v30);
    std::string::basic_string(&v89, &v86, v28, v24 - v28, &v87);
    std::string::basic_string(&v87, &v86, v32, v30 - v32 + 1, &v88);
    v88 = &v87;
    v33 = sub_29A00B4AC(&v82, &v87.__r_.__value_.__l.__data_, &unk_29B4D6118, &v88);
    v34 = v33;
    if (*(v33 + 79) < 0)
    {
      operator delete(v33[7]);
    }

    *(v34 + 7) = v89;
    *(&v89.__r_.__value_.__s + 23) = 0;
    v89.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }
    }

    v35 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v86;
    }

    else
    {
      v36 = v86.__r_.__value_.__r.__words[0];
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v86.__r_.__value_.__l.__size_;
    }

    if (v35 <= v32 - 1)
    {
      v37 = v35;
    }

    else
    {
      v37 = v32;
    }

    v38 = &v36[-1].__r_.__value_.__r.__words[2] + 7;
    do
    {
      v24 = v37;
      if (!v37)
      {
        break;
      }

      v39 = memchr(" =,;", v38[v37], 4uLL);
      v37 = v24 - 1;
    }

    while (v39);
  }

  *&v87.__r_.__value_.__r.__words[1] = 0uLL;
  v87.__r_.__value_.__r.__words[0] = &v87.__r_.__value_.__l.__size_;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = __str.__r_.__value_.__l.__size_;
  }

  if (v41 >= 1)
  {
    v42 = p_str + v41;
    v43 = p_str;
    while (1)
    {
      v44 = memchr(v43, 60, v41);
      if (!v44)
      {
        goto LABEL_155;
      }

      if (*v44 == 60)
      {
        break;
      }

      v43 = (v44 + 1);
      v41 = v42 - v43;
      if (v42 - v43 < 1)
      {
        goto LABEL_155;
      }
    }

    if (v44 != v42)
    {
      v51 = v44 - p_str;
      while (v51 != -1)
      {
        v53 = __str.__r_.__value_.__l.__size_;
        v52 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &__str;
        }

        else
        {
          v54 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v55 = __str.__r_.__value_.__l.__size_;
        }

        if (v55 > v51)
        {
          v56 = v51;
          while (1)
          {
            v57 = v54->__r_.__value_.__s.__data_[v56];
            if (v57 != 60 && v57 != 32)
            {
              break;
            }

            if (v55 == ++v56)
            {
              goto LABEL_124;
            }
          }

          if (v56 != -1)
          {
            if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              if (*(__str.__r_.__value_.__r.__words[0] + v56) != 60)
              {
LABEL_134:
                if (v53 > v56)
                {
                  v58 = v56;
                  while (1)
                  {
                    v59 = v52->__r_.__value_.__s.__data_[v58];
                    if (v59 == 44 || v59 == 62)
                    {
                      break;
                    }

                    if (v53 == ++v58)
                    {
                      goto LABEL_144;
                    }
                  }

                  if (v53 != v58 && v58 != -1)
                  {
                    if (v54->__r_.__value_.__s.__data_[v58] == 44)
                    {
                      v51 = v58 + 1;
                    }

                    else
                    {
                      v51 = std::string::find(&__str, 60, v56);
                    }

                    goto LABEL_148;
                  }
                }

LABEL_144:
                v60 = std::string::find(&__str, 62, v56);
                if (v60 != -1)
                {
                  v58 = v60;
                  goto LABEL_147;
                }

                v58 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  v51 = -1;
                  v58 = __str.__r_.__value_.__l.__size_;
                }

                else
                {
LABEL_147:
                  v51 = -1;
                }

LABEL_148:
                std::string::basic_string(&v89, &__str, v56, v58 - v56, &v88);
                v61 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
                if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v61 = v89.__r_.__value_.__l.__size_;
                }

                if (v61)
                {
                  v62 = sub_29A01BCCC(&v82, &v89.__r_.__value_.__l.__data_);
                  if (&v82.__r_.__value_.__r.__words[1] != v62)
                  {
                    sub_29A0D956C(&v87, (v62 + 32), (v62 + 32));
                  }
                }

                goto LABEL_125;
              }
            }

            else
            {
              v52 = &__str;
              v53 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if (__str.__r_.__value_.__s.__data_[v56] != 60)
              {
                goto LABEL_134;
              }
            }
          }
        }

LABEL_124:
        memset(&v89, 0, sizeof(v89));
        v51 = -1;
LABEL_125:
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }
      }
    }
  }

LABEL_155:
  sub_29A01752C(&v82, v82.__r_.__value_.__l.__size_);
  v63 = v87.__r_.__value_.__l.__size_;
  v82 = v87;
  if (v87.__r_.__value_.__r.__words[2])
  {
    *(v87.__r_.__value_.__l.__size_ + 16) = &v82.__r_.__value_.__l.__size_;
    v87.__r_.__value_.__r.__words[0] = &v87.__r_.__value_.__l.__size_;
    *&v87.__r_.__value_.__r.__words[1] = 0uLL;
    v63 = 0;
  }

  else
  {
    v82.__r_.__value_.__r.__words[0] = &v82.__r_.__value_.__l.__size_;
  }

  sub_29A01752C(&v87, v63);
  memset(&v89, 0, sizeof(v89));
  if (v82.__r_.__value_.__r.__words[2])
  {
    v64 = v82.__r_.__value_.__r.__words[0];
    if (v82.__r_.__value_.__l.__data_ != &v82.__r_.__value_.__r.__words[1])
    {
      do
      {
        v65 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v65 = v89.__r_.__value_.__l.__size_;
        }

        if (v65)
        {
          v66 = ", ";
        }

        else
        {
          v66 = " [with ";
        }

        std::string::append(&v89, v66);
        v67 = *(v64 + 55);
        if (v67 >= 0)
        {
          v68 = (v64 + 32);
        }

        else
        {
          v68 = *(v64 + 32);
        }

        if (v67 >= 0)
        {
          v69 = *(v64 + 55);
        }

        else
        {
          v69 = *(v64 + 40);
        }

        std::string::append(&v89, v68, v69);
        std::string::append(&v89, " = ");
        v70 = *(v64 + 79);
        if (v70 >= 0)
        {
          v71 = (v64 + 56);
        }

        else
        {
          v71 = *(v64 + 56);
        }

        if (v70 >= 0)
        {
          v72 = *(v64 + 79);
        }

        else
        {
          v72 = *(v64 + 64);
        }

        std::string::append(&v89, v71, v72);
        v73 = *(v64 + 8);
        if (v73)
        {
          do
          {
            v74 = v73;
            v73 = v73->__r_.__value_.__r.__words[0];
          }

          while (v73);
        }

        else
        {
          do
          {
            v74 = *(v64 + 16);
            v14 = v74->__r_.__value_.__r.__words[0] == v64;
            v64 = v74;
          }

          while (!v14);
        }

        v64 = v74;
      }

      while (v74 != &v82.__r_.__value_.__r.__words[1]);
    }

    std::string::append(&v89, "]");
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v75 = &__str;
  }

  else
  {
    v75 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v76 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v76 = __str.__r_.__value_.__l.__size_;
  }

  v77 = std::string::insert(&v89, 0, v75, v76);
  *a3 = *v77;
  v77->__r_.__value_.__l.__size_ = 0;
  v77->__r_.__value_.__r.__words[2] = 0;
  v77->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  sub_29A01752C(&v82, v82.__r_.__value_.__l.__size_);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29A0D93C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_29A0D2850(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0D94AC(uint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = *a1;
  if (v2 >= 0)
  {
    v3 = a1;
  }

  if (v2 < 0)
  {
    v2 = a1[1];
  }

  if (v2 > a2)
  {
    v4 = a2 + 1;
  }

  else
  {
    v4 = v2;
  }

  v5 = v3 - 1;
  while (v4)
  {
    v6 = *(v5 + v4--);
    if (v6 == 62 || v6 == 32)
    {
      if (v4 != -1)
      {
LABEL_13:
        if (*(v3 + v4) == 32)
        {
          return v4 + 1;
        }

        v7 = v4 - 1;
        v8 = 1;
        do
        {
          v9 = v7;
          if (!v7)
          {
            break;
          }

          v10 = *(v3 + v7);
          v11 = v10 == 60 ? -1 : 0;
          if (v10 == 62)
          {
            v11 = 1;
          }

          v7 = v9 - 1;
          v8 += v11;
        }

        while (v8);
        if (v2 > v9)
        {
          v4 = v9 + 1;
        }

        else
        {
          v4 = v2;
        }

        while (v4)
        {
          v12 = *(v5 + v4--);
          if (v12 == 62 || v12 == 32)
          {
            if (v4 != -1)
            {
              goto LABEL_13;
            }

            return v4 + 1;
          }
        }
      }

      return 0;
    }
  }

  return 0;
}

uint64_t *sub_29A0D956C(char *a1, const void **a2, __int128 *a3)
{
  v5 = sub_29A00B0D0(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29A019658(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchHash(pxrInternal__aapl__pxrReserved__ *this, const char *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A0D96B0(this, a2, &v4, &v3);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchHash(pxrInternal__aapl__pxrReserved__ *this, const char *a2, unsigned int a3)
{
  v4 = a3;
  v5 = a3;
  sub_29A0D96B0(this, a2, &v5, &v4);
  return v5;
}

unint64_t pxrInternal__aapl__pxrReserved__::ArchHash64(pxrInternal__aapl__pxrReserved__ *this, const char *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A0D96B0(this, a2, &v3, &v4);
  return v3;
}

unint64_t pxrInternal__aapl__pxrReserved__::ArchHash64(pxrInternal__aapl__pxrReserved__ *this, const char *a2, uint64_t a3)
{
  v4 = a3;
  v5 = a3;
  sub_29A0D96B0(this, a2, &v4, &v5);
  return v4;
}

unint64_t sub_29A0D96B0(unint64_t __src, size_t __n, unint64_t *a3, uint64_t *a4)
{
  p_dst = __src;
  v186 = *MEMORY[0x29EDCA608];
  if (__n > 0xBF)
  {
    v37 = 0xDEADBEEFDEADBEEFLL;
    v38 = *a3;
    v39 = *a4;
    v40 = __n % 0x60;
    v41 = 96 * (__n / 0x60);
    v42 = (p_dst + v41);
    v177 = a3;
    if ((p_dst & 7) != 0)
    {
      if (v41 >= 1)
      {
        v43 = 0xDEADBEEFDEADBEEFLL;
        v44 = *a4;
        v45 = v38;
        v46 = 0xDEADBEEFDEADBEEFLL;
        v47 = *a4;
        v48 = v38;
        v49 = 0xDEADBEEFDEADBEEFLL;
        v50 = *a4;
        v51 = v38;
        do
        {
          v52 = *(p_dst + 16);
          __dst = *p_dst;
          v181 = v52;
          v53 = *(p_dst + 48);
          v182 = *(p_dst + 32);
          v183 = v53;
          v54 = *(p_dst + 80);
          v184 = *(p_dst + 64);
          v185 = v54;
          v55 = ((__dst + v51) ^ v37) + v50;
          v56 = ((*(&__dst + 1) + v50) ^ __ROR8__(__dst + v51, 53)) + (v39 ^ v49);
          v57 = v181 + (v39 ^ v49);
          v58 = (v57 ^ __ROR8__(*(&__dst + 1) + v50, 32)) + (v55 ^ v48);
          v59 = (v55 ^ v48) + *(&v181 + 1);
          v49 = (v59 ^ __ROR8__(v57, 21)) + (v56 ^ v47);
          v60 = (v56 ^ v47) + v182;
          v48 = (v60 ^ __ROR8__(v59, 33)) + (v58 ^ v46);
          v61 = (v58 ^ v46) + *(&v182 + 1);
          v47 = (v61 ^ __ROR8__(v60, 47)) + (v49 ^ v45);
          v62 = (v49 ^ v45) + v183;
          v46 = (v62 ^ __ROR8__(v61, 36)) + (v48 ^ v44);
          v63 = (v48 ^ v44) + *(&v183 + 1);
          v45 = (v63 ^ __ROR8__(v62, 25)) + (v47 ^ v43);
          v64 = (v47 ^ v43) + v184;
          v44 = (v64 ^ __ROR8__(v63, 7)) + (v46 ^ v38);
          v65 = (v46 ^ v38) + *(&v184 + 1);
          v43 = (v65 ^ __ROR8__(v64, 9)) + (v45 ^ v39);
          v66 = (v45 ^ v39) + v54;
          v67 = v44 ^ v55;
          v51 = v43 ^ v56;
          v38 = (v66 ^ __ROR8__(v65, 10)) + v67;
          v68 = v67 + *(&v54 + 1);
          v50 = v38 ^ v58;
          v37 = __ROR8__(v68, 18);
          v39 = (v68 ^ __ROR8__(v66, 42)) + (v43 ^ v56);
          p_dst += 96;
        }

        while (p_dst < v42);
        goto LABEL_20;
      }
    }

    else if (v41 >= 1)
    {
      v43 = 0xDEADBEEFDEADBEEFLL;
      v44 = *a4;
      v45 = v38;
      v46 = 0xDEADBEEFDEADBEEFLL;
      v47 = *a4;
      v48 = v38;
      v49 = 0xDEADBEEFDEADBEEFLL;
      v50 = *a4;
      v51 = v38;
      do
      {
        v69 = *p_dst + v51;
        v70 = (v69 ^ v37) + v50;
        v71 = *(p_dst + 8) + v50;
        v72 = (v71 ^ __ROR8__(v69, 53)) + (v39 ^ v49);
        v73 = *(p_dst + 16) + (v39 ^ v49);
        v74 = (v73 ^ __ROR8__(v71, 32)) + (v70 ^ v48);
        v75 = (v70 ^ v48) + *(p_dst + 24);
        v49 = (v75 ^ __ROR8__(v73, 21)) + (v72 ^ v47);
        v76 = (v72 ^ v47) + *(p_dst + 32);
        v48 = (v76 ^ __ROR8__(v75, 33)) + (v74 ^ v46);
        v77 = (v74 ^ v46) + *(p_dst + 40);
        v47 = (v77 ^ __ROR8__(v76, 47)) + (v49 ^ v45);
        v78 = (v49 ^ v45) + *(p_dst + 48);
        v46 = (v78 ^ __ROR8__(v77, 36)) + (v48 ^ v44);
        v79 = (v48 ^ v44) + *(p_dst + 56);
        v45 = (v79 ^ __ROR8__(v78, 25)) + (v47 ^ v43);
        v80 = (v47 ^ v43) + *(p_dst + 64);
        v44 = (v80 ^ __ROR8__(v79, 7)) + (v46 ^ v38);
        v81 = (v46 ^ v38) + *(p_dst + 72);
        v43 = (v81 ^ __ROR8__(v80, 9)) + (v45 ^ v39);
        v82 = (v45 ^ v39) + *(p_dst + 80);
        v83 = v44 ^ v70;
        v51 = v43 ^ v72;
        v38 = (v82 ^ __ROR8__(v81, 10)) + v83;
        v84 = v83 + *(p_dst + 88);
        v50 = v38 ^ v74;
        v37 = __ROR8__(v84, 18);
        v39 = (v84 ^ __ROR8__(v82, 42)) + (v43 ^ v72);
        p_dst += 96;
      }

      while (p_dst < v42);
      goto LABEL_20;
    }

    v51 = v38;
    v50 = *a4;
    v49 = 0xDEADBEEFDEADBEEFLL;
    v48 = v38;
    v47 = *a4;
    v46 = 0xDEADBEEFDEADBEEFLL;
    v45 = v38;
    v44 = *a4;
    v43 = 0xDEADBEEFDEADBEEFLL;
LABEL_20:
    v175 = v38;
    v176 = v39;
    v179 = v40;
    memcpy(&__dst, v42, v40);
    bzero(&__dst + v179, 96 - v179);
    HIBYTE(v185) = v179;
    v85 = *(&__dst + 1) + v50 + v37 + *(&v185 + 1);
    v86 = __dst + v51 + (v85 ^ (v181 + v49));
    v87 = (v86 ^ (*(&v181 + 1) + v48)) + __ROR8__(*(&__dst + 1) + v50, 20);
    v88 = (v87 ^ (v182 + v47)) + __ROR8__(v85 ^ (v181 + v49), 49);
    v89 = (v88 ^ (*(&v182 + 1) + v46)) + __ROR8__(v86 ^ (*(&v181 + 1) + v48), 30);
    v90 = (v89 ^ (v183 + v45)) + __ROR8__(v87 ^ (v182 + v47), 43);
    v91 = (v90 ^ (*(&v183 + 1) + v44)) + __ROR8__(v88 ^ (*(&v182 + 1) + v46), 26);
    v92 = (v91 ^ (v184 + v43)) + __ROR8__(v89 ^ (v183 + v45), 31);
    v93 = (v92 ^ (*(&v184 + 1) + v175)) + __ROR8__(v90 ^ (*(&v183 + 1) + v44), 54);
    v94 = (v93 ^ (v185 + v176)) + __ROR8__(v91 ^ (v184 + v43), 51);
    v95 = v94 ^ v85;
    v96 = v95 + __ROR8__(v92 ^ (*(&v184 + 1) + v175), 26);
    v97 = v96 ^ v86;
    v98 = v97 + __ROR8__(v93 ^ (v185 + v176), 11);
    v99 = v98 ^ v87;
    v100 = v99 + __ROR8__(v95, 22);
    v101 = v100 ^ v88;
    v102 = v101 + __ROR8__(v97, 10);
    v103 = v102 ^ v89;
    v104 = v103 + __ROR8__(v99, 20);
    v105 = v104 ^ v90;
    v106 = v105 + __ROR8__(v101, 49);
    v107 = v106 ^ v91;
    v108 = v107 + __ROR8__(v103, 30);
    v109 = v108 ^ v92;
    v110 = v109 + __ROR8__(v105, 43);
    v111 = v110 ^ v93;
    v112 = v111 + __ROR8__(v107, 26);
    v113 = v112 ^ v94;
    v114 = v113 + __ROR8__(v109, 31);
    v115 = v114 ^ v96;
    v116 = v115 + __ROR8__(v111, 54);
    v117 = v116 ^ v98;
    v118 = v117 + __ROR8__(v113, 51);
    v119 = v118 ^ v100;
    v120 = v119 + __ROR8__(v115, 26);
    v121 = v120 ^ v102;
    __src = v121 + __ROR8__(v117, 11);
    v122 = __src ^ v104;
    v123 = v122 + __ROR8__(v119, 22);
    v124 = v123 ^ v106;
    v125 = v124 + __ROR8__(v121, 10);
    v126 = v125 ^ v108;
    v127 = v126 + __ROR8__(v122, 20);
    v128 = v127 ^ v110;
    v129 = (v128 + __ROR8__(v124, 49)) ^ v112;
    v130 = (v129 + __ROR8__(v126, 30)) ^ v114;
    v131 = (v130 + __ROR8__(v128, 43)) ^ v116;
    v132 = (v131 + __ROR8__(v129, 26)) ^ v118;
    v133 = (v132 + __ROR8__(v130, 31)) ^ v120;
    v134 = (v133 + __ROR8__(v131, 54)) ^ __src;
    v135 = (((v134 + __ROR8__(v132, 51)) ^ v123) + __ROR8__(v133, 26)) ^ v125;
    *v177 = __ROR8__(v135, 10);
    *a4 = (v135 + __ROR8__(v134, 11)) ^ v127;
    return __src;
  }

  if ((__src & 7) != 0)
  {
    __src = memcpy(&__dst, __src, __n);
    p_dst = &__dst;
  }

  v8 = __n & 0x1F;
  v9 = *a3;
  v10 = *a4;
  if (__n < 0x10)
  {
    v13 = 0xDEADBEEFDEADBEEFLL;
    v12 = 0xDEADBEEFDEADBEEFLL;
  }

  else
  {
    if (((__n >> 3) & 0x1C) != 0)
    {
      v11 = p_dst + 8 * ((__n >> 3) & 0x1C);
      v12 = 0xDEADBEEFDEADBEEFLL;
      v13 = 0xDEADBEEFDEADBEEFLL;
      do
      {
        v14 = *(p_dst + 8) + v12;
        v15 = v14 + __ROR8__(*p_dst + v13, 14);
        v16 = v15 ^ v9;
        v17 = v16 + __ROR8__(v14, 12);
        v18 = v17 ^ v10;
        v19 = v18 + __ROR8__(v16, 34);
        v20 = v19 ^ v15;
        v21 = v20 + __ROR8__(v18, 23);
        v22 = v21 ^ v17;
        v23 = v22 + __ROR8__(v20, 10);
        v24 = v23 ^ v19;
        v25 = v24 + __ROR8__(v22, 16);
        v26 = v25 ^ v21;
        v27 = v26 + __ROR8__(v24, 26);
        v28 = v27 ^ v23;
        v29 = v28 + __ROR8__(v26, 27);
        v30 = v29 ^ v25;
        v31 = v30 + __ROR8__(v28, 2);
        v32 = v31 ^ v27;
        v33 = v32 + __ROR8__(v30, 30);
        v34 = v33 ^ v29;
        v35 = v34 + __ROR8__(v32, 59);
        v13 = v35 ^ v31;
        v36 = __ROR8__(v34, 28);
        v9 = v35 + *(p_dst + 16);
        v12 = (v13 + v36) ^ v33;
        v10 = v13 + v36 + *(p_dst + 24);
        p_dst += 32;
      }

      while (p_dst < v11);
    }

    else
    {
      v13 = 0xDEADBEEFDEADBEEFLL;
      v12 = 0xDEADBEEFDEADBEEFLL;
    }

    v136 = v8 - 16;
    if (v8 >= 0x10)
    {
      v137 = *p_dst;
      v138 = *(p_dst + 8);
      p_dst += 16;
      v139 = v138 + v12;
      v140 = v139 + __ROR8__(v137 + v13, 14);
      v141 = v140 ^ v9;
      v142 = v141 + __ROR8__(v139, 12);
      v143 = v142 ^ v10;
      v144 = v143 + __ROR8__(v141, 34);
      v145 = v144 ^ v140;
      v146 = v145 + __ROR8__(v143, 23);
      v147 = v146 ^ v142;
      v148 = v147 + __ROR8__(v145, 10);
      v149 = v148 ^ v144;
      v150 = v149 + __ROR8__(v147, 16);
      v151 = v150 ^ v146;
      v152 = v151 + __ROR8__(v149, 26);
      v153 = v152 ^ v148;
      v154 = v153 + __ROR8__(v151, 27);
      v155 = v154 ^ v150;
      v156 = v155 + __ROR8__(v153, 2);
      v157 = v156 ^ v152;
      v158 = v157 + __ROR8__(v155, 30);
      v159 = v158 ^ v154;
      v9 = v159 + __ROR8__(v157, 59);
      v13 = v9 ^ v156;
      v10 = v13 + __ROR8__(v159, 28);
      v12 = v10 ^ v158;
      v8 = v136;
    }
  }

  v160 = v12 + (__n << 56);
  switch(v8)
  {
    case 0uLL:
      v13 -= 0x2152411021524111;
      v160 -= 0x2152411021524111;
      break;
    case 1uLL:
      goto LABEL_37;
    case 2uLL:
      goto LABEL_36;
    case 3uLL:
      v13 += *(p_dst + 2) << 16;
LABEL_36:
      v13 += *(p_dst + 1) << 8;
LABEL_37:
      v162 = *p_dst;
      goto LABEL_42;
    case 4uLL:
      goto LABEL_41;
    case 5uLL:
      goto LABEL_40;
    case 6uLL:
      goto LABEL_39;
    case 7uLL:
      v13 += *(p_dst + 6) << 48;
LABEL_39:
      v13 += *(p_dst + 5) << 40;
LABEL_40:
      v13 += *(p_dst + 4) << 32;
LABEL_41:
      v162 = *p_dst;
LABEL_42:
      v13 += v162;
      break;
    case 8uLL:
      goto LABEL_34;
    case 9uLL:
      goto LABEL_28;
    case 0xAuLL:
      goto LABEL_27;
    case 0xBuLL:
      v160 += *(p_dst + 10) << 16;
LABEL_27:
      v160 += *(p_dst + 9) << 8;
LABEL_28:
      v161 = *(p_dst + 8);
      goto LABEL_33;
    case 0xCuLL:
      goto LABEL_32;
    case 0xDuLL:
      goto LABEL_31;
    case 0xEuLL:
      goto LABEL_30;
    case 0xFuLL:
      v160 += *(p_dst + 14) << 48;
LABEL_30:
      v160 += *(p_dst + 13) << 40;
LABEL_31:
      v160 += *(p_dst + 12) << 32;
LABEL_32:
      v161 = *(p_dst + 8);
LABEL_33:
      v160 += v161;
LABEL_34:
      v13 += *p_dst;
      break;
    default:
      break;
  }

  v163 = (v160 ^ v13) + __ROR8__(v13, 49);
  v164 = (v163 ^ v9) + __ROR8__(v163, 12);
  v165 = (v164 ^ v10) + __ROR8__(v164, 38);
  v166 = (v165 ^ __ROR8__(v13, 49)) + __ROR8__(v165, 13);
  v167 = (v166 ^ __ROR8__(v163, 12)) + __ROR8__(v166, 36);
  v168 = (v167 ^ __ROR8__(v164, 38)) + __ROR8__(v167, 55);
  v169 = (v168 ^ __ROR8__(v165, 13)) + __ROR8__(v168, 17);
  v170 = (v169 ^ __ROR8__(v166, 36)) + __ROR8__(v169, 10);
  v171 = (v170 ^ __ROR8__(v167, 55)) + __ROR8__(v170, 32);
  v172 = (v171 ^ __ROR8__(v168, 17)) + __ROR8__(v171, 39);
  v173 = v172 ^ __ROR8__(v169, 10);
  v174 = __ROR8__(v172, 1);
  *a3 = v174;
  *a4 = v173 + v174;
  return __src;
}

void *pxrInternal__aapl__pxrReserved__::ArchLibraryOpen(uint64_t a1, int a2)
{
  dlerror();
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  return dlopen(v4, a2);
}

char *pxrInternal__aapl__pxrReserved__::ArchLibraryError@<X0>(void *a1@<X8>)
{
  result = dlerror();
  if (result)
  {

    return sub_29A008E78(a1, result);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchIsStlAllocatorOff(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A153EE18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EE18))
  {
    sub_29A008E78(__p, "GLIBCXX_FORCE_NEW");
    HasEnv = pxrInternal__aapl__pxrReserved__::ArchHasEnv(__p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    byte_2A153EE10 = HasEnv;
    __cxa_guard_release(&qword_2A153EE18);
  }

  return byte_2A153EE10;
}

void sub_29A0DA0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A153EE18);
  _Unwind_Resume(a1);
}

regex_t *pxrInternal__aapl__pxrReserved__::ArchRegex::_Impl::_Impl(regex_t *a1, const char *a2, char a3, uint64_t a4)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v6 = regcomp(a1, a2, (2 * (a3 & 1)) | 9);
  if (v6)
  {
    sub_29B285060(v8, v6, a1, a4);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::ArchRegex::_Impl::~_Impl(pxrInternal__aapl__pxrReserved__::ArchRegex::_Impl *this)
{
  MEMORY[0x29C2C5340]();
}

{
  MEMORY[0x29C2C5340]();
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchRegex::ArchRegex(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  *a1 = a3;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v6 = *(a2 + 23);
  v7 = v6;
  v8 = *(a2 + 8);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    if ((v3 & 2) != 0)
    {
      if (v7 < 0)
      {
        sub_29A008D14(&v12, *a2, v8);
      }

      else
      {
        v12 = *a2;
      }

      sub_29A008E78(v26, ".");
      sub_29A008E78(v24, "\\.");
      sub_29A0DA71C(&v12, v26, v24, &v28);
      sub_29A008E78(v22, "*");
      sub_29A008E78(v20, ".*");
      sub_29A0DA71C(&v28, v22, v20, &v29);
      sub_29A008E78(v18, "?");
      sub_29A008E78(__p, ".");
      sub_29A0DA71C(&v29, v18, __p, __dst);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }
    }

    else if (v7 < 0)
    {
      sub_29A008D14(__dst, *a2, v8);
    }

    else
    {
      *__dst = *a2;
      v14 = *(a2 + 16);
    }

    v29.__r_.__value_.__r.__words[0] = v5;
    sub_29A0DA8B8(__dst, a1, &v29, &v15);
    v9 = v15;
    v15 = 0uLL;
    v10 = *(a1 + 40);
    *(a1 + 32) = v9;
    if (v10)
    {
      sub_29A014BEC(v10);
      if (*(&v15 + 1))
      {
        sub_29A014BEC(*(&v15 + 1));
      }
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v3 & 2) != 0 && SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    MEMORY[0x29C2C1A60](a1 + 8, "empty pattern");
  }

  return a1;
}

void sub_29A0DA4B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  __cxa_begin_catch(a1);
  v50 = *(v48 + 31);
  if (v50 < 0)
  {
    v50 = *(v48 + 16);
  }

  if (!v50)
  {
    MEMORY[0x29C2C1A60](v49, "unknown reason");
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0DA49CLL);
}

void sub_29A0DA5E4(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v4 = *(v1 + 40);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArchRegex::~ArchRegex(pxrInternal__aapl__pxrReserved__::ArchRegex *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *pxrInternal__aapl__pxrReserved__::ArchRegex::GetError@<X0>(void *this@<X0>, void *a2@<X8>)
{
  if (this[4])
  {
    v2 = "";
    return sub_29A008E78(a2, v2);
  }

  if ((*(this + 31) & 0x80000000) == 0)
  {
    if (*(this + 31))
    {
      *a2 = *(this + 1);
      a2[2] = this[3];
      return this;
    }

LABEL_9:
    v2 = "uncompiled pattern";
    return sub_29A008E78(a2, v2);
  }

  v3 = this[2];
  if (!v3)
  {
    goto LABEL_9;
  }

  return sub_29A008D14(a2, this[1], v3);
}

const regex_t *pxrInternal__aapl__pxrReserved__::ArchRegex::Match(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    return (regexec(result, a2, 0, 0, 0) != 1);
  }

  return result;
}

__n128 sub_29A0DA71C@<Q0>(std::string *this@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = this;
  }

  else
  {
    v8 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v9 = a2[23];
  v10 = *(a2 + 1);
  if ((v9 & 0x80000000) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v9 & 0x80000000) == 0)
  {
    v12 = a2[23];
  }

  else
  {
    v12 = *(a2 + 1);
  }

  v27 = v9 >> 63;
  while (!v12)
  {
LABEL_23:
    if (v6 != -1)
    {
      if (v27)
      {
        v19 = v10;
      }

      else
      {
        v19 = v9;
      }

      v20 = *(a3 + 23);
      if (v20 >= 0)
      {
        v21 = a3;
      }

      else
      {
        v21 = *a3;
      }

      if (v20 >= 0)
      {
        v22 = *(a3 + 23);
      }

      else
      {
        v22 = *(a3 + 8);
      }

      std::string::replace(this, v6, v19, v21, v22);
      v23 = *(a3 + 23);
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(a3 + 8);
      }

      v6 += v23;
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v8 = this;
      }

      else
      {
        v8 = this->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = this->__r_.__value_.__l.__size_;
      }

      v9 = a2[23];
      v27 = v9 >> 63;
      v10 = *(a2 + 1);
      v11 = (v9 & 0x80000000) == 0 ? a2 : *a2;
      v12 = (v9 & 0x80000000) == 0 ? a2[23] : *(a2 + 1);
      if (size >= v6)
      {
        continue;
      }
    }

    goto LABEL_47;
  }

  v13 = size - v6;
  if ((size - v6) >= v12)
  {
    v14 = v8 + size;
    v15 = v8 + v6;
    v16 = *v11;
    do
    {
      if (v13 - v12 == -1)
      {
        break;
      }

      v17 = memchr(v15, v16, v13 - v12 + 1);
      if (!v17)
      {
        break;
      }

      v18 = v17;
      if (!memcmp(v17, v11, v12))
      {
        if (v18 == v14)
        {
          break;
        }

        v6 = v18 - v8;
        goto LABEL_23;
      }

      v15 = v18 + 1;
      v13 = v14 - (v18 + 1);
    }

    while (v13 >= v12);
  }

LABEL_47:
  result = *&this->__r_.__value_.__l.__data_;
  *a4 = *&this->__r_.__value_.__l.__data_;
  *(a4 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

uint64_t sub_29A0DA8B8@<X0>(const char *a1@<X1>, _DWORD *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  result = sub_29A0DA92C(v8, a1, a2, a3);
  *a4 = v8 + 24;
  a4[1] = v8;
  return result;
}

uint64_t sub_29A0DA92C(uint64_t a1, const char *a2, _DWORD *a3, uint64_t *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A203F4B0;
  pxrInternal__aapl__pxrReserved__::ArchRegex::_Impl::_Impl((a1 + 24), a2, *a3, *a4);
  return a1;
}

void sub_29A0DA9B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A203F4B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchEnableSessionLogging(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A153EE28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EE28))
  {
    qword_2A153EE20 = operator new(4uLL);
    __cxa_guard_release(&qword_2A153EE28);
  }

  result = atexit(sub_29A0DAAA8);
  *qword_2A153EE20 = result;
  return result;
}

void sub_29A0DAAA8()
{
  if (byte_2A153EE50 == 1)
  {
    if (qword_2A153EE58)
    {
      v0 = qword_2A153EE58;
    }

    else
    {
      v0 = "libArch";
    }

    sub_29A0DB190(v0, 0);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchSetProcessStateLogCommand(uint64_t this, const char *a2, const char *const *a3, const char *const *a4)
{
  qword_2A153EE30 = this;
  qword_2A153EE38 = a2;
  qword_2A153EE40 = a3;
  return this;
}

time_t sub_29A0DAAF8()
{
  result = time(0);
  qword_2A153EE48 = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::ArchSetProgramInfoForErrors(__int128 *a1, uint64_t a2)
{
  v4 = sub_29A0DAE1C();
  std::mutex::lock((v4 + 24));
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v24 = a1;
    v6 = sub_29A00B038(v4, a1, &unk_29B4D6118, &v24);
    std::string::operator=((v6 + 7), a2);
  }

  else
  {
    sub_29A0DCFB4(v4, a1);
  }

  sub_29A00B6DC(&v24);
  v7 = *v4;
  if (*v4 != v4 + 8)
  {
    do
    {
      v8 = *(v7 + 55);
      if (v8 >= 0)
      {
        v9 = (v7 + 4);
      }

      else
      {
        v9 = v7[4];
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 55);
      }

      else
      {
        v10 = v7[5];
      }

      v11 = sub_29A00911C(&v24, v9, v10);
      v12 = sub_29A00911C(v11, ": ", 2);
      v13 = *(v7 + 79);
      if (v13 >= 0)
      {
        v14 = (v7 + 7);
      }

      else
      {
        v14 = v7[7];
      }

      if (v13 >= 0)
      {
        v15 = *(v7 + 79);
      }

      else
      {
        v15 = v7[8];
      }

      v16 = sub_29A00911C(v12, v14, v15);
      LOBYTE(__s1[0]) = 10;
      sub_29A00911C(v16, __s1, 1);
      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v7 = v18;
    }

    while (v18 != (v4 + 8));
  }

  v20 = *(v4 + 88);
  if (v20)
  {
    free(v20);
  }

  std::stringbuf::str();
  if (v23 < 0)
  {
    v21 = __s1[0];
    *(v4 + 88) = strdup(__s1[0]);
    operator delete(v21);
  }

  else
  {
    *(v4 + 88) = strdup(__s1);
  }

  v24 = *MEMORY[0x29EDC9538];
  *(&v24 + *(v24 - 3)) = *(MEMORY[0x29EDC9538] + 24);
  v25 = MEMORY[0x29EDC9570] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](&v28);
  std::mutex::unlock((v4 + 24));
}

void sub_29A0DADF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A00B848(va);
  std::mutex::unlock((v4 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_29A0DAE1C()
{
  if ((atomic_load_explicit(&qword_2A153EE88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EE88))
  {
    v1 = operator new(0x60uLL);
    v1[1] = 0;
    *v1 = v1 + 1;
    v1[2] = 0;
    v1[3] = 850045863;
    *(v1 + 2) = 0u;
    *(v1 + 3) = 0u;
    *(v1 + 4) = 0u;
    *(v1 + 5) = 0u;
    qword_2A153EE80 = v1;
    __cxa_guard_release(&qword_2A153EE88);
  }

  return qword_2A153EE80;
}

void pxrInternal__aapl__pxrReserved__::ArchGetProgramInfoForErrors(const void **a1@<X0>, std::string *a2@<X8>)
{
  v4 = sub_29A0DAE1C();
  std::mutex::lock((v4 + 24));
  v5 = sub_29A01BCCC(v4, a1);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (v4 + 8 != v5)
  {
    std::string::operator=(a2, (v5 + 56));
  }

  std::mutex::unlock((v4 + 24));
}

void sub_29A0DAF34(_Unwind_Exception *a1)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  std::mutex::unlock((v1 + 24));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArchSetExtraLogInfoForErrors(const void **a1, void *a2)
{
  v4 = sub_29A0DB004();
  std::mutex::lock((v4 + 24));
  if (!a2 || *a2 == a2[1])
  {
    sub_29A0DD010(v4, a1);
  }

  else
  {
    v5 = a1;
    sub_29A0DD058(v4, a1, &unk_29B4D6118, &v5)[7] = a2;
  }

  std::mutex::unlock((v4 + 24));
}

uint64_t sub_29A0DB004()
{
  if ((atomic_load_explicit(&qword_2A153EE98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EE98))
  {
    v1 = operator new(0x58uLL);
    v1[1] = 0;
    *v1 = v1 + 1;
    v1[2] = 0;
    v1[3] = 850045863;
    *(v1 + 2) = 0u;
    *(v1 + 3) = 0u;
    *(v1 + 4) = 0u;
    v1[10] = 0;
    qword_2A153EE90 = v1;
    __cxa_guard_release(&qword_2A153EE98);
  }

  return qword_2A153EE90;
}

void pxrInternal__aapl__pxrReserved__::ArchSetProgramNameForErrors(pxrInternal__aapl__pxrReserved__ *this, const char *a2)
{
  if (qword_2A153EE58)
  {
    free(qword_2A153EE58);
  }

  if (this)
  {
    v3 = strrchr(this, 47);
    if (v3)
    {
      v5 = v3[1];
      v4 = (v3 + 1);
      if (v5)
      {
        this = v4;
      }
    }

    sub_29A008E78(__s1, this);
    if (v8 < 0)
    {
      v6 = *__s1;
      qword_2A153EE58 = strdup(*__s1);
      operator delete(v6);
    }

    else
    {
      qword_2A153EE58 = strdup(__s1);
    }
  }

  else
  {
    qword_2A153EE58 = 0;
  }
}

const char *pxrInternal__aapl__pxrReserved__::ArchGetProgramNameForErrors(pxrInternal__aapl__pxrReserved__ *this)
{
  if (qword_2A153EE58)
  {
    return qword_2A153EE58;
  }

  else
  {
    return "libArch";
  }
}

int *pxrInternal__aapl__pxrReserved__::ArchLogSessionInfo(int *this, const char *a2)
{
  if (byte_2A153EE50 == 1)
  {
    v2 = this;
    if (qword_2A153EE58)
    {
      v3 = qword_2A153EE58;
    }

    else
    {
      v3 = "libArch";
    }

    return sub_29A0DB190(v3, v2);
  }

  return this;
}

int *sub_29A0DB190(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  result = sub_29A0DD198("ARCH_LOGSESSION");
  v5 = &qword_2A153EE70;
  if (!a2)
  {
    v5 = &qword_2A153EE68;
  }

  v6 = *v5;
  if (result)
  {
    v7 = result;
  }

  else
  {
    v7 = qword_2A153EE60;
  }

  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = getpid();
    sub_29A0DCEA8(v30, v9);
    v10 = sub_29A0DD260();
    sub_29A0DCEA8(v29, v10);
    v28[0] = "$pid";
    v28[1] = v30;
    v28[2] = "$time";
    v28[3] = v29;
    v28[4] = "$prog";
    v28[5] = a1;
    v28[6] = "$stack";
    v28[7] = a2;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *v12 = 0u;
    v13 = 0u;
    if (sub_29A0DD2A8(v12, v7, v6, v28))
    {
      return pxrInternal__aapl__pxrReserved__::ArchCrashHandlerSystemv(v12[0], v12, 0x3C, 0, 0, v11);
    }

    else
    {
      return sub_29A0DCF44("Too many arguments to log session command\n");
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchSetLogSession(uint64_t this, const char *a2, const char *const *a3, const char *const *a4)
{
  qword_2A153EE60 = this;
  qword_2A153EE68 = a2;
  qword_2A153EE70 = a3;
  return this;
}

int *sub_29A0DB344(pxrInternal__aapl__pxrReserved__ *a1, const char *a2, const char *a3, const char *a4)
{
  v7 = a1;
  v33 = *MEMORY[0x29EDCA608];
  while ((atomic_exchange_explicit(byte_2A153EEA0, 1u, memory_order_acquire) & 1) != 0)
  {
    a1 = sched_yield();
  }

  if (v7)
  {
    dword_2A153EE78 = 1;
  }

  v29 = v7;
  v8 = qword_2A153EE58;
  if (!qword_2A153EE58)
  {
    v8 = "libArch";
  }

  __s = v8;
  v9 = pxrInternal__aapl__pxrReserved__::ArchDebuggerAttach(a1);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::ArchDebuggerTrap(v9);
    _exit(0);
  }

  if (sub_29A0DD3A8(__filename) == -1)
  {
    result = sub_29A0DCF44("Cannot create a log file\n");
  }

  else
  {
    v10 = pxrInternal__aapl__pxrReserved__::ArchOpenFile(__filename, "a");
    if (v10)
    {
      if (a2)
      {
        fputs("This stack trace was requested because: ", v10);
        fputs(a2, v10);
        fputs("\n", v10);
      }

      if (a3)
      {
        fputs(a3, v10);
        fputs("\n", v10);
      }

      v11 = sub_29A0DB004();
      sub_29A0DBDDC(v11, v10, 0);
      if (a4)
      {
        fputs(a4, v10);
        fputs("\n", v10);
      }

      fputs("\nPostmortem Stack Trace\n", v10);
      fclose(v10);
    }

    if (gethostname(v31, 0x100uLL))
    {
      v31[0] = 0;
    }

    v12 = strlen(__s);
    if (v12 + 17 <= 80)
    {
      v13 = 80;
    }

    else
    {
      v13 = v12 + 17;
    }

    v14 = MEMORY[0x29EDCA610];
    fputs("\n", *MEMORY[0x29EDCA610]);
    v15 = (v13 - (v12 + 11)) / 2;
    v16 = v15 - 1;
    if ((v15 + 62) >= 0x7F)
    {
      v17 = v16 / 64;
      do
      {
        fputs("----------------------------------------------------------------", *v14);
        --v17;
      }

      while (v17);
    }

    if (v16 <= 0)
    {
      v18 = -((1 - v15) & 0x3F);
    }

    else
    {
      v18 = v16 & 0x3F;
    }

    fputs(&asc_29B7959A4[-v18 + 64], *v14);
    fputs(" ", *v14);
    fputs(__s, *v14);
    fputs(" terminated", *v14);
    fputs(" ", *v14);
    v19 = v13 - (v15 + v12);
    v20 = v19 - 12;
    if (v19 + 51 >= 0x7F)
    {
      v21 = v20 / 64;
      do
      {
        fputs("----------------------------------------------------------------", *v14);
        --v21;
      }

      while (v21);
    }

    if (v20 <= 0)
    {
      v22 = -(-v20 & 0x3F);
    }

    else
    {
      v22 = v20 & 0x3F;
    }

    fputs(&asc_29B7959A4[-v22 + 64], *v14);
    fputs("\n", *v14);
    v23 = sub_29A0DAE1C();
    sub_29A0DBBC8(v23);
    if (a2)
    {
      fputs("This stack trace was requested because: ", *v14);
      fputs(a2, *v14);
      fputs("\n", *v14);
    }

    if (a3)
    {
      fputs(a3, *v14);
      fputs("\n", *v14);
    }

    fputs("writing crash report to [ ", *v14);
    fputs(v31, *v14);
    fputs(":", *v14);
    fputs(__filename, *v14);
    fputs(" ] ...", *v14);
    fflush(*v14);
    if (a2)
    {
      v24 = sub_29A0DD5E8(v29, __filename, a2);
    }

    else
    {
      v24 = sub_29A0DD5E8(v29, __filename, a3);
    }

    v26 = v24;
    fputs(" done.\n", *v14);
    v27 = sub_29A0DB004();
    sub_29A0DBDDC(v27, *v14, 3uLL);
    v28 = v13 >> 6;
    do
    {
      fputs("----------------------------------------------------------------", *v14);
      --v28;
    }

    while (v28);
    fputs(&asc_29B7959A4[-(v13 & 0x3F) + 64], *v14);
    result = fputs("\n", *v14);
    if (v26 && byte_2A153EE50 == 1)
    {
      result = sub_29A0DB190(__s, __filename);
    }
  }

  atomic_store(0, byte_2A153EEA0);
  return result;
}

void sub_29A0DB7D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArchLogStackTrace(uint64_t a1, uint64_t a2)
{
  if (qword_2A153EE58)
  {
    v4 = qword_2A153EE58;
  }

  else
  {
    v4 = "libArch";
  }

  sub_29A008E78(__p, v4);
  pxrInternal__aapl__pxrReserved__::ArchLogStackTrace(__p, a1, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0DB86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArchLogStackTrace(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v29 = *MEMORY[0x29EDCA608];
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  v11 = qword_2A153EE58;
  if (!qword_2A153EE58)
  {
    v11 = "libArch";
  }

  pxrInternal__aapl__pxrReserved__::ArchStringPrintf("%s_%s", v4, v5, "st", v11);
  TmpFile = pxrInternal__aapl__pxrReserved__::ArchMakeTmpFile(__p, v24);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (gethostname(v26, 0x100uLL))
  {
    v26[0] = 0;
  }

  v13 = MEMORY[0x29EDCA610];
  if (*(v10 + 23) >= 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = *v10;
  }

  if (*(v9 + 23) >= 0)
  {
    v15 = v9;
  }

  else
  {
    v15 = *v9;
  }

  fprintf(*MEMORY[0x29EDCA610], "--------------------------------------------------------------\nA stack trace has been requested by %s because of %s\n", v14, v15);
  v16 = sub_29A0DAE1C();
  sub_29A0DBBC8(v16);
  if (TmpFile == -1)
  {
    fwrite("--------------------------------------------------------------\n", 0x3FuLL, 1uLL, *v13);
    pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(*v13, v10, v9);
    v21 = sub_29A0DB004();
    sub_29A0DBDDC(v21, *v13, 0);
    goto LABEL_38;
  }

  v17 = fdopen(TmpFile, "w");
  v18 = v24;
  if (v25 < 0)
  {
    v18 = v24[0];
  }

  fprintf(*v13, "The stack can be found in %s:%s\n--------------------------------------------------------------\n", v26, v18);
  pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(v17, v10, v9);
  if (!v8)
  {
    fclose(v17);
    goto LABEL_38;
  }

  v19 = sub_29A0DB004();
  sub_29A0DBDDC(v19, v17, 0);
  fclose(v17);
  if (*(v10 + 23) < 0)
  {
    v10 = *v10;
  }

  if (v25 >= 0)
  {
    v20 = v24;
  }

  else
  {
    v20 = v24[0];
  }

  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    if (!*(v7 + 23))
    {
      goto LABEL_36;
    }

LABEL_29:
    v22 = pxrInternal__aapl__pxrReserved__::ArchOpenFile(v20, "a");
    if (v22)
    {
      v23 = pxrInternal__aapl__pxrReserved__::ArchOpenFile(v7, "r");
      if (v23)
      {
        fputs("\n\n********** Session Log **********\n\n", v22);
        while (fgets(__p, 4096, v23))
        {
          fputs(__p, v22);
        }

        fclose(v23);
      }

      fclose(v22);
    }

    goto LABEL_36;
  }

  if (v7[1])
  {
    v7 = *v7;
    if (v7)
    {
      goto LABEL_29;
    }
  }

LABEL_36:
  if (byte_2A153EE50 == 1)
  {
    sub_29A0DB190(v10, v20);
  }

LABEL_38:
  fwrite("--------------------------------------------------------------\n", 0x3FuLL, 1uLL, *v13);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_29A0DBB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0DBBC8(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 88);
  if (v2)
  {
    fputs(v2, *MEMORY[0x29EDCA610]);
  }

  std::mutex::unlock((a1 + 24));
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(FILE *a1, uint64_t a2, uint64_t a3)
{
  sub_29A00B6DC(&v11);
  pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(&v11, a2, a3);
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = *MEMORY[0x29EDCA610];
  }

  std::stringbuf::str();
  if (v10 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  fputs(p_p, v6);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  fflush(v6);
  v11 = *MEMORY[0x29EDC9538];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v12 = MEMORY[0x29EDC9570] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v15);
}

void sub_29A0DBDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

void sub_29A0DBDDC(uint64_t a1, FILE *a2, unint64_t a3)
{
  std::mutex::lock((a1 + 24));
  v6 = *a1;
  if (*a1 != a1 + 8)
  {
    v7 = 0;
    do
    {
      fputs("\n", a2);
      v8 = (v6 + 4);
      if (*(v6 + 55) < 0)
      {
        v8 = *v8;
      }

      fputs(v8, a2);
      fputs(":\n", a2);
      v9 = v6[7];
      v10 = *v9;
      v11 = v9[1];
      while (v10 != v11)
      {
        if (a3)
        {
          if (v7 >= a3)
          {
            fputs("... see full diagnostics in crash report.\n", a2);
            goto LABEL_21;
          }

          ++v7;
        }

        v12 = v10;
        if (*(v10 + 23) < 0)
        {
          v12 = *v10;
        }

        fputs(v12, a2);
        v10 += 24;
      }

      v13 = v6[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v6[2];
          v15 = *v14 == v6;
          v6 = v14;
        }

        while (!v15);
      }

      v6 = v14;
    }

    while (v14 != (a1 + 8));
  }

LABEL_21:

  std::mutex::unlock((a1 + 24));
}

void *pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v6 = sub_29A00911C(a1, "==============================================================\n", 63);
  v7 = sub_29A00911C(v6, " A stack trace has been requested by ", 37);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = sub_29A00911C(v7, v9, v10);
  v12 = sub_29A00911C(v11, " because: ", 10);
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  v16 = sub_29A00911C(v12, v14, v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v31, MEMORY[0x29EDC93D0]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v31);
  std::ostream::put();
  std::ostream::flush();
  v26[0] = a1;
  v26[1] = 0;
  sub_29A0DD3A8(&v31);
  sub_29A0DD5E8(0, &v31, "Log Stack Trace");
  sub_29A0DDD7C(v28);
  memset(&v25, 0, sizeof(v25));
  v18 = (v28 + *(v28[0] - 24));
  if ((v18->__rdstate_ & 2) == 0)
  {
    v19 = -2;
    v20 = MEMORY[0x29EDC93D0];
    do
    {
      v21 = v19;
      std::ios_base::getloc(v18);
      v22 = std::locale::use_facet(&v27, v20);
      v23 = (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v27);
      sub_29A0DE07C(v28, &v25, v23);
      if ((v29[*(v28[0] - 24) + 16] & 2) == 0)
      {
        std::string::append(&v25, "\n");
      }

      sub_29A0DDF40(v26, &v25);
      v18 = (v28 + *(v28[0] - 24));
      if ((v18->__rdstate_ & 2) != 0)
      {
        break;
      }

      v19 = v21 - 1;
    }

    while (v21);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((v28 + *(v28[0] - 24)), *&v29[*(v28[0] - 24) + 16] | 4);
  }

  unlink(&v31);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v28[0] = *MEMORY[0x29EDC9518];
  *(v28 + *(v28[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C2C1D20](v29);
  std::istream::~istream();
  MEMORY[0x29C2C4390](&v30);
  return sub_29A00911C(a1, "==============================================================\n", 63);
}

void sub_29A0DC2D4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, std::locale a11, ...)
{
  va_start(va, a11);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  sub_29A0DDFB0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(FILE *a1, uint64_t a2)
{
  if (qword_2A153EE58)
  {
    v4 = qword_2A153EE58;
  }

  else
  {
    v4 = "libArch";
  }

  sub_29A008E78(__p, v4);
  pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(a1, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0DC390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(void *a1, uint64_t a2)
{
  if (qword_2A153EE58)
  {
    v4 = qword_2A153EE58;
  }

  else
  {
    v4 = "libArch";
  }

  sub_29A008E78(__p, v4);
  pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(a1, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0DC418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArchGetStackTrace(void *a1, uint64_t a2)
{
  if (qword_2A153EE58)
  {
    v4 = qword_2A153EE58;
  }

  else
  {
    v4 = "libArch";
  }

  sub_29A008E78(__p, v4);
  pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(a1, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0DC4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArchGetStackFrames(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t *a3)
{
  sub_29A00BF50(a3, a1);
  StackFrames = pxrInternal__aapl__pxrReserved__::ArchGetStackFrames(a1, a2, *a3, v6);

  sub_29A00BF50(a3, StackFrames);
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchGetStackFrames(pxrInternal__aapl__pxrReserved__ *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v7 = v6;
  v8 = v5;
  v15 = *MEMORY[0x29EDCA608];
  memset(&v14[2], 0, 480);
  if ((v5 + v4) >= 0x1000)
  {
    v9 = 4096;
  }

  else
  {
    v9 = v5 + v4;
  }

  memset(v14, 0, 32);
  result = backtrace(v14, v9) - v8;
  if (result)
  {
    v11 = v14 + v8;
    v12 = result;
    do
    {
      v13 = *v11++;
      *v7++ = v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::ArchPrintStackFrames(void *a1, uint64_t *a2, int a3)
{
  sub_29A0DC798(a2, a3, &v14);
  v4 = v14;
  if (v15 != v14)
  {
    v5 = 0;
    v6 = 0;
    v7 = MEMORY[0x29EDC93D0];
    do
    {
      v8 = v4 + v5;
      v9 = *(v8 + 23);
      if (v9 >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = *(v8 + 8);
      }

      v12 = sub_29A00911C(a1, v10, v11);
      std::ios_base::getloc((v12 + *(*v12 - 24)));
      v13 = std::locale::use_facet(&v16, v7);
      (v13->__vftable[2].~facet_0)(v13, 10);
      std::locale::~locale(&v16);
      std::ostream::put();
      std::ostream::flush();
      ++v6;
      v4 = v14;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3));
  }

  v16.__locale_ = &v14;
  sub_29A012C90(&v16);
}

void sub_29A0DC76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, std::locale a14)
{
  std::locale::~locale(&a14);
  a13 = &a10;
  sub_29A012C90(&a13);
  _Unwind_Resume(a1);
}

void sub_29A0DC798(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*a1 == a1[1])
  {
    sub_29A008E78(v20, "No frames saved, stack traces probably not supported on this architecture.");
    sub_29A091654(a3, v20);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  else
  {
    sub_29A0DCAE0();
    sub_29A0DD8E0(v19, &unk_2A153EEB0);
    if (!v19[3])
    {
      v20[0] = &unk_2A203F500;
      v20[1] = sub_29A0DD778;
      v22 = v20;
      sub_29A0DDA4C(v20, v19);
      sub_29A0DDCFC(v20);
    }

    v6 = *a1;
    if (a1[1] != *a1)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        sub_29A0DD888(v19, *(v6 + 8 * v7));
        v11 = v21;
        if (!a2)
        {
          break;
        }

        if (v21 < 0)
        {
          if (v20[1] != 9)
          {
            break;
          }

          v12 = v20[0];
        }

        else
        {
          if (v21 != 9)
          {
            break;
          }

          v12 = v20;
        }

        v13 = *v12;
        v14 = *(v12 + 8);
        if (v13 != 0x6E776F6E6B6E753CLL || v14 != 62)
        {
          break;
        }

LABEL_22:
        if (v11 < 0)
        {
          operator delete(v20[0]);
        }

        ++v7;
        v6 = *a1;
        if (v7 >= (a1[1] - *a1) >> 3)
        {
          goto LABEL_25;
        }
      }

      if (v21 >= 0)
      {
        v16 = v20;
      }

      else
      {
        v16 = v20[0];
      }

      pxrInternal__aapl__pxrReserved__::ArchStringPrintf(" #%-3i 0x%016lx in %s", v9, v10, v8, *(*a1 + 8 * v7), v16);
      sub_29A091654(a3, &__p);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      v8 = (v8 + 1);
      v11 = v21;
      goto LABEL_22;
    }

LABEL_25:
    sub_29A0DDCFC(v19);
  }
}

void sub_29A0DC9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::ArchGetStackTrace(pxrInternal__aapl__pxrReserved__ *this@<X0>, uint64_t a2@<X8>)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::ArchGetStackFrames(this, 0, &__p);
  sub_29A0DC798(&__p, 0, a2);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_29A0DCA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::ArchSetStackTraceCallback(uint64_t a1)
{
  sub_29A0DCAE0();

  return sub_29A0DCB10(qword_2A153EEB0, a1);
}

void sub_29A0DCAE0()
{
  if ((atomic_load_explicit(&qword_2A153EEA8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2850C0();
  }
}

void *sub_29A0DCB10(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  sub_29A0DD8E0(v4, a2);
  sub_29A0DDA4C(v4, a1);
  sub_29A0DDCFC(v4);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::ArchGetStackTraceCallback(void *result)
{
  if (result)
  {
    v1 = result;
    sub_29A0DCAE0();

    return sub_29A0DCB10(v1, qword_2A153EEB0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchCrashHandlerSystemv(pxrInternal__aapl__pxrReserved__ *this, char *const *a2, char *const *a3, void (*a4)(void), void (*a5)(void *), void *a6)
{
  v8 = a3;
  v28 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::Arch_nonLockingFork)
  {
    v11 = pxrInternal__aapl__pxrReserved__::Arch_nonLockingFork(this, a2, a3, a4, a5, a6);
  }

  else
  {
    v11 = fork();
  }

  v12 = v11;
  if (v11 == -1)
  {
    v17 = __error();
    sub_29A0DCEA8(v27, *v17);
    sub_29A0DCF44("FAIL: Unable to fork() crash handler: errno=");
    sub_29A0DCF44(v27);
    sub_29A0DCF44("\n");
    return 0xFFFFFFFFLL;
  }

  if (!v11)
  {
    if (isatty(0))
    {
      setsid();
    }

    j__execv(this, a2);
    v23 = __error();
    sub_29A0DCEA8(v27, *v23);
    sub_29A0DCF44("FAIL: Unable to exec crash handler ");
    sub_29A0DCF44(this);
    sub_29A0DCF44(": errno=");
    sub_29A0DCF44(v27);
    sub_29A0DCF44("\n");
    _exit(127);
  }

  v26.__sigaction_u.__sa_handler = nullsub_9;
  *&v26.sa_mask = 0;
  sigaction(14, &v26, &v25);
  v13 = 0;
  while (1)
  {
    v24 = 0;
    if (v8 >= 1)
    {
      v13 = 1;
      alarm(1u);
    }

    v14 = waitpid(v12, &v24, 0);
    if (!v14)
    {
      goto LABEL_12;
    }

    if (v14 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v19 = __error();
      sub_29A0DCEA8(v27, *v19);
      v20 = "FAIL: Crash handler wait failed: errno=";
LABEL_25:
      sub_29A0DCF44(v20);
      sub_29A0DCF44(v27);
      v16 = "\n";
      goto LABEL_26;
    }

LABEL_12:
    if (a4)
    {
      a4(a5);
    }

    v15 = __OFSUB__(v8, v13);
    v8 -= v13;
    if ((v8 < 0) ^ v15 | (v8 == 0))
    {
      alarm(0);
      kill(v12, 9);
      waitpid(v12, 0, 0);
      *__error() = 16;
      v16 = "FAIL: Crash handler timed out\n";
LABEL_26:
      sub_29A0DCF44(v16);
      v18 = 0xFFFFFFFFLL;
      goto LABEL_27;
    }
  }

  if ((v24 & 0x7F) == 0x7F)
  {
    *__error() = 4;
    sub_29A0DCEA8(v27, v24);
    v20 = "FAIL: Crash handler unexpected wait status=";
    goto LABEL_25;
  }

  if ((v24 & 0x7F) != 0)
  {
    *__error() = 4;
    sub_29A0DCEA8(v27, v24 & 0x7F);
    v20 = "FAIL: Crash handler died: signal=";
    goto LABEL_25;
  }

  v18 = BYTE1(v24);
  if (BYTE1(v24) == 127)
  {
    *__error() = 2;
    sub_29A0DCF44("FAIL: Crash handler failed to exec\n");
  }

LABEL_27:
  v21 = *__error();
  alarm(0);
  sigaction(14, &v25, 0);
  *__error() = v21;
  return v18;
}

_BYTE *sub_29A0DCEA8(_BYTE *a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    *a1++ = 45;
  }

  v2 = 1;
  if (a2 >= 0xA)
  {
    v3 = a2;
    do
    {
      ++v2;
      v4 = v3 > 0x63;
      v3 /= 0xAuLL;
    }

    while (v4);
  }

  v5 = &a1[v2];
  a1[v2] = 0;
  if (a2)
  {
    v6 = &a1[v2 - 1];
    do
    {
      *v6-- = a0123456789[a2 % 0xA];
      v4 = a2 > 9;
      a2 /= 0xAuLL;
    }

    while (v4);
  }

  else
  {
    *(v5 - 1) = 48;
  }

  return v5;
}

int *sub_29A0DCF44(_BYTE *a1)
{
  v2 = *__error();
  if (a1 && *a1)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
    }

    while (a1[++v3]);
  }

  else
  {
    v4 = 0;
  }

  write(2, a1, v4);
  result = __error();
  *result = v2;
  return result;
}

uint64_t sub_29A0DCFB4(uint64_t **a1, const void **a2)
{
  v3 = sub_29A01BCCC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_29A03AFE8(a1, v3);
  sub_29A00B454((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_29A0DD010(uint64_t **a1, const void **a2)
{
  v3 = sub_29A01BCCC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_29A03AFA4(a1, v3);
  return 1;
}

uint64_t *sub_29A0DD058(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A0DD0F0(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A0DD0F0@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29A0DD17C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29A0DD198(pxrInternal__aapl__pxrReserved__ *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*result)
  {
    v2 = 0;
    do
    {
      v3 = v2 + 1;
    }

    while (*(result + ++v2));
  }

  else
  {
    v3 = 0;
  }

  v5 = pxrInternal__aapl__pxrReserved__::ArchEnviron(result);
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  while (2)
  {
    v7 = v6;
    v8 = v1;
    v9 = v3;
    while (*v7)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *v8;
LABEL_16:
      if (*v7 != v10)
      {
        goto LABEL_19;
      }

      v8 = (v8 + 1);
      ++v7;
      --v9;
    }

    v10 = *v8;
    if (*v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_18:
    if (v6[v3] == 61)
    {
      return &v6[v3 + 1];
    }

LABEL_19:
    v12 = v5[1];
    ++v5;
    v6 = v12;
    if (v12)
    {
      continue;
    }

    return 0;
  }
}

__darwin_time_t sub_29A0DD260()
{
  if (getrusage(0, &v1))
  {
    return time(0) - qword_2A153EE48;
  }

  else
  {
    return v1.ru_utime.tv_sec;
  }
}

uint64_t sub_29A0DD2A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!*a3)
  {
    v4 = 1;
    goto LABEL_8;
  }

  v4 = 1;
    ;
  }

  if (v4 <= 0x1F)
  {
    if (!v4)
    {
LABEL_26:
      *(a1 + 8 * v4) = 0;
      return 1;
    }

LABEL_8:
    for (i = 0; i != v4; ++i)
    {
      v7 = a3[i];
      if (v7)
      {
        v8 = a3[i];
        v9 = "$cmd";
        while (1)
        {
          v10 = *v8;
          v11 = *v9;
          if (!(v10 | v11))
          {
            break;
          }

          ++v8;
          ++v9;
          if (v10 != v11)
          {
            goto LABEL_13;
          }
        }

        *(a1 + 8 * i) = a2;
      }

      else
      {
LABEL_13:
        v12 = 0;
        *(a1 + 8 * i) = v7;
        v13 = a3[i];
        while (1)
        {
          v14 = *(a4 + 16 * v12);
          if (v13)
          {
            if (v14)
            {
              break;
            }
          }

          if (v13 == v14)
          {
            goto LABEL_23;
          }

LABEL_21:
          if (++v12 == 4)
          {
            goto LABEL_25;
          }
        }

        v15 = a3[i];
        while (1)
        {
          v16 = *v15;
          v17 = *v14;
          if (!(v16 | v17))
          {
            break;
          }

          ++v15;
          ++v14;
          if (v16 != v17)
          {
            goto LABEL_21;
          }
        }

LABEL_23:
        *(a1 + 8 * i) = *(a4 + 16 * v12 + 8);
      }

LABEL_25:
      ;
    }

    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_29A0DD3A8(pxrInternal__aapl__pxrReserved__ *a1)
{
  TmpDir = pxrInternal__aapl__pxrReserved__::ArchGetTmpDir(a1);
  if (TmpDir && *TmpDir)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
    }

    while (TmpDir[++v3]);
    v6 = v4 + 5;
  }

  else
  {
    v6 = 5;
  }

  v7 = qword_2A153EE58;
  if (!qword_2A153EE58)
  {
    v7 = "libArch";
  }

  if (*v7)
  {
    v8 = 0;
    v9 = v7 + 1;
    do
    {
      v10 = v8 + 1;
    }

    while (v9[v8++]);
  }

  else
  {
    v10 = 0;
  }

  v12 = getpid();
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  v14 = 1;
  if (v12 < 0)
  {
    v14 = 2;
  }

  if (v13 >= 0xA)
  {
    do
    {
      ++v14;
      v15 = v13 > 0x63;
      v13 /= 0xAuLL;
    }

    while (v15);
  }

  v16 = v6 + v10 + v14;
  if ((v16 - 1024) <= 0xFFFFFFFFFFFFFBFELL)
  {
LABEL_22:
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  v18 = pxrInternal__aapl__pxrReserved__::ArchGetTmpDir(v12);
  v19 = sub_29A0DD764(a1, v18);
  v20 = sub_29A0DD764(v19, "/");
  v21 = sub_29A0DD764(v20, "st");
  v22 = sub_29A0DD764(v21, "_");
  if (qword_2A153EE58)
  {
    v23 = qword_2A153EE58;
  }

  else
  {
    v23 = "libArch";
  }

  v24 = sub_29A0DD764(v22, v23);
  v25 = sub_29A0DD764(v24, ".");
  v26 = getpid();
  v27 = sub_29A0DCEA8(v25, v26);
  v28 = open(a1, 3585, 416);
  if (v28 == -1)
  {
    v29 = 0;
    while (*__error() == 17)
    {
      v30 = 1;
      if (v29 >= 9)
      {
        v31 = v29 + 1;
        do
        {
          ++v30;
          v15 = v31 > 0x63;
          v31 /= 0xAuLL;
        }

        while (v15);
      }

      if ((v16 + 2 + v30) >= 0x401)
      {
        goto LABEL_22;
      }

      sub_29A0DD764(v27, ".");
      sub_29A0DCEA8(v27 + 1, v29 + 1);
      v28 = open(a1, 3585, 416);
      ++v29;
      if (v28 != -1)
      {
        goto LABEL_28;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_28:
  close(v28);
  return 0;
}

uint64_t sub_29A0DD5E8(int a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v6 = sub_29A0DD198("ARCH_POSTMORTEM");
  v7 = &qword_2A153EE40;
  if (!a1)
  {
    v7 = &qword_2A153EE38;
  }

  v8 = *v7;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = qword_2A153EE30;
  }

  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = getpid();
    sub_29A0DCEA8(v33, v11);
    v12 = sub_29A0DD260();
    sub_29A0DCEA8(v32, v12);
    v31[0] = "$pid";
    v31[1] = v33;
    v31[2] = "$log";
    v31[3] = a2;
    v31[4] = "$time";
    v31[5] = v32;
    v31[6] = "$reason";
    v31[7] = a3;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *v15 = 0u;
    v16 = 0u;
    if (sub_29A0DD2A8(v15, v9, v8, v31))
    {
      pxrInternal__aapl__pxrReserved__::ArchCrashHandlerSystemv(v15[0], v15, 0x12C, 0, 0, v13);
      return 1;
    }

    sub_29A0DCF44("Too many arguments to postmortem command\n");
  }

  return 0;
}

uint64_t sub_29A0DD764(uint64_t a1, unsigned __int8 *a2)
{
  result = a1 - 1;
  do
  {
    v3 = *a2++;
    *++result = v3;
  }

  while (v3);
  return result;
}

void sub_29A0DD778(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = 0;
  v10 = 0;
  AddressInfo = pxrInternal__aapl__pxrReserved__::ArchGetAddressInfo((a1 - 1), v12, &v10, &__p, &v9);
  if (v9)
  {
    v5 = AddressInfo;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::Arch_DemangleFunctionName(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::ArchStringPrintf("%s+%#0lx", v6, v7, p_p, a1 - v9);
  }

  else
  {
    sub_29A008E78(a2, "<unknown>");
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_29A0DD858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0DD888(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_29A0DDCB0();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_29A0DD8E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_29A0DD980(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A203F500;
  result[1] = v3;
  return result;
}

uint64_t sub_29A0DD9C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A203F500;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A0DDA00(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203F580))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29A0DDA4C(void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_29A0DDCA4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

void sub_29A0DDCB0()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

uint64_t sub_29A0DDCFC(uint64_t a1)
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

uint64_t *sub_29A0DDD7C(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x29EDC9558] + 64;
  a1[53] = MEMORY[0x29EDC9558] + 64;
  v3 = *(MEMORY[0x29EDC9518] + 16);
  v4 = *(MEMORY[0x29EDC9518] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x29EDC9558] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x29C2C1D10](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_29A0DDF08(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C2C4390](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0DDF40(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  sub_29A00911C(v3, a2, v5);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = strlen(*(a1 + 8));
    sub_29A00911C(*a1, v6, v7);
  }

  return a1;
}

void *sub_29A0DDFB0(void *a1)
{
  v2 = MEMORY[0x29EDC9518];
  v3 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x29C2C1D20](a1 + 2);
  std::istream::~istream();
  MEMORY[0x29C2C4390](a1 + 53);
  return a1;
}

void *sub_29A0DE07C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x29C2C1D80](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_29A0DE1E0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x29A0DE1A0);
  }

  __cxa_rethrow();
}

BOOL pxrInternal__aapl__pxrReserved__::ArchGetAddressInfo(const void *a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  v9 = dladdr(a1, &v15);
  if (v9)
  {
    if (a2)
    {
      sub_29A008E78(__p, v15.dli_fname);
      pxrInternal__aapl__pxrReserved__::ArchAbsPath(__p, &v14);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v14;
      *(&v14.__r_.__value_.__s + 23) = 0;
      v14.__r_.__value_.__s.__data_[0] = 0;
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a3)
    {
      *a3 = v15.dli_fbase;
    }

    if (a4)
    {
      if (v15.dli_sname)
      {
        dli_sname = v15.dli_sname;
      }

      else
      {
        dli_sname = "";
      }

      MEMORY[0x29C2C1A60](a4, dli_sname);
    }

    if (a5)
    {
      *a5 = v15.dli_saddr;
    }
  }

  return v9 != 0;
}

void sub_29A0DE358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArchGetCwd(void *a1@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  if (getcwd(__s, 0x400uLL))
  {
    sub_29A008E78(a1, __s);
  }

  else
  {
    v4 = getcwd(0, 0);
    if (v4)
    {
      sub_29A008E78(a1, v4);
      free(v4);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Arch_Warning("can't determine working directory", "ArchGetCwd", 0x3D, "arch/systemInfo.cpp", v3);
      sub_29A008E78(a1, ".");
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchGetExecutablePath@<X0>(void *a1@<X8>)
{
  v7[4] = *MEMORY[0x29EDCA608];
  v7[0] = &unk_2A203F5B0;
  v7[3] = v7;
  v3 = operator new[](0x400uLL);
  __sz = 1024;
  while (1)
  {
    if (sub_29A0DE584(v7, v3, &__sz))
    {
      sub_29A008E78(a1, v3);
      goto LABEL_7;
    }

    if (__sz == -1)
    {
      break;
    }

    v4 = operator new[](__sz);
    operator delete[](v3);
    v3 = v4;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
LABEL_7:
  operator delete[](v3);
  return sub_29A0DE6E4(v7);
}

void sub_29A0DE540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete[](v10);
  sub_29A0DE6E4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0DE584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void *sub_29A0DE5E4()
{
  result = operator new(0x10uLL);
  *result = &unk_2A203F5B0;
  return result;
}

BOOL sub_29A0DE644(uint64_t a1, char **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  bufsize = **a3;
  v5 = _NSGetExecutablePath(v3, &bufsize);
  if (v5 == -1)
  {
    *v4 = bufsize;
  }

  return v5 != -1;
}

uint64_t sub_29A0DE698(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203F620))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A0DE6E4(uint64_t a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::ArchGetMainThreadId(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A153EED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EED8))
  {
    qword_2A153EED0 = pthread_main_thread_np();
    __cxa_guard_release(&qword_2A153EED8);
  }

  return qword_2A153EED0;
}

uint64_t sub_29A0DE814(atomic_ullong *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (result < 0)
  {
    if (result != -1)
    {
      goto LABEL_10;
    }

    atomic_compare_exchange_strong(a1, &result, 0xFFFFFFFFFFFFFFFELL);
    if (result == -1)
    {
      result = a2();
      *a1 = result;
      return result;
    }

    if (result < 0)
    {
LABEL_10:
      do
      {
        sched_yield();
        result = *a1;
      }

      while (*a1 < 0);
    }
  }

  return result;
}

unint64_t sub_29A0DE878()
{
  v0 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v1 = -1;
  do
  {
    v2 = mach_absolute_time();
    *v9 = v2;
    *&v9[8] = mach_absolute_time();
    *&v9[16] = mach_absolute_time();
    *&v9[24] = mach_absolute_time();
    *&v9[32] = mach_absolute_time();
    v3 = vsubq_s64(*&v9[24], vextq_s8(*&v9[8], *&v9[24], 8uLL));
    *v9 = vsubq_s64(*&v9[8], vextq_s8(vdupq_n_s64(v2), *&v9[8], 8uLL));
    *&v9[16] = v3;
    v4 = v9;
    v5 = *v9;
    for (i = 8; i != 32; i += 8)
    {
      if (*&v9[i] < v5)
      {
        v5 = *&v9[i];
        v4 = &v9[i];
      }
    }

    v7 = *v4;
    if (v7 < v1)
    {
      v1 = v7;
    }

    ++v0;
  }

  while (v0 != 64);
  return v1;
}

unint64_t sub_29A0DE98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t (*a5)(const void *, int))
{
  v6 = &pxrInternal__aapl__pxrReserved__::testTimeAccum;
  *v7 = &v6;
  return pxrInternal__aapl__pxrReserved__::Arch_MeasureExecutionTime(0x989680, 0, v7, sub_29A0DED40, a5);
}

double pxrInternal__aapl__pxrReserved__::ArchGetNanosecondsPerTick(pxrInternal__aapl__pxrReserved__ *this)
{
  v1 = qword_2A14F61A8;
  result = *&qword_2A14F61A8;
  if (*&qword_2A14F61A8 < 0.0)
  {
    if (*&qword_2A14F61A8 == -1.0)
    {
      v3 = *&qword_2A14F61A8;
      atomic_compare_exchange_strong(&qword_2A14F61A8, &v3, 0xC000000000000000);
      if (*&v3 == v1)
      {
        mach_timebase_info(&info);
        LODWORD(v4) = info.numer;
        LODWORD(v5) = info.denom;
        result = v4 / v5;
        qword_2A14F61A8 = *&result;
        return result;
      }

      result = v3;
    }

    while (result < 0.0)
    {
      sched_yield();
      result = *&qword_2A14F61A8;
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::Arch_MeasureExecutionTime(pxrInternal__aapl__pxrReserved__ *this, char *a2, BOOL *a3, uint64_t (*a4)(void, void), unint64_t (*a5)(const void *, int))
{
  v30 = *MEMORY[0x29EDCA608];
  v9 = -1;
  v10 = -10;
  do
  {
    v11 = (a4)(a3, 1, a3, a4, a5);
    if (v11 < v9)
    {
      v9 = v11;
    }
  }

  while (!__CFADD__(v10++, 1));
  v13 = sub_29A0DE814(&qword_2A14F6198, sub_29A0DE878);
  v27 = a2;
  if (v9 >= 2000 * v13)
  {
    LODWORD(v14) = 1;
  }

  else
  {
    v14 = (2000 * v13 + (v9 >> 1)) / v9;
  }

  v15 = 0;
  v16 = (v14 + (v14 >> 31)) >> 1;
  v17 = v14;
  do
  {
    v28[v15++] = (a4(a3, v17) + v16) / v17;
  }

  while (v15 != 64);
  if (this >= 0x12A05F200)
  {
    v18 = 5000000000;
  }

  else
  {
    v18 = this;
  }

  v19 = mach_absolute_time();
  std::__sort<std::__less<unsigned long long,unsigned long long> &,unsigned long long *>();
  v20 = v28[0];
  if (v28[0] == v29)
  {
LABEL_25:
    v24 = v27;
    if (v27)
    {
      v25 = 1;
LABEL_30:
      *v24 = v25;
    }
  }

  else
  {
    v20 = -1;
    while (mach_absolute_time() - v19 < v18)
    {
      v21 = v29;
      for (i = 43; i != 64; ++i)
      {
        v28[i] = (a4(a3, v17) + v16) / v17;
      }

      for (j = 0; j != 6; ++j)
      {
        v28[j] = (a4(a3, v17) + v16) / v17;
      }

      if (v21 < v20)
      {
        v20 = v21;
      }

      std::__sort<std::__less<unsigned long long,unsigned long long> &,unsigned long long *>();
      if (v28[0] == v29)
      {
        v20 = v28[0];
        goto LABEL_25;
      }
    }

      ;
    }

    v24 = v27;
    if (v27)
    {
      v25 = 0;
      goto LABEL_30;
    }
  }

  return v20;
}

uint64_t sub_29A0DED40(void ***a1, int a2)
{
  for (i = mach_absolute_time(); a2; **v5 = mach_absolute_time() - v6)
  {
    --a2;
    v5 = *a1;
    v6 = mach_absolute_time();
  }

  return mach_absolute_time() - i;
}

void *pxrInternal__aapl__pxrReserved__::ArchReserveVirtualMemory(size_t this)
{
  result = mmap(0, this, 0, 4098, -1, 0);
  if (result + 1 < 2)
  {
    return 0;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::ArchCommitVirtualMemoryRange(unint64_t this, void *a2)
{
  if ((atomic_load_explicit(&qword_2A153EEE8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_2A153EEE8);
    if (v5)
    {
      qword_2A153EEE0 = -pxrInternal__aapl__pxrReserved__::ArchGetPageSize(v5);
      __cxa_guard_release(&qword_2A153EEE8);
    }
  }

  return mprotect((qword_2A153EEE0 & this), a2 + this - (qword_2A153EEE0 & this), 3) == 0;
}

BOOL pxrInternal__aapl__pxrReserved__::ArchSetMemoryProtection(uint64_t a1, uint64_t a2, int a3)
{
  if ((atomic_load_explicit(&qword_2A153EEE8, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(&qword_2A153EEE8);
    if (v7)
    {
      qword_2A153EEE0 = -pxrInternal__aapl__pxrReserved__::ArchGetPageSize(v7);
      __cxa_guard_release(&qword_2A153EEE8);
    }
  }

  return mprotect((qword_2A153EEE0 & a1), a1 + a2 - (qword_2A153EEE0 & a1), dword_29B435D00[a3]) == 0;
}

void pxrInternal__aapl__pxrReserved__::ArchVStringPrintf(pxrInternal__aapl__pxrReserved__ *this, const char *a2, char *a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v5 = v4;
  v18 = *MEMORY[0x29EDCA608];
  v15 = v6;
  v16 = v6;
  v7 = vsnprintf(__str, 0x1000uLL, v3, v6) + 1;
  if (v7 > 0x1000)
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    v9 = 1;
    *(v5 + 16) = 0;
  }

  else
  {
    sub_29A008E78(v5, __str);
    v8 = *(v5 + 23);
    if (*(v5 + 23) < 0)
    {
      v8 = *(v5 + 8);
    }

    v9 = v8 == 0;
  }

  v10 = v7;
  if (v7)
  {
    v11 = !v9;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = operator new[](v7);
    vsnprintf(v12, v10, v3, v15);
    sub_29A008E78(&v13, v12);
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    *v5 = v13;
    *(v5 + 16) = v14;
    operator delete[](v12);
  }
}

void sub_29A0DF0AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0DF100()
{
  sub_29A008E78(v11, "TF_MALLOC_TAG_CAPTURE");
  sub_29A008E78(__p, "");
  pxrInternal__aapl__pxrReserved__::TfGetenv(v11, __p, v13);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  sub_29A008E78(__p, "TF_MALLOC_TAG_DEBUG");
  sub_29A008E78(v7, "");
  pxrInternal__aapl__pxrReserved__::TfGetenv(__p, v7, v11);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  v0 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v0 = v13[1];
  }

  if (!v0)
  {
    v1 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v1 = v11[1];
    }

    if (!v1)
    {
      sub_29A008E78(__p, "TF_MALLOC_TAG");
      v2 = pxrInternal__aapl__pxrReserved__::TfGetenvBool(__p, 0);
      v3 = v2;
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
        if (!v3)
        {
          goto LABEL_30;
        }
      }

      else if (!v2)
      {
        goto LABEL_30;
      }
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if (pxrInternal__aapl__pxrReserved__::TfMallocTag::Initialize(__p))
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::SetCapturedMallocStacksMatchList(v13);
    pxrInternal__aapl__pxrReserved__::TfMallocTag::SetDebugMatchList(v11);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA610];
    pxrInternal__aapl__pxrReserved__::ArchGetExecutablePath(v7);
    if (v8 >= 0)
    {
      v5 = v7;
    }

    else
    {
      v5 = v7[0];
    }

    v6 = __p;
    if (v10 < 0)
    {
      v6 = __p[0];
    }

    fprintf(v4, "%s: TF_MALLOC_TAG environment variable set, but\n            malloc tag initialization failed: %s\n", v5, v6);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_30:
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_29A0DF2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::BignumDtoa(uint64_t result, int a2, _BYTE *a3, uint64_t a4, int *a5, int *a6, double a7)
{
  v11 = result;
  v12 = a7;
  v13 = ((*&a7 >> 52) & 0x7FF) - 1075;
  v14 = *&a7 & 0xFFFFFFFFFFFFFLL;
  if ((*&a7 & 0x7FF0000000000000) != 0)
  {
    v14 = *&a7 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v13 = -1074;
  }

  v15 = (*&a7 & 0x7FE0000000000000) != 0 && (*&a7 & 0xFFFFFFFFFFFFFLL) == 0;
  v16 = (LODWORD(v12) >> 23) - 150;
  LODWORD(v17) = LODWORD(v12) & 0x7FFFFF;
  if ((LODWORD(v12) & 0x7F800000) != 0)
  {
    v17 = LODWORD(v12) & 0x7FFFFF | 0x800000u;
  }

  else
  {
    v17 = v17;
  }

  if ((LODWORD(v12) & 0x7F800000) == 0)
  {
    v16 = -149;
  }

  v18 = (LODWORD(v12) & 0x7F000000) != 0 && (LODWORD(v12) & 0x7FFFFF) == 0;
  if (result == 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = v15;
  }

  if (result == 1)
  {
    v20 = v16;
  }

  else
  {
    v20 = v13;
  }

  if (result == 1)
  {
    v21 = v17;
  }

  else
  {
    v21 = v14;
  }

  v22 = v20 - __clz(v21 & 0xFFFFFFFFFFFFFLL) + 11;
  if ((v21 & 0x10000000000000) != 0)
  {
    v22 = v20;
  }

  v23 = vcvtpd_s64_f64((v22 + 52) * 0.301029996 + -1.0e-10);
  if (result == 2 && ~v23 > a2)
  {
    *a3 = 0;
    *a5 = 0;
    *a6 = -a2;
    return result;
  }

  v24 = v21 & 1;
  *v56 = 0;
  *v55 = 0;
  v54[0] = 0;
  *v53 = 0;
  if ((v20 & 0x80000000) == 0)
  {
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt64(v56, v21);
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v56, v20);
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignPowerUInt16(v55, 0xAu, v23);
    if (v11 > 1)
    {
      goto LABEL_44;
    }

    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v55, 1);
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v56, 1);
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt16(v53, 1);
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v53, v20);
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt16(v54, 1);
    v26 = v54;
    v27 = v20;
    goto LABEL_39;
  }

  if (v23 < 0)
  {
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignPowerUInt16(v56, 0xAu, -v23);
    if (v11 > 1)
    {
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt64(v56, v21);
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt16(v55, 1);
      v28 = -v20;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignBignum(v53, v56);
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignBignum(v54, v56);
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt64(v56, v21);
      v28 = 1;
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt16(v55, 1);
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v55, -v20);
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v56, 1);
    }

    v26 = v55;
    v27 = v28;
LABEL_39:
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v26, v27);
    goto LABEL_40;
  }

  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt64(v56, v21);
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignPowerUInt16(v55, 0xAu, v23);
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v55, -v20);
  if (v11 > 1)
  {
    goto LABEL_44;
  }

  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v55, 1);
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v56, 1);
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt16(v53, 1);
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt16(v54, 1);
LABEL_40:
  v29 = !v19;
  if (v11 > 1)
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v55, 1);
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v56, 1);
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v53, 1);
  }

LABEL_44:
  result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::PlusCompare(v56, v53, v55, v25);
  if (!v24)
  {
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_49:
    *a6 = v23 + 1;
    goto LABEL_50;
  }

  if (result >= 1)
  {
    goto LABEL_49;
  }

LABEL_46:
  *a6 = v23;
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(v56, 0xAu);
  v32 = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Compare(v54, v53, v31);
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(v54, 0xAu);
  if (v32)
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(v53, 0xAu);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignBignum(v53, v54);
  }

LABEL_50:
  if (v11 < 2)
  {
    v34 = v54;
    v35 = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Compare(v54, v53, v30);
    if (v35)
    {
      v34 = v53;
    }

    *a5 = 0;
    v36 = v24 ^ 1;
    if (v24)
    {
      v37 = 0;
    }

    else
    {
      v37 = -1;
    }

    while (1)
    {
      v38 = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::DivideModuloIntBignum(v56, v55);
      v39 = *a5;
      *a5 = v39 + 1;
      a3[v39] = v38 + 48;
      v41 = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Compare(v56, v54, v40);
      result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::PlusCompare(v56, v34, v55, v42);
      if (v41 < v36 || result > v37)
      {
        break;
      }

      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(v56, 0xAu);
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(v54, 0xAu);
      if (v35)
      {
        pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(v53, 0xAu);
      }
    }

    if (v41 >= v36 || result <= v37)
    {
      if (v41 < v36)
      {
        goto LABEL_81;
      }

      v48 = &a3[*a5];
      v49 = *(v48 - 1);
      v45 = v48 - 1;
      v46 = v49;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::PlusCompare(v56, v56, v55, v43);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_81;
      }

      v44 = &a3[*a5];
      v47 = *(v44 - 1);
      v45 = v44 - 1;
      v46 = v47;
      if (!result && (v46 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    *v45 = v46 + 1;
    goto LABEL_81;
  }

  if (v11 != 2)
  {
    if (v11 != 3)
    {
      abort();
    }

    v33 = a2;
    goto LABEL_54;
  }

  v50 = -*a6;
  if (v50 > a2)
  {
    *a6 = -a2;
LABEL_75:
    *a5 = 0;
    goto LABEL_81;
  }

  if (v50 == a2)
  {
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(v55, 0xAu);
    result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::PlusCompare(v56, v56, v55, v51);
    if ((result & 0x80000000) == 0)
    {
      *a3 = 49;
      *a5 = 1;
      ++*a6;
      goto LABEL_81;
    }

    goto LABEL_75;
  }

  v33 = *a6 + a2;
LABEL_54:
  result = sub_29A0DF8B8(v33, a6, v56, v55, a3, a4, a5);
LABEL_81:
  a3[*a5] = 0;
  return result;
}

uint64_t sub_29A0DF8B8(int a1, _DWORD *a2, pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a4, _BYTE *a5, uint64_t a6, int *a7)
{
  v13 = (a1 - 1);
  v14 = (a1 - 2);
  if (a1 < 2)
  {
    v24 = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::DivideModuloIntBignum(this, a4);
    result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::PlusCompare(this, this, a4, v25);
    a5[v13] = v24 + (result >= 0) + 48;
  }

  else
  {
    v15 = (a1 - 1);
    v16 = a5;
    do
    {
      *v16++ = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::DivideModuloIntBignum(this, a4) + 48;
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(this, 0xAu);
      --v15;
    }

    while (v15);
    v17 = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::DivideModuloIntBignum(this, a4);
    result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::PlusCompare(this, this, a4, v18);
    a5[v13] = v17 + (result >= 0) + 48;
    v20 = &a5[v13];
    v21 = a5[v13];
    v22 = &a5[v14];
    v23 = a1;
    do
    {
      if (v21 != 58)
      {
        break;
      }

      *v20-- = 48;
      v21 = *v22 + 1;
      *v22-- = v21;
      --v23;
    }

    while (v23 > 1);
  }

  if (*a5 == 58)
  {
    *a5 = 49;
    ++*a2;
  }

  *a7 = a1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::RawBigit(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, int a2)
{
  return this + 4 * a2 + 4;
}

{
  return this + 4 * a2 + 4;
}

_DWORD *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt16(_DWORD *this, int a2)
{
  *this = 0;
  if (a2)
  {
    this[1] = a2;
    *this = 1;
  }

  return this;
}

_DWORD *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt64(_DWORD *this, unint64_t a2)
{
  *this = 0;
  if (a2)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      this[v3] = a2 & 0xFFFFFFF;
      a2 >>= 28;
      ++v2;
      ++v3;
    }

    while (a2);
    *this = v2;
  }

  return this;
}

_WORD *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignBignum(_WORD *this, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a2)
{
  this[1] = *(a2 + 1);
  v2 = *a2;
  if (v2 >= 1)
  {
    v3 = (a2 + 4);
    v4 = this + 2;
    v5 = *a2;
    do
    {
      v6 = *v3++;
      *v4++ = v6;
      --v5;
    }

    while (v5);
  }

  *this = v2;
  return this;
}