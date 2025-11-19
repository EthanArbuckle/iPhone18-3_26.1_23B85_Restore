void sub_29AC7753C(_Unwind_Exception *a1)
{
  v3 = 152;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[19];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[18];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[17];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[16];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[15];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[14];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[13];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[12];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[11];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[10];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[9];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[8];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[7];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[6];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[5];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[4];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[3];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[2];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[1];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::IsIndexed(pxrInternal__aapl__pxrReserved__::HdPrimvarSchema *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v3)
  {
    v3 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  (*(*v1 + 24))(&v10, v1, v3 + 8);
  if (v10)
  {
    v4 = *this;
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v5)
    {
      v5 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    (*(*v4 + 24))(&v8, v4, v5 + 16);
    v6 = v8 != 0;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  return v6;
}

void sub_29AC778A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetPrimvarValue(pxrInternal__aapl__pxrReserved__::HdPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  if (!*this)
  {
    goto LABEL_40;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v20 = *v4;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AC0F63C(this, &v21);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v21)
  {
    v5 = v22;
    *a2 = v21;
    a2[1] = v5;
    return;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v7 = *(v6 + 1);
  v17 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AC0F63C(this, &v18);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v9 = *(v8 + 2);
  v14 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v10;
    }
  }

  sub_29ABC4A68(this, &v15);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v18)
  {
    v11 = v15 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (!v11)
  {
    sub_29AC77B50(&v18, &v15, &v13);
    *a2 = v13;
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (v12)
  {
LABEL_40:
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_29AC77AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  v19 = *(v17 - 40);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC77B50(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x28uLL);
  v7 = v6;
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v6 = &unk_2A207D290;
  v6[1] = v8;
  v6[2] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6[3] = v10;
  v6[4] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a3 = v6;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A207DA08;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = v7;
  a3[1] = v12;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v9)
  {

    sub_29A014BEC(v9);
  }
}

void sub_29AC77C5C(_Unwind_Exception *a1)
{
  sub_29AC791F0(v2);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetIndexedPrimvarValue(pxrInternal__aapl__pxrReserved__::HdPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  IsIndexed = pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::IsIndexed(this);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (IsIndexed)
  {
    if (!v5)
    {
      v5 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v6 = *(v5 + 1);
    v11 = v6;
    if ((v6 & 7) != 0)
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v7;
      }
    }

    sub_29AC0F63C(this, a2);
    v8 = v11;
  }

  else
  {
    if (!v5)
    {
      v5 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v10 = *v5;
    if ((*v5 & 7) != 0)
    {
      v9 = (*v5 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 = v9;
      }
    }

    sub_29AC0F63C(this, a2);
    v8 = v10;
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC77D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetFlattenedPrimvarValue(pxrInternal__aapl__pxrReserved__::HdPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  if (*this)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v18 = *v4;
    if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 &= 0xFFFFFFFFFFFFFFF8;
    }

    sub_29AC0F63C(this, &v19);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v19)
    {
      v5 = v20;
      *a2 = v19;
      a2[1] = v5;
    }

    else
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v7 = *(v6 + 1);
      v15 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      sub_29AC0F63C(this, &v16);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v16)
      {
        v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v8)
        {
          v8 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        v9 = *(v8 + 2);
        v12 = v9;
        if ((v9 & 7) != 0)
        {
          v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
          {
            v12 = v10;
          }
        }

        sub_29ABC4A68(this, &v13);
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v13)
        {
          sub_29AC77B50(&v16, &v13, &v11);
          *a2 = v11;
        }

        else
        {
          *a2 = 0;
          a2[1] = 0;
        }

        if (v14)
        {
          sub_29A014BEC(v14);
        }
      }

      else
      {
        *a2 = 0;
        a2[1] = 0;
      }

      if (v17)
      {
        sub_29A014BEC(v17);
      }

      if (v20)
      {
        sub_29A014BEC(v20);
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_29AC77F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  v19 = *(v17 - 40);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetIndices(pxrInternal__aapl__pxrReserved__::HdPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetInterpolation(pxrInternal__aapl__pxrReserved__::HdPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetRole(pxrInternal__aapl__pxrReserved__::HdPrimvarSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v5 = *(v4 + 4);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
{
  v50 = *MEMORY[0x29EDCA608];
  v11 = &v46;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  v46 = 0u;
  v12 = v48;
  if (*a1)
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v14)
    {
      v14 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v11 = v47;
    v12 = v48 + 1;
    sub_29A166F2C(v48, v14);
    v16 = *a1;
    v15 = a1[1];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(&v46 + 1);
    *&v46 = v16;
    *(&v46 + 1) = v15;
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  if (*a2)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    sub_29A166F2C(v12, v19 + 1);
    ++v18;
    v21 = *a2;
    v20 = a2[1];
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(v11 + 1);
    *v11 = v21;
    *(v11 + 1) = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
    }
  }

  if (*a3)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v23)
    {
      v23 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    sub_29A166F2C(v48 + v18, v23 + 2);
    v24 = v18 + 1;
    v25 = &v47[v18 - 1];
    v27 = *a3;
    v26 = a3[1];
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = v25[1];
    *v25 = v27;
    v25[1] = v26;
    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }

  else
  {
    v24 = v18;
  }

  if (*a4)
  {
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v29)
    {
      v29 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    sub_29A166F2C(v48 + v24, v29 + 3);
    v30 = v24 + 1;
    v31 = &v47[v24 - 1];
    v33 = *a4;
    v32 = a4[1];
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v34 = v31[1];
    *v31 = v33;
    v31[1] = v32;
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  else
  {
    v30 = v24;
  }

  if (*a5)
  {
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v35)
    {
      v35 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    sub_29A166F2C(v48 + v30, v35 + 4);
    v36 = v30 + 1;
    v37 = &v47[v30 - 1];
    v39 = *a5;
    v38 = a5[1];
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v40 = v37[1];
    *v37 = v39;
    v37[1] = v38;
    if (v40)
    {
      sub_29A014BEC(v40);
    }
  }

  else
  {
    v36 = v30;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v36, v48, &v46, &v45);
  *a6 = v45;
  for (i = 72; i != -8; i -= 16)
  {
    v42 = *(&v47[-1] + i);
    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }

  for (j = 32; j != -8; j -= 8)
  {
    v44 = *(v48 + j);
    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC78568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v22 = 72;
  while (1)
  {
    v23 = *(&a11 + v22);
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    v22 -= 16;
    if (v22 == -8)
    {
      v24 = 32;
      while (1)
      {
        v25 = *(&a21 + v24);
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v24 -= 8;
        if (v24 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetPrimvarValue(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetIndexedPrimvarValue(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetIndices(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetInterpolation(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::Builder::SetRole(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

double pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdPrimvarSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v5 + 6) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    if ((*(v7 + 7) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      if ((*(v8 + 8) ^ *this) > 7)
      {
        v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v9)
        {
          v9 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        if ((*(v9 + 9) ^ *this) > 7)
        {
          v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v10)
          {
            v10 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          if ((*(v10 + 10) ^ *this) > 7)
          {
            v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
            if (!v11)
            {
              v11 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
            }

            if ((*(v11 + 11) ^ *this) > 7)
            {
              sub_29ABCCFA4(this, &v15);
              result = *&v15;
              *a2 = v15;
              return result;
            }

            if ((atomic_load_explicit(&qword_2A174AD70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AD70))
            {
              sub_29ABCCFA4(this, &qword_2A174AD60);
              __cxa_atexit(sub_29ABCD02C, &qword_2A174AD60, &dword_299FE7000);
              __cxa_guard_release(&qword_2A174AD70);
            }

            v6 = &qword_2A174AD60;
          }

          else
          {
            if ((atomic_load_explicit(&qword_2A174AD58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AD58))
            {
              sub_29ABCCFA4(this, &qword_2A174AD48);
              __cxa_atexit(sub_29ABCD02C, &qword_2A174AD48, &dword_299FE7000);
              __cxa_guard_release(&qword_2A174AD58);
            }

            v6 = &qword_2A174AD48;
          }
        }

        else
        {
          if ((atomic_load_explicit(&qword_2A174AD40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AD40))
          {
            sub_29ABCCFA4(this, &qword_2A174AD30);
            __cxa_atexit(sub_29ABCD02C, &qword_2A174AD30, &dword_299FE7000);
            __cxa_guard_release(&qword_2A174AD40);
          }

          v6 = &qword_2A174AD30;
        }
      }

      else
      {
        if ((atomic_load_explicit(&qword_2A174AD28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AD28))
        {
          sub_29ABCCFA4(this, &qword_2A174AD18);
          __cxa_atexit(sub_29ABCD02C, &qword_2A174AD18, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174AD28);
        }

        v6 = &qword_2A174AD18;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A174AD10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AD10))
      {
        sub_29ABCCFA4(this, &qword_2A174AD00);
        __cxa_atexit(sub_29ABCD02C, &qword_2A174AD00, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174AD10);
      }

      v6 = &qword_2A174AD00;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174ACF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174ACF8))
    {
      sub_29ABCCFA4(this, &qword_2A174ACE8);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174ACE8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174ACF8);
    }

    v6 = &qword_2A174ACE8;
  }

  v13 = *v6;
  v12 = v6[1];
  *a2 = v13;
  *(a2 + 8) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdPrimvarSchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*(v5 + 12) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    if ((*(v7 + 13) ^ *this) > 7)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      if ((*(v8 + 14) ^ *this) > 7)
      {
        v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        if (!v9)
        {
          v9 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
        }

        if ((*(v9 + 15) ^ *this) > 7)
        {
          v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v10)
          {
            v10 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          if ((*(v10 + 16) ^ *this) > 7)
          {
            v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
            if (!v11)
            {
              v11 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
            }

            if ((*(v11 + 17) ^ *this) > 7)
            {
              v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
              if (!v12)
              {
                v12 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
              }

              if ((*(v12 + 18) ^ *this) > 7)
              {
                v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
                if (!v13)
                {
                  v13 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
                }

                if ((*(v13 + 19) ^ *this) > 7)
                {
                  sub_29ABCCFA4(this, &v17);
                  result = *&v17;
                  *a2 = v17;
                  return result;
                }

                if ((atomic_load_explicit(&qword_2A174AE30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AE30))
                {
                  sub_29ABCCFA4(this, &qword_2A174AE20);
                  __cxa_atexit(sub_29ABCD02C, &qword_2A174AE20, &dword_299FE7000);
                  __cxa_guard_release(&qword_2A174AE30);
                }

                v6 = &qword_2A174AE20;
              }

              else
              {
                if ((atomic_load_explicit(&qword_2A174AE18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AE18))
                {
                  sub_29ABCCFA4(this, &qword_2A174AE08);
                  __cxa_atexit(sub_29ABCD02C, &qword_2A174AE08, &dword_299FE7000);
                  __cxa_guard_release(&qword_2A174AE18);
                }

                v6 = &qword_2A174AE08;
              }
            }

            else
            {
              if ((atomic_load_explicit(&qword_2A174AE00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AE00))
              {
                sub_29ABCCFA4(this, &qword_2A174ADF0);
                __cxa_atexit(sub_29ABCD02C, &qword_2A174ADF0, &dword_299FE7000);
                __cxa_guard_release(&qword_2A174AE00);
              }

              v6 = &qword_2A174ADF0;
            }
          }

          else
          {
            if ((atomic_load_explicit(&qword_2A174ADE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174ADE8))
            {
              sub_29ABCCFA4(this, &qword_2A174ADD8);
              __cxa_atexit(sub_29ABCD02C, &qword_2A174ADD8, &dword_299FE7000);
              __cxa_guard_release(&qword_2A174ADE8);
            }

            v6 = &qword_2A174ADD8;
          }
        }

        else
        {
          if ((atomic_load_explicit(&qword_2A174ADD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174ADD0))
          {
            sub_29ABCCFA4(this, &qword_2A174ADC0);
            __cxa_atexit(sub_29ABCD02C, &qword_2A174ADC0, &dword_299FE7000);
            __cxa_guard_release(&qword_2A174ADD0);
          }

          v6 = &qword_2A174ADC0;
        }
      }

      else
      {
        if ((atomic_load_explicit(&qword_2A174ADB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174ADB8))
        {
          sub_29ABCCFA4(this, &qword_2A174ADA8);
          __cxa_atexit(sub_29ABCD02C, &qword_2A174ADA8, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174ADB8);
        }

        v6 = &qword_2A174ADA8;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A174ADA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174ADA0))
      {
        sub_29ABCCFA4(this, &qword_2A174AD90);
        __cxa_atexit(sub_29ABCD02C, &qword_2A174AD90, &dword_299FE7000);
        __cxa_guard_release(&qword_2A174ADA0);
      }

      v6 = &qword_2A174AD90;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174AD88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AD88))
    {
      sub_29ABCCFA4(this, &qword_2A174AD78);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174AD78, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AD88);
    }

    v6 = &qword_2A174AD78;
  }

  v15 = *v6;
  v14 = v6[1];
  *a2 = v15;
  *(a2 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29AC79188(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A207D290;
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AC791F0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A207D290;
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v4);
}

void sub_29AC7925C(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  v13[2] = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 16))(v13);
  (*(**(a1 + 24) + 32))(v11, a3);
  v8 = v11[0];
  v9 = v11[1];
  v10 = v12;
  if (v12)
  {
    v6 = (v12 - 16);
    if (*(&v9 + 1))
    {
      v6 = *(&v9 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  switch(sub_29A29C774(v13))
  {
    case 0xEu:
      sub_29AC79E4C(v13, &v8, a2);
      break;
    case 0xFu:
      sub_29AC7A00C(v13, &v8, a2);
      break;
    case 0x10u:
      sub_29AC7A1F4(v13, &v8, a2);
      break;
    case 0x11u:
      sub_29AC7A3A8(v13, &v8, a2);
      break;
    case 0x12u:
      sub_29AC7A55C(v13, &v8, a2);
      break;
    case 0x13u:
      sub_29AC7A744(v13, &v8, a2);
      break;
    case 0x14u:
      sub_29AC7A8F8(v13, &v8, a2);
      break;
    case 0x15u:
      sub_29AC7AAB8(v13, &v8, a2);
      break;
    case 0x16u:
      sub_29AC7ACA0(v13, &v8, a2);
      break;
    case 0x17u:
      sub_29AC7AE54(v13, &v8, a2);
      break;
    case 0x18u:
      sub_29AC7B020(v13, &v8, a2);
      break;
    case 0x19u:
      sub_29AC7B208(v13, &v8, a2);
      break;
    case 0x1Au:
      sub_29AC7B3C8(v13, &v8, a2);
      break;
    case 0x1Bu:
      sub_29AC7B5A0(v13, &v8, a2);
      break;
    case 0x1Cu:
      sub_29AC7B78C(v13, &v8, a2);
      break;
    case 0x1Du:
      sub_29AC7B94C(v13, &v8, a2);
      break;
    case 0x1Eu:
      sub_29AC7BB3C(v13, &v8, a2);
      break;
    case 0x1Fu:
      sub_29AC7BD38(v13, &v8, a2);
      break;
    case 0x20u:
      sub_29AC7BF04(v13, &v8, a2);
      break;
    case 0x21u:
      sub_29AC7C10C(v13, &v8, a2);
      break;
    case 0x22u:
      sub_29AC7C324(v13, &v8, a2);
      break;
    case 0x23u:
      sub_29AC7C4F0(v13, &v8, a2);
      break;
    case 0x24u:
      sub_29AC7C6D8(v13, &v8, a2);
      break;
    case 0x25u:
      sub_29AC7C8A0(v13, &v8, a2);
      break;
    case 0x26u:
      sub_29AC7CA6C(v13, &v8, a2);
      break;
    case 0x27u:
      sub_29AC7CC68(v13, &v8, a2);
      break;
    case 0x28u:
      sub_29AC7CE34(v13, &v8, a2);
      break;
    case 0x29u:
      sub_29AC7CFE0(v13, &v8, a2);
      break;
    case 0x2Au:
      sub_29AC7D194(v13, &v8, a2);
      break;
    case 0x2Bu:
      sub_29AC7D350(v13, &v8, a2);
      break;
    case 0x2Cu:
      sub_29AC7D50C(v13, &v8, a2);
      break;
    case 0x2Du:
      sub_29AC7D6C0(v13, &v8, a2);
      break;
    case 0x2Eu:
      sub_29AC7D87C(v13, &v8, a2);
      break;
    case 0x2Fu:
      sub_29AC7DA40(v13, &v8, a2);
      break;
    case 0x30u:
      sub_29AC7DBE8(v13, &v8, a2);
      break;
    case 0x31u:
      sub_29AC7DD90(v13, &v8, a2);
      break;
    case 0x32u:
      sub_29AC7DF38(v13, &v8, a2);
      break;
    case 0x33u:
      sub_29AC7E0E0(v13, &v8, a2);
      break;
    case 0x34u:
      sub_29AC7E288(v13, &v8, a2);
      break;
    case 0x35u:
      sub_29AC7E430(v13, &v8, a2);
      break;
    case 0x36u:
      sub_29AC7E5D8(v13, &v8, a2);
      break;
    case 0x37u:
      sub_29AC7E780(v13, &v8, a2);
      break;
    case 0x38u:
      sub_29AC7E928(v13, &v8, a2);
      break;
    case 0x39u:
      sub_29AC7EADC(v13, &v8, a2);
      break;
    case 0x3Au:
      sub_29AC7EC90(v13, &v8, a2);
      break;
    case 0x3Bu:
      sub_29AC7EE44(v13, &v8, a2);
      break;
    case 0x3Cu:
      sub_29AC7F030(v13, &v8, a2);
      break;
    default:
      sub_29AC79DDC(v13, v7, a2);
      break;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AC79A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

uint64_t sub_29AC79C30(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v8 = (*(**(a1 + 8) + 24))(*(a1 + 8), v16);
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v9 = (*(**(a1 + 24) + 24))(*(a1 + 24), __p, a3, a4);
  v10 = v9;
  if (!a2)
  {
    goto LABEL_12;
  }

  if ((v8 & v9) == 1)
  {
    sub_29ABE4008(v16[0], v16[1], __p[0], __p[1], a2, &v18);
    goto LABEL_12;
  }

  if (v8)
  {
    v11 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v11;
      operator delete(v11);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = *v16;
    *(a2 + 16) = v17;
    v16[1] = 0;
    v17 = 0;
    v16[0] = 0;
    goto LABEL_12;
  }

  if (!v9)
  {
LABEL_12:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_14;
  }

  v12 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v12;
    operator delete(v12);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = *__p;
  *(a2 + 16) = v15;
LABEL_14:
  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  return (v8 | v10) & 1;
}

void sub_29AC79DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC79DDC@<X0>(void *a1@<X0>, char *a2@<X2>, void *a3@<X8>)
{
  v6[0] = "hd/primvarSchema.cpp";
  v6[1] = "operator()";
  v6[2] = 87;
  v6[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattenedValue::operator()(const VtValue &)";
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v6, "Unsupported indexed primvar type", a2);
  return sub_29A186EF4(a3, a1);
}

void *sub_29AC79E4C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A21DF14(v17, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 16 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A21E784(v17);
        *(v18 + v9) = *(v11 + 16 * v10);
        ++v8;
        v9 += 16;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2048280;
          sub_29A18ECC8(a3, v17);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
        }
      }

      sub_29A21E784(v17);
      v13 = (v18 + v9);
      *v13 = 0;
      v13[1] = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v15[0] = "hd/primvarSchema.cpp";
    v15[1] = "_ComputeFlattened";
    v15[2] = 69;
    v15[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v15, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A2048280;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7A00C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A21BE0C(v20, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 12 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A21C6E0(v20);
        v13 = (v11 + 12 * v10);
        v14 = v21 + v9;
        v15 = *v13;
        *(v14 + 8) = *(v13 + 2);
        *v14 = v15;
        ++v8;
        v9 += 12;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2048110;
          sub_29A18ECC8(a3, v20);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
        }
      }

      sub_29A21C6E0(v20);
      v16 = v21 + v9;
      *(v16 + 8) = 0;
      *v16 = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v18[0] = "hd/primvarSchema.cpp";
    v18[1] = "_ComputeFlattened";
    v18[2] = 69;
    v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A2048110;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7A1F4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A219F48(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A21A6E8(v15);
          *(v16 + 8 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = v6[4];
        sub_29A21A6E8(v15);
        *(v16 + 8 * v8++) = *(v10 + 8 * v9);
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2047FA0;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  a3[1] = &off_2A2047FA0;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7A3A8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A1962EC(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A1966EC(v15);
          *(v16 + 8 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = v6[4];
        sub_29A1966EC(v15);
        *(v16 + 8 * v8++) = *(v10 + 8 * v9);
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec4h]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A20436A0;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
  }

  a3[1] = &off_2A20436A0;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7A55C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A193C60(v20, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 6 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A1940CC(v20);
        v13 = (v11 + 6 * v10);
        v14 = v21 + v9;
        v15 = *v13;
        *(v14 + 4) = *(v13 + 2);
        *v14 = v15;
        ++v8;
        v9 += 6;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2043478;
          sub_29A18ECC8(a3, v20);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
        }
      }

      sub_29A1940CC(v20);
      v16 = v21 + v9;
      *(v16 + 4) = 0;
      *v16 = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v18[0] = "hd/primvarSchema.cpp";
    v18[1] = "_ComputeFlattened";
    v18[2] = 69;
    v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec3h]";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A2043478;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7A744@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A191640(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A191A40(v15);
          *(v16 + 4 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = v6[4];
        sub_29A191A40(v15);
        *(v16 + 4 * v8++) = *(v10 + 4 * v9);
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec2h]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2043250;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
  }

  a3[1] = &off_2A2043250;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7A8F8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A195790(v17, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 16 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A195BC4(v17);
        *(v18 + v9) = *(v11 + 16 * v10);
        ++v8;
        v9 += 16;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A20435E8;
          sub_29A18ECC8(a3, v17);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
        }
      }

      sub_29A195BC4(v17);
      v13 = (v18 + v9);
      *v13 = 0;
      v13[1] = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v15[0] = "hd/primvarSchema.cpp";
    v15[1] = "_ComputeFlattened";
    v15[2] = 69;
    v15[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v15, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A20435E8;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7AAB8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A193124(v20, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 12 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A1935CC(v20);
        v13 = (v11 + 12 * v10);
        v14 = v21 + v9;
        v15 = *v13;
        *(v14 + 8) = *(v13 + 2);
        *v14 = v15;
        ++v8;
        v9 += 12;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A20433C0;
          sub_29A18ECC8(a3, v20);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
        }
      }

      sub_29A1935CC(v20);
      v16 = v21 + v9;
      *(v16 + 8) = 0;
      *v16 = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v18[0] = "hd/primvarSchema.cpp";
    v18[1] = "_ComputeFlattened";
    v18[2] = 69;
    v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A20433C0;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7ACA0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A190B18(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A190F50(v15);
          *(v16 + 8 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = v6[4];
        sub_29A190F50(v15);
        *(v16 + 8 * v8++) = *(v10 + 8 * v9);
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2043198;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  a3[1] = &off_2A2043198;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7AE54@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A196EB8(v20, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 32 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A19722C(v20);
        v13 = (v11 + 32 * v10);
        v14 = (v21 + v9);
        v15 = v13[1];
        *v14 = *v13;
        v14[1] = v15;
        ++v8;
        v9 += 32;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2043758;
          sub_29A18ECC8(a3, v20);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
        }
      }

      sub_29A19722C(v20);
      v16 = (v21 + v9);
      *v16 = 0u;
      v16[1] = 0u;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v18[0] = "hd/primvarSchema.cpp";
    v18[1] = "_ComputeFlattened";
    v18[2] = 69;
    v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A2043758;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7B020@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A1948F8(v20, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 24 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A194CC8(v20);
        v13 = (v11 + 24 * v10);
        v14 = v21 + v9;
        v15 = *v13;
        *(v14 + 16) = *(v13 + 2);
        *v14 = v15;
        ++v8;
        v9 += 24;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2043530;
          sub_29A18ECC8(a3, v20);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
        }
      }

      sub_29A194CC8(v20);
      v16 = (v21 + v9);
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v18[0] = "hd/primvarSchema.cpp";
    v18[1] = "_ComputeFlattened";
    v18[2] = 69;
    v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A2043530;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7B208@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A1921FC(v17, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 16 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A19255C(v17);
        *(v18 + v9) = *(v11 + 16 * v10);
        ++v8;
        v9 += 16;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2043308;
          sub_29A18ECC8(a3, v17);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
        }
      }

      sub_29A19255C(v17);
      v13 = (v18 + v9);
      *v13 = 0;
      v13[1] = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v15[0] = "hd/primvarSchema.cpp";
    v15[1] = "_ComputeFlattened";
    v15[2] = 69;
    v15[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v15, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A2043308;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7B3C8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A198988(v22, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v8 << 6;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A198DC8(v22);
        v13 = (v11 + (v10 << 6));
        v14 = (v23 + v9);
        v15 = *v13;
        v16 = v13[1];
        v17 = v13[3];
        v14[2] = v13[2];
        v14[3] = v17;
        *v14 = v15;
        v14[1] = v16;
        ++v8;
        v9 += 64;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A20438C8;
          sub_29A18ECC8(a3, v22);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
        }
      }

      sub_29A198DC8(v22);
      v18 = (v23 + v9);
      v18[2] = 0u;
      v18[3] = 0u;
      *v18 = 0u;
      v18[1] = 0u;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v20[0] = "hd/primvarSchema.cpp";
    v20[1] = "_ComputeFlattened";
    v20[2] = 69;
    v20[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4f]";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v20, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A20438C8;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7B5A0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A859D60(v21, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 36 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A85C4A8(v21);
        v13 = (v11 + 36 * v10);
        v14 = v22 + v9;
        v15 = *v13;
        v16 = v13[1];
        *(v14 + 32) = *(v13 + 8);
        *v14 = v15;
        *(v14 + 16) = v16;
        ++v8;
        v9 += 36;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A207D2C8;
          sub_29A18ECC8(a3, v21);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
        }
      }

      sub_29A85C4A8(v21);
      v17 = v22 + v9;
      *(v17 + 32) = 0;
      *v17 = 0u;
      *(v17 + 16) = 0u;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v19[0] = "hd/primvarSchema.cpp";
    v19[1] = "_ComputeFlattened";
    v19[2] = 69;
    v19[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfMatrix3f]";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v19, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A207D2C8;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7B78C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29AC7F660(v17, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 16 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29AC7FCAC(v17);
        *(v18 + v9) = *(v11 + 16 * v10);
        ++v8;
        v9 += 16;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A207D380;
          sub_29A18ECC8(a3, v17);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_DecRef();
        }
      }

      sub_29AC7FCAC(v17);
      v13 = (v18 + v9);
      *v13 = 0;
      v13[1] = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v15[0] = "hd/primvarSchema.cpp";
    v15[1] = "_ComputeFlattened";
    v15[2] = 69;
    v15[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfMatrix2f]";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v15, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A207D380;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7B94C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A197D6C(v25, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v8 << 7;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A198240(v25);
        v13 = (v11 + (v10 << 7));
        v14 = (v26 + v9);
        v15 = *v13;
        v16 = v13[1];
        v17 = v13[3];
        v14[2] = v13[2];
        v14[3] = v17;
        v18 = v13[7];
        v20 = v13[4];
        v19 = v13[5];
        v14[6] = v13[6];
        v14[7] = v18;
        v14[4] = v20;
        v14[5] = v19;
        *v14 = v15;
        v14[1] = v16;
        ++v8;
        v9 += 128;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2043810;
          sub_29A18ECC8(a3, v25);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
        }
      }

      sub_29A198240(v25);
      v21 = (v26 + v9);
      v21[2] = 0u;
      v21[3] = 0u;
      v21[4] = 0u;
      v21[5] = 0u;
      v21[6] = 0u;
      v21[7] = 0u;
      *v21 = 0u;
      v21[1] = 0u;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v23[0] = "hd/primvarSchema.cpp";
    v23[1] = "_ComputeFlattened";
    v23[2] = 69;
    v23[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v23, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A2043810;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7BB3C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A221F2C(v22, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 72 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A222868(v22);
        v13 = v11 + 72 * v10;
        v14 = v23 + v9;
        v15 = *(v13 + 16);
        v16 = *(v13 + 32);
        v17 = *(v13 + 48);
        *(v14 + 64) = *(v13 + 64);
        *(v14 + 32) = v16;
        *(v14 + 48) = v17;
        *v14 = *v13;
        *(v14 + 16) = v15;
        ++v8;
        v9 += 72;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2048560;
          sub_29A18ECC8(a3, v22);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
        }
      }

      sub_29A222868(v22);
      v18 = v23 + v9;
      *(v18 + 32) = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0;
      *v18 = 0u;
      *(v18 + 16) = 0u;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v20[0] = "hd/primvarSchema.cpp";
    v20[1] = "_ComputeFlattened";
    v20[2] = 69;
    v20[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v20, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A2048560;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7BD38@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A220F88(v20, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 32 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A2216E8(v20);
        v13 = (v11 + 32 * v10);
        v14 = (v21 + v9);
        v15 = v13[1];
        *v14 = *v13;
        v14[1] = v15;
        ++v8;
        v9 += 32;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A20483F0;
          sub_29A18ECC8(a3, v20);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
        }
      }

      sub_29A2216E8(v20);
      v16 = (v21 + v9);
      *v16 = 0u;
      v16[1] = 0u;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v18[0] = "hd/primvarSchema.cpp";
    v18[1] = "_ComputeFlattened";
    v18[2] = 69;
    v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfMatrix2d]";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A20483F0;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7BF04@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A1A253C(v20, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 24 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A1A29B4(v20);
        v13 = (v11 + 24 * v10);
        v14 = v21 + v9;
        v15 = *v13;
        *(v14 + 16) = *(v13 + 2);
        *v14 = v15;
        ++v8;
        v9 += 24;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2044220;
          sub_29A18ECC8(a3, v20);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
        }
      }

      sub_29A1A29B4(v20);
      v16 = v21 + v9;
      *v16 = xmmword_29B480F60;
      *(v16 + 16) = 0x80000000800000;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v18[0] = "hd/primvarSchema.cpp";
    v18[1] = "_ComputeFlattened";
    v18[2] = 69;
    v18[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfRange3f]";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v18, "Invalid primvar indices", v12, 0x7F7FFFFF7F7FFFFFLL, 0xFF7FFFFF7F7FFFFFLL);
    goto LABEL_18;
  }

  a3[1] = &off_2A2044220;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7C10C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A1A18E4(v23, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    v20 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    v19 = vdupq_n_s64(0xC7EFFFFFE0000000);
    do
    {
      v9 = 48 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A1A1DA8(v23);
        v13 = (v11 + 48 * v10);
        v14 = (v24 + v9);
        v15 = *v13;
        v16 = v13[2];
        v14[1] = v13[1];
        v14[2] = v16;
        *v14 = v15;
        ++v8;
        v9 += 48;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2044168;
          sub_29A18ECC8(a3, v23);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
        }
      }

      sub_29A1A1DA8(v23);
      v17 = (v24 + v9);
      *v17 = v20;
      v17[1] = xmmword_29B43C5A0;
      v17[2] = v19;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v21[0] = "hd/primvarSchema.cpp";
    v21[1] = "_ComputeFlattened";
    v21[2] = 69;
    v21[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfRange3d]";
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v21, "Invalid primvar indices", v12, *&v19, 0x47EFFFFFE0000000, 0xC7EFFFFFE0000000, *&v20);
    goto LABEL_18;
  }

  a3[1] = &off_2A2044168;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7C324@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A1A0CBC(v16, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 16 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A1A10C0(v16);
        *(v17 + v9) = *(v11 + 16 * v10);
        ++v8;
        v9 += 16;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A20440B0;
          sub_29A18ECC8(a3, v16);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
        }
      }

      sub_29A1A10C0(v16);
      *(v17 + 16 * v8++) = xmmword_29B480F70;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v14[0] = "hd/primvarSchema.cpp";
    v14[1] = "_ComputeFlattened";
    v14[2] = 69;
    v14[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfRange2f]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "Invalid primvar indices", v12, 0x7F7FFFFF7F7FFFFFLL, 0xFF7FFFFFFF7FFFFFLL);
    goto LABEL_18;
  }

  a3[1] = &off_2A20440B0;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7C4F0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A1A0180(v22, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    v18 = vdupq_n_s64(0xC7EFFFFFE0000000);
    v19 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    do
    {
      v9 = 32 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A1A05E0(v22);
        v13 = (v11 + 32 * v10);
        v14 = (v23 + v9);
        v15 = v13[1];
        *v14 = *v13;
        v14[1] = v15;
        ++v8;
        v9 += 32;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2043FF8;
          sub_29A18ECC8(a3, v22);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
        }
      }

      sub_29A1A05E0(v22);
      v16 = (v23 + v9);
      *v16 = v19;
      v16[1] = v18;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v20[0] = "hd/primvarSchema.cpp";
    v20[1] = "_ComputeFlattened";
    v20[2] = 69;
    v20[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfRange2d]";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v20, "Invalid primvar indices", v12, *&v18, *&v19);
    goto LABEL_18;
  }

  a3[1] = &off_2A2043FF8;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7C6D8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A19F70C(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A19FB14(v15);
          *(v16 + 8 * v8++) = 0xFF7FFFFF7F7FFFFFLL;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = v6[4];
        sub_29A19FB14(v15);
        *(v16 + 8 * v8++) = *(v10 + 8 * v9);
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfRange1f]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2043F40;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
  }

  a3[1] = &off_2A2043F40;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7C8A0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A19ED7C(v16, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 16 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A19F1B8(v16);
        *(v17 + v9) = *(v11 + 16 * v10);
        ++v8;
        v9 += 16;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2043E88;
          sub_29A18ECC8(a3, v16);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
        }
      }

      sub_29A19F1B8(v16);
      *(v17 + 16 * v8++) = xmmword_29B43C5A0;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v14[0] = "hd/primvarSchema.cpp";
    v14[1] = "_ComputeFlattened";
    v14[2] = 69;
    v14[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfRange1d]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "Invalid primvar indices", v12, 0x47EFFFFFE0000000, 0xC7EFFFFFE0000000);
    goto LABEL_18;
  }

  a3[1] = &off_2A2043E88;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7CA6C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29AC7FCF0(v19, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = (32 * v8) | 0x18;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29AC803F8(v19);
        v13 = v11 + 32 * v10;
        v14 = (v20 + v9);
        *(v14 - 3) = *v13;
        *(v14 - 16) = *(v13 + 8);
        *(v14 - 1) = *(v13 + 16);
        *v14 = *(v13 + 24);
        ++v8;
        v9 += 32;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A207D438;
          sub_29A18ECC8(a3, v19);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::_DecRef();
        }
      }

      sub_29AC803F8(v19);
      v15 = (v20 + v9);
      *(v15 - 3) = 0;
      *(v15 - 16) = 0;
      *(v15 - 1) = 0;
      *v15 = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v17[0] = "hd/primvarSchema.cpp";
    v17[1] = "_ComputeFlattened";
    v17[2] = 69;
    v17[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfInterval]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v17, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A207D438;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7CC68@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29AC8043C(v16, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 16 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29AC80B84(v16);
        *(v17 + v9) = *(v11 + 16 * v10);
        ++v8;
        v9 += 16;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A207D4F0;
          sub_29A18ECC8(a3, v16);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::_DecRef();
        }
      }

      sub_29AC80B84(v16);
      *(v17 + 16 * v8++) = xmmword_29B4B4880;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v14[0] = "hd/primvarSchema.cpp";
    v14[1] = "_ComputeFlattened";
    v14[2] = 69;
    v14[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfRect2i]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "Invalid primvar indices", v12, 0, -1);
    goto LABEL_18;
  }

  a3[1] = &off_2A207D4F0;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7CE34@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A19A1A4(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A19A5A0(v15);
          ++v8;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = v6[4];
        sub_29A19A5A0(v15);
        *(v16 + 8 * v8++) = *(v10 + 8 * v9);
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfQuath]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2043A38;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
  }

  a3[1] = &off_2A2043A38;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7CFE0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A199640(v16, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 16 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A199A70(v16);
        *(v17 + v9) = *(v11 + 16 * v10);
        ++v8;
        v9 += 16;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2043980;
          sub_29A18ECC8(a3, v16);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
        }
      }

      sub_29A199A70(v16);
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v14[0] = "hd/primvarSchema.cpp";
    v14[1] = "_ComputeFlattened";
    v14[2] = 69;
    v14[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfQuatf]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A2043980;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7D194@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A19AD54(v19, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 32 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A19B0C4(v19);
        v13 = (v11 + 32 * v10);
        v14 = (v20 + v9);
        v15 = v13[1];
        *v14 = *v13;
        v14[1] = v15;
        ++v8;
        v9 += 32;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A2043AF0;
          sub_29A18ECC8(a3, v19);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
        }
      }

      sub_29A19B0C4(v19);
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v17[0] = "hd/primvarSchema.cpp";
    v17[1] = "_ComputeFlattened";
    v17[2] = 69;
    v17[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfQuatd]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v17, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A2043AF0;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7D350@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29AC80BC8(v19, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 32 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29AC81278(v19);
        v13 = (v11 + 32 * v10);
        v14 = (v20 + v9);
        v15 = v13[1];
        *v14 = *v13;
        v14[1] = v15;
        ++v8;
        v9 += 32;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A207D5A8;
          sub_29A18ECC8(a3, v19);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::_DecRef();
        }
      }

      sub_29AC81278(v19);
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v17[0] = "hd/primvarSchema.cpp";
    v17[1] = "_ComputeFlattened";
    v17[2] = 69;
    v17[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfQuaternion]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v17, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A207D5A8;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7D50C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29AC812BC(v16, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 16 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29AC81A94(v16);
        *(v17 + v9) = *(v11 + 16 * v10);
        ++v8;
        v9 += 16;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A207D660;
          sub_29A18ECC8(a3, v16);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuath>::_DecRef();
        }
      }

      sub_29AC81A94(v16);
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v14[0] = "hd/primvarSchema.cpp";
    v14[1] = "_ComputeFlattened";
    v14[2] = 69;
    v14[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfDualQuath]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A207D660;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7D6C0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29AC81AD8(v19, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 32 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29AC822C8(v19);
        v13 = (v11 + 32 * v10);
        v14 = (v20 + v9);
        v15 = v13[1];
        *v14 = *v13;
        v14[1] = v15;
        ++v8;
        v9 += 32;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A207D718;
          sub_29A18ECC8(a3, v19);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::_DecRef();
        }
      }

      sub_29AC822C8(v19);
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v17[0] = "hd/primvarSchema.cpp";
    v17[1] = "_ComputeFlattened";
    v17[2] = 69;
    v17[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfDualQuatf]";
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v17, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A207D718;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7D87C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29AC8230C(v21, *a2);
    if (!*a2)
    {
      goto LABEL_18;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v8 << 6;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29AC82B28(v21);
        v13 = (v11 + (v10 << 6));
        v14 = (v22 + v9);
        v15 = *v13;
        v16 = v13[1];
        v17 = v13[3];
        v14[2] = v13[2];
        v14[3] = v17;
        *v14 = v15;
        v14[1] = v16;
        ++v8;
        v9 += 64;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_17;
          }

