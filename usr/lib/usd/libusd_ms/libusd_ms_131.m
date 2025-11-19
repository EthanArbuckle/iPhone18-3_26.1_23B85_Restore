uint64_t sub_29AC0B498(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a4 >= 2)
  {
    v7 = result;
    sub_29ABD30AC(v13, result);
    v8 = sub_29AC0B5FC(v7, a3, a4);
    v9 = v8;
    if (v8 == (a2 - 56))
    {
      if (v8 != v13)
      {
        if (v15 >= 7)
        {
          v12 = v13[0];
        }

        else
        {
          v12 = v13;
        }

        sub_29ABDFEA4(v8, v12, &v12[8 * v14]);
      }
    }

    else
    {
      if (*(a2 - 4) >= 7u)
      {
        v10 = *(a2 - 56);
      }

      else
      {
        v10 = (a2 - 56);
      }

      sub_29ABDFEA4(v8, v10, &v10[8 * *(a2 - 8)]);
      if ((a2 - 56) != v13)
      {
        if (v15 >= 7)
        {
          v11 = v13[0];
        }

        else
        {
          v11 = v13;
        }

        sub_29ABDFEA4(a2 - 56, v11, &v11[8 * v14]);
      }

      sub_29AC0B6C0(v7, (v9 + 7), a3, 0x6DB6DB6DB6DB6DB7 * ((v9 - v7 + 56) >> 3));
    }

    return sub_29ABC3488(v13);
  }

  return result;
}

uint64_t sub_29AC0B5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 56 * v5;
    v8 = v7 + 56;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = v7 + 112;
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<((v7 + 56), (v7 + 112)))
      {
        v8 = v11;
        v5 = v10;
      }
    }

    if (a1 != v8)
    {
      if (*(v8 + 52) >= 7u)
      {
        v12 = *v8;
      }

      else
      {
        v12 = v8;
      }

      sub_29ABDFEA4(a1, v12, &v12[8 * *(v8 + 48)]);
    }

    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t sub_29AC0B6C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a4 >= 2)
  {
    v4 = result;
    v5 = (a4 - 2) >> 1;
    v6 = result + 56 * v5;
    v7 = a2 - 56;
    result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v6, (a2 - 56));
    if (result)
    {
      sub_29ABD30AC(v11, v7);
      do
      {
        v8 = v6;
        if (v7 != v6)
        {
          if (*(v6 + 52) >= 7u)
          {
            v9 = *v6;
          }

          else
          {
            v9 = v6;
          }

          sub_29ABDFEA4(v7, v9, &v9[8 * *(v6 + 48)]);
        }

        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = v4 + 56 * v5;
        v7 = v8;
      }

      while ((pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator<(v6, v11) & 1) != 0);
      if (v8 != v11)
      {
        if (v13 >= 7)
        {
          v10 = v11[0];
        }

        else
        {
          v10 = v11;
        }

        sub_29ABDFEA4(v8, v10, &v10[8 * v12]);
      }

      return sub_29ABC3488(v11);
    }
  }

  return result;
}

_DWORD *sub_29AC0B7F8(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  a1[113] = 8;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 3);
  if (v6 <= 8)
  {
    a1[112] = v6;
    v7 = a1;
  }

  else
  {
    *a1 = malloc(a3 - a2);
    a1[113] = v6;
    a1[112] = v6;
    v7 = a1;
    if (v6 >= 9)
    {
      v7 = *a1;
    }
  }

  sub_29ABD300C(a2, a3, v7);
  return a1;
}

uint64_t sub_29AC0B890(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 452);
  v7 = a1;
  if (v6 >= 9)
  {
    v7 = *a1;
  }

  v8 = *(a1 + 448);
  if ((v7 + 56 * v8) == a2)
  {
    sub_29AC0BB18(a1, a3);
    v13 = a1;
    if (*(a1 + 452) >= 9u)
    {
      v13 = *a1;
    }

    return v13 + 56 * *(a1 + 448) - 56;
  }

  else
  {
    if (v8 == v6)
    {
      v9 = malloc(56 * (v6 + (v6 >> 1) + 1));
      v10 = a1;
      if (v6 >= 9)
      {
        v10 = *a1;
      }

      v11 = sub_29ABDE7B4(v10, v4, v9);
      v12 = sub_29ABD30AC(v11, a3);
      sub_29ABDE7B4(v4, v10 + 56 * *(a1 + 448), v12 + 14);
      pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_Destruct();
    }

    v14 = a1;
    if (v6 >= 9)
    {
      v14 = *a1;
    }

    v15 = (v14 + 56 * v8);
    sub_29ABD30AC(v15, (v15 - 56));
    sub_29AC0BA20(&v18, v4, v15 - 56, v15);
    v16 = sub_29ABC3488(v4);
    sub_29ABD30AC(v16, a3);
    ++*(a1 + 448);
  }

  return v4;
}

char *sub_29AC0BA20(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = a4;
      v9 = v7 - 56;
      a4 -= 56;
      if (v7 != v8)
      {
        v10 = *(v7 - 7);
        v12 = v7 - 8;
        v11 = *(v7 - 2);
        if (*(v12 + 1) >= 7u)
        {
          v13 = v10;
        }

        else
        {
          v13 = v9;
        }

        sub_29ABDFEA4(a4, v13, &v13[8 * v11]);
      }

      v7 = v9;
    }

    while (v9 != a2);
  }

  return a3;
}

uint64_t sub_29AC0BAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        if (*(v5 + 52) >= 7u)
        {
          v7 = *v5;
        }

        else
        {
          v7 = v5;
        }

        sub_29ABDFEA4(a4, v7, &v7[8 * *(v5 + 48)]);
      }

      v5 += 56;
      a4 += 56;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

_DWORD *sub_29AC0BB18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 448);
  v4 = *(a1 + 452);
  if (v3 == v4)
  {
    sub_29AC0BB90(a1, v3 + (v3 >> 1) + 1);
  }

  v5 = a1;
  if (v4 >= 9)
  {
    v5 = *a1;
  }

  result = sub_29ABD30AC((v5 + 56 * *(a1 + 448)), a2);
  ++*(a1 + 448);
  return result;
}

void sub_29AC0BB90(uint64_t a1, uint64_t a2)
{
  v3 = malloc(56 * a2);
  v4 = a1;
  if (*(a1 + 452) >= 9u)
  {
    v4 = *a1;
  }

  sub_29ABDE7B4(v4, v4 + 56 * *(a1 + 448), v3);
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_Destruct();
}

char *sub_29AC0BCA8(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = a4;
      v9 = v7 - 56;
      a4 -= 56;
      if (v8 != v7)
      {
        v10 = *(v7 - 7);
        v12 = v7 - 8;
        v11 = *(v7 - 2);
        if (*(v12 + 1) >= 7u)
        {
          v13 = v10;
        }

        else
        {
          v13 = v9;
        }

        sub_29ABDFEA4(a4, v13, &v13[8 * v11]);
      }

      v7 = v9;
    }

    while (v9 != a2);
  }

  return a3;
}

uint64_t sub_29AC0BD28(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  if (result != a2)
  {
    do
    {
      sub_29ABDF12C(&v5, &v4);
      v4 += 56;
      v5 += 56;
    }

    while (v5 != a2);
    return a2;
  }

  return result;
}

uint64_t sub_29AC0BD88(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(sub_29A424A8C, v3, a3);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetMaterialConfigKeys(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::GetConfig((this + 16), &v3);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v3))
  {
    pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v3, a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29AC0BE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetMaterialConfigValue(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::GetConfig((this + 16), &v9);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v9))
  {
    sub_29AC0BF38(&v9, a2, &v5);
    v6 = v5;
    v5 = 0uLL;
    sub_29ABE3F04(&v6, &v7);
    if (*(&v6 + 1))
    {
      sub_29A014BEC(*(&v6 + 1));
    }

    if (*(&v5 + 1))
    {
      sub_29A014BEC(*(&v5 + 1));
    }

    if (v7)
    {
      (*(*v7 + 16))(v7, 0.0);
    }

    else
    {
      *(a3 + 8) = 0;
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  else
  {
    *(a3 + 8) = 0;
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }
}

void sub_29AC0BF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  v16 = *(v14 - 24);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC0BF38(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 7) != 0)
  {
    v3 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v4 = v3;
    }
  }

  sub_29AC0F63C(a1, a3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetModelAssetName(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 37);
  if (!v3)
  {
LABEL_21:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  if (!atomic_load(&qword_2A1749558))
  {
    sub_29AC0F6B4();
  }

  (*(*v3 + 24))(&v10, v3);
  sub_29ABC3244(&v10, &v12);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v5 = v12;
  if (!v12)
  {
    goto LABEL_17;
  }

  v6 = atomic_load(&qword_2A1749558);
  if (!v6)
  {
    v6 = sub_29AC0F6B4();
  }

  (*(*v5 + 24))(&v8, v5, v6 + 8);
  sub_29AC0C148(&v8, &v10);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (!v10)
  {
    if (v11)
    {
      sub_29A014BEC(v11);
    }

LABEL_17:
    v7 = 1;
    goto LABEL_18;
  }

  (*(*v10 + 32))(v10, 0.0);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v7 = 0;
LABEL_18:
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v7)
  {
    goto LABEL_21;
  }
}

void sub_29AC0C11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AC0C148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2A2075C58, &unk_2A207A150, 0)) != 0)
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

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_ResetIfNecessaryAndGetNode(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if (sub_29A16039C(this + 49, a2))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    if ((*(this + 57) ^ *a2) > 7)
    {
      if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined((this + 440)))
      {
        pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::GetNodes((this + 16), &v19);
        v6 = v19;
        v19 = 0uLL;
        v7 = *(this + 56);
        *(this + 440) = v6;
        if (v7)
        {
          sub_29A014BEC(v7);
          if (*(&v19 + 1))
          {
            sub_29A014BEC(*(&v19 + 1));
          }
        }
      }

      sub_29A166F2C(this + 57, a2);
      sub_29AC0C368(this + 55, a2, &v19);
      v8 = v19;
      v19 = 0uLL;
      v9 = *(this + 59);
      *(this + 29) = v8;
      if (v9)
      {
        sub_29A014BEC(v9);
        if (*(&v19 + 1))
        {
          sub_29A014BEC(*(&v19 + 1));
        }
      }

      v17 = 0;
      v18 = 0;
      sub_29ABCD3B8(&v19, &v17);
      v10 = v19;
      v19 = 0uLL;
      v11 = *(this + 61);
      *(this + 30) = v10;
      if (v11)
      {
        sub_29A014BEC(v11);
        if (*(&v19 + 1))
        {
          sub_29A014BEC(*(&v19 + 1));
        }
      }

      if (v18)
      {
        sub_29A014BEC(v18);
      }

      v15 = 0;
      v16 = 0;
      sub_29ABCD3B8(&v19, &v15);
      v12 = v19;
      v19 = 0uLL;
      v13 = *(this + 63);
      *(this + 31) = v12;
      if (v13)
      {
        sub_29A014BEC(v13);
        if (*(&v19 + 1))
        {
          sub_29A014BEC(*(&v19 + 1));
        }
      }

      if (v16)
      {
        sub_29A014BEC(v16);
      }
    }

    v14 = *(this + 59);
    *a3 = *(this + 58);
    a3[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29AC0C350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AC0C368(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
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

  sub_29ABC2F3C(a1, &v9);
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

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_GetNodeParameters(std::__shared_weak_count **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, std::__shared_weak_count **a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_ResetIfNecessaryAndGetNode(this, a2, &v11);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined((this + 60)))
  {
    v6 = this[60];
    v5 = this[61];
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetParameters(&v11, &v9);
    v7 = v9;
    v5 = v10;
    v9 = 0;
    v10 = 0;
    v8 = this[61];
    this[60] = v7;
    this[61] = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
      if (v10)
      {
        sub_29A014BEC(v10);
      }

      v5 = this[61];
    }

    v6 = this[60];
  }

  *a3 = v6;
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29AC0C4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_GetNodeConnections(std::__shared_weak_count **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, std::__shared_weak_count **a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_ResetIfNecessaryAndGetNode(this, a2, &v11);
  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined((this + 62)))
  {
    v6 = this[62];
    v5 = this[63];
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetInputConnections(&v11, &v9);
    v7 = v9;
    v5 = v10;
    v9 = 0;
    v10 = 0;
    v8 = this[63];
    this[62] = v7;
    this[63] = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
      if (v10)
      {
        sub_29A014BEC(v10);
      }

      v5 = this[63];
    }

    v6 = this[62];
  }

  *a3 = v6;
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29AC0C590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_SetOverride(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2, uint64_t *a3)
{
  pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::Set((a1 + 32), a2, a3);
  v15 = a2;
  v6 = sub_29AC0F874(a1 + 312, a2, &unk_29B4D6118, &v15);
  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(v6 + 80);
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if ((atomic_load_explicit(&qword_2A1749598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749598))
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
    if (!v13)
    {
      v13 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749560, v13);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749560, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749598);
  }

  if ((atomic_load_explicit(&qword_2A17495D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17495D8))
  {
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
    if (!v14)
    {
      v14 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A17495A0, (v14 + 8));
    __cxa_atexit(sub_29ABC33B4, &unk_2A17495A0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17495D8);
  }

  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects(a2, &unk_2A1749560) && pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElementCount(a2) >= 2)
  {
    Element = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(a2, 1);
    sub_29A169500(a1 + 352, Element, Element);
    v11 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(a2, 1);
    return sub_29AC0FCC4((a1 + 392), v11);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects(a2, &unk_2A17495A0);
    if (result)
    {
      *(a1 + 432) = 1;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetNodeNames@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = (this + 440);
  if (!pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined((this + 440)))
  {
    pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::GetNodes((this + 16), &v17);
    v5 = v17;
    v17 = 0uLL;
    v6 = *(this + 56);
    *v4 = v5;
    if (v6)
    {
      sub_29A014BEC(v6);
      if (*(&v17 + 1))
      {
        sub_29A014BEC(*(&v17 + 1));
      }
    }
  }

  result = pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(v4, a2);
  if (*(this + 52))
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 1065353216;
    v8 = *a2;
    v9 = a2[1];
    while (v8 != v9)
    {
      sub_29A169500(&v17, v8, v8);
      ++v8;
    }

    for (i = (this + 408); ; sub_29AC0FCC4(&v17, i + 2))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    v11 = *a2;
    v12 = a2[1];
    if (v12 != *a2)
    {
      do
      {
        v14 = *(v12 - 8);
        v12 -= 8;
        v13 = v14;
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v12 != v11);
    }

    a2[1] = v11;
    if (v18)
    {
      v15 = 0;
      v16 = v18;
      do
      {
        ++v15;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      v15 = 0;
    }

    sub_29AC0FCFC(a2, v11, v18, 0, v15);
    return sub_29A155EF4(&v17);
  }

  return result;
}

void sub_29AC0C920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_29A155EF4(&a9);
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetNodeType@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v7)
  {
    v7 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v14, v6, a2, (v7 + 16));
  v8 = sub_29AC0FFC0(this + 39, v14);
  if (v8)
  {
    sub_29ABC562C((v8 + 9), &v12);
    if (v12)
    {
      (*(*v12 + 32))(v12, 0.0);
    }

    else
    {
      *a3 = 0;
    }

LABEL_13:
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    return sub_29ABC3488(v14);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_ResetIfNecessaryAndGetNode(this, a2, &v10);
  pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetNodeIdentifier(&v10, &v12);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v12)
  {
    (*(*v12 + 32))(v12, 0.0);
    goto LABEL_13;
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  *a3 = 0;
  return sub_29ABC3488(v14);
}

