void sub_29AF1CA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29AF1CA78(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
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

void sub_29AF1CB20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF1CB3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF1CB64(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF1CB94(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E340))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF1CBD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF1CC00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF1CC30(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E3B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF1CC90(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209E3E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF1CCFC(pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin *this)
{
  *this = &unk_2A209E430;
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::~UsdImaging_DrawModeStandin(this);
}

void sub_29AF1CD58(pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin *this)
{
  *this = &unk_2A209E430;
  v2 = *(this + 5);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::~UsdImaging_DrawModeStandin(this);

  operator delete(v3);
}

pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *sub_29AF1CDB8@<X0>(atomic_uint **a1@<X8>)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!result)
  {
    result = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v3 = *(result + 11);
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

void sub_29AF1CE1C(void *a1, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this, uint64_t a3, _BYTE *a4)
{
  v51 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1750490, memory_order_acquire) & 1) == 0)
  {
    v12 = __cxa_guard_acquire(&qword_2A1750490);
    if (v12)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v12);
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v14)
      {
        v14 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v14 + 32), &v43);
      v16 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v15);
      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v17)
      {
        v17 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v16, (v17 + 40), v45);
      v19 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v18);
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v20)
      {
        v20 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v19, (v20 + 48), v46);
      v22 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v21);
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v23)
      {
        v23 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v22, (v23 + 56), v47);
      v25 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v24);
      v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v26)
      {
        v26 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v25, (v26 + 64), v48);
      v28 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v27);
      v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v29)
      {
        v29 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v28, (v29 + 72), v49);
      v31 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v30);
      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      if (!v32)
      {
        v32 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v31, (v32 + 80), v50);
      v42[0] = &v43;
      v42[1] = 7;
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A17502C8, v42);
      for (i = 42; i != -7; i -= 7)
      {
        sub_29ABC3488(&(&v43)[i]);
      }

      __cxa_atexit(sub_29ABE62AC, &unk_2A17502C8, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1750490);
    }
  }

  if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(this, &unk_2A17502C8))
  {
    if ((atomic_load_explicit(&qword_2A1750510, memory_order_acquire) & 1) == 0)
    {
      v34 = __cxa_guard_acquire(&qword_2A1750510);
      if (v34)
      {
        v35 = pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetDefaultLocator(v34);
        v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
        if (!v36)
        {
          v36 = sub_29AF18358(&pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v35, (v36 + 24), dword_2A17504D8);
        __cxa_atexit(sub_29ABC33B4, dword_2A17504D8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A1750510);
      }
    }

    if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects(this, dword_2A17504D8))
    {
      sub_29ABD2F88(v42, this);
      if ((atomic_load_explicit(&qword_2A1750550, memory_order_acquire) & 1) == 0)
      {
        v37 = __cxa_guard_acquire(&qword_2A1750550);
        if (v37)
        {
          v38 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v37);
          v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v39)
          {
            v39 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v38, (v39 + 152), &v43);
          v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v40)
          {
            v40 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&v43, v40, dword_2A1750518);
          sub_29ABC3488(&v43);
          __cxa_atexit(sub_29ABC33B4, dword_2A1750518, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1750550);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(v42, dword_2A1750518);
      v9 = atomic_load(&qword_2A1750558);
      if (!v9)
      {
        v9 = sub_29AF1E2C0();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild((a1 + 1), v9, v41);
      sub_29ABD2F24(&v43, v41, v42);
      sub_29AC3DA10(a3, &v43);
      sub_29ABD3178();
    }

    v11 = atomic_load(&qword_2A1750558);
    if (!v11)
    {
      v11 = sub_29AF1E2C0();
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild((a1 + 1), v11, v42);
    sub_29ABD2F24(&v43, v42, this);
    sub_29AC3DA10(a3, &v43);
    sub_29ABD3178();
  }

  *a4 = 1;
  pxrInternal__aapl__pxrReserved__::UsdImaging_DrawModeStandin::GetDescendantPrimPaths(a1, v41);
  v8 = v41[0];
  if (v41[0] != v41[1])
  {
    if ((atomic_load_explicit(&qword_2A17504D0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_2A17504D0))
      {
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(&unk_2A1750498);
        __cxa_atexit(sub_29ABC33B4, &unk_2A1750498, &dword_299FE7000);
        __cxa_guard_release(&qword_2A17504D0);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(v42, &unk_2A1750498);
    sub_29ABD2F24(&v43, v8, v42);
    sub_29AC3DA10(a3, &v43);
    sub_29ABD3178();
  }

  v43 = v41;
  sub_29A1E234C(&v43);
  v10 = a1[4];
  if ((atomic_load_explicit(&qword_2A17509D0, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CBBC4();
  }

  v43 = qword_2A17509D8;
  v44 = unk_2A17509E0;
  if (unk_2A17509E0)
  {
    atomic_fetch_add_explicit((unk_2A17509E0 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29ABEC600(v10, &v43);
  if (v44)
  {
    sub_29A014BEC(v44);
  }
}

void sub_29AF1D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_29ABC3488(&a70);
  __cxa_guard_abort(&qword_2A1750550);
  sub_29ABD3178();
}

void sub_29AF1D6E4(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X8>)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&qword_2A1750558);
  if (!v4)
  {
    v4 = sub_29AF1E2C0();
  }

  if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v15, EmptyString);
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  sub_29A65B758(a2, &v15, v16, 1uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
  sub_29A1DE3A4(&v15);
  v6 = *(sub_29AF1E284(*(a1 + 32)) + 16);
  if (v6)
  {
    v7 = *(a2 + 1);
    do
    {
      if (v7 >= *(a2 + 2))
      {
        v7 = sub_29AF24000(a2, v6 + 2);
      }

      else
      {
        sub_29AF23FA8(a2, v6 + 2);
        v7 += 8;
      }

      *(a2 + 1) = v7;
      v6 = *v6;
    }

    while (v6);
  }

  v8 = *(a1 + 32);
  v16[0] = 0;
  v16[1] = 0;
  v15 = 0;
  sub_29AF1EC2C(v8, &v13);
  v9 = v13;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  for (i = v9 + 12; ; sub_29A1D8028(&v15, i + 2))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v11 = v15;
  for (j = v16[0]; v11 != j; v11 = (v11 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(*a2, v11, &v13);
    sub_29A377BD0(a2, &v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13 + 1);
    sub_29A1DE3A4(&v13);
  }

  v13 = &v15;
  sub_29A124AB0(&v13);
}

void sub_29AF1D898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  a9 = &a11;
  sub_29A124AB0(&a9);
  sub_29A1E234C(&a9);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *sub_29AF1D910@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, atomic_uint **a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1750958, memory_order_acquire) & 1) == 0)
  {
    v10 = this;
    v7 = __cxa_guard_acquire(&qword_2A1750958);
    this = v10;
    if (v7)
    {
      v8 = atomic_load(&qword_2A1750558);
      if (!v8)
      {
        v8 = sub_29AF1E2C0();
      }

      if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&qword_2A1750950, EmptyString);
      __cxa_atexit(sub_29A1DCEA8, &qword_2A1750950, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1750958);
      this = v10;
    }
  }

  if (*this == qword_2A1750950)
  {
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!result)
    {
      result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v4 = *(result + 7);
  }

  else
  {
    HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(this, &qword_2A1750950);
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (HasPrefix)
    {
      if (!result)
      {
        result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v4 = *(result + 6);
    }

    else
    {
      if (!result)
      {
        result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
      }

      v4 = *(result + 19);
    }
  }

  *a2 = v4;
  if ((v4 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v6;
    }
  }

  return result;
}

void sub_29AF1DAA8(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1750968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750968))
  {
    v21 = atomic_load(&qword_2A1750558);
    if (!v21)
    {
      v21 = sub_29AF1E2C0();
    }

    if ((*v21 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v21 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&qword_2A1750960, EmptyString);
    __cxa_atexit(sub_29A1DCEA8, &qword_2A1750960, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1750968);
  }

  if (*this == qword_2A1750960)
  {
    v6 = operator new(0x30uLL);
    v7 = v6;
    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    *v6 = &unk_2A209DDB0;
    v6[1] = v9;
    v6[2] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *v6 = &unk_2A209E5F8;
    sub_29A1E21F4(v6 + 6, (a2 + 8));
    sub_29A1E2240(v7 + 7, (a2 + 12));
    v10 = *(a2 + 40);
    v7[4] = *(a2 + 32);
    v7[5] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = operator new(0x20uLL);
    *v11 = &unk_2A209E7C8;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = v7;
    *a3 = v7;
    a3[1] = v11;
  }

  else
  {
    HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(this, &qword_2A1750960);
    v13 = *(a2 + 32);
    if (HasPrefix)
    {
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(this);
      sub_29AF1EC2C(v13, &v23);
      v15 = sub_29A160470((v23 + 80), NameToken);
      if (v15)
      {
        v16 = v15[4];
        *a3 = v15[3];
        a3[1] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        *a3 = 0;
        a3[1] = 0;
      }

      if (v24)
      {
        sub_29A014BEC(v24);
      }
    }

    else
    {
      v17 = sub_29AF1E284(v13);
      v18 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(this);
      if (sub_29A16039C(v17, v18))
      {
        v19 = sub_29A16039C(v17, v18);
        if (!v19)
        {
          sub_29A0F26E4("unordered_map::at: key not found");
        }

        v20 = v19[4];
        *a3 = v19[3];
        a3[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        *a3 = 0;
        a3[1] = 0;
      }
    }
  }
}

void sub_29AF1DD98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209E490;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF1DDDC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 44));
  sub_29A1DE3A4((a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {

    sub_29A014BEC(v3);
  }
}

uint64_t sub_29AF1DE44(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t sub_29AF1DE74()
{
  v23 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1750768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750768))
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
    if (!v11)
    {
      v11 = sub_29ABEE484(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::HdDataSourceLocator(v20, (v11 + 8));
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
    if (!v12)
    {
      v12 = sub_29AC0FC38(&pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchemaTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v20, v12, dword_2A1750730);
    sub_29ABC3488(v20);
    __cxa_atexit(sub_29ABC33B4, dword_2A1750730, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1750768);
  }

  v0 = atomic_load(&qword_2A1750770);
  if (!v0)
  {
    v0 = sub_29AF1E42C();
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(dword_2A1750730, (v0 + 8), v18);
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v1)
  {
    v1 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v18, v1, v19);
  v2 = atomic_load(&qword_2A1750778);
  if (!v2)
  {
    v2 = sub_29AF1E644();
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v19, v2, v20);
  v3 = atomic_load(&qword_2A1750770);
  if (!v3)
  {
    v3 = sub_29AF1E42C();
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(dword_2A1750730, v3, v16);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v4)
  {
    v4 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v16, v4, v17);
  v5 = atomic_load(&qword_2A1750780);
  if (!v5)
  {
    v5 = sub_29AF1EA14();
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v17, v5, v21);
  v6 = atomic_load(&qword_2A1750770);
  if (!v6)
  {
    v6 = sub_29AF1E42C();
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(dword_2A1750730, v6, v14);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  if (!v7)
  {
    v7 = sub_29AC0FF34(&pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchemaTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v14, v7, v15);
  v8 = atomic_load(&qword_2A1750780);
  if (!v8)
  {
    v8 = sub_29AF1EA14();
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v15, (v8 + 8), v22);
  v13[0] = v20;
  v13[1] = 3;
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1750560, v13);
  for (i = 28; i != -14; i -= 14)
  {
    sub_29ABC3488(&v20[i]);
  }

  sub_29ABC3488(v15);
  sub_29ABC3488(v14);
  sub_29ABC3488(v17);
  sub_29ABC3488(v16);
  sub_29ABC3488(v19);
  return sub_29ABC3488(v18);
}

void sub_29AF1E174(_Unwind_Exception *a1)
{
  sub_29ABC3488(v1 - 224);
  __cxa_guard_abort(&qword_2A1750768);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF1E284(uint64_t *a1)
{
  sub_29AF1EC2C(a1, &v3);
  v1 = v3;
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return v1 + 136;
}

unint64_t sub_29AF1E2C0()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "cardsMesh", 0);
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
  atomic_compare_exchange_strong(&qword_2A1750558, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A1750558);
  }

  return v0;
}

void sub_29AF1E3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

unint64_t sub_29AF1E42C()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "cardSurface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "cardTexture", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "cardUvCoords", 0);
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A1750770, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A1750770);
  }

  return v0;
}

void sub_29AF1E5A8(_Unwind_Exception *a1)
{
  v4 = 16;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

unint64_t sub_29AF1E644()
{
  v31 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "fallback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "file", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "st", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "wrapS", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "wrapT", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "rgb", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "a", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "clamp", 0);
  v1 = v0 + 8;
  v2 = *v0;
  v23 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v3;
    }
  }

  v4 = v0[1];
  v24 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v5;
    }
  }

  v6 = v0[2];
  v25 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v7;
    }
  }

  v8 = v0[3];
  v26 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v9;
    }
  }

  v10 = v0[4];
  v27 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v11;
    }
  }

  v12 = v0[5];
  v28 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v13;
    }
  }

  v14 = v0[6];
  v29 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v15;
    }
  }

  v16 = v0[7];
  v30 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v17;
    }
  }

  *v1 = 0;
  v0[9] = 0;
  v0[10] = 0;
  sub_29A12EF7C(v1, &v23, &v31, 8uLL);
  for (i = 56; i != -8; i -= 8)
  {
    v19 = *(&v23 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v20 = 0;
  atomic_compare_exchange_strong(&qword_2A1750778, &v20, v0);
  if (v20)
  {
    v21 = sub_29AE02FF4(v0);
    operator delete(v21);
    return atomic_load(&qword_2A1750778);
  }

  return v0;
}

void sub_29AF1E8D8(_Unwind_Exception *a1)
{
  v4 = 56;
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
      v6 = v1[7];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[6];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[5];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[4];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[3];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[2];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[1];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

unint64_t sub_29AF1EA14()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "diffuseColor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "opacity", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "opacityThreshold", 0);
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A1750780, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A1750780);
  }

  return v0;
}

