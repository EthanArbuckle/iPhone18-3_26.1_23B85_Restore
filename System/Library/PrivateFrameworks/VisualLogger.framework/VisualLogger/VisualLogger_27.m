void sub_27133F6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_27112F828(v29);
  sub_27112F828(&a17);
  sub_27112F828(&a14);
  sub_271205C7C(&a29);
  _Unwind_Resume(a1);
}

void sub_27133F734(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 38;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133F918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133F958(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a2;
  if (a1)
  {
    if (a3 > 5)
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EB7CC(&v31);
        }

        v31 = a1;
        v32 = 4 * a2;
        sub_2711EB698(&v31);
      }

      switch(a3)
      {
        case 8:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EB900(&v31);
        case 11:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EBA34(&v31);
        case 12:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EBB68(&v31);
      }
    }

    else if (a3 <= 1)
    {
      if (!a3)
      {
        v31 = a1;
        v32 = 4 * a2;
        sub_2711E8CC0(&v31);
      }

      if (a3 == 1)
      {
        v31 = a1;
        v32 = 4 * a2;
        sub_2711EB1C4(&v31);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EB310(&v31);
        case 3:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EB444(&v31);
        case 5:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EB578(&v31);
      }
    }

    sub_27183428C(a3);
  }

  if (!a2)
  {
    operator new();
  }

  sub_271340474(v8, &v30);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(0xAu, v10, __p);
  *a4 = *__p;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v29 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_34;
  }

  *(a4 + 40) = 0;
  v5 = v22;
  if (v22 == 1)
  {
    *(a4 + 16) = v20;
    *(a4 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_27:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v7 = v25;
  *(v6 + 16) = v24;
  *v6 = v23;
  v23 = 0uLL;
  *(a4 + 72) = v7;
  *(a4 + 80) = v26;
  *(a4 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_34:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_271340394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v9 - 48);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2713403D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271340414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271340474(uint64_t a1, unint64_t *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = "data pointer is null but num_lines is ";
  v9 = v4;
  v10 = "data pointer is null but num_lines is ";
  v11 = "data pointer is null but num_lines is ";
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_271228A78(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v7;
  (off_2881309D8[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_2881309F0[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_2881309C0[v5])(&v7, v4);
  }

  return result;
}

void sub_271340594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713405B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2713405A0);
}

void sub_2713405D4(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a2;
  if (a1)
  {
    if (a3 > 5)
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EB7CC(&v31);
        }

        v31 = a1;
        v32 = 6 * a2;
        sub_2711EB698(&v31);
      }

      switch(a3)
      {
        case 8:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EB900(&v31);
        case 11:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EBA34(&v31);
        case 12:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EBB68(&v31);
      }
    }

    else if (a3 <= 1)
    {
      if (!a3)
      {
        v31 = a1;
        v32 = 6 * a2;
        sub_2711E8CC0(&v31);
      }

      if (a3 == 1)
      {
        v31 = a1;
        v32 = 6 * a2;
        sub_2711EB1C4(&v31);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EB310(&v31);
        case 3:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EB444(&v31);
        case 5:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EB578(&v31);
      }
    }

    sub_27183428C(a3);
  }

  if (!a2)
  {
    operator new();
  }

  sub_271340474(v8, &v30);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(0xAu, v10, __p);
  *a4 = *__p;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v29 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_34;
  }

  *(a4 + 40) = 0;
  v5 = v22;
  if (v22 == 1)
  {
    *(a4 + 16) = v20;
    *(a4 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_27:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v7 = v25;
  *(v6 + 16) = v24;
  *v6 = v23;
  v23 = 0uLL;
  *(a4 + 72) = v7;
  *(a4 + 80) = v26;
  *(a4 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_34:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_271341038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v9 - 48);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271341078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2713410B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271341118()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0uLL;
  v1 = 0;
  sub_271750B14();
}

void sub_271341CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271341DBC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271341DB4);
}

void sub_271341DD8()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0uLL;
  v1 = 0;
  sub_271751114();
}

void sub_271342A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271342B24(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271342B1CLL);
}

