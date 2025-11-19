void sub_29AC5028C(uint64_t *a1)
{
  if ((a1[1] - *a1) >= 0xF9)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x20uLL);
      sub_29A1DE554(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          v8 = (v4 + v5);
          sub_29A377E5C(v7, (v4 + v5), &unk_29B4D6118, &v8)[3] = v6++;
          v4 = *a1;
          v5 += 8;
        }

        while (v6 < (a1[1] - *a1) >> 3);
      }
    }
  }
}

void sub_29AC5035C(_Unwind_Exception *a1)
{
  v3 = sub_29A1DE590(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AC50374(_DWORD *a1, uint64_t a2)
{
  v4 = a1[64];
  v5 = a1[65];
  if (v4 == v5)
  {
    sub_29AC3D6F0(a1, v4 + (v4 >> 1) + 1);
    v5 = a1[65];
  }

  v6 = a1;
  if (v5 >= 0x11)
  {
    v6 = *a1;
  }

  v7 = &v6[4 * a1[64]];
  sub_29A1E21F4(v7, a2);
  result = sub_29A1E2240(v7 + 1, (a2 + 4));
  v9 = *(a2 + 8);
  *(v7 + 1) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v7 + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  ++a1[64];
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens_StaticTokenType::~HdMeshReprDescTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens_StaticTokenType *this)
{
  v8 = (this + 56);
  sub_29A124AB0(&v8);
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 5);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 3);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens_StaticTokenType::HdMeshReprDescTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens_StaticTokenType *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "surfaceShader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "surfaceShaderUnlit", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "surfaceShaderSheer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "surfaceShaderOutline", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "constantColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "hullColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "pointColor", 0);
  v3 = (this + 56);
  v4 = *this;
  v21 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v5;
    }
  }

  v6 = *(this + 1);
  v22 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v7;
    }
  }

  v8 = *(this + 2);
  v23 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v9;
    }
  }

  v10 = *(this + 3);
  v24 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v11;
    }
  }

  v12 = *(this + 4);
  v25 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v13;
    }
  }

  v14 = *(this + 5);
  v26 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v15;
    }
  }

  v16 = *(this + 6);
  v27 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v17;
    }
  }

  *v3 = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  sub_29A12EF7C(v3, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v19 = *(&v21 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC50738(_Unwind_Exception *a1)
{
  v3 = 48;
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
      v5 = v1[6];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[5];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[4];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[3];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[2];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[1];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdRprim *pxrInternal__aapl__pxrReserved__::HdMesh::HdMesh(pxrInternal__aapl__pxrReserved__::HdMesh *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdRprim::HdRprim(this, a2);
  *result = &unk_2A207C7F0;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdMesh::GetBuiltinPrimvarNames(pxrInternal__aapl__pxrReserved__::HdMesh *this)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174A880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174A880))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v2)
    {
      v2 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v3 = *(v2 + 59);
    v10 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 = v4;
      }
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v6 = *(v5 + 54);
    v11 = v6;
    if ((v6 & 7) != 0)
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v7;
      }
    }

    qword_2A174A868 = 0;
    unk_2A174A870 = 0;
    qword_2A174A878 = 0;
    sub_29A12EF7C(&qword_2A174A868, &v10, &v12, 2uLL);
    for (i = 8; i != -8; i -= 8)
    {
      v9 = *(&v10 + i);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_atexit(sub_29A3C73E0, &qword_2A174A868, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174A880);
  }

  return &qword_2A174A868;
}