void sub_29AF1EB90(_Unwind_Exception *a1)
{
  v4 = 16;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29AF1EC2C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v182 = *MEMORY[0x29EDCA608];
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v151 = a1;
  v6 = *a1;
  v5 = a1[1];
  *a2 = v6;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__sp_mut::unlock(sp_mut);
    if (!v6)
    {
      sub_29A014BEC(v5);
      goto LABEL_5;
    }
  }

  else
  {
    std::__sp_mut::unlock(sp_mut);
    if (!v6)
    {
LABEL_5:
      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetFromParent(v151 + 3, &v154);
      v156 = 0;
      v159 = 0u;
      v158 = 0u;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardGeometry(&v154, &v172);
      if (*&v172.f64[0])
      {
        (*(**&v172.f64[0] + 32))(&__str, 0.0);
        if ((v156 & 7) != 0)
        {
          atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v156 = __str.__r_.__value_.__r.__words[0];
      }

      if (*&v172.f64[1])
      {
        sub_29A014BEC(*&v172.f64[1]);
      }

      v149 = a2;
      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureXPos(&v154, &v172);
      v7 = v172;
      v172 = 0uLL;
      v8 = *&v159.f64[1];
      v159 = v7;
      if (v8)
      {
        sub_29A014BEC(v8);
        if (*&v172.f64[1])
        {
          sub_29A014BEC(*&v172.f64[1]);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureYPos(&v154, &v172);
      v9 = v172;
      v172 = 0uLL;
      v10 = *&v160.f64[1];
      v160 = v9;
      if (v10)
      {
        sub_29A014BEC(v10);
        if (*&v172.f64[1])
        {
          sub_29A014BEC(*&v172.f64[1]);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureZPos(&v154, &v172);
      v11 = v172;
      v172 = 0uLL;
      v12 = *&v161.f64[1];
      v161 = v11;
      if (v12)
      {
        sub_29A014BEC(v12);
        if (*&v172.f64[1])
        {
          sub_29A014BEC(*&v172.f64[1]);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureXNeg(&v154, &v172);
      v13 = v172;
      v172 = 0uLL;
      v14 = *&v162.f64[1];
      v162 = v13;
      if (v14)
      {
        sub_29A014BEC(v14);
        if (*&v172.f64[1])
        {
          sub_29A014BEC(*&v172.f64[1]);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureYNeg(&v154, &v172);
      v15 = v172;
      v172 = 0uLL;
      v16 = *&v163.f64[1];
      v163 = v15;
      if (v16)
      {
        sub_29A014BEC(v16);
        if (*&v172.f64[1])
        {
          sub_29A014BEC(*&v172.f64[1]);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdImagingGeomModelSchema::GetCardTextureZNeg(&v154, &v172);
      v17 = v172;
      v172 = 0uLL;
      v18 = *&v164.f64[1];
      v164 = v17;
      if (v18)
      {
        sub_29A014BEC(v18);
        if (*&v172.f64[1])
        {
          sub_29A014BEC(*&v172.f64[1]);
        }
      }

      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v19)
      {
        v19 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      if ((*(v19 + 47) ^ v156) < 8)
      {
        v20 = 0;
        while (1)
        {
          v21 = 0;
          v22 = 1;
          do
          {
            v23 = v22;
            v24 = v21 + v20;
            v25 = v159.f64[2 * v21 + 2 * v20];
            if (v25 == 0.0)
            {
              goto LABEL_96;
            }

            (*(**&v25 + 32))(&__str, 0.0);
            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            if (!size)
            {
              v27 = 0;
              goto LABEL_91;
            }

            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_29A008D14(&__dst, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
            }

            else
            {
              __dst = __src;
            }

            v28 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v28 = __dst.__r_.__value_.__l.__size_;
            }

            if (!v28)
            {
              std::string::operator=(&__dst, &__str);
            }

            pxrInternal__aapl__pxrReserved__::HioImage::OpenForReading(&__dst, 0, 0, 2, 0, &v169);
            v29 = v169.__vftable;
            if (v169.__vftable)
            {
              v181 = 0;
              if (!atomic_load(&qword_2A1750948))
              {
                sub_29AF23DE8();
              }

              if (((*(v29->~type_info + 12))(v29) & 1) == 0)
              {
                v31 = v169.__vftable;
                v32 = atomic_load(&qword_2A1750948);
                if (!v32)
                {
                  v32 = sub_29AF23DE8();
                }

                if ((*(v31->~type_info + 12))(v31, v32 + 8, &v180))
                {
                  *&v172.f64[0] = "usdImaging/drawModeStandin.cpp";
                  *&v172.f64[1] = "GetWorldToScreenFromImageMetadata";
                  *&v173.f64[0] = 1209;
                  *&v173.f64[1] = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CardsDrawMode::GetWorldToScreenFromImageMetadata(const HdAssetPathDataSourceHandle &, GfMatrix4d *const)";
                  LOBYTE(v174.f64[0]) = 0;
                  p_dst = &__dst;
                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_dst = __dst.__r_.__value_.__r.__words[0];
                  }

                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v172, "The texture asset '%s' may have been authored by an earlier version of the VFX toolset. To silence this warning, please regenerate the asset with the current toolset.", v33, p_dst);
                  goto LABEL_56;
                }

                *&v172.f64[0] = "usdImaging/drawModeStandin.cpp";
                *&v172.f64[1] = "GetWorldToScreenFromImageMetadata";
                *&v173.f64[0] = 1213;
                *&v173.f64[1] = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CardsDrawMode::GetWorldToScreenFromImageMetadata(const HdAssetPathDataSourceHandle &, GfMatrix4d *const)";
                LOBYTE(v174.f64[0]) = 0;
                v51 = &__dst;
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v51 = __dst.__r_.__value_.__r.__words[0];
                }

                pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v172, "The texture asset '%s' lacks a worldtoscreen matrix in metadata. Cards draw mode may not appear as expected.", v33, v51, v149);
LABEL_85:
                v27 = 0;
LABEL_86:
                sub_29A186B14(&v180);
                goto LABEL_87;
              }

LABEL_56:
              v36 = &v157[128 * v24];
              if (sub_29AF23D5C(&v180))
              {
                if ((v181 & 4) != 0)
                {
                  v37 = (*((v181 & 0xFFFFFFFFFFFFFFF8) + 168))(&v180);
                }

                else
                {
                  v37 = v180;
                }

                v38 = *v37;
                v39 = *(v37 + 8) - *v37;
                if (v39 != 64)
                {
                  *&v172.f64[0] = "usdImaging/drawModeStandin.cpp";
                  *&v172.f64[1] = "_ConvertToMatrix";
                  *&v173.f64[0] = 1145;
                  *&v173.f64[1] = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CardsDrawMode::_ConvertToMatrix(const Vec &, GfMatrix4d *) [Vec = std::vector<float>]";
                  LOBYTE(v174.f64[0]) = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v172, "worldtoscreen metadata expected 16 values, got %zu", v35, v39 >> 2);
                  goto LABEL_85;
                }

                *v36 = vcvtq_f64_f32(*v38);
                v36[1] = vcvtq_f64_f32(v38[1]);
                v36[2] = vcvtq_f64_f32(v38[2]);
                v36[3] = vcvtq_f64_f32(v38[3]);
                v36[4] = vcvtq_f64_f32(v38[4]);
                v36[5] = vcvtq_f64_f32(v38[5]);
                v36[6] = vcvtq_f64_f32(v38[6]);
                v36[7] = vcvtq_f64_f32(v38[7]);
              }

              else
              {
                if (sub_29A547994(&v180))
                {
                  if ((v181 & 4) != 0)
                  {
                    v41 = (*((v181 & 0xFFFFFFFFFFFFFFF8) + 168))(&v180);
                  }

                  else
                  {
                    v41 = v180;
                  }

                  v42 = *v41;
                  v43 = *(v41 + 8) - *v41;
                  if (v43 != 128)
                  {
                    *&v172.f64[0] = "usdImaging/drawModeStandin.cpp";
                    *&v172.f64[1] = "_ConvertToMatrix";
                    *&v173.f64[0] = 1145;
                    *&v173.f64[1] = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CardsDrawMode::_ConvertToMatrix(const Vec &, GfMatrix4d *) [Vec = std::vector<double>]";
                    LOBYTE(v174.f64[0]) = 0;
                    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v172, "worldtoscreen metadata expected 16 values, got %zu", v40, v43 >> 3);
                    goto LABEL_85;
                  }

                  v44 = v42[1];
                  v45 = v42[2];
                  v46 = v42[3];
                  v47 = v42[4];
                  v48 = v42[5];
                  v49 = v42[6];
                  v50 = v42[7];
                  *v36 = *v42;
                  v36[1] = v44;
                  v36[2] = v45;
                  v36[3] = v46;
                  v36[4] = v47;
                  v36[5] = v48;
                  v27 = 1;
                  v36[6] = v49;
                  v36[7] = v50;
                  goto LABEL_86;
                }

                if (sub_29A76D024(&v180))
                {
                  if ((v181 & 4) != 0)
                  {
                    v52 = (*((v181 & 0xFFFFFFFFFFFFFFF8) + 168))(&v180);
                  }

                  else
                  {
                    v52 = v180;
                  }

                  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(&v172, v52);
                  v53 = v177;
                  v36[4] = v176;
                  v36[5] = v53;
                  v54 = v179;
                  v36[6] = v178;
                  v36[7] = v54;
                  v55 = v173;
                  *v36 = v172;
                  v36[1] = v55;
                  v56 = v175;
                  v36[2] = v174;
                  v36[3] = v56;
                }

                else
                {
                  if (!sub_29A3FC38C(&v180))
                  {
                    *&v172.f64[0] = "usdImaging/drawModeStandin.cpp";
                    *&v172.f64[1] = "GetWorldToScreenFromImageMetadata";
                    *&v173.f64[0] = 1232;
                    *&v173.f64[1] = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_CardsDrawMode::GetWorldToScreenFromImageMetadata(const HdAssetPathDataSourceHandle &, GfMatrix4d *const)";
                    LOBYTE(v174.f64[0]) = 0;
                    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v180, &__p);
                    p_p = &__p;
                    if (v171 < 0)
                    {
                      p_p = __p.__vftable;
                    }

                    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v172, "worldtoscreen metadata holding unexpected type '%s'", v64, p_p);
                    if (v171 < 0)
                    {
                      operator delete(__p.__vftable);
                    }

                    goto LABEL_85;
                  }

                  if ((v181 & 4) != 0)
                  {
                    v57 = (*((v181 & 0xFFFFFFFFFFFFFFF8) + 168))(&v180);
                  }

                  else
                  {
                    v57 = v180;
                  }

                  v58 = *v57;
                  v59 = v57[1];
                  v60 = v57[3];
                  v36[2] = v57[2];
                  v36[3] = v60;
                  *v36 = v58;
                  v36[1] = v59;
                  v61 = v57[4];
                  v62 = v57[5];
                  v63 = v57[7];
                  v36[6] = v57[6];
                  v36[7] = v63;
                  v36[4] = v61;
                  v36[5] = v62;
                }
              }

              v27 = 1;
              goto LABEL_86;
            }

            v27 = 0;
LABEL_87:
            if (v169.__type_name)
            {
              sub_29A014BEC(v169.__type_name);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

LABEL_91:
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
            }

            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              if (!v27)
              {
                goto LABEL_96;
              }

LABEL_95:
              v158 = vorrq_s8(v158, vdupq_n_s64(1 << v24));
              goto LABEL_96;
            }

            operator delete(__str.__r_.__value_.__l.__data_);
            if (v27)
            {
              goto LABEL_95;
            }

LABEL_96:
            v22 = 0;
            v21 = 3;
          }

          while ((v23 & 1) != 0);
          if (++v20 == 3)
          {
            goto LABEL_131;
          }
        }
      }

      v66 = 0;
LABEL_107:
      v67 = 0;
      v68 = 1;
      while (1)
      {
        v69 = v68;
        v70 = 3 * v67 + v66;
        v71 = (&v159 + v70);
        v72 = *v71;
        v73 = v71[1];
        if (v73)
        {
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v72)
        {
          goto LABEL_122;
        }

        (*(*v72 + 32))(&v172, 0.0);
        if (SHIBYTE(v173.f64[0]) < 0)
        {
          sub_29A008D14(&__str, *&v172.f64[0], *&v172.f64[1]);
        }

        else
        {
          *&__str.__r_.__value_.__l.__data_ = v172;
          __str.__r_.__value_.__r.__words[2] = *&v173.f64[0];
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          v74 = __str.__r_.__value_.__l.__size_ == 0;
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        else
        {
          v74 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 0;
        }

        if (SHIBYTE(v174.f64[1]) < 0)
        {
          operator delete(*&v173.f64[1]);
        }

        if (SHIBYTE(v173.f64[0]) < 0)
        {
          break;
        }

        if (!v74)
        {
          goto LABEL_121;
        }

LABEL_122:
        if (v73)
        {
          sub_29A014BEC(v73);
        }

        v68 = 0;
        v67 = 1;
        if ((v69 & 1) == 0)
        {
          if (++v66 == 3)
          {
            if ((v158.i8[8] & 0x3F) == 0)
            {
              *&v172.f64[0] = &v158.i64[1];
              LODWORD(v172.f64[1]) = 0;
              sub_29A08CBBC(&v172, 6uLL);
            }

LABEL_131:
            v75 = operator new(0x18uLL);
            v76 = v154;
            v77 = v155;
            if (v155)
            {
              atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
              *v75 = &unk_2A209DF30;
              v75[1] = v76;
              v75[2] = v77;
              atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              *v75 = &unk_2A209DF30;
              v75[1] = v76;
              v75[2] = 0;
            }

            sub_29AF1A928(&v172, v75);
            if (v77)
            {
              sub_29A014BEC(v77);
            }

            v78 = v172;
            v172 = 0uLL;
            v79 = *&v165.f64[1];
            v165 = v78;
            if (v79)
            {
              sub_29A014BEC(v79);
              if (*&v172.f64[1])
              {
                sub_29A014BEC(*&v172.f64[1]);
              }
            }

            v80 = operator new(0xC8uLL);
            v81 = v80;
            v80[1] = 0;
            v80[2] = 0;
            *v80 = &unk_2A209E4E0;
            v82 = v156;
            v80[3] = v156;
            v150 = v80 + 3;
            if ((v82 & 7) != 0 && (atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              *v150 &= 0xFFFFFFFFFFFFFFF8;
            }

            *(v80 + 2) = 0u;
            v83 = v80 + 4;
            v80[8] = 0;
            *(v80 + 3) = 0u;
            v84 = sub_29A0EF2AC(&v158.u64[1], 0, 6uLL);
            sub_29A8E740C(v81 + 4, 4 * v84);
            v85 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            if (!v85)
            {
              v85 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            }

            v152 = v81;
            if ((*(v85 + 47) ^ v156) > 7)
            {
              v95 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v95)
              {
                v95 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              if ((*(v95 + 9) ^ v156) >= 8)
              {
                v96 = 0.5;
              }

              else
              {
                v96 = 1.0;
              }

              v97 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v97)
              {
                v97 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              v98 = 0;
              v99 = 0.00000011921;
              if ((*(v97 + 26) ^ v156) >= 8)
              {
                v99 = 0.0;
              }

              v153 = v99;
              __asm { FMOV            V9.2S, #1.0 }

              *(v172.f64 + 4) = _D9;
              *v172.f64 = v96;
              *(&v172.f64[1] + 1) = v96;
              v173.f64[0] = 0.0078125;
              *&v173.f64[1] = LODWORD(v96);
              LODWORD(v174.f64[0]) = 0;
              *(v174.f64 + 1) = v96;
              *&v174.f64[1] = 1065353216;
              do
              {
                v105 = v158.u64[1];
                if ((v158.i64[1] >> v98))
                {
                  v106 = (v172.f64 + 4);
                  v107 = 4;
                  do
                  {
                    LODWORD(__str.__r_.__value_.__r.__words[1]) = 0;
                    __str.__r_.__value_.__r.__words[0] = 0;
                    *(&__str.__r_.__value_.__l.__data_ + v98) = 1065353216;
                    v108 = (v153 * *&__str.__r_.__value_.__l.__data_) + v106[-1].f32[1];
                    v109 = vadd_f32(vmul_n_f32(*(__str.__r_.__value_.__r.__words + 4), v153), *v106);
                    if (v98 != 2)
                    {
                      v110 = COERCE_DOUBLE(vdup_lane_s32(v109, 0));
                      v108 = *&v109.i32[1];
                      if (v98 == 1)
                      {
                        *&v111.i32[1] = (v153 * *&__str.__r_.__value_.__l.__data_) + v106[-1].f32[1];
                        *v111.i32 = 1.0 - *v109.i32;
                        v109 = v111;
                      }

                      else
                      {
                        *&v110 = (v153 * *&__str.__r_.__value_.__l.__data_) + v106[-1].f32[1];
                        *&v109 = v110;
                      }
                    }

                    __dst.__r_.__value_.__l.__data_ = v109;
                    *&__dst.__r_.__value_.__r.__words[1] = v108;
                    sub_29AA261EC(v83, &__dst);
                    v106 = (v106 + 12);
                    --v107;
                  }

                  while (v107);
                  v105 = v158.u64[1];
                }

                if (((v105 >> v98) & 8) != 0)
                {
                  v112 = &v174.f64[1];
                  v113 = 4;
                  do
                  {
                    LODWORD(__str.__r_.__value_.__r.__words[1]) = 0;
                    __str.__r_.__value_.__r.__words[0] = 0;
                    *(&__str.__r_.__value_.__l.__data_ + v98) = 1065353216;
                    v114 = (v153 * *&__str.__r_.__value_.__l.__data_) + v112[-1].f32[1];
                    v115 = vadd_f32(vmul_n_f32(*(__str.__r_.__value_.__r.__words + 4), v153), *v112);
                    if (v98 != 2)
                    {
                      v116 = COERCE_DOUBLE(vdup_lane_s32(v115, 0));
                      v114 = v115.f32[1];
                      if (v98 == 1)
                      {
                        v117.f32[1] = (v153 * *&__str.__r_.__value_.__l.__data_) + v112[-1].f32[1];
                        v117.f32[0] = 1.0 - v115.f32[0];
                        v115 = v117;
                      }

                      else
                      {
                        *&v116 = (v153 * *&__str.__r_.__value_.__l.__data_) + v112[-1].f32[1];
                        *&v115 = v116;
                      }
                    }

                    __dst.__r_.__value_.__l.__data_ = vsub_f32(_D9, v115);
                    *&__dst.__r_.__value_.__r.__words[1] = 1.0 - v114;
                    sub_29AA261EC(v83, &__dst);
                    v112 = (v112 - 12);
                    --v113;
                  }

                  while (v113);
                }

                ++v98;
                v81 = v152;
              }

              while (v98 != 3);
            }

            else
            {
              for (i = 0; i != 3; ++i)
              {
                v87 = 0;
                v88 = 1;
                do
                {
                  v89 = v88;
                  v90 = v87 + i;
                  if ((v158.i64[1] >> v90))
                  {
                    v178 = 0u;
                    v179 = 0u;
                    v176 = 0u;
                    v177 = 0u;
                    v174 = 0u;
                    v175 = 0u;
                    v172 = 0u;
                    v173 = 0u;
                    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v157[128 * v90], 0, 0.0, &v172);
                    v91 = &unk_29B718E1C;
                    v92 = 4;
                    do
                    {
                      LODWORD(__str.__r_.__value_.__l.__data_) = sub_29A7925DC(&v172, v91).u32[0];
                      *(__str.__r_.__value_.__r.__words + 4) = __PAIR64__(v94, v93);
                      sub_29AA261EC(v81 + 4, &__str);
                      v91 += 3;
                      --v92;
                    }

                    while (v92);
                  }

                  v88 = 0;
                  v87 = 3;
                }

                while ((v89 & 1) != 0);
              }
            }

            v118 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            if (!v118)
            {
              v118 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            }

            if ((*(v118 + 47) ^ *v150) < 8)
            {
              v119 = v81[4];
              if (v119)
              {
                v120 = v81[8];
                v121 = &v120[3 * v119];
                v122 = 3.40282347e38;
                v123 = -3.40282347e38;
                v124 = -3.40282347e38;
                v125 = -3.40282347e38;
                v126 = 3.40282347e38;
                v127 = 3.40282347e38;
                do
                {
                  v128 = *v120;
                  v129 = v120[1];
                  v130 = v120[2];
                  if (v122 > v128)
                  {
                    v122 = *v120;
                  }

                  if (v126 > v129)
                  {
                    v126 = v120[1];
                  }

                  if (v127 > v130)
                  {
                    v127 = v120[2];
                  }

                  if (v125 < v128)
                  {
                    v125 = *v120;
                  }

                  if (v124 < v129)
                  {
                    v124 = v120[1];
                  }

                  if (v123 < v130)
                  {
                    v123 = v120[2];
                  }

                  v120 += 3;
                }

                while (v120 != v121);
              }

              else
              {
                v125 = -3.40282347e38;
                v127 = 3.40282347e38;
                v126 = 3.40282347e38;
                v122 = 3.40282347e38;
                v124 = -3.40282347e38;
                v123 = -3.40282347e38;
              }

              v172 = 0u;
              v173 = 0u;
              v131 = operator new(0x20uLL);
              *v131 = &unk_2A20779A8;
              v131[1] = v122;
              v131[2] = v126;
              v131[3] = v127;
              sub_29ABF5720(&__dst, v131);
              *&__str.__r_.__value_.__l.__data_ = *&__dst.__r_.__value_.__l.__data_;
              *&__dst.__r_.__value_.__l.__data_ = 0uLL;
              v132 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::SetMin(&v172, &__str);
              v133 = operator new(0x20uLL);
              *v133 = &unk_2A20779A8;
              v133[1] = v125;
              v133[2] = v124;
              v133[3] = v123;
              sub_29ABF5720(&v169, v133);
              __p = v169;
              v169 = 0;
              v134 = pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::SetMax(v132, &__p);
              pxrInternal__aapl__pxrReserved__::HdExtentSchema::Builder::Build(v134, v81 + 9);
              if (__p.__type_name)
              {
                sub_29A014BEC(__p.__type_name);
              }

              if (v169.__type_name)
              {
                sub_29A014BEC(v169.__type_name);
              }

              if (__str.__r_.__value_.__l.__size_)
              {
                sub_29A014BEC(__str.__r_.__value_.__l.__size_);
              }

              if (__dst.__r_.__value_.__l.__size_)
              {
                sub_29A014BEC(__dst.__r_.__value_.__l.__size_);
              }

              if (*&v173.f64[1])
              {
                sub_29A014BEC(*&v173.f64[1]);
              }

              if (*&v172.f64[1])
              {
                sub_29A014BEC(*&v172.f64[1]);
              }
            }

            else
            {
              v81[9] = 0;
              v81[10] = 0;
            }

            v174.f64[0] = 0.0;
            v172 = 0u;
            v173 = 0u;
            v135 = sub_29A0EF2AC(&v158.u64[1], 0, 6uLL);
            sub_29AA2EDD8(&v172, 4 * v135);
            v136 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            if (!v136)
            {
              v136 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            }

            if ((*(v136 + 47) ^ v156) >= 8)
            {
              v141 = 0;
              v142 = 1;
              do
              {
                v143 = 0;
                v144 = v142;
                v145 = 1;
                do
                {
                  v146 = v145;
                  v147 = 1 << (v143 + v141);
                  if ((v147 & v158.i64[1]) != 0)
                  {
                    sub_29AF22834((v158.i64[0] & v147) == 0, 0, &v172);
                  }

                  v145 = 0;
                  v143 = 3;
                }

                while ((v146 & 1) != 0);
                v142 = 0;
                v141 = 1;
              }

              while ((v144 & 1) != 0);
              v148 = v158.i8[8];
              if ((v158.i8[8] & 4) != 0)
              {
                sub_29AF22834(0, (v158.i8[0] & 4) == 0, &v172);
                v148 = v158.i8[8];
              }

              if ((v148 & 0x20) != 0)
              {
                sub_29AF22834(1, (v158.i64[0] >> 5) & 1, &v172);
              }
            }

            else
            {
              for (j = 0; j != 3; ++j)
              {
                v138 = 0;
                v139 = 1;
                do
                {
                  v140 = v139;
                  if ((v158.i64[1] >> (v138 + j)))
                  {
                    sub_29AF22834(0, 0, &v172);
                  }

                  v139 = 0;
                  v138 = 3;
                }

                while ((v140 & 1) != 0);
              }
            }

            sub_29ACA39F0(&v172, &__str);
            *(v81 + 11) = *&__str.__r_.__value_.__l.__data_;
            *&__str.__r_.__value_.__l.__data_ = 0uLL;
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
          }

          goto LABEL_107;
        }
      }

      operator delete(*&v172.f64[0]);
      if (v74)
      {
        goto LABEL_122;
      }

LABEL_121:
      v158.i64[0] |= 1 << v70;
      v158.i64[1] |= (1 << (3 * (v67 ^ 1u) + v66)) | (1 << v70);
      goto LABEL_122;
    }
  }
}

void sub_29AF205DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  __cxa_guard_abort(&qword_2A17507F0);
  v14 = *(a14 + 96);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v15 = *(a14 + 80);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void *sub_29AF20B74(void *a1)
{
  v2 = a1[112];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  for (i = 110; i != 98; i -= 2)
  {
    v4 = a1[i];
    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29AF20BF8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209E4E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF20C3C(void *a1)
{
  sub_29A1E678C((a1 + 20));
  v2 = a1[19];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A1E678C((a1 + 13));
  v3 = a1[12];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AF20CB8(int8x8_t *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1750868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750868))
  {
    sub_29A008E78(&v119, "subsetMaterial");
    sub_29A008E78(__p, "");
    sub_29AF228CC(&v119, __p, qword_2A1750838);
    if (SBYTE7(v114) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v120) < 0)
    {
      operator delete(v119);
    }

    __cxa_atexit(sub_29AF22F70, qword_2A1750838, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1750868);
  }

  v3 = operator new(0x20uLL);
  v4 = v3;
  v5 = a1[111];
  v6 = a1[112];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v3->~__shared_weak_count = &unk_2A209E530;
    v3->~__shared_weak_count_0 = v5;
    v3->__on_zero_shared = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v3->~__shared_weak_count = &unk_2A209E530;
    v3->~__shared_weak_count_0 = v5;
    v3->__on_zero_shared = 0;
  }

  LODWORD(v3->__get_deleter) = 1065353216;
  v7 = operator new(0x20uLL);
  v7->__vftable = &unk_2A209E580;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7[1].__vftable = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v85 = v4;
  v86 = v7;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  if (sub_29A0EF2AC(a1 + 97, 0, 6uLL))
  {
    for (i = 0; i != 6; ++i)
    {
      if ((*&a1[97] & (1 << i)) != 0)
      {
        v82 = 0;
        v83 = 0;
        v84 = 0;
        memset(v81, 0, sizeof(v81));
        v78 = 0;
        v79 = 0;
        v80 = 0;
        memset(v77, 0, sizeof(v77));
        v9 = atomic_load(&qword_2A1750770);
        if (!v9)
        {
          v9 = sub_29AF1E42C();
        }

        sub_29A1D8028(&v82, v9);
        v10 = a1[97];
        v11 = a1[112];
        *&v105 = a1[111];
        *(&v105 + 1) = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((*&v11 + 8), 1uLL, memory_order_relaxed);
        }

        if ((atomic_load_explicit(qword_2A1750880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1750880))
        {
          v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
          if (!v57)
          {
            v57 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
          }

          sub_29ABCCFA4(v57 + 19, &v119);
          xmmword_2A1750870 = v119;
          __cxa_atexit(sub_29AD30FC4, &xmmword_2A1750870, &dword_299FE7000);
          __cxa_guard_release(qword_2A1750880);
        }

        if ((atomic_load_explicit(qword_2A17508A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A17508A0))
        {
          v120 = 0u;
          v121 = 0u;
          v119 = 0u;
          LODWORD(v94) = 1065353216;
          sub_29AED5BC4(&v94, &v100);
          v106 = v100;
          v100 = 0uLL;
          v58 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(&v119, &v106);
          pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v58, __p);
          xmmword_2A1750890 = *__p;
          __p[1] = 0;
          __p[0] = 0;
          if (*(&v106 + 1))
          {
            sub_29A014BEC(*(&v106 + 1));
          }

          if (*(&v100 + 1))
          {
            sub_29A014BEC(*(&v100 + 1));
          }

          sub_29ABF2F5C(&v119);
          __cxa_atexit(sub_29AD26C2C, &xmmword_2A1750890, &dword_299FE7000);
          __cxa_guard_release(qword_2A17508A0);
        }

        if ((atomic_load_explicit(qword_2A17508C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A17508C0))
        {
          v120 = 0u;
          v121 = 0u;
          v119 = 0u;
          LODWORD(v94) = 1036831949;
          sub_29AED5BC4(&v94, &v100);
          v106 = v100;
          v100 = 0uLL;
          v59 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(&v119, &v106);
          pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v59, __p);
          xmmword_2A17508B0 = *__p;
          __p[1] = 0;
          __p[0] = 0;
          if (*(&v106 + 1))
          {
            sub_29A014BEC(*(&v106 + 1));
          }

          if (*(&v100 + 1))
          {
            sub_29A014BEC(*(&v100 + 1));
          }

          sub_29ABF2F5C(&v119);
          __cxa_atexit(sub_29AD26C2C, &xmmword_2A17508B0, &dword_299FE7000);
          __cxa_guard_release(qword_2A17508C0);
        }

        if ((atomic_load_explicit(&qword_2A17508E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17508E0))
        {
          v120 = 0u;
          v121 = 0u;
          v119 = 0u;
          sub_29ABE3F04(&v105, &v106);
          v60 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(&v119, &v106);
          pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v60, __p);
          xmmword_2A17508D0 = *__p;
          __p[1] = 0;
          __p[0] = 0;
          if (*(&v106 + 1))
          {
            sub_29A014BEC(*(&v106 + 1));
          }

          sub_29ABF2F5C(&v119);
          __cxa_atexit(sub_29AD26C2C, &xmmword_2A17508D0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A17508E0);
        }

        __p[1] = 0;
        __p[0] = 0;
        *&v114 = 0;
        v106 = 0uLL;
        *&v107 = 0;
        v100 = 0uLL;
        *&v101 = 0;
        v94 = 0uLL;
        *&v95 = 0;
        v12 = atomic_load(&qword_2A1750780);
        if ((*&v10 & (1 << i)) != 0)
        {
          if (!v12)
          {
            v12 = sub_29AF1EA14();
          }

          sub_29A1D8028(&v100, v12);
          v13 = atomic_load(&qword_2A1750770);
          if (!v13)
          {
            v13 = sub_29AF1E42C();
          }

          v14 = atomic_load(&qword_2A1750778);
          if (!v14)
          {
            v14 = sub_29AF1E644();
          }

          sub_29AF23400((v13 + 8), (v14 + 40), &v119);
          sub_29A01729C(&v94, &v119);
          if (*(&v119 + 1))
          {
            sub_29A014BEC(*(&v119 + 1));
          }

          v15 = atomic_load(&qword_2A1750780);
          if (!v15)
          {
            v15 = sub_29AF1EA14();
          }

          sub_29A1D8028(&v100, (v15 + 8));
          v16 = atomic_load(&qword_2A1750770);
          if (!v16)
          {
            v16 = sub_29AF1E42C();
          }

          v17 = atomic_load(&qword_2A1750778);
          if (!v17)
          {
            v17 = sub_29AF1E644();
          }

          sub_29AF23400((v16 + 8), (v17 + 48), &v119);
          sub_29A01729C(&v94, &v119);
          if (*(&v119 + 1))
          {
            sub_29A014BEC(*(&v119 + 1));
          }

          v18 = atomic_load(&qword_2A1750780);
          if (!v18)
          {
            v18 = sub_29AF1EA14();
          }

          sub_29A1D8028(__p, (v18 + 16));
          v19 = &xmmword_2A17508B0;
        }

        else
        {
          if (!v12)
          {
            v12 = sub_29AF1EA14();
          }

          sub_29A1D8028(__p, v12);
          sub_29A017F80(&v106, &xmmword_2A17508D0);
          v20 = atomic_load(&qword_2A1750780);
          if (!v20)
          {
            v20 = sub_29AF1EA14();
          }

          sub_29A1D8028(__p, (v20 + 8));
          v19 = &xmmword_2A1750890;
        }

        sub_29A017F80(&v106, v19);
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v21 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetNodeIdentifier(&v119, &xmmword_2A1750870);
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((__p[1] - __p[0]) >> 3, __p[0], v106, &v112);
        v118 = v112;
        v112 = 0uLL;
        v22 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetParameters(v21, &v118);
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((*(&v100 + 1) - v100) >> 3, v100, v94, &v110);
        v111 = v110;
        v110 = 0uLL;
        v23 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetInputConnections(v22, &v111);
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::Build(v23, &v89);
        v109 = v89;
        v89 = 0uLL;
        if (*(&v111 + 1))
        {
          sub_29A014BEC(*(&v111 + 1));
        }

        if (*(&v110 + 1))
        {
          sub_29A014BEC(*(&v110 + 1));
        }

        if (*(&v118 + 1))
        {
          sub_29A014BEC(*(&v118 + 1));
        }

        if (*(&v112 + 1))
        {
          sub_29A014BEC(*(&v112 + 1));
        }

        if (*(&v123 + 1))
        {
          sub_29A014BEC(*(&v123 + 1));
        }

        if (*(&v122 + 1))
        {
          sub_29A014BEC(*(&v122 + 1));
        }

        if (*(&v121 + 1))
        {
          sub_29A014BEC(*(&v121 + 1));
        }

        if (*(&v120 + 1))
        {
          sub_29A014BEC(*(&v120 + 1));
        }

        if (*(&v119 + 1))
        {
          sub_29A014BEC(*(&v119 + 1));
        }

        *&v119 = &v94;
        sub_29A0176E4(&v119);
        *&v119 = &v100;
        sub_29A124AB0(&v119);
        *&v119 = &v106;
        sub_29A0176E4(&v119);
        *&v119 = __p;
        sub_29A124AB0(&v119);
        sub_29A01729C(v81, &v109);
        if (*(&v109 + 1))
        {
          sub_29A014BEC(*(&v109 + 1));
        }

        if (*(&v105 + 1))
        {
          sub_29A014BEC(*(&v105 + 1));
        }

        v24 = atomic_load(&qword_2A1750770);
        if (!v24)
        {
          v24 = sub_29AF1E42C();
        }

        sub_29A1D8028(&v82, (v24 + 8));
        if ((atomic_load_explicit(&qword_2A17508F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17508F0))
        {
          v61 = atomic_load(&qword_2A1750778);
          if (!v61)
          {
            v61 = sub_29AF1E644();
          }

          v62 = *(v61 + 16);
          qword_2A17508E8 = v62;
          if ((v62 & 7) != 0 && (atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            qword_2A17508E8 &= 0xFFFFFFFFFFFFFFF8;
          }

          __cxa_atexit(sub_29AF258B8, 0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A17508F0);
        }

        v25 = atomic_load(&qword_2A1750770);
        if (!v25)
        {
          v25 = sub_29AF1E42C();
        }

        v26 = atomic_load(&qword_2A17508F8);
        if (!v26)
        {
          v26 = sub_29AF236A4();
        }

        sub_29AF23400((v25 + 16), (v26 + 16), &v118);
        if ((atomic_load_explicit(&qword_2A1750928, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750928))
        {
          v63 = atomic_load(&qword_2A1750778);
          if (!v63)
          {
            v63 = sub_29AF1E644();
          }

          v64 = *(v63 + 24);
          qword_2A1750900[0] = v64;
          if ((v64 & 7) != 0 && (atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            qword_2A1750900[0] &= 0xFFFFFFFFFFFFFFF8;
          }

          v65 = atomic_load(&qword_2A1750778);
          if (!v65)
          {
            v65 = sub_29AF1E644();
          }

          v66 = *(v65 + 32);
          qword_2A1750908 = v66;
          if ((v66 & 7) != 0 && (atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            qword_2A1750908 &= 0xFFFFFFFFFFFFFFF8;
          }

          v67 = atomic_load(&qword_2A1750778);
          if (!v67)
          {
            v67 = sub_29AF1E644();
          }

          v68 = *v67;
          qword_2A1750910 = v68;
          if ((v68 & 7) != 0 && (atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            qword_2A1750910 &= 0xFFFFFFFFFFFFFFF8;
          }

          v69 = atomic_load(&qword_2A1750778);
          if (!v69)
          {
            v69 = sub_29AF1E644();
          }

          v70 = *(v69 + 8);
          qword_2A1750918 = v70;
          if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            qword_2A1750918 &= 0xFFFFFFFFFFFFFFF8;
          }

          v71 = atomic_load(&qword_2A1750778);
          if (!v71)
          {
            v71 = sub_29AF1E644();
          }

          v72 = *(v71 + 16);
          qword_2A1750920 = v72;
          if ((v72 & 7) != 0 && (atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            qword_2A1750920 &= 0xFFFFFFFFFFFFFFF8;
          }

          __cxa_atexit(sub_29AF258D8, 0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1750928);
        }

        v114 = 0u;
        v115 = 0u;
        *__p = 0u;
        v27 = atomic_load(&qword_2A1750778);
        if (!v27)
        {
          v27 = sub_29AF1E644();
        }

        sub_29ABCCFA4((v27 + 56), &v110);
        v111 = v110;
        v110 = 0uLL;
        v28 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(__p, &v111);
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v28, &v112);
        v119 = v112;
        v112 = 0uLL;
        v107 = 0u;
        v108 = 0u;
        v106 = 0u;
        v29 = atomic_load(&qword_2A1750778);
        if (!v29)
        {
          v29 = sub_29AF1E644();
        }

        sub_29ABCCFA4((v29 + 56), &v104);
        v105 = v104;
        v104 = 0uLL;
        v30 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(&v106, &v105);
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v30, &v109);
        v120 = v109;
        v109 = 0uLL;
        v101 = 0u;
        v102 = 0u;
        v100 = 0u;
        sub_29ABE3F04(&v85, &v98);
        v31 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(&v100, &v98);
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v31, &v103);
        v121 = v103;
        v103 = 0uLL;
        v95 = 0u;
        v96 = 0u;
        v32 = *a1[2 * i + 99].i8;
        v93 = v32;
        v94 = 0u;
        if (*(&v32 + 1))
        {
          atomic_fetch_add_explicit((*(&v32 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v33 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(&v94, &v93);
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v33, &v97);
        v122 = v97;
        v97 = 0uLL;
        v90 = 0u;
        v91 = 0u;
        v89 = 0u;
        v34 = atomic_load(&qword_2A1750930);
        if (!v34)
        {
          v34 = sub_29AF238BC();
        }

        sub_29ABCCFA4(v34, &v87);
        v88 = v87;
        v87 = 0uLL;
        v35 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(&v89, &v88);
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v35, &v92);
        v123 = v92;
        v92 = 0uLL;
        if (*(&v88 + 1))
        {
          sub_29A014BEC(*(&v88 + 1));
        }

        if (*(&v87 + 1))
        {
          sub_29A014BEC(*(&v87 + 1));
        }

        if (*(&v91 + 1))
        {
          sub_29A014BEC(*(&v91 + 1));
        }

        if (*(&v90 + 1))
        {
          sub_29A014BEC(*(&v90 + 1));
        }

        if (*(&v89 + 1))
        {
          sub_29A014BEC(*(&v89 + 1));
        }

        if (*(&v97 + 1))
        {
          sub_29A014BEC(*(&v97 + 1));
        }

        if (*(&v93 + 1))
        {
          sub_29A014BEC(*(&v93 + 1));
        }

        if (*(&v96 + 1))
        {
          sub_29A014BEC(*(&v96 + 1));
        }

        if (*(&v95 + 1))
        {
          sub_29A014BEC(*(&v95 + 1));
        }

        if (*(&v94 + 1))
        {
          sub_29A014BEC(*(&v94 + 1));
        }

        if (*(&v103 + 1))
        {
          sub_29A014BEC(*(&v103 + 1));
        }

        if (v99)
        {
          sub_29A014BEC(v99);
        }

        if (*(&v102 + 1))
        {
          sub_29A014BEC(*(&v102 + 1));
        }

        if (*(&v101 + 1))
        {
          sub_29A014BEC(*(&v101 + 1));
        }

        if (*(&v100 + 1))
        {
          sub_29A014BEC(*(&v100 + 1));
        }

        if (*(&v109 + 1))
        {
          sub_29A014BEC(*(&v109 + 1));
        }

        if (*(&v105 + 1))
        {
          sub_29A014BEC(*(&v105 + 1));
        }

        if (*(&v104 + 1))
        {
          sub_29A014BEC(*(&v104 + 1));
        }

        if (*(&v108 + 1))
        {
          sub_29A014BEC(*(&v108 + 1));
        }

        if (*(&v107 + 1))
        {
          sub_29A014BEC(*(&v107 + 1));
        }

        if (*(&v106 + 1))
        {
          sub_29A014BEC(*(&v106 + 1));
        }

        if (*(&v112 + 1))
        {
          sub_29A014BEC(*(&v112 + 1));
        }

        if (*(&v111 + 1))
        {
          sub_29A014BEC(*(&v111 + 1));
        }

        if (*(&v110 + 1))
        {
          sub_29A014BEC(*(&v110 + 1));
        }

        if (*(&v115 + 1))
        {
          sub_29A014BEC(*(&v115 + 1));
        }

        if (*(&v114 + 1))
        {
          sub_29A014BEC(*(&v114 + 1));
        }

        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }

        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        *__p = 0u;
        v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
        if (!v36)
        {
          v36 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
        }

        sub_29ABCCFA4(v36 + 20, &v94);
        v100 = v94;
        v94 = 0uLL;
        v37 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetNodeIdentifier(__p, &v100);
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(5uLL, qword_2A1750900, &v119, &v112);
        v89 = v112;
        v112 = 0uLL;
        v38 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetParameters(v37, &v89);
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(1uLL, &qword_2A17508E8, &v118, &v110);
        v111 = v110;
        v110 = 0uLL;
        v39 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetInputConnections(v38, &v111);
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::Build(v39, &v106);
        v76 = v106;
        v106 = 0uLL;
        if (*(&v111 + 1))
        {
          sub_29A014BEC(*(&v111 + 1));
        }

        if (*(&v110 + 1))
        {
          sub_29A014BEC(*(&v110 + 1));
        }

        if (*(&v89 + 1))
        {
          sub_29A014BEC(*(&v89 + 1));
        }

        if (*(&v112 + 1))
        {
          sub_29A014BEC(*(&v112 + 1));
        }

        if (*(&v100 + 1))
        {
          sub_29A014BEC(*(&v100 + 1));
        }

        if (*(&v94 + 1))
        {
          sub_29A014BEC(*(&v94 + 1));
        }

        if (*(&v117 + 1))
        {
          sub_29A014BEC(*(&v117 + 1));
        }

        if (*(&v116 + 1))
        {
          sub_29A014BEC(*(&v116 + 1));
        }

        if (*(&v115 + 1))
        {
          sub_29A014BEC(*(&v115 + 1));
        }

        if (*(&v114 + 1))
        {
          sub_29A014BEC(*(&v114 + 1));
        }

        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }

        for (j = 72; j != -8; j -= 16)
        {
          v41 = *(&v119 + j);
          if (v41)
          {
            sub_29A014BEC(v41);
          }
        }

        if (*(&v118 + 1))
        {
          sub_29A014BEC(*(&v118 + 1));
        }

        sub_29A01729C(v81, &v76);
        if (*(&v76 + 1))
        {
          sub_29A014BEC(*(&v76 + 1));
        }

        v42 = atomic_load(&qword_2A1750770);
        if (!v42)
        {
          v42 = sub_29AF1E42C();
        }

        sub_29A1D8028(&v82, (v42 + 16));
        if ((atomic_load_explicit(&qword_2A1750940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750940))
        {
          v73 = atomic_load(&qword_2A17508F8);
          if (!v73)
          {
            v73 = sub_29AF236A4();
          }

          v74 = *(v73 + 8);
          qword_2A1750938 = v74;
          if ((v74 & 7) != 0 && (atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            qword_2A1750938 &= 0xFFFFFFFFFFFFFFF8;
          }

          __cxa_atexit(sub_29AF2590C, 0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1750940);
        }

        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v43 = atomic_load(&qword_2A1750930);
        if (!v43)
        {
          v43 = sub_29AF238BC();
        }

        sub_29ABCCFA4(v43, &v94);
        v100 = v94;
        v94 = 0uLL;
        v44 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::SetValue(&v119, &v100);
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeParameterSchema::Builder::Build(v44, &v106);
        *__p = v106;
        v106 = 0uLL;
        if (*(&v100 + 1))
        {
          sub_29A014BEC(*(&v100 + 1));
        }

        if (*(&v94 + 1))
        {
          sub_29A014BEC(*(&v94 + 1));
        }

        if (*(&v121 + 1))
        {
          sub_29A014BEC(*(&v121 + 1));
        }

        if (*(&v120 + 1))
        {
          sub_29A014BEC(*(&v120 + 1));
        }

        if (*(&v119 + 1))
        {
          sub_29A014BEC(*(&v119 + 1));
        }

        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
        if (!v45)
        {
          v45 = sub_29AF235A4(&pxrInternal__aapl__pxrReserved__::UsdImagingTokens);
        }

        sub_29ABCCFA4(v45 + 22, &v94);
        v100 = v94;
        v94 = 0uLL;
        v46 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetNodeIdentifier(&v119, &v100);
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(1uLL, &qword_2A1750938, __p, &v118);
        v89 = v118;
        v118 = 0uLL;
        v47 = pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::SetParameters(v46, &v89);
        pxrInternal__aapl__pxrReserved__::HdMaterialNodeSchema::Builder::Build(v47, &v106);
        v112 = v106;
        v106 = 0uLL;
        if (*(&v89 + 1))
        {
          sub_29A014BEC(*(&v89 + 1));
        }

        if (*(&v118 + 1))
        {
          sub_29A014BEC(*(&v118 + 1));
        }

        if (*(&v100 + 1))
        {
          sub_29A014BEC(*(&v100 + 1));
        }

        if (*(&v94 + 1))
        {
          sub_29A014BEC(*(&v94 + 1));
        }

        if (*(&v123 + 1))
        {
          sub_29A014BEC(*(&v123 + 1));
        }

        if (*(&v122 + 1))
        {
          sub_29A014BEC(*(&v122 + 1));
        }

        if (*(&v121 + 1))
        {
          sub_29A014BEC(*(&v121 + 1));
        }

        if (*(&v120 + 1))
        {
          sub_29A014BEC(*(&v120 + 1));
        }

        if (*(&v119 + 1))
        {
          sub_29A014BEC(*(&v119 + 1));
        }

        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }

        sub_29A01729C(v81, &v112);
        if (*(&v112 + 1))
        {
          sub_29A014BEC(*(&v112 + 1));
        }

        v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
        if (!v48)
        {
          v48 = sub_29AC4497C(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
        }

        v119 = 0u;
        v120 = 0u;
        v49 = atomic_load(&qword_2A1750770);
        if (!v49)
        {
          v49 = sub_29AF1E42C();
        }

        sub_29ABCCFA4(v49, &v118);
        v89 = v118;
        v118 = 0uLL;
        v50 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodePath(&v119, &v89);
        v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
        if (!v51)
        {
          v51 = sub_29AC4497C(&pxrInternal__aapl__pxrReserved__::HdMaterialTerminalTokens);
        }

        sub_29ABCCFA4(v51, &v111);
        v112 = v111;
        v111 = 0uLL;
        v52 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodeOutputName(v50, &v112);
        pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::Build(v52, &v94);
        v100 = v94;
        v94 = 0uLL;
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v48, &v100, &v106);
        *__p = v106;
        v106 = 0uLL;
        if (*(&v100 + 1))
        {
          sub_29A014BEC(*(&v100 + 1));
        }

        if (*(&v94 + 1))
        {
          sub_29A014BEC(*(&v94 + 1));
        }

        if (*(&v112 + 1))
        {
          sub_29A014BEC(*(&v112 + 1));
        }

        if (*(&v111 + 1))
        {
          sub_29A014BEC(*(&v111 + 1));
        }

        if (*(&v89 + 1))
        {
          sub_29A014BEC(*(&v89 + 1));
        }

        if (*(&v118 + 1))
        {
          sub_29A014BEC(*(&v118 + 1));
        }

        if (*(&v120 + 1))
        {
          sub_29A014BEC(*(&v120 + 1));
        }

        if (*(&v119 + 1))
        {
          sub_29A014BEC(*(&v119 + 1));
        }

        v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
        if (!v53)
        {
          v53 = sub_29ABEE484(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
        }

        sub_29A1D8028(&v78, v53 + 1);
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v83 - v82) >> 3, v82, v81[0], &v89);
        v94 = v89;
        v89 = 0uLL;
        v54 = pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::Builder::SetNodes(&v119, &v94);
        v55 = pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::Builder::SetTerminals(v54, __p);
        pxrInternal__aapl__pxrReserved__::HdMaterialNetworkSchema::Builder::Build(v55, &v100);
        v106 = v100;
        v100 = 0uLL;
        sub_29A01729C(v77, &v106);
        if (*(&v106 + 1))
        {
          sub_29A014BEC(*(&v106 + 1));
        }

        if (*(&v100 + 1))
        {
          sub_29A014BEC(*(&v100 + 1));
        }

        if (*(&v94 + 1))
        {
          sub_29A014BEC(*(&v94 + 1));
        }

        if (*(&v89 + 1))
        {
          sub_29A014BEC(*(&v89 + 1));
        }

        if (*(&v122 + 1))
        {
          sub_29A014BEC(*(&v122 + 1));
        }

        if (*(&v121 + 1))
        {
          sub_29A014BEC(*(&v121 + 1));
        }

        if (*(&v120 + 1))
        {
          sub_29A014BEC(*(&v120 + 1));
        }

        if (*(&v119 + 1))
        {
          sub_29A014BEC(*(&v119 + 1));
        }

        v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
        if (!v56)
        {
          v56 = sub_29ABEE484(&pxrInternal__aapl__pxrReserved__::HdMaterialSchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdMaterialSchema::BuildRetained((v79 - v78) >> 3, v78, v77[0], &v100);
        v106 = v100;
        v100 = 0uLL;
        pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v56, &v106, &v119);
        sub_29AF23A7C(a2, &qword_2A1750838[i], &qword_2A1750838[i], &v119);
        if (*(&v119 + 1))
        {
          sub_29A014BEC(*(&v119 + 1));
        }

        if (*(&v106 + 1))
        {
          sub_29A014BEC(*(&v106 + 1));
        }

        if (*(&v100 + 1))
        {
          sub_29A014BEC(*(&v100 + 1));
        }

        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }

        *&v119 = v77;
        sub_29A0176E4(&v119);
        *&v119 = &v78;
        sub_29A124AB0(&v119);
        *&v119 = v81;
        sub_29A0176E4(&v119);
        *&v119 = &v82;
        sub_29A124AB0(&v119);
      }
    }
  }

  if (v86)
  {
    sub_29A014BEC(v86);
  }
}

void sub_29AF221F8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  __cxa_guard_abort(&qword_2A1750868);
  _Unwind_Resume(a1);
}

void sub_29AF22834(int a1, int a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (a2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (a1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v8 = __PAIR64__(LODWORD(v4), LODWORD(v6));
  if (a1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  sub_29AA262A4(a3, &v8);
  v8 = __PAIR64__(LODWORD(v4), LODWORD(v7));
  sub_29AA262A4(a3, &v8);
  v8 = __PAIR64__(LODWORD(v5), LODWORD(v7));
  sub_29AA262A4(a3, &v8);
  v8 = __PAIR64__(LODWORD(v5), LODWORD(v6));
  sub_29AA262A4(a3, &v8);
}

void sub_29AF228CC(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v7 = &v69;
  sub_29A022DE0(&v69, v6 + 4);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v69.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "XPos");
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = std::string::append(&v69, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v71 = v12->__r_.__value_.__r.__words[2];
  v70 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3);
  if (*(a1 + 23) >= 0)
  {
    v14 = *(a1 + 23);
  }

  else
  {
    v14 = a1[1];
  }

  v15 = &v66;
  sub_29A022DE0(&v66, v14 + 4);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v66.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(a1 + 23) >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, "YPos");
  v17 = *(a2 + 23);
  if (v17 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  if (v17 >= 0)
  {
    v19 = *(a2 + 23);
  }

  else
  {
    v19 = *(a2 + 8);
  }

  v20 = std::string::append(&v66, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v68 = v20->__r_.__value_.__r.__words[2];
  v67 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3 + 8);
  if (*(a1 + 23) >= 0)
  {
    v22 = *(a1 + 23);
  }

  else
  {
    v22 = a1[1];
  }

  v23 = &v63;
  sub_29A022DE0(&v63, v22 + 4);
  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v63.__r_.__value_.__r.__words[0];
  }

  if (v22)
  {
    if (*(a1 + 23) >= 0)
    {
      v24 = a1;
    }

    else
    {
      v24 = *a1;
    }

    memmove(v23, v24, v22);
  }

  strcpy(v23 + v22, "ZPos");
  v25 = *(a2 + 23);
  if (v25 >= 0)
  {
    v26 = a2;
  }

  else
  {
    v26 = *a2;
  }

  if (v25 >= 0)
  {
    v27 = *(a2 + 23);
  }

  else
  {
    v27 = *(a2 + 8);
  }

  v28 = std::string::append(&v63, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v65 = v28->__r_.__value_.__r.__words[2];
  v64 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3 + 16);
  if (*(a1 + 23) >= 0)
  {
    v30 = *(a1 + 23);
  }

  else
  {
    v30 = a1[1];
  }

  v31 = &v60;
  sub_29A022DE0(&v60, v30 + 4);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = v60.__r_.__value_.__r.__words[0];
  }

  if (v30)
  {
    if (*(a1 + 23) >= 0)
    {
      v32 = a1;
    }

    else
    {
      v32 = *a1;
    }

    memmove(v31, v32, v30);
  }

  strcpy(v31 + v30, "XNeg");
  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v34 = a2;
  }

  else
  {
    v34 = *a2;
  }

  if (v33 >= 0)
  {
    v35 = *(a2 + 23);
  }

  else
  {
    v35 = *(a2 + 8);
  }

  v36 = std::string::append(&v60, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v62 = v36->__r_.__value_.__r.__words[2];
  *v61 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3 + 24);
  if (*(a1 + 23) >= 0)
  {
    v38 = *(a1 + 23);
  }

  else
  {
    v38 = a1[1];
  }

  v39 = &v57;
  sub_29A022DE0(&v57, v38 + 4);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v39 = v57.__r_.__value_.__r.__words[0];
  }

  if (v38)
  {
    if (*(a1 + 23) >= 0)
    {
      v40 = a1;
    }

    else
    {
      v40 = *a1;
    }

    memmove(v39, v40, v38);
  }

  strcpy(v39 + v38, "YNeg");
  v41 = *(a2 + 23);
  if (v41 >= 0)
  {
    v42 = a2;
  }

  else
  {
    v42 = *a2;
  }

  if (v41 >= 0)
  {
    v43 = *(a2 + 23);
  }

  else
  {
    v43 = *(a2 + 8);
  }

  v44 = std::string::append(&v57, v42, v43);
  v45 = *&v44->__r_.__value_.__l.__data_;
  v59 = v44->__r_.__value_.__r.__words[2];
  *v58 = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3 + 32);
  if (*(a1 + 23) >= 0)
  {
    v46 = *(a1 + 23);
  }

  else
  {
    v46 = a1[1];
  }

  v47 = &v54;
  sub_29A022DE0(&v54, v46 + 4);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v47 = v54.__r_.__value_.__r.__words[0];
  }

  if (v46)
  {
    if (*(a1 + 23) >= 0)
    {
      v48 = a1;
    }

    else
    {
      v48 = *a1;
    }

    memmove(v47, v48, v46);
  }

  strcpy(v47 + v46, "ZNeg");
  v49 = *(a2 + 23);
  if (v49 >= 0)
  {
    v50 = a2;
  }

  else
  {
    v50 = *a2;
  }

  if (v49 >= 0)
  {
    v51 = *(a2 + 23);
  }

  else
  {
    v51 = *(a2 + 8);
  }

  v52 = std::string::append(&v54, v50, v51);
  v53 = *&v52->__r_.__value_.__l.__data_;
  v56 = v52->__r_.__value_.__r.__words[2];
  *__p = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3 + 40);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }
}

