_DWORD *sub_29A321C0C(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A321C60(int a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *MEMORY[0x29EDCA608];
  LOBYTE(v16[0]) = 0;
  v17 = 0;
  result = sub_29A321DE0(a9, a1, a2, a3, a4, a5);
  if (result)
  {
    v15[1] = 0;
    v13 = *(a10 + 8);
    if (v13 >= *(a10 + 16))
    {
      v14 = sub_29A321E50(a10, a2, v15);
    }

    else
    {
      v14 = sub_29A3216A8(v13, a2, v15) + 3;
    }

    *(a10 + 8) = v14;
    sub_29A186B14(v15);
    if (v17 != 1)
    {
      sub_29A1DA6E4(a3);
    }

    result = sub_29A1DE11C(v16, (*(a10 + 8) - 16));
  }

  if (v17 == 1)
  {
    return sub_29A186B14(v16);
  }

  return result;
}

void sub_29A321DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_29A186B14(&a11);
  if (a15 == 1)
  {
    sub_29A186B14(&a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A321DE0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a2;
  v8 = a6;
  v6 = *(a1 + 24);
  if (!v6)
  {
    sub_29A0DDCB0();
  }

  return (*(*v6 + 48))(v6, &v9, a3, a4, a5, &v8);
}

uint64_t sub_29A321E50(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[3 * v3];
  *(&v18 + 1) = &v9[3 * v8];
  sub_29A3216A8(v17, a2, a3);
  *&v18 = v17 + 3;
  v10 = *(a1 + 8);
  v11 = (v17 + *a1 - v10);
  sub_29A321F84(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A3220F0(&v16);
  return v15;
}

void sub_29A321F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3220F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A321F84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  i = 0;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = v6 + 1;
      *a4 = *v6;
      *v6 = 0;
      v6 += 3;
      sub_29A186A3C(a4 + 1, v7);
      a4 = v12 + 3;
      v12 += 3;
    }

    while (v6 != a3);
    for (i = 1; v5 != a3; v5 += 3)
    {
      sub_29A186B14((v5 + 1));
      if ((*v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return sub_29A322058(v9);
}

uint64_t sub_29A322058(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A322090(a1);
  }

  return a1;
}

uint64_t sub_29A322090(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    result = sub_29A186B14(v3 - 16);
    v6 = *(v3 - 24);
    v3 -= 24;
    v5 = v6;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29A3220F0(uint64_t a1)
{
  sub_29A322128(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A322128(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 24;
      result = sub_29A186B14(v2 - 16);
      v5 = *(v2 - 24);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_29A322194(void *a1, void *a2)
{
  if (a2 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  sub_29A18606C(a1 + 1, a2 + 1);
  return a1;
}

uint64_t sub_29A3221F0(uint64_t a1, void *a2)
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

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[24 * v6];
  *v8 = *a2;
  *a2 = 0;
  sub_29A186A3C(v8 + 1, a2 + 1);
  *&v17 = v8 + 24;
  v9 = *(a1 + 8);
  v10 = &v8[*a1 - v9];
  sub_29A321F84(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A3220F0(&v15);
  return v14;
}

void sub_29A322314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3220F0(va);
  _Unwind_Resume(a1);
}

void sub_29A322328(uint64_t *a1, uint64_t *a2, char a3, char a4)
{
  v78 = *MEMORY[0x29EDCA608];
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  LOBYTE(v69) = 0;
  v71 = 0;
  LOBYTE(v66) = 0;
  v68 = 0;
  v60 = v8;
  if ((sub_29A323538(v9, a2, v7, v6, a3, v8, v6 + 8, a4, &v69, &v66) & 1) == 0)
  {
    goto LABEL_123;
  }

  if (v71 != 1 || (v68 & 1) == 0)
  {
    sub_29A1DA6E4(v7);
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v11)
  {
    v11 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if ((*v11 ^ *a2) <= 7)
  {
    v12 = sub_29A23DDC0(&v69);
    if (v70)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      v73 = "sdf/copyUtils.cpp";
      v74 = "_ProcessChildren";
      v75 = 124;
      v76 = "void pxrInternal__aapl__pxrReserved__::_ProcessChildren(const TfToken &, const VtValue &, const VtValue &, const SdfLayerHandle &, const SdfPath &, BOOL, const SdfLayerHandle &, const SdfPath &, BOOL, _CopyStack *) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy]";
      v77 = 0;
      if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v73, "srcChildrenValue.IsHolding<ChildrenVector>() || srcChildrenValue.IsEmpty()", 0))
      {
        goto LABEL_123;
      }
    }

    v14 = sub_29A23DDC0(&v66);
    v15 = v67 ? v14 : 1;
    if ((v15 & 1) == 0)
    {
      v61 = "sdf/copyUtils.cpp";
      v62 = "_ProcessChildren";
      v63 = 126;
      v64 = "void pxrInternal__aapl__pxrReserved__::_ProcessChildren(const TfToken &, const VtValue &, const VtValue &, const SdfLayerHandle &, const SdfPath &, BOOL, const SdfLayerHandle &, const SdfPath &, BOOL, _CopyStack *) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy]";
      v65 = 0;
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v61, "dstChildrenValue.IsHolding<ChildrenVector>() || dstChildrenValue.IsEmpty()", 0) & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    v61 = 0;
    v62 = 0;
    v63 = 0;
    if (v70)
    {
      if ((v70 & 4) != 0)
      {
        v16 = (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(&v69);
      }

      else
      {
        v16 = v69;
      }
    }

    else
    {
      v16 = &v61;
    }

    if (v67)
    {
      if ((v67 & 4) != 0)
      {
        v29 = (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
      }

      else
      {
        v29 = v66;
      }
    }

    else
    {
      v29 = &v61;
    }

    v30 = *v16;
    if (v16[1] != *v16)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v30[v31]) && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&(*v29)[v31]))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(v6, &(*v16)[v31], &v73);
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget((v6 + 8), &(*v29)[v31], &v72);
          sub_29A32496C(v10, &v73, &v72);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v72 + 1);
          sub_29A1DE3A4(&v72);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v73 + 1);
          sub_29A1DE3A4(&v73);
        }

        ++v32;
        v30 = *v16;
        v31 += 8;
      }

      while (v32 < (v16[1] - *v16) >> 3);
    }

    if (a4)
    {
      sub_29A1DA6E4(v60);
    }

LABEL_87:
    v73 = &v61;
    sub_29A1E234C(&v73);
    goto LABEL_123;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  if (!v17)
  {
    v17 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
  }

  if ((*(v17 + 3) ^ *a2) > 7)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    if (!v23)
    {
      v23 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
    }

    if ((*(v23 + 2) ^ *a2) > 7)
    {
      v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
      if (!v33)
      {
        v33 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
      }

      if ((*(v33 + 1) ^ *a2) > 7)
      {
        v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
        if (!v43)
        {
          v43 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
        }

        if ((*(v43 + 6) ^ *a2) > 7)
        {
          v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
          if (!v49)
          {
            v49 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
          }

          if ((*(v49 + 7) ^ *a2) > 7)
          {
            v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
            if (!v54)
            {
              v54 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
            }

            if ((*(v54 + 8) ^ *a2) > 7)
            {
              v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
              if (!v55)
              {
                v55 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
              }

              if ((*(v55 + 5) ^ *a2) > 7)
              {
                v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
                if (!v56)
                {
                  v56 = sub_29A1DF42C(&pxrInternal__aapl__pxrReserved__::SdfChildrenKeys);
                }

                v57 = *a2;
                if ((*(v56 + 4) ^ *a2) > 7)
                {
                  v73 = "sdf/copyUtils.cpp";
                  v74 = "_ProcessChildField";
                  v75 = 263;
                  v76 = "void pxrInternal__aapl__pxrReserved__::_ProcessChildField(const TfToken &, const SdfLayerHandle &, const SdfPath &, BOOL, const SdfLayerHandle &, const SdfPath &, BOOL, const SdfShouldCopyChildrenFn &, _CopyStack *)";
                  v77 = 0;
                  v58 = v57 & 0xFFFFFFFFFFFFFFF8;
                  if ((v57 & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    v59 = (v58 + 16);
                    if (*(v58 + 39) < 0)
                    {
                      v59 = *v59;
                    }
                  }

                  else
                  {
                    v59 = "";
                  }

                  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v73, 1, "Unknown child field '%s'", v59);
                }

                else
                {
                  sub_29A324530(a2, &v69, &v66, v6, v60, (v6 + 8), a4, v10);
                }
              }

              else
              {
                sub_29A324150(a2, &v69, &v66, v6, v60, (v6 + 8), a4, v10);
              }
            }

            else
            {
              sub_29A323D70(a2, &v69, &v66, v6, v60, (v6 + 8), a4, v10);
            }
          }

          else
          {
            sub_29A323990(a2, &v69, &v66, v6, v60, (v6 + 8), a4, v10);
          }
        }

        else
        {
          sub_29A3235A0(a2, &v69, &v66, v6, v60, (v6 + 8), a4, v10);
        }

        goto LABEL_123;
      }

      v34 = sub_29A1DE724(&v69);
      if (v70)
      {
        v35 = v34;
      }

      else
      {
        v35 = 1;
      }

      if ((v35 & 1) == 0)
      {
        v73 = "sdf/copyUtils.cpp";
        v74 = "_ProcessChildren";
        v75 = 124;
        v76 = "void pxrInternal__aapl__pxrReserved__::_ProcessChildren(const TfToken &, const VtValue &, const VtValue &, const SdfLayerHandle &, const SdfPath &, BOOL, const SdfLayerHandle &, const SdfPath &, BOOL, _CopyStack *) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy]";
        v77 = 0;
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v73, "srcChildrenValue.IsHolding<ChildrenVector>() || srcChildrenValue.IsEmpty()", 0))
        {
          goto LABEL_123;
        }
      }

      v36 = sub_29A1DE724(&v66);
      v37 = v67 ? v36 : 1;
      if ((v37 & 1) == 0)
      {
        v61 = "sdf/copyUtils.cpp";
        v62 = "_ProcessChildren";
        v63 = 126;
        v64 = "void pxrInternal__aapl__pxrReserved__::_ProcessChildren(const TfToken &, const VtValue &, const VtValue &, const SdfLayerHandle &, const SdfPath &, BOOL, const SdfLayerHandle &, const SdfPath &, BOOL, _CopyStack *) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy]";
        v65 = 0;
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v61, "dstChildrenValue.IsHolding<ChildrenVector>() || dstChildrenValue.IsEmpty()", 0) & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      v61 = 0;
      v62 = 0;
      v63 = 0;
      if (v70)
      {
        if ((v70 & 4) != 0)
        {
          v38 = (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(&v69);
        }

        else
        {
          v38 = v69;
        }
      }

      else
      {
        v38 = &v61;
      }

      if (v67)
      {
        if ((v67 & 4) != 0)
        {
          v50 = (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
        }

        else
        {
          v50 = v66;
        }
      }

      else
      {
        v50 = &v61;
      }

      v52 = *v38;
      v51 = v38[1];
      if (v51 != *v38)
      {
        v53 = 0;
        do
        {
          if (*&v52[8 * v53] && *&(*v50)[8 * v53])
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendExpression(v6, &v73);
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendExpression((v6 + 8), &v72);
            sub_29A32496C(v10, &v73, &v72);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v72 + 1);
            sub_29A1DE3A4(&v72);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v73 + 1);
            sub_29A1DE3A4(&v73);
            v52 = *v38;
            v51 = v38[1];
          }

          ++v53;
        }

        while (v53 < (v51 - v52) >> 3);
      }

      if (a4)
      {
        sub_29A1DA6E4(v60);
      }
    }

    else
    {
      v24 = sub_29A1DE724(&v69);
      if (v70)
      {
        v25 = v24;
      }

      else
      {
        v25 = 1;
      }

      if ((v25 & 1) == 0)
      {
        v73 = "sdf/copyUtils.cpp";
        v74 = "_ProcessChildren";
        v75 = 124;
        v76 = "void pxrInternal__aapl__pxrReserved__::_ProcessChildren(const TfToken &, const VtValue &, const VtValue &, const SdfLayerHandle &, const SdfPath &, BOOL, const SdfLayerHandle &, const SdfPath &, BOOL, _CopyStack *) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy]";
        v77 = 0;
        if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v73, "srcChildrenValue.IsHolding<ChildrenVector>() || srcChildrenValue.IsEmpty()", 0))
        {
          goto LABEL_123;
        }
      }

      v26 = sub_29A1DE724(&v66);
      v27 = v67 ? v26 : 1;
      if ((v27 & 1) == 0)
      {
        v61 = "sdf/copyUtils.cpp";
        v62 = "_ProcessChildren";
        v63 = 126;
        v64 = "void pxrInternal__aapl__pxrReserved__::_ProcessChildren(const TfToken &, const VtValue &, const VtValue &, const SdfLayerHandle &, const SdfPath &, BOOL, const SdfLayerHandle &, const SdfPath &, BOOL, _CopyStack *) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy]";
        v65 = 0;
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v61, "dstChildrenValue.IsHolding<ChildrenVector>() || dstChildrenValue.IsEmpty()", 0) & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      v61 = 0;
      v62 = 0;
      v63 = 0;
      if (v70)
      {
        if ((v70 & 4) != 0)
        {
          v28 = (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(&v69);
        }

        else
        {
          v28 = v69;
        }
      }

      else
      {
        v28 = &v61;
      }

      if (v67)
      {
        if ((v67 & 4) != 0)
        {
          v44 = (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
        }

        else
        {
          v44 = v66;
        }
      }

      else
      {
        v44 = &v61;
      }

      v46 = *v28;
      v45 = v28[1];
      if (v45 != *v28)
      {
        v47 = 0;
        do
        {
          v48 = &v46[8 * v47];
          if (*v48 && *&(*v44)[8 * v47])
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapperArg(v6, v48, &v73);
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapperArg((v6 + 8), &(*v44)[8 * v47], &v72);
            sub_29A32496C(v10, &v73, &v72);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v72 + 1);
            sub_29A1DE3A4(&v72);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v73 + 1);
            sub_29A1DE3A4(&v73);
            v46 = *v28;
            v45 = v28[1];
          }

          ++v47;
        }

        while (v47 < (v45 - v46) >> 3);
      }

      if (a4)
      {
        sub_29A1DA6E4(v60);
      }
    }

    v73 = &v61;
    sub_29A124AB0(&v73);
    goto LABEL_123;
  }

  v18 = sub_29A23DDC0(&v69);
  if (v70)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) != 0 || (v73 = "sdf/copyUtils.cpp", v74 = "_ProcessChildren", v75 = 124, v76 = "void pxrInternal__aapl__pxrReserved__::_ProcessChildren(const TfToken &, const VtValue &, const VtValue &, const SdfLayerHandle &, const SdfPath &, BOOL, const SdfLayerHandle &, const SdfPath &, BOOL, _CopyStack *) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy]", v77 = 0, pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v73, "srcChildrenValue.IsHolding<ChildrenVector>() || srcChildrenValue.IsEmpty()", 0)))
  {
    v20 = sub_29A23DDC0(&v66);
    v21 = v67 ? v20 : 1;
    if (v21 & 1) != 0 || (v61 = "sdf/copyUtils.cpp", v62 = "_ProcessChildren", v63 = 126, v64 = "void pxrInternal__aapl__pxrReserved__::_ProcessChildren(const TfToken &, const VtValue &, const VtValue &, const SdfLayerHandle &, const SdfPath &, BOOL, const SdfLayerHandle &, const SdfPath &, BOOL, _CopyStack *) [ChildPolicy = pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy]", v65 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v61, "dstChildrenValue.IsHolding<ChildrenVector>() || dstChildrenValue.IsEmpty()", 0)))
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      if (v70)
      {
        if ((v70 & 4) != 0)
        {
          v22 = (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(&v69);
        }

        else
        {
          v22 = v69;
        }
      }

      else
      {
        v22 = &v61;
      }

      if (v67)
      {
        if ((v67 & 4) != 0)
        {
          v39 = (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
        }

        else
        {
          v39 = v66;
        }
      }

      else
      {
        v39 = &v61;
      }

      v40 = *v22;
      if (v22[1] != *v22)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&v40[v41]) && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&(*v39)[v41]))
          {
            sub_29A2F602C(v6, &(*v22)[v41], &v73);
            sub_29A2F602C((v6 + 8), &(*v39)[v41], &v72);
            sub_29A32496C(v10, &v73, &v72);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v72 + 1);
            sub_29A1DE3A4(&v72);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v73 + 1);
            sub_29A1DE3A4(&v73);
          }

          ++v42;
          v40 = *v22;
          v41 += 8;
        }

        while (v42 < (v22[1] - *v22) >> 3);
      }

      if (a4)
      {
        sub_29A1DA6E4(v60);
      }

      goto LABEL_87;
    }
  }

LABEL_123:
  if (v68 == 1)
  {
    sub_29A186B14(&v66);
  }

  if (v71 == 1)
  {
    sub_29A186B14(&v69);
  }
}

void sub_29A323340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, int a21, char a22, uint64_t a23, char a24, void **a25)
{
  sub_29A186B14(&a25);
  a25 = &a13;
  sub_29A124AB0(&a25);
  if (a20 == 1)
  {
    sub_29A186B14(&a18);
  }

  if (a24 == 1)
  {
    sub_29A186B14(&a22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A323538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v13 = a5;
  v12 = a8;
  v10 = *(a1 + 24);
  if (!v10)
  {
    sub_29A0DDCB0();
  }

  return (*(*v10 + 48))(v10, a2, a3, a4, &v13, a6, a7, &v12, &a9, &a10);
}

void sub_29A3235A0(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4, uint64_t a5, pxrInternal__aapl__pxrReserved__::SdfPath *a6, char a7, void *a8)
{
  v28[2] = *MEMORY[0x29EDCA608];
  if (sub_29A23DDC0(a2) & 1) != 0 || !*(a2 + 1) || (sub_29B298DFC(v27))
  {
    v14 = sub_29A23DDC0(a3);
    v15 = *(a3 + 1) ? v14 : 1;
    if (v15 & 1) != 0 || (sub_29B298E40(v26))
    {
      memset(v25, 0, sizeof(v25));
      v16 = *(a2 + 1);
      if (v16)
      {
        if ((v16 & 4) != 0)
        {
          v17 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
        }

        else
        {
          v17 = *a2;
        }
      }

      else
      {
        v17 = v25;
      }

      v18 = *(a3 + 1);
      if (v18)
      {
        if ((v18 & 4) != 0)
        {
          v19 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a3);
        }

        else
        {
          v19 = *a3;
        }
      }

      else
      {
        v19 = v25;
      }

      v20 = *v17;
      if (v17[1] != *v17)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((v20 + v21)) && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((*v19 + v21)))
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(a4, (*v17 + v21), &v24);
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(a6, (*v19 + v21), v28);
            sub_29A32496C(a8, &v24, v28);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v28 + 1);
            sub_29A1DE3A4(v28);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
            sub_29A1DE3A4(&v24);
          }

          ++v22;
          v20 = *v17;
          v21 += 8;
        }

        while (v22 < (v17[1] - *v17) >> 3);
      }

      if (a7)
      {
        sub_29A1DA6E4(a5);
      }

      v24 = v25;
      sub_29A1E234C(&v24);
    }
  }
}

