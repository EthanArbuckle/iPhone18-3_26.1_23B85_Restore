uint64_t sub_5804(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    (*(*a1 + 272))(a1, 21, -1, -1);
    v2 = a1[2];
  }

  v3 = *(*v2 + 120);

  return v3();
}

uint64_t sub_589C(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    (*(*a1 + 272))(a1, 21, -1, -1);
    v2 = a1[2];
  }

  v3 = **v2;

  return v3();
}

uint64_t sub_593C(uint64_t a1, char *__s1)
{
  if (!__s1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  for (i = *(a1 + 24); !*i || strcmp(__s1, *i); i += 3)
  {
    if (v2 == ++v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t sub_59A8(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 32) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 24) + 24 * a2);
  }
}

float sub_59E8(void *a1)
{
  v2 = (*(*a1 + 304))(a1);
  if (v2 < 0)
  {
    (*(*a1 + 272))(a1, 20, -1, -1);
  }

  return *(a1[3] + 24 * v2 + 16);
}

uint64_t sub_5AD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return 1;
  }
}

void *sub_5B04(uint64_t a1)
{
  v2 = sub_5B88(0x28uLL);
  v3 = (*(*a1 + 288))(a1);
  sub_7E44(v2, v3);
  return v2;
}

void sub_5B70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_5B88(size_t a1)
{
  result = malloc_type_malloc(a1, 0x8DBA93DDuLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 5;
    exception[1] = 0;
    exception[2] = 0;
  }

  return result;
}

void sub_5BD4(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void *sub_5BF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(*v2 + 112);

    return v3();
  }

  else
  {
    result = sub_5B88(0x18uLL);
    *result = off_1AA288;
    result[1] = 0;
    *(result + 4) = 0;
  }

  return result;
}

void *sub_5C68(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 32) <= a2 || !*(*(a1 + 24) + 24 * a2))
  {
    result = sub_5B88(0x18uLL);
    *result = off_1AA288;
    result[1] = 0;
    *(result + 4) = 0;
  }

  else
  {
    v3 = *(*a1 + 112);

    return v3();
  }

  return result;
}

uint64_t sub_5CF8(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 288))(a2);
  v4 = *(*a1 + 112);

  return v4(a1, v3);
}

uint64_t sub_5D80(uint64_t a1, unsigned int a2, float a3)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 32) <= a2)
  {
    return 0;
  }

  *(*(a1 + 24) + 24 * a2 + 16) = a3;
  return 1;
}

uint64_t sub_5DB0(uint64_t a1, float a2)
{
  v4 = (*(*a1 + 304))(a1);
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = *(*a1 + 352);
  v5.n128_f32[0] = a2;

  return v6(a1, v4, v5);
}

uint64_t sub_5E64(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    (*(*result + 96))(result);
    if ((*(**(a1 + 16) + 40))(*(a1 + 16)))
    {
      if (!(*(**(a1 + 16) + 24))(*(a1 + 16)))
      {
        v3 = (***(a1 + 16))(*(a1 + 16));
        v4 = *(a1 + 16);
        *(a1 + 16) = 0;
        v5 = sub_5B88(0x18uLL);
        v5[4] = v3;
        *(a1 + 16) = v5;
        *v5 = off_1AA288;
        *(v5 + 1) = a1;
        if (v4)
        {
          (*(*v4 + 152))(v4);
        }
      }
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    result = (*(*v7 + 88))(v7, a1);
    if (v6 >= 1)
    {
      v9 = v8;
      do
      {
        v10 = (*(*a1 + 304))(a1, *v9);
        if (v10 == -1)
        {
          if (*v9)
          {
            operator delete[]();
          }

          if (v9[1])
          {
            operator delete[]();
          }
        }

        else
        {
          v11 = *(a1 + 24);
          if (*(v11 + 24 * v10))
          {
            operator delete[]();
          }

          if (*(v11 + 24 * v10 + 8))
          {
            operator delete[]();
          }

          v12 = *v9;
          v13 = v11 + 24 * v10;
          *(v13 + 16) = v9[2];
          *v13 = v12;
        }

        v9 += 3;
        --v6;
      }

      while (v6);
LABEL_21:

      operator delete[]();
    }

    if (v8)
    {
      goto LABEL_21;
    }
  }

  return result;
}

void sub_6120(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *(v1 + 16);
  if (v3)
  {
    (*(*v3 + 152))(v3);
  }

  *(v1 + 16) = v2;
  __cxa_end_catch();
  JUMPOUT(0x5F98);
}

void sub_61E4(_DWORD *a1, int a2)
{
  if (a2 < 0 || a1[8] <= a2)
  {
    (*(*a1 + 272))(a1, 20, -1, -1);
  }

  operator new[]();
}

void sub_6358(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    (*(*v2 + 272))(v2, *v4, -1, -1);
  }

  else
  {
    (*(*v2 + 272))(v2, 5, -1, -1);
  }

  __cxa_end_catch();
  JUMPOUT(0x6348);
}

uint64_t sub_6410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 304))(a1);
  v6 = *(*a1 + 368);

  return v6(a1, v5, a3);
}

uint64_t sub_64B0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 32) <= a2)
  {
    return 0;
  }

  v3 = *(a1 + 24) + 24 * a2;
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (a3)
  {
    operator new[]();
  }

  if (v4)
  {
    operator delete[]();
  }

  return 1;
}

void sub_6574(void *a1)
{
  __cxa_begin_catch(a1);
  *(v2[3] + 24 * v3 + 8) = v1;
  (*(*v2 + 272))(v2, 5, -1, -1);
  __cxa_end_catch();
  if (!v1)
  {
    JUMPOUT(0x6554);
  }

  JUMPOUT(0x653CLL);
}

uint64_t sub_65F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a1 + 304))(a1);
  v8 = *(*a1 + 384);

  return v8(a1, v7, a3, a4);
}

uint64_t sub_66A0(void *a1, int a2)
{
  if (!a1[2])
  {
    (*(*a1 + 272))(a1, 21, -1, -1);
  }

  if (a2 < 1)
  {
    return 0;
  }

  v4 = *(*a1[2] + 8);

  return v4();
}

uint64_t sub_6758(void *a1, uint64_t a2, int a3)
{
  if (!a1[2])
  {
    (*(*a1 + 272))(a1, 21, -1, -1);
  }

  if (a3 < 1)
  {
    return 0;
  }

  v6 = *a1[2];
  if (a2)
  {
    v7 = *(v6 + 16);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_686C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    operator delete[]();
  }

  *a2 = 0;
  return result;
}

uint64_t sub_68AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      (*(*v4 + 152))(v4);
    }

    *(a1 + 16) = a3;
    if (a3)
    {
      a3[1] = a1;
      (*(*a3 + 88))(a3, a1);
    }
  }

  return v6;
}

uint64_t sub_6950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 304))(a1);
  if ((v5 & 0x80000000) != 0)
  {
    (*(*a1 + 272))(a1, 20, -1, -1);
  }

  v6 = *(*a1 + 80);

  return v6(a1, v5, a3);
}

uint64_t sub_6A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 312))(a1);
  v7 = v6;
  if ((a2 & 0x80000000) != 0 || (*(a1 + 32) > a2 ? (v8 = v6 == 0) : (v8 = 1), v8))
  {
    (*(*a1 + 272))(a1, 20, -1, -1);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    (*(*v9 + 80))(v9, a2, a3);
    if (!(*(*a3 + 56))(a3, v7))
    {
      v10 = *(a1 + 24);
      v11 = v10 + 24 * a2;
      *(v11 + 16) = 0;
      if (*(v11 + 8))
      {
        operator delete[]();
      }

      v12 = (v10 + 24 * a2);
      v12[1] = 0;
      if (*v12)
      {
        operator delete[]();
      }

      *(v10 + 24 * a2) = 0;
    }
  }

  else
  {
    (*(*a1 + 272))(a1, 21, -1, -1);
  }

  v13 = *(**(a1 + 16) + 96);

  return v13();
}

uint64_t sub_6C1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    __cxa_bad_typeid();
  }

  if (!sub_8C10(*(*v2 - 8), *(*a2 - 8)))
  {
    return 1;
  }

  v4 = *(**(a1 + 16) + 128);

  return v4();
}

uint64_t sub_6CC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2 || !sub_8C10(*(*v2 - 8), *(*a2 - 8)))
  {
    return 0;
  }

  v4 = *(**(a1 + 16) + 136);

  return v4();
}

uint64_t sub_6D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!(v2 | v3))
  {
    return 0;
  }

  if ((v2 == 0) != (v3 == 0))
  {
    return 1;
  }

  return (*(*v2 + 128))();
}

uint64_t sub_6DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 | *(a2 + 16))
  {
    return (*(*v2 + 136))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_6E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    if (v3)
    {
      (*(*v3 + 152))(v3);
      *(a1 + 16) = 0;
    }

    if (*(a1 + 32) >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *(a1 + 24);
        if (*(v7 + v5))
        {
          operator delete[]();
        }

        if (*(v7 + v5 + 8))
        {
          operator delete[]();
        }

        ++v6;
        v5 += 24;
      }

      while (v6 < *(a1 + 32));
    }

    if (*(a1 + 24))
    {
      operator delete[]();
    }

    *(a1 + 32) = 0;
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
    (*(*a2 + 88))(a2, a1);
    (*(*a1 + 96))(a1);
  }

  return a1;
}

uint64_t sub_6F5C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      (*(*v4 + 152))(v4);
      *(a1 + 16) = 0;
    }

    if (*(a1 + 32) >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *(a1 + 24);
        if (*(v7 + v5))
        {
          operator delete[]();
        }

        if (*(v7 + v5 + 8))
        {
          operator delete[]();
        }

        ++v6;
        v5 += 24;
      }

      while (v6 < *(a1 + 32));
    }

    if (*(a1 + 24))
    {
      operator delete[]();
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 120))(v8);
      *(a1 + 16) = v9;
      (*(*v9 + 88))(v9, a1);
      (*(*a1 + 96))(a1);
    }

    else
    {
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

uint64_t *sub_70EC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  if (v4 == a2)
  {
    v2 = (*(*v4 + 120))(v4);
  }

  v5 = sub_5B88(0x20uLL);
  sub_18500(v5, a1[2], v2);
  *v5 = off_1A8158;
  a1[2] = v5;
  sub_26848(v5, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_71BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_71D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A8158;
  return result;
}

uint64_t *sub_7208(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (*(*v3 + 120))(v3);
    v5 = sub_5B88(0x20uLL);
    sub_18500(v5, a1[2], v4);
    *v5 = off_1A8158;
    a1[2] = v5;
    sub_26848(v5, a1);
    (*(*a1 + 96))(a1);
  }

  return a1;
}

void sub_72D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_72E8(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  if (v4 == a2)
  {
    v2 = (*(*v4 + 120))(v4);
  }

  v5 = sub_5B88(0x20uLL);
  sub_18500(v5, a1[2], v2);
  *v5 = off_1A8298;
  a1[2] = v5;
  sub_26848(v5, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_73B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_73D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A8298;
  return result;
}

uint64_t *sub_7404(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (*(*v3 + 120))(v3);
    v5 = sub_5B88(0x20uLL);
    sub_18500(v5, a1[2], v4);
    *v5 = off_1A8298;
    a1[2] = v5;
    sub_26848(v5, a1);
    (*(*a1 + 96))(a1);
  }

  return a1;
}

void sub_74CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_74E4(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  if (v4 == a2)
  {
    v2 = (*(*v4 + 120))(v4);
  }

  v5 = sub_5B88(0x20uLL);
  sub_18500(v5, a1[2], v2);
  *v5 = off_1A83D8;
  a1[2] = v5;
  sub_26848(v5, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_75B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_75CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A83D8;
  return result;
}

uint64_t *sub_7600(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (*(*v3 + 120))(v3);
    v5 = sub_5B88(0x20uLL);
    sub_18500(v5, a1[2], v4);
    *v5 = off_1A83D8;
    a1[2] = v5;
    sub_26848(v5, a1);
    (*(*a1 + 96))(a1);
  }

  else
  {
    v6 = a1[2];
    if (v6)
    {
      (*(*v6 + 152))(v6);
    }

    v7 = sub_5B88(0x18uLL);
    *v7 = off_1AA288;
    v7[1] = 0;
    *(v7 + 4) = 0;
    a1[2] = v7;
  }

  return a1;
}

