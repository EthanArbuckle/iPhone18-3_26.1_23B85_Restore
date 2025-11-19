void sub_2713F6AEC(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2713E01B4(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  v9 = xmmword_279E2F5A0;
  v8[0] = &v5;
  v8[1] = a1;
  v8[2] = &v9;
  sub_2713F6C08(v5, v8);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

unsigned __int8 **sub_2713F6C08(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v32 = *a2;
        result = sub_271759D80((*a2 + 16), 6);
        v33 = *(v32 + 16);
        v34 = *(v33 + 48);
        if (v34 >= 2)
        {
          v35 = *(v33 + 40);
          v36 = a2[1];
          v37 = 2 * (v34 >> 1);
          do
          {
            result = (*(*v36 + 48))(v36, v35);
            v35 += 2;
            v37 -= 2;
          }

          while (v37);
        }
      }

      else
      {
        v21 = *a2;
        result = sub_271759D80((*a2 + 16), 7);
        v22 = *(v21 + 16);
        v23 = *(v22 + 48);
        if (v23 >= 4)
        {
          v24 = *(v22 + 40);
          v25 = a2[1];
          v26 = 4 * (v23 >> 2);
          do
          {
            result = (*(*v25 + 56))(v25, v24);
            v24 += 4;
            v26 -= 4;
          }

          while (v26);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          v44 = *a2;
          result = sub_271759D80((*a2 + 16), 8);
          v45 = *(v44 + 16);
          v46 = *(v45 + 48);
          if (v46 >= 8)
          {
            v47 = *(v45 + 40);
            v48 = a2[1];
            v49 = 8 * (v46 >> 3);
            do
            {
              result = (*(*v48 + 72))(v48, v47);
              v47 += 8;
              v49 -= 8;
            }

            while (v49);
          }

          break;
        case 11:
          v56 = *a2;
          result = sub_271759D80((*a2 + 16), 11);
          v57 = *(v56 + 16);
          v58 = *(v57 + 48);
          if (v58 >= 4)
          {
            v59 = *(v57 + 40);
            v60 = a2[1];
            v61 = 4 * (v58 >> 2);
            do
            {
              result = (*(*v60 + 128))(v60, v59);
              v59 += 4;
              v61 -= 4;
            }

            while (v61);
          }

          break;
        case 12:
          v9 = *a2;
          result = sub_271759D80((*a2 + 16), 12);
          v10 = *(v9 + 16);
          v11 = *(v10 + 48);
          if (v11 >= 8)
          {
            v12 = *(v10 + 40);
            v13 = a2[1];
            v14 = 8 * (v11 >> 3);
            do
            {
              result = (*(*v13 + 136))(v13, v12);
              v12 += 8;
              v14 -= 8;
            }

            while (v14);
          }

          break;
        default:
          goto LABEL_53;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_53;
      }

      v15 = *a2;
      result = sub_271759D80((*a2 + 16), 1);
      v16 = *(v15 + 16);
      v17 = *(v16 + 48);
      if (v17 >= 2)
      {
        v18 = *(v16 + 40);
        v19 = a2[1];
        v20 = 2 * (v17 >> 1);
        do
        {
          result = (*(*v19 + 96))(v19, v18);
          v18 += 2;
          v20 -= 2;
        }

        while (v20);
      }
    }

    else
    {
      v27 = *a2;
      result = sub_271759D80((*a2 + 16), 0);
      v28 = *(v27 + 16);
      v29 = *(v28 + 48);
      if (v29)
      {
        v30 = *(v28 + 40);
        v31 = a2[1];
        do
        {
          result = (*(*v31 + 80))(v31, v30++);
          --v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v38 = *a2;
        result = sub_271759D80((*a2 + 16), 2);
        v39 = *(v38 + 16);
        v40 = *(v39 + 48);
        if (v40 >= 4)
        {
          v41 = *(v39 + 40);
          v42 = a2[1];
          v43 = 4 * (v40 >> 2);
          do
          {
            result = (*(*v42 + 104))(v42, v41);
            v41 += 4;
            v43 -= 4;
          }

          while (v43);
        }

        break;
      case 3:
        v50 = *a2;
        result = sub_271759D80((*a2 + 16), 3);
        v51 = *(v50 + 16);
        v52 = *(v51 + 48);
        if (v52 >= 8)
        {
          v53 = *(v51 + 40);
          v54 = a2[1];
          v55 = 8 * (v52 >> 3);
          do
          {
            result = (*(*v54 + 120))(v54, v53);
            v53 += 8;
            v55 -= 8;
          }

          while (v55);
        }

        break;
      case 5:
        v3 = *a2;
        result = sub_271759D80((*a2 + 16), 5);
        v5 = *(v3 + 16);
        v6 = *(v5 + 48);
        if (v6)
        {
          v7 = *(v5 + 40);
          v8 = a2[1];
          do
          {
            result = (*(*v8 + 88))(v8, v7++);
            --v6;
          }

          while (v6);
        }

        return result;
      default:
LABEL_53:

        sub_27183428C(a1);
    }
  }

  return result;
}

void sub_2713F70D0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v4 = a2;
    sub_2713E0CC8(a1);
  }

  sub_2713F724C();
}

void sub_2713F724C()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B3E8();
}

