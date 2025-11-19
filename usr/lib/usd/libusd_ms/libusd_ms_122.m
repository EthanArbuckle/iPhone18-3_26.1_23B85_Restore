void pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::HgiGraphicsPipeline(pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline *this, const pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc *a2)
{
  *this = &unk_2A2072DE8;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(this + 8, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(this + 3) = *(a2 + 2);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 120);
  v6 = *(a2 + 136);
  v7 = *(a2 + 152);
  v8 = *(a2 + 21);
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  v12 = *(a2 + 104);
  v13 = *(a2 + 24);
  v14 = *(a2 + 40);
  *(this + 23) = 0;
  *(this + 3) = v14;
  *(this + 2) = v13;
  *(this + 7) = v12;
  *(this + 6) = v11;
  *(this + 5) = v10;
  *(this + 4) = v9;
  *(this + 22) = v8;
  *(this + 10) = v7;
  *(this + 9) = v6;
  *(this + 8) = v5;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*>();
}

void sub_29AB87400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AB87628(va);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::~HgiGraphicsPipeline(pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline *this)
{
  *this = &unk_2A2072DE8;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = (this + 184);
  sub_29AB87628(&v3);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::~HgiGraphicsPipeline(this);

  operator delete(v1);
}

uint64_t sub_29AB874D8(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    *a4 = *a2;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>();
  }

  v7 = 1;
  sub_29AB875A8(v6);
  return a4;
}

uint64_t sub_29AB875A8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB875E0(a1);
  }

  return a1;
}

void sub_29AB875E0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 32);
    if (v3)
    {
      *(v1 - 24) = v3;
      operator delete(v3);
    }

    v1 -= 40;
  }
}

void sub_29AB87628(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AB8767C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29AB8767C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

char *sub_29AB876CC(void *a1, unint64_t a2)
{
  if (a2 >= 0x333333333333334)
  {
    sub_29A00C9A4();
  }

  result = sub_29A09AEA8(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[80 * v4];
  return result;
}

void sub_29AB87718()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGI_ENABLE_VULKAN))
  {
    sub_29B2C2B80();
  }
}

void *pxrInternal__aapl__pxrReserved__::Hgi::Hgi(void *this)
{
  *this = &unk_2A2072E18;
  this[1] = 1;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(uint64_t result, pxrInternal__aapl__pxrReserved__::HgiCmds *this, uint64_t a3)
{
  if (this)
  {
    v5 = result;
    if (!pxrInternal__aapl__pxrReserved__::HgiCmds::IsSubmitted(this) || (result = sub_29B2C2BB4(v6), (result & 1) != 0))
    {
      (*(*v5 + 232))(v5, this, a3);
      return pxrInternal__aapl__pxrReserved__::HgiCmds::_SetSubmitted(this);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hgi::GetPlatformDefaultHgi(pxrInternal__aapl__pxrReserved__::Hgi *this, uint64_t a2, char *a3)
{
  v4[0] = "hgi/hgi.cpp";
  v4[1] = "GetPlatformDefaultHgi";
  v4[2] = 202;
  v4[3] = "static Hgi *pxrInternal__aapl__pxrReserved__::Hgi::GetPlatformDefaultHgi()";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v4, "GetPlatformDefaultHgi is deprecated. Please use CreatePlatformDefaultHgi", a3);
  return sub_29AB87888();
}

uint64_t sub_29AB87888()
{
  v0 = sub_29AB88278(1);
  if (v0)
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Attempting to create platform default Hgi\n", v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v0);
  v3 = atomic_load(pxrInternal__aapl__pxrReserved__::HGI_ENABLE_VULKAN);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
  }

  if (*v3)
  {
    __p = "hgi/hgi.cpp";
    v17 = "_MakeNewPlatformDefaultHgi";
    v18 = 74;
    v19 = "Hgi *pxrInternal__aapl__pxrReserved__::_MakeNewPlatformDefaultHgi()";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Build requires PXR_VULKAN_SUPPORT_ENABLED=true to use Vulkan");
  }

  if (sub_29AB88278(1))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Platform default Hgi: %s\n", v4, v5, "HgiMetal");
  }

  sub_29A008E78(&__p, "HgiMetal");
  DerivedTypeByName = pxrInternal__aapl__pxrReserved__::PlugRegistry::FindDerivedTypeByName(*v7, &__p);
  v15 = DerivedTypeByName;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
    DerivedTypeByName = v15;
  }

  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(DerivedTypeByName, v14);
  v9 = sub_29B290C20(v14);
  if (v10 & 1 | v9)
  {
    sub_29A17F138(v14);
  }

  __p = "hgi/hgi.cpp";
  v17 = "_MakeNewPlatformDefaultHgi";
  v18 = 87;
  v19 = "Hgi *pxrInternal__aapl__pxrReserved__::_MakeNewPlatformDefaultHgi()";
  v20 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&v15);
  if (*(TypeName + 23) >= 0)
  {
    v12 = TypeName;
  }

  else
  {
    v12 = *TypeName;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "[PluginLoad] PlugPlugin could not be loaded for TfType '%s'\n", v12);
  sub_29B290170(v14);
  return 0;
}

void sub_29AB87B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hgi::CreatePlatformDefaultHgi@<X0>(void *a1@<X8>)
{
  result = sub_29AB87888();
  *a1 = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Hgi::CreateNamedHgi(pxrInternal__aapl__pxrReserved__::Hgi *this@<X0>, uint64_t *a2@<X8>)
{
  if (sub_29AB88278(1))
  {
    v7 = *this & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = (v7 + 16);
      if (*(v7 + 39) < 0)
      {
        v8 = *v8;
      }
    }

    else
    {
      v8 = "";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Attempting to create named Hgi %s\n", v5, v6, v8);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  if (!v9)
  {
    v9 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  }

  if ((*(v9 + 2) ^ *this) >= 8)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
    if (!v9)
    {
      v9 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
    }

    if ((*(v9 + 4) ^ *this) >= 8)
    {
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
      if (!v10)
      {
        v10 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
      }

      v11 = *this;
      if ((*(v10 + 3) ^ *this) > 7)
      {
        if (!v11)
        {
          v19 = sub_29AB87888();
          goto LABEL_32;
        }

        v27 = "hgi/hgi.cpp";
        v28 = "_MakeNamedHgi";
        v29 = 147;
        v30 = "Hgi *pxrInternal__aapl__pxrReserved__::_MakeNamedHgi(const TfToken &)";
        v31 = 0;
        v22 = v11 & 0xFFFFFFFFFFFFFFF8;
        if ((v11 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v23 = (v22 + 16);
          if (*(v22 + 39) < 0)
          {
            v23 = *v23;
          }
        }

        else
        {
          v23 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v27, 1, "Unsupported token %s was provided.", v23);
LABEL_31:
        v19 = 0;
        goto LABEL_32;
      }

      v9 = MEMORY[0x29C2C1A60](&v32, "HgiMetal");
    }
  }

  v12 = HIBYTE(v34);
  if (v34 < 0)
  {
    v12 = v33;
  }

  if (!v12)
  {
    v27 = "hgi/hgi.cpp";
    v28 = "_MakeNamedHgi";
    v29 = 155;
    v30 = "Hgi *pxrInternal__aapl__pxrReserved__::_MakeNamedHgi(const TfToken &)";
    v31 = 0;
    v21 = &v32;
    if (v34 < 0)
    {
      v21 = v32;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v27, 1, "Build does not support proposed Hgi type %s on this platform.", v21);
    goto LABEL_31;
  }

  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v9);
  DerivedTypeByName = pxrInternal__aapl__pxrReserved__::PlugRegistry::FindDerivedTypeByName(*v14, &v32);
  pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginForType(DerivedTypeByName, &v24);
  v15 = sub_29B290C20(&v24);
  if (v16 & 1 | v15)
  {
    sub_29A17F138(&v24);
  }

  v27 = "hgi/hgi.cpp";
  v28 = "_MakeNamedHgi";
  v29 = 167;
  v30 = "Hgi *pxrInternal__aapl__pxrReserved__::_MakeNamedHgi(const TfToken &)";
  v31 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&DerivedTypeByName);
  if (*(TypeName + 23) >= 0)
  {
    v18 = TypeName;
  }

  else
  {
    v18 = *TypeName;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v27, 1, "[PluginLoad] PlugPlugin could not be loaded for TfType '%s'\n", v18);
  v19 = 0;
  v20 = v25;
  if (v25 && atomic_fetch_add_explicit((v25 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v20 + 8))(v20);
  }

LABEL_32:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  *a2 = v19;
}

