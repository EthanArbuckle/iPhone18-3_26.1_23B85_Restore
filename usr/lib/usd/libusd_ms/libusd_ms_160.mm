void sub_29AE31A30(uint64_t a1)
{
  *a1 = &unk_2A2096130;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29AE31AEC(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  sub_29A196EB8(a8, a3);
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v23)
  {
    v23 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v23 + 57) ^ *a5) <= 7)
  {
    v106 = "hdSt/basisCurvesComputations.h";
    v107 = "HdSt_ExpandVarying";
    v108 = 86;
    v109 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
    v110 = 0;
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

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v106, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v25, Text, v27);
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
    v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v56)
    {
      v56 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v56 + 6) ^ *a6) > 7)
    {
      sub_29A19722C(a8);
      v95 = a8[4];
      sub_29A19722C(a8);
      v96 = (a8[4] + 32 * *a8 - v95) >> 5;
      if (v96 >= 1)
      {
        v97 = v96 + 1;
        do
        {
          *v95 = a9;
          v95[1] = a10;
          v95[2] = a11;
          v95[3] = a12;
          v95 += 4;
          --v97;
        }

        while (v97 > 1);
      }

      v106 = "hdSt/basisCurvesComputations.h";
      v107 = "HdSt_ExpandVarying";
      v108 = 154;
      v109 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
      v110 = 0;
      v98 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v100 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

      v102 = *a6 & 0xFFFFFFFFFFFFFFF8;
      if (v102)
      {
        v103 = (v102 + 16);
        if (*(v102 + 39) < 0)
        {
          v103 = *v103;
        }
      }

      else
      {
        v103 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v106, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v99, v98, v101, v103);
    }

    else
    {
      if (*a4)
      {
        v57 = 0;
        v58 = 0;
        v59 = a4[4];
        v60 = &v59[*a4];
        v104 = v60;
        do
        {
          v61 = *v59;
          if (*v59 >= 1)
          {
            v62 = a7[4];
            sub_29A19722C(a8);
            v63 = (v62 + 32 * v57);
            v64 = (a8[4] + 32 * v58);
            v65 = v63[1];
            *v64 = *v63;
            v64[1] = v65;
            v66 = a7[4];
            sub_29A19722C(a8);
            v67 = (v66 + 32 * v57);
            v68 = *v67;
            v69 = v67[1];
            v70 = a8[4] + 32 * v58;
            *(v70 + 32) = v68;
            *(v70 + 48) = v69;
            v71 = v58 + 2;
            if (v61 < 5)
            {
              v85 = v57 + 1;
            }

            else
            {
              v72 = v61 - 2;
              v73 = 32 * v57 + 32;
              v74 = 32 * v58;
              v75 = 2;
              do
              {
                v76 = a7[4];
                sub_29A19722C(a8);
                v77 = a8[4] + v74;
                v78 = *(v76 + v73 + 16);
                *(v77 + 64) = *(v76 + v73);
                *(v77 + 80) = v78;
                v79 = a7[4];
                sub_29A19722C(a8);
                v80 = a8[4] + v74;
                v81 = *(v79 + v73 + 16);
                *(v80 + 96) = *(v79 + v73);
                *(v80 + 112) = v81;
                v82 = a7[4];
                sub_29A19722C(a8);
                v83 = a8[4] + v74;
                v84 = *(v82 + v73 + 16);
                v71 += 3;
                v75 += 3;
                *(v83 + 128) = *(v82 + v73);
                *(v83 + 144) = v84;
                ++v57;
                v73 += 32;
                v74 += 96;
              }

              while (v75 < v72);
              v85 = v57 + 1;
              v60 = v104;
            }

            v86 = a7[4];
            sub_29A19722C(a8);
            v87 = (v86 + 32 * v85);
            v88 = (a8[4] + 32 * v71);
            v89 = v87[1];
            *v88 = *v87;
            v88[1] = v89;
            v90 = a7[4];
            sub_29A19722C(a8);
            v91 = (v90 + 32 * v85);
            v92 = *v91;
            v93 = v91[1];
            v94 = a8[4] + 32 * v71;
            *(v94 + 32) = v92;
            *(v94 + 48) = v93;
            v58 = v71 + 2;
            v57 += 2;
          }

          ++v59;
        }

        while (v59 != v60);
      }

      else
      {
        v58 = 0;
        v57 = 0;
      }

      if (v57 != *a7)
      {
        v106 = "hdSt/basisCurvesComputations.h";
        v107 = "HdSt_ExpandVarying";
        v108 = 148;
        v109 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
        v110 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v106, "srcIndex == authoredValues.size()", 0);
      }

      if (v58 != a3)
      {
        v106 = "hdSt/basisCurvesComputations.h";
        v107 = "HdSt_ExpandVarying";
        v108 = 149;
        v109 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
        v110 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v106, "dstIndex == numVerts", 0);
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
          sub_29A19722C(a8);
          v37 = (v36 + 32 * v31);
          v38 = *v37;
          v39 = v37[1];
          v40 = (a8[4] + 32 * v32);
          *v40 = v38;
          v40[1] = v39;
          if (v35 >= 4)
          {
            v41 = 32 * v32 + 32;
            v42 = v35 - 3;
            v43 = 32 * v31;
            do
            {
              v44 = a7[4];
              sub_29A19722C(a8);
              v45 = (a8[4] + v41);
              v46 = *(v44 + v43 + 16);
              ++v31;
              *v45 = *(v44 + v43);
              v45[1] = v46;
              ++v32;
              v41 += 32;
              v43 += 32;
              --v42;
            }

            while (v42);
          }

          v47 = a7[4];
          sub_29A19722C(a8);
          v48 = (v47 + 32 * v31);
          v49 = (a8[4] + 32 * (v32 + 1));
          v50 = v48[1];
          *v49 = *v48;
          v49[1] = v50;
          v51 = a7[4];
          sub_29A19722C(a8);
          v52 = (v51 + 32 * v31);
          v53 = *v52;
          v54 = v52[1];
          v55 = a8[4] + 32 * v32;
          *(v55 + 64) = v53;
          *(v55 + 80) = v54;
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
      v106 = "hdSt/basisCurvesComputations.h";
      v107 = "HdSt_ExpandVarying";
      v108 = 113;
      v109 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
      v110 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v106, "srcIndex == authoredValues.size()", 0);
    }

    if (v32 != a3)
    {
      v106 = "hdSt/basisCurvesComputations.h";
      v107 = "HdSt_ExpandVarying";
      v108 = 114;
      v109 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4d]";
      v110 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v106, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE32190@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, int *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x90uLL);
  result = sub_29AE32234(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE32234(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, int *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20961C8;
  sub_29AE3234C(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE322E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20961C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE3234C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, int *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE323D8(a2, &v10, a4, a5, a6, *a7, *a8, *a9);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE323C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE323D8(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, int a7, int a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2096218;
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

uint64_t sub_29AE32500(uint64_t a1, void *a2)
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

uint64_t sub_29AE32598(uint64_t a1)
{
  v1 = 0;
  v117 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A19D6E4(v110, v3);
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
          sub_29A19DBEC(v110);
          v18 = v111;
          sub_29A19DBEC(v110);
          v19 = v111;
          v20 = *&v110[0];
          sub_29A19DBEC(a1 + 48);
          v21 = (v19 + 4 * v20 - v18) >> 2;
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = **(a1 + 80);
            v24 = vdupq_n_s64(v21 - 1);
            v25 = (v21 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v26 = (v18 + 8);
            do
            {
              v27 = vdupq_n_s64(v22);
              v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B430070)));
              if (vuzp1_s16(v28, *v24.i8).u8[0])
              {
                *(v26 - 2) = v23;
              }

              if (vuzp1_s16(v28, *&v24).i8[2])
              {
                *(v26 - 1) = v23;
              }

              if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433E10)))).i32[1])
              {
                *v26 = v23;
                v26[1] = v23;
              }

              v22 += 4;
              v26 += 4;
            }

            while (v25 != v22);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A27CF04(v110, (a1 + 48));
          LODWORD(v112) = 0;
          *&v104 = &v112;
          sub_29A19D7EC(v110, v3, &v104);
        }

        else
        {
          sub_29A19DBEC(v110);
          v62 = v111;
          sub_29A19DBEC(v110);
          v63 = (v111 + 4 * *&v110[0] - v62) >> 2;
          if (v63 >= 1)
          {
            v64 = 0;
            v65 = *(a1 + 108);
            v66 = vdupq_n_s64(v63 - 1);
            v67 = (v63 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v68 = (v62 + 8);
            do
            {
              v69 = vdupq_n_s64(v64);
              v70 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v69, xmmword_29B430070)));
              if (vuzp1_s16(v70, *v66.i8).u8[0])
              {
                *(v68 - 2) = v65;
              }

              if (vuzp1_s16(v70, *&v66).i8[2])
              {
                *(v68 - 1) = v65;
              }

              if (vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v69, xmmword_29B433E10)))).i32[1])
              {
                *v68 = v65;
                v68[1] = v65;
              }

              v64 += 4;
              v68 += 4;
            }

            while (v67 != v64);
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
          v99 = MEMORY[0x29C2C1ED0](v98, *(a1 + 108));
          sub_29A00911C(v99, " for rendering.", 15);
          v112 = "hdSt/basisCurvesComputations.h";
          v113 = "Resolve";
          v114 = 233;
          v115 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<int>::Resolve() [T = int]";
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
        v113 = &off_2A2043D18;
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
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A19DBEC(v110);
          v29 = v111;
          sub_29A19DBEC(v110);
          v30 = v111;
          v31 = *&v110[0];
          sub_29A19DBEC(a1 + 48);
          v32 = (v30 + 4 * v31 - v29) >> 2;
          if (v32 >= 1)
          {
            v33 = 0;
            v34 = **(a1 + 80);
            v35 = vdupq_n_s64(v32 - 1);
            v36 = (v32 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v37 = (v29 + 8);
            do
            {
              v38 = vdupq_n_s64(v33);
              v39 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B430070)));
              if (vuzp1_s16(v39, *v35.i8).u8[0])
              {
                *(v37 - 2) = v34;
              }

              if (vuzp1_s16(v39, *&v35).i8[2])
              {
                *(v37 - 1) = v34;
              }

              if (vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B433E10)))).i32[1])
              {
                *v37 = v34;
                v37[1] = v34;
              }

              v33 += 4;
              v37 += 4;
            }

            while (v36 != v33);
          }
        }

        else
        {
          sub_29A19DBEC(v110);
          v40 = v111;
          sub_29A19DBEC(v110);
          v41 = (v111 + 4 * *&v110[0] - v40) >> 2;
          if (v41 >= 1)
          {
            v42 = 0;
            v43 = *(a1 + 108);
            v44 = vdupq_n_s64(v41 - 1);
            v45 = (v41 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v46 = (v40 + 8);
            do
            {
              v47 = vdupq_n_s64(v42);
              v48 = vmovn_s64(vcgeq_u64(v44, vorrq_s8(v47, xmmword_29B430070)));
              if (vuzp1_s16(v48, *v44.i8).u8[0])
              {
                *(v46 - 2) = v43;
              }

              if (vuzp1_s16(v48, *&v44).i8[2])
              {
                *(v46 - 1) = v43;
              }

              if (vuzp1_s16(*&v44, vmovn_s64(vcgeq_u64(v44, vorrq_s8(v47, xmmword_29B433E10)))).i32[1])
              {
                *v46 = v43;
                v46[1] = v43;
              }

              v42 += 4;
              v46 += 4;
            }

            while (v45 != v42);
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
          v87 = MEMORY[0x29C2C1ED0](v86, *(a1 + 108));
          sub_29A00911C(v87, " for rendering.", 15);
          v112 = "hdSt/basisCurvesComputations.h";
          v113 = "Resolve";
          v114 = 271;
          v115 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<int>::Resolve() [T = int]";
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

        sub_29AE3322C((a1 + 88), (a1 + 96), v3, (v57 + 32), &v112, __p, (a1 + 48), *(a1 + 108), &v104);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
      }
    }

LABEL_10:
    sub_29A27CF04(v110, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE33170(uint64_t a1)
{
  *a1 = &unk_2A2096218;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AE3322C(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, int a8@<W7>, void *a9@<X8>)
{
  sub_29A19D6E4(a9, a3);
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
    v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = int]";
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
      sub_29A19DBEC(a9);
      v54 = a9[4];
      sub_29A19DBEC(a9);
      v55 = (a9[4] + 4 * *a9 - v54) >> 2;
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
            *(v59 - 2) = a8;
          }

          if (vuzp1_s16(v61, *&v57).i8[2])
          {
            *(v59 - 1) = a8;
          }

          if (vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, vorrq_s8(v60, xmmword_29B433E10)))).i32[1])
          {
            *v59 = a8;
            v59[1] = a8;
          }

          v56 += 4;
          v59 += 4;
        }

        while (v58 != v56);
      }

      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 154;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = int]";
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
            sub_29A19DBEC(a9);
            *(a9[4] + 4 * v39) = v43;
            v44 = *(a7[4] + 4 * v38);
            sub_29A19DBEC(a9);
            *(a9[4] + 4 * v39 + 4) = v44;
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
                sub_29A19DBEC(a9);
                *(a9[4] + 4 * v39 + 8) = v47;
                v48 = *(a7[4] + 4 * v38 + 4);
                sub_29A19DBEC(a9);
                *(a9[4] + 4 * v39 + 12) = v48;
                v49 = *(a7[4] + 4 * v38 + 4);
                sub_29A19DBEC(a9);
                *(a9[4] + 4 * v39 + 16) = v49;
                v46 += 3;
                ++v38;
                v39 += 3;
              }

              while (v46 < v45);
              v50 = v38 + 1;
              v51 = v39 + 2;
            }

            v52 = *(a7[4] + 4 * v50);
            sub_29A19DBEC(a9);
            *(a9[4] + 4 * v51) = v52;
            v53 = *(a7[4] + 4 * v50);
            sub_29A19DBEC(a9);
            *(a9[4] + 4 * v51 + 4) = v53;
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
        v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = int]";
        v72 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "srcIndex == authoredValues.size()", 0);
      }

      if (v39 != a3)
      {
        v68 = "hdSt/basisCurvesComputations.h";
        v69 = "HdSt_ExpandVarying";
        v70 = 149;
        v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = int]";
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
          sub_29A19DBEC(a9);
          *(a9[4] + 4 * v27) = v31;
          v32 = v27 + 1;
          if (v30 >= 4)
          {
            v33 = v30 - 3;
            do
            {
              v34 = *(a7[4] + 4 * v26);
              sub_29A19DBEC(a9);
              *(a9[4] + 4 * v32) = v34;
              ++v26;
              ++v32;
              --v33;
            }

            while (v33);
            v27 = v32 - 1;
          }

          v35 = *(a7[4] + 4 * v26);
          sub_29A19DBEC(a9);
          *(a9[4] + 4 * v32) = v35;
          v36 = *(a7[4] + 4 * v26);
          sub_29A19DBEC(a9);
          *(a9[4] + 4 * v27 + 8) = v36;
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
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = int]";
      v72 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "srcIndex == authoredValues.size()", 0);
    }

    if (v27 != a3)
    {
      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 114;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = int]";
      v72 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE338C4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, uint64_t *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x90uLL);
  result = sub_29AE33968(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE33968(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, uint64_t *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20962B0;
  sub_29AE33A80(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE33A14(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20962B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE33A80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, uint64_t *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE33B0C(a2, &v10, a4, a5, a6, *a7, *a8, *a9);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE33AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE33B0C(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, uint64_t a7, int a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2096300;
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
  *(a1 + 116) = a8;
  return a1;
}

uint64_t sub_29AE33C38(uint64_t a1, void *a2)
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

uint64_t sub_29AE33CD0(uint64_t a1)
{
  v1 = 0;
  v95 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A219F48(v88, v3);
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
          sub_29A21A6E8(v88);
          v18 = v89;
          sub_29A21A6E8(v88);
          v19 = v89;
          v20 = *&v88[0];
          sub_29A21A6E8(a1 + 48);
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
          sub_29A4AD2D0(v88, (a1 + 48));
          v90 = 0;
          *&v82 = &v90;
          sub_29A21A48C(v88, v3, &v82);
        }

        else
        {
          sub_29A21A6E8(v88);
          v46 = v89;
          sub_29A21A6E8(v88);
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
          v93 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec2i>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
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
        v91 = &off_2A2047FA0;
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A21A6E8(v88);
          v24 = v89;
          sub_29A21A6E8(v88);
          v25 = v89;
          v26 = *&v88[0];
          sub_29A21A6E8(a1 + 48);
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
          sub_29A21A6E8(v88);
          v30 = v89;
          sub_29A21A6E8(v88);
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
          v93 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec2i>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
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

        sub_29AE34774((a1 + 88), (a1 + 96), v3, (v41 + 32), &v90, __p, (a1 + 48), *(a1 + 108), &v82);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4AD2D0(v88, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE346B8(uint64_t a1)
{
  *a1 = &unk_2A2096300;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29AE34774(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_29A219F48(a9, a3);
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
    v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
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
      sub_29A21A6E8(a9);
      v54 = a9[4];
      sub_29A21A6E8(a9);
      v55 = (a9[4] + 8 * *a9 - v54) >> 3;
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
            *(v60 - 1) = a8;
          }

          if (v61.i8[4])
          {
            *v60 = a8;
          }

          v57 += 2;
          v60 += 2;
        }

        while (v58 != v57);
      }

      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 154;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
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
            v43 = a7[4];
            sub_29A21A6E8(a9);
            *(a9[4] + 8 * v39) = *(v43 + 8 * v38);
            v44 = a7[4];
            sub_29A21A6E8(a9);
            *(a9[4] + 8 * v39 + 8) = *(v44 + 8 * v38);
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
                sub_29A21A6E8(a9);
                *(a9[4] + 8 * v39 + 16) = *(v47 + 8 * v38 + 8);
                v48 = a7[4];
                sub_29A21A6E8(a9);
                *(a9[4] + 8 * v39 + 24) = *(v48 + 8 * v38 + 8);
                v49 = a7[4];
                sub_29A21A6E8(a9);
                *(a9[4] + 8 * v39 + 32) = *(v49 + 8 * v38 + 8);
                v46 += 3;
                ++v38;
                v39 += 3;
              }

              while (v46 < v45);
              v50 = v38 + 1;
              v51 = v39 + 2;
            }

            v52 = a7[4];
            sub_29A21A6E8(a9);
            *(a9[4] + 8 * v51) = *(v52 + 8 * v50);
            v53 = a7[4];
            sub_29A21A6E8(a9);
            *(a9[4] + 8 * v51 + 8) = *(v53 + 8 * v50);
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
        v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
        v72 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "srcIndex == authoredValues.size()", 0);
      }

      if (v39 != a3)
      {
        v68 = "hdSt/basisCurvesComputations.h";
        v69 = "HdSt_ExpandVarying";
        v70 = 149;
        v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
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
          v31 = a7[4];
          sub_29A21A6E8(a9);
          *(a9[4] + 8 * v27) = *(v31 + 8 * v26);
          v32 = v27 + 1;
          if (v30 >= 4)
          {
            v33 = v30 - 3;
            do
            {
              v34 = a7[4];
              sub_29A21A6E8(a9);
              *(a9[4] + 8 * v32++) = *(v34 + 8 * v26++);
              --v33;
            }

            while (v33);
            v27 = v32 - 1;
          }

          v35 = a7[4];
          sub_29A21A6E8(a9);
          *(a9[4] + 8 * v32) = *(v35 + 8 * v26);
          v36 = a7[4];
          sub_29A21A6E8(a9);
          *(a9[4] + 8 * v27 + 16) = *(v36 + 8 * v26);
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
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
      v72 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "srcIndex == authoredValues.size()", 0);
    }

    if (v27 != a3)
    {
      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 114;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec2i]";
      v72 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE34DD0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, uint64_t a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x98uLL);
  result = sub_29AE34E74(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE34E74(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, uint64_t a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096398;
  sub_29AE34F8C(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE34F20(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2096398;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE34F8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, uint64_t a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE35020(a2, &v10, a4, a5, a6, *a7, *a8, *(a8 + 8), *a9);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE35008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE35020(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, uint64_t a7, int a8, int a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A20963E8;
  v15 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v16;
  v17 = *(a3 + 32);
  *(a1 + 80) = v17;
  if (v17)
  {
    v18 = (v17 - 16);
    if (*(a1 + 72))
    {
      v18 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v19 = *a5;
  *(a1 + 96) = *a5;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 108) = a7;
  *(a1 + 116) = a8;
  *(a1 + 120) = a9;
  return a1;
}

uint64_t sub_29AE35158(uint64_t a1, void *a2)
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

uint64_t sub_29AE351F0(uint64_t a1)
{
  v1 = 0;
  v99 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A21BE0C(v92, v3);
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
          sub_29A21C6E0(v92);
          v18 = v93;
          sub_29A21C6E0(v92);
          v19 = v93;
          v20 = *&v92[0];
          sub_29A21C6E0(a1 + 48);
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
          sub_29A4ADA28(v92, (a1 + 48));
          DWORD2(v86) = 0;
          *&v86 = 0;
          v94 = &v86;
          sub_29A21C418(v92, v3, &v94);
        }

        else
        {
          sub_29A21C6E0(v92);
          v49 = v93;
          sub_29A21C6E0(v92);
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
          v97 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec3i>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
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
        v95 = &off_2A2048110;
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A21C6E0(v92);
          v25 = v93;
          sub_29A21C6E0(v92);
          v26 = v93;
          v27 = *&v92[0];
          sub_29A21C6E0(a1 + 48);
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
          sub_29A21C6E0(v92);
          v32 = v93;
          sub_29A21C6E0(v92);
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
          v97 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec3i>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
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

        sub_29AE35D00((a1 + 88), (a1 + 96), v3, (v44 + 32), &v94, __p, (a1 + 48), &v86, *(a1 + 108), *(a1 + 116));
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4ADA28(v92, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE35C44(uint64_t a1)
{
  *a1 = &unk_2A20963E8;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29AE35D00(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>, uint64_t a9, int a10)
{
  sub_29A21BE0C(a8, a3);
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v17)
  {
    v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v17 + 57) ^ *a5) <= 7)
  {
    v98 = "hdSt/basisCurvesComputations.h";
    v99 = "HdSt_ExpandVarying";
    v100 = 86;
    v101 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
    v102 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    v20 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v20)
    {
      v21 = (v20 + 16);
      if (*(v20 + 39) < 0)
      {
        v21 = *v21;
      }
    }

    else
    {
      v21 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v98, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v19, Text, v21);
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v22)
  {
    v22 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v22 + 10) ^ *a6) < 8)
  {
    goto LABEL_68;
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v23)
  {
    v23 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v23 + 11) ^ *a6) < 8)
  {
    goto LABEL_68;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v24)
  {
    v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v24 + 7) ^ *a6) > 7)
  {
    v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v49)
    {
      v49 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v49 + 6) ^ *a6) > 7)
    {
      sub_29A21C6E0(a8);
      v86 = a8[4];
      sub_29A21C6E0(a8);
      v87 = a8[4] + 12 * *a8 - v86;
      if (v87 >= 1)
      {
        v88 = v87 / 0xCuLL + 1;
        do
        {
          *v86 = a9;
          *(v86 + 8) = a10;
          v86 += 12;
          --v88;
        }

        while (v88 > 1);
      }

      v98 = "hdSt/basisCurvesComputations.h";
      v99 = "HdSt_ExpandVarying";
      v100 = 154;
      v101 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
      v102 = 0;
      v89 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
      v91 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v91)
      {
        v92 = (v91 + 16);
        if (*(v91 + 39) < 0)
        {
          v92 = *v92;
        }
      }

      else
      {
        v92 = "";
      }

      v93 = *a6 & 0xFFFFFFFFFFFFFFF8;
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

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v98, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v90, v89, v92, v94);
    }

    else
    {
      if (*a4)
      {
        v50 = 0;
        v51 = 0;
        v52 = a4[4];
        v53 = &v52[*a4];
        v97 = v53;
        do
        {
          v54 = *v52;
          if (*v52 >= 1)
          {
            v55 = a7[4];
            sub_29A21C6E0(a8);
            v56 = (v55 + 12 * v50);
            v57 = a8[4] + 12 * v51;
            v58 = *v56;
            *(v57 + 8) = *(v56 + 2);
            *v57 = v58;
            v59 = a7[4];
            sub_29A21C6E0(a8);
            v60 = (v59 + 12 * v50);
            v61 = *v60;
            v62 = a8[4] + 12 * v51;
            *(v62 + 20) = *(v60 + 2);
            *(v62 + 12) = v61;
            v63 = v51 + 2;
            if (v54 < 5)
            {
              v77 = v50 + 1;
            }

            else
            {
              v64 = v54 - 2;
              v65 = 12 * v50 + 12;
              v66 = 12 * v51;
              v67 = 2;
              do
              {
                v68 = a7[4];
                sub_29A21C6E0(a8);
                v69 = a8[4] + v66;
                v70 = *(v68 + v65);
                *(v69 + 32) = *(v68 + v65 + 8);
                *(v69 + 24) = v70;
                v71 = a7[4];
                sub_29A21C6E0(a8);
                v72 = a8[4] + v66;
                v73 = *(v71 + v65);
                *(v72 + 44) = *(v71 + v65 + 8);
                *(v72 + 36) = v73;
                v74 = a7[4];
                sub_29A21C6E0(a8);
                v75 = a8[4] + v66;
                v76 = *(v74 + v65);
                v63 += 3;
                v67 += 3;
                *(v75 + 56) = *(v74 + v65 + 8);
                *(v75 + 48) = v76;
                ++v50;
                v65 += 12;
                v66 += 36;
              }

              while (v67 < v64);
              v77 = v50 + 1;
              v53 = v97;
            }

            v78 = a7[4];
            sub_29A21C6E0(a8);
            v79 = (v78 + 12 * v77);
            v80 = a8[4] + 12 * v63;
            v81 = *v79;
            *(v80 + 8) = *(v79 + 2);
            *v80 = v81;
            v82 = a7[4];
            sub_29A21C6E0(a8);
            v83 = (v82 + 12 * v77);
            v84 = *v83;
            v85 = a8[4] + 12 * v63;
            *(v85 + 20) = *(v83 + 2);
            *(v85 + 12) = v84;
            v51 = v63 + 2;
            v50 += 2;
          }

          ++v52;
        }

        while (v52 != v53);
      }

      else
      {
        v51 = 0;
        v50 = 0;
      }

      if (v50 != *a7)
      {
        v98 = "hdSt/basisCurvesComputations.h";
        v99 = "HdSt_ExpandVarying";
        v100 = 148;
        v101 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
        v102 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v98, "srcIndex == authoredValues.size()", 0);
      }

      if (v51 != a3)
      {
        v98 = "hdSt/basisCurvesComputations.h";
        v99 = "HdSt_ExpandVarying";
        v100 = 149;
        v101 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
        v102 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v98, "dstIndex == numVerts", 0);
      }
    }
  }

  else
  {
LABEL_68:
    if (*a4)
    {
      v25 = 0;
      v26 = 0;
      v27 = a4[4];
      v28 = &v27[*a4];
      v96 = v28;
      do
      {
        v29 = *v27;
        if (*v27 >= 1)
        {
          v30 = a7[4];
          sub_29A21C6E0(a8);
          v31 = (v30 + 12 * v25);
          v32 = *v31;
          v33 = a8[4] + 12 * v26;
          *(v33 + 8) = *(v31 + 2);
          *v33 = v32;
          if (v29 < 4)
          {
            v40 = v26 + 1;
          }

          else
          {
            v34 = 12 * v26 + 12;
            v35 = v29 - 3;
            v36 = 12 * v25;
            do
            {
              v37 = a7[4];
              sub_29A21C6E0(a8);
              v38 = a8[4] + v34;
              v39 = *(v37 + v36);
              ++v25;
              *(v38 + 8) = *(v37 + v36 + 8);
              *v38 = v39;
              ++v26;
              v34 += 12;
              v36 += 12;
              --v35;
            }

            while (v35);
            v40 = v26 + 1;
            v28 = v96;
          }

          v41 = a7[4];
          sub_29A21C6E0(a8);
          v42 = (v41 + 12 * v25);
          v43 = a8[4] + 12 * v40;
          v44 = *v42;
          *(v43 + 8) = *(v42 + 2);
          *v43 = v44;
          v45 = a7[4];
          sub_29A21C6E0(a8);
          v46 = (v45 + 12 * v25);
          v47 = *v46;
          v48 = a8[4] + 12 * v26;
          *(v48 + 32) = *(v46 + 2);
          *(v48 + 24) = v47;
          v26 += 3;
          ++v25;
        }

        ++v27;
      }

      while (v27 != v28);
    }

    else
    {
      v26 = 0;
      v25 = 0;
    }

    if (v25 != *a7)
    {
      v98 = "hdSt/basisCurvesComputations.h";
      v99 = "HdSt_ExpandVarying";
      v100 = 113;
      v101 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
      v102 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v98, "srcIndex == authoredValues.size()", 0);
    }

    if (v26 != a3)
    {
      v98 = "hdSt/basisCurvesComputations.h";
      v99 = "HdSt_ExpandVarying";
      v100 = 114;
      v101 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec3i]";
      v102 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v98, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE36424@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, uint64_t *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x98uLL);
  result = sub_29AE364C8(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE364C8(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, uint64_t *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096480;
  sub_29AE365E0(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE36574(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2096480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE365E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, uint64_t *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE36670(a2, &v10, a4, a5, a6, *a7, *a8, a8[1], *a9);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE36658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE36670(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A20964D0;
  v15 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a3 + 16);
  *(a1 + 48) = *a3;
  *(a1 + 64) = v16;
  v17 = *(a3 + 32);
  *(a1 + 80) = v17;
  if (v17)
  {
    v18 = (v17 - 16);
    if (*(a1 + 72))
    {
      v18 = *(a1 + 72);
    }

    atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
  }

  sub_29A1E21F4((a1 + 88), a4);
  sub_29A1E2240((a1 + 92), a4 + 1);
  v19 = *a5;
  *(a1 + 96) = *a5;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 96) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 104) = a6;
  *(a1 + 108) = a7;
  *(a1 + 116) = a8;
  *(a1 + 124) = a9;
  return a1;
}

uint64_t sub_29AE367AC(uint64_t a1, void *a2)
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

uint64_t sub_29AE36844(uint64_t a1)
{
  v1 = 0;
  v95 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A21DF14(v88, v3);
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
          sub_29A21E784(v88);
          v18 = v89;
          sub_29A21E784(v88);
          v19 = v89;
          v20 = *&v88[0];
          sub_29A21E784(a1 + 48);
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
          sub_29A4AE190(v88, (a1 + 48));
          v82 = 0uLL;
          v90 = &v82;
          sub_29A21E52C(v88, v3, &v90);
        }

        else
        {
          sub_29A21E784(v88);
          v46 = v89;
          sub_29A21E784(v88);
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
          v93 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec4i>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
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
        v91 = &off_2A2048280;
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
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A21E784(v88);
          v24 = v89;
          sub_29A21E784(v88);
          v25 = v89;
          v26 = *&v88[0];
          sub_29A21E784(a1 + 48);
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
          sub_29A21E784(v88);
          v30 = v89;
          sub_29A21E784(v88);
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
          v93 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<pxrInternal__aapl__pxrReserved__::GfVec4i>::Resolve() [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
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

        sub_29AE372F0((a1 + 88), (a1 + 96), v3, (v41 + 32), &v90, __p, (a1 + 48), &v82, *(a1 + 108), *(a1 + 116));
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
      }
    }

LABEL_10:
    sub_29A4AE190(v88, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE37234(uint64_t a1)
{
  *a1 = &unk_2A20964D0;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29AE372F0(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  sub_29A21DF14(a8, a3);
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v17)
  {
    v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v17 + 57) ^ *a5) <= 7)
  {
    v67 = "hdSt/basisCurvesComputations.h";
    v68 = "HdSt_ExpandVarying";
    v69 = 86;
    v70 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
    v71 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
    v20 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v20)
    {
      v21 = (v20 + 16);
      if (*(v20 + 39) < 0)
      {
        v21 = *v21;
      }
    }

    else
    {
      v21 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v67, "HdStBasisCurves(%s) - Periodic expansion hasn't been implemented; expanding primvar %s as if non-periodic.", v19, Text, v21);
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v22)
  {
    v22 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v22 + 10) ^ *a6) < 8)
  {
    goto LABEL_66;
  }

  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v23)
  {
    v23 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v23 + 11) ^ *a6) < 8)
  {
    goto LABEL_66;
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v24)
  {
    v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v24 + 7) ^ *a6) > 7)
  {
    v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v37)
    {
      v37 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v37 + 6) ^ *a6) > 7)
    {
      sub_29A21E784(a8);
      v56 = a8[4];
      sub_29A21E784(a8);
      v57 = (a8[4] + 16 * *a8 - v56) >> 4;
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

      v67 = "hdSt/basisCurvesComputations.h";
      v68 = "HdSt_ExpandVarying";
      v69 = 154;
      v70 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
      v71 = 0;
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

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v67, "HdStBasisCurves(%s) - Varying interpolation of primvar %s has unsupported basis %s, using fallback value for rendering", v60, v59, v62, v64);
    }

    else
    {
      if (*a4)
      {
        v38 = 0;
        v39 = 0;
        v40 = a4[4];
        v41 = &v40[*a4];
        v65 = v41;
        do
        {
          v42 = *v40;
          if (*v40 >= 1)
          {
            v43 = a7[4];
            sub_29A21E784(a8);
            *(a8[4] + 16 * v39) = *(v43 + 16 * v38);
            v44 = a7[4];
            sub_29A21E784(a8);
            *(a8[4] + 16 * v39 + 16) = *(v44 + 16 * v38);
            v45 = v39 + 2;
            if (v42 < 5)
            {
              v53 = v38 + 1;
            }

            else
            {
              v46 = v42 - 2;
              v47 = 16 * v38 + 16;
              v48 = 16 * v39;
              v49 = 2;
              do
              {
                v50 = a7[4];
                sub_29A21E784(a8);
                *(a8[4] + v48 + 32) = *(v50 + v47);
                v51 = a7[4];
                sub_29A21E784(a8);
                *(a8[4] + v48 + 48) = *(v51 + v47);
                v52 = a7[4];
                sub_29A21E784(a8);
                v45 += 3;
                v49 += 3;
                *(a8[4] + v48 + 64) = *(v52 + v47);
                ++v38;
                v47 += 16;
                v48 += 48;
              }

              while (v49 < v46);
              v53 = v38 + 1;
              v41 = v65;
            }

            v54 = a7[4];
            sub_29A21E784(a8);
            *(a8[4] + 16 * v45) = *(v54 + 16 * v53);
            v55 = a7[4];
            sub_29A21E784(a8);
            *(a8[4] + 16 * v45 + 16) = *(v55 + 16 * v53);
            v39 = v45 + 2;
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
        v67 = "hdSt/basisCurvesComputations.h";
        v68 = "HdSt_ExpandVarying";
        v69 = 148;
        v70 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
        v71 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v67, "srcIndex == authoredValues.size()", 0);
      }

      if (v39 != a3)
      {
        v67 = "hdSt/basisCurvesComputations.h";
        v68 = "HdSt_ExpandVarying";
        v69 = 149;
        v70 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
        v71 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v67, "dstIndex == numVerts", 0);
      }
    }
  }

  else
  {
LABEL_66:
    if (*a4)
    {
      v25 = 0;
      v26 = 0;
      v27 = a4[4];
      v28 = &v27[*a4];
      do
      {
        v29 = *v27;
        if (*v27 >= 1)
        {
          v30 = a7[4];
          sub_29A21E784(a8);
          *(a8[4] + 16 * v26) = *(v30 + 16 * v25);
          if (v29 >= 4)
          {
            v31 = 16 * v26 + 16;
            v32 = v29 - 3;
            v33 = 16 * v25;
            do
            {
              v34 = a7[4];
              sub_29A21E784(a8);
              *(a8[4] + v31) = *(v34 + v33);
              ++v25;
              ++v26;
              v31 += 16;
              v33 += 16;
              --v32;
            }

            while (v32);
          }

          v35 = a7[4];
          sub_29A21E784(a8);
          *(a8[4] + 16 * (v26 + 1)) = *(v35 + 16 * v25);
          v36 = a7[4];
          sub_29A21E784(a8);
          *(a8[4] + 16 * v26 + 32) = *(v36 + 16 * v25);
          v26 += 3;
          ++v25;
        }

        ++v27;
      }

      while (v27 != v28);
    }

    else
    {
      v26 = 0;
      v25 = 0;
    }

    if (v25 != *a7)
    {
      v67 = "hdSt/basisCurvesComputations.h";
      v68 = "HdSt_ExpandVarying";
      v69 = 113;
      v70 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
      v71 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v67, "srcIndex == authoredValues.size()", 0);
    }

    if (v26 != a3)
    {
      v67 = "hdSt/basisCurvesComputations.h";
      v68 = "HdSt_ExpandVarying";
      v69 = 114;
      v70 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = pxrInternal__aapl__pxrReserved__::GfVec4i]";
      v71 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v67, "dstIndex == numVerts", 0);
    }
  }
}