void sub_2713F74A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F74BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713F74D0(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713F81F0(v3);
      }

      sub_2713F8010(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713F83D4(v3);
      case 11:
        sub_2713F861C(v3);
      case 12:
        sub_2713F8800(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713F7654(v3);
    }

    if (a1 == 1)
    {
      sub_2713F782C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713F7A0C(v3);
      case 3:
        sub_2713F7BF0(v3);
      case 5:
        sub_2713F7E38(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713F7654(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182D810(v5, v6);
    i += 2;
  }

  sub_27175862C();
}

void sub_2713F77FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F782C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182F018(v5, v6);
    i += 2;
  }

  sub_271758B58();
}

void sub_2713F79DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F7A0C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182F1C8(v5, v6);
    i += 2;
  }

  sub_271759088();
}

void sub_2713F7BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F7BF0(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_271831430(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_2717595B8();
}

void sub_2713F7DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713F7E38(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182EDD8(v5, v6);
    i += 2;
  }

  sub_271758398();
}

void sub_2713F7FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F8010(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182EEF8(v5, v6);
    i += 2;
  }

  sub_2717588C0();
}

void sub_2713F81C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F81F0(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182F0F0(v5, v6);
    i += 2;
  }

  sub_271758DF0();
}

void sub_2713F83A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F83D4(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_271831164(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_271759320();
}

void sub_2713F85B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713F861C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182F4D4(v5, v6);
    i += 2;
  }

  sub_271759850();
}

void sub_2713F87D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F8800(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182F5F0(v5, v6);
    i += 2;
  }

  sub_271759AE8();
}

void sub_2713F89B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F89E4(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713F9704(v3);
      }

      sub_2713F9524(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713F98E8(v3);
      case 11:
        sub_2713F9B30(v3);
      case 12:
        sub_2713F9D14(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713F8B68(v3);
    }

    if (a1 == 1)
    {
      sub_2713F8D40(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713F8F20(v3);
      case 3:
        sub_2713F9104(v3);
      case 5:
        sub_2713F934C(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713F8B68(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182D810(v5, v6);
    i += 2;
  }

  sub_27175862C();
}

void sub_2713F8D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F8D40(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182F018(v5, v6);
    i += 2;
  }

  sub_271758B58();
}

void sub_2713F8EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F8F20(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182F1C8(v5, v6);
    i += 2;
  }

  sub_271759088();
}

void sub_2713F90D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F9104(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_271831430(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_2717595B8();
}

void sub_2713F92E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713F934C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182EDD8(v5, v6);
    i += 2;
  }

  sub_271758398();
}

void sub_2713F94F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F9524(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182EEF8(v5, v6);
    i += 2;
  }

  sub_2717588C0();
}

void sub_2713F96D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F9704(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182F0F0(v5, v6);
    i += 2;
  }

  sub_271758DF0();
}

void sub_2713F98B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F98E8(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_271831164(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_271759320();
}

void sub_2713F9AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713F9B30(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182F4D4(v5, v6);
    i += 2;
  }

  sub_271759850();
}

void sub_2713F9CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F9D14(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D6C4(v4);
    ++v4[14];
    sub_27182F5F0(v5, v6);
    i += 2;
  }

  sub_271759AE8();
}

void sub_2713F9EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713F9EF8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    *&v9 = 0;
    sub_27183FF6C(*(a2 + 48), &v9);
    *&v7 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v7 + 1) = v9;
    sub_2713BF82C(a2 + 24, &v7);
    LOBYTE(v7) = 0;
    sub_27183F824(*(a2 + 48), &v7);
    *a3 = v7;
    sub_27183FF6C(*(a2 + 48), a3 + 1);
    v9 = xmmword_279E2F5A0;
    v6 = *a3;
    *&v7 = a3;
    *(&v7 + 1) = a2;
    v8 = &v9;
    sub_2713FA210(v6, &v7);
  }

  sub_2713FA060();
}

void sub_2713FA060()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B3E8();
}