void sub_29AB880C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11 && atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a11 + 8))(a11);
  }

  if (*(v11 - 33) < 0)
  {
    operator delete(*(v11 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hgi::IsSupported(pxrInternal__aapl__pxrReserved__::Hgi *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (!*this)
  {
    v2 = sub_29AB87888();
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  pxrInternal__aapl__pxrReserved__::Hgi::CreateNamedHgi(this, &v5);
  v2 = v5;
  if (!v5)
  {
    return 0;
  }

LABEL_3:
  v3 = (*(*v2 + 16))(v2);
  (*(*v2 + 8))(v2);
  return v3;
}

BOOL sub_29AB88278(int a1)
{
  v2 = sub_29AB865CC();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AB865CC();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F296488[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void *sub_29AB882DC(pxrInternal__aapl__pxrReserved__::TfType *a1)
{
  result = pxrInternal__aapl__pxrReserved__::TfType::_GetFactory(a1);
  if (result)
  {
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HgiTokens_StaticTokenType *sub_29AB8834C(atomic_ullong *a1)
{
  result = sub_29AB88394();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HgiTokens_StaticTokenType::~HgiTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HgiTokens_StaticTokenType *sub_29AB88394()
{
  v0 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HgiTokens_StaticTokenType::HgiTokens_StaticTokenType(v0);
  return v0;
}

void *pxrInternal__aapl__pxrReserved__::HgiIndirectCommandEncoder::HgiIndirectCommandEncoder(pxrInternal__aapl__pxrReserved__::HgiIndirectCommandEncoder *this)
{
  result = pxrInternal__aapl__pxrReserved__::HgiCmds::HgiCmds(this);
  *result = &unk_2A2072F40;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiResourceBindings::HgiResourceBindings(pxrInternal__aapl__pxrReserved__::HgiResourceBindings *this, const pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *a2)
{
  *this = &unk_2A2072F98;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(this + 8, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(this + 3) = *(a2 + 2);
    *(this + 8) = v3;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*,pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*>();
}

void sub_29AB884E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AB88B40(va);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiResourceBindings::~HgiResourceBindings(void **this)
{
  *this = &unk_2A2072F98;
  v2 = this + 7;
  sub_29AB88D58(&v2);
  v2 = this + 4;
  sub_29AB88B40(&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  pxrInternal__aapl__pxrReserved__::HgiResourceBindings::~HgiResourceBindings(this);

  operator delete(v1);
}

double pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *&result = 0x8100000000;
  *(this + 76) = 0x8100000000;
  *(this + 84) = 0;
  return result;
}

{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *&result = 0x8100000000;
  *(this + 76) = 0x8100000000;
  *(this + 84) = 0;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::operator==(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
LABEL_6:
    if (*(a1 + 18) == *(a2 + 72))
    {
      v8 = a1[3];
      v9 = a1[4] - v8;
      v10 = *(a2 + 24);
      if (v9 == *(a2 + 32) - v10 && !memcmp(v8, v10, v9))
      {
        v11 = a1[6];
        v12 = a1[7] - v11;
        v13 = *(a2 + 48);
        if (v12 == *(a2 + 56) - v13 && !memcmp(v11, v13, v12) && *(a1 + 19) == *(a2 + 76) && *(a1 + 20) == *(a2 + 80))
        {
          return *(a1 + 84) == *(a2 + 84);
        }
      }
    }
  }

  else
  {
    v6 = (*a2 + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 2;
      if (*(v3 + 8) != v7)
      {
        break;
      }

      v3 += 16;
      if (v3 == v2)
      {
        goto LABEL_6;
      }
    }
  }

  return 0;
}

{
  v3 = *a1;
  v2 = a1[1];
  if (v2 - *a1 == *(a2 + 8) - *a2)
  {
    if (v3 == v2)
    {
LABEL_6:
      if (*(a1 + 12) == *(a2 + 48) && *(a1 + 13) == *(a2 + 52) && *(a1 + 14) == *(a2 + 56))
      {
        v7 = a1[3];
        v6 = a1[4];
        v8 = *(a2 + 24);
        if (v6 - v7 == *(a2 + 32) - v8)
        {
          if (v7 == v6)
          {
            return *(a1 + 60) == *(a2 + 60);
          }

          v9 = (v8 + 8);
          while (1)
          {
            v10 = *v9;
            v9 += 2;
            if (*(v7 + 8) != v10)
            {
              break;
            }

            v7 += 16;
            if (v7 == v6)
            {
              return *(a1 + 60) == *(a2 + 60);
            }
          }
        }
      }
    }

    else
    {
      v4 = (*a2 + 8);
      while (1)
      {
        v5 = *v4;
        v4 += 2;
        if (*(v3 + 8) != v5)
        {
          break;
        }

        v3 += 16;
        if (v3 == v2)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return 0;
}

double pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc::HgiTextureBindDesc(pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *&result = 2;
  *(this + 6) = 2;
  *(this + 14) = 2;
  *(this + 60) = 0;
  return result;
}

{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *&result = 2;
  *(this + 6) = 2;
  *(this + 14) = 2;
  *(this + 60) = 0;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc::HgiResourceBindingsDesc(pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t sub_29AB889A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc,pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc&>();
  }

  v7 = 1;
  sub_29AB88A4C(v6);
  return a4;
}

uint64_t sub_29AB88A4C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB88A84(a1);
  }

  return a1;
}

void sub_29AB88A84(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 88;
      sub_29AB88AD8(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_29AB88AD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    *(a2 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    *(a2 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v5;

    operator delete(v5);
  }
}

void sub_29AB88B40(void ***a1)
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
        v4 -= 88;
        sub_29AB88AD8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29AB88BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc,pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc&>();
  }

  v7 = 1;
  sub_29AB88C74(v6);
  return a4;
}

uint64_t sub_29AB88C74(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB88CAC(a1);
  }

  return a1;
}

void sub_29AB88CAC(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 64;
      sub_29AB88D00(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_29AB88D00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

void sub_29AB88D58(void ***a1)
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
        v4 -= 64;
        sub_29AB88D00(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AB88DE0()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGI_MAX_ANISOTROPY))
  {
    sub_29B2C2C00();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiSampler::HgiSampler(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2A2072FC8;
  v4 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v4, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a1 + 64) = *(a2 + 7);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiSampler::~HgiSampler(void **this)
{
  *this = &unk_2A2072FC8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void sub_29AB89098(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(__dst + 7) = 0;
  *(__dst + 24) = v5;
  *(__dst + 40) = v6;
  *(__dst + 8) = 0;
  *(__dst + 9) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*>();
}

void sub_29AB89314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  sub_29A4B291C(v10 + 264);
  sub_29AB89F08(&a10);
  sub_29AB89F08(&a10);
  sub_29AB899A4(&a10);
  sub_29AB899A4(&a10);
  sub_29AB899A4(&a10);
  sub_29AB899A4(&a10);
  a10 = a9;
  sub_29A9E63AC(&a10);
  sub_29AB89550(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

char *sub_29AB893FC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29A008D14(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      *(v4 + 33) = *(v6 + 33);
      *(v4 + 24) = v9;
      v6 = (v6 + 56);
      v4 = v8 + 56;
      v14 = v8 + 56;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_29AB894D0(v11);
  return v4;
}

uint64_t sub_29AB894D0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB89508(a1);
  }

  return a1;
}

void sub_29AB89508(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 33);
    v1 -= 7;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_29AB89550(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AB895A4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29AB895A4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 33);
    v3 -= 7;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_29AB895F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc&>();
  }

  v7 = 1;
  sub_29AB896A0(v6);
  return a4;
}

uint64_t sub_29AB896A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A8F506C(a1);
  }

  return a1;
}

char *sub_29AB896D8(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AB8977C(v4, v6);
      v6 = (v6 + 120);
      v4 = v11 + 120;
      v11 += 120;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29AB898A0(v8);
  return v4;
}

char *sub_29AB8977C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  v6 = a2[3];
  *(__dst + 16) = *(a2 + 16);
  *(__dst + 3) = v6;
  if (*(a2 + 95) < 0)
  {
    sub_29A008D14(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_29A008D14(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  return __dst;
}

void sub_29AB89854(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB898A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB898D8(a1);
  }

  return a1;
}

void sub_29AB898D8(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 120;
      sub_29AB8992C(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_29AB8992C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_29AB899A4(void ***a1)
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
        v4 -= 120;
        sub_29AB8992C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char *sub_29AB89A2C(void *a1, unint64_t a2)
{
  if (a2 >= 0x276276276276277)
  {
    sub_29A00C9A4();
  }

  result = sub_29A09B7D4(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[104 * v4];
  return result;
}

char *sub_29AB89A7C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v8 = __dst;
  v9 = __dst;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    sub_29AB89B20(__dst, a2);
  }

  v7 = 1;
  sub_29AB89E14(v6);
  return __dst;
}

void sub_29AB89B20(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 6) = 0;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*>();
}

void sub_29AB89C0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AB89D8C(va);
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29AB89C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member&>();
  }

  v7 = 1;
  sub_29AB89D00(v6);
  return a4;
}

uint64_t sub_29AB89D00(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB89D38(a1);
  }

  return a1;
}

void sub_29AB89D38(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_29A0D27F8(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_29AB89D8C(void ***a1)
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
        v4 -= 56;
        sub_29A0D27F8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29AB89E14(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AB89E4C(a1);
  }

  return a1;
}

void sub_29AB89E4C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 104;
      sub_29AB89EA0(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_29AB89EA0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  v3 = (a2 + 48);
  sub_29AB89D8C(&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_29AB89F08(void ***a1)
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
        v4 -= 104;
        sub_29AB89EA0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29AB89F90(uint64_t a1)
{
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  v3 = (a1 + 224);
  sub_29AB89F08(&v3);
  v3 = (a1 + 200);
  sub_29AB89F08(&v3);
  v3 = (a1 + 176);
  sub_29AB899A4(&v3);
  v3 = (a1 + 152);
  sub_29AB899A4(&v3);
  v3 = (a1 + 128);
  sub_29AB899A4(&v3);
  v3 = (a1 + 104);
  sub_29AB899A4(&v3);
  v3 = (a1 + 80);
  sub_29A9E63AC(&v3);
  v3 = (a1 + 56);
  sub_29AB89550(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc::HgiShaderFunctionTextureDesc(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0xFFFFFFFF00000002;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0xFFFFFFFF00000002;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

double pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc::HgiShaderFunctionBufferDesc(pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc *this)
{
  result = 0.0;
  *(this + 45) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 45) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiShaderFunctionComputeDesc::HgiShaderFunctionComputeDesc(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

double pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc::HgiShaderFunctionParamDesc(pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = xmmword_29B47F190;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = xmmword_29B47F190;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::HgiShaderFunctionParamBlockDesc(pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc *this)
{
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 24) = -1;
  return result;
}

{
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 24) = -1;
  return result;
}

pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTessellationDesc *pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTessellationDesc::HgiShaderFunctionTessellationDesc(pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTessellationDesc *this)
{
  *this = 0;
  *(this + 2) = 1;
  sub_29A008E78(this + 2, "3");
  sub_29A008E78(this + 5, "3");
  return this;
}

void sub_29AB8A1CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *this)
{
  *(this + 5) = 0u;
  *(this + 8) = 0u;
  *(this + 11) = 0u;
  *(this + 14) = 0u;
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = 0;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTessellationDesc::HgiShaderFunctionTessellationDesc((this + 264));
  *(this + 41) = 0x200000003;
  sub_29A008E78(this + 42, "3");
  *(this + 360) = 0;
  return this;
}

void sub_29AB8A2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_29A4B291C(v10 + 264);
  sub_29AB89F08(&a10);
  a10 = (v10 + 200);
  sub_29AB89F08(&a10);
  sub_29AB899A4(&a10);
  a10 = (v10 + 152);
  sub_29AB899A4(&a10);
  sub_29AB899A4(&a10);
  a10 = (v10 + 104);
  sub_29AB899A4(&a10);
  sub_29A9E63AC(&a10);
  a10 = (v10 + 56);
  sub_29AB89550(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HgiShaderFunctionGeometryDesc *pxrInternal__aapl__pxrReserved__::HgiShaderFunctionGeometryDesc::HgiShaderFunctionGeometryDesc(pxrInternal__aapl__pxrReserved__::HgiShaderFunctionGeometryDesc *this)
{
  *this = 0x200000003;
  sub_29A008E78(this + 1, "3");
  return this;
}

{
  *this = 0x200000003;
  sub_29A008E78(this + 1, "3");
  return this;
}

_BYTE *pxrInternal__aapl__pxrReserved__::HgiShaderFunctionFragmentDesc::HgiShaderFunctionFragmentDesc(_BYTE *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(uint64_t a1, const std::string *a2, unsigned int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  memset(&v16, 0, sizeof(v16));
  *&v17[0] = 0xFFFFFFFF00000002;
  memset(v17 + 8, 0, 17);
  std::string::operator=(&v16, a2);
  *&v17[0] = __PAIR64__(*a5, a4);
  *(&v17[0] + 1) = __PAIR64__(a3, a6);
  *&v17[1] = 0;
  BYTE8(v17[1]) = 0;
  v11 = *(a1 + 64);
  if (v11 >= *(a1 + 72))
  {
    v14 = sub_29AB8B968(a1 + 56, &v16);
    v15 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
    *(a1 + 64) = v14;
    if (v15 < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = *&v16.__r_.__value_.__l.__data_;
    *(v11 + 16) = *(&v16.__r_.__value_.__l + 2);
    *v11 = v12;
    v13 = v17[0];
    *(v11 + 33) = *(v17 + 9);
    *(v11 + 24) = v13;
    *(a1 + 64) = v11 + 56;
  }
}

void sub_29AB8AF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddArrayOfTextures(uint64_t a1, const std::string *a2, unsigned int a3, unsigned int a4, unsigned int a5, _DWORD *a6, unsigned int a7)
{
  memset(&v18, 0, sizeof(v18));
  *&v19[0] = 0xFFFFFFFF00000002;
  memset(v19 + 8, 0, 17);
  std::string::operator=(&v18, a2);
  *&v19[0] = __PAIR64__(*a6, a5);
  *(&v19[0] + 1) = __PAIR64__(a4, a7);
  *&v19[1] = a3;
  BYTE8(v19[1]) = 0;
  v13 = *(a1 + 64);
  if (v13 >= *(a1 + 72))
  {
    v16 = sub_29AB8B968(a1 + 56, &v18);
    v17 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
    *(a1 + 64) = v16;
    if (v17 < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = *&v18.__r_.__value_.__l.__data_;
    *(v13 + 16) = *(&v18.__r_.__value_.__l + 2);
    *v13 = v14;
    v15 = v19[0];
    *(v13 + 33) = *(v19 + 9);
    *(v13 + 24) = v15;
    *(a1 + 64) = v13 + 56;
  }
}

void sub_29AB8B074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddWritableTexture(uint64_t a1, const std::string *a2, unsigned int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  memset(&v16, 0, sizeof(v16));
  *&v17[0] = 0xFFFFFFFF00000002;
  memset(v17 + 8, 0, 17);
  std::string::operator=(&v16, a2);
  *&v17[0] = __PAIR64__(*a5, a4);
  *(&v17[0] + 1) = __PAIR64__(a3, a6);
  *&v17[1] = 0;
  BYTE8(v17[1]) = 1;
  v11 = *(a1 + 64);
  if (v11 >= *(a1 + 72))
  {
    v14 = sub_29AB8B968(a1 + 56, &v16);
    v15 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
    *(a1 + 64) = v14;
    if (v15 < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = *&v16.__r_.__value_.__l.__data_;
    *(v11 + 16) = *(&v16.__r_.__value_.__l + 2);
    *v11 = v12;
    v13 = v17[0];
    *(v11 + 33) = *(v17 + 9);
    *(v11 + 24) = v13;
    *(a1 + 64) = v11 + 56;
  }
}

void sub_29AB8B16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddBuffer(uint64_t a1, const std::string *a2, const std::string *a3, int a4, int a5, int a6)
{
  *__p = 0u;
  memset(v13, 0, 29);
  *v11 = 0u;
  std::string::operator=(v11, a2);
  std::string::operator=(&__p[1], a3);
  v13[5] = a6;
  v13[6] = a5;
  v13[4] = a4;
  LOBYTE(v13[7]) = 0;
  sub_29AB8B244((a1 + 80), v11);
  if (SHIBYTE(v13[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v11[0]);
  }
}

uint64_t sub_29AB8B244(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AB8BC20(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v6 = *(a2 + 48);
    *(v3 + 53) = *(a2 + 53);
    *(v3 + 48) = v6;
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddWritableBuffer(uint64_t a1, const std::string *a2, const std::string *a3, int a4)
{
  *__p = 0u;
  memset(v9, 0, 29);
  *v7 = 0u;
  std::string::operator=(v7, a2);
  std::string::operator=(&__p[1], a3);
  v9[4] = a4;
  v9[6] = 4;
  LOBYTE(v9[7]) = 1;
  sub_29AB8B244((a1 + 80), v7);
  if (SHIBYTE(v9[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v7[0]);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(uint64_t a1, const std::string *a2, const std::string *a3, const std::string *a4)
{
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v10 = xmmword_29B47F190;
  v11 = 0;
  *v12 = 0u;
  *__p = 0u;
  v14 = 0u;
  std::string::operator=(v7, a2);
  std::string::operator=(&v8[1], a3);
  std::string::operator=(v12, a4);
  sub_29AB8B458((a1 + 104), v7);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  if (SHIBYTE(v8[0]) < 0)
  {
    operator delete(v7[0]);
  }
}

uint64_t sub_29AB8B458(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AB8BE40(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v6 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v6;
    v7 = *(a2 + 72);
    *(v3 + 88) = *(a2 + 88);
    *(v3 + 72) = v7;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v8 = *(a2 + 96);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 96) = v8;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    result = v3 + 120;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29AB8B508(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(uint64_t a1, const std::string *a2, const std::string *a3, const std::string *a4)
{
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v10 = xmmword_29B47F190;
  v11 = 0;
  *v12 = 0u;
  *__p = 0u;
  v14 = 0u;
  std::string::operator=(v7, a2);
  std::string::operator=(&v8[1], a3);
  std::string::operator=(v12, a4);
  sub_29AB8B458((a1 + 152), v7);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  if (SHIBYTE(v8[0]) < 0)
  {
    operator delete(v7[0]);
  }
}

uint64_t sub_29AB8B654(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AB8C15C(a1, a2);
  }

  else
  {
    sub_29AB8977C(a1[1], a2);
    result = v3 + 120;
    a1[1] = v3 + 120;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddGlobalVariable(uint64_t a1, const std::string *a2, const std::string *a3, const std::string *a4)
{
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v10 = xmmword_29B47F190;
  v11 = 0;
  *v12 = 0u;
  *__p = 0u;
  v14 = 0u;
  std::string::operator=(v7, a2);
  std::string::operator=(&v8[1], a3);
  std::string::operator=(&__p[1], a4);
  sub_29AB8B458((a1 + 128), v7);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  if (SHIBYTE(v8[0]) < 0)
  {
    operator delete(v7[0]);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(uint64_t a1, const std::string *a2, const std::string *a3, const std::string *a4, const std::string *a5)
{
  *v9 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v12 = xmmword_29B47F190;
  v13 = 0;
  *v14 = 0u;
  *__p = 0u;
  v16 = 0u;
  std::string::operator=(v9, a2);
  std::string::operator=(&v10[1], a3);
  std::string::operator=(v14, a4);
  std::string::operator=(&__p[1], a5);
  sub_29AB8B458((a1 + 176), v9);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(v9[0]);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(uint64_t a1, const std::string *a2, const std::string *a3, int a4)
{
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v10 = xmmword_29B47F190;
  v11 = 0;
  *v12 = 0u;
  *__p = 0u;
  v14 = 0u;
  std::string::operator=(v7, a2);
  std::string::operator=(&v8[1], a3);
  LODWORD(v10) = a4;
  sub_29AB8B458((a1 + 176), v7);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  if (SHIBYTE(v8[0]) < 0)
  {
    operator delete(v7[0]);
  }
}

uint64_t sub_29AB8B968(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    v7 = sub_29A040BCC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = (v7 + 56 * v2);
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = v7 + 56 * v6;
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v8 + 33) = *(a2 + 33);
  *(v8 + 24) = v10;
  *&v19 = v8 + 56;
  v11 = *(a1 + 8);
  v12 = v8 + *a1 - v11;
  sub_29AB8BAC8(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29AB8BB8C(&v17);
  return v16;
}

void sub_29AB8BAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB8BB8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB8BAC8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
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
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 33) = *(v6 + 33);
      *(a4 + 24) = v8;
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 56);
    }
  }

  return sub_29AB894D0(v10);
}

uint64_t sub_29AB8BB8C(uint64_t a1)
{
  sub_29AB8BBC4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AB8BBC4(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 7;
      *(a1 + 16) = v2 - 7;
      if (*(v2 - 33) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_29AB8BC20(uint64_t *a1, __int128 *a2)
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

  v22 = a1;
  if (v7)
  {
    v8 = sub_29A0BE3C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[64 * v2];
  v19 = v8;
  v20 = v9;
  *(&v21 + 1) = &v8[64 * v7];
  v10 = *a2;
  *(v9 + 2) = *(a2 + 2);
  *v9 = v10;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v11 = *(a2 + 24);
  *(v9 + 5) = *(a2 + 5);
  *(v9 + 24) = v11;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v12 = *(a2 + 6);
  *(v9 + 53) = *(a2 + 53);
  *(v9 + 6) = v12;
  *&v21 = v9 + 64;
  v13 = a1[1];
  v14 = &v9[*a1 - v13];
  sub_29AB8BD60(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29A8F50C0(&v19);
  return v18;
}

void sub_29AB8BD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A8F50C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB8BD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 53) = *(v7 + 53);
      *(a4 + 48) = v10;
      v7 += 64;
      a4 += 64;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      sub_29A0D27F8(a1, v5);
      v5 += 64;
    }
  }

  return sub_29AB896A0(v12);
}

uint64_t sub_29AB8BE40(uint64_t *a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_29A00C9A4();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    v7 = sub_29A5897A8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[120 * v2];
  v20 = v7;
  v21 = v8;
  *(&v22 + 1) = &v7[120 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v8 + 5) = *(a2 + 5);
  *(v8 + 24) = v10;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v11 = a2[3];
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 3) = v11;
  v12 = *(a2 + 72);
  *(v8 + 11) = *(a2 + 11);
  *(v8 + 72) = v12;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v13 = a2[6];
  *(v8 + 14) = *(a2 + 14);
  *(v8 + 6) = v13;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *&v22 = v8 + 120;
  v14 = a1[1];
  v15 = &v8[*a1 - v14];
  sub_29AB8BFD0(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_29AB8C0E0(&v20);
  return v19;
}

void sub_29AB8BFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB8C0E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AB8BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  if (a2 == a3)
  {
    v15 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v12 = *(v7 + 96);
      *(a4 + 112) = *(v7 + 112);
      *(a4 + 96) = v12;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      v7 += 120;
      a4 += 120;
    }

    while (v7 != a3);
    v17 = a4;
    v15 = 1;
    while (v5 != a3)
    {
      sub_29AB8992C(a1, v5);
      v5 += 120;
    }
  }

  return sub_29AB898A0(v14);
}

void **sub_29AB8C0E0(void **a1)
{
  sub_29AB8C114(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AB8C114(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 120;
    sub_29AB8992C(v4, i - 120);
  }
}

uint64_t sub_29AB8C15C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_29A00C9A4();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A5897A8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[120 * v2];
  *(&v16 + 1) = &v7[120 * v6];
  sub_29AB8977C(v15, a2);
  *&v16 = v15 + 120;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29AB8BFD0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AB8C0E0(&v14);
  return v13;
}

void sub_29AB8C278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB8C0E0(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::HgiShaderGenerator(void *result, uint64_t a2)
{
  *result = &unk_2A2073050;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::~HgiShaderGenerator(void **this)
{
  *this = &unk_2A2073050;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::Execute(pxrInternal__aapl__pxrReserved__::HgiShaderGenerator *this)
{
  sub_29A008864(v7);
  (*(*this + 16))(this, &v8);
  if (*(*(this + 1) + 48))
  {
    std::stringbuf::str();
    v2 = *(*(this + 1) + 48);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    *(v2 + 16) = v6;
    *v2 = v5;
  }

  else
  {
    std::stringbuf::str();
    if (*(this + 39) < 0)
    {
      operator delete(*(this + 2));
    }

    *(this + 1) = v5;
    *(this + 4) = v6;
  }

  v7[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v8 = v3;
  v9 = MEMORY[0x29EDC9570] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v12);
}

void sub_29AB8C518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

const char *pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderCodeDeclarations(pxrInternal__aapl__pxrReserved__::HgiShaderGenerator *this)
{
  if (*(*(this + 1) + 32))
  {
    return *(*(this + 1) + 32);
  }

  else
  {
    return "";
  }
}

const char *pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderCode(pxrInternal__aapl__pxrReserved__::HgiShaderGenerator *this)
{
  if (*(*(this + 1) + 40))
  {
    return *(*(this + 1) + 40);
  }

  else
  {
    return "";
  }
}

char *pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::GetGeneratedShaderCode(pxrInternal__aapl__pxrReserved__::HgiShaderGenerator *this)
{
  result = *(*(this + 1) + 48);
  if (result)
  {
    if ((result[23] & 0x80000000) == 0)
    {
      return result;
    }

    return *result;
  }

  result = this + 16;
  if (*(this + 39) < 0)
  {
    return *result;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HgiShaderProgram *pxrInternal__aapl__pxrReserved__::HgiShaderProgram::HgiShaderProgram(pxrInternal__aapl__pxrReserved__::HgiShaderProgram *this, const pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc *a2)
{
  *this = &unk_2A2073088;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(this + 8, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(this + 3) = *(a2 + 2);
    *(this + 8) = v4;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  sub_29AB8C6E8(this + 4, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 4);
  return this;
}

void sub_29AB8C63C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiShaderProgram::~HgiShaderProgram(pxrInternal__aapl__pxrReserved__::HgiShaderProgram *this)
{
  *this = &unk_2A2073088;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

double pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc::HgiShaderProgramDesc(pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void *sub_29AB8C6E8(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0D0518(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29AB8C748(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiShaderSection::HgiShaderSection(uint64_t a1, __int128 *a2, __int128 **a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  *a1 = &unk_2A20730E0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v11;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_29AB8CC30((a1 + 32), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v12;
  }

  if (*(a5 + 23) < 0)
  {
    sub_29A008D14((a1 + 80), *a5, *(a5 + 1));
  }

  else
  {
    v13 = *a5;
    *(a1 + 96) = *(a5 + 2);
    *(a1 + 80) = v13;
  }

  if (*(a6 + 23) < 0)
  {
    sub_29A008D14((a1 + 104), *a6, *(a6 + 1));
  }

  else
  {
    v14 = *a6;
    *(a1 + 120) = *(a6 + 2);
    *(a1 + 104) = v14;
  }

  return a1;
}

void sub_29AB8C8A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 103) < 0)
  {
    operator delete(*(v2 + 80));
  }

  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  sub_29A0D2770(va);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(void **this)
{
  *this = &unk_2A20730E0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this + 4;
  sub_29A0D2770(&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  pxrInternal__aapl__pxrReserved__::HgiShaderSection::~HgiShaderSection(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  return sub_29A00911C(a2, v7, v8);
}

void *pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteBlockInstanceIdentifier(uint64_t a1, void *a2)
{
  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  return sub_29A00911C(a2, v7, v8);
}

void *pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteDeclaration(uint64_t a1, void *a2)
{
  (*(*a1 + 16))(a1);
  sub_29A00911C(a2, " ", 1);
  (*(*a1 + 24))(a1, a2);
  (*(*a1 + 48))(a1, a2);

  return sub_29A00911C(a2, ";", 1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteParameter(uint64_t a1, void *a2)
{
  (*(*a1 + 16))(a1);
  sub_29A00911C(a2, " ", 1);
  v4 = *(*a1 + 24);

  return v4(a1, a2);
}

void *pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteArraySize(void *result, void *a2)
{
  v2 = result;
  if ((*(result + 103) & 0x8000000000000000) != 0)
  {
    if (!result[11])
    {
      return result;
    }
  }

  else if (!*(result + 103))
  {
    return result;
  }

  v3 = sub_29A00911C(a2, "[", 1);
  v4 = *(v2 + 103);
  if (v4 >= 0)
  {
    v5 = (v2 + 10);
  }

  else
  {
    v5 = v2[10];
  }

  if (v4 >= 0)
  {
    v6 = *(v2 + 103);
  }

  else
  {
    v6 = v2[11];
  }

  v7 = sub_29A00911C(v3, v5, v6);

  return sub_29A00911C(v7, "]", 1);
}

char *sub_29AB8CC30(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1C11FC(result, a4);
    result = sub_29AB8CCB8(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AB8CC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0D2770(&a9);
  _Unwind_Resume(a1);
}

char *sub_29AB8CCB8(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a1;
    do
    {
      sub_29AB8CD64(v7, v4, v6);
      v6 += 3;
      v4 = v12 + 48;
      v12 += 48;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AB8CDF4(v9);
  return v4;
}

void *sub_29AB8CD64(int a1, char *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    result = sub_29A008D14(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v5;
  }

  if (*(a3 + 47) < 0)
  {
    return sub_29A008D14(__dst + 24, *(a3 + 3), *(a3 + 4));
  }

  v7 = *(a3 + 24);
  *(__dst + 5) = *(a3 + 5);
  *(__dst + 24) = v7;
  return result;
}

void sub_29AB8CDD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB8CDF4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A4055B8(a1);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiTexture::HgiTexture(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2A2073140;
  v4 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v4, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 56);
  *(a1 + 80) = v8;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiTexture::~HgiTexture(void **this)
{
  *this = &unk_2A2073140;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiTexture::_GetByteSizeOfResource(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::HgiGetMipInfos(*(a1 + 28), (a1 + 52), *(a1 + 64), 0xFFFFFFFFFFFFFFFFLL, &v5);
  v2 = (v6 - v5) >> 5;
  if (v2 >= *(a1 + 66))
  {
    v2 = *(a1 + 66);
  }

  v3 = *&v5[32 * v2 - 32] + *&v5[32 * v2 - 8] * *(a1 + 64);
  v6 = v5;
  operator delete(v5);
  return v3;
}

void *pxrInternal__aapl__pxrReserved__::HgiTextureView::HgiTextureView(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A2073178;
  return result;
}

{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A2073178;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HgiTextureView::SetViewTexture(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 8) = *a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiTokens_StaticTokenType::~HgiTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HgiTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HgiTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HgiTokens_StaticTokenType::HgiTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HgiTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "taskDriver", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "renderDriver", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "OpenGL", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "Metal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "Vulkan", 0);
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

void sub_29AB8D524(_Unwind_Exception *a1)
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

void pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens_StaticTokenType::~HgiShaderKeywordTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens_StaticTokenType *this)
{
  v20 = (this + 152);
  sub_29A124AB0(&v20);
  v2 = *(this + 18);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 17);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 15);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 14);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 13);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 12);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 11);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 10);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 9);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 8);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 7);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 6);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 5);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 4);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 3);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 2);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 1);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens_StaticTokenType::HgiShaderKeywordTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens_StaticTokenType *this)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "hdPosition", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "hdPointCoord", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "hdClipDistance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "hdCullDistance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "hdVertexID", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "hdInstanceID", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "hdPrimitiveID", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "hdSampleID", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "hdSamplePosition", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "hdFragCoord", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "hdFrontFacing", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 88, "hdLayer", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 96, "hdBaseVertex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 104, "hdBaseInstance", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 112, "hdViewportIndex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 120, "hdPositionInPatch", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 128, "hdPatchID", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 136, "hdGlobalInvocationID", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 144, "hdBaryCoordNoPersp", 0);
  v3 = (this + 152);
  v4 = *this;
  v26 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v27 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v28 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v29 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v30 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v31 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v32 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v33 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v34 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v35 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v36 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v37 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v38 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v39 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v40 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v41 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v42 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v43 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v44 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  sub_29A12EF7C(v3, &v26, &v45, 0x13uLL);
  for (i = 144; i != -8; i -= 8)
  {
    v24 = *(&v26 + i);
    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AB8DD40(_Unwind_Exception *a1)
{
  v3 = 144;
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
      v5 = v1[18];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[17];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[16];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[15];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[14];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[13];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[12];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[11];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[10];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[9];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[8];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[7];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[6];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[5];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[4];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[3];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[2];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[1];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGetComponentCount(int a1)
{
  v1 = a1 + 1;
  result = 1;
  switch(v1)
  {
    case 0:
    case 36:
      v3 = "hgi/types.cpp";
      v4 = "HgiGetComponentCount";
      v5 = 62;
      v6 = "size_t pxrInternal__aapl__pxrReserved__::HgiGetComponentCount(const HgiFormat)";
      v7 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Invalid Format");
      goto LABEL_7;
    case 1:
    case 4:
    case 7:
    case 11:
    case 15:
    case 19:
    case 23:
    case 34:
      return result;
    case 2:
    case 5:
    case 8:
    case 12:
    case 16:
    case 20:
    case 24:
      result = 2;
      break;
    case 3:
    case 6:
    case 10:
    case 14:
    case 18:
    case 22:
    case 26:
    case 27:
    case 30:
    case 31:
    case 32:
    case 33:
    case 35:
      result = 4;
      break;
    case 9:
    case 13:
    case 17:
    case 21:
    case 25:
    case 28:
    case 29:
      result = 3;
      break;
    default:
      v3 = "hgi/types.cpp";
      v4 = "HgiGetComponentCount";
      v5 = 65;
      v6 = "size_t pxrInternal__aapl__pxrReserved__::HgiGetComponentCount(const HgiFormat)";
      v7 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Missing Format");
LABEL_7:
      result = 0;
      break;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGetDataSizeOfFormat(int a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 1;
  }

  v3 = a1 + 1;
  result = 1;
  switch(v3)
  {
    case 0:
    case 36:
      v5 = "hgi/types.cpp";
      v6 = "HgiGetDataSizeOfFormat";
      v7 = 142;
      v8 = "size_t pxrInternal__aapl__pxrReserved__::HgiGetDataSizeOfFormat(const HgiFormat, size_t *const, size_t *const)";
      v9 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Invalid Format");
      goto LABEL_18;
    case 1:
    case 4:
      return result;
    case 2:
    case 5:
    case 7:
    case 15:
    case 19:
      return 2;
    case 3:
    case 6:
    case 8:
    case 11:
    case 16:
    case 20:
    case 23:
    case 27:
    case 35:
      return 4;
    case 9:
    case 17:
    case 21:
      return 6;
    case 10:
    case 12:
    case 18:
    case 22:
    case 24:
    case 34:
      return 8;
    case 13:
    case 25:
      return 12;
    case 14:
    case 26:
      goto LABEL_12;
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
      if (a2)
      {
        *a2 = 4;
      }

      if (a3)
      {
        *a3 = 4;
      }

LABEL_12:
      result = 16;
      break;
    default:
      v5 = "hgi/types.cpp";
      v6 = "HgiGetDataSizeOfFormat";
      v7 = 145;
      v8 = "size_t pxrInternal__aapl__pxrReserved__::HgiGetDataSizeOfFormat(const HgiFormat, size_t *const, size_t *const)";
      v9 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Missing Format");
LABEL_18:
      result = 0;
      break;
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HgiGetDataSize(int a1, int *a2)
{
  v6 = 0;
  v7 = 0;
  DataSizeOfFormat = pxrInternal__aapl__pxrReserved__::HgiGetDataSizeOfFormat(a1, &v7, &v6);
  LODWORD(v4) = a2[2];
  if (v4 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v4;
  }

  return (*a2 + v7 - 1) / v7 * DataSizeOfFormat * ((a2[1] + v6 - 1) / v6) * v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGetComponentBaseFormat(uint64_t a1)
{
  v1 = a1 + 1;
  result = 0;
  switch(v1)
  {
    case 0:
    case 36:
      v4 = "hgi/types.cpp";
      v5 = "HgiGetComponentBaseFormat";
      v6 = 233;
      v7 = "HgiFormat pxrInternal__aapl__pxrReserved__::HgiGetComponentBaseFormat(const HgiFormat)";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "Invalid Format");
      goto LABEL_11;
    case 1:
    case 2:
    case 3:
    case 27:
    case 30:
    case 31:
    case 32:
    case 33:
      return result;
    case 4:
    case 5:
    case 6:
      result = 3;
      break;
    case 7:
    case 8:
    case 9:
    case 10:
      result = 6;
      break;
    case 11:
    case 12:
    case 13:
    case 14:
      result = 10;
      break;
    case 15:
    case 16:
    case 17:
    case 18:
      result = 14;
      break;
    case 19:
    case 20:
    case 21:
    case 22:
      result = 18;
      break;
    case 23:
    case 24:
    case 25:
    case 26:
      result = 22;
      break;
    case 28:
    case 29:
    case 34:
    case 35:
      result = a1;
      break;
    default:
      v4 = "hgi/types.cpp";
      v5 = "HgiGetComponentBaseFormat";
      v6 = 236;
      v7 = "HgiFormat pxrInternal__aapl__pxrReserved__::HgiGetComponentBaseFormat(const HgiFormat)";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "Missing Format");
LABEL_11:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiIsFloatFormat(uint64_t a1)
{
  ComponentBaseFormat = pxrInternal__aapl__pxrReserved__::HgiGetComponentBaseFormat(a1);
  result = 1;
  v3 = ComponentBaseFormat + 1;
  if (((1 << v3) & 0xFF8007FFELL) == 0)
  {
    if (((1 << v3) & 0x7FF8000) == 0)
    {
      v4[0] = "hgi/types.cpp";
      v4[1] = "HgiIsFloatFormat";
      v4[2] = 284;
      v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::HgiIsFloatFormat(const HgiFormat)";
      v5 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Invalid Format");
    }

    return 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::_ComputeNumMipLevels(int *a1)
{
  v1 = *a1;
  if (*a1 <= a1[1])
  {
    v1 = a1[1];
  }

  if (v1 >= a1[2])
  {
    v2 = v1;
  }

  else
  {
    v2 = a1[2];
  }

  v3 = 1;
  while (1 << v3 <= v2)
  {
    if (++v3 == 31)
    {
      LOWORD(v3) = 1;
      return v3;
    }
  }

  return v3;
}

void pxrInternal__aapl__pxrReserved__::HgiGetMipInfos(int a1@<W0>, int *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = a2[2];
  if (a3 >= 2 && v8 != 1)
  {
    *&v22 = "hgi/types.cpp";
    *(&v22 + 1) = "HgiGetMipInfos";
    v23 = 316;
    v24 = "std::vector<HgiMipInfo> pxrInternal__aapl__pxrReserved__::HgiGetMipInfos(const HgiFormat, const GfVec3i &, const size_t, const size_t)";
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v22, 1, "An array of 3D textures is invalid");
    v8 = a2[2];
  }

  v9 = *a2;
  if (*a2 <= a2[1])
  {
    v9 = a2[1];
  }

  if (v9 > v8)
  {
    v8 = v9;
  }

  v10 = 1;
  while (1 << v10 <= v8)
  {
    if (++v10 == 31)
    {
      v11 = 1;
      goto LABEL_13;
    }
  }

  v11 = v10;
LABEL_13:
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_29AB8E75C(a5, v11);
  v12 = 0;
  v13 = 0;
  v14 = *a2;
  v20 = v14;
  v15 = a2[2];
  v21 = v15;
  v16 = HIDWORD(v14);
  do
  {
    DataSize = pxrInternal__aapl__pxrReserved__::HgiGetDataSize(a1, &v20);
    *(&v22 + 1) = v20;
    LODWORD(v23) = v21;
    *&v22 = v13;
    v24 = DataSize;
    sub_29A4D0C64(a5, &v22);
    v13 += DataSize * a3;
    if (v13 >= a4)
    {
      break;
    }

    LODWORD(v14) = v14 / 2 <= 1 ? 1 : v14 / 2;
    LODWORD(v16) = v16 / 2 <= 1 ? 1 : v16 / 2;
    v20 = __PAIR64__(v16, v14);
    if (v15 / 2 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 /= 2;
    }

    v21 = v15;
    ++v12;
  }

  while (v12 < v11);
}

void sub_29AB8E738(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB8E75C(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 5)
  {
    if (a2 >> 59)
    {
      sub_29A00C9A4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_29A10CB10(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[32 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HgiInitializationTestDriver *pxrInternal__aapl__pxrReserved__::HgiInitializationTestDriver::HgiInitializationTestDriver(pxrInternal__aapl__pxrReserved__::HgiInitializationTestDriver *this)
{
  pxrInternal__aapl__pxrReserved__::Hgi::CreatePlatformDefaultHgi(this);
  return this;
}

{
  pxrInternal__aapl__pxrReserved__::Hgi::CreatePlatformDefaultHgi(this);
  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiInitializationTestDriver::~HgiInitializationTestDriver(pxrInternal__aapl__pxrReserved__::HgiInitializationTestDriver *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver *pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::HgiPipelineCreationTestDriver(pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver *this)
{
  pxrInternal__aapl__pxrReserved__::Hgi::CreatePlatformDefaultHgi(this);
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc::HgiVertexBufferDesc((this + 40));
  *(this + 5) = xmmword_29B6C6450;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 15;
  *(this + 116) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  *(this + 10) = xmmword_29B6C6450;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 15;
  *(this + 196) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_CreateVertexBufferDescriptor(this);
  return this;
}

void sub_29AB8E98C(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    v1[7] = v3;
    operator delete(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_CreateVertexBufferDescriptor(pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver *this)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v5);
  v5 = 12;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v3);
  v3 = 0x100000000BLL;
  v4 = 1;
  *(this + 10) = 0;
  *(this + 19) = 24;
  __src = v5;
  v8 = v6;
  v9 = v3;
  v10 = 1;
  return sub_29AB908B8(this + 6, &__src, &v11, 2uLL);
}

void pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::~HgiPipelineCreationTestDriver(pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver *this)
{
  if (*(this + 1))
  {
    pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_DestroyShaderProgram(this);
  }

  v2 = this + 24;
  if (*(this + 3))
  {
    (*(**this + 168))(*this, v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, v2);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_DestroyShaderProgram(pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver *this)
{
  v2 = this + 8;
  v3 = (*(**(this + 1) + 32))(*(this + 1));
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    v6 = *v4++;
    v8 = v6;
    (*(**this + 120))(*this, &v8);
  }

  return (*(**this + 136))(*this, v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::CreateTestPipeline(pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver *this)
{
  result = pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_CreateShaderProgram(this);
  if (result)
  {

    pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_CreatePipeline(this);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_CreateShaderProgram(pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver *this)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v24);
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v20, "Vertex");
  if ((v20.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v20.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v2);
  }

  std::string::operator=(&v24, EmptyString);
  if ((v20.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v20.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = 1;
  sub_29A008E78(&v20, "position");
  sub_29A008E78(&v17, "vec4");
  sub_29A008E78(&__p, "position");
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v24, &v20, &v17, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v20, "uvIn");
  sub_29A008E78(&v17, "vec2");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v24, &v20, &v17, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v20, "gl_Position");
  sub_29A008E78(&v17, "vec4");
  sub_29A008E78(&__p, "position");
  memset(&v23, 0, sizeof(v23));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v24, &v20, &v17, &__p, &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v20, "uvOut");
  sub_29A008E78(&v17, "vec2");
  memset(&__p, 0, sizeof(__p));
  memset(&v23, 0, sizeof(v23));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v24, &v20, &v17, &__p, &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v20);
  v4 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v17, "Fragment");
  if ((v17.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v5 = ((v17.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  std::string::operator=(&v20, v5);
  if ((v17.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v17.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = 2;
  sub_29A008E78(&v17, "uvOut");
  sub_29A008E78(&__p, "vec2");
  memset(&v23, 0, sizeof(v23));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v20, &v17, &__p, &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v17, "hd_FragColor");
  sub_29A008E78(&__p, "vec4");
  sub_29A008E78(&v23, "color");
  memset(&v19, 0, sizeof(v19));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v20, &v17, &__p, &v23, &v19);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v26 = "void main(void)\n{\n    gl_Position = position;\n    uvOut = uvIn;\n}\n";
  v23.__r_.__value_.__r.__words[0] = (*(**this + 112))(*this, &v24);
  v23.__r_.__value_.__l.__size_ = v6;
  v22 = "void main(void)\n{\n    vec4 color = vec4(1.0, 0.0, 1.0, 1.0);\n    hd_FragColor = color;\n}\n";
  v19.__r_.__value_.__r.__words[0] = (*(**this + 112))(*this, &v20);
  v19.__r_.__value_.__l.__size_ = v7;
  pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc::HgiShaderProgramDesc(&v17);
  v8 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p, "FullscreenTriangle");
  if ((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = ((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::string::operator=(&v17, v9);
  if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A03A998(v18, &v23);
  sub_29A03A998(v18, &v19);
  v10 = (*(**this + 128))(*this, &v17);
  *(this + 1) = v10;
  *(this + 2) = v11;
  if (*(*v10 + 16))(v10) && (*(*v23.__r_.__value_.__l.__data_ + 16))(v23.__r_.__value_.__r.__words[0]) && ((*(*v19.__r_.__value_.__l.__data_ + 16))(v19.__r_.__value_.__r.__words[0]))
  {
    v12 = 1;
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = "hgi/unitTestHelper.cpp";
    __p.__r_.__value_.__l.__size_ = "_CreateShaderProgram";
    __p.__r_.__value_.__r.__words[2] = 125;
    v15 = "BOOL pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_CreateShaderProgram()";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Failed to create shader program");
    pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_PrintCompileErrors(this);
    pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_DestroyShaderProgram(this);
    v12 = 0;
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  sub_29AB89F90(&v20);
  sub_29AB89F90(&v24);
  return v12;
}

void sub_29AB8F270(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  __p = va_arg(va1, void *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_29AA85810(va);
  sub_29AB89F90(va1);
  sub_29AB89F90(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_CreatePipeline(pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver *this)
{
  v25 = *MEMORY[0x29EDCA608];
  if (*(this + 3))
  {
    (*(**this + 168))();
  }

  *(this + 5) = xmmword_29B6C6700;
  *(this + 116) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  memset(&v13[3], 0, 40);
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 15;
  *(this + 197) = *v13;
  *(this + 213) = *&v13[16];
  *(this + 14) = *&v13[27];
  *(this + 10) = xmmword_29B6C6710;
  *(this + 196) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc::HgiGraphicsPipelineDesc(v13);
  MEMORY[0x29C2C1A60](v13, "Forward Pipeline");
  *&v13[32] = *(this + 8);
  sub_29AB8F8F8(&v19, this + 5);
  v2 = *(this + 13);
  v22 = *(this + 12);
  v23 = v2;
  v24 = *(this + 14);
  v3 = *(this + 11);
  v20 = *(this + 10);
  v21 = v3;
  pxrInternal__aapl__pxrReserved__::HgiDepthStencilState::HgiDepthStencilState(&v4);
  LOBYTE(v4) = 1;
  DWORD1(v4) = 7;
  BYTE4(v5) = 0;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v14 = v4;
  v15 = v5;
  v9 = *(this + 10);
  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>();
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::_PrintCompileErrors(pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver *this)
{
  v2 = (*(**(this + 1) + 32))(*(this + 1));
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    v5 = MEMORY[0x29EDC93C8];
    v6 = MEMORY[0x29EDC93D0];
    do
    {
      v7 = (*(**v3 + 24))();
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = *(v7 + 8);
      }

      v11 = sub_29A00911C(v5, v9, v10);
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v12 = std::locale::use_facet(&v20, v6);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v20);
      std::ostream::put();
      std::ostream::flush();
      v3 += 16;
    }

    while (v3 != v4);
  }

  v13 = (*(**(this + 1) + 24))(*(this + 1));
  v14 = *(v13 + 23);
  if (v14 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = *v13;
  }

  if (v14 >= 0)
  {
    v16 = *(v13 + 23);
  }

  else
  {
    v16 = *(v13 + 8);
  }

  v17 = sub_29A00911C(MEMORY[0x29EDC93C8], v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v20, MEMORY[0x29EDC93D0]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v20);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_29AB8F8F8(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x333333333333333)
    {
      sub_29A00C9A4();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x199999999999999)
    {
      v13 = 0x333333333333333;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = sub_29A09AEA8(a1, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[80 * v10];
    v16 = &v14[80 * v13];
    *v15 = *a2;
    v17 = a2[1];
    v18 = a2[2];
    v19 = a2[4];
    *(v15 + 3) = a2[3];
    *(v15 + 4) = v19;
    *(v15 + 1) = v17;
    *(v15 + 2) = v18;
    v9 = v15 + 80;
    v20 = *(a1 + 8) - *a1;
    v21 = &v15[-v20];
    memcpy(&v15[-v20], *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v9;
    *(a1 + 16) = v16;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[4];
    v4[3] = a2[3];
    v4[4] = v8;
    v4[1] = v6;
    v4[2] = v7;
    v9 = v4 + 5;
  }

  *(a1 + 8) = v9;
}

uint64_t sub_29AB8FA10(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 176);
  sub_29AB87628(&v4);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

double pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver::HgiGfxCmdBfrExecutionTestDriver(pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver *this)
{
  v1 = pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::HgiPipelineCreationTestDriver(this);
  *(v1 + 30) = 0x19000000258;
  *(v1 + 62) = 1;
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 21) = 0u;
  return result;
}

{
  v1 = pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::HgiPipelineCreationTestDriver(this);
  *(v1 + 30) = 0x19000000258;
  *(v1 + 62) = 1;
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 21) = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver::~HgiGfxCmdBfrExecutionTestDriver(pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver *this)
{
  if (*(this + 36))
  {
    (*(**this + 56))();
  }

  if (*(this + 38))
  {
    (*(**this + 72))(*this, this + 304);
  }

  if (*(this + 40))
  {
    (*(**this + 56))(*this, this + 320);
  }

  if (*(this + 42))
  {
    (*(**this + 72))(*this, this + 336);
  }

  if (*(this + 34))
  {
    (*(**this + 104))(*this, this + 272);
  }

  if (*(this + 32))
  {
    (*(**this + 104))(*this, this + 256);
  }

  pxrInternal__aapl__pxrReserved__::HgiPipelineCreationTestDriver::~HgiPipelineCreationTestDriver(this);
}

BOOL pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver::ExecuteTestGfxCmdBfr(pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver *this)
{
  *&v24 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver::_CreateResourceBuffers(this);
  if (result)
  {
    result = pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver::_CreateRenderTargets(this);
    if (result)
    {
      v21[0] = 0;
      v21[1] = *(this + 30);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = xmmword_29B6C6450;
      v15 = 0uLL;
      *v16 = 15;
      v16[4] = 0;
      memset(&v16[8], 0, 48);
      v17 = 0u;
      *v18 = 0u;
      memset(v19, 0, sizeof(v19));
      v20 = 0;
      sub_29AB8F8F8(&v11, this + 5);
      v3 = *(this + 10);
      v15 = *(this + 11);
      v4 = *(this + 13);
      *v16 = *(this + 12);
      *&v16[16] = v4;
      *&v16[32] = *(this + 14);
      v14 = v3;
      sub_29A03A998(&v16[48], this + 18);
      *(v19 + 8) = *(this + 20);
      (*(**this + 24))(&v10);
      (*(*v10 + 24))(v10, "Draw Test");
      (*(*v10 + 56))(v10, *(this + 3), *(this + 4));
      v5 = v10;
      v22 = *(this + 17);
      v23 = 0;
      v8 = 0;
      v9 = 0;
      __p = 0;
      sub_29AB90D54(&__p, &v22, &v24, 1uLL);
      (*(*v5 + 80))(v5, &__p);
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }

      (*(*v10 + 40))(v10, v21);
      (*(*v10 + 104))(v10, this + 256, 3, 0, 0, 1, 0);
      (*(*v10 + 32))(v10);
      pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(*this, v10, 1);
      v6 = v10;
      v10 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      if (v18[0])
      {
        v18[1] = v18[0];
        operator delete(v18[0]);
      }

      if (*&v16[48])
      {
        *&v17 = *&v16[48];
        operator delete(*&v16[48]);
      }

      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      return 1;
    }
  }

  return result;
}

void sub_29AB8FF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  sub_29AB905FC(&a14);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver::_CreateResourceBuffers(pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver *this)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(this + 34))
  {
    (*(**this + 104))();
  }

  if (*(this + 32))
  {
    (*(**this + 104))(*this, this + 256);
  }

  v22[0] = xmmword_29B6C6740;
  v22[1] = unk_29B6C6750;
  v22[2] = xmmword_29B6C6760;
  v22[3] = unk_29B6C6770;
  v23 = 1048576000;
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v16 = 1;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  MEMORY[0x29C2C1A60](v14, "VertexBuffer");
  v16 = 4;
  v19 = v22;
  v17 = 72;
  v18 = 24;
  v2 = (*(**this + 96))(*this, v14);
  *(this + 34) = v2;
  *(this + 35) = v3;
  if (v2)
  {
    v21 = 2;
    v20 = 0x100000000;
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    v10 = 1;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    MEMORY[0x29C2C1A60](__p, "IndexBuffer");
    v10 = 2;
    v13 = &v20;
    v11 = 12;
    v4 = (*(**this + 96))(*this, __p);
    *(this + 32) = v4;
    *(this + 33) = v5;
    v6 = v4 != 0;
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = 0;
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return v6;
}

void sub_29AB901E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

BOOL pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver::_CreateRenderTargets(pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver *this)
{
  if (*(this + 36))
  {
    (*(**this + 56))();
  }

  if (*(this + 38))
  {
    (*(**this + 72))(*this, this + 304);
  }

  if (*(this + 40))
  {
    (*(**this + 56))(*this, this + 320);
  }

  if (*(this + 42))
  {
    (*(**this + 72))(*this, this + 336);
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0xFFFFFFFF00000000;
  v26 = 0;
  v27 = 0;
  v25 = 0x100010001;
  v24 = xmmword_29B4DB070;
  v23 = xmmword_29B6C6720;
  MEMORY[0x29C2C1A60](&__p, "Color Buffer");
  v2 = *(this + 30);
  HIDWORD(v24) = *(this + 62);
  *(&v24 + 4) = v2;
  v26 = 0;
  v27 = 0;
  v25 = 0x100010001;
  LODWORD(v24) = 1;
  v22 = 0x200000001;
  v3 = (*(**this + 48))(*this, &__p);
  *(this + 36) = v3;
  *(this + 37) = v4;
  if (v3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0x10001FFFFFFFFLL;
    v17 = 0uLL;
    v18 = 0;
    MEMORY[0x29C2C1A60](&v13, "Color Buffer View");
    v16 = 0x1000100000002;
    v18 = 0;
    v17 = *(this + 18);
    v5 = (*(**this + 64))(*this, &v13);
    *(this + 38) = v5;
    *(this + 39) = v6;
    if (!v5)
    {
      goto LABEL_17;
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    __p = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0xFFFFFFFF00000000;
    v25 = 0x100010001;
    v26 = 0;
    v27 = 0;
    v24 = xmmword_29B4DB070;
    v23 = xmmword_29B6C6720;
    MEMORY[0x29C2C1A60](&__p, "Depth Buffer");
    HIDWORD(v24) = *(this + 62);
    *(&v24 + 4) = *(this + 30);
    v26 = 0;
    v27 = 0;
    v25 = 0x100010001;
    LODWORD(v24) = 1;
    v22 = 0xA00000002;
    v7 = (*(**this + 48))(*this, &__p);
    *(this + 40) = v7;
    *(this + 41) = v8;
    if (v7)
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v13);
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0x10001FFFFFFFFLL;
      v17 = 0uLL;
      v18 = 0;
      MEMORY[0x29C2C1A60](&v13, "Depth Buffer View");
      v16 = 0x100010000000ALL;
      v18 = 0;
      v17 = *(this + 20);
      v9 = (*(**this + 64))(*this, &v13);
      *(this + 42) = v9;
      *(this + 43) = v10;
      v11 = v9 != 0;
    }

    else
    {
LABEL_17:
      v11 = 0;
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_29AB905B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB905FC(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGfxCmdBfrExecutionTestDriver::WriteToFile(uint64_t *a1, char *a2)
{
  DataSize = pxrInternal__aapl__pxrReserved__::HgiGetDataSize(2, a1 + 60);
  LOBYTE(v18) = 0;
  sub_29A9D1620(v24, DataSize, &v18);
  v22 = 0;
  v23 = DataSize;
  v20 = 0;
  v21 = v24[0];
  v18 = *(a1 + 18);
  v19 = 0;
  (*(**a1 + 32))(&v17);
  (*(*v17 + 40))(v17, &v18);
  pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(*a1, v17, 1);
  v14[0] = a1[30];
  v14[1] = 0x300000000;
  v16 = v21;
  v15 = 1;
  if (!v21)
  {
    printf("No data for texture");
    v6 = 0;
    goto LABEL_14;
  }

  pxrInternal__aapl__pxrReserved__::HioImage::OpenForWriting(a2, &v12);
  if (v12)
  {
    v11 = 0;
    v5 = (*(*v12 + 32))(v12, v14, &v11);
    sub_29A184A10(&v11, 0);
    if (v5)
    {
      v6 = 1;
      goto LABEL_12;
    }

    v7 = "Failed to write image to %s";
  }

  else
  {
    v7 = "Failed to open image for writing %s";
  }

  if (a2[23] >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  printf(v7, v8);
  v6 = 0;
LABEL_12:
  if (v13)
  {
    sub_29A014BEC(v13);
  }

LABEL_14:
  v9 = v17;
  v17 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }

  return v6;
}

void sub_29AB90840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_29A184A10(&a11, 0);
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  v20 = a18;
  a18 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(v18 - 56);
  if (v21)
  {
    *(v18 - 48) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void *sub_29AB908B8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 2) >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - v9) >> 2) >= a4)
    {
      v21 = a3 - __src;
      if (v21)
      {
        result = memmove(*result, __src, v21);
      }

      v13 = &v9[v21];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = v7[1];
      }

      v18 = v15;
      if (v17 != a3)
      {
        v18 = v15;
        v19 = v15;
        do
        {
          v20 = *v17;
          *(v19 + 2) = *(v17 + 2);
          *v19 = v20;
          v19 += 12;
          v17 += 12;
          v18 += 12;
        }

        while (v17 != a3);
      }

      v13 = v18;
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

    if (a4 > 0x1555555555555555)
    {
      sub_29A00C9A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v12 = 0x1555555555555555;
    }

    else
    {
      v12 = v11;
    }

    result = sub_29A379A04(v7, v12);
    v13 = v7[1];
    while (v6 != a3)
    {
      v14 = *v6;
      *(v13 + 2) = *(v6 + 2);
      *v13 = v14;
      v13 += 12;
      v6 += 12;
    }
  }

  v7[1] = v13;
  return result;
}

void sub_29AB90A34(uint64_t *a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_29AB90BA8(a1);
    if (a4 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v9;
    }

    sub_29A10E7C8(a1, v10);
    v11 = sub_29AB90BE8(a1, a2, a3, a1[1]);
    goto LABEL_11;
  }

  v12 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v12 >> 3) < a4)
  {
    sub_29AB90CB8(&v17, a2, a2 + v12, v8);
    v11 = sub_29AB90BE8(a1, (a2 + v12), a3, a1[1]);
LABEL_11:
    a1[1] = v11;
    return;
  }

  sub_29AB90CB8(&v18, a2, a3, v8);
  v14 = v13;
  v15 = a1[1];
  if (v15 != v13)
  {
    do
    {
      v16 = *(v15 - 32);
      if (v16)
      {
        *(v15 - 24) = v16;
        operator delete(v16);
      }

      v15 -= 40;
    }

    while (v15 != v14);
  }

  a1[1] = v14;
}

void sub_29AB90BA8(uint64_t *a1)
{
  if (*a1)
  {
    sub_29AB8767C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29AB90BE8(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    *a4 = *a2;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>();
  }

  v7 = 1;
  sub_29AB875A8(v6);
  return a4;
}

uint64_t sub_29AB90CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 16;
    do
    {
      v8 = v7 - 16;
      *a4 = *(v7 - 16);
      if (a4 != v7 - 16)
      {
        sub_29A4EA498((a4 + 8), *(v7 - 8), *v7, 0xAAAAAAAAAAAAAAABLL * ((*v7 - *(v7 - 8)) >> 2));
      }

      *(a4 + 32) = *(v7 + 16);
      a4 += 40;
      v7 += 40;
    }

    while (v8 + 40 != a3);
    return a3;
  }

  return result;
}

char *sub_29AB90D54(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A012BFC(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2;
      *(v7 + 16) = *(a2 + 2);
      *v7 = v8;
      v7 += 24;
      a2 = (a2 + 24);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29AB90DB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetFormat(unsigned int a1, char a2, int *a3, _DWORD *a4, int *a5)
{
  if (a1 < 0x23)
  {
    v9 = &dword_29B6C6788[3 * a1];
    if (a3)
    {
      if (a1 == 10 && (a2 & 2) != 0)
      {
        v10 = 6402;
      }

      else
      {
        v10 = *v9;
      }

      *a3 = v10;
    }

    if (a4)
    {
      *a4 = v9[1];
    }

    if (a5)
    {
      if (a1 == 10 && (a2 & 2) != 0)
      {
        v8 = 36012;
      }

      else
      {
        v8 = v9[2];
      }

      goto LABEL_21;
    }
  }

  else
  {
    v11[0] = "hgiGL/conversions.cpp";
    v11[1] = "GetFormat";
    v11[2] = 278;
    v11[3] = "static void pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetFormat(HgiFormat, HgiTextureUsage, GLenum *, GLenum *, GLenum *)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Unexpected  %d", a1);
    if (a3)
    {
      *a3 = 6408;
    }

    if (a4)
    {
      *a4 = 5120;
    }

    if (a5)
    {
      v8 = 32856;
LABEL_21:
      *a5 = v8;
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLConversions::IsVertexAttribIntegerFormat(int a1)
{
  v1 = ((a1 - 14) < 0xC) | (0x1E4000007uLL >> a1);
  if ((a1 - 3) < 3)
  {
    v1 = 1;
  }

  return v1 & 1;
}

void pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetShaderStages(pxrInternal__aapl__pxrReserved__::HgiGLConversions *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = &unk_29B6C6930;
  v5 = 48;
  do
  {
    if ((*(v4 - 1) & v2) != 0)
    {
      sub_29A00D250(a2, v4);
    }

    v4 += 2;
    v5 -= 8;
  }

  while (v5);
  if (*a2 == *(a2 + 8))
  {
    v6[0] = "hgiGL/conversions.cpp";
    v6[1] = "GetShaderStages";
    v6[2] = 342;
    v6[3] = "static std::vector<GLenum> pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetShaderStages(HgiShaderStage)";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Missing shader stage table entry");
  }
}

void sub_29AB90FDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetMagFilter(int a1)
{
  if (!a1)
  {
    return 9728;
  }

  if (a1 == 1)
  {
    return 9729;
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "hgiGL/conversions.cpp";
  v4[1] = "GetMagFilter";
  v4[2] = 404;
  v4[3] = "static GLenum pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetMagFilter(HgiSamplerFilter)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unsupported sampler options");
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetMinFilter(int a1, int a2)
{
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      if (a2)
      {
        goto LABEL_19;
      }

      if (!a1)
      {
        return 9728;
      }

      if (a1 == 1)
      {
        return 9729;
      }

      v4 = "hgiGL/conversions.cpp";
      v5 = "GetMinFilter";
      v6 = 419;
      v7 = "static GLenum pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetMinFilter(HgiSamplerFilter, HgiMipFilter)";
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "Unsupported type");
    }

    if (!a1)
    {
      return 9984;
    }

    if (a1 == 1)
    {
      return 9985;
    }

    v4 = "hgiGL/conversions.cpp";
    v5 = "GetMinFilter";
    v6 = 427;
    v7 = "static GLenum pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetMinFilter(HgiSamplerFilter, HgiMipFilter)";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "Unsupported typr");
  }

  if (!a1)
  {
    return 9986;
  }

  if (a1 == 1)
  {
    return 9987;
  }

  v4 = "hgiGL/conversions.cpp";
  v5 = "GetMinFilter";
  v6 = 435;
  v7 = "static GLenum pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetMinFilter(HgiSamplerFilter, HgiMipFilter)";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "Unsupported typr");
LABEL_19:
  v4 = "hgiGL/conversions.cpp";
  v5 = "GetMinFilter";
  v6 = 441;
  v7 = "static GLenum pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetMinFilter(HgiSamplerFilter, HgiMipFilter)";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v4, 1, "Unsupported sampler options");
  return 0;
}

double pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetBorderColor(unsigned int a1)
{
  if (a1 >= 3)
  {
    v6 = v1;
    v7 = v2;
    v4[0] = "hgiGL/conversions.cpp";
    v4[1] = "GetBorderColor";
    v4[2] = 455;
    v4[3] = "static GfVec4f pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetBorderColor(HgiBorderColor)";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unsupported sampler options");
    return 0.0;
  }

  else
  {
    LODWORD(result) = dword_29B6C6B98[a1];
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetImageLayoutFormatQualifier(int a1@<W0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = &(&off_29F2964A0)[4 * a1];
  v5 = v4[3];
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  v6 = v4[2];
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    p_dst = operator new(v8);
    *(&__dst + 1) = v5;
    v14 = v8 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v14) = v4[3];
  p_dst = &__dst;
  if (v5)
  {
LABEL_9:
    memmove(p_dst, v6, v5);
  }

  *(p_dst + v5) = 0;
  v9 = SHIBYTE(v14);
  if (SHIBYTE(v14) < 0)
  {
    a2 = *(&__dst + 1);
    if (*(&__dst + 1))
    {
      v10 = __dst;
      sub_29A008D14(a3, __dst, *(&__dst + 1));
      goto LABEL_17;
    }
  }

  else if (HIBYTE(v14))
  {
    *a3 = __dst;
    *(a3 + 16) = v14;
    return;
  }

  v11[0] = "hgiGL/conversions.cpp";
  v11[1] = "GetImageLayoutFormatQualifier";
  v11[2] = 477;
  v11[3] = "static std::string pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetImageLayoutFormatQualifier(HgiFormat)";
  v12 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v11, "Given HgiFormat is not a supported image unit format, defaulting to rgba16f", a2);
  *(a3 + 23) = 7;
  strcpy(a3, "rgba16f");
  if ((v9 & 0x80000000) == 0)
  {
    return;
  }

  v10 = __dst;
LABEL_17:
  operator delete(v10);
}

void sub_29AB914D4()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_DEBUG))
  {
    sub_29B2C2C34();
  }
}

void sub_29AB91504()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A20731A8, 0, "HGIGL_DEBUG_ERROR_STACKTRACE", 0);
  v0 = sub_29AB91EC4();

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "HGIGL_DEBUG_ERROR_STACKTRACE", "HgiGL dump stack trace on GL error");
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLDebugEnabled(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A1748748, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748748))
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIGL_DEBUG);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A1748740 = *v2 == 1;
    __cxa_guard_release(&qword_2A1748748);
  }

  return byte_2A1748740;
}

void pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(uint64_t a1)
{
  Error = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError(a1);
  if (Error)
  {
    v3 = Error;
    v4 = *MEMORY[0x29EDC9538];
    v5 = 256;
    v6 = *(MEMORY[0x29EDC9538] + 24);
    do
    {
      v7 = pxrInternal__aapl__pxrReserved__::internal::GLApi::gluErrorString(v3);
      sub_29A00B6DC(&v29);
      if (v7)
      {
        v8 = sub_29A00911C(&v29, "GL error: ", 10);
        v9 = strlen(v7);
        sub_29A00911C(v8, v7, v9);
      }

      else
      {
        v10 = sub_29A00911C(&v29, "GL error code: 0x", 17);
        *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
        v11 = MEMORY[0x29C2C1EE0]();
        *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
      }

      v12 = *(a1 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a1 + 8);
      }

      if (v12)
      {
        v13 = sub_29A00911C(&v29, ", reported from ", 16);
        v14 = *(a1 + 23);
        if (v14 >= 0)
        {
          v15 = a1;
        }

        else
        {
          v15 = *a1;
        }

        if (v14 >= 0)
        {
          v16 = *(a1 + 23);
        }

        else
        {
          v16 = *(a1 + 8);
        }

        sub_29A00911C(v13, v15, v16);
      }

      if (sub_29AB91A34(0))
      {
        std::stringbuf::str();
        v17 = std::string::append(&v28, "\n");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v25 = v17->__r_.__value_.__r.__words[2];
        *__p = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(__p);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }
      }

      __p[0] = "hgiGL/diagnostic.cpp";
      __p[1] = "HgiGLPostPendingGLErrors";
      v25 = 74;
      v26 = "void pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(const std::string &)";
      v27 = 0;
      std::stringbuf::str();
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 3, &v28);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v29 = v4;
      *(&v29 + *(v4 - 3)) = v6;
      v30 = MEMORY[0x29EDC9570] + 16;
      if (v32 < 0)
      {
        operator delete(v31[7].__locale_);
      }

      v30 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v31);
      std::ostream::~ostream();
      v19 = MEMORY[0x29C2C4390](&v33);
      if (!--v5)
      {
        break;
      }

      v3 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetError(v19);
    }

    while (v3);
    v20 = sub_29AB91A34(0);
    if (v20)
    {
      pxrInternal__aapl__pxrReserved__::TfGetStackTrace(__p, v20);
      if (v25 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("==== GL Error Stack ====\n%s\n", v21, v22, v23);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(&v29);
      if (SHIBYTE(v31[0].__locale_) < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_29AB919B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AB91A34(int a1)
{
  v2 = sub_29AB91EC4();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AB91EC4();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), "HGIGL_DEBUG_ERROR_STACKTRACE");
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLSetupGL4Debug(pxrInternal__aapl__pxrReserved__ *this)
{
  result = pxrInternal__aapl__pxrReserved__::HgiGLDebugEnabled(this);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable(37600);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageCallback(sub_29AB91B3C, 0);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDebugMessageControl(4352, 4352, 4352, 0, 0, 1);
    v2 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;

    return v2(33346);
  }

  return result;
}

void sub_29AB91B3C(int a1, int a2, int __val, uint64_t a4, uint64_t a5, const std::string::value_type *a6)
{
  if (__val != 131076 && __val != 131185 && __val != 131218)
  {
    std::to_string(&v19, __val);
    v9 = std::string::insert(&v19, 0, "GL Error code: ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v20, " Msg: ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v21, a6);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v22, " Func: ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v23, "void pxrInternal__aapl__pxrReserved__::_HgiGLErrorCallback(int, const char *)");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v25 = v17->__r_.__value_.__r.__words[2];
    v24 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(&v24);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }
  }
}

void sub_29AB91CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 25) < 0)
  {
    operator delete(*(v35 - 48));
  }

  _Unwind_Resume(exception_object);
}

char *pxrInternal__aapl__pxrReserved__::HgiGLMeetsMinimumRequirements(pxrInternal__aapl__pxrReserved__ *this)
{
  result = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7938);
  if (result)
  {
    v2 = result;
    v3 = strchr(result, 46);
    v5 = v3;
    if (v3)
    {
      v6 = v3 == v2;
    }

    else
    {
      v6 = 1;
    }

    if (!v6 || (sub_29B2C2C68(v14, v2, v4) & 1) != 0)
    {
      v7 = *(v5 - 1);
      if (v7 <= 48)
      {
        v8 = 48;
      }

      else
      {
        v8 = *(v5 - 1);
      }

      v9 = 100 * v8 - 4800;
      v10 = v5[1];
      if (v10 <= 48)
      {
        v11 = 48;
      }

      else
      {
        v11 = v5[1];
      }

      v12 = 10 * v11 - 480;
      if (v7 >= 57)
      {
        v13 = 900;
      }

      else
      {
        v13 = v9;
      }

      if (v10 >= 57)
      {
        v12 = 90;
      }

      return ((v12 + v13) > 0x1C1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLObjectLabel(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(33512, &v11);
  v6 = *(a3 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v9 = a3;
    a3 = *a3;
    v8 = v9[1];
    if (v8 >= v11 - 1)
    {
      v7 = v11 - 1;
    }

    else
    {
      v7 = v8;
    }
  }

  else if (v11 - 1 >= v6)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = v11 - 1;
  }

  return pxrInternal__aapl__pxrReserved__::internal::GLApi::glObjectLabel(a1, a2, v7, a3);
}

uint64_t sub_29AB91EC4()
{
  if ((atomic_load_explicit(&qword_2A14F95A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F95A0))
  {
    v1 = operator new(4uLL);
    *v1 = 0;
    qword_2A14F9598 = v1;
    __cxa_guard_release(&qword_2A14F95A0);
  }

  return qword_2A14F9598;
}

pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder *pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder::HgiGL_ScopedStateHolder(pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder *this)
{
  *(this + 3) = 0;
  v2 = this + 12;
  *(this + 16) = 0;
  v3 = this + 16;
  *(this + 7) = 0;
  v28 = this + 56;
  *(this + 116) = 0;
  v24 = this + 116;
  *(this + 78) = 0;
  v23 = this + 156;
  *this = 0;
  *(this + 4) = 0;
  v4 = this + 8;
  *(this + 20) = 0;
  v5 = this + 20;
  *(this + 5) = 0;
  v6 = this + 40;
  *(this + 28) = 0;
  *(this + 4) = 0;
  v7 = this + 32;
  *(this + 13) = 0;
  *(this + 11) = 0;
  v27 = this + 88;
  *(this + 12) = 0;
  v26 = this + 96;
  *(this + 112) = 0;
  v25 = this + 112;
  *(this + 40) = 1065353216;
  v22 = this + 160;
  *(this + 164) = 1;
  v21 = this + 164;
  *(this + 21) = 0x90100000405;
  v20 = this + 168;
  *(this + 88) = 1;
  v19 = this + 176;
  *(this + 180) = 0x3F80000000000000;
  v18 = this + 180;
  *(this + 94) = 0;
  v17 = this + 188;
  *(this + 24) = 0;
  v8 = (this + 192);
  *(this + 108) = 0;
  v16 = this + 216;
  *(this + 220) = 0x100000001;
  v15 = this + 220;
  *(this + 25) = 0;
  *(this + 26) = 0;
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushDebugGroup(33353, 0, 0xFFFFFFFFLL, "Capture state");
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36007, this);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34229, v8 - 188);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(2929, v4);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(2930, v8 - 183);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2932, v2);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(32823, v3);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatv(10752, v5);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatv(32824, v8 - 21);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2962, v7);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2967, v6);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2963, v28);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2964, this + 48);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2965, this + 72);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2966, this + 80);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2968, v27);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34816, v8 - 156);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36003, v8 - 148);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36004, v8 - 132);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34817, this + 52);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34818, this + 76);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34819, this + 84);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(36005, v8 - 100);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2978, v26);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(3042, v25);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32777, v24);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(34877, v8 - 9);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32969, this + 124);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32971, this + 128);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32968, this + 132);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(32970, this + 136);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatv(32773, this + 140);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(32926, v23);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(32927, v8 - 35);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatv(2849, v22);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(2884, v21);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2885, v20);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2886, v8 - 20);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(35977, v19);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(34383, v8 - 15);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatv(2928, v18);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(36281, v17);
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_conservative_raster == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(37702, v8 - 3);
  }

  v31 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(3378, &v31);
  sub_29A08AE30(v8, v31, 0);
  if (v31 >= 1)
  {
    for (i = 0; i < v31; ++i)
    {
      LOBYTE(__p[0]) = 0;
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv((i + 12288), __p);
      v10 = *v8;
      v11 = i >> 6;
      v12 = 1 << i;
      if (LOBYTE(__p[0]) == 1)
      {
        v13 = *(v10 + 8 * v11) | v12;
      }

      else
      {
        v13 = *(v10 + 8 * v11) & ~v12;
      }

      *(v10 + 8 * v11) = v13;
    }
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(32925, v16);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetBooleanv(2832, v8 + 25);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(3317, v15);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(3333, v8 + 4);
  sub_29A008E78(__p, "pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder::HgiGL_ScopedStateHolder()");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopDebugGroup();
  }

  return this;
}