LABEL_18:
          a3[1] = &off_2A207D7D0;
          sub_29A18ECC8(a3, v21);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::_DecRef();
        }
      }

      sub_29AC82B28(v21);
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_17:
    v19[0] = "hd/primvarSchema.cpp";
    v19[1] = "_ComputeFlattened";
    v19[2] = 69;
    v19[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::GfDualQuatd]";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v19, "Invalid primvar indices", v12);
    goto LABEL_18;
  }

  a3[1] = &off_2A207D7D0;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7DA40@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A20CB6C(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A20D1F0(v15);
          *(v16 + v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + v9);
        sub_29A20D1F0(v15);
        *(v16 + v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = BOOL]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A20474B8;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  a3[1] = &off_2A20474B8;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7DBE8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29AC82B6C(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29AC830F0(v15);
          *(v16 + v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + v9);
        sub_29AC830F0(v15);
        *(v16 + v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = char]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A207D888;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
  }

  a3[1] = &off_2A207D888;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7DD90@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A19E1E4(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A19E500(v15);
          *(v16 + v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + v9);
        sub_29A19E500(v15);
        *(v16 + v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = unsigned char]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2043DD0;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  a3[1] = &off_2A2043DD0;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7DF38@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29AC83134(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29AC83A44(v15);
          *(v16 + 2 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + 2 * v9);
        sub_29AC83A44(v15);
        *(v16 + 2 * v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = short]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A207D940;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
  }

  a3[1] = &off_2A207D940;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7E0E0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A19BBD0(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A19C344(v15);
          *(v16 + 2 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + 2 * v9);
        sub_29A19C344(v15);
        *(v16 + 2 * v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = unsigned short]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2043BA8;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
  }

  a3[1] = &off_2A2043BA8;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7E288@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A19D6E4(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A19DBEC(v15);
          *(v16 + 4 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + 4 * v9);
        sub_29A19DBEC(v15);
        *(v16 + 4 * v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = int]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2043D18;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  a3[1] = &off_2A2043D18;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7E430@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A19C954(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A19CEF8(v15);
          *(v16 + 4 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + 4 * v9);
        sub_29A19CEF8(v15);
        *(v16 + 4 * v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = unsigned int]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2043C60;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  a3[1] = &off_2A2043C60;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7E5D8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A20F8FC(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A21013C(v15);
          *(v16 + 8 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + 8 * v9);
        sub_29A21013C(v15);
        *(v16 + 8 * v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = long long]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2047630;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }

  a3[1] = &off_2A2047630;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7E780@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A2109E8(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A2111A0(v15);
          *(v16 + 8 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + 8 * v9);
        sub_29A2111A0(v15);
        *(v16 + 8 * v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = unsigned long long]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2047718;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
  }

  a3[1] = &off_2A2047718;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7E928@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A18FC40(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A190088(v15);
          *(v16 + 8 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + 8 * v9);
        sub_29A190088(v15);
        *(v16 + 8 * v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = double]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A20430E0;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  a3[1] = &off_2A20430E0;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7EADC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A18E048(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A18E624(v15);
          *(v16 + 4 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v6[4] + 4 * v9);
        sub_29A18E624(v15);
        *(v16 + 4 * v8++) = v10;
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = float]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2042F70;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  a3[1] = &off_2A2042F70;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7EC90@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A18EE04(v15, *a2);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(a2[4] + 4 * v8);
          if ((v9 & 0x80000000) == 0 && *v6 > v9)
          {
            break;
          }

          sub_29A18F540(v15);
          *(v16 + 2 * v8++) = 0;
          v7 = 1;
          if (v8 >= *a2)
          {
            goto LABEL_16;
          }
        }

        v10 = v6[4];
        sub_29A18F540(v15);
        *(v16 + 2 * v8++) = *(v10 + 2 * v9);
      }

      while (v8 < *a2);
      if (v7)
      {
LABEL_16:
        v13[0] = "hd/primvarSchema.cpp";
        v13[1] = "_ComputeFlattened";
        v13[2] = 69;
        v13[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Invalid primvar indices", v11);
      }
    }

    a3[1] = &off_2A2043028;
    sub_29A18ECC8(a3, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  a3[1] = &off_2A2043028;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7EE44@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A213A04(v17, *a2);
    if (!*a2)
    {
      goto LABEL_20;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 24 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A214388(v17);
        std::string::operator=((v18 + v9), (v11 + 24 * v10));
        ++v8;
        v9 += 24;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_19;
          }

LABEL_20:
          a3[1] = off_2A20479C8;
          sub_29A18ECC8(a3, v17);
          pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
        }
      }

      sub_29A214388(v17);
      v13 = v18 + v9;
      if (*(v18 + v9 + 23) < 0)
      {
        operator delete(*v13);
      }

      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_19:
    v15[0] = "hd/primvarSchema.cpp";
    v15[1] = "_ComputeFlattened";
    v15[2] = 69;
    v15[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = std::string]";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v15, "Invalid primvar indices", v12);
    goto LABEL_20;
  }

  a3[1] = off_2A20479C8;

  return sub_29A18ECC8(a3, v6);
}