void sub_7724(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_773C(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  if (v4 == a2)
  {
    v2 = (*(*v4 + 120))(v4);
  }

  v5 = sub_5B88(0x20uLL);
  sub_18500(v5, a1[2], v2);
  *v5 = off_1A8518;
  a1[2] = v5;
  sub_26848(v5, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_780C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_7824(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A8518;
  return result;
}

uint64_t *sub_7858(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    (*(*a1 + 272))(a1, 1, -1, -1);
    v3 = *(a2 + 16);
  }

  v5 = (*(*v3 + 120))(v3);
  v6 = sub_5B88(0x20uLL);
  sub_18500(v6, a1[2], v5);
  *v6 = off_1A8518;
  a1[2] = v6;
  sub_26848(v6, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_7964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_797C(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  if (v4 == a2)
  {
    v2 = (*(*v4 + 120))(v4);
  }

  v5 = sub_5B88(0x20uLL);
  sub_18500(v5, a1[2], v2);
  *v5 = off_1A8658;
  a1[2] = v5;
  sub_26848(v5, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_7A4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_7A64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A8658;
  return result;
}

uint64_t *sub_7A98(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    (*(*a1 + 272))(a1, 1, -1, -1);
    v3 = *(a2 + 16);
  }

  v5 = (*(*v3 + 120))(v3);
  v6 = sub_5B88(0x20uLL);
  sub_18500(v6, a1[2], v5);
  *v6 = off_1A8658;
  a1[2] = v6;
  sub_26848(v6, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_7BA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7BBC(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1A5390;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_7BE8(void *result)
{
  *result = off_1A5580;
  result[1] = 0;
  return result;
}

uint64_t sub_7C08(uint64_t a1, uint64_t *a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  a2[3] = a1;
  *(a1 + 16) = 0;
  v3 = a1 + 16;
  *a1 = off_1A5390;
  *(a1 + 8) = 0;
  v4 = a2[1];
  if (*v4 == 61)
  {
    a2[1] = (v4 + 1);
  }

  sub_D118(a1, a2, a1 + 16);
  if (*v3)
  {
    *(*v3 + 8) = a1;
  }

  (*(*a1 + 96))(a1);
  return a1;
}

void sub_7CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  *v10 = off_1A5580;
  v10[1] = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_7D80(uint64_t a1, void *a2)
{
  *a1 = off_1A5390;
  *(a1 + 8) = 0;
  a2[1] = a1;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  (*(*a2 + 88))(a2, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_7E20(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_7E44(uint64_t a1, void *a2)
{
  v3 = off_1A5390;
  *a1 = off_1A5390;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  if (a2)
  {
    a2[1] = a1;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    (*(*a2 + 88))(a2, a1);
    v3 = *a1;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (v3[12])(a1);
  return a1;
}

void sub_7EF8(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_7F18(uint64_t a1, float a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1A5390;
  v4 = sub_5B88(0x18uLL);
  v4[4] = a2;
  *v4 = off_1AA288;
  *(v4 + 1) = a1;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_8050(uint64_t a1, char *__s)
{
  *a1 = off_1A5390;
  *(a1 + 8) = 0;
  if (!__s)
  {
    LODWORD(xmmword_1EF218) = 21;
    *(&xmmword_1EF218 + 1) = -1;
    qword_1EF228 = -1;
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = qword_1EF228;
    *exception = xmmword_1EF218;
    exception[2] = v7;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v8 = __s;
  v9 = __s;
  v10 = &__s[strlen(__s) - 1];
  v11 = a1;
  if (*__s == 61)
  {
    v9 = __s + 1;
  }

  *(a1 + 16) = 0;
  sub_D118(a1, &v8, a1 + 16);
  v4 = *(a1 + 16);
  if (v4)
  {
    v4[1] = a1;
  }

  (*(*v4 + 88))(v4, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_8210(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_8250(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1A5390;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (*(*v3 + 120))(v3);
    *(a1 + 16) = v4;
    (*(*v4 + 88))(v4, a1);
    (*(*a1 + 96))(a1);
  }

  return a1;
}

void sub_831C(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_8340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0;
  *a1 = off_1A5390;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  (*(*a3 + 288))(a3);
  v5 = (*(*a1 + 184))(a1, a2);
  *(a1 + 16) = v5;
  v5[1] = a1;
  (*(*v5 + 88))(v5, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_8468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  *v12 = off_1A5580;
  v12[1] = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_8520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_1A5390;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v7 = (*(*a2 + 288))(a2);
  v8 = (*(*a4 + 288))(a4);
  v9 = (*(*a1 + 200))(a1, a3, v7, v8);
  *(a1 + 16) = v9;
  v9[1] = a1;
  (*(*v9 + 88))(v9, a1);
  (*(*a1 + 96))(a1);
  return a1;
}

void sub_8668(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_868C(uint64_t a1)
{
  *a1 = off_1A5390;
  if (*(a1 + 24))
  {
    if (*(a1 + 32) < 1)
    {
      goto LABEL_10;
    }

    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 24);
      if (*(v4 + v2))
      {
        operator delete[]();
      }

      if (*(v4 + v2 + 8))
      {
        operator delete[]();
      }

      ++v3;
      v2 += 24;
    }

    while (v3 < *(a1 + 32));
    if (*(a1 + 24))
    {
LABEL_10:
      operator delete[]();
    }

    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    (*(*v5 + 152))(v5);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1A5580;
  return a1;
}

void sub_87C4(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

void sub_87E8(void *a1)
{
  sub_868C(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_8830(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_8848(uint64_t a1, char *__s)
{
  strlen(__s);
  *(a1 + 24) = 0;
  operator new[]();
}

uint64_t sub_89E8(uint64_t a1, char *__s2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = v5 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    while (!*v4 || strcmp(*v4, __s2))
    {
      ++v7;
      v4 += 3;
      if (v5 == v7)
      {
        v7 = v5;
        goto LABEL_13;
      }
    }
  }

  if (v7 == v5)
  {
LABEL_13:
    (*(*a1 + 416))(a1, __s2);
  }

  return v7;
}

BOOL sub_8C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_8C64(void *result)
{
  *result = off_1A5580;
  result[1] = 0;
  return result;
}

uint64_t sub_8C88@<X0>(uint64_t result@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = result;
  *a4 = 0;
  *(a4 + 8) = a3;
  *(a4 + 16) = 1;
  v8 = *a3;
  if (v8 > 0x39)
  {
    if (*a3 > 0x3Eu)
    {
      if (*a3 > 0x7Bu)
      {
        if (v8 == 124)
        {
          if (a3[1] == 124)
          {
            v9 = 16;
            goto LABEL_55;
          }

          v9 = 19;
          goto LABEL_58;
        }

        if (v8 == 126)
        {
          v9 = 21;
          goto LABEL_58;
        }
      }

      else
      {
        if (v8 == 63)
        {
          v9 = 23;
          goto LABEL_58;
        }

        if (v8 == 94)
        {
          v9 = 8;
          goto LABEL_58;
        }
      }
    }

    else if (*a3 > 0x3Cu)
    {
      if (v8 != 61)
      {
        if (a3[1] == 61)
        {
          v9 = 14;
          goto LABEL_55;
        }

        v9 = 10;
        goto LABEL_58;
      }

      if (a3[1] == 61)
      {
        v9 = 11;
        goto LABEL_55;
      }
    }

    else
    {
      if (v8 == 58)
      {
        v9 = 22;
        goto LABEL_58;
      }

      if (v8 == 60)
      {
        if (a3[1] == 61)
        {
          v9 = 13;
LABEL_55:
          *a4 = v9;
          *(a4 + 16) = 2;
          goto LABEL_59;
        }

        v9 = 9;
        goto LABEL_58;
      }
    }

    goto LABEL_43;
  }

  if (*a3 <= 0x29u)
  {
    switch(v8)
    {
      case '!':
        v10 = a3[1];
        if (v10 == 38)
        {
          v9 = 20;
          goto LABEL_55;
        }

        if (v10 == 61)
        {
          v9 = 12;
          goto LABEL_55;
        }

        v9 = 17;
        goto LABEL_58;
      case '%':
        v9 = 7;
        goto LABEL_58;
      case '&':
        if (a3[1] == 38)
        {
          v9 = 15;
          goto LABEL_55;
        }

        v9 = 18;
LABEL_58:
        *a4 = v9;
        goto LABEL_59;
    }

    goto LABEL_43;
  }

  if (*a3 > 0x2Cu)
  {
    if (v8 == 45)
    {
      result = (*(*result + 216))(result, a2, a3);
      switch(result)
      {
        case 2:
          goto LABEL_49;
        case 1:
          v9 = 2;
          goto LABEL_58;
        case 0:
          v9 = 4;
          goto LABEL_58;
      }
    }

    else if (v8 == 47)
    {
      v9 = 6;
      goto LABEL_58;
    }
  }

  else
  {
    if (v8 == 42)
    {
      v9 = 5;
      goto LABEL_58;
    }

    if (v8 == 43)
    {
      result = (*(*result + 216))(result, a2, a3);
      if ((result - 1) >= 2)
      {
        if (!result)
        {
          v9 = 3;
          goto LABEL_58;
        }

        goto LABEL_43;
      }

LABEL_49:
      v9 = 0;
      *a4 = 0;
      goto LABEL_59;
    }
  }

LABEL_43:
  result = (*(*v6 + 272))(v6, 26, &a3[-*a2], &a3[-*a2]);
  v9 = 0;
LABEL_59:
  *(a4 + 20) = word_162DC0[v9];
  return result;
}

uint64_t sub_9074(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 16) - *(a2 + 8);
  if (v5 > 5)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  v8 = v5 + 1;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    if (v5 >= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = v5;
    }

    do
    {
      __s1[v10] = __toupper(*(*(a2 + 8) + v10));
    }

    while (v10++ < v11);
  }

  v13 = 0;
  __s1[v8] = 0;
  while (strncmp(__s1, (&off_1EF1F8)[v13], 6uLL))
  {
    if (++v13 == 4)
    {
      return 0;
    }
  }

  v14 = sub_5B88(0x18uLL);
  v15 = *&qword_1640A0[v13];
  *v14 = off_1AA288;
  v14[1] = 0;
  *&v15 = v15;
  *(v14 + 4) = LODWORD(v15);
  *a3 = v14;
  return 1;
}

void *sub_9184(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  switch(a2)
  {
    case 1:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = &off_1A56B0;
      goto LABEL_35;
    case 2:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = &off_1A57E8;
      goto LABEL_35;
    case 3:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = &off_1A5920;
      goto LABEL_35;
    case 4:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A5A58;
      goto LABEL_35;
    case 5:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A5B90;
      goto LABEL_35;
    case 6:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A5CC8;
      goto LABEL_35;
    case 7:
      v10 = sub_5B88(0x20uLL);
      sub_F128(v10, a9);
      return v10;
    case 8:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A5F38;
      goto LABEL_35;
    case 9:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A6070;
      goto LABEL_35;
    case 10:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A61A8;
      goto LABEL_35;
    case 11:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A62E0;
      goto LABEL_35;
    case 12:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A6418;
      goto LABEL_35;
    case 13:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A6550;
      goto LABEL_35;
    case 14:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A6688;
      goto LABEL_35;
    case 15:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A67C0;
      goto LABEL_35;
    case 16:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A68F8;
      goto LABEL_35;
    case 17:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A6A30;
      goto LABEL_35;
    case 18:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A6B68;
      goto LABEL_35;
    case 19:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A6CA0;
      goto LABEL_35;
    case 20:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = &off_1A6DD8;
      goto LABEL_35;
    case 21:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = &off_1A6F10;
      goto LABEL_35;
    case 22:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = &off_1A7048;
      goto LABEL_35;
    case 23:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A7180;
      goto LABEL_35;
    case 24:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A72B8;
      goto LABEL_35;
    case 25:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A73F0;
      goto LABEL_35;
    case 26:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A7528;
      goto LABEL_35;
    case 27:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A7660;
      goto LABEL_35;
    case 28:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A7798;
      goto LABEL_35;
    case 29:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A78D0;
      goto LABEL_35;
    case 30:
      v10 = sub_5B88(0x18uLL);
      sub_D9DC(v10, a9);
      v11 = off_1A7A08;
      goto LABEL_35;
    case 31:
      v10 = sub_5B88(0x20uLL);
      sub_15A7C(v10, a9, a10);
      v11 = off_1A7B40;
LABEL_35:
      *v10 = v11;
      break;
    case 32:
      operator new[]();
    case 33:
      operator new[]();
    default:
      (*(*a1 + 272))(a1, 25, -1, -1);
      v10 = 0;
      break;
  }

  return v10;
}

void sub_9AA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_9BC0(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = &off_1A56B0;
  return result;
}

void *sub_9BF4(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = &off_1A57E8;
  return result;
}

void *sub_9C28(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = &off_1A5920;
  return result;
}

void *sub_9C5C(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A5A58;
  return result;
}

void *sub_9C90(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A5B90;
  return result;
}

void *sub_9CC4(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A5CC8;
  return result;
}

void *sub_9CFC(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A5F38;
  return result;
}

void *sub_9D30(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A6070;
  return result;
}

void *sub_9D64(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A61A8;
  return result;
}

void *sub_9D98(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A62E0;
  return result;
}

void *sub_9DCC(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A6418;
  return result;
}

void *sub_9E00(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A6550;
  return result;
}

void *sub_9E34(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A6688;
  return result;
}

void *sub_9E68(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A67C0;
  return result;
}

void *sub_9E9C(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A68F8;
  return result;
}

void *sub_9ED0(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A6A30;
  return result;
}

void *sub_9F04(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A6B68;
  return result;
}

void *sub_9F38(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A6CA0;
  return result;
}

void *sub_9F6C(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = &off_1A6DD8;
  return result;
}

void *sub_9FA0(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = &off_1A6F10;
  return result;
}

void *sub_9FD4(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = &off_1A7048;
  return result;
}

void *sub_A008(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A7180;
  return result;
}

void *sub_A03C(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A72B8;
  return result;
}

void *sub_A070(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A73F0;
  return result;
}

void *sub_A0A4(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A7528;
  return result;
}

void *sub_A0D8(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A7660;
  return result;
}

void *sub_A10C(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A7798;
  return result;
}

void *sub_A140(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A78D0;
  return result;
}

void *sub_A174(void *a1, uint64_t a2)
{
  result = sub_D9DC(a1, a2);
  *result = off_1A7A08;
  return result;
}

void *sub_A1A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_15A7C(a1, a2, a3);
  *result = off_1A7B40;
  return result;
}

uint64_t sub_A244(uint64_t a1, uint64_t *a2, int a3, uint64_t **a4)
{
  v5 = a2[1];
  v6 = a2[2];
  if (v5 > v6)
  {
    v7 = 0;
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v7 = a2[1];
  while (*v7 != 40)
  {
    if (++v7 > v6)
    {
      v7 = 0;
      break;
    }
  }

  if (v5 > v6)
  {
    goto LABEL_10;
  }

  while (*v6 != 41)
  {
    if (--v6 < v5)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v17[0] = *a2;
  v17[1] = v7;
  v8 = a2[3];
  v17[2] = v6;
  v17[3] = v8;
  switch(a3)
  {
    case 1:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = &off_1A56B0;
      goto LABEL_45;
    case 2:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = &off_1A57E8;
      goto LABEL_45;
    case 3:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = &off_1A5920;
      goto LABEL_45;
    case 4:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A5A58;
      goto LABEL_45;
    case 5:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A5B90;
      goto LABEL_45;
    case 6:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A5CC8;
      goto LABEL_45;
    case 7:
      v9 = sub_5B88(0x20uLL);
      result = sub_EFE0(v9, v17);
      goto LABEL_46;
    case 8:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A5F38;
      goto LABEL_45;
    case 9:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A6070;
      goto LABEL_45;
    case 10:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A61A8;
      goto LABEL_45;
    case 11:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A62E0;
      goto LABEL_45;
    case 12:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A6418;
      goto LABEL_45;
    case 13:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A6550;
      goto LABEL_45;
    case 14:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A6688;
      goto LABEL_45;
    case 15:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A67C0;
      goto LABEL_45;
    case 16:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A68F8;
      goto LABEL_45;
    case 17:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A6A30;
      goto LABEL_45;
    case 18:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A6B68;
      goto LABEL_45;
    case 19:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A6CA0;
      goto LABEL_45;
    case 20:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = &off_1A6DD8;
      goto LABEL_45;
    case 21:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = &off_1A6F10;
      goto LABEL_45;
    case 22:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = &off_1A7048;
      goto LABEL_45;
    case 23:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A7180;
      goto LABEL_45;
    case 24:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A72B8;
      goto LABEL_45;
    case 25:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A73F0;
      goto LABEL_45;
    case 28:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A7798;
      goto LABEL_45;
    case 29:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A78D0;
      goto LABEL_45;
    case 30:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v17);
      v11 = off_1A7A08;
      goto LABEL_45;
    case 31:
      v9 = sub_5B88(0x20uLL);
      result = sub_1568C(v9, v17);
      v11 = off_1A7B40;
LABEL_45:
      *v9 = v11;
LABEL_46:
      *a4 = v9;
      break;
    case 32:
      v12 = sub_5B88(0x28uLL);
      sub_16518(v12, v17);
    case 33:
      v14 = sub_5B88(0x28uLL);
      sub_16518(v14, v17);
    case 34:
      v13 = sub_5B88(0x28uLL);
      sub_16518(v13, v17);
    case 35:
      v15 = sub_5B88(0x28uLL);
      sub_16518(v15, v17);
    default:
      v16 = *(*a1 + 272);

      result = v16();
      break;
  }

  return result;
}

void sub_A970(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_AA94(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A5F38;
  return result;
}

uint64_t *sub_AAC8(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A6070;
  return result;
}

uint64_t *sub_AAFC(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A61A8;
  return result;
}

uint64_t *sub_AB30(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A62E0;
  return result;
}

uint64_t *sub_AB64(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A6418;
  return result;
}

uint64_t *sub_AB98(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A6550;
  return result;
}

uint64_t *sub_ABCC(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = &off_1A5920;
  return result;
}

uint64_t *sub_AC00(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = &off_1A56B0;
  return result;
}

uint64_t *sub_AC34(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = &off_1A57E8;
  return result;
}

uint64_t *sub_AC68(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A5A58;
  return result;
}

uint64_t *sub_AC9C(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A5B90;
  return result;
}

uint64_t *sub_ACD0(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A5CC8;
  return result;
}

uint64_t *sub_AD04(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A6688;
  return result;
}

uint64_t *sub_AD38(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A67C0;
  return result;
}

uint64_t *sub_AD6C(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A68F8;
  return result;
}

uint64_t *sub_ADA0(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A6A30;
  return result;
}

uint64_t *sub_ADD4(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A6B68;
  return result;
}

uint64_t *sub_AE08(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A6CA0;
  return result;
}

uint64_t *sub_AE3C(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = &off_1A6DD8;
  return result;
}

uint64_t *sub_AE70(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = &off_1A6F10;
  return result;
}

uint64_t *sub_AEA4(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = &off_1A7048;
  return result;
}

uint64_t *sub_AED8(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A7180;
  return result;
}

uint64_t *sub_AF0C(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A72B8;
  return result;
}

uint64_t *sub_AF40(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A73F0;
  return result;
}

uint64_t *sub_AF78(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A7798;
  return result;
}

uint64_t *sub_AFAC(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A78D0;
  return result;
}

uint64_t *sub_AFE0(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A7A08;
  return result;
}

void *sub_B014(void *a1, void *a2)
{
  result = sub_1568C(a1, a2);
  *result = off_1A7B40;
  return result;
}

void *sub_B118(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if ((!a3 || !a4) && (a2 > 0x15 || ((1 << a2) & 0x220004) == 0))
  {
    (*(*a1 + 272))(a1, 21, -1, -1);
  }

  switch(a2)
  {
    case 2u:
      if (!a4)
      {
        (*(*a1 + 272))(a1, 21, -1, -1);
      }

      v8 = sub_5B88(0x18uLL);
      sub_D9DC(v8, a4);
      v9 = off_1A5CC8;
      goto LABEL_36;
    case 3u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A8158;
      goto LABEL_36;
    case 4u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A8298;
      goto LABEL_36;
    case 5u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A83D8;
      goto LABEL_36;
    case 6u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A8518;
      goto LABEL_36;
    case 7u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A8658;
      goto LABEL_36;
    case 8u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A8798;
      goto LABEL_36;
    case 9u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A88D8;
      goto LABEL_36;
    case 0xAu:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A8A18;
      goto LABEL_36;
    case 0xBu:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A8B58;
      goto LABEL_36;
    case 0xCu:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A8C98;
      goto LABEL_36;
    case 0xDu:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A8DD8;
      goto LABEL_36;
    case 0xEu:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A8F18;
      goto LABEL_36;
    case 0xFu:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A9058;
      goto LABEL_36;
    case 0x10u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A9198;
      goto LABEL_36;
    case 0x11u:
      if (!a4)
      {
        (*(*a1 + 272))(a1, 21, -1, -1);
      }

      v8 = sub_5B88(0x18uLL);
      sub_D9DC(v8, a4);
      v9 = off_1A7528;
      goto LABEL_36;
    case 0x12u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A92D8;
      goto LABEL_36;
    case 0x13u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A9418;
      goto LABEL_36;
    case 0x14u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A9558;
      goto LABEL_36;
    case 0x15u:
      if (!a4)
      {
        (*(*a1 + 272))(a1, 21, -1, -1);
      }

      v8 = sub_5B88(0x18uLL);
      sub_D9DC(v8, a4);
      v9 = off_1A7660;
      goto LABEL_36;
    case 0x16u:
      v8 = sub_5B88(0x20uLL);
      sub_18500(v8, a3, a4);
      v9 = off_1A9820;
LABEL_36:
      *v8 = v9;
      break;
    case 0x17u:
      v8 = sub_5B88(0x20uLL);
      sub_228A8(v8, a3, a4);
      break;
    default:
      (*(*a1 + 272))(a1, 26, -1, -1);
      v8 = 0;
      break;
  }

  return v8;
}

void sub_B738(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_B7FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A8798;
  return result;
}

void *sub_B830(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A88D8;
  return result;
}

void *sub_B864(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A8A18;
  return result;
}

void *sub_B898(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A8B58;
  return result;
}

void *sub_B8CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A8C98;
  return result;
}

void *sub_B900(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A8DD8;
  return result;
}

void *sub_B934(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A8F18;
  return result;
}

void *sub_B968(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A9058;
  return result;
}

void *sub_B99C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A9198;
  return result;
}

void *sub_B9D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A92D8;
  return result;
}

void *sub_BA04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A9418;
  return result;
}

void *sub_BA38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A9558;
  return result;
}

void *sub_BA70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18500(a1, a2, a3);
  *result = off_1A9820;
  return result;
}

uint64_t *sub_BAA4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t **a4)
{
  v5 = *(a2 + 3);
  v13[2] = *(a2 + 2);
  v13[3] = v5;
  v6 = *a2;
  v13[0] = *a2;
  v14 = v6;
  v7 = *(a3 + 8);
  v15 = v7 - 1;
  v16 = v5;
  v13[1] = v7 + *(a3 + 16);
  switch(*a3)
  {
    case 2:
      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v13);
      v11 = off_1A5CC8;
      goto LABEL_31;
    case 3:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A8158;
      goto LABEL_31;
    case 4:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A8298;
      goto LABEL_31;
    case 5:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A83D8;
      goto LABEL_31;
    case 6:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A8518;
      goto LABEL_31;
    case 7:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A8658;
      goto LABEL_31;
    case 8:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A8798;
      goto LABEL_31;
    case 9:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A88D8;
      goto LABEL_31;
    case 0xA:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A8A18;
      goto LABEL_31;
    case 0xB:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A8B58;
      goto LABEL_31;
    case 0xC:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A8C98;
      goto LABEL_31;
    case 0xD:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A8DD8;
      goto LABEL_31;
    case 0xE:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A8F18;
      goto LABEL_31;
    case 0xF:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A9058;
      goto LABEL_31;
    case 0x10:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A9198;
      goto LABEL_31;
    case 0x11:
      if (((*(*a1 + 248))(a1, &v14) & 1) == 0)
      {
        (*(*a1 + 280))(a1, &v14);
        (*(*a1 + 272))(a1, 23, *(&v14 + 1) - v14, v15 - v14);
      }

      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v13);
      v11 = off_1A7528;
      goto LABEL_31;
    case 0x12:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A92D8;
      goto LABEL_31;
    case 0x13:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A9418;
      goto LABEL_31;
    case 0x14:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A9558;
      goto LABEL_31;
    case 0x15:
      if (((*(*a1 + 248))(a1, &v14) & 1) == 0)
      {
        (*(*a1 + 280))(a1, &v14);
        (*(*a1 + 272))(a1, 23, *(&v14 + 1) - v14, v15 - v14);
      }

      v9 = sub_5B88(0x18uLL);
      result = sub_D8C0(v9, v13);
      v11 = off_1A7660;
      goto LABEL_31;
    case 0x16:
      v9 = sub_5B88(0x20uLL);
      result = sub_18368(v9, &v14, v13);
      v11 = off_1A9820;
LABEL_31:
      *v9 = v11;
      goto LABEL_32;
    case 0x17:
      v9 = sub_5B88(0x20uLL);
      result = sub_226CC(v9, &v14, v13);
LABEL_32:
      *a4 = v9;
      break;
    default:
      v12 = *(*a1 + 272);

      result = v12();
      break;
  }

  return result;
}

void sub_C130(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_C1F4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A8158;
  return result;
}

uint64_t *sub_C228(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A8298;
  return result;
}

uint64_t *sub_C25C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A83D8;
  return result;
}

uint64_t *sub_C290(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A8518;
  return result;
}

uint64_t *sub_C2C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A8658;
  return result;
}

uint64_t *sub_C2F8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A8798;
  return result;
}

uint64_t *sub_C32C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A88D8;
  return result;
}

uint64_t *sub_C360(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A8A18;
  return result;
}

uint64_t *sub_C394(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A8B58;
  return result;
}

uint64_t *sub_C3C8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A8C98;
  return result;
}

uint64_t *sub_C3FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A8DD8;
  return result;
}

uint64_t *sub_C430(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A8F18;
  return result;
}

uint64_t *sub_C464(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A9058;
  return result;
}

uint64_t *sub_C498(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A9198;
  return result;
}

uint64_t *sub_C4CC(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A7528;
  return result;
}

uint64_t *sub_C500(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A92D8;
  return result;
}

uint64_t *sub_C534(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A9418;
  return result;
}

uint64_t *sub_C568(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A9558;
  return result;
}

uint64_t *sub_C59C(uint64_t *a1, uint64_t *a2)
{
  result = sub_D8C0(a1, a2);
  *result = off_1A7660;
  return result;
}

uint64_t *sub_C5D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_18368(a1, a2, a3);
  *result = off_1A9820;
  return result;
}

uint64_t sub_C608(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v6 = a3;
  do
  {
    v8 = *--v6;
    v7 = v8;
    if (v8 < 0)
    {
      v9 = __maskrune(v7, 0x4000uLL);
    }

    else
    {
      v9 = _DefaultRuneLocale.__runetype[v7] & 0x4000;
    }

    v10 = a2[1];
    if (v9)
    {
      v11 = v6 > v10;
    }

    else
    {
      v11 = 0;
    }
  }

  while (v11);
  if (v6 < v10)
  {
    v12 = *a3;
    if (v12 == 45 || v12 == 43)
    {
      v13 = a3;
      do
      {
        v15 = *++v13;
        v14 = v15;
        if (v15 < 0)
        {
          v16 = __maskrune(v14, 0x4000uLL);
        }

        else
        {
          v16 = _DefaultRuneLocale.__runetype[v14] & 0x4000;
        }

        if (v16)
        {
          v17 = v13 > a2[2];
        }

        else
        {
          v17 = 1;
        }
      }

      while (!v17);
      v18 = *v13;
      if (v18 < 0)
      {
        if (!__maskrune(v18, 0x500uLL))
        {
LABEL_32:
          v22 = *v13;
          if (v22 != 46 && v22 != 40)
          {
            goto LABEL_35;
          }
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v18] & 0x500) == 0)
      {
        goto LABEL_32;
      }

      if (v13 <= a2[2])
      {
        return 1;
      }

LABEL_35:
      (*(*a1 + 272))(a1, 23, &a3[-*a2], &a3[-*a2]);
      return 1;
    }

    (*(*a1 + 272))(a1, 23, &a3[-*a2], &a3[-*a2]);
    return 0;
  }

  v19 = *v6;
  result = 1;
  if (v19 > 0x5D)
  {
    if (*v6 > 0x7Bu)
    {
      if (v19 != 124 && v19 != 126)
      {
        return 0;
      }

      return result;
    }

    if (v19 == 94)
    {
      return result;
    }

    if (v19 != 101)
    {
      return 0;
    }
  }

  else
  {
    v21 = v19 - 9;
    if (v21 > 0x3C)
    {
      return 0;
    }

    if (((1 << v21) & 0x380056B1800013) != 0)
    {
      return result;
    }

    if (v21 != 60)
    {
      return 0;
    }
  }

  v23 = v6 - 1;
  if ((v6 - 1) < v10)
  {
    return 0;
  }

  do
  {
    v24 = v23;
    v25 = *v23;
    if (v25 < 0)
    {
      v26 = __maskrune(v25, 0x4000uLL);
      v10 = a2[1];
    }

    else
    {
      v26 = _DefaultRuneLocale.__runetype[v25] & 0x4000;
    }

    v23 = v24 - 1;
    if (v26)
    {
      v27 = v24 >= v10;
    }

    else
    {
      v27 = 0;
    }
  }

  while (v27);
  if (v24 >= v10)
  {
    for (i = v24; i >= a2[1]; --i)
    {
      v29 = *i;
      v30 = v29 < 0 ? __maskrune(v29, 0x500uLL) : _DefaultRuneLocale.__runetype[v29] & 0x500;
      v31 = *i;
      if (!v30 && !memchr("._[]", *i, 5uLL))
      {
        break;
      }

      if (v31 < 0 || v31 != 46 && (_DefaultRuneLocale.__runetype[v31] & 0x400) == 0)
      {
        return 0;
      }
    }
  }

  v32 = a3;
  do
  {
    v34 = *++v32;
    v33 = v34;
    if (v34 < 0)
    {
      v35 = __maskrune(v33, 0x4000uLL);
    }

    else
    {
      v35 = _DefaultRuneLocale.__runetype[v33] & 0x4000;
    }

    if (v35)
    {
      v36 = v32 > a2[2];
    }

    else
    {
      v36 = 1;
    }
  }

  while (!v36);
  v37 = *v32;
  if (v37 < 0)
  {
    v38 = __maskrune(v37, 0x500uLL);
  }

  else
  {
    v38 = _DefaultRuneLocale.__runetype[v37] & 0x500;
  }

  if (!v38 && *v32 != 46 || v32 > a2[2])
  {
    (*(*a1 + 272))(a1, 23, &a3[-*a2], &a3[-*a2]);
  }

  return 2;
}

uint64_t sub_C9A0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  if (v6 <= a2[2])
  {
    do
    {
      v7 = *v6;
      if (v7 < 0)
      {
        if (__maskrune(v7, 0x4000uLL))
        {
LABEL_4:
          v8 = v6;
          v9 = v6;
          do
          {
            v10 = v9;
            v11 = v8;
            if (v9 >= a2[2])
            {
              break;
            }

            ++v9;
            v12 = v10[1];
            v13 = v12 < 0 ? __maskrune(v12, 0x4000uLL) : _DefaultRuneLocale.__runetype[v12] & 0x4000;
            v8 = v11 + 1;
          }

          while (v13);
          (*(*a1 + 272))(a1, 22, &v6[-*a2], &v11[-*a2]);
          goto LABEL_13;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v7] & 0x4000) != 0)
      {
        goto LABEL_4;
      }

      v10 = v6;
LABEL_13:
      v6 = v10 + 1;
    }

    while ((v10 + 1) <= a2[2]);
  }

  result = (*(*a1 + 168))(a1, a2, a3);
  if (!result)
  {
    result = (*(*a1 + 176))(a1, a2, a3);
    if (!result)
    {
      v15 = sub_5B88(0x28uLL);
      sub_28150(v15, a2);
    }
  }

  return result;
}