void **sub_29AE37930(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AD659D8(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AE379C4, &stru_2A2042458);
  }
}

double sub_29AE379C4@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x28uLL);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  *a1 = v2;
  a1[1] = sub_29AE37A14;
  a1[2] = &stru_2A2042458;
  return result;
}

uint64_t sub_29AE37A14(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
  }

  return result;
}

void *sub_29AE37A60@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, __int16 *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x90uLL);
  result = sub_29AE37B04(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE37B04(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, __int16 *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096568;
  sub_29AE37C1C(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE37BB0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2096568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE37C1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, __int16 *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE37CA8(a2, &v10, a4, a5, a6, *a7, *a8, *a9);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE37C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE37CA8(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, __int16 a7, int a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A20965B8;
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

uint64_t sub_29AE37DD4(uint64_t a1, void *a2)
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

uint64_t sub_29AE37E6C(uint64_t a1)
{
  v1 = 0;
  v123 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29AC83134(v116, v3);
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
          sub_29AC83A44(v116);
          v18 = v117;
          sub_29AC83A44(v116);
          v19 = v117;
          v20 = *&v116[0];
          sub_29AC83A44(a1 + 48);
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
          sub_29AE38D20(v116, (a1 + 48));
          LOWORD(v118) = 0;
          *&v110 = &v118;
          sub_29AC834AC(v116, v3, &v110);
        }

        else
        {
          sub_29AC83A44(v116);
          v66 = v117;
          sub_29AC83A44(v116);
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
          v105 = MEMORY[0x29C2C1F10](v104, *(a1 + 108));
          sub_29A00911C(v105, " for rendering.", 15);
          v118 = "hdSt/basisCurvesComputations.h";
          v119 = "Resolve";
          v120 = 233;
          v121 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<short>::Resolve() [T = short]";
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
        v119 = &off_2A207D940;
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
        pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29AC83A44(v116);
          v30 = v117;
          sub_29AC83A44(v116);
          v31 = v117;
          v32 = *&v116[0];
          sub_29AC83A44(a1 + 48);
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
          sub_29AC83A44(v116);
          v42 = v117;
          sub_29AC83A44(v116);
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
          v93 = MEMORY[0x29C2C1F10](v92, *(a1 + 108));
          sub_29A00911C(v93, " for rendering.", 15);
          v118 = "hdSt/basisCurvesComputations.h";
          v119 = "Resolve";
          v120 = 271;
          v121 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<short>::Resolve() [T = short]";
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

        sub_29AE38DD4((a1 + 88), (a1 + 96), v3, (v61 + 32), &v118, __p, (a1 + 48), *(a1 + 108), &v110);
        pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
      }
    }

LABEL_10:
    sub_29AE38D20(v116, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE38C64(uint64_t a1)
{
  *a1 = &unk_2A20965B8;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
}

__int128 *sub_29AE38D20(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != result)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
  }

  return result;
}

void sub_29AE38DD4(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, __int16 a8@<W7>, void *a9@<X8>)
{
  sub_29AC83134(a9, a3);
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
    v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = short]";
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
      sub_29AC83A44(a9);
      v54 = a9[4];
      sub_29AC83A44(a9);
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
      v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = short]";
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
            v43 = *(a7[4] + 2 * v38);
            sub_29AC83A44(a9);
            *(a9[4] + 2 * v39) = v43;
            v44 = *(a7[4] + 2 * v38);
            sub_29AC83A44(a9);
            *(a9[4] + 2 * v39 + 2) = v44;
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
                v47 = *(a7[4] + 2 * v38 + 2);
                sub_29AC83A44(a9);
                *(a9[4] + 2 * v39 + 4) = v47;
                v48 = *(a7[4] + 2 * v38 + 2);
                sub_29AC83A44(a9);
                *(a9[4] + 2 * v39 + 6) = v48;
                v49 = *(a7[4] + 2 * v38 + 2);
                sub_29AC83A44(a9);
                *(a9[4] + 2 * v39 + 8) = v49;
                v46 += 3;
                ++v38;
                v39 += 3;
              }

              while (v46 < v45);
              v50 = v38 + 1;
              v51 = v39 + 2;
            }

            v52 = *(a7[4] + 2 * v50);
            sub_29AC83A44(a9);
            *(a9[4] + 2 * v51) = v52;
            v53 = *(a7[4] + 2 * v50);
            sub_29AC83A44(a9);
            *(a9[4] + 2 * v51 + 2) = v53;
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
        v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = short]";
        v74 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "srcIndex == authoredValues.size()", 0);
      }

      if (v39 != a3)
      {
        v70 = "hdSt/basisCurvesComputations.h";
        v71 = "HdSt_ExpandVarying";
        v72 = 149;
        v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = short]";
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
          v31 = *(a7[4] + 2 * v26);
          sub_29AC83A44(a9);
          *(a9[4] + 2 * v27) = v31;
          v32 = v27 + 1;
          if (v30 >= 4)
          {
            v33 = v30 - 3;
            do
            {
              v34 = *(a7[4] + 2 * v26);
              sub_29AC83A44(a9);
              *(a9[4] + 2 * v32) = v34;
              ++v26;
              ++v32;
              --v33;
            }

            while (v33);
            v27 = v32 - 1;
          }

          v35 = *(a7[4] + 2 * v26);
          sub_29AC83A44(a9);
          *(a9[4] + 2 * v32) = v35;
          v36 = *(a7[4] + 2 * v26);
          sub_29AC83A44(a9);
          *(a9[4] + 2 * v27 + 4) = v36;
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
      v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = short]";
      v74 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "srcIndex == authoredValues.size()", 0);
    }

    if (v27 != a3)
    {
      v70 = "hdSt/basisCurvesComputations.h";
      v71 = "HdSt_ExpandVarying";
      v72 = 114;
      v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = short]";
      v74 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE394F4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, __int16 *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x90uLL);
  result = sub_29AE39598(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE39598(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, __int16 *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096650;
  sub_29AE396B0(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE39644(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2096650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE396B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, __int16 *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE3973C(a2, &v10, a4, a5, a6, *a7, *a8, *a9);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE39724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE3973C(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, __int16 a7, int a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A20966A0;
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

uint64_t sub_29AE39868(uint64_t a1, void *a2)
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

uint64_t sub_29AE39900(uint64_t a1)
{
  v1 = 0;
  v123 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A19BBD0(v116, v3);
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
          sub_29A19C344(v116);
          v18 = v117;
          sub_29A19C344(v116);
          v19 = v117;
          v20 = *&v116[0];
          sub_29A19C344(a1 + 48);
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
          sub_29AE3A7B4(v116, (a1 + 48));
          LOWORD(v118) = 0;
          *&v110 = &v118;
          sub_29A19BDAC(v116, v3, &v110);
        }

        else
        {
          sub_29A19C344(v116);
          v66 = v117;
          sub_29A19C344(v116);
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
          v105 = MEMORY[0x29C2C1F20](v104, *(a1 + 108));
          sub_29A00911C(v105, " for rendering.", 15);
          v118 = "hdSt/basisCurvesComputations.h";
          v119 = "Resolve";
          v120 = 233;
          v121 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<unsigned short>::Resolve() [T = unsigned short]";
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
        v119 = &off_2A2043BA8;
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
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A19C344(v116);
          v30 = v117;
          sub_29A19C344(v116);
          v31 = v117;
          v32 = *&v116[0];
          sub_29A19C344(a1 + 48);
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
          sub_29A19C344(v116);
          v42 = v117;
          sub_29A19C344(v116);
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
          v93 = MEMORY[0x29C2C1F20](v92, *(a1 + 108));
          sub_29A00911C(v93, " for rendering.", 15);
          v118 = "hdSt/basisCurvesComputations.h";
          v119 = "Resolve";
          v120 = 271;
          v121 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<unsigned short>::Resolve() [T = unsigned short]";
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

        sub_29AE3A868((a1 + 88), (a1 + 96), v3, (v61 + 32), &v118, __p, (a1 + 48), *(a1 + 108), &v110);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
      }
    }

LABEL_10:
    sub_29AE3A7B4(v116, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE3A6F8(uint64_t a1)
{
  *a1 = &unk_2A20966A0;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

__int128 *sub_29AE3A7B4(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = a2[1];
    v5 = *a2;
    v6 = v2;
    v3 = *(a2 + 4);
    v7 = v3;
    if (v3)
    {
      v4 = (v3 - 16);
      if (*(&v6 + 1))
      {
        v4 = *(&v6 + 1);
      }

      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
    }

    if (&v5 != result)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
  }

  return result;
}

void sub_29AE3A868(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, __int16 a8@<W7>, void *a9@<X8>)
{
  sub_29A19BBD0(a9, a3);
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
    v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned short]";
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
      sub_29A19C344(a9);
      v54 = a9[4];
      sub_29A19C344(a9);
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
      v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned short]";
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
            v43 = *(a7[4] + 2 * v38);
            sub_29A19C344(a9);
            *(a9[4] + 2 * v39) = v43;
            v44 = *(a7[4] + 2 * v38);
            sub_29A19C344(a9);
            *(a9[4] + 2 * v39 + 2) = v44;
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
                v47 = *(a7[4] + 2 * v38 + 2);
                sub_29A19C344(a9);
                *(a9[4] + 2 * v39 + 4) = v47;
                v48 = *(a7[4] + 2 * v38 + 2);
                sub_29A19C344(a9);
                *(a9[4] + 2 * v39 + 6) = v48;
                v49 = *(a7[4] + 2 * v38 + 2);
                sub_29A19C344(a9);
                *(a9[4] + 2 * v39 + 8) = v49;
                v46 += 3;
                ++v38;
                v39 += 3;
              }

              while (v46 < v45);
              v50 = v38 + 1;
              v51 = v39 + 2;
            }

            v52 = *(a7[4] + 2 * v50);
            sub_29A19C344(a9);
            *(a9[4] + 2 * v51) = v52;
            v53 = *(a7[4] + 2 * v50);
            sub_29A19C344(a9);
            *(a9[4] + 2 * v51 + 2) = v53;
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
        v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned short]";
        v74 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "srcIndex == authoredValues.size()", 0);
      }

      if (v39 != a3)
      {
        v70 = "hdSt/basisCurvesComputations.h";
        v71 = "HdSt_ExpandVarying";
        v72 = 149;
        v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned short]";
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
          v31 = *(a7[4] + 2 * v26);
          sub_29A19C344(a9);
          *(a9[4] + 2 * v27) = v31;
          v32 = v27 + 1;
          if (v30 >= 4)
          {
            v33 = v30 - 3;
            do
            {
              v34 = *(a7[4] + 2 * v26);
              sub_29A19C344(a9);
              *(a9[4] + 2 * v32) = v34;
              ++v26;
              ++v32;
              --v33;
            }

            while (v33);
            v27 = v32 - 1;
          }

          v35 = *(a7[4] + 2 * v26);
          sub_29A19C344(a9);
          *(a9[4] + 2 * v32) = v35;
          v36 = *(a7[4] + 2 * v26);
          sub_29A19C344(a9);
          *(a9[4] + 2 * v27 + 4) = v36;
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
      v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned short]";
      v74 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "srcIndex == authoredValues.size()", 0);
    }

    if (v27 != a3)
    {
      v70 = "hdSt/basisCurvesComputations.h";
      v71 = "HdSt_ExpandVarying";
      v72 = 114;
      v73 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned short]";
      v74 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE3AF88@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, uint64_t *a4@<X4>, int *a5@<X5>, int *a6@<X6>, int *a7@<X7>, void *a8@<X8>)
{
  v16 = operator new(0x90uLL);
  result = sub_29AE3B02C(v16, a1, a2, a3, a4, a5, a6, a7);
  *a8 = v16 + 3;
  a8[1] = v16;
  return result;
}

