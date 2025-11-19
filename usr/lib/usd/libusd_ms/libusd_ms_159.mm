void sub_29AE22100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t __p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if ((__p & 7) != 0)
  {
    atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a23 & 7) != 0)
  {
    atomic_fetch_add_explicit((a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a24 & 7) != 0)
  {
    atomic_fetch_add_explicit((a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a26)
  {
    sub_29A014BEC(a26);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_SupportsRefinement(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, int a2)
{
  if (*(this + 59))
  {
    if (a2 <= 0)
    {

      return pxrInternal__aapl__pxrReserved__::HdBasisCurves::IsEnabledForceRefinedCurves(this);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5[0] = "hdSt/basisCurves.cpp";
    v5[1] = "_SupportsRefinement";
    v5[2] = 1192;
    v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_SupportsRefinement(int)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Calling _SupportsRefinement before topology is set");
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_SupportsUserWidths(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdStDrawItem *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
  {
    sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  return sub_29AE23918(a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_SupportsUserNormals(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdStDrawItem *a2)
{
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
  {
    sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  return sub_29AE23918(a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PropagateDirtyBits(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, uint64_t a2)
{
  if ((a2 & 0x100) != 0)
  {
    return *(this + 124) & 0x7000040 | a2;
  }

  return a2;
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_InitRepr(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, unsigned int *a3)
{
  v6 = *(this + 55);
  v7 = *(this + 56);
  v8 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v6 != v7)
  {
    while ((v8 ^ *v6) >= 8)
    {
      v6 += 3;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }
  }

  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v6 == *(this + 56))
  {
    pxrInternal__aapl__pxrReserved__::HdBasisCurves::_GetReprDesc(a2, &v21);
    sub_29AE3C6BC(&v23);
    v9 = *(this + 56);
    if (v9 >= *(this + 57))
    {
      v11 = sub_29AD089E4(this + 440, a2, &v23);
      v12 = *(&v23 + 1);
      *(this + 56) = v11;
      if (v12)
      {
        sub_29A014BEC(v12);
        v11 = *(this + 56);
      }
    }

    else
    {
      v10 = *a2;
      *v9 = *a2;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v9 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(v9 + 8) = v23;
      v11 = v9 + 24;
      *(this + 56) = v9 + 24;
    }

    *a3 |= 0x800000u;
    if (!v21)
    {
      goto LABEL_32;
    }

    sub_29A0ECEEC(&v23, "hdSt", "new HdStDrawItem");
    v13 = malloc(0x50uLL);
    if (v23)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(DWORD2(v23), v23);
    }

    pxrInternal__aapl__pxrReserved__::HdStDrawItem::HdStDrawItem(v13, this + 32);
    v20 = v13;
    v14 = *(v11 - 16);
    sub_29AE23DC4(v14, (*v14 + 8 * *(v14 + 24)), &v20);
    ++*(v14 + 24);
    if (v21 == 3)
    {
      v13[4] = 9;
      v17 = *(this + 124);
      if ((v17 & 0x4000000) != 0)
      {
        goto LABEL_30;
      }

      *(this + 124) = v17 | 0x4000000;
      v16 = 0x4000000;
    }

    else if (v21 == 1)
    {
      v13[4] = 8;
      v15 = *(this + 124);
      if ((v15 & 0x2000000) != 0)
      {
        goto LABEL_30;
      }

      *(this + 124) = v15 | 0x2000000;
      v16 = 0x2000000;
    }

    else
    {
      v18 = *(this + 124);
      if ((v18 & 0x1000000) != 0)
      {
        goto LABEL_30;
      }

      *(this + 124) = v18 | 0x1000000;
      v16 = 0x1000000;
    }

    *a3 |= v16;
LABEL_30:
    v13[5] = 10;
    v19 = v20;
    v20 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

LABEL_32:
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AE22614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE22678(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29AE3C7D4(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29AE22730(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE22748(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    do
    {
      result = pxrInternal__aapl__pxrReserved__::HdBufferSource::IsValid(*v2);
      if (result)
      {
        result = (*(**v2 + 24))(*v2, a2);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_29AE227C0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29AE3C87C(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29AE22878(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE22890(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6)
{
  v125 = *MEMORY[0x29EDCA608];
  if (sub_29A18E100(a4))
  {
    v12 = *a5;
    v13 = a5[1];
    v113[0] = v12;
    v113[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    LOWORD(v119) = 15360;
    LODWORD(v121) = a3;
    v14 = sub_29A18DFB4(a4);
    v15 = *(v14 + 1);
    v116 = *v14;
    v117 = v15;
    v16 = v14[4];
    v118 = v16;
    if (v16)
    {
      v17 = (v16 - 16);
      if (*(&v117 + 1))
      {
        v17 = *(&v117 + 1);
      }

      atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
    }

    if (v116)
    {
      goto LABEL_12;
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v18)
    {
      v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v18 + 59) ^ *a2) <= 7)
    {
LABEL_12:
      v124 = &off_2A2043028;
      v19 = operator new(0x30uLL);
      v21 = v117;
      *v19 = v116;
      *(v19 + 1) = v21;
      v22 = v118;
      *(v19 + 4) = v118;
      if (v22)
      {
        v23 = (v22 - 16);
        if (*(v19 + 3))
        {
          v23 = *(v19 + 3);
        }

        atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v19 + 10);
      ValueTupleType = v19;
      atomic_fetch_add_explicit(v19 + 10, 1u, memory_order_relaxed);
      *&v114 = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(&ValueTupleType, v20);
      *(&v114 + 1) = v24;
      sub_29AE258B8(v113, &v116, a1, a2, &v121, &v119, &v114, &v115);
      v120 = v115;
      v115 = 0uLL;
      sub_29A01729C(a6, &v120);
      if (*(&v120 + 1))
      {
        sub_29A014BEC(*(&v120 + 1));
      }

      if (*(&v115 + 1))
      {
        sub_29A014BEC(*(&v115 + 1));
      }

      sub_29A186B14(&ValueTupleType);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
  }

  if (sub_29A18E720(a4))
  {
    v25 = *a5;
    v26 = a5[1];
    v112[0] = v25;
    v112[1] = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v121) = a3;
    v119 = 1065353216;
    v27 = sub_29A18ED70(a4);
    v28 = *(v27 + 1);
    v116 = *v27;
    v117 = v28;
    v29 = v27[4];
    v118 = v29;
    if (v29)
    {
      v30 = (v29 - 16);
      if (*(&v117 + 1))
      {
        v30 = *(&v117 + 1);
      }

      atomic_fetch_add_explicit(v30, 1uLL, memory_order_relaxed);
    }

    if (v116)
    {
      goto LABEL_33;
    }

    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v31)
    {
      v31 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v31 + 59) ^ *a2) <= 7)
    {
LABEL_33:
      v124 = &off_2A2042F70;
      v32 = operator new(0x30uLL);
      v34 = v117;
      *v32 = v116;
      *(v32 + 1) = v34;
      v35 = v118;
      *(v32 + 4) = v118;
      if (v35)
      {
        v36 = (v35 - 16);
        if (*(v32 + 3))
        {
          v36 = *(v32 + 3);
        }

        atomic_fetch_add_explicit(v36, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v32 + 10);
      ValueTupleType = v32;
      atomic_fetch_add_explicit(v32 + 10, 1u, memory_order_relaxed);
      *&v114 = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(&ValueTupleType, v33);
      *(&v114 + 1) = v37;
      sub_29AE27298(v112, &v116, a1, a2, &v121, &v119, &v114, &v115);
      v120 = v115;
      v115 = 0uLL;
      sub_29A01729C(a6, &v120);
      if (*(&v120 + 1))
      {
        sub_29A014BEC(*(&v120 + 1));
      }

      if (*(&v115 + 1))
      {
        sub_29A014BEC(*(&v115 + 1));
      }

      sub_29A186B14(&ValueTupleType);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  if (sub_29A19104C(a4))
  {
    v38 = *a5;
    v39 = a5[1];
    v111[0] = v38;
    v111[1] = v39;
    if (v39)
    {
      atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
    }

    v121 = 1065353216;
    v119 = a3;
    v40 = sub_29A1915AC(a4);
    v41 = *(v40 + 1);
    v116 = *v40;
    v117 = v41;
    v42 = v40[4];
    v118 = v42;
    if (v42)
    {
      v43 = (v42 - 16);
      if (*(&v117 + 1))
      {
        v43 = *(&v117 + 1);
      }

      atomic_fetch_add_explicit(v43, 1uLL, memory_order_relaxed);
    }

    if (v116)
    {
      goto LABEL_54;
    }

    v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v44)
    {
      v44 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v44 + 59) ^ *a2) <= 7)
    {
LABEL_54:
      v124 = &off_2A2043198;
      v45 = operator new(0x30uLL);
      v47 = v117;
      *v45 = v116;
      *(v45 + 1) = v47;
      v48 = v118;
      *(v45 + 4) = v118;
      if (v48)
      {
        v49 = (v48 - 16);
        if (*(v45 + 3))
        {
          v49 = *(v45 + 3);
        }

        atomic_fetch_add_explicit(v49, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v45 + 10);
      ValueTupleType = v45;
      atomic_fetch_add_explicit(v45 + 10, 1u, memory_order_relaxed);
      *&v114 = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(&ValueTupleType, v46);
      *(&v114 + 1) = v50;
      sub_29AE289E0(v111, &v116, a1, a2, &v119, &v121, &v114, &v115);
      v120 = v115;
      v115 = 0uLL;
      sub_29A01729C(a6, &v120);
      if (*(&v120 + 1))
      {
        sub_29A014BEC(*(&v120 + 1));
      }

      if (*(&v115 + 1))
      {
        sub_29A014BEC(*(&v115 + 1));
      }

      sub_29A186B14(&ValueTupleType);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
  }

  if (sub_29A1936C8(a4))
  {
    v51 = *a5;
    v52 = a5[1];
    v110[0] = v51;
    v110[1] = v52;
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
    }

    v121 = 1065353216;
    LODWORD(v122) = 0;
    v119 = a3;
    v53 = sub_29A193BCC(a4);
    v54 = *(v53 + 1);
    v116 = *v53;
    v117 = v54;
    v55 = v53[4];
    v118 = v55;
    if (v55)
    {
      v56 = (v55 - 16);
      if (*(&v117 + 1))
      {
        v56 = *(&v117 + 1);
      }

      atomic_fetch_add_explicit(v56, 1uLL, memory_order_relaxed);
    }

    if (v116)
    {
      goto LABEL_75;
    }

    v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v57)
    {
      v57 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v57 + 59) ^ *a2) <= 7)
    {
LABEL_75:
      v124 = &off_2A20433C0;
      v58 = operator new(0x30uLL);
      v60 = v117;
      *v58 = v116;
      *(v58 + 1) = v60;
      v61 = v118;
      *(v58 + 4) = v118;
      if (v61)
      {
        v62 = (v61 - 16);
        if (*(v58 + 3))
        {
          v62 = *(v58 + 3);
        }

        atomic_fetch_add_explicit(v62, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v58 + 10);
      ValueTupleType = v58;
      atomic_fetch_add_explicit(v58 + 10, 1u, memory_order_relaxed);
      *&v114 = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(&ValueTupleType, v59);
      *(&v114 + 1) = v63;
      sub_29AE29EC4(v110, &v116, a1, a2, &v119, &v121, &v114, &v115);
      v120 = v115;
      v115 = 0uLL;
      sub_29A01729C(a6, &v120);
      if (*(&v120 + 1))
      {
        sub_29A014BEC(*(&v120 + 1));
      }

      if (*(&v115 + 1))
      {
        sub_29A014BEC(*(&v115 + 1));
      }

      sub_29A186B14(&ValueTupleType);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  if (sub_29A195CC0(a4))
  {
    v64 = *a5;
    v65 = a5[1];
    v109[0] = v64;
    v109[1] = v65;
    if (v65)
    {
      atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
    }

    v120 = xmmword_29B47CF20;
    v119 = a3;
    v66 = sub_29A196258(a4);
    v67 = *(v66 + 1);
    v116 = *v66;
    v117 = v67;
    v68 = v66[4];
    v118 = v68;
    if (v68)
    {
      v69 = (v68 - 16);
      if (*(&v117 + 1))
      {
        v69 = *(&v117 + 1);
      }

      atomic_fetch_add_explicit(v69, 1uLL, memory_order_relaxed);
    }

    if (v116)
    {
      goto LABEL_96;
    }

    v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v70)
    {
      v70 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v70 + 59) ^ *a2) <= 7)
    {
LABEL_96:
      v122 = &off_2A20435E8;
      v71 = operator new(0x30uLL);
      v73 = v117;
      *v71 = v116;
      *(v71 + 1) = v73;
      v74 = v118;
      *(v71 + 4) = v118;
      if (v74)
      {
        v75 = (v74 - 16);
        if (*(v71 + 3))
        {
          v75 = *(v71 + 3);
        }

        atomic_fetch_add_explicit(v75, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v71 + 10);
      v121 = v71;
      atomic_fetch_add_explicit(v71 + 10, 1u, memory_order_relaxed);
      ValueTupleType = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(&v121, v72);
      v124 = v76;
      sub_29AE2B534(v109, &v116, a1, a2, &v119, &v120, &ValueTupleType, &v114);
      v115 = v114;
      v114 = 0uLL;
      sub_29A01729C(a6, &v115);
      if (*(&v115 + 1))
      {
        sub_29A014BEC(*(&v115 + 1));
      }

      if (*(&v114 + 1))
      {
        sub_29A014BEC(*(&v114 + 1));
      }

      sub_29A186B14(&v121);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
  }

  if (sub_29A190184(a4))
  {
    v77 = a5[1];
    v108[0] = *a5;
    v108[1] = v77;
    if (v77)
    {
      atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE24248(a1, a2, a3, a4, v108, a6);
  }

  if (sub_29A192658(a4))
  {
    v78 = a5[1];
    v107[0] = *a5;
    v107[1] = v78;
    if (v78)
    {
      atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE24454(a1, a2, a3, a4, v107, a6, 1.0, 0.0);
  }

  if (sub_29A194DC4(a4))
  {
    v79 = a5[1];
    v106[0] = *a5;
    v106[1] = v79;
    if (v79)
    {
      atomic_fetch_add_explicit((v79 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE2465C(a1, a2, a3, a4, v106, a6, 1.0, 0.0, 0.0);
  }

  if (sub_29A197328(a4))
  {
    v80 = a5[1];
    v105[0] = *a5;
    v105[1] = v80;
    if (v80)
    {
      atomic_fetch_add_explicit((v80 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE24868(a1, a2, a3, a4, v105, a6, 1.0, 0.0, 0.0, 1.0);
  }

  if (sub_29A19D610(a4))
  {
    v81 = a5[1];
    v104[0] = *a5;
    v104[1] = v81;
    if (v81)
    {
      atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE24A74(a1, a2, a3, a4, v104, a6);
  }

  if (sub_29A3FCEC4(a4))
  {
    v82 = a5[1];
    v103[0] = *a5;
    v103[1] = v82;
    if (v82)
    {
      atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE24C7C(a1, a2, a3, a4, v103, a6, 1);
  }

  if (sub_29A3FD9D0(a4))
  {
    v83 = a5[1];
    v102[0] = *a5;
    v102[1] = v83;
    if (v83)
    {
      atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE24E84(a1, a2, a3, a4, v102, a6, 1, 0);
  }

  if (sub_29A3FE614(a4))
  {
    v84 = a5[1];
    v101[0] = *a5;
    v101[1] = v84;
    if (v84)
    {
      atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE25090(a1, a2, a3, a4, v101, a6, 1, 0x100000000);
  }

  if (sub_29A3FE614(a4))
  {
    v85 = a5[1];
    v100[0] = *a5;
    v100[1] = v85;
    if (v85)
    {
      atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE25090(a1, a2, a3, a4, v100, a6, 1, 0x100000000);
  }

  if (sub_29A3FE614(a4))
  {
    v86 = a5[1];
    v99[0] = *a5;
    v99[1] = v86;
    if (v86)
    {
      atomic_fetch_add_explicit((v86 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE25090(a1, a2, a3, a4, v99, a6, 1, 0x100000000);
  }

  if (sub_29AD659D8(a4))
  {
    v87 = a5[1];
    v98[0] = *a5;
    v98[1] = v87;
    if (v87)
    {
      atomic_fetch_add_explicit((v87 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE25298(a1, a2, a3, a4, v98, a6);
  }

  if (sub_29A19D610(a4))
  {
    v88 = a5[1];
    v97[0] = *a5;
    v97[1] = v88;
    if (v88)
    {
      atomic_fetch_add_explicit((v88 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE24A74(a1, a2, a3, a4, v97, a6);
  }

  if (sub_29A19C440(a4))
  {
    v89 = a5[1];
    v96[0] = *a5;
    v96[1] = v89;
    if (v89)
    {
      atomic_fetch_add_explicit((v89 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE254A4(a1, a2, a3, a4, v96, a6);
  }

  if (sub_29A19BC88(a4))
  {
    v90 = a5[1];
    v95[0] = *a5;
    v95[1] = v90;
    if (v90)
    {
      atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29AE256B0(a1, a2, a3, a4, v95, a6);
  }

  *&v116 = "hdSt/basisCurves.cpp";
  *(&v116 + 1) = "ProcessVertexOrVaryingPrimvar";
  *&v117 = 823;
  *(&v117 + 1) = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::ProcessVertexOrVaryingPrimvar(const SdfPath &, const TfToken &, HdInterpolation, const VtValue &, HdSt_BasisCurvesTopologySharedPtr, HdBufferSourceSharedPtrVector *)";
  LOBYTE(v118) = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
  v93 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v93)
  {
    v94 = (v93 + 16);
    if (*(v93 + 39) < 0)
    {
      v94 = *v94;
    }
  }

  else
  {
    v94 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v116, "HdStBasisCurves(%s) - Type of vertex or varying primvar %s not yet fully supported", v92, Text, v94);
  sub_29ADD6D6C(a2, a4, &v120);
  v116 = v120;
  v120 = 0uLL;
  sub_29A01729C(a6, &v116);
  if (*(&v116 + 1))
  {
    sub_29A014BEC(*(&v116 + 1));
  }

  if (*(&v120 + 1))
  {
    sub_29A014BEC(*(&v120 + 1));
  }
}

void sub_29AE23598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = *(v42 - 168);
  if (v44)
  {
    sub_29A014BEC(v44);
  }

  v45 = *(v42 - 120);
  if (v45)
  {
    sub_29A014BEC(v45);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE23864(uint64_t *a1)
{
  result = *a1;
  if (result == a1[1])
  {
    sub_29B2C9E04();
  }

  return result;
}

void *sub_29AE23894(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>>>::operator++() [T = std::vector<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferSource>>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

uint64_t sub_29AE23918(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a1 + 24), *(a1 + 12));
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 168))(&v25);
    v5 = v25 != 0;
    if (v26)
    {
      sub_29A014BEC(v26);
    }

    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a1 + 24), *(a1 + 13));
  v7 = *v6;
  if (*v6)
  {
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 168))(&v25);
    if (v25)
    {
      v5 = 1;
    }

    if (v26)
    {
      sub_29A014BEC(v26);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  v9 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a1 + 24), *(a1 + 18));
  v10 = *v9;
  if (*v9)
  {
    v11 = v9[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v10 + 168))(&v25);
    if (v25)
    {
      v5 = 1;
    }

    if (v26)
    {
      sub_29A014BEC(v26);
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }
  }

  v12 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a1 + 24), *(a1 + 14));
  v13 = *v12;
  if (*v12)
  {
    v14 = v12[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v13 + 168))(&v25);
    if (v25)
    {
      v5 = 1;
    }

    if (v26)
    {
      sub_29A014BEC(v26);
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }

  v15 = sub_29ADC9478(a1);
  if (v15 >= 1)
  {
    v16 = v15;
    for (i = 0; i != v16; ++i)
    {
      v18 = *(a1 + 24);
      v19 = sub_29ADCA7A8(a1 + 8, i);
      v20 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(v18, v19);
      v21 = *v20;
      if (*v20)
      {
        v22 = v20[1];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v21 + 168))(&v25);
        v23 = v25 != 0;
        if (v26)
        {
          sub_29A014BEC(v26);
        }

        v5 |= v23;
        if (v22)
        {
          sub_29A014BEC(v22);
        }
      }
    }
  }

  return v5 & 1;
}

void sub_29AE23BF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStBasisCurves::GetBuiltinPrimvarNames(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_2A174EF40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EF40))
  {
    sub_29AE23CD0(&v2);
  }

  return &qword_2A174EF28;
}

void sub_29AE23CD0(pxrInternal__aapl__pxrReserved__::HdBasisCurves **a1)
{
  pxrInternal__aapl__pxrReserved__::HdBasisCurves::GetBuiltinPrimvarNames(*a1);
  qword_2A174EF30 = 0;
  unk_2A174EF38 = 0;
  qword_2A174EF28 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AE23DAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AE23DC4(char **a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 3) + 1;
    if (v14 >> 61)
    {
      sub_29A00C9A4();
    }

    v15 = a2 - v13;
    v16 = v7 - v13;
    v17 = v16 >> 2;
    if (v16 >> 2 <= v14)
    {
      v17 = ((v6 - *a1) >> 3) + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v19 = v15 >> 3;
    v33 = a1;
    if (v18)
    {
      v20 = sub_29A00C9BC(a1, v18);
    }

    else
    {
      v20 = 0;
    }

    v30 = v20;
    v31 = &v20[8 * v19];
    *&v32 = v31;
    *(&v32 + 1) = &v20[8 * v18];
    sub_29AE23F80(&v30, a3);
    v22 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v23 = *a1;
    v24 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = &v24[-(v4 - v23)];
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v27;
    *(&v32 + 1) = v28;
    v30 = v27;
    v31 = v27;
    sub_29AE2419C(&v30);
    return v22;
  }

  else if (a2 == v6)
  {
    v21 = *a3;
    *a3 = 0;
    *v6 = v21;
    a1[1] = (v6 + 1);
  }

  else
  {
    v8 = v6 - 1;
    v9 = a1[1];
    if (v6 >= 8)
    {
      v10 = *v8;
      *v8 = 0;
      *v6 = v10;
      v9 = (v6 + 1);
    }

    a1[1] = v9;
    sub_29AE2408C(v4, v8, v6);
    v11 = *a3;
    *a3 = 0;
    v12 = *v4;
    *v4 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  return v4;
}

void sub_29AE23F6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AE2419C(va);
  _Unwind_Resume(a1);
}

void *sub_29AE23F80(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v6 = *result;
    v5 = result[1];
    if (v5 <= *v3)
    {
      v9 = v4 - v6;
      v8 = v9 == 0;
      v10 = v9 >> 2;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      v26 = v3[4];
      v12 = sub_29A00C9BC(v26, v11);
      v14 = &v12[8 * (v11 >> 2)];
      v15 = *(v3 + 1);
      v16 = v15;
      v17 = v14;
      v18 = *(&v15 + 1) - v15;
      if (*(&v15 + 1) != v15)
      {
        v17 = &v14[v18];
        v19 = &v12[8 * (v11 >> 2)];
        do
        {
          v20 = *v16;
          *v16++ = 0;
          *v19 = v20;
          v19 += 8;
          v18 -= 8;
        }

        while (v18);
        v15 = *(v3 + 1);
      }

      v23 = *v3;
      *v3 = v12;
      v3[1] = v14;
      v24 = v15;
      v21 = v3[3];
      v3[2] = v17;
      v3[3] = &v12[8 * v13];
      v25 = v21;
      result = sub_29AE2419C(&v23);
      v4 = v3[2];
    }

    else
    {
      v7 = (((v5 - *v3) >> 3) + 1 + ((((v5 - *v3) >> 3) + 1) >> 63)) >> 1;
      result = sub_29AE24110(v5, v4, &v5[-v7]);
      v3[1] -= 8 * v7;
    }
  }

  v22 = *a2;
  *a2 = 0;
  *v4 = v22;
  v3[2] = v4 + 1;
  return result;
}

void *sub_29AE2408C(void *a1, void *a2, void *a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      v10 = *--a3;
      v9 = v10;
      *a3 = v7;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    while (v6 != a1);
  }

  return a2;
}

uint64_t *sub_29AE24110(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t sub_29AE2419C(uint64_t a1)
{
  sub_29AE241D4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29AE241D4(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_29AE24248(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6)
{
  v29[2] = *MEMORY[0x29EDCA608];
  v28 = a3;
  v27 = 0x3FF0000000000000;
  v10 = sub_29A190618(a4);
  v11 = *(v10 + 1);
  v24 = *v10;
  v25 = v11;
  v12 = v10[4];
  v26 = v12;
  if (v12)
  {
    v13 = (v12 - 16);
    if (*(&v25 + 1))
    {
      v13 = *(&v25 + 1);
    }

    atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
  }

  if (v24)
  {
    goto LABEL_9;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v14)
  {
    v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v14 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v29[1] = &off_2A20430E0;
    v15 = operator new(0x30uLL);
    v17 = v25;
    *v15 = v24;
    *(v15 + 1) = v17;
    v18 = v26;
    *(v15 + 4) = v26;
    if (v18)
    {
      v19 = (v18 - 16);
      if (*(v15 + 3))
      {
        v19 = *(v15 + 3);
      }

      atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v15 + 10);
    v29[0] = v15;
    atomic_fetch_add_explicit(v15 + 10, 1u, memory_order_relaxed);
    v21[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v29, v16);
    v21[1] = v20;
    sub_29AE2CA70(a5, &v24, a1, a2, &v28, &v27, v21, &v22);
    v23 = v22;
    v22 = 0uLL;
    sub_29A01729C(a6, &v23);
    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    if (*(&v22 + 1))
    {
      sub_29A014BEC(*(&v22 + 1));
    }

    sub_29A186B14(v29);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AE24454(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6, double a7, double a8)
{
  v31[2] = *MEMORY[0x29EDCA608];
  v30[0] = a7;
  v30[1] = a8;
  v29 = a3;
  v12 = sub_29A192BB8(a4);
  v13 = *(v12 + 1);
  v26 = *v12;
  v27 = v13;
  v14 = v12[4];
  v28 = v14;
  if (v14)
  {
    v15 = (v14 - 16);
    if (*(&v27 + 1))
    {
      v15 = *(&v27 + 1);
    }

    atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    goto LABEL_9;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v16)
  {
    v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v16 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v31[1] = &off_2A2043308;
    v17 = operator new(0x30uLL);
    v19 = v27;
    *v17 = v26;
    *(v17 + 1) = v19;
    v20 = v28;
    *(v17 + 4) = v28;
    if (v20)
    {
      v21 = (v20 - 16);
      if (*(v17 + 3))
      {
        v21 = *(v17 + 3);
      }

      atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v17 + 10);
    v31[0] = v17;
    atomic_fetch_add_explicit(v17 + 10, 1u, memory_order_relaxed);
    v23[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v31, v18);
    v23[1] = v22;
    sub_29AE2E08C(a5, &v26, a1, a2, &v29, v30, v23, &v24);
    v25 = v24;
    v24 = 0uLL;
    sub_29A01729C(a6, &v25);
    if (*(&v25 + 1))
    {
      sub_29A014BEC(*(&v25 + 1));
    }

    if (*(&v24 + 1))
    {
      sub_29A014BEC(*(&v24 + 1));
    }

    sub_29A186B14(v31);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29AE2465C(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6, double a7, double a8, double a9)
{
  v32[2] = *MEMORY[0x29EDCA608];
  v31[0] = a7;
  v31[1] = a8;
  v31[2] = a9;
  v30 = a3;
  v13 = sub_29A1952C8(a4);
  v14 = *(v13 + 1);
  v27 = *v13;
  v28 = v14;
  v15 = v13[4];
  v29 = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(&v28 + 1))
    {
      v16 = *(&v28 + 1);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  if (v27)
  {
    goto LABEL_9;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v17)
  {
    v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v17 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v32[1] = &off_2A2043530;
    v18 = operator new(0x30uLL);
    v20 = v28;
    *v18 = v27;
    *(v18 + 1) = v20;
    v21 = v29;
    *(v18 + 4) = v29;
    if (v21)
    {
      v22 = (v21 - 16);
      if (*(v18 + 3))
      {
        v22 = *(v18 + 3);
      }

      atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v18 + 10);
    v32[0] = v18;
    atomic_fetch_add_explicit(v18 + 10, 1u, memory_order_relaxed);
    v24[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v32, v19);
    v24[1] = v23;
    sub_29AE2F594(a5, &v27, a1, a2, &v30, v31, v24, &v25);
    v26 = v25;
    v25 = 0uLL;
    sub_29A01729C(a6, &v26);
    if (*(&v26 + 1))
    {
      sub_29A014BEC(*(&v26 + 1));
    }

    if (*(&v25 + 1))
    {
      sub_29A014BEC(*(&v25 + 1));
    }

    sub_29A186B14(v32);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29AE24868(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6, double a7, double a8, double a9, double a10)
{
  v33[2] = *MEMORY[0x29EDCA608];
  v32[0] = a7;
  v32[1] = a8;
  v32[2] = a9;
  v32[3] = a10;
  v31 = a3;
  v14 = sub_29A1978C0(a4);
  v15 = *(v14 + 1);
  v28 = *v14;
  v29 = v15;
  v16 = v14[4];
  v30 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v29 + 1))
    {
      v17 = *(&v29 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (v28)
  {
    goto LABEL_9;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v18)
  {
    v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v18 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v33[1] = &off_2A2043758;
    v19 = operator new(0x30uLL);
    v21 = v29;
    *v19 = v28;
    *(v19 + 1) = v21;
    v22 = v30;
    *(v19 + 4) = v30;
    if (v22)
    {
      v23 = (v22 - 16);
      if (*(v19 + 3))
      {
        v23 = *(v19 + 3);
      }

      atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v19 + 10);
    v33[0] = v19;
    atomic_fetch_add_explicit(v19 + 10, 1u, memory_order_relaxed);
    v25[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v33, v20);
    v25[1] = v24;
    sub_29AE30C10(a5, &v28, a1, a2, &v31, v32, v25, &v26);
    v27 = v26;
    v26 = 0uLL;
    sub_29A01729C(a6, &v27);
    if (*(&v27 + 1))
    {
      sub_29A014BEC(*(&v27 + 1));
    }

    if (*(&v26 + 1))
    {
      sub_29A014BEC(*(&v26 + 1));
    }

    sub_29A186B14(v33);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29AE24A74(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6)
{
  v29[2] = *MEMORY[0x29EDCA608];
  v27 = 1;
  v28 = a3;
  v10 = sub_29A19D57C(a4);
  v11 = *(v10 + 1);
  v24 = *v10;
  v25 = v11;
  v12 = v10[4];
  v26 = v12;
  if (v12)
  {
    v13 = (v12 - 16);
    if (*(&v25 + 1))
    {
      v13 = *(&v25 + 1);
    }

    atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
  }

  if (v24)
  {
    goto LABEL_9;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v14)
  {
    v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v14 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v29[1] = &off_2A2043D18;
    v15 = operator new(0x30uLL);
    v17 = v25;
    *v15 = v24;
    *(v15 + 1) = v17;
    v18 = v26;
    *(v15 + 4) = v26;
    if (v18)
    {
      v19 = (v18 - 16);
      if (*(v15 + 3))
      {
        v19 = *(v15 + 3);
      }

      atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v15 + 10);
    v29[0] = v15;
    atomic_fetch_add_explicit(v15 + 10, 1u, memory_order_relaxed);
    v21[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v29, v16);
    v21[1] = v20;
    sub_29AE32190(a5, &v24, a1, a2, &v28, &v27, v21, &v22);
    v23 = v22;
    v22 = 0uLL;
    sub_29A01729C(a6, &v23);
    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    if (*(&v22 + 1))
    {
      sub_29A014BEC(*(&v22 + 1));
    }

    sub_29A186B14(v29);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AE24C7C(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6, uint64_t a7)
{
  v30[2] = *MEMORY[0x29EDCA608];
  v29 = a7;
  v28 = a3;
  v11 = sub_29AD02EB4(a4);
  v12 = *(v11 + 1);
  v25 = *v11;
  v26 = v12;
  v13 = v11[4];
  v27 = v13;
  if (v13)
  {
    v14 = (v13 - 16);
    if (*(&v26 + 1))
    {
      v14 = *(&v26 + 1);
    }

    atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
  }

  if (v25)
  {
    goto LABEL_9;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v15)
  {
    v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v15 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v30[1] = &off_2A2047FA0;
    v16 = operator new(0x30uLL);
    v18 = v26;
    *v16 = v25;
    *(v16 + 1) = v18;
    v19 = v27;
    *(v16 + 4) = v27;
    if (v19)
    {
      v20 = (v19 - 16);
      if (*(v16 + 3))
      {
        v20 = *(v16 + 3);
      }

      atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v16 + 10);
    v30[0] = v16;
    atomic_fetch_add_explicit(v16 + 10, 1u, memory_order_relaxed);
    v22[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v30, v17);
    v22[1] = v21;
    sub_29AE338C4(a5, &v25, a1, a2, &v28, &v29, v22, &v23);
    v24 = v23;
    v23 = 0uLL;
    sub_29A01729C(a6, &v24);
    if (*(&v24 + 1))
    {
      sub_29A014BEC(*(&v24 + 1));
    }

    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    sub_29A186B14(v30);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29AE24E84(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6, uint64_t a7, int a8)
{
  v32[2] = *MEMORY[0x29EDCA608];
  v30 = a7;
  v31 = a8;
  v29 = a3;
  v12 = sub_29AD02FE4(a4);
  v13 = *(v12 + 1);
  v26 = *v12;
  v27 = v13;
  v14 = v12[4];
  v28 = v14;
  if (v14)
  {
    v15 = (v14 - 16);
    if (*(&v27 + 1))
    {
      v15 = *(&v27 + 1);
    }

    atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    goto LABEL_9;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v16)
  {
    v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v16 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v32[1] = &off_2A2048110;
    v17 = operator new(0x30uLL);
    v19 = v27;
    *v17 = v26;
    *(v17 + 1) = v19;
    v20 = v28;
    *(v17 + 4) = v28;
    if (v20)
    {
      v21 = (v20 - 16);
      if (*(v17 + 3))
      {
        v21 = *(v17 + 3);
      }

      atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v17 + 10);
    v32[0] = v17;
    atomic_fetch_add_explicit(v17 + 10, 1u, memory_order_relaxed);
    v23[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v32, v18);
    v23[1] = v22;
    sub_29AE34DD0(a5, &v26, a1, a2, &v29, &v30, v23, &v24);
    v25 = v24;
    v24 = 0uLL;
    sub_29A01729C(a6, &v25);
    if (*(&v25 + 1))
    {
      sub_29A014BEC(*(&v25 + 1));
    }

    if (*(&v24 + 1))
    {
      sub_29A014BEC(*(&v24 + 1));
    }

    sub_29A186B14(v32);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29AE25090(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6, uint64_t a7, uint64_t a8)
{
  v31[2] = *MEMORY[0x29EDCA608];
  v30[0] = a7;
  v30[1] = a8;
  v29 = a3;
  v12 = sub_29AD03114(a4);
  v13 = *(v12 + 1);
  v26 = *v12;
  v27 = v13;
  v14 = v12[4];
  v28 = v14;
  if (v14)
  {
    v15 = (v14 - 16);
    if (*(&v27 + 1))
    {
      v15 = *(&v27 + 1);
    }

    atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    goto LABEL_9;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v16)
  {
    v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v16 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v31[1] = &off_2A2048280;
    v17 = operator new(0x30uLL);
    v19 = v27;
    *v17 = v26;
    *(v17 + 1) = v19;
    v20 = v28;
    *(v17 + 4) = v28;
    if (v20)
    {
      v21 = (v20 - 16);
      if (*(v17 + 3))
      {
        v21 = *(v17 + 3);
      }

      atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v17 + 10);
    v31[0] = v17;
    atomic_fetch_add_explicit(v17 + 10, 1u, memory_order_relaxed);
    v23[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v31, v18);
    v23[1] = v22;
    sub_29AE36424(a5, &v26, a1, a2, &v29, v30, v23, &v24);
    v25 = v24;
    v24 = 0uLL;
    sub_29A01729C(a6, &v25);
    if (*(&v25 + 1))
    {
      sub_29A014BEC(*(&v25 + 1));
    }

    if (*(&v24 + 1))
    {
      sub_29A014BEC(*(&v24 + 1));
    }

    sub_29A186B14(v31);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29AE25298(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6)
{
  v29[2] = *MEMORY[0x29EDCA608];
  v28 = a3;
  v27 = 1;
  v10 = sub_29AE37930(a4);
  v11 = *(v10 + 1);
  v24 = *v10;
  v25 = v11;
  v12 = v10[4];
  v26 = v12;
  if (v12)
  {
    v13 = (v12 - 16);
    if (*(&v25 + 1))
    {
      v13 = *(&v25 + 1);
    }

    atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
  }

  if (v24)
  {
    goto LABEL_9;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v14)
  {
    v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v14 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v29[1] = &off_2A207D940;
    v15 = operator new(0x30uLL);
    v17 = v25;
    *v15 = v24;
    *(v15 + 1) = v17;
    v18 = v26;
    *(v15 + 4) = v26;
    if (v18)
    {
      v19 = (v18 - 16);
      if (*(v15 + 3))
      {
        v19 = *(v15 + 3);
      }

      atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v15 + 10);
    v29[0] = v15;
    atomic_fetch_add_explicit(v15 + 10, 1u, memory_order_relaxed);
    v21[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v29, v16);
    v21[1] = v20;
    sub_29AE37A60(a5, &v24, a1, a2, &v28, &v27, v21, &v22);
    v23 = v22;
    v22 = 0uLL;
    sub_29A01729C(a6, &v23);
    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    if (*(&v22 + 1))
    {
      sub_29A014BEC(*(&v22 + 1));
    }

    sub_29A186B14(v29);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
}

void sub_29AE254A4(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6)
{
  v29[2] = *MEMORY[0x29EDCA608];
  v28 = a3;
  v27 = 1;
  v10 = sub_29A19C8C0(a4);
  v11 = *(v10 + 1);
  v24 = *v10;
  v25 = v11;
  v12 = v10[4];
  v26 = v12;
  if (v12)
  {
    v13 = (v12 - 16);
    if (*(&v25 + 1))
    {
      v13 = *(&v25 + 1);
    }

    atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
  }

  if (v24)
  {
    goto LABEL_9;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v14)
  {
    v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v14 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v29[1] = &off_2A2043BA8;
    v15 = operator new(0x30uLL);
    v17 = v25;
    *v15 = v24;
    *(v15 + 1) = v17;
    v18 = v26;
    *(v15 + 4) = v26;
    if (v18)
    {
      v19 = (v18 - 16);
      if (*(v15 + 3))
      {
        v19 = *(v15 + 3);
      }

      atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v15 + 10);
    v29[0] = v15;
    atomic_fetch_add_explicit(v15 + 10, 1u, memory_order_relaxed);
    v21[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v29, v16);
    v21[1] = v20;
    sub_29AE394F4(a5, &v24, a1, a2, &v28, &v27, v21, &v22);
    v23 = v22;
    v22 = 0uLL;
    sub_29A01729C(a6, &v23);
    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    if (*(&v22 + 1))
    {
      sub_29A014BEC(*(&v22 + 1));
    }

    sub_29A186B14(v29);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

void sub_29AE256B0(_DWORD *a1, uint64_t *a2, int a3, pxrInternal__aapl__pxrReserved__::VtValue *a4, uint64_t *a5, void **a6)
{
  v29[2] = *MEMORY[0x29EDCA608];
  v27 = 1;
  v28 = a3;
  v10 = sub_29A19BB3C(a4);
  v11 = *(v10 + 1);
  v24 = *v10;
  v25 = v11;
  v12 = v10[4];
  v26 = v12;
  if (v12)
  {
    v13 = (v12 - 16);
    if (*(&v25 + 1))
    {
      v13 = *(&v25 + 1);
    }

    atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
  }

  if (v24)
  {
    goto LABEL_9;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v14)
  {
    v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v14 + 59) ^ *a2) <= 7)
  {
LABEL_9:
    v29[1] = &off_2A2043C60;
    v15 = operator new(0x30uLL);
    v17 = v25;
    *v15 = v24;
    *(v15 + 1) = v17;
    v18 = v26;
    *(v15 + 4) = v26;
    if (v18)
    {
      v19 = (v18 - 16);
      if (*(v15 + 3))
      {
        v19 = *(v15 + 3);
      }

      atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, v15 + 10);
    v29[0] = v15;
    atomic_fetch_add_explicit(v15 + 10, 1u, memory_order_relaxed);
    v21[0] = pxrInternal__aapl__pxrReserved__::HdGetValueTupleType(v29, v16);
    v21[1] = v20;
    sub_29AE3AF88(a5, &v24, a1, a2, &v28, &v27, v21, &v22);
    v23 = v22;
    v22 = 0uLL;
    sub_29A01729C(a6, &v23);
    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    if (*(&v22 + 1))
    {
      sub_29A014BEC(*(&v22 + 1));
    }

    sub_29A186B14(v29);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void *sub_29AE258B8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, __int16 *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x90uLL);
  result = sub_29AE2595C(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE2595C(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, __int16 *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20959A0;
  sub_29AE25A74(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE25A08(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20959A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE25A74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, __int16 *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE25B00(a2, &v10, a4, a5, a6, *a7, *a8, *a9);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE25AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE25B00(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, __int16 a7, int a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A20959F0;
  v14 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v15;
  v16 = *(a3 + 32);
  *(a1 + 80) = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(a1 + 72))
    {
      v17 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v18 = *a5;
  *(a1 + 96) = *a5;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 108) = a7;
  *(a1 + 112) = a8;
  return a1;
}

uint64_t sub_29AE25C2C(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 112);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 96), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 96);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t sub_29AE25CC4(uint64_t a1)
{
  v1 = 0;
  v123 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A18EE04(v116, v3);
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v5 + 59) ^ *(a1 + 96)) >= 8)
    {
LABEL_7:
      v6 = *(a1 + 104);
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_11;
        }

        if (v4 == v3)
        {
          goto LABEL_10;
        }

        if (v4 == 1)
        {
          sub_29A18F540(v116);
          v18 = v117;
          sub_29A18F540(v116);
          v19 = v117;
          v20 = *&v116[0];
          sub_29A18F540(a1 + 48);
          v21 = (v19 + 2 * v20 - v18) >> 1;
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = vdupq_n_s64(v21 - 1);
            v24 = **(a1 + 80);
            v25 = (v21 + 7) & 0x7FFFFFFFFFFFFFF8;
            v26 = (v18 + 8);
            do
            {
              v27 = vdupq_n_s64(v22);
              v28 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v27, xmmword_29B430070)));
              if (vuzp1_s8(vuzp1_s16(v28, *v23.i8), *v23.i8).u8[0])
              {
                *(v26 - 4) = v24;
              }

              if (vuzp1_s8(vuzp1_s16(v28, *&v23), *&v23).i8[1])
              {
                *(v26 - 3) = v24;
              }

              if (vuzp1_s8(vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v27, xmmword_29B433E10)))), *&v23).i8[2])
              {
                *(v26 - 2) = v24;
                *(v26 - 1) = v24;
              }

              v29 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v27, xmmword_29B433E00)));
              if (vuzp1_s8(*&v23, vuzp1_s16(v29, *&v23)).i32[1])
              {
                *v26 = v24;
              }

              if (vuzp1_s8(*&v23, vuzp1_s16(v29, *&v23)).i8[5])
              {
                v26[1] = v24;
              }

              if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v27, xmmword_29B433DF0))))).i8[6])
              {
                v26[2] = v24;
                v26[3] = v24;
              }

              v22 += 8;
              v26 += 8;
            }

            while (v25 != v22);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A4ABA20(v116, (a1 + 48));
          LOWORD(v118) = 0;
          *&v110 = &v118;
          sub_29A18EFA8(v116, v3, &v110);
        }

        else
        {
          sub_29A18F540(v116);
          v66 = v117;
          sub_29A18F540(v116);
          v67 = (v117 + 2 * *&v116[0] - v66) >> 1;
          v68 = v67 - 1;
          if (v67 >= 1)
          {
            v69 = 0;
            v70 = *(a1 + 108);
            v71 = (v67 + 7) & 0x7FFFFFFFFFFFFFF8;
            v72 = vdupq_n_s64(v68);
            v73 = (v66 + 8);
            do
            {
              v74 = vdupq_n_s64(v69);
              v75 = vmovn_s64(vcgeq_u64(v72, vorrq_s8(v74, xmmword_29B430070)));
              if (vuzp1_s8(vuzp1_s16(v75, *v72.i8), *v72.i8).u8[0])
              {
                *(v73 - 4) = v70;
              }

              if (vuzp1_s8(vuzp1_s16(v75, *&v72), *&v72).i8[1])
              {
                *(v73 - 3) = v70;
              }

              if (vuzp1_s8(vuzp1_s16(*&v72, vmovn_s64(vcgeq_u64(v72, vorrq_s8(v74, xmmword_29B433E10)))), *&v72).i8[2])
              {
                *(v73 - 2) = v70;
                *(v73 - 1) = v70;
              }

              v76 = vmovn_s64(vcgeq_u64(v72, vorrq_s8(v74, xmmword_29B433E00)));
              if (vuzp1_s8(*&v72, vuzp1_s16(v76, *&v72)).i32[1])
              {
                *v73 = v70;
              }

              if (vuzp1_s8(*&v72, vuzp1_s16(v76, *&v72)).i8[5])
              {
                v73[1] = v70;
              }

              if (vuzp1_s8(*&v72, vuzp1_s16(*&v72, vmovn_s64(vcgeq_u64(v72, vorrq_s8(v74, xmmword_29B433DF0))))).i8[6])
              {
                v73[2] = v70;
                v73[3] = v70;
              }

              v69 += 8;
              v73 += 8;
            }

            while (v71 != v69);
          }

          sub_29A008864(&v110);
          v77 = sub_29A00911C(&v111, "HdStBasisCurves(", 16);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v79 = strlen(Text);
          v80 = sub_29A00911C(v77, Text, v79);
          v81 = sub_29A00911C(v80, ")", 1);
          v82 = sub_29A00911C(v81, "- Primvar ", 10);
          v83 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v83)
          {
            v84 = (v83 + 16);
            if (*(v83 + 39) < 0)
            {
              v84 = *v84;
            }
          }

          else
          {
            v84 = "";
          }

          v97 = strlen(v84);
          v98 = sub_29A00911C(v82, v84, v97);
          v99 = sub_29A00911C(v98, " has incorrect size for vertex interpolation ", 45);
          v100 = sub_29A00911C(v99, "(need ", 6);
          v101 = MEMORY[0x29C2C1F00](v100, v3);
          v102 = sub_29A00911C(v101, ", got ", 6);
          v103 = MEMORY[0x29C2C1F00](v102, v4);
          v104 = sub_29A00911C(v103, "), using fallback value ", 24);
          v105 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v104);
          sub_29A00911C(v105, " for rendering.", 15);
          v118 = "hdSt/basisCurvesComputations.h";
          v119 = "Resolve";
          v120 = 233;
          v121 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::pxr_half::half>::Resolve() [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
          v122 = 0;
          std::stringbuf::str();
          if (v109 >= 0)
          {
            v107 = __p;
          }

          else
          {
            v107 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v118, v107, v106);
          if (v109 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008B0C(&v110);
        }

LABEL_11:
        v119 = &off_2A2043028;
        v7 = operator new(0x30uLL);
        v8 = v116[1];
        *v7 = v116[0];
        *(v7 + 1) = v8;
        v9 = v117;
        *(v7 + 4) = v117;
        if (v9)
        {
          v10 = (v9 - 16);
          if (*(v7 + 3))
          {
            v10 = *(v7 + 3);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v7 + 10);
        v118 = v7;
        atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((a1 + 96), &v118, &v110);
        v11 = v110;
        v110 = 0uLL;
        if (*(&v11 + 1))
        {
          atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(a1 + 24);
        *(a1 + 16) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if (*(&v110 + 1))
        {
          sub_29A014BEC(*(&v110 + 1));
        }

        sub_29A186B14(&v118);
        sub_29AD1019C(a1);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A18F540(v116);
          v30 = v117;
          sub_29A18F540(v116);
          v31 = v117;
          v32 = *&v116[0];
          sub_29A18F540(a1 + 48);
          v33 = (v31 + 2 * v32 - v30) >> 1;
          if (v33 >= 1)
          {
            v34 = 0;
            v35 = vdupq_n_s64(v33 - 1);
            v36 = **(a1 + 80);
            v37 = (v33 + 7) & 0x7FFFFFFFFFFFFFF8;
            v38 = (v30 + 8);
            do
            {
              v39 = vdupq_n_s64(v34);
              v40 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_29B430070)));
              if (vuzp1_s8(vuzp1_s16(v40, *v35.i8), *v35.i8).u8[0])
              {
                *(v38 - 4) = v36;
              }

              if (vuzp1_s8(vuzp1_s16(v40, *&v35), *&v35).i8[1])
              {
                *(v38 - 3) = v36;
              }

              if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_29B433E10)))), *&v35).i8[2])
              {
                *(v38 - 2) = v36;
                *(v38 - 1) = v36;
              }

              v41 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_29B433E00)));
              if (vuzp1_s8(*&v35, vuzp1_s16(v41, *&v35)).i32[1])
              {
                *v38 = v36;
              }

              if (vuzp1_s8(*&v35, vuzp1_s16(v41, *&v35)).i8[5])
              {
                v38[1] = v36;
              }

              if (vuzp1_s8(*&v35, vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_29B433DF0))))).i8[6])
              {
                v38[2] = v36;
                v38[3] = v36;
              }

              v34 += 8;
              v38 += 8;
            }

            while (v37 != v34);
          }
        }

        else
        {
          sub_29A18F540(v116);
          v42 = v117;
          sub_29A18F540(v116);
          v43 = (v117 + 2 * *&v116[0] - v42) >> 1;
          v44 = v43 - 1;
          if (v43 >= 1)
          {
            v45 = 0;
            v46 = *(a1 + 108);
            v47 = (v43 + 7) & 0x7FFFFFFFFFFFFFF8;
            v48 = vdupq_n_s64(v44);
            v49 = (v42 + 8);
            do
            {
              v50 = vdupq_n_s64(v45);
              v51 = vmovn_s64(vcgeq_u64(v48, vorrq_s8(v50, xmmword_29B430070)));
              if (vuzp1_s8(vuzp1_s16(v51, *v48.i8), *v48.i8).u8[0])
              {
                *(v49 - 4) = v46;
              }

              if (vuzp1_s8(vuzp1_s16(v51, *&v48), *&v48).i8[1])
              {
                *(v49 - 3) = v46;
              }

              if (vuzp1_s8(vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, vorrq_s8(v50, xmmword_29B433E10)))), *&v48).i8[2])
              {
                *(v49 - 2) = v46;
                *(v49 - 1) = v46;
              }

              v52 = vmovn_s64(vcgeq_u64(v48, vorrq_s8(v50, xmmword_29B433E00)));
              if (vuzp1_s8(*&v48, vuzp1_s16(v52, *&v48)).i32[1])
              {
                *v49 = v46;
              }

              if (vuzp1_s8(*&v48, vuzp1_s16(v52, *&v48)).i8[5])
              {
                v49[1] = v46;
              }

              if (vuzp1_s8(*&v48, vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, vorrq_s8(v50, xmmword_29B433DF0))))).i8[6])
              {
                v49[2] = v46;
                v49[3] = v46;
              }

              v45 += 8;
              v49 += 8;
            }

            while (v47 != v45);
          }

          sub_29A008864(&v110);
          v53 = sub_29A00911C(&v111, "HdStBasisCurves(", 16);
          v54 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v55 = strlen(v54);
          v56 = sub_29A00911C(v53, v54, v55);
          v57 = sub_29A00911C(v56, ")", 1);
          v58 = sub_29A00911C(v57, "- Primvar ", 10);
          v59 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v59)
          {
            v60 = (v59 + 16);
            if (*(v59 + 39) < 0)
            {
              v60 = *v60;
            }
          }

          else
          {
            v60 = "";
          }

          v85 = strlen(v60);
          v86 = sub_29A00911C(v58, v60, v85);
          v87 = sub_29A00911C(v86, " has incorrect size for varying interpolation ", 46);
          v88 = sub_29A00911C(v87, "(need ", 6);
          v89 = MEMORY[0x29C2C1F00](v88, v14);
          v90 = sub_29A00911C(v89, ", got ", 6);
          v91 = MEMORY[0x29C2C1F00](v90, v4);
          v92 = sub_29A00911C(v91, "), using fallback value ", 24);
          v93 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v92);
          sub_29A00911C(v93, " for rendering.", 15);
          v118 = "hdSt/basisCurvesComputations.h";
          v119 = "Resolve";
          v120 = 271;
          v121 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::pxr_half::half>::Resolve() [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
          v122 = 0;
          std::stringbuf::str();
          if (v109 >= 0)
          {
            v95 = __p;
          }

          else
          {
            v95 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v118, v95, v94);
          if (v109 < 0)
          {
            operator delete(__p[0]);
          }

          *&v110 = *MEMORY[0x29EDC9528];
          v96 = *(MEMORY[0x29EDC9528] + 72);
          *(&v110 + *(v110 - 24)) = *(MEMORY[0x29EDC9528] + 64);
          v111 = v96;
          v112 = MEMORY[0x29EDC9570] + 16;
          if (v114 < 0)
          {
            operator delete(v113[7].__locale_);
          }

          v112 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v113);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v115);
        }

        goto LABEL_11;
      }

      v15 = *(*(a1 + 32) + 8);
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = v15 ^ *(v16 + 44);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17 > 7)
      {
        v61 = *(a1 + 32);
        v62 = *(v61 + 24);
        v118 = v62;
        if ((v62 & 7) != 0)
        {
          v63 = (v62 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed) & 1) == 0)
          {
            v118 = v63;
          }
        }

        v64 = *(*(a1 + 32) + 16);
        __p[0] = v64;
        if ((v64 & 7) != 0)
        {
          v65 = (v64 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed) & 1) == 0)
          {
            __p[0] = v65;
          }
        }

        sub_29AE26B78((a1 + 88), (a1 + 96), v3, (v61 + 32), &v118, __p, (a1 + 48), *(a1 + 108), &v110);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4ABA20(v116, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE26ABC(uint64_t a1)
{
  *a1 = &unk_2A20959F0;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29AE26B78(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, __int16 a8@<W7>, void *a9@<X8>)
{
  sub_29A18EE04(a9, a3);
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v18)
  {
    v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v18 + 57) ^ *a5) <= 7)
  {
    v70 = "hdSt/basisCurvesComputations.h";
    v71 = "HdSt_ExpandVarying";
    v72 = 86;
    v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
    v74 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    v21 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v21)
    {
      v22 = (v21 + 16);
      if (*(v21 + 39) < 0)
      {
        v22 = *v22;
      }
    }

    else
    {
      v22 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v70, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v20, Text, v22);
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v23)
  {
    v23 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v23 + 10) ^ *a6) < 8)
  {
    goto LABEL_79;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v24)
  {
    v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v24 + 11) ^ *a6) < 8)
  {
    goto LABEL_79;
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v25)
  {
    v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v25 + 7) ^ *a6) > 7)
  {
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v37)
    {
      v37 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v37 + 6) ^ *a6) > 7)
    {
      sub_29A18F540(a9);
      v54 = a9[4];
      sub_29A18F540(a9);
      v55 = (a9[4] + 2 * *a9 - v54) >> 1;
      v56 = v55 - 1;
      if (v55 >= 1)
      {
        v57 = 0;
        v58 = (v55 + 7) & 0x7FFFFFFFFFFFFFF8;
        v59 = vdupq_n_s64(v56);
        v60 = (v54 + 8);
        do
        {
          v61 = vdupq_n_s64(v57);
          v62 = vmovn_s64(vcgeq_u64(v59, vorrq_s8(v61, xmmword_29B430070)));
          if (vuzp1_s8(vuzp1_s16(v62, *v59.i8), *v59.i8).u8[0])
          {
            *(v60 - 4) = a8;
          }

          if (vuzp1_s8(vuzp1_s16(v62, *&v59), *&v59).i8[1])
          {
            *(v60 - 3) = a8;
          }

          if (vuzp1_s8(vuzp1_s16(*&v59, vmovn_s64(vcgeq_u64(v59, vorrq_s8(v61, xmmword_29B433E10)))), *&v59).i8[2])
          {
            *(v60 - 2) = a8;
            *(v60 - 1) = a8;
          }

          v63 = vmovn_s64(vcgeq_u64(v59, vorrq_s8(v61, xmmword_29B433E00)));
          if (vuzp1_s8(*&v59, vuzp1_s16(v63, *&v59)).i32[1])
          {
            *v60 = a8;
          }

          if (vuzp1_s8(*&v59, vuzp1_s16(v63, *&v59)).i8[5])
          {
            v60[1] = a8;
          }

          if (vuzp1_s8(*&v59, vuzp1_s16(*&v59, vmovn_s64(vcgeq_u64(v59, vorrq_s8(v61, xmmword_29B433DF0))))).i8[6])
          {
            v60[2] = a8;
            v60[3] = a8;
          }

          v57 += 8;
          v60 += 8;
        }

        while (v58 != v57);
      }

      v70 = "hdSt/basisCurvesComputations.h";
      v71 = "HdSt_ExpandVarying";
      v72 = 154;
      v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      v74 = 0;
      v64 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v66 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v66)
      {
        v67 = (v66 + 16);
        if (*(v66 + 39) < 0)
        {
          v67 = *v67;
        }
      }

      else
      {
        v67 = "";
      }

      v68 = *a6 & 0xFFFFFFFFFFFFFFF8;
      if (v68)
      {
        v69 = (v68 + 16);
        if (*(v68 + 39) < 0)
        {
          v69 = *v69;
        }
      }

      else
      {
        v69 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v70, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v65, v64, v67, v69);
    }

    else
    {
      if (*a4)
      {
        v38 = 0;
        v39 = 0;
        v40 = a4[4];
        v41 = &v40[*a4];
        do
        {
          v42 = *v40;
          if (*v40 >= 1)
          {
            v43 = a7[4];
            sub_29A18F540(a9);
            *(a9[4] + 2 * v39) = *(v43 + 2 * v38);
            v44 = a7[4];
            sub_29A18F540(a9);
            *(a9[4] + 2 * v39 + 2) = *(v44 + 2 * v38);
            if (v42 < 5)
            {
              v51 = v39 + 2;
              v50 = v38 + 1;
            }

            else
            {
              v45 = v42 - 2;
              v46 = 2;
              do
              {
                v47 = a7[4];
                sub_29A18F540(a9);
                *(a9[4] + 2 * v39 + 4) = *(v47 + 2 * v38 + 2);
                v48 = a7[4];
                sub_29A18F540(a9);
                *(a9[4] + 2 * v39 + 6) = *(v48 + 2 * v38 + 2);
                v49 = a7[4];
                sub_29A18F540(a9);
                *(a9[4] + 2 * v39 + 8) = *(v49 + 2 * v38 + 2);
                v46 += 3;
                ++v38;
                v39 += 3;
              }

              while (v46 < v45);
              v50 = v38 + 1;
              v51 = v39 + 2;
            }

            v52 = a7[4];
            sub_29A18F540(a9);
            *(a9[4] + 2 * v51) = *(v52 + 2 * v50);
            v53 = a7[4];
            sub_29A18F540(a9);
            *(a9[4] + 2 * v51 + 2) = *(v53 + 2 * v50);
            v39 = v51 + 2;
            v38 += 2;
          }

          ++v40;
        }

        while (v40 != v41);
      }

      else
      {
        v39 = 0;
        v38 = 0;
      }

      if (v38 != *a7)
      {
        v70 = "hdSt/basisCurvesComputations.h";
        v71 = "HdSt_ExpandVarying";
        v72 = 148;
        v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        v74 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "srcIndex == authoredValues.size()", 0);
      }

      if (v39 != a3)
      {
        v70 = "hdSt/basisCurvesComputations.h";
        v71 = "HdSt_ExpandVarying";
        v72 = 149;
        v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
        v74 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "dstIndex == numVerts", 0);
      }
    }
  }

  else
  {
LABEL_79:
    if (*a4)
    {
      v26 = 0;
      v27 = 0;
      v28 = a4[4];
      v29 = &v28[*a4];
      do
      {
        v30 = *v28;
        if (*v28 >= 1)
        {
          v31 = a7[4];
          sub_29A18F540(a9);
          *(a9[4] + 2 * v27) = *(v31 + 2 * v26);
          v32 = v27 + 1;
          if (v30 >= 4)
          {
            v33 = v30 - 3;
            do
            {
              v34 = a7[4];
              sub_29A18F540(a9);
              *(a9[4] + 2 * v32++) = *(v34 + 2 * v26++);
              --v33;
            }

            while (v33);
            v27 = v32 - 1;
          }

          v35 = a7[4];
          sub_29A18F540(a9);
          *(a9[4] + 2 * v32) = *(v35 + 2 * v26);
          v36 = a7[4];
          sub_29A18F540(a9);
          *(a9[4] + 2 * v27 + 4) = *(v36 + 2 * v26);
          v27 += 3;
          ++v26;
        }

        ++v28;
      }

      while (v28 != v29);
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    if (v26 != *a7)
    {
      v70 = "hdSt/basisCurvesComputations.h";
      v71 = "HdSt_ExpandVarying";
      v72 = 113;
      v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      v74 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "srcIndex == authoredValues.size()", 0);
    }

    if (v27 != a3)
    {
      v70 = "hdSt/basisCurvesComputations.h";
      v71 = "HdSt_ExpandVarying";
      v72 = 114;
      v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]";
      v74 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE27298@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, float *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x90uLL);
  result = sub_29AE2733C(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE2733C(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, float *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2095A88;
  sub_29AE27454(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE273E8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2095A88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE27454(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, float *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE274E0(a2, &v10, a4, a5, a6, *a7, *a9, *a8);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE274C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE274E0(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, int a7, float a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2095AD8;
  v14 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v15;
  v16 = *(a3 + 32);
  *(a1 + 80) = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(a1 + 72))
    {
      v17 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v18 = *a5;
  *(a1 + 96) = *a5;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 108) = a8;
  *(a1 + 112) = a7;
  return a1;
}

uint64_t sub_29AE27614(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 112);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 96), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 96);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t sub_29AE276AC(uint64_t a1)
{
  v1 = 0;
  v116 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A18E048(v109, v3);
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v5 + 59) ^ *(a1 + 96)) >= 8)
    {
LABEL_7:
      v6 = *(a1 + 104);
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_11;
        }

        if (v4 == v3)
        {
          goto LABEL_10;
        }

        if (v4 == 1)
        {
          sub_29A18E624(v109);
          v18 = v110;
          sub_29A18E624(v109);
          v19 = v110;
          v20 = *&v109[0];
          sub_29A18E624(a1 + 48);
          v22 = (v19 + 4 * v20 - v18) >> 2;
          if (v22 >= 1)
          {
            v23 = 0;
            v21.i32[0] = **(a1 + 80);
            v24 = vdupq_n_s64(v22 - 1);
            v25 = (v22 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v26 = (v18 + 8);
            do
            {
              v27 = vdupq_n_s64(v23);
              v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B430070)));
              if (vuzp1_s16(v28, v21).u8[0])
              {
                *(v26 - 2) = v21.i32[0];
              }

              if (vuzp1_s16(v28, v21).i8[2])
              {
                *(v26 - 1) = v21.i32[0];
              }

              if (vuzp1_s16(v21, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433E10)))).i32[1])
              {
                *v26 = v21.i32[0];
                v26[1] = v21.i32[0];
              }

              v23 += 4;
              v26 += 4;
            }

            while (v25 != v23);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A41712C(v109, (a1 + 48));
          LODWORD(v111) = 0;
          *&v103 = &v111;
          sub_29A18E224(v109, v3, &v103, v40);
        }

        else
        {
          sub_29A18E624(v109);
          v63 = v110;
          sub_29A18E624(v109);
          v65 = (v110 + 4 * *&v109[0] - v63) >> 2;
          if (v65 >= 1)
          {
            v66 = 0;
            v64.i32[0] = *(a1 + 108);
            v67 = vdupq_n_s64(v65 - 1);
            v68 = (v65 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v69 = (v63 + 8);
            do
            {
              v70 = vdupq_n_s64(v66);
              v71 = vmovn_s64(vcgeq_u64(v67, vorrq_s8(v70, xmmword_29B430070)));
              if (vuzp1_s16(v71, v64).u8[0])
              {
                *(v69 - 2) = v64.i32[0];
              }

              if (vuzp1_s16(v71, v64).i8[2])
              {
                *(v69 - 1) = v64.i32[0];
              }

              if (vuzp1_s16(v64, vmovn_s64(vcgeq_u64(v67, vorrq_s8(v70, xmmword_29B433E10)))).i32[1])
              {
                *v69 = v64.i32[0];
                v69[1] = v64.i32[0];
              }

              v66 += 4;
              v69 += 4;
            }

            while (v68 != v66);
          }

          sub_29A008864(&v103);
          v72 = sub_29A00911C(&v104, "HdStBasisCurves(", 16);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v74 = strlen(Text);
          v75 = sub_29A00911C(v72, Text, v74);
          v76 = sub_29A00911C(v75, ")", 1);
          v77 = sub_29A00911C(v76, "- Primvar ", 10);
          v78 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v78)
          {
            v79 = (v78 + 16);
            if (*(v78 + 39) < 0)
            {
              v79 = *v79;
            }
          }

          else
          {
            v79 = "";
          }

          v91 = strlen(v79);
          v92 = sub_29A00911C(v77, v79, v91);
          v93 = sub_29A00911C(v92, " has incorrect size for vertex interpolation ", 45);
          v94 = sub_29A00911C(v93, "(need ", 6);
          v95 = MEMORY[0x29C2C1F00](v94, v3);
          v96 = sub_29A00911C(v95, ", got ", 6);
          v97 = MEMORY[0x29C2C1F00](v96, v4);
          sub_29A00911C(v97, "), using fallback value ", 24);
          v98 = std::ostream::operator<<();
          sub_29A00911C(v98, " for rendering.", 15);
          v111 = "hdSt/basisCurvesComputations.h";
          v112 = "Resolve";
          v113 = 233;
          v114 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<float>::Resolve() [T = float]";
          v115 = 0;
          std::stringbuf::str();
          if (v102 >= 0)
          {
            v100 = __p;
          }

          else
          {
            v100 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v111, v100, v99);
          if (v102 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008B0C(&v103);
        }

LABEL_11:
        v112 = &off_2A2042F70;
        v7 = operator new(0x30uLL);
        v8 = v109[1];
        *v7 = v109[0];
        *(v7 + 1) = v8;
        v9 = v110;
        *(v7 + 4) = v110;
        if (v9)
        {
          v10 = (v9 - 16);
          if (*(v7 + 3))
          {
            v10 = *(v7 + 3);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v7 + 10);
        v111 = v7;
        atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((a1 + 96), &v111, &v103);
        v11 = v103;
        v103 = 0uLL;
        if (*(&v11 + 1))
        {
          atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(a1 + 24);
        *(a1 + 16) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if (*(&v103 + 1))
        {
          sub_29A014BEC(*(&v103 + 1));
        }

        sub_29A186B14(&v111);
        sub_29AD1019C(a1);
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A18E624(v109);
          v29 = v110;
          sub_29A18E624(v109);
          v30 = v110;
          v31 = *&v109[0];
          sub_29A18E624(a1 + 48);
          v33 = (v30 + 4 * v31 - v29) >> 2;
          if (v33 >= 1)
          {
            v34 = 0;
            v32.i32[0] = **(a1 + 80);
            v35 = vdupq_n_s64(v33 - 1);
            v36 = (v33 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v37 = (v29 + 8);
            do
            {
              v38 = vdupq_n_s64(v34);
              v39 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B430070)));
              if (vuzp1_s16(v39, v32).u8[0])
              {
                *(v37 - 2) = v32.i32[0];
              }

              if (vuzp1_s16(v39, v32).i8[2])
              {
                *(v37 - 1) = v32.i32[0];
              }

              if (vuzp1_s16(v32, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B433E10)))).i32[1])
              {
                *v37 = v32.i32[0];
                v37[1] = v32.i32[0];
              }

              v34 += 4;
              v37 += 4;
            }

            while (v36 != v34);
          }
        }

        else
        {
          sub_29A18E624(v109);
          v41 = v110;
          sub_29A18E624(v109);
          v43 = (v110 + 4 * *&v109[0] - v41) >> 2;
          if (v43 >= 1)
          {
            v44 = 0;
            v42.i32[0] = *(a1 + 108);
            v45 = vdupq_n_s64(v43 - 1);
            v46 = (v43 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v47 = (v41 + 8);
            do
            {
              v48 = vdupq_n_s64(v44);
              v49 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v48, xmmword_29B430070)));
              if (vuzp1_s16(v49, v42).u8[0])
              {
                *(v47 - 2) = v42.i32[0];
              }

              if (vuzp1_s16(v49, v42).i8[2])
              {
                *(v47 - 1) = v42.i32[0];
              }

              if (vuzp1_s16(v42, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v48, xmmword_29B433E10)))).i32[1])
              {
                *v47 = v42.i32[0];
                v47[1] = v42.i32[0];
              }

              v44 += 4;
              v47 += 4;
            }

            while (v46 != v44);
          }

          sub_29A008864(&v103);
          v50 = sub_29A00911C(&v104, "HdStBasisCurves(", 16);
          v51 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v52 = strlen(v51);
          v53 = sub_29A00911C(v50, v51, v52);
          v54 = sub_29A00911C(v53, ")", 1);
          v55 = sub_29A00911C(v54, "- Primvar ", 10);
          v56 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v56)
          {
            v57 = (v56 + 16);
            if (*(v56 + 39) < 0)
            {
              v57 = *v57;
            }
          }

          else
          {
            v57 = "";
          }

          v80 = strlen(v57);
          v81 = sub_29A00911C(v55, v57, v80);
          v82 = sub_29A00911C(v81, " has incorrect size for varying interpolation ", 46);
          v83 = sub_29A00911C(v82, "(need ", 6);
          v84 = MEMORY[0x29C2C1F00](v83, v14);
          v85 = sub_29A00911C(v84, ", got ", 6);
          v86 = MEMORY[0x29C2C1F00](v85, v4);
          sub_29A00911C(v86, "), using fallback value ", 24);
          v87 = std::ostream::operator<<();
          sub_29A00911C(v87, " for rendering.", 15);
          v111 = "hdSt/basisCurvesComputations.h";
          v112 = "Resolve";
          v113 = 271;
          v114 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<float>::Resolve() [T = float]";
          v115 = 0;
          std::stringbuf::str();
          if (v102 >= 0)
          {
            v89 = __p;
          }

          else
          {
            v89 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v111, v89, v88);
          if (v102 < 0)
          {
            operator delete(__p[0]);
          }

          *&v103 = *MEMORY[0x29EDC9528];
          v90 = *(MEMORY[0x29EDC9528] + 72);
          *(&v103 + *(v103 - 24)) = *(MEMORY[0x29EDC9528] + 64);
          v104 = v90;
          v105 = MEMORY[0x29EDC9570] + 16;
          if (v107 < 0)
          {
            operator delete(v106[7].__locale_);
          }

          v105 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v106);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v108);
        }

        goto LABEL_11;
      }

      v15 = *(*(a1 + 32) + 8);
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = v15 ^ *(v16 + 44);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17 > 7)
      {
        v58 = *(a1 + 32);
        v59 = *(v58 + 24);
        v111 = v59;
        if ((v59 & 7) != 0)
        {
          v60 = (v59 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed) & 1) == 0)
          {
            v111 = v60;
          }
        }

        v61 = *(*(a1 + 32) + 16);
        __p[0] = v61;
        if ((v61 & 7) != 0)
        {
          v62 = (v61 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed) & 1) == 0)
          {
            __p[0] = v62;
          }
        }

        sub_29AE28340((a1 + 88), (a1 + 96), v3, (v58 + 32), &v111, __p, (a1 + 48), &v103, *(a1 + 108));
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
      }
    }

