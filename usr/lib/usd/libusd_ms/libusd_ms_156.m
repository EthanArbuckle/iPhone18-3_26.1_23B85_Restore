void *pxrInternal__aapl__pxrReserved__::HdSt_RenderPassShaderKey::HdSt_RenderPassShaderKey(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_2A20943F8;
  v4 = atomic_load(&qword_2A174ECA8);
  v53 = a1;
  if (!v4)
  {
    v4 = sub_29ADED404();
  }

  v5 = *v4;
  *(a1 + 8) = *v4;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 16) = 0u;
  v6 = a1 + 16;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 128) = 0u;
  v52 = (v6 + 128);
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 16) = 0u;
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
    LOBYTE(v12) = 0;
    while (1)
    {
      if (v12)
      {
        v12 = 1;
        if (v11)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v13)
        {
          v13 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        v12 = (*v13 ^ *(v7 + v8)) < 8uLL;
        if (v11)
        {
          goto LABEL_17;
        }
      }

      v14 = *a2;
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v15)
      {
        v15 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if ((*(v15 + 4) ^ *(v14 + v8)) >= 8)
      {
        v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v16)
        {
          v16 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        v11 = (*(v16 + 5) ^ *(v14 + v8)) < 8uLL;
        goto LABEL_21;
      }

LABEL_17:
      v11 = 1;
LABEL_21:
      v7 = *a2;
      if (v10)
      {
        v10 = 1;
      }

      else
      {
        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v17)
        {
          v17 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        v10 = (*(v17 + 10) ^ *(v7 + v8)) < 8uLL;
        v7 = *a2;
      }

      ++v9;
      v8 += 80;
      if (v9 >= 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - v7) >> 4))
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
  v11 = 0;
  v10 = 0;
LABEL_29:
  v18 = atomic_load(&qword_2A174ECA8);
  if (!v18)
  {
    v18 = sub_29ADED404();
  }

  sub_29A166F2C(v6, (v18 + 16));
  v19 = atomic_load(&qword_2A174ECA8);
  if (!v19)
  {
    v19 = sub_29ADED404();
  }

  sub_29A166F2C(v53 + 3, (v19 + 32));
  v20 = v53[4];
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53[4] = 0;
  v21 = atomic_load(&qword_2A174ECA8);
  if (!v21)
  {
    v21 = sub_29ADED404();
  }

  sub_29A166F2C((v6 + 24), (v21 + 16));
  v22 = v53[6];
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53[6] = 0;
  v23 = atomic_load(&qword_2A174ECA8);
  if (!v23)
  {
    v23 = sub_29ADED404();
  }

  sub_29A166F2C((v6 + 40), (v23 + 16));
  v24 = atomic_load(&qword_2A174ECA8);
  if (!v24)
  {
    v24 = sub_29ADED404();
  }

  sub_29A166F2C(v53 + 8, (v24 + 32));
  v25 = v53[9];
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53[9] = 0;
  v26 = atomic_load(&qword_2A174ECA8);
  if (!v26)
  {
    v26 = sub_29ADED404();
  }

  sub_29A166F2C((v6 + 64), (v26 + 16));
  v27 = v53[11];
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53[11] = 0;
  v28 = atomic_load(&qword_2A174ECA8);
  if (!v28)
  {
    v28 = sub_29ADED404();
  }

  sub_29A166F2C((v6 + 80), (v28 + 16));
  v29 = atomic_load(&qword_2A174ECA8);
  if (!v29)
  {
    v29 = sub_29ADED404();
  }

  sub_29A166F2C(v53 + 13, (v29 + 32));
  v30 = v53[14];
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53[14] = 0;
  v31 = atomic_load(&qword_2A174ECA8);
  if (!v31)
  {
    v31 = sub_29ADED404();
  }

  sub_29A166F2C((v6 + 104), (v31 + 16));
  v32 = atomic_load(&qword_2A174ECA8);
  if (!v32)
  {
    v32 = sub_29ADED404();
  }

  sub_29A166F2C(v53 + 16, (v32 + 32));
  v33 = v53[17];
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53[17] = 0;
  v34 = atomic_load(&qword_2A174ECA8);
  if (!v34)
  {
    v34 = sub_29ADED404();
  }

  sub_29A166F2C(v52, (v34 + 16));
  v35 = atomic_load(&qword_2A174ECA8);
  if (!v35)
  {
    v35 = sub_29ADED404();
  }

  sub_29A166F2C(v53 + 19, (v35 + 24));
  v36 = atomic_load(&qword_2A174ECA8);
  if (v12)
  {
    if (!v36)
    {
      v36 = sub_29ADED404();
    }

    sub_29A166F2C(v53 + 20, (v36 + 72));
    v37 = atomic_load(&qword_2A174ECA8);
    if (!v37)
    {
      v37 = sub_29ADED404();
    }

    sub_29A166F2C(v53 + 21, (v37 + 80));
    v38 = atomic_load(&qword_2A174ECA8);
    if (!v38)
    {
      v38 = sub_29ADED404();
    }

    sub_29A166F2C(v53 + 22, (v38 + 40));
    v39 = atomic_load(&qword_2A174ECA8);
    if (!v39)
    {
      v39 = sub_29ADED404();
    }

    v40 = (v39 + 88);
    v41 = 6;
    v42 = 23;
  }

  else
  {
    if (!v36)
    {
      v36 = sub_29ADED404();
    }

    sub_29A166F2C(v53 + 20, (v36 + 56));
    v43 = atomic_load(&qword_2A174ECA8);
    if (!v43)
    {
      v43 = sub_29ADED404();
    }

    sub_29A166F2C(v53 + 21, (v43 + 64));
    v44 = atomic_load(&qword_2A174ECA8);
    if (!v44)
    {
      v44 = sub_29ADED404();
    }

    v40 = (v44 + 96);
    v41 = 5;
    v42 = 22;
  }

  sub_29A166F2C(&v53[v42], v40);
  v45 = atomic_load(&qword_2A174ECA8);
  if (v11)
  {
    if (!v45)
    {
      v45 = sub_29ADED404();
    }

    v46 = (v45 + 104);
  }

  else
  {
    if (!v45)
    {
      v45 = sub_29ADED404();
    }

    v46 = (v45 + 112);
  }

  sub_29A166F2C(&v52[v41], v46);
  v47 = atomic_load(&qword_2A174ECA8);
  if (v10)
  {
    if (!v47)
    {
      v47 = sub_29ADED404();
    }

    v48 = (v47 + 120);
  }

  else
  {
    if (!v47)
    {
      v47 = sub_29ADED404();
    }

    v48 = (v47 + 128);
  }

  sub_29A166F2C(&v52[v41 + 1], v48);
  v49 = atomic_load(&qword_2A174ECA8);
  if (!v49)
  {
    v49 = sub_29ADED404();
  }

  sub_29A166F2C(&v52[v41 + 2], (v49 + 48));
  v50 = v52[v41 + 3];
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52[v41 + 3] = 0;
  return v53;
}

