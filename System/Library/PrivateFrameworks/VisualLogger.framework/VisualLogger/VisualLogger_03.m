_OWORD *VZDataIOExportLogMessageToNewBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (sub_27115629C("VZDataIOExportLogMessageToNewBlob", a1, a3))
  {
    return 0;
  }

  LOBYTE(v14) = 0;
  v16 = 0;
  v39 = &v40;
  v40 = a3;
  sub_2712344FC((v4 + 1), &v14, &v28);
  v5 = v38;
  if (v38)
  {
    v6 = sub_2711381C0(&v28);
    v7 = operator new(0x28uLL, MEMORY[0x277D826F0]);
    if (v7)
    {
      v4 = v7;
      v7[1] = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v7 + 8) = 1;
      *v7 = &unk_288119278;
      *(v7 + 1) = &unk_2881192C8;
      if (v38 != 1)
      {
        goto LABEL_37;
      }

LABEL_33:
      v8 = *(&v28 + 1);
      if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      goto LABEL_46;
    }

    LOBYTE(v17) = 0;
    v27 = 0;
    sub_27115833C(&v39, &v17);
    if (v27 == 1)
    {
      if (v26 != 1)
      {
        v4 = 0;
        if (v38 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (v25 == 1)
      {
        if (v24 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }
      }

      v4 = 0;
      if (v20 == 1 && v19 < 0)
      {
        operator delete(v18);
        v4 = 0;
        if (v38 == 1)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_32:
    if (v38 != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v17 = v28;
  LOBYTE(v18) = 0;
  v26 = 0;
  if (v37 == 1)
  {
    sub_27112F6CC(&v18, &v29);
    v26 = 1;
  }

  v27 = 1;
  sub_27115833C(&v39, &v17);
  if (v27 != 1 || v26 != 1)
  {
    goto LABEL_32;
  }

  if (v25 == 1)
  {
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }
  }

  if (v20 != 1 || (v19 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(v18);
  if (v38 == 1)
  {
    goto LABEL_33;
  }

LABEL_37:
  if (v37 == 1)
  {
    if (v36 == 1)
    {
      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }
    }

    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }
  }

LABEL_46:
  if ((v5 & 1) == 0)
  {
    v4 = 0;
  }

  if (v16 == 1)
  {
    v9 = v14;
    if (v14)
    {
      v10 = v15;
      v11 = v14;
      if (v15 != v14)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v9);
        v11 = v14;
      }

      v15 = v9;
      operator delete(v11);
    }
  }

  return v4;
}

void sub_271156090(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const char *a13, std::logic_error a14, int a15, __int16 a16, char a17, char a18, char a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error __p, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_2711307D4(&a41);
  sub_27113827C(v41 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a14, exception_ptr);
    a14.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a13 = std::logic_error::what(&a14);
    sub_27113604C(&__p, &a13);
    sub_271369D54(&__p, &a20);
    *(v41 - 192) = a20;
    sub_27184A2B4(v41 - 176, &a21);
    *(v41 - 72) = 1;
    sub_27115833C((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    sub_27112D71C(&a20);
    if (a38 == 1 && a37 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a14);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v45 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v45);
    __cxa_begin_catch(a1);
    v46 = (a39 + 48);
    if (*(a39 + 71) < 0)
    {
      v46 = *v46;
    }

    a13 = v46;
    sub_27113604C(&a14, &a13);
    sub_27136A868(&a14, &a20);
    *(v41 - 192) = a20;
    sub_27184A2B4(v41 - 176, &a21);
    *(v41 - 72) = 1;
    sub_27115833C((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    sub_27112D71C(&a20);
    if (a19 == 1 && a18 < 0)
    {
      operator delete(a14.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v41 - 192) = 0;
    *(v41 - 72) = 0;
    sub_27115833C((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x271155FE4);
}

BOOL sub_27115629C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280877AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877AB0))
    {
      sub_2711580D8(&xmmword_280877A98);
      __cxa_guard_release(&qword_280877AB0);
    }

    if (byte_280877AAF < 0)
    {
      sub_271127178(v7, xmmword_280877A98, *(&xmmword_280877A98 + 1));
    }

    else
    {
      *v7 = xmmword_280877A98;
      v8 = unk_280877AA8;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_271156518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *VZDataIOImportLogMessageFromBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (sub_2711331C0("VZDataIOImportLogMessageFromBlob", a1, a3))
  {
    return 0;
  }

  LOBYTE(v14) = 0;
  v16 = 0;
  v39 = &v40;
  v40 = a3;
  sub_2712346C4(v4 + 2, &v14, &v28);
  v5 = v38;
  if ((v38 & 1) == 0)
  {
    v17 = v28;
    LOBYTE(v18) = 0;
    v26 = 0;
    if (v37 == 1)
    {
      sub_27112F6CC(&v18, &v29);
      v26 = 1;
    }

    v27 = 1;
    sub_271158944(&v39, &v17);
    if (v27 == 1 && v26 == 1)
    {
      if (v25 == 1)
      {
        if (v24 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }
      }

      if (v20 == 1 && v19 < 0)
      {
        operator delete(v18);
      }
    }

    goto LABEL_29;
  }

  v6 = operator new(0x48uLL, MEMORY[0x277D826F0]);
  if (v6)
  {
    v4 = v6;
    v6[1] = v28;
    v28 = 0uLL;
    *(v6 + 4) = off_28810C940;
    *(v6 + 40) = v30;
    v30 = 0uLL;
    *(v6 + 14) = 1;
    *v6 = &unk_288119A08;
    *(v6 + 1) = &unk_288119A58;
    *(v6 + 8) = 0;
  }

  else
  {
    LOBYTE(v17) = 0;
    v27 = 0;
    sub_271158944(&v39, &v17);
    if (v27 == 1 && v26 == 1)
    {
      if (v25 == 1)
      {
        if (v24 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }
      }

      v4 = 0;
      if (v20 != 1 || (v19 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      operator delete(v18);
    }

    v4 = 0;
  }

LABEL_29:
  if (v38 == 1)
  {
    v7 = *(&v30 + 1);
    if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *(&v28 + 1);
    if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  else if (v37 == 1)
  {
    if (v36 == 1)
    {
      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }
    }

    if (v31 == 1 && SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }
  }

  if ((v5 & 1) == 0)
  {
    v4 = 0;
  }

  if (v16 == 1)
  {
    v9 = v14;
    if (v14)
    {
      v10 = v15;
      v11 = v14;
      if (v15 != v14)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v9);
        v11 = v14;
      }

      v15 = v9;
      operator delete(v11);
    }
  }

  return v4;
}

void sub_27115692C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const char *a13, std::logic_error a14, int a15, __int16 a16, char a17, char a18, char a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error __p, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_2711307D4(&a41);
  sub_271158CF0(v41 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a14, exception_ptr);
    a14.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a13 = std::logic_error::what(&a14);
    sub_27113604C(&__p, &a13);
    sub_271369D54(&__p, &a20);
    *(v41 - 192) = a20;
    sub_27184A2B4(v41 - 176, &a21);
    *(v41 - 72) = 1;
    sub_271158944((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    sub_27112D71C(&a20);
    if (a38 == 1 && a37 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a14);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v45 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v45);
    __cxa_begin_catch(a1);
    v46 = (a39 + 48);
    if (*(a39 + 71) < 0)
    {
      v46 = *v46;
    }

    a13 = v46;
    sub_27113604C(&a14, &a13);
    sub_27136A868(&a14, &a20);
    *(v41 - 192) = a20;
    sub_27184A2B4(v41 - 176, &a21);
    *(v41 - 72) = 1;
    sub_271158944((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    sub_27112D71C(&a20);
    if (a19 == 1 && a18 < 0)
    {
      operator delete(a14.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v41 - 192) = 0;
    *(v41 - 72) = 0;
    sub_271158944((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x271156880);
}

_OWORD *VZDataIOExportLogMessageListToNewBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (sub_2711570DC("VZDataIOExportLogMessageListToNewBlob", a1, a3))
  {
    return 0;
  }

  LOBYTE(v14) = 0;
  v16 = 0;
  v39 = &v40;
  v40 = a3;
  sub_271234B44(v4 + 8, &v14, &v28);
  v5 = v38;
  if (v38)
  {
    v6 = sub_2711381C0(&v28);
    v7 = operator new(0x28uLL, MEMORY[0x277D826F0]);
    if (v7)
    {
      v4 = v7;
      v7[1] = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v7 + 8) = 1;
      *v7 = &unk_288119278;
      *(v7 + 1) = &unk_2881192C8;
      if (v38 != 1)
      {
        goto LABEL_37;
      }

LABEL_33:
      v8 = *(&v28 + 1);
      if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      goto LABEL_46;
    }

    LOBYTE(v17) = 0;
    v27 = 0;
    sub_2711590A0(&v39, &v17);
    if (v27 == 1)
    {
      if (v26 != 1)
      {
        v4 = 0;
        if (v38 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (v25 == 1)
      {
        if (v24 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }
      }

      v4 = 0;
      if (v20 == 1 && v19 < 0)
      {
        operator delete(v18);
        v4 = 0;
        if (v38 == 1)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_32:
    if (v38 != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v17 = v28;
  LOBYTE(v18) = 0;
  v26 = 0;
  if (v37 == 1)
  {
    sub_27112F6CC(&v18, &v29);
    v26 = 1;
  }

  v27 = 1;
  sub_2711590A0(&v39, &v17);
  if (v27 != 1 || v26 != 1)
  {
    goto LABEL_32;
  }

  if (v25 == 1)
  {
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }
  }

  if (v20 != 1 || (v19 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(v18);
  if (v38 == 1)
  {
    goto LABEL_33;
  }

LABEL_37:
  if (v37 == 1)
  {
    if (v36 == 1)
    {
      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }
    }

    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }
  }

LABEL_46:
  if ((v5 & 1) == 0)
  {
    v4 = 0;
  }

  if (v16 == 1)
  {
    v9 = v14;
    if (v14)
    {
      v10 = v15;
      v11 = v14;
      if (v15 != v14)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v9);
        v11 = v14;
      }

      v15 = v9;
      operator delete(v11);
    }
  }

  return v4;
}

void sub_271156ED0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const char *a13, std::logic_error a14, int a15, __int16 a16, char a17, char a18, char a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error __p, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_2711307D4(&a41);
  sub_27113827C(v41 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a14, exception_ptr);
    a14.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a13 = std::logic_error::what(&a14);
    sub_27113604C(&__p, &a13);
    sub_271369D54(&__p, &a20);
    *(v41 - 192) = a20;
    sub_27184A2B4(v41 - 176, &a21);
    *(v41 - 72) = 1;
    sub_2711590A0((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    sub_27112D71C(&a20);
    if (a38 == 1 && a37 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a14);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v45 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v45);
    __cxa_begin_catch(a1);
    v46 = (a39 + 48);
    if (*(a39 + 71) < 0)
    {
      v46 = *v46;
    }

    a13 = v46;
    sub_27113604C(&a14, &a13);
    sub_27136A868(&a14, &a20);
    *(v41 - 192) = a20;
    sub_27184A2B4(v41 - 176, &a21);
    *(v41 - 72) = 1;
    sub_2711590A0((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    sub_27112D71C(&a20);
    if (a19 == 1 && a18 < 0)
    {
      operator delete(a14.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v41 - 192) = 0;
    *(v41 - 72) = 0;
    sub_2711590A0((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x271156E24);
}

BOOL sub_2711570DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280877AF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877AF0))
    {
      sub_271158E48(&xmmword_280877AD8);
      __cxa_guard_release(&qword_280877AF0);
    }

    if (byte_280877AEF < 0)
    {
      sub_271127178(v7, xmmword_280877AD8, *(&xmmword_280877AD8 + 1));
    }

    else
    {
      *v7 = xmmword_280877AD8;
      v8 = unk_280877AE8;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_271157358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *VZDataIOImportLogMessageListFromBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (sub_2711331C0("VZDataIOImportLogMessageListFromBlob", a1, a3))
  {
    return 0;
  }

  LOBYTE(v13) = 0;
  v15 = 0;
  v38 = &v39;
  v39 = a3;
  sub_271234D0C(v4 + 2, &v13, &v27);
  v5 = v37;
  if ((v37 & 1) == 0)
  {
    v16 = v27;
    LOBYTE(v17) = 0;
    v25 = 0;
    if (v36 == 1)
    {
      sub_27112F6CC(&v17, &v28);
      v25 = 1;
    }

    v26 = 1;
    sub_27115969C(&v38, &v16);
    if (v26 == 1 && v25 == 1)
    {
      if (v24 == 1)
      {
        if (v23 < 0)
        {
          operator delete(__p);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }
      }

      if (v19 == 1 && v18 < 0)
      {
        operator delete(v17);
        if (v37 == 1)
        {
          goto LABEL_33;
        }

LABEL_35:
        if (v36 == 1)
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

        goto LABEL_44;
      }
    }

LABEL_32:
    if (v37 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v6 = sub_271159A48(&v27);
  v7 = operator new(0x60uLL, MEMORY[0x277D826F0]);
  if (!v7)
  {
    LOBYTE(v16) = 0;
    v26 = 0;
    sub_27115969C(&v38, &v16);
    if (v26 == 1)
    {
      if (v25 != 1)
      {
        v4 = 0;
        if (v37 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      if (v24 == 1)
      {
        if (v23 < 0)
        {
          operator delete(__p);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }
      }

      v4 = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(v17);
        v4 = 0;
        if (v37 == 1)
        {
          goto LABEL_33;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_32;
  }

  v4 = v7;
  *(v7 + 1) = *(v6 + 8);
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  v7[5] = &unk_288131488;
  *(v7 + 3) = *(v6 + 40);
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v7 + 16) = 1;
  *v7 = &unk_288119588;
  v7[1] = &unk_2881195D8;
  v7[4] = &unk_2881195F8;
  v7[10] = 0;
  v7[11] = 0;
  v7[9] = 0;
  if (v37 != 1)
  {
    goto LABEL_35;
  }

LABEL_33:
  (*v27)(&v27);
LABEL_44:
  if ((v5 & 1) == 0)
  {
    v4 = 0;
  }

  if (v15 == 1)
  {
    v8 = v13;
    if (v13)
    {
      v9 = v14;
      v10 = v13;
      if (v14 != v13)
      {
        do
        {
          v11 = *(v9 - 1);
          if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }

          v9 -= 16;
        }

        while (v9 != v8);
        v10 = v13;
      }

      v14 = v8;
      operator delete(v10);
    }
  }

  return v4;
}

void sub_271157774(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const char *a13, std::logic_error a14, int a15, __int16 a16, char a17, char a18, char a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error __p, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_2711307D4(&a41);
  sub_271159B04(v41 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a14, exception_ptr);
    a14.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a13 = std::logic_error::what(&a14);
    sub_27113604C(&__p, &a13);
    sub_271369D54(&__p, &a20);
    *(v41 - 192) = a20;
    sub_27184A2B4(v41 - 176, &a21);
    *(v41 - 72) = 1;
    sub_27115969C((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    sub_27112D71C(&a20);
    if (a38 == 1 && a37 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a14);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v45 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v45);
    __cxa_begin_catch(a1);
    v46 = (a39 + 48);
    if (*(a39 + 71) < 0)
    {
      v46 = *v46;
    }

    a13 = v46;
    sub_27113604C(&a14, &a13);
    sub_27136A868(&a14, &a20);
    *(v41 - 192) = a20;
    sub_27184A2B4(v41 - 176, &a21);
    *(v41 - 72) = 1;
    sub_27115969C((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    sub_27112D71C(&a20);
    if (a19 == 1 && a18 < 0)
    {
      operator delete(a14.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v41 - 192) = 0;
    *(v41 - 72) = 0;
    sub_27115969C((v41 - 64), v41 - 192);
    sub_2711307D4(v41 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711576C8);
}

void sub_271157980(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2808778B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778B0))
  {
    sub_2718519B4("VZBlob]", 6uLL, qword_280877898);
    __cxa_guard_release(&qword_2808778B0);
  }

  if ((atomic_load_explicit(&qword_2808778D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778D0))
  {
    sub_271138414(&xmmword_2808778B8);
    __cxa_guard_release(&qword_2808778D0);
  }

  if (byte_2808778CF < 0)
  {
    sub_271127178(&v23, xmmword_2808778B8, *(&xmmword_2808778B8 + 1));
  }

  else
  {
    v23 = xmmword_2808778B8;
    v24 = unk_2808778C8;
  }

  if ((atomic_load_explicit(&qword_280879F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879F30))
  {
    sub_2718519B4("cv3d::vl::visual_logger::ExportArguments]", 0x28uLL, &xmmword_280879F50);
    __cxa_guard_release(&qword_280879F30);
  }

  if (byte_280879F67 < 0)
  {
    sub_271127178(&v25, xmmword_280879F50, *(&xmmword_280879F50 + 1));
  }

  else
  {
    v25 = xmmword_280879F50;
    v26 = unk_280879F60;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877898, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271157C88(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280879F30);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_271157D2C(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_280877870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877870))
  {
    sub_27113638C(&xmmword_280877858);
    __cxa_guard_release(&qword_280877870);
  }

  if (byte_28087786F < 0)
  {
    sub_271127178(&v23, xmmword_280877858, *(&xmmword_280877858 + 1));
  }

  else
  {
    v23 = xmmword_280877858;
    v24 = unk_280877868;
  }

  if ((atomic_load_explicit(&qword_280879F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879F38))
  {
    sub_2718519B4("cv3d::vl::visual_logger::ImportArguments]", 0x28uLL, &xmmword_280879F68);
    __cxa_guard_release(&qword_280879F38);
  }

  if (byte_280879F7F < 0)
  {
    sub_271127178(&v25, xmmword_280879F68, *(&xmmword_280879F68 + 1));
  }

  else
  {
    v25 = xmmword_280879F68;
    v26 = unk_280879F78;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877838, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271158034(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280879F38);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_2711580D8@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "VZLogMessage");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_2711582FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27115833C(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2808778B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778B0))
  {
    sub_2718519B4("VZBlob]", 6uLL, qword_280877898);
    __cxa_guard_release(&qword_2808778B0);
  }

  if ((atomic_load_explicit(&qword_280879F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879F40))
  {
    sub_2711586DC();
    __cxa_guard_release(&qword_280879F40);
  }

  if (byte_280879F97 < 0)
  {
    sub_271127178(&v23, xmmword_280879F80, *(&xmmword_280879F80 + 1));
  }

  else
  {
    v23 = xmmword_280879F80;
    v24 = unk_280879F90;
  }

  if ((atomic_load_explicit(&qword_280879F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879F30))
  {
    sub_2718519B4("cv3d::vl::visual_logger::ExportArguments]", 0x28uLL, &xmmword_280879F50);
    __cxa_guard_release(&qword_280879F30);
  }

  if (byte_280879F67 < 0)
  {
    sub_271127178(&v25, xmmword_280879F50, *(&xmmword_280879F50 + 1));
  }

  else
  {
    v25 = xmmword_280879F50;
    v26 = unk_280879F60;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877898, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271158638(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280879F30);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_2711586DC()
{
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "VZLogMessage");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_280879F80 = v7;
  unk_280879F90 = v8;
  return result;
}

void sub_271158904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271158944(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877AD0))
  {
    sub_2718519B4("VZLogMessage]", 0xCuLL, qword_280877AB8);
    __cxa_guard_release(&qword_280877AD0);
  }

  if ((atomic_load_explicit(&qword_280877870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877870))
  {
    sub_27113638C(&xmmword_280877858);
    __cxa_guard_release(&qword_280877870);
  }

  if (byte_28087786F < 0)
  {
    sub_271127178(&v23, xmmword_280877858, *(&xmmword_280877858 + 1));
  }

  else
  {
    v23 = xmmword_280877858;
    v24 = unk_280877868;
  }

  if ((atomic_load_explicit(&qword_280879F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879F38))
  {
    sub_2718519B4("cv3d::vl::visual_logger::ImportArguments]", 0x28uLL, &xmmword_280879F68);
    __cxa_guard_release(&qword_280879F38);
  }

  if (byte_280879F7F < 0)
  {
    sub_271127178(&v25, xmmword_280879F68, *(&xmmword_280879F68 + 1));
  }

  else
  {
    v25 = xmmword_280879F68;
    v26 = unk_280879F78;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877AB8, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271158C4C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280879F38);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271158CF0(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *(result + 32);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      result = v2;
    }

    v3 = *(result + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v7;
      }
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v4 = result;
        operator delete(*(result + 80));
        result = v4;
      }

      if (*(result + 71) < 0)
      {
        v5 = result;
        operator delete(*(result + 48));
        result = v5;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v6 = result;
      operator delete(*(result + 16));
      return v6;
    }
  }

  return result;
}

double sub_271158E48@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 16;
  strcpy(&__p, "VZLogMessageList");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_271159060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711590A0(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_2808778B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778B0))
  {
    sub_2718519B4("VZBlob]", 6uLL, qword_280877898);
    __cxa_guard_release(&qword_2808778B0);
  }

  if ((atomic_load_explicit(&qword_280879F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879F48))
  {
    sub_271159440();
    __cxa_guard_release(&qword_280879F48);
  }

  if (byte_280879FAF < 0)
  {
    sub_271127178(&v23, xmmword_280879F98, *(&xmmword_280879F98 + 1));
  }

  else
  {
    v23 = xmmword_280879F98;
    v24 = unk_280879FA8;
  }

  if ((atomic_load_explicit(&qword_280879F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879F30))
  {
    sub_2718519B4("cv3d::vl::visual_logger::ExportArguments]", 0x28uLL, &xmmword_280879F50);
    __cxa_guard_release(&qword_280879F30);
  }

  if (byte_280879F67 < 0)
  {
    sub_271127178(&v25, xmmword_280879F50, *(&xmmword_280879F50 + 1));
  }

  else
  {
    v25 = xmmword_280879F50;
    v26 = unk_280879F60;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877898, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_27115939C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280879F30);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_271159440()
{
  *(&__p.__r_.__value_.__s + 23) = 16;
  strcpy(&__p, "VZLogMessageList");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_280879F98 = v7;
  unk_280879FA8 = v8;
  return result;
}

void sub_27115965C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27115969C(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B10))
  {
    sub_2718519B4("VZLogMessageList]", 0x10uLL, qword_280877AF8);
    __cxa_guard_release(&qword_280877B10);
  }

  if ((atomic_load_explicit(&qword_280877870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877870))
  {
    sub_27113638C(&xmmword_280877858);
    __cxa_guard_release(&qword_280877870);
  }

  if (byte_28087786F < 0)
  {
    sub_271127178(&v23, xmmword_280877858, *(&xmmword_280877858 + 1));
  }

  else
  {
    v23 = xmmword_280877858;
    v24 = unk_280877868;
  }

  if ((atomic_load_explicit(&qword_280879F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879F38))
  {
    sub_2718519B4("cv3d::vl::visual_logger::ImportArguments]", 0x28uLL, &xmmword_280879F68);
    __cxa_guard_release(&qword_280879F38);
  }

  if (byte_280879F7F < 0)
  {
    sub_271127178(&v25, xmmword_280879F68, *(&xmmword_280879F68 + 1));
  }

  else
  {
    v25 = xmmword_280879F68;
    v26 = unk_280879F78;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877AF8, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711599A4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280879F38);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271159A48(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_2711365E8(v3, v1);
    sub_271137B44(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_271159AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_271159AD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_271159B04(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = result;
    (**result)();
    return v1;
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v1 = result;
      operator delete(*(result + 16));
      return v1;
    }
  }

  return result;
}

void sub_27115A48C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::logic_error a14, int a15, __int16 a16, char a17, char a18, char a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error __p, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t *a61)
{
  if (a2)
  {
    sub_2711307D4(&a41);
    sub_271137BDC(&STACK[0x4E0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a14, exception_ptr);
      a14.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a13 = std::logic_error::what(&a14);
      sub_27113604C(&__p, &a13);
      sub_271369D54(&__p, &a20);
      *(v61 + 832) = a20;
      sub_27184A2B4(&STACK[0x4F0], &a21);
      LOBYTE(STACK[0x558]) = 1;
      sub_27115AD70(&a61, &STACK[0x4E0]);
      sub_2711307D4(&STACK[0x4E0]);
      sub_27112D71C(&a20);
      if (a38 == 1 && a37 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a14);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v65 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v65);
      __cxa_begin_catch(a1);
      v66 = (a39 + 48);
      if (*(a39 + 71) < 0)
      {
        v66 = *v66;
      }

      a13 = v66;
      sub_27113604C(&a14, &a13);
      sub_27136A868(&a14, &a20);
      *(v61 + 832) = a20;
      sub_27184A2B4(&STACK[0x4F0], &a21);
      LOBYTE(STACK[0x558]) = 1;
      sub_27115AD70(&a61, &STACK[0x4E0]);
      sub_2711307D4(&STACK[0x4E0]);
      sub_27112D71C(&a20);
      if (a19 == 1 && a18 < 0)
      {
        operator delete(a14.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(STACK[0x4E0]) = 0;
      LOBYTE(STACK[0x558]) = 0;
      sub_27115AD70(&a61, &STACK[0x4E0]);
      sub_2711307D4(&STACK[0x4E0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x27115A290);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDataGetIOSurface(uint64_t a1)
{
  v2 = sub_271133B3C("VZDataGetIOSurface", a1, 0);
  result = 0;
  if (!v2)
  {
    sub_2712B8C10((a1 + 32), &v8);
    if (v9)
    {
      result = *v9;
      v4 = v9[1];
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = result;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          result = v5;
        }
      }
    }

    else
    {
      result = 0;
    }

    v8 = &unk_288109288;
    v6 = v10;
    if (v10)
    {
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = result;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        return v7;
      }
    }
  }

  return result;
}

uint64_t VZDataGetExistingIOSurface(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataGetExistingIOSurface", a1, a2))
  {
    v8[1] = 0;
    v9 = 0;
    v8[0] = &unk_288109288;
    v18 = 1;
  }

  else
  {
    sub_2712B8D64((a1 + 32), v8);
    if ((v18 & 1) == 0)
    {
      sub_27112B960(v8, a2);
      v5 = 0;
      if (v18 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  v4 = *(sub_27115A9E4(v8) + 8);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        if (v18 != 1)
        {
          goto LABEL_14;
        }

LABEL_11:
        (*v8[0])(v8);
        return v5;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v18 == 1)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v17 != 1)
  {
    return v5;
  }

  if (v16 == 1)
  {
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }
  }

  if (v11 != 1 || (v10 & 0x80000000) == 0)
  {
    return v5;
  }

  operator delete(v9);
  return v5;
}

uint64_t sub_27115A9E4(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_2711365E8(v3, v1);
    sub_271137B44(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_27115AA5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_27115AA70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_27115AAA0(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = result;
    (**result)();
    return v1;
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v1 = result;
      operator delete(*(result + 16));
      return v1;
    }
  }

  return result;
}

const void *VZDataObtainOrCreateIOSurface(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataObtainOrCreateIOSurface", a1, a2))
  {
    v8[1] = 0;
    v9 = 0;
    v8[0] = &unk_288109288;
    v18 = 1;
  }

  else
  {
    sub_2712B9714((a1 + 32), v8);
    if ((v18 & 1) == 0)
    {
      sub_27112B960(v8, a2);
      v5 = 0;
      if (v18 == 1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  v4 = *(sub_27115A9E4(v8) + 8);
  if (v4)
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    v19 = *v4;
    v20 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      CFRetain(v5);
    }

    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      if (v18 != 1)
      {
        goto LABEL_18;
      }

LABEL_15:
      (*v8[0])(v8);
      return v5;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v18 == 1)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (v17 != 1)
  {
    return v5;
  }

  if (v16 == 1)
  {
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }
  }

  if (v11 != 1 || (v10 & 0x80000000) == 0)
  {
    return v5;
  }

  operator delete(v9);
  return v5;
}

void sub_27115AD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v9 - 32);
  sub_27115AAA0(&a9);
  _Unwind_Resume(a1);
}

void sub_27115AD70(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_280879FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879FB0))
  {
    sub_2718519B4("cv3d::kit::iosurface::SurfaceRef]", 0x20uLL, &xmmword_280879FB8);
    __cxa_guard_release(&qword_280879FB0);
  }

  if (byte_280879FCF < 0)
  {
    sub_271127178(&v23, xmmword_280879FB8, *(&xmmword_280879FB8 + 1));
  }

  else
  {
    v23 = xmmword_280879FB8;
    v24 = unk_280879FC8;
  }

  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  if (byte_28087782F < 0)
  {
    sub_271127178(&v25, xmmword_280877818, *(&xmmword_280877818 + 1));
  }

  else
  {
    v25 = xmmword_280877818;
    v26 = unk_280877828;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877838, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_27115B078(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27115B11C(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 24);
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

void sub_27115B1E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 16);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 16);
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

void sub_27115B2B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = *(a1 + 24);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27115B394(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27115B468(uint64_t a1)
{
  sub_27115EAC4(*(a1 + 56));
  *(a1 + 8) = &unk_28812D898;
  sub_271235358((a1 + 16));
  return a1;
}

void **sub_27115B4BC(uint64_t a1)
{
  sub_27115EAC4(*(a1 + 48));
  *a1 = &unk_28812D898;

  return sub_271235358((a1 + 8));
}

void sub_27115B514(uint64_t a1)
{
  sub_27115EAC4(*(a1 + 56));
  *(a1 + 8) = &unk_28812D898;
  sub_271235358((a1 + 16));

  JUMPOUT(0x2743BF050);
}

void sub_27115B588(uint64_t a1)
{
  sub_27115EAC4(*(a1 + 48));
  *a1 = &unk_28812D898;
  sub_271235358((a1 + 8));

  JUMPOUT(0x2743BF050);
}

uint64_t VZDestinationGetTypeID()
{
  if (atomic_load_explicit(&qword_280879FE0, memory_order_acquire))
  {
    return qword_280879FD8;
  }

  if (__cxa_guard_acquire(&qword_280879FE0))
  {
    qword_280879FD8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879FE0);
  }

  return qword_280879FD8;
}

uint64_t VZDestinationOptionsGetTypeID()
{
  if (atomic_load_explicit(&qword_280879FF0, memory_order_acquire))
  {
    return qword_280879FE8;
  }

  if (__cxa_guard_acquire(&qword_280879FF0))
  {
    qword_280879FE8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879FF0);
  }

  return qword_280879FE8;
}

uint64_t VZDestinationListGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A000, memory_order_acquire))
  {
    return qword_280879FF8;
  }

  if (__cxa_guard_acquire(&qword_28087A000))
  {
    qword_280879FF8 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A000);
  }

  return qword_280879FF8;
}

uint64_t VZDestinationCreateWithCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_28087A008, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A008))
  {
    sub_2718519B4("void (^)(const VZLogMessage *)]", 0x1EuLL, &xmmword_28087A048);
    __cxa_guard_release(&qword_28087A008);
  }

  if (byte_28087A05F < 0)
  {
    sub_271127178(v6, xmmword_28087A048, *(&xmmword_28087A048 + 1));
  }

  else
  {
    *v6 = xmmword_28087A048;
    v7 = unk_28087A058;
  }

  v8 = 1;
  sub_27112D7CC("VZDestinationCreateWithCallback", v6, &v9);
  v20 = v9;
  LOBYTE(v21) = 0;
  v30 = 0;
  if (v19 == 1)
  {
    v23 = 0;
    if (v12 == 1)
    {
      v21 = v10;
      v22 = v11;
      v11 = 0;
      v10 = 0uLL;
      v23 = 1;
    }

    LOBYTE(v24) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v25 = v14;
      v24 = *v13;
      v13[0] = 0;
      v13[1] = 0;
      v26 = v15;
      *__p = *v16;
      v28 = v17;
      v14 = 0;
      v16[0] = 0;
      v16[1] = 0;
      v17 = 0;
      v29 = 1;
    }

    v30 = 1;
  }

  v31 = 0;
  sub_27112B960(&v20, a3);
  if ((v31 & 1) == 0 && v30 == 1)
  {
    if (v29 == 1)
    {
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24);
      }
    }

    if (v23 == 1 && SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  if (v19 == 1)
  {
    if (v18 == 1)
    {
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10);
    }
  }

  if (v8 == 1 && SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  result = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27115BAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27115BB34(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27115BB4C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      v4 = a3;
      (*(*v3 + 24))(v3, v8);
      a3 = v4;
    }

    else
    {
      v9 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v5 = *a3;
  v6[0] = &unk_288108A18;
  v6[1] = sub_271141150;
  v6[3] = v6;
  v7 = 1;
  sub_271235504(v8);
}

void sub_27115BF08(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, __int128 a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, std::logic_error a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    sub_2711307D4(&STACK[0x200]);
    sub_271145690(v71 - 256);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a55, exception_ptr);
      a55.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a32 = std::logic_error::what(&a55);
      sub_27113604C(&__p, &a32);
      sub_271369D54(&__p, v71 - 256);
      a16 = *(v71 - 256);
      sub_27184A2B4(&a17, (v71 - 240));
      a30 = 1;
      sub_271160604((v71 - 128), &a16);
      sub_2711307D4(&a16);
      sub_27112D71C(v71 - 256);
      if (a15 == 1 && a14 < 0)
      {
        operator delete(__p);
      }

      MEMORY[0x2743BE520](&a55);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v75 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&a55, v75);
      __cxa_begin_catch(a1);
      v76 = (a58 + 48);
      if (*(a58 + 71) < 0)
      {
        v76 = *v76;
      }

      a32 = v76;
      sub_27113604C(&a33, &a32);
      sub_27136A868(&a33, v71 - 256);
      a40 = *(v71 - 256);
      sub_27184A2B4(&a41, (v71 - 240));
      a54 = 1;
      sub_271160604((v71 - 128), &a40);
      sub_2711307D4(&a40);
      sub_27112D71C(v71 - 256);
      if (a39 == 1 && a38 < 0)
      {
        operator delete(a33);
      }

      MEMORY[0x2743BEBB0](&a55);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      a60 = 0;
      a71 = 0;
      sub_271160604((v71 - 128), &a60);
      sub_2711307D4(&a60);
      __cxa_end_catch();
    }

    JUMPOUT(0x27115BE4CLL);
  }

  _Unwind_Resume(a1);
}

void sub_27115C150(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x27115C158);
  }

  JUMPOUT(0x27115BF24);
}

uint64_t VZDestinationCreateWithCallbackFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *&v21 = &unk_2881089C0;
    *(&v21 + 1) = a2;
    *&v22 = a1;
    *(&v22 + 1) = &v21;
    LOWORD(v10) = (a3 != 0) << 8;
    sub_27115BB4C(a4, &v21, &v10);
  }

  if ((atomic_load_explicit(&qword_28087A020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A020))
  {
    sub_271160CD8();
  }

  if (byte_28087A0A7 < 0)
  {
    sub_271127178(v7, xmmword_28087A090, *(&xmmword_28087A090 + 1));
  }

  else
  {
    *v7 = xmmword_28087A090;
    v8 = unk_28087A0A0;
  }

  v9 = 1;
  sub_27112D7CC("VZDestinationCreateWithCallbackFunction", v7, &v10);
  v21 = v10;
  LOBYTE(v22) = 0;
  v31 = 0;
  if (v20 == 1)
  {
    v24 = 0;
    if (v13 == 1)
    {
      v22 = v11;
      v23 = v12;
      v12 = 0;
      v11 = 0uLL;
      v24 = 1;
    }

    LOBYTE(v25) = 0;
    v30 = 0;
    if (v19 == 1)
    {
      v26 = v15;
      v25 = *v14;
      v14[0] = 0;
      v14[1] = 0;
      v27 = v16;
      *__p = *v17;
      v29 = v18;
      v15 = 0;
      v17[0] = 0;
      v17[1] = 0;
      v18 = 0;
      v30 = 1;
    }

    v31 = 1;
  }

  v32 = 0;
  sub_27112B960(&v21, a4);
  if ((v32 & 1) == 0 && v31 == 1)
  {
    if (v30 == 1)
    {
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25);
      }
    }

    if (v24 == 1 && SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }
  }

  if (v20 == 1)
  {
    if (v19 == 1)
    {
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }
    }

    if (v13 == 1 && SHIBYTE(v12) < 0)
    {
      operator delete(v11);
    }
  }

  if (v9 == 1 && SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27115C4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_OWORD *VZDestinationListCreate()
{
  result = operator new(0x48uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[1] = 0u;
    result[2] = 0u;
    *(result + 10) = 1;
    *result = &unk_288119518;
    *(result + 1) = &unk_288119568;
    *(result + 8) = 0;
    *(result + 7) = 0;
    *(result + 6) = result + 56;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B50))
    {
      sub_2718519B4("VZDestinationList]", 0x11uLL, qword_280877B38);
      __cxa_guard_release(&qword_280877B50);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v5) = 0;
    v15 = 0;
    sub_27112E0C4(qword_280877B38, &v16, &v5, 0);
    if (v15 == 1 && v14 == 1)
    {
      if (v13 == 1)
      {
        if (v12 < 0)
        {
          operator delete(__p);
        }

        if (v10 < 0)
        {
          operator delete(v9);
        }
      }

      if (v8 == 1 && v7 < 0)
      {
        operator delete(v6);
      }
    }

    v1 = v16;
    if (v16)
    {
      v2 = v17;
      v3 = v16;
      if (v17 != v16)
      {
        do
        {
          v4 = *(v2 - 1);
          v2 -= 3;
          if (v4 < 0)
          {
            operator delete(*v2);
          }
        }

        while (v2 != v1);
        v3 = v16;
      }

      v17 = v1;
      operator delete(v3);
    }

    return 0;
  }

  return result;
}

void VZDestinationListAddDestination(uint64_t *a1, void *a2)
{
  if (a1)
  {
    if (sub_27115CBB8("VZDestinationListAddDestination", a2, 0))
    {
      return;
    }

    v4 = a1[3];
    v5 = a1[4];
    if (v4 < v5)
    {
      *v4 = a2[2];
      v6 = a2[3];
      v4[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v4[2] = a2[4];
      v7 = a2[5];
      v4[3] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = v4 + 4;
LABEL_66:
      a1[3] = v8;
      return;
    }

    v9 = a1[2];
    v10 = (v4 - v9) >> 5;
    v11 = v10 + 1;
    if ((v10 + 1) >> 59)
    {
      sub_271135560();
    }

    v12 = v5 - v9;
    if (v12 >> 4 > v11)
    {
      v11 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v37 = a1 + 2;
    if (v13)
    {
      if (!(v13 >> 59))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v14 = (32 * v10);
    v35[0] = 0;
    v35[1] = v14;
    *(&v36 + 1) = 0;
    v15 = a2[3];
    *v14 = a2[2];
    v14[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = a2[5];
    *(32 * v10 + 0x10) = a2[4];
    *(32 * v10 + 0x18) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    *&v36 = v14 + 4;
    sub_2711613F0(a1 + 2, v35);
    v8 = a1[3];
    v17 = v35[1];
    v18 = v36;
    if (v36 == v35[1])
    {
LABEL_64:
      if (v35[0])
      {
        operator delete(v35[0]);
      }

      goto LABEL_66;
    }

    while (1)
    {
      *&v36 = v18 - 32;
      v19 = *(v18 - 8);
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
        v20 = *(v18 - 24);
        if (v20)
        {
LABEL_60:
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
          }
        }
      }

      else
      {
        v20 = *(v18 - 24);
        if (v20)
        {
          goto LABEL_60;
        }
      }

      v18 = v36;
      if (v36 == v17)
      {
        goto LABEL_64;
      }
    }
  }

  if ((atomic_load_explicit(&qword_28087A028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A028))
  {
    sub_271160F90();
    __cxa_guard_release(&qword_28087A028);
  }

  if (byte_28087A0BF < 0)
  {
    sub_271127178(v21, xmmword_28087A0A8, *(&xmmword_28087A0A8 + 1));
  }

  else
  {
    *v21 = xmmword_28087A0A8;
    v22 = unk_28087A0B8;
  }

  v23 = 1;
  sub_27112D7CC("VZDestinationListAddDestination", v21, &v24);
  *v35 = v24;
  LOBYTE(v36) = 0;
  v45 = 0;
  if (v34 == 1)
  {
    v38 = 0;
    if (v27 == 1)
    {
      v36 = v25;
      v37 = v26;
      v26 = 0;
      v25 = 0uLL;
      v38 = 1;
    }

    LOBYTE(v39) = 0;
    v44 = 0;
    if (v33 == 1)
    {
      v40 = v29;
      v39 = *v28;
      v28[0] = 0;
      v28[1] = 0;
      v41 = v30;
      *__p = *v31;
      v43 = v32;
      v29 = 0;
      v31[0] = 0;
      v31[1] = 0;
      v32 = 0;
      v44 = 1;
    }

    v45 = 1;
  }

  v46 = 0;
  sub_27112B960(v35, 0);
  if ((v46 & 1) == 0 && v45 == 1)
  {
    if (v44 == 1)
    {
      if (SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39);
      }
    }

    if (v38 == 1 && SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }
  }

  if (v34 == 1)
  {
    if (v33 == 1)
    {
      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[0]);
      }
    }

    if (v27 == 1 && SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }
  }

  if (v23 == 1 && SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }
}

void sub_27115CB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_27115CBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280877B70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B70))
    {
      sub_271161190(&xmmword_280877B58);
      __cxa_guard_release(&qword_280877B70);
    }

    if (byte_280877B6F < 0)
    {
      sub_271127178(v7, xmmword_280877B58, *(&xmmword_280877B58 + 1));
    }

    else
    {
      *v7 = xmmword_280877B58;
      v8 = unk_280877B68;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_27115CE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDestinationListGetSize(uint64_t a1)
{
  v2 = sub_27115CEC0("VZDestinationListGetSize", a1, 0);
  result = 0;
  if (!v2)
  {
    return (*(a1 + 24) - *(a1 + 16)) >> 5;
  }

  return result;
}

BOOL sub_27115CEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280877B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B90))
    {
      sub_271161658(&xmmword_280877B78);
      __cxa_guard_release(&qword_280877B90);
    }

    if (byte_280877B8F < 0)
    {
      sub_271127178(v7, xmmword_280877B78, *(&xmmword_280877B78 + 1));
    }

    else
    {
      *v7 = xmmword_280877B78;
      v8 = unk_280877B88;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_27115D13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDestinationListGetDestination(void *a1, unint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = 0;
  if (!sub_27115CEC0("VZDestinationListGetDestination", a1, 0))
  {
    v5 = a1[2];
    v6 = a1[3];
    v54 = a2;
    v7 = (v6 - v5) >> 5;
    if (v7 > a2)
    {
      v8 = (v5 + 32 * a2);
      v10 = *v8;
      v9 = v8[1];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = v8[2];
      v11 = v8[3];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *&v32 = v10;
      *(&v32 + 1) = v9;
      *&v33 = v12;
      *(&v33 + 1) = v11;
      v43 = 1;
      v14 = a1 + 7;
      v13 = a1[7];
      if (!v13)
      {
        goto LABEL_40;
      }

      v15 = a1 + 7;
      do
      {
        v16 = v13[6];
        v17 = v16 >= v33;
        v18 = v16 < v33;
        if (v17)
        {
          v15 = v13;
        }

        v13 = v13[v18];
      }

      while (v13);
      if (v15 == v14 || v33 < v15[6])
      {
LABEL_40:
        v19 = operator new(0x38uLL, MEMORY[0x277D826F0]);
        if (!v19)
        {
          if ((atomic_load_explicit(&qword_280877950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877950))
          {
            sub_2718519B4("VZDestination]", 0xDuLL, qword_280877938);
            __cxa_guard_release(&qword_280877950);
          }

          if ((atomic_load_explicit(&qword_280879FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879FD0))
          {
            sub_27115F548();
          }

          if (byte_28087A047 < 0)
          {
            sub_271127178(&v67, xmmword_28087A030, *(&xmmword_28087A030 + 1));
          }

          else
          {
            v67 = xmmword_28087A030;
            v68 = unk_28087A040;
          }

          sub_2711309E8(v45, &v67, 1uLL);
          LOBYTE(v55) = 0;
          v66 = 0;
          sub_27112E0C4(qword_280877938, v45, &v55, 0);
          if (v66 == 1 && v65 == 1)
          {
            if (v64 == 1)
            {
              if (SHIBYTE(v63) < 0)
              {
                operator delete(v62);
              }

              if (SHIBYTE(v60) < 0)
              {
                operator delete(v59);
              }
            }

            if (v58 == 1 && SHIBYTE(v57) < 0)
            {
              operator delete(v56);
            }
          }

          v26 = v45[0];
          if (v45[0])
          {
            v27 = v45[1];
            v28 = v45[0];
            if (v45[1] != v45[0])
            {
              do
              {
                v29 = *(v27 - 1);
                v27 -= 3;
                if (v29 < 0)
                {
                  operator delete(*v27);
                }
              }

              while (v27 != v26);
              v28 = v45[0];
            }

            v45[1] = v26;
            operator delete(v28);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(v67);
          }

          v4 = 0;
          goto LABEL_82;
        }

        *v19 = &unk_288117810;
        v20 = *(&v32 + 1);
        v19[2] = v32;
        v19[3] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        v21 = *(&v33 + 1);
        v22 = v33;
        v19[4] = v33;
        v19[5] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
          v22 = v33;
        }

        *(v19 + 12) = 1;
        *v19 = &unk_288119928;
        v19[1] = &unk_288119978;
        v23 = *v14;
        if (!*v14)
        {
LABEL_51:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v24 = v23;
            v25 = v23[6];
            if (v25 <= v22)
            {
              break;
            }

            v23 = *v24;
            if (!*v24)
            {
              goto LABEL_51;
            }
          }

          if (v25 >= v22)
          {
            break;
          }

          v23 = v24[1];
          if (!v23)
          {
            goto LABEL_51;
          }
        }

        v15 = v24;
        (off_288119940[0])(v19);
      }

      v4 = v15[8];
LABEL_82:
      sub_271145690(&v32);
      goto LABEL_83;
    }

    v44 = v7;
    sub_27115EBF0("index ", &v54, " out of range for list of size ", &v44);
    if (SHIBYTE(v68) < 0)
    {
      sub_271127178(v45, v67, *(&v67 + 1));
    }

    else
    {
      *v45 = v67;
      v46 = v68;
    }

    v47 = 1;
    LOBYTE(v48) = 0;
    v52 = 0;
    v53 = 1;
    sub_27112D480(0xAu, v45, &v55);
    v32 = v55;
    LOBYTE(v33) = 0;
    v42 = 0;
    if (v65 == 1)
    {
      v35 = 0;
      if (v58 == 1)
      {
        v33 = v56;
        v34 = v57;
        v57 = 0;
        v56 = 0uLL;
        v35 = 1;
        LOBYTE(v36) = 0;
        v41 = 0;
        if ((v64 & 1) == 0)
        {
LABEL_14:
          v42 = 1;
          v43 = 0;
          if (!v58)
          {
            goto LABEL_21;
          }

LABEL_19:
          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56);
          }

          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v36) = 0;
        v41 = 0;
        if ((v64 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v37 = v60;
      v36 = v59;
      v59 = 0uLL;
      v38 = v61;
      v39 = v62;
      v40 = v63;
      v60 = 0;
      v62 = 0uLL;
      v63 = 0;
      v41 = 1;
      v42 = 1;
      v43 = 0;
      if (v58)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v43 = 0;
    }

LABEL_21:
    if (v53 == 1)
    {
      if (v52 == 1)
      {
        if (v51 < 0)
        {
          operator delete(__p);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }
      }

      if (v47 == 1 && SHIBYTE(v46) < 0)
      {
        operator delete(v45[0]);
      }
    }

    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67);
    }

    sub_27112B960(&v32, 0);
    v4 = 0;
    goto LABEL_82;
  }

LABEL_83:
  v30 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27115D804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280879FD0);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27115D8E4(uint64_t result)
{
  if (atomic_fetch_add((result + 48), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27115D920()
{
  if (atomic_load_explicit(&qword_280879FE0, memory_order_acquire))
  {
    return qword_280879FD8;
  }

  if (__cxa_guard_acquire(&qword_280879FE0))
  {
    qword_280879FD8 = sub_27112B4B8();
    __cxa_guard_release(&qword_280879FE0);
  }

  return qword_280879FD8;
}

void *sub_27115D984(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C6F0, 0);
  if (result)
  {
    return (*(a1 + 16) == result[2]);
  }

  return result;
}

void sub_27115DA00(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877950, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877950))
    {
      sub_2718519B4("VZDestination]", 0xDuLL, qword_280877938);
      __cxa_guard_release(&qword_280877950);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27115DEB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_280877950);
  __cxa_begin_catch(a1);
  sub_27115F4B8();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280877938, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27115DE20);
}