void sub_271342B40(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 440);
  v3 = *(a1 + 448);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = **v2;
    v5 = __dynamic_cast(v2, &unk_28811D1B0, &unk_28811DC78, 0) != 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        v8 = v6 + 1;
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        v42 = v7;
        v43 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v32 = 0uLL;
          v44[0] = v7;
          v44[1] = v6;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v42 = *(a1 + 440);
        v43 = 0;
        if (v7)
        {
          v32 = 0uLL;
          v44[0] = v7;
          v44[1] = 0;
LABEL_20:
          v9 = v7 + 2;
          v10 = v7[2];
          v45 = &v32;
          v11 = *v10;
          if (v11 > 5)
          {
            if (v11 <= 7)
            {
              if (v11 != 6)
              {
                sub_271759D80(v9, 7);
                v18 = v7[2];
                if (*(v18 + 6) >= 0x10uLL)
                {
                  v19 = *(v18 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713457F8;
                operator new();
              }

              sub_271759D80(v9, 6);
              v22 = v7[2];
              if (*(v22 + 6) >= 8uLL)
              {
                v23 = *(v22 + 5);
              }

              v48 = v7;
              v49 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v47 = sub_2713457F8;
              operator new();
            }

            switch(v11)
            {
              case 8:
                sub_271759D80(v9, 8);
                v26 = v7[2];
                if (*(v26 + 6) >= 0x20uLL)
                {
                  v27 = *(v26 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713457F8;
                operator new();
              case 11:
                sub_271759D80(v9, 11);
                v30 = v7[2];
                if (*(v30 + 6) >= 0x10uLL)
                {
                  v31 = *(v30 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713457F8;
                operator new();
              case 12:
                sub_271759D80(v9, 12);
                v14 = v7[2];
                if (*(v14 + 6) >= 0x20uLL)
                {
                  v15 = *(v14 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713457F8;
                operator new();
            }
          }

          else
          {
            if (v11 <= 1)
            {
              if (v11)
              {
                sub_271759D80(v9, 1);
                v16 = v7[2];
                if (*(v16 + 6) >= 8uLL)
                {
                  v17 = *(v16 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713457F8;
                operator new();
              }

              sub_271759D80(v9, 0);
              v20 = v7[2];
              if (*(v20 + 6) >= 4uLL)
              {
                v21 = *(v20 + 5);
              }

              v48 = v7;
              v49 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v47 = sub_2713457F8;
              operator new();
            }

            switch(v11)
            {
              case 2:
                sub_271759D80(v9, 2);
                v24 = v7[2];
                if (*(v24 + 6) >= 0x10uLL)
                {
                  v25 = *(v24 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713457F8;
                operator new();
              case 3:
                sub_271759D80(v9, 3);
                v28 = v7[2];
                if (*(v28 + 6) >= 0x20uLL)
                {
                  v29 = *(v28 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713457F8;
                operator new();
              case 5:
                sub_271759D80(v9, 5);
                v12 = v7[2];
                if (*(v12 + 6) >= 4uLL)
                {
                  v13 = *(v12 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713457F8;
                operator new();
            }
          }

          sub_27183428C(v11);
        }
      }

LABEL_14:
      *v44 = *"cv3d.viz";
      v45 = 0x800000000000000;
      v46 = 12;
      sub_2711BE814(&v41, v44, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v38, *a1, *(a1 + 8));
      }

      else
      {
        *v38 = *a1;
        v39 = *(a1 + 16);
      }

      v40 = *(a1 + 24);
      LODWORD(v32) = 2;
      sub_271343FA4(v33, &v32);
      *__p = *v33;
      v36 = v34;
      v33[1] = 0;
      v34 = 0;
      v33[0] = 0;
      v37 = 1;
      sub_271369E70(&v41, v38, __p);
    }

LABEL_13:
    v42 = 0;
    v43 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_271343E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271343FA4(uint64_t a1, unsigned int *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = "cannot return data as VZLines";
  v9 = v4;
  v10 = "cannot return data as VZLines";
  v11 = "cannot return data as VZLines";
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_2712390A4(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v7;
  (off_2881309D8[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_2881309F0[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_2881309C0[v5])(&v7, v4);
  }

  return result;
}

void sub_2713440C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713440E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2713440D0);
}

void sub_271344104(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 440);
  v3 = *(a1 + 448);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = **v2;
    v5 = __dynamic_cast(v2, &unk_28811D1B0, &unk_28811DC60, 0) != 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        v8 = v6 + 1;
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        v42 = v7;
        v43 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v32 = 0uLL;
          v44[0] = v7;
          v44[1] = v6;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v42 = *(a1 + 440);
        v43 = 0;
        if (v7)
        {
          v32 = 0uLL;
          v44[0] = v7;
          v44[1] = 0;
LABEL_20:
          v9 = v7 + 2;
          v10 = v7[2];
          v45 = &v32;
          v11 = *v10;
          if (v11 > 5)
          {
            if (v11 <= 7)
            {
              if (v11 != 6)
              {
                sub_271759D80(v9, 7);
                v18 = v7[2];
                if (*(v18 + 6) >= 0x18uLL)
                {
                  v19 = *(v18 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271345B40;
                operator new();
              }

              sub_271759D80(v9, 6);
              v22 = v7[2];
              if (*(v22 + 6) >= 0xCuLL)
              {
                v23 = *(v22 + 5);
              }

              v48 = v7;
              v49 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v47 = sub_271345B40;
              operator new();
            }

            switch(v11)
            {
              case 8:
                sub_271759D80(v9, 8);
                v26 = v7[2];
                if (*(v26 + 6) >= 0x30uLL)
                {
                  v27 = *(v26 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271345B40;
                operator new();
              case 11:
                sub_271759D80(v9, 11);
                v30 = v7[2];
                if (*(v30 + 6) >= 0x18uLL)
                {
                  v31 = *(v30 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271345B40;
                operator new();
              case 12:
                sub_271759D80(v9, 12);
                v14 = v7[2];
                if (*(v14 + 6) >= 0x30uLL)
                {
                  v15 = *(v14 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271345B40;
                operator new();
            }
          }

          else
          {
            if (v11 <= 1)
            {
              if (v11)
              {
                sub_271759D80(v9, 1);
                v16 = v7[2];
                if (*(v16 + 6) >= 0xCuLL)
                {
                  v17 = *(v16 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271345B40;
                operator new();
              }

              sub_271759D80(v9, 0);
              v20 = v7[2];
              if (*(v20 + 6) >= 6uLL)
              {
                v21 = *(v20 + 5);
              }

              v48 = v7;
              v49 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v47 = sub_271345B40;
              operator new();
            }

            switch(v11)
            {
              case 2:
                sub_271759D80(v9, 2);
                v24 = v7[2];
                if (*(v24 + 6) >= 0x18uLL)
                {
                  v25 = *(v24 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271345B40;
                operator new();
              case 3:
                sub_271759D80(v9, 3);
                v28 = v7[2];
                if (*(v28 + 6) >= 0x30uLL)
                {
                  v29 = *(v28 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271345B40;
                operator new();
              case 5:
                sub_271759D80(v9, 5);
                v12 = v7[2];
                if (*(v12 + 6) >= 6uLL)
                {
                  v13 = *(v12 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271345B40;
                operator new();
            }
          }

          sub_27183428C(v11);
        }
      }

LABEL_14:
      *v44 = *"cv3d.viz";
      v45 = 0x800000000000000;
      v46 = 13;
      sub_2711BE814(&v41, v44, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v38, *a1, *(a1 + 8));
      }

      else
      {
        *v38 = *a1;
        v39 = *(a1 + 16);
      }

      v40 = *(a1 + 24);
      LODWORD(v32) = 3;
      sub_271343FA4(v33, &v32);
      *__p = *v33;
      v36 = v34;
      v33[1] = 0;
      v34 = 0;
      v33[0] = 0;
      v37 = 1;
      sub_271369E70(&v41, v38, __p);
    }

LABEL_13:
    v42 = 0;
    v43 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_2713454A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271345630(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881069A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271345684(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271345724(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271345778(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_2713457F8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_2713457F8;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_2713457F8;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7F8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj2EEENS3_7PackageELj12EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj2EEENS3_7PackageELj12EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj2EEENS3_7PackageELj12EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj2EEENS3_7PackageELj12EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188BDC0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_27134599C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27134599C;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27134599C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B858;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj2EEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj2EEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188BDF8)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_271345B40(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271345B40;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271345B40;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7E8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj3EEENS3_7PackageELj13EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj3EEENS3_7PackageELj13EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj3EEENS3_7PackageELj13EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj3EEENS3_7PackageELj13EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188BE5C)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_271345CE4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271345CE4;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271345CE4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B848;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj3EEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj3EEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188BE94)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2713460B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271346344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2713463A0(void *result)
{
  result[3] = &unk_28812D848;
  result[4] = &unk_288131488;
  v1 = result[6];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  *result = &unk_288131488;
  v3 = result[2];
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

void sub_2713464C4(void *a1)
{
  *a1 = &unk_28812D848;
  a1[1] = &unk_288131488;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    *(a1 - 3) = &unk_288131488;
    v2 = *(a1 - 1);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    *(a1 - 3) = &unk_288131488;
    v2 = *(a1 - 1);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_27134661C(void *a1)
{
  a1[3] = &unk_28812D848;
  a1[4] = &unk_288131488;
  v1 = a1[6];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  *a1 = &unk_288131488;
  v3 = a1[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271346754(void *a1)
{
  *a1 = &unk_28812D848;
  a1[1] = &unk_288131488;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  *(a1 - 3) = &unk_288131488;
  v3 = *(a1 - 1);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271346CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271346D30(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 48) = 0;
  if (*(a2 + 64) == 1)
  {
    *(result + 8) = 0;
    *(result + 40) = -1;
    v2 = *(a2 + 56);
    if (v2 != -1)
    {
      v3 = result;
      v9 = result + 8;
      v4 = a2;
      (off_288130A58[v2])(&v9, a2 + 24);
      result = v3;
      *(v3 + 40) = v2;
      a2 = v4;
    }

    *(result + 48) = 1;
  }

  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  *(result + 72) = 0;
  *(result + 64) = v6;
  *(result + 56) = v5;
  *(result + 104) = 0;
  if (*(a2 + 168) == 1)
  {
    *(result + 72) = 0;
    *(result + 96) = -1;
    v7 = *(a2 + 160);
    if (v7 != -1)
    {
      v8 = result;
      v9 = result + 72;
      (off_288130A78[v7])(&v9, a2 + 136);
      result = v8;
      *(v8 + 96) = v7;
    }

    *(result + 104) = 1;
  }

  return result;
}

void sub_271346E34(_Unwind_Exception *a1)
{
  v4 = sub_27116F16C(v1);
  sub_27116F1C8(v4);
  sub_27116EEC8(v2);
  _Unwind_Resume(a1);
}

void sub_271346E54(_Unwind_Exception *a1)
{
  sub_27116F024(v1);
  sub_27116F080(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_271346E70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v12 = 0;
  if (*(a1 + 48) == 1)
  {
    v10 = 0;
    v11 = -1;
    v4 = *(a1 + 40);
    if (v4 != -1)
    {
      v8 = &v10;
      (off_288130A58[v4])(&v8, a1 + 8);
      v11 = v4;
    }

    v12 = 1;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  if (*(a1 + 104) == 1)
  {
    v18 = -1;
    v5 = *(a1 + 96);
    if (v5 != -1)
    {
      v8 = &v17;
      (off_288130A78[v5])(&v8, a1 + 72);
      v18 = v5;
    }

    v19 = 1;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  *a2 = off_2881327C0;
  sub_2712B1AE8((a2 + 2), v9);
  result = sub_271347580(v9);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27134701C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = sub_27116F16C(v31);
  sub_27116F1C8(v33);
  if ((a29 & 1) != 0 && a27 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  sub_27116EEC8(&a11);
  _Unwind_Resume(a1);
}

void sub_271347060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27116F024(v3);
  sub_27116F080(va);
  _Unwind_Resume(a1);
}

void sub_27134707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271347580(va);
  _Unwind_Resume(a1);
}

void sub_271347090(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a1;
      sub_271127178(__p, *a2, *(a2 + 8));
      a1 = v4;
    }

    else
    {
      *__p = *a2;
      v6 = *(a2 + 16);
    }

    sub_271347184(a1, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 40);
    if (v2 != -1)
    {
      v3 = a1;
      (off_288130A48[v2])(__p, a1 + 8);
      a1 = v3;
    }

    *(a1 + 40) = -1;
    *(a1 + 48) = 0;
  }
}

void sub_271347168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271347184(uint64_t a1, __int128 *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178((a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(a1 + 24) = *(a2 + 2);
      *(a1 + 8) = v3;
    }

    *(a1 + 40) = 1;
    *(a1 + 48) = 1;
    goto LABEL_18;
  }

  if (*(a2 + 23) < 0)
  {
    sub_271127178(&v9, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 2);
  }

  v11 = 1;
  v4 = *(a1 + 40);
  if (v4 == -1)
  {
    goto LABEL_16;
  }

  if (v4 != 1)
  {
    (off_288130A48[v4])(&v8, a1 + 8);
LABEL_16:
    *(a1 + 8) = v9;
    *(a1 + 24) = v10;
    v10 = 0;
    v9 = 0uLL;
    *(a1 + 40) = 1;
    v5 = v11;
    if (v11 == -1)
    {
      goto LABEL_18;
    }

LABEL_17:
    (off_288130A48[v5])(&v8, &v9);
    goto LABEL_18;
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = v9;
  *(a1 + 24) = v10;
  HIBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  v5 = v11;
  if (v11 != -1)
  {
    goto LABEL_17;
  }

LABEL_18:
  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271347308(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

void sub_271347320(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v5 = *(a2 + 16);
    }

    sub_271347408(a1 + 72, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 96);
    if (v3 != -1)
    {
      (off_288130A68[v3])(__p, a1 + 72);
    }

    *(a1 + 96) = -1;
    *(a1 + 104) = 0;
  }
}

void sub_2713473EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271347408(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 32) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178(&v7, *a2, *(a2 + 1));
      v9 = 1;
      v3 = *(a1 + 24);
      if (v3 == -1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 2);
      v9 = 1;
      v3 = *(a1 + 24);
      if (v3 == -1)
      {
        goto LABEL_16;
      }
    }

    if (v3 == 1)
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      *a1 = v7;
      *(a1 + 16) = v8;
      HIBYTE(v8) = 0;
      LOBYTE(v7) = 0;
      v5 = v9;
      if (v9 == -1)
      {
        return a1;
      }

      goto LABEL_17;
    }

    (off_288130A68[v3])(&v10, a1);
LABEL_16:
    *a1 = v7;
    *(a1 + 16) = v8;
    v8 = 0;
    v7 = 0uLL;
    *(a1 + 24) = 1;
    v5 = v9;
    if (v9 == -1)
    {
      return a1;
    }

LABEL_17:
    (off_288130A68[v5])(&v10, &v7);
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 1;
  *(a1 + 32) = 1;
  return a1;
}

uint64_t sub_271347580(uint64_t a1)
{
  if (*(a1 + 680) == 1)
  {
    v2 = *(a1 + 672);
    if (v2 != -1)
    {
      (off_288130A48[v2])(&v15, a1 + 640);
    }

    *(a1 + 672) = -1;
  }

  if (*(a1 + 624) == 1 && *(a1 + 616) == 1)
  {
    v3 = *(a1 + 592);
    if (v3)
    {
      v4 = *(a1 + 600);
      v5 = *(a1 + 592);
      if (v4 == v3)
      {
LABEL_19:
        *(a1 + 600) = v3;
        operator delete(v5);
        goto LABEL_20;
      }

      while (1)
      {
        v6 = v4;
        if (*(v4 - 16) == 1 && *(v4 - 41) < 0)
        {
          operator delete(*(v4 - 8));
          v4 -= 12;
          if (*(v6 - 72) == 1)
          {
LABEL_14:
            if (*(v6 - 73) < 0)
            {
              operator delete(*v4);
            }
          }
        }

        else
        {
          v4 -= 12;
          if (*(v6 - 72) == 1)
          {
            goto LABEL_14;
          }
        }

        if (v4 == v3)
        {
          v5 = *(a1 + 592);
          goto LABEL_19;
        }
      }
    }
  }

LABEL_20:
  if (*(a1 + 576) == 1)
  {
    v7 = *(a1 + 560);
    if (v7 != -1)
    {
      (off_288130AA8[v7])(&v16, a1 + 448);
    }

    *(a1 + 560) = -1;
  }

  if (*(a1 + 416) == 1)
  {
    v8 = *(a1 + 400);
    if (v8 != -1)
    {
      (off_288130A98[v8])(&v19, a1 + 336);
    }

    *(a1 + 400) = -1;
  }

  if (*(a1 + 312) == 1)
  {
    v9 = *(a1 + 304);
    if (v9 != -1)
    {
      (off_288130A48[v9])(&v17, a1 + 272);
    }

    *(a1 + 304) = -1;
  }

  if (*(a1 + 256) == 1 && (v10 = *(a1 + 248)) != 0 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (*(a1 + 224) != 1)
    {
      goto LABEL_39;
    }
  }

  else if (*(a1 + 224) != 1)
  {
    goto LABEL_39;
  }

  v11 = *(a1 + 216);
  if (v11 != -1)
  {
    (off_288130A88[v11])(&v20, a1 + 160);
  }

  *(a1 + 216) = -1;
LABEL_39:
  if (*(a1 + 152) == 1)
  {
    v12 = *(a1 + 144);
    if (v12 != -1)
    {
      (off_288130A68[v12])(&v21, a1 + 120);
    }

    *(a1 + 144) = -1;
  }

  if (*(a1 + 112) == 1 && *(a1 + 104) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if (*(a1 + 48) != 1)
    {
      return a1;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    return a1;
  }

  v13 = *(a1 + 40);
  if (v13 != -1)
  {
    (off_288130A48[v13])(&v18, a1 + 8);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271347894(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  LOBYTE(v2) = 0;
  v5 = 0;
  if (*(a2 + 32) == 1)
  {
    sub_2711895D8(&v2, a2);
    v2 = &unk_28812ED60;
    v5 = 1;
    v9 = 0;
    v8 = 0uLL;
    if (v4 != v3)
    {
      if (!(((v4 - v3) >> 5) >> 60))
      {
        operator new();
      }

      sub_27134B450();
    }

    *v6 = vdupq_n_s64(0);
    v7 = v4 - v3;
  }

  else
  {
    v6[0] = 0;
    v6[1] = 0;
    v7 = 0;
  }

  operator new();
}

void sub_271347E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a18 == 1)
  {
    sub_271235358(&a15);
  }

  _Unwind_Resume(exception_object);
}

void **sub_271347F18(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_271347FCC(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 && *a1)
  {
    LOBYTE(v15) = 0;
    v18 = 0;
    if (*(a2 + 32) == 1)
    {
      *v16 = *(a2 + 8);
      v17 = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v15 = &unk_28812ED60;
      v18 = 1;
    }

    v5 = strlen(a1);
    if (v5 < 0x7FFFFFFFFFFFFFF8)
    {
      v6 = v5;
      if (v5 < 0x17)
      {
        HIBYTE(v11) = v5;
        if (v5)
        {
          memcpy(&__dst, a1, v5);
        }

        *(&__dst + v6) = 0;
        *__p = __dst;
        v13 = v11;
        v14 = 1;
        sub_271347894(&v28, &v15);
      }

      operator new();
    }

    sub_271120DA8();
  }

  sub_2711CC04C(v19, "namespace must not be empty");
  v27 = 1;
  sub_27112D480(0xAu, v19, &v28);
  *a3 = v28;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v38 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_22;
  }

  *(a3 + 40) = 0;
  v7 = v31;
  if (v31 == 1)
  {
    *(a3 + 16) = v29;
    *(a3 + 32) = v30;
    v30 = 0;
    v29 = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v8 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v37 & 1) == 0)
    {
LABEL_12:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v8 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v37 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v9 = v34;
  *(v8 + 16) = v33;
  *v8 = v32;
  v32 = 0uLL;
  *(a3 + 72) = v9;
  *(a3 + 80) = v35;
  *(a3 + 96) = v36;
  v33 = 0;
  v35 = 0uLL;
  v36 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

LABEL_22:
  if (v27 == 1)
  {
    if (v26 == 1)
    {
      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }
    }

    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void sub_2713483B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 == 1)
  {
    sub_271235358(&a21);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27134842C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    LOBYTE(v14[0]) = 0;
    v15 = 0;
    if (*(a2 + 24) == 1)
    {
      v4 = a4;
      v5 = a1;
      memset(v14, 0, sizeof(v14));
      v6 = a2;
      sub_27116E754(v14, *a2, *(a2 + 8), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 8) - *a2) >> 4));
      v15 = 1;
      a1 = v5;
      a4 = v4;
      a2 = v6;
    }

    v7 = *(a2 + 48);
    v16 = *(a2 + 32);
    v17 = v7;
    v18 = 1;
    v22[0] = 0;
    v24 = 0;
    if (*(a4 + 32) != 1)
    {
LABEL_19:
      sub_2712ABD88(a1, v14, v22);
    }

    v8 = *(a4 + 24);
    if (v8)
    {
      v9 = a1;
      if (v8 == a4)
      {
        v23 = v22;
        (*(*v8 + 24))(v8, v22);
        a1 = v9;
        goto LABEL_18;
      }

      v8 = (*(*v8 + 16))(*(a4 + 24));
      a1 = v9;
    }

    v23 = v8;
LABEL_18:
    v24 = 1;
    goto LABEL_19;
  }

  LOBYTE(v12) = 0;
  v13 = 0;
  v19[0] = 0;
  v21 = 0;
  if (*(a4 + 32) != 1)
  {
LABEL_16:
    sub_2712ABD88(a1, &v12, v19);
  }

  v10 = *(a4 + 24);
  if (v10)
  {
    v11 = a1;
    if (v10 == a4)
    {
      v20 = v19;
      (*(*v10 + 24))(v10, v19);
      a1 = v11;
      goto LABEL_15;
    }

    v10 = (*(*v10 + 16))(*(a4 + 24));
    a1 = v11;
  }

  v20 = v10;
LABEL_15:
  v21 = 1;
  goto LABEL_16;
}

void sub_271348F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  sub_271144524(v51 - 128);
  sub_271349074(&a51);
  _Unwind_Resume(a1);
}

void sub_271348F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  sub_271144524(v42 - 168);
  sub_271349074(&a42);
  _Unwind_Resume(a1);
}

void sub_271348F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  sub_27112D66C(v60 + 16);
  sub_271145690(&a60);
  _Unwind_Resume(a1);
}

void sub_27134903C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  sub_271144524(v51 - 128);
  sub_271349074(&a51);
  _Unwind_Resume(a1);
}

void sub_271349058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  sub_271144524(v42 - 168);
  sub_271349074(&a42);
  _Unwind_Resume(a1);
}

void **sub_271349074(void **result)
{
  if (*(result + 64) == 1 && *(result + 24) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result[1];
      v3 = *result;
      if (v2 != v1)
      {
        v4 = result;
        v5 = 0;
        do
        {
          v6 = &v2[v5];
          if (v2[v5 - 8] == 1)
          {
            v7 = *(v6 - 4);
            if (v7 != -1)
            {
              (off_288130AB8[v7])(&v9, v6 - 48);
            }

            *(v6 - 4) = -1;
          }

          *(v6 - 102) = off_2881327C0;
          sub_271347580((v6 - 800));
          v5 -= 816;
        }

        while (&v2[v5] != v1);
        result = v4;
        v3 = *v4;
      }

      result[1] = v1;
      v8 = result;
      operator delete(v3);
      return v8;
    }
  }

  return result;
}

void sub_27134918C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2[1];
  v32 = *a2;
  v33 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = sub_271541EA4(v4, &v32);
  v7 = v33;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
LABEL_6:
    *(a3 + 120) = 1;
    return;
  }

  sub_2711CC04C(v12, "destination to add is already contained in the logger");
  v20 = 1;
  sub_27112D480(0xDu, v12, &v21);
  *a3 = v21;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v31 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_19;
  }

  *(a3 + 40) = 0;
  v9 = v24;
  if (v24 != 1)
  {
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v11 = v27;
    *(v10 + 16) = v26;
    *v10 = v25;
    v25 = 0uLL;
    *(a3 + 72) = v11;
    *(a3 + 80) = v28;
    *(a3 + 96) = v29;
    v26 = 0;
    v28 = 0uLL;
    v29 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_19;
  }

  *(a3 + 16) = __p;
  *(a3 + 32) = v23;
  v23 = 0;
  __p = 0uLL;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v10 = a3 + 48;
  *(a3 + 104) = 0;
  if (v30)
  {
    goto LABEL_16;
  }

LABEL_12:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (v9)
  {
    goto LABEL_17;
  }

LABEL_19:
  if (v20 == 1)
  {
    if (v19 == 1)
    {
      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (v16 < 0)
      {
        operator delete(v15);
      }
    }

    if (v14 == 1 && v13 < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_2713493F0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_271542144(*a1, *a2))
  {
    *(a3 + 120) = 1;
    return;
  }

  sub_2711CC04C(v7, "destination to remove was not found in the logger");
  v15 = 1;
  sub_27112D480(0xDu, v7, &v16);
  *a3 = v16;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v26 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_14;
  }

  *(a3 + 40) = 0;
  v4 = v19;
  if (v19 != 1)
  {
    *(a3 + 48) = 0;
    v5 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v6 = v22;
    *(v5 + 16) = v21;
    *v5 = v20;
    v20 = 0uLL;
    *(a3 + 72) = v6;
    *(a3 + 80) = v23;
    *(a3 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v4)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_14;
  }

  *(a3 + 16) = __p;
  *(a3 + 32) = v18;
  v18 = 0;
  __p = 0uLL;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v5 = a3 + 48;
  *(a3 + 104) = 0;
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_7:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_2713495D4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2715437EC(*a1, &__p);
  v15 = 0;
  v14 = 0uLL;
  sub_271235F18(&v14, (v12 - __p) >> 4);
  if (__p != v12)
  {
    v4 = *__p;
    v3 = *(__p + 1);
    v16 = *__p;
    v17 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
      v19 = v4;
      v20 = v3;
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    else
    {
      v19 = v4;
      v20 = 0;
    }

    v18[0] = v4;
    v18[1] = v3;
    operator new();
  }

  v5 = v15;
  v10 = v14;
  v15 = 0;
  v14 = 0uLL;
  v18[0] = &v14;
  sub_271189798(v18);
  *(a2 + 8) = v10;
  *(a2 + 24) = v5;
  memset(v13, 0, sizeof(v13));
  *a2 = &unk_28812ED60;
  v18[0] = v13;
  sub_271189798(v18);
  v6 = __p;
  if (__p)
  {
    v7 = v12;
    v8 = __p;
    if (v12 != __p)
    {
      do
      {
        v9 = *(v7 - 1);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v7 -= 16;
      }

      while (v7 != v6);
      v8 = __p;
    }

    v12 = v6;
    operator delete(v8);
  }
}

void sub_271349994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_271189798(va1);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2713499B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void **a23)
{
  sub_27115E960(&a23);
  sub_27112F828(&a21);
  a23 = &a17;
  sub_271189798(&a23);
  sub_271347F18(&a11);
  _Unwind_Resume(a1);
}

void sub_271349A00(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *a1;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a1;
  }

  v8 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  v10 = (*(*v7 + 48))(v7, a2, v9);
  *a3 = &unk_2881177D0;
  a3[1] = v10;
  v11 = **v10;
  a3[2] = *(__dynamic_cast(v10, &unk_28811D060, &unk_28811DAA8, 0) + 5);
  a3[3] = v6;
  a3[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_271349BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271349BD8(uint64_t *a1, const char *a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = &unk_2719251FD;
  }

  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, v3, v4);
  }

  *(__dst + v5) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = (*(*v2 + 48))(v2, v6, v7);
  result = (*(*v8 + 32))(v8);
  if (v12 < 0)
  {
    v10 = result;
    operator delete(__dst[0]);
    return v10;
  }

  return result;
}

void sub_271349D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271349D58(uint64_t *a1, const char *a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = &unk_2719251FD;
  }

  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memcpy(__dst, v3, v4);
  }

  *(__dst + v5) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = (*(*v2 + 48))(v2, v6, v7);
  (*(*v8 + 40))(v8, 1);
  if (v10 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_271349EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271349ED0(uint64_t *a1, const char *a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = &unk_2719251FD;
  }

  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memcpy(__dst, v3, v4);
  }

  *(__dst + v5) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = (*(*v2 + 48))(v2, v6, v7);
  (*(*v8 + 40))(v8, 2);
  if (v10 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_27134A02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27134A048(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &unk_2719251FD;
  }

  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v37 = v8;
  if (v8)
  {
    memcpy(&__dst, v7, v8);
    *(&__dst + v9) = 0;
    v10 = v37;
    if ((v37 & 0x8000000000000000) == 0)
    {
LABEL_8:
      if (v10)
      {
        if (a2 <= 2)
        {
          v11 = *a1;
LABEL_19:
          p_dst = &__dst;
LABEL_43:
          v17 = (*(*v11 + 48))(v11, p_dst, v10);
          (*(*v17 + 40))(v17, a2);
          *(a4 + 120) = 1;
          LOBYTE(v10) = v37;
          goto LABEL_44;
        }

LABEL_20:
        v18 = a2;
        sub_27134A4D0(v19, &v18);
        *v21 = *v19;
        v22 = v20;
        v19[1] = 0;
        v20 = 0;
        v19[0] = 0;
        v23 = 1;
        sub_271369D54(v21, &v24);
        *a4 = v24;
        *(a4 + 16) = 0;
        *(a4 + 112) = 0;
        if (v34 != 1)
        {
          *(a4 + 120) = 0;
          goto LABEL_35;
        }

        *(a4 + 40) = 0;
        v13 = v27;
        if (v27 == 1)
        {
          *(a4 + 16) = __p;
          *(a4 + 32) = v26;
          v26 = 0;
          __p = 0uLL;
          *(a4 + 40) = 1;
          *(a4 + 48) = 0;
          v14 = a4 + 48;
          *(a4 + 104) = 0;
          if ((v33 & 1) == 0)
          {
LABEL_23:
            *(a4 + 112) = 1;
            *(a4 + 120) = 0;
            if (!v13)
            {
LABEL_35:
              if (v23 == 1 && SHIBYTE(v22) < 0)
              {
                operator delete(v21[0]);
              }

              if (SHIBYTE(v20) < 0)
              {
                operator delete(v19[0]);
              }

              goto LABEL_44;
            }

LABEL_33:
            if (SHIBYTE(v26) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_35;
          }
        }

        else
        {
          *(a4 + 48) = 0;
          v14 = a4 + 48;
          *(a4 + 104) = 0;
          if ((v33 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        *v14 = v28;
        *(v14 + 16) = v29;
        v29 = 0;
        v28 = 0uLL;
        *(a4 + 72) = v30;
        *(a4 + 80) = v31;
        *(a4 + 96) = v32;
        v31 = 0uLL;
        v32 = 0;
        *(a4 + 104) = 1;
        *(a4 + 112) = 1;
        *(a4 + 120) = 0;
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      goto LABEL_16;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v10 = v37;
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v36)
  {
    if (a2 > 2)
    {
      goto LABEL_20;
    }

    v11 = *a1;
    v10 = v36;
    goto LABEL_42;
  }

LABEL_16:
  if (a2)
  {
    if (a2 >= 3)
    {
      goto LABEL_20;
    }

    v11 = *a1;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v10 = v36;
LABEL_42:
    p_dst = __dst;
    goto LABEL_43;
  }

  sub_27123BF10(&v24);
  *a4 = v24;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v34 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_44;
  }

  *(a4 + 40) = 0;
  v15 = v27;
  if (v27 == 1)
  {
    *(a4 + 16) = __p;
    *(a4 + 32) = v26;
    v26 = 0;
    __p = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v16 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v33 & 1) == 0)
    {
LABEL_29:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v15)
      {
        goto LABEL_44;
      }

      goto LABEL_49;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v16 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  *v16 = v28;
  *(v16 + 16) = v29;
  v29 = 0;
  v28 = 0uLL;
  *(a4 + 72) = v30;
  *(a4 + 80) = v31;
  *(a4 + 96) = v32;
  v31 = 0uLL;
  v32 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v15)
  {
    goto LABEL_44;
  }

LABEL_49:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

LABEL_44:
  if ((v10 & 0x80) != 0)
  {
    operator delete(__dst);
  }
}

void sub_27134A460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (v22 < 0)
  {
    operator delete(*(v23 + 120));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27134A4D0(uint64_t a1, unsigned __int8 *a2)
{
  v5 = 0;
  v8 = v4;
  v9 = "invalid EnableState value '";
  v10 = v4;
  v11 = "invalid EnableState value '";
  v12 = "invalid EnableState value '";
  v6.__r_.__value_.__r.__words[0] = &v8;
  sub_27134B55C(&v6);
  std::to_string(&v6, *a2);
  v8 = v4;
  v9 = &v6;
  v10 = v4;
  v11 = &v6;
  v12 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v8;
  (off_288130AE0[v5])(&v7, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  v8 = v4;
  v9 = "'";
  v10 = v4;
  v11 = "'";
  v12 = "'";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6.__r_.__value_.__r.__words[0] = &v8;
  (*(&off_288130AF8 + v5))(&v6, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v8 = &v6;
  result = (off_288130B10[v5])(&v8, v4);
  if (v5 != -1)
  {
    return (off_288130AC8[v5])(&v8, v4);
  }

  return result;
}

void sub_27134A63C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_27134A65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271137AE8(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x27134A64CLL);
}

void sub_27134A680(uint64_t *a1, uint64_t **a2)
{
  v4 = **a2;
  v5 = sub_271543694(*a1);
  v6 = *(v4 + 48);
  v7 = *(v5 + 24);
  if (v6 != v7 || v6 == 0)
  {
    if (v6 != v7)
    {
LABEL_21:
      v15 = *a1;

      sub_271543130(v15, a2);
      return;
    }
  }

  else
  {
    v9 = *(v4 + 47);
    if (v9 >= 0)
    {
      v10 = *(v4 + 47);
    }

    else
    {
      v10 = *(v4 + 32);
    }

    v11 = *(v5 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v5 + 8);
    }

    if (v10 != v11)
    {
      goto LABEL_21;
    }

    v13 = v9 >= 0 ? (v4 + 24) : *(v4 + 24);
    v14 = v12 >= 0 ? v5 : *v5;
    if (memcmp(v13, v14, v10))
    {
      goto LABEL_21;
    }
  }

  v16 = *a1;
  v17 = **a2;
  if (v17[23] < 0)
  {
    v17 = *v17;
  }

  v18 = strlen(v17);
  v19 = (*(*v16 + 48))(v16, v17, v18);

  sub_27134B074(v16, v19, (a2 + 2));
}

void sub_27134A7C8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    do
    {
      v6 = *(v3 + 8);
      v11 = *v3;
      v12 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v3 + 24);
      v7 = *(v3 + 32);
      v13 = off_28810C940;
      v14 = v8;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_27134A680(a1, &v11);
      v9 = v15;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v10 = v12;
        if (v12)
        {
LABEL_11:
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }
      }

      else
      {
        v10 = v12;
        if (v12)
        {
          goto LABEL_11;
        }
      }

      v3 += 40;
    }

    while (v3 != v4);
  }
}

void sub_27134A924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271396310(va);
  _Unwind_Resume(a1);
}

void sub_27134A938(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_271543938(*a1, v27);
  if (v37)
  {
    *(a2 + 120) = 1;
    return;
  }

  sub_2711D40C8(v27, &v6);
  v16 = v6;
  LOBYTE(__p) = 0;
  v26 = 0;
  if (v15 == 1)
  {
    sub_27112F6CC(&__p, &v7);
    v26 = 1;
    *a2 = v16;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v3 = v19;
    if (v19 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v18;
      v18 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
LABEL_7:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v3)
        {
          goto LABEL_14;
        }

LABEL_12:
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_14;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = v22;
    *(v4 + 16) = v21;
    *v4 = v20;
    v20 = 0uLL;
    *(a2 + 72) = v5;
    *(a2 + 80) = v23;
    *(a2 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = v6;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

LABEL_14:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  if ((v37 & 1) == 0 && v36 == 1)
  {
    if (v35 == 1)
    {
      if (v34 < 0)
      {
        operator delete(v33);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }
    }

    if (v30 == 1 && v29 < 0)
    {
      operator delete(v28);
    }
  }
}

void sub_27134AB7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(v2 + 16);
  sub_27112D71C(va);
  sub_27112E024(v3 - 160);
  _Unwind_Resume(a1);
}

void *sub_27134ABB4(void *result)
{
  *result = &unk_2881177D0;
  v1 = result[4];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27134AC48(void *a1)
{
  *a1 = &unk_2881177D0;
  v1 = a1[4];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27134ACF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (a2 >= 3)
    {
      v13 = a2;
      sub_27134A4D0(v14, &v13);
      *v16 = *v14;
      v17 = v15;
      v14[1] = 0;
      v15 = 0;
      v14[0] = 0;
      v18 = 1;
      sub_271369D54(v16, &v19);
      *a3 = v19;
      *(a3 + 16) = 0;
      *(a3 + 112) = 0;
      if (v29 != 1)
      {
        *(a3 + 120) = 0;
        goto LABEL_23;
      }

      *(a3 + 40) = 0;
      v5 = v22;
      if (v22 == 1)
      {
        *(a3 + 16) = __p;
        *(a3 + 32) = v21;
        v21 = 0;
        __p = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v6 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v28 & 1) == 0)
        {
LABEL_6:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v5)
          {
LABEL_23:
            if (v18 == 1 && SHIBYTE(v17) < 0)
            {
              operator delete(v16[0]);
            }

            if (SHIBYTE(v15) < 0)
            {
              operator delete(v14[0]);
            }

            return;
          }

LABEL_21:
          if (SHIBYTE(v21) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_23;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v6 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v28 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v11 = v25;
      *(v6 + 16) = v24;
      *v6 = v23;
      v24 = 0;
      v23 = 0uLL;
      *(a3 + 72) = v11;
      *(a3 + 80) = v26;
      *(a3 + 96) = v27;
      v26 = 0uLL;
      v27 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v5)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

LABEL_10:
    (*(**(a1 + 8) + 40))(*(a1 + 8), a2);
    *(a3 + 120) = 1;
    return;
  }

  v7 = a2;
  v8 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (*(v8 + 23) < 0)
  {
    a2 = v7;
    if (*(v8 + 8))
    {
      goto LABEL_10;
    }
  }

  else
  {
    a2 = v7;
    if (*(v8 + 23))
    {
      goto LABEL_10;
    }
  }

  sub_27123BF10(&v19);
  *a3 = v19;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v29 != 1)
  {
    *(a3 + 120) = 0;
    return;
  }

  *(a3 + 40) = 0;
  v9 = v22;
  if (v22 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v21;
    v21 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_17:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v9)
      {
        return;
      }

      goto LABEL_31;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v12 = v25;
  *(v10 + 16) = v24;
  *v10 = v23;
  v24 = 0;
  v23 = 0uLL;
  *(a3 + 72) = v12;
  *(a3 + 80) = v26;
  *(a3 + 96) = v27;
  v26 = 0uLL;
  v27 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v9)
  {
    return;
  }

LABEL_31:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }
}

void sub_27134B03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27134B074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 24))(a2))
  {
    v6 = (*(*a2 + 56))(a2);
    v7 = v6[1];
    v11 = *v6;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a3 + 16);
    v10 = *(a3 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  return a1;
}

void sub_27134B410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_271396310(va2);
  sub_2714FBE4C(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27134B434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2714FBE4C(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27134B488(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881067E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27134B4DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

size_t sub_27134B55C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288130AC8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_27134B650(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 >= 0xD || ((0x19EFu >> v2) & 1) == 0)
  {
    sub_27183428C(v2);
  }

  return *(a1 + 2) / qword_27188BFD0[v2];
}

void *sub_27134B728(void *a1, void *a2)
{
  sub_271120E64(a1, "{", 1);
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = sub_271120E64(a1, "{label = ", 9);
    v6 = *(v4 + 16);
    switch(v6)
    {
      case 'f':
        v7 = "Confidence";
        v8 = 10;
        break;
      case 'e':
        v7 = "Material";
        v8 = 8;
        break;
      case 'd':
        v7 = "Semantic";
        v8 = 8;
        break;
      default:
        v7 = "unknown label";
        v8 = 13;
        break;
    }

    v9 = sub_271120E64(v5, v7, v8);
    sub_271120E64(v9, ", list = ", 9);
    operator new();
  }

  return sub_271120E64(a1, "}", 1);
}

void sub_27134D0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_271130878(&a25);
  v38 = a18;
  a18 = 0;
  if (!v38)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(&a18, v38);
  _Unwind_Resume(a1);
}

uint64_t sub_27134D368(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_271354130(&v19, &v20);
      std::logic_error::logic_error(exception, &v19);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 2);
    if (v6)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 * v6 != -1)
    {
      a5 = a4;
      goto LABEL_27;
    }

    v8 = a4;
    v9 = result;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_26;
      }

      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v17 = *v12;
      v16 = *(v12 + 8);
      v12 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v12 != v13);
LABEL_25:
    if (byte_28087C430)
    {
LABEL_26:
      qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      a5 = v8;
      result = v9;
      goto LABEL_27;
    }

LABEL_29:
    abort();
  }

  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 2);
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (v7 * v6 == -1)
  {
    v8 = a5;
    v9 = result;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_26;
      }

      v10 = qword_28087C408;
      v11 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v10 = qword_28087C408;
      v11 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v15 = *v10;
      v14 = *(v10 + 8);
      v10 += 16;
      v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    goto LABEL_25;
  }

LABEL_27:
  *a5 = result;
  *(a5 + 8) = (v6 << 32) | 3;
  *(a5 + 16) = (v7 << 32) | 1;
  *(a5 + 24) = v6;
  *(a5 + 28) = v7;
  return result;
}

