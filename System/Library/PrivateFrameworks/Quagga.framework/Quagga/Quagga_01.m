void *sub_26148012C(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 28);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

void sub_2614802C0(void *a1)
{
  if (a1)
  {
    sub_2614802C0(*a1);
    sub_2614802C0(a1[1]);

    operator delete(a1);
  }
}

void sub_26148030C(atomic_uint ***a1, atomic_uint **a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = v4 - *a1;
    if ((v7 + 1) >> 61)
    {
      sub_2614709BC();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_261470E48(v10);
    }

    v11 = (8 * v7);
    *(8 * v7) = 0;
    v12 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
      if (*v11)
      {
        sub_2614705CC(*v11);
      }
    }

    *v11 = v12;
    v6 = v11 + 1;
    v21 = (v11 + 1);
    v14 = *a1;
    v13 = a1[1];
    v22[0] = a1;
    v22[1] = &v24;
    v22[2] = &v25;
    v15 = (v11 + v14 - v13);
    v24 = v15;
    v25 = v15;
    if (v14 == v13)
    {
      v23 = 1;
    }

    else
    {
      v16 = v15;
      v17 = v14;
      do
      {
        *v16 = 0;
        v18 = *v17;
        v19 = v16;
        if (*v17)
        {
          atomic_fetch_add_explicit(v18 + 2, 1u, memory_order_relaxed);
          v19 = v16;
          if (*v16)
          {
            sub_2614705CC(*v16);
            v19 = v25;
          }
        }

        *v16 = v18;
        ++v17;
        v16 = v19 + 1;
        v25 = v19 + 1;
      }

      while (v17 != v13);
      v23 = 1;
      do
      {
        if (*v14)
        {
          sub_2614705CC(*v14);
        }

        ++v14;
      }

      while (v14 != v13);
    }

    sub_261470DDC(v22);
    v20 = *a1;
    *a1 = v15;
    *(a1 + 1) = v21;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v4 = 0;
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
      if (*v4)
      {
        sub_2614705CC(*v4);
      }
    }

    *v4 = v5;
    v6 = v4 + 1;
  }

  a1[1] = v6;
}

void sub_2614804E0(void *a1)
{
  *a1 = &unk_2873D12B8;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[2] = 0;

  JUMPOUT(0x2667045D0);
}

void *sub_261480550(void *a1)
{
  *a1 = &unk_2873D12B8;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[2] = 0;
  return a1;
}

uint64_t *sub_2614805A0(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2614805F8(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_2614805F8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_261480794(void *a1)
{
  *a1 = &unk_2873D1650;
  v1 = a1[2];
  if (v1)
  {
    sub_2614705CC(v1);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_261480800(void *a1)
{
  *a1 = &unk_2873D1650;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  return a1;
}

void sub_26148084C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    atomic_fetch_add_explicit((*a3 + 8), 1u, memory_order_relaxed);
  }

  memset(v3, 0, 24);
  v3[3] = v3;
  v4 = 0;
  operator new();
}

void sub_261480A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, atomic_uint *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  if (a12)
  {
    sub_2614705CC(a12);
  }

  if (a13)
  {
    sub_2614705CC(a13);
  }

  a19 = &a14;
  sub_261480A80(&a19);
  _Unwind_Resume(a1);
}

void sub_261480A80(void ***a1)
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
        v7 = *(v4 - 1);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          sub_2614705CC(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

atomic_uint *sub_261480B04(uint64_t a1, atomic_uint **a2)
{
  v2 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v2 + 2, 1u, memory_order_relaxed);
  }

  v4 = v2;
  (*(*a1 + 16))(a1, &v4);
  result = v4;
  if (v4)
  {
    return sub_2614705CC(v4);
  }

  return result;
}

void sub_261480B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_2614705CC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_261480B8C(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  (*(**(*a1 + 16) + 16))(&v3);
  sub_2614909D8(v4, &v3);
  if (v3)
  {
    sub_2614705CC(v3);
  }

  sub_261490A54(&v2, v4);
}

void sub_261480D84(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, atomic_uint *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, atomic_uint *a24)
{
  sub_2614802C0(a10);
  *(v27 - 72) = &a12;
  sub_261470CC4((v27 - 72));
  a15 = &unk_2873D12B8;
  if (a17)
  {
    sub_2614705CC(a17);
  }

  a17 = 0;
  MEMORY[0x2667045D0](v26, 0x10A1C4006AAC113);
  if (v25)
  {
    sub_2614705CC(v25);
    v24 = a24;
    *(v27 - 72) = &a21;
    sub_261470CC4((v27 - 72));
    if (!v24)
    {
LABEL_8:
      *(v27 - 120) = &unk_2873D1650;
      v30 = *(v27 - 104);
      if (v30)
      {
        sub_2614705CC(v30);
      }

      if (a2 == 2)
      {
        exception_ptr = __cxa_get_exception_ptr(a1);
        sub_261480F18((v27 - 120), exception_ptr);
        __cxa_begin_catch(a1);
        sub_2614EB578((v27 - 120));
      }

      else
      {
        __cxa_begin_catch(a1);
      }

      __cxa_end_catch();
      JUMPOUT(0x261480D68);
    }
  }

  else
  {
    *(v27 - 72) = &a21;
    sub_261470CC4((v27 - 72));
  }

  sub_2614705CC(v24);
  goto LABEL_8;
}

void sub_261480EE0(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    sub_2614705CC(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_261480F18(void *a1, uint64_t a2)
{
  *a1 = &unk_2873D11E0;
  v3 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_261480F94(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3[2] = *(a2 + 24);
    *v3 = v4;
  }

  return a1;
}

void *sub_261480F94(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_261481038();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_261481080(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 88);
  v3 = *(*a2 + 96);
  v4 = *(*a2 + 64);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v44 = v3;
  if (v2)
  {
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    if (v3 < 6)
    {
      sub_2614838A0(&v54, dword_261564D48[v3]);
      v6 = v54;
      v53 = v4;
      if (v44)
      {
        v7 = 0;
        v8 = 0;
        v9 = *(v4 + 32) & (*(v4 + 56) - 1) | *(v4 + 16) & -*(v4 + 56);
        v10 = (2 * v9) | 1;
        v11 = v9;
        v12 = 2 * v9 - 4;
        v13 = 6 * v9 - 12;
        v14 = 4 * v9 - 8;
        v15 = v44;
        do
        {
          if (v12 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = v12;
          }

          if (v11 > 2)
          {
            v45 = v15;
            v48 = v14;
            v49 = v13;
            v17 = 0;
            v18 = 0;
            v50 = v10;
            v51 = v8;
            v19 = v10 + 1;
            v20 = v8;
            v46 = v12;
            v47 = v11;
            v52 = v7 + v11;
            v21 = v8 + v12;
            do
            {
              v22 = sub_261470964(v53, v18 | v7, v7 + (v17 >> 1));
              v23 = v20 >> 6;
              v24 = 1 << v20;
              if (v22)
              {
                v25 = *(v6 + 8 * v23) | v24;
              }

              else
              {
                v25 = *(v6 + 8 * v23) & ~v24;
              }

              *(v6 + 8 * v23) = v25;
              v26 = sub_261470964(v53, v7 + (v17 >> 1), v52 + ~v18);
              v27 = v21 >> 6;
              v28 = 1 << v21;
              if (v26)
              {
                v29 = *(v6 + 8 * v27) | v28;
              }

              else
              {
                v29 = *(v6 + 8 * v27) & ~v28;
              }

              *(v6 + 8 * v27) = v29;
              v18 = (v18 & 1) == 0;
              ++v21;
              ++v20;
              ++v17;
              --v16;
            }

            while (v16);
            v30 = 0;
            v31 = v51 + v49;
            v32 = v51 + v48;
            v33 = v50;
            do
            {
              v34 = (v7 - 1 + (v33 >> 1));
              v35 = sub_261470964(v53, v52 + ~v30, v34);
              v36 = v32 >> 6;
              v37 = 1 << v32;
              if (v35)
              {
                v38 = *(v6 + 8 * v36) | v37;
              }

              else
              {
                v38 = *(v6 + 8 * v36) & ~v37;
              }

              *(v6 + 8 * v36) = v38;
              v39 = sub_261470964(v53, v34, v30 | v7);
              v40 = v31 >> 6;
              v41 = 1 << v31;
              if (v39)
              {
                v42 = *(v6 + 8 * v40) | v41;
              }

              else
              {
                v42 = *(v6 + 8 * v40) & ~v41;
              }

              *(v6 + 8 * v40) = v42;
              v30 = (v30 & 1) == 0;
              --v19;
              ++v31;
              ++v32;
              --v33;
            }

            while (v19 > 6);
            v10 = v50;
            v8 = v51;
            v12 = v46;
            v11 = v47;
            v14 = v48;
            v13 = v49;
            v15 = v45;
          }

          v7 += 2;
          v8 = v8 + 8 * v11 - 16;
          v11 -= 4;
          v10 -= 8;
          v12 -= 8;
          v13 -= 24;
          v14 -= 16;
          --v15;
        }

        while (v15);
      }

      operator new();
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614EB5DC(exception, "data is too long");
    *exception = &unk_2873D1A30;
    __cxa_throw(exception, &unk_2873D2C40, sub_2614EB700);
  }

  v5 = *(*a2 + 64);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  operator new();
}

void sub_261481D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, atomic_uint *a23, atomic_uint *a24)
{
  if (v24)
  {
    sub_2614705CC(v24);
  }

  sub_2614705CC(a23);
  sub_2614705CC(a23);
  if (a24)
  {
    sub_2614705CC(a24);
  }

  _Unwind_Resume(a1);
}

void sub_261481DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, atomic_uint *a31)
{
  sub_2614802C0(a26);
  sub_2614705CC(v32);
  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  if (a31)
  {
    sub_2614705CC(a31);
  }

  MEMORY[0x2667045D0](v31, 0x10B3C40E71DBE67);
  JUMPOUT(0x2614820CCLL);
}

void sub_261481E8C()
{
  *(v0 - 112) = &unk_2873D1298;
  v1 = *(v0 - 96);
  if (v1)
  {
    sub_2614705CC(v1);
  }

  JUMPOUT(0x261482058);
}

void sub_261481E94(void *a1, int a2)
{
  *(v3 - 136) = &unk_2873D1298;
  v6 = *(v3 - 120);
  if (v6)
  {
    sub_2614705CC(v6);
  }

  *(v3 - 120) = 0;
  if (v2)
  {
    sub_2614705CC(v2);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    sub_2614834DC((v3 - 168), exception_ptr);
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614EB5DC(exception, "rs decoding failed");
    *exception = &unk_2873D1A30;
    __cxa_throw(exception, &unk_2873D2C40, sub_2614EB700);
  }

  if (a2 == 1)
  {
    v9 = __cxa_get_exception_ptr(a1);
    sub_261483574((v3 - 168), v9);
    __cxa_begin_catch(a1);
    v10 = __cxa_allocate_exception(0x20uLL);
    v11 = v10;
    if (*(v3 - 137) >= 0)
    {
      v12 = (v3 - 160);
    }

    else
    {
      v12 = *(v3 - 160);
    }

    sub_2614EB5DC(v10, v12);
    *v11 = &unk_2873D1A30;
    __cxa_throw(v11, &unk_2873D2C40, sub_2614EB700);
  }

  *(v3 - 112) = &unk_2873D1298;
  v13 = *(v3 - 96);
  if (v13)
  {
    sub_2614705CC(v13);
  }

  JUMPOUT(0x261482058);
}

void sub_261481FDC()
{
  sub_2614EB578((v0 - 168));
  __cxa_end_catch();
  *(v0 - 112) = &unk_2873D1298;
  v1 = *(v0 - 96);
  if (v1)
  {
    sub_2614705CC(v1);
  }

  JUMPOUT(0x261482058);
}

void sub_261482000()
{
  sub_2614EB578((v0 - 168));
  __cxa_end_catch();
  JUMPOUT(0x261482020);
}

void sub_261482074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  MEMORY[0x2667045D0](v13, 0x1091C40C7871EBFLL);
  if (v14)
  {
    operator delete(v14);
  }

  if (a13)
  {
    JUMPOUT(0x261482108);
  }

  JUMPOUT(0x261482100);
}

void sub_2614820B8()
{
  if (v0)
  {
    JUMPOUT(0x261482108);
  }

  JUMPOUT(0x261482100);
}

void sub_261482120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v16 = &unk_26157A1C0;
  v5 = *(sub_261480070(a3, 17) + 8);
  *&v16 = &unk_26157A1BC;
  v6 = *(sub_261480070(a3, 16) + 8);
  *&v16 = &unk_26157A1C4;
  v7 = sub_261480070(a3, 18);
  if ((v6 & 0x80000000) != 0 || (v8 = *(v7 + 8)) == 0 && v6 > 0x20 || (v8 ? (v9 = v6 >= 5) : (v9 = 0), v9))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614EB704(exception, "invalid layer count");
  }

  else
  {
    if (v8)
    {
      v10 = &unk_261564CB0;
    }

    else
    {
      v10 = &unk_261564CC4;
    }

    if (v5 > v10[v6])
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_2614EB704(exception, "invalid data codeword count for layer count");
    }

    else
    {
      if (v6 >= 0x17)
      {
        v11 = 12;
      }

      else
      {
        v11 = 10;
      }

      if (v6 >= 9)
      {
        v12 = v11;
      }

      else
      {
        v12 = 8;
      }

      if (v6 >= 3)
      {
        v13 = v12;
      }

      else
      {
        v13 = 6;
      }

      if (v13 * v5 <= (8 * (*(*(a2 + 16) + 24) - *(*(a2 + 16) + 16))))
      {
        sub_261482FFC(&v15);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      sub_2614EB704(exception, "invalid input data");
    }
  }

  __cxa_throw(exception, &unk_2873D2C40, sub_2614EB700);
}

void sub_261482E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, atomic_uint *a26)
{
  if (*(v26 - 113) < 0)
  {
    operator delete(*(v26 - 136));
  }

  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  sub_2614705CC(a26);
  sub_2614705CC(a26);
  *(v26 - 184) = &unk_2873D12B8;
  v28 = *(v26 - 168);
  if (v28)
  {
    sub_2614705CC(v28);
  }

  _Unwind_Resume(a1);
}

void sub_261482FFC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D12B8;
  *(a1 + 16) = 0;
  operator new();
}

uint64_t sub_2614830DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D12B8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 16);
    if (v4)
    {
      sub_2614705CC(v4);
    }
  }

  *(a1 + 16) = v3;
  return a1;
}

_BYTE *sub_261483148(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *sub_261483200(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_261483280(result, a2);
  }

  return result;
}

void sub_261483264(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_261483280(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2614709BC();
}

void sub_2614832D0(void *a1)
{
  *a1 = &unk_2873D1760;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_261483340(void *a1)
{
  *a1 = &unk_2873D1760;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_261483390(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1298;
  *(a1 + 16) = 0;
  operator new();
}

uint64_t sub_261483470(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1298;
  *(a1 + 16) = 0;
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 16);
    if (v4)
    {
      sub_2614705CC(v4);
    }
  }

  *(a1 + 16) = v3;
  return a1;
}

void *sub_2614834DC(void *a1, uint64_t a2)
{
  *a1 = &unk_2873D11E0;
  v3 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_261480F94(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3[2] = *(a2 + 24);
    *v3 = v4;
  }

  *a1 = &unk_2873D18E8;
  return a1;
}

void *sub_261483574(void *a1, uint64_t a2)
{
  *a1 = &unk_2873D11E0;
  v3 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_261480F94(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3[2] = *(a2 + 24);
    *v3 = v4;
  }

  *a1 = &unk_2873D1808;
  return a1;
}

void sub_26148360C(void *a1)
{
  *a1 = &unk_2873D1298;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[2] = 0;

  JUMPOUT(0x2667045D0);
}

void *sub_26148367C(void *a1)
{
  *a1 = &unk_2873D1298;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[2] = 0;
  return a1;
}

void *sub_2614836CC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_261472AF0(result, a2);
  }

  return result;
}

void sub_2614837C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614837E0(void *a1)
{
  *a1 = &unk_2873D1740;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_261483850(void *a1)
{
  *a1 = &unk_2873D1740;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_2614838A0(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_261470B0C(((a2 - 1) >> 6) + 1);
    }

    sub_2614709BC();
  }

  return result;
}

uint64_t sub_261483944(void *a1, uint64_t a2, atomic_ullong *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v6 = *(v5 + 48);
  v7 = 5;
  if (v6 == -1)
  {
    v6 = 5;
  }

  if (*(a2 + 32) != -1)
  {
    v7 = *(a2 + 32);
  }

  if (v6 == v7 && !memcmp((v5 + 56), (a2 + 40), 8 * v6))
  {
    return 1;
  }

  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v8 = qword_280CB3ED8;
  if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
  {
    v10 = *a1;
    if (*(*a1 + 23) < 0)
    {
      v10 = *v10;
    }

    *buf = 136446210;
    *&buf[4] = v10;
    _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "E5RTNetwork: failed to validate tensor shape for I/O port: %{public}s", buf, 0xCu);
  }

  v11 = @"Failed to validate tensor shape for I/O port.";
  *buf = -6004;
  sub_261476754(a3, buf, &v11);
  return 0;
}

uint64_t sub_261483A98(void *a1, uint64_t a2, atomic_ullong *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v6 = *(v5 + 48);
  v7 = 5;
  if (v6 == -1)
  {
    v6 = 5;
  }

  if (*(a2 + 32) != -1)
  {
    v7 = *(a2 + 32);
  }

  if (v6 == v7 && !memcmp((v5 + 56), (a2 + 40), 8 * v6))
  {
    return 1;
  }

  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v8 = qword_280CB3ED8;
  if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
  {
    v10 = *a1;
    if (*(*a1 + 23) < 0)
    {
      v10 = *v10;
    }

    *buf = 136446210;
    *&buf[4] = v10;
    _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "E5RTNetwork: failed to validate tensor shape for I/O port: %{public}s", buf, 0xCu);
  }

  v11 = @"Failed to validate tensor shape for I/O port.";
  *buf = -6004;
  sub_261476754(a3, buf, &v11);
  return 0;
}

void sub_261483BEC(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 16))
    {
      sub_261483CD8(a1);
      v4 = *a2;
      *a2 = 0;
      *a1 = v4;
      v5 = atomic_exchange((a1 + 8), atomic_exchange(a2 + 1, 0));
      if (v5)
      {

        CFRelease(v5);
      }
    }
  }

  else if (*(a1 + 16))
  {

    sub_2614848A8(a1);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *a1 = v6;
    *(a1 + 8) = atomic_exchange(a2 + 1, 0);
    *(a1 + 16) = 1;
  }
}

atomic_ullong *sub_261483CA4(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_261483CD8(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D6AF8;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD9190);
    return sub_261484730(v1);
  }

  return result;
}

void sub_261483D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261483D80(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    sub_261483CA4((a1 + 8));
    sub_261483CD8(a1);
  }

  return a1;
}

BOOL sub_261483DC4(uint64_t a1, uint64_t *a2, char a3, _DWORD *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = sub_261483F20();
  if (a3)
  {
    v9 = *a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(v8 + 160))(a1, v9);
  *a4 = v10;
  if (v10)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v11 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v13 = (*v8)(v10);
      v14 = "";
      if (v13)
      {
        v14 = v13;
      }

      v15[0] = 67240450;
      v15[1] = v10;
      v16 = 2082;
      v17 = v14;
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "e5rt_io_port_bind_buffer_object failed: (%{public}d): %{public}s", v15, 0x12u);
    }
  }

  return v10 == 0;
}

