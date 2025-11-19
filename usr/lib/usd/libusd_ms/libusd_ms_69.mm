void sub_29A3ED8AC(_Unwind_Exception *a1)
{
  v3 = 88;
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
      v5 = v1[11];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[10];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[9];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[8];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[7];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[6];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[5];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[4];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[3];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[2];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[1];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::SdfMetadataDisplayGroupTokens_StaticTokenType::~SdfMetadataDisplayGroupTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfMetadataDisplayGroupTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  sub_29A124AB0(&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::SdfMetadataDisplayGroupTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdfMetadataDisplayGroupTokens_StaticTokenType::SdfMetadataDisplayGroupTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfMetadataDisplayGroupTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "Internal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "Direct Manip", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "Pipeline", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "Symmetry", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "User Interface", 0);
  v3 = (this + 48);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v5;
    }
  }

  v6 = *(this + 1);
  v20 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v7;
    }
  }

  v8 = *(this + 2);
  v21 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v9;
    }
  }

  v10 = *(this + 3);
  v22 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v11;
    }
  }

  v12 = *(this + 4);
  v23 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v13;
    }
  }

  v14 = *(this + 5);
  v24 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v15;
    }
  }

  *v3 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  sub_29A12EF7C(v3, &v19, &v25, 6uLL);
  for (i = 40; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29A3EDCE4(_Unwind_Exception *a1)
{
  v3 = 40;
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
      v5 = v1[5];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::SdfValueRoleNames_StaticTokenType::~SdfValueRoleNames_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfValueRoleNames_StaticTokenType *this)
{
  v12 = (this + 88);
  sub_29A124AB0(&v12);
  v2 = *(this + 10);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 9);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 7);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 5);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 4);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 3);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 2);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 1);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::SdfValueRoleNames_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdfValueRoleNames_StaticTokenType::SdfValueRoleNames_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfValueRoleNames_StaticTokenType *this)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "Point", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "Normal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "Vector", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "Color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "Frame", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "Transform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "PointIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "EdgeIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "FaceIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "Group", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "TextureCoordinate", 0);
  v3 = (this + 88);
  v4 = *this;
  v18 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v19 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v20 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v21 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v22 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v23 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v24 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v25 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v26 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v27 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v28 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  sub_29A12EF7C(v3, &v18, &v29, 0xBuLL);
  for (i = 80; i != -8; i -= 8)
  {
    v16 = *(&v18 + i);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29A3EE25C(_Unwind_Exception *a1)
{
  v3 = 80;
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
      v5 = v1[10];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[9];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[8];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[7];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[6];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[5];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[4];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[3];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[2];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[1];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t *sub_29A3EE3BC()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2048D60, 0, 0, 0, 4, 1, 1);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2049940, 0, 0, 0, 4, 1, 1);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A20495A8, 0, 0, 0, 4, 1, 1);
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2047348, 0, 0, 0, 4, 1, 1);
  v0 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2047368, 0, 0, 0, 24, 0, 0);
  v1 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v0);
  sub_29A008E78(__p, "SdfTimeSampleMap");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v0, v1, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2049428, 0, 0, 0, 24, 0, 0);
  v2 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2049138, 0, 0, 0, 24, 0, 0);
  v3 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v2);
  sub_29A008E78(__p, "SdfRelocates");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v2, v3, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2049070, 0, 0, 0, 24, 0, 0);
  v5 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v4);
  sub_29A008E78(__p, "SdfRelocatesMap");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v4, v5, __p);
  v7 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v6);
  sub_29A008E78(v9, "map<SdfPath, SdfPath>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v4, v7, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2047328, 0, 0, 0, 16, 0, 0);
  return pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&stru_2A2048EE0, 0, 0, 0, 1, 1, 0);
}

void sub_29A3EE634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A3EE674()
{
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2048D60, &stru_2A203FE00, sub_29A3F0818);
  v0 = MEMORY[0x29EDC94D0];
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(MEMORY[0x29EDC94D0], &stru_2A2048D60, sub_29A3F0878);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2048D60, v0, sub_29A3F08C8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2049940, &stru_2A203FE00, sub_29A3F0918);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(v0, &stru_2A2049940, sub_29A3F0978);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A2049940, v0, sub_29A3F09C8);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20495A8, &stru_2A203FE00, sub_29A3F0A18);
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(v0, &stru_2A20495A8, sub_29A3F0A78);

  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(&stru_2A20495A8, v0, sub_29A3F0AC8);
}

void sub_29A3EE7C8()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 0, "SdfSpecTypeUnknown", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 1, "SdfSpecTypeAttribute", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 2, "SdfSpecTypeConnection", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 3, "SdfSpecTypeExpression", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 4, "SdfSpecTypeMapper", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 5, "SdfSpecTypeMapperArg", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 6, "SdfSpecTypePrim", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 7, "SdfSpecTypePseudoRoot", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 8, "SdfSpecTypeRelationship", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 9, "SdfSpecTypeRelationshipTarget", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 10, "SdfSpecTypeVariant", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2047348, 11, "SdfSpecTypeVariantSet", 0);
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&stru_2A2049940, 0, "SdfSpecifierDef", "Def");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&stru_2A2049940, 1, "SdfSpecifierOver", "Over");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&stru_2A2049940, 2, "SdfSpecifierClass", "Class");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&stru_2A2048D60, 0, "SdfPermissionPublic", "Public");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&stru_2A2048D60, 1, "SdfPermissionPrivate", "Private");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&stru_2A20495A8, 0, "SdfVariabilityVarying", "Varying");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(&stru_2A20495A8, 1, "SdfVariabilityUniform", "Uniform");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204B6C0, 0, "SdfAuthoringErrorUnrecognizedFields", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204B6C0, 1, "SdfAuthoringErrorUnrecognizedSpecType", 0);
}

void sub_29A3EEA2C()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D428, 0, "SdfLengthUnitMillimeter", "mm");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D428, 1, "SdfLengthUnitCentimeter", "cm");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D428, 2, "SdfLengthUnitDecimeter", "dm");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D428, 3, "SdfLengthUnitMeter", "m");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D428, 4, "SdfLengthUnitKilometer", "km");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D428, 5, "SdfLengthUnitInch", "in");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D428, 6, "SdfLengthUnitFoot", "ft");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D428, 7, "SdfLengthUnitYard", "yd");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D428, 8, "SdfLengthUnitMile", "mi");
}

void sub_29A3EEB58()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D6A0, 0, "SdfAngularUnitDegrees", "deg");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A204D6A0, 1, "SdfAngularUnitRadians", "rad");
}

void sub_29A3EEBC0()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2049CE8, 0, "SdfDimensionlessUnitPercent", "%");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2049CE8, 1, "SdfDimensionlessUnitDefault", "default");
}

void sub_29A3EEC4C()
{
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(qword_2A204D428, &stru_2A203FE00, sub_29A3F0B18);
  v0 = MEMORY[0x29EDC94D0];
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(MEMORY[0x29EDC94D0], qword_2A204D428, sub_29A3F0CEC);

  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(qword_2A204D428, v0, sub_29A3F0F0C);
}

void sub_29A3EED00()
{
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(qword_2A204D6A0, &stru_2A203FE00, sub_29A3F0F5C);
  v0 = MEMORY[0x29EDC94D0];
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(MEMORY[0x29EDC94D0], qword_2A204D6A0, sub_29A3F1130);

  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(qword_2A204D6A0, v0, sub_29A3F1350);
}