void sub_29AB924B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*v28)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder::~HgiGL_ScopedStateHolder(pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder *this)
{
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPushDebugGroup(33353, 0, 0xFFFFFFFFLL, "Restore state");
  }

  if (*(this + 8))
  {
    v2 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v2 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v2)(2929);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthMask(*(this + 9));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthFunc(*(this + 3));
  if (*(this + 16))
  {
    v3 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v3 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v3)(32823);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPolygonOffset(*(this + 6), *(this + 5));
  if (*(this + 28))
  {
    v4 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v4 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v4)(2960);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilFuncSeparate(1028, *(this + 8), *(this + 10), *(this + 14));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilOpSeparate(1028, *(this + 12), *(this + 18), *(this + 20));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilMaskSeparate(1028, *(this + 22));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilFuncSeparate(1029, *(this + 9), *(this + 11), *(this + 15));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilOpSeparate(1029, *(this + 13), *(this + 19), *(this + 21));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glStencilMaskSeparate(1029, *(this + 23));
  if (*(this + 156))
  {
    v5 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v5 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v5)(32926);
  if (*(this + 157))
  {
    v6 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v6 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v6)(32927);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendFuncSeparate(*(this + 31), *(this + 33), *(this + 32), *(this + 34));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendEquationSeparate(*(this + 29), *(this + 30));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBlendColor(*(this + 35), *(this + 36), *(this + 37), *(this + 38));
  if (*(this + 112))
  {
    v7 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v7 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v7)(3042);
  v8 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glViewport(*(this + 24), *(this + 25), *(this + 26), *(this + 27));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindVertexArray(*(this + 1), v8);
  v9 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindRenderbuffer(36161, *this);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glLineWidth(v9, *(this + 40));
  if (*(this + 164))
  {
    v10 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v10 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v10)(2884);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glCullFace(*(this + 42));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glFrontFace(*(this + 43));
  if (*(this + 176))
  {
    v11 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v11 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v11)(35977);
  if (*(this + 177))
  {
    v12 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v12 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v12)(34383);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glDepthRangef(*(this + 45), *(this + 46));
  if (*(this + 188))
  {
    v13 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v13 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v13)(36281);
  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_NV_conservative_raster == 1)
  {
    if (*(this + 189))
    {
      v14 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
    }

    else
    {
      v14 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
    }

    (*v14)(37702);
  }

  if (*(this + 25))
  {
    v15 = 0;
    do
    {
      if ((*(*(this + 24) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
      }

      else
      {
        v16 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
      }

      (*v16)((v15++ + 12288));
    }

    while (v15 < *(this + 25));
  }

  if (*(this + 216))
  {
    v17 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v17 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v17)(32925);
  if (*(this + 217))
  {
    v18 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glEnable;
  }

  else
  {
    v18 = &pxrInternal__aapl__pxrReserved__::internal::GLApi::glDisable;
  }

  (*v18)(2832);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStorei(3317, *(this + 55));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStorei(3333, *(this + 56));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glBindSamplers(0, 8, &unk_29B6C6C00);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glUseProgram(0);
  sub_29A008E78(__p, "pxrInternal__aapl__pxrReserved__::HgiGL_ScopedStateHolder::~HgiGL_ScopedStateHolder()");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (pxrInternal__aapl__pxrReserved__::internal::GLApi::GARCH_GL_KHR_debug == 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glPopDebugGroup();
  }

  v19 = *(this + 24);
  if (v19)
  {
    operator delete(v19);
  }
}

pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator *pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::HgiGLShaderGenerator(pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator *this, const pxrInternal__aapl__pxrReserved__::Hgi *a2, const pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *a3)
{
  v96 = *MEMORY[0x29EDCA608];
  v6 = pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::HgiShaderGenerator(this, a3);
  *v6 = &unk_2A20731C8;
  *(v6 + 3) = 0u;
  v6[5] = a2;
  v7 = (v6 + 9);
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  v8 = *(a3 + 6);
  if (v8 > 7)
  {
    if (v8 == 8)
    {
      std::operator+<char>();
      v41 = std::string::append(&v88, ") out;\n");
      v42 = v41->__r_.__value_.__r.__words[0];
      v93.__r_.__value_.__r.__words[0] = v41->__r_.__value_.__l.__size_;
      *(v93.__r_.__value_.__r.__words + 7) = *(&v41->__r_.__value_.__r.__words[1] + 7);
      v43 = HIBYTE(v41->__r_.__value_.__r.__words[2]);
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v44 = *(this + 10);
      v45 = *(this + 11);
      if (v44 >= v45)
      {
        v50 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *v7) >> 3);
        v51 = v50 + 1;
        if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_29A00C9A4();
        }

        v52 = 0xAAAAAAAAAAAAAAABLL * ((v45 - *v7) >> 3);
        if (2 * v52 > v51)
        {
          v51 = 2 * v52;
        }

        if (v52 >= 0x555555555555555)
        {
          v53 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v53 = v51;
        }

        v92 = v7;
        if (v53)
        {
          goto LABEL_139;
        }

        goto LABEL_140;
      }

      goto LABEL_74;
    }

    if (v8 != 16)
    {
      if (v8 != 32)
      {
        goto LABEL_160;
      }

      v9 = *(a3 + 82);
      if (v9 <= 1)
      {
        if (v9)
        {
          if (v9 != 1)
          {
            goto LABEL_110;
          }

          v10 = sub_29AB96034((v6 + 9), "layout (lines) in;\n");
        }

        else
        {
          v10 = sub_29AB96814((v6 + 9), "layout (points) in;\n");
        }
      }

      else
      {
        switch(v9)
        {
          case 2:
            v10 = sub_29AB96934((v6 + 9), "layout (lines_adjacency) in;\n");
            break;
          case 3:
            v10 = sub_29AB95F14((v6 + 9), "layout (triangles) in;\n");
            break;
          case 4:
            v10 = sub_29AB96A54((v6 + 9), "layout (triangles_adjacency) in;\n");
            break;
          default:
            goto LABEL_110;
        }
      }

      *(this + 10) = v10;
LABEL_110:
      v56 = *(a3 + 83);
      if (v56 == 2)
      {
        std::operator+<char>();
        v65 = std::string::append(&v88, ") out;\n");
        v42 = v65->__r_.__value_.__r.__words[0];
        v93.__r_.__value_.__r.__words[0] = v65->__r_.__value_.__l.__size_;
        *(v93.__r_.__value_.__r.__words + 7) = *(&v65->__r_.__value_.__r.__words[1] + 7);
        v43 = HIBYTE(v65->__r_.__value_.__r.__words[2]);
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        v44 = *(this + 10);
        v66 = *(this + 11);
        if (v44 >= v66)
        {
          v50 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *v7) >> 3);
          v67 = v50 + 1;
          if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_29A00C9A4();
          }

          v68 = 0xAAAAAAAAAAAAAAABLL * ((v66 - *v7) >> 3);
          if (2 * v68 > v67)
          {
            v67 = 2 * v68;
          }

          if (v68 >= 0x555555555555555)
          {
            v53 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v53 = v67;
          }

          v92 = v7;
          if (v53)
          {
            goto LABEL_139;
          }

          goto LABEL_140;
        }
      }

      else if (v56 == 1)
      {
        std::operator+<char>();
        v61 = std::string::append(&v88, ") out;\n");
        v42 = v61->__r_.__value_.__r.__words[0];
        v93.__r_.__value_.__r.__words[0] = v61->__r_.__value_.__l.__size_;
        *(v93.__r_.__value_.__r.__words + 7) = *(&v61->__r_.__value_.__r.__words[1] + 7);
        v43 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
        v61->__r_.__value_.__l.__size_ = 0;
        v61->__r_.__value_.__r.__words[2] = 0;
        v61->__r_.__value_.__r.__words[0] = 0;
        v44 = *(this + 10);
        v62 = *(this + 11);
        if (v44 >= v62)
        {
          v50 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *v7) >> 3);
          v63 = v50 + 1;
          if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_29A00C9A4();
          }

          v64 = 0xAAAAAAAAAAAAAAABLL * ((v62 - *v7) >> 3);
          if (2 * v64 > v63)
          {
            v63 = 2 * v64;
          }

          if (v64 >= 0x555555555555555)
          {
            v53 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v53 = v63;
          }

          v92 = v7;
          if (v53)
          {
            goto LABEL_139;
          }

          goto LABEL_140;
        }
      }

      else
      {
        if (v56)
        {
          goto LABEL_160;
        }

        std::operator+<char>();
        v57 = std::string::append(&v88, ") out;\n");
        v42 = v57->__r_.__value_.__r.__words[0];
        v93.__r_.__value_.__r.__words[0] = v57->__r_.__value_.__l.__size_;
        *(v93.__r_.__value_.__r.__words + 7) = *(&v57->__r_.__value_.__r.__words[1] + 7);
        v43 = HIBYTE(v57->__r_.__value_.__r.__words[2]);
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        v44 = *(this + 10);
        v58 = *(this + 11);
        if (v44 >= v58)
        {
          v50 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *v7) >> 3);
          v59 = v50 + 1;
          if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_29A00C9A4();
          }

          v60 = 0xAAAAAAAAAAAAAAABLL * ((v58 - *v7) >> 3);
          if (2 * v60 > v59)
          {
            v59 = 2 * v60;
          }

          if (v60 >= 0x555555555555555)
          {
            v53 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v53 = v59;
          }

          v92 = v7;
          if (v53)
          {
LABEL_139:
            v69 = sub_29A012C48(v7, v53);
LABEL_141:
            v70 = &v69[24 * v50];
            v71 = &v69[24 * v53];
            *v70 = v42;
            *(v70 + 1) = v93.__r_.__value_.__r.__words[0];
            *(v70 + 15) = *(v93.__r_.__value_.__r.__words + 7);
            v70[23] = v43;
            v46 = v70 + 24;
            v72 = *(this + 9);
            v73 = *(this + 10) - v72;
            v74 = &v70[-v73];
            memcpy(&v70[-v73], v72, v73);
            v75 = *(this + 9);
            *(this + 9) = v74;
            *(this + 10) = v46;
            v76 = *(this + 11);
            *(this + 11) = v71;
            v90 = v75;
            v91 = v76;
            *&v89 = v75;
            *(&v89 + 1) = v75;
            sub_29A01FF14(&v89);
            goto LABEL_142;
          }