uint64_t sub_261483F20()
{
  if (qword_280CB32C0 != -1)
  {
    dispatch_once_f(&qword_280CB32C0, 0, sub_261483F98);
  }

  return qword_280CB32B8;
}

void sub_261483F98()
{
  qword_280CB32D0 = MEMORY[0x277D07848];
  qword_280CB32D8 = MEMORY[0x277D07970];
  qword_280CB32E0 = MEMORY[0x277D07968];
  qword_280CB32E8 = MEMORY[0x277D07960];
  qword_280CB32F0 = MEMORY[0x277D07958];
  qword_280CB32F8 = MEMORY[0x277D07950];
  qword_280CB3300 = MEMORY[0x277D07948];
  qword_280CB3308 = MEMORY[0x277D07990];
  qword_280CB3310 = MEMORY[0x277D07940];
  qword_280CB3318 = MEMORY[0x277D07998];
  qword_280CB3320 = MEMORY[0x277D07978];
  qword_280CB3328 = MEMORY[0x277D07980];
  qword_280CB3330 = MEMORY[0x277D07988];
  qword_280CB3338 = MEMORY[0x277D077B8];
  qword_280CB3340 = MEMORY[0x277D077D0];
  qword_280CB3348 = MEMORY[0x277D077C0];
  qword_280CB3350 = MEMORY[0x277D077C8];
  qword_280CB3358 = MEMORY[0x277D078D8];
  qword_280CB3360 = MEMORY[0x277D078D0];
  qword_280CB3368 = MEMORY[0x277D078E0];
  qword_280CB3370 = MEMORY[0x277D078C8];
  qword_280CB3378 = MEMORY[0x277D077D8];
  qword_280CB3380 = MEMORY[0x277D07910];
  qword_280CB3388 = MEMORY[0x277D07918];
  qword_280CB3390 = MEMORY[0x277D07928];
  qword_280CB3398 = MEMORY[0x277D07920];
  qword_280CB33A0 = MEMORY[0x277D07930];
  qword_280CB33A8 = MEMORY[0x277D07800];
  qword_280CB33B0 = MEMORY[0x277D07808];
  qword_280CB33B8 = MEMORY[0x277D07810];
  qword_280CB33C0 = MEMORY[0x277D07828];
  qword_280CB33C8 = MEMORY[0x277D07830];
  qword_280CB33D0 = MEMORY[0x277D07820];
  qword_280CB33D8 = MEMORY[0x277D07818];
  qword_280CB33E0 = MEMORY[0x277D077F0];
  qword_280CB33E8 = MEMORY[0x277D07840];
  qword_280CB33F0 = MEMORY[0x277D077E0];
  qword_280CB33F8 = MEMORY[0x277D077F8];
  qword_280CB3400 = MEMORY[0x277D07838];
  qword_280CB3408 = MEMORY[0x277D078E8];
  qword_280CB3410 = MEMORY[0x277D078F0];
  qword_280CB3418 = MEMORY[0x277D07900];
  qword_280CB3420 = MEMORY[0x277D078F8];
  qword_280CB3428 = MEMORY[0x277D07908];
  qword_280CB3430 = MEMORY[0x277D07898];
  qword_280CB3438 = MEMORY[0x277D078A0];
  qword_280CB3440 = MEMORY[0x277D07868];
  qword_280CB3448 = MEMORY[0x277D07890];
  qword_280CB3450 = MEMORY[0x277D07850];
  qword_280CB3458 = MEMORY[0x277D078A8];
  qword_280CB3460 = MEMORY[0x277D07858];
  qword_280CB3468 = MEMORY[0x277D07860];
  qword_280CB3470 = MEMORY[0x277D078C0];
  qword_280CB3478 = MEMORY[0x277D078B0];
  qword_280CB3480 = MEMORY[0x277D078B8];
  qword_280CB32B8 = &qword_280CB32D0;
}

void sub_2614845C4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = sub_261483F20();
  if (!a1)
  {
    sub_261477FC4();
  }

  v5 = v4;
  v6 = (*(*a1 + 48))(a1, v4);
  if (v6)
  {
    v7 = v6;
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v8 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v11 = a2;
      v9 = *a2;
      v10 = v11[1];
      v12 = (*v5)(v7);
      v13 = "";
      v14[0] = 68158466;
      v14[1] = v10;
      if (v12)
      {
        v13 = v12;
      }

      v15 = 2082;
      v16 = v9;
      v17 = 1026;
      v18 = v7;
      v19 = 2082;
      v20 = v13;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "e5rt_%{public}.*s_release failed: (%{public}d): %{public}s", v14, 0x22u);
    }
  }
}

uint64_t sub_261484730(uint64_t a1)
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

uint64_t sub_2614847BC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP18e5rt_buffer_objectEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261484814(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D6AF8;
  a2[1] = v2;
  return result;
}

void *sub_2614848A8(void *result)
{
  if (*(result + 16) == 1)
  {
    v1 = result;
    sub_261483CA4(result + 1);
    result = sub_261483CD8(v1);
    *(v1 + 16) = 0;
  }

  return result;
}

void sub_2614848EC(uint64_t a1, void *a2, _DWORD *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v6 = sub_261483F20();
  v7 = (*(v6 + 128))(*a2, &v22);
  *a3 = v7;
  if (v7)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v8 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v9 = (*v6)(v7);
    v10 = "";
    if (v9)
    {
      v10 = v9;
    }

    *buf = 67240450;
    *&buf[4] = v7;
    *v24 = 2082;
    *&v24[2] = v10;
    v11 = "e5rt_buffer_object_get_type failed: (%{public}d): %{public}s";
    goto LABEL_8;
  }

  v14 = v22;
  if (v22)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v15 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 67240192;
    *&buf[4] = v14;
    v11 = "E5RTBufferObject: unexpected buffer object type: %{public}d";
    v12 = v15;
    v13 = 8;
    goto LABEL_14;
  }

  cf = 0;
  v16 = (*(v6 + 120))(*a2, &cf);
  *a3 = v16;
  if (v16)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v8 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v19 = (*v6)(v16);
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    *buf = 67240450;
    *&buf[4] = v16;
    *v24 = 2082;
    *&v24[2] = v20;
    v11 = "e5rt_buffer_object_get_iosurface failed: (%{public}d): %{public}s";
LABEL_8:
    v12 = v8;
    v13 = 18;
LABEL_14:
    _os_log_error_impl(&dword_26146F000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
LABEL_19:
    *a1 = 0;
    *(a1 + 16) = 0;
    return;
  }

  v17 = *a2;
  *a2 = 0;
  *buf = v17;
  v18 = cf;
  if (cf)
  {
    v18 = CFRetain(cf);
    v17 = *buf;
  }

  *buf = 0;
  *v24 = v18;
  *a1 = v17;
  *(a1 + 8) = atomic_exchange(v24, 0);
  *(a1 + 16) = 1;
  sub_261483CA4(v24);
  sub_261483CD8(buf);
}

void sub_261484BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_261483CD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261484BF8(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v24 = 0;
  v5 = sub_261483F20();
  v6 = (*(v5 + 64))(*(v4 + 8), 0, 1, &v24);
  v23 = v6;
  if (v6)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v7 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v12 = (*v5)(v6);
      v13 = "";
      if (v12)
      {
        v13 = v12;
      }

      *buf = 67240450;
      *&buf[4] = v6;
      v31 = 2082;
      v32 = v13;
      _os_log_error_impl(&dword_26146F000, v7, OS_LOG_TYPE_ERROR, "e5rt_tensor_desc_alloc_buffer_object failed: (%{public}d): %{public}s", buf, 0x12u);
    }

    v25[0] = 0;
    v27[2] = 0;
  }

  else
  {
    *buf = v24;
    sub_2614848EC(v25, buf, &v23);
    sub_261483CD8(buf);
  }

  sub_261483BEC(a1 + 16, v25);
  if (v27[2] == 1)
  {
    sub_261483CA4(&v25[8]);
    sub_261483CD8(v25);
  }

  v8 = *(a1 + 32);
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v9 = qword_280CB3ED8;
  if (v8)
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 16);
      ID = IOSurfaceGetID(atomic_load_explicit((a1 + 24), memory_order_acquire));
      AllocSize = IOSurfaceGetAllocSize(atomic_load_explicit((a1 + 24), memory_order_acquire));
      v17 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v17 = *v17;
      }

      *v25 = 134284291;
      *&v25[4] = v14;
      v26 = 1025;
      *v27 = ID;
      *&v27[4] = 2050;
      *&v27[6] = AllocSize;
      v28 = 2082;
      v29 = v17;
      _os_log_debug_impl(&dword_26146F000, v9, OS_LOG_TYPE_DEBUG, "E5RTNetwork: allocated buffer object %{private}p surface id #%{private}x of %{public, iec-bytes}zu with tensor descriptor of port: %{public}s", v25, 0x26u);
    }

    if (sub_261483DC4(**(a1 + 8), (a1 + 16), 1, &v23))
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 16);
        v20 = *a1;
        if (*(*a1 + 23) < 0)
        {
          v20 = *v20;
        }

        *v25 = 134283779;
        *&v25[4] = v19;
        v26 = 2082;
        *v27 = v20;
        _os_log_debug_impl(&dword_26146F000, v9, OS_LOG_TYPE_DEBUG, "E5RTNetwork: bound buffer object %{private}p to port: %{public}s", v25, 0x16u);
      }

      return 1;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 16);
      v22 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v22 = *v22;
      }

      *v25 = 134283779;
      *&v25[4] = v21;
      v26 = 2082;
      *v27 = v22;
      _os_log_error_impl(&dword_26146F000, v9, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable to bind buffer object %{private}p to port: %{public}s", v25, 0x16u);
    }

    *v25 = -6004;
    *buf = @"Unable to bind buffer object to port.";
    sub_261476754(a2, v25, buf);
  }

  else
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v18 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v18 = *v18;
      }

      *v25 = 136446210;
      *&v25[4] = v18;
      _os_log_error_impl(&dword_26146F000, v9, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable allocate buffer object with tensor descriptor of port: %{public}s", v25, 0xCu);
    }

    *v25 = -2003;
    *buf = @"Unable allocate buffer object with tensor descriptor of port.";
    sub_261476754(a2, v25, buf);
  }

  v11 = v23;
  if ((*(a2 + 52) & 1) == 0)
  {
    *(a2 + 52) = 1;
  }

  result = 0;
  *(a2 + 48) = v11;
  return result;
}

void sub_261485020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261485064(uint64_t a1, atomic_ullong *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  v6 = sub_261483F20();
  v7 = (*(v6 + 104))(&v25, atomic_load_explicit(a2, memory_order_acquire));
  v24 = v7;
  if (v7)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v8 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v13 = (*v6)(v7);
      v14 = "";
      if (v13)
      {
        v14 = v13;
      }

      *buf = 67240450;
      *&buf[4] = v7;
      v32 = 2082;
      v33 = v14;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "e5rt_buffer_object_create_from_iosurface failed: (%{public}d): %{public}s", buf, 0x12u);
    }

    v26[0] = 0;
    v28[2] = 0;
  }

  else
  {
    *buf = v25;
    sub_2614848EC(v26, buf, &v24);
    sub_261483CD8(buf);
  }

  sub_261483BEC(a1 + 16, v26);
  if (v28[2] == 1)
  {
    sub_261483CA4(&v26[8]);
    sub_261483CD8(v26);
  }

  v9 = *(a1 + 32);
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v10 = qword_280CB3ED8;
  if (v9)
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 16);
      ID = IOSurfaceGetID(atomic_load_explicit((a1 + 24), memory_order_acquire));
      AllocSize = IOSurfaceGetAllocSize(atomic_load_explicit((a1 + 24), memory_order_acquire));
      explicit = atomic_load_explicit(a2, memory_order_acquire);
      *v26 = 134284289;
      *&v26[4] = v15;
      v27 = 1025;
      *v28 = ID;
      *&v28[4] = 2050;
      *&v28[6] = AllocSize;
      v29 = 2050;
      v30 = explicit;
      _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "E5RTNetwork: created buffer object %{private}p surface id #%{private}x of %{public, iec-bytes}zu from surface: %{public}p", v26, 0x26u);
    }

    if (sub_261483DC4(**(a1 + 8), (a1 + 16), 1, &v24))
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 16);
        v21 = *a1;
        if (*(*a1 + 23) < 0)
        {
          v21 = *v21;
        }

        *v26 = 134283779;
        *&v26[4] = v20;
        v27 = 2082;
        *v28 = v21;
        _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "E5RTNetwork: bound buffer object %{private}p to port: %{public}s", v26, 0x16u);
      }

      return 1;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v23 = *v23;
      }

      *v26 = 134283779;
      *&v26[4] = v22;
      v27 = 2082;
      *v28 = v23;
      _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable to bind buffer object %{private}p to port: %{public}s", v26, 0x16u);
    }

    *v26 = -6004;
    *buf = @"Unable to bind buffer object to port.";
    sub_261476754(a3, v26, buf);
  }

  else
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v19 = atomic_load_explicit(a2, memory_order_acquire);
      *v26 = 134283521;
      *&v26[4] = v19;
      _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable create buffer object from surface: %{private}p", v26, 0xCu);
    }

    *v26 = -2003;
    *buf = @"Unable create buffer object from surface.";
    sub_261476754(a3, v26, buf);
  }

  v12 = v24;
  if ((*(a3 + 52) & 1) == 0)
  {
    *(a3 + 52) = 1;
  }

  result = 0;
  *(a3 + 48) = v12;
  return result;
}

void sub_26148546C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2614854B0(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v4 = sub_261483DC4(**(a1 + 8), 0, 0, &v13);
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v5 = qword_280CB3ED8;
  if (v4)
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v9 = *v9;
      }

      *buf = 134283779;
      *&buf[4] = v8;
      v15 = 2082;
      v16 = v9;
      _os_log_debug_impl(&dword_26146F000, v5, OS_LOG_TYPE_DEBUG, "E5RTNetwork: unbound buffer object %{private}p from port: %{public}s", buf, 0x16u);
    }

    sub_2614848A8((a1 + 16));
  }

  else
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 16);
      v11 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v11 = *v11;
      }

      *buf = 134283779;
      *&buf[4] = v10;
      v15 = 2082;
      v16 = v11;
      _os_log_error_impl(&dword_26146F000, v5, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable to unbind buffer object %{private}p from port: %{public}s", buf, 0x16u);
    }

    *buf = -6004;
    v12 = @"Unable to unbind buffer object from port.";
    sub_261476754(a2, buf, &v12);
    v6 = v13;
    if ((*(a2 + 52) & 1) == 0)
    {
      *(a2 + 52) = 1;
    }

    *(a2 + 48) = v6;
  }

  return v4;
}

void *sub_26148567C(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D3A98;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD8B30);
    return sub_261484730(v1);
  }

  return result;
}

void sub_261485710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261485730(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP22e5rt_tensor_desc_dtypeEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261485788(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3A98;
  a2[1] = v2;
  return result;
}

void sub_26148581C(uint64_t a1, void *a2, _DWORD *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v6 = sub_261483F20();
  v7 = (*(v6 + 144))(*a2, &v78);
  *a3 = v7;
  if (v7)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v8 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v9 = (*v6)(v7);
    v10 = "";
    if (v9)
    {
      v10 = v9;
    }

    *buf = 67240450;
    *&buf[4] = v7;
    *&buf[8] = 2082;
    *&buf[10] = v10;
    v11 = "e5rt_io_port_is_tensor failed: (%{public}d): %{public}s";
    goto LABEL_8;
  }

  if ((v78 & 1) == 0)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v17 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v11 = "E5RTTensorIOPort: port is not a tensor";
    v12 = v17;
    v13 = 2;
    goto LABEL_21;
  }

  v77 = 0;
  v14 = (*(v6 + 152))(*a2, &v77);
  *a3 = v14;
  if (v14)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v8 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v15 = (*v6)(v14);
    v16 = "";
    if (v15)
    {
      v16 = v15;
    }

    *buf = 67240450;
    *&buf[4] = v14;
    *&buf[8] = 2082;
    *&buf[10] = v16;
    v11 = "e5rt_io_port_retain_tensor_desc failed: (%{public}d): %{public}s";
LABEL_8:
    v12 = v8;
    v13 = 18;
LABEL_21:
    _os_log_error_impl(&dword_26146F000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
LABEL_22:
    *a1 = 0;
    *(a1 + 144) = 0;
    return;
  }

  v18 = v77;
  v76 = v77;
  v83 = 0;
  v19 = (*(v6 + 72))(v77, &v83);
  *a3 = v19;
  if (v19)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v20 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_123;
    }

    v21 = (*v6)(v19);
    v22 = "";
    if (v21)
    {
      v22 = v21;
    }

    *buf = 67240450;
    *&buf[4] = v19;
    *&buf[8] = 2082;
    *&buf[10] = v22;
    v23 = "e5rt_tensor_desc_retain_dtype failed: (%{public}d): %{public}s";
    goto LABEL_30;
  }

  __src = v83;
  LOBYTE(v81) = 0;
  v26 = (*(v6 + 16))();
  *a3 = v26;
  if (v26)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v27 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v28 = (*v6)(v26);
    v29 = "";
    if (v28)
    {
      v29 = v28;
    }

    *buf = 67240450;
    *&buf[4] = v26;
    *&buf[8] = 2082;
    *&buf[10] = v29;
    v30 = "e5rt_tensor_desc_dtype_get_num_components failed: (%{public}d): %{public}s";
LABEL_67:
    _os_log_error_impl(&dword_26146F000, v27, OS_LOG_TYPE_ERROR, v30, buf, 0x12u);
LABEL_68:
    v43 = 0;
    goto LABEL_69;
  }

  *(&v69 + 1) = v81;
  v31 = (*(v6 + 24))(__src, &v70);
  *a3 = v31;
  if (v31)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v27 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v32 = (*v6)(v31);
    v33 = "";
    if (v32)
    {
      v33 = v32;
    }

    *buf = 67240450;
    *&buf[4] = v31;
    *&buf[8] = 2082;
    *&buf[10] = v33;
    v30 = "e5rt_tensor_desc_dtype_get_element_size failed: (%{public}d): %{public}s";
    goto LABEL_67;
  }

  v34 = (*(v6 + 32))(__src, &v70 + 8);
  *a3 = v34;
  if (v34)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v27 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v35 = (*v6)(v34);
    v36 = "";
    if (v35)
    {
      v36 = v35;
    }

    *buf = 67240450;
    *&buf[4] = v34;
    *&buf[8] = 2082;
    *&buf[10] = v36;
    v30 = "e5rt_tensor_desc_dtype_get_component_size failed: (%{public}d): %{public}s";
    goto LABEL_67;
  }

  v37 = (*(v6 + 40))(__src, &v69 + 4);
  *a3 = v37;
  if (v37)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v27 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v38 = (*v6)(v37);
    v39 = "";
    if (v38)
    {
      v39 = v38;
    }

    *buf = 67240450;
    *&buf[4] = v37;
    *&buf[8] = 2082;
    *&buf[10] = v39;
    v30 = "e5rt_tensor_desc_dtype_get_component_pack failed: (%{public}d): %{public}s";
    goto LABEL_67;
  }

  v40 = (*(v6 + 48))(__src, &v69);
  *a3 = v40;
  if (v40)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v27 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v41 = (*v6)(v40);
    v42 = "";
    if (v41)
    {
      v42 = v41;
    }

    *buf = 67240450;
    *&buf[4] = v40;
    *&buf[8] = 2082;
    *&buf[10] = v42;
    v30 = "e5rt_tensor_desc_dtype_get_component_dtype failed: (%{public}d): %{public}s";
    goto LABEL_67;
  }

  v43 = 1;