void sub_27134D660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_27134D698(uint64_t result, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a4 == 2)
  {
    v5 = a3 - a2;
    v9 = *(result + 224);
    if (!v9)
    {
LABEL_16:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v7 = v9;
        v10 = *(v9 + 16);
        if (v10 <= a5)
        {
          break;
        }

        v9 = *v7;
        if (!*v7)
        {
          goto LABEL_16;
        }
      }

      if (v10 >= a5)
      {
        break;
      }

      v9 = v7[1];
      if (!v9)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (a4 != 1)
    {
      __cxa_allocate_exception(0x10uLL);
      sub_271354888();
    }

    v5 = a3 - a2;
    v6 = *(result + 200);
    if (!v6)
    {
LABEL_9:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v7 = v6;
        v8 = *(v6 + 16);
        if (v8 <= a5)
        {
          break;
        }

        v6 = *v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a5)
      {
        break;
      }

      v6 = v7[1];
      if (!v6)
      {
        goto LABEL_9;
      }
    }
  }

  *(v7 + 40) = 0;
  v7[6] = a2;
  v7[7] = v5;
  return result;
}

void sub_27134D8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if (v22)
    {
LABEL_8:
      __cxa_free_exception(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (v22)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27134D924(uint64_t a1)
{
  sub_27118E634(a1 + 216, *(a1 + 224));
  sub_27118E634(a1 + 192, *(a1 + 200));
  return a1;
}

BOOL sub_27134D960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *a1 = 0;
    *(a1 + 8) = xmmword_271856B50;
    *(a1 + 24) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *a1 = 0;
    *(a1 + 8) = xmmword_271856B50;
    *(a1 + 24) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *a1 = a2;
  *(a1 + 8) = (a3 << 32) | 3;
  *(a1 + 16) = (v4 << 32) | 1;
  *(a1 + 24) = a3;
  *(a1 + 28) = v3;
  return 1;
}

BOOL sub_27134DB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = xmmword_271856B50;
    *(a1 + 56) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = xmmword_271856B50;
    *(a1 + 56) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 32) = a2;
  *(a1 + 40) = (a3 << 32) | 3;
  *(a1 + 48) = (v4 << 32) | 1;
  *(a1 + 56) = a3;
  *(a1 + 60) = v3;
  return 1;
}