void sub_CB38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CB50(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2 > a2[2])
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *v2;
    if (v9 == 41)
    {
      if (v7 == 1)
      {
        ++v8;
        v6 = v2;
      }

      if (v7 <= 0)
      {
        (*(*a1 + 272))(a1, 24, v2 - *a2, v2 - *a2);
      }

      --v7;
    }

    else if (v9 == 40)
    {
      if (!v8 || v7)
      {
        v10 = v2;
      }

      else
      {
        v10 = (v2 + 1);
        v11 = (v2 << 48) - (*a2 << 48) + 0x1000000000000;
        do
        {
          v12 = *--v10;
          v11 -= 0x1000000000000;
        }

        while (v12 != 41);
        (*(*a1 + 272))(a1, 22, v11 >> 48, (v2 - *a2));
      }

      ++v7;
      if (!v5)
      {
        v5 = v10;
      }

      v2 = v10;
    }

    ++v2;
    v13 = a2[2];
  }

  while (v2 <= v13);
  if (v7 >= 1)
  {
    (*(*a1 + 272))(a1, 24, &v5[-*a2], &v5[-*a2]);
    v13 = a2[2];
  }

  if (v6 != v13 || !v5)
  {
    if (v6)
    {
      (*(*a1 + 272))(a1, 23, v6 - *a2, v13 - *a2);
    }

    return 0;
  }

  v14 = a2[1];
  if (v6 - v14 + 1 < 6)
  {
    v15 = v6 - v14 + 1;
  }

  else
  {
    v15 = 6;
  }

  strncpy(__dst, v14, v15);
  v16 = 0;
  while (1)
  {
    v17 = __toupper(__dst[v16]);
    __dst[v16] = v17;
    if (v17 << 24 == 671088640)
    {
      break;
    }

    if (v17 <= 0x7F)
    {
      if ((_DefaultRuneLocale.__runetype[v17] & 0x4000) != 0)
      {
        break;
      }
    }

    else if (__maskrune(v17, 0x4000uLL))
    {
      break;
    }

    if (++v16 == 6)
    {
      goto LABEL_41;
    }
  }

  __dst[v16] = 0;
  if (v16 <= 4)
  {
    bzero(&__dst[v16 + 1], 5 - v16);
  }