void *sub_29AC7F030@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v6 = *a1;
  }

  if (*a2)
  {
    sub_29A214860(v18, *a2);
    if (!*a2)
    {
      goto LABEL_20;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 8 * v8;
      while (1)
      {
        v10 = *(a2[4] + 4 * v8);
        if ((v10 & 0x80000000) != 0 || *v6 <= v10)
        {
          break;
        }

        v11 = v6[4];
        sub_29A215100(v18);
        sub_29A166F2C((v19 + v9), (v11 + 8 * v10));
        ++v8;
        v9 += 8;
        if (v8 >= *a2)
        {
          if (v7)
          {
            goto LABEL_19;
          }

LABEL_20:
          a3[1] = off_2A2047A80;
          sub_29A18ECC8(a3, v18);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
        }
      }

      sub_29A215100(v18);
      v13 = v19;
      v14 = *(v19 + v9);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v13 + v9) = 0;
      ++v8;
      v7 = 1;
    }

    while (v8 < *a2);
LABEL_19:
    v16[0] = "hd/primvarSchema.cpp";
    v16[1] = "_ComputeFlattened";
    v16[2] = 69;
    v16[3] = "VtValue pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_ComputeFlattened(const VtArray<T> &, const VtIntArray &) [T = pxrInternal__aapl__pxrReserved__::TfToken]";
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v16, "Invalid primvar indices", v12);
    goto LABEL_20;
  }

  a3[1] = off_2A2047A80;

  return sub_29A18ECC8(a3, v6);
}