void sub_29AC0CAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_GetNodeTypeInfo(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_ResetIfNecessaryAndGetNode(this, a2, &v4);
  pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::GetNodeTypeInfo(&v4, a3);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29AC0CB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetNodeTypeInfoKeys(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_GetNodeTypeInfo(this, a2, &v4);
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29AC0CC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetNodeTypeInfoValue(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_GetNodeTypeInfo(this, a2, &v9);
  if (v9)
  {
    (*(*v9 + 24))(&v5);
    sub_29ABE3F04(&v5, &v7);
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    if (v7)
    {
      (*(*v7 + 16))(v7, 0.0);
    }

    else
    {
      *(a3 + 8) = 0;
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  else
  {
    *(a3 + 8) = 0;
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }
}

void sub_29AC0CCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetAuthoredNodeParameterNames@<X0>(std::__shared_weak_count **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_GetNodeParameters(this, a2, &v23);
  pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v23, a3);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  result = sub_29A16039C(this + 44, a2);
  if (result)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
    if (!v7)
    {
      v7 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
    if (!v8)
    {
      v8 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&v23, v7, a2, v8);
    v20 = 0u;
    v21 = 0u;
    v22 = 1065353216;
    v9 = *a3;
    v10 = a3[1];
    while (v9 != v10)
    {
      sub_29A169500(&v20, v9, v9);
      ++v9;
    }

    for (i = this[41]; i; i = i->__vftable)
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(&i->__shared_weak_owners_, &v23))
      {
        if (i[3].__vftable)
        {
          Element = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(&i->__shared_weak_owners_, 3);
          sub_29A169500(&v20, Element, Element);
        }

        else
        {
          v13 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(&i->__shared_weak_owners_, 3);
          sub_29AC0FCC4(&v20, v13);
        }
      }
    }

    v14 = *a3;
    v15 = a3[1];
    if (v15 != *a3)
    {
      do
      {
        v17 = *(v15 - 8);
        v15 -= 8;
        v16 = v17;
        if ((v17 & 7) != 0)
        {
          atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v15 != v14);
    }

    a3[1] = v14;
    if (v21)
    {
      v18 = 0;
      v19 = v21;
      do
      {
        ++v18;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      v18 = 0;
    }

    sub_29AC0FCFC(a3, v14, v21, 0, v18);
    sub_29A155EF4(&v20);
    return sub_29ABC3488(&v23);
  }

  return result;
}

void sub_29AC0CF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  sub_29A155EF4(&a9);
  sub_29ABC3488(&a15);
  sub_29A124AB0(&a15);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetNodeParameterValue@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v9)
  {
    v9 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v20, v8, a2, v9, a3);
  v10 = sub_29AC0FFC0(this + 39, v20);
  if (v10)
  {
    sub_29ABC3244((v10 + 9), &v18);
    v11 = v18;
    v12 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = v11;
      v17 = v12;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v12);
      sub_29A014BEC(v12);
    }

    else
    {
      v16 = v18;
      v17 = 0;
    }

    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v16))
    {
      pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::GetValue(&v16, &v14);
      if (v14)
      {
        (v14->__on_zero_shared)(v14, 0.0);
        if (v15)
        {
          sub_29A014BEC(v15);
        }

        goto LABEL_25;
      }

      if (v15)
      {
        sub_29A014BEC(v15);
      }
    }

    *(a4 + 8) = 0;
LABEL_25:
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    goto LABEL_27;
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_GetNodeParameters(this, a2, &v14);
  sub_29AC0D230(&v14, a3, &v16);
  pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::GetValue(&v16, &v18);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v18)
  {
    (*(*v18 + 16))(v18, 0.0);
LABEL_27:
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    return sub_29ABC3488(v20);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  *(a4 + 8) = 0;
  return sub_29ABC3488(v20);
}

void sub_29AC0D1AC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  if (a5)
  {
    sub_29A014BEC(a5);
  }

  if (a7)
  {
    sub_29A014BEC(a7);
  }

  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

void sub_29AC0D230(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
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

  sub_29ABC2F3C(a1, &v9);
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

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetNodeParameterData@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v9)
  {
    v9 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v25, v8, a2, v9, a3);
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = 0;
  v10 = sub_29AC0FFC0(this + 39, v25);
  if (v10)
  {
    sub_29ABC3244((v10 + 9), &v19);
    v11 = v19;
    v12 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = v11;
      v18 = v12;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v12);
      sub_29A014BEC(v12);
    }

    else
    {
      v17 = v19;
      v18 = 0;
    }

    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v17))
    {
      pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::GetValue(&v17, &v23);
      if (v23)
      {
        (*(*v23 + 16))(&v21, 0.0);
        sub_29A18606C(a4, &v21);
        sub_29A186B14(&v21);
      }

      pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::GetColorSpace(&v17, &v21);
      if (v21)
      {
        (*(*v21 + 32))(&v16, 0.0);
        v14 = a4 + 2;
        if (&v16 == a4 + 2)
        {
          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v14 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v14 = v16;
        }
      }

      if (v22)
      {
        sub_29A014BEC(v22);
      }

      if (v24)
      {
        sub_29A014BEC(v24);
      }
    }

LABEL_35:
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    goto LABEL_37;
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_GetNodeParameters(this, a2, &v17);
  sub_29AC0D230(&v17, a3, &v19);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v19))
  {
    pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::GetValue(&v19, &v17);
    if (v17)
    {
      (v17->__on_zero_shared)(&v23, 0.0);
      sub_29A18606C(a4, &v23);
      sub_29A186B14(&v23);
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }

    pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::GetColorSpace(&v19, &v17);
    if (v17)
    {
      (v17->__on_zero_shared_weak)(&v23, 0.0);
      v13 = a4 + 2;
      if (&v23 == a4 + 2)
      {
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v13 = v23;
      }
    }

    goto LABEL_35;
  }

LABEL_37:
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  return sub_29ABC3488(v25);
}

void sub_29AC0D670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  if (a7)
  {
    sub_29A014BEC(a7);
  }

  sub_29AC0D710(v11);
  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC0D710(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return sub_29A186B14(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetNodeInputConnectionNames@<X0>(std::__shared_weak_count **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_GetNodeConnections(this, a2, &v23);
  pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v23, a3);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  result = sub_29A16039C(this + 44, a2);
  if (result)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
    if (!v7)
    {
      v7 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
    if (!v8)
    {
      v8 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&v23, v7, a2, (v8 + 8));
    v20 = 0u;
    v21 = 0u;
    v22 = 1065353216;
    v9 = *a3;
    v10 = a3[1];
    while (v9 != v10)
    {
      sub_29A169500(&v20, v9, v9);
      ++v9;
    }

    for (i = this[41]; i; i = i->__vftable)
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix(&i->__shared_weak_owners_, &v23))
      {
        if (i[3].__vftable)
        {
          Element = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(&i->__shared_weak_owners_, 3);
          sub_29A169500(&v20, Element, Element);
        }

        else
        {
          v13 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(&i->__shared_weak_owners_, 3);
          sub_29AC0FCC4(&v20, v13);
        }
      }
    }

    v14 = *a3;
    v15 = a3[1];
    if (v15 != *a3)
    {
      do
      {
        v17 = *(v15 - 8);
        v15 -= 8;
        v16 = v17;
        if ((v17 & 7) != 0)
        {
          atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v15 != v14);
    }

    a3[1] = v14;
    if (v21)
    {
      v18 = 0;
      v19 = v21;
      do
      {
        ++v18;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      v18 = 0;
    }

    sub_29AC0FCFC(a3, v14, v21, 0, v18);
    sub_29A155EF4(&v20);
    return sub_29ABC3488(&v23);
  }

  return result;
}

void sub_29AC0D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  sub_29A155EF4(&a9);
  sub_29ABC3488(&a15);
  sub_29A124AB0(&a15);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetNodeInputConnection@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, uint64_t a4@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v9)
  {
    v9 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v27, v8, a2, (v9 + 8), a3);
  v10 = sub_29AC0FFC0(this + 39, v27);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_GetNodeConnections(this, a2, &v23);
    sub_29AC0DD4C(&v23, a3, &v25);
    if (v24)
    {
      sub_29A014BEC(v24);
    }

    v12 = 0;
LABEL_18:
    NumElements = pxrInternal__aapl__pxrReserved__::HdVectorSchema::GetNumElements(&v25);
    v14 = NumElements;
    *(a4 + 64) = 0x400000000;
    if (NumElements < 5)
    {
      if (!NumElements)
      {
LABEL_36:
        if (v26)
        {
          sub_29A014BEC(v26);
        }

        goto LABEL_38;
      }
    }

    else
    {
      sub_29AC101FC(a4, NumElements);
    }

    v15 = 0;
    do
    {
      sub_29AC0DDFC(&v25, &v23);
      if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v23))
      {
        pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::GetUpstreamNodePath(&v23, &v21);
        pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::GetUpstreamNodeOutputName(&v23, &v19);
        if (v21 && v19)
        {
          (*(*v21 + 32))(&v17, 0.0);
          (*(*v19 + 32))(&v18, 0.0);
          sub_29AC1031C(a4, &v17);
          if ((v18 & 7) != 0)
          {
            atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v17 & 7) != 0)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        if (v20)
        {
          sub_29A014BEC(v20);
        }

        if (v22)
        {
          sub_29A014BEC(v22);
        }
      }

      if (v24)
      {
        sub_29A014BEC(v24);
      }

      ++v15;
    }

    while (v14 != v15);
    goto LABEL_36;
  }

  sub_29ABE3E74((v10 + 9), &v25);
  v11 = v25;
  if (v25)
  {
    v12 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v12 = 0;
    *(a4 + 64) = 0x400000000;
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }

  if (v11)
  {
    v25 = v11;
    v26 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_18;
  }

LABEL_38:
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  return sub_29ABC3488(v27);
}

void sub_29AC0DC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a9)
  {
    sub_29A014BEC(a9);
  }

  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

void sub_29AC0DD4C(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  if ((*a2 & 7) != 0)
  {
    v4 = (*a2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v4;
    }
  }

  sub_29AC100E4(a1, &v7);
  v5 = v8;
  *a3 = v7;
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AC0DDFC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_29AC102A4(a1, &v6);
  v4 = v6;
  v3 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v3);
    v5 = v7;
    *a2 = v4;
    a2[1] = v3;
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a2 = v6;
    a2[1] = 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::DeleteNode(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v8, v4, a2);
  v6 = 0;
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::Set((this + 32), v8, &v6);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  sub_29A169500(this + 392, a2, a2);
  return sub_29ABC3488(v8);
}

void sub_29AC0DF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::SetNodeType(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v7)
  {
    v7 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v11, v6, a2, (v7 + 16));
  sub_29ABCCFA4(a3, &v9);
  v10 = v9;
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_SetOverride(this, v11, &v10);
  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  return sub_29ABC3488(v11);
}

void sub_29AC0E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::SetNodeParameterValue(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v9)
  {
    v9 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v19, v8, a2, v9, a3);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  sub_29ABF2EF0(a4, &v12);
  v13 = v12;
  v12 = 0uLL;
  v10 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(&v14, &v13);
  pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v10, &v17);
  v18 = v17;
  v17 = 0uLL;
  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_SetOverride(this, v19, &v18);
  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  return sub_29ABC3488(v19);
}