void sub_29A3EEDB4()
{
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(qword_2A2049CE8, &stru_2A203FE00, sub_29A3F13A0);
  v0 = MEMORY[0x29EDC94D0];
  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(MEMORY[0x29EDC94D0], qword_2A2049CE8, sub_29A3F1574);

  pxrInternal__aapl__pxrReserved__::VtValue::_RegisterCast(qword_2A2049CE8, v0, sub_29A3F1794);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfDefaultUnit(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  Type = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v3, this);
  return *pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDefaultUnit(&Type);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfDefaultUnit(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfEnum *a2)
{
  if ((atomic_load_explicit(&qword_2A1741C60, memory_order_acquire) & 1) == 0)
  {
    sub_29B29EA24();
  }

  v3 = sub_29A3EEFE8();
  sub_29A008E78(__p, (*(*this + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v4 = sub_29A01BCCC(v3 + 24, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (v3 + 32 != v4)
  {
    return (v4 + 56);
  }

  __p[0] = "sdf/types.cpp";
  __p[1] = "SdfDefaultUnit";
  v11 = 252;
  v12 = "const TfEnum &pxrInternal__aapl__pxrReserved__::SdfDefaultUnit(const TfEnum &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(*this + 8) & 0x7FFFFFFFFFFFFFFFLL), v8);
  if (v9 >= 0)
  {
    v7 = v8;
  }

  else
  {
    v7 = v8[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Unsupported unit '%s'.", v6, v7);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return &qword_2A1741C80;
}

void sub_29A3EEFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3EEFE8()
{
  if ((atomic_load_explicit(&qword_2A1741C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741C48))
  {
    qword_2A1741C40 = sub_29A3F17E4();
    __cxa_guard_release(&qword_2A1741C48);
  }

  return qword_2A1741C40;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfUnitCategory(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfEnum *a2)
{
  if ((atomic_load_explicit(&qword_2A1741C68, memory_order_acquire) & 1) == 0)
  {
    sub_29B29EA84();
  }

  v3 = sub_29A3EEFE8();
  sub_29A008E78(__p, (*(*this + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v4 = sub_29A01BCCC(v3 + 72, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (v3 + 80 != v4)
  {
    return (v4 + 56);
  }

  __p[0] = "sdf/types.cpp";
  __p[1] = "SdfUnitCategory";
  v11 = 268;
  v12 = "const string &pxrInternal__aapl__pxrReserved__::SdfUnitCategory(const TfEnum &)";
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(*this + 8) & 0x7FFFFFFFFFFFFFFFLL), v8);
  if (v9 >= 0)
  {
    v7 = v8;
  }

  else
  {
    v7 = v8[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Unsupported unit '%s'.", v6, v7);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return &qword_2A1741CA0;
}

void sub_29A3EF170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfConvertUnit(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfEnum *a2, const pxrInternal__aapl__pxrReserved__::TfEnum *a3)
{
  v5 = sub_29A3EEFE8();
  v6 = *this;
  v7 = *(*this + 8);
  if (!strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (v7 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    sub_29A008E78(&v22, (v7 & 0x7FFFFFFFFFFFFFFFLL));
    v13 = sub_29A01BCCC(v5, &v22);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v22);
    }

    if (v5 + 8 != v13)
    {
      v14 = *(v13 + 56);
      v22 = this + 8;
      sub_29A36BB6C(v14, this + 2, &unk_29B4D6118, &v22);
      v15 = *(v13 + 56);
      v22 = a2 + 8;
      sub_29A36BB6C(v15, a2 + 2, &unk_29B4D6118, &v22);
      return;
    }

    v22 = "sdf/types.cpp";
    v23 = "SdfConvertUnit";
    v24 = 297;
    v25 = "double pxrInternal__aapl__pxrReserved__::SdfConvertUnit(const TfEnum &, const TfEnum &)";
    v26 = 0;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(*this + 8) & 0x7FFFFFFFFFFFFFFFLL), v20);
    if (v21 >= 0)
    {
      v17 = v20;
    }

    else
    {
      v17 = v20[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v22, "Unsupported unit '%s'.", v16, v17);
  }

  else
  {
    v22 = "sdf/types.cpp";
    v23 = "SdfConvertUnit";
    v24 = 289;
    v25 = "double pxrInternal__aapl__pxrReserved__::SdfConvertUnit(const TfEnum &, const TfEnum &)";
    v26 = 0;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetFullName(v6, *(this + 1), v20);
    v8 = v21;
    v9 = v20[0];
    pxrInternal__aapl__pxrReserved__::TfEnum::GetFullName(*a2, *(a2 + 1), __p);
    if (v8 >= 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = v9;
    }

    if (v19 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v22, "Can not convert from '%s' to '%s'.", v10, v11, v12);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_29A3EF3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfGetNameForUnit(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfEnum *a2)
{
  if ((atomic_load_explicit(&qword_2A1741C70, memory_order_acquire) & 1) == 0)
  {
    sub_29B29EAEC();
  }

  v3 = sub_29A3EEFE8();
  sub_29A008E78(__p, (*(*this + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v4 = sub_29A01BCCC(v3 + 768, __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (v3 + 776 == v4)
  {
    __p[0] = "sdf/types.cpp";
    __p[1] = "SdfGetNameForUnit";
    v14 = 315;
    v15 = "const string &pxrInternal__aapl__pxrReserved__::SdfGetNameForUnit(const TfEnum &)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(*this + 8) & 0x7FFFFFFFFFFFFFFFLL), v11);
    if (v12 >= 0)
    {
      v10 = v11;
    }

    else
    {
      v10 = v11[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Unsupported unit '%s'.", v9, v10);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    return &qword_2A1741CB8;
  }

  else
  {
    v5 = sub_29A3EEFE8();
    sub_29A008E78(__p, (*(*this + 8) & 0x7FFFFFFFFFFFFFFFLL));
    v11[0] = __p;
    v6 = *(sub_29A3F2378((v5 + 768), __p, &unk_29B4D6118, v11) + 14);
    v7 = *(this + 2);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    return (v3 + 216 * v6 + 24 * v7 + 96);
  }
}

void sub_29A3EF568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfGetUnitFromName(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2A1741C78, memory_order_acquire) & 1) == 0)
  {
    sub_29B29EB54();
  }

  v2 = sub_29A3EEFE8();
  v3 = sub_29A01BCCC(v2 + 744, a1);
  if (v2 + 752 != v3)
  {
    return (v3 + 56);
  }

  v7[0] = "sdf/types.cpp";
  v7[1] = "SdfGetUnitFromName";
  v7[2] = 333;
  v7[3] = "const TfEnum &pxrInternal__aapl__pxrReserved__::SdfGetUnitFromName(const std::string &)";
  v8 = 0;
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v7, "Unknown unit name '%s'.", v4, v6);
  return &qword_2A1741C90;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfValueHasValidType(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  v6 = 0;
  Type = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v3, this, &v6);
  IsEmpty = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::_IsEmpty(&Type);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return !IsEmpty;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfGetTypeForValueTypeName(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  Type = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v3, this);
  return *pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&Type);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfGetValueTypeNameForValue(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  v5 = 0;
  result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v3, this, &v5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

atomic_uint **pxrInternal__aapl__pxrReserved__::SdfGetRoleNameForValueTypeName@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, atomic_uint **a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  Type = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v5, this);
  result = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetRole(&Type);
  v7 = *result;
  *a2 = *result;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v8;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfConvertToValidMetadataDictionary(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v11.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(a1);
  v11.__r_.__value_.__l.__size_ = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v5)
  {
    v7 = v11.__r_.__value_.__r.__words[0] == v6;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if (v11.__r_.__value_.__l.__size_ != v5 || v8 == 0)
  {
    sub_29A070BA0(v13);
  }

  pxrInternal__aapl__pxrReserved__::TfStringJoin("; ", v12, &v11);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v11;
  v11.__r_.__value_.__r.__words[0] = v12;
  sub_29A012C90(&v11);
  v12[0] = v13;
  sub_29A012C90(v12);
  return 1;
}

void sub_29A3EF97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void ***a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a10 = &a13;
  sub_29A012C90(&a10);
  a13 = &a16;
  sub_29A012C90(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29A3EF9B8(uint64_t a1, const void **a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  if (sub_29A185258(a1))
  {
    v33[0] = 0;
    v6 = sub_29A18799C(a1);
    pxrInternal__aapl__pxrReserved__::VtDictionary::swap(v6, v33);
    __p[0] = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v33);
    __p[1] = v7;
    v9 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v33);
    v10 = 1;
    if (v8)
    {
      v11 = __p[0] == v9;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    if (__p[1] != v8 || v12 == 0)
    {
      sub_29A070BA0(a3);
    }

    v19 = sub_29A18799C(a1);
    pxrInternal__aapl__pxrReserved__::VtDictionary::swap(v19, v33);
    sub_29A184A10(v33, 0);
    return v10 & 1;
  }

  if (!sub_29A1D0DBC(a1))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueHasValidType(a1, v14))
    {
      v10 = 1;
      return v10 & 1;
    }

LABEL_42:
    __p[1] = 0;
    sub_29A18606C(a1, __p);
    sub_29A186B14(__p);
    v10 = 0;
    return v10 & 1;
  }

  v15 = *(a1 + 8);
  if ((v15 & 4) != 0)
  {
    v16 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v16 = *a1;
  }

  if (*v16 == *(v16 + 1))
  {
    sub_29A3F2414(a3, v33);
    if (v34 >= 0)
    {
      v22 = v33;
    }

    else
    {
      v22 = v33[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("cannot infer type from empty vector/list%s -- use an empty typed array like VtIntArray/VtStringArray instead", v20, v21, v22);
    sub_29A091654(a2, __p);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_40:
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      goto LABEL_42;
    }

    v23 = __p[0];
LABEL_39:
    operator delete(v23);
    goto LABEL_40;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfValueHasValidType(*v16, v14))
  {
    sub_29A3F8D30(*v16);
    v24 = v34;
    v25 = v33[0];
    sub_29A3F2414(a3, v31);
    v28 = v33;
    if (v24 < 0)
    {
      v28 = v25;
    }

    if (v32 >= 0)
    {
      v29 = v31;
    }

    else
    {
      v29 = v31[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s%s%s is not a valid scene description datatype", v26, v27, "first vector/list element ", v28, v29);
    sub_29A091654(a2, __p);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    v23 = v31[0];
    goto LABEL_39;
  }

  v33[0] = pxrInternal__aapl__pxrReserved__::VtValue::GetType(*v16, v17);
  if ((atomic_load_explicit(&qword_2A1741C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1741C58))
  {
    qword_2A1741C50 = sub_29A3F24B8();
    __cxa_guard_release(&qword_2A1741C58);
  }

  v18 = sub_29A0EB63C(qword_2A1741C50, v33);
  if (!v18)
  {
    sub_29B29EBB4(__p, v33);
  }

  v10 = (v18[3])(a1, a2, a3);
  return v10 & 1;
}

void sub_29A3EFE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::operator<<(uint64_t a1, void *a2)
{
  v9 = *a2;
  v10 = a2 + 1;
  while (v9 != v10)
  {
    v3 = sub_29A327910(&v9);
    v4 = MEMORY[0x29C2C1EB0](a1, *(*v3 + 32));
    v5 = sub_29A00911C(v4, ": ", 2);
    v6 = sub_29A327910(&v9);
    v7 = pxrInternal__aapl__pxrReserved__::operator<<(v5, *v6 + 40);
    sub_29A00911C(v7, "\n", 1);
    sub_29A327948(&v9);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(uint64_t this)
{
  *(this + 8) = 0;
  return this;
}

{
  *(this + 8) = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = &off_2A2044DD0;
  sub_29A1B01B8(a1, a2);
  return a1;
}

{
  *(a1 + 8) = &off_2A2044DD0;
  sub_29A1B01B8(a1, a2);
  return a1;
}

{
  *(a1 + 8) = &off_2A204D8D8;
  sub_29A3FF3C4(a1, a2);
  return a1;
}

{
  *(a1 + 8) = &off_2A204D8D8;
  sub_29A3FF3C4(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue *pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue *this, const void ****a2)
{
  *(this + 1) = &off_2A2042030;
  sub_29A187864(this, a2);
  return this;
}

{
  *(this + 1) = &off_2A2042030;
  sub_29A187864(this, a2);
  return this;
}

pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType *pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::Sdf_ValueTypeNamesType(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(this);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((v2 + 8));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 16));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 24));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 32));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 40));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 48));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 56));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 64));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 72));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 80));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 88));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 96));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 104));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 112));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 120));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 128));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 136));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 144));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 152));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 160));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 168));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 176));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 184));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 192));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 200));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 208));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 216));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 224));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 232));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 240));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 248));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 256));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 264));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 272));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 280));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 288));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 296));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 304));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 312));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 320));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 328));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 336));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 344));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 352));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 360));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 368));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 376));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 384));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 392));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 400));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 408));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 416));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 424));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 432));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 440));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 448));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 456));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 464));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 472));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 480));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 488));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 496));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 504));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 512));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 520));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 528));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 536));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 544));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 552));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 560));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 568));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 576));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 584));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 592));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 600));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 608));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 616));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 624));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 632));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 640));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 648));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 656));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 664));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 672));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 680));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 688));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 696));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 704));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 712));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 720));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 728));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 736));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 744));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 752));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 760));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 768));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 776));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 784));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 792));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 800));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 808));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 816));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 824));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 832));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 840));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 848));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 856));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 864));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 872));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((this + 880));
  return this;
}

void pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::GetSerializationName(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  v3 = 0;
  Type = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v2, a2, &v3);
  pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::GetSerializationName(Type, &Type);
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::GetSerializationName@<W0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, atomic_uint **a2@<X8>)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  Type = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v5, a1);
  result = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::_IsEmpty(&Type);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::GetSerializationName(result, &Type);
  }

  v7 = *a1;
  *a2 = *a1;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v8;
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::hash_value(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::SdfHumanReadableValue *a2)
{
  v6 = 0;
  v7 = 0;
  v2 = *(this + 23);
  if (v2 >= 0)
  {
    v3 = this;
  }

  else
  {
    v3 = *this;
  }

  if (v2 >= 0)
  {
    v4 = *(this + 23);
  }

  else
  {
    v4 = *(this + 1);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v6, v3, v4);
  return bswap64(0x9E3779B97F4A7C55 * v6);
}

_DWORD *sub_29A3F0818@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X8>)
{
  v3 = *sub_29A3B7F1C(a1);
  a2[1] = &off_2A2048D70;
  result = operator new(0x18uLL);
  *result = &stru_2A2048D60;
  result[2] = v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A3F0878@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &off_2A2048CA8 + 3;
  *a2 = v4;
  return result;
}

uint64_t sub_29A3F08C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

_DWORD *sub_29A3F0918@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X8>)
{
  v3 = *sub_29A321704(a1);
  a2[1] = &off_2A2048D70;
  result = operator new(0x18uLL);
  *result = &stru_2A2049940;
  result[2] = v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A3F0978@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &off_2A2049888 + 3;
  *a2 = v4;
  return result;
}

uint64_t sub_29A3F09C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

_DWORD *sub_29A3F0A18@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X8>)
{
  v3 = *sub_29A27A18C(a1);
  a2[1] = &off_2A2048D70;
  result = operator new(0x18uLL);
  *result = &stru_2A20495A8;
  result[2] = v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29A3F0A78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &off_2A20494F0 + 3;
  *a2 = v4;
  return result;
}

uint64_t sub_29A3F0AC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

_DWORD *sub_29A3F0B18@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X8>)
{
  v3 = *sub_29A3F0B78(a1);
  a2[1] = &off_2A2048D70;
  result = operator new(0x18uLL);
  *result = qword_2A204D428;
  result[2] = v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void **sub_29A3F0B78(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3F0C0C(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A3F0C98, qword_2A204D428);
  }
}

uint64_t sub_29A3F0C0C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48D623 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, qword_2A204D428);
}

_DWORD *sub_29A3F0C98@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29A3F0CE0;
  a1[2] = qword_2A204D428;
  return result;
}

void sub_29A3F0CE0(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29A3F0CEC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &off_2A204D6B0 + 3;
  *a2 = v4;
  return result;
}

_DWORD *sub_29A3F0E5C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A204D6B0 + 3;
  *a2 = *result;
  return result;
}

void *sub_29A3F0E78(unsigned int *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A204D428, *a1, __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a2, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29A3F0EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3F0F0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

_DWORD *sub_29A3F0F5C@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X8>)
{
  v3 = *sub_29A3F0FBC(a1);
  a2[1] = &off_2A2048D70;
  result = operator new(0x18uLL);
  *result = qword_2A204D6A0;
  result[2] = v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void **sub_29A3F0FBC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3F1050(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A3F10DC, qword_2A204D6A0);
  }
}

uint64_t sub_29A3F1050(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48D968 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, qword_2A204D6A0);
}

_DWORD *sub_29A3F10DC@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29A3F1124;
  a1[2] = qword_2A204D6A0;
  return result;
}

void sub_29A3F1124(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29A3F1130@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &off_2A204D768 + 3;
  *a2 = v4;
  return result;
}

_DWORD *sub_29A3F12A0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A204D768 + 3;
  *a2 = *result;
  return result;
}

void *sub_29A3F12BC(unsigned int *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A204D6A0, *a1, __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a2, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29A3F1334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3F1350@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

_DWORD *sub_29A3F13A0@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, void *a2@<X8>)
{
  v3 = *sub_29A3F1400(a1);
  a2[1] = &off_2A2048D70;
  result = operator new(0x18uLL);
  *result = qword_2A2049CE8;
  result[2] = v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void **sub_29A3F1400(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3F1494(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A3F1520, qword_2A2049CE8);
  }
}

uint64_t sub_29A3F1494(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B485F98 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, qword_2A2049CE8);
}

_DWORD *sub_29A3F1520@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29A3F1568;
  a1[2] = qword_2A2049CE8;
  return result;
}

void sub_29A3F1568(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29A3F1574@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &off_2A204D820 + 3;
  *a2 = v4;
  return result;
}

_DWORD *sub_29A3F16E4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A204D820 + 3;
  *a2 = *result;
  return result;
}

void *sub_29A3F1700(unsigned int *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2049CE8, *a1, __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a2, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29A3F1778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3F1794@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if ((v3 & 4) != 0)
  {
    result = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v4 = *result;
  *(a2 + 8) = &unk_2A204475B;
  *a2 = v4;
  return result;
}

_OWORD *sub_29A3F17E4()
{
  v0 = operator new(0x318uLL);
  *(v0 + 8) = 0u;
  *v0 = v0 + 8;
  v0[2] = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 3) = v0 + 2;
  *(v0 + 6) = v0 + 56;
  v0[5] = 0u;
  *(v0 + 9) = v0 + 5;
  bzero(v0 + 6, 0x288uLL);
  v0[47] = 0u;
  *(v0 + 93) = v0 + 47;
  *(v0 + 776) = 0u;
  *(v0 + 96) = v0 + 776;
  v4 = &unk_2A204D428;
  v5 = 0;
  sub_29A008E78(&v3, "mm");
  sub_29A008E78(&__p, "Length");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 0.001);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A204D428;
  v5 = 1;
  sub_29A008E78(&v3, "cm");
  sub_29A008E78(&__p, "Length");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 0.01);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A204D428;
  v5 = 2;
  sub_29A008E78(&v3, "dm");
  sub_29A008E78(&__p, "Length");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 0.1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A204D428;
  v5 = 3;
  sub_29A008E78(&v3, "m");
  sub_29A008E78(&__p, "Length");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 1.0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A204D428;
  v5 = 4;
  sub_29A008E78(&v3, "km");
  sub_29A008E78(&__p, "Length");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 1000.0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A204D428;
  v5 = 5;
  sub_29A008E78(&v3, "in");
  sub_29A008E78(&__p, "Length");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 0.0254);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A204D428;
  v5 = 6;
  sub_29A008E78(&v3, "ft");
  sub_29A008E78(&__p, "Length");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 0.3048);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A204D428;
  v5 = 7;
  sub_29A008E78(&v3, "yd");
  sub_29A008E78(&__p, "Length");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 0.9144);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A204D428;
  v5 = 8;
  sub_29A008E78(&v3, "mi");
  sub_29A008E78(&__p, "Length");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 1609.344);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A204D6A0;
  v5 = 0;
  sub_29A008E78(&v3, "deg");
  sub_29A008E78(&__p, "Angular");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 1.0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A204D6A0;
  v5 = 1;
  sub_29A008E78(&v3, "rad");
  sub_29A008E78(&__p, "Angular");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 57.2957795);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A2049CE8;
  v5 = 0;
  sub_29A008E78(&v3, "%");
  sub_29A008E78(&__p, "Dimensionless");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 0.01);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v4 = &unk_2A2049CE8;
  v5 = 1;
  sub_29A008E78(&v3, "default");
  sub_29A008E78(&__p, "Dimensionless");
  sub_29A3F1E58(v0, &v4, &v3, &__p, 1.0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  return v0;
}