LABEL_69:
  sub_26148567C(&__src);
  if ((v43 & 1) == 0)
  {
    goto LABEL_123;
  }

  v44 = (*(v6 + 80))(v76, __len);
  *a3 = v44;
  if (v44)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v20 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_123;
    }

    v45 = (*v6)(v44);
    v46 = "";
    if (v45)
    {
      v46 = v45;
    }

    *buf = 67240450;
    *&buf[4] = v44;
    *&buf[8] = 2082;
    *&buf[10] = v46;
    v23 = "e5rt_tensor_desc_get_rank failed: (%{public}d): %{public}s";
    goto LABEL_30;
  }

  v47 = __len[0];
  if (__len[0] >= 6)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v48 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_123;
    }

    *buf = 134349312;
    *&buf[4] = v47;
    *&buf[12] = 2050;
    *&buf[14] = 5;
    v23 = "E5RTTensorDescriptor: rank %{public}zu exceeds max rank %{public}zu";
    goto LABEL_82;
  }

  v81 = 0;
  __src = 0;
  v49 = (*(v6 + 88))(v76, &v81, &__src);
  *a3 = v49;
  if (v49)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v20 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_123;
    }

    v50 = (*v6)(v49);
    v51 = "";
    if (v50)
    {
      v51 = v50;
    }

    *buf = 67240450;
    *&buf[4] = v49;
    *&buf[8] = 2082;
    *&buf[10] = v51;
    v23 = "e5rt_tensor_desc_get_shape failed: (%{public}d): %{public}s";
    goto LABEL_30;
  }

  v52 = v81;
  v53 = __len[0];
  if (v81 != __len[0])
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v48 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_123;
    }

    *buf = 134349312;
    *&buf[4] = v52;
    *&buf[12] = 2050;
    *&buf[14] = v53;
    v23 = "E5RTTensorDescriptor: shape rank %{public}zu differs from rank %{public}zu";
LABEL_82:
    v24 = v48;
    v25 = 22;
    goto LABEL_31;
  }

  if (!v81)
  {
    v54 = 0;
    goto LABEL_100;
  }

  v54 = v81;
  memmove(&__len[1], __src, 8 * v81);
  if (v52 != 5)
  {
LABEL_100:
    bzero(&__len[v54 + 1], 40 - v54 * 8);
  }

  v79 = 0;
  v80 = 0;
  v55 = (*(v6 + 96))(v76, &v79, &v80);
  *a3 = v55;
  if (v55)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v20 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_123;
    }

    v56 = (*v6)(v55);
    v57 = "";
    if (v56)
    {
      v57 = v56;
    }

    *buf = 67240450;
    *&buf[4] = v55;
    *&buf[8] = 2082;
    *&buf[10] = v57;
    v23 = "e5rt_tensor_desc_get_strides failed: (%{public}d): %{public}s";
LABEL_30:
    v24 = v20;
    v25 = 18;
LABEL_31:
    _os_log_error_impl(&dword_26146F000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
    goto LABEL_123;
  }

  v58 = v79;
  v59 = __len[0];
  if (v79 != __len[0])
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v48 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_123;
    }

    *buf = 134349312;
    *&buf[4] = v58;
    *&buf[12] = 2050;
    *&buf[14] = v59;
    v23 = "E5RTTensorDescriptor: strides rank %{public}zu differs from rank %{public}zu";
    goto LABEL_82;
  }

  if (!v79)
  {
LABEL_114:
    bzero(v74 + 8 * v58, 40 - 8 * v58);
LABEL_115:
    v63 = *a2;
    *a2 = 0;
    v76 = 0;
    v88 = v73;
    v89 = v74[0];
    v90 = v74[1];
    *&v91 = v75;
    *&buf[16] = v69;
    v85 = v70;
    v86 = *__len;
    v87 = v72;
    BYTE8(v91) = 1;
    *buf = 0;
    *&buf[8] = 0;
    *a1 = v63;
    *(a1 + 8) = v18;
    v64 = v85;
    *(a1 + 16) = *&buf[16];
    *(a1 + 32) = v64;
    v65 = v89;
    *(a1 + 80) = v88;
    *(a1 + 96) = v65;
    v66 = v87;
    *(a1 + 48) = v86;
    *(a1 + 64) = v66;
    v67 = v91;
    *(a1 + 112) = v90;
    *(a1 + 128) = v67;
    *(a1 + 144) = 1;
    sub_261486544(&buf[8]);
    sub_2614865EC(buf);
    goto LABEL_124;
  }

  v60 = 0;
  v61 = v80;
  while (1)
  {
    v62 = *(v61 + 8 * v60);
    if (v62 < 0)
    {
      break;
    }

    *(v74 + v60++) = v62;
    if (v58 == v60)
    {
      if (v58 == 5)
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }
  }

  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v68 = qword_280CB3ED8;
  if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    *&buf[4] = v62;
    v23 = "E5RTTensorDescriptor: unexpected negative stride %{public}zd";
    v24 = v68;
    v25 = 12;
    goto LABEL_31;
  }

LABEL_123:
  *a1 = 0;
  *(a1 + 144) = 0;
LABEL_124:
  sub_261486544(&v76);
}

void sub_2614864F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_261486544(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D3B98;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD8B50);
    return sub_261484730(v1);
  }

  return result;
}

void sub_2614865D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

void *sub_2614865EC(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D3B18;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD8B40);
    return sub_261484730(v1);
  }

  return result;
}

void sub_261486680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2614866A0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP12e5rt_io_portEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614866F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3B18;
  a2[1] = v2;
  return result;
}

uint64_t sub_261486798(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP16e5rt_tensor_descEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614867F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3B98;
  a2[1] = v2;
  return result;
}

void sub_261486884(_BYTE *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v8 = sub_261483F20();
  v9 = (*(v8 + 208))(a2, a3, &v13);
  *a4 = v9;
  if (v9)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v10 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v11 = (*v8)(v9);
      v12 = "";
      if (v11)
      {
        v12 = v11;
      }

      *buf = 67240450;
      *&buf[4] = v9;
      v15 = 2082;
      v16 = v12;
      _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "e5rt_program_library_retain_program_function failed: (%{public}d): %{public}s", buf, 0x12u);
    }

    *a1 = 0;
    a1[8] = 0;
  }

  else
  {
    *buf = 0;
    *a1 = v13;
    a1[8] = 1;
    sub_261486A08(buf);
  }
}

void sub_2614869FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_261470E34(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_261486A08(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D3718;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD8AC0);
    return sub_261484730(v1);
  }

  return result;
}

void sub_261486A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261486ABC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP21e5rt_program_functionEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261486B14(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3718;
  a2[1] = v2;
  return result;
}

void *sub_261486BA8(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D3798;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD8AD0);
    return sub_261484730(v1);
  }

  return result;
}

void sub_261486C3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261486C5C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP20e5rt_program_libraryEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261486CB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3798;
  a2[1] = v2;
  return result;
}

BOOL sub_261486D48(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = sub_261483F20();
  v9 = (*(v8 + 248))(a1, a2, a3);
  *a4 = v9;
  if (v9)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v10 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v12 = (*v8)(v9);
      v13 = "";
      if (v12)
      {
        v13 = v12;
      }

      v14[0] = 67240450;
      v14[1] = v9;
      v15 = 2082;
      v16 = v13;
      _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "e5rt_e5_compiler_options_set_preferred_cpu_backends failed: (%{public}d): %{public}s", v14, 0x12u);
    }
  }

  return v9 == 0;
}

void *sub_261486E9C(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D3818;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD8AE0);
    return sub_261484730(v1);
  }

  return result;
}

void sub_261486F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261486F50(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP24e5rt_e5_compiler_optionsEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261486FA8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3818;
  a2[1] = v2;
  return result;
}

void sub_26148703C(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v10 = sub_261483F20();
  if (*(a3 + 23) >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  v12 = (*(v10 + 288))(a2, v11, a4, &v16);
  *a5 = v12;
  if (v12)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v13 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v14 = (*v10)(v12);
      v15 = "";
      if (v14)
      {
        v15 = v14;
      }

      *buf = 67240450;
      *&buf[4] = v12;
      v18 = 2082;
      v19 = v15;
      _os_log_error_impl(&dword_26146F000, v13, OS_LOG_TYPE_ERROR, "e5rt_e5_compiler_compile failed: (%{public}d): %{public}s", buf, 0x12u);
    }

    *a1 = 0;
    a1[8] = 0;
  }

  else
  {
    *buf = 0;
    *a1 = v16;
    a1[8] = 1;
    sub_261486BA8(buf);
  }
}

void sub_2614871C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_261470E34(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2614871D4(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v8 = sub_261483F20();
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = (*(v8 + 296))(a1, v9, a3, &v18);
  *a4 = v10;
  if (v10)
  {
    v11 = v10;
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v12 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v16 = (*v8)(v11);
      v17 = "";
      if (v16)
      {
        v17 = v16;
      }

      *buf = 67240450;
      v20 = v11;
      v21 = 2082;
      v22 = v17;
      _os_log_error_impl(&dword_26146F000, v12, OS_LOG_TYPE_ERROR, "e5rt_e5_compiler_is_new_compile_required failed: (%{public}d): %{public}s", buf, 0x12u);
    }

    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 1;
    v14 = v18;
  }

  return v14 | (v13 << 8);
}

void *sub_26148734C(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D3898;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD8AF0);
    return sub_261484730(v1);
  }

  return result;
}

void sub_2614873E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261487400(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP16e5rt_e5_compilerEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26148745C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3898;
  a2[1] = v2;
  return result;
}

BOOL sub_2614874F0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = sub_261483F20();
  v7 = (*(v6 + 328))(a1, a2);
  *a3 = v7;
  if (v7)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v8 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v10 = (*v6)(v7);
      v11 = "";
      if (v10)
      {
        v11 = v10;
      }

      v12[0] = 67240450;
      v12[1] = v7;
      v13 = 2082;
      v14 = v11;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "e5rt_precompiled_compute_op_create_options_set_operation_name failed: (%{public}d): %{public}s", v12, 0x12u);
    }
  }

  return v7 == 0;
}

BOOL sub_261487634(uint64_t a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = sub_261483F20();
  v5 = (*(v4 + 336))(a1, 1);
  *a2 = v5;
  if (v5)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v6 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v8 = (*v4)(v5);
      v9 = "";
      if (v8)
      {
        v9 = v8;
      }

      v10[0] = 67240450;
      v10[1] = v5;
      v11 = 2082;
      v12 = v9;
      _os_log_error_impl(&dword_26146F000, v6, OS_LOG_TYPE_ERROR, "e5rt_precompiled_compute_op_create_options_set_allocate_intermediate_buffers failed: (%{public}d): %{public}s", v10, 0x12u);
    }
  }

  return v5 == 0;
}

BOOL sub_261487774(uint64_t a1, uint64_t *a2, char a3, _DWORD *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = sub_261483F20();
  if (a3)
  {
    v9 = *a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(v8 + 344))(a1, v9);
  *a4 = v10;
  if (v10)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v11 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v13 = (*v8)(v10);
      v14 = "";
      if (v13)
      {
        v14 = v13;
      }

      v15[0] = 67240450;
      v15[1] = v10;
      v16 = 2082;
      v17 = v14;
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "e5rt_precompiled_compute_op_create_options_set_override_compute_gpu_device failed: (%{public}d): %{public}s", v15, 0x12u);
    }
  }

  return v10 == 0;
}

void sub_2614878D0(_BYTE *a1, uint64_t a2, _DWORD *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v6 = sub_261483F20();
  v7 = (*(v6 + 312))(&v11, a2);
  *a3 = v7;
  if (v7)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v8 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v9 = (*v6)(v7);
      v10 = "";
      if (v9)
      {
        v10 = v9;
      }

      *buf = 67240450;
      *&buf[4] = v7;
      v13 = 2082;
      v14 = v10;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "e5rt_precompiled_compute_op_create_options_create_with_program_function failed: (%{public}d): %{public}s", buf, 0x12u);
    }

    *a1 = 0;
    a1[8] = 0;
  }

  else
  {
    *buf = 0;
    *a1 = v11;
    a1[8] = 1;
    sub_261487A44(buf);
  }
}

void sub_261487A38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_261470E34(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_261487A44(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D3918;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD8B00);
    return sub_261484730(v1);
  }

  return result;
}

void sub_261487AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261487AF8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP42e5rt_precompiled_compute_op_create_optionsEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261487B54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3918;
  a2[1] = v2;
  return result;
}

void sub_261487BE8(_BYTE *a1, uint64_t a2, _DWORD *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v6 = sub_261483F20();
  v7 = (*(v6 + 368))(&v11, a2);
  *a3 = v7;
  if (v7)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v8 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v9 = (*v6)(v7);
      v10 = "";
      if (v9)
      {
        v10 = v9;
      }

      *buf = 67240450;
      *&buf[4] = v7;
      v13 = 2082;
      v14 = v10;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options failed: (%{public}d): %{public}s", buf, 0x12u);
    }

    *a1 = 0;
    a1[8] = 0;
  }

  else
  {
    *buf = 0;
    *a1 = v11;
    a1[8] = 1;
    sub_261487D5C(buf);
  }
}

void sub_261487D50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_261470E34(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_261487D5C(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D3998;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD8B10);
    return sub_261484730(v1);
  }

  return result;
}

void sub_261487DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261487E10(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP31e5rt_execution_stream_operationEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261487E6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3998;
  a2[1] = v2;
  return result;
}

void *sub_261487F00(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D3A18;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD8B20);
    return sub_261484730(v1);
  }

  return result;
}

void sub_261487F94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261487FB4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP21e5rt_execution_streamEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261488010(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3A18;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614880A4(uint64_t a1)
{
  sub_261488100(a1 + 88);
  sub_261488100(a1 + 48);
  sub_261487D5C((a1 + 40));
  sub_261487F00((a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_261488100(uint64_t a1)
{
  sub_26148813C(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_26148813C(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_261486544(v1 + 6);
      sub_2614865EC(v1 + 5);
      if (v1[39] < 0)
      {
        operator delete(*(v1 + 2));
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t sub_26148819C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  *(a2 + 4) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(a2 + 5);
  *(a2 + 5) = 0;
  *(a1 + 40) = v7;
  sub_26148820C(a1 + 48, a2 + 6);
  sub_26148820C(a1 + 88, a2 + 11);
  return a1;
}

uint64_t sub_26148820C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void sub_26148827C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    sub_26148813C(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void *sub_261488354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v24 = 0;
  v9 = sub_261483F20();
  v10 = (*(v9 + 352))(*(a2 + 40), v8, &v24);
  v23 = v10;
  if (v10)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v11 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v16 = (*v9)(v10);
      v17 = "";
      if (v16)
      {
        v17 = v16;
      }

      *buf = 67240450;
      *&buf[4] = v10;
      *&buf[8] = 2082;
      *&buf[10] = v17;
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "e5rt_execution_stream_operation_retain_input_port failed: (%{public}d): %{public}s", buf, 0x12u);
    }

    v12 = 0;
    LOBYTE(v20) = 0;
    v22 = 0;
  }

  else
  {
    *buf = v24;
    sub_26148581C(&v20, buf, &v23);
    sub_2614865EC(buf);
    v12 = v22;
  }

  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v13 = qword_280CB3ED8;
  if (v12)
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
    {
      if (*(a3 + 23) >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      *buf = 134283779;
      *&buf[4] = v20;
      *&buf[12] = 2082;
      *&buf[14] = v18;
      _os_log_debug_impl(&dword_26146F000, v13, OS_LOG_TYPE_DEBUG, "E5RTNetwork: retrieved input port %{private}p: %{public}s", buf, 0x16u);
    }

    sub_2614886DC((a2 + 48), a3);
    operator new();
  }

  if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    *buf = 136446210;
    *&buf[4] = v19;
    _os_log_error_impl(&dword_26146F000, v13, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable to get input port: %{public}s", buf, 0xCu);
  }

  v24 = @"Unable to get an input port.";
  *buf = -6004;
  sub_261476754(a4, buf, &v24);
  v14 = v23;
  if ((*(a4 + 52) & 1) == 0)
  {
    *(a4 + 52) = 1;
  }

  result = 0;
  *(a4 + 48) = v14;
  *a1 = 0;
  if (v22 == 1)
  {
    sub_261486544(v21);
    return sub_2614865EC(&v20);
  }

  return result;
}

void sub_26148868C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_2614886DC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v5 > 0x20)
  {
    if (v5 > 0x40)
    {
      v32 = *(v4 + v5 - 48);
      v33 = *(v4 + v5 - 40);
      v34 = *(v4 + v5 - 24);
      v35 = *(v4 + v5 - 56);
      v36 = *(v4 + v5 - 16);
      v37 = *(v4 + v5 - 8);
      v38 = v35 + v36;
      v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + v5))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + v5))));
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
      v41 = *(v4 + v5 - 64) + v5;
      v42 = v41 + v35 + v32;
      v43 = __ROR8__(v42, 44) + v41;
      v44 = __ROR8__(v33 + v41 + v40, 21);
      v45 = v42 + v33;
      v46 = v43 + v44;
      v47 = v38 + *(v4 + v5 - 32) - 0x4B6D499041670D8DLL;
      v48 = v47 + v34 + v36;
      v49 = v48 + v37;
      v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
      v51 = v4 + 4;
      v52 = *v4 - 0x4B6D499041670D8DLL * v33;
      v53 = -((v5 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v54 = *(v51 - 3);
        v55 = v52 + v45 + v38 + v54;
        v56 = v51[2];
        v57 = v51[3];
        v58 = v51[1];
        v38 = v58 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v56, 42);
        v59 = v40 + v49;
        v60 = *(v51 - 2);
        v61 = *(v51 - 1);
        v62 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
        v63 = v62 + v49 + v61;
        v64 = v62 + v54 + v60;
        v45 = v64 + v61;
        v65 = __ROR8__(v64, 44) + v62;
        v66 = (0xB492B66FBE98F273 * __ROR8__(v55, 37)) ^ v50;
        v52 = 0xB492B66FBE98F273 * __ROR8__(v59, 33);
        v46 = v65 + __ROR8__(v63 + v66, 21);
        v67 = v52 + v50 + *v51;
        v49 = v67 + v58 + v56 + v57;
        v50 = __ROR8__(v67 + v58 + v56, 44) + v67 + __ROR8__(v38 + v60 + v67 + v57, 21);
        v51 += 8;
        v40 = v66;
        v53 += 64;
      }

      while (v53);
      v68 = v66 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
      v69 = v52 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
      v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v69 ^ ((0x9DDFEA08EB382D69 * (v69 ^ v68)) >> 47) ^ (0x9DDFEA08EB382D69 * (v69 ^ v68)))) ^ ((0x9DDFEA08EB382D69 * (v69 ^ ((0x9DDFEA08EB382D69 * (v69 ^ v68)) >> 47) ^ (0x9DDFEA08EB382D69 * (v69 ^ v68)))) >> 47));
      goto LABEL_19;
    }

    v9 = *(v4 + v5 - 16);
    v10 = *v4 - 0x3C5A37A36834CED9 * (v9 + v5);
    v12 = v4[2];
    v11 = v4[3];
    v13 = __ROR8__(v10 + v11, 52);
    v14 = v10 + v4[1];
    v15 = __ROR8__(v14, 7);
    v16 = v14 + v12;
    v17 = *(v4 + v5 - 32) + v12;
    v18 = *(v4 + v5 - 8) + v11;
    v19 = __ROR8__(v18 + v17, 52);
    v20 = v15 + __ROR8__(*v4 - 0x3C5A37A36834CED9 * (v9 + v5), 37) + v13 + __ROR8__(v16, 31);
    v21 = *(v4 + v5 - 24) + v17 + v9;
    v22 = v21 + v18;
    v23 = 0x9AE16A3B2F90404FLL;
    v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v16 + v11 + __ROR8__(v17, 37) + __ROR8__(*(v4 + v5 - 24) + v17, 7) + v19 + __ROR8__(v21, 31));
    v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
    goto LABEL_15;
  }

  if (v5 > 0x10)
  {
    v26 = v4[1];
    v27 = 0xB492B66FBE98F273 * *v4;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(v4 + v5 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + v5 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(v4 + v5 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(v4 + v5 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_14:
    v25 = 0x9DDFEA08EB382D69 * v31;
LABEL_15:
    v8 = (v25 ^ (v25 >> 47)) * v23;
    goto LABEL_19;
  }

  if (v5 >= 9)
  {
    v6 = *(v4 + v5 - 8);
    v7 = __ROR8__(v6 + v5, v5);
    v8 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ *v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ *v4)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ *v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ *v4)))) >> 47))) ^ v6;
    goto LABEL_19;
  }

  if (v5 >= 4)
  {
    v80 = *(v4 + v5 - 4);
    v23 = 0x9DDFEA08EB382D69;
    v81 = 0x9DDFEA08EB382D69 * ((v5 + (8 * *v4)) ^ v80);
    v31 = v80 ^ (v81 >> 47) ^ v81;
    goto LABEL_14;
  }

  v8 = 0x9AE16A3B2F90404FLL;
  if (v5)
  {
    v83 = (0xC949D7C7509E6557 * (v5 | (4 * *(v4 + v5 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v4 | (*(v4 + (v5 >> 1)) << 8)));
    v8 = 0x9AE16A3B2F90404FLL * (v83 ^ (v83 >> 47));
  }

LABEL_19:
  v70 = a1[1];
  if (!*&v70)
  {
    goto LABEL_42;
  }

  v71 = vcnt_s8(v70);
  v71.i16[0] = vaddlv_u8(v71);
  v72 = v71.u32[0];
  if (v71.u32[0] > 1uLL)
  {
    v73 = v8;
    if (v8 >= *&v70)
    {
      v73 = v8 % *&v70;
    }
  }

  else
  {
    v73 = (*&v70 - 1) & v8;
  }

  v74 = *(*a1 + 8 * v73);
  if (!v74 || (v75 = *v74) == 0)
  {
LABEL_42:
    operator new();
  }

  while (1)
  {
    v76 = v75[1];
    if (v76 == v8)
    {
      break;
    }

    if (v72 > 1)
    {
      if (v76 >= *&v70)
      {
        v76 %= *&v70;
      }
    }

    else
    {
      v76 &= *&v70 - 1;
    }

    if (v76 != v73)
    {
      goto LABEL_42;
    }

LABEL_41:
    v75 = *v75;
    if (!v75)
    {
      goto LABEL_42;
    }
  }

  v77 = *(v75 + 39);
  v78 = v77;
  if (v77 < 0)
  {
    v77 = v75[3];
  }

  if (v77 != v5)
  {
    goto LABEL_41;
  }

  v79 = v78 >= 0 ? (v75 + 2) : v75[2];
  if (memcmp(v79, v4, v5))
  {
    goto LABEL_41;
  }

  return v75;
}

uint64_t sub_261488FEC(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    sub_261486544((a1 + 8));
    sub_2614865EC(a1);
  }

  return a1;
}