BOOL sub_27134DCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = xmmword_271856B50;
    *(a1 + 88) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = xmmword_271856B50;
    *(a1 + 88) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 64) = a2;
  *(a1 + 72) = (a3 << 32) | 3;
  *(a1 + 80) = (v4 << 32) | 1;
  *(a1 + 88) = a3;
  *(a1 + 92) = v3;
  return 1;
}

BOOL sub_27134DEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = xmmword_271856B50;
    *(a1 + 120) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = xmmword_271856B50;
    *(a1 + 120) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 96) = a2;
  *(a1 + 104) = (a3 << 32) | 3;
  *(a1 + 112) = (v4 << 32) | 1;
  *(a1 + 120) = a3;
  *(a1 + 124) = v3;
  return 1;
}

BOOL sub_27134E060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = xmmword_271856B50;
    *(a1 + 152) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = xmmword_271856B50;
    *(a1 + 152) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 128) = a2;
  *(a1 + 136) = (a3 << 32) | 3;
  *(a1 + 144) = (v4 << 32) | 1;
  *(a1 + 152) = a3;
  *(a1 + 156) = v3;
  return 1;
}

BOOL sub_27134E220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = xmmword_271856B50;
    *(a1 + 184) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = xmmword_271856B50;
    *(a1 + 184) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 160) = a2;
  *(a1 + 168) = (a3 << 32) | 3;
  *(a1 + 176) = (v4 << 32) | 1;
  *(a1 + 184) = a3;
  *(a1 + 188) = v3;
  return 1;
}

uint64_t sub_27134E3E0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a5 >= 0xD || ((0x19EFu >> a5) & 1) == 0)
      {
        sub_27183428C(a5);
      }

      v6 = qword_27188BFD0[a5] * a3;
      v7 = a1[25];
      if (!v7)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = *(v7 + 16);
          if (v9 <= a4)
          {
            break;
          }

          v7 = *v8;
          if (!*v8)
          {
            goto LABEL_11;
          }
        }

        if (v9 >= a4)
        {
          break;
        }

        v7 = v8[1];
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      *(v8 + 40) = a5;
      result = 1;
      v8[6] = a2;
      v8[7] = v6;
    }

    else
    {
      v20 = a1 + 25;
      result = a1[25];
      if (result)
      {
        v21 = a1 + 25;
        v22 = a1[25];
        do
        {
          v23 = *(v22 + 32);
          v16 = v23 >= a4;
          v24 = v23 < a4;
          if (v16)
          {
            v21 = v22;
          }

          v22 = *(v22 + 8 * v24);
        }

        while (v22);
        if (v21 != v20 && *(v21 + 16) <= a4)
        {
          v25 = v21[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            v30 = v21;
            do
            {
              v26 = v30[2];
              v28 = *v26 == v30;
              v30 = v26;
            }

            while (!v28);
          }

          if (a1[24] == v21)
          {
            a1[24] = v26;
          }

          --a1[26];
          sub_271128F64(result, v21);
          operator delete(v21);
        }

        return 0;
      }
    }
  }

  else
  {
    v12 = a1 + 25;
    v11 = a1[25];
    if (v11)
    {
      v13 = a1 + 25;
      v14 = a1[25];
      do
      {
        v15 = *(v14 + 32);
        v16 = v15 >= a4;
        v17 = v15 < a4;
        if (v16)
        {
          v13 = v14;
        }

        v14 = *(v14 + 8 * v17);
      }

      while (v14);
      if (v13 != v12 && *(v13 + 16) <= a4)
      {
        v18 = v13[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          v27 = v13;
          do
          {
            v19 = v27[2];
            v28 = *v19 == v27;
            v27 = v19;
          }

          while (!v28);
        }

        v29 = a3;
        if (a1[24] == v13)
        {
          a1[24] = v19;
        }

        --a1[26];
        sub_271128F64(v11, v13);
        operator delete(v13);
        a3 = v29;
      }
    }

    return a3 == 0;
  }

  return result;
}

uint64_t sub_27134E688(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a5 >= 0xD || ((0x19EFu >> a5) & 1) == 0)
      {
        sub_27183428C(a5);
      }

      v6 = qword_27188BFD0[a5] * a3;
      v7 = a1[28];
      if (!v7)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = *(v7 + 16);
          if (v9 <= a4)
          {
            break;
          }

          v7 = *v8;
          if (!*v8)
          {
            goto LABEL_11;
          }
        }

        if (v9 >= a4)
        {
          break;
        }

        v7 = v8[1];
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      *(v8 + 40) = a5;
      result = 1;
      v8[6] = a2;
      v8[7] = v6;
    }

    else
    {
      v20 = a1 + 28;
      result = a1[28];
      if (result)
      {
        v21 = a1 + 28;
        v22 = a1[28];
        do
        {
          v23 = *(v22 + 32);
          v16 = v23 >= a4;
          v24 = v23 < a4;
          if (v16)
          {
            v21 = v22;
          }

          v22 = *(v22 + 8 * v24);
        }

        while (v22);
        if (v21 != v20 && *(v21 + 16) <= a4)
        {
          v25 = v21[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            v30 = v21;
            do
            {
              v26 = v30[2];
              v28 = *v26 == v30;
              v30 = v26;
            }

            while (!v28);
          }

          if (a1[27] == v21)
          {
            a1[27] = v26;
          }

          --a1[29];
          sub_271128F64(result, v21);
          operator delete(v21);
        }

        return 0;
      }
    }
  }

  else
  {
    v12 = a1 + 28;
    v11 = a1[28];
    if (v11)
    {
      v13 = a1 + 28;
      v14 = a1[28];
      do
      {
        v15 = *(v14 + 32);
        v16 = v15 >= a4;
        v17 = v15 < a4;
        if (v16)
        {
          v13 = v14;
        }

        v14 = *(v14 + 8 * v17);
      }

      while (v14);
      if (v13 != v12 && *(v13 + 16) <= a4)
      {
        v18 = v13[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          v27 = v13;
          do
          {
            v19 = v27[2];
            v28 = *v19 == v27;
            v27 = v19;
          }

          while (!v28);
        }

        v29 = a3;
        if (a1[27] == v13)
        {
          a1[27] = v19;
        }

        --a1[29];
        sub_271128F64(v11, v13);
        operator delete(v13);
        a3 = v29;
      }
    }

    return a3 == 0;
  }

  return result;
}