void *sub_29AE3B02C(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int *a6, int *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096738;
  sub_29AE3B144(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_29AE3B0D8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2096738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE3B144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int *a7, int *a8, int *a9)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE3B1D0(a2, &v10, a4, a5, a6, *a7, *a8, *a9);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AE3B1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE3B1D0(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, int a6, int a7, int a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A2096788;
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

uint64_t sub_29AE3B2F8(uint64_t a1, void *a2)
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

uint64_t sub_29AE3B390(uint64_t a1)
{
  v1 = 0;
  v117 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong((a1 + 8), &v1, 1u);
  if (!v1)
  {
    v3 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfControlPoints(*(a1 + 32));
    sub_29A19C954(v110, v3);
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
          sub_29A19CEF8(v110);
          v18 = v111;
          sub_29A19CEF8(v110);
          v19 = v111;
          v20 = *&v110[0];
          sub_29A19CEF8(a1 + 48);
          v21 = (v19 + 4 * v20 - v18) >> 2;
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = **(a1 + 80);
            v24 = vdupq_n_s64(v21 - 1);
            v25 = (v21 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v26 = (v18 + 8);
            do
            {
              v27 = vdupq_n_s64(v22);
              v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B430070)));
              if (vuzp1_s16(v28, *v24.i8).u8[0])
              {
                *(v26 - 2) = v23;
              }

              if (vuzp1_s16(v28, *&v24).i8[2])
              {
                *(v26 - 1) = v23;
              }

              if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_29B433E10)))).i32[1])
              {
                *v26 = v23;
                v26[1] = v23;
              }

              v22 += 4;
              v26 += 4;
            }

            while (v25 != v22);
          }
        }

        else if (v4 > v3 && *(*(a1 + 32) + 72))
        {
          sub_29A27EC40(v110, (a1 + 48));
          LODWORD(v112) = 0;
          *&v104 = &v112;
          sub_29A19CAF8(v110, v3, &v104);
        }

        else
        {
          sub_29A19CEF8(v110);
          v62 = v111;
          sub_29A19CEF8(v110);
          v63 = (v111 + 4 * *&v110[0] - v62) >> 2;
          if (v63 >= 1)
          {
            v64 = 0;
            v65 = *(a1 + 108);
            v66 = vdupq_n_s64(v63 - 1);
            v67 = (v63 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v68 = (v62 + 8);
            do
            {
              v69 = vdupq_n_s64(v64);
              v70 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v69, xmmword_29B430070)));
              if (vuzp1_s16(v70, *v66.i8).u8[0])
              {
                *(v68 - 2) = v65;
              }

              if (vuzp1_s16(v70, *&v66).i8[2])
              {
                *(v68 - 1) = v65;
              }

              if (vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v69, xmmword_29B433E10)))).i32[1])
              {
                *v68 = v65;
                v68[1] = v65;
              }

              v64 += 4;
              v68 += 4;
            }

            while (v67 != v64);
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
          v99 = MEMORY[0x29C2C1EE0](v98, *(a1 + 108));
          sub_29A00911C(v99, " for rendering.", 15);
          v112 = "hdSt/basisCurvesComputations.h";
          v113 = "Resolve";
          v114 = 233;
          v115 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<unsigned int>::Resolve() [T = unsigned int]";
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
        v113 = &off_2A2043C60;
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
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
      }

      v14 = pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::CalculateNeededNumberOfVaryingControlPoints(*(a1 + 32));
      if (v4 != v14)
      {
        if (v4 == 1)
        {
          sub_29A19CEF8(v110);
          v29 = v111;
          sub_29A19CEF8(v110);
          v30 = v111;
          v31 = *&v110[0];
          sub_29A19CEF8(a1 + 48);
          v32 = (v30 + 4 * v31 - v29) >> 2;
          if (v32 >= 1)
          {
            v33 = 0;
            v34 = **(a1 + 80);
            v35 = vdupq_n_s64(v32 - 1);
            v36 = (v32 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v37 = (v29 + 8);
            do
            {
              v38 = vdupq_n_s64(v33);
              v39 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B430070)));
              if (vuzp1_s16(v39, *v35.i8).u8[0])
              {
                *(v37 - 2) = v34;
              }

              if (vuzp1_s16(v39, *&v35).i8[2])
              {
                *(v37 - 1) = v34;
              }

              if (vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v38, xmmword_29B433E10)))).i32[1])
              {
                *v37 = v34;
                v37[1] = v34;
              }

              v33 += 4;
              v37 += 4;
            }

            while (v36 != v33);
          }
        }

        else
        {
          sub_29A19CEF8(v110);
          v40 = v111;
          sub_29A19CEF8(v110);
          v41 = (v111 + 4 * *&v110[0] - v40) >> 2;
          if (v41 >= 1)
          {
            v42 = 0;
            v43 = *(a1 + 108);
            v44 = vdupq_n_s64(v41 - 1);
            v45 = (v41 + 3) & 0x7FFFFFFFFFFFFFFCLL;
            v46 = (v40 + 8);
            do
            {
              v47 = vdupq_n_s64(v42);
              v48 = vmovn_s64(vcgeq_u64(v44, vorrq_s8(v47, xmmword_29B430070)));
              if (vuzp1_s16(v48, *v44.i8).u8[0])
              {
                *(v46 - 2) = v43;
              }

              if (vuzp1_s16(v48, *&v44).i8[2])
              {
                *(v46 - 1) = v43;
              }

              if (vuzp1_s16(*&v44, vmovn_s64(vcgeq_u64(v44, vorrq_s8(v47, xmmword_29B433E10)))).i32[1])
              {
                *v46 = v43;
                v46[1] = v43;
              }

              v42 += 4;
              v46 += 4;
            }

            while (v45 != v42);
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
          v87 = MEMORY[0x29C2C1EE0](v86, *(a1 + 108));
          sub_29A00911C(v87, " for rendering.", 15);
          v112 = "hdSt/basisCurvesComputations.h";
          v113 = "Resolve";
          v114 = 271;
          v115 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesPrimvarInterpolaterComputation<unsigned int>::Resolve() [T = unsigned int]";
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

        sub_29AE3C024((a1 + 88), (a1 + 96), v3, (v57 + 32), &v112, __p, (a1 + 48), *(a1 + 108), &v104);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
      }
    }

