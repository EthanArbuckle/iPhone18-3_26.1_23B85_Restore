void sub_29A56901C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A213190(va);
  sub_29A213190(va1);
  _Unwind_Resume(a1);
}

void sub_29A569050(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A569118(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A5691E4(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20479B0;
    v8 = 0;
    v7[0] = &unk_2A2050868;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A569258(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v12 = sub_29A3302A8(a2);
  v13 = sub_29A4A2D48(v12, a3, &v39, a5);
  if (v13)
  {
    v14 = sub_29A3302A8(a2);
    if ((sub_29A4A2D48(v14, a3, &v36, a6) & 1) == 0)
    {
      sub_29A4ABEE8(&v36, &v39);
    }

    v15 = &v40 + 8;
    if (v39 != v36 || (v16 = (a4 - a5) / (a6 - a5), v16 == 0.0))
    {
      v17 = *(a1 + 8);
      v18 = v17[4];
      v19 = v40;
      v17[4] = v41;
      v41 = v18;
      v20 = v17[2];
      v21 = *v17;
      *v17 = v39;
      v17[2] = v19;
      v39 = v21;
      *&v40 = v20;
LABEL_7:
      v22 = v17[3];
      v17[3] = *v15;
      *v15 = v22;
      goto LABEL_8;
    }

    v17 = *(a1 + 8);
    if (v16 == 1.0)
    {
      v15 = &v37 + 8;
      v24 = v17[4];
      v25 = v37;
      v17[4] = v38;
      v38 = v24;
      v26 = v17[2];
      v27 = *v17;
      *v17 = v36;
      v17[2] = v25;
      v36 = v27;
      *&v37 = v26;
      goto LABEL_7;
    }

    v42 = 0;
    v43 = &v42;
    sub_29A21324C(v17, v39, &v43);
    v28 = v41;
    v29 = v38;
    v30 = *(a1 + 8);
    sub_29A21358C(v30);
    v31 = **(a1 + 8);
    if (v31)
    {
      v32 = *(v30 + 32);
      do
      {
        v33 = *v28++;
        v34 = v33;
        v35 = *v29++;
        *v32++ = (1.0 - v16) * v34 + v16 * v35;
        --v31;
      }

      while (v31);
    }
  }

LABEL_8:
  sub_29A213190(&v36);
  sub_29A213190(&v39);
  return v13;
}

void sub_29A569488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A213190(va);
  sub_29A213190(va1);
  _Unwind_Resume(a1);
}

void sub_29A569678(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A569740(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56980C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20407C8;
    v8 = 0;
    v7[0] = &unk_2A2050A60;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A569880(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  *&v28.f64[1] = &v25;
  *&v29.f64[0] = &stru_2A20407C8;
  LOWORD(v29.f64[1]) = 0;
  *&v28.f64[0] = &unk_2A2050A60;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (LOBYTE(v29.f64[1]) ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    *&v28.f64[1] = &v23;
    *&v29.f64[0] = &stru_2A20407C8;
    LOWORD(v29.f64[1]) = 0;
    *&v28.f64[0] = &unk_2A2050A60;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (LOBYTE(v29.f64[1]) & 1) != 0)
    {
      v23 = v25;
      v24 = v26;
    }

    v14 = (a3 - a4) / (a5 - a4);
    v28 = v25;
    v29 = v26;
    pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v28, 1.0 - v14);
    v21 = v15[1];
    v22 = *v15;
    v28 = v23;
    v29 = v24;
    pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v28, v14);
    v17 = v16[1];
    v27[0] = *v16;
    v27[1] = v17;
    v28 = v22;
    v29 = v21;
    pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator+=(v28.f64, v27);
    v18 = v29;
    v19 = *(a1 + 8);
    *v19 = v28;
    v19[1] = v18;
  }

  return v12;
}

void sub_29A569D6C(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A569E34(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A569F00(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042290;
    v8 = 0;
    v7[0] = &unk_2A2050A98;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A569F74(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A44E8(v12, a3, &v42, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A44E8(v13, a3, &v39, a6) & 1) == 0)
    {
      sub_29A4AC7A8(&v39, &v42);
    }

    v14 = &v43 + 8;
    if (v42 != v39 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v43;
      v16[4] = v44;
      v44 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v42;
      v16[2] = v18;
      v42 = v20;
      *&v43 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v40 + 8;
      v22 = v16[4];
      v23 = v40;
      v16[4] = v41;
      v41 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v39;
      v16[2] = v23;
      v39 = v25;
      *&v40 = v24;
      goto LABEL_7;
    }

    v46 = 0u;
    v47 = 0u;
    *&v45[0] = &v46;
    sub_29A22147C(v16, v42, v45);
    v26 = v44;
    v27 = v41;
    v28 = *(a1 + 8);
    sub_29A2216E8(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = (*(v28 + 32) + 16);
      do
      {
        v31 = *(v26 + 16);
        v46 = *v26;
        v47 = v31;
        pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v46, 1.0 - v15);
        v37 = v32[1];
        v38 = *v32;
        v33 = *(v27 + 16);
        v46 = *v27;
        v47 = v33;
        pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(&v46, v15);
        v35 = v34[1];
        v45[0] = *v34;
        v45[1] = v35;
        v46 = v38;
        v47 = v37;
        pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator+=(v46.f64, v45);
        v36 = v47;
        v30[-1] = v46;
        *v30 = v36;
        v30 += 2;
        v27 += 32;
        v26 += 32;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
}

void sub_29A56A4A0(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56A568(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56A634(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20407F8;
    v8 = 0;
    v7[0] = &unk_2A2050AD0;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A56A6A8(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v49 = *MEMORY[0x29EDCA608];
  v10 = sub_29A3302A8(a2);
  *&v39.f64[1] = &v32;
  *&v40 = &stru_2A20407F8;
  WORD4(v40) = 0;
  *&v39.f64[0] = &unk_2A2050AD0;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (BYTE8(v40) ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    *&v39.f64[1] = &v27;
    *&v40 = &stru_2A20407F8;
    WORD4(v40) = 0;
    *&v39.f64[0] = &unk_2A2050AD0;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (BYTE8(v40) & 1) != 0)
    {
      v29 = v34;
      v30 = v35;
      v31 = v36;
      v27 = v32;
      v28 = v33;
    }

    v14 = (a3 - a4) / (a5 - a4);
    v41 = v34;
    v42 = v35;
    v43 = v36;
    v39 = v32;
    v40 = v33;
    pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v39, 1.0 - v14);
    v16 = *(v15 + 48);
    v46 = *(v15 + 32);
    v47 = v16;
    v48 = *(v15 + 64);
    v17 = *(v15 + 16);
    v44 = *v15;
    v45 = v17;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v39, v14);
    v37[0] = *v18;
    v19 = *(v18 + 16);
    v20 = *(v18 + 32);
    v21 = *(v18 + 48);
    v38 = *(v18 + 64);
    v37[2] = v20;
    v37[3] = v21;
    v37[1] = v19;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v39 = v44;
    v40 = v45;
    pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator+=(v39.f64, v37);
    v22 = *(a1 + 8);
    *v22 = v39;
    v23 = v40;
    v24 = v41;
    v25 = v42;
    *(v22 + 64) = v43;
    *(v22 + 32) = v24;
    *(v22 + 48) = v25;
    *(v22 + 16) = v23;
  }

  return v12;
}

void sub_29A56A92C(double a1, double a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::Usd_ClipSet **a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v6 = &unk_2A205A058;
  v7 = v10;
  v4 = &unk_2A205A058;
  v5 = v8;
  pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_FindClipIndexForTime(*a4, a2);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>();
}

void sub_29A56AD20(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56ADE8(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56AEB4(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042278;
    v8 = 0;
    v7[0] = &unk_2A2050B08;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A56AF28(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v72 = *MEMORY[0x29EDCA608];
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = &unk_2A205A058;
  v53 = &v57;
  v50 = &unk_2A205A058;
  v51 = &v54;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A48D8(v12, a3, &v57, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A48D8(v13, a3, &v54, a6) & 1) == 0)
    {
      sub_29A4AC994(&v54, &v57);
    }

    v14 = &v58 + 8;
    if (v57 != v54 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v58;
      v16[4] = v59;
      v59 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v57;
      v16[2] = v18;
      v57 = v20;
      *&v58 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v55 + 8;
      v22 = v16[4];
      v23 = v55;
      v16[4] = v56;
      v56 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v54;
      v16[2] = v23;
      v54 = v25;
      *&v55 = v24;
      goto LABEL_7;
    }

    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    *&v67 = &v62;
    sub_29A222544(v16, v57, &v67);
    v26 = v59;
    v27 = v56;
    v28 = *(a1 + 8);
    sub_29A222868(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v62 = *v26;
        v31 = *(v26 + 16);
        v32 = *(v26 + 32);
        v33 = *(v26 + 48);
        v66 = *(v26 + 64);
        v64 = v32;
        v65 = v33;
        v63 = v31;
        pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v62, 1.0 - v15);
        v68 = v34[1];
        v69 = v34[2];
        v70 = v34[3];
        v71 = *(v34 + 8);
        v67 = *v34;
        v62 = *v27;
        v35 = *(v27 + 16);
        v36 = *(v27 + 32);
        v37 = *(v27 + 48);
        v66 = *(v27 + 64);
        v64 = v36;
        v65 = v37;
        v63 = v35;
        pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(&v62, v15);
        v60[0] = *v38;
        v39 = *(v38 + 16);
        v40 = *(v38 + 32);
        v41 = *(v38 + 48);
        v61 = *(v38 + 64);
        v60[2] = v40;
        v60[3] = v41;
        v60[1] = v39;
        v47 = v69;
        v48 = v70;
        v49 = v71;
        v45 = v67;
        v46 = v68;
        pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator+=(&v45, v60);
        *v30 = v45;
        v42 = v46;
        v43 = v47;
        v44 = v48;
        *(v30 + 64) = v49;
        *(v30 + 32) = v43;
        *(v30 + 48) = v44;
        *(v30 + 16) = v42;
        v30 += 72;
        v27 += 72;
        v26 += 72;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

void sub_29A56B544(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56B60C(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56B6D8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2040818;
    v8 = 0;
    v7[0] = &unk_2A2050B40;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A56B74C(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v68 = *MEMORY[0x29EDCA608];
  v10 = sub_29A3302A8(a2);
  *&v52.f64[1] = &v43;
  *&v53.f64[0] = &stru_2A2040818;
  LOWORD(v53.f64[1]) = 0;
  *&v52.f64[0] = &unk_2A2050B40;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (LOBYTE(v53.f64[1]) ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    *&v52.f64[1] = &v35;
    *&v53.f64[0] = &stru_2A2040818;
    LOWORD(v53.f64[1]) = 0;
    *&v52.f64[0] = &unk_2A2050B40;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (LOBYTE(v53.f64[1]) & 1) != 0)
    {
      v39 = v47;
      v40 = v48;
      v41 = v49;
      v42 = v50;
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
    }

    v14 = (a3 - a4) / (a5 - a4);
    v56 = v47;
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v52, 1.0 - v14);
    v16 = v15[5];
    v64 = v15[4];
    v65 = v16;
    v17 = v15[7];
    v66 = v15[6];
    v67 = v17;
    v18 = v15[1];
    v60 = *v15;
    v61 = v18;
    v19 = v15[3];
    v62 = v15[2];
    v63 = v19;
    v56 = v39;
    v57 = v40;
    v58 = v41;
    v59 = v42;
    v52 = v35;
    v53 = v36;
    v54 = v37;
    v55 = v38;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v52, v14);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[3];
    v51[2] = v20[2];
    v51[3] = v23;
    v51[0] = v21;
    v51[1] = v22;
    v24 = v20[4];
    v25 = v20[5];
    v26 = v20[7];
    v51[6] = v20[6];
    v51[7] = v26;
    v51[4] = v24;
    v51[5] = v25;
    v58 = v66;
    v59 = v67;
    v56 = v64;
    v57 = v65;
    v54 = v62;
    v55 = v63;
    v52 = v60;
    v53 = v61;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator+=(v52.f64, v51);
    v27 = *(a1 + 8);
    v28 = v52;
    v29 = v53;
    v30 = v55;
    v27[2] = v54;
    v27[3] = v30;
    *v27 = v28;
    v27[1] = v29;
    v31 = v56;
    v32 = v57;
    v33 = v59;
    v27[6] = v58;
    v27[7] = v33;
    v27[4] = v31;
    v27[5] = v32;
  }

  return v12;
}

void sub_29A56B9E8(double a1, double a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::Usd_ClipSet **a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v6 = &unk_2A205A0C8;
  v7 = v10;
  v4 = &unk_2A205A0C8;
  v5 = v8;
  pxrInternal__aapl__pxrReserved__::Usd_ClipSet::_FindClipIndexForTime(*a4, a2);
  pxrInternal__aapl__pxrReserved__::Usd_Clip::QueryTimeSample<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>();
}

void sub_29A56BE00(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56BEC8(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56BF94(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042260;
    v8 = 0;
    v7[0] = &unk_2A2050B78;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A56C008(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v92 = *MEMORY[0x29EDCA608];
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v67 = &unk_2A205A0C8;
  v68 = &v72;
  v65 = &unk_2A205A0C8;
  v66 = &v69;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A4CC8(v12, a3, &v72, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A4CC8(v13, a3, &v69, a6) & 1) == 0)
    {
      sub_29A4ACB80(&v69, &v72);
    }

    v14 = &v73 + 8;
    if (v72 != v69 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v73;
      v16[4] = v74;
      v74 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v72;
      v16[2] = v18;
      v72 = v20;
      *&v73 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v70 + 8;
      v22 = v16[4];
      v23 = v70;
      v16[4] = v71;
      v71 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v69;
      v16[2] = v23;
      v69 = v25;
      *&v70 = v24;
      goto LABEL_7;
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    *&v84 = &v76;
    sub_29A197F54(v16, v72, &v84);
    v26 = v74;
    v27 = v71;
    v28 = *(a1 + 8);
    sub_29A198240(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v31 = *v26;
        v32 = v26[1];
        v33 = v26[3];
        v78 = v26[2];
        v79 = v33;
        v76 = v31;
        v77 = v32;
        v34 = v26[4];
        v35 = v26[5];
        v36 = v26[7];
        v82 = v26[6];
        v83 = v36;
        v80 = v34;
        v81 = v35;
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v76, 1.0 - v15);
        v88 = v37[4];
        v89 = v37[5];
        v90 = v37[6];
        v91 = v37[7];
        v84 = *v37;
        v85 = v37[1];
        v86 = v37[2];
        v87 = v37[3];
        v38 = *v27;
        v39 = v27[1];
        v40 = v27[3];
        v78 = v27[2];
        v79 = v40;
        v76 = v38;
        v77 = v39;
        v41 = v27[4];
        v42 = v27[5];
        v43 = v27[7];
        v82 = v27[6];
        v83 = v43;
        v80 = v41;
        v81 = v42;
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v76, v15);
        v45 = *v44;
        v46 = v44[1];
        v47 = v44[3];
        v75[2] = v44[2];
        v75[3] = v47;
        v75[0] = v45;
        v75[1] = v46;
        v48 = v44[4];
        v49 = v44[5];
        v50 = v44[7];
        v75[6] = v44[6];
        v75[7] = v50;
        v75[4] = v48;
        v75[5] = v49;
        v61 = v88;
        v62 = v89;
        v63 = v90;
        v64 = v91;
        v57 = v84;
        v58 = v85;
        v59 = v86;
        v60 = v87;
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator+=(&v57, v75);
        v51 = v57;
        v52 = v58;
        v53 = v60;
        v30[2] = v59;
        v30[3] = v53;
        *v30 = v51;
        v30[1] = v52;
        v54 = v61;
        v55 = v62;
        v56 = v64;
        v30[6] = v63;
        v30[7] = v56;
        v30[4] = v54;
        v30[5] = v55;
        v30 += 8;
        v27 += 8;
        v26 += 8;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

void sub_29A56C530(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56C5F8(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56C6C4(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2040948;
    v8 = 0;
    v7[0] = &unk_2A2050E50;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A56C738(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v18 = &v16;
  v19 = &stru_2A2040948;
  v20 = 0;
  v17 = &unk_2A2050E50;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v20 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v18 = &v15;
    v19 = &stru_2A2040948;
    v20 = 0;
    v17 = &unk_2A2050E50;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v20 & 1) != 0)
    {
      v15 = v16;
    }

    **(a1 + 8) = vaddq_f64(vmulq_n_f64(v16, 1.0 - (a3 - a4) / (a5 - a4)), vmulq_n_f64(v15, (a3 - a4) / (a5 - a4)));
  }

  return v12;
}

void sub_29A56CB9C(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56CC64(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56CD30(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042200;
    v8 = 0;
    v7[0] = &unk_2A2050E88;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A56CDA4(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A6858(v12, a3, &v37, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A6858(v13, a3, &v34, a6) & 1) == 0)
    {
      sub_29A4AD84C(&v34, &v37);
    }

    v14 = &v38 + 8;
    if (v37 != v34 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v38;
      v16[4] = v39;
      v39 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v37;
      v16[2] = v18;
      v37 = v20;
      *&v38 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v35 + 8;
      v22 = v16[4];
      v23 = v35;
      v16[4] = v36;
      v36 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v34;
      v16[2] = v23;
      v34 = v25;
      *&v35 = v24;
      goto LABEL_7;
    }

    v40[0] = 0;
    v40[1] = 0;
    v41 = v40;
    sub_29A192304(v16, v37, &v41);
    v26 = v39;
    v27 = v36;
    v28 = *(a1 + 8);
    sub_29A19255C(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v31 = *v26++;
        v32 = v31;
        v33 = *v27++;
        *v30++ = vaddq_f64(vmulq_n_f64(v32, 1.0 - (a4 - a5) / (a6 - a5)), vmulq_n_f64(v33, (a4 - a5) / (a6 - a5)));
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29A56D1A0(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56D268(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56D334(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2040958;
    v8 = 0;
    v7[0] = &unk_2A2050DE0;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A56D3A8(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v20 = &v18;
  v21 = &stru_2A2040958;
  v22 = 0;
  v19 = &unk_2A2050DE0;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v22 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v20 = &v17;
    v21 = &stru_2A2040958;
    v22 = 0;
    v19 = &unk_2A2050DE0;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v22 & 1) != 0)
    {
      v14 = v18;
      v15 = v18;
    }

    else
    {
      v15 = v17;
      v14 = v18;
    }

    **(a1 + 8) = vadd_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v14), 1.0 - (a3 - a4) / (a5 - a4))), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v15), (a3 - a4) / (a5 - a4))));
  }

  return v12;
}

void sub_29A56D838(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56D900(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56D9CC(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20421B8;
    v8 = 0;
    v7[0] = &unk_2A2050E18;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A56DA40(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A6468(v12, a3, &v38, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A6468(v13, a3, &v35, a6) & 1) == 0)
    {
      sub_29A4AD678(&v35, &v38);
    }

    v14 = &v39 + 8;
    if (v38 != v35 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v39;
      v16[4] = v40;
      v40 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v38;
      v16[2] = v18;
      v38 = v20;
      *&v39 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v36 + 8;
      v22 = v16[4];
      v23 = v36;
      v16[4] = v37;
      v37 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v35;
      v16[2] = v23;
      v35 = v25;
      *&v36 = v24;
      goto LABEL_7;
    }

    v34 = (a4 - a5) / (a6 - a5);
    v41 = 0;
    v42 = &v41;
    sub_29A190CF4(v16, v38, &v42);
    v26 = v40;
    v27 = v37;
    v28 = *(a1 + 8);
    sub_29A190F50(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v31 = *v26++;
        v32 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v31), 1.0 - v34));
        v33 = *v27++;
        *v30++ = vadd_f32(v32, vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v33), v34)));
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29A56DE68(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56DF30(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56DFFC(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2040968;
    v8 = 0;
    v7[0] = &unk_2A2050D70;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

unsigned __int16 *sub_29A56E070(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  *a1 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
  if (v6 == 0.0)
  {
    v7 = HIWORD(LODWORD(v6));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
  {
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  a1[1] = v7;
  return a1;
}

unsigned __int16 *sub_29A56E160(unsigned __int16 *a1, double a2)
{
  v3 = a2;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1] * v3;
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  *a1 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]] * v3;
  if (v6 == 0.0)
  {
    v7 = HIWORD(LODWORD(v6));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
  {
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  a1[1] = v7;
  return a1;
}

uint64_t sub_29A56E240(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v21 = &v18;
  v22 = &stru_2A2040968;
  v23 = 0;
  v20 = &unk_2A2050D70;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v23 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v21 = &v17;
    v22 = &stru_2A2040968;
    v23 = 0;
    v20 = &unk_2A2050D70;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v23 & 1) != 0)
    {
      v17 = v18;
    }

    v14 = (a3 - a4) / (a5 - a4);
    LODWORD(v20) = v18;
    v15 = *sub_29A56E160(&v20, 1.0 - v14);
    LODWORD(v20) = v17;
    v19 = *sub_29A56E160(&v20, v14);
    LODWORD(v20) = v15;
    **(a1 + 8) = *sub_29A56E070(&v20, &v19);
  }

  return v12;
}

void sub_29A56E704(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56E7CC(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56E898(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042170;
    v8 = 0;
    v7[0] = &unk_2A2050DA8;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A56E90C(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A6078(v12, a3, &v36, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A6078(v13, a3, &v33, a6) & 1) == 0)
    {
      sub_29A4AD4A4(&v33, &v36);
    }

    v14 = &v37 + 8;
    if (v36 != v33 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v37;
      v16[4] = v38;
      v38 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v36;
      v16[2] = v18;
      v36 = v20;
      *&v37 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v34 + 8;
      v22 = v16[4];
      v23 = v34;
      v16[4] = v35;
      v35 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v33;
      v16[2] = v23;
      v33 = v25;
      *&v34 = v24;
      goto LABEL_7;
    }

    v40 = 0;
    *v39 = &v40;
    sub_29A1917E4(v16, v36, v39);
    v26 = v38;
    v27 = v35;
    v28 = *(a1 + 8);
    sub_29A191A40(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v31 = *v26++;
        *v39 = v31;
        v32 = *sub_29A56E160(v39, 1.0 - v15);
        *v39 = *v27;
        v40 = *sub_29A56E160(v39, v15);
        *v39 = v32;
        *v30++ = *sub_29A56E070(v39, &v40);
        ++v27;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void sub_29A56ED4C(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56EE14(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56EEE0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2040988;
    v8 = 0;
    v7[0] = &unk_2A2051010;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A56EF54(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v23 = &v20;
  v24 = &stru_2A2040988;
  v25 = 0;
  v22 = &unk_2A2051010;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v25 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v23 = &v18;
    v24 = &stru_2A2040988;
    v25 = 0;
    v22 = &unk_2A2051010;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v25 & 1) != 0)
    {
      v18 = v20;
      v19 = v21;
    }

    v14 = (a3 - a4) / (a5 - a4);
    v15 = (1.0 - v14) * v21 + v14 * v19;
    v16 = *(a1 + 8);
    *v16 = vaddq_f64(vmulq_n_f64(v20, 1.0 - v14), vmulq_n_f64(v18, v14));
    v16[1].f64[0] = v15;
  }

  return v12;
}

void sub_29A56F408(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56F4D0(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56F59C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20421E8;
    v8 = 0;
    v7[0] = &unk_2A2051048;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A56F610(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A7818(v12, a3, &v39, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A7818(v13, a3, &v36, a6) & 1) == 0)
    {
      sub_29A4ADFBC(&v36, &v39);
    }

    v14 = &v40 + 8;
    if (v39 != v36 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v40;
      v16[4] = v41;
      v41 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v39;
      v16[2] = v18;
      v39 = v20;
      *&v40 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v37 + 8;
      v22 = v16[4];
      v23 = v37;
      v16[4] = v38;
      v38 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v36;
      v16[2] = v23;
      v36 = v25;
      *&v37 = v24;
      goto LABEL_7;
    }

    v35 = (a4 - a5) / (a6 - a5);
    memset(v42, 0, sizeof(v42));
    v43 = v42;
    sub_29A194A04(v16, v39, &v43);
    v26 = v41;
    v27 = v38;
    v28 = *(a1 + 8);
    sub_29A194CC8(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = 1.0 - v35;
      v31 = (*(v28 + 32) + 16);
      v32 = (v27 + 16);
      v33 = (v26 + 16);
      do
      {
        v34 = v30 * *v33 + v35 * *v32;
        *(v31 - 1) = vaddq_f64(vmulq_n_f64(*(v33 - 2), v30), vmulq_n_f64(*(v32 - 2), v35));
        *v31 = v34;
        v31 += 3;
        v32 += 3;
        v33 += 3;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29A56FA68(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A56FB30(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A56FBFC(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2040998;
    v8 = 0;
    v7[0] = &unk_2A2050FA0;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A56FC70(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v24 = &v21;
  v25 = &stru_2A2040998;
  v26 = 0;
  v23 = &unk_2A2050FA0;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v26 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v24 = &v19;
    v25 = &stru_2A2040998;
    v26 = 0;
    v23 = &unk_2A2050FA0;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v26 & 1) != 0)
    {
      v19 = v21;
      v20 = v22;
    }

    v14 = (a3 - a4) / (a5 - a4);
    v15 = (1.0 - v14) * v22;
    v16 = v14 * v20;
    v17 = *(a1 + 8);
    *v17 = vadd_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v21), 1.0 - v14)), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v19), v14)));
    v17[1].f32[0] = v15 + v16;
  }

  return v12;
}

void sub_29A570168(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A570230(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A5702FC(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20421A0;
    v8 = 0;
    v7[0] = &unk_2A2050FD8;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A570370(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A7428(v12, a3, &v40, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A7428(v13, a3, &v37, a6) & 1) == 0)
    {
      sub_29A4ADDE0(&v37, &v40);
    }

    v14 = &v41 + 8;
    if (v40 != v37 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v41;
      v16[4] = v42;
      v42 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v40;
      v16[2] = v18;
      v40 = v20;
      *&v41 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v38 + 8;
      v22 = v16[4];
      v23 = v38;
      v16[4] = v39;
      v39 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v37;
      v16[2] = v23;
      v37 = v25;
      *&v38 = v24;
      goto LABEL_7;
    }

    v36 = (a4 - a5) / (a6 - a5);
    v44 = 0;
    v43 = 0;
    v45 = &v43;
    sub_29A193304(v16, v40, &v45);
    v26 = v42;
    v27 = v39;
    v28 = *(a1 + 8);
    sub_29A1935CC(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = 1.0 - v36;
      v31 = (*(v28 + 32) + 8);
      v32 = (v27 + 8);
      v33 = (v26 + 8);
      do
      {
        v34 = v30 * *v33;
        v35 = v36 * *v32;
        *(v31 - 1) = vadd_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(v33 - 2)), v30)), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(v32 - 2)), v36)));
        *v31 = v34 + v35;
        v31 += 3;
        v32 += 3;
        v33 += 3;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29A57080C(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A5708D4(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A5709A0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20409A8;
    v8 = 0;
    v7[0] = &unk_2A2050F30;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A570A14(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v31 = &v26;
  v32 = &stru_2A20409A8;
  v33 = 0;
  v30 = &unk_2A2050F30;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v33 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v31 = &v24;
    v32 = &stru_2A20409A8;
    v33 = 0;
    v30 = &unk_2A2050F30;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v33 & 1) != 0)
    {
      v24 = v26;
      v25 = v27;
    }

    v14 = (a3 - a4) / (a5 - a4);
    LODWORD(v30) = v26;
    WORD2(v30) = v27;
    v15 = sub_29A130AC8(&v30, 1.0 - v14);
    v16 = *v15;
    v17 = v15[2];
    LODWORD(v30) = v24;
    WORD2(v30) = v25;
    v18 = sub_29A130AC8(&v30, v14);
    v19 = *v18;
    v29 = v18[2];
    v28 = v19;
    WORD2(v30) = v17;
    LODWORD(v30) = v16;
    v20 = sub_29A130DE0(&v30, &v28);
    v21 = *v20;
    v22 = *(a1 + 8);
    *(v22 + 4) = v20[2];
    *v22 = v21;
  }

  return v12;
}

void sub_29A570F48(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A571010(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A5710DC(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042158;
    v8 = 0;
    v7[0] = &unk_2A2050F68;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A571150(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A7038(v12, a3, &v43, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A7038(v13, a3, &v40, a6) & 1) == 0)
    {
      sub_29A4ADC04(&v40, &v43);
    }

    v14 = &v44 + 8;
    if (v43 != v40 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v44;
      v16[4] = v45;
      v45 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v43;
      v16[2] = v18;
      v43 = v20;
      *&v44 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v41 + 8;
      v22 = v16[4];
      v23 = v41;
      v16[4] = v42;
      v42 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v40;
      v16[2] = v23;
      v40 = v25;
      *&v41 = v24;
      goto LABEL_7;
    }

    v48 = 0;
    v47 = 0;
    v46 = &v47;
    sub_29A193E08(v16, v43, &v46);
    v26 = v45;
    v27 = v42;
    v28 = *(a1 + 8);
    sub_29A1940CC(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v31 = *v26;
        WORD2(v46) = *(v26 + 4);
        LODWORD(v46) = v31;
        v32 = sub_29A130AC8(&v46, 1.0 - v15);
        v33 = v32[2];
        v34 = *v32;
        v35 = *v27;
        WORD2(v46) = *(v27 + 4);
        LODWORD(v46) = v35;
        v36 = sub_29A130AC8(&v46, v15);
        v37 = *v36;
        v48 = v36[2];
        v47 = v37;
        WORD2(v46) = (v34 | (v33 << 32)) >> 32;
        LODWORD(v46) = v34;
        v38 = sub_29A130DE0(&v46, &v47);
        v39 = *v38;
        *(v30 + 4) = v38[2];
        *v30 = v39;
        v30 += 6;
        v27 += 6;
        v26 += 6;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29A5715B4(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A57167C(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A571748(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20409C8;
    v8 = 0;
    v7[0] = &unk_2A20511D0;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A5717BC(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v24 = &v21;
  v25 = &stru_2A20409C8;
  v26 = 0;
  v23 = &unk_2A20511D0;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v26 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v24 = &v19;
    v25 = &stru_2A20409C8;
    v26 = 0;
    v23 = &unk_2A20511D0;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v26 & 1) != 0)
    {
      v19 = v21;
      v20 = v22;
    }

    v14 = (a3 - a4) / (a5 - a4);
    v15 = vaddq_f64(vmulq_n_f64(v21, 1.0 - v14), vmulq_n_f64(v19, v14));
    v16 = *(a1 + 8);
    v17 = vaddq_f64(vmulq_n_f64(v22, 1.0 - v14), vmulq_n_f64(v20, v14));
    *v16 = v15;
    v16[1] = v17;
  }

  return v12;
}

void sub_29A571C58(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A571D20(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A571DEC(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20421D0;
    v8 = 0;
    v7[0] = &unk_2A2051208;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A571E60(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A87D8(v12, a3, &v39, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A87D8(v13, a3, &v36, a6) & 1) == 0)
    {
      sub_29A4AE70C(&v36, &v39);
    }

    v14 = &v40 + 8;
    if (v39 != v36 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v40;
      v16[4] = v41;
      v41 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v39;
      v16[2] = v18;
      v39 = v20;
      *&v40 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v37 + 8;
      v22 = v16[4];
      v23 = v37;
      v16[4] = v38;
      v38 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v36;
      v16[2] = v23;
      v36 = v25;
      *&v37 = v24;
      goto LABEL_7;
    }

    v35 = (a4 - a5) / (a6 - a5);
    memset(v42, 0, sizeof(v42));
    v43 = v42;
    sub_29A196FC0(v16, v39, &v43);
    v26 = v41;
    v27 = v38;
    v28 = *(a1 + 8);
    sub_29A19722C(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = 1.0 - v35;
      v31 = (*(v28 + 32) + 16);
      v32 = v27 + 1;
      v33 = v26 + 1;
      do
      {
        v34 = vaddq_f64(vmulq_n_f64(*v33, v30), vmulq_n_f64(*v32, v35));
        v31[-1] = vaddq_f64(vmulq_n_f64(v33[-1], v30), vmulq_n_f64(v32[-1], v35));
        *v31 = v34;
        v31 += 2;
        v32 += 2;
        v33 += 2;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29A57229C(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A572364(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A572430(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20409D8;
    v8 = 0;
    v7[0] = &unk_2A2051160;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A5724A4(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v18 = &v16;
  v19 = &stru_2A20409D8;
  v20 = 0;
  v17 = &unk_2A2051160;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v20 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v18 = &v15;
    v19 = &stru_2A20409D8;
    v20 = 0;
    v17 = &unk_2A2051160;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v20 & 1) != 0)
    {
      v15 = v16;
    }

    **(a1 + 8) = vaddq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v16.f32), 1.0 - (a3 - a4) / (a5 - a4))), vmulq_n_f64(vcvt_hight_f64_f32(v16), 1.0 - (a3 - a4) / (a5 - a4))), vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v15.f32), (a3 - a4) / (a5 - a4))), vmulq_n_f64(vcvt_hight_f64_f32(v15), (a3 - a4) / (a5 - a4))));
  }

  return v12;
}

void sub_29A57295C(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A572A24(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A572AF0(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042188;
    v8 = 0;
    v7[0] = &unk_2A2051198;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A572B64(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A83E8(v12, a3, &v38, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A83E8(v13, a3, &v35, a6) & 1) == 0)
    {
      sub_29A4AE538(&v35, &v38);
    }

    v14 = &v39 + 8;
    if (v38 != v35 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v39;
      v16[4] = v40;
      v40 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v38;
      v16[2] = v18;
      v38 = v20;
      *&v39 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v36 + 8;
      v22 = v16[4];
      v23 = v36;
      v16[4] = v37;
      v37 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v35;
      v16[2] = v23;
      v35 = v25;
      *&v36 = v24;
      goto LABEL_7;
    }

    v34 = (a4 - a5) / (a6 - a5);
    v41[0] = 0;
    v41[1] = 0;
    v42 = v41;
    sub_29A19596C(v16, v38, &v42);
    v26 = v40;
    v27 = v37;
    v28 = *(a1 + 8);
    sub_29A195BC4(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v31 = *v26++;
        v32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v31.f32), 1.0 - v34)), vmulq_n_f64(vcvt_hight_f64_f32(v31), 1.0 - v34));
        v33 = *v27++;
        *v30++ = vaddq_f32(v32, vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v33.f32), v34)), vmulq_n_f64(vcvt_hight_f64_f32(v33), v34)));
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29A572FA8(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A573070(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A57313C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A20409E8;
    v8 = 0;
    v7[0] = &unk_2A20510F0;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

unsigned __int16 *sub_29A5731B0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  *a1 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
  if (v6 == 0.0)
  {
    v7 = HIWORD(LODWORD(v6));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
  {
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  a1[1] = v7;
  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  a1[2] = v9;
  v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[3]];
  if (v10 == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
  }

  a1[3] = v11;
  return a1;
}

unsigned __int16 *sub_29A573358(unsigned __int16 *a1, double a2)
{
  v3 = a2;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1] * v3;
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  *a1 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]] * v3;
  if (v6 == 0.0)
  {
    v7 = HIWORD(LODWORD(v6));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
  {
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  a1[1] = v7;
  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]] * v3;
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  a1[2] = v9;
  v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]] * v3;
  if (v10 == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
  }

  a1[3] = v11;
  return a1;
}