void sub_27134E930(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *(a1 + 208);
  if (v5 > a2)
  {
    v6 = *(a1 + 192);
    if ((a2 & 0x8000000000000000) != 0)
    {
      do
      {
        v12 = *v6;
        if (*v6)
        {
          do
          {
            v7 = v12;
            v12 = v12[1];
          }

          while (v12);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v10 = *v7 == v6;
            v6 = v7;
          }

          while (v10);
        }

        v6 = v7;
      }

      while (!__CFADD__(v3++, 1));
    }

    else if (a2)
    {
      do
      {
        v9 = v6[1];
        if (v9)
        {
          do
          {
            v7 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v10 = *v7 == v6;
            v6 = v7;
          }

          while (!v10);
        }

        v6 = v7;
      }

      while (v3-- > 1);
    }

    else
    {
      v7 = *(a1 + 192);
    }

    *a3 = *(v7 + 16);
    *(a3 + 120) = 1;
    return;
  }

  v39 = 0;
  v42 = v38;
  v43 = "given index is ";
  v44 = v38;
  v45 = "given index is ";
  v46 = "given index is ";
  v40.__r_.__value_.__r.__words[0] = &v42;
  sub_27123B448(&v40);
  std::to_string(&v40, v3);
  v42 = v38;
  v43 = &v40;
  v44 = v38;
  v45 = &v40;
  v46 = &v40;
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v41 = &v42;
  (off_288130B58[v39])(&v41, v38);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v42 = v38;
  v43 = " but mesh contains only ";
  v44 = v38;
  v45 = " but mesh contains only ";
  v46 = " but mesh contains only ";
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v40.__r_.__value_.__r.__words[0] = &v42;
  (*(&off_288130D48 + v39))(&v40, v38);
  std::to_string(&v40, v5);
  v42 = v38;
  v43 = &v40;
  v44 = v38;
  v45 = &v40;
  v46 = &v40;
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v41 = &v42;
  (off_288130B58[v39])(&v41, v38);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v42 = v38;
  v43 = " vertex label lists";
  v44 = v38;
  v45 = " vertex label lists";
  v46 = " vertex label lists";
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v40.__r_.__value_.__r.__words[0] = &v42;
  (*(&off_288130CA0 + v39))(&v40, v38);
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v42 = &v40;
  (off_288130B70[v39])(v16, &v42, v38);
  if (v39 != -1)
  {
    (off_288130B28[v39])(&v42, v38);
  }

  if (SHIBYTE(v17) < 0)
  {
    sub_271127178(v18, v16[0], v16[1]);
  }

  else
  {
    *v18 = *v16;
    v19 = v17;
  }

  v20 = 1;
  LOBYTE(v21) = 0;
  v25 = 0;
  v26 = 1;
  sub_27112D480(0x11u, v18, &v27);
  *a3 = v27;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v37 == 1)
  {
    *(a3 + 40) = 0;
    v13 = v30;
    if (v30 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v29;
      v29 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v14 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
LABEL_37:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v13)
        {
          goto LABEL_44;
        }

LABEL_42:
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_44;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v14 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v15 = v33;
    *(v14 + 16) = v32;
    *v14 = v31;
    v31 = 0uLL;
    *(a3 + 72) = v15;
    *(a3 + 80) = v34;
    *(a3 + 96) = v35;
    v32 = 0;
    v34 = 0uLL;
    v35 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v13)
    {
      goto LABEL_42;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_44:
  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v20 == 1 && SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_27134EDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27134EE30(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *(a1 + 232);
  if (v5 > a2)
  {
    v6 = *(a1 + 216);
    if ((a2 & 0x8000000000000000) != 0)
    {
      do
      {
        v12 = *v6;
        if (*v6)
        {
          do
          {
            v7 = v12;
            v12 = v12[1];
          }

          while (v12);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v10 = *v7 == v6;
            v6 = v7;
          }

          while (v10);
        }

        v6 = v7;
      }

      while (!__CFADD__(v3++, 1));
    }

    else if (a2)
    {
      do
      {
        v9 = v6[1];
        if (v9)
        {
          do
          {
            v7 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v10 = *v7 == v6;
            v6 = v7;
          }

          while (!v10);
        }

        v6 = v7;
      }

      while (v3-- > 1);
    }

    else
    {
      v7 = *(a1 + 216);
    }

    *a3 = *(v7 + 16);
    *(a3 + 120) = 1;
    return;
  }

  v39 = 0;
  v42 = v38;
  v43 = "given index is ";
  v44 = v38;
  v45 = "given index is ";
  v46 = "given index is ";
  v40.__r_.__value_.__r.__words[0] = &v42;
  sub_27123B448(&v40);
  std::to_string(&v40, v3);
  v42 = v38;
  v43 = &v40;
  v44 = v38;
  v45 = &v40;
  v46 = &v40;
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v41 = &v42;
  (off_288130B58[v39])(&v41, v38);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v42 = v38;
  v43 = " but mesh contains only ";
  v44 = v38;
  v45 = " but mesh contains only ";
  v46 = " but mesh contains only ";
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v40.__r_.__value_.__r.__words[0] = &v42;
  (*(&off_288130D48 + v39))(&v40, v38);
  std::to_string(&v40, v5);
  v42 = v38;
  v43 = &v40;
  v44 = v38;
  v45 = &v40;
  v46 = &v40;
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v41 = &v42;
  (off_288130B58[v39])(&v41, v38);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v42 = v38;
  v43 = " face label lists";
  v44 = v38;
  v45 = " face label lists";
  v46 = " face label lists";
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v40.__r_.__value_.__r.__words[0] = &v42;
  (*(&off_288130D60 + v39))(&v40, v38);
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v42 = &v40;
  (off_288130B70[v39])(v16, &v42, v38);
  if (v39 != -1)
  {
    (off_288130B28[v39])(&v42, v38);
  }

  if (SHIBYTE(v17) < 0)
  {
    sub_271127178(v18, v16[0], v16[1]);
  }

  else
  {
    *v18 = *v16;
    v19 = v17;
  }

  v20 = 1;
  LOBYTE(v21) = 0;
  v25 = 0;
  v26 = 1;
  sub_27112D480(0x11u, v18, &v27);
  *a3 = v27;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v37 == 1)
  {
    *(a3 + 40) = 0;
    v13 = v30;
    if (v30 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v29;
      v29 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v14 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
LABEL_37:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v13)
        {
          goto LABEL_44;
        }

LABEL_42:
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_44;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v14 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v15 = v33;
    *(v14 + 16) = v32;
    *v14 = v31;
    v31 = 0uLL;
    *(a3 + 72) = v15;
    *(a3 + 80) = v34;
    *(a3 + 96) = v35;
    v32 = 0;
    v34 = 0uLL;
    v35 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v13)
    {
      goto LABEL_42;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_44:
  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v20 == 1 && SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_27134F2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27134F330(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 12);
  if (v3 != *(a2 + 12))
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    v4 = v2 - 1;
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    v7 = *a1;
    v8 = *a2;
    v9 = v3 - 1;
    if (v9)
    {
      v10 = 4 * *(a1 + 20);
      v11 = 4 * *(a2 + 20);
      if (v4)
      {
        v12 = 0;
LABEL_7:
        v13 = v8;
        v14 = v7;
        v15 = v4;
        while (*v14 == *v13)
        {
          v14 += v5;
          v13 += v6;
          if (!--v15)
          {
            if (*v14 != *v13)
            {
              return 0;
            }

            v7 = (v7 + v10);
            v8 = (v8 + v11);
            if (++v12 == v9)
            {
LABEL_19:
              while (*v7 == *v8)
              {
                v7 += v5;
                v8 += v6;
                if (!--v4)
                {
                  goto LABEL_21;
                }
              }

              return 0;
            }

            goto LABEL_7;
          }
        }
      }

      else
      {
        while (*v7 == *v8)
        {
          v7 = (v7 + v10);
          v8 = (v8 + v11);
          if (!--v9)
          {
            goto LABEL_21;
          }
        }
      }

      return 0;
    }

    if (v4)
    {
      goto LABEL_19;
    }

LABEL_21:
    if (*v7 != *v8)
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  v16 = *(a1 + 40);
  if (v16 != *(a2 + 40))
  {
    return 0;
  }

  v17 = *(a1 + 44);
  if (v17 != *(a2 + 44))
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    v18 = v16 - 1;
    v19 = *(a1 + 48);
    v20 = *(a2 + 48);
    v21 = *(a1 + 32);
    v22 = *(a2 + 32);
    v23 = v17 - 1;
    if (v23)
    {
      v24 = 4 * *(a1 + 52);
      v25 = 4 * *(a2 + 52);
      if (v18)
      {
        v26 = 0;
LABEL_28:
        v27 = v22;
        v28 = v21;
        v29 = v18;
        while (*v28 == *v27)
        {
          v28 += v19;
          v27 += v20;
          if (!--v29)
          {
            if (*v28 != *v27)
            {
              return 0;
            }

            v21 = (v21 + v24);
            v22 = (v22 + v25);
            if (++v26 == v23)
            {
LABEL_40:
              while (*v21 == *v22)
              {
                v21 += v19;
                v22 += v20;
                if (!--v18)
                {
                  goto LABEL_42;
                }
              }

              return 0;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
        while (*v21 == *v22)
        {
          v21 = (v21 + v24);
          v22 = (v22 + v25);
          if (!--v23)
          {
            goto LABEL_42;
          }
        }
      }

      return 0;
    }

    if (v18)
    {
      goto LABEL_40;
    }

LABEL_42:
    if (*v21 != *v22)
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  v30 = *(a1 + 136);
  if (v30 != *(a2 + 136))
  {
    return 0;
  }

  v31 = *(a1 + 140);
  if (v31 != *(a2 + 140))
  {
    return 0;
  }

  if (*(a1 + 152))
  {
    v32 = v30 - 1;
    v33 = *(a1 + 144);
    v34 = *(a2 + 144);
    v35 = *(a1 + 128);
    v36 = *(a2 + 128);
    v37 = v31 - 1;
    if (v37)
    {
      v38 = 4 * *(a1 + 148);
      v39 = 4 * *(a2 + 148);
      if (v32)
      {
        v40 = 0;
LABEL_49:
        v41 = v36;
        v42 = v35;
        v43 = v32;
        while (*v42 == *v41)
        {
          v42 += v33;
          v41 += v34;
          if (!--v43)
          {
            if (*v42 != *v41)
            {
              return 0;
            }

            v35 = (v35 + v38);
            v36 = (v36 + v39);
            if (++v40 == v37)
            {
LABEL_61:
              while (*v35 == *v36)
              {
                v35 += v33;
                v36 += v34;
                if (!--v32)
                {
                  goto LABEL_63;
                }
              }

              return 0;
            }

            goto LABEL_49;
          }
        }
      }

      else
      {
        while (*v35 == *v36)
        {
          v35 = (v35 + v38);
          v36 = (v36 + v39);
          if (!--v37)
          {
            goto LABEL_63;
          }
        }
      }

      return 0;
    }

    if (v32)
    {
      goto LABEL_61;
    }

LABEL_63:
    if (*v35 != *v36)
    {
      return 0;
    }
  }

  else if (*(a2 + 152))
  {
    return 0;
  }

  v44 = *(a1 + 168);
  if (v44 != *(a2 + 168))
  {
    return 0;
  }

  v45 = *(a1 + 172);
  if (v45 != *(a2 + 172))
  {
    return 0;
  }

  v96 = a2;
  if (*(a1 + 184))
  {
    v46 = v44 - 1;
    v47 = *(a1 + 176);
    v48 = *(a2 + 176);
    v49 = *(a1 + 160);
    v50 = *(a2 + 160);
    v51 = v45 - 1;
    if (v51)
    {
      v52 = 4 * *(a1 + 180);
      v53 = 4 * *(a2 + 180);
      if (v46)
      {
        v54 = 0;
LABEL_70:
        v55 = v50;
        v56 = v49;
        v57 = v46;
        while (*v56 == *v55)
        {
          v56 += v47;
          v55 += v48;
          if (!--v57)
          {
            if (*v56 != *v55)
            {
              return 0;
            }

            v49 = (v49 + v52);
            v50 = (v50 + v53);
            if (++v54 != v51)
            {
              goto LABEL_70;
            }

            goto LABEL_79;
          }
        }
      }

      else
      {
        while (*v49 == *v50)
        {
          v49 = (v49 + v52);
          v50 = (v50 + v53);
          if (!--v51)
          {
            goto LABEL_85;
          }
        }
      }

      return 0;
    }

    if (v46)
    {
LABEL_79:
      a2 = v96;
      while (*v49 == *v50)
      {
        v49 += v47;
        v50 += v48;
        if (!--v46)
        {
          goto LABEL_85;
        }
      }

      return 0;
    }

LABEL_85:
    if (*v49 != *v50)
    {
      return 0;
    }
  }

  else if (*(a2 + 184))
  {
    return 0;
  }

  v58 = *(a1 + 72);
  if (v58 != *(a2 + 72))
  {
    return 0;
  }

  v59 = *(a1 + 76);
  if (v59 != *(a2 + 76))
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    v60 = v58 - 1;
    v61 = *(a1 + 80);
    v62 = *(v96 + 80);
    v63 = *(a1 + 64);
    v64 = *(v96 + 64);
    v65 = v59 - 1;
    if (v65)
    {
      v66 = 4 * *(a1 + 84);
      v67 = 4 * *(v96 + 84);
      if (v60)
      {
        v68 = 0;
LABEL_92:
        v69 = v64;
        v70 = v63;
        v71 = v60;
        while (*v70 == *v69)
        {
          v70 += v61;
          v69 += v62;
          if (!--v71)
          {
            if (*v70 != *v69)
            {
              return 0;
            }

            v63 = (v63 + v66);
            v64 = (v64 + v67);
            if (++v68 == v65)
            {
LABEL_104:
              while (*v63 == *v64)
              {
                v63 += v61;
                v64 += v62;
                if (!--v60)
                {
                  goto LABEL_106;
                }
              }

              return 0;
            }

            goto LABEL_92;
          }
        }
      }

      else
      {
        while (*v63 == *v64)
        {
          v63 = (v63 + v66);
          v64 = (v64 + v67);
          if (!--v65)
          {
            goto LABEL_106;
          }
        }
      }

      return 0;
    }

    if (v60)
    {
      goto LABEL_104;
    }

LABEL_106:
    v74 = *v63 == *v64;
    v72 = a1;
    v73 = v96;
    if (!v74)
    {
      return 0;
    }
  }

  else
  {
    v72 = a1;
    v73 = v96;
    if (*(v96 + 88))
    {
      return 0;
    }
  }

  v75 = v72[26];
  if (v75 != *(v73 + 104))
  {
    return 0;
  }

  v76 = v72[27];
  if (v76 != *(v73 + 108))
  {
    return 0;
  }

  if (!v72[30])
  {
    v91 = v96;
    if (!*(v96 + 120))
    {
      goto LABEL_130;
    }

    return 0;
  }

  v77 = v75 - 1;
  v78 = *(a1 + 112);
  v79 = *(v96 + 112);
  v80 = *(a1 + 96);
  v81 = *(v96 + 96);
  v82 = v76 - 1;
  if (v82)
  {
    v83 = *(a1 + 116);
    v84 = *(v96 + 116);
    if (v77)
    {
      v85 = 0;
      v86 = 4 * v83;
      v87 = 4 * v84;
LABEL_114:
      v88 = v81;
      v89 = v80;
      v90 = v77;
      while (*v89 == *v88)
      {
        v89 += v78;
        v88 += v79;
        if (!--v90)
        {
          if (*v89 != *v88)
          {
            return 0;
          }

          v80 = (v80 + v86);
          v81 = (v81 + v87);
          if (++v85 == v82)
          {
LABEL_123:
            while (*v80 == *v81)
            {
              v80 += v78;
              v81 += v79;
              if (!--v77)
              {
                goto LABEL_128;
              }
            }

            return 0;
          }

          goto LABEL_114;
        }
      }
    }

    else
    {
      while (*v80 == *v81)
      {
        v80 += v83;
        v81 += v84;
        if (!--v82)
        {
          goto LABEL_128;
        }
      }
    }

    return 0;
  }

  if (v77)
  {
    goto LABEL_123;
  }

LABEL_128:
  v74 = *v80 == *v81;
  v91 = v96;
  if (!v74)
  {
    return 0;
  }

LABEL_130:
  if (!sub_27134FAB8((a1 + 192), *(v91 + 192), *(v91 + 208)))
  {
    return 0;
  }

  v92 = *(v96 + 216);
  v93 = *(v96 + 232);

  return sub_27134FAB8((a1 + 216), v92, v93);
}

uint64_t sub_27134FAB8(void *a1, void *a2, uint64_t a3)
{
  if (a1[2] == a3)
  {
    v5 = *a1;
    v3 = a1 + 1;
    v4 = v5;
    if (v5 == v3)
    {
      return 1;
    }

    while (*(v4 + 16) == *(a2 + 16))
    {
      if (*(v4 + 40) != *(a2 + 40))
      {
        break;
      }

      v6 = v4[7];
      if (v6 != a2[7])
      {
        break;
      }

      if (v6)
      {
        v7 = v4[6];
        v8 = a2[6];
        if (v7 != v8)
        {
          v9 = v6 - 1;
          do
          {
            v10 = v9;
            if (*v7 != *v8)
            {
              return 0;
            }

            ++v7;
            ++v8;
            --v9;
          }

          while (v10);
        }
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v14 = a2[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = a2[2];
          v13 = *v15 == a2;
          a2 = v15;
        }

        while (!v13);
      }

      a2 = v15;
      v4 = v12;
      if (v12 == v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_27134FBB4(int *a1)
{
  v4[4] = xmmword_279E2F530;
  v4[5] = *&off_279E2F540;
  v4[6] = xmmword_279E2F550;
  v4[7] = *&off_279E2F560;
  v4[0] = xmmword_279E2F4F0;
  v4[1] = *&off_279E2F500;
  v4[2] = xmmword_279E2F510;
  v4[3] = *&off_279E2F520;
  v3 = 0;
  sub_271120E64(a1, "{", 1);
  v2[0] = &v3;
  v2[1] = a1;
  v2[2] = v4;
  sub_271354BC8(v2);
}

void sub_271350224(_Unwind_Exception *exception_object)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_271350260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v138 = *MEMORY[0x277D85DE8];
  v5 = sub_27171CBE8(1uLL);
  sub_27171ABA4(&v91, v5);
  if (*(a1 + 24))
  {
    v6 = *(a1 + 12);
    v7 = v91;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v92 - v91) >> 2);
    if (v6 <= v8)
    {
      if (v6 < v8)
      {
        v92 = &v91[12 * v6];
      }
    }

    else
    {
      sub_271356124(&v91, v6 - v8);
      v7 = v91;
      v6 = *(a1 + 12);
    }

    if (v6)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    if (v6)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    *&v123 = v7;
    *(&v123 + 1) = (v6 << 32) | 3;
    *&v124 = (v10 << 32) | 1;
    *(&v124 + 1) = __PAIR64__(v9, v6);
    if (v9 * v6 != -1)
    {
      goto LABEL_21;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v11 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_20:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_21:
        sub_271356458(a1, &v123);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v11 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_256;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v11);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_20;
  }

LABEL_22:
  v89 = a2;
  v14 = v91;
  v13 = v92;
  if (!*(a1 + 56))
  {
    goto LABEL_56;
  }

  v15 = *(a1 + 44);
  v16 = __dst;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((v98 - __dst) >> 2);
  if (v15 <= v17)
  {
    if (v15 < v17)
    {
      v98 = __dst + 12 * v15;
    }
  }

  else
  {
    sub_2713565E0(&__dst, v15 - v17);
    v16 = __dst;
    LODWORD(v15) = *(a1 + 44);
  }

  if (v15)
  {
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  if (v18 * v15 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_38:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_39;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_256;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_38;
    }

LABEL_256:
    abort();
  }

LABEL_39:
  if (*(a1 + 48) == 1)
  {
    v21 = *(a1 + 52);
    v22 = *(a1 + 40);
    if (v21 == v18 && v21 == v22)
    {
      if (*(a1 + 44) * v18)
      {
        memmove(v16, *(a1 + 32), 4 * (*(a1 + 44) * v18));
      }
    }

    else if (v22)
    {
      v27 = *(a1 + 44);
      if (v27)
      {
        v28 = *(a1 + 32);
        v29 = 4 * v22;
        v30 = v27 - 1;
        if (v27 != 1)
        {
          v31 = 4 * v21;
          v32 = 4 * v18;
          do
          {
            memmove(v16, v28, v29);
            v28 += v31;
            v16 = (v16 + v32);
            --v30;
          }

          while (v30);
        }

        memmove(v16, v28, v29);
      }
    }
  }

  else if (*(a1 + 40))
  {
    v23 = *(a1 + 44);
    if (v23)
    {
      v24 = *(a1 + 32);
      v25 = v23 - 1;
      if (v25)
      {
        v26 = 4 * *(a1 + 52);
        do
        {
          *v16 = *v24;
          v16[1] = v24[1];
          v16[2] = v24[2];
          v24 = (v24 + v26);
          v16 += v18;
          --v25;
        }

        while (v25);
      }

      *v16 = *v24;
      v16[1] = v24[1];
      v16[2] = v24[2];
    }
  }

LABEL_56:
  if (v98 != __dst)
  {
    v33 = 0;
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 2);
    v35 = (__dst + 8);
    v36 = 1;
    while (1)
    {
      if (v34 <= *(v35 - 2))
      {
        v36 = 0;
        goto LABEL_72;
      }

      if (v34 <= *(v35 - 1))
      {
        goto LABEL_72;
      }

      if (v34 <= *v35)
      {
        break;
      }

      ++v33;
      v35 += 3;
      if (0xAAAAAAAAAAAAAAABLL * ((v98 - __dst) >> 2) == v33)
      {
        goto LABEL_62;
      }
    }

    v36 = 2;
LABEL_72:
    LODWORD(v137) = 0;
    *&v107 = &v135;
    *(&v107 + 1) = "Mesh face ";
    *&v108 = &v135;
    *(&v108 + 1) = "Mesh face ";
    v109 = "Mesh face ";
    v122.__r_.__value_.__r.__words[0] = &v107;
    sub_2712C4188(&v122);
    std::to_string(&v122, v33);
    *&v107 = &v135;
    *(&v107 + 1) = &v122;
    *&v108 = &v135;
    *(&v108 + 1) = &v122;
    v109 = &v122;
    if (v137 == -1)
    {
      sub_2711308D4();
    }

    v118[0] = &v107;
    (off_288130B58[v137])(v118, &v135);
    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v122.__r_.__value_.__l.__data_);
    }

    *&v107 = &v135;
    *(&v107 + 1) = " coordinate ";
    *&v108 = &v135;
    *(&v108 + 1) = " coordinate ";
    v109 = " coordinate ";
    if (v137 == -1)
    {
      sub_2711308D4();
    }

    v122.__r_.__value_.__r.__words[0] = &v107;
    (*(&off_288130B88 + v137))(&v122, &v135);
    std::to_string(&v122, v36);
    *&v107 = &v135;
    *(&v107 + 1) = &v122;
    *&v108 = &v135;
    *(&v108 + 1) = &v122;
    v109 = &v122;
    if (v137 == -1)
    {
      sub_2711308D4();
    }

    v118[0] = &v107;
    (off_288130B58[v137])(v118, &v135);
    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v122.__r_.__value_.__l.__data_);
    }

    *&v107 = &v135;
    *(&v107 + 1) = " refers to a vertex which does not exist in the mesh (has only ";
    *&v108 = &v135;
    *(&v108 + 1) = " refers to a vertex which does not exist in the mesh (has only ";
    v109 = " refers to a vertex which does not exist in the mesh (has only ";
    if (v137 == -1)
    {
      sub_2711308D4();
    }

    v122.__r_.__value_.__r.__words[0] = &v107;
    (off_288130C40[v137])(&v122, &v135);
    std::to_string(&v122, 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 2));
    *&v107 = &v135;
    *(&v107 + 1) = &v122;
    *&v108 = &v135;
    *(&v108 + 1) = &v122;
    v109 = &v122;
    if (v137 == -1)
    {
      sub_2711308D4();
    }

    v118[0] = &v107;
    (off_288130B58[v137])(v118, &v135);
    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v122.__r_.__value_.__l.__data_);
    }

    *&v107 = &v135;
    *(&v107 + 1) = " vertices)";
    *&v108 = &v135;
    *(&v108 + 1) = " vertices)";
    v109 = " vertices)";
    if (v137 == -1)
    {
      sub_2711308D4();
    }

    v122.__r_.__value_.__r.__words[0] = &v107;
    (*(&off_288130C28 + v137))(&v122, &v135);
    if (v137 == -1)
    {
      sub_2711308D4();
    }

    *&v107 = &v122;
    (off_288130B70[v137])(&v105, &v107, &v135);
    if (v137 != -1)
    {
      (off_288130B28[v137])(&v107, &v135);
    }

    if (SHIBYTE(v106) < 0)
    {
      sub_271127178(&v107, v105, *(&v105 + 1));
    }

    else
    {
      v107 = v105;
      *&v108 = v106;
    }

    BYTE8(v108) = 1;
    LOBYTE(v109) = 0;
    BYTE8(v114) = 0;
    LOBYTE(v115) = 1;
    sub_27112D480(0x20u, &v107, &v123);
    if (v115 == 1)
    {
      if (BYTE8(v114) == 1)
      {
        if (SBYTE7(v114) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v111) < 0)
        {
          operator delete(v109);
        }
      }

      if (BYTE8(v108) == 1 && SBYTE7(v108) < 0)
      {
        operator delete(v107);
      }
    }

    if (SHIBYTE(v106) < 0)
    {
      operator delete(v105);
    }

    *a3 = v123;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v133 != 1)
    {
      *(a3 + 544) = 0;
      goto LABEL_240;
    }

    *(a3 + 40) = 0;
    v38 = v126;
    if (v126 == 1)
    {
      *(a3 + 16) = v124;
      *(a3 + 32) = v125;
      v125 = 0;
      v124 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v39 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v132 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v39 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v132 & 1) == 0)
      {
LABEL_104:
        *(a3 + 112) = 1;
        *(a3 + 544) = 0;
        if (!v38)
        {
          goto LABEL_240;
        }

        goto LABEL_238;
      }
    }

    v40 = v129;
    *(v39 + 16) = v128;
    *v39 = v127;
    v127 = 0uLL;
    *(a3 + 72) = v40;
    *(a3 + 80) = v130;
    *(a3 + 96) = v131;
    v128 = 0;
    v130 = 0uLL;
    v131 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 544) = 0;
    if (!v38)
    {
      goto LABEL_240;
    }