LABEL_10:
    sub_29A27EC40(v110, (a1 + 48));
    goto LABEL_11;
  }

  return 0;
}

void sub_29AE3BF68(uint64_t a1)
{
  *a1 = &unk_2A2096788;
  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 92));
  sub_29A1DE3A4((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29AE3C024(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, int a8@<W7>, void *a9@<X8>)
{
  sub_29A19C954(a9, a3);
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
    v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned int]";
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
      sub_29A19CEF8(a9);
      v54 = a9[4];
      sub_29A19CEF8(a9);
      v55 = (a9[4] + 4 * *a9 - v54) >> 2;
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
            *(v59 - 2) = a8;
          }

          if (vuzp1_s16(v61, *&v57).i8[2])
          {
            *(v59 - 1) = a8;
          }

          if (vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, vorrq_s8(v60, xmmword_29B433E10)))).i32[1])
          {
            *v59 = a8;
            v59[1] = a8;
          }

          v56 += 4;
          v59 += 4;
        }

        while (v58 != v56);
      }

      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 154;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned int]";
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
            sub_29A19CEF8(a9);
            *(a9[4] + 4 * v39) = v43;
            v44 = *(a7[4] + 4 * v38);
            sub_29A19CEF8(a9);
            *(a9[4] + 4 * v39 + 4) = v44;
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
                sub_29A19CEF8(a9);
                *(a9[4] + 4 * v39 + 8) = v47;
                v48 = *(a7[4] + 4 * v38 + 4);
                sub_29A19CEF8(a9);
                *(a9[4] + 4 * v39 + 12) = v48;
                v49 = *(a7[4] + 4 * v38 + 4);
                sub_29A19CEF8(a9);
                *(a9[4] + 4 * v39 + 16) = v49;
                v46 += 3;
                ++v38;
                v39 += 3;
              }

              while (v46 < v45);
              v50 = v38 + 1;
              v51 = v39 + 2;
            }

            v52 = *(a7[4] + 4 * v50);
            sub_29A19CEF8(a9);
            *(a9[4] + 4 * v51) = v52;
            v53 = *(a7[4] + 4 * v50);
            sub_29A19CEF8(a9);
            *(a9[4] + 4 * v51 + 4) = v53;
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
        v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned int]";
        v72 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "srcIndex == authoredValues.size()", 0);
      }

      if (v39 != a3)
      {
        v68 = "hdSt/basisCurvesComputations.h";
        v69 = "HdSt_ExpandVarying";
        v70 = 149;
        v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned int]";
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
          sub_29A19CEF8(a9);
          *(a9[4] + 4 * v27) = v31;
          v32 = v27 + 1;
          if (v30 >= 4)
          {
            v33 = v30 - 3;
            do
            {
              v34 = *(a7[4] + 4 * v26);
              sub_29A19CEF8(a9);
              *(a9[4] + 4 * v32) = v34;
              ++v26;
              ++v32;
              --v33;
            }

            while (v33);
            v27 = v32 - 1;
          }

          v35 = *(a7[4] + 4 * v26);
          sub_29A19CEF8(a9);
          *(a9[4] + 4 * v32) = v35;
          v36 = *(a7[4] + 4 * v26);
          sub_29A19CEF8(a9);
          *(a9[4] + 4 * v27 + 8) = v36;
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
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned int]";
      v72 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "srcIndex == authoredValues.size()", 0);
    }

    if (v27 != a3)
    {
      v68 = "hdSt/basisCurvesComputations.h";
      v69 = "HdSt_ExpandVarying";
      v70 = 114;
      v71 = "VtArray<T> pxrInternal__aapl__pxrReserved__::HdSt_ExpandVarying(const SdfPath &, const TfToken &, size_t, const VtIntArray &, const TfToken &, const TfToken &, const VtArray<T> &, const T) [T = unsigned int]";
      v72 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v68, "dstIndex == numVerts", 0);
    }
  }
}