uint64_t *sub_29AC7F214(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC7F234(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29AC7F3AC(result);
}

void *sub_29AC7F298(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AC7F648);
  return a2;
}

void *sub_29AC7F394@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A207D2C8;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29AC7F3AC(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29AC7F414(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 9;
      sub_29AC7F48C(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29AC7F48C(uint64_t a1, float *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A18D034(&v5, a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4, a2 + 5, a2 + 6, a2 + 7, a2 + 8);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29AC7F5E0(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AC7F3AC(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC7F3AC(&v4);
  }

  return *a1;
}

void *sub_29AC7F648(float **a1, void *a2)
{
  v3 = *a1;
  *a1 += 9;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

uint64_t sub_29AC7F660(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5[0] = 0;
  v5[1] = 0;
  sub_29AC7FA04(a1);
  v6 = v5;
  sub_29AC7FA54(a1, a2, &v6);
  return a1;
}

uint64_t *sub_29AC7F6D4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC7F6F4(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29AC7F86C(result);
}

void *sub_29AC7F758(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AC7F9EC);
  return a2;
}

void *sub_29AC7F854@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A207D380;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29AC7F86C(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29AC7F984(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AC7F86C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC7F86C(&v4);
  }

  return *a1;
}

void *sub_29AC7F9EC(float **a1, void *a2)
{
  v3 = *a1;
  *a1 += 4;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29AC7FA04(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29AC7FA54(unint64_t *result, unint64_t a2, _OWORD **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29AC7FC1C(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *&result[v10] = *(v9 + v10 * 8);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = *a3;
            v12 = 2 * v3;
            do
            {
              *&v7[v12] = *v11;
              v12 += 2;
            }

            while (2 * a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29AC7FC1C(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 16 * v17;
        v19 = result;
        do
        {
          v20 = *v7;
          v7 += 2;
          *v19 = v20;
          v19 += 2;
          v18 -= 16;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = 2 * v3;
        do
        {
          *&result[v22] = *v21;
          v22 += 2;
        }

        while (2 * a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      result = sub_29AC7FC1C(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        *&result[v15 / 8] = *v16;
        v15 += 16;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29AC7FA04(result);
}

void *sub_29AC7FC1C(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfMatrix2f]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29AC7FCAC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2C64F0();
    }
  }

  return result;
}

uint64_t sub_29AC7FCF0(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_29AC8013C(a1);
  v9 = &v5;
  sub_29AC8018C(a1, a2, &v9);
  return a1;
}

uint64_t *sub_29AC7FD70(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC7FD90(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29AC7FF08(result);
}

void *sub_29AC7FDF4(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AC80124);
  return a2;
}

void *sub_29AC7FEF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A207D438;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29AC7FF08(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29AC7FF70(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 32;
      sub_29A13F60C(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29AC800BC(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AC7FF08(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC7FF08(&v4);
  }

  return *a1;
}

void *sub_29AC80124(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 += 32;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29AC8013C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29AC8018C(unint64_t *result, unint64_t a2, _OWORD **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29AC80368(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10];
                  v12 = *(v9 + v10 * 8 + 16);
                  *v11 = *(v9 + v10 * 8);
                  *(v11 + 1) = v12;
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 4 * v3;
            do
            {
              v15 = &v7[v14];
              v16 = v13[1];
              *v15 = *v13;
              *(v15 + 1) = v16;
              v14 += 4;
            }

            while (4 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v23 = a2;
      }

      else
      {
        v23 = *result;
      }

      result = sub_29AC80368(result, a2);
      v17 = result;
      if (v3)
      {
        v24 = 32 * v23;
        v25 = result;
        do
        {
          v26 = *v7;
          v27 = *(v7 + 1);
          v7 += 4;
          *v25 = v26;
          *(v25 + 1) = v27;
          v25 += 4;
          v24 -= 32;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v28 = *a3;
        v29 = 4 * v3;
        do
        {
          v30 = &result[v29];
          v31 = v28[1];
          *v30 = *v28;
          *(v30 + 1) = v31;
          v29 += 4;
        }

        while (4 * a2 != v29);
      }

      goto LABEL_31;
    }

    v18 = 32 * a2;
    if (32 * a2 / a2 == 32)
    {
      result = sub_29AC80368(result, a2);
      v17 = result;
      v19 = 0;
      v20 = *a3;
      do
      {
        v21 = &result[v19 / 8];
        v22 = v20[1];
        *v21 = *v20;
        *(v21 + 1) = v22;
        v19 += 32;
      }

      while (v18 != v19);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29AC8013C(result);
}

void *sub_29AC80368(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfInterval]");
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29AC803F8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2C6554();
    }
  }

  return result;
}

uint64_t sub_29AC8043C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = xmmword_29B4B4880;
  sub_29AC808DC(a1);
  v6 = &v5;
  sub_29AC8092C(a1, a2, &v6);
  return a1;
}

uint64_t *sub_29AC804B8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC804D8(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29AC80650(result);
}

void *sub_29AC8053C(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AC808C4);
  return a2;
}

void *sub_29AC80638@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A207D4F0;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29AC80650(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29AC806B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 4;
      sub_29AC80730(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29AC80730(uint64_t a1, int *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29AC807B0(&v5, a2, a2 + 2);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29AC807B0(uint64_t a1, int *a2, int *a3)
{
  v3 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  if (*(a1 + 8))
  {
    v3 += (*a1 + v3 + (*a1 + v3) * (*a1 + v3)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v3;
  return sub_29AC80808(a1, a3);
}

uint64_t sub_29AC80808(uint64_t result, int *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  if (*(result + 8))
  {
    v2 += (*result + v2 + (*result + v2) * (*result + v2)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_29AC8085C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AC80650(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC80650(&v4);
  }

  return *a1;
}

void *sub_29AC808C4(void **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29AC808DC(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29AC8092C(unint64_t *result, unint64_t a2, _OWORD **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29AC80AF4(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *&result[v10] = *(v9 + v10 * 8);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = *a3;
            v12 = 2 * v3;
            do
            {
              *&v7[v12] = *v11;
              v12 += 2;
            }

            while (2 * a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29AC80AF4(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 16 * v17;
        v19 = result;
        do
        {
          v20 = *v7;
          v7 += 2;
          *v19 = v20;
          v19 += 2;
          v18 -= 16;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = 2 * v3;
        do
        {
          *&result[v22] = *v21;
          v22 += 2;
        }

        while (2 * a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      result = sub_29AC80AF4(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        *&result[v15 / 8] = *v16;
        v15 += 16;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29AC808DC(result);
}

void *sub_29AC80AF4(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfRect2i]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29AC80B84(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2C65B8();
    }
  }

  return result;
}

uint64_t sub_29AC80BC8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AC80FBC(a1);
  v6 = &v5;
  sub_29AC8100C(a1, a2, &v6);
  return a1;
}

uint64_t *sub_29AC80C38(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC80C58(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29AC80DD0(result);
}

void *sub_29AC80CBC(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AC80FA4);
  return a2;
}

void *sub_29AC80DB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A207D5A8;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29AC80DD0(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29AC80E38(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 4;
      sub_29AC80EB0(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29AC80EB0(uint64_t a1, double *a2)
{
  v5 = *a2;
  v6 = 0;
  v7 = 0;
  result = sub_29A18DBF4(&v6, &v5, a2 + 1);
  v4 = bswap64(0x9E3779B97F4A7C55 * v6);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29AC80F3C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AC80DD0(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC80DD0(&v4);
  }

  return *a1;
}

void *sub_29AC80FA4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 += 32;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29AC80FBC(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29AC8100C(unint64_t *result, unint64_t a2, _OWORD **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29AC811E8(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10];
                  v12 = *(v9 + v10 * 8 + 16);
                  *v11 = *(v9 + v10 * 8);
                  *(v11 + 1) = v12;
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 4 * v3;
            do
            {
              v15 = &v7[v14];
              v16 = v13[1];
              *v15 = *v13;
              *(v15 + 1) = v16;
              v14 += 4;
            }

            while (4 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v23 = a2;
      }

      else
      {
        v23 = *result;
      }

      result = sub_29AC811E8(result, a2);
      v17 = result;
      if (v3)
      {
        v24 = 32 * v23;
        v25 = result;
        do
        {
          v26 = *v7;
          v27 = *(v7 + 1);
          v7 += 4;
          *v25 = v26;
          *(v25 + 1) = v27;
          v25 += 4;
          v24 -= 32;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v28 = *a3;
        v29 = 4 * v3;
        do
        {
          v30 = &result[v29];
          v31 = v28[1];
          *v30 = *v28;
          *(v30 + 1) = v31;
          v29 += 4;
        }

        while (4 * a2 != v29);
      }

      goto LABEL_31;
    }

    v18 = 32 * a2;
    if (32 * a2 / a2 == 32)
    {
      result = sub_29AC811E8(result, a2);
      v17 = result;
      v19 = 0;
      v20 = *a3;
      do
      {
        v21 = &result[v19 / 8];
        v22 = v20[1];
        *v21 = *v20;
        *(v21 + 1) = v22;
        v19 += 32;
      }

      while (v18 != v19);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29AC80FBC(result);
}

void *sub_29AC811E8(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfQuaternion]");
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29AC81278(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2C661C();
    }
  }

  return result;
}

uint64_t sub_29AC812BC(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AC817EC(a1);
  v6 = &v5;
  sub_29AC8183C(a1, a2, &v6);
  return a1;
}

uint64_t *sub_29AC8132C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC8134C(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29AC814C4(result);
}

void *sub_29AC813B0(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AC817D4);
  return a2;
}

void *sub_29AC814AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A207D660;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29AC814C4(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuath>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29AC8152C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 8;
      sub_29AC815A4(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29AC815A4(uint64_t a1, unsigned __int16 *a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29AC81624(&v5, a2, a2 + 4);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29AC81624(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = a2[3];
  v9 = 1;
  v8 = v5;
  sub_29A18D874(&v8, a2);
  v6 = bswap64(0x9E3779B97F4A7C55 * v8);
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_29A19A9E4(a1, a3);
}

uint64_t sub_29AC8176C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AC814C4(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC814C4(&v4);
  }

  return *a1;
}

void *sub_29AC817D4(uint64_t **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29AC817EC(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuath>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29AC8183C(unint64_t *result, unint64_t a2, _OWORD **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29AC81A04(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *&result[v10] = *(v9 + v10 * 8);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = *a3;
            v12 = 2 * v3;
            do
            {
              *&v7[v12] = *v11;
              v12 += 2;
            }

            while (2 * a2 != v12);
          }

          v13 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = *result;
      }

      result = sub_29AC81A04(result, a2);
      v13 = result;
      if (v3)
      {
        v18 = 16 * v17;
        v19 = result;
        do
        {
          v20 = *v7;
          v7 += 2;
          *v19 = v20;
          v19 += 2;
          v18 -= 16;
        }

        while (v18);
      }

      if (v3 < a2)
      {
        v21 = *a3;
        v22 = 2 * v3;
        do
        {
          *&result[v22] = *v21;
          v22 += 2;
        }

        while (2 * a2 != v22);
      }

      goto LABEL_31;
    }

    v14 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      result = sub_29AC81A04(result, a2);
      v13 = result;
      v15 = 0;
      v16 = *a3;
      do
      {
        *&result[v15 / 8] = *v16;
        v15 += 16;
      }

      while (v14 != v15);
LABEL_31:
      if (v13 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuath>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29AC817EC(result);
}

void *sub_29AC81A04(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuath>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfDualQuath]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29AC81A94(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2C6680();
    }
  }

  return result;
}

uint64_t sub_29AC81AD8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AC8200C(a1);
  v6 = &v5;
  sub_29AC8205C(a1, a2, &v6);
  return a1;
}

uint64_t *sub_29AC81B48(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC81B68(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29AC81CE0(result);
}

void *sub_29AC81BCC(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AC81FF4);
  return a2;
}

void *sub_29AC81CC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A207D718;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29AC81CE0(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29AC81D48(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 32;
      sub_29AC81DC0(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29AC81DC0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29AC81E40(&v5, a2, a2 + 16);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29AC81E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 12);
  v8 = 0;
  v9 = 0;
  sub_29A18D5A0(&v8, &v7, a2);
  v5 = bswap64(0x9E3779B97F4A7C55 * v8);
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29A199EEC(a1, a3);
}

uint64_t sub_29AC81F8C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AC81CE0(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC81CE0(&v4);
  }

  return *a1;
}

void *sub_29AC81FF4(int8x16_t **a1, void *a2)
{
  v3 = *a1;
  *a1 += 2;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29AC8200C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29AC8205C(unint64_t *result, unint64_t a2, _OWORD **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29AC82238(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10];
                  v12 = *(v9 + v10 * 8 + 16);
                  *v11 = *(v9 + v10 * 8);
                  *(v11 + 1) = v12;
                  v10 += 4;
                }

                while (4 * v3 != v10);
              }
            }

            v13 = *a3;
            v14 = 4 * v3;
            do
            {
              v15 = &v7[v14];
              v16 = v13[1];
              *v15 = *v13;
              *(v15 + 1) = v16;
              v14 += 4;
            }

            while (4 * a2 != v14);
          }

          v17 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v23 = a2;
      }

      else
      {
        v23 = *result;
      }

      result = sub_29AC82238(result, a2);
      v17 = result;
      if (v3)
      {
        v24 = 32 * v23;
        v25 = result;
        do
        {
          v26 = *v7;
          v27 = *(v7 + 1);
          v7 += 4;
          *v25 = v26;
          *(v25 + 1) = v27;
          v25 += 4;
          v24 -= 32;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v28 = *a3;
        v29 = 4 * v3;
        do
        {
          v30 = &result[v29];
          v31 = v28[1];
          *v30 = *v28;
          *(v30 + 1) = v31;
          v29 += 4;
        }

        while (4 * a2 != v29);
      }

      goto LABEL_31;
    }

    v18 = 32 * a2;
    if (32 * a2 / a2 == 32)
    {
      result = sub_29AC82238(result, a2);
      v17 = result;
      v19 = 0;
      v20 = *a3;
      do
      {
        v21 = &result[v19 / 8];
        v22 = v20[1];
        *v21 = *v20;
        *(v21 + 1) = v22;
        v19 += 32;
      }

      while (v18 != v19);
LABEL_31:
      if (v17 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29AC8200C(result);
}

void *sub_29AC82238(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfDualQuatf]");
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29AC822C8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2C66E4();
    }
  }

  return result;
}

uint64_t sub_29AC8230C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AC82840(a1);
  v6 = &v5;
  sub_29AC82890(a1, a2, &v6);
  return a1;
}

uint64_t *sub_29AC8237C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC8239C(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29AC82514(result);
}

void *sub_29AC82400(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AC82828);
  return a2;
}

void *sub_29AC824FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A207D7D0;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29AC82514(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::_DecRef();
    }
  }

  return result;
}

unint64_t sub_29AC8257C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v8 = 1;
  v7 = v2;
  if (v2)
  {
    v3 = a2[4];
    do
    {
      --v2;
      v4 = v3 + 64;
      sub_29AC825F4(&v7, v3);
      v3 = v4;
    }

    while (v2);
    v5 = 0x9E3779B97F4A7C55 * v7;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_29AC825F4(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29AC82674(&v5, a2, a2 + 32);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29AC82674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 24);
  v8 = 0;
  v9 = 0;
  sub_29A18DBF4(&v8, &v7, a2);
  v5 = bswap64(0x9E3779B97F4A7C55 * v8);
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29A19B540(a1, a3);
}

uint64_t sub_29AC827C0(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AC82514(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC82514(&v4);
  }

  return *a1;
}

void *sub_29AC82828(__int128 **a1, void *a2)
{
  v3 = *a1;
  *a1 += 4;
  return pxrInternal__aapl__pxrReserved__::operator<<(a2, v3);
}

void *sub_29AC82840(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29AC82890(unint64_t *result, unint64_t a2, __int128 **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29AC82A98(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = &result[v10 / 8];
                  v12 = *(v9 + v10);
                  v13 = *(v9 + v10 + 16);
                  v14 = *(v9 + v10 + 48);
                  *(v11 + 2) = *(v9 + v10 + 32);
                  *(v11 + 3) = v14;
                  *v11 = v12;
                  *(v11 + 1) = v13;
                  v10 += 64;
                }

                while (v3 << 6 != v10);
              }
            }

            v15 = *a3;
            v16 = v3 << 6;
            do
            {
              v17 = (v7 + v16);
              v18 = *v15;
              v19 = v15[1];
              v20 = v15[3];
              v17[2] = v15[2];
              v17[3] = v20;
              *v17 = v18;
              v17[1] = v19;
              v16 += 64;
            }

            while (a2 << 6 != v16);
          }

          v21 = v7;
          goto LABEL_31;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *result;
      }

      result = sub_29AC82A98(result, a2);
      v21 = result;
      if (v3)
      {
        v30 = v29 << 6;
        v31 = result;
        do
        {
          v32 = *v7;
          v33 = *(v7 + 1);
          v34 = *(v7 + 3);
          *(v31 + 2) = *(v7 + 2);
          *(v31 + 3) = v34;
          *v31 = v32;
          *(v31 + 1) = v33;
          v31 += 8;
          v7 += 8;
          v30 -= 64;
        }

        while (v30);
      }

      if (v3 < a2)
      {
        v35 = *a3;
        v36 = v3 << 6;
        do
        {
          v37 = (result + v36);
          v38 = *v35;
          v39 = v35[1];
          v40 = v35[3];
          v37[2] = v35[2];
          v37[3] = v40;
          *v37 = v38;
          v37[1] = v39;
          v36 += 64;
        }

        while (a2 << 6 != v36);
      }

      goto LABEL_31;
    }

    v22 = a2 << 6;
    if ((a2 << 6) / a2 == 64)
    {
      result = sub_29AC82A98(result, a2);
      v21 = result;
      v23 = 0;
      v24 = *a3;
      do
      {
        v25 = &result[v23 / 8];
        v26 = *v24;
        v27 = v24[1];
        v28 = v24[3];
        *(v25 + 2) = v24[2];
        *(v25 + 3) = v28;
        *v25 = v26;
        *(v25 + 1) = v27;
        v23 += 64;
      }

      while (v22 != v23);
LABEL_31:
      if (v21 != v5[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::_DecRef();
      }

      *v5 = a2;
      return result;
    }
  }

  return sub_29AC82840(result);
}

void *sub_29AC82A98(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfDualQuatd]");
  if (a2 >> 57)
  {
    v3 = -1;
  }

  else
  {
    v3 = (a2 << 6) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29AC82B28(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2C6748();
    }
  }

  return result;
}

uint64_t sub_29AC82B6C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29AC82E8C(a1);
  v6 = &v5;
  sub_29AC82EDC(a1, a2, &v6);
  return a1;
}

uint64_t *sub_29AC82BE0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC82C00(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29AC82DA8(result);
}

unint64_t sub_29AC82C18(char ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4], v2);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29AC82C94(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AC82E78);
  return a2;
}

void *sub_29AC82D90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A207D888;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29AC82DA8(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29AC82E10(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AC82DA8(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC82DA8(&v4);
  }

  return *a1;
}

void *sub_29AC82E8C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29AC82EDC(unint64_t *result, unint64_t a2, unsigned __int8 **a3)
{
  v3 = *result;
  if (a2 == *result)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (a2 > v3)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_29AC83060(result, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  *(v10 + i) = *(v9 + i);
                }
              }
            }

            result = memset(v7 + v3, **a3, a2 - v3);
          }

          v12 = v7;
          goto LABEL_27;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *result;
      }

      result = sub_29AC83060(result, a2);
      v12 = result;
      if (v3)
      {
        v17 = result;
        do
        {
          v18 = *v7;
          v7 = (v7 + 1);
          *v17 = v18;
          v17 = (v17 + 1);
          --v16;
        }

        while (v16);
      }

      v15 = a2 - v3;
      if (a2 <= v3)
      {
        goto LABEL_27;
      }

      v14 = **a3;
      v13 = (result + v3);
    }

    else
    {
      v13 = sub_29AC83060(result, a2);
      v12 = v13;
      v14 = **a3;
      v15 = a2;
    }

    result = memset(v13, v14, v15);
LABEL_27:
    if (v12 != v5[4])
    {
      pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
    }

    *v5 = a2;
    return result;
  }

  return sub_29AC82E8C(result);
}

void *sub_29AC83060(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<char>::_AllocateNew(size_t) [T = char]");
  if (a2 > 0x7FFFFFFFFFFFFFEELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29AC830F0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2C67B0();
    }
  }

  return result;
}