LABEL_41:
  for (i = 1; i != 36; ++i)
  {
    if (!strcmp(__dst, (&off_1EDAC0)[i]))
    {
      break;
    }
  }

  return i;
}

void *sub_CE40@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 20) = 15;
  *a3 = 0;
  v5 = a2[1];
  v4 = a2[2];
  *(a3 + 8) = v5;
  *(a3 + 16) = 1;
  if (v5 <= v4)
  {
    v7 = result;
    v8 = 0;
    v9 = v5;
    while (1)
    {
      v10 = *v5;
      if (v10 > 0x7B)
      {
        if (v10 == 126 || v10 == 124)
        {
LABEL_6:
          if (!v8)
          {
            result = (*(*v7 + 160))(&v16, v7, a2, v5);
            v22 = v17;
            v23 = v18;
            v12 = v19;
            if (v16)
            {
              v13 = v20;
              if (v20 <= *(a3 + 20))
              {
                v14 = v21;
                *a3 = v16;
                *(a3 + 4) = v22;
                *(a3 + 12) = v23;
                *(a3 + 16) = v12;
                *(a3 + 20) = v13;
                *(a3 + 22) = v14;
              }
            }

            v8 = 0;
            v5 = &v5[v12 - 1];
          }
        }
      }

      else
      {
        v11 = v10 - 33;
        if (v11 <= 0x3D)
        {
          if (((1 << (v10 - 33)) & 0x200000007A005631) != 0)
          {
            goto LABEL_6;
          }

          if (v11 == 7)
          {
            if (!v8)
            {
              v9 = v5;
            }

            ++v8;
            goto LABEL_11;
          }

          if (v11 == 8)
          {
            v15 = v8 - 1;
            if (v8 <= 0)
            {
              result = (*(*v7 + 272))(v7, 24, &v5[-*a2], &v5[-*a2]);
            }

            v8 = v15;
            goto LABEL_11;
          }
        }

        if (!*v5)
        {
LABEL_25:
          if (v8)
          {
            return (*(*v7 + 272))(v7, 24, &v9[-*a2], &v9[-*a2]);
          }

          return result;
        }
      }

LABEL_11:
      if (++v5 > a2[2])
      {
        goto LABEL_25;
      }
    }
  }

  return result;
}

BOOL sub_D09C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  for (i = *(a2 + 16); v3 <= i; ++v3)
  {
    v5 = *v3;
    if (v5 < 0)
    {
      v6 = __maskrune(v5, 0x4000uLL);
      i = *(a2 + 16);
      if (!v6)
      {
        return v3 > i;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v5] & 0x4000) == 0)
    {
      return v3 > i;
    }
  }

  return v3 > i;
}

uint64_t sub_D118(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  (*(*a1 + 280))(a1);
  if (a2[1] <= a2[2])
  {
    (*(*a1 + 240))(v13, a1, a2);
    v11 = *a1;
    if (LODWORD(v13[0]))
    {
      return (*(v11 + 208))(a1, a2, v13, a3);
    }

    else
    {
      v12 = (*(v11 + 232))(a1, a2);
      if (v12)
      {
        if (v12 == -1)
        {
          return (*(*a1 + 272))(a1, 23, a2[1] - *a2, a2[2] - *a2);
        }

        else
        {
          return (*(*a1 + 192))(a1, a2, v12, a3);
        }
      }

      else
      {
        return (*(*a1 + 224))(a1, a2, a3);
      }
    }
  }

  else
  {
    v9 = *(*a1 + 272);

    return v9(a1, 21, v6 - v7, v8 - v7);
  }
}

uint64_t sub_D350(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 8); ; *(a2 + 8) = i)
  {
    v4 = *i;
    if (v4 < 0)
    {
      result = __maskrune(v4, 0x4000uLL);
      i = *(a2 + 8);
    }

    else
    {
      result = _DefaultRuneLocale.__runetype[v4] & 0x4000;
    }

    v6 = *(a2 + 16);
    if (!result || i > v6)
    {
      break;
    }

    ++i;
  }

  if (i <= v6)
  {
    do
    {
      v8 = *v6;
      if (v8 < 0)
      {
        result = __maskrune(v8, 0x4000uLL);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = _DefaultRuneLocale.__runetype[v8] & 0x4000;
        if (!result)
        {
          return result;
        }
      }

      v9 = *(a2 + 8);
      v6 = (*(a2 + 16) - 1);
      *(a2 + 16) = v6;
    }

    while (v6 >= v9);
  }

  return result;
}

void sub_D400(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(xmmword_1EF218) = a2;
  *(&xmmword_1EF218 + 1) = a3;
  qword_1EF228 = a4;
  exception = __cxa_allocate_exception(0x18uLL);
  v5 = qword_1EF228;
  *exception = xmmword_1EF218;
  exception[2] = v5;
}

uint64_t sub_D448(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    result = (*(*a1 + 264))(a1, a2);
    v7 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v7 > v6)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = *(a2 + 8);
    do
    {
      v12 = *v11;
      if (v12 == 41)
      {
        if (--v4 || v8)
        {
          v15 = v7;
          v7 = v9;
        }

        else
        {
          v4 = 0;
          if (v11 == v6 && v9 == v7)
          {
            v8 = 0;
            v4 = 0;
            v10 = 0;
            --v6;
            v15 = v7 + 1;
            *(a2 + 8) = v7 + 1;
            *(a2 + 16) = v6;
          }

          else
          {
            v15 = v7;
            v7 = v9;
            v8 = v11;
          }
        }
      }

      else
      {
        if (v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v11;
        }

        v14 = v12 == 40;
        v15 = v7;
        if (v14)
        {
          v7 = v13;
        }

        else
        {
          v7 = v9;
        }

        if (v14)
        {
          ++v4;
        }
      }

      v9 = v7;
      ++v11;
      v7 = v15;
    }

    while (v11 <= v6);
  }

  while (!v10);
  return result;
}

float sub_D560(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (v2 <= 0.0)
  {
    ((*a1)[34])(a1, 4, -1, -1);
  }

  return mathParser::log<float>(v2);
}

uint64_t sub_D60C(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::log<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_D68C(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        if (*v8 <= 0.0)
        {
          *a2 = 4;
        }

        else
        {
          *v8 = mathParser::log<float>(*v8);
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_D744(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x20uLL);
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_18500(v3, v2, v4);
  *v3 = off_1A8518;
  return v3;
}

void sub_D80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  v13 = v11;
  if (v13)
  {
    free(v13);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_D8C0(uint64_t *a1, uint64_t *a2)
{
  a1[2] = 0;
  v3 = a1 + 2;
  *a1 = off_1A9EE0;
  a1[1] = 0;
  sub_D118(a1, a2, (a1 + 2));
  if (*v3)
  {
    *(*v3 + 8) = a1;
  }

  return a1;
}

void *sub_D9DC(void *result, uint64_t a2)
{
  *result = off_1A9EE0;
  result[1] = 0;
  if (!a2)
  {
    LODWORD(xmmword_1EF218) = 21;
    *(&xmmword_1EF218 + 1) = -1;
    qword_1EF228 = -1;
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = qword_1EF228;
    *exception = xmmword_1EF218;
    exception[2] = v3;
  }

  result[2] = a2;
  *(a2 + 8) = result;
  return result;
}

void sub_DA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *a10 = off_1A5580;
  a10[1] = 0;
  _Unwind_Resume(a1);
}

float sub_DA94(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (v2 <= 0.0)
  {
    ((*a1)[34])(a1, 3, -1, -1);
  }

  return mathParser::log10<float>(v2);
}

uint64_t sub_DB40(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::log10<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_DBC0(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        if (*v8 <= 0.0)
        {
          *a2 = 3;
        }

        else
        {
          *v8 = mathParser::log10<float>(*v8);
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_DC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x18uLL);
  *v4 = off_1AA288;
  v4[1] = 0;
  *(v4 + 4) = 1075010958;
  v5 = sub_5B88(0x20uLL);
  v6 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_18500(v5, v6, v4);
  *v5 = off_1A83D8;
  v7 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v8 = sub_5B88(0x20uLL);
  sub_18500(v8, v7, v5);
  *v8 = off_1A8518;
  return v8;
}

void sub_DDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v16 = v14;
  if (v16)
  {
    free(v16);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(exception_object);
    v20 = *v18;
    v21 = *(v18 + 2);
    if (v13)
    {
      (*(*v13 + 152))(v13);
    }

    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v20;
    exception[2] = v21;
  }

  _Unwind_Resume(exception_object);
}

float sub_DEDC(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));

  return mathParser::exp<float>(v1);
}

uint64_t sub_DF28(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::exp<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_DFA8(uint64_t a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2++)
      {
        *v8 = mathParser::exp<float>(*v8);
      }

      ++v8;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_E040(void **a1)
{
  v2 = (*(*a1[2] + 112))(a1[2]);
  v3 = sub_5B88(0x20uLL);
  v4 = ((*a1)[15])(a1);
  sub_18500(v3, v4, v2);
  *v3 = off_1A83D8;
  return v3;
}

void sub_E108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v11)
  {
    free(v11);
  }

  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(exception_object);
    v16 = *v14;
    v17 = *(v14 + 2);
    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v16;
    exception[2] = v17;
  }

  _Unwind_Resume(exception_object);
}

float sub_E1B8(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));

  return mathParser::fabs<float>(v1);
}

uint64_t sub_E204(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::fabs<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_E284(uint64_t a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2++)
      {
        *v8 = mathParser::fabs<float>(*v8);
      }

      ++v8;
      --v3;
    }

    while (v3);
  }

  return v6;
}

float sub_E31C(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (v2 < 0.0)
  {
    ((*a1)[34])(a1, 2, -1, -1);
  }

  return mathParser::sqrt<float>(v2);
}

uint64_t sub_E3C8(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::sqrt<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_E448(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        if (*v8 >= 0.0)
        {
          *v8 = mathParser::sqrt<float>(*v8);
        }

        else
        {
          *a2 = 2;
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_E500(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x18uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v4, v5);
  *v4 = off_1A5B90;
  v6 = sub_5B88(0x20uLL);
  v7 = sub_5B88(0x18uLL);
  *v7 = off_1AA288;
  v7[1] = 0;
  *(v7 + 4) = 0x40000000;
  sub_18500(v6, v4, v7);
  *v6 = off_1A83D8;
  v8 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v9 = sub_5B88(0x20uLL);
  sub_18500(v9, v8, v6);
  *v9 = off_1A8518;
  return v9;
}

void sub_E684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v10)
  {
    free(v10);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v11)
    {
      (*(*v11 + 152))(v11);
    }

    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_E7E8(uint64_t a1, int a2)
{
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  if (v3)
  {
    v5 = a2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = a2;
    v7 = v3;
    do
    {
      result = -*v7;
      *v7++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_E858(uint64_t a1, unsigned __int8 *a2, int a3)
{
  result = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (result)
  {
    v6 = a3 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = a3;
    v8 = result;
    do
    {
      if (!*a2++)
      {
        *v8 = -*v8;
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

void *sub_E8E0(uint64_t a1)
{
  v1 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v2 = sub_5B88(0x18uLL);
  sub_D9DC(v2, v1);
  *v2 = off_1A5CC8;
  return v2;
}

void sub_E974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  v13 = v11;
  if (v13)
  {
    free(v13);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_EA28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 24);
  }

  return (v3 * rand()) * 4.6566e-10;
}

uint64_t sub_EA94(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (!v3)
  {
    operator new[]();
  }

  v4 = (*(*v3 + 8))(v3, a2);
  if (v4 && v2 >= 1)
  {
    v5 = 0;
    v6 = 4 * v2;
    do
    {
      *(v4 + v5) = *(v4 + v5) * vcvts_n_f32_s32(rand(), 0x1FuLL);
      v5 += 4;
    }

    while (v6 != v5);
  }

  return v4;
}

uint64_t sub_EB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a1 + 16);
  if (!v4)
  {
    operator new[]();
  }

  v6 = (*(*v4 + 16))(v4, a2, a3);
  if (v6 && v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if (!*(a2 + i))
      {
        *(v6 + 4 * i) = *(v6 + 4 * i) * vcvts_n_f32_s32(rand(), 0x1FuLL);
      }
    }
  }

  return v6;
}

uint64_t sub_ECBC(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

void *sub_ECF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (*(*v2 + 120))(v2);
  }

  else
  {
    v3 = sub_5B88(0x18uLL);
    v4 = *(a1 + 24);
    *v3 = off_1AA288;
    v3[1] = 0;
    *(v3 + 4) = v4;
  }

  v5 = sub_5B88(0x20uLL);
  sub_F128(v5, v3);
  return v5;
}

void sub_ED90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v5)
  {
    (*(*v4 + 152))(v4);
    *(a1 + 16) = a3;
    *(a3 + 8) = a1;
  }

  return v6;
}