LABEL_140:
          v69 = 0;
          goto LABEL_141;
        }
      }

LABEL_74:
      *v44 = v42;
      *(v44 + 8) = v93.__r_.__value_.__r.__words[0];
      *(v44 + 15) = *(v93.__r_.__value_.__r.__words + 7);
      *(v44 + 23) = v43;
      v46 = (v44 + 24);
LABEL_142:
      *(this + 10) = v46;
      if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_160;
      }

      v40 = v88.__r_.__value_.__r.__words[0];
      goto LABEL_144;
    }

    v47 = *(a3 + 66);
    if (v47 == 2)
    {
      v48 = sub_29AB96154((v6 + 9), "layout (isolines) in;\n");
    }

    else if (v47 == 1)
    {
      v48 = sub_29AB96034((v6 + 9), "layout (quads) in;\n");
    }

    else
    {
      if (v47)
      {
        v54 = 0;
LABEL_96:
        v55 = *(a3 + 67);
        if (v55 == 2)
        {
          if (v54 < *(this + 11))
          {
            sub_29A008E78(v54, "layout (fractional_odd_spacing) in;\n");
            goto LABEL_105;
          }

          v77 = sub_29AB964B4(v7, "layout (fractional_odd_spacing) in;\n");
        }

        else if (v55 == 1)
        {
          if (v54 < *(this + 11))
          {
            sub_29A008E78(v54, "layout (fractional_even_spacing) in;\n");
            goto LABEL_105;
          }

          v77 = sub_29AB96394(v7, "layout (fractional_even_spacing) in;\n");
        }

        else
        {
          if (v55)
          {
            goto LABEL_150;
          }

          if (v54 < *(this + 11))
          {
            sub_29A008E78(v54, "layout (equal_spacing) in;\n");
LABEL_105:
            v54 += 3;
            *(this + 10) = v54;
LABEL_149:
            *(this + 10) = v54;
LABEL_150:
            v78 = *(a3 + 68);
            if (v78 == 1)
            {
              if (v54 >= *(this + 11))
              {
                v49 = sub_29AB966F4(v7, "layout (ccw) in;\n");
                goto LABEL_159;
              }

              sub_29A008E78(v54, "layout (ccw) in;\n");
            }

            else
            {
              if (v78)
              {
                goto LABEL_160;
              }

              if (v54 >= *(this + 11))
              {
                v49 = sub_29AB965D4(v7, "layout (cw) in;\n");
                goto LABEL_159;
              }

              sub_29A008E78(v54, "layout (cw) in;\n");
            }

            v49 = v54 + 3;
            *(this + 10) = v54 + 3;
LABEL_159:
            *(this + 10) = v49;
            goto LABEL_160;
          }

          v77 = sub_29AB96274(v7, "layout (equal_spacing) in;\n");
        }

        v54 = v77;
        goto LABEL_149;
      }

      v48 = sub_29AB95F14((v6 + 9), "layout (triangles) in;\n");
    }

    v54 = v48;
    *(this + 10) = v48;
    goto LABEL_96;
  }

  if (v8 == 2)
  {
    if (*(a3 + 360) != 1)
    {
      goto LABEL_160;
    }

    v49 = sub_29AB96B74((v6 + 9), "layout (early_fragment_tests) in;\n");
    goto LABEL_159;
  }

  if (v8 == 4)
  {
    v11 = *(a3 + 62);
    v12 = *(a3 + 63);
    v13 = *(a3 + 64);
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14 || v13 == 0;
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = v11;
    }

    if (v15)
    {
      v17 = 1;
    }

    else
    {
      v17 = v12;
    }

    if (v15)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13;
    }

    v95 = 0;
    v94 = 0;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegeri_v(37311, 0, &v94);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegeri_v(37311, 1, &v94 + 4);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegeri_v(37311, 2, &v95);
    if (v16 > v94)
    {
      *&v89 = "hgiGL/shaderGenerator.cpp";
      *(&v89 + 1) = "HgiGLShaderGenerator";
      v90 = 74;
      v91 = "pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::HgiGLShaderGenerator(const Hgi *, const HgiShaderFunctionDesc &)";
      LOBYTE(v92) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v89, "Max size of compute work group available from device is %i, larger than %i", v19, v94, v16);
      LODWORD(v16) = v94;
    }

    if (v17 > SHIDWORD(v94))
    {
      *&v89 = "hgiGL/shaderGenerator.cpp";
      *(&v89 + 1) = "HgiGLShaderGenerator";
      v90 = 79;
      v91 = "pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::HgiGLShaderGenerator(const Hgi *, const HgiShaderFunctionDesc &)";
      LOBYTE(v92) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v89, "Max size of compute work group available from device is %i, larger than %i", v19, HIDWORD(v94), v17);
      LODWORD(v17) = HIDWORD(v94);
    }

    if (v18 > v95)
    {
      *&v89 = "hgiGL/shaderGenerator.cpp";
      *(&v89 + 1) = "HgiGLShaderGenerator";
      v90 = 84;
      v91 = "pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::HgiGLShaderGenerator(const Hgi *, const HgiShaderFunctionDesc &)";
      LOBYTE(v92) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v89, "Max size of compute work group available from device is %i, larger than %i", v19, v95, v18);
      LODWORD(v18) = v95;
    }

    sub_29A008E78(&v83, "layout(");
    v20 = std::string::append(&v83, "local_size_x = ");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v84.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v84.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v82, v16);
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v82;
    }

    else
    {
      v22 = v82.__r_.__value_.__r.__words[0];
    }

    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v82.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v84, v22, size);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v85, ", local_size_y = ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v81, v17);
    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v81;
    }

    else
    {
      v28 = v81.__r_.__value_.__r.__words[0];
    }

    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v81.__r_.__value_.__l.__size_;
    }

    v30 = std::string::append(&v86, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v87, ", local_size_z = ");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v93.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v93.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v80, v18);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v80;
    }

    else
    {
      v34 = v80.__r_.__value_.__r.__words[0];
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v80.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v93, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v88, ") in;\n");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v90 = v38->__r_.__value_.__r.__words[2];
    v89 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    sub_29A091654(v7, &v89);
    if (SHIBYTE(v90) < 0)
    {
      operator delete(v89);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      v40 = v83.__r_.__value_.__r.__words[0];
LABEL_144:
      operator delete(v40);
    }
  }

