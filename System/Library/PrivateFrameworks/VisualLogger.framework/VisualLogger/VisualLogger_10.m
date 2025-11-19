void sub_2711E0484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711E0720(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v6 = *a1;
  v5 = *(a1 + 8);
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v6)
    {
LABEL_4:
      v7 = sub_27180A200(a1);
      v12 = v7;
      if (v16 > 5u)
      {
        if (v16 <= 7u)
        {
          if (v16 == 6)
          {
            if ((v7 & 7) != 0)
            {
              v20 = 2;
              v21 = 2;
              *&v19 = 2;
              BytePtr = 8;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 1;
            sub_2711EB698(&BytePtr);
          }

          if (v16 == 7)
          {
            if ((v7 & 0xF) != 0)
            {
              v20 = 2;
              v21 = 2;
              *&v19 = 4;
              BytePtr = 16;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 2;
            sub_2711EB7CC(&BytePtr);
          }
        }

        else
        {
          switch(v16)
          {
            case 8u:
              if ((v7 & 0x1F) != 0)
              {
                v20 = 2;
                v21 = 2;
                *&v19 = 8;
                BytePtr = 32;
                sub_2711EE460(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 3;
              sub_2711EB900(&BytePtr);
            case 0xBu:
              if ((v7 & 0xF) != 0)
              {
                v20 = 2;
                v21 = 2;
                *&v19 = 4;
                BytePtr = 16;
                sub_2711EE460(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 2;
              sub_2711EBA34(&BytePtr);
            case 0xCu:
              if ((v7 & 0x1F) != 0)
              {
                v20 = 2;
                v21 = 2;
                *&v19 = 8;
                BytePtr = 32;
                sub_2711EE460(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 3;
              sub_2711EBB68(&BytePtr);
          }
        }
      }

      else
      {
        if (v16 <= 1u)
        {
          if (!v16)
          {
            if ((v7 & 3) != 0)
            {
              v20 = 2;
              v21 = 2;
              *&v19 = 1;
              BytePtr = 4;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1);
            sub_2711E8CC0(&BytePtr);
          }

          if ((v7 & 7) != 0)
          {
            v20 = 2;
            v21 = 2;
            *&v19 = 2;
            BytePtr = 8;
            sub_2711EE460(v22, &v12);
          }

          BytePtr = CFDataGetBytePtr(*a1);
          v18 = sub_27180A200(a1) >> 1;
          sub_2711EB1C4(&BytePtr);
        }

        switch(v16)
        {
          case 2u:
            if ((v7 & 0xF) != 0)
            {
              v20 = 2;
              v21 = 2;
              *&v19 = 4;
              BytePtr = 16;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 2;
            sub_2711EB310(&BytePtr);
          case 3u:
            if ((v7 & 0x1F) != 0)
            {
              v20 = 2;
              v21 = 2;
              *&v19 = 8;
              BytePtr = 32;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 3;
            sub_2711EB444(&BytePtr);
          case 5u:
            if ((v7 & 3) != 0)
            {
              v20 = 2;
              v21 = 2;
              *&v19 = 1;
              BytePtr = 4;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1);
            sub_2711EB578(&BytePtr);
        }
      }

      sub_27183428C(v16);
    }
  }

  else if (v6)
  {
    goto LABEL_4;
  }

  LOBYTE(v13) = 0;
  v15 = 0;
  sub_271369B1C(&v13, &v23);
  *a3 = v23;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v33 != 1)
  {
    *(a3 + 544) = 0;
    goto LABEL_26;
  }

  *(a3 + 40) = 0;
  v8 = v26;
  if (v26 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v25;
    v25 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v9 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    v10 = v29;
    *(v9 + 16) = v28;
    *v9 = v27;
    v27 = 0uLL;
    *(a3 + 72) = v10;
    *(a3 + 80) = v30;
    *(a3 + 96) = v31;
    v28 = 0;
    v30 = 0uLL;
    v31 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 544) = 0;
    if (!v8)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  *(a3 + 48) = 0;
  v9 = a3 + 48;
  *(a3 + 104) = 0;
  if (v32)
  {
    goto LABEL_23;
  }

LABEL_19:
  *(a3 + 112) = 1;
  *(a3 + 544) = 0;
  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2711E17D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711E1A74(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v6 = *a1;
  v5 = *(a1 + 8);
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v6)
    {
LABEL_4:
      v7 = sub_27180A200(a1);
      v12 = v7;
      if (v16 > 5u)
      {
        if (v16 <= 7u)
        {
          if (v16 == 6)
          {
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 2) >= 0x1555555555555556uLL)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 2;
              BytePtr = 12;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 1;
            sub_2711EB698(&BytePtr);
          }

          if (v16 == 7)
          {
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 3) >= 0xAAAAAAAAAAAAAABuLL)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 4;
              BytePtr = 24;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 2;
            sub_2711EB7CC(&BytePtr);
          }
        }

        else
        {
          switch(v16)
          {
            case 8u:
              if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 4) >= 0x555555555555556uLL)
              {
                v20 = 3;
                v21 = 3;
                *&v19 = 8;
                BytePtr = 48;
                sub_2711EE460(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 3;
              sub_2711EB900(&BytePtr);
            case 0xBu:
              if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 3) >= 0xAAAAAAAAAAAAAABuLL)
              {
                v20 = 3;
                v21 = 3;
                *&v19 = 4;
                BytePtr = 24;
                sub_2711EE460(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 2;
              sub_2711EBA34(&BytePtr);
            case 0xCu:
              if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 4) >= 0x555555555555556uLL)
              {
                v20 = 3;
                v21 = 3;
                *&v19 = 8;
                BytePtr = 48;
                sub_2711EE460(v22, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 3;
              sub_2711EBB68(&BytePtr);
          }
        }
      }

      else
      {
        if (v16 <= 1u)
        {
          if (!v16)
          {
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 1) >= 0x2AAAAAAAAAAAAAABuLL)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 1;
              BytePtr = 6;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1);
            sub_2711E8CC0(&BytePtr);
          }

          if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 2) >= 0x1555555555555556uLL)
          {
            v20 = 3;
            v21 = 3;
            *&v19 = 2;
            BytePtr = 12;
            sub_2711EE460(v22, &v12);
          }

          BytePtr = CFDataGetBytePtr(*a1);
          v18 = sub_27180A200(a1) >> 1;
          sub_2711EB1C4(&BytePtr);
        }

        switch(v16)
        {
          case 2u:
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 3) >= 0xAAAAAAAAAAAAAABuLL)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 4;
              BytePtr = 24;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 2;
            sub_2711EB310(&BytePtr);
          case 3u:
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 4) >= 0x555555555555556uLL)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 8;
              BytePtr = 48;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 3;
            sub_2711EB444(&BytePtr);
          case 5u:
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 1) >= 0x2AAAAAAAAAAAAAABuLL)
            {
              v20 = 3;
              v21 = 3;
              *&v19 = 1;
              BytePtr = 6;
              sub_2711EE460(v22, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1);
            sub_2711EB578(&BytePtr);
        }
      }

      sub_27183428C(v16);
    }
  }

  else if (v6)
  {
    goto LABEL_4;
  }

  LOBYTE(v13) = 0;
  v15 = 0;
  sub_271369B1C(&v13, &v23);
  *a3 = v23;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v33 != 1)
  {
    *(a3 + 544) = 0;
    goto LABEL_26;
  }

  *(a3 + 40) = 0;
  v8 = v26;
  if (v26 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v25;
    v25 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v9 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    v10 = v29;
    *(v9 + 16) = v28;
    *v9 = v27;
    v27 = 0uLL;
    *(a3 + 72) = v10;
    *(a3 + 80) = v30;
    *(a3 + 96) = v31;
    v28 = 0;
    v30 = 0uLL;
    v31 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 544) = 0;
    if (!v8)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  *(a3 + 48) = 0;
  v9 = a3 + 48;
  *(a3 + 104) = 0;
  if (v32)
  {
    goto LABEL_23;
  }

