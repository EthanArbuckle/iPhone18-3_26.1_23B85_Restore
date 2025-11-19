void *sub_196BC(uint64_t a1, uint64_t a2)
{
  v12 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v4 = (*(**(a1 + 24) + 112))(*(a1 + 24), a2);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v6 = (*(**(a1 + 24) + 120))(*(a1 + 24));
  v7 = sub_5B88(0x20uLL);
  sub_18500(v7, v12, v6);
  *v7 = off_1A83D8;
  v8 = v4;
  v9 = sub_5B88(0x20uLL);
  sub_18500(v9, v5, v8);
  *v9 = off_1A83D8;
  v10 = sub_5B88(0x20uLL);
  sub_18500(v10, v7, v9);
  *v10 = off_1A8158;
  return v10;
}

void sub_1990C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  if (v15)
  {
    free(v15);
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(exception_object);
    v21 = *v19;
    v22 = *(v19 + 2);
    if (v14)
    {
      (*(*v14 + 152))(v14);
    }

    if (v16)
    {
      (*(*v16 + 152))(v16);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v21;
    exception[2] = v22;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B14(uint64_t a1)
{
  sub_18068(a1);
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && *(a1 + 8))
  {
    v2 = (***(a1 + 16))(*(a1 + 16));
    if (v2 == 0.0)
    {
LABEL_4:
      v3 = sub_5B88(0x18uLL);
      *v3 = off_1AA288;
      v3[1] = 0;
      *(v3 + 4) = 0;
      return (*(*a1 + 296))(a1);
    }

    if (v2 == 1.0)
    {
      v5 = *(a1 + 24);
LABEL_12:
      v7 = *(*a1 + 296);

      return v7(a1, v5);
    }
  }

  if ((*(**(a1 + 24) + 40))(*(a1 + 24)) && *(a1 + 8))
  {
    v6 = (***(a1 + 24))(*(a1 + 24));
    if (v6 == 0.0)
    {
      goto LABEL_4;
    }

    if (v6 == 1.0)
    {
      v5 = *(a1 + 16);
      goto LABEL_12;
    }
  }

  result = (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24));
  if (result)
  {
    v8 = (*(**(a1 + 16) + 120))(*(a1 + 16));
    v9 = sub_5B88(0x18uLL);
    *v9 = off_1AA288;
    v9[1] = 0;
    *(v9 + 4) = 0x40000000;
    v10 = sub_5B88(0x20uLL);
    sub_18500(v10, v8, v9);
    *v10 = off_1A8798;
    return (*(*a1 + 296))(a1, v10);
  }

  return result;
}

void sub_19E70(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v20)
  {
    free(v20);
  }

  __cxa_begin_catch(a1);
  if (v18)
  {
    (*(*v18 + 152))(v18);
  }

  if (v19)
  {
    (*(*v19 + 152))(v19);
  }

  __cxa_end_catch();
}

float sub_19F78(float (****a1)(void))
{
  v2 = (**a1[3])(a1[3]);
  if (v2 == 0.0)
  {
    ((*a1)[34])(a1, 1, a1, -1);
  }

  return (**a1[2])(a1[2]) / v2;
}

uint64_t sub_1A03C(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          *(v6 + v8) = v7 / *(v6 + v8);
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v10 = 0;
        do
        {
          *(v6 + v10) = *(v6 + v10) / v9;
          v10 += 4;
        }

        while (4 * a2 != v10);
      }
    }

    return v6;
  }

  v11 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v12 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (a2 >= 1)
    {
      v14 = 0;
      do
      {
        *(v12 + v14) = *(v12 + v14) / *(v11 + v14);
        v14 += 4;
      }

      while (4 * a2 != v14);
    }

    goto LABEL_25;
  }

  if (v12)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v11)
  {
LABEL_25:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_1A2B4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!a2[v10])
          {
            v11 = *(v8 + 4 * v10);
            if (v11 == 0.0)
            {
              a2[v10] = 1;
            }

            else
            {
              *(v8 + 4 * v10) = v9 / v11;
            }
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }
  }

  else if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      v12 = (***(a1 + 24))(*(a1 + 24));
      if (v12 == 0.0)
      {
        if (a3 >= 1)
        {
          memset(a2, 1, a3);
        }
      }

      else if (a3 >= 1)
      {
        v13 = 0;
        do
        {
          if (!a2[v13])
          {
            *(v8 + 4 * v13) = *(v8 + 4 * v13) / v12;
          }

          ++v13;
        }

        while (a3 != v13);
      }
    }
  }

  else
  {
    v14 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
    v15 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      if (a3 >= 1)
      {
        v17 = v14;
        v18 = v15;
        v19 = a3;
        do
        {
          if (!*a2)
          {
            if (*v17 == 0.0)
            {
              *a2 = 1;
            }

            else
            {
              *v18 = *v18 / *v17;
            }
          }

          ++v18;
          ++v17;
          ++a2;
          --v19;
        }

        while (v19);
      }

      operator delete[]();
    }

    if (v15)
    {
      operator delete[]();
    }

    if (v14)
    {
      operator delete[]();
    }

    return 0;
  }

  return v8;
}

uint64_t sub_1A5C8(uint64_t a1)
{
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && (***(a1 + 16))(*(a1 + 16)) == 0.0)
  {
    return 1;
  }

  return sub_19628(a1);
}

void *sub_1A668(uint64_t a1, uint64_t a2)
{
  v16 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v4 = (*(**(a1 + 24) + 112))(*(a1 + 24), a2);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v6 = (*(**(a1 + 24) + 120))(*(a1 + 24));
  v7 = (*(**(a1 + 24) + 120))(*(a1 + 24));
  v8 = sub_5B88(0x20uLL);
  v9 = sub_5B88(0x18uLL);
  *v9 = off_1AA288;
  v9[1] = 0;
  *(v9 + 4) = 0x40000000;
  sub_18500(v8, v7, v9);
  *v8 = off_1A8798;
  v10 = sub_5B88(0x20uLL);
  sub_18500(v10, v16, v6);
  *v10 = off_1A83D8;
  v11 = v4;
  v12 = sub_5B88(0x20uLL);
  sub_18500(v12, v5, v11);
  *v12 = off_1A83D8;
  v13 = sub_5B88(0x20uLL);
  sub_18500(v13, v10, v12);
  *v13 = off_1A8298;
  v14 = sub_5B88(0x20uLL);
  sub_18500(v14, v13, v8);
  *v14 = off_1A8518;
  return v14;
}

void sub_1A9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20)
{
  if (v21)
  {
    free(v21);
  }

  if (a2 == 1)
  {
    v23 = __cxa_begin_catch(exception_object);
    v26 = *v23;
    v27 = *(v23 + 2);
    if (v20)
    {
      (*(*v20 + 152))(v20);
    }

    if (a15)
    {
      (*(*a15 + 152))(a15);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v26;
    exception[2] = v27;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1ACC4(uint64_t a1)
{
  sub_18068(a1);
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && (***(a1 + 16))(*(a1 + 16)) == 0.0)
  {
    v2 = sub_5B88(0x18uLL);
    *v2 = off_1AA288;
    v2[1] = 0;
    *(v2 + 4) = 0;
    return (*(*a1 + 296))(a1);
  }

  else
  {
    result = (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24));
    if (result)
    {
      v4 = sub_5B88(0x18uLL);
      *v4 = off_1AA288;
      v4[1] = 0;
      *(v4 + 4) = 1065353216;
      return (*(*a1 + 296))(a1);
    }
  }

  return result;
}

void sub_1AE30(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

float sub_1AE54(float (****a1)(void))
{
  v2 = (**a1[3])(a1[3]);
  if (v2 == 0.0)
  {
    ((*a1)[34])(a1, 1, -1, -1);
  }

  return ((**a1[2])(a1[2]) % v2);
}

uint64_t sub_1AF28(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          *(v6 + v8) = (v7 % *(v6 + v8));
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v10 = 0;
        do
        {
          *(v6 + v10) = (*(v6 + v10) % v9);
          v10 += 4;
        }

        while (4 * a2 != v10);
      }
    }

    return v6;
  }

  v11 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v12 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (a2 >= 1)
    {
      v14 = 0;
      do
      {
        *(v12 + v14) = (*(v12 + v14) % *(v11 + v14));
        v14 += 4;
      }

      while (4 * a2 != v14);
    }

    goto LABEL_25;
  }

  if (v12)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v11)
  {
LABEL_25:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_1B1D0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (!a2[v10])
          {
            v12 = *(v8 + 4 * v10);
            if (v12 == 0.0)
            {
              a2[v10] = 1;
            }

            else
            {
              *(v8 + 4 * v10) = (v11 % v12);
            }
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }
  }

  else if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      v13 = (***(a1 + 24))(*(a1 + 24));
      if (v13 == 0.0)
      {
        if (a3 >= 1)
        {
          memset(a2, 1, a3);
        }
      }

      else if (a3 >= 1)
      {
        v14 = 0;
        do
        {
          if (!a2[v14])
          {
            *(v8 + 4 * v14) = (*(v8 + 4 * v14) % v13);
          }

          ++v14;
        }

        while (a3 != v14);
      }
    }
  }

  else
  {
    v15 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
    v16 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v16)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      if (a3 >= 1)
      {
        v18 = v15;
        v19 = v16;
        v20 = a3;
        do
        {
          if (!*a2)
          {
            if (*v18 == 0.0)
            {
              *a2 = 1;
            }

            else
            {
              *v19 = (*v19 % *v18);
            }
          }

          ++v19;
          ++v18;
          ++a2;
          --v20;
        }

        while (v20);
      }

      operator delete[]();
    }

    if (v16)
    {
      operator delete[]();
    }

    if (v15)
    {
      operator delete[]();
    }

    return 0;
  }

  return v8;
}

uint64_t sub_1B514(uint64_t a1)
{
  sub_18068(a1);
  result = (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24));
  if (result)
  {
    v3 = sub_5B88(0x18uLL);
    *v3 = off_1AA288;
    v3[1] = 0;
    *(v3 + 4) = 0;
    return (*(*a1 + 296))(a1);
  }

  return result;
}

void sub_1B5C0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

double sub_1B5E0(uint64_t a1)
{
  v2 = (***(a1 + 16))(*(a1 + 16));
  v3 = (***(a1 + 24))(*(a1 + 24));
  if (v2 <= 0.0)
  {
    result = 0.0;
    if (v2 != 0.0)
    {
      result = pow(v2, v3);
      *&result = result;
    }
  }

  else
  {

    *&result = powf(v2, v3);
  }

  return result;
}

char *sub_1B6A8(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      v7 = (***(a1 + 16))(*(a1 + 16));
      v8 = v7;
      if (v7 <= 0.0)
      {
        if (v7 == 0.0)
        {
          if (a2 >= 1)
          {
            bzero(v6, 4 * a2);
          }
        }

        else if (a2 >= 1)
        {
          v21 = 0;
          v22 = v7;
          v23 = 4 * a2;
          do
          {
            v24 = pow(v22, *&v6[v21]);
            *&v6[v21] = v24;
            v21 += 4;
          }

          while (v23 != v21);
        }
      }

      else if (a2 >= 1)
      {
        v9 = 0;
        v10 = 4 * a2;
        do
        {
          *&v6[v9] = powf(v8, *&v6[v9]);
          v9 += 4;
        }

        while (v10 != v9);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (!v6)
    {
      return v6;
    }

    (***(a1 + 24))(*(a1 + 24));
    if (a2 < 1)
    {
      return v6;
    }

    v12 = v11;
    v13 = 0;
    v14 = v11;
    v15 = 4 * a2;
    while (1)
    {
      v16 = *&v6[v13];
      if (v16 > 0.0)
      {
        break;
      }

      if (v16 < 0.0)
      {
        v17 = pow(v16, v14);
        goto LABEL_16;
      }

LABEL_17:
      v13 += 4;
      if (v15 == v13)
      {
        return v6;
      }
    }

    v17 = powf(v16, v12);
LABEL_16:
    *&v6[v13] = v17;
    goto LABEL_17;
  }

  v18 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v19 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v19)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    if (a2 < 1)
    {
LABEL_44:
      operator delete[]();
    }

    a2 = a2;
    v25 = v19;
    v26 = v18;
    while (1)
    {
      v27 = *v25;
      if (*v25 > 0.0)
      {
        break;
      }

      if (*v25 < 0.0)
      {
        v28 = pow(v27, *v26);
        goto LABEL_42;
      }

LABEL_43:
      ++v26;
      ++v25;
      if (!--a2)
      {
        goto LABEL_44;
      }
    }

    v28 = powf(v27, *v26);
LABEL_42:
    *v25 = v28;
    goto LABEL_43;
  }

  if (v19)
  {
    operator delete[]();
  }

  if (v18)
  {
    operator delete[]();
  }

  return 0;
}

uint64_t sub_1BA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      v9 = (***(a1 + 16))(*(a1 + 16));
      v10 = v9;
      if (v9 <= 0.0)
      {
        if (v9 == 0.0)
        {
          if (a3 >= 1)
          {
            v18 = 0;
            do
            {
              if (!*(a2 + v18))
              {
                *(v8 + 4 * v18) = 0;
              }

              ++v18;
            }

            while (a3 != v18);
          }
        }

        else if (a3 >= 1)
        {
          v23 = 0;
          v24 = v9;
          do
          {
            if (!*(a2 + v23))
            {
              v25 = pow(v24, *(v8 + 4 * v23));
              *(v8 + 4 * v23) = v25;
            }

            ++v23;
          }

          while (a3 != v23);
        }
      }

      else if (a3 >= 1)
      {
        v11 = 0;
        do
        {
          if (!*(a2 + v11))
          {
            *(v8 + 4 * v11) = powf(v10, *(v8 + 4 * v11));
          }

          ++v11;
        }

        while (a3 != v11);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (!v8)
    {
      return v8;
    }

    (***(a1 + 24))(*(a1 + 24));
    if (a3 < 1)
    {
      return v8;
    }

    v13 = v12;
    v14 = 0;
    v15 = v12;
    while (1)
    {
      if (!*(a2 + v14))
      {
        v16 = *(v8 + 4 * v14);
        if (v16 > 0.0)
        {
          v17 = powf(v16, v13);
LABEL_19:
          *(v8 + 4 * v14) = v17;
          goto LABEL_20;
        }

        if (v16 < 0.0)
        {
          v17 = pow(v16, v15);
          goto LABEL_19;
        }
      }

LABEL_20:
      if (a3 == ++v14)
      {
        return v8;
      }
    }
  }

  v19 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v20 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  v21 = v20;
  if (v20)
  {
    v22 = v19 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    if (a3 >= 1)
    {
      for (i = 0; a3 != i; ++i)
      {
        if (!*(a2 + i))
        {
          v27 = *(v21 + 4 * i);
          if (v27 > 0.0)
          {
            v28 = powf(v27, *(v19 + 4 * i));
LABEL_51:
            *(v21 + 4 * i) = v28;
            continue;
          }

          if (v27 < 0.0)
          {
            v28 = pow(v27, *(v19 + 4 * i));
            goto LABEL_51;
          }
        }
      }
    }

LABEL_53:
    operator delete[]();
  }

  if (v20)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v19)
  {
    goto LABEL_53;
  }

  return v8;
}

uint64_t sub_1BD98(uint64_t a1)
{
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && ((***(a1 + 16))(*(a1 + 16)) == 1.0 || (***(a1 + 16))(*(a1 + 16)) == 0.0) || (*(**(a1 + 24) + 40))(*(a1 + 24)) && (***(a1 + 24))(*(a1 + 24)) == 0.0)
  {
    return 1;
  }

  return sub_19628(a1);
}

void *sub_1BEC8(uint64_t a1, uint64_t a2)
{
  v29 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v26 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v4 = (*(**(a1 + 24) + 120))(*(a1 + 24));
  v27 = (*(**(a1 + 24) + 112))(*(a1 + 24), a2);
  v28 = sub_5B88(0x18uLL);
  *v28 = off_1AA288;
  v28[1] = 0;
  *(v28 + 4) = 1065353216;
  v5 = sub_5B88(0x20uLL);
  v25 = v4;
  v6 = (*(*v4 + 120))(v4);
  sub_18500(v5, v6, v28);
  *v5 = off_1A8298;
  v7 = sub_5B88(0x20uLL);
  v8 = (*(*v26 + 120))(v26);
  sub_18500(v7, v8, v5);
  *v7 = off_1A8798;
  v9 = sub_5B88(0x20uLL);
  v10 = (*(*v4 + 120))(v4);
  sub_18500(v9, v10, v7);
  *v9 = off_1A83D8;
  v11 = sub_5B88(0x20uLL);
  v12 = (*(*v29 + 120))(v29);
  sub_18500(v11, v12, v9);
  *v11 = off_1A83D8;
  v13 = sub_5B88(0x18uLL);
  v14 = (*(*v26 + 120))(v26);
  sub_D9DC(v13, v14);
  *v13 = &off_1A57E8;
  v15 = sub_5B88(0x20uLL);
  v16 = (*(*v26 + 120))(v26);
  sub_18500(v15, v16, v13);
  *v15 = off_1A8798;
  v17 = sub_5B88(0x20uLL);
  v18 = (*(*v27 + 120))(v27);
  sub_18500(v17, v18, v15);
  *v17 = off_1A83D8;
  v19 = sub_5B88(0x20uLL);
  v20 = (*(*v26 + 120))(v26);
  v21 = (*(*v25 + 120))(v25);
  sub_18500(v19, v20, v21);
  *v19 = off_1A8798;
  v22 = sub_5B88(0x20uLL);
  sub_18500(v22, v19, v17);
  *v22 = off_1A83D8;
  v23 = sub_5B88(0x20uLL);
  sub_18500(v23, v11, v22);
  *v23 = off_1A8158;
  (*(*v26 + 152))(v26);
  (*(*v25 + 152))(v25);
  (*(*v29 + 152))(v29);
  (*(*v27 + 152))(v27);
  return v23;
}