void sub_29AF22E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (*(v59 - 137) < 0)
  {
    operator delete(*(v59 - 160));
  }

  if (*(v59 - 161) < 0)
  {
    operator delete(*(v59 - 184));
  }

  if (*(v59 - 89) < 0)
  {
    operator delete(*(v59 - 112));
  }

  if (*(v59 - 113) < 0)
  {
    operator delete(*(v59 - 136));
  }

  while (v58 != v57)
  {
    v62 = *(v58 - 8);
    v58 -= 8;
    v61 = v62;
    if ((v62 & 7) != 0)
    {
      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AF22F70(uint64_t result)
{
  for (i = 40; i != -8; i -= 8)
  {
    v2 = *(result + i);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void *sub_29AF22F9C(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = v6;
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == v6)
        {
          if ((i[2] ^ *a2) < 8)
          {
            return i;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x28uLL);
  *i = 0;
  i[1] = v6;
  sub_29AF1712C((i + 2), a3);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *i = *v19;
LABEL_38:
    *v19 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v18 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v20 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29AF231F4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF23234(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

_DWORD *sub_29AF23278@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 24);
  a2[1] = &off_2A2042A68 + 2;
  result = operator new(0x14uLL);
  *result = v4;
  result[1] = v6;
  result[2] = v8;
  result[3] = v9;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void sub_29AF23390(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF233C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E5D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF23400(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  sub_29ABCCFA4(a1, &v9);
  v10 = v9;
  v9 = 0uLL;
  v5 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodePath(&v11, &v10);
  sub_29ABCCFA4(a2, &v7);
  v8 = v7;
  v7 = 0uLL;
  v6 = pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::SetUpstreamNodeOutputName(v5, &v8);
  pxrInternal__aapl__pxrReserved__::HdMaterialConnectionSchema::Builder::Build(v6, &v13);
  v14 = v13;
  v13 = 0uLL;
  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }

  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }

  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_29A014BEC(*(&v9 + 1));
  }

  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_29A014BEC(*(&v11 + 1));
  }

  *&v13 = 1;
  sub_29AF23630(&v13, &v14, &v11);
  *a3 = v11;
  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }
}

void sub_29AF23538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = *(v17 - 56);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::UsdImagingTokens_StaticTokenType *sub_29AF235A4(atomic_ullong *a1)
{
  result = sub_29AF235EC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdImagingTokens_StaticTokenType::~UsdImagingTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdImagingTokens_StaticTokenType *sub_29AF235EC()
{
  v0 = operator new(0xF8uLL);
  pxrInternal__aapl__pxrReserved__::UsdImagingTokens_StaticTokenType::UsdImagingTokens_StaticTokenType(v0);
  return v0;
}

void *sub_29AF23630@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x210uLL);
  pxrInternal__aapl__pxrReserved__::HdRetainedSmallVectorDataSource::HdRetainedSmallVectorDataSource(v6, *a1, a2);

  return sub_29AC011AC(a3, v6);
}