void *sub_29AE3C6BC@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  result = sub_29AE3C708(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29AE3C708(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096820;
  pxrInternal__aapl__pxrReserved__::HdRepr::HdRepr((a1 + 3));
  return a1;
}

void sub_29AE3C784(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2096820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE3C7D4(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29AE3C864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE3C87C(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29AE3C90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStBindingRequest::ComputeHash(pxrInternal__aapl__pxrReserved__::HdStBindingRequest *this)
{
  v2 = 0;
  v3 = 0;
  sub_29AE3CA38(&v2, this + 1, this, this + 1, this + 48);
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

uint64_t sub_29AE3CA38(uint64_t a1, void *a2, unsigned int *a3, int *a4, unsigned __int8 *a5)
{
  v5 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_29AE3CA78(a1, a3, a4, a5);
}

uint64_t sub_29AE3CA78(uint64_t a1, unsigned int *a2, int *a3, unsigned __int8 *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29A217FB8(a1, a3, a4);
}

void *pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::HdStBufferArrayRange(void *a1, uint64_t a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdBufferArrayRange::HdBufferArrayRange(a1);
  *result = &unk_2A2096870;
  result[1] = a2;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::GetBufferSpecs(uint64_t a1, void *a2)
{
  result = (*(*a1 + 176))(a1);
  v4 = result[1];
  v13 = *result;
  for (i = v4; v13 != i; result = sub_29ADF30FC(&v13))
  {
    v5 = *sub_29ADF30C4(&v13);
    v6 = *(*sub_29ADF30C4(&v13) + 8);
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v9 = a2[1];
    if (v9 >= a2[2])
    {
      v11 = sub_29AE03FE4(a2, v5, &v12);
    }

    else
    {
      v10 = *v5;
      *v9 = *v5;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v9 &= 0xFFFFFFFFFFFFFFF8;
      }

      v9[1] = v7;
      v9[2] = v8;
      v11 = (v9 + 3);
    }

    a2[1] = v11;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::GetResourceRegistry(pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange *this)
{
  return *(this + 1);
}

{
  return *(this + 1);
}

void pxrInternal__aapl__pxrReserved__::HdStBufferArrayRangeContainer::Set(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    v14[0] = "hdSt/bufferArrayRange.cpp";
    v14[1] = "Set";
    v14[2] = 64;
    v14[3] = "void pxrInternal__aapl__pxrReserved__::HdStBufferArrayRangeContainer::Set(int, const HdStBufferArrayRangeSharedPtr &)";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v14, 1, "Index negative in HdStBufferArrayRangeContainer::Set()");
  }

  else
  {
    v6 = a2;
    v7 = *a1;
    if (a2 >= ((a1[1] - *a1) >> 4))
    {
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

      pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v8, (v9 + 32));
      sub_29ABC6184(a1, a2 + 1);
      v7 = *a1;
    }

    v10 = (v7 + 16 * v6);
    v12 = *a3;
    v11 = a3[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v10[1];
    *v10 = v12;
    v10[1] = v11;
    if (v13)
    {

      sub_29A014BEC(v13);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::HdStBufferArrayRangeContainer::Get(pxrInternal__aapl__pxrReserved__::HdStBufferArrayRangeContainer *this, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0 && a2 < ((*(this + 1) - *this) >> 4))
  {
    return (*this + 16 * a2);
  }

  if (atomic_load_explicit(&qword_2A174EF48, memory_order_acquire))
  {
    return &unk_2A174EF50;
  }

  v5[1] = v2;
  v5[2] = v3;
  sub_29B2C9E74(v5);
  return v5[0];
}

uint64_t sub_29AE3CDF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStBufferResource::HdStBufferResource(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v6 = *a2;
  *(result + 24) = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 52) = a6;
  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v6 = *a2;
  *(result + 24) = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 52) = a6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStBufferResource::~HdStBufferResource(pxrInternal__aapl__pxrReserved__::HdStBufferResource *this)
{
  v1 = *(this + 3);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v1 = *(this + 3);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

__n128 pxrInternal__aapl__pxrReserved__::HdStBufferResource::SetAllocation(__n128 *a1, __n128 *a2, unint64_t a3)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a3;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::HdStBufferArrayRegistry(pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry *this)
{
  return sub_29AE3DF64(this, 8uLL, &v2);
}

{
  return sub_29AE3DF64(this, 8uLL, &v2);
}

void pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::AllocateRange(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unsigned int a5@<W4>, void *a6@<X8>)
{
  v39 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v30, "hdSt", "HdBufferArrayRangeSharedPtr pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::AllocateRange(HdStAggregationStrategy *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint)");
  if (!a2)
  {
    __lk.__m_ = "hdSt/bufferArrayRegistry.cpp";
    *&__lk.__owns_ = "AllocateRange";
    *&v33 = 30;
    *(&v33 + 1) = "HdBufferArrayRangeSharedPtr pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::AllocateRange(HdStAggregationStrategy *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint)";
    LOBYTE(v34) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__lk, 1, "Aggregation strategy is set to null");
    goto LABEL_8;
  }

  if (*a4 == a4[1])
  {
LABEL_8:
    *a6 = 0;
    a6[1] = 0;
    goto LABEL_36;
  }

  v29 = (*(*a2 + 32))(a2, a4, a5);
  sub_29AE3E194(a1, &v29, &v28);
  v10 = v28;
  if (v28 != __PAIR128__(a1 + 16, 0))
  {
    v13 = (v28 + 16);
    goto LABEL_10;
  }

  __lk.__m_ = &__lk;
  *&__lk.__owns_ = &__lk;
  v33 = xmmword_29B70E3D0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  v38.__cv_.__sig = 1018212795;
  memset(v38.__cv_.__opaque, 0, sizeof(v38.__cv_.__opaque));
  sub_29AE3D3CC(a1, &v29, &v26);
  v28 = v26;
  v11 = v27;
  std::condition_variable::~condition_variable(&v38);
  std::mutex::~mutex((&v33 + 8));
  sub_29AA89BB0(&__lk);
  v10 = v28;
  v13 = (v28 + 16);
  if (v11 != 1)
  {
LABEL_10:
    __lk.__m_ = (v10 + 40);
    __lk.__owns_ = 1;
    std::mutex::lock((v10 + 40));
    while (!*(v10 + 32))
    {
      std::condition_variable::wait((v10 + 104), &__lk);
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    goto LABEL_15;
  }

  __lk.__m_ = 0;
  *&__lk.__owns_ = 0;
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::_InsertNewBufferArray(v12, (v28 + 16), &__lk, a2, a3, a4, a5);
  if (*&__lk.__owns_)
  {
    sub_29A014BEC(*&__lk.__owns_);
  }

LABEL_15:
  (*(*a2 + 24))(&v26, a2);
  v14 = 0;
  v15 = *(v10 + 24);
  do
  {
    v16 = v15[2];
    v17 = v15[3];
    v25[0] = v16;
    v25[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = pxrInternal__aapl__pxrReserved__::HdBufferArray::TryAssignRange(v16, &v26);
    if (v18)
    {
      v20 = v15;
    }

    else
    {
      v20 = v15[1];
      if (v20 == v13)
      {
        pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::_InsertNewBufferArray(v18, v13, v25, a2, a3, a4, a5);
        v20 = v15[1];
      }
    }

    if (v14 >= 0x64)
    {
      __lk.__m_ = "hdSt/bufferArrayRegistry.cpp";
      *&__lk.__owns_ = "AllocateRange";
      *&v33 = 113;
      *(&v33 + 1) = "HdBufferArrayRangeSharedPtr pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::AllocateRange(HdStAggregationStrategy *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint)";
      LOBYTE(v34) = 0;
      v21 = **a4 & 0xFFFFFFFFFFFFFFF8;
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

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__lk, "Too many iterations in attempting to assign range containing buffer %s, likely due to invalid buffer array size.", v19, v22);
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (++v14 == 101)
    {
      break;
    }

    v15 = v20;
  }

  while (!(*(*v26 + 24))(v26));
  if ((*(*v26 + 24))(v26))
  {
    *a6 = v26;
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    if (*(&v26 + 1))
    {
      sub_29A014BEC(*(&v26 + 1));
    }
  }

LABEL_36:
  if (v30)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v31, v30);
  }
}

void sub_29AE3D33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_29A014BEC(a25);
  }

  sub_29A0E9CEC(&a22);
  _Unwind_Resume(a1);
}

void sub_29AE3D3CC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = tbb::internal::allocate_via_handler_v3(0xA0);
  v7 = *a2;
  *(v6 + 16) = v6 + 16;
  *(v6 + 24) = v6 + 16;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 32) = xmmword_29B70E3D0;
  *(v6 + 48) = 0u;
  *(v6 + 96) = 0;
  *(v6 + 104) = 1018212795;
  *(v6 + 144) = 0;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 8) = v7;

  sub_29AE3E4BC(a1, (v6 + 8), v6, a3);
}

uint64_t sub_29AE3D45C(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  sub_29AA89BB0(a1);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::_InsertNewBufferArray(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  std::mutex::lock((a2 + 3));
  if (!a2[2])
  {
    if (*a3)
    {
      *&v15 = "hdSt/bufferArrayRegistry.cpp";
      *(&v15 + 1) = "_InsertNewBufferArray";
      v16 = 261;
      v17 = "void pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::_InsertNewBufferArray(_Entry &, const HdBufferArraySharedPtr &, HdStAggregationStrategy *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint)";
      v18 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "!expectedTail", 0);
    }

    goto LABEL_8;
  }

  if (*(*a2 + 16) == *a3)
  {
LABEL_8:
    (*(*a4 + 16))(&v15, a4, a5, a6, a7);
    v13 = operator new(0x20uLL);
    v13[1] = v15;
    v14 = *a2;
    *v13 = *a2;
    *(v13 + 1) = a2;
    *(v14 + 8) = v13;
    *a2 = v13;
    ++a2[2];
    std::mutex::unlock((a2 + 3));
    std::condition_variable::notify_all((a2 + 11));
    return;
  }

  std::mutex::unlock((a2 + 3));
}

void pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::ReallocateAll(pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry *this, pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    while ((v2[19] & 1) == 0)
    {
      v2 = *v2;
      if (!v2)
      {
        return;
      }
    }

LABEL_5:
    v4 = v2 + 2;
    v5 = v2[3];
    while (v5 != v4)
    {
      v7 = v5 + 2;
      v6 = v5[2];
      if (*(v6 + 24) == 1)
      {
        pxrInternal__aapl__pxrReserved__::HdBufferArray::RemoveUnusedRanges(v6);
        v8 = (*(**v7 + 32))();
        v9 = atomic_load((*v7 + 56));
        v25 = 0;
        v26 = 0;
        v27 = 0;
        sub_29A039314(&v25, v9);
        if (v9)
        {
          v10 = 0;
          for (i = 0; i != v9; ++i)
          {
            pxrInternal__aapl__pxrReserved__::HdBufferArray::GetRange(*v7, i, &v20);
            v24 = 0uLL;
            if (*(&v20 + 1))
            {
              *(&v24 + 1) = std::__shared_weak_count::lock(*(&v20 + 1));
              if (*(&v24 + 1))
              {
                *&v24 = v20;
              }

              if (*(&v20 + 1))
              {
                std::__shared_weak_count::__release_weak(*(&v20 + 1));
              }

              if (v24)
              {
                v12 = (*(*v24 + 88))(v24);
                v14 = v12;
                if (v12 > v8)
                {
                  *&v20 = "hdSt/bufferArrayRegistry.cpp";
                  *(&v20 + 1) = "ReallocateAll";
                  v21 = 163;
                  v22 = "void pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::ReallocateAll(HdStAggregationStrategy *)";
                  v23 = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v20, "Number of elements in the buffer array range (0x%lx) is _larger_ than the maximum number of elements in the buffer array (0x%lx). 0x%lx bytes of data will be skipped.", v13, v12, v8, v12 - v8);
                  (*(*v24 + 48))(v24, v8);
                }

                if (v14 + v10 > v8)
                {
                  (*(*a2 + 40))(&v20, a2, v5 + 2);
                  (*(*a2 + 16))(&v18, a2, *v7 + 128, &v20, *(*v7 + 160));
                  (*v18)[3](v18, &v25, (v5 + 2));
                  sub_29AE3D9D0((v2 + 2), v5, &v18);
                  v15 = v25;
                  for (j = v26; j != v15; j -= 16)
                  {
                    v17 = *(j - 1);
                    if (v17)
                    {
                      sub_29A014BEC(v17);
                    }
                  }

                  v26 = v15;
                  if (v19)
                  {
                    sub_29A014BEC(v19);
                  }

                  v18 = &v20;
                  sub_29ABC6FA0(&v18);
                  v10 = 0;
                }

                sub_29A017F80(&v25, &v24);
                v10 += v14;
              }
            }

            if (*(&v24 + 1))
            {
              sub_29A014BEC(*(&v24 + 1));
            }
          }
        }

        (*(**v7 + 24))(*v7, &v25, v5 + 2);
        *&v20 = &v25;
        sub_29A0176E4(&v20);
      }

      v5 = v5[1];
      v4 = v2 + 2;
    }

    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2[19])
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_29AE3D968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a15 = &a22;
  sub_29A0176E4(&a15);
  _Unwind_Resume(a1);
}