void sub_29A3F1DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A3F1E58(uint64_t a1, int *a2, std::string *a3, std::string *a4, double a5)
{
  v10 = *(*a2 + 8);
  sub_29A008E78(__p, (v10 & 0x7FFFFFFFFFFFFFFFLL));
  v22 = __p;
  v11 = *(sub_29A117F90(a1, __p, &unk_29B4D6118, &v22) + 7);
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else if (v11)
  {
    goto LABEL_7;
  }

  v11 = operator new(0x18uLL);
  v11[2] = 0;
  v11[1] = 0;
  *v11 = (v11 + 1);
  sub_29A008E78(__p, (v10 & 0x7FFFFFFFFFFFFFFFLL));
  v22 = __p;
  *(sub_29A117F90(a1, __p, &unk_29B4D6118, &v22) + 7) = v11;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_7:
  __p[0] = a2 + 2;
  *(sub_29A36BB6C(v11, a2 + 2, &unk_29B4D6118, __p) + 5) = a5;
  if (a5 == 1.0)
  {
    sub_29A008E78(__p, (v10 & 0x7FFFFFFFFFFFFFFFLL));
    v22 = __p;
    v12 = sub_29A3F2184((a1 + 24), __p, &unk_29B4D6118, &v22);
    v13 = *a2;
    *(v12 + 16) = a2[2];
    *(v12 + 7) = v13;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = a4;
    v14 = sub_29A3F222C((a1 + 48), &a4->__r_.__value_.__l.__data_, &unk_29B4D6118, __p);
    v15 = *a2;
    *(v14 + 16) = a2[2];
    v14[7] = v15;
    sub_29A008E78(__p, (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL));
    v22 = __p;
    v16 = sub_29A00B4AC((a1 + 72), __p, &unk_29B4D6118, &v22);
    std::string::operator=((v16 + 56), a4);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_29A008E78(__p, (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v17 = sub_29A01BCCC(a1 + 768, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 776 == v17)
  {
    v17 = *(a1 + 784);
    sub_29A008E78(__p, (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL));
    v22 = __p;
    *(sub_29A3F2378((a1 + 768), __p, &unk_29B4D6118, &v22) + 14) = v17;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    LODWORD(v17) = *(v17 + 56);
  }

  std::string::operator=((a1 + 216 * v17 + 24 * a2[2] + 96), a3);
  __p[0] = a3;
  result = sub_29A3F222C((a1 + 744), &a3->__r_.__value_.__l.__data_, &unk_29B4D6118, __p);
  v19 = *a2;
  *(result + 16) = a2[2];
  result[7] = v19;
  return result;
}

void sub_29A3F2154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_29A3F2184(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A00B0D0(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x48uLL);
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v7 + 7) = MEMORY[0x29EDC94D0];
    *(v7 + 16) = 0;
    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

uint64_t *sub_29A3F222C(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A3F22C4(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A3F22C4@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x48uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = MEMORY[0x29EDC94D0];
  *(v7 + 16) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29A3F235C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

_OWORD *sub_29A3F2378(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A00B0D0(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x40uLL);
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v7 + 14) = 0;
    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

void sub_29A3F2414(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*a1 == *(a1 + 8))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfStringJoin(":", a1, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf(" under key '%s'", v2, v3, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A3F249C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_29A3F24B8()
{
  v0 = operator new(0x28uLL);
  *v0 = 0u;
  v0[1] = 0u;
  *(v0 + 8) = 1065353216;
  sub_29A019AA0(v0, 0x21uLL);
  v2 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94A8], v1);
  sub_29A3F8AA8(v0, v2, v2, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<BOOL>);
  v4 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94C8], v3);
  sub_29A3F8AA8(v0, v4, v4, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<unsigned char>);
  v6 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94D0], v5);
  sub_29A3F8AA8(v0, v6, v6, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<int>);
  v8 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94D8], v7);
  sub_29A3F8AA8(v0, v8, v8, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<unsigned int>);
  v10 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC9508], v9);
  sub_29A3F8AA8(v0, v10, v10, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<long long>);
  v12 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC9510], v11);
  sub_29A3F8AA8(v0, v12, v12, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<unsigned long long>);
  v14 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040768, v13);
  sub_29A3F8AA8(v0, v14, v14, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>);
  v16 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94C0], v15);
  sub_29A3F8AA8(v0, v16, v16, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<float>);
  v18 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x29EDC94B8], v17);
  sub_29A3F8AA8(v0, v18, v18, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<double>);
  v20 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20478E8, v19);
  sub_29A3F8AA8(v0, v20, v20, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>);
  v22 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A203B0F8, v21);
  sub_29A3F8AA8(v0, v22, v22, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<std::string>);
  v24 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2040480, v23);
  sub_29A3F8AA8(v0, v24, v24, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::TfToken>);
  v26 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2047388, v25);
  sub_29A3F8AA8(v0, v26, v26, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>);
  v28 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A2047358, v27);
  sub_29A3F8AA8(v0, v28, v28, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>);
  v30 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&stru_2A20473B0, v29);
  sub_29A3F8AA8(v0, v30, v30, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>);
  v32 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20407C8, v31);
  sub_29A3F8AA8(v0, v32, v32, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>);
  v34 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20407F8, v33);
  sub_29A3F8AA8(v0, v34, v34, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>);
  v36 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040818, v35);
  sub_29A3F8AA8(v0, v36, v36, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>);
  v38 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040868, v37);
  sub_29A3F8AA8(v0, v38, v38, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfQuath>);
  v40 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040858, v39);
  sub_29A3F8AA8(v0, v40, v40, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>);
  v42 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040848, v41);
  sub_29A3F8AA8(v0, v42, v42, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>);
  v44 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040978, v43);
  sub_29A3F8AA8(v0, v44, v44, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>);
  v46 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040968, v45);
  sub_29A3F8AA8(v0, v46, v46, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>);
  v48 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040958, v47);
  sub_29A3F8AA8(v0, v48, v48, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>);
  v50 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040948, v49);
  sub_29A3F8AA8(v0, v50, v50, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>);
  v52 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20409B8, v51);
  sub_29A3F8AA8(v0, v52, v52, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>);
  v54 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20409A8, v53);
  sub_29A3F8AA8(v0, v54, v54, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>);
  v56 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040998, v55);
  sub_29A3F8AA8(v0, v56, v56, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>);
  v58 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A2040988, v57);
  sub_29A3F8AA8(v0, v58, v58, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>);
  v60 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20409F8, v59);
  sub_29A3F8AA8(v0, v60, v60, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>);
  v62 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20409E8, v61);
  sub_29A3F8AA8(v0, v62, v62, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>);
  v64 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20409D8, v63);
  sub_29A3F8AA8(v0, v64, v64, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>);
  v66 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(&unk_2A20409C8, v65);
  sub_29A3F8AA8(v0, v66, v66, pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>);
  return v0;
}