void sub_261489034(char a1, uint64_t a2)
{
  if (a1)
  {
    sub_261486544((a2 + 48));
    sub_2614865EC((a2 + 40));
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_2614890A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v24 = 0;
  v9 = sub_261483F20();
  v10 = (*(v9 + 360))(*(a2 + 40), v8, &v24);
  v23 = v10;
  if (v10)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v11 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v16 = (*v9)(v10);
      v17 = "";
      if (v16)
      {
        v17 = v16;
      }

      *buf = 67240450;
      *&buf[4] = v10;
      *&buf[8] = 2082;
      *&buf[10] = v17;
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "e5rt_execution_stream_operation_retain_output_port failed: (%{public}d): %{public}s", buf, 0x12u);
    }

    v12 = 0;
    LOBYTE(v20) = 0;
    v22 = 0;
  }

  else
  {
    *buf = v24;
    sub_26148581C(&v20, buf, &v23);
    sub_2614865EC(buf);
    v12 = v22;
  }

  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v13 = qword_280CB3ED8;
  if (v12)
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
    {
      if (*(a3 + 23) >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      *buf = 134283779;
      *&buf[4] = v20;
      *&buf[12] = 2082;
      *&buf[14] = v18;
      _os_log_debug_impl(&dword_26146F000, v13, OS_LOG_TYPE_DEBUG, "E5RTNetwork: retrieved output port %{private}p: %{public}s", buf, 0x16u);
    }

    sub_2614886DC((a2 + 88), a3);
    operator new();
  }

  if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    *buf = 136446210;
    *&buf[4] = v19;
    _os_log_error_impl(&dword_26146F000, v13, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable to get output port: %{public}s", buf, 0xCu);
  }

  v24 = @"Unable to get an output port.";
  *buf = -6004;
  sub_261476754(a4, buf, &v24);
  v14 = v23;
  if ((*(a4 + 52) & 1) == 0)
  {
    *(a4 + 52) = 1;
  }

  result = 0;
  *(a4 + 48) = v14;
  *a1 = 0;
  if (v22 == 1)
  {
    sub_261486544(v21);
    return sub_2614865EC(&v20);
  }

  return result;
}

void sub_2614893E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261489430(uint64_t a1, qos_class_t *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v37[0] = &unk_2873D3C18;
  v37[1] = a1;
  v38 = v37;
  v39 = a4;
  v36[0] = &unk_2873D3C98;
  v36[1] = a1;
  v36[3] = v36;
  sub_261489C64(v40, v36);
  if (*(v39 + 8) == 1 && v38 != 0)
  {
    sub_261489CFC(v38, *v39);
  }

  sub_261489D4C(v36);
  sub_261489D4C(v37);
  if ((*(a1 + 27) & 1) == 0)
  {
    if (qword_280CB3E98 != -1)
    {
      dispatch_once_f(&qword_280CB3E98, 0, sub_26151BFB4);
    }

    if (byte_280CB3EA0 == 1)
    {
      if (qword_280CB3488 != -1)
      {
        dispatch_once_f(&qword_280CB3488, 0, sub_26151BFEC);
      }

      if (byte_280CB3490 == 1)
      {
        if (qword_280CB3EE0 != -1)
        {
          dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
        }

        v8 = qword_280CB3ED8;
        if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_26146F000, v8, OS_LOG_TYPE_DEBUG, "E5RTNetwork: may execute on ANE, setting ANE execution priority from QoS", buf, 2u);
        }

        HIDWORD(v10) = *a2 - 9;
        LODWORD(v10) = HIDWORD(v10);
        v9 = v10 >> 2;
        v11 = 5;
        if (v9 <= 6 && ((0x22u >> v9) & 1) == 0)
        {
          if ((0x5Du >> v9))
          {
            v12 = dword_261585ED4[v9];
          }

          else
          {
            HIDWORD(v13) = qos_class_self() - 9;
            LODWORD(v13) = HIDWORD(v13);
            v12 = v13 >> 2;
          }

          v11 = *&asc_2615665CC[4 * v12];
        }

        if (qword_280CB3EE0 != -1)
        {
          dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
        }

        v14 = qword_280CB3ED8;
        if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
        {
          v30 = *a2;
          HIDWORD(v32) = *a2 - 9;
          LODWORD(v32) = HIDWORD(v32);
          v31 = v32 >> 2;
          if (v31 > 6 || ((1 << v31) & 0x5D) == 0)
          {
            v30 = qos_class_self();
          }

          *buf = 67240448;
          *&buf[4] = v30;
          v43 = 1026;
          LODWORD(v44) = v11;
          _os_log_debug_impl(&dword_26146F000, v14, OS_LOG_TYPE_DEBUG, "E5RTExecutionStream: QoS %{public}x mapped to E5RT ANE execution priority %{public}d", buf, 0xEu);
        }

        v15 = sub_261483F20();
        v16 = (*(v15 + 432))(*(a1 + 32), v11);
        if (v16)
        {
          if (qword_280CB3EE0 != -1)
          {
            dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
          }

          v17 = qword_280CB3ED8;
          if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
          {
            v33 = (*v15)(v16);
            v34 = "";
            if (v33)
            {
              v34 = v33;
            }

            *buf = 67240450;
            *&buf[4] = v16;
            v43 = 2082;
            v44 = v34;
            _os_log_error_impl(&dword_26146F000, v17, OS_LOG_TYPE_ERROR, "e5rt_execution_stream_set_ane_execution_priority failed: (%{public}d): %{public}s", buf, 0x12u);
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240192;
            *&buf[4] = v11;
            _os_log_error_impl(&dword_26146F000, v17, OS_LOG_TYPE_ERROR, "E5RTExecutionStream: failed to set ANE execution priority %{public}d", buf, 8u);
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable to set ANE execution priority from QoS", buf, 2u);
          }

          *buf = -6005;
          v35 = @"Unable to set ANE execution priority from QoS.";
          sub_261476754(a3, buf, &v35);
          if ((*(a3 + 52) & 1) == 0)
          {
            *(a3 + 52) = 1;
          }

          v18 = 0;
          *(a3 + 48) = v16;
          goto LABEL_66;
        }
      }
    }
  }

  v19 = sub_261483F20();
  v20 = (*(v19 + 400))(*(a1 + 32), *(a1 + 40));
  if (v20)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v21 = qword_280CB3ED8;
    if (!os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    v22 = (*v19)(v20);
    v23 = "";
    if (v22)
    {
      v23 = v22;
    }

    *buf = 67240450;
    *&buf[4] = v20;
    v43 = 2082;
    v44 = v23;
    _os_log_error_impl(&dword_26146F000, v21, OS_LOG_TYPE_ERROR, "e5rt_execution_stream_encode_operation failed: (%{public}d): %{public}s", buf, 0x12u);
  }

  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

LABEL_46:
  v24 = qword_280CB3ED8;
  if (v20)
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v24, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable to encode execution stream operation", buf, 2u);
    }

    *buf = -6005;
    v35 = @"Unable to encode execution stream operation.";
    sub_261476754(a3, buf, &v35);
    if ((*(a3 + 52) & 1) == 0)
    {
      *(a3 + 52) = 1;
    }

    v18 = 0;
    *(a3 + 48) = v20;
  }

  else
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26146F000, v24, OS_LOG_TYPE_DEBUG, "E5RTNetwork: done encoding execution stream operation", buf, 2u);
    }

    v25 = (*(v19 + 408))(*(a1 + 32));
    if (v25)
    {
      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v26 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        v28 = (*v19)(v25);
        v29 = "";
        if (v28)
        {
          v29 = v28;
        }

        *buf = 67240450;
        *&buf[4] = v25;
        v43 = 2082;
        v44 = v29;
        _os_log_error_impl(&dword_26146F000, v26, OS_LOG_TYPE_ERROR, "e5rt_execution_stream_execute_sync failed: (%{public}d): %{public}s", buf, 0x12u);
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26146F000, v24, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable to execute excution stream", buf, 2u);
      }

      *buf = -6005;
      v35 = @"Unable to execute excution stream.";
      sub_261476754(a3, buf, &v35);
      if ((*(a3 + 52) & 1) == 0)
      {
        *(a3 + 52) = 1;
      }

      v18 = 0;
      *(a3 + 48) = v25;
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_26146F000, v24, OS_LOG_TYPE_DEBUG, "E5RTNetwork: done executing execution stream", buf, 2u);
      }

      v18 = 1;
    }
  }

LABEL_66:
  if (*(v39 + 8) == 1 && v41)
  {
    sub_261489CFC(v41, *v39);
  }

  sub_261489D4C(v40);
  return v18;
}

void sub_261489C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_261489DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_261489C64(uint64_t a1, uint64_t a2)
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

uint64_t sub_261489CFC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_261477FC4();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t sub_261489D4C(uint64_t a1)
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

uint64_t **sub_261489DCC(uint64_t **a1)
{
  v2 = *a1;
  if (*(*a1 + 8) == 1)
  {
    v3 = a1[4];
    if (v3)
    {
      sub_261489CFC(v3, *v2);
    }
  }

  sub_261489D4C((a1 + 1));
  return a1;
}

uint64_t sub_261489E28(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt11E5RTNetwork7executeERKNS_7Context3QoSERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261489E64(uint64_t a1, os_signpost_id_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      v5 = 136446210;
      v6 = v3;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v2, "E5RTNetwork::execute", "name=%{public, signpost.description:attribute}s", &v5, 0xCu);
    }
  }
}

uint64_t sub_261489F60(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3C98;
  a2[1] = v2;
  return result;
}

uint64_t sub_26148A000(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt11E5RTNetwork7executeERKNS_7Context3QoSERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26148A03C(uint64_t a1, os_signpost_id_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      v5 = 136446210;
      v6 = v3;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "E5RTNetwork::execute", "name=%{public, signpost.description:attribute}s", &v5, 0xCu);
    }
  }
}

uint64_t sub_26148A138(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3C18;
  a2[1] = v2;
  return result;
}

BOOL sub_26148A1CC(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_261483F20();
  v5 = v4[53](a1);
  if (!v5)
  {
LABEL_8:
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    goto LABEL_10;
  }

  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v6 = qword_280CB3ED8;
  if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
  {
    v7 = (*v4)(v5);
    v8 = "";
    if (v7)
    {
      v8 = v7;
    }

    *buf = 67240450;
    *&buf[4] = v5;
    v13 = 2082;
    v14 = v8;
    _os_log_error_impl(&dword_26146F000, v6, OS_LOG_TYPE_ERROR, "e5rt_execution_stream_reset failed: (%{public}d): %{public}s", buf, 0x12u);
    goto LABEL_8;
  }

LABEL_10:
  v9 = qword_280CB3ED8;
  if (v5)
  {
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v9, OS_LOG_TYPE_ERROR, "E5RTNetwork: unable to reset excution stream", buf, 2u);
    }

    v11 = @"Unable to reset excution stream.";
    *buf = -6005;
    sub_261476754(a2, buf, &v11);
    if ((*(a2 + 52) & 1) == 0)
    {
      *(a2 + 52) = 1;
    }

    *(a2 + 48) = v5;
  }

  else if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_26146F000, v9, OS_LOG_TYPE_DEBUG, "E5RTNetwork: done resetting execution stream", buf, 2u);
  }

  return v5 == 0;
}

void sub_26148A3E0(_BYTE *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, atomic_ullong *a8)
{
  v49 = *MEMORY[0x277D85DE8];
  memset(&__dst, 0, sizeof(__dst));
  sub_26148E87C(&__dst, *a2, (*a2 + *(a2 + 8)));
  if (a4)
  {
    if (a4 != 1)
    {
      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v13 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 67240192;
        HIDWORD(buf.__pn_.__r_.__value_.__r.__words[0]) = a4;
        _os_log_error_impl(&dword_26146F000, v13, OS_LOG_TYPE_ERROR, "E5RTNetwork: unrecognized compilation flavor: %{public}d", &buf, 8u);
      }

      buf.__pn_.__r_.__value_.__r.__words[0] = -6003;
      __p.__r_.__value_.__r.__words[0] = @"Unrecognized compilation flavor.";
      sub_261476754(a8, &buf, &__p.__r_.__value_.__l.__data_);
      goto LABEL_40;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        v11 = ".mil";
        v12 = 4;
        goto LABEL_13;
      }

      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v21 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 67240192;
        HIDWORD(buf.__pn_.__r_.__value_.__r.__words[0]) = a3;
        _os_log_error_impl(&dword_26146F000, v21, OS_LOG_TYPE_ERROR, "E5RTNetwork: unrecognized network kind: %{public}d", &buf, 8u);
      }

      buf.__pn_.__r_.__value_.__r.__words[0] = -6003;
      __p.__r_.__value_.__r.__words[0] = @"Unrecognized network kind.";
      sub_261476754(a8, &buf, &__p.__r_.__value_.__l.__data_);
LABEL_40:
      v42[1] = 0;
      v43 = 0;
      v42[0] = 0;
      goto LABEL_65;
    }

    v11 = ".espresso.net";
    v12 = 13;
  }

  else
  {
    v11 = ".bundle";
    v12 = 7;
  }

LABEL_13:
  std::string::append(&__dst, v11, v12);
  memset(&__p, 0, sizeof(__p));
  sub_26148E87C(&__p, "Networks", "");
  sub_26148E788(&buf, &__p, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  __dst = buf.__pn_;
  *(&buf.__pn_.__r_.__value_.__s + 23) = 0;
  buf.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  __p.__r_.__value_.__r.__words[0] = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], p_dst, 0x8000100u, *MEMORY[0x277CBED00]);
  if (!atomic_load_explicit(&__p, memory_order_acquire))
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v20 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v36 = &__dst;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = __dst.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__pn_.__r_.__value_.__r.__words + 4) = v36;
      _os_log_error_impl(&dword_26146F000, v20, OS_LOG_TYPE_ERROR, "E5RTNetwork: CFStringCreateWithCStringNoCopy failed with: %{public}s", &buf, 0xCu);
    }

    buf.__pn_.__r_.__value_.__r.__words[0] = -6003;
    v46 = @"CFStringCreateWithCStringNoCopy failed.";
    sub_261476754(a8, &buf, &v46);
    v42[1] = 0;
    v43 = 0;
    v42[0] = 0;
    goto LABEL_64;
  }

  if (qword_280CB3F20 != -1)
  {
    dispatch_once(&qword_280CB3F20, &unk_2873D6E90);
  }

  bundle = qword_280CB3F28;
  v38 = a1;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v15 = qword_280CB3ED8;
  if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
  {
    explicit = atomic_load_explicit(&__p, memory_order_acquire);
    LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 138543618;
    *(buf.__pn_.__r_.__value_.__r.__words + 4) = explicit;
    WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2114;
    *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = bundle;
    _os_log_debug_impl(&dword_26146F000, v15, OS_LOG_TYPE_DEBUG, "E5RTNetwork: attempt to locate %{public}@ from within: %{public}@", &buf, 0x16u);
  }

  v16 = atomic_load_explicit(&__p, memory_order_acquire);
  context = objc_autoreleasePoolPush();
  if (bundle)
  {
    v18 = CFBundleCopyBundleURL(bundle);
    if (v18)
    {
      v19 = objc_msgSend_bundleWithURL_(MEMORY[0x277CCA8D8], v17, v18);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = v16;
  v23 = v19;
  if (qword_280CB3610 != -1)
  {
    dispatch_once(&qword_280CB3610, &unk_2873D6EB0);
  }

  v25 = qword_280CB3258;
  if (v25)
  {
    if (qword_280CB3ED0 != -1)
    {
      dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
    }

    v26 = qword_280CB3EC8;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 138543362;
      *(buf.__pn_.__r_.__value_.__r.__words + 4) = v25;
      _os_log_impl(&dword_26146F000, v26, OS_LOG_TYPE_INFO, "_MRCResourcePath: overriddenBasePath=%{public}@", &buf, 0xCu);
    }

    v28 = objc_msgSend_stringByAppendingPathComponent_(v25, v27, v22);
    v31 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v29, v30);
    v33 = objc_msgSend_fileExistsAtPath_(v31, v32, v28);

    if (v33)
    {
      goto LABEL_57;
    }
  }

  if (!v23 || (objc_msgSend_pathForResource_ofType_(v23, v24, v22, 0), (v28 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (qword_27FEB4358 != -1)
    {
      dispatch_once(&qword_27FEB4358, &unk_2873D6ED0);
    }

    v28 = 0;
  }

LABEL_57:

  objc_autoreleasePoolPop(context);
  v46 = v28;
  if (atomic_load_explicit(&v46, memory_order_acquire))
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v35 = atomic_load_explicit(&v46, memory_order_acquire);
      LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 138543618;
      *(buf.__pn_.__r_.__value_.__r.__words + 4) = v35;
      WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2114;
      *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = bundle;
      _os_log_debug_impl(&dword_26146F000, v15, OS_LOG_TYPE_DEBUG, "E5RTNetwork: located %{public}@ from within: %{public}@", &buf, 0x16u);
    }

    CFStringGetMaximumSizeOfFileSystemRepresentation(atomic_load_explicit(&v46, memory_order_acquire));
    operator new[]();
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v37 = atomic_load_explicit(&__p, memory_order_acquire);
    LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 138543618;
    *(buf.__pn_.__r_.__value_.__r.__words + 4) = v37;
    WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2114;
    *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = bundle;
    _os_log_error_impl(&dword_26146F000, v15, OS_LOG_TYPE_ERROR, "E5RTNetwork: Unable to locate %{public}@ from within: %{public}@", &buf, 0x16u);
  }

  buf.__pn_.__r_.__value_.__r.__words[0] = -6003;
  v44 = @"Unable to locate network file.";
  sub_261476754(a8, &buf, &v44);
  v42[1] = 0;
  v43 = 0;
  v42[0] = 0;
  a1 = v38;
  sub_26148E848(&v46);