void sub_29A3238E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_29A186B14(v18 - 112);
  *(v18 - 112) = &a18;
  sub_29A1E234C((v18 - 112));
  _Unwind_Resume(a1);
}

void sub_29A323990(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4, uint64_t a5, pxrInternal__aapl__pxrReserved__::SdfPath *a6, char a7, void *a8)
{
  v29[2] = *MEMORY[0x29EDCA608];
  if (sub_29A1DE724(a2) & 1) != 0 || !*(a2 + 1) || (sub_29B298E84(v28))
  {
    v15 = sub_29A1DE724(a3);
    v16 = *(a3 + 1) ? v15 : 1;
    if (v16 & 1) != 0 || (sub_29B298EC8(v27))
    {
      memset(v26, 0, sizeof(v26));
      v17 = *(a2 + 1);
      if (v17)
      {
        if ((v17 & 4) != 0)
        {
          v18 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
        }

        else
        {
          v18 = *a2;
        }
      }

      else
      {
        v18 = v26;
      }

      v19 = *(a3 + 1);
      if (v19)
      {
        if ((v19 & 4) != 0)
        {
          v20 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a3);
        }

        else
        {
          v20 = *a3;
        }
      }

      else
      {
        v20 = v26;
      }

      v22 = *v18;
      v21 = v18[1];
      if (v21 != *v18)
      {
        v23 = 0;
        do
        {
          v24 = (v22 + 8 * v23);
          if (*v24 && *(*v20 + 8 * v23))
          {
            sub_29A2F72E4(a4, v24, &v25);
            sub_29A2F72E4(a6, (*v20 + 8 * v23), v29);
            sub_29A32496C(a8, &v25, v29);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v29 + 1);
            sub_29A1DE3A4(v29);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
            sub_29A1DE3A4(&v25);
            v22 = *v18;
            v21 = v18[1];
          }

          ++v23;
        }

        while (v23 < (v21 - v22) >> 3);
      }

      if (a7)
      {
        sub_29A1DA6E4(a5);
      }

      v25 = v26;
      sub_29A124AB0(&v25);
    }
  }
}

void sub_29A323CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A186B14(v16 - 112);
  *(v16 - 112) = &a16;
  sub_29A124AB0((v16 - 112));
  _Unwind_Resume(a1);
}

void sub_29A323D70(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, pxrInternal__aapl__pxrReserved__::TfToken *a4, uint64_t a5, pxrInternal__aapl__pxrReserved__::TfToken *a6, char a7, void *a8)
{
  v29[2] = *MEMORY[0x29EDCA608];
  if (sub_29A1DE724(a2) & 1) != 0 || !*(a2 + 1) || (sub_29B298F0C(v28))
  {
    v15 = sub_29A1DE724(a3);
    v16 = *(a3 + 1) ? v15 : 1;
    if (v16 & 1) != 0 || (sub_29B298F50(v27))
    {
      memset(v26, 0, sizeof(v26));
      v17 = *(a2 + 1);
      if (v17)
      {
        if ((v17 & 4) != 0)
        {
          v18 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
        }

        else
        {
          v18 = *a2;
        }
      }

      else
      {
        v18 = v26;
      }

      v19 = *(a3 + 1);
      if (v19)
      {
        if ((v19 & 4) != 0)
        {
          v20 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a3);
        }

        else
        {
          v20 = *a3;
        }
      }

      else
      {
        v20 = v26;
      }

      v22 = *v18;
      v21 = v18[1];
      if (v21 != *v18)
      {
        v23 = 0;
        do
        {
          v24 = (v22 + 8 * v23);
          if (*v24 && *(*v20 + 8 * v23))
          {
            sub_29A2F78A4(a4, v24, &v25);
            sub_29A2F78A4(a6, (*v20 + 8 * v23), v29);
            sub_29A32496C(a8, &v25, v29);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v29 + 1);
            sub_29A1DE3A4(v29);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
            sub_29A1DE3A4(&v25);
            v22 = *v18;
            v21 = v18[1];
          }

          ++v23;
        }

        while (v23 < (v21 - v22) >> 3);
      }

      if (a7)
      {
        sub_29A1DA6E4(a5);
      }

      v25 = v26;
      sub_29A124AB0(&v25);
    }
  }
}

void sub_29A3240B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A186B14(v16 - 112);
  *(v16 - 112) = &a16;
  sub_29A124AB0((v16 - 112));
  _Unwind_Resume(a1);
}

void sub_29A324150(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4, uint64_t a5, pxrInternal__aapl__pxrReserved__::SdfPath *a6, char a7, void *a8)
{
  v29[2] = *MEMORY[0x29EDCA608];
  if (sub_29A1DE724(a2) & 1) != 0 || !*(a2 + 1) || (sub_29B298F94(v28))
  {
    v15 = sub_29A1DE724(a3);
    v16 = *(a3 + 1) ? v15 : 1;
    if (v16 & 1) != 0 || (sub_29B298FD8(v27))
    {
      memset(v26, 0, sizeof(v26));
      v17 = *(a2 + 1);
      if (v17)
      {
        if ((v17 & 4) != 0)
        {
          v18 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
        }

        else
        {
          v18 = *a2;
        }
      }

      else
      {
        v18 = v26;
      }

      v19 = *(a3 + 1);
      if (v19)
      {
        if ((v19 & 4) != 0)
        {
          v20 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a3);
        }

        else
        {
          v20 = *a3;
        }
      }

      else
      {
        v20 = v26;
      }

      v22 = *v18;
      v21 = v18[1];
      if (v21 != *v18)
      {
        v23 = 0;
        do
        {
          v24 = (v22 + 8 * v23);
          if (*v24 && *(*v20 + 8 * v23))
          {
            sub_29A2F5828(a4, v24, &v25);
            sub_29A2F5828(a6, (*v20 + 8 * v23), v29);
            sub_29A32496C(a8, &v25, v29);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v29 + 1);
            sub_29A1DE3A4(v29);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
            sub_29A1DE3A4(&v25);
            v22 = *v18;
            v21 = v18[1];
          }

          ++v23;
        }

        while (v23 < (v21 - v22) >> 3);
      }

      if (a7)
      {
        sub_29A1DA6E4(a5);
      }

      v25 = v26;
      sub_29A124AB0(&v25);
    }
  }
}

void sub_29A324490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A186B14(v16 - 112);
  *(v16 - 112) = &a16;
  sub_29A124AB0((v16 - 112));
  _Unwind_Resume(a1);
}

void sub_29A324530(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4, uint64_t a5, pxrInternal__aapl__pxrReserved__::SdfPath *a6, char a7, void *a8)
{
  v29[2] = *MEMORY[0x29EDCA608];
  if (sub_29A1DE724(a2) & 1) != 0 || !*(a2 + 1) || (sub_29B29901C(v28))
  {
    v15 = sub_29A1DE724(a3);
    v16 = *(a3 + 1) ? v15 : 1;
    if (v16 & 1) != 0 || (sub_29B299060(v27))
    {
      memset(v26, 0, sizeof(v26));
      v17 = *(a2 + 1);
      if (v17)
      {
        if ((v17 & 4) != 0)
        {
          v18 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
        }

        else
        {
          v18 = *a2;
        }
      }

      else
      {
        v18 = v26;
      }

      v19 = *(a3 + 1);
      if (v19)
      {
        if ((v19 & 4) != 0)
        {
          v20 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a3);
        }

        else
        {
          v20 = *a3;
        }
      }

      else
      {
        v20 = v26;
      }

      v22 = *v18;
      v21 = v18[1];
      if (v21 != *v18)
      {
        v23 = 0;
        do
        {
          v24 = (v22 + 8 * v23);
          if (*v24 && *(*v20 + 8 * v23))
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a4, v24, &v25);
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a6, (*v20 + 8 * v23), v29);
            sub_29A32496C(a8, &v25, v29);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v29 + 1);
            sub_29A1DE3A4(v29);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
            sub_29A1DE3A4(&v25);
            v22 = *v18;
            v21 = v18[1];
          }

          ++v23;
        }

        while (v23 < (v21 - v22) >> 3);
      }

      if (a7)
      {
        sub_29A1DA6E4(a5);
      }

      v25 = v26;
      sub_29A124AB0(&v25);
    }
  }
}

void sub_29A324870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A186B14(v16 - 112);
  *(v16 - 112) = &a16;
  sub_29A124AB0((v16 - 112));
  _Unwind_Resume(a1);
}

void *sub_29A324910(void *result, uint64_t a2)
{
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {

      return sub_29A1854E8(result, a2);
    }
  }

  else if (*(result + 16))
  {
    result = sub_29A186B14(result);
    *(result + 16) = 0;
  }

  else
  {
    result = sub_29A186EF4(result, a2);
    *(result + 16) = 1;
  }

  return result;
}

_DWORD *sub_29A32496C(void *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = 32 * (v7 - v6) - 1;
  if (v7 == v6)
  {
    v8 = 0;
  }

  if (v8 == a1[5] + a1[4])
  {
    sub_29A324A10(a1);
    v6 = a1[1];
    v7 = a1[2];
  }

  if (v7 == v6)
  {
    v10 = 0;
  }

  else
  {
    v9 = a1[5] + a1[4];
    v10 = (*(v6 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9);
  }

  result = sub_29A23E7D8(v10, a2, a3);
  ++a1[5];
  return result;
}

void sub_29A324A10(void *a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x100;
  v4 = v2 - 256;
  if (v3)
  {
    a1[4] = v4;
    v5 = a1[1];
    v8 = *v5;
    v6 = v5 + 1;
    v7 = v8;
LABEL_4:
    *&v30 = v7;
    a1[1] = v6;
    sub_29A3219D8(a1, &v30);
    return;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = *a1;
  v12 = a1[1];
  v13 = (v9 - v12);
  v14 = &v10[-*a1];
  if (v9 - v12 < v14)
  {
    v15 = operator new(0x1000uLL);
    v16 = v15;
    if (v10 != v9)
    {
      *v9 = v15;
      a1[2] += 8;
      return;
    }

    if (v12 != v11)
    {
      v22 = v12;
LABEL_29:
      *(v22 - 1) = v16;
      v6 = a1[1];
      a1[1] = v6 - 1;
      v7 = *(v6 - 1);
      goto LABEL_4;
    }

    if (v9 == v12)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v10 - v12) >> 2;
    }

    if (!(v23 >> 61))
    {
      v24 = operator new(8 * v23);
      v22 = &v24[(2 * v23 + 6) & 0xFFFFFFFFFFFFFFF8];
      v25 = v22;
      if (v9 != v12)
      {
        v25 = &v13[v22];
        v26 = &v24[(2 * v23 + 6) & 0xFFFFFFFFFFFFFFF8];
        v27 = v12;
        do
        {
          v28 = *v27;
          v27 += 8;
          *v26 = v28;
          v26 += 8;
          v13 -= 8;
        }

        while (v13);
      }

      *a1 = v24;
      a1[1] = v22;
      a1[2] = v25;
      a1[3] = &v24[8 * v23];
      if (v12)
      {
        operator delete(v11);
        v22 = a1[1];
      }

      goto LABEL_29;
    }

LABEL_30:
    sub_29A00C8B8();
  }

  v17 = v14 >> 2;
  if (v10 == v11)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v32 = a1;
  if (v18 >> 61)
  {
    goto LABEL_30;
  }

  *&v30 = operator new(8 * v18);
  *(&v30 + 1) = &v13[v30];
  *&v31 = &v13[v30];
  *(&v31 + 1) = v30 + 8 * v18;
  v29 = operator new(0x1000uLL);
  sub_29A3219D8(&v30, &v29);
  for (i = a1[2]; i != a1[1]; sub_29A321AE4(&v30, i))
  {
    --i;
  }

  v20 = *a1;
  v21 = v31;
  *a1 = v30;
  *(a1 + 1) = v21;
  if (v20)
  {
    operator delete(v20);
  }
}

