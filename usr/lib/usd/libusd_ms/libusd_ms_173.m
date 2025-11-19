void pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens_StaticTokenType::~HdxColorCorrectionTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  sub_29A124AB0(&v4);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens_StaticTokenType::HdxColorCorrectionTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "disabled", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "sRGB", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "openColorIO", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AF0DF08(_Unwind_Exception *a1)
{
  v3 = 16;
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
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens_StaticTokenType::~HdxColorChannelTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens_StaticTokenType::HdxColorChannelTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdxColorChannelTokens_StaticTokenType *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "color", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "red", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "green", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "blue", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "alpha", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "luminance", 0);
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

void sub_29AF0E244(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HdxAovTokens_StaticTokenType::~HdxAovTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdxAovTokens_StaticTokenType *this)
{
  v3 = (this + 16);
  sub_29A124AB0(&v3);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdxAovTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdxAovTokens_StaticTokenType::HdxAovTokens_StaticTokenType(atomic_uint **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "colorIntermediate", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "depthIntermediate", 0);
  v3 = this + 2;
  v4 = *this;
  v11 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v5;
    }
  }

  v6 = this[1];
  v12 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  sub_29A12EF7C(v3, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v9 = *(&v11 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AF0E494(_Unwind_Exception *a1)
{
  v3 = 8;
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
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens_StaticTokenType::~HdxSimpleLightTaskTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens_StaticTokenType *this)
{
  v28 = (this + 216);
  sub_29A124AB0(&v28);
  v2 = *(this + 26);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 25);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 23);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 22);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 21);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 20);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 19);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 18);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 17);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 16);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 15);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 14);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 13);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 12);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 11);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 10);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 9);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 8);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 7);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 6);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 5);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 4);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 3);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 2);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 1);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens_StaticTokenType::HdxSimpleLightTaskTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens_StaticTokenType *this)
{
  v61 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "lighting", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "lightingContext", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "useLighting", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "useColorMaterialDiffuse", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "lightSource", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "position", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "ambient", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "diffuse", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "specular", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "spotDirection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "spotCutoff", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "spotFalloff", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "attenuation", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "worldToLightTransform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "shadowIndexStart", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "shadowIndexEnd", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "hasShadow", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "isIndirectLight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "shadow", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 152, "worldToShadowMatrix", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 160, "shadowToWorldMatrix", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 168, "blur", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 176, "bias", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 184, "material", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 192, "emission", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 200, "sceneColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 208, "shininess", 0);
  v3 = (this + 216);
  v4 = *this;
  v34 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v35 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v36 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v37 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v38 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v39 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v40 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v41 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v42 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v43 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v44 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v45 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v46 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v47 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v48 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v49 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v50 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v51 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v52 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 19);
  v53 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 20);
  v54 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 21);
  v55 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 22);
  v56 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 23);
  v57 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 24);
  v58 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 25);
  v59 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 26);
  v60 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  sub_29A12EF7C(v3, &v34, &v61, 0x1BuLL);
  for (i = 208; i != -8; i -= 8)
  {
    v32 = *(&v34 + i);
    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AF0EF24(_Unwind_Exception *a1)
{
  v3 = 208;
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
      v5 = v1[26];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[25];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[24];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[23];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[22];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[21];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[20];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[19];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[18];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[17];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[16];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[15];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[14];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[13];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[12];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[11];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[10];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[9];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[8];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[7];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[6];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[5];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[4];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[3];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[2];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[1];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==(uint64_t a1, uint64_t *a2, char *a3)
{
  result = pxrInternal__aapl__pxrReserved__::operator==(a1, a2, a3);
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::operator==((a1 + 8), a2 + 1, v6);
    if (result)
    {
      result = pxrInternal__aapl__pxrReserved__::operator==((a1 + 16), a2 + 2, v7);
      if (result)
      {
        v9 = *(a1 + 24);
        v8 = *(a1 + 32);
        v10 = a2[3];
        if (v8 - v9 == a2[4] - v10)
        {
          if (v9 == v8)
          {
            return 1;
          }

          else
          {
            v11 = v9 + 8;
            do
            {
              v12 = *v10++;
              v13 = v12 ^ *(v11 - 8);
              result = v13 < 8;
              v14 = v13 > 7 || v11 == v8;
              v11 += 8;
            }

            while (!v14);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTaskParams::HdxVisualizeAovTaskParams(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

double pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::HdxVisualizeAovTask(pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v3 = &unk_2A209D858;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  *(v3 + 3) = 0;
  *(v3 + 12) = 0;
  *(v3 + 52) = xmmword_29B6C6450;
  *(v3 + 76) = 0;
  *(v3 + 68) = 0;
  *(v3 + 21) = 15;
  *(v3 + 88) = 0;
  result = 0.0;
  *(v3 + 92) = 0u;
  *(v3 + 108) = 0u;
  *(v3 + 124) = 0;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 62) = 4;
  return result;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v3 = &unk_2A209D858;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  *(v3 + 3) = 0;
  *(v3 + 12) = 0;
  *(v3 + 52) = xmmword_29B6C6450;
  *(v3 + 76) = 0;
  *(v3 + 68) = 0;
  *(v3 + 21) = 15;
  *(v3 + 88) = 0;
  result = 0.0;
  *(v3 + 92) = 0u;
  *(v3 + 108) = 0u;
  *(v3 + 124) = 0;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 62) = 4;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::~HdxVisualizeAovTask(pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask *this)
{
  *this = &unk_2A209D858;
  v2 = this + 200;
  if (*(this + 25))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*Hgi + 104))(Hgi, v2);
  }

  if (*(this + 23))
  {
    v4 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v4 + 104))(v4, this + 184);
  }

  if (*(this + 27))
  {
    v5 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v5 + 88))(v5, this + 216);
  }

  if (*(this + 3))
  {
    v6 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v6 + 56))(v6, this + 24);
  }

  if (*(this + 17))
  {
    pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_DestroyShaderProgram(this);
  }

  if (*(this + 19))
  {
    v7 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v7 + 152))(v7, this + 152);
  }

  if (*(this + 21))
  {
    v8 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*v8 + 168))(v8, this + 168);
  }

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::~HdxVisualizeAovTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_DestroyShaderProgram(pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask *this)
{
  v3 = this + 136;
  result = *(this + 17);
  if (result)
  {
    v4 = (*(*result + 32))(result);
    v5 = *v4;
    v6 = v4[1];
    while (v5 != v6)
    {
      v7 = *v5++;
      v10 = v7;
      Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
      (*(*Hgi + 120))(Hgi, &v10);
    }

    v9 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    return (*(*v9 + 136))(v9, v3);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_UpdateVizKernel(pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v4)
  {
    v4 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  if ((*v4 ^ *a2) >= 8)
  {
    if (pxrInternal__aapl__pxrReserved__::HdAovHasDepthSemantic(a2, a2) || pxrInternal__aapl__pxrReserved__::HdAovHasDepthStencilSemantic(a2, v6))
    {
      v5 = 0;
    }

    else
    {
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v7)
      {
        v7 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if ((*(v7 + 4) ^ *a2) < 8)
      {
        goto LABEL_23;
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v8)
      {
        v8 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if ((*(v8 + 5) ^ *a2) < 8)
      {
        goto LABEL_23;
      }

      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v9)
      {
        v9 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if ((*(v9 + 6) ^ *a2) < 8)
      {
        goto LABEL_23;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v10)
      {
        v10 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if ((*(v10 + 7) ^ *a2) < 8)
      {
        goto LABEL_23;
      }

      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v11)
      {
        v11 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if ((*(v11 + 8) ^ *a2) >= 8)
      {
        v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v14)
        {
          v14 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        if ((*(v14 + 13) ^ *a2) < 8)
        {
          v5 = 2;
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
LABEL_23:
        v5 = 1;
      }
    }
  }

  else
  {
    v5 = 4;
  }

  v12 = *(this + 62);
  if (v5 != v12)
  {
    *(this + 62) = v5;
  }

  return v5 != v12;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_GetTextureIdentifierForShader(pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask *this)
{
  v1 = *(this + 62);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v6 = atomic_load(&qword_2A174FEF8);
      if (!v6)
      {
        v6 = sub_29AF11BE8();
      }

      return v6 + 24;
    }

    else
    {
      if (v1 != 3)
      {
LABEL_13:
        v7[0] = "hdx/visualizeAovTask.cpp";
        v7[1] = "_GetTextureIdentifierForShader";
        v7[2] = 136;
        v7[3] = "const TfToken &pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_GetTextureIdentifierForShader() const";
        v8 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Unhandled kernel viz enumeration");
        v4 = atomic_load(&qword_2A174FEF8);
        if (!v4)
        {
          v4 = sub_29AF11BE8();
        }

        return v4 + 72;
      }

      result = atomic_load(&qword_2A174FEF8);
      if (!result)
      {

        return sub_29AF11BE8();
      }
    }
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = atomic_load(&qword_2A174FEF8);
        if (!v2)
        {
          v2 = sub_29AF11BE8();
        }

        return v2 + 16;
      }

      goto LABEL_13;
    }

    v5 = atomic_load(&qword_2A174FEF8);
    if (!v5)
    {
      v5 = sub_29AF11BE8();
    }

    return v5 + 8;
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_GetFragmentMixin(pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask *this)
{
  v1 = *(this + 62);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v7 = atomic_load(&qword_2A174FEF8);
      if (!v7)
      {
        v7 = sub_29AF11BE8();
      }

      return v7 + 64;
    }

    else
    {
      if (v1 != 3)
      {
LABEL_12:
        v8[0] = "hdx/visualizeAovTask.cpp";
        v8[1] = "_GetFragmentMixin";
        v8[2] = 154;
        v8[3] = "const TfToken &pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_GetFragmentMixin() const";
        v9 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Unhandled kernel viz enumeration");
        v5 = atomic_load(&qword_2A174FEF8);
        if (!v5)
        {
          v5 = sub_29AF11BE8();
        }

        return v5 + 72;
      }

      v4 = atomic_load(&qword_2A174FEF8);
      if (!v4)
      {
        v4 = sub_29AF11BE8();
      }

      return v4 + 48;
    }
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = atomic_load(&qword_2A174FEF8);
        if (!v2)
        {
          v2 = sub_29AF11BE8();
        }

        return v2 + 56;
      }

      goto LABEL_12;
    }

    v6 = atomic_load(&qword_2A174FEF8);
    if (!v6)
    {
      v6 = sub_29AF11BE8();
    }

    return v6 + 40;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateShaderResources(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136))
  {
    return 1;
  }

  pxrInternal__aapl__pxrReserved__::HdxPackageVisualizeAovShader(&v43);
  if ((v43.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v43.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v7)
  {
    v7 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v47, EmptyString, v7 + 112);
  if ((v43.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v43.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = 0uLL;
  memset(&v35, 0, sizeof(v35));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v43);
  v8 = atomic_load(&qword_2A174FEF8);
  if (!v8)
  {
    v8 = sub_29AF11BE8();
  }

  if ((*(v8 + 4) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = ((*(v8 + 4) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::string::operator=(&v43, v9);
  LODWORD(v44[0]) = 1;
  sub_29A008E78(&v42, "position");
  sub_29A008E78(&v41, "vec4");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v43, &v42, &v41, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v42, "uvIn");
  sub_29A008E78(&v41, "vec2");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v43, &v42, &v41, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v42, "gl_Position");
  sub_29A008E78(&v41, "vec4");
  sub_29A008E78(&__p, "position");
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v43, &v42, &v41, &__p, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v42, "uvOut");
  sub_29A008E78(&v41, "vec2");
  memset(&__p, 0, sizeof(__p));
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v43, &v42, &v41, &__p, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v10 = atomic_load(&qword_2A174FEF8);
  if (!v10)
  {
    v10 = sub_29AF11BE8();
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(&v42, v47, (v10 + 32));
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v42;
  }

  else
  {
    v11 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  std::string::append(&v35, v11, size);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v13 = &v35;
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v35.__r_.__value_.__r.__words[0];
  }

  v45 = v13;
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  *&v46 = (*(*Hgi + 112))(Hgi, &v43);
  *(&v46 + 1) = v15;
  sub_29AB89F90(&v43);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v38 = 0uLL;
  FragmentMixin = pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_GetFragmentMixin(a1);
  memset(&v35, 0, sizeof(v35));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v43);
  sub_29A008E78(&v42, "uvOut");
  sub_29A008E78(&v41, "vec2");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v43, &v42, &v41, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  TextureIdentifierForShader = pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_GetTextureIdentifierForShader(a1);
  if ((*TextureIdentifierForShader & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v18 = ((*TextureIdentifierForShader & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v18 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(TextureIdentifierForShader);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(&v43, v18, 0, 2u, (a2 + 28), 0);
  sub_29A008E78(&v42, "hd_FragColor");
  sub_29A008E78(&v41, "vec4");
  sub_29A008E78(&__p, "color");
  memset(&v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v43, &v42, &v41, &__p, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v42, "screenSize");
  sub_29A008E78(&v41, "vec2");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v43, &v42, &v41, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (!*(a1 + 248))
  {
    sub_29A008E78(&v42, "minMaxDepth");
    sub_29A008E78(&v41, "vec2");
    memset(&__p, 0, sizeof(__p));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v43, &v42, &v41, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  v19 = pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_GetFragmentMixin(a1);
  v20 = v19;
  if ((*v19 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v21 = ((*v19 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v21 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v19);
  }

  std::string::operator=(&v43, v21);
  LODWORD(v44[0]) = 2;
  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(&v42, v47, v20);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v42;
  }

  else
  {
    v22 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v42.__r_.__value_.__l.__size_;
  }

  std::string::append(&v35, v22, v23);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v24 = &v35;
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = v35.__r_.__value_.__r.__words[0];
  }

  v45 = v24;
  v25 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  *&v38 = (*(*v25 + 112))(v25, &v43);
  *(&v38 + 1) = v26;
  sub_29AB89F90(&v43);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc::HgiShaderProgramDesc(&v43);
  if ((*FragmentMixin & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v28 = ((*FragmentMixin & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v28 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v27);
  }

  std::string::operator=(&v43, v28);
  sub_29A03A998(v44, &v46);
  sub_29A03A998(v44, &v38);
  v29 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  v30 = (*(*v29 + 128))(v29, &v43);
  *(a1 + 136) = v30;
  *(a1 + 144) = v31;
  if (*(*v30 + 16))(v30) && (*(*v46 + 16))(v46) && ((*(*v38 + 16))(v38))
  {
    v2 = 1;
  }

  else
  {
    v35.__r_.__value_.__r.__words[0] = "hdx/visualizeAovTask.cpp";
    v35.__r_.__value_.__l.__size_ = "_CreateShaderResources";
    v35.__r_.__value_.__r.__words[2] = 232;
    v36 = "BOOL pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateShaderResources(const HgiTextureDesc &)";
    v37 = 0;
    v32 = *FragmentMixin & 0xFFFFFFFFFFFFFFF8;
    if (v32)
    {
      v33 = (v32 + 16);
      if (*(v32 + 39) < 0)
      {
        v33 = *v33;
      }
    }

    else
    {
      v33 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v35, 1, "Failed to create AOV visualization shader %s", v33);
    pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_PrintCompileErrors(a1);
    pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_DestroyShaderProgram(a1);
    v2 = 0;
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  sub_29ADC1D14(v47);
  return v2;
}

void sub_29AF10438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  sub_29AB89F90(&a42);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_29ADC1D14(&STACK[0x228]);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_PrintCompileErrors(pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask *this)
{
  result = *(this + 17);
  if (result)
  {
    v3 = (*(*result + 32))(result);
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      v6 = MEMORY[0x29EDC93C8];
      v7 = MEMORY[0x29EDC93D0];
      do
      {
        v8 = (*(**v4 + 24))();
        v9 = *(v8 + 23);
        if (v9 >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        if (v9 >= 0)
        {
          v11 = *(v8 + 23);
        }

        else
        {
          v11 = *(v8 + 8);
        }

        v12 = sub_29A00911C(v6, v10, v11);
        std::ios_base::getloc((v12 + *(*v12 - 24)));
        v13 = std::locale::use_facet(&v20, v7);
        (v13->__vftable[2].~facet_0)(v13, 10);
        std::locale::~locale(&v20);
        std::ostream::put();
        std::ostream::flush();
        v4 += 16;
      }

      while (v4 != v5);
    }

    v14 = (*(**(this + 17) + 24))(*(this + 17));
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v18 = sub_29A00911C(MEMORY[0x29EDC93C8], v16, v17);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&v20, MEMORY[0x29EDC93D0]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateBufferResources(pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask *this)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!*(this + 25) || !*(this + 23))
  {
    v19[0] = xmmword_29B716BE8;
    v19[1] = unk_29B716BF8;
    v19[2] = xmmword_29B716C08;
    v19[3] = unk_29B716C18;
    v20 = 0x40000000;
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    v15 = 1;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    MEMORY[0x29C2C1A60](v13, "HdxVisualizeAovTask VertexBuffer");
    v15 = 4;
    v18 = v19;
    v16 = 72;
    v17 = 24;
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    *(this + 25) = (*(*Hgi + 96))(Hgi, v13);
    *(this + 26) = v3;
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
    v9 = 1;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    MEMORY[0x29C2C1A60](__p, "HdxVisualizeAovTask IndexBuffer");
    v9 = 2;
    v12 = &unk_29B716C30;
    v10 = 12;
    v4 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    *(this + 23) = (*(*v4 + 96))(v4, __p);
    *(this + 24) = v5;
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }

  return 1;
}

void sub_29AF10964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateResourceBindings(uint64_t a1, _OWORD *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v14);
  MEMORY[0x29C2C1A60](v14, "HdxVisualizeAovTask resourceDesc", v4);
  pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc::HgiTextureBindDesc(v11);
  *&__p[7] = 0x200000000;
  v13 = 0;
  sub_29A03A998(v11, a2);
  sub_29A03A998(__p, (a1 + 216));
  sub_29ADF42D0(v17, v11);
  v5 = *(a1 + 152);
  if (v5)
  {
    Descriptor = pxrInternal__aapl__pxrReserved__::HgiResourceBindings::GetDescriptor(v5);
    if (pxrInternal__aapl__pxrReserved__::operator==(Descriptor, v14))
    {
      goto LABEL_5;
    }

    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    (*(*Hgi + 152))(Hgi, a1 + 152);
  }

  v8 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  *(a1 + 152) = (*(*v8 + 144))(v8, v14);
  *(a1 + 160) = v9;
LABEL_5:
  if (*__p)
  {
    *&__p[2] = *__p;
    operator delete(*__p);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  v11[0] = v17;
  sub_29AB88D58(v11);
  v11[0] = &v16;
  sub_29AB88B40(v11);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return 1;
}

void sub_29AF10B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29ADE69D4(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreatePipeline(uint64_t a1, int32x2_t *a2)
{
  if (!*(a1 + 168))
  {
    pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc::HgiGraphicsPipelineDesc(v16);
    MEMORY[0x29C2C1A60](v16, "AOV Visualiztion Pipeline");
    v18 = *(a1 + 136);
    pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v14);
    v14 = 12;
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v12);
    v12 = 0x100000000BLL;
    v13 = 1;
    pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc::HgiVertexBufferDesc(&v8);
    LODWORD(v8) = 0;
    v11 = 24;
    v10 = __p;
    sub_29A3A429C(&__p, &v14);
    sub_29A3A429C(&__p, &v12);
    sub_29AEC69C8(v24, &v8);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0x100000002;
    *(a1 + 88) = 0;
    *(a1 + 60) = 0x100000000;
    *(a1 + 52) = vrev64_s32(a2[3]);
    sub_29AB8F8F8(v25, (a1 + 52));
    v27 = 2;
    if (*(a1 + 248))
    {
      v4 = 8;
    }

    else
    {
      v4 = 16;
    }

    v26 = v4;
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    *(a1 + 168) = (*(*Hgi + 160))(Hgi, v16);
    *(a1 + 176) = v6;
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    v8 = v24;
    sub_29AB87628(&v8);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateSampler(pxrInternal__aapl__pxrReserved__::HdxTask *a1, uint64_t a2)
{
  if (!*(a1 + 27))
  {
    v7 = 0u;
    memset(v8, 0, 21);
    *__p = 0u;
    v9 = 0x1000000000;
    DWORD2(v7) = pxrInternal__aapl__pxrReserved__::HgiIsFloatFormat(*(a2 + 28));
    HIDWORD(v7) = DWORD2(v7);
    v8[1] = 0;
    v8[2] = 0;
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    *(a1 + 27) = (*(*Hgi + 80))(Hgi, __p);
    *(a1 + 28) = v4;
    if (SBYTE7(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 1;
}

void sub_29AF10DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateOutputTexture(pxrInternal__aapl__pxrReserved__::HdxTask *this, _DWORD *a2)
{
  v4 = this + 24;
  if (*(this + 3))
  {
    if (*(this + 10) == *a2 && *(this + 11) == a2[1] && *(this + 12) == a2[2])
    {
      return 1;
    }

    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
    (*(*Hgi + 56))(Hgi, v4);
  }

  v7 = *a2;
  *(this + 12) = a2[2];
  *(this + 5) = v7;
  __p[0] = 0;
  __p[1] = 0;
  *v14 = 0;
  v13 = 0;
  *&v14[4] = xmmword_29B70A5A0;
  v15 = xmmword_29B70A5B0;
  *v16 = 0x1000100000000;
  *&v16[8] = 1;
  v17 = 0;
  v18 = 0;
  MEMORY[0x29C2C1A60](__p, "Visualize Aov Output Texture");
  *(&v15 + 1) = *a2;
  *v16 = a2[2];
  *&v16[4] = 0x100010001;
  *v14 = 0xD00000009;
  v8 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(this);
  v9 = (*(*v8 + 48))(v8, __p);
  *(this + 3) = v9;
  *(this + 4) = v10;
  v5 = v9 != 0;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29AF10F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_UpdateMinMaxDepth(pxrInternal__aapl__pxrReserved__::HdxTask *a1, pxrInternal__aapl__pxrReserved__::HgiTexture **a2)
{
  if (*(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2) + 28) != 10)
  {
    v15 = "hdx/visualizeAovTask.cpp";
    v16 = "_UpdateMinMaxDepth";
    v17 = 455;
    v18 = "void pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_UpdateMinMaxDepth(const HgiTextureHandle &)";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v15, "Non-floating point depth AOVs aren't supported yet.", v4);
    return;
  }

  v14 = 0;
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  pxrInternal__aapl__pxrReserved__::HdStTextureUtils::HgiTextureReadback(Hgi, a2, &v14, &v15);
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2);
  v7 = *(Descriptor + 52);
  v8 = *(Descriptor + 56);
  v9 = v15;
  v10 = v8 * v7;
  if (v10)
  {
    v11 = 0x8000007F7FFFFFLL;
    v12 = v15;
    do
    {
      v13 = *v12;
      v12 += 4;
      v11 = vbsl_s8(vcgt_f32(__PAIR64__(v13, v11.u32[0]), __PAIR64__(v11.u32[1], v13)), vdup_lane_s32(__PAIR64__(v11.u32[1], v13), 0), v11);
      --v10;
    }

    while (v10);
    *(a1 + 30) = v11;
    v15 = 0;
  }

  else
  {
    *(a1 + 30) = 0x8000007F7FFFFFLL;
    v15 = 0;
    if (!v9)
    {
      return;
    }
  }

  (v16)(v9);
}

void sub_29AF1109C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void (*a11)(void))
{
  if (a10)
  {
    a11();
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_ApplyVisualizationKernel(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiTexture **a2)
{
  *&v33 = *MEMORY[0x29EDCA608];
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = xmmword_29B6C6450;
  v19 = 0;
  v20 = 0;
  v21 = 15;
  v22 = 0;
  v23 = 0u;
  v24 = 0u;
  *v25 = 0u;
  v26 = 0u;
  *v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  sub_29AB8F8F8(&v15, (a1 + 52));
  sub_29A03A998(&v25[1], a2);
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  (*(*Hgi + 24))(&v14);
  (*(*v14 + 24))(v14, "Visualize AOV");
  (*(*v14 + 64))(v14, *(a1 + 152), *(a1 + 160));
  (*(*v14 + 56))(v14, *(a1 + 168), *(a1 + 176));
  v6 = v14;
  v31 = *(a1 + 200);
  v32 = 0;
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_29AB90D54(&__p, &v31, &v33, 1uLL);
  (*(*v6 + 80))(v6, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v7 = *(Descriptor + 52);
  v8 = *(Descriptor + 56);
  __p = 0;
  v12 = __PAIR64__(v8, v7);
  *(a1 + 232) = v7;
  *(a1 + 236) = v8;
  if (*(a1 + 248))
  {
    (*(*v14 + 72))(v14, *(a1 + 168), *(a1 + 176), 2, 0, 8);
  }

  else
  {
    *&v31 = v7;
    *(&v31 + 1) = v8;
    *(&v31 + 1) = *(a1 + 240);
    (*(*v14 + 72))(v14, *(a1 + 168), *(a1 + 176), 2, 0, 16, &v31);
  }

  (*(*v14 + 40))(v14, &__p);
  (*(*v14 + 104))(v14, a1 + 184, 3, 0, 0, 1, 0);
  (*(*v14 + 32))(v14);
  v9 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(v9, v14, 0);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v25[1])
  {
    *&v26 = v25[1];
    operator delete(v25[1]);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_29AF11470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  sub_29AB905FC(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_Sync(pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_29A0ECEEC(&v11, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  if ((*a4 & 4) != 0)
  {
    v10 = 0;
    result = sub_29AF11640(a1, a2, &v10);
    if (result)
    {
      result = pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_UpdateVizKernel(a1, &v10);
      if (result)
      {
        result = pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_DestroyShaderProgram(a1);
        if (*(a1 + 19))
        {
          Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
          result = (*(*Hgi + 152))(Hgi, a1 + 19);
        }

        if (*(a1 + 21))
        {
          v9 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
          result = (*(*v9 + 168))(v9, a1 + 21);
        }
      }
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *a4 = 0;
  if (v11)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
  }

  return result;
}

void sub_29AF11614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF11640(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v13, a2, a1 + 8, v6 + 440);
  v7 = sub_29AF0B6DC(&v13);
  if (v7)
  {
    if ((v14 & 4) != 0)
    {
      v8 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(&v13);
    }

    else
    {
      v8 = v13;
    }

    sub_29A166F2C(a3, v8);
  }

  else
  {
    v11[0] = "hd/task.h";
    v11[1] = "_GetTaskParams";
    v11[2] = 242;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTaskParams]";
    v12 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v13);
  return v7;
}

void sub_29AF1178C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::Execute(_DWORD *a1, void *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  result = sub_29A0ECEEC(&v19, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::Execute(HdTaskContext *)");
  if (a1[62] != 4)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v5)
    {
      v5 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    result = pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v5);
    if (result)
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
      if (!v6)
      {
        v6 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
      }

      result = pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v6);
      if (result)
      {
        v18 = 0uLL;
        v17 = 0uLL;
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v7)
        {
          v7 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        sub_29AEC7840(a2, v7, &v18);
        v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
        if (!v8)
        {
          v8 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
        }

        sub_29AEC7840(a2, v8, &v17);
        Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v18);
        (*(*v18 + 32))(v18, 8);
        pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateBufferResources(a1);
        pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateSampler(a1, Descriptor);
        if (pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateShaderResources(a1, Descriptor) & 1) != 0 || (v22 = "hdx/visualizeAovTask.cpp", v23 = "Execute", v24 = 608, v25 = "virtual void pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::Execute(HdTaskContext *)", v26 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v22, "_CreateShaderResources( aovTexDesc)", 0), (result))
        {
          pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateResourceBindings(a1, &v18);
          if (pxrInternal__aapl__pxrReserved__::HdxPresentTask::IsFormatSupported(*(Descriptor + 28)) && pxrInternal__aapl__pxrReserved__::HgiGetComponentCount(*(Descriptor + 28)) > 2)
          {
            v10 = a1 + 6;
            v11 = &v17;
            v12 = 1;
          }

          else
          {
            if (!pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreateOutputTexture(a1, (Descriptor + 52)))
            {
              v22 = "hdx/visualizeAovTask.cpp";
              v23 = "Execute";
              v24 = 625;
              v25 = "virtual void pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::Execute(HdTaskContext *)";
              v26 = 0;
              result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v22, "_CreateOutputTexture(aovTexDesc.dimensions)", 0);
              if ((result & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            v12 = 0;
            v10 = a1 + 6;
            v11 = (a1 + 6);
          }

          v13 = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*v11);
          pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_CreatePipeline(a1, v13);
          if (!a1[62])
          {
            pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_UpdateMinMaxDepth(a1, &v18);
          }

          pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::_ApplyVisualizationKernel(a1, v11);
          (*(*v18 + 32))(v18, 1);
          if (v12)
          {
            result = pxrInternal__aapl__pxrReserved__::HdxTask::_ToggleRenderTarget(a1, a2);
          }

          else
          {
            v23 = &off_2A20986C0;
            v14 = operator new(0x18uLL);
            *v14 = *v10;
            atomic_store(0, v14 + 4);
            v22 = v14;
            atomic_fetch_add_explicit(v14 + 4, 1u, memory_order_relaxed);
            v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
            if (!v15)
            {
              v15 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
            }

            v21 = v15;
            v16 = sub_29AC1E77C(a2, v15, &unk_29B4D6118, &v21);
            sub_29A18606C(v16 + 3, &v22);
            result = sub_29A186B14(&v22);
          }
        }
      }
    }
  }

LABEL_25:
  if (v19)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v20, v19);
  }

  return result;
}

void sub_29AF11B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29AF11BE8()
{
  v37 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x68uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "aovIn", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "depthIn", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "idIn", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "normalIn", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "VisualizeVertex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "VisualizeFragmentDepth", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "VisualizeFragmentFallback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "VisualizeFragmentId", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "VisualizeFragmentNormal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "", 0);
  v1 = v0 + 10;
  v2 = *v0;
  v27 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v3;
    }
  }

  v4 = v0[1];
  v28 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v5;
    }
  }

  v6 = v0[2];
  v29 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v7;
    }
  }

  v8 = v0[3];
  v30 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v9;
    }
  }

  v10 = v0[4];
  v31 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v11;
    }
  }

  v12 = v0[5];
  v32 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 = v13;
    }
  }

  v14 = v0[6];
  v33 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 = v15;
    }
  }

  v16 = v0[7];
  v34 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v34 = v17;
    }
  }

  v18 = v0[8];
  v35 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v35 = v19;
    }
  }

  v20 = v0[9];
  v36 = v20;
  if ((v20 & 7) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 = v21;
    }
  }

  *v1 = 0;
  v0[11] = 0;
  v0[12] = 0;
  sub_29A12EF7C(v1, &v27, &v37, 0xAuLL);
  for (i = 72; i != -8; i -= 8)
  {
    v23 = *(&v27 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v24 = 0;
  atomic_compare_exchange_strong(&qword_2A174FEF8, &v24, v0);
  if (v24)
  {
    v25 = sub_29A89BEC8(v0);
    operator delete(v25);
    return atomic_load(&qword_2A174FEF8);
  }

  return v0;
}

void sub_29AF11EEC(_Unwind_Exception *a1)
{
  v4 = 72;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdStormRendererPlugin::CreateRenderDelegate(uint64_t a1, uint64_t a2)
{
  v3 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::HdStRenderDelegate(v3, a2);
  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStormRendererPlugin::DeleteRenderDelegate(pxrInternal__aapl__pxrReserved__::HdStormRendererPlugin *this, pxrInternal__aapl__pxrReserved__::HdRenderDelegate *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HdStormRendererPlugin::IsSupported(pxrInternal__aapl__pxrReserved__::HdStormRendererPlugin *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v2 = a2;
  if (a2 && (pxrInternal__aapl__pxrReserved__::HdStRenderDelegate::IsSupported(this, a2) & 1) != 0)
  {
    return 1;
  }

  result = sub_29ABCF8C0(22);
  if (result)
  {
    v6 = "no gpu";
    if (v2)
    {
      v6 = "hgi unsupported";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("hdStorm renderer plugin unsupported: %s\n", v4, v5, v6);
    return 0;
  }

  return result;
}

void sub_29AF121A4(pxrInternal__aapl__pxrReserved__::HdRendererPlugin *a1)
{
  pxrInternal__aapl__pxrReserved__::HdRendererPlugin::~HdRendererPlugin(a1);

  operator delete(v1);
}

uint64_t sub_29AF121CC()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1734;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdStormRendererPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29AF122A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdStormRendererPlugin>()
{
  sub_29A0ECEEC(&v2, "hdStorm", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdStormRendererPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A209D8C8;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

uint64_t sub_29AF12358()
{
  v1 = nullsub_1735;
  return sub_29AF13E6C(&var8);
}

uint64_t pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_GetImagePixelFormat(CGImageRef *this)
{
  BitmapInfo = CGImageGetBitmapInfo(this[9]);
  BitsPerComponent = CGImageGetBitsPerComponent(this[9]);
  v4 = BitsPerComponent == 16;
  if (BitsPerComponent == 32)
  {
    v4 = 2;
  }

  v5 = 4 * (BitsPerComponent == 32);
  if (BitsPerComponent == 16)
  {
    v5 = 3;
  }

  if ((BitmapInfo & 0x100) != 0)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_GetHioFormatFromImageData(CGImageRef *this)
{
  ImagePixelFormat = pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_GetImagePixelFormat(this);
  BitsPerComponent = CGImageGetBitsPerComponent(this[9]);
  v4 = CGImageGetBitsPerPixel(this[9]) / BitsPerComponent;
  v5 = (*(*this + 11))(this);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (ImagePixelFormat > 1)
      {
        if (ImagePixelFormat == 2)
        {
          return 30;
        }

        if (ImagePixelFormat == 3)
        {
          return 10;
        }

        return 14;
      }

      if (ImagePixelFormat)
      {
        return 22;
      }

      v7 = v5 == 0;
      v8 = 2;
      v9 = 38;
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_14;
      }

      if (ImagePixelFormat > 1)
      {
        if (ImagePixelFormat == 2)
        {
          return 31;
        }

        if (ImagePixelFormat == 3)
        {
          return 11;
        }

        return 15;
      }

      if (ImagePixelFormat)
      {
        return 23;
      }

      v7 = v5 == 0;
      v8 = 3;
      v9 = 39;
    }

    if (v7)
    {
      return v8;
    }

    else
    {
      return v9;
    }
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      if (ImagePixelFormat <= 1)
      {
        if (ImagePixelFormat)
        {
          return 21;
        }

        else if (v5)
        {
          return 37;
        }

        else
        {
          return 1;
        }
      }

      else if (ImagePixelFormat == 2)
      {
        return 29;
      }

      else if (ImagePixelFormat == 3)
      {
        return 9;
      }

      else
      {
        return 13;
      }
    }

LABEL_14:
    v10[0] = "hioImageIO/imageIOImage.mm";
    v10[1] = "_GetHioFormatFromImageData";
    v10[2] = 234;
    v10[3] = "HioFormat pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_GetHioFormatFromImageData() const";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Unsupported type");
    return 2;
  }

  if (ImagePixelFormat <= 1)
  {
    if (ImagePixelFormat)
    {
      return 20;
    }

    else if (v5)
    {
      return 36;
    }

    else
    {
      return 0;
    }
  }

  else if (ImagePixelFormat == 2)
  {
    return 28;
  }

  else if (ImagePixelFormat == 3)
  {
    return 8;
  }

  else
  {
    return 12;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::_FindValueFromDictionaryForKey(pxrInternal__aapl__pxrReserved__ *this, NSDictionary *a2, NSString *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  result = [(pxrInternal__aapl__pxrReserved__ *)this valueForKey:a2];
  if (!result)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    result = [(pxrInternal__aapl__pxrReserved__ *)this countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v12;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(this);
        }

        v9 = [(pxrInternal__aapl__pxrReserved__ *)this valueForKey:*(*(&v11 + 1) + 8 * v8)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          result = pxrInternal__aapl__pxrReserved__::_FindValueFromDictionaryForKey(v9, a2, v10);
          if (result)
          {
            break;
          }
        }

        if (v6 == ++v8)
        {
          v6 = [(pxrInternal__aapl__pxrReserved__ *)this countByEnumeratingWithState:&v11 objects:v15 count:16];
          result = 0;
          if (v6)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_FindAttribute(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_29AF12A14(a2);
  v6 = CGImageSourceCopyPropertiesAtIndex(*(a1 + 64), *(a1 + 48), 0);
  ValueFromDictionaryForKey = pxrInternal__aapl__pxrReserved__::_FindValueFromDictionaryForKey(v6, v5, v7);
  if (!ValueFromDictionaryForKey)
  {
    goto LABEL_8;
  }

  v9 = ValueFromDictionaryForKey;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_29A008E78(__p, [v9 UTF8String]);
    *(a3 + 8) = &off_2A2044DD0;
    sub_29A1B01B8(a3, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    *(a3 + 8) = 0;
    return;
  }

  switch(CFNumberGetType(v9))
  {
    case kCFNumberSInt8Type:
      v15 = [v9 charValue];
      v16 = &unk_2A2044478;
      goto LABEL_18;
    case kCFNumberSInt16Type:
    case kCFNumberShortType:
      v12 = [v9 shortValue];
      *(a3 + 8) = &unk_2A20445EB;
      *a3 = v12;
      return;
    case kCFNumberSInt32Type:
    case kCFNumberIntType:
      v13 = [v9 integerValue];
      *(a3 + 8) = &unk_2A204475B;
      *a3 = v13;
      return;
    case kCFNumberSInt64Type:
      v11 = [v9 integerValue];
      goto LABEL_21;
    case kCFNumberFloat32Type:
    case kCFNumberFloatType:
    case kCFNumberCGFloatType:
      [v9 floatValue];
      *(a3 + 8) = &unk_2A2044C63;
      *a3 = v10;
      return;
    case kCFNumberFloat64Type:
    case kCFNumberDoubleType:
      [v9 doubleValue];
      *(a3 + 8) = &unk_2A2044D1B;
      *a3 = v14;
      return;
    case kCFNumberCharType:
      v15 = [v9 charValue];
      v16 = &unk_2A2044308;
LABEL_18:
      *(a3 + 8) = v16 | 3;
      *a3 = v15;
      return;
    case kCFNumberLongType:
      v11 = [v9 longValue];
      goto LABEL_16;
    case kCFNumberLongLongType:
      v11 = [v9 longLongValue];
LABEL_21:
      v17 = &unk_2A2044A38;
      goto LABEL_22;
    case kCFNumberCFIndexType:
    case kCFNumberNSIntegerType:
      v11 = [v9 integerValue];
LABEL_16:
      v17 = &unk_2A20448C8;
LABEL_22:
      *a3 = v11;
      *(a3 + 8) = v17 | 3;
      break;
    default:
      goto LABEL_8;
  }
}

void sub_29AF129B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *sub_29AF12A14(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if ((v2 & 0x80000000) == 0)
  {
    if (v2 == 2)
    {
      if (*a1 == 20558)
      {
        return @"worldtoscreen";
      }

      goto LABEL_8;
    }

    return [MEMORY[0x29EDBA0F8] stringWithCString:v1 encoding:4];
  }

  if (*(a1 + 8) == 2 && **a1 == 20558)
  {
    return @"worldtoscreen";
  }

  v1 = *a1;
  if (*(a1 + 8) != 2)
  {
    return [MEMORY[0x29EDBA0F8] stringWithCString:v1 encoding:4];
  }

LABEL_8:
  if (*v1 != 27726)
  {
    return [MEMORY[0x29EDBA0F8] stringWithCString:v1 encoding:4];
  }

  return @"worldtocamera";
}

uint64_t pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_SetAttribute(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, uint64_t a4)
{
  sub_29AF12A14(a2);
  if (sub_29A1EFC10(a3))
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = sub_29A1EFC48(a3);
    if (*(v7 + 23) >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *v7;
    }

    [v6 stringWithCString:v8 encoding:4];
  }

  else if (sub_29A1F8DE8(a3))
  {
    [MEMORY[0x29EDBA070] numberWithChar:*sub_29AB14B80(a3)];
  }

  else if (sub_29A1F9040(a3))
  {
    [MEMORY[0x29EDBA070] numberWithUnsignedChar:*sub_29AA9E568(a3)];
  }

  else if (sub_29A293A9C(a3))
  {
    [MEMORY[0x29EDBA070] numberWithInt:*sub_29A346A20(a3)];
  }

  else if (sub_29A3F94B8(a3))
  {
    [MEMORY[0x29EDBA070] numberWithUnsignedInt:*sub_29AB14C14(a3)];
  }

  else if (sub_29A3F9DF4(a3))
  {
    v9 = MEMORY[0x29EDBA070];
    LODWORD(v10) = *sub_29A8D5794(a3);
    [v9 numberWithFloat:v10];
  }

  else
  {
    result = sub_29A346994(a3);
    if (!result)
    {
      return result;
    }

    [MEMORY[0x29EDBA070] numberWithDouble:*sub_29A337248(a3)];
  }

  return MEMORY[0x2A1C70FE8](a4, sel_setObject_forKeyedSubscript_);
}

double pxrInternal__aapl__pxrReserved__::HioImageIO_Image::HioImageIO_Image(pxrInternal__aapl__pxrReserved__::HioImageIO_Image *this)
{
  *this = &unk_2A209D920;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_2A209D920;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HioImageIO_Image::~HioImageIO_Image(void **this)
{
  *this = &unk_2A209D920;
  pxrInternal__aapl__pxrReserved__::HioImageIO_Image::Cleanup(this);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HioImage::~HioImage(this);
}

{
  pxrInternal__aapl__pxrReserved__::HioImageIO_Image::~HioImageIO_Image(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HioImageIO_Image::Cleanup(pxrInternal__aapl__pxrReserved__::HioImageIO_Image *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    CGImageRelease(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {

    CFRelease(v3);
  }
}

CGImage *pxrInternal__aapl__pxrReserved__::HioImageIO_Image::GetWidth(pxrInternal__aapl__pxrReserved__::HioImageIO_Image *this)
{
  result = *(this + 9);
  if (result)
  {
    return CGImageGetWidth(result);
  }

  return result;
}

CGImage *pxrInternal__aapl__pxrReserved__::HioImageIO_Image::GetHeight(pxrInternal__aapl__pxrReserved__::HioImageIO_Image *this)
{
  result = *(this + 9);
  if (result)
  {
    return CGImageGetHeight(result);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioImageIO_Image::GetFormat(CGImageRef *this)
{
  if (this[9])
  {

    return pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_GetHioFormatFromImageData(this);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4[0] = "hioImageIO/imageIOImage.mm";
    v4[1] = "GetFormat";
    v4[2] = 534;
    v4[3] = "virtual HioFormat pxrInternal__aapl__pxrReserved__::HioImageIO_Image::GetFormat() const";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unsupported type");
    return 2;
  }
}

CGImage *pxrInternal__aapl__pxrReserved__::HioImageIO_Image::GetBytesPerPixel(pxrInternal__aapl__pxrReserved__::HioImageIO_Image *this)
{
  result = *(this + 9);
  if (result)
  {
    return (CGImageGetBitsPerPixel(result) / 8);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioImageIO_Image::IsColorSpaceSRGB(pxrInternal__aapl__pxrReserved__::HioImageIO_Image *this)
{
  v1 = *(this + 20);
  if (v1 == 1)
  {
    return 1;
  }

  if (!v1)
  {
    return 0;
  }

  result = *(this + 9);
  if (result)
  {
    BitsPerComponent = CGImageGetBitsPerComponent(result);
    v5 = CGImageGetBitsPerPixel(*(this + 9)) / BitsPerComponent;
    ImagePixelFormat = pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_GetImagePixelFormat(this);
    return v5 - 3 < 2 && ImagePixelFormat == 0;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::HioImageIO_Image::GetMetadata(pxrInternal__aapl__pxrReserved__::HioImageIO_Image *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_FindAttribute(this, EmptyString, &v8);
  v6 = v9;
  if (v9)
  {
    sub_29A1854E8(a3, &v8);
  }

  sub_29A186B14(&v8);
  return v6 != 0;
}

void sub_29AF12FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HioImageIO_Image::GetSamplerMetadata(uint64_t a1, int a2, _DWORD *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 == 1)
  {
    sub_29A008E78(__p, "t mode");
    pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_FindAttribute(a1, __p, v9);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 && sub_29A1EFC10(v9))
    {
      goto LABEL_12;
    }

LABEL_13:
    sub_29A186B14(v9);
    return 0;
  }

  if (!a2)
  {
    sub_29A008E78(__p, "s mode");
    pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_FindAttribute(a1, __p, v9);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 && sub_29A1EFC10(v9))
    {
LABEL_12:
      v5 = sub_29A1EFC48(v9);
      *a3 = sub_29AF13130(v5);
      sub_29A186B14(v9);
      return 1;
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_29AF13130(unsigned int *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 1) == 5 && **a1 == 1667329122 && *(*a1 + 4) == 107)
    {
      return 4;
    }

    if (*(a1 + 1) == 5 && **a1 == 1835101283 && *(*a1 + 4) == 112)
    {
      return 0;
    }

    if (*(a1 + 1) == 8 && **a1 == 0x6369646F69726570)
    {
      return 2;
    }

    if (*(a1 + 1) != 6)
    {
      return 0;
    }

    a1 = *a1;
    goto LABEL_20;
  }

  v1 = *(a1 + 23);
  if (v1 != 5)
  {
    if (v1 != 6)
    {
      if (v1 == 8)
      {
        return 2 * (*a1 == 0x6369646F69726570);
      }

      return 0;
    }

LABEL_20:
    v5 = bswap64(*a1 | (*(a1 + 2) << 32));
    v6 = v5 >= 0x6D6972726F720000;
    v7 = v5 > 0x6D6972726F720000;
    v8 = !v6;
    if (v7 == v8)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  v10 = *a1 == 1667329122 && *(a1 + 4) == 107;
  return (4 * v10);
}

void pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_GetFilenameExtension(pxrInternal__aapl__pxrReserved__::HioImageIO_Image *this@<X0>, std::string *a2@<X8>)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(this);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension(Resolver);
  pxrInternal__aapl__pxrReserved__::TfStringToLower(&__p, a2);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_29AF132EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CGImageSource *pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_OpenImageSource(pxrInternal__aapl__pxrReserved__::HioImageIO_Image *this)
{
  v2 = (*(**(this + 1) + 16))(*(this + 1));
  v3 = malloc(v2);
  result = (*(**(this + 1) + 32))(*(this + 1), v3, v2, 0);
  *(this + 7) = 0;
  if (result)
  {
    v5 = CFDataCreate(*MEMORY[0x29EDB8ED8], v3, v2);
    *(this + 7) = v5;
    if (!v5)
    {
      CFRelease(0);
      *(this + 7) = 0;
    }

    result = CGImageSourceCreateWithData(v5, 0);
    *(this + 8) = result;
    if (result)
    {
      if (*(this + 9))
      {
        CGImageRelease(*(this + 9));
        *(this + 9) = 0;
        result = *(this + 8);
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(result, *(this + 12), 0);
      *(this + 9) = ImageAtIndex;
      return (ImageAtIndex != 0);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_OpenForReading(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  pxrInternal__aapl__pxrReserved__::HioImageIO_Image::Cleanup(a1);
  v9 = std::string::operator=((a1 + 24), a2);
  *(a1 + 48) = a3;
  *(a1 + 52) = 0;
  *(a1 + 80) = a5;
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v9);
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  v11 = v16;
  v16 = 0uLL;
  v12 = *(a1 + 16);
  *(a1 + 8) = v11;
  if (v12)
  {
    sub_29A014BEC(v12);
    if (*(&v16 + 1))
    {
      sub_29A014BEC(*(&v16 + 1));
    }
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 8))
  {
    if (pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_OpenImageSource(a1))
    {
      return 1;
    }

    pxrInternal__aapl__pxrReserved__::HioImageIO_Image::Cleanup(a1);
  }

  return 0;
}

void sub_29AF13500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CGImageRef pxrInternal__aapl__pxrReserved__::HioImageIO_Image::ReadCropped(uint64_t a1, int a2, int a3, int a4, int a5, int *a6)
{
  if (!*(a1 + 64))
  {
    return 0;
  }

  if (!*(a1 + 72))
  {
    return 0;
  }

  v12 = (*(*a1 + 48))(a1);
  v13 = (*(*a1 + 56))(a1);
  CGImageGetBytesPerRow(*(a1 + 72));
  CGImageGetBitsPerComponent(*(a1 + 72));
  if (a3 | a2 | a4 | a5)
  {
    v28.origin.x = a4;
    v28.origin.y = a2;
    v28.size.width = (v12 - a5);
    v28.size.height = (v13 - a3);
    result = CGImageCreateWithImageInRect(*(a1 + 72), v28);
    v15 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*(*a1 + 88))(a1))
  {
    result = CGColorSpaceCreateWithName(*MEMORY[0x29EDB90F8]);
    if (!result)
    {
      return result;
    }

    v16 = result;
    BitmapInfo = 1;
  }

  else
  {
    result = CGImageGetColorSpace(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v16 = CFRetain(result);
    BitmapInfo = CGImageGetBitmapInfo(*(a1 + 72));
  }

  v18 = sub_29AF13804(a6[3]);
  v19 = a6[3];
  if (v19 < 0x28 && ((0xFFFFF0FFFFuLL >> v19) & 1) != 0)
  {
    v20 = qword_29B716EC0[v19];
  }

  else
  {
    v26[0] = "hioImageIO/imageIOImage.mm";
    v26[1] = "_GetNumChannelsFromHIOFormat";
    v26[2] = 352;
    v26[3] = "size_t pxrInternal__aapl__pxrReserved__::_GetNumChannelsFromHIOFormat(HioFormat)";
    v27 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v26, 1, "Unsupported type");
    v20 = 4;
  }

  v21 = CGBitmapContextCreate(*(a6 + 3), *a6, a6[1], 8 * v18, v20 * v18 * *a6, v16, BitmapInfo);
  CGColorSpaceRelease(v16);
  if (!v21)
  {
    return 0;
  }

  if (*(a6 + 16) == 1)
  {
    CGContextTranslateCTM(v21, 0.0, v13);
    CGContextScaleCTM(v21, 1.0, -1.0);
  }

  v22 = *a6;
  v23 = a6[1];
  v24 = 0;
  v25 = 0;
  if (v15)
  {
    CGContextDrawImage(v21, *&v24, v15);
    CGImageRelease(v15);
  }

  else
  {
    CGContextDrawImage(v21, *&v24, *(a1 + 72));
  }

  CGContextRelease(v21);
  return 1;
}

uint64_t sub_29AF13804(unsigned int a1)
{
  if (a1 < 0x28 && ((0xFFFFF0FFFFuLL >> a1) & 1) != 0)
  {
    return qword_29B717000[a1];
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "hioImageIO/imageIOImage.mm";
  v4[1] = "_GetComponentByteSizeFromHIOFormat";
  v4[2] = 301;
  v4[3] = "size_t pxrInternal__aapl__pxrReserved__::_GetComponentByteSizeFromHIOFormat(HioFormat)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unsupported type");
  return 4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HioImageIO_Image::Write(uint64_t a1, int *a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  v54[2] = *MEMORY[0x29EDCA608];
  ComponentCount = pxrInternal__aapl__pxrReserved__::HioGetComponentCount(a2[3]);
  v7 = sub_29AF13804(a2[3]);
  v9 = *a2;
  v8 = a2[1];
  v10 = CGColorSpaceCreateWithName(*MEMORY[0x29EDB90F8]);
  if (v10)
  {
    v47 = a3;
    v48 = a1;
    space = v10;
    v11 = v7 * v9 * ComponentCount;
    v12 = v11 * v8;
    v13 = (a2[3] & 0xFFFFFFF8) == 8;
    if (v7 == 4)
    {
      v14 = 8193;
    }

    else
    {
      v14 = 1;
    }

    if (v7 == 2)
    {
      v15 = 4097;
    }

    else
    {
      v15 = v14;
    }

    v16 = CFDataCreate(*MEMORY[0x29EDB8ED8], *(a2 + 3), v12);
    if (!v16)
    {
      v29 = 0;
LABEL_58:
      CGColorSpaceRelease(space);
      return v29;
    }

    v17 = v16;
    v18 = CGDataProviderCreateWithCFData(v16);
    if (!v18)
    {
      v29 = 0;
      v23 = v17;
LABEL_57:
      CFRelease(v23);
      goto LABEL_58;
    }

    v19 = 8 * v7;
    v20 = v15 | (v13 << 8);
    v21 = v18;
    v22 = CGImageCreate(*a2, a2[1], v19, v19 * ComponentCount, v11, space, v20, v18, 0, 0, kCGRenderingIntentDefault);
    cf = v21;
    if (!v22)
    {
      v29 = 0;
      v23 = v17;
LABEL_56:
      CFRelease(cf);
      goto LABEL_57;
    }

    v23 = v17;
    v24 = operator new[](v12);
    v45 = v24;
    if (*(a2 + 16) == 1)
    {
      v25 = CGBitmapContextCreate(v24, *a2, a2[1], v19, v11, space, v20);
      v26 = v25;
      if (!v25)
      {
        v34 = 0;
        v29 = 0;
        v33 = 0;
        v42 = 0;
LABEL_46:
        operator delete[](v45);
        if (v34)
        {
          CFRelease(v34);
        }

        if (v33)
        {
          CFRelease(v33);
        }

        if (v42)
        {
          CGImageRelease(v42);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (v22)
        {
          CGImageRelease(v22);
        }

        goto LABEL_56;
      }

      CGContextTranslateCTM(v25, 0.0, a2[1]);
      CGContextScaleCTM(v26, 1.0, -1.0);
      v55.size.width = *a2;
      v55.size.height = a2[1];
      v55.origin.x = 0.0;
      v55.origin.y = 0.0;
      CGContextDrawImage(v26, v55, v22);
      CGImageRelease(v22);
      v27 = CGBitmapContextCreateImage(v26);
      if (!v27)
      {
        v34 = 0;
        v29 = 0;
        v33 = 0;
        v42 = 0;
        v22 = 0;
        goto LABEL_46;
      }

      image = v27;
      v28 = v26;
    }

    else
    {
      v28 = 0;
      image = v22;
    }

    v30 = (v48 + 24);
    if (*(v48 + 47) < 0)
    {
      v30 = *v30;
    }

    v31 = [MEMORY[0x29EDB8E70] fileURLWithPath:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v30)}];
    if (v31)
    {
      v32 = CFRetain(v31);
      v33 = v32;
      if (v32)
      {
        v34 = CGImageDestinationCreateWithURL(v32, @"public.tiff", 1uLL, 0);
        if (v34)
        {
          v22 = objc_alloc_init(MEMORY[0x29EDB8E00]);
          if (v22)
          {
            v50 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v47);
            v51 = v35;
            v37 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v47);
            if (v36)
            {
              v38 = v50 == v37;
            }

            else
            {
              v38 = 1;
            }

            v39 = v38;
            if (v51 != v36 || v39 == 0)
            {
              v41 = sub_29AB15498(__p, (v50 + 32));
              pxrInternal__aapl__pxrReserved__::HioImageIO_Image::_SetAttribute(v41, __p, v54, v22);
              sub_29A186B14(v54);
              if (v53 < 0)
              {
                operator delete(__p[0]);
              }

              pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
            }

            CGImageDestinationAddImage(v34, image, v22);
            CGImageDestinationFinalize(v34);
            v22 = 0;
            v29 = 1;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_45;
        }
      }

      else
      {
        v34 = 0;
      }

      v29 = 0;
    }

    else
    {
      v34 = 0;
      v29 = 0;
      v33 = 0;
    }

    v22 = 0;
LABEL_45:
    v26 = v28;
    v42 = image;
    goto LABEL_46;
  }

  return 0;
}

void sub_29AF13D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    operator delete[](__p);
    objc_begin_catch(exception_object);
    if (!v19)
    {
      JUMPOUT(0x29AF13C54);
    }

    JUMPOUT(0x29AF13C4CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AF13E6C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A209D9C8;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29AF13EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF13F1C(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

void *sub_29AF13F44@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x58uLL);
  *v2 = &unk_2A209D920;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 8) = 0;
  *(v2 + 9) = 0;

  return sub_29AF13FB4(a1, v2);
}

void *sub_29AF13FB4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209DA08;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF1400C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2CBAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF14028(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF14050(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF14080(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209DA58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager *pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::UsdImaging_AdapterManager(pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager *this)
{
  v2 = sub_29AF15530(this, 8uLL, &v5);
  sub_29AF15688(v2 + 560, 8uLL, &v6);
  sub_29AF157E0(this + 1120, 8uLL, &v7);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::ConstructKeylessAPISchemaAdapters(v3, this + 1680);
  return this;
}

void sub_29AF14148(_Unwind_Exception *a1, void *a2)
{
  sub_29AF151A0(v2 + 560, a2);
  sub_29AF152B8(v2, v4);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::Reset(pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager *this)
{
  sub_29AF141C0(this);
  sub_29AF14210(this + 560);

  sub_29AF14260(this + 1120);
}

void sub_29AF141C0(uint64_t a1)
{
  sub_29AF15328(a1 + 16);
  sub_29A1B0420(a1, v2);
  v3 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v3);
}

void sub_29AF14210(uint64_t a1)
{
  sub_29AF15210(a1 + 16);
  sub_29A1B0420(a1, v2);
  v3 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v3);
}

void sub_29AF14260(uint64_t a1)
{
  sub_29AF15108(a1 + 16);
  sub_29A1B0420(a1, v2);
  v3 = *(a1 + 32);
  sub_29A1A8110(a1, 0, &v3);
}

uint64_t sub_29AF1434C(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return sub_29AF153B4(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::_LookupAdapters(pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager *this, atomic_ullong *a2)
{
  v8[55] = *MEMORY[0x29EDCA608];
  v7 = a2;
  sub_29AF15938(this + 1120, &v7, v6);
  if (v6[0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v6[1] == this + 1136;
  }

  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::_ComputeAdapters(a2, v8);
  }

  return v6[0] + 16;
}

void sub_29AF14490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_29AF146F4(&a42);
  sub_29AF1434C(&a15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::_ComputeAdapters(atomic_ullong *a1@<X1>, void *a2@<X8>)
{
  a2[24] = 0x800000000;
  a2[25] = 0;
  a2[26] = 0;
  if (!atomic_load_explicit(a1 + 7, memory_order_acquire))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimTypeInfo::_FindOrCreatePrimDefinition(a1);
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

uint64_t sub_29AF146F4(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29AF153B4(a1 + 8);
  return a1;
}

void sub_29AF1472C(uint64_t a1, void *a2, uint64_t *a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 196);
  v9 = a1;
  if (v8 >= 9)
  {
    v9 = *a1;
  }

  v10 = *(a1 + 192);
  v11 = (v9 + 24 * v10);
  v12 = a4 - a3;
  v13 = v10 + ((a4 - a3) >> 4);
  v14 = v8 + (v8 >> 1);
  if (v14 + 1 > v13)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v10 + ((a4 - a3) >> 4);
  }

  if (v11 == a2)
  {
    if (v13 > v8)
    {
      sub_29AF15ED8(a1, v15);
      LODWORD(v8) = *(a1 + 196);
    }

    v28 = a1;
    if (v8 < 9)
    {
      goto LABEL_27;
    }

LABEL_26:
    v28 = *a1;
LABEL_27:
    sub_29AF15F88(v5, a4, (v28 + 24 * *(a1 + 192)));
    goto LABEL_28;
  }

  v16 = v12 >> 4;
  if (v13 <= v8)
  {
    v29 = a1;
    if (v8 >= 9)
    {
      v29 = *a1;
    }

    v30 = 0xAAAAAAAAAAAAAAABLL * ((v29 + 24 * v10 - a2) >> 3);
    if (v30 >= v16)
    {
      v31 = v12 >> 4;
    }

    else
    {
      v31 = v30;
    }

    v32 = &a2[3 * (v30 - v31)];
    v33 = a1;
    if (v8 >= 9)
    {
      v33 = *a1;
    }

    v34 = (v33 + 24 * v10);
    if (v32 != v34)
    {
      v35 = &v34[3 * (v16 - v31)];
      v36 = v32;
      do
      {
        *v35 = *v36;
        *v36 = 0;
        v36[1] = 0;
        v35[2] = v36[2];
        v36[2] = 0;
        v36 += 3;
        v35 += 3;
      }

      while (v36 != v34);
    }

    sub_29AF16008(&v42, a2, v32, &v34[3 * (v16 - v31)]);
    if (v31 >= 1)
    {
      v37 = v5;
      v5 += 2 * v31;
      do
      {
        v39 = *v37;
        v38 = v37[1];
        if (v38)
        {
          atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
        }

        v40 = v6[1];
        *v6 = v39;
        v6[1] = v38;
        if (v40)
        {
          sub_29A014BEC(v40);
        }

        v41 = v6[2];
        if ((v41 & 7) != 0)
        {
          atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v6[2] = 0;
        v37 += 2;
        v6 += 3;
        --v31;
      }

      while (v31);
    }

    v28 = a1;
    if (*(a1 + 196) < 9u)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v17 = a1;
  if (v8 >= 9)
  {
    v17 = *a1;
  }

  v18 = a2 - v17;
  v19 = malloc(24 * v15);
  v20 = v19;
  v21 = &v18[v19];
  v22 = a1;
  if (v8 >= 9)
  {
    v22 = *a1;
  }

  if (v22 != v6)
  {
    v23 = v19;
    do
    {
      *v23 = *v22;
      *v22 = 0;
      v22[1] = 0;
      *(v23 + 2) = v22[2];
      v22[2] = 0;
      v22 += 3;
      v23 += 24;
    }

    while (v22 != v6);
  }

  sub_29AF15F88(v5, a4, v21);
  v24 = a1;
  if (*(a1 + 196) >= 9u)
  {
    v24 = *a1;
  }

  v25 = (v24 + 24 * *(a1 + 192));
  if (v25 != v6)
  {
    v26 = &v21[24 * v16];
    do
    {
      *v26 = *v6;
      v27 = v6[2];
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      v6 += 3;
      *(v26 + 2) = v27;
      v26 += 24;
    }

    while (v6 != v25);
  }

  sub_29AF153F4(a1);
  if (*(a1 + 196) >= 9u)
  {
    free(*a1);
  }

  *a1 = v20;
  *(a1 + 196) = v15;
LABEL_28:
  *(a1 + 192) += v12 >> 4;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::_LookupWrappedPrimAdapter(pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  sub_29AF160E4(this, a2, v15);
  v4 = v15[0];
  if (v15[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = v15[1] == this + 16;
  }

  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::_ComputeWrappedPrimAdapter(a2, &v9);
    v6 = *a2;
    v11 = v6;
    if ((v6 & 7) != 0)
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 = v7;
      }
    }

    v12 = v9;
    v9 = 0uLL;
    v13 = v10;
    v10 = 0uLL;
    sub_29AF16418(this, &v11, 0, v14);
    if (*(&v13 + 1))
    {
      sub_29A014BEC(*(&v13 + 1));
    }

    if (*(&v12 + 1))
    {
      sub_29A014BEC(*(&v12 + 1));
    }

    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (*(&v10 + 1))
    {
      sub_29A014BEC(*(&v10 + 1));
    }

    if (*(&v9 + 1))
    {
      sub_29A014BEC(*(&v9 + 1));
    }

    v4 = v14[0];
  }

  return v4 + 16;
}

void sub_29AF14B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_29ABDDC88(&a13);
  sub_29A95E544(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AF14B34(uint64_t a1, void *a2)
{
  v4 = *(a1 + 192);
  v5 = *(a1 + 196);
  if (v4 == v5)
  {
    sub_29AF15ED8(a1, v4 + (v4 >> 1) + 1);
    v5 = *(a1 + 196);
  }

  v6 = a1;
  if (v5 >= 9)
  {
    v6 = *a1;
  }

  v7 = (v6 + 24 * *(a1 + 192));
  v9 = 0;
  result = sub_29AF1609C(v7, a2, &v9);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  ++*(a1 + 192);
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::_LookupAPISchemaAdapter(pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29AF16C00(this + 560, a2, v13);
  if (v13[0])
  {
    v6 = 0;
  }

  else
  {
    v6 = v13[1] == this + 576;
  }

  if (v6)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance);
    if (!v8)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::ConstructAPISchemaAdapter(v8, a2, a3);
    v9 = sub_29AF14FC0(this + 560, a2);
    v11 = *a3;
    v10 = a3[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = v9[1];
    *v9 = v11;
    v9[1] = v10;
    if (v12)
    {
      sub_29A014BEC(v12);
    }
  }

  else
  {
    v7 = *(v13[0] + 24);
    *a3 = *(v13[0] + 16);
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29AF14CA0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF14CB8(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *(a1 + 192);
  v7 = *(a1 + 196);
  if (v6 == v7)
  {
    sub_29AF15ED8(a1, v6 + (v6 >> 1) + 1);
    v7 = *(a1 + 196);
  }

  v8 = a1;
  if (v7 >= 9)
  {
    v8 = *a1;
  }

  result = sub_29AF1609C((v8 + 24 * *(a1 + 192)), a2, a3);
  ++*(a1 + 192);
  return result;
}

uint64_t sub_29AF14D3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_AdapterManager::_ComputeWrappedPrimAdapter(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry>::_CreateInstance();
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::UsdImagingAdapterRegistry::ConstructAdapter(v4, a1, &v11);
  v5 = v11;
  *a2 = v11;
  if (v5)
  {
    v6 = operator new(0x40uLL);
    v7 = v6;
    v6->__shared_owners_ = 0;
    v6->__shared_weak_owners_ = 0;
    v6->__vftable = &unk_2A209DA80;
    v8 = v6 + 1;
    v6[1].__shared_owners_ = 0;
    v6[1].__shared_weak_owners_ = 0;
    v6[1].__vftable = &unk_2A209DAD0;
    v6[2].std::__shared_count = v5;
    if (*(&v5 + 1))
    {
      atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6[1].__shared_owners_ = v8;
    v6[1].__shared_weak_owners_ = v6;
    sub_29A014BEC(v6);
    *(a2 + 16) = v8;
    *(a2 + 24) = v7;
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A174FF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FF10))
    {
      sub_29AF14F28(&v11);
      xmmword_2A174FF00 = v11;
      __cxa_atexit(sub_29AF14D3C, &xmmword_2A174FF00, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174FF10);
    }

    v9 = xmmword_2A174FF00;
    if (*(&xmmword_2A174FF00 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A174FF00 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(a2 + 24);
    *(a2 + 16) = v9;
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }
}

void sub_29AF14EFC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A174FF10);
  sub_29A95E544(v1);
  _Unwind_Resume(a1);
}

void sub_29AF14F28(void *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  v2->__shared_weak_owners_ = 0;
  v2->__shared_owners_ = 0;
  v2->__vftable = &unk_2A209DB28;
  v2[1].__vftable = &unk_2A209DB78;
  v2[1].__shared_owners_ = &v2[1];
  *a1 = v2 + 1;
  a1[1] = v2;
  atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v2[1].__shared_weak_owners_ = v2;

  sub_29A014BEC(v2);
}

uint64_t sub_29AF14FC0(uint64_t a1, uint64_t *a2)
{
  sub_29AF16C00(a1, a2, &v11);
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
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    sub_29AF16F34(a1, v8, 0, &v10);
    v11 = v10;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if ((v8[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v8[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 = v11;
  }

  return v4 + 16;
}

void sub_29AF15078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF15098(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AF150CC(a1 + 16);
  return a1;
}

uint64_t sub_29AF150CC(uint64_t a1)
{
  sub_29AF15108(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AF15150(a1, v2);
  return a1;
}

uint64_t sub_29AF15108(uint64_t result)
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
      result = sub_29AF15150(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AF15150(int a1, tbb::internal *this)
{
  if (*(this + 232))
  {
    v3 = *(this + 28);
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    sub_29AF153B4(this + 16);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

uint64_t sub_29AF151A0(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AF151D4(a1 + 16);
  return a1;
}

uint64_t sub_29AF151D4(uint64_t a1)
{
  sub_29AF15210(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AF15258(a1, v2);
  return a1;
}

uint64_t sub_29AF15210(uint64_t result)
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
      result = sub_29AF15258(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AF15258(int a1, tbb::internal *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 3);
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    v4 = *(this + 1);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

uint64_t sub_29AF152B8(uint64_t a1, void *a2)
{
  sub_29A1B0420(a1, a2);
  sub_29AF152EC(a1 + 16);
  return a1;
}

uint64_t sub_29AF152EC(uint64_t a1)
{
  sub_29AF15328(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AF15370(a1, v2);
  return a1;
}

uint64_t sub_29AF15328(uint64_t result)
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
      result = sub_29AF15370(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AF15370(uint64_t a1, tbb::internal *this)
{
  if (*(this + 48))
  {
    sub_29ADCBEF8(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

uint64_t sub_29AF153B4(uint64_t a1)
{
  sub_29AF153F4(a1);
  if (*(a1 + 196) >= 9u)
  {
    free(*a1);
  }

  return a1;
}

void sub_29AF153F4(uint64_t *a1)
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
    v4 = v1 + 2;
    do
    {
      if ((*v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = *(v4 - 1);
      if (v5)
      {
        sub_29A014BEC(v5);
      }

      v4 += 3;
      v3 -= 24;
    }

    while (v3);
  }
}

uint64_t sub_29AF15474(uint64_t a1, uint64_t a2)
{
  *(a1 + 192) = 0x800000000;
  v4 = *(a2 + 192);
  if (v4 < 9)
  {
    if (*(a2 + 196) >= 9u)
    {
      v5 = *a2;
    }

    else
    {
      v5 = a2;
    }

    if (v4)
    {
      v6 = v5 + 24 * v4;
      v7 = a1;
      do
      {
        *v7 = *v5;
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v7 + 16) = *(v5 + 16);
        *(v5 + 16) = 0;
        v5 += 24;
        v7 += 24;
      }

      while (v5 != v6);
    }

    sub_29AF153F4(a2);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 196) = *(a2 + 196);
    *(a2 + 196) = 8;
  }

  v8 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = v8;
  return a1;
}

uint64_t sub_29AF15530(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x38);
  v5[6] = 0;
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

uint64_t sub_29AF15688(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x28);
  v5[4] = 0;
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

uint64_t sub_29AF157E0(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0xF0);
  v5[29] = 0;
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

void sub_29AF15938(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * *a2);
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
  sub_29AF15A10(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[29];
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

void sub_29AF15A10(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29AF15AAC(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AF15AAC(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AF15AAC(a1, v4);
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

  sub_29AF15B90(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AF15B90@<X0>(int a1@<W0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0xF0);
  *(result + 29) = a3;
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
      v10 = i[29];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AF15150(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AF15C64(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * *a2);
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
  sub_29AF15A10(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    a3[29] = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[29];
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
            sub_29AF15150(a1 + 16, a3);
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

        v17 = v16[29];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = sub_29AF15E4C(a1 + 16, v12, a2);
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

uint64_t sub_29AF15E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0xF0);
  *(v5 + 8) = *a3;
  sub_29AF15474(v5 + 16, a3 + 8);
  *(v5 + 216) = *(a3 + 208);
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(v5 + 232) = a2;
  *v5 = 0;
  return v5;
}

void sub_29AF15EB0(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

void sub_29AF15ED8(uint64_t a1, uint64_t a2)
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
      *(v6 + 8) = 0;
      v9[2] = *(v6 + 16);
      *(v6 + 16) = 0;
      v6 += 24;
      v9 += 3;
    }

    while (v6 != v8);
  }

  sub_29AF153F4(a1);
  if (*(a1 + 196) >= 9u)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 196) = v2;
}

void *sub_29AF15F88(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = 0;
      sub_29AF1609C(a3, v5, &v7);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 += 2;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void *sub_29AF16008(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = a3 - 1;
    v7 = (a4 - 8);
    do
    {
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(v7 - 1);
      *(v7 - 2) = v9;
      *(v7 - 1) = v8;
      if (v10)
      {
        sub_29A014BEC(v10);
      }

      sub_29A166F2C(v7, v6);
      v11 = v6 - 2;
      v6 -= 3;
      v7 -= 3;
    }

    while (v11 != a2);
  }

  return a3;
}

void *sub_29AF1609C(void *result, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  *result = *a2;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a3;
  result[2] = *a3;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_29AF160E4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
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
  sub_29AF161C4(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[6];
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

void sub_29AF161C4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29AF16260(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AF16260(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AF16260(a1, v4);
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

  sub_29AF16344(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AF16344@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x38);
  *(result + 6) = a3;
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
      v10 = i[6];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AF15370(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AF16418(uint64_t a1@<X0>, uint64_t *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
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
  sub_29AF161C4(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 6) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[6];
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
            sub_29AF15370(a1 + 16, a3);
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

        v17 = v16[6];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = tbb::internal::allocate_via_handler_v3(0x38);
      sub_29AF16610(a3 + 8, a2);
      *(a3 + 6) = v12;
      *a3 = 0;
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

__n128 sub_29AF16610(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = *(a2 + 1);
  a2[1] = 0;
  a2[2] = 0;
  result = *(a2 + 3);
  *(a1 + 24) = result;
  a2[3] = 0;
  a2[4] = 0;
  return result;
}

void sub_29AF16678(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209DA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF166E4(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *this)
{
  *this = &unk_2A209DAD0;
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(this);
}

void sub_29AF16740(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *this)
{
  *this = &unk_2A209DAD0;
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(this);

  operator delete(v3);
}

void sub_29AF1686C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209DB28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF168DC(pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingAPISchemaAdapter::~UsdImagingAPISchemaAdapter(a1);

  operator delete(v1);
}

void sub_29AF16904(pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  if (!*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_29AF16990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *sub_29AF169B8@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  v13 = *a2;
  v9 = *(a2 + 1);
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 6, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4(&v15, a2 + 4);
  sub_29A1E2240(&v16, a2 + 5);
  v10 = *(a2 + 3);
  v17 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingDataSourcePrim::UsdImagingDataSourcePrim(v8, a1, &v13, a3);
  sub_29AF16AF4(a4, v8);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v16);
  sub_29A1DE3A4(&v15);
  result = v14;
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14, v11);
  }

  return result;
}

void *sub_29AF16AF4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209DBD0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF16B4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF16B68(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF16B90(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF16BC0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209DC20))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF16C00(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
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
  sub_29AF16CE0(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[4];
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

void sub_29AF16CE0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29AF16D7C(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AF16D7C(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AF16D7C(a1, v4);
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

  sub_29AF16E60(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AF16E60@<X0>(int a1@<W0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x28);
  *(result + 4) = a3;
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
      v10 = i[4];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AF15258(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AF16F34(uint64_t a1@<X0>, uint64_t *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
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
  sub_29AF16CE0(a1, v8, &v25);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 4) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v25;
    v16 = *v25;
    if (*v25)
    {
      v17 = v16[4];
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
            sub_29AF15258(a1 + 16, a3);
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

        v17 = v16[4];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = tbb::internal::allocate_via_handler_v3(0x28);
      sub_29AF1712C(a3 + 8, a2);
      *(a3 + 4) = v12;
      *a3 = 0;
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

__n128 sub_29AF1712C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  result = *(a2 + 1);
  *(a1 + 8) = result;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::~UsdImaging_DrawModeStandin(pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin *this)
{
  *this = &unk_2A209DC48;
  v2 = *(this + 3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);
}

void *pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin *this)
{
  if ((atomic_load_explicit(&qword_2A17509C8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CBB54();
  }

  return &unk_2A17509E8;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetDescendantPrim@<X0>(char **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2) && pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(a2, (this + 1)))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(a2, this + 1, &v7);
    (*(*this + 5))(this, &v7);
    (*(*this + 6))(this, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
    return sub_29A1DE3A4(&v7);
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2);
    if (result)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      (*(*this + 5))(this, a2);
      return (*(*this + 6))(this, a2);
    }
  }

  return result;
}

void sub_29AF17360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if ((*v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetDescendantPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin *this@<X0>, uint64_t a2@<X8>)
{
  (*(*this + 32))(&v6);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29A2FCAE8(a2, (v7 - v6) >> 3);
  v4 = v6;
  for (i = v7; v4 != i; v4 = (v4 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath((this + 8), v4, &v8);
    sub_29A377BD0(a2, &v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8 + 1);
    sub_29A1DE3A4(&v8);
  }

  v8 = &v6;
  sub_29A1E234C(&v8);
}

void sub_29AF1748C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_29A1E234C(&a12);
  a12 = &a9;
  sub_29A1E234C(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::ComputePrimAddedEntries(_DWORD *a1, _DWORD *a2)
{
  v9 = 0;
  sub_29AC3C228(&v11, a1 + 2, &v9);
  sub_29AC3D658(a2, &v11);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11 + 1);
  sub_29A1DE3A4(&v11);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  (*(*a1 + 32))(&v11, a1);
  v4 = v11;
  for (i = v12; v4 != i; v4 = (v4 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath((a1 + 2), v4, &v7);
    (*(*a1 + 40))(&v6, a1, v4);
    sub_29AC3C228(&v9, &v7, &v6);
    sub_29AC3D658(a2, &v9);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
    sub_29A1DE3A4(&v9);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
    sub_29A1DE3A4(&v7);
  }

  v9 = &v11;
  sub_29A1E234C(&v9);
}

void sub_29AF1767C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29AC3B4B8(va);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::ComputePrimRemovedEntries(_DWORD *a1, _DWORD *a2)
{
  (*(*a1 + 32))(&v8);
  v4 = v8;
  for (i = v9; v4 != i; v4 = (v4 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath((a1 + 2), v4, &v6);
    sub_29A1E21F4(&v10, &v6);
    sub_29A1E2240(&v10 + 1, &v7);
    sub_29AC3D914(a2, &v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
    sub_29A1DE3A4(&v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
    sub_29A1DE3A4(&v6);
  }

  sub_29A1E21F4(&v10, a1 + 2);
  sub_29A1E2240(&v10 + 1, a1 + 3);
  sub_29AC3D914(a2, &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10 + 1);
  sub_29A1DE3A4(&v10);
  v10 = &v8;
  sub_29A1E234C(&v10);
}

void sub_29AF17824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_29AC3C0E4(&a14);
  a14 = &a11;
  sub_29A1E234C(&a14);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImaging_GetDrawModeStandin@<X0>(void *result@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*result)
  {
    v7 = result;
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v8)
    {
      v8 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v8 + 8) ^ *v7) <= 7)
    {
      v9 = operator new(0x38uLL);
      v9[1] = 0;
      v9[2] = 0;
      *v9 = &unk_2A209DCA0;
      result = sub_29AF17B7C((v9 + 3), a2, a3);
      v10 = &unk_2A209DCF0;
LABEL_10:
      v9[3] = v10;
      *a4 = result;
LABEL_11:
      a4[1] = v9;
      return result;
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v11)
    {
      v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((*(v11 + 94) ^ *v7) <= 7)
    {
      v9 = operator new(0x38uLL);
      v9[1] = 0;
      v9[2] = 0;
      *v9 = &unk_2A209E1B0;
      result = sub_29AF17B7C((v9 + 3), a2, a3);
      v10 = &unk_2A209E200;
      goto LABEL_10;
    }

    result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!result)
    {
      result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    if ((result[11] ^ *v7) <= 7)
    {
      v9 = operator new(0x48uLL);
      v9[1] = 0;
      v9[2] = 0;
      *v9 = &unk_2A209E3E0;
      sub_29AF17B7C((v9 + 3), a2, a3);
      v9[3] = &unk_2A209E430;
      v12 = operator new(0x40uLL);
      v12[1] = 0;
      v12[2] = 0;
      *v12 = &unk_2A209E490;
      v12[3] = 0;
      v12[4] = 0;
      sub_29A1E21F4(v12 + 10, a2);
      result = sub_29A1E2240(v12 + 11, a2 + 1);
      v13 = a3[1];
      v12[6] = *a3;
      v12[7] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v9[7] = v12 + 3;
      v9[8] = v12;
      *a4 = v9 + 3;
      goto LABEL_11;
    }
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

void sub_29AF17AD0(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::~UsdImaging_DrawModeStandin(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_29AF17B10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209DCA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF17B7C(uint64_t a1, _DWORD *a2, void *a3)
{
  *a1 = &unk_2A209DC48;
  sub_29A1E21F4((a1 + 8), a2);
  sub_29A1E2240((a1 + 12), a2 + 1);
  v6 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_29AF17BF8(pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::~UsdImaging_DrawModeStandin(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29AF17C20@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v3 = *(result + 8);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

void sub_29AF17C84(pxrInternal__aapl__pxrReserved__::HdExtentSchema *a1, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2, uint64_t a3)
{
  v21[57] = *MEMORY[0x29EDCA608];
  DefaultLocator = pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetDefaultLocator(a1);
  v7 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(a2, DefaultLocator);
  if ((atomic_load_explicit(&qword_2A1750038, memory_order_acquire) & 1) == 0)
  {
    v10 = __cxa_guard_acquire(&qword_2A1750038);
    if (v10)
    {
      v11 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v10);
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v12)
      {
        v12 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v11, (v12 + 24), dword_2A1750000);
      __cxa_atexit(sub_29ABC33B4, dword_2A1750000, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1750038);
    }
  }

  v8 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(a2, dword_2A1750000);
  if (v7 || v8)
  {
    v9 = v8;
    sub_29ABD2F88(v21, a2);
    if (v7)
    {
      if ((atomic_load_explicit(&qword_2A1750078, memory_order_acquire) & 1) == 0)
      {
        v13 = __cxa_guard_acquire(&qword_2A1750078);
        if (v13)
        {
          PointsLocator = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPointsLocator(v13);
          v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v15)
          {
            v15 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(PointsLocator, v15, dword_2A1750040);
          __cxa_atexit(sub_29ABC33B4, dword_2A1750040, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1750078);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v21, dword_2A1750040);
    }

    if (v9)
    {
      if ((atomic_load_explicit(&qword_2A17500B8, memory_order_acquire) & 1) == 0)
      {
        v16 = __cxa_guard_acquire(&qword_2A17500B8);
        if (v16)
        {
          v17 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v16);
          v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v18)
          {
            v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v17, (v18 + 152), dword_2A1750080);
          __cxa_atexit(sub_29ABC33B4, dword_2A1750080, &dword_299FE7000);
          __cxa_guard_release(&qword_2A17500B8);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v21, dword_2A1750080);
    }

    pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetDescendantPrimPaths(a1, v19);
    if (v19[0] != v19[1])
    {
      sub_29ABD2F24(v20, v19[0], v21);
      sub_29AC3DA10(a3, v20);
      sub_29ABD3178();
    }

    v20[0] = v19;
    sub_29A1E234C(v20);
    sub_29ABD3178();
  }

  pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetDescendantPrimPaths(a1, v21);
  if (v21[0] != v21[1])
  {
    sub_29ABD2F24(v20, v21[0], a2);
    sub_29AC3DA10(a3, v20);
    sub_29ABD3178();
  }

  v20[0] = v21;
  sub_29A1E234C(v20);
}

void sub_29AF180A8(void *a1@<X8>)
{
  v1 = a1;
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17500D8, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A17500D8);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(qword_2A17500E0);
      if (!v4)
      {
        v4 = sub_29AF183E4();
      }

      if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v6, EmptyString);
      qword_2A17500C0 = 0;
      *algn_2A17500C8 = 0;
      qword_2A17500D0 = 0;
      sub_29A65B758(&qword_2A17500C0, &v6, &v7, 1uLL);
      sub_29A1DCEA8(&v6);
      __cxa_atexit(sub_29A419524, &qword_2A17500C0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17500D8);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29AF181FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  sub_29A1DCEA8(&a9);
  __cxa_guard_abort(&qword_2A17500D8);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *sub_29AF1822C@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!result)
  {
    result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v3 = *(result + 10);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

void *sub_29AF18290@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = v4;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *v4 = &unk_2A209DDB0;
  v4[1] = v7;
  v4[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2A209DD50;
  result = operator new(0x20uLL);
  *result = &unk_2A209E138;
  result[1] = 0;
  result[2] = 0;
  result[3] = v5;
  *a2 = v5;
  a2[1] = result;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens_StaticTokenType *sub_29AF18358(atomic_ullong *a1)
{
  result = sub_29AF183A0();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens_StaticTokenType::~UsdImagingGeomModelSchemaTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens_StaticTokenType *sub_29AF183A0()
{
  v0 = operator new(0xB0uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens_StaticTokenType::UsdImagingGeomModelSchemaTokens_StaticTokenType(v0);
  return v0;
}

unint64_t sub_29AF183E4()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "boundsCurves", 0);
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(qword_2A17500E0, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(qword_2A17500E0);
  }

  return v0;
}

void sub_29AF18504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_29AF18550(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DDB0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF185AC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DDB0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AF1860C(void *a1@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(qword_2A1750120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1750120))
  {
    sub_29AF18CAC(v8);
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    }

    v10 = *v2;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!v3)
    {
      v3 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    v11 = *v3;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    }

    v12 = *v4;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    memset(v7, 0, sizeof(v7));
    sub_29A12EF7C(v7, &v10, &v13, 3uLL);
    sub_29AF192D8(v8, v7, &qword_2A1750108);
    v9 = v7;
    sub_29A124AB0(&v9);
    for (i = 16; i != -8; i -= 8)
    {
      v6 = *(&v10 + i);
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v7[0] = v8;
    sub_29A124AB0(v7);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1750108, &dword_299FE7000);
    __cxa_guard_release(qword_2A1750120);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF18854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  __cxa_guard_abort(qword_2A1750120);
  _Unwind_Resume(a1);
}

void sub_29AF18900(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    if ((*v8 ^ *a2) > 7)
    {
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
      if (!v14)
      {
        v14 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
      }

      if ((*v14 ^ *a2) > 7)
      {

        sub_29AF18F38(a1, a2, a3);
      }

      else
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v16 = *(*v15 + 24);

          v16();
        }

        else
        {
          *a3 = 0;
          a3[1] = 0;
        }
      }
    }

    else
    {
      v9 = operator new(0x18uLL);
      v10 = v9;
      v12 = *(a1 + 8);
      v11 = *(a1 + 16);
      *v9 = &unk_2A209DE40;
      v9[1] = v12;
      v9[2] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *v9 = &unk_2A209DDE0;
      v13 = operator new(0x20uLL);
      *v13 = &unk_2A209E0C0;
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = v10;
      *a3 = v10;
      a3[1] = v13;
    }
  }

  else
  {
    if ((atomic_load_explicit(qword_2A1750140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1750140))
    {
      v18 = 0;
      v19 = 0;
      sub_29AF19388(&v17);
    }

    v7 = *(&xmmword_2A1750130 + 1);
    *a3 = xmmword_2A1750130;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29AF18BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  __cxa_guard_abort(qword_2A1750140);
  _Unwind_Resume(a1);
}

void sub_29AF18BF0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DDB0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF18C4C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DDB0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29AF18CAC@<X0>(void *a1@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  }

  v3 = *v2;
  v15 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  if (!v4)
  {
    v4 = sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  }

  v5 = *v4;
  v16 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  }

  v7 = *v6;
  v17 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
  }

  v9 = *v8;
  v18 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v10)
  {
    v10 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  v11 = *v10;
  v19 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v15, &v20, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v14 = *(&v15 + i);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF18EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v11 = *--v9;
    v10 = v11;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v9 == &a9)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AF18F38(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE36C(&pxrInternal__aapl__pxrReserved__::HdXformSchemaTokens);
  }

  if ((*v6 ^ *a2) < 8)
  {
    goto LABEL_13;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABEE254(&pxrInternal__aapl__pxrReserved__::HdPurposeSchemaTokens);
  }

  if ((*v7 ^ *a2) < 8)
  {
    goto LABEL_13;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  if (!v8)
  {
    v8 = sub_29ABEE2E0(&pxrInternal__aapl__pxrReserved__::HdVisibilitySchemaTokens);
  }

  if ((*v8 ^ *a2) < 8)
  {
    goto LABEL_13;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
  if (!v9)
  {
    v9 = sub_29ABEE6B4(&pxrInternal__aapl__pxrReserved__::HdInstancedBySchemaTokens);
  }

  if ((*v9 ^ *a2) <= 7)
  {
LABEL_13:
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = *(*v10 + 24);

      v11();
      return;
    }

LABEL_23:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  if (!v12)
  {
    v12 = sub_29ABEDC10(&pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchemaTokens);
  }

  if ((*v12 ^ *a2) > 7)
  {
    goto LABEL_23;
  }

  if ((atomic_load_explicit(&qword_2A1750100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750100))
  {
    memset(v18, 0, sizeof(v18));
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
    if (!v14)
    {
      v14 = sub_29ABF4404(&pxrInternal__aapl__pxrReserved__::HdCullStyleTokens);
    }

    sub_29ABCCFA4(v14 + 2, &v16);
    v17 = v16;
    v16 = 0uLL;
    v15 = pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::SetCullStyle(v18, &v17);
    pxrInternal__aapl__pxrReserved__::HdLegacyDisplayStyleSchema::Builder::Build(v15, &v19);
    xmmword_2A17500F0 = v19;
    v19 = 0uLL;
    if (*(&v17 + 1))
    {
      sub_29A014BEC(*(&v17 + 1));
    }

    if (*(&v16 + 1))
    {
      sub_29A014BEC(*(&v16 + 1));
    }

    sub_29AF19218(v18);
    __cxa_atexit(sub_29AD26C2C, &xmmword_2A17500F0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1750100);
  }

  v13 = *(&xmmword_2A17500F0 + 1);
  *a3 = xmmword_2A17500F0;
  a3[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29AF191D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29AF19218(va);
  __cxa_guard_abort(&qword_2A1750100);
  _Unwind_Resume(a1);
}

void *sub_29AF19218(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = a1[5];
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = a1[3];
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = a1[1];
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return a1;
}

uint64_t sub_29AF192A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

char *sub_29AF192D8@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29A1D7F98(a3, a2[1] - *a2 + a1[1] - *a1);
  sub_29A372808(a3, a3[1], *a1, a1[1], a1[1] - *a1);
  return sub_29A372808(a3, a3[1], *a2, a2[1], a2[1] - *a2);
}

void sub_29AF19368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29AF19388(_OWORD *a1@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  v24 = xmmword_29B71771C;
  v25 = unk_29B71772C;
  v26 = xmmword_29B71773C;
  v27 = unk_29B71774C;
  v22 = xmmword_29B7176FC;
  v23 = unk_29B71770C;
  sub_29A9096F4(v21, &v22, 24);
  LODWORD(v22) = v21[0];
  sub_29A9096F4(v20, &v22, 1);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  sub_29ABF4FA0(v20, &v18);
  v19 = v18;
  v18 = 0uLL;
  v2 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetCurveVertexCounts(&v22, &v19);
  sub_29ABF4FA0(v21, &v16);
  v17 = v16;
  v16 = 0uLL;
  v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetCurveIndices(v2, &v17);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v4)
  {
    v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29ABCCFA4(v4 + 6, &v14);
  v15 = v14;
  v14 = 0uLL;
  v5 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetBasis(v3, &v15);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29ABCCFA4(v6 + 44, &v12);
  v13 = v12;
  v12 = 0uLL;
  v7 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetType(v5, &v13);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29ABCCFA4(v8 + 72, &v10);
  v11 = v10;
  v10 = 0uLL;
  v9 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetWrap(v7, &v11);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::Build(v9, a1);
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

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AF1961C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29AF19720(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DE40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF1977C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DE40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AF197DC(void *a1@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17501A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17501A0))
  {
    sub_29AF19C40(v6);
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    v3 = *(v2 + 1);
    v8 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v8 = v4;
      }
    }

    memset(v5, 0, sizeof(v5));
    sub_29A12EF7C(v5, &v8, &v9, 1uLL);
    sub_29AF192D8(v6, v5, &qword_2A1750188);
    v7 = v5;
    sub_29A124AB0(&v7);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5[0] = v6;
    sub_29A124AB0(v5);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1750188, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17501A0);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF19960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  __cxa_guard_abort(&qword_2A17501A0);
  _Unwind_Resume(a1);
}

void sub_29AF199CC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {

    sub_29AF19E1C(a1, a2, a3);
  }

  else
  {
    v7 = operator new(0x18uLL);
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    v7->~__shared_weak_count = &unk_2A209DFF8;
    v7->~__shared_weak_count_0 = v9;
    v7->__on_zero_shared = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = operator new(0x20uLL);
    v10->__vftable = &unk_2A209E048;
    v10->__shared_owners_ = 0;
    v10->__shared_weak_owners_ = 0;
    v10[1].__vftable = v7;
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v11)
    {
      v11 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v12)
    {
      v12 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v13 = operator new(0x28uLL);
    v15[0] = v7;
    v15[1] = v10;
    sub_29AF1A374(v13, v15, v11 + 9, v12 + 12);
    sub_29AF1A404(&v14, v13);
    sub_29A014BEC(v10);
    *a3 = v14;
  }
}

void sub_29AF19B84(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DE40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF19BE0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DE40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void *sub_29AF19C40@<X0>(void *a1@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  }

  v3 = *(v2 + 3);
  v12 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v4;
    }
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = *(v5 + 19);
  v13 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v7)
  {
    v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v8 = *(v7 + 20);
  v14 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v12, &v15, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v12 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF19DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v11 = *--v9;
    v10 = v11;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v9 == &a9)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AF19E1C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  }

  if ((*(v6 + 3) ^ *a2) <= 7)
  {
    if ((atomic_load_explicit(qword_2A1750160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1750160))
    {
      v23 = 1065353216;
      sub_29AA039F4(v24, &v23, 1);
      sub_29ABF6834(v24, &v25);
      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v19)
      {
        v19 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v21 = 0;
      sub_29AF1A2B4(&v25, v19 + 6, &v21, &v27);
      xmmword_2A1750150 = v27;
      v27 = 0uLL;
      if (v26)
      {
        sub_29A014BEC(v26);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    v7 = &xmmword_2A1750150;
LABEL_6:
    v9 = *v7;
    v8 = *(v7 + 1);
    *a3 = v9;
    a3[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    return;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v10)
  {
    v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v10 + 19) ^ *a2) > 7)
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v18)
    {
      v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v18 + 20) ^ *a2) > 7)
    {
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    if ((atomic_load_explicit(&qword_2A1750180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750180))
    {
      v23 = 1065353216;
      sub_29AA039F4(v24, &v23, 1);
      sub_29ABF6834(v24, &v25);
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v20)
      {
        v20 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v21 = 0;
      sub_29AF1A2B4(&v25, v20 + 6, &v21, &v27);
      xmmword_2A1750170 = v27;
      v27 = 0uLL;
      if (v26)
      {
        sub_29A014BEC(v26);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }

    v7 = &xmmword_2A1750170;
    goto LABEL_6;
  }

  pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetFromParent((a1 + 8), &v21);
  v11 = operator new(0x18uLL);
  v12 = v21;
  v13 = v22;
  v21 = 0;
  v22 = 0;
  *v11 = &unk_2A209DF30;
  v11[1] = v12;
  v11[2] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AF1A928(&v25, v11);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v14)
  {
    v14 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v15)
  {
    v15 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v16 = operator new(0x28uLL);
  v17 = v26;
  v24[0] = v25;
  v24[1] = v26;
  v25 = 0;
  v26 = 0;
  sub_29AF1A374(v16, v24, v14 + 6, v15 + 15);
  sub_29AF1A404(&v27, v16);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  *a3 = v27;
  v27 = 0uLL;
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }
}

void sub_29AF1A1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AF1A2B4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x28uLL);
  v9 = a1[1];
  v10[0] = *a1;
  v10[1] = v9;
  *a1 = 0;
  a1[1] = 0;
  sub_29AF1A374(v8, v10, a2, a3);
  sub_29AF1A404(a4, v8);
  if (v9)
  {

    sub_29A014BEC(v9);
  }
}

void sub_29AF1A35C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF1A374(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = &unk_2A209DE70;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  result[3] = *a3;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[3] &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *a4;
  result[4] = *a4;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void *sub_29AF1A404(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209DEB8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF1A45C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29AF1A8AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF1A474(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
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
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF1A4E4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
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
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v5);
}

void *sub_29AF1A558@<X0>(void *a1@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v2)
  {
    v2 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v3 = *v2;
  v12 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v4;
    }
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v5)
  {
    v5 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v6 = *(v5 + 3);
  v13 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v7)
  {
    v7 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  v8 = *(v7 + 4);
  v14 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_29A12EF7C(a1, &v12, &v15, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v12 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF1A6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v11 = *--v9;
    v10 = v11;
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v9 == &a9)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AF1A72C(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    if ((*(v8 + 3) ^ *a2) > 7)
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v9)
      {
        v9 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      if ((*(v9 + 4) ^ *a2) > 7)
      {
        *a3 = 0;
        a3[1] = 0;
        return;
      }

      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildRoleDataSource((a1 + 4), &v10);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::BuildInterpolationDataSource((a1 + 3), &v10);
    }

    *a3 = v10;
    return;
  }

  v7 = a1[2];
  *a3 = a1[1];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29AF1A83C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF1A86C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209DF08))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF1A8AC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  if (this)
  {
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
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

    operator delete(v5);
  }
}

void *sub_29AF1A928(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209DF80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF1A980(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29AD71B5C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF1A998(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF1A9D8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

_DWORD *sub_29AF1AA1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  v4 = sub_29AF1AB48(a1, a3);
  v6 = v5;
  v8 = v7;
  a2[1] = &off_2A2042840 + 2;
  result = operator new(0x10uLL);
  *result = v4;
  result[1] = v6;
  result[2] = v8;
  atomic_store(0, result + 3);
  *a2 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29AF1AA90(uint64_t a1, uint64_t a2, float a3, float a4)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDrawModeColor((a1 + 8), &v9);
  v7 = v9;
  if (v9)
  {
    LOBYTE(a2) = (*(*v9 + 24))(v9, a2, a3, a4);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return (v7 != 0) & a2;
}

void sub_29AF1AB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

float sub_29AF1AB48(uint64_t a1, float a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDrawModeColor((a1 + 8), &v5);
  if (v5)
  {
    v3 = (*(*v5 + 32))(v5, a2);
  }

  else
  {
    v3 = 0.18;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return v3;
}

void sub_29AF1ABF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF1AC10(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF1AC40(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209DFD0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF1AC80(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF1ACC0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AF1AD04(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  sub_29AF1AED0(a1, v4, a3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v4);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AF1AD70(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v18 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetFromParent((a1 + 8), &v14);
  pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMin(&v14, &v12);
  v16[0] = v12;
  v16[1] = v13;
  v12 = 0;
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMax(&v14, &v11);
  v17 = v11;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  MergedContributingSampleTimesForInterval = pxrInternal__aapl__pxrReserved__::HdGetMergedContributingSampleTimesForInterval(2, v16, a2, a3, a4);
  for (i = 3; i != -1; i -= 2)
  {
    v9 = v16[i];
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }

  return MergedContributingSampleTimesForInterval;
}

void sub_29AF1AE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  v17 = 24;
  while (1)
  {
    v18 = *(v15 + v17);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    v17 -= 16;
    if (v17 == -8)
    {
      if (a15)
      {
        sub_29A014BEC(a15);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

void sub_29AF1AED0(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetFromParent((a1 + 8), &v28);
  pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMin(&v28, &v26);
  if (v26)
  {
    v5 = (*(*v26 + 32))(v26, a3);
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
    v9 = 0.0;
  }

  if (v27)
  {
    sub_29A014BEC(v27);
  }

  pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMax(&v28, &v26);
  if (v26)
  {
    v10 = (*(*v26 + 32))(v26, a3);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
  }

  if (v27)
  {
    sub_29A014BEC(v27);
  }

  sub_29A193124(a2, 8uLL);
  v15 = 0;
  v16 = 1;
  do
  {
    v17 = v16;
    v18 = 1;
    v19 = v7;
    do
    {
      v20 = v18;
      v21 = 12 * v15;
      v22 = 1;
      v23 = v9;
      do
      {
        v24 = v22;
        sub_29A1935CC(a2);
        v22 = 0;
        v25 = *(a2 + 32) + v21;
        *v25 = v5;
        *(v25 + 4) = v19;
        *(v25 + 8) = v23;
        ++v15;
        v21 += 12;
        v23 = v14;
      }

      while ((v24 & 1) != 0);
      v18 = 0;
      v19 = v12;
    }

    while ((v20 & 1) != 0);
    v16 = 0;
    v5 = v10;
  }

  while ((v17 & 1) != 0);
  if (v29)
  {
    sub_29A014BEC(v29);
  }
}

void sub_29AF1B088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF1B0D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF1B108(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E098))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF1B14C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF1B17C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E110))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF1B1BC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  if (this)
  {
    *this = &unk_2A209DE40;
    v2 = *(this + 2);
    if (v2)
    {
      sub_29A014BEC(v2);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

    operator delete(v3);
  }
}

void sub_29AF1B228(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF1B250(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF1B280(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E188))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF1B2E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209E1B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF1B350(pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::~UsdImaging_DrawModeStandin(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29AF1B378@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v3 = *(result + 94);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

void sub_29AF1B3DC(pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin *a1, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this, uint64_t a3)
{
  v14[57] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17501E0, memory_order_acquire) & 1) == 0)
  {
    v6 = __cxa_guard_acquire(&qword_2A17501E0);
    if (v6)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v6);
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v8)
      {
        v8 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v8 + 24), dword_2A17501A8);
      __cxa_atexit(sub_29ABC33B4, dword_2A17501A8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17501E0);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(this, dword_2A17501A8))
  {
    sub_29ABD2F88(v14, this);
    if ((atomic_load_explicit(&qword_2A1750220, memory_order_acquire) & 1) == 0)
    {
      v9 = __cxa_guard_acquire(&qword_2A1750220);
      if (v9)
      {
        v10 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v9);
        v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v11)
        {
          v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v10, (v11 + 152), dword_2A17501E8);
        __cxa_atexit(sub_29ABC33B4, dword_2A17501E8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1750220);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v14, dword_2A17501E8);
    pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetDescendantPrimPaths(a1, v12);
    if (v12[0] != v12[1])
    {
      sub_29ABD2F24(v13, v12[0], v14);
      sub_29AC3DA10(a3, v13);
      sub_29ABD3178();
    }

    v13[0] = v12;
    sub_29A1E234C(v13);
    sub_29ABD3178();
  }

  pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetDescendantPrimPaths(a1, v14);
  if (v14[0] != v14[1])
  {
    sub_29ABD2F24(v13, v14[0], this);
    sub_29AC3DA10(a3, v13);
    sub_29ABD3178();
  }

  v13[0] = v14;
  sub_29A1E234C(v13);
}

void sub_29AF1B72C(void *a1@<X8>)
{
  v1 = a1;
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1750240, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A1750240);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&qword_2A1750248);
      if (!v4)
      {
        v4 = sub_29AF1B9DC();
      }

      if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v6, EmptyString);
      qword_2A1750228 = 0;
      unk_2A1750230 = 0;
      qword_2A1750238 = 0;
      sub_29A65B758(&qword_2A1750228, &v6, &v7, 1uLL);
      sub_29A1DCEA8(&v6);
      __cxa_atexit(sub_29A419524, &qword_2A1750228, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1750240);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29AF1B880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  sub_29A1DCEA8(&a9);
  __cxa_guard_abort(&qword_2A1750240);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *sub_29AF1B8B0@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!result)
  {
    result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v3 = *(result + 10);
  *a1 = v3;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }

  return result;
}

void *sub_29AF1B914@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = v4;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *v4 = &unk_2A209DDB0;
  v4[1] = v7;
  v4[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2A209E260;
  result = operator new(0x20uLL);
  *result = &unk_2A209E368;
  result[1] = 0;
  result[2] = 0;
  result[3] = v5;
  *a2 = v5;
  a2[1] = result;
  return result;
}

unint64_t sub_29AF1B9DC()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "originCurves", 0);
  v1 = *v0;
  v5 = v1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 = v2;
    }
  }

  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  sub_29A12EF7C(v0 + 1, &v5, &v6, 1uLL);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = 0;
  atomic_compare_exchange_strong(&qword_2A1750248, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A1750248);
  }

  return v0;
}

void sub_29AF1BAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_29AF1BB48(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DDB0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF1BBA4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DDB0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AF1BC04(void *a1@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1750268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750268))
  {
    sub_29AF18CAC(v8);
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
    }

    v10 = *v2;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!v3)
    {
      v3 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    v11 = *v3;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    if (!v4)
    {
      v4 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
    }

    v12 = *v4;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    memset(v7, 0, sizeof(v7));
    sub_29A12EF7C(v7, &v10, &v13, 3uLL);
    sub_29AF192D8(v8, v7, &qword_2A1750250);
    v9 = v7;
    sub_29A124AB0(&v9);
    for (i = 16; i != -8; i -= 8)
    {
      v6 = *(&v10 + i);
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v7[0] = v8;
    sub_29A124AB0(v7);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1750250, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1750268);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF1BE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  __cxa_guard_abort(&qword_2A1750268);
  _Unwind_Resume(a1);
}

void sub_29AF1BEF8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABC3504(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    if ((*v8 ^ *a2) > 7)
    {
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
      if (!v14)
      {
        v14 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
      }

      if ((*v14 ^ *a2) > 7)
      {

        sub_29AF18F38(a1, a2, a3);
      }

      else
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v16 = *(*v15 + 24);

          v16();
        }

        else
        {
          *a3 = 0;
          a3[1] = 0;
        }
      }
    }

    else
    {
      v9 = operator new(0x18uLL);
      v10 = v9;
      v12 = *(a1 + 8);
      v11 = *(a1 + 16);
      *v9 = &unk_2A209DE40;
      v9[1] = v12;
      v9[2] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *v9 = &unk_2A209E2A8;
      v13 = operator new(0x20uLL);
      *v13 = &unk_2A209E2F0;
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = v10;
      *a3 = v10;
      a3[1] = v13;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A1750280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750280))
    {
      v18 = 0;
      v19 = 0;
      sub_29AF1C1E8(&v17);
    }

    v7 = *(&xmmword_2A1750270 + 1);
    *a3 = xmmword_2A1750270;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_29AF1C1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  __cxa_guard_abort(&qword_2A1750280);
  _Unwind_Resume(a1);
}

void sub_29AF1C1E8(_OWORD *a1@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  v22 = xmmword_29B718648;
  *&v23 = 0x300000000;
  sub_29A9096F4(v21, &v22, 6);
  LODWORD(v22) = v21[0];
  sub_29A9096F4(v20, &v22, 1);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  sub_29ABF4FA0(v20, &v18);
  v19 = v18;
  v18 = 0uLL;
  v2 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetCurveVertexCounts(&v22, &v19);
  sub_29ABF4FA0(v21, &v16);
  v17 = v16;
  v16 = 0uLL;
  v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetCurveIndices(v2, &v17);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v4)
  {
    v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29ABCCFA4(v4 + 6, &v14);
  v15 = v14;
  v14 = 0uLL;
  v5 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetBasis(v3, &v15);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29ABCCFA4(v6 + 44, &v12);
  v13 = v12;
  v12 = 0uLL;
  v7 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetType(v5, &v13);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29ABCCFA4(v8 + 72, &v10);
  v11 = v10;
  v10 = 0uLL;
  v9 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::SetWrap(v7, &v11);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopologySchema::Builder::Build(v9, a1);
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

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_29A014BEC(*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    sub_29A014BEC(*(&v24 + 1));
  }

  if (*(&v23 + 1))
  {
    sub_29A014BEC(*(&v23 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AF1C474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29AF1C578(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DE40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF1C5D4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209DE40;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AF1C634(void *a1@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(qword_2A17502A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A17502A0))
  {
    sub_29AF19C40(v6);
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    v3 = *(v2 + 1);
    v8 = v3;
    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
      {
        v8 = v4;
      }
    }

    memset(v5, 0, sizeof(v5));
    sub_29A12EF7C(v5, &v8, &v9, 1uLL);
    sub_29AF192D8(v6, v5, &qword_2A1750288);
    v7 = v5;
    sub_29A124AB0(&v7);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5[0] = v6;
    sub_29A124AB0(v5);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1750288, &dword_299FE7000);
    __cxa_guard_release(qword_2A17502A0);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF1C7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  __cxa_guard_abort(qword_2A17502A0);
  _Unwind_Resume(a1);
}

void sub_29AF1C824(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {

    sub_29AF19E1C(a1, a2, a3);
  }

  else
  {
    if ((atomic_load_explicit(&qword_2A17502C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17502C0))
    {
      v14[0] = xmmword_29B7186C0;
      v14[1] = unk_29B7186D0;
      v14[2] = xmmword_29B7186E0;
      sub_29A901CD8(v10, v14, 4);
      sub_29ACA374C(v10, &v11);
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v9)
      {
        v9 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      sub_29AF1CA78(&v11, v8 + 9, v9 + 12, &v13);
      xmmword_2A17502B0 = v13;
      v13 = 0uLL;
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }

    v7 = *(&xmmword_2A17502B0 + 1);
    *a3 = xmmword_2A17502B0;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }
}