LABEL_64:
  sub_26148E848(&__p);
LABEL_65:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *a1 = 0;
  a1[128] = 0;
}

void sub_26148AFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, atomic_ullong a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  MEMORY[0x2667045B0](v36, 0x1000C8077774924);
  sub_26148E848(&a30);
  sub_26148E848(&a24);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26148D548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_ullong a22, uint64_t a23, atomic_ullong a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t *a36)
{
  sub_26148D854(v36 - 208);
  sub_26148D890(&a22);
  sub_26148D8C4(v36 - 144);
  sub_26148D900(v36 - 176);
  sub_26148D93C(&a24);
  sub_26148D818(&a14);
  sub_261489DCC(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_26148D720(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_261487F00(a1);
  }

  return a1;
}

uint64_t sub_26148D75C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_261487D5C(a1);
  }

  return a1;
}

void *sub_26148D798(void *result, uint64_t *a2)
{
  v3 = result;
  if (*(result + 8) == *(a2 + 8))
  {
    if (*(result + 8))
    {
      result = sub_261486BA8(result);
      v4 = *a2;
      *a2 = 0;
      *v3 = v4;
    }
  }

  else if (*(result + 8))
  {
    result = sub_261486BA8(result);
    *(v3 + 8) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *result = v5;
    *(result + 8) = 1;
  }

  return result;
}

uint64_t sub_26148D818(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_261486BA8(a1);
  }

  return a1;
}

uint64_t sub_26148D854(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_26148D970(a1);
  }

  return a1;
}

atomic_ullong *sub_26148D890(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_26148D8C4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_261487A44(a1);
  }

  return a1;
}

uint64_t sub_26148D900(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_261486A08(a1);
  }

  return a1;
}

atomic_ullong *sub_26148D93C(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_26148D970(void *result)
{
  v1[4] = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v1[0] = &unk_2873D6E10;
    v1[1] = result;
    v1[3] = v1;
    sub_2614845C4(v1, &off_279AD9230);
    return sub_261484730(v1);
  }

  return result;
}

void sub_26148DA04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261484730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26148DA24(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt18__e5rt_ref_details10deallocateIP23e5rt_compute_gpu_deviceEEvRNS1_13E5RTRefTraitsIT_E4typeEEUlOS7_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26148DA7C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D6E10;
  a2[1] = v2;
  return result;
}

uint64_t sub_26148DB10(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_26148734C(a1);
  }

  return a1;
}

uint64_t sub_26148DB4C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_261486E9C(a1);
  }

  return a1;
}

uint64_t sub_26148DB94(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt11E5RTNetwork27performOnDemandCompilation_ERKNSt3__14__fs10filesystem4pathENS0_11NetworkKindEmyRNS3_8optionalINS_5ErrorEEERKNSA_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26148DBD0(uint64_t a1, os_signpost_id_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      v5 = *(a1 + 8);
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v6 = **(a1 + 16);
      v7 = 136446466;
      v8 = v5;
      v9 = 2050;
      v10 = v6;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v3, "E5RTNetwork::performOnDemandCompilation_", "path=%{public, signpost.description:attribute}s, inferenceFlags=%{public, signpost.description:attribute}lx", &v7, 0x16u);
    }
  }
}

__n128 sub_26148DCE4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3E98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_26148DD8C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt11E5RTNetwork27performOnDemandCompilation_ERKNSt3__14__fs10filesystem4pathENS0_11NetworkKindEmyRNS3_8optionalINS_5ErrorEEERKNSA_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26148DDC8(uint64_t a1, os_signpost_id_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      v5 = *(a1 + 8);
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v6 = **(a1 + 16);
      v7 = 136446466;
      v8 = v5;
      v9 = 2050;
      v10 = v6;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "E5RTNetwork::performOnDemandCompilation_", "path=%{public, signpost.description:attribute}s, inferenceFlags=%{public, signpost.description:attribute}lx", &v7, 0x16u);
    }
  }
}

__n128 sub_26148DEDC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3E18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_26148DF84(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt11E5RTNetwork23loadPrecompiledLibrary_ERKNSt3__14__fs10filesystem4pathERNS3_8optionalINS_5ErrorEEERKNS9_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26148DFC0(uint64_t a1, os_signpost_id_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      v5 = *(a1 + 8);
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v6 = 136446210;
      v7 = v5;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v3, "E5RTNetwork::loadPrecompiledLibrary_", "path=%{public, signpost.description:attribute}s", &v6, 0xCu);
    }
  }
}

uint64_t sub_26148E0C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3D98;
  a2[1] = v2;
  return result;
}

uint64_t sub_26148E160(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt11E5RTNetwork23loadPrecompiledLibrary_ERKNSt3__14__fs10filesystem4pathERNS3_8optionalINS_5ErrorEEERKNS9_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26148E19C(uint64_t a1, os_signpost_id_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      v5 = *(a1 + 8);
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v6 = 136446210;
      v7 = v5;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "E5RTNetwork::loadPrecompiledLibrary_", "path=%{public, signpost.description:attribute}s", &v6, 0xCu);
    }
  }
}

uint64_t sub_26148E29C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D3D18;
  a2[1] = v2;
  return result;
}

uint64_t sub_26148E33C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt11E5RTNetwork5load_ERKNSt3__14__fs10filesystem4pathENS0_11NetworkKindENS2_17CompilationFlavorEPKcSC_RKNS_7Context7OptionsERNS3_8optionalINS_5ErrorEEERKNSH_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26148E378(uint64_t a1, os_signpost_id_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      v5 = *(a1 + 8);
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v6 = **(a1 + 16);
      v7 = **(a1 + 24);
      v8 = **(a1 + 32);
      v9 = 136446978;
      v10 = v5;
      v11 = 1026;
      v12 = v6;
      v13 = 2082;
      v14 = v7;
      v15 = 2050;
      v16 = v8;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v3, "E5RTNetwork::load_", "path=%{public, signpost.description:attribute}s, compilationFlavor=%{public, signpost.description:attribute}d, function=%{public, signpost.description:attribute}s, inferenceFlags=%{public, signpost.description:attribute}lx", &v9, 0x26u);
    }
  }
}

__n128 sub_26148E4B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3F98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_26148E568(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference4e5rt11E5RTNetwork5load_ERKNSt3__14__fs10filesystem4pathENS0_11NetworkKindENS2_17CompilationFlavorEPKcSC_RKNS_7Context7OptionsERNS3_8optionalINS_5ErrorEEERKNSH_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26148E5A4(uint64_t a1, os_signpost_id_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      v5 = *(a1 + 8);
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v6 = **(a1 + 16);
      v7 = **(a1 + 24);
      v8 = **(a1 + 32);
      v9 = 136446978;
      v10 = v5;
      v11 = 1026;
      v12 = v6;
      v13 = 2082;
      v14 = v7;
      v15 = 2050;
      v16 = v8;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "E5RTNetwork::load_", "path=%{public, signpost.description:attribute}s, compilationFlavor=%{public, signpost.description:attribute}d, function=%{public, signpost.description:attribute}s, inferenceFlags=%{public, signpost.description:attribute}lx", &v9, 0x26u);
    }
  }
}

__n128 sub_26148E6DC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D3F18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

std::string *sub_26148E788(std::__fs::filesystem::path *__dst, uint64_t a2, std::__fs::filesystem::path *this)
{
  if (*(a2 + 23) < 0)
  {
    sub_261480F94(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *&__dst->__pn_.__r_.__value_.__l.__data_ = *a2;
    __dst->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    return std::string::operator=(&__dst->__pn_, &this->__pn_);
  }

  if (std::__fs::filesystem::path::__filename(__dst).__size_)
  {
    std::string::push_back(&__dst->__pn_, 47);
  }

  v6 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = this;
  }

  else
  {
    v7 = this->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__pn_.__r_.__value_.__l.__size_;
  }

  return std::string::append(&__dst->__pn_, v7, size);
}

void sub_26148E82C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *sub_26148E848(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *sub_26148E87C(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v8 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, __src, v6);
    v12[v6] = 0;
    v13 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }
  }

  else
  {
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_261481038();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v18 = v6;
    memcpy(__dst, __src, v6);
    *(__dst + v6) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(this, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return this;
}

void sub_26148EA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_26148EA44(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2667043D0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_261481038();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2667043E0](v20);
  return a1;
}

void sub_26148ECEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2667043E0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26148ECC0);
}

uint64_t sub_26148ED6C(int a1, int a2)
{
  if (!a1)
  {
    if ((a2 - 33) > 0xFFFFFFDF)
    {
      v2 = &unk_2615665FC;
      return v2[a2];
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "number of data layers is out of bounds for full Aztec symbol");
LABEL_9:
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  if ((a2 - 5) <= 0xFFFFFFFB)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "number of data layers is out of bounds for compact Aztec symbol");
    goto LABEL_9;
  }

  v2 = &unk_2615665E8;
  return v2[a2];
}

BOOL sub_26148EE2C(uint64_t a1, signed int a2, int a3)
{
  if (!sub_2614949B0(a1, a2, a3))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_261524120(exception, "Sample point is out of image bounds");
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  v6 = *(a1 + 45);
  return v6 != sub_261470964(*(a1 + 16), a2, a3);
}

uint64_t sub_26148EECC(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  sub_26148EFE8(__p, 2uLL);
  LODWORD(v12) = 0;
  *&v13 = __PAIR64__(a4, a3);
  v17 = __PAIR64__(a6, a5);
  v14 = 10;
  do
  {
    v18 = v13;
    *__p[0] = vcvt_f32_s32(*&v13);
    (*(**a2 + 16))(*a2, __p);
    v15 = sub_26148EE2C(a1, *__p[0], *(__p[0] + 1));
    *(&v13 + 1) = *(&v18 + 1);
    *&v13 = vadd_s32(v17, *&v18);
    v12 = (v12 + v15);
    --v14;
  }

  while (v14);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

void sub_26148EFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_26148EFE8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_261472AF0(result, a2);
  }

  return result;
}

void sub_26148F0E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26148F334(uint64_t result, atomic_uint **a2)
{
  v2 = result;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (v4 >= v3)
  {
    v7 = (v4 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2614709BC();
    }

    v8 = v3 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v20 = v2;
    if (v10)
    {
      sub_261470E48(v10);
    }

    v11 = (8 * v7);
    *(&v19 + 1) = 0;
    *v11 = 0;
    v12 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
      if (*v11)
      {
        sub_2614705CC(*v11);
      }
    }

    *v11 = v12;
    *&v19 = v11 + 1;
    v13 = *(v2 + 8);
    v14 = (v11 + *v2 - v13);
    sub_26148F478(v2, *v2, v13, v14);
    v15 = *v2;
    *v2 = v14;
    v16 = *(v2 + 16);
    v17 = v19;
    *(v2 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v18[0] = v15;
    v18[1] = v15;
    result = sub_26148F554(v18);
    v6 = v17;
  }

  else
  {
    *v4 = 0;
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
      result = *v4;
      if (*v4)
      {
        result = sub_2614705CC(result);
      }
    }

    *v4 = v5;
    v6 = v4 + 1;
  }

  *(v2 + 8) = v6;
  return result;
}

uint64_t sub_26148F478(uint64_t a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v8 = *v7;
      v9 = v4;
      if (*v7)
      {
        atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
        v9 = v4;
        if (*v4)
        {
          sub_2614705CC(*v4);
          v9 = v14;
        }
      }

      *v4 = v8;
      ++v7;
      v4 = v9 + 1;
      v14 = v9 + 1;
    }

    while (v7 != a3);
    v12 = 1;
    do
    {
      if (*v6)
      {
        sub_2614705CC(*v6);
      }

      ++v6;
    }

    while (v6 != a3);
  }

  return sub_261470DDC(v11);
}

uint64_t sub_26148F554(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 8);
    v2 -= 8;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      sub_2614705CC(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_uint **sub_26148F5A8(uint64_t a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v7 = *v6;
      v8 = v4;
      if (*v6)
      {
        atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
        v8 = v4;
        if (*v4)
        {
          sub_2614705CC(*v4);
          v8 = v13;
        }
      }

      *v4 = v7;
      ++v6;
      v4 = v8 + 1;
      v13 = v8 + 1;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_261470DDC(v10);
  return v4;
}

void sub_26148F660(void *a1, int a2, int a3, _DWORD *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 <= 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "dimension <= 0");
    goto LABEL_18;
  }

  if (a3 > a2 || !a3 || (v4 = -a2, -a2 > a3))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "invalid init_center");
LABEL_18:
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  v5 = a3 + 8;
  if (a3 + 8 >= a2)
  {
    v5 = a2;
  }

  if (a3 - 8 > v4)
  {
    v4 = a3 - 8;
  }

  *a4 = ((a3 - v4) + (a3 - v4));
  v6 = (((v5 - v4) * 2.0) + 1.0);
  if (v6 == 2)
  {
    v8 = v4;
    v9 = v5;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    sub_261472A80(a1, &v8, &v10, 2uLL);
  }

  if (v6 == 1)
  {
    v8 = v4;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    sub_261472A80(a1, &v8, &v9, 1uLL);
  }

  if (v6)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_261472B30(1uLL);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *sub_26148F908(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_261472AF0(result, a2);
  }

  return result;
}

void sub_26148F964(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26148F980(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 < 2)
  {
    return 0;
  }

  v13 = sub_261470964(a1, a2, a3);
  LODWORD(v6) = 0;
  v14 = a6 - 1;
  v15 = a4 + a2;
  v16 = a5 + a3;
  do
  {
    v17 = sub_261470964(a1, v15, v16);
    v6 = v6 + ((v13 ^ v17) & 1);
    if ((v13 ^ v17))
    {
      v13 = v17;
    }

    v15 += a4;
    v16 += a5;
    --v14;
  }

  while (v14);
  return v6;
}

void *sub_26148FA30(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_261472AF0(result, a2);
  }

  return result;
}

void sub_26148FA8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26148FAA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_261472AF0(result, a4);
  }

  return result;
}

void sub_26148FB08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t sub_26148FB24(atomic_uint **a1, int32x2_t *a2, int32x2_t *a3, int32x2_t *a4)
{
  v7 = *a1;
  v8 = *(*a1 + 7);
  v9 = -v8;
  v10 = *(*a1 + 4);
  v11 = v10 & -v8--;
  v12 = *(*a1 + 2);
  v13 = v12 & v8 | v11;
  v14 = v10 & v8 | v12 & v9;
  if (v13 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
  *v16.i8 = *a3;
  v17 = vadd_s32(*a3, *a2);
  v34 = *a2;
  v35 = v17;
  v38 = 0;
  v36 = vabs_s32(*v16.i8);
  v16.i64[1] = v16.i64[0];
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  v19 = vorrq_s8(vcltzq_s32(v16), vbicq_s8(v18, vceqzq_s32(v16))).u64[0];
  v20 = 0uLL;
  if (v36 >= HIDWORD(v36))
  {
    HIDWORD(v20) = HIDWORD(v19);
    LODWORD(v20) = v19;
  }

  else
  {
    v36 = __PAIR64__(v36, HIDWORD(v36));
    DWORD1(v20) = HIDWORD(v19);
    DWORD2(v20) = v19;
  }

  v37 = v20;
  sub_26148FCFC(v40, v7, &v34, v15);
  sub_2614705CC(v7);
  v21 = v42;
  v22 = *a1;
  if (v22)
  {
    atomic_fetch_add_explicit(v22 + 2, 1u, memory_order_relaxed);
  }

  *v23.i8 = *a4;
  v24 = vadd_s32(*a4, *a2);
  v30[0] = *a2;
  v30[1] = v24;
  v33 = 0;
  v31 = vabs_s32(*v23.i8);
  v23.i64[1] = v23.i64[0];
  v25.i64[0] = 0x100000001;
  v25.i64[1] = 0x100000001;
  v26 = vorrq_s8(vcltzq_s32(v23), vbicq_s8(v25, vceqzq_s32(v23))).u64[0];
  v27 = 0uLL;
  if (v31 >= HIDWORD(v31))
  {
    HIDWORD(v27) = HIDWORD(v26);
    LODWORD(v27) = v26;
  }

  else
  {
    v31 = __PAIR64__(v31, HIDWORD(v31));
    DWORD1(v27) = HIDWORD(v26);
    DWORD2(v27) = v26;
  }

  v32 = v27;
  sub_26148FCFC(&v34, v22, v30, v15);
  if (v22)
  {
    sub_2614705CC(v22);
  }

  v28 = v39;
  if (v35)
  {
    sub_2614705CC(v35);
  }

  if (v41)
  {
    sub_2614705CC(v41);
  }

  return vmul_f32(vcvt_f32_s32(vadd_s32(v28, v21)), 0x3F0000003F000000);
}

uint64_t sub_26148FCFC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
    v7 = *a3;
    v29 = *(a3 + 8);
    v30 = *(a3 + 24);
    v31 = *(a3 + 40);
    *a1 = 0;
    *(a1 + 8) = 0;
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  }

  else
  {
    v7 = *a3;
    v29 = *(a3 + 8);
    v30 = *(a3 + 24);
    v31 = *(a3 + 40);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  *(a1 + 24) = v29;
  *(a1 + 8) = a2;
  *(a1 + 16) = v7;
  *(a1 + 40) = v30;
  *(a1 + 56) = v31;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x100000000;
  v8 = a4;
  *(a1 + 88) = 0;
  *(a1 + 96) = a4;
  result = sub_26148FFB0(a2, v7);
  if (result)
  {
    result = sub_261470964(a2, v7, v7 >> 32);
    v10 = 0;
    *a1 = result;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v24 = result;
    v25 = *(a1 + 36);
    v14 = *(a1 + 56);
    v13 = *(a1 + 60);
    v21 = v12 + 1;
    v22 = v13 + a4 + 1;
    v23 = v13;
    v15 = (v12 - v13);
    for (i = 1; ; ++i)
    {
      v27 = v7;
      v16 = vadd_s32(v11, v7);
      v14 += v25;
      if (v12 < 2 * v14)
      {
        v16 = vadd_s32(*(a1 + 48), v16);
        v14 -= v12;
      }

      v17 = HIDWORD(v16);
      if (!v8)
      {
        break;
      }

      if (!v15)
      {
        v20 = v21;
        goto LABEL_23;
      }

      v18 = v12;
      v26 = v16;
      v19 = v16;
      result = sub_26148FFB0(a2, v16);
      if (!result)
      {
        v20 = v23 + i;
        v16 = v26;
        goto LABEL_23;
      }

      *(a1 + 88) = i;
      result = sub_261470964(a2, v19, v17);
      if (v24 == result)
      {
        v10 = 0;
        v12 = v18;
      }

      else
      {
        if (v10)
        {
          *(a1 + 72) = v27;
          *(a1 + 16) = v26;
          *(a1 + 56) = v14;
          *(a1 + 60) = v23 + i;
          *a1 = v24 ^ 1;
          *(a1 + 80) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_25;
        }

        v12 = v18;
        *(a1 + 64) = v26;
        if (v27 > v19)
        {
          *(a1 + 64) = v27;
        }

        if (SHIDWORD(v26) < SHIDWORD(v27))
        {
          *(a1 + 68) = HIDWORD(v27);
        }

        v10 = 1;
      }

      *(a1 + 80) = v10;
      --v15;
      --v8;
      v7 = v19;
    }

    v20 = v22;
LABEL_23:
    *(a1 + 72) = v27;
    *(a1 + 16) = v16;
    *(a1 + 56) = v14;
    *(a1 + 60) = v20;
  }

  if (!a2)
  {
    return result;
  }

LABEL_25:

  return sub_2614705CC(a2);
}