void sub_29AC509E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174A880);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdMesh::_reprDescConfig(pxrInternal__aapl__pxrReserved__::HdMesh *this)
{
  if ((atomic_load_explicit(&qword_2A174A888, memory_order_acquire) & 1) == 0)
  {
    sub_29B2C6138();
  }

  return &qword_2A174A890;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMesh::ConfigureRepr(pxrInternal__aapl__pxrReserved__::HdMesh *a1, uint64_t *a2, uint64_t *a3)
{
  pxrInternal__aapl__pxrReserved__::HdMesh::_reprDescConfig(a1);
  v6 = a2[1];
  v15 = *a2;
  v16 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v7;
    }
  }

  v8 = *(a2 + 22);
  v10 = *a3;
  v9 = a3[1];
  v17[0] = a2[2];
  *(v17 + 6) = v8;
  v17[2] = v10;
  v18 = v9;
  if ((v9 & 7) != 0)
  {
    v11 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v11;
    }
  }

  v19[0] = a3[2];
  *(v19 + 6) = *(a3 + 22);
  result = sub_29AC50B94(&qword_2A174A890, a1, &v15);
  for (i = 40; i != -24; i -= 32)
  {
    v14 = *(&v15 + i);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AC50B68(_Unwind_Exception *a1)
{
  v2 = 40;
  while (1)
  {
    v3 = *(v1 + v2);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v2 -= 32;
    if (v2 == -24)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AC50B94(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_4:
    sub_29AC51398(v13, a2, a3);
    result = sub_29AC50F38(a1, v13);
    for (i = 6; i != -2; i -= 4)
    {
      v9 = v13[i];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v13[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    while ((*a2 ^ *v6) > 7)
    {
      v6 += 9;
      if (v6 == v5)
      {
        goto LABEL_4;
      }
    }

    for (j = 0; j != 8; j += 4)
    {
      v11 = &v6[j];
      v6[j + 1] = *(a3 + j * 8);
      result = sub_29A166F2C(&v6[j + 2], (a3 + j * 8 + 8));
      v12 = *(a3 + j * 8 + 22);
      v11[3] = *(a3 + j * 8 + 16);
      *(v11 + 30) = v12;
    }
  }

  return result;
}

void sub_29AC50C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B2C6190(v2 - 24, va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdMesh::_GetReprDesc@<X0>(pxrInternal__aapl__pxrReserved__::HdMesh *this@<X0>, _OWORD *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdMesh::_reprDescConfig(this);

  return sub_29AC50CF8(&qword_2A174A890, this, v5, a2);
}

void *sub_29AC50CF8@<X0>(char **a1@<X0>, void *a2@<X1>, char *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v24 = *a1;
  for (i = v7; ; v7 = i)
  {
    if (v6 == v7)
    {
      v24 = "hd/rprim.h";
      i = "Find";
      v26 = 312;
      v27 = "DescArray pxrInternal__aapl__pxrReserved__::HdRprim::_ReprDescConfigs<pxrInternal__aapl__pxrReserved__::HdMeshReprDesc, 2>::Find(const TfToken &) const [DESC_TYPE = pxrInternal__aapl__pxrReserved__::HdMeshReprDesc, N = 2]";
      v28 = 0;
      v10 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        v11 = (v10 + 16);
        if (*(v10 + 39) < 0)
        {
          v11 = *v11;
        }
      }

      else
      {
        v11 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v24, 1, "Repr %s not found", v11);
      v18 = 0;
      a4[2] = 0u;
      a4[3] = 0u;
      *a4 = 0u;
      a4[1] = 0u;
      while (1)
      {
        result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
        if (!result)
        {
          result = sub_29AC514DC(&pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens);
        }

        v19 = *result;
        if ((*result & 7) != 0)
        {
          if ((atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v19 &= 0xFFFFFFFFFFFFFFF8;
          }

          v20 = &a4[v18];
          *v20 = 0;
          v20[1] = v19;
          if ((v19 & 7) != 0)
          {
            v21 = 0;
            if ((atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v20[1] = v19 & 0xFFFFFFFFFFFFFFF8;
            }

            goto LABEL_26;
          }
        }

        else
        {
          v22 = &a4[v18];
          *v22 = 0;
          v22[1] = v19;
        }

        v21 = 1;
LABEL_26:
        v23 = &a4[v18];
        *(v23 + 4) = 65792;
        *(v23 + 20) = 0;
        *(v23 + 6) = 0;
        *(v23 + 14) = 257;
        if ((v21 & 1) == 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v18 += 2;
        if (v18 == 4)
        {
          return result;
        }
      }
    }

    if ((*a2 ^ **sub_29AC51424(&v24, a2, a3)) <= 7)
    {
      break;
    }

    sub_29AC5145C(&v24);
    v6 = v24;
  }

  result = sub_29AC51424(&v24, v8, v9);
  v13 = (*result + 24);
  v14 = a4 + 1;
  v15 = 2;
  do
  {
    v16 = *(v13 - 1);
    *(v14 - 1) = *(v13 - 2);
    *v14 = v16;
    if ((v16 & 7) != 0)
    {
      v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
      {
        *v14 = v17;
      }
    }

    v14[1] = *v13;
    *(v14 + 14) = *(v13 + 6);
    v13 += 4;
    v14 += 4;
    --v15;
  }

  while (v15);
  return result;
}

void sub_29AC50F04(_Unwind_Exception *a1)
{
  for (; v2; v2 -= 32)
  {
    v3 = *(v1 - 24 + v2);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AC50F38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AC50FC0(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = v3 + 2;
    *a2 = 0;
    v5 = a2 + 2;
    v6 = 2;
    do
    {
      *(v4 - 1) = *(v5 - 1);
      *v4 = *v5;
      *v5 = 0;
      v7 = v5[1];
      *(v4 + 14) = *(v5 + 14);
      v4[1] = v7;
      v5 += 4;
      v4 += 4;
      --v6;
    }

    while (v6);
    result = (v3 + 9);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29AC50FC0(uint64_t a1, void *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    v7 = sub_29A09C03C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[72 * v2];
  v19 = v7;
  v20 = v8;
  *(&v21 + 1) = &v7[72 * v6];
  *v8 = *a2;
  v9 = v8 + 16;
  *a2 = 0;
  v10 = a2 + 2;
  v11 = 2;
  do
  {
    *(v9 - 1) = *(v10 - 1);
    *v9 = *v10;
    *v10 = 0;
    v12 = v10[1];
    *(v9 + 14) = *(v10 + 14);
    v9[1] = v12;
    v10 += 4;
    v9 += 4;
    --v11;
  }

  while (v11);
  *&v21 = v8 + 72;
  v13 = *(a1 + 8);
  v14 = &v8[*a1 - v13];
  sub_29AC51140(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29AC51300(&v19);
  return v18;
}

void sub_29AC5112C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AC51300(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AC51140(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = 0;
      *a4 = *v4;
      *v4 = 0;
      do
      {
        v6 = &a4[v5];
        v6[1] = v4[v5 + 1];
        v6[2] = v4[v5 + 2];
        v4[v5 + 2] = 0;
        v7 = v4[v5 + 3];
        *(v6 + 30) = *(&v4[v5 + 3] + 6);
        v6[3] = v7;
        v5 += 4;
      }

      while (v5 != 8);
      v4 += 9;
      a4 = v12 + 9;
      v12 += 9;
    }

    while (v4 != a3);
  }

  v10 = 1;
  sub_29AC51210(a1, a2, a3);
  return sub_29AC51264(v9);
}

void sub_29AC51210(uint64_t a1, void *a2, void *a3)
{
  for (; a2 != a3; a2 += 9)
  {
    for (i = 6; i != -2; i -= 4)
    {
      v4 = a2[i];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((*a2 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

uint64_t sub_29AC51264(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC512B0(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_29AC512B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  while (a3 != a5)
  {
    for (i = -24; i != -88; i -= 32)
    {
      v6 = *(a3 + i);
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v8 = *(a3 - 72);
    a3 -= 72;
    v7 = v8;
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

uint64_t sub_29AC51300(uint64_t a1)
{
  sub_29AC51338(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AC51338(uint64_t result, uint64_t a2)
{
  for (i = *(result + 16); i != a2; i = *(result + 16))
  {
    v3 = (i - 72);
    *(result + 16) = i - 72;
    for (j = -24; j != -88; j -= 32)
    {
      v5 = *(i + j);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((*v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t *sub_29AC51398(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  for (i = 0; i != 8; i += 4)
  {
    v5 = &result[i];
    v6 = a3 + i * 8;
    v5[1] = *(a3 + i * 8);
    v7 = *(a3 + i * 8 + 8);
    v5[2] = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v5[2] &= 0xFFFFFFFFFFFFFFF8;
    }

    v8 = *(v6 + 16);
    *(v5 + 30) = *(v6 + 22);
    v5[3] = v8;
  }

  return result;
}

void *sub_29AC51424(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B2C61D4(result, a2, a3);
  }

  return result;
}

void *sub_29AC5145C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, std::array<pxrInternal__aapl__pxrReserved__::HdMeshReprDesc, 2>>>>::operator++() [T = const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, std::array<pxrInternal__aapl__pxrReserved__::HdMeshReprDesc, 2>>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 72;
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens_StaticTokenType *sub_29AC514DC(atomic_ullong *a1)
{
  result = sub_29AC51524();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens_StaticTokenType::~HdMeshReprDescTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens_StaticTokenType *sub_29AC51524()
{
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::HdMeshReprDescTokens_StaticTokenType::HdMeshReprDescTokens_StaticTokenType(v0);
  return v0;
}

void pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens_StaticTokenType::~HdMeshSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens_StaticTokenType *this)
{
  v6 = (this + 40);
  sub_29A124AB0(&v6);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 2);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 1);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens_StaticTokenType::HdMeshSchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "mesh", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "topology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "subdivisionScheme", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "subdivisionTags", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "doubleSided", 0);
  v3 = (this + 40);
  v4 = *this;
  v17 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v5;
    }
  }

  v6 = *(this + 1);
  v18 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v7;
    }
  }

  v8 = *(this + 2);
  v19 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v9;
    }
  }

  v10 = *(this + 3);
  v20 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v11;
    }
  }

  v12 = *(this + 4);
  v21 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v13;
    }
  }

  *v3 = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  sub_29A12EF7C(v3, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v15 = *(&v17 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC517D4(_Unwind_Exception *a1)
{
  v3 = 32;
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
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetTopology(pxrInternal__aapl__pxrReserved__::HdMeshSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  v5 = *(v4 + 1);
  v10 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v6;
    }
  }

  sub_29ABC2F3C(this, &v11);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    v9 = v12;
    *a2 = v8;
    a2[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a2 = v11;
    a2[1] = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSubdivisionScheme(pxrInternal__aapl__pxrReserved__::HdMeshSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
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

  sub_29ABC4C48(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSubdivisionTags(pxrInternal__aapl__pxrReserved__::HdMeshSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  v5 = *(v4 + 3);
  v10 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v6;
    }
  }

  sub_29ABC2F3C(this, &v11);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v7);
    v9 = v12;
    *a2 = v8;
    a2[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a2 = v11;
    a2[1] = 0;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDoubleSided(pxrInternal__aapl__pxrReserved__::HdMeshSchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
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

  sub_29ABCB628(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdMeshSchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v9 = &v38;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v10 = v40;
  if (*a1)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    if (!v12)
    {
      v12 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    }

    v9 = v39;
    v10 = v40 + 1;
    sub_29A166F2C(v40, v12 + 1);
    v14 = *a1;
    v13 = a1[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(&v38 + 1);
    *&v38 = v14;
    *(&v38 + 1) = v13;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (*a2)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    if (!v17)
    {
      v17 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    }

    sub_29A166F2C(v10, v17 + 2);
    ++v16;
    v19 = *a2;
    v18 = a2[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(v9 + 1);
    *v9 = v19;
    *(v9 + 1) = v18;
    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }

  if (*a3)
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    if (!v21)
    {
      v21 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    }

    sub_29A166F2C(v40 + v16, v21 + 3);
    v22 = v16 + 1;
    v23 = &v39[v16 - 1];
    v25 = *a3;
    v24 = a3[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = v23[1];
    *v23 = v25;
    v23[1] = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  else
  {
    v22 = v16;
  }

  if (*a4)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    if (!v27)
    {
      v27 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    }

    sub_29A166F2C(v40 + v22, v27 + 4);
    v28 = v22 + 1;
    v29 = &v39[v22 - 1];
    v31 = *a4;
    v30 = a4[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = v29[1];
    *v29 = v31;
    v29[1] = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v28 = v22;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v28, v40, &v38, &v37);
  *a5 = v37;
  for (i = 56; i != -8; i -= 16)
  {
    v34 = *(&v39[-1] + i);
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  for (j = 24; j != -8; j -= 8)
  {
    v36 = *(v40 + j);
    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC51E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = 56;
  while (1)
  {
    v21 = *(&a11 + v20);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v20 -= 16;
    if (v20 == -8)
    {
      v22 = 24;
      while (1)
      {
        v23 = *(&a19 + v22);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v22 -= 8;
        if (v22 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetTopology(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetSubdivisionScheme(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetSubdivisionTags(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetDoubleSided(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens))
    {
      sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdMeshSchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!result)
  {
    return sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A8E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174A8E0))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A174A8A8, v2);
    __cxa_atexit(sub_29ABC33B4, &unk_2A174A8A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174A8E0);
  }

  return &unk_2A174A8A8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetTopologyLocator(pxrInternal__aapl__pxrReserved__::HdMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A920, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A920);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174A8A8, (v3 + 8), dword_2A174A8E8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A8E8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A920);
    }
  }

  return dword_2A174A8E8;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSubdivisionSchemeLocator(pxrInternal__aapl__pxrReserved__::HdMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A960, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A960);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174A8A8, (v3 + 16), dword_2A174A928);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A928, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A960);
    }
  }

  return dword_2A174A928;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetSubdivisionTagsLocator(pxrInternal__aapl__pxrReserved__::HdMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A9A0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A9A0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174A8A8, (v3 + 24), dword_2A174A968);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A968, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A9A0);
    }
  }

  return dword_2A174A968;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDoubleSidedLocator(pxrInternal__aapl__pxrReserved__::HdMeshSchema *this)
{
  if ((atomic_load_explicit(&qword_2A174A9E0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174A9E0);
    if (v2)
    {
      pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDefaultLocator(v2);
      v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      if (!v3)
      {
        v3 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&unk_2A174A8A8, (v3 + 32), dword_2A174A9A8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A9A8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174A9E0);
    }
  }

  return dword_2A174A9A8;
}

void sub_29AC5252C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_OPENSUBDIV3_ADAPTIVE))
  {
    sub_29B2C6230();
  }
}

pxrInternal__aapl__pxrReserved__::HdMeshTopology *pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(pxrInternal__aapl__pxrReserved__::HdMeshTopology *this)
{
  *this = &unk_2A207C868;
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology((this + 8));
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 24) = 0u;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v3)
  {
    v3 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v2, (v3 + 176));
  return this;
}

pxrInternal__aapl__pxrReserved__::HdMeshTopology *pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(pxrInternal__aapl__pxrReserved__::HdMeshTopology *this, const pxrInternal__aapl__pxrReserved__::HdMeshTopology *a2, int a3)
{
  *this = &unk_2A207C868;
  sub_29AB72C00(this + 8, a2 + 1);
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  sub_29AC534F4(this + 48, *(a2 + 48), *(a2 + 49), (*(a2 + 49) - *(a2 + 48)) >> 6);
  v6 = *(a2 + 424);
  *(this + 408) = *(a2 + 408);
  *(this + 424) = v6;
  v7 = *(a2 + 55);
  *(this + 55) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(this + 54))
    {
      v8 = *(this + 54);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 29);
  *(this + 28) = *(a2 + 28);
  *(this + 29) = v9;
  v10 = *(a2 + 60);
  *(this + 60) = v10;
  if (v10)
  {
    v11 = (v10 - 16);
    if (*(this + 59))
    {
      v11 = *(this + 59);
    }

    atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
  }

  *(this + 122) = a3;
  *(this + 123) = *(a2 + 123);
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v12)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v13)
  {
    v13 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v12, (v13 + 176));
  return this;
}

pxrInternal__aapl__pxrReserved__::HdMeshTopology *pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(pxrInternal__aapl__pxrReserved__::HdMeshTopology *this, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2, int a3)
{
  *this = &unk_2A207C868;
  sub_29AB72C00(this + 8, a2);
  *(this + 60) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 122) = a3;
  *(this + 123) = 0;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v6)
  {
    v6 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v5, (v6 + 176));
  if (*(this + 8) < 1)
  {
    v12 = 0;
  }

  else
  {
    v7 = *(this + 12);
    v8 = *(this + 8) & 0x7FFFFFFFLL;
    v9 = -1;
    do
    {
      v11 = *v7++;
      v10 = v11;
      if (v9 <= v11)
      {
        v9 = v10;
      }

      --v8;
    }

    while (v8);
    v12 = v9 + 1;
  }

  *(this + 123) = v12;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshTopology::ComputeNumPoints(void *a1)
{
  if (*a1 < 1)
  {
    return 0;
  }

  v1 = a1[4];
  v2 = *a1 & 0x7FFFFFFFLL;
  v3 = -1;
  do
  {
    v5 = *v1++;
    v4 = v5;
    if (v3 <= v5)
    {
      v3 = v4;
    }

    --v2;
  }

  while (v2);
  return (v3 + 1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *a1 = &unk_2A207C868;
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a1 + 8, a2, a3, a4, a5);
  *(a1 + 480) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 488) = a6;
  *(a1 + 492) = 0;
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v9)
  {
    v9 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v8, (v9 + 176));
  if (*(a1 + 64) < 1)
  {
    v15 = 0;
  }

  else
  {
    v10 = *(a1 + 96);
    v11 = *(a1 + 64) & 0x7FFFFFFFLL;
    v12 = -1;
    do
    {
      v14 = *v10++;
      v13 = v14;
      if (v12 <= v14)
      {
        v12 = v13;
      }

      --v11;
    }

    while (v11);
    v15 = v12 + 1;
  }

  *(a1 + 492) = v15;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *a1 = &unk_2A207C868;
  pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::PxOsdMeshTopology(a1 + 8);
  *(a1 + 480) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 488) = a7;
  *(a1 + 492) = 0;
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v10)
  {
    v10 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v9, (v10 + 176));
  if (*(a1 + 64) < 1)
  {
    v16 = 0;
  }

  else
  {
    v11 = *(a1 + 96);
    v12 = *(a1 + 64) & 0x7FFFFFFFLL;
    v13 = -1;
    do
    {
      v15 = *v11++;
      v14 = v15;
      if (v13 <= v15)
      {
        v13 = v14;
      }

      --v12;
    }

    while (v12);
    v16 = v13 + 1;
  }

  *(a1 + 492) = v16;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(pxrInternal__aapl__pxrReserved__::HdMeshTopology *this)
{
  *this = &unk_2A207C868;
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v2)
  {
    v2 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::DecrementCounter(v1, (v2 + 176));
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

{
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshTopology::operator=(uint64_t a1, uint64_t a2)
{
  sub_29AC52D28(a1 + 8, a2 + 8);
  if (a1 != a2)
  {
    sub_29AC52FEC(a1 + 384, *(a2 + 384), *(a2 + 392), (*(a2 + 392) - *(a2 + 384)) >> 6);
  }

  *(a1 + 488) = *(a2 + 488);
  sub_29A27CF04((a1 + 408), (a2 + 408));
  sub_29A27CF04((a1 + 448), (a2 + 448));
  return a1;
}

uint64_t sub_29AC52D28(uint64_t a1, uint64_t a2)
{
  sub_29A166F2C(a1, a2);
  sub_29A166F2C((a1 + 8), (a2 + 8));
  sub_29A27CF04((a1 + 16), (a2 + 16));
  sub_29A27CF04((a1 + 56), (a2 + 56));
  sub_29A27CF04((a1 + 96), (a2 + 96));
  sub_29AC52F60(a1 + 136, a2 + 136);
  v4 = atomic_load((a2 + 368));
  atomic_store(v4 & 1, (a1 + 368));
  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::HdMeshTopology::IsEnabledAdaptive(pxrInternal__aapl__pxrReserved__::HdMeshTopology *this)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_ENABLE_OPENSUBDIV3_ADAPTIVE);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
  }

  return *v1 == 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshTopology::operator==(uint64_t a1, uint64_t a2)
{
  result = pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::operator==((a1 + 8), (a2 + 8));
  if (result)
  {
    v5 = *(a1 + 384);
    v6 = *(a1 + 392);
    v7 = *(a2 + 384);
    if (v6 - v5 == *(a2 + 392) - v7)
    {
      while (v5 != v6)
      {
        result = pxrInternal__aapl__pxrReserved__::operator==(v5, v7);
        if (!result)
        {
          return result;
        }

        v5 += 64;
        v7 += 64;
      }

      result = pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==(a1 + 408, a2 + 408);
      if (result)
      {
        result = pxrInternal__aapl__pxrReserved__::UsdSkelTopology::operator==(a1 + 448, a2 + 448);
        if (result)
        {
          return *(a1 + 488) == *(a2 + 488);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdMeshTopology::ComputeHash(pxrInternal__aapl__pxrReserved__ **this)
{
  v2 = pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology::ComputeHash(this + 1);
  v3 = pxrInternal__aapl__pxrReserved__::ArchHash64((this + 61), 4, v2);
  v4 = this[48];
  v5 = this[49];
  while (v4 != v5)
  {
    v6 = pxrInternal__aapl__pxrReserved__::ArchHash64(v4, 4, v3);
    v7 = pxrInternal__aapl__pxrReserved__::ArchHash64((v4 + 4), 8, v6);
    v8 = pxrInternal__aapl__pxrReserved__::ArchHash64((v4 + 12), 8, v7);
    v3 = pxrInternal__aapl__pxrReserved__::ArchHash64(*(v4 + 7), (4 * *(v4 + 3)), v8);
    v4 = (v4 + 64);
  }

  return v3;
}

uint64_t sub_29AC52F60(uint64_t a1, uint64_t a2)
{
  sub_29A166F2C(a1, a2);
  sub_29A166F2C((a1 + 8), (a2 + 8));
  sub_29A166F2C((a1 + 16), (a2 + 16));
  sub_29A166F2C((a1 + 24), (a2 + 24));
  sub_29A27CF04((a1 + 32), (a2 + 32));
  sub_29A27CF04((a1 + 72), (a2 + 72));
  sub_29A41712C((a1 + 112), (a2 + 112));
  sub_29A27CF04((a1 + 152), (a2 + 152));
  sub_29A41712C((a1 + 192), (a2 + 192));
  return a1;
}

uint64_t sub_29AC52FEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 6)
  {
    sub_29AC5312C(a1);
    if (a4 >> 58)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 5;
    if (v9 >> 5 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v11 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A1BF94C(a1, v11);
    result = sub_29AC53198(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 6)
  {
    sub_29AC533C0(&v15, a2, a2 + v13, v8);
    result = sub_29AC53198(a1, a2 + v13, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29AC533C0(&v16, a2, a3, v8);
  if (*(a1 + 8) != v14)
  {
    sub_29AC53360();
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_29AC5312C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      sub_29AC53360();
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29AC53198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AC53244(a1, v4, v6);
      v6 += 64;
      v4 = v12 + 64;
      v12 += 64;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AC532D4(v9);
  return v4;
}

_DWORD *sub_29AC53244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  sub_29A1E21F4((a2 + 4), (a3 + 4));
  sub_29A1E2240((a2 + 8), (a3 + 8));
  sub_29A1E21F4((a2 + 12), (a3 + 12));
  result = sub_29A1E2240((a2 + 16), (a3 + 16));
  v6 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = v6;
  v7 = *(a3 + 56);
  *(a2 + 56) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(a2 + 48))
    {
      v8 = *(a2 + 48);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29AC532D4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AC5330C(a1);
  }

  return a1;
}

uint64_t sub_29AC5330C(uint64_t result)
{
  if (**(result + 16) != **(result + 8))
  {
    sub_29AC53360();
  }

  return result;
}

uint64_t sub_29AC533C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    sub_29A2258F0((a4 + 4), (v5 + 4));
    sub_29A225948((a4 + 8), (v5 + 8));
    sub_29A2258F0((a4 + 12), (v5 + 12));
    sub_29A225948((a4 + 16), (v5 + 16));
    sub_29A27CF04((a4 + 24), (v5 + 24));
    a4 += 64;
    v5 += 64;
  }

  while (v5 != v6);
  return v6;
}

void sub_29AC5346C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29AC53360();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void *sub_29AC534F4(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1BF94C(result, a4);
    result = sub_29AC53198(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AC5355C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AC5346C(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType::~HdMeshTopologySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType *this)
{
  v8 = (this + 56);
  sub_29A124AB0(&v8);
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 5);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 3);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType::HdMeshTopologySchemaTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "topology", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "faceVertexCounts", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "faceVertexIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "holeIndices", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "orientation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "leftHanded", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "rightHanded", 0);
  v3 = (this + 56);
  v4 = *this;
  v21 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v5;
    }
  }

  v6 = *(this + 1);
  v22 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v7;
    }
  }

  v8 = *(this + 2);
  v23 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v9;
    }
  }

  v10 = *(this + 3);
  v24 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v11;
    }
  }

  v12 = *(this + 4);
  v25 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v13;
    }
  }

  v14 = *(this + 5);
  v26 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v15;
    }
  }

  v16 = *(this + 6);
  v27 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v17;
    }
  }

  *v3 = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  sub_29A12EF7C(v3, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v19 = *(&v21 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AC53888(_Unwind_Exception *a1)
{
  v3 = 48;
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
      v5 = v1[6];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[5];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[4];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[3];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[2];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[1];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetFaceVertexCounts(pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
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

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetFaceVertexIndices(pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetHoleIndices(pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
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

  sub_29ABC4A68(this, a2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetOrientation(pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
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

void pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::BuildRetained(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v9 = &v38;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v10 = v40;
  if (*a1)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
    if (!v12)
    {
      v12 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
    }

    v9 = v39;
    v10 = v40 + 1;
    sub_29A166F2C(v40, v12 + 1);
    v14 = *a1;
    v13 = a1[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(&v38 + 1);
    *&v38 = v14;
    *(&v38 + 1) = v13;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (*a2)
  {
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
    if (!v17)
    {
      v17 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
    }

    sub_29A166F2C(v10, v17 + 2);
    ++v16;
    v19 = *a2;
    v18 = a2[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(v9 + 1);
    *v9 = v19;
    *(v9 + 1) = v18;
    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }

  if (*a3)
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
    if (!v21)
    {
      v21 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
    }

    sub_29A166F2C(v40 + v16, v21 + 3);
    v22 = v16 + 1;
    v23 = &v39[v16 - 1];
    v25 = *a3;
    v24 = a3[1];
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = v23[1];
    *v23 = v25;
    v23[1] = v24;
    if (v26)
    {
      sub_29A014BEC(v26);
    }
  }

  else
  {
    v22 = v16;
  }

  if (*a4)
  {
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
    if (!v27)
    {
      v27 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
    }

    sub_29A166F2C(v40 + v22, v27 + 4);
    v28 = v22 + 1;
    v29 = &v39[v22 - 1];
    v31 = *a4;
    v30 = a4[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v32 = v29[1];
    *v29 = v31;
    v29[1] = v30;
    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  else
  {
    v28 = v22;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v28, v40, &v38, &v37);
  *a5 = v37;
  for (i = 56; i != -8; i -= 16)
  {
    v34 = *(&v39[-1] + i);
    if (v34)
    {
      sub_29A014BEC(v34);
    }
  }

  for (j = 24; j != -8; j -= 8)
  {
    v36 = *(v40 + j);
    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AC53EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = 56;
  while (1)
  {
    v21 = *(&a11 + v20);
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    v20 -= 16;
    if (v20 == -8)
    {
      v22 = 24;
      while (1)
      {
        v23 = *(&a19 + v22);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v22 -= 8;
        if (v22 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexCounts(void *a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetFaceVertexIndices(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetHoleIndices(uint64_t a1, uint64_t *a2)
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

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::Builder::SetOrientation(uint64_t a1, uint64_t *a2)
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

void pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetFromParent(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens))
    {
      sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
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

pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetSchemaToken(pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!result)
  {
    return sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::GetDefaultLocator(pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema *this)
{
  if ((atomic_load_explicit(&qword_2A174AA20, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A174AA20);
    if (v2)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdMeshSchema::GetDefaultLocator(v2);
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v4, dword_2A174A9E8);
      __cxa_atexit(sub_29ABC33B4, dword_2A174A9E8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AA20);
    }
  }

  return dword_2A174A9E8;
}

double pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema::BuildOrientationDataSource@<D0>(pxrInternal__aapl__pxrReserved__::HdMeshTopologySchema *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
  }

  if ((*(v5 + 5) ^ *this) > 7)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
    if (!v7)
    {
      v7 = sub_29ABF6EE4(&pxrInternal__aapl__pxrReserved__::HdMeshTopologySchemaTokens);
    }

    if ((*(v7 + 6) ^ *this) > 7)
    {
      sub_29ABCCFA4(this, &v11);
      result = *&v11;
      *a2 = v11;
      return result;
    }

    if ((atomic_load_explicit(&qword_2A174AA50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AA50))
    {
      sub_29ABCCFA4(this, &qword_2A174AA40);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174AA40, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AA50);
    }

    v6 = &qword_2A174AA40;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174AA38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174AA38))
    {
      sub_29ABCCFA4(this, &qword_2A174AA28);
      __cxa_atexit(sub_29ABCD02C, &qword_2A174AA28, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174AA38);
    }

    v6 = &qword_2A174AA28;
  }

  v9 = *v6;
  v8 = v6[1];
  *a2 = v9;
  *(a2 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangleIndices(uint64_t a1, unint64_t *a2, void *a3, void *a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (a2 && a3)
    {
      v55 = *(v4 + 96);
      v44 = *(v4 + 136);
      v6 = *(v4 + 24);
      v7 = *(v4 + 56);
      v8 = *(v4 + 64);
      v47 = *(v4 + 104);
      if (v6 < 1)
      {
        v14 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *(v7 + 4 * v9);
          if (v13 <= 2)
          {
            while ((v6 & 0x7FFFFFFF) - 1 != v9)
            {
              v13 = *(v7 + 4 + 4 * v9++);
              if (v13 >= 3)
              {
                v11 = 1;
                goto LABEL_10;
              }
            }

            v14 = v10;
            goto LABEL_21;
          }

LABEL_10:
          if (v12 < v47 && v9 == *(v44 + 4 * v12))
          {
            ++v12;
          }

          else
          {
            v10 = v10 + v13 - 2;
          }

          ++v9;
        }

        while (v9 != (v6 & 0x7FFFFFFF));
        v14 = v10;
        if ((v11 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_21:
        v63 = "hd/meshUtil.cpp";
        v64 = "ComputeTriangleIndices";
        v65 = 102;
        v66 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangleIndices(VtVec3iArray *, VtIntArray *, VtIntArray *) const";
        v67 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v63, "degenerated face found [%s]", v16, Text);
      }

LABEL_23:
      v43 = a1;
      LODWORD(v64) = 0;
      v63 = 0;
      v68[0] = &v63;
      sub_29A21C418(a2, v14, v68);
      LODWORD(v68[0]) = 0;
      v63 = v68;
      sub_29A19D7EC(a3, v14, &v63);
      if (a4)
      {
        LODWORD(v68[0]) = 0;
        v63 = v68;
        sub_29A19D7EC(a4, v14, &v63);
      }

      v17 = *(a1 + 8);
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v18)
      {
        v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v19 = a2;
      if (v6 >= 1)
      {
        v20 = 0;
        v54 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v57 = *(v18 + 71) ^ *(v17 + 16);
        v58 = v8;
        v25 = v6 & 0x7FFFFFFF;
        v45 = v25;
        v46 = v7;
        do
        {
          v26 = *(v7 + 4 * v20);
          v53 = (v26 - 3);
          if (v26 >= 3)
          {
            if (v21 < v47 && v20 == *(v44 + 4 * v21))
            {
              ++v21;
            }

            else
            {
              v51 = v21;
              v27 = 0;
              v28 = 0;
              v52 = v20;
              v62 = 4 * v20;
              v29 = 12 * v24;
              v48 = v24;
              v49 = v23;
              v30 = 4 * v24;
              v56 = v23;
              v31 = v23 + 2;
              v50 = v22;
              v32 = (v55 + 8 + 4 * v23);
              do
              {
                sub_29A21C6E0(v19);
                v33 = *(v19 + 32);
                if (v31 + v27 >= v58)
                {
                  v36 = v33 + v29;
                  *v36 = 0;
                  *(v36 + 8) = 0;
                  v54 = 1;
                }

                else
                {
                  v34 = (v33 + v29);
                  *v34 = *(v55 + 4 * v56);
                  if (v57 >= 8)
                  {
                    v34[1] = *v32;
                    v35 = *(v32 - 1);
                  }

                  else
                  {
                    v34[1] = *(v32 - 1);
                    v35 = *v32;
                  }

                  v34[2] = v35;
                }

                if (v26 != 3)
                {
                  if (v27)
                  {
                    if (v53 == v27)
                    {
                      v28 = 2;
                    }

                    else
                    {
                      v28 = 3;
                    }

                    if (v53 == v27 && v57 >= 8)
                    {
                      sub_29A21C6E0(v19);
                      v37 = *(v19 + 32) + v29;
                      v38 = *v37;
                      *v37 = *(v37 + 8);
                      *(v37 + 4) = v38;
                      v28 = 2;
                    }
                  }

                  else
                  {
                    if (v57 >= 8)
                    {
                      sub_29A21C6E0(v19);
                      v39 = *(v19 + 32) + v29;
                      v40 = *v39;
                      *v39 = *(v39 + 4);
                      *(v39 + 8) = v40;
                    }

                    v28 = 1;
                  }

                  ++v22;
                }

                sub_29A19DBEC(a3);
                *(a3[4] + v30 + 4 * v27) = v28 & 3 | v62;
                if (a4)
                {
                  sub_29A19DBEC(a4);
                  *(a4[4] + v30 + 4 * v27) = v22;
                }

                ++v27;
                v29 += 12;
                ++v32;
                v19 = a2;
              }

              while (v26 - 2 != v27);
              v23 = v49;
              v24 = v48 + v27;
              v25 = v45;
              v7 = v46;
              v20 = v52;
              v22 = v50;
              v21 = v51;
            }
          }

          v23 += v26;
          v22 += v26;
          ++v20;
        }

        while (v20 != v25);
        if (v54)
        {
          v63 = "hd/meshUtil.cpp";
          v64 = "ComputeTriangleIndices";
          v65 = 197;
          v66 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangleIndices(VtVec3iArray *, VtIntArray *, VtIntArray *) const";
          v67 = 0;
          v41 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v43 + 16));
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v63, "numVerts and verts are incosistent [%s]", v42, v41);
        }
      }
    }

    else
    {
      v63 = "hd/meshUtil.cpp";
      v64 = "ComputeTriangleIndices";
      v65 = 74;
      v66 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangleIndices(VtVec3iArray *, VtIntArray *, VtIntArray *) const";
      v67 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v63, 1, "No output buffer provided for triangulation");
    }
  }

  else
  {
    v63 = "hd/meshUtil.cpp";
    v64 = "ComputeTriangleIndices";
    v65 = 69;
    v66 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangleIndices(VtVec3iArray *, VtIntArray *, VtIntArray *) const";
    v67 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v63, 1, "No topology provided for triangulation");
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangulatedFaceVaryingPrimvar(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v459 = *MEMORY[0x29EDCA608];
  v444 = *(a1 + 8);
  if (v444)
  {
    if (a5)
    {
      v7 = *(a1 + 8);
      if (*(v444 + 488) < 1)
      {
        v447 = *(v444 + 104);
        v8 = *(v444 + 136);
        v448 = v8;
        if (v8)
        {
          v9 = (v8 - 16);
          if (*(v444 + 128))
          {
            v9 = *(v444 + 128);
          }

          atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
          v7 = *(a1 + 8);
        }
      }

      else
      {
        v448 = 0;
        LODWORD(v447) = 0;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v10)
      {
        v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v446 = *(v10 + 71) ^ *(v7 + 16);
      if (a4 <= 18)
      {
        if (a4 <= 14)
        {
          if (a4 != 13)
          {
            if (a4 == 14)
            {
              v11 = v447;
              if (*(v444 + 24) < 1)
              {
                v18 = 0;
              }

              else
              {
                v12 = 0;
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = *(v444 + 24) & 0x7FFFFFFFLL;
                do
                {
                  while (1)
                  {
                    v17 = *(*(v444 + 56) + 4 * v12);
                    if (v17 >= 3)
                    {
                      break;
                    }

                    v13 = 1;
                    v101 = v16 - 1 == v12++;
                    if (v101)
                    {
                      v18 = v14;
                      goto LABEL_130;
                    }
                  }

                  if (v15 < v447 && v12 == *(v448 + 4 * v15))
                  {
                    ++v15;
                  }

                  else
                  {
                    v14 = v14 + 3 * v17 - 6;
                  }

                  ++v12;
                }

                while (v16 != v12);
                v18 = v14;
                if (v13)
                {
LABEL_130:
                  v454 = "hd/meshUtil.cpp";
                  v455 = "_TriangulateFaceVarying";
                  v456 = 233;
                  v457 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
                  LOBYTE(v458) = 0;
                  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v454, "degenerated face found [%s]", v85, Text);
                }
              }

              sub_29A190B18(&v454, v18);
              v252 = *(v444 + 24);
              if (v252 < 1)
              {
                goto LABEL_287;
              }

              v253 = 0;
              v440 = 0;
              v254 = 0;
              v255 = 0;
              v256 = 0;
              v257 = a3;
LABEL_261:
              v258 = *(*(v444 + 56) + 4 * v253);
              if (v258 < 3)
              {
                goto LABEL_284;
              }

              if (v256 < v11 && v253 == *(v448 + 4 * v256))
              {
                ++v256;
                goto LABEL_284;
              }

              v406 = v256;
              v414 = v254;
              v422 = v253;
              v259 = 0;
              v260 = v254;
              v262 = v446 > 7 && v258 != 3;
              v400 = *(*(v444 + 56) + 4 * v253);
              v263 = 8 * v255 + 16;
              v432 = -(v258 - 3);
              v264 = -(v258 - 2);
              v265 = v254 + 2;
              v266 = (a2 + 16 + 8 * v254);
              while (1)
              {
                sub_29A190F50(&v454);
                v267 = v458;
                v268 = v458 + v263;
                v269 = (v458 + v263 - 16);
                if (v265 >= v257)
                {
                  *v269 = 0;
                  v269[1] = 0;
                  v440 = 1;
                  v269[2] = 0;
                  if (v262)
                  {
LABEL_277:
                    if (v259)
                    {
                      if (v432 == v259)
                      {
                        sub_29A190F50(&v454);
                        v270 = v458;
                        sub_29A190F50(&v454);
                        v271 = v458;
                        v272 = *(v270 + v263 - 8);
                        *(v270 + v263 - 8) = *(v458 + v263);
                        *(v271 + v263) = v272;
                        sub_29A190F50(&v454);
                        v273 = v458;
                        sub_29A190F50(&v454);
                        v274 = v458 + v263;
                        v275 = *(v273 + v263 - 16);
                        *(v273 + v263 - 16) = *(v458 + v263 - 8);
                        *(v274 - 8) = v275;
                      }
                    }

                    else
                    {
                      sub_29A190F50(&v454);
                      v276 = v458;
                      sub_29A190F50(&v454);
                      v277 = v458 + v263;
                      v278 = *(v276 + v263 - 16);
                      *(v276 + v263 - 16) = *(v458 + v263 - 8);
                      *(v277 - 8) = v278;
                      sub_29A190F50(&v454);
                      v279 = v458;
                      sub_29A190F50(&v454);
                      v280 = v458;
                      v281 = *(v279 + v263 - 8);
                      *(v279 + v263 - 8) = *(v458 + v263);
                      *(v280 + v263) = v281;
                    }
                  }
                }

                else
                {
                  *v269 = *(a2 + 8 * v260);
                  if (v446 < 8)
                  {
                    *(v268 - 8) = *(v266 - 1);
                    *(v267 + v263) = *v266;
                  }

                  else
                  {
                    *(v268 - 8) = *v266;
                    *(v267 + v263) = *(v266 - 1);
                    if (v262)
                    {
                      goto LABEL_277;
                    }
                  }
                }

                v263 += 24;
                v255 += 3;
                --v259;
                ++v265;
                ++v266;
                if (v264 == v259)
                {
                  v252 = *(v444 + 24);
                  v11 = v447;
                  v254 = v414;
                  v253 = v422;
                  v256 = v406;
                  v258 = v400;
LABEL_284:
                  v254 += v258;
                  if (++v253 >= v252)
                  {
                    if (v440)
                    {
                      v449 = "hd/meshUtil.cpp";
                      v450 = "_TriangulateFaceVarying";
                      v451 = 276;
                      v452 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
                      v453 = 0;
                      v282 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
                      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v449, "numVerts and verts are incosistent [%s]", v283, v282);
                    }

LABEL_287:
                    sub_29A191084(a5, &v454);
                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
                  }

                  goto LABEL_261;
                }
              }
            }

LABEL_120:
            v454 = "hd/meshUtil.cpp";
            v455 = "ComputeTriangulatedFaceVaryingPrimvar";
            v456 = 344;
            v457 = "BOOL pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangulatedFaceVaryingPrimvar(const void *, int, HdType, VtValue *) const";
            LOBYTE(v458) = 0;
            v75 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v454, 1, "Unsupported primvar type for triangulation [%s]", v75);
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          v43 = v447;
          if (*(v444 + 24) < 1)
          {
            v50 = 0;
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = *(v444 + 24) & 0x7FFFFFFFLL;
            do
            {
              while (1)
              {
                v49 = *(*(v444 + 56) + 4 * v44);
                if (v49 >= 3)
                {
                  break;
                }

                v45 = 1;
                v101 = v48 - 1 == v44++;
                if (v101)
                {
                  v50 = v46;
                  goto LABEL_122;
                }
              }

              if (v47 < v447 && v44 == *(v448 + 4 * v47))
              {
                ++v47;
              }

              else
              {
                v46 = v46 + 3 * v49 - 6;
              }

              ++v44;
            }

            while (v48 != v44);
            v50 = v46;
            if (v45)
            {
LABEL_122:
              v454 = "hd/meshUtil.cpp";
              v455 = "_TriangulateFaceVarying";
              v456 = 233;
              v457 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = float]";
              LOBYTE(v458) = 0;
              v76 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v454, "degenerated face found [%s]", v77, v76);
            }
          }

          sub_29A18E048(&v454, v50);
          v92 = *(v444 + 24);
          if (v92 < 1)
          {
            goto LABEL_167;
          }

          v93 = 0;
          v436 = 0;
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v97 = a3;
LABEL_140:
          v98 = *(*(v444 + 56) + 4 * v93);
          v428 = (v98 - 3);
          if (v98 < 3)
          {
            goto LABEL_164;
          }

          if (v96 < v43 && v93 == *(v448 + 4 * v96))
          {
            ++v96;
            goto LABEL_164;
          }

          v402 = v96;
          v410 = v94;
          v418 = v93;
          v99 = 0;
          v100 = v94;
          v101 = v446 <= 7 || v98 == 3;
          v102 = !v101;
          v396 = *(*(v444 + 56) + 4 * v93);
          v103 = (v98 - 2);
          v104 = 4 * v95 + 8;
          v105 = v94 + 2;
          v106 = (a2 + 8 + 4 * v94);
          while (1)
          {
            sub_29A18E624(&v454);
            v107 = v458;
            v108 = (v458 + v104);
            if (v105 < v97)
            {
              break;
            }

            *v108 = 0;
            v436 = 1;
            *(v108 - 1) = 0;
            if (v102)
            {
              goto LABEL_156;
            }

LABEL_162:
            ++v99;
            v104 += 12;
            v95 += 3;
            ++v105;
            ++v106;
            if (v103 == v99)
            {
              v92 = *(v444 + 24);
              v43 = v447;
              v94 = v410;
              v93 = v418;
              v96 = v402;
              v98 = v396;
LABEL_164:
              v94 += v98;
              if (++v93 >= v92)
              {
                if (v436)
                {
                  v449 = "hd/meshUtil.cpp";
                  v450 = "_TriangulateFaceVarying";
                  v451 = 276;
                  v452 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = float]";
                  v453 = 0;
                  v120 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v449, "numVerts and verts are incosistent [%s]", v121, v120);
                }

LABEL_167:
                sub_29A18E758(a5, &v454);
                pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
              }

              goto LABEL_140;
            }
          }

          *(v108 - 2) = *(a2 + 4 * v100);
          if (v446 < 8)
          {
            *(v108 - 1) = *(v106 - 1);
            v115 = *v106;
          }

          else
          {
            *(v108 - 1) = *v106;
            *(v107 + v104) = *(v106 - 1);
            if ((v102 & 1) == 0)
            {
              goto LABEL_162;
            }

LABEL_156:
            if (v99)
            {
              if (v428 == v99)
              {
                sub_29A18E624(&v454);
                v109 = v458;
                sub_29A18E624(&v454);
                v110 = v458;
                v111 = *(v109 + v104 - 4);
                *(v109 + v104 - 4) = *(v458 + v104);
                *(v110 + v104) = v111;
                sub_29A18E624(&v454);
                v112 = v458;
                sub_29A18E624(&v454);
                v113 = v458 + v104;
                v114 = *(v112 + v104 - 8);
                *(v112 + v104 - 8) = *(v458 + v104 - 4);
                *(v113 - 4) = v114;
              }

              goto LABEL_162;
            }

            sub_29A18E624(&v454);
            v116 = v458;
            sub_29A18E624(&v454);
            v117 = v458 + v104;
            v118 = *(v116 + v104 - 8);
            *(v116 + v104 - 8) = *(v458 + v104 - 4);
            *(v117 - 4) = v118;
            sub_29A18E624(&v454);
            v119 = v458;
            sub_29A18E624(&v454);
            v107 = v458;
            v115 = *(v119 + v104 - 4);
            *(v119 + v104 - 4) = *(v458 + v104);
          }

          *(v107 + v104) = v115;
          goto LABEL_162;
        }

        if (a4 != 15)
        {
          if (a4 != 16)
          {
            goto LABEL_120;
          }

          v27 = v447;
          if (*(v444 + 24) < 1)
          {
            v34 = 0;
          }

          else
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = *(v444 + 24) & 0x7FFFFFFFLL;
            do
            {
              while (1)
              {
                v33 = *(*(v444 + 56) + 4 * v28);
                if (v33 >= 3)
                {
                  break;
                }

                v29 = 1;
                v101 = v32 - 1 == v28++;
                if (v101)
                {
                  v34 = v30;
                  goto LABEL_134;
                }
              }

              if (v31 < v447 && v28 == *(v448 + 4 * v31))
              {
                ++v31;
              }

              else
              {
                v30 = v30 + 3 * v33 - 6;
              }

              ++v28;
            }

            while (v32 != v28);
            v34 = v30;
            if (v29)
            {
LABEL_134:
              v454 = "hd/meshUtil.cpp";
              v455 = "_TriangulateFaceVarying";
              v456 = 233;
              v457 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
              LOBYTE(v458) = 0;
              v88 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v454, "degenerated face found [%s]", v89, v88);
            }
          }

          sub_29A195790(&v454, v34);
          v315 = *(v444 + 24);
          if (v315 < 1)
          {
            goto LABEL_347;
          }

          v316 = 0;
          v442 = 0;
          v317 = 0;
          v318 = 0;
          v319 = 0;
          v320 = a3;
LABEL_321:
          v321 = *(*(v444 + 56) + 4 * v316);
          v434 = (v321 - 3);
          if (v321 < 3)
          {
            goto LABEL_344;
          }

          if (v319 < v27 && v316 == *(v448 + 4 * v319))
          {
            ++v319;
            goto LABEL_344;
          }

          v408 = *(*(v444 + 56) + 4 * v316);
          v416 = v319;
          v424 = v316;
          v322 = 0;
          v324 = v446 > 7 && v321 != 3;
          v325 = (v321 - 2);
          v326 = 16 * v318 + 32;
          v327 = v317 + 2;
          v328 = (a2 + 32 + 16 * v317);
          while (1)
          {
            sub_29A195BC4(&v454);
            v329 = (v458 + v326);
            v330 = (v458 + v326 - 32);
            if (v327 >= v320)
            {
              *(v458 + v326 - 16) = 0u;
              v330[2] = 0u;
              v442 = 1;
              *v330 = 0u;
              if (v324)
              {
LABEL_337:
                if (v322)
                {
                  if (v434 == v322)
                  {
                    sub_29A195BC4(&v454);
                    v332 = v458;
                    sub_29A195BC4(&v454);
                    v333 = v458;
                    v334 = *(v332 + v326 - 16);
                    *(v332 + v326 - 16) = *(v458 + v326);
                    *(v333 + v326) = v334;
                    sub_29A195BC4(&v454);
                    v335 = v458;
                    sub_29A195BC4(&v454);
                    v336 = v458 + v326;
                    v337 = *(v335 + v326 - 32);
                    *(v335 + v326 - 32) = *(v458 + v326 - 16);
                    *(v336 - 16) = v337;
                  }
                }

                else
                {
                  sub_29A195BC4(&v454);
                  v338 = v458;
                  sub_29A195BC4(&v454);
                  v339 = v458 + v326;
                  v340 = *(v338 + v326 - 32);
                  *(v338 + v326 - 32) = *(v458 + v326 - 16);
                  *(v339 - 16) = v340;
                  sub_29A195BC4(&v454);
                  v341 = v458;
                  sub_29A195BC4(&v454);
                  v342 = v458;
                  v343 = *(v341 + v326 - 16);
                  *(v341 + v326 - 16) = *(v458 + v326);
                  *(v342 + v326) = v343;
                }
              }
            }

            else
            {
              v331 = v329 - 1;
              *v330 = *(a2 + 16 * v317);
              if (v446 < 8)
              {
                *v331 = *(v328 - 1);
                *v329 = *v328;
              }

              else
              {
                *v331 = *v328;
                *v329 = *(v328 - 1);
                if (v324)
                {
                  goto LABEL_337;
                }
              }
            }

            ++v322;
            v326 += 48;
            v318 += 3;
            ++v327;
            ++v328;
            if (v325 == v322)
            {
              v315 = *(v444 + 24);
              v27 = v447;
              v316 = v424;
              v321 = v408;
              v319 = v416;
LABEL_344:
              v317 += v321;
              if (++v316 >= v315)
              {
                if (v442)
                {
                  v449 = "hd/meshUtil.cpp";
                  v450 = "_TriangulateFaceVarying";
                  v451 = 276;
                  v452 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
                  v453 = 0;
                  v344 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v449, "numVerts and verts are incosistent [%s]", v345, v344);
                }

LABEL_347:
                sub_29A195CF8(a5, &v454);
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
              }

              goto LABEL_321;
            }
          }
        }

        v59 = v447;
        if (*(v444 + 24) < 1)
        {
          v66 = 0;
        }

        else
        {
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = *(v444 + 24) & 0x7FFFFFFFLL;
          do
          {
            while (1)
            {
              v65 = *(*(v444 + 56) + 4 * v60);
              if (v65 >= 3)
              {
                break;
              }

              v61 = 1;
              v101 = v64 - 1 == v60++;
              if (v101)
              {
                v66 = v62;
                goto LABEL_126;
              }
            }

            if (v63 < v447 && v60 == *(v448 + 4 * v63))
            {
              ++v63;
            }

            else
            {
              v62 = v62 + 3 * v65 - 6;
            }

            ++v60;
          }

          while (v64 != v60);
          v66 = v62;
          if (v61)
          {
LABEL_126:
            v454 = "hd/meshUtil.cpp";
            v455 = "_TriangulateFaceVarying";
            v456 = 233;
            v457 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
            LOBYTE(v458) = 0;
            v80 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v454, "degenerated face found [%s]", v81, v80);
          }
        }

        sub_29A193124(&v454, v66);
        v154 = *(v444 + 24);
        if (v154 < 1)
        {
          goto LABEL_227;
        }

        v155 = 0;
        v438 = 0;
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v159 = a3;
LABEL_201:
        v160 = *(*(v444 + 56) + 4 * v155);
        v430 = (v160 - 3);
        if (v160 < 3)
        {
          goto LABEL_224;
        }

        if (v158 < v59 && v155 == *(v448 + 4 * v158))
        {
          ++v158;
          goto LABEL_224;
        }

        v404 = v158;
        v412 = v156;
        v420 = v155;
        v161 = 0;
        v162 = (a2 + 12 * v156);
        v164 = v446 > 7 && v160 != 3;
        v398 = *(*(v444 + 56) + 4 * v155);
        v165 = (v160 - 2);
        v166 = 12 * v157 + 24;
        v167 = v156 + 2;
        v168 = a2 + 24 + 12 * v156;
        while (1)
        {
          sub_29A1935CC(&v454);
          v169 = v458 + v166;
          v170 = (v458 + v166 - 24);
          if (v167 >= v159)
          {
            *(v458 + v166 + 8) = 0;
            v438 = 1;
            *v170 = 0u;
            v170[1] = 0u;
            if (v164)
            {
LABEL_217:
              if (v161)
              {
                if (v430 == v161)
                {
                  sub_29A1935CC(&v454);
                  v175 = v458;
                  sub_29A1935CC(&v454);
                  v176 = v175 + v166;
                  v177 = v458 + v166;
                  v178 = *(v175 + v166 - 4);
                  v179 = *(v175 + v166 - 12);
                  v180 = *(v458 + v166 + 8);
                  *(v176 - 12) = *(v458 + v166);
                  *(v176 - 4) = v180;
                  *v177 = v179;
                  *(v177 + 8) = v178;
                  sub_29A1935CC(&v454);
                  v181 = v458;
                  sub_29A1935CC(&v454);
                  v182 = v181 + v166;
                  v183 = v458 + v166;
                  v184 = *(v181 + v166 - 16);
                  v185 = *(v181 + v166 - 24);
                  v186 = *(v458 + v166 - 4);
                  *(v182 - 24) = *(v458 + v166 - 12);
                  *(v182 - 16) = v186;
                  *(v183 - 12) = v185;
                  *(v183 - 4) = v184;
                }
              }

              else
              {
                sub_29A1935CC(&v454);
                v189 = v458;
                sub_29A1935CC(&v454);
                v190 = v189 + v166;
                v191 = v458 + v166;
                v192 = *(v189 + v166 - 16);
                v193 = *(v189 + v166 - 24);
                v194 = *(v458 + v166 - 4);
                *(v190 - 24) = *(v458 + v166 - 12);
                *(v190 - 16) = v194;
                *(v191 - 12) = v193;
                *(v191 - 4) = v192;
                sub_29A1935CC(&v454);
                v195 = v458;
                sub_29A1935CC(&v454);
                v196 = v195 + v166;
                v197 = v458 + v166;
                v198 = *(v195 + v166 - 4);
                v199 = *(v195 + v166 - 12);
                v200 = *(v458 + v166 + 8);
                *(v196 - 12) = *(v458 + v166);
                *(v196 - 4) = v200;
                *v197 = v199;
                *(v197 + 8) = v198;
              }
            }
          }

          else
          {
            v171 = (v169 - 12);
            v172 = *v162;
            *(v458 + v166 - 16) = *(v162 + 2);
            *v170 = v172;
            if (v446 < 8)
            {
              v187 = *(v168 - 12);
              *(v169 - 4) = *(v168 - 4);
              *v171 = v187;
              v188 = *v168;
              *(v169 + 8) = *(v168 + 8);
              *v169 = v188;
            }

            else
            {
              v173 = *v168;
              *(v169 - 4) = *(v168 + 8);
              *v171 = v173;
              v174 = *(v168 - 12);
              *(v169 + 8) = *(v168 - 4);
              *v169 = v174;
              if (v164)
              {
                goto LABEL_217;
              }
            }
          }

          ++v161;
          v166 += 36;
          v157 += 3;
          ++v167;
          v168 += 12;
          if (v165 == v161)
          {
            v154 = *(v444 + 24);
            v59 = v447;
            v156 = v412;
            v155 = v420;
            v158 = v404;
            v160 = v398;
LABEL_224:
            v156 += v160;
            if (++v155 >= v154)
            {
              if (v438)
              {
                v449 = "hd/meshUtil.cpp";
                v450 = "_TriangulateFaceVarying";
                v451 = 276;
                v452 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
                v453 = 0;
                v201 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
                pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v449, "numVerts and verts are incosistent [%s]", v202, v201);
              }

LABEL_227:
              sub_29A193700(a5, &v454);
              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
            }

            goto LABEL_201;
          }
        }
      }

      if (a4 <= 20)
      {
        if (a4 != 19)
        {
          v19 = v447;
          if (*(v444 + 24) < 1)
          {
            v26 = 0;
          }

          else
          {
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = *(v444 + 24) & 0x7FFFFFFFLL;
            do
            {
              while (1)
              {
                v25 = *(*(v444 + 56) + 4 * v20);
                if (v25 >= 3)
                {
                  break;
                }

                v21 = 1;
                v101 = v24 - 1 == v20++;
                if (v101)
                {
                  v26 = v22;
                  goto LABEL_132;
                }
              }

              if (v23 < v447 && v20 == *(v448 + 4 * v23))
              {
                ++v23;
              }

              else
              {
                v22 = v22 + 3 * v25 - 6;
              }

              ++v20;
            }

            while (v24 != v20);
            v26 = v22;
            if (v21)
            {
LABEL_132:
              v454 = "hd/meshUtil.cpp";
              v455 = "_TriangulateFaceVarying";
              v456 = 233;
              v457 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
              LOBYTE(v458) = 0;
              v86 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v454, "degenerated face found [%s]", v87, v86);
            }
          }

          sub_29A1921FC(&v454, v26);
          v284 = *(v444 + 24);
          if (v284 < 1)
          {
            goto LABEL_317;
          }

          v285 = 0;
          v441 = 0;
          v286 = 0;
          v287 = 0;
          v288 = 0;
          v289 = a3;
LABEL_291:
          v290 = *(*(v444 + 56) + 4 * v285);
          v433 = (v290 - 3);
          if (v290 < 3)
          {
            goto LABEL_314;
          }

          if (v288 < v19 && v285 == *(v448 + 4 * v288))
          {
            ++v288;
            goto LABEL_314;
          }

          v407 = *(*(v444 + 56) + 4 * v285);
          v415 = v288;
          v423 = v285;
          v291 = 0;
          v293 = v446 > 7 && v290 != 3;
          v294 = (v290 - 2);
          v295 = 16 * v287 + 32;
          v296 = v286 + 2;
          v297 = (a2 + 32 + 16 * v286);
          while (1)
          {
            sub_29A19255C(&v454);
            v298 = (v458 + v295);
            v299 = (v458 + v295 - 32);
            if (v296 >= v289)
            {
              *(v458 + v295 - 16) = 0u;
              v299[2] = 0u;
              v441 = 1;
              *v299 = 0u;
              if (v293)
              {
LABEL_307:
                if (v291)
                {
                  if (v433 == v291)
                  {
                    sub_29A19255C(&v454);
                    v301 = v458;
                    sub_29A19255C(&v454);
                    v302 = v458;
                    v303 = *(v301 + v295 - 16);
                    *(v301 + v295 - 16) = *(v458 + v295);
                    *(v302 + v295) = v303;
                    sub_29A19255C(&v454);
                    v304 = v458;
                    sub_29A19255C(&v454);
                    v305 = v458 + v295;
                    v306 = *(v304 + v295 - 32);
                    *(v304 + v295 - 32) = *(v458 + v295 - 16);
                    *(v305 - 16) = v306;
                  }
                }

                else
                {
                  sub_29A19255C(&v454);
                  v307 = v458;
                  sub_29A19255C(&v454);
                  v308 = v458 + v295;
                  v309 = *(v307 + v295 - 32);
                  *(v307 + v295 - 32) = *(v458 + v295 - 16);
                  *(v308 - 16) = v309;
                  sub_29A19255C(&v454);
                  v310 = v458;
                  sub_29A19255C(&v454);
                  v311 = v458;
                  v312 = *(v310 + v295 - 16);
                  *(v310 + v295 - 16) = *(v458 + v295);
                  *(v311 + v295) = v312;
                }
              }
            }

            else
            {
              v300 = v298 - 1;
              *v299 = *(a2 + 16 * v286);
              if (v446 < 8)
              {
                *v300 = *(v297 - 1);
                *v298 = *v297;
              }

              else
              {
                *v300 = *v297;
                *v298 = *(v297 - 1);
                if (v293)
                {
                  goto LABEL_307;
                }
              }
            }

            ++v291;
            v295 += 48;
            v287 += 3;
            ++v296;
            ++v297;
            if (v294 == v291)
            {
              v284 = *(v444 + 24);
              v19 = v447;
              v285 = v423;
              v290 = v407;
              v288 = v415;
LABEL_314:
              v286 += v290;
              if (++v285 >= v284)
              {
                if (v441)
                {
                  v449 = "hd/meshUtil.cpp";
                  v450 = "_TriangulateFaceVarying";
                  v451 = 276;
                  v452 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
                  v453 = 0;
                  v313 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v449, "numVerts and verts are incosistent [%s]", v314, v313);
                }

LABEL_317:
                sub_29A192690(a5, &v454);
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
              }

              goto LABEL_291;
            }
          }
        }

        v51 = v447;
        if (*(v444 + 24) < 1)
        {
          v58 = 0;
        }

        else
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = *(v444 + 24) & 0x7FFFFFFFLL;
          do
          {
            while (1)
            {
              v57 = *(*(v444 + 56) + 4 * v52);
              if (v57 >= 3)
              {
                break;
              }

              v53 = 1;
              v101 = v56 - 1 == v52++;
              if (v101)
              {
                v58 = v54;
                goto LABEL_124;
              }
            }

            if (v55 < v447 && v52 == *(v448 + 4 * v55))
            {
              ++v55;
            }

            else
            {
              v54 = v54 + 3 * v57 - 6;
            }

            ++v52;
          }

          while (v56 != v52);
          v58 = v54;
          if (v53)
          {
LABEL_124:
            v454 = "hd/meshUtil.cpp";
            v455 = "_TriangulateFaceVarying";
            v456 = 233;
            v457 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = double]";
            LOBYTE(v458) = 0;
            v78 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v454, "degenerated face found [%s]", v79, v78);
          }
        }

        sub_29A18FC40(&v454, v58);
        v122 = *(v444 + 24);
        if (v122 < 1)
        {
          goto LABEL_197;
        }

        v123 = 0;
        v437 = 0;
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v127 = a3;
LABEL_171:
        v128 = *(*(v444 + 56) + 4 * v123);
        if (v128 < 3)
        {
          goto LABEL_194;
        }

        if (v126 < v51 && v123 == *(v448 + 4 * v126))
        {
          ++v126;
          goto LABEL_194;
        }

        v403 = v126;
        v411 = v124;
        v419 = v123;
        v129 = 0;
        v130 = v124;
        v132 = v446 > 7 && v128 != 3;
        v397 = *(*(v444 + 56) + 4 * v123);
        v133 = 8 * v125 + 16;
        v429 = -(v128 - 3);
        v134 = -(v128 - 2);
        v135 = v124 + 2;
        v136 = (a2 + 16 + 8 * v124);
        while (1)
        {
          sub_29A190088(&v454);
          v137 = v458;
          v138 = v458 + v133;
          v139 = (v458 + v133 - 16);
          if (v135 >= v127)
          {
            *v139 = 0;
            v139[1] = 0;
            v437 = 1;
            v139[2] = 0;
            if (v132)
            {
LABEL_187:
              if (v129)
              {
                if (v429 == v129)
                {
                  sub_29A190088(&v454);
                  v140 = v458;
                  sub_29A190088(&v454);
                  v141 = v458;
                  v142 = *(v140 + v133 - 8);
                  *(v140 + v133 - 8) = *(v458 + v133);
                  *(v141 + v133) = v142;
                  sub_29A190088(&v454);
                  v143 = v458;
                  sub_29A190088(&v454);
                  v144 = v458 + v133;
                  v145 = *(v143 + v133 - 16);
                  *(v143 + v133 - 16) = *(v458 + v133 - 8);
                  *(v144 - 8) = v145;
                }
              }

              else
              {
                sub_29A190088(&v454);
                v146 = v458;
                sub_29A190088(&v454);
                v147 = v458 + v133;
                v148 = *(v146 + v133 - 16);
                *(v146 + v133 - 16) = *(v458 + v133 - 8);
                *(v147 - 8) = v148;
                sub_29A190088(&v454);
                v149 = v458;
                sub_29A190088(&v454);
                v150 = v458;
                v151 = *(v149 + v133 - 8);
                *(v149 + v133 - 8) = *(v458 + v133);
                *(v150 + v133) = v151;
              }
            }
          }

          else
          {
            *v139 = *(a2 + 8 * v130);
            if (v446 < 8)
            {
              *(v138 - 8) = *(v136 - 1);
              *(v137 + v133) = *v136;
            }

            else
            {
              *(v138 - 8) = *v136;
              *(v137 + v133) = *(v136 - 1);
              if (v132)
              {
                goto LABEL_187;
              }
            }
          }

          v133 += 24;
          v125 += 3;
          --v129;
          ++v135;
          ++v136;
          if (v134 == v129)
          {
            v122 = *(v444 + 24);
            v51 = v447;
            v124 = v411;
            v123 = v419;
            v126 = v403;
            v128 = v397;
LABEL_194:
            v124 += v128;
            if (++v123 >= v122)
            {
              if (v437)
              {
                v449 = "hd/meshUtil.cpp";
                v450 = "_TriangulateFaceVarying";
                v451 = 276;
                v452 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = double]";
                v453 = 0;
                v152 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
                pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v449, "numVerts and verts are incosistent [%s]", v153, v152);
              }

LABEL_197:
              sub_29A1901BC(a5, &v454);
              pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
            }

            goto LABEL_171;
          }
        }
      }

      if (a4 != 21)
      {
        if (a4 != 22)
        {
          goto LABEL_120;
        }

        v35 = v447;
        if (*(v444 + 24) < 1)
        {
          v42 = 0;
        }

        else
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = *(v444 + 24) & 0x7FFFFFFFLL;
          do
          {
            while (1)
            {
              v41 = *(*(v444 + 56) + 4 * v36);
              if (v41 >= 3)
              {
                break;
              }

              v37 = 1;
              v101 = v40 - 1 == v36++;
              if (v101)
              {
                v42 = v38;
                goto LABEL_136;
              }
            }

            if (v39 < v447 && v36 == *(v448 + 4 * v39))
            {
              ++v39;
            }

            else
            {
              v38 = v38 + 3 * v41 - 6;
            }

            ++v36;
          }

          while (v40 != v36);
          v42 = v38;
          if (v37)
          {
LABEL_136:
            v454 = "hd/meshUtil.cpp";
            v455 = "_TriangulateFaceVarying";
            v456 = 233;
            v457 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
            LOBYTE(v458) = 0;
            v90 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v454, "degenerated face found [%s]", v91, v90);
          }
        }

        sub_29A196EB8(&v454, v42);
        v346 = *(v444 + 24);
        if (v346 < 1)
        {
          goto LABEL_377;
        }

        v347 = 0;
        v443 = 0;
        v348 = 0;
        v349 = 0;
        v350 = 0;
        v351 = a3;