void sub_1C5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, __int128 a17, uint64_t a18)
{
  if (v18)
  {
    free(v18);
  }

  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v24 = *v20;
    v25 = *(v20 + 2);
    if (a13)
    {
      (*(*a13 + 152))(a13);
    }

    if (a12)
    {
      (*(*a12 + 152))(a12);
    }

    if (a16)
    {
      (*(*a16 + 152))(a16);
    }

    if (a14)
    {
      (*(*a14 + 152))(a14);
    }

    if (a15)
    {
      (*(*a15 + 152))(a15);
    }

    if (v19)
    {
      (*(*v19 + 152))(v19);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v24;
    exception[2] = v25;
  }

  _Unwind_Resume(a1);
}

void sub_1C838(void *a1)
{
  sub_18068(a1);
  if ((*(*a1[2] + 40))(a1[2]) && ((**a1[2])(a1[2]) == 1.0 || (**a1[2])(a1[2]) == 0.0))
  {
    v2 = sub_5B88(0x18uLL);
    v3 = (**a1[2])(a1[2]);
    *v2 = off_1AA288;
    *(v2 + 1) = 0;
    v2[4] = v3;
    (*(*a1 + 296))(a1, v2);
  }

  else if ((*(*a1[3] + 40))(a1[3]) && (**a1[3])(a1[3]) == 0.0)
  {
    v4 = sub_5B88(0x18uLL);
    *v4 = off_1AA288;
    v4[1] = 0;
    *(v4 + 4) = 1065353216;
    (*(*a1 + 296))(a1);
  }

  else if ((*(*a1[3] + 40))(a1[3]) && (**a1[3])(a1[3]) == 1.0)
  {
    v5 = a1[2];
    v6 = *(*a1 + 296);

    v6(a1, v5);
  }
}

void sub_1CAE4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_1CBB0(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          if (v7 >= *(v6 + v8))
          {
            v9 = 0.0;
          }

          else
          {
            v9 = 1.0;
          }

          *(v6 + v8) = v9;
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v11 = 0;
        do
        {
          if (*(v6 + v11) >= v10)
          {
            v12 = 0.0;
          }

          else
          {
            v12 = 1.0;
          }

          *(v6 + v11) = v12;
          v11 += 4;
        }

        while (4 * a2 != v11);
      }
    }

    return v6;
  }

  v13 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v14 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a2 >= 1)
    {
      v16 = 0;
      do
      {
        if (*(v14 + v16) >= *(v13 + v16))
        {
          v17 = 0.0;
        }

        else
        {
          v17 = 1.0;
        }

        *(v14 + v16) = v17;
        v16 += 4;
      }

      while (4 * a2 != v16);
    }

    goto LABEL_34;
  }

  if (v14)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v13)
  {
LABEL_34:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_1CE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!*(a2 + v10))
          {
            if (v9 >= *(v8 + 4 * v10))
            {
              v11 = 0.0;
            }

            else
            {
              v11 = 1.0;
            }

            *(v8 + 4 * v10) = v11;
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a3 >= 1)
      {
        v13 = 0;
        do
        {
          if (!*(a2 + v13))
          {
            if (*(v8 + 4 * v13) >= v12)
            {
              v14 = 0.0;
            }

            else
            {
              v14 = 1.0;
            }

            *(v8 + 4 * v13) = v14;
          }

          ++v13;
        }

        while (a3 != v13);
      }
    }

    return v8;
  }

  v15 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v16 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (a3 >= 1)
    {
      v18 = 0;
      do
      {
        if (!*(a2 + v18))
        {
          if (*(v16 + 4 * v18) >= *(v15 + 4 * v18))
          {
            v19 = 0.0;
          }

          else
          {
            v19 = 1.0;
          }

          *(v16 + 4 * v18) = v19;
        }

        ++v18;
      }

      while (a3 != v18);
    }

    goto LABEL_40;
  }

  if (v16)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v15)
  {
LABEL_40:
    operator delete[]();
  }

  return v8;
}

uint64_t sub_1D11C(uint64_t a1)
{
  sub_18068(a1);
  result = (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24));
  if (result)
  {
    v3 = sub_5B88(0x18uLL);
    *v3 = off_1AA288;
    v3[1] = 0;
    *(v3 + 4) = 0;
    return (*(*a1 + 296))(a1);
  }

  return result;
}

void sub_1D1C8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_1D274(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          if (v7 <= *(v6 + v8))
          {
            v9 = 0.0;
          }

          else
          {
            v9 = 1.0;
          }

          *(v6 + v8) = v9;
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v11 = 0;
        do
        {
          if (*(v6 + v11) <= v10)
          {
            v12 = 0.0;
          }

          else
          {
            v12 = 1.0;
          }

          *(v6 + v11) = v12;
          v11 += 4;
        }

        while (4 * a2 != v11);
      }
    }

    return v6;
  }

  v13 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v14 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a2 >= 1)
    {
      v16 = 0;
      do
      {
        if (*(v14 + v16) <= *(v13 + v16))
        {
          v17 = 0.0;
        }

        else
        {
          v17 = 1.0;
        }

        *(v14 + v16) = v17;
        v16 += 4;
      }

      while (4 * a2 != v16);
    }

    goto LABEL_34;
  }

  if (v14)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v13)
  {
LABEL_34:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_1D510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!*(a2 + v10))
          {
            if (v9 <= *(v8 + 4 * v10))
            {
              v11 = 0.0;
            }

            else
            {
              v11 = 1.0;
            }

            *(v8 + 4 * v10) = v11;
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a3 >= 1)
      {
        v13 = 0;
        do
        {
          if (!*(a2 + v13))
          {
            if (*(v8 + 4 * v13) <= v12)
            {
              v14 = 0.0;
            }

            else
            {
              v14 = 1.0;
            }

            *(v8 + 4 * v13) = v14;
          }

          ++v13;
        }

        while (a3 != v13);
      }
    }

    return v8;
  }

  v15 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v16 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (a3 >= 1)
    {
      v18 = 0;
      do
      {
        if (!*(a2 + v18))
        {
          if (*(v16 + 4 * v18) <= *(v15 + 4 * v18))
          {
            v19 = 0.0;
          }

          else
          {
            v19 = 1.0;
          }

          *(v16 + 4 * v18) = v19;
        }

        ++v18;
      }

      while (a3 != v18);
    }

    goto LABEL_40;
  }

  if (v16)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v15)
  {
LABEL_40:
    operator delete[]();
  }

  return v8;
}

uint64_t sub_1D7E0(uint64_t a1)
{
  sub_18068(a1);
  result = (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24));
  if (result)
  {
    v3 = sub_5B88(0x18uLL);
    *v3 = off_1AA288;
    v3[1] = 0;
    *(v3 + 4) = 0;
    return (*(*a1 + 296))(a1);
  }

  return result;
}

void sub_1D88C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_1D938(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          if (v7 == *(v6 + v8))
          {
            v9 = 1.0;
          }

          else
          {
            v9 = 0.0;
          }

          *(v6 + v8) = v9;
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v11 = 0;
        do
        {
          if (*(v6 + v11) == v10)
          {
            v12 = 1.0;
          }

          else
          {
            v12 = 0.0;
          }

          *(v6 + v11) = v12;
          v11 += 4;
        }

        while (4 * a2 != v11);
      }
    }

    return v6;
  }

  v13 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v14 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a2 >= 1)
    {
      v16 = 0;
      do
      {
        if (*(v14 + v16) == *(v13 + v16))
        {
          v17 = 1.0;
        }

        else
        {
          v17 = 0.0;
        }

        *(v14 + v16) = v17;
        v16 += 4;
      }

      while (4 * a2 != v16);
    }

    goto LABEL_34;
  }

  if (v14)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v13)
  {
LABEL_34:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_1DBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!*(a2 + v10))
          {
            if (v9 == *(v8 + 4 * v10))
            {
              v11 = 1.0;
            }

            else
            {
              v11 = 0.0;
            }

            *(v8 + 4 * v10) = v11;
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a3 >= 1)
      {
        v13 = 0;
        do
        {
          if (!*(a2 + v13))
          {
            if (*(v8 + 4 * v13) == v12)
            {
              v14 = 1.0;
            }

            else
            {
              v14 = 0.0;
            }

            *(v8 + 4 * v13) = v14;
          }

          ++v13;
        }

        while (a3 != v13);
      }
    }

    return v8;
  }

  v15 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v16 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (a3 >= 1)
    {
      v18 = 0;
      do
      {
        if (!*(a2 + v18))
        {
          if (*(v16 + 4 * v18) == *(v15 + 4 * v18))
          {
            v19 = 1.0;
          }

          else
          {
            v19 = 0.0;
          }

          *(v16 + 4 * v18) = v19;
        }

        ++v18;
      }

      while (a3 != v18);
    }

    goto LABEL_40;
  }

  if (v16)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v15)
  {
LABEL_40:
    operator delete[]();
  }

  return v8;
}

uint64_t sub_1DEA4(uint64_t a1)
{
  sub_18068(a1);
  result = (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24));
  if (result)
  {
    v3 = sub_5B88(0x18uLL);
    *v3 = off_1AA288;
    v3[1] = 0;
    *(v3 + 4) = 1065353216;
    return (*(*a1 + 296))(a1);
  }

  return result;
}

void sub_1DF54(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_1E000(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          if (v7 == *(v6 + v8))
          {
            v9 = 0.0;
          }

          else
          {
            v9 = 1.0;
          }

          *(v6 + v8) = v9;
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v11 = 0;
        do
        {
          if (*(v6 + v11) == v10)
          {
            v12 = 0.0;
          }

          else
          {
            v12 = 1.0;
          }

          *(v6 + v11) = v12;
          v11 += 4;
        }

        while (4 * a2 != v11);
      }
    }

    return v6;
  }

  v13 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v14 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a2 >= 1)
    {
      v16 = 0;
      do
      {
        if (*(v14 + v16) == *(v13 + v16))
        {
          v17 = 0.0;
        }

        else
        {
          v17 = 1.0;
        }

        *(v14 + v16) = v17;
        v16 += 4;
      }

      while (4 * a2 != v16);
    }

    goto LABEL_34;
  }

  if (v14)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v13)
  {
LABEL_34:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_1E29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!*(a2 + v10))
          {
            if (v9 == *(v8 + 4 * v10))
            {
              v11 = 0.0;
            }

            else
            {
              v11 = 1.0;
            }

            *(v8 + 4 * v10) = v11;
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a3 >= 1)
      {
        v13 = 0;
        do
        {
          if (!*(a2 + v13))
          {
            if (*(v8 + 4 * v13) == v12)
            {
              v14 = 0.0;
            }

            else
            {
              v14 = 1.0;
            }

            *(v8 + 4 * v13) = v14;
          }

          ++v13;
        }

        while (a3 != v13);
      }
    }

    return v8;
  }

  v15 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v16 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (a3 >= 1)
    {
      v18 = 0;
      do
      {
        if (!*(a2 + v18))
        {
          if (*(v16 + 4 * v18) == *(v15 + 4 * v18))
          {
            v19 = 0.0;
          }

          else
          {
            v19 = 1.0;
          }

          *(v16 + 4 * v18) = v19;
        }

        ++v18;
      }

      while (a3 != v18);
    }

    goto LABEL_40;
  }

  if (v16)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v15)
  {
LABEL_40:
    operator delete[]();
  }

  return v8;
}

uint64_t sub_1E56C(uint64_t a1)
{
  sub_18068(a1);
  result = (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24));
  if (result)
  {
    v3 = sub_5B88(0x18uLL);
    *v3 = off_1AA288;
    v3[1] = 0;
    *(v3 + 4) = 0;
    return (*(*a1 + 296))(a1);
  }

  return result;
}

void sub_1E618(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_1E6C4(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          if (v7 <= *(v6 + v8))
          {
            v9 = 1.0;
          }

          else
          {
            v9 = 0.0;
          }

          *(v6 + v8) = v9;
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v11 = 0;
        do
        {
          if (*(v6 + v11) <= v10)
          {
            v12 = 1.0;
          }

          else
          {
            v12 = 0.0;
          }

          *(v6 + v11) = v12;
          v11 += 4;
        }

        while (4 * a2 != v11);
      }
    }

    return v6;
  }

  v13 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v14 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a2 >= 1)
    {
      v16 = 0;
      do
      {
        if (*(v14 + v16) <= *(v13 + v16))
        {
          v17 = 1.0;
        }

        else
        {
          v17 = 0.0;
        }

        *(v14 + v16) = v17;
        v16 += 4;
      }

      while (4 * a2 != v16);
    }

    goto LABEL_34;
  }

  if (v14)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v13)
  {
LABEL_34:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_1E960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!*(a2 + v10))
          {
            if (v9 <= *(v8 + 4 * v10))
            {
              v11 = 1.0;
            }

            else
            {
              v11 = 0.0;
            }

            *(v8 + 4 * v10) = v11;
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a3 >= 1)
      {
        v13 = 0;
        do
        {
          if (!*(a2 + v13))
          {
            if (*(v8 + 4 * v13) <= v12)
            {
              v14 = 1.0;
            }

            else
            {
              v14 = 0.0;
            }

            *(v8 + 4 * v13) = v14;
          }

          ++v13;
        }

        while (a3 != v13);
      }
    }

    return v8;
  }

  v15 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v16 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (a3 >= 1)
    {
      v18 = 0;
      do
      {
        if (!*(a2 + v18))
        {
          if (*(v16 + 4 * v18) <= *(v15 + 4 * v18))
          {
            v19 = 1.0;
          }

          else
          {
            v19 = 0.0;
          }

          *(v16 + 4 * v18) = v19;
        }

        ++v18;
      }

      while (a3 != v18);
    }

    goto LABEL_40;
  }

  if (v16)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v15)
  {
LABEL_40:
    operator delete[]();
  }

  return v8;
}

uint64_t sub_1EC30(uint64_t a1)
{
  sub_18068(a1);
  result = (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24));
  if (result)
  {
    v3 = sub_5B88(0x18uLL);
    *v3 = off_1AA288;
    v3[1] = 0;
    *(v3 + 4) = 1065353216;
    return (*(*a1 + 296))(a1);
  }

  return result;
}

void sub_1ECE0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_1ED8C(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          if (v7 >= *(v6 + v8))
          {
            v9 = 1.0;
          }

          else
          {
            v9 = 0.0;
          }

          *(v6 + v8) = v9;
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v11 = 0;
        do
        {
          if (*(v6 + v11) >= v10)
          {
            v12 = 1.0;
          }

          else
          {
            v12 = 0.0;
          }

          *(v6 + v11) = v12;
          v11 += 4;
        }

        while (4 * a2 != v11);
      }
    }

    return v6;
  }

  v13 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v14 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a2 >= 1)
    {
      v16 = 0;
      do
      {
        if (*(v14 + v16) >= *(v13 + v16))
        {
          v17 = 1.0;
        }

        else
        {
          v17 = 0.0;
        }

        *(v14 + v16) = v17;
        v16 += 4;
      }

      while (4 * a2 != v16);
    }

    goto LABEL_34;
  }

  if (v14)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v13)
  {
LABEL_34:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_1F028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!*(a2 + v10))
          {
            if (v9 >= *(v8 + 4 * v10))
            {
              v11 = 1.0;
            }

            else
            {
              v11 = 0.0;
            }

            *(v8 + 4 * v10) = v11;
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a3 >= 1)
      {
        v13 = 0;
        do
        {
          if (!*(a2 + v13))
          {
            if (*(v8 + 4 * v13) >= v12)
            {
              v14 = 1.0;
            }

            else
            {
              v14 = 0.0;
            }

            *(v8 + 4 * v13) = v14;
          }

          ++v13;
        }

        while (a3 != v13);
      }
    }

    return v8;
  }

  v15 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v16 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (a3 >= 1)
    {
      v18 = 0;
      do
      {
        if (!*(a2 + v18))
        {
          if (*(v16 + 4 * v18) >= *(v15 + 4 * v18))
          {
            v19 = 1.0;
          }

          else
          {
            v19 = 0.0;
          }

          *(v16 + 4 * v18) = v19;
        }

        ++v18;
      }

      while (a3 != v18);
    }

    goto LABEL_40;
  }

  if (v16)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v15)
  {
LABEL_40:
    operator delete[]();
  }

  return v8;
}

uint64_t sub_1F2F8(uint64_t a1)
{
  sub_18068(a1);
  result = (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24));
  if (result)
  {
    v3 = sub_5B88(0x18uLL);
    *v3 = off_1AA288;
    v3[1] = 0;
    *(v3 + 4) = 1065353216;
    return (*(*a1 + 296))(a1);
  }

  return result;
}

void sub_1F3A8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

double sub_1F3C8(uint64_t a1)
{
  if ((***(a1 + 16))(*(a1 + 16)) == 0.0)
  {
    return 0.0;
  }

  v2 = (***(a1 + 24))(*(a1 + 24));
  LODWORD(result) = 1.0;
  if (v2 == 0.0)
  {
    return 0.0;
  }

  return result;
}