BOOL sub_26148FFB0(void *a1, unint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  result = 0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = a1[7];
    v5 = -v4;
    v6 = a1[4];
    v7 = v6 & -v4;
    v8 = v4 - 1;
    v9 = a1[2];
    if ((v9 & v8 | v7) > (a2 & 0x7FFFFFFF))
    {
      return (v6 & v8 | v9 & v5) > HIDWORD(a2);
    }
  }

  return result;
}

void sub_261490010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = sub_26148ED6C(*(a1 + 24), *(a1 + 28)) / 2;
  v9 = 0;
  v8 = 0;
  sub_26148F660(&v7, v5, a3, &v9);
  sub_26148F660(&v6, v5, SHIDWORD(a3), &v8);
  if (*a2)
  {
    atomic_fetch_add_explicit((*a2 + 8), 1u, memory_order_relaxed);
  }

  operator new();
}

void sub_261490768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34)
{
  sub_2614908F8(&a25);
  sub_2614705CC(a18);
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26149087C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_261472AF0(result, a4);
  }

  return result;
}

void sub_2614908DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614908F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_2614909D8(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1650;
  *(a1 + 16) = 0;
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 16);
    if (v4)
    {
      sub_2614705CC(v4);
    }
  }

  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  return a1;
}

void sub_261490A54(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 2, 1u, memory_order_relaxed);
  }

  LODWORD(v14) = 0;
  v13 = &unk_2873D18C8;
  v15 = 0;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 2, 1u, memory_order_relaxed);
  }

  v15 = v2;
  v3 = v2[14];
  v4 = -v3;
  v5 = v2[8];
  v6 = v3 - 1;
  v7 = v2[4];
  v8 = v7 & (v3 - 1) | v5 & -v3;
  v9 = v5 & v6 | v7 & v4;
  v16 = v8;
  v17 = v9;
  v18 = (v8 - 30) >> 1;
  v19 = (v8 + 30) >> 1;
  v20 = (v9 + 30) >> 1;
  v21 = (v9 - 30) >> 1;
  if ((v21 & 0x80000000) == 0 && (((v8 - 30) >> 1) & 0x80000000) == 0 && (v9 + 30) >> 1 < v9 && (v8 + 30) >> 1 < v8)
  {
    sub_2614BBC74(&v12, &v13);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  sub_2614EB5DC(exception, "Invalid dimensions WhiteRectangleDetector");
  *exception = &unk_2873D19B0;
  __cxa_throw(exception, &unk_2873D2BE0, sub_261501A54);
}

void sub_26149298C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, atomic_uint *a13, uint64_t a14, atomic_uint *a15, uint64_t a16, atomic_uint *a17, uint64_t a18, _Unwind_Exception *exception_object, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a13)
  {
    sub_2614705CC(a13);
  }

  if (exception_object)
  {
    sub_2614705CC(exception_object);
  }

  if (a17)
  {
    sub_2614705CC(a17);
  }

  if (a15)
  {
    sub_2614705CC(a15);
  }

  sub_2614705CC(a12);
  sub_2614705CC(a12);
  _Unwind_Resume(a1);
}

void sub_2614937D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      sub_261470E48(a4);
    }

    sub_2614709BC();
  }
}

void sub_2614938D4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a1 + 44) = 0;
  while (1)
  {
    v3 = *(*(a2 + 8 * v2) + 48);
    if (*v3)
    {
      v4 = *(a1 + 36);
      if ((*(v3 + ((v4 >> 2) & 0x1FFFFFFFFFFFFFFCLL)) >> ((2 * v4) & 0x1E)))
      {
        break;
      }
    }

    if (++v2 == 4)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_261524120(exception, "could not determine orientation");
      __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
    }
  }

  if (*v3 & 2) == 0 && ((*(v3 + (((2 * v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> (2 * v4 - 1)))
  {
    *(a1 + 44) = 1;
  }

  *(a1 + 40) = v2;
  operator new();
}

void sub_2614940B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, atomic_uint *a15, uint64_t a16, uint64_t a17, atomic_uint *a18)
{
  a13 = &unk_2873D1298;
  if (a15)
  {
    sub_2614705CC(a15);
  }

  a15 = 0;
  if (v20)
  {
    sub_2614705CC(v20);
  }

  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    sub_2614834DC(&a9, exception_ptr);
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614EB5DC(exception, "failed to decode parameter data");
    *exception = &unk_2873D19D8;
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  if (a18)
  {
    sub_2614705CC(a18);
  }

  sub_2614705CC(v18);
  sub_2614705CC(v19);
  sub_2614705CC(v18);
  _Unwind_Resume(a1);
}

void sub_26149423C(uint64_t a1, char a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_26148ED6C(a2 & 1, a3);
  sub_2614C26BC();
  v13 = *a4;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1u, memory_order_relaxed);
  }

  (*(**a5 + 16))();
  (*(**a5 + 24))();
  (*(**a8 + 16))();
  (*(**a8 + 24))();
  (*(**a7 + 16))();
  (*(**a7 + 24))();
  (*(**a6 + 16))();
  (*(**a6 + 24))();
  sub_2614C6060();
}

void sub_261494518(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_2614705CC(v2);
    if (!v1)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  sub_2614705CC(v1);
  if (!v2)
  {
LABEL_4:
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  sub_2614705CC(v2);
  if (!v1)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  sub_2614705CC(v1);
  goto LABEL_6;
}

void sub_261494564()
{
  if (!v0)
  {
    JUMPOUT(0x261494534);
  }

  JUMPOUT(0x26149452CLL);
}

void sub_261494570(float a1, uint64_t a2, uint64_t a3, signed int a4, int a5)
{
  v7 = a1 * 5.0;
  v8 = llroundf(v7);
  v9 = a5;
  v10 = a4;
  if ((v8 & 0x80000000) == 0)
  {
    v13 = llroundf(v7 / a1);
    v14 = -v8;
    v15 = (2 * v8) | 1;
    v16 = 0.0;
    v17 = -v8;
    do
    {
      v18 = sub_261494A10(a3, a4, llroundf(v9 + v17), v13, a1, 0.0);
      if (v18 > v16)
      {
        v16 = v18;
      }

      ++v17;
      --v15;
    }

    while (v15);
    v19 = 2 * v13;
    v20 = (2 * v8) | 1;
    v21 = 0.0;
    do
    {
      v22 = sub_261494A10(a3, llroundf(v10 + v14), a5, v19, 0.0, a1);
      if (v22 > v21)
      {
        v21 = v22;
      }

      ++v14;
      --v20;
    }

    while (v20);
  }

  operator new();
}

BOOL sub_2614949B0(uint64_t a1, signed int a2, int a3)
{
  if (a2 < 0)
  {
    return 0;
  }

  result = 0;
  if ((a3 & 0x80000000) == 0)
  {
    v5 = *(a1 + 16);
    v6 = v5[7];
    v7 = -v6;
    v8 = v5[4];
    v9 = v8 & -v6;
    v10 = v6 - 1;
    v11 = v5[2];
    if ((v11 & v10 | v9) > a2)
    {
      return (v8 & v10 | v11 & v7) > a3;
    }
  }

  return result;
}

float sub_261494A10(uint64_t a1, signed int a2, int a3, int a4, float a5, float a6)
{
  v12 = 0.0;
  if (sub_2614949B0(a1, a2, a3))
  {
    v13 = *(a1 + 16);
    v14 = sub_261470964(v13, a2, a3);
    if (a4 >= 2)
    {
      v15 = v14;
      v16 = a2;
      v17 = a3;
      v18 = a4 - 1;
      v19 = 1;
      v20 = v14;
      while (1)
      {
        v21 = llroundf(v16 + (v19 * a5));
        v22 = llroundf(v17 + (v19 * a6));
        if (!sub_2614949B0(a1, v21, v22))
        {
          break;
        }

        v23 = sub_261470964(v13, v21, v22);
        v24 = v23 - v20;
        if (v23 - v20 < 0)
        {
          v24 = v20 - v23;
        }

        v12 = v12 + v24;
        ++v19;
        v20 = v23;
        if (a4 == v19)
        {
          v25 = a4 - 1;
          goto LABEL_10;
        }
      }

      v25 = v19 - 1;
LABEL_10:
      v26 = 1;
      while (1)
      {
        v27 = llroundf(v16 - (v26 * a5));
        v28 = llroundf(v17 - (v26 * a6));
        if (!sub_2614949B0(a1, v27, v28))
        {
          break;
        }

        v29 = sub_261470964(v13, v27, v28);
        v30 = v29 - v15;
        if (v29 - v15 < 0)
        {
          v30 = v15 - v29;
        }

        v12 = v12 + v30;
        ++v26;
        v15 = v29;
        if (a4 == v26)
        {
          goto LABEL_17;
        }
      }

      v18 = v26 - 1;
LABEL_17:
      if (v18 + v25)
      {
        return v12 / (v18 + v25);
      }

      else
      {
        return 0.0;
      }
    }
  }

  return v12;
}

void sub_261494BB8(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v9 = a4;
  v10 = a7;
  v11 = a3;
  v12 = a6;
  v13 = a6 + a3;
  v14 = a7 + a4;
  do
  {
    v15 = v9;
    v16 = v11;
    if (!sub_2614949B0(a2, v13, v14))
    {
      break;
    }

    v11 += v12;
    v9 += v10;
    v13 += a6;
    v14 += a7;
  }

  while (sub_261470964(*(a2 + 16), v16 + v12, v15 + v10) == a5);
  do
  {
    v17 = v16;
    if (!sub_2614949B0(a2, v16, v15))
    {
      break;
    }

    v18 = sub_261470964(*(a2 + 16), v16, v15);
    v16 += v12;
  }

  while (v18 == a5);
  v19 = v17 - a6;
  do
  {
    if (!sub_2614949B0(a2, v19, v15))
    {
      break;
    }

    v20 = sub_261470964(*(a2 + 16), v19, v15);
    v15 += v10;
  }

  while (v20 == a5);
  operator new();
}

uint64_t sub_261494D3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  }

  v7 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
  }

  v8 = vsub_s32(*(v6 + 12), *(v7 + 12));
  v9 = vmul_s32(v8, v8);
  v10 = vadd_s32(vdup_lane_s32(v9, 1), v9);
  *v10.i32 = sqrtf(v10.u32[0]);
  v27 = v10;
  sub_2614705CC(v7);
  sub_2614705CC(v6);
  v11 = *(*a3 + 12);
  v12 = *(*a2 + 12);
  v13 = *(a1 + 16);
  v28 = v12;
  v14 = sub_261470964(v13, v12.i32[0], v12.i32[1]);
  v16 = *v27.i32;
  v17 = v14;
  v18 = 0.0;
  if (*v27.i32 > 0.0)
  {
    v19 = 0;
    v20 = vdiv_f32(vcvt_f32_s32(vsub_s32(v11, v28)), vdup_lane_s32(v27, 0));
    *&v15 = vcvt_f32_s32(v28);
    v21 = 1;
    do
    {
      *&v15 = vadd_f32(v20, *&v15);
      v29 = v15;
      v22 = sub_261470964(v13, (*&v15 + 0.5), (*(&v15 + 1) + 0.5));
      v16 = *v27.i32;
      v15 = v29;
      v19 += v17 ^ v22;
      v23 = v21++;
    }

    while (*v27.i32 > v23);
    v18 = v19;
  }

  v24 = (v18 / v16);
  if (v24 > 0.1 && v24 < 0.9)
  {
    return 0;
  }

  if (v24 <= 0.1)
  {
    v26 = 1;
  }

  else
  {
    v26 = -1;
  }

  if (v17)
  {
    return v26;
  }

  else
  {
    return -v26;
  }
}

void *sub_261494ED0(void *a1, uint64_t a2)
{
  *a1 = &unk_2873D11E0;
  v3 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_261480F94(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3[2] = *(a2 + 24);
    *v3 = v4;
  }

  *a1 = &unk_2873D19B0;
  return a1;
}

void sub_261494FE0(void *a1)
{
  *a1 = &unk_2873D18C8;
  v1 = a1[2];
  if (v1)
  {
    sub_2614705CC(v1);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_26149504C(void *a1)
{
  *a1 = &unk_2873D18C8;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  return a1;
}

uint64_t MRCSegmentationMaskCreateForSampleUsingNeuralNetwork(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_27FEB41E0 != -1)
  {
    dispatch_once(&qword_27FEB41E0, &unk_2873D0760);
  }

  v4 = qword_27FEB41D8;
  if (os_log_type_enabled(qword_27FEB41D8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v6[0]) = 0;
    _os_log_error_impl(&dword_26146F000, v4, OS_LOG_TYPE_ERROR, "MRCSegmentationMaskCreateForSampleUsingNeuralNetwork is obsolete", v6, 2u);
    if (!a3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    sub_261500FD8(v6, -4001, @"MRCSegmentationMaskCreateForSampleUsingNeuralNetwork is obsolete");
    sub_261501518(&v7, v6);
    *a3 = atomic_exchange(&v7, 0);
    sub_261476C54(&v7);
    sub_261501098(v6);
  }

  return 0;
}

uint64_t MRCRegionGetTypeID()
{
  if (qword_280CB34F8[0] != -1)
  {
    dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
  }

  return qword_280CB35F0;
}

unint64_t MRCRegionCreate(__int128 *a1, __int128 *a2, const void *a3, double a4, float a5)
{
  if (!a1)
  {
    _os_assumes_log();
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = MEMORY[0x277CBF2C0];
  }

  if (qword_280CB34F8[0] != -1)
  {
    dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
  }

  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (Instance)
  {
    v13 = CFGetTypeID(Instance);
    if (qword_280CB34F8[0] != -1)
    {
      dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
    }

    if (v13 != qword_280CB35F0)
    {
      _os_assumes_log();
    }

    v14 = *v10;
    v15 = v10[2];
    *(v12 + 96) = v10[1];
    *(v12 + 112) = v15;
    *(v12 + 80) = v14;
    *(v12 + 128) = a4;
    if (a3)
    {
      v16 = CFRetain(a3);
    }

    else
    {
      _os_assumes_log();
      v16 = 0;
    }

    *(v12 + 136) = v16;
    *(v12 + 144) = a5;
    if (a5 < 0.0 || a5 > 1.0)
    {
      _os_assumes_log();
    }

    v17 = *a1;
    v18 = a1[1];
    v19 = a1[3];
    *(v12 + 48) = a1[2];
    *(v12 + 64) = v19;
    *(v12 + 16) = v17;
    *(v12 + 32) = v18;
    v20 = CFGetTypeID(v12);
    if (qword_280CB34F8[0] != -1)
    {
      dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
    }

    if (v20 != qword_280CB35F0)
    {
      _os_assumes_log();
    }
  }

  v24 = v12;
  v21 = atomic_exchange(&v24, 0);
  v22 = atomic_exchange(&v24, 0);
  if (v22)
  {
    CFRelease(v22);
  }

  return v21;
}

__n128 MRCRegionGetCornerPoints(__n128 *cf, __n128 *a2)
{
  if (a2)
  {
    if (!cf)
    {
      goto LABEL_7;
    }
  }

  else
  {
    _os_assumes_log();
    if (!cf)
    {
      goto LABEL_7;
    }
  }

  v4 = CFGetTypeID(cf);
  if (qword_280CB34F8[0] != -1)
  {
    dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
  }

  if (v4 != qword_280CB35F0)
  {
    _os_assumes_log();
  }

LABEL_7:
  result = cf[1];
  v6 = cf[2];
  v7 = cf[4];
  a2[2] = cf[3];
  a2[3] = v7;
  *a2 = result;
  a2[1] = v6;
  return result;
}

__n128 MRCRegionGetTransform@<Q0>(__n128 *cf@<X0>, __n128 *a2@<X8>)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (qword_280CB34F8[0] != -1)
    {
      dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
    }

    if (v4 != qword_280CB35F0)
    {
      _os_assumes_log();
    }
  }

  v5 = cf[6];
  *a2 = cf[5];
  a2[1] = v5;
  result = cf[7];
  a2[2] = result;
  return result;
}

double MRCRegionGetOrientation(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F8[0] != -1)
    {
      dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
    }

    if (v2 != qword_280CB35F0)
    {
      _os_assumes_log();
    }
  }

  return *(cf + 16);
}

unint64_t MRCRegionGetSymbology(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F8[0] != -1)
    {
      dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
    }

    if (v2 != qword_280CB35F0)
    {
      _os_assumes_log();
    }
  }

  return atomic_load_explicit(cf + 17, memory_order_acquire);
}

float MRCRegionGetConfidence(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB34F8[0] != -1)
    {
      dispatch_once_f(qword_280CB34F8, 0, sub_26147B35C);
    }

    if (v2 != qword_280CB35F0)
    {
      _os_assumes_log();
    }
  }

  return *(cf + 36);
}