LABEL_351:
        v352 = *(*(v444 + 56) + 4 * v347);
        v435 = (v352 - 3);
        if (v352 < 3)
        {
          goto LABEL_374;
        }

        if (v350 < v35 && v347 == *(v448 + 4 * v350))
        {
          ++v350;
          goto LABEL_374;
        }

        v409 = v350;
        v417 = v348;
        v425 = v347;
        v353 = 0;
        v354 = (a2 + 32 * v348);
        v356 = v446 > 7 && v352 != 3;
        v401 = *(*(v444 + 56) + 4 * v347);
        v357 = (v352 - 2);
        v358 = 32 * v349 + 64;
        v359 = v348 + 2;
        v360 = (a2 + 64 + 32 * v348);
        while (1)
        {
          sub_29A19722C(&v454);
          v361 = (v458 + v358);
          v362 = (v458 + v358 - 64);
          if (v359 >= v351)
          {
            *(v458 + v358) = 0u;
            v362[5] = 0u;
            v362[2] = 0u;
            v362[3] = 0u;
            v443 = 1;
            *v362 = 0u;
            v362[1] = 0u;
            if (v356)
            {
LABEL_367:
              if (v353)
              {
                if (v435 == v353)
                {
                  sub_29A19722C(&v454);
                  v367 = v458;
                  sub_29A19722C(&v454);
                  v368 = v367 + v358;
                  v369 = (v458 + v358);
                  v371 = *(v367 + v358 - 32);
                  v370 = *(v367 + v358 - 16);
                  v372 = *(v458 + v358 + 16);
                  *(v368 - 32) = *(v458 + v358);
                  *(v368 - 16) = v372;
                  *v369 = v371;
                  v369[1] = v370;
                  sub_29A19722C(&v454);
                  v373 = v458;
                  sub_29A19722C(&v454);
                  v374 = v373 + v358;
                  v375 = v458 + v358;
                  v377 = *(v373 + v358 - 64);
                  v376 = *(v373 + v358 - 48);
                  v378 = *(v458 + v358 - 16);
                  *(v374 - 64) = *(v458 + v358 - 32);
                  *(v374 - 48) = v378;
                  *(v375 - 32) = v377;
                  *(v375 - 16) = v376;
                }
              }

              else
              {
                sub_29A19722C(&v454);
                v381 = v458;
                sub_29A19722C(&v454);
                v382 = v381 + v358;
                v383 = v458 + v358;
                v385 = *(v381 + v358 - 64);
                v384 = *(v381 + v358 - 48);
                v386 = *(v458 + v358 - 16);
                *(v382 - 64) = *(v458 + v358 - 32);
                *(v382 - 48) = v386;
                *(v383 - 32) = v385;
                *(v383 - 16) = v384;
                sub_29A19722C(&v454);
                v387 = v458;
                sub_29A19722C(&v454);
                v388 = v387 + v358;
                v389 = (v458 + v358);
                v391 = *(v387 + v358 - 32);
                v390 = *(v387 + v358 - 16);
                v392 = *(v458 + v358 + 16);
                *(v388 - 32) = *(v458 + v358);
                *(v388 - 16) = v392;
                *v389 = v391;
                v389[1] = v390;
              }
            }
          }

          else
          {
            v363 = v361 - 2;
            v364 = v354[1];
            *v362 = *v354;
            v362[1] = v364;
            if (v446 < 8)
            {
              v379 = *(v360 - 1);
              *v363 = *(v360 - 2);
              *(v361 - 1) = v379;
              v380 = v360[1];
              *v361 = *v360;
              v361[1] = v380;
            }

            else
            {
              v365 = v360[1];
              *v363 = *v360;
              *(v361 - 1) = v365;
              v366 = *(v360 - 1);
              *v361 = *(v360 - 2);
              v361[1] = v366;
              if (v356)
              {
                goto LABEL_367;
              }
            }
          }

          ++v353;
          v358 += 96;
          v349 += 3;
          ++v359;
          v360 += 2;
          if (v357 == v353)
          {
            v346 = *(v444 + 24);
            v35 = v447;
            v348 = v417;
            v347 = v425;
            v350 = v409;
            v352 = v401;
LABEL_374:
            v348 += v352;
            if (++v347 >= v346)
            {
              if (v443)
              {
                v449 = "hd/meshUtil.cpp";
                v450 = "_TriangulateFaceVarying";
                v451 = 276;
                v452 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
                v453 = 0;
                v393 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
                pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v449, "numVerts and verts are incosistent [%s]", v394, v393);
              }

LABEL_377:
              sub_29A197360(a5, &v454);
              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
            }

            goto LABEL_351;
          }
        }
      }

      v67 = v447;
      if (*(v444 + 24) < 1)
      {
        v74 = 0;
      }

      else
      {
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v72 = *(v444 + 24) & 0x7FFFFFFFLL;
        do
        {
          while (1)
          {
            v73 = *(*(v444 + 56) + 4 * v68);
            if (v73 >= 3)
            {
              break;
            }

            v69 = 1;
            v101 = v72 - 1 == v68++;
            if (v101)
            {
              v74 = v70;
              goto LABEL_128;
            }
          }

          if (v71 < v447 && v68 == *(v448 + 4 * v71))
          {
            ++v71;
          }

          else
          {
            v70 = v70 + 3 * v73 - 6;
          }

          ++v68;
        }

        while (v72 != v68);
        v74 = v70;
        if (v69)
        {
LABEL_128:
          v454 = "hd/meshUtil.cpp";
          v455 = "_TriangulateFaceVarying";
          v456 = 233;
          v457 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
          LOBYTE(v458) = 0;
          v82 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v454, "degenerated face found [%s]", v83, v82);
        }
      }

      sub_29A1948F8(&v454, v74);
      v203 = *(v444 + 24);
      if (v203 < 1)
      {
        goto LABEL_257;
      }

      v204 = 0;
      v439 = 0;
      v205 = 0;
      v206 = 0;
      v207 = 0;
      v208 = a3;