LABEL_238:
    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124);
    }

    goto LABEL_240;
  }

LABEL_62:
  if (*(a1 + 152) && *(a1 + 184))
  {
    v122.__r_.__value_.__r.__words[0] = "normals";
    sub_271356ED4(&v135, &v122);
    v37 = a3;
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
      v107 = v135;
      *&v108 = v136;
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  if (*(a1 + 88) && *(a1 + 120))
  {
    v122.__r_.__value_.__r.__words[0] = "colors";
    sub_271356ED4(&v135, &v122);
    v37 = a3;
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
      v107 = v135;
      *&v108 = v136;
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  sub_271351C4C(&v123, &v91, (a1 + 128), (a1 + 160), &v95, &v96, "normals");
  if (v134 == 1)
  {
    v107 = v123;
    LOBYTE(v108) = 0;
    v117 = 0;
    if (v133 == 1)
    {
LABEL_116:
      sub_27112F6CC(&v108, &v124);
      v117 = 1;
      *a3 = v107;
      *(a3 + 16) = 0;
      *(a3 + 40) = 0;
      v41 = v110;
      if (v110 == 1)
      {
        *(a3 + 16) = v108;
        *(a3 + 32) = v109;
        v109 = 0;
        v108 = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v42 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v116 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v42 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v116 & 1) == 0)
        {
LABEL_118:
          *(a3 + 112) = 1;
          *(a3 + 544) = 0;
          if (!v41)
          {
            goto LABEL_146;
          }

          goto LABEL_144;
        }
      }

      v46 = v113;
      *(v42 + 16) = __p;
      *v42 = v111;
      v111 = 0uLL;
      *(a3 + 72) = v46;
      *(a3 + 80) = v114;
      *(a3 + 96) = v115;
      __p = 0;
      v114 = 0uLL;
      v115 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 544) = 0;
      if (!v41)
      {
        goto LABEL_146;
      }

LABEL_144:
      if (SHIBYTE(v109) < 0)
      {
        operator delete(v108);
      }

LABEL_146:
      if (v134 != 1)
      {
        goto LABEL_240;
      }

      goto LABEL_231;
    }