LABEL_160:
  pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteTextures(this, a3 + 7);
  pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteBuffers(this, a3 + 10);
  sub_29A008E78(&v89, "in");
  pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteInOuts(this, a3 + 19, &v89);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  sub_29A008E78(&v89, "in");
  pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteInOutBlocks(this, a3 + 25, &v89);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  if (*(a3 + 14) != *(a3 + 13))
  {
    LODWORD(v89) = 0;
    sub_29AB95040(this, "ParamBuffer", a3 + 104, &v89);
  }

  sub_29A008E78(&v89, "out");
  pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteInOuts(this, a3 + 22, &v89);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  sub_29A008E78(&v89, "out");
  pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteInOutBlocks(this, a3 + 28, &v89);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  return this;
}

void sub_29AB934FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  *(v61 + 80) = v63;
  *(v65 - 208) = v62;
  sub_29A012C90((v65 - 208));
  *(v65 - 208) = v64;
  sub_29AB95E54((v65 - 208));
  pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::~HgiShaderGenerator(v61);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteTextures(uint64_t a1, uint64_t *a2)
{
  *&v24 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      sub_29A008E78(&v21, "binding");
      std::to_string(&__p, v6);
      memset(v20, 0, sizeof(v20));
      sub_29AB96C94(v20, &v21, &v24, 1uLL);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21);
      }

      v9 = v2 + v5;
      if (*(v2 + v5 + 48) == 1)
      {
        v10 = v20[0];
        pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetImageLayoutFormatQualifier(*(v9 + 28), v8, &v21);
        sub_29A008E78(&__p, "");
        sub_29AB94C30(v20, v10, &v21);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21);
        }
      }

      v11 = operator new(0xC8uLL);
      v12 = *(v2 + v5 + 24);
      v13 = *(v2 + v5 + 28);
      v14 = *(v2 + v5 + 32);
      v15 = *(v9 + 40);
      v16 = *(v9 + 48);
      v21 = 0uLL;
      v22 = 0;
      pxrInternal__aapl__pxrReserved__::HgiGLTextureShaderSection::HgiGLTextureShaderSection(v11, (v2 + v5), v7, v12, v13, v14, v15, v16, v20, &v21);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21);
      }

      v19 = v11;
      sub_29AB94DF4((a1 + 48), &v19);
      v17 = v19;
      v19 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      v18 = *(v9 + 40);
      if (v18 <= 1)
      {
        v18 = 1;
      }

      v6 += v18;
      *&v21 = v20;
      sub_29A0D2770(&v21);
      ++v7;
      v2 = *a2;
      v5 += 56;
    }

    while (v7 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  }
}