LABEL_231:
      v209 = *(*(v444 + 56) + 4 * v204);
      v431 = (v209 - 3);
      if (v209 < 3)
      {
        goto LABEL_254;
      }

      if (v207 < v67 && v204 == *(v448 + 4 * v207))
      {
        ++v207;
        goto LABEL_254;
      }

      v405 = v207;
      v413 = v205;
      v421 = v204;
      v210 = 0;
      v211 = (a2 + 24 * v205);
      v213 = v446 > 7 && v209 != 3;
      v399 = *(*(v444 + 56) + 4 * v204);
      v214 = (v209 - 2);
      v215 = 24 * v206 + 48;
      v216 = v205 + 2;
      v217 = a2 + 48 + 24 * v205;
      while (1)
      {
        sub_29A194CC8(&v454);
        v218 = v458 + v215;
        v219 = (v458 + v215 - 48);
        if (v216 >= v208)
        {
          *(v458 + v215 + 16) = 0;
          v219[2] = 0u;
          v219[3] = 0u;
          v439 = 1;
          *v219 = 0u;
          v219[1] = 0u;
          if (v213)
          {
LABEL_247:
            if (v210)
            {
              if (v431 == v210)
              {
                sub_29A194CC8(&v454);
                v224 = v458;
                sub_29A194CC8(&v454);
                v225 = v224 + v215;
                v226 = v458 + v215;
                v227 = *(v224 + v215 - 8);
                v228 = *(v224 + v215 - 24);
                v229 = *(v458 + v215 + 16);
                *(v225 - 24) = *(v458 + v215);
                *(v225 - 8) = v229;
                *v226 = v228;
                *(v226 + 16) = v227;
                sub_29A194CC8(&v454);
                v230 = v458;
                sub_29A194CC8(&v454);
                v231 = v230 + v215;
                v232 = v458 + v215;
                v233 = *(v230 + v215 - 32);
                v234 = *(v230 + v215 - 48);
                v235 = *(v458 + v215 - 8);
                *(v231 - 48) = *(v458 + v215 - 24);
                *(v231 - 32) = v235;
                *(v232 - 24) = v234;
                *(v232 - 8) = v233;
              }
            }

            else
            {
              sub_29A194CC8(&v454);
              v238 = v458;
              sub_29A194CC8(&v454);
              v239 = v238 + v215;
              v240 = v458 + v215;
              v241 = *(v238 + v215 - 32);
              v242 = *(v238 + v215 - 48);
              v243 = *(v458 + v215 - 8);
              *(v239 - 48) = *(v458 + v215 - 24);
              *(v239 - 32) = v243;
              *(v240 - 24) = v242;
              *(v240 - 8) = v241;
              sub_29A194CC8(&v454);
              v244 = v458;
              sub_29A194CC8(&v454);
              v245 = v244 + v215;
              v246 = v458 + v215;
              v247 = *(v244 + v215 - 8);
              v248 = *(v244 + v215 - 24);
              v249 = *(v458 + v215 + 16);
              *(v245 - 24) = *(v458 + v215);
              *(v245 - 8) = v249;
              *v246 = v248;
              *(v246 + 16) = v247;
            }
          }
        }

        else
        {
          v220 = (v218 - 24);
          v221 = *v211;
          *(v458 + v215 - 32) = *(v211 + 2);
          *v219 = v221;
          if (v446 < 8)
          {
            v236 = *(v217 - 24);
            *(v218 - 8) = *(v217 - 8);
            *v220 = v236;
            v237 = *v217;
            *(v218 + 16) = *(v217 + 16);
            *v218 = v237;
          }

          else
          {
            v222 = *v217;
            *(v218 - 8) = *(v217 + 16);
            *v220 = v222;
            v223 = *(v217 - 24);
            *(v218 + 16) = *(v217 - 8);
            *v218 = v223;
            if (v213)
            {
              goto LABEL_247;
            }
          }
        }

        ++v210;
        v215 += 72;
        v206 += 3;
        ++v216;
        v217 += 24;
        if (v214 == v210)
        {
          v203 = *(v444 + 24);
          v67 = v447;
          v205 = v413;
          v204 = v421;
          v207 = v405;
          v209 = v399;
LABEL_254:
          v205 += v209;
          if (++v204 >= v203)
          {
            if (v439)
            {
              v449 = "hd/meshUtil.cpp";
              v450 = "_TriangulateFaceVarying";
              v451 = 276;
              v452 = "void pxrInternal__aapl__pxrReserved__::_TriangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
              v453 = 0;
              v250 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v449, "numVerts and verts are incosistent [%s]", v251, v250);
            }

LABEL_257:
            sub_29A194DFC(a5, &v454);
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
          }

          goto LABEL_231;
        }
      }
    }

    v454 = "hd/meshUtil.cpp";
    v455 = "ComputeTriangulatedFaceVaryingPrimvar";
    v456 = 295;
    v457 = "BOOL pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangulatedFaceVaryingPrimvar(const void *, int, HdType, VtValue *) const";
    LOBYTE(v458) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v454, 1, "No output buffer provided for triangulation");
  }

  else
  {
    v454 = "hd/meshUtil.cpp";
    v455 = "ComputeTriangulatedFaceVaryingPrimvar";
    v456 = 291;
    v457 = "BOOL pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeTriangulatedFaceVaryingPrimvar(const void *, int, HdType, VtValue *) const";
    LOBYTE(v458) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v454, 1, "No topology provided for triangulation");
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshUtil::_ComputeNumQuads(uint64_t a1, void *a2, int *a3, _BYTE *a4)
{
  if (*a2 < 1)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = 0;
  v7 = *a3;
  v8 = a2[4];
  v9 = *a2 & 0x7FFFFFFFLL;
  v10 = *(a3 + 4);
  do
  {
    v11 = *(v8 + 4 * v4);
    if (v11 > 2)
    {
      if (v6 < v7 && v4 == *(v10 + 4 * v6))
      {
        ++v6;
      }

      else
      {
        if (v11 == 4)
        {
          v11 = 1;
        }

        result = (v11 + result);
      }
    }

    else if (a4)
    {
      *a4 = 1;
    }

    ++v4;
  }

  while (v9 != v4);
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (a2)
    {
      v5 = *(v3 + 56);
      v6 = *(v3 + 96);
      v28 = *(v3 + 136);
      v7 = *(v3 + 24);
      v8 = *(v3 + 64);
      v26 = *(v3 + 104);
      NumPoints = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumPoints(v3);
      v27 = (a2 + 16);
      *(a2 + 24) = *(a2 + 16);
      v10 = (a2 + 40);
      *(a2 + 48) = *(a2 + 40);
      *a2 = NumPoints;
      if (v7 < 1)
      {
        *(a2 + 4) = 0;
        *(a2 + 8) = 0;
      }

      else
      {
        v24 = a1;
        v25 = a2;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v29 = 0;
        v30 = 0;
        v14 = 0;
        v15 = v7 & 0x7FFFFFFF;
        v16 = v26;
        do
        {
          v17 = *(v5 + 4 * v11);
          LODWORD(v32) = v17;
          if (v17 > 2)
          {
            if (v13 < v16 && v11 == *(v28 + 4 * v13))
            {
              v14 += v17;
              ++v13;
            }

            else if (v17 == 4)
            {
              v14 += 4;
            }

            else
            {
              sub_29A00D250(v27, &v32);
              v18 = v32;
              if (v32 >= 1)
              {
                v19 = 0;
                do
                {
                  v31 = 0;
                  if (v14 >= v8)
                  {
                    v12 = 1;
                  }

                  else
                  {
                    v20 = *(v6 + 4 * v14++);
                    v31 = v20;
                  }

                  sub_29A00D250(v10, &v31);
                  ++v19;
                  v18 = v32;
                }

                while (v19 < v32);
                v16 = v26;
              }

              v21 = v30;
              if (v30 <= v18)
              {
                v21 = v18;
              }

              v29 += v18 + 1;
              v30 = v21;
            }
          }

          else
          {
            v14 += v17;
          }

          ++v11;
        }

        while (v11 != v15);
        *(v25 + 4) = v29;
        *(v25 + 8) = v30;
        if (v12)
        {
          v32 = "hd/meshUtil.cpp";
          v33 = "ComputeQuadInfo";
          v34 = 457;
          v35 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadInfo(HdQuadInfo *) const";
          v36 = 0;
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v24 + 16));
          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v32, "numVerts and verts are incosistent [%s]", v23, Text);
        }
      }
    }

    else
    {
      v32 = "hd/meshUtil.cpp";
      v33 = "ComputeQuadInfo";
      v34 = 394;
      v35 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadInfo(HdQuadInfo *) const";
      v36 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v32, 1, "No output buffer provided for quadrangulation");
    }
  }

  else
  {
    v32 = "hd/meshUtil.cpp";
    v33 = "ComputeQuadInfo";
    v34 = 390;
    v35 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadInfo(HdQuadInfo *) const";
    v36 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v32, 1, "No topology provided for quadrangulation");
  }
}