void sub_29A324BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A324C18(uint64_t a1, uint64_t *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1E1F54(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A324CA0(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

_BYTE *sub_29A324CA0(_BYTE *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_29A324D54((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_29A324D54((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    sub_29A324D54((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    sub_29A324D54((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
    sub_29A324D54((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    sub_29A324D54((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  }

  return a1;
}

_DWORD *sub_29A324D54(uint64_t a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    sub_29A1E23D4(a1);
    if (a4 >> 61)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A00C968(a1, v11);
    result = sub_29A1E2158(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 3)
  {
    sub_29A23E240(&v17, a2, (a2 + v13), v8);
    result = sub_29A1E2158(a1, (a2 + v13), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29A23E240(&v18, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v16 -= 2;
      result = sub_29A1E230C(a1, v16);
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
  return result;
}

__n128 sub_29A324E9C(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A204AAD0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A324EE8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204AAD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

_DWORD *sub_29A324F18@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v5, a2, *(a1 + 8), *(a1 + 16), 1);
  sub_29A1DDD84(a3, &v5);
  sub_29A1DDDC0((a3 + 4), &v5 + 1);
  *(a3 + 8) = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5 + 1);
  return sub_29A1DE3A4(&v5);
}

uint64_t sub_29A324F98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204AB30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A324FEC(uint64_t a1, uint64_t *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1EF0BC(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A325074(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

_BYTE *sub_29A325074(_BYTE *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_29A325158((a1 + 8), *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    sub_29A325158((a1 + 32), *(a2 + 32), *(a2 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    sub_29A325158((a1 + 56), *(a2 + 56), *(a2 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
    sub_29A325158((a1 + 80), *(a2 + 80), *(a2 + 88), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
    sub_29A325158((a1 + 104), *(a2 + 104), *(a2 + 112), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 112) - *(a2 + 104)) >> 3));
    sub_29A325158((a1 + 128), *(a2 + 128), *(a2 + 136), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 136) - *(a2 + 128)) >> 3));
  }

  return a1;
}

void sub_29A325158(uint64_t a1, std::string *__str, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A3252D8(a1);
    if (a4 > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    sub_29A044EF0(a1, v10);
    v11 = sub_29A246288(a1, __str, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v12 >> 3) < a4)
  {
    sub_29A325344(&v16, __str, (__str + v12), v8);
    v11 = sub_29A246288(a1, (__str + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29A325344(&v17, __str, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 56;
      sub_29A244A44(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void sub_29A3252D8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        sub_29A244A44(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *sub_29A325344(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    sub_29A2258F0(&this[1], &v5[1]);
    sub_29A225948(this[1].__r_.__value_.__r.__words + 1, v5[1].__r_.__value_.__r.__words + 1);
    *&this[1].__r_.__value_.__r.__words[1] = *&v5[1].__r_.__value_.__r.__words[1];
    pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&this[2], &v5[2]);
    this = (this + 56);
    v5 = (v5 + 56);
  }

  while (v5 != v6);
  return v6;
}

__n128 sub_29A3253DC(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A204AB88;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29A325430(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204AB88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A325470(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204AC08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A3254BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*a1)(__p, a2, *(a1 + 8), *(a1 + 16));
  sub_29A32553C(a3, __p);
  sub_29A184A10(&v8, 0);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v7);
  sub_29A1DE3A4(&v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_29A32553C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_29A1DDD84((a1 + 24), a2 + 6);
  sub_29A1DDDC0((a1 + 28), a2 + 7);
  *(a1 + 32) = a2[2];
  v5 = *(a2 + 6);
  *(a2 + 6) = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = 1;
  return a1;
}

uint64_t sub_29A3255A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_29A325630(uint64_t a1, uint64_t *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A1EF030(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    sub_29A3256B8(*(a1 + 8), v5);
    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

_BYTE *sub_29A3256B8(_BYTE *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_29A325794((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
    sub_29A325794((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
    sub_29A325794((a1 + 56), *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 4));
    sub_29A325794((a1 + 80), *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
    sub_29A325794((a1 + 104), *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 4));
    sub_29A325794((a1 + 128), *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 4));
  }

  return a1;
}

void sub_29A325794(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_29A325904(a1);
    if (a4 > 0x555555555555555)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    sub_29A1C11FC(a1, v10);
    v11 = sub_29A24A524(a1, __str, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 4) < a4)
  {
    sub_29A325970(&v16, __str, (__str + v12), v8);
    v11 = sub_29A24A524(a1, __str + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29A325970(&v17, __str, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 48;
      sub_29A248FFC(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void sub_29A325904(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_29A248FFC(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *sub_29A325970(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    sub_29A2258F0(&this[1], &v5[1]);
    sub_29A225948(this[1].__r_.__value_.__r.__words + 1, v5[1].__r_.__value_.__r.__words + 1);
    *&this[1].__r_.__value_.__r.__words[1] = *&v5[1].__r_.__value_.__r.__words[1];
    this += 2;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

__n128 sub_29A3259FC(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A204AC68;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29A325A50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204AC68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A325A90(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204ACE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A325ADC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*a1)(__p, a2, *(a1 + 8), *(a1 + 16));
  *a3 = *__p;
  *(a3 + 16) = v5;
  __p[1] = 0;
  v5 = 0;
  __p[0] = 0;
  sub_29A1DDD84((a3 + 24), &v6);
  sub_29A1DDDC0((a3 + 28), &v7);
  *(a3 + 32) = v8;
  *(a3 + 48) = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v7);
  sub_29A1DE3A4(&v6);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_29A325B84(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_29A325C0C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A325CA0(a2))
  {
    v4 = a2[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a1 + 8);
    if (v6 != v5)
    {
      sub_29A325D2C(v6, *v5, (v5 + 8));
    }

    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_29A325CA0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B485600 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2049070);
}

uint64_t **sub_29A325D2C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v17[0] = v8 + 7;
          v17[1] = v8 + 9;
          sub_29A325F24(v17, v9 + 7);
          sub_29A325EA0(v5, v16);
          v16 = v15;
          if (v15)
          {
            v15 = sub_29A028760(v15);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v16;
          if (v16)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = sub_29A325F88(&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A325FE0(v5, a2 + 7);
      v12 = a2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = a2[2];
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_29A325E8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A325F88(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A325EA0(uint64_t **a1, uint64_t *a2)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  sub_29A00B204(a1, (a1 + 1), a1 + 1, a2);
  return a2;
}

int **sub_29A325F24(int **a1, _DWORD *a2)
{
  v4 = *a1;
  sub_29A2258F0(*a1, a2);
  sub_29A225948(v4 + 1, a2 + 1);
  v5 = a1[1];
  sub_29A2258F0(v5, a2 + 2);
  sub_29A225948(v5 + 1, a2 + 3);
  return a1;
}

uint64_t sub_29A325F88(uint64_t a1)
{
  sub_29A1EF938(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29A1EF938(*a1, v2);
  }

  return a1;
}

uint64_t *sub_29A325FE0(uint64_t **a1, _DWORD *a2)
{
  v5 = operator new(0x30uLL);
  sub_29A23F744(v5 + 7, a2);
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  sub_29A00B204(a1, (a1 + 1), a1 + 1, v5);
  return v5;
}

void sub_29A326094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3260AC(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A3260AC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A1EF8E4(v2 + 7);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29A326108(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A1EF804(a1, &v10);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    v11 = *a4;
    sub_29A32619C(v7 + 7, &v11);
    sub_29A00B204(a1, v10, v8, v7);
  }

  return v7;
}

_DWORD *sub_29A32619C(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1E21F4(a1, *a2);
  sub_29A1E2240(v4 + 1, (v3 + 4));
  *(a1 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a1 + 3);
  return a1;
}

uint64_t *sub_29A3261F4(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  if ((sub_29A325CA0(a1) & 1) == 0)
  {
    v7[0] = 0;
    v7[1] = 0;
    v6 = v7;
    sub_29A326278(a1, &v6);
    sub_29A1EF938(&v6, v7[0]);
  }

  v4 = sub_29A326348(a1);
  return sub_29A13F534(v4, a2);
}

void *sub_29A326278(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2048FB8;
  sub_29A23F794(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A32630C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A326348(uint64_t *a1)
{
  if ((a1[1] & 4) != 0)
  {
    sub_29B2990A4();
  }

  return sub_29A23F508(a1);
}

uint64_t sub_29A32638C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *(a1 + 24) = 0;
  if (sub_29A23DDC0(a2))
  {
    v4 = *(a2 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v5 = *a2;
    }

    if (*(a1 + 8) != v5)
    {
      sub_29A324D54(*(a1 + 8), *v5, v5[1], (v5[1] - *v5) >> 3);
    }

    return 1;
  }

  else
  {
    result = sub_29A2F1FA8(a2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t *sub_29A326428(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A23DDC0(a1) & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_29A3264D8(a1);
  }

  result = sub_29A3265A8(a1);
  v5 = *result;
  *result = *a2;
  *a2 = v5;
  v6 = result[1];
  result[1] = a2[1];
  a2[1] = v6;
  v7 = result[2];
  result[2] = a2[2];
  a2[2] = v7;
  return result;
}

void sub_29A3264C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1E234C(va);
  _Unwind_Resume(a1);
}

void sub_29A3264D8(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  sub_29A186978(v2, a1);
  *(a1 + 8) = &off_2A2048F00;
  sub_29A23E64C();
}

void sub_29A32656C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A3265A8(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    sub_29B299110();
  }

  return sub_29A23E56C(a1);
}

__n128 sub_29A3265EC(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A204AD80;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29A326640(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204AD80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A3266E0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204AE00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A32672C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_29A3267B4(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A204AE28;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29A326808(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A204AE28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A3268A4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A204AEA8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A3268F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_29A326970@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  result[1] = v2;
  return result;
}

void *sub_29A32697C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  result[1] = v2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfData::~SdfData(pxrInternal__aapl__pxrReserved__::SdfData *this)
{
  *this = &unk_2A204AED0;
  v2 = this + 48;
  sub_29A3269F0(this + 48);
  sub_29A3283C8(v2);

  pxrInternal__aapl__pxrReserved__::SdfAbstractData::~SdfAbstractData(this, v3);
}

{
  pxrInternal__aapl__pxrReserved__::SdfData::~SdfData(this);

  operator delete(v1);
}

uint64_t sub_29A3269F0(uint64_t a1)
{
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  sub_29A1C04D0(v3, a1);
  if ((pxrInternal__aapl__pxrReserved__::Work_ShouldSynchronizeAsyncDestroyCalls(v1) & 1) == 0)
  {
    sub_29A328720(v3);
  }

  return sub_29A3283C8(v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::EraseSpec(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = sub_29A2F4F50(this + 6, a2);
  if (v4)
  {
    return sub_29A328B20(this + 6, v4);
  }

  result = sub_29B29917C(v6, a2);
  if (result)
  {
    return sub_29A328B20(this + 6, v4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::MoveSpec(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = sub_29A2F4F50(this + 6, a2);
  if (v6 || (result = sub_29B2991F0(v16, a2), (result & 1) != 0))
  {
    sub_29A328494(&v10, a3, v6 + 3);
    sub_29A3286C0(&v13, &v10);
    sub_29A328BD8(this + 48, &v13, &v13);
    v8 = v7;
    v17 = &v15;
    sub_29A321878(&v17);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v14);
    sub_29A1DE3A4(&v13);
    v17 = &v12;
    sub_29A321878(&v17);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11);
    sub_29A1DE3A4(&v10);
    if (v8)
    {
      return sub_29A328B20(this + 6, v6);
    }

    result = sub_29B299274(&v13);
    if (result)
    {
      return sub_29A328B20(this + 6, v6);
    }
  }

  return result;
}

void sub_29A326C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A326C38(&a14);
  sub_29A326C84(&a9);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A326C38(uint64_t a1)
{
  v3 = (a1 + 16);
  sub_29A321878(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

_DWORD *sub_29A326C84(uint64_t a1)
{
  v3 = (a1 + 16);
  sub_29A321878(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfData::GetSpecType(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = sub_29A328A44(this + 6, a2);
  if (result)
  {
    return *(result + 6);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::CreateSpec(uint64_t a1, _DWORD *a2, int a3)
{
  if (a3 || (result = sub_29B2992C0(v7), (result & 1) != 0))
  {
    v8 = a2;
    result = sub_29A328F0C(a1 + 48, a2, &unk_29B4D6118, &v8);
    *(result + 24) = a3;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::_VisitSpecs(uint64_t this, pxrInternal__aapl__pxrReserved__::SdfAbstractDataSpecVisitor *a2)
{
  v5 = *(this + 64);
  v6 = 0;
  if (v5)
  {
    v3 = this;
    do
    {
      v4 = sub_29A326DF0(&v5);
      this = (*(*a2 + 16))(a2, v3, *v4 + 16);
      if (!this)
      {
        break;
      }

      this = sub_29A326E28(&v5);
    }

    while (v5 != v6);
  }

  return this;
}

void *sub_29A326DF0(void *result)
{
  if (*result == result[1])
  {
    sub_29B29930C();
  }

  return result;
}

uint64_t sub_29A326E28(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfData::_SpecData, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::TfHashMap<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfData::_SpecData, pxrInternal__aapl__pxrReserved__::SdfPath::Hash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::Has(pxrInternal__aapl__pxrReserved__::SdfData *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (***a4)(void, uint64_t))
{
  result = pxrInternal__aapl__pxrReserved__::SdfData::_GetFieldValue(a1, a2, a3);
  if (result)
  {
    if (a4)
    {
      v6 = **a4;

      return v6(a4, result);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdfData::_GetFieldValue(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  result = sub_29A328A44(this + 6, a2);
  if (result)
  {
    v5 = result[4];
    v6 = result[5];
    if (v5 == v6)
    {
      return 0;
    }

    else
    {
      while ((*a3 ^ *v5) >= 8)
      {
        v5 += 3;
        if (v5 == v6)
        {
          return 0;
        }
      }

      return v5 + 1;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfData::Has(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  FieldValue = pxrInternal__aapl__pxrReserved__::SdfData::_GetFieldValue(this, a2, a3);
  v6 = FieldValue;
  if (a4 && FieldValue)
  {
    sub_29A1854E8(a4, FieldValue);
  }

  return v6 != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::HasSpecAndField(uint64_t a1, unsigned int *a2, void *a3, uint64_t (***a4)(void, uint64_t), _DWORD *a5)
{
  result = pxrInternal__aapl__pxrReserved__::SdfData::_GetSpecTypeAndFieldValue(a1, a2, a3, a5);
  if (result)
  {
    if (a4)
    {
      v7 = **a4;

      return v7(a4, result);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdfData::_GetSpecTypeAndFieldValue(uint64_t a1, unsigned int *a2, void *a3, _DWORD *a4)
{
  result = sub_29A328A44((a1 + 48), a2);
  if (result)
  {
    *a4 = *(result + 6);
    v7 = result[4];
    v8 = result[5];
    if (v7 == v8)
    {
      return 0;
    }

    else
    {
      while ((*a3 ^ *v7) >= 8)
      {
        v7 += 3;
        if (v7 == v8)
        {
          return 0;
        }
      }

      return v7 + 1;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfData::HasSpecAndField(uint64_t a1, unsigned int *a2, void *a3, void *a4, _DWORD *a5)
{
  SpecTypeAndFieldValue = pxrInternal__aapl__pxrReserved__::SdfData::_GetSpecTypeAndFieldValue(a1, a2, a3, a5);
  v7 = SpecTypeAndFieldValue;
  if (a4 && SpecTypeAndFieldValue)
  {
    sub_29A1854E8(a4, SpecTypeAndFieldValue);
  }

  return v7 != 0;
}

void *pxrInternal__aapl__pxrReserved__::SdfData::_GetMutableFieldValue(uint64_t a1, unsigned int *a2, void *a3)
{
  result = sub_29A2F4F50((a1 + 48), a2);
  if (result)
  {
    v5 = result[4];
    v6 = result[5] - v5;
    if (v6)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      for (result = (v5 + 8); (*a3 ^ *(result - 1)) > 7; result += 3)
      {
        if (!--v7)
        {
          return 0;
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

void *pxrInternal__aapl__pxrReserved__::SdfData::Get@<X0>(pxrInternal__aapl__pxrReserved__::SdfData *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfData::_GetFieldValue(this, a2, a3);
  if (result)
  {

    return sub_29A186EF4(a4, result);
  }

  else
  {
    a4[1] = 0;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdfData::Set(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  sub_29A0ECEEC(&v9, "Sdf", "SdfData::Set");
  if (*(a4 + 1))
  {
    result = pxrInternal__aapl__pxrReserved__::SdfData::_GetOrCreateFieldValue(this, a2, a3);
    if (result)
    {
      result = sub_29A1854E8(result, a4);
    }
  }

  else
  {
    result = (*(*this + 168))(this, a2, a3);
  }

  if (v9)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdfData::_GetOrCreateFieldValue(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v5 = sub_29A2F4F50(this + 6, a2);
  if (!v5 && (sub_29B299358(v12, a2, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v5[4];
  v6 = v5[5];
  if (v7 == v6)
  {
LABEL_5:
    v11 = a3;
    if (v6 >= v5[6])
    {
      v9 = sub_29A3291D4((v5 + 4), &unk_29B4D6118, &v11);
    }

    else
    {
      v8 = *a3;
      *v6 = *a3;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v6 &= 0xFFFFFFFFFFFFFFF8;
      }

      v6[2] = 0;
      v9 = (v6 + 3);
    }

    v5[5] = v9;
    return (v9 - 16);
  }

  else
  {
    while ((*a3 ^ *v7) >= 8)
    {
      v7 += 3;
      if (v7 == v6)
      {
        goto LABEL_5;
      }
    }

    return v7 + 1;
  }
}

void *pxrInternal__aapl__pxrReserved__::SdfData::Set(pxrInternal__aapl__pxrReserved__::SdfData *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (***a4)(void))
{
  sub_29A0ECEEC(&v9, "Sdf", "SdfData::Set");
  result = pxrInternal__aapl__pxrReserved__::SdfData::_GetOrCreateFieldValue(a1, a2, a3);
  if (result)
  {
    result = (**a4)(a4);
  }

  if (v9)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::SdfData::Erase(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  result = sub_29A2F4F50(this + 6, a2);
  if (result)
  {
    v6 = result[4];
    v7 = result[5];
    v5 = (result + 4);
    if (v7 != v6)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * (v7 - v6);
      while ((*a3 ^ *v6) > 7)
      {
        v6 += 3;
        if (!--v8)
        {
          return result;
        }
      }

      if (v6 + 3 != v7)
      {
        do
        {
          v9 = v6 + 3;
          sub_29A322194(v6, v6 + 3);
          v10 = v6 + 6;
          v6 += 3;
        }

        while (v10 != v7);
        v6 = v9;
      }

      return sub_29A3218CC(v5, v6);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfData::List(pxrInternal__aapl__pxrReserved__::SdfData *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = sub_29A328A44(this + 6, a2);
  v5 = v4;
  if (v4)
  {
    v7 = v4[4];
    v6 = v4[5];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    sub_29A3275DC(a3, v8);
    if (v6 != v7)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        sub_29A166F2C((*a3 + v9), (v5[4] + v10));
        v10 += 24;
        v9 += 8;
        --v8;
      }

      while (v8);
    }
  }
}

void sub_29A3275C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void sub_29A3275DC(void *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = (v2 - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      v4 = *a1 + 8 * a2;
      while (v2 != v4)
      {
        v6 = *(v2 - 8);
        v2 -= 8;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      a1[1] = v4;
    }
  }

  else
  {
    sub_29A329328(a1, a2 - v3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::ListAllTimeSamples@<X0>(uint64_t this@<X0>, uint64_t *a2@<X8>)
{
  v2 = this;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = (a2 + 1);
  v7 = *(this + 64);
  v8 = 0;
  while (v7 != v8)
  {
    v4 = sub_29A326DF0(&v7);
    (*(*v2 + 248))(&v5, v2, *v4 + 16);
    sub_29A327720(a2, v5, v6);
    sub_29A082B84(&v5, *&v6[0]);
    this = sub_29A326E28(&v7);
  }

  return this;
}

void sub_29A3276F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_29A082B84(&a10, a11);
  sub_29A082B84(v11, *(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t *sub_29A327720(uint64_t *result, double *a2, double *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29A329428(v5, v5 + 1, v4 + 4, v4 + 4);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::ListTimeSamplesForPath@<X0>(pxrInternal__aapl__pxrReserved__::SdfData *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  *a3 = a3 + 8;
  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens))
  {
    sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  }

  (*(*this + 136))(&v12, this, a2);
  if (sub_29A1F650C(&v12))
  {
    if ((v13 & 4) != 0)
    {
      v7 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
    }

    else
    {
      v7 = v12;
    }

    v10 = *v7;
    v11 = v7 + 1;
    while (v10 != v11)
    {
      v8 = sub_29A327910(&v10);
      sub_29A99E5B8(a3, (*v8 + 32), (*v8 + 32));
      sub_29A327948(&v10);
    }
  }

  return sub_29A186B14(&v12);
}

void sub_29A3278E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  sub_29A082B84(v4, *(v4 + 8));
  _Unwind_Resume(a1);
}

void *sub_29A327910(void *result)
{
  if (*result == result[1])
  {
    sub_29B2993F8();
  }

  return result;
}

void *sub_29A327948(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<double, pxrInternal__aapl__pxrReserved__::VtValue>>::operator++() [T = const std::map<double, pxrInternal__aapl__pxrReserved__::VtValue>, Reverse = false]";
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

BOOL pxrInternal__aapl__pxrReserved__::SdfData::GetBracketingTimeSamples(pxrInternal__aapl__pxrReserved__::SdfData *this, double a2, double *a3, double *a4)
{
  (*(*this + 240))(&v21);
  v7 = v23;
  if (v23)
  {
    v8 = *(v21 + 32);
    if (v8 < a2)
    {
      v9 = &v22;
      v10 = v22;
      if (v22)
      {
        v11 = v22;
        do
        {
          v12 = v11;
          v11 = *(v11 + 1);
        }

        while (v11);
      }

      else
      {
        v13 = &v22;
        do
        {
          v12 = v13[2];
          v14 = *v12 == v13;
          v13 = v12;
        }

        while (v14);
      }

      if (v12[4] > a2)
      {
        if (v22)
        {
          do
          {
            v15 = v10[4];
            if (v15 >= a2)
            {
              v9 = v10;
            }

            v10 = *&v10[v15 < a2];
          }

          while (v10);
        }

        v8 = v9[4];
        *a4 = v8;
        if (v8 != a2)
        {
          v16 = *v9;
          if (*v9)
          {
            do
            {
              v17 = *&v16;
              v16 = *(*&v16 + 8);
            }

            while (v16 != 0.0);
          }

          else
          {
            do
            {
              v17 = *(v9 + 2);
              v14 = *v17 == v9;
              v9 = v17;
            }

            while (v14);
          }

          v8 = v17[4];
        }

        goto LABEL_26;
      }

      if (v22)
      {
        do
        {
          v18 = v10;
          v10 = *(v10 + 1);
        }

        while (v10);
      }

      else
      {
        do
        {
          v18 = *(v9 + 2);
          v14 = *v18 == v9;
          v9 = v18;
        }

        while (v14);
      }

      v8 = v18[4];
    }

    *a4 = v8;
LABEL_26:
    *a3 = v8;
  }

  v19 = v7 != 0;
  sub_29A082B84(&v21, v22);
  return v19;
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::SdfData::GetNumTimeSamplesForPath(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  if (!v4)
  {
    v4 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfData::_GetFieldValue(this, a2, v4);
  if (result)
  {
    v6 = result;
    if (sub_29A1F650C(result))
    {
      v7 = *(v6 + 1);
      if ((v7 & 4) != 0)
      {
        v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v6);
      }

      else
      {
        v8 = *v6;
      }

      return *(v8 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::GetBracketingTimeSamplesForPath(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3, double *a4, double *a5)
{
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  if (!v10)
  {
    v10 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfData::_GetFieldValue(this, a2, v10);
  if (result)
  {
    v12 = result;
    result = sub_29A1F650C(result);
    if (result)
    {
      v13 = *(v12 + 8);
      if ((v13 & 4) != 0)
      {
        v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(v12);
      }

      else
      {
        v14 = *v12;
      }

      if (!*(v14 + 2))
      {
        return 0;
      }

      v15 = *(*v14 + 32);
      if (v15 < a3)
      {
        v18 = *(v14 + 1);
        v16 = v14 + 1;
        v17 = v18;
        if (v18)
        {
          v19 = v17;
          do
          {
            v20 = v19;
            v19 = *(v19 + 1);
          }

          while (v19);
        }

        else
        {
          v21 = v16;
          do
          {
            v20 = *(v21 + 2);
            v22 = *v20 == v21;
            v21 = v20;
          }

          while (v22);
        }

        if (v20[4] > a3)
        {
          for (; v17; v17 = *&v17[v23 < a3])
          {
            v23 = v17[4];
            if (v23 >= a3)
            {
              v16 = v17;
            }
          }

          v15 = v16[4];
          *a5 = v15;
          if (v15 != a3)
          {
            v24 = *v16;
            if (*v16)
            {
              do
              {
                v25 = *&v24;
                v24 = *(*&v24 + 8);
              }

              while (v24 != 0.0);
            }

            else
            {
              do
              {
                v25 = *(v16 + 2);
                v22 = *v25 == v16;
                v16 = v25;
              }

              while (v22);
            }

            v15 = v25[4];
          }

          goto LABEL_33;
        }

        if (v17)
        {
          do
          {
            v26 = v17;
            v17 = *(v17 + 1);
          }

          while (v17);
        }

        else
        {
          do
          {
            v26 = *(v16 + 2);
            v22 = *v26 == v16;
            v16 = v26;
          }

          while (v22);
        }

        v15 = v26[4];
      }

      *a5 = v15;
LABEL_33:
      *a4 = v15;
      return 1;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::QueryTimeSample(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  if (!v8)
  {
    v8 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfData::_GetFieldValue(this, a2, v8);
  if (result)
  {
    v10 = result;
    result = sub_29A1F650C(result);
    if (result)
    {
      v11 = v10[1];
      if ((v11 & 4) != 0)
      {
        v12 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(v10);
      }

      else
      {
        v12 = *v10;
      }

      v15 = *(v12 + 8);
      v13 = v12 + 8;
      v14 = v15;
      if (!v15)
      {
        return 0;
      }

      v16 = v13;
      do
      {
        v17 = *(v14 + 32);
        if (v17 >= a3)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (v17 < a3));
      }

      while (v14);
      if (v16 == v13 || *(v16 + 32) > a3)
      {
        return 0;
      }

      else
      {
        if (a4)
        {
          sub_29A1854E8(a4, (v16 + 40));
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfData::QueryTimeSample(pxrInternal__aapl__pxrReserved__::SdfData *this, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t (***a3)(void, uint64_t), double a4)
{
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  if (!v8)
  {
    v8 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfData::_GetFieldValue(this, a2, v8);
  if (result)
  {
    v10 = result;
    result = sub_29A1F650C(result);
    if (result)
    {
      v11 = v10[1];
      if ((v11 & 4) != 0)
      {
        v12 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(v10);
      }

      else
      {
        v12 = *v10;
      }

      v15 = *(v12 + 8);
      v13 = v12 + 8;
      v14 = v15;
      if (!v15)
      {
        return 0;
      }

      v16 = v13;
      do
      {
        v17 = *(v14 + 32);
        if (v17 >= a4)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (v17 < a4));
      }

      while (v14);
      if (v16 == v13 || *(v16 + 32) > a4)
      {
        return 0;
      }

      else if (a3)
      {
        v18 = **a3;

        return v18(a3, v16 + 40);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfData::SetTimeSample(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v17[2] = *MEMORY[0x29EDCA608];
  v16 = a3;
  if (*(a4 + 1))
  {
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
    if (!v7)
    {
      v7 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
    }

    MutableFieldValue = pxrInternal__aapl__pxrReserved__::SdfData::_GetMutableFieldValue(this, a2, v7);
    v9 = MutableFieldValue;
    if (MutableFieldValue && sub_29A1F650C(MutableFieldValue))
    {
      v10 = sub_29A32953C(v9);
      sub_29A13F534(v10, &v14);
    }

    v17[0] = &v16;
    v11 = sub_29A2351D8(&v14, &v16, &unk_29B4D6118, v17);
    sub_29A1854E8(v11 + 5, a4);
    if (v9)
    {
      sub_29A3281D0(v9, &v14);
    }

    else
    {
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
      if (!v13)
      {
        v13 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
      }

      sub_29A328254(&v14, v17);
      (*(*this + 152))(this, a2, v13, v17);
      sub_29A186B14(v17);
    }

    sub_29A1F9B0C(&v14, v15[0]);
  }

  else
  {
    v12 = *(*this + 304);

    v12();
  }
}

void sub_29A3281A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A186B14(&a14);
  sub_29A1F9B0C(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A3281D0(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  if ((sub_29A1F650C(a1) & 1) == 0)
  {
    v7[0] = 0;
    v7[1] = 0;
    v6 = v7;
    sub_29A329578(a1, &v6);
    sub_29A1F9B0C(&v6, v7[0]);
  }

  v4 = sub_29A32953C(a1);
  return sub_29A13F534(v4, a2);
}

void pxrInternal__aapl__pxrReserved__::SdfData::EraseTimeSample(pxrInternal__aapl__pxrReserved__::SdfData *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, double a3)
{
  v14 = a3;
  v12 = 0;
  v13 = 0;
  v11 = &v12;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  if (!v5)
  {
    v5 = sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
  }

  MutableFieldValue = pxrInternal__aapl__pxrReserved__::SdfData::_GetMutableFieldValue(this, a2, v5);
  v7 = MutableFieldValue;
  if (MutableFieldValue && sub_29A1F650C(MutableFieldValue))
  {
    v8 = sub_29A32953C(v7);
    sub_29A13F534(v8, &v11);
    sub_29A329648(&v11, &v14);
    if (v13)
    {
      v9 = sub_29A32953C(v7);
      sub_29A13F534(v9, &v11);
    }

    else
    {
      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfDataTokens))
      {
        sub_29A3294B0(&pxrInternal__aapl__pxrReserved__::SdfDataTokens);
      }

      (*(*this + 168))(this, a2);
    }
  }

  sub_29A1F9B0C(&v11, v12);
}

uint64_t sub_29A3283C8(uint64_t a1)
{
  sub_29A328404(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A328404(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A328448((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29A328448(uint64_t a1)
{
  v3 = (a1 + 16);
  sub_29A321878(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A328494(uint64_t a1, _DWORD *a2, uint64_t **a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  v7 = *a3;
  *(a1 + 16) = 0;
  *(a1 + 8) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_29A32851C((a1 + 16), a3[1], a3[2], 0xAAAAAAAAAAAAAAABLL * (a3[2] - a3[1]));
  return a1;
}

uint64_t *sub_29A32851C(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29A3285A4(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A328584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A321878(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A3285A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A328648(v4, v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29A322058(v8);
  return v4;
}

uint64_t *sub_29A328648(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4(a1 + 1, a2 + 1);
  return a1;
}

uint64_t sub_29A3286C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1DDD84(a1, a2);
  sub_29A1DDDC0(v4 + 1, (a2 + 4));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sub_29A328720(uint64_t a1)
{
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  sub_29A1C04D0(v7, a1);
  HasConcurrency = pxrInternal__aapl__pxrReserved__::WorkHasConcurrency(v1);
  if (HasConcurrency)
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(HasConcurrency);
    v4 = sub_29A328870(DetachedDispatcher, v7);
    v5 = (***(v4 - 40))(*(v4 - 40), v4, v4 - 8);
    pxrInternal__aapl__pxrReserved__::Work_EnsureDetachedTaskProgress(v5);
  }

  else
  {
    sub_29A3287D0();
  }

  return sub_29A3283C8(v7);
}

void sub_29A3287D0()
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v3);
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v1 = sub_29A0FE7E0(&v3, 0);
  v4 = 0;
  v2 = sub_29A0ED084(v0 + 19, &v4);
  if (v2 != v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v0, v1, v2);
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v3);
}

uint64_t sub_29A328870(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v7[0] = 0;
  v7[1] = v4;
  v5 = tbb::internal::allocate_additional_child_of_proxy::allocate(v7, 0x38uLL);
  *(v5 - 11) = 1;
  *v5 = &unk_2A204B038;
  *(v5 + 24) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 40) = 1065353216;
  sub_29A1C04D0(v5 + 8, a2);
  *(v5 + 48) = a1 + 272;
  return v5;
}

void *sub_29A328908(void *a1)
{
  *a1 = &unk_2A204B038;
  sub_29A3283C8((a1 + 1));
  return a1;
}

void sub_29A32894C(void *a1)
{
  *a1 = &unk_2A204B038;
  sub_29A3283C8((a1 + 1));

  operator delete(a1);
}

uint64_t sub_29A3289A0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v6);
  sub_29A3287D0();
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v3 = v6;
  v4 = atomic_load((v2 + 144));
  if (v3 < v4 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v6, v2))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v6, *(a1 + 48));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v6);
  return 0;
}

void sub_29A328A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void *sub_29A328A44(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_29A328B20(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_29A328448(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_29A328B7C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A328448(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A328BD8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      result = *v8;
      if (*v8)
      {
        do
        {
          v10 = result[1];
          if (v10 == v5)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
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

  sub_29A328E20(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A328E08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A328B7C(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A328E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A328E90((v8 + 2), a3);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A328E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  v5 = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 8) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_29A32851C((a1 + 16), *(a2 + 16), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  return a1;
}

void *sub_29A328F0C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
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
            if (result[2] == *a2)
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

  sub_29A329154(a1, v6, a4, &v22);
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

void sub_29A32913C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A328B7C(va, 0);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A329154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v9 = *a3;
  sub_29A1E21F4(v8 + 4, v9);
  result = sub_29A1E2240(v8 + 5, v9 + 1);
  *(v8 + 6) = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[4] = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A3291D4(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A012C48(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[24 * v3];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[24 * v7];
  v10 = **a3;
  *v9 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v9 + 2) = 0;
  *&v19 = v9 + 24;
  v11 = *(a1 + 8);
  v12 = &v9[*a1 - v11];
  sub_29A321F84(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A3220F0(&v17);
  return v16;
}

void sub_29A329314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A3220F0(va);
  _Unwind_Resume(a1);
}

void sub_29A329328(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v16 = a1;
    if (v10)
    {
      v11 = sub_29A00C9BC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = &v11[8 * v8];
    v15 = &v11[8 * v10];
    bzero(v13, 8 * a2);
    v14 = &v13[8 * a2];
    sub_29A15412C(a1, &v12);
    sub_29A1541C0(&v12);
  }
}

void sub_29A329414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1541C0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A329428(uint64_t **a1, double *a2, double *a3, uint64_t *a4)
{
  v6 = sub_29A1F98A0(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x28uLL);
    v7[4] = *a4;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

pxrInternal__aapl__pxrReserved__::SdfDataTokens_StaticTokenType *sub_29A3294B0(atomic_ullong *a1)
{
  result = sub_29A3294F8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdfDataTokens_StaticTokenType::~SdfDataTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfDataTokens_StaticTokenType *sub_29A3294F8()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::SdfDataTokens_StaticTokenType::SdfDataTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29A32953C(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_29B299444(v2, a1);
  }

  return sub_29A25751C(a1);
}

void *sub_29A329578(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A20495E8;
  sub_29A2575EC(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A32960C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A329648(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    if (v5 >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (v5 < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_29A03AFE8(a1, v4);
  sub_29A186B14(v4 + 40);
  operator delete(v4);
  return 1;
}

uint64_t sub_29A3296D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  return a2;
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_CanCastToType(pxrInternal__aapl__pxrReserved__::Sdf_Identity **this, const pxrInternal__aapl__pxrReserved__::SdfSpec *a2, const std::type_info *a3)
{
  SpecType = pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(this);

  return pxrInternal__aapl__pxrReserved__::Sdf_SpecType::CanCast(SpecType, a2);
}

void *sub_29A329730(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 16), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29A32978C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens_StaticTokenType::~SdfFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens_StaticTokenType::SdfFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "target", 0);
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

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *&v14 = *MEMORY[0x29EDCA608];
  if (*(a5 + 23) < 0)
  {
    sub_29A008D14(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v13 = *(a5 + 16);
  }

  memset(v11, 0, sizeof(v11));
  sub_29A280C48(v11, __p, &v14, 1uLL);
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(a1, a2, a3, a4, v11, a6);
}

{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_2A204B080;
  *(a1 + 24) = a6;
  v8 = *a2;
  *(a1 + 32) = *a2;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *a4;
  *(a1 + 40) = *a4;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 40) &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  std::operator+<char>();
  v10 = *a3;
  *(a1 + 72) = *a3;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 72) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A329C48(_Unwind_Exception *a1, const void *a2)
{
  v5 = *(v2 + 72);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  v6 = *(v2 + 40);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(v2 + 32);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0F6078(v3, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(v2);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  *&v13 = *MEMORY[0x29EDCA608];
  if (*(a5 + 23) < 0)
  {
    sub_29A008D14(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v12 = *(a5 + 16);
  }

  memset(v10, 0, sizeof(v10));
  sub_29A280C48(v10, __p, &v13, 1uLL);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(a1, a2, a3, a4, v10, v9);
}

{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(a1, a2, a3, a4, a5, v5);
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(pxrInternal__aapl__pxrReserved__::SdfFileFormat *this)
{
  *this = &unk_2A204B080;
  v6 = (this + 80);
  sub_29A012C90(&v6);
  v3 = *(this + 9);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  v4 = *(this + 5);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 4);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0F6078(this + 2, v2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetDefaultFileFormatArguments(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::SdfFileFormat::_InitDetachedData@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x58uLL);
  v3 = pxrInternal__aapl__pxrReserved__::SdfAbstractData::SdfAbstractData(v2);
  *v2 = &unk_2A204AED0;
  v2[3] = 0u;
  v2[4] = 0u;
  *(v2 + 20) = 1065353216;
  v4 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v3);
  (*(*v2 + 64))(v2, v4, 7);
  *a1 = v2;
  v6 = 0;
  return sub_29A25FBBC(&v6);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::SdfFileFormat::InitDetachedData@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **a2@<X8>)
{
  (*(*a1 + 152))(&v8);
  v3 = v8;
  if (v8)
  {
    v4 = sub_29A2EDBE4(&v8);
    if (!(*(*v4 + 32))(v4))
    {
      v6[0] = "sdf/fileFormat.cpp";
      v6[1] = "InitDetachedData";
      v6[2] = 131;
      v6[3] = "SdfAbstractDataRefPtr pxrInternal__aapl__pxrReserved__::SdfFileFormat::InitDetachedData(const FileFormatArguments &) const";
      v7 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "File format did not return detached data object.");
      pxrInternal__aapl__pxrReserved__::SdfFileFormat::_InitDetachedData(a2);
      return sub_29A32BD28(&v8);
    }

    v3 = v8;
  }

  *a2 = v3;
  v8 = 0;
  return sub_29A32BD28(&v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfFileFormat::NewLayer@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 128))(a1);
  *a2 = result;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetPrimaryFileExtension(pxrInternal__aapl__pxrReserved__::SdfFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A173F8C8, memory_order_acquire) & 1) == 0)
  {
    sub_29B29960C();
  }

  result = *(this + 10);
  if (result == *(this + 11))
  {
    v3[0] = "sdf/fileFormat.cpp";
    v3[1] = "GetPrimaryFileExtension";
    v3[2] = 206;
    v3[3] = "const std::string &pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetPrimaryFileExtension() const";
    v4 = 0;
    if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "!_extensions.empty()", 0))
    {
      return *(this + 10);
    }

    else
    {
      return &qword_2A173F8D0;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfFileFormat::IsSupportedExtension(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFileExtension(a2, __p);
  v3 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  if (!v3)
  {
    v4 = 0;
    if ((v7 & 0x80) == 0)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = sub_29A32BD58(*(a1 + 80), *(a1 + 88), __p) != 0;
  if ((v7 & 0x80) != 0)
  {
LABEL_5:
    operator delete(__p[0]);
  }

  return v4;
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetFileExtension(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
      v9 = *a1;

      sub_29A008D14(a2, v9, 0);
      return;
    }
  }

  else if (!*(a1 + 23))
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    return;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_GetExtension(a1);
  v4 = v12;
  v5 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = v11;
  }

  if (v6)
  {
    p_p = &__p;
  }

  else
  {
    p_p = a1;
  }

  if (!v6)
  {
    v4 = *(a1 + 23);
  }

  if ((v4 & 0x80) == 0)
  {
    *a2 = *p_p;
    *(a2 + 16) = p_p[2];
    if ((v5 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v6)
  {
    v8 = v11;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  sub_29A008D14(a2, *p_p, v8);
  if ((v12 & 0x80) != 0)
  {
LABEL_15:
    operator delete(__p);
  }
}

void sub_29A32A430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetPackageRootLayerPath(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfFileFormat::ReadDetached(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2)
{
  result = (*(*a1 + 160))(a1);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_GetData(a2, &v4);
    sub_29A2ED97C(&v4);
  }

  return result;
}

{
  result = (*(*a1 + 168))(a1);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_GetData(a2, &v4);
    sub_29A2ED97C(&v4);
  }

  return result;
}

void sub_29A32A6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v23)
  {
    if (a17 < 0)
    {
      operator delete(__p);
    }

    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  sub_29B28E2DC(&a18);
  goto LABEL_8;
}

void sub_29A32A998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v23)
  {
    if (a17 < 0)
    {
      operator delete(__p);
    }

    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  sub_29B28E2DC(&a18);
  goto LABEL_8;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfFileFormat::_ReadDetached(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3, uint64_t a4)
{
  v37 = 0;
  v7 = pxrInternal__aapl__pxrReserved__::SdfFileFormat::_ReadAndCopyLayerDataToMemory(a1, a2, a3, a4, &v37);
  if (v7 && v37 == 1)
  {
    v8 = atomic_load(&qword_2A173F8C0);
    if (!v8)
    {
      v8 = sub_29A32BE04();
    }

    if (sub_29A32AE14(v8, a1))
    {
      v35[0] = "sdf/fileFormat.cpp";
      v35[1] = "_ReadDetached";
      v35[2] = 353;
      v35[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::SdfFileFormat::_ReadDetached(SdfLayer *, const std::string &, BOOL) const";
      v36 = 0;
      v9 = *(a1 + 32) & 0xFFFFFFFFFFFFFFF8;
      if (v9)
      {
        v10 = (v9 + 16);
        if (*(v9 + 39) < 0)
        {
          v10 = *v10;
        }
      }

      else
      {
        v10 = "";
      }

      Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(a2);
      v12 = *(Identifier + 23);
      if (v12 >= 0)
      {
        v13 = *(Identifier + 23);
      }

      else
      {
        v13 = Identifier[1];
      }

      v14 = *(a3 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a3 + 8);
      }

      if (v13 == v14)
      {
        if (v12 < 0)
        {
          Identifier = *Identifier;
        }

        if (v15 >= 0)
        {
          v16 = a3;
        }

        else
        {
          v16 = *a3;
        }

        if (!memcmp(Identifier, v16, v13) || !v13)
        {
          goto LABEL_23;
        }
      }

      else if (!v14)
      {
LABEL_23:
        v17 = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(a2);
        if (*(v17 + 23) >= 0)
        {
          v20 = v17;
        }

        else
        {
          v20 = *v17;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("@%s@", v18, v19, v20);
        v22 = 0;
        if (v34 >= 0)
        {
          p_p = &v33;
        }

        else
        {
          p_p = v33;
        }

        v24 = 1;
LABEL_41:
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v35, "File format plugin '%s' did not produce a detached layer when requested. Layer data has been copied to produce a detached layer, which may impact performance. The file format should be updated to avoid this issue. This was first encountered whenreading %s", v21, v10, p_p);
        if (v22 && v32 < 0)
        {
          operator delete(__p);
        }

        if (v24 && v34 < 0)
        {
          operator delete(v33);
        }

        return v7;
      }

      v25 = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(a2);
      if (*(v25 + 23) >= 0)
      {
        v28 = v25;
      }

      else
      {
        v28 = *v25;
      }

      if (*(a3 + 23) >= 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = *a3;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("@%s@ (%s)", v26, v27, v28, v29);
      v24 = 0;
      if (v32 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v22 = 1;
      goto LABEL_41;
    }
  }

  return v7;
}

void sub_29A32AC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (v18)
  {
    if (a16 < 0)
    {
      operator delete(__p);
    }

    if ((v17 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v17)
  {
    goto LABEL_8;
  }

  sub_29B28E2DC(&a17);
  goto LABEL_8;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfFileFormat::_ReadAndCopyLayerDataToMemory(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = (*(*a1 + 56))(a1);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_GetData(a2, v11);
    v9 = sub_29B2994C4(v11);
    if (v10 & 1 | v9)
    {
      sub_29A2ED97C(v11);
    }

    if (a5)
    {
      *a5 = 0;
    }

    sub_29B28F9E0(v11);
  }

  return v7;
}

void sub_29A32ADA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, atomic_uint *a12)
{
  operator delete(v12);
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A32AE14(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  sub_29A31B870(a1, (a2 + 32), (a2 + 32));
  LOBYTE(a2) = v4;
  std::mutex::unlock((a1 + 24));
  return a2 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfFileFormat::_ReadDetached(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = 0;
  v8 = pxrInternal__aapl__pxrReserved__::SdfFileFormat::_ReadAndCopyLayerDataToMemory(a1, a2, a3, a4, a5, &v38);
  if (v8 && v38 == 1)
  {
    v9 = atomic_load(&qword_2A173F8C0);
    if (!v9)
    {
      v9 = sub_29A32BE04();
    }

    if (sub_29A32AE14(v9, a1))
    {
      v36[0] = "sdf/fileFormat.cpp";
      v36[1] = "_ReadDetached";
      v36[2] = 383;
      v36[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::SdfFileFormat::_ReadDetached(SdfLayer *, const std::string &, const std::vector<std::byte> &, BOOL) const";
      v37 = 0;
      v10 = *(a1 + 32) & 0xFFFFFFFFFFFFFFF8;
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

      Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(a2);
      v13 = *(Identifier + 23);
      if (v13 >= 0)
      {
        v14 = *(Identifier + 23);
      }

      else
      {
        v14 = Identifier[1];
      }

      v15 = *(a3 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a3 + 8);
      }

      if (v14 == v15)
      {
        if (v13 < 0)
        {
          Identifier = *Identifier;
        }

        if (v16 >= 0)
        {
          v17 = a3;
        }

        else
        {
          v17 = *a3;
        }

        if (!memcmp(Identifier, v17, v14) || !v14)
        {
          goto LABEL_23;
        }
      }

      else if (!v15)
      {
LABEL_23:
        v18 = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(a2);
        if (*(v18 + 23) >= 0)
        {
          v21 = v18;
        }

        else
        {
          v21 = *v18;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("@%s@", v19, v20, v21);
        v23 = 0;
        if (v35 >= 0)
        {
          p_p = &v34;
        }

        else
        {
          p_p = v34;
        }

        v25 = 1;
LABEL_41:
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v36, "File format plugin '%s' did not produce a detached layer when requested. Layer data has been copied to produce a detached layer, which may impact performance. The file format should be updated to avoid this issue. This was first encountered whenreading %s", v22, v11, p_p);
        if (v23 && v33 < 0)
        {
          operator delete(__p);
        }

        if (v25 && v35 < 0)
        {
          operator delete(v34);
        }

        return v8;
      }

      v26 = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(a2);
      if (*(v26 + 23) >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = *v26;
      }

      if (*(a3 + 23) >= 0)
      {
        v30 = a3;
      }

      else
      {
        v30 = *a3;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("@%s@ (%s)", v27, v28, v29, v30);
      v25 = 0;
      if (v33 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v23 = 1;
      goto LABEL_41;
    }
  }

  return v8;
}

void sub_29A32B090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (v18)
  {
    if (a16 < 0)
    {
      operator delete(__p);
    }

    if ((v17 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v17)
  {
    goto LABEL_8;
  }

  sub_29B28E2DC(&a17);
  goto LABEL_8;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfFileFormat::_ReadAndCopyLayerDataToMemory(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = (*(*a1 + 64))(a1);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_GetData(a2, v12);
    v10 = sub_29B2994C4(v12);
    if (v11 & 1 | v10)
    {
      sub_29A2ED97C(v12);
    }

    if (a6)
    {
      *a6 = 0;
    }

    sub_29B28F9E0(v12);
  }

  return v8;
}

void sub_29A32B22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, atomic_uint *a12)
{
  operator delete(v12);
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetExternalAssetDependencies(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

BOOL pxrInternal__aapl__pxrReserved__::SdfFileFormat::SupportsReading(pxrInternal__aapl__pxrReserved__::SdfFileFormat *this)
{
  v2 = atomic_load(&qword_2A173F8B8);
  if (!v2)
  {
    v2 = sub_29A32BC50(&qword_2A173F8B8);
  }

  PrimaryFileExtension = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetPrimaryFileExtension(this);
  v4 = PrimaryFileExtension;
  if ((*(this + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(PrimaryFileExtension);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FormatSupportsReading(v2, v4, EmptyString);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfFileFormat::SupportsWriting(pxrInternal__aapl__pxrReserved__::SdfFileFormat *this)
{
  v2 = atomic_load(&qword_2A173F8B8);
  if (!v2)
  {
    v2 = sub_29A32BC50(&qword_2A173F8B8);
  }

  PrimaryFileExtension = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetPrimaryFileExtension(this);
  v4 = PrimaryFileExtension;
  if ((*(this + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(PrimaryFileExtension);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FormatSupportsWriting(v2, v4, EmptyString);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfFileFormat::SupportsEditing(pxrInternal__aapl__pxrReserved__::SdfFileFormat *this)
{
  v2 = atomic_load(&qword_2A173F8B8);
  if (!v2)
  {
    v2 = sub_29A32BC50(&qword_2A173F8B8);
  }

  PrimaryFileExtension = pxrInternal__aapl__pxrReserved__::SdfFileFormat::GetPrimaryFileExtension(this);
  v4 = PrimaryFileExtension;
  if ((*(this + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(PrimaryFileExtension);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FormatSupportsEditing(v2, v4, EmptyString);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindAllFileFormatExtensions@<X0>(uint64_t a1@<X8>)
{
  v3 = atomic_load(&qword_2A173F8B8);
  if (!v3)
  {
    v3 = sub_29A32BC50(&qword_2A173F8B8);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FindAllFileFormatExtensions(v3, a1);
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindAllDerivedFileFormatExtensions(pxrInternal__aapl__pxrReserved__::SdfFileFormat *this@<X0>, uint64_t a2@<X8>)
{
  v5 = atomic_load(&qword_2A173F8B8);
  if (!v5)
  {
    v5 = sub_29A32BC50(&qword_2A173F8B8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FindAllDerivedFileFormatExtensions(v5, this, a2);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfFileFormat::FormatSupportsReading(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(&qword_2A173F8B8);
  if (!v4)
  {
    v4 = sub_29A32BC50(&qword_2A173F8B8);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FormatSupportsReading(v4, a1, a2);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfFileFormat::FormatSupportsWriting(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(&qword_2A173F8B8);
  if (!v4)
  {
    v4 = sub_29A32BC50(&qword_2A173F8B8);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FormatSupportsWriting(v4, a1, a2);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfFileFormat::FormatSupportsEditing(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(&qword_2A173F8B8);
  if (!v4)
  {
    v4 = sub_29A32BC50(&qword_2A173F8B8);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FormatSupportsEditing(v4, a1, a2);
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(pxrInternal__aapl__pxrReserved__::SdfFileFormat *this@<X0>, uint64_t *a2@<X8>)
{
  v5 = atomic_load(&qword_2A173F8B8);
  if (!v5)
  {
    v5 = sub_29A32BC50(&qword_2A173F8B8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FindById(v5, this, a2);
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindByExtension(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = atomic_load(&qword_2A173F8B8);
  if (!v6)
  {
    v6 = sub_29A32BC50(&qword_2A173F8B8);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::FindByExtension(v6, a1, a2, a3);
}

void pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindByExtension(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
  if (!v6)
  {
    v6 = sub_29A32BEAC(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
  }

  v7 = sub_29A32B8E8(a2, v6);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStringTokenize(v7, ",", &__p);
    v8 = __p;
    v9 = v15;
    if (__p == v15)
    {
LABEL_14:
      v13.__r_.__value_.__r.__words[0] = &__p;
      sub_29A012C90(&v13);
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    while (1)
    {
      pxrInternal__aapl__pxrReserved__::TfStringTrim(" \n\t\r", v8, &v13);
      if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8->__r_.__value_.__l.__data_);
      }

      v10 = *&v13.__r_.__value_.__l.__data_;
      v8->__r_.__value_.__r.__words[2] = v13.__r_.__value_.__r.__words[2];
      *&v8->__r_.__value_.__l.__data_ = v10;
      if ((SHIBYTE(v8->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (!v8->__r_.__value_.__l.__size_)
        {
          goto LABEL_13;
        }
      }

      else if (!*(&v8->__r_.__value_.__s + 23))
      {
        goto LABEL_13;
      }

      pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindByExtension(a1, v8, a3);
      v11 = sub_29B299524(a3);
      if (v12 & 1 | v11)
      {
        v13.__r_.__value_.__r.__words[0] = &__p;
        sub_29A012C90(&v13);
        return;
      }

      sub_29B28CF5C(a3 + 1);
LABEL_13:
      if (++v8 == v9)
      {
        goto LABEL_14;
      }
    }
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindByExtension(a1, &__p, a3);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }
}

void sub_29A32B868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A32B8E8(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v4 = sub_29A01BCCC(a1, EmptyString);
  if ((a1 + 8) == v4)
  {
    return 0;
  }

  else
  {
    return v4 + 56;
  }
}

std::string *pxrInternal__aapl__pxrReserved__::SdfFileFormat::_SetLayerData(pxrInternal__aapl__pxrReserved__::SdfLayer *this, uint64_t *a2, char a3)
{
  if (*(this + 474))
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_GetData(this, &v8);
    v7 = sub_29A2EDBE4(a2);
    (*(*v7 + 24))(v7);
    sub_29A2ED97C(&v8);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfLayer::_SwapData(this, a2);
  *(this + 524) = a3;
  return result;
}

void sub_29A32BB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, atomic_uint *a12)
{
  if (a10 && atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a10 + 8))(a10);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::SdfFileFormat::_InstantiateNewLayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = operator new(0x210uLL);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SdfLayer(v11, a2, a3, a4, a5, a6, 0);
  return v11;
}

std::mutex *sub_29A32BC50(atomic_ullong *a1)
{
  result = sub_29A32BC98();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      v4 = sub_29A32BCDC(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry *sub_29A32BC98()
{
  v0 = operator new(0xC0uLL);
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatRegistry::Sdf_FileFormatRegistry(v0);
  return v0;
}

uint64_t sub_29A32BCDC(std::mutex *a1)
{
  std::mutex::~mutex(a1 + 2);
  sub_29A1E6830(&a1[1].__m_.__opaque[8]);
  sub_29A1E670C(&a1->__m_.__opaque[32]);

  return sub_29A1E678C(a1);
}

uint64_t sub_29A32BD58(const void **a1, const void **a2, const void **a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = a1;
  v3 = 0;
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  do
  {
    v9 = *(v5 + 23);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = v5[1];
    }

    if (v9 == v7)
    {
      if (v10 >= 0)
      {
        v11 = v5;
      }

      else
      {
        v11 = *v5;
      }

      if (!memcmp(v11, v8, v7))
      {
        ++v3;
      }
    }

    v5 += 3;
  }

  while (v5 != a2);
  return v3;
}

void *sub_29A32BE04()
{
  result = operator new(0x58uLL);
  v1 = 0;
  result[1] = 0;
  *result = result + 1;
  result[2] = 0;
  result[3] = 850045863;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  result[10] = 0;
  atomic_compare_exchange_strong(&qword_2A173F8C0, &v1, result);
  if (v1)
  {
    v2 = sub_29A32BE74(result);
    operator delete(v2);
    return atomic_load(&qword_2A173F8C0);
  }

  return result;
}

uint64_t sub_29A32BE74(uint64_t a1)
{
  std::mutex::~mutex((a1 + 24));
  sub_29A1602D4(a1, *(a1 + 8));
  return a1;
}

unint64_t sub_29A32BEAC(atomic_ullong *a1)
{
  v2 = sub_29A32BF2C();
  v3 = v2;
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    if (v2)
    {
      v6 = (v2 + 8);
      sub_29A124AB0(&v6);
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v3);
    }

    return atomic_load(a1);
  }

  return v3;
}

pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens_StaticTokenType *sub_29A32BF2C()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens_StaticTokenType::SdfFileFormatTokens_StaticTokenType(v0);
  return v0;
}

uint64_t *sub_29A32BF70(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B28D0B0(v4, &v6);
    }
  }

  return a1;
}

void sub_29A32BFD0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Identity::GetLayer(pxrInternal__aapl__pxrReserved__::Sdf_Identity *this)
{
  v3 = *(this + 2);
  if (v3)
  {
    return v3 + 80;
  }

  v5[1] = v1;
  v5[2] = v2;
  sub_29B2997BC(v5);
  return v5[0];
}

void pxrInternal__aapl__pxrReserved__::Sdf_Identity::_Forget(pxrInternal__aapl__pxrReserved__::Sdf_Identity *this)
{
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v1 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    sub_29A32C100(a1);
  }

  else if (a2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a2 + 2);
    sub_29A1DE3A4(a2 + 1);

    operator delete(a2);
  }
}

uint64_t sub_29A32C100(uint64_t result)
{
  if (atomic_fetch_add((result + 96), 1uLL) + 1 >= *(result + 104))
  {
    v1 = result;
    atomic_store(0, (result + 96));
    result = sub_29A0EB5BC(&v14, result + 112);
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    v4 = 0;
    if (v3)
    {
      v5 = (v2 + 4);
      while (1)
      {
        v6 = *v5;
        v5 += 12;
        if (v6 != -1)
        {
          break;
        }

        if (v3 == ++v4)
        {
          goto LABEL_21;
        }
      }
    }

    if (v4 != v3)
    {
      v7 = v2 + 24 * v4;
      do
      {
        if (atomic_load(*(v7 + 16)))
        {
          v9 = v7 + 24;
          do
          {
            v7 = v9;
            if (*(v9 - 18))
            {
              break;
            }

            v9 += 24;
          }

          while (*(v7 + 4) == -1);
        }

        else
        {
          v10 = *(v7 + 16);
          if (v10)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v10 + 2);
            sub_29A1DE3A4(v10 + 1);
            operator delete(v10);
          }

          result = sub_29A32C6AC(v1, v7);
          if (*(v7 + 4) == -1)
          {
            v11 = v7 + 24;
            do
            {
              v7 = v11;
              if (*(v11 - 18))
              {
                break;
              }

              v11 += 24;
            }

            while (*(v7 + 4) == -1);
          }
        }
      }

      while (v7 != *(v1 + 32) + 24 * *(v1 + 40));
    }

LABEL_21:
    v12 = *(v1 + 48) >> 3;
    if (v12 <= 0x40)
    {
      v12 = 64;
    }

    *(v1 + 104) = v12;
    v13 = v14;
    if (v14)
    {
      __dmb(0xBu);
      *v13 = 0;
    }
  }

  return result;
}

void sub_29A32C25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::Sdf_IdentityRegistry(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v5 = operator new(0x78uLL);
  sub_29B299750(v5, a2);
  a1[2] = v5;
  return a1;
}

void sub_29A32C2D0(_Unwind_Exception *a1)
{
  operator delete(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v4 + 8))(v4);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A32C338@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, atomic_uint **a3@<X8>)
{
  sub_29A0EB5BC(&v13, (a1 + 14));
  result = sub_29A32CB7C(a1, a2, bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))));
  if (a1[4] + 24 * a1[5] == result)
  {
    sub_29A0ECEEC(&v11, "Sdf", "Sdf_IdentityRegistry::Identify");
    v8 = operator new(0x18uLL);
    *v8 = 0;
    sub_29A1E21F4(v8 + 1, a2);
    sub_29A1E2240(v8 + 2, a2 + 1);
    *(v8 + 2) = a1;
    v14 = a2;
    result = sub_29A32CBE4(a1, a2, &unk_29B4D6118, &v14);
    *(result + 16) = v8;
    v9 = a1[6] >> 3;
    if (v9 <= 0x40)
    {
      v9 = 64;
    }

    a1[13] = v9;
    *a3 = v8;
    atomic_fetch_add(v8, 1u);
    if (v11)
    {
      result = pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
    }
  }

  else
  {
    v7 = *(result + 16);
    atomic_fetch_add(v7, 1u);
    *a3 = v7;
  }

  v10 = v13;
  if (v13)
  {
    __dmb(0xBu);
    *v10 = 0;
  }

  return result;
}

void sub_29A32C494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  if (a11)
  {
    __dmb(0xBu);
    *a11 = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A32C4CC(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  sub_29A0EB5BC(&v19, (a1 + 14));
  result = sub_29A32CB7C(a1, a2, bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))));
  if (a1[4] + 24 * a1[5] != result)
  {
    sub_29A1E21F4(&v14, a3);
    sub_29A1E2240(&v14 + 1, a3 + 1);
    v15 = 0;
    v7 = sub_29A32D290(a1, &v14, &v14);
    v9 = v8;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14 + 1);
    sub_29A1DE3A4(&v14);
    if ((v9 & 1) == 0)
    {
      v10 = *(v7 + 16);
      if (v10)
      {
        goto LABEL_4;
      }

      v14 = "sdf/identity.cpp";
      v15 = "MoveIdentity";
      v16 = 105;
      v17 = "void pxrInternal__aapl__pxrReserved__::Sdf_IdRegistryImpl::MoveIdentity(const SdfPath &, const SdfPath &)";
      v18 = 0;
      if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v14, "newIdStatus.first->second", 0))
      {
        v10 = *(v7 + 16);
LABEL_4:
        pxrInternal__aapl__pxrReserved__::Sdf_Identity::_Forget(v10);
      }
    }

    v11 = sub_29A32CB7C(a1, a2, bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))));
    v12 = *(v11 + 16);
    *(v7 + 16) = v12;
    sub_29A2258F0((v12 + 4), a3);
    sub_29A225948((v12 + 8), a3 + 1);
    result = sub_29A32C6AC(a1, v11);
  }

  v13 = v19;
  if (v19)
  {
    __dmb(0xBu);
    *v13 = 0;
  }

  return result;
}

void sub_29A32C66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _BYTE *a15)
{
  if (a15)
  {
    __dmb(0xBu);
    *a15 = 0;
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29A32C6AC(_DWORD *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4) != -1)
  {
    result = sub_29A32C7D0(a2);
    *(a2 + 4) = -1;
  }

  --*(v3 + 6);
  v4 = *(v3 + 4);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v4) >> 3);
  v6 = (v5 + 1) & *v3;
  v7 = (v4 + 24 * v6);
  v8 = *(v7 + 2);
  if (v8 >= 1)
  {
    do
    {
      v9 = v8 - 1;
      v10 = v4 + 24 * v5;
      v11 = *v7;
      sub_29A1DDD84((v10 + 8), v7 + 2);
      result = sub_29A1DDDC0((v10 + 12), v7 + 3);
      *(v10 + 16) = *(v7 + 2);
      *v10 = v11;
      *(v10 + 4) = v9;
      v4 = *(v3 + 4);
      v12 = v4 + 24 * v6;
      if (*(v12 + 4) != -1)
      {
        result = sub_29A32C7D0(v4 + 24 * v6);
        *(v12 + 4) = -1;
        v4 = *(v3 + 4);
      }

      v5 = v6;
      v6 = *v3 & (v6 + 1);
      v7 = (v4 + 24 * v6);
      v8 = *(v7 + 2);
    }

    while (v8 > 0);
  }

  *(v3 + 73) = 1;
  return result;
}

_DWORD *sub_29A32C7D0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 12));

  return sub_29A1DE3A4((a1 + 8));
}

_DWORD *sub_29A32C810(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29A32C850(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A32C9F4(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A32C9BC();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0xAAAAAAAAAAAAAABLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 18) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A32C994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A32CA80(va);
  _Unwind_Resume(a1);
}

int *sub_29A32C9BC()
{
  if ((atomic_load_explicit(&qword_2A14F6A38, memory_order_acquire) & 1) == 0)
  {
    sub_29B299850();
  }

  return &dword_2A14F6A20;
}

void *sub_29A32C9F4(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A012BFC(a1, a2);
    v4 = a1[1];
    v5 = v4 + 24 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 24;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

void sub_29A32CA80(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A32CAD4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29A32CAD4(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 24;
    do
    {
      if (*(v4 + 4) != -1)
      {
        result = sub_29A32C7D0(v4);
        *(v4 + 4) = -1;
      }

      v5 = v4 == v3;
      v4 -= 24;
    }

    while (!v5);
  }

  v1[1] = v3;
  return result;
}

uint64_t sub_29A32CB3C(uint64_t a1)
{
  if (*(a1 + 4) != -1)
  {
    sub_29A32C7D0(a1);
    *(a1 + 4) = -1;
  }

  return a1;
}

uint64_t sub_29A32CB7C(void *a1, void *a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = *a1 & a3;
  v5 = v3 + 24 * v4;
  if (*(v5 + 4) < 0)
  {
    return v3 + 24 * a1[5];
  }

  LOWORD(v6) = 0;
  while (*(v5 + 8) != *a2)
  {
    v6 = (v6 + 1);
    v4 = (v4 + 1) & *a1;
    v5 = v3 + 24 * v4;
    if (v6 > *(v5 + 4))
    {
      return v3 + 24 * a1[5];
    }
  }

  return v5;
}

uint64_t sub_29A32CBE4(uint64_t *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v8 = *a1;
  v9 = a1[4];
  v10 = v7 & *a1;
  result = v9 + 24 * v10;
  if (*(result + 4) < 0)
  {
    v12 = 0;
LABEL_7:
    while (sub_29A32CD9C(a1, v12))
    {
      v13 = a1[4];
      v10 = v7 & *a1;
      if (*(v13 + 24 * v10 + 4) < 0)
      {
        v12 = 0;
      }

      else
      {
        LOWORD(v12) = 0;
        do
        {
          v12 = (v12 + 1);
          v10 = (v10 + 1) & *a1;
        }

        while (v12 <= *(v13 + 24 * v10 + 4));
      }
    }

    v14 = a1[4] + 24 * v10;
    if (*(v14 + 4) == -1)
    {
      v15 = *a4;
      sub_29A1E21F4((v14 + 8), v15);
      sub_29A1E2240((v14 + 12), v15 + 1);
      *(v14 + 16) = 0;
      *v14 = v7;
      *(v14 + 4) = v12;
    }

    else
    {
      sub_29A32CE70(a1, v10, v12, v7, a3, a4);
    }

    ++a1[6];
    return a1[4] + 24 * v10;
  }

  else
  {
    LOWORD(v12) = 0;
    while (*(result + 8) != *a2)
    {
      v12 = (v12 + 1);
      v10 = (v10 + 1) & v8;
      result = v9 + 24 * v10;
      if (v12 > *(result + 4))
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_29A32CD9C(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A32CF18(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A32CF18(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

_DWORD *sub_29A32CE70(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5, _DWORD **a6)
{
  v10 = *a6;
  sub_29A1E21F4(&v12, *a6);
  sub_29A1E2240(&v13, (v10 + 4));
  v14 = 0;
  sub_29A32D120(a1, a2, a3, a4, &v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
  return sub_29A1DE3A4(&v12);
}

void sub_29A32CF18(uint64_t a1, unint64_t a2)
{
  sub_29A32C850(&v9, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v10[4];
    v6 = v3 + 2;
    do
    {
      if (*(v6 - 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v7 = bswap64(0x9E3779B97F4A7C55 * (v6[1] + ((v6[1] + *v6 + (v6[1] + *v6) * (v6[1] + *v6)) >> 1)));
        }

        else
        {
          v7 = *(v6 - 2);
        }

        sub_29A32D03C(&v9, v9 & v7, 0, v7, v6);
      }

      v8 = v6 + 4;
      v6 += 6;
    }

    while (v8 != v4);
  }

  v10[5] = *(a1 + 48);
  sub_29A10A4B4(&v9, a1);
  v11 = v10;
  sub_29A32CA80(&v11);
}

void sub_29A32D01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 72) = &a11;
  sub_29A32CA80((v11 - 72));
  _Unwind_Resume(a1);
}

_DWORD *sub_29A32D03C(void *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5)
{
  while (1)
  {
    v10 = a1[4] + 24 * a2;
    v11 = *(v10 + 4);
    if (v11 >= a3)
    {
      goto LABEL_4;
    }

    if (v11 == -1)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a5, (v10 + 8));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap((a5 + 4), (v10 + 12));
    v12 = *(a5 + 8);
    *(a5 + 8) = *(v10 + 16);
    *(v10 + 16) = v12;
    LOWORD(v12) = *(v10 + 4);
    *(v10 + 4) = a3;
    v13 = *v10;
    *v10 = a4;
    a3 = v12;
    a4 = v13;
LABEL_4:
    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  sub_29A1DDD84((v10 + 8), a5);
  result = sub_29A1DDDC0((v10 + 12), (a5 + 4));
  *(v10 + 16) = *(a5 + 8);
  *v10 = a4;
  *(v10 + 4) = a3;
  return result;
}

_DWORD *sub_29A32D120(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5)
{
  v10 = a1[4] + 24 * a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a5, (v10 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap((a5 + 4), (v10 + 12));
  v11 = *(a5 + 8);
  *(a5 + 8) = *(v10 + 16);
  *(v10 + 16) = v11;
  v12 = *(v10 + 4);
  *(v10 + 4) = a3;
  v13 = *v10;
  *v10 = a4;
  v14 = *a1;
  v15 = *a1 & (a2 + 1);
  v16 = v12 + 1;
  v17 = a1[4];
  v18 = (v17 + 24 * v15);
  v20 = (v18 + 1);
  v19 = *(v18 + 2);
  if (v19 != 0xFFFF)
  {
    do
    {
      if (v16 > v19)
      {
        if (v16 > 0x2000)
        {
          *(a1 + 72) = 1;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap(a5, v18 + 2);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap((a5 + 4), v18 + 3);
        v21 = *(a5 + 8);
        *(a5 + 8) = *(v18 + 2);
        *(v18 + 2) = v21;
        v22 = *v20;
        *v20 = v16;
        v23 = *v18;
        *v18 = v13;
        v14 = *a1;
        v17 = a1[4];
        v16 = v22;
        v13 = v23;
      }

      v15 = v14 & (v15 + 1);
      ++v16;
      v18 = (v17 + 24 * v15);
      v20 = (v18 + 1);
      LOWORD(v19) = *(v18 + 2);
    }

    while (v19 != 0xFFFF);
  }

  sub_29A1DDD84(v18 + 2, a5);
  result = sub_29A1DDDC0(v18 + 3, (a5 + 4));
  *(v18 + 2) = *(a5 + 8);
  *v18 = v13;
  *(v18 + 2) = v16;
  return result;
}

uint64_t sub_29A32D290(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v6 = *a1;
  v7 = a1[4];
  v8 = v5 & *a1;
  result = v7 + 24 * v8;
  if (*(result + 4) < 0)
  {
    v10 = 0;
LABEL_7:
    while (sub_29A32CD9C(a1, v10))
    {
      v11 = a1[4];
      v8 = v5 & *a1;
      if (*(v11 + 24 * v8 + 4) < 0)
      {
        v10 = 0;
      }

      else
      {
        LOWORD(v10) = 0;
        do
        {
          v10 = (v10 + 1);
          v8 = (v8 + 1) & *a1;
        }

        while (v10 <= *(v11 + 24 * v8 + 4));
      }
    }

    v12 = a1[4] + 24 * v8;
    if (*(v12 + 4) == -1)
    {
      sub_29A1DDD84((v12 + 8), a3);
      sub_29A1DDDC0((v12 + 12), (a3 + 4));
      *(v12 + 16) = *(a3 + 8);
      *v12 = v5;
      *(v12 + 4) = v10;
    }

    else
    {
      sub_29A32D120(a1, v8, v10, v5, a3);
    }

    ++a1[6];
    return a1[4] + 24 * v8;
  }

  else
  {
    LOWORD(v10) = 0;
    while (*(result + 8) != *a2)
    {
      v10 = (v10 + 1);
      v8 = (v8 + 1) & v6;
      result = v7 + 24 * v8;
      if (v10 > *(result + 4))
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

void sub_29A32D430(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A32D46C(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A32D46C(uint64_t a1)
{
  sub_29A0EB5BC(v13, a1 + 112);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 0;
  if (v3)
  {
    v10 = (v2 + 4);
    while (1)
    {
      v11 = *v10;
      v10 += 12;
      if (v11 != -1)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_16;
      }
    }
  }

  if (v4 != v3)
  {
    v5 = v2 + 24 * v3;
    v6 = v2 + 24 * v4;
    do
    {
      v7 = atomic_load(*(v6 + 16));
      v8 = *(v6 + 16);
      if (v7)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Identity::_Forget(*(v6 + 16));
      }

      if (v8)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v8 + 2);
        sub_29A1DE3A4(v8 + 1);
        operator delete(v8);
      }

      v9 = v6 + 24;
      do
      {
        v6 = v9;
        if (*(v9 - 18))
        {
          break;
        }

        v9 += 24;
      }

      while (*(v6 + 4) == -1);
    }

    while (v6 != v5);
  }

LABEL_16:
  sub_29B2998CC(v13, a1);
  return a1;
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetTimeSample<pxrInternal__aapl__pxrReserved__::VtValue>(void *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3, int a4, double a5)
{
  if (a4 && (a1[15] || (sub_29B29AA7C(v14) & 1) != 0))
  {
    v9 = sub_29A32D670(a1 + 15);
    pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetTimeSample(v9, a2, a5, a3);
  }

  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(&v13);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidChangeAttributeTimeSamples(v10, a1 + 3, a2);
  v11 = sub_29A2EDBE4(a1 + 14);
  (*(*v11 + 296))(v11, a2, a3, a5);
  return sub_29A1DD644(&v13);
}

uint64_t sub_29A32D670(uint64_t *a1)
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

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetTimeSample<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>(void *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t (***a3)(void, uint64_t), int a4, double a5)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a4 && (a1[15] || (sub_29B29AAC4(v14) & 1) != 0))
  {
    v9 = sub_29A32D670(a1 + 15);
    pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetTimeSample(v9);
  }

  pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v13);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidChangeAttributeTimeSamples(v10, a1 + 3, a2);
  sub_29A32D854(a3, v15);
  v11 = sub_29A2EDBE4(a1 + 14);
  (*(*v11 + 296))(v11, a2, v15, a5);
  sub_29A186B14(v15);
  return sub_29A1DD644(v13);
}

void sub_29A32D824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A32D854@<X0>(uint64_t (***a1)(void, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  result = (**a1)(a1, a2);
  if ((result & 1) == 0)
  {
    v3[0] = "sdf/layer.cpp";
    v3[1] = "_GetVtValue";
    v3[2] = 1532;
    v3[3] = "VtValue pxrInternal__aapl__pxrReserved__::_GetVtValue(const SdfAbstractDataConstValue &)";
    v4 = 0;
    return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "v.GetValue(&value)", 0);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetField<pxrInternal__aapl__pxrReserved__::VtValue>(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::VtValue *a4, pxrInternal__aapl__pxrReserved__::VtValue *a5, int a6)
{
  v15[2] = *MEMORY[0x29EDCA608];
  if (!a6 || !a1[15] && (sub_29B29AB0C(v14) & 1) == 0)
  {
    if (a5)
    {
      sub_29A186A3C(v15, a5);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(a1, a2, a3, v15);
    }

    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v13);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
    if (!v12)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidChangeField(v12, (a1 + 3));
  }

  v11 = sub_29A32D670(a1 + 15);
  pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetField(v11, a2, a3, a4, a5);
}

void sub_29A32DA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetField<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>(pxrInternal__aapl__pxrReserved__::SdfLayer *this, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t (***a4)(void, uint64_t), void *a5, int a6)
{
  v16[2] = *MEMORY[0x29EDCA608];
  if (!a6 || !*(this + 15) && (sub_29B29AB54(v14) & 1) == 0)
  {
    if (a5)
    {
      sub_29A186A3C(v16, a5);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(this, a2, a3, v16);
    }

    sub_29A32D854(a4, v15);
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v13);
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
    if (!v12)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidChangeField(v12, this + 24);
  }

  v11 = sub_29A32D670(this + 15);
  pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetField(v11);
}

void sub_29A32DC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A186B14(va);
  sub_29A186B14(va1);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t *a4, int a5)
{
  v20[2] = *MEMORY[0x29EDCA608];
  if ((pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0) & 1) == 0)
  {
    sub_29A34A330(v15, 1uLL, a4);
    v18 = &off_2A2049148;
    sub_29A242610();
  }

  if (a5 && (a1[15] || (sub_29B29AB9C(v15) & 1) != 0))
  {
    v10 = sub_29A32D670(a1 + 15);
    pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::PushChild(v10, a2, a3, a4);
  }

  v11 = sub_29A2EDBE4(a1 + 14);
  (*(*v11 + 136))(v20);
  v12 = sub_29A2EDBE4(a1 + 14);
  (*(*v12 + 168))(v12, a2, a3);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (sub_29A1DE724(v20))
  {
    sub_29A32E010(v20, &v17);
  }

  sub_29A1D8028(&v17, a4);
  sub_29A32E010(v20, &v17);
  v13 = sub_29A2EDBE4(a1 + 14);
  (*(*v13 + 152))(v13, a2, a3, v20);
  v16 = &v17;
  sub_29A124AB0(&v16);
  return sub_29A186B14(v20);
}

void sub_29A32DE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  sub_29A186B14(&a15);
  a18 = &a9;
  sub_29A124AB0(&a18);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(pxrInternal__aapl__pxrReserved__::SdfLayer *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v17 = 0;
  v8 = sub_29A2EDBE4(this + 14);
  if ((*(*v8 + 128))(v8, a2, a3, a4, &v17))
  {
    return 1;
  }

  if (v17)
  {
    v10 = *(this + 10);
    v11 = *(v10 + 928);
    v12 = *(v10 + 936);
    if (v11 != v12)
    {
      while ((*v11 ^ *a3) > 7)
      {
        if (++v11 == v12)
        {
          return 0;
        }
      }

      if (v17 > 0xB)
      {
        v14 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::_IssueErrorForInvalidSpecType(v10, v17);
        if (!v14)
        {
          return 0;
        }
      }

      else
      {
        v13 = v10 + 72 * v17;
        if ((*(v13 + 120) & 1) == 0)
        {
          return 0;
        }

        v14 = (v13 + 56);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsRequiredField(v14, a3))
      {
        FieldDefinition = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::GetFieldDefinition(v10, a3);
        if (a4 && FieldDefinition)
        {
          FallbackValue = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FieldDefinition::GetFallbackValue(FieldDefinition);
          sub_29A1854E8(a4, FallbackValue);
          return 1;
        }

        if (FieldDefinition)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t *sub_29A32E010(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t *a2)
{
  if ((sub_29A1DE724(a1) & 1) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_29A34A3E4(a1);
  }

  result = sub_29A34A4B4(a1);
  v5 = *result;
  *result = *a2;
  *a2 = v5;
  v6 = result[1];
  result[1] = a2[1];
  a2[1] = v6;
  v7 = result[2];
  result[2] = a2[2];
  a2[2] = v7;
  return result;
}

void sub_29A32E0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPushChild<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, int a5)
{
  v20[2] = *MEMORY[0x29EDCA608];
  if ((pxrInternal__aapl__pxrReserved__::SdfLayer::HasField(a1, a2, a3, 0) & 1) == 0)
  {
    sub_29A34A4F0(v15, 1uLL, a4);
    v18 = &off_2A2048F00;
    sub_29A23E64C();
  }

  if (a5 && (a1[15] || (sub_29B29ABE4(v15) & 1) != 0))
  {
    v10 = sub_29A32D670(a1 + 15);
    pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::PushChild(v10, a2, a3, a4);
  }

  v11 = sub_29A2EDBE4(a1 + 14);
  (*(*v11 + 136))(v20);
  v12 = sub_29A2EDBE4(a1 + 14);
  (*(*v12 + 168))(v12, a2, a3);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (sub_29A23DDC0(v20))
  {
    sub_29A326428(v20, &v17);
  }

  sub_29A1E28B4(&v17, a4);
  sub_29A326428(v20, &v17);
  v13 = sub_29A2EDBE4(a1 + 14);
  (*(*v13 + 152))(v13, a2, a3, v20);
  v16 = &v17;
  sub_29A1E234C(&v16);
  return sub_29A186B14(v20);
}

void sub_29A32E2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  sub_29A186B14(&a15);
  a18 = &a9;
  sub_29A1E234C(&a18);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPopChild<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a4 && (*(a1 + 120) || (sub_29B29AC2C(v26) & 1) != 0))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v7 = sub_29A2EDBE4((a1 + 112));
    (*(*v7 + 136))(&v27);
    if (sub_29A1DE724(&v27))
    {
      if ((v28 & 4) != 0)
      {
        (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(&v27);
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  v8 = sub_29A2EDBE4((a1 + 112));
  (*(*v8 + 136))(&v27);
  v9 = sub_29A2EDBE4((a1 + 112));
  (*(*v9 + 168))(v9, a2, a3);
  if (sub_29A1DE724(&v27))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    sub_29A32E010(&v27, &v23);
    if (v23 == v24)
    {
      v18 = "sdf/layer.cpp";
      v19 = "_PrimPopChild";
      v20 = 4728;
      v21 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPopChild(const SdfPath &, const TfToken &, BOOL) [T = pxrInternal__aapl__pxrReserved__::TfToken]";
      v22 = 0;
      v15 = *a3 & 0xFFFFFFFFFFFFFFF8;
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

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "SdfLayer::_PrimPopChild failed: %s is empty", v16);
    }

    else
    {
      v10 = v24 - 8;
      v11 = *(v24 - 8);
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v10;
      sub_29A32E010(&v27, &v23);
      v12 = sub_29A2EDBE4((a1 + 112));
      (*(*v12 + 152))(v12, a2, a3, &v27);
    }

    v18 = &v23;
    sub_29A124AB0(&v18);
  }

  else
  {
    v18 = "sdf/layer.cpp";
    v19 = "_PrimPopChild";
    v20 = 4721;
    v21 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPopChild(const SdfPath &, const TfToken &, BOOL) [T = pxrInternal__aapl__pxrReserved__::TfToken]";
    v22 = 0;
    v13 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v13)
    {
      v14 = (v13 + 16);
      if (*(v13 + 39) < 0)
      {
        v14 = *v14;
      }
    }

    else
    {
      v14 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v18, 1, "SdfLayer::_PrimPopChild failed: field %s is non-vector", v14);
  }

  return sub_29A186B14(&v27);
}

void sub_29A32E714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  sub_29A124AB0(&a10);
  sub_29A186B14(v15 - 56);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPopChild<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a4 && (*(a1 + 120) || (sub_29B29AC74(v25) & 1) != 0))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v7 = sub_29A2EDBE4((a1 + 112));
    (*(*v7 + 136))(&v26);
    if (sub_29A23DDC0(&v26))
    {
      if ((v27 & 4) != 0)
      {
        (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(&v26);
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  v8 = sub_29A2EDBE4((a1 + 112));
  (*(*v8 + 136))(&v26);
  v9 = sub_29A2EDBE4((a1 + 112));
  (*(*v9 + 168))(v9, a2, a3);
  if (sub_29A23DDC0(&v26))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    sub_29A326428(&v26, &v22);
    if (v22 == v23)
    {
      v17 = "sdf/layer.cpp";
      v18 = "_PrimPopChild";
      v19 = 4728;
      v20 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPopChild(const SdfPath &, const TfToken &, BOOL) [T = pxrInternal__aapl__pxrReserved__::SdfPath]";
      v21 = 0;
      v14 = *a3 & 0xFFFFFFFFFFFFFFF8;
      if (v14)
      {
        v15 = (v14 + 16);
        if (*(v14 + 39) < 0)
        {
          v15 = *v15;
        }
      }

      else
      {
        v15 = "";
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "SdfLayer::_PrimPopChild failed: %s is empty", v15);
    }

    else
    {
      v10 = v23 - 8;
      sub_29A1E230C(&v22, (v23 - 8));
      v23 = v10;
      sub_29A326428(&v26, &v22);
      v11 = sub_29A2EDBE4((a1 + 112));
      (*(*v11 + 152))(v11, a2, a3, &v26);
    }

    v17 = &v22;
    sub_29A1E234C(&v17);
  }

  else
  {
    v17 = "sdf/layer.cpp";
    v18 = "_PrimPopChild";
    v19 = 4721;
    v20 = "void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimPopChild(const SdfPath &, const TfToken &, BOOL) [T = pxrInternal__aapl__pxrReserved__::SdfPath]";
    v21 = 0;
    v12 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v12)
    {
      v13 = (v12 + 16);
      if (*(v12 + 39) < 0)
      {
        v13 = *v13;
      }
    }

    else
    {
      v13 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "SdfLayer::_PrimPopChild failed: field %s is non-vector", v13);
  }

  return sub_29A186B14(&v26);
}

void sub_29A32EB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  sub_29A1E234C(&a10);
  sub_29A186B14(v15 - 72);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetFieldDictValueByKey<pxrInternal__aapl__pxrReserved__::VtValue>(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::VtValue *a5, pxrInternal__aapl__pxrReserved__::VtValue *a6, int a7)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!a7 || !a1[15] && (sub_29B29ACBC(v17) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v16);
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(a1, a2, a3, v19);
    v14 = sub_29A2EDBE4(a1 + 14);
    (*(*v14 + 208))(v14, a2, a3, a4, a5);
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(a1, a2, a3, v18);
    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
    if (!v15)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidChangeField(v15, (a1 + 3));
  }

  v13 = sub_29A32D670(a1 + 15);
  pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetFieldDictValueByKey(v13, a2, a3, a4, a5, a6);
}

void sub_29A32ED94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A186B14(va1);
  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_PrimSetFieldDictValueByKey<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!a7 || !a1[15] && (sub_29B29AD04(v16) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v15);
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(a1, a2, a3, v18);
    v13 = sub_29A2EDBE4(a1 + 14);
    (*(*v13 + 216))(v13, a2, a3, a4, a5);
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetField(a1, a2, a3, v17);
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
    if (!v14)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidChangeField(v14, (a1 + 3));
  }

  v12 = sub_29A32D670(a1 + 15);
  pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::SetFieldDictValueByKey(v12);
}

void sub_29A32EF4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A186B14(va1);
  sub_29A1DD644(va);
  _Unwind_Resume(a1);
}

void sub_29A32EF8C()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::SDF_LAYER_VALIDATE_AUTHORING))
  {
    sub_29B29AD4C();
  }
}

void sub_29A32EFBC()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::SDF_LAYER_INCLUDE_DETACHED))
  {
    sub_29B29AD80();
  }
}

void sub_29A32EFEC()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::SDF_LAYER_EXCLUDE_DETACHED))
  {
    sub_29B29ADB4();
  }
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::SdfLayer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void ***a6)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_2A204B1B8;
  sub_29A329730((a1 + 24), a1);
  *(a1 + 40) = *a2;
  v9 = a2[1];
  *(a1 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  sub_29A019350((a1 + 56), a6);
  sub_29A1DA734(a2);
}

void sub_29A32F2D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_29A184A10((v23 + 504), 0);
  sub_29A186B14(v23 + 488);
  v24 = *(v23 + 480);
  *(v23 + 480) = 0;
  if (v24)
  {
    sub_29A346264(v23 + 480, v24);
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher((v23 + 128));
  sub_29A346234();
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_InitializeFromIdentifier(void *a1, const std::string *a2, void **a3, uint64_t *a4, __int128 *a5)
{
  v7 = pxrInternal__aapl__pxrReserved__::Sdf_ComputeAssetInfoFromIdentifier(a2, a3, a5, a4);
  v29 = v7;
  if (v7)
  {
    if ((pxrInternal__aapl__pxrReserved__::operator==(v7, a1[60]) & 1) == 0)
    {
      v8 = a1[60];
      if (*(v8 + 23) < 0)
      {
        sub_29A008D14(&__dst, *v8, *(v8 + 8));
        v8 = a1[60];
      }

      else
      {
        v9 = *v8;
        v28 = *(v8 + 16);
        __dst = v9;
      }

      if (*(v8 + 47) < 0)
      {
        sub_29A008D14(__p, *(v8 + 24), *(v8 + 32));
        v8 = a1[60];
      }

      else
      {
        *__p = *(v8 + 24);
        v26 = *(v8 + 40);
      }

      a1[60] = v29;
      v29 = v8;
      if (a1[15] || (v23[0] = "sdf/layer.cpp", v23[1] = "_InitializeFromIdentifier", v23[2] = 1598, v23[3] = "void pxrInternal__aapl__pxrReserved__::SdfLayer::_InitializeFromIdentifier(const string &, const string &, const string &, const ArAssetInfo &)", v24 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v23, "_stateDelegate", 0) & 1) != 0))
      {
        v10 = sub_29A32D670(a1 + 15);
        pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::_SetLayer(v10, (a1 + 3));
      }

      v11 = HIBYTE(v28);
      if (v28 < 0)
      {
        v11 = *(&__dst + 1);
      }

      v12 = atomic_load(&qword_2A173F910);
      if (v11)
      {
        if (!v12)
        {
          v12 = sub_29A34641C(&qword_2A173F910);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Update(v12, a1 + 3, v29, a1[60]);
        pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v23);
        v13 = a1[60];
        if (v28 >= 0)
        {
          v14 = HIBYTE(v28);
        }

        else
        {
          v14 = *(&__dst + 1);
        }

        v15 = *(v13 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v13 + 8);
        }

        if (v14 != v15 || (v28 >= 0 ? (p_dst = &__dst) : (p_dst = __dst), v16 >= 0 ? (v18 = a1[60]) : (v18 = *v13), memcmp(p_dst, v18, v14)))
        {
          v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
          if (!v19)
          {
            pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
          }

          pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidChangeLayerIdentifier(v19, (a1 + 3));
        }

        if (sub_29A3341A0(__p, (v13 + 24)))
        {
          v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_instance);
          if (!v20)
          {
            pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager>::_CreateInstance();
          }

          pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::DidChangeLayerResolvedPath(v20, (a1 + 3));
        }

        sub_29A1DD644(v23);
      }

      else
      {
        if (!v12)
        {
          v12 = sub_29A34641C(&qword_2A173F910);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Insert(v12, a1 + 3, a1[60]);
      }

      v21 = sub_29A2EDBE4(a1 + 14);
      pxrInternal__aapl__pxrReserved__::SdfAbstractData::_SetLayerIdentifier(v21, a2);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__dst);
      }
    }

    v22 = v29;
    v29 = 0;
    if (v22)
    {
      sub_29A346264(&v29, v22);
    }
  }
}

void sub_29A32F7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  v22 = *(v20 - 40);
  *(v20 - 40) = 0;
  if (v22)
  {
    sub_29A346264(v20 - 40, v22);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_MarkCurrentStateAsClean(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = (this + 120);
  if (*(this + 15) || (sub_29B29ADE8(v5) & 1) != 0)
  {
    v3 = sub_29A32D670(v2);
    (*(*v3 + 24))(v3);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfLayer::_UpdateLastDirtinessState(this))
  {
    v4 = &unk_2A204C2B8;
    sub_29A1DB2A8(&v4, this + 24);
    pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDirtinessChanged::~LayerDirtinessChanged(&v4);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::~SdfLayer(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  *this = &unk_2A204B1B8;
  if (sub_29A1D9440(3))
  {
    v4 = *(this + 60);
    if (*(v4 + 23) < 0)
    {
      v4 = *v4;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("SdfLayer::~SdfLayer('%s')\n", v2, v3, v4);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_GetMutedPath(this, __p);
    v15 = 0;
    v5 = atomic_load(&qword_2A173F900);
    if (!v5)
    {
      v5 = sub_29A181B8C(&qword_2A173F900);
    }

    std::mutex::lock(v5);
    v6 = atomic_load(&qword_2A173F908);
    if (!v6)
    {
      v6 = sub_29A346304(&qword_2A173F908);
    }

    v7 = sub_29A01BCCC(v6, __p);
    v8 = atomic_load(&qword_2A173F908);
    if (!v8)
    {
      v8 = sub_29A346304(&qword_2A173F908);
    }

    if ((v8 + 8) != v7)
    {
      v9 = v15;
      v15 = v7[7];
      v16 = 0;
      v7[7] = v9;
      sub_29B290B2C(v7 + 56, 0);
      sub_29A32BD28(&v16);
      v10 = atomic_load(&qword_2A173F908);
      if (!v10)
      {
        v10 = sub_29A346304(&qword_2A173F908);
      }

      sub_29A03AFE8(v10, v7);
      sub_29A3463CC((v7 + 4));
      operator delete(v7);
    }

    std::mutex::unlock(v5);
    sub_29A32BD28(&v15);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_29A32FC5C();
  __p[0] = 0;
  v14 = 0;
  tbb::queuing_rw_mutex::scoped_lock::acquire(__p, &qword_2A173F938, 1);
  if (!atomic_load(&qword_2A173F910))
  {
    sub_29A34641C(&qword_2A173F910);
  }

  sub_29A1DA6E4(this + 24);
}

{
  pxrInternal__aapl__pxrReserved__::SdfLayer::~SdfLayer(this);
}

void sub_29A32FAE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A32BD28(va);
  sub_299FEDEEC(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v2 = atomic_load(&qword_2A14F6AA0);
  if (*(this + 64) != v2)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_GetMutedPath(this, __p);
    v4 = atomic_load(&qword_2A173F900);
    if (!v4)
    {
      v4 = sub_29A181B8C(&qword_2A173F900);
    }

    std::mutex::lock(v4);
    v5 = atomic_load(&qword_2A14F6AA0);
    *(this + 64) = v5;
    v6 = atomic_load(&qword_2A173F920);
    if (!v6)
    {
      v6 = sub_29A347990(&qword_2A173F920);
    }

    *(this + 520) = sub_29A00AF58(v6, __p) != 0;
    std::mutex::unlock(v4);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return *(this + 520);
}

void sub_29A32FBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::SdfLayer::_GetMutedPath@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[60];
  v3 = *(v2 + 143);
  if (v3 < 0)
  {
    v3 = *(v2 + 128);
  }

  v4 = v3 == 0;
  v5 = 120;
  if (v4)
  {
    v5 = 0;
  }

  v6 = (v2 + v5);
  if (*(v6 + 23) < 0)
  {
    return sub_29A008D14(a2, *v6, *(v6 + 1));
  }

  v7 = *v6;
  *(a2 + 16) = *(v6 + 2);
  *a2 = v7;
  return this;
}

void sub_29A32FC5C()
{
  if ((atomic_load_explicit(qword_2A173F940, memory_order_acquire) & 1) == 0)
  {
    sub_29B29AF20();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_WaitForInitializationAndCheckIfSuccessful(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  while (1)
  {
    v2 = atomic_load(this + 472);
    if (v2)
    {
      break;
    }

    sched_yield();
  }

  if ((*(this + 474) & 1) == 0)
  {
    sub_29A20D764();
  }

  return *(this + 473);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous@<X0>(const std::string *a1@<X0>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v19 = 0uLL;
  pxrInternal__aapl__pxrReserved__::TfStringGetSuffix(a1, 46, &v18);
  size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindByExtension(&v18, a2, &v14);
    v6 = *(&v19 + 1);
    v19 = v14;
    *(&v14 + 1) = 0;
    if (v6)
    {
      sub_29B29AF9C(v6);
    }
  }

  v7 = sub_29B299524(&v19);
  if (!(v8 & 1 | v7))
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
    if (!v9)
    {
      v9 = sub_29A3464EC(&pxrInternal__aapl__pxrReserved__::SdfTextFileFormatTokens);
    }

    pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v9, &v14);
    v10 = *(&v19 + 1);
    v19 = v14;
    *(&v14 + 1) = 0;
    if (v10)
    {
      sub_29B29AF9C(v10);
    }
  }

  v11 = sub_29B299524(&v19);
  if (v12 & 1 | v11)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateAnonymousWithFormat(&v19);
  }

  *&v14 = "sdf/layer.cpp";
  *(&v14 + 1) = "CreateAnonymous";
  v15 = 348;
  v16 = "static SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous(const string &, const FileFormatArguments &)";
  v17 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v14, 1, "Cannot determine file format for anonymous SdfLayer");
  *a3 = 0;
  return sub_29B29B018(&v18.__r_.__value_.__r.__words[2] + 7, &v18.__r_.__value_.__l.__data_, &v19);
}

void sub_29A32FF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, atomic_uint *a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    if (atomic_fetch_add_explicit(a21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a21 + 8))(a21);
    }
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_29B299524(a1);
  if (v5 & 1 | v4)
  {

    pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateAnonymousWithFormat(a1);
  }

  v6[0] = "sdf/layer.cpp";
  v6[1] = "CreateAnonymous";
  v6[2] = 361;
  v6[3] = "static SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous(const string &, const SdfFileFormatConstPtr &, const FileFormatArguments &)";
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Invalid file format for anonymous SdfLayer");
  *a2 = 0;
}

uint64_t sub_29A3302A8(uint64_t *a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::CreateNew@<X0>(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  if (sub_29A1D9440(3))
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    sub_29A33045C(a2);
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("SdfLayer::CreateNew('%s', '%s')\n", v7, v8, v6, p_p);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  v11[0] = 0;
  v11[1] = 0;
  pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateNew(v11, a1, a2, a3);
  return sub_29B28F9E0(v11);
}

void sub_29A3303F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A33045C(void *a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  sub_29A346578(&v7, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A330658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateNew(uint64_t a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v41[2] = *MEMORY[0x29EDCA608];
  memset(&v32, 0, sizeof(v32));
  NewLayerWithIdentifier = pxrInternal__aapl__pxrReserved__::Sdf_CanCreateNewLayerWithIdentifier(a2, &v32);
  if (NewLayerWithIdentifier)
  {
    Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(NewLayerWithIdentifier);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v41[1] = 0;
    v40 = 0;
    memset(&__p, 0, sizeof(__p));
    memset(&v30, 0, sizeof(v30));
    pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v29);
    memset(&v27, 0, sizeof(v27));
    pxrInternal__aapl__pxrReserved__::ArResolver::CreateIdentifierForNewAsset(Resolver);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __str;
    *(&__str.__r_.__value_.__s + 23) = 0;
    __str.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::ArResolver::ResolveForNewAsset(Resolver);
    std::string::operator=(&v30, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
    if (!v10)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
    }

    v11 = v29;
    v12 = atomic_load((v10 + 144));
    if (v11 < v12 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v29, v10))
    {
      memset(&__str, 0, sizeof(__str));
      v13 = sub_29A0FE7E0(&v29, 0);
      if (v13 != sub_29A11477C())
      {
        sub_29A070BA0(&__str);
      }

      pxrInternal__aapl__pxrReserved__::TfStringJoin(", ", &__str, &v27);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      v32 = v27;
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
      }

      v17 = sub_29A0FE7E0(&v29, 0);
      LOBYTE(v28) = 0;
      v18 = sub_29A0ED084(v16 + 19, &v28);
      if (v18 != v17)
      {
        pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(v16, v17, v18);
      }

      v27.__r_.__value_.__r.__words[0] = &__str;
      sub_29A012C90(&v27);
    }

    pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v29);
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v20 = sub_29B299524(a1);
      if (v21 & 1 | v20)
      {
        goto LABEL_34;
      }

      pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindByExtension(&v30, a3, &__str);
      v22 = *(a1 + 8);
      *a1 = *&__str.__r_.__value_.__l.__data_;
      __str.__r_.__value_.__l.__size_ = 0;
      if (v22)
      {
        sub_29B29AF9C(v22);
      }

      v23 = sub_29B299524(a1);
      if (v24 & 1 | v23 || (__str.__r_.__value_.__r.__words[0] = "sdf/layer.cpp", __str.__r_.__value_.__l.__size_ = "_CreateNew", __str.__r_.__value_.__r.__words[2] = 564, v34 = "static SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateNew(SdfFileFormatConstPtr, const string &, const FileFormatArguments &, BOOL)", v35 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__str, "fileFormat", 0) & 1) != 0))
      {
LABEL_34:
        pxrInternal__aapl__pxrReserved__::Sdf_IsPackageOrPackagedLayer(a1);
      }
    }

    else
    {
      __str.__r_.__value_.__r.__words[0] = "sdf/layer.cpp";
      __str.__r_.__value_.__l.__size_ = "_CreateNew";
      __str.__r_.__value_.__r.__words[2] = 555;
      v34 = "static SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateNew(SdfFileFormatConstPtr, const string &, const FileFormatArguments &, BOOL)";
      v35 = 0;
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v32.__r_.__value_.__l.__size_)
        {
          v26 = v32.__r_.__value_.__r.__words[0];
        }

        else
        {
          v26 = "failed to compute path for new layer";
        }
      }

      else
      {
        v26 = &v32;
        if (!*(&v32.__r_.__value_.__s + 23))
        {
          v26 = "failed to compute path for new layer";
        }
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__str, 1, "Cannot create new layer '%s': %s", p_p, v26);
    }

    *a4 = 0;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A186B14(v41);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(*(&v37 + 1));
    }

    if (SBYTE7(v37) < 0)
    {
      operator delete(v36);
    }
  }

  else
  {
    *&v36 = "sdf/layer.cpp";
    *(&v36 + 1) = "_CreateNew";
    *&v37 = 525;
    *(&v37 + 1) = "static SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateNew(SdfFileFormatConstPtr, const string &, const FileFormatArguments &, BOOL)";
    LOBYTE(v38) = 0;
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = &v32;
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v32.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v36, 1, "Cannot create new layer '%s': %s", v14, v15);
    *a4 = 0;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::CreateNew@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  if (sub_29A1D9440(3))
  {
    sub_29A1DA734(a1);
  }

  v8 = a1[1];
  v10 = *a1;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateNew(&v10, a2, a3, a4);
  return sub_29B28CF5C(&v11);
}

void sub_29A3311FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_Save(pxrInternal__aapl__pxrReserved__::SdfLayer *this, char a2)
{
  v20[2] = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
  {
    __p[0] = "sdf/layer.cpp";
    __p[1] = "_Save";
    v17 = 5389;
    v18 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_Save(BOOL) const";
    v19 = 0;
    v4 = *(this + 60);
    if (v4[23] < 0)
    {
      v4 = *v4;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Cannot save muted layer @%s@", v4);
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(*(this + 60)))
  {
    __p[0] = "sdf/layer.cpp";
    __p[1] = "_Save";
    v17 = 5395;
    v18 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_Save(BOOL) const";
    v19 = 0;
    v5 = *(this + 60);
    if (v5[23] < 0)
    {
      v5 = *v5;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Cannot save anonymous layer @%s@", v5);
    return 0;
  }

  v8 = *(this + 60);
  if (*(v8 + 47) < 0)
  {
    sub_29A008D14(__p, *(v8 + 24), *(v8 + 32));
  }

  else
  {
    *__p = *(v8 + 24);
    v17 = *(v8 + 40);
  }

  v9 = HIBYTE(v17);
  if (v17 < 0)
  {
    v9 = __p[1];
  }

  if (v9)
  {
    if ((a2 & 1) == 0 && (pxrInternal__aapl__pxrReserved__::SdfLayer::IsDirty(this) & 1) == 0 && pxrInternal__aapl__pxrReserved__::TfPathExists(__p, 0))
    {
      goto LABEL_24;
    }

    memset(v15, 0, sizeof(v15));
    v10 = *(this + 6);
    v13 = *(this + 5);
    v14 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }

    v11 = pxrInternal__aapl__pxrReserved__::SdfLayer::_WriteToFile(this, __p, v15, &v13);
    if (sub_29B29B0FC(&v14, v15, v11))
    {
      *(this + 524) = 1;
      pxrInternal__aapl__pxrReserved__::Sdf_ComputeLayerModificationTimestamp(this, v20);
      sub_29A18606C(this + 61, v20);
      v12 = sub_29A186B14(v20);
      v20[0] = &unk_2A204C280;
      sub_29A1DB2A8(v12, this + 24);
      pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDidSaveLayerToFile::~LayerDidSaveLayerToFile(v20);
LABEL_24:
      v6 = 1;
      goto LABEL_26;
    }
  }

  v6 = 0;
LABEL_26:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_29A3314A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::SdfNotice::LayerDidSaveLayerToFile::~LayerDidSaveLayerToFile((v20 - 40));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::New@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v4 = a1[1];
  v6 = *a1;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::SdfLayer::_CreateNew(&v6, a2, a3, a4);
  return sub_29B28CF5C(&v7);
}

void sub_29A33154C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_ComputeInfoToFindOrOpenLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[2] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  memset(&__p, 0, sizeof(__p));
  v32 = 0;
  v33 = 0;
  v31 = &v32;
  if (pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a1, &__p, &v31))
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v36 = 0u;
      memset(v37, 0, sizeof(v37));
      v38 = 0u;
      v40[1] = 0;
      v39 = 0;
      memset(v30, 0, 7);
      IsAnonLayerIdentifier = pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(&__p);
      v8 = IsAnonLayerIdentifier;
      if (IsAnonLayerIdentifier)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
      }

      else
      {
        Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(IsAnonLayerIdentifier);
        v28 = 0uLL;
        v29 = 0;
        pxrInternal__aapl__pxrReserved__::ArResolver::CreateIdentifier(Resolver);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = __dst;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        __dst.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28.n128_u64[0]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_ResolvePath(&__p);
        v10 = __dst.__r_.__value_.__l.__size_;
        v9 = __dst.__r_.__value_.__r.__words[0];
        v30[0] = __dst.__r_.__value_.__r.__words[2];
        *(v30 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
        v11 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      if (v33)
      {
        __dst.__r_.__value_.__r.__words[0] = *a2;
        __dst.__r_.__value_.__l.__size_ = a2 + 8;
        while (__dst.__r_.__value_.__r.__words[0] != __dst.__r_.__value_.__l.__size_)
        {
          v14 = *sub_29A331A1C(&__dst);
          v28.n128_u64[0] = *sub_29A331A1C(&__dst) + 32;
          v15 = sub_29A00B038(&v31, v28.n128_u64[0], &unk_29B4D6118, &v28);
          std::string::operator=((v15 + 7), (v14 + 56));
          sub_29A331A54(&__dst);
        }
      }

      else if (&v31 != a2)
      {
        sub_29A028554(&v31, *a2, (a2 + 8));
      }

      if ((v11 & 0x80) != 0)
      {
        v16 = v9;
        v17 = v10;
        if (v10)
        {
          goto LABEL_30;
        }
      }

      else if (v11)
      {
        __dst.__r_.__value_.__r.__words[0] = v9;
        __dst.__r_.__value_.__l.__size_ = v10;
        LODWORD(__dst.__r_.__value_.__r.__words[2]) = v30[0];
        *(&__dst.__r_.__value_.__r.__words[2] + 3) = *(v30 + 3);
        *(&__dst.__r_.__value_.__s + 23) = v11;
LABEL_31:
        pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindByExtension(&__dst, &v31, &v28);
        sub_29B29B168(&v28, a3);
        sub_29B299948(&__p, a3, &v31);
        sub_29A13F534((a3 + 16), &v31);
        *(a3 + 40) = v8;
        v18 = *(a3 + 64);
        v19 = *(a3 + 48);
        *(a3 + 48) = __p;
        *&__p.__r_.__value_.__l.__data_ = v19;
        __p.__r_.__value_.__r.__words[2] = v18;
        if (*(a3 + 95) < 0)
        {
          operator delete(*(a3 + 72));
        }

        *(a3 + 72) = v9;
        *(a3 + 80) = v10;
        *(a3 + 88) = v30[0];
        *(a3 + 91) = *(v30 + 3);
        *(a3 + 95) = v11;
        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(a3 + 48, (a3 + 16), &__dst);
        if (*(a3 + 119) < 0)
        {
          operator delete(*(a3 + 96));
        }

        *(a3 + 112) = *(&__dst.__r_.__value_.__l + 2);
        v20 = *(a3 + 136);
        v21 = *(&v37[1] + 1);
        *(a3 + 136) = *&v37[0];
        v22 = *(a3 + 160);
        *(a3 + 160) = v21;
        *(a3 + 96) = *&__dst.__r_.__value_.__l.__data_;
        v23 = *(a3 + 120);
        *(a3 + 120) = v36;
        v36 = v23;
        *&__dst.__r_.__value_.__l.__data_ = *(a3 + 144);
        v24 = *&__dst.__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v22;
        *(a3 + 144) = *(v37 + 8);
        *&v37[0] = v20;
        *(&v37[1] + 1) = v22;
        *(v37 + 8) = v24;
        __dst = *(a3 + 168);
        v25 = *&__dst.__r_.__value_.__l.__data_;
        v26 = __dst.__r_.__value_.__r.__words[2];
        *(a3 + 168) = v38;
        *(a3 + 184) = v39;
        v39 = v26;
        v38 = v25;
        sub_29A1DE11C((a3 + 192), v40);
        sub_29A186B14(v40);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(v38);
        }

        if (SHIBYTE(v37[1]) < 0)
        {
          operator delete(*(&v37[0] + 1));
        }

        if (SBYTE7(v37[0]) < 0)
        {
          operator delete(v36);
        }

        v12 = 1;
        goto LABEL_42;
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        __dst = __p;
        goto LABEL_31;
      }

      v17 = __p.__r_.__value_.__l.__size_;
      v16 = __p.__r_.__value_.__r.__words[0];
LABEL_30:
      sub_29A008D14(&__dst, v16, v17);
      goto LABEL_31;
    }
  }

  v12 = 0;
LABEL_42:
  sub_29A01752C(&v31, v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_29A33198C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, void *a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v41 < 0)
  {
    operator delete(v40);
  }

  sub_29A1D18FC(v42 - 176);
  sub_29A01752C(&a17, a18);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_29A331A1C(void *result)
{
  if (*result == result[1])
  {
    sub_29B29B208();
  }

  return result;
}

void *sub_29A331A54(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::map<std::string, std::string>>::operator++() [T = const std::map<std::string, std::string>, Reverse = false]";
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpen@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = *MEMORY[0x29EDCA608];
  if (sub_29A1D9440(3))
  {
    v6 = *(a1 + 23) >= 0 ? a1 : *a1;
    sub_29A33045C(a2);
    v9 = SHIBYTE(v17) >= 0 ? __p : __p[0];
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("SdfLayer::FindOrOpen('%s', '%s')\n", v7, v8, v6, v9);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v19 = 0;
  v23 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  memset(v22, 0, 96);
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::_ComputeInfoToFindOrOpenLayer(a1, a2, __p))
  {
    sub_29A32FC5C();
    v13[0] = 0;
    v14 = 0;
    tbb::queuing_rw_mutex::scoped_lock::acquire(v13, &qword_2A173F938, 0);
    sub_29A331DB4(v22, &v21[1], v13, 1, &v15);
    if (!v15)
    {
      sub_29A321930();
    }

    v10 = sub_29A3302A8(&v15);
    if (pxrInternal__aapl__pxrReserved__::SdfLayer::_WaitForInitializationAndCheckIfSuccessful(v10))
    {
      v11 = v15;
      v15 = 0;
    }

    else
    {
      v11 = 0;
    }

    *a3 = v11;
    sub_29A321930();
  }

  *a3 = 0;
  return sub_29B299F0C(__p);
}

uint64_t sub_29A331DB4@<X0>(uint64_t a1@<X0>, void **a2@<X1>, tbb::queuing_rw_mutex::scoped_lock *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v9 = 0;
  *a5 = 0;
  v16 = a4;
  v10 = a4 ^ 1;
  do
  {
    v11 = atomic_load(&qword_2A173F910);
    if (!v11)
    {
      v11 = sub_29A34641C(&qword_2A173F910);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_LayerRegistry::Find(v11, a1, a2, &v18);
    v12 = sub_29B293A0C(&v18);
    if (v13 & 1 | v12)
    {
      sub_29A34672C(&v18, &v17);
      *a5 = v17;
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_RemoveRef();
    }

    if (((v9 | v10) & 1) != 0 || tbb::queuing_rw_mutex::scoped_lock::upgrade_to_writer(a3))
    {
      v14 = 0;
    }

    else
    {
      v9 = 1;
      v14 = 2;
    }

    result = v19;
    if (v19 && atomic_fetch_add_explicit((v19 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      result = (*(*result + 8))(result);
    }
  }

  while (v14 == 2);
  if ((v16 & 1) == 0)
  {
    return tbb::queuing_rw_mutex::scoped_lock::release(a3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpen@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v30 = *MEMORY[0x29EDCA608];
  if (sub_29A1D9440(3))
  {
    v6 = *(a1 + 23) >= 0 ? a1 : *a1;
    sub_29A33045C(a2);
    v9 = SHIBYTE(v18) >= 0 ? __p : __p[0];
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("SdfLayer::FindOrOpen('%s', '%s')\n", v7, v8, v6, v9);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  v20 = 0;
  v29 = 0;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (pxrInternal__aapl__pxrReserved__::SdfLayer::_ComputeInfoToFindOrOpenLayer(a1, a2, __p))
  {
    if (SBYTE7(v24) < 0)
    {
      sub_29A008D14(&__dst, v23, *(&v23 + 1));
    }

    else
    {
      __dst = v23;
      v14 = v24;
    }

    if (SHIBYTE(v22[3]) < 0)
    {
      operator delete(v22[1]);
    }

    *&v22[1] = __dst;
    v22[3] = v14;
    sub_29A32FC5C();
    *&__dst = 0;
    v15 = 0;
    tbb::queuing_rw_mutex::scoped_lock::acquire(&__dst, &qword_2A173F938, 0);
    sub_29A331DB4(&v23, &v22[1], &__dst, 1, &v16);
    if (!v16)
    {
      sub_29A321930();
    }

    v10 = sub_29A3302A8(&v16);
    if (pxrInternal__aapl__pxrReserved__::SdfLayer::_WaitForInitializationAndCheckIfSuccessful(v10))
    {
      v11 = v16;
      v16 = 0;
    }

    else
    {
      v11 = 0;
    }

    *a3 = v11;
    sub_29A321930();
  }

  *a3 = 0;
  return sub_29B299F0C(__p);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpen(size_t __sz@<X2>, uint64_t a2@<X0>, char *a3@<X1>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  if (a3 && __sz)
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    sub_29A346784(&__p, a3, &a3[__sz], __sz);
    pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpen(a2, a4, a5);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *a5 = 0;
  }
}

void sub_29A3323A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::OpenAsAnonymous@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v35 = *MEMORY[0x29EDCA608];
  v22[0] = 0;
  v22[1] = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22[2] = v23;
  v24 = 0;
  v34 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16[1] = 0;
  *&v17 = 0;
  v16[0] = &v16[1];
  v5 = pxrInternal__aapl__pxrReserved__::SdfLayer::_ComputeInfoToFindOrOpenLayer(a1, v16, v22);
  sub_29A01752C(v16, v16[1]);
  if (v5)
  {
    v6 = sub_29B299524(v22);
    if (v7 & 1 | v6)
    {
      v15 = 0;
      sub_29A32FC5C();
      v13 = 0;
      v14 = 0;
      tbb::queuing_rw_mutex::scoped_lock::acquire(&v13, &qword_2A173F938, 1);
      pxrInternal__aapl__pxrReserved__::Sdf_GetAnonLayerIdentifierTemplate(a2, &v12);
      v21 = 0;
      __p = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      *v16 = 0u;
      memset(v11, 0, sizeof(v11));
      v10 = v11;
      sub_29A1DA734(v22);
    }

    v16[0] = "sdf/layer.cpp";
    v16[1] = "OpenAsAnonymous";
    *&v17 = 978;
    *(&v17 + 1) = "static SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::SdfLayer::OpenAsAnonymous(const std::string &, BOOL, const std::string &)";
    LOBYTE(v18) = 0;
    v8 = &v28;
    if (SBYTE7(v29) < 0)
    {
      v8 = v28;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Cannot determine file format for @%s@", v8);
  }

  *a3 = 0;
  return sub_29B299F0C(v22);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::_Read(uint64_t a1, uint64_t a2, const std::string *a3, pxrInternal__aapl__pxrReserved__ *a4)
{
  v8 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v8)
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("SdfLayer::_Read", 0);
  }

  else
  {
    v9 = 0;
  }

  v33 = v9;
  v34 = v9 != 0;
  memset(&v32, 0, sizeof(v32));
  if (pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(a2))
  {
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_SplitIdentifier(a2, &v32, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::operator=(&v32, a3);
  }

  v12 = &v32;
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v32.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Loading layer '%s'", v10, v11, v12);
  v24[0] = "sdf/layer.cpp";
  v24[1] = "_Read";
  v25 = 1200;
  v26 = "BOOL pxrInternal__aapl__pxrReserved__::SdfLayer::_Read(const string &, const ArResolvedPath &, BOOL)";
  v27 = 0;
  pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(__p, v28, v24);
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (sub_29A1D9440(3))
  {
    v13 = *(a2 + 23);
    v14 = *a2;
    v15 = a4;
    v16 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    v17 = a3->__r_.__value_.__r.__words[0];
    pxrInternal__aapl__pxrReserved__::TfStringify(v15, v24);
    v20 = (v16 >= 0 ? a3 : v17);
    v21 = v13 >= 0 ? a2 : v14;
    v22 = v25 >= 0 ? v24 : v24[0];
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("SdfLayer::_Read('%s', '%s', metadataOnly=%s)\n", v18, v19, v21, v20, v22);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  v23 = *(a1 + 48);
  v28[0] = *(a1 + 40);
  v28[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(v23 + 2, 1u, memory_order_relaxed);
  }

  sub_29A1DA734(v28);
}

void sub_29A332B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(&a27);
  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  sub_29A0E9CEC(v32 - 104);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayer::_Reload(pxrInternal__aapl__pxrReserved__::SdfLayer *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(this + 60);
  if (*(v2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    v19 = *(v2 + 2);
    *__dst = v3;
  }

  v4 = HIBYTE(v19);
  if (v19 < 0)
  {
    v4 = __dst[1];
  }

  if (v4)
  {
    IsAnonLayerIdentifier = pxrInternal__aapl__pxrReserved__::Sdf_IsAnonLayerIdentifier(*(this + 60));
    pxrInternal__aapl__pxrReserved__::SdfChangeBlock::SdfChangeBlock(v17);
    if (IsAnonLayerIdentifier)
    {
      sub_29A1DA734(this + 40);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfLayer::IsMuted(this))
    {
      sub_29A32F47C(this + 40, *(this + 60));
    }

    v7 = *(this + 60);
    if (*(v7 + 47) < 0)
    {
      sub_29A008D14(v15, *(v7 + 24), *(v7 + 32));
    }

    else
    {
      *v15 = *(v7 + 24);
      v16 = *(v7 + 40);
    }

    pxrInternal__aapl__pxrReserved__::SdfLayer::UpdateAssetInfo(this);
    v8 = *(this + 60);
    if (*(v8 + 47) < 0)
    {
      sub_29A008D14(__p, *(v8 + 24), *(v8 + 32));
    }

    else
    {
      *__p = *(v8 + 24);
      v14 = *(v8 + 40);
    }

    v9 = HIBYTE(v14);
    if (v14 < 0)
    {
      v9 = __p[1];
    }

    if (v9)
    {
      if (*(this + 62))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_ComputeLayerModificationTimestamp(this, &v20);
        pxrInternal__aapl__pxrReserved__::Sdf_ComputeExternalAssetModificationTimestamps(this, &v12);
      }

      v6 = 2;
    }

    else
    {
      v20 = "sdf/layer.cpp";
      v21 = "_Reload";
      v22 = 1079;
      v23 = "SdfLayer::_ReloadResult pxrInternal__aapl__pxrReserved__::SdfLayer::_Reload(BOOL)";
      v24 = 0;
      v10 = __dst;
      if (v19 < 0)
      {
        v10 = __dst[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 3, "Cannot determine resolved path for '%s', skipping reload.", v10);
      v6 = 0;
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A1DD644(v17);
  }

  else
  {
    v20 = "sdf/layer.cpp";
    v21 = "_Reload";
    v22 = 1025;
    v23 = "SdfLayer::_ReloadResult pxrInternal__aapl__pxrReserved__::SdfLayer::_Reload(BOOL)";
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 1, "Can't reload a layer with no identifier");
    v6 = 0;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst[0]);
  }

  return v6;
}