void sub_29AC0E1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, ...)
{
  va_start(va, a15);
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::SetNodeParameterData(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::TfToken *a3, void *a4)
{
  v26 = *MEMORY[0x29EDCA608];
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v9)
  {
    v9 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v25, v8, a2, v9, a3);
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  sub_29ABF2EF0(a4, &v18);
  v19 = v18;
  v18 = 0uLL;
  v10 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(&v20, &v19);
  v12 = a4[2];
  v11 = a4 + 2;
  if (v12)
  {
    sub_29ABCCFA4(v11, &v16);
    v13 = v16;
  }

  else
  {
    v13 = 0uLL;
  }

  v17 = v13;
  v16 = 0uLL;
  v14 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetColorSpace(v10, &v17);
  pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v14, &v23);
  v24 = v23;
  v23 = 0uLL;
  if (*(&v17 + 1))
  {
    sub_29A014BEC(*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(&v19 + 1))
  {
    sub_29A014BEC(*(&v19 + 1));
  }

  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_SetOverride(a1, v25, &v24);
  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  return sub_29ABC3488(v25);
}

void sub_29AC0E40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    sub_29A014BEC(a9);
  }

  if (a7)
  {
    sub_29A014BEC(a7);
  }

  sub_29ABF2F5C(va);
  sub_29ABC3488(v9 - 112);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::DeleteNodeParameter(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v7)
  {
    v7 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v11, v6, a2, v7, a3);
  v9 = 0;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_SetOverride(this, v11, &v9);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return sub_29ABC3488(v11);
}

void sub_29AC0E570(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::SetNodeInputConnection(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v8)
  {
    v8 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v9)
  {
    v9 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v27, v8, a2, (v9 + 8), a3);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_29A039314(&v24, *(a4 + 64));
  v10 = *(a4 + 64);
  if (*(a4 + 68) >= 5u)
  {
    a4 = *a4;
  }

  if (v10)
  {
    v11 = a4 + 16 * v10;
    do
    {
      v20 = 0u;
      v21 = 0u;
      sub_29ABCCFA4(a4, &v18);
      v19 = v18;
      v18 = 0uLL;
      v12 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodePath(&v20, &v19);
      v13 = (a4 + 8);
      sub_29ABCCFA4(v13, &v16);
      v17 = v16;
      v16 = 0uLL;
      v14 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodeOutputName(v12, &v17);
      pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::Build(v14, &v22);
      v23 = v22;
      v22 = 0uLL;
      sub_29A01729C(&v24, &v23);
      if (*(&v23 + 1))
      {
        sub_29A014BEC(*(&v23 + 1));
      }

      if (*(&v22 + 1))
      {
        sub_29A014BEC(*(&v22 + 1));
      }

      if (*(&v17 + 1))
      {
        sub_29A014BEC(*(&v17 + 1));
      }

      if (*(&v16 + 1))
      {
        sub_29A014BEC(*(&v16 + 1));
      }

      if (*(&v19 + 1))
      {
        sub_29A014BEC(*(&v19 + 1));
      }

      if (*(&v18 + 1))
      {
        sub_29A014BEC(*(&v18 + 1));
      }

      if (*(&v21 + 1))
      {
        sub_29A014BEC(*(&v21 + 1));
      }

      if (*(&v20 + 1))
      {
        sub_29A014BEC(*(&v20 + 1));
      }

      a4 = (v13 + 1);
    }

    while (a4 != v11);
  }

  *&v22 = (v25 - v24) >> 4;
  *&v19 = v24;
  sub_29AC00FD8(&v22, &v19, &v23);
  v20 = v23;
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_SetOverride(a1, v27, &v20);
  if (*(&v20 + 1))
  {
    sub_29A014BEC(*(&v20 + 1));
  }

  *&v20 = &v24;
  sub_29A0176E4(&v20);
  return sub_29ABC3488(v27);
}

void sub_29AC0E7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  a17 = &a26;
  sub_29A0176E4(&a17);
  sub_29ABC3488(v26 - 112);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::DeleteNodeInputConnection(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v7)
  {
    v7 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v11, v6, a2, (v7 + 8), a3);
  v9 = 0;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_SetOverride(this, v11, &v9);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return sub_29ABC3488(v11);
}

void sub_29AC0E97C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetTerminalNames(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, uint64_t *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::GetTerminals((this + 16), &v16);
  pxrInternal__aapl__pxrReserved__::HdContainerSchema::GetNames(&v16, a2);
  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  if (*(this + 432) == 1)
  {
    if ((atomic_load_explicit(&qword_2A1749618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749618))
    {
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
      if (!v15)
      {
        v15 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A17495E0, (v15 + 8));
      __cxa_atexit(sub_29ABC33B4, &unk_2A17495E0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1749618);
    }

    v16 = 0u;
    v17 = 0u;
    v18 = 1065353216;
    v4 = *a2;
    v5 = a2[1];
    while (v4 != v5)
    {
      sub_29A169500(&v16, v4, v4);
      ++v4;
    }

    for (i = *(this + 41); i; i = *i)
    {
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HasPrefix((i + 2), &unk_2A17495E0))
      {
        if (i[9])
        {
          Element = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement((i + 2), 1);
          sub_29A169500(&v16, Element, Element);
        }

        else
        {
          v8 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement((i + 2), 1);
          sub_29AC0FCC4(&v16, v8);
        }
      }
    }

    v9 = *a2;
    v10 = a2[1];
    if (v10 != *a2)
    {
      do
      {
        v12 = *(v10 - 8);
        v10 -= 8;
        v11 = v12;
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v10 != v9);
    }

    a2[1] = v9;
    if (v17)
    {
      v13 = 0;
      v14 = v17;
      do
      {
        ++v13;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v13 = 0;
    }

    sub_29AC0FCFC(a2, v9, v17, 0, v13);
    sub_29A155EF4(&v16);
  }
}

void sub_29AC0EB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  __cxa_guard_abort(&qword_2A1749618);
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::GetTerminalConnection@<X0>(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v18, (v6 + 8), a2);
  v7 = sub_29AC0FFC0(this + 39, v18);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::GetTerminals((this + 16), &v14);
    sub_29AC0EFF0(&v14, a2, &v16);
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v9 = 0;
    goto LABEL_15;
  }

  sub_29ABC3244((v7 + 9), &v16);
  v8 = v16;
  v9 = v17;
  if (v16)
  {
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = v8;
      v17 = v9;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v9);
      sub_29A014BEC(v9);
    }

    else
    {
      v17 = 0;
    }

LABEL_15:
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v16))
    {
      LOBYTE(v13) = 1;
      v14 = 0;
      v15 = 0;
      sub_29AC0F42C(a3, &v13, &v14);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::GetUpstreamNodePath(&v16, &v14);
      if (v14)
      {
        (*(*v14 + 32))(&v13, 0.0);
        v10 = (a3 + 8);
        if (&v13 == (a3 + 8))
        {
          if ((v13 & 7) != 0)
          {
            atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v10 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v10 = v13;
        }
      }

      else
      {
        *a3 = 0;
      }

      if (v15)
      {
        sub_29A014BEC(v15);
      }

      pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::GetUpstreamNodeOutputName(&v16, &v14);
      if (v14)
      {
        (*(*v14 + 32))(&v13, 0.0);
        v11 = (a3 + 16);
        if (&v13 == (a3 + 16))
        {
          if ((v13 & 7) != 0)
          {
            atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v11 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v11 = v13;
        }
      }

      if (v15)
      {
        sub_29A014BEC(v15);
      }
    }

    else
    {
      LOBYTE(v13) = 0;
      v14 = 0;
      v15 = 0;
      sub_29AC0F42C(a3, &v13, &v14);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    goto LABEL_45;
  }

  LOBYTE(v14) = 0;
  v16 = 0;
  v17 = 0;
  sub_29AC0F42C(a3, &v14, &v16);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_45:
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  return sub_29ABC3488(v18);
}

void sub_29AC0EF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  v10 = *(v8 + 16);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(v8 + 8);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a7)
  {
    sub_29A014BEC(a7);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

void sub_29AC0EFF0(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
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

  sub_29ABC2F3C(a1, &v9);
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

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::DeleteTerminal(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v8, (v4 + 8), a2);
  v6 = 0;
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_SetOverride(this, v8, &v6);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return sub_29ABC3488(v8);
}

void sub_29AC0F170(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  sub_29ABC3488(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::SetTerminalConnection(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  if (!v6)
  {
    v6 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v17, (v6 + 8), a2);
  v14 = 0u;
  v15 = 0u;
  sub_29ABCCFA4(a3, &v12);
  v13 = v12;
  v12 = 0uLL;
  v7 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodePath(&v14, &v13);
  sub_29ABCCFA4(a3 + 1, &v10);
  v11 = v10;
  v10 = 0uLL;
  v8 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodeOutputName(v7, &v11);
  pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::Build(v8, &v16);
  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (*(&v13 + 1))
  {
    sub_29A014BEC(*(&v13 + 1));
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  v14 = v16;
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::_SetOverride(a1, v17, &v14);
  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  if (*(&v16 + 1))
  {
    sub_29A014BEC(*(&v16 + 1));
  }

  return sub_29ABC3488(v17);
}

void sub_29AC0F31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a22)
  {
    sub_29A014BEC(a22);
  }

  sub_29ABC3488(v22 - 96);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface::Finish(pxrInternal__aapl__pxrReserved__::HdDataSourceMaterialNetworkInterface *this@<X0>, void *a2@<X8>)
{
  if (*(this + 42))
  {
    pxrInternal__aapl__pxrReserved__::HdContainerDataSourceEditor::Finish((this + 32), a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(this + 2, a2);
  }
}

void sub_29AC0F3C0(uint64_t a1)
{
  v1 = sub_29AC0F490(a1);

  operator delete(v1);
}

_DWORD *sub_29AC0F3E8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_29A1E21F4(a2, (a1 + 8)) + 1;

  return sub_29A1E2240(v3, (a1 + 12));
}

uint64_t sub_29AC0F42C(uint64_t result, _BYTE *a2, uint64_t *a3)
{
  *result = *a2;
  v3 = *a3;
  *(result + 8) = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[1];
  *(result + 16) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_29AC0F490(uint64_t a1)
{
  *a1 = &unk_2A207ADC8;
  v2 = *(a1 + 504);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 488);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 472);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a1 + 456);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 448);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  sub_29A155EF4(a1 + 392);
  sub_29A155EF4(a1 + 352);
  sub_29AC0F57C(a1 + 312);
  v7 = *(a1 + 304);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  sub_29ABDDCDC(a1 + 64);
  v8 = *(a1 + 56);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));
  sub_29A1DE3A4((a1 + 8));
  return a1;
}

uint64_t sub_29AC0F57C(uint64_t a1)
{
  sub_29AC0F5B8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AC0F5B8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AC0F5FC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29AC0F5FC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return sub_29ABC3488(a1);
}

void sub_29AC0F63C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABE3F04(&v4, a2);
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

unint64_t sub_29AC0F6B4()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "model", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "assetName", 0);
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A1749558, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A1749558);
  }

  return v0;
}

void sub_29AC0F7F8(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AC0F874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = 0;
  v26 = 0;
  sub_29AC0FB80(&v25, a2);
  v7 = bswap64(0x9E3779B97F4A7C55 * v25);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == v7)
          {
            pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::TfToken,6u>::operator==();
          }

          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v4)
          {
            break;
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  sub_29AC0FB00(a1, v7, a4, &v25);
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v4);
  if (v20)
  {
    v21 = v25;
    *v25 = *v20;
    *v20 = v21;
  }

  else
  {
    v22 = v25;
    *v25 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v19 + 8 * v4) = a1 + 16;
    v21 = v25;
    if (*v25)
    {
      v23 = *(*v25 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v23 >= v8)
        {
          v23 %= v8;
        }
      }

      else
      {
        v23 &= v8 - 1;
      }

      *(*a1 + 8 * v23) = v25;
      v21 = v25;
    }
  }

  ++*(a1 + 24);
  return v21;
}

void sub_29AC0FAE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC0FBDC(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AC0FB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29ABD30AC(v8 + 4, *a3);
  v8[9] = 0;
  v8[10] = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29AC0FB80(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2)
  {
    if (*(a2 + 52) >= 7u)
    {
      v3 = *a2;
    }

    else
    {
      v3 = a2;
    }

    v4 = *result;
    v5 = *(result + 8);
    do
    {
      v6 = *v3++;
      v7 = v6 & 0xFFFFFFFFFFFFFFF8;
      if (v5)
      {
        v4 = v7 + ((v7 + v4 + (v7 + v4) * (v7 + v4)) >> 1);
      }

      else
      {
        *(result + 8) = 1;
        v4 = v7;
      }

      v5 = 1;
      --v2;
    }

    while (v2);
    *result = v4;
  }

  return result;
}

void sub_29AC0FBDC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AC0F5FC(v2 + 16);
    }

    operator delete(v2);
  }
}

pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens_StaticTokenType *sub_29AC0FC38(atomic_ullong *a1)
{
  result = sub_29AC0FC80();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens_StaticTokenType::~HdMaterialNetworkSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens_StaticTokenType *sub_29AC0FC80()
{
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens_StaticTokenType::HdMaterialNetworkSchemaTokens_StaticTokenType(v0);
  return v0;
}

uint64_t *sub_29AC0FCC4(void *a1, void *a2)
{
  result = sub_29A160470(a1, a2);
  if (result)
  {
    sub_29A41ADD8(a1, result);
    return 1;
  }

  return result;
}

void *sub_29AC0FCFC(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      if (a5 <= (v10 - a2) >> 3)
      {
        sub_29A31BA04(a1, a2, a1[1], (a2 + 8 * a5));
        sub_29A166F2C(v5, v7 + 2);
        if (a5 != 1)
        {
          v22 = v5 + 1;
          v23 = a5 + 1;
          do
          {
            v7 = *v7;
            sub_29A166F2C(v22++, v7 + 2);
            --v23;
          }

          while (v23 > 2);
        }
      }

      else
      {
        v18 = (v10 - a2) >> 3;
        if (v18 <= 0)
        {
          sub_29A8251E4(a1, a3, a4);
        }

        else
        {
          v19 = v18 + 1;
          v20 = a3;
          do
          {
            v20 = *v20;
            --v19;
          }

          while (v19 > 1);
          sub_29A8251E4(a1, v20, a4);
          sub_29A31BA04(a1, v5, v10, &v5[a5]);
          if (v20 != v7)
          {
            v21 = v5;
            do
            {
              sub_29A166F2C(v21, v7 + 2);
              v7 = *v7;
              ++v21;
            }

            while (v7 != v20);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 3);
      if (v12 >> 61)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 2 > v12)
      {
        v12 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v16 = v13 >> 3;
      v29[4] = a1;
      if (v15)
      {
        v17 = sub_29A00C9BC(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      v24 = &v17[8 * v16];
      v29[0] = v17;
      v29[1] = v24;
      v29[3] = &v17[8 * v15];
      v25 = 8 * a5;
      v26 = &v24[8 * a5];
      do
      {
        v27 = v7[2];
        *v24 = v27;
        if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *v24 &= 0xFFFFFFFFFFFFFFF8;
        }

        v24 += 8;
        v7 = *v7;
        v25 -= 8;
      }

      while (v25);
      v29[2] = v26;
      v5 = sub_29A31BC0C(a1, v29, v5);
      sub_29A1541C0(v29);
    }
  }

  return v5;
}

void sub_29AC0FF20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1541C0(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens_StaticTokenType *sub_29AC0FF34(atomic_ullong *a1)
{
  result = sub_29AC0FF7C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens_StaticTokenType::~HdMaterialNodeSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens_StaticTokenType *sub_29AC0FF7C()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens_StaticTokenType::HdMaterialNodeSchemaTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AC0FFC0(void *a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  sub_29AC0FB80(&v11, a2);
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = bswap64(0x9E3779B97F4A7C55 * v11);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = (*&v3 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (*v7)
  {
    while (1)
    {
      v9 = v8[1];
      if (v4 == v9)
      {
        pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::TfToken,6u>::operator==();
      }

      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        break;
      }

      v8 = *v8;
      if (!v8)
      {
        return v8;
      }
    }

    return 0;
  }

  return v8;
}

void sub_29AC100E4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABE3E74(&v4, a2);
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

uint64_t sub_29AC1015C(uint64_t a1)
{
  sub_29AC1019C(a1);
  if (*(a1 + 68) >= 5u)
  {
    free(*a1);
  }

  return a1;
}

uint64_t *sub_29AC1019C(uint64_t *result)
{
  v1 = result;
  if (*(result + 17) >= 5u)
  {
    v1 = *result;
  }

  v2 = *(result + 16);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = v1 + 1;
    do
    {
      if ((*v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = *(v4 - 1);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 += 2;
      v3 -= 16;
    }

    while (v3);
  }

  return result;
}

void sub_29AC101FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(16 * a2);
  v5 = v4;
  v6 = a1;
  if (*(a1 + 68) >= 5u)
  {
    v6 = *a1;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = &v6[2 * v7];
    v9 = v4;
    do
    {
      *v9 = *v6;
      *v6 = 0;
      v9[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      v9 += 2;
    }

    while (v6 != v8);
  }

  sub_29AC1019C(a1);
  if (*(a1 + 68) >= 5u)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 68) = v2;
}

void sub_29AC102A4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    (*(*v3 + 24))(&v4);
    sub_29ABC3244(&v4, a2);
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

void sub_29AC1031C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 68);
  if (v5 == v4)
  {
    sub_29AC101FC(a1, v5 + (v5 >> 1) + 1);
    v4 = *(a1 + 68);
  }

  v6 = a1;
  if (v4 >= 5)
  {
    v6 = *a1;
  }

  v7 = *(a1 + 64);
  v8 = (v6 + 16 * v7);
  *v8 = *a2;
  *a2 = 0;
  v8[1] = a2[1];
  a2[1] = 0;
  *(a1 + 64) = v7 + 1;
}

void sub_29AC10398()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 0, "HD_BPRIM_ADDED", 0);
  v0 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "HD_BPRIM_ADDED", "Report when bprims are added");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 1, "HD_BPRIM_REMOVED", 0);
  v1 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "HD_BPRIM_REMOVED", "Report when bprims are removed");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 2, "HD_BUFFER_ARRAY_INFO", 0);
  v2 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 8, "HD_BUFFER_ARRAY_INFO", "Report detail info of HdBufferArrays");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 3, "HD_BUFFER_ARRAY_RANGE_CLEANED", 0);
  v3 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3 + 12, "HD_BUFFER_ARRAY_RANGE_CLEANED", "Report when bufferArrayRange is cleaned");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 4, "HD_CACHE_HITS", 0);
  v4 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v4 + 16, "HD_CACHE_HITS", "Report every cache hit");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 5, "HD_CACHE_MISSES", 0);
  v5 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v5 + 20, "HD_CACHE_MISSES", "Report every cache miss");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 6, "HD_COUNTER_CHANGED", 0);
  v6 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v6 + 24, "HD_COUNTER_CHANGED", "Report values when counters change");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 7, "HD_DIRTY_ALL_COLLECTIONS", 0);
  v7 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v7 + 28, "HD_DIRTY_ALL_COLLECTIONS", "Reports diagnostics when all collections are marked dirty");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 8, "HD_DIRTY_LIST", 0);
  v8 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v8 + 32, "HD_DIRTY_LIST", "Reports dirty list state changes");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 9, "HD_DISABLE_MULTITHREADED_RPRIM_SYNC", 0);
  v9 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v9 + 36, "HD_DISABLE_MULTITHREADED_RPRIM_SYNC", "Run RPrim sync on a single thread");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 10, "HD_DRAWITEMS_CULLED", 0);
  v10 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v10 + 40, "HD_DRAWITEMS_CULLED", "Report the number of draw items culled in each render pass");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 11, "HD_ENGINE_PHASE_INFO", 0);
  v11 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v11 + 44, "HD_ENGINE_PHASE_INFO", "Report the execution phase of the Hydra engine");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 12, "HD_EXT_COMPUTATION_ADDED", 0);
  v12 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v12 + 48, "HD_EXT_COMPUTATION_ADDED", "Report when ExtComputations are added");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 13, "HD_EXT_COMPUTATION_REMOVED", 0);
  v13 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v13 + 52, "HD_EXT_COMPUTATION_REMOVED", "Report when ExtComputations are removed");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 14, "HD_EXT_COMPUTATION_UPDATED", 0);
  v14 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v14 + 56, "HD_EXT_COMPUTATION_UPDATED", "Report when ExtComputations are updated");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 15, "HD_EXT_COMPUTATION_EXECUTION", 0);
  v15 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v15 + 60, "HD_EXT_COMPUTATION_EXECUTION", "Report when ExtComputations are executed");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 16, "HD_FREEZE_CULL_FRUSTUM", 0);
  v16 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v16 + 64, "HD_FREEZE_CULL_FRUSTUM", "Freeze the frustum used for culling at it's current value");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 17, "HD_INSTANCER_ADDED", 0);
  v17 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v17 + 68, "HD_INSTANCER_ADDED", "Report when instancers are added");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 18, "HD_INSTANCER_CLEANED", 0);
  v18 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v18 + 72, "HD_INSTANCER_CLEANED", "Report when instancers are fully cleaned");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 19, "HD_INSTANCER_REMOVED", 0);
  v19 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v19 + 76, "HD_INSTANCER_REMOVED", "Report when instancers are removed");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 20, "HD_INSTANCER_UPDATED", 0);
  v20 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v20 + 80, "HD_INSTANCER_UPDATED", "Report when instancers are updated");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 21, "HD_RENDER_SETTINGS", 0);
  v21 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v21 + 84, "HD_RENDER_SETTINGS", "Report render settings changes");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 22, "HD_RENDERER_PLUGIN", 0);
  v22 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v22 + 88, "HD_RENDERER_PLUGIN", "Report debug info on renderer plugins");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 23, "HD_RPRIM_ADDED", 0);
  v23 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v23 + 92, "HD_RPRIM_ADDED", "Report when rprims are added");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 24, "HD_RPRIM_CLEANED", 0);
  v24 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v24 + 96, "HD_RPRIM_CLEANED", "Report when rprims are fully cleaned");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 25, "HD_RPRIM_REMOVED", 0);
  v25 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v25 + 100, "HD_RPRIM_REMOVED", "Report when rprims are removed");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 26, "HD_RPRIM_UPDATED", 0);
  v26 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v26 + 104, "HD_RPRIM_UPDATED", "Report when rprims are updated");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 27, "HD_SAFE_MODE", 0);
  v27 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v27 + 108, "HD_SAFE_MODE", "Enable additional security checks");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 28, "HD_SELECTION_UPDATE", 0);
  v28 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v28 + 112, "HD_SELECTION_UPDATE", "Report when selection is updated");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 29, "HD_SHARED_EXT_COMPUTATION_DATA", 0);
  v29 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v29 + 116, "HD_SHARED_EXT_COMPUTATION_DATA", "Report info related to deduplication of ext computation data buffers");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 30, "HD_SPRIM_ADDED", 0);
  v30 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v30 + 120, "HD_SPRIM_ADDED", "Report when sprims are added");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 31, "HD_SPRIM_REMOVED", 0);
  v31 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v31 + 124, "HD_SPRIM_REMOVED", "Report when sprims are removed");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 32, "HD_SYNC_ALL", 0);
  v32 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v32 + 128, "HD_SYNC_ALL", "Report debugging info for the sync all algorithm.");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 33, "HD_TASK_ADDED", 0);
  v33 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v33 + 132, "HD_TASK_ADDED", "Report when tasks are added");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 34, "HD_TASK_REMOVED", 0);
  v34 = sub_29ABD3358();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v34 + 136, "HD_TASK_REMOVED", "Report when tasks are removed");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A207AEC0, 35, "HD_VARYING_STATE", 0);
  v35 = sub_29ABD3358() + 140;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v35, "HD_VARYING_STATE", "Reports state tracking of varying state");
}

void pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens_StaticTokenType::~HdDependenciesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens_StaticTokenType::HdDependenciesSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "__dependencies", 0);
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

void pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetEntries(pxrInternal__aapl__pxrReserved__::HdDependenciesSchema *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 192) = 0x800000000;
  v4 = *this;
  if (v4)
  {
    (*(*v4 + 16))(&v15);
    v5 = v15;
    for (i = v16; v5 != i; ++v5)
    {
      (*(**this + 24))(&v10);
      sub_29ABC3244(&v10, &v13);
      if (v11)
      {
        sub_29A014BEC(v11);
      }

      v7 = v13;
      if (v13)
      {
        v8 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_29A014BEC(v8);
        }

        v9 = *v5;
        v10 = v9;
        if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v10 &= 0xFFFFFFFFFFFFFFF8;
        }

        v11 = v7;
        v12 = v8;
        sub_29AC111A4(a2, &v10);
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v8)
        {
          sub_29A014BEC(v8);
        }
      }

      if (v14)
      {
        sub_29A014BEC(v14);
      }
    }

    v10 = &v15;
    sub_29A124AB0(&v10);
  }
}

double pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::BuildRetained@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens))
    {
      sub_29ABEE59C(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdDependenciesSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
  if (!result)
  {
    return sub_29ABEE59C(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdDependenciesSchema *this)
{
  if ((atomic_load_explicit(&qword_2A1749658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1749658))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE59C(&pxrInternal__aapl__pxrReserved__::HdDependenciesSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1749620, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A1749620, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1749658);
  }

  return &unk_2A1749620;
}

uint64_t sub_29AC110E4(uint64_t a1)
{
  sub_29AC11124(a1);
  if (*(a1 + 196) >= 9u)
  {
    free(*a1);
  }

  return a1;
}

void sub_29AC11124(uint64_t *a1)
{
  v1 = a1;
  if (*(a1 + 49) >= 9u)
  {
    v1 = *a1;
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = 24 * v2;
    v4 = (v1 + 2);
    do
    {
      if (*v4)
      {
        sub_29A014BEC(*v4);
      }

      v5 = *(v4 - 2);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 += 3;
      v3 -= 24;
    }

    while (v3);
  }
}

__n128 sub_29AC111A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 192);
  v5 = *(a1 + 196);
  if (v4 == v5)
  {
    sub_29AC11228(a1, v4 + (v4 >> 1) + 1);
    v5 = *(a1 + 196);
  }

  v6 = a1;
  if (v5 >= 9)
  {
    v6 = *a1;
  }

  v7 = v6 + 24 * *(a1 + 192);
  *v7 = *a2;
  *a2 = 0;
  result = *(a2 + 8);
  *(v7 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  ++*(a1 + 192);
  return result;
}

void sub_29AC11228(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(24 * a2);
  v5 = v4;
  v6 = a1;
  if (*(a1 + 196) >= 9u)
  {
    v6 = *a1;
  }

  v7 = *(a1 + 192);
  if (v7)
  {
    v8 = v6 + 24 * v7;
    v9 = v4;
    do
    {
      *v9 = *v6;
      *v6 = 0;
      *(v9 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      v9 += 24;
    }

    while (v6 != v8);
  }

  sub_29AC11124(a1);
  if (*(a1 + 196) >= 9u)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 196) = v2;
}

void sub_29AC11380(uint64_t a1, void *a2)
{
  sub_29AC134AC((v2 + 158), a2);
  sub_29AC135E8((v2 + 88), v4);
  sub_29AC13774(v3, v5);
  sub_29AC113C4(v2, v6);
}

void sub_29AC113C4(void *a1, const void *a2)
{
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((a1 + 15), a2);
  sub_29ABD4DDC();
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::GetPrim@<X0>(uint64_t *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v3 = this + 14;
  if (this[14])
  {
    v5 = this;
    sub_29AC14240((this + 88), a2, v8);
    if (v8[0])
    {
      v6 = 0;
    }

    else
    {
      v6 = v8[1] == v5 + 720;
    }

    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_UpdateDependencies(v5, a2);
    }

    v7 = sub_29AC1199C(v3);
    return (*(*v7 + 16))(v7, a2);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_UpdateDependencies(pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v4 = *(this + 14);
  v3 = (this + 112);
  if (v4)
  {
    v6 = sub_29AC1199C(v3);
    (*(*v6 + 16))(&v36);
    v7 = v37;
    v25 = v37;
    v37 = 0uLL;
    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      if (!v25)
      {
LABEL_47:
        if (*(&v25 + 1))
        {
          sub_29A014BEC(*(&v25 + 1));
        }

        return;
      }
    }

    else if (!v7)
    {
      goto LABEL_47;
    }

    pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetFromParent(&v25, &v23);
    if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined(&v23))
    {
      v8 = sub_29AC12870(this + 704, a2);
      *(v8 + 560) = 0;
      v9 = &v36;
      pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetEntries(&v23, &v36);
      if (v39 >= 9)
      {
        v9 = v36;
      }

      if (v38)
      {
        v10 = 24 * v38;
        do
        {
          if (pxrInternal__aapl__pxrReserved__::HdSchema::IsDefined((v9 + 1)))
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
            pxrInternal__aapl__pxrReserved__::HdDependencySchema::GetDependedOnPrimPath((v9 + 1), &v32);
            if (v32)
            {
              (*(*v32 + 32))(v29, 0.0);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
            }

            if (v33)
            {
              sub_29A014BEC(v33);
            }

            pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&v32);
            pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v29);
            pxrInternal__aapl__pxrReserved__::HdDependencySchema::GetDependedOnDataSourceLocator((v9 + 1), &v19);
            if (v19)
            {
              (*(*v19 + 32))(v26, 0.0);
              if (v28 >= 7)
              {
                v11 = v26[0];
              }

              else
              {
                v11 = v26;
              }

              sub_29ABDFEA4(&v32, v11, &v11[8 * v27]);
              sub_29ABC3488(v26);
            }

            if (v20)
            {
              sub_29A014BEC(v20);
            }

            pxrInternal__aapl__pxrReserved__::HdDependencySchema::GetAffectedDataSourceLocator((v9 + 1), &v19);
            if (v19)
            {
              (*(*v19 + 32))(v26, 0.0);
              if (v28 >= 7)
              {
                v12 = v26[0];
              }

              else
              {
                v12 = v26;
              }

              sub_29ABDFEA4(v29, v12, &v12[8 * v27]);
              sub_29ABC3488(v26);
            }

            if (v20)
            {
              sub_29A014BEC(v20);
            }

            if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v21))
            {
              sub_29A2258F0(&v21, a2);
              sub_29A225948(&v22, a2 + 1);
            }

            sub_29AC148B0(v8, &v21, 0, v26);
            v13 = sub_29AC129E0(this + 144, &v21);
            v14 = sub_29AC12B40(v13, a2);
            v15 = sub_29AC12CB0(v14, v9);
            v16 = v15;
            if (v15 != &v32)
            {
              if (v35 >= 7)
              {
                v17 = v32;
              }

              else
              {
                v17 = &v32;
              }

              sub_29ABDFEA4(v15, v17, &v17[8 * v34]);
            }

            if (v16 + 7 != v29)
            {
              if (v31 >= 7)
              {
                v18 = v29[0];
              }

              else
              {
                v18 = v29;
              }

              sub_29ABDFEA4((v16 + 7), v18, &v18[8 * v30]);
            }

            *(v14 + 560) = 0;
            sub_29ABC3488(v29);
            sub_29ABC3488(&v32);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
            sub_29A1DE3A4(&v21);
          }

          v9 += 3;
          v10 -= 24;
        }

        while (v10);
      }

      sub_29AC110E4(&v36);
    }

    if (v24)
    {
      sub_29A014BEC(v24);
    }

    goto LABEL_47;
  }
}

void sub_29AC118B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AC1199C(uint64_t *a1)
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

uint64_t *pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::GetChildPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 14);
  result = (this + 112);
  if (v4)
  {
    v5 = *(*sub_29AC1199C(result) + 24);

    return v5();
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_PrimsRemoved(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v23 = *MEMORY[0x29EDCA608];
  v19 = 0u;
  v20 = 0u;
  v22 = 0x1000000000;
  v7 = *(v4 + 128);
  if (*(v4 + 132) >= 0x11u)
  {
    v8 = *v4;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v9 = (v8 + 8 * v7);
    v10 = v3 + 160;
    do
    {
      pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_ClearDependencies(v6, v8);
      sub_29AC14578(v6 + 144, v8, v18);
      if (v18[0])
      {
        v11 = 0;
      }

      else
      {
        v11 = v18[1] == v10;
      }

      if (!v11)
      {
        sub_29AC148B0(v6 + 1264, v8, 0, v17);
        v12 = *(v18[0] + 48);
        if (v12)
        {
          while ((v12[73] & 1) == 0)
          {
            v12 = *v12;
            if (!v12)
            {
              goto LABEL_13;
            }
          }

LABEL_15:
          v13 = v12[1];
          *(v12 + 576) = 1;
          if (v13 != *v8)
          {
            v14 = v12[6];
            if (v14)
            {
              while ((v14[16] & 1) == 0)
              {
                v14 = *v14;
                if (!v14)
                {
                  goto LABEL_19;
                }
              }

              while (1)
              {
                pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_PrimDirtied(v6, (v12 + 1), (v14 + 9), &v19, v21);
                do
                {
                  v14 = *v14;
                  if (!v14)
                  {
                    goto LABEL_19;
                  }
                }

                while ((v14[16] & 1) == 0);
              }
            }
          }

LABEL_19:
          while (1)
          {
            v12 = *v12;
            if (!v12)
            {
              break;
            }

            if (v12[73])
            {
              goto LABEL_15;
            }
          }
        }
      }

LABEL_13:
      v8 = (v8 + 8);
    }

    while (v8 != v9);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsRemoved(v6, v5);
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v21);
  }

  sub_29ABD3844(v21);
  v15 = *(&v20 + 1);
  *(&v20 + 1) = 0;
  if (v15)
  {
    v16 = sub_29AC13C58(v15);
    operator delete(v16);
  }

  v21[0] = &v19;
  sub_29AC13D68(v21);
}