unint64_t sub_29AF236A4()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "fallback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "varname", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "result", 0);
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A17508F8, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A17508F8);
  }

  return v0;
}

void sub_29AF23820(_Unwind_Exception *a1)
{
  v4 = 16;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

unint64_t sub_29AF238BC()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "cardsUv", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "displayRoughness", 0);
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
  atomic_compare_exchange_strong(&qword_2A1750930, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A1750930);
  }

  return v0;
}

void sub_29AF23A00(_Unwind_Exception *a1)
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

void *sub_29AF23A7C(uint64_t a1, void *a2, uint64_t *a3, __n128 *a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29AF23CC8(a1, v6, a3, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29AF23CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A1E7054(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29AF23CC8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x28uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  *(v10 + 1) = a2;
  v11 = *a3;
  *(v10 + 2) = *a3;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v10 + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = *a4;
  *(v10 + 24) = *a4;
  a4->n128_u64[0] = 0;
  a4->n128_u64[1] = 0;
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29AF23D5C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B43C2CBLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2040590);
}

unint64_t sub_29AF23DE8()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "worldtoscreen", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "worldToNDC", 0);
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
  atomic_compare_exchange_strong(&qword_2A1750948, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A1750948);
  }

  return v0;
}

void sub_29AF23F2C(_Unwind_Exception *a1)
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