uint64_t sub_EE18(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t sub_EE48(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

uint64_t sub_EE78(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

void sub_EEAC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = (*(*v2 + 104))(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = (&off_1EDAC0)[(*(*a1 + 288))(a1)];
  if (v3)
  {
    strlen(v3);
  }

  strlen(v4);
  operator new[]();
}

uint64_t sub_EFE0(uint64_t a1, uint64_t a2)
{
  *a1 = off_1A5E00;
  *(a1 + 8) = 0;
  sub_D448(a1, a2);
  if (*(a2 + 8) <= *(a2 + 16))
  {
    (*(*a1 + 256))(a1, a2, a1 + 16);
    v4 = *(a1 + 16);
    if (v4 && (*(*v4 + 40))(v4))
    {
      *(a1 + 24) = (***(a1 + 16))(*(a1 + 16));
      v5 = *(a1 + 16);
      if (v5)
      {
        (*(*v5 + 152))(v5);
      }

      *(a1 + 16) = 0;
    }
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 1065353216;
  }

  return a1;
}

void sub_F108(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_F128(uint64_t a1, void *a2)
{
  *a1 = off_1A5E00;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  if (a2)
  {
    a2[1] = a1;
    if ((*(*a2 + 40))(a2))
    {
      *(a1 + 24) = (***(a1 + 16))(*(a1 + 16));
      v3 = *(a1 + 16);
      if (v3)
      {
        (*(*v3 + 152))(v3);
      }

      *(a1 + 16) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 1065353216;
  }

  return a1;
}

void sub_F208(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

void *sub_F228(void *a1)
{
  *a1 = off_1A5E00;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 152))(v2);
  }

  *a1 = off_1A5580;
  a1[1] = 0;
  return a1;
}

void sub_F2B0(_Unwind_Exception *a1)
{
  *v1 = off_1A5580;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

void sub_F2D4(void *a1)
{
  sub_F228(a1);
  if (a1)
  {

    free(a1);
  }
}

void sub_F31C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_F334(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));

  return mathParser::sin<float>(v1);
}

uint64_t sub_F380(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::sin<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_F400(uint64_t a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2++)
      {
        *v8 = mathParser::sin<float>(*v8);
      }

      ++v8;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_F498(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x18uLL);
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v3, v4);
  *v3 = off_1A6070;
  v5 = sub_5B88(0x20uLL);
  sub_18500(v5, v2, v3);
  *v5 = off_1A83D8;
  return v5;
}

void sub_F5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  v14 = v12;
  if (v14)
  {
    free(v14);
  }

  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(exception_object);
    v18 = *v16;
    v19 = *(v16 + 2);
    if (v11)
    {
      (*(*v11 + 152))(v11);
    }

    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v18;
    exception[2] = v19;
  }

  _Unwind_Resume(exception_object);
}

float sub_F6A8(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));

  return mathParser::cos<float>(v1);
}

uint64_t sub_F6F4(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::cos<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_F774(uint64_t a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2++)
      {
        *v8 = mathParser::cos<float>(*v8);
      }

      ++v8;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_F80C(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x18uLL);
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v3, v4);
  *v3 = off_1A5F38;
  v5 = sub_5B88(0x18uLL);
  sub_D9DC(v5, v3);
  *v5 = off_1A5CC8;
  v6 = sub_5B88(0x20uLL);
  sub_18500(v6, v2, v5);
  *v6 = off_1A83D8;
  return v6;
}

void sub_F954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v11)
  {
    free(v11);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_FA6C(double (****a1)(void))
{
  *v2.i64 = (**a1[2])(a1[2]);
  v3 = *v2.i32;
  if (mathParser::isValueFallOnSinCosZeroCycle<float>(90, v2, v4))
  {
    ((*a1)[34])(a1, 12, -1, -1);
  }

  return mathParser::tan<float>(v3);
}

uint64_t sub_FB1C(void **a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = (*(*a1[2] + 8))(a1[2]);
  v7 = v4;
  if (v4)
  {
    v8 = v2 < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v2 = v2;
    v9 = v4;
    do
    {
      v5.i32[0] = *v9;
      if (mathParser::isValueFallOnSinCosZeroCycle<float>(90, v5, v6))
      {
        ((*a1)[34])(a1, 12, -1, -1);
      }

      *v9 = mathParser::tan<float>(*v9);
      ++v9;
      --v2;
    }

    while (v2);
  }

  return v7;
}

uint64_t sub_FBEC(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v8 = v5;
  if (v5)
  {
    v9 = v3 < 1;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v3 = v3;
    v10 = v5;
    do
    {
      if (!*a2)
      {
        v6.i32[0] = *v10;
        if (mathParser::isValueFallOnSinCosZeroCycle<float>(90, v6, v7))
        {
          *a2 = 12;
        }

        else
        {
          *v10 = mathParser::tan<float>(*v10);
        }
      }

      ++v10;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v8;
}

void *sub_FCAC(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x18uLL);
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v3, v4);
  *v3 = off_1A62E0;
  v5 = sub_5B88(0x20uLL);
  v6 = sub_5B88(0x18uLL);
  *v6 = off_1AA288;
  v6[1] = 0;
  *(v6 + 4) = 0x40000000;
  sub_18500(v5, v3, v6);
  *v5 = off_1A8798;
  v7 = sub_5B88(0x20uLL);
  sub_18500(v7, v2, v5);
  *v7 = off_1A83D8;
  return v7;
}

void sub_FE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v11)
  {
    free(v11);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_FF40(double (****a1)(void))
{
  *v2.i64 = (**a1[2])(a1[2]);
  v3 = *v2.i32;
  if (mathParser::isValueFallOnSinCosZeroCycle<float>(90, v2, v4))
  {
    ((*a1)[34])(a1, 14, -1, -1);
  }

  return 1.0 / mathParser::cos<float>(v3);
}

uint64_t sub_FFEC(void **a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = (*(*a1[2] + 8))(a1[2]);
  v7 = v4;
  if (v4)
  {
    v8 = v2 < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v2 = v2;
    v9 = v4;
    do
    {
      v5.i32[0] = *v9;
      if (mathParser::isValueFallOnSinCosZeroCycle<float>(90, v5, v6))
      {
        ((*a1)[34])(a1, 14, -1, -1);
      }

      *v9 = 1.0 / mathParser::cos<float>(*v9);
      ++v9;
      --v2;
    }

    while (v2);
  }

  return v7;
}

uint64_t sub_100CC(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v8 = v5;
  if (v5)
  {
    v9 = v3 < 1;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v3 = v3;
    v10 = v5;
    do
    {
      if (!*a2)
      {
        v6.i32[0] = *v10;
        if (mathParser::isValueFallOnSinCosZeroCycle<float>(90, v6, v7))
        {
          *a2 = 14;
        }

        else
        {
          *v10 = 1.0 / mathParser::cos<float>(*v10);
        }
      }

      ++v10;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v8;
}

void *sub_1019C(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x18uLL);
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v3, v4);
  *v3 = off_1A62E0;
  v5 = sub_5B88(0x20uLL);
  sub_18500(v5, v2, v3);
  *v5 = off_1A83D8;
  v6 = sub_5B88(0x18uLL);
  v7 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v6, v7);
  *v6 = off_1A61A8;
  v8 = sub_5B88(0x20uLL);
  sub_18500(v8, v5, v6);
  *v8 = off_1A83D8;
  return v8;
}

void sub_1034C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  if (v12)
  {
    free(v12);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(exception_object);
    v19 = *v17;
    v20 = *(v17 + 2);
    if (v13)
    {
      (*(*v13 + 152))(v13);
    }

    if (v14)
    {
      (*(*v14 + 152))(v14);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v19;
    exception[2] = v20;
  }

  _Unwind_Resume(exception_object);
}

float sub_10488(double (****a1)(void))
{
  *v2.i64 = (**a1[2])(a1[2]);
  v3 = *v2.i32;
  if (mathParser::isValueFallOnSinCosZeroCycle<float>(180, v2, v4))
  {
    ((*a1)[34])(a1, 15, -1, -1);
  }

  return 1.0 / mathParser::sin<float>(v3);
}

uint64_t sub_10534(void **a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = (*(*a1[2] + 8))(a1[2]);
  v7 = v4;
  if (v4)
  {
    v8 = v2 < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v2 = v2;
    v9 = v4;
    do
    {
      v5.i32[0] = *v9;
      if (mathParser::isValueFallOnSinCosZeroCycle<float>(180, v5, v6))
      {
        ((*a1)[34])(a1, 15, -1, -1);
      }

      *v9 = 1.0 / mathParser::sin<float>(*v9);
      ++v9;
      --v2;
    }

    while (v2);
  }

  return v7;
}

uint64_t sub_10614(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v8 = v5;
  if (v5)
  {
    v9 = v3 < 1;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v3 = v3;
    v10 = v5;
    do
    {
      if (!*a2)
      {
        v6.i32[0] = *v10;
        if (mathParser::isValueFallOnSinCosZeroCycle<float>(180, v6, v7))
        {
          *a2 = 15;
        }

        else
        {
          *v10 = 1.0 / mathParser::sin<float>(*v10);
        }
      }

      ++v10;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v8;
}

void *sub_106E4(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x18uLL);
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v3, v4);
  *v3 = off_1A6418;
  v5 = sub_5B88(0x20uLL);
  sub_18500(v5, v2, v3);
  *v5 = off_1A83D8;
  v6 = sub_5B88(0x18uLL);
  v7 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v6, v7);
  *v6 = off_1A6550;
  v8 = sub_5B88(0x20uLL);
  sub_18500(v8, v5, v6);
  *v8 = off_1A83D8;
  v9 = sub_5B88(0x18uLL);
  sub_D9DC(v9, v8);
  *v9 = off_1A5CC8;
  return v9;
}

void sub_108D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v11)
  {
    free(v11);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_10A24(double (****a1)(void))
{
  *v2.i64 = (**a1[2])(a1[2]);
  v3 = *v2.i32;
  if (mathParser::isValueFallOnSinCosZeroCycle<float>(180, v2, v4))
  {
    ((*a1)[34])(a1, 13, -1, -1);
  }

  return 1.0 / mathParser::tan<float>(v3);
}

uint64_t sub_10AD0(void **a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = (*(*a1[2] + 8))(a1[2]);
  v7 = v4;
  if (v4)
  {
    v8 = v2 < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v2 = v2;
    v9 = v4;
    do
    {
      v5.i32[0] = *v9;
      if (mathParser::isValueFallOnSinCosZeroCycle<float>(180, v5, v6))
      {
        ((*a1)[34])(a1, 13, -1, -1);
      }

      *v9 = 1.0 / mathParser::tan<float>(*v9);
      ++v9;
      --v2;
    }

    while (v2);
  }

  return v7;
}

uint64_t sub_10BB0(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v8 = v5;
  if (v5)
  {
    v9 = v3 < 1;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v3 = v3;
    v10 = v5;
    do
    {
      if (!*a2)
      {
        v6.i32[0] = *v10;
        if (mathParser::isValueFallOnSinCosZeroCycle<float>(180, v6, v7))
        {
          *a2 = 13;
        }

        else
        {
          *v10 = 1.0 / mathParser::tan<float>(*v10);
        }
      }

      ++v10;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v8;
}

void *sub_10C80(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x18uLL);
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v3, v4);
  *v3 = off_1A6418;
  v5 = sub_5B88(0x20uLL);
  v6 = sub_5B88(0x18uLL);
  *v6 = off_1AA288;
  v6[1] = 0;
  *(v6 + 4) = 0x40000000;
  sub_18500(v5, v3, v6);
  *v5 = off_1A8798;
  v7 = sub_5B88(0x20uLL);
  sub_18500(v7, v2, v5);
  *v7 = off_1A83D8;
  v8 = sub_5B88(0x18uLL);
  sub_D9DC(v8, v7);
  *v8 = off_1A5CC8;
  return v8;
}

void sub_10E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v10)
  {
    free(v10);
  }

  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(exception_object);
    v16 = *v14;
    v17 = *(v14 + 2);
    if (v11)
    {
      (*(*v11 + 152))(v11);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v16;
    exception[2] = v17;
  }

  _Unwind_Resume(exception_object);
}

float sub_10F70(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (fabsf(v2) > 1.0)
  {
    ((*a1)[34])(a1, 6, -1, -1);
  }

  return mathParser::asin<float>(v2);
}