void sub_29AB93904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __p = &a13;
  sub_29A0D2770(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteBuffers(uint64_t a1, uint64_t *a2)
{
  *&v21 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    do
    {
      v6 = (v2 + (v5 << 6));
      v7 = v6[14];
      v8 = v6[13];
      if (v8)
      {
        std::to_string(&v16, v8);
      }

      else
      {
        memset(&v16, 0, sizeof(v16));
      }

      if ((v7 | 2) == 3)
      {
        sub_29A008E78(&v17, "std140");
        sub_29A008E78(v18, "");
        sub_29A008E78(v19, "binding");
        std::to_string(&v20, v6[12]);
        v13 = 0;
        v14 = 0;
        v15 = 0;
        sub_29AB96C94(&v13, &v17, &v21, 2uLL);
        for (i = 0; i != -12; i -= 6)
        {
          v10 = &v18[i - 1];
          if (SHIBYTE(v20.__r_.__value_.__r.__words[i + 2]) < 0)
          {
            operator delete(v10[9]);
          }

          if (*(v10 + 71) < 0)
          {
            operator delete(v10[6]);
          }
        }
      }

      else
      {
        sub_29A008E78(&v17, "std430");
        sub_29A008E78(v18, "");
        sub_29A008E78(v19, "binding");
        std::to_string(&v20, v6[12]);
        v13 = 0;
        v14 = 0;
        v15 = 0;
        sub_29AB96C94(&v13, &v17, &v21, 2uLL);
        for (j = 0; j != -12; j -= 6)
        {
          v12 = &v18[j - 1];
          if (SHIBYTE(v20.__r_.__value_.__r.__words[j + 2]) < 0)
          {
            operator delete(v12[9]);
          }

          if (*(v12 + 71) < 0)
          {
            operator delete(v12[6]);
          }
        }
      }

      sub_29AB94EF4(a1, v6, v6 + 12, (v6 + 6), v6 + 14, &v16, &v13);
      *&v17 = &v13;
      sub_29A0D2770(&v17);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      ++v5;
      v2 = *a2;
    }

    while (v5 < (a2[1] - *a2) >> 6);
  }
}