uint64_t sub_29AC83134(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29AC8345C(a1);
  v6 = &v5;
  sub_29AC834AC(a1, a2, &v6);
  return a1;
}

uint64_t *sub_29AC831A8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC831C8(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29AC83374(result);
}

unint64_t sub_29AC831E0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4], (2 * v2));
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29AC83260(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29AC83444);
  return a2;
}

void *sub_29AC8335C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A207D940;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29AC83374(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29AC833DC(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29AC83374(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AC83374(&v4);
  }

  return *a1;
}

void *sub_29AC8345C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

void *sub_29AC834AC(void *result, unint64_t a2, __int16 **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v12 = result[4];
          }

          else
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29AC839B0(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  *(result + v10) = *(v9 + v10);
                  v10 += 2;
                }

                while (2 * v3 != v10);
              }
            }

            v11 = 0;
            v12 = v7;
            v13 = **a3;
            v14 = (2 * a2 - 2 * v3 - 2) >> 1;
            v15 = vdupq_n_s64(v14);
            v16 = (v14 & 0x7FFFFFFFFFFFFFF8) + 8;
            v17 = v7 + v3 + 4;
            do
            {
              v18 = vdupq_n_s64(v11);
              v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B430070)));
              if (vuzp1_s8(vuzp1_s16(v19, *v15.i8), *v15.i8).u8[0])
              {
                *(v17 - 4) = v13;
              }

              if (vuzp1_s8(vuzp1_s16(v19, *&v15), *&v15).i8[1])
              {
                *(v17 - 3) = v13;
              }

              if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433E10)))), *&v15).i8[2])
              {
                *(v17 - 2) = v13;
                *(v17 - 1) = v13;
              }

              v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433E00)));
              if (vuzp1_s8(*&v15, vuzp1_s16(v20, *&v15)).i32[1])
              {
                *v17 = v13;
              }

              if (vuzp1_s8(*&v15, vuzp1_s16(v20, *&v15)).i8[5])
              {
                v17[1] = v13;
              }

              if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_29B433DF0))))).i8[6])
              {
                v17[2] = v13;
                v17[3] = v13;
              }

              v11 += 8;
              v17 += 8;
            }

            while (v16 != v11);
          }