LABEL_10:
    sub_29A41712C(v109, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE28284(uint64_t a1)
{
  *a1 = &unk_2A2095AD8;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AE28340(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>, float a9@<S0>)
{
  sub_29A18E048(a8, a3);
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v18)
  {
    v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v18 + 57) ^ *a5) <= 7)
  {
    v68 = "hdSt/basisCurvesComputations.h";
    v69 = "HdSt_ExpandVarying";
    v70 = 86;
    v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = float]";
    v72 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    v21 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v21)
    {
      v22 = (v21 + 16);
      if (*(v21 + 39) < 0)
      {
        v22 = *v22;
      }
    }

    else
    {
      v22 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v68, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v20, Text, v22);
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v23)
  {
    v23 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v23 + 10) ^ *a6) < 8)
  {
    goto LABEL_73;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v24)
  {
    v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v24 + 11) ^ *a6) < 8)
  {
    goto LABEL_73;
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v25)
  {
    v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v25 + 7) ^ *a6) > 7)
  {
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v37)
    {
      v37 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v37 + 6) ^ *a6) > 7)
    {
      sub_29A18E624(a8);
      v54 = a8[4];
      sub_29A18E624(a8);
      v55 = (a8[4] + 4 * *a8 - v54) >> 2;
      if (v55 >= 1)
      {
        v56 = 0;
        v57 = vdupq_n_s64(v55 - 1);
        v58 = (v55 + 3) & 0x7FFFFFFFFFFFFFFCLL;
        v59 = (v54 + 8);
        do
        {
          v60 = vdupq_n_s64(v56);
          v61 = vmovn_s64(vcgeq_u64(v57, vorrq_s8(v60, xmmword_29B430070)));
          if (vuzp1_s16(v61, *v57.i8).u8[0])
          {
            *(v59 - 2) = a9;
          }

          if (vuzp1_s16(v61, *&v57).i8[2])
          {
            *(v59 - 1) = a9;
          }

          if (vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, vorrq_s8(v60, xmmword_29B433E10)))).i32[1])
          {
            *v59 = a9;
            v59[1] = a9;
          }

          v56 += 4;
          v59 += 4;
        }

        while (v58 != v56);
      }

      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 154;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = float]";
      v72 = 0;
      v62 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v64 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v64)
      {
        v65 = (v64 + 16);
        if (*(v64 + 39) < 0)
        {
          v65 = *v65;
        }
      }

      else
      {
        v65 = "";
      }

      v66 = *a6 & 0xFFFFFFFFFFFFFFF8;
      if (v66)
      {
        v67 = (v66 + 16);
        if (*(v66 + 39) < 0)
        {
          v67 = *v67;
        }
      }

      else
      {
        v67 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v68, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v63, v62, v65, v67);
    }

    else
    {
      if (*a4)
      {
        v38 = 0;
        v39 = 0;
        v40 = a4[4];
        v41 = &v40[*a4];
        do
        {
          v42 = *v40;
          if (*v40 >= 1)
          {
            v43 = *(a7[4] + 4 * v38);
            sub_29A18E624(a8);
            *(a8[4] + 4 * v39) = v43;
            v44 = *(a7[4] + 4 * v38);
            sub_29A18E624(a8);
            *(a8[4] + 4 * v39 + 4) = v44;
            if (v42 < 5)
            {
              v51 = v39 + 2;
              v50 = v38 + 1;
            }

            else
            {
              v45 = v42 - 2;
              v46 = 2;
              do
              {
                v47 = *(a7[4] + 4 * v38 + 4);
                sub_29A18E624(a8);
                *(a8[4] + 4 * v39 + 8) = v47;
                v48 = *(a7[4] + 4 * v38 + 4);
                sub_29A18E624(a8);
                *(a8[4] + 4 * v39 + 12) = v48;
                v49 = *(a7[4] + 4 * v38 + 4);
                sub_29A18E624(a8);
                *(a8[4] + 4 * v39 + 16) = v49;
                v46 += 3;
                ++v38;
                v39 += 3;
              }

              while (v46 < v45);
              v50 = v38 + 1;
              v51 = v39 + 2;
            }

            v52 = *(a7[4] + 4 * v50);
            sub_29A18E624(a8);
            *(a8[4] + 4 * v51) = v52;
            v53 = *(a7[4] + 4 * v50);
            sub_29A18E624(a8);
            *(a8[4] + 4 * v51 + 4) = v53;
            v39 = v51 + 2;
            v38 += 2;
          }

          ++v40;
        }

        while (v40 != v41);
      }

      else
      {
        v39 = 0;
        v38 = 0;
      }

      if (v38 != *a7)
      {
        v68 = "hdSt/basisCurvesComputations.h";
        v69 = "HdSt_ExpandVarying";
        v70 = 148;
        v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = float]";
        v72 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "srcIndex == authoredValues.size()", 0);
      }

      if (v39 != a3)
      {
        v68 = "hdSt/basisCurvesComputations.h";
        v69 = "HdSt_ExpandVarying";
        v70 = 149;
        v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = float]";
        v72 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "dstIndex == numVerts", 0);
      }
    }
  }

  else
  {
LABEL_73:
    if (*a4)
    {
      v26 = 0;
      v27 = 0;
      v28 = a4[4];
      v29 = &v28[*a4];
      do
      {
        v30 = *v28;
        if (*v28 >= 1)
        {
          v31 = *(a7[4] + 4 * v26);
          sub_29A18E624(a8);
          *(a8[4] + 4 * v27) = v31;
          v32 = v27 + 1;
          if (v30 >= 4)
          {
            v33 = v30 - 3;
            do
            {
              v34 = *(a7[4] + 4 * v26);
              sub_29A18E624(a8);
              *(a8[4] + 4 * v32) = v34;
              ++v26;
              ++v32;
              --v33;
            }

            while (v33);
            v27 = v32 - 1;
          }

          v35 = *(a7[4] + 4 * v26);
          sub_29A18E624(a8);
          *(a8[4] + 4 * v32) = v35;
          v36 = *(a7[4] + 4 * v26);
          sub_29A18E624(a8);
          *(a8[4] + 4 * v27 + 8) = v36;
          v27 += 3;
          ++v26;
        }

        ++v28;
      }

      while (v28 != v29);
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    if (v26 != *a7)
    {
      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 113;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = float]";
      v72 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "srcIndex == authoredValues.size()", 0);
    }

    if (v27 != a3)
    {
      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 114;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = float]";
      v72 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE289E0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, float *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x90uLL);
  result = sub_29AE28A84(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE28A84(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, float *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2095B70;
  sub_29AE28B9C(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE28B30(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2095B70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE28B9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, float *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE28C28(a2, &v10, a4, a5, a6, *a7, *a9, *a8, a8[1]);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE28C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE28C28(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, int a7, float a8, float a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2095BC0;
  v16 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v17;
  v18 = *(a3 + 32);
  *(a1 + 80) = v18;
  if (v18)
  {
    v19 = (v18 - 16);
    if (*(a1 + 72))
    {
      v19 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v20 = *a5;
  *(a1 + 96) = *a5;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 108) = a8;
  *(a1 + 112) = a9;
  *(a1 + 116) = a7;
  return a1;
}

uint64_t sub_29AE28D60(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 116);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 96), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 96);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t sub_29AE28DF8(uint64_t a1)
{
  v1 = 0;
  v95 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A190B18(v88, v3);
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v5 + 59) ^ *(a1 + 96)) >= 8)
    {
LABEL_7:
      v6 = *(a1 + 104);
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_11;
        }

        if (v4 == v3)
        {
          goto LABEL_10;
        }

        if (v4 == 1)
        {
          sub_29A190F50(v88);
          v18 = v89;
          sub_29A190F50(v88);
          v19 = v89;
          v20 = *&v88[0];
          sub_29A190F50(a1 + 48);
          v21 = &v19[v20] - v18;
          if (v21 >= 1)
          {
            v22 = *(a1 + 80);
            v23 = v21 + 1;
            do
            {
              *v18++ = *v22;
              --v23;
            }

            while (v23 > 1);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A4AD678(v88, (a1 + 48));
          v90 = 0;
          *&v82 = &v90;
          sub_29A190CF4(v88, v3, &v82);
        }

        else
        {
          sub_29A190F50(v88);
          v46 = v89;
          sub_29A190F50(v88);
          v47 = &v89[*&v88[0]] - v46;
          if (v47 >= 1)
          {
            v48 = v47 + 1;
            do
            {
              *v46++ = *(a1 + 108);
              --v48;
            }

            while (v48 > 1);
          }

          sub_29A008864(&v82);
          v49 = sub_29A00911C(&v83, "HdStBasisCurves(", 16);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v51 = strlen(Text);
          v52 = sub_29A00911C(v49, Text, v51);
          v53 = sub_29A00911C(v52, ")", 1);
          v54 = sub_29A00911C(v53, "- Primvar ", 10);
          v55 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v55)
          {
            v56 = (v55 + 16);
            if (*(v55 + 39) < 0)
            {
              v56 = *v56;
            }
          }

          else
          {
            v56 = "";
          }

          v69 = strlen(v56);
          v70 = sub_29A00911C(v54, v56, v69);
          v71 = sub_29A00911C(v70, " has incorrect size for vertex interpolation ", 45);
          v72 = sub_29A00911C(v71, "(need ", 6);
          v73 = MEMORY[0x29C2C1F00](v72, v3);
          v74 = sub_29A00911C(v73, ", got ", 6);
          v75 = MEMORY[0x29C2C1F00](v74, v4);
          v76 = sub_29A00911C(v75, "), using fallback value ", 24);
          v77 = pxrInternal__aapl__pxrReserved__::operator<<(v76, (a1 + 108));
          sub_29A00911C(v77, " for rendering.", 15);
          v90 = "hdSt/basisCurvesComputations.h";
          v91 = "Resolve";
          v92 = 233;
          v93 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec2f>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
          v94 = 0;
          std::stringbuf::str();
          if (v81 >= 0)
          {
            v79 = __p;
          }

          else
          {
            v79 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v90, v79, v78);
          if (v81 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008B0C(&v82);
        }

LABEL_11:
        v91 = &off_2A2043198;
        v7 = operator new(0x30uLL);
        v8 = v88[1];
        *v7 = v88[0];
        *(v7 + 1) = v8;
        v9 = v89;
        *(v7 + 4) = v89;
        if (v9)
        {
          v10 = v9 - 2;
          if (*(v7 + 3))
          {
            v10 = *(v7 + 3);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v7 + 10);
        v90 = v7;
        atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((a1 + 96), &v90, &v82);
        v11 = v82;
        v82 = 0uLL;
        if (*(&v11 + 1))
        {
          atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(a1 + 24);
        *(a1 + 16) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if (*(&v82 + 1))
        {
          sub_29A014BEC(*(&v82 + 1));
        }

        sub_29A186B14(&v90);
        sub_29AD1019C(a1);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A190F50(v88);
          v24 = v89;
          sub_29A190F50(v88);
          v25 = v89;
          v26 = *&v88[0];
          sub_29A190F50(a1 + 48);
          v27 = &v25[v26] - v24;
          if (v27 >= 1)
          {
            v28 = *(a1 + 80);
            v29 = v27 + 1;
            do
            {
              *v24++ = *v28;
              --v29;
            }

            while (v29 > 1);
          }
        }

        else
        {
          sub_29A190F50(v88);
          v30 = v89;
          sub_29A190F50(v88);
          v31 = &v89[*&v88[0]] - v30;
          if (v31 >= 1)
          {
            v32 = v31 + 1;
            do
            {
              *v30++ = *(a1 + 108);
              --v32;
            }

            while (v32 > 1);
          }

          sub_29A008864(&v82);
          v33 = sub_29A00911C(&v83, "HdStBasisCurves(", 16);
          v34 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v35 = strlen(v34);
          v36 = sub_29A00911C(v33, v34, v35);
          v37 = sub_29A00911C(v36, ")", 1);
          v38 = sub_29A00911C(v37, "- Primvar ", 10);
          v39 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v39)
          {
            v40 = (v39 + 16);
            if (*(v39 + 39) < 0)
            {
              v40 = *v40;
            }
          }

          else
          {
            v40 = "";
          }

          v57 = strlen(v40);
          v58 = sub_29A00911C(v38, v40, v57);
          v59 = sub_29A00911C(v58, " has incorrect size for varying interpolation ", 46);
          v60 = sub_29A00911C(v59, "(need ", 6);
          v61 = MEMORY[0x29C2C1F00](v60, v14);
          v62 = sub_29A00911C(v61, ", got ", 6);
          v63 = MEMORY[0x29C2C1F00](v62, v4);
          v64 = sub_29A00911C(v63, "), using fallback value ", 24);
          v65 = pxrInternal__aapl__pxrReserved__::operator<<(v64, (a1 + 108));
          sub_29A00911C(v65, " for rendering.", 15);
          v90 = "hdSt/basisCurvesComputations.h";
          v91 = "Resolve";
          v92 = 271;
          v93 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec2f>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
          v94 = 0;
          std::stringbuf::str();
          if (v81 >= 0)
          {
            v67 = __p;
          }

          else
          {
            v67 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v90, v67, v66);
          if (v81 < 0)
          {
            operator delete(__p[0]);
          }

          *&v82 = *MEMORY[0x29EDC9528];
          v68 = *(MEMORY[0x29EDC9528] + 72);
          *(&v82 + *(v82 - 24)) = *(MEMORY[0x29EDC9528] + 64);
          v83 = v68;
          v84 = MEMORY[0x29EDC9570] + 16;
          if (v86 < 0)
          {
            operator delete(v85[7].__locale_);
          }

          v84 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v85);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v87);
        }

        goto LABEL_11;
      }

      v15 = *(*(a1 + 32) + 8);
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = v15 ^ *(v16 + 44);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17 > 7)
      {
        v41 = *(a1 + 32);
        v42 = *(v41 + 24);
        v90 = v42;
        if ((v42 & 7) != 0)
        {
          v43 = (v42 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed) & 1) == 0)
          {
            v90 = v43;
          }
        }

        v44 = *(*(a1 + 32) + 16);
        __p[0] = v44;
        if ((v44 & 7) != 0)
        {
          v45 = (v44 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed) & 1) == 0)
          {
            __p[0] = v45;
          }
        }

        sub_29AE2989C((a1 + 88), (a1 + 96), v3, (v41 + 32), &v90, __p, (a1 + 48), &v82, *(a1 + 108), *(a1 + 112));
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4AD678(v88, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE297E0(uint64_t a1)
{
  *a1 = &unk_2A2095BC0;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29AE2989C(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>, float a9@<S0>, float a10@<S1>)
{
  sub_29A190B18(a8, a3);
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v20)
  {
    v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v20 + 57) ^ *a5) <= 7)
  {
    v65 = "hdSt/basisCurvesComputations.h";
    v66 = "HdSt_ExpandVarying";
    v67 = 86;
    v68 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
    v69 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    v23 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v23)
    {
      v24 = (v23 + 16);
      if (*(v23 + 39) < 0)
      {
        v24 = *v24;
      }
    }

    else
    {
      v24 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v65, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v22, Text, v24);
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v25)
  {
    v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v25 + 10) ^ *a6) < 8)
  {
    goto LABEL_67;
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v26)
  {
    v26 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v26 + 11) ^ *a6) < 8)
  {
    goto LABEL_67;
  }

  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v27)
  {
    v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v27 + 7) ^ *a6) > 7)
  {
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v39)
    {
      v39 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v39 + 6) ^ *a6) > 7)
    {
      sub_29A190F50(a8);
      v56 = a8[4];
      sub_29A190F50(a8);
      v57 = (a8[4] + 8 * *a8 - v56) >> 3;
      if (v57 >= 1)
      {
        v58 = v57 + 1;
        do
        {
          *v56 = a9;
          v56[1] = a10;
          v56 += 2;
          --v58;
        }

        while (v58 > 1);
      }

      v65 = "hdSt/basisCurvesComputations.h";
      v66 = "HdSt_ExpandVarying";
      v67 = 154;
      v68 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
      v69 = 0;
      v59 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v61 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v61)
      {
        v62 = (v61 + 16);
        if (*(v61 + 39) < 0)
        {
          v62 = *v62;
        }
      }

      else
      {
        v62 = "";
      }

      v63 = *a6 & 0xFFFFFFFFFFFFFFF8;
      if (v63)
      {
        v64 = (v63 + 16);
        if (*(v63 + 39) < 0)
        {
          v64 = *v64;
        }
      }

      else
      {
        v64 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v65, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v60, v59, v62, v64);
    }

    else
    {
      if (*a4)
      {
        v40 = 0;
        v41 = 0;
        v42 = a4[4];
        v43 = &v42[*a4];
        do
        {
          v44 = *v42;
          if (*v42 >= 1)
          {
            v45 = a7[4];
            sub_29A190F50(a8);
            *(a8[4] + 8 * v41) = *(v45 + 8 * v40);
            v46 = a7[4];
            sub_29A190F50(a8);
            *(a8[4] + 8 * v41 + 8) = *(v46 + 8 * v40);
            if (v44 < 5)
            {
              v53 = v41 + 2;
              v52 = v40 + 1;
            }

            else
            {
              v47 = v44 - 2;
              v48 = 2;
              do
              {
                v49 = a7[4];
                sub_29A190F50(a8);
                *(a8[4] + 8 * v41 + 16) = *(v49 + 8 * v40 + 8);
                v50 = a7[4];
                sub_29A190F50(a8);
                *(a8[4] + 8 * v41 + 24) = *(v50 + 8 * v40 + 8);
                v51 = a7[4];
                sub_29A190F50(a8);
                *(a8[4] + 8 * v41 + 32) = *(v51 + 8 * v40 + 8);
                v48 += 3;
                ++v40;
                v41 += 3;
              }

              while (v48 < v47);
              v52 = v40 + 1;
              v53 = v41 + 2;
            }

            v54 = a7[4];
            sub_29A190F50(a8);
            *(a8[4] + 8 * v53) = *(v54 + 8 * v52);
            v55 = a7[4];
            sub_29A190F50(a8);
            *(a8[4] + 8 * v53 + 8) = *(v55 + 8 * v52);
            v41 = v53 + 2;
            v40 += 2;
          }

          ++v42;
        }

        while (v42 != v43);
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }

      if (v40 != *a7)
      {
        v65 = "hdSt/basisCurvesComputations.h";
        v66 = "HdSt_ExpandVarying";
        v67 = 148;
        v68 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
        v69 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v65, "srcIndex == authoredValues.size()", 0);
      }

      if (v41 != a3)
      {
        v65 = "hdSt/basisCurvesComputations.h";
        v66 = "HdSt_ExpandVarying";
        v67 = 149;
        v68 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
        v69 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v65, "dstIndex == numVerts", 0);
      }
    }
  }

  else
  {
LABEL_67:
    if (*a4)
    {
      v28 = 0;
      v29 = 0;
      v30 = a4[4];
      v31 = &v30[*a4];
      do
      {
        v32 = *v30;
        if (*v30 >= 1)
        {
          v33 = a7[4];
          sub_29A190F50(a8);
          *(a8[4] + 8 * v29) = *(v33 + 8 * v28);
          v34 = v29 + 1;
          if (v32 >= 4)
          {
            v35 = v32 - 3;
            do
            {
              v36 = a7[4];
              sub_29A190F50(a8);
              *(a8[4] + 8 * v34++) = *(v36 + 8 * v28++);
              --v35;
            }

            while (v35);
            v29 = v34 - 1;
          }

          v37 = a7[4];
          sub_29A190F50(a8);
          *(a8[4] + 8 * v34) = *(v37 + 8 * v28);
          v38 = a7[4];
          sub_29A190F50(a8);
          *(a8[4] + 8 * v29 + 16) = *(v38 + 8 * v28);
          v29 += 3;
          ++v28;
        }

        ++v30;
      }

      while (v30 != v31);
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    if (v28 != *a7)
    {
      v65 = "hdSt/basisCurvesComputations.h";
      v66 = "HdSt_ExpandVarying";
      v67 = 113;
      v68 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
      v69 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v65, "srcIndex == authoredValues.size()", 0);
    }

    if (v29 != a3)
    {
      v65 = "hdSt/basisCurvesComputations.h";
      v66 = "HdSt_ExpandVarying";
      v67 = 114;
      v68 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2f]";
      v69 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v65, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE29EC4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, float *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x98uLL);
  result = sub_29AE29F68(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE29F68(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, float *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2095C58;
  sub_29AE2A080(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE2A014(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2095C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE2A080(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, float *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE2A110(a2, &v10, a4, a5, a6, *a7, *a9, *a8, a8[1], a8[2]);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE2A0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE2A110(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, int a7, float a8, float a9, float a10)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2095CA8;
  v18 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v19;
  v20 = *(a3 + 32);
  *(a1 + 80) = v20;
  if (v20)
  {
    v21 = (v20 - 16);
    if (*(a1 + 72))
    {
      v21 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v22 = *a5;
  *(a1 + 96) = *a5;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 108) = a8;
  *(a1 + 112) = a9;
  *(a1 + 116) = a10;
  *(a1 + 120) = a7;
  return a1;
}

uint64_t sub_29AE2A258(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 120);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 96), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 96);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t sub_29AE2A2F0(uint64_t a1)
{
  v1 = 0;
  v99 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A193124(v92, v3);
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v5 + 59) ^ *(a1 + 96)) >= 8)
    {
LABEL_7:
      v6 = *(a1 + 104);
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_11;
        }

        if (v4 == v3)
        {
          goto LABEL_10;
        }

        if (v4 == 1)
        {
          sub_29A1935CC(v92);
          v18 = v93;
          sub_29A1935CC(v92);
          v19 = v93;
          v20 = *&v92[0];
          sub_29A1935CC(a1 + 48);
          v21 = v19 + 12 * v20 - v18;
          if (v21 >= 1)
          {
            v22 = *(a1 + 80);
            v23 = v21 / 0xCuLL + 1;
            do
            {
              v24 = *v22;
              *(v18 + 8) = *(v22 + 2);
              *v18 = v24;
              v18 += 12;
              --v23;
            }

            while (v23 > 1);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A4ADDE0(v92, (a1 + 48));
          DWORD2(v86) = 0;
          *&v86 = 0;
          v94 = &v86;
          sub_29A193304(v92, v3, &v94);
        }

        else
        {
          sub_29A1935CC(v92);
          v49 = v93;
          sub_29A1935CC(v92);
          v50 = v93 + 12 * *&v92[0] - v49;
          if (v50 >= 1)
          {
            v51 = v50 / 0xCuLL + 1;
            do
            {
              v52 = *(a1 + 108);
              *(v49 + 8) = *(a1 + 116);
              *v49 = v52;
              v49 += 12;
              --v51;
            }

            while (v51 > 1);
          }

          sub_29A008864(&v86);
          v53 = sub_29A00911C(&v87, "HdStBasisCurves(", 16);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v55 = strlen(Text);
          v56 = sub_29A00911C(v53, Text, v55);
          v57 = sub_29A00911C(v56, ")", 1);
          v58 = sub_29A00911C(v57, "- Primvar ", 10);
          v59 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v59)
          {
            v60 = (v59 + 16);
            if (*(v59 + 39) < 0)
            {
              v60 = *v60;
            }
          }

          else
          {
            v60 = "";
          }

          v73 = strlen(v60);
          v74 = sub_29A00911C(v58, v60, v73);
          v75 = sub_29A00911C(v74, " has incorrect size for vertex interpolation ", 45);
          v76 = sub_29A00911C(v75, "(need ", 6);
          v77 = MEMORY[0x29C2C1F00](v76, v3);
          v78 = sub_29A00911C(v77, ", got ", 6);
          v79 = MEMORY[0x29C2C1F00](v78, v4);
          v80 = sub_29A00911C(v79, "), using fallback value ", 24);
          v81 = pxrInternal__aapl__pxrReserved__::operator<<(v80, (a1 + 108));
          sub_29A00911C(v81, " for rendering.", 15);
          v94 = "hdSt/basisCurvesComputations.h";
          v95 = "Resolve";
          v96 = 233;
          v97 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec3f>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
          v98 = 0;
          std::stringbuf::str();
          if (v85 >= 0)
          {
            v83 = __p;
          }

          else
          {
            v83 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v94, v83, v82);
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008B0C(&v86);
        }

LABEL_11:
        v95 = &off_2A20433C0;
        v7 = operator new(0x30uLL);
        v8 = v92[1];
        *v7 = v92[0];
        *(v7 + 1) = v8;
        v9 = v93;
        *(v7 + 4) = v93;
        if (v9)
        {
          v10 = (v9 - 16);
          if (*(v7 + 3))
          {
            v10 = *(v7 + 3);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v7 + 10);
        v94 = v7;
        atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((a1 + 96), &v94, &v86);
        v11 = v86;
        v86 = 0uLL;
        if (*(&v11 + 1))
        {
          atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(a1 + 24);
        *(a1 + 16) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if (*(&v86 + 1))
        {
          sub_29A014BEC(*(&v86 + 1));
        }

        sub_29A186B14(&v94);
        sub_29AD1019C(a1);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A1935CC(v92);
          v25 = v93;
          sub_29A1935CC(v92);
          v26 = v93;
          v27 = *&v92[0];
          sub_29A1935CC(a1 + 48);
          v28 = v26 + 12 * v27 - v25;
          if (v28 >= 1)
          {
            v29 = *(a1 + 80);
            v30 = v28 / 0xCuLL + 1;
            do
            {
              v31 = *v29;
              *(v25 + 8) = *(v29 + 2);
              *v25 = v31;
              v25 += 12;
              --v30;
            }

            while (v30 > 1);
          }
        }

        else
        {
          sub_29A1935CC(v92);
          v32 = v93;
          sub_29A1935CC(v92);
          v33 = v93 + 12 * *&v92[0] - v32;
          if (v33 >= 1)
          {
            v34 = v33 / 0xCuLL + 1;
            do
            {
              v35 = *(a1 + 108);
              *(v32 + 8) = *(a1 + 116);
              *v32 = v35;
              v32 += 12;
              --v34;
            }

            while (v34 > 1);
          }

          sub_29A008864(&v86);
          v36 = sub_29A00911C(&v87, "HdStBasisCurves(", 16);
          v37 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v38 = strlen(v37);
          v39 = sub_29A00911C(v36, v37, v38);
          v40 = sub_29A00911C(v39, ")", 1);
          v41 = sub_29A00911C(v40, "- Primvar ", 10);
          v42 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v42)
          {
            v43 = (v42 + 16);
            if (*(v42 + 39) < 0)
            {
              v43 = *v43;
            }
          }

          else
          {
            v43 = "";
          }

          v61 = strlen(v43);
          v62 = sub_29A00911C(v41, v43, v61);
          v63 = sub_29A00911C(v62, " has incorrect size for varying interpolation ", 46);
          v64 = sub_29A00911C(v63, "(need ", 6);
          v65 = MEMORY[0x29C2C1F00](v64, v14);
          v66 = sub_29A00911C(v65, ", got ", 6);
          v67 = MEMORY[0x29C2C1F00](v66, v4);
          v68 = sub_29A00911C(v67, "), using fallback value ", 24);
          v69 = pxrInternal__aapl__pxrReserved__::operator<<(v68, (a1 + 108));
          sub_29A00911C(v69, " for rendering.", 15);
          v94 = "hdSt/basisCurvesComputations.h";
          v95 = "Resolve";
          v96 = 271;
          v97 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec3f>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
          v98 = 0;
          std::stringbuf::str();
          if (v85 >= 0)
          {
            v71 = __p;
          }

          else
          {
            v71 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v94, v71, v70);
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }

          *&v86 = *MEMORY[0x29EDC9528];
          v72 = *(MEMORY[0x29EDC9528] + 72);
          *(&v86 + *(v86 - 24)) = *(MEMORY[0x29EDC9528] + 64);
          v87 = v72;
          v88 = MEMORY[0x29EDC9570] + 16;
          if (v90 < 0)
          {
            operator delete(v89[7].__locale_);
          }

          v88 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v89);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v91);
        }

        goto LABEL_11;
      }

      v15 = *(*(a1 + 32) + 8);
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = v15 ^ *(v16 + 44);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17 > 7)
      {
        v44 = *(a1 + 32);
        v45 = *(v44 + 24);
        v94 = v45;
        if ((v45 & 7) != 0)
        {
          v46 = (v45 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed) & 1) == 0)
          {
            v94 = v46;
          }
        }

        v47 = *(*(a1 + 32) + 16);
        __p[0] = v47;
        if ((v47 & 7) != 0)
        {
          v48 = (v47 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed) & 1) == 0)
          {
            __p[0] = v48;
          }
        }

        sub_29AE2ADFC((a1 + 88), (a1 + 96), v3, (v44 + 32), &v94, __p, (a1 + 48), &v86, *(a1 + 108), *(a1 + 112), *(a1 + 116));
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4ADDE0(v92, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE2AD40(uint64_t a1)
{
  *a1 = &unk_2A2095CA8;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AE2ADFC(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>, float a9@<S0>, float a10@<S1>, float a11@<S2>)
{
  sub_29A193124(a8, a3);
  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v21)
  {
    v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v21 + 57) ^ *a5) <= 7)
  {
    v102 = "hdSt/basisCurvesComputations.h";
    v103 = "HdSt_ExpandVarying";
    v104 = 86;
    v105 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
    v106 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    v24 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v24)
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

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v102, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v23, Text, v25);
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v26)
  {
    v26 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v26 + 10) ^ *a6) < 8)
  {
    goto LABEL_68;
  }

  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v27)
  {
    v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v27 + 11) ^ *a6) < 8)
  {
    goto LABEL_68;
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v28)
  {
    v28 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v28 + 7) ^ *a6) > 7)
  {
    v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v53)
    {
      v53 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v53 + 6) ^ *a6) > 7)
    {
      sub_29A1935CC(a8);
      v90 = a8[4];
      sub_29A1935CC(a8);
      v91 = a8[4] + 12 * *a8 - v90;
      if (v91 >= 1)
      {
        v92 = v91 / 0xCuLL + 1;
        do
        {
          *v90 = a9;
          v90[1] = a10;
          v90[2] = a11;
          v90 += 3;
          --v92;
        }

        while (v92 > 1);
      }

      v102 = "hdSt/basisCurvesComputations.h";
      v103 = "HdSt_ExpandVarying";
      v104 = 154;
      v105 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
      v106 = 0;
      v93 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v95 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v95)
      {
        v96 = (v95 + 16);
        if (*(v95 + 39) < 0)
        {
          v96 = *v96;
        }
      }

      else
      {
        v96 = "";
      }

      v97 = *a6 & 0xFFFFFFFFFFFFFFF8;
      if (v97)
      {
        v98 = (v97 + 16);
        if (*(v97 + 39) < 0)
        {
          v98 = *v98;
        }
      }

      else
      {
        v98 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v102, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v94, v93, v96, v98);
    }

    else
    {
      if (*a4)
      {
        v54 = 0;
        v55 = 0;
        v56 = a4[4];
        v57 = &v56[*a4];
        v101 = v57;
        do
        {
          v58 = *v56;
          if (*v56 >= 1)
          {
            v59 = a7[4];
            sub_29A1935CC(a8);
            v60 = (v59 + 12 * v54);
            v61 = a8[4] + 12 * v55;
            v62 = *v60;
            *(v61 + 8) = *(v60 + 2);
            *v61 = v62;
            v63 = a7[4];
            sub_29A1935CC(a8);
            v64 = (v63 + 12 * v54);
            v65 = *v64;
            v66 = a8[4] + 12 * v55;
            *(v66 + 20) = *(v64 + 2);
            *(v66 + 12) = v65;
            v67 = v55 + 2;
            if (v58 < 5)
            {
              v81 = v54 + 1;
            }

            else
            {
              v68 = v58 - 2;
              v69 = 12 * v54 + 12;
              v70 = 12 * v55;
              v71 = 2;
              do
              {
                v72 = a7[4];
                sub_29A1935CC(a8);
                v73 = a8[4] + v70;
                v74 = *(v72 + v69);
                *(v73 + 32) = *(v72 + v69 + 8);
                *(v73 + 24) = v74;
                v75 = a7[4];
                sub_29A1935CC(a8);
                v76 = a8[4] + v70;
                v77 = *(v75 + v69);
                *(v76 + 44) = *(v75 + v69 + 8);
                *(v76 + 36) = v77;
                v78 = a7[4];
                sub_29A1935CC(a8);
                v79 = a8[4] + v70;
                v80 = *(v78 + v69);
                v67 += 3;
                v71 += 3;
                *(v79 + 56) = *(v78 + v69 + 8);
                *(v79 + 48) = v80;
                ++v54;
                v69 += 12;
                v70 += 36;
              }

              while (v71 < v68);
              v81 = v54 + 1;
              v57 = v101;
            }

            v82 = a7[4];
            sub_29A1935CC(a8);
            v83 = (v82 + 12 * v81);
            v84 = a8[4] + 12 * v67;
            v85 = *v83;
            *(v84 + 8) = *(v83 + 2);
            *v84 = v85;
            v86 = a7[4];
            sub_29A1935CC(a8);
            v87 = (v86 + 12 * v81);
            v88 = *v87;
            v89 = a8[4] + 12 * v67;
            *(v89 + 20) = *(v87 + 2);
            *(v89 + 12) = v88;
            v55 = v67 + 2;
            v54 += 2;
          }

          ++v56;
        }

        while (v56 != v57);
      }

      else
      {
        v55 = 0;
        v54 = 0;
      }

      if (v54 != *a7)
      {
        v102 = "hdSt/basisCurvesComputations.h";
        v103 = "HdSt_ExpandVarying";
        v104 = 148;
        v105 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
        v106 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v102, "srcIndex == authoredValues.size()", 0);
      }

      if (v55 != a3)
      {
        v102 = "hdSt/basisCurvesComputations.h";
        v103 = "HdSt_ExpandVarying";
        v104 = 149;
        v105 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
        v106 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v102, "dstIndex == numVerts", 0);
      }
    }
  }

  else
  {
LABEL_68:
    if (*a4)
    {
      v29 = 0;
      v30 = 0;
      v31 = a4[4];
      v32 = &v31[*a4];
      v100 = v32;
      do
      {
        v33 = *v31;
        if (*v31 >= 1)
        {
          v34 = a7[4];
          sub_29A1935CC(a8);
          v35 = (v34 + 12 * v29);
          v36 = *v35;
          v37 = a8[4] + 12 * v30;
          *(v37 + 8) = *(v35 + 2);
          *v37 = v36;
          if (v33 < 4)
          {
            v44 = v30 + 1;
          }

          else
          {
            v38 = 12 * v30 + 12;
            v39 = v33 - 3;
            v40 = 12 * v29;
            do
            {
              v41 = a7[4];
              sub_29A1935CC(a8);
              v42 = a8[4] + v38;
              v43 = *(v41 + v40);
              ++v29;
              *(v42 + 8) = *(v41 + v40 + 8);
              *v42 = v43;
              ++v30;
              v38 += 12;
              v40 += 12;
              --v39;
            }

            while (v39);
            v44 = v30 + 1;
            v32 = v100;
          }

          v45 = a7[4];
          sub_29A1935CC(a8);
          v46 = (v45 + 12 * v29);
          v47 = a8[4] + 12 * v44;
          v48 = *v46;
          *(v47 + 8) = *(v46 + 2);
          *v47 = v48;
          v49 = a7[4];
          sub_29A1935CC(a8);
          v50 = (v49 + 12 * v29);
          v51 = *v50;
          v52 = a8[4] + 12 * v30;
          *(v52 + 32) = *(v50 + 2);
          *(v52 + 24) = v51;
          v30 += 3;
          ++v29;
        }

        ++v31;
      }

      while (v31 != v32);
    }

    else
    {
      v30 = 0;
      v29 = 0;
    }

    if (v29 != *a7)
    {
      v102 = "hdSt/basisCurvesComputations.h";
      v103 = "HdSt_ExpandVarying";
      v104 = 113;
      v105 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
      v106 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v102, "srcIndex == authoredValues.size()", 0);
    }

    if (v30 != a3)
    {
      v102 = "hdSt/basisCurvesComputations.h";
      v103 = "HdSt_ExpandVarying";
      v104 = 114;
      v105 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3f]";
      v106 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v102, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE2B534@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, float *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x98uLL);
  result = sub_29AE2B5D8(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE2B5D8(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, float *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2095D40;
  sub_29AE2B6F0(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE2B684(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2095D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE2B6F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, float *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE2B780(a2, &v10, a4, a5, a6, *a7, *a9, *a8, a8[1], a8[2], a8[3]);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE2B768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE2B780(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, int a7, float a8, float a9, float a10, float a11)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2095D90;
  v20 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v21;
  v22 = *(a3 + 32);
  *(a1 + 80) = v22;
  if (v22)
  {
    v23 = (v22 - 16);
    if (*(a1 + 72))
    {
      v23 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v24 = *a5;
  *(a1 + 96) = *a5;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 108) = a8;
  *(a1 + 112) = a9;
  *(a1 + 116) = a10;
  *(a1 + 120) = a11;
  *(a1 + 124) = a7;
  return a1;
}

uint64_t sub_29AE2B8CC(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 124);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 96), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 96);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t sub_29AE2B964(uint64_t a1)
{
  v1 = 0;
  v95 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A195790(v88, v3);
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v5 + 59) ^ *(a1 + 96)) >= 8)
    {
LABEL_7:
      v6 = *(a1 + 104);
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_11;
        }

        if (v4 == v3)
        {
          goto LABEL_10;
        }

        if (v4 == 1)
        {
          sub_29A195BC4(v88);
          v18 = v89;
          sub_29A195BC4(v88);
          v19 = v89;
          v20 = *&v88[0];
          sub_29A195BC4(a1 + 48);
          v21 = &v19[v20] - v18;
          if (v21 >= 1)
          {
            v22 = *(a1 + 80);
            v23 = v21 + 1;
            do
            {
              *v18++ = *v22;
              --v23;
            }

            while (v23 > 1);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A4AE538(v88, (a1 + 48));
          v82 = 0uLL;
          v90 = &v82;
          sub_29A19596C(v88, v3, &v90);
        }

        else
        {
          sub_29A195BC4(v88);
          v46 = v89;
          sub_29A195BC4(v88);
          v47 = &v89[*&v88[0]] - v46;
          if (v47 >= 1)
          {
            v48 = v47 + 1;
            do
            {
              *v46++ = *(a1 + 108);
              --v48;
            }

            while (v48 > 1);
          }

          sub_29A008864(&v82);
          v49 = sub_29A00911C(&v83, "HdStBasisCurves(", 16);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v51 = strlen(Text);
          v52 = sub_29A00911C(v49, Text, v51);
          v53 = sub_29A00911C(v52, ")", 1);
          v54 = sub_29A00911C(v53, "- Primvar ", 10);
          v55 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v55)
          {
            v56 = (v55 + 16);
            if (*(v55 + 39) < 0)
            {
              v56 = *v56;
            }
          }

          else
          {
            v56 = "";
          }

          v69 = strlen(v56);
          v70 = sub_29A00911C(v54, v56, v69);
          v71 = sub_29A00911C(v70, " has incorrect size for vertex interpolation ", 45);
          v72 = sub_29A00911C(v71, "(need ", 6);
          v73 = MEMORY[0x29C2C1F00](v72, v3);
          v74 = sub_29A00911C(v73, ", got ", 6);
          v75 = MEMORY[0x29C2C1F00](v74, v4);
          v76 = sub_29A00911C(v75, "), using fallback value ", 24);
          v77 = pxrInternal__aapl__pxrReserved__::operator<<(v76, (a1 + 108));
          sub_29A00911C(v77, " for rendering.", 15);
          v90 = "hdSt/basisCurvesComputations.h";
          v91 = "Resolve";
          v92 = 233;
          v93 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec4f>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
          v94 = 0;
          std::stringbuf::str();
          if (v81 >= 0)
          {
            v79 = __p;
          }

          else
          {
            v79 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v90, v79, v78);
          if (v81 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008B0C(&v82);
        }

LABEL_11:
        v91 = &off_2A20435E8;
        v7 = operator new(0x30uLL);
        v8 = v88[1];
        *v7 = v88[0];
        *(v7 + 1) = v8;
        v9 = v89;
        *(v7 + 4) = v89;
        if (v9)
        {
          v10 = (v9 - 1);
          if (*(v7 + 3))
          {
            v10 = *(v7 + 3);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v7 + 10);
        v90 = v7;
        atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((a1 + 96), &v90, &v82);
        v11 = v82;
        v82 = 0uLL;
        if (*(&v11 + 1))
        {
          atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(a1 + 24);
        *(a1 + 16) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if (*(&v82 + 1))
        {
          sub_29A014BEC(*(&v82 + 1));
        }

        sub_29A186B14(&v90);
        sub_29AD1019C(a1);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A195BC4(v88);
          v24 = v89;
          sub_29A195BC4(v88);
          v25 = v89;
          v26 = *&v88[0];
          sub_29A195BC4(a1 + 48);
          v27 = &v25[v26] - v24;
          if (v27 >= 1)
          {
            v28 = *(a1 + 80);
            v29 = v27 + 1;
            do
            {
              *v24++ = *v28;
              --v29;
            }

            while (v29 > 1);
          }
        }

        else
        {
          sub_29A195BC4(v88);
          v30 = v89;
          sub_29A195BC4(v88);
          v31 = &v89[*&v88[0]] - v30;
          if (v31 >= 1)
          {
            v32 = v31 + 1;
            do
            {
              *v30++ = *(a1 + 108);
              --v32;
            }

            while (v32 > 1);
          }

          sub_29A008864(&v82);
          v33 = sub_29A00911C(&v83, "HdStBasisCurves(", 16);
          v34 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v35 = strlen(v34);
          v36 = sub_29A00911C(v33, v34, v35);
          v37 = sub_29A00911C(v36, ")", 1);
          v38 = sub_29A00911C(v37, "- Primvar ", 10);
          v39 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v39)
          {
            v40 = (v39 + 16);
            if (*(v39 + 39) < 0)
            {
              v40 = *v40;
            }
          }

          else
          {
            v40 = "";
          }

          v57 = strlen(v40);
          v58 = sub_29A00911C(v38, v40, v57);
          v59 = sub_29A00911C(v58, " has incorrect size for varying interpolation ", 46);
          v60 = sub_29A00911C(v59, "(need ", 6);
          v61 = MEMORY[0x29C2C1F00](v60, v14);
          v62 = sub_29A00911C(v61, ", got ", 6);
          v63 = MEMORY[0x29C2C1F00](v62, v4);
          v64 = sub_29A00911C(v63, "), using fallback value ", 24);
          v65 = pxrInternal__aapl__pxrReserved__::operator<<(v64, (a1 + 108));
          sub_29A00911C(v65, " for rendering.", 15);
          v90 = "hdSt/basisCurvesComputations.h";
          v91 = "Resolve";
          v92 = 271;
          v93 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec4f>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
          v94 = 0;
          std::stringbuf::str();
          if (v81 >= 0)
          {
            v67 = __p;
          }

          else
          {
            v67 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v90, v67, v66);
          if (v81 < 0)
          {
            operator delete(__p[0]);
          }

          *&v82 = *MEMORY[0x29EDC9528];
          v68 = *(MEMORY[0x29EDC9528] + 72);
          *(&v82 + *(v82 - 24)) = *(MEMORY[0x29EDC9528] + 64);
          v83 = v68;
          v84 = MEMORY[0x29EDC9570] + 16;
          if (v86 < 0)
          {
            operator delete(v85[7].__locale_);
          }

          v84 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v85);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v87);
        }

        goto LABEL_11;
      }

      v15 = *(*(a1 + 32) + 8);
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = v15 ^ *(v16 + 44);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17 > 7)
      {
        v41 = *(a1 + 32);
        v42 = *(v41 + 24);
        v90 = v42;
        if ((v42 & 7) != 0)
        {
          v43 = (v42 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed) & 1) == 0)
          {
            v90 = v43;
          }
        }

        v44 = *(*(a1 + 32) + 16);
        __p[0] = v44;
        if ((v44 & 7) != 0)
        {
          v45 = (v44 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed) & 1) == 0)
          {
            __p[0] = v45;
          }
        }

        sub_29AE2C40C((a1 + 88), (a1 + 96), v3, (v41 + 32), &v90, __p, (a1 + 48), &v82, *(a1 + 108), *(a1 + 112), *(a1 + 116), *(a1 + 120));
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4AE538(v88, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE2C350(uint64_t a1)
{
  *a1 = &unk_2A2095D90;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29AE2C40C(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>, float a9@<S0>, float a10@<S1>, float a11@<S2>, float a12@<S3>)
{
  sub_29A195790(a8, a3);
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v23)
  {
    v23 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v23 + 57) ^ *a5) <= 7)
  {
    v73 = "hdSt/basisCurvesComputations.h";
    v74 = "HdSt_ExpandVarying";
    v75 = 86;
    v76 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
    v77 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    v26 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v26)
    {
      v27 = (v26 + 16);
      if (*(v26 + 39) < 0)
      {
        v27 = *v27;
      }
    }

    else
    {
      v27 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v73, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v25, Text, v27);
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v28)
  {
    v28 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v28 + 10) ^ *a6) < 8)
  {
    goto LABEL_66;
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v29)
  {
    v29 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v29 + 11) ^ *a6) < 8)
  {
    goto LABEL_66;
  }

  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v30)
  {
    v30 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v30 + 7) ^ *a6) > 7)
  {
    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v43)
    {
      v43 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v43 + 6) ^ *a6) > 7)
    {
      sub_29A195BC4(a8);
      v62 = a8[4];
      sub_29A195BC4(a8);
      v63 = (a8[4] + 16 * *a8 - v62) >> 4;
      if (v63 >= 1)
      {
        v64 = v63 + 1;
        do
        {
          *v62 = a9;
          v62[1] = a10;
          v62[2] = a11;
          v62[3] = a12;
          v62 += 4;
          --v64;
        }

        while (v64 > 1);
      }

      v73 = "hdSt/basisCurvesComputations.h";
      v74 = "HdSt_ExpandVarying";
      v75 = 154;
      v76 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
      v77 = 0;
      v65 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v67 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v67)
      {
        v68 = (v67 + 16);
        if (*(v67 + 39) < 0)
        {
          v68 = *v68;
        }
      }

      else
      {
        v68 = "";
      }

      v69 = *a6 & 0xFFFFFFFFFFFFFFF8;
      if (v69)
      {
        v70 = (v69 + 16);
        if (*(v69 + 39) < 0)
        {
          v70 = *v70;
        }
      }

      else
      {
        v70 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v73, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v66, v65, v68, v70);
    }

    else
    {
      if (*a4)
      {
        v44 = 0;
        v45 = 0;
        v46 = a4[4];
        v47 = &v46[*a4];
        v71 = v47;
        do
        {
          v48 = *v46;
          if (*v46 >= 1)
          {
            v49 = a7[4];
            sub_29A195BC4(a8);
            *(a8[4] + 16 * v45) = *(v49 + 16 * v44);
            v50 = a7[4];
            sub_29A195BC4(a8);
            *(a8[4] + 16 * v45 + 16) = *(v50 + 16 * v44);
            v51 = v45 + 2;
            if (v48 < 5)
            {
              v59 = v44 + 1;
            }

            else
            {
              v52 = v48 - 2;
              v53 = 16 * v44 + 16;
              v54 = 16 * v45;
              v55 = 2;
              do
              {
                v56 = a7[4];
                sub_29A195BC4(a8);
                *(a8[4] + v54 + 32) = *(v56 + v53);
                v57 = a7[4];
                sub_29A195BC4(a8);
                *(a8[4] + v54 + 48) = *(v57 + v53);
                v58 = a7[4];
                sub_29A195BC4(a8);
                v51 += 3;
                v55 += 3;
                *(a8[4] + v54 + 64) = *(v58 + v53);
                ++v44;
                v53 += 16;
                v54 += 48;
              }

              while (v55 < v52);
              v59 = v44 + 1;
              v47 = v71;
            }

            v60 = a7[4];
            sub_29A195BC4(a8);
            *(a8[4] + 16 * v51) = *(v60 + 16 * v59);
            v61 = a7[4];
            sub_29A195BC4(a8);
            *(a8[4] + 16 * v51 + 16) = *(v61 + 16 * v59);
            v45 = v51 + 2;
            v44 += 2;
          }

          ++v46;
        }

        while (v46 != v47);
      }

      else
      {
        v45 = 0;
        v44 = 0;
      }

      if (v44 != *a7)
      {
        v73 = "hdSt/basisCurvesComputations.h";
        v74 = "HdSt_ExpandVarying";
        v75 = 148;
        v76 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
        v77 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v73, "srcIndex == authoredValues.size()", 0);
      }

      if (v45 != a3)
      {
        v73 = "hdSt/basisCurvesComputations.h";
        v74 = "HdSt_ExpandVarying";
        v75 = 149;
        v76 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
        v77 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v73, "dstIndex == numVerts", 0);
      }
    }
  }

  else
  {
LABEL_66:
    if (*a4)
    {
      v31 = 0;
      v32 = 0;
      v33 = a4[4];
      v34 = &v33[*a4];
      do
      {
        v35 = *v33;
        if (*v33 >= 1)
        {
          v36 = a7[4];
          sub_29A195BC4(a8);
          *(a8[4] + 16 * v32) = *(v36 + 16 * v31);
          if (v35 >= 4)
          {
            v37 = 16 * v32 + 16;
            v38 = v35 - 3;
            v39 = 16 * v31;
            do
            {
              v40 = a7[4];
              sub_29A195BC4(a8);
              *(a8[4] + v37) = *(v40 + v39);
              ++v31;
              ++v32;
              v37 += 16;
              v39 += 16;
              --v38;
            }

            while (v38);
          }

          v41 = a7[4];
          sub_29A195BC4(a8);
          *(a8[4] + 16 * (v32 + 1)) = *(v41 + 16 * v31);
          v42 = a7[4];
          sub_29A195BC4(a8);
          *(a8[4] + 16 * v32 + 32) = *(v42 + 16 * v31);
          v32 += 3;
          ++v31;
        }

        ++v33;
      }

      while (v33 != v34);
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }

    if (v31 != *a7)
    {
      v73 = "hdSt/basisCurvesComputations.h";
      v74 = "HdSt_ExpandVarying";
      v75 = 113;
      v76 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
      v77 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v73, "srcIndex == authoredValues.size()", 0);
    }

    if (v32 != a3)
    {
      v73 = "hdSt/basisCurvesComputations.h";
      v74 = "HdSt_ExpandVarying";
      v75 = 114;
      v76 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]";
      v77 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v73, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE2CA70@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, double *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x98uLL);
  result = sub_29AE2CB14(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE2CB14(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, double *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2095E28;
  sub_29AE2CC2C(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE2CBC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2095E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE2CC2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, double *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE2CCB8(a2, &v10, a4, a5, a6, *a7, *a9, *a8);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE2CCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE2CCB8(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, int a7, double a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2095E78;
  v14 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v15;
  v16 = *(a3 + 32);
  *(a1 + 80) = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(a1 + 72))
    {
      v17 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v18 = *a5;
  *(a1 + 96) = *a5;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 112) = a8;
  *(a1 + 120) = a7;
  return a1;
}

uint64_t sub_29AE2CDEC(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 120);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 96), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 96);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t sub_29AE2CE84(uint64_t a1)
{
  v1 = 0;
  v117 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A18FC40(v110, v3);
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v5 + 59) ^ *(a1 + 96)) >= 8)
    {
LABEL_7:
      v6 = *(a1 + 104);
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_11;
        }

        if (v4 == v3)
        {
          goto LABEL_10;
        }

        if (v4 == 1)
        {
          sub_29A190088(v110);
          v18 = v111;
          sub_29A190088(v110);
          v19 = v111;
          v20 = *&v110[0];
          sub_29A190088(a1 + 48);
          v21 = (v19 + 8 * v20 - v18) >> 3;
          v22 = v21 - 1;
          if (v21 >= 1)
          {
            v23 = 0;
            v24 = **(a1 + 80);
            v25 = (v21 + 1) & 0x7FFFFFFFFFFFFFFELL;
            v26 = vdupq_n_s64(v22);
            v27 = (v18 + 8);
            do
            {
              v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v23), xmmword_29B430070)));
              if (v28.i8[0])
              {
                *(v27 - 1) = v24;
              }

              if (v28.i8[4])
              {
                *v27 = v24;
              }

              v23 += 2;
              v27 += 2;
            }

            while (v25 != v23);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A4ABD14(v110, (a1 + 48));
          v112 = 0;
          *&v104 = &v112;
          sub_29A18FD48(v110, v3, &v104);
        }

        else
        {
          sub_29A190088(v110);
          v62 = v111;
          sub_29A190088(v110);
          v63 = (v111 + 8 * *&v110[0] - v62) >> 3;
          v64 = v63 - 1;
          if (v63 >= 1)
          {
            v65 = 0;
            v66 = *(a1 + 112);
            v67 = (v63 + 1) & 0x7FFFFFFFFFFFFFFELL;
            v68 = vdupq_n_s64(v64);
            v69 = (v62 + 8);
            do
            {
              v70 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(vdupq_n_s64(v65), xmmword_29B430070)));
              if (v70.i8[0])
              {
                *(v69 - 1) = v66;
              }

              if (v70.i8[4])
              {
                *v69 = v66;
              }

              v65 += 2;
              v69 += 2;
            }

            while (v67 != v65);
          }

          sub_29A008864(&v104);
          v71 = sub_29A00911C(&v105, "HdStBasisCurves(", 16);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v73 = strlen(Text);
          v74 = sub_29A00911C(v71, Text, v73);
          v75 = sub_29A00911C(v74, ")", 1);
          v76 = sub_29A00911C(v75, "- Primvar ", 10);
          v77 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v77)
          {
            v78 = (v77 + 16);
            if (*(v77 + 39) < 0)
            {
              v78 = *v78;
            }
          }

          else
          {
            v78 = "";
          }

          v91 = strlen(v78);
          v92 = sub_29A00911C(v76, v78, v91);
          v93 = sub_29A00911C(v92, " has incorrect size for vertex interpolation ", 45);
          v94 = sub_29A00911C(v93, "(need ", 6);
          v95 = MEMORY[0x29C2C1F00](v94, v3);
          v96 = sub_29A00911C(v95, ", got ", 6);
          v97 = MEMORY[0x29C2C1F00](v96, v4);
          v98 = sub_29A00911C(v97, "), using fallback value ", 24);
          v99 = MEMORY[0x29C2C1EB0](v98, *(a1 + 112));
          sub_29A00911C(v99, " for rendering.", 15);
          v112 = "hdSt/basisCurvesComputations.h";
          v113 = "Resolve";
          v114 = 233;
          v115 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<double>::Resolve() [T = double]";
          v116 = 0;
          std::stringbuf::str();
          if (v103 >= 0)
          {
            v101 = __p;
          }

          else
          {
            v101 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v112, v101, v100);
          if (v103 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008B0C(&v104);
        }