void sub_2713FA1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713FA1FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713FA210(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713FADB8(a2);
      }

      sub_2713FABE8(a2);
    }

    switch(a1)
    {
      case 8:
        sub_2713FAF8C(a2);
      case 11:
        sub_2713FB160(a2);
      case 12:
        sub_2713FB334(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713FA2F0(a2);
    }

    if (a1 == 1)
    {
      sub_2713FA4B0(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713FA680(a2);
      case 3:
        sub_2713FA854(a2);
      case 5:
        sub_2713FAA28(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_2713FA2F0(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_2713FA480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FA4B0(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_2713FA650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FA680(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2713FA824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FA854(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2713FA9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FAA28(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2713FABB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FABE8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_2713FAD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FADB8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2713FAF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FAF8C(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2713FB130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FB160(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2713FB304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FB334(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2713FB4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FB508(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713FC0B0(a2);
      }

      sub_2713FBEE0(a2);
    }

    switch(a1)
    {
      case 8:
        sub_2713FC284(a2);
      case 11:
        sub_2713FC458(a2);
      case 12:
        sub_2713FC62C(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713FB5E8(a2);
    }

    if (a1 == 1)
    {
      sub_2713FB7A8(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713FB978(a2);
      case 3:
        sub_2713FBB4C(a2);
      case 5:
        sub_2713FBD20(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_2713FB5E8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_2713FB778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FB7A8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_2713FB948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FB978(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2713FBB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FBB4C(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2713FBCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FBD20(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2713FBEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FBEE0(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_2713FC080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FC0B0(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2713FC254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FC284(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2713FC428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FC458(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2713FC5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FC62C(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2713FC7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FC800(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v4 = a2;
    sub_2713E1CA0(a1);
  }

  sub_2713FC97C();
}

void sub_2713FC97C()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B3E8();
}

void sub_2713FCBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713FCBEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713FCC00(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713FD920(v3);
      }

      sub_2713FD740(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713FDB04(v3);
      case 11:
        sub_2713FDD4C(v3);
      case 12:
        sub_2713FDF30(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713FCD84(v3);
    }

    if (a1 == 1)
    {
      sub_2713FCF5C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713FD13C(v3);
      case 3:
        sub_2713FD320(v3);
      case 5:
        sub_2713FD568(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713FCD84(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182D3F8(v5, v6);
    i += 2;
  }

  sub_27175862C();
}

void sub_2713FCF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FCF5C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182DFB4(v5, v6);
    i += 2;
  }

  sub_271758B58();
}

void sub_2713FD10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FD13C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182E164(v5, v6);
    i += 2;
  }

  sub_271759088();
}

void sub_2713FD2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FD320(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_27182FFA0(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_2717595B8();
}

void sub_2713FD500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713FD568(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182DD74(v5, v6);
    i += 2;
  }

  sub_271758398();
}

void sub_2713FD710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FD740(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182DE94(v5, v6);
    i += 2;
  }

  sub_2717588C0();
}

void sub_2713FD8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FD920(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182E08C(v5, v6);
    i += 2;
  }

  sub_271758DF0();
}

void sub_2713FDAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FDB04(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_27182FA80(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_271759320();
}

void sub_2713FDCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713FDD4C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182E498(v5, v6);
    i += 2;
  }

  sub_271759850();
}

void sub_2713FDF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FDF30(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182E5DC(v5, v6);
    i += 2;
  }

  sub_271759AE8();
}

void sub_2713FE0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FE114(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713FEE34(v3);
      }

      sub_2713FEC54(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713FF018(v3);
      case 11:
        sub_2713FF260(v3);
      case 12:
        sub_2713FF444(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713FE298(v3);
    }

    if (a1 == 1)
    {
      sub_2713FE470(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713FE650(v3);
      case 3:
        sub_2713FE834(v3);
      case 5:
        sub_2713FEA7C(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713FE298(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182D3F8(v5, v6);
    i += 2;
  }

  sub_27175862C();
}

void sub_2713FE440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FE470(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182DFB4(v5, v6);
    i += 2;
  }

  sub_271758B58();
}

void sub_2713FE620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FE650(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182E164(v5, v6);
    i += 2;
  }

  sub_271759088();
}

void sub_2713FE804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FE834(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_27182FFA0(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_2717595B8();
}

void sub_2713FEA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713FEA7C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182DD74(v5, v6);
    i += 2;
  }

  sub_271758398();
}

void sub_2713FEC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FEC54(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182DE94(v5, v6);
    i += 2;
  }

  sub_2717588C0();
}

void sub_2713FEE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FEE34(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182E08C(v5, v6);
    i += 2;
  }

  sub_271758DF0();
}

void sub_2713FEFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FF018(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_27182FA80(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_271759320();
}

void sub_2713FF1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713FF260(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182E498(v5, v6);
    i += 2;
  }

  sub_271759850();
}

void sub_2713FF414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FF444(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_27182D2AC(v4);
    ++v4[14];
    sub_27182E5DC(v5, v6);
    i += 2;
  }

  sub_271759AE8();
}

void sub_2713FF5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FF628(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a2, __p);
  if (LODWORD(__p[0]) > 1)
  {
    LOBYTE(__p[0]) = 0;
    sub_271839D90(a2, __p);
    *a3 = __p[0];
    sub_27183B6AC(a2, a3 + 1);
    v6 = xmmword_279E2F5A0;
    v5 = *a3;
    __p[0] = a3;
    __p[1] = a2;
    __p[2] = &v6;
    sub_2713FF928(v5, __p);
  }

  sub_2713FF778();
}

void sub_2713FF778()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B3E8();
}

void sub_2713FF8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713FF914(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713FF928(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2714004B8(a2);
      }

      sub_2714002EC(a2);
    }

    switch(a1)
    {
      case 8:
        sub_271400688(a2);
      case 11:
        sub_271400858(a2);
      case 12:
        sub_271400A28(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713FFA08(a2);
    }

    if (a1 == 1)
    {
      sub_2713FFBC4(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713FFD90(a2);
      case 3:
        sub_2713FFF60(a2);
      case 5:
        sub_271400130(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_2713FFA08(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_2713FFB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FFBC4(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_2713FFD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FFD90(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2713FFF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713FFF60(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_271400100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271400130(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2714002BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714002EC(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_271400488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714004B8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_271400658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271400688(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_271400828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271400858(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2714009F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271400A28(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_271400BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271400BF8(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271401788(a2);
      }

      sub_2714015BC(a2);
    }

    switch(a1)
    {
      case 8:
        sub_271401958(a2);
      case 11:
        sub_271401B28(a2);
      case 12:
        sub_271401CF8(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271400CD8(a2);
    }

    if (a1 == 1)
    {
      sub_271400E94(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271401060(a2);
      case 3:
        sub_271401230(a2);
      case 5:
        sub_271401400(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_271400CD8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_271400E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271400E94(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_271401030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271401060(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_271401200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271401230(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2714013D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271401400(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_27140158C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714015BC(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_271401758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271401788(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_271401928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271401958(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_271401AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271401B28(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_271401CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271401CF8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_271401E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271401EC8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v7 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    if (v7 > 1)
    {
      sub_27173170C(a2);
      sub_27140213C(a2, a3);
    }

    sub_271401FC0();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_271401FC0()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B3E8();
}

void sub_27140210C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_271402120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27140213C(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v3 > v2)
  {
    v4 = a1[3];
    v5 = *(v4 + v2);
    v6 = v2 + 1;
    a1[6] = v6;
    *a2 = v5;
    v7 = v3 >= v6;
    v8 = v3 - v6;
    if (!v7)
    {
      v8 = 0;
    }

    if (v8 > 7)
    {
      *(a2 + 8) = *(v4 + v6);
      a1[6] += 8;
      v11 = xmmword_279E2F5A0;
      v10[0] = a2;
      v10[1] = a1;
      v10[2] = &v11;
      sub_271402248(v5, v10);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_271402248(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271403088(a2);
      }

      sub_271402E4C(a2);
    }

    switch(a1)
    {
      case 8:
        sub_2714032C8(a2);
      case 11:
        sub_271403508(a2);
      case 12:
        sub_271403748(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271402328(a2);
    }

    if (a1 == 1)
    {
      sub_27140255C(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271402798(a2);
      case 3:
        sub_2714029D8(a2);
      case 5:
        sub_271402C18(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_271402328(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_27175862C();
}

void sub_27140251C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27140255C(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758B58();
}

void sub_271402758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271402798(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759088();
}

void sub_271402998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714029D8(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717595B8();
}

void sub_271402BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271402C18(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758398();
}

void sub_271402E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271402E4C(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717588C0();
}

void sub_271403048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271403088(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758DF0();
}

void sub_271403288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714032C8(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759320();
}

void sub_2714034C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271403508(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759850();
}

void sub_271403708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271403748(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759AE8();
}

void sub_271403948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271403988(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v3 > v2)
  {
    v4 = a1[3];
    v5 = *(v4 + v2);
    v6 = v2 + 1;
    a1[6] = v6;
    *a2 = v5;
    v7 = v3 >= v6;
    v8 = v3 - v6;
    if (!v7)
    {
      v8 = 0;
    }

    if (v8 > 7)
    {
      *(a2 + 8) = *(v4 + v6);
      a1[6] += 8;
      v11 = xmmword_279E2F5A0;
      v10[0] = a2;
      v10[1] = a1;
      v10[2] = &v11;
      sub_271403A94(v5, v10);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_271403A94(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2714048D4(a2);
      }

      sub_271404698(a2);
    }

    switch(a1)
    {
      case 8:
        sub_271404B14(a2);
      case 11:
        sub_271404D54(a2);
      case 12:
        sub_271404F94(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271403B74(a2);
    }

    if (a1 == 1)
    {
      sub_271403DA8(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271403FE4(a2);
      case 3:
        sub_271404224(a2);
      case 5:
        sub_271404464(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_271403B74(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_27175862C();
}

void sub_271403D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271403DA8(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758B58();
}

void sub_271403FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271403FE4(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759088();
}

void sub_2714041E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271404224(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717595B8();
}

void sub_271404424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271404464(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758398();
}

void sub_271404658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271404698(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717588C0();
}

void sub_271404894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714048D4(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758DF0();
}

void sub_271404AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271404B14(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759320();
}

void sub_271404D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271404D54(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759850();
}

void sub_271404F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271404F94(void *a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759AE8();
}

void sub_271405194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714051D4(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  v6 = a1[1];
  LODWORD(v7[0]) = 2;
  (*(v4 + 104))(a1, v7);
  if (v6 >= 1)
  {
    sub_271405308(&v6, a1, a2, v7[0]);
  }

  if (LODWORD(v7[0]) >= 2)
  {
    v7[0] = a2;
    sub_2713E42BC(a1, v7);
    (*(*a1 + 120))(a1, a2 + 8);
    v8 = xmmword_279E2F5A0;
    v5 = *a2;
    v7[0] = a2;
    v7[1] = a1;
    v7[2] = &v8;
    sub_2714057EC(v5, v7);
  }

  sub_271405620();
}

void sub_271405308(int *a1, _BYTE *a2, _BYTE *a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_15;
    }

    v8 = a4;
    LODWORD(v13[0]) = 2;
    (*(*a2 + 104))(a2, v13);
    if (LODWORD(v13[0]) >= 3)
    {
      v12 = v13[0];
      if ((atomic_load_explicit(&qword_280878AF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878AF0))
      {
        sub_27140551C();
      }

      sub_271847D5C(&stru_280878AD8, v12, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 > 1 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 >= 2)
  {
LABEL_14:
    v13[0] = a3;
    sub_2713E42BC(a2, v13);
    (*(*a2 + 120))(a2, a3 + 8);
    v14 = xmmword_279E2F5A0;
    v11 = *a3;
    v13[0] = a3;
    v13[1] = a2;
    v13[2] = &v14;
    sub_2714057EC(v11, v13);
  }

LABEL_15:
  sub_271405620();
}

void sub_2714055F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271405620()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B3E8();
}

void sub_2714057BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714057D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2714057EC(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271406384(a2);
      }

      sub_2714061B8(a2);
    }

    switch(a1)
    {
      case 8:
        sub_271406554(a2);
      case 11:
        sub_271406724(a2);
      case 12:
        sub_2714068F4(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2714058CC(a2);
    }

    if (a1 == 1)
    {
      sub_271405A8C(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271405C58(a2);
      case 3:
        sub_271405E28(a2);
      case 5:
        sub_271405FF8(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_2714058CC(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_271405A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271405A8C(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_271405C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271405C58(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_271405DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271405E28(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_271405FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271405FF8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_271406188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714061B8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_271406354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271406384(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_271406524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271406554(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2714066F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271406724(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2714068C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714068F4(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_271406A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271406AC4(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_27140765C(a2);
      }

      sub_271407490(a2);
    }

    switch(a1)
    {
      case 8:
        sub_27140782C(a2);
      case 11:
        sub_2714079FC(a2);
      case 12:
        sub_271407BCC(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271406BA4(a2);
    }

    if (a1 == 1)
    {
      sub_271406D64(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271406F30(a2);
      case 3:
        sub_271407100(a2);
      case 5:
        sub_2714072D0(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_271406BA4(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_271406D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271406D64(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_271406F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271406F30(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2714070D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271407100(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2714072A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714072D0(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_271407460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271407490(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_27140762C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140765C(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2714077FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140782C(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2714079CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714079FC(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_271407B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271407BCC(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_271407D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271407D9C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5[25] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a4;
  sub_27113523C(v5, a4 + 1);
  operator new();
}

void sub_2714081DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  sub_271408240(&a9);
  _Unwind_Resume(a1);
}

void *sub_271408240(void *a1)
{
  *a1 = &unk_28812E940;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812E988;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271408300(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_2713DB624(a1, v6);
}

void sub_271408528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CC40C((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_27140855C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_271759D80((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 3;
          sub_27182B5E0(a3, &v9);
        }
      }

      else
      {
        sub_271759D80((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 3;
          sub_27182B8F0(a3, &v9);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_271759D80((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v9 = *(*(a2 + 16) + 40);
            v10 = 3;
            sub_27182BF10(a3, &v9);
          }

          break;
        case 11:
          sub_271759D80((a2 + 16), 11);
          v7 = *(a2 + 8);
          if (v7)
          {
            v8 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v8;
              v10 = 3;
              sub_27182C644(a3, &v9);
              v8 += 3;
              --v7;
            }

            while (v7);
          }

          break;
        case 12:
          sub_271759D80((a2 + 16), 12);
          v5 = *(a2 + 8);
          if (v5)
          {
            v6 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v6;
              v10 = 3;
              sub_27182CAA4(a3, &v9);
              v6 += 6;
              --v5;
            }

            while (v5);
          }

          break;
        default:
          goto LABEL_37;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_37;
      }

      sub_271759D80((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 3;
        sub_27182B768(a3, &v9);
      }
    }

    else
    {
      sub_271759D80((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 3;
        sub_271828DE4(a3, &v9);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271759D80((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 3;
          sub_27182BA78(a3, &v9);
        }

        break;
      case 3:
        sub_271759D80((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 3;
          sub_27182C098(a3, &v9);
        }

        break;
      case 5:
        sub_271759D80((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 3;
          sub_27182B474(a3, &v9);
        }

        return;
      default:
LABEL_37:

        sub_27183428C(a1);
    }
  }
}

void sub_271408894(uint64_t *a1, __int128 *a2)
{
  v8 = *a2;
  v3 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v12) = v8;
  v4 = a1[3];
  if (*(v4 + 40) == 1)
  {
    v11[0] = (v4 + 16);
    sub_2718454CC(v11, &v12);
  }

  else
  {
    if (v8 < 0)
    {
      LOBYTE(v11[0]) = -52;
      BYTE1(v11[0]) = v8;
    }

    else
    {
      LOBYTE(v11[0]) = v8;
    }

    v5 = *(v4 + 8);
    std::ostream::write();
  }

  v6 = a1[3];
  if (*(v6 + 40) == 1)
  {
    v11[0] = (v6 + 16);
    sub_271846AEC(v11, *(&v8 + 1));
  }

  else
  {
    sub_271846E00((v6 + 8));
  }

  v12 = xmmword_279E2F5B0;
  v11[0] = &v8;
  v11[1] = a1;
  v11[2] = &v12;
  sub_2713F568C(v8, v11);
  v7 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271408A10(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_2713DD5A4(a1, v6);
}

void sub_271408C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CA870((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_271408C6C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_271759D80((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 3;
          sub_2718295E4(a3, &v9);
        }
      }

      else
      {
        sub_271759D80((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 3;
          sub_2718298F4(a3, &v9);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_271759D80((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v9 = *(*(a2 + 16) + 40);
            v10 = 3;
            sub_271829C04(a3, &v9);
          }

          break;
        case 11:
          sub_271759D80((a2 + 16), 11);
          v7 = *(a2 + 8);
          if (v7)
          {
            v8 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v8;
              v10 = 3;
              sub_27182A338(a3, &v9);
              v8 += 3;
              --v7;
            }

            while (v7);
          }

          break;
        case 12:
          sub_271759D80((a2 + 16), 12);
          v5 = *(a2 + 8);
          if (v5)
          {
            v6 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v6;
              v10 = 3;
              sub_27182A798(a3, &v9);
              v6 += 6;
              --v5;
            }

            while (v5);
          }

          break;
        default:
          goto LABEL_37;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_37;
      }

      sub_271759D80((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 3;
        sub_27182976C(a3, &v9);
      }
    }

    else
    {
      sub_271759D80((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 3;
        sub_271828638(a3, &v9);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271759D80((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 3;
          sub_271829A7C(a3, &v9);
        }

        break;
      case 3:
        sub_271759D80((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 3;
          sub_271829D8C(a3, &v9);
        }

        break;
      case 5:
        sub_271759D80((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 3;
          sub_271829478(a3, &v9);
        }

        return;
      default:
LABEL_37:

        sub_27183428C(a1);
    }
  }
}

void sub_271408FA4(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v3 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v9[0]) = v6;
  sub_2718388F8(a1, v9);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v9[0]) = *(a1 + 32);
    sub_271120E64(v4, v9, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), *(&v6 + 1));
  ++*(a1 + 40);
  v10 = xmmword_279E2F5B0;
  v9[0] = &v6;
  v9[1] = a1;
  v9[2] = &v10;
  sub_2713F639C(v6, v9);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_2714090D0(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(__src[0]) = v5;
  sub_27173318C(a1 + 24, *(a1 + 32), __src, __src + 1, 1uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), &v5 + 8, &v6, 8uLL);
  v9 = xmmword_279E2F5B0;
  __src[0] = &v5;
  __src[1] = a1;
  __src[2] = &v9;
  sub_2713F6954(v5, __src);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_2714091EC(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2713E01B4(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  v9 = xmmword_279E2F5B0;
  v8[0] = &v5;
  v8[1] = a1;
  v8[2] = &v9;
  sub_2713F6C08(v5, v8);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_271409308(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v4 = a2;
    sub_2713E0CC8(a1);
  }

  sub_271409484();
}

void sub_271409484()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B98C();
}

void sub_2714096D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714096F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_271409708(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_27140A3D8(v3);
      }

      sub_27140A204(v3);
    }

    switch(a1)
    {
      case 8:
        sub_27140A5B0(v3);
      case 11:
        sub_27140A7E4(v3);
      case 12:
        sub_27140A9BC(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_27140988C(v3);
    }

    if (a1 == 1)
    {
      sub_271409A58(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271409C2C(v3);
      case 3:
        sub_271409E04(v3);
      case 5:
        sub_27140A038(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_27140988C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_271409A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271409A58(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_271409BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271409C2C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_271409DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271409E04(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_271409FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_27140A038(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_27140A1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140A204(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_27140A3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140A3D8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_27140A580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140A5B0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_27140A77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_27140A7E4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_27140A98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140A9BC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_27140AB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140AB94(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_27140B864(v3);
      }

      sub_27140B690(v3);
    }

    switch(a1)
    {
      case 8:
        sub_27140BA3C(v3);
      case 11:
        sub_27140BC70(v3);
      case 12:
        sub_27140BE48(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_27140AD18(v3);
    }

    if (a1 == 1)
    {
      sub_27140AEE4(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_27140B0B8(v3);
      case 3:
        sub_27140B290(v3);
      case 5:
        sub_27140B4C4(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_27140AD18(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_27140AEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140AEE4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_27140B088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140B0B8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_27140B260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140B290(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_27140B45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_27140B4C4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_27140B660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140B690(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_27140B834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140B864(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_27140BA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140BA3C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_27140BC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_27140BC70(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_27140BE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140BE48(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_27140BFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140C020(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    *&v9 = 0;
    sub_27183FF6C(*(a2 + 48), &v9);
    *&v7 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v7 + 1) = v9;
    sub_2713BF82C(a2 + 24, &v7);
    LOBYTE(v7) = 0;
    sub_27183F824(*(a2 + 48), &v7);
    *a3 = v7;
    sub_27183FF6C(*(a2 + 48), a3 + 1);
    v9 = xmmword_279E2F5B0;
    v6 = *a3;
    *&v7 = a3;
    *(&v7 + 1) = a2;
    v8 = &v9;
    sub_27140C338(v6, &v7);
  }

  sub_27140C188();
}

void sub_27140C188()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B98C();
}

void sub_27140C308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27140C324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_27140C338(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_27140CED0(a2);
      }

      sub_27140CD04(a2);
    }

    switch(a1)
    {
      case 8:
        sub_27140D0A0(a2);
      case 11:
        sub_27140D270(a2);
      case 12:
        sub_27140D440(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_27140C418(a2);
    }

    if (a1 == 1)
    {
      sub_27140C5D8(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_27140C7A4(a2);
      case 3:
        sub_27140C974(a2);
      case 5:
        sub_27140CB44(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_27140C418(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_27140C5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140C5D8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_27140C774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140C7A4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_27140C944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140C974(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_27140CB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140CB44(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_27140CCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140CD04(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_27140CEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140CED0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_27140D070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140D0A0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_27140D240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140D270(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_27140D410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140D440(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_27140D5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140D610(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_27140E1A8(a2);
      }

      sub_27140DFDC(a2);
    }

    switch(a1)
    {
      case 8:
        sub_27140E378(a2);
      case 11:
        sub_27140E548(a2);
      case 12:
        sub_27140E718(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_27140D6F0(a2);
    }

    if (a1 == 1)
    {
      sub_27140D8B0(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_27140DA7C(a2);
      case 3:
        sub_27140DC4C(a2);
      case 5:
        sub_27140DE1C(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_27140D6F0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_27140D880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140D8B0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_27140DA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140DA7C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_27140DC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140DC4C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_27140DDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140DE1C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_27140DFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140DFDC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_27140E178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140E1A8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_27140E348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140E378(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_27140E518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140E548(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_27140E6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140E718(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_27140E8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140E8E8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v4 = a2;
    sub_2713E1CA0(a1);
  }

  sub_27140EA64();
}

void sub_27140EA64()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B98C();
}

void sub_27140ECB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27140ECD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_27140ECE8(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_27140F9B8(v3);
      }

      sub_27140F7E4(v3);
    }

    switch(a1)
    {
      case 8:
        sub_27140FB90(v3);
      case 11:
        sub_27140FDC4(v3);
      case 12:
        sub_27140FF9C(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_27140EE6C(v3);
    }

    if (a1 == 1)
    {
      sub_27140F038(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_27140F20C(v3);
      case 3:
        sub_27140F3E4(v3);
      case 5:
        sub_27140F618(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_27140EE6C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_27140F008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140F038(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_27140F1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140F20C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_27140F3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140F3E4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_27140F5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_27140F618(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_27140F7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140F7E4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_27140F988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140F9B8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_27140FB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140FB90(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_27140FD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_27140FDC4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_27140FF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27140FF9C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_271410144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271410174(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271410E44(v3);
      }

      sub_271410C70(v3);
    }

    switch(a1)
    {
      case 8:
        sub_27141101C(v3);
      case 11:
        sub_271411250(v3);
      case 12:
        sub_271411428(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2714102F8(v3);
    }

    if (a1 == 1)
    {
      sub_2714104C4(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271410698(v3);
      case 3:
        sub_271410870(v3);
      case 5:
        sub_271410AA4(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2714102F8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_271410494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714104C4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_271410668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271410698(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_271410840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271410870(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_271410A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_271410AA4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_271410C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271410C70(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_271410E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271410E44(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_271410FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27141101C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2714111E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_27112F828(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_271411250(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2714113F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271411428(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2714115D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271411600(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  LODWORD(__p[0]) = 2;
  sub_27183A9AC(a2, __p);
  if (LODWORD(__p[0]) > 1)
  {
    LOBYTE(__p[0]) = 0;
    sub_271839D90(a2, __p);
    *a3 = __p[0];
    sub_27183B6AC(a2, a3 + 1);
    v6 = xmmword_279E2F5B0;
    v5 = *a3;
    __p[0] = a3;
    __p[1] = a2;
    __p[2] = &v6;
    sub_271411900(v5, __p);
  }

  sub_271411750();
}

void sub_271411750()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B98C();
}

void sub_2714118D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714118EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_271411900(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271412480(a2);
      }

      sub_2714122B8(a2);
    }

    switch(a1)
    {
      case 8:
        sub_27141264C(a2);
      case 11:
        sub_271412818(a2);
      case 12:
        sub_2714129E4(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2714119E0(a2);
    }

    if (a1 == 1)
    {
      sub_271411B9C(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271411D64(a2);
      case 3:
        sub_271411F30(a2);
      case 5:
        sub_2714120FC(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_2714119E0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_271411B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271411B9C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_271411D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271411D64(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_271411F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271411F30(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2714120CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714120FC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_271412288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714122B8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_271412450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271412480(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_27141261C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27141264C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2714127E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271412818(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2714129B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714129E4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_271412B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271412BB0(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271413730(a2);
      }

      sub_271413568(a2);
    }

    switch(a1)
    {
      case 8:
        sub_2714138FC(a2);
      case 11:
        sub_271413AC8(a2);
      case 12:
        sub_271413C94(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271412C90(a2);
    }

    if (a1 == 1)
    {
      sub_271412E4C(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271413014(a2);
      case 3:
        sub_2714131E0(a2);
      case 5:
        sub_2714133AC(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_271412C90(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_271412E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271412E4C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_271412FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271413014(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2714131B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714131E0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_27141337C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714133AC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_271413538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271413568(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_271413700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271413730(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2714138CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714138FC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_271413A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271413AC8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_271413C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271413C94(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_271413E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271413E60(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v7 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    if (v7 > 1)
    {
      sub_27173170C(a2);
      sub_2714140D4(a2, a3);
    }

    sub_271413F58();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_271413F58()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B98C();
}

void sub_2714140A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2714140B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714140D4(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v3 > v2)
  {
    v4 = a1[3];
    v5 = *(v4 + v2);
    v6 = v2 + 1;
    a1[6] = v6;
    *a2 = v5;
    v7 = v3 >= v6;
    v8 = v3 - v6;
    if (!v7)
    {
      v8 = 0;
    }

    if (v8 > 7)
    {
      *(a2 + 8) = *(v4 + v6);
      a1[6] += 8;
      v11 = xmmword_279E2F5B0;
      v10[0] = a2;
      v10[1] = a1;
      v10[2] = &v11;
      sub_2714141E0(v5, v10);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2714141E0(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_271415010(a2);
      }

      sub_271414DD8(a2);
    }

    switch(a1)
    {
      case 8:
        sub_27141524C(a2);
      case 11:
        sub_271415488(a2);
      case 12:
        sub_2714156C4(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2714142C0(a2);
    }

    if (a1 == 1)
    {
      sub_2714144F4(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_27141472C(a2);
      case 3:
        sub_271414968(a2);
      case 5:
        sub_271414BA4(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_2714142C0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_27175862C();
}

void sub_2714144B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714144F4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758B58();
}

void sub_2714146EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27141472C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759088();
}

void sub_271414928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271414968(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717595B8();
}

void sub_271414B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271414BA4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758398();
}

void sub_271414D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271414DD8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717588C0();
}

void sub_271414FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271415010(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758DF0();
}

void sub_27141520C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27141524C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759320();
}

void sub_271415448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271415488(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759850();
}

void sub_271415684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714156C4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759AE8();
}

void sub_2714158C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271415900(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v3 > v2)
  {
    v4 = a1[3];
    v5 = *(v4 + v2);
    v6 = v2 + 1;
    a1[6] = v6;
    *a2 = v5;
    v7 = v3 >= v6;
    v8 = v3 - v6;
    if (!v7)
    {
      v8 = 0;
    }

    if (v8 > 7)
    {
      *(a2 + 8) = *(v4 + v6);
      a1[6] += 8;
      v11 = xmmword_279E2F5B0;
      v10[0] = a2;
      v10[1] = a1;
      v10[2] = &v11;
      sub_271415A0C(v5, v10);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_271415A0C(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_27141683C(a2);
      }

      sub_271416604(a2);
    }

    switch(a1)
    {
      case 8:
        sub_271416A78(a2);
      case 11:
        sub_271416CB4(a2);
      case 12:
        sub_271416EF0(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271415AEC(a2);
    }

    if (a1 == 1)
    {
      sub_271415D20(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271415F58(a2);
      case 3:
        sub_271416194(a2);
      case 5:
        sub_2714163D0(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_271415AEC(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_27175862C();
}

void sub_271415CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271415D20(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758B58();
}

void sub_271415F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271415F58(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759088();
}

void sub_271416154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271416194(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717595B8();
}

void sub_271416390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714163D0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758398();
}

void sub_2714165C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271416604(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717588C0();
}

void sub_2714167FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27141683C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758DF0();
}

void sub_271416A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271416A78(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759320();
}

void sub_271416C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271416CB4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759850();
}

void sub_271416EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271416EF0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759AE8();
}

void sub_2714170EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27141712C(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  v6 = a1[1];
  LODWORD(v7[0]) = 2;
  (*(v4 + 104))(a1, v7);
  if (v6 >= 1)
  {
    sub_271417260(&v6, a1, a2, v7[0]);
  }

  if (LODWORD(v7[0]) >= 2)
  {
    v7[0] = a2;
    sub_2713E42BC(a1, v7);
    (*(*a1 + 120))(a1, a2 + 8);
    v8 = xmmword_279E2F5B0;
    v5 = *a2;
    v7[0] = a2;
    v7[1] = a1;
    v7[2] = &v8;
    sub_271417744(v5, v7);
  }

  sub_271417578();
}

void sub_271417260(int *a1, _BYTE *a2, _BYTE *a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_15;
    }

    v8 = a4;
    LODWORD(v13[0]) = 2;
    (*(*a2 + 104))(a2, v13);
    if (LODWORD(v13[0]) >= 3)
    {
      v12 = v13[0];
      if ((atomic_load_explicit(&qword_280878B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878B10))
      {
        sub_271417474();
      }

      sub_271847D5C(&stru_280878AF8, v12, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 > 1 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 >= 2)
  {
LABEL_14:
    v13[0] = a3;
    sub_2713E42BC(a2, v13);
    (*(*a2 + 120))(a2, a3 + 8);
    v14 = xmmword_279E2F5B0;
    v11 = *a3;
    v13[0] = a3;
    v13[1] = a2;
    v13[2] = &v14;
    sub_271417744(v11, v13);
  }

LABEL_15:
  sub_271417578();
}

void sub_271417548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271417578()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_27175B98C();
}

void sub_271417714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271417730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_271417744(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2714182DC(a2);
      }

      sub_271418110(a2);
    }

    switch(a1)
    {
      case 8:
        sub_2714184AC(a2);
      case 11:
        sub_27141867C(a2);
      case 12:
        sub_27141884C(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271417824(a2);
    }

    if (a1 == 1)
    {
      sub_2714179E4(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271417BB0(a2);
      case 3:
        sub_271417D80(a2);
      case 5:
        sub_271417F50(a2);
    }
  }

  sub_27183428C(a1);
}

void sub_271417824(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_2714179B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714179E4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_271417B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271417BB0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_271417D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271417D80(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_271417F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271417F50(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2714180E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271418110(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (((3 * v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_2714182AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714182DC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_27141847C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714184AC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_27141864C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27141867C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_27141881C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27141884C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!((3 * v1) >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2714189EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271418A1C(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2714195B4(a2);
      }

      sub_2714193E8(a2);
    }

    switch(a1)
    {
      case 8:
        sub_271419784(a2);
      case 11:
        sub_271419954(a2);
      case 12:
        sub_271419B24(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_271418AFC(a2);
    }

    if (a1 == 1)
    {
      sub_271418CBC(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271418E88(a2);
      case 3:
        sub_271419058(a2);
      case 5:
        sub_271419228(a2);
    }
  }

  sub_27183428C(a1);
}