void *sub_29AE3D9D0(uint64_t a1, uint64_t *a2, void *a3)
{
  result = operator new(0x20uLL);
  v7 = a3[1];
  result[2] = *a3;
  result[3] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a2;
  *(v8 + 8) = result;
  *result = v8;
  *a2 = result;
  result[1] = a2;
  ++*(a1 + 16);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GarbageCollect(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    v2 = this;
    while ((*(v1 + 152) & 1) == 0)
    {
      v1 = *v1;
      if (!v1)
      {
        return this;
      }
    }

    v3 = this + 16;
    v4 = this + 16;
    while (1)
    {
      while (1)
      {
        v5 = *(v1 + 24);
        while (v5 != v1 + 16)
        {
          this = (*(**(v5 + 16) + 16))(*(v5 + 16));
          if (this)
          {
            this = sub_29AE3DB38(v1 + 16, v5);
            v5 = this;
          }

          else
          {
            v5 = *(v5 + 8);
          }
        }

        if (!*(v1 + 32))
        {
          break;
        }

        do
        {
          v1 = *v1;
        }

        while (v1 && (*(v1 + 152) & 1) == 0);
        if (!v1)
        {
          goto LABEL_18;
        }
      }

      this = sub_29AE3E688(v2, v1, v4, v6);
      v1 = v6[0];
      v4 = v6[1];
      if (!v6[0])
      {
LABEL_18:
        if (v4 == v3)
        {
          return this;
        }
      }
    }
  }

  return this;
}

void *sub_29AE3DB38(uint64_t a1, uint64_t *__p)
{
  v3 = *__p;
  v4 = __p[1];
  *(v3 + 8) = v4;
  *v4 = v3;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  operator delete(__p);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::GetResourceAllocation(pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry *this, pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy *a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  v3 = *(this + 4);
  if (!v3)
  {
    return 0;
  }

  do
  {
    if (v3[19])
    {
      break;
    }

    v3 = *v3;
  }

  while (v3);
  v15 = v3;
  v16 = this + 16;
  v17 = 0;
  v18 = this + 16;
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = sub_29AE3DC7C(&v15);
    v8 = *v7 + 16;
    v9 = *(*v7 + 24);
    v13 = v9;
    v14 = v8;
    while (v9 != v8)
    {
      v10 = sub_29AE3DCAC(&v13);
      v6 += (*(*a2 + 48))(a2, v10, a3);
      sub_29AE3DCD8(&v13);
      v9 = v13;
      v8 = v14;
    }

    sub_29AE3DD5C(&v15);
  }

  while (v15 != v17 || v16 != v18);
  return v6;
}

void *sub_29AE3DC7C(void *result)
{
  if (*result == result[2] && result[1] == result[3])
  {
    sub_29B2C9EDC();
  }

  return result;
}

uint64_t sub_29AE3DCAC(void *a1)
{
  if (*a1 == a1[1])
  {
    sub_29B2C9F34();
  }

  return *a1 + 16;
}

void *sub_29AE3DCD8(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::list<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferArray>>>::operator++() [T = std::list<std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdBufferArray>>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 = *(*a1 + 8);
  }

  return a1;
}

uint64_t ***sub_29AE3DD5C(uint64_t ***a1)
{
  v2 = *a1;
  if (*a1 == a1[2] && a1[1] == a1[3])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator++";
    v5[2] = 233;
    v5[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const tbb::interface5::concurrent_unordered_map<unsigned long, pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::_Entry>>::operator++() [T = const tbb::interface5::concurrent_unordered_map<unsigned long, pxrInternal__aapl__pxrReserved__::HdStBufferArrayRegistry::_Entry>, Reverse = false]";
    v6 = 0;
    v7 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v5, "iterator exhausted");
  }

  else
  {
    do
    {
      v2 = *v2;
    }

    while (v2 && (v2[19] & 1) == 0);
    *a1 = v2;
  }

  return a1;
}

uint64_t sub_29AE3DF64(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0xA0);
  v5[19] = 0;
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

uint64_t sub_29AE3E0BC(uint64_t a1)
{
  sub_29AE3E0F8(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  sub_29AE3E140(a1, v2);
  return a1;
}

uint64_t sub_29AE3E0F8(uint64_t result)
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
      result = sub_29AE3E140(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29AE3E140(int a1, tbb::internal *this)
{
  if (*(this + 152))
  {
    std::condition_variable::~condition_variable((this + 104));
    std::mutex::~mutex((this + 40));
    sub_29AA89BB0(this + 2);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

void sub_29AE3E194(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = 0x9E3779B97F4A7C15 * *a2;
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
  sub_29AE3E268(a1, v5, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v9 | 1;
    while (1)
    {
      v13 = v11[19];
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

void sub_29AE3E268(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
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
    sub_29AE3E304(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

void sub_29AE3E304(uint64_t a1, atomic_ullong *a2)
{
  v4 = sub_29A1B08DC(a1, a2);
  if (!sub_29A1B0968(a1, v4))
  {
    sub_29AE3E304(a1, v4);
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

  sub_29AE3E3E8(a1 + 16, &v10, v11 & 0xFFFFFFFFFFFFFFFELL, &v12);
  v11 = v12;
  sub_29A1A8110(a1, a2, &v11);
}

tbb::internal *sub_29AE3E3E8@<X0>(int a1@<W0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0xA0);
  *(result + 19) = a3;
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
      v10 = i[19];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = sub_29AE3E140(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void sub_29AE3E4BC(uint64_t a1@<X0>, void *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = 0x9E3779B97F4A7C15 * *a2;
  v23 = 0;
  v24 = v8;
  v9 = &v24;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v23 + i) = byte_29B734F74[v11];
  }

  v12 = v23 | 1;
  sub_29AE3E268(a1, v8, &v24);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 19) = v12;
    *a3 = 0;
  }

  while (1)
  {
    v14 = v24;
    v15 = *v24;
    if (*v24)
    {
      v16 = v15[19];
      while (1)
      {
        v17 = v15;
        if (v16 > v12)
        {
          break;
        }

        if (v16 == v12 && v15[1] == *v5)
        {
          if (a3)
          {
            sub_29AE3E140(a1 + 16, a3);
          }

          *a4 = v17;
          *(a4 + 8) = v13;
          *(a4 + 16) = 0;
          return;
        }

        v24 = v15;
        v15 = *v15;
        if (!*v17)
        {
          v14 = v17;
          break;
        }

        v16 = v15[19];
        v14 = v17;
      }
    }

    if (!a3)
    {
      v5 = 8;
    }

    *a3 = v15;
    while (1)
    {
      v18 = v15;
      atomic_compare_exchange_strong(v14, &v18, a3);
      if (v18 == v15)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v14, 0, memory_order_relaxed);
      if (add_explicit != v15)
      {
        goto LABEL_20;
      }
    }

    add_explicit = v15;
LABEL_20:
    if (v15 == add_explicit || add_explicit == a3)
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
  v21 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v21) > *(a1 + 44))
  {
    do
    {
      v22 = v21;
      atomic_compare_exchange_strong((a1 + 8), &v22, 2 * v21);
    }

    while (v22 != v21 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v21);
  }
}

uint64_t sub_29AE3E688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29AE3E268(a1, 0x9E3779B97F4A7C15 * *(a2 + 8), &v12);
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
    return sub_29AE3E72C(a2, result, &v13, a4);
  }

  else
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = result;
  }

  return result;
}

uint64_t sub_29AE3E72C@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t ****a3@<X1>, uint64_t ***a4@<X8>)
{
  v6 = *this;
  **a3 = *this;
  result = sub_29AE3E140(a2, this);
  --*(a2 + 8);
  for (; v6; v6 = *v6)
  {
    if (v6[19])
    {
      break;
    }
  }

  *a4 = v6;
  a4[1] = a2;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::HdStCommandBuffer(pxrInternal__aapl__pxrReserved__::HdStCommandBuffer *this)
{
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::~HdStCommandBuffer(pxrInternal__aapl__pxrReserved__::HdStCommandBuffer *this)
{
  v3 = (this + 40);
  sub_29A0176E4(&v3);
  v3 = (this + 16);
  sub_29AE41CD8(&v3);
  v2 = *(this + 1);
  if (v2)
  {
    sub_29A014BEC(v2);
  }
}

void sub_29AE3E814()
{
  if (!atomic_load(off_2A14F9D38))
  {
    sub_29B2C9F8C();
  }
}

void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::PrepareDraw(pxrInternal__aapl__pxrReserved__::HdStCommandBuffer *a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(lpsrc, this);
  {
    v9 = v8;
    v10 = lpsrc[1];
    v38 = v8;
    v39 = lpsrc[1];
    if (lpsrc[1])
    {
      atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v38 = 0;
    v39 = 0;
  }

  if (lpsrc[1])
  {
    sub_29A014BEC(lpsrc[1]);
  }

  if (v9 || (lpsrc[0] = "hdSt/commandBuffer.cpp", lpsrc[1] = "PrepareDraw", *&v31 = 304, *(&v31 + 1) = "void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::PrepareDraw(HgiGraphicsCmds *, const HdStRenderPassStateSharedPtr &, HdRenderIndex *)", LOBYTE(v32) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(lpsrc, "resourceRegistry", 0) & 1) != 0))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v9);
    if (sub_29ADC9798(5) || ((v12 = *((*(*Hgi + 200))(Hgi) + 48), IsEnabled = pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::IsEnabled(Hgi, v13), !IsEnabled) ? (IsEnabledGPUFrustumCulling = pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::IsEnabledGPUFrustumCulling(IsEnabled)) : (IsEnabledGPUFrustumCulling = pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::IsEnabledGPUFrustumCulling(IsEnabled)), (v12 & 0x40) != 0 && IsEnabledGPUFrustumCulling))
    {
      v16 = pxrInternal__aapl__pxrReserved__::HdChangeTracker::GetVisibilityChangeCount((this + 440));
      pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::SyncDrawItemVisibility(a1, v16);
    }

    else
    {
      if (!sub_29ABCF8C0(16))
      {
        v22 = (*a3 + 664);
        v23 = *(*a3 + 744);
        v34 = *(*a3 + 728);
        v35 = v23;
        v24 = v22[7];
        v36 = v22[6];
        v37 = v24;
        v25 = v22[1];
        *lpsrc = *v22;
        v31 = v25;
        v26 = v22[3];
        v32 = v22[2];
        v33 = v26;
        pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::_FrustumCullCPU(a1, lpsrc);
      }

      if (sub_29ABCF8C0(10))
      {
        v29 = *a1;
        if (*a1)
        {
          v29 = (((v29[1] - *v29) >> 3) - *(a1 + 8));
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("CPU CULLED: %zu drawItems\n", v27, v28, v29);
      }
    }

    v17 = *(a1 + 5);
    v18 = *(a1 + 6);
    if (v17 != v18)
    {
      do
      {
        (*(**v17 + 24))(*v17, a2, a3, &v38);
        v17 += 2;
      }

      while (v17 != v18);
      v9 = v38;
    }

    GlobalComputeCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalComputeCmds(v9, 1);
    (*(*GlobalComputeCmds + 72))(GlobalComputeCmds, 1);
    v20 = *(a1 + 5);
    v21 = *(a1 + 6);
    while (v20 != v21)
    {
      (*(**v20 + 32))(*v20, a3, &v38, *v20 == **(a1 + 5));
      v20 += 2;
    }

    (*(*GlobalComputeCmds + 72))(GlobalComputeCmds, 1);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::SubmitComputeWork(v38, 0);
    v10 = v39;
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }
}

void sub_29AE3EB80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::_FrustumCullCPU(pxrInternal__aapl__pxrReserved__::HdStCommandBuffer *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  if (sub_29ADC9798(6) || (*(*this + 8) - **this) >> 7 < 0x271uLL)
  {
    sub_29AE3FA88(this + 16, a2, 0, (*(this + 3) - *(this + 2)) >> 5);
  }

  else
  {
    v4 = (*(this + 3) - *(this + 2)) >> 5;
    v8[0] = sub_29AE3FA88;
    v8[1] = this + 16;
    v8[2] = a2;
    sub_29AE42364(v4, v8, 1);
  }

  *(this + 8) = 0;
  v5 = *(this + 2);
  v6 = *(this + 3);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      if (*(v5 + 24) == 1)
      {
        *(this + 8) = ++v7;
      }

      v5 += 32;
    }

    while (v5 != v6);
  }
}

void *pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::SyncDrawItemVisibility(void *this, int a2)
{
  v36 = *MEMORY[0x29EDCA608];
  if (*(this + 18) == a2)
  {
    return this;
  }

  v3 = this;
  this[8] = 0;
  v4 = sub_29A0EC1FC(v31);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v28[0] = v31;
  v28[1] = v3;
  v29 = 10000;
  v10 = ((v5 - v6) >> 5) / 0x2710uLL + 1;
  if (!pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v4))
  {
    v13 = *(v3 + 16);
    if ((*(v3 + 24) - v13) >> 5 >= 10000 * v10)
    {
      v14 = 10000 * v10;
    }

    else
    {
      v14 = (*(v3 + 24) - v13) >> 5;
    }

    LOBYTE(v33[0]) = 0;
    v15 = sub_29A0ED084(v31, v33);
    if (!v14)
    {
      goto LABEL_16;
    }

    v16 = v15;
    v17 = 0;
    while (1)
    {
      v18 = *(v3 + 16) + v17;
      v19 = *(v18 + 8);
      v20 = *(*(v19 + 24) + 340);
      if (*(v18 + 24) == v20)
      {
        if (*(*(v19 + 24) + 340))
        {
          if (sub_29AE41C4C(v19))
          {
            pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetVisible((*(v3 + 16) + v17), 1);
          }

LABEL_14:
          ++*v16;
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetVisible((*(v3 + 16) + v17), v20);
        if (v20)
        {
          goto LABEL_14;
        }
      }

      v17 += 32;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }
  }

  v33[0] = 0;
  v34 = 65539;
  v35 = 55;
  tbb::task_group_context::init(v33, v7, v8, v9);
  v30 = v33;
  v11 = tbb::internal::allocate_root_with_context_proxy::allocate(&v30, 0x38uLL);
  *(v11 - 11) = 1;
  *v11 = &unk_2A20969F8;
  *(v11 + 8) = v10;
  *(v11 + 16) = xmmword_29B430070;
  *(v11 + 32) = v28;
  initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v11);
  *(v11 + 48) = 0;
  *(v11 + 52) = 5;
  *(v11 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
  (*(**(v11 - 40) + 16))(*(v11 - 40), v11, v11 - 8);
  tbb::task_group_context::~task_group_context(v33);
LABEL_16:
  v21 = v32[2];
  __dmb(0xBu);
  v22 = tbb::internal::concurrent_vector_base_v3::internal_capacity(v32);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    v24 = 0;
    for (i = 0; i != v23; ++i)
    {
      v26 = sub_29A0EC0EC(i);
      v27 = v32[3];
      __dmb(0xBu);
      *(v3 + 64) += *(*(v27 + 8 * v26) - ((1 << v26) >> 1 << 8) + v24);
      v24 += 128;
    }
  }

  *(v3 + 72) = a2;
  return sub_29A0EBDA4(v31);
}