char *sub_1F454(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (!v6)
    {
      return v6;
    }

    if ((***(a1 + 16))(*(a1 + 16)) != 0.0)
    {
      if (a2 >= 1)
      {
        v7 = 0;
        do
        {
          if (*&v6[v7] == 0.0)
          {
            v8 = 0.0;
          }

          else
          {
            v8 = 1.0;
          }

          *&v6[v7] = v8;
          v7 += 4;
        }

        while (4 * a2 != v7);
      }

      return v6;
    }

    goto LABEL_14;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (!v6)
    {
      return v6;
    }

    if ((***(a1 + 24))(*(a1 + 24)) == 0.0)
    {
LABEL_14:
      if (a2 >= 1)
      {
        bzero(v6, 4 * a2);
      }

      return v6;
    }

    if (a2 >= 1)
    {
      v16 = 0;
      do
      {
        if (*&v6[v16] == 0.0)
        {
          v17 = 0.0;
        }

        else
        {
          v17 = 1.0;
        }

        *&v6[v16] = v17;
        v16 += 4;
      }

      while (4 * a2 != v16);
    }
  }

  else
  {
    v9 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
    v10 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      if (a2 >= 1)
      {
        v12 = a2;
        v13 = v10;
        v14 = v9;
        do
        {
          if (*v13 == 0.0 || (v15 = 1.0, *v14 == 0.0))
          {
            v15 = 0.0;
          }

          *v13++ = v15;
          ++v14;
          --v12;
        }

        while (v12);
      }

      operator delete[]();
    }

    if (v10)
    {
      operator delete[]();
    }

    if (v9)
    {
      operator delete[]();
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1F72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      if ((***(a1 + 16))(*(a1 + 16)) == 0.0)
      {
        if (a3 >= 1)
        {
          v9 = 0;
          do
          {
            if (!*(a2 + v9))
            {
              *(v8 + 4 * v9) = 0;
            }

            ++v9;
          }

          while (a3 != v9);
        }
      }

      else if (a3 >= 1)
      {
        v11 = 0;
        do
        {
          if (!*(a2 + v11))
          {
            if (*(v8 + 4 * v11) == 0.0)
            {
              v12 = 0.0;
            }

            else
            {
              v12 = 1.0;
            }

            *(v8 + 4 * v11) = v12;
          }

          ++v11;
        }

        while (a3 != v11);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      if ((***(a1 + 24))(*(a1 + 24)) == 0.0)
      {
        if (a3 >= 1)
        {
          v10 = 0;
          do
          {
            if (!*(a2 + v10))
            {
              *(v8 + 4 * v10) = 0;
            }

            ++v10;
          }

          while (a3 != v10);
        }
      }

      else if (a3 >= 1)
      {
        v18 = 0;
        do
        {
          if (!*(a2 + v18))
          {
            if (*(v8 + 4 * v18) == 0.0)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = 1.0;
            }

            *(v8 + 4 * v18) = v19;
          }

          ++v18;
        }

        while (a3 != v18);
      }
    }

    return v8;
  }

  v13 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v14 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a3 >= 1)
    {
      v16 = 0;
      do
      {
        if (!*(a2 + v16))
        {
          if (*(v14 + 4 * v16) == 0.0 || (v17 = 1.0, *(v13 + 4 * v16) == 0.0))
          {
            v17 = 0.0;
          }

          *(v14 + 4 * v16) = v17;
        }

        ++v16;
      }

      while (a3 != v16);
    }

    goto LABEL_45;
  }

  if (v14)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v13)
  {
LABEL_45:
    operator delete[]();
  }

  return v8;
}

uint64_t sub_1FA6C(uint64_t a1)
{
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && (***(a1 + 16))(*(a1 + 16)) == 0.0 || (*(**(a1 + 24) + 40))(*(a1 + 24)) && (***(a1 + 24))(*(a1 + 24)) == 0.0)
  {
    return 1;
  }

  return sub_19628(a1);
}

void sub_1FB68(uint64_t a1)
{
  sub_18068(a1);
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)))
  {
    if ((***(a1 + 16))(*(a1 + 16)) == 0.0)
    {
      v2 = sub_5B88(0x18uLL);
      *v2 = off_1AA288;
      v2[1] = 0;
      *(v2 + 4) = 0;
    }

    else
    {
      if (!(*(**(a1 + 24) + 40))(*(a1 + 24)))
      {
        return;
      }

      v2 = sub_5B88(0x18uLL);
      v4 = (**a1)(a1);
      *v2 = off_1AA288;
      v2[1] = 0;
      *(v2 + 4) = v4;
    }

    (*(*a1 + 296))(a1, v2);
  }

  else if ((*(**(a1 + 24) + 40))(*(a1 + 24)))
  {
    if ((***(a1 + 24))(*(a1 + 24)) == 0.0)
    {
      v3 = sub_5B88(0x18uLL);
      *v3 = off_1AA288;
      v3[1] = 0;
      *(v3 + 4) = 0;
      (*(*a1 + 296))(a1);
    }
  }
}

void sub_1FD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    free(v14);
  }

  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

float sub_1FDFC(uint64_t a1)
{
  v2 = 1.0;
  if ((***(a1 + 16))(*(a1 + 16)) == 0.0 && (***(a1 + 24))(*(a1 + 24)) == 0.0)
  {
    return 0.0;
  }

  return v2;
}

char *sub_1FE90(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (!v6)
    {
      return v6;
    }

    if ((***(a1 + 16))(*(a1 + 16)) == 0.0)
    {
      if (a2 >= 1)
      {
        v7 = 0;
        do
        {
          if (*&v6[v7] == 0.0)
          {
            v8 = 0.0;
          }

          else
          {
            v8 = 1.0;
          }

          *&v6[v7] = v8;
          v7 += 4;
        }

        while (4 * a2 != v7);
      }

      return v6;
    }

    goto LABEL_14;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (!v6)
    {
      return v6;
    }

    if ((***(a1 + 24))(*(a1 + 24)) != 0.0)
    {
LABEL_14:
      if (a2 >= 1)
      {
        memset_pattern16(v6, &unk_162E30, 4 * a2);
      }

      return v6;
    }

    if (a2 >= 1)
    {
      v16 = 0;
      do
      {
        if (*&v6[v16] == 0.0)
        {
          v17 = 0.0;
        }

        else
        {
          v17 = 1.0;
        }

        *&v6[v16] = v17;
        v16 += 4;
      }

      while (4 * a2 != v16);
    }
  }

  else
  {
    v9 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
    v10 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      if (a2 >= 1)
      {
        v12 = a2;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = 1.0;
          if (*v13 == 0.0 && *v14 == 0.0)
          {
            v15 = 0.0;
          }

          *v13++ = v15;
          ++v14;
          --v12;
        }

        while (v12);
      }

      operator delete[]();
    }

    if (v10)
    {
      operator delete[]();
    }

    if (v9)
    {
      operator delete[]();
    }

    return 0;
  }

  return v6;
}

uint64_t sub_20170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      if ((***(a1 + 16))(*(a1 + 16)) == 0.0)
      {
        if (a3 >= 1)
        {
          v11 = 0;
          do
          {
            if (!*(a2 + v11))
            {
              if (*(v8 + 4 * v11) == 0.0)
              {
                v12 = 0.0;
              }

              else
              {
                v12 = 1.0;
              }

              *(v8 + 4 * v11) = v12;
            }

            ++v11;
          }

          while (a3 != v11);
        }
      }

      else if (a3 >= 1)
      {
        v9 = 0;
        do
        {
          if (!*(a2 + v9))
          {
            *(v8 + 4 * v9) = 1065353216;
          }

          ++v9;
        }

        while (a3 != v9);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      if ((***(a1 + 24))(*(a1 + 24)) == 0.0)
      {
        if (a3 >= 1)
        {
          v18 = 0;
          do
          {
            if (!*(a2 + v18))
            {
              if (*(v8 + 4 * v18) == 0.0)
              {
                v19 = 0.0;
              }

              else
              {
                v19 = 1.0;
              }

              *(v8 + 4 * v18) = v19;
            }

            ++v18;
          }

          while (a3 != v18);
        }
      }

      else if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!*(a2 + v10))
          {
            *(v8 + 4 * v10) = 1065353216;
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }

    return v8;
  }

  v13 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v14 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a3 >= 1)
    {
      v16 = 0;
      do
      {
        if (!*(a2 + v16))
        {
          v17 = 1.0;
          if (*(v14 + 4 * v16) == 0.0 && *(v13 + 4 * v16) == 0.0)
          {
            v17 = 0.0;
          }

          *(v14 + 4 * v16) = v17;
        }

        ++v16;
      }

      while (a3 != v16);
    }

    goto LABEL_45;
  }

  if (v14)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v13)
  {
LABEL_45:
    operator delete[]();
  }

  return v8;
}

uint64_t sub_204B8(uint64_t a1)
{
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && (***(a1 + 16))(*(a1 + 16)) != 0.0 || (*(**(a1 + 24) + 40))(*(a1 + 24)) && (***(a1 + 24))(*(a1 + 24)) != 0.0)
  {
    return 1;
  }

  return sub_19628(a1);
}

void sub_205B4(uint64_t a1)
{
  sub_18068(a1);
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)))
  {
    if ((***(a1 + 16))(*(a1 + 16)) != 0.0)
    {
      goto LABEL_9;
    }

    if (!(*(**(a1 + 24) + 40))(*(a1 + 24)))
    {
      return;
    }

    if ((***(a1 + 24))(*(a1 + 24)) == 0.0)
    {
      v2 = sub_5B88(0x18uLL);
      v3 = 0.0;
    }

    else
    {
LABEL_9:
      v2 = sub_5B88(0x18uLL);
      v3 = 1.0;
    }

    *v2 = off_1AA288;
    *(v2 + 1) = 0;
    v2[4] = v3;
    (*(*a1 + 296))(a1);
  }

  else if ((*(**(a1 + 24) + 40))(*(a1 + 24)))
  {
    if ((***(a1 + 24))(*(a1 + 24)) != 0.0)
    {
      v4 = sub_5B88(0x18uLL);
      *v4 = off_1AA288;
      v4[1] = 0;
      *(v4 + 4) = 1065353216;
      (*(*a1 + 296))(a1);
    }
  }
}

void sub_207C4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_20868(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          *(v6 + v8) = (*(v6 + v8) & v7);
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v10 = 0;
        do
        {
          *(v6 + v10) = (*(v6 + v10) & v9);
          v10 += 4;
        }

        while (4 * a2 != v10);
      }
    }

    return v6;
  }

  v11 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v12 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (a2 >= 1)
    {
      v14 = 0;
      do
      {
        *(v12 + v14) = (*(v11 + v14) & *(v12 + v14));
        v14 += 4;
      }

      while (4 * a2 != v14);
    }

    goto LABEL_25;
  }

  if (v12)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v11)
  {
LABEL_25:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_20B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!*(a2 + v10))
          {
            *(v8 + 4 * v10) = (*(v8 + 4 * v10) & v9);
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a3 >= 1)
      {
        v12 = 0;
        do
        {
          if (!*(a2 + v12))
          {
            *(v8 + 4 * v12) = (*(v8 + 4 * v12) & v11);
          }

          ++v12;
        }

        while (a3 != v12);
      }
    }

    return v8;
  }

  v13 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v14 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a3 >= 1)
    {
      v16 = 0;
      do
      {
        if (!*(a2 + v16))
        {
          *(v14 + 4 * v16) = (*(v13 + 4 * v16) & *(v14 + 4 * v16));
        }

        ++v16;
      }

      while (a3 != v16);
    }

    goto LABEL_31;
  }

  if (v14)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v13)
  {
LABEL_31:
    operator delete[]();
  }

  return v8;
}

uint64_t sub_20DD4(uint64_t a1)
{
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && (***(a1 + 16))(*(a1 + 16)) == 0.0 || (*(**(a1 + 24) + 40))(*(a1 + 24)) && (***(a1 + 24))(*(a1 + 24)) == 0.0)
  {
    return 1;
  }

  return sub_19628(a1);
}

void sub_20ED0(uint64_t a1)
{
  sub_18068(a1);
  v2 = (a1 + 16);
  v3 = a1 + 24;
  if ((*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24)))
  {
    goto LABEL_2;
  }

  if ((*(**v2 + 40))() && (***v2)() == 0.0 || (*(**v3 + 40))() && (***v3)() == 0.0)
  {
    v4 = sub_5B88(0x18uLL);
    *v4 = off_1AA288;
    v4[1] = 0;
    *(v4 + 4) = 0;
    (*(*a1 + 296))(a1);
  }

  else
  {
    if ((*(**v2 + 40))() && (***v2)() == -1.0)
    {
LABEL_2:
      v2 = (a1 + 24);
LABEL_3:
      (*(*a1 + 296))(a1, *v2);
      return;
    }

    if ((*(**v3 + 40))() && (***v3)() == -1.0)
    {
      goto LABEL_3;
    }
  }
}

void sub_21148(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_211EC(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          *(v6 + v8) = (*(v6 + v8) | v7);
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v10 = 0;
        do
        {
          *(v6 + v10) = (*(v6 + v10) | v9);
          v10 += 4;
        }

        while (4 * a2 != v10);
      }
    }

    return v6;
  }

  v11 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v12 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (a2 >= 1)
    {
      v14 = 0;
      do
      {
        *(v12 + v14) = (*(v11 + v14) | *(v12 + v14));
        v14 += 4;
      }

      while (4 * a2 != v14);
    }

    goto LABEL_25;
  }

  if (v12)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v11)
  {
LABEL_25:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_21488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!*(a2 + v10))
          {
            *(v8 + 4 * v10) = (*(v8 + 4 * v10) | v9);
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a3 >= 1)
      {
        v12 = 0;
        do
        {
          if (!*(a2 + v12))
          {
            *(v8 + 4 * v12) = (*(v8 + 4 * v12) | v11);
          }

          ++v12;
        }

        while (a3 != v12);
      }
    }

    return v8;
  }

  v13 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v14 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a3 >= 1)
    {
      v16 = 0;
      do
      {
        if (!*(a2 + v16))
        {
          *(v14 + 4 * v16) = (*(v13 + 4 * v16) | *(v14 + 4 * v16));
        }

        ++v16;
      }

      while (a3 != v16);
    }

    goto LABEL_31;
  }

  if (v14)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v13)
  {
LABEL_31:
    operator delete[]();
  }

  return v8;
}

uint64_t sub_21758(uint64_t a1)
{
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && (***(a1 + 16))(*(a1 + 16)) == -1.0 || (*(**(a1 + 24) + 40))(*(a1 + 24)) && (***(a1 + 24))(*(a1 + 24)) == -1.0)
  {
    return 1;
  }

  return sub_19628(a1);
}

void sub_2185C(uint64_t a1)
{
  sub_18068(a1);
  v2 = (a1 + 16);
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && (***v2)() == -1.0)
  {
    v3 = sub_5B88(0x18uLL);
    (***(a1 + 24))(*(a1 + 24));
LABEL_7:
    *v3 = off_1AA288;
    *(v3 + 1) = 0;
    v3[4] = v4;
    (*(*a1 + 296))(a1, v3);
    return;
  }

  v5 = a1 + 24;
  if ((*(**(a1 + 24) + 40))(*(a1 + 24)) && (***v5)() == -1.0)
  {
    v3 = sub_5B88(0x18uLL);
    v4 = (***v2)();
    goto LABEL_7;
  }

  if ((*(**v2 + 40))() && (***v2)() == 0.0)
  {
    v2 = (a1 + 24);
LABEL_13:
    (*(*a1 + 296))(a1, *v2);
    return;
  }

  if ((*(**v5 + 40))() && (***v5)() == 0.0)
  {
    goto LABEL_13;
  }
}

void sub_21B08(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    free(v14);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_21BCC(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v5 = **(a1 + 24);
  if (v4)
  {
    v6 = (*(v5 + 8))();
    if (v6)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a2 >= 1)
      {
        v8 = 0;
        do
        {
          *(v6 + v8) = (*(v6 + v8) ^ v7);
          v8 += 4;
        }

        while (4 * a2 != v8);
      }
    }

    return v6;
  }

  if ((*(v5 + 24))())
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
    if (v6)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a2 >= 1)
      {
        v10 = 0;
        do
        {
          *(v6 + v10) = (*(v6 + v10) ^ v9);
          v10 += 4;
        }

        while (4 * a2 != v10);
      }
    }

    return v6;
  }

  v11 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v12 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2);
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (a2 >= 1)
    {
      v14 = 0;
      do
      {
        *(v12 + v14) = (*(v11 + v14) ^ *(v12 + v14));
        v14 += 4;
      }

      while (4 * a2 != v14);
    }

    goto LABEL_25;
  }

  if (v12)
  {
    operator delete[]();
  }

  v6 = 0;
  if (v11)
  {
LABEL_25:
    operator delete[]();
  }

  return v6;
}