void sub_29A3F2AA8(_Unwind_Exception *a1)
{
  v3 = sub_29A0EB570(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<BOOL>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v4 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 1);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  v8 = v6[1];
  sub_29A20CB6C(v28, (v8 - *v6) >> 4);
  sub_29A20D1F0(v28);
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v20 = v4;
  v9 = 1;
  v10 = v29;
  v11 = v7;
  do
  {
    sub_29A3F8CE8(v11, v32);
    if (v33)
    {
      sub_29A3F8E60(v32, v10++);
    }

    else
    {
      v12 = *v6;
      sub_29A3F8D30(v11);
      if (v27 >= 0)
      {
        v13 = &v26;
      }

      else
      {
        v13 = v26;
      }

      sub_29A3F2414(a3, v24);
      v14 = v25;
      v15 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94A8] + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
      v18 = v24;
      if (v14 < 0)
      {
        v18 = v15;
      }

      v19 = __p;
      if (v23 < 0)
      {
        v19 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v16, v17, (v7 - v12) >> 4, v13, v18, v19);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v11 = (v11 + 16);
    v7 = (v7 + 16);
  }

  while (v11 != v8);
  v4 = v20;
  if (v9)
  {
LABEL_25:
    sub_29A3F8EDC(v4, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v20, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<unsigned char>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v4 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 1);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  v8 = v6[1];
  sub_29A19E1E4(v28, (v8 - *v6) >> 4);
  sub_29A19E500(v28);
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v20 = v4;
  v9 = 1;
  v10 = v29;
  v11 = v7;
  do
  {
    sub_29A3F9058(v11, v32);
    if (v33)
    {
      sub_29A3F90A0(v32, v10++);
    }

    else
    {
      v12 = *v6;
      sub_29A3F8D30(v11);
      if (v27 >= 0)
      {
        v13 = &v26;
      }

      else
      {
        v13 = v26;
      }

      sub_29A3F2414(a3, v24);
      v14 = v25;
      v15 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94C8] + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
      v18 = v24;
      if (v14 < 0)
      {
        v18 = v15;
      }

      v19 = __p;
      if (v23 < 0)
      {
        v19 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v16, v17, (v7 - v12) >> 4, v13, v18, v19);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v11 = (v11 + 16);
    v7 = (v7 + 16);
  }

  while (v11 != v8);
  v4 = v20;
  if (v9)
  {
LABEL_25:
    sub_29A19E544(v4, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v20, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<int>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v4 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 1);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  v8 = v6[1];
  sub_29A19D6E4(v28, (v8 - *v6) >> 4);
  sub_29A19DBEC(v28);
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v20 = v4;
  v9 = 1;
  v10 = v29;
  v11 = v7;
  do
  {
    sub_29A3F91E0(v11, v32);
    if (v33)
    {
      sub_29A3F9228(v32, v10++);
    }

    else
    {
      v12 = *v6;
      sub_29A3F8D30(v11);
      if (v27 >= 0)
      {
        v13 = &v26;
      }

      else
      {
        v13 = v26;
      }

      sub_29A3F2414(a3, v24);
      v14 = v25;
      v15 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
      v18 = v24;
      if (v14 < 0)
      {
        v18 = v15;
      }

      v19 = __p;
      if (v23 < 0)
      {
        v19 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v16, v17, (v7 - v12) >> 4, v13, v18, v19);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v11 = (v11 + 16);
    v7 = (v7 + 16);
  }

  while (v11 != v8);
  v4 = v20;
  if (v9)
  {
LABEL_25:
    sub_29A19DC30(v4, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v20, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<unsigned int>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v4 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 1);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  v8 = v6[1];
  sub_29A19C954(v28, (v8 - *v6) >> 4);
  sub_29A19CEF8(v28);
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v20 = v4;
  v9 = 1;
  v10 = v29;
  v11 = v7;
  do
  {
    sub_29A3F9368(v11, v32);
    if (v33)
    {
      sub_29A3F93B0(v32, v10++);
    }

    else
    {
      v12 = *v6;
      sub_29A3F8D30(v11);
      if (v27 >= 0)
      {
        v13 = &v26;
      }

      else
      {
        v13 = v26;
      }

      sub_29A3F2414(a3, v24);
      v14 = v25;
      v15 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94D8] + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
      v18 = v24;
      if (v14 < 0)
      {
        v18 = v15;
      }

      v19 = __p;
      if (v23 < 0)
      {
        v19 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v16, v17, (v7 - v12) >> 4, v13, v18, v19);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v11 = (v11 + 16);
    v7 = (v7 + 16);
  }

  while (v11 != v8);
  v4 = v20;
  if (v9)
  {
LABEL_25:
    sub_29A19CF3C(v4, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v20, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<long long>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v4 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 1);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  v8 = v6[1];
  sub_29A20F8FC(v28, (v8 - *v6) >> 4);
  sub_29A21013C(v28);
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v20 = v4;
  v9 = 1;
  v10 = v29;
  v11 = v7;
  do
  {
    sub_29A3F9528(v11, v32);
    if (v33)
    {
      sub_29A3F9570(v32, v10++);
    }

    else
    {
      v12 = *v6;
      sub_29A3F8D30(v11);
      if (v27 >= 0)
      {
        v13 = &v26;
      }

      else
      {
        v13 = v26;
      }

      sub_29A3F2414(a3, v24);
      v14 = v25;
      v15 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC9508] + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
      v18 = v24;
      if (v14 < 0)
      {
        v18 = v15;
      }

      v19 = __p;
      if (v23 < 0)
      {
        v19 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v16, v17, (v7 - v12) >> 4, v13, v18, v19);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v11 = (v11 + 16);
    v7 = (v7 + 16);
  }

  while (v11 != v8);
  v4 = v20;
  if (v9)
  {
LABEL_25:
    sub_29A3F95E8(v4, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v20, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<unsigned long long>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v4 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 1);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  v8 = v6[1];
  sub_29A2109E8(v28, (v8 - *v6) >> 4);
  sub_29A2111A0(v28);
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v20 = v4;
  v9 = 1;
  v10 = v29;
  v11 = v7;
  do
  {
    sub_29A3F9764(v11, v32);
    if (v33)
    {
      sub_29A3F97AC(v32, v10++);
    }

    else
    {
      v12 = *v6;
      sub_29A3F8D30(v11);
      if (v27 >= 0)
      {
        v13 = &v26;
      }

      else
      {
        v13 = v26;
      }

      sub_29A3F2414(a3, v24);
      v14 = v25;
      v15 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC9510] + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
      v18 = v24;
      if (v14 < 0)
      {
        v18 = v15;
      }

      v19 = __p;
      if (v23 < 0)
      {
        v19 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v16, v17, (v7 - v12) >> 4, v13, v18, v19);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v11 = (v11 + 16);
    v7 = (v7 + 16);
  }

  while (v11 != v8);
  v4 = v20;
  if (v9)
  {
LABEL_25:
    sub_29A3F9824(v4, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v20, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A18EE04(v28, (v7 - *v5) >> 4);
  sub_29A18F540(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3F9AE4(v10, v32);
    if (v33)
    {
      sub_29A3F9B2C(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4858B0 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A18F584(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<float>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v4 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 1);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  v8 = v6[1];
  sub_29A18E048(v28, (v8 - *v6) >> 4);
  sub_29A18E624(v28);
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v20 = v4;
  v9 = 1;
  v10 = v29;
  v11 = v7;
  do
  {
    sub_29A3F9CA4(v11, v32);
    if (v33)
    {
      sub_29A3F9CEC(v32, v10++);
    }

    else
    {
      v12 = *v6;
      sub_29A3F8D30(v11);
      if (v27 >= 0)
      {
        v13 = &v26;
      }

      else
      {
        v13 = v26;
      }

      sub_29A3F2414(a3, v24);
      v14 = v25;
      v15 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94C0] + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
      v18 = v24;
      if (v14 < 0)
      {
        v18 = v15;
      }

      v19 = __p;
      if (v23 < 0)
      {
        v19 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v16, v17, (v7 - v12) >> 4, v13, v18, v19);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v11 = (v11 + 16);
    v7 = (v7 + 16);
  }

  while (v11 != v8);
  v4 = v20;
  if (v9)
  {
LABEL_25:
    sub_29A18E668(v4, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v20, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<double>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v4 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 1);
  if ((v5 & 4) != 0)
  {
    v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  v8 = v6[1];
  sub_29A18FC40(v28, (v8 - *v6) >> 4);
  sub_29A190088(v28);
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v20 = v4;
  v9 = 1;
  v10 = v29;
  v11 = v7;
  do
  {
    sub_29A3F9E64(v11, v32);
    if (v33)
    {
      sub_29A3F9EAC(v32, v10++);
    }

    else
    {
      v12 = *v6;
      sub_29A3F8D30(v11);
      if (v27 >= 0)
      {
        v13 = &v26;
      }

      else
      {
        v13 = v26;
      }

      sub_29A3F2414(a3, v24);
      v14 = v25;
      v15 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94B8] + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
      v18 = v24;
      if (v14 < 0)
      {
        v18 = v15;
      }

      v19 = __p;
      if (v23 < 0)
      {
        v19 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v16, v17, (v7 - v12) >> 4, v13, v18, v19);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v11 = (v11 + 16);
    v7 = (v7 + 16);
  }

  while (v11 != v8);
  v4 = v20;
  if (v9)
  {
LABEL_25:
    sub_29A1900CC(v4, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v20, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v36 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A212D6C(v30, (v7 - *v5) >> 4);
  sub_29A21358C(v30);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v21 = v3;
  v8 = v31;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3F9FE8(v10, v34);
    if (v35)
    {
      sub_29A3FA030(v34, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v29 >= 0)
      {
        v12 = &v28;
      }

      else
      {
        v12 = v28;
      }

      sub_29A3F2414(a3, v26);
      v13 = v27;
      v14 = v26[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B485816 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v26;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v25 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v32);
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }

      v9 = 0;
    }

    sub_29A186B14(v34);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v21;
  if (v9)
  {
LABEL_25:
    sub_29A3FA08C(v3, v30);
    v19 = 1;
  }

  else
  {
    *(&v32 + 1) = 0;
    sub_29A18606C(v21, &v32);
    sub_29A186B14(&v32);
    v19 = 0;
  }

  sub_29A213190(v30);
  return v19;
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<std::string>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A213A04(v28, (v7 - *v5) >> 4);
  sub_29A214388(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FA4C8(v10, v32);
    if (v33)
    {
      sub_29A230004(v32, v8);
      v8 = (v8 + 24);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4C54E8 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A3FA510(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v32[2] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A214860(v28, (v7 - *v5) >> 4);
  sub_29A215100(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FA654(v10, v32);
    if (v32[1])
    {
      sub_29A3FA69C(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B48B3C4 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A3FA72C(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v36 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A215A8C(v30, (v7 - *v5) >> 4);
  sub_29A216634(v30);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v21 = v3;
  v8 = v31;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FAA78(v10, v34);
    if (v35)
    {
      sub_29A3FAAC0(v34, v8);
      v8 += 48;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v29 >= 0)
      {
        v12 = &v28;
      }

      else
      {
        v12 = v28;
      }

      sub_29A3F2414(a3, v26);
      v13 = v27;
      v14 = v26[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B484676 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v26;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v25 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v32);
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }

      v9 = 0;
    }

    sub_29A186B14(v34);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v21;
  if (v9)
  {
LABEL_25:
    sub_29A3FAB84(v3, v30);
    v19 = 1;
  }

  else
  {
    *(&v32 + 1) = 0;
    sub_29A18606C(v21, &v32);
    sub_29A186B14(&v32);
    v19 = 0;
  }

  sub_29A216064(v30);
  return v19;
}

uint64_t pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v36 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A2169E0(v30, (v7 - *v5) >> 4);
  sub_29A216F40(v30);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v21 = v3;
  v8 = v31;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FAEE0(v10, v34);
    if (v35)
    {
      sub_29A3FAF28(v34);
      ++v8;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v29 >= 0)
      {
        v12 = &v28;
      }

      else
      {
        v12 = v28;
      }

      sub_29A3F2414(a3, v26);
      v13 = v27;
      v14 = v26[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B484605 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v26;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v25 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v32);
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }

      v9 = 0;
    }

    sub_29A186B14(v34);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v21;
  if (v9)
  {
LABEL_25:
    sub_29A3FAF98(v3, v30);
    v19 = 1;
  }

  else
  {
    *(&v32 + 1) = 0;
    sub_29A18606C(v21, &v32);
    sub_29A186B14(&v32);
    v19 = 0;
  }

  sub_29A213190(v30);
  return v19;
}

uint64_t pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v36 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A218DD8(v30, (v7 - *v5) >> 4);
  sub_29A219950(v30);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v21 = v3;
  v8 = v31;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FB2AC(v10, v34);
    if (v35)
    {
      sub_29A3FB2F4(v34, v8);
      v8 += 96;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v29 >= 0)
      {
        v12 = &v28;
      }

      else
      {
        v12 = v28;
      }

      sub_29A3F2414(a3, v26);
      v13 = v27;
      v14 = v26[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4846EALL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v26;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v25 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v32);
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }

      v9 = 0;
    }

    sub_29A186B14(v34);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v21;
  if (v9)
  {
LABEL_25:
    sub_29A3FB3B0(v3, v30);
    v19 = 1;
  }

  else
  {
    *(&v32 + 1) = 0;
    sub_29A18606C(v21, &v32);
    sub_29A186B14(&v32);
    v19 = 0;
  }

  sub_29A219394(v30);
  return v19;
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A220F88(v28, (v7 - *v5) >> 4);
  sub_29A2216E8(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FB7D0(v10, v32);
    if (v33)
    {
      sub_29A3FB818(v32, v8);
      v8 += 2;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B47CEE0 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A3FB8A4(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A221F2C(v28, (v7 - *v5) >> 4);
  sub_29A222868(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FBC8C(v10, v32);
    if (v33)
    {
      sub_29A3FBCD4(v32, v8);
      v8 += 72;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4E166ALL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A3FBDB8(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A197D6C(v28, (v7 - *v5) >> 4);
  sub_29A198240(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FC1B0(v10, v32);
    if (v33)
    {
      sub_29A3FC1F8(v32, v8);
      v8 += 8;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B7194FCLL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A198284(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfQuath>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A19A1A4(v28, (v7 - *v5) >> 4);
  sub_29A19A5A0(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FC504(v10, v32);
    if (v33)
    {
      sub_29A3FC54C(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B6EBD0ELL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A19A5E4(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v32[2] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A199640(v28, (v7 - *v5) >> 4);
  sub_29A199A70(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FC740(v10, v32);
    if (v32[1])
    {
      sub_29A3FC788(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B6EBD3ELL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A199AB4(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A19AD54(v28, (v7 - *v5) >> 4);
  sub_29A19B0C4(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FC9C8(v10, v32);
    if (v33)
    {
      sub_29A3FCA10(v32, v8);
      v8 += 2;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B6EBD6ELL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A19B108(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A219F48(v28, (v7 - *v5) >> 4);
  sub_29A21A6E8(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FCC50(v10, v32);
    if (v33)
    {
      sub_29A3FCC98(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B704E38 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A3FCD10(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A191640(v28, (v7 - *v5) >> 4);
  sub_29A191A40(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FD008(v10, v32);
    if (v33)
    {
      sub_29A3FD050(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B705508 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A191A84(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A190B18(v28, (v7 - *v5) >> 4);
  sub_29A190F50(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FD1C8(v10, v32);
    if (v33)
    {
      sub_29A3FD210(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4C5A90 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A190F94(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v32[2] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A1921FC(v28, (v7 - *v5) >> 4);
  sub_29A19255C(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FD384(v10, v32);
    if (v32[1])
    {
      sub_29A3FD3CC(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4C5C4ALL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A1925A0(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A21BE0C(v28, (v7 - *v5) >> 4);
  sub_29A21C6E0(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FD640(v10, v32);
    if (v33)
    {
      sub_29A3FD688(v32, v8);
      v8 += 12;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B704BE4 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A3FD724(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A193C60(v28, (v7 - *v5) >> 4);
  sub_29A1940CC(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FDB14(v10, v32);
    if (v33)
    {
      sub_29A3FDB5C(v32, v8);
      v8 += 6;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4C5FCCLL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A194110(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A193124(v28, (v7 - *v5) >> 4);
  sub_29A1935CC(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FDCF0(v10, v32);
    if (v33)
    {
      sub_29A3FDD38(v32, v8);
      v8 += 12;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4C5E78 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A193610(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A1948F8(v28, (v7 - *v5) >> 4);
  sub_29A194CC8(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FDFC8(v10, v32);
    if (v33)
    {
      sub_29A3FE010(v32, v8);
      v8 = (v8 + 24);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4C5C7ALL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A194D0C(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v32[2] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A21DF14(v28, (v7 - *v5) >> 4);
  sub_29A21E784(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FE2A0(v10, v32);
    if (v32[1])
    {
      sub_29A3FE2E8(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B704990 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A3FE370(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A1962EC(v28, (v7 - *v5) >> 4);
  sub_29A1966EC(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FE758(v10, v32);
    if (v33)
    {
      sub_29A3FE7A0(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B70508CLL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A196730(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v32[2] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A195790(v28, (v7 - *v5) >> 4);
  sub_29A195BC4(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FE914(v10, v32);
    if (v32[1])
    {
      sub_29A3FE95C(v32, v8++);
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B4DAD90 & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A195C08(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void pxrInternal__aapl__pxrReserved__::_ValueVectorToVtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>(pxrInternal__aapl__pxrReserved__::VtValue *a1, const void **a2, uint64_t a3)
{
  v3 = a1;
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  if ((v4 & 4) != 0)
  {
    v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  else
  {
    v5 = *a1;
  }

  v6 = *v5;
  v7 = v5[1];
  sub_29A196EB8(v28, (v7 - *v5) >> 4);
  sub_29A19722C(v28);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  v19 = v3;
  v8 = v29;
  v9 = 1;
  v10 = v6;
  do
  {
    sub_29A3FEBD0(v10, v32);
    if (v33)
    {
      sub_29A3FEC18(v32, v8);
      v8 += 2;
    }

    else
    {
      v11 = *v5;
      sub_29A3F8D30(v10);
      if (v27 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }

      sub_29A3F2414(a3, v24);
      v13 = v25;
      v14 = v24[0];
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B6EBCDELL & 0x7FFFFFFFFFFFFFFFLL), __p);
      v17 = v24;
      if (v13 < 0)
      {
        v17 = v14;
      }

      v18 = __p;
      if (v23 < 0)
      {
        v18 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("failed to cast array element %zu: %s%s to <%s>", v15, v16, (v6 - v11) >> 4, v12, v17, v18);
      sub_29A091654(a2, &v30);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v9 = 0;
    }

    sub_29A186B14(v32);
    v10 = (v10 + 16);
    v6 = (v6 + 16);
  }

  while (v10 != v7);
  v3 = v19;
  if (v9)
  {
LABEL_25:
    sub_29A197270(v3, v28);
  }

  else
  {
    *(&v30 + 1) = 0;
    sub_29A18606C(v19, &v30);
    sub_29A186B14(&v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void *sub_29A3F8AA8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v8;
  i[2] = *a3;
  i[3] = a4;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    *i = *v21;
LABEL_38:
    *v21 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v20 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v22 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v22 >= v9)
      {
        v22 %= v9;
      }
    }

    else
    {
      v22 &= v9 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29A3F8D30(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  sub_29A1F87E8(a1);
  size = SHIBYTE(v9.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v9.__r_.__value_.__l.__size_;
    if (v9.__r_.__value_.__l.__size_ <= 0x20)
    {
      goto LABEL_6;
    }
  }

  else if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0x21)
  {
    goto LABEL_6;
  }

  std::string::erase(&v9, 0x20uLL, size - 32);
  std::string::append(&v9, "...");
LABEL_6:
  pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(a1, &__p);
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__vftable;
  }

  v6 = &v9;
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v9.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("<%s> '%s'", v3, v4, p_p, v6);
  if (v8 < 0)
  {
    operator delete(__p.__vftable);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_29A3F8E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A3F8E60(pxrInternal__aapl__pxrReserved__::VtValue *a1, char *a2)
{
  if ((sub_29A1EFCDC(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &unk_2A20443C3;
    *a1 = 0;
  }

  result = sub_29A3F9020(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

__n128 sub_29A3F8EDC(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A2CB120(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A2CB054(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  v4 = sub_29A2CB204(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3F8F94(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A1EFCDC(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(MEMORY[0x29EDC94A8], v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3F9020(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29EC40();
  }

  return a1;
}

char *sub_29A3F90A0(pxrInternal__aapl__pxrReserved__::VtValue *a1, char *a2)
{
  if ((sub_29A1F9040(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &unk_2A2044533;
    *a1 = 0;
  }

  result = sub_29A3F91A8(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

std::type_info *sub_29A3F911C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A1F9040(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(MEMORY[0x29EDC94C8], v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3F91A8(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29ECAC();
  }

  return a1;
}

int *sub_29A3F9228(pxrInternal__aapl__pxrReserved__::VtValue *a1, int *a2)
{
  if ((sub_29A293A9C(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &unk_2A204475B;
    *a1 = 0;
  }

  result = sub_29A3F9330(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

std::type_info *sub_29A3F92A4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A293A9C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(MEMORY[0x29EDC94D0], v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3F9330(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29ED18();
  }

  return a1;
}

int *sub_29A3F93B0(pxrInternal__aapl__pxrReserved__::VtValue *a1, int *a2)
{
  if ((sub_29A3F94B8(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &unk_2A2044813;
    *a1 = 0;
  }

  result = sub_29A3F94F0(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

std::type_info *sub_29A3F942C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3F94B8(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(MEMORY[0x29EDC94D8], v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3F94B8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 6)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x29EDC94D8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3F94F0(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29ED84();
  }

  return a1;
}

uint64_t *sub_29A3F9570(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A298D2C(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *a1 = 0;
    *(a1 + 1) = &unk_2A2044A3B;
  }

  result = sub_29A3F972C(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

__n128 sub_29A3F95E8(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A27DEAC(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A2CB3FC(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }

  v4 = sub_29A2CB574(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3F96A0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A298D2C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(MEMORY[0x29EDC9508], v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3F972C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29EDF0();
  }

  return a1;
}

uint64_t *sub_29A3F97AC(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A3F9968(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *a1 = 0;
    *(a1 + 1) = &unk_2A2044AF3;
  }

  result = sub_29A3F99A0(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

__n128 sub_29A3F9824(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A27F920(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3F99D8(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
  }

  v4 = sub_29A3F9AA8(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3F98DC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3F9968(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(MEMORY[0x29EDC9510], v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3F9968(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 8)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x29EDC9510]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3F99A0(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29EE5C();
  }

  return a1;
}

void *sub_29A3F99D8(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2047718;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3F9A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3F9AA8(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B29EEC8();
  }

  return sub_29A210D90(a1);
}

__int16 *sub_29A3F9B2C(pxrInternal__aapl__pxrReserved__::VtValue *a1, __int16 *a2)
{
  if ((sub_29A3F9C34(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &off_2A2044BA8 + 3;
    *a1 = 0;
  }

  result = sub_29A3F9C6C(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

std::type_info *sub_29A3F9BA8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3F9C34(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040768, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3F9C34(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 11)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040768);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3F9C6C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29EF34();
  }

  return a1;
}

float sub_29A3F9CEC(pxrInternal__aapl__pxrReserved__::VtValue *a1, float *a2)
{
  if ((sub_29A3F9DF4(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &unk_2A2044C63;
    *a1 = 0;
  }

  v6 = sub_29A3F9E2C(a1);
  result = *v6;
  *v6 = *a2;
  *a2 = result;
  return result;
}

std::type_info *sub_29A3F9D68(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3F9DF4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(MEMORY[0x29EDC94C0], v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3F9DF4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 10)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x29EDC94C0]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3F9E2C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29EFA0();
  }

  return a1;
}

double sub_29A3F9EAC(pxrInternal__aapl__pxrReserved__::VtValue *a1, double *a2)
{
  if ((sub_29A346994(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *a1 = 0;
    *(a1 + 1) = &unk_2A2044D1B;
  }

  v6 = sub_29A3F9FB0(a1);
  result = *v6;
  *v6 = *a2;
  *a2 = result;
  return result;
}

std::type_info *sub_29A3F9F24(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A346994(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(MEMORY[0x29EDC94B8], v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3F9FB0(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F00C();
  }

  return a1;
}

double sub_29A3FA030(pxrInternal__aapl__pxrReserved__::VtValue *a1, double *a2)
{
  if ((sub_29A3FA1D0(a1) & 1) == 0)
  {
    v6 = 0;
    sub_29A3FA25C(a1, &v6);
  }

  v4 = sub_29A3FA2F8(a1);
  result = *v4;
  *v4 = *a2;
  *a2 = result;
  return result;
}

__n128 sub_29A3FA08C(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A3FA330(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3FA3BC(a1, v10);
    sub_29A213190(v10);
  }

  v4 = sub_29A3FA48C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FA144(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FA1D0(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20478E8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FA1D0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B485816 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20478E8);
}

void *sub_29A3FA25C(void *a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *a1 = *a2;
  a1[1] = &off_2A2047830 + 1;
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FA2EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A3FA2F8(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F078();
  }

  return a1;
}

uint64_t sub_29A3FA330(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B484A91 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20479B0);
}

void *sub_29A3FA3BC(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A20478F8;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FA450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3FA48C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B29F0E4();
  }

  return sub_29A213110(a1);
}

__n128 sub_29A3FA510(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1FA6D8(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A2CB768(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  v4 = sub_29A2CB8E0(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FA5C8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A1EFC10(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A203B0F8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t *sub_29A3FA69C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_29A1FA710(a1) & 1) == 0)
  {
    v6 = 0;
    sub_29A3FA870(a1, &v6);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  result = sub_29A3FA934(a1);
  v5 = *result;
  *result = *a2;
  *a2 = v5;
  return result;
}

__n128 sub_29A3FA72C(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1FA748(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3FA96C(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  v4 = sub_29A3FAA3C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FA7E4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A1FA710(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040480, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t *sub_29A3FA870(uint64_t *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A186978(v6, a1);
  a1[1] = &off_2A2044E88 + 1;
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v7)
  {
    (*(v7 + 32))(v6);
  }

  return a1;
}

void sub_29A3FA928(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A3FA934(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F150();
  }

  return a1;
}

void *sub_29A3FA96C(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = off_2A2047A80;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FAA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3FAA3C(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B29F1BC();
  }

  return sub_29A214CD0(a1);
}

__n128 sub_29A3FAAC0(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  if ((sub_29A1FA780(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v11);
    sub_29A3FACC8(a1, v11);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  v4 = sub_29A3FAD98(a1);
  v5 = *(v4 + 2);
  v6 = *v4;
  v7 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 2) = v7;
  *a2 = v6;
  *(a2 + 16) = v5;
  v8 = *(v4 + 5);
  result = *(v4 + 24);
  v10 = *(a2 + 40);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 5) = v10;
  *(a2 + 24) = result;
  *(a2 + 40) = v8;
  return result;
}

__n128 sub_29A3FAB84(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1FA80C(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3FADD4(a1, v10);
    sub_29A216064(v10);
  }

  v4 = sub_29A3FAEA4(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FAC3C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A1FA780(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2047388, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

void *sub_29A3FACC8(void *a1, __int128 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2047B38;
  sub_29A215A28(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FAD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29A3FAD98(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F228();
  }

  return sub_29A215924(a1);
}

void *sub_29A3FADD4(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = off_2A2047BF0;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FAE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3FAEA4(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B29F294();
  }

  return sub_29A215FE4(a1);
}

uint64_t sub_29A3FAF28(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if ((sub_29A1F5AC8(a1) & 1) == 0)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      v3 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &off_2A204D438 + 3;
  }

  return sub_29A3FB0DC(a1);
}

__n128 sub_29A3FAF98(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A3FB114(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3FB1A0(a1, v10);
    sub_29A213190(v10);
  }

  v4 = sub_29A3FB270(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FB050(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A1F5AC8(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2047358, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FB0DC(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F300();
  }

  return a1;
}

uint64_t sub_29A3FB114(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B484AD1 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2047D60);
}

void *sub_29A3FB1A0(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2047CA8;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FB234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3FB270(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B29F36C();
  }

  return sub_29A216D6C(a1);
}

double sub_29A3FB2F4(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  if ((sub_29A1FD484(a1) & 1) == 0)
  {
    sub_29A3FB4F4(a1);
  }

  return sub_29A3FB5C4(a1, a2);
}

__n128 sub_29A3FB3B0(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A1FD578(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3FB700(a1, v10);
    sub_29A219394(v10);
  }

  v4 = sub_29A27C928(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FB468(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A1FD484(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20473B0, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

void sub_29A3FB4F4(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  sub_29A186978(v2, a1);
  *(a1 + 8) = &off_2A2047D78;
  sub_29A218D70();
}

void sub_29A3FB588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A3FB5C4(uint64_t a1, uint64_t a2)
{
  v5[0] = sub_29A27C84C(a1);
  v5[1] = v5[0] + 3;
  v5[2] = v5[0] + 6;
  v5[3] = v5[0] + 9;
  v4[0] = a2;
  v4[1] = a2 + 24;
  v4[2] = a2 + 48;
  v4[3] = a2 + 72;
  *&result = sub_29A3FB624(v5, v4).n128_u64[0];
  return result;
}

__n128 sub_29A3FB624(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v2 = **a2;
  *v3 = v4;
  v5 = v2[1];
  v2[1] = v3[1];
  v3[1] = v5;
  v6 = v2[2];
  v2[2] = v3[2];
  v3[2] = v6;
  v7 = a1[1];
  v8 = *(a2 + 8);
  v9 = *v7;
  *v7 = *v8;
  *v8 = v9;
  v10 = v7[1];
  v7[1] = v8[1];
  v8[1] = v10;
  v11 = v7[2];
  v7[2] = v8[2];
  v8[2] = v11;
  v12 = a1[2];
  v13 = *(a2 + 16);
  v14 = *v12;
  *v12 = *v13;
  *v13 = v14;
  v15 = v12[1];
  v12[1] = v13[1];
  v13[1] = v15;
  v16 = v12[2];
  v12[2] = v13[2];
  v13[2] = v16;
  v17 = a1[3];
  v18 = *(a2 + 24);
  v19 = v17[1].n128_u64[0];
  result = *v17;
  v21 = v18[1].n128_u64[0];
  *v17 = *v18;
  v17[1].n128_u64[0] = v21;
  *v18 = result;
  v18[1].n128_u64[0] = v19;
  return result;
}

void *sub_29A3FB700(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = off_2A2047E30;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FB794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A3FB818(pxrInternal__aapl__pxrReserved__::VtValue *a1, _OWORD *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if ((sub_29A3FB9E8(a1) & 1) == 0)
  {
    memset(v8, 0, 32);
    sub_29A3FBA20(a1, v8);
  }

  v4 = sub_29A3FBB0C(a1);
  v6 = *v4;
  result = *(v4 + 1);
  v7 = a2[1];
  *v4 = *a2;
  *(v4 + 1) = v7;
  *a2 = v6;
  a2[1] = result;
  return result;
}

__n128 sub_29A3FB8A4(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A3FBB48(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3FBB80(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
  }

  v4 = sub_29A3FBC50(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FB95C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FB9E8(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20407C8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FB9E8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 78)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20407C8);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FBA20(void *a1, _OWORD *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29A186978(v7, a1);
  a1[1] = &off_2A2048338 + 2;
  v4 = operator new(0x28uLL);
  v5 = a2[1];
  *v4 = *a2;
  *(v4 + 1) = v5;
  atomic_store(0, v4 + 8);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 8, 1u, memory_order_relaxed);
  if (v8)
  {
    (*(v8 + 32))(v7);
  }

  return a1;
}

void sub_29A3FBAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_29A3FBB0C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F3D8();
  }

  return sub_29A18BAF8(a1);
}

uint64_t sub_29A3FBB48(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 31)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042290);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FBB80(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A20483F0;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FBC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3FBC50(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B29F444();
  }

  return sub_29A2213AC(a1);
}

double sub_29A3FBCD4(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((sub_29A3FBEFC(a1) & 1) == 0)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    sub_29A3FBF34(a1, &v11);
  }

  v4 = sub_29A3FC030(a1);
  v12 = *(v4 + 1);
  v13 = *(v4 + 2);
  v14 = *(v4 + 3);
  v15 = *(v4 + 8);
  v11 = *v4;
  *v4 = *a2;
  v6 = *(a2 + 32);
  v5 = *(a2 + 48);
  v7 = *(a2 + 16);
  *(v4 + 8) = *(a2 + 64);
  *(v4 + 2) = v6;
  *(v4 + 3) = v5;
  *(v4 + 1) = v7;
  *(a2 + 64) = v15;
  v8 = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = v8;
  result = *&v11;
  v10 = v12;
  *a2 = v11;
  *(a2 + 16) = v10;
  return result;
}

__n128 sub_29A3FBDB8(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A3FC06C(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3FC0A4(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
  }

  v4 = sub_29A3FC174(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FBE70(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FBEFC(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20407F8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FBEFC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 77)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20407F8);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FBF34(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  sub_29A186978(v8, a1);
  a1[1] = &off_2A20484A8 + 2;
  v4 = operator new(0x50uLL);
  v5 = *(a2 + 48);
  *(v4 + 2) = *(a2 + 32);
  *(v4 + 3) = v5;
  *(v4 + 8) = *(a2 + 64);
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v6;
  atomic_store(0, v4 + 18);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 18, 1u, memory_order_relaxed);
  if (v9)
  {
    (*(v9 + 32))(v8);
  }

  return a1;
}

void sub_29A3FBFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_29A3FC030(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F4B0();
  }

  return sub_29A221E80(a1);
}

uint64_t sub_29A3FC06C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 30)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042278);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FC0A4(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2048560;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FC138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3FC174(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B29F51C();
  }

  return sub_29A222474(a1);
}

__n128 sub_29A3FC1F8(pxrInternal__aapl__pxrReserved__::VtValue *a1, __int128 *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if ((sub_29A3FC38C(a1) & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    sub_29A3FC3C4(a1, &v15);
  }

  v4 = sub_29A3FC4C8(a1);
  v19 = *(v4 + 4);
  v20 = *(v4 + 5);
  v21 = *(v4 + 6);
  v22 = *(v4 + 7);
  v15 = *v4;
  v16 = *(v4 + 1);
  v17 = *(v4 + 2);
  v18 = *(v4 + 3);
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(v4 + 6) = a2[6];
  *(v4 + 7) = v7;
  *(v4 + 4) = v5;
  *(v4 + 5) = v6;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[3];
  *(v4 + 2) = a2[2];
  *(v4 + 3) = v10;
  *v4 = v8;
  *(v4 + 1) = v9;
  v11 = v18;
  a2[2] = v17;
  a2[3] = v11;
  v12 = v16;
  *a2 = v15;
  a2[1] = v12;
  v13 = v22;
  a2[6] = v21;
  a2[7] = v13;
  result = v20;
  a2[4] = v19;
  a2[5] = result;
  return result;
}

std::type_info *sub_29A3FC300(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FC38C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040818, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FC38C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 76)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040818);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FC3C4(void *a1, _OWORD *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  sub_29A186978(v10, a1);
  a1[1] = &off_2A2042BD8 + 2;
  v4 = operator new(0x88uLL);
  v5 = a2[5];
  *(v4 + 4) = a2[4];
  *(v4 + 5) = v5;
  v6 = a2[7];
  *(v4 + 6) = a2[6];
  *(v4 + 7) = v6;
  v7 = a2[1];
  *v4 = *a2;
  *(v4 + 1) = v7;
  v8 = a2[3];
  *(v4 + 2) = a2[2];
  *(v4 + 3) = v8;
  atomic_store(0, v4 + 32);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 32, 1u, memory_order_relaxed);
  if (v11)
  {
    (*(v11 + 32))(v10);
  }

  return a1;
}

void sub_29A3FC48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_29A3FC4C8(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F588();
  }

  return sub_29A18C958(a1);
}

uint64_t *sub_29A3FC54C(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A3FC630(a1) & 1) == 0)
  {
    sub_29A3FC668(a1, &v6);
  }

  result = sub_29A3FC708(a1);
  v5 = *result;
  *result = *a2;
  *a2 = v5;
  return result;
}

std::type_info *sub_29A3FC5A4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FC630(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040868, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FC630(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 87)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040868);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FC668(void *a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2042E00 + 1;
  *a1 = *a2;
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FC6FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A3FC708(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F5F4();
  }

  return a1;
}

__n128 sub_29A3FC788(unsigned int **a1, __n128 *a2)
{
  if ((sub_29A3FC86C(a1) & 1) == 0)
  {
    sub_29A3FC8A4(a1, &v6);
  }

  v4 = sub_29A3FC98C(a1);
  result = *v4;
  *v4 = *a2;
  *a2 = result;
  return result;
}

std::type_info *sub_29A3FC7E0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FC86C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040858, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FC86C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 88)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040858);
  }

  else
  {
    return 0;
  }
}

unsigned int **sub_29A3FC8A4(unsigned int **a1, _OWORD *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A186978(v6, a1);
  a1[1] = &off_2A2042D48;
  v4 = operator new(0x14uLL);
  *v4 = *a2;
  atomic_store(0, v4 + 4);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
  if (v7)
  {
    (*(v7 + 32))(v6);
  }

  return a1;
}

void sub_29A3FC950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_29A3FC98C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F660();
  }

  return sub_29A18B70C(a1);
}

__n128 sub_29A3FCA10(pxrInternal__aapl__pxrReserved__::VtValue *a1, _OWORD *a2)
{
  if ((sub_29A3FCAF4(a1) & 1) == 0)
  {
    sub_29A3FCB2C(a1, v8);
  }

  v4 = sub_29A3FCC14(a1);
  v6 = *v4;
  result = *(v4 + 1);
  v7 = a2[1];
  *v4 = *a2;
  *(v4 + 1) = v7;
  *a2 = v6;
  a2[1] = result;
  return result;
}

std::type_info *sub_29A3FCA68(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FCAF4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040848, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FCAF4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 89)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040848);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FCB2C(void *a1, _OWORD *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29A186978(v7, a1);
  a1[1] = &off_2A2042EB8;
  v4 = operator new(0x28uLL);
  v5 = a2[1];
  *v4 = *a2;
  *(v4 + 1) = v5;
  atomic_store(0, v4 + 8);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 8, 1u, memory_order_relaxed);
  if (v8)
  {
    (*(v8 + 32))(v7);
  }

  return a1;
}

void sub_29A3FCBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_29A3FCC14(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F6CC();
  }

  return sub_29A18BAF8(a1);
}

uint64_t *sub_29A3FCC98(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A3FCE54(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *a1 = 0;
    *(a1 + 1) = &off_2A2047EE8 + 3;
  }

  result = sub_29A3FCE8C(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

__n128 sub_29A3FCD10(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A3FCEC4(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3FCEFC(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  v4 = sub_29A3FCFCC(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FCDC8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FCE54(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040978, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FCE54(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 63)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040978);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3FCE8C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F738();
  }

  return a1;
}

uint64_t sub_29A3FCEC4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 16)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042128);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FCEFC(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2047FA0;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FCF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3FCFCC(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B29F7A4();
  }

  return sub_29A21A3BC(a1);
}

int *sub_29A3FD050(pxrInternal__aapl__pxrReserved__::VtValue *a1, int *a2)
{
  if ((sub_29A3FD158(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 1) = &off_2A2042560 + 3;
    *a1 = 0;
  }

  result = sub_29A3FD190(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

std::type_info *sub_29A3FD0CC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FD158(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040968, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FD158(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 66)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040968);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3FD190(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F810();
  }

  return a1;
}

uint64_t *sub_29A3FD210(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A3FD314(a1) & 1) == 0)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = (*(a1 + 1) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *a1 = 0;
    *(a1 + 1) = &off_2A2042618 + 3;
  }

  result = sub_29A3FD34C(a1);
  v7 = *result;
  *result = *a2;
  *a2 = v7;
  return result;
}

std::type_info *sub_29A3FD288(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FD314(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040958, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FD314(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 69)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040958);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3FD34C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F87C();
  }

  return a1;
}

__n128 sub_29A3FD3CC(unsigned int **a1, __n128 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((sub_29A3FD4E0(a1) & 1) == 0)
  {
    v6 = 0uLL;
    sub_29A3FD518(a1, &v6);
  }

  v4 = sub_29A3FD604(a1);
  result = *v4;
  *v4 = *a2;
  *a2 = result;
  return result;
}

std::type_info *sub_29A3FD454(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FD4E0(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040948, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FD4E0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 72)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040948);
  }

  else
  {
    return 0;
  }
}

unsigned int **sub_29A3FD518(unsigned int **a1, _OWORD *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A186978(v6, a1);
  a1[1] = (&off_2A20426D0 + 2);
  v4 = operator new(0x18uLL);
  *v4 = *a2;
  atomic_store(0, v4 + 4);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
  if (v7)
  {
    (*(v7 + 32))(v6);
  }

  return a1;
}

void sub_29A3FD5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_29A3FD604(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F8E8();
  }

  return sub_29A189C98(a1);
}

atomic_uint *sub_29A3FD688(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((sub_29A3FD868(a1) & 1) == 0)
  {
    v9 = 0;
    v8 = 0;
    sub_29A3FD8A0(a1, &v8);
  }

  result = sub_29A3FD994(a1);
  v5 = result[2];
  v6 = *result;
  v7 = *(a2 + 8);
  *result = *a2;
  result[2] = v7;
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

__n128 sub_29A3FD724(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A3FD9D0(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3FDA08(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }

  v4 = sub_29A3FDAD8(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FD7DC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FD868(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20409B8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FD868(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 62)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20409B8);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FD8A0(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A186978(v6, a1);
  a1[1] = &off_2A2048058 + 2;
  v4 = operator new(0x10uLL);
  *v4 = *a2;
  v4[2] = *(a2 + 8);
  atomic_store(0, v4 + 3);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 3, 1u, memory_order_relaxed);
  if (v7)
  {
    (*(v7 + 32))(v6);
  }

  return a1;
}

void sub_29A3FD958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_29A3FD994(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29F954();
  }

  return sub_29A18A710(a1);
}

uint64_t sub_29A3FD9D0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 15)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042110);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FDA08(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2048110;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A3FDA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3FDAD8(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B29F9C0();
  }

  return sub_29A21C348(a1);
}

uint64_t sub_29A3FDB5C(uint64_t a1, uint64_t a2)
{
  if ((sub_29A3FDC80(a1) & 1) == 0)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = (*(a1 + 8) & 3) == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
    }

    *(a1 + 8) = &off_2A2042788 + 3;
    *(a1 + 4) = 0;
    *a1 = 0;
  }

  result = sub_29A3FDCB8(a1);
  v7 = *(result + 4);
  v8 = *result;
  v9 = *(a2 + 4);
  *result = *a2;
  *(result + 4) = v9;
  *a2 = v8;
  *(a2 + 4) = v7;
  return result;
}

std::type_info *sub_29A3FDBF4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FDC80(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20409A8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FDC80(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 65)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20409A8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3FDCB8(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29FA2C();
  }

  return a1;
}

atomic_uint *sub_29A3FDD38(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((sub_29A3FDE60(a1) & 1) == 0)
  {
    v9 = 0;
    v8 = 0;
    sub_29A3FDE98(a1, &v8);
  }

  result = sub_29A3FDF8C(a1);
  v5 = result[2];
  v6 = *result;
  v7 = *(a2 + 8);
  *result = *a2;
  result[2] = v7;
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

std::type_info *sub_29A3FDDD4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FDE60(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040998, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FDE60(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 68)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040998);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FDE98(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A186978(v6, a1);
  a1[1] = &off_2A2042840 + 2;
  v4 = operator new(0x10uLL);
  *v4 = *a2;
  v4[2] = *(a2 + 8);
  atomic_store(0, v4 + 3);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 3, 1u, memory_order_relaxed);
  if (v7)
  {
    (*(v7 + 32))(v6);
  }

  return a1;
}

void sub_29A3FDF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_29A3FDF8C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29FA98();
  }

  return sub_29A18A710(a1);
}

__n128 sub_29A3FE010(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FE138(a1) & 1) == 0)
  {
    memset(v8, 0, 24);
    sub_29A3FE170(a1, v8);
  }

  v4 = sub_29A3FE264(a1);
  v5 = v4[1].n128_u64[0];
  result = *v4;
  v7 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v7;
  *a2 = result;
  a2[1].n128_u64[0] = v5;
  return result;
}

std::type_info *sub_29A3FE0AC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FE138(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A2040988, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FE138(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 71)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040988);
  }

  else
  {
    return 0;
  }
}

void *sub_29A3FE170(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A186978(v6, a1);
  a1[1] = &off_2A20428F8 + 2;
  v4 = operator new(0x20uLL);
  *v4 = *a2;
  *(v4 + 2) = *(a2 + 16);
  atomic_store(0, v4 + 6);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  if (v7)
  {
    (*(v7 + 32))(v6);
  }

  return a1;
}

void sub_29A3FE228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_29A3FE264(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B29FB04();
  }

  return sub_29A18AAE8(a1);
}

__n128 sub_29A3FE2E8(unsigned int **a1, __n128 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((sub_29A3FE4B4(a1) & 1) == 0)
  {
    v6 = 0uLL;
    sub_29A3FE4EC(a1, &v6);
  }

  v4 = sub_29A3FE5D8(a1);
  result = *v4;
  *v4 = *a2;
  *a2 = result;
  return result;
}

__n128 sub_29A3FE370(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_29A3FE614(a1) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_29A3FE64C(a1, v10);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  v4 = sub_29A3FE71C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

std::type_info *sub_29A3FE428(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v3[2] = *MEMORY[0x29EDCA608];
  if ((sub_29A3FE4B4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&stru_2A20409F8, v1, v3);
    v1 = sub_29A18606C(v1, v3);
    sub_29A186B14(v3);
  }

  return v1;
}

uint64_t sub_29A3FE4B4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 61)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20409F8);
  }

  else
  {
    return 0;
  }
}

unsigned int **sub_29A3FE4EC(unsigned int **a1, _OWORD *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A186978(v6, a1);
  a1[1] = (&off_2A20481C8 + 2);
  v4 = operator new(0x14uLL);
  *v4 = *a2;
  atomic_store(0, v4 + 4);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
  if (v7)
  {
    (*(v7 + 32))(v6);
  }

  return a1;
}