void sub_29AC11C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29ABD3844(va1);
  sub_29AC12084(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_ClearDependencies(pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AC14240(this + 704, a2, v13);
  v4 = v13[0];
  if (v13[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = v13[1] == this + 720;
  }

  if (!v5)
  {
    *(v13[0] + 576) = 1;
    if (!*(v4 + 40))
    {
      sub_29AC148B0(this + 1824, a2, 0, v12);
    }

    v6 = *(v4 + 48);
    if (v6)
    {
      while ((v6[4] & 1) == 0)
      {
        v6 = *v6;
        if (!v6)
        {
          return;
        }
      }

LABEL_11:
      sub_29AC14578(this + 144, v6 + 2, v11);
      v7 = v11[0];
      if (v11[0])
      {
        v8 = 0;
      }

      else
      {
        v8 = v11[1] == this + 160;
      }

      if (!v8)
      {
        sub_29AC15E5C(v11[0] + 16, a2, v10);
        if (v10[0])
        {
          v9 = 0;
        }

        else
        {
          v9 = v10[1] == v7 + 32;
        }

        if (!v9)
        {
          *(v10[0] + 576) = 1;
          sub_29AC148B0(this + 1264, v6 + 2, 0, v12);
        }
      }

      while (1)
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        if (v6[4])
        {
          goto LABEL_11;
        }
      }
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_PrimDirtied(pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a4 || (result = sub_29B2C52F4(&v13), (result & 1) != 0))
  {
    sub_29A1E21F4(&v16, a2);
    sub_29A1E2240(&v17, a2 + 1);
    sub_29ABD30AC(v18, a3);
    v10 = sub_29AC12528(a4, &v16);
    if (*(a4 + 8) == v10)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdDependenciesSchema::GetDefaultLocator(v10);
      if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Intersects(a3, DefaultLocator))
      {
        sub_29A1E21F4(&v14, a2);
        sub_29A1E2240(&v14 + 1, a2 + 1);
        sub_29ABD30AC(v15, DefaultLocator);
        if (*(a4 + 8) == sub_29AC12528(a4, &v14))
        {
          sub_29AC125B0(a4, &v14);
          pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_ClearDependencies(a1, a2);
          pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_UpdateDependencies(a1, a2);
        }

        sub_29ABC3488(v15);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
        sub_29A1DE3A4(&v14);
      }

      sub_29AC125B0(a4, &v16);
      sub_29AC1277C(a5, a2, a3);
    }

    sub_29ABC3488(v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v17);
    return sub_29A1DE3A4(&v16);
  }

  return result;
}

uint64_t sub_29AC12084(uint64_t a1)
{
  sub_29AC13C1C((a1 + 24), 0);
  v3 = a1;
  sub_29AC13D68(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_PrimsDirtied(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v20 = *MEMORY[0x29EDCA608];
  v16 = 0u;
  v17 = 0u;
  v19 = 0x1000000000;
  if (*(v4 + 7428) >= 0x11u)
  {
    v7 = *v4;
  }

  else
  {
    v7 = v4;
  }

  v8 = *(v4 + 7424);
  if (v8)
  {
    v9 = &v7[58 * v8];
    do
    {
      v10 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::begin(v7 + 2);
      v11 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::end((v7 + 1));
      while (v10 != v11)
      {
        pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::_PrimDirtied(v6, v7, v10, &v16, v18);
        v10 = (v10 + 56);
      }

      v7 += 58;
    }

    while (v7 != v9);
    if (v19)
    {
      if (HIDWORD(v19) >= 0x11)
      {
        v12 = v18[0];
      }

      else
      {
        v12 = v18;
      }

      if (*(v5 + 1857) >= 0x11u)
      {
        v13 = *v5;
      }

      else
      {
        v13 = v5;
      }

      sub_29AC12278(v18, v12, v13, &v13[116 * *(v5 + 1856)]);
      v5 = v18;
    }
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::_SendPrimsDirtied(v6, v5);
  sub_29ABD3844(v18);
  v14 = *(&v17 + 1);
  *(&v17 + 1) = 0;
  if (v14)
  {
    v15 = sub_29AC13C58(v14);
    operator delete(v15);
  }

  v18[0] = &v16;
  sub_29AC13D68(v18);
}

void sub_29AC12250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_29ABD3844(&a13);
  sub_29AC12084(&a9);
  _Unwind_Resume(a1);
}

void sub_29AC12278(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 7428);
  v9 = a1;
  if (v8 >= 0x11)
  {
    v9 = *a1;
  }

  v10 = *(a1 + 7424);
  v11 = 0x34F72C234F72C235 * ((a4 - a3) >> 4);
  v12 = v11 + v10;
  v13 = v8 + (v8 >> 1);
  if (v13 + 1 > v11 + v10)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = v11 + v10;
  }

  if (&v9[464 * v10] == a2)
  {
    if (v12 > v8)
    {
      sub_29AC14D54(a1, v14);
      LODWORD(v8) = *(a1 + 7428);
    }

    v18 = a1;
    if (v8 >= 0x11)
    {
      v18 = *a1;
    }

    v19 = &v18[464 * *(a1 + 7424)];
    goto LABEL_29;
  }

  if (v12 <= v8)
  {
    v20 = a1;
    if (v8 >= 0x11)
    {
      v20 = *a1;
    }

    v21 = 0x34F72C234F72C235 * ((&v20[464 * v10] - a2) >> 4);
    if (v21 >= v11)
    {
      v22 = 0x34F72C234F72C235 * ((a4 - a3) >> 4);
    }

    else
    {
      v22 = 0x34F72C234F72C235 * ((&v20[464 * v10] - a2) >> 4);
    }

    v23 = &a2[116 * (v21 - v22)];
    v24 = a1;
    if (v8 >= 0x11)
    {
      v24 = *a1;
    }

    v25 = &v24[464 * v10];
    v26 = v25 + 464 * (v11 - v22);
    sub_29AC14DDC(v23, v25, v26);
    sub_29AC14F4C(&v30, v6, v23, v26);
    if (v22 >= 1)
    {
      do
      {
        sub_29A2258F0(v6, v5);
        sub_29A225948(v6 + 1, v5 + 1);
        if (v6 != v5)
        {
          sub_29AC0BC18();
        }

        v5 += 116;
        v6 += 116;
        --v22;
      }

      while (v22);
    }

    v27 = a1;
    if (*(a1 + 7428) >= 0x11u)
    {
      v27 = *a1;
    }

    v19 = &v27[464 * *(a1 + 7424)];
LABEL_29:
    sub_29ABD3720(v5, a4, v19);
    goto LABEL_36;
  }

  if (v8 > 0x10)
  {
    v28 = a2 - *a1;
    v15 = malloc(464 * v14);
    v16 = &v28[v15];
    v17 = *a1;
  }

  else
  {
    v15 = malloc(464 * v14);
    v16 = v6 + v15 - a1;
    v17 = a1;
  }

  sub_29AC14DDC(v17, v6, v15);
  sub_29ABD3720(v5, a4, v16);
  v29 = a1;
  if (*(a1 + 7428) >= 0x11u)
  {
    v29 = *a1;
  }

  sub_29AC14DDC(v6, v29 + 464 * *(a1 + 7424), v16 + a4 - v5);
  sub_29ABD3884(a1);
  if (*(a1 + 7428) >= 0x11u)
  {
    free(*a1);
  }

  *a1 = v15;
  *(a1 + 7428) = v14;
LABEL_36:
  *(a1 + 7424) += v11;
}

void *sub_29AC12528(void *a1, unsigned int *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = sub_29AC1503C(v4, a2);
    if (v5)
    {
      return (*a1 + (v5[10] << 6));
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    v7 = *a1;
    v6 = a1[1];
    while (v7 != v6)
    {
      if (sub_29AC15000(a1, v7, a2))
      {
        return v7;
      }

      v7 += 8;
    }
  }

  return v6;
}

void *sub_29AC125B0(uint64_t *a1, unsigned int *a2)
{
  v15[8] = *MEMORY[0x29EDCA608];
  v4 = a1[3];
  if (v4)
  {
    v9 = (a1[1] - *a1) >> 6;
    sub_29AC156C4(&v10, a2, &v9);
    sub_29AC15730(&v13, &v10);
    v5 = sub_29AC1530C(v4, &v13, &v13);
    v7 = v6;
    sub_29ABC3488(v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    sub_29ABC3488(&v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    sub_29A1DE3A4(&v10);
    if ((v7 & 1) == 0)
    {
      return (*a1 + (v5[10] << 6));
    }
  }

  else
  {
    result = sub_29AC12528(a1, a2);
    if (a1[1] != result)
    {
      return result;
    }
  }

  sub_29AC151C0(a1, a2);
  sub_29AC15220(a1);
  return (a1[1] - 64);
}

void sub_29AC126F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29AC12734(_DWORD *a1)
{
  sub_29ABC3488((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AC1277C(uint64_t a1, _DWORD *a2, pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a3)
{
  v10[57] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 7424);
  v7 = *(a1 + 7428);
  if (v6 == v7)
  {
    sub_29AC14D54(a1, v6 + (v6 >> 1) + 1);
    v7 = *(a1 + 7428);
  }

  v8 = a1;
  if (v7 >= 0x11)
  {
    v8 = *a1;
  }

  v9 = *(a1 + 7424);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(v10, a3);
  sub_29ABD2F24((v8 + 464 * v9), a2, v10);
  sub_29ABD3178();
}

uint64_t sub_29AC12870(uint64_t a1, unsigned int *a2)
{
  v19[71] = *MEMORY[0x29EDCA608];
  sub_29AC14240(a1, a2, &v11);
  v4 = v11;
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v11 + 1) == a1 + 16;
  }

  if (v5)
  {
    bzero(v13, 0x238uLL);
    sub_29AC140E8(v13, 8uLL, &v12);
    v13[560] = 0;
    sub_29AC16620(&v14, a2, v13);
    sub_29AC1668C(&v17, &v14);
    sub_29AC161DC(a1, &v17, 0, &v10);
    v11 = v10;
    sub_29AC134AC(v19, v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    sub_29AC134AC(&v16, v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    sub_29AC134AC(v13, v8);
    v4 = v11;
  }

  return v4 + 16;
}

void sub_29AC12990(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AC129E0(uint64_t a1, unsigned int *a2)
{
  v19[70] = *MEMORY[0x29EDCA608];
  sub_29AC14578(a1, a2, &v11);
  v4 = v11;
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v11 + 1) == a1 + 16;
  }

  if (v5)
  {
    sub_29AC16AD8(v13, 8uLL, &v12);
    sub_29AC16C30(&v14, a2, v13);
    sub_29AC16C94(&v17, &v14);
    sub_29AC16734(a1, &v17, 0, &v10);
    v11 = v10;
    sub_29AC13900(v19, v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    sub_29AC13900(&v16, v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    sub_29AC13900(v13, v8);
    v4 = v11;
  }

  return v4 + 16;
}

void sub_29AC12AF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AC12B40(uint64_t a1, unsigned int *a2)
{
  v19[71] = *MEMORY[0x29EDCA608];
  sub_29AC15E5C(a1, a2, &v11);
  v4 = v11;
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v11 + 1) == a1 + 16;
  }

  if (v5)
  {
    bzero(v13, 0x238uLL);
    sub_29AC170E0(v13, 8uLL, &v12);
    v13[560] = 0;
    sub_29AC17238(&v14, a2, v13);
    sub_29AC172A4(&v17, &v14);
    sub_29AC16D34(a1, &v17, 0, &v10);
    v11 = v10;
    sub_29AC13A8C(v19, v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v18);
    sub_29A1DE3A4(&v17);
    sub_29AC13A8C(&v16, v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    sub_29AC13A8C(v13, v8);
    v4 = v11;
  }

  return v4 + 16;
}

void sub_29AC12C60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AC12CB0(uint64_t a1, uint64_t *a2)
{
  v15[7] = *MEMORY[0x29EDCA608];
  sub_29AC17304(a1, a2, &v8);
  v4 = v8;
  if (v8)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v8 + 1) == a1 + 16;
  }

  if (v5)
  {
    memset(v9, 0, sizeof(v9));
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v9);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator((&v9[3] + 8));
    sub_29AC17940(&v10, a2, v9);
    sub_29AC179E0(&v13, &v10);
    sub_29AC17638(a1, &v13, 0, &v7);
    v8 = v7;
    sub_29ABC3488(v15);
    sub_29ABC3488(&v14);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29ABC3488(&v12);
    sub_29ABC3488(&v11);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29ABC3488(&v9[3] + 8);
    sub_29ABC3488(v9);
    v4 = v8;
  }

  return v4 + 16;
}

void sub_29AC12DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_29AC13BD0((v31 - 160));
  sub_29AC13BD0(&a30);
  sub_29ABC3488(v30 + 56);
  sub_29ABC3488(&a15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdDependencyForwardingSceneIndex::RemoveDeletedEntries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 1296);
  if (v5)
  {
    while ((v5[4] & 1) == 0)
    {
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    v8 = a1 + 160;
    v9 = a1 + 720;
LABEL_9:
    sub_29AC14578(a1 + 144, v5 + 2, &v22);
    v10 = v22;
    if (v22)
    {
      v11 = 0;
    }

    else
    {
      v11 = v23 == v8;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    v13 = v24;
    for (i = v25; i != v13; sub_29A1E230C(&v24, i))
    {
      i -= 2;
    }

    v25 = v13;
    v14 = v10[6];
    if (v14)
    {
      while ((*(v14 + 584) & 1) == 0)
      {
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_33;
        }
      }

LABEL_20:
      if (*(v14 + 576) == 1)
      {
        sub_29A1E28B4(&v24, v14 + 2);
        sub_29AC14240(a1 + 704, v14 + 2, v21);
        v15 = v21[0];
        if (v21[0] || v21[1] != v9)
        {
          sub_29AC17A68(v21[0] + 16, v5 + 2, v20);
          if (v20[0] || v20[1] != v15 + 32)
          {
            if (*(v15 + 40) == 1)
            {
              sub_29AC13110(a1 + 704, v14 + 2);
              if (a2)
              {
                sub_29A1E28B4(a2, v14 + 2);
              }
            }

            else
            {
              sub_29AC1318C(v15 + 16, v5 + 2);
            }
          }
        }
      }

      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        if (*(v14 + 584))
        {
          goto LABEL_20;
        }
      }

      v13 = v25;
    }

LABEL_33:
    v16 = v24;
    if (v10[5] == ((v13 - v24) >> 3))
    {
      sub_29AC13208(a1 + 144, v5 + 2);
      if (a3)
      {
        sub_29A1E28B4(a3, v5 + 2);
      }
    }

    else
    {
      while (v16 != v13)
      {
        sub_29AC13284((v10 + 2), v16);
        v16 += 2;
      }
    }

LABEL_36:
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (v5[4])
      {
        goto LABEL_9;
      }
    }
  }

LABEL_4:
  v7 = *(a1 + 1856);
  if (v7)
  {
    while ((v7[4] & 1) == 0)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_41:
    sub_29AC14240(a1 + 704, v7 + 2, &v22);
    v17 = v22;
    v18 = v23;
    if (v22)
    {
      v19 = 0;
    }

    else
    {
      v19 = v23 == a1 + 720;
    }

    if (!v19 && *(v22 + 576) == 1)
    {
      if (a2)
      {
        sub_29A1E28B4(a2, v7 + 2);
        v17 = v22;
        v18 = v23;
      }

      sub_29AC184F4(a1 + 704, v17, v18, v21);
    }

    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (v7[4])
      {
        goto LABEL_41;
      }
    }
  }

LABEL_7:
  sub_29AC13300(a1 + 1264);
  sub_29AC13300(a1 + 1824);
  v22 = &v24;
  sub_29A1E234C(&v22);
}