uint64_t sub_21E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  v7 = **(a1 + 24);
  if (v6)
  {
    v8 = (*(v7 + 16))();
    if (v8)
    {
      (***(a1 + 16))(*(a1 + 16));
      if (a3 >= 1)
      {
        v10 = 0;
        do
        {
          if (!*(a2 + v10))
          {
            *(v8 + 4 * v10) = (*(v8 + 4 * v10) ^ v9);
          }

          ++v10;
        }

        while (a3 != v10);
      }
    }

    return v8;
  }

  if ((*(v7 + 24))())
  {
    v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
    if (v8)
    {
      (***(a1 + 24))(*(a1 + 24));
      if (a3 >= 1)
      {
        v12 = 0;
        do
        {
          if (!*(a2 + v12))
          {
            *(v8 + 4 * v12) = (*(v8 + 4 * v12) ^ v11);
          }

          ++v12;
        }

        while (a3 != v12);
      }
    }

    return v8;
  }

  v13 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v14 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3);
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a3 >= 1)
    {
      v16 = 0;
      do
      {
        if (!*(a2 + v16))
        {
          *(v14 + 4 * v16) = (*(v13 + 4 * v16) ^ *(v14 + 4 * v16));
        }

        ++v16;
      }

      while (a3 != v16);
    }

    goto LABEL_31;
  }

  if (v14)
  {
    operator delete[]();
  }

  v8 = 0;
  if (v13)
  {
LABEL_31:
    operator delete[]();
  }

  return v8;
}

void sub_22138(void **a1)
{
  sub_18068(a1);
  v2 = a1 + 2;
  if ((*(*a1[2] + 40))(a1[2]) && (***v2)() == 0.0)
  {
    v2 = a1 + 3;
LABEL_6:
    ((*a1)[37])(a1, *v2);
    return;
  }

  if ((*(*a1[3] + 40))(a1[3]) && (**a1[3])(a1[3]) == 0.0)
  {
    goto LABEL_6;
  }
}

void sub_22254(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_22274(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));
  v2 = *(**(a1 + 24) + 304);

  return v2();
}

void *sub_22388(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v5 = (*(**(a1 + 24) + 112))(*(a1 + 24), a2);
  v6 = sub_5B88(0x20uLL);
  sub_228A8(v6, v4, v5);
  return v6;
}

void sub_2244C(_Unwind_Exception *exception_object, int a2)
{
  v6 = v4;
  if (v6)
  {
    free(v6);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    if (v2)
    {
      (*(*v2 + 152))(v2);
    }

    if (v3)
    {
      (*(*v3 + 152))(v3);
    }

    __cxa_end_catch();
    JUMPOUT(0x22434);
  }

  _Unwind_Resume(exception_object);
}

void *sub_22500(uint64_t a1)
{
  sub_18068(a1);
  result = *(a1 + 24);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && (v4 = *(a1 + 8)) != 0)
      {
        v5 = (***(a1 + 16))(*(a1 + 16)) == 0.0;
        v6.n128_u64[0] = 0;
        if (!v5)
        {
          v6.n128_f32[0] = 1.0;
        }

        v7 = *(*v3 + 328);

        return v7(v3, v4, v6);
      }

      else
      {
        result = (*(*v3 + 336))(v3);
        if (result)
        {
          v9 = *(a1 + 8);
          v10 = *(*v3 + 328);
          v8.n128_u32[0] = 1.0;

          return v10(v3, v9, v8);
        }
      }
    }
  }

  return result;
}

uint64_t *sub_226CC(uint64_t *a1, uint64_t *a2, const double *a3)
{
  v5 = sub_18368(a1, a2, a3);
  *v5 = off_1A96C8;
  v6 = v5[3];
  {
    LODWORD(xmmword_1EF218) = 28;
    v9 = vld1q_dup_f64(a3);
    v8 = (a3 + 1);
    *(&xmmword_1EF218 + 8) = vsubq_s64(*v8, v9);
    exception = __cxa_allocate_exception(0x18uLL);
    v11 = qword_1EF228;
    *exception = xmmword_1EF218;
    exception[2] = v11;
  }

  return a1;
}

void *sub_227CC(void *a1)
{
  *a1 = off_1AA528;
  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 152))(v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(*v4 + 152))(v4);
  }

  *v3 = 0;
  v3[1] = 0;
  *a1 = off_1A5580;
  a1[1] = 0;
  return a1;
}

void sub_22888(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

void *sub_228A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18500(a1, a2, a3);
  *v4 = off_1A96C8;
  v5 = v4[3];
  {
    LODWORD(xmmword_1EF218) = 28;
    *(&xmmword_1EF218 + 1) = -1;
    qword_1EF228 = -1;
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = qword_1EF228;
    *exception = xmmword_1EF218;
    exception[2] = v8;
  }

  return a1;
}

uint64_t sub_229E4(uint64_t a1, int a2)
{
  v2 = 16;
  if (!a2)
  {
    v2 = 24;
  }

  return (***(a1 + v2))(*(a1 + v2));
}

uint64_t sub_22A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 8))(a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = (*(**(a1 + 16) + 24))(*(a1 + 16));
    v8 = **(a1 + 24);
    if (v7)
    {
      v9 = (*(v8 + 8))();
      if (v9)
      {
        (***(a1 + 16))(*(a1 + 16));
        if (a3 >= 1)
        {
          v11 = 0;
          do
          {
            if (v6[v11] != 0.0)
            {
              *(v9 + v11 * 4) = v10;
            }

            ++v11;
          }

          while (a3 != v11);
        }
      }
    }

    else
    {
      v12 = (*(v8 + 24))();
      v13 = (*(**(a1 + 16) + 8))(*(a1 + 16), a3);
      v14 = v13;
      if (!v12)
      {
        v17 = (*(**(a1 + 24) + 8))(*(a1 + 24), a3);
        if (v14)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          if (a3 >= 1)
          {
            v19 = v6;
            v20 = v17;
            v21 = v14;
            v22 = a3;
            do
            {
              if (*v19 != 0.0)
              {
                *v21 = *v20;
              }

              ++v21;
              ++v20;
              ++v19;
              --v22;
            }

            while (v22);
          }

          operator delete[]();
        }

        operator delete[]();
      }

      if (v13)
      {
        (***(a1 + 24))(*(a1 + 24));
        if (a3 >= 1)
        {
          v16 = 0;
          do
          {
            if (v6[v16] == 0.0)
            {
              v14[v16] = v15;
            }

            ++v16;
          }

          while (a3 != v16);
        }
      }
    }

    operator delete[]();
  }

  return 0;
}

uint64_t sub_22CF0(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (!*a2)
      {
        *a2 = -2;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_22D20(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (!*a2)
      {
        *a2 = -2;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_22D50(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = a3;
  v7 = (*(*a2 + 16))(a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    v9 = (*(**(a1 + 16) + 24))(*(a1 + 16));
    v10 = **(a1 + 24);
    if (v9)
    {
      v11 = (*(v10 + 16))();
      if (v11)
      {
        (***(a1 + 16))(*(a1 + 16));
        if (a4 >= 1)
        {
          v13 = 0;
          do
          {
            if (!v5[v13] && v8[v13] != 0.0)
            {
              *(v11 + 4 * v13) = v12;
            }

            ++v13;
          }

          while (a4 != v13);
        }
      }
    }

    else
    {
      v14 = (*(v10 + 24))();
      v15 = (*(**(a1 + 16) + 16))(*(a1 + 16), v5, a4);
      v16 = v15;
      if (!v14)
      {
        v19 = (*(**(a1 + 24) + 16))(*(a1 + 24), v5, a4);
        if (v16)
        {
          v20 = v19 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          if (a4 >= 1)
          {
            v21 = v8;
            v22 = v19;
            v23 = v16;
            v24 = a4;
            do
            {
              v25 = *v5++;
              if (!v25 && *v21 != 0.0)
              {
                *v23 = *v22;
              }

              ++v23;
              ++v22;
              ++v21;
              --v24;
            }

            while (v24);
          }

          operator delete[]();
        }

        operator delete[]();
      }

      if (v15)
      {
        (***(a1 + 24))(*(a1 + 24));
        if (a4 >= 1)
        {
          v18 = 0;
          do
          {
            if (!v5[v18] && v8[v18] == 0.0)
            {
              v16[v18] = v17;
            }

            ++v18;
          }

          while (a4 != v18);
        }
      }
    }

    operator delete[]();
  }

  return 0;
}

uint64_t sub_23050(uint64_t a1, uint64_t a2, float a3)
{
  if (a3 == 0.0)
  {
    v3 = 24;
  }

  else
  {
    v3 = 16;
  }

  v4 = *(a1 + v3);
  *(a1 + v3) = 0;
  return (*(*a2 + 64))(a2, *(a1 + 8), v4);
}

void *sub_23144(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v5 = (*(**(a1 + 24) + 112))(*(a1 + 24), a2);
  v6 = sub_5B88(0x20uLL);
  sub_18500(v6, v4, v5);
  *v6 = off_1A9820;
  return v6;
}

void sub_23224(_Unwind_Exception *exception_object, int a2)
{
  v6 = v4;
  if (v6)
  {
    free(v6);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    if (v2)
    {
      (*(*v2 + 152))(v2);
    }

    if (v3)
    {
      (*(*v3 + 152))(v3);
    }

    __cxa_end_catch();
    JUMPOUT(0x2320CLL);
  }

  _Unwind_Resume(exception_object);
}

void *sub_232D8(void *a1)
{
  sub_18068(a1);
  v2 = a1[1];
  {
    v4 = *(*a1 + 272);

    return v4(a1, 27, -1, -1);
  }

  return result;
}

BOOL sub_233F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4 == a2)
  {
    if (a2)
    {
      (*(*v4 + 152))(*(a1 + 16));
    }

    *(a1 + 16) = a3;
    *(a3 + 8) = a1;
  }

  return v4 == a2;
}

float *sub_234E8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    (*(*result + 96))(result);
    result = (*(**(a1 + 16) + 40))(*(a1 + 16));
    if (result)
    {
      result = (*(**(a1 + 16) + 24))(*(a1 + 16));
      if (!result)
      {
        v3 = (***(a1 + 16))(*(a1 + 16));
        v4 = *(a1 + 16);
        *(a1 + 16) = 0;
        result = sub_5B88(0x18uLL);
        result[4] = v3;
        *(a1 + 16) = result;
        *result = off_1AA288;
        *(result + 1) = a1;
        if (v4)
        {
          return (*(*v4 + 152))(v4);
        }
      }
    }
  }

  return result;
}

void sub_23620(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *(v1 + 16);
  if (v3)
  {
    (*(*v3 + 152))(v3);
  }

  *(v1 + 16) = v2;

  __cxa_end_catch();
}

void sub_23688(void **a1)
{
  v2 = (*(*a1[2] + 104))(a1[2]);
  v3 = (&off_1EDAC0)[((*a1)[36])(a1)];
  strlen(v2);
  strlen(v3);
  operator new[]();
}

uint64_t sub_2377C(void **a1)
{
  (*(*a1[2] + 120))(a1[2]);
  v2 = ((*a1)[36])(a1);
  return ((*a1)[23])(a1, v2);
}

uint64_t sub_238D4(void **a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!sub_8C10(*(*a1 - 1), *(*a2 - 8)))
  {
    return 1;
  }

  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  if (((*a1)[5])(a1) && (*(*v5 + 40))(v5))
  {
    v6 = (**a1)(a1);
    return v6 != (**v5)(v5);
  }

  v8 = ((*a1)[5])(a1);
  if (v8 != (*(*v5 + 40))(v5))
  {
    return 1;
  }

  v9 = *(*a1[2] + 128);

  return v9();
}