uint64_t sub_29AF23FA8(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  v3 = *(a1 + 1);
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(v3, EmptyString);
  *(a1 + 1) = v3 + 8;
  return result;
}

uint64_t sub_29AF24000(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A00C9BC(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * v2];
  v17 = v8;
  v18 = v9;
  *&v19 = v9;
  *(&v19 + 1) = &v8[8 * v7];
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(v9, EmptyString);
  *&v19 = v19 + 8;
  v11 = *(a1 + 8);
  v12 = &v18[*a1 - v11];
  sub_29A1E291C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A1E29E8(&v17);
  return v16;
}

void sub_29AF24114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E29E8(va);
  _Unwind_Resume(a1);
}

void sub_29AF24128(uint64_t a1)
{
  *a1 = &unk_2A209E5F8;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  *a1 = &unk_2A209DDB0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29AF241C0(uint64_t a1)
{
  *a1 = &unk_2A209E5F8;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 28));
  sub_29A1DE3A4((a1 + 24));
  *a1 = &unk_2A209DDB0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v4);
}

void sub_29AF2425C(void *a1@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1750988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750988))
  {
    sub_29AF18CAC(v8);
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
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
    sub_29AF192D8(v8, v7, &qword_2A1750970);
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
    __cxa_atexit(sub_29A3C73E0, &qword_2A1750970, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1750988);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF244A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  __cxa_guard_abort(&qword_2A1750988);
  _Unwind_Resume(a1);
}

void sub_29AF24550(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABED440(&pxrInternal__aapl__pxrReserved__::HdMeshSchemaTokens);
  }

  if ((*v6 ^ *a2) > 7)
  {
    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!v11)
    {
      v11 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    if ((*v11 ^ *a2) > 7)
    {
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
      if (!v18)
      {
        v18 = sub_29ABEE3F8(&pxrInternal__aapl__pxrReserved__::HdExtentSchemaTokens);
      }

      if ((*v18 ^ *a2) > 7)
      {

        sub_29AF18F38(a1, a2, a3);
      }

      else
      {
        sub_29AF1EC2C(*(a1 + 32), &v25);
        v20 = *(v25 + 48);
        v19 = *(v25 + 56);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(&v25 + 1))
        {
          sub_29A014BEC(*(&v25 + 1));
        }

        if (v20)
        {
          *a3 = v20;
          a3[1] = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);

            sub_29A014BEC(v19);
          }
        }

        else
        {
          if (v19)
          {
            sub_29A014BEC(v19);
          }

          pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetFromParent((a1 + 8), &v30);
          pxrInternal__aapl__pxrReserved__::HdSchema::GetContainer(&v30, &v25);
          *a3 = v25;
          v25 = 0uLL;
          v10 = *(&v30 + 1);
          if (*(&v30 + 1))
          {
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      v12 = operator new(0x28uLL);
      v13 = v12;
      v15 = *(a1 + 8);
      v14 = *(a1 + 16);
      *v12 = &unk_2A209DE40;
      v12[1] = v15;
      v12[2] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      *v12 = &unk_2A209E640;
      v16 = *(a1 + 40);
      v12[3] = *(a1 + 32);
      v12[4] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = operator new(0x20uLL);
      *v17 = &unk_2A209E750;
      v17[1] = 0;
      v17[2] = 0;
      v17[3] = v13;
      *a3 = v13;
      a3[1] = v17;
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    sub_29AF1EC2C(*(a1 + 32), &v30);
    v7 = *(v30 + 128);
    v23 = *(v30 + 120);
    v24 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(&v30 + 1))
    {
      sub_29A014BEC(*(&v30 + 1));
    }

    v8 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetTopology(&v25, &v23);
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v21, &v22);
    v30 = v22;
    v22 = 0uLL;
    v9 = pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::SetDoubleSided(v8, &v30);
    pxrInternal__aapl__pxrReserved__::HdMeshSchema::Builder::Build(v9, &v29);
    *a3 = v29;
    v29 = 0uLL;
    if (*(&v30 + 1))
    {
      sub_29A014BEC(*(&v30 + 1));
    }

    if (*(&v22 + 1))
    {
      sub_29A014BEC(*(&v22 + 1));
    }

    if (v24)
    {
      sub_29A014BEC(v24);
    }

    if (*(&v28 + 1))
    {
      sub_29A014BEC(*(&v28 + 1));
    }

    if (*(&v27 + 1))
    {
      sub_29A014BEC(*(&v27 + 1));
    }

    if (*(&v26 + 1))
    {
      sub_29A014BEC(*(&v26 + 1));
    }

    v10 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
LABEL_21:
      sub_29A014BEC(v10);
    }
  }
}

void sub_29AF24884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *(v15 - 40);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF24914(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209E640;
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  *this = &unk_2A209DE40;
  v3 = *(this + 2);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AF24998(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209E640;
  v2 = *(this + 4);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  *this = &unk_2A209DE40;
  v3 = *(this + 2);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v4);
}

void sub_29AF24A20(void *a1@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17509A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17509A8))
  {
    sub_29AF19C40(v11);
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    if (!v2)
    {
      v2 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
    }

    v3 = *(v2 + 1);
    v13 = v3;
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 &= 0xFFFFFFFFFFFFFFF8;
    }

    v4 = atomic_load(&qword_2A1750930);
    if (!v4)
    {
      v4 = sub_29AF238BC();
    }

    v5 = *v4;
    v14 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6 = atomic_load(&qword_2A1750930);
    if (!v6)
    {
      v6 = sub_29AF238BC();
    }

    v7 = *(v6 + 8);
    v15 = v7;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 &= 0xFFFFFFFFFFFFFFF8;
    }

    memset(v10, 0, sizeof(v10));
    sub_29A12EF7C(v10, &v13, &v16, 3uLL);
    sub_29AF192D8(v11, v10, &qword_2A1750990);
    v12 = v10;
    sub_29A124AB0(&v12);
    for (i = 16; i != -8; i -= 8)
    {
      v9 = *(&v13 + i);
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v10[0] = v11;
    sub_29A124AB0(v10);
    __cxa_atexit(sub_29A3C73E0, &qword_2A1750990, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17509A8);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AF24C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_29A124AB0(&a10);
  __cxa_guard_abort(&qword_2A17509A8);
  _Unwind_Resume(a1);
}

void sub_29AF24D04(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABEE13C(&pxrInternal__aapl__pxrReserved__::HdPrimvarsSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {
    v16 = atomic_load(&qword_2A1750930);
    if (!v16)
    {
      v16 = sub_29AF238BC();
    }

    if ((*v16 ^ *a2) > 7)
    {
      v20 = atomic_load(&qword_2A1750930);
      if (!v20)
      {
        v20 = sub_29AF238BC();
      }

      if ((*(v20 + 8) ^ *a2) > 7)
      {

        sub_29AF19E1C(a1, a2, a3);
      }

      else
      {
        if ((atomic_load_explicit(&qword_2A17509C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17509C0))
        {
          v24 = 1065353216;
          sub_29AA039F4(&v25, &v24, 1);
          sub_29ABF6834(&v25, &v27);
          v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          if (!v22)
          {
            v22 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
          }

          v23 = 0;
          sub_29AF1A2B4(&v27, v22 + 6, &v23, &v29);
          xmmword_2A17509B0 = v29;
          v29 = 0uLL;
          if (v28)
          {
            sub_29A014BEC(v28);
          }

          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
        }

        v21 = *(&xmmword_2A17509B0 + 1);
        *a3 = xmmword_2A17509B0;
        a3[1] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }
      }
    }

    else
    {
      sub_29AF1EC2C(*(a1 + 24), &v25);
      v17 = *(v25 + 72);
      v27 = *(v25 + 64);
      v28 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        sub_29A014BEC(v26);
      }

      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v18)
      {
        v18 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v25 = 0;
      v19 = operator new(0x28uLL);
      sub_29AF1A374(v19, &v27, v18 + 9, &v25);
      sub_29AF1A404(&v29, v19);
      *a3 = v29;
      v29 = 0uLL;
      if (v28)
      {
        sub_29A014BEC(v28);
      }
    }
  }

  else
  {
    v7 = operator new(0x28uLL);
    v8 = v7;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    *v7 = &unk_2A209E688;
    v7[1] = v10;
    v7[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 32);
    v7[3] = *(a1 + 24);
    v7[4] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = operator new(0x20uLL);
    v12->__vftable = &unk_2A209E6D8;
    v12->__shared_owners_ = 0;
    v12->__shared_weak_owners_ = 0;
    v12[1].__vftable = v8;
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v13)
    {
      v13 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v14)
    {
      v14 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v15 = operator new(0x28uLL);
    v25 = v8;
    v26 = v12;
    sub_29AF1A374(v15, &v25, v13 + 9, v14 + 12);
    sub_29AF1A404(&v29, v15);
    sub_29A014BEC(v12);
    *a3 = v29;
  }
}