LABEL_11:
        v113 = &off_2A20430E0;
        v7 = operator new(0x30uLL);
        v8 = v110[1];
        *v7 = v110[0];
        *(v7 + 1) = v8;
        v9 = v111;
        *(v7 + 4) = v111;
        if (v9)
        {
          v10 = (v9 - 16);
          if (*(v7 + 3))
          {
            v10 = *(v7 + 3);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v7 + 10);
        v112 = v7;
        atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((a1 + 96), &v112, &v104);
        v11 = v104;
        v104 = 0uLL;
        if (*(&v11 + 1))
        {
          atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(a1 + 24);
        *(a1 + 16) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if (*(&v104 + 1))
        {
          sub_29A014BEC(*(&v104 + 1));
        }

        sub_29A186B14(&v112);
        sub_29AD1019C(a1);
        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A190088(v110);
          v29 = v111;
          sub_29A190088(v110);
          v30 = v111;
          v31 = *&v110[0];
          sub_29A190088(a1 + 48);
          v32 = (v30 + 8 * v31 - v29) >> 3;
          v33 = v32 - 1;
          if (v32 >= 1)
          {
            v34 = 0;
            v35 = **(a1 + 80);
            v36 = (v32 + 1) & 0x7FFFFFFFFFFFFFFELL;
            v37 = vdupq_n_s64(v33);
            v38 = (v29 + 8);
            do
            {
              v39 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(vdupq_n_s64(v34), xmmword_29B430070)));
              if (v39.i8[0])
              {
                *(v38 - 1) = v35;
              }

              if (v39.i8[4])
              {
                *v38 = v35;
              }

              v34 += 2;
              v38 += 2;
            }

            while (v36 != v34);
          }
        }

        else
        {
          sub_29A190088(v110);
          v40 = v111;
          sub_29A190088(v110);
          v41 = (v111 + 8 * *&v110[0] - v40) >> 3;
          v42 = v41 - 1;
          if (v41 >= 1)
          {
            v43 = 0;
            v44 = *(a1 + 112);
            v45 = (v41 + 1) & 0x7FFFFFFFFFFFFFFELL;
            v46 = vdupq_n_s64(v42);
            v47 = (v40 + 8);
            do
            {
              v48 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(vdupq_n_s64(v43), xmmword_29B430070)));
              if (v48.i8[0])
              {
                *(v47 - 1) = v44;
              }

              if (v48.i8[4])
              {
                *v47 = v44;
              }

              v43 += 2;
              v47 += 2;
            }

            while (v45 != v43);
          }

          sub_29A008864(&v104);
          v49 = sub_29A00911C(&v105, "HdStBasisCurves(", 16);
          v50 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v51 = strlen(v50);
          v52 = sub_29A00911C(v49, v50, v51);
          v53 = sub_29A00911C(v52, ")", 1);
          v54 = sub_29A00911C(v53, "- Primvar ", 10);
          v55 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v55)
          {
            v56 = (v55 + 16);
            if (*(v55 + 39) < 0)
            {
              v56 = *v56;
            }
          }

          else
          {
            v56 = "";
          }

          v79 = strlen(v56);
          v80 = sub_29A00911C(v54, v56, v79);
          v81 = sub_29A00911C(v80, " has incorrect size for varying interpolation ", 46);
          v82 = sub_29A00911C(v81, "(need ", 6);
          v83 = MEMORY[0x29C2C1F00](v82, v14);
          v84 = sub_29A00911C(v83, ", got ", 6);
          v85 = MEMORY[0x29C2C1F00](v84, v4);
          v86 = sub_29A00911C(v85, "), using fallback value ", 24);
          v87 = MEMORY[0x29C2C1EB0](v86, *(a1 + 112));
          sub_29A00911C(v87, " for rendering.", 15);
          v112 = "hdSt/basisCurvesComputations.h";
          v113 = "Resolve";
          v114 = 271;
          v115 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<double>::Resolve() [T = double]";
          v116 = 0;
          std::stringbuf::str();
          if (v103 >= 0)
          {
            v89 = __p;
          }

          else
          {
            v89 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v112, v89, v88);
          if (v103 < 0)
          {
            operator delete(__p[0]);
          }

          *&v104 = *MEMORY[0x29EDC9528];
          v90 = *(MEMORY[0x29EDC9528] + 72);
          *(&v104 + *(v104 - 24)) = *(MEMORY[0x29EDC9528] + 64);
          v105 = v90;
          v106 = MEMORY[0x29EDC9570] + 16;
          if (v108 < 0)
          {
            operator delete(v107[7].__locale_);
          }

          v106 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v107);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v109);
        }

        goto LABEL_11;
      }

      v15 = *(*(a1 + 32) + 8);
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = v15 ^ *(v16 + 44);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17 > 7)
      {
        v57 = *(a1 + 32);
        v58 = *(v57 + 24);
        v112 = v58;
        if ((v58 & 7) != 0)
        {
          v59 = (v58 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed) & 1) == 0)
          {
            v112 = v59;
          }
        }

        v60 = *(*(a1 + 32) + 16);
        __p[0] = v60;
        if ((v60 & 7) != 0)
        {
          v61 = (v60 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed) & 1) == 0)
          {
            __p[0] = v61;
          }
        }

        sub_29AE2DA28((a1 + 88), (a1 + 96), v3, (v57 + 32), &v112, __p, (a1 + 48), &v104, *(a1 + 112));
        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4ABD14(v110, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE2D96C(uint64_t a1)
{
  *a1 = &unk_2A2095E78;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AE2DA28(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>, double a9@<D0>)
{
  sub_29A18FC40(a8, a3);
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v18)
  {
    v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v18 + 57) ^ *a5) <= 7)
  {
    v68 = "hdSt/basisCurvesComputations.h";
    v69 = "HdSt_ExpandVarying";
    v70 = 86;
    v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = double]";
    v72 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    v21 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v21)
    {
      v22 = (v21 + 16);
      if (*(v21 + 39) < 0)
      {
        v22 = *v22;
      }
    }

    else
    {
      v22 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v68, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v20, Text, v22);
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v23)
  {
    v23 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v23 + 10) ^ *a6) < 8)
  {
    goto LABEL_71;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v24)
  {
    v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v24 + 11) ^ *a6) < 8)
  {
    goto LABEL_71;
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v25)
  {
    v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v25 + 7) ^ *a6) > 7)
  {
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v37)
    {
      v37 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v37 + 6) ^ *a6) > 7)
    {
      sub_29A190088(a8);
      v54 = a8[4];
      sub_29A190088(a8);
      v55 = (a8[4] + 8 * *a8 - v54) >> 3;
      v56 = v55 - 1;
      if (v55 >= 1)
      {
        v57 = 0;
        v58 = (v55 + 1) & 0x7FFFFFFFFFFFFFFELL;
        v59 = vdupq_n_s64(v56);
        v60 = (v54 + 8);
        do
        {
          v61 = vmovn_s64(vcgeq_u64(v59, vorrq_s8(vdupq_n_s64(v57), xmmword_29B430070)));
          if (v61.i8[0])
          {
            *(v60 - 1) = a9;
          }

          if (v61.i8[4])
          {
            *v60 = a9;
          }

          v57 += 2;
          v60 += 2;
        }

        while (v58 != v57);
      }

      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 154;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = double]";
      v72 = 0;
      v62 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v64 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v64)
      {
        v65 = (v64 + 16);
        if (*(v64 + 39) < 0)
        {
          v65 = *v65;
        }
      }

      else
      {
        v65 = "";
      }

      v66 = *a6 & 0xFFFFFFFFFFFFFFF8;
      if (v66)
      {
        v67 = (v66 + 16);
        if (*(v66 + 39) < 0)
        {
          v67 = *v67;
        }
      }

      else
      {
        v67 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v68, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v63, v62, v65, v67);
    }

    else
    {
      if (*a4)
      {
        v38 = 0;
        v39 = 0;
        v40 = a4[4];
        v41 = &v40[*a4];
        do
        {
          v42 = *v40;
          if (*v40 >= 1)
          {
            v43 = *(a7[4] + 8 * v38);
            sub_29A190088(a8);
            *(a8[4] + 8 * v39) = v43;
            v44 = *(a7[4] + 8 * v38);
            sub_29A190088(a8);
            *(a8[4] + 8 * v39 + 8) = v44;
            if (v42 < 5)
            {
              v51 = v39 + 2;
              v50 = v38 + 1;
            }

            else
            {
              v45 = v42 - 2;
              v46 = 2;
              do
              {
                v47 = *(a7[4] + 8 * v38 + 8);
                sub_29A190088(a8);
                *(a8[4] + 8 * v39 + 16) = v47;
                v48 = *(a7[4] + 8 * v38 + 8);
                sub_29A190088(a8);
                *(a8[4] + 8 * v39 + 24) = v48;
                v49 = *(a7[4] + 8 * v38 + 8);
                sub_29A190088(a8);
                *(a8[4] + 8 * v39 + 32) = v49;
                v46 += 3;
                ++v38;
                v39 += 3;
              }

              while (v46 < v45);
              v50 = v38 + 1;
              v51 = v39 + 2;
            }

            v52 = *(a7[4] + 8 * v50);
            sub_29A190088(a8);
            *(a8[4] + 8 * v51) = v52;
            v53 = *(a7[4] + 8 * v50);
            sub_29A190088(a8);
            *(a8[4] + 8 * v51 + 8) = v53;
            v39 = v51 + 2;
            v38 += 2;
          }

          ++v40;
        }

        while (v40 != v41);
      }

      else
      {
        v39 = 0;
        v38 = 0;
      }

      if (v38 != *a7)
      {
        v68 = "hdSt/basisCurvesComputations.h";
        v69 = "HdSt_ExpandVarying";
        v70 = 148;
        v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = double]";
        v72 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "srcIndex == authoredValues.size()", 0);
      }

      if (v39 != a3)
      {
        v68 = "hdSt/basisCurvesComputations.h";
        v69 = "HdSt_ExpandVarying";
        v70 = 149;
        v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = double]";
        v72 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "dstIndex == numVerts", 0);
      }
    }
  }

  else
  {
LABEL_71:
    if (*a4)
    {
      v26 = 0;
      v27 = 0;
      v28 = a4[4];
      v29 = &v28[*a4];
      do
      {
        v30 = *v28;
        if (*v28 >= 1)
        {
          v31 = *(a7[4] + 8 * v26);
          sub_29A190088(a8);
          *(a8[4] + 8 * v27) = v31;
          v32 = v27 + 1;
          if (v30 >= 4)
          {
            v33 = v30 - 3;
            do
            {
              v34 = *(a7[4] + 8 * v26);
              sub_29A190088(a8);
              *(a8[4] + 8 * v32) = v34;
              ++v26;
              ++v32;
              --v33;
            }

            while (v33);
            v27 = v32 - 1;
          }

          v35 = *(a7[4] + 8 * v26);
          sub_29A190088(a8);
          *(a8[4] + 8 * v32) = v35;
          v36 = *(a7[4] + 8 * v26);
          sub_29A190088(a8);
          *(a8[4] + 8 * v27 + 16) = v36;
          v27 += 3;
          ++v26;
        }

        ++v28;
      }

      while (v28 != v29);
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    if (v26 != *a7)
    {
      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 113;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = double]";
      v72 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "srcIndex == authoredValues.size()", 0);
    }

    if (v27 != a3)
    {
      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 114;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = double]";
      v72 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE2E08C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, double *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0xA0uLL);
  result = sub_29AE2E130(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE2E130(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, double *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2095F10;
  sub_29AE2E248(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE2E1DC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2095F10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE2E248(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, double *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE2E2D4(a2, &v10, a4, a5, a6, *a7, *a9, *a8, a8[1]);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE2E2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE2E2D4(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, int a7, double a8, double a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2095F60;
  v16 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v17;
  v18 = *(a3 + 32);
  *(a1 + 80) = v18;
  if (v18)
  {
    v19 = (v18 - 16);
    if (*(a1 + 72))
    {
      v19 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v20 = *a5;
  *(a1 + 96) = *a5;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 112) = a8;
  *(a1 + 120) = a9;
  *(a1 + 128) = a7;
  return a1;
}

uint64_t sub_29AE2E40C(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 128);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 96), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 96);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t sub_29AE2E4A4(uint64_t a1)
{
  v1 = 0;
  v95 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A1921FC(v88, v3);
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v5 + 59) ^ *(a1 + 96)) >= 8)
    {
LABEL_7:
      v6 = *(a1 + 104);
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_11;
        }

        if (v4 == v3)
        {
          goto LABEL_10;
        }

        if (v4 == 1)
        {
          sub_29A19255C(v88);
          v18 = v89;
          sub_29A19255C(v88);
          v19 = v89;
          v20 = *&v88[0];
          sub_29A19255C(a1 + 48);
          v21 = &v19[v20] - v18;
          if (v21 >= 1)
          {
            v22 = *(a1 + 80);
            v23 = v21 + 1;
            do
            {
              *v18++ = *v22;
              --v23;
            }

            while (v23 > 1);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A4AD84C(v88, (a1 + 48));
          v82 = 0uLL;
          v90 = &v82;
          sub_29A192304(v88, v3, &v90);
        }

        else
        {
          sub_29A19255C(v88);
          v46 = v89;
          sub_29A19255C(v88);
          v47 = &v89[*&v88[0]] - v46;
          if (v47 >= 1)
          {
            v48 = v47 + 1;
            do
            {
              *v46++ = *(a1 + 112);
              --v48;
            }

            while (v48 > 1);
          }

          sub_29A008864(&v82);
          v49 = sub_29A00911C(&v83, "HdStBasisCurves(", 16);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v51 = strlen(Text);
          v52 = sub_29A00911C(v49, Text, v51);
          v53 = sub_29A00911C(v52, ")", 1);
          v54 = sub_29A00911C(v53, "- Primvar ", 10);
          v55 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v55)
          {
            v56 = (v55 + 16);
            if (*(v55 + 39) < 0)
            {
              v56 = *v56;
            }
          }

          else
          {
            v56 = "";
          }

          v69 = strlen(v56);
          v70 = sub_29A00911C(v54, v56, v69);
          v71 = sub_29A00911C(v70, " has incorrect size for vertex interpolation ", 45);
          v72 = sub_29A00911C(v71, "(need ", 6);
          v73 = MEMORY[0x29C2C1F00](v72, v3);
          v74 = sub_29A00911C(v73, ", got ", 6);
          v75 = MEMORY[0x29C2C1F00](v74, v4);
          v76 = sub_29A00911C(v75, "), using fallback value ", 24);
          v77 = pxrInternal__aapl__pxrReserved__::operator<<(v76, (a1 + 112));
          sub_29A00911C(v77, " for rendering.", 15);
          v90 = "hdSt/basisCurvesComputations.h";
          v91 = "Resolve";
          v92 = 233;
          v93 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec2d>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
          v94 = 0;
          std::stringbuf::str();
          if (v81 >= 0)
          {
            v79 = __p;
          }

          else
          {
            v79 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v90, v79, v78);
          if (v81 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008B0C(&v82);
        }

LABEL_11:
        v91 = &off_2A2043308;
        v7 = operator new(0x30uLL);
        v8 = v88[1];
        *v7 = v88[0];
        *(v7 + 1) = v8;
        v9 = v89;
        *(v7 + 4) = v89;
        if (v9)
        {
          v10 = (v9 - 1);
          if (*(v7 + 3))
          {
            v10 = *(v7 + 3);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v7 + 10);
        v90 = v7;
        atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((a1 + 96), &v90, &v82);
        v11 = v82;
        v82 = 0uLL;
        if (*(&v11 + 1))
        {
          atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(a1 + 24);
        *(a1 + 16) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if (*(&v82 + 1))
        {
          sub_29A014BEC(*(&v82 + 1));
        }

        sub_29A186B14(&v90);
        sub_29AD1019C(a1);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A19255C(v88);
          v24 = v89;
          sub_29A19255C(v88);
          v25 = v89;
          v26 = *&v88[0];
          sub_29A19255C(a1 + 48);
          v27 = &v25[v26] - v24;
          if (v27 >= 1)
          {
            v28 = *(a1 + 80);
            v29 = v27 + 1;
            do
            {
              *v24++ = *v28;
              --v29;
            }

            while (v29 > 1);
          }
        }

        else
        {
          sub_29A19255C(v88);
          v30 = v89;
          sub_29A19255C(v88);
          v31 = &v89[*&v88[0]] - v30;
          if (v31 >= 1)
          {
            v32 = v31 + 1;
            do
            {
              *v30++ = *(a1 + 112);
              --v32;
            }

            while (v32 > 1);
          }

          sub_29A008864(&v82);
          v33 = sub_29A00911C(&v83, "HdStBasisCurves(", 16);
          v34 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v35 = strlen(v34);
          v36 = sub_29A00911C(v33, v34, v35);
          v37 = sub_29A00911C(v36, ")", 1);
          v38 = sub_29A00911C(v37, "- Primvar ", 10);
          v39 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v39)
          {
            v40 = (v39 + 16);
            if (*(v39 + 39) < 0)
            {
              v40 = *v40;
            }
          }

          else
          {
            v40 = "";
          }

          v57 = strlen(v40);
          v58 = sub_29A00911C(v38, v40, v57);
          v59 = sub_29A00911C(v58, " has incorrect size for varying interpolation ", 46);
          v60 = sub_29A00911C(v59, "(need ", 6);
          v61 = MEMORY[0x29C2C1F00](v60, v14);
          v62 = sub_29A00911C(v61, ", got ", 6);
          v63 = MEMORY[0x29C2C1F00](v62, v4);
          v64 = sub_29A00911C(v63, "), using fallback value ", 24);
          v65 = pxrInternal__aapl__pxrReserved__::operator<<(v64, (a1 + 112));
          sub_29A00911C(v65, " for rendering.", 15);
          v90 = "hdSt/basisCurvesComputations.h";
          v91 = "Resolve";
          v92 = 271;
          v93 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec2d>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
          v94 = 0;
          std::stringbuf::str();
          if (v81 >= 0)
          {
            v67 = __p;
          }

          else
          {
            v67 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v90, v67, v66);
          if (v81 < 0)
          {
            operator delete(__p[0]);
          }

          *&v82 = *MEMORY[0x29EDC9528];
          v68 = *(MEMORY[0x29EDC9528] + 72);
          *(&v82 + *(v82 - 24)) = *(MEMORY[0x29EDC9528] + 64);
          v83 = v68;
          v84 = MEMORY[0x29EDC9570] + 16;
          if (v86 < 0)
          {
            operator delete(v85[7].__locale_);
          }

          v84 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v85);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v87);
        }

        goto LABEL_11;
      }

      v15 = *(*(a1 + 32) + 8);
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = v15 ^ *(v16 + 44);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17 > 7)
      {
        v41 = *(a1 + 32);
        v42 = *(v41 + 24);
        v90 = v42;
        if ((v42 & 7) != 0)
        {
          v43 = (v42 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed) & 1) == 0)
          {
            v90 = v43;
          }
        }

        v44 = *(*(a1 + 32) + 16);
        __p[0] = v44;
        if ((v44 & 7) != 0)
        {
          v45 = (v44 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed) & 1) == 0)
          {
            __p[0] = v45;
          }
        }

        sub_29AE2EF48((a1 + 88), (a1 + 96), v3, (v41 + 32), &v90, __p, (a1 + 48), &v82, *(a1 + 112), *(a1 + 120));
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4AD84C(v88, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE2EE8C(uint64_t a1)
{
  *a1 = &unk_2A2095F60;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29AE2EF48(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  sub_29A1921FC(a8, a3);
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v19)
  {
    v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v19 + 57) ^ *a5) <= 7)
  {
    v69 = "hdSt/basisCurvesComputations.h";
    v70 = "HdSt_ExpandVarying";
    v71 = 86;
    v72 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
    v73 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    v22 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v22)
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

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v69, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v21, Text, v23);
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v24)
  {
    v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v24 + 10) ^ *a6) < 8)
  {
    goto LABEL_66;
  }

  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v25)
  {
    v25 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v25 + 11) ^ *a6) < 8)
  {
    goto LABEL_66;
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v26)
  {
    v26 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v26 + 7) ^ *a6) > 7)
  {
    v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v39)
    {
      v39 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v39 + 6) ^ *a6) > 7)
    {
      sub_29A19255C(a8);
      v58 = a8[4];
      sub_29A19255C(a8);
      v59 = (a8[4] + 16 * *a8 - v58) >> 4;
      if (v59 >= 1)
      {
        v60 = v59 + 1;
        do
        {
          *v58 = a9;
          v58[1] = a10;
          v58 += 2;
          --v60;
        }

        while (v60 > 1);
      }

      v69 = "hdSt/basisCurvesComputations.h";
      v70 = "HdSt_ExpandVarying";
      v71 = 154;
      v72 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
      v73 = 0;
      v61 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v63 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v63)
      {
        v64 = (v63 + 16);
        if (*(v63 + 39) < 0)
        {
          v64 = *v64;
        }
      }

      else
      {
        v64 = "";
      }

      v65 = *a6 & 0xFFFFFFFFFFFFFFF8;
      if (v65)
      {
        v66 = (v65 + 16);
        if (*(v65 + 39) < 0)
        {
          v66 = *v66;
        }
      }

      else
      {
        v66 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v69, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v62, v61, v64, v66);
    }

    else
    {
      if (*a4)
      {
        v40 = 0;
        v41 = 0;
        v42 = a4[4];
        v43 = &v42[*a4];
        v67 = v43;
        do
        {
          v44 = *v42;
          if (*v42 >= 1)
          {
            v45 = a7[4];
            sub_29A19255C(a8);
            *(a8[4] + 16 * v41) = *(v45 + 16 * v40);
            v46 = a7[4];
            sub_29A19255C(a8);
            *(a8[4] + 16 * v41 + 16) = *(v46 + 16 * v40);
            v47 = v41 + 2;
            if (v44 < 5)
            {
              v55 = v40 + 1;
            }

            else
            {
              v48 = v44 - 2;
              v49 = 16 * v40 + 16;
              v50 = 16 * v41;
              v51 = 2;
              do
              {
                v52 = a7[4];
                sub_29A19255C(a8);
                *(a8[4] + v50 + 32) = *(v52 + v49);
                v53 = a7[4];
                sub_29A19255C(a8);
                *(a8[4] + v50 + 48) = *(v53 + v49);
                v54 = a7[4];
                sub_29A19255C(a8);
                v47 += 3;
                v51 += 3;
                *(a8[4] + v50 + 64) = *(v54 + v49);
                ++v40;
                v49 += 16;
                v50 += 48;
              }

              while (v51 < v48);
              v55 = v40 + 1;
              v43 = v67;
            }

            v56 = a7[4];
            sub_29A19255C(a8);
            *(a8[4] + 16 * v47) = *(v56 + 16 * v55);
            v57 = a7[4];
            sub_29A19255C(a8);
            *(a8[4] + 16 * v47 + 16) = *(v57 + 16 * v55);
            v41 = v47 + 2;
            v40 += 2;
          }

          ++v42;
        }

        while (v42 != v43);
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }

      if (v40 != *a7)
      {
        v69 = "hdSt/basisCurvesComputations.h";
        v70 = "HdSt_ExpandVarying";
        v71 = 148;
        v72 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
        v73 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v69, "srcIndex == authoredValues.size()", 0);
      }

      if (v41 != a3)
      {
        v69 = "hdSt/basisCurvesComputations.h";
        v70 = "HdSt_ExpandVarying";
        v71 = 149;
        v72 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
        v73 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v69, "dstIndex == numVerts", 0);
      }
    }
  }

  else
  {
LABEL_66:
    if (*a4)
    {
      v27 = 0;
      v28 = 0;
      v29 = a4[4];
      v30 = &v29[*a4];
      do
      {
        v31 = *v29;
        if (*v29 >= 1)
        {
          v32 = a7[4];
          sub_29A19255C(a8);
          *(a8[4] + 16 * v28) = *(v32 + 16 * v27);
          if (v31 >= 4)
          {
            v33 = 16 * v28 + 16;
            v34 = v31 - 3;
            v35 = 16 * v27;
            do
            {
              v36 = a7[4];
              sub_29A19255C(a8);
              *(a8[4] + v33) = *(v36 + v35);
              ++v27;
              ++v28;
              v33 += 16;
              v35 += 16;
              --v34;
            }

            while (v34);
          }

          v37 = a7[4];
          sub_29A19255C(a8);
          *(a8[4] + 16 * (v28 + 1)) = *(v37 + 16 * v27);
          v38 = a7[4];
          sub_29A19255C(a8);
          *(a8[4] + 16 * v28 + 32) = *(v38 + 16 * v27);
          v28 += 3;
          ++v27;
        }

        ++v29;
      }

      while (v29 != v30);
    }

    else
    {
      v28 = 0;
      v27 = 0;
    }

    if (v27 != *a7)
    {
      v69 = "hdSt/basisCurvesComputations.h";
      v70 = "HdSt_ExpandVarying";
      v71 = 113;
      v72 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
      v73 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v69, "srcIndex == authoredValues.size()", 0);
    }

    if (v28 != a3)
    {
      v69 = "hdSt/basisCurvesComputations.h";
      v70 = "HdSt_ExpandVarying";
      v71 = 114;
      v72 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2d]";
      v73 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v69, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE2F594@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, double *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0xA8uLL);
  result = sub_29AE2F638(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE2F638(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, double *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2095FF8;
  sub_29AE2F750(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE2F6E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2095FF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE2F750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, double *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE2F7E0(a2, &v10, a4, a5, a6, *a7, *a9, *a8, a8[1], a8[2]);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE2F7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE2F7E0(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, int a7, double a8, double a9, double a10)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2096048;
  v18 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v19;
  v20 = *(a3 + 32);
  *(a1 + 80) = v20;
  if (v20)
  {
    v21 = (v20 - 16);
    if (*(a1 + 72))
    {
      v21 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v22 = *a5;
  *(a1 + 96) = *a5;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 112) = a8;
  *(a1 + 120) = a9;
  *(a1 + 128) = a10;
  *(a1 + 136) = a7;
  return a1;
}

uint64_t sub_29AE2F928(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 136);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 96), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 96);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t sub_29AE2F9C0(uint64_t a1)
{
  v1 = 0;
  v99 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A1948F8(v92, v3);
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v5 + 59) ^ *(a1 + 96)) >= 8)
    {
LABEL_7:
      v6 = *(a1 + 104);
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_11;
        }

        if (v4 == v3)
        {
          goto LABEL_10;
        }

        if (v4 == 1)
        {
          sub_29A194CC8(v92);
          v18 = v93;
          sub_29A194CC8(v92);
          v19 = v93;
          v20 = *&v92[0];
          sub_29A194CC8(a1 + 48);
          v21 = v19 + 24 * v20 - v18;
          if (v21 >= 1)
          {
            v22 = *(a1 + 80);
            v23 = v21 / 0x18uLL + 1;
            do
            {
              v24 = *v22;
              *(v18 + 16) = *(v22 + 2);
              *v18 = v24;
              v18 += 24;
              --v23;
            }

            while (v23 > 1);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A4ADFBC(v92, (a1 + 48));
          v86 = 0uLL;
          v87 = 0;
          v94 = &v86;
          sub_29A194A04(v92, v3, &v94);
        }

        else
        {
          sub_29A194CC8(v92);
          v49 = v93;
          sub_29A194CC8(v92);
          v50 = v93 + 24 * *&v92[0] - v49;
          if (v50 >= 1)
          {
            v51 = v50 / 0x18uLL + 1;
            do
            {
              v52 = *(a1 + 112);
              *(v49 + 16) = *(a1 + 128);
              *v49 = v52;
              v49 += 24;
              --v51;
            }

            while (v51 > 1);
          }

          sub_29A008864(&v86);
          v53 = sub_29A00911C(&v87, "HdStBasisCurves(", 16);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v55 = strlen(Text);
          v56 = sub_29A00911C(v53, Text, v55);
          v57 = sub_29A00911C(v56, ")", 1);
          v58 = sub_29A00911C(v57, "- Primvar ", 10);
          v59 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v59)
          {
            v60 = (v59 + 16);
            if (*(v59 + 39) < 0)
            {
              v60 = *v60;
            }
          }

          else
          {
            v60 = "";
          }

          v73 = strlen(v60);
          v74 = sub_29A00911C(v58, v60, v73);
          v75 = sub_29A00911C(v74, " has incorrect size for vertex interpolation ", 45);
          v76 = sub_29A00911C(v75, "(need ", 6);
          v77 = MEMORY[0x29C2C1F00](v76, v3);
          v78 = sub_29A00911C(v77, ", got ", 6);
          v79 = MEMORY[0x29C2C1F00](v78, v4);
          v80 = sub_29A00911C(v79, "), using fallback value ", 24);
          v81 = pxrInternal__aapl__pxrReserved__::operator<<(v80, (a1 + 112));
          sub_29A00911C(v81, " for rendering.", 15);
          v94 = "hdSt/basisCurvesComputations.h";
          v95 = "Resolve";
          v96 = 233;
          v97 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec3d>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
          v98 = 0;
          std::stringbuf::str();
          if (v85 >= 0)
          {
            v83 = __p;
          }

          else
          {
            v83 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v94, v83, v82);
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008B0C(&v86);
        }