void sub_29AB93C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteInOuts(uint64_t a1, void *a2, __int128 *a3)
{
  v3 = a3;
  v63[6] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1748768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748768))
  {
    sub_29A008E78(__dst, "gl_Position");
    sub_29A008E78(&__p, "gl_FragColor");
    sub_29A008E78(v47, "gl_FragDepth");
    sub_29A008E78(v48, "gl_PointSize");
    sub_29A9FDE68(&unk_2A1748750, __dst, 4);
    for (i = 0; i != -12; i -= 3)
    {
      if (SHIBYTE(v48[i + 2]) < 0)
      {
        operator delete(v48[i]);
      }
    }

    __cxa_atexit(sub_29AA7B2BC, &unk_2A1748750, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748768);
    v3 = a3;
  }

  if ((atomic_load_explicit(&qword_2A1748798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748798))
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v21)
    {
      v21 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB958B4(__dst, v21, "gl_Position");
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v22)
    {
      v22 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95944(v47, v22 + 1, "gl_PointCoord");
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v23)
    {
      v23 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB959D4(&v49, v23 + 2, "gl_ClipDistance");
    v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v24)
    {
      v24 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB959D4(&v50, v24 + 3, "gl_CullDistance");
    v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v25)
    {
      v25 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB958B4(&v51, v25 + 4, "gl_VertexID");
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v26)
    {
      v26 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95944(&v52, v26 + 5, "gl_InstanceID");
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v27)
    {
      v27 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95A64(&v53, v27 + 6, "gl_PrimitiveID");
    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v28)
    {
      v28 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB958B4(&v54, v28 + 7, "gl_SampleID");
    v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v29)
    {
      v29 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95AF4(&v55, v29 + 8, "gl_SamplePosition");
    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v30)
    {
      v30 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95B84(&v56, v30 + 9, "gl_FragCoord");
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v31)
    {
      v31 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95944(&v57, v31 + 12, "gl_BaseVertex");
    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v32)
    {
      v32 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95C14(&v58, v32 + 13, "0");
    v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v33)
    {
      v33 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95A64(&v59, v33 + 10, "gl_FrontFacing");
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v34)
    {
      v34 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95CA4(&v60, v34 + 11, "gl_Layer");
    v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v35)
    {
      v35 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95D34(&v61, v35 + 14, "gl_ViewportIndex");
    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v36)
    {
      v36 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95DC4(&v62, v36 + 17, "gl_GlobalInvocationID");
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    if (!v37)
    {
      v37 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
    }

    sub_29AB95DC4(v63, v37 + 18, "gl_BaryCoordNoPerspNV");
    sub_29AB974A4(qword_2A1748770, __dst, 17);
    for (j = 96; j != -6; j -= 6)
    {
      sub_29A0D2850(&__dst[j]);
    }

    __cxa_atexit(sub_29AB95148, qword_2A1748770, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748798);
    v3 = a3;
  }

  if (*(v3 + 23) < 0)
  {
    v5 = *(v3 + 1) == 2 && **v3 == 28265;
    if (*(v3 + 1) != 3)
    {
      v6 = 0;
      goto LABEL_20;
    }

    v3 = *v3;
    goto LABEL_13;
  }

  if (*(v3 + 23) == 2)
  {
    v6 = 0;
    v5 = *v3 == 28265;
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  if (*(v3 + 23) == 3)
  {
LABEL_13:
    v6 = *v3 == 30063 && *(v3 + 2) == 116;
  }

LABEL_20:
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = *a2 + 96;
    do
    {
      if (!v6 || sub_29A01BCCC(&unk_2A1748750, (v9 - 96)) == &unk_2A1748758)
      {
        if (v5 && (v10 = sub_29A8877BC(qword_2A1748770, (v9 - 24))) != 0)
        {
          v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          if (!v11)
          {
            v11 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          }

          if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v11 + 136), (v9 - 24)))
          {
            goto LABEL_41;
          }

          v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          if (!v12)
          {
            v12 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          }

          if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v12 + 32), (v9 - 24)))
          {
            goto LABEL_41;
          }

          v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          if (!v13)
          {
            v13 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          }

          if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v13 + 40), (v9 - 24)))
          {
            goto LABEL_41;
          }

          v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          if (!v14)
          {
            v14 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          }

          if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v14 + 104), (v9 - 24)))
          {
            goto LABEL_41;
          }

          v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          if (!v15)
          {
            v15 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
          }

          if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v15 + 144), (v9 - 24)))
          {
LABEL_41:
            sub_29AB9514C(a1, v9 - 96, v9 - 72, (v10 + 5));
          }
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          if (*(v9 - 48) != -1)
          {
            sub_29A008E78(__dst, "location");
            std::to_string(&__p, *(v9 - 48));
            v16 = v42;
            if (v42 >= v43)
            {
              v42 = sub_29AB97520(&v41, __dst);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v17 = *__dst;
              *(v42 + 16) = v45;
              *v16 = v17;
              __dst[1] = 0;
              v45 = 0;
              __dst[0] = 0;
              v18 = __p.__r_.__value_.__r.__words[2];
              *(v16 + 24) = *&__p.__r_.__value_.__l.__data_;
              *(v16 + 40) = v18;
              memset(&__p, 0, sizeof(__p));
              v42 = v16 + 48;
            }

            if (SHIBYTE(v45) < 0)
            {
              operator delete(__dst[0]);
            }
          }

          __dst[0] = 0;
          __dst[1] = 0;
          v45 = 0;
          sub_29AB9521C(a1, (v9 - 96), (v9 - 72), (v9 - 40), (v9 - 36), (v9 - 32), &v41, a3, __dst, v9);
          if (SHIBYTE(v45) < 0)
          {
            operator delete(__dst[0]);
          }

          __dst[0] = &v41;
          sub_29A0D2770(__dst);
        }
      }

      v19 = v9 + 24;
      v9 += 120;
    }

    while (v19 != v8);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteInOutBlocks(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    do
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v6 = *(v3 + 48);
      v7 = *(v3 + 56);
      if (v6 != v7)
      {
        do
        {
          v16 = 0;
          memset(v15, 0, sizeof(v15));
          v13 = 0uLL;
          v14 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v8 = v6 + 52;
          v12 = 0;
          v9 = sub_29AB95358(a1, v6, (v6 + 24), (v6 + 48), (v6 + 52), &v16, v15, a3, &v13, __p, (v3 + 24));
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v14) < 0)
          {
            operator delete(v13);
          }

          *&v13 = v15;
          sub_29A0D2770(&v13);
          v17 = v9;
          sub_29A0A71C8(&v18, &v17);
          v6 = v8 + 4;
        }

        while (v8 + 4 != v7);
      }

      sub_29AB95470(a1, v3, v3 + 24, a3, v3 + 72, &v18);
      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }

      v3 += 104;
    }

    while (v3 != v10);
  }
}