void pxrInternal__aapl__pxrReserved__::HdMeshUtil::_ComputeQuadIndices(uint64_t a1, void *a2, void *a3, unint64_t *a4, int a5)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    if (a2 && a3)
    {
      v9 = *(v6 + 56);
      v10 = *(v6 + 96);
      v65 = *(v6 + 136);
      v11 = *(v6 + 24);
      v12 = *(v6 + 64);
      v13 = *(v6 + 104);
      NumPoints = pxrInternal__aapl__pxrReserved__::HdMeshTopology::GetNumPoints(v6);
      v77 = NumPoints;
      v81 = 0;
      v15 = pxrInternal__aapl__pxrReserved__::HdMeshUtil::_ComputeNumQuads(NumPoints, (*(a1 + 8) + 24), (*(a1 + 8) + 104), &v81);
      if (v81 == 1)
      {
        v82 = "hd/meshUtil.cpp";
        v83 = "_ComputeQuadIndices";
        v84 = 494;
        v85 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::_ComputeQuadIndices(VtIntArray *, VtIntArray *, VtVec2iArray *, BOOL) const";
        v86 = 0;
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v82, "degenerated face found [%s]", v17, Text);
        v81 = 0;
      }

      v63 = a1;
      if (a5)
      {
        v18 = 6;
      }

      else
      {
        v18 = 4;
      }

      LODWORD(v87[0]) = 0;
      v82 = v87;
      sub_29A19D7EC(a2, v15 * v18, &v82);
      sub_29A19DBEC(a2);
      v19 = a2[4];
      v20 = v15;
      LODWORD(v87[0]) = 0;
      v82 = v87;
      sub_29A19D7EC(a3, v15, &v82);
      v21 = a4;
      if (a4)
      {
        v87[0] = 0;
        v82 = v87;
        sub_29A21A48C(a4, v20, &v82);
      }

      v22 = *(a1 + 8);
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v23)
      {
        v23 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v24 = v65;
      if (v11 >= 1)
      {
        v25 = 0;
        v26 = 0;
        v79 = 0;
        v27 = 0;
        v72 = 0;
        v80 = *(v23 + 71) ^ *(v22 + 16);
        v28 = v11 & 0x7FFFFFFF;
        v67 = v13;
        v68 = v12;
        v76 = a5;
        v62 = v9;
        v69 = v10;
        v66 = v28;
        do
        {
          v29 = *(v9 + 4 * v25);
          if (v29 > 2)
          {
            if (v26 >= v13 || v25 != *(v24 + 4 * v26))
            {
              v30 = v29 + v27;
              if (v29 + v27 <= v12)
              {
                v70 = v29 + v27;
                v71 = v26;
                v33 = (v10 + 4 * v27);
                if (v29 == 4)
                {
                  v34 = v25;
                  v35 = 3;
                  if (v80 <= 7)
                  {
                    v36 = 3;
                  }

                  else
                  {
                    v36 = 1;
                  }

                  if (v80 <= 7)
                  {
                    v35 = 1;
                  }

                  v37 = v33[v35];
                  v38 = v33[2];
                  v39 = v33[v36];
                  v40 = *v33;
                  *v19 = *v33;
                  v19[1] = v37;
                  v19[2] = v38;
                  if (a5)
                  {
                    v41 = v19 + 5;
                    v19[3] = v38;
                    v19[4] = v39;
                    v39 = v40;
                    v42 = 24;
                  }

                  else
                  {
                    v41 = v19 + 3;
                    v42 = 16;
                  }

                  *v41 = v39;
                  sub_29A19DBEC(a3);
                  *(a3[4] + 4 * v72) = 4 * v34;
                  v59 = v72;
                  if (v21)
                  {
                    sub_29A21A6E8(v21);
                    *(*(v21 + 32) + 8 * v72) = v79;
                    sub_29A21A6E8(v21);
                    *(*(v21 + 32) + 8 * v72 + 4) = v79 + 3;
                    v59 = v72;
                  }

                  v19 = (v19 + v42);
                  v72 = v59 + 1;
                  v13 = v67;
                  v12 = v68;
                  v25 = v34;
                  v26 = v71;
                  v28 = v66;
                  v10 = v69;
                }

                else
                {
                  v46 = 0;
                  v64 = v25;
                  v73 = 4 * v25;
                  v47 = (v29 - 1);
                  v48 = v29 + v77;
                  v49 = 8 * v72;
                  v74 = v33;
                  do
                  {
                    v50 = v33[v46];
                    v51 = (v47 + v46) % v29;
                    if (v80 <= 7)
                    {
                      v52 = (v47 + v46) % v29;
                    }

                    else
                    {
                      v52 = v46;
                    }

                    if (v80 <= 7)
                    {
                      v53 = v46;
                    }

                    else
                    {
                      v53 = (v47 + v46) % v29;
                    }

                    v54 = v52 + v77;
                    *v19 = v50;
                    v19[1] = v53 + v77;
                    v19[2] = v48;
                    if (v76)
                    {
                      v55 = v19 + 5;
                      v19[3] = v48;
                      v19[4] = v54;
                      v54 = v50;
                      v56 = 24;
                    }

                    else
                    {
                      v55 = v19 + 3;
                      v56 = 16;
                    }

                    *v55 = v54;
                    if (v47 == v46)
                    {
                      v57 = 2;
                    }

                    else
                    {
                      v57 = 3;
                    }

                    if (!v46)
                    {
                      v57 = 1;
                    }

                    v58 = v57 | v73;
                    sub_29A19DBEC(a3);
                    *(a3[4] + 4 * v72 + 4 * v46) = v58;
                    v21 = a4;
                    if (a4)
                    {
                      sub_29A21A6E8(a4);
                      if (v80 < 8)
                      {
                        *(a4[4] + v49) = v79 + v46;
                        sub_29A21A6E8(a4);
                        *(a4[4] + v49 + 4) = v51 + v79;
                      }

                      else
                      {
                        *(a4[4] + v49) = v51 + v79;
                        sub_29A21A6E8(a4);
                        *(a4[4] + v49 + 4) = v79 + v46;
                      }
                    }

                    v19 = (v19 + v56);
                    ++v46;
                    v49 += 8;
                    v33 = v74;
                  }

                  while (v29 != v46);
                  v72 += v46;
                  a5 = v76;
                  v77 += v29 + 1;
                  v9 = v62;
                  v10 = v69;
                  v25 = v64;
                  v24 = v65;
                  v13 = v67;
                  v12 = v68;
                  v26 = v71;
                  v28 = v66;
                }

                v30 = v70;
              }

              else
              {
                v81 = 1;
                if (v29 == 4)
                {
                  *v19 = 0;
                  v19[2] = 0;
                  if (a5)
                  {
                    v31 = v19 + 5;
                    v19[3] = 0;
                    v19[4] = 0;
                    v32 = 24;
                  }

                  else
                  {
                    v31 = v19 + 3;
                    v32 = 16;
                  }

                  v19 = (v19 + v32);
                  *v31 = 0;
                }

                else
                {
                  v43 = v29;
                  do
                  {
                    *v19 = 0;
                    v19[2] = 0;
                    if (a5)
                    {
                      v44 = v19 + 5;
                      v19[3] = 0;
                      v19[4] = 0;
                      v45 = 24;
                    }

                    else
                    {
                      v44 = v19 + 3;
                      v45 = 16;
                    }

                    v19 = (v19 + v45);
                    *v44 = 0;
                    --v43;
                  }

                  while (v43);
                }
              }

              goto LABEL_66;
            }

            ++v26;
          }

          v30 = v29 + v27;
LABEL_66:
          v79 += v29;
          ++v25;
          v27 = v30;
        }

        while (v25 != v28);
      }

      if (v81)
      {
        v82 = "hd/meshUtil.cpp";
        v83 = "_ComputeQuadIndices";
        v84 = 651;
        v85 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::_ComputeQuadIndices(VtIntArray *, VtIntArray *, VtVec2iArray *, BOOL) const";
        v86 = 0;
        v60 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v63 + 16));
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v82, "numVerts and verts are incosistent [%s]", v61, v60);
      }
    }

    else
    {
      v82 = "hd/meshUtil.cpp";
      v83 = "_ComputeQuadIndices";
      v84 = 475;
      v85 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::_ComputeQuadIndices(VtIntArray *, VtIntArray *, VtVec2iArray *, BOOL) const";
      v86 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v82, 1, "No output buffer provided for quadrangulation");
    }
  }

  else
  {
    v82 = "hd/meshUtil.cpp";
    v83 = "_ComputeQuadIndices";
    v84 = 470;
    v85 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::_ComputeQuadIndices(VtIntArray *, VtIntArray *, VtVec2iArray *, BOOL) const";
    v86 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v82, 1, "No topology provided for quadrangulation");
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadrangulatedPrimvar(uint64_t a1, int *a2, uint64_t a3, int a4, int a5, void *a6)
{
  if (*(a1 + 8))
  {
    if (a6)
    {
      if (a5 > 18)
      {
        if (a5 <= 20)
        {
          if (a5 != 19)
          {
            v17 = sub_29A1921FC(&v257, a2[1] + *a2);
            v197 = a6;
            if (*a2 <= a4)
            {
              sub_29A19255C(v17);
              memcpy(v261, a3, 16 * *a2);
              v20 = *a2;
            }

            else
            {
              v252 = "hd/meshUtil.cpp";
              v253 = "_Quadrangulate";
              v254 = 692;
              v255 = "void pxrInternal__aapl__pxrReserved__::_Quadrangulate(const SdfPath &, const void *, int, const HdQuadInfo *, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
              v256 = 0;
              Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v252, "source.numElements and pointsOffset are inconsistent [%s]", v19, Text);
              sub_29A19255C(&v257);
              memcpy(v261, a3, 16 * a4);
              v20 = *a2;
              if (*a2 > a4)
              {
                v21 = a4;
                v22 = a4;
                do
                {
                  sub_29A19255C(&v257);
                  f64 = v261[v22].f64;
                  ++v21;
                  *f64 = 0;
                  f64[1] = 0;
                  ++v22;
                }

                while (v21 < *a2);
                v20 = *a2;
              }
            }

            v153 = *(a2 + 2);
            v249 = a2;
            v206 = *(a2 + 3);
            if (v153 != v206)
            {
              v154 = 0;
              __asm { FMOV            V0.2D, #0.5 }

              v216 = _Q0;
              do
              {
                v156 = *v153;
                if (v156 < 1)
                {
                  v240 = 0u;
                }

                else
                {
                  v209 = v153;
                  v157 = 0;
                  v212 = v20;
                  v158 = v20;
                  v240 = 0u;
                  do
                  {
                    v159 = *(v249 + 5);
                    v160 = *(v159 + 4 * v154 + 4 * v157);
                    v161 = v157 + 1;
                    if (v156 - 1 == v157)
                    {
                      v162 = 0;
                    }

                    else
                    {
                      v162 = v157 + 1;
                    }

                    v163 = *(v159 + 4 * (v162 + v154));
                    sub_29A19255C(&v257);
                    v164 = v261;
                    sub_29A19255C(&v257);
                    v222 = v261[v163];
                    v229 = v164[v160];
                    sub_29A19255C(&v257);
                    v261[v158 + v157] = vmulq_f64(vaddq_f64(v229, v222), v216);
                    sub_29A19255C(&v257);
                    v240 = vaddq_f64(v240, v261[v160]);
                    ++v157;
                  }

                  while (v156 != v161);
                  v20 = v212 + v161;
                  v153 = v209;
                }

                sub_29A19255C(&v257);
                v261[v20] = vmulq_n_f64(v240, 1.0 / v156);
                v154 += v156;
                ++v153;
                ++v20;
              }

              while (v153 != v206);
            }

            sub_29A192690(v197, &v257);
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
          }

          v42 = sub_29A18FC40(&v257, a2[1] + *a2);
          v201 = a6;
          if (*a2 <= a4)
          {
            sub_29A190088(v42);
            memcpy(v261, a3, 8 * *a2);
            v45 = *a2;
          }

          else
          {
            v252 = "hd/meshUtil.cpp";
            v253 = "_Quadrangulate";
            v254 = 692;
            v255 = "void pxrInternal__aapl__pxrReserved__::_Quadrangulate(const SdfPath &, const void *, int, const HdQuadInfo *, VtValue *) [T = double]";
            v256 = 0;
            v43 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v252, "source.numElements and pointsOffset are inconsistent [%s]", v44, v43);
            sub_29A190088(&v257);
            memcpy(v261, a3, 8 * a4);
            v45 = *a2;
            if (*a2 > a4)
            {
              v46 = a4;
              do
              {
                sub_29A190088(&v257);
                v261->f64[v46++] = 0.0;
              }

              while (v46 < *a2);
              v45 = *a2;
            }
          }

          v75 = *(a2 + 2);
          v225 = *(a2 + 3);
          if (v75 != v225)
          {
            v76 = a2;
            v77 = 0;
            do
            {
              v78 = *v75;
              if (v78 < 1)
              {
                v81 = 0.0;
              }

              else
              {
                v234 = v75;
                v79 = 0;
                v245 = v45;
                v80 = v45;
                v81 = 0.0;
                do
                {
                  v82 = *(v76 + 5);
                  v83 = *(v82 + 4 * v77 + 4 * v79);
                  v84 = v79 + 1;
                  if (v78 - 1 == v79)
                  {
                    v85 = 0;
                  }

                  else
                  {
                    v85 = v79 + 1;
                  }

                  v86 = *(v82 + 4 * (v85 + v77));
                  sub_29A190088(&v257);
                  v87 = v261->f64[v83];
                  sub_29A190088(&v257);
                  v88 = v261->f64[v86];
                  sub_29A190088(&v257);
                  v261->f64[v79 + v80] = (v87 + v88) * 0.5;
                  sub_29A190088(&v257);
                  v81 = v81 + v261->f64[v83];
                  ++v79;
                }

                while (v78 != v84);
                v45 = v245 + v84;
                v75 = v234;
              }

              sub_29A190088(&v257);
              v261->f64[v45] = v81 / v78;
              v77 += v78;
              ++v75;
              ++v45;
            }

            while (v75 != v225);
          }

          sub_29A1901BC(v201, &v257);
          pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
        }

        if (a5 == 21)
        {
          v54 = sub_29A1948F8(&v257, a2[1] + *a2);
          v203 = a6;
          if (*a2 <= a4)
          {
            sub_29A194CC8(v54);
            memcpy(v261, a3, 24 * *a2);
            LODWORD(v57) = *a2;
          }

          else
          {
            v252 = "hd/meshUtil.cpp";
            v253 = "_Quadrangulate";
            v254 = 692;
            v255 = "void pxrInternal__aapl__pxrReserved__::_Quadrangulate(const SdfPath &, const void *, int, const HdQuadInfo *, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
            v256 = 0;
            v55 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v252, "source.numElements and pointsOffset are inconsistent [%s]", v56, v55);
            sub_29A194CC8(&v257);
            memcpy(v261, a3, 24 * a4);
            LODWORD(v57) = *a2;
            if (*a2 > a4)
            {
              v58 = a4;
              v59 = 3 * a4;
              do
              {
                sub_29A194CC8(&v257);
                v60 = &v261->f64[v59];
                ++v58;
                *v60 = 0;
                v60[1] = 0;
                v60[2] = 0;
                v57 = *a2;
                v59 += 3;
              }

              while (v58 < v57);
            }
          }

          v114 = *(a2 + 2);
          v247 = a2;
          v208 = *(a2 + 3);
          if (v114 != v208)
          {
            v115 = 0;
            __asm { FMOV            V0.2D, #0.5 }

            v220 = _Q0;
            do
            {
              v120 = *v114;
              if (v120 < 1)
              {
                v125 = 0.0;
                v124 = 0.0;
                v123 = 0.0;
              }

              else
              {
                v121 = 0;
                v215 = v57;
                v122 = 24 * v57;
                v123 = 0.0;
                v124 = 0.0;
                v125 = 0.0;
                do
                {
                  v126 = *(v247 + 5);
                  v127 = *(v126 + 4 * v115 + 4 * v121);
                  _ZF = v120 - 1 == v121++;
                  if (_ZF)
                  {
                    v128 = 0;
                  }

                  else
                  {
                    v128 = v121;
                  }

                  v129 = *(v126 + 4 * (v128 + v115));
                  sub_29A194CC8(&v257);
                  v130 = v261;
                  sub_29A194CC8(&v257);
                  v131 = (v130 + 24 * v127);
                  v132 = &v261->f64[3 * v129];
                  v133 = v131[1].f64[0];
                  v227 = *v132;
                  v237 = *v131;
                  v134 = v132[2];
                  sub_29A194CC8(&v257);
                  v135 = (v261 + v122);
                  *v135 = vmulq_f64(vaddq_f64(v237, v227), v220);
                  v135[1].f64[0] = (v133 + v134) * 0.5;
                  sub_29A194CC8(&v257);
                  v136 = &v261->f64[3 * v127];
                  v123 = v123 + *v136;
                  v124 = v124 + v136[1];
                  v125 = v125 + v136[2];
                  v122 += 24;
                }

                while (v120 != v121);
                LODWORD(v57) = v215 + v121;
              }

              sub_29A194CC8(&v257);
              v137 = 1.0 / v120;
              v138 = &v261->f64[3 * v57];
              LODWORD(v57) = v57 + 1;
              *v138 = v137 * v123;
              v138[1] = v137 * v124;
              v138[2] = v137 * v125;
              v115 += v120;
              ++v114;
            }

            while (v114 != v208);
          }

          sub_29A194DFC(v203, &v257);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
        }

        if (a5 == 22)
        {
          v31 = sub_29A196EB8(&v257, a2[1] + *a2);
          v199 = a6;
          if (*a2 <= a4)
          {
            sub_29A19722C(v31);
            memcpy(v261, a3, 32 * *a2);
            v34 = *a2;
          }

          else
          {
            v252 = "hd/meshUtil.cpp";
            v253 = "_Quadrangulate";
            v254 = 692;
            v255 = "void pxrInternal__aapl__pxrReserved__::_Quadrangulate(const SdfPath &, const void *, int, const HdQuadInfo *, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
            v256 = 0;
            v32 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v252, "source.numElements and pointsOffset are inconsistent [%s]", v33, v32);
            sub_29A19722C(&v257);
            memcpy(v261, a3, 32 * a4);
            v34 = *a2;
            if (*a2 > a4)
            {
              v35 = a4;
              v36 = 2 * a4;
              do
              {
                sub_29A19722C(&v257);
                v37 = v261[v36].f64;
                ++v35;
                *v37 = 0u;
                v37[1] = 0u;
                v36 += 2;
              }

              while (v35 < *a2);
              v34 = *a2;
            }
          }

          v178 = *(a2 + 2);
          v204 = *(a2 + 3);
          if (v178 != v204)
          {
            v179 = a2;
            v180 = 0;
            __asm { FMOV            V0.2D, #0.5 }

            v211 = _Q0;
            do
            {
              v182 = *v178;
              if (v182 < 1)
              {
                v243 = 0u;
                v251 = 0u;
              }

              else
              {
                v205 = v178;
                v207 = v34;
                v183 = 0;
                v184 = (32 * v34) | 0x10;
                v243 = 0u;
                v251 = 0u;
                do
                {
                  v185 = *(v179 + 5);
                  v186 = *(v185 + 4 * v180 + 4 * v183);
                  _ZF = v182 - 1 == v183++;
                  if (_ZF)
                  {
                    v187 = 0;
                  }

                  else
                  {
                    v187 = v183;
                  }

                  v188 = *(v185 + 4 * (v187 + v180));
                  sub_29A19722C(&v257);
                  v189 = v261;
                  sub_29A19722C(&v257);
                  v190 = &v189[2 * v186];
                  v191 = &v261[2 * v188];
                  v224 = v190[1];
                  v232 = *v190;
                  v214 = v191[1];
                  v218 = *v191;
                  sub_29A19722C(&v257);
                  v192 = (v261 + v184);
                  v192[-1] = vmulq_f64(vaddq_f64(v232, v218), v211);
                  *v192 = vmulq_f64(vaddq_f64(v224, v214), v211);
                  sub_29A19722C(&v257);
                  v193 = &v261[2 * v186];
                  v243 = vaddq_f64(v243, v193[1]);
                  v251 = vaddq_f64(v251, *v193);
                  v184 += 32;
                }

                while (v182 != v183);
                v178 = v205;
                v34 = v207 + v183;
              }

              sub_29A19722C(&v257);
              v194 = 1.0 / v182;
              v195 = &v261[2 * v34++];
              *v195 = vmulq_n_f64(v251, v194);
              v195[1] = vmulq_n_f64(v243, v194);
              v180 += v182;
              ++v178;
            }

            while (v178 != v204);
          }

          sub_29A197360(v199, &v257);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
        }
      }

      else if (a5 > 14)
      {
        if (a5 == 15)
        {
          v47 = sub_29A193124(&v257, a2[1] + *a2);
          v202 = a6;
          if (*a2 <= a4)
          {
            sub_29A1935CC(v47);
            memcpy(v261, a3, 12 * *a2);
            LODWORD(v50) = *a2;
          }

          else
          {
            v252 = "hd/meshUtil.cpp";
            v253 = "_Quadrangulate";
            v254 = 692;
            v255 = "void pxrInternal__aapl__pxrReserved__::_Quadrangulate(const SdfPath &, const void *, int, const HdQuadInfo *, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
            v256 = 0;
            v48 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v252, "source.numElements and pointsOffset are inconsistent [%s]", v49, v48);
            sub_29A1935CC(&v257);
            memcpy(v261, a3, 12 * a4);
            LODWORD(v50) = *a2;
            if (*a2 > a4)
            {
              v51 = a4;
              v52 = 12 * a4;
              do
              {
                sub_29A1935CC(&v257);
                v53 = v261 + v52;
                *v53 = 0;
                *(v53 + 2) = 0;
                ++v51;
                v50 = *a2;
                v52 += 12;
              }

              while (v51 < v50);
            }
          }

          v89 = *(a2 + 2);
          v246 = a2;
          v219 = *(a2 + 3);
          if (v89 != v219)
          {
            v90 = 0;
            do
            {
              v91 = *v89;
              if (v91 < 1)
              {
                v236 = 0u;
                v110 = 0.0;
              }

              else
              {
                v226 = v89;
                v92 = 0;
                v235 = v50;
                v93 = 12 * v50;
                v94 = 0;
                v95 = 0.0;
                do
                {
                  v96 = *(v246 + 5);
                  v97 = *(v96 + 4 * v90 + 4 * v92);
                  _ZF = v91 - 1 == v92++;
                  if (_ZF)
                  {
                    v99 = 0;
                  }

                  else
                  {
                    v99 = v92;
                  }

                  v100 = *(v96 + 4 * (v99 + v90));
                  sub_29A1935CC(&v257);
                  v101 = v261;
                  sub_29A1935CC(&v257);
                  v102 = (v101 + 12 * v97);
                  v103 = v261 + 3 * v100;
                  v104 = v102[1].f32[0];
                  v105 = *v102;
                  v106 = *v103;
                  v107 = v103[2];
                  sub_29A1935CC(&v257);
                  v108 = (v261 + v93);
                  *v108 = vmul_f32(vadd_f32(v105, v106), 0x3F0000003F000000);
                  v108[1].f32[0] = (v104 + v107) * 0.5;
                  sub_29A1935CC(&v257);
                  v109 = (v261 + 12 * v97);
                  v94 = vadd_f32(v94, *v109);
                  v95 = v95 + v109[1].f32[0];
                  v93 += 12;
                }

                while (v91 != v92);
                LODWORD(v50) = v235 + v92;
                v110 = v95;
                v236 = vcvtq_f64_f32(v94);
                v89 = v226;
              }

              sub_29A1935CC(&v257);
              v111 = 1.0 / v91;
              v112 = v111 * v110;
              v113 = (v261 + 12 * v50);
              LODWORD(v50) = v50 + 1;
              *v113 = vcvt_f32_f64(vmulq_n_f64(v236, v111));
              v113[1].f32[0] = v112;
              v90 += v91;
              ++v89;
            }

            while (v89 != v219);
          }

          sub_29A193700(v202, &v257);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
        }

        if (a5 == 16)
        {
          v24 = sub_29A195790(&v257, a2[1] + *a2);
          v198 = a6;
          if (*a2 <= a4)
          {
            sub_29A195BC4(v24);
            memcpy(v261, a3, 16 * *a2);
            v27 = *a2;
          }

          else
          {
            v252 = "hd/meshUtil.cpp";
            v253 = "_Quadrangulate";
            v254 = 692;
            v255 = "void pxrInternal__aapl__pxrReserved__::_Quadrangulate(const SdfPath &, const void *, int, const HdQuadInfo *, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
            v256 = 0;
            v25 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v252, "source.numElements and pointsOffset are inconsistent [%s]", v26, v25);
            sub_29A195BC4(&v257);
            memcpy(v261, a3, 16 * a4);
            v27 = *a2;
            if (*a2 > a4)
            {
              v28 = a4;
              v29 = a4;
              do
              {
                sub_29A195BC4(&v257);
                v30 = v261[v29].f64;
                ++v28;
                *v30 = 0;
                v30[1] = 0;
                ++v29;
              }

              while (v28 < *a2);
              v27 = *a2;
            }
          }

          v165 = *(a2 + 2);
          v250 = a2;
          v210 = *(a2 + 3);
          if (v165 != v210)
          {
            v166 = 0;
            do
            {
              v167 = *v165;
              if (v167 < 1)
              {
                v231 = 0u;
                v242 = 0u;
              }

              else
              {
                v213 = v165;
                v168 = 0;
                v217 = v27;
                v169 = v27;
                v170 = 0uLL;
                do
                {
                  v241 = v170;
                  v171 = *(v250 + 5);
                  v172 = *(v171 + 4 * v166 + 4 * v168);
                  v173 = v168 + 1;
                  if (v167 - 1 == v168)
                  {
                    v174 = 0;
                  }

                  else
                  {
                    v174 = v168 + 1;
                  }

                  v175 = *(v171 + 4 * (v174 + v166));
                  sub_29A195BC4(&v257);
                  v176 = v261;
                  sub_29A195BC4(&v257);
                  v223 = v261[v175];
                  v230 = v176[v172];
                  sub_29A195BC4(&v257);
                  v177.i64[0] = 0x3F0000003F000000;
                  v177.i64[1] = 0x3F0000003F000000;
                  v261[v169 + v168] = vmulq_f32(vaddq_f32(v230, v223), v177);
                  sub_29A195BC4(&v257);
                  v170 = vaddq_f32(v241, v261[v172]);
                  ++v168;
                }

                while (v167 != v173);
                v27 = v217 + v173;
                v231 = vcvt_hight_f64_f32(v170);
                v242 = vcvtq_f64_f32(*v170.f32);
                v165 = v213;
              }

              sub_29A195BC4(&v257);
              v261[v27] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v242, 1.0 / v167)), vmulq_n_f64(v231, 1.0 / v167));
              v166 += v167;
              ++v165;
              ++v27;
            }

            while (v165 != v210);
          }

          sub_29A195CF8(v198, &v257);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
        }
      }

      else
      {
        if (a5 == 13)
        {
          v38 = sub_29A18E048(&v257, a2[1] + *a2);
          v200 = a6;
          if (*a2 <= a4)
          {
            sub_29A18E624(v38);
            memcpy(v261, a3, 4 * *a2);
            LODWORD(a3) = *a2;
          }

          else
          {
            v252 = "hd/meshUtil.cpp";
            v253 = "_Quadrangulate";
            v254 = 692;
            v255 = "void pxrInternal__aapl__pxrReserved__::_Quadrangulate(const SdfPath &, const void *, int, const HdQuadInfo *, VtValue *) [T = float]";
            v256 = 0;
            v39 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v252, "source.numElements and pointsOffset are inconsistent [%s]", v40, v39);
            sub_29A18E624(&v257);
            memcpy(v261, a3, 4 * a4);
            LODWORD(a3) = *a2;
            if (*a2 > a4)
            {
              v41 = a4;
              do
              {
                sub_29A18E624(&v257);
                *(v261->f64 + v41++) = 0;
                a3 = *a2;
              }

              while (v41 < a3);
            }
          }

          v61 = *(a2 + 2);
          v233 = *(a2 + 3);
          if (v61 != v233)
          {
            v62 = a2;
            v63 = 0;
            do
            {
              v64 = *v61;
              v244 = *v61;
              if (v64 < 1)
              {
                v67 = 0.0;
              }

              else
              {
                v65 = 4 * a3;
                v66 = 4 * v63;
                v67 = 0.0;
                v68 = 1;
                do
                {
                  v69 = *(v62 + 5);
                  v70 = *(v69 + v66);
                  if (v64 == 1)
                  {
                    v71 = 0;
                  }

                  else
                  {
                    v71 = v68;
                  }

                  v72 = *(v69 + 4 * (v71 + v63));
                  sub_29A18E624(&v257);
                  v73 = *(v261->f64 + v70);
                  sub_29A18E624(&v257);
                  v74 = *(v261->f64 + v72);
                  sub_29A18E624(&v257);
                  *(v261->f64 + v65) = (v73 + v74) * 0.5;
                  sub_29A18E624(&v257);
                  v65 += 4;
                  v67 = v67 + *(v261->f64 + v70);
                  LODWORD(a3) = a3 + 1;
                  ++v68;
                  v66 += 4;
                  --v64;
                }

                while (v64);
              }

              sub_29A18E624(&v257);
              *(v261->f64 + a3) = v67 / v244;
              v63 += v244;
              ++v61;
              LODWORD(a3) = a3 + 1;
            }

            while (v61 != v233);
          }

          sub_29A18E758(v200, &v257);
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
        }

        if (a5 == 14)
        {
          v11 = sub_29A190B18(&v257, a2[1] + *a2);
          v196 = a6;
          if (*a2 <= a4)
          {
            sub_29A190F50(v11);
            memcpy(v261, a3, 8 * *a2);
            v14 = *a2;
          }

          else
          {
            v252 = "hd/meshUtil.cpp";
            v253 = "_Quadrangulate";
            v254 = 692;
            v255 = "void pxrInternal__aapl__pxrReserved__::_Quadrangulate(const SdfPath &, const void *, int, const HdQuadInfo *, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
            v256 = 0;
            v12 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v252, "source.numElements and pointsOffset are inconsistent [%s]", v13, v12);
            sub_29A190F50(&v257);
            memcpy(v261, a3, 8 * a4);
            v14 = *a2;
            if (*a2 > a4)
            {
              v15 = a4;
              do
              {
                sub_29A190F50(&v257);
                v261->f64[v15++] = 0.0;
              }

              while (v15 < *a2);
              v14 = *a2;
            }
          }

          v139 = *(a2 + 2);
          v248 = a2;
          v221 = *(a2 + 3);
          if (v139 != v221)
          {
            v140 = 0;
            do
            {
              v141 = *v139;
              if (v141 < 1)
              {
                v239 = 0u;
              }

              else
              {
                v228 = v139;
                v142 = 0;
                v238 = v14;
                v143 = v14;
                v144 = 0;
                do
                {
                  v145 = *(v248 + 5);
                  v146 = *(v145 + 4 * v140 + 4 * v142);
                  v147 = v142 + 1;
                  if (v141 - 1 == v142)
                  {
                    v148 = 0;
                  }

                  else
                  {
                    v148 = v142 + 1;
                  }

                  v149 = *(v145 + 4 * (v148 + v140));
                  sub_29A190F50(&v257);
                  v150 = v261;
                  sub_29A190F50(&v257);
                  v151 = *&v150->f64[v146];
                  v152 = *&v261->f64[v149];
                  sub_29A190F50(&v257);
                  *&v261->f64[v142 + v143] = vmul_f32(vadd_f32(v151, v152), 0x3F0000003F000000);
                  sub_29A190F50(&v257);
                  v144 = vadd_f32(v144, *&v261->f64[v146]);
                  ++v142;
                }

                while (v141 != v147);
                v14 = v238 + v147;
                v239 = vcvtq_f64_f32(v144);
                v139 = v228;
              }

              sub_29A190F50(&v257);
              *&v261->f64[v14] = vcvt_f32_f64(vmulq_n_f64(v239, 1.0 / v141));
              v140 += v141;
              ++v139;
              ++v14;
            }

            while (v139 != v221);
          }

          sub_29A191084(v196, &v257);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
        }
      }

      v257 = "hd/meshUtil.cpp";
      v258 = "ComputeQuadrangulatedPrimvar";
      v259 = 772;
      v260 = "BOOL pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadrangulatedPrimvar(const HdQuadInfo *, const void *, int, HdType, VtValue *) const";
      LOBYTE(v261) = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v257, 1, "Unsupported points type for quadrangulation [%s]");
    }

    else
    {
      v257 = "hd/meshUtil.cpp";
      v258 = "ComputeQuadrangulatedPrimvar";
      v259 = 741;
      v260 = "BOOL pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadrangulatedPrimvar(const HdQuadInfo *, const void *, int, HdType, VtValue *) const";
      LOBYTE(v261) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v257, 1, "No output buffer provided for quadrangulation");
    }
  }

  else
  {
    v257 = "hd/meshUtil.cpp";
    v258 = "ComputeQuadrangulatedPrimvar";
    v259 = 737;
    v260 = "BOOL pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadrangulatedPrimvar(const HdQuadInfo *, const void *, int, HdType, VtValue *) const";
    LOBYTE(v261) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v257, 1, "No topology provided for quadrangulation");
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadrangulatedFaceVaryingPrimvar(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v694 = *(a1 + 8);
  if (v694)
  {
    v5 = a5;
    if (a5)
    {
      v7 = a1;
      v8 = *(a1 + 8);
      if (*(v694 + 488) < 1)
      {
        v695 = *(v694 + 104);
        v9 = *(v694 + 136);
        v696 = v9;
        if (v9)
        {
          v10 = (v9 - 16);
          if (*(v694 + 128))
          {
            v10 = *(v694 + 128);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
          v8 = *(a1 + 8);
        }
      }

      else
      {
        v696 = 0;
        LODWORD(v695) = 0;
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v11)
      {
        v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v602 = *(v11 + 71) ^ *(v8 + 16);
      if (a4 > 18)
      {
        if (a4 <= 20)
        {
          if (a4 != 19)
          {
            if (*(v694 + 24) < 1)
            {
              v28 = 0;
            }

            else
            {
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 0;
              v25 = *(v694 + 24) & 0x7FFFFFFFLL;
              do
              {
                while (1)
                {
                  v26 = *(*(v694 + 56) + 4 * v21);
                  if (v26 >= 3)
                  {
                    break;
                  }

                  v22 = 1;
                  _ZF = v25 - 1 == v21++;
                  if (_ZF)
                  {
                    v28 = v23;
                    goto LABEL_140;
                  }
                }

                if (v24 < v695 && v21 == *(v696 + 4 * v24))
                {
                  ++v24;
                }

                else
                {
                  _ZF = v26 == 4;
                  v27 = v23 + 4 * v26;
                  v23 += 4;
                  if (!_ZF)
                  {
                    v23 = v27;
                  }
                }

                ++v21;
              }

              while (v25 != v21);
              v28 = v23;
              if (v22)
              {
LABEL_140:
                v702 = "hd/meshUtil.cpp";
                v703 = "_QuadrangulateFaceVarying";
                v704 = 811;
                v705 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
                LOBYTE(v706) = 0;
                Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
                pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v702, "degenerated face found [%s]", v92, Text);
              }
            }

            sub_29A1921FC(&v702, v28);
            if (*(v694 + 24) < 1)
            {
              goto LABEL_413;
            }

            v422 = 0;
            v423 = 0;
            v681 = 0;
            v424 = 0;
            v425 = 0;
            __asm { FMOV            V0.2D, #0.5 }

            v666 = _Q0;
LABEL_314:
            v427 = v694;
            v689 = (a2 + 16 * v425);
            while (1)
            {
              v428 = *(*(v427 + 56) + 4 * v422);
              if (v428 < 3)
              {
                goto LABEL_337;
              }

              if (v681 < v695 && v422 == *(v696 + 4 * v681))
              {
                ++v681;
                goto LABEL_337;
              }

              if (v428 == 4)
              {
                if (v425 + 4 <= a3)
                {
                  sub_29A19255C(&v702);
                  v453 = v424 + 1;
                  v454 = (a2 + 16 * v425);
                  *(v706 + 16 * v424) = *v454;
                  sub_29A19255C(&v702);
                  if (v602 < 8)
                  {
                    *(v706 + 16 * v453) = v454[1];
                    sub_29A19255C(&v702);
                    *(v706 + 16 * v424 + 32) = v454[2];
                    sub_29A19255C(&v702);
                    v455 = v706 + 16 * v424;
                    v424 += 4;
                    v456 = v454[3];
                  }

                  else
                  {
                    *(v706 + 16 * v453) = v454[3];
                    sub_29A19255C(&v702);
                    *(v706 + 16 * v424 + 32) = v454[2];
                    sub_29A19255C(&v702);
                    v455 = v706 + 16 * v424;
                    v424 += 4;
                    v456 = v454[1];
                  }

                  *(v455 + 48) = v456;
LABEL_337:
                  v425 += v428;
                  if (++v422 >= *(v694 + 24))
                  {
                    if (v423)
                    {
LABEL_412:
                      v697 = "hd/meshUtil.cpp";
                      v698 = "_QuadrangulateFaceVarying";
                      v699 = 907;
                      v700 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
                      v701 = 0;
                      v569 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
                      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v697, "numVerts and verts are incosistent [%s]", v570, v569);
                    }

LABEL_413:
                    sub_29A192690(v5, &v702);
                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
                  }

                  goto LABEL_314;
                }

                sub_29A19255C(&v702);
                v435 = (v706 + 16 * v424);
                *v435 = 0;
                v435[1] = 0;
                sub_29A19255C(&v702);
                v436 = v706 + 16 * v424;
                *(v436 + 16) = 0;
                *(v436 + 24) = 0;
                sub_29A19255C(&v702);
                v437 = v706 + 16 * v424;
                *(v437 + 32) = 0;
                *(v437 + 40) = 0;
                sub_29A19255C(&v702);
                v438 = v706 + 16 * v424;
                v424 += 4;
                *(v438 + 48) = 0;
                *(v438 + 56) = 0;
                ++v422;
                v427 = v694;
                v434 = *(v694 + 24);
                v689 += 4;
                v423 = 1;
                v425 += 4;
              }

              else
              {
                if (v428 + v425 <= a3)
                {
                  v591 = v7;
                  v598 = v5;
                  v439 = 0uLL;
                  v440 = v689;
                  v441 = v428;
                  v442 = (a2 + 16 * v425);
                  do
                  {
                    v443 = *v440++;
                    v439 = vaddq_f64(v439, v443);
                    --v441;
                  }

                  while (v441);
                  v653 = v439;
                  v621 = v442[1];
                  v629 = *v442;
                  v616 = *(a2 + 16 * ((v428 - 1) % v428 + v425));
                  sub_29A19255C(&v702);
                  v444 = vmulq_n_f64(v653, 1.0 / v428);
                  v654 = vmulq_f64(vaddq_f64(v621, v629), v666);
                  v630 = vmulq_f64(vaddq_f64(v629, v616), v666);
                  v639 = v444;
                  v445 = v424 + 1;
                  *(v706 + 16 * v424) = *v442;
                  if (v602 < 8)
                  {
                    sub_29A19255C(&v702);
                    *(v706 + 16 * v445) = v654;
                    sub_29A19255C(&v702);
                    *(v706 + 16 * v424 + 32) = v639;
                    sub_29A19255C(&v702);
                    v450 = 0;
                    *(v706 + 16 * v424 + 48) = v630;
                    v451 = 16 * (v424 + 4);
                    v452 = 1;
                    do
                    {
                      v656 = v689[v452];
                      v623 = *(a2 + 16 * ((v428 + v450) % v428 + v425));
                      v632 = *(a2 + 16 * ((v450 + 2) % v428 + v425));
                      sub_29A19255C(&v702);
                      *(v706 + v451) = v689[v452];
                      sub_29A19255C(&v702);
                      *(v706 + 16 * v424 + 80) = vmulq_f64(vaddq_f64(v656, v632), v666);
                      sub_29A19255C(&v702);
                      *(v706 + 16 * v424 + 96) = v639;
                      sub_29A19255C(&v702);
                      ++v450;
                      *(v706 + 16 * v424 + 112) = vmulq_f64(vaddq_f64(v656, v623), v666);
                      ++v452;
                      v424 += 4;
                      v451 += 64;
                    }

                    while (v428 - 1 != v450);
                  }

                  else
                  {
                    sub_29A19255C(&v702);
                    *(v706 + 16 * v445) = v630;
                    sub_29A19255C(&v702);
                    *(v706 + 16 * v424 + 32) = v639;
                    sub_29A19255C(&v702);
                    *(v706 + 16 * v424 + 48) = v654;
                    v446 = v428;
                    v447 = 2 * v428 - 2;
                    v448 = v428 - 1;
                    v449 = 16 * (v424 + 4);
                    do
                    {
                      v655 = v689[v448];
                      v622 = *(a2 + 16 * (v446 % v428 + v425));
                      v631 = *(a2 + 16 * (v447 % v428 + v425));
                      sub_29A19255C(&v702);
                      *(v706 + v449) = v689[v448];
                      sub_29A19255C(&v702);
                      *(v706 + 16 * v424 + 80) = vmulq_f64(vaddq_f64(v655, v631), v666);
                      sub_29A19255C(&v702);
                      *(v706 + 16 * v424 + 96) = v639;
                      sub_29A19255C(&v702);
                      --v446;
                      --v447;
                      *(v706 + 16 * v424 + 112) = vmulq_f64(vaddq_f64(v655, v622), v666);
                      --v448;
                      v424 += 4;
                      v449 += 64;
                    }

                    while (v446 > 1);
                  }

                  v424 += 4;
                  v7 = v591;
                  v5 = v598;
                  goto LABEL_337;
                }

                v429 = 16 * v424;
                do
                {
                  sub_29A19255C(&v702);
                  v430 = (v706 + v429);
                  *v430 = 0;
                  v430[1] = 0;
                  sub_29A19255C(&v702);
                  v431 = v706 + v429;
                  *(v431 + 16) = 0;
                  *(v431 + 24) = 0;
                  sub_29A19255C(&v702);
                  v432 = v706 + v429;
                  *(v432 + 32) = 0;
                  *(v432 + 40) = 0;
                  sub_29A19255C(&v702);
                  v433 = v706 + v429;
                  *(v433 + 48) = 0;
                  *(v433 + 56) = 0;
                  v424 += 4;
                  v429 += 64;
                  LODWORD(v428) = v428 - 1;
                }

                while (v428);
                ++v422;
                v427 = v694;
                v434 = *(v694 + 24);
                v423 = 1;
              }

              if (v422 >= v434)
              {
                goto LABEL_412;
              }
            }
          }

          v54 = v695;
          if (*(v694 + 24) < 1)
          {
            v62 = 0;
          }

          else
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = *(v694 + 24) & 0x7FFFFFFFLL;
            do
            {
              while (1)
              {
                v60 = *(*(v694 + 56) + 4 * v55);
                if (v60 >= 3)
                {
                  break;
                }

                v56 = 1;
                _ZF = v59 - 1 == v55++;
                if (_ZF)
                {
                  v62 = v57;
                  goto LABEL_132;
                }
              }

              if (v58 < v695 && v55 == *(v696 + 4 * v58))
              {
                ++v58;
              }

              else
              {
                _ZF = v60 == 4;
                v61 = v57 + 4 * v60;
                v57 += 4;
                if (!_ZF)
                {
                  v57 = v61;
                }
              }

              ++v55;
            }

            while (v59 != v55);
            v62 = v57;
            if (v56)
            {
LABEL_132:
              v702 = "hd/meshUtil.cpp";
              v703 = "_QuadrangulateFaceVarying";
              v704 = 811;
              v705 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = double]";
              LOBYTE(v706) = 0;
              v83 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v702, "degenerated face found [%s]", v84, v83);
            }
          }

          sub_29A18FC40(&v702, v62);
          if (*(v694 + 24) < 1)
          {
            goto LABEL_431;
          }

          v145 = 0;
          v146 = 0;
          v147 = 0;
          v148 = 0;
          v149 = 0;
LABEL_183:
          v150 = v694;
          v685 = (a2 + 8 * v147);
          while (1)
          {
            v151 = *(*(v150 + 56) + 4 * v145);
            if (v151 < 3)
            {
              goto LABEL_209;
            }

            if (v149 < v54 && v145 == *(v696 + 4 * v149))
            {
              v149 = (v149 + 1);
              goto LABEL_209;
            }

            if (v151 == 4)
            {
              v154 = v147 + 4;
              if (v147 + 4 <= a3)
              {
                v661 = v149;
                v181 = v7;
                v182 = (a2 + 8 * v147);
                v183 = *v182;
                sub_29A190088(&v702);
                v184 = v148 + 1;
                *(v706 + 8 * v148) = v183;
                if (v602 < 8)
                {
                  v188 = v182[1];
                  sub_29A190088(&v702);
                  *(v706 + 8 * v184) = v188;
                  v189 = v182[2];
                  sub_29A190088(&v702);
                  *(v706 + 8 * v148 + 16) = v189;
                  v187 = v182[3];
                }

                else
                {
                  v185 = v182[3];
                  sub_29A190088(&v702);
                  *(v706 + 8 * v184) = v185;
                  v186 = v182[2];
                  sub_29A190088(&v702);
                  *(v706 + 8 * v148 + 16) = v186;
                  v187 = v182[1];
                }

                sub_29A190088(&v702);
                v190 = v706 + 8 * v148;
                v148 += 4;
                *(v190 + 24) = v187;
                v7 = v181;
LABEL_208:
                v54 = v695;
                v149 = v661;
LABEL_209:
                v147 += v151;
                if (++v145 >= *(v694 + 24))
                {
                  if (v146)
                  {
LABEL_430:
                    v697 = "hd/meshUtil.cpp";
                    v698 = "_QuadrangulateFaceVarying";
                    v699 = 907;
                    v700 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = double]";
                    v701 = 0;
                    v581 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
                    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v697, "numVerts and verts are incosistent [%s]", v582, v581);
                  }

LABEL_431:
                  sub_29A1901BC(v5, &v702);
                  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
                }

                goto LABEL_183;
              }

              sub_29A190088(&v702);
              *(v706 + 8 * v148) = 0;
              sub_29A190088(&v702);
              v155 = v148;
              *(v706 + 8 * v148 + 8) = 0;
              sub_29A190088(&v702);
              *(v706 + 8 * v148 + 16) = 0;
              sub_29A190088(&v702);
              v148 += 4;
              *(v706 + 8 * v155 + 24) = 0;
              ++v145;
              v150 = v694;
              v153 = *(v694 + 24);
              v685 += 4;
              v146 = 1;
              v147 = v154;
            }

            else
            {
              if (v151 + v147 <= a3)
              {
                v156 = 0.0;
                v157 = v685;
                v158 = *(*(v150 + 56) + 4 * v145);
                v159 = (a2 + 8 * v147);
                do
                {
                  v160 = *v157++;
                  v156 = v156 + v160;
                  --v158;
                }

                while (v158);
                v661 = v149;
                v587 = v7;
                v162 = *v159;
                v161 = v159[1];
                v163 = v151 - 1;
                v164 = *(a2 + 8 * ((v151 - 1) % v151 + v147));
                sub_29A190088(&v702);
                v165 = v156 / v151;
                v166 = (v162 + v161) * 0.5;
                v167 = (v162 + v164) * 0.5;
                v168 = v148 + 1;
                *(v706 + 8 * v148) = v162;
                if (v602 < 8)
                {
                  sub_29A190088(&v702);
                  *(v706 + 8 * v168) = v166;
                  sub_29A190088(&v702);
                  *(v706 + 8 * v148 + 16) = v165;
                  sub_29A190088(&v702);
                  *(v706 + 8 * v148 + 24) = v167;
                  v175 = 8 * (v148 + 4);
                  v176 = 1;
                  do
                  {
                    v177 = v685[v176];
                    v178 = v176 + 1;
                    v179 = *(a2 + 8 * ((v176 + 1) % v151 + v147));
                    v180 = *(a2 + 8 * ((v151 - 1 + v176) % v151 + v147));
                    sub_29A190088(&v702);
                    *(v706 + v175) = v177;
                    sub_29A190088(&v702);
                    *(v706 + 8 * v148 + 40) = (v177 + v179) * 0.5;
                    sub_29A190088(&v702);
                    *(v706 + 8 * v148 + 48) = v165;
                    sub_29A190088(&v702);
                    *(v706 + 8 * v148 + 56) = (v177 + v180) * 0.5;
                    v148 += 4;
                    v175 += 32;
                    v176 = v178;
                  }

                  while (v151 != v178);
                  v148 += 4;
                }

                else
                {
                  sub_29A190088(&v702);
                  *(v706 + 8 * v168) = v167;
                  sub_29A190088(&v702);
                  *(v706 + 8 * v148 + 16) = v165;
                  sub_29A190088(&v702);
                  *(v706 + 8 * v148 + 24) = v166;
                  v169 = 2 * v151 - 2;
                  v170 = 8 * (v148 + 4);
                  v171 = v151;
                  do
                  {
                    v172 = v685[v163];
                    v173 = *(a2 + 8 * (v171 % v151 + v147));
                    v174 = *(a2 + 8 * (v169 % v151 + v147));
                    sub_29A190088(&v702);
                    *(v706 + v170) = v172;
                    sub_29A190088(&v702);
                    *(v706 + 8 * v148 + 40) = (v172 + v174) * 0.5;
                    sub_29A190088(&v702);
                    *(v706 + 8 * v148 + 48) = v165;
                    sub_29A190088(&v702);
                    --v169;
                    *(v706 + 8 * v148 + 56) = (v172 + v173) * 0.5;
                    --v171;
                    v148 += 4;
                    v170 += 32;
                    v127 = v163-- <= 1;
                  }

                  while (!v127);
                  v148 += 4;
                }

                v7 = v587;
                goto LABEL_208;
              }

              v152 = 8 * v148;
              do
              {
                sub_29A190088(&v702);
                *(v706 + v152) = 0;
                sub_29A190088(&v702);
                *(v706 + v152 + 8) = 0;
                sub_29A190088(&v702);
                *(v706 + v152 + 16) = 0;
                sub_29A190088(&v702);
                *(v706 + v152 + 24) = 0;
                v148 += 4;
                v152 += 32;
                LODWORD(v151) = v151 - 1;
              }

              while (v151);
              ++v145;
              v150 = v694;
              v153 = *(v694 + 24);
              v146 = 1;
            }

            if (v145 >= v153)
            {
              goto LABEL_430;
            }
          }
        }

        if (a4 == 21)
        {
          v71 = v695;
          if (*(v694 + 24) < 1)
          {
            v79 = 0;
          }

          else
          {
            v72 = 0;
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = *(v694 + 24) & 0x7FFFFFFFLL;
            do
            {
              while (1)
              {
                v77 = *(*(v694 + 56) + 4 * v72);
                if (v77 >= 3)
                {
                  break;
                }

                v73 = 1;
                _ZF = v76 - 1 == v72++;
                if (_ZF)
                {
                  v79 = v74;
                  goto LABEL_136;
                }
              }

              if (v75 < v695 && v72 == *(v696 + 4 * v75))
              {
                ++v75;
              }

              else
              {
                _ZF = v77 == 4;
                v78 = v74 + 4 * v77;
                v74 += 4;
                if (!_ZF)
                {
                  v74 = v78;
                }
              }

              ++v72;
            }

            while (v76 != v72);
            v79 = v74;
            if (v73)
            {
LABEL_136:
              v702 = "hd/meshUtil.cpp";
              v703 = "_QuadrangulateFaceVarying";
              v704 = 811;
              v705 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
              LOBYTE(v706) = 0;
              v87 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v702, "degenerated face found [%s]", v88, v87);
            }
          }

          sub_29A1948F8(&v702, v79);
          v589 = v7;
          v596 = v5;
          if (*(v694 + 24) >= 1)
          {
            v285 = 0;
            v286 = 0;
            v287 = 0;
            v288 = 0;
            v289 = 0;
            v290 = a2 + 16;
            __asm { FMOV            V0.2D, #0.5 }

            v687 = _Q0;
            do
            {
              v644 = (v290 + 24 * v289);
              v295 = a2 + 24 + 24 * v289;
              v677 = a2 + 24 * v289;
              v296 = v694;
              while (1)
              {
                while (1)
                {
                  v297 = *(*(v296 + 56) + 4 * v285);
                  if (v297 < 3)
                  {
                    goto LABEL_273;
                  }

                  if (v287 < v71 && v285 == *(v696 + 4 * v287))
                  {
                    v287 = (v287 + 1);
                    goto LABEL_273;
                  }

                  if (v297 == 4)
                  {
                    break;
                  }

                  if (v297 + v289 <= a3)
                  {
                    v603 = v286;
                    v615 = v287;
                    v307 = (a2 + 24 * v289);
                    v308 = 0.0;
                    v309 = v644;
                    v310 = v297;
                    v311 = 0.0;
                    v312 = 0.0;
                    do
                    {
                      v308 = v308 + *(v309 - 2);
                      v311 = v311 + *(v309 - 1);
                      v313 = *v309;
                      v309 += 3;
                      v312 = v312 + v313;
                      --v310;
                    }

                    while (v310);
                    v662 = v307[5];
                    v649 = v307[4];
                    v314 = v307[2];
                    v637 = v307[3];
                    v316 = *v307;
                    v315 = v307[1];
                    v317 = v297 - 1;
                    v318 = (a2 + 24 * ((v297 - 1) % v297 + v289));
                    v320 = *v318;
                    v319 = v318[1];
                    v628 = v318[2];
                    sub_29A194CC8(&v702);
                    v321 = 1.0 / v297;
                    v322 = v321 * v308;
                    v323 = v321 * v311;
                    v324 = v321 * v312;
                    v638 = (v316 + v637) * 0.5;
                    v650 = (v649 + v315) * 0.5;
                    v663 = (v662 + v314) * 0.5;
                    v325 = v314 + v628;
                    v326 = (v316 + v320) * 0.5;
                    v327 = (v315 + v319) * 0.5;
                    v328 = v325 * 0.5;
                    v329 = v288 + 1;
                    v330 = *v307;
                    v331 = v706 + 24 * v288;
                    *(v331 + 16) = v307[2];
                    *v331 = v330;
                    if (v602 < 8)
                    {
                      sub_29A194CC8(&v702);
                      v350 = v322;
                      v351 = (v706 + 24 * v329);
                      *v351 = v638;
                      v351[1] = v650;
                      v351[2] = v663;
                      sub_29A194CC8(&v702);
                      v352 = (v706 + 24 * v288);
                      v352[6] = v322;
                      v352[7] = v323;
                      v352[8] = v324;
                      sub_29A194CC8(&v702);
                      v353 = 0;
                      v354 = (v706 + 24 * v288);
                      v354[9] = v326;
                      v354[10] = v327;
                      v354[11] = v328;
                      v355 = 24 * (v288 + 4);
                      v356 = 1;
                      do
                      {
                        v357 = (a2 + 24 * ((v353 + 2) % v297 + v289));
                        v358 = *(v295 + 16);
                        v359 = v357[1].f64[0];
                        v360 = (a2 + 24 * ((v297 + v353) % v297 + v289));
                        v665 = *v357;
                        v679 = *v295;
                        v652 = *v360;
                        v361 = v360[1].f64[0];
                        sub_29A194CC8(&v702);
                        v362 = v706 + v355;
                        v363 = *v295;
                        *(v362 + 16) = *(v295 + 16);
                        *v362 = v363;
                        sub_29A194CC8(&v702);
                        v364 = v706 + 24 * v288;
                        *(v364 + 120) = vmulq_f64(vaddq_f64(v679, v665), v687);
                        *(v364 + 136) = (v358 + v359) * 0.5;
                        sub_29A194CC8(&v702);
                        v365 = (v706 + 24 * v288);
                        v365[18] = v350;
                        v365[19] = v323;
                        v365[20] = v324;
                        sub_29A194CC8(&v702);
                        ++v356;
                        v366 = v706 + 24 * v288;
                        ++v353;
                        *(v366 + 168) = vmulq_f64(vaddq_f64(v679, v652), v687);
                        *(v366 + 184) = (v358 + v361) * 0.5;
                        v295 += 24;
                        v288 += 4;
                        v355 += 96;
                      }

                      while (v297 != v356);
                    }

                    else
                    {
                      sub_29A194CC8(&v702);
                      v332 = v322;
                      v333 = (v706 + 24 * v329);
                      *v333 = v326;
                      v333[1] = v327;
                      v333[2] = v328;
                      sub_29A194CC8(&v702);
                      v334 = (v706 + 24 * v288);
                      v334[6] = v322;
                      v334[7] = v323;
                      v334[8] = v324;
                      sub_29A194CC8(&v702);
                      v335 = 0;
                      v336 = (v706 + 24 * v288);
                      v336[9] = v638;
                      v336[10] = v650;
                      v336[11] = v663;
                      v337 = v677 + 24 * v317;
                      v338 = 3 * v317;
                      v339 = 24 * (v288 + 4);
                      do
                      {
                        v340 = (a2 + 24 * ((v297 + v335) % v297 + v289));
                        v341 = v644[v338];
                        v651 = *v340;
                        v342 = v340[1].f64[0];
                        v343 = (a2 + 24 * ((2 * v297 - 2 + v335) % v297 + v289));
                        v664 = *v343;
                        v678 = *v337;
                        v344 = v343[1].f64[0];
                        sub_29A194CC8(&v702);
                        v345 = v706 + v339;
                        v346 = *v337;
                        *(v345 + 16) = *(v337 + 16);
                        *v345 = v346;
                        sub_29A194CC8(&v702);
                        v347 = v706 + 24 * v288;
                        *(v347 + 120) = vmulq_f64(vaddq_f64(v678, v664), v687);
                        *(v347 + 136) = (v341 + v344) * 0.5;
                        sub_29A194CC8(&v702);
                        v348 = (v706 + 24 * v288);
                        v348[18] = v332;
                        v348[19] = v323;
                        v348[20] = v324;
                        sub_29A194CC8(&v702);
                        v349 = v706 + 24 * v288;
                        --v335;
                        v337 -= 24;
                        *(v349 + 168) = vmulq_f64(vaddq_f64(v678, v651), v687);
                        *(v349 + 184) = (v341 + v342) * 0.5;
                        v338 -= 3;
                        v288 += 4;
                        v339 += 96;
                      }

                      while (v297 + v335 > 1);
                    }

                    v288 += 4;
                    v71 = v695;
                    v287 = v615;
                    v290 = a2 + 16;
                    v286 = v603;
                    goto LABEL_273;
                  }

                  v298 = 24 * v288;
                  do
                  {
                    sub_29A194CC8(&v702);
                    v299 = (v706 + v298);
                    *v299 = 0;
                    v299[1] = 0;
                    v299[2] = 0;
                    sub_29A194CC8(&v702);
                    v300 = (v706 + v298);
                    v300[3] = 0;
                    v300[4] = 0;
                    v300[5] = 0;
                    sub_29A194CC8(&v702);
                    v301 = (v706 + v298);
                    v301[6] = 0;
                    v301[7] = 0;
                    v301[8] = 0;
                    sub_29A194CC8(&v702);
                    v302 = (v706 + v298);
                    v302[9] = 0;
                    v302[10] = 0;
                    v302[11] = 0;
                    v288 += 4;
                    v298 += 96;
                    LODWORD(v297) = v297 - 1;
                  }

                  while (v297);
                  ++v285;
                  v296 = v694;
                  v286 = 1;
                  if (v285 >= *(v694 + 24))
                  {
                    goto LABEL_424;
                  }
                }

                if (v289 + 4 <= a3)
                {
                  break;
                }

                sub_29A194CC8(&v702);
                v303 = (v706 + 24 * v288);
                *v303 = 0;
                v303[1] = 0;
                v303[2] = 0;
                sub_29A194CC8(&v702);
                v304 = (v706 + 24 * v288);
                v304[3] = 0;
                v304[4] = 0;
                v304[5] = 0;
                sub_29A194CC8(&v702);
                v305 = (v706 + 24 * v288);
                v305[6] = 0;
                v305[7] = 0;
                v305[8] = 0;
                sub_29A194CC8(&v702);
                v306 = (v706 + 24 * v288);
                v288 += 4;
                v306[9] = 0;
                v306[10] = 0;
                v306[11] = 0;
                ++v285;
                v644 += 12;
                v295 += 96;
                v296 = v694;
                v677 += 96;
                v286 = 1;
                v289 += 4;
                v290 = a2 + 16;
                if (v285 >= *(v694 + 24))
                {
                  goto LABEL_424;
                }
              }

              v367 = v286;
              sub_29A194CC8(&v702);
              v368 = v288 + 1;
              v369 = (a2 + 24 * v289);
              v370 = *v369;
              v371 = v706 + 24 * v288;
              *(v371 + 16) = *(v369 + 2);
              *v371 = v370;
              sub_29A194CC8(&v702);
              if (v602 < 8)
              {
                v379 = v706 + 24 * v368;
                v380 = *(v369 + 24);
                *(v379 + 16) = *(v369 + 5);
                *v379 = v380;
                sub_29A194CC8(&v702);
                v381 = v706 + 24 * v288;
                v382 = v369[3];
                *(v381 + 64) = *(v369 + 8);
                *(v381 + 48) = v382;
                sub_29A194CC8(&v702);
                v376 = v706 + 24 * v288;
                v288 += 4;
                v377 = *(v369 + 72);
                v378 = *(v369 + 11);
              }

              else
              {
                v372 = v706 + 24 * v368;
                v373 = *(v369 + 72);
                *(v372 + 16) = *(v369 + 11);
                *v372 = v373;
                sub_29A194CC8(&v702);
                v374 = v706 + 24 * v288;
                v375 = v369[3];
                *(v374 + 64) = *(v369 + 8);
                *(v374 + 48) = v375;
                sub_29A194CC8(&v702);
                v376 = v706 + 24 * v288;
                v288 += 4;
                v377 = *(v369 + 24);
                v378 = *(v369 + 5);
              }

              *(v376 + 88) = v378;
              *(v376 + 72) = v377;
              v71 = v695;
              v290 = a2 + 16;
              v286 = v367;
LABEL_273:
              v289 += v297;
              ++v285;
            }

            while (v285 < *(v694 + 24));
            if (v286)
            {
LABEL_424:
              v697 = "hd/meshUtil.cpp";
              v698 = "_QuadrangulateFaceVarying";
              v699 = 907;
              v700 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
              v701 = 0;
              v577 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v589 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v697, "numVerts and verts are incosistent [%s]", v578, v577);
            }
          }

          sub_29A194DFC(v596, &v702);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
        }

        if (a4 == 22)
        {
          if (*(v694 + 24) < 1)
          {
            v44 = 0;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = *(v694 + 24) & 0x7FFFFFFFLL;
            do
            {
              while (1)
              {
                v42 = *(*(v694 + 56) + 4 * v37);
                if (v42 >= 3)
                {
                  break;
                }

                v38 = 1;
                _ZF = v41 - 1 == v37++;
                if (_ZF)
                {
                  v44 = v39;
                  goto LABEL_144;
                }
              }

              if (v40 < v695 && v37 == *(v696 + 4 * v40))
              {
                ++v40;
              }

              else
              {
                _ZF = v42 == 4;
                v43 = v39 + 4 * v42;
                v39 += 4;
                if (!_ZF)
                {
                  v39 = v43;
                }
              }

              ++v37;
            }

            while (v41 != v37);
            v44 = v39;
            if (v38)
            {
LABEL_144:
              v702 = "hd/meshUtil.cpp";
              v703 = "_QuadrangulateFaceVarying";
              v704 = 811;
              v705 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
              LOBYTE(v706) = 0;
              v95 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v702, "degenerated face found [%s]", v96, v95);
            }
          }

          sub_29A196EB8(&v702, v44);
          if (*(v694 + 24) < 1)
          {
            goto LABEL_419;
          }

          v495 = 0;
          v496 = 0;
          v691 = 0;
          v497 = 0;
          v498 = 0;
          __asm { FMOV            V0.2D, #0.5 }

          v683 = _Q0;
LABEL_378:
          v601 = (a2 + 32 * v498);
          v646 = v498;
          v500 = (a2 + 32 + 32 * v498);
          v501 = v694;
          while (1)
          {
            v502 = *(*(v501 + 56) + 4 * v495);
            if (v502 < 3)
            {
              goto LABEL_401;
            }

            if (v691 < v695 && v495 == *(v696 + 4 * v691))
            {
              ++v691;
LABEL_401:
              v551 = v646;
              goto LABEL_402;
            }

            if (v502 == 4)
            {
              if (v646 + 4 <= a3)
              {
                sub_29A19722C(&v702);
                v551 = v646;
                v552 = v497 + 1;
                v553 = (a2 + 32 * v646);
                v554 = v553[1];
                v555 = (v706 + 32 * v497);
                *v555 = *v553;
                v555[1] = v554;
                sub_29A19722C(&v702);
                if (v602 < 8)
                {
                  v563 = v553[3];
                  v564 = (v706 + 32 * v552);
                  *v564 = v553[2];
                  v564[1] = v563;
                  sub_29A19722C(&v702);
                  v565 = v706 + 32 * v497;
                  v566 = v553[5];
                  *(v565 + 64) = v553[4];
                  *(v565 + 80) = v566;
                  sub_29A19722C(&v702);
                  v560 = v706 + 32 * v497;
                  v497 += 4;
                  v561 = v553[6];
                  v562 = v553[7];
                }

                else
                {
                  v556 = (v706 + 32 * v552);
                  v557 = v553[7];
                  *v556 = v553[6];
                  v556[1] = v557;
                  sub_29A19722C(&v702);
                  v558 = v706 + 32 * v497;
                  v559 = v553[5];
                  *(v558 + 64) = v553[4];
                  *(v558 + 80) = v559;
                  sub_29A19722C(&v702);
                  v560 = v706 + 32 * v497;
                  v497 += 4;
                  v561 = v553[2];
                  v562 = v553[3];
                }

                *(v560 + 96) = v561;
                *(v560 + 112) = v562;
LABEL_402:
                v498 = v502 + v551;
                if (++v495 >= *(v694 + 24))
                {
                  if (v496)
                  {
LABEL_418:
                    v697 = "hd/meshUtil.cpp";
                    v698 = "_QuadrangulateFaceVarying";
                    v699 = 907;
                    v700 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
                    v701 = 0;
                    v573 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
                    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v697, "numVerts and verts are incosistent [%s]", v574, v573);
                  }

LABEL_419:
                  sub_29A197360(v5, &v702);
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
                }

                goto LABEL_378;
              }

              sub_29A19722C(&v702);
              v509 = (v706 + 32 * v497);
              *v509 = 0u;
              v509[1] = 0u;
              sub_29A19722C(&v702);
              v510 = v706 + 32 * v497;
              *(v510 + 32) = 0u;
              *(v510 + 48) = 0u;
              sub_29A19722C(&v702);
              v511 = v706 + 32 * v497;
              *(v511 + 64) = 0u;
              *(v511 + 80) = 0u;
              sub_29A19722C(&v702);
              v512 = v706 + 32 * v497;
              v497 += 4;
              *(v512 + 96) = 0u;
              *(v512 + 112) = 0u;
              ++v495;
              v601 += 8;
              v501 = v694;
              v508 = *(v694 + 24);
              v500 += 8;
              v496 = 1;
              v646 += 4;
            }

            else
            {
              if (v502 + v646 <= a3)
              {
                v593 = v7;
                v600 = v5;
                v513 = (a2 + 32 * v646);
                v514 = 0uLL;
                v515 = v601;
                v516 = v502;
                v517 = 0uLL;
                do
                {
                  v518 = *v515;
                  v519 = v515[1];
                  v515 += 2;
                  v517 = vaddq_f64(v517, v519);
                  v514 = vaddq_f64(v514, v518);
                  --v516;
                }

                while (v516);
                v657 = v517;
                v671 = v514;
                v610 = v513[3];
                v617 = v513[1];
                v604 = v513[2];
                v607 = *v513;
                v520 = (a2 + 32 * (v646 + ((v502 - 1) % v502)));
                v585 = *v520;
                v584 = v520[1];
                sub_29A19722C(&v702);
                v521 = 1.0 / v502;
                v625 = vmulq_n_f64(v671, v521);
                v636 = vmulq_n_f64(v657, v521);
                v658 = vmulq_f64(vaddq_f64(v604, v607), v683);
                v672 = vmulq_f64(vaddq_f64(v610, v617), v683);
                v611 = vmulq_f64(vaddq_f64(v607, v585), v683);
                v618 = vmulq_f64(vaddq_f64(v617, v584), v683);
                v522 = v497 + 1;
                v523 = v513[1];
                v524 = (v706 + 32 * v497);
                *v524 = *v513;
                v524[1] = v523;
                if (v602 < 8)
                {
                  sub_29A19722C(&v702);
                  v538 = (v706 + 32 * v522);
                  *v538 = v658;
                  v538[1] = v672;
                  sub_29A19722C(&v702);
                  v539 = (v706 + 32 * v497);
                  v539[4] = v625;
                  v539[5] = v636;
                  sub_29A19722C(&v702);
                  v540 = 0;
                  v541 = (v706 + 32 * v497);
                  v541[6] = v611;
                  v541[7] = v618;
                  v542 = 32 * (v497 + 4);
                  v543 = 1;
                  do
                  {
                    v544 = (a2 + 32 * (v646 + ((v540 + 2) % v502)));
                    v545 = (a2 + 32 * (v646 + ((v502 + v540) % v502)));
                    v660 = v500[1];
                    v674 = *v500;
                    v613 = *v544;
                    v620 = v544[1];
                    v606 = v545[1];
                    v609 = *v545;
                    sub_29A19722C(&v702);
                    v546 = (v706 + v542);
                    v547 = v500[1];
                    *v546 = *v500;
                    v546[1] = v547;
                    sub_29A19722C(&v702);
                    v548 = (v706 + 32 * v497);
                    v548[10] = vmulq_f64(vaddq_f64(v674, v613), v683);
                    v548[11] = vmulq_f64(vaddq_f64(v660, v620), v683);
                    sub_29A19722C(&v702);
                    v549 = (v706 + 32 * v497);
                    v549[12] = v625;
                    v549[13] = v636;
                    sub_29A19722C(&v702);
                    ++v543;
                    v550 = (v706 + 32 * v497);
                    ++v540;
                    v550[14] = vmulq_f64(vaddq_f64(v674, v609), v683);
                    v550[15] = vmulq_f64(vaddq_f64(v660, v606), v683);
                    v500 += 2;
                    v497 += 4;
                    v542 += 128;
                  }

                  while (v502 != v543);
                }

                else
                {
                  sub_29A19722C(&v702);
                  v525 = (v706 + 32 * v522);
                  *v525 = v611;
                  v525[1] = v618;
                  sub_29A19722C(&v702);
                  v526 = (v706 + 32 * v497);
                  v526[4] = v625;
                  v526[5] = v636;
                  sub_29A19722C(&v702);
                  v527 = 0;
                  v528 = (v706 + 32 * v497);
                  v528[6] = v658;
                  v528[7] = v672;
                  v529 = 2 * (v502 - 1);
                  v530 = 32 * (v497 + 4);
                  do
                  {
                    v531 = (a2 + 32 * (v646 + ((v502 + v527) % v502)));
                    v659 = v601[v529 + 1];
                    v673 = v601[v529];
                    v605 = v531[1];
                    v608 = *v531;
                    v532 = (a2 + 32 * (v646 + ((2 * v502 - 2 + v527) % v502)));
                    v612 = v532[1];
                    v619 = *v532;
                    sub_29A19722C(&v702);
                    v533 = (v706 + v530);
                    v534 = v601[v529 + 1];
                    *v533 = v601[v529];
                    v533[1] = v534;
                    sub_29A19722C(&v702);
                    v535 = (v706 + 32 * v497);
                    v535[10] = vmulq_f64(vaddq_f64(v673, v619), v683);
                    v535[11] = vmulq_f64(vaddq_f64(v659, v612), v683);
                    sub_29A19722C(&v702);
                    v536 = (v706 + 32 * v497);
                    v536[12] = v625;
                    v536[13] = v636;
                    sub_29A19722C(&v702);
                    v537 = (v706 + 32 * v497);
                    --v527;
                    v537[14] = vmulq_f64(vaddq_f64(v673, v608), v683);
                    v537[15] = vmulq_f64(vaddq_f64(v659, v605), v683);
                    v529 -= 2;
                    v497 += 4;
                    v530 += 128;
                  }

                  while (v502 + v527 > 1);
                }

                v497 += 4;
                v7 = v593;
                v5 = v600;
                goto LABEL_401;
              }

              v503 = 32 * v497;
              do
              {
                sub_29A19722C(&v702);
                v504 = (v706 + v503);
                *v504 = 0u;
                v504[1] = 0u;
                sub_29A19722C(&v702);
                v505 = v706 + v503;
                *(v505 + 32) = 0u;
                *(v505 + 48) = 0u;
                sub_29A19722C(&v702);
                v506 = v706 + v503;
                *(v506 + 64) = 0u;
                *(v506 + 80) = 0u;
                sub_29A19722C(&v702);
                v507 = v706 + v503;
                *(v507 + 96) = 0u;
                *(v507 + 112) = 0u;
                v497 += 4;
                v503 += 128;
                LODWORD(v502) = v502 - 1;
              }

              while (v502);
              ++v495;
              v501 = v694;
              v508 = *(v694 + 24);
              v496 = 1;
            }

            if (v495 >= v508)
            {
              goto LABEL_418;
            }
          }
        }
      }

      else if (a4 > 14)
      {
        if (a4 == 15)
        {
          if (*(v694 + 24) < 1)
          {
            v70 = 0;
          }

          else
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = 0;
            v67 = *(v694 + 24) & 0x7FFFFFFFLL;
            do
            {
              while (1)
              {
                v68 = *(*(v694 + 56) + 4 * v63);
                if (v68 >= 3)
                {
                  break;
                }

                v64 = 1;
                _ZF = v67 - 1 == v63++;
                if (_ZF)
                {
                  v70 = v65;
                  goto LABEL_134;
                }
              }

              if (v66 < v695 && v63 == *(v696 + 4 * v66))
              {
                ++v66;
              }

              else
              {
                _ZF = v68 == 4;
                v69 = v65 + 4 * v68;
                v65 += 4;
                if (!_ZF)
                {
                  v65 = v69;
                }
              }

              ++v63;
            }

            while (v67 != v63);
            v70 = v65;
            if (v64)
            {
LABEL_134:
              v702 = "hd/meshUtil.cpp";
              v703 = "_QuadrangulateFaceVarying";
              v704 = 811;
              v705 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
              LOBYTE(v706) = 0;
              v85 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v702, "degenerated face found [%s]", v86, v85);
            }
          }

          sub_29A193124(&v702, v70);
          v588 = v7;
          v595 = v5;
          if (*(v694 + 24) >= 1)
          {
            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = 0;
            v195 = 0;
            v196 = a2 + 8;
            do
            {
              v686 = (v196 + 12 * v195);
              v197 = a2 + 12 + 12 * v195;
              v648 = a2 + 12 * v195;
              v198 = v694;
              while (1)
              {
                while (1)
                {
                  v199 = *(*(v198 + 56) + 4 * v191);
                  if (v199 < 3)
                  {
                    goto LABEL_241;
                  }

                  if (v193 < v695 && v191 == *(v696 + 4 * v193))
                  {
                    v193 = (v193 + 1);
                    goto LABEL_241;
                  }

                  if (v199 == 4)
                  {
                    break;
                  }

                  if (v199 + v195 <= a3)
                  {
                    v614 = v192;
                    v626 = v193;
                    v209 = a2 + 12 * v195;
                    v210 = 0;
                    v211 = 0.0;
                    v212 = v686;
                    v213 = v199;
                    do
                    {
                      v210 = vadd_f32(v210, *(v212 - 2));
                      v214 = *v212;
                      v212 += 3;
                      v211 = v211 + v214;
                      --v213;
                    }

                    while (v213);
                    v675 = *(v209 + 20);
                    v215 = *(v209 + 8);
                    v216 = *(v209 + 12);
                    v217 = *v209;
                    v218 = v199 - 1;
                    v219 = (a2 + 12 * ((v199 - 1) % v199 + v195));
                    v220 = *v219;
                    v221 = v219[1].f32[0];
                    sub_29A1935CC(&v702);
                    v222 = 1.0 / v199;
                    v223 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v210), v222));
                    v224 = v222 * v211;
                    v225 = vmul_f32(vadd_f32(v216, v217), 0x3F0000003F000000);
                    v676 = (v675 + v215) * 0.5;
                    v226 = vmul_f32(vadd_f32(v217, v220), 0x3F0000003F000000);
                    v227 = (v215 + v221) * 0.5;
                    v228 = v194 + 1;
                    v229 = *v209;
                    v230 = (v706 + 12 * v194);
                    v230[1].i32[0] = *(v209 + 8);
                    *v230 = v229;
                    if (v602 < 8)
                    {
                      sub_29A1935CC(&v702);
                      v251 = (v706 + 12 * v228);
                      *v251 = v225;
                      v251[1].f32[0] = v676;
                      sub_29A1935CC(&v702);
                      v252 = (v706 + 12 * v194);
                      v252[3] = v223;
                      v252[4].f32[0] = v224;
                      sub_29A1935CC(&v702);
                      v253 = 0;
                      v254 = v706 + 12 * v194;
                      *(v254 + 36) = v226;
                      *(v254 + 44) = v227;
                      v255 = 12 * (v194 + 4);
                      v256 = 1;
                      do
                      {
                        v257 = (a2 + 12 * ((v253 + 2) % v199 + v195));
                        v258 = *(v197 + 8);
                        v259 = v257[1].f32[0];
                        v260 = (a2 + 12 * ((v199 + v253) % v199 + v195));
                        v261 = *v197;
                        v262 = *v257;
                        v263 = *v260;
                        v264 = v260[1].f32[0];
                        sub_29A1935CC(&v702);
                        v265 = (v706 + v255);
                        v266 = *v197;
                        v265[1].i32[0] = *(v197 + 8);
                        *v265 = v266;
                        sub_29A1935CC(&v702);
                        v267 = v706 + 12 * v194;
                        *(v267 + 60) = vmul_f32(vadd_f32(v261, v262), 0x3F0000003F000000);
                        *(v267 + 68) = (v258 + v259) * 0.5;
                        sub_29A1935CC(&v702);
                        v268 = (v706 + 12 * v194);
                        v268[9] = v223;
                        v268[10].f32[0] = v224;
                        sub_29A1935CC(&v702);
                        ++v256;
                        v269 = v706 + 12 * v194;
                        ++v253;
                        *(v269 + 84) = vmul_f32(vadd_f32(v261, v263), 0x3F0000003F000000);
                        *(v269 + 92) = (v258 + v264) * 0.5;
                        v197 += 12;
                        v194 += 4;
                        v255 += 48;
                      }

                      while (v199 != v256);
                    }

                    else
                    {
                      sub_29A1935CC(&v702);
                      v231 = (v706 + 12 * v228);
                      *v231 = v226;
                      v231[1].f32[0] = v227;
                      sub_29A1935CC(&v702);
                      v232 = (v706 + 12 * v194);
                      v232[3] = v223;
                      v232[4].f32[0] = v224;
                      sub_29A1935CC(&v702);
                      v233 = 0;
                      v234 = v706 + 12 * v194;
                      *(v234 + 36) = v225;
                      *(v234 + 44) = v676;
                      v235 = 3 * v218;
                      v236 = (v648 + 12 * v218);
                      v237 = 12 * (v194 + 4);
                      do
                      {
                        v238 = (a2 + 12 * ((v199 + v233) % v199 + v195));
                        v239 = v686[v235];
                        v240 = *v236;
                        v241 = *v238;
                        v242 = v238[1].f32[0];
                        v243 = (a2 + 12 * ((2 * v199 - 2 + v233) % v199 + v195));
                        v244 = *v243;
                        v245 = v243[1].f32[0];
                        sub_29A1935CC(&v702);
                        v246 = (v706 + v237);
                        v247 = *v236;
                        v246[1].i32[0] = v236[1].i32[0];
                        *v246 = v247;
                        sub_29A1935CC(&v702);
                        v248 = v706 + 12 * v194;
                        *(v248 + 60) = vmul_f32(vadd_f32(v240, v244), 0x3F0000003F000000);
                        *(v248 + 68) = (v239 + v245) * 0.5;
                        sub_29A1935CC(&v702);
                        v249 = (v706 + 12 * v194);
                        v249[9] = v223;
                        v249[10].f32[0] = v224;
                        sub_29A1935CC(&v702);
                        v250 = v706 + 12 * v194;
                        --v233;
                        v236 = (v236 - 12);
                        *(v250 + 84) = vmul_f32(vadd_f32(v240, v241), 0x3F0000003F000000);
                        *(v250 + 92) = (v239 + v242) * 0.5;
                        v235 -= 3;
                        v194 += 4;
                        v237 += 48;
                      }

                      while (v199 + v233 > 1);
                    }

                    v194 += 4;
                    v193 = v626;
                    v196 = a2 + 8;
                    v192 = v614;
                    goto LABEL_241;
                  }

                  v200 = 12 * v194 + 44;
                  do
                  {
                    sub_29A1935CC(&v702);
                    v201 = v706 + v200;
                    *(v201 - 44) = 0;
                    *(v201 - 36) = 0;
                    sub_29A1935CC(&v702);
                    v202 = v706 + v200;
                    *(v202 - 32) = 0;
                    *(v202 - 24) = 0;
                    sub_29A1935CC(&v702);
                    v203 = v706 + v200;
                    *(v203 - 20) = 0;
                    *(v203 - 12) = 0;
                    sub_29A1935CC(&v702);
                    v204 = (v706 + v200);
                    *(v204 - 1) = 0;
                    *v204 = 0;
                    v194 += 4;
                    v200 += 48;
                    LODWORD(v199) = v199 - 1;
                  }

                  while (v199);
                  ++v191;
                  v198 = v694;
                  v192 = 1;
                  if (v191 >= *(v694 + 24))
                  {
                    goto LABEL_421;
                  }
                }

                if (v195 + 4 <= a3)
                {
                  break;
                }

                sub_29A1935CC(&v702);
                v205 = v706 + 12 * v194;
                *v205 = 0;
                *(v205 + 8) = 0;
                sub_29A1935CC(&v702);
                v206 = v706 + 12 * v194;
                *(v206 + 16) = 0;
                *(v206 + 12) = 0;
                sub_29A1935CC(&v702);
                v207 = v706 + 12 * v194;
                *(v207 + 24) = 0;
                *(v207 + 32) = 0;
                sub_29A1935CC(&v702);
                v208 = v706 + 12 * v194;
                v194 += 4;
                *(v208 + 40) = 0;
                *(v208 + 36) = 0;
                ++v191;
                v686 += 12;
                v197 += 48;
                v198 = v694;
                v648 += 48;
                v192 = 1;
                v195 += 4;
                v196 = a2 + 8;
                if (v191 >= *(v694 + 24))
                {
                  goto LABEL_421;
                }
              }

              v627 = v193;
              sub_29A1935CC(&v702);
              v270 = v194 + 1;
              v271 = (a2 + 12 * v195);
              v272 = *v271;
              v273 = v706 + 12 * v194;
              *(v273 + 8) = *(v271 + 2);
              *v273 = v272;
              sub_29A1935CC(&v702);
              if (v602 < 8)
              {
                v281 = v706 + 12 * v270;
                v282 = *(v271 + 12);
                *(v281 + 8) = *(v271 + 5);
                *v281 = v282;
                sub_29A1935CC(&v702);
                v283 = v706 + 12 * v194;
                v284 = v271[3];
                *(v283 + 32) = *(v271 + 8);
                *(v283 + 24) = v284;
                sub_29A1935CC(&v702);
                v278 = v706 + 12 * v194;
                v194 += 4;
                v279 = *(v271 + 36);
                v280 = *(v271 + 11);
              }

              else
              {
                v274 = v706 + 12 * v270;
                v275 = *(v271 + 36);
                *(v274 + 8) = *(v271 + 11);
                *v274 = v275;
                sub_29A1935CC(&v702);
                v276 = v706 + 12 * v194;
                v277 = v271[3];
                *(v276 + 32) = *(v271 + 8);
                *(v276 + 24) = v277;
                sub_29A1935CC(&v702);
                v278 = v706 + 12 * v194;
                v194 += 4;
                v279 = *(v271 + 12);
                v280 = *(v271 + 5);
              }

              *(v278 + 44) = v280;
              *(v278 + 36) = v279;
              v193 = v627;
              v196 = a2 + 8;