void sub_29AE3EF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a13, v27);
  tbb::task_group_context::~task_group_context(&a27);
  sub_29A0EBDA4(&a15);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::ExecuteDraw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v8, (v9 + 56), 0.0);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v11)
  {
    v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v10, (v11 + 328), 0.0);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  while (v12 != v13)
  {
    v14 = *v12;
    v12 += 2;
    (*(*v14 + 40))(v14, a2, a3, a4, v14 == **(a1 + 40));
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v16)
  {
    v16 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  v17 = ((*(a1 + 48) - *(a1 + 40)) >> 4);

  pxrInternal__aapl__pxrReserved__::HdPerfLog::SetCounter(v15, (v16 + 48), v17);
}

void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::SetDrawItems(uint64_t a1, uint64_t *a2, int a3, const pxrInternal__aapl__pxrReserved__::Hgi *a4)
{
  v7 = *a2;
  if (*a2 != *a1 || *(a1 + 76) != a3)
  {
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 8);
    *a1 = v7;
    *(a1 + 8) = v8;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::_RebuildDrawBatches(a1, a4);
    *(a1 + 76) = a3;
  }
}

void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::_RebuildDrawBatches(uint64_t **this, const pxrInternal__aapl__pxrReserved__::Hgi *a2)
{
  if (sub_29ADC9798(1))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Rebuilding all draw batches for command buffer %p ...\n", v4, v5, this);
  }

  this[8] = 0;
  sub_29A017738(this + 5);
  v7 = this[2];
    ;
  }

  this[3] = v7;
  sub_29AE3F848(this + 2, ((*this)[1] - **this) >> 3);
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

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v8, (v9 + 232));
  v11 = *this;
  v12 = **this;
  if ((*this)[1] != v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = *(v12 + 8 * v13);
      v52 = v14;
      if (*(v14 + 5))
      {
        goto LABEL_13;
      }

      *&v46 = "hdSt/commandBuffer.cpp";
      *(&v46 + 1) = "_RebuildDrawBatches";
      *&v47 = 482;
      *(&v47 + 1) = "void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::_RebuildDrawBatches(const Hgi *)";
      LOBYTE(v48) = 0;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*(v14 + 3) + 344));
      v18 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v16, v17, Text);
      if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v46, "drawItem->GetGeometricShader()", v18))
      {
        break;
      }

LABEL_15:
      ++v13;
      v12 = *v11;
      if (v13 >= (v11[1] - *v11) >> 3)
      {
        goto LABEL_21;
      }
    }

    v14 = v52;
LABEL_13:
    if (*(v14 + 7) || (*&v42 = "hdSt/commandBuffer.cpp", *(&v42 + 1) = "_RebuildDrawBatches", v43 = 484, v44 = "void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::_RebuildDrawBatches(const Hgi *)", v45 = 0, v19 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*(v14 + 3) + 344)), v22 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("%s", v20, v21, v19), (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v42, "drawItem->GetMaterialNetworkShader()", v22) & 1) != 0))
    {
      sub_29AE3F8D8(this + 2, &v52);
    }

    goto LABEL_15;
  }

LABEL_21:
  IsEnabled = pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::IsEnabled(a2, v10);
  sub_29A017738(this + 5);
  v46 = 0u;
  v47 = 0u;
  v48 = 1065353216;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v24 = this[2];
  v25 = this[3];
  if (v24 != v25)
  {
    do
    {
      sub_29AE3FB9C(this + 5, v24, &v46, IsEnabled, 0);
      v24 += 32;
    }

    while (v24 != v25);
    if (v51)
    {
      sub_29A014BEC(v51);
    }
  }

  sub_29AE40370(&v46);
  if ((IsEnabled & 1) == 0 && sub_29AE3F9EC())
  {
    v42 = 0uLL;
    v43 = 0;
    sub_29A039314(&v42, (this[6] - this[5]) >> 4);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v26 = this[5];
    v27 = this[6];
    if (v26 != v27)
    {
      do
      {
        v28 = *v26;
        v29 = sub_29AE3F9EC();
        v30 = *(v28 + 8);
        if (v29 >= (*(v28 + 16) - v30) >> 3 && (v31 = *(*(*v30 + 8) + 56)) != 0 && (*(*v31 + 24))(v31))
        {
          v33 = *(v28 + 8);
          v32 = *(v28 + 16);
          while (v33 != v32)
          {
            *&v46 = *v33;
            sub_29A0A71C8(&v52, &v46);
            ++v33;
          }
        }

        else
        {
          sub_29A017F80(&v42, v26);
        }

        ++v26;
      }

      while (v26 != v27);
      v34 = v52;
      if (v52 != v53)
      {
        sub_29AE40400(v52, v53, 126 - 2 * __clz((v53 - v52) >> 3), 1);
        v46 = 0u;
        v47 = 0u;
        v48 = 1065353216;
        v50 = 0;
        v51 = 0;
        v49 = 0;
        v35 = v52;
        v36 = v53;
        if (v52 == v53)
        {
          v37 = 0;
        }

        else
        {
          do
          {
            sub_29AE3FB9C(&v42, *v35++, &v46, 0, 1);
          }

          while (v35 != v36);
          v37 = v51;
        }

        v38 = *(this + 5);
        *(this + 5) = v42;
        v42 = v38;
        v39 = this[7];
        this[7] = v43;
        v43 = v39;
        if (v37)
        {
          sub_29A014BEC(v37);
        }

        sub_29AE40370(&v46);
        v34 = v52;
      }

      if (v34)
      {
        v53 = v34;
        operator delete(v34);
      }
    }

    *&v46 = &v42;
    sub_29A0176E4(&v46);
  }

  if (sub_29ADC9798(1))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("   %lu draw batches created for %lu draw items\n", v40, v41, (this[6] - this[5]) >> 4, (v11[1] - *v11) >> 3);
  }
}

void sub_29AE3F5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  v19 = *(v17 - 112);
  if (v19)
  {
    *(v17 - 104) = v19;
    operator delete(v19);
  }

  a17 = &a11;
  sub_29A0176E4(&a17);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::RebuildDrawBatchesIfNeeded(pxrInternal__aapl__pxrReserved__::HdStCommandBuffer *this, int a2, const pxrInternal__aapl__pxrReserved__::Hgi *a3)
{
  v6 = *(this + 19);
  *(this + 19) = a2;
  if (sub_29ADC9798(1) && *(this + 5) != *(this + 6))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Command buffer %p : RebuildDrawBatchesIfNeeded (deepValidation=%d)\n", v7, v8, this, v6 != a2);
  }

  if (sub_29ADC9798(2))
  {
    goto LABEL_24;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_29A0A6994(&__p, (*(this + 6) - *(this + 5)) >> 4);
  v9 = *(this + 5);
  v10 = *(this + 6);
  if (v9 == v10)
  {
    v11 = *(this + 5);
LABEL_10:
    v13 = __p;
    v12 = v22;
    v14 = (v22 - __p) >> 2;
    if (v14 != (v11 - v9) >> 4)
    {
      v19[0] = "hdSt/commandBuffer.cpp";
      v19[1] = "RebuildDrawBatchesIfNeeded";
      v19[2] = 435;
      v19[3] = "void pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::RebuildDrawBatchesIfNeeded(unsigned int, const Hgi *)";
      v20 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v19, "results.size() == _drawBatches.size()", 0);
      v13 = __p;
      v12 = v22;
      v14 = (v22 - __p) >> 2;
    }

    if (v12 == v13)
    {
LABEL_19:
      v18 = 0;
      goto LABEL_21;
    }

    v15 = 0;
    v16 = 0;
    if (v14 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v14;
    }

    while (*(__p + v16) != 1 || (pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::Rebuild(*(*(this + 5) + v15)) & 1) != 0)
    {
      ++v16;
      v15 += 16;
      if (v17 == v16)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    while (1)
    {
      LODWORD(v19[0]) = (*(**v9 + 16))(*v9, v6 != a2);
      if (LODWORD(v19[0]) == 2)
      {
        break;
      }

      sub_29A00D250(&__p, v19);
      v9 += 2;
      if (v9 == v10)
      {
        v9 = *(this + 5);
        v11 = *(this + 6);
        goto LABEL_10;
      }
    }
  }

  v18 = 1;
LABEL_21:
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v18)
  {
LABEL_24:
    pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::_RebuildDrawBatches(this, a3);
  }
}

void sub_29AE3F820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE3F848(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (a2 >> 59)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v5[4] = result;
    v5[0] = sub_29A10CB10(result, a2);
    v5[1] = v5[0] + v3;
    v5[2] = v5[0] + v3;
    v5[3] = v5[0] + 32 * v4;
    sub_29AE41D5C(v2, v5);
    return sub_29AE41E00(v5);
  }

  return result;
}

void sub_29AE3F8C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AE41E00(va);
  _Unwind_Resume(a1);
}