LABEL_19:
  *(a3 + 112) = 1;
  *(a3 + 544) = 0;
  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2711E2C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711E2EE0(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v6 = *a1;
  v5 = *(a1 + 8);
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v6)
    {
LABEL_4:
      v7 = sub_27180A200(a1);
      v12 = v7;
      if (v16 > 5u)
      {
        if (v16 <= 7u)
        {
          if (v16 == 6)
          {
            if ((v7 & 1) == 0)
            {
              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 1;
              sub_2711EB698(&BytePtr);
            }

            BytePtr = 2;
            sub_2711F3CE0(v19, &v12);
          }

          if (v16 == 7)
          {
            if ((v7 & 3) != 0)
            {
              BytePtr = 4;
              sub_2711F3CE0(v19, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 2;
            sub_2711EB7CC(&BytePtr);
          }
        }

        else
        {
          switch(v16)
          {
            case 8u:
              if ((v7 & 7) != 0)
              {
                BytePtr = 8;
                sub_2711F3CE0(v19, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 3;
              sub_2711EB900(&BytePtr);
            case 0xBu:
              if ((v7 & 3) != 0)
              {
                BytePtr = 4;
                sub_2711F3CE0(v19, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 2;
              sub_2711EBA34(&BytePtr);
            case 0xCu:
              if ((v7 & 7) != 0)
              {
                BytePtr = 8;
                sub_2711F3CE0(v19, &v12);
              }

              BytePtr = CFDataGetBytePtr(*a1);
              v18 = sub_27180A200(a1) >> 3;
              sub_2711EBB68(&BytePtr);
          }
        }
      }

      else
      {
        if (v16 <= 1u)
        {
          if (!v16)
          {
            v19[0] = CFDataGetBytePtr(*a1);
            v19[1] = sub_27180A200(a1);
            sub_2711E8CC0(v19);
          }

          if ((v7 & 1) == 0)
          {
            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 1;
            sub_2711EB1C4(&BytePtr);
          }

          BytePtr = 2;
          sub_2711F3CE0(v19, &v12);
        }

        switch(v16)
        {
          case 2u:
            if ((v7 & 3) != 0)
            {
              BytePtr = 4;
              sub_2711F3CE0(v19, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 2;
            sub_2711EB310(&BytePtr);
          case 3u:
            if ((v7 & 7) != 0)
            {
              BytePtr = 8;
              sub_2711F3CE0(v19, &v12);
            }

            BytePtr = CFDataGetBytePtr(*a1);
            v18 = sub_27180A200(a1) >> 3;
            sub_2711EB444(&BytePtr);
          case 5u:
            v19[0] = CFDataGetBytePtr(*a1);
            v19[1] = sub_27180A200(a1);
            sub_2711EB578(v19);
        }
      }

      sub_27183428C(v16);
    }
  }

  else if (v6)
  {
    goto LABEL_4;
  }

  LOBYTE(v13) = 0;
  v15 = 0;
  sub_271369B1C(&v13, &v20);
  *a3 = v20;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v30 != 1)
  {
    *(a3 + 544) = 0;
    goto LABEL_31;
  }

  *(a3 + 40) = 0;
  v8 = v23;
  if (v23 != 1)
  {
    *(a3 + 48) = 0;
    v9 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v29 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    v10 = v26;
    *(v9 + 16) = v25;
    *v9 = v24;
    v24 = 0uLL;
    *(a3 + 72) = v10;
    *(a3 + 80) = v27;
    *(a3 + 96) = v28;
    v25 = 0;
    v27 = 0uLL;
    v28 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 544) = 0;
    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  *(a3 + 16) = __p;
  *(a3 + 32) = v22;
  v22 = 0;
  __p = 0uLL;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v9 = a3 + 48;
  *(a3 + 104) = 0;
  if (v29)
  {
    goto LABEL_28;
  }

LABEL_19:
  *(a3 + 112) = 1;
  *(a3 + 544) = 0;
  if (!v8)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

LABEL_31:
  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2711E3A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711E3BD8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41[55] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v6 = a1[1];
  if (v6 && (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
LABEL_4:
      if (*(a2 + 400) != 1)
      {
        LOBYTE(v29) = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        LOBYTE(v33) = 0;
        v34 = 0;
        LOBYTE(v35) = 0;
        v36 = 0;
        LOBYTE(v37) = 0;
        v38 = 0;
        sub_271150BA0(v17, a1);
      }

      if (*(a2 + 16) == 1)
      {
        v8 = *a2;
        v9 = *(a2 + 8);
        if (*(a2 + 56) != 1)
        {
LABEL_18:
          v39 = v8;
          v40 = v9;
          sub_27113523C(v41, (a2 + 32));
          sub_271150BA0(&v29, a1);
        }
      }

      else
      {
        v41[24] = &unk_28810A440;
        v8 = sub_271815924();
        v9 = 2;
        if (*(a2 + 56) != 1)
        {
          goto LABEL_18;
        }
      }

      sub_2711DAE40((a2 + 32), 1000000000);
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    goto LABEL_4;
  }

  LOBYTE(v14) = 0;
  v16 = 0;
  sub_271369B1C(&v14, &v18);
  *a3 = v18;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v28 != 1)
  {
    *(a3 + 544) = 0;
    goto LABEL_23;
  }

  *(a3 + 40) = 0;
  v10 = v21;
  if (v21 != 1)
  {
    *(a3 + 48) = 0;
    v11 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_20:
    v12 = v24;
    *(v11 + 16) = v23;
    *v11 = v22;
    v22 = 0uLL;
    *(a3 + 72) = v12;
    *(a3 + 80) = v25;
    *(a3 + 96) = v26;
    v23 = 0;
    v25 = 0uLL;
    v26 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 544) = 0;
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  *(a3 + 16) = __p;
  *(a3 + 32) = v20;
  v20 = 0;
  __p = 0uLL;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v11 = a3 + 48;
  *(a3 + 104) = 0;
  if (v27)
  {
    goto LABEL_20;
  }

LABEL_13:
  *(a3 + 112) = 1;
  *(a3 + 544) = 0;
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

LABEL_23:
  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2711E46FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 __p, uint64_t a11, __int128 a12, uint64_t a13, char a14, int a15, __int16 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, std::logic_error a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_2714FBE4C(&STACK[0x3C0]);
  sub_271134CBC(v37 + 16);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a26, exception_ptr);
    a26.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a26);
    sub_2711E4AF4(&__p, &a9);
    if (SHIBYTE(a11) < 0)
    {
      sub_271127178(&a12, __p, *(&__p + 1));
    }

    else
    {
      a12 = __p;
      a13 = a11;
    }

    a14 = 1;
    LOBYTE(a16) = 0;
    a23 = 0;
    LOBYTE(a25) = 1;
    sub_27112D480(0xAu, &a12, &a36);
    sub_2711E619C(v36, &a36);
    sub_27112D71C(&a36);
    sub_27112D66C(&a12);
    if (SHIBYTE(a11) < 0)
    {
      operator delete(__p);
    }

    MEMORY[0x2743BE520](&a26);
    __cxa_end_catch();
    JUMPOUT(0x2711E46C8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711E493C(uint64_t a1)
{
  if (*(a1 + 528) == 1 && (*(a1 + 504) = &unk_288109288, (v2 = *(a1 + 520)) != 0) && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (*(a1 + 496) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 496) != 1)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 464);
  if (v3)
  {
    v3(0, a1 + 464, 0, 0, 0);
  }

LABEL_7:
  v4 = *(a1 + 448);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (*(a1 + 416) != 1)
    {
      goto LABEL_20;
    }
  }

  else if (*(a1 + 416) != 1)
  {
    goto LABEL_20;
  }

  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  if (*(a1 + 336) == 1 && *(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 280) == 1 && *(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

LABEL_20:
  sub_271134CBC(a1 + 64);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2711E4AF4(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = v4;
  v7 = "Invalid argument for creation of dictionary data: ";
  v8 = v4;
  v9 = "Invalid argument for creation of dictionary data: ";
  v10 = "Invalid argument for creation of dictionary data: ";
  v11 = &v6;
  sub_2711F7FCC(&v11);
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
      (off_28812E6A8[v5])(&v11, v4);
      goto LABEL_6;
    }

LABEL_10:
    sub_2711308D4();
  }

  v6 = v4;
  v7 = "nullptr";
  v8 = v4;
  v9 = "nullptr";
  v10 = "nullptr";
  if (v5 == -1)
  {
    goto LABEL_10;
  }

  v11 = &v6;
  (*(&off_28812E5A0 + v5))(&v11, v4);
LABEL_6:
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6 = &v11;
  result = (off_28812E660[v5])(&v6, v4);
  if (v5 != -1)
  {
    return (off_28812E588[v5])(&v6, v4);
  }

  return result;
}

void sub_2711E4C80(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v5 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v5;
    if (v4)
    {
LABEL_4:
      sub_271811FC8(a1, v10);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  LOBYTE(v11) = 0;
  v13 = 0;
  sub_271369B1C(&v11, &v14);
  *a2 = v14;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v24 != 1)
  {
    *(a2 + 544) = 0;
    goto LABEL_16;
  }

  *(a2 + 40) = 0;
  v6 = v17;
  if (v17 != 1)
  {
    *(a2 + 48) = 0;
    v7 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v23 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    v8 = v20;
    *(v7 + 16) = v19;
    *v7 = v18;
    v18 = 0uLL;
    *(a2 + 72) = v8;
    *(a2 + 80) = v21;
    *(a2 + 96) = v22;
    v19 = 0;
    v21 = 0uLL;
    v22 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 544) = 0;
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  *(a2 + 16) = __p;
  *(a2 + 32) = v16;
  v16 = 0;
  __p = 0uLL;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v7 = a2 + 48;
  *(a2 + 104) = 0;
  if (v23)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(a2 + 112) = 1;
  *(a2 + 544) = 0;
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

LABEL_16:
  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2711E5834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  sub_2714FBE4C(&STACK[0x340]);
  sub_271134CBC(v10 + 16);
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711E59D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v7 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v7;
    if (v4)
    {
LABEL_4:
      v5 = a1;
      CFDataGetBytePtr(*a1);
      v6 = sub_27180A200(v5);
      __p = 0;
      v16 = 0;
      v17 = 0;
      if (v6)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_2711BE688();
      }

      sub_27174E2EC();
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  LOBYTE(v12) = 0;
  v14 = 0;
  sub_271369B1C(&v12, &v18);
  *a2 = v18;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v28 != 1)
  {
    *(a2 + 544) = 0;
    goto LABEL_19;
  }

  *(a2 + 40) = 0;
  v8 = v21;
  if (v21 != 1)
  {
    *(a2 + 48) = 0;
    v9 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = v24;
    *(v9 + 16) = v23;
    *v9 = v22;
    v22 = 0uLL;
    *(a2 + 72) = v10;
    *(a2 + 80) = v25;
    *(a2 + 96) = v26;
    v23 = 0;
    v25 = 0uLL;
    v26 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 544) = 0;
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  *(a2 + 16) = *v19;
  *(a2 + 32) = v20;
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v9 = a2 + 48;
  *(a2 + 104) = 0;
  if (v27)
  {
    goto LABEL_16;
  }

LABEL_12:
  *(a2 + 112) = 1;
  *(a2 + 544) = 0;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

LABEL_19:
  if (v14 == 1 && v13 < 0)
  {
    operator delete(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2711E5CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a20 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711E5D30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 440);
  v5 = *(a1 + 448);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = **v4;
    v7 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811D5E8, 0) != 0;
    if (!v5)
    {
      goto LABEL_8;
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

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_8:
  if (v7)
  {
LABEL_9:
    v8 = *(a1 + 440);
    v9 = *(a1 + 448);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = v8;
    v16 = v9;
    if (v8)
    {
      v10 = sub_2715CA638((v8 + 16));
      sub_271150BA0(a2, v10);
    }

LABEL_15:
    v17 = *"cv3d.viz";
    v18 = 0x800000000000000;
    v19 = 6;
    sub_2711BE814(&v14, &v17, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(v11, *a1, *(a1 + 8));
    }

    else
    {
      *v11 = *a1;
      v12 = *(a1 + 16);
    }

    v13 = *(a1 + 24);
    operator new();
  }

LABEL_14:
  v15 = 0;
  v16 = 0;
  goto LABEL_15;
}

void sub_2711E6118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void **a23)
{
  sub_2711BEA2C(&a23);
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  sub_27112F828(v23 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_2711E619C(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = 0;
  *(result + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(result + 40) = 0;
    if (*(a2 + 40) == 1)
    {
      v2 = *(a2 + 16);
      *(result + 32) = *(a2 + 32);
      *(result + 16) = v2;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(result + 40) = 1;
    }

    *(result + 48) = 0;
    *(result + 104) = 0;
    if (*(a2 + 104) == 1)
    {
      v3 = *(a2 + 48);
      *(result + 64) = *(a2 + 64);
      *(result + 48) = v3;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = 0;
      *(result + 72) = *(a2 + 72);
      v4 = *(a2 + 80);
      *(result + 96) = *(a2 + 96);
      *(result + 80) = v4;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *(result + 104) = 1;
    }

    *(result + 112) = 1;
  }

  *(result + 544) = 0;
  return result;
}

void sub_2711E6254(uint64_t a1, unint64_t *a2)
{
  v4 = 0;
  v7 = v3;
  v8 = "Invalid CFData size ";
  v9 = v3;
  v10 = "Invalid CFData size ";
  v11 = "Invalid CFData size ";
  v5.__r_.__value_.__r.__words[0] = &v7;
  sub_2711E7110(&v5);
  std::to_string(&v5, *a2);
  v7 = v3;
  v8 = &v5;
  v9 = v3;
  v10 = &v5;
  v11 = &v5;
  if (v4 != -1)
  {
    v6 = &v7;
    (off_28812E5B8[v4])(&v6, v3);
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }

    v7 = v3;
    v8 = " for specified value type ";
    v9 = v3;
    v10 = " for specified value type ";
    v11 = " for specified value type ";
    if (v4 != -1)
    {
      v5.__r_.__value_.__r.__words[0] = &v7;
      (off_28812E5D0[v4])(&v5, v3);
      sub_2711E6DB4();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2711E67B4(uint64_t a1, uint64_t a2)
{
  v23[25] = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) != 1)
  {
    LOBYTE(v7) = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    LOBYTE(v13) = 0;
    v14 = 0;
    LOBYTE(__p) = 0;
    v16 = 0;
    sub_2711E8DE0(a1, &v7);
  }

  if (*(a2 + 16) == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    if (*(a2 + 56) != 1)
    {
LABEL_8:
      *&v17 = v4;
      BYTE8(v17) = v5;
      sub_27113523C(&v18, (a2 + 32));
      v19 = &unk_28812E898;
      v20 = &unk_28812E8E0;
      v6 = *a1;
      *a1 = 0;
      *(a1 + 8) = 0;
      v21 = v6;
      v22 = v17;
      sub_27113523C(v23, &v18);
      v19 = &unk_28810C7B0;
      sub_2711E93A4();
    }
  }

  else
  {
    v19 = &unk_28810A440;
    v4 = sub_271815924();
    v5 = 2;
    if (*(a2 + 56) != 1)
    {
      goto LABEL_8;
    }
  }

  sub_2711DAE40((a2 + 32), 1000000000);
  goto LABEL_8;
}

void sub_2711E6D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2714FBE4C(va);
  sub_271134CBC(v4 + 16);
  _Unwind_Resume(a1);
}

void sub_2711E6D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2711E9614(&a65);
  sub_271134CBC(v65 + 16);
  _Unwind_Resume(a1);
}

void sub_2711E6D64(_Unwind_Exception *a1)
{
  sub_2711E9950(v1);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_2711E6D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_2714FBE4C(&a9);
  sub_271134CBC(&a15);
  _Unwind_Resume(a1);
}

void sub_2711E6D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_2711E6FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711E7010(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711E7410(a2, v3);
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

size_t sub_2711E7110(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E588[v3])(&v6, v1);
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

void sub_2711E7204(uint64_t *a1, uint64_t a2)
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
    (off_28812E588[v9])(&v12, v2);
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

void sub_2711E73C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711E7410(uint64_t a1, const char *a2)
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

void sub_2711E75AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2711E75D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711E79D0(a2, v3);
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

size_t sub_2711E76D0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E588[v3])(&v6, v1);
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

void sub_2711E77C4(uint64_t *a1, uint64_t a2)
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
    (off_28812E588[v9])(&v12, v2);
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

void sub_2711E7984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711E79D0(uint64_t a1, const char *a2)
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

void sub_2711E7B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2711E7B90(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711E7F90(a2, v3);
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

size_t sub_2711E7C90(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E588[v3])(&v6, v1);
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

void sub_2711E7D84(uint64_t *a1, uint64_t a2)
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
    (off_28812E588[v9])(&v12, v2);
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

void sub_2711E7F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711E7F90(uint64_t a1, const char *a2)
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

void sub_2711E812C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2711E8150(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711E8550(a2, v3);
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

size_t sub_2711E8250(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E588[v3])(&v6, v1);
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

void sub_2711E8344(uint64_t *a1, uint64_t a2)
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
    (off_28812E588[v9])(&v12, v2);
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

void sub_2711E8504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711E8550(uint64_t a1, const char *a2)
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

void sub_2711E86EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2711E8710(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711E8B10(a2, v3);
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

size_t sub_2711E8810(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E588[v3])(&v6, v1);
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

void sub_2711E8904(uint64_t *a1, uint64_t a2)
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
    (off_28812E588[v9])(&v12, v2);
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

void sub_2711E8AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711E8B10(uint64_t a1, const char *a2)
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

void sub_2711E8CAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2711E8CC0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
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

void sub_2711E8DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711E8DE0(__int128 *a1, uint64_t a2)
{
  v33[25] = *MEMORY[0x277D85DE8];
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a2 + 24) == 1)
  {
    *v11 = *a2;
    v12 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v13 = 1;
  }

  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  LOBYTE(v16) = 0;
  v18 = 0;
  if (*(a2 + 80) == 1)
  {
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v24) = 0;
      v26 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v20 = *(a2 + 112);
  v19 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v21 = _X2;
  v22 = 0;
  v23 = 1;
  LOBYTE(v24) = 0;
  v26 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_2711EAFA4(v11, &v27);
    v29 = &unk_28812E898;
    v30 = &unk_28812E8E0;
    v3 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = v3;
    v32 = v27;
    sub_27113523C(v33, &v28);
    v29 = &unk_28810C7B0;
    sub_2711E93A4();
  }

LABEL_6:
  v24 = *(a2 + 160);
  v25 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v26 = 1;
  goto LABEL_7;
}

void sub_2711E935C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_2711E9614(&a61);
  sub_271134CBC(v61 + 16);
  sub_271134CBC(&a11);
  _Unwind_Resume(a1);
}

void sub_2711E9390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void *sub_2711E9614(void *a1)
{
  *a1 = &unk_28812E898;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812E8E0;
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

void sub_2711E96D4(void *a1)
{
  *a1 = &unk_28812E898;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812E8E0;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711E97B8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877F70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877F70))
    {
      sub_2711EACB4(&stru_280877F58);
      __cxa_guard_release(&qword_280877F70);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&stru_280877F58, "{", __p, ",");
}

void sub_2711E98B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711E98D4(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 3;
}

void *sub_2711E9950(void *result)
{
  *result = &unk_28812E8E0;
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

void *sub_2711E99E4(void *a1)
{
  *a1 = &unk_28812E898;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812E8E0;
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

void sub_2711E9AA4(void *a1)
{
  *a1 = &unk_28812E898;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812E8E0;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711E9B78()
{
  if ((atomic_load_explicit(&qword_280877F50, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877F50))
    {
      sub_2711EAA14();
    }
  }

  sub_2711EA4D0(&xmmword_280877F38, "{");
}

void sub_2711E9C2C(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2711E9C58(void *a1)
{
  *a1 = &unk_28812E8E0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711E9D00(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_28812E900, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = result;
      v7 = a1[1];
      v8 = *v7;
      v9 = *(v6 + 8);
      if (v8 == *v9)
      {
        v10[0] = &v11;
        v10[1] = v7;
        v10[2] = v9;
        return sub_27175A954(v8, v10);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2711E9DD4()
{
  if ((atomic_load_explicit(&qword_280877F30, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877F30))
    {
      sub_2711EA2D4(&stru_280877F18);
      __cxa_guard_release(&qword_280877F30);
    }
  }

  sub_2711E9E7C(&stru_280877F18, "{");
}

void sub_2711E9E7C(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711EA028();
}

void sub_2711E9FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711E9FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711E9FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EA000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EA014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EA290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EA2D4(std::string *a1@<X8>)
{
  strcpy(&__p, "cv3d::kit::con::Points");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711EA3B4(v2, a1);
  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_2711EA384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EA3B4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("2U]", 2, &v10);
  sub_2711309E8(__p, &v10, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711EA498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711EA4D0(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711EA700();
}

void sub_2711EA670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EA688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EA69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EA6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EA6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EA6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EA6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EA98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  __cxa_guard_abort(&qword_280877F30);
  v24 = a23;
  a23 = 0;
  if (!v24)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(&a23, v24);
  _Unwind_Resume(a1);
}

void sub_2711EAAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EAB18(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  strcpy(&__p, "cv3d::kit::con::Points");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711EA3B4(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  sub_2711309E8(v9, &v13, 1uLL);
  sub_271851AD8(a1, v9, a2);
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
    v6 = v9[0];
    if (v9[1] != v9[0])
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
      v6 = v9[0];
    }

    v9[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711EAC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_27137F4D0(&a9);
  if (*(v9 - 25) < 0)
  {
    operator delete(*(v9 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_2711EACB4(std::string *a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  strcpy(&__p, "cv3d::kit::con::Points");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711EA3B4(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v15 = 12;
  strcpy(v14, "viz::Package");
  sub_271851C68("3U]", 2, &v16);
  v18 = 4;
  strcpy(v17, "void");
  sub_2711309E8(v8, &v13, 4uLL);
  sub_271851AD8(v9, v8, a1);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
    v4 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v8[0];
    }

    v8[1] = v2;
    operator delete(v4);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    operator delete(v9[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_22:
  operator delete(v14[0]);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  if (SHIBYTE(v9[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2711EAEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_27137F4D0(&a10);
  if (a54 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a43);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a36 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a31);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a37);
  if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_2711EAFA4(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  sub_27113523C(v13, a1);
  *a2 = sub_271815924();
  *(a2 + 8) = 2;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  if (v15 == 1)
  {
    *(a2 + 16) = *v13;
    *(a2 + 32) = v14;
    v13[1] = 0;
    v14 = 0;
    v13[0] = 0;
    *(a2 + 40) = 1;
  }

  v3 = v16;
  *(a2 + 72) = 0;
  *(a2 + 48) = v3;
  *(a2 + 64) = v17;
  *(a2 + 96) = 0;
  if (v20 == 1)
  {
    *(a2 + 72) = *v18;
    *(a2 + 88) = v19;
    v18[1] = 0;
    v19 = 0;
    v18[0] = 0;
    *(a2 + 96) = 1;
    *(a2 + 112) = 0;
    v4 = a2 + 112;
    *(a2 + 160) = 0;
    if (v23 != 1)
    {
LABEL_5:
      *(a2 + 176) = 0;
      *(a2 + 200) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }

LABEL_10:
      *(a2 + 176) = v24;
      *(a2 + 192) = v25;
      v25 = 0;
      v24 = 0uLL;
      *(a2 + 200) = 1;
      if (v23 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else
  {
    *(a2 + 112) = 0;
    v4 = a2 + 112;
    *(a2 + 160) = 0;
    if (v23 != 1)
    {
      goto LABEL_5;
    }
  }

  _X0 = 0;
  _X1 = 0;
  *(v4 + 16) = v22;
  *v4 = *__p;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  *(a2 + 144) = _X0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 176) = 0;
  *(a2 + 200) = 0;
  if (v26 == 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v23 != 1)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_13:
  if (v20 == 1 && SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (v15 == 1 && SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2711EB1C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_2711EB2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EB310(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2711EB428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EB444(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2711EB55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EB578(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
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

void sub_2711EB67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EB698(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_2711EB7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EB7CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2711EB8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EB900(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2711EBA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EBA34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2711EBB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EBB68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2711EBC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EBC9C(uint64_t a1, uint64_t a2)
{
  v23[25] = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) != 1)
  {
    LOBYTE(v7) = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    LOBYTE(v13) = 0;
    v14 = 0;
    LOBYTE(__p) = 0;
    v16 = 0;
    sub_2711EC29C(a1, &v7);
  }

  if (*(a2 + 16) == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    if (*(a2 + 56) != 1)
    {
LABEL_8:
      *&v17 = v4;
      BYTE8(v17) = v5;
      sub_27113523C(&v18, (a2 + 32));
      v19 = &unk_28812E940;
      v20 = &unk_28812E988;
      v6 = *a1;
      *a1 = 0;
      *(a1 + 8) = 0;
      v21 = v6;
      v22 = v17;
      sub_27113523C(v23, &v18);
      v19 = &unk_28810C768;
      sub_2711EC860();
    }
  }

  else
  {
    v19 = &unk_28810A440;
    v4 = sub_271815924();
    v5 = 2;
    if (*(a2 + 56) != 1)
    {
      goto LABEL_8;
    }
  }

  sub_2711DAE40((a2 + 32), 1000000000);
  goto LABEL_8;
}

void sub_2711EC214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2714FBE4C(va);
  sub_271134CBC(v4 + 16);
  _Unwind_Resume(a1);
}

void sub_2711EC230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2711ECAD0(&a65);
  sub_271134CBC(v65 + 16);
  _Unwind_Resume(a1);
}

void sub_2711EC24C(_Unwind_Exception *a1)
{
  sub_2711ECE0C(v1);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_2711EC268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_2714FBE4C(&a9);
  sub_271134CBC(&a15);
  _Unwind_Resume(a1);
}

void sub_2711EC284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_2711EC29C(__int128 *a1, uint64_t a2)
{
  v33[25] = *MEMORY[0x277D85DE8];
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a2 + 24) == 1)
  {
    *v11 = *a2;
    v12 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v13 = 1;
  }

  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  LOBYTE(v16) = 0;
  v18 = 0;
  if (*(a2 + 80) == 1)
  {
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v24) = 0;
      v26 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v20 = *(a2 + 112);
  v19 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v21 = _X2;
  v22 = 0;
  v23 = 1;
  LOBYTE(v24) = 0;
  v26 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_2711EAFA4(v11, &v27);
    v29 = &unk_28812E940;
    v30 = &unk_28812E988;
    v3 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = v3;
    v32 = v27;
    sub_27113523C(v33, &v28);
    v29 = &unk_28810C768;
    sub_2711EC860();
  }

LABEL_6:
  v24 = *(a2 + 160);
  v25 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v26 = 1;
  goto LABEL_7;
}

void sub_2711EC818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_2711ECAD0(&a61);
  sub_271134CBC(v61 + 16);
  sub_271134CBC(&a11);
  _Unwind_Resume(a1);
}

void sub_2711EC84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void *sub_2711ECAD0(void *a1)
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

void sub_2711ECB90(void *a1)
{
  *a1 = &unk_28812E940;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812E988;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711ECC74(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877FD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877FD0))
    {
      sub_2711EE170(&stru_280877FB8);
      __cxa_guard_release(&qword_280877FD0);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&stru_280877FB8, "{", __p, ",");
}

void sub_2711ECD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711ECD90(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 4;
}

void *sub_2711ECE0C(void *result)
{
  *result = &unk_28812E988;
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

void *sub_2711ECEA0(void *a1)
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

void sub_2711ECF60(void *a1)
{
  *a1 = &unk_28812E940;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812E988;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711ED034()
{
  if ((atomic_load_explicit(&qword_280877FB0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877FB0))
    {
      sub_2711EDED0();
    }
  }

  sub_2711ED98C(&xmmword_280877F98, "{");
}

void sub_2711ED0E8(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2711ED114(void *a1)
{
  *a1 = &unk_28812E988;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711ED1BC(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_28812E9A8, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = result;
      v7 = a1[1];
      v8 = *v7;
      v9 = *(v6 + 8);
      if (v8 == *v9)
      {
        v10[0] = &v11;
        v10[1] = v7;
        v10[2] = v9;
        return sub_27175A954(v8, v10);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2711ED290()
{
  if ((atomic_load_explicit(&qword_280877F90, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877F90))
    {
      sub_2711ED790(&stru_280877F78);
      __cxa_guard_release(&qword_280877F90);
    }
  }

  sub_2711ED338(&stru_280877F78, "{");
}

void sub_2711ED338(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711ED4E4();
}

void sub_2711ED47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711ED494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711ED4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711ED4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711ED4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711ED74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711ED790(std::string *a1@<X8>)
{
  strcpy(&__p, "cv3d::kit::con::Points");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711ED870(v2, a1);
  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_2711ED840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711ED870(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_271851C68("3U]", 2, &v10);
  sub_2711309E8(__p, &v10, 1uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711ED954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27137F4D0(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711ED98C(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711EDBBC();
}

void sub_2711EDB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EDB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EDB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EDB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EDB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EDB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EDBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711EDE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  __cxa_guard_abort(&qword_280877F90);
  v24 = a23;
  a23 = 0;
  if (!v24)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(&a23, v24);
  _Unwind_Resume(a1);
}

void sub_2711EDFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711EDFD4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  strcpy(&__p, "cv3d::kit::con::Points");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711ED870(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  sub_2711309E8(v9, &v13, 1uLL);
  sub_271851AD8(a1, v9, a2);
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
    v6 = v9[0];
    if (v9[1] != v9[0])
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
      v6 = v9[0];
    }

    v9[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711EE11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_27137F4D0(&a9);
  if (*(v9 - 25) < 0)
  {
    operator delete(*(v9 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_2711EE170(std::string *a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  strcpy(&__p, "cv3d::kit::con::Points");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711ED870(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v15 = 12;
  strcpy(v14, "viz::Package");
  sub_271851C68("4U]", 2, &v16);
  v18 = 4;
  strcpy(v17, "void");
  sub_2711309E8(v8, &v13, 4uLL);
  sub_271851AD8(v9, v8, a1);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
    v4 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v8[0];
    }

    v8[1] = v2;
    operator delete(v4);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    operator delete(v9[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_22:
  operator delete(v14[0]);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  if (SHIBYTE(v9[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2711EE3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_27137F4D0(&a10);
  if (a54 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a43);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a36 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a31);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a37);
  if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_2711EE460(uint64_t a1, unint64_t *a2)
{
  v4 = 0;
  v7 = v3;
  v8 = "Invalid CFData size ";
  v9 = v3;
  v10 = "Invalid CFData size ";
  v11 = "Invalid CFData size ";
  v5.__r_.__value_.__r.__words[0] = &v7;
  sub_2711E7110(&v5);
  std::to_string(&v5, *a2);
  v7 = v3;
  v8 = &v5;
  v9 = v3;
  v10 = &v5;
  v11 = &v5;
  if (v4 != -1)
  {
    v6 = &v7;
    (off_28812E5B8[v4])(&v6, v3);
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }

    v7 = v3;
    v8 = " for specified value type ";
    v9 = v3;
    v10 = " for specified value type ";
    v11 = " for specified value type ";
    if (v4 != -1)
    {
      v5.__r_.__value_.__r.__words[0] = &v7;
      (off_28812E5D0[v4])(&v5, v3);
      sub_2711E6DB4();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2711EE9B8(uint64_t a1, uint64_t a2)
{
  v23[25] = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) != 1)
  {
    LOBYTE(v7) = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    LOBYTE(v13) = 0;
    v14 = 0;
    LOBYTE(__p) = 0;
    v16 = 0;
    sub_2711EF578(a1, &v7);
  }

  if (*(a2 + 16) == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    if (*(a2 + 56) != 1)
    {
LABEL_8:
      *&v17 = v4;
      BYTE8(v17) = v5;
      sub_27113523C(&v18, (a2 + 32));
      v19 = &unk_28812E9E8;
      v20 = &unk_28812EA30;
      v6 = *a1;
      *a1 = 0;
      *(a1 + 8) = 0;
      v21 = v6;
      v22 = v17;
      sub_27113523C(v23, &v18);
      v19 = &unk_28810C840;
      sub_2711EFB3C();
    }
  }

  else
  {
    v19 = &unk_28810A440;
    v4 = sub_271815924();
    v5 = 2;
    if (*(a2 + 56) != 1)
    {
      goto LABEL_8;
    }
  }

  sub_2711DAE40((a2 + 32), 1000000000);
  goto LABEL_8;
}

void sub_2711EEF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2714FBE4C(va);
  sub_271134CBC(v4 + 16);
  _Unwind_Resume(a1);
}

void sub_2711EEF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2711EFDAC(&a65);
  sub_271134CBC(v65 + 16);
  _Unwind_Resume(a1);
}

void sub_2711EEF68(_Unwind_Exception *a1)
{
  sub_2711F00E8(v1);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_2711EEF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_2714FBE4C(&a9);
  sub_271134CBC(&a15);
  _Unwind_Resume(a1);
}

void sub_2711EEFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2711EEFC8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711EF3C8(a2, v3);
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

size_t sub_2711EF0C8(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E588[v3])(&v6, v1);
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

void sub_2711EF1BC(uint64_t *a1, uint64_t a2)
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
    (off_28812E588[v9])(&v12, v2);
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

void sub_2711EF37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711EF3C8(uint64_t a1, const char *a2)
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

void sub_2711EF564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2711EF578(__int128 *a1, uint64_t a2)
{
  v33[25] = *MEMORY[0x277D85DE8];
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a2 + 24) == 1)
  {
    *v11 = *a2;
    v12 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v13 = 1;
  }

  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  LOBYTE(v16) = 0;
  v18 = 0;
  if (*(a2 + 80) == 1)
  {
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v24) = 0;
      v26 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v20 = *(a2 + 112);
  v19 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v21 = _X2;
  v22 = 0;
  v23 = 1;
  LOBYTE(v24) = 0;
  v26 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_2711EAFA4(v11, &v27);
    v29 = &unk_28812E9E8;
    v30 = &unk_28812EA30;
    v3 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = v3;
    v32 = v27;
    sub_27113523C(v33, &v28);
    v29 = &unk_28810C840;
    sub_2711EFB3C();
  }

LABEL_6:
  v24 = *(a2 + 160);
  v25 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v26 = 1;
  goto LABEL_7;
}

void sub_2711EFAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_2711EFDAC(&a61);
  sub_271134CBC(v61 + 16);
  sub_271134CBC(&a11);
  _Unwind_Resume(a1);
}

void sub_2711EFB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void *sub_2711EFDAC(void *a1)
{
  *a1 = &unk_28812E9E8;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EA30;
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

void sub_2711EFE6C(void *a1)
{
  *a1 = &unk_28812E9E8;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812EA30;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711EFF50(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878030, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878030))
    {
      sub_2711F1338(&stru_280878018);
      __cxa_guard_release(&qword_280878030);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&stru_280878018, "{", __p, ",");
}

void sub_2711F0050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F006C(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 12;
}

void *sub_2711F00E8(void *result)
{
  *result = &unk_28812EA30;
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

void *sub_2711F017C(void *a1)
{
  *a1 = &unk_28812E9E8;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EA30;
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

void sub_2711F023C(void *a1)
{
  *a1 = &unk_28812E9E8;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812EA30;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711F0310()
{
  if ((atomic_load_explicit(&qword_280878010, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878010))
    {
      sub_2711F1094();
    }
  }

  sub_2711F0B50(&xmmword_280877FF8, "{");
}

void sub_2711F03C4(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2711F03F0(void *a1)
{
  *a1 = &unk_28812EA30;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711F0498(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_28812EA50, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = result;
      v7 = a1[1];
      v8 = *v7;
      v9 = *(v6 + 8);
      if (v8 == *v9)
      {
        v10[0] = &v11;
        v10[1] = v7;
        v10[2] = v9;
        return sub_27175A954(v8, v10);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2711F056C()
{
  if ((atomic_load_explicit(&qword_280877FF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877FF0))
    {
      sub_2711F0A6C(&stru_280877FD8);
      __cxa_guard_release(&qword_280877FF0);
    }
  }

  sub_2711F0614(&stru_280877FD8, "{");
}

void sub_2711F0614(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711F07C0();
}

void sub_2711F0758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F0770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F0784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F0798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F07AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F0A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F0A6C(std::string *a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711EA3B4(v2, a1);
  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_2711F0B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F0B50(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711F0D80();
}

void sub_2711F0CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F0D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F0D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F0D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F0D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F0D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F0D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F100C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  __cxa_guard_abort(&qword_280877FF0);
  v24 = a23;
  a23 = 0;
  if (!v24)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(&a23, v24);
  _Unwind_Resume(a1);
}

void sub_2711F1168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F1198(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711EA3B4(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  sub_2711309E8(v9, &v13, 1uLL);
  sub_271851AD8(a1, v9, a2);
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
    v6 = v9[0];
    if (v9[1] != v9[0])
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
      v6 = v9[0];
    }

    v9[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711F12E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_27137F4D0(&a9);
  if (*(v9 - 25) < 0)
  {
    operator delete(*(v9 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_2711F1338(std::string *a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711EA3B4(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v15 = 12;
  strcpy(v14, "viz::Package");
  sub_271851C68("12U]", 3, &v16);
  v18 = 4;
  strcpy(v17, "void");
  sub_2711309E8(v8, &v13, 4uLL);
  sub_271851AD8(v9, v8, a1);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
    v4 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v8[0];
    }

    v8[1] = v2;
    operator delete(v4);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    operator delete(v9[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_22:
  operator delete(v14[0]);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  if (SHIBYTE(v9[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2711F156C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_27137F4D0(&a10);
  if (a54 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a43);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a36 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a31);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a37);
  if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_2711F162C(uint64_t a1, uint64_t a2)
{
  v23[25] = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) != 1)
  {
    LOBYTE(v7) = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    LOBYTE(v13) = 0;
    v14 = 0;
    LOBYTE(__p) = 0;
    v16 = 0;
    sub_2711F1C2C(a1, &v7);
  }

  if (*(a2 + 16) == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    if (*(a2 + 56) != 1)
    {
LABEL_8:
      *&v17 = v4;
      BYTE8(v17) = v5;
      sub_27113523C(&v18, (a2 + 32));
      v19 = &unk_28812EA90;
      v20 = &unk_28812EAD8;
      v6 = *a1;
      *a1 = 0;
      *(a1 + 8) = 0;
      v21 = v6;
      v22 = v17;
      sub_27113523C(v23, &v18);
      v19 = &unk_28810C7F8;
      sub_2711F21F0();
    }
  }

  else
  {
    v19 = &unk_28810A440;
    v4 = sub_271815924();
    v5 = 2;
    if (*(a2 + 56) != 1)
    {
      goto LABEL_8;
    }
  }

  sub_2711DAE40((a2 + 32), 1000000000);
  goto LABEL_8;
}

void sub_2711F1BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2714FBE4C(va);
  sub_271134CBC(v4 + 16);
  _Unwind_Resume(a1);
}

void sub_2711F1BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2711F2460(&a65);
  sub_271134CBC(v65 + 16);
  _Unwind_Resume(a1);
}

void sub_2711F1BDC(_Unwind_Exception *a1)
{
  sub_2711F279C(v1);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_2711F1BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_2714FBE4C(&a9);
  sub_271134CBC(&a15);
  _Unwind_Resume(a1);
}

void sub_2711F1C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_2711F1C2C(__int128 *a1, uint64_t a2)
{
  v33[25] = *MEMORY[0x277D85DE8];
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a2 + 24) == 1)
  {
    *v11 = *a2;
    v12 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v13 = 1;
  }

  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  LOBYTE(v16) = 0;
  v18 = 0;
  if (*(a2 + 80) == 1)
  {
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v24) = 0;
      v26 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v20 = *(a2 + 112);
  v19 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v21 = _X2;
  v22 = 0;
  v23 = 1;
  LOBYTE(v24) = 0;
  v26 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_2711EAFA4(v11, &v27);
    v29 = &unk_28812EA90;
    v30 = &unk_28812EAD8;
    v3 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = v3;
    v32 = v27;
    sub_27113523C(v33, &v28);
    v29 = &unk_28810C7F8;
    sub_2711F21F0();
  }

LABEL_6:
  v24 = *(a2 + 160);
  v25 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v26 = 1;
  goto LABEL_7;
}

void sub_2711F21A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_2711F2460(&a61);
  sub_271134CBC(v61 + 16);
  sub_271134CBC(&a11);
  _Unwind_Resume(a1);
}

void sub_2711F21DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void *sub_2711F2460(void *a1)
{
  *a1 = &unk_28812EA90;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EAD8;
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

void sub_2711F2520(void *a1)
{
  *a1 = &unk_28812EA90;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812EAD8;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711F2604(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878090, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878090))
    {
      sub_2711F39EC(&stru_280878078);
      __cxa_guard_release(&qword_280878090);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&stru_280878078, "{", __p, ",");
}

void sub_2711F2704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F2720(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 13;
}

void *sub_2711F279C(void *result)
{
  *result = &unk_28812EAD8;
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

void *sub_2711F2830(void *a1)
{
  *a1 = &unk_28812EA90;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EAD8;
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

void sub_2711F28F0(void *a1)
{
  *a1 = &unk_28812EA90;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812EAD8;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711F29C4()
{
  if ((atomic_load_explicit(&qword_280878070, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878070))
    {
      sub_2711F3748();
    }
  }

  sub_2711F3204(&xmmword_280878058, "{");
}

void sub_2711F2A78(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2711F2AA4(void *a1)
{
  *a1 = &unk_28812EAD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711F2B4C(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_28812EAF8, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = result;
      v7 = a1[1];
      v8 = *v7;
      v9 = *(v6 + 8);
      if (v8 == *v9)
      {
        v10[0] = &v11;
        v10[1] = v7;
        v10[2] = v9;
        return sub_27175A954(v8, v10);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2711F2C20()
{
  if ((atomic_load_explicit(&qword_280878050, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878050))
    {
      sub_2711F3120(&stru_280878038);
      __cxa_guard_release(&qword_280878050);
    }
  }

  sub_2711F2CC8(&stru_280878038, "{");
}

void sub_2711F2CC8(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711F2E74();
}

void sub_2711F2E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F2E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F2E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F2E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F2E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F30DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F3120(std::string *a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711ED870(v2, a1);
  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_2711F31D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F3204(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711F3434();
}

void sub_2711F33A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F33BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F33D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F33E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F33F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F3420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F36C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  __cxa_guard_abort(&qword_280878050);
  v24 = a23;
  a23 = 0;
  if (!v24)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(&a23, v24);
  _Unwind_Resume(a1);
}

void sub_2711F381C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F384C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711ED870(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  sub_2711309E8(v9, &v13, 1uLL);
  sub_271851AD8(a1, v9, a2);
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
    v6 = v9[0];
    if (v9[1] != v9[0])
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
      v6 = v9[0];
    }

    v9[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711F3998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_27137F4D0(&a9);
  if (*(v9 - 25) < 0)
  {
    operator delete(*(v9 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_2711F39EC(std::string *a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711ED870(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v15 = 12;
  strcpy(v14, "viz::Package");
  sub_271851C68("13U]", 3, &v16);
  v18 = 4;
  strcpy(v17, "void");
  sub_2711309E8(v8, &v13, 4uLL);
  sub_271851AD8(v9, v8, a1);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
    v4 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v8[0];
    }

    v8[1] = v2;
    operator delete(v4);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    operator delete(v9[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_22:
  operator delete(v14[0]);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  if (SHIBYTE(v9[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2711F3C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_27137F4D0(&a10);
  if (a54 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a43);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a36 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a31);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a37);
  if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_2711F3CE0(uint64_t a1, unint64_t *a2)
{
  v4 = 0;
  v7 = v3;
  v8 = "Invalid CFData size ";
  v9 = v3;
  v10 = "Invalid CFData size ";
  v11 = "Invalid CFData size ";
  v5.__r_.__value_.__r.__words[0] = &v7;
  sub_2711E7110(&v5);
  std::to_string(&v5, *a2);
  v7 = v3;
  v8 = &v5;
  v9 = v3;
  v10 = &v5;
  v11 = &v5;
  if (v4 != -1)
  {
    v6 = &v7;
    (off_28812E5B8[v4])(&v6, v3);
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }

    v7 = v3;
    v8 = " for specified value type ";
    v9 = v3;
    v10 = " for specified value type ";
    v11 = " for specified value type ";
    if (v4 != -1)
    {
      v5.__r_.__value_.__r.__words[0] = &v7;
      (off_28812E5D0[v4])(&v5, v3);
      sub_2711E6DB4();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2711F3FC0(uint64_t a1, uint64_t a2)
{
  v23[25] = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) != 1)
  {
    LOBYTE(v7) = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    LOBYTE(v13) = 0;
    v14 = 0;
    LOBYTE(__p) = 0;
    v16 = 0;
    sub_2711F4B80(a1, &v7);
  }

  if (*(a2 + 16) == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    if (*(a2 + 56) != 1)
    {
LABEL_8:
      *&v17 = v4;
      BYTE8(v17) = v5;
      sub_27113523C(&v18, (a2 + 32));
      v19 = &unk_28812E7F0;
      v20 = &unk_28812E838;
      v6 = *a1;
      *a1 = 0;
      *(a1 + 8) = 0;
      v21 = v6;
      v22 = v17;
      sub_27113523C(v23, &v18);
      v19 = &unk_28810C720;
      sub_2711F5144();
    }
  }

  else
  {
    v19 = &unk_28810A440;
    v4 = sub_271815924();
    v5 = 2;
    if (*(a2 + 56) != 1)
    {
      goto LABEL_8;
    }
  }

  sub_2711DAE40((a2 + 32), 1000000000);
  goto LABEL_8;
}

void sub_2711F4538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2714FBE4C(va);
  sub_271134CBC(v4 + 16);
  _Unwind_Resume(a1);
}

void sub_2711F4554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2711F53B4(&a65);
  sub_271134CBC(v65 + 16);
  _Unwind_Resume(a1);
}

void sub_2711F4570(_Unwind_Exception *a1)
{
  sub_2711F56F0(v1);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_2711F458C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_2714FBE4C(&a9);
  sub_271134CBC(&a15);
  _Unwind_Resume(a1);
}

void sub_2711F45A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2711F45D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711F49D0(a2, v3);
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

size_t sub_2711F46D0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E588[v3])(&v6, v1);
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

void sub_2711F47C4(uint64_t *a1, uint64_t a2)
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
    (off_28812E588[v9])(&v12, v2);
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

void sub_2711F4984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2711F49D0(uint64_t a1, const char *a2)
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

void sub_2711F4B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2711F4B80(__int128 *a1, uint64_t a2)
{
  v33[25] = *MEMORY[0x277D85DE8];
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a2 + 24) == 1)
  {
    *v11 = *a2;
    v12 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v13 = 1;
  }

  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  LOBYTE(v16) = 0;
  v18 = 0;
  if (*(a2 + 80) == 1)
  {
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v24) = 0;
      v26 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v20 = *(a2 + 112);
  v19 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v21 = _X2;
  v22 = 0;
  v23 = 1;
  LOBYTE(v24) = 0;
  v26 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_2711EAFA4(v11, &v27);
    v29 = &unk_28812E7F0;
    v30 = &unk_28812E838;
    v3 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = v3;
    v32 = v27;
    sub_27113523C(v33, &v28);
    v29 = &unk_28810C720;
    sub_2711F5144();
  }

LABEL_6:
  v24 = *(a2 + 160);
  v25 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v26 = 1;
  goto LABEL_7;
}

void sub_2711F50FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_2711F53B4(&a61);
  sub_271134CBC(v61 + 16);
  sub_271134CBC(&a11);
  _Unwind_Resume(a1);
}

void sub_2711F5130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void *sub_2711F53B4(void *a1)
{
  *a1 = &unk_28812E7F0;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812E838;
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

void sub_2711F5474(void *a1)
{
  *a1 = &unk_28812E7F0;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812E838;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711F5558(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877F10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877F10))
    {
      sub_2711F6800();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&xmmword_280877EF8, "{", __p, ",");
}

void sub_2711F5658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F5674(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 2;
}

void *sub_2711F56F0(void *result)
{
  *result = &unk_28812E838;
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

void *sub_2711F5784(void *a1)
{
  *a1 = &unk_28812E7F0;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812E838;
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

void sub_2711F5844(void *a1)
{
  *a1 = &unk_28812E7F0;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812E838;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711F5918()
{
  if ((atomic_load_explicit(&qword_280877EF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877EF0))
    {
      sub_2711F656C();
    }
  }

  sub_2711F6020(&xmmword_280877ED8, "{");
}

void sub_2711F59CC(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2711F59F8(void *a1)
{
  *a1 = &unk_28812E838;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711F5AA0(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_28812E858, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = result;
      v7 = a1[1];
      v8 = *v7;
      v9 = *(v6 + 8);
      if (v8 == *v9)
      {
        v10[0] = &v11;
        v10[1] = v7;
        v10[2] = v9;
        return sub_27175A954(v8, v10);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2711F5B74()
{
  if ((atomic_load_explicit(&qword_280877ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877ED0))
  {
    sub_2718519B4("cv3d::kit::con::Numbers]", 0x17uLL, &xmmword_280877EB8);
    __cxa_guard_release(&qword_280877ED0);
  }

  sub_2711F5C28(&xmmword_280877EB8, "{");
}

void sub_2711F5C28(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711F5DD4();
}

void sub_2711F5D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F5D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F5D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F5DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F5DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F5FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F6020(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711F6250();
}

void sub_2711F61C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F61D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F61EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F6200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F6214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F6228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F623C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F64E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280877ED0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2711F6640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F67C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2711F6800()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_2711F6A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_2711F6D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v2 + 8))(v2);
  sub_2711F7EF0(va);
  _Unwind_Resume(a1);
}

void *sub_2711F6D80(void *result)
{
  *result = &unk_28812EB80;
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

void *sub_2711F6E14(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EB80;
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

void sub_2711F6ED4(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812EB80;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711F6FA8()
{
  if ((atomic_load_explicit(&qword_2808780D0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780D0))
    {
      sub_2711F7C5C();
    }
  }

  sub_2711F7710(&xmmword_2808780B8, "{");
}

void sub_2711F705C(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2711F7088(void *a1)
{
  *a1 = &unk_28812EB80;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711F7130(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_28812EBA0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = *(result + 8);
      v7 = a1[1];

      return sub_2715C9EC0(v7, v6);
    }
  }

  return result;
}

void sub_2711F71D0()
{
  if ((atomic_load_explicit(&qword_2808780B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808780B0))
  {
    sub_2718519B4("cv3d::kit::dict::Dictionary]", 0x1BuLL, &xmmword_280878098);
    __cxa_guard_release(&qword_2808780B0);
  }

  sub_2711F7284(&xmmword_280878098, "{");
}

void sub_2711F7284(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711F7430();
}

void sub_2711F73C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F73E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F73F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F7408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F741C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F7638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711F767C(void *result)
{
  *result = &unk_28812EB80;
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

void sub_2711F7710(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711F7940();
}

void sub_2711F78B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F78C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F78DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F78F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F7904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F7918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F792C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F7BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_2808780B0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2711F7D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F7EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **sub_2711F7EF0(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_28812EB38;
    sub_271134CBC((v1 + 6));
    v1[1] = &unk_28812EB80;
    v3 = v1[3];
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    MEMORY[0x2743BF050](v1, 0x10B3C406BFE9A7DLL);
    return v2;
  }

  return result;
}

size_t sub_2711F7FCC(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812E588[v3])(&v6, v1);
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

void *sub_2711F80C0(void *a1)
{
  *a1 = &unk_28812E748;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812E790;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2711F8134(void *a1)
{
  *a1 = &unk_28812E748;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812E790;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711F81D8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877EB0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877EB0))
    {
      sub_2711F9324(&stru_280877E98);
      __cxa_guard_release(&qword_280877EB0);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&stru_280877E98, "{", __p, ",");
}

void sub_2711F82D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F82F4(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 8;
}

void *sub_2711F836C(void *result)
{
  *result = &unk_28812E790;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_2711F83C4(void *a1)
{
  *a1 = &unk_28812E748;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812E790;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2711F8438(void *a1)
{
  *a1 = &unk_28812E748;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812E790;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711F84CC()
{
  if ((atomic_load_explicit(&qword_280877E90, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877E90))
    {
      sub_2711F90B4();
    }
  }

  sub_2711F8B68(&xmmword_280877E78, "{");
}

void sub_2711F8580(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2711F85AC(void *a1)
{
  *a1 = &unk_28812E790;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

unint64_t sub_2711F8620(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_28812E7B0, 0);
  if (result)
  {
    return a1 == lpsrc || sub_271835718(a1 + 8, (result + 8)) == 0;
  }

  return result;
}

void sub_2711F86BC()
{
  if ((atomic_load_explicit(&qword_280877E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877E70))
  {
    sub_2718519B4("cv3d::kit::Number]", 0x11uLL, &xmmword_280877E58);
    __cxa_guard_release(&qword_280877E70);
  }

  sub_2711F8770(&xmmword_280877E58, "{");
}

void sub_2711F8770(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711F891C();
}

void sub_2711F88B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F88CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F88E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F88F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F8908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F8B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F8B68(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_2711F8D98();
}

void sub_2711F8D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F8D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F8D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F8D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F8D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F8D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F8D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711F902C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280877E70);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2711F9188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711F91B8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "cv3d::kit::Number");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711309E8(v9, v11, 1uLL);
  sub_271851AD8(a1, v9, a2);
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
    v6 = v9[0];
    if (v9[1] != v9[0])
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
      v6 = v9[0];
    }

    v9[1] = v4;
    operator delete(v6);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711F92E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27137F4D0(va);
  if (*(v2 - 25) < 0)
  {
    operator delete(*(v2 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_2711F9324(std::string *a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "cv3d::kit::Number");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = 12;
  strcpy(v13, "viz::Package");
  sub_271851C68("8U]", 2, &v15);
  v17 = 4;
  strcpy(v16, "void");
  sub_2711309E8(v8, v11, 4uLL);
  sub_271851AD8(v9, v8, a1);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
    v4 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v8[0];
    }

    v8[1] = v2;
    operator delete(v4);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_14:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    operator delete(v11[0]);
    if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    operator delete(v9[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_20:
  operator delete(v13[0]);
  if (v12 < 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (SHIBYTE(v9[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2711F9538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

__n128 sub_2711F95E8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28812E748;
  *(a1 + 8) = &unk_28812E790;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  v2 = *(a2 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = v2;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v3 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v3;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(a1 + 88) = 1;
  }

  result = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 120) = 0;
  *(a1 + 112) = v5;
  *(a1 + 96) = result;
  *(a1 + 144) = 0;
  if (*(a2 + 144) != 1)
  {
    *(a1 + 160) = 0;
    v6 = (a1 + 160);
    *(a1 + 208) = 0;
    if (*(a2 + 208) != 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    _X2 = 0;
    _X3 = 0;
    result = *(a2 + 160);
    v6[1].n128_u64[0] = *(a2 + 176);
    *v6 = result;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 160) = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    *(a1 + 192) = _X2;
    *(a1 + 200) = 0;
    *(a1 + 208) = 1;
    *(a1 + 224) = 0;
    v7 = (a1 + 224);
    *(a1 + 248) = 0;
    if (*(a2 + 248) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  result = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = result;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = 0;
  *(a1 + 144) = 1;
  *(a1 + 160) = 0;
  v6 = (a1 + 160);
  *(a1 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  *(a1 + 224) = 0;
  v7 = (a1 + 224);
  *(a1 + 248) = 0;
  if (*(a2 + 248) != 1)
  {
LABEL_6:
    *a1 = &unk_28812E6D0;
    return result;
  }

LABEL_9:
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  result = *(a2 + 224);
  *(a1 + 224) = result;
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a1 + 248) = 1;
  *a1 = &unk_28812E6D0;
  return result;
}

void sub_2711F97D4()
{
  qword_28087B3B0 = 0;
  qword_28087B3B8 = 0;
  qword_28087B3C0 = 0;
  if ((atomic_load_explicit(&qword_28087C300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087C300))
  {
    sub_2717F9994();
    sub_2717F9A58(&qword_28087C308, &qword_28087C2E8);
    __cxa_guard_release(&qword_28087C300);
  }

  v0 = qword_28087C2E8;
  v1 = *algn_28087C2F0;
  if (*algn_28087C2F0 != qword_28087C2E8)
  {
    do
    {
      v4 = *v0;
      v2 = sub_2711FE114(v4);
      if ((v2 & 0x100000000) != 0)
      {
        v3 = v2 - 1;
        if ((v2 - 1) <= 0x25 && ((0x31D13100DFuLL >> v3) & 1) != 0 && (dword_271868348[v3] | *&a8[4 * v3]) == v4 && v2 <= 0x26 && ((1 << v2) & 0x61826001BELL) != 0)
        {
          sub_2711FE3E0(&qword_28087B3B0, &v4);
        }
      }

      ++v0;
    }

    while (v0 != v1);
  }
}

void sub_2711F9924(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087C300);
  if (qword_28087B3B0)
  {
    qword_28087B3B8 = qword_28087B3B0;
    operator delete(qword_28087B3B0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711F995C(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_2711F9998()
{
  qword_28087B3C8 = 0;
  qword_28087B3D0 = 0;
  qword_28087B3D8 = 0;
  if ((atomic_load_explicit(&qword_28087C300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087C300))
  {
    sub_2717F9994();
    sub_2717F9A58(&qword_28087C308, &qword_28087C2E8);
    __cxa_guard_release(&qword_28087C300);
  }

  v0 = qword_28087C2E8;
  v1 = *algn_28087C2F0;
  if (*algn_28087C2F0 != qword_28087C2E8)
  {
    do
    {
      v4 = *v0;
      v2 = sub_2711FE114(v4);
      if ((v2 & 0x100000000) != 0 && v2 <= 0x26 && ((1 << v2) & 0x61826001BELL) != 0)
      {
        sub_2711FE3E0(&qword_28087B3C8, &v4);
      }

      ++v0;
    }

    while (v0 != v1);
  }
}

void sub_2711F9A98(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087C300);
  if (qword_28087B3C8)
  {
    qword_28087B3D0 = qword_28087B3C8;
    operator delete(qword_28087B3C8);
  }

  _Unwind_Resume(a1);
}

void sub_2711F9AD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v23[0] = &unk_288115A20;
  v23[1] = v4;
  v24 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2711F9EFC(v25, v23);
  v23[0] = &unk_288115A20;
  v5 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v32)
    {
      goto LABEL_6;
    }
  }

  else if (v32)
  {
LABEL_6:
    v6 = *&v25[8];
    *&v25[8] = 0;
    *&v25[16] = 0;
    *&v11 = &unk_2881177F0;
    *(&v11 + 1) = &unk_2881147D8;
    *v13 = *v26;
    *&v13[14] = *&v26[14];
    LOBYTE(v14) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    *a2 = &unk_2881177F0;
    *(a2 + 8) = &unk_2881147D8;
    __p = 0uLL;
    v7 = *v26;
    *(a2 + 16) = v6;
    *(a2 + 32) = v7;
    *(a2 + 46) = *&v26[14];
    *(a2 + 64) = 0;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 1;
    sub_2712CAF40(&v11);
    goto LABEL_18;
  }

  v11 = *v25;
  LOBYTE(__p) = 0;
  v19 = 0;
  if (v31 != 1)
  {
    *a2 = *v25;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 160) = 0;
    goto LABEL_18;
  }

  sub_27112F6CC(&__p, &v25[16]);
  v19 = 1;
  *a2 = v11;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  v8 = v13[8];
  if (v13[8] == 1)
  {
    *(a2 + 16) = __p;
    *(a2 + 32) = *v13;
    *v13 = 0;
    __p = 0uLL;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v9 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v18 & 1) == 0)
    {
LABEL_11:
      *(a2 + 112) = 1;
      *(a2 + 160) = 0;
      if (!v8)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v9 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v10 = v15;
  *(v9 + 16) = v14;
  *v9 = *&v13[16];
  *&v13[16] = 0uLL;
  *(a2 + 72) = v10;
  *(a2 + 80) = v16;
  *(a2 + 96) = v17;
  v14 = 0;
  v16 = 0uLL;
  v17 = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 1;
  *(a2 + 160) = 0;
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_16:
  if ((v13[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

LABEL_18:
  if (v32 == 1)
  {
    (**v25)(v25);
  }

  else if (v31 == 1)
  {
    if (v30 == 1)
    {
      if (v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 < 0)
      {
        operator delete(*&v26[24]);
      }
    }

    if (v26[16] == 1 && (v26[15] & 0x80000000) != 0)
    {
      operator delete(*&v25[16]);
    }
  }
}

void sub_2711F9ECC(_Unwind_Exception *a1)
{
  sub_27112D66C(v1 + 16);
  sub_2711FB490(v2 - 160);
  _Unwind_Resume(a1);
}

void sub_2711F9EFC(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else if (v6)
    {
LABEL_5:
      if ((atomic_load_explicit(&qword_28087B2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B2C8))
      {
        sub_2711F9998();
        __cxa_atexit(sub_2711F995C, &qword_28087B3C8, &dword_27111A000);
        __cxa_guard_release(&qword_28087B2C8);
      }

      v7 = qword_28087B3C8;
      v8 = qword_28087B3D0;
      v9 = sub_27157CC2C(a2);
      if (v8 != v7)
      {
        while (*v7 != v9)
        {
          if (++v7 == v8)
          {
            goto LABEL_27;
          }
        }

        if (v7 != v8)
        {
          v14 = sub_27157CC2C(a2);
          switch(sub_2711FE114(v14))
          {
            case 1u:
              operator new();
            case 2u:
              operator new();
            case 3u:
              operator new();
            case 4u:
              operator new();
            case 5u:
              operator new();
            case 7u:
              operator new();
            case 8u:
              operator new();
            case 0x15u:
              operator new();
            case 0x16u:
              operator new();
            case 0x19u:
              operator new();
            case 0x1Fu:
              operator new();
            case 0x20u:
              operator new();
            case 0x25u:
              operator new();
            case 0x26u:
              operator new();
            default:
              sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
              abort();
          }
        }
      }

LABEL_27:
      v17 = sub_27157CC2C(a2);
      if ((atomic_load_explicit(&qword_28087B2C8, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_28087B2C8))
        {
          sub_2711F9998();
          __cxa_atexit(sub_2711F995C, &qword_28087B3C8, &dword_27111A000);
          __cxa_guard_release(&qword_28087B2C8);
        }
      }

      v16[7] = qword_28087B3C8;
      v16[8] = (qword_28087B3D0 - qword_28087B3C8) >> 2;
      v22 = 0;
      v16[0] = v21;
      v16[1] = "Invalid CVPixelBuffer format '";
      v16[2] = v21;
      v16[3] = "Invalid CVPixelBuffer format '";
      v16[4] = "Invalid CVPixelBuffer format '";
      v23 = v16;
      sub_2711FE8BC(&v23);
      sub_2711FE4F8();
    }
  }

  LOBYTE(__p) = 0;
  v20 = 0;
  sub_271369B1C(&__p, &v24);
  *a1 = v24;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v34 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_21;
  }

  *(a1 + 40) = 0;
  v10 = v27;
  if (v27 == 1)
  {
    *(a1 + 16) = v25;
    *(a1 + 32) = v26;
    v26 = 0;
    v25 = 0uLL;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    v11 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    v12 = v30;
    *(v11 + 16) = v29;
    *v11 = v28;
    v28 = 0uLL;
    *(a1 + 72) = v12;
    *(a1 + 80) = v31;
    *(a1 + 96) = v32;
    v29 = 0;
    v31 = 0uLL;
    v32 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  *(a1 + 48) = 0;
  v11 = a1 + 48;
  *(a1 + 104) = 0;
  if (v33)
  {
    goto LABEL_18;
  }

LABEL_14:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

LABEL_21:
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = *MEMORY[0x277D85DE8];
  }
}

void sub_2711FB0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_271204BCC(&a32);
  sub_271204BCC(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_271205424(&a32);
  sub_271205424(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_2712019BC(&a32);
  sub_2712019BC(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_2711FF85C(&a32);
  sub_2711FF85C(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_27120090C(&a32);
  sub_27120090C(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_271204374(&a32);
  sub_271204374(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_271202214(&a32);
  sub_271202214(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_2712000B4(&a32);
  sub_2712000B4(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_271203B1C(&a32);
  sub_271203B1C(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_2712032C4(&a32);
  sub_2712032C4(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_271201164(&a32);
  sub_271201164(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_271202A6C(&a32);
  sub_271202A6C(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_271205C7C(&a32);
  sub_271205C7C(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_2711FF004(&a32);
  sub_2711FF004(&a10);
  _Unwind_Resume(a1);
}

void sub_2711FB3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711FB490(uint64_t result)
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

void sub_2711FB560(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3 > 0x26 || ((1 << v3) & 0x61826001BELL) == 0)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_288115A20;
    *(a1 + 120) = 1;
    return;
  }

  sub_271206488(&v10, *(a2 + 56), a2 + 8);
  if (v11)
  {
    v6 = *v11;
    v5 = v11[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_9:
        v8 = v11;
        v7 = v12;
        *a1 = &unk_288115A20;
        *(a1 + 8) = v8;
        *(a1 + 16) = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_13;
      }
    }

    else if (v6)
    {
      goto LABEL_9;
    }
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_288115A20;
LABEL_13:
  *(a1 + 120) = 1;
  v10 = &unk_288115A20;
  v9 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_2711FB73C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 152) == 1)
  {
    v4 = *(a1 + 136);
    v3 = *(a1 + 144);
    *a2 = &unk_288115A20;
    *(a2 + 8) = v4;
    *(a2 + 16) = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *(a2 + 120) = 1;
    return;
  }

  v41 = a1;
  v5 = *(a1 + 56);
  v40 = v5;
  if (v5 > 0x26 || ((1 << v5) & 0x61826001BELL) == 0)
  {
    sub_271220E9C();
  }

  *&v29 = &v41;
  sub_2712215CC(&v17, v5, &v29, a1 + 8);
  if (!v18)
  {
    goto LABEL_18;
  }

  v8 = *v18;
  v7 = v18[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if (v8)
      {
        goto LABEL_14;
      }

LABEL_18:
      v43 = 0;
      v20[0] = &v42;
      v20[1] = "image does not contain a CVPixelBuffer";
      v21 = &v42;
      v22 = "image does not contain a CVPixelBuffer";
      v23 = "image does not contain a CVPixelBuffer";
      v44 = v20;
      sub_271228A78(&v44);
      if (v43 == -1)
      {
        sub_2711308D4();
      }

      v20[0] = &v44;
      (off_28812EC30[v43])(v15, v20, &v42);
      if (v43 != -1)
      {
        (off_28812EBB8[v43])(v20, &v42);
      }

      if (SHIBYTE(v16) < 0)
      {
        sub_271127178(v20, v15[0], v15[1]);
      }

      else
      {
        *v20 = *v15;
        v21 = v16;
      }

      LOBYTE(v22) = 1;
      LOBYTE(v23) = 0;
      v27 = 0;
      v28 = 1;
      sub_27112D480(0xCu, v20, &v29);
      *a2 = v29;
      *(a2 + 16) = 0;
      *(a2 + 112) = 0;
      if (v39 == 1)
      {
        *(a2 + 40) = 0;
        v11 = v32;
        if (v32 == 1)
        {
          *(a2 + 16) = __p;
          *(a2 + 32) = v31;
          v31 = 0;
          __p = 0uLL;
          *(a2 + 40) = 1;
          *(a2 + 48) = 0;
          v12 = a2 + 48;
          *(a2 + 104) = 0;
          if ((v38 & 1) == 0)
          {
LABEL_27:
            *(a2 + 112) = 1;
            *(a2 + 120) = 0;
            if (!v11)
            {
              goto LABEL_34;
            }

LABEL_32:
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_34;
          }
        }

        else
        {
          *(a2 + 48) = 0;
          v12 = a2 + 48;
          *(a2 + 104) = 0;
          if ((v38 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v13 = v35;
        *(v12 + 16) = v34;
        *v12 = v33;
        v33 = 0uLL;
        *(a2 + 72) = v13;
        *(a2 + 80) = v36;
        *(a2 + 96) = v37;
        v34 = 0;
        v36 = 0uLL;
        v37 = 0;
        *(a2 + 104) = 1;
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (v11)
        {
          goto LABEL_32;
        }
      }

      else
      {
        *(a2 + 120) = 0;
      }

LABEL_34:
      if (v28 == 1)
      {
        if (v27 == 1)
        {
          if (v26 < 0)
          {
            operator delete(v25);
          }

          if (v24 < 0)
          {
            operator delete(v23);
          }
        }

        if (v22 == 1 && SHIBYTE(v21) < 0)
        {
          operator delete(v20[0]);
        }
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(v15[0]);
      }

      goto LABEL_45;
    }
  }

  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_14:
  v10 = v18;
  v9 = v19;
  *a2 = &unk_288115A20;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a2 + 120) = 1;
LABEL_45:
  v17 = &unk_288115A20;
  v14 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }
}

void sub_2711FBD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (*(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711FBD88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = *MEMORY[0x277D85DE8];
  v19 = &unk_288115A20;
  v20 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2711F9EFC(&v21, &v19);
  v19 = &unk_288115A20;
  v5 = *(&v20 + 1);
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v31)
    {
LABEL_4:
      if (*(a2 + 400) == 1)
      {
        if (*(a2 + 16) == 1)
        {
          v6 = *a2;
          v7 = *(a2 + 8);
          if (*(a2 + 56) != 1)
          {
LABEL_25:
            *&v64 = v6;
            BYTE8(v64) = v7;
            sub_27113523C(v65, (a2 + 32));
            sub_271228B6C(&v80, &v21, &v64);
            sub_271228D08();
          }
        }

        else
        {
          v80 = &unk_28810A440;
          v6 = sub_271815924();
          v7 = 2;
          if (*(a2 + 56) != 1)
          {
            goto LABEL_25;
          }
        }

        sub_2711DAE40((a2 + 32), 1000000000);
        goto LABEL_25;
      }

      LOBYTE(v44) = 0;
      v45 = 0;
      LOBYTE(v46) = 0;
      LOBYTE(v47) = 0;
      LOBYTE(v48) = 0;
      v49 = 0;
      LOBYTE(v50) = 0;
      v51 = 0;
      LOBYTE(v52) = 0;
      v53 = 0;
      LOBYTE(v54) = 0;
      v55 = 0;
      v56 = v46;
      v57 = v47;
      LOBYTE(v58) = 0;
      v59 = 0;
      LOBYTE(v60) = 0;
      v61 = 0;
      LOBYTE(v62) = 0;
      v63 = 0;
      v32 = &unk_28810A440;
      sub_27113523C(&v81, &v54);
      *&v64 = sub_271815924();
      BYTE8(v64) = 2;
      LOBYTE(v65[0]) = 0;
      v66 = 0;
      if (v83 == 1)
      {
        *v65 = v81;
        v65[2] = v82;
        v82 = 0;
        v81 = 0uLL;
        v66 = 1;
      }

      v67 = v84;
      v68 = v85;
      LOBYTE(v69) = 0;
      v71 = 0;
      if (v88 == 1)
      {
        v69 = v86;
        v70 = v87;
        v87 = 0;
        v86 = 0uLL;
        v71 = 1;
        LOBYTE(v72) = 0;
        v76 = 0;
        if (v91 != 1)
        {
LABEL_12:
          LOBYTE(v77[0]) = 0;
          v79 = 0;
          if ((v94 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_33;
        }
      }

      else
      {
        LOBYTE(v72) = 0;
        v76 = 0;
        if (v91 != 1)
        {
          goto LABEL_12;
        }
      }

      _X0 = 0;
      _X1 = 0;
      v73 = v90;
      v72 = v89;
      v90 = 0;
      v89 = 0uLL;
      __asm { CASPAL          X0, X1, X0, X1, [X8] }

      v74 = _X0;
      v75 = 0;
      v76 = 1;
      LOBYTE(v77[0]) = 0;
      v79 = 0;
      if ((v94 & 1) == 0)
      {
LABEL_13:
        if (v91 != 1)
        {
          goto LABEL_36;
        }

LABEL_34:
        if (SHIBYTE(v90) < 0)
        {
          operator delete(v89);
        }

LABEL_36:
        if (v88 == 1 && SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (v83 == 1 && SHIBYTE(v82) < 0)
        {
          operator delete(v81);
        }

        sub_271228B6C(&v80, &v21, &v64);
        sub_271228D08();
      }

LABEL_33:
      *v77 = v92;
      v78 = v93;
      v93 = 0;
      v92 = 0uLL;
      v79 = 1;
      if (v91 != 1)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }
  }

  else if (v31)
  {
    goto LABEL_4;
  }

  *v33 = v21;
  LOBYTE(__p) = 0;
  v43 = 0;
  if (v30 != 1)
  {
    *a3 = v21;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    *(a3 + 544) = 0;
    if (v31 != 1)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  sub_27112F6CC(&__p, &v22);
  v43 = 1;
  *a3 = *v33;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  v8 = v36;
  if (v36 != 1)
  {
    *(a3 + 48) = 0;
    v9 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v42 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_27:
    v10 = v39;
    *(v9 + 16) = v38;
    *v9 = v37;
    v37 = 0uLL;
    *(a3 + 72) = v10;
    *(a3 + 80) = v40;
    *(a3 + 96) = v41;
    v38 = 0;
    v40 = 0uLL;
    v41 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 544) = 0;
    if (!v8)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  *(a3 + 16) = __p;
  *(a3 + 32) = v35;
  v35 = 0;
  __p = 0uLL;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v9 = a3 + 48;
  *(a3 + 104) = 0;
  if (v42)
  {
    goto LABEL_27;
  }

LABEL_19:
  *(a3 + 112) = 1;
  *(a3 + 544) = 0;
  if (v8)
  {
LABEL_28:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    operator delete(__p);
    if (v31 != 1)
    {
      goto LABEL_45;
    }

LABEL_44:
    (*v21)(&v21);
    goto LABEL_54;
  }

LABEL_43:
  if (v31 == 1)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (v30 == 1)
  {
    if (v29 == 1)
    {
      if (v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }
    }

    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }
  }

LABEL_54:
  v18 = *MEMORY[0x277D85DE8];
}