uint64_t sub_23AF0(void **a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_8C10(*(*a1 - 1), *(*a2 - 8));
  if (result)
  {
    if (result)
    {
      v5 = result;
      if (((*a1)[5])(a1) && (*(*v5 + 40))(v5))
      {
        v6 = (**a1)(a1);
        return v6 == (**v5)(v5);
      }

      else
      {
        v7 = ((*a1)[5])(a1);
        if (v7 == (*(*v5 + 40))(v5))
        {
          v8 = *(*a1[2] + 136);

          return v8();
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

void sub_23D10(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_23D58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23D74(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_23DBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23DD8(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_23E20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23E3C(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_23E84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EA0(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_23EE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F04(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_23F4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F68(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_23FB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23FCC(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24014(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24030(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24078(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24094(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_240DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_240F8(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24140(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415C(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_241A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_241C0(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24208(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24224(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_2426C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24288(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_242D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_242EC(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24334(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24350(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24398(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_243B4(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_243FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24418(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24460(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2447C(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_244C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_244E0(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24528(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24544(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_2458C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_245A8(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_245F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2460C(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24654(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24670(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_246B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_246D4(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_2471C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24738(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24780(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2479C(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_247E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24800(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_24848(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24860(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = (*(*v2 + 40))(v2) & 1;
  }

  else
  {
    result = 1;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return (*(*v4 + 40))(*(a1 + 24)) & 1;
  }

  return result;
}

BOOL sub_248F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = 1;
  if (!v4 || !(*(*v4 + 56))(v4, a2))
  {
    v5 = *(a1 + 24);
    if (!v5 || !(*(*v5 + 56))(v5, a2))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2498C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  if (v5 != a2)
  {
    v6 = (a1 + 24);
    v5 = *(a1 + 24);
    if (v5 != a2)
    {
      return 0;
    }
  }

  if (a2)
  {
    (*(*v5 + 152))(v5);
  }

  *v6 = a3;
  *(a3 + 8) = a1;
  return 1;
}

uint64_t sub_24A14(uint64_t a1)
{
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  v2 = *(**(a1 + 24) + 72);

  return v2();
}

uint64_t sub_24AA8(uint64_t a1)
{
  (*(**(a1 + 16) + 80))(*(a1 + 16));
  v2 = *(**(a1 + 24) + 80);

  return v2();
}

uint64_t sub_24B3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    (*(*v3 + 88))(v3, a2);
  }

  result = *(a1 + 24);
  if (result)
  {
    v5 = *(*result + 88);

    return v5();
  }

  return result;
}

float *sub_24BD8(uint64_t a1)
{
  (*(**(a1 + 16) + 96))(*(a1 + 16));
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)))
  {
    if (!(*(**(a1 + 16) + 24))(*(a1 + 16)))
    {
      v2 = (***(a1 + 16))(*(a1 + 16));
      v3 = *(a1 + 16);
      *(a1 + 16) = 0;
      v4 = sub_5B88(0x18uLL);
      v4[4] = v2;
      *(a1 + 16) = v4;
      *v4 = off_1AA288;
      *(v4 + 1) = a1;
      if (v3)
      {
        (*(*v3 + 152))(v3);
      }
    }
  }

  (*(**(a1 + 24) + 96))(*(a1 + 24));
  result = (*(**(a1 + 24) + 40))(*(a1 + 24));
  if (result)
  {
    result = (*(**(a1 + 24) + 24))(*(a1 + 24));
    if (!result)
    {
      v6 = (***(a1 + 24))(*(a1 + 24));
      v7 = *(a1 + 24);
      *(a1 + 24) = 0;
      result = sub_5B88(0x18uLL);
      result[4] = v6;
      *(a1 + 24) = result;
      *result = off_1AA288;
      *(result + 1) = a1;
      if (v7)
      {
        return (*(*v7 + 152))(v7);
      }
    }
  }

  return result;
}

void sub_24E18(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *(v1 + 24);
  if (v3)
  {
    (*(*v3 + 152))(v3);
  }

  *(v1 + 24) = v2;

  __cxa_end_catch();
}

void sub_24EC8(void **a1)
{
  v2 = (*(*a1[2] + 104))(a1[2]);
  v3 = (*(*a1[3] + 104))(a1[3]);
  v4 = (&off_1EDAC0)[((*a1)[36])(a1)];
  strlen(v2);
  strlen(v3);
  strlen(v4);
  operator new[]();
}

uint64_t sub_25020(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 120))(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    (*(*v3 + 120))(v3);
  }

  v4 = (*(*a1 + 288))(a1);
  return (*(*a1 + 184))(a1, v4);
}

BOOL sub_251E8(void **a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!sub_8C10(*(*a1 - 1), *(*a2 - 8)))
  {
    return 1;
  }

  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  if (((*a1)[5])(a1) && (*(*v5 + 40))(v5))
  {
    v6 = (**a1)(a1);
    v7 = v6 == (**v5)(v5);
    return !v7;
  }

  v8 = ((*a1)[5])(a1);
  if (v8 != (*(*v5 + 40))(v5) || (*(*a1[2] + 128))(a1[2], v5[2]))
  {
    return 1;
  }

  v7 = (*(*a1[3] + 128))(a1[3], v5[3]) == 0;
  return !v7;
}

uint64_t sub_2541C(void **a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_8C10(*(*a1 - 1), *(*a2 - 8));
  if (result)
  {
    if (result)
    {
      v5 = result;
      if (((*a1)[5])(a1) && (*(*v5 + 40))(v5))
      {
        v6 = (**a1)(a1);
        return v6 == (**v5)(v5);
      }

      else
      {
        v7 = ((*a1)[5])(a1);
        if (v7 == (*(*v5 + 40))(v5))
        {
          result = (*(*a1[2] + 136))(a1[2], v5[2]);
          if (result)
          {
            return (*(*a1[3] + 136))(a1[3], v5[3]) != 0;
          }
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

void sub_25658(void *a1)
{
  sub_27A7C(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_256A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256B8(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 1;
  }

  v2 = *(a1 + 24);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = *(*(a1 + 32) + 8 * v3);
    if (v4)
    {
      result = (*(*v4 + 40))(v4) & 1;
      v2 = *(a1 + 24);
    }

    else
    {
      result = 1;
    }

    ++v3;
  }

  while (v3 < v2 && result);
  return result;
}

uint64_t sub_25754(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(*(a1 + 32) + 8 * v5);
    if (v6)
    {
      break;
    }

LABEL_7:
    if (++v5 >= v3)
    {
      return 0;
    }
  }

  if (!(*(*v6 + 56))(v6, a2))
  {
    v3 = *(a1 + 24);
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_257F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 8 * v5;
  while (1)
  {
    v9 = *(v3 + v7);
    if (v9 == a2)
    {
      break;
    }

    v7 += 8;
    if (v8 == v7)
    {
      return 0;
    }
  }

  if (a2)
  {
    (*(*v9 + 152))(v9);
    v3 = *(a1 + 32);
  }

  *(v3 + v7) = a3;
  *(*(*(a1 + 32) + v7) + 8) = a1;
  return 1;
}

uint64_t sub_258AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32))
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4 >= 1)
    {
      for (i = 0; i < v4; ++i)
      {
        result = *(*(v3 + 32) + 8 * i);
        if (result)
        {
          result = (*(*result + 72))(result, a2, a3);
          v4 = *(v3 + 24);
        }
      }
    }
  }

  return result;
}

uint64_t sub_25940(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32))
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4 >= 1)
    {
      for (i = 0; i < v4; ++i)
      {
        result = *(*(v3 + 32) + 8 * i);
        if (result)
        {
          result = (*(*result + 80))(result, a2, a3);
          v4 = *(v3 + 24);
        }
      }
    }
  }

  return result;
}

uint64_t sub_259D4(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    v2 = result;
    v3 = *(result + 24);
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        result = *(*(v2 + 32) + 8 * i);
        if (result)
        {
          result = (*(*result + 88))(result, a2);
          v3 = *(v2 + 24);
        }
      }
    }
  }

  return result;
}

void sub_25A60(uint64_t a1)
{
  v2 = (*(*a1 + 288))(a1);
  v3 = strlen((&off_1EDAC0)[v2]) + 3;
  v4 = *(a1 + 24);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFF0);
  if (v5 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v5;
  }

  bzero(&v11 - ((v5 + 15) & 0xFFFFFFFF0), v7);
  if (v4 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a1 + 32) + 8 * v8);
      v10 = (*(*v9 + 104))(v9);
      v3 += strlen(v10) + 2;
      *&v6[8 * v8++] = v10;
    }

    while (v8 < *(a1 + 24));
  }

  operator new[]();
}

void sub_25DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(exception_object);
    v19 = *v14;
    v20 = *(v14 + 2);
    if (v13)
    {
      v15 = *(v12 + 24);
      if (v15 >= 1)
      {
        for (i = 0; i < v15; ++i)
        {
          v17 = *(v13 + 8 * i);
          if (v17)
          {
            (*(*v17 + 152))(v17);
            v15 = *(v12 + 24);
          }
        }
      }

      operator delete[]();
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v19;
    exception[2] = v20;
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_25E98(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (!a1)
    {
      __cxa_bad_typeid();
    }

    if (!sub_8C10(*(*a1 - 8), *(*a2 - 8)))
    {
      return 1;
    }

    if (!v4)
    {
      return 1;
    }

    v5 = v4;
    if (*(a1 + 6) != *(v4 + 6) || (a1[4] == 0) != (v4[4] == 0))
    {
      return 1;
    }

    if ((*(*a1 + 40))(a1) && (*(*v5 + 40))(v5))
    {
      v6 = (**a1)(a1);
      return v6 != (**v5)(v5);
    }

    v8 = (*(*a1 + 40))(a1);
    if (v8 != (*(*v5 + 40))(v5))
    {
      return 1;
    }

    if (a1[4])
    {
      v9 = *(a1 + 6);
      if (v9 >= 1)
      {
        v10 = 0;
        while (1)
        {
          v11 = *(a1[4] + 8 * v10);
          if ((v11 == 0) != (*(v5[4] + 8 * v10) == 0))
          {
            break;
          }

          if (v11)
          {
            if ((*(*v11 + 128))(v11))
            {
              return 1;
            }

            v9 = *(a1 + 6);
          }

          result = 0;
          if (++v10 >= v9)
          {
            return result;
          }
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2612C(uint64_t a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_8C10(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    if (result)
    {
      v5 = result;
      if (*(a1 + 24) != *(result + 24) || (*(a1 + 32) == 0) != (*(result + 32) == 0))
      {
        return 0;
      }

      if ((*(*a1 + 40))(a1) && (*(*v5 + 40))(v5))
      {
        v6 = (**a1)(a1);
        return v6 == (**v5)(v5);
      }

      v7 = (*(*a1 + 40))(a1);
      if (v7 != (*(*v5 + 40))(v5))
      {
        return 0;
      }

      if (*(a1 + 32))
      {
        v8 = *(a1 + 24);
        if (v8 >= 1)
        {
          v9 = 0;
          while (1)
          {
            v10 = *(*(a1 + 32) + 8 * v9);
            if ((v10 == 0) != (*(v5[4] + 8 * v9) == 0))
            {
              break;
            }

            if (v10)
            {
              if ((*(*v10 + 128))(v10))
              {
                return 0;
              }

              v8 = *(a1 + 24);
            }

            ++v9;
            result = 1;
            if (v9 >= v8)
            {
              return result;
            }
          }

          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

void sub_263C4(void *a1)
{
  sub_27B78(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_2640C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_26428(void *a1)
{
  sub_27B78(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_26470(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_264F0(void *a1)
{
  sub_27B78(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_26538(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_26554(void *a1)
{
  sub_27B78(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_2659C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_26600(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = 1;
  if (!v4 || !(*(*v4 + 56))(v4, a2))
  {
    v5 = *(a1 + 24);
    if (!v5 || !(*(*v5 + 56))(v5, a2))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  if (v5 != a2)
  {
    v6 = (a1 + 24);
    v5 = *(a1 + 24);
    if (v5 != a2)
    {
      return 0;
    }
  }

  if (a2)
  {
    (*(*v5 + 152))(v5);
  }

  *v6 = a3;
  *(a3 + 8) = a1;
  return 1;
}

uint64_t sub_26720(uint64_t a1)
{
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  v2 = *(**(a1 + 24) + 72);

  return v2();
}

uint64_t sub_267B4(uint64_t a1)
{
  (*(**(a1 + 16) + 80))(*(a1 + 16));
  v2 = *(**(a1 + 24) + 80);

  return v2();
}

uint64_t sub_26848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    (*(*v3 + 88))(v3, a2);
  }

  result = *(a1 + 24);
  if (result)
  {
    v5 = *(*result + 88);

    return v5();
  }

  return result;
}

void sub_268E4(void **a1)
{
  v2 = (*(*a1[2] + 104))(a1[2]);
  v3 = (*(*a1[3] + 104))(a1[3]);
  v4 = (&off_1EDA00)[((*a1)[36])(a1)];
  v5 = a1[2];
  if (v5)
  {
  }

  v6 = a1[3];
  if (v6)
  {
  }

  strlen(v2);
  strlen(v3);
  strlen(v4);
  operator new[]();
}

uint64_t sub_26B3C(void **a1)
{
  v2 = (*(*a1[2] + 120))(a1[2]);
  v3 = (*(*a1[3] + 120))(a1[3]);
  v4 = ((*a1)[36])(a1);
  return ((*a1)[25])(a1, v4, v2, v3);
}

uint64_t sub_26D0C(void *a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!sub_8C10(*(*a1 - 8), *(*a2 - 8)))
  {
    return 1;
  }

  if ((*(*a1 + 40))(a1) && (*(*v4 + 40))(v4))
  {
    v5 = (**a1)(a1);
    return v5 != (**v4)(v4);
  }

  v7 = a1[2];
  if ((v7 == 0) != (v4[2] == 0))
  {
    return 1;
  }

  if ((*(*v7 + 128))(v7))
  {
    return 1;
  }

  v8 = a1[3];
  if ((v8 == 0) != (v4[3] == 0))
  {
    return 1;
  }

  v9 = *(*v8 + 128);

  return v9();
}

uint64_t sub_26F1C(void *a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_8C10(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    if ((*(*a1 + 40))(a1) && (*(*v5 + 40))(v5))
    {
      v6 = (**a1)(a1);
      return v6 == (**v5)(v5);
    }

    else
    {
      v7 = a1[2];
      if ((v7 == 0) != (v5[2] == 0))
      {
        return 0;
      }

      if ((*(*v7 + 128))(v7))
      {
        return 0;
      }

      v8 = a1[3];
      if ((v8 == 0) != (v5[3] == 0))
      {
        return 0;
      }

      else
      {
        v9 = *(*v8 + 136);

        return v9();
      }
    }
  }

  return result;
}

void sub_27130(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27190(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  if (*(a1 + 16) == a2 || (v2 = (a1 + 24), *(a1 + 24) == a2))
  {
    *v2 = 0;
  }

  return (*(**(a1 + 8) + 64))();
}

void sub_271E8(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27230(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2724C(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27294(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_272B0(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_272F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27314(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_2735C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27378(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_273C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_273DC(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27424(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27440(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27488(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_274A4(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_274EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27508(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27550(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2756C(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_275B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_275D0(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27618(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27634(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_2767C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27698(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_276E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_276FC(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27744(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27760(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_277A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_277C4(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_2780C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_27828(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27870(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2788C(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_278D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_278EC(void *a1)
{
  *a1 = off_1A9EE0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 152))(v2);
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1A5580;
  return a1;
}

void sub_27978(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

void sub_27A14(void *a1)
{
  sub_278EC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27A5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27A7C(void *a1)
{
  *a1 = off_1AA018;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 152))(v2);
  }

  a1[3] = 0;

  return sub_278EC(a1);
}

void sub_27B18(void *a1)
{
  sub_27A7C(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27B60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27B78(uint64_t a1)
{
  *a1 = off_1AA150;
  if (*(a1 + 32))
  {
    v2 = *(a1 + 24);
    if (v2 < 1)
    {
      goto LABEL_8;
    }

    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 32) + 8 * i);
      if (v4)
      {
        (*(*v4 + 152))(v4);
        v2 = *(a1 + 24);
      }
    }

    if (*(a1 + 32))
    {
LABEL_8:
      operator delete[]();
    }

    *(a1 + 32) = 0;
  }

  *(a1 + 24) = 0;

  return sub_278EC(a1);
}

void sub_27C60(void *a1)
{
  sub_27B78(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_27CA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27EF4()
{
  result = sub_5B88(0x18uLL);
  *result = off_1AA288;
  result[1] = 0;
  *(result + 4) = 0;
  return result;
}

float sub_27F30(uint64_t a1)
{
  v2 = sub_5B88(0x18uLL);
  result = *(a1 + 16);
  *v2 = off_1AA288;
  *(v2 + 1) = 0;
  v2[4] = result;
  return result;
}

BOOL sub_27F7C(float (***a1)(void), void *lpsrc)
{
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = (**a1)(a1);
  return v5 != (**v4)(v4);
}

float (***sub_28058(float (***a1)(void), void *lpsrc))(void)
{
  if (result)
  {
    v4 = result;
    v5 = (**a1)(a1);
    return (v5 == (**v4)(v4));
  }

  return result;
}

void *sub_2812C(void *result)
{
  *result = off_1A5580;
  result[1] = 0;
  return result;
}

void sub_28150(void *a1, uint64_t a2)
{
  *a1 = off_1AA3D0;
  a1[1] = 0;
  a1[2] = *(a2 + 24);
  operator new[]();
}

void sub_2822C(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_283DC(uint64_t a1, char *__s2, uint64_t a3)
{
  if (!__s2)
  {
    (*(*a1 + 272))(a1, 20, -1, -1);
  }

  result = strcmp(*(a1 + 32), __s2);
  if (!result)
  {
    v7 = *(a1 + 24);
    v8 = *(*a1 + 80);

    return v8(a1, v7, a3);
  }

  return result;
}

uint64_t *sub_284A8(uint64_t *result, int a2, uint64_t *lpsrc)
{
  if (lpsrc != result)
  {
    v3 = result;
    if (*(result + 6) == a2)
    {
      v5 = *lpsrc;
      if (v6)
      {
        v7 = (*(*v6 + 288))(v6);
      }

      else
      {
        v7 = (*(v5 + 120))(lpsrc);
      }

      v8 = v7;
      v9 = v3[1];
      if (v9 && (v10 = v3[2], (*(*v9 + 64))(v9, v3, v8)))
      {
        v11 = *(*v8 + 88);

        return v11(v8, v10);
      }

      else
      {
        v12 = *(*v3 + 272);

        return v12(v3, 21, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_28658(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  if (a2)
  {
    v2 = result;
    result = (*(*a2 + 424))(a2, *(result + 32));
    *(v2 + 24) = result;
  }

  return result;
}

float *sub_28718(void *a1, char *__s2)
{
  if (!__s2 || (v4 = a1[4]) == 0)
  {
    (*(*a1 + 272))(a1, 21, -1, -1);
    v4 = a1[4];
  }

  v5 = strcmp(v4, __s2);
  result = sub_5B88(0x18uLL);
  *result = off_1AA288;
  *(result + 1) = 0;
  v7 = 0.0;
  if (!v5)
  {
    v7 = 1.0;
  }

  result[4] = v7;
  return result;
}

void sub_28804(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2881C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!sub_8C10(*(*a1 - 8), *(*a2 - 8)))
  {
    return 1;
  }

  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = (*(*a1 + 288))(a1);
  v7 = (*(*v5 + 288))(v5);
  if (v6 | v7)
  {
    if ((v6 == 0) != (v7 != 0))
    {
      return strcmp(v6, v7) != 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_2896C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_8C10(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    if (result)
    {
      v5 = result;
      v6 = (*(*a1 + 288))(a1);
      v7 = (*(*v5 + 288))(v5);
      if (v6 | v7)
      {
        return (v6 == 0) != (v7 != 0) && strcmp(v6, v7) == 0;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_28AC0(void *a1)
{
  v1 = sub_28BB0(a1);
  if (v1)
  {

    free(v1);
  }
}

void sub_28B04(void *a1, char *__s)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1AA3D0;
  strlen(__s);
  operator new[]();
}

void sub_28B90(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

void *sub_28BB0(void *result)
{
  *result = off_1AA3D0;
  if (result[4])
  {
    operator delete[]();
  }

  result[4] = 0;
  *result = off_1A5580;
  result[1] = 0;
  return result;
}

void sub_28C38(void *a1)
{
  sub_227CC(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_28C80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2937C(uint64_t a1)
{
  v6 = +[EAGLContext currentContext];
  v2 = v6;
  if (v6 != [*(*(a1 + 32) + 24) glContext])
  {
    +[EAGLContext setCurrentContext:](EAGLContext, "setCurrentContext:", [*(*(a1 + 32) + 24) glContext]);
  }

  glPixelStorei(0xD05u, 4);
  glReadPixels(0, 0, *(*(a1 + 32) + 40), *(*(a1 + 32) + 48), 0x1908u, 0x1401u, *(a1 + 40));
  glFinish();
  v3 = +[EAGLContext currentContext];
  v4 = v6;
  if (v3 != v6)
  {
    v3 = [EAGLContext setCurrentContext:v6];
    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

id sortSlidesByUsage1(void *a1, void *a2, char *a3)
{
  if (a3)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 1;
  }

  v6 = [a1 overallUsageCounter];
  v7 = [a2 overallUsageCounter];
  if (v6 < v7)
  {
    v8 = (v5 & 1) == 0;
    v9 = -1;
    goto LABEL_8;
  }

  if (v7 < v6)
  {
    v8 = (v5 & 1) == 0;
    v9 = 1;
LABEL_8:
    if (v8)
    {
      return -v9;
    }

    else
    {
      return v9;
    }
  }

  v11 = [a1 path];
  v12 = [a2 path];

  return [v11 compare:v12];
}

id sub_395D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[57] == 1)
  {
    return [v1 resumeSlideshow];
  }

  else
  {
    return [v1 pauseSlideshow];
  }
}

_BYTE *sub_396A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[57] == 1)
  {
    [result willChangeValueForKey:@"slideshowIsPlaying"];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(*(a1 + 32) + 16) sublayers];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (v8 != *(*(*(a1 + 32) + 40) + 304) && [*(*(&v10 + 1) + 8 * v7) isActivated])
          {
            [objc_msgSend(v8 "clock")];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    v9 = [*(a1 + 32) renderingDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 resumeMusic];
    }

    *(*(a1 + 32) + 57) = 0;
    return [*(a1 + 32) didChangeValueForKey:@"slideshowIsPlaying"];
  }

  return result;
}

_BYTE *sub_398E0(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[57] & 1) == 0)
  {
    [result willChangeValueForKey:@"slideshowIsPlaying"];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(*(a1 + 32) + 16) sublayers];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (v8 != *(*(*(a1 + 32) + 40) + 304) && [*(*(&v10 + 1) + 8 * v7) isActivated])
          {
            [objc_msgSend(v8 "clock")];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    v9 = [*(a1 + 32) renderingDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 pauseMusic];
    }

    *(*(a1 + 32) + 57) = 1;
    return [*(a1 + 32) didChangeValueForKey:@"slideshowIsPlaying"];
  }

  return result;
}

id sub_39B84(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) isPreactivated])
  {
    v2 = *(*(a1 + 32) + 16);
    [objc_msgSend(v2 "clock")];
    [v2 prerenderForTime:*(*(*(a1 + 32) + 40) + 8) inContext:*(*(*(a1 + 32) + 40) + 120) withArguments:?];
    v3 = [*(a1 + 32) _layerForPlugObjectID:*(*(*(a1 + 32) + 40) + 296)];
    v4 = *(a1 + 40);
    [v3 timeIn];
    [objc_msgSend(v3 "clock")];
    [v3 resyncToSerializer];
    result = [*(a1 + 32) requestRenderingOnChanges];
    if (result)
    {
      v7 = *(a1 + 32);

      return [v7 requestRendering:0];
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);

    return [v9 setTime:v8];
  }

  return result;
}

uint64_t sub_39DB0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 40);
  if (!*(v3 + 352))
  {
    v4 = [result _layerForPlugObjectID:*(v3 + 296)];
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      [v4 jumpToNextMarker:0];
      result = [*(a1 + 32) requestRenderingOnChanges];
      if (result)
      {
        v5 = *(a1 + 32);

        return [v5 requestRendering:0];
      }
    }
  }

  return result;
}

uint64_t sub_39EF8(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 40);
  if (!*(v3 + 352))
  {
    v4 = [result _layerForPlugObjectID:*(v3 + 296)];
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      [v4 jumpToPreviousMarker:0];
      result = [*(a1 + 32) requestRenderingOnChanges];
      if (result)
      {
        v5 = *(a1 + 32);

        return [v5 requestRendering:0];
      }
    }
  }

  return result;
}

uint64_t sub_3A044(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 40);
  if (!*(v3 + 352))
  {
    v4 = [result _layerForPlugObjectID:*(v3 + 296)];
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      [v4 gotoMoreSlidesWithAction:0 backwards:0 animate:*(a1 + 40) canCatchCurrentTransition:0];
      result = [*(a1 + 32) requestRenderingOnChanges];
      if (result)
      {
        v5 = *(a1 + 32);

        return [v5 requestRendering:0];
      }
    }
  }

  return result;
}

uint64_t sub_3A19C(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 40);
  if (!*(v3 + 352))
  {
    v4 = [result _layerForPlugObjectID:*(v3 + 296)];
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      [v4 gotoMoreSlidesWithAction:0 backwards:1 animate:*(a1 + 40) canCatchCurrentTransition:0];
      result = [*(a1 + 32) requestRenderingOnChanges];
      if (result)
      {
        v5 = *(a1 + 32);

        return [v5 requestRendering:0];
      }
    }
  }

  return result;
}

void *sub_3A2F0(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result[5] + 352))
  {
    [result willGoToPreviousOrNextFocusedSlide:1 withAction:0 animate:0];
    [*(a1 + 32) prerenderWithPassParameters:0];
    if ([*(*(*(a1 + 32) + 40) + 352) isInZoomMode])
    {
      [*(a1 + 32) exitSlideZoomMode:0];
    }

    [*(a1 + 32) didGoToPreviousOrNextFocusedSlide:1 withAction:0];
    [*(*(*(a1 + 32) + 40) + 352) setIsTransitioning:0];
    result = [*(a1 + 32) requestRenderingOnChanges];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 requestRendering:0];
    }
  }

  return result;
}

void *sub_3A46C(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result[5] + 352))
  {
    [result willGoToPreviousOrNextFocusedSlide:0 withAction:0 animate:0];
    [*(a1 + 32) prerenderWithPassParameters:0];
    if ([*(*(*(a1 + 32) + 40) + 352) isInZoomMode])
    {
      [*(a1 + 32) exitSlideZoomMode:0];
    }

    [*(a1 + 32) didGoToPreviousOrNextFocusedSlide:0 withAction:0];
    [*(*(*(a1 + 32) + 40) + 352) setIsTransitioning:0];
    result = [*(a1 + 32) requestRenderingOnChanges];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 requestRendering:0];
    }
  }

  return result;
}

id sub_3AE68(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) enterSlideZoomMode];
  v4 = *(a1 + 32);

  return [v4 slideZoomStart:a2];
}

double sub_3AF00(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MRSlideFocusState);
  -[MRSlideFocusState setDelegate:](v4, "setDelegate:", [*(a1 + 32) superlayer]);
  [(MRSlideFocusState *)v4 setSlideID:*(a1 + 40)];
  [*(a1 + 48) enterSlideFocusModeWithState:v4 animate:a2];
  v6 = v5;

  return v6;
}

id sub_3C4AC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) sublayerHitAtPoint:*(a1 + 72) onlyIfHitElement:*(a1 + 64) localPoint:{*(a1 + 48), *(a1 + 56)}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void MyCGImageBufferReleaseCallback(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void PerformSynchronouslyOnRenderQueue(NSObject *a1, uint64_t a2)
{
  if (dispatch_get_specific(sRenderDispatchQueueSpecificKey))
  {
    v4 = *(a2 + 16);

    v4(a2);
  }

  else
  {
    v5 = dispatch_semaphore_create(0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_487F0;
    v7[3] = &unk_1AAAE0;
    v7[4] = v5;
    v7[5] = a2;
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_DETACHED, QOS_CLASS_USER_INITIATED, 0, v7);
    dispatch_async(a1, v6);
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
    _Block_release(v6);
  }
}

intptr_t sub_487F0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(NSObject *a1, void *a2)
{
  if (dispatch_get_specific(sRenderDispatchQueueSpecificKey))
  {
    v4 = a2[2];

    v4(a2);
  }

  else
  {

    dispatch_async(a1, a2);
  }
}

void sub_48FA8(uint64_t a1)
{
  [*(a1 + 32) _r_pause];
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3)
  {
    if ([v3 isActivated])
    {
      [*(*(a1 + 32) + 16) deactivate];
    }

    if ([*(*(a1 + 32) + 16) isPreactivated])
    {
      [*(*(a1 + 32) + 16) depreactivate:0];
    }

    [*(*(a1 + 32) + 16) cleanup];

    *(*(a1 + 32) + 16) = 0;
    *(*(*(a1 + 32) + 40) + 304) = 0;

    *(*(*(a1 + 32) + 40) + 312) = 0;
    *(*(*(a1 + 32) + 40) + 320) = 0;

    *(*(*(a1 + 32) + 40) + 328) = 0;
    *(*(*(a1 + 32) + 40) + 336) = 0;

    *(*(*(a1 + 32) + 40) + 296) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2[5] + 8);
  if (v4)
  {
    [v4 purgeResources:1];
    [*(*(*(a1 + 32) + 40) + 1008) releaseByUser];
    *(*(*(a1 + 32) + 40) + 1008) = 0;
    [+[MRShaderManager sharedManager](MRShaderManager "sharedManager")];
    [*(*(*(a1 + 32) + 40) + 8) cleanup];

    *(*(*(a1 + 32) + 40) + 8) = 0;
    v2 = *(a1 + 32);
  }

  v5 = v2[1];
  if (v5)
  {
    [v5 removeObserver:? forKeyPath:?];
    [*(*(a1 + 32) + 8) removeObserver:*(a1 + 32) forKeyPath:@"fadeInDuration"];
    [*(*(a1 + 32) + 8) removeObserver:*(a1 + 32) forKeyPath:@"fadeOutDuration"];

    *(*(a1 + 32) + 8) = 0;
  }
}

void sub_492B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 141) == 1)
  {
    if (v3 || !*(*(v2 + 40) + 8))
    {
      return;
    }
  }

  else if (v3)
  {
    if (v3 == [*(*(v2 + 40) + 8) glContext])
    {
      return;
    }

    v2 = *(a1 + 32);
  }

  [v2 setScreenBurnTest:0];
  v4 = *(a1 + 32);
  if (*(*(v4 + 40) + 240) > 0.0)
  {
    [v4 _r_endMorphing];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 16))
  {
    v5 = [*(v4 + 16) isPreactivated];
    v4 = *(a1 + 32);
    if (v5)
    {
      if (*(*(v4 + 40) + 296))
      {
        [v4 currentSlideshowTime];
      }

      else
      {
        [v4 time];
      }

      [*(a1 + 32) _r_setTime:0 isResyncing:?];
      if ([*(*(a1 + 32) + 16) isActivated])
      {
        [*(*(a1 + 32) + 16) deactivate];
      }

      [*(*(a1 + 32) + 16) depreactivate:0];
      v4 = *(a1 + 32);
    }
  }

  *(v4 + 24) = CGSizeZero;
  v6 = *(*(a1 + 32) + 40);
  if (*(v6 + 8))
  {
    [*(v6 + 1008) releaseByUser];
    *(*(*(a1 + 32) + 40) + 1008) = 0;
    [+[MRShaderManager sharedManager](MRShaderManager "sharedManager")];
    [*(*(*(a1 + 32) + 40) + 8) cleanup];

    *(*(*(a1 + 32) + 40) + 8) = 0;
    v6 = *(*(a1 + 32) + 40);
  }

  *(*(*(a1 + 32) + 40) + 1016) = 0;
  if (*(a1 + 40))
  {
    *(*(*(a1 + 32) + 40) + 8) = -[MRContext initWithEAGLContext:andAssetManager:]([MRContext alloc], "initWithEAGLContext:andAssetManager:", *(a1 + 40), [*(a1 + 32) assetManagementDelegate]);
    v7 = *(*(a1 + 32) + 16);
    if (v7)
    {
      [v7 preactivate];
      [*(a1 + 32) _time];
      [objc_msgSend(*(*(a1 + 32) + 16) "clock")];
      v9 = *(*(a1 + 32) + 16);

      [v9 activate];
    }
  }
}

MRLayerParallelizer *sub_49578(uint64_t a1)
{
  result = *(a1 + 32);
  if (BYTE5(result->super.mPersistentState) != 1 || !*(a1 + 40) && result->super.mSuperlayer)
  {
    [(MRLayerParallelizer *)result _r_pause];
    [*(a1 + 32) setScreenBurnTest:0];
    v3 = *(a1 + 32);
    if (v3[2])
    {
      if ([v3[2] isActivated])
      {
        [*(*(a1 + 32) + 16) deactivate];
      }

      if ([*(*(a1 + 32) + 16) isPreactivated])
      {
        [*(*(a1 + 32) + 16) depreactivate:0];
      }

      [*(*(a1 + 32) + 16) cleanup];

      *(*(a1 + 32) + 16) = 0;
      *(*(*(a1 + 32) + 40) + 304) = 0;

      *(*(*(a1 + 32) + 40) + 312) = 0;
      *(*(*(a1 + 32) + 40) + 320) = 0;

      *(*(*(a1 + 32) + 40) + 328) = 0;
      *(*(*(a1 + 32) + 40) + 336) = 0;

      *(*(*(a1 + 32) + 40) + 296) = 0;
      v3 = *(a1 + 32);
    }

    [v3 willChangeValueForKey:@"montage"];
    v4 = *(*(a1 + 32) + 8);
    if (v4)
    {
      [v4 removeObserver:? forKeyPath:?];
      [*(*(a1 + 32) + 8) removeObserver:*(a1 + 32) forKeyPath:@"fadeInDuration"];
      [*(*(a1 + 32) + 8) removeObserver:*(a1 + 32) forKeyPath:@"fadeOutDuration"];

      *(*(a1 + 32) + 8) = 0;
    }

    *(*(a1 + 32) + 8) = *(a1 + 40);
    [*(a1 + 32) didChangeValueForKey:@"montage"];
    result = *(*(a1 + 32) + 8);
    if (result)
    {
      [MRLayerParallelizer addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:? options:? context:?];
      [*(*(a1 + 32) + 8) addObserver:*(a1 + 32) forKeyPath:@"fadeInDuration" options:0 context:0];
      [*(*(a1 + 32) + 8) addObserver:*(a1 + 32) forKeyPath:@"fadeOutDuration" options:0 context:0];
      [*(a1 + 32) resetFadeInAndOut];
      [*(a1 + 32) _r_setTime:0 isResyncing:0.0];
      [objc_msgSend(*(*(a1 + 32) + 8) "rootPlug")];
      result = -[MRLayerParallelizer initWithPlug:andParameters:inSuperlayer:]([MRLayerParallelizer alloc], "initWithPlug:andParameters:inSuperlayer:", [*(*(a1 + 32) + 8) rootPlug], *(*(a1 + 32) + 200), 0);
      *(*(a1 + 32) + 16) = result;
      v5 = *(a1 + 32);
      v6 = *(v5 + 40);
      if (*(v6 + 8))
      {
        [*(v5 + 16) updateGeometry];
        [*(*(a1 + 32) + 16) preactivate];
        result = [*(*(a1 + 32) + 16) activate];
        v6 = *(*(a1 + 32) + 40);
      }

      *(v6 + 211) = 1;
    }
  }

  return result;
}

id sub_4A16C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = @"forceRendering";
  v4[1] = @"thumbnailPolicy";
  v5[0] = &__kCFBooleanTrue;
  v5[1] = [NSNumber numberWithInt:1];
  result = [v2 _r_renderWithPassParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v5, v4, 2)}];
  if (*(a1 + 48) == 1)
  {
    return dispatch_semaphore_signal(*(a1 + 40));
  }

  return result;
}

id sub_4A544(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  if (result == v3[8])
  {
    [result targetTimestamp];
    [v3 _r_updateTimeWithDisplayLinkTimestamp:?];
    v4 = *(a1 + 40);

    return [v4 _r_renderWithPassParameters:0];
  }

  return result;
}

id sub_4A7E8(uint64_t a1)
{
  result = [*(a1 + 32) _r_prerenderWithPassParameters:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id sub_4CC6C(id result)
{
  v1 = *(result + 4);
  if ((*(v1 + 141) & 1) == 0)
  {
    v2 = *(result + 5);
    *(v1 + 192) = v2;
    result = *(*(result + 4) + 64);
    if (result)
    {
      return [result setPreferredFramesPerSecond:llround(1.0 / v2)];
    }
  }

  return result;
}

void sub_4CD58(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 141) & 1) == 0)
  {
    *(*(v1 + 40) + 209) = 1;
    *(*(*(a1 + 32) + 40) + 210) = 0;
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 24) = *(a1 + 40);
    *(v4 + 216) = *(a1 + 40);
    v5 = [*(*(a1 + 32) + 8) layouts];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v7[3] = 0x408F400000000000;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_4CEA4;
    v6[3] = &unk_1AAB80;
    v6[4] = *(a1 + 32);
    v6[5] = v7;
    v6[6] = &v8;
    [v5 enumerateObjectsUsingBlock:v6];
    [*(*(*(a1 + 32) + 40) + 120) setCurrentLayoutIndex:*(v9 + 24)];
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(&v8, 8);
  }
}

void sub_4CE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_4CEA4(void *a1, void *a2, char a3)
{
  v6 = [a2 isEqualToString:@"3x2"];
  v7 = 1.5;
  if ((v6 & 1) == 0)
  {
    if ([a2 isEqualToString:{@"2x3", 1.5}])
    {
      v7 = 0.666666667;
    }

    else if ([a2 isEqualToString:@"4x3"])
    {
      v7 = 1.33333333;
    }

    else
    {
      v8 = [a2 isEqualToString:@"3x4"];
      v7 = 0.75;
      if ((v8 & 1) == 0)
      {
        if ([a2 isEqualToString:{@"16x9", 0.75}])
        {
          v7 = 1.77777778;
        }

        else
        {
          v9 = [a2 isEqualToString:@"9x16"];
          v7 = 0.5625;
          if ((v9 & 1) == 0)
          {
            NSLog(@"Unsupported aspect ratio!!!", 0.5625);
            v7 = 1.0;
          }
        }
      }
    }
  }

  v10 = vabdd_f64(*(a1[4] + 24) / *(a1[4] + 32), v7);
  if (v10 < *(*(a1[5] + 8) + 24))
  {
    *(*(a1[6] + 8) + 24) = a3;
    *(*(a1[5] + 8) + 24) = v10;
  }
}

__n128 sub_4D078(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 141) & 1) == 0)
  {
    *(*(v1 + 40) + 210) = 1;
    result = *(a1 + 40);
    *(*(*(a1 + 32) + 40) + 216) = result;
  }

  return result;
}

__n128 sub_4D164(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 141) & 1) == 0)
  {
    result = *(a1 + 40);
    *(*(v1 + 40) + 104) = result;
    *(*(*(a1 + 32) + 40) + 209) = 1;
  }

  return result;
}

uint64_t sub_4D244(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 141) & 1) == 0)
  {
    v2 = *(result + 40);
    *(*(v1 + 40) + 264) = (v2 - 1) < 4;
    *(*(result + 32) + 152) = v2;
    *(*(*(result + 32) + 40) + 209) = 1;
  }

  return result;
}

void *sub_4D40C(void *result)
{
  v1 = result[4];
  if ((*(v1 + 141) & 1) == 0)
  {
    return [*(*(v1 + 40) + 120) setCurrentLayoutIndex:*(result + 40)];
  }

  return result;
}

void sub_4D4E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 141) & 1) == 0)
  {
    if (*(a1 + 40) == 1 || *(v2 + 148) == 1)
    {
      [v2 willChangeValueForKey:@"isOffscreen"];
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    v4 = MRGetCurrentTime();
    v5 = *(*(a1 + 32) + 40);
    v6 = *(v5 + 152);
    v7 = v4 - v6;
    v8 = -1.0 - (v6 - v4 * 2.0);
    if (v7 < 1.0)
    {
      v4 = v8;
    }

    *(v5 + 152) = v4;
    *(*(*(a1 + 32) + 40) + 144) = *(*(a1 + 32) + 148);
    *(*(a1 + 32) + 148) = *(a1 + 40);
    if (v3)
    {
      v9 = *(a1 + 32);

      [v9 didChangeValueForKey:@"isOffscreen"];
    }
  }
}

id sub_4D650(id result)
{
  v2 = *(result + 4);
  if ((*(v2 + 141) & 1) == 0)
  {
    v3 = result;
    objc_storeWeak((v2 + 160), *(result + 5));
    v4 = v3[5];
    v5 = *(*(v3[4] + 40) + 8);

    return [v5 setAssetManager:v4];
  }

  return result;
}

uint64_t sub_4D778(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 141) & 1) == 0)
  {
    result = [*(v1 + 16) sublayerForPlugObjectID:objc_msgSend(*(result + 40) recursive:{"objectID"), 1}];
    if (result)
    {
      v2 = result;
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {

        return [v2 gotoNextSublayer:0 animate:1];
      }
    }
  }

  return result;
}

uint64_t sub_4D880(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 141) & 1) == 0)
  {
    result = [*(v1 + 16) sublayerForPlugObjectID:objc_msgSend(*(result + 40) recursive:{"objectID"), 1}];
    if (result)
    {
      v2 = result;
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {

        return [v2 gotoPreviousSublayer:0 animate:1];
      }
    }
  }

  return result;
}

void sub_4DA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4DA40(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 141) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 16) sublayerForPlugObjectID:objc_msgSend(*(result + 40) recursive:{"objectID"), 1}];
    if (result)
    {
      v3 = result;
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        result = [objc_msgSend(v3 "currentSublayer")];
        *(*(*(v2 + 48) + 8) + 40) = result;
      }
    }
  }

  return result;
}

void sub_4DBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_4DBBC(void *result)
{
  v2 = result[4];
  if ((*(v2 + 141) & 1) == 0)
  {
    v3 = result;
    [*(v2 + 8) lock];
    *(*(v3[5] + 8) + 40) = [*(v3[4] + 16) _currentState];
    [*(v3[4] + 8) unlock];
    v4 = v3[4];
    v5 = *(*(v3[5] + 8) + 40);
    [v4 _time];
    v6 = [NSNumber numberWithDouble:?];

    return [v5 setObject:v6 forKey:@"time"];
  }

  return result;
}

id sub_4DCD4(id result)
{
  v1 = *(result + 4);
  if ((v1[141] & 1) == 0)
  {
    v2 = result;
    [objc_msgSend(*(result + 5) objectForKey:{@"time", "doubleValue"}];
    [v1 _r_setTime:0 isResyncing:?];
    [*(*(v2[4] + 40) + 120) setForcedState:v2[5]];
    result = v2[4];
    if (*(result + 134) == 1)
    {

      return [result requestRendering:0];
    }
  }

  return result;
}

void *sub_4DF1C(void *result)
{
  v2 = result[4];
  if ((*(v2 + 141) & 1) == 0)
  {
    v3 = result;
    [*(v2 + 8) lock];
    [*(*(v3[4] + 40) + 376) nearingEndForSerializer:v3[5]];
    v4 = *(v3[4] + 8);

    return [v4 unlock];
  }

  return result;
}

void *sub_4E004(void *result)
{
  v2 = result[4];
  if ((*(v2 + 141) & 1) == 0)
  {
    v3 = result;
    [*(v2 + 8) lock];
    [*(*(v3[4] + 40) + 376) effect:v3[5] requestedNumberOfSlides:v3[6] firstSlideIndexStillNeeded:v3[7]];
    v4 = *(v3[4] + 8);

    return [v4 unlock];
  }

  return result;
}

void getMem(void *a1, void *a2)
{
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v11 = 0u;
  *host_info_out = 0u;
  *v9 = 0u;
  v10 = 0u;
  host_info_outCnt = 15;
  v4 = mach_host_self();
  v5 = host_statistics(v4, 2, host_info_out, &host_info_outCnt);
  if (v5)
  {
    mach_error("can't get host_vm_info???\n", v5);
  }

  host_info_outCnt = 12;
  v6 = mach_host_self();
  v7 = host_info(v6, 1, v9, &host_info_outCnt);
  if (v7)
  {
    mach_error("can't get host_basic_info???\n", v7);
  }

  *a2 = vm_page_size * host_info_out[0];
  *a1 = *(&v11 + 1);
}

void sub_506FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_50730(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  objc_opt_class();
  if (v4 == a2)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [*(a1 + 40) _undimAllLayersInLayer:*(a1 + 32)];
    }

    LOBYTE(v9) = 0;
  }

  else if ((objc_opt_isKindOfClass() & 1) != 0 || (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, v5 = [a2 sublayers], (v6 = objc_msgSend(v5, "countByEnumeratingWithState:objects:count:", &v12, v16, 16)) == 0))
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v7 = v6;
    v8 = *v13;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) isActivated])
        {
          v9 &= (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [a2 setIsDimmed:v9 & 1];
  return v9 & 1;
}

void sub_5097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_50994(uint64_t a1, void *a2)
{
  [a2 setIsDimmed:0];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [a2 sublayers];
    result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
          ++v8;
        }

        while (v6 != v8);
        result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

_BYTE *sub_50B4C(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[141] & 1) == 0)
  {
    return [result _dimLayersExceptForPathTo:*(a1 + 40)];
  }

  return result;
}

id sub_50BF4(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 141) & 1) == 0)
  {
    return [result _undimAllLayersInLayer:*(result + 2)];
  }

  return result;
}

void *sub_51208(void *result)
{
  v1 = result[4];
  if ((*(v1 + 141) & 1) == 0)
  {
    v2 = result;
    *(*(v1 + 40) + 392) = *(result + 40);
    v3 = *(result[4] + 40);
    if (*(v3 + 392) == 1)
    {
      *(v3 + 400) = 0;
    }

    else
    {
      [*(v3 + 408) cleanup];
      [*(*(v2[4] + 40) + 408) releaseByUser];
      *(*(v2[4] + 40) + 408) = 0;
      [*(*(v2[4] + 40) + 416) cleanup];
      result = [*(*(v2[4] + 40) + 416) releaseByUser];
      *(*(v2[4] + 40) + 416) = 0;
    }
  }

  return result;
}

id sub_51C7C(uint64_t a1)
{
  for (i = 320; i != 344; i += 8)
  {
    result = [*(*(*(a1 + 32) + 40) + i) setAssetPath:0 ofSlide:@"image0"];
  }

  return result;
}

void sub_51F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_51F54(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) _layerForPlugObjectID:{*(*(*(a1 + 32) + 40) + 296)), "currentSublayer"), "currentSlideInfoForElement:", *(a1 + 40)}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void sub_52070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_52088(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) _layerForPlugObjectID:{*(*(*(a1 + 32) + 40) + 296)), "currentSublayer"), "currentSlideInfos"}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id sub_52140(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(NSNotificationCenter *)v2 postNotificationName:v3 object:v4];
}

void sub_523FC(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  state64 = 0;
  state = notify_get_state(a2, &state64);
  if (state)
  {
    NSLog(@"notify_get_state failed (%u) for kOSThermalNotificationPressureLevelName", state);
  }

  else
  {
    notify_suspend(a2);
    v6 = state64;
    NSLog(@"OS thermal pressure level changed to %d", state64);
    [*(a1 + 32) _adaptToPressureLevel:v6];
    notify_resume(a2);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_55FD4(id a1, MRLayer *a2, unint64_t a3, BOOL *a4)
{
  if ([(MRLayer *)a2 isPreactivated:a3])
  {

    [(MRLayer *)a2 synchronizeTime];
  }
}

id sub_56098(uint64_t a1, void *a2)
{
  result = [a2 isPreactivated];
  if (result)
  {
    [objc_msgSend(a2 "plugAsParallel")];

    return [a2 beginMorphingToAspectRatio:? withDuration:?];
  }

  return result;
}

void sub_56114(id a1, MRLayer *a2, unint64_t a3, BOOL *a4)
{
  if ([(MRLayer *)a2 isPreactivated:a3])
  {

    [(MRLayer *)a2 endMorphing];
  }
}

id sub_5620C(uint64_t a1, void *a2)
{
  result = [a2 isPreactivated];
  if (result)
  {
    v5 = *(a1 + 32);
    [a2 timeIn];
    v7 = v5 - v6;

    return [a2 setDuration:v7];
  }

  return result;
}

void sub_56370(id a1, MRLayer *a2, unint64_t a3, BOOL *a4)
{
  if ([(MRLayer *)a2 isActivated:a3])
  {

    [(MRLayer *)a2 deactivate];
  }
}

id sub_56468(uint64_t a1, void *a2)
{
  result = [a2 isPreactivated];
  if (result)
  {
    [*(a1 + 32) _unobserveSublayerOnDepreactivate:a2];
    v5 = *(a1 + 40);

    return [a2 depreactivate:v5];
  }

  return result;
}

int64_t sub_58E3C(id a1, MRLayer *a2, MRLayer *a3)
{
  v4 = [(MCPlugParallel *)[(MRLayer *)a2 plugAsParallel] zIndex];
  v5 = [(MCPlugParallel *)[(MRLayer *)a3 plugAsParallel] zIndex];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v5 < v4;
  }
}

BOOL mathParser::isValueFallOnSinCosZeroCycle<double>(int a1, int8x16_t a2, int8x16_t a3)
{
  if (a1 != 90)
  {
    return fmod(*a2.i64, a1) == 0.0;
  }

  *a2.i64 = *a2.i64 / 90.0;
  *a3.i64 = *a2.i64 + trunc(*a2.i64 * 0.5) * -2.0;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  return *vbslq_s8(vnegq_f64(v3), a3, a2).i64 == 1.0;
}

BOOL mathParser::isValueFallOnSinCosZeroCycle<float>(int a1, int8x16_t a2, int8x16_t a3)
{
  if (a1 != 90)
  {
    return fmodf(*a2.i32, a1) == 0.0;
  }

  *a2.i32 = *a2.i32 / 90.0;
  *a3.i32 = *a2.i32 + (truncf(*a2.i32 * 0.5) * -2.0);
  v3.i64[0] = 0x8000000080000000;
  v3.i64[1] = 0x8000000080000000;
  return *vbslq_s8(v3, a3, a2).i32 == 1.0;
}

void sub_5C680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

id sub_5C6C0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(objc_msgSend(a2 "plugAsHaven")];
  *a4 = result;
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return result;
}

void sub_65BA0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_66864(id a1)
{
  if (qword_1EF2A8 != -1)
  {
    sub_136978();
  }
}

uint64_t sub_66B20(uint64_t a1, _BYTE *a2, float a3)
{
  v5 = a3 * 0.1 + 0.0;
  result = (*(*(a1 + 32) + 16))(v5);
  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_66B88(uint64_t a1, _BYTE *a2, float a3)
{
  v5 = a3 * 0.1 + 0.0;
  result = (*(*(a1 + 32) + 16))(v5);
  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_66BF0(uint64_t a1, _BYTE *a2, float a3)
{
  v5 = a3 * 0.1 + 0.0;
  result = (*(*(a1 + 32) + 16))(v5);
  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

id sub_6834C(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 attributedText])
  {
    v6 = [a3 attributedText];
  }

  else
  {
    result = [a3 text];
    if (!result)
    {
      return result;
    }

    v6 = [a3 text];
  }

  v8 = v6;
  v9 = *(a1 + 32);

  return [v9 setObject:v8 forKeyedSubscript:a2];
}

id sub_6846C(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 duration];
  if (v7 >= 0.0)
  {
    [a3 duration];
    v8 = [NSNumber numberWithDouble:?];
    v9 = *(a1 + 32);

    return [v9 setObject:v8 forKeyedSubscript:a2];
  }

  return result;
}

id sub_68978(uint64_t a1, void *a2)
{
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"offset", "CGPointValue"}];
  [a2 setOffset:?];

  return [a2 setScale:1.0];
}

void sub_708E4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_75A3C(uint64_t a1)
{
  +[CATransaction begin];
  [*(*(a1 + 32) + 8) bounds];
  [*(*(a1 + 32) + 48) setFrame:?];
  +[CATransaction commit];
  [*(*(a1 + 32) + 48) warmupRenderer];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_75B18;
  block[3] = &unk_1AAFF0;
  v4 = *(a1 + 48);
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_75B18(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_75B98;
  v2[3] = &unk_1AAFF0;
  v3 = *(a1 + 48);
  return [*(a1 + 32) enterMarimbaWithDuration:v2 andCompletionBlock:0.5];
}

uint64_t sub_75B98(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 48) play];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_75D60(uint64_t a1)
{
  *(*(a1 + 32) + 41) = 1;
  *(*(a1 + 32) + 32) = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 42) == 1)
  {
    [*(v2 + 24) setHidden:1];
  }

  if ([+[NSUserDefaults objectForKey:"objectForKey:"]
  {
    v3 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"touchVisualFeedback"];
  }

  else
  {
    v3 = 0;
  }

  [objc_msgSend(*(*(a1 + 32) + 48) "renderer")];
  if ([+[NSUserDefaults objectForKey:"objectForKey:"]
  {
    v4 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"MRDisplaysPlayingIDs"];
  }

  else
  {
    v4 = 0;
  }

  [objc_msgSend(*(*(a1 + 32) + 48) "renderer")];
  if ([+[NSUserDefaults objectForKey:"objectForKey:"]
  {
    v5 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"MRDisplaysFPS"];
  }

  else
  {
    v5 = 0;
  }

  [objc_msgSend(*(*(a1 + 32) + 48) "renderer")];
  [*(*(a1 + 32) + 8) setUserInteractionEnabled:1];
  *(*(a1 + 32) + 40) = 0;
  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

id sub_76318(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setHidden:0];
  v2 = *(*(a1 + 32) + 24);

  return [v2 setAlpha:1.0];
}

void *sub_76494(void *result)
{
  v1 = result[4];
  if (!*(v1 + 32))
  {
    return [*(v1 + 24) setHidden:1];
  }

  return result;
}

BOOL MCStringToVector@<W0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = +[NSScanner scannerWithString:](NSScanner, "scannerWithString:", [a1 stringByTrimmingCharactersInSet:{+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"[] {}, ()")}]);
  v4 = 0;
  v5 = a2 + 4;
  do
  {
    result = [(NSScanner *)v3 isAtEnd];
    if (result)
    {
      break;
    }

    ++v4;
    [(NSScanner *)v3 scanFloat:v5];
    result = [(NSScanner *)v3 scanString:@" intoString:", 0];
    v5 += 4;
  }

  while (v4 != 4);
  *a2 = v4;
  return result;
}

const __CFString *MCVectorToString(float *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return [NSString stringWithFormat:@"[%f %f %f %f]", a1[1], a1[2], a1[3], a1[4]];
      }

      return @"[]";
    }

    return [NSString stringWithFormat:@"[%f %f %f]", a1[1], a1[2], a1[3], v5];
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return [NSString stringWithFormat:@"[%f %f]", a1[1], a1[2], v4, v5];
      }

      return @"[]";
    }

    return [NSString stringWithFormat:@"[%f]", a1[1], v3, v4, v5];
  }
}