LABEL_141:
    *a3 = v123;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    *(a3 + 544) = 0;
    goto LABEL_146;
  }

  sub_271351C4C(&v123, &v91, (a1 + 64), (a1 + 96), &v93, &v94, "colors");
  if (v134 == 1)
  {
    v107 = v123;
    LOBYTE(v108) = 0;
    v117 = 0;
    if (v133 == 1)
    {
      goto LABEL_116;
    }

    goto LABEL_141;
  }

  sub_2713520E4(&v123, a1, &v91, 0x64u, &v99, &v100);
  if ((v134 & 1) == 0)
  {
    v107 = v123;
    LOBYTE(v108) = 0;
    v117 = 0;
    if (v133 == 1)
    {
      goto LABEL_221;
    }

    goto LABEL_225;
  }

  sub_2713520E4(&v123, a1, &v91, 0x65u, &v101, &v102);
  if ((v134 & 1) == 0)
  {
    v107 = v123;
    LOBYTE(v108) = 0;
    v117 = 0;
    if (v133 == 1)
    {
      goto LABEL_221;
    }

LABEL_225:
    *a3 = v123;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    *(a3 + 544) = 0;
    goto LABEL_230;
  }

  v47 = 102;
  v121 = 102;
  v49 = v91;
  v48 = v92;
  v51 = __dst;
  v50 = v98;
  v120 = &v121;
  v119 = &v120;
  v118[0] = &v119;
  v118[1] = &v103;
  v53 = (a1 + 200);
  v52 = *(a1 + 200);
  if (v52)
  {
    v54 = a1 + 200;
    do
    {
      v55 = *(v52 + 32);
      v56 = v55 >= 0x66;
      v57 = v55 < 0x66;
      if (v56)
      {
        v54 = v52;
      }

      v52 = *(v52 + 8 * v57);
    }

    while (v52);
    if (v54 == v53 || *(v54 + 32) > 0x66u)
    {
      v58 = 0;
      v47 = 102;
    }

    else
    {
      v59 = sub_27134B650((v54 + 40));
      if (v60)
      {
        v58 = v59;
      }

      else
      {
        v58 = 0;
      }

      v47 = v121;
    }
  }

  else
  {
    v58 = 0;
  }

  v62 = (a1 + 224);
  v61 = *(a1 + 224);
  if (!v61)
  {
    goto LABEL_176;
  }

  v63 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v51) >> 2);
  v64 = a1 + 224;
  do
  {
    v65 = *(v61 + 32);
    v56 = v65 >= v47;
    v66 = v65 < v47;
    if (v56)
    {
      v64 = v61;
    }

    v61 = *(v61 + 8 * v66);
  }

  while (v61);
  if (v64 != v62 && *(v64 + 32) <= v47)
  {
    v71 = sub_27134B650((v64 + 40));
    if (v72)
    {
      v73 = v71;
    }

    else
    {
      v73 = 0;
    }

    if (v58 && v73)
    {
      sub_271358848();
    }

    if (v58)
    {
      goto LABEL_177;
    }

    if (v73)
    {
      if (v73 > v63)
      {
        sub_271358848();
      }

      v104 = 2;
      v86 = *v62;
      if (!*v62)
      {
        goto LABEL_255;
      }

      v68 = a1 + 224;
      do
      {
        v87 = *(v86 + 32);
        v56 = v87 >= v121;
        v88 = v87 < v121;
        if (v56)
        {
          v68 = v86;
        }

        v86 = *(v86 + 8 * v88);
      }

      while (v86);
      if (v68 == v62 || v121 < *(v68 + 32))
      {
LABEL_255:
        v68 = a1 + 224;
      }

      goto LABEL_188;
    }
  }

  else
  {
LABEL_176:
    if (v58)
    {
LABEL_177:
      if (v58 > 0xAAAAAAAAAAAAAAABLL * ((v48 - v49) >> 2))
      {
        sub_271358848();
      }

      v104 = 1;
      v67 = *v53;
      if (!*v53)
      {
        goto LABEL_187;
      }

      v68 = a1 + 200;
      do
      {
        v69 = *(v67 + 32);
        v56 = v69 >= v121;
        v70 = v69 < v121;
        if (v56)
        {
          v68 = v67;
        }

        v67 = *(v67 + 8 * v70);
      }

      while (v67);
      if (v68 == v53 || v121 < *(v68 + 32))
      {
LABEL_187:
        v68 = a1 + 200;
      }

LABEL_188:
      sub_271358E8C(&v123, v118, v68 + 40);
      goto LABEL_200;
    }
  }

  LOBYTE(v134) = 1;
LABEL_200:
  if (v134)
  {
    v74 = *(a1 + 192);
    if (v74 == v53)
    {
LABEL_202:
      v75 = *(a1 + 216);
      v37 = a3;
      if (v75 == v62)
      {
LABEL_203:
        sub_271352860(&v123, &v91, v89);
      }

      while (*(v75 + 16) - 100 < 3)
      {
        v79 = v75[1];
        if (v79)
        {
          do
          {
            v80 = v79;
            v79 = *v79;
          }

          while (v79);
        }

        else
        {
          do
          {
            v80 = v75[2];
            v78 = *v80 == v75;
            v75 = v80;
          }

          while (!v78);
        }

        v75 = v80;
        if (v80 == v62)
        {
          goto LABEL_203;
        }
      }

      LOWORD(v122.__r_.__value_.__l.__data_) = *(v75 + 16);
      sub_271359484(&v135, &v122);
      if ((SHIBYTE(v136) & 0x80000000) == 0)
      {
        v107 = v135;
        *&v108 = v136;
LABEL_121:
        BYTE8(v108) = 1;
        LOBYTE(v109) = 0;
        BYTE8(v114) = 0;
        LOBYTE(v115) = 1;
        sub_27112D480(0x21u, &v107, &v123);
        if (v115 == 1)
        {
          if (BYTE8(v114) == 1)
          {
            if (SBYTE7(v114) < 0)
            {
              operator delete(__p);
            }

            if (SBYTE7(v111) < 0)
            {
              operator delete(v109);
            }
          }

          if (BYTE8(v108) == 1 && SBYTE7(v108) < 0)
          {
            operator delete(v107);
          }
        }

        if (SHIBYTE(v136) < 0)
        {
          operator delete(v135);
        }

        *v37 = v123;
        *(v37 + 16) = 0;
        *(v37 + 112) = 0;
        if (v133 != 1)
        {
          *(v37 + 544) = 0;
          goto LABEL_240;
        }

        *(v37 + 40) = 0;
        v43 = v126;
        if (v126 == 1)
        {
          *(v37 + 16) = v124;
          *(v37 + 32) = v125;
          v125 = 0;
          v124 = 0uLL;
          *(v37 + 40) = 1;
          *(v37 + 48) = 0;
          v44 = v37 + 48;
          *(v37 + 104) = 0;
          if ((v132 & 1) == 0)
          {
            goto LABEL_135;
          }
        }

        else
        {
          *(v37 + 48) = 0;
          v44 = v37 + 48;
          *(v37 + 104) = 0;
          if ((v132 & 1) == 0)
          {
LABEL_135:
            *(v37 + 112) = 1;
            *(v37 + 544) = 0;
            if (!v43)
            {
              goto LABEL_240;
            }

            goto LABEL_238;
          }
        }

        v45 = v129;
        *(v44 + 16) = v128;
        *v44 = v127;
        v127 = 0uLL;
        *(v37 + 72) = v45;
        *(v37 + 80) = v130;
        *(v37 + 96) = v131;
        v128 = 0;
        v130 = 0uLL;
        v131 = 0;
        *(v37 + 104) = 1;
        *(v37 + 112) = 1;
        *(v37 + 544) = 0;
        if (!v43)
        {
          goto LABEL_240;
        }

        goto LABEL_238;
      }
    }

    else
    {
      while (*(v74 + 16) - 100 < 3)
      {
        v76 = v74[1];
        if (v76)
        {
          do
          {
            v77 = v76;
            v76 = *v76;
          }

          while (v76);
        }

        else
        {
          do
          {
            v77 = v74[2];
            v78 = *v77 == v74;
            v74 = v77;
          }

          while (!v78);
        }

        v74 = v77;
        if (v77 == v53)
        {
          goto LABEL_202;
        }
      }

      LOWORD(v122.__r_.__value_.__l.__data_) = *(v74 + 16);
      sub_271359484(&v135, &v122);
      v37 = a3;
      if ((SHIBYTE(v136) & 0x80000000) == 0)
      {
        v107 = v135;
        *&v108 = v136;
        goto LABEL_121;
      }
    }

LABEL_120:
    sub_271127178(&v107, v135, *(&v135 + 1));
    goto LABEL_121;
  }

  v107 = v123;
  LOBYTE(v108) = 0;
  v117 = 0;
  if (v133 != 1)
  {
    goto LABEL_225;
  }

LABEL_221:
  sub_27112F6CC(&v108, &v124);
  v117 = 1;
  *a3 = v107;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  v81 = v110;
  if (v110 == 1)
  {
    *(a3 + 16) = v108;
    *(a3 + 32) = v109;
    v109 = 0;
    v108 = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v82 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v116 & 1) == 0)
    {
      goto LABEL_223;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v82 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v116 & 1) == 0)
    {
LABEL_223:
      *(a3 + 112) = 1;
      *(a3 + 544) = 0;
      if (!v81)
      {
        goto LABEL_230;
      }

      goto LABEL_228;
    }
  }

  v83 = v113;
  *(v82 + 16) = __p;
  *v82 = v111;
  v111 = 0uLL;
  *(a3 + 72) = v83;
  *(a3 + 80) = v114;
  *(a3 + 96) = v115;
  __p = 0;
  v114 = 0uLL;
  v115 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 544) = 0;
  if (!v81)
  {
    goto LABEL_230;
  }

LABEL_228:
  if (SHIBYTE(v109) < 0)
  {
    operator delete(v108);
  }

LABEL_230:
  if (v134)
  {
    goto LABEL_240;
  }

LABEL_231:
  if (v133 == 1)
  {
    if (v132 == 1)
    {
      if (SHIBYTE(v131) < 0)
      {
        operator delete(v130);
      }

      if (SHIBYTE(v128) < 0)
      {
        operator delete(v127);
      }
    }

    if (v126 == 1)
    {
      goto LABEL_238;
    }
  }

LABEL_240:
  result = sub_271359728(&v91);
  v85 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_271351AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 - 185) < 0)
  {
    operator delete(*(v4 - 208));
  }

  sub_271359728(va);
  _Unwind_Resume(a1);
}

void sub_271351C4C(_BYTE *a1, void *a2, _DWORD *a3, _DWORD *a4, const void **a5, int *a6, uint64_t a7)
{
  if (!a3[6])
  {
    if (!a4[6])
    {
LABEL_57:
      *a1 = 0;
      a1[120] = 0;
      return;
    }

    v16 = a2[15] - a2[14];
    v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 2);
    v18 = a4[3];
    if (v17 != v18)
    {
      sub_271357AFC(&v38, "faces", a7, a4[3], v17);
      *a1 = v38;
      sub_27184A2B4((a1 + 16), v39);
      goto LABEL_24;
    }

    v19 = *a5;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 2);
    if (v17 <= v20)
    {
      if (v17 < v20)
      {
        a5[1] = &v19[v16];
      }
    }

    else
    {
      v21 = a4;
      sub_271356124(a5, v17 - v20);
      a4 = v21;
      v19 = *a5;
      v17 = v21[3];
      LODWORD(v18) = v21[3];
    }

    if (v18)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }

    if (v18)
    {
      v29 = 3;
    }

    else
    {
      v29 = 0;
    }

    *&v38 = v19;
    *(&v38 + 1) = (v17 << 32) | 3;
    v39[0] = ((v29 << 32) | 1);
    v39[1] = __PAIR64__(v28, v18);
    if (v28 * v18 != -1)
    {
LABEL_55:
      sub_271356458(a4, &v38);
      v35 = 2;
      goto LABEL_56;
    }

    v30 = a4;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_54:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a4 = v30;
        goto LABEL_55;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_59;
      }
    }

    do
    {
      v37 = *v31;
      v36 = *(v31 + 8);
      v31 += 16;
      v37(v36, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v31 != v32);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  v9 = a2[1] - *a2;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
  v11 = a3[3];
  if (v10 == v11)
  {
    v12 = *a5;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 2);
    if (v10 <= v13)
    {
      if (v10 < v13)
      {
        a5[1] = &v12[v9];
      }
    }

    else
    {
      v14 = a3;
      sub_271356124(a5, v10 - v13);
      a3 = v14;
      v12 = *a5;
      v10 = v14[3];
      LODWORD(v11) = v14[3];
    }

    if (v11)
    {
      v23 = 3;
    }

    else
    {
      v23 = 0;
    }

    if (v11)
    {
      v24 = 3;
    }

    else
    {
      v24 = 0;
    }

    *&v38 = v12;
    *(&v38 + 1) = (v10 << 32) | 3;
    v39[0] = ((v24 << 32) | 1);
    v39[1] = __PAIR64__(v23, v11);
    if (v23 * v11 != -1)
    {
      goto LABEL_50;
    }

    v25 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v26 = qword_28087C408, v27 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_49:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a3 = v25;
LABEL_50:
        sub_271356458(a3, &v38);
        v35 = 1;
LABEL_56:
        *a6 = v35;
        goto LABEL_57;
      }
    }

    else
    {
      v26 = qword_28087C408;
      v27 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_59;
      }
    }

    do
    {
      v34 = *v26;
      v33 = *(v26 + 8);
      v26 += 16;
      v34(v33, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v26 != v27);
    if (byte_28087C430)
    {
      goto LABEL_49;
    }

LABEL_59:
    abort();
  }

  sub_271357AFC(&v38, "vertices", a7, v11, v10);
  *a1 = v38;
  sub_27184A2B4((a1 + 16), v39);
LABEL_24:
  a1[120] = 1;
  if (v47 == 1)
  {
    if (v46 == 1)
    {
      if (v45 < 0)
      {
        operator delete(__p);
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39[0]);
    }
  }
}