void sub_29AF25098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AF25138(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209E688;
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

void sub_29AF251A0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209E688;
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

void sub_29AF2520C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AF25298(uint64_t a1, uint64_t a2, float a3, float a4)
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

void sub_29AF25394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

void sub_29AF253F8(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  sub_29AF1EC2C(*(a1 + 24), &v34);
  v6 = v34;
  v7 = *(v34 + 3);
  *a2 = *(v34 + 1);
  *(a2 + 16) = v7;
  v8 = v6[5];
  *(a2 + 32) = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(a2 + 24))
    {
      v9 = *(a2 + 24);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v35)
  {
    sub_29A014BEC(v35);
  }

  sub_29AF1EC2C(*(a1 + 24), &v34);
  v10 = *v34;
  if ((*v34 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v35)
  {
    sub_29A014BEC(v35);
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v11)
  {
    v11 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v12 = v10 ^ *(v11 + 47);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v12 >= 8)
  {
    pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetFromParent((a1 + 8), &v34);
    pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMin(&v34, &v32);
    if (v32)
    {
      v13.f64[0] = (*(*v32 + 32))(v32, a3);
      v13.f64[1] = v14;
      v15 = vcvt_f32_f64(v13);
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0.0;
    }

    if (v33)
    {
      sub_29A014BEC(v33);
    }

    pxrInternal__aapl__pxrReserved__::HdExtentSchema::GetMax(&v34, &v32);
    if (v32)
    {
      v18.f64[0] = (*(*v32 + 32))(v32, a3);
      v18.f64[1] = v19;
      v20 = vcvt_f32_f64(v18);
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0.0;
    }

    if (v33)
    {
      sub_29A014BEC(v33);
    }

    if (*a2)
    {
      v23 = 0;
      v24 = 0;
      __asm { FMOV            V13.2S, #1.0 }

      do
      {
        sub_29A1935CC(a2);
        v30 = (*(a2 + 32) + v23);
        v31 = (v22 * v30[1].f32[0]) + (v17 * (1.0 - v30[1].f32[0]));
        *v30 = vadd_f32(vmul_f32(v20, *v30), vmul_f32(v15, vsub_f32(_D13, *v30)));
        v30[1].f32[0] = v31;
        ++v24;
        v23 += 12;
      }

      while (v24 < *a2);
    }

    if (v35)
    {
      sub_29A014BEC(v35);
    }
  }
}

void sub_29AF256C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF256F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF25720(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E728))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF25764(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2578C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF257BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E7A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF25800(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF25828(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF25858(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E818))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF25898()
{
  if ((qword_2A1750828 & 7) != 0)
  {
    atomic_fetch_add_explicit((qword_2A1750828 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AF258B8()
{
  if ((qword_2A17508E8 & 7) != 0)
  {
    atomic_fetch_add_explicit((qword_2A17508E8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AF258D8()
{
  for (i = 4u; i != -1; --i)
  {
    v1 = qword_2A1750900[i];
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AF2590C()
{
  if ((qword_2A1750938 & 7) != 0)
  {
    atomic_fetch_add_explicit((qword_2A1750938 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarsSchema(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = sub_29AC1199C(a1);
    (*(*v3 + 16))(&v4);
    pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetFromParent(&v5, a2);
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_29AF259D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarSchema(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, void *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarsSchema(a1, &v5);
  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvar(&v5, a2, a3);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29AF25A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_IsConstantPrimvar(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarSchema(a1, a3, &v6);
  pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetInterpolation(&v6, &v8);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (v8)
  {
    (*(*v8 + 32))(&v6, 0.0);
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v3)
    {
      v3 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    v4 = (*(v3 + 6) ^ v6) < 8;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v4 = 0;
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }

  return v4;
}

void sub_29AF25B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetConstantPrimvarNames(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarsSchema(a1, &v14);
  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvarNames(&v14, &v12);
  v3 = v12;
  for (i = v13; v3 != i; ++v3)
  {
    pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvar(&v14, v3, &v10);
    pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetInterpolation(&v10, &v8);
    if (v8)
    {
      (*(*v8 + 32))(&v7, 0.0);
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v5)
      {
        v5 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v6 = v7;
      if ((*(v5 + 6) ^ v7) <= 7)
      {
        sub_29A1D8028(a2, v3);
        v6 = v7;
      }

      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  v10 = &v12;
  sub_29A124AB0(&v10);
  if (v15)
  {
    sub_29A014BEC(v15);
  }
}

void sub_29AF25CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29A124AB0(&a17);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarSchema(a1, a2, &v4);
  pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetPrimvarValue(&v4, &v6);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  if (v6)
  {
    (*(*v6 + 16))(v6, 0.0);
  }

  else
  {
    *(a3 + 8) = 0;
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29AF25DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimTransform(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1750A80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1750A80))
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&xmmword_2A1750A00, 1.0);
    __cxa_guard_release(&qword_2A1750A80);
  }

  if (*a1)
  {
    v4 = sub_29AC1199C(a1);
    (*(*v4 + 16))(&v15);
    v17 = v16;
    v16 = 0uLL;
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::HdXformSchema::GetFromParent(&v17, &v13);
    pxrInternal__aapl__pxrReserved__::HdXformSchema::GetMatrix(&v13, &v15);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    if (v15)
    {
      (*(*v15 + 32))(v15, 0.0);
    }

    else
    {
      v9 = unk_2A1750A50;
      a2[4] = xmmword_2A1750A40;
      a2[5] = v9;
      v10 = unk_2A1750A70;
      a2[6] = xmmword_2A1750A60;
      a2[7] = v10;
      v11 = *algn_2A1750A10;
      *a2 = xmmword_2A1750A00;
      a2[1] = v11;
      v12 = unk_2A1750A30;
      a2[2] = xmmword_2A1750A20;
      a2[3] = v12;
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if (*(&v17 + 1))
    {
      sub_29A014BEC(*(&v17 + 1));
    }
  }

  else
  {
    v5 = unk_2A1750A50;
    a2[4] = xmmword_2A1750A40;
    a2[5] = v5;
    v6 = unk_2A1750A70;
    a2[6] = xmmword_2A1750A60;
    a2[7] = v6;
    v7 = *algn_2A1750A10;
    *a2 = xmmword_2A1750A00;
    a2[1] = v7;
    v8 = unk_2A1750A30;
    a2[2] = xmmword_2A1750A20;
    a2[3] = v8;
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_MakePrimvarValueDataSource@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X2>, void *a4@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(*a2 + 16))
  {
    v4 = result;
    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(result, a3, v6);
    sub_29AF40A2C(&v5, v4);
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_29AF26108@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_29A29C774(a1);
  switch(result)
  {
    case 0:
      v7 = a1;
      v8 = a2;

      goto LABEL_4;
    case 1:
      v55 = a1;
      v56 = a2;

      goto LABEL_91;
    case 2:
      v59 = a1;
      v60 = a2;

      goto LABEL_106;
    case 3:
      v23 = a1;
      v24 = a2;

      goto LABEL_28;
    case 4:
      v61 = a1;
      v62 = a2;

      goto LABEL_109;
    case 5:
      v83 = a1;
      v84 = a2;

      goto LABEL_175;
    case 6:
      v35 = a1;
      v36 = a2;

      goto LABEL_49;
    case 7:
      v75 = a1;
      v76 = a2;

      goto LABEL_145;
    case 8:
      v91 = a1;
      v92 = a2;

      goto LABEL_199;
    case 9:
      v37 = a1;
      v38 = a2;

      goto LABEL_55;
    case 10:
      v89 = a1;
      v90 = a2;

      goto LABEL_196;
    case 11:
      v57 = a1;
      v58 = a2;

      goto LABEL_94;
    case 12:
      v69 = a1;
      v70 = a2;

      goto LABEL_121;
    case 13:
      v65 = a1;
      v66 = a2;

      goto LABEL_115;
    case 14:
      v53 = a1;
      v54 = a2;

      goto LABEL_85;
    case 15:
      v73 = a1;
      v74 = a2;

      goto LABEL_136;
    case 16:
      v49 = a1;
      v50 = a2;

      goto LABEL_76;
    case 17:
      v67 = a1;
      v68 = a2;

      goto LABEL_118;
    case 18:
      v85 = a1;
      v86 = a2;

      goto LABEL_178;
    case 19:
      v29 = a1;
      v30 = a2;

      goto LABEL_37;
    case 20:
      v51 = a1;
      v52 = a2;

      goto LABEL_79;
    case 21:
      v87 = a1;
      v88 = a2;

      goto LABEL_184;
    case 22:
      v43 = a1;
      v44 = a2;

      goto LABEL_67;
    case 23:
      v17 = a1;
      v18 = a2;

      goto LABEL_19;
    case 24:
      v33 = a1;
      v34 = a2;

      goto LABEL_43;
    case 25:
      v71 = a1;
      v72 = a2;

      goto LABEL_127;
    case 26:
      v99 = a1;
      v100 = a2;

      goto LABEL_247;
    case 27:
      v45 = a1;
      v46 = a2;

      goto LABEL_70;
    case 28:
      v39 = a1;
      v40 = a2;

      goto LABEL_58;
    case 29:
      v81 = a1;
      v82 = a2;

      goto LABEL_166;
    case 30:
      v19 = a1;
      v20 = a2;

      goto LABEL_22;
    case 31:
      v79 = a1;
      v80 = a2;

      goto LABEL_154;
    case 32:
      v15 = a1;
      v16 = a2;

      goto LABEL_16;
    case 33:
      v31 = a1;
      v32 = a2;

      goto LABEL_40;
    case 34:
      v47 = a1;
      v48 = a2;

      goto LABEL_73;
    case 35:
      v41 = a1;
      v42 = a2;

      goto LABEL_61;
    case 36:
      v11 = a1;
      v12 = a2;

      goto LABEL_10;
    case 37:
      v9 = a1;
      v10 = a2;

      goto LABEL_7;
    case 38:
      v93 = a1;
      v94 = a2;

      goto LABEL_211;
    case 39:
      v95 = a1;
      v96 = a2;

      goto LABEL_217;
    case 40:
      v63 = a1;
      v64 = a2;

      goto LABEL_112;
    case 41:
      v25 = a1;
      v26 = a2;

      goto LABEL_31;
    case 42:
      v97 = a1;
      v98 = a2;

      goto LABEL_229;
    case 43:
      v27 = a1;
      v28 = a2;

      goto LABEL_34;
    case 44:
      v13 = a1;
      v14 = a2;

      goto LABEL_13;
    case 45:
      v77 = a1;
      v78 = a2;

      goto LABEL_151;
    case 46:
      v21 = a1;
      v22 = a2;

      goto LABEL_25;
    case 47:
      v7 = a1;
      v8 = a2;

LABEL_4:
      sub_29AF2B8AC(v7, v8);
    case 48:
      v55 = a1;
      v56 = a2;

LABEL_91:
      sub_29AF2B90C(v55, v56);
    case 49:
      v59 = a1;
      v60 = a2;

LABEL_106:
      sub_29AF2B96C(v59, v60);
    case 50:
      v23 = a1;
      v24 = a2;

LABEL_28:
      sub_29AF2B9CC(v23, v24);
    case 51:
      v61 = a1;
      v62 = a2;

LABEL_109:
      sub_29AF2BA2C(v61, v62);
    case 52:
      v83 = a1;
      v84 = a2;

LABEL_175:
      sub_29AF2BA8C(v83, v84);
    case 53:
      v35 = a1;
      v36 = a2;

LABEL_49:
      sub_29AF2BAEC(v35, v36);
    case 54:
      v75 = a1;
      v76 = a2;

LABEL_145:
      sub_29AF2BB4C(v75, v76);
    case 55:
      v91 = a1;
      v92 = a2;

LABEL_199:
      sub_29AF2BBAC(v91, v92);
    case 56:
      v37 = a1;
      v38 = a2;

LABEL_55:
      sub_29AF2BC0C(v37, v38);
    case 57:
      v89 = a1;
      v90 = a2;

LABEL_196:
      sub_29AF2BC6C(v89, v90);
    case 58:
      v57 = a1;
      v58 = a2;

LABEL_94:
      sub_29AF2BCCC(v57, v58);
    case 59:
      v69 = a1;
      v70 = a2;

LABEL_121:
      sub_29AF2BD2C(v69, v70);
    case 60:
      v65 = a1;
      v66 = a2;

LABEL_115:
      sub_29AF2BD8C(v65, v66);
    case 61:
      v53 = a1;
      v54 = a2;

LABEL_85:
      sub_29AF2BDEC(v53, v54);
    case 62:
      v73 = a1;
      v74 = a2;

LABEL_136:
      sub_29AF2BE4C(v73, v74);
    case 63:
      v49 = a1;
      v50 = a2;

LABEL_76:
      sub_29AF2BEAC(v49, v50);
    case 64:
      v67 = a1;
      v68 = a2;

LABEL_118:
      sub_29AF2BF0C(v67, v68);
    case 65:
      v85 = a1;
      v86 = a2;

LABEL_178:
      sub_29AF2BF6C(v85, v86);
    case 66:
      v29 = a1;
      v30 = a2;

LABEL_37:
      sub_29AF2BFCC(v29, v30);
    case 67:
      v51 = a1;
      v52 = a2;

LABEL_79:
      sub_29AF2C02C(v51, v52);
    case 68:
      v87 = a1;
      v88 = a2;

LABEL_184:
      sub_29AF2C08C(v87, v88);
    case 69:
      v43 = a1;
      v44 = a2;

LABEL_67:
      sub_29AF2C0EC(v43, v44);
    case 70:
      v17 = a1;
      v18 = a2;

LABEL_19:
      sub_29AF2C14C(v17, v18);
    case 71:
      v33 = a1;
      v34 = a2;

LABEL_43:
      sub_29AF2C1AC(v33, v34);
    case 72:
      v71 = a1;
      v72 = a2;

LABEL_127:
      sub_29AF2C20C(v71, v72);
    case 73:
      v99 = a1;
      v100 = a2;

LABEL_247:
      sub_29AF2C26C(v99, v100);
    case 74:
      v45 = a1;
      v46 = a2;

LABEL_70:
      sub_29AF2C2CC(v45, v46);
    case 75:
      v39 = a1;
      v40 = a2;

LABEL_58:
      sub_29AF2C32C(v39, v40);
    case 76:
      v81 = a1;
      v82 = a2;

LABEL_166:
      sub_29AF2C38C(v81, v82);
    case 77:
      v19 = a1;
      v20 = a2;

LABEL_22:
      sub_29AF2C3EC(v19, v20);
    case 78:
      v79 = a1;
      v80 = a2;

LABEL_154:
      sub_29AF2C44C(v79, v80);
    case 79:
      v15 = a1;
      v16 = a2;

LABEL_16:
      sub_29AF2C4AC(v15, v16);
    case 80:
      v31 = a1;
      v32 = a2;

LABEL_40:
      sub_29AF2C50C(v31, v32);
    case 81:
      v47 = a1;
      v48 = a2;

LABEL_73:
      sub_29AF2C56C(v47, v48);
    case 82:
      v41 = a1;
      v42 = a2;

LABEL_61:
      sub_29AF2C5CC(v41, v42);
    case 83:
      v11 = a1;
      v12 = a2;

LABEL_10:
      sub_29AF2C62C(v11, v12);
    case 84:
      v9 = a1;
      v10 = a2;

LABEL_7:
      sub_29AF2C68C(v9, v10);
    case 85:
      v93 = a1;
      v94 = a2;

LABEL_211:
      sub_29AF2C6EC(v93, v94);
    case 86:
      v95 = a1;
      v96 = a2;

LABEL_217:
      sub_29AF2C74C(v95, v96);
    case 87:
      v63 = a1;
      v64 = a2;

LABEL_112:
      sub_29AF2C7AC(v63, v64);
    case 88:
      v25 = a1;
      v26 = a2;

LABEL_31:
      sub_29AF2C80C(v25, v26);
    case 89:
      v97 = a1;
      v98 = a2;

LABEL_229:
      sub_29AF2C86C(v97, v98);
    case 90:
      v27 = a1;
      v28 = a2;

LABEL_34:
      sub_29AF2C8CC(v27, v28);
    case 91:
      v13 = a1;
      v14 = a2;

LABEL_13:
      sub_29AF2C92C(v13, v14);
    case 92:
      v77 = a1;
      v78 = a2;

LABEL_151:
      sub_29AF2C98C(v77, v78);
    case 93:
      v21 = a1;
      v22 = a2;

LABEL_25:
      sub_29AF2C9EC(v21, v22);
    case 94:

      sub_29AF2CA4C(a1, a2);
    case 95:

      sub_29AF2CAAC(a1, a2);
    default:
      *a3 = 0;
      a3[1] = 0;
      return result;
  }
}

void sub_29AF274EC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_Range@<X0>(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  result = sub_29A19D6E4(a2, this);
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      result = sub_29A19DBEC(a2);
      *(*(a2 + 32) + 4 * i) = i;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetVisibility(uint64_t *a1)
{
  if (!*a1)
  {
    return 1;
  }

  v1 = sub_29AC1199C(a1);
  (*(*v1 + 16))(&v6);
  v8 = v7;
  v7 = 0uLL;
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetFromParent(&v8, &v4);
  pxrInternal__aapl__pxrReserved__::HdVisibilitySchema::GetVisibility(&v4, &v6);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  if (v6)
  {
    v2 = (*(*v6 + 32))(v6, 0.0);
  }

  else
  {
    v2 = 1;
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }

  return v2;
}

void sub_29AF276C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  v15 = *(v13 - 24);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_ComputeMask@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_29A20CB6C(a3, (*a2)[2]);
  v7 = (*a2 + 1);
  v8 = **a2;
  if (v8 != v7)
  {
    v9 = 0;
    do
    {
      Visibility = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetVisibility(a1);
      result = sub_29A20D1F0(a3);
      *(*(a3 + 32) + v9) = Visibility;
      v11 = v8[1];
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
          v12 = v8[2];
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      ++v9;
      v8 = v12;
    }

    while (v12 != v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_ComputeConstantPrimvarsRoleHash(pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema *a1@<X0>, void *a2@<X8>)
{
  v23 = 0;
  v24 = 0;
  v22 = &v23;
  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvarNames(a1, &v20);
  v4 = v20;
  for (i = v21; v4 != i; ++v4)
  {
    pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetPrimvar(a1, v4, &v18);
    pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetInterpolation(&v18, &v16);
    if (v16)
    {
      (*(*v16 + 32))(&v13, 0.0);
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
      }

      v7 = v13;
      v8 = *(v6 + 6);
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v8 ^ v7) <= 7)
      {
        v15 = 0;
        pxrInternal__aapl__pxrReserved__::HdPrimvarSchema::GetRole(&v18, &v13);
        if (v13)
        {
          (*(*v13 + 32))(&v12, 0.0);
          if ((v15 & 7) != 0)
          {
            atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v15 = v12;
        }

        if (v14)
        {
          sub_29A014BEC(v14);
        }

        v13 = v4;
        v9 = sub_29A499AF4(&v22, v4, &unk_29B4D6118, &v13);
        sub_29A166F2C(v9 + 5, &v15);
        if ((v15 & 7) != 0)
        {
          atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }
  }

  v18 = &v20;
  sub_29A124AB0(&v18);
  if (v24)
  {
    v20 = 0;
    LOBYTE(v21) = 0;
    sub_29AF40C4C(&v20, v22, &v23);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Primvars%zx", v10, v11, bswap64(0x9E3779B97F4A7C55 * v20));
  }

  else
  {
    sub_29A008E78(a2, "NoPrimvars");
  }

  sub_29A49A1BC(&v22, v23);
}

void sub_29AF27A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void **a17, std::__shared_weak_count *a18, char a19)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  a17 = &a19;
  sub_29A124AB0(&a17);
  sub_29A49A1BC(v19 - 88, *(v19 - 80));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_ComputeBindingHash(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetFromParent(a1, &v19);
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_ComputeConstantPrimvarsRoleHash(&v19, &v21);
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 != v7)
  {
    do
    {
      (*(**a1 + 24))(&v17);
      if (v17)
      {
        v8 = *v6 & 0xFFFFFFFFFFFFFFF8;
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

        v10 = pxrInternal__aapl__pxrReserved__::HdDataSourceHash(&v17, 0.0, 0.0);
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("_%s%zx", v11, v12, v9, v10);
        if ((v16 & 0x80u) == 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if ((v16 & 0x80u) == 0)
        {
          v14 = v16;
        }

        else
        {
          v14 = __p[1];
        }

        std::string::append(&v21, v13, v14);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v18)
      {
        sub_29A014BEC(v18);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a3);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_29AF27C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetUsdPrototypePath(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetFromParent(a1, &v5);
  pxrInternal__aapl__pxrReserved__::UsdImagingUsdPrimInfoSchema::GetNiPrototypePath(&v5, &v3);
  if (v3)
  {
    (*(*v3 + 32))(v3, 0.0);
  }

  else
  {
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a2 + 1);
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29AF27D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetUsdPrototypeName@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetUsdPrototypePath(a1, &v7);
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v7))
  {
    v5 = 0;
LABEL_6:
    *a2 = v5;
    goto LABEL_7;
  }

  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v7);
  v4 = *NameToken;
  *a2 = *NameToken;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v8);
  return sub_29A1DE3A4(&v7);
}

void sub_29AF27DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrototypeRoot(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetFromParent(a1, &v8);
  pxrInternal__aapl__pxrReserved__::HdInstancedBySchema::GetPrototypeRoots(&v8, &v6);
  if (v6)
  {
    (*(*v6 + 32))(v4, 0.0);
    if (v4[0])
    {
      v3 = v5;
      sub_29A1E21F4(a2, v5);
      sub_29A1E2240(a2 + 1, v3 + 1);
    }

    else
    {
      *a2 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a2 + 1);
    }

    sub_29ABED558(v4);
  }

  else
  {
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a2 + 1);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29AF27F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  v18 = *(v16 - 24);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_MakeBindingCopy(uint64_t a1@<X0>, uint64_t **a2@<X1>, _OWORD *a3@<X8>)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_29A1D7F98(&v12, a2[1] - *a2);
  memset(v11, 0, sizeof(v11));
  sub_29A039314(v11, a2[1] - *a2);
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    (*(**a1 + 24))(&v10);
    if (v10)
    {
      sub_29A1D8028(&v12, v6);
      pxrInternal__aapl__pxrReserved__::HdMakeStaticCopy(&v10, &v8);
      sub_29A01729C(v11, &v8);
      if (v9)
      {
        sub_29A014BEC(v9);
      }
    }

    if (*(&v10 + 1))
    {
      sub_29A014BEC(*(&v10 + 1));
    }

    ++v6;
  }

  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New((v13 - v12) >> 3, v12, v11[0], &v10);
  *a3 = v10;
  *&v10 = v11;
  sub_29A0176E4(&v10);
  v11[0] = &v12;
  sub_29A124AB0(v11);
}

void sub_29AF2806C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a11 = &a13;
  sub_29A0176E4(&a11);
  a13 = &a16;
  sub_29A124AB0(&a13);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_InstanceObserver(void *a1, void *a2)
{
  v2 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A209E840;
  a1[1] = 0;
  a1[2] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2837C(pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex **a1@<X8>)
{
  v2 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::HdRetainedSceneIndex::HdRetainedSceneIndex(v2);
  *a1 = v2;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_Populate(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(this);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::HdSceneIndexPrimView(v4, this + 16, v2);
  v3 = *pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::begin(v4);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::PrimsAdded(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 260) >= 0x11u)
  {
    v3 = *a3;
  }

  else
  {
    v3 = a3;
  }

  v4 = *(a3 + 256);
  if (v4)
  {
    v5 = result;
    v6 = 16 * v4;
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemovePrim(v5, v3);
      result = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddPrim(v5, v3);
      v3 = (v3 + 16);
      v6 -= 16;
    }

    while (v6);
  }

  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_ResyncPrim(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemovePrim(this, a2);

  return pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddPrim(this, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValueLocatorsAndNeedsResyncFlag(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl *this, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3, BOOL *a4)
{
  v20[7] = *MEMORY[0x29EDCA608];
  DefaultLocator = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(this);
  pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersection(this, DefaultLocator, &v17);
  v14 = v17;
  v15 = v18;
  sub_29ABD30AC(v16, v19);
  v12 = v19[8];
  sub_29ABD30AC(v13, v20);
  while (*(&v14 + 1) != v12)
  {
    v8 = pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IntersectionIterator::operator*(&v14);
    if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElementCount(v8) < 3)
    {
      goto LABEL_8;
    }

    Element = pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::GetElement(v8, 2);
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    if (!v10)
    {
      v10 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
    }

    if ((*v10 ^ *Element) > 7)
    {
LABEL_8:
      *a3 = 1;
      break;
    }

    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a2, v8);
    pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IntersectionIterator::operator++(&v14);
  }

  sub_29ABC3488(v13);
  sub_29ABC3488(v16);
  sub_29ABC3488(v20);
  return sub_29ABC3488(v19);
}

void sub_29AF287F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  sub_29ABC3488(v44 + 24);
  sub_29ABC3488(&a43);
  sub_29ABC3488(v43 + 24);
  _Unwind_Resume(a1);
}

const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet **pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::PrimsDirtied(const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet **result, uint64_t a2, uint64_t a3)
{
  v17[7] = *MEMORY[0x29EDCA608];
  if (result[70])
  {
    v3 = *(a3 + 7428) >= 0x11u ? *a3 : a3;
    v4 = *(a3 + 7424);
    if (v4)
    {
      v5 = result;
      v6 = 464 * v4;
      do
      {
        if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v3 + 8), v5 + 8))
        {
          if ((atomic_load_explicit(&qword_2A1750C50, memory_order_acquire) & 1) == 0)
          {
            v8 = __cxa_guard_acquire(&qword_2A1750C50);
            if (v8)
            {
              DefaultLocator = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v8);
              sub_29ABD30AC(v15, DefaultLocator);
              v17[0] = v15;
              v17[1] = 1;
              pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1750A88, v17);
              sub_29ABC3488(v15);
              __cxa_atexit(sub_29ABE62AC, &unk_2A1750A88, &dword_299FE7000);
              __cxa_guard_release(&qword_2A1750C50);
            }
          }

          if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v3 + 8), &unk_2A1750A88))
          {
            if ((atomic_load_explicit(&qword_2A1750E20, memory_order_acquire) & 1) == 0)
            {
              v10 = __cxa_guard_acquire(&qword_2A1750E20);
              if (v10)
              {
                v13 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v10);
                v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
                if (!v11)
                {
                  v11 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
                }

                pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v13, (v11 + 48), v17);
                v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
                if (!v12)
                {
                  v12 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
                }

                pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v17, v12, v15);
                v14[0] = v15;
                v14[1] = 1;
                pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1750C58, v14);
                sub_29ABC3488(v15);
                sub_29ABC3488(v17);
                __cxa_atexit(sub_29ABE62AC, &unk_2A1750C58, &dword_299FE7000);
                __cxa_guard_release(&qword_2A1750E20);
              }
            }

            pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_DirtyInstancerForInstance(v5, v3, &unk_2A1750C58);
          }

          v16 = 0x800000000;
          LOBYTE(v17[0]) = 0;
          pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValueLocatorsAndNeedsResyncFlag((v3 + 8), v15, v17, v7);
          if (LOBYTE(v17[0]) == 1)
          {
            pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemovePrim(v5, v3);
            pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddPrim(v5, v3);
          }

          else if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IsEmpty(v15))
          {
            pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_DirtyInstancerForInstance(v5, v3, v15);
          }

          sub_29ABD3178();
        }

        pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemovePrim(v5, v3);
        result = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddPrim(v5, v3);
        v3 += 464;
        v6 -= 464;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_DirtyInstancerForInstance(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v5 = v4;
  v6 = v3;
  v13 = *MEMORY[0x29EDCA608];
  result = sub_29A55CDFC(v3 + 544);
  if (v6 + 552 != result)
  {
    sub_29AF2A21C(result + 40, &v9);
    v8 = sub_29AF2A104((v6 + 24));
    sub_29ABD2F24(v10, &v9, v5);
    v12 = 0x1000000001;
    sub_29ABD3720(v10, v11, v11);
    (*(*v8 + 56))(v8, v11);
    sub_29ABD3844(v11);
    sub_29ABD3178();
  }

  return result;
}

void sub_29AF28DA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::PrimsRemoved(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 560))
  {
    v3 = *(a3 + 128);
    v4 = *(a3 + 132) >= 0x11u ? *a3 : a3;
    if (v3)
    {
      v5 = v4 + 8 * v3;
      do
      {
        if (*(result + 552))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
        }

        v4 += 8;
      }

      while (v4 != v5);
    }
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemoveInstance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v33 = *MEMORY[0x29EDCA608];
  v9 = *v4;
  sub_29AF2A21C((*v4 + 5), &v26);
  v10 = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemoveInstanceFromInfoToInstance(v8, v7, (v9 + 5));
  if (v10)
  {
    v11 = sub_29AF2A104((v8 + 24));
    sub_29A1E21F4(v28, v7);
    sub_29A1E2240(v28 + 1, v7 + 1);
    v31 = 0x1000000001;
    sub_29A1E21F4(v29, v28);
    sub_29A1E2240(v29 + 1, v28 + 1);
    (*(*v11 + 48))(v11, v29);
    sub_29AC26348(v29);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v28 + 1);
    sub_29A1DE3A4(v28);
    if (v10 == 1)
    {
      if ((atomic_load_explicit(&qword_2A1751390, memory_order_acquire) & 1) == 0)
      {
        v18 = __cxa_guard_acquire(&qword_2A1751390);
        if (v18)
        {
          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v18);
          v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
          if (!v20)
          {
            v20 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v20 + 16), v29);
          v22 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v21);
          sub_29ABD30AC(v30, v22);
          v28[0] = v29;
          v28[1] = 2;
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A17511C8, v28);
          for (i = 7; i != -7; i -= 7)
          {
            sub_29ABC3488(&v29[i]);
          }

          __cxa_atexit(sub_29ABE62AC, &unk_2A17511C8, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1751390);
        }
      }

      v12 = sub_29AF2A104((v8 + 24));
      sub_29ABD2F24(v28, &v26, &unk_2A17511C8);
      v32 = 0x1000000001;
      sub_29ABD3720(v28, v29, v29);
      (*(*v12 + 56))(v12, v29);
      sub_29ABD3844(v29);
      sub_29ABD3178();
    }

    v13 = sub_29AF2A104((v8 + 24));
    sub_29A1E21F4(v28, &v26);
    sub_29A1E2240(v28 + 1, &v27);
    v31 = 0x1000000001;
    sub_29A1E21F4(v29, v28);
    sub_29A1E2240(v29 + 1, v28 + 1);
    (*(*v13 + 48))(v13, v29);
    sub_29AC26348(v29);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v28 + 1);
    sub_29A1DE3A4(v28);
    sub_29AF43F04((v8 + 568));
    if (v10 >= 3)
    {
      v14 = sub_29AF2A104((v8 + 24));
      sub_29AF2A184((v9 + 5), &v24);
      sub_29A1E21F4(v28, &v24);
      sub_29A1E2240(v28 + 1, &v25);
      v31 = 0x1000000001;
      sub_29A1E21F4(v29, v28);
      sub_29A1E2240(v29 + 1, v28 + 1);
      (*(*v14 + 48))(v14, v29);
      sub_29AC26348(v29);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v28 + 1);
      sub_29A1DE3A4(v28);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
      sub_29A1DE3A4(&v24);
    }
  }

  v15 = *v5;
  v16 = sub_29A03AFE8((v8 + 544), v15);
  sub_29AF40ED4((v15 + 4));
  operator delete(v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v27);
  sub_29A1DE3A4(&v26);
  return v16;
}

void sub_29AF29348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v3 = &STACK[0x218];
  v4 = -112;
  do
  {
    v3 = (sub_29ABC3488(v3) - 56);
    v4 += 56;
  }

  while (v4);
  __cxa_guard_abort(&qword_2A1751390);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddPrim(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInfo(this, &v5);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddInstance(this, a2, &v5);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  return sub_29A1DE3A4(&v5);
}

void sub_29AF294DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AF2967C(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInfo@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a2 + 4));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetUsdPrototypeName(a1, &v7);
  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = v7;
  *(a2 + 16) = v7;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrototypeRoot(a1, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  return result;
}