LABEL_241:
              v195 += v199;
              ++v191;
            }

            while (v191 < *(v694 + 24));
            if (v192)
            {
LABEL_421:
              v697 = "hd/meshUtil.cpp";
              v698 = "_QuadrangulateFaceVarying";
              v699 = 907;
              v700 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
              v701 = 0;
              v575 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v588 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v697, "numVerts and verts are incosistent [%s]", v576, v575);
            }
          }

          sub_29A193700(v595, &v702);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
        }

        if (a4 == 16)
        {
          if (*(v694 + 24) < 1)
          {
            v36 = 0;
          }

          else
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = *(v694 + 24) & 0x7FFFFFFFLL;
            do
            {
              while (1)
              {
                v34 = *(*(v694 + 56) + 4 * v29);
                if (v34 >= 3)
                {
                  break;
                }

                v30 = 1;
                _ZF = v33 - 1 == v29++;
                if (_ZF)
                {
                  v36 = v31;
                  goto LABEL_142;
                }
              }

              if (v32 < v695 && v29 == *(v696 + 4 * v32))
              {
                ++v32;
              }

              else
              {
                _ZF = v34 == 4;
                v35 = v31 + 4 * v34;
                v31 += 4;
                if (!_ZF)
                {
                  v31 = v35;
                }
              }

              ++v29;
            }

            while (v33 != v29);
            v36 = v31;
            if (v30)
            {
LABEL_142:
              v702 = "hd/meshUtil.cpp";
              v703 = "_QuadrangulateFaceVarying";
              v704 = 811;
              v705 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
              LOBYTE(v706) = 0;
              v93 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v702, "degenerated face found [%s]", v94, v93);
            }
          }

          sub_29A195790(&v702, v36);
          if (*(v694 + 24) < 1)
          {
            goto LABEL_416;
          }

          v457 = 0;
          v458 = 0;
          v682 = 0;
          v459 = 0;
          v460 = 0;