void sub_2713520BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2713520D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713520E4(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, uint64_t **a5, _DWORD *a6)
{
  v6 = result;
  v47 = *MEMORY[0x277D85DE8];
  v46 = a4;
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[14];
  v9 = a3[15];
  v45 = &v46;
  v43[1] = a5;
  v44 = &v45;
  v43[0] = &v44;
  v12 = (a2 + 200);
  v11 = *(a2 + 200);
  if (!v11)
  {
    goto LABEL_9;
  }

  v13 = a2 + 200;
  do
  {
    v14 = *(v11 + 32);
    v15 = v14 >= a4;
    v16 = v14 < a4;
    if (v15)
    {
      v13 = v11;
    }

    v11 = *(v11 + 8 * v16);
  }

  while (v11);
  if (v13 != v12 && *(v13 + 32) <= a4)
  {
    v30 = a6;
    result = sub_27134B650((v13 + 40));
    a6 = v30;
    v32 = v31;
    v33 = a2;
    if (v32)
    {
      v17 = result;
    }

    else
    {
      v17 = 0;
    }

    a4 = v46;
    v34 = *(v33 + 224);
    v18 = (v33 + 224);
    v19 = v34;
    if (!v34)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_9:
    v17 = 0;
    v20 = *(a2 + 224);
    v18 = (a2 + 224);
    v19 = v20;
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2);
  v22 = v18;
  do
  {
    v23 = *(v19 + 32);
    v15 = v23 >= a4;
    v24 = v23 < a4;
    if (v15)
    {
      v22 = v19;
    }

    v19 = *(v19 + 8 * v24);
  }

  while (v19);
  if (v22 == v18 || *(v22 + 16) > a4)
  {
LABEL_27:
    if (!v17)
    {
LABEL_44:
      *(v6 + 120) = 1;
      goto LABEL_45;
    }

LABEL_28:
    if (v17 > 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2))
    {
      sub_271358848();
    }

    *a6 = 1;
    v35 = *v12;
    if (!*v12)
    {
      goto LABEL_38;
    }

    v36 = v12;
    do
    {
      v37 = *(v35 + 32);
      v15 = v37 >= v46;
      v38 = v37 < v46;
      if (v15)
      {
        v36 = v35;
      }

      v35 = *(v35 + 8 * v38);
    }

    while (v35);
    if (v36 == v12 || v46 < *(v36 + 16))
    {
LABEL_38:
      v36 = v12;
    }

    goto LABEL_39;
  }

  v25 = a6;
  v26 = v18;
  result = sub_27134B650(v22 + 40);
  if (v27)
  {
    v28 = result;
  }

  else
  {
    v28 = 0;
  }

  if (v17 && v28)
  {
    sub_271358848();
  }

  a6 = v25;
  if (v17)
  {
    goto LABEL_28;
  }

  if (!v28)
  {
    goto LABEL_44;
  }

  if (v28 > v21)
  {
    sub_271358848();
  }

  *v25 = 2;
  v40 = *v26;
  if (!*v26)
  {
    goto LABEL_54;
  }

  v36 = v26;
  do
  {
    v41 = *(v40 + 32);
    v15 = v41 >= v46;
    v42 = v41 < v46;
    if (v15)
    {
      v36 = v40;
    }

    v40 = *(v40 + 8 * v42);
  }

  while (v40);
  if (v36 == v26 || v46 < *(v36 + 16))
  {
LABEL_54:
    v36 = v26;
  }

LABEL_39:
  result = sub_271358524(v6, v43, (v36 + 40));
LABEL_45:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2713527D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271352860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a3 + 400) != 1)
  {
    LOBYTE(v8) = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    LOBYTE(v12) = 0;
    v13 = 0;
    LOBYTE(v14) = 0;
    v15 = 0;
    LOBYTE(v16) = 0;
    v17 = 0;
    LOBYTE(v6[0]) = 0;
    v7 = 0;
    sub_27153F59C();
  }

  if (*(a3 + 16) == 1)
  {
    v4 = *a3;
    v5 = *(a3 + 8);
    if (*(a3 + 56) != 1)
    {
LABEL_8:
      v18 = v4;
      v19 = v5;
      sub_27113523C(v20, (a3 + 32));
      LOBYTE(v21[0]) = 0;
      v22 = 0;
      sub_27153F59C();
    }
  }

  else
  {
    v20[24] = &unk_28810A440;
    v4 = sub_271815924();
    v5 = 2;
    if (*(a3 + 56) != 1)
    {
      goto LABEL_8;
    }
  }

  sub_2711DAE40((a3 + 32), 1000000000);
  goto LABEL_8;
}

void sub_271353458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_2714FBE4C(&a9);
  sub_271134CBC(&a19);
  _Unwind_Resume(a1);
}

void sub_271353474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_2714FBE4C(&a43);
  sub_271134CBC(v43 + 16);
  _Unwind_Resume(a1);
}

void sub_271353490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271359E50(&STACK[0x2A0]);
  sub_27112F828(va);
  sub_271134CBC(v5 + 16);
  _Unwind_Resume(a1);
}

void sub_2713534B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_271359E50(&STACK[0x2A0]);
  sub_271134CBC(v47 + 16);
  sub_271134CBC(&a47);
  sub_27112F828(&a21);
  if ((a19 & (a18 < 0)) != 0)
  {
    operator delete(__p);
    sub_271134CBC(&a23);
    _Unwind_Resume(a1);
  }

  sub_271134CBC(&a23);
  _Unwind_Resume(a1);
}

void sub_271353588(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 55);
  v5 = *(a1 + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = **v4;
    v7 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811DB58, 0) != 0;
    if (!v5)
    {
LABEL_8:
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_25:
      v75 = 0;
      v76 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_9:
  v8 = *(a1 + 55);
  v9 = *(a1 + 56);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v75 = v8;
  v76 = v9;
  if (!v8)
  {
LABEL_26:
    *&v78.__r_.__value_.__l.__data_ = *"cv3d.viz";
    v78.__r_.__value_.__r.__words[2] = 0x800000000000000;
    v79 = 7;
    sub_2711BE814(&v74, &v78, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&v71, *a1, *(a1 + 1));
    }

    else
    {
      v71 = *a1;
      v72 = *(a1 + 2);
    }

    v73 = *(a1 + 6);
    operator new();
  }

  v10 = *(v8 + 16);
  *v59 = 0;
  *&v59[8] = xmmword_271856B50;
  *&v59[24] = 0;
  *v60 = 0;
  *&v60[8] = xmmword_271856B50;
  *&v60[24] = 0;
  *v61 = 0;
  *&v61[8] = xmmword_271856B50;
  *&v61[24] = 0;
  *v62 = 0;
  *&v62[8] = xmmword_271856B50;
  *&v62[24] = 0;
  *v63 = 0;
  *&v63[8] = xmmword_271856B50;
  *&v63[24] = 0;
  *v64 = 0;
  *&v64[8] = xmmword_271856B50;
  v66 = 0;
  v67 = 0;
  *&v64[24] = 0;
  v65 = &v66;
  v69 = 0;
  v70 = 0;
  v68 = &v69;
  v12 = *v10;
  v11 = v10[1];
  if (*v10 == v11)
  {
    goto LABEL_35;
  }

  v13 = (v11 - v12) >> 2;
  v14 = 0xAAAAAAAAAAAAAAABLL * v13;
  if (-1431655765 * v13)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  if (-1431655765 * v13)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  if (v15 * v14 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_34;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_88;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v18);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_33;
  }

LABEL_34:
  *v59 = v12;
  *&v59[8] = (v14 << 32) | 3;
  *&v59[16] = (v16 << 32) | 1;
  *&v59[24] = v14;
  *&v59[28] = v15;
LABEL_35:
  v20 = v10[14];
  v19 = v10[15];
  if (v20 == v19)
  {
    goto LABEL_52;
  }

  v21 = (v19 - v20) >> 2;
  v22 = 0xAAAAAAAAAAAAAAABLL * v21;
  if (-1431655765 * v21)
  {
    v23 = 3;
  }

  else
  {
    v23 = 0;
  }

  if (-1431655765 * v21)
  {
    v24 = 3;
  }

  else
  {
    v24 = 0;
  }

  if (v23 * v22 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v25 = qword_28087C408, v26 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_50:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_51;
      }
    }

    else
    {
      v25 = qword_28087C408;
      v26 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_88;
      }
    }

    do
    {
      (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v25 += 16;
    }

    while (v25 != v26);
    if (byte_28087C430)
    {
      goto LABEL_50;
    }

LABEL_88:
    abort();
  }

LABEL_51:
  *v60 = v20;
  *&v60[8] = (v22 << 32) | 3;
  *&v60[16] = (v24 << 32) | 1;
  *&v60[24] = v22;
  *&v60[28] = v23;
LABEL_52:
  v27 = v10[9];
  v28 = v10[10];
  if (v27 != v28)
  {
    sub_27134D368(v27, v28, *(v10 + 26), v63, v64, "normals");
  }

  v29 = v10[4];
  v30 = v10[5];
  if (v29 != v30)
  {
    sub_27134D368(v29, v30, *(v10 + 16), v61, v62, "colors");
  }

  v31 = v10[30];
  v32 = v10[31];
  if (v31 != v32)
  {
    sub_27134D698(v59, v31, v32, *(v10 + 68), 0x64u);
  }

  v33 = v10[35];
  v34 = v10[36];
  if (v33 != v34)
  {
    sub_27134D698(v59, v33, v34, *(v10 + 78), 0x65u);
  }

  v36 = v10[40];
  v35 = v10[41];
  if (v36 != v35)
  {
    v37 = *(v10 + 88);
    v77 = 102;
    if (v37 == 2)
    {
      v38 = v35 - v36;
      v42 = v69;
      if (!v69)
      {
LABEL_76:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v40 = v42;
          v43 = *(v42 + 16);
          if (v43 < 0x67)
          {
            break;
          }

          v42 = *v40;
          if (!*v40)
          {
            goto LABEL_76;
          }
        }

        if (v43 == 102)
        {
          break;
        }

        v42 = v40[1];
        if (!v42)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      if (v37 != 1)
      {
        __cxa_allocate_exception(0x10uLL);
        sub_271354888();
      }

      v38 = v35 - v36;
      v39 = v66;
      if (!v66)
      {
LABEL_69:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v40 = v39;
          v41 = *(v39 + 16);
          if (v41 < 0x67)
          {
            break;
          }

          v39 = *v40;
          if (!*v40)
          {
            goto LABEL_69;
          }
        }

        if (v41 == 102)
        {
          break;
        }

        v39 = v40[1];
        if (!v39)
        {
          goto LABEL_69;
        }
      }
    }

    *(v40 + 40) = 11;
    v40[6] = v36;
    v40[7] = v38;
  }

  v44 = *&v63[16];
  *(a2 + 128) = *v63;
  *(a2 + 144) = v44;
  v45 = *&v64[16];
  *(a2 + 160) = *v64;
  *(a2 + 176) = v45;
  v46 = *&v61[16];
  *(a2 + 64) = *v61;
  *(a2 + 80) = v46;
  v47 = *&v62[16];
  *(a2 + 96) = *v62;
  *(a2 + 112) = v47;
  v48 = *&v59[16];
  *a2 = *v59;
  *(a2 + 16) = v48;
  v49 = *&v60[16];
  *(a2 + 32) = *v60;
  *(a2 + 48) = v49;
  v51 = v65;
  v50 = v66;
  *(a2 + 200) = v66;
  v52 = a2 + 200;
  *(a2 + 192) = v51;
  v53 = v67;
  *(a2 + 208) = v67;
  if (v53)
  {
    v50[2] = v52;
    v65 = &v66;
    v66 = 0;
    v67 = 0;
  }

  else
  {
    *(a2 + 192) = v52;
  }

  v55 = v68;
  v54 = v69;
  *(a2 + 224) = v69;
  v56 = a2 + 224;
  *(a2 + 216) = v55;
  v57 = v70;
  *(a2 + 232) = v70;
  if (v57)
  {
    v54[2] = v56;
    v54 = 0;
    v68 = &v69;
    v69 = 0;
    v70 = 0;
  }

  else
  {
    *(a2 + 216) = v56;
  }

  *(a2 + 240) = 1;
  sub_27118E634(&v68, v54);
  sub_27118E634(&v65, v66);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v58 = *MEMORY[0x277D85DE8];
}

void sub_271353FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v7 - 121) < 0)
  {
    operator delete(*(v7 - 144));
  }

  if (*(v7 - 201) < 0)
  {
    operator delete(*(v7 - 224));
    if ((v6 & 1) == 0)
    {
LABEL_8:
      sub_27134D924(va);
      sub_27112F828(v7 - 168);
      _Unwind_Resume(a1);
    }
  }

  else if (!v6)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v5);
  goto LABEL_8;
}

void ****sub_2713540AC(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_271354130(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = v4;
  v7 = "TriMeshData ";
  v8 = v4;
  v9 = "TriMeshData ";
  v10 = "TriMeshData ";
  v11 = &v6;
  sub_27113F2D4(&v11);
  if (*a2)
  {
    v6 = v4;
    v7 = a2;
    v8 = v4;
    v9 = a2;
    v10 = a2;
    if (v5 != -1)
    {
      v11 = &v6;
      (off_288130BB8[v5])(&v11, v4);
      goto LABEL_6;
    }

LABEL_11:
    sub_2711308D4();
  }

  v6 = v4;
  v7 = "nullptr";
  v8 = v4;
  v9 = "nullptr";
  v10 = "nullptr";
  if (v5 == -1)
  {
    goto LABEL_11;
  }

  v11 = &v6;
  (*(&off_288130BA0 + v5))(&v11, v4);
LABEL_6:
  v6 = v4;
  v7 = " must specify PerVertex or PerFace";
  v8 = v4;
  v9 = " must specify PerVertex or PerFace";
  v10 = " must specify PerVertex or PerFace";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v11 = &v6;
  (*(&off_288130BD0 + v5))(&v11, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6 = &v11;
  result = (off_288130B70[v5])(&v6, v4);
  if (v5 != -1)
  {
    return (off_288130B28[v5])(&v6, v4);
  }

  return result;
}

_BYTE *sub_27135432C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271354638(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_27135442C(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288130B28[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2713545EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_271354638(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2713547D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2713547E8(std::string *a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = "TriMeshData label field ";
  v5[1] = 24;
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  v5[2] = v3;
  v5[3] = v2;
  v5[4] = " must specify PerVertex or PerFace";
  v5[5] = 34;
  sub_271131230(v5, &v6, 0, 0, a1);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_271354B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271354BC8(int **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    sub_271120E64(a1[1], ", ", 2);
    v2 = *a1;
    v3 = **a1;
  }

  v5 = a1[1];
  v4 = a1[2];
  *v2 = v3 + 1;
  v6 = &v4[4 * v3];
  v7 = *(v6 + 1);
  if (v7 < 0x7FFFFFFFFFFFFFF8)
  {
    v8 = *v6;
    if (v7 < 0x17)
    {
      v13 = *(v6 + 1);
      if (v7)
      {
        memmove(__dst, v8, v7);
      }

      *(__dst + v7) = 0;
      if ((v13 & 0x80u) == 0)
      {
        v9 = __dst;
      }

      else
      {
        v9 = __dst[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v10 = v13;
      }

      else
      {
        v10 = __dst[1];
      }

      sub_271120E64(v5, v9, v10);
      if (v13 < 0)
      {
        operator delete(__dst[0]);
      }

      sub_271120E64(v5, " = ", 3);
      sub_271120E64(a1[1], "{", 1);
      v11 = a1[1];
      operator new();
    }

    operator new();
  }

  sub_271120DA8();
}

void sub_27135516C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  sub_2713540AC((v31 - 160));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}