uint64_t sub_11024(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::asin<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_110A4(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        if (fabsf(*v8) <= 1.0)
        {
          *v8 = mathParser::asin<float>(*v8);
        }

        else
        {
          *a2 = 6;
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_1116C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x20uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v6 = sub_5B88(0x18uLL);
  *v6 = off_1AA288;
  v6[1] = 0;
  *(v6 + 4) = 0x40000000;
  sub_18500(v4, v5, v6);
  *v4 = off_1A8798;
  v7 = sub_5B88(0x20uLL);
  v8 = sub_5B88(0x18uLL);
  *v8 = off_1AA288;
  v8[1] = 0;
  *(v8 + 4) = 1065353216;
  sub_18500(v7, v8, v4);
  *v7 = off_1A8298;
  v9 = sub_5B88(0x18uLL);
  sub_D9DC(v9, v7);
  *v9 = off_1A5B90;
  v10 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v11 = sub_5B88(0x20uLL);
  sub_18500(v11, v10, v9);
  *v11 = off_1A8518;
  return v11;
}

void sub_1135C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v12)
  {
    free(v12);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    if (v11)
    {
      (*(*v11 + 152))(v11);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_1149C(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (fabsf(v2) > 1.0)
  {
    ((*a1)[34])(a1, 7, -1, -1);
  }

  return mathParser::acos<float>(v2);
}

uint64_t sub_11550(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::acos<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_115D0(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        if (fabsf(*v8) <= 1.0)
        {
          *v8 = mathParser::acos<float>(*v8);
        }

        else
        {
          *a2 = 7;
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_11698(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x20uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v6 = sub_5B88(0x18uLL);
  *v6 = off_1AA288;
  v6[1] = 0;
  *(v6 + 4) = 0x40000000;
  sub_18500(v4, v5, v6);
  *v4 = off_1A8798;
  v7 = sub_5B88(0x20uLL);
  v8 = sub_5B88(0x18uLL);
  *v8 = off_1AA288;
  v8[1] = 0;
  *(v8 + 4) = 1065353216;
  sub_18500(v7, v8, v4);
  *v7 = off_1A8298;
  v9 = sub_5B88(0x18uLL);
  sub_D9DC(v9, v7);
  *v9 = off_1A5B90;
  v10 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v11 = sub_5B88(0x18uLL);
  sub_D9DC(v11, v10);
  *v11 = off_1A5CC8;
  v12 = sub_5B88(0x20uLL);
  sub_18500(v12, v11, v9);
  *v12 = off_1A8518;
  return v12;
}

void sub_118C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v11)
  {
    free(v11);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_11A1C(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));

  return mathParser::atan<float>(v1);
}

uint64_t sub_11A68(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::atan<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_11AE8(uint64_t a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2++)
      {
        *v8 = mathParser::atan<float>(*v8);
      }

      ++v8;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_11B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x20uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v6 = sub_5B88(0x18uLL);
  *v6 = off_1AA288;
  v6[1] = 0;
  *(v6 + 4) = 0x40000000;
  sub_18500(v4, v5, v6);
  *v4 = off_1A8798;
  v7 = sub_5B88(0x20uLL);
  v8 = sub_5B88(0x18uLL);
  *v8 = off_1AA288;
  v8[1] = 0;
  *(v8 + 4) = 1065353216;
  sub_18500(v7, v8, v4);
  *v7 = off_1A8158;
  v9 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v10 = sub_5B88(0x20uLL);
  sub_18500(v10, v9, v7);
  *v10 = off_1A8518;
  return v10;
}

void sub_11D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v10)
  {
    free(v10);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    if (v11)
    {
      (*(*v11 + 152))(v11);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_11E5C(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (fabsf(v2) < 1.0)
  {
    ((*a1)[34])(a1, 8, -1, -1);
  }

  return mathParser::acos<float>(1.0 / v2);
}

uint64_t sub_11F10(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::acos<float>(1.0 / *v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_11FA0(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        if (fabsf(*v8) >= 1.0)
        {
          *v8 = mathParser::acos<float>(1.0 / *v8);
        }

        else
        {
          *a2 = 8;
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_1206C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x20uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v6 = sub_5B88(0x18uLL);
  *v6 = off_1AA288;
  v6[1] = 0;
  *(v6 + 4) = 0x40000000;
  sub_18500(v4, v5, v6);
  *v4 = off_1A8798;
  v7 = sub_5B88(0x20uLL);
  v8 = sub_5B88(0x18uLL);
  *v8 = off_1AA288;
  v8[1] = 0;
  *(v8 + 4) = 1065353216;
  sub_18500(v7, v4, v8);
  *v7 = off_1A8298;
  v9 = sub_5B88(0x18uLL);
  sub_D9DC(v9, v7);
  *v9 = off_1A5B90;
  v10 = sub_5B88(0x20uLL);
  v11 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_18500(v10, v11, v9);
  *v10 = off_1A83D8;
  v12 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v13 = sub_5B88(0x20uLL);
  sub_18500(v13, v12, v10);
  *v13 = off_1A8518;
  return v13;
}

void sub_122C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v10)
  {
    free(v10);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    if (v11)
    {
      (*(*v11 + 152))(v11);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_12408(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (fabsf(v2) <= 1.0)
  {
    ((*a1)[34])(a1, 9, -1, -1);
  }

  return mathParser::asin<float>(1.0 / v2);
}

uint64_t sub_124BC(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::asin<float>(1.0 / *v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_1254C(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        if (fabsf(*v8) >= 1.0)
        {
          *v8 = mathParser::asin<float>(1.0 / *v8);
        }

        else
        {
          *a2 = 9;
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_12618(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x20uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v6 = sub_5B88(0x18uLL);
  *v6 = off_1AA288;
  v6[1] = 0;
  *(v6 + 4) = 0x40000000;
  sub_18500(v4, v5, v6);
  *v4 = off_1A8798;
  v7 = sub_5B88(0x20uLL);
  v8 = sub_5B88(0x18uLL);
  *v8 = off_1AA288;
  v8[1] = 0;
  *(v8 + 4) = 1065353216;
  sub_18500(v7, v4, v8);
  *v7 = off_1A8298;
  v9 = sub_5B88(0x18uLL);
  sub_D9DC(v9, v7);
  *v9 = off_1A5B90;
  v10 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v11 = sub_5B88(0x18uLL);
  sub_D9DC(v11, v10);
  *v11 = off_1A5CC8;
  v12 = sub_5B88(0x20uLL);
  sub_18500(v12, v11, v9);
  *v12 = off_1A8518;
  return v12;
}

void sub_12840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v11)
  {
    free(v11);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_1299C(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (v2 == 0.0)
  {
    ((*a1)[34])(a1, 10, -1, -1);
  }

  return mathParser::atan<float>(1.0 / v2);
}

uint64_t sub_12A4C(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::atan<float>(1.0 / *v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_12ADC(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        if (*v8 == 0.0)
        {
          *a2 = 10;
        }

        else
        {
          *v8 = mathParser::atan<float>(1.0 / *v8);
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_12BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x20uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v6 = sub_5B88(0x18uLL);
  *v6 = off_1AA288;
  v6[1] = 0;
  *(v6 + 4) = 0x40000000;
  sub_18500(v4, v5, v6);
  *v4 = off_1A8798;
  v7 = sub_5B88(0x20uLL);
  v8 = sub_5B88(0x18uLL);
  *v8 = off_1AA288;
  v8[1] = 0;
  *(v8 + 4) = 1065353216;
  sub_18500(v7, v4, v8);
  *v7 = off_1A8158;
  v9 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v10 = sub_5B88(0x18uLL);
  sub_D9DC(v10, v9);
  *v10 = off_1A5CC8;
  v11 = sub_5B88(0x20uLL);
  sub_18500(v11, v10, v7);
  *v11 = off_1A8518;
  return v11;
}

void sub_12D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v12)
  {
    free(v12);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v11)
    {
      (*(*v11 + 152))(v11);
    }

    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_12ED4(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));

  return mathParser::sinh<float>(v1);
}

uint64_t sub_12F20(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::sinh<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_12FA0(uint64_t a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2++)
      {
        *v8 = mathParser::sinh<float>(*v8);
      }

      ++v8;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_13038(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x18uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v4, v5);
  *v4 = &off_1A6F10;
  v6 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v7 = sub_5B88(0x20uLL);
  sub_18500(v7, v6, v4);
  *v7 = off_1A83D8;
  return v7;
}

void sub_13150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  v14 = v12;
  if (v14)
  {
    free(v14);
  }

  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(exception_object);
    v18 = *v16;
    v19 = *(v16 + 2);
    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    if (v11)
    {
      (*(*v11 + 152))(v11);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v18;
    exception[2] = v19;
  }

  _Unwind_Resume(exception_object);
}

float sub_1325C(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));

  return mathParser::cosh<float>(v1);
}

uint64_t sub_132A8(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::cosh<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_13328(uint64_t a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2++)
      {
        *v8 = mathParser::cosh<float>(*v8);
      }

      ++v8;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_133C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x18uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v4, v5);
  *v4 = &off_1A6DD8;
  v6 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v7 = sub_5B88(0x20uLL);
  sub_18500(v7, v6, v4);
  *v7 = off_1A83D8;
  return v7;
}

void sub_134D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  v14 = v12;
  if (v14)
  {
    free(v14);
  }

  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(exception_object);
    v18 = *v16;
    v19 = *(v16 + 2);
    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    if (v11)
    {
      (*(*v11 + 152))(v11);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v18;
    exception[2] = v19;
  }

  _Unwind_Resume(exception_object);
}

float sub_135E4(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (mathParser::cosh<float>(v2) == 0.0)
  {
    ((*a1)[34])(a1, 16, -1, -1);
  }

  return mathParser::tanh<float>(v2);
}

uint64_t sub_13694(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::tanh<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_13714(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        if (mathParser::cosh<float>(*v8) == 0.0)
        {
          *a2 = 16;
        }

        else
        {
          *v8 = mathParser::tanh<float>(*v8);
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_137D4(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x18uLL);
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v3, v4);
  *v3 = off_1A7180;
  v5 = sub_5B88(0x20uLL);
  v6 = sub_5B88(0x18uLL);
  *v6 = off_1AA288;
  v6[1] = 0;
  *(v6 + 4) = 0x40000000;
  sub_18500(v5, v3, v6);
  *v5 = off_1A8798;
  v7 = sub_5B88(0x20uLL);
  sub_18500(v7, v2, v5);
  *v7 = off_1A83D8;
  return v7;
}

void sub_13950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v11)
  {
    free(v11);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_13A68(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (mathParser::cosh<float>(v2) == 0.0)
  {
    ((*a1)[34])(a1, 17, -1, -1);
  }

  return 1.0 / mathParser::cosh<float>(v2);
}

uint64_t sub_13B14(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = 1.0 / mathParser::cosh<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_13BA4(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        v9 = mathParser::cosh<float>(*v8);
        if (v9 == 0.0)
        {
          *a2 = 17;
        }

        else
        {
          *v8 = 1.0 / v9;
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_13C6C(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x18uLL);
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v3, v4);
  *v3 = off_1A7180;
  v5 = sub_5B88(0x20uLL);
  sub_18500(v5, v2, v3);
  *v5 = off_1A83D8;
  v6 = sub_5B88(0x18uLL);
  v7 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v6, v7);
  *v6 = &off_1A7048;
  v8 = sub_5B88(0x20uLL);
  sub_18500(v8, v5, v6);
  *v8 = off_1A83D8;
  return v8;
}

void sub_13E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  if (v12)
  {
    free(v12);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(exception_object);
    v19 = *v17;
    v20 = *(v17 + 2);
    if (v13)
    {
      (*(*v13 + 152))(v13);
    }

    if (v14)
    {
      (*(*v14 + 152))(v14);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v19;
    exception[2] = v20;
  }

  _Unwind_Resume(exception_object);
}

float sub_13F58(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (mathParser::sinh<float>(v2) == 0.0)
  {
    ((*a1)[34])(a1, 18, -1, -1);
  }

  return 1.0 / mathParser::sinh<float>(v2);
}

uint64_t sub_14004(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = 1.0 / mathParser::sinh<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_14094(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        v9 = mathParser::sinh<float>(*v8);
        if (v9 == 0.0)
        {
          *a2 = 18;
        }

        else
        {
          *v8 = 1.0 / v9;
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_1415C(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x18uLL);
  v4 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v3, v4);
  *v3 = off_1A72B8;
  v5 = sub_5B88(0x20uLL);
  sub_18500(v5, v2, v3);
  *v5 = off_1A83D8;
  v6 = sub_5B88(0x18uLL);
  v7 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v6, v7);
  *v6 = off_1A73F0;
  v8 = sub_5B88(0x20uLL);
  sub_18500(v8, v5, v6);
  *v8 = off_1A83D8;
  v9 = sub_5B88(0x18uLL);
  sub_D9DC(v9, v8);
  *v9 = off_1A5CC8;
  return v9;
}

void sub_1434C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v11)
  {
    free(v11);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

float sub_1449C(float (****a1)(void))
{
  v2 = (**a1[2])(a1[2]);
  if (mathParser::tanh<float>(v2) == 0.0)
  {
    ((*a1)[34])(a1, 19, -1, -1);
  }

  return 1.0 / mathParser::tanh<float>(v2);
}

uint64_t sub_14548(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = 1.0 / mathParser::tanh<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_145D8(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2)
      {
        v9 = mathParser::tanh<float>(*v8);
        if (v9 == 0.0)
        {
          *a2 = 19;
        }

        else
        {
          *v8 = 1.0 / v9;
        }
      }

      ++v8;
      ++a2;
      --v3;
    }

    while (v3);
  }

  return v6;
}

void *sub_146A0(uint64_t a1)
{
  v2 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v3 = sub_5B88(0x18uLL);
  sub_D9DC(v3, v2);
  *v3 = off_1A5CC8;
  v4 = sub_5B88(0x18uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  sub_D9DC(v4, v5);
  *v4 = off_1A72B8;
  v6 = sub_5B88(0x20uLL);
  v7 = sub_5B88(0x18uLL);
  *v7 = off_1AA288;
  v7[1] = 0;
  *(v7 + 4) = 0x40000000;
  sub_18500(v6, v4, v7);
  *v6 = off_1A8798;
  v8 = sub_5B88(0x20uLL);
  sub_18500(v8, v3, v6);
  *v8 = off_1A83D8;
  return v8;
}

void sub_14854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  if (v13)
  {
    free(v13);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(exception_object);
    v19 = *v17;
    v20 = *(v17 + 2);
    if (v14)
    {
      (*(*v14 + 152))(v14);
    }

    if (v12)
    {
      (*(*v12 + 152))(v12);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v19;
    exception[2] = v20;
  }

  _Unwind_Resume(exception_object);
}

float sub_14998(uint64_t a1)
{
  v1 = (***(a1 + 16))(*(a1 + 16)) == 0.0;
  result = 0.0;
  if (v1)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_149E4(uint64_t a1, int a2)
{
  result = (*(**(a1 + 16) + 8))(*(a1 + 16));
  if (result)
  {
    v4 = a2 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a2;
    v6 = result;
    do
    {
      if (*v6 == 0.0)
      {
        v7 = 1.0;
      }

      else
      {
        v7 = 0.0;
      }

      *v6++ = v7;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_14A60(uint64_t a1, unsigned __int8 *a2, int a3)
{
  result = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (result)
  {
    v6 = a3 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = a3;
    v8 = result;
    do
    {
      if (!*a2++)
      {
        if (*v8 == 0.0)
        {
          v10 = 1.0;
        }

        else
        {
          v10 = 0.0;
        }

        *v8 = v10;
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

float sub_14B3C(uint64_t a1, int a2)
{
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  if (v3)
  {
    v5 = a2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = a2;
    v7 = v3;
    do
    {
      result = ~*v7;
      *v7++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_14BB4(uint64_t a1, unsigned __int8 *a2, int a3)
{
  result = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (result)
  {
    v6 = a3 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = a3;
    v8 = result;
    do
    {
      if (!*a2++)
      {
        *v8 = ~*v8;
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

float sub_14C44(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));

  return mathParser::ceil<float>(v1);
}

uint64_t sub_14C90(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::ceil<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_14D10(uint64_t a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2++)
      {
        *v8 = mathParser::ceil<float>(*v8);
      }

      ++v8;
      --v3;
    }

    while (v3);
  }

  return v6;
}

float sub_14DA8(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));

  return mathParser::round<float>(v1);
}

uint64_t sub_14DF4(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::round<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_14E74(uint64_t a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2++)
      {
        *v8 = mathParser::round<float>(*v8);
      }

      ++v8;
      --v3;
    }

    while (v3);
  }

  return v6;
}

float sub_14F0C(uint64_t a1)
{
  (***(a1 + 16))(*(a1 + 16));

  return mathParser::floor<float>(v1);
}

uint64_t sub_14F58(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v3 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v4 = v3;
  if (v3)
  {
    v5 = v2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v2 = v2;
    v6 = v3;
    do
    {
      *v6 = mathParser::floor<float>(*v6);
      ++v6;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t sub_14FD8(uint64_t a1, unsigned __int8 *a2, int a3)
{
  LODWORD(v3) = a3;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = v5;
  if (v5)
  {
    v7 = v3 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v3 = v3;
    v8 = v5;
    do
    {
      if (!*a2++)
      {
        *v8 = mathParser::floor<float>(*v8);
      }

      ++v8;
      --v3;
    }

    while (v3);
  }

  return v6;
}

float sub_15070(uint64_t a1)
{
  v2 = (***(a1 + 16))(*(a1 + 16));
  v3 = (***(a1 + 24))(*(a1 + 24));

  return mathParser::atan2<float>(v2, v3);
}

uint64_t sub_15104(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 8))(*(a1 + 16));
  v5 = (*(**(a1 + 24) + 8))(*(a1 + 24), a2);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (a2 >= 1)
    {
      v9 = 0;
      v10 = 4 * a2;
      do
      {
        *(v4 + v9) = mathParser::atan2<float>(*(v4 + v9), *(v6 + v9));
        v9 += 4;
      }

      while (v10 != v9);
    }

    goto LABEL_13;
  }

  if (v4)
  {
    operator delete[]();
  }

  result = 0;
  if (v6)
  {
LABEL_13:
    operator delete[]();
  }

  return result;
}

uint64_t sub_1520C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v7 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3);
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (a3 >= 1)
    {
      v11 = 0;
      do
      {
        if (!*(a2 + v11))
        {
          *(v6 + 4 * v11) = mathParser::atan2<float>(*(v6 + 4 * v11), *(v8 + 4 * v11));
        }

        ++v11;
      }

      while (a3 != v11);
    }

    goto LABEL_15;
  }

  if (v6)
  {
    operator delete[]();
  }

  result = 0;
  if (v8)
  {
LABEL_15:
    operator delete[]();
  }

  return result;
}

void *sub_1532C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B88(0x20uLL);
  v5 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v6 = (*(**(a1 + 24) + 120))(*(a1 + 24));
  sub_18500(v4, v5, v6);
  *v4 = off_1A8518;
  v7 = sub_5B88(0x20uLL);
  v8 = sub_5B88(0x18uLL);
  *v8 = off_1AA288;
  v8[1] = 0;
  *(v8 + 4) = 0x40000000;
  sub_18500(v7, v4, v8);
  *v7 = off_1A8798;
  v9 = sub_5B88(0x20uLL);
  v10 = sub_5B88(0x18uLL);
  *v10 = off_1AA288;
  v10[1] = 0;
  *(v10 + 4) = 1065353216;
  sub_18500(v9, v10, v7);
  *v9 = off_1A8158;
  v11 = (*(**(a1 + 16) + 112))(*(a1 + 16), a2);
  v12 = sub_5B88(0x20uLL);
  sub_18500(v12, v11, v9);
  *v12 = off_1A8518;
  return v12;
}

void sub_1554C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (v12)
  {
    free(v12);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v17 = *v15;
    v18 = *(v15 + 2);
    if (v10)
    {
      (*(*v10 + 152))(v10);
    }

    if (v11)
    {
      (*(*v11 + 152))(v11);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  _Unwind_Resume(exception_object);
}

void *sub_1568C(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1AA018;
  a1[3] = 0;
  v4 = a1 + 3;
  sub_D448(a1, a2);
  v6 = a2[1];
  v5 = a2[2];
  if (v6 != v5)
  {
    v7 = 0;
    v8 = a2[1];
    while (1)
    {
      v9 = *v6;
      if (v9 == 40)
      {
        v11 = 0;
        ++v7;
      }

      else if (v9 == 41)
      {
        v12 = v7 - 1;
        if (v7 <= 0)
        {
          (*(*a1 + 272))(a1, 24, v8 - *a2, v8 - *a2);
          v11 = 0;
          v5 = a2[2];
        }

        else
        {
          v11 = 0;
        }

        v7 = v12;
      }

      else
      {
        if (v7 >= 2)
        {
          v10 = 0;
        }

        else
        {
          v10 = v6;
        }

        if (v9 == 44)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
LABEL_19:
          v6 = a2[1];
          goto LABEL_21;
        }
      }

      ++v6;
      ++v8;
      if (v6 == v5)
      {
        goto LABEL_19;
      }
    }
  }

  v11 = 0;
LABEL_21:
  if (v11 == v6)
  {
    (*(*a1 + 272))(a1, 21, &v6[-*a2], &v6[-*a2]);
    v5 = a2[2];
  }

  if (v11 == v5)
  {
    (*(*a1 + 272))(a1, 21, &v11[-*a2], &v11[-*a2]);
    v5 = a2[2];
  }

  if (v11 != v5)
  {
    v13 = v11 + 2;
    v14 = v11;
    do
    {
      v15 = *++v14;
      if (v15 == 44)
      {
        (*(*a1 + 272))(a1, 29, &v13[-*a2], &v5[-*a2]);
        v5 = a2[2];
      }

      ++v13;
    }

    while (v14 != v5);
  }

  v16 = a2[3];
  v21[2] = v5;
  v21[3] = v16;
  v17 = *a2;
  v21[0] = *a2;
  v22 = v17;
  v23 = v11 - 1;
  v24 = v16;
  v21[1] = v11 + 1;
  v20[0] = 0;
  (*(*a1 + 256))(a1, &v22, v20);
  if (v20[0])
  {
    a1[2] = v20[0];
  }

  (*(*a1 + 256))(a1, v21, v4);
  v18 = a1[2];
  if (v18)
  {
    *(v18 + 8) = a1;
  }

  if (*v4)
  {
    *(*v4 + 8) = a1;
  }

  return a1;
}

void sub_1599C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    v17 = *v13;
    v18 = *(v13 + 2);
    v14 = v10[2];
    if (v14)
    {
      (*(*v14 + 152))(v14);
    }

    v10[2] = 0;
    v15 = v10[3];
    if (v15)
    {
      (*(*v15 + 152))(v15);
    }

    *v11 = 0;
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v17;
    exception[2] = v18;
  }

  sub_278EC(v10);
  _Unwind_Resume(a1);
}

void *sub_15A7C(void *a1, uint64_t a2, uint64_t a3)
{
  *sub_D9DC(a1, a2) = off_1AA018;
  if (!a3)
  {
    LODWORD(xmmword_1EF218) = 21;
    *(&xmmword_1EF218 + 1) = -1;
    qword_1EF228 = -1;
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = qword_1EF228;
    *exception = xmmword_1EF218;
    exception[2] = v7;
  }

  a1[3] = a3;
  *(a3 + 8) = a1;
  return a1;
}

float sub_15B2C(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0.0;
  }

  if (*(a1 + 24) < 1)
  {
    return INFINITY;
  }

  v2 = 0;
  v3 = INFINITY;
  do
  {
    v4 = *(*(a1 + 32) + 8 * v2);
    if (v4)
    {
      v5 = (**v4)(v4);
      if (v5 < v3)
      {
        v3 = v5;
      }
    }

    ++v2;
  }

  while (v2 < *(a1 + 24));
  return v3;
}

uint64_t sub_15BD8(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(*(a1 + 32) + 8 * v5);
      if (v6)
      {
        v7 = (*(*v6 + 8))(v6, a2);
        if (v7)
        {
          LODWORD(v5) = v5 + 1;
          v4 = *(a1 + 24);
          goto LABEL_12;
        }

        v4 = *(a1 + 24);
      }

      if (++v5 >= v4)
      {
        v7 = 0;
        goto LABEL_12;
      }
    }
  }

  v7 = 0;
  LODWORD(v5) = 0;
LABEL_12:
  if (v5 < v4)
  {
    v5 = v5;
    do
    {
      v8 = *(*(a1 + 32) + 8 * v5);
      if (v8)
      {
        v9 = (*(*v8 + 8))(v8, a2);
        if (v9)
        {
          if (a2 >= 1)
          {
            v10 = a2;
            v11 = v7;
            v12 = v9;
            do
            {
              if (*v11 > *v12)
              {
                *v11 = *v12;
              }

              ++v12;
              ++v11;
              --v10;
            }

            while (v10);
          }

          operator delete[]();
        }
      }

      ++v5;
    }

    while (v5 < *(a1 + 24));
  }

  return v7;
}

void sub_15D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(exception_object);
    v12 = *v10;
    v13 = *(v10 + 2);
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v12;
    exception[2] = v13;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_15DD4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(*(a1 + 32) + 8 * v7);
      if (v8)
      {
        v9 = (*(*v8 + 16))(v8, a2, a3);
        if (v9)
        {
          LODWORD(v7) = v7 + 1;
          v6 = *(a1 + 24);
          goto LABEL_12;
        }

        v6 = *(a1 + 24);
      }

      if (++v7 >= v6)
      {
        v9 = 0;
        goto LABEL_12;
      }
    }
  }

  v9 = 0;
  LODWORD(v7) = 0;
LABEL_12:
  if (v7 < v6)
  {
    v7 = v7;
    do
    {
      v10 = *(*(a1 + 32) + 8 * v7);
      if (v10)
      {
        v11 = (*(*v10 + 16))(v10, a2, a3);
        if (v11)
        {
          if (a3 >= 1)
          {
            v12 = a3;
            v13 = v9;
            v14 = v11;
            v15 = a2;
            do
            {
              if (*v13 > *v14 && !*v15)
              {
                *v13 = *v14;
              }

              ++v15;
              ++v14;
              ++v13;
              --v12;
            }

            while (v12);
          }

          operator delete[]();
        }
      }

      ++v7;
    }

    while (v7 < *(a1 + 24));
  }

  return v9;
}

void sub_15F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(exception_object);
    v12 = *v10;
    v13 = *(v10 + 2);
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v12;
    exception[2] = v13;
  }

  _Unwind_Resume(exception_object);
}

void sub_1604C(uint64_t a1)
{
  sub_1632C(a1);
  if (!*(a1 + 32) || *(a1 + 24) < 1)
  {
    return;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = *(*(a1 + 32) + 8 * v2);
    if (!v6 || !(*(*v6 + 40))(v6))
    {
      goto LABEL_15;
    }

    v7 = *(*(a1 + 32) + 8 * v2);
    v8 = (**v7)(v7);
    v9 = v8;
    if (!v3)
    {
      v4 = v2;
      v3 = v7;
      goto LABEL_16;
    }

    v10 = *(a1 + 32);
    if (v8 >= v5)
    {
      v12 = *(v10 + 8 * v2);
      if (v12)
      {
        (*(*v12 + 152))(v12);
        v10 = *(a1 + 32);
      }

      *(v10 + 8 * v2) = 0;
LABEL_15:
      v9 = v5;
      goto LABEL_16;
    }

    v11 = *(v10 + 8 * v4);
    if (v11)
    {
      (*(*v11 + 152))(v11);
      v10 = *(a1 + 32);
    }

    *(v10 + 8 * v4) = 0;
    v3 = *(*(a1 + 32) + 8 * v2);
    v4 = v2;
LABEL_16:
    ++v2;
    v13 = *(a1 + 24);
    v5 = v9;
  }

  while (v2 < v13);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = *(a1 + 32);
    v16 = *(a1 + 24);
    do
    {
      if (!*v15++)
      {
        ++v14;
      }

      --v16;
    }

    while (v16);
    if (v14)
    {
      operator new[]();
    }

    if (v13 == 1)
    {
      v18 = *(a1 + 32);
      if (*v18)
      {
        if (*(a1 + 8))
        {
          *v18 = 0;
          (*(**(a1 + 8) + 64))(*(a1 + 8), a1);
          if (*(a1 + 32))
          {
            operator delete[]();
          }

          *(a1 + 32) = 0;
          *(a1 + 8) = 0;
          v19 = *(*a1 + 152);

          v19(a1);
        }
      }
    }
  }
}