uint64_t sub_29A5734E0(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v21 = &v18;
  v22 = &stru_2A20409E8;
  v23 = 0;
  v20 = &unk_2A20510F0;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v23 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v21 = &v17;
    v22 = &stru_2A20409E8;
    v23 = 0;
    v20 = &unk_2A20510F0;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v23 & 1) != 0)
    {
      v17 = v18;
    }

    v14 = (a3 - a4) / (a5 - a4);
    v20 = v18;
    v15 = *sub_29A573358(&v20, 1.0 - v14);
    v20 = v17;
    v19 = *sub_29A573358(&v20, v14);
    v20 = v15;
    **(a1 + 8) = *sub_29A5731B0(&v20, &v19);
  }

  return v12;
}

void sub_29A57399C(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A573A64(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A573B30(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042140;
    v8 = 0;
    v7[0] = &unk_2A2051128;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A573BA4(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A7FF8(v12, a3, &v36, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A7FF8(v13, a3, &v33, a6) & 1) == 0)
    {
      sub_29A4AE364(&v33, &v36);
    }

    v14 = &v37 + 8;
    if (v36 != v33 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v37;
      v16[4] = v38;
      v38 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v36;
      v16[2] = v18;
      v36 = v20;
      *&v37 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v34 + 8;
      v22 = v16[4];
      v23 = v34;
      v16[4] = v35;
      v35 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v33;
      v16[2] = v23;
      v33 = v25;
      *&v34 = v24;
      goto LABEL_7;
    }

    v39 = 0;
    v40 = &v39;
    sub_29A196490(v16, v36, &v40);
    v26 = v38;
    v27 = v35;
    v28 = *(a1 + 8);
    sub_29A1966EC(v28);
    v29 = **(a1 + 8);
    if (v29)
    {
      v30 = *(v28 + 32);
      do
      {
        v31 = *v26++;
        v40 = v31;
        v32 = *sub_29A573358(&v40, 1.0 - v15);
        v40 = *v27;
        v39 = *sub_29A573358(&v40, v15);
        v40 = v32;
        *v30++ = *sub_29A5731B0(&v40, &v39);
        ++v27;
        --v29;
      }

      while (v29);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29A573FB0(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A574078(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A574144(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2040848;
    v8 = 0;
    v7[0] = &unk_2A2050C90;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A5741B8(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v24 = v22;
  v25 = &stru_2A2040848;
  v26 = 0;
  v23 = &unk_2A2050C90;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v26 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v24 = v21;
    v25 = &stru_2A2040848;
    v26 = 0;
    v23 = &unk_2A2050C90;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v26 & 1) != 0)
    {
      v21[0] = v22[0];
      v21[1] = v22[1];
    }

    v15 = pxrInternal__aapl__pxrReserved__::GfSlerp(v22, (a3 - a4) / (a5 - a4), v21, v14);
    v16 = *(a1 + 8);
    *v16 = v15;
    *(v16 + 8) = v17;
    *(v16 + 16) = v18;
    *(v16 + 24) = v19;
  }

  return v12;
}

void sub_29A574610(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A5746D8(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A5747A4(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042398;
    v8 = 0;
    v7[0] = &unk_2A2050CC8;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A574818(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A5898(v12, a3, &v38, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A5898(v13, a3, &v35, a6) & 1) == 0)
    {
      sub_29A4AD0FC(&v35, &v38);
    }

    v14 = &v39 + 8;
    if (v38 != v35 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v39;
      v16[4] = v40;
      v40 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v38;
      v16[2] = v18;
      v38 = v20;
      *&v39 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v36 + 8;
      v22 = v16[4];
      v23 = v36;
      v16[4] = v37;
      v37 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v35;
      v16[2] = v23;
      v35 = v25;
      *&v36 = v24;
      goto LABEL_7;
    }

    v42 = &v41;
    sub_29A19AE58(v16, v38, &v42);
    v26 = v40;
    v27 = v37;
    v28 = *(a1 + 8);
    sub_29A19B0C4(v28);
    v30 = **(a1 + 8);
    if (v30)
    {
      v31 = (*(v28 + 32) + 16);
      do
      {
        *(v31 - 2) = pxrInternal__aapl__pxrReserved__::GfSlerp(v26, v15, v27, v29);
        *(v31 - 1) = v32;
        *v31 = v33;
        *(v31 + 1) = v34;
        v31 += 4;
        v27 = (v27 + 32);
        v26 = (v26 + 32);
        --v30;
      }

      while (v30);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
}

void sub_29A574BF4(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A574CBC(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A574D88(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2040858;
    v8 = 0;
    v7[0] = &unk_2A2050C20;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A574DFC(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v24 = &v22;
  v25 = &stru_2A2040858;
  v26 = 0;
  v23 = &unk_2A2050C20;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v26 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v24 = &v21;
    v25 = &stru_2A2040858;
    v26 = 0;
    v23 = &unk_2A2050C20;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v26 & 1) != 0)
    {
      v21 = v22;
    }

    v15 = pxrInternal__aapl__pxrReserved__::GfSlerp(&v22, (a3 - a4) / (a5 - a4), &v21, v14);
    v16 = *(a1 + 8);
    *v16 = v15;
    *(v16 + 4) = v17;
    *(v16 + 8) = v18;
    *(v16 + 12) = v19;
  }

  return v12;
}

void sub_29A575254(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A57531C(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A5753E8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042380;
    v8 = 0;
    v7[0] = &unk_2A2050C58;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A57545C(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A54A8(v12, a3, &v38, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A54A8(v13, a3, &v35, a6) & 1) == 0)
    {
      sub_29A4ACF28(&v35, &v38);
    }

    v14 = &v39 + 8;
    if (v38 != v35 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v39;
      v16[4] = v40;
      v40 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v38;
      v16[2] = v18;
      v38 = v20;
      *&v39 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v36 + 8;
      v22 = v16[4];
      v23 = v36;
      v16[4] = v37;
      v37 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v35;
      v16[2] = v23;
      v35 = v25;
      *&v36 = v24;
      goto LABEL_7;
    }

    v42 = &v41;
    sub_29A199818(v16, v38, &v42);
    v26 = v40;
    v27 = v37;
    v28 = *(a1 + 8);
    sub_29A199A70(v28);
    v30 = **(a1 + 8);
    if (v30)
    {
      v31 = (*(v28 + 32) + 8);
      do
      {
        *(v31 - 2) = pxrInternal__aapl__pxrReserved__::GfSlerp(v26, v15, v27, v29);
        *(v31 - 1) = v32;
        *v31 = v33;
        *(v31 + 1) = v34;
        v31 += 4;
        v27 = (v27 + 16);
        v26 = (v26 + 16);
        --v30;
      }

      while (v30);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
}

void sub_29A575834(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A5758FC(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A5759C8(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2040868;
    v8 = 0;
    v7[0] = &unk_2A2050BB0;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

uint64_t sub_29A575A3C(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v10 = sub_29A3302A8(a2);
  v19 = &v17;
  v20 = &stru_2A2040868;
  v21 = 0;
  v18 = &unk_2A2050BB0;
  TimeSample = pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v10, a4);
  v12 = TimeSample & (v21 ^ 1u);
  if (v12 == 1)
  {
    v13 = sub_29A3302A8(a2);
    v19 = &v16;
    v20 = &stru_2A2040868;
    v21 = 0;
    v18 = &unk_2A2050BB0;
    if (!pxrInternal__aapl__pxrReserved__::SdfLayer::QueryTimeSample(v13, a5) || (v21 & 1) != 0)
    {
      v16 = v17;
    }

    **(a1 + 8) = pxrInternal__aapl__pxrReserved__::GfSlerp(&v17, (a3 - a4) / (a5 - a4), &v16, v14);
  }

  return v12;
}

void sub_29A575E88(pxrInternal__aapl__pxrReserved__::Usd_Clip **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (a3)
  {
    if (!v4)
    {
      sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    sub_29A575F50(v3);
  }

  if (!v4)
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A4B5B54(v3);
}

uint64_t sub_29A57601C(pxrInternal__aapl__pxrReserved__::SdfLayer *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a4)
  {
    v7[1] = a4;
    v7[2] = &stru_2A2042368;
    v8 = 0;
    v7[0] = &unk_2A2050BE8;
    HasField = pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, v7);
    return HasField & (v8 ^ 1u);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0);
  }
}

void sub_29A576090(uint64_t a1, uint64_t *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, double a4, double a5, double a6)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v12 = sub_29A3302A8(a2);
  if (sub_29A4A50B8(v12, a3, &v35, a5))
  {
    v13 = sub_29A3302A8(a2);
    if ((sub_29A4A50B8(v13, a3, &v32, a6) & 1) == 0)
    {
      sub_29A4ACD54(&v32, &v35);
    }

    v14 = &v36 + 8;
    if (v35 != v32 || (v15 = (a4 - a5) / (a6 - a5), v15 == 0.0))
    {
      v16 = *(a1 + 8);
      v17 = v16[4];
      v18 = v36;
      v16[4] = v37;
      v37 = v17;
      v19 = v16[2];
      v20 = *v16;
      *v16 = v35;
      v16[2] = v18;
      v35 = v20;
      *&v36 = v19;
LABEL_7:
      v21 = v16[3];
      v16[3] = *v14;
      *v14 = v21;
      goto LABEL_8;
    }

    v16 = *(a1 + 8);
    if (v15 == 1.0)
    {
      v14 = &v33 + 8;
      v22 = v16[4];
      v23 = v33;
      v16[4] = v34;
      v34 = v22;
      v24 = v16[2];
      v25 = *v16;
      *v16 = v32;
      v16[2] = v23;
      v32 = v25;
      *&v33 = v24;
      goto LABEL_7;
    }

    v39 = &v38;
    sub_29A19A344(v16, v35, &v39);
    v26 = v37;
    v27 = v34;
    v28 = *(a1 + 8);
    sub_29A19A5A0(v28);
    v30 = **(a1 + 8);
    if (v30)
    {
      v31 = *(v28 + 32);
      do
      {
        *v31++ = pxrInternal__aapl__pxrReserved__::GfSlerp(v26, v15, v27, v29);
        v27 = (v27 + 8);
        v26 = (v26 + 8);
        --v30;
      }

      while (v30);
    }
  }

LABEL_8:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_PrimTypeInfoCache::ComputeInvalidPrimTypeToFallbackMap(uint64_t *a1, pxrInternal__aapl__pxrReserved__::VtDictionary *this, uint64_t a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(this);
  v7 = v6;
  v30[1] = v5;
  v30[2] = v6;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(this);
  if (v9)
  {
    v10 = v5 == result;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v7 != v9 || (v11 & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v30);
    *v28 = v30[0];
    if ((v30[0] & 7) != 0 && (atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v28 &= 0xFFFFFFFFFFFFFFF8;
    }

    v29 = 0u;
    *&v28[8] = 0u;
    v12 = sub_29A5766A4(a1, v28);
    pxrInternal__aapl__pxrReserved__::TfType::TfType(&v27);
    v13 = *(v12 + 40);
    v14 = v27;
    *&v27 = &v28[16];
    sub_29A124AB0(&v27);
    if ((v28[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v28[8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v28[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v13 == v14)
    {
      if (sub_29A1FA748((v5 + 56)))
      {
        v16 = *(v5 + 64);
        if ((v16 & 4) != 0)
        {
          v17 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(v5 + 56);
        }

        else
        {
          v17 = *(v5 + 56);
        }

        if (*v17)
        {
          v18 = v17[4];
          v19 = 8 * *v17;
          while (1)
          {
            v20 = *v18;
            *v28 = v20;
            if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              *v28 &= 0xFFFFFFFFFFFFFFF8;
            }

            v29 = 0u;
            *&v28[8] = 0u;
            v21 = sub_29A5766A4(a1, v28);
            pxrInternal__aapl__pxrReserved__::TfType::TfType(&v27);
            v22 = *(v21 + 40);
            v23 = v27;
            *&v27 = &v28[16];
            sub_29A124AB0(&v27);
            if ((v28[8] & 7) != 0)
            {
              atomic_fetch_add_explicit((*&v28[8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v28[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((*v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v22 != v23)
            {
              break;
            }

            ++v18;
            v19 -= 8;
            if (!v19)
            {
              goto LABEL_37;
            }
          }

          sub_29A3AA17C(&v27, v30, v18);
          *v28 = v27;
          v27 = 0uLL;
          sub_29A57764C(a3, v28, v28);
          if ((v28[8] & 7) != 0)
          {
            atomic_fetch_add_explicit((*&v28[8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v28[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((BYTE8(v27) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v27 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v27 & 7) != 0)
          {
            atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }
      }

      else
      {
        *v28 = "usd/primTypeInfoCache.cpp";
        *&v28[8] = "ComputeInvalidPrimTypeToFallbackMap";
        *&v28[16] = 30;
        *&v29 = "void pxrInternal__aapl__pxrReserved__::Usd_PrimTypeInfoCache::ComputeInvalidPrimTypeToFallbackMap(const VtDictionary &, TfHashMap<TfToken, TfToken, TfHash> *)";
        BYTE8(v29) = 0;
        v24 = v30[0] & 0xFFFFFFFFFFFFFFF8;
        if ((v30[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v25 = (v24 + 16);
          if (*(v24 + 39) < 0)
          {
            v25 = *v25;
          }
        }

        else
        {
          v25 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v28, "Value for key '%s' in fallbackPrimTypes metadata dictionary is not a VtTokenArray.", v15, v25, a3);
      }
    }

LABEL_37:
    if ((v30[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  return result;
}

void sub_29A576630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A5766A4(uint64_t *a1, void *a2)
{
  if (*a2 == 0 && a2[2] == a2[3])
  {
    return a1[73];
  }

  v4 = sub_29A57677C(a1, a2);
  if (!v4)
  {
    v5 = operator new(0x48uLL);
    pxrInternal__aapl__pxrReserved__::UsdPrimTypeInfo::UsdPrimTypeInfo(v5, a2);
    v8 = v5;
    v4 = sub_29A5767F4(a1, &v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      sub_29A577438(&v8, v6);
    }
  }

  return v4;
}

void sub_29A57674C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    sub_29A577438(&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A57677C(uint64_t *a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (sub_29A576888(a1, &v4, a2))
  {
    v2 = *(v6 + 56);
  }

  else
  {
    v2 = 0;
  }

  v6 = 0;
  sub_29A0F845C(&v4);
  return v2;
}

void sub_29A5767DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = 0;
  sub_29A0F845C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A5767F4(uint64_t *a1, void **a2)
{
  v3 = *a2;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = sub_29A577204(a1, &v10, v3);
  v5 = v12;
  if (v4)
  {
    v6 = *a2;
    *a2 = 0;
    v7 = *(v5 + 56);
    *(v5 + 56) = v6;
    if (v7)
    {
      sub_29A577438(v5 + 56, v7);
      v5 = v12;
    }
  }

  v8 = *(v5 + 56);
  v12 = 0;
  sub_29A0F845C(&v10);
  return v8;
}

void sub_29A576870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = 0;
  sub_29A0F845C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A576888(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29A576908(a1, 0, a3, 0, a2, 0, sub_29A576C38, 0);
}

uint64_t sub_29A576908(uint64_t *a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, void *, uint64_t), void *a8)
{
  v30 = 0;
  v31 = 0;
  sub_29A576DFC(&v30, a3, a3 + 1, (a3 + 2));
  v13 = 0;
  v14 = bswap64(0x9E3779B97F4A7C55 * v30);
  v15 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29A576E70(&v30, a1, v15 & v14, 0);
    v16 = (v32 + 16);
    do
    {
      v16 = *v16;
    }

    while (v16 >= 0x40 && !sub_29A577108(a3, v16 + 2));
    if (a2)
    {
      break;
    }

    if (v16)
    {
      v17 = 1;
LABEL_10:
      v18 = a8;
      if (!a5)
      {
        goto LABEL_45;
      }

LABEL_11:
      if ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
      {
        sched_yield();
        v19 = 2;
        while ((sub_29A10872C(a5, v16 + 1, a6) & 1) == 0)
        {
          sched_yield();
          v20 = v19 < 16;
          v19 *= 2;
          if (!v20)
          {
            v21 = v30;
            v30 = 0;
            if (v31 == 1)
            {
LABEL_16:
              v22 = *v21;
              v23 = *v21 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v24 = v22;
                atomic_compare_exchange_strong(v21, &v24, v23);
                if (v24 == v22)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v21, 0, memory_order_relaxed) != v22)
                {
                  sched_yield();
                  goto LABEL_16;
                }
              }
            }

            else
            {
              atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFCLL);
            }

            sched_yield();
            v25 = *a1;
            __dmb(0xBu);
            a8 = v18;
            goto LABEL_31;
          }
        }
      }

      sub_29A0F845C(&v30);
      *(a5 + 16) = v16;
      *(a5 + 24) = v14;
      if (!v13)
      {
        goto LABEL_42;
      }

LABEL_41:
      sub_29A576C40(a1, v13, (a1 + 72), 0);
      goto LABEL_42;
    }

    v25 = *a1;
    __dmb(0xBu);
    if (v15 == v25 || !sub_29A108BB8(a1, v14, v15, v25))
    {
      sub_29A0F845C(&v30);
      return 0;
    }

LABEL_31:
    sub_29A0F845C(&v30);
    v15 = v25;
  }

  if (v16)
  {
LABEL_7:
    v17 = 0;
    goto LABEL_10;
  }

  if (!a8)
  {
    a8 = a7(a1 + 72, a3, a4);
  }

  if ((v31 & 1) == 0)
  {
    v31 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v30) & 1) == 0)
    {
      v16 = (v32 + 16);
      while (1)
      {
        v16 = *v16;
        if (v16 < 0x40)
        {
          break;
        }

        if (sub_29A577108(a3, v16 + 2))
        {
          if (v31 != 1)
          {
            goto LABEL_7;
          }

          v17 = 0;
          atomic_fetch_add(v30, 3uLL);
          v31 = 0;
          goto LABEL_10;
        }
      }
    }
  }

  v25 = *a1;
  __dmb(0xBu);
  if (v15 != v25)
  {
    if (!sub_29A108BB8(a1, v14, v15, v25))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v25 = v15;
LABEL_33:
  v13 = sub_29A108650(a1, v32, a8, v25);
  v18 = 0;
  v17 = 1;
  v16 = a8;
  if (a5)
  {
    goto LABEL_11;
  }

LABEL_45:
  sub_29A0F845C(&v30);
  if (v13)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v18)
  {
    sub_29A576DC8(a1, v18);
  }

  return v17;
}

void sub_29A576C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void sub_29A576C40(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 1;
  if (a2 < 8)
  {
    v10 = tbb::internal::allocate_via_handler_v3(0x17D0);
    v11 = v10;
    if (a4)
    {
      bzero(v10, 0x17D0uLL);
    }

    else
    {
      v15 = v10 + 2;
      v16 = 254;
      do
      {
        *(v15 - 1) = 0;
        *v15 = 3;
        v15 += 3;
        --v16;
      }

      while (v16);
    }

    v17 = 0;
    v18 = v11 - 6;
    v19 = xmmword_29B43B8D0;
    v20 = a1 + 3;
    v21 = vdupq_n_s64(7uLL);
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(2uLL);
    v14 = 255;
    do
    {
      v24 = vorrq_s8(vdupq_n_s64(v17), xmmword_29B430070);
      v25 = vshlq_u64(v22, v19);
      if (vmovn_s64(vcgtq_u64(v21, v24)).u8[0])
      {
        *(v20 - 1) = &v18[3 * v25.i64[0]];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v24)).i32[1])
      {
        *v20 = &v18[3 * v25.i64[1]];
      }

      v17 += 2;
      v19 = vaddq_s64(v19, v23);
      v20 += 2;
    }

    while (v17 != 8);
  }

  else
  {
    v8 = tbb::internal::allocate_via_handler_v3((24 << a2));
    v9 = v8;
    if (a4)
    {
      bzero(v8, 24 << a2);
    }

    else
    {
      v12 = 1 << a2;
      v13 = v8 + 2;
      do
      {
        *(v13 - 1) = 0;
        *v13 = 3;
        v13 += 3;
        --v12;
      }

      while (v12);
    }

    v7[a2] = v9;
    v14 = (2 << a2) - 1;
  }

  __dmb(0xBu);
  *a1 = v14;
}

uint64_t sub_29A576DFC(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
  return sub_29A576E38(a1, a3, a4);
}

uint64_t sub_29A576E38(uint64_t a1, void *a2, uint64_t a3)
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
  return sub_29A2833FC(a1, a3);
}

uint64_t sub_29A576E70(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A1089E0(a2, a3);
  *(a1 + 16) = v8;
  v9 = *(v8 + 16);
  __dmb(0xBu);
  if (v9 == 3 && (v10 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v10)))
  {
    *a1 = v10;
    v11 = *(a1 + 16);
    if (*(v11 + 16) == 3)
    {
      sub_29A576F4C(a2, v11, a3);
    }
  }

  else
  {
    v12 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v12;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v12);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v12);
    }
  }

  return a1;
}

void *sub_29A576F4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __dmb(0xBu);
  *(a2 + 16) = 0;
  if (a3)
  {
    v5 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v5 = a3;
    }

    v6 = 32 * (HIDWORD(a3) != 0);
    if (v5 >= 0x10000)
    {
      v5 >>= 16;
      v6 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    if (v5 >= 0x100)
    {
      v5 >>= 8;
      v6 |= 8u;
    }

    if (v5 >= 0x10)
    {
      v5 >>= 4;
      v6 |= 4u;
    }

    v7 = v5 >= 4;
    if (v5 >= 4)
    {
      LODWORD(v5) = v5 >> 2;
    }

    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      v6 += 2;
    }

    v9 = v8 + v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = ~(-1 << v9);
  sub_29A576E70(&v15, a1, v10 & a3, 0);
  v11 = (v17 + 16);
  v12 = *(v17 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while (1)
    {
      v18 = 0;
      v19 = 0;
      sub_29A576DFC(&v18, v12 + 2, v12 + 3, (v12 + 4));
      if ((bswap64(0x9E3779B97F4A7C55 * v18) & v13) != a3)
      {
        break;
      }

      if (v16 & 1) != 0 || (v16 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v15)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_24:
        v12 = *v11;
        if (*v11 <= 0x3FuLL)
        {
          return sub_29A0F845C(&v15);
        }
      }

      else
      {
        v11 = (v17 + 16);
        v12 = *(v17 + 16);
        __dmb(0xBu);
        if (v12 < 0x40)
        {
          return sub_29A0F845C(&v15);
        }
      }
    }

    v11 = v12;
    goto LABEL_24;
  }

  return sub_29A0F845C(&v15);
}

void sub_29A5770F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A577108(void *a1, void *a2)
{
  if ((*a2 ^ *a1) > 7)
  {
    return 0;
  }

  if ((a2[1] ^ a1[1]) > 7)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v4 = a2[2];
  if (v2 - v3 != a2[3] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    v7 = v6 ^ *(v5 - 8);
    result = v7 < 8;
    v9 = v7 > 7 || v5 == v2;
    v5 += 8;
  }

  while (!v9);
  return result;
}

void sub_29A57718C(uint64_t a1)
{
  v4 = *(a1 + 40);
  v2 = (a1 + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_29A577438(v2, v3);
  }

  v6 = (a1 + 16);
  sub_29A124AB0(&v6);
  v5 = *(a1 + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29A577204(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29A576908(a1, 1, a3, 0, a2, 1, sub_29A577284, 0);
}

void sub_29A5772B8(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x40);
  v6 = v5;
  v7 = a1;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  sub_29A57733C((v5 + 16), *a3);
}

void sub_29A57733C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = a2[1];
  a1[1] = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a1[1] &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29A5773D8(_Unwind_Exception *a1)
{
  v3 = v1[1];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29B294B14(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A577404(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

void sub_29A577438(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_29A5774D4(a2 + 8, 0);
    v3 = *(a2 + 6);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = (a2 + 16);
    sub_29A124AB0(&v5);
    v4 = *(a2 + 1);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((*a2 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

uint64_t sub_29A5774D4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29A577510();
  }

  return result;
}

uint64_t sub_29A577580(uint64_t a1)
{
  sub_29A5775BC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A5775BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A577600((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A577600(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  result = sub_29A1DE3A4((a1 + 16));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t *sub_29A57764C(uint64_t a1, void *a2, uint64_t *a3)
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

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v6;
  sub_29A3ACAE4(i + 2, a3);
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

void *pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::GetInstance(pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache *this)
{
  if ((atomic_load_explicit(&qword_2A17423C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17423C8))
  {
    pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::Usd_UsdzResolverCache(&unk_2A1742368);
    __cxa_atexit(sub_29A577944, &unk_2A1742368, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17423C8);
  }

  return &unk_2A1742368;
}

void sub_29A577950(atomic_ullong *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  if (!a2 || *(a2 + 1) && (sub_29A57901C(a2) & 1) == 0)
  {
    v9 = "ar/threadLocalScopedCache.h";
    v10 = "BeginCacheScope";
    v11 = 62;
    v12 = "void pxrInternal__aapl__pxrReserved__::ArThreadLocalScopedCache<pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache>::BeginCacheScope(VtValue *) [CachedType = pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache]";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Unexpected cache scope data");
    return;
  }

  LOBYTE(v9) = 0;
  v4 = sub_29A0ED084(a1, &v9);
  if (sub_29A57901C(a2))
  {
    v5 = *(a2 + 1);
    if ((v5 & 4) != 0)
    {
      v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v6 = *a2;
    }
  }

  else
  {
    v7 = *(v4 + 8);
    if (*v4 == v7)
    {
      v8 = operator new(0x260uLL);
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = &unk_2A205A8A0;
      bzero(v8 + 24, 0x248uLL);
      __dmb(0xBu);
      *(v8 + 3) = 0;
      __dmb(0xBu);
      *(v8 + 68) = 0;
      *(v8 + 552) = 0u;
      *(v8 + 568) = 0u;
      *(v8 + 584) = 0u;
      *(v8 + 4) = v8 + 552;
      __dmb(0xBu);
      *(v8 + 3) = 1;
      v9 = v8 + 24;
      v10 = v8;
      sub_29A01729C(v4, &v9);
      if (v10)
      {
        sub_29A014BEC(v10);
      }

      goto LABEL_11;
    }

    v6 = (v7 - 16);
  }

  sub_29A017F80(v4, v6);
LABEL_11:
  sub_29A5790A8(a2, (*(v4 + 8) - 16));
}

void sub_29A577AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A577AFC(atomic_ullong *a1)
{
  LOBYTE(v4[0]) = 0;
  v1 = sub_29A0ED084(a1, v4);
  v2 = v1[1];
  if (*v1 == v2)
  {
    v4[0] = "ar/threadLocalScopedCache.h";
    v4[1] = "EndCacheScope";
    v4[2] = 84;
    v4[3] = "void pxrInternal__aapl__pxrReserved__::ArThreadLocalScopedCache<pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache>::EndCacheScope(VtValue *) [CachedType = pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache]";
    v5 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "!cacheStack.empty()", 0))
    {
      return;
    }

    v2 = v1[1];
  }

  v3 = *(v2 - 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v1[1] = v2 - 16;
}

void *sub_29A577B9C@<X0>(atomic_ullong *a1@<X0>, void *a2@<X8>)
{
  v7 = 0;
  result = sub_29A0ED084(a1, &v7);
  v4 = result[1];
  if (*result == v4)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v6 = *(v4 - 16);
    v5 = *(v4 - 8);
    *a2 = v6;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_OpenZipFile(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_29A578A00(a2);
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(v4);
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v12 = *(a1 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  v6 = v13;
  v13 = 0uLL;
  v7 = a2[1];
  *a2 = v6;
  if (v7)
  {
    sub_29A014BEC(v7);
    if (*(&v13 + 1))
    {
      sub_29A014BEC(*(&v13 + 1));
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (*a2)
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Open(a2, __p);
    v9 = __p[0];
    v8 = __p[1];
    if (__p[1])
    {
      atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
    }

    v10 = a2[3];
    a2[2] = v9;
    a2[3] = v8;
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(__p);
  }
}

uint64_t sub_29A577D20(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::FindOrOpenZipFile(atomic_ullong *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29A577B9C(a1, &v25);
  v5 = v25;
  if (v25)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    sub_29A578A00(&v10);
    sub_29A578A44(__dst, a2, &v10);
    *__p = *__dst;
    v19 = v14;
    __dst[0] = 0;
    __dst[1] = 0;
    v20 = v15;
    v14 = 0;
    v15 = 0uLL;
    v21[0] = v16;
    v21[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = sub_29A57963C(v5, &v22, __p);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(v21);
    if (*(&v20 + 1))
    {
      sub_29A014BEC(*(&v20 + 1));
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v16);
    if (*(&v15 + 1))
    {
      sub_29A014BEC(*(&v15 + 1));
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__dst[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v12);
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_OpenZipFile(a2, __p);
      sub_29A577FC4((v24 + 5), __p);
      pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v19);
      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }
    }

    v7 = v24;
    *a3 = v24[5];
    v8 = v7[6];
    a3[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    a3[2] = v7[7];
    v9 = v7[8];
    a3[3] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = 0;
    sub_29A0F845C(&v22);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_OpenZipFile(a2, a3);
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }
}

void sub_29A577F24(_Unwind_Exception *a1)
{
  *(v1 - 80) = 0;
  sub_29A0F845C((v1 - 96));
  v3 = *(v1 - 56);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A577F7C(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A577FC4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Usd_UsdzResolver::Usd_UsdzResolver(pxrInternal__aapl__pxrReserved__::Usd_UsdzResolver *this)
{
  result = pxrInternal__aapl__pxrReserved__::ArPackageResolver::ArPackageResolver(this);
  *result = &unk_2A205A640;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::ArPackageResolver::ArPackageResolver(this);
  *result = &unk_2A205A640;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Usd_UsdzResolver::BeginCacheScope(pxrInternal__aapl__pxrReserved__::Usd_UsdzResolver *this, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::GetInstance(this);

  sub_29A577950(qword_2A1742368, a2);
}

void pxrInternal__aapl__pxrReserved__::Usd_UsdzResolver::EndCacheScope(pxrInternal__aapl__pxrReserved__::Usd_UsdzResolver *this, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::GetInstance(this);

  sub_29A577AFC(qword_2A1742368);
}

void pxrInternal__aapl__pxrReserved__::Usd_UsdzResolver::Resolve(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v11 = 0;
  v12 = 0;
  v6 = pxrInternal__aapl__pxrReserved__::UsdZipFile::UsdZipFile(v10);
  pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::GetInstance(v6);
  pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::FindOrOpenZipFile(qword_2A1742368, a1, &v8);
  v7[0] = &v11;
  v7[1] = v10;
  sub_29A57827C(v7, &v8);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v9);
  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }

  if (v10[0])
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Find(v10, a2, &v8);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::end(v7);
    if (pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator!=(&v8, v7))
    {
      if (*(a2 + 23) < 0)
      {
        sub_29A008D14(a3, *a2, *(a2 + 8));
      }

      else
      {
        *a3 = *a2;
        *(a3 + 16) = *(a2 + 16);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(v7);
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(v10);
  if (v12)
  {
    sub_29A014BEC(v12);
  }
}

void sub_29A578238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(va);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(va1);
  v5 = *(v3 - 40);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29A57827C(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = a1[1];
  v9 = *(a2 + 2);
  v8 = *(a2 + 3);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v7[1];
  *v7 = v9;
  v7[1] = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::Usd_UsdzResolver::OpenAsset(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v27 = 0uLL;
  v6 = pxrInternal__aapl__pxrReserved__::UsdZipFile::UsdZipFile(v26);
  pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::GetInstance(v6);
  pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::FindOrOpenZipFile(qword_2A1742368, a1, &v22);
  v17 = &v27;
  v18 = v26;
  sub_29A57827C(&v17, &v22);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(v23);
  if (*(&v22 + 1))
  {
    sub_29A014BEC(*(&v22 + 1));
  }

  if (!v26[0])
  {
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_24;
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::Find(v26, a2, &v25);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::end(&v22);
  v7 = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::operator==(&v25, &v22);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v22);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFileInfo(&v25, &v22);
    if (v23[8])
    {
      v17 = "usd/usdzResolver.cpp";
      v18 = "OpenAsset";
      v19 = 220;
      v20 = "virtual std::shared_ptr<ArAsset> pxrInternal__aapl__pxrReserved__::Usd_UsdzResolver::OpenAsset(const std::string &, const std::string &)";
      v21 = 0;
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Cannot open %s in %s: compressed files are not supported", v8, v9);
    }

    else
    {
      if (v24 != 1)
      {
        v12 = operator new(0x40uLL);
        File = pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::GetFile(&v25);
        v14 = v22;
        pxrInternal__aapl__pxrReserved__::ArAsset::ArAsset(v12);
        *v12 = &unk_2A205A7D0;
        *(v12 + 8) = v27;
        v27 = 0uLL;
        v15 = v26[1];
        *(v12 + 3) = v26[0];
        *(v12 + 4) = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        *(v12 + 5) = File;
        *(v12 + 3) = v14;
        *a3 = v12;
        v16 = operator new(0x20uLL);
        *v16 = &unk_2A205A9A8;
        v16[1] = 0;
        v16[2] = 0;
        v16[3] = v12;
        a3[1] = v16;
        goto LABEL_23;
      }

      v17 = "usd/usdzResolver.cpp";
      v18 = "OpenAsset";
      v19 = 227;
      v20 = "virtual std::shared_ptr<ArAsset> pxrInternal__aapl__pxrReserved__::Usd_UsdzResolver::OpenAsset(const std::string &, const std::string &)";
      v21 = 0;
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (*(a1 + 23) >= 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = *a1;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 3, "Cannot open %s in %s: encrypted files are not supported", v10, v11);
    }
  }

  *a3 = 0;
  a3[1] = 0;
LABEL_23:
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(&v25);
LABEL_24:
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(v26);
  if (*(&v27 + 1))
  {
    sub_29A014BEC(*(&v27 + 1));
  }
}

void sub_29A578568(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator((v2 - 88));
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile((v2 - 80));
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(a1);
}

void sub_29A5785FC(pxrInternal__aapl__pxrReserved__::ArPackageResolver *a1)
{
  pxrInternal__aapl__pxrReserved__::ArPackageResolver::~ArPackageResolver(a1);

  operator delete(v1);
}

void *sub_29A578628(void *a1)
{
  *a1 = &unk_2A205A698;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29A5787B0(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

uint64_t sub_29A5786C4(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache>>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache>>>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 24) = 1;
  return v5;
}

void sub_29A578788(void *a1)
{
  v1 = sub_29A578628(a1);

  operator delete(v1);
}

unint64_t *sub_29A5787B0(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache>>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache>>>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache>>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache>>>,128ul>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + (a2 << 7) - 128;
    do
    {
      if (*(v3 + 24) == 1)
      {
        v4 = v3;
        sub_29A0176E4(&v4);
        *(v3 + 24) = 0;
      }

      v3 -= 128;
      --v2;
    }

    while (v2);
  }
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache>>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::_Cache>>>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache *pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache::Usd_UsdzResolverCache(pxrInternal__aapl__pxrReserved__::Usd_UsdzResolverCache *this)
{
  *this = &unk_2A203F6D8;
  __dmb(0xBu);
  *(this + 1) = 0;
  __dmb(0xBu);
  *(this + 2) = 0;
  *this = &unk_2A205A698;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A205A6F8;
  *(this + 3) = v2;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 8) = this + 72;
  *(this + 5) = sub_29A5789F0;
  return this;
}

void *sub_29A57894C()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A205A6F8;
  return result;
}

uint64_t sub_29A578984(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void sub_29A5789E4(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void *sub_29A578A00(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdZipFile::UsdZipFile(a1 + 2);
  return a1;
}

void sub_29A578A2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A578A44(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 24) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = *(a3 + 24);
  *(__dst + 5) = *(a3 + 16);
  *(__dst + 6) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

uint64_t sub_29A578ABC()
{
  v2 = nullsub_838;
  return sub_29A578B18(v0);
}

uint64_t sub_29A578B18(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A205A790;
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

void sub_29A578BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A578BC8(pxrInternal__aapl__pxrReserved__::Ar_PackageResolverFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Ar_PackageResolverFactoryBase::~Ar_PackageResolverFactoryBase(a1);

  operator delete(v1);
}

void *sub_29A578BF0()
{
  v0 = operator new(8uLL);
  pxrInternal__aapl__pxrReserved__::ArPackageResolver::ArPackageResolver(v0);
  *v0 = &unk_2A205A640;
  return v0;
}

void sub_29A578C50(void *a1)
{
  *a1 = &unk_2A205A7D0;
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(a1);
}

void sub_29A578CB0(void *a1)
{
  *a1 = &unk_2A205A7D0;
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::ArAsset::~ArAsset(a1);

  operator delete(v3);
}

void sub_29A578D1C(void *a1@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::UsdZipFile(&v10);
  v5 = a1[3];
  v4 = a1[4];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v11;
  v10 = v5;
  v11 = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
    v5 = v10;
    v4 = v11;
  }

  v7 = a1[5];
  v9[0] = v5;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = operator new(0x30uLL);
  v12[0] = v5;
  v12[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v8 = &unk_2A205A830;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v8[4] = v5;
  v8[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a2[1] = v8;
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(v12);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(v9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v10);
}

void sub_29A578E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_begin_catch(a1);
  sub_29A578E90(&a9);
  __cxa_rethrow();
}

void sub_29A578E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_end_catch();
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&a9);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&a11);
  _Unwind_Resume(a1);
}

void sub_29A578E90(void *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::UsdZipFile(&v5);
  v3 = v5;
  v2 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&v5);
}

void sub_29A578EEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A205A830;
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&a1[1].__shared_owners_);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

void sub_29A578F40(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A205A830;
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(&a1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v2);
}

void sub_29A578F98(uint64_t a1)
{
  sub_29A578E90((a1 + 32));

  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile((a1 + 32));
}

uint64_t sub_29A578FD8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A205A870))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A57901C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4AE4EDLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A205A880);
}

void *sub_29A5790A8(void *a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  sub_29A5793A4(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A579130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A57918C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A205A8A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A5791F4(unint64_t *a1)
{
  v2 = *a1;
  __dmb(0xBu);
  __dmb(0xBu);
  a1[65] = 0;
  v3 = sub_29A0EC0EC(v2);
  do
  {
    v4 = 0;
    v5 = v3;
    v6 = a1[v3 + 1];
    if (v3-- > 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    do
    {
      v9 = v6 + 24 * v4;
      v12 = *(v9 + 16);
      v11 = (v9 + 16);
      v10 = v12;
      if (v12 >= 0x40)
      {
        do
        {
          *v11 = *v10;
          sub_29A5792C0(a1, v10);
          v10 = *v11;
        }

        while (*v11 > 0x3FuLL);
      }

      ++v4;
    }

    while (!(v4 >> v8));
    result = sub_29A5792F4(a1, v5);
  }

  while (v5);
  __dmb(0xBu);
  *a1 = 1;
  return result;
}

uint64_t sub_29A5792F4(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  result = *(a1 + 8 + 8 * a2);
  if (a2 < 8)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      result = tbb::internal::deallocate_via_handler_v3(result, 1);
    }
  }

  else
  {
    result = tbb::internal::deallocate_via_handler_v3(result, a2);
  }

  *(v3 + 8 * a2) = 0;
  return result;
}

void sub_29A579348(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *sub_29A5793A4(void *a1, void *a2)
{
  a1[1] = &off_2A205A8E0;
  result = operator new(0x18uLL);
  v5 = a2[1];
  *result = *a2;
  *(result + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  atomic_store(0, result + 4);
  *a1 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29A579408(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29A579428(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D2264(a1);
}

void *sub_29A579594@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = 0;
  return sub_29A5793A4(a2, v2);
}

uint64_t sub_29A5795A4(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 16));
  if (v2 != 1)
  {
    v3 = *a1;
    v4 = operator new(0x18uLL);
    v5 = v4;
    v6 = v3[1];
    *v4 = *v3;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v4 + 4);
    atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
    sub_29A1D2264(a1);
    *a1 = v5;
    v8 = 0;
    sub_29A1D2264(&v8);
  }

  return *a1;
}

uint64_t sub_29A57963C(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 16))
  {
    sub_29A0F8494(a2);
    *(a2 + 16) = 0;
  }

  return sub_29A5796BC(a1, 1, a3, (a3 + 24), a2, 1, sub_29A5799F8, 0);
}

uint64_t sub_29A5796BC(uint64_t *a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(uint64_t *, _BYTE *, uint64_t), void *a8)
{
  v13 = *a3;
  if (a3[23] >= 0)
  {
    v13 = a3;
  }

  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = v13 + 1;
    do
    {
      v15 = (0x9E3779B97F4A7C15 * v15) ^ v14;
      v17 = *v16++;
      v14 = v17;
    }

    while (v17);
  }

  else
  {
    v15 = 0;
  }

  v18 = 0;
  v19 = *a1;
  __dmb(0xBu);
  while (1)
  {
    sub_29A579B84(&v34, a1, v19 & v15, 0);
    v20 = (v36 + 16);
    do
    {
      v20 = *v20;
    }

    while (v20 >= 0x40 && !sub_29A1B00DC(a3, v20 + 2));
    if (a2)
    {
      break;
    }

    if (v20)
    {
      v21 = 1;
LABEL_17:
      v22 = a8;
      if (!a5)
      {
        goto LABEL_52;
      }

LABEL_18:
      if ((sub_29A10872C(a5, v20 + 1, a6) & 1) == 0)
      {
        sched_yield();
        v23 = 2;
        while ((sub_29A10872C(a5, v20 + 1, a6) & 1) == 0)
        {
          sched_yield();
          v24 = v23 < 16;
          v23 *= 2;
          if (!v24)
          {
            v25 = v34;
            v34 = 0;
            if (v35 == 1)
            {
LABEL_23:
              v26 = *v25;
              v27 = *v25 & 0xFFFFFFFFFFFFFFFCLL;
              while (1)
              {
                v28 = v26;
                atomic_compare_exchange_strong(v25, &v28, v27);
                if (v28 == v26)
                {
                  break;
                }

                if (atomic_fetch_add_explicit(v25, 0, memory_order_relaxed) != v26)
                {
                  sched_yield();
                  goto LABEL_23;
                }
              }
            }

            else
            {
              atomic_fetch_add(v25, 0xFFFFFFFFFFFFFFFCLL);
            }

            sched_yield();
            v29 = *a1;
            __dmb(0xBu);
            a8 = v22;
            goto LABEL_38;
          }
        }
      }

      sub_29A0F845C(&v34);
      *(a5 + 16) = v20;
      *(a5 + 24) = v15;
      if (!v18)
      {
        goto LABEL_49;
      }

LABEL_48:
      sub_29A5799FC(a1, v18, (a1 + 72), 0);
      goto LABEL_49;
    }

    v29 = *a1;
    __dmb(0xBu);
    if (v19 == v29 || !sub_29A108BB8(a1, v15, v19, v29))
    {
      sub_29A0F845C(&v34);
      return 0;
    }

LABEL_38:
    sub_29A0F845C(&v34);
    v19 = v29;
  }

  if (v20)
  {
LABEL_14:
    v21 = 0;
    goto LABEL_17;
  }

  if (!a8)
  {
    a8 = a7(a1 + 72, a3, a4);
  }

  if ((v35 & 1) == 0)
  {
    v35 = 1;
    if ((tbb::spin_rw_mutex_v3::internal_upgrade(v34) & 1) == 0)
    {
      v20 = (v36 + 16);
      while (1)
      {
        v20 = *v20;
        if (v20 < 0x40)
        {
          break;
        }

        if (sub_29A1B00DC(a3, v20 + 2))
        {
          if (v35 != 1)
          {
            goto LABEL_14;
          }

          v21 = 0;
          atomic_fetch_add(v34, 3uLL);
          v35 = 0;
          goto LABEL_17;
        }
      }
    }
  }

  v29 = *a1;
  __dmb(0xBu);
  if (v19 != v29)
  {
    if (!sub_29A108BB8(a1, v15, v19, v29))
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v29 = v19;
LABEL_40:
  v18 = sub_29A108650(a1, v36, a8, v29);
  v22 = 0;
  v21 = 1;
  v20 = a8;
  if (a5)
  {
    goto LABEL_18;
  }

LABEL_52:
  sub_29A0F845C(&v34);
  if (v18)
  {
    goto LABEL_48;
  }

LABEL_49:
  if (v22)
  {
    sub_29A5792C0(a1, v22);
  }

  return v21;
}

void sub_29A5799D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

void sub_29A5799FC(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 1;
  if (a2 < 8)
  {
    v10 = tbb::internal::allocate_via_handler_v3(0x17D0);
    v11 = v10;
    if (a4)
    {
      bzero(v10, 0x17D0uLL);
    }

    else
    {
      v15 = v10 + 2;
      v16 = 254;
      do
      {
        *(v15 - 1) = 0;
        *v15 = 3;
        v15 += 3;
        --v16;
      }

      while (v16);
    }

    v17 = 0;
    v18 = v11 - 6;
    v19 = xmmword_29B43B8D0;
    v20 = a1 + 3;
    v21 = vdupq_n_s64(7uLL);
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(2uLL);
    v14 = 255;
    do
    {
      v24 = vorrq_s8(vdupq_n_s64(v17), xmmword_29B430070);
      v25 = vshlq_u64(v22, v19);
      if (vmovn_s64(vcgtq_u64(v21, v24)).u8[0])
      {
        *(v20 - 1) = &v18[3 * v25.i64[0]];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), v24)).i32[1])
      {
        *v20 = &v18[3 * v25.i64[1]];
      }

      v17 += 2;
      v19 = vaddq_s64(v19, v23);
      v20 += 2;
    }

    while (v17 != 8);
  }

  else
  {
    v8 = tbb::internal::allocate_via_handler_v3((24 << a2));
    v9 = v8;
    if (a4)
    {
      bzero(v8, 24 << a2);
    }

    else
    {
      v12 = 1 << a2;
      v13 = v8 + 2;
      do
      {
        *(v13 - 1) = 0;
        *v13 = 3;
        v13 += 3;
        --v12;
      }

      while (v12);
    }

    v7[a2] = v9;
    v14 = (2 << a2) - 1;
  }

  __dmb(0xBu);
  *a1 = v14;
}

uint64_t sub_29A579B84(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = sub_29A0EC0EC(a3);
  v9 = *(a2 + 8 * v8 + 8) + 24 * (a3 - ((1 << v8) & 0x1FFFFFFFFFFFFFFELL));
  *(a1 + 16) = v9;
  v10 = *(v9 + 16);
  __dmb(0xBu);
  if (v10 == 3 && (v11 = (*(a1 + 16) + 8), *(a1 + 8) = 1, tbb::spin_rw_mutex_v3::internal_try_acquire_writer(v11)))
  {
    *a1 = v11;
    v12 = *(a1 + 16);
    if (*(v12 + 16) == 3)
    {
      sub_29A579C78(a2, v12, a3);
    }
  }

  else
  {
    v13 = (*(a1 + 16) + 8);
    *(a1 + 8) = a4;
    *a1 = v13;
    if (a4)
    {
      tbb::spin_rw_mutex_v3::internal_acquire_writer(v13);
    }

    else
    {
      tbb::spin_rw_mutex_v3::internal_acquire_reader(v13);
    }
  }

  return a1;
}

void *sub_29A579C78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __dmb(0xBu);
  *(a2 + 16) = 0;
  if (a3)
  {
    v5 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v5 = a3;
    }

    v6 = 32 * (HIDWORD(a3) != 0);
    if (v5 >= 0x10000)
    {
      v5 >>= 16;
      v6 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    if (v5 >= 0x100)
    {
      v5 >>= 8;
      v6 |= 8u;
    }

    if (v5 >= 0x10)
    {
      v5 >>= 4;
      v6 |= 4u;
    }

    v7 = v5 >= 4;
    if (v5 >= 4)
    {
      LODWORD(v5) = v5 >> 2;
    }

    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      v6 += 2;
    }

    v9 = v8 + v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = ~(-1 << v9);
  sub_29A579B84(&v20, a1, v10 & a3, 0);
  v11 = (v22 + 16);
  v12 = *(v22 + 16);
  __dmb(0xBu);
  if (v12 >= 0x40)
  {
    v13 = (2 * v10) | 1;
    while (1)
    {
      v14 = *(v12 + 39) >= 0 ? (v12 + 16) : *(v12 + 16);
      v15 = *v14;
      if (*v14)
      {
        v16 = 0;
        v17 = v14 + 1;
        do
        {
          v16 = (0x9E3779B97F4A7C15 * v16) ^ v15;
          v18 = *v17++;
          v15 = v18;
        }

        while (v18);
      }

      else
      {
        v16 = 0;
      }

      if ((v16 & v13) != a3)
      {
        break;
      }

      if (v21 & 1) != 0 || (v21 = 1, (tbb::spin_rw_mutex_v3::internal_upgrade(v20)))
      {
        *v11 = *v12;
        *v12 = *(a2 + 16);
        *(a2 + 16) = v12;
LABEL_32:
        v12 = *v11;
        if (*v11 <= 0x3F)
        {
          return sub_29A0F845C(&v20);
        }
      }

      else
      {
        v11 = (v22 + 16);
        v12 = *(v22 + 16);
        __dmb(0xBu);
        if (v12 < 0x40)
        {
          return sub_29A0F845C(&v20);
        }
      }
    }

    v11 = v12;
    goto LABEL_32;
  }

  return sub_29A0F845C(&v20);
}

void sub_29A579E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F845C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A579E4C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = tbb::internal::allocate_via_handler_v3(0x48);
  v9[1] = a1;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  sub_29A578A44((v6 + 16), a2, a3);
  v9[0] = 0;
  sub_29A579ED8(v9, v7);
  return v6;
}

uint64_t *sub_29A579ED8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    tbb::internal::deallocate_via_handler_v3(v3, a2);
  }

  return a1;
}

void sub_29A579F10(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A579F38(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A579F68(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A205A9F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_MergeTimeSamples(uint64_t a1, double **a2, void **a3)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (a3)
  {
    p_p = a3;
  }

  else
  {
    p_p = &__p;
  }

  sub_29A00BF50(p_p, a2[1] - *a2 + ((*(a1 + 8) - *a1) >> 3));
  sub_29A57A2F0(*a1, *p_p, *(a1 + 8), *a2, a2[1], v14);
  sub_29A00BF50(p_p, (v14[2] - *p_p) >> 3);
  v7 = *a1;
  *a1 = *p_p;
  *p_p = v7;
  v8 = &__p;
  if (a3)
  {
    v8 = a3;
  }

  v9 = *(a1 + 8);
  *(a1 + 8) = v8[1];
  v8[1] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = v8[2];
  v8[2] = v10;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_29A57A090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Usd_ApplyLayerOffsetToValue(pxrInternal__aapl__pxrReserved__ *this, pxrInternal__aapl__pxrReserved__::VtValue *a2, const pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a3)
{
  if (sub_29A3FA1D0(this))
  {
    v5 = sub_29A3FA2F8(this);
    v6 = *v5;
    *v5 = 0;
    *&v26 = v6;
    *&v26 = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator*(a2, &v26);
    v7 = sub_29A3FA2F8(this);
    *v7 = v26;
  }

  else if (sub_29A3FA330(this))
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v8 = sub_29A3FA48C(this);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;
    v28 = v9;
    v10 = *v8;
    v11 = v27;
    *v8 = v26;
    v12 = *(v8 + 16);
    v13 = *(v8 + 24);
    *(v8 + 16) = __PAIR128__(*(&v27 + 1), v11);
    v26 = v10;
    *&v27 = v12;
    *(&v27 + 1) = v13;
    sub_29A21358C(&v26);
    v14 = v28;
    sub_29A21358C(&v26);
    v15 = &v28[v26];
    while (v14 != v15)
    {
      *v14 = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator*(a2, v14);
      ++v14;
    }

    v18 = sub_29A3FA48C(this);
    v19 = *(v18 + 32);
    v20 = v27;
    *(v18 + 32) = v28;
    v28 = v19;
    v21 = *v18;
    *v18 = v26;
    v22 = *(v18 + 16);
    v23 = *(v18 + 24);
    *(v18 + 16) = __PAIR128__(*(&v27 + 1), v20);
    v26 = v21;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    sub_29A213190(&v26);
  }

  else if (sub_29A185258(this))
  {
    v29 = 0;
    v16 = sub_29A18799C(this);
    pxrInternal__aapl__pxrReserved__::VtDictionary::swap(v16, &v29);
    *&v26 = a2;
    sub_29A57A3B8(&v29, &v26);
    v17 = sub_29A18799C(this);
    pxrInternal__aapl__pxrReserved__::VtDictionary::swap(v17, &v29);
    sub_29A184A10(&v29, 0);
  }

  else if (sub_29A1F650C(this))
  {
    *&v27 = 0;
    v26 = &v26 + 8;
    v24 = sub_29A32953C(this);
    sub_29A13F534(v24, &v26);
    sub_29A57A4C0(&v26, a2);
    v25 = sub_29A32953C(this);
    sub_29A13F534(v25, &v26);
    sub_29A1F9B0C(&v26, *(&v26 + 1));
  }
}

double *sub_29A57A2F0@<X0>(double *__src@<X0>, double *__dst@<X4>, double *a3@<X1>, double *a4@<X2>, double *a5@<X3>, double **a6@<X8>)
{
  v9 = __src;
  if (__src == a3)
  {
    a3 = __src;
LABEL_8:
    v14 = a5 - a4;
    if (a5 != a4)
    {
      v15 = __dst;
      v9 = a4;
LABEL_12:
      __src = memmove(v15, v9, v14);
    }
  }

  else
  {
    while (a4 != a5)
    {
      v11 = *a4;
      v12 = *a4 >= *v9;
      v13 = 8 * (*v9 >= *a4);
      if (*a4 < *v9)
      {
        v13 = 8;
      }

      else
      {
        v11 = *v9;
      }

      a4 = (a4 + v13);
      v9 += v12;
      *__dst++ = v11;
      if (v9 == a3)
      {
        goto LABEL_8;
      }
    }

    v14 = a3 - v9;
    if (a3 != v9)
    {
      v15 = __dst;
      goto LABEL_12;
    }
  }

  *a6 = a3;
  a6[1] = a5;
  a6[2] = (__dst + v14);
  return __src;
}

uint64_t sub_29A57A3B8(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, pxrInternal__aapl__pxrReserved__::VtValue **a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(a1);
  v6 = v5;
  v14[1] = v4;
  v14[2] = v5;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v8)
  {
    v9 = v4 == result;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v6 != v8 || (v10 & 1) == 0)
  {
    if (sub_29A185258((v4 + 56)))
    {
      v14[0] = 0;
      v12 = sub_29A18799C((v4 + 56));
      pxrInternal__aapl__pxrReserved__::VtDictionary::swap(v12, v14);
      sub_29A57A3B8(v14, a2);
      v13 = sub_29A18799C((v4 + 56));
      pxrInternal__aapl__pxrReserved__::VtDictionary::swap(v13, v14);
      sub_29A184A10(v14, 0);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Usd_ApplyLayerOffsetToValue((v4 + 56), *a2, v11);
    }

    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
  }

  return result;
}

void sub_29A57A4A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A184A10(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A57A4C0(uint64_t a1, double *a2)
{
  v3 = &v14;
  v4 = *(a1 + 8);
  v14 = *a1;
  v15[0] = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v15[1] = v5;
  if (v5)
  {
    v3 = (v4 + 2);
  }

  *v3 = v15;
  *a1 = a1 + 8;
  v6 = v14;
  if (v14 != v15)
  {
    do
    {
      v13 = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator*(a2, *(v6 + 4));
      v16 = &v13;
      v8 = sub_29A2351D8(a1, &v13, &unk_29B4D6118, &v16);
      sub_29A1854E8(v8 + 5, v6 + 5);
      pxrInternal__aapl__pxrReserved__::Usd_ApplyLayerOffsetToValue((v8 + 5), a2, v9);
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v15);
    v4 = v15[0];
  }

  sub_29A1F9B0C(&v14, v4);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<BOOL>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0A50);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C09B0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<BOOL>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<BOOL>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<unsigned char>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0A80);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C09E0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<unsigned char>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<unsigned char>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<int>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0A90);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C09F0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<int>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<int>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<unsigned int>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0AA0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0A00);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<unsigned int>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<unsigned int>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<long long>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0AB0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0A10);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<long long>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<long long>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<unsigned long long>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0AC0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0A20);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<unsigned long long>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<unsigned long long>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::pxr_half::half>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0A30);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0990);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::pxr_half::half>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::pxr_half::half>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0A70);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C09D0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<float>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<float>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<float>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0A60);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C09C0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<double>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<double>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<double>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C06E0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0850);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2BBDC0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2BBF40);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<std::string>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0A40);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C09A0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<std::string>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<std::string>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0810);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0980);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::TfToken>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C06F0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0860);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0700);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0870);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfPathExpression>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0710);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0880);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfPathExpression>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2BBE00);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2BBF70);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C06B0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0820);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfMatrix2d>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C06C0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0830);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfMatrix3d>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C06D0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0840);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfMatrix4d>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfQuath>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0740);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C08B0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfQuath>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfQuath>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfQuatf>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0730);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C08A0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfQuatf>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfQuatf>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfQuatd>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0720);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0890);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfQuatd>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfQuatd>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2i>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0780);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C08F0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec2i>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec2i>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2h>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0770);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C08E0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec2h>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec2h>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2f>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0760);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C08D0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec2f>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec2f>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0750);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C08C0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec2d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec2d>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec3i>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C07C0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0930);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec3i>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec3i>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec3h>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C07B0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0920);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec3h>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec3h>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec3f>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C07A0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0910);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec3f>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec3f>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec3d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0790);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0900);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec3d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec3d>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec4i>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0800);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0970);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec4i>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec4i>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec4h>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C07F0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0960);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec4h>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec4h>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec4f>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C07E0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0950);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec4f>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec4f>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec4d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C07D0);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x29C2C0940);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfVec4d>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::GfVec4d>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>();
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfValueBlock>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue<pxrInternal__aapl__pxrReserved__::SdfValueBlock>();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::GetVariability(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
  }

  v4 = *v3;

  return pxrInternal__aapl__pxrReserved__::UsdStage::_GetVariability(v4, this);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::SetVariability(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A580894(a1, (v2 + 480));
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  v5 = 0;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v6 = 0;
  sub_29A5809FC(this, (v2 + 464), &v5, &v6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  result = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v3, &v5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

atomic_uint **pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName@<X0>(pxrInternal__aapl__pxrReserved__::UsdAttribute *this@<X0>, atomic_uint **a2@<X8>)
{
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  result = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetRole(&TypeName);
  v4 = *result;
  *a2 = *result;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v5;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::SetTypeName(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::SdfValueTypeName *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(a2, v5);
  v5[1] = 0;
  sub_29A580764(this, (v4 + 464));
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::Block(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Clear(this, a2);
  v5 = &off_2A2048E28 + 3;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Set(this, v4, NAN);
  return sub_29A186B14(v4);
}

void sub_29A57E3C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::Clear(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdAttribute::ClearAtTime(this, a2);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v4)
    {
      v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    return pxrInternal__aapl__pxrReserved__::UsdObject::ClearMetadata(this, (v4 + 448));
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::Set(pxrInternal__aapl__pxrReserved__ **a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, double a3)
{
  v6 = a1[1];
  if (!v6 || (*(v6 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(a1[1], a2);
  }

  v7 = *v6;

  return pxrInternal__aapl__pxrReserved__::UsdStage::_SetValue(v7, a1, a2, a3);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v3 = *(a1 + 8);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetTimeSamplesInInterval(*v3, a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::GetNumTimeSamples(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
  }

  v4 = *v3;

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetNumTimeSamples(v4, this);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::GetBracketingTimeSamples(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, double a2, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a3, double *a4, BOOL *a5)
{
  v10 = *(this + 1);
  if (!v10 || (*(v10 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a3);
  }

  v11 = *v10;

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetBracketingTimeSamples(v11, this, a2, 0, a3, a4, a5);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamplesInInterval(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v3 = *(a1 + 8);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v4 = *v3;

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetTimeSamplesInInterval(v4, a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::GetUnionedTimeSamples(uint64_t a1, void *a2)
{
  v3 = 0xFFF0000000000000;
  v4 = 0;
  v5 = 0x7FF0000000000000;
  v6 = 0;
  return pxrInternal__aapl__pxrReserved__::UsdAttribute::GetUnionedTimeSamplesInInterval(a1, &v3, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::GetUnionedTimeSamplesInInterval(uint64_t a1, uint64_t a2, void *a3)
{
  a3[1] = *a3;
  v3 = *a1;
  if (*a1 != *(a1 + 8))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    __p = 0;
    v6 = 0;
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v3);
  }

  return 1;
}

void sub_29A57E7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValueOpinion(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  sub_29A5805DC(v4);
  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetResolveInfo(*v3, this, v4, 0);
}

void sub_29A57E8CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A57E8E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A57E8E0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 68));
  sub_29B2AC9D8(a1);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  sub_29A5805DC(v4);
  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetResolveInfo(*v3, this, v4, 0);
}

void sub_29A57E99C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A57E8E0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  sub_29A5805DC(v4);
  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetResolveInfo(*v3, this, v4, 0);
}

void sub_29A57EA34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A57E8E0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::HasFallbackValue(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetSchemaAttribute(this, v5);
  result = pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::Property::IsAttribute(v5);
  if (result)
  {
    result = sub_29A57EAE4(v5, 0);
  }

  if ((v5[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v5[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29A57EAE4(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v3 = *(a1 + 8);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v5 = (v4 + 88);
  v6 = *v3;

  return pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(v6, (v3 + 1), v5, a2);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::ValueMightBeTimeVarying(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
  }

  v4 = *v3;

  pxrInternal__aapl__pxrReserved__::UsdStage::_ValueMightBeTimeVarying(v4, this);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::Get(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6 = *(a1 + 8);
  if (!v6 || (*(v6 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v7 = *v6;
  a3.n128_u64[0] = v3;

  return pxrInternal__aapl__pxrReserved__::UsdStage::_GetValue(v7, a1, a2, a3);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::GetResolveInfo(uint64_t a1@<X0>, _DWORD *a2@<X8>, void *a3@<D0>)
{
  v7 = a3;
  sub_29A5805DC(a2);
  v6 = *(a1 + 8);
  if (!v6 || (*(v6 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), v5);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetResolveInfo(*v6, a1, a2, &v7);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::GetResolveInfo(pxrInternal__aapl__pxrReserved__::UsdAttribute *this@<X0>, _DWORD *a2@<X8>)
{
  sub_29A5805DC(a2);
  v5 = *(this + 1);
  if (!v5 || (*(v5 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), v4);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetResolveInfo(*v5, this, a2, 0);
}

void sub_29A57ED64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::HasSpline(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
  }

  v4 = *v3;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v5)
  {
    v5 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v7 = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdStage::_HasMetadata(v4, this, (v5 + 328), &v7, 0);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::GetSpline(pxrInternal__aapl__pxrReserved__::UsdAttribute *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a2);
  v4 = *(this + 1);
  if (!v4 || (*(v4 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), v3);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetTypeSpecificResolvedMetadata<pxrInternal__aapl__pxrReserved__::TsSpline>();
}

void sub_29A57EEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::SetSpline(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetEditTargetMappedMetadata<pxrInternal__aapl__pxrReserved__::TsSpline>();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::ClearAtTime(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v3 = *(a1 + 8);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v4 = *v3;

  return pxrInternal__aapl__pxrReserved__::UsdStage::_ClearValue(v4, a1);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdAttribute::GetColorSpace@<W0>(pxrInternal__aapl__pxrReserved__::UsdAttribute *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v6 = 0;
  result = sub_29A5809FC(this, (v4 + 40), a2, &v6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A57F0C8(_Unwind_Exception *a1)
{
  if ((*v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::SetColorSpace(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v3)
  {
    v3 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  sub_29A580764(this, (v3 + 40));
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::HasColorSpace(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::UsdObject::HasMetadata(this, (v2 + 40));
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::ClearColorSpace(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::UsdObject::ClearMetadata(this, (v2 + 40));
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_CreateSpec(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2@<X1>, char a3@<W2>, int *a4@<X3>, pxrInternal__aapl__pxrReserved__::SdfSpec *a5@<X8>)
{
  v10 = (a1 + 8);
  v11 = *(a1 + 8);
  if (!v11 || (*(v11 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v12 = *v11;
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v26);
  pxrInternal__aapl__pxrReserved__::UsdStage::_CreateAttributeSpecForEditing(v12, a1);
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a5))
  {
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(a5);
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
    }

    v14 = v26;
    v15 = atomic_load((v13 + 144));
    if (v14 >= v15 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v26, v13))
    {
      pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v25);
      sub_29A580660(v19, v10, (a1 + 16));
      v16 = pxrInternal__aapl__pxrReserved__::UsdStage::_CreatePrimSpecForEditing(v12, v19, &v24);
      if ((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
      }

      pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::New(&v24, EmptyString, a2, *a4, a3, a5);
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v24);
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
      sub_29A1DE3A4(&v21);
      if (v20)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20, v18);
      }

      sub_29A1DD644(v25);
    }

    else
    {
      *a5 = 0;
    }
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v26);
}

void sub_29A57F3DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  sub_29A57F434(va);
  sub_29A1DD644(va1);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_29A57F434(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v4 = *(a1 + 8);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::_CreateSpec(pxrInternal__aapl__pxrReserved__::UsdAttribute *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
  }

  v4 = *v3;

  return pxrInternal__aapl__pxrReserved__::UsdStage::_CreateAttributeSpecForEditing(v4, this);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::_Create(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, char a3, int *a4)
{
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_CreateSpec(a1, a2, a3, a4, &v6);
  IsDormant = pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v6);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v6);
  return IsDormant ^ 1u;
}

void sub_29A57F534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_GetPathForAuthoring(pxrInternal__aapl__pxrReserved__ **a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _DWORD *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a2))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
  }

  v7 = a1[1];
  if (!v7 || (*(v7 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(a1[1], v6);
  }

  EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(*v7);
  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath(a2))
  {
    pxrInternal__aapl__pxrReserved__::UsdEditTarget::MapToSpecPath(EditTarget, a2, &v10);
    pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v10, &v9);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1);
}

void sub_29A57F8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_29A1DCEA8(va1);
  sub_29A1DCEA8((v5 - 56));
  sub_29A1DCEA8(va);
  sub_29A1DCEA8(v4);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::AddConnection(pxrInternal__aapl__pxrReserved__ **a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_GetPathForAuthoring(a1, a2, &v2);
}

void sub_29A57FAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  if (a7)
  {
    sub_29A014BEC(a7);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  sub_29A1DD644(va1);
  sub_29A1DCEA8((v7 - 64));
  if (*(v7 - 33) < 0)
  {
    operator delete(*(v7 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_29A57FB74(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  v5 = 0;
  v6 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v11 = *a1;
      v6 = a1[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v11;
      v5 = 1;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_21;
      }

      v8 = *a1;
      v6 = a1[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = 0;
      v16 = v8;
    }

    v10 = 5;
    goto LABEL_20;
  }

  if (!a3)
  {
    v9 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v9;
    v5 = 1;
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v7 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = 0;
    v16 = v7;
LABEL_15:
    v10 = 4;
LABEL_20:
    v17 = v6;
    v18 = v10;
  }

LABEL_21:
  if (!sub_29A1F222C(a1) || (*(**a1 + 16))())
  {
    v13 = *a1;
    v12 = a1[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v13;
    v17 = v12;
    if (v6)
    {
      sub_29A014BEC(v6);
    }

    v18 = 0;
  }

  if (!sub_29A1F22B0(&v16))
  {
    sub_29A580AA4(&v16, 0xFFFFFFFFLL, a2);
    goto LABEL_37;
  }

  v14 = sub_29A3CAD94(&v16, a2);
  if (v14 == -1)
  {
    goto LABEL_36;
  }

  if (v5)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_29A1F22B0(&v16) - 1;
  }

  if (v14 != v15)
  {
    sub_29A3CADEC(&v16, v14);
LABEL_36:
    sub_29A580AA4(&v16, (v5 - 1), a2);
  }

LABEL_37:
  if (v17)
  {
    sub_29A014BEC(v17);
  }
}

void sub_29A57FD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::RemoveConnection(pxrInternal__aapl__pxrReserved__ **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_GetPathForAuthoring(this, a2, &v2);
}

void sub_29A57FED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a12);
  sub_29A1DD644(&a14);
  sub_29A1DCEA8((v16 - 48));
  if (*(v16 - 17) < 0)
  {
    operator delete(*(v16 - 40));
  }

  _Unwind_Resume(a1);
}

void sub_29A57FF58(uint64_t *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (sub_29A2F1CB8(a1))
  {
    if ((*(**a1 + 16))())
    {
      v4 = a1[1];
      v8 = *a1;
      v9 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = 0;
      sub_29A3CACB4(&v8, a2);
      if (v9)
      {
        sub_29A014BEC(v9);
      }
    }

    else if (((*(**a1 + 24))() & 1) == 0)
    {
      v5 = a1[1];
      v8 = *a1;
      v9 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = 1;
      sub_29A3CACB4(&v8, a2);
      if (v9)
      {
        sub_29A014BEC(v9);
      }

      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = 4;
      sub_29A3CACB4(&v8, a2);
      if (v9)
      {
        sub_29A014BEC(v9);
      }

      v7 = a1[1];
      v8 = *a1;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = 5;
      sub_29A3CACB4(&v8, a2);
      if (v9)
      {
        sub_29A014BEC(v9);
      }

      sub_29A580B74(a1, 2, a2);
    }
  }
}

void sub_29A5800D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::SetConnections(pxrInternal__aapl__pxrReserved__ **a1, const pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  memset(v18, 0, sizeof(v18));
  sub_29A2FCAE8(v18, (a2[1] - *a2) >> 3);
  v4 = *a2;
  if (*a2 != a2[1])
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_GetPathForAuthoring(a1, v4, &v12);
  }

  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v11);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_CreateSpec(a1, v5);
  IsDormant = pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v10);
  if ((IsDormant & 1) == 0)
  {
    v7 = sub_29A2F5A90(&v10);
    pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetConnectionPathList(v7, &v12);
    if (sub_29A2F1CB8(&v12))
    {
      (*(*v12 + 7))(v12);
    }

    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v8 = sub_29A2F5A90(&v10);
    pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetConnectionPathList(v8, &__p);
    v12 = __p;
    v13 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v14) = 0;
    sub_29A58040C(&v12, v18);
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v10);
  sub_29A1DD644(v11);
  v12 = v18;
  sub_29A1E234C(&v12);
  return IsDormant ^ 1u;
}

void sub_29A580350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  a17 = v27 - 56;
  sub_29A1E234C(&a17);
  _Unwind_Resume(a1);
}

unsigned int *sub_29A58040C(unsigned int *a1, void *a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (*(*v4 + 112))(v4, a1[4]);
    v6 = (v5[1] - *v5) >> 3;
  }

  else
  {
    v6 = 0;
  }

  sub_29A3CAE50(a1, 0, v6, a2);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::ClearConnections(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v9);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_CreateSpec(this, v2);
  IsDormant = pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v8);
  if ((IsDormant & 1) == 0)
  {
    v4 = sub_29A2F5A90(&v8);
    pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::GetConnectionPathList(v4, &v6);
    if (sub_29A2F1CB8(&v6))
    {
      (*(*v6 + 48))(v6);
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v8);
  sub_29A1DD644(v9);
  return IsDormant ^ 1u;
}

void sub_29A580538(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  if (a3)
  {
    sub_29A014BEC(a3);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  sub_29A1DD644(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredConnections(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v2)
  {
    v2 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return pxrInternal__aapl__pxrReserved__::UsdObject::HasAuthoredMetadata(this, (v2 + 56));
}

uint64_t sub_29A5805DC(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = -1;
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset((a1 + 48), 0.0, 1.0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 64));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 68));
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  return a1;
}

void sub_29A580640(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  sub_29B2ACBBC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A580660(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  *a1 = 1;
  v5 = *a2;
  *(a1 + 8) = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  *(a1 + 24) = 0;
  v6 = *(a1 + 8);
  if (v6 && (*(v6 + 57) & 8) == 0 && *(v6 + 16) == *(a1 + 16))
  {
    v8[0] = "usd/object.h";
    v8[1] = "UsdObject";
    v8[2] = 691;
    v8[3] = "pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(const Usd_PrimDataHandle &, const SdfPath &)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "!_prim || _prim->GetPath() != _proxyPrimPath", 0);
  }

  return a1;
}

void sub_29A58072C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8((v1 + 16));
  v5 = *(v1 + 8);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5, v4);
  }

  _Unwind_Resume(a1);
}

void sub_29A580764(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t sub_29A58082C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  result = sub_29A1FA710(a2);
  if (result)
  {
    v5 = *(v2 + 1);
    if ((v5 & 4) != 0)
    {
      v2 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    return (**(a1 + 8) ^ *v2) < 8uLL;
  }

  return result;
}

void sub_29A580894(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t sub_29A580934(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = (*(a2 + 8) & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
  }

  *(a2 + 8) = &off_2A20494F0 + 3;
  *a2 = v3;
  return 1;
}

uint64_t sub_29A580998(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  result = sub_29A27CE24(a2);
  if (result)
  {
    v5 = *(v2 + 8);
    if ((v5 & 4) != 0)
    {
      v2 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    return *v2 == **(a1 + 8);
  }

  return result;
}

BOOL sub_29A5809FC(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 8);
  if (!v8 || (*(v8 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v9 = *v8;
  v11[1] = a3;
  v11[2] = &stru_2A2040480;
  v12 = 0;
  v11[0] = &unk_2A204B290;
  return pxrInternal__aapl__pxrReserved__::UsdStage::_GetStrongestResolvedMetadata(v9, a1, a2, a4, 1, v11);
}

void sub_29A580AA4(unsigned int *a1, uint64_t a2, _DWORD *a3)
{
  if (a2 == -1)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = (*(*v5 + 112))(v5, a1[4]);
      a2 = (v6[1] - *v6) >> 3;
    }

    else
    {
      LODWORD(a2) = 0;
    }
  }

  v7 = a2;
  sub_29A34A4F0(v8, 1uLL, a3);
  sub_29A3CAE50(a1, v7, 0, v8);
  v9 = v8;
  sub_29A1E234C(&v9);
}

void sub_29A580B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void sub_29A580B74(uint64_t *a1, int a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = a1[1];
  v5 = *a1;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a2;
  if (sub_29A3CAD94(&v5, a3) == -1)
  {
    sub_29A580BFC(&v5, a3);
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29A580BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A580BFC(unsigned int *a1, _DWORD *a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = (*(*v4 + 112))(v4, a1[4]);
    v6 = (v5[1] - *v5) >> 3;
  }

  else
  {
    v6 = 0;
  }

  sub_29A34A4F0(v7, 1uLL, a2);
  sub_29A3CAE50(a1, v6, 0, v7);
  v8 = v7;
  sub_29A1E234C(&v8);
}

void sub_29A580CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A580CC0(uint64_t a1)
{
  v2 = (a1 + 64);

  return sub_29A1DE3A4(v2);
}

void pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<BOOL>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetValueFromResolveInfo<BOOL>();
}

void sub_29A580EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A57E8E0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetValueFromResolveInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>();
}

void sub_29A58107C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A57E8E0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<unsigned char>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetValueFromResolveInfo<unsigned char>();
}

void sub_29A581258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A57E8E0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetValueFromResolveInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
}

void sub_29A581434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A57E8E0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<int>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetValueFromResolveInfo<int>();
}

void sub_29A581610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A57E8E0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetValueFromResolveInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void sub_29A5817EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A57E8E0(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<unsigned int>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_GetValueFromResolveInfo<unsigned int>();
}