LABEL_11:
        v95 = &off_2A2043530;
        v7 = operator new(0x30uLL);
        v8 = v92[1];
        *v7 = v92[0];
        *(v7 + 1) = v8;
        v9 = v93;
        *(v7 + 4) = v93;
        if (v9)
        {
          v10 = (v9 - 16);
          if (*(v7 + 3))
          {
            v10 = *(v7 + 3);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v7 + 10);
        v94 = v7;
        atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((a1 + 96), &v94, &v86);
        v11 = v86;
        v86 = 0uLL;
        if (*(&v11 + 1))
        {
          atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(a1 + 24);
        *(a1 + 16) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if (*(&v86 + 1))
        {
          sub_29A014BEC(*(&v86 + 1));
        }

        sub_29A186B14(&v94);
        sub_29AD1019C(a1);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A194CC8(v92);
          v25 = v93;
          sub_29A194CC8(v92);
          v26 = v93;
          v27 = *&v92[0];
          sub_29A194CC8(a1 + 48);
          v28 = v26 + 24 * v27 - v25;
          if (v28 >= 1)
          {
            v29 = *(a1 + 80);
            v30 = v28 / 0x18uLL + 1;
            do
            {
              v31 = *v29;
              *(v25 + 16) = *(v29 + 2);
              *v25 = v31;
              v25 += 24;
              --v30;
            }

            while (v30 > 1);
          }
        }

        else
        {
          sub_29A194CC8(v92);
          v32 = v93;
          sub_29A194CC8(v92);
          v33 = v93 + 24 * *&v92[0] - v32;
          if (v33 >= 1)
          {
            v34 = v33 / 0x18uLL + 1;
            do
            {
              v35 = *(a1 + 112);
              *(v32 + 16) = *(a1 + 128);
              *v32 = v35;
              v32 += 24;
              --v34;
            }

            while (v34 > 1);
          }

          sub_29A008864(&v86);
          v36 = sub_29A00911C(&v87, "HdStBasisCurves(", 16);
          v37 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v38 = strlen(v37);
          v39 = sub_29A00911C(v36, v37, v38);
          v40 = sub_29A00911C(v39, ")", 1);
          v41 = sub_29A00911C(v40, "- Primvar ", 10);
          v42 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v42)
          {
            v43 = (v42 + 16);
            if (*(v42 + 39) < 0)
            {
              v43 = *v43;
            }
          }

          else
          {
            v43 = "";
          }

          v61 = strlen(v43);
          v62 = sub_29A00911C(v41, v43, v61);
          v63 = sub_29A00911C(v62, " has incorrect size for varying interpolation ", 46);
          v64 = sub_29A00911C(v63, "(need ", 6);
          v65 = MEMORY[0x29C2C1F00](v64, v14);
          v66 = sub_29A00911C(v65, ", got ", 6);
          v67 = MEMORY[0x29C2C1F00](v66, v4);
          v68 = sub_29A00911C(v67, "), using fallback value ", 24);
          v69 = pxrInternal__aapl__pxrReserved__::operator<<(v68, (a1 + 112));
          sub_29A00911C(v69, " for rendering.", 15);
          v94 = "hdSt/basisCurvesComputations.h";
          v95 = "Resolve";
          v96 = 271;
          v97 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec3d>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
          v98 = 0;
          std::stringbuf::str();
          if (v85 >= 0)
          {
            v71 = __p;
          }

          else
          {
            v71 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v94, v71, v70);
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }

          *&v86 = *MEMORY[0x29EDC9528];
          v72 = *(MEMORY[0x29EDC9528] + 72);
          *(&v86 + *(v86 - 24)) = *(MEMORY[0x29EDC9528] + 64);
          v87 = v72;
          v88 = MEMORY[0x29EDC9570] + 16;
          if (v90 < 0)
          {
            operator delete(v89[7].__locale_);
          }

          v88 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v89);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v91);
        }

        goto LABEL_11;
      }

      v15 = *(*(a1 + 32) + 8);
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = v15 ^ *(v16 + 44);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17 > 7)
      {
        v44 = *(a1 + 32);
        v45 = *(v44 + 24);
        v94 = v45;
        if ((v45 & 7) != 0)
        {
          v46 = (v45 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed) & 1) == 0)
          {
            v94 = v46;
          }
        }

        v47 = *(*(a1 + 32) + 16);
        __p[0] = v47;
        if ((v47 & 7) != 0)
        {
          v48 = (v47 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed) & 1) == 0)
          {
            __p[0] = v48;
          }
        }

        sub_29AE304CC((a1 + 88), (a1 + 96), v3, (v44 + 32), &v94, __p, (a1 + 48), &v86, *(a1 + 112), *(a1 + 120), *(a1 + 128));
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4ADFBC(v92, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE30410(uint64_t a1)
{
  *a1 = &unk_2A2096048;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29AE304CC(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  sub_29A1948F8(a8, a3);
  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v21)
  {
    v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v21 + 57) ^ *a5) <= 7)
  {
    v105 = "hdSt/basisCurvesComputations.h";
    v106 = "HdSt_ExpandVarying";
    v107 = 86;
    v108 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
    v109 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    v24 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v24)
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

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v105, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v23, Text, v25);
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v26)
  {
    v26 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v26 + 10) ^ *a6) < 8)
  {
    goto LABEL_68;
  }

  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v27)
  {
    v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v27 + 11) ^ *a6) < 8)
  {
    goto LABEL_68;
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v28)
  {
    v28 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v28 + 7) ^ *a6) > 7)
  {
    v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v53)
    {
      v53 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v53 + 6) ^ *a6) > 7)
    {
      sub_29A194CC8(a8);
      v93 = a8[4];
      sub_29A194CC8(a8);
      v94 = a8[4] + 24 * *a8 - v93;
      if (v94 >= 1)
      {
        v95 = v94 / 0x18uLL + 1;
        do
        {
          *v93 = a9;
          v93[1] = a10;
          v93[2] = a11;
          v93 += 3;
          --v95;
        }

        while (v95 > 1);
      }

      v105 = "hdSt/basisCurvesComputations.h";
      v106 = "HdSt_ExpandVarying";
      v107 = 154;
      v108 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
      v109 = 0;
      v96 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v98 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v98)
      {
        v99 = (v98 + 16);
        if (*(v98 + 39) < 0)
        {
          v99 = *v99;
        }
      }

      else
      {
        v99 = "";
      }

      v100 = *a6 & 0xFFFFFFFFFFFFFFF8;
      if (v100)
      {
        v101 = (v100 + 16);
        if (*(v100 + 39) < 0)
        {
          v101 = *v101;
        }
      }

      else
      {
        v101 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v105, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v97, v96, v99, v101);
    }

    else
    {
      if (*a4)
      {
        v54 = 0;
        v55 = 0;
        v56 = a4[4];
        v57 = &v56[*a4];
        v104 = v57;
        do
        {
          v58 = *v56;
          if (*v56 >= 1)
          {
            v59 = a7[4];
            sub_29A194CC8(a8);
            v60 = (v59 + 24 * v54);
            v61 = a8[4] + 24 * v55;
            v62 = *v60;
            *(v61 + 16) = *(v60 + 2);
            *v61 = v62;
            v63 = a7[4];
            sub_29A194CC8(a8);
            v64 = (v63 + 24 * v54);
            v65 = *v64;
            v66 = a8[4] + 24 * v55;
            *(v66 + 40) = *(v64 + 2);
            *(v66 + 24) = v65;
            v67 = v55 + 2;
            if (v58 < 5)
            {
              v84 = v54 + 1;
            }

            else
            {
              v68 = 0;
              v69 = v58 - 2;
              v70 = 24 * v54 + 24;
              v71 = 24 * v55;
              do
              {
                v72 = a7[4];
                sub_29A194CC8(a8);
                v73 = v72 + v70 + 8 * v68;
                v74 = a8[4] + v71;
                v75 = *v73;
                *(v74 + 64) = *(v73 + 16);
                *(v74 + 48) = v75;
                v76 = a7[4];
                sub_29A194CC8(a8);
                v77 = v76 + v70 + 8 * v68;
                v78 = a8[4] + v71;
                v79 = *v77;
                *(v78 + 88) = *(v77 + 16);
                *(v78 + 72) = v79;
                v80 = a7[4];
                sub_29A194CC8(a8);
                v81 = v80 + v70 + 8 * v68;
                v82 = a8[4] + v71;
                v83 = *v81;
                *(v82 + 112) = *(v81 + 16);
                *(v82 + 96) = v83;
                ++v54;
                v68 += 3;
                v71 += 72;
              }

              while (v68 + 2 < v69);
              v84 = v54 + 1;
              v67 += v68;
              v57 = v104;
            }

            v85 = a7[4];
            sub_29A194CC8(a8);
            v86 = (v85 + 24 * v84);
            v87 = a8[4] + 24 * v67;
            v88 = *v86;
            *(v87 + 16) = *(v86 + 2);
            *v87 = v88;
            v89 = a7[4];
            sub_29A194CC8(a8);
            v90 = (v89 + 24 * v84);
            v91 = *v90;
            v92 = a8[4] + 24 * v67;
            *(v92 + 40) = *(v90 + 2);
            *(v92 + 24) = v91;
            v55 = v67 + 2;
            v54 += 2;
          }

          ++v56;
        }

        while (v56 != v57);
      }

      else
      {
        v55 = 0;
        v54 = 0;
      }

      if (v54 != *a7)
      {
        v105 = "hdSt/basisCurvesComputations.h";
        v106 = "HdSt_ExpandVarying";
        v107 = 148;
        v108 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
        v109 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v105, "srcIndex == authoredValues.size()", 0);
      }

      if (v55 != a3)
      {
        v105 = "hdSt/basisCurvesComputations.h";
        v106 = "HdSt_ExpandVarying";
        v107 = 149;
        v108 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
        v109 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v105, "dstIndex == numVerts", 0);
      }
    }
  }

  else
  {
LABEL_68:
    if (*a4)
    {
      v29 = 0;
      v30 = 0;
      v31 = a4[4];
      v32 = &v31[*a4];
      v103 = v32;
      do
      {
        v33 = *v31;
        if (*v31 >= 1)
        {
          v34 = a7[4];
          sub_29A194CC8(a8);
          v35 = (v34 + 24 * v29);
          v36 = *v35;
          v37 = a8[4] + 24 * v30;
          *(v37 + 16) = *(v35 + 2);
          *v37 = v36;
          if (v33 < 4)
          {
            v44 = v30 + 1;
          }

          else
          {
            v38 = 24 * v30 + 24;
            v39 = v33 - 3;
            v40 = 24 * v29;
            do
            {
              v41 = a7[4];
              sub_29A194CC8(a8);
              v42 = a8[4] + v38;
              v43 = *(v41 + v40);
              ++v29;
              *(v42 + 16) = *(v41 + v40 + 16);
              *v42 = v43;
              ++v30;
              v38 += 24;
              v40 += 24;
              --v39;
            }

            while (v39);
            v44 = v30 + 1;
            v32 = v103;
          }

          v45 = a7[4];
          sub_29A194CC8(a8);
          v46 = (v45 + 24 * v29);
          v47 = a8[4] + 24 * v44;
          v48 = *v46;
          *(v47 + 16) = *(v46 + 2);
          *v47 = v48;
          v49 = a7[4];
          sub_29A194CC8(a8);
          v50 = (v49 + 24 * v29);
          v51 = *v50;
          v52 = a8[4] + 24 * v30;
          *(v52 + 64) = *(v50 + 2);
          *(v52 + 48) = v51;
          v30 += 3;
          ++v29;
        }

        ++v31;
      }

      while (v31 != v32);
    }

    else
    {
      v30 = 0;
      v29 = 0;
    }

    if (v29 != *a7)
    {
      v105 = "hdSt/basisCurvesComputations.h";
      v106 = "HdSt_ExpandVarying";
      v107 = 113;
      v108 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
      v109 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v105, "srcIndex == authoredValues.size()", 0);
    }

    if (v30 != a3)
    {
      v105 = "hdSt/basisCurvesComputations.h";
      v106 = "HdSt_ExpandVarying";
      v107 = 114;
      v108 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3d]";
      v109 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v105, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE30C10@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, double *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0xB0uLL);
  result = sub_29AE30CB4(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE30CB4(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, double *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20960E0;
  sub_29AE30DCC(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE30D60(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20960E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE30DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, double *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE30E5C(a2, &v10, a4, a5, a6, *a7, *a9, *a8, a8[1], a8[2], a8[3]);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE30E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE30E5C(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, int a7, double a8, double a9, double a10, double a11)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2096130;
  v20 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v21;
  v22 = *(a3 + 32);
  *(a1 + 80) = v22;
  if (v22)
  {
    v23 = (v22 - 16);
    if (*(a1 + 72))
    {
      v23 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v24 = *a5;
  *(a1 + 96) = *a5;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 112) = a8;
  *(a1 + 120) = a9;
  *(a1 + 128) = a10;
  *(a1 + 136) = a11;
  *(a1 + 144) = a7;
  return a1;
}

uint64_t sub_29AE30FA8(uint64_t a1, void *a2)
{
  LODWORD(v7) = *(a1 + 144);
  *(&v7 + 1) = 1;
  v3 = a2[1];
  if (v3 >= a2[2])
  {
    result = sub_29AE03FE4(a2, (a1 + 96), &v7);
  }

  else
  {
    v4 = v7;
    v5 = *(a1 + 96);
    *v3 = v5;
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = v4;
    v3[2] = 1;
    result = (v3 + 3);
  }

  a2[1] = result;
  return result;
}

uint64_t sub_29AE31040(uint64_t a1)
{
  v1 = 0;
  v98 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A196EB8(v91, v3);
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v5 + 59) ^ *(a1 + 96)) >= 8)
    {
LABEL_7:
      v6 = *(a1 + 104);
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_11;
        }

        if (v4 == v3)
        {
          goto LABEL_10;
        }

        if (v4 == 1)
        {
          sub_29A19722C(v91);
          v18 = v92;
          sub_29A19722C(v91);
          v19 = v92;
          v20 = *&v91[0];
          sub_29A19722C(a1 + 48);
          v21 = (&v19[32 * v20] - v18) >> 5;
          if (v21 >= 1)
          {
            v22 = *(a1 + 80);
            v23 = v21 + 1;
            do
            {
              v24 = v22[1];
              *v18 = *v22;
              *(v18 + 1) = v24;
              v18 += 32;
              --v23;
            }

            while (v23 > 1);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A4AE70C(v91, (a1 + 48));
          v86 = 0u;
          v87 = 0u;
          v93 = &v86;
          sub_29A196FC0(v91, v3, &v93);
        }

        else
        {
          sub_29A19722C(v91);
          v49 = v92;
          sub_29A19722C(v91);
          v50 = (&v92[32 * *&v91[0]] - v49) >> 5;
          if (v50 >= 1)
          {
            v51 = v50 + 1;
            do
            {
              v52 = *(a1 + 128);
              *v49 = *(a1 + 112);
              *(v49 + 1) = v52;
              v49 += 32;
              --v51;
            }

            while (v51 > 1);
          }

          sub_29A008864(&v86);
          v53 = sub_29A00911C(&v87, "HdStBasisCurves(", 16);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v55 = strlen(Text);
          v56 = sub_29A00911C(v53, Text, v55);
          v57 = sub_29A00911C(v56, ")", 1);
          v58 = sub_29A00911C(v57, "- Primvar ", 10);
          v59 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v59)
          {
            v60 = (v59 + 16);
            if (*(v59 + 39) < 0)
            {
              v60 = *v60;
            }
          }

          else
          {
            v60 = "";
          }

          v73 = strlen(v60);
          v74 = sub_29A00911C(v58, v60, v73);
          v75 = sub_29A00911C(v74, " has incorrect size for vertex interpolation ", 45);
          v76 = sub_29A00911C(v75, "(need ", 6);
          v77 = MEMORY[0x29C2C1F00](v76, v3);
          v78 = sub_29A00911C(v77, ", got ", 6);
          v79 = MEMORY[0x29C2C1F00](v78, v4);
          v80 = sub_29A00911C(v79, "), using fallback value ", 24);
          v81 = pxrInternal__aapl__pxrReserved__::operator<<(v80, (a1 + 112));
          sub_29A00911C(v81, " for rendering.", 15);
          v93 = "hdSt/basisCurvesComputations.h";
          v94 = "Resolve";
          v95 = 233;
          v96 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec4d>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
          v97 = 0;
          std::stringbuf::str();
          if (v85 >= 0)
          {
            v83 = __p;
          }

          else
          {
            v83 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v93, v83, v82);
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }

          sub_29A008B0C(&v86);
        }

LABEL_11:
        v94 = &off_2A2043758;
        v7 = operator new(0x30uLL);
        v8 = v91[1];
        *v7 = v91[0];
        *(v7 + 1) = v8;
        v9 = v92;
        *(v7 + 4) = v92;
        if (v9)
        {
          v10 = (v9 - 16);
          if (*(v7 + 3))
          {
            v10 = *(v7 + 3);
          }

          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v7 + 10);
        v93 = v7;
        atomic_fetch_add_explicit(v7 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((a1 + 96), &v93, &v86);
        v11 = v86;
        v86 = 0uLL;
        if (*(&v11 + 1))
        {
          atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(a1 + 24);
        *(a1 + 16) = v11;
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (*(&v11 + 1))
        {
          sub_29A014BEC(*(&v11 + 1));
        }

        if (*(&v86 + 1))
        {
          sub_29A014BEC(*(&v86 + 1));
        }

        sub_29A186B14(&v93);
        sub_29AD1019C(a1);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A19722C(v91);
          v25 = v92;
          sub_29A19722C(v91);
          v26 = v92;
          v27 = *&v91[0];
          sub_29A19722C(a1 + 48);
          v28 = (&v26[32 * v27] - v25) >> 5;
          if (v28 >= 1)
          {
            v29 = *(a1 + 80);
            v30 = v28 + 1;
            do
            {
              v31 = v29[1];
              *v25 = *v29;
              *(v25 + 1) = v31;
              v25 += 32;
              --v30;
            }

            while (v30 > 1);
          }
        }

        else
        {
          sub_29A19722C(v91);
          v32 = v92;
          sub_29A19722C(v91);
          v33 = (&v92[32 * *&v91[0]] - v32) >> 5;
          if (v33 >= 1)
          {
            v34 = v33 + 1;
            do
            {
              v35 = *(a1 + 128);
              *v32 = *(a1 + 112);
              *(v32 + 1) = v35;
              v32 += 32;
              --v34;
            }

            while (v34 > 1);
          }

          sub_29A008864(&v86);
          v36 = sub_29A00911C(&v87, "HdStBasisCurves(", 16);
          v37 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 88));
          v38 = strlen(v37);
          v39 = sub_29A00911C(v36, v37, v38);
          v40 = sub_29A00911C(v39, ")", 1);
          v41 = sub_29A00911C(v40, "- Primvar ", 10);
          v42 = *(a1 + 96) & 0xFFFFFFFFFFFFFFF8;
          if (v42)
          {
            v43 = (v42 + 16);
            if (*(v42 + 39) < 0)
            {
              v43 = *v43;
            }
          }

          else
          {
            v43 = "";
          }

          v61 = strlen(v43);
          v62 = sub_29A00911C(v41, v43, v61);
          v63 = sub_29A00911C(v62, " has incorrect size for varying interpolation ", 46);
          v64 = sub_29A00911C(v63, "(need ", 6);
          v65 = MEMORY[0x29C2C1F00](v64, v14);
          v66 = sub_29A00911C(v65, ", got ", 6);
          v67 = MEMORY[0x29C2C1F00](v66, v4);
          v68 = sub_29A00911C(v67, "), using fallback value ", 24);
          v69 = pxrInternal__aapl__pxrReserved__::operator<<(v68, (a1 + 112));
          sub_29A00911C(v69, " for rendering.", 15);
          v93 = "hdSt/basisCurvesComputations.h";
          v94 = "Resolve";
          v95 = 271;
          v96 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec4d>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
          v97 = 0;
          std::stringbuf::str();
          if (v85 >= 0)
          {
            v71 = __p;
          }

          else
          {
            v71 = __p[0];
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v93, v71, v70);
          if (v85 < 0)
          {
            operator delete(__p[0]);
          }

          *&v86 = *MEMORY[0x29EDC9528];
          v72 = *(MEMORY[0x29EDC9528] + 72);
          *(&v86 + *(v86 - 24)) = *(MEMORY[0x29EDC9528] + 64);
          *&v87 = v72;
          *(&v87 + 1) = MEMORY[0x29EDC9570] + 16;
          if (v89 < 0)
          {
            operator delete(v88[7].__locale_);
          }

          *(&v87 + 1) = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v88);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v90);
        }

        goto LABEL_11;
      }

      v15 = *(*(a1 + 32) + 8);
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v16)
      {
        v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      v17 = v15 ^ *(v16 + 44);
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17 > 7)
      {
        v44 = *(a1 + 32);
        v45 = *(v44 + 24);
        v93 = v45;
        if ((v45 & 7) != 0)
        {
          v46 = (v45 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed) & 1) == 0)
          {
            v93 = v46;
          }
        }

        v47 = *(*(a1 + 32) + 16);
        __p[0] = v47;
        if ((v47 & 7) != 0)
        {
          v48 = (v47 & 0xFFFFFFFFFFFFFFF8);
          if ((atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed) & 1) == 0)
          {
            __p[0] = v48;
          }
        }

        sub_29AE31AEC((a1 + 88), (a1 + 96), v3, (v44 + 32), &v93, __p, (a1 + 48), &v86, *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136));
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4AE70C(v91, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}