void sub_82650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(v10);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

uint64_t sub_83AA8(uint64_t a1, void *a2, void *a3)
{
  [MCAnimationPathKeyframed timeForKeyframe:a2 withPlugTiming:*(a1 + 32)];
  v7 = v6;
  [MCAnimationPathKeyframed timeForKeyframe:a3 withPlugTiming:*(a1 + 32)];
  if (v7 < v8)
  {
    return -1;
  }

  if (v7 > v8)
  {
    return 1;
  }

  objc_opt_class();
  v10 = 0.0;
  v11 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [a2 duration];
    v11 = v12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 duration];
    v10 = v13;
  }

  if (v11 > v10)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_83B84(uint64_t a1, void *a2, void *a3)
{
  [MCAnimationPathKeyframed timeForKeyframe:a2 withPlugTiming:*(a1 + 32)];
  v7 = v6;
  [MCAnimationPathKeyframed timeForKeyframe:a3 withPlugTiming:*(a1 + 32)];
  if (v7 < v8)
  {
    return -1;
  }

  if (v7 > v8)
  {
    return 1;
  }

  objc_opt_class();
  v10 = 0.0;
  v11 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [a2 duration];
    v11 = v12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 duration];
    v10 = v13;
  }

  if (v11 > v10)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

id TimeForKeyframeAttributesInPlug(id result, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return result;
  }

  if (result <= 4)
  {
    if (result <= 1)
    {
      if (!result)
      {
        return [a3 fullDuration];
      }

      if (result != 1)
      {
        return result;
      }
    }

    else if (result != 2)
    {
      goto LABEL_10;
    }

    return [a3 phaseInDuration];
  }

  if (result > 100)
  {
    if (result != 101)
    {
      if (result != 102)
      {
        if (result != 103)
        {
          return result;
        }

        return [a3 fullDuration];
      }

LABEL_10:
      [a3 phaseInDuration];
      [a3 loopDuration];
      return [a3 numberOfLoops];
    }

    return [a3 phaseInDuration];
  }

  switch(result)
  {
    case 5:
      [a3 phaseInDuration];
      [a3 loopDuration];
      [a3 numberOfLoops];
      break;
    case 6:
      [a3 fullDuration];
      break;
    case 7:
      return [a3 fullDuration];
    default:
      return result;
  }

  return [a3 phaseOutDuration];
}