_DWORD *sub_29AF2967C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInfo(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29AC1199C(this + 2);
  (*(*v4 + 16))(&v5);
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInfo(&v6, a2);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AF29790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddInstance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v40 = *MEMORY[0x29EDCA608];
  v32 = v4;
  v7 = sub_29A389294((v3 + 520), v4, &unk_29B4D6118, &v32);
  v32 = v5 + 1;
  v8 = sub_29A166C1C(v7 + 5, v5 + 1, &unk_29B4D6118, &v32);
  if (!v8[7])
  {
    v9 = sub_29AF2A104((v6 + 24));
    sub_29AF2A184(v5, &v32);
    v33 = 0;
    v10 = sub_29AC1199C((v6 + 16));
    (*(*v10 + 16))(&v27);
    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_MakeBindingCopy(&v27 + 8, (v6 + 40), &v34);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    sub_29AC3E6DC(&v29, &v32, &v35, 1uLL);
    (*(*v9 + 40))(v9, &v29);
    *&v24 = &v29;
    sub_29AC3E968(&v24);
    if (*(&v34 + 1))
    {
      sub_29A014BEC(*(&v34 + 1));
    }

    if ((v33 & 7) != 0)
    {
      atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v32 + 1);
    sub_29A1DE3A4(&v32);
    if (v28)
    {
      sub_29A014BEC(v28);
    }

    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  sub_29AF2A21C(v5, &v25);
  v32 = v5 + 2;
  v11 = sub_29AF41074(v8 + 5, v5 + 2, &unk_29B4D6118, &v32);
  if (v11[5])
  {
    if ((atomic_load_explicit(&qword_2A17511C0, memory_order_acquire) & 1) == 0)
    {
      v17 = __cxa_guard_acquire(&qword_2A17511C0);
      if (v17)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v17);
        v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
        if (!v19)
        {
          v19 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, (v19 + 16), &v32);
        v21 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v20);
        sub_29ABD30AC(v38, v21);
        v29 = &v32;
        v30 = 2;
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1750FF8, &v29);
        for (i = 7; i != -7; i -= 7)
        {
          sub_29ABC3488(&(&v32)[i]);
        }

        __cxa_atexit(sub_29ABE62AC, &unk_2A1750FF8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A17511C0);
      }
    }

    v12 = sub_29AF2A104((v6 + 24));
    sub_29ABD2F24(&v29, &v25, &unk_2A1750FF8);
    v39 = 0x1000000001;
    sub_29ABD3720(&v29, &v32, &v32);
    (*(*v12 + 56))(v12, &v32);
    sub_29ABD3844(&v32);
    sub_29ABD3178();
  }

  v13 = operator new(0x30uLL);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = &unk_2A20A1160;
  v13[5] = 0;
  v13[4] = 0;
  v13[3] = v13 + 4;
  v14 = v11[6];
  v11[5] = (v13 + 3);
  v11[6] = v13;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  sub_29AF2A104((v6 + 24));
  sub_29AF2A2A8(v5, &v32);
  v33 = 0;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(&v27);
  v34 = v27;
  v27 = 0uLL;
  sub_29A1E21F4(&v35, &v25);
  sub_29A1E2240(&v36, &v26);
  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v15)
  {
    v15 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v16 = *(v15 + 21);
  v37 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AF2A3BC(v5, &v23);
  sub_29AF2A320((v6 + 16));
}