CGAffineTransform *sub_26149587C(CGAffineTransform *result, _OWORD *a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7, char a8)
{
  v9 = result;
  if (a8)
  {
    if ((a6 & 1) == 0)
    {
      a5 = a4;
    }

    v12 = *a5 + 216 * a7;
    memset(&v21, 0, sizeof(v21));
    Width = CGRectGetWidth(*(v12 + 16));
    v14 = Width / CGRectGetWidth(*(a3 + 8));
    Height = CGRectGetHeight(*(v12 + 16));
    v16 = CGRectGetHeight(*(a3 + 8));
    CGAffineTransformMakeScale(&v21, v14, Height / v16);
    v17 = a2[5];
    *&t1.a = a2[4];
    *&t1.c = v17;
    *&t1.tx = a2[6];
    v19 = v21;
    return CGAffineTransformConcat(v9, &t1, &v19);
  }

  else
  {
    v18 = a2[5];
    *&result->a = a2[4];
    *&result->c = v18;
    *&result->tx = a2[6];
  }

  return result;
}

double sub_261495974(uint64_t a1, float a2)
{
  v2 = 0;
  v3 = vdupq_n_s64(0x41DFFFFFFFC00000uLL);
  v4 = vdupq_n_s64(0xC1E0000000000000);
  do
  {
    v5 = *(a1 + v2);
    v3 = vbslq_s8(vcgtq_f64(v3, v5), v5, v3);
    v4 = vbslq_s8(vcgtq_f64(v5, v4), v5, v4);
    v2 += 16;
  }

  while (v2 != 64);
  *&result = *&vsubq_f64(v3, vmulq_n_f64(vsubq_f64(v4, v3), a2));
  __asm { FMOV            V1.2D, #2.0 }

  return result;
}

atomic_ullong *sub_2614959D0(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFArrayRef MRCSymbologyCopySupportedSymbologies()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_280CB3E50 != -1)
  {
    dispatch_once_f(&qword_280CB3E50, 0, sub_261495A80);
  }

  explicit = atomic_load_explicit(qword_280CB3E58, memory_order_acquire);

  return CFArrayCreateCopy(v0, explicit);
}

void sub_261495A80()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Aztec");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code39");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code39_checksum");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code39_fullAscii");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code39_fullAscii_checksum");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code93");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code93i");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code128");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"DataMatrix");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"EAN8");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"EAN13");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"I2of5");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"I2of5_checksum");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ITF14");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"PDF417");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"QR");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"UPCE");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"MSIPlessey");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Codabar");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"GS1DataBar");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"GS1DataBarExpanded");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"GS1DataBarLimited");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"MicroQR");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"MicroPDF417");
  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"AppClipCode");
  while (1)
  {
    explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
    v3.length = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire));
    v3.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(explicit, v3, @"AppClipCode");
    if (FirstIndexOfValue == -1)
    {
      break;
    }

    CFArrayRemoveValueAtIndex(atomic_load_explicit(&Mutable, memory_order_acquire), FirstIndexOfValue);
  }

  operator new();
}

void sub_261495D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2667045D0](v2, 0x60C4044C4A2DFLL);
  sub_26147743C(va);
  _Unwind_Resume(a1);
}

CFArrayRef MRCSymbologyCopySupported1DSymbologies()
{
  v0 = *MEMORY[0x277CBECE8];
  explicit = atomic_load_explicit(sub_261495D98(0), memory_order_acquire);

  return CFArrayCreateCopy(v0, explicit);
}

uint64_t *sub_261495D98(int a1)
{
  os_unfair_lock_lock_with_options();
  if (!qword_27FEB4118)
  {
    operator new();
  }

  v2 = *(qword_27FEB4118 + 8);
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a1;
    if (v2 <= a1)
    {
      v4 = a1 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a1;
  }

  v5 = *(*qword_27FEB4118 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_19:
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (a1 == 1)
    {
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Aztec");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"DataMatrix");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"QR");
      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      v10 = @"MicroQR";
    }

    else if (a1)
    {
      if (a1 == 2)
      {
        CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"PDF417");
        CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"MicroPDF417");
      }

      if (a1 != 3)
      {
LABEL_28:
        CFArrayCreateCopy(v8, atomic_load_explicit(&Mutable, memory_order_acquire));
        operator new();
      }

      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      v10 = @"AppClipCode";
    }

    else
    {
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code39");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code39_checksum");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code39_fullAscii");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code39_fullAscii_checksum");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code93");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code93i");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Code128");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"EAN8");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"EAN13");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"I2of5");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"I2of5_checksum");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ITF14");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"UPCE");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"MSIPlessey");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Codabar");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"GS1DataBar");
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"GS1DataBarExpanded");
      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      v10 = @"GS1DataBarLimited";
    }

    CFArrayAppendValue(explicit, v10);
    goto LABEL_28;
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a1)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_19;
    }

LABEL_18:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  if (*(v6 + 4) != a1)
  {
    goto LABEL_18;
  }

  os_unfair_lock_unlock(&unk_27FEB4120);
  return v6 + 3;
}

uint64_t sub_261496538(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_261476A0C(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

CFArrayRef MRCSymbologyCopySupported2DSymbologies()
{
  v0 = *MEMORY[0x277CBECE8];
  explicit = atomic_load_explicit(sub_261495D98(1), memory_order_acquire);

  return CFArrayCreateCopy(v0, explicit);
}

CFStringRef MRCSymbologyCopyDisplayName(CFTypeRef cf)
{
  if (qword_27FEB4110 != -1)
  {
    dispatch_once_f(&qword_27FEB4110, 0, sub_26149678C);
  }

  v2 = qword_27FEB4108;
  if (cf)
  {
    v3 = CFRetain(cf);
  }

  else
  {
    v3 = 0;
  }

  v17 = v3;
  explicit = atomic_load_explicit(&v17, memory_order_acquire);
  if (explicit)
  {
    v5 = CFHash(explicit);
  }

  else
  {
    v5 = 662607004;
  }

  v6 = v2[1];
  if (!*&v6)
  {
    goto LABEL_28;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*v2 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_28:
    sub_26148E848(&v17);
    return 0;
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_28;
    }

LABEL_27:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_28;
    }
  }

  v13 = atomic_load_explicit(&v17, memory_order_acquire);
  v14 = atomic_load_explicit(v11 + 2, memory_order_acquire);
  if (v14 != v13)
  {
    v15 = !v13 || v14 == 0;
    if (v15 || !CFEqual(v14, v13))
    {
      goto LABEL_27;
    }
  }

  sub_26148E848(&v17);
  return CFStringCreateCopy(*MEMORY[0x277CBECE8], atomic_load_explicit(v11 + 3, memory_order_acquire));
}

void sub_261496774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26148E848(va);
  _Unwind_Resume(a1);
}

void sub_2614970B4(char a1, atomic_ullong *__p)
{
  if (a1)
  {
    sub_26148E848(__p + 3);
    sub_26148E848(__p + 2);
  }

  operator delete(__p);
}

CFSetRef sub_2614970FC()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = xmmword_279AD8B68;
  v1[1] = *&off_279AD8B78;
  result = CFSetCreate(*MEMORY[0x277CBECE8], v1, 4, MEMORY[0x277CBF158]);
  qword_280CB3E48 = result;
  return result;
}

unint64_t sub_26149717C(atomic_ullong *a1)
{
  if (qword_280CB3E70 != -1)
  {
    dispatch_once_f(&qword_280CB3E70, 0, sub_261497218);
  }

  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (!explicit)
  {
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(qword_280CB3E78, atomic_load_explicit(a1, memory_order_acquire));
  if (!Value)
  {
    explicit = 0;
LABEL_7:
    v5 = 0;
    v4 = 0;
    return explicit | v4 | v5;
  }

  v4 = ((Value >> 4) - 1) & 0xFFFFFF00;
  v5 = ((Value >> 4) - 1);
  explicit = 0x100000000;
  return explicit | v4 | v5;
}

CFDictionaryRef sub_261497218()
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = xmmword_279AD8C48;
  v30 = *&off_279AD8C58;
  v31 = @"PseudoExternal";
  v25 = xmmword_279AD8C08;
  v26 = *&off_279AD8C18;
  v27 = xmmword_279AD8C28;
  v28 = *&off_279AD8C38;
  v21 = xmmword_279AD8BC8;
  v22 = *&off_279AD8BD8;
  v23 = xmmword_279AD8BE8;
  v24 = *&off_279AD8BF8;
  *keys = xmmword_279AD8B88;
  v18 = *&off_279AD8B98;
  v19 = xmmword_279AD8BA8;
  v20 = *&off_279AD8BB8;
  v12 = xmmword_261566738;
  v13 = unk_261566748;
  v14 = xmmword_261566758;
  v15 = unk_261566768;
  v8 = xmmword_2615666F8;
  v9 = unk_261566708;
  v10 = xmmword_261566718;
  v11 = unk_261566728;
  v4 = xmmword_2615666B8;
  v5 = unk_2615666C8;
  v6 = xmmword_2615666D8;
  v7 = unk_2615666E8;
  *values = xmmword_261566698;
  v3 = unk_2615666A8;
  v16 = 64;
  memset(&v1, 0, sizeof(v1));
  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 29, MEMORY[0x277CBF138], &v1);
  qword_280CB3E78 = result;
  return result;
}

unint64_t sub_261497334(atomic_ullong *a1)
{
  if (qword_280CB3E80 != -1)
  {
    dispatch_once_f(&qword_280CB3E80, 0, sub_2614973D0);
  }

  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (!explicit)
  {
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(qword_280CB3E88, atomic_load_explicit(a1, memory_order_acquire));
  if (!Value)
  {
    explicit = 0;
LABEL_7:
    v5 = 0;
    v4 = 0;
    return explicit | v4 | v5;
  }

  v4 = ((Value >> 4) - 1) & 0xFFFFFF00;
  v5 = ((Value >> 4) - 1);
  explicit = 0x100000000;
  return explicit | v4 | v5;
}

CFDictionaryRef sub_2614973D0()
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = xmmword_279AD8D10;
  v26 = off_279AD8D20;
  v27 = @"AppClipCode";
  v21 = xmmword_279AD8CD0;
  v22 = *&off_279AD8CE0;
  v23 = xmmword_279AD8CF0;
  v24 = *&off_279AD8D00;
  v17 = xmmword_279AD8C90;
  v18 = *&off_279AD8CA0;
  v19 = xmmword_279AD8CB0;
  v20 = *&off_279AD8CC0;
  *keys = xmmword_279AD8C70;
  v16 = *&off_279AD8C80;
  v10 = xmmword_261566800;
  v11 = unk_261566810;
  v12 = xmmword_261566820;
  v13 = unk_261566830;
  v6 = xmmword_2615667C0;
  v7 = unk_2615667D0;
  v8 = xmmword_2615667E0;
  v9 = unk_2615667F0;
  *values = xmmword_261566780;
  v3 = unk_261566790;
  v4 = xmmword_2615667A0;
  v5 = unk_2615667B0;
  v14 = 80;
  memset(&v1, 0, sizeof(v1));
  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 25, MEMORY[0x277CBF138], &v1);
  qword_280CB3E88 = result;
  return result;
}