id *ValueFromBezierPath(id *result, double *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  if (a7 >= 0.0)
  {
    v7 = a4 - 2;
    if (a4 >= 2)
    {
      v8 = a2[1];
      if (v8 >= a7)
      {
        v12 = *a2;
        v14 = 1;
        return [result[v14 - 1] evaluatAtTime:(a7 - v12) / (v8 - v12)];
      }

      else
      {
        v9 = a3 + 8;
        v10 = a2 + 2;
        v11 = -1;
        while (v7)
        {
          v12 = v8;
          v13 = *v10++;
          v8 = v13;
          v9 += 8;
          --v11;
          --v7;
          if (v13 >= a7)
          {
            v14 = -v11;
            return [result[v14 - 1] evaluatAtTime:(a7 - v12) / (v8 - v12)];
          }
        }
      }
    }
  }

  return result;
}

CGFloat CGRectFromCAMLString(void *a1)
{
  if (a1)
  {
    origin = 0;
    v4 = 0;
    sscanf([a1 UTF8String], "%lf %lf %lf %lf", &origin, &origin.y, &v4, &v4.height);
  }

  else
  {
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v4 = size;
  }

  return origin.x;
}

CGFloat CGPointFromCAMLString(void *a1)
{
  if (a1)
  {
    v2 = 0;
    sscanf([a1 UTF8String], "%lf %lf", &v2, &v2.y);
  }

  else
  {
    v2 = CGPointZero;
  }

  return v2.x;
}