void sub_29AF29ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v7 = &STACK[0x258];
  v8 = -112;
  do
  {
    v7 = (sub_29ABC3488(v7) - 56);
    v8 += 56;
  }

  while (v8);
  __cxa_guard_abort(&qword_2A17511C0);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF2A104(uint64_t *a1)
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

_DWORD *sub_29AF2A184@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>, _DWORD *a2@<X8>)
{
  v4 = atomic_load(&qword_2A1751588);
  if (!v4)
  {
    v4 = sub_29AF40AB0();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(this, v4, &v6);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v6, (this + 8), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  return sub_29A1DE3A4(&v6);
}

void sub_29AF2A208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AF2A21C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_29AF2A2A8(a1, &v5);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  if (!v3)
  {
    v3 = sub_29AF40CCC(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v5, v3, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  return sub_29A1DE3A4(&v5);
}

void sub_29AF2A294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AF2A2A8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_29AF2A184(a1, &v5);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v5, (a1 + 16), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  return sub_29A1DE3A4(&v5);
}

void sub_29AF2A30C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AF2A3BC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_29AF2A21C(a1, &v5);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  if (!v3)
  {
    v3 = sub_29AF40CCC(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v5, (v3 + 8), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  return sub_29A1DE3A4(&v5);
}

void sub_29AF2A438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetDataSourceForInstance@<X0>(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _OWORD *a3@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = sub_29AF43FB8(&v16, this);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetSchemaToken(v5);
  v10 = v16;
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1u, memory_order_relaxed);
  }

  sub_29A1E21F4(&v11, a2);
  sub_29A1E2240(v12, a2 + 1);
  v7 = operator new(0x38uLL);
  v17 = v10;
  sub_29A1E21F4(&v18, &v11);
  sub_29A1E2240(&v19, v12);
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A20A17C0;
  *(v8 + 8) = v17;
  v17 = 0uLL;
  sub_29A1E21F4(v8 + 6, &v18);
  sub_29A1E2240(v8 + 7, &v19);
  v21 = v8;
  pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource::HdLazyContainerDataSource(v7, v20);
  sub_29AF44244(&v13, v7);
  sub_29AC38844(v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  sub_29B2A0A84(&v18, &v17 + 1);
  v14 = v13;
  v13 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v14, v15);
  sub_29B2CBDE4(v15, a3, &v14 + 1, &v13 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v12);
  sub_29A1DE3A4(&v11);
  result = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    if (atomic_fetch_add_explicit((*(&v16 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29AF2A688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_DirtyInstancesAndResetPointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v16 = *MEMORY[0x29EDCA608];
  v5 = *v4;
  if (*v4)
  {
    v6 = v3;
    v7 = *(v4 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v4 + 8);
      *v4 = 0;
      *(v4 + 8) = 0;
      if (v8)
      {
        sub_29A014BEC(v8);
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 8) = 0;
    }

    v9 = *v5;
    if (*v5 != v5 + 1)
    {
      if ((atomic_load_explicit(qword_2A1751560, memory_order_acquire) & 1) == 0)
      {
        v11 = __cxa_guard_acquire(qword_2A1751560);
        if (v11)
        {
          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetDefaultLocator(v11);
          sub_29ABD30AC(v14, DefaultLocator);
          v13[0] = v14;
          v13[1] = 1;
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1751398, v13);
          sub_29ABC3488(v14);
          __cxa_atexit(sub_29ABE62AC, &unk_2A1751398, &dword_299FE7000);
          __cxa_guard_release(qword_2A1751560);
        }
      }

      v10 = sub_29AF2A104((v6 + 24));
      sub_29ABD2F24(v13, v9 + 7, &unk_2A1751398);
      v15 = 0x1000000001;
      sub_29ABD3720(v13, v14, v14);
      (*(*v10 + 56))(v10, v14);
      sub_29ABD3844(v14);
      sub_29ABD3178();
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29AF2A980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_29ABC3488(&a68);
  __cxa_guard_abort(qword_2A1751560);
  if (v68)
  {
    sub_29A014BEC(v68);
  }

  _Unwind_Resume(a1);
}

void sub_29AF2A9E0(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29AF2A9D8);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = sub_29A55CDFC(this + 544);
  v5 = result;
  if ((this + 552) != result)
  {
    return pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemoveInstance(this, a2, &v5);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemoveInstanceFromInfoToInstance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29A55CDFC(a1 + 520);
  if (a1 + 528 == v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_29A31B8F0(v5 + 40, (a3 + 8));
  if (v6 + 48 == v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_29A31B8F0(v7 + 40, (a3 + 16));
  if (v8 + 48 == v9)
  {
    return 0;
  }

  v10 = v9;
  sub_29A389594(*(v9 + 40));
  if (*(v10[5] + 16))
  {
    return 1;
  }

  sub_29AC6BBD0((v8 + 40), v10);
  if (*(v8 + 56))
  {
    return 2;
  }

  sub_29AF43F60((v6 + 40), v8);
  if (*(v6 + 56))
  {
    return 3;
  }

  sub_29A03AFE8((a1 + 520), v6);
  sub_29AF40DB4(v6 + 32);
  operator delete(v6);
  return 4;
}

uint64_t sub_29AF2AB50(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B2A4268(a1);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInstanceSchemaDataSource(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29A55CDFC(this + 544);
  if ((this + 552) == v5)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    v6 = v5;
    if ((atomic_load_explicit(&qword_2A1751580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751580))
    {
      LODWORD(v17) = 0;
      sub_29AF2ADF0(&v17, &v18);
      xmmword_2A1751570 = v18;
      __cxa_atexit(sub_29AF2AE58, &xmmword_2A1751570, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1751580);
    }

    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    sub_29AF2A21C(v6 + 40, &v14);
    sub_29ABE8360(&v14, &v16);
    v17 = v16;
    v16 = 0uLL;
    v7 = pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::SetInstancer(&v18, &v17);
    v8 = pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::SetPrototypeIndex(v7, &xmmword_2A1751570);
    InstanceIndex = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInstanceIndex(this, v6 + 40);
    v10 = operator new(0x10uLL);
    *v10 = &unk_2A2077528;
    v10[2] = InstanceIndex;
    sub_29ABF40E4(&v12, v10);
    v13 = v12;
    v12 = 0uLL;
    v11 = pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::SetInstanceIndex(v8, &v13);
    pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::Build(v11, a2);
    if (*(&v13 + 1))
    {
      sub_29A014BEC(*(&v13 + 1));
    }

    if (*(&v12 + 1))
    {
      sub_29A014BEC(*(&v12 + 1));
    }

    if (*(&v17 + 1))
    {
      sub_29A014BEC(*(&v17 + 1));
    }

    if (*(&v16 + 1))
    {
      sub_29A014BEC(*(&v16 + 1));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15);
    sub_29A1DE3A4(&v14);
    if (*(&v20 + 1))
    {
      sub_29A014BEC(*(&v20 + 1));
    }

    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }
  }
}

void *sub_29AF2ADF0@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A2077528;
  v4[2] = *a1;

  return sub_29ABF40E4(a2, v4);
}

uint64_t sub_29AF2AE58(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInstanceIndex(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInstanceToIndex(a1, a2, &v5);
  if (!v5 || (v2 = sub_29A1EF6EC(v5), v5 + 8 == v2))
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = *(v2 + 36);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return v3;
}

void sub_29AF2AEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInstanceToIndex(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29AF2A21C(a2, v11);
  v6 = sub_29A55CDFC(a1 + 568);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11 + 1);
  sub_29A1DE3A4(v11);
  if (a1 + 576 == v6)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    sub_29ABEC66C((v6 + 40), a3);
    if (!*a3)
    {
      pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_ComputeInstanceToIndex(a1, a2, v11);
      v7 = v11[1];
      v8 = a3[1];
      *a3 = v11[0];
      a3[1] = v7;
      if (v8)
      {
        sub_29A014BEC(v8);
        v7 = a3[1];
      }

      v9 = *a3;
      v10 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29ABEC600((v6 + 40), &v9);
      if (v10)
      {
        sub_29A014BEC(v10);
      }
    }
  }
}

void sub_29AF2AFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v13 = *(v11 + 8);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_ComputeInstanceToIndex@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t ***a3@<X8>)
{
  v6 = operator new(0x30uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A20A18C8;
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = (v6 + 4);
  *a3 = v6 + 3;
  a3[1] = v6;
  result = sub_29A55CDFC(a1 + 520);
  v8 = result;
  if (a1 + 528 != result)
  {
    result = sub_29A31B8F0(result + 40, (a2 + 8));
    v9 = result;
    if (v8 + 48 != result)
    {
      result = sub_29A31B8F0(result + 40, (a2 + 16));
      if (v9 + 48 != result)
      {
        v10 = *(result + 40);
        v13 = *v10;
        v11 = v10 + 1;
        v12 = v13;
        if (v13 != v11)
        {
          v14 = 0;
          do
          {
            v15 = *a3;
            v19 = v12 + 7;
            result = sub_29AD04BE4(v15, v12 + 28, &unk_29B4D6118, &v19);
            *(result + 36) = v14;
            v16 = v12[1];
            if (v16)
            {
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v17 = v12[2];
                v18 = *v17 == v12;
                v12 = v17;
              }

              while (!v18);
            }

            ++v14;
            v12 = v17;
          }

          while (v17 != v11);
        }
      }
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::UsdImaging_NiInstanceAggregationSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(a1);
  *v3 = &unk_2A209E880;
  v3[14] = 0;
  v3[15] = 0;
  v3[16] = 0;
  v4 = operator new(0x250uLL);
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_InstanceObserver(v4, a2);
}

void sub_29AF2B298(_Unwind_Exception *a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = a10;
  if (a10 && atomic_fetch_add_explicit((a10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v13 + 8))(v13);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(v11, a2);
  v14 = *(v10 + 17);
  *(v10 + 17) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_29A124AB0(&a9);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(v10);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::_RetainedSceneIndexObserver::_RetainedSceneIndexObserver(void *result, uint64_t a2)
{
  *result = &unk_2A209E8C0;
  result[1] = 0;
  result[2] = a2;
  return result;
}

{
  *result = &unk_2A209E8C0;
  result[1] = 0;
  result[2] = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::~UsdImaging_NiInstanceAggregationSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 144), a2);
  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = (this + 112);
  sub_29A124AB0(&v4);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::~UsdImaging_NiInstanceAggregationSceneIndex(this, a2);

  operator delete(v2);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetInputScenes(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *(*(this + 17) + 24);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AF2A104((*(this + 17) + 24)) + 16);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AF2A104((*(this + 17) + 24)) + 24);

  return v2();
}

pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetPrototypeNameFromInstancerPath@<X0>(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this@<X0>, atomic_uint **a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(this);
  if (result <= 3)
  {
    goto LABEL_5;
  }

  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(this);
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  if (!result)
  {
    result = sub_29AF40CCC(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  }

  if ((*result ^ *NameToken) < 8)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v10);
    v7 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v10);
    v8 = *v7;
    *a2 = *v7;
    if ((v8 & 7) != 0)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a2 = v9;
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  else
  {
LABEL_5:
    *a2 = 0;
  }

  return result;
}

void sub_29AF2B678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetBindingScopeFromInstancerPath@<X0>(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this@<X0>, _DWORD *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(this, &v5);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v5, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6);
  return sub_29A1DE3A4(&v5);
}

void sub_29AF2B6E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AF2B750(uint64_t a1)
{
  *a1 = &unk_2A209E840;
  sub_29AF40F58(a1 + 568, *(a1 + 576));
  sub_29AF40E78(a1 + 544, *(a1 + 552));
  sub_29AF40D58(a1 + 520, *(a1 + 528));
  sub_29ABD3178();
}

void sub_29AF2B7E8(uint64_t a1)
{
  *a1 = &unk_2A209E840;
  sub_29AF40F58(a1 + 568, *(a1 + 576));
  sub_29AF40E78(a1 + 544, *(a1 + 552));
  sub_29AF40D58(a1 + 520, *(a1 + 528));
  sub_29ABD3178();
}

void sub_29AF2B884(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

void sub_29AF2B8AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2CB0C(a2);
}

void sub_29AF2B90C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2D0F4(a2);
}

void sub_29AF2B96C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2D6DC(a2);
}

void sub_29AF2B9CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2DCC4(a2);
}

void sub_29AF2BA2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2E2AC(a2);
}

void sub_29AF2BA8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2E894(a2);
}

void sub_29AF2BAEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2EE7C(a2);
}

void sub_29AF2BB4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2F464(a2);
}

void sub_29AF2BBAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2FA4C(a2);
}

void sub_29AF2BC0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF30034(a2);
}

void sub_29AF2BC6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF30620(a2);
}

void sub_29AF2BCCC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF30C0C(a2);
}

void sub_29AF2BD2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF311F4(a2);
}

void sub_29AF2BD8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3188C(a2);
}

void sub_29AF2BDEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF31F28(a2);
}

void sub_29AF2BE4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3252C(a2);
}

void sub_29AF2BEAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF32B40(a2);
}

void sub_29AF2BF0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF33128(a2);
}

void sub_29AF2BF6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF33710(a2);
}

void sub_29AF2BFCC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF33D20(a2);
}

void sub_29AF2C02C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF34308(a2);
}

void sub_29AF2C08C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF34938(a2);
}

void sub_29AF2C0EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF34F60(a2);
}

void sub_29AF2C14C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3555C(a2);
}

void sub_29AF2C1AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF35B8C(a2);
}

void sub_29AF2C20C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF361B4(a2);
}

void sub_29AF2C26C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF367B0(a2);
}

void sub_29AF2C2CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF36DD8(a2);
}

void sub_29AF2C32C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF37408(a2);
}

void sub_29AF2C38C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF37A38(a2);
}

void sub_29AF2C3EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF380A0(a2);
}

void sub_29AF2C44C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF386F4(a2);
}

void sub_29AF2C4AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF38D24(a2);
}

void sub_29AF2C50C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF39360(a2);
}

void sub_29AF2C56C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF399BC(a2);
}

void sub_29AF2C5CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3A014(a2);
}

void sub_29AF2C62C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3A668(a2);
}

void sub_29AF2C68C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3AC84(a2);
}

void sub_29AF2C6EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3B29C(a2);
}

void sub_29AF2C74C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3B8CC(a2);
}

void sub_29AF2C7AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3BEEC(a2);
}

void sub_29AF2C80C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3C4C8(a2);
}

void sub_29AF2C86C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3CAEC(a2);
}

void sub_29AF2C8CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3D110(a2);
}

void sub_29AF2C92C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3D734(a2);
}

void sub_29AF2C98C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3DD24(a2);
}

void sub_29AF2C9EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3E314(a2);
}

void sub_29AF2CA4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3E91C(a2);
}

void sub_29AF2CAAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if ((v3 & 4) != 0)
  {
    (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3F9D0(a2);
}

void sub_29AF2CB90(void *a1, void *a2)
{
  *a1 = &unk_2A209E948;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2CC44(void *a1)
{
  *a1 = &unk_2A209E948;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2CCC0(void *a1)
{
  *a1 = &unk_2A209E948;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2CD40(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20474B8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

uint64_t sub_29AF2CDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A20CB6C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2CEA4((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A20D1F0(a2);
      *(*(a2 + 32) + v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2CEA4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A1EFCDC(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A2CB120(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4 & 1;
}

void sub_29AF2CFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2CFE8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209E998;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2D040(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2D05C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2D084(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2D0B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E9E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2D178(void *a1, void *a2)
{
  *a1 = &unk_2A209EA10;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2D22C(void *a1)
{
  *a1 = &unk_2A209EA10;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2D2A8(void *a1)
{
  *a1 = &unk_2A209EA10;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2D328(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D888;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
}

uint64_t sub_29AF2D3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC82B6C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2D48C((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29AC830F0(a2);
      *(*(a2 + 32) + v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2D48C(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A1F8DE8(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29AD64314(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2D5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2D5D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EA60;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2D628(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2D644(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2D66C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2D69C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EAB0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2D760(void *a1, void *a2)
{
  *a1 = &unk_2A209EAD8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2D814(void *a1)
{
  *a1 = &unk_2A209EAD8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2D890(void *a1)
{
  *a1 = &unk_2A209EAD8;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2D910(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043DD0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

uint64_t sub_29AF2D9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19E1E4(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2DA74((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A19E500(a2);
      *(*(a2 + 32) + v9) = v10;
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2DA74(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A1F9040(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A19E5FC(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2DB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2DBB8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EB28;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2DC10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2DC2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2DC54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2DC84(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EB78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2DD48(void *a1, void *a2)
{
  *a1 = &unk_2A209EBA0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2DDFC(void *a1)
{
  *a1 = &unk_2A209EBA0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}

void sub_29AF2DE78(void *a1)
{
  *a1 = &unk_2A209EBA0;
  v1 = a1[4];
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v2 = a1[3];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29ABD4DDC();
}