uint64_t sub_27115E000(uint64_t result)
{
  if (atomic_fetch_add((result + 40), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_27115E03C()
{
  if (atomic_load_explicit(&qword_28087A000, memory_order_acquire))
  {
    return qword_280879FF8;
  }

  if (__cxa_guard_acquire(&qword_28087A000))
  {
    qword_280879FF8 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A000);
  }

  return qword_280879FF8;
}

uint64_t sub_27115E0A0(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C4F8, 0);
  if (result)
  {
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = *(result + 16);
    if (v5 - v6 == *(result + 24) - v7)
    {
      if (v6 == v5)
      {
        return 1;
      }

      else
      {
        v8 = v6 + 32;
        do
        {
          v9 = *v7;
          v7 += 4;
          result = *(v8 - 32) == v9;
          v10 = *(v8 - 32) != v9 || v8 == v5;
          v8 += 32;
        }

        while (!v10);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_27115E16C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877B50, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877B50))
    {
      sub_2718519B4("VZDestinationList]", 0x11uLL, qword_280877B38);
      __cxa_guard_release(&qword_280877B50);
    }
  }

  v2 = a1;
  operator new();
}

void sub_27115E7EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  __cxa_guard_abort(&qword_280877B50);
  __cxa_begin_catch(a1);
  sub_271160F00();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280877B38, &__p, 0);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x27115E744);
}