double NewZRotationFromCAMLString(void *a1)
{
  v2 = 0.0;
  if (!a1)
  {
    return 0.0;
  }

  sscanf([a1 UTF8String], "rotate(%lfdeg)", &v2);
  return v2;
}

void *NewRotationFromCAMLString(void *a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
  if (a1)
  {
    [a1 rangeOfString:{@", "}];
    if (v3)
    {
      sscanf([a1 UTF8String], "rotate(%lfdeg, %lf, %lf, %lf)", v2, v2 + 1, v2 + 2, v2 + 3);
    }

    else
    {
      v2[1] = 0;
      v2[2] = 0;
      v5 = 0;
      sscanf([a1 UTF8String], "rotate(%lfdeg)", &v5);
      *v2 = v5;
      v2[3] = 0x3FF0000000000000;
    }
  }

  return v2;
}

char *NewTranslationFromCAMLString(void *a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x100004000313F17uLL);
  if (a1)
  {
    sscanf([a1 UTF8String], "translate(%lf, %lf, %lf)", v2, v2 + 8, v2 + 16);
  }

  return v2;
}

char *NewScaleFromCAMLString(void *a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x100004000313F17uLL);
  if (a1)
  {
    sscanf([a1 UTF8String], "scale(%lf, %lf, %lf)", v2, v2 + 8, v2 + 16);
  }

  return v2;
}

uint64_t MainProgressCallback(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a3) = *(a1 + 16);
  LODWORD(a4) = *(a1 + 20);
  return (*a1)(*(a1 + 8), (a2 + *&a3 * 100.0) / *&a4);
}

int64_t sub_8ABD4(NSIndexSet *self, SEL a2, int64_t a3)
{
  v5 = [(NSIndexSet *)self firstIndex];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && a3)
  {
    v6 = a3 - 1;
    do
    {
      v7 = v6;
      v5 = [(NSIndexSet *)self indexGreaterThanIndex:v5];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v6 = v7 - 1;
    }

    while (v7);
  }

  return v5;
}

NSIndexSet *__cdecl sub_8AC44(NSIndexSet *self, SEL a2, int64_t a3)
{
  v5 = +[NSMutableIndexSet indexSet];
  v6 = [(NSIndexSet *)self firstIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSIndexSet *)self indexGreaterThanIndex:i])
    {
      [(NSIndexSet *)v5 addIndex:i + a3];
    }
  }

  return v5;
}

NSIndexSet *__cdecl sub_8ACC8(NSIndexSet *self, SEL a2, int64_t a3)
{
  v5 = +[NSMutableIndexSet indexSet];
  v6 = [(NSIndexSet *)self firstIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSIndexSet *)self indexGreaterThanIndex:i])
    {
      if (i <= a3)
      {
        [(NSIndexSet *)v5 addIndex:i];
      }
    }
  }

  return v5;
}

BOOL NSStringHasPrefix(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  if ([a1 characterAtIndex:0] != *__s)
  {
    return 0;
  }

  v6 = 1;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    v8 = [a1 characterAtIndex:v6];
    v6 = v7 + 1;
  }

  while (v8 == __s[v7]);
  return v7 >= v5;
}

BOOL NSStringHasSuffix(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = [a1 length];
  if (!v4)
  {
    return 1;
  }

  v6 = &v5[-v4];
  if ([a1 characterAtIndex:&v5[-v4]] != *__s)
  {
    return 0;
  }

  v7 = 1;
  do
  {
    v8 = v7;
    if (v4 == v7)
    {
      break;
    }

    v9 = [a1 characterAtIndex:&v6[v7]];
    v7 = v8 + 1;
  }

  while (v9 == __s[v8]);
  return v8 >= v4;
}

NSString *ImageKey(int64_t a1)
{
  if (a1 <= 14)
  {
    return *(&off_1AB2F0 + a1);
  }

  qmemcpy(__s, "image", 5);
  AppendIntToString(a1, __s, 5uLL);
  return [NSString stringWithCString:__s encoding:1];
}

NSString *NSStringWithInteger(const char *a1, unint64_t a2)
{
  strlen(a1);
  __strncpy_chk();
  v4 = strlen(a1);
  AppendIntToString(a2, __s, v4);
  return [NSString stringWithCString:__s encoding:1];
}

char *AppendIntToString(unint64_t a1, char *__s, size_t a3)
{
  v3 = a3;
  v5 = __s;
  do
  {
    v5[a3] = a0123456789[a1 % 0xA];
    ++v5;
    v6 = a1 > 9;
    a1 /= 0xAuLL;
  }

  while (v6);
  v5[a3] = 0;
  for (i = strlen(__s) - 1; v3 < i; --i)
  {
    v8 = __s[v3] ^ __s[i];
    __s[v3] = v8;
    v9 = __s[i] ^ v8;
    __s[i] = v9;
    __s[v3++] ^= v9;
  }

  return __s;
}

void *NSIntegerFromString(void *result, unint64_t a2)
{
  if (result)
  {
    v3 = [result cStringUsingEncoding:{objc_msgSend(result, "fastestEncoding")}];
    v4 = strlen(v3);
    v5 = v4 - a2;
    if (v4 <= a2)
    {
      v5 = 0;
    }

    else
    {
      memcpy(__dst, &v3[a2], v5);
    }

    __dst[v5] = 0;
    return atoi(__dst);
  }

  return result;
}

double Spline1(double result, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a3 != a2 || a4 != a5 || a6 != a7 || a8 != a9)
  {
    v20 = 0.25;
    v21 = 0.5;
    v22 = 0.5;
    while (1)
    {
      v23 = v21 * (v21 * v21);
      v24 = v21 * 3.0;
      v25 = v22 * (v21 * (v21 * 3.0));
      v26 = v22 * (v22 * v24);
      v27 = v22 * (v22 * v22);
      v28 = v25 * a3 + v23 * a2 + v26 * a4 + v27 * a5;
      if (v28 == result)
      {
        break;
      }

      v29 = -v20;
      if (v28 <= result)
      {
        v29 = v20;
      }

      v22 = v22 + v29;
      v21 = 1.0 - v22;
      v20 = v20 * 0.5;
      if (v20 <= 0.0000610351562)
      {
        v23 = v21 * (v21 * v21);
        v30 = v21 * 3.0;
        v25 = v22 * (v21 * (v21 * 3.0));
        v26 = v22 * (v22 * v30);
        v27 = v22 * (v22 * v22);
        return v25 * a7 + v23 * a6 + v26 * a8 + v27 * a9;
      }
    }

    return v25 * a7 + v23 * a6 + v26 * a8 + v27 * a9;
  }

  return result;
}

double ValueForScalarAnimationPath(void *a1, void *a2, void *a3, void *a4, double a5, double a6)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [a1 animationPaths];
    v13 = [objc_msgSend(a1 "combineOperation")];
    v99 = 0u;
    v100 = 0u;
    if (v13)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 0.0;
    }

    v101 = 0uLL;
    v102 = 0uLL;
    v15 = [v12 countByEnumeratingWithState:&v99 objects:v103 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v100;
      v19 = v14;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v100 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v21 = *(*(&v99 + 1) + 8 * i);
          v17 |= [v21 isTriggered] ^ 1;
          v22 = ValueForScalarAnimationPath(v21, a2, a3, a4, a5, v14);
          v23 = v19 * v22;
          v24 = v19 + v22;
          if (v13)
          {
            v19 = v23;
          }

          else
          {
            v19 = v24;
          }
        }

        v16 = [v12 countByEnumeratingWithState:&v99 objects:v103 count:16];
      }

      while (v16);
      if (v17)
      {
        return v19;
      }
    }

    else
    {
      v19 = v14;
    }

    if (v13)
    {
      return v19 * a6;
    }

    else
    {
      return v19 + a6;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!qword_1EF2E0)
    {
      qword_1EF2E0 = objc_alloc_init(NSMutableDictionary);
    }

    v25 = [a1 expression];
    v26 = [qword_1EF2E0 objectForKey:v25];
    if (v26)
    {
      v27 = v26;
      [(MUMathExpressionFloatBased *)v26 resetAllVariables];
    }

    else
    {
      v42 = [[MUMathExpressionFloatBased alloc] initWithString:v25 error:0];
      v19 = a6;
      if (!v42)
      {
        return v19;
      }

      v27 = v42;
      [qword_1EF2E0 setObject:v42 forKey:v25];
    }

    [a3 applyToMathExpression:v27 atTime:a5];
    *&v43 = a5;
    [(MUMathExpressionFloatBased *)v27 setValue:@"_time" forVariable:v43];
    [(MUMathExpressionFloatBased *)v27 evaluate];
    return v41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v19 = 0.0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return v19;
    }

    [a1 computeValueForTime:a3 withContext:a5];
    return v41;
  }

  v28 = [a1 orderedKeyframesWithPlugTiming:a2];
  v29 = [v28 count];
  v30 = [a1 isTriggered];
  if (!v30)
  {
    v40 = 0;
    v39 = 0;
    a4 = 0;
    if (v29)
    {
      goto LABEL_48;
    }

    return a6;
  }

  v31 = [objc_msgSend(a1 "key")];
  v32 = [a1 key];
  v33 = v32;
  if (v31 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = [v32 substringToIndex:v31];
  }

  if (!a4 || (v34 = [a4 objectForKey:v33], (a4 = v34) == 0))
  {
    v40 = 0;
    v39 = 0;
    a5 = -1.0;
    if (v29)
    {
      goto LABEL_48;
    }

    return a6;
  }

  v35 = [v34 action];
  [v35 time];
  a5 = a5 - v36;
  [a4 rearmIfNeededWithDefaultValue:a6];
  a6 = v37;
  v38 = [v35 states];
  if ([v38 count])
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = [a4 animationAttributes];
  if (![v40 count])
  {
    v40 = 0;
  }

  if (!v29)
  {
    return a6;
  }

LABEL_48:
  if (a5 <= 0.0)
  {
    v44 = v30;
  }

  else
  {
    v44 = 0;
  }

  if (v44)
  {
    return a6;
  }

  if (v29 == &dword_0 + 1)
  {
    v45 = v30;
  }

  else
  {
    v45 = 1;
  }

  if (a5 <= 0.0 || (v45 & 1) == 0)
  {
    v53 = [v28 objectAtIndex:0];
LABEL_66:
    v51 = v53;
    v52 = 0;
    goto LABEL_71;
  }

  [a2 fullDuration];
  if (a5 >= v46)
  {
    v53 = [v28 lastObject];
    goto LABEL_66;
  }

  v47 = v30 ^ 1;
  if (v29 <= v47)
  {
LABEL_63:
    v51 = [v28 lastObject];
    v52 = 0;
  }

  else
  {
    v48 = v47 + 1;
    while (1)
    {
      +[MCAnimationPathKeyframed timeForKeyframe:withPlugTiming:](MCAnimationPathKeyframed, "timeForKeyframe:withPlugTiming:", [v28 objectAtIndex:v47], a2);
      if (a5 <= v49)
      {
        break;
      }

      v47 = v48;
      if (v29 <= v48++)
      {
        goto LABEL_63;
      }
    }

    if (v48 == 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = [v28 objectAtIndex:v48 - 2];
    }

    v52 = [v28 objectAtIndex:v47];
  }

LABEL_71:
  if (!v51)
  {
    v55 = 0.0;
    v19 = a6;
    goto LABEL_102;
  }

  [MCAnimationPathKeyframed timeForKeyframe:v51 withPlugTiming:a2];
  v55 = v54;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v51 value];
    v19 = v64;
    goto LABEL_102;
  }

  v98 = v39;
  [v51 timeOffset];
  [v51 duration];
  TimeForKeyframeAttributesInPlug([v51 timeOffsetKind], 0, a2);
  v57 = v56;
  v58 = a5 >= v56 || a5 < v55;
  v59 = [v51 function];
  if (v59)
  {
    v60 = v59;
    v61 = qword_1EF2E0;
    if (!qword_1EF2E0)
    {
      v61 = objc_alloc_init(NSMutableDictionary);
      qword_1EF2E0 = v61;
    }

    v62 = [v61 objectForKey:v60];
    if (v62)
    {
      v63 = v62;
      [(MUMathExpressionFloatBased *)v62 resetAllVariables];
    }

    else
    {
      v65 = [[MUMathExpressionFloatBased alloc] initWithString:v60 error:0];
      if (!v65)
      {
        v19 = a6;
        v39 = v98;
        goto LABEL_101;
      }

      v63 = v65;
      [qword_1EF2E0 setObject:v65 forKey:v60];
    }

    v66 = [v51 functionParameters];
    v39 = v98;
    if (v66)
    {
      [(MUMathExpressionFloatBased *)v63 setVariableValues:v66];
    }

    if (a3)
    {
      [a3 applyToMathExpression:v63 atTime:a5];
    }

    if (v98)
    {
      [(MUMathExpressionFloatBased *)v63 setVariableValues:v98];
    }

    if (v40)
    {
      [(MUMathExpressionFloatBased *)v63 setVariableValues:v40];
    }

    v67 = 0.0;
    if (a5 > v55)
    {
      v67 = 1.0;
      if (a5 < v57)
      {
        v67 = (a5 - v55) / (v57 - v55);
      }
    }

    [v51 innerEaseInControl];
    v69 = v68;
    [v51 innerEaseOutControl];
    v71 = Spline1(v67, 0.0, v69, v70 + 1.0, 1.0, 0.0, 0.0, 1.0, 1.0);
    [v51 functionTimeFactor];
    v73 = v72;
    [v51 functionTimeOffset];
    v75 = v74 + v71 * v73;
    *&v75 = v75;
    [(MUMathExpressionFloatBased *)v63 setValue:@"time" forVariable:v75];
    if (v30)
    {
      *&v76 = a6;
      [(MUMathExpressionFloatBased *)v63 setValue:@"startValue" forVariable:v76];
    }

    [(MUMathExpressionFloatBased *)v63 evaluate];
    v19 = v77;
LABEL_101:
    if (!v58)
    {
      goto LABEL_128;
    }

    goto LABEL_102;
  }

  v19 = a6;
  if (!v58)
  {
    goto LABEL_128;
  }

LABEL_102:
  if (!v52)
  {
    goto LABEL_128;
  }

  [MCAnimationPathKeyframed timeForKeyframe:v52 withPlugTiming:a2];
  v79 = v78;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v52 value];
LABEL_123:
    a6 = v85;
    goto LABEL_124;
  }

  v80 = [v52 function];
  if (v80)
  {
    v81 = v80;
    v82 = qword_1EF2E0;
    if (!qword_1EF2E0)
    {
      v82 = objc_alloc_init(NSMutableDictionary);
      qword_1EF2E0 = v82;
    }

    v83 = [v82 objectForKey:v81];
    if (v83)
    {
      v84 = v83;
      [(MUMathExpressionFloatBased *)v83 resetAllVariables];
LABEL_112:
      v87 = [v52 functionParameters];
      if (v87)
      {
        [(MUMathExpressionFloatBased *)v84 setVariableValues:v87];
      }

      if (a3)
      {
        [a3 applyToMathExpression:v84 atTime:a5];
      }

      if (v39)
      {
        [(MUMathExpressionFloatBased *)v84 setVariableValues:v39];
      }

      if (v40)
      {
        [(MUMathExpressionFloatBased *)v84 setVariableValues:v40];
      }

      [v52 functionTimeOffset];
      *&v88 = v88;
      [(MUMathExpressionFloatBased *)v84 setValue:@"time" forVariable:v88];
      if (v30)
      {
        *&v89 = a6;
        [(MUMathExpressionFloatBased *)v84 setValue:@"startValue" forVariable:v89];
      }

      [(MUMathExpressionFloatBased *)v84 evaluate];
      goto LABEL_123;
    }

    v86 = [[MUMathExpressionFloatBased alloc] initWithString:v81 error:0];
    if (v86)
    {
      v84 = v86;
      [qword_1EF2E0 setObject:v86 forKey:v81];

      goto LABEL_112;
    }
  }

LABEL_124:
  v90 = v79 - v55;
  v91 = (a5 - v55) / (v79 - v55);
  [v51 postControl];
  v93 = v92;
  [v52 preControl];
  v95 = v55 + Spline1(v91, 0.0, v93, v94 + 1.0, 1.0, 0.0, 0.0, 1.0, 1.0) * v90 - v55;
  if (v95 <= 0.0)
  {
    v96 = 0.0;
  }

  else
  {
    v96 = v95 / v90;
  }

  v19 = v19 + (a6 - v19) * v96;
LABEL_128:
  if (a4)
  {
    [a4 setLastValue:v19];
  }

  return v19;
}