LABEL_346:
          v461 = v694;
          v690 = (a2 + 16 * v460);
          while (1)
          {
            v462 = *(*(v461 + 56) + 4 * v457);
            if (v462 < 3)
            {
              goto LABEL_369;
            }

            if (v682 < v695 && v457 == *(v696 + 4 * v682))
            {
              ++v682;
              goto LABEL_369;
            }

            if (v462 == 4)
            {
              if (v460 + 4 <= a3)
              {
                sub_29A195BC4(&v702);
                v491 = v459 + 1;
                v492 = (a2 + 16 * v460);
                *(v706 + 16 * v459) = *v492;
                sub_29A195BC4(&v702);
                if (v602 < 8)
                {
                  *(v706 + 16 * v491) = v492[1];
                  sub_29A195BC4(&v702);
                  *(v706 + 16 * v459 + 32) = v492[2];
                  sub_29A195BC4(&v702);
                  v493 = v706 + 16 * v459;
                  v459 += 4;
                  v494 = v492[3];
                }

                else
                {
                  *(v706 + 16 * v491) = v492[3];
                  sub_29A195BC4(&v702);
                  *(v706 + 16 * v459 + 32) = v492[2];
                  sub_29A195BC4(&v702);
                  v493 = v706 + 16 * v459;
                  v459 += 4;
                  v494 = v492[1];
                }

                *(v493 + 48) = v494;
LABEL_369:
                v460 += v462;
                if (++v457 >= *(v694 + 24))
                {
                  if (v458)
                  {
LABEL_415:
                    v697 = "hd/meshUtil.cpp";
                    v698 = "_QuadrangulateFaceVarying";
                    v699 = 907;
                    v700 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
                    v701 = 0;
                    v571 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
                    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v697, "numVerts and verts are incosistent [%s]", v572, v571);
                  }

LABEL_416:
                  sub_29A195CF8(v5, &v702);
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
                }

                goto LABEL_346;
              }

              sub_29A195BC4(&v702);
              v469 = (v706 + 16 * v459);
              *v469 = 0;
              v469[1] = 0;
              sub_29A195BC4(&v702);
              v470 = v706 + 16 * v459;
              *(v470 + 16) = 0;
              *(v470 + 24) = 0;
              sub_29A195BC4(&v702);
              v471 = v706 + 16 * v459;
              *(v471 + 32) = 0;
              *(v471 + 40) = 0;
              sub_29A195BC4(&v702);
              v472 = v706 + 16 * v459;
              v459 += 4;
              *(v472 + 48) = 0;
              *(v472 + 56) = 0;
              ++v457;
              v461 = v694;
              v468 = *(v694 + 24);
              v690 += 4;
              v458 = 1;
              v460 += 4;
            }

            else
            {
              if (v462 + v460 <= a3)
              {
                v592 = v7;
                v473 = 0uLL;
                v474 = v690;
                v475 = v462;
                v476 = (a2 + 16 * v460);
                do
                {
                  v477 = *v474++;
                  v473 = vaddq_f32(v473, v477);
                  --v475;
                }

                while (v475);
                v667 = v473;
                v599 = v5;
                v633 = v476[1];
                v640 = *v476;
                v624 = *(a2 + 16 * ((v462 - 1) % v462 + v460));
                sub_29A195BC4(&v702);
                v645 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v667.f32), 1.0 / v462)), vmulq_n_f64(vcvt_hight_f64_f32(v667), 1.0 / v462));
                v478.i64[0] = 0x3F0000003F000000;
                v478.i64[1] = 0x3F0000003F000000;
                v668 = vmulq_f32(vaddq_f32(v633, v640), v478);
                v641 = vmulq_f32(vaddq_f32(v640, v624), v478);
                v479 = v459 + 1;
                *(v706 + 16 * v459) = *v476;
                if (v602 < 8)
                {
                  sub_29A195BC4(&v702);
                  *(v706 + 16 * v479) = v668;
                  sub_29A195BC4(&v702);
                  *(v706 + 16 * v459 + 32) = v645;
                  sub_29A195BC4(&v702);
                  v486 = 0;
                  *(v706 + 16 * v459 + 48) = v641;
                  v487 = 16 * (v459 + 4);
                  v488 = 1;
                  do
                  {
                    v670 = v690[v488];
                    v635 = *(a2 + 16 * ((v462 + v486) % v462 + v460));
                    v643 = *(a2 + 16 * ((v486 + 2) % v462 + v460));
                    sub_29A195BC4(&v702);
                    *(v706 + v487) = v690[v488];
                    sub_29A195BC4(&v702);
                    v489.i64[0] = 0x3F0000003F000000;
                    v489.i64[1] = 0x3F0000003F000000;
                    *(v706 + 16 * v459 + 80) = vmulq_f32(vaddq_f32(v670, v643), v489);
                    sub_29A195BC4(&v702);
                    *(v706 + 16 * v459 + 96) = v645;
                    sub_29A195BC4(&v702);
                    ++v486;
                    v490.i64[0] = 0x3F0000003F000000;
                    v490.i64[1] = 0x3F0000003F000000;
                    *(v706 + 16 * v459 + 112) = vmulq_f32(vaddq_f32(v670, v635), v490);
                    ++v488;
                    v459 += 4;
                    v487 += 64;
                  }

                  while (v462 - 1 != v486);
                }

                else
                {
                  sub_29A195BC4(&v702);
                  *(v706 + 16 * v479) = v641;
                  sub_29A195BC4(&v702);
                  *(v706 + 16 * v459 + 32) = v645;
                  sub_29A195BC4(&v702);
                  *(v706 + 16 * v459 + 48) = v668;
                  v480 = v462;
                  v481 = 2 * v462 - 2;
                  v482 = v462 - 1;
                  v483 = 16 * (v459 + 4);
                  do
                  {
                    v669 = v690[v482];
                    v634 = *(a2 + 16 * (v480 % v462 + v460));
                    v642 = *(a2 + 16 * (v481 % v462 + v460));
                    sub_29A195BC4(&v702);
                    *(v706 + v483) = v690[v482];
                    sub_29A195BC4(&v702);
                    v484.i64[0] = 0x3F0000003F000000;
                    v484.i64[1] = 0x3F0000003F000000;
                    *(v706 + 16 * v459 + 80) = vmulq_f32(vaddq_f32(v669, v642), v484);
                    sub_29A195BC4(&v702);
                    *(v706 + 16 * v459 + 96) = v645;
                    sub_29A195BC4(&v702);
                    --v480;
                    --v481;
                    v485.i64[0] = 0x3F0000003F000000;
                    v485.i64[1] = 0x3F0000003F000000;
                    *(v706 + 16 * v459 + 112) = vmulq_f32(vaddq_f32(v669, v634), v485);
                    --v482;
                    v459 += 4;
                    v483 += 64;
                  }

                  while (v480 > 1);
                }

                v459 += 4;
                v7 = v592;
                v5 = v599;
                goto LABEL_369;
              }

              v463 = 16 * v459;
              do
              {
                sub_29A195BC4(&v702);
                v464 = (v706 + v463);
                *v464 = 0;
                v464[1] = 0;
                sub_29A195BC4(&v702);
                v465 = v706 + v463;
                *(v465 + 16) = 0;
                *(v465 + 24) = 0;
                sub_29A195BC4(&v702);
                v466 = v706 + v463;
                *(v466 + 32) = 0;
                *(v466 + 40) = 0;
                sub_29A195BC4(&v702);
                v467 = v706 + v463;
                *(v467 + 48) = 0;
                *(v467 + 56) = 0;
                v459 += 4;
                v463 += 64;
                LODWORD(v462) = v462 - 1;
              }

              while (v462);
              ++v457;
              v461 = v694;
              v468 = *(v694 + 24);
              v458 = 1;
            }

            if (v457 >= v468)
            {
              goto LABEL_415;
            }
          }
        }
      }

      else
      {
        if (a4 == 13)
        {
          v45 = v695;
          if (*(v694 + 24) < 1)
          {
            v53 = 0;
          }

          else
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = *(v694 + 24) & 0x7FFFFFFFLL;
            do
            {
              while (1)
              {
                v51 = *(*(v694 + 56) + 4 * v46);
                if (v51 >= 3)
                {
                  break;
                }

                v47 = 1;
                _ZF = v50 - 1 == v46++;
                if (_ZF)
                {
                  v53 = v48;
                  goto LABEL_130;
                }
              }

              if (v49 < v695 && v46 == *(v696 + 4 * v49))
              {
                ++v49;
              }

              else
              {
                _ZF = v51 == 4;
                v52 = v48 + 4 * v51;
                v48 += 4;
                if (!_ZF)
                {
                  v48 = v52;
                }
              }

              ++v46;
            }

            while (v50 != v46);
            v53 = v48;
            if (v47)
            {
LABEL_130:
              v702 = "hd/meshUtil.cpp";
              v703 = "_QuadrangulateFaceVarying";
              v704 = 811;
              v705 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = float]";
              LOBYTE(v706) = 0;
              v81 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v702, "degenerated face found [%s]", v82, v81);
            }
          }

          sub_29A18E048(&v702, v53);
          if (*(v694 + 24) < 1)
          {
            goto LABEL_428;
          }

          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v101 = 0;