LABEL_69:
          if (v12 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v30 = a2;
      }

      else
      {
        v30 = *result;
      }

      result = sub_29AC839B0(result, a2);
      v12 = result;
      if (v3)
      {
        v31 = 2 * v30;
        v32 = result;
        do
        {
          v33 = *v7;
          v7 = (v7 + 2);
          *v32++ = v33;
          v31 -= 2;
        }

        while (v31);
      }

      if (v3 < a2)
      {
        v34 = 0;
        v35 = **a3;
        v36 = (2 * a2 - 2 * v3 - 2) >> 1;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 & 0x7FFFFFFFFFFFFFF8) + 8;
        v39 = result + v3 + 4;
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B430070)));
          if (vuzp1_s8(vuzp1_s16(v41, 6), 6).u8[0])
          {
            *(v39 - 4) = v35;
          }

          if (vuzp1_s8(vuzp1_s16(v41, 6), 6).i8[1])
          {
            *(v39 - 3) = v35;
          }

          if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B433E10)))), 6).i8[2])
          {
            *(v39 - 2) = v35;
            *(v39 - 1) = v35;
          }

          v42 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B433E00)));
          if (vuzp1_s8(6, vuzp1_s16(v42, 6)).i32[1])
          {
            *v39 = v35;
          }

          if (vuzp1_s8(6, vuzp1_s16(v42, 6)).i8[5])
          {
            v39[1] = v35;
          }

          if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_29B433DF0))))).i8[6])
          {
            v39[2] = v35;
            v39[3] = v35;
          }

          v34 += 8;
          v39 += 8;
        }

        while (v38 != v34);
      }

      goto LABEL_69;
    }

    if (2 * a2 / a2 == 2)
    {
      result = sub_29AC839B0(result, a2);
      v12 = result;
      v21 = 0;
      v22 = **a3;
      v23 = (2 * a2 - 2) >> 1;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 & 0x7FFFFFFFFFFFFFF8) + 8;
      v26 = result + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B430070)));
        if (vuzp1_s8(vuzp1_s16(v28, *v24.i8), *v24.i8).u8[0])
        {
          *(v26 - 4) = v22;
        }

        if (vuzp1_s8(vuzp1_s16(v28, *&v24), *&v24).i8[1])
        {
          *(v26 - 3) = v22;
        }

        if (vuzp1_s8(vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433E10)))), *&v24).i8[2])
        {
          *(v26 - 2) = v22;
          *(v26 - 1) = v22;
        }

        v29 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433E00)));
        if (vuzp1_s8(*&v24, vuzp1_s16(v29, *&v24)).i32[1])
        {
          *v26 = v22;
        }

        if (vuzp1_s8(*&v24, vuzp1_s16(v29, *&v24)).i8[5])
        {
          v26[1] = v22;
        }

        if (vuzp1_s8(*&v24, vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433DF0))))).i8[6])
        {
          v26[2] = v22;
          v26[3] = v22;
        }

        v21 += 8;
        v26 += 8;
      }

      while (v25 != v21);
      goto LABEL_69;
    }
  }

  return sub_29AC8345C(result);
}