BOOL sub_261497B6C(atomic_ullong *a1, int a2)
{
  if (qword_280CB3E40 != -1)
  {
    dispatch_once_f(&qword_280CB3E40, 0, sub_2614970FC);
  }

  if (atomic_load_explicit(a1, memory_order_acquire) && CFSetContainsValue(qword_280CB3E48, atomic_load_explicit(a1, memory_order_acquire)))
  {
    v4 = sub_26149717C(a1);
    if (qword_280CB3E60 != -1)
    {
      dispatch_once_f(&qword_280CB3E60, 0, sub_2614974DC);
    }

    v5 = *(qword_280CB3E68 + 8);
    if (v5)
    {
      v6 = v4 ^ a2;
      v7 = vcnt_s8(v5);
      v7.i16[0] = vaddlv_u8(v7);
      if (v7.u32[0] > 1uLL)
      {
        v8 = v4 ^ a2;
        if (*&v5 <= v6)
        {
          v8 = v6 % *&v5;
        }
      }

      else
      {
        v8 = (*&v5 - 1) & v6;
      }

      v12 = *(*qword_280CB3E68 + 8 * v8);
      if (v12)
      {
        for (i = *v12; i; i = *i)
        {
          v14 = i[1];
          if (v14 == v6)
          {
            if (*(i + 4) == v4 && *(i + 5) == a2)
            {
              return 1;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v14 >= *&v5)
              {
                v14 %= *&v5;
              }
            }

            else
            {
              v14 &= *&v5 - 1;
            }

            if (v14 != v8)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  else
  {
    v9 = sub_261497334(a1);
    return HIDWORD(v9) && v9 == a2;
  }
}

uint64_t sub_261497D08(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1248;
  *(a1 + 16) = 0;
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 16);
    if (v4)
    {
      sub_2614705CC(v4);
    }
  }

  *(a1 + 16) = v3;
  return a1;
}

double sub_261497D74@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  return result;
}

void sub_261497DB4(void *a1)
{
  *a1 = &unk_2873D1AE8;
  v1 = a1[2];
  if (v1)
  {
    sub_2614705CC(v1);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_261497E20(void *a1)
{
  *a1 = &unk_2873D1AE8;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  return a1;
}

void sub_261497E6C(uint64_t a1@<X1>, unsigned __int8 **a2@<X2>, uint64_t a3@<X8>)
{
  v157 = *MEMORY[0x277D85DE8];
  __p = 0;
  v129 = 0;
  v130 = 0;
  sub_261498AEC(&__p, 0x2FuLL);
  v7 = *a2;
  v6 = a2[1];
  v8 = *a2;
  if (v6 != *a2)
  {
    while (*v8)
    {
      if (++v8 == v6)
      {
        v8 = a2[1];
        break;
      }
    }
  }

  if (v6 == v8)
  {
    *a3 = 1;
    *(a3 + 112) = 0;
    *(a3 + 104) = 0;
    *(a3 + 4) = 0u;
    *(a3 + 20) = 0u;
    *(a3 + 36) = 0u;
    *(a3 + 52) = 0u;
    *(a3 + 68) = 0u;
    *(a3 + 84) = 0;
    *(a3 + 96) = a3 + 104;
    *(a3 + 120) = 0;
    *(a3 + 124) = 0;
    *(a3 + 128) = 0;
    v10 = __p;
    if (!__p)
    {
      return;
    }

    goto LABEL_85;
  }

  if (v8 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v11 = *v7++;
      v9 += v11;
    }

    while (v7 != v8);
  }

  while (1)
  {
    if (v6 == v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8;
      while (*v12 != (*v8 == 0))
      {
        if (++v12 == v6)
        {
          v12 = v6;
          break;
        }
      }
    }

    v13 = v12 - v8;
    if (v6 == v12)
    {
      break;
    }

    v135[0] = v13;
    sub_261498B78(&__p, v135);
    v6 = a2[1];
    v8 = v12;
  }

  v135[0] = v13;
  sub_261498B78(&__p, v135);
  v10 = __p;
  if ((v129 - __p) < 0xBC)
  {
LABEL_84:
    *a3 = 1;
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
    *(a3 + 4) = 0u;
    *(a3 + 20) = 0u;
    *(a3 + 36) = 0u;
    *(a3 + 52) = 0u;
    *(a3 + 68) = 0u;
    *(a3 + 84) = 0;
    *(a3 + 96) = a3 + 104;
    *(a3 + 120) = 0;
    *(a3 + 124) = 0;
    *(a3 + 128) = 0;
    if (!v10)
    {
      return;
    }

    goto LABEL_85;
  }

  v14 = 0;
  v15 = &v136;
  v16 = v139;
  v17 = &v137;
  v18 = &v147;
  v19 = (v129 - __p) >> 2;
  v20 = v141;
  v21 = v155;
  v22 = &v135[1];
  while (1)
  {
    v23 = &v10[4 * v14];
    v24 = v23[1];
    v26 = v23[44];
    v25 = v23[45];
    v27 = v24;
    if (*v23 < v24 && (vabds_f32(*v23, v27) / (v24 + *v23)) >= 0.3)
    {
      goto LABEL_83;
    }

    v28 = v23[46];
    if ((vabds_f32(v28, v25) / (v28 + v25)) >= 0.3 && v28 < v25)
    {
      goto LABEL_83;
    }

    v30 = v26;
    if ((vabds_f32(v25, v26) / (v26 + v25)) >= 0.3)
    {
      goto LABEL_83;
    }

    v31 = 0;
    v32 = v23 + 2;
    v33 = v23 + 2;
    do
    {
      v34 = *v33++;
      v31 += v34;
    }

    while (v33 != v23 + 16);
    v35 = 0;
    v36 = v23 + 16;
    do
    {
      v37 = *v36++;
      v35 += v37;
    }

    while (v36 != v23 + 30);
    v38 = 0;
    v39 = v23 + 30;
    do
    {
      v40 = *v39++;
      v38 += v40;
    }

    while (v39 != v23 + 44);
    v41 = v31 / 26.0;
    if ((vabds_f32(v27, v41) / (v41 + v27)) >= 0.3)
    {
      goto LABEL_83;
    }

    v42 = v35 / 18.0;
    if ((vabds_f32(v41, v42) / (v41 + v42)) >= 0.3)
    {
      goto LABEL_83;
    }

    v43 = v38 / 26.0;
    if ((vabds_f32(v42, v43) / (v42 + v43)) >= 0.3 || (vabds_f32(v43, v30) / (v43 + v30)) >= 0.3)
    {
      goto LABEL_83;
    }

    v127 = a1;
    if (v23 + 44 != v32)
    {
      v44 = v18;
      v119 = v16;
      v121 = v22;
      v45 = v15;
      v123 = v21;
      v125 = v17;
      v46 = v20;
      memmove(__dst, v32, 0xA8uLL);
      v22 = v121;
      v21 = v123;
      v20 = v46;
      v17 = v125;
      v15 = v45;
      v16 = v119;
      v18 = v44;
    }

    v47 = 0;
    for (i = 0; i != 56; i += 4)
    {
      v47 += *&__dst[i];
    }

    v49 = 0;
    for (j = 56; j != 112; j += 4)
    {
      v49 += *&__dst[j];
    }

    v51 = 0;
    do
    {
      v51 += *&__dst[j];
      j += 4;
    }

    while (j != 168);
    v52 = v49 / 18.0;
    v53 = v154;
    v54 = (v154 + v153);
    v55 = (v52 * 2.5) >= v54 && (v52 * 1.5) <= v54;
    if (v55 && (v52 * 2.5) <= (v152 + v151))
    {
      v57 = 0;
      v140 = 1;
      while (v57 != -13)
      {
        v58 = (roundf((*(&v153 + v57 * 4) + v21[v57 - 1]) / v52) - *(v20 + v57 * 4 - 4));
        v139[v57 + 2] = v58;
        --v57;
        if (v58 < 1)
        {
          goto LABEL_82;
        }
      }

      v116 = v53;
      v59 = 0;
      v60 = 0;
      v61 = v135;
      do
      {
        v62 = *v61;
        v61 += 2;
        v156.__r_.__value_.__s.__data_[v59] = v62;
        v60 += v62;
        ++v59;
      }

      while (v59 != 6);
      if (v60 == 8)
      {
        v124 = v21;
        v126 = v17;
        v117 = v20;
        v118 = v18;
        v120 = v15;
        v122 = v22;
        v63 = sub_26150A8EC(&v156, 6u, 3, 1);
        v22 = v122;
        v64 = 0;
        v65 = 0;
        v66 = v122;
        do
        {
          v67 = *v66;
          v66 += 2;
          v156.__r_.__value_.__s.__data_[v64] = v67;
          v65 += v67;
          ++v64;
        }

        while (v64 != 6);
        v18 = v118;
        v15 = v120;
        v21 = v124;
        v17 = v126;
        v20 = v117;
        if (v65 == 8)
        {
          v114 = v63;
          v68 = sub_26150A8EC(&v156, 6u, 3, 0);
          v22 = v122;
          v21 = v124;
          v20 = v117;
          v18 = v118;
          v17 = v126;
          v15 = v120;
          if ((dword_2615668DC[21 * v114 + v68] & 0x80000000) == 0)
          {
            v115 = dword_2615668DC[21 * v114 + v68];
            v140 = (roundf((v150 + v149) / v52) - v135[0]);
            v69 = 12;
            while (v69 != -1)
            {
              v70 = (roundf((*&__dst[v69 * 4] + *&__dst[v69 * 4 + 4]) / (v47 / 26.0)) - v135[v69 + 1]);
              v135[v69--] = v70;
              if (v70 < 1)
              {
                goto LABEL_82;
              }
            }

            v71 = sub_261498C50(v135);
            v22 = v122;
            v21 = v124;
            v20 = v117;
            v18 = v118;
            v17 = v126;
            v15 = v120;
            if (HIDWORD(v71))
            {
              v72 = 0;
              for (k = 0; k != 14; ++k)
              {
                v72 = (v72 + v135[k] * byte_2615668BE[k]) % 89;
              }

              v74 = 0;
              v75 = v155[0];
              v76 = (roundf((v155[0] + v116) / v52) + -1.0);
              v135[0] = v76;
              while (v74 != 13)
              {
                v77 = v155[v74 + 1];
                v76 = (roundf((v77 + v75) / (v51 / 26.0)) - v76);
                v135[++v74] = v76;
                v75 = v77;
                if (v76 <= 0)
                {
                  goto LABEL_82;
                }
              }

              v78 = v71;
              v79 = sub_261498C50(v135);
              v22 = v122;
              v21 = v124;
              v20 = v117;
              v18 = v118;
              v17 = v126;
              v15 = v120;
              if (HIDWORD(v79))
              {
                v80 = v78;
                for (m = 0; m != 14; ++m)
                {
                  v72 = (v72 + v135[m] * byte_2615668CC[m]) % 89;
                }

                if (v115 == v72)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

LABEL_82:
    a1 = v127;
LABEL_83:
    v82 = v14 + 49;
    v14 += 2;
    if (v82 > v19)
    {
      goto LABEL_84;
    }
  }

  v83 = &v10[4 * v14];
  v84 = v9;
  v85 = v79 + 2013571 * v80;
  v86 = v85 > 0x1D52F517BD7;
  if (v85 <= 0x1D52F517BD7)
  {
    v87 = v79 + 2013571 * v80;
  }

  else
  {
    v87 = v85 - 0x1D52F517BD8;
  }

  sub_261498DCC(v135);
  v88 = v136;
  *(v16 + *(v136 - 3)) = 13;
  v89 = v120 + *(v88 - 3);
  if (*(v89 + 144) == -1)
  {
    std::ios_base::getloc((v120 + *(v88 - 3)));
    v90 = std::locale::use_facet(&v156, MEMORY[0x277D82688]);
    (v90->__vftable[3].__on_zero_shared)(v90, 32);
    std::locale::~locale(&v156);
  }

  *(v89 + 144) = 48;
  MEMORY[0x266704470](v120, v87);
  if ((v146 & 0x10) != 0)
  {
    v92 = v145;
    if (v145 < v142)
    {
      v145 = v142;
      v92 = v142;
    }

    v93 = v141[1];
  }

  else
  {
    if ((v146 & 8) == 0)
    {
      v91 = 0;
      *(&v156.__r_.__value_.__s + 23) = 0;
      goto LABEL_108;
    }

    v93 = *v139;
    v92 = v141[0];
  }

  v94 = v92 - v93;
  v91 = (v92 - v93) >> 2;
  if (v91 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  if (v91 >= 5)
  {
    if ((v91 | 1) == 5)
    {
      v95 = 7;
    }

    else
    {
      v95 = (v91 | 1) + 1;
    }

    sub_261472B30(v95);
  }

  *(&v156.__r_.__value_.__s + 23) = v94 >> 2;
  if (v92 == v93)
  {
    v91 = 0;
  }

  else
  {
    memmove(&v156, v93, v94);
  }

LABEL_108:
  v156.__r_.__value_.__s.__data_[v91] = 0;
  size = v156.__r_.__value_.__l.__size_;
  if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v156.__r_.__value_.__r.__words[2]);
  }

  if (size)
  {
    v97 = 0;
    v98 = 0;
    v99 = &v156;
    if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v99 = v156.__r_.__value_.__r.__words[0];
    }

    do
    {
      v100 = v99->__r_.__value_.__s.__data_[v98] - 48;
      if ((v98 & 1) == 0)
      {
        v100 *= 3;
      }

      v97 += v100;
      ++v98;
    }

    while (size != v98);
    v101 = v97 % 10;
    if (v101 > 0)
    {
      v101 = 10 - v101;
    }

    v102 = v101 + 48;
  }

  else
  {
    v102 = 48;
  }

  std::wstring::append(&v156, 1uLL, v102);
  sub_261498FB0(&v131, &v156);
  v103 = v131;
  v134[0] = *v132;
  *(v134 + 7) = *&v132[7];
  v104 = v133;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
  }

  *v135 = &unk_2873D09D8;
  v147 = &unk_2873D0A28;
  v136 = &unk_2873D0A00;
  v137 = &unk_2873D0A48;
  if (v144 < 0)
  {
    operator delete(v143);
  }

  v137 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(&v138);
  std::wostream::~wostream();
  std::wistream::~wistream();
  MEMORY[0x266704560](v118);
  v105 = v84;
  if (v83 + 4 != v10)
  {
    v105 = v84;
    v106 = v10;
    do
    {
      v107 = *v106;
      v106 += 4;
      v105 += v107;
    }

    while (v106 != v83 + 4);
  }

  if (v83 + 184 != v10)
  {
    v108 = v10;
    do
    {
      v109 = *v108;
      v108 += 4;
      v84 += v109;
    }

    while (v108 != v83 + 184);
  }

  v110 = v105 | (v127 << 32);
  v111 = v84 | (v127 << 32);
  *a3 = 0x2000000000000;
  v112 = v134[0];
  *(a3 + 8) = v103;
  *(a3 + 16) = v112;
  *(a3 + 23) = *(v134 + 7);
  *(a3 + 31) = v104;
  *(a3 + 32) = v110;
  *(a3 + 40) = v111;
  *(a3 + 48) = v111;
  *(a3 + 56) = v110;
  *(a3 + 112) = 0;
  *(a3 + 104) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 64) = 0;
  *(a3 + 96) = a3 + 104;
  *(a3 + 120) = 0;
  *(a3 + 88) = 0;
  v113 = (v84 - v105) / 73.0;
  *(a3 + 124) = v113;
  *(a3 + 128) = v113;
  *(a3 + 120) = v86;
  if (v10)
  {
LABEL_85:
    operator delete(v10);
  }
}

void sub_261498A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_2614990AC(&a26);
  MEMORY[0x266704560](a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_261498AEC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    sub_261472B30(a2);
  }

  return result;
}

void sub_261498B78(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_2614709BC();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_261472B30(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_261498C50(int *a1)
{
  v2 = 0;
  v3 = 0;
  v24 = *MEMORY[0x277D85DE8];
  v4 = a1;
  do
  {
    v5 = *v4;
    v4 += 2;
    v23[v2] = v5;
    v3 += v5;
    ++v2;
  }

  while (v2 != 7);
  if ((v3 - 20) < 0xFFFFFFF3 || (v3 & 1) == 0)
  {
    goto LABEL_17;
  }

  v7 = 0;
  while (1)
  {
    v8 = (&unk_261566FC0 + v7);
    if (*(&unk_261566FC0 + v7 + 4) == v3)
    {
      break;
    }

    v7 += 28;
    if (v7 == 196)
    {
      goto LABEL_17;
    }
  }

  v9 = sub_26150A8EC(v23, 7u, v8[3], 1);
  v10 = 0;
  v11 = 0;
  v12 = v8[6];
  v13 = *v8;
  v14 = a1 + 1;
  do
  {
    v15 = *v14;
    v14 += 2;
    v23[v10] = v15;
    v11 += v15;
    ++v10;
  }

  while (v10 != 7);
  if (v11 != v8[2])
  {
LABEL_17:
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v16 = 0;
    v17 = v13 + v12 * v9;
    while (v23[v16] != 1)
    {
      if (++v16 == 7)
      {
        goto LABEL_17;
      }
    }

    v22 = sub_26150A8EC(v23, 7u, v8[4], 0);
    v19 = (v17 + v22) & 0xFFFFFF00;
    v18 = (v17 + v22);
    v20 = 0x100000000;
  }

  return v20 | v19 | v18;
}

uint64_t sub_261498DCC(uint64_t a1)
{
  *(a1 + 176) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_2873D0A00;
  *a1 = &unk_2873D3110;
  *(a1 + 128) = &unk_2873D3138;
  std::ios_base::init((a1 + 128), (a1 + 24));
  *(a1 + 264) = 0;
  *(a1 + 272) = -1;
  *a1 = &unk_2873D09D8;
  *(a1 + 128) = &unk_2873D0A28;
  *(a1 + 16) = &unk_2873D0A00;
  *(a1 + 24) = MEMORY[0x277D82870] + 16;
  MEMORY[0x266704500](a1 + 32);
  *(a1 + 88) = 0;
  v2 = a1 + 88;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = &unk_2873D0A48;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 112) = a1 + 88;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  std::wstring::resize((a1 + 88), 4uLL, 0);
  v3 = *(a1 + 111);
  if (v3 < 0)
  {
    v3 = *(a1 + 96);
  }

  *(a1 + 64) = v2;
  *(a1 + 72) = v2;
  *(a1 + 80) = v2 + 4 * v3;
  return a1;
}

void sub_261498F58(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 24) = v3;
  std::locale::~locale((v1 + 32));
  std::wostream::~wostream();
  std::wistream::~wistream();
  MEMORY[0x266704560](v2);
  _Unwind_Resume(a1);
}

void *sub_261498FB0(void *result, void *a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = v3 + 2;
  if ((v3 + 2) >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  if (v4 >= 5)
  {
    if ((v4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (v4 | 1) + 1;
    }

    if (!(v6 >> 62))
    {
      operator new();
    }

    sub_2614709D4();
  }

  result[2] = 0;
  result[1] = 0;
  v5 = result + 1;
  *(result + 23) = v4;
  *result = 0x3100000030;
  if (v3)
  {
    if ((v2 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    result = memmove(v5, a2, 4 * v3);
  }

  *(v5 + v3) = 0;
  return result;
}

uint64_t sub_2614990AC(uint64_t a1)
{
  *a1 = &unk_2873D09D8;
  *(a1 + 128) = &unk_2873D0A28;
  *(a1 + 16) = &unk_2873D0A00;
  *(a1 + 24) = &unk_2873D0A48;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 32));
  std::wostream::~wostream();

  return std::wistream::~wistream();
}

uint64_t sub_2614991B0(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v7 != v6)
  {
    v8 = *(a1 + 88);
    goto LABEL_13;
  }

  if ((*(a1 + 96) & 0x10) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 88);
  v11 = a1 + 64;
  std::wstring::push_back((a1 + 64), 0);
  if (*(a1 + 87) < 0)
  {
    v12 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v12 = 4;
  }

  std::wstring::resize((a1 + 64), v12, 0);
  v13 = *(a1 + 87);
  if (v13 < 0)
  {
    v11 = *(a1 + 64);
    v13 = *(a1 + 72);
  }

  v6 = (v11 + 4 * v13);
  v7 = (v11 + 4 * ((v7 - v9) >> 2));
  *(a1 + 40) = v11;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  v8 = v11 + v10 - v9;
LABEL_13:
  if ((v7 + 1) >= v8)
  {
    v8 = (v7 + 1);
  }

  *(a1 + 88) = v8;
  if ((*(a1 + 96) & 8) != 0)
  {
    v14 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v14 = *v14;
    }

    *(a1 + 16) = v14;
    *(a1 + 24) = v14 + v4 - v5;
    *(a1 + 32) = v8;
  }

  if (v7 != v6)
  {
    *(a1 + 48) = v7 + 1;
    *v7 = v2;
    return v2;
  }

  v16 = *(*a1 + 104);

  return v16(a1, v2);
}

void sub_26149932C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x261499204);
}

uint64_t sub_261499338(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 48);
  if (v2 < v3)
  {
    *(a1 + 88) = v3;
    v2 = v3;
  }

  v4 = *(a1 + 24);
  if (*(a1 + 16) < v4)
  {
    if (a2 == -1)
    {
      a2 = 0;
      v5 = v4 - 4;
      goto LABEL_10;
    }

    if ((*(a1 + 96) & 0x10) != 0 || *(v4 - 4) == a2)
    {
      *(v4 - 4) = a2;
      v5 = v4 - 4;
LABEL_10:
      *(a1 + 24) = v5;
      *(a1 + 32) = v2;
      return a2;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_26149939C(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 48);
  if (v1 < v2)
  {
    *(a1 + 88) = v2;
    v1 = v2;
  }

  if ((*(a1 + 96) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  if (v3 < v1)
  {
    *(a1 + 32) = v1;
    v3 = v1;
  }

  v4 = *(a1 + 24);
  if (v4 < v3)
  {
    return *v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double sub_26149941C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 88);
  v6 = *(a1 + 48);
  if (v5 < v6)
  {
    *(a1 + 88) = v6;
    v5 = v6;
  }

  if ((a4 & 0x18) == 0 || a3 == 1 && (a4 & 0x18) == 0x18)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_17:
    v12 = a3;
    goto LABEL_21;
  }

  v9 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v9 = *v9;
  }

  v10 = (v5 - v9) >> 2;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a3 == 2)
  {
    v12 = v10;
  }

  else
  {
    if (a3 != 1)
    {
LABEL_6:
      v7 = -1;
      goto LABEL_7;
    }

    if ((a4 & 8) != 0)
    {
      v11 = *(a1 + 24) - *(a1 + 16);
    }

    else
    {
      v11 = v6 - *(a1 + 40);
    }

    v12 = v11 >> 2;
  }

LABEL_21:
  v7 = -1;
  v13 = v12 + a2;
  if (v13 >= 0 && v10 >= v13 && (!v13 || ((a4 & 8) == 0 || *(a1 + 24)) && ((a4 & 0x10) == 0 || v6)))
  {
    if ((a4 & 8) != 0)
    {
      *(a1 + 24) = *(a1 + 16) + 4 * v13;
      *(a1 + 32) = v5;
    }

    if ((a4 & 0x10) != 0)
    {
      *(a1 + 48) = *(a1 + 40) + 4 * v13;
    }

    v7 = v13;
  }

LABEL_7:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

void sub_261499524(uint64_t a1)
{
  *a1 = &unk_2873D0A48;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614995B8(uint64_t a1)
{
  *a1 = &unk_2873D0A48;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_26149962C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = &unk_2873D09D8;
  v1[16].__locale_ = &unk_2873D0A28;
  v1[2].__locale_ = &unk_2873D0A00;
  v1[3].__locale_ = &unk_2873D0A48;
  if (SHIBYTE(v1[13].__locale_) < 0)
  {
    operator delete(v1[11].__locale_);
  }

  v1[3].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 4);
  std::wostream::~wostream();
  std::wistream::~wistream();
  MEMORY[0x266704560](&v1[16]);

  JUMPOUT(0x2667045D0);
}

void sub_261499764(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = &unk_2873D09D8;
  v1[16].__locale_ = &unk_2873D0A28;
  v1[2].__locale_ = &unk_2873D0A00;
  v1[3].__locale_ = &unk_2873D0A48;
  if (SHIBYTE(v1[13].__locale_) < 0)
  {
    operator delete(v1[11].__locale_);
  }

  v1[3].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 4);
  std::wostream::~wostream();
  std::wistream::~wistream();

  JUMPOUT(0x266704560);
}

void sub_261499884(uint64_t a1)
{
  *(a1 - 16) = &unk_2873D09D8;
  v2 = a1 + 112;
  *(a1 + 112) = &unk_2873D0A28;
  *a1 = &unk_2873D0A00;
  *(a1 + 8) = &unk_2873D0A48;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 16));
  std::wostream::~wostream();
  std::wistream::~wistream();
  MEMORY[0x266704560](v2);

  JUMPOUT(0x2667045D0);
}

void sub_2614999A8(uint64_t a1)
{
  *(a1 - 16) = &unk_2873D09D8;
  *(a1 + 112) = &unk_2873D0A28;
  *a1 = &unk_2873D0A00;
  *(a1 + 8) = &unk_2873D0A48;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 16));
  std::wostream::~wostream();
  std::wistream::~wistream();

  JUMPOUT(0x266704560);
}

void sub_261499AB4(uint64_t a1)
{
  *a1 = &unk_2873D09D8;
  v2 = a1 + 128;
  *(a1 + 128) = &unk_2873D0A28;
  *(a1 + 16) = &unk_2873D0A00;
  *(a1 + 24) = &unk_2873D0A48;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 32));
  std::wostream::~wostream();
  std::wistream::~wistream();
  MEMORY[0x266704560](v2);

  JUMPOUT(0x2667045D0);
}

uint64_t sub_261499BD8(uint64_t a1)
{
  *a1 = &unk_2873D09D8;
  v2 = a1 + 128;
  *(a1 + 128) = &unk_2873D0A28;
  *(a1 + 16) = &unk_2873D0A00;
  *(a1 + 24) = &unk_2873D0A48;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 32));
  std::wostream::~wostream();
  std::wistream::~wistream();
  MEMORY[0x266704560](v2);
  return a1;
}

void sub_261499CDC(void *a1)
{
  sub_261499D3C(a1 + *(*a1 - 24));

  JUMPOUT(0x2667045D0);
}

uint64_t sub_261499D3C(uint64_t a1)
{
  std::wostream::~wostream();
  std::wistream::~wistream();
  MEMORY[0x266704560](a1 + 24);
  return a1;
}

void sub_261499DA4(uint64_t a1)
{
  sub_261499D3C(a1 - 16);

  JUMPOUT(0x2667045D0);
}

void sub_261499DE8(uint64_t a1)
{
  sub_261499D3C(a1);

  JUMPOUT(0x2667045D0);
}

void sub_261499E38(void *a1)
{
  *a1 = &unk_2873D1278;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_261499EA8(void *a1)
{
  *a1 = &unk_2873D1278;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_261499EF8(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  *result = &unk_2873D1278;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  if ((a2 + 31) >= 0x20)
  {
    sub_261472B30((a2 + 31) >> 5);
  }

  *(result + 48) = 0;
  return result;
}

void sub_26149A028(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_26149A044(uint64_t *result, unint64_t a2, int *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return result;
    }

    v11 = v4 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = result[2];
    if (v6 > (v7 - v3) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v4;
        v9 = (v7 - v4) >> 1;
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_261472B30(v10);
      }

      sub_2614709BC();
    }

    v12 = *a3;
    v13 = (v6 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v6 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = (v3 + 8);
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_261560F00)));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        *(v16 - 1) = v12;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_261560F30)))).i32[1])
      {
        *v16 = v12;
        v16[1] = v12;
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v11 = v3 + 4 * v6;
  }

  result[1] = v11;
  return result;
}