uint64_t sub_27115E960(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 8);
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

void sub_27115EA48(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27115EA9C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_27115EAC4(void *a1)
{
  if (a1)
  {
    sub_27115EAC4(*a1);
    sub_27115EAC4(a1[1]);
    v2 = a1[8];
    a1[8] = 0;
    if (v2)
    {
      (*(*v2 + 24))(v2);
    }

    v3 = a1[7];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = a1[5];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a1;
    }

    else
    {
      v5 = a1;
    }

    operator delete(v5);
  }
}

uint64_t sub_27115EBF0(std::string *a1, unint64_t *a2, std::string *a3, unint64_t *a4)
{
  v9 = 0;
  v11 = v8;
  v12 = a1;
  v13 = v8;
  v14 = a1;
  v15 = a1;
  v10.__r_.__value_.__r.__words[0] = &v11;
  sub_27115EE04(&v10);
  std::to_string(&v10, *a2);
  v11 = v8;
  v12 = &v10;
  v13 = v8;
  v14 = &v10;
  v15 = &v10;
  if (v9 == -1)
  {
    sub_2711308D4();
  }

  v16 = &v11;
  (off_28812D4C8[v9])(&v16, v8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v11 = v8;
  v12 = a3;
  v13 = v8;
  v14 = a3;
  v15 = a3;
  if (v9 == -1)
  {
    sub_2711308D4();
  }

  v10.__r_.__value_.__r.__words[0] = &v11;
  (*(&off_28812D4E0 + v9))(&v10, v8);
  std::to_string(&v10, *a4);
  v11 = v8;
  v12 = &v10;
  v13 = v8;
  v14 = &v10;
  v15 = &v10;
  if (v9 == -1)
  {
    sub_2711308D4();
  }

  v16 = &v11;
  (off_28812D4C8[v9])(&v16, v8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v9 == -1)
  {
    sub_2711308D4();
  }

  v11 = &v10;
  result = (off_28812D4F8[v9])(&v11, v8);
  if (v9 != -1)
  {
    return (off_28812D4B0[v9])(&v11, v8);
  }

  return result;
}

size_t sub_27115EE04(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812D4B0[v3])(&v6, v1);
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

_BYTE *sub_27115EF08(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_27115F308(a2, v3);
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

size_t sub_27115F008(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812D4B0[v3])(&v6, v1);
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

void sub_27115F0FC(uint64_t *a1, uint64_t a2)
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
    (off_28812D4B0[v9])(&v12, v2);
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

void sub_27115F2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_27115F308(uint64_t a1, const char *a2)
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

void sub_27115F4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_27115F4B8()
{
  if ((atomic_load_explicit(&qword_280877950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877950))
  {
    sub_2718519B4("VZDestination]", 0xDuLL, qword_280877938);

    __cxa_guard_release(&qword_280877950);
  }
}

void sub_27115F73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27115F76C(void *result)
{
  *result = &unk_28812D520;
  v1 = result[2];
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

void sub_27115F800(void *a1)
{
  *a1 = &unk_28812D520;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27115F914(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_28812D520;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_27115F94C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_27115F9C8(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t sub_27115FA60(uint64_t result, void *a2)
{
  if (*(result + 8))
  {
    v2 = result;
    v3 = sub_27115FBA0(0, a2);
    result = (*(**(v2 + 8) + 16))();
    if (v3)
    {
      v4 = *(*v3 + 24);

      return v4(v3);
    }
  }

  return result;
}

void sub_27115FAF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27115FB28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z27ForwardReceivedMessageBlockU13block_pointerFvPK12VZLogMessageEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z27ForwardReceivedMessageBlockU13block_pointerFvPK12VZLogMessageEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z27ForwardReceivedMessageBlockU13block_pointerFvPK12VZLogMessageEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z27ForwardReceivedMessageBlockU13block_pointerFvPK12VZLogMessageEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_27115FBA0(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  result = operator new(0x48uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = &unk_288117810;
    v5 = a2[1];
    result[2] = *a2;
    result[3] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = a2[3];
    v6 = a2[4];
    result[4] = off_28810C940;
    result[5] = v7;
    result[6] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *(result + 14) = 1;
    *result = &unk_288119A08;
    result[1] = &unk_288119A58;
    result[8] = 0;
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877AD0))
    {
      sub_2718519B4("VZLogMessage]", 0xCuLL, qword_280877AB8);
      __cxa_guard_release(&qword_280877AD0);
    }

    if ((atomic_load_explicit(&qword_280877B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B30))
    {
      sub_27115FECC();
    }

    if (byte_280877B2F < 0)
    {
      sub_271127178(&v27, xmmword_280877B18, *(&xmmword_280877B18 + 1));
    }

    else
    {
      v27 = xmmword_280877B18;
      v28 = unk_280877B28;
    }

    sub_2711309E8(&v25, &v27, 1uLL);
    LOBYTE(v14) = 0;
    v24 = 0;
    sub_27112E0C4(qword_280877AB8, &v25, &v14, a1);
    if (v24 == 1 && v23 == 1)
    {
      if (v22 == 1)
      {
        if (v21 < 0)
        {
          operator delete(__p);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }
      }

      if (v17 == 1 && v16 < 0)
      {
        operator delete(v15);
      }
    }

    v9 = v25;
    if (v25)
    {
      v10 = v26;
      v11 = v25;
      if (v26 != v25)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = v25;
      }

      v26 = v9;
      operator delete(v11);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    result = 0;
    v13 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_27115FE88(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280877B30);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271160110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2711601C4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2881089C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2711601F4(uint64_t a1, void *a2)
{
  v3 = sub_27115FBA0(0, a2);
  result = (*(a1 + 8))(*(a1 + 16), v3);
  if (v3)
  {
    v5 = *(*v3 + 24);

    return v5(v3);
  }

  return result;
}

void sub_271160270(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711602A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z30ForwardReceivedMessageFunctionPFvPvPK12VZLogMessageES_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z30ForwardReceivedMessageFunctionPFvPvPK12VZLogMessageES_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z30ForwardReceivedMessageFunctionPFvPvPK12VZLogMessageES_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z30ForwardReceivedMessageFunctionPFvPvPK12VZLogMessageES_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_271160320(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_2711603AC()
{
  v2 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "std::optional");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271160594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27137F4D0(&a16);
  if (*(v24 - 25) < 0)
  {
    operator delete(*(v24 - 48));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271160604(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877950))
  {
    sub_2718519B4("VZDestination]", 0xDuLL, qword_280877938);
    __cxa_guard_release(&qword_280877950);
  }

  if ((atomic_load_explicit(&qword_28087A018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A018))
  {
    sub_271160A84();
  }

  if (byte_28087A08F < 0)
  {
    sub_271127178(&v23, xmmword_28087A078, *(&xmmword_28087A078 + 1));
  }

  else
  {
    v23 = xmmword_28087A078;
    v24 = unk_28087A088;
  }

  if ((atomic_load_explicit(&qword_28087A010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A010))
  {
    sub_2711603AC();
  }

  if (byte_28087A077 < 0)
  {
    sub_271127178(&v25, xmmword_28087A060, *(&xmmword_28087A060 + 1));
  }

  else
  {
    v25 = xmmword_28087A060;
    v26 = unk_28087A070;
  }

  if ((atomic_load_explicit(&qword_280877990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877990))
  {
    sub_271144B04();
  }

  if (byte_28087798F < 0)
  {
    sub_271127178(&v27, xmmword_280877978, *(&xmmword_280877978 + 1));
  }

  else
  {
    v27 = xmmword_280877978;
    v28 = unk_280877988;
  }

  sub_2711309E8(&v21, &v23, 3uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877938, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_43:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v27);
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271160984(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877990);
  while (1)
  {
    v4 = *(v1 - 1);
    v1 -= 3;
    if (v4 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == (v2 - 112))
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_271160A84()
{
  v2 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "std::function");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271160C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27137F4D0(&a16);
  if (*(v24 - 25) < 0)
  {
    operator delete(*(v24 - 48));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271160ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271160F00()
{
  if ((atomic_load_explicit(&qword_280877B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877B50))
  {
    sub_2718519B4("VZDestinationList]", 0x11uLL, qword_280877B38);

    __cxa_guard_release(&qword_280877B50);
  }
}

double sub_271160F90()
{
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "VZDestinationList");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_28087A0A8 = v5;
  unk_28087A0B8 = v6;
  return result;
}

void sub_271161160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_271161190@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "VZDestination");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_2711613B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711613F0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8 = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      v8[1] = *(v7 + 16);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      v7 += 32;
      v8 += 2;
    }

    while (v7 != v5);
    while (1)
    {
      v9 = *(v4 + 24);
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v10 = *(v4 + 8);
        if (v10)
        {
LABEL_9:
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }
      }

      else
      {
        v10 = *(v4 + 8);
        if (v10)
        {
          goto LABEL_9;
        }
      }

      v4 += 32;
      if (v4 == v5)
      {
        v4 = *a1;
        break;
      }
    }
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t sub_271161558(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v4 = *(i - 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = *(i - 24);
      if (v5)
      {
LABEL_7:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }
      }
    }

    else
    {
      v5 = *(i - 24);
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_271161658@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "VZDestinationList");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_271161874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711618C4(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271161CC4(a2, v3);
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

size_t sub_2711619C4(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812D4B0[v3])(&v6, v1);
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

void sub_271161AB8(uint64_t *a1, uint64_t a2)
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
    (off_28812D4B0[v9])(&v12, v2);
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

void sub_271161C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_271161CC4(uint64_t a1, const char *a2)
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

void sub_271161E60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_271162084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711620C8(uint64_t result)
{
  v1 = *(result + 24);
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

void sub_271162140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2711621BC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271162248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZDictionaryGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A0C8, memory_order_acquire))
  {
    return qword_28087A0C0;
  }

  if (__cxa_guard_acquire(&qword_28087A0C8))
  {
    qword_28087A0C0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A0C8);
  }

  return qword_28087A0C0;
}

uint64_t VZDataCreateWithDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!sub_271162D34("VZDataCreateWithDictionary", a1, a3))
  {
    sub_27113347C(a2, &v20);
    v18 = &v19;
    v19 = a3;
    LOBYTE(v49) = 0;
    v81 = 0;
    if (v48 != 1)
    {
      goto LABEL_20;
    }

    v49 = v20;
    v50 = v21;
    LOBYTE(v51) = 0;
    v53 = 0;
    if (v24 == 1)
    {
      v51 = *v22;
      v52 = v23;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      v53 = 1;
    }

    v54 = v25;
    v55 = v26;
    LOBYTE(v56) = 0;
    v58 = 0;
    if (v29 == 1)
    {
      v56 = v27;
      v57 = v28;
      v28 = 0;
      v27 = 0uLL;
      v58 = 1;
      LOBYTE(v59) = 0;
      v63 = 0;
      if (v32 != 1)
      {
LABEL_8:
        LOBYTE(v64[0]) = 0;
        v66 = 0;
        if (v35 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v59) = 0;
      v63 = 0;
      if (v32 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v60 = v31;
    v59 = *v30;
    v30[1] = 0;
    v31 = 0;
    v30[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v61 = _X0;
    v62 = 0;
    v63 = 1;
    LOBYTE(v64[0]) = 0;
    v66 = 0;
    if (v35 != 1)
    {
LABEL_9:
      LOBYTE(v67) = 0;
      v80 = 0;
      if (v47 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v64 = *v33;
    v65 = v34;
    v34 = 0;
    v33[1] = 0;
    v33[0] = 0;
    v66 = 1;
    LOBYTE(v67) = 0;
    v80 = 0;
    if (v47 != 1)
    {
LABEL_19:
      v81 = 1;
LABEL_20:
      sub_271237B58((a1 + 16), &v49);
    }

LABEL_14:
    LOBYTE(v67) = 0;
    v69 = 0;
    if (v38 == 1)
    {
      v67 = v36;
      v68 = v37;
      v37 = 0;
      v36 = 0uLL;
      v69 = 1;
      LOBYTE(v70) = 0;
      v74 = 0;
      if (v41 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v77 = 0;
        if (v44 != 1)
        {
LABEL_18:
          v78 = v45;
          v79 = v46;
          v80 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v42;
        v76 = v43;
        v43 = 0;
        v42[0] = 0;
        v42[1] = 0;
        v77 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v70) = 0;
      v74 = 0;
      if (v41 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v70 = *v39;
    v71 = v40;
    v40 = 0;
    v39[0] = 0;
    v39[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v72 = _X0;
    v73 = 0;
    v74 = 1;
    LOBYTE(__p) = 0;
    v77 = 0;
    if (v44 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_271162AFC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t *a53)
{
  if (a2)
  {
    sub_2711307D4(&a37);
    sub_271137BDC(&STACK[0x4A0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_271164EF4(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a34 == 1 && a33 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a10);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v56 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v56);
      __cxa_begin_catch(a1);
      v57 = (a35 + 48);
      if (*(a35 + 71) < 0)
      {
        v57 = *v57;
      }

      a9 = v57;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_271164EF4(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a15 == 1 && a14 < 0)
      {
        operator delete(a10.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(STACK[0x4A0]) = 0;
      LOBYTE(STACK[0x518]) = 0;
      sub_271164EF4(&a53, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x27116296CLL);
  }

  _Unwind_Resume(a1);
}

BOOL sub_271162D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A0D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A0D0))
    {
      sub_271164C8C();
      __cxa_guard_release(&qword_28087A0D0);
    }

    if (byte_28087A107 < 0)
    {
      sub_271127178(v7, xmmword_28087A0F0, *(&xmmword_28087A0F0 + 1));
    }

    else
    {
      *v7 = xmmword_28087A0F0;
      v8 = unk_28087A100;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_271162FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZDataGetVZDictionary(uint64_t a1, uint64_t a2)
{
  if (sub_271133B3C("VZDataGetVZDictionary", a1, a2) || *(a1 + 584))
  {
    return;
  }

  v33 = &v34;
  v34 = a2;
  sub_271238A04(a1 + 32, &v22);
  v4 = v32;
  if ((v32 & 1) == 0)
  {
    v11 = v22;
    LOBYTE(v12) = 0;
    v20 = 0;
    if (v31 == 1)
    {
      sub_27112F6CC(&v12, &v23);
      v20 = 1;
    }

    v21 = 1;
    sub_2711654F4(&v33, &v11);
    if (v21 == 1 && v20 == 1)
    {
      if (v19 == 1)
      {
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      if (v14 == 1 && v13 < 0)
      {
        operator delete(v12);
      }
    }

    goto LABEL_29;
  }

  sub_2711657CC(&v22);
  v5 = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (v5)
  {
    v5[1] = v22;
    v22 = 0uLL;
    *(v5 + 8) = 1;
    *v5 = &unk_28812D5B8;
    *(v5 + 1) = &unk_28812D608;
  }

  else
  {
    LOBYTE(v11) = 0;
    v21 = 0;
    sub_2711654F4(&v33, &v11);
    if (v21 == 1 && v20 == 1)
    {
      if (v19 == 1)
      {
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      v5 = 0;
      if (v14 != 1 || (v13 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      operator delete(v12);
    }

    v5 = 0;
  }

LABEL_29:
  if (v32 == 1)
  {
    v6 = *(&v22 + 1);
    if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = v5;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v5 = v7;
    }
  }

  else if (v31 == 1)
  {
    if (v30 == 1)
    {
      if (v29 < 0)
      {
        v8 = v5;
        operator delete(v28);
        v5 = v8;
      }

      if (v27 < 0)
      {
        v9 = v5;
        operator delete(v26);
        v5 = v9;
      }
    }

    if (v25 == 1 && v24 < 0)
    {
      v10 = v5;
      operator delete(v23);
      v5 = v10;
    }
  }

  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  *(a1 + 584) = v5;
}

void sub_271163310(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113827C(v37 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_2711654F4((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a34 == 1 && a33 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a35 + 48);
    if (*(a35 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_2711654F4((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 192) = 0;
    *(v37 - 72) = 0;
    sub_2711654F4((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711632F0);
}

uint64_t VZDictionaryCreateWithJsonString(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_271146460("VZDictionaryCreateWithJsonString", a1, a4))
  {
    v7 = &v8;
    v8 = a4;
    sub_27123767C(a1);
  }

  return 0;
}

void sub_271163870(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error __p, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_2711307D4(&a37);
  sub_27113827C(v37 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_271165918((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a34 == 1 && a33 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a35 + 48);
    if (*(a35 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 192) = a16;
    sub_27184A2B4(v37 - 176, &a17);
    *(v37 - 72) = 1;
    sub_271165918((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 192) = 0;
    *(v37 - 72) = 0;
    sub_271165918((v37 - 64), v37 - 192);
    sub_2711307D4(v37 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x271163854);
}

void sub_271163E28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const char *a11, std::logic_error a12, int a13, __int16 a14, char a15, char a16, char a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error __p, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_2711307D4(&a39);
  sub_27113827C(v39 - 176);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a12, exception_ptr);
    a12.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a11 = std::logic_error::what(&a12);
    sub_27113604C(&__p, &a11);
    sub_271369D54(&__p, &a18);
    *(v39 - 176) = a18;
    sub_27184A2B4(v39 - 160, &a19);
    *(v39 - 56) = 1;
    sub_271165D98((v39 - 48), v39 - 176);
    sub_2711307D4(v39 - 176);
    sub_27112D71C(&a18);
    if (a36 == 1 && a35 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a12);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v43 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v43);
    __cxa_begin_catch(a1);
    v44 = (a37 + 48);
    if (*(a37 + 71) < 0)
    {
      v44 = *v44;
    }

    a11 = v44;
    sub_27113604C(&a12, &a11);
    sub_27136A868(&a12, &a18);
    *(v39 - 176) = a18;
    sub_27184A2B4(v39 - 160, &a19);
    *(v39 - 56) = 1;
    sub_271165D98((v39 - 48), v39 - 176);
    sub_2711307D4(v39 - 176);
    sub_27112D71C(&a18);
    if (a17 == 1 && a16 < 0)
    {
      operator delete(a12.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v39 - 176) = 0;
    *(v39 - 56) = 0;
    sub_271165D98((v39 - 48), v39 - 176);
    sub_2711307D4(v39 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x271163DACLL);
}

char *VZDictionaryGetAsJsonString(uint64_t a1, uint64_t a2)
{
  if (sub_271162D34("VZDictionaryGetAsJsonString", a1, a2))
  {
    return 0;
  }

  result = sub_2715C971C(*(a1 + 16), 0);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t VZDictionaryGetAsFormattedJsonString(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (sub_271162D34("VZDictionaryGetAsFormattedJsonString", a1, a4))
  {
    return 0;
  }

  sub_27123725C((a1 + 16), a2, a3, v12);
  result = sub_2711641D0("VZDictionaryGetAsFormattedJsonString", v12, 0, a4);
  if ((v21 & 1) == 0 && v20 == 1)
  {
    if (v19 == 1)
    {
      if (v18 < 0)
      {
        v9 = result;
        operator delete(__p);
        result = v9;
      }

      if (v16 < 0)
      {
        v10 = result;
        operator delete(v15);
        result = v10;
      }
    }

    if (v14 == 1 && v13 < 0)
    {
      v11 = result;
      operator delete(v12[2]);
      return v11;
    }
  }

  return result;
}

uint64_t sub_2711641D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  if (a2[15])
  {
    return *a2;
  }

  v5 = a3;
  sub_27113F150("in function ", &v20);
  sub_271849064(a2, &v8, v10);
  sub_27112B960(v10, a4);
  if (v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  if ((v9 & 0x80000000) == 0)
  {
    return v5;
  }

  operator delete(v8);
  return v5;
}

void sub_2711642C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_27112D71C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZDictionaryGetAsCFDictionary(uint64_t a1, uint64_t a2)
{
  if (!sub_271162D34("VZDictionaryGetAsCFDictionary", a1, a2))
  {
    sub_271237474((a1 + 16));
  }

  return 0;
}

void sub_2711644D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  sub_27112D71C(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    sub_27113827C(&a10);
    _Unwind_Resume(a1);
  }

  sub_27113827C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_27116452C(uint64_t result)
{
  if (atomic_fetch_add((result + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_271164568()
{
  if (atomic_load_explicit(&qword_28087A0C8, memory_order_acquire))
  {
    return qword_28087A0C0;
  }

  if (__cxa_guard_acquire(&qword_28087A0C8))
  {
    qword_28087A0C0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A0C8);
  }

  return qword_28087A0C0;
}

void *sub_2711645CC(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812D668, 0);
  if (result)
  {
    return sub_2715C9EC0(*(a1 + 16), result[2]);
  }

  return result;
}

uint64_t sub_271164650(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  sub_271165888();
  sub_27112B400(v20, "failed to compare equal");
  sub_27112DB38(qword_28087A120, v20, 0);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_2711646A8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087A0E0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087A0E0))
    {
      sub_2718519B4("VZDictionary]", 0xCuLL, qword_28087A120);
      __cxa_guard_release(&qword_28087A0E0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_271164B4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087A0E0);
  __cxa_begin_catch(a1);
  sub_271165888();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087A120, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x271164ABCLL);
}

double sub_271164C8C()
{
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "VZDictionary");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087A0F0 = v7;
  unk_28087A100 = v8;
  return result;
}

void sub_271164EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271164EF4(uint64_t **a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4("VZData]", 6uLL, qword_280877838);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087A0D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A0D8))
  {
    sub_27116528C();
    __cxa_guard_release(&qword_28087A0D8);
  }

  if (byte_28087A11F < 0)
  {
    sub_271127178(&v23, xmmword_28087A108, *(&xmmword_28087A108 + 1));
  }

  else
  {
    v23 = xmmword_28087A108;
    v24 = unk_28087A118;
  }

  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  if (byte_28087782F < 0)
  {
    sub_271127178(&v25, xmmword_280877818, *(&xmmword_280877818 + 1));
  }

  else
  {
    v25 = xmmword_280877818;
    v26 = unk_280877828;
  }

  sub_2711309E8(&v21, &v23, 2uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877838, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711651E8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_27116528C()
{
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "VZDictionary");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087A108 = v7;
  unk_28087A118 = v8;
  return result;
}

void sub_2711654B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711654F4(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A0E0))
  {
    sub_2718519B4("VZDictionary]", 0xCuLL, qword_28087A120);
    __cxa_guard_release(&qword_28087A0E0);
  }

  if ((atomic_load_explicit(&qword_2808778D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778D0))
  {
    sub_271138414(&xmmword_2808778B8);
    __cxa_guard_release(&qword_2808778D0);
  }

  if (byte_2808778CF < 0)
  {
    sub_271127178(&v22, xmmword_2808778B8, *(&xmmword_2808778B8 + 1));
  }

  else
  {
    v22 = xmmword_2808778B8;
    v23 = unk_2808778C8;
  }

  sub_2711309E8(&v20, &v22, 1uLL);
  LOBYTE(v9) = 0;
  v19 = 0;
  if (*(a2 + 120) == 1)
  {
    v9 = *a2;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v10, (a2 + 16));
      v18 = 1;
    }

    v19 = 1;
  }

  sub_27112E0C4(qword_28087A120, &v20, &v9, **a1);
  if (v19 == 1 && v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }
  }

  v4 = v20;
  if (v20)
  {
    v5 = v21;
    v6 = v20;
    if (v21 != v20)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v20;
    }

    v21 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_27116577C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 96));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711657CC(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_2711365E8(v3, v1);
    sub_271137B44(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_271165844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_271165858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

void sub_271165888()
{
  if ((atomic_load_explicit(&qword_28087A0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A0E0))
  {
    sub_2718519B4("VZDictionary]", 0xCuLL, qword_28087A120);

    __cxa_guard_release(&qword_28087A0E0);
  }
}

void sub_271165918(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A0E0))
  {
    sub_2718519B4("VZDictionary]", 0xCuLL, qword_28087A120);
    __cxa_guard_release(&qword_28087A0E0);
  }

  if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
  {
    sub_27114C390(&xmmword_2808779B8);
    __cxa_guard_release(&qword_2808779D0);
  }

  if (byte_2808779CF < 0)
  {
    sub_271127178(&v23, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
  }

  else
  {
    v23 = xmmword_2808779B8;
    v24 = unk_2808779C8;
  }

  if ((atomic_load_explicit(&qword_28087A0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A0E8))
  {
    *&xmmword_28087A138 = 0x266C6F6F62;
    byte_28087A14F = 5;
    __cxa_guard_release(&qword_28087A0E8);
  }

  if (byte_28087A14F < 0)
  {
    sub_271127178(&v25, xmmword_28087A138, *(&xmmword_28087A138 + 1));
  }

  else
  {
    v25 = xmmword_28087A138;
    v26 = unk_28087A148;
  }

  if ((atomic_load_explicit(&qword_28087A0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A0E8))
  {
    *&xmmword_28087A138 = 0x266C6F6F62;
    byte_28087A14F = 5;
    __cxa_guard_release(&qword_28087A0E8);
  }

  if (byte_28087A14F < 0)
  {
    sub_271127178(&v27, xmmword_28087A138, *(&xmmword_28087A138 + 1));
  }

  else
  {
    v27 = xmmword_28087A138;
    v28 = unk_28087A148;
  }

  sub_2711309E8(&v21, &v23, 3uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_28087A120, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_43:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v27);
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_271165CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  sub_27112D66C(v25 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0(&a25);
  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
    if ((*(v26 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      if (*(v26 - 121) < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v26 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v26 - 120));
  if (*(v26 - 121) < 0)
  {
LABEL_4:
    operator delete(*(v26 - 144));
    _Unwind_Resume(a1);
  }

LABEL_7:
  _Unwind_Resume(a1);
}

void sub_271165D98(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087A0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A0E0))
  {
    sub_2718519B4("VZDictionary]", 0xCuLL, qword_28087A120);
    __cxa_guard_release(&qword_28087A0E0);
  }

  if ((atomic_load_explicit(&qword_280877A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A50))
  {
    sub_271151850();
  }

  if (byte_280877A4F < 0)
  {
    sub_271127178(&v22, xmmword_280877A38, *(&xmmword_280877A38 + 1));
  }

  else
  {
    v22 = xmmword_280877A38;
    v23 = unk_280877A48;
  }

  sub_2711309E8(&v20, &v22, 1uLL);
  LOBYTE(v9) = 0;
  v19 = 0;
  if (*(a2 + 120) == 1)
  {
    v9 = *a2;
    LOBYTE(v10) = 0;
    v18 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v10, (a2 + 16));
      v18 = 1;
    }

    v19 = 1;
  }

  sub_27112E0C4(qword_28087A120, &v20, &v9, **a1);
  if (v19 == 1 && v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }
  }

  v4 = v20;
  if (v20)
  {
    v5 = v21;
    v6 = v20;
    if (v21 != v20)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v20;
    }

    v21 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_271166020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 96));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_2711660AC(uint64_t a1)
{
  sub_271167834(a1 + 16, *(a1 + 24));

  JUMPOUT(0x2743BF050);
}

void sub_2711660FC(uint64_t a1)
{
  sub_271167834(a1 + 8, *(a1 + 16));

  JUMPOUT(0x2743BF050);
}

uint64_t VZEnableStatesGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A158, memory_order_acquire))
  {
    return qword_28087A150;
  }

  if (__cxa_guard_acquire(&qword_28087A158))
  {
    qword_28087A150 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A158);
  }

  return qword_28087A150;
}

_OWORD *VZEnableStatesCreate()
{
  result = operator new(0x30uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[1] = 0u;
    result[2] = 0u;
    *(result + 10) = 1;
    *result = &unk_288119848;
    *(result + 1) = &unk_288119898;
    *(result + 2) = result + 24;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877BB0))
    {
      sub_2718519B4("VZEnableStates]", 0xEuLL, qword_280877B98);
      __cxa_guard_release(&qword_280877BB0);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v5) = 0;
    v15 = 0;
    sub_27112E0C4(qword_280877B98, &v16, &v5, 0);
    if (v15 == 1 && v14 == 1)
    {
      if (v13 == 1)
      {
        if (v12 < 0)
        {
          operator delete(__p);
        }

        if (v10 < 0)
        {
          operator delete(v9);
        }
      }

      if (v8 == 1 && v7 < 0)
      {
        operator delete(v6);
      }
    }

    v1 = v16;
    if (v16)
    {
      v2 = v17;
      v3 = v16;
      if (v17 != v16)
      {
        do
        {
          v4 = *(v2 - 1);
          v2 -= 3;
          if (v4 < 0)
          {
            operator delete(*v2);
          }
        }

        while (v2 != v1);
        v3 = v16;
      }

      v17 = v1;
      operator delete(v3);
    }

    return 0;
  }

  return result;
}

uint64_t VZEnableStatesGetSize(uint64_t a1)
{
  v2 = sub_2711663C4("VZEnableStatesGetSize", a1, 0);
  result = 0;
  if (!v2)
  {
    return *(a1 + 32);
  }

  return result;
}

BOOL sub_2711663C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280877BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877BD0))
    {
      sub_271167948(&xmmword_280877BB8);
      __cxa_guard_release(&qword_280877BD0);
    }

    if (byte_280877BCF < 0)
    {
      sub_271127178(v7, xmmword_280877BB8, *(&xmmword_280877BB8 + 1));
    }

    else
    {
      *v7 = xmmword_280877BB8;
      v8 = unk_280877BC8;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_271166640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL VZEnableStatesContainsKey(uint64_t a1, char *a2)
{
  if (sub_2711663C4("VZEnableStatesContainsKey", a1, 0) || sub_271146460("VZEnableStatesContainsKey", a2, 0))
  {
    return 0;
  }

  return sub_271239490(a1 + 16, a2);
}

uint64_t VZEnableStatesGet(uint64_t a1, char *a2)
{
  if (sub_2711663C4("VZEnableStatesGet", a1, 0))
  {
    return 255;
  }

  if (sub_271146460("VZEnableStatesGet", a2, 0))
  {
    return 255;
  }

  sub_27123959C(a2, a1 + 16, v8);
  result = sub_27116683C("VZEnableStatesGet", v8, 255, 0);
  if ((v17 & 1) == 0 && v16 == 1)
  {
    if (v15 == 1)
    {
      if (v14 < 0)
      {
        v5 = result;
        operator delete(__p);
        result = v5;
      }

      if (v12 < 0)
      {
        v6 = result;
        operator delete(v11);
        result = v6;
      }
    }

    if (v10 == 1 && v9 < 0)
    {
      v7 = result;
      operator delete(v8[2]);
      return v7;
    }
  }

  return result;
}

uint64_t sub_27116683C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  if (a2[15])
  {
    return *a2;
  }

  v5 = a3;
  sub_27113F150("in function ", &v20);
  sub_271849064(a2, &v8, v10);
  sub_27112B960(v10, a4);
  if (v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  if ((v9 & 0x80000000) == 0)
  {
    return v5;
  }

  operator delete(v8);
  return v5;
}

void sub_271166934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_27112D71C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZEnableStatesGetKeyAt(uint64_t a1, uint64_t a2)
{
  v4 = sub_2711663C4("VZEnableStatesGetKeyAt", a1, 0);
  result = 0;
  if (!v4)
  {
    sub_271239A64(a1 + 16, a2, v9);
    result = sub_2711641D0("VZEnableStatesGetKeyAt", v9, 0, 0);
    if ((v18 & 1) == 0 && v17 == 1)
    {
      if (v16 == 1)
      {
        if (v15 < 0)
        {
          v6 = result;
          operator delete(__p);
          result = v6;
        }

        if (v13 < 0)
        {
          v7 = result;
          operator delete(v12);
          result = v7;
        }
      }

      if (v11 == 1 && v10 < 0)
      {
        v8 = result;
        operator delete(v9[2]);
        return v8;
      }
    }
  }

  return result;
}

uint64_t VZEnableStatesGetValueAt(uint64_t a1, uint64_t a2)
{
  if (sub_2711663C4("VZEnableStatesGetValueAt", a1, 0))
  {
    return 255;
  }

  sub_271239FB0(a1 + 16, a2, v8);
  result = sub_27116683C("VZEnableStatesGetValueAt", v8, 255, 0);
  if ((v17 & 1) == 0 && v16 == 1)
  {
    if (v15 == 1)
    {
      if (v14 < 0)
      {
        v5 = result;
        operator delete(__p);
        result = v5;
      }

      if (v12 < 0)
      {
        v6 = result;
        operator delete(v11);
        result = v6;
      }
    }

    if (v10 == 1 && v9 < 0)
    {
      v7 = result;
      operator delete(v8[2]);
      return v7;
    }
  }

  return result;
}

uint64_t VZEnableStatesSet(uint64_t a1, char *a2, unsigned int a3)
{
  if (sub_271166CD0("VZEnableStatesSet", a1))
  {
    return 0;
  }

  if (sub_271146460("VZEnableStatesSet", a2, 0))
  {
    return 0;
  }

  sub_27123A280(a2, a1 + 16, a3, v10);
  result = sub_27113C65C("VZEnableStatesSet", v10, 0, 0);
  if ((v20 & 1) == 0 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        v7 = result;
        operator delete(__p);
        result = v7;
      }

      if (v15 < 0)
      {
        v8 = result;
        operator delete(v14);
        result = v8;
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      v9 = result;
      operator delete(v11);
      return v9;
    }
  }

  return result;
}

BOOL sub_271166CD0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A160))
    {
      sub_271167BA8();
      __cxa_guard_release(&qword_28087A160);
    }

    if (byte_28087A17F < 0)
    {
      sub_271127178(v5, xmmword_28087A168, *(&xmmword_28087A168 + 1));
    }

    else
    {
      *v5 = xmmword_28087A168;
      v6 = unk_28087A178;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}

void sub_271166F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL VZEnableStatesRemove(uint64_t a1, char *a2)
{
  if (sub_271166CD0("VZEnableStatesRemove", a1) || sub_271146460("VZEnableStatesRemove", a2, 0))
  {
    return 0;
  }

  return sub_27123A508((a1 + 16), a2);
}

uint64_t sub_271166FFC(uint64_t result)
{
  if (atomic_fetch_add((result + 40), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_271167038()
{
  if (atomic_load_explicit(&qword_28087A158, memory_order_acquire))
  {
    return qword_28087A150;
  }

  if (__cxa_guard_acquire(&qword_28087A158))
  {
    qword_28087A150 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A158);
  }

  return qword_28087A150;
}

uint64_t sub_27116709C(void *a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C680, 0);
  if (result)
  {
    if (a1[4] == *(result + 32))
    {
      v5 = a1[2];
      v6 = a1 + 3;
      if (v5 == v6)
      {
        return 1;
      }

      else
      {
        v7 = *(result + 16);
        while (1)
        {
          v8 = *(v5 + 55);
          if (v8 >= 0)
          {
            v9 = *(v5 + 55);
          }

          else
          {
            v9 = v5[5];
          }

          v10 = *(v7 + 55);
          v11 = v10;
          if ((v10 & 0x80u) != 0)
          {
            v10 = v7[5];
          }

          if (v9 != v10)
          {
            break;
          }

          v12 = v8 >= 0 ? v5 + 4 : v5[4];
          v13 = v7[4];
          v14 = v11 >= 0 ? v7 + 4 : v7[4];
          v15 = !memcmp(v12, v14, v9) && *(v5 + 56) == *(v7 + 56);
          if (!v15)
          {
            break;
          }

          v16 = v5[1];
          v17 = v5;
          if (v16)
          {
            do
            {
              v5 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v5 = v17[2];
              v15 = *v5 == v17;
              v17 = v5;
            }

            while (!v15);
          }

          v18 = v7[1];
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
            do
            {
              v19 = v7[2];
              v15 = *v19 == v7;
              v7 = v19;
            }

            while (!v15);
          }

          v7 = v19;
          if (v5 == v6)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_271167248(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877BB0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877BB0))
    {
      sub_2718519B4("VZEnableStates]", 0xEuLL, qword_280877B98);
      __cxa_guard_release(&qword_280877BB0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711676F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_280877BB0);
  __cxa_begin_catch(a1);
  sub_2711678B8();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280877B98, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x271167664);
}

void sub_271167834(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_271167834(a1, *a2);
    sub_271167834(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_2711678B8()
{
  if ((atomic_load_explicit(&qword_280877BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877BB0))
  {
    sub_2718519B4("VZEnableStates]", 0xEuLL, qword_280877B98);

    __cxa_guard_release(&qword_280877BB0);
  }
}

double sub_271167948@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "VZEnableStates");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_271167B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_271167BA8()
{
  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "VZEnableStates");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_28087A168 = v5;
  unk_28087A178 = v6;
  return result;
}

void sub_271167D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void VZErrorSetGlobalErrorHandler(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  v2 = 0;
  v3 = 0;
  sub_27112B7B8(&v2);
  v1 = v3;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void sub_271167E9C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_271167EE0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271167F34(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t sub_271167F5C(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(result + 24);
      v3 = *(result + 16);
      if (v2 != v1)
      {
        v4 = result;
        v5 = 0;
        do
        {
          v6 = v2 + v5;
          if (*(v2 + v5 - 8) == 1)
          {
            v7 = *(v6 - 16);
            if (v7 != -1)
            {
              (off_28812D6B8[v7])(&v9, v6 - 48);
            }

            *(v6 - 16) = -1;
          }

          *(v6 - 816) = off_2881327C0;
          sub_271347580(v6 - 800);
          v5 -= 816;
        }

        while (v2 + v5 != v1);
        result = v4;
        v3 = *(v4 + 16);
      }

      *(result + 24) = v1;
      v8 = result;
      operator delete(v3);
      return v8;
    }
  }

  return result;
}

void sub_271168068(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      v2 = *(a1 + 16);
      v3 = *(a1 + 8);
      if (v2 != v1)
      {
        v4 = a1;
        v5 = 0;
        do
        {
          v6 = v2 + v5;
          if (*(v2 + v5 - 8) == 1)
          {
            v7 = *(v6 - 16);
            if (v7 != -1)
            {
              (off_28812D6B8[v7])(&v8, v6 - 48);
            }

            *(v6 - 16) = -1;
          }

          *(v6 - 816) = off_2881327C0;
          sub_271347580(v6 - 800);
          v5 -= 816;
        }

        while (v2 + v5 != v1);
        a1 = v4;
        v3 = *(v4 + 8);
      }

      *(a1 + 16) = v1;
      operator delete(v3);
    }
  }
}

uint64_t sub_27116816C(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      v2 = *(a1 + 24);
      v3 = *(a1 + 16);
      if (v2 != v1)
      {
        v4 = a1;
        v5 = 0;
        do
        {
          v6 = v2 + v5;
          if (*(v2 + v5 - 8) == 1)
          {
            v7 = *(v6 - 16);
            if (v7 != -1)
            {
              (off_28812D6B8[v7])(&v10, v6 - 48);
            }

            *(v6 - 16) = -1;
          }

          *(v6 - 816) = off_2881327C0;
          sub_271347580(v6 - 800);
          v5 -= 816;
        }

        while (v2 + v5 != v1);
        a1 = v4;
        v3 = *(v4 + 16);
      }

      *(a1 + 24) = v1;
      v8 = a1;
      operator delete(v3);
      a1 = v8;
    }
  }

  return MEMORY[0x2743BF050](a1, 0x10A3C402FDDA82CLL);
}

void sub_2711682C4(uint64_t a1)
{
  sub_27116DD80(a1 + 8);

  JUMPOUT(0x2743BF050);
}

void sub_271168310(uint64_t a1)
{
  sub_27116DD80(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271168358(uint64_t a1)
{
  *(a1 + 8) = &unk_288118CA8;
  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  sub_2712B4104(a1 + 32);
  v2 = *(a1 + 24);
  *(a1 + 16) = &unk_28810BFE8;
  *(a1 + 24) = 0;
  if (v2)
  {
    v3 = sub_2714D78B4(v2);
    MEMORY[0x2743BF050](v3, 0x10F2C4013865076);
  }

  return a1;
}

uint64_t sub_271168400(uint64_t a1)
{
  *a1 = &unk_288118CA8;
  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_2712B4104(a1 + 24);
  result = *(a1 + 16);
  *(a1 + 8) = &unk_28810BFE8;
  *(a1 + 16) = 0;
  if (result)
  {
    sub_2714D78B4(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

void sub_2711684B8(uint64_t a1)
{
  *(a1 + 8) = &unk_288118CA8;
  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  sub_2712B4104(a1 + 32);
  v2 = *(a1 + 24);
  *(a1 + 16) = &unk_28810BFE8;
  *(a1 + 24) = 0;
  if (v2)
  {
    v3 = sub_2714D78B4(v2);
    MEMORY[0x2743BF050](v3, 0x10F2C4013865076);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271168580(uint64_t a1)
{
  *a1 = &unk_288118CA8;
  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_2712B4104(a1 + 24);
  v2 = *(a1 + 16);
  *(a1 + 8) = &unk_28810BFE8;
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = sub_2714D78B4(v2);
    MEMORY[0x2743BF050](v3, 0x10F2C4013865076);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZFileExportOptionsGetTypeID()
{
  if (atomic_load_explicit(&qword_28087A188, memory_order_acquire))
  {
    return qword_28087A180;
  }

  if (__cxa_guard_acquire(&qword_28087A188))
  {
    qword_28087A180 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087A188);
  }

  return qword_28087A180;
}

_OWORD *VZFileExportOptionsCreate()
{
  result = operator new(0x58uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[3] = 0u;
    result[4] = 0u;
    *(result + 10) = 0;
    result[1] = 0u;
    result[2] = 0u;
    *(result + 6) = 1000;
    *(result + 56) = 1;
    *(result + 64) = 1;
    *(result + 20) = 1;
    *result = &unk_2881193C8;
    *(result + 1) = &unk_288119418;
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087A190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A190))
    {
      sub_2718519B4("VZFileExportOptions]", 0x13uLL, qword_28087A218);
      __cxa_guard_release(&qword_28087A190);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v5) = 0;
    v15 = 0;
    sub_27112E0C4(qword_28087A218, &v16, &v5, 0);
    if (v15 == 1 && v14 == 1)
    {
      if (v13 == 1)
      {
        if (v12 < 0)
        {
          operator delete(__p);
        }

        if (v10 < 0)
        {
          operator delete(v9);
        }
      }

      if (v8 == 1 && v7 < 0)
      {
        operator delete(v6);
      }
    }

    v1 = v16;
    if (v16)
    {
      v2 = v17;
      v3 = v16;
      if (v17 != v16)
      {
        do
        {
          v4 = *(v2 - 1);
          v2 -= 3;
          if (v4 < 0)
          {
            operator delete(*v2);
          }
        }

        while (v2 != v1);
        v3 = v16;
      }

      v17 = v1;
      operator delete(v3);
    }

    return 0;
  }

  return result;
}

BOOL VZFileExportOptionsSetAsyncQueueMaxElementCount(uint64_t a1, uint64_t a2)
{
  result = sub_271168904("VZFileExportOptionsSetAsyncQueueMaxElementCount", a1);
  if (!result)
  {
    if (a2)
    {
      if ((*(a1 + 64) & 1) == 0)
      {
        *(a1 + 56) = 0;
        *(a1 + 64) = 1;
      }

      *(a1 + 48) = a2;
      *(a1 + 56) = 1;
    }

    else if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }

  return result;
}

BOOL sub_271168904(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087A198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087A198))
    {
      sub_27116E26C();
      __cxa_guard_release(&qword_28087A198);
    }

    if (byte_28087A247 < 0)
    {
      sub_271127178(v5, xmmword_28087A230, *(&xmmword_28087A230 + 1));
    }

    else
    {
      *v5 = xmmword_28087A230;
      v6 = unk_28087A240;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}