unint64_t sub_29AE3F8D8(void *a1, const pxrInternal__aapl__pxrReserved__::HdStDrawItem **a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v17 = a1;
    if (v10)
    {
      v11 = sub_29A10CB10(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = v11;
    v14 = &v11[32 * v7];
    v15 = v14;
    v16 = &v11[32 * v10];
    pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::HdStDrawItemInstance(v14, *a2);
    v15 = (v14 + 32);
    sub_29AE41D5C(a1, &v13);
    v6 = a1[1];
    sub_29AE41E00(&v13);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::HdStDrawItemInstance(a1[1], *a2);
    v6 = v5 + 32;
    a1[1] = v5 + 32;
  }

  a1[1] = v6;
  return v6 - 32;
}

uint64_t sub_29AE3F9EC()
{
  if ((atomic_load_explicit(&qword_2A174EF70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EF70))
  {
    v1 = atomic_load(off_2A14F9D38);
    if (!v1)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    qword_2A174EF68 = *v1;
    __cxa_guard_release(&qword_2A174EF70);
  }

  return qword_2A174EF68;
}

uint64_t sub_29AE3FA88(uint64_t result, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2, unint64_t a3, unint64_t a4)
{
  v4 = a4 - a3;
  if (a4 > a3)
  {
    v6 = result;
    for (i = 32 * a3; ; i += 32)
    {
      v8 = *v6 + i;
      v9 = *(v8 + 8);
      if (*(*(v9 + 24) + 340))
      {
        break;
      }

      if (*(v8 + 24))
      {
        v10 = 0;
LABEL_10:
        result = pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance::SetVisible(v8, v10);
      }

LABEL_11:
      if (!--v4)
      {
        return result;
      }
    }

    result = pxrInternal__aapl__pxrReserved__::HdStDrawItem::IntersectsViewVolume(*(v8 + 8), a2);
    v10 = result;
    if (result == *(v8 + 24))
    {
      if (!result)
      {
        goto LABEL_11;
      }

      result = sub_29AE41C4C(v9);
      if (!result)
      {
        goto LABEL_11;
      }

      v10 = 1;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStCommandBuffer::SetEnableTinyPrimCulling(uint64_t this, uint64_t a2)
{
  v2 = *(this + 40);
  for (i = *(this + 48); v2 != i; this = (*(*v5 + 56))(v5, a2))
  {
    v5 = *v2;
    v2 += 2;
  }

  return this;
}

void sub_29AE3FB9C(void **a1, uint64_t a2, void *a3, int a4, BOOL a5)
{
  v10 = *(a2 + 8);
  v11 = (*(**(v10 + 40) + 16))(*(v10 + 40));
  BufferArraysHash = pxrInternal__aapl__pxrReserved__::HdStDrawItem::GetBufferArraysHash(v10);
  v13 = bswap64(0x9E3779B97F4A7C55 * (BufferArraysHash + ((BufferArraysHash + v11 + (BufferArraysHash + v11) * (BufferArraysHash + v11)) >> 1)));
  if (!a5)
  {
    v14 = (*(**(v10 + 56) + 24))(*(v10 + 56));
    v13 = bswap64(0x9E3779B97F4A7C55 * (v14 + ((v14 + v13 + (v14 + v13) * (v14 + v13)) >> 1)));
  }

  v27 = v13;
  if (a3[5] == v13 && (v15 = a3[6]) != 0 && (pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::Append(v15, a2) & 1) != 0)
  {
LABEL_23:
    v26 = 0uLL;
  }

  else
  {
    *&v29 = &v27;
    v16 = sub_29AE3FE28(a3, &v27, &unk_29B4D6118, &v29);
    v18 = v16[3];
    v19 = v16[4];
    v17 = (v16 + 3);
    while (v18 != v19)
    {
      if (pxrInternal__aapl__pxrReserved__::HdSt_DrawBatch::Append(*v18, a2))
      {
        a3[5] = v27;
        v24 = *v18;
        v23 = *(v18 + 8);
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }

        v25 = a3[7];
        a3[6] = v24;
        a3[7] = v23;
        if (v25)
        {
          sub_29A014BEC(v25);
        }

        goto LABEL_23;
      }

      v18 += 16;
    }

    v31 = a2;
    v30 = a5;
    if (a4)
    {
      sub_29AE400B8(&v31, &v29);
    }

    else
    {
      v28 = 1;
      sub_29AE40208(&v31, &v28, &v30, &v29);
    }

    v26 = v29;
    sub_29A017F80(v17, &v26);
    v20 = *(&v26 + 1);
    a3[5] = v27;
    v21 = v26;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = a3[7];
    a3[6] = v21;
    a3[7] = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
      v21 = v26;
    }

    if (v21)
    {
      sub_29A017F80(a1, &v26);
    }
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }
}

void sub_29AE3FDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE3FDE8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return sub_29AE40370(a1);
}

void *sub_29AE3FE28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v7 = *a2;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = *a2;
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
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if (i[2] == v7)
          {
            return i;
          }
        }

        else
        {
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
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v7;
  v13 = **a4;
  i[4] = 0;
  i[5] = 0;
  i[2] = v13;
  i[3] = 0;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v8 || (v15 * v8) < v14)
  {
    v16 = 1;
    if (v8 >= 3)
    {
      v16 = (v8 & (v8 - 1)) != 0;
    }

    v17 = v16 | (2 * v8);
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
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v22 >= v8)
      {
        v22 %= v8;
      }
    }

    else
    {
      v22 &= v8 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29AE40068(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    sub_29A0176E4(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void *sub_29AE400B8@<X0>(pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x210uLL);
  result = sub_29AE40114(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29AE40114(void *a1, pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2096958;
  pxrInternal__aapl__pxrReserved__::HdSt_PipelineDrawBatch::HdSt_PipelineDrawBatch((a1 + 3), *a2, 1, 1);
  return a1;
}

void sub_29AE4019C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2096958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE40208@<X0>(pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance **a1@<X1>, BOOL *a2@<X2>, BOOL *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x1D8uLL);
  result = sub_29AE4027C(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *sub_29AE4027C(void *a1, pxrInternal__aapl__pxrReserved__::HdStDrawItemInstance **a2, BOOL *a3, BOOL *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20969A8;
  pxrInternal__aapl__pxrReserved__::HdSt_IndirectDrawBatch::HdSt_IndirectDrawBatch((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void sub_29AE40304(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20969A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AE40370(uint64_t a1)
{
  sub_29AE403AC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AE403AC(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      sub_29A0176E4(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

unint64_t sub_29AE40400(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v140 = a2 - 3;
    v141 = a2 - 2;
    v9 = v7;
    v146 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = a2 - v9;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                return sub_29AE4136C(v9, v9 + 1, v8);
              case 4:

                return sub_29AE415B4(v9, v9 + 1, v9 + 2, v8);
              case 5:

                return sub_29AE41768(v9, v9 + 1, v9 + 2, v9 + 3, v8);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v65 = *(*v9 + 8);
              v66 = *(*(*(a2 - 1) + 8) + 56);
              v67 = (*(*v66 + 24))(v66);
              result = (*(**(v65 + 56) + 24))(*(v65 + 56));
              if (v67 < result)
              {
                v68 = *v9;
                *v9 = *(a2 - 1);
                *(a2 - 1) = v68;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v69 = v9 + 1;
            v71 = v9 == a2 || v69 == a2;
            if (a4)
            {
              if (!v71)
              {
                v72 = 0;
                v73 = v9;
                do
                {
                  v75 = *v73;
                  v74 = v73[1];
                  v73 = v69;
                  v76 = *(v75 + 8);
                  v77 = (*(**(*(v74 + 8) + 56) + 24))(*(*(v74 + 8) + 56));
                  result = (*(**(v76 + 56) + 24))(*(v76 + 56));
                  if (v77 < result)
                  {
                    v78 = *v73;
                    v79 = v72;
                    while (1)
                    {
                      *(v9 + v79 + 8) = *(v9 + v79);
                      if (!v79)
                      {
                        break;
                      }

                      v80 = *(*(v9 + v79 - 8) + 8);
                      v81 = (*(**(*(v78 + 8) + 56) + 24))(*(*(v78 + 8) + 56));
                      result = (*(**(v80 + 56) + 24))(*(v80 + 56));
                      v79 -= 8;
                      if (v81 >= result)
                      {
                        v82 = (v9 + v79 + 8);
                        goto LABEL_86;
                      }
                    }

                    v82 = v9;
LABEL_86:
                    *v82 = v78;
                    a2 = v146;
                  }

                  v69 = v73 + 1;
                  v72 += 8;
                }

                while (v73 + 1 != a2);
              }
            }

            else if (!v71)
            {
              do
              {
                v131 = *v7;
                v130 = v7[1];
                v7 = v69;
                v132 = *(v131 + 8);
                v133 = (*(**(*(v130 + 8) + 56) + 24))(*(*(v130 + 8) + 56));
                result = (*(**(v132 + 56) + 24))(*(v132 + 56));
                if (v133 < result)
                {
                  v134 = *v7;
                  v135 = v7;
                  do
                  {
                    v136 = v135;
                    v137 = *--v135;
                    *v136 = v137;
                    v138 = *(*(v136 - 2) + 8);
                    v139 = (*(**(*(v134 + 8) + 56) + 24))(*(*(v134 + 8) + 56));
                    result = (*(**(v138 + 56) + 24))(*(v138 + 56));
                  }

                  while (v139 < result);
                  *v135 = v134;
                }

                v69 = v7 + 1;
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v83 = (v10 - 2) >> 1;
              v144 = v83;
              do
              {
                v84 = v83;
                if (v144 >= v83)
                {
                  v85 = (2 * v83) | 1;
                  v86 = &v7[v85];
                  if (2 * v83 + 2 < v10)
                  {
                    v87 = *(v86[1] + 8);
                    v88 = *(*(*v86 + 8) + 56);
                    v89 = (*(*v88 + 24))(v88);
                    v90 = (*(**(v87 + 56) + 24))(*(v87 + 56));
                    if (v89 < v90)
                    {
                      ++v86;
                    }

                    a2 = v146;
                    if (v89 < v90)
                    {
                      v85 = 2 * v84 + 2;
                    }
                  }

                  v91 = &v7[v84];
                  v92 = *(*v91 + 8);
                  v93 = *(*(*v86 + 8) + 56);
                  v94 = (*(*v93 + 24))(v93);
                  result = (*(**(v92 + 56) + 24))(*(v92 + 56));
                  if (v94 >= result)
                  {
                    v142 = v84;
                    v95 = *v91;
                    do
                    {
                      v96 = v86;
                      *v91 = *v86;
                      if (v144 < v85)
                      {
                        break;
                      }

                      v97 = (2 * v85) | 1;
                      v86 = &v7[v97];
                      v98 = 2 * v85 + 2;
                      if (v98 < v10)
                      {
                        v99 = *(v86[1] + 8);
                        v100 = *(*(*v86 + 8) + 56);
                        v101 = (*(*v100 + 24))(v100);
                        if (v101 < (*(**(v99 + 56) + 24))(*(v99 + 56)))
                        {
                          ++v86;
                          v97 = v98;
                        }
                      }

                      v102 = *(v95 + 8);
                      v103 = *(*(*v86 + 8) + 56);
                      v104 = (*(*v103 + 24))(v103);
                      result = (*(**(v102 + 56) + 24))(*(v102 + 56));
                      v91 = v96;
                      v85 = v97;
                    }

                    while (v104 >= result);
                    *v96 = v95;
                    a2 = v146;
                    v84 = v142;
                  }
                }

                v83 = v84 - 1;
              }

              while (v84);
              do
              {
                v105 = 0;
                v145 = *v7;
                v147 = a2;
                v106 = v7;
                do
                {
                  v107 = &v106[v105];
                  v108 = v107 + 1;
                  v109 = (2 * v105) | 1;
                  v110 = 2 * v105 + 2;
                  if (v110 >= v10)
                  {
                    v105 = (2 * v105) | 1;
                  }

                  else
                  {
                    v112 = v107[2];
                    v111 = v107 + 2;
                    v113 = *(v112 + 8);
                    v114 = *(*(*(v111 - 1) + 8) + 56);
                    v115 = (*(*v114 + 24))(v114);
                    result = (*(**(v113 + 56) + 24))(*(v113 + 56));
                    if (v115 >= result)
                    {
                      v105 = v109;
                    }

                    else
                    {
                      v108 = v111;
                      v105 = v110;
                    }
                  }

                  *v106 = *v108;
                  v106 = v108;
                }

                while (v105 <= ((v10 - 2) >> 1));
                a2 = v147 - 1;
                if (v108 == v147 - 1)
                {
                  *v108 = v145;
                }

                else
                {
                  *v108 = *a2;
                  *a2 = v145;
                  v116 = (v108 - v7 + 8) >> 3;
                  v117 = v116 < 2;
                  v118 = v116 - 2;
                  if (!v117)
                  {
                    v119 = v118 >> 1;
                    v120 = &v7[v118 >> 1];
                    v121 = *(*v108 + 8);
                    v122 = *(*(*v120 + 8) + 56);
                    v123 = (*(*v122 + 24))(v122);
                    v124 = *(v121 + 56);
                    a2 = v147 - 1;
                    result = (*(*v124 + 24))(v124);
                    if (v123 < result)
                    {
                      v125 = *v108;
                      do
                      {
                        v126 = v120;
                        *v108 = *v120;
                        if (!v119)
                        {
                          break;
                        }

                        v119 = (v119 - 1) >> 1;
                        v120 = &v7[v119];
                        v127 = *(v125 + 8);
                        v128 = *(*(*v120 + 8) + 56);
                        v129 = (*(*v128 + 24))(v128);
                        result = (*(**(v127 + 56) + 24))(*(v127 + 56));
                        v108 = v126;
                      }

                      while (v129 < result);
                      *v126 = v125;
                      a2 = v147 - 1;
                    }
                  }
                }

                v117 = v10-- <= 2;
              }

              while (!v117);
            }

            return result;
          }

          v11 = v10 >> 1;
          v12 = &v9[v10 >> 1];
          if (v10 < 0x81)
          {
            sub_29AE4136C(&v7[v10 >> 1], v7, v8);
          }

          else
          {
            sub_29AE4136C(v7, &v7[v10 >> 1], v8);
            sub_29AE4136C(v7 + 1, v12 - 1, v141);
            sub_29AE4136C(v7 + 2, &v7[v11 + 1], v140);
            sub_29AE4136C(v12 - 1, &v7[v10 >> 1], &v7[v11 + 1]);
            v13 = *v7;
            *v7 = *v12;
            *v12 = v13;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v14 = *(*v7 + 8);
          v15 = *(*(*(v7 - 1) + 8) + 56);
          v16 = (*(*v15 + 24))(v15);
          if (v16 < (*(**(v14 + 56) + 24))(*(v14 + 56)))
          {
            break;
          }

          v43 = *v7;
          v44 = *(*v8 + 8);
          v45 = *(*(*v7 + 8) + 56);
          v46 = (*(*v45 + 24))(v45);
          result = (*(**(v44 + 56) + 24))(*(v44 + 56));
          if (v46 >= result)
          {
            v50 = v7 + 1;
            do
            {
              v9 = v50;
              if (v50 >= a2)
              {
                break;
              }

              ++v50;
              v51 = *(*v9 + 8);
              v52 = (*(**(*(v43 + 8) + 56) + 24))(*(*(v43 + 8) + 56));
              result = (*(**(v51 + 56) + 24))(*(v51 + 56));
            }

            while (v52 >= result);
          }

          else
          {
            v9 = v7;
            do
            {
              v47 = v9[1];
              ++v9;
              v48 = *(v47 + 8);
              v49 = (*(**(*(v43 + 8) + 56) + 24))(*(*(v43 + 8) + 56));
              result = (*(**(v48 + 56) + 24))(*(v48 + 56));
            }

            while (v49 >= result);
          }

          v53 = a2;
          if (v9 < a2)
          {
            v53 = a2;
            do
            {
              v54 = *--v53;
              v55 = *(v54 + 8);
              v56 = (*(**(*(v43 + 8) + 56) + 24))(*(*(v43 + 8) + 56));
              result = (*(**(v55 + 56) + 24))(*(v55 + 56));
            }

            while (v56 < result);
          }

          while (v9 < v53)
          {
            v57 = *v9;
            *v9 = *v53;
            *v53 = v57;
            do
            {
              v58 = v9[1];
              ++v9;
              v59 = *(v58 + 8);
              v60 = (*(**(*(v43 + 8) + 56) + 24))(*(*(v43 + 8) + 56));
            }

            while (v60 >= (*(**(v59 + 56) + 24))(*(v59 + 56)));
            do
            {
              v61 = *--v53;
              v62 = *(v61 + 8);
              v63 = (*(**(*(v43 + 8) + 56) + 24))(*(*(v43 + 8) + 56));
              result = (*(**(v62 + 56) + 24))(*(v62 + 56));
            }

            while (v63 < result);
          }

          v64 = v9 - 1;
          if (v9 - 1 != v7)
          {
            *v7 = *v64;
          }

          a4 = 0;
          *v64 = v43;
        }

        v17 = 0;
        v18 = *v7;
        do
        {
          v19 = *(v18 + 8);
          v20 = *(*(v7[v17 + 1] + 8) + 56);
          v21 = (*(*v20 + 24))(v20);
          ++v17;
        }

        while (v21 < (*(**(v19 + 56) + 24))(*(v19 + 56)));
        v22 = &v7[v17];
        if (v17 == 1)
        {
          a2 = v146;
          do
          {
            if (v22 >= a2)
            {
              break;
            }

            v26 = *--a2;
            v27 = *(v18 + 8);
            v28 = (*(**(*(v26 + 8) + 56) + 24))(*(*(v26 + 8) + 56));
          }

          while (v28 >= (*(**(v27 + 56) + 24))(*(v27 + 56)));
        }

        else
        {
          do
          {
            v23 = *--a2;
            v24 = *(v18 + 8);
            v25 = (*(**(*(v23 + 8) + 56) + 24))(*(*(v23 + 8) + 56));
          }

          while (v25 >= (*(**(v24 + 56) + 24))(*(v24 + 56)));
        }

        if (v22 >= a2)
        {
          v40 = v22 - 1;
        }

        else
        {
          v143 = a3;
          v29 = a4;
          v30 = v8;
          v31 = v22;
          v32 = a2;
          do
          {
            v33 = *v31;
            *v31 = *v32;
            *v32 = v33;
            do
            {
              v34 = v31[1];
              ++v31;
              v35 = *(v18 + 8);
              v36 = (*(**(*(v34 + 8) + 56) + 24))(*(*(v34 + 8) + 56));
            }

            while (v36 < (*(**(v35 + 56) + 24))(*(v35 + 56)));
            do
            {
              v37 = *--v32;
              v38 = *(v18 + 8);
              v39 = (*(**(*(v37 + 8) + 56) + 24))(*(*(v37 + 8) + 56));
            }

            while (v39 >= (*(**(v38 + 56) + 24))(*(v38 + 56)));
          }

          while (v31 < v32);
          v40 = v31 - 1;
          v8 = v30;
          a4 = v29;
          a3 = v143;
        }

        if (v40 != v7)
        {
          *v7 = *v40;
        }

        *v40 = v18;
        v41 = v22 >= a2;
        a2 = v146;
        if (v41)
        {
          break;
        }

LABEL_39:
        result = sub_29AE40400(v7, v40, a3, a4 & 1);
        a4 = 0;
        v9 = v40 + 1;
      }

      v42 = sub_29AE419A4(v7, v40);
      v9 = v40 + 1;
      result = sub_29AE419A4(v40 + 1, v146);
      if (result)
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_39;
      }
    }

    a2 = v40;
    if (!v42)
    {
      continue;
    }

    return result;
  }
}