void *sub_1632C(void *result)
{
  if (result[4])
  {
    v1 = result;
    if (*(result + 6) >= 1)
    {
      v2 = 0;
      do
      {
        result = *(v1[4] + 8 * v2);
        if (result)
        {
          (*(*result + 96))(result);
          v3 = *(v1[4] + 8 * v2);
          result = (*(*v3 + 40))(v3);
          if (result)
          {
            v4 = *(v1[4] + 8 * v2);
            result = (*(*v4 + 24))(v4);
            if (!result)
            {
              v5 = *(v1[4] + 8 * v2);
              v6 = (**v5)(v5);
              v7 = v1[4];
              v8 = *(v7 + 8 * v2);
              *(v7 + 8 * v2) = 0;
              result = sub_5B88(0x18uLL);
              *result = off_1AA288;
              result[1] = 0;
              *(result + 4) = v6;
              *(v1[4] + 8 * v2) = result;
              v9 = *(v1[4] + 8 * v2);
              if (v9)
              {
                *(v9 + 8) = v1;
              }

              if (v8)
              {
                result = (*(*v8 + 152))(v8);
              }
            }
          }
        }

        ++v2;
      }

      while (v2 < *(v1 + 6));
    }
  }

  return result;
}

void sub_16518(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1AA150;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  sub_D448(a1, a2);
  v4 = a2[2];
  if (a2[1] != v4)
  {
    v5 = 0;
    v6 = a2[1];
    v7 = v6;
    do
    {
      v8 = *v7;
      if (v8 == 40)
      {
        v10 = (v5 + 1);
      }

      else if (v8 == 41)
      {
        v10 = (v5 - 1);
        if (v5 <= 0)
        {
          (*(*a1 + 272))(a1, 24, &v6[-*a2], &v6[-*a2]);
          v4 = a2[2];
        }
      }

      else if (v8 == 44 && v5 == 0)
      {
        v10 = 0;
        ++*(a1 + 24);
      }

      else
      {
        v10 = v5;
      }

      ++v7;
      ++v6;
      v5 = v10;
    }

    while (v7 != v4);
  }

  operator new[]();
}