void pxrInternal__aapl__pxrReserved__::HdSt_RenderPassShaderKey::~HdSt_RenderPassShaderKey(pxrInternal__aapl__pxrReserved__::HdSt_RenderPassShaderKey *this)
{
  *this = &unk_2A20943F8;
  for (i = 216; i != 136; i -= 8)
  {
    v2 = *(this + i);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  do
  {
    v3 = *(this + i);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 112);
  do
  {
    v4 = *(this + i);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 88);
  do
  {
    v5 = *(this + i);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 72);
  do
  {
    v6 = *(this + i);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 48);
  do
  {
    v7 = *(this + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 32);
  do
  {
    v8 = *(this + i);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    i -= 8;
  }

  while (i != 8);
  v9 = *(this + 1);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::~HdSt_ShaderKey(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_RenderPassShaderKey::~HdSt_RenderPassShaderKey(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_RenderPassShaderKey::GetGlslfxString(pxrInternal__aapl__pxrReserved__::HdSt_RenderPassShaderKey *this)
{
  sub_29A008864(v38);
  sub_29A00911C(&v39, "-- glslfx version 0.1\n", 22);
  if (*(*(*this + 16))(this))
  {
    v2 = sub_29A00911C(&v39, "#import $TOOLS/hdSt/shaders/", 28);
    v3 = *(*(*this + 16))(this) & 0xFFFFFFFFFFFFFFF8;
    if (v3)
    {
      v4 = (v3 + 16);
      if (*(v3 + 39) < 0)
      {
        v4 = *v4;
      }
    }

    else
    {
      v4 = "";
    }

    v5 = strlen(v4);
    v6 = sub_29A00911C(v2, v4, v5);
    sub_29A00911C(v6, "\n", 1);
  }

  v7 = sub_29A00911C(&v39, "#import $TOOLS/hdx/shaders/", 27);
  v8 = atomic_load(&qword_2A174ECA8);
  if (!v8)
  {
    v8 = sub_29ADED404();
  }

  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v7, (v8 + 8));
  sub_29A00911C(v9, "\n", 1);
  v10 = sub_29A00911C(&v39, "-- configuration\n", 17);
  sub_29A00911C(v10, "{techniques: {default: {\n", 29);
  v37 = 1;
  v11 = (*(*this + 32))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("vertexShader", v11, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v13 = v36;
  }

  else
  {
    v13 = v35;
  }

  sub_29A00911C(&v39, p_p, v13);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v14 = (*(*this + 40))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("tessControlShader", v14, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v16 = v36;
  }

  else
  {
    v16 = v35;
  }

  sub_29A00911C(&v39, v15, v16);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v17 = (*(*this + 48))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("tessEvalShader", v17, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v19 = v36;
  }

  else
  {
    v19 = v35;
  }

  sub_29A00911C(&v39, v18, v19);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v20 = (*(*this + 56))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("postTessControlShader", v20, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v22 = v36;
  }

  else
  {
    v22 = v35;
  }

  sub_29A00911C(&v39, v21, v22);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v23 = (*(*this + 64))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("postTessVertexShader", v23, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v25 = v36;
  }

  else
  {
    v25 = v35;
  }

  sub_29A00911C(&v39, v24, v25);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v26 = (*(*this + 72))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("geometryShader", v26, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v28 = v36;
  }

  else
  {
    v28 = v35;
  }

  sub_29A00911C(&v39, v27, v28);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v29 = (*(*this + 80))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("fragmentShader", v29, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v30 = &__p;
  }

  else
  {
    v30 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v31 = v36;
  }

  else
  {
    v31 = v35;
  }

  sub_29A00911C(&v39, v30, v31);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  sub_29A00911C(&v39, "}}}\n", 4);
  std::stringbuf::str();
  v38[0] = *MEMORY[0x29EDC9528];
  v32 = *(MEMORY[0x29EDC9528] + 72);
  *(v38 + *(v38[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v39 = v32;
  v40 = MEMORY[0x29EDC9570] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v41);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v43);
}

void sub_29ADED358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a17);
  _Unwind_Resume(a1);
}

unint64_t sub_29ADED404()
{
  v41 = *MEMORY[0x29EDCA608];
  v0 = operator new(0xA0uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "renderPass.glslfx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "selection.glslfx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "RenderPass.Camera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "RenderPass.CameraFS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "RenderPass.ApplyClipPlanes", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "RenderPass.ApplyColorOverrides", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "RenderPass.RenderOutput", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "RenderPass.NoSelection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "RenderPass.NoColorOverrides", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "Selection.DecodeUtils", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "Selection.ComputeColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "RenderPass.RenderColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "RenderPass.RenderColorNoOp", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "RenderPass.RenderId", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "RenderPass.RenderIdNoOp", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "RenderPass.RenderNeye", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 16, "RenderPass.RenderNeyeNoOp", 0);
  v1 = v0 + 17;
  v2 = *v0;
  v24 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v25 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v26 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v27 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v28 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v29 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v30 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v31 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v32 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v33 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v34 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v35 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[12];
  v36 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[13];
  v37 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[14];
  v38 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[15];
  v39 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = v0[16];
  v40 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[18] = 0;
  v0[19] = 0;
  sub_29A12EF7C(v1, &v24, &v41, 0x11uLL);
  for (i = 128; i != -8; i -= 8)
  {
    v20 = *(&v24 + i);
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v21 = 0;
  atomic_compare_exchange_strong(&qword_2A174ECA8, &v21, v0);
  if (v21)
  {
    v22 = sub_29A5DB704(v0);
    operator delete(v22);
    return atomic_load(&qword_2A174ECA8);
  }

  return v0;
}

void sub_29ADED918(_Unwind_Exception *a1)
{
  v4 = 128;
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
      v6 = v1[16];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[15];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[14];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[13];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[12];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[11];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[10];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[9];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[8];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[7];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[6];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[5];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[4];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[3];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[2];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[1];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens_StaticTokenType::~HdSt_ResourceBindingSuffixTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens_StaticTokenType::HdSt_ResourceBindingSuffixTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "_fallback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "_samplingTransform", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "_layout", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "_texture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "_valid", 0);
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

void sub_29ADEDDE0(_Unwind_Exception *a1)
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

void *pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::HdSt_ResourceBinder(void *this)
{
  this[2] = 0;
  this[1] = 0;
  *this = this + 1;
  return this;
}

{
  this[2] = 0;
  this[1] = 0;
  *this = this + 1;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::ResolveBindings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_29A0ECEEC(&v46, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::ResolveBindings(const HdStDrawItem *, const HdStShaderCodeSharedPtrVector &, HdSt_ResourceBinder::MetaData *, const HdSt_ResourceBinder::MetaData::DrawingCoordBufferBinding &, BOOL, const HdStBindingRequestVector &, const HgiCapabilities *)");
  if (a4 || (v33[0] = "hdSt/resourceBinder.cpp", v33[1] = "ResolveBindings", __p[0] = 186, __p[1] = "void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::ResolveBindings(const HdStDrawItem *, const HdStShaderCodeSharedPtrVector &, HdSt_ResourceBinder::MetaData *, const HdSt_ResourceBinder::MetaData::DrawingCoordBufferBinding &, BOOL, const HdStBindingRequestVector &, const HgiCapabilities *)", v35 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v33, "metaDataOut", 0), (result & 1) != 0))
  {
    if ((*(a8 + 48) & 2) != 0)
    {
      v11 = 10;
    }

    else
    {
      v11 = 7;
    }

    sub_29A166F2C(a4, a5);
    *(a4 + 8) = a5[1];
    v45[0] = 0;
    v45[1] = 0;
    sub_29A1602D4(a1, *(a1 + 8));
    *a1 = a1 + 8;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    v12 = atomic_load(&qword_2A174ECB0);
    if (!v12)
    {
      v12 = sub_29ADF7534();
    }

    v44 = sub_29ADF2F3C(v45, v11, (v12 + 96));
    v13 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a2 + 24), *(a2 + 12));
    v15 = *v13;
    v14 = v13[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v15)
      {
        goto LABEL_35;
      }

      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else if (!v15)
    {
      goto LABEL_36;
    }

    v16 = atomic_load(&qword_2A174ECB0);
    if (!v16)
    {
      v16 = sub_29ADF7534();
    }

    v17 = *(v16 + 96);
    v39 = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v39 &= 0xFFFFFFFFFFFFFFF8;
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 1;
    v18 = (*(*v15 + 176))(v15);
    v19 = *(v18 + 8);
    v33[0] = *v18;
    v33[1] = v19;
    while (v33[0] != v33[1])
    {
      v37 = 0uLL;
      v37 = *(*(*sub_29ADF30C4(v33) + 8) + 32);
      pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGLSLTypename(v37, &v32);
      v20 = sub_29ADF30C4(v33);
      pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGLSLIdentifier(*v20, &v31);
      v21 = *(*(*sub_29ADF30C4(v33) + 8) + 48);
      LODWORD(v36) = v21;
      if (v41 >= v42)
      {
        v22 = sub_29ADF7BE4(&v40, &v31, &v32, &v36, &v37 + 2);
      }

      else
      {
        v22 = (sub_29ADF7D14(v41, &v31, &v32, v21, SDWORD2(v37), 0) + 32);
      }

      v41 = v22;
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v32.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v32.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_29ADF30FC(v33);
    }

    v23 = 126 - 2 * __clz((v41 - v40) >> 5);
    if (v41 == v40)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    sub_29ADF7ED4(v40, v41, &v37, v24, 1);
    sub_29ADF714C(v33, &v44, &v39);
    sub_29ADF9640((a4 + 16), v33, v33);
    *&v37 = __p;
    sub_29AB7E23C(&v37);
    if ((v33[1] & 7) != 0)
    {
      atomic_fetch_add_explicit((v33[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v33[0] = &v40;
    sub_29AB7E23C(v33);
    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (!v14)
    {
LABEL_36:
      v25 = atomic_load(&qword_2A174ECB0);
      if (!v25)
      {
        v25 = sub_29ADF7534();
      }

      v26 = *(v25 + 96);
      v33[0] = v26;
      if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v33[0] = (v33[0] & 0xFFFFFFFFFFFFFFF8);
      }

      LODWORD(v33[1]) = -1;
      v39 = v33;
      v27 = sub_29ADF9724(a1, v33, &unk_29B4D6118, &v39);
      *(v27 + 12) = v44;
      if ((v33[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v33[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::HdInstancer::GetBuiltinPrimvarNames(v27);
      v37 = 0uLL;
      v38 = 0;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
    }

    sub_29A014BEC(v14);
LABEL_35:
    sub_29A014BEC(v14);
    goto LABEL_36;
  }

  if (v46)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v47, v46);
  }

  return result;
}

void sub_29ADF24DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t __p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, std::__shared_weak_count *a39, int a40, __int16 a41, char a42, char a43)
{
  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(v44 - 184);
  if (v46)
  {
    sub_29A014BEC(v46);
  }

  if (a39)
  {
    sub_29A014BEC(a39);
  }

  if (v43)
  {
    sub_29A014BEC(v43);
    sub_29A014BEC(v43);
  }

  a38 = (v44 - 224);
  sub_29A124AB0(&a38);
  v47 = *(v44 - 128);
  if (v47)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(*(v44 - 120), v47);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ADF2F3C(_DWORD *a1, int a2, void *a3)
{
  if (a2 > 7)
  {
    if (a2 <= 9)
    {
      if (a2 == 8)
      {
        v5 = (*a1)++;
        v6 = 8;
      }

      else
      {
        v5 = a1[1];
        a1[1] = v5 + 1;
        v6 = 9;
      }

      return v6 | (v5 << 8);
    }

    if (a2 == 10)
    {
      v5 = (*a1)++;
      v6 = 10;
      return v6 | (v5 << 8);
    }

    if (a2 == 11)
    {
      v5 = (*a1)++;
      v6 = 11;
      return v6 | (v5 << 8);
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      v5 = a1[2];
      a1[2] = v5 + 1;
      v6 = 5;
      return v6 | (v5 << 8);
    }

    if (a2 == 7)
    {
      v5 = a1[1];
      a1[1] = v5 + 1;
      v6 = 7;
      return v6 | (v5 << 8);
    }
  }

  else
  {
    if (a2 == 2)
    {
      v5 = a1[2];
      a1[2] = v5 + 1;
      v6 = 2;
      return v6 | (v5 << 8);
    }

    if (a2 == 3)
    {
      v5 = a1[2];
      a1[2] = v5 + 1;
      v6 = 3;
      return v6 | (v5 << 8);
    }
  }

  v12 = v3;
  v13 = v4;
  v10[0] = "hdSt/resourceBinder.cpp";
  v10[1] = "GetBinding";
  v10[2] = 94;
  v10[3] = "HdStBinding pxrInternal__aapl__pxrReserved__::(anonymous namespace)::BindingLocator::GetBinding(HdStBinding::Type, const TfToken &)";
  v11 = 0;
  v8 = *a3 & 0xFFFFFFFFFFFFFFF8;
  if (v8)
  {
    v9 = (v8 + 16);
    if (*(v8 + 39) < 0)
    {
      v9 = *v9;
    }
  }

  else
  {
    v9 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Unknown binding type %d for %s", a2, v9);
  return 0xFFFFFFFFLL;
}

void *sub_29ADF30C4(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C9600();
  }

  return result;
}

void *sub_29ADF30FC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStBufferResource>>>>::operator++() [T = const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfToken, std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStBufferResource>>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

uint64_t sub_29ADF317C(pxrInternal__aapl__pxrReserved__::TfToken *a1, char *a2)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v4 = *(EmptyString + 23);
  if (v4 < 0)
  {
    v5 = EmptyString;
    EmptyString = *EmptyString;
    v4 = v5[1];
  }

  v6 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v7 = a2[23];
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  if (!v7)
  {
    return 1;
  }

  v8 = EmptyString + v4;
  if (v4 >= v7)
  {
    v12 = *a2;
    v13 = EmptyString;
    do
    {
      v14 = v4 - v7;
      if (v14 == -1)
      {
        break;
      }

      v15 = memchr(v13, v12, v14 + 1);
      if (!v15)
      {
        break;
      }

      v9 = v15;
      if (!memcmp(v15, a2, v7))
      {
        return v9 != v8 && v9 - EmptyString != -1;
      }

      v13 = (v9 + 1);
      v4 = v8 - (v9 + 1);
    }

    while (v4 >= v7);
  }

  v9 = v8;
  return v9 != v8 && v9 - EmptyString != -1;
}

uint64_t sub_29ADF3260(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ADF9948(a1, a2);
  }

  else
  {
    sub_29ADF9A78(a1, *(a1 + 8), a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29ADF32AC(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>>::operator*() [T = const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

uint64_t sub_29ADF332C(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_29A124AB0(&v4);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29ADF33A8(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, uint64_t a2@<X8>)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
  if (!v4)
  {
    v4 = sub_29ADC7C04(&pxrInternal__aapl__pxrReserved__::HdSt_ResourceBindingSuffixTokens);
  }

  if ((*(v4 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v5 = ((*(v4 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(EmptyString, v5, &__p);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_29ADF3450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ADF346C(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>>::operator++() [T = const std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStShaderCode>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

void *sub_29ADF34EC(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C964C();
  }

  return result;
}

void *sub_29ADF3524(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::HdStBindingRequest>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::HdStBindingRequest>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 72;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::ResolveComputeBindings(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29A0ECEEC(&v35, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::ResolveComputeBindings(const HdBufferSpecVector &, const HdBufferSpecVector &, const HdStShaderCodeSharedPtrVector &, MetaData *, const HgiCapabilities *)");
  if (a5 || (v30 = "hdSt/resourceBinder.cpp", v31 = "ResolveComputeBindings", v32 = 971, v33 = "void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::ResolveComputeBindings(const HdBufferSpecVector &, const HdBufferSpecVector &, const HdStShaderCodeSharedPtrVector &, MetaData *, const HgiCapabilities *)", v34 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v30, "metaDataOut", 0) & 1) != 0))
  {
    if ((*(a6 + 48) & 2) != 0)
    {
      v10 = 8;
    }

    else
    {
      v10 = 7;
    }

    v30 = 0;
    v31 = 0;
    sub_29A1602D4(a1, *(a1 + 8));
    *a1 = a1 + 8;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    v11 = *a2;
    v12 = a2[1];
    if (*a2 != v12)
    {
      do
      {
        v29 = sub_29ADF2F3C(&v30, v10, v11);
        v13 = *v11;
        v27 = v13;
        if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v27 &= 0xFFFFFFFFFFFFFFF8;
        }

        LODWORD(v28) = -1;
        v37 = &v27;
        v14 = sub_29ADF9724(a1, &v27, &unk_29B4D6118, &v37);
        *(v14 + 12) = v29;
        if ((v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGLSLTypename(*(v11 + 8), &v26);
        sub_29A3AA17C(&v27, v11, &v26);
        v37 = &v29;
        v15 = sub_29ADF9884((a5 + 184), &v29, &unk_29B4D6118, &v37);
        if (&v27 == (v15 + 5))
        {
          if ((v28 & 7) != 0)
          {
            atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v16 = v15[5];
          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v15[5] = v27;
          v27 = 0;
          v17 = v15[6];
          if ((v17 & 7) != 0)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v15[6] = v28;
          v28 = 0;
        }

        if ((v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v26 & 7) != 0)
        {
          atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v11 += 24;
      }

      while (v11 != v12);
    }

    v18 = *a3;
    v19 = a3[1];
    if (*a3 != v19)
    {
      do
      {
        v29 = sub_29ADF2F3C(&v30, v10, v18);
        v20 = *v18;
        v27 = v20;
        if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v27 &= 0xFFFFFFFFFFFFFFF8;
        }

        LODWORD(v28) = -1;
        v37 = &v27;
        v21 = sub_29ADF9724(a1, &v27, &unk_29B4D6118, &v37);
        *(v21 + 12) = v29;
        if ((v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGLSLTypename(*(v18 + 8), &v26);
        sub_29A3AA17C(&v27, v18, &v26);
        v37 = &v29;
        v22 = sub_29ADF9884((a5 + 208), &v29, &unk_29B4D6118, &v37);
        if (&v27 == (v22 + 5))
        {
          if ((v28 & 7) != 0)
          {
            atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v23 = v22[5];
          if ((v23 & 7) != 0)
          {
            atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v22[5] = v27;
          v27 = 0;
          v24 = v22[6];
          if ((v24 & 7) != 0)
          {
            atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v22[6] = v28;
          v28 = 0;
        }

        if ((v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v26 & 7) != 0)
        {
          atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v18 += 24;
      }

      while (v18 != v19);
    }
  }

  if (v35)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v36, v35);
  }
}

void sub_29ADF397C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 **a4, int a5, int a6, int a7)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*a4 && **a4)
  {
    v11 = sub_29ADD2604(a1, a3, a6);
    pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(v13);
    v19 = 1;
    if (v11 == 7)
    {
      __src = **a4;
      sub_29ADFA154(v13, &__src, v21, 1uLL);
      LODWORD(__src) = 0;
      sub_29A0C2698(v14, &__src, &__src + 4, 1uLL);
      LODWORD(__src) = 0;
      sub_29A0C2698(__p, &__src, &__src + 4, 1uLL);
      v12 = 5;
LABEL_7:
      v16 = v12;
      v17 = (v11 >> 8);
      v18 = 251;
      v19 = 0;
      sub_29ADF3C20(a2 + 24);
    }

    if (v11 == 9)
    {
      __src = **a4;
      sub_29ADFA154(v13, &__src, v21, 1uLL);
      LODWORD(__src) = a5;
      sub_29A0C2698(v14, &__src, &__src + 4, 1uLL);
      LODWORD(__src) = *(*a4 + 13) * a7;
      sub_29A0C2698(__p, &__src, &__src + 4, 1uLL);
      v12 = 4;
      goto LABEL_7;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v14[0])
    {
      v14[1] = v14[0];
      operator delete(v14[0]);
    }

    if (v13[0])
    {
      v13[1] = v13[0];
      operator delete(v13[0]);
    }
  }
}

void sub_29ADF3BEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ADEB844(va);
  _Unwind_Resume(a1);
}

void sub_29ADF3C20(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    sub_29ADFA3D4(a1, *(a1 + 8));
  }

  sub_29ADFA288(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferArrayBindingDesc(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v5 = (*(**a3 + 176))(*a3);
    v6 = v5[1];
    if (*v5 != v6)
    {
      v7 = (*v5 + 8);
      do
      {
        v8 = v7 + 2;
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(a1, a2, v7 - 1, v7, *(*v7 + 12), -1, 1);
        v7 += 3;
      }

      while (v8 != v6);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetInterleavedBufferArrayBindingDesc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*a3)
  {
    (*(**a3 + 160))(&v10);
    (*(**a3 + 160))(&v8);
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(a1, a2, a4, &v10, *(v8 + 48), -1, 1);
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }
}

void sub_29ADF3DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetInstanceBufferArrayBindingDesc(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (*a3)
  {
    v7 = (*(**a3 + 176))(*a3);
    v8 = v7[1];
    if (*v7 != v8)
    {
      v9 = (*v7 + 8);
      do
      {
        if (sub_29ADF3EE4(a1, v9 - 1, a4))
        {
          pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(a1, a2, v9 - 1, v9, *(*v9 + 12), a4, 1);
        }

        v10 = v9 + 2;
        v9 += 3;
      }

      while (v10 != v8);
    }
  }
}

BOOL sub_29ADF3EE4(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  v8 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v5;
    }
  }

  v9 = a3;
  v6 = sub_29ADD3B84(a1, &v8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1 + 8 != v6;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBindingRequestBindingDesc(pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *this, pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *a2, const pxrInternal__aapl__pxrReserved__::HdStBindingRequest *a3)
{
  v7 = (a3 + 16);
  v6 = *(a3 + 2);
  v8 = *(a3 + 4);
  if (v8)
  {
    if (!v6)
    {
      if (*(a3 + 48) == 1)
      {
        v9 = *(a3 + 5);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v8 + 160))(&v12);
        v10 = sub_29ADF40FC(a3);
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(this, a2, a3 + 1, &v12, v10, -1, 1);
        if (v13)
        {
          sub_29A014BEC(v13);
        }
      }

      else
      {
        v9 = *(a3 + 5);
        v12 = *(a3 + 4);
        v13 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferArrayBindingDesc(this, a2, &v12);
      }

      if (v9)
      {
        sub_29A014BEC(v9);
      }

      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  v11 = sub_29ADF40FC(a3);

  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetBufferBindingDesc(this, a2, a3 + 1, v7, v11, -1, 1);
}

void sub_29ADF40CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADF40FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(v1 + 48);
  }

  result = *(a1 + 32);
  if (result)
  {
    v3 = 0;
    result = (*(*result + 80))(result, &v3);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetTextureBindingDesc(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*a4)
  {
    v5 = *a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v9 = sub_29ADD2604(a1, a3, -1);
    pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc::HgiTextureBindDesc(v10);
    v14 = 162;
    __src = *a5;
    sub_29ADFA154(v10, &__src, v17, 1uLL);
    __src = *a4;
    sub_29ADFA154(__p, &__src, v17, 1uLL);
    v12 = 2;
    v13 = HIBYTE(v9);
    v15 = 0;
    sub_29ADF42D0((a2 + 48), v10);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v10[0])
    {
      v10[1] = v10[0];
      operator delete(v10[0]);
    }
  }
}

uint64_t sub_29ADF42D0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29ADFA49C(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3[3] = 0;
    v3[4] = 0;
    v3[5] = 0;
    *(v3 + 3) = *(a2 + 24);
    v3[5] = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v4 = *(a2 + 48);
    *(v3 + 53) = *(a2 + 53);
    v3[6] = v4;
    result = (v3 + 8);
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetTextureWithLayoutBindingDesc(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*a4)
  {
    v7 = *a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && *a6 != 0 && *a7 != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetTextureBindingDesc(a1, a2, a3, a4, a5);
    sub_29ADF33A8(a3, v16);
    v15 = sub_29ADD2604(a1, v16, -1);
    if ((v16[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc::HgiTextureBindDesc(v16);
    v20 = 34;
    __src = *a7;
    sub_29ADFA154(v16, &__src, v23, 1uLL);
    __src = *a6;
    sub_29ADFA154(__p, &__src, v23, 1uLL);
    v18 = 2;
    v19 = HIBYTE(v15);
    v21 = 0;
    sub_29ADF42D0((a2 + 48), v16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v16[0])
    {
      v16[1] = v16[0];
      operator delete(v16[0]);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::HgiGLBuffer ***a3, int a4, int a5, int a6)
{
  if (**a3)
  {
    LODWORD(v13) = a4;
    v9 = sub_29ADD2604(a1, a2, a5);
    v10 = (v9 >> 8);
    v11 = *a3;
    v12 = *(*a3 + 8);
    v13 = v13;
    switch(v9)
    {
      case 1:
        v51 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
        BindlessGPUAddress = (*(**v11 + 24))();
        v30 = 36671;
        goto LABEL_19;
      case 2:
        v31 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
        v32 = (*(**v11 + 24))();
        v31(34962, v32);
        v33 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribIPointer;
        ComponentCount = pxrInternal__aapl__pxrReserved__::HdGetComponentCount(v12);
        v33(v10, ComponentCount, 5124, *(*a3 + 13), v13);
        v35 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
        goto LABEL_37;
      case 3:
        v16 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
        v17 = (*(**v11 + 24))();
        v16(34962, v17);
        v18 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribIPointer;
        v19 = pxrInternal__aapl__pxrReserved__::HdGetComponentCount(v12);
        v18(v10, v19, 5124, *(*a3 + 13), v13);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer(34962, 0);
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribDivisor(v10, 0x7FFFFFFFLL);
        goto LABEL_38;
      case 4:
        v25 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
        v26 = (*(**v11 + 24))();
        v25(34962, v26);
        v27 = *a3;
        if ((*a3)[5])
        {
          v28 = 0;
          do
          {
            pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribIPointer(v10, 1, 5124, *(v27 + 13), v13);
            pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribDivisor(v10, 0x7FFFFFFFLL);
            pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArray(v10);
            v10 = (v10 + 1);
            ++v28;
            v27 = *a3;
            v13 += 4;
          }

          while (v28 < (*a3)[5]);
        }

        v29 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
        v30 = 34962;
        BindlessGPUAddress = 0;
        goto LABEL_20;
      case 5:
        v36 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
        v37 = (*(**v11 + 24))();
        v36(34962, v37);
        v38 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribPointer;
        if (v12 == 29)
        {
          v39 = 4;
        }

        else
        {
          v39 = pxrInternal__aapl__pxrReserved__::HdGetComponentCount(v12);
        }

        GLAttribType = pxrInternal__aapl__pxrReserved__::HdStGLConversions::GetGLAttribType(v12);
        v38(v10, v39, GLAttribType, v12 == 29, *(*a3 + 13), v13);
        v35 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
LABEL_37:
        v35(34962, 0);
LABEL_38:
        v48 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnableVertexAttribArray;

        v48(v10);
        return;
      case 6:
        v51 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
        BindlessGPUAddress = (*(**v11 + 24))();
        v30 = 34963;
LABEL_19:
        v29 = v51;
LABEL_20:

        goto LABEL_22;
      case 7:
        v52 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferBase;
        v46 = (*(**v11 + 24))();

        v52(37074, v10, v46);
        return;
      case 8:
        v42 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsNamedBufferResidentNV;
        v43 = (*(**v11 + 24))();
        if (!v42(v43))
        {
          v44 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeNamedBufferResidentNV;
          v45 = (*(***a3 + 24))(**a3);
          v44(v45, 35002);
        }

        v50 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformui64NV;
        BindlessGPUAddress = pxrInternal__aapl__pxrReserved__::HgiGLBuffer::GetBindlessGPUAddress(**a3) + v13;
        goto LABEL_29;
      case 9:
      case 11:
        v49 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferRange;
        v14 = (*(**v11 + 24))();
        v15 = *(*a3 + 13) * a6;

        v49(35345, v10, v14, v13, v15);
        return;
      case 10:
        v20 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsNamedBufferResidentNV;
        v21 = (*(**v11 + 24))();
        if (!v20(v21))
        {
          v22 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeNamedBufferResidentNV;
          v23 = (*(***a3 + 24))(**a3);
          v22(v23, 35002);
        }

        v50 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformui64NV;
        BindlessGPUAddress = pxrInternal__aapl__pxrReserved__::HgiGLBuffer::GetBindlessGPUAddress(**a3);
LABEL_29:
        v30 = v10;
        v29 = v50;

LABEL_22:
        v29(v30, BindlessGPUAddress);
        break;
      case 14:
      case 16:
        return;
      default:
        v53[0] = "hdSt/resourceBinder.cpp";
        v53[1] = "BindBuffer";
        v53[2] = 1331;
        v53[3] = "void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(const TfToken &, const HdStBufferResourceSharedPtr &, int, int, int) const";
        v54 = 0;
        v40 = *a2 & 0xFFFFFFFFFFFFFFF8;
        if (v40)
        {
          v41 = (v40 + 16);
          if (*(v40 + 39) < 0)
          {
            v41 = *v41;
          }
        }

        else
        {
          v41 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v53, 1, "binding type %d not found for %s", v9, v41);
        break;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(uint64_t a1, uint64_t *a2, void **a3, int a4)
{
  if (**a3)
  {
    v6 = sub_29ADD2604(a1, a2, a4);
    v7 = (v6 >> 8);
    switch(v6)
    {
      case 1:
        v14 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
        v15 = 36671;
        goto LABEL_17;
      case 2:
      case 5:
        v8 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexAttribArray;
        v9 = (v6 >> 8);
        goto LABEL_6;
      case 3:
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexAttribArray((v6 >> 8));
        v14 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribDivisor;
        v15 = v7;
        goto LABEL_17;
      case 4:
        if ((*a3)[5])
        {
          v16 = 0;
          do
          {
            pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisableVertexAttribArray(v7);
            pxrInternal__aapl__pxrReserved__::internal::GLApi::glVertexAttribDivisor(v7, 0);
            v7 = (v7 + 1);
            ++v16;
          }

          while (v16 < (*a3)[5]);
        }

        return;
      case 6:
        v14 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBuffer;
        v15 = 34963;
LABEL_17:

        v14(v15, 0);
        return;
      case 7:
        v12 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferBase;
        v13 = 37074;
        goto LABEL_24;
      case 8:
      case 10:
        v10 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsNamedBufferResidentNV;
        v11 = (*(***a3 + 24))(**a3);
        if (v10(v11))
        {
          v19 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeNamedBufferNonResidentNV;
          v9 = (*(***a3 + 24))(**a3);
          v8 = v19;
LABEL_6:

          v8(v9);
        }

        return;
      case 9:
      case 11:
        v12 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindBufferBase;
        v13 = 35345;
LABEL_24:

        v12(v13, v7, 0);
        break;
      case 14:
      case 16:
        return;
      default:
        v20[0] = "hdSt/resourceBinder.cpp";
        v20[1] = "UnbindBuffer";
        v20[2] = 1401;
        v20[3] = "void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(const TfToken &, const HdStBufferResourceSharedPtr &, int) const";
        v21 = 0;
        v17 = *a2 & 0xFFFFFFFFFFFFFFF8;
        if (v17)
        {
          v18 = (v17 + 16);
          if (*(v17 + 39) < 0)
          {
            v18 = *v18;
          }
        }

        else
        {
          v18 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v20, 1, "binding type %d not found for %s", v6, v18);
        break;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindConstantBuffer(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = atomic_load(&qword_2A174ECB0);
    if (!v4)
    {
      v4 = sub_29ADF7534();
    }

    (*(**a2 + 160))(&v5);
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(a1, (v4 + 96), &v5, *(v5 + 12), -1, 1);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29ADF4FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindConstantBuffer(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = atomic_load(&qword_2A174ECB0);
    if (!v4)
    {
      v4 = sub_29ADF7534();
    }

    (*(**a2 + 160))(&v5);
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(a1, (v4 + 96), &v5, -1);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29ADF50B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindInterleavedBuffer(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a2)
  {
    (*(**a2 + 160))(&v5);
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(a1, a3, &v5, *(v5 + 12), -1, 1);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29ADF5154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindInterleavedBuffer(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a2)
  {
    (*(**a2 + 160))(&v5);
    pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(a1, a3, &v5, -1);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29ADF51E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindInstanceBufferArray(uint64_t a1, void **a2, int a3)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 176))(result);
    v6 = *result;
    v7 = result[1];
    v12 = *result;
    v13 = v7;
    while (v6 != v7)
    {
      v8 = sub_29ADF30C4(&v12);
      if (sub_29ADF3EE4(a1, *v8, a3))
      {
        v9 = *sub_29ADF30C4(&v12);
        v10 = *sub_29ADF30C4(&v12);
        v11 = sub_29ADF30C4(&v12);
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(a1, v9, (v10 + 8), *(*(*v11 + 8) + 48), a3, 1);
      }

      result = sub_29ADF30FC(&v12);
      v6 = v12;
      v7 = v13;
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindInstanceBufferArray(uint64_t a1, void **a2, int a3)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 176))(result);
    v6 = *result;
    v7 = result[1];
    v11 = *result;
    v12 = v7;
    while (v6 != v7)
    {
      v8 = sub_29ADF30C4(&v11);
      if (sub_29ADF3EE4(a1, *v8, a3))
      {
        v9 = *sub_29ADF30C4(&v11);
        v10 = sub_29ADF30C4(&v11);
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(a1, v9, (*v10 + 8), a3);
      }

      result = sub_29ADF30FC(&v11);
      v6 = v11;
      v7 = v12;
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBufferArray(uint64_t a1, void **a2)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 176))(result);
    v4 = *result;
    v5 = result[1];
    v8 = *result;
    v9 = v5;
    while (v4 != v5)
    {
      v6 = *sub_29ADF30C4(&v8);
      v7 = sub_29ADF30C4(&v8);
      pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(a1, v6, (*v7 + 8), *(*(*v7 + 8) + 48), -1, 1);
      result = sub_29ADF30FC(&v8);
      v4 = v8;
      v5 = v9;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::Bind(pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *this, const pxrInternal__aapl__pxrReserved__::HdStBindingRequest *a2)
{
  v5 = (a2 + 16);
  v4 = *(a2 + 2);
  v6 = *(a2 + 4);
  if (v6)
  {
    if (!v4)
    {
      v7 = *(a2 + 5);
      if (*(a2 + 48) == 1)
      {
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 160))(&v11, v6);
        v8 = sub_29ADF40FC(a2);
        v9 = (*(*v6 + 88))(v6);
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(this, a2 + 1, &v11, v8, -1, v9);
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (v7)
        {
          sub_29A014BEC(v7);
          sub_29A014BEC(v7);
        }
      }

      else
      {
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = v6;
        v12 = v7;
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBufferArray(this, &v11);
        if (v7)
        {
          sub_29A014BEC(v7);

          sub_29A014BEC(v7);
        }
      }

      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v10 = sub_29ADF40FC(a2);

  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindBuffer(this, a2 + 1, v5, v10, -1, 1);
}

void sub_29ADF560C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_29A014BEC(v10);
    sub_29A014BEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::Unbind(pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *this, const pxrInternal__aapl__pxrReserved__::HdStBindingRequest *a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 2);
  v6 = *(a2 + 4);
  if (v6)
  {
    if (!v5)
    {
      v7 = *(a2 + 5);
      if (*(a2 + 48) == 1)
      {
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 160))(&v9);
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(this, a2 + 1, &v9, -1);
        if (v10)
        {
          sub_29A014BEC(v10);
        }

        if (v7)
        {
          sub_29A014BEC(v7);
          sub_29A014BEC(v7);
        }
      }

      else
      {
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = v6;
        v10 = v7;
        pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBufferArray(this, &v9);
        if (v7)
        {
          sub_29A014BEC(v7);

          sub_29A014BEC(v7);
        }
      }

      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  v8 = (a2 + 8);

  pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(this, v8, v4, -1);
}

void sub_29ADF57A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
    sub_29A014BEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBufferArray(uint64_t a1, void **a2)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 176))(result);
    v4 = *result;
    v5 = result[1];
    v8 = *result;
    v9 = v5;
    while (v4 != v5)
    {
      v6 = *sub_29ADF30C4(&v8);
      v7 = sub_29ADF30C4(&v8);
      pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::UnbindBuffer(a1, v6, (*v7 + 8), -1);
      result = sub_29ADF30FC(&v8);
      v4 = v8;
      v5 = v9;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindUniformi(pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int a3, const int *a4)
{
  v6 = sub_29ADD2604(this, a2, -1);
  v7 = (v6 >> 8);
  if (v7 != 0xFFFF)
  {
    v8 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      sub_29B2C9698(v10);
    }

    if (v8 != 11)
    {
      sub_29B2C96E0(v10);
    }

    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3iv;
        goto LABEL_16;
      }

      if (a3 == 4)
      {
        v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4iv;
        goto LABEL_16;
      }
    }

    else
    {
      if (a3 == 1)
      {
        v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1iv;
        goto LABEL_16;
      }

      if (a3 == 2)
      {
        v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2iv;
LABEL_16:
        (*v9)(v7, 1, a4);
        return;
      }
    }

    v10[0] = "hdSt/resourceBinder.cpp";
    v10[1] = "BindUniformi";
    v10[2] = 1560;
    v10[3] = "void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindUniformi(const TfToken &, int, const int *) const";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Invalid count %d.\n", a3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindUniformArrayi(pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3, const int *a4)
{
  result = sub_29ADD2604(this, a2, -1);
  v7 = (result >> 8);
  if (v7 != 0xFFFF)
  {
    v8 = result;
    if ((result & 0x80000000) != 0)
    {
      sub_29B2C9728(v9);
    }

    if (v8 != 12)
    {
      sub_29B2C9770(v9);
    }

    return pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1iv(v7, a3, a4);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindUniformui(pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int a3, const unsigned int *a4)
{
  v6 = sub_29ADD2604(this, a2, -1);
  v7 = (v6 >> 8);
  if (v7 != 0xFFFF)
  {
    v8 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      sub_29B2C97B8(v10);
    }

    if (v8 != 11)
    {
      sub_29B2C9800(v10);
    }

    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3uiv;
        goto LABEL_16;
      }

      if (a3 == 4)
      {
        v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4uiv;
        goto LABEL_16;
      }
    }

    else
    {
      if (a3 == 1)
      {
        v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1uiv;
        goto LABEL_16;
      }

      if (a3 == 2)
      {
        v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2uiv;
LABEL_16:
        (*v9)(v7, 1, a4);
        return;
      }
    }

    v10[0] = "hdSt/resourceBinder.cpp";
    v10[1] = "BindUniformui";
    v10[2] = 1596;
    v10[3] = "void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindUniformui(const TfToken &, int, const unsigned int *) const";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Invalid count %d.", a3);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindUniformf(pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int a3, const float *a4)
{
  v6 = sub_29ADD2604(this, a2, -1);
  v7 = (v6 >> 8);
  if (v7 != 0xFFFF)
  {
    v8 = v6;
    if ((v6 & 0x80000000) == 0 || (sub_29B2C9848(v13)) && (v8 == 11 || (sub_29B2C9890(v12)))
    {
      if (a3 <= 2)
      {
        if (a3 == 1)
        {
          v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform1fv;
        }

        else
        {
          if (a3 != 2)
          {
LABEL_17:
            v10[0] = "hdSt/resourceBinder.cpp";
            v10[1] = "BindUniformf";
            v10[2] = 1622;
            v10[3] = "void pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindUniformf(const TfToken &, int, const float *) const";
            v11 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Invalid count %d.", a3);
            return;
          }

          v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform2fv;
        }
      }

      else
      {
        switch(a3)
        {
          case 3:
            v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform3fv;
            break;
          case 4:
            v9 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniform4fv;
            break;
          case 16:
            pxrInternal__aapl__pxrReserved__::internal::GLApi::glUniformMatrix4fv(v7, 1, 0, a4);
            return;
          default:
            goto LABEL_17;
        }
      }

      (*v9)(v7, 1, a4);
    }
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::ComputeHash(pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData *this)
{
  v2 = *(this + 76);
  LODWORD(v111) = *(this + 82);
  LODWORD(v109) = *(this + 88);
  v3 = *(this + 94);
  v118 = *(this + 100);
  v119 = v3;
  v117 = *(this + 112);
  v116 = *(this + 118);
  v4 = *(this + 124);
  v114 = *(this + 130);
  v115 = v4;
  v113 = *(this + 136);
  LOBYTE(v121) = 1;
  v120 = v2 + ((v2 + v2 * v2) >> 1);
  sub_29ADFA758(&v120, this + 37, &v111, this + 40, &v109, this + 43, &v119, this + 46, &v118, this + 49, &v117, this + 55, &v116, this + 58, &v115, &v114, this + 64, &v113, this + 67);
  v5 = bswap64(0x9E3779B97F4A7C55 * v120);
  v6 = *(this + 75);
  v7 = *(this + 76);
  v120 = v6;
  v121 = v7;
  while (v6 != v7)
  {
    v8 = *(*sub_29ADF66A4(&v120) + 16);
    v9 = *(*sub_29ADF66A4(&v120) + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = v8 + ((v5 + v8 + (v5 + v8) * (v5 + v8)) >> 1) + v9;
    v5 = bswap64(0x9E3779B97F4A7C55 * (v9 + ((v10 + v10 * v10) >> 1)));
    sub_29ADF66DC(&v120);
    v6 = v120;
    v7 = v121;
  }

  v11 = *(this + 72);
  v12 = *(this + 73);
  v120 = v11;
  v121 = v12;
  while (v11 != v12)
  {
    v13 = *(*sub_29ADF66A4(&v120) + 16);
    v14 = *(*sub_29ADF66A4(&v120) + 8) & 0xFFFFFFFFFFFFFFF8;
    v15 = v13 + ((v5 + v13 + (v5 + v13) * (v5 + v13)) >> 1) + v14;
    v5 = bswap64(0x9E3779B97F4A7C55 * (v14 + ((v15 + v15 * v15) >> 1)));
    sub_29ADF66DC(&v120);
    v11 = v120;
    v12 = v121;
  }

  v16 = *(this + 82);
  v17 = bswap64(0x9E3779B97F4A7C55 * ((v5 + v5 * v5) >> 1));
  v111 = *(this + 81);
  v112 = v16;
  while (v111 != v112)
  {
    v18 = **sub_29ADF66A4(&v111);
    v19 = *sub_29ADF66A4(&v111);
    LODWORD(v109) = *(*sub_29ADF66A4(&v111) + 16);
    v119 = *(*sub_29ADF66A4(&v111) + 17);
    LOBYTE(v121) = 1;
    v20 = bswap64(0x9E3779B97F4A7C55 * (v18 & 0xFFFFFFFFFFFFFFF8));
    v120 = v20 + ((v20 + v17 + (v20 + v17) * (v20 + v17)) >> 1);
    sub_29ADFAD70(&v120, (v19 + 8), &v109, &v119);
    v17 = bswap64(0x9E3779B97F4A7C55 * v120);
    sub_29ADF66DC(&v111);
  }

  v21 = bswap64(0x9E3779B97F4A7C55 * ((v17 + v17 * v17) >> 1));
  v111 = *(this + 78);
  v112 = this + 632;
  while (v111 != v112)
  {
    v22 = sub_29ADF675C(&v111);
    v21 = bswap64(0x9E3779B97F4A7C55 * (*(*v22 + 32) + ((v21 + *(*v22 + 32) + (v21 + *(*v22 + 32)) * (v21 + *(*v22 + 32))) >> 1)));
    v23 = sub_29ADF675C(&v111);
    v26 = *(*v23 + 56);
    v109 = *(*v23 + 48);
    v110 = v26;
    while (v109 != v110)
    {
      v27 = sub_29ADF6794(&v109, v24, v25);
      v28 = *v27;
      LOBYTE(v121) = 1;
      v29 = bswap64(0x9E3779B97F4A7C55 * (v28 & 0xFFFFFFFFFFFFFFF8));
      v120 = v29 + ((v29 + v21 + (v29 + v21) * (v29 + v21)) >> 1);
      sub_29ADFADEC(&v120, (v27 + 8), (v27 + 16), (v27 + 20));
      v21 = bswap64(0x9E3779B97F4A7C55 * v120);
      sub_29ADF6814(&v109);
    }

    sub_29ADF6894(&v111);
  }

  v30 = bswap64(0x9E3779B97F4A7C55 * ((v21 + v21 * v21) >> 1));
  v111 = *(this + 2);
  v112 = this + 24;
  while (v111 != v112)
  {
    v31 = sub_29ADF675C(&v111);
    v30 = bswap64(0x9E3779B97F4A7C55 * (*(*v31 + 32) + ((v30 + *(*v31 + 32) + (v30 + *(*v31 + 32)) * (v30 + *(*v31 + 32))) >> 1)));
    v32 = sub_29ADF675C(&v111);
    v35 = *(*v32 + 56);
    v109 = *(*v32 + 48);
    v110 = v35;
    while (v109 != v110)
    {
      v36 = sub_29ADF6794(&v109, v33, v34);
      v37 = *v36;
      LOBYTE(v121) = 1;
      v38 = bswap64(0x9E3779B97F4A7C55 * (v37 & 0xFFFFFFFFFFFFFFF8));
      v120 = v38 + ((v38 + v30 + (v38 + v30) * (v38 + v30)) >> 1);
      sub_29ADFADEC(&v120, (v36 + 8), (v36 + 16), (v36 + 20));
      v30 = bswap64(0x9E3779B97F4A7C55 * v120);
      sub_29ADF6814(&v109);
    }

    sub_29ADF6894(&v111);
  }

  v39 = bswap64(0x9E3779B97F4A7C55 * ((v30 + v30 * v30) >> 1));
  v111 = *(this + 8);
  v112 = this + 72;
  while (v111 != v112)
  {
    v40 = sub_29ADF675C(&v111);
    v39 = bswap64(0x9E3779B97F4A7C55 * (*(*v40 + 32) + ((v39 + *(*v40 + 32) + (v39 + *(*v40 + 32)) * (v39 + *(*v40 + 32))) >> 1)));
    v41 = sub_29ADF675C(&v111);
    v44 = *(*v41 + 56);
    v109 = *(*v41 + 48);
    v110 = v44;
    while (v109 != v110)
    {
      v45 = sub_29ADF6794(&v109, v42, v43);
      v46 = *v45;
      LOBYTE(v121) = 1;
      v47 = bswap64(0x9E3779B97F4A7C55 * (v46 & 0xFFFFFFFFFFFFFFF8));
      v120 = v47 + ((v47 + v39 + (v47 + v39) * (v47 + v39)) >> 1);
      sub_29ADFADEC(&v120, (v45 + 8), (v45 + 16), (v45 + 20));
      v39 = bswap64(0x9E3779B97F4A7C55 * v120);
      sub_29ADF6814(&v109);
    }

    sub_29ADF6894(&v111);
  }

  v48 = bswap64(0x9E3779B97F4A7C55 * ((v39 + v39 * v39) >> 1));
  v49 = *(this + 29);
  v50 = this + 240;
  v120 = v49;
  v121 = this + 240;
  while (v49 != v50)
  {
    v51 = sub_29ADF693C(&v120);
    v52 = bswap64(0x9E3779B97F4A7C55 * (*(*v51 + 32) + ((v48 + *(*v51 + 32) + (v48 + *(*v51 + 32)) * (v48 + *(*v51 + 32))) >> 1)));
    v53 = sub_29ADF693C(&v120);
    v54 = bswap64(0x9E3779B97F4A7C55 * (*(*v53 + 40) & 0xFFFFFFFFFFFFFFF8));
    v55 = v52 + v54 + (v52 + v54) * (v52 + v54);
    v56 = *(*v53 + 48) & 0xFFFFFFFFFFFFFFF8;
    v57 = v54 + v56 + (v55 >> 1) + (v54 + v56 + (v55 >> 1)) * (v54 + v56 + (v55 >> 1));
    v48 = bswap64(0x9E3779B97F4A7C55 * (*(*v53 + 56) + ((v56 + *(*v53 + 56) + (v57 >> 1) + (v56 + *(*v53 + 56) + (v57 >> 1)) * (v56 + *(*v53 + 56) + (v57 >> 1))) >> 1)));
    sub_29ADF6974(&v120);
    v49 = v120;
    v50 = v121;
  }

  v58 = bswap64(0x9E3779B97F4A7C55 * ((v48 + v48 * v48) >> 1));
  v59 = *(this + 14);
  v60 = this + 120;
  v120 = v59;
  v121 = this + 120;
  while (v59 != v60)
  {
    v61 = sub_29ADF6A1C(&v120);
    v62 = bswap64(0x9E3779B97F4A7C55 * (*(*v61 + 32) + ((v58 + *(*v61 + 32) + (v58 + *(*v61 + 32)) * (v58 + *(*v61 + 32))) >> 1)));
    v63 = sub_29ADF6A1C(&v120);
    v64 = bswap64(0x9E3779B97F4A7C55 * (*(*v63 + 40) & 0xFFFFFFFFFFFFFFF8));
    v65 = v62 + v64 + (v62 + v64) * (v62 + v64);
    v58 = bswap64(0x9E3779B97F4A7C55 * ((*(*v63 + 48) & 0xFFFFFFFFFFFFFFF8) + ((v64 + (*(*v63 + 48) & 0xFFFFFFFFFFFFFFF8) + (v65 >> 1) + (v64 + (*(*v63 + 48) & 0xFFFFFFFFFFFFFFF8) + (v65 >> 1)) * (v64 + (*(*v63 + 48) & 0xFFFFFFFFFFFFFFF8) + (v65 >> 1))) >> 1)));
    sub_29ADF6A54(&v120);
    v59 = v120;
    v60 = v121;
  }

  v66 = bswap64(0x9E3779B97F4A7C55 * ((v58 + v58 * v58) >> 1));
  v67 = *(this + 17);
  v68 = this + 144;
  v120 = v67;
  v121 = this + 144;
  while (v67 != v68)
  {
    v69 = sub_29ADF6A1C(&v120);
    v70 = bswap64(0x9E3779B97F4A7C55 * (*(*v69 + 32) + ((v66 + *(*v69 + 32) + (v66 + *(*v69 + 32)) * (v66 + *(*v69 + 32))) >> 1)));
    v71 = sub_29ADF6A1C(&v120);
    v72 = bswap64(0x9E3779B97F4A7C55 * (*(*v71 + 40) & 0xFFFFFFFFFFFFFFF8));
    v73 = v70 + v72 + (v70 + v72) * (v70 + v72);
    v66 = bswap64(0x9E3779B97F4A7C55 * ((*(*v71 + 48) & 0xFFFFFFFFFFFFFFF8) + ((v72 + (*(*v71 + 48) & 0xFFFFFFFFFFFFFFF8) + (v73 >> 1) + (v72 + (*(*v71 + 48) & 0xFFFFFFFFFFFFFFF8) + (v73 >> 1)) * (v72 + (*(*v71 + 48) & 0xFFFFFFFFFFFFFFF8) + (v73 >> 1))) >> 1)));
    sub_29ADF6A54(&v120);
    v67 = v120;
    v68 = v121;
  }

  v74 = bswap64(0x9E3779B97F4A7C55 * ((v66 + v66 * v66) >> 1));
  v75 = *(this + 11);
  v76 = this + 96;
  v120 = v75;
  v121 = this + 96;
  while (v75 != v76)
  {
    v77 = sub_29ADF6A1C(&v120);
    v78 = bswap64(0x9E3779B97F4A7C55 * (*(*v77 + 32) + ((v74 + *(*v77 + 32) + (v74 + *(*v77 + 32)) * (v74 + *(*v77 + 32))) >> 1)));
    v79 = sub_29ADF6A1C(&v120);
    v80 = bswap64(0x9E3779B97F4A7C55 * (*(*v79 + 40) & 0xFFFFFFFFFFFFFFF8));
    v81 = v78 + v80 + (v78 + v80) * (v78 + v80);
    v74 = bswap64(0x9E3779B97F4A7C55 * ((*(*v79 + 48) & 0xFFFFFFFFFFFFFFF8) + ((v80 + (*(*v79 + 48) & 0xFFFFFFFFFFFFFFF8) + (v81 >> 1) + (v80 + (*(*v79 + 48) & 0xFFFFFFFFFFFFFFF8) + (v81 >> 1)) * (v80 + (*(*v79 + 48) & 0xFFFFFFFFFFFFFFF8) + (v81 >> 1))) >> 1)));
    sub_29ADF6A54(&v120);
    v75 = v120;
    v76 = v121;
  }

  v82 = bswap64(0x9E3779B97F4A7C55 * ((v74 + v74 * v74) >> 1));
  v83 = *(this + 20);
  v84 = this + 168;
  v120 = v83;
  v121 = this + 168;
  while (v83 != v84)
  {
    v85 = sub_29ADF6AFC(&v120);
    v86 = bswap64(0x9E3779B97F4A7C55 * (*(*v85 + 32) + ((v82 + *(*v85 + 32) + (v82 + *(*v85 + 32)) * (v82 + *(*v85 + 32))) >> 1)));
    v87 = sub_29ADF6AFC(&v120);
    v88 = bswap64(0x9E3779B97F4A7C55 * (*(*v87 + 40) & 0xFFFFFFFFFFFFFFF8));
    v89 = v86 + v88 + (v86 + v88) * (v86 + v88);
    v90 = *(*v87 + 48) & 0xFFFFFFFFFFFFFFF8;
    v91 = v88 + v90 + (v89 >> 1) + (v88 + v90 + (v89 >> 1)) * (v88 + v90 + (v89 >> 1));
    v82 = bswap64(0x9E3779B97F4A7C55 * (*(*v87 + 56) + ((v90 + *(*v87 + 56) + (v91 >> 1) + (v90 + *(*v87 + 56) + (v91 >> 1)) * (v90 + *(*v87 + 56) + (v91 >> 1))) >> 1)));
    sub_29ADF6B34(&v120);
    v83 = v120;
    v84 = v121;
  }

  v92 = bswap64(0x9E3779B97F4A7C55 * ((v82 + v82 * v82) >> 1));
  v111 = *(this + 5);
  v112 = this + 48;
  while (v111 != v112)
  {
    v93 = sub_29ADF675C(&v111);
    v92 = bswap64(0x9E3779B97F4A7C55 * (*(*v93 + 32) + ((v92 + *(*v93 + 32) + (v92 + *(*v93 + 32)) * (v92 + *(*v93 + 32))) >> 1)));
    v94 = sub_29ADF675C(&v111);
    v97 = *(*v94 + 56);
    v109 = *(*v94 + 48);
    v110 = v97;
    while (v109 != v110)
    {
      v98 = sub_29ADF6794(&v109, v95, v96);
      v99 = *v98;
      LOBYTE(v121) = 1;
      v100 = bswap64(0x9E3779B97F4A7C55 * (v99 & 0xFFFFFFFFFFFFFFF8));
      v120 = v100 + ((v100 + v92 + (v100 + v92) * (v100 + v92)) >> 1);
      sub_29ADFADEC(&v120, (v98 + 8), (v98 + 16), (v98 + 20));
      v92 = bswap64(0x9E3779B97F4A7C55 * v120);
      sub_29ADF6814(&v109);
    }

    sub_29ADF6894(&v111);
  }

  v101 = bswap64(0x9E3779B97F4A7C55 * ((v92 + v92 * v92) >> 1));
  v111 = *(this + 33);
  v112 = this + 272;
  while (v111 != v112)
  {
    v102 = sub_29ADF6BDC(&v111);
    v103 = bswap64(0x9E3779B97F4A7C55 * (*(*v102 + 32) + ((v101 + *(*v102 + 32) + (v101 + *(*v102 + 32)) * (v101 + *(*v102 + 32))) >> 1)));
    v104 = sub_29ADF6BDC(&v111);
    v105 = *v104;
    v106 = *(*v104 + 40);
    LOBYTE(v121) = 1;
    v107 = bswap64(0x9E3779B97F4A7C55 * (v106 & 0xFFFFFFFFFFFFFFF8));
    v120 = v107 + ((v103 + v107 + (v103 + v107) * (v103 + v107)) >> 1);
    sub_29ADFAE28(&v120, (v105 + 48), v105 + 56);
    v101 = bswap64(0x9E3779B97F4A7C55 * v120);
    sub_29ADF6C14(&v111);
  }

  return v101;
}

void *sub_29ADF66A4(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C98D8();
  }

  return result;
}

void *sub_29ADF66DC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::BindingDeclaration>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::BindingDeclaration>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 24;
  }

  return a1;
}

void *sub_29ADF675C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C9924();
  }

  return result;
}

uint64_t sub_29ADF6794(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::StructEntry>>::operator*() [T = const std::vector<pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::StructEntry>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29ADF6814(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::StructEntry>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::StructEntry>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 32;
  }

  return a1;
}

void *sub_29ADF6894(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<pxrInternal__aapl__pxrReserved__::HdStBinding, pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::StructBlock>>::operator++() [T = const std::map<pxrInternal__aapl__pxrReserved__::HdStBinding, pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::StructBlock>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void *sub_29ADF693C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C9970();
  }

  return result;
}

void *sub_29ADF6974(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<pxrInternal__aapl__pxrReserved__::HdStBinding, pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::NestedPrimvar>>::operator++() [T = const std::map<pxrInternal__aapl__pxrReserved__::HdStBinding, pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::NestedPrimvar>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void *sub_29ADF6A1C(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C99BC();
  }

  return result;
}

void *sub_29ADF6A54(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<pxrInternal__aapl__pxrReserved__::HdStBinding, pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::Primvar>>::operator++() [T = const std::map<pxrInternal__aapl__pxrReserved__::HdStBinding, pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::Primvar>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void *sub_29ADF6AFC(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C9A08();
  }

  return result;
}

void *sub_29ADF6B34(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<pxrInternal__aapl__pxrReserved__::HdStBinding, pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::FvarPrimvar>>::operator++() [T = const std::map<pxrInternal__aapl__pxrReserved__::HdStBinding, pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::FvarPrimvar>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void *sub_29ADF6BDC(void *result)
{
  if (*result == result[1])
  {
    sub_29B2C9A54();
  }

  return result;
}

void *sub_29ADF6C14(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<pxrInternal__aapl__pxrReserved__::HdStBinding, pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::ShaderParameterAccessor>>::operator++() [T = const std::map<pxrInternal__aapl__pxrReserved__::HdStBinding, pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::MetaData::ShaderParameterAccessor>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetSamplerBindlessHandle(const void **a1, const void **a2)
{
  v3 = *a1;
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  if (!*a2)
  {
    return 0;
  }

  if (!v4 || !v5)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::HgiGLSampler::GetBindlessHandle(v4, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::GetTextureBindlessHandle(const void **a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::HgiGLTexture::GetBindlessHandle(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindTexture(uint64_t a1, uint64_t *a2, void *a3, void *a4, int a5)
{
  result = sub_29ADD2604(a1, a2, -1);
  if (result - 21 < 7)
  {
    return result;
  }

  v9 = BYTE3(result);
  if (!a5)
  {
    v10 = 0;
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if (*a4)
  {
    v10 = (*(**a4 + 24))(*a4);
  }

  else
  {
    v10 = 0;
  }

  if (!*a3)
  {
    goto LABEL_9;
  }

  v11 = (*(**a3 + 16))(*a3);
LABEL_10:
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTextureUnit(v9, v10);
  v12 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindSampler;

  return v12(v9, v11);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_ResourceBinder::BindTextureWithLayout(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  result = sub_29ADD2604(a1, a2, -1);
  if (result - 21 >= 7)
  {
    v15 = BYTE3(result);
    if (a7)
    {
      if (*a4)
      {
        v16 = (*(**a4 + 24))(*a4);
      }

      else
      {
        v16 = 0;
      }

      if (*a3)
      {
        v17 = (*(**a3 + 16))(*a3);
        goto LABEL_10;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = 0;
LABEL_10:
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTextureUnit(v15, v16);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindSampler(v15, v17);
    sub_29ADF33A8(a2, &v22);
    v18 = sub_29ADD2604(a1, &v22, -1);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v19 = HIBYTE(v18);
    if (a7)
    {
      if (*a6)
      {
        v20 = (*(**a6 + 24))(*a6);
      }

      else
      {
        v20 = 0;
      }

      if (*a5)
      {
        v21 = (*(**a5 + 16))(*a5);
LABEL_20:
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindTextureUnit(v19, v20);
        return pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindSampler(v19, v21);
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29ADF714C(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  *a1 = *a2;
  v5 = *a3;
  *(a1 + 8) = *a3;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_29ADF71E8((a1 + 16), a3[1], a3[2], (a3[2] - a3[1]) >> 5);
  *(a1 + 40) = *(a3 + 8);
  return a1;
}

void *sub_29ADF71E8(void *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29ADF7270(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29ADF7250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AB7E23C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29ADF7270(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29ADF7304(a1, v4, v6);
      v6 += 4;
      v4 = v12 + 32;
      v12 += 32;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29ADF7370(v9);
  return v4;
}

void sub_29ADF7304(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[1];
  *(a2 + 8) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = a3[2];
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 16) = v5;
}

uint64_t sub_29ADF7370(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ADF73A8(a1);
  }

  return a1;
}

uint64_t sub_29ADF73A8(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = *(v1 - 32);
    v1 -= 32;
    v4 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29ADF73F4(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *a3;
  *(a1 + 8) = *a3;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v7;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29ADF74E0(_Unwind_Exception *exception_object)
{
  v2 = v1[1];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29ADF7534()
{
  v37 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x90uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "double", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "float", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "int", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "vec2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "vec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "vec4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "dvec2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "dvec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "dvec4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "ivec2", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "ivec3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "ivec4", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "constantPrimvars", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "primitiveParam", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "topologyVisibility", 0);
  v1 = v0 + 15;
  v2 = *v0;
  v22 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v23 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v24 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v25 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v26 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v27 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v28 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v29 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v30 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v31 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v32 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v33 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[12];
  v34 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[13];
  v35 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[14];
  v36 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[16] = 0;
  v0[17] = 0;
  sub_29A12EF7C(v1, &v22, &v37, 0xFuLL);
  for (i = 112; i != -8; i -= 8)
  {
    v18 = *(&v22 + i);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v19 = 0;
  atomic_compare_exchange_strong(&qword_2A174ECB0, &v19, v0);
  if (v19)
  {
    v20 = sub_29A76D850(v0);
    operator delete(v20);
    return atomic_load(&qword_2A174ECB0);
  }

  return v0;
}

void sub_29ADF79C8(_Unwind_Exception *a1)
{
  v4 = 112;
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
      v6 = v1[14];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[13];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[12];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[11];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[10];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[9];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[8];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[7];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[6];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[5];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[4];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[3];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[2];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[1];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

uint64_t sub_29ADF7BE4(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4, int *a5)
{
  v5 = (*(a1 + 8) - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v12 = *(a1 + 16) - *a1;
  if (v12 >> 4 > v6)
  {
    v6 = v12 >> 4;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFE0)
  {
    v13 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v6;
  }

  v24 = a1;
  if (v13)
  {
    v14 = sub_29A10CB10(a1, v13);
  }

  else
  {
    v14 = 0;
  }

  v21 = v14;
  v22 = &v14[32 * v5];
  *(&v23 + 1) = &v14[32 * v13];
  sub_29ADF7D14(v22, a2, a3, *a4, *a5, 0);
  *&v23 = v22 + 32;
  v15 = *(a1 + 8);
  v16 = &v22[*a1 - v15];
  sub_29ADF7D78(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  sub_29ADF7E4C(&v21);
  return v20;
}

void sub_29ADF7D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADF7E4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ADF7D14(uint64_t result, uint64_t *a2, uint64_t *a3, int a4, int a5, char a6)
{
  v6 = *a2;
  *result = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *a3;
  *(result + 8) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 16) = a4;
  *(result + 20) = a5;
  *(result + 24) = a6;
  return result;
}

uint64_t sub_29ADF7D78(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      *(a4 + 8) = v4[1];
      v4[1] = 0;
      v5 = v4[2];
      *(a4 + 24) = *(v4 + 24);
      *(a4 + 16) = v5;
      v4 += 4;
      a4 += 32;
    }

    while (v4 != a3);
    v11 = a4;
    for (i = 1; a2 != a3; a2 += 4)
    {
      v6 = a2[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return sub_29ADF7370(v8);
}

uint64_t sub_29ADF7E4C(uint64_t a1)
{
  sub_29ADF7E84(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29ADF7E84(uint64_t result, uint64_t a2)
{
  for (i = *(result + 16); i != a2; i = *(result + 16))
  {
    v3 = (i - 32);
    *(result + 16) = i - 32;
    v4 = *(i - 24);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((*v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t **sub_29ADF7ED4(uint64_t **result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a2;
  v9 = result;
  v43 = a2;
  v44 = result;
  while (1)
  {
    --a4;
    v10 = (v8 - v9) >> 5;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v43 = v8 - 4;
        if (*(v8 - 4) >= *(v9 + 4))
        {
          return result;
        }

        v41 = &v44;
        v42 = &v43;
        return sub_29ADF84C8(v41, v42);
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      v48 = v9 + 4;
      v49 = v9;
      v47 = v8 - 4;
      v39 = *(v9 + 12);
      v40 = *(v8 - 4);
      if (v39 >= *(v9 + 4))
      {
        if (v40 >= v39)
        {
          return result;
        }

        result = sub_29ADF84C8(&v48, &v47);
        v37 = *(v48 + 4);
        v38 = *(v49 + 4);
LABEL_86:
        if (v37 >= v38)
        {
          return result;
        }

        v41 = &v49;
        v42 = &v48;
      }

      else
      {
        v41 = &v49;
        if (v40 >= v39)
        {
          result = sub_29ADF84C8(&v49, &v48);
          if (*(v47 + 4) >= *(v48 + 4))
          {
            return result;
          }

          v41 = &v48;
        }

        v42 = &v47;
      }

      return sub_29ADF84C8(v41, v42);
    }

    if (v10 == 4)
    {
      v43 = v8 - 4;
      return sub_29ADF8588(v9, (v9 + 4), (v9 + 8), (v8 - 4));
    }

    if (v10 == 5)
    {
      break;
    }

LABEL_9:
    if (v10 <= 23)
    {
      if (a5)
      {
        return sub_29ADF86B0(v9, v8);
      }

      else
      {
        return sub_29ADF87F0(v9, v8);
      }
    }

    if (a4 == -1)
    {
      if (v9 != v8)
      {
        return sub_29ADF902C(v9, v8, v8, a3);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = &v9[4 * (v10 >> 1)];
    if (v10 >= 0x81)
    {
      v48 = &v9[4 * (v10 >> 1)];
      v49 = v9;
      v47 = v8 - 4;
      v13 = *(v12 + 4);
      v14 = *(v8 - 4);
      if (v13 >= *(v9 + 4))
      {
        if (v14 >= v13 || (sub_29ADF84C8(&v48, &v47), *(v48 + 4) >= *(v49 + 4)))
        {
LABEL_26:
          v48 = &v44[4 * v11 - 4];
          v49 = v44 + 4;
          v47 = v8 - 8;
          v22 = *(v48 + 4);
          v23 = *(v8 - 12);
          if (v22 >= *(v44 + 12))
          {
            if (v23 >= v22 || (sub_29ADF84C8(&v48, &v47), *(v48 + 4) >= *(v49 + 4)))
            {
LABEL_39:
              v48 = &v44[4 * v11 + 4];
              v49 = v44 + 8;
              v47 = v8 - 12;
              v26 = *(v48 + 4);
              v27 = *(v8 - 20);
              if (v26 >= *(v44 + 20))
              {
                if (v27 >= v26 || (sub_29ADF84C8(&v48, &v47), *(v48 + 4) >= *(v49 + 4)))
                {
LABEL_48:
                  v48 = &v44[4 * v11];
                  v49 = &v44[4 * v11 - 4];
                  v47 = &v44[4 * v11 + 4];
                  v30 = *(v48 + 4);
                  v31 = *(v47 + 4);
                  if (v30 >= *(v49 + 4))
                  {
                    if (v31 >= v30)
                    {
                      goto LABEL_57;
                    }

                    sub_29ADF84C8(&v48, &v47);
                    if (*(v48 + 4) >= *(v49 + 4))
                    {
                      goto LABEL_57;
                    }

                    v32 = &v49;
                    v33 = &v48;
                  }

                  else
                  {
                    v32 = &v49;
                    if (v31 >= v30)
                    {
                      sub_29ADF84C8(&v49, &v48);
                      if (*(v47 + 4) >= *(v48 + 4))
                      {
LABEL_57:
                        v49 = &v44[4 * v11];
                        sub_29ADF84C8(&v44, &v49);
                        goto LABEL_58;
                      }

                      v32 = &v48;
                    }

                    v33 = &v47;
                  }

                  sub_29ADF84C8(v32, v33);
                  goto LABEL_57;
                }

                v28 = &v49;
                v29 = &v48;
              }

              else
              {
                v28 = &v49;
                if (v27 >= v26)
                {
                  sub_29ADF84C8(&v49, &v48);
                  if (*(v47 + 4) >= *(v48 + 4))
                  {
                    goto LABEL_48;
                  }

                  v28 = &v48;
                }

                v29 = &v47;
              }

              sub_29ADF84C8(v28, v29);
              goto LABEL_48;
            }

            v24 = &v49;
            v25 = &v48;
          }

          else
          {
            v24 = &v49;
            if (v23 >= v22)
            {
              sub_29ADF84C8(&v49, &v48);
              if (*(v47 + 4) >= *(v48 + 4))
              {
                goto LABEL_39;
              }

              v24 = &v48;
            }

            v25 = &v47;
          }

          sub_29ADF84C8(v24, v25);
          goto LABEL_39;
        }

        v15 = &v49;
        v16 = &v48;
      }

      else
      {
        v15 = &v49;
        if (v14 >= v13)
        {
          sub_29ADF84C8(&v49, &v48);
          if (*(v47 + 4) >= *(v48 + 4))
          {
            goto LABEL_26;
          }

          v15 = &v48;
        }

        v16 = &v47;
      }

      sub_29ADF84C8(v15, v16);
      goto LABEL_26;
    }

    v48 = v9;
    v49 = &v9[4 * (v10 >> 1)];
    v47 = v8 - 4;
    v17 = *(v9 + 4);
    v18 = *(v12 + 4);
    v19 = *(v8 - 4);
    if (v17 >= v18)
    {
      if (v19 >= v17)
      {
        goto LABEL_58;
      }

      sub_29ADF84C8(&v48, &v47);
      if (*(v48 + 4) >= *(v49 + 4))
      {
        goto LABEL_58;
      }

      v20 = &v49;
      v21 = &v48;
    }

    else
    {
      v20 = &v49;
      if (v19 >= v17)
      {
        sub_29ADF84C8(&v49, &v48);
        if (*(v47 + 4) >= *(v48 + 4))
        {
          goto LABEL_58;
        }

        v20 = &v48;
      }

      v21 = &v47;
    }

    sub_29ADF84C8(v20, v21);
LABEL_58:
    if ((a5 & 1) != 0 || *(v44 - 4) < *(v44 + 4))
    {
      v34 = sub_29ADF8AB8(v44, v8);
      if (v35)
      {
        v36 = sub_29ADF8C84(v44, v34);
        v9 = v34 + 4;
        result = sub_29ADF8C84(v34 + 4, v8);
        if (!result)
        {
          if (v36)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

        if (v36)
        {
          return result;
        }

        v43 = v34;
        v9 = v44;
        v8 = v34;
      }

      else
      {
LABEL_63:
        result = sub_29ADF7ED4(v44, v34, a3, a4, a5 & 1);
        a5 = 0;
        v9 = v34 + 4;
LABEL_64:
        v44 = v9;
      }
    }

    else
    {
      result = sub_29ADF88F4(v44, v8);
      v9 = result;
      a5 = 0;
      v44 = result;
    }
  }

  v43 = v8 - 4;
  v48 = v9 + 4;
  v49 = v9;
  v46 = v9 + 12;
  v47 = v9 + 8;
  v45 = v8 - 4;
  result = sub_29ADF8588(v9, (v9 + 4), (v9 + 8), (v9 + 12));
  if (*(v8 - 4) < *(v9 + 28))
  {
    result = sub_29ADF84C8(&v46, &v45);
    if (*(v46 + 4) < *(v9 + 20))
    {
      result = sub_29ADF84C8(&v47, &v46);
      if (*(v47 + 4) < *(v9 + 12))
      {
        result = sub_29ADF84C8(&v48, &v47);
        v37 = *(v48 + 4);
        v38 = *(v9 + 4);
        goto LABEL_86;
      }
    }
  }

  return result;
}

uint64_t **sub_29ADF84C8(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v5 = **result;
  v4 = (*result)[1];
  *v2 = 0;
  v2[1] = 0;
  v10 = *(v2 + 24);
  if (v3 != v2)
  {
    *v2 = *v3;
    *v3 = 0;
    v6 = v2[1];
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v2[1] = *(v3 + 8);
    *(v3 + 8) = 0;
  }

  v7 = *(v3 + 16);
  *(v2 + 24) = *(v3 + 24);
  v2[2] = v7;
  if ((*v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v3 = v5;
  v8 = *(v3 + 8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v3 + 8) = v4;
  *(v3 + 16) = v9;
  *(v3 + 24) = v10;
  return result;
}

uint64_t **sub_29ADF8588(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v14 = a2;
  v15 = result;
  v12 = a4;
  v13 = a3;
  v18 = result;
  v16 = a3;
  v17 = a2;
  v8 = *(a2 + 16);
  v9 = *(a3 + 16);
  if (v8 >= *(result + 4))
  {
    if (v9 < v8)
    {
      result = sub_29ADF84C8(&v17, &v16);
      if (*(v17 + 4) < *(v18 + 4))
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      result = sub_29ADF84C8(v10, v11);
      goto LABEL_10;
    }

    result = sub_29ADF84C8(&v18, &v17);
    if (*(v16 + 16) < *(v17 + 4))
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 16) < *(a3 + 16))
  {
    result = sub_29ADF84C8(&v13, &v12);
    if (*(v13 + 4) < *(a2 + 16))
    {
      result = sub_29ADF84C8(&v14, &v13);
      if (*(v14 + 4) < *(v7 + 4))
      {
        return sub_29ADF84C8(&v15, &v14);
      }
    }
  }

  return result;
}

void *sub_29ADF86B0(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        if (*(v4 + 12) < *(v4 + 4))
        {
          v6 = *v2;
          *v2 = 0;
          v7 = v4[5];
          v4[5] = 0;
          v8 = *(v4 + 12);
          v18 = *(v4 + 13);
          v19 = *(v4 + 56);
          v9 = v3;
          while (1)
          {
            v10 = v9;
            v11 = (result + v9);
            v12 = *(result + v9 + 32);
            if ((v12 & 7) != 0)
            {
              atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v11[4] = *v11;
            *v11 = 0;
            v13 = v11[5];
            if ((v13 & 7) != 0)
            {
              atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v11[5] = v11[1];
            v11[1] = 0;
            v14 = result + v10;
            *(v14 + 6) = *(result + v10 + 16);
            v14[56] = *(result + v10 + 24);
            if (!v10)
            {
              break;
            }

            v9 = v10 - 32;
            if (v8 >= *(v14 - 4))
            {
              v15 = (result + v10);
              goto LABEL_14;
            }
          }

          v15 = result;
LABEL_14:
          if ((*v15 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v15 = v6;
          v16 = v15[1];
          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v15[1] = v7;
          *(v14 + 4) = v8;
          v17 = result + v10;
          *(v17 + 5) = v18;
          v17[24] = v19;
        }

        v2 = v5 + 4;
        v3 += 32;
        v4 = v5;
      }

      while (v5 + 4 != a2);
    }
  }

  return result;
}

void *sub_29ADF87F0(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      do
      {
        v3 = v2;
        if (*(result + 12) < *(result + 4))
        {
          v4 = *v2;
          *v2 = 0;
          v5 = result[5];
          result[5] = 0;
          v6 = *(result + 12);
          v12 = *(result + 13);
          v13 = *(result + 56);
          v7 = v3;
          do
          {
            if ((*v7 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v7 = *(v7 - 4);
            *(v7 - 4) = 0;
            v8 = v7[1];
            if ((v8 & 7) != 0)
            {
              atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v9 = *(v7 - 3);
            v10 = *(v7 - 2);
            *(v7 - 3) = 0;
            v7[1] = v9;
            v7[2] = v10;
            *(v7 + 24) = *(v7 - 8);
            LODWORD(v9) = *(v7 - 12);
            v7 -= 4;
          }

          while (v6 < v9);
          if ((*v7 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v7 = v4;
          v11 = v7[1];
          if ((v11 & 7) != 0)
          {
            atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v7[1] = v5;
          *(v7 + 4) = v6;
          *(v7 + 5) = v12;
          *(v7 + 24) = v13;
        }

        v2 = v3 + 4;
        result = v3;
      }

      while (v3 + 4 != a2);
    }
  }

  return result;
}

uint64_t *sub_29ADF88F4(uint64_t a1, unint64_t a2)
{
  v23 = a2;
  v4 = *a1;
  v3 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  v21 = *(a1 + 20);
  v22 = *(a1 + 24);
  if (v5 >= *(a2 - 16))
  {
    v10 = a1 + 32;
    do
    {
      v8 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = *(v10 + 16);
      v10 += 32;
    }

    while (v5 >= v11);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = (v7 + 32);
      v9 = *(v7 + 48);
      v7 += 32;
    }

    while (v5 >= v9);
  }

  v24 = v8;
  if (v8 < a2)
  {
    do
    {
      v12 = *(a2 - 16);
      a2 -= 32;
    }

    while (v5 < v12);
    v23 = a2;
  }

  if (v8 < a2)
  {
    do
    {
      sub_29ADF84C8(&v24, &v23);
      v8 = v24;
      do
      {
        v13 = *(v8 + 12);
        v8 += 4;
      }

      while (v5 >= v13);
      v24 = v8;
      v14 = v23;
      do
      {
        v15 = *(v14 - 16);
        v14 -= 32;
      }

      while (v5 < v15);
      v23 = v14;
    }

    while (v8 < v14);
  }

  if (v8 - 4 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *(v8 - 4);
    *(v8 - 4) = 0;
    v16 = *(a1 + 8);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 8) = *(v8 - 3);
    *(v8 - 3) = 0;
    v17 = *(v8 - 2);
    *(v6 + 8) = *(v8 - 8);
    *v6 = v17;
  }

  v18 = *(v8 - 4);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v8 - 4) = v4;
  v19 = *(v8 - 3);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v8 - 3) = v3;
  *(v8 - 4) = v5;
  *(v8 - 8) = v22;
  *(v8 - 3) = v21;
  return v24;
}

uint64_t *sub_29ADF8AB8(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  v5 = *a1;
  v4 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  v7 = a1 + 16;
  v6 = *(a1 + 16);
  v21 = *(a1 + 20);
  v22 = *(a1 + 24);
  do
  {
    v8 = *(a1 + v3 + 48);
    v3 += 32;
  }

  while (v8 < v6);
  v9 = (a1 + v3);
  v24 = (a1 + v3);
  if (v3 == 32)
  {
    while (v9 < a2)
    {
      v10 = a2 - 32;
      v12 = *(a2 - 16);
      a2 -= 32;
      if (v12 < v6)
      {
        goto LABEL_9;
      }
    }

    v10 = a2;
  }

  else
  {
    do
    {
      v10 = a2 - 32;
      v11 = *(a2 - 16);
      a2 -= 32;
    }

    while (v11 >= v6);
  }

LABEL_9:
  v23 = v10;
  v13 = v9;
  if (v9 < v10)
  {
    do
    {
      sub_29ADF84C8(&v24, &v23);
      v13 = v24;
      do
      {
        v14 = *(v13 + 12);
        v13 += 4;
      }

      while (v14 < v6);
      v24 = v13;
      v15 = v23;
      do
      {
        v16 = *(v15 - 16);
        v15 -= 32;
      }

      while (v16 >= v6);
      v23 = v15;
    }

    while (v13 < v15);
  }

  result = v13 - 4;
  if (v13 - 4 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *(v13 - 4);
    *(v13 - 4) = 0;
    v18 = *(a1 + 8);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 8) = *(v13 - 3);
    *(v13 - 3) = 0;
    v19 = *(v13 - 2);
    *(v7 + 8) = *(v13 - 8);
    *v7 = v19;
  }

  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v13 - 4) = v5;
  v20 = *(v13 - 3);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(v13 - 3) = v4;
  *(v13 - 4) = v6;
  *(v13 - 8) = v22;
  *(v13 - 3) = v21;
  return result;
}

BOOL sub_29ADF8C84(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v27 = a2;
  v28 = a1;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v26[0] = a1;
        v32 = a1 + 4;
        v31 = a2 - 4;
        v9 = *(a1 + 12);
        v10 = *(a2 - 4);
        if (v9 < *(a1 + 4))
        {
          v5 = v26;
          if (v10 >= v9)
          {
            sub_29ADF84C8(v26, &v32);
            if (*(v31 + 4) >= *(v32 + 4))
            {
              return 1;
            }

            v5 = &v32;
          }

          v6 = &v31;
          goto LABEL_28;
        }

        if (v10 >= v9)
        {
          return 1;
        }

        sub_29ADF84C8(&v32, &v31);
        v7 = *(v32 + 4);
        v8 = *(v26[0] + 4);
        break;
      case 4:
        sub_29ADF8588(a1, (a1 + 4), (a1 + 8), (a2 - 4));
        return 1;
      case 5:
        v26[0] = a1;
        v32 = a1 + 4;
        v30 = a1 + 12;
        v31 = a1 + 8;
        v29 = a2 - 4;
        sub_29ADF8588(a1, (a1 + 4), (a1 + 8), (a1 + 12));
        if (*(v2 - 4) >= *(a1 + 28))
        {
          return 1;
        }

        sub_29ADF84C8(&v30, &v29);
        if (*(v30 + 4) >= *(a1 + 20))
        {
          return 1;
        }

        sub_29ADF84C8(&v31, &v30);
        if (*(v31 + 4) >= *(a1 + 12))
        {
          return 1;
        }

        sub_29ADF84C8(&v32, &v31);
        v7 = *(v32 + 4);
        v8 = *(a1 + 4);
        break;
      default:
        goto LABEL_18;
    }

    if (v7 < v8)
    {
      v5 = v26;
      v6 = &v32;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v27 = a2 - 4;
    if (*(a2 - 4) < *(a1 + 4))
    {
      v5 = &v28;
      v6 = &v27;
LABEL_28:
      sub_29ADF84C8(v5, v6);
    }

    return 1;
  }

LABEL_18:
  v11 = a1 + 8;
  v26[0] = a1;
  v32 = a1 + 4;
  v31 = a1 + 8;
  v12 = *(a1 + 12);
  v13 = *(a1 + 20);
  if (v12 < *(a1 + 4))
  {
    v14 = v26;
    if (v13 >= v12)
    {
      sub_29ADF84C8(v26, &v32);
      if (*(v31 + 4) >= *(v32 + 4))
      {
        goto LABEL_33;
      }

      v14 = &v32;
    }

    v15 = &v31;
    goto LABEL_32;
  }

  if (v13 < v12)
  {
    sub_29ADF84C8(&v32, &v31);
    if (*(v32 + 4) < *(v26[0] + 4))
    {
      v14 = v26;
      v15 = &v32;
LABEL_32:
      sub_29ADF84C8(v14, v15);
    }
  }

LABEL_33:
  v16 = a1 + 12;
  if (a1 + 12 == v2)
  {
    return 1;
  }

  v17 = 0;
  while (1)
  {
    v18 = *(v16 + 4);
    if (v18 < *(v11 + 4))
    {
      v20 = *v16;
      v19 = v16[1];
      *v16 = 0;
      v16[1] = 0;
      LODWORD(v26[0]) = *(v16 + 5);
      BYTE4(v26[0]) = *(v16 + 24);
      do
      {
        v21 = v11;
        v22 = v11[4];
        if ((v22 & 7) != 0)
        {
          atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v11[4] = *v11;
        *v11 = 0;
        v23 = v11[5];
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v11[5] = v11[1];
        v11[1] = 0;
        v11[6] = v11[2];
        *(v11 + 56) = *(v11 + 24);
        if (v11 == v28)
        {
          break;
        }

        v11 -= 4;
      }

      while (v18 < *(v21 - 4));
      if ((*v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v21 = v20;
      v24 = v21[1];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21[1] = v19;
      *(v21 + 4) = v18;
      *(v21 + 5) = v26[0];
      *(v21 + 24) = BYTE4(v26[0]);
      ++v17;
      v2 = v27;
      if (v17 == 8)
      {
        break;
      }
    }

    v11 = v16;
    v16 += 4;
    if (v16 == v2)
    {
      return 1;
    }
  }

  return v16 + 4 == v27;
}

uint64_t *sub_29ADF902C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v17 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        sub_29ADF9160(v7, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v16 = v6;
    v12 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*(v12 + 4) < *(v17 + 4))
        {
          sub_29ADF84C8(&v16, &v17);
          sub_29ADF9160(v17, a4, v8, v17);
          v12 = v16;
        }

        v12 += 4;
        v16 = v12;
      }

      while (v12 != a3);
      v7 = v17;
      v8 = (v6 - v17) >> 5;
    }

    if (v8 >= 2)
    {
      do
      {
        sub_29ADF92D4(v7, v6, a4, v8);
        v6 -= 4;
        v13 = v8 >= 2;
        v14 = v8-- == 2;
      }

      while (!v14 && v13);
      return v16;
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29ADF9160(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 5)
    {
      v5 = (a4 - result) >> 4;
      v6 = v5 + 1;
      v7 = (result + 32 * (v5 + 1));
      v8 = v5 + 2;
      if (v8 < a3)
      {
        v9 = *(v7 + 4);
        v10 = *(v7 + 12);
        v7 += 4 * (v9 < v10);
        if (v9 < v10)
        {
          v6 = v8;
        }
      }

      v11 = *(a4 + 4);
      if (*(v7 + 4) >= v11)
      {
        v13 = *a4;
        v12 = a4[1];
        *a4 = 0;
        a4[1] = 0;
        v22 = *(a4 + 5);
        v23 = *(a4 + 24);
        do
        {
          v14 = v7;
          if (v7 != a4)
          {
            if ((*a4 & 7) != 0)
            {
              atomic_fetch_add_explicit((*a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *a4 = *v7;
            *v7 = 0;
            v15 = a4[1];
            if ((v15 & 7) != 0)
            {
              atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            a4[1] = v14[1];
            v14[1] = 0;
          }

          v16 = v14[2];
          *(a4 + 24) = *(v14 + 24);
          a4[2] = v16;
          if (v4 < v6)
          {
            break;
          }

          v17 = (2 * v6) | 1;
          v7 = (result + 32 * v17);
          v18 = 2 * v6 + 2;
          if (v18 < a3)
          {
            v19 = *(v7 + 4);
            v20 = *(v7 + 12);
            v7 += 4 * (v19 < v20);
            if (v19 < v20)
            {
              v17 = v18;
            }
          }

          a4 = v14;
          v6 = v17;
        }

        while (*(v7 + 4) >= v11);
        if ((*v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v14 = v13;
        v21 = v14[1];
        if ((v21 & 7) != 0)
        {
          atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v14[1] = v12;
        *(v14 + 4) = v11;
        *(v14 + 5) = v22;
        *(v14 + 24) = v23;
      }
    }
  }

  return result;
}

uint64_t sub_29ADF92D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v8 = *result;
    v7 = *(result + 8);
    *result = 0;
    *(result + 8) = 0;
    v16 = *(result + 16);
    v17 = *(result + 24);
    result = sub_29ADF9474(result, a3, a4);
    v9 = *result;
    v10 = *result & 7;
    if (result == a2 - 32)
    {
      if (v10)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *result = v8;
      v15 = *(result + 8);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(result + 8) = v7;
      *(result + 16) = v16;
      *(result + 24) = v17;
    }

    else
    {
      if (v10)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *result = *(a2 - 32);
      *(a2 - 32) = 0;
      v11 = *(result + 8);
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(result + 8) = *(a2 - 24);
      *(a2 - 24) = 0;
      v12 = *(a2 - 16);
      *(result + 24) = *(a2 - 8);
      *(result + 16) = v12;
      v13 = *(a2 - 32);
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(a2 - 32) = v8;
      v14 = *(a2 - 24);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(a2 - 24) = v7;
      *(a2 - 16) = v16;
      *(a2 - 8) = v17;
      return sub_29ADF9534(v6, result + 32, a3, (result + 32 - v6) >> 5);
    }
  }

  return result;
}

uint64_t sub_29ADF9474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 32 * v3;
    v5 = v4 + 32;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = *(v4 + 48);
      v8 = *(v4 + 80);
      v9 = v4 + 64;
      if (v7 >= v8)
      {
        v3 = v6;
      }

      else
      {
        v5 = v9;
      }
    }

    if (v5 != a1)
    {
      if ((*a1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *a1 = *v5;
      *v5 = 0;
      v10 = *(a1 + 8);
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(a1 + 8) = *(v5 + 8);
      *(v5 + 8) = 0;
    }

    v11 = *(v5 + 16);
    *(a1 + 24) = *(v5 + 24);
    *(a1 + 16) = v11;
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_29ADF9534(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 32 * (v4 >> 1);
    v7 = *(a2 - 16);
    if (*(v6 + 16) < v7)
    {
      v10 = *(a2 - 32);
      v9 = *(a2 - 24);
      v8 = a2 - 32;
      *v8 = 0;
      *(v8 + 8) = 0;
      v15 = *(v8 + 20);
      v16 = *(v8 + 24);
      do
      {
        v11 = v6;
        if (v6 != v8)
        {
          if ((*v8 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v8 = *v6;
          *v6 = 0;
          v12 = *(v8 + 8);
          if ((v12 & 7) != 0)
          {
            atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *(v8 + 8) = *(v11 + 8);
          *(v11 + 8) = 0;
        }

        v13 = *(v11 + 16);
        *(v8 + 24) = *(v11 + 24);
        *(v8 + 16) = v13;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 32 * v5;
        v8 = v11;
      }

      while (*(v6 + 16) < v7);
      if ((*v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v11 = v10;
      v14 = *(v11 + 8);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v11 + 8) = v9;
      *(v11 + 16) = v7;
      *(v11 + 20) = v15;
      *(v11 + 24) = v16;
    }
  }

  return result;
}

uint64_t **sub_29ADF9640(uint64_t **a1, int *a2, uint64_t a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 8);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x50uLL);
    v10[8] = *a3;
    *(v10 + 5) = *(a3 + 8);
    *(v10 + 3) = *(a3 + 16);
    *(v10 + 8) = *(a3 + 32);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    v10[18] = *(a3 + 40);
    sub_29A00B204(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

void *sub_29ADF9724(uint64_t **a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v6 = sub_29ADD3814(a1, &v11, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x38uLL);
    v9 = *a4;
    v7[4] = **a4;
    *v9 = 0;
    *(v7 + 10) = *(v9 + 2);
    *(v7 + 12) = -1;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t **sub_29ADF97C0(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x40uLL);
    v11[8] = **a4;
    *(v11 + 5) = 0;
    *(v11 + 6) = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t **sub_29ADF9884(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x38uLL);
    v11[8] = **a4;
    *(v11 + 5) = 0;
    *(v11 + 6) = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t sub_29ADF9948(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[24 * v2];
  *(&v16 + 1) = &v7[24 * v6];
  sub_29ADF9A78(a1, v15, a2);
  *&v16 = v15 + 24;
  v8 = *(a1 + 8);
  v9 = &v15[*a1 - v8];
  sub_29ADF9AE4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29ADF9C3C(&v14);
  return v13;
}

void sub_29ADF9A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADF9C3C(va);
  _Unwind_Resume(a1);
}

void sub_29ADF9A78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a3[1];
  *(a2 + 8) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(a3 + 4);
  *(a2 + 20) = *(a3 + 20);
  *(a2 + 16) = v5;
}

uint64_t sub_29ADF9AE4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      *(a4 + 8) = v4[1];
      v4[1] = 0;
      v5 = *(v4 + 4);
      *(a4 + 20) = *(v4 + 20);
      *(a4 + 16) = v5;
      v4 += 3;
      a4 += 24;
    }

    while (v4 != a3);
    v11 = a4;
    for (i = 1; a2 != a3; a2 += 3)
    {
      v6 = a2[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*a2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return sub_29ADF9BB8(v8);
}

uint64_t sub_29ADF9BB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29ADF9BF0(a1);
  }

  return a1;
}

uint64_t sub_29ADF9BF0(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 16);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = *(v1 - 24);
    v1 -= 24;
    v4 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29ADF9C3C(uint64_t a1)
{
  sub_29ADF9C74(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29ADF9C74(uint64_t result, uint64_t a2)
{
  for (i = *(result + 16); i != a2; i = *(result + 16))
  {
    v3 = (i - 24);
    *(result + 16) = i - 24;
    v4 = *(i - 16);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((*v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29ADF9CC4(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4, int *a5)
{
  v5 = (*(a1 + 8) - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v12 = *(a1 + 16) - *a1;
  if (v12 >> 4 > v6)
  {
    v6 = v12 >> 4;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFE0)
  {
    v13 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v6;
  }

  v24 = a1;
  if (v13)
  {
    v14 = sub_29A10CB10(a1, v13);
  }

  else
  {
    v14 = 0;
  }

  v21 = v14;
  v22 = &v14[32 * v5];
  *(&v23 + 1) = &v14[32 * v13];
  sub_29ADF7D14(v22, a2, a3, *a4, *a5, 0);
  *&v23 = v22 + 32;
  v15 = *(a1 + 8);
  v16 = &v22[*a1 - v15];
  sub_29ADF7D78(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  sub_29ADF7E4C(&v21);
  return v20;
}

void sub_29ADF9DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADF7E4C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_29ADF9DF4(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x40uLL);
    v11[8] = **a4;
    v11[14] = 0;
    *(v11 + 5) = 0;
    *(v11 + 6) = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

void *sub_29ADF9EBC(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29AB89A2C(result, a4);
    result = sub_29ADD648C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29ADF9F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29ADD60F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_29ADF9F44(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x78uLL);
    *(v11 + 8) = **a4;
    *(v11 + 88) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 40) = 0u;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t sub_29ADFA018(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4, int *a5, char *a6)
{
  v6 = (*(a1 + 8) - *a1) >> 5;
  v7 = v6 + 1;
  if ((v6 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v14 = *(a1 + 16) - *a1;
  if (v14 >> 4 > v7)
  {
    v7 = v14 >> 4;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFE0)
  {
    v15 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v7;
  }

  v26 = a1;
  if (v15)
  {
    v16 = sub_29A10CB10(a1, v15);
  }

  else
  {
    v16 = 0;
  }

  v23 = v16;
  v24 = &v16[32 * v6];
  *(&v25 + 1) = &v16[32 * v15];
  sub_29ADF7D14(v24, a2, a3, *a4, *a5, *a6);
  *&v25 = v24 + 32;
  v17 = *(a1 + 8);
  v18 = &v24[*a1 - v17];
  sub_29ADF7D78(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  v20 = *(a1 + 16);
  v22 = v25;
  *(a1 + 8) = v25;
  *&v25 = v19;
  *(&v25 + 1) = v20;
  v23 = v19;
  v24 = v19;
  sub_29ADF7E4C(&v23);
  return v22;
}

void sub_29ADFA140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADF7E4C(va);
  _Unwind_Resume(a1);
}

void *sub_29ADFA154(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 16;
          *v18 = v19;
          v18 += 16;
          v17 += 16;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 3;
    if (v8 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A0D0518(v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 16;
      *v12 = v13;
      v12 += 16;
    }
  }

  v7[1] = v12;
  return result;
}

void sub_29ADFA288(void *a1)
{
  v1 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) <= 0x2E8BA2E8BA2E8BALL)
  {
    if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
    }

    if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
    {
      v4 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v4 = v2;
    }

    v9 = a1;
    if (v4)
    {
      v5 = sub_29A1587D0(a1, v4);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = &v5[88 * v1];
    v8 = &v5[88 * v4];
    sub_29ADFA3D4(a1, v7);
  }

  sub_29A00C9A4();
}

void sub_29ADFA3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADEBB08(va);
  _Unwind_Resume(a1);
}

void sub_29ADFA3D4(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*>();
}

void sub_29ADFA468(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ADFA49C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[64 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[64 * v7];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = *a2;
  *(v9 + 2) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  *(v9 + 24) = *(a2 + 24);
  *(v9 + 5) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10 = *(a2 + 48);
  *(v9 + 53) = *(a2 + 53);
  *(v9 + 6) = v10;
  *&v19 = v9 + 64;
  v11 = a1[1];
  v12 = &v9[*a1 - v11];
  sub_29ADFA5EC(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29ADFA6DC(&v17);
  return v16;
}

void sub_29ADFA5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29ADFA6DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ADFA5EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v8 = *(v7 + 48);
      *(a4 + 53) = *(v7 + 53);
      a4[6] = v8;
      v7 += 64;
      a4 += 8;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29AB88D00(a1, v5);
      v5 += 64;
    }
  }

  return sub_29AB88C74(v10);
}

void **sub_29ADFA6DC(void **a1)
{
  sub_29ADFA710(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29ADFA710(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 64;
    sub_29AB88D00(v4, i - 64);
  }
}

uint64_t sub_29ADFA758(uint64_t a1, void *a2, int *a3, void *a4, int *a5, void *a6, int *a7, void *a8, int *a9, void *a10, int *a11, void *a12, int *a13, void *a14, int *a15, int *a16, void *a17, int *a18, void *a19)
{
  v20 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v20 += (*a1 + v20 + (*a1 + v20) * (*a1 + v20)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v20;

  return sub_29ADFA7E8(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_29ADFA7E8(uint64_t a1, int *a2, void *a3, int *a4, void *a5, int *a6, void *a7, int *a8, void *a9, int *a10, void *a11, int *a12, void *a13, int *a14, int *a15, void *a16, int *a17, void *a18)
{
  v19 = *a2;
  if (*(a1 + 8))
  {
    v19 += (*a1 + v19 + (*a1 + v19) * (*a1 + v19)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v19;

  return sub_29ADFA870(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_29ADFA870(uint64_t a1, void *a2, int *a3, void *a4, int *a5, void *a6, int *a7, void *a8, int *a9, void *a10, int *a11, void *a12, int *a13, int *a14, void *a15, int *a16, void *a17)
{
  v17 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v17 += (*a1 + v17 + (*a1 + v17) * (*a1 + v17)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v17;
  return sub_29ADFA8E4(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_29ADFA8E4(uint64_t a1, int *a2, void *a3, int *a4, void *a5, int *a6, void *a7, int *a8, void *a9, int *a10, void *a11, int *a12, int *a13, void *a14, int *a15, void *a16)
{
  v16 = *a2;
  if (*(a1 + 8))
  {
    v16 += (*a1 + v16 + (*a1 + v16) * (*a1 + v16)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v16;
  return sub_29ADFA950(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_29ADFA950(uint64_t a1, void *a2, int *a3, void *a4, int *a5, void *a6, int *a7, void *a8, int *a9, void *a10, int *a11, int *a12, void *a13, int *a14, void *a15)
{
  v15 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v15 += (*a1 + v15 + (*a1 + v15) * (*a1 + v15)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v15;
  return sub_29ADFA9BC(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_29ADFA9BC(uint64_t a1, int *a2, void *a3, int *a4, void *a5, int *a6, void *a7, int *a8, void *a9, int *a10, int *a11, void *a12, int *a13, void *a14)
{
  v14 = *a2;
  if (*(a1 + 8))
  {
    v14 += (*a1 + v14 + (*a1 + v14) * (*a1 + v14)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v14;
  return sub_29ADFAA20(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_29ADFAA20(uint64_t a1, void *a2, int *a3, void *a4, int *a5, void *a6, int *a7, void *a8, int *a9, int *a10, void *a11, int *a12, void *a13)
{
  v13 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v13 += (*a1 + v13 + (*a1 + v13) * (*a1 + v13)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return sub_29ADFAA84(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_29ADFAA84(uint64_t a1, int *a2, void *a3, int *a4, void *a5, int *a6, void *a7, int *a8, int *a9, void *a10, int *a11, void *a12)
{
  v12 = *a2;
  if (*(a1 + 8))
  {
    v12 += (*a1 + v12 + (*a1 + v12) * (*a1 + v12)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return sub_29ADFAAE0(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_29ADFAAE0(uint64_t a1, void *a2, int *a3, void *a4, int *a5, void *a6, int *a7, int *a8, void *a9, int *a10, void *a11)
{
  v11 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v11 += (*a1 + v11 + (*a1 + v11) * (*a1 + v11)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return sub_29ADFAB3C(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_29ADFAB3C(uint64_t a1, int *a2, void *a3, int *a4, void *a5, int *a6, int *a7, void *a8, int *a9, void *a10)
{
  v10 = *a2;
  if (*(a1 + 8))
  {
    v10 += (*a1 + v10 + (*a1 + v10) * (*a1 + v10)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return sub_29ADFAB90(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_29ADFAB90(uint64_t a1, void *a2, int *a3, void *a4, int *a5, int *a6, void *a7, int *a8, void *a9)
{
  v9 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v9 += (*a1 + v9 + (*a1 + v9) * (*a1 + v9)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_29ADFABE4(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_29ADFABE4(uint64_t a1, int *a2, void *a3, int *a4, int *a5, void *a6, int *a7, void *a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_29ADFAC2C(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_29ADFAC2C(uint64_t a1, void *a2, int *a3, int *a4, void *a5, int *a6, void *a7)
{
  v7 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_29ADFAC74(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29ADFAC74(uint64_t a1, int *a2, int *a3, void *a4, int *a5, void *a6)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_29ADFACB4(a1, a3, a4, a5, a6);
}

uint64_t sub_29ADFACB4(uint64_t a1, int *a2, void *a3, int *a4, void *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29ADFACF0(a1, a3, a4, a5);
}

uint64_t sub_29ADFACF0(uint64_t a1, void *a2, int *a3, void *a4)
{
  v4 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29ADFAD2C(a1, a3, a4);
}

uint64_t sub_29ADFAD2C(uint64_t result, int *a2, void *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = (*a3 & 0xFFFFFFFFFFFFFFF8) + (((*a3 & 0xFFFFFFFFFFFFFFF8) + v3 + ((*a3 & 0xFFFFFFFFFFFFFFF8) + v3) * ((*a3 & 0xFFFFFFFFFFFFFFF8) + v3)) >> 1);
  return result;
}

uint64_t sub_29ADFAD70(uint64_t a1, void *a2, unsigned int *a3, int *a4)
{
  v4 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29ADFADAC(a1, a3, a4);
}

uint64_t sub_29ADFADAC(uint64_t result, unsigned int *a2, int *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = *a3 + ((v3 + *a3 + (v3 + *a3) * (v3 + *a3)) >> 1);
  return result;
}

uint64_t sub_29ADFADEC(uint64_t a1, void *a2, int *a3, int *a4)
{
  v4 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29A219F08(a1, a3, a4);
}

unint64_t sub_29ADFAE28(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, void *a2, uint64_t a3)
{
  v3 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v3 += (*a1 + v3 + (*a1 + v3) * (*a1 + v3)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v3;
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v5, v6);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::ComputeHash(pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey *this)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (*(*(*this + 16))(this) & 0xFFFFFFFFFFFFFFF8));
  v3 = (*(*this + 32))(this);
  v4 = (*(*this + 40))(this);
  v5 = (*(*this + 48))(this);
  v6 = (*(*this + 56))(this);
  v7 = (*(*this + 64))(this);
  v8 = (*(*this + 72))(this);
  v9 = (*(*this + 80))(this);
  v10 = (*(*this + 88))(this);
  if (v3)
  {
    v11 = *v3;
    if (*v3)
    {
      v12 = v3 + 1;
      do
      {
        v13 = bswap64(0x9E3779B97F4A7C55 * (v11 & 0xFFFFFFFFFFFFFFF8));
        v2 = bswap64(0x9E3779B97F4A7C55 * (v13 + ((v13 + v2 + (v13 + v2) * (v13 + v2)) >> 1)));
        v14 = *v12++;
        v11 = v14;
      }

      while (v14);
    }
  }

  if (v4)
  {
    v15 = *v4;
    if (*v4)
    {
      v16 = v4 + 1;
      do
      {
        v17 = bswap64(0x9E3779B97F4A7C55 * (v15 & 0xFFFFFFFFFFFFFFF8));
        v2 = bswap64(0x9E3779B97F4A7C55 * (v17 + ((v17 + v2 + (v17 + v2) * (v17 + v2)) >> 1)));
        v18 = *v16++;
        v15 = v18;
      }

      while (v18);
    }
  }

  if (v5)
  {
    v19 = *v5;
    if (*v5)
    {
      v20 = v5 + 1;
      do
      {
        v21 = bswap64(0x9E3779B97F4A7C55 * (v19 & 0xFFFFFFFFFFFFFFF8));
        v2 = bswap64(0x9E3779B97F4A7C55 * (v21 + ((v21 + v2 + (v21 + v2) * (v21 + v2)) >> 1)));
        v22 = *v20++;
        v19 = v22;
      }

      while (v22);
    }
  }

  if (v6)
  {
    v23 = *v6;
    if (*v6)
    {
      v24 = v6 + 1;
      do
      {
        v25 = bswap64(0x9E3779B97F4A7C55 * (v23 & 0xFFFFFFFFFFFFFFF8));
        v2 = bswap64(0x9E3779B97F4A7C55 * (v25 + ((v25 + v2 + (v25 + v2) * (v25 + v2)) >> 1)));
        v26 = *v24++;
        v23 = v26;
      }

      while (v26);
    }
  }

  if (v7)
  {
    v27 = *v7;
    if (*v7)
    {
      v28 = v7 + 1;
      do
      {
        v29 = bswap64(0x9E3779B97F4A7C55 * (v27 & 0xFFFFFFFFFFFFFFF8));
        v2 = bswap64(0x9E3779B97F4A7C55 * (v29 + ((v29 + v2 + (v29 + v2) * (v29 + v2)) >> 1)));
        v30 = *v28++;
        v27 = v30;
      }

      while (v30);
    }
  }

  if (v8)
  {
    v31 = *v8;
    if (*v8)
    {
      v32 = v8 + 1;
      do
      {
        v33 = bswap64(0x9E3779B97F4A7C55 * (v31 & 0xFFFFFFFFFFFFFFF8));
        v2 = bswap64(0x9E3779B97F4A7C55 * (v33 + ((v33 + v2 + (v33 + v2) * (v33 + v2)) >> 1)));
        v34 = *v32++;
        v31 = v34;
      }

      while (v34);
    }
  }

  if (v9)
  {
    v35 = *v9;
    if (*v9)
    {
      v36 = v9 + 1;
      do
      {
        v37 = bswap64(0x9E3779B97F4A7C55 * (v35 & 0xFFFFFFFFFFFFFFF8));
        v2 = bswap64(0x9E3779B97F4A7C55 * (v37 + ((v37 + v2 + (v37 + v2) * (v37 + v2)) >> 1)));
        v38 = *v36++;
        v35 = v38;
      }

      while (v38);
    }
  }

  if (v10)
  {
    v39 = *v10;
    if (*v10)
    {
      v40 = v10 + 1;
      do
      {
        v41 = bswap64(0x9E3779B97F4A7C55 * (v39 & 0xFFFFFFFFFFFFFFF8));
        v2 = bswap64(0x9E3779B97F4A7C55 * (v41 + ((v41 + v2 + (v41 + v2) * (v41 + v2)) >> 1)));
        v42 = *v40++;
        v39 = v42;
      }

      while (v42);
    }
  }

  v43 = (*(*this + 104))(this);
  v44 = (*(*this + 112))(this);
  v45 = (*(*this + 120))(this);
  v46 = ((v2 + v43 + (v2 + v43) * (v2 + v43)) >> 1) + v43 + v44;
  v47 = ((v46 + v46 * v46) >> 1) + v44 + v45;
  v48 = bswap64(0x9E3779B97F4A7C55 * (((v47 + v47 * v47) >> 1) + v45));
  if ((*(*this + 120))(this))
  {
    v49 = (*(*this + 128))(this);
    v50 = (*(*this + 136))(this);
    v51 = ((v48 + v49 + (v48 + v49) * (v48 + v49)) >> 1) + v49 + v50;
    v48 = bswap64(0x9E3779B97F4A7C55 * (((v51 + v51 * v51) >> 1) + v50));
  }

  v52 = (*(*this + 152))(this);
  v53 = (*(*this + 96))(this);
  v54 = (*(*this + 160))(this);
  v55 = (*(*this + 168))(this);
  v56 = ((v48 + v52 + (v48 + v52) * (v48 + v52)) >> 1) + v52 + v53;
  v57 = ((v56 + v56 * v56) >> 1) + v53;
  v58 = 0.0;
  if (v54 != 0.0)
  {
    v58 = v54;
  }

  v59 = LODWORD(v58) + v55 + ((v57 + LODWORD(v58) + (v57 + LODWORD(v58)) * (v57 + LODWORD(v58))) >> 1);
  return bswap64(0x9E3779B97F4A7C55 * (((v59 + v59 * v59) >> 1) + v55));
}

const char *pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens@<X0>(const char *this@<X0>, const char *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  if (a2 && *a2)
  {
    v7 = this;
    sub_29A008864(v21);
    if ((*a3 & 1) == 0)
    {
      sub_29A00911C(&v22, ", ", 2);
    }

    *a3 = 0;
    v8 = sub_29A00911C(&v22, "", 1);
    v9 = strlen(v7);
    v10 = sub_29A00911C(v8, v7, v9);
    v11 = sub_29A00911C(v10, " : { ", 6);
    sub_29A00911C(v11, "source : [", 12);
    if (*a2)
    {
      v12 = 0;
      v13 = a2 + 8;
      do
      {
        if (v12)
        {
          sub_29A00911C(&v22, ", ", 2);
        }

        v14 = sub_29A00911C(&v22, "", 1);
        v15 = *(v13 - 1) & 0xFFFFFFFFFFFFFFF8;
        if (v15)
        {
          v16 = (v15 + 16);
          if (*(v15 + 39) < 0)
          {
            v16 = *v16;
          }
        }

        else
        {
          v16 = "";
        }

        v17 = strlen(v16);
        v18 = sub_29A00911C(v14, v16, v17);
        sub_29A00911C(v18, "", 1);
        v19 = *v13;
        v13 += 8;
        v12 = 1;
      }

      while (v19);
    }

    sub_29A00911C(&v22, "] }\n", 4);
    std::stringbuf::str();
    v21[0] = *MEMORY[0x29EDC9528];
    v20 = *(MEMORY[0x29EDC9528] + 72);
    *(v21 + *(v21[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
    v22 = v20;
    v23 = MEMORY[0x29EDC9570] + 16;
    if (v25 < 0)
    {
      operator delete(v24[7].__locale_);
    }

    v23 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v24);
    std::iostream::~basic_iostream();
    return MEMORY[0x29C2C4390](&v26);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return this;
}

void sub_29ADFB764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::GetGlslfxString(pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey *this)
{
  sub_29A008864(v38);
  sub_29A00911C(&v39, "-- glslfx version 0.1\n", 22);
  if (*(*(*this + 16))(this))
  {
    v2 = sub_29A00911C(&v39, "#import $TOOLS/hdSt/shaders/", 28);
    v3 = *(*(*this + 16))(this) & 0xFFFFFFFFFFFFFFF8;
    if (v3)
    {
      v4 = (v3 + 16);
      if (*(v3 + 39) < 0)
      {
        v4 = *v4;
      }
    }

    else
    {
      v4 = "";
    }

    v5 = strlen(v4);
    v6 = sub_29A00911C(v2, v4, v5);
    sub_29A00911C(v6, "\n", 1);
  }

  v7 = sub_29A00911C(&v39, "-- configuration\n", 17);
  sub_29A00911C(v7, "{techniques: {default: {\n", 29);
  v37 = 1;
  v8 = (*(*this + 88))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("computeShader", v8, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v10 = v36;
  }

  else
  {
    v10 = v35;
  }

  sub_29A00911C(&v39, p_p, v10);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v11 = (*(*this + 32))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("vertexShader", v11, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v12 = &__p;
  }

  else
  {
    v12 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v13 = v36;
  }

  else
  {
    v13 = v35;
  }

  sub_29A00911C(&v39, v12, v13);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v14 = (*(*this + 40))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("tessControlShader", v14, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v16 = v36;
  }

  else
  {
    v16 = v35;
  }

  sub_29A00911C(&v39, v15, v16);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v17 = (*(*this + 48))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("tessEvalShader", v17, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v19 = v36;
  }

  else
  {
    v19 = v35;
  }

  sub_29A00911C(&v39, v18, v19);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v20 = (*(*this + 56))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("postTessControlShader", v20, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v22 = v36;
  }

  else
  {
    v22 = v35;
  }

  sub_29A00911C(&v39, v21, v22);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v23 = (*(*this + 64))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("postTessVertexShader", v23, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v25 = v36;
  }

  else
  {
    v25 = v35;
  }

  sub_29A00911C(&v39, v24, v25);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v26 = (*(*this + 72))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("geometryShader", v26, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v28 = v36;
  }

  else
  {
    v28 = v35;
  }

  sub_29A00911C(&v39, v27, v28);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  v29 = (*(*this + 80))(this);
  pxrInternal__aapl__pxrReserved__::HdSt_ShaderKey::_JoinTokens("fragmentShader", v29, &v37, &__p);
  if ((v36 & 0x80u) == 0)
  {
    v30 = &__p;
  }

  else
  {
    v30 = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v31 = v36;
  }

  else
  {
    v31 = v35;
  }

  sub_29A00911C(&v39, v30, v31);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  sub_29A00911C(&v39, "}}}\n", 4);
  std::stringbuf::str();
  v38[0] = *MEMORY[0x29EDC9528];
  v32 = *(MEMORY[0x29EDC9528] + 72);
  *(v38 + *(v38[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v39 = v32;
  v40 = MEMORY[0x29EDC9570] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v41);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v43);
}

void sub_29ADFBDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a17);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdStencilTableBufferSource::HdSt_OsdStencilTableBufferSource(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, int a6, int a7)
{
  *(result + 8) = 0;
  *result = &unk_2A20945A0;
  v8 = *a3;
  v7 = a3[1];
  *(result + 16) = a2;
  *(result + 24) = v8;
  *(result + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a4;
  *(result + 40) = *a4;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = a5[1];
  *(result + 48) = *a5;
  *(result + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 64) = a6;
  *(result + 68) = a7;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 5;
  *(result + 96) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdStencilTableBufferSource::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_OsdStencilTableBufferSource *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = atomic_load((v2 + 8));
    if (v3 < 2)
    {
      return 0;
    }
  }

  v4 = 0;
  atomic_compare_exchange_strong(this + 2, &v4, 1u);
  if (v4)
  {
    return 0;
  }

  StencilTable = pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetStencilTable(*(this + 2), *(this + 16), *(this + 17));
  v6 = *(this + 6);
  v7 = (StencilTable + 24);
  v8 = ((*(StencilTable + 24) - *(StencilTable + 16)) >> 2);
  *v6 = *(StencilTable + 8);
  v6[1] = v8;
  v9 = atomic_load(&qword_2A174ECB8);
  if (!v9)
  {
    v9 = sub_29AE02C24();
  }

  if ((*(v9 + 16) ^ *(this + 5)) <= 7)
  {
    v10 = *(StencilTable + 16);
    *(this + 9) = v10;
LABEL_17:
    v14 = 5;
    goto LABEL_18;
  }

  v12 = atomic_load(&qword_2A174ECB8);
  if (!v12)
  {
    v12 = sub_29AE02C24();
  }

  if ((*(v12 + 24) ^ *(this + 5)) <= 7)
  {
    v10 = *(StencilTable + 40);
    *(this + 9) = v10;
    v7 = (StencilTable + 48);
    goto LABEL_17;
  }

  v13 = atomic_load(&qword_2A174ECB8);
  if (!v13)
  {
    v13 = sub_29AE02C24();
  }

  if ((*(v13 + 32) ^ *(this + 5)) <= 7)
  {
    v10 = *(StencilTable + 64);
    *(this + 9) = v10;
    v7 = (StencilTable + 72);
    goto LABEL_17;
  }

  v15 = atomic_load(&qword_2A174ECB8);
  if (!v15)
  {
    v15 = sub_29AE02C24();
  }

  if ((*(v15 + 40) ^ *(this + 5)) > 7)
  {
    goto LABEL_19;
  }

  *(this + 9) = *(StencilTable + 88);
  v7 = (StencilTable + 72);
  v10 = *(StencilTable + 64);
  v14 = 13;
LABEL_18:
  *(this + 10) = (*v7 - v10) >> 2;
  *(this + 22) = v14;
  *(this + 12) = 1;
LABEL_19:
  sub_29AD1019C(this);
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetStencilTable(void *a1, int a2, int a3)
{
  v3 = a1;
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = a1 + 1;
    }

    else
    {
      if (a2 == 2 && (a3 < 0 && (sub_29B2C9AA0(v7) & 1) == 0 || ((v3[3] - v3[2]) >> 3) <= a3 && (sub_29B2C9AE8(v6) & 1) == 0))
      {
        return 0;
      }

      v3 = (v3[2] + 8 * a3);
    }
  }

  return *v3;
}

void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::_GetGpuStencilTable(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, void *a7@<X8>)
{
  std::mutex::lock((a1 + 64));
  if (a5 == 1)
  {
    v14 = *(a1 + 144);
    if (!v14)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::_CreateGpuStencilTable(a1, a3, a4, 1, 0, &v23);
      v17 = *(a1 + 152);
      *(a1 + 144) = v23;
      if (v17)
      {
        sub_29A014BEC(v17);
      }

      v14 = *(a1 + 144);
    }

    v16 = *(a1 + 152);
    goto LABEL_13;
  }

  if (!a5)
  {
    v14 = *(a1 + 128);
    if (!v14)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::_CreateGpuStencilTable(a1, a3, a4, 0, 0, &v23);
      v15 = *(a1 + 136);
      *(a1 + 128) = v23;
      if (v15)
      {
        sub_29A014BEC(v15);
      }

      v14 = *(a1 + 128);
    }

    v16 = *(a1 + 136);
LABEL_13:
    *a7 = v14;
    goto LABEL_21;
  }

  v18 = *(a1 + 160);
  v19 = (a1 + 160);
  if (v18 == *(a1 + 168))
  {
    sub_29ABC6184(a1 + 160, 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 600) - *(a2 + 592)) >> 3));
    v18 = *v19;
  }

  v20 = *(v18 + 16 * a6);
  if (!v20)
  {
    pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::_CreateGpuStencilTable(a1, a3, a4, a5, a6, &v23);
    v21 = *v19 + 16 * a6;
    v22 = *(v21 + 8);
    *v21 = v23;
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    v18 = *v19;
    v20 = *(*v19 + 16 * a6);
  }

  *a7 = v20;
  v16 = *(v18 + 16 * a6 + 8);
LABEL_21:
  a7[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 64));
}

void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::_CreateGpuStencilTable(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v58[0] = *MEMORY[0x29EDCA608];
  v12 = atomic_load(&qword_2A174ECB8);
  if (!v12)
  {
    v12 = sub_29AE02C24();
  }

  v13 = *(v12 + 16);
  *v55 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  *&v55[8] = xmmword_29B70C290;
  v14 = atomic_load(&qword_2A174ECB8);
  if (!v14)
  {
    v14 = sub_29AE02C24();
  }

  v15 = *(v14 + 24);
  v56 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v57 = xmmword_29B70C290;
  memset(v54, 0, sizeof(v54));
  sub_29AE030F0(v54, v55, v58, 2uLL);
  for (i = 24; i != -24; i -= 24)
  {
    v17 = *&v55[i];
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v18 = atomic_load(&qword_2A174ECB8);
  if (!v18)
  {
    v18 = sub_29AE02C24();
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateSingleBufferArrayRange(a3, v18 + 8, v54, 8u, &v52);
  v19 = atomic_load(&qword_2A174ECB8);
  if (!v19)
  {
    v19 = sub_29AE02C24();
  }

  v20 = *(v19 + 32);
  *v55 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  *&v55[8] = xmmword_29B70C290;
  v21 = atomic_load(&qword_2A174ECB8);
  if (!v21)
  {
    v21 = sub_29AE02C24();
  }

  v22 = *(v21 + 40);
  v56 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v57 = xmmword_29B70C2A0;
  memset(v51, 0, sizeof(v51));
  sub_29AE030F0(v51, v55, v58, 2uLL);
  for (j = 24; j != -24; j -= 24)
  {
    v24 = *&v55[j];
    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v25 = atomic_load(&qword_2A174ECB8);
  if (!v25)
  {
    v25 = sub_29AE02C24();
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateSingleBufferArrayRange(a3, v25 + 8, v51, 8u, &v50);
  v47 = a6;
  v26 = a1;
  v27 = a2;
  v28 = a4;
  v29 = a5;
  v30 = a3;
  *v55 = 0uLL;
  v31 = v52;
  v32 = v53;
  *&v55[16] = v52;
  v56 = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = v50;
  v57 = v50;
  if (*(&v50 + 1))
  {
    atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v34 = operator new(0x48uLL);
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  *v34 = &unk_2A2094A00;
  *(v34 + 24) = *v55;
  *(v34 + 5) = v31;
  *(v34 + 6) = v32;
  *(v34 + 56) = v33;
  *v47 = v34 + 24;
  v47[1] = v34;
  v35 = atomic_load(&qword_2A174ECB8);
  if (!v35)
  {
    v35 = sub_29AE02C24();
  }

  v36 = operator new(0x80uLL);
  v36[1] = 0;
  v36[2] = 0;
  *v36 = &unk_2A2094A50;
  *v55 = pxrInternal__aapl__pxrReserved__::HdSt_OsdStencilTableBufferSource::HdSt_OsdStencilTableBufferSource((v36 + 3), v26, v27, (v35 + 16), v47, v28, v29);
  *&v55[8] = v36;
  v37 = atomic_load(&qword_2A174ECB8);
  if (!v37)
  {
    v37 = sub_29AE02C24();
  }

  v38 = operator new(0x80uLL);
  v38->__shared_owners_ = 0;
  v38->__shared_weak_owners_ = 0;
  v38->__vftable = &unk_2A2094A50;
  *&v55[16] = pxrInternal__aapl__pxrReserved__::HdSt_OsdStencilTableBufferSource::HdSt_OsdStencilTableBufferSource(&v38[1], v26, v27, (v37 + 24), v47, v28, v29);
  v56 = v38;
  memset(v49, 0, sizeof(v49));
  sub_29AD9CF88(v49, v55, &v57, 2uLL);
  for (k = 24; k != -8; k -= 16)
  {
    v40 = *&v55[k];
    if (v40)
    {
      sub_29A014BEC(v40);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v30, &v52, v49);
  v41 = atomic_load(&qword_2A174ECB8);
  if (!v41)
  {
    v41 = sub_29AE02C24();
  }

  v42 = operator new(0x80uLL);
  v42[1] = 0;
  v42[2] = 0;
  *v42 = &unk_2A2094A50;
  *v55 = pxrInternal__aapl__pxrReserved__::HdSt_OsdStencilTableBufferSource::HdSt_OsdStencilTableBufferSource((v42 + 3), v26, v27, (v41 + 32), v47, v28, v29);
  *&v55[8] = v42;
  v43 = atomic_load(&qword_2A174ECB8);
  if (!v43)
  {
    v43 = sub_29AE02C24();
  }

  v44 = operator new(0x80uLL);
  v44->__shared_owners_ = 0;
  v44->__shared_weak_owners_ = 0;
  v44->__vftable = &unk_2A2094A50;
  *&v55[16] = pxrInternal__aapl__pxrReserved__::HdSt_OsdStencilTableBufferSource::HdSt_OsdStencilTableBufferSource(&v44[1], v26, v27, (v43 + 40), v47, v28, v29);
  v56 = v44;
  memset(v48, 0, sizeof(v48));
  sub_29AD9CF88(v48, v55, &v57, 2uLL);
  for (m = 24; m != -8; m -= 16)
  {
    v46 = *&v55[m];
    if (v46)
    {
      sub_29A014BEC(v46);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v30, &v50, v48);
  *v55 = v48;
  sub_29A0176E4(v55);
  *v55 = v49;
  sub_29A0176E4(v55);
  if (*(&v50 + 1))
  {
    sub_29A014BEC(*(&v50 + 1));
  }

  *v55 = v51;
  sub_29ABC6FA0(v55);
  if (v53)
  {
    sub_29A014BEC(v53);
  }

  *v55 = v54;
  sub_29ABC6FA0(v55);
}

void sub_29ADFC8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25, uint64_t a26, unint64_t a27)
{
  if ((a27 & 7) != 0)
  {
    atomic_fetch_add_explicit((a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a23)
  {
    sub_29A014BEC(a23);
  }

  a27 = &a24;
  sub_29ABC6FA0(&a27);
  _Unwind_Resume(a1);
}

void sub_29ADFCA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    sub_29A014BEC(a28);
  }

  JUMPOUT(0x29ADFCA40);
}

uint64_t sub_29ADFCABC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefinesToTriangles(pxrInternal__aapl__pxrReserved__::HdSt_Subdivision *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v3)
  {
    v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  return (*(v3 + 8) ^ *this) < 8uLL;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefinesToBSplinePatches(pxrInternal__aapl__pxrReserved__::HdSt_Subdivision *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v3)
  {
    v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  return (*(v3 + 7) ^ *this) < 8uLL;
}

BOOL pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefinesToBoxSplineTrianglePatches(pxrInternal__aapl__pxrReserved__::HdSt_Subdivision *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v3)
  {
    v3 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  return (*(v3 + 8) ^ *this) < 8uLL;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::GetBufferSpecs(uint64_t a1, void *a2)
{
  if (pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBSplinePatches(*(a1 + 32)))
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    LODWORD(v40) = 5;
    *(&v40 + 1) = 16;
    v5 = a2[1];
    if (v5 < a2[2])
    {
      v6 = v40;
      v7 = *(v4 + 39);
      *v5 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v5 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = 16;
LABEL_17:
      v5[1] = v6;
      v5[2] = v8;
      v10 = (v5 + 3);
      a2[1] = v5 + 3;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (pxrInternal__aapl__pxrReserved__::HdSt_MeshTopology::RefinesToBoxSplineTrianglePatches(*(a1 + 32)))
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    LODWORD(v40) = 5;
    *(&v40 + 1) = 12;
    v5 = a2[1];
    if (v5 < a2[2])
    {
      v6 = v40;
      v9 = *(v4 + 39);
      *v5 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v5 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = 12;
      goto LABEL_17;
    }

LABEL_18:
    v10 = sub_29AD9CC10(a2, v4 + 39, &v40);
LABEL_19:
    a2[1] = v10;
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v11)
    {
      v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v12 = (v11 + 536);
    LODWORD(v40) = 8;
    *(&v40 + 1) = 1;
    v13 = a2[1];
    if (v13 >= a2[2])
    {
      v16 = sub_29AD9CC10(a2, v12, &v40);
    }

    else
    {
      v14 = v40;
      v15 = *v12;
      *v13 = *v12;
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v13 &= 0xFFFFFFFFFFFFFFF8;
      }

      v13[1] = v14;
      v13[2] = 1;
      v16 = (v13 + 3);
      a2[1] = v13 + 3;
    }

    a2[1] = v16;
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (v17)
    {
      goto LABEL_28;
    }

LABEL_76:
    v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    goto LABEL_28;
  }

  v22 = *(*(a1 + 32) + 8);
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v23)
  {
    v23 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v24 = v22 ^ *(v23 + 8);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v24 > 7)
  {
    v30 = *(*(a1 + 32) + 496);
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (v30)
    {
      if (!v25)
      {
        v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      LODWORD(v40) = 5;
      *(&v40 + 1) = 4;
      v26 = a2[1];
      if (v26 < a2[2])
      {
        v27 = v40;
        v31 = *(v25 + 39);
        *v26 = v31;
        if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *v26 &= 0xFFFFFFFFFFFFFFF8;
        }

        v29 = 4;
        goto LABEL_65;
      }
    }

    else
    {
      if (!v25)
      {
        v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      LODWORD(v40) = 5;
      *(&v40 + 1) = 6;
      v26 = a2[1];
      if (v26 < a2[2])
      {
        v27 = v40;
        v32 = *(v25 + 39);
        *v26 = v32;
        if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *v26 &= 0xFFFFFFFFFFFFFFF8;
        }

        v29 = 6;
        goto LABEL_65;
      }
    }
  }

  else
  {
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v25)
    {
      v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    LODWORD(v40) = 7;
    *(&v40 + 1) = 1;
    v26 = a2[1];
    if (v26 < a2[2])
    {
      v27 = v40;
      v28 = *(v25 + 39);
      *v26 = v28;
      if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v26 &= 0xFFFFFFFFFFFFFFF8;
      }

      v29 = 1;
LABEL_65:
      v26[1] = v27;
      v26[2] = v29;
      v33 = (v26 + 3);
      a2[1] = v26 + 3;
      goto LABEL_67;
    }
  }

  v33 = sub_29AD9CC10(a2, v25 + 39, &v40);
LABEL_67:
  a2[1] = v33;
  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v34)
  {
    v34 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v35 = (v34 + 536);
  LODWORD(v40) = 7;
  *(&v40 + 1) = 1;
  v36 = a2[1];
  if (v36 >= a2[2])
  {
    v39 = sub_29AD9CC10(a2, v35, &v40);
  }

  else
  {
    v37 = v40;
    v38 = *v35;
    *v36 = *v35;
    if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    v36[1] = v37;
    v36[2] = 1;
    v39 = (v36 + 3);
    a2[1] = v36 + 3;
  }

  a2[1] = v39;
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v17)
  {
    goto LABEL_76;
  }

LABEL_28:
  LODWORD(v40) = 6;
  *(&v40 + 1) = 1;
  v18 = a2[1];
  if (v18 >= a2[2])
  {
    result = sub_29AD9CC10(a2, v17 + 29, &v40);
  }

  else
  {
    v19 = v40;
    v20 = *(v17 + 29);
    *v18 = v20;
    if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v18 &= 0xFFFFFFFFFFFFFFF8;
    }

    v18[1] = v19;
    v18[2] = 1;
    result = (v18 + 3);
    a2[1] = v18 + 3;
  }

  a2[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation::GetChainedBuffers(pxrInternal__aapl__pxrReserved__::HdSt_OsdIndexComputation *this@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *(this + 8);
  v8[0] = *(this + 7);
  v8[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 10);
  v8[2] = *(this + 9);
  v8[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29AD9CF88(a2, v8, &v9, 2uLL);
  for (i = 3; i != -1; i -= 2)
  {
    v7 = v8[i];
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29ADFD1B8(_Unwind_Exception *exception_object)
{
  v3 = 24;
  while (1)
  {
    v4 = *(v1 + v3);
    if (v4)
    {
      sub_29A014BEC(v4);
    }

    v3 -= 16;
    if (v3 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU::HdSt_OsdRefineComputationCPU(uint64_t result, uint64_t a2, uint64_t *a3, void *a4, int a5, int a6)
{
  *(result + 8) = 0;
  *result = &unk_2A2094620;
  v7 = *a3;
  v6 = a3[1];
  *(result + 16) = a2;
  *(result + 24) = v7;
  *(result + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a4[1];
  *(result + 40) = *a4;
  *(result + 48) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = a5;
  *(result + 84) = a6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU::~HdSt_OsdRefineComputationCPU(pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::HdBufferSource::~HdBufferSource(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU::~HdSt_OsdRefineComputationCPU(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU::Resolve(pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU *this)
{
  v3 = this + 24;
  v2 = *(this + 3);
  if (v2)
  {
    v4 = atomic_load((v2 + 8));
    if (v4 < 2)
    {
      return 0;
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = atomic_load((v5 + 8));
    if (v6 < 2)
    {
      return 0;
    }
  }

  v7 = 0;
  atomic_compare_exchange_strong(this + 2, &v7, 1u);
  if (v7)
  {
    return 0;
  }

  sub_29A0ECEEC(&v15, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU::Resolve()");
  v8 = *(*(this + 2) + 552);
  if (v8 || (v13[0] = "hdSt/subdivision.cpp", v13[1] = "Resolve", v13[2] = 604, v13[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU::Resolve()", v14 = 0, v12 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "subdivision", 0), v8 = 0, (v12 & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefineCPU(v8, v3, this + 7, *(this + 20), *(this + 21));
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

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v9, (v10 + 264));
  }

  sub_29AD1019C(this);
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }

  return 1;
}

void sub_29ADFD520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefineCPU(void *a1, uint64_t a2, void **a3, int a4, int a5)
{
  sub_29A0ECEEC(&v49, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefineCPU(const HdBufferSourceSharedPtr &, std::vector<float> *, HdSt_MeshTopology::Interpolation, int)");
  StencilTable = pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetStencilTable(a1, a4, a5);
  if (StencilTable || (__p = "hdSt/subdivision.cpp", v45 = "RefineCPU", v46 = 844, v47 = "void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefineCPU(const HdBufferSourceSharedPtr &, std::vector<float> *, HdSt_MeshTopology::Interpolation, int)", v48 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "stencilTable", 0) & 1) != 0))
  {
    if (((*(StencilTable + 24) - *(StencilTable + 16)) & 0x3FFFFFFFCLL) != 0)
    {
      v11 = (*(**a2 + 56))();
      ComponentCount = pxrInternal__aapl__pxrReserved__::HdGetComponentCount(v11);
      sub_29A0A171C(a3, ComponentCount * (*(StencilTable + 8) + ((*(StencilTable + 24) - *(StencilTable + 16)) >> 2)));
      v13 = (*(**a2 + 64))();
      v14 = *(StencilTable + 8);
      v15 = (*(**a2 + 48))();
      if (v13 >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v13;
      }

      v17 = v16 * ComponentCount;
      if (v17)
      {
        memmove(*a3, v15, 4 * v17);
      }

      v18 = *(StencilTable + 8);
      v20 = *(StencilTable + 16);
      v19 = *(StencilTable + 24);
      sub_29A0121C0(&__p, ComponentCount);
      v21 = v19 - v20;
      v22 = (v19 - v20) >> 2;
      v23 = __p;
      if (v22 >= 1)
      {
        v24 = 0;
        v42 = *(StencilTable + 40);
        v43 = *(StencilTable + 16);
        v25 = *(StencilTable + 64);
        v26 = *(StencilTable + 88);
        v27 = (v21 >> 2) & 0x7FFFFFFF;
        v28 = 4 * v18 * ComponentCount;
        do
        {
          if (ComponentCount >= 1)
          {
            bzero(v23, 4 * ComponentCount);
          }

          v29 = *(v43 + 4 * v24);
          if (v29 >= 1)
          {
            v30 = 0;
            v31 = *(v42 + 4 * v24);
            v32 = __p;
            do
            {
              if (ComponentCount >= 1)
              {
                v33 = *(v26 + 4 * (v30 + v31));
                v34 = (*a3 + 4 * *(v25 + 4 * (v30 + v31)) * ComponentCount);
                v35 = v32;
                v36 = ComponentCount;
                do
                {
                  v37 = *v34++;
                  *v35 = (v33 * v37) + *v35;
                  ++v35;
                  --v36;
                }

                while (v36);
              }

              ++v30;
            }

            while (v30 != v29);
          }

          if (ComponentCount >= 1)
          {
            v38 = *a3 + v28;
            v39 = v23;
            v40 = ComponentCount;
            do
            {
              v41 = *v39++;
              *v38++ = v41;
              --v40;
            }

            while (v40);
          }

          ++v24;
          v28 += 4 * ComponentCount;
        }

        while (v24 != v27);
      }

      if (v23)
      {
        v45 = v23;
        operator delete(v23);
      }
    }
  }

  if (v49)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v50, v49);
  }
}

void sub_29ADFD81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU::_CheckValid(pxrInternal__aapl__pxrReserved__::HdBufferSource **this)
{
  IsValid = pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(this[3]);
  v3 = this[5];
  if (v3)
  {
    v4 = pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(v3);
  }

  else
  {
    v4 = 1;
  }

  return IsValid & v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationCPU::GetPreChainedBuffer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU::HdSt_OsdRefineComputationGPU(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, int a6)
{
  *result = &unk_2A20946A0;
  *(result + 8) = a2;
  v6 = *a3;
  *(result + 16) = *a3;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = a5[1];
  *(result + 24) = *a5;
  *(result + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = a6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU::~HdSt_OsdRefineComputationGPU(pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdStComputation::~HdStComputation(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU::~HdSt_OsdRefineComputationGPU(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU::Execute(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a3)
{
  v6 = sub_29A0ECEEC(&v11, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)");
  if (*(*(a1 + 8) + 552) || (v9[0] = "hdSt/subdivision.cpp", v9[1] = "Execute", v9[2] = 687, v9[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU::Execute(const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)", v10 = 0, v6 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "subdivision", 0), (v6 & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefineGPU(v6, a2, a1 + 16, (a1 + 24), a3);
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    if (!v8)
    {
      v8 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v7, (v8 + 272));
  }

  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
  }
}

void sub_29ADFDAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefineGPU(uint64_t a1, uint64_t *a2, uint64_t a3, int **a4, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a5)
{
  v105[4] = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v63, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefineGPU(const HdBufferArrayRangeSharedPtr &, const TfToken &, const HdSt_GpuStencilTableSharedPtr &, HdStResourceRegistry *)");
  v8 = *a4;
  if (!*a4)
  {
    v90 = "hdSt/subdivision.cpp";
    v91 = "RefineGPU";
    v92 = 893;
    v93 = "void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::RefineGPU(const HdBufferArrayRangeSharedPtr &, const TfToken &, const HdSt_GpuStencilTableSharedPtr &, HdStResourceRegistry *)";
    LOBYTE(v94) = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v90, "gpuStencilTable", 0))
    {
      goto LABEL_99;
    }

    v8 = *a4;
  }

  v9 = *(v8 + 1);
  if (v9)
  {
    v10 = *v8;
    v11 = atomic_load(&qword_2A174ECB8);
    if (!v11)
    {
      v11 = sub_29AE02C24();
    }

    v12 = *v11;
    v88 = v12;
    if ((v12 & 7) != 0)
    {
      add_explicit = atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
      v12 = v88;
      if ((add_explicit & 1) == 0)
      {
        v12 = v88 & 0xFFFFFFFFFFFFFFF8;
        v88 &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    if (v12 || (v90 = "hdSt/subdivision.cpp", v91 = "_EvalStencilsGPU", v92 = 1796, v93 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_EvalStencilsGPU(const HdBufferArrayRangeSharedPtr &, const TfToken &, const int, const int, const HdBufferArrayRangeSharedPtr &, const HdBufferArrayRangeSharedPtr &, HdResourceRegistry *)", LOBYTE(v94) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v90, "!shaderToken.IsEmpty()", 0) & 1) != 0))
    {
      v15 = *a2;
      v14 = a2[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v15 + 168))(&v86, v15, a3);
      v16 = a5;
      v17 = (*(*v15 + 72))(v15);
      ComponentCount = pxrInternal__aapl__pxrReserved__::HdGetComponentCount(*(v86 + 32));
      v19 = ComponentCount;
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("#define EVAL_STENCILS_NUM_ELEMENTS %zd\n", v20, v21, ComponentCount);
      v105[0] = &unk_2A2094980;
      v105[1] = &v88;
      v105[3] = v105;
      pxrInternal__aapl__pxrReserved__::HdStGLSLProgram::GetComputeProgram(&v88, &v83, a5, v105, &v81);
      sub_29ADEC314(v105);
      if (v81)
      {
        v61 = v9;
        v23 = *(v8 + 2);
        v22 = *(v8 + 3);
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v60 = v22;
        v25 = *(v8 + 4);
        v24 = *(v8 + 5);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v85[0] = 0;
        v85[1] = v61;
        v85[2] = v17;
        v85[3] = v19;
        v85[4] = v17 + v10;
        v85[5] = v19;
        v85[6] = (*(*v23 + 72))(v23);
        v85[7] = (*(*v23 + 72))(v23);
        v85[8] = (*(*v25 + 72))(v25);
        v85[9] = (*(*v25 + 72))(v25);
        v26 = atomic_load(&qword_2A174ECB8);
        if (!v26)
        {
          v26 = sub_29AE02C24();
        }

        (*(*v23 + 168))(&v79, v23, v26 + 16);
        v27 = atomic_load(&qword_2A174ECB8);
        if (!v27)
        {
          v27 = sub_29AE02C24();
        }

        (*(*v23 + 168))(&v77, v23, v27 + 24);
        v28 = atomic_load(&qword_2A174ECB8);
        if (!v28)
        {
          v28 = sub_29AE02C24();
        }

        (*(*v25 + 168))(&v75, v25, v28 + 32);
        v29 = atomic_load(&qword_2A174ECB8);
        if (!v29)
        {
          v29 = sub_29AE02C24();
        }

        (*(*v25 + 168))(&v73, v25, v29 + 40);
        Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a5);
        v31 = *(v75 + 8);
        v32 = *(v73 + 8);
        v33 = *(v86 + 8);
        v34 = v31 + *(v77 + 8) + ((*(v77 + 8) + *(v79 + 8) + (*(v77 + 8) + *(v79 + 8)) * (*(v77 + 8) + *(v79 + 8))) >> 1);
        v35 = v32 + v31 + ((v34 + v34 * v34) >> 1);
        v36 = v33 + v32 + ((v35 + v35 * v35) >> 1);
        v37 = *(v81 + 64);
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterResourceBindings(a5, bswap64(0x9E3779B97F4A7C55 * (v33 + ((v36 + v36 * v36) >> 1))), &v67);
        if (v72 == 1)
        {
          v38 = v79;
          v39 = v77;
          v40 = v75;
          v41 = v73;
          v42 = v86;
          v43 = pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(v100);
          MEMORY[0x29C2C1A60](v43);
          if (*v38)
          {
            pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v90);
            v97 = 0x100000005;
            v98 = 4;
            v99 = 0;
            v89 = 0;
            sub_29A00D250(&v93, &v89);
            sub_29A03A998(&v90, v38);
            sub_29ADEB7F8(&v102, &v90);
            if (__p)
            {
              v96 = __p;
              operator delete(__p);
            }

            if (v93)
            {
              v94 = v93;
              operator delete(v93);
            }

            if (v90)
            {
              v91 = v90;
              operator delete(v90);
            }
          }

          if (*v39)
          {
            pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v90);
            v97 = 0x200000005;
            v98 = 4;
            v99 = 0;
            v89 = 0;
            sub_29A00D250(&v93, &v89);
            sub_29A03A998(&v90, v39);
            sub_29ADEB7F8(&v102, &v90);
            if (__p)
            {
              v96 = __p;
              operator delete(__p);
            }

            if (v93)
            {
              v94 = v93;
              operator delete(v93);
            }

            if (v90)
            {
              v91 = v90;
              operator delete(v90);
            }
          }

          if (*v40)
          {
            pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v90);
            v97 = 0x300000005;
            v98 = 4;
            v99 = 0;
            v89 = 0;
            sub_29A00D250(&v93, &v89);
            sub_29A03A998(&v90, v40);
            sub_29ADEB7F8(&v102, &v90);
            if (__p)
            {
              v96 = __p;
              operator delete(__p);
            }

            if (v93)
            {
              v94 = v93;
              operator delete(v93);
            }

            if (v90)
            {
              v91 = v90;
              operator delete(v90);
            }
          }

          if (*v41)
          {
            pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v90);
            v97 = 0x400000005;
            v98 = 4;
            v99 = 0;
            v89 = 0;
            sub_29A00D250(&v93, &v89);
            sub_29A03A998(&v90, v41);
            sub_29ADEB7F8(&v102, &v90);
            if (__p)
            {
              v96 = __p;
              operator delete(__p);
            }

            if (v93)
            {
              v94 = v93;
              operator delete(v93);
            }

            if (v90)
            {
              v91 = v90;
              operator delete(v90);
            }
          }

          if (*v42)
          {
            pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v90);
            v97 = 0x500000005;
            v98 = 4;
            v99 = 1;
            v89 = 0;
            sub_29A00D250(&v93, &v89);
            sub_29A03A998(&v90, v42);
            sub_29ADEB7F8(&v102, &v90);
            if (__p)
            {
              v96 = __p;
              operator delete(__p);
            }

            if (v93)
            {
              v94 = v93;
              operator delete(v93);
            }

            if (v90)
            {
              v91 = v90;
              operator delete(v90);
            }
          }

          v44 = (*(*Hgi + 144))(Hgi, v100);
          v46 = v45;
          v47 = operator new(0x28uLL);
          v47->__shared_owners_ = 0;
          v47->__shared_weak_owners_ = 0;
          v47->__vftable = &unk_2A2094318;
          v47[1].__vftable = v44;
          v47[1].__shared_owners_ = v46;
          v65 = v47 + 1;
          v66 = v47;
          v90 = &v104;
          sub_29AB88D58(&v90);
          v90 = &v102;
          sub_29AB88B40(&v90);
          if (v101 < 0)
          {
            operator delete(v100[0]);
          }

          sub_29ADEB100(&v67, &v65);
          v16 = a5;
          if (v66)
          {
            sub_29A014BEC(v66);
          }
        }

        v48 = *v68;
        v49 = v68[1];
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterComputePipeline(v16, bswap64(0x9E3779B97F4A7C55 * (((v37 + 41) * (v37 + 40)) >> 1) - 0x4754FB041C5C92B8), &v90);
        v50 = v24;
        if (__p == 1)
        {
          v51 = v81;
          v52 = pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc::HgiComputePipelineDesc(v100);
          MEMORY[0x29C2C1A60](v52);
          v102 = *(v51 + 64);
          v103 = 40;
          v53 = (*(*Hgi + 176))(Hgi, v100);
          v55 = v54;
          v56 = operator new(0x28uLL);
          v56->__shared_owners_ = 0;
          v56->__shared_weak_owners_ = 0;
          v56->__vftable = &unk_2A2093EA8;
          v56[1].__vftable = v53;
          v56[1].__shared_owners_ = v55;
          v65 = v56 + 1;
          v66 = v56;
          if (v101 < 0)
          {
            operator delete(v100[0]);
          }

          sub_29ADE7EC8(&v90, &v65);
          v16 = a5;
          if (v66)
          {
            sub_29A014BEC(v66);
          }
        }

        v57 = *v91;
        v58 = *(v91 + 1);
        GlobalComputeCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalComputeCmds(v16, 0);
        (*(*GlobalComputeCmds + 24))(GlobalComputeCmds, "EvalStencils Cmds");
        (*(*GlobalComputeCmds + 48))(GlobalComputeCmds, v48, v49);
        (*(*GlobalComputeCmds + 40))(GlobalComputeCmds, v57, v58);
        (*(*GlobalComputeCmds + 56))(GlobalComputeCmds, v57, v58, 0, 40, v85);
        (*(*GlobalComputeCmds + 64))(GlobalComputeCmds, v61, 1);
        (*(*GlobalComputeCmds + 32))(GlobalComputeCmds);
        if (v94 == 1)
        {
          std::mutex::unlock(v93);
        }

        if (v92)
        {
          sub_29A014BEC(v92);
        }

        if (v71 == 1)
        {
          std::mutex::unlock(v70);
        }

        if (v69)
        {
          sub_29A014BEC(v69);
        }

        if (v74)
        {
          sub_29A014BEC(v74);
        }

        if (v76)
        {
          sub_29A014BEC(v76);
        }

        if (v78)
        {
          sub_29A014BEC(v78);
        }

        if (v80)
        {
          sub_29A014BEC(v80);
        }

        if (v50)
        {
          sub_29A014BEC(v50);
        }

        if (v60)
        {
          sub_29A014BEC(v60);
        }
      }

      if (v82)
      {
        sub_29A014BEC(v82);
      }

      if (v84 < 0)
      {
        operator delete(v83);
      }

      if (v87)
      {
        sub_29A014BEC(v87);
      }

      if (v14)
      {
        sub_29A014BEC(v14);
      }
    }

    if ((v88 & 7) != 0)
    {
      atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

LABEL_99:
  if (v63)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v64, v63);
  }
}

void sub_29ADFE6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if ((a48 & 7) != 0)
  {
    atomic_fetch_add_explicit((a48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(&a14);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU::GetNumOutputElements(pxrInternal__aapl__pxrReserved__::HdSt_OsdRefineComputationGPU *this)
{
  v2 = *(*(this + 1) + 552);
  if (!v2 && (sub_29B2C9B30(v5) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 10);
  if (v3 == 1)
  {
    return pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetNumVarying(v2);
  }

  if (v3)
  {
    return v2[14];
  }

  return pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetNumVertices(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetNumVertices(pxrInternal__aapl__pxrReserved__::HdSt_Subdivision *this)
{
  v1 = *this;
  if (*this)
  {
    return *(v1 + 8) + ((*(v1 + 24) - *(v1 + 16)) >> 2);
  }

  v5[0] = "hdSt/subdivision.cpp";
  v5[1] = "GetNumVertices";
  v5[2] = 759;
  v5[3] = "int pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetNumVertices() const";
  v6 = 0;
  v4 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_vertexStencils", 0);
  result = 0;
  if (v4)
  {
    v1 = *this;
    return *(v1 + 8) + ((*(v1 + 24) - *(v1 + 16)) >> 2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetNumVarying(pxrInternal__aapl__pxrReserved__::HdSt_Subdivision *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 8) + ((*(v1 + 24) - *(v1 + 16)) >> 2);
  }

  v5[0] = "hdSt/subdivision.cpp";
  v5[1] = "GetNumVarying";
  v5[2] = 769;
  v5[3] = "int pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetNumVarying() const";
  v6 = 0;
  v4 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_varyingStencils", 0);
  result = 0;
  if (v4)
  {
    v1 = *(this + 1);
    return *(v1 + 8) + ((*(v1 + 24) - *(v1 + 16)) >> 2);
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::HdSt_Subdivision(pxrInternal__aapl__pxrReserved__::HdSt_Subdivision *this, char a2, int a3)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 48) = a2;
  *(this + 13) = a3;
  *(this + 14) = 0;
  *(this + 8) = 850045863;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 48) = a2;
  *(this + 13) = a3;
  *(this + 14) = 0;
  *(this + 8) = 850045863;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::~HdSt_Subdivision(pxrInternal__aapl__pxrReserved__::HdSt_Subdivision *this)
{
  v6 = (this + 160);
  sub_29A0176E4(&v6);
  v2 = *(this + 19);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  std::mutex::~mutex(this + 1);
  sub_29ADFF8D8(this + 5, 0);
  v6 = (this + 16);
  sub_29AE03344(&v6);
  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

void pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::SetRefinementTables(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a2;
  *a2 = 0;
  v10 = *a1;
  *a1 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *a3;
  *a3 = 0;
  v12 = a1[1];
  a1[1] = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  sub_29ADFED34(a1 + 2, (a4[1] - *a4) >> 3);
  v14 = a1[2];
  v13 = a1[3];
  if (v13 != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(*a4 + 8 * v15);
      *(*a4 + 8 * v15) = 0;
      v17 = *(v14 + 8 * v15);
      *(v14 + 8 * v15) = v16;
      if (v17)
      {
        (*(*v17 + 8))(v17);
        v14 = a1[2];
        v13 = a1[3];
      }

      ++v15;
    }

    while (v15 < (v13 - v14) >> 3);
  }

  v18 = *a5;
  *a5 = 0;
  sub_29ADFF8D8(a1 + 5, v18);
  *(a1 + 14) = 0;
  if (a1[3] != a1[2])
  {
    v19 = 0;
    do
    {
      NumFaceVarying = pxrInternal__aapl__pxrReserved__::HdSt_Subdivision::GetNumFaceVarying(a1, v19);
      v21 = *(a1 + 14);
      if (v21 <= NumFaceVarying)
      {
        v21 = NumFaceVarying;
      }

      *(a1 + 14) = v21;
      ++v19;
    }

    while (v19 < (a1[3] - a1[2]) >> 3);
  }
}