void sub_29AB947B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  v27 = *(v25 - 104);
  if (v27)
  {
    *(v25 - 96) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteConstantParams(void *result, void *a2)
{
  if (a2[1] != *a2)
  {
    v5 = v2;
    v6 = v3;
    v4 = 0;
    return sub_29AB95040(result, "ParamBuffer", a2, &v4);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteVersion(uint64_t a1, void *a2)
{
  v3 = (*(**(a1 + 40) + 200))(*(a1 + 40));
  v4 = (*(*v3 + 24))(v3);
  v5 = sub_29A00911C(a2, "#version ", 9);
  std::to_string(&v9, v4);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v9;
  }

  else
  {
    v6 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  v8 = sub_29A00911C(v5, v6, size);
  sub_29A00911C(v8, "\n", 1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_29AB9493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteExtensions(pxrInternal__aapl__pxrReserved__::HgiShaderGenerator *a1, void *a2)
{
  v4 = (*(**(a1 + 5) + 200))(*(a1 + 5));
  v5 = (*(*v4 + 24))(v4);
  v6 = *((*(**(a1 + 5) + 200))(*(a1 + 5)) + 48);
  v7 = *((*(**(a1 + 5) + 200))(*(a1 + 5)) + 48);
  v8 = *((*(**(a1 + 5) + 200))(*(a1 + 5)) + 48);
  v9 = *((*(**(a1 + 5) + 200))(*(a1 + 5)) + 48);
  if ((v6 & 2) != 0)
  {
    v10 = sub_29A00911C(a2, "#extension GL_NV_shader_buffer_load : require\n", 46);
    sub_29A00911C(v10, "#extension GL_NV_gpu_shader5 : require\n", 39);
  }

  if ((v7 & 0x80) != 0)
  {
    sub_29A00911C(a2, "#extension GL_ARB_bindless_texture : require\n", 45);
  }

  if (pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderStage(a1))
  {
    if (v5 <= 459 && (v8 & 0x20) != 0)
    {
      sub_29A00911C(a2, "#extension GL_ARB_shader_draw_parameters : require\n", 51);
      sub_29A00911C(a2, "int HgiGetBaseVertex() {\n", 25);
      goto LABEL_14;
    }

    if ((v8 & 0x20) != 0)
    {
      sub_29A00911C(a2, "int HgiGetBaseVertex() {\n", 25);
      if (v5 > 459)
      {
        v12 = "  return gl_BaseVertex;\n";
        v13 = a2;
        v14 = 24;
LABEL_15:
        sub_29A00911C(v13, v12, v14);
        sub_29A00911C(a2, "}\n", 2);
        goto LABEL_16;
      }

LABEL_14:
      v12 = "  return gl_BaseVertexARB;\n";
      v13 = a2;
      v14 = 27;
      goto LABEL_15;
    }
  }

LABEL_16:
  result = pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderStage(a1);
  if ((result & 2) != 0 && (v9 & 0x10) != 0)
  {

    return sub_29A00911C(a2, "#extension GL_NV_fragment_shader_barycentric: require\n", 54);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteMacros(uint64_t a1, void *a2)
{
  sub_29A00911C(a2, "#define REF(space,type) inout type\n#define FORWARD_DECL(func_decl) func_decl;\n#define ATOMIC_LOAD(a) (a)\n#define ATOMIC_STORE(a, v) (a) = (v)\n#define ATOMIC_ADD(a, v) atomicAdd(a, v)\n#define ATOMIC_EXCHANGE(a, v) atomicExchange(a, v)\n#define ATOMIC_COMP_SWAP(a, expected, desired) atomicCompSwap(a, expected, desired)\n#define atomic_int int\n#define atomic_uint uint\n", 366);
  v3 = sub_29A00911C(a2, "\n", 1);
  v4 = sub_29A00911C(v3, "#define HGI_HAS_DOUBLE_TYPE 1\n", 30);

  return sub_29A00911C(v4, "\n", 1);
}

uint64_t sub_29AB94C30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) + 1;
    if (v11 > 0x555555555555555)
    {
      sub_29A00C9A4();
    }

    v12 = a2 - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 4);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v14;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
    v25 = a1;
    if (v15)
    {
      v17 = sub_29A08E058(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = v17;
    v22 = &v17[48 * v16];
    v23 = v22;
    v24 = &v17[48 * v15];
    sub_29AB96EE8(&v21, a3);
    v4 = sub_29AB97074(a1, &v21, v4);
    sub_29A0D407C(&v21);
  }

  else if (a2 == v6)
  {
    v18 = *a3;
    *(v6 + 16) = *(a3 + 16);
    *v6 = v18;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v19 = *(a3 + 24);
    *(v6 + 40) = *(a3 + 40);
    *(v6 + 24) = v19;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 24) = 0;
    a1[1] = v6 + 48;
  }

  else
  {
    sub_29AB96E58(a1, a2, v6, a2 + 48);
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v8 = *a3;
    *(v4 + 16) = *(a3 + 16);
    *v4 = v8;
    *(a3 + 23) = 0;
    *a3 = 0;
    if (*(v4 + 47) < 0)
    {
      operator delete(*(v4 + 24));
    }

    v9 = *(a3 + 24);
    *(v4 + 40) = *(a3 + 40);
    *(v4 + 24) = v9;
    *(a3 + 47) = 0;
    *(a3 + 24) = 0;
  }

  return v4;
}

void sub_29AB94DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0D407C(va);
  _Unwind_Resume(a1);
}

const void **sub_29AB94DF4(const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      sub_29A00C9A4();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v23[4] = result;
    if (v14)
    {
      v15 = sub_29A00C9BC(result, v14);
      v14 = v16;
      v8 = *v3;
      v9 = v3[1] - *v3;
    }

    else
    {
      v15 = 0;
    }

    v17 = &v15[8 * v10];
    v18 = &v15[8 * v14];
    v19 = *a2;
    *a2 = 0;
    v20 = &v17[-8 * (v9 >> 3)];
    *v17 = v19;
    v7 = v17 + 8;
    memcpy(v20, v8, v9);
    v21 = *v3;
    *v3 = v20;
    v3[1] = v7;
    v22 = v3[2];
    v3[2] = v18;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = sub_29AB9736C(v23);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void *sub_29AB94EF4(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v14 = operator new(0xE8uLL);
  v15 = *a3;
  v16 = *a5;
  if (*(a6 + 23) < 0)
  {
    sub_29A008D14(__p, *a6, *(a6 + 8));
  }

  else
  {
    *__p = *a6;
    v20 = *(a6 + 16);
  }

  pxrInternal__aapl__pxrReserved__::HgiGLBufferShaderSection::HgiGLBufferShaderSection(v14, a2, v15, a4, v16, __p, a7);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v14;
  sub_29AB94DF4((a1 + 48), __p);
  v17 = __p[0];
  __p[0] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return v14;
}

void *sub_29AB95040(uint64_t a1, char *a2, uint64_t a3, unsigned int *a4)
{
  v8 = operator new(0xD0uLL);
  sub_29A008E78(__p, a2);
  pxrInternal__aapl__pxrReserved__::HgiGLBlockShaderSection::HgiGLBlockShaderSection(v8, __p, a3, *a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v8;
  sub_29AB94DF4((a1 + 48), __p);
  v9 = __p[0];
  __p[0] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return v8;
}

void sub_29AB95104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    sub_29B2C2CDC();
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AB9514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = operator new(0xE0uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLKeywordShaderSection::HgiGLKeywordShaderSection(v8, a2, a3, a4);
  v11 = v8;
  sub_29AB94DF4((a1 + 48), &v11);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return v8;
}

void sub_29AB951F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B2C2CDC();
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29AB9521C(uint64_t a1, __int128 *a2, __int128 *a3, int *a4, int *a5, int *a6, __int128 **a7, __int128 *a8, __int128 *a9, uint64_t a10)
{
  v17 = operator new(0xD8uLL);
  v18 = *a4;
  v19 = *a5;
  v20 = *a6;
  __p = 0uLL;
  v25 = 0;
  pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::HgiGLMemberShaderSection(v17, a2, a3, v18, v19, v20, a7, a8, a9, a10, &__p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  *&__p = v17;
  sub_29AB94DF4((a1 + 48), &__p);
  v21 = __p;
  *&__p = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  return v17;
}

void sub_29AB9531C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    sub_29B2C2CDC();
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29AB95358(uint64_t a1, __int128 *a2, __int128 *a3, int *a4, int *a5, int *a6, __int128 **a7, __int128 *a8, __int128 *a9, uint64_t a10, __int128 *a11)
{
  v19 = operator new(0xD8uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLMemberShaderSection::HgiGLMemberShaderSection(v19, a2, a3, *a4, *a5, *a6, a7, a8, a9, a10, a11);
  v22 = v19;
  sub_29AB94DF4((a1 + 48), &v22);
  v20 = v22;
  v22 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  return v19;
}

void sub_29AB95444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    sub_29B2C2CDC();
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AB95470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = operator new(0xE0uLL);
  pxrInternal__aapl__pxrReserved__::HgiGLInterstageBlockShaderSection::HgiGLInterstageBlockShaderSection(v12, a2, a3, a4, a5, a6);
  v16 = v12;
  v17 = 0;
  sub_29AB94DF4((a1 + 48), &v16);
  v13 = v16;
  v16 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v14 = v17;
    v17 = 0;
    if (v14)
    {
      sub_29AB97670(&v17, v14);
    }
  }

  return v12;
}

void sub_29AB95540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, pxrInternal__aapl__pxrReserved__::HgiGLShaderSection *a10)
{
  if (a9)
  {
    sub_29B2C2D10(a9, &a10);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_Execute(pxrInternal__aapl__pxrReserved__::HgiShaderGenerator *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteVersion(a1, a2);
  v4 = pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteExtensions(a1, a2);
  pxrInternal__aapl__pxrReserved__::HgiGLShaderGenerator::_WriteMacros(v4, a2);
  v5 = sub_29A00911C(a2, "\nstruct hgi_ivec3 { int    x, y, z; };\nstruct hgi_vec3  { float  x, y, z; };\nstruct hgi_dvec3 { double x, y, z; };\nstruct hgi_mat3  { float  m00, m01, m02,\n                          m10, m11, m12,\n                          m20, m21, m22; };\nstruct hgi_dmat3 { double m00, m01, m02,\n                          m10, m11, m12,\n                          m20, m21, m22; };\n", 367);
  sub_29A00911C(v5, "\n", 1);
  ShaderCodeDeclarations = pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderCodeDeclarations(a1);
  v7 = strlen(ShaderCodeDeclarations);
  v8 = sub_29A00911C(a2, ShaderCodeDeclarations, v7);
  sub_29A00911C(v8, "\n", 1);
  v9 = *(a1 + 9);
  v10 = *(a1 + 10);
  while (v9 != v10)
  {
    v11 = *(v9 + 23);
    if (v11 >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = *v9;
    }

    if (v11 >= 0)
    {
      v13 = *(v9 + 23);
    }

    else
    {
      v13 = *(v9 + 8);
    }

    sub_29A00911C(a2, v12, v13);
    v9 += 24;
  }

  sub_29A00911C(a2, "\n// //////// Global Includes ////////\n", 38);
  v14 = *(a1 + 6);
  v15 = *(a1 + 7);
  while (v14 != v15)
  {
    v16 = *v14++;
    (*(*v16 + 64))(v16, a2);
  }

  sub_29A00911C(a2, "\n// //////// Global Macros ////////\n", 36);
  v17 = *(a1 + 6);
  v18 = *(a1 + 7);
  while (v17 != v18)
  {
    v19 = *v17++;
    (*(*v19 + 72))(v19, a2);
  }

  sub_29A00911C(a2, "\n// //////// Global Structs ////////\n", 37);
  v20 = *(a1 + 6);
  v21 = *(a1 + 7);
  while (v20 != v21)
  {
    v22 = *v20++;
    (*(*v22 + 80))(v22, a2);
  }

  sub_29A00911C(a2, "\n// //////// Global Member Declarations ////////\n", 49);
  v23 = *(a1 + 6);
  v24 = *(a1 + 7);
  while (v23 != v24)
  {
    v25 = *v23++;
    (*(*v25 + 88))(v25, a2);
  }

  sub_29A00911C(a2, "\n// //////// Global Function Definitions ////////\n", 50);
  v26 = *(a1 + 6);
  v27 = *(a1 + 7);
  while (v26 != v27)
  {
    v28 = *v26++;
    (*(*v28 + 96))(v28, a2);
  }

  sub_29A00911C(a2, "\n", 1);
  ShaderCode = pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderCode(a1);
  v30 = strlen(ShaderCode);

  return sub_29A00911C(a2, ShaderCode, v30);
}

void sub_29AB95810(void **a1)
{
  v2 = a1 + 9;
  sub_29A012C90(&v2);
  v2 = a1 + 6;
  sub_29AB95E54(&v2);
  pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::~HgiShaderGenerator(a1);
}

void sub_29AB95860(void **a1)
{
  v3 = a1 + 9;
  sub_29A012C90(&v3);
  v3 = a1 + 6;
  sub_29AB95E54(&v3);
  pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::~HgiShaderGenerator(a1);
  operator delete(v2);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AB958B4(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29AB95928(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AB95944(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29AB959B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AB959D4(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29AB95A48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AB95A64(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29AB95AD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AB95AF4(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29AB95B68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AB95B84(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29AB95BF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AB95C14(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29AB95C88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AB95CA4(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29AB95D18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AB95D34(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29AB95DA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29AB95DC4(pxrInternal__aapl__pxrReserved__::TfToken *__dst, void *a2, char *__s)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(__dst);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    *(__dst + 2) = EmptyString[2];
    *__dst = v6;
  }

  sub_29A008E78(__dst + 3, __s);
  return __dst;
}

void sub_29AB95E38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB95E54(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AB95EA8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29AB95EA8(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void *sub_29AB95F14(uint64_t a1, char *a2)
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

  v18 = a1;
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
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB96020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB96034(uint64_t a1, char *a2)
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

  v18 = a1;
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
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB96140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB96154(uint64_t a1, char *a2)
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

  v18 = a1;
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
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB96260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB96274(uint64_t a1, char *a2)
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

  v18 = a1;
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
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB96380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB96394(uint64_t a1, char *a2)
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

  v18 = a1;
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
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB964A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB964B4(uint64_t a1, char *a2)
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

  v18 = a1;
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
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB965C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB965D4(uint64_t a1, char *a2)
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

  v18 = a1;
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
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB966E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB966F4(uint64_t a1, char *a2)
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

  v18 = a1;
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
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29AB96800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29AB96814(uint64_t a1, char *a2)
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

  v18 = a1;
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
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}