void sub_169AC(uint64_t a1, int a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1AA150;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      if (*a3)
      {
        *(a1 + 24) = ++v3;
      }

      ++a3;
      --v4;
    }

    while (v4);
  }

  operator new[]();
}

float sub_16AB4(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0.0;
  }

  if (*(a1 + 24) < 1)
  {
    return -INFINITY;
  }

  v2 = 0;
  v3 = -INFINITY;
  do
  {
    v4 = *(*(a1 + 32) + 8 * v2);
    if (v4)
    {
      v5 = (**v4)(v4);
      if (v5 > v3)
      {
        v3 = v5;
      }
    }

    ++v2;
  }

  while (v2 < *(a1 + 24));
  return v3;
}

uint64_t sub_16B60(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(*(a1 + 32) + 8 * v5);
      if (v6)
      {
        v7 = (*(*v6 + 8))(v6, a2);
        if (v7)
        {
          LODWORD(v5) = v5 + 1;
          v4 = *(a1 + 24);
          goto LABEL_12;
        }

        v4 = *(a1 + 24);
      }

      if (++v5 >= v4)
      {
        v7 = 0;
        goto LABEL_12;
      }
    }
  }

  v7 = 0;
  LODWORD(v5) = 0;
LABEL_12:
  if (v5 < v4)
  {
    v5 = v5;
    do
    {
      v8 = *(*(a1 + 32) + 8 * v5);
      if (v8)
      {
        v9 = (*(*v8 + 8))(v8, a2);
        if (v9)
        {
          if (a2 >= 1)
          {
            v10 = a2;
            v11 = v7;
            v12 = v9;
            do
            {
              if (*v11 < *v12)
              {
                *v11 = *v12;
              }

              ++v12;
              ++v11;
              --v10;
            }

            while (v10);
          }

          operator delete[]();
        }
      }

      ++v5;
    }

    while (v5 < *(a1 + 24));
  }

  return v7;
}

void sub_16CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(exception_object);
    v12 = *v10;
    v13 = *(v10 + 2);
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v12;
    exception[2] = v13;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_16D5C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(*(a1 + 32) + 8 * v7);
      if (v8)
      {
        v9 = (*(*v8 + 16))(v8, a2, a3);
        if (v9)
        {
          LODWORD(v7) = v7 + 1;
          v6 = *(a1 + 24);
          goto LABEL_12;
        }

        v6 = *(a1 + 24);
      }

      if (++v7 >= v6)
      {
        v9 = 0;
        goto LABEL_12;
      }
    }
  }

  v9 = 0;
  LODWORD(v7) = 0;
LABEL_12:
  if (v7 < v6)
  {
    v7 = v7;
    do
    {
      v10 = *(*(a1 + 32) + 8 * v7);
      if (v10)
      {
        v11 = (*(*v10 + 16))(v10, a2, a3);
        if (v11)
        {
          if (a3 >= 1)
          {
            v12 = a3;
            v13 = v9;
            v14 = v11;
            v15 = a2;
            do
            {
              if (*v13 < *v14 && !*v15)
              {
                *v13 = *v14;
              }

              ++v15;
              ++v14;
              ++v13;
              --v12;
            }

            while (v12);
          }

          operator delete[]();
        }
      }

      ++v7;
    }

    while (v7 < *(a1 + 24));
  }

  return v9;
}

void sub_16EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(exception_object);
    v12 = *v10;
    v13 = *(v10 + 2);
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v12;
    exception[2] = v13;
  }

  _Unwind_Resume(exception_object);
}

void sub_16FD4(uint64_t a1)
{
  sub_1632C(a1);
  if (!*(a1 + 32))
  {
    return;
  }

  if (*(a1 + 24) < 1)
  {
LABEL_30:
    *(a1 + 24) = 0;
    return;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = *(*(a1 + 32) + 8 * v2);
    if (!v6 || !(*(*v6 + 40))(v6))
    {
      goto LABEL_15;
    }

    v7 = *(*(a1 + 32) + 8 * v2);
    v8 = (**v7)(v7);
    v9 = v8;
    if (!v3)
    {
      v4 = v2;
      v3 = v7;
      goto LABEL_16;
    }

    v10 = *(a1 + 32);
    if (v8 <= v5)
    {
      v12 = *(v10 + 8 * v2);
      if (v12)
      {
        (*(*v12 + 152))(v12);
        v10 = *(a1 + 32);
      }

      *(v10 + 8 * v2) = 0;
LABEL_15:
      v9 = v5;
      goto LABEL_16;
    }

    v11 = *(v10 + 8 * v4);
    if (v11)
    {
      (*(*v11 + 152))(v11);
      v10 = *(a1 + 32);
    }

    *(v10 + 8 * v4) = 0;
    v3 = *(*(a1 + 32) + 8 * v2);
    v4 = v2;
LABEL_16:
    ++v2;
    v13 = *(a1 + 24);
    v5 = v9;
  }

  while (v2 < v13);
  if (v13 < 1)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v15 = 0;
  v16 = 8 * v13;
  do
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + v14);
    if (v18)
    {
      *(v17 + 8 * v15++) = v18;
    }

    v14 += 8;
  }

  while (v16 != v14);
  *(a1 + 24) = v15;
  if (v15 == 1)
  {
    v19 = *(a1 + 32);
    if (*v19)
    {
      if (*(a1 + 8))
      {
        *v19 = 0;
        (*(**(a1 + 8) + 64))(*(a1 + 8), a1);
        if (*(a1 + 32))
        {
          operator delete[]();
        }

        *(a1 + 32) = 0;
        *(a1 + 8) = 0;
        v20 = *(*a1 + 152);

        v20(a1);
      }
    }
  }
}

double sub_17240(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0.0;
  }

  v3 = (***v1)();
  v4 = (***(*(a1 + 32) + 8))();
  v5 = (***(*(a1 + 32) + 16))();
  v6 = (***(*(a1 + 32) + 24))();
  v7 = (***(*(a1 + 32) + 32))();
  *&result = v3 + ((((v7 - v3) * (***(*(a1 + 32) + 40))()) + (v6 * v4)) * v5);
  if (v5 >= 1.0)
  {
    *&result = v7;
  }

  return result;
}

double sub_17460(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0.0;
  }

  v3 = (***v1)();
  v4 = (***(*(a1 + 32) + 8))();
  v5 = (***(*(a1 + 32) + 16))();
  v6 = (***(*(a1 + 32) + 24))();
  v7 = v4 - v6 * (1.0 / ((v3 - v4) + -1.0) + 1.0);
  result = v5 + v6 * (1.0 - 1.0 / ((v3 - v5) + 1.0));
  if (v3 <= v5)
  {
    result = v3;
  }

  if (v3 < v4)
  {
    result = v7;
  }

  *&result = result;
  return result;
}

uint64_t sub_176B0(uint64_t a1, uint64_t a2)
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
          *(v6 + v8) = v7 + *(v6 + v8);
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
          *(v6 + v10) = v9 + *(v6 + v10);
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
        *(v12 + v14) = *(v11 + v14) + *(v12 + v14);
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

uint64_t sub_17928(uint64_t a1, uint64_t a2, uint64_t a3)
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
            *(v8 + 4 * v10) = v9 + *(v8 + 4 * v10);
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
            *(v8 + 4 * v12) = v11 + *(v8 + 4 * v12);
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
          *(v14 + 4 * v16) = *(v13 + 4 * v16) + *(v14 + 4 * v16);
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

void *sub_17BD4(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v5 = (*(**(a1 + 24) + 112))(*(a1 + 24), a2);
  v6 = sub_5B88(0x20uLL);
  sub_18500(v6, v4, v5);
  *v6 = off_1A8158;
  return v6;
}

void sub_17CB4(_Unwind_Exception *exception_object, int a2)
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
    JUMPOUT(0x17C9CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_17D68(uint64_t a1)
{
  sub_18068(a1);
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && (***(a1 + 16))(*(a1 + 16)) == 0.0 && *(a1 + 8))
  {
    v2 = *(a1 + 24);
LABEL_9:
    v3 = *(*a1 + 296);
    v4 = a1;
    goto LABEL_12;
  }

  if ((*(**(a1 + 24) + 40))(*(a1 + 24)) && (***(a1 + 24))(*(a1 + 24)) == 0.0 && *(a1 + 8))
  {
    v2 = *(a1 + 16);
    goto LABEL_9;
  }

  result = (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 24));
  if (!result)
  {
    return result;
  }

  v6 = sub_5B88(0x18uLL);
  *v6 = off_1AA288;
  v6[1] = 0;
  *(v6 + 4) = 0x40000000;
  v7 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v8 = sub_5B88(0x20uLL);
  sub_18500(v8, v6, v7);
  *v8 = off_1A83D8;
  v3 = *(*a1 + 296);
  v4 = a1;
  v2 = v8;
LABEL_12:

  return v3(v4, v2);
}

void sub_17FB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v18)
  {
    free(v18);
  }

  __cxa_begin_catch(a1);
  (*(*v16 + 152))(v16);
  if (v17)
  {
    (*(*v17 + 152))(v17);
  }

  __cxa_end_catch();
}

float *sub_18068(uint64_t a1)
{
  (*(**(a1 + 16) + 96))(*(a1 + 16));
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && !(*(**(a1 + 16) + 24))(*(a1 + 16)))
  {
    v2 = (***(a1 + 16))(*(a1 + 16));
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    v4 = sub_5B88(0x18uLL);
    *v4 = off_1AA288;
    *(v4 + 1) = 0;
    v4[4] = v2;
    *(a1 + 16) = v4;
    if (v3)
    {
      (*(*v3 + 152))(v3);
      v4 = *(a1 + 16);
    }

    *(v4 + 1) = a1;
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
      *result = off_1AA288;
      *(result + 1) = 0;
      result[4] = v6;
      *(a1 + 24) = result;
      if (v7)
      {
        (*(*v7 + 152))(v7);
        result = *(a1 + 24);
      }

      *(result + 1) = a1;
    }
  }

  return result;
}

void sub_182B8(void *a1)
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

uint64_t *sub_18368(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  a1[2] = 0;
  v5 = a1 + 2;
  *a1 = off_1AA528;
  a1[1] = 0;
  a1[3] = 0;
  v6 = a1 + 3;
  sub_D118(a1, a2, (a1 + 2));
  (*(*a1 + 256))(a1, a3, v6);
  if (*v5)
  {
    *(*v5 + 8) = a1;
  }

  if (*v6)
  {
    *(*v6 + 8) = a1;
  }

  return a1;
}

void *sub_18500(void *result, uint64_t a2, uint64_t a3)
{
  *result = off_1AA528;
  result[1] = 0;
  if (!a2 || !a3)
  {
    LODWORD(xmmword_1EF218) = 21;
    *(&xmmword_1EF218 + 1) = -1;
    qword_1EF228 = -1;
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = qword_1EF228;
    *exception = xmmword_1EF218;
    exception[2] = v4;
  }

  result[2] = a2;
  result[3] = a3;
  *(a2 + 8) = result;
  *(a3 + 8) = result;
  return result;
}

void sub_1859C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *a10 = off_1A5580;
  a10[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t sub_18640(uint64_t a1, uint64_t a2)
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
          *(v6 + v8) = v7 - *(v6 + v8);
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
          *(v6 + v10) = *(v6 + v10) - v9;
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
        *(v12 + v14) = *(v12 + v14) - *(v11 + v14);
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

uint64_t sub_188B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
            *(v8 + 4 * v10) = v9 - *(v8 + 4 * v10);
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
            *(v8 + 4 * v12) = *(v8 + 4 * v12) - v11;
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
          *(v14 + 4 * v16) = *(v14 + 4 * v16) - *(v13 + 4 * v16);
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

void *sub_18B64(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v5 = (*(**(a1 + 24) + 112))(*(a1 + 24), a2);
  v6 = sub_5B88(0x20uLL);
  sub_18500(v6, v4, v5);
  *v6 = off_1A8298;
  return v6;
}

void sub_18C44(_Unwind_Exception *exception_object, int a2)
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
    JUMPOUT(0x18C2CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_18CF8(void *a1)
{
  sub_18068(a1);
  if ((*(*a1[2] + 40))(a1[2]) && (**a1[2])(a1[2]) == 0.0 && a1[1])
  {
    v2 = a1[3];
    a1[3] = 0;
    v3 = sub_5B88(0x18uLL);
    sub_D9DC(v3, v2);
    *v3 = off_1A5CC8;
    return (*(*a1 + 296))(a1, v3);
  }

  else if ((*(*a1[3] + 40))(a1[3]) && (**a1[3])(a1[3]) == 0.0 && a1[1])
  {
    v5 = a1[2];
    v6 = *(*a1 + 296);

    return v6(a1, v5);
  }

  else
  {
    result = (*(*a1[3] + 136))(a1[3], a1[2]);
    if (result)
    {
      v7 = sub_5B88(0x18uLL);
      *v7 = off_1AA288;
      v7[1] = 0;
      *(v7 + 4) = 0;
      return (*(*a1 + 296))(a1);
    }
  }

  return result;
}

void sub_18F34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v16)
  {
    free(v16);
  }

  __cxa_begin_catch(a1);
  *(v14 + 24) = v15;
  if (v15)
  {
    *(v15 + 8) = v14;
  }

  __cxa_end_catch();
}

uint64_t sub_19008(uint64_t a1, uint64_t a2)
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
          *(v6 + v8) = v7 * *(v6 + v8);
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
          *(v6 + v10) = v9 * *(v6 + v10);
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
        *(v12 + v14) = *(v11 + v14) * *(v12 + v14);
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

uint64_t sub_19280(uint64_t a1, uint64_t a2, uint64_t a3)
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
            *(v8 + 4 * v10) = v9 * *(v8 + 4 * v10);
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
            *(v8 + 4 * v12) = v11 * *(v8 + 4 * v12);
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
          *(v14 + 4 * v16) = *(v13 + 4 * v16) * *(v14 + 4 * v16);
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

uint64_t sub_1952C(uint64_t a1)
{
  if ((*(**(a1 + 16) + 40))(*(a1 + 16)) && (***(a1 + 16))(*(a1 + 16)) == 0.0 || (*(**(a1 + 24) + 40))(*(a1 + 24)) && (***(a1 + 24))(*(a1 + 24)) == 0.0)
  {
    return 1;
  }

  return sub_19628(a1);
}

uint64_t sub_19628(uint64_t a1)
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