LABEL_148:
          v102 = v694;
          v684 = (a2 + 4 * v99);
          while (1)
          {
            v103 = *(*(v102 + 56) + 4 * v97);
            if (v103 < 3)
            {
              goto LABEL_174;
            }

            if (v101 < v45 && v97 == *(v696 + 4 * v101))
            {
              v101 = (v101 + 1);
              goto LABEL_174;
            }

            if (v103 == 4)
            {
              v106 = v99 + 4;
              if (v99 + 4 <= a3)
              {
                v647 = v101;
                v135 = v7;
                v136 = (a2 + 4 * v99);
                v137 = *v136;
                sub_29A18E624(&v702);
                v138 = v100 + 1;
                *(v706 + 4 * v100) = v137;
                if (v602 < 8)
                {
                  v142 = v136[1];
                  sub_29A18E624(&v702);
                  *(v706 + 4 * v138) = v142;
                  v143 = v136[2];
                  sub_29A18E624(&v702);
                  *(v706 + 4 * v100 + 8) = v143;
                  v141 = v136[3];
                }

                else
                {
                  v139 = v136[3];
                  sub_29A18E624(&v702);
                  *(v706 + 4 * v138) = v139;
                  v140 = v136[2];
                  sub_29A18E624(&v702);
                  *(v706 + 4 * v100 + 8) = v140;
                  v141 = v136[1];
                }

                sub_29A18E624(&v702);
                v144 = v706 + 4 * v100;
                v100 += 4;
                *(v144 + 12) = v141;
                v7 = v135;
LABEL_173:
                v45 = v695;
                v101 = v647;
LABEL_174:
                v99 += v103;
                if (++v97 >= *(v694 + 24))
                {
                  if (v98)
                  {
LABEL_427:
                    v697 = "hd/meshUtil.cpp";
                    v698 = "_QuadrangulateFaceVarying";
                    v699 = 907;
                    v700 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = float]";
                    v701 = 0;
                    v579 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
                    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v697, "numVerts and verts are incosistent [%s]", v580, v579);
                  }

LABEL_428:
                  sub_29A18E758(v5, &v702);
                  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
                }

                goto LABEL_148;
              }

              sub_29A18E624(&v702);
              *(v706 + 4 * v100) = 0;
              sub_29A18E624(&v702);
              v107 = v100;
              *(v706 + 4 * v100 + 4) = 0;
              sub_29A18E624(&v702);
              *(v706 + 4 * v100 + 8) = 0;
              sub_29A18E624(&v702);
              v100 += 4;
              *(v706 + 4 * v107 + 12) = 0;
              ++v97;
              v102 = v694;
              v105 = *(v694 + 24);
              v684 += 4;
              v98 = 1;
              v99 = v106;
            }

            else
            {
              if (v103 + v99 <= a3)
              {
                v108 = 0.0;
                v109 = v684;
                v110 = *(*(v102 + 56) + 4 * v97);
                v111 = (a2 + 4 * v99);
                do
                {
                  v112 = *v109++;
                  v108 = v108 + v112;
                  --v110;
                }

                while (v110);
                v647 = v101;
                v586 = v7;
                v594 = v5;
                v114 = *v111;
                v113 = v111[1];
                v115 = v103 - 1;
                v116 = *(a2 + 4 * ((v103 - 1) % v103 + v99));
                sub_29A18E624(&v702);
                v117 = v108 / v103;
                v118 = (v114 + v113) * 0.5;
                v119 = (v114 + v116) * 0.5;
                v120 = v100 + 1;
                *(v706 + 4 * v100) = v114;
                if (v602 < 8)
                {
                  sub_29A18E624(&v702);
                  *(v706 + 4 * v120) = v118;
                  sub_29A18E624(&v702);
                  *(v706 + 4 * v100 + 8) = v117;
                  sub_29A18E624(&v702);
                  v128 = 0;
                  *(v706 + 4 * v100 + 12) = v119;
                  v129 = v103;
                  v130 = 1;
                  do
                  {
                    v131 = *(a2 + 4 * (++v130 % v103 + v99));
                    v132 = v684[v128 + 1];
                    v133 = *(a2 + 4 * (v129 % v103 + v99));
                    sub_29A18E624(&v702);
                    *(v706 + 4 * (v100 + 4) + 1 * v128) = v132;
                    sub_29A18E624(&v702);
                    v134 = v100 + v128 * 4;
                    *(v706 + 4 * (v100 + (v128 * 4)) + 20) = (v132 + v131) * 0.5;
                    sub_29A18E624(&v702);
                    *(v706 + 4 * v134 + 24) = v117;
                    sub_29A18E624(&v702);
                    *(v706 + 4 * v134 + 28) = (v132 + v133) * 0.5;
                    ++v129;
                    ++v128;
                  }

                  while (v103 != v130);
                  v100 += v128 * 4 + 4;
                }

                else
                {
                  sub_29A18E624(&v702);
                  *(v706 + 4 * v120) = v119;
                  sub_29A18E624(&v702);
                  *(v706 + 4 * v100 + 8) = v117;
                  sub_29A18E624(&v702);
                  *(v706 + 4 * v100 + 12) = v118;
                  v121 = 2 * v103 - 2;
                  v122 = 4 * (v100 + 4);
                  v123 = v103;
                  do
                  {
                    v124 = v684[v115];
                    v125 = *(a2 + 4 * (v123 % v103 + v99));
                    v126 = *(a2 + 4 * (v121 % v103 + v99));
                    sub_29A18E624(&v702);
                    *(v706 + v122) = v124;
                    sub_29A18E624(&v702);
                    *(v706 + 4 * v100 + 20) = (v124 + v126) * 0.5;
                    sub_29A18E624(&v702);
                    *(v706 + 4 * v100 + 24) = v117;
                    sub_29A18E624(&v702);
                    --v121;
                    *(v706 + 4 * v100 + 28) = (v124 + v125) * 0.5;
                    --v123;
                    v100 += 4;
                    v122 += 16;
                    v127 = v115-- <= 1;
                  }

                  while (!v127);
                  v100 += 4;
                }

                v7 = v586;
                v5 = v594;
                goto LABEL_173;
              }

              v104 = 4 * v100;
              do
              {
                sub_29A18E624(&v702);
                *(v706 + v104) = 0;
                sub_29A18E624(&v702);
                *(v706 + v104 + 4) = 0;
                sub_29A18E624(&v702);
                *(v706 + v104 + 8) = 0;
                sub_29A18E624(&v702);
                *(v706 + v104 + 12) = 0;
                v100 += 4;
                v104 += 16;
                LODWORD(v103) = v103 - 1;
              }

              while (v103);
              ++v97;
              v102 = v694;
              v105 = *(v694 + 24);
              v98 = 1;
            }

            if (v97 >= v105)
            {
              goto LABEL_427;
            }
          }
        }

        if (a4 == 14)
        {
          if (*(v694 + 24) < 1)
          {
            v20 = 0;
          }

          else
          {
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = *(v694 + 24) & 0x7FFFFFFFLL;
            do
            {
              while (1)
              {
                v17 = *(*(v694 + 56) + 4 * v12);
                if (v17 >= 3)
                {
                  break;
                }

                v13 = 1;
                _ZF = v16 - 1 == v12++;
                if (_ZF)
                {
                  v20 = v14;
                  goto LABEL_138;
                }
              }

              if (v15 < v695 && v12 == *(v696 + 4 * v15))
              {
                ++v15;
              }

              else
              {
                _ZF = v17 == 4;
                v19 = v14 + 4 * v17;
                v14 += 4;
                if (!_ZF)
                {
                  v14 = v19;
                }
              }

              ++v12;
            }

            while (v16 != v12);
            v20 = v14;
            if (v13)
            {
LABEL_138:
              v702 = "hd/meshUtil.cpp";
              v703 = "_QuadrangulateFaceVarying";
              v704 = 811;
              v705 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
              LOBYTE(v706) = 0;
              v89 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v702, "degenerated face found [%s]", v90, v89);
            }
          }

          sub_29A190B18(&v702, v20);
          if (*(v694 + 24) < 1)
          {
            goto LABEL_410;
          }

          v383 = 0;
          v384 = 0;
          v680 = 0;
          v385 = 0;
          v386 = 0;
LABEL_282:
          v387 = v694;
          v688 = (a2 + 8 * v386);
          while (1)
          {
            v388 = *(*(v387 + 56) + 4 * v383);
            if (v388 < 3)
            {
              goto LABEL_305;
            }

            if (v680 < v695 && v383 == *(v696 + 4 * v680))
            {
              ++v680;
              goto LABEL_305;
            }

            if (v388 == 4)
            {
              v391 = v386 + 4;
              if (v386 + 4 <= a3)
              {
                sub_29A190F50(&v702);
                v418 = v385 + 1;
                v419 = (a2 + 8 * v386);
                *(v706 + 8 * v385) = *v419;
                sub_29A190F50(&v702);
                if (v602 < 8)
                {
                  *(v706 + 8 * v418) = v419[1];
                  sub_29A190F50(&v702);
                  *(v706 + 8 * v385 + 16) = v419[2];
                  sub_29A190F50(&v702);
                  v420 = v706 + 8 * v385;
                  v385 += 4;
                  v421 = v419[3];
                }

                else
                {
                  *(v706 + 8 * v418) = v419[3];
                  sub_29A190F50(&v702);
                  *(v706 + 8 * v385 + 16) = v419[2];
                  sub_29A190F50(&v702);
                  v420 = v706 + 8 * v385;
                  v385 += 4;
                  v421 = v419[1];
                }

                *(v420 + 24) = v421;
LABEL_305:
                v386 += v388;
                if (++v383 >= *(v694 + 24))
                {
                  if (v384)
                  {
LABEL_409:
                    v697 = "hd/meshUtil.cpp";
                    v698 = "_QuadrangulateFaceVarying";
                    v699 = 907;
                    v700 = "void pxrInternal__aapl__pxrReserved__::_QuadrangulateFaceVarying(const SdfPath &, const VtIntArray &, const VtIntArray &, BOOL, const void *, int, VtValue *) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
                    v701 = 0;
                    v567 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
                    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v697, "numVerts and verts are incosistent [%s]", v568, v567);
                  }

LABEL_410:
                  sub_29A191084(v5, &v702);
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
                }

                goto LABEL_282;
              }

              sub_29A190F50(&v702);
              *(v706 + 8 * v385) = 0;
              sub_29A190F50(&v702);
              v392 = v385;
              *(v706 + 8 * v385 + 8) = 0;
              sub_29A190F50(&v702);
              *(v706 + 8 * v385 + 16) = 0;
              sub_29A190F50(&v702);
              v385 += 4;
              *(v706 + 8 * v392 + 24) = 0;
              ++v383;
              v387 = v694;
              v390 = *(v694 + 24);
              v688 += 4;
              v384 = 1;
              v386 = v391;
            }

            else
            {
              if (v388 + v386 <= a3)
              {
                v590 = v7;
                v597 = v5;
                v393 = 0;
                v394 = v688;
                v395 = v388;
                v396 = (a2 + 8 * v386);
                do
                {
                  v397 = *v394++;
                  v393 = vadd_f32(v393, v397);
                  --v395;
                }

                while (v395);
                v399 = *v396;
                v398 = v396[1];
                v400 = *(a2 + 8 * ((v388 - 1) % v388 + v386));
                sub_29A190F50(&v702);
                v401 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v393), 1.0 / v388));
                v402 = vmul_f32(vadd_f32(v398, v399), 0x3F0000003F000000);
                v403 = vmul_f32(vadd_f32(v399, v400), 0x3F0000003F000000);
                v404 = v385 + 1;
                *(v706 + 8 * v385) = *v396;
                if (v602 < 8)
                {
                  sub_29A190F50(&v702);
                  *(v706 + 8 * v404) = v402;
                  sub_29A190F50(&v702);
                  *(v706 + 8 * v385 + 16) = v401;
                  sub_29A190F50(&v702);
                  v412 = 0;
                  *(v706 + 8 * v385 + 24) = v403;
                  v413 = 8 * (v385 + 4);
                  v414 = 1;
                  do
                  {
                    v415 = v688[v414];
                    v416 = *(a2 + 8 * ((v412 + 2) % v388 + v386));
                    v417 = *(a2 + 8 * ((v388 + v412) % v388 + v386));
                    sub_29A190F50(&v702);
                    *(v706 + v413) = v688[v414];
                    sub_29A190F50(&v702);
                    *(v706 + 8 * v385 + 40) = vmul_f32(vadd_f32(v415, v416), 0x3F0000003F000000);
                    sub_29A190F50(&v702);
                    *(v706 + 8 * v385 + 48) = v401;
                    sub_29A190F50(&v702);
                    ++v412;
                    *(v706 + 8 * v385 + 56) = vmul_f32(vadd_f32(v415, v417), 0x3F0000003F000000);
                    ++v414;
                    v385 += 4;
                    v413 += 32;
                  }

                  while (v388 - 1 != v412);
                }

                else
                {
                  sub_29A190F50(&v702);
                  *(v706 + 8 * v404) = v403;
                  sub_29A190F50(&v702);
                  *(v706 + 8 * v385 + 16) = v401;
                  sub_29A190F50(&v702);
                  *(v706 + 8 * v385 + 24) = v402;
                  v405 = v388;
                  v406 = 2 * v388 - 2;
                  v407 = v388 - 1;
                  v408 = 8 * (v385 + 4);
                  do
                  {
                    v409 = v688[v407];
                    v410 = *(a2 + 8 * (v405 % v388 + v386));
                    v411 = *(a2 + 8 * (v406 % v388 + v386));
                    sub_29A190F50(&v702);
                    *(v706 + v408) = v688[v407];
                    sub_29A190F50(&v702);
                    *(v706 + 8 * v385 + 40) = vmul_f32(vadd_f32(v409, v411), 0x3F0000003F000000);
                    sub_29A190F50(&v702);
                    *(v706 + 8 * v385 + 48) = v401;
                    sub_29A190F50(&v702);
                    --v405;
                    --v406;
                    *(v706 + 8 * v385 + 56) = vmul_f32(vadd_f32(v409, v410), 0x3F0000003F000000);
                    --v407;
                    v385 += 4;
                    v408 += 32;
                  }

                  while (v405 > 1);
                }

                v385 += 4;
                v7 = v590;
                v5 = v597;
                goto LABEL_305;
              }

              v389 = 8 * v385;
              do
              {
                sub_29A190F50(&v702);
                *(v706 + v389) = 0;
                sub_29A190F50(&v702);
                *(v706 + v389 + 8) = 0;
                sub_29A190F50(&v702);
                *(v706 + v389 + 16) = 0;
                sub_29A190F50(&v702);
                *(v706 + v389 + 24) = 0;
                v385 += 4;
                v389 += 32;
                LODWORD(v388) = v388 - 1;
              }

              while (v388);
              ++v383;
              v387 = v694;
              v390 = *(v694 + 24);
              v384 = 1;
            }

            if (v383 >= v390)
            {
              goto LABEL_409;
            }
          }
        }
      }

      v702 = "hd/meshUtil.cpp";
      v703 = "ComputeQuadrangulatedFaceVaryingPrimvar";
      v704 = 984;
      v705 = "BOOL pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadrangulatedFaceVaryingPrimvar(const void *, int, HdType, VtValue *) const";
      LOBYTE(v706) = 0;
      v80 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v7 + 16));
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v702, 1, "Unsupported primvar type for quadrangulation [%s]", v80);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    v702 = "hd/meshUtil.cpp";
    v703 = "ComputeQuadrangulatedFaceVaryingPrimvar";
    v704 = 927;
    v705 = "BOOL pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadrangulatedFaceVaryingPrimvar(const void *, int, HdType, VtValue *) const";
    LOBYTE(v706) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v702, 1, "No output buffer provided for quadrangulation");
  }

  else
  {
    v702 = "hd/meshUtil.cpp";
    v703 = "ComputeQuadrangulatedFaceVaryingPrimvar";
    v704 = 923;
    v705 = "BOOL pxrInternal__aapl__pxrReserved__::HdMeshUtil::ComputeQuadrangulatedFaceVaryingPrimvar(const void *, int, HdType, VtValue *) const";
    LOBYTE(v706) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v702, 1, "No topology provided for quadrangulation");
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::HdMeshUtil::EnumerateEdges(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (a2)
    {
      v7 = v3[7];
      v8 = v3[12];
      v9 = v3[3];
      if (a3)
      {
        sub_29A0A171C(a3, v9);
      }

      if (v9 < 1)
      {
        v10 = 0;
      }

      else
      {
        LODWORD(v10) = 0;
        v11 = v9 & 0x7FFFFFFF;
        v12 = v7;
        do
        {
          v13 = *v12++;
          v10 = v13 + v10;
          --v11;
        }

        while (v11);
      }

      sub_29A0BD724(a2, v10);
      v14 = *(a1 + 8);
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v15)
      {
        v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if (v9 >= 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = *(v15 + 71) ^ *(v14 + 16);
        do
        {
          v20 = v7[v16];
          if (a3)
          {
            *(*a3 + 4 * v16) = v17;
          }

          if (v19 <= 7)
          {
            if (v20 >= 1)
            {
              v28 = 0;
              do
              {
                v29 = v28;
                LODWORD(v30) = *(v8 + 4 * v18 + 4 * v28++);
                if (v20 - 1 == v29)
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v28;
                }

                v32 = *(v8 + 4 * (v31 + v18));
                if (v30 <= v32)
                {
                  v33 = v32;
                }

                else
                {
                  v33 = v30;
                }

                if (v30 >= v32)
                {
                  v30 = v32;
                }

                else
                {
                  v30 = v30;
                }

                *(*a2 + 8 * v17 + 8 * v29) = v33 | (v30 << 32);
              }

              while (v20 != v28);
              v17 += v28;
            }
          }

          else if (v20 >= 1)
          {
            v21 = 8 * v17;
            v22 = 2 * v20 - 1;
            v17 += v20;
            v23 = v20;
            do
            {
              LODWORD(v24) = *(v8 + 4 * (v23 % v20 + v18));
              v25 = *(v8 + 4 * (v22 % v20 + v18));
              if (v24 >= v25)
              {
                v26 = v25;
              }

              else
              {
                v26 = v24;
              }

              if (v24 <= v25)
              {
                v24 = v25;
              }

              else
              {
                v24 = v24;
              }

              *(*a2 + v21) = v24 | (v26 << 32);
              --v22;
              v21 += 8;
              v27 = v23-- != 0;
            }

            while (v23 != 0 && v27);
          }

          v18 += v20;
          ++v16;
        }

        while (v16 != (v9 & 0x7FFFFFFF));
      }
    }

    else
    {
      v34 = "hd/meshUtil.cpp";
      v35 = "EnumerateEdges";
      v36 = 1003;
      v37 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::EnumerateEdges(std::vector<GfVec2i> *, std::vector<int> *) const";
      v38 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v34, 1, "No output buffer provided for edge vertices");
    }
  }

  else
  {
    v34 = "hd/meshUtil.cpp";
    v35 = "EnumerateEdges";
    v36 = 999;
    v37 = "void pxrInternal__aapl__pxrReserved__::HdMeshUtil::EnumerateEdges(std::vector<GfVec2i> *, std::vector<int> *) const";
    v38 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v34, 1, "No topology provided for edge vertices");
  }
}