void *sub_29AC839B0(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<short>::_AllocateNew(size_t) [T = short]");
  if (a2 > 0x3FFFFFFFFFFFFFF7)
  {
    v3 = -1;
  }

  else
  {
    v3 = 2 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29AC83A44(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2C6814();
    }
  }

  return result;
}

void sub_29AC83A8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AC83AB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AC83AE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207DA58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29AC83B30()
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 48);
  *(v0 + 32) = *(v1 + 32);
  *(v0 + 48) = v4;
  *v0 = result;
  *(v0 + 16) = v3;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens_StaticTokenType::~HdPrimvarsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens_StaticTokenType *this)
{
  v5 = (this + 32);
  sub_29A124AB0(&v5);
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 1);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens_StaticTokenType::HdPrimvarsSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens_StaticTokenType *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "primvars", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "points", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "normals", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "widths", 0);
  v3 = (this + 32);
  v4 = *this;
  v15 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v5;
    }
  }

  v6 = *(this + 1);
  v16 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v7;
    }
  }

  v8 = *(this + 2);
  v17 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v9;
    }
  }

  v10 = *(this + 3);
  v18 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v11;
    }
  }

  *v3 = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  sub_29A12EF7C(v3, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v13 = *(&v15 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC83D88(_Unwind_Exception *a1)
{
  v3 = 24;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[3];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvarNames@<X0>(pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema *this@<X0>, void *a2@<X8>)
{
  result = *this;
  if (result)
  {
    return (*(*result + 16))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvar(pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema *this@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  v8 = *a2;
  if ((*a2 & 7) != 0)
  {
    v4 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v4;
    }
  }

  sub_29ABC2F3C(this, &v9);
  v6 = v9;
  v5 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v5);
    v7 = v10;
    *a3 = v6;
    a3[1] = v5;
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    *a3 = v9;
    a3[1] = 0;
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

double pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::BuildRetained@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens))
    {
      sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  if (!result)
  {
    return sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AE70))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174AE38, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174AE38, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174AE70);
  }

  return &unk_2A174AE38;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPointsLocator(pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AEB0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174AEB0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174AE38, (v3 + 8), dword_2A174AE78);
      __cxa_atexit(sub_29ABC33B4, dword_2A174AE78, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AEB0);
    }
  }

  return dword_2A174AE78;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetNormalsLocator(pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AEF0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174AEF0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174AE38, (v3 + 16), dword_2A174AEB8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174AEB8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AEF0);
    }
  }

  return dword_2A174AEB8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetWidthsLocator(pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AF30, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174AF30);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174AE38, (v3 + 24), dword_2A174AEF8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174AEF8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AF30);
    }
  }

  return dword_2A174AEF8;
}

void pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType::~HdPurposeSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType::HdPurposeSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "purpose", 0);
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

void pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetPurpose(pxrInternal__aapl__pxrReserved__::HdPurposeSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  }

  v6 = *v4;
  if ((*v4 & 7) != 0)
  {
    v5 = (*v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v5;
    }
  }

  sub_29ABC4C48(this, a2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdPurposeSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
    }

    sub_29A166F2C(v11, v4);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC84710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdPurposeSchema::Builder::SetPurpose(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens))
    {
      sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdPurposeSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  if (!result)
  {
    return sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdPurposeSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdPurposeSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AF70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AF70))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174AF38, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174AF38, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174AF70);
  }

  return &unk_2A174AF38;
}

pxrInternal__aapl__pxrReserved__::HdBprim *pxrInternal__aapl__pxrReserved__::HdRenderBuffer::HdRenderBuffer(pxrInternal__aapl__pxrReserved__::HdRenderBuffer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdBprim::HdBprim(this, a2);
  *result = &unk_2A207DA80;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderBuffer::Sync(pxrInternal__aapl__pxrReserved__::HdRenderBuffer *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, unsigned int *a4)
{
  v5 = *a4;
  if ((*a4 & 1) == 0)
  {
    goto LABEL_6;
  }

  (*(*a2 + 312))(&v10, a2, this + 8, a3);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x8000000000000000) == 0 && (v11 & 0x80000000) == 0)
  {
    (*(*this + 40))(this, &v10, v12, v13);
    v5 = *a4;
LABEL_6:
    *a4 = v5 & 0xFFFFFFFE;
    return;
  }

  v8[0] = "hd/renderBuffer.cpp";
  v8[1] = "Sync";
  v8[2] = 40;
  v8[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdRenderBuffer::Sync(HdSceneDelegate *, HdRenderParam *, HdDirtyBits *)";
  v9 = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 8));
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Bad dimensions for render buffer %s", Text);
}

void pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens_StaticTokenType::~HdRenderBufferSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens_StaticTokenType *this)
{
  v5 = (this + 32);
  sub_29A124AB0(&v5);
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 1);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens_StaticTokenType::HdRenderBufferSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens_StaticTokenType *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "renderBuffer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "dimensions", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "format", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "multiSampled", 0);
  v3 = (this + 32);
  v4 = *this;
  v15 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v5;
    }
  }

  v6 = *(this + 1);
  v16 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v7;
    }
  }

  v8 = *(this + 2);
  v17 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v9;
    }
  }

  v10 = *(this + 3);
  v18 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v11;
    }
  }

  *v3 = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  sub_29A12EF7C(v3, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v13 = *(&v15 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC84D20(_Unwind_Exception *a1)
{
  v3 = 24;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[3];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetDimensions(pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  }

  v5 = *(v4 + 1);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC84E70(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC84E70(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC85890(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetFormat(pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  }

  v5 = *(v4 + 2);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29AC84F9C(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC84F9C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29AC85920(&v4, a2);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetMultiSampled(pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  }

  v5 = *(v4 + 3);
  v7 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v7 = v6;
    }
  }

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v33[2] = *MEMORY[0x29EDCA608];
  v7 = &v30;
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v8 = &v32;
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  if (*a1)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    if (!v10)
    {
      v10 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    }

    v7 = v31;
    v8 = v33;
    sub_29A166F2C(&v32, v10 + 1);
    v12 = *a1;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(&v30 + 1);
    *&v30 = v12;
    *(&v30 + 1) = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (*a2)
  {
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    if (!v15)
    {
      v15 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    }

    sub_29A166F2C(v8, v15 + 2);
    ++v14;
    v17 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(v7 + 1);
    *v7 = v17;
    *(v7 + 1) = v16;
    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  if (*a3)
  {
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    }

    sub_29A166F2C(&v33[v14 - 1], v19 + 3);
    v20 = v14 + 1;
    v21 = &v31[v14 - 1];
    v23 = *a3;
    v22 = a3[1];
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = v21[1];
    *v21 = v23;
    v21[1] = v22;
    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }

  else
  {
    v20 = v14;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v20, &v32, &v30, &v29);
  *a4 = v29;
  for (i = 40; i != -8; i -= 16)
  {
    v26 = *(&v31[-1] + i);
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  for (j = 2; j != -1; --j)
  {
    v28 = v33[j - 1];
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC852F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v18 = 40;
  while (1)
  {
    v19 = *(&a11 + v18);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    v18 -= 16;
    if (v18 == -8)
    {
      v20 = 16;
      while (1)
      {
        v21 = *(&a17 + v20);
        if ((v21 & 7) != 0)
        {
          atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v20 -= 8;
        if (v20 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::Builder::SetDimensions(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::Builder::SetFormat(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::Builder::SetMultiSampled(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens))
    {
      sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    }

    (*(*v3 + 24))(&v8, v3);
    sub_29ABC3244(&v8, &v10);
    v6 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v5);
      v7 = v11;
      *a2 = v6;
      a2[1] = v5;
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }

    else
    {
      *a2 = v10;
      a2[1] = 0;
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    *a2 = 0;
    a2[1] = 0;
  }
}

pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  if (!result)
  {
    return sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AFB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AFB0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174AF78, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174AF78, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174AFB0);
  }

  return &unk_2A174AF78;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetDimensionsLocator(pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AFF0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174AFF0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174AF78, (v3 + 8), dword_2A174AFB8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174AFB8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AFF0);
    }
  }

  return dword_2A174AFB8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetFormatLocator(pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B030, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B030);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174AF78, (v3 + 16), dword_2A174AFF8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174AFF8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B030);
    }
  }

  return dword_2A174AFF8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetMultiSampledLocator(pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174B070, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174B070);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderBufferSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABEDF98(&pxrInternal__aapl__pxrReserved__::HdRenderBufferSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174AF78, (v3 + 24), dword_2A174B038);
      __cxa_atexit(sub_29ABC33B4, dword_2A174B038, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174B070);
    }
  }

  return dword_2A174B038;
}

void *sub_29AC85890@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2079678, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *sub_29AC85920@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A2079758, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens_StaticTokenType::~HdRenderCapabilitiesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens_StaticTokenType::HdRenderCapabilitiesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "motionBlur", 0);
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

void pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchema::GetMotionBlur(pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC85D84(&pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens);
  }

  v6 = *v4;
  if ((*v4 & 7) != 0)
  {
    v5 = (*v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v5;
    }
  }

  sub_29ABCB628(this, a2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchema::BuildRetained(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (*a1)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens);
    if (!v4)
    {
      v4 = sub_29AC85D84(&pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens);
    }

    sub_29A166F2C(v11, v4);
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6;
    v10 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v7, v11, &v9, &v8);
  *a2 = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC85D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchema::Builder::SetMotionBlur(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

unint64_t sub_29AC85D84(atomic_ullong *a1)
{
  v2 = sub_29AC85E04();
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

pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens_StaticTokenType *sub_29AC85E04()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::HdRenderCapabilitiesSchemaTokens_StaticTokenType::HdRenderCapabilitiesSchemaTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdRenderDelegate::~HdRenderDelegate(void **this)
{
  *this = &unk_2A207DB38;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  sub_29AC1E22C((this + 1));
}

double pxrInternal__aapl__pxrReserved__::HdRenderDelegate::HdRenderDelegate(pxrInternal__aapl__pxrReserved__::HdRenderDelegate *this)
{
  *this = &unk_2A207DB38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 12) = 1;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  return result;
}

void sub_29AC86118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  if (*(v11 + 79) < 0)
  {
    operator delete(*v12);
  }

  sub_29AC1E22C(v10);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdRenderDelegate::GetMaterialBindingPurpose@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!result)
  {
    result = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v4 = *(result + 63);
  *a1 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v5;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdRenderDelegate::GetShaderSourceTypes(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}