void sub_29AC130D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, char a16)
{
  a14 = &a16;
  sub_29A1E234C(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC13110(uint64_t a1, unsigned int *a2)
{
  sub_29AC17BDC(a1, a2, &v9);
  v3 = 0;
  if (v9 != v11 || v10 != v12)
  {
    v5 = v9;
    do
    {
      ++v3;
      do
      {
        v5 = *v5;
      }

      while (v5 && (*(v5 + 584) & 1) == 0);
    }

    while (v5 != v11 || v10 != v12);
  }

  sub_29AC17B4C(a1, v9, v10, v11, v12, &v8);
  return v3;
}

uint64_t sub_29AC1318C(uint64_t a1, unsigned int *a2)
{
  sub_29AC17D74(a1, a2, &v9);
  v3 = 0;
  if (v9 != v11 || v10 != v12)
  {
    v5 = v9;
    do
    {
      ++v3;
      do
      {
        v5 = *v5;
      }

      while (v5 && (*(v5 + 16) & 1) == 0);
    }

    while (v5 != v11 || v10 != v12);
  }

  sub_29AC17CE4(a1, v9, v10, v11, v12, &v8);
  return v3;
}

uint64_t sub_29AC13208(uint64_t a1, unsigned int *a2)
{
  sub_29AC18024(a1, a2, &v9);
  v3 = 0;
  if (v9 != v11 || v10 != v12)
  {
    v5 = v9;
    do
    {
      ++v3;
      do
      {
        v5 = *v5;
      }

      while (v5 && (*(v5 + 576) & 1) == 0);
    }

    while (v5 != v11 || v10 != v12);
  }

  sub_29AC17F94(a1, v9, v10, v11, v12, &v8);
  return v3;
}

uint64_t sub_29AC13284(uint64_t a1, unsigned int *a2)
{
  sub_29AC182D4(a1, a2, &v9);
  v3 = 0;
  if (v9 != v11 || v10 != v12)
  {
    v5 = v9;
    do
    {
      ++v3;
      do
      {
        v5 = *v5;
      }

      while (v5 && (*(v5 + 584) & 1) == 0);
    }

    while (v5 != v11 || v10 != v12);
  }

  sub_29AC18244(a1, v9, v10, v11, v12, &v8);
  return v3;
}

void sub_29AC13300(uint64_t a1)
{
  sub_29AC1351C(a1 + 16);
  sub_29A1B0420(a1, v2);
  v3 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v3);
}

void sub_29AC13350(void *a1, void *a2)
{
  *a1 = &unk_2A207AEE0;
  v3 = (a1 + 15);
  sub_29AC134AC((a1 + 228), a2);
  sub_29AC134AC((a1 + 158), v4);
  sub_29AC135E8((a1 + 88), v5);
  sub_29AC13774((a1 + 18), v6);
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(v3, v7);
  sub_29ABD4DDC();
}

void sub_29AC133FC(void *a1, void *a2)
{
  *a1 = &unk_2A207AEE0;
  v3 = (a1 + 15);
  sub_29AC134AC((a1 + 228), a2);
  sub_29AC134AC((a1 + 158), v4);
  sub_29AC135E8((a1 + 88), v5);
  sub_29AC13774((a1 + 18), v6);
  *a1 = &unk_2A207B330;
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(v3, v7);
  sub_29ABD4DDC();
}

uint64_t sub_29AC134AC(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AC134E0(a1 + 16);
  return a1;
}

uint64_t sub_29AC134E0(uint64_t a1)
{
  sub_29AC1351C(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AC13564(a1, v2);
  return a1;
}

uint64_t sub_29AC1351C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AC13564(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AC13564(uint64_t a1, tbb::internal *this)
{
  if (*(this + 16))
  {
    sub_29AC135A8(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

_DWORD *sub_29AC135A8(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a2 + 12));

  return sub_29A1DE3A4((a2 + 8));
}

uint64_t sub_29AC135E8(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AC1361C(a1 + 16);
  return a1;
}

uint64_t sub_29AC1361C(uint64_t a1)
{
  sub_29AC13658(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AC136A0(a1, v2);
  return a1;
}

uint64_t sub_29AC13658(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AC136A0(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AC136A0(uint64_t a1, tbb::internal *this)
{
  if (*(this + 584))
  {
    sub_29AC136E4(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

_DWORD *sub_29AC136E4(uint64_t a1, _DWORD *a2)
{
  sub_29AC134AC((a2 + 4), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);

  return sub_29A1DE3A4(a2 + 2);
}

_DWORD *sub_29AC1372C(_DWORD *a1, void *a2)
{
  sub_29AC134AC((a1 + 2), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AC13774(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AC137A8(a1 + 16);
  return a1;
}

uint64_t sub_29AC137A8(uint64_t a1)
{
  sub_29AC137E4(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AC1382C(a1, v2);
  return a1;
}

uint64_t sub_29AC137E4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AC1382C(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AC1382C(uint64_t a1, tbb::internal *this)
{
  if (*(this + 576))
  {
    sub_29AC13870(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

_DWORD *sub_29AC13870(uint64_t a1, _DWORD *a2)
{
  sub_29AC13900((a2 + 4), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);

  return sub_29A1DE3A4(a2 + 2);
}

_DWORD *sub_29AC138B8(_DWORD *a1, void *a2)
{
  sub_29AC13900((a1 + 2), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AC13900(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AC13934(a1 + 16);
  return a1;
}

uint64_t sub_29AC13934(uint64_t a1)
{
  sub_29AC13970(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AC139B8(a1, v2);
  return a1;
}

uint64_t sub_29AC13970(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AC139B8(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AC139B8(uint64_t a1, tbb::internal *this)
{
  if (*(this + 584))
  {
    sub_29AC139FC(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

_DWORD *sub_29AC139FC(uint64_t a1, _DWORD *a2)
{
  sub_29AC13A8C((a2 + 4), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 3);

  return sub_29A1DE3A4(a2 + 2);
}

_DWORD *sub_29AC13A44(_DWORD *a1, void *a2)
{
  sub_29AC13A8C((a1 + 2), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AC13A8C(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AC13AC0(a1 + 16);
  return a1;
}

uint64_t sub_29AC13AC0(uint64_t a1)
{
  sub_29AC13AFC(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AC13B44(a1, v2);
  return a1;
}

uint64_t sub_29AC13AFC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = sub_29AC13B44(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AC13B44(uint64_t a1, tbb::internal *this)
{
  if (*(this + 128))
  {
    sub_29AC13B88(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

uint64_t sub_29AC13B88(uint64_t a1, uint64_t a2)
{
  sub_29ABC3488(a2 + 72);
  result = sub_29ABC3488(a2 + 16);
  v4 = *(a2 + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_29AC13BD0(void *a1)
{
  sub_29ABC3488((a1 + 8));
  sub_29ABC3488((a1 + 1));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29AC13C1C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29AC13C58(v3);

    operator delete(v4);
  }
}

uint64_t sub_29AC13C58(uint64_t a1)
{
  sub_29AC13C94(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AC13C94(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AC13CD8(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AC13CD8(_DWORD *a1)
{
  sub_29ABC3488((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29AC13D20(_DWORD *a1)
{
  sub_29ABC3488((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AC13D68(void ***a1)
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
        v4 -= 16;
        sub_29AC13DF0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *sub_29AC13DF0(uint64_t a1, _DWORD *a2)
{
  sub_29ABC3488((a2 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 1);

  return sub_29A1DE3A4(a2);
}

uint64_t sub_29AC13E38(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x248);
  v5[72] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AC13F90(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x250);
  v5[73] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AC140E8(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x18);
  v5[2] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

void sub_29AC14240(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v14 = 0;
  v15 = v5;
  v6 = &v15;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v14 + i) = byte_29B734F74[v8];
  }

  v9 = v14;
  v10 = a1 + 16;
  sub_29AC14324(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[73];
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        goto LABEL_11;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_11:
    *a3 = v11;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v10;
}

void sub_29AC14324(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AC143C0(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AC143C0(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AC143C0(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AC144A4(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AC144A4@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x250);
  *(result + 73) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[73];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AC136A0(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AC14578(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v14 = 0;
  v15 = v5;
  v6 = &v15;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v14 + i) = byte_29B734F74[v8];
  }

  v9 = v14;
  v10 = a1 + 16;
  sub_29AC1465C(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[72];
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        goto LABEL_11;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_11:
    *a3 = v11;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v10;
}

void sub_29AC1465C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AC146F8(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AC146F8(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AC146F8(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AC147DC(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AC147DC@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x248);
  *(result + 72) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[72];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AC1382C(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AC148B0(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29AC14AA4(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    a3[2] = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[2];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && v16[1] == *v14)
        {
          if (a3)
          {
            sub_29AC13564(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[2];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AC14B40(a1 + 16, v12, a2);
      v14 = a3 + 1;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void sub_29AC14AA4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AC14B9C(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

uint64_t sub_29AC14B40(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x18);
  sub_29A1E21F4((v5 + 8), a3);
  sub_29A1E2240((v5 + 12), a3 + 1);
  *(v5 + 16) = a2;
  *v5 = 0;
  return v5;
}

void sub_29AC14B9C(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AC14B9C(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AC14C80(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AC14C80@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x18);
  *(result + 2) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[2];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AC13564(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AC14D54(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc(464 * a2);
  v5 = a1;
  if (*(a1 + 7428) >= 0x11u)
  {
    v5 = *a1;
  }

  sub_29AC14DDC(v5, v5 + 464 * *(a1 + 7424), v4);
  sub_29ABD3884(a1);
  if (*(a1 + 7428) >= 0x11u)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 7428) = v2;
}

uint64_t sub_29AC14DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    sub_29A1DDD84((a3 + v6), (a1 + v6));
    sub_29A1DDDC0((a3 + v6 + 4), (a1 + v6 + 4));
    sub_29AC14EB8(a3 + v6 + 8, a1 + v6 + 8);
    v6 += 464;
  }

  while (a1 + v6 != v5);
  return v5;
}

void sub_29AC14E70(void *a1)
{
  sub_29A1DCEA8(v1);
  __cxa_begin_catch(a1);
  if (v2)
  {
    sub_29ABD37FC();
  }

  __cxa_rethrow();
}

uint64_t sub_29AC14EB8(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 448) = 0x800000000;
  v3 = *(a2 + 448);
  if (v3 < 9)
  {
    if (*(a2 + 452) >= 9u)
    {
      v4 = *a2;
    }

    else
    {
      v4 = a2;
    }

    sub_29ABDE7B4(v4, v4 + 56 * v3, v2);
    pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::_Destruct();
  }

  *result = *a2;
  *(result + 452) = *(a2 + 452);
  *(a2 + 452) = 8;
  v5 = *(result + 448);
  *(result + 448) = *(a2 + 448);
  *(a2 + 448) = v5;
  return result;
}

uint64_t sub_29AC14F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      sub_29A2258F0((a4 + v7 - 464), (a3 + v7 - 464));
      sub_29A225948((a4 + v7 - 460), (a3 + v7 - 460));
      if (a4 != a3)
      {
        sub_29AC0BC18();
      }

      v7 -= 464;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t sub_29AC15000(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == *a3)
  {
    pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::TfToken,6u>::operator==();
  }

  return 0;
}

void *sub_29AC1503C(void *a1, unsigned int *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v16 = 1;
  v15 = v5 + ((v5 + v4 + (v5 + v4) * (v5 + v4)) >> 1);
  sub_29AC0FB80(&v15, (a2 + 2));
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = bswap64(0x9E3779B97F4A7C55 * v15);
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (sub_29AC15000(a1, v12 + 2, a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v6)
          {
            v13 %= *&v6;
          }
        }

        else
        {
          v13 &= *&v6 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

_DWORD *sub_29AC15178(_DWORD *a1)
{
  sub_29ABC3488((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AC151C0(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AC15790(a1, a2);
  }

  else
  {
    sub_29AC158A4(a1, *(a1 + 8), a2);
    result = v3 + 64;
    *(a1 + 8) = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_29AC15220(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0x1FC1)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29AC13C1C(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29AC15AD4(v7, (v4 + v5), &unk_29B4D6118, &v8)[10] = v6++;
          v4 = *a1;
          v5 += 64;
        }

        while (v6 < (a1[1] - *a1) >> 6);
      }
    }
  }
}

void sub_29AC152F4(_Unwind_Exception *a1)
{
  v3 = sub_29AC13C58(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29AC1530C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v7 = *a2;
  v8 = a2[1];
  v28 = 1;
  v27 = (v8 + ((v8 + v7 + (v8 + v7) * (v8 + v7)) >> 1));
  sub_29AC0FB80(&v27, (a2 + 2));
  v9 = bswap64(0x9E3779B97F4A7C55 * v27);
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v3 = v9;
      if (v9 >= v10)
      {
        v3 = v9 % v10;
      }
    }

    else
    {
      v3 = (v10 - 1) & v9;
    }

    v13 = *(*a1 + 8 * v3);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        do
        {
          v15 = v14[1];
          if (v15 == v9)
          {
            if (sub_29AC15000(a1, v14 + 2, a2))
            {
              return v14;
            }
          }

          else
          {
            if (v12 > 1)
            {
              if (v15 >= v10)
              {
                v15 %= v10;
              }
            }

            else
            {
              v15 &= v10 - 1;
            }

            if (v15 != v3)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  sub_29AC15598(a1, v9, a3, &v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v3 = v9 % v10;
      }

      else
      {
        v3 = v9;
      }
    }

    else
    {
      v3 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    v14 = v27;
    *v27 = *v23;
    *v23 = v14;
  }

  else
  {
    v24 = v27;
    *v27 = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v3) = a1 + 16;
    v14 = v27;
    if (*v27)
    {
      v25 = *(*v27 + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27;
      v14 = v27;
    }
  }

  ++*(a1 + 24);
  return v14;
}

void sub_29AC15580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC15668(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC15598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29AC15608((v8 + 2), a3);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29AC15608(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  sub_29ABD30AC((a1 + 8), a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void sub_29AC15668(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AC13CD8(v2 + 4);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AC156C4(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  sub_29ABD30AC((a1 + 8), (a2 + 2));
  *(a1 + 64) = *a3;
  return a1;
}

uint64_t sub_29AC15730(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, (a2 + 4));
  sub_29ABD30AC((a1 + 8), a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t sub_29AC15790(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[64 * v2];
  *(&v17 + 1) = &v8[64 * v7];
  sub_29AC158A4(a1, v16, a2);
  *&v17 = v16 + 64;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_29AC15900(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29AC15A58(&v15);
  return v14;
}

void sub_29AC15890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AC15A58(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AC158A4(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  sub_29A1E21F4(a2, a3);
  sub_29A1E2240(a2 + 1, a3 + 1);
  return sub_29ABD30AC(a2 + 2, (a3 + 2));
}

uint64_t sub_29AC15900(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29AC158A4(a1, a4, v7);
      v7 += 16;
      a4 = v12 + 16;
      v12 += 16;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29AC13DF0(a1, v5);
      v5 += 16;
    }
  }

  return sub_29AC159CC(v9);
}

uint64_t sub_29AC159CC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC15A04(a1);
  }

  return a1;
}

uint64_t *sub_29AC15A04(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 16;
      result = sub_29AC13DF0(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_29AC15A58(void **a1)
{
  sub_29AC15A8C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AC15A8C(_DWORD *result)
{
  v2 = *(result + 1);
  v1 = *(result + 2);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 4);
      *(v3 + 2) = v1 - 64;
      result = sub_29AC13DF0(v4, (v1 - 64));
      v1 = *(v3 + 2);
    }

    while (v1 != v2);
  }

  return result;
}

void *sub_29AC15AD4(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v8 = *a2;
  v9 = a2[1];
  v29 = 1;
  v28 = (v9 + ((v9 + v8 + (v9 + v8) * (v9 + v8)) >> 1));
  sub_29AC0FB80(&v28, (a2 + 2));
  v10 = bswap64(0x9E3779B97F4A7C55 * v28);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        do
        {
          v16 = v15[1];
          if (v16 == v10)
          {
            if (sub_29AC15000(a1, v15 + 2, a2))
            {
              return v15;
            }
          }

          else
          {
            if (v13 > 1)
            {
              if (v16 >= v11)
              {
                v16 %= v11;
              }
            }

            else
            {
              v16 &= v11 - 1;
            }

            if (v16 != v4)
            {
              break;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  sub_29AC15D78(a1, v10, a4, &v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    v15 = v28;
    *v28 = *v24;
    *v24 = v15;
  }

  else
  {
    v25 = v28;
    *v28 = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    v15 = v28;
    if (*v28)
    {
      v26 = *(*v28 + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28;
      v15 = v28;
    }
  }

  ++*(a1 + 24);
  return v15;
}

void sub_29AC15D60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AC15668(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC15D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v10 = *a3;
  result = sub_29AC15DFC((v8 + 2), &v10);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29AC15DFC(uint64_t a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  sub_29ABD30AC((a1 + 8), v3 + 8);
  *(a1 + 64) = 0;
  return a1;
}

void sub_29AC15E5C(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v14 = 0;
  v15 = v5;
  v6 = &v15;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v14 + i) = byte_29B734F74[v8];
  }

  v9 = v14;
  v10 = a1 + 16;
  sub_29AC15F40(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[73];
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        goto LABEL_11;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_11:
    *a3 = v11;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v10;
}

void sub_29AC15F40(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AC15FDC(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AC15FDC(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AC15FDC(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AC160C0(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AC160C0@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x250);
  *(result + 73) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[73];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AC139B8(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

_DWORD *sub_29AC16194(_DWORD *a1, void *a2)
{
  sub_29AC134AC((a1 + 2), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AC161DC(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29AC14324(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    a3[73] = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[73];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && v16[1] == *v14)
        {
          if (a3)
          {
            sub_29AC136A0(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[73];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AC163D0(a1 + 16, v12, a2);
      v14 = a3 + 1;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void *sub_29AC163D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x250);
  sub_29AC16448((v5 + 1), a3);
  v5[73] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AC16420(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AC16448(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  sub_29AC164A8(a1 + 8, (a2 + 8));
  *(a1 + 568) = *(a2 + 568);
  return a1;
}

uint64_t sub_29AC164A8(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0x18);
  v4[2] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

float sub_29AC16588(__int16 *a1, __int16 *a2)
{
  if (a1 != a2)
  {
    v2 = 0;
    v3 = *a1;
    *a1 = *a2;
    *a2 = v3;
    v4 = *(a1 + 3);
    v5 = *(a1 + 4);
    v6 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v6;
    *(a2 + 3) = v4;
    *(a2 + 4) = v5;
    v7 = a1 + 24;
    v8 = a2 + 24;
    do
    {
      v9 = *&v7[v2];
      __dmb(0xBu);
      v10 = *&v8[v2];
      __dmb(0xBu);
      *&v7[v2] = v10;
      __dmb(0xBu);
      *&v8[v2] = v9;
      v2 += 4;
    }

    while (v2 != 256);
    v14 = *(a1 + 1);
    v11 = *(a2 + 1);
    __dmb(0xBu);
    *(a1 + 1) = v11;
    v12 = v14;
    __dmb(0xBu);
    *(a2 + 1) = v12;
    result = *(a1 + 11);
    *(a1 + 11) = *(a2 + 11);
    *(a2 + 11) = result;
  }

  return result;
}

uint64_t sub_29AC16620(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  sub_29AC164A8(a1 + 8, a3);
  *(a1 + 568) = *(a3 + 560);
  return a1;
}

uint64_t sub_29AC1668C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, (a2 + 4));
  sub_29AC164A8(a1 + 8, (a2 + 8));
  *(a1 + 568) = *(a2 + 568);
  return a1;
}

_DWORD *sub_29AC166EC(_DWORD *a1, void *a2)
{
  sub_29AC13900((a1 + 2), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AC16734(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29AC1465C(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    a3[72] = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[72];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && v16[1] == *v14)
        {
          if (a3)
          {
            sub_29AC1382C(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[72];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AC16928(a1 + 16, v12, a2);
      v14 = a3 + 1;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

uint64_t sub_29AC16928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x248);
  sub_29AC169A0((v5 + 8), a3);
  *(v5 + 576) = a2;
  *v5 = 0;
  return v5;
}

void sub_29AC16978(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

_DWORD *sub_29AC169A0(_DWORD *a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  sub_29AC169F8((a1 + 2), (a2 + 8));
  return a1;
}

uint64_t sub_29AC169F8(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0x250);
  v4[73] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

uint64_t sub_29AC16AD8(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x250);
  v5[73] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

_DWORD *sub_29AC16C30(_DWORD *a1, _DWORD *a2, __int16 *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  sub_29AC169F8((a1 + 2), a3);
  return a1;
}

_DWORD *sub_29AC16C94(_DWORD *a1, uint64_t a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, (a2 + 4));
  sub_29AC169F8((a1 + 2), (a2 + 8));
  return a1;
}

_DWORD *sub_29AC16CEC(_DWORD *a1, void *a2)
{
  sub_29AC13A8C((a1 + 2), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AC16D34(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29AC15F40(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    a3[73] = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[73];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && v16[1] == *v14)
        {
          if (a3)
          {
            sub_29AC139B8(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[73];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AC16F28(a1 + 16, v12, a2);
      v14 = a3 + 1;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void *sub_29AC16F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x250);
  sub_29AC16FA0((v5 + 1), a3);
  v5[73] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AC16F78(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AC16FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  sub_29AC17000(a1 + 8, (a2 + 8));
  *(a1 + 568) = *(a2 + 568);
  return a1;
}

uint64_t sub_29AC17000(uint64_t a1, __int16 *a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  v4 = tbb::internal::allocate_via_handler_v3(0x88);
  v4[16] = 0;
  *v4 = 0;
  *(a1 + 32) = v4;
  *(a1 + 44) = 1082130432;
  __dmb(0xBu);
  *(a1 + 8) = 8;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v6 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v6);
  sub_29AC16588(a1, a2);
  return a1;
}

uint64_t sub_29AC170E0(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x88);
  v5[16] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v11);
  return a1;
}

uint64_t sub_29AC17238(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  sub_29AC17000(a1 + 8, a3);
  *(a1 + 568) = *(a3 + 560);
  return a1;
}

uint64_t sub_29AC172A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, (a2 + 4));
  sub_29AC17000(a1 + 8, (a2 + 8));
  *(a1 + 568) = *(a2 + 568);
  return a1;
}

void sub_29AC17304(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v14 = 0;
  v15 = v5;
  v6 = &v15;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v14 + i) = byte_29B734F74[v8];
  }

  v9 = v14;
  v10 = a1 + 16;
  sub_29AC173E4(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[16];
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && (*a2 ^ v11[1]) < 8)
      {
        goto LABEL_11;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_11:
    *a3 = v11;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v10;
}

void sub_29AC173E4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = sub_29A0EC0EC(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    sub_29AC17480(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AC17480(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AC17480(a1, v4);
  }

  v5 = sub_29A0EC0EC(v4);
  v6 = *(a1 + 8 * v5 + 48);
  __dmb(0xBu);
  v10 = *(v6 + 8 * (v4 - ((1 << v5) & 0x1FFFFFFFFFFFFFFELL)));
  v11 = 0;
  v12 = a2;
  v7 = &v12;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7;
    v7 = (v7 + 1);
    *(&v11 + i) = byte_29B734F74[v9];
  }

  sub_29AC17564(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AC17564@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x88);
  *(result + 16) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[16];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AC13B44(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AC17638(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v24 = 0;
  v25 = v8;
  v9 = &v25;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v24 + i) = byte_29B734F74[v11];
  }

  v12 = v24 | 1;
  sub_29AC173E4(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    a3[16] = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[16];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12 && (*v14 ^ v16[1]) <= 7)
        {
          if (a3)
          {
            sub_29AC13B44(a1 + 16, a3);
          }

          *a4 = v16;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v25 = v16;
        v16 = *v16;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[16];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AC17828(a1 + 16, v12, a2);
      v14 = a3 + 1;
      v15 = v25;
    }

    *a3 = v16;
    while (1)
    {
      v19 = v16;
      atomic_compare_exchange_strong(v15, &v19, a3);
      if (v19 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v22 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v22) > *(a1 + 44))
  {
    do
    {
      v23 = v22;
      atomic_compare_exchange_strong((a1 + 8), &v23, 2 * v22);
    }

    while (v23 != v22 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v22);
  }
}

void *sub_29AC17828(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x88);
  sub_29AC178A0((v5 + 1), a3);
  v5[16] = a2;
  *v5 = 0;
  return v5;
}

void sub_29AC17878(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29AC178A0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29ABD30AC((a1 + 8), (a2 + 1));
  sub_29ABD30AC((a1 + 64), (a2 + 8));
  return a1;
}

void sub_29AC1790C(_Unwind_Exception *a1)
{
  sub_29ABC3488((v1 + 1));
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AC17940(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29ABD30AC((a1 + 8), a3);
  sub_29ABD30AC((a1 + 64), a3 + 56);
  return a1;
}

void sub_29AC179AC(_Unwind_Exception *a1)
{
  sub_29ABC3488((v1 + 1));
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AC179E0(uint64_t a1, void *a2)
{
  *a1 = *a2;
  *a2 = 0;
  sub_29ABD30AC((a1 + 8), (a2 + 1));
  sub_29ABD30AC((a1 + 64), (a2 + 8));
  return a1;
}

void sub_29AC17A34(_Unwind_Exception *a1)
{
  sub_29ABC3488(v2);
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_29AC17A68(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v14 = 0;
  v15 = v5;
  v6 = &v15;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v14 + i) = byte_29B734F74[v8];
  }

  v9 = v14;
  v10 = a1 + 16;
  sub_29AC14AA4(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[2];
      if (v13 > v12)
      {
        break;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        goto LABEL_11;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_11:
    *a3 = v11;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v10;
}

uint64_t sub_29AC17B4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = a2;
  for (i = result; v9 != a4 || a3 != a5; result = sub_29AC184F4(i, v12, a3, &v14))
  {
    v12 = v9;
    do
    {
      v9 = *v9;
    }

    while (v9 && (*(v9 + 584) & 1) == 0);
  }

  *a6 = v9;
  a6[1] = a3;
  return result;
}

void sub_29AC17BDC(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v15 = 0;
  v16 = v5;
  v6 = &v16;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v15 + i) = byte_29B734F74[v8];
  }

  v9 = v15;
  v10 = a1 + 16;
  sub_29AC14324(a1, v5, &v16);
  v11 = v16;
  if (v16)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[73];
      if (v13 > v12)
      {
        v11 = 0;
        v14 = 0;
        goto LABEL_11;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        break;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v14 = v11;
    do
    {
      v14 = *v14;
    }

    while (v14 && (v14[73] & 1) == 0);
LABEL_11:
    *a3 = v11;
    a3[1] = v10;
    a3[2] = v14;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = v10;
    a3[2] = 0;
  }

  a3[3] = v10;
}

uint64_t sub_29AC17CE4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = a2;
  for (i = result; v9 != a4 || a3 != a5; result = sub_29AC17E7C(i, v12, a3, &v14))
  {
    v12 = v9;
    do
    {
      v9 = *v9;
    }

    while (v9 && (*(v9 + 16) & 1) == 0);
  }

  *a6 = v9;
  a6[1] = a3;
  return result;
}

void sub_29AC17D74(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v15 = 0;
  v16 = v5;
  v6 = &v16;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v15 + i) = byte_29B734F74[v8];
  }

  v9 = v15;
  v10 = a1 + 16;
  sub_29AC14AA4(a1, v5, &v16);
  v11 = v16;
  if (v16)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[2];
      if (v13 > v12)
      {
        v11 = 0;
        v14 = 0;
        goto LABEL_11;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        break;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v14 = v11;
    do
    {
      v14 = *v14;
    }

    while (v14 && (v14[2] & 1) == 0);
LABEL_11:
    *a3 = v11;
    a3[1] = v10;
    a3[2] = v14;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = v10;
    a3[2] = 0;
  }

  a3[3] = v10;
}

uint64_t sub_29AC17E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29AC14AA4(a1, bswap64(0x9E3779B97F4A7C55 * (*(a2 + 12) + ((*(a2 + 12) + *(a2 + 8) + (*(a2 + 12) + *(a2 + 8)) * (*(a2 + 12) + *(a2 + 8))) >> 1))), &v12);
  result = a1 + 16;
  v9 = v12;
  if (v12)
  {
    while (1)
    {
      v10 = *v9;
      if (*v9 == a2 && result == a3)
      {
        break;
      }

      v12 = *v9;
      v9 = v10;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v13 = v9;
    return sub_29AC17F30(a2, result, &v13, a4);
  }

  else
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = result;
  }

  return result;
}

uint64_t sub_29AC17F30@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t ****a3@<X1>, uint64_t ***a4@<X8>)
{
  v6 = *this;
  **a3 = *this;
  result = sub_29AC13564(a2, this);
  --*(a2 + 8);
  for (; v6; v6 = *v6)
  {
    if (v6[2])
    {
      break;
    }
  }

  *a4 = v6;
  a4[1] = a2;
  return result;
}

uint64_t sub_29AC17F94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = a2;
  for (i = result; v9 != a4 || a3 != a5; result = sub_29AC1812C(i, v12, a3, &v14))
  {
    v12 = v9;
    do
    {
      v9 = *v9;
    }

    while (v9 && (*(v9 + 576) & 1) == 0);
  }

  *a6 = v9;
  a6[1] = a3;
  return result;
}

void sub_29AC18024(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v15 = 0;
  v16 = v5;
  v6 = &v16;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v15 + i) = byte_29B734F74[v8];
  }

  v9 = v15;
  v10 = a1 + 16;
  sub_29AC1465C(a1, v5, &v16);
  v11 = v16;
  if (v16)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[72];
      if (v13 > v12)
      {
        v11 = 0;
        v14 = 0;
        goto LABEL_11;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        break;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v14 = v11;
    do
    {
      v14 = *v14;
    }

    while (v14 && (v14[72] & 1) == 0);
LABEL_11:
    *a3 = v11;
    a3[1] = v10;
    a3[2] = v14;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = v10;
    a3[2] = 0;
  }

  a3[3] = v10;
}

uint64_t sub_29AC1812C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29AC1465C(a1, bswap64(0x9E3779B97F4A7C55 * (*(a2 + 12) + ((*(a2 + 12) + *(a2 + 8) + (*(a2 + 12) + *(a2 + 8)) * (*(a2 + 12) + *(a2 + 8))) >> 1))), &v12);
  result = a1 + 16;
  v9 = v12;
  if (v12)
  {
    while (1)
    {
      v10 = *v9;
      if (*v9 == a2 && result == a3)
      {
        break;
      }

      v12 = *v9;
      v9 = v10;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v13 = v9;
    return sub_29AC181E0(a2, result, &v13, a4);
  }

  else
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = result;
  }

  return result;
}

uint64_t sub_29AC181E0@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t ****a3@<X1>, uint64_t ***a4@<X8>)
{
  v6 = *this;
  **a3 = *this;
  result = sub_29AC1382C(a2, this);
  --*(a2 + 8);
  for (; v6; v6 = *v6)
  {
    if (v6[72])
    {
      break;
    }
  }

  *a4 = v6;
  a4[1] = a2;
  return result;
}

uint64_t sub_29AC18244@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = a2;
  for (i = result; v9 != a4 || a3 != a5; result = sub_29AC183DC(i, v12, a3, &v14))
  {
    v12 = v9;
    do
    {
      v9 = *v9;
    }

    while (v9 && (*(v9 + 584) & 1) == 0);
  }

  *a6 = v9;
  a6[1] = a3;
  return result;
}

void sub_29AC182D4(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v15 = 0;
  v16 = v5;
  v6 = &v16;
  for (i = 7; i != -1; --i)
  {
    v8 = *v6++;
    *(&v15 + i) = byte_29B734F74[v8];
  }

  v9 = v15;
  v10 = a1 + 16;
  sub_29AC15F40(a1, v5, &v16);
  v11 = v16;
  if (v16)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[73];
      if (v13 > v12)
      {
        v11 = 0;
        v14 = 0;
        goto LABEL_11;
      }

      if (v13 == v12 && v11[1] == *a2)
      {
        break;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v14 = v11;
    do
    {
      v14 = *v14;
    }

    while (v14 && (v14[73] & 1) == 0);
LABEL_11:
    *a3 = v11;
    a3[1] = v10;
    a3[2] = v14;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = v10;
    a3[2] = 0;
  }

  a3[3] = v10;
}