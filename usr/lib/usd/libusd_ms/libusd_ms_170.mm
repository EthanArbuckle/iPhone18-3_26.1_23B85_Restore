void *sub_29AED2838(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *result) >> 4) >= a4)
  {
    v16 = result[1];
    v17 = v16 - v9;
    if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v9) >> 4) >= a4)
    {
      v19 = a3 - __src;
      if (v19)
      {
        result = memmove(*result, __src, v19);
      }

      v15 = &v9[v19];
    }

    else
    {
      v18 = &__src[v17];
      if (v16 != v9)
      {
        result = memmove(*result, __src, v17);
        v16 = *(v7 + 8);
      }

      if (a3 != v18)
      {
        result = memmove(v16, v18, a3 - v18);
      }

      v15 = &v16[a3 - v18];
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
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 > 0x333333333333333)
    {
      sub_29A00C9A4();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    if (v10 >= 0x199999999999999)
    {
      v12 = 0x333333333333333;
    }

    else
    {
      v12 = v11;
    }

    result = sub_29AB876CC(v7, v12);
    v13 = *(v7 + 8);
    v14 = a3 - __src;
    if (v14)
    {
      result = memmove(*(v7 + 8), __src, v14);
    }

    v15 = (v13 + v14);
  }

  *(v7 + 8) = v15;
  return result;
}

void sub_29AED2994(uint64_t *a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
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
    v11 = sub_29AB874D8(a1, a2, a3, a1[1]);
    goto LABEL_11;
  }

  v12 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v12 >> 3) < a4)
  {
    sub_29AB90CB8(&v17, a2, a2 + v12, v8);
    v11 = sub_29AB874D8(a1, (a2 + v12), a3, a1[1]);
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

void sub_29AED2B08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 6)
  {
    sub_29AED2C48(a1);
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
    v12 = sub_29AB88BC8(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 6)
  {
    sub_29AED2CB4(&v17, a2, a2 + v13, v8);
    v12 = sub_29AB88BC8(a1, a2 + v13, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v12;
    return;
  }

  sub_29AED2CB4(&v18, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v16 -= 64;
      sub_29AB88D00(a1, v16);
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
}

void sub_29AED2C48(void **a1)
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
        v3 -= 64;
        sub_29AB88D00(a1, v3);
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

uint64_t sub_29AED2CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = (a4 + 24);
  do
  {
    if (v4 != v6 - 3)
    {
      sub_29A12D958(v6 - 3, *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 4);
      sub_29A12D958(v6, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 4);
    }

    v7 = *(v4 + 48);
    *(v6 + 29) = *(v4 + 53);
    v6[3] = v7;
    v4 += 64;
    v6 += 8;
  }

  while (v4 != v5);
  return v5;
}

void sub_29AED2D50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29AED2ED0(a1);
    if (a4 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
    {
      v10 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A9332C4(a1, v10);
    v11 = sub_29AB889A0(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v12 >> 3) < a4)
  {
    sub_29AED2F3C(&v16, a2, a2 + v12, v8);
    v11 = sub_29AB889A0(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29AED2F3C(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 88;
      sub_29AB88AD8(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void sub_29AED2ED0(void **a1)
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
        v3 -= 88;
        sub_29AB88AD8(a1, v3);
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

uint64_t sub_29AED2F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = (a4 + 48);
  do
  {
    if (v4 != v6 - 6)
    {
      sub_29A12D958(v6 - 6, *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 4);
      sub_29A36CF34(v6 - 3, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 2);
      sub_29A36CF34(v6, *(v4 + 48), *(v4 + 56), (*(v4 + 56) - *(v4 + 48)) >> 2);
    }

    v7 = *(v4 + 72);
    *(v6 + 29) = *(v4 + 77);
    v6[3] = v7;
    v4 += 88;
    v6 += 11;
  }

  while (v4 != v5);
  return v5;
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::HdxFreeCameraSceneDelegate(pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::HdSceneDelegate::HdSceneDelegate(this, a2, a3);
  *v6 = &unk_2A209B7D8;
  v7 = (v6 + 24);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v8)
  {
    v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(a2, v8 + 17))
  {
    v9 = atomic_load(&qword_2A174F988);
    if (!v9)
    {
      v9 = sub_29AED3A14();
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a3, v9, v7);
  }

  else
  {
    *(this + 3) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 7);
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v11, 1.0);
  v10 = 0x497424003F800000;
  pxrInternal__aapl__pxrReserved__::GfCamera::GfCamera(this + 32, v11, 0, &v10, 20.955, 15.2908, 0.0, 0.0, 50.0);
}

void sub_29AED3190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v13 = *(v10 + 24);
  if (v13)
  {
    *(v10 + 25) = v13;
    operator delete(v13);
  }

  sub_29A1DCEA8(v11);
  pxrInternal__aapl__pxrReserved__::HdSceneDelegate::~HdSceneDelegate(v10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::~HdxFreeCameraSceneDelegate(pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate *this)
{
  *this = &unk_2A209B7D8;
  v2 = (this + 24);
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 6))
  {
    v3 = *(this + 1);
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v4)
    {
      v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSprim(v3, (v4 + 136), v2);
  }

  v5 = *(this + 24);
  if (v5)
  {
    *(this + 25) = v5;
    operator delete(v5);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 7);
  sub_29A1DE3A4(v2);

  pxrInternal__aapl__pxrReserved__::HdSceneDelegate::~HdSceneDelegate(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::~HdxFreeCameraSceneDelegate(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::_MarkDirty(pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate *this, uint64_t a2)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 6))
  {
    v4 = (*(this + 1) + 440);

    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty(v4, (this + 24), a2);
  }
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::SetCamera(pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate *this, char **a2)
{
  v4 = (this + 32);
  if ((pxrInternal__aapl__pxrReserved__::GfCamera::operator==(this + 32, a2) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::GfCamera::GetTransform(v4, v19);
    pxrInternal__aapl__pxrReserved__::GfCamera::GetTransform(a2, v18);
    if (pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(v19, v18))
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    ClippingPlanes = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingPlanes(v4);
    v7 = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingPlanes(a2);
    v9 = *ClippingPlanes;
    v8 = *(ClippingPlanes + 8);
    v10 = *v7;
    if ((v8 - *ClippingPlanes) == (*(v7 + 8) - *v7))
    {
      while (v9 != v8)
      {
        if (*v9 != *v10 || v9[1] != v10[1] || v9[2] != v10[2] || v9[3] != v10[3])
        {
          goto LABEL_12;
        }

        v9 += 4;
        v10 += 4;
      }
    }

    else
    {
LABEL_12:
      v5 = v5 | 4;
    }

    v11 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v11;
    v12 = *(a2 + 2);
    v13 = *(a2 + 3);
    v14 = *(a2 + 5);
    *(v4 + 4) = *(a2 + 4);
    *(v4 + 5) = v14;
    *(v4 + 2) = v12;
    *(v4 + 3) = v13;
    v15 = *(a2 + 6);
    v16 = *(a2 + 7);
    v17 = *(a2 + 9);
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 9) = v17;
    *(v4 + 6) = v15;
    *(v4 + 7) = v16;
    if (v4 != a2)
    {
      sub_29A12D958(this + 24, a2[20], a2[21], (a2[21] - a2[20]) >> 4);
    }

    *(this + 27) = a2[23];
    pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::_MarkDirty(this, v5);
  }
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::SetWindowPolicy(pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate *a1, int a2)
{
  if (*(a1 + 56) != a2)
  {
    *(a1 + 56) = a2;
    pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::_MarkDirty(a1, 8);
  }
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::SetMatrices(pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3)
{
  v3 = *(this + 9);
  v14 = *(this + 8);
  v15 = v3;
  v4 = *(this + 11);
  v16 = *(this + 10);
  v17 = v4;
  v5 = *(this + 5);
  v10 = *(this + 4);
  v11 = v5;
  v6 = *(this + 7);
  v12 = *(this + 6);
  v13 = v6;
  v7 = *(this + 3);
  v8 = *(this + 2);
  v9 = v7;
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f*,pxrInternal__aapl__pxrReserved__::GfVec4f*>();
}

void sub_29AED356C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::SetClipPlanes(uint64_t a1, uint64_t a2)
{
  ClippingPlanes = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingPlanes((a1 + 32));
  v6 = *ClippingPlanes;
  v5 = *(ClippingPlanes + 8);
  v7 = *a2;
  if ((v5 - *ClippingPlanes) == (*(a2 + 8) - *a2))
  {
    while (v6 != v5)
    {
      if (*v6 != *v7 || v6[1] != v7[1] || v6[2] != v7[2] || v6[3] != v7[3])
      {
        goto LABEL_8;
      }

      v6 += 4;
      v7 += 4;
    }
  }

  else
  {
LABEL_8:
    pxrInternal__aapl__pxrReserved__::GfCamera::SetClippingPlanes(a1 + 32, a2);

    pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::_MarkDirty(a1, 4);
  }
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::GetCameraParamValue(pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v7)
  {
    v7 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*v7 ^ *a2) <= 7)
  {
    Projection = pxrInternal__aapl__pxrReserved__::GfCamera::GetProjection((this + 32));
    if (Projection >= 2)
    {
      __p = "hdx/freeCameraSceneDelegate.cpp";
      v30 = "_ToHd";
      v31 = 148;
      v32 = "HdCamera::Projection pxrInternal__aapl__pxrReserved__::_ToHd(const GfCamera::Projection)";
      v33 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Bad GfCamera::Projection value");
      Projection = 0;
    }

    *(a3 + 8) = &off_2A2084C18 + 3;
    *a3 = Projection;
    return;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v9)
  {
    v9 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v9 + 5) ^ *a2) <= 7)
  {
    FocalLength = pxrInternal__aapl__pxrReserved__::GfCamera::GetFocalLength((this + 32));
    v11 = &pxrInternal__aapl__pxrReserved__::GfCamera::FOCAL_LENGTH_UNIT;
LABEL_28:
    v16 = *v11;
    FStop = FocalLength * v16;
LABEL_29:
    *(a3 + 8) = &unk_2A2044C63;
    *a3 = FStop;
    return;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v12)
  {
    v12 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v12 + 1) ^ *a2) <= 7)
  {
    FocalLength = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalAperture((this + 32));
LABEL_27:
    v11 = &pxrInternal__aapl__pxrReserved__::GfCamera::APERTURE_UNIT;
    goto LABEL_28;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v13)
  {
    v13 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v13 + 2) ^ *a2) <= 7)
  {
    FocalLength = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalAperture((this + 32));
    goto LABEL_27;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v14)
  {
    v14 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v14 + 3) ^ *a2) <= 7)
  {
    FocalLength = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalApertureOffset((this + 32));
    goto LABEL_27;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v15)
  {
    v15 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v15 + 4) ^ *a2) <= 7)
  {
    FocalLength = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalApertureOffset((this + 32));
    goto LABEL_27;
  }

  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v18)
  {
    v18 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v18 + 6) ^ *a2) <= 7)
  {
    ClippingRange = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingRange((this + 32));
    *(a3 + 8) = &off_2A20821D0 + 1;
    *a3 = ClippingRange;
    *(a3 + 4) = v20;
    return;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v21)
  {
    v21 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v21 + 7) ^ *a2) <= 7)
  {
    ClippingPlanes = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingPlanes((this + 32));
    v23 = *ClippingPlanes;
    v24 = *(ClippingPlanes + 8);
    v25 = (v24 - *ClippingPlanes) >> 4;
    __p = 0;
    v30 = 0;
    v31 = 0;
    sub_29AED3B80(&__p, v23, v24, v25);
    *(a3 + 8) = &off_2A2084CD0;
    sub_29ACCD154();
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v26)
  {
    v26 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v26 + 8) ^ *a2) <= 7)
  {
    FStop = pxrInternal__aapl__pxrReserved__::GfCamera::GetFStop((this + 32));
    goto LABEL_29;
  }

  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v27)
  {
    v27 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v27 + 9) ^ *a2) <= 7)
  {
    FStop = pxrInternal__aapl__pxrReserved__::GfCamera::GetFocusDistance((this + 32));
    goto LABEL_29;
  }

  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v28)
  {
    v28 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  if ((*(v28 + 23) ^ *a2) > 7)
  {
    *(a3 + 8) = 0;
  }

  else
  {
    *(a3 + 8) = &off_2A2078C98 + 3;
    *a3 = *(this + 56);
  }
}

void sub_29AED39F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29AED3A14()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "camera", 0);
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
  atomic_compare_exchange_strong(&qword_2A174F988, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174F988);
  }

  return v0;
}

void sub_29AED3B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

char *sub_29AED3B80(char *result, float32x2_t *a2, float32x2_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A15A71C(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2;
      v9 = a2[1];
      a2 += 2;
      *v7 = vcvtq_f64_f32(v8);
      v7[1] = vcvtq_f64_f32(v9);
      v7 += 2;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29AED3BE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource_Impl::_ToDataSource(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v5)
    {
      v5 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    v4 = (v5 + 160);
    goto LABEL_9;
  }

  if (!a1)
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v3)
    {
      v3 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    v4 = (v3 + 152);
LABEL_9:
    pxrInternal__aapl__pxrReserved__::HdCameraSchema::BuildProjectionDataSource(v4, &v6);
    *a2 = v6;
    return;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource_Impl::_CameraFromViewAndProjectionMatrix(uint64_t a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v6, 1.0);
  v5 = 0x497424003F800000;
  pxrInternal__aapl__pxrReserved__::GfCamera::GfCamera(a1, v6, 0, &v5, 20.955, 15.2908, 0.0, 0.0, 50.0);
}

void sub_29AED3D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 160);
  if (v12)
  {
    *(v10 + 168) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AED3EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v30);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource::HdxFreeCameraPrimDataSource(int a1, pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource_Impl *this, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3)
{
  pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource_Impl::_CameraFromViewAndProjectionMatrix(&v3);
}

{
  pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource_Impl::_CameraFromViewAndProjectionMatrix(&v3);
}

void sub_29AED3F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AED3FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource::~HdxFreeCameraPrimDataSource(pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource *this)
{
  *this = &unk_2A209B9B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource::~HdxFreeCameraPrimDataSource(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource::SetCamera(pxrInternal__aapl__pxrReserved__::GfCamera **this, const pxrInternal__aapl__pxrReserved__::GfCamera *a2, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3)
{
  pxrInternal__aapl__pxrReserved__::GfCamera::GetTransform(this[1], v76);
  pxrInternal__aapl__pxrReserved__::GfCamera::GetTransform(a2, v75);
  if (!pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==(v76, v75))
  {
    v6 = this[1];
    pxrInternal__aapl__pxrReserved__::GfCamera::GetTransform(a2, v76);
    pxrInternal__aapl__pxrReserved__::GfCamera::SetTransform(v6, v76);
    if (a3)
    {
      DefaultLocator = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v7);
      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, DefaultLocator);
    }
  }

  Projection = pxrInternal__aapl__pxrReserved__::GfCamera::GetProjection(this[1]);
  if (Projection != pxrInternal__aapl__pxrReserved__::GfCamera::GetProjection(a2))
  {
    v10 = this[1];
    LODWORD(v76[0]) = pxrInternal__aapl__pxrReserved__::GfCamera::GetProjection(a2);
    pxrInternal__aapl__pxrReserved__::GfCamera::SetProjection(v10, v76);
    if (a3)
    {
      if ((atomic_load_explicit(&qword_2A174F9C8, memory_order_acquire) & 1) == 0)
      {
        v69 = __cxa_guard_acquire(&qword_2A174F9C8);
        if (v69)
        {
          v70 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v69);
          v71 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v71)
          {
            v71 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v70, (v71 + 8), dword_2A174F990);
          __cxa_atexit(sub_29ABC33B4, dword_2A174F990, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174F9C8);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, dword_2A174F990);
    }
  }

  HorizontalAperture = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalAperture(this[1]);
  if (HorizontalAperture != pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalAperture(a2))
  {
    v12 = this[1];
    v13 = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalAperture(a2);
    pxrInternal__aapl__pxrReserved__::GfCamera::SetHorizontalAperture(v12, v13);
    if (a3)
    {
      if ((atomic_load_explicit(&qword_2A174FA08, memory_order_acquire) & 1) == 0)
      {
        v48 = __cxa_guard_acquire(&qword_2A174FA08);
        if (v48)
        {
          v49 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v48);
          v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v50)
          {
            v50 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v49, (v50 + 16), dword_2A174F9D0);
          __cxa_atexit(sub_29ABC33B4, dword_2A174F9D0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FA08);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, dword_2A174F9D0);
    }
  }

  VerticalAperture = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalAperture(this[1]);
  if (VerticalAperture != pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalAperture(a2))
  {
    v15 = this[1];
    v16 = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalAperture(a2);
    pxrInternal__aapl__pxrReserved__::GfCamera::SetVerticalAperture(v15, v16);
    if (a3)
    {
      if ((atomic_load_explicit(&qword_2A174FA48, memory_order_acquire) & 1) == 0)
      {
        v51 = __cxa_guard_acquire(&qword_2A174FA48);
        if (v51)
        {
          v52 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v51);
          v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v53)
          {
            v53 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v52, (v53 + 24), dword_2A174FA10);
          __cxa_atexit(sub_29ABC33B4, dword_2A174FA10, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FA48);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, dword_2A174FA10);
    }
  }

  HorizontalApertureOffset = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalApertureOffset(this[1]);
  if (HorizontalApertureOffset != pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalApertureOffset(a2))
  {
    v18 = this[1];
    v19 = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalApertureOffset(a2);
    pxrInternal__aapl__pxrReserved__::GfCamera::SetHorizontalApertureOffset(v18, v19);
    if (a3)
    {
      if ((atomic_load_explicit(&qword_2A174FA88, memory_order_acquire) & 1) == 0)
      {
        v54 = __cxa_guard_acquire(&qword_2A174FA88);
        if (v54)
        {
          v55 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v54);
          v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v56)
          {
            v56 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v55, (v56 + 32), dword_2A174FA50);
          __cxa_atexit(sub_29ABC33B4, dword_2A174FA50, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FA88);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, dword_2A174FA50);
    }
  }

  VerticalApertureOffset = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalApertureOffset(this[1]);
  if (VerticalApertureOffset != pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalApertureOffset(a2))
  {
    v21 = this[1];
    v22 = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalApertureOffset(a2);
    pxrInternal__aapl__pxrReserved__::GfCamera::SetVerticalApertureOffset(v21, v22);
    if (a3)
    {
      if ((atomic_load_explicit(&qword_2A174FAC8, memory_order_acquire) & 1) == 0)
      {
        v57 = __cxa_guard_acquire(&qword_2A174FAC8);
        if (v57)
        {
          v58 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v57);
          v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v59)
          {
            v59 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v58, (v59 + 40), dword_2A174FA90);
          __cxa_atexit(sub_29ABC33B4, dword_2A174FA90, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FAC8);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, dword_2A174FA90);
    }
  }

  FocalLength = pxrInternal__aapl__pxrReserved__::GfCamera::GetFocalLength(this[1]);
  if (FocalLength != pxrInternal__aapl__pxrReserved__::GfCamera::GetFocalLength(a2))
  {
    v24 = this[1];
    v25 = pxrInternal__aapl__pxrReserved__::GfCamera::GetFocalLength(a2);
    pxrInternal__aapl__pxrReserved__::GfCamera::SetFocalLength(v24, v25);
    if (a3)
    {
      if ((atomic_load_explicit(&qword_2A174FB08, memory_order_acquire) & 1) == 0)
      {
        v60 = __cxa_guard_acquire(&qword_2A174FB08);
        if (v60)
        {
          v61 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v60);
          v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v62)
          {
            v62 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v61, (v62 + 48), dword_2A174FAD0);
          __cxa_atexit(sub_29ABC33B4, dword_2A174FAD0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FB08);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, dword_2A174FAD0);
    }
  }

  ClippingRange = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingRange(this[1]);
  v28 = v27;
  if (ClippingRange != pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingRange(a2) || v28 != v29)
  {
    v30 = this[1];
    LODWORD(v76[0]) = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingRange(a2);
    DWORD1(v76[0]) = v31;
    pxrInternal__aapl__pxrReserved__::GfCamera::SetClippingRange(v30, v76);
    if (a3)
    {
      if ((atomic_load_explicit(&qword_2A174FB48, memory_order_acquire) & 1) == 0)
      {
        v72 = __cxa_guard_acquire(&qword_2A174FB48);
        if (v72)
        {
          v73 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v72);
          v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v74)
          {
            v74 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v73, (v74 + 56), dword_2A174FB10);
          __cxa_atexit(sub_29ABC33B4, dword_2A174FB10, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FB48);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, dword_2A174FB10);
    }
  }

  ClippingPlanes = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingPlanes(this[1]);
  v33 = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingPlanes(a2);
  v35 = *ClippingPlanes;
  v34 = *(ClippingPlanes + 8);
  v36 = *v33;
  if ((v34 - *ClippingPlanes) == (*(v33 + 8) - *v33))
  {
    while (v35 != v34)
    {
      if (*v35 != *v36 || v35[1] != v36[1] || v35[2] != v36[2] || v35[3] != v36[3])
      {
        goto LABEL_40;
      }

      v35 += 4;
      v36 += 4;
    }
  }

  else
  {
LABEL_40:
    v37 = this[1];
    v38 = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingPlanes(a2);
    pxrInternal__aapl__pxrReserved__::GfCamera::SetClippingPlanes(v37, v38);
    if (a3)
    {
      if ((atomic_load_explicit(&qword_2A174FB88, memory_order_acquire) & 1) == 0)
      {
        v45 = __cxa_guard_acquire(&qword_2A174FB88);
        if (v45)
        {
          v46 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v45);
          v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v47)
          {
            v47 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v46, (v47 + 64), dword_2A174FB50);
          __cxa_atexit(sub_29ABC33B4, dword_2A174FB50, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FB88);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, dword_2A174FB50);
    }
  }

  FStop = pxrInternal__aapl__pxrReserved__::GfCamera::GetFStop(this[1]);
  if (FStop != pxrInternal__aapl__pxrReserved__::GfCamera::GetFStop(a2))
  {
    v40 = this[1];
    v41 = pxrInternal__aapl__pxrReserved__::GfCamera::GetFStop(a2);
    pxrInternal__aapl__pxrReserved__::GfCamera::SetFStop(v40, v41);
    if (a3)
    {
      if ((atomic_load_explicit(&qword_2A174FBC8, memory_order_acquire) & 1) == 0)
      {
        v63 = __cxa_guard_acquire(&qword_2A174FBC8);
        if (v63)
        {
          v64 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v63);
          v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v65)
          {
            v65 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v64, (v65 + 72), dword_2A174FB90);
          __cxa_atexit(sub_29ABC33B4, dword_2A174FB90, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FBC8);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, dword_2A174FB90);
    }
  }

  FocusDistance = pxrInternal__aapl__pxrReserved__::GfCamera::GetFocusDistance(this[1]);
  if (FocusDistance != pxrInternal__aapl__pxrReserved__::GfCamera::GetFocusDistance(a2))
  {
    v43 = this[1];
    v44 = pxrInternal__aapl__pxrReserved__::GfCamera::GetFocusDistance(a2);
    pxrInternal__aapl__pxrReserved__::GfCamera::SetFocusDistance(v43, v44);
    if (a3)
    {
      if ((atomic_load_explicit(&qword_2A174FC08, memory_order_acquire) & 1) == 0)
      {
        v66 = __cxa_guard_acquire(&qword_2A174FC08);
        if (v66)
        {
          v67 = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v66);
          v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          if (!v68)
          {
            v68 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v67, (v68 + 80), dword_2A174FBD0);
          __cxa_atexit(sub_29ABC33B4, dword_2A174FBD0, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FC08);
        }
      }

      pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(a3, dword_2A174FBD0);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource::SetWindowPolicy(uint64_t result, int a2, pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *this)
{
  v3 = *(result + 8);
  if (*(v3 + 192) != a2)
  {
    *(v3 + 192) = a2;
    if (this)
    {
      if ((atomic_load_explicit(&qword_2A174FC48, memory_order_acquire) & 1) == 0)
      {
        v5 = __cxa_guard_acquire(&qword_2A174FC48);
        if (v5)
        {
          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetDefaultLocator(v5);
          v7 = atomic_load(&qword_2A174FC50);
          if (!v7)
          {
            v7 = sub_29AED5050();
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(DefaultLocator, v7, dword_2A174FC10);
          __cxa_atexit(sub_29ABC33B4, dword_2A174FC10, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174FC48);
        }
      }

      return pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::insert(this, dword_2A174FC10);
    }
  }

  return result;
}

void sub_29AED4BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource::Get(pxrInternal__aapl__pxrReserved__::GfCamera **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetSchemaToken(this);
  if ((*SchemaToken ^ *a2) > 7)
  {
    if ((*pxrInternal__aapl__pxrReserved__::HdXformSchema::GetSchemaToken(SchemaToken) ^ *a2) > 7)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v17 = 1;
      pxrInternal__aapl__pxrReserved__::HdRetainedTypedSampledDataSource<BOOL>::New(&v17, &v18);
      v19 = v18;
      v18 = 0uLL;
      v7 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetResetXformStack(&v20, &v19);
      pxrInternal__aapl__pxrReserved__::GfCamera::GetTransform(this[1], v14);
      v8 = operator new(0x88uLL);
      v9 = v14[5];
      *(v8 + 72) = v14[4];
      *(v8 + 88) = v9;
      v10 = v14[7];
      *(v8 + 104) = v14[6];
      *(v8 + 120) = v10;
      v11 = v14[1];
      *(v8 + 8) = v14[0];
      *(v8 + 24) = v11;
      v12 = v14[3];
      *(v8 + 40) = v14[2];
      *v8 = &unk_2A207BA78;
      *(v8 + 56) = v12;
      sub_29AC29E70(&v15, v8);
      v16 = v15;
      v15 = 0uLL;
      v13 = pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::SetMatrix(v7, &v16);
      pxrInternal__aapl__pxrReserved__::HdXformSchema::Builder::Build(v13, &v22);
      *a3 = v22;
      v22 = 0uLL;
      if (*(&v16 + 1))
      {
        sub_29A014BEC(*(&v16 + 1));
      }

      if (*(&v15 + 1))
      {
        sub_29A014BEC(*(&v15 + 1));
      }

      if (*(&v19 + 1))
      {
        sub_29A014BEC(*(&v19 + 1));
      }

      if (*(&v18 + 1))
      {
        sub_29A014BEC(*(&v18 + 1));
      }

      if (*(&v21 + 1))
      {
        sub_29A014BEC(*(&v21 + 1));
      }

      if (*(&v20 + 1))
      {
        sub_29A014BEC(*(&v20 + 1));
      }
    }
  }

  else
  {
    sub_29AED4DFC(this + 1, v14);
    *a3 = v14[0];
  }
}

void sub_29AED4DA4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(v1 - 104);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29A95E544(v1 - 80);
  _Unwind_Resume(a1);
}

void *sub_29AED4DFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v6 = *a1;
  v5 = a1[1];
  *v4 = &unk_2A209BA48;
  v4[1] = v6;
  v4[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_29AED5F64(a2, v4);
}

void pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource::GetNames(void *a1@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174FC70, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A174FC70);
    if (v3)
    {
      SchemaToken = pxrInternal__aapl__pxrReserved__::HdCameraSchema::GetSchemaToken(v3);
      v5 = *SchemaToken;
      v10 = v5;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 = v5 & 0xFFFFFFFFFFFFFFF8;
      }

      v6 = *pxrInternal__aapl__pxrReserved__::HdXformSchema::GetSchemaToken(SchemaToken);
      v11 = v6;
      if ((v6 & 7) != 0)
      {
        v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
        {
          v11 = v7;
        }
      }

      qword_2A174FC58 = 0;
      unk_2A174FC60 = 0;
      qword_2A174FC68 = 0;
      sub_29A12EF7C(&qword_2A174FC58, &v10, &v12, 2uLL);
      for (i = 8; i != -8; i -= 8)
      {
        v9 = *(&v10 + i);
        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A174FC58, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174FC70);
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AED4FE4(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v1 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      __cxa_guard_abort(&qword_2A174FC70);
      _Unwind_Resume(a1);
    }
  }
}

unint64_t sub_29AED5050()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "windowPolicy", 0);
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
  atomic_compare_exchange_strong(&qword_2A174FC50, &v3, v0);
  if (v3)
  {
    v5 = (v0 + 1);
    sub_29A124AB0(&v5);
    if ((*v0 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v0 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v0);
    return atomic_load(&qword_2A174FC50);
  }

  return v0;
}

void sub_29AED5170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
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

void sub_29AED51DC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209B9F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AED5220(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }
}

void sub_29AED523C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209BA48;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29AED5298(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A209BA48;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v3);
}

void sub_29AED52F8(void *a1@<X8>)
{
  v1 = a1;
  v39 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F9E80, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&qword_2A14F9E80);
    v1 = a1;
    if (v3)
    {
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v4)
      {
        v4 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v5 = *(v4 + 1);
      v28 = v5;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v28 &= 0xFFFFFFFFFFFFFFF8;
      }

      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v6)
      {
        v6 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v7 = *(v6 + 2);
      v29 = v7;
      if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v29 &= 0xFFFFFFFFFFFFFFF8;
      }

      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v8)
      {
        v8 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v9 = *(v8 + 3);
      v30 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v30 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v10)
      {
        v10 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v11 = *(v10 + 4);
      v31 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v31 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v12)
      {
        v12 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v13 = *(v12 + 5);
      v32 = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v32 &= 0xFFFFFFFFFFFFFFF8;
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v14)
      {
        v14 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v15 = *(v14 + 6);
      v33 = v15;
      if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v33 &= 0xFFFFFFFFFFFFFFF8;
      }

      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v16)
      {
        v16 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v17 = *(v16 + 7);
      v34 = v17;
      if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v34 &= 0xFFFFFFFFFFFFFFF8;
      }

      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v18)
      {
        v18 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v19 = *(v18 + 8);
      v35 = v19;
      if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v35 &= 0xFFFFFFFFFFFFFFF8;
      }

      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v20)
      {
        v20 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v21 = *(v20 + 9);
      v36 = v21;
      if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v36 &= 0xFFFFFFFFFFFFFFF8;
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v22)
      {
        v22 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      v23 = *(v22 + 10);
      v37 = v23;
      if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v37 &= 0xFFFFFFFFFFFFFFF8;
      }

      v24 = atomic_load(&qword_2A174FC50);
      if (!v24)
      {
        v24 = sub_29AED5050();
      }

      v25 = *v24;
      v38 = v25;
      if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v38 &= 0xFFFFFFFFFFFFFFF8;
      }

      qword_2A14F9E68 = 0;
      unk_2A14F9E70 = 0;
      qword_2A14F9E78 = 0;
      sub_29A12EF7C(&qword_2A14F9E68, &v28, &v39, 0xBuLL);
      for (i = 80; i != -8; i -= 8)
      {
        v27 = *(&v28 + i);
        if ((v27 & 7) != 0)
        {
          atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      __cxa_atexit(sub_29A3C73E0, &qword_2A14F9E68, &dword_299FE7000);
      __cxa_guard_release(&qword_2A14F9E80);
      v1 = a1;
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AED57F8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  if (!v6)
  {
    v6 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
  }

  if ((*(v6 + 1) ^ *a2) > 7)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v8)
    {
      v8 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    if ((*(v8 + 2) ^ *a2) <= 7)
    {
      HorizontalAperture = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalAperture(*(a1 + 8));
LABEL_23:
      v13 = HorizontalAperture / 0.1;
      v14 = operator new(0x10uLL);
      *v14 = &unk_2A2079BC0;
      v14[2] = v13;
      sub_29AC01310(v25, v14);
LABEL_24:
      *a3 = v25[0];
      return;
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v10)
    {
      v10 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    if ((*(v10 + 3) ^ *a2) <= 7)
    {
      HorizontalAperture = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalAperture(*(a1 + 8));
      goto LABEL_23;
    }

    v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v11)
    {
      v11 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    if ((*(v11 + 4) ^ *a2) <= 7)
    {
      HorizontalAperture = pxrInternal__aapl__pxrReserved__::GfCamera::GetHorizontalApertureOffset(*(a1 + 8));
      goto LABEL_23;
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v12)
    {
      v12 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    if ((*(v12 + 5) ^ *a2) <= 7)
    {
      HorizontalAperture = pxrInternal__aapl__pxrReserved__::GfCamera::GetVerticalApertureOffset(*(a1 + 8));
      goto LABEL_23;
    }

    v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v15)
    {
      v15 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    if ((*(v15 + 6) ^ *a2) <= 7)
    {
      FStop = pxrInternal__aapl__pxrReserved__::GfCamera::GetFocalLength(*(a1 + 8)) / 0.1;
LABEL_29:
      *&v26 = FStop;
      sub_29AED5BC4(&v26, v25);
      goto LABEL_24;
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v17)
    {
      v17 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    if ((*(v17 + 7) ^ *a2) <= 7)
    {
      LODWORD(v26) = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingRange(*(a1 + 8));
      DWORD1(v26) = v18;
      sub_29AED5C2C(&v26, v25);
      goto LABEL_24;
    }

    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    if (!v19)
    {
      v19 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
    }

    if ((*(v19 + 8) ^ *a2) > 7)
    {
      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v22)
      {
        v22 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      if ((*(v22 + 9) ^ *a2) <= 7)
      {
        FStop = pxrInternal__aapl__pxrReserved__::GfCamera::GetFStop(*(a1 + 8));
        goto LABEL_29;
      }

      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      if (!v23)
      {
        v23 = sub_29ABCD05C(&pxrInternal__aapl__pxrReserved__::HdCameraSchemaTokens);
      }

      if ((*(v23 + 10) ^ *a2) <= 7)
      {
        FStop = pxrInternal__aapl__pxrReserved__::GfCamera::GetFocusDistance(*(a1 + 8));
        goto LABEL_29;
      }

      v24 = atomic_load(&qword_2A174FC50);
      if (!v24)
      {
        v24 = sub_29AED5050();
      }

      if ((*v24 ^ *a2) <= 7)
      {
        sub_29AED5CDC((*(a1 + 8) + 192), v25);
        goto LABEL_24;
      }
    }

    else
    {
      ClippingPlanes = pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingPlanes(*(a1 + 8));
      v21 = ClippingPlanes[1];
      if (*ClippingPlanes != v21)
      {
        sub_29AED5C90(v25, *ClippingPlanes, v21);
        sub_29ABFABE8(v25, &v26);
        *a3 = v26;
        v26 = 0uLL;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
      }
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    return;
  }

  Projection = pxrInternal__aapl__pxrReserved__::GfCamera::GetProjection(*(a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdxFreeCameraPrimDataSource_Impl::_ToDataSource(Projection, a3);
}

void *sub_29AED5BC4@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A2079BC0;
  v4[2] = *a1;

  return sub_29AC01310(a2, v4);
}

void *sub_29AED5C2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A2078B78;
  v4[1] = v5;

  return sub_29ABFBC18(a2, v4);
}

uint64_t sub_29AED5C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AED5D44(a1, a2, a3);
  return a1;
}

void *sub_29AED5CDC@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A2078C40;
  v4[2] = *a1;

  return sub_29ABFBF4C(a2, v4);
}

void sub_29AED5D44(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  sub_29A196F70(a1);
  v6[0] = &v8;
  v6[1] = &v7;
  sub_29AED5DA4(a1, (a3 - a2) >> 4, v6);
}

void sub_29AED5DA4(unint64_t *a1, unint64_t a2, float32x2_t ***a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v15 = a1[4];
            goto LABEL_28;
          }

          v9 = a1[4];
          if (*(v9 - 8) < a2)
          {
            v10 = sub_29A19719C(a1, a2);
            v7 = v10;
            if (v3)
            {
              v11 = 0;
              do
              {
                v12 = &v10[v11];
                v13 = *(v9 + v11 * 8 + 16);
                *v12 = *(v9 + v11 * 8);
                *(v12 + 1) = v13;
                v11 += 4;
              }

              while (4 * v3 != v11);
            }
          }

          v14 = &v7[4 * v3];
          v15 = v7;
LABEL_26:
          sub_29AED5F38(a3, v14);
LABEL_28:
          if (v15 != a1[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a1;
      }

      v17 = sub_29A19719C(a1, a2);
      v15 = v17;
      if (v3)
      {
        v18 = 32 * v16;
        v19 = v17;
        do
        {
          v20 = *v7;
          v21 = *(v7 + 1);
          v7 += 4;
          *v19 = v20;
          v19[1] = v21;
          v19 += 2;
          v18 -= 32;
        }

        while (v18);
      }

      if (v3 >= a2)
      {
        goto LABEL_28;
      }

      v14 = &v17[2 * v3];
      goto LABEL_26;
    }

    if (32 * a2 / a2 == 32)
    {
      v15 = sub_29A19719C(a1, a2);
      v14 = v15;
      goto LABEL_26;
    }
  }

  sub_29A196F70(a1);
}

float64x2_t sub_29AED5F38(float32x2_t ***a1, float64x2_t *a2)
{
  v2 = **a1;
  v3 = *a1[1];
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = v2[1];
    v2 += 2;
    result = vcvtq_f64_f32(v4);
    *a2 = result;
    a2[1] = vcvtq_f64_f32(v5);
    a2 += 2;
  }

  return result;
}

void *sub_29AED5F64(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209BA90;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AED5FBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AED5FD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AED6000(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AED6030(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209BAE0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::HdxFullscreenShader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 8))
    {
      sub_29A008D14(__p, *a3, *(a3 + 8));
      goto LABEL_7;
    }
  }

  else if (*(a3 + 23))
  {
    *__p = *a3;
    v7 = *(a3 + 16);
    goto LABEL_7;
  }

  sub_29A008E78(__p, "HdxFullscreenShader");
LABEL_7:
  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::HdxEffectsShader(a1, a2, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_2A209BB08;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  pxrInternal__aapl__pxrReserved__::HgiDepthStencilState::HgiDepthStencilState((a1 + 680));
  *(a1 + 760) = xmmword_29B6C6450;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 15;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0;
  *(a1 + 840) = xmmword_29B6C6450;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 15;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0;
  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_SetVertexBufferDescriptor(a1);
  *(a1 + 680) = 1;
  *(a1 + 684) = 7;
  *(a1 + 700) = 0;
  *(a1 + 768) = 0x100000000;
  *(a1 + 848) = 0x100000000;
  pxrInternal__aapl__pxrReserved__::HgiMultiSampleState::HgiMultiSampleState(v8);
  v8[1] = 0;
  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_SetMultiSampleState(a1, v8);
  pxrInternal__aapl__pxrReserved__::HgiRasterizationState::HgiRasterizationState(__p);
  LODWORD(__p[0]) = 0;
  __p[1] = 0x100000002;
  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_SetRasterizationState(a1, __p);
  return a1;
}

void sub_29AED6208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_SetVertexBufferDescriptor(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *this)
{
  v12 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v6);
  v6 = 13;
  v7 = 0;
  pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc::HgiVertexAttributeDesc(&v4);
  v4 = 0x100000000BLL;
  v5 = 1;
  sub_29AED8160(v3, 1uLL);
  v2 = v3[0];
  *v3[0] = 0;
  *(v2 + 36) = 24;
  __src = v6;
  v9 = v7;
  v10 = v4;
  v11 = v5;
  sub_29AB908B8((v2 + 8), &__src, &v12, 2uLL);
  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_SetVertexBufferDescs(this, v3);
  __src = v3;
  sub_29AB87628(&__src);
}

void sub_29AED6398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 48) = &a10;
  sub_29AB87628((v10 - 48));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::~HdxFullscreenShader(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *this)
{
  *this = &unk_2A209BB08;
  Hgi = pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_GetHgi(this);
  v3 = Hgi;
  if (Hgi)
  {
    if (*(this + 79))
    {
      (*(*Hgi + 104))(Hgi, this + 632);
    }

    if (*(this + 77))
    {
      (*(*v3 + 104))(v3, this + 616);
    }

    if (*(this + 81))
    {
      pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_DestroyShaderProgram(this, this + 81);
    }

    if (*(this + 83))
    {
      (*(*v3 + 88))(v3, this + 664);
    }
  }

  v4 = *(this + 76);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 75);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 72);
  if (v6)
  {
    *(this + 73) = v6;
    operator delete(v6);
  }

  v7 = *(this + 69);
  if (v7)
  {
    *(this + 70) = v7;
    operator delete(v7);
  }

  v8 = *(this + 66);
  if (v8)
  {
    *(this + 67) = v8;
    operator delete(v8);
  }

  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::~HdxEffectsShader(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::~HdxFullscreenShader(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(void *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *a4)
{
  v7 = this;
  if ((*a2 ^ this[75]) > 7 || (*a3 ^ this[76]) >= 8)
  {
    v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v8)
    {
      EmptyString = (v8 + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    if (!v10)
    {
      v10 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v25, EmptyString, v10 + 112);
    memset(&v24, 0, sizeof(v24));
    if (pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(v25, &v24))
    {
      sub_29A166F2C(v7 + 75, a2);
      sub_29A166F2C(v7 + 76, a3);
      pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(__p, v25, (v7 + 76));
      v11 = v18;
      v12 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v11 = __p[1];
      }

      if (!v11)
      {
        v19 = "hdx/fullscreenShader.cpp";
        v20 = "SetProgram";
        v21 = 116;
        v22 = "void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(const TfToken &, const TfToken &, HgiShaderFunctionDesc &)";
        v23 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v19, "!fsCode.empty()", 0);
        v12 = v18;
      }

      v13 = (v12 & 0x80u) != 0;
      v14 = __p;
      if (v13)
      {
        v14 = __p[0];
      }

      *(a4 + 5) = v14;
      pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(v7, a4);
      *(a4 + 5) = 0;
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v19 = "hdx/fullscreenShader.cpp";
      v20 = "SetProgram";
      v21 = 110;
      v22 = "void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(const TfToken &, const TfToken &, HgiShaderFunctionDesc &)";
      v23 = 0;
      v15 = v25;
      if (v26 < 0)
      {
        v15 = v25[0];
      }

      v16 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = v24.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 1, "Couldn't load fragment shader %s, error: %s", v15, v16);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    return sub_29ADC1D14(v25);
  }

  return this;
}

void sub_29AED6770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_29ADC1D14(&a28);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *this, const pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *a2)
{
  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_DestroyShaderProgram(this, this + 81);
  pxrInternal__aapl__pxrReserved__::HdxPackageFullscreenShader(&v35);
  if ((v35.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v35.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v6)
  {
    v6 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v40, EmptyString, v6 + 112);
  if ((v35.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v35.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  memset(&v39, 0, sizeof(v39));
  if (pxrInternal__aapl__pxrReserved__::HioGlslfx::IsValid(v40, &v39))
  {
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v35);
    v7 = atomic_load(&qword_2A174FC78);
    if (!v7)
    {
      v7 = sub_29AED7EF0();
    }

    if ((*v7 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((*v7 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
    }

    std::string::operator=(&v35, v8);
    LODWORD(v36) = 1;
    sub_29A008E78(&v29, "position");
    sub_29A008E78(&v26, "vec4");
    sub_29A008E78(&__p, "position");
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v35, &v29, &v26, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&v29, "uvIn");
    sub_29A008E78(&v26, "vec2");
    memset(&__p, 0, sizeof(__p));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v35, &v29, &v26, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&v29, "gl_Position");
    sub_29A008E78(&v26, "vec4");
    sub_29A008E78(&__p, "position");
    memset(&v33, 0, sizeof(v33));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v35, &v29, &v26, &__p, &v33);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&v29, "uvOut");
    sub_29A008E78(&v26, "vec2");
    memset(&__p, 0, sizeof(__p));
    memset(&v33, 0, sizeof(v33));
    pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v35, &v29, &v26, &__p, &v33);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v11 = atomic_load(&qword_2A174FC78);
    if (!v11)
    {
      v11 = sub_29AED7EF0();
    }

    pxrInternal__aapl__pxrReserved__::HioGlslfx::GetSource(&__p, v40, v11);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v29.__r_.__value_.__r.__words[0] = "hdx/fullscreenShader.cpp";
      v29.__r_.__value_.__l.__size_ = "SetProgram";
      v29.__r_.__value_.__r.__words[2] = 155;
      v30 = "void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(const HgiShaderFunctionDesc &)";
      LOBYTE(v31) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v29, "!vsCode.empty()", 0);
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    v14 = v13 < 0;
    p_p = &__p;
    if (v14)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v38 = p_p;
    Hgi = pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_GetHgi(this);
    v33.__r_.__value_.__r.__words[0] = (*(*Hgi + 112))(Hgi, &v35);
    v33.__r_.__value_.__l.__size_ = v17;
    v18 = pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_GetHgi(this);
    *&v32 = (*(*v18 + 112))(v18, a2);
    *(&v32 + 1) = v19;
    pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc::HgiShaderProgramDesc(&v29);
    v20 = atomic_load(&qword_2A174FC78);
    if (!v20)
    {
      v20 = sub_29AED7EF0();
    }

    if ((*(v20 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v21 = ((*(v20 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v21 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v20);
    }

    std::string::operator=(&v29, v21);
    sub_29A03A998(&v30, &v33);
    sub_29A03A998(&v30, &v32);
    v22 = pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_GetHgi(this);
    v23 = (*(*v22 + 128))(v22, &v29);
    *(this + 81) = v23;
    *(this + 82) = v24;
    if (!(*(*v23 + 16))(v23) || !(*(*v33.__r_.__value_.__l.__data_ + 16))(v33.__r_.__value_.__r.__words[0]) || ((*(*v32 + 16))(v32) & 1) == 0)
    {
      v26.__r_.__value_.__r.__words[0] = "hdx/fullscreenShader.cpp";
      v26.__r_.__value_.__l.__size_ = "SetProgram";
      v26.__r_.__value_.__r.__words[2] = 170;
      v27 = "void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(const HgiShaderFunctionDesc &)";
      v28 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "Failed to create HdxFullscreenShader shader program");
      pxrInternal__aapl__pxrReserved__::HdxEffectsShader::PrintCompileErrors(this + 81);
      pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_DestroyShaderProgram(this, this + 81);
    }

    pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_SetShaderProgram(this, (this + 648));
    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29AB89F90(&v35);
  }

  else
  {
    v35.__r_.__value_.__r.__words[0] = "hdx/fullscreenShader.cpp";
    v35.__r_.__value_.__l.__size_ = "SetProgram";
    v35.__r_.__value_.__r.__words[2] = 137;
    v36 = "void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(const HgiShaderFunctionDesc &)";
    v37 = 0;
    v9 = v40;
    if (v41 < 0)
    {
      v9 = v40[0];
    }

    v10 = &v39;
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v39.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v35, 1, "Couldn't load vertex shader %s, error: %s", v9, v10);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  return sub_29ADC1D14(v40);
}

void sub_29AED6DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_29AB89F90(&a34);
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  sub_29ADC1D14(&STACK[0x238]);
  _Unwind_Resume(a1);
}

char **pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::BindBuffers(uint64_t a1, char **a2)
{
  result = (a1 + 576);
  if (result != a2)
  {
    return sub_29A12D958(result, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetDepthState(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *this, __n128 *a2)
{
  *(this + 680) = *a2;
  result = a2[1];
  v3 = a2[2];
  v4 = a2[4];
  *(this + 728) = a2[3];
  *(this + 744) = v4;
  *(this + 696) = result;
  *(this + 712) = v3;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetBlendState(uint64_t result, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *(result + 796) = a2;
  *(result + 800) = a3;
  *(result + 804) = a4;
  *(result + 808) = a5;
  *(result + 812) = a6;
  *(result + 816) = a7;
  *(result + 820) = a8;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetAttachmentLoadStoreOp(uint64_t result, int a2, int a3)
{
  *(result + 768) = a2;
  *(result + 772) = a3;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_CreateBufferResources(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *this)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!*(this + 79))
  {
    v20[0] = xmmword_29B714A58;
    v20[1] = unk_29B714A68;
    v20[2] = xmmword_29B714A78;
    v20[3] = unk_29B714A88;
    v21 = 0x40000000;
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    MEMORY[0x29C2C1A60](v12, "HdxFullscreenShader VertexBuffer");
    v14 = 4;
    v17 = v20;
    v15 = 72;
    v16 = 24;
    Hgi = pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_GetHgi(this);
    *(this + 79) = (*(*Hgi + 96))(Hgi, v12);
    *(this + 80) = v3;
    v19 = 2;
    v18 = 0x100000000;
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    v8 = 1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    MEMORY[0x29C2C1A60](__p, "HdxFullscreenShader IndexBuffer");
    v8 = 2;
    v11 = &v18;
    v9 = 12;
    v4 = pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_GetHgi(this);
    *(this + 77) = (*(*v4 + 96))(v4, __p);
    *(this + 78) = v5;
    pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_SetPrimitiveType(this, 3);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_29AED7134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::BindTextures(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *this, char **a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 == v6 || a2[1] - *a2 == v6 - v5)
  {
    v7 = (this + 528);
    if ((this + 528) != a2)
    {
      sub_29A12D958(v7, *a2, a2[1], (a2[1] - *a2) >> 4);
      v5 = *a3;
      v6 = a3[1];
    }

    if (v5 == v6)
    {
      v14 = (*(this + 67) - *(this + 66)) >> 4;
      *&v16 = pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_GetDefaultSampler(this);
      *(&v16 + 1) = v15;
      sub_29AED72E0(this + 69, v14, &v16);
    }

    else
    {
      sub_29A0CFC90(this + 69, (v6 - v5) >> 4);
      v8 = *a3;
      if (a3[1] != *a3)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          DefaultSampler = *(v8 + v9);
          if (DefaultSampler)
          {
            v12 = *(v8 + v9 + 8);
          }

          else
          {
            DefaultSampler = pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_GetDefaultSampler(this);
          }

          v13 = (*(this + 69) + v9);
          *v13 = DefaultSampler;
          v13[1] = v12;
          ++v10;
          v8 = *a3;
          v9 += 16;
        }

        while (v10 < (a3[1] - *a3) >> 4);
      }
    }
  }

  else
  {
    *&v16 = "hdx/fullscreenShader.cpp";
    *(&v16 + 1) = "BindTextures";
    v17 = 293;
    v18 = "void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::BindTextures(const HgiTextureHandleVector &, const HgiSamplerHandleVector &)";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 1, "Samplers vector must be empty, or match the size of the provided textures vector.");
    *(this + 67) = *(this + 66);
    *(this + 70) = *(this + 69);
  }
}

char *sub_29AED72E0(char **a1, unint64_t a2, _OWORD *a3)
{
  v6 = a1[2];
  result = *a1;
  if (a2 <= (v6 - result) >> 4)
  {
    v13 = (a1[1] - result) >> 4;
    if (v13 >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = (a1[1] - result) >> 4;
    }

    for (; v14; --v14)
    {
      *result = *a3;
      result += 16;
    }

    if (a2 <= v13)
    {
      a1[1] = &(*a1)[16 * a2];
    }

    else
    {
      v15 = a1[1];
      v16 = &v15[16 * (a2 - v13)];
      v17 = 16 * a2 - 16 * v13;
      do
      {
        *v15 = *a3;
        v15 += 16;
        v17 -= 16;
      }

      while (v17);
      a1[1] = v16;
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 3;
    if (v6 >> 3 <= a2)
    {
      v8 = a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    result = sub_29A0D0518(a1, v9);
    v10 = a1[1];
    v11 = &v10[16 * a2];
    v12 = 16 * a2;
    do
    {
      *v10 = *a3;
      v10 += 16;
      v12 -= 16;
    }

    while (v12);
    a1[1] = v11;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_GetDefaultSampler(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *this)
{
  result = *(this + 83);
  if (!result)
  {
    v6 = 0;
    memset(v8, 0, 21);
    *__p = 0u;
    v9 = 0x1000000000;
    v7 = 0x100000001;
    v8[2] = 0;
    Hgi = pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_GetHgi(this);
    result = (*(*Hgi + 80))(Hgi, __p);
    *(this + 83) = result;
    *(this + 84) = v4;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
      return *(this + 83);
    }
  }

  return result;
}

void sub_29AED749C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_SetResourceBindings(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *this)
{
  memset(v24, 0, sizeof(v24));
  sub_29AED7720(v24, (*(this + 67) - *(this + 66)) >> 4);
  v2 = *(this + 67);
  v3 = *(this + 66);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (v3 + 16 * v4);
      if (*v6)
      {
        pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc::HgiTextureBindDesc(&v13);
        HIDWORD(v17) = v5;
        LODWORD(v18) = 2;
        BYTE4(v18) = 0;
        sub_29A03A998(&v13, v6);
        sub_29A03A998(&__p, (*(this + 69) + 16 * v4));
        sub_29ADF42D0(v24, &v13);
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        if (v13)
        {
          v14 = v13;
          operator delete(v13);
        }

        v2 = *(this + 67);
        v3 = *(this + 66);
      }

      v4 = ++v5;
    }

    while (v5 < ((v2 - v3) >> 4));
  }

  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_SetTextureBindings(this, v24);
  memset(v23, 0, sizeof(v23));
  sub_29AED77DC(v23, (*(this + 73) - *(this + 72)) >> 4);
  v7 = *(this + 73);
  v8 = *(this + 72);
  if (v7 != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (v8 + 16 * v9);
      if (*v11)
      {
        pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc::HgiBufferBindDesc(&v13);
        v19 = 5;
        v20 = v10;
        v21 = 2;
        v22 = 0;
        v12 = 0;
        sub_29A00D250(&__p, &v12);
        sub_29A03A998(&v13, v11);
        sub_29ADEB7F8(v23, &v13);
        if (v17)
        {
          v18 = v17;
          operator delete(v17);
        }

        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        if (v13)
        {
          v14 = v13;
          operator delete(v13);
        }

        v7 = *(this + 73);
        v8 = *(this + 72);
      }

      v9 = ++v10;
    }

    while (v10 < ((v7 - v8) >> 4));
  }

  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_SetBufferBindings(this, v23);
  v13 = v23;
  sub_29AB88B40(&v13);
  v13 = v24;
  sub_29AB88D58(&v13);
}

void sub_29AED76C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a10 = &a21;
  sub_29AB88B40(&a10);
  a10 = (v21 - 72);
  sub_29AB88D58(&a10);
  _Unwind_Resume(a1);
}

void **sub_29AED7720(void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (a2 >> 58)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A0BE3C0(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[64 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29ADFA5EC(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29ADFA6DC(&v12);
  }

  return result;
}

void sub_29AED77C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ADFA6DC(va);
  _Unwind_Resume(a1);
}

void **sub_29AED77DC(void **result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x2E8BA2E8BA2E8BBLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A1587D0(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[88 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29ADEBA54(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29ADEBB08(&v12);
  }

  return result;
}

void sub_29AED78B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ADEBB08(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::Draw(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *a1, _OWORD *a2, pxrInternal__aapl__pxrReserved__::HgiTexture **a3)
{
  v4 = *a2;
  if (*a2)
  {
    v9 = 0;
    v10 = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v4) + 52);
    v7[1] = 0;
    v8 = 0uLL;
    v7[0] = 0;
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_Draw(a1, a2, &v8, a3, v7, &v9);
  }

  else
  {
    v9 = "hdx/fullscreenShader.cpp";
    v10 = "Draw";
    v11 = 392;
    v12 = "void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::Draw(const HgiTextureHandle &, const HgiTextureHandle &)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 1, "Color texture must be provided.");
  }
}

void pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_Draw(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *this, _OWORD *a2, _OWORD *a3, pxrInternal__aapl__pxrReserved__::HgiTexture **a4, void *a5, uint64_t a6)
{
  v12 = *a4 != 0;
  if (!*(this + 81))
  {
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_SetDefaultProgram(this, *a4 != 0);
  }

  if (!*(this + 79))
  {
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_CreateBufferResources(this);
  }

  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_SetResourceBindings(this);
  sub_29AED81FC(v19, 1uLL, (this + 760));
  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_SetColorAttachments(this, v19);
  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_SetDepthAttachment(this, (this + 840));
  *(this + 681) = v12;
  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_SetDepthStencilState(this, (this + 680));
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (*a2)
  {
    sub_29A03A998(&v16, a2);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  if (*a3)
  {
    sub_29A03A998(&__p, a3);
  }

  pxrInternal__aapl__pxrReserved__::HdxEffectsShader::_CreateAndSubmitGraphicsCmds(this, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }
}

void sub_29AED7AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::_SetDefaultProgram(pxrInternal__aapl__pxrReserved__::HdxFullscreenShader *this, int a2)
{
  v4 = atomic_load(&qword_2A174FC78);
  if (a2)
  {
    if (!v4)
    {
      v4 = sub_29AED7EF0();
    }

    v5 = (v4 + 16);
  }

  else
  {
    if (!v4)
    {
      v4 = sub_29AED7EF0();
    }

    v5 = (v4 + 8);
  }

  v6 = pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v13);
  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::string::operator=(&v13, EmptyString);
  v14 = 2;
  sub_29A008E78(&v12, "uvOut");
  sub_29A008E78(&v11, "vec2");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v13, &v12, &v11, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v12, "hd_FragColor");
  sub_29A008E78(&v11, "vec4");
  sub_29A008E78(&__p, "color");
  memset(&v9, 0, sizeof(v9));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v13, &v12, &v11, &__p, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v12, "colorIn");
  LODWORD(v11.__r_.__value_.__l.__data_) = 13;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(&v13, &v12, 0, 2u, &v11, 0);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if (!a2)
    {
      goto LABEL_39;
    }
  }

  else if (!a2)
  {
    goto LABEL_39;
  }

  sub_29A008E78(&v12, "gl_FragDepth");
  sub_29A008E78(&v11, "float");
  sub_29A008E78(&__p, "depth(any)");
  memset(&v9, 0, sizeof(v9));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v13, &v12, &v11, &__p, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v12, "depth");
  LODWORD(v11.__r_.__value_.__l.__data_) = 13;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(&v13, &v12, 1u, 2u, &v11, 0);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_39:
  pxrInternal__aapl__pxrReserved__::HdxPackageFullscreenShader(&v12);
  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(this, &v12, v5, &v13);
  if ((v12.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v12.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return sub_29AB89F90(&v13);
}

void sub_29AED7E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_29AB89F90(&a33);
  _Unwind_Resume(a1);
}

unint64_t sub_29AED7EF0()
{
  v19 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x38uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "FullscreenVertex", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "CompositeFragmentNoDepth", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "CompositeFragmentWithDepth", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "fullscreenShader", 0);
  v1 = v0 + 4;
  v2 = *v0;
  v15 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v3;
    }
  }

  v4 = v0[1];
  v16 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v5;
    }
  }

  v6 = v0[2];
  v17 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v7;
    }
  }

  v8 = v0[3];
  v18 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v9;
    }
  }

  *v1 = 0;
  v0[5] = 0;
  v0[6] = 0;
  sub_29A12EF7C(v1, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v11 = *(&v15 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v12 = 0;
  atomic_compare_exchange_strong(&qword_2A174FC78, &v12, v0);
  if (v12)
  {
    v13 = sub_29A1CF24C(v0);
    operator delete(v13);
    return atomic_load(&qword_2A174FC78);
  }

  return v0;
}

void sub_29AED80A4(_Unwind_Exception *a1)
{
  v4 = 24;
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

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29AED8160(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A10E7C8(a1, a2);
    v4 = a1[1];
    v5 = 5 * a2;
    v6 = v4 + 40 * a2;
    v7 = 8 * v5;
    do
    {
      pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc::HgiVertexBufferDesc(v4);
      v4 = (v4 + 40);
      v7 -= 40;
    }

    while (v7);
    a1[1] = v6;
  }

  return a1;
}

void *sub_29AED81FC(void *a1, unint64_t a2, _OWORD *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29AB876CC(a1, a2);
    v6 = a1[1];
    v7 = &v6[5 * a2];
    v8 = 80 * a2;
    do
    {
      *v6 = *a3;
      v9 = a3[1];
      v10 = a3[2];
      v11 = a3[4];
      v6[3] = a3[3];
      v6[4] = v11;
      v6[1] = v9;
      v6[2] = v10;
      v6 += 5;
      v8 -= 80;
    }

    while (v8);
    a1[1] = v7;
  }

  return a1;
}

void sub_29AED827C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxHgiConversions::GetHgiFormat(unsigned int a1)
{
  if (a1 < 0x1D)
  {
    return *(&unk_29B714ADC + 2 * a1 + 1);
  }

  v6 = v1;
  v7 = v2;
  v4[0] = "hdx/hgiConversions.cpp";
  v4[1] = "GetHgiFormat";
  v4[2] = 76;
  v4[3] = "static HgiFormat pxrInternal__aapl__pxrReserved__::HdxHgiConversions::GetHgiFormat(HdFormat)";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Unexpected HdFormat %d", a1);
  return 0xFFFFFFFFLL;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxHgiConversions::GetHdFormat(unsigned int a1)
{
  if (a1 <= 0x22)
  {
    v1 = 0;
    v2 = &dword_29B714AE0;
    while (1)
    {
      v3 = *v2;
      v2 += 2;
      if (v3 == a1)
      {
        break;
      }

      if (++v1 == 29)
      {
        v5 = "hdx/hgiConversions.cpp";
        v6 = "GetHdFormat";
        v7 = 98;
        v8 = "static HdFormat pxrInternal__aapl__pxrReserved__::HdxHgiConversions::GetHdFormat(HgiFormat)";
        v9 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Unmapped HgiFormat %d");
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v5 = "hdx/hgiConversions.cpp";
    v6 = "GetHdFormat";
    v7 = 88;
    v8 = "static HdFormat pxrInternal__aapl__pxrReserved__::HdxHgiConversions::GetHdFormat(HgiFormat)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v5, 1, "Unexpected HgiFormat %d");
    return 0xFFFFFFFFLL;
  }

  return v1;
}

void sub_29AED83E0()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HDX_ENABLE_OIT))
  {
    sub_29B2CB6D8();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::IsOitEnabled(pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor *this)
{
  v1 = atomic_load(pxrInternal__aapl__pxrReserved__::HDX_ENABLE_OIT);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  return *v1;
}

void *pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::HdxOitBufferAccessor(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::RequestOitBuffers(pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor *this)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v6[1] = &unk_2A20443C3;
  LOBYTE(v6[0]) = 1;
  v1 = *this;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v2)
  {
    v2 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v5 = (v2 + 168);
  v3 = sub_29AC1E77C(v1, v2 + 21, &unk_29B4D6118, &v5);
  sub_29A18606C(v3 + 3, v6);
  return sub_29A186B14(v6);
}

void sub_29AED852C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::_GetBar(pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v2 = sub_29A160470(*this, a2);
  if (v2)
  {
    v3 = (v2 + 3);

    return sub_29AED85AC(v3);
  }

  else if (atomic_load_explicit(&qword_2A174FC80, memory_order_acquire))
  {
    return &unk_2A174FC88;
  }

  else
  {
    sub_29B2CB70C(&v5);
    return v5;
  }
}

void **sub_29AED85AC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AED8FF0(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AED907C, &stru_2A209BB38);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::AddOitBufferBindings(pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor *this, uint64_t ***a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v4)
  {
    v4 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  Bar = pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::_GetBar(this, (v4 + 112));
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v6)
  {
    v6 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v7 = pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::_GetBar(this, (v6 + 120));
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v8)
  {
    v8 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v9 = pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::_GetBar(this, (v8 + 128));
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v10)
  {
    v10 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v11 = pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::_GetBar(this, (v10 + 136));
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v12)
  {
    v12 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v13 = pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::_GetBar(this, (v12 + 144));
  if (*Bar)
  {
    v14 = *v7 == 0;
  }

  else
  {
    v14 = 1;
  }

  v17 = v14 || *v9 == 0 || *v11 == 0 || *v13 == 0;
  v18 = !v17;
  v19 = *a2;
  if (v17)
  {
    v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v46)
    {
      v46 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::RemoveBufferBinding(v19, (v46 + 112));
    v47 = *a2;
    v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v48)
    {
      v48 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::RemoveBufferBinding(v47, (v48 + 120));
    v49 = *a2;
    v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v50)
    {
      v50 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::RemoveBufferBinding(v49, (v50 + 128));
    v51 = *a2;
    v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v52)
    {
      v52 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::RemoveBufferBinding(v51, (v52 + 136));
    v53 = *a2;
    v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v54)
    {
      v54 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::RemoveBufferBinding(v53, (v54 + 144));
  }

  else
  {
    v20 = v13;
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v21)
    {
      v21 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    v22 = *Bar;
    v23 = Bar[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56.n128_u64[0] = 0xFFFFFFFF00000007;
    v24 = *(v21 + 14);
    v56.n128_u64[1] = v24;
    if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v56.n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
    }

    v57 = 0;
    v58 = 0;
    v59 = v22;
    v60 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v61 = 256;
    v62 = 0;
    v63 = 0;
    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(v19, &v56);
    if (v60)
    {
      sub_29A014BEC(v60);
    }

    if (v58)
    {
      sub_29A014BEC(v58);
    }

    if ((v56.n128_u8[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v56.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v23)
    {
      sub_29A014BEC(v23);
    }

    v25 = *a2;
    v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v26)
    {
      v26 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    v27 = *v7;
    v28 = v7[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56.n128_u64[0] = 0xFFFFFFFF00000007;
    v29 = *(v26 + 15);
    v56.n128_u64[1] = v29;
    if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v56.n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
    }

    v57 = 0;
    v58 = 0;
    v59 = v27;
    v60 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v61 = 256;
    v62 = 0;
    v63 = 0;
    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(v25, &v56);
    if (v60)
    {
      sub_29A014BEC(v60);
    }

    if (v58)
    {
      sub_29A014BEC(v58);
    }

    if ((v56.n128_u8[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v56.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v28)
    {
      sub_29A014BEC(v28);
    }

    v30 = *a2;
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v31)
    {
      v31 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    v32 = *v9;
    v33 = v9[1];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56.n128_u64[0] = 0xFFFFFFFF00000007;
    v34 = *(v31 + 16);
    v56.n128_u64[1] = v34;
    if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v56.n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
    }

    v57 = 0;
    v58 = 0;
    v59 = v32;
    v60 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v61 = 256;
    v62 = 0;
    v63 = 0;
    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(v30, &v56);
    if (v60)
    {
      sub_29A014BEC(v60);
    }

    if (v58)
    {
      sub_29A014BEC(v58);
    }

    if ((v56.n128_u8[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v56.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v33)
    {
      sub_29A014BEC(v33);
    }

    v35 = *a2;
    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v36)
    {
      v36 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    v37 = *v11;
    v38 = v11[1];
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56.n128_u64[0] = 0xFFFFFFFF00000007;
    v39 = *(v36 + 17);
    v56.n128_u64[1] = v39;
    if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v56.n128_u64[1] &= 0xFFFFFFFFFFFFFFF8;
    }

    v57 = 0;
    v58 = 0;
    v59 = v37;
    v60 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v61 = 256;
    v62 = 0;
    v63 = 0;
    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(v35, &v56);
    if (v60)
    {
      sub_29A014BEC(v60);
    }

    if (v58)
    {
      sub_29A014BEC(v58);
    }

    if ((v56.n128_u8[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v56.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v38)
    {
      sub_29A014BEC(v38);
    }

    v40 = *a2;
    v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v41)
    {
      v41 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    v42 = *v20;
    v43 = v20[1];
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56.n128_u64[0] = -4294967287;
    v44 = *(v41 + 18);
    v56.n128_u64[1] = v44;
    if ((v44 & 7) != 0)
    {
      v45 = (v44 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed) & 1) == 0)
      {
        v56.n128_u64[1] = v45;
      }
    }

    v57 = 0;
    v58 = 0;
    v59 = v42;
    v60 = v43;
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v61 = 1;
    v62 = 0;
    v63 = 0;
    pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(v40, &v56);
    if (v60)
    {
      sub_29A014BEC(v60);
    }

    if (v58)
    {
      sub_29A014BEC(v58);
    }

    if ((v56.n128_u8[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((v56.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v43)
    {
      sub_29A014BEC(v43);
    }
  }

  return v18;
}

void sub_29AED8C78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29ADD2F38(va);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::InitializeOitBuffersIfNecessary(pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor *this, pxrInternal__aapl__pxrReserved__::Hgi *a2)
{
  v4 = *this;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v5)
  {
    v5 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  v15 = v5 + 176;
  v6 = sub_29AC1E77C(v4, v5 + 22, &unk_29B4D6118, &v15);
  if (!v6[4])
  {
    v6[4] = &unk_2A20443C3;
    *(v6 + 24) = 1;
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v7)
    {
      v7 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    Bar = pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::_GetBar(this, (v7 + 112));
    {
      v10 = v9;
      v11 = Bar[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens))
      {
        sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      (*(*v10 + 168))(&v15, v10);
      (*(*a2 + 32))(&v14, a2);
      (*(*v14 + 24))(v14, "Clear OIT buffers");
      (*(*v14 + 104))(v14, v15, 255);
      (*(*v14 + 32))(v14);
      pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(a2, v14, 0);
      v13 = v14;
      v14 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      if (v16)
      {
        sub_29A014BEC(v16);
      }

      if (v11)
      {
        sub_29A014BEC(v11);
      }
    }

    else
    {
      v15 = "hdx/oitBufferAccessor.cpp";
      v16 = "InitializeOitBuffersIfNecessary";
      v17 = 140;
      v18 = "void pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::InitializeOitBuffersIfNecessary(Hgi *)";
      v19 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v15, 1, "No OIT counter buffer allocateed when trying to clear it");
    }
  }
}

void sub_29AED8FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AED8FF0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B714BC4 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209BB38);
}

void *sub_29AED907C@<X0>(void *a1@<X8>)
{
  result = operator new(0x10uLL);
  *result = 0;
  result[1] = 0;
  *a1 = result;
  a1[1] = sub_29AED90C4;
  a1[2] = &stru_2A209BB38;
  return result;
}

void sub_29AED90C4(void *__p)
{
  if (__p)
  {
    v2 = __p[1];
    if (v2)
    {
      sub_29A014BEC(v2);
    }

    operator delete(__p);
  }
}

pxrInternal__aapl__pxrReserved__::HdxOitRenderTask *pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::HdxOitRenderTask(pxrInternal__aapl__pxrReserved__::HdxOitRenderTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  pxrInternal__aapl__pxrReserved__::HdxRenderTask::HdxRenderTask(this, a2, a3);
  *v4 = &unk_2A209BB58;
  v5 = v4 + 10;
  if ((atomic_load_explicit(&qword_2A174FCA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FCA8))
  {
    pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassOitShader(&v8);
    sub_29ADCA944(&v8, qword_2A174FC98);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29AED98B0, qword_2A174FC98, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FCA8);
  }

  sub_29AED98E0(v5);
  if ((atomic_load_explicit(&qword_2A174FCC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FCC0))
  {
    pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassOitOpaqueShader(&v8);
    sub_29ADCA944(&v8, qword_2A174FCB0);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29AED98B0, qword_2A174FCB0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FCC0);
  }

  sub_29AED98E0(this + 12);
  *(this + 112) = pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::IsOitEnabled(v6);
  return this;
}

void sub_29AED929C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174FCC0);
  v11 = *(v9 + 11);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  pxrInternal__aapl__pxrReserved__::HdxRenderTask::~HdxRenderTask(v9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::~HdxOitRenderTask(pxrInternal__aapl__pxrReserved__::HdxOitRenderTask *this)
{
  *this = &unk_2A209BB58;
  v2 = *(this + 13);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdxRenderTask::~HdxRenderTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::~HdxOitRenderTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::_Sync(pxrInternal__aapl__pxrReserved__::HdTask *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, uint64_t a3, int *a4)
{
  result = sub_29A0ECEEC(&v9, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  if (*(a1 + 112) == 1)
  {
    result = pxrInternal__aapl__pxrReserved__::HdxRenderTask::_Sync(a1, a2, a3, a4);
  }

  if (v9)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::Prepare(pxrInternal__aapl__pxrReserved__::HdxRenderTask *a1, uint64_t a2)
{
  result = sub_29A0ECEEC(&v6, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::Prepare(HdTaskContext *, HdRenderIndex *)");
  if (*(a1 + 112) == 1)
  {
    result = pxrInternal__aapl__pxrReserved__::HdxRenderTask::_HasDrawItems(a1);
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdxRenderTask::Prepare(a1);
      pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::HdxOitBufferAccessor(&v5, a2);
      result = pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::RequestOitBuffers(&v5);
    }
  }

  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return result;
}

void sub_29AED9510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::Execute(uint64_t a1, uint64_t a2)
{
  sub_29A0ECEEC(&v22, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::Execute(HdTaskContext *)");
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v21, "virtual void pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::Execute(HdTaskContext *)");
  if (*(a1 + 112) != 1 || (pxrInternal__aapl__pxrReserved__::HdxRenderTask::_HasDrawItems(a1) & 1) == 0)
  {
    goto LABEL_15;
  }

  pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::HdxOitBufferAccessor(&lpsrc, a2);
  pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::RequestOitBuffers(&lpsrc);
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::InitializeOitBuffersIfNecessary(&lpsrc, Hgi);
  if ((pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::AddOitBufferBindings(&lpsrc, (a1 + 80)) & 1) == 0)
  {
    __p = "hdx/oitRenderTask.cpp";
    v17 = "Execute";
    v18 = 104;
    v19 = "virtual void pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::Execute(HdTaskContext *)";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "No OIT buffers allocated but needed by OIT render task");
    goto LABEL_15;
  }

  pxrInternal__aapl__pxrReserved__::HdxRenderTask::_GetRenderPassState(a1, a2, &lpsrc);
  v5 = lpsrc;
  if (lpsrc)
  {
    goto LABEL_5;
  }

  __p = "hdx/oitRenderTask.cpp";
  v17 = "Execute";
  v18 = 110;
  v19 = "virtual void pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::Execute(HdTaskContext *)";
  v20 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "renderPassState", 0) & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = lpsrc;
  if (lpsrc)
  {
LABEL_5:
    if (v6)
    {
      v9 = v6;
LABEL_7:
      pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetUseSceneMaterials(v9, 1);
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetBlendEnabled(v9, 0);
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaToCoverageEnabled(v9, 0);
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaThreshold(v9, 0.0);
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetMultiSampleEnabled(lpsrc, 0);
      pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetRenderPassShader(v9, (a1 + 96));
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetEnableDepthMask(lpsrc, 1);
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetColorMaskUseDefault(lpsrc, 0);
      v10 = lpsrc;
      v13 = 2;
      v17 = 0;
      v18 = 0;
      __p = 0;
      sub_29AED99B0(&__p, &v13, &lpsrc, 1uLL);
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetColorMasks(v10, &__p);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      pxrInternal__aapl__pxrReserved__::HdxRenderTask::Execute(a1, a2);
      pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetRenderPassShader(v9, (a1 + 80));
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetEnableDepthMask(lpsrc, 0);
      v11 = lpsrc;
      v13 = 0;
      v17 = 0;
      v18 = 0;
      __p = 0;
      sub_29AED99B0(&__p, &v13, &lpsrc, 1uLL);
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetColorMasks(v11, &__p);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      pxrInternal__aapl__pxrReserved__::HdxRenderTask::Execute(a1, a2);
      goto LABEL_12;
    }
  }

  __p = "hdx/oitRenderTask.cpp";
  v17 = "Execute";
  v18 = 114;
  v19 = "virtual void pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::Execute(HdTaskContext *)";
  v20 = 0;
  v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("OIT only works with HdSt", v7, v8);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "extendedState", v12))
  {
    v9 = 0;
    goto LABEL_7;
  }

LABEL_12:
  if (v15)
  {
    sub_29A014BEC(v15);
  }

LABEL_15:
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v21);
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }
}

void sub_29AED983C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup((v14 - 49));
  sub_29A0E9CEC(v14 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_29AED98B0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

void sub_29AED98E0(void *a1@<X8>)
{
  v2 = operator new(0x98uLL);
  sub_29AED9954(v2);
  *a1 = v2 + 3;
  a1[1] = v2;

  sub_29A017894(a1, v2 + 4, (v2 + 3));
}

void *sub_29AED9954(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098BE8;
  pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::HdStRenderPassShader(a1 + 3);
  return a1;
}

char *sub_29AED99B0(char *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0111A4(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29AED9A08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::HdxOitResolveTask(pxrInternal__aapl__pxrReserved__::HdxOitResolveTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v3 = &unk_2A209BBC8;
  result = 0.0;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 18) = 0;
  return result;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v3 = &unk_2A209BBC8;
  result = 0.0;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 18) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::~HdxOitResolveTask(pxrInternal__aapl__pxrReserved__::HdxOitResolveTask *this)
{
  *this = &unk_2A209BBC8;
  v2 = *(this + 18);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::~HdxOitResolveTask(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::Sync(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!a1[4])
  {
    sub_29AE829A0(__p);
    v7 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v8 = a1[5];
    *(a1 + 2) = v7;
    if (v8)
    {
      sub_29A014BEC(v8);
      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetEnableDepthTest(a1[4], 0);
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetEnableDepthMask(a1[4], 0);
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaThreshold(a1[4], 0.0);
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaToCoverageEnabled(a1[4], 0);
    v9 = a1[4];
    LODWORD(v11) = 2;
    __p[1] = 0;
    v13 = 0;
    __p[0] = 0;
    sub_29AED99B0(__p, &v11, &v11 + 1, 1uLL);
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetColorMasks(v9, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetBlendEnabled(a1[4], 1);
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetBlend(a1[4], 0, 1, 7, 0, 1, 7);
    pxrInternal__aapl__pxrReserved__::HdxPackageOitResolveImageShader(&v11);
    sub_29AEDB3CC(&v11, __p);
    v10 = a1[7];
    *(a1 + 3) = *__p;
    __p[0] = 0;
    __p[1] = 0;
    if (v10)
    {
      sub_29A014BEC(v10);
      if (__p[1])
      {
        sub_29A014BEC(__p[1]);
      }
    }

    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetRenderPassShader(a1[4], a1 + 6);
  }

  if ((*a4 & 4) != 0)
  {
    LOWORD(__p[0]) = 257;
    if (!sub_29AED9D9C(a1, a2, __p))
    {
      return;
    }

    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetUseAovMultiSample(a1[4], __p[0]);
    pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetResolveAovMultiSample(a1[4], SBYTE1(__p[0]));
  }

  *a4 = 0;
}

void sub_29AED9D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AED9D9C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v13, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEDB49C(&v13);
  if (v7)
  {
    if ((v14 & 4) != 0)
    {
      v8 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(&v13);
    }

    else
    {
      v8 = &v13;
    }

    *a3 = *v8;
  }

  else
  {
    v11[0] = "hd/task.h";
    v11[1] = "_GetTaskParams";
    v11[2] = 242;
    v11[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxOitResolveTaskParams]";
    v12 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v13);
  return v7;
}

void sub_29AED9EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_GetContextRenderPassState@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v4)
  {
    v4 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a1, v4 + 23);
  *a2 = 0;
  a2[1] = 0;
  if (result)
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v6)
    {
      v6 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    return sub_29AEC7990(a1, v6 + 23, a2);
  }

  return result;
}

void sub_29AED9F8C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_UpdateCameraFraming(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_GetContextRenderPassState(a2, &v10);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetCamera(*(a1 + 32), *(v10 + 8));
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetOverrideWindowPolicy(*(a1 + 32), (v10 + 68));
    v3 = v10;
    IsValid = pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid((v10 + 32));
    v5 = *(a1 + 32);
    if (IsValid)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetFraming(v5, v3 + 2);
    }

    else
    {
      v6 = vcvtq_f64_f32(*(v10 + 24));
      v7 = vcvtq_f64_f32(*(v10 + 16));
      v8 = v6;
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetViewport(v5, &v7);
    }
  }

  else
  {
    *&v7.f64[0] = "hdx/oitResolveTask.cpp";
    *&v7.f64[1] = "_UpdateCameraFraming";
    *&v8.f64[0] = 189;
    *&v8.f64[1] = "void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_UpdateCameraFraming(HdTaskContext *const)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v7, 1, "Unable to set camera framing data due to missing render pass state on task context");
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29AEDA084(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_GetAovBindings(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(&qword_2A174FCC8, memory_order_acquire) & 1) == 0)
  {
    sub_29B2CB774();
  }

  pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_GetContextRenderPassState(a2, &v5);
  if (v5)
  {
    AovBindings = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetAovBindings(v5);
  }

  else
  {
    AovBindings = &qword_2A174FCD0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }

  return AovBindings;
}

void sub_29AEDA120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29AEDA138(void **a1)
{
  v3 = a1;
  sub_29AC943DC(&v3);
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_ComputeScreenSize(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  AovBindings = pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_GetAovBindings(a1, a2);
  v5 = *AovBindings;
  if (*AovBindings != AovBindings[1])
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v6)
    {
      v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(a3, (v6 + 312), (v5 + 16));
  }

  v7 = sub_29AEDA2A8();
  return v7 | (HIDWORD(v7) << 32);
}

unint64_t sub_29AEDA2A8()
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFramebufferAttachmentParameteriv(36009, 36064, 36048, &v5);
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFramebufferAttachmentParameteriv(36009, 36064, 36049, &v4);
  if (v4 <= 0)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetIntegerv(2978, v6);
    v0 = v6[2];
    v1 = v6[3];
  }

  else
  {
    if (v5 == 36161)
    {
      v6[0] = 0;
      v3 = 0;
      (pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedRenderbufferParameteriv)();
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetNamedRenderbufferParameteriv(v4, 36163, &v3);
    }

    else
    {
      if (v5 != 5890)
      {
        v1 = 2048;
        v0 = 2048;
        return v0 | (v1 << 32);
      }

      v6[0] = 0;
      v3 = 0;
      (pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureLevelParameteriv)();
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureLevelParameteriv(v4, 0, 4097, &v3);
    }

    v0 = v6[0];
    v1 = v3;
  }

  return v0 | (v1 << 32);
}

void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_PrepareOitBuffers(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *this, uint64_t a4)
{
  v59 = *MEMORY[0x29EDCA608];
  if ((*a4 & 0x80000000) != 0 || (*(a4 + 4) & 0x80000000) != 0)
  {
    *&v46 = "hdx/oitResolveTask.cpp";
    *(&v46 + 1) = "_PrepareOitBuffers";
    v47 = 254;
    v48 = "void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_PrepareOitBuffers(HdTaskContext *, HdRenderIndex *, const GfVec2i &)";
    v49 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v46, 1, "Invalid screen size for OIT resolve task %s", Text);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v46, this);
    v7 = v46;
    if (*(&v46 + 1))
    {
      atomic_fetch_add_explicit((*(&v46 + 1) + 8), 1uLL, memory_order_relaxed);
      if (*(&v46 + 1))
      {
        sub_29A014BEC(*(&v46 + 1));
      }
    }

    if (!*(a1 + 72))
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v8)
      {
        v8 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      *v58 = *v8;
      if ((v58[0] & 7) != 0 && (atomic_fetch_add_explicit((*v58 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v58 &= 0xFFFFFFFFFFFFFFF8;
      }

      *&v58[8] = xmmword_29B70C290;
      v47 = 0;
      v46 = 0uLL;
      sub_29AE030F0(&v46, v58, &v59, 1uLL);
      if ((v58[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v9)
      {
        v9 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateSingleBufferArrayRange(v7, v9 + 72, &v46, 8u, v58);
      v10 = *v58;
      *v58 = 0uLL;
      v11 = *(a1 + 80);
      *(a1 + 72) = v10;
      if (v11)
      {
        sub_29A014BEC(v11);
        if (*&v58[8])
        {
          sub_29A014BEC(*&v58[8]);
        }
      }

      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v12)
      {
        v12 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      v13 = *(v12 + 3);
      *v56 = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v56 &= 0xFFFFFFFFFFFFFFF8;
      }

      *&v56[8] = xmmword_29B70C290;
      memset(v58, 0, sizeof(v58));
      sub_29AE030F0(v58, v56, &v57, 1uLL);
      if ((v56[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v14)
      {
        v14 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateSingleBufferArrayRange(v7, v14 + 96, v58, 8u, v56);
      v15 = *v56;
      *v56 = 0uLL;
      v16 = *(a1 + 128);
      *(a1 + 120) = v15;
      if (v16)
      {
        sub_29A014BEC(v16);
        if (*&v56[8])
        {
          sub_29A014BEC(*&v56[8]);
        }
      }

      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v17)
      {
        v17 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      v18 = *(v17 + 1);
      *v54 = v18;
      if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v54 &= 0xFFFFFFFFFFFFFFF8;
      }

      *&v54[8] = xmmword_29B714C50;
      memset(v56, 0, sizeof(v56));
      sub_29AE030F0(v56, v54, &v55, 1uLL);
      if ((v54[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v19)
      {
        v19 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateSingleBufferArrayRange(v7, v19 + 80, v56, 8u, v54);
      v20 = *v54;
      *v54 = 0uLL;
      v21 = *(a1 + 96);
      *(a1 + 88) = v20;
      if (v21)
      {
        sub_29A014BEC(v21);
        if (*&v54[8])
        {
          sub_29A014BEC(*&v54[8]);
        }
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v22)
      {
        v22 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      v23 = *(v22 + 2);
      *v52 = v23;
      if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v52 &= 0xFFFFFFFFFFFFFFF8;
      }

      *&v52[8] = xmmword_29B70C2A0;
      memset(v54, 0, sizeof(v54));
      sub_29AE030F0(v54, v52, &v53, 1uLL);
      if ((v52[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v24)
      {
        v24 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateSingleBufferArrayRange(v7, v24 + 88, v54, 8u, v52);
      v25 = *v52;
      *v52 = 0uLL;
      v26 = *(a1 + 112);
      *(a1 + 104) = v25;
      if (v26)
      {
        sub_29A014BEC(v26);
        if (*&v52[8])
        {
          sub_29A014BEC(*&v52[8]);
        }
      }

      v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v27)
      {
        v27 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      v28 = *(v27 + 20);
      *v50 = v28;
      if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v50 &= 0xFFFFFFFFFFFFFFF8;
      }

      *&v50[8] = xmmword_29B714C60;
      memset(v52, 0, sizeof(v52));
      sub_29AE030F0(v52, v50, &v51, 1uLL);
      if ((v50[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v29)
      {
        v29 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v7, v29 + 104, v52, 4u, v50);
      v30 = *v50;
      *v50 = 0uLL;
      v31 = *(a1 + 144);
      *(a1 + 136) = v30;
      if (v31)
      {
        sub_29A014BEC(v31);
        if (*&v50[8])
        {
          sub_29A014BEC(*&v50[8]);
        }
      }

      *v50 = v52;
      sub_29ABC6FA0(v50);
      *v52 = v54;
      sub_29ABC6FA0(v52);
      *v54 = v56;
      sub_29ABC6FA0(v54);
      *v56 = v58;
      sub_29ABC6FA0(v56);
      *v58 = &v46;
      sub_29ABC6FA0(v58);
    }

    v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v32)
    {
      v32 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    *&v46 = v32 + 112;
    v33 = sub_29AC1E77C(a2, v32 + 14, &unk_29B4D6118, &v46);
    sub_29AEDAE10(v33 + 3, (a1 + 72));
    v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v34)
    {
      v34 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    *&v46 = v34 + 136;
    v35 = sub_29AC1E77C(a2, v34 + 17, &unk_29B4D6118, &v46);
    sub_29AEDAE10(v35 + 3, (a1 + 120));
    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v36)
    {
      v36 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    *&v46 = v36 + 120;
    v37 = sub_29AC1E77C(a2, v36 + 15, &unk_29B4D6118, &v46);
    sub_29AEDAE10(v37 + 3, (a1 + 88));
    v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v38)
    {
      v38 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    *&v46 = v38 + 128;
    v39 = sub_29AC1E77C(a2, v38 + 16, &unk_29B4D6118, &v46);
    sub_29AEDAE10(v39 + 3, (a1 + 104));
    v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v40)
    {
      v40 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    *&v46 = v40 + 144;
    v41 = sub_29AC1E77C(a2, v40 + 18, &unk_29B4D6118, &v46);
    sub_29AEDAE10(v41 + 3, (a1 + 136));
    if (*a4 > *(a1 + 64) || *(a4 + 4) > *(a1 + 68))
    {
      *(a1 + 64) = *a4;
      v42 = *(a4 + 4) * *a4;
      (*(**(a1 + 72) + 48))(*(a1 + 72), (v42 + 1));
      v43 = (8 * v42);
      (*(**(a1 + 120) + 48))(*(a1 + 120), v43);
      (*(**(a1 + 88) + 48))(*(a1 + 88), v43);
      (*(**(a1 + 104) + 48))(*(a1 + 104), v43);
      v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v44)
      {
        v44 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      *v56 = *a4;
      *&v56[8] = &off_2A2047EE8 + 3;
      sub_29AD9CD3C((v44 + 160), v56, v58);
      v46 = *v58;
      *v58 = 0uLL;
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v7, (a1 + 136), &v46);
      if (*(&v46 + 1))
      {
        sub_29A014BEC(*(&v46 + 1));
      }

      if (*&v58[8])
      {
        sub_29A014BEC(*&v58[8]);
      }

      sub_29A186B14(v56);
    }

    if (*(&v7 + 1))
    {
      sub_29A014BEC(*(&v7 + 1));
    }
  }
}

void sub_29AEDAC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void ***a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  a23 = &a27;
  sub_29ABC6FA0(&a23);
  a27 = (v28 - 144);
  sub_29ABC6FA0(&a27);
  *(v28 - 144) = v28 - 112;
  sub_29ABC6FA0((v28 - 144));
  *(v28 - 112) = &a13;
  sub_29ABC6FA0((v28 - 112));
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  _Unwind_Resume(a1);
}

void *sub_29AEDAE10(void *a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  sub_29AEDB528(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AEDAE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::Prepare(uint64_t a1, void *a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  v20 = a3;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v5)
  {
    v5 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  if (sub_29A160470(a2, v5 + 21))
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v6)
    {
      v6 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    v7 = sub_29AC1E69C(a2, v6 + 22);
    if (!*(a1 + 16))
    {
      pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(v19);
      RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(v20);
      {
        *(&v15 + 1) = "Prepare";
        v16 = 373;
        v17 = "virtual void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::Prepare(HdTaskContext *, HdRenderIndex *)";
        v18 = 0;
        v11 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("OIT Task only works with HdSt", v9, v10, "hdx/oitResolveTask.cpp");
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v15, "dynamic_cast<HdStRenderDelegate*>(renderDelegate)", v11) & 1) == 0)
        {
          pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(v19);
          return;
        }
      }

      sub_29AEDB728(&v20, v19, &v15);
      v12 = v15;
      v15 = 0uLL;
      v13 = *(a1 + 24);
      *(a1 + 16) = v12;
      if (v13)
      {
        sub_29A014BEC(v13);
        if (*(&v15 + 1))
        {
          sub_29A014BEC(*(&v15 + 1));
        }
      }

      pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::SetupFullscreenTriangleDrawItem(*(a1 + 16));
      pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(v19);
    }

    v14 = v20;
    v19[0] = pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_ComputeScreenSize(v7, a2, v20);
    pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_PrepareOitBuffers(a1, a2, v14, v19);
  }
}

void sub_29AEDB088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::Execute(uint64_t a1, void *a2)
{
  sub_29A0ECEEC(&v18, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::Execute(HdTaskContext *)");
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v17, "virtual void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::Execute(HdTaskContext *)");
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v4)
  {
    v4 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  if (sub_29AC1E69C(a2, v4 + 21))
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v5)
    {
      v5 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    v6 = sub_29AC1E69C(a2, v5 + 22);
    if (*(a1 + 32) || (v12 = "hdx/oitResolveTask.cpp", v13 = "Execute", v14 = 405, v15 = "virtual void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::Execute(HdTaskContext *)", v16 = 0, v6 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "_renderPassState", 0), (v6 & 1) != 0))
    {
      if (*(a1 + 48) || (v12 = "hdx/oitResolveTask.cpp", v13 = "Execute", v14 = 406, v15 = "virtual void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::Execute(HdTaskContext *)", v16 = 0, v6 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v12, "_renderPassShader", 0), (v6 & 1) != 0))
      {
        v7 = *(a1 + 32);
        AovBindings = pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_GetAovBindings(v6, a2);
        pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAovBindings(v7, AovBindings);
        pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::_UpdateCameraFraming(a1, a2);
        pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::HdxOitBufferAccessor(&v11, a2);
        if (pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::AddOitBufferBindings(&v11, (a1 + 48)))
        {
          v9 = *(a1 + 16);
          v10 = *(a1 + 40);
          v12 = *(a1 + 32);
          v13 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*a1 + 40))(a1);
          pxrInternal__aapl__pxrReserved__::HdRenderPass::Execute(v9);
          if (v13)
          {
            sub_29A014BEC(v13);
          }
        }

        else
        {
          v12 = "hdx/oitResolveTask.cpp";
          v13 = "Execute";
          v14 = 414;
          v15 = "virtual void pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::Execute(HdTaskContext *)";
          v16 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 1, "No OIT buffers allocated but needed by OIT resolve task");
        }
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v17);
  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v19, v18);
  }
}

void sub_29AEDB2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&a19);
  sub_29A0E9CEC(&a20);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, unsigned __int8 *a2)
{
  v4 = sub_29A00911C(a1, "OitResolveTask Params: (...) ", 29);
  v5 = MEMORY[0x29C2C1EA0](v4, *a2);
  v6 = sub_29A00911C(v5, " ", 1);
  MEMORY[0x29C2C1EA0](v6, a2[1]);
  return a1;
}

void sub_29AEDB3CC(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x98uLL);
  sub_29AEDB440(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;

  sub_29A017894(a2, v4 + 4, (v4 + 3));
}

void *sub_29AEDB440(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2098BE8;
  pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::HdStRenderPassShader((a1 + 3), a2);
  return a1;
}

uint64_t sub_29AEDB49C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B715AC2 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209BC18);
}

void *sub_29AEDB528(void *a1, void *a2)
{
  a1[1] = &off_2A209BC28;
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

uint64_t *sub_29AEDB58C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEDB5AC(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D2264(a1);
}

void *sub_29AEDB718@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = 0;
  return sub_29AEDB528(a2, v2);
}

void *sub_29AEDB728@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex **a1@<X1>, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x290uLL);
  result = sub_29AEDB78C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEDB78C(void *a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209BCF0;
  pxrInternal__aapl__pxrReserved__::HdSt_ImageShaderRenderPass::HdSt_ImageShaderRenderPass((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AEDB80C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209BCF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask *pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::HdxOitVolumeRenderTask(pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  pxrInternal__aapl__pxrReserved__::HdxRenderTask::HdxRenderTask(this, a2, a3);
  *v4 = &unk_2A209BD40;
  v5 = v4 + 10;
  if ((atomic_load_explicit(&qword_2A174FCF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FCF8))
  {
    pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassOitVolumeShader(&v8);
    sub_29ADCA944(&v8, qword_2A174FCE8);
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_atexit(sub_29AED98B0, qword_2A174FCE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FCF8);
  }

  sub_29AED98E0(v5);
  *(this + 96) = pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::IsOitEnabled(v6);
  return this;
}

void sub_29AEDB950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174FCF8);
  pxrInternal__aapl__pxrReserved__::HdxRenderTask::~HdxRenderTask(v9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::~HdxOitVolumeRenderTask(pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask *this)
{
  *this = &unk_2A209BD40;
  v2 = *(this + 11);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdxRenderTask::~HdxRenderTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::~HdxOitVolumeRenderTask(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::_Sync(pxrInternal__aapl__pxrReserved__::HdTask *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, uint64_t a3, int *a4)
{
  result = sub_29A0ECEEC(&v9, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::_Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  if (*(a1 + 96) == 1)
  {
    result = pxrInternal__aapl__pxrReserved__::HdxRenderTask::_Sync(a1, a2, a3, a4);
  }

  if (v9)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::Prepare(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  sub_29A0ECEEC(&v10, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::Prepare(HdTaskContext *, HdRenderIndex *)");
  if (*(a1 + 96) == 1 && (pxrInternal__aapl__pxrReserved__::HdxRenderTask::_HasDrawItems(a1) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdxRenderTask::Prepare(a1);
    pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::HdxOitBufferAccessor(&v8, a2);
    pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::RequestOitBuffers(&v8);
    pxrInternal__aapl__pxrReserved__::HdxRenderTask::_GetRenderPassState(a1, a2, &v8);
    if (v8)
    {
      v6 = *(a1 + 80);
      AovInputBindings = pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetAovInputBindings(v8);
      pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::UpdateAovInputTextures(v6, AovInputBindings, a3);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }
}

void sub_29AEDBBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::Execute(uint64_t a1, uint64_t a2)
{
  sub_29A0ECEEC(&v22, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::Execute(HdTaskContext *)");
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v21, "virtual void pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::Execute(HdTaskContext *)");
  if (*(a1 + 96) != 1 || (pxrInternal__aapl__pxrReserved__::HdxRenderTask::_HasDrawItems(a1) & 1) == 0)
  {
    goto LABEL_13;
  }

  pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::HdxOitBufferAccessor(&v20, a2);
  pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::RequestOitBuffers(&v20);
  Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
  pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::InitializeOitBuffersIfNecessary(&v20, Hgi);
  pxrInternal__aapl__pxrReserved__::HdxRenderTask::_GetRenderPassState(a1, a2, &lpsrc);
  v5 = lpsrc;
  if (lpsrc)
  {
    goto LABEL_4;
  }

  __p = "hdx/oitVolumeRenderTask.cpp";
  v14 = "Execute";
  v15 = 104;
  v16 = "virtual void pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::Execute(HdTaskContext *)";
  v17 = 0;
  if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "renderPassState", 0) & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = lpsrc;
  if (lpsrc)
  {
LABEL_4:
    if (v6)
    {
      v9 = v6;
      goto LABEL_6;
    }
  }

  __p = "hdx/oitVolumeRenderTask.cpp";
  v14 = "Execute";
  v15 = 108;
  v16 = "virtual void pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::Execute(HdTaskContext *)";
  v17 = 0;
  v11 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("OIT only works with HdSt", v7, v8);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "extendedState", v11))
  {
    v9 = 0;
LABEL_6:
    pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetUseSceneMaterials(v9, 1);
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthFunc(lpsrc, 7);
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetCullStyle(lpsrc, 2);
    if (pxrInternal__aapl__pxrReserved__::HdxOitBufferAccessor::AddOitBufferBindings(&v20, (a1 + 80)))
    {
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetMultiSampleEnabled(lpsrc, 0);
      pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetRenderPassShader(v9, (a1 + 80));
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetEnableDepthMask(lpsrc, 0);
      v10 = lpsrc;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      __p = 0;
      sub_29AED99B0(&__p, &v12, &__p, 1uLL);
      pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetColorMasks(v10, &__p);
      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }

      pxrInternal__aapl__pxrReserved__::HdxRenderTask::Execute(a1, a2);
    }

    else
    {
      __p = "hdx/oitVolumeRenderTask.cpp";
      v14 = "Execute";
      v15 = 120;
      v16 = "virtual void pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::Execute(HdTaskContext *)";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "No OIT buffers allocated but needed by OIT volume render task");
    }
  }

LABEL_11:
  if (v19)
  {
    sub_29A014BEC(v19);
  }

LABEL_13:
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v21);
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }
}

void sub_29AEDBE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup((v16 - 49));
  sub_29A0E9CEC(v16 - 48);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxPackageFullscreenShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FD08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FD08))
  {
    sub_29AEDBFA0("fullscreen.glslfx", &qword_2A174FD00);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FD00, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FD08);
  }

  v3 = qword_2A174FD00;
  *a1 = qword_2A174FD00;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void sub_29AEDBFA0(char *a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FE40, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_2A174FE40);
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v8);
      sub_29A008E78(__p, "hdx");
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginWithName(__p, qword_2A174FE30);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      __cxa_atexit(sub_29B2B8168, qword_2A174FE30, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174FE40);
    }
  }

  sub_29A008E78(v15, "shaders");
  sub_29A008E78(v13, a1);
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths(v15, v13, __p);
  pxrInternal__aapl__pxrReserved__::PlugFindPluginResource(qword_2A174FE30, v17);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v6 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v6 = v17[1];
  }

  if (!v6)
  {
    __p[0] = "hdx/package.cpp";
    __p[1] = "_GetShaderPath";
    v10 = 26;
    v11 = "TfToken pxrInternal__aapl__pxrReserved__::_GetShaderPath(const char *)";
    v12 = 0;
    v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Could not find shader: %s\n", v4, v5, a1);
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "!path.empty()", v7);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a2);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_29AEDC15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174FE40);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassColorShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FD18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FD18))
  {
    sub_29AEDBFA0("renderPassColorShader.glslfx", &qword_2A174FD10);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FD10, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FD18);
  }

  v3 = qword_2A174FD10;
  *a1 = qword_2A174FD10;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassColorAndSelectionShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FD28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FD28))
  {
    sub_29AEDBFA0("renderPassColorAndSelectionShader.glslfx", &qword_2A174FD20);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FD20, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FD28);
  }

  v3 = qword_2A174FD20;
  *a1 = qword_2A174FD20;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassColorWithOccludedSelectionShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FD38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FD38))
  {
    sub_29AEDBFA0("renderPassColorWithOccludedSelectionShader.glslfx", &qword_2A174FD30);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FD30, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FD38);
  }

  v3 = qword_2A174FD30;
  *a1 = qword_2A174FD30;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassIdShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FD48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FD48))
  {
    sub_29AEDBFA0("renderPassIdShader.glslfx", &qword_2A174FD40);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FD40, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FD48);
  }

  v3 = qword_2A174FD40;
  *a1 = qword_2A174FD40;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassPickingShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FD58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FD58))
  {
    sub_29AEDBFA0("renderPassPickingShader.glslfx", &qword_2A174FD50);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FD50, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FD58);
  }

  v3 = qword_2A174FD50;
  *a1 = qword_2A174FD50;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassShadowShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FD68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FD68))
  {
    sub_29AEDBFA0("renderPassShadowShader.glslfx", &qword_2A174FD60);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FD60, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FD68);
  }

  v3 = qword_2A174FD60;
  *a1 = qword_2A174FD60;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageColorChannelShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FD78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FD78))
  {
    sub_29AEDBFA0("colorChannel.glslfx", &qword_2A174FD70);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FD70, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FD78);
  }

  v3 = qword_2A174FD70;
  *a1 = qword_2A174FD70;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageColorCorrectionShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FD88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FD88))
  {
    sub_29AEDBFA0("colorCorrection.glslfx", &qword_2A174FD80);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FD80, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FD88);
  }

  v3 = qword_2A174FD80;
  *a1 = qword_2A174FD80;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageVisualizeAovShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FD98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FD98))
  {
    sub_29AEDBFA0("visualize.glslfx", &qword_2A174FD90);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FD90, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FD98);
  }

  v3 = qword_2A174FD90;
  *a1 = qword_2A174FD90;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassOitShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FDA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FDA8))
  {
    sub_29AEDBFA0("renderPassOitShader.glslfx", &qword_2A174FDA0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FDA0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FDA8);
  }

  v3 = qword_2A174FDA0;
  *a1 = qword_2A174FDA0;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassOitOpaqueShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FDB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FDB8))
  {
    sub_29AEDBFA0("renderPassOitOpaqueShader.glslfx", &qword_2A174FDB0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FDB0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FDB8);
  }

  v3 = qword_2A174FDB0;
  *a1 = qword_2A174FDB0;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassOitVolumeShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FDC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FDC8))
  {
    sub_29AEDBFA0("renderPassOitVolumeShader.glslfx", &qword_2A174FDC0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FDC0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FDC8);
  }

  v3 = qword_2A174FDC0;
  *a1 = qword_2A174FDC0;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageOitResolveImageShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FDD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FDD8))
  {
    sub_29AEDBFA0("oitResolveImageShader.glslfx", &qword_2A174FDD0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FDD0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FDD8);
  }

  v3 = qword_2A174FDD0;
  *a1 = qword_2A174FDD0;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageOutlineShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FDE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FDE8))
  {
    sub_29AEDBFA0("outline.glslfx", &qword_2A174FDE0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FDE0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FDE8);
  }

  v3 = qword_2A174FDE0;
  *a1 = qword_2A174FDE0;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageSkydomeShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FDF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FDF8))
  {
    sub_29AEDBFA0("skydome.glslfx", &qword_2A174FDF0);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FDF0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FDF8);
  }

  v3 = qword_2A174FDF0;
  *a1 = qword_2A174FDF0;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageBoundingBoxShader(atomic_uint **a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A174FE08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FE08))
  {
    sub_29AEDBFA0("boundingBox.glslfx", &qword_2A174FE00);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FE00, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FE08);
  }

  v3 = qword_2A174FE00;
  *a1 = qword_2A174FE00;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v4;
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPackageDomeLightTexture(int a1@<W0>, atomic_uint **a2@<X8>)
{
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  if (a1 == 1)
  {
    MEMORY[0x29C2C1A60](v17, "RKObjectMode3.tex");
    v3 = "RKObjectMode3.hdr";
  }

  else
  {
    if (a1)
    {
      v13[0] = "hdx/package.cpp";
      v13[1] = "HdxPackageDomeLightTexture";
      v13[2] = 183;
      v13[3] = "TfToken pxrInternal__aapl__pxrReserved__::HdxPackageDomeLightTexture(HdxPackageDomeLightTextureChoice)";
      v14 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Unknown texture choice.");
      v7 = 0;
LABEL_11:
      *a2 = v7;
      goto LABEL_12;
    }

    MEMORY[0x29C2C1A60](v17, "StinsonBeach.tex");
    v3 = "StinsonBeach.hdr";
  }

  v4 = MEMORY[0x29C2C1A60](__p, v3);
  Instance = pxrInternal__aapl__pxrReserved__::HioImageRegistry::GetInstance(v4);
  if ((atomic_load_explicit(&qword_2A174FE18, memory_order_acquire) & 1) == 0)
  {
    v12 = Instance;
    if (__cxa_guard_acquire(&qword_2A174FE18))
    {
      byte_2A174FE10 = pxrInternal__aapl__pxrReserved__::HioImageRegistry::IsSupportedImageFile(v12, v17);
      __cxa_guard_release(&qword_2A174FE18);
    }
  }

  if ((atomic_load_explicit(&qword_2A174FE28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174FE28))
  {
    if (byte_2A174FE10 == 1)
    {
      v8 = v17[0];
      v9 = v18 < 0;
      v10 = v17;
    }

    else
    {
      v8 = __p[0];
      v9 = v16 < 0;
      v10 = __p;
    }

    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    sub_29AEDD0C0(v11);
    __cxa_atexit(sub_29A424A8C, &qword_2A174FE20, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174FE28);
  }

  v6 = qword_2A174FE20;
  *a2 = qword_2A174FE20;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_29AEDD068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_guard_abort(&qword_2A174FE28);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 17) < 0)
  {
    operator delete(*(v20 - 40));
  }

  _Unwind_Resume(a1);
}

void sub_29AEDD0C0(char *a1)
{
  if ((atomic_load_explicit(&qword_2A174FE58, memory_order_acquire) & 1) == 0)
  {
    v6 = __cxa_guard_acquire(&qword_2A174FE58);
    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetInstance(v6);
      sub_29A008E78(__p, "hdx");
      pxrInternal__aapl__pxrReserved__::PlugRegistry::GetPluginWithName(__p, qword_2A174FE48);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      __cxa_atexit(sub_29B2B8168, qword_2A174FE48, &dword_299FE7000);
      __cxa_guard_release(&qword_2A174FE58);
    }
  }

  sub_29A008E78(v13, "textures");
  sub_29A008E78(v11, a1);
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths(v13, v11, __p);
  pxrInternal__aapl__pxrReserved__::PlugFindPluginResource(qword_2A174FE48, v15);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v4 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v4 = v15[1];
  }

  if (!v4)
  {
    __p[0] = "hdx/package.cpp";
    __p[1] = "_GetTexturePath";
    v8 = 37;
    v9 = "TfToken pxrInternal__aapl__pxrReserved__::_GetTexturePath(const char *)";
    v10 = 0;
    v5 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Could not find texture: %s\n", v2, v3, a1);
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(__p, "!path.empty()", v5);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A174FE20);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_29AEDD274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A174FE58);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxPickTokens_StaticTokenType::~HdxPickTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdxPickTokens_StaticTokenType *this)
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

pxrInternal__aapl__pxrReserved__::HdxPickTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdxPickTokens_StaticTokenType::HdxPickTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::HdxPickTokens_StaticTokenType *this)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "pickParams", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "pickPrimsAndInstances", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "pickFaces", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "pickEdges", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "pickPoints", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "pickPointsAndInstances", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "resolveNearestToCamera", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 56, "resolveNearestToCenter", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 64, "resolveUnique", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 72, "resolveAll", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 80, "resolveDeep", 0);
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

void sub_29AEDD7AC(_Unwind_Exception *a1)
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

pxrInternal__aapl__pxrReserved__::HdxPickTask *pxrInternal__aapl__pxrReserved__::HdxPickTask::HdxPickTask(pxrInternal__aapl__pxrReserved__::HdxPickTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a3);
  *v4 = &unk_2A209BDB0;
  *(v4 + 4) = 1;
  *(v4 + 20) = 1;
  sub_29AEE4690(v4 + 24);
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 180);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 181);
  *(this + 96) = 0;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 194) = 1065353216;
  *(this + 98) = 0;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v5)
  {
    v5 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  v6 = *(v5 + 2);
  *(this + 99) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 99) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 50) = 0u;
  return this;
}

void sub_29AEDDA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  sub_29AEBBDD8(v10 + 704);
  sub_29AC943DC(&a10);
  a10 = v12;
  sub_29AE9C7A0(&a10);
  v14 = *(v10 + 80);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v15 = *(v10 + 78);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  v16 = *(v10 + 76);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v17 = *(v10 + 74);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v18 = *(v10 + 72);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  v19 = *(v10 + 70);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  sub_29A124AB0(&a10);
  sub_29A124AB0(&a10);
  sub_29AEDDAE0(v10 + 3);
  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(v10);
  _Unwind_Resume(a1);
}

void *sub_29AEDDAE0(void *a1)
{
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((a1 + 44));
  sub_29A0FC854((a1 + 40));
  v2 = a1[37];
  if (v2)
  {
    a1[38] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = a1[2];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdxPickTask::~HdxPickTask(std::__shared_weak_count **this)
{
  *this = &unk_2A209BDB0;
  pxrInternal__aapl__pxrReserved__::HdxPickTask::_CleanupAovBindings(this);
  v2 = this[105];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v15 = (this + 101);
  sub_29AC943DC(&v15);
  v3 = this[100];
  this[100] = 0;
  if (v3)
  {
    (v3->~__shared_weak_count_0)(v3);
  }

  v4 = this[99];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29AC1E22C((this + 93));
  sub_29A186B14((this + 91));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 181);
  sub_29A1DE3A4(this + 180);
  v5 = this[88];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = (this + 85);
  sub_29AC943DC(&v15);
  v15 = (this + 82);
  sub_29AE9C7A0(&v15);
  v6 = this[80];
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  v7 = this[78];
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v8 = this[76];
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  v9 = this[74];
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = this[72];
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v11 = this[70];
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  v15 = (this + 65);
  sub_29A124AB0(&v15);
  v15 = (this + 62);
  sub_29A124AB0(&v15);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((this + 47));
  sub_29A0FC854((this + 43));
  v12 = this[40];
  if (v12)
  {
    this[41] = v12;
    operator delete(v12);
  }

  v13 = this[6];
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = this[5];
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdTask::~HdTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxPickTask::~HdxPickTask(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HdxPickTask::_CleanupAovBindings(pxrInternal__aapl__pxrReserved__::HdxPickTask *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(v2);
    v4 = (*(*RenderDelegate + 48))(RenderDelegate);
    v5 = *(this + 82);
    v6 = *(this + 83);
    while (v5 != v6)
    {
      v7 = *v5++;
      (*(*v7 + 24))(v7, v4);
    }

    (*(**(this + 100) + 24))(*(this + 100), v4);
  }

  result = sub_29AE9AEF0(this + 82);
  v9 = *(this + 86);
  v10 = *(this + 85);
  while (v9 != v10)
  {
    v9 -= 80;
    result = sub_29AC94464(this + 680, v9);
  }

  *(this + 86) = v10;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxPickTask::_InitIfNeeded(pxrInternal__aapl__pxrReserved__::HdxPickTask *this)
{
  v36 = *MEMORY[0x29EDCA608];
  if (!*(this + 104))
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&lpsrc, *(this + 68));
    if (lpsrc)
    {
      if (v2)
      {
        v3 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
      v2 = 0;
    }

    if (v33)
    {
      sub_29A014BEC(v33);
    }

    if (v2)
    {
      v4 = atomic_load(&qword_2A174FE60);
      if (!v4)
      {
        v4 = sub_29AEE54F8();
      }

      *v35 = *v4;
      if ((v35[0] & 7) != 0 && (atomic_fetch_add_explicit((*v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v35 &= 0xFFFFFFFFFFFFFFF8;
      }

      *&v35[8] = xmmword_29B70C290;
      v33 = 0;
      v34 = 0;
      lpsrc = 0;
      sub_29AE030F0(&lpsrc, v35, &v36, 1uLL);
      if ((v35[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = atomic_load(&qword_2A174FE60);
      if (!v5)
      {
        v5 = sub_29AEE54F8();
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateSingleBufferArrayRange(v2, v5 + 16, &lpsrc, 8u, v35);
      v6 = *v35;
      *v35 = 0uLL;
      v7 = *(this + 105);
      *(this + 52) = v6;
      if (v7)
      {
        sub_29A014BEC(v7);
        if (*&v35[8])
        {
          sub_29A014BEC(*&v35[8]);
        }
      }

      *v35 = &lpsrc;
      sub_29ABC6FA0(v35);
    }

    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  if (*(this + 82) == *(this + 83))
  {
    pxrInternal__aapl__pxrReserved__::HdxPickTask::_CreateAovBindings(this);
  }

  v8 = *(this + 85);
  v9 = *(this + 86);
  while (v8 != v9)
  {
    pxrInternal__aapl__pxrReserved__::HdxPickTask::_ResizeOrCreateBufferForAOV(this, v8);
    v8 += 80;
  }

  v10 = *(this + 101);
  v11 = *(this + 102);
  while (v10 != v11)
  {
    pxrInternal__aapl__pxrReserved__::HdxPickTask::_ResizeOrCreateBufferForAOV(this, v10);
    v10 += 80;
  }

  if (!*(this + 69) || !*(this + 71) || !*(this + 73))
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v12)
    {
      v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
    if (!v13)
    {
      v13 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
    }

    v14 = *(v13 + 1);
    *v35 = v14;
    if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v35 &= 0xFFFFFFFFFFFFFFF8;
    }

    *&v35[8] = 0;
    *&v35[16] = 0;
    v31 = 0;
    pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(&lpsrc, (v12 + 288), v35, 0, &v31);
    if ((v31 & 7) != 0)
    {
      atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v35[16] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v35[16] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v35[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v35[8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v35[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(this + 68));
    (*(*RenderDelegate + 176))(v35);
    v16 = *v35;
    *v35 = 0uLL;
    v17 = *(this + 70);
    *(this + 552) = v16;
    if (v17)
    {
      sub_29A014BEC(v17);
      if (*&v35[8])
      {
        sub_29A014BEC(*&v35[8]);
      }
    }

    v18 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(this + 68));
    (*(*v18 + 176))(v35);
    v19 = *v35;
    *v35 = 0uLL;
    v20 = *(this + 72);
    *(this + 568) = v19;
    if (v20)
    {
      sub_29A014BEC(v20);
      if (*&v35[8])
      {
        sub_29A014BEC(*&v35[8]);
      }
    }

    v21 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(this + 68));
    (*(*v21 + 176))(v35);
    v22 = *v35;
    *v35 = 0uLL;
    v23 = *(this + 74);
    *(this + 584) = v22;
    if (v23)
    {
      sub_29A014BEC(v23);
      if (*&v35[8])
      {
        sub_29A014BEC(*&v35[8]);
      }
    }

    sub_29AEDF164(*(this + 68), v35);
    v24 = *v35;
    *v35 = 0uLL;
    v25 = *(this + 76);
    *(this + 600) = v24;
    if (v25)
    {
      sub_29A014BEC(v25);
      if (*&v35[8])
      {
        sub_29A014BEC(*&v35[8]);
      }
    }

    sub_29AEDF164(*(this + 68), v35);
    v26 = *v35;
    *v35 = 0uLL;
    v27 = *(this + 78);
    *(this + 616) = v26;
    if (v27)
    {
      sub_29A014BEC(v27);
      if (*&v35[8])
      {
        sub_29A014BEC(*&v35[8]);
      }
    }

    sub_29AEDF164(*(this + 68), v35);
    v28 = *v35;
    *v35 = 0uLL;
    v29 = *(this + 80);
    *(this + 632) = v28;
    if (v29)
    {
      sub_29A014BEC(v29);
      if (*&v35[8])
      {
        sub_29A014BEC(*&v35[8]);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetColorMaskUseDefault(*(this + 77), 0);
    v30 = *(this + 77);
    LODWORD(v31) = 0;
    memset(v35, 0, sizeof(v35));
    sub_29AED99B0(v35, &v31, &v31 + 1, 1uLL);
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetColorMasks(v30, v35);
    if (*v35)
    {
      *&v35[8] = *v35;
      operator delete(*v35);
    }

    pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(&lpsrc);
  }
}

void sub_29AEDE39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxPickTask::_CreateAovBindings(pxrInternal__aapl__pxrReserved__::HdxPickTask *this)
{
  v49 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v38, *(this + 68));
  v33 = v38;
  if (v39)
  {
    atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
    if (v39)
    {
      sub_29A014BEC(v39);
    }
  }

  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(this + 68));
  v3 = *((*(**(this + 81) + 200))(*(this + 81)) + 48);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if ((v3 & 0x1000) != 0)
  {
    if (!v4)
    {
      v4 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    v5 = (v4 + 16);
  }

  else
  {
    if (!v4)
    {
      v4 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    v5 = (v4 + 8);
  }

  sub_29A166F2C(this + 99, v5);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v6)
  {
    v6 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  v7 = *(v6 + 4);
  v38 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v8)
  {
    v8 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  v9 = *(v8 + 5);
  v39 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v10)
  {
    v10 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  v11 = *(v10 + 6);
  v40 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v12)
  {
    v12 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  v13 = *(v12 + 7);
  v41 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v14)
  {
    v14 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  v15 = *(v14 + 8);
  *&v42 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *&v42 = v42 & 0xFFFFFFFFFFFFFFF8;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v16)
  {
    v16 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  v17 = *(v16 + 10);
  *(&v42 + 1) = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(&v42 + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 99);
  *&v43 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *&v43 = v43 & 0xFFFFFFFFFFFFFFF8;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  sub_29A12EF7C(&v34, &v38, &v43 + 1, 7uLL);
  v19 = 48;
  while (1)
  {
    v20 = *(&v38 + v19);
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v19 -= 8;
    if (v19 == -8)
    {
      v21 = v34;
      if (v35 != v34)
      {
        sub_29AEDF29C(v34, &v37);
        v22 = operator new(0x58uLL);
        pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::HdStRenderBuffer(v22, v33, &v37);
        v38 = v22;
        sub_29AE9C154(this + 82, &v38);
        v23 = v38;
        v38 = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }

        (*(*RenderDelegate + 328))(&v46, RenderDelegate, v21);
        v38 = 0;
        v39 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v40);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v40 + 1);
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
        v45 = 1065353216;
        sub_29A166F2C(&v38, v21);
        sub_29A2258F0(&v40, &v37);
        sub_29A225948(&v40 + 1, &v37 + 1);
        v45 = v48;
        sub_29AC9488C(&v42 + 1, v47[4], 0);
        v39 = *(*(this + 83) - 8);
        sub_29A1854E8(&v41, v47);
        sub_29AEBBD78(this + 85, &v38);
      }

      v24 = atomic_load(&qword_2A174FE60);
      if (!v24)
      {
        v24 = sub_29AEE54F8();
      }

      sub_29AEDF29C((v24 + 24), &v38);
      v25 = operator new(0x58uLL);
      v26 = pxrInternal__aapl__pxrReserved__::HdStRenderBuffer::HdStRenderBuffer(v25, v33, &v38);
      v27 = *(this + 100);
      *(this + 100) = v25;
      if (v27)
      {
        (*(*v27 + 8))(v27, v26);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v38 + 1);
      sub_29A1DE3A4(&v38);
      v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v28)
      {
        v28 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      (*(*RenderDelegate + 328))(&v46, RenderDelegate, v28 + 8);
      sub_29AC944C0(this + 808, *(this + 85), *(this + 86), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 86) - *(this + 85)) >> 4));
      v29 = *(this + 101);
      v30 = *(this + 102);
      while (v29 != v30)
      {
        v39 = 0;
        sub_29A18606C((v29 + 24), &v38);
        sub_29A186B14(&v38);
        v29 += 80;
      }

      v38 = 0;
      v39 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v40);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v40 + 1);
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      v45 = 1065353216;
      v31 = atomic_load(&qword_2A174FE60);
      if (!v31)
      {
        v31 = sub_29AEE54F8();
      }

      sub_29A166F2C(&v38, (v31 + 24));
      v32 = atomic_load(&qword_2A174FE60);
      if (!v32)
      {
        v32 = sub_29AEE54F8();
      }

      sub_29AEDF29C((v32 + 24), &v37);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
    }
  }
}

void sub_29AEDED38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickTask::_ResizeOrCreateBufferForAOV(uint64_t a1, uint64_t a2)
{
  v20[2] = *MEMORY[0x29EDCA608];
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(*(a1 + 544));
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = 1;
  (*(**(a2 + 8) + 128))(v20);
  if (!sub_29AE8A2C8(v20) || ((v7 = (*(**(a2 + 8) + 48))(*(a2 + 8)), v8 = (*(**(a2 + 8) + 56))(*(a2 + 8)), v7 == v5) ? (v9 = v8 == v6) : (v9 = 0), !v9))
  {
    (*(*RenderDelegate + 328))(&v17, RenderDelegate, a2);
    (*(**(a2 + 8) + 40))(*(a2 + 8), v15, v17, 0);
    (*(**(a2 + 8) + 128))(v16);
    if ((sub_29AE8A2C8(v16) & 1) == 0)
    {
      v13[0] = "hdx/pickTask.cpp";
      v13[1] = "_ResizeOrCreateBufferForAOV";
      v13[2] = 318;
      v13[3] = "void pxrInternal__aapl__pxrReserved__::HdxPickTask::_ResizeOrCreateBufferForAOV(const HdRenderPassAovBinding &)";
      v14 = 0;
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

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "No texture on render buffer for AOV %s", v11);
    }

    sub_29A186B14(v16);
    sub_29AC1E22C(&v19);
    sub_29A186B14(&v18);
  }

  return sub_29A186B14(v20);
}

void sub_29AEDF108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  sub_29A186B14(va);
  sub_29AC1E22C(va2);
  sub_29A186B14(va1);
  sub_29A186B14(v10 - 72);
  _Unwind_Resume(a1);
}

void sub_29AEDF164(pxrInternal__aapl__pxrReserved__::HdRenderIndex *a1@<X0>, const void **a2@<X8>)
{
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a1);
  (*(*RenderDelegate + 184))(RenderDelegate);
  if (*a2)
  {
    if (v4)
    {
      v5 = v4;
      pxrInternal__aapl__pxrReserved__::HdxPackageRenderPassPickingShader(&v6);
      sub_29AEDB3CC(&v6, &v7);
      pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetRenderPassShader(v5, &v7);
      if (v8)
      {
        sub_29A014BEC(v8);
      }

      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }
}

void sub_29AEDF250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(v11 + 8);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEDF29C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29A008E78(&v11, "aov_pickTask_");
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  pxrInternal__aapl__pxrReserved__::TfMakeValidIdentifier(EmptyString, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v11, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v13 = v8->__r_.__value_.__r.__words[2];
  *v12 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(a2, v12);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_29AEDF370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickTask::_ConditionStencilWithGLCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x29EDCA608];
  (*(*a3 + 128))(&v40, a3, 0);
  if ((v41 & 4) != 0)
  {
    v5 = (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))(&v40);
  }

  else
  {
    v5 = v40;
  }

  v6 = *v5;
  v7 = *(v5 + 8);
  memset(&v39[3], 0, 40);
  v8 = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v6) + 28);
  v9 = *(pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v6) + 24);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v34 = 0u;
  v20 = v8;
  v21 = v9;
  v22 = 0x100000001;
  v23 = 0;
  v24 = 0;
  v25 = 15;
  v26 = 0;
  *&v28[11] = *&v39[27];
  *v28 = *&v39[16];
  v27 = *v39;
  v32 = v6;
  v33 = v7;
  (*(**(a1 + 648) + 24))(&lpsrc);
  (*(*lpsrc + 24))(lpsrc, "PickTask Condition Stencil Buffer");
  v10 = *(a1 + 24);
  v15[0] = 0;
  v15[1] = v10;
  (*(*lpsrc + 40))(lpsrc, v15);
  if (lpsrc)
  {
  }

  else
  {
    v11 = 0;
  }

  sub_29A117068(v38, a2);
  sub_29A117068(v35, v38);
  v37 = 0;
  v12 = operator new(0x28uLL);
  *v12 = &unk_2A209BE10;
  sub_29AB9A930((v12 + 1), v35);
  v37 = v12;
  pxrInternal__aapl__pxrReserved__::HgiGLGraphicsCmds::InsertFunctionOp(v11, v36);
  sub_29A0FC854(v36);
  sub_29A0FC854(v35);
  (*(*lpsrc + 32))(lpsrc);
  pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(*(a1 + 648), lpsrc, 0);
  sub_29A0FC854(v38);
  v13 = lpsrc;
  lpsrc = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if (*(&v30 + 1))
  {
    *&v31 = *(&v30 + 1);
    operator delete(*(&v30 + 1));
  }

  if (v29)
  {
    *(&v29 + 1) = v29;
    operator delete(v29);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return sub_29A186B14(&v40);
}

BOOL pxrInternal__aapl__pxrReserved__::HdxPickTask::_UseOcclusionPass(pxrInternal__aapl__pxrReserved__::HdxPickTask *this)
{
  if (*(this + 56) != 1)
  {
    return 0;
  }

  ExcludePaths = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetExcludePaths((this + 376));
  return *ExcludePaths != ExcludePaths[1];
}

BOOL pxrInternal__aapl__pxrReserved__::HdxPickTask::_UseWidgetPass(pxrInternal__aapl__pxrReserved__::HdxPickTask *this)
{
  v2 = *(this + 62);
  v1 = *(this + 63);
  v3 = *(this + 65);
  if (v1 - v2 != *(this + 66) - v3)
  {
    return 1;
  }

  if (v2 == v1)
  {
    return 0;
  }

  v4 = v2 + 8;
  do
  {
    v5 = *v3++;
    v6 = v5 ^ *(v4 - 8);
    result = v6 > 7;
    v8 = v6 > 7 || v4 == v1;
    v4 += 8;
  }

  while (!v8);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickTask::_FindAovBuffer(pxrInternal__aapl__pxrReserved__::HdxPickTask *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v2 = *(this + 85);
  v3 = *(this + 86);
  if (v2 != v3)
  {
    while ((*v2 ^ *a2) >= 8)
    {
      v2 += 10;
      if (v2 == v3)
      {
        v2 = *(this + 86);
        goto LABEL_5;
      }
    }
  }

  if (v2 != v3)
  {
    return v2[1];
  }

LABEL_5:
  v6[0] = "hdx/pickTask.cpp";
  v6[1] = "_FindAovBuffer";
  v6[2] = 434;
  v6[3] = "const HdRenderBuffer *pxrInternal__aapl__pxrReserved__::HdxPickTask::_FindAovBuffer(const TfToken &) const";
  v7 = 0;
  v4 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "bindingIt != _pickableAovBindings.end()", 0);
  result = 0;
  if (v4)
  {
    return v2[1];
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxPickTask::Sync(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, void *a3, int *a4)
{
  v57 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v46, "virtual void pxrInternal__aapl__pxrReserved__::HdxPickTask::Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)");
  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a2[1]);
  {
    if (!*(a1 + 648))
    {
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
      if (!v9)
      {
        v9 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
      }

      *(a1 + 648) = sub_29AEE0144(a3, v9 + 1);
    }

    v10 = *a4;
    if ((*a4 & 4) != 0)
    {
      sub_29AEE0240(a1, a2, a1 + 16);
      v10 = *a4;
    }

    if ((v10 & 0x10) != 0)
    {
      pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskRenderTags(&v47, a1, a2);
      sub_29A2F7B20((a1 + 496));
      *(a1 + 496) = v47;
      *(a1 + 512) = v48.f64[0];
      v48.f64[0] = 0.0;
      v47 = 0uLL;
      v51 = &v47;
      sub_29A124AB0(&v51);
      v11 = *(a1 + 528);
      v12 = *(a1 + 520);
      while (v11 != v12)
      {
        v14 = *(v11 - 8);
        v11 -= 8;
        v13 = v14;
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      *(a1 + 528) = v12;
      sub_29A1D7F98((a1 + 520), (*(a1 + 504) - *(a1 + 496)) >> 3);
      v15 = *(a1 + 496);
      for (i = *(a1 + 504); v15 != i; ++v15)
      {
        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxRenderTagTokens);
        if (!v17)
        {
          v17 = sub_29AEE5BB8(&pxrInternal__aapl__pxrReserved__::HdxRenderTagTokens);
        }

        if ((*(v17 + 7) ^ *v15) >= 8)
        {
          sub_29A1D8028(a1 + 520, v15);
        }
      }
    }

    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
    if (!v18)
    {
      v18 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
    }

    sub_29AEE03B0(a3, v18, a1 + 24);
    *(a1 + 544) = a2[1];
    pxrInternal__aapl__pxrReserved__::HdxPickTask::_InitIfNeeded(a1);
    if (*(a1 + 552) || (*&v47.f64[0] = "hdx/pickTask.cpp", *&v47.f64[1] = "Sync", *&v48.f64[0] = 482, *&v48.f64[1] = "virtual void pxrInternal__aapl__pxrReserved__::HdxPickTask::Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)", v49 = 0, pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v47, "_pickableRenderPass", 0)))
    {
      if (*(a1 + 568) || (v51 = "hdx/pickTask.cpp", v52 = "Sync", v53 = 483, v54 = "virtual void pxrInternal__aapl__pxrReserved__::HdxPickTask::Sync(HdSceneDelegate *, HdTaskContext *, HdDirtyBits *)", LOBYTE(v55) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v51, "_occluderRenderPass", 0) & 1) != 0))
      {
        v19 = *(a1 + 608);
        v51 = *(a1 + 600);
        v52 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(a1 + 624);
        v53 = *(a1 + 616);
        v54 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        v21 = *(a1 + 640);
        v55 = *(a1 + 632);
        v56 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v22 = *(a1 + 368);
        v23 = *(a1 + 24);
        v24 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a2[1]);
        v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
        if (!v25)
        {
          v25 = sub_29AE81F90(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
        }

        v26 = sub_29AE8176C(v24, v25 + 8, &pxrInternal__aapl__pxrReserved__::HdStVolume::defaultStepSize);
        v27 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a2[1]);
        v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
        if (!v28)
        {
          v28 = sub_29AE81F90(&pxrInternal__aapl__pxrReserved__::HdStRenderSettingsTokens);
        }

        v29 = sub_29AE8176C(v27, v28 + 16, &pxrInternal__aapl__pxrReserved__::HdStVolume::defaultStepSizeLighting);
        v30 = 0;
        v31.i64[0] = v23;
        v31.i64[1] = SHIDWORD(v23);
        v45 = vcvtq_f64_s64(v31);
        do
        {
          v32 = (&v51)[v30];
          if (v22)
          {
            pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetStencilEnabled(v32, 1);
            pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetStencil((&v51)[v30], 1, 0, 1, 0, 0, 0);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetStencilEnabled(v32, 0);
          }

          v33 = (&v51)[v30];
          if (v33 == *(a1 + 616))
          {
            v35 = 1;
          }

          else
          {
            v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
            if (!v34)
            {
              v34 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
            }

            v35 = (*(v34 + 10) ^ *(a1 + 48)) > 7uLL;
            v33 = (&v51)[v30];
          }

          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetEnableDepthTest(v33, 1);
          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetEnableDepthMask((&v51)[v30], v35);
          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetDepthFunc((&v51)[v30], 3);
          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaThreshold((&v51)[v30], *(a1 + 480));
          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAlphaToCoverageEnabled((&v51)[v30], 0);
          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetBlendEnabled((&v51)[v30], 0);
          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetCullStyle((&v51)[v30], *(a1 + 16));
          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetLightingEnabled((&v51)[v30], 0);
          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetVolumeRenderingConstants((&v51)[v30], v26, v29);
          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetConservativeRasterizationEnabled((&v51)[v30], 1);
          v36 = (&v51)[v30];
          if (v36)
          {
            if (v37)
            {
              v38 = v37;
              v47 = 0uLL;
              v48 = v45;
              pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetCameraFramingState(v37, (a1 + 64), (a1 + 192), &v47, (a1 + 320));
              pxrInternal__aapl__pxrReserved__::HdStRenderPassState::SetUseSceneMaterials(v38, *(a1 + 20));
            }
          }

          v30 += 2;
        }

        while (v30 != 6);
        pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAovBindings(*(a1 + 600), (a1 + 680));
        if (*(a1 + 56) == 1)
        {
          ExcludePaths = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetExcludePaths((a1 + 376));
          if (*ExcludePaths != ExcludePaths[1])
          {
            v40 = *(a1 + 704);
            v47.f64[0] = v40;
            if ((LOBYTE(v40) & 7) != 0 && (atomic_fetch_add_explicit((*&v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              *&v47.f64[0] &= 0xFFFFFFFFFFFFFFF8;
            }

            v47.f64[1] = *(a1 + 712);
            sub_29A1E21F4(&v48, (a1 + 720));
            sub_29A1E2240(v48.f64 + 1, (a1 + 724));
            sub_29A186EF4(&v48.f64[1], (a1 + 728));
            sub_29AC86758(&v50, a1 + 744);
          }
        }

        if (pxrInternal__aapl__pxrReserved__::HdxPickTask::_UseWidgetPass(a1))
        {
          pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAovBindings(*(a1 + 632), (a1 + 808));
        }

        if (*(a1 + 56) == 1)
        {
          v41 = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetExcludePaths((a1 + 376));
          if (*v41 != v41[1])
          {
            pxrInternal__aapl__pxrReserved__::HdRprimCollection::CreateInverseCollection((a1 + 376), &v47);
            pxrInternal__aapl__pxrReserved__::HdRenderPass::SetRprimCollection(*(a1 + 568), &v47);
            pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(&v47);
          }
        }

        pxrInternal__aapl__pxrReserved__::HdRenderPass::SetRprimCollection(*(a1 + 552), (a1 + 376));
        if (pxrInternal__aapl__pxrReserved__::HdxPickTask::_UseWidgetPass(a1))
        {
          pxrInternal__aapl__pxrReserved__::HdRenderPass::SetRprimCollection(*(a1 + 584), (a1 + 376));
        }

        if (*(a1 + 56) == 1)
        {
          v42 = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetExcludePaths((a1 + 376));
          if (*v42 != v42[1])
          {
            pxrInternal__aapl__pxrReserved__::HdRenderPass::Sync(*(a1 + 568));
          }
        }

        pxrInternal__aapl__pxrReserved__::HdRenderPass::Sync(*(a1 + 552));
        if (pxrInternal__aapl__pxrReserved__::HdxPickTask::_UseWidgetPass(a1))
        {
          pxrInternal__aapl__pxrReserved__::HdRenderPass::Sync(*(a1 + 584));
        }

        *a4 = 0;
        for (j = 5; j != -1; j -= 2)
        {
          v44 = (&v51)[j];
          if (v44)
          {
            sub_29A014BEC(v44);
          }
        }
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v46);
}

void *sub_29AEE0144(void *a1, void *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v4)
  {
    v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  result = sub_29A16039C(a1, v4 + 28);
  if (result)
  {
    v6 = result;
    if (sub_29AEE5AA0((result + 3)))
    {
      v7 = v6[4];
      if ((v7 & 4) != 0)
      {
        v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v6 + 3);
      }

      else
      {
        v8 = v6[3];
      }

      v9 = *v8;
      v10 = *(v8 + 8);
      while (v9 != v10)
      {
        v11 = *v9;
        if ((*a2 ^ **v9) <= 7)
        {
          v12 = (v11 + 1);
          if (sub_29AE7FE54((v11 + 1)))
          {
            v13 = v11[2];
            if ((v13 & 4) != 0)
            {
              v12 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(v11 + 1);
            }

            return *v12;
          }
        }

        ++v9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_29AEE0240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v14, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEE5B2C(&v14);
  if (v7)
  {
    if ((v15 & 4) != 0)
    {
      v8 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v8 = &v14;
    }

    v9 = *v8;
    *(a3 + 4) = *(v8 + 4);
    *a3 = v9;
  }

  else
  {
    v12[0] = "hd/task.h";
    v12[1] = "_GetTaskParams";
    v12[2] = 242;
    v12[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxPickTaskParams]";
    v13 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v14);
  return v7;
}

void sub_29AEE0390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEE03B0(uint64_t result, void *a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v4 = sub_29A16039C(result, a2);
  if (!v4)
  {
    v8 = "hd/task.h";
    v9 = "_GetTaskContextData";
    v10 = 214;
    v11 = "static BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskContextData(const HdTaskContext *, const TfToken &, T *) [T = pxrInternal__aapl__pxrReserved__::HdxPickTaskContextParams]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Token %s missing from task context");
    return 0;
  }

  v5 = v4;
  if ((sub_29AEE5C44((v4 + 3)) & 1) == 0)
  {
    v8 = "hd/task.h";
    v9 = "_GetTaskContextData";
    v10 = 221;
    v11 = "static BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskContextData(const HdTaskContext *, const TfToken &, T *) [T = pxrInternal__aapl__pxrReserved__::HdxPickTaskContextParams]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Token %s in task context is of mismatched type");
    return 0;
  }

  v6 = v5[4];
  if ((v6 & 4) != 0)
  {
    v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v5 + 3);
  }

  else
  {
    v7 = v5[3];
  }

  sub_29AEE5CD0(a3, v7);
  return 1;
}

void pxrInternal__aapl__pxrReserved__::HdxPickTask::Prepare(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&lpsrc, *(a1 + 544));
  {
    v5 = lpsrc.n128_u64[1];
    v6 = 0;
    if (lpsrc.n128_u64[1])
    {
      atomic_fetch_add_explicit((lpsrc.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if (lpsrc.n128_u64[1])
  {
    sub_29A014BEC(lpsrc.n128_u64[1]);
  }

  if ((v6 & 1) == 0)
  {
    if (*(a1 + 56) == 1)
    {
      ExcludePaths = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetExcludePaths((a1 + 376));
      if (*ExcludePaths != ExcludePaths[1])
      {
        v8 = *(a1 + 616);
        pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&lpsrc, a3);
        (*(*v8 + 16))(v8, &lpsrc);
        if (lpsrc.n128_u64[1])
        {
          sub_29A014BEC(lpsrc.n128_u64[1]);
        }
      }
    }

    v9 = *(a1 + 600);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&lpsrc, a3);
    (*(*v9 + 16))(v9, &lpsrc);
    if (lpsrc.n128_u64[1])
    {
      sub_29A014BEC(lpsrc.n128_u64[1]);
    }

    if (pxrInternal__aapl__pxrReserved__::HdxPickTask::_UseWidgetPass(a1))
    {
      v10 = *(a1 + 632);
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&lpsrc, a3);
      (*(*v10 + 16))(v10, &lpsrc);
      if (lpsrc.n128_u64[1])
      {
        sub_29A014BEC(lpsrc.n128_u64[1]);
      }
    }

    pxrInternal__aapl__pxrReserved__::HdxPickTask::_ClearPickBuffer(a1);
    v11 = *(a1 + 600);
    if (v11)
    {
      if (v12)
      {
        v13 = *(v12 + 99);
        v14 = *(v12 + 100);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v13)
        {
          if (*(a1 + 832))
          {
            v15 = atomic_load(&qword_2A174FE60);
            if (!v15)
            {
              v15 = sub_29AEE54F8();
            }

            v16 = *(a1 + 832);
            v17 = *(a1 + 840);
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            lpsrc.n128_u64[0] = 0xFFFFFFFF00000007;
            v18 = *(v15 + 8);
            lpsrc.n128_u64[1] = v18;
            if ((v18 & 7) != 0)
            {
              v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
              if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
              {
                lpsrc.n128_u64[1] = v19;
              }
            }

            v22 = 0;
            v23 = 0;
            v24 = v16;
            v25 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v26 = 256;
            v27 = 0;
            v28 = 0;
            pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::AddBufferBinding(v13, &lpsrc);
            if (v25)
            {
              sub_29A014BEC(v25);
            }

            if (v23)
            {
              sub_29A014BEC(v23);
            }

            if ((lpsrc.n128_u8[8] & 7) != 0)
            {
              atomic_fetch_add_explicit((lpsrc.n128_u64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v17)
            {
              sub_29A014BEC(v17);
            }
          }

          else
          {
            v20 = atomic_load(&qword_2A174FE60);
            if (!v20)
            {
              v20 = sub_29AEE54F8();
            }

            pxrInternal__aapl__pxrReserved__::HdStRenderPassShader::RemoveBufferBinding(v13, (v20 + 8));
          }
        }

        if (v14)
        {
          sub_29A014BEC(v14);
        }
      }
    }
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29AEE0850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxPickTask::_ClearPickBuffer(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this)
{
  v49[2] = *MEMORY[0x29EDCA608];
  if (this[104])
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(lpsrc, this[68]);
    if (lpsrc[0])
    {
      if (v2)
      {
        v3 = lpsrc[1];
        if (lpsrc[1])
        {
          atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
      v2 = 0;
    }

    if (lpsrc[1])
    {
      sub_29A014BEC(lpsrc[1]);
    }

    if (v2)
    {
      v48 = 0;
      *lpsrc = 0u;
      v47 = 0u;
      v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
      if (!v4)
      {
        v4 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
      }

      if ((*(v4 + 10) ^ this[6]) > 7)
      {
        LODWORD(v45) = 0;
        sub_29A7ACA64(lpsrc, &v45);
        goto LABEL_78;
      }

      v5 = *(this + 8);
      LODWORD(v45) = v5 / 32;
      LODWORD(v44) = v5 / 32 + 8;
      v6 = 3 * (v5 / 32);
      sub_29A7A8F90(lpsrc, v44 + 96 * (v5 / 32));
      sub_29A7ACEC4(lpsrc, &v45);
      sub_29A7ACEC4(lpsrc, &dword_29B714D78);
      sub_29A7ACEC4(lpsrc, &dword_29B714D7C);
      sub_29A7ACEC4(lpsrc, &v44);
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
      if (!v7)
      {
        v7 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
      }

      LODWORD(v49[0]) = (*(v7 + 2) ^ this[5]) < 8;
      sub_29A7ACA64(lpsrc, v49);
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
      if (!v8)
      {
        v8 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
      }

      LODWORD(v49[0]) = (*(v8 + 3) ^ this[5]) < 8;
      sub_29A7ACA64(lpsrc, v49);
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
      if (!v9)
      {
        v9 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
      }

      LODWORD(v49[0]) = (*(v9 + 4) ^ this[5]) < 8;
      sub_29A7ACA64(lpsrc, v49);
      LODWORD(v49[0]) = 0;
      sub_29A7ACA64(lpsrc, v49);
      v10 = lpsrc[0];
      if (!v45)
      {
        v11 = lpsrc[0];
        goto LABEL_50;
      }

      v11 = lpsrc[0] + v45;
      if (v11)
      {
        v12 = v48;
        if (v48)
        {
          if (!*(&v47 + 1))
          {
            v13 = atomic_load(v48 - 2);
            if (v13 == 1)
            {
              if (lpsrc[0] < v11)
              {
                v14 = v48;
                if (*(v48 - 1) < v11)
                {
                  v15 = sub_29A19DB58(lpsrc, v11);
                  v12 = v15;
                  if (v10)
                  {
                    for (i = 0; i != v10; ++i)
                    {
                      v15[i] = v14[i];
                    }
                  }
                }

                bzero(&v12[v10], ((4 * v11 - 4 * v10 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
              }

              v17 = v12;
              goto LABEL_47;
            }

            v12 = v48;
          }

          v20 = sub_29A19DB58(lpsrc, v11);
          v17 = v20;
          if (v10 >= v11)
          {
            v21 = v11;
          }

          else
          {
            v21 = v10;
          }

          if (v10)
          {
            v22 = 4 * v21;
            v23 = v20;
            do
            {
              v24 = *v12++;
              *v23++ = v24;
              v22 -= 4;
            }

            while (v22);
          }

          if (v10 >= v11)
          {
            goto LABEL_47;
          }

          v18 = &v20[v10];
          v19 = ((4 * v11 - 4 * v10 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
LABEL_46:
          bzero(v18, v19);
LABEL_47:
          if (v17 != v48)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          lpsrc[0] = v11;
LABEL_50:
          if ((v5 + 31) < 0x3F)
          {
            goto LABEL_78;
          }

          v25 = v11 + 96 * (v5 / 32);
          if (v25)
          {
            v26 = v48;
            if (v48)
            {
              if (!*(&v47 + 1))
              {
                v27 = atomic_load(v48 - 2);
                if (v27 == 1)
                {
                  if (v11 < v25)
                  {
                    v28 = v48;
                    if (*(v48 - 1) < v25)
                    {
                      v29 = sub_29A19DB58(lpsrc, v25);
                      v26 = v29;
                      if (v11)
                      {
                        for (j = 0; j != v11; ++j)
                        {
                          v29[j] = v28[j];
                        }
                      }
                    }

                    memset_pattern16(&v26[v11], &unk_29B714D60, ((4 * v25 - 4 * v11 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
                  }

                  v31 = v26;
                  goto LABEL_75;
                }

                v26 = v48;
              }

              v34 = sub_29A19DB58(lpsrc, v25);
              v31 = v34;
              if (v11 >= v25)
              {
                v35 = v11 + 32 * v6;
              }

              else
              {
                v35 = v11;
              }

              if (v11)
              {
                v36 = 4 * v35;
                v37 = v34;
                do
                {
                  v38 = *v26++;
                  *v37++ = v38;
                  v36 -= 4;
                }

                while (v36);
              }

              if (v11 >= v25)
              {
                goto LABEL_75;
              }

              v32 = &v34[v11];
              v33 = ((4 * v25 - 4 * v11 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
LABEL_74:
              memset_pattern16(v32, &unk_29B714D60, v33);
LABEL_75:
              if (v31 != v48)
              {
                pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
              }

              lpsrc[0] = (v11 + 32 * v6);
LABEL_78:
              v39 = atomic_load(&qword_2A174FE60);
              if (!v39)
              {
                v39 = sub_29AEE54F8();
              }

              v49[1] = &off_2A2043D18;
              v40 = operator new(0x30uLL);
              v41 = v47;
              *v40 = *lpsrc;
              *(v40 + 1) = v41;
              v42 = v48;
              *(v40 + 4) = v48;
              if (v42)
              {
                v43 = (v42 - 4);
                if (*(v40 + 3))
                {
                  v43 = *(v40 + 3);
                }

                atomic_fetch_add_explicit(v43, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v40 + 10);
              v49[0] = v40;
              atomic_fetch_add_explicit(v40 + 10, 1u, memory_order_relaxed);
              sub_29AD9CD3C(v39, v49, &v44);
              v45 = v44;
              v44 = 0uLL;
              sub_29A186B14(v49);
              pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v2, this + 104, &v45);
              if (*(&v45 + 1))
              {
                sub_29A014BEC(*(&v45 + 1));
              }

              pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
            }

            if (4 * v25 / v25 == 4)
            {
              v32 = sub_29A19DB58(lpsrc, v25);
              v31 = v32;
              v33 = 4 * v25;
              goto LABEL_74;
            }
          }

          sub_29A19D79C(lpsrc);
          goto LABEL_78;
        }

        if (4 * v11 / v11 == 4)
        {
          v18 = sub_29A19DB58(lpsrc, v11);
          v17 = v18;
          v19 = 4 * v11;
          goto LABEL_46;
        }
      }

      sub_29A19D79C(lpsrc);
      v11 = lpsrc[0];
      goto LABEL_50;
    }

    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HdxPickTask::Execute(uint64_t a1)
{
  v56 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::GlfDebugGroup(&v47, "virtual void pxrInternal__aapl__pxrReserved__::HdxPickTask::Execute(HdTaskContext *)");
  (*(**(a1 + 648) + 216))(*(a1 + 648));
  v46 = *(a1 + 24);
  *&v45 = 0;
  *(&v45 + 1) = v46;
  v2 = *(a1 + 368);
  if (v2)
  {
    sub_29A117068(v55, a1 + 344);
    pxrInternal__aapl__pxrReserved__::HdxPickTask::_ConditionStencilWithGLCallback(a1, v55, *(*(a1 + 680) + 80 * *(a1 + 784) + 8));
    sub_29A0FC854(v55);
    sub_29A117068(v54, a1 + 344);
    pxrInternal__aapl__pxrReserved__::HdxPickTask::_ConditionStencilWithGLCallback(a1, v54, *(a1 + 800));
    sub_29A0FC854(v54);
  }

  if (*(a1 + 56) == 1)
  {
    ExcludePaths = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetExcludePaths((a1 + 376));
    if (*ExcludePaths != ExcludePaths[1])
    {
      pxrInternal__aapl__pxrReserved__::HdRenderPass::Execute(*(a1 + 568));
LABEL_7:
      v49 = 0;
      goto LABEL_9;
    }
  }

  if (v2)
  {
    goto LABEL_7;
  }

  v49 = &off_2A2042A68 + 2;
  v4 = operator new(0x14uLL);
  __asm { FMOV            V0.4S, #1.0 }

  *v4 = _Q0;
  atomic_store(0, v4 + 4);
  v48 = v4;
  atomic_fetch_add_explicit(v4 + 4, 1u, memory_order_relaxed);
LABEL_9:
  sub_29A18606C((*(a1 + 680) + 80 * *(a1 + 784) + 24), &v48);
  sub_29A186B14(&v48);
  pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAovBindings(*(a1 + 600), (a1 + 680));
  pxrInternal__aapl__pxrReserved__::HdRenderPass::Execute(*(a1 + 552));
  if (pxrInternal__aapl__pxrReserved__::HdxPickTask::_UseWidgetPass(a1))
  {
    if (v2)
    {
      v49 = 0;
    }

    else
    {
      v49 = &off_2A2042A68 + 2;
      v10 = operator new(0x14uLL);
      __asm { FMOV            V0.4S, #1.0 }

      *v10 = _Q0;
      atomic_store(0, v10 + 4);
      v48 = v10;
      atomic_fetch_add_explicit(v10 + 4, 1u, memory_order_relaxed);
    }

    sub_29A18606C((*(a1 + 816) - 56), &v48);
    sub_29A186B14(&v48);
    pxrInternal__aapl__pxrReserved__::HdRenderPassState::SetAovBindings(*(a1 + 632), (a1 + 808));
    v12 = *(a1 + 584);
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxRenderTagTokens);
    if (!v13)
    {
      v13 = sub_29AEE5BB8(&pxrInternal__aapl__pxrReserved__::HdxRenderTagTokens);
    }

    v14 = *(v13 + 7);
    v52 = v14;
    if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v52 &= 0xFFFFFFFFFFFFFFF8;
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    sub_29A12EF7C(&v48, &v52, &v53, 1uLL);
    pxrInternal__aapl__pxrReserved__::HdRenderPass::Execute(v12);
    v36[0] = &v48;
    sub_29A124AB0(v36);
    if ((v52 & 7) != 0)
    {
      atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  if (!v15)
  {
    v15 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
  }

  if ((*(v15 + 10) ^ *(a1 + 48)) > 7)
  {
    v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v16)
    {
      v16 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    sub_29AEE1C24(a1, (v16 + 32), &v52);
    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v17)
    {
      v17 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    sub_29AEE1C24(a1, (v17 + 40), v44);
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v18)
    {
      v18 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    sub_29AEE1C24(a1, (v18 + 48), v43);
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v19)
    {
      v19 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    sub_29AEE1C24(a1, (v19 + 56), v42);
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v20)
    {
      v20 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    sub_29AEE1C24(a1, (v20 + 64), v41);
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v21)
    {
      v21 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    sub_29AEE1C24(a1, (v21 + 80), v40);
    sub_29AEE1C24(a1, (a1 + 792), v39);
    v38 = 0x3F80000000000000;
    if ((*((*(**(a1 + 648) + 200))(*(a1 + 648)) + 49) & 0x20) != 0)
    {
      v38 = *pxrInternal__aapl__pxrReserved__::HdRenderPassState::GetDepthRange(*(a1 + 600));
    }

    pxrInternal__aapl__pxrReserved__::HdxPickResult::HdxPickResult(&v48, v52, v44[0], v43[0], v42[0], v41[0], v40[0], v39[0], *(a1 + 544), (a1 + 40), a1 + 64, (a1 + 192), &v38, &v46, &v45);
    v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
    if (!v22)
    {
      v22 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
    }

    if ((*(v22 + 7) ^ *(a1 + 48)) > 7)
    {
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
      if (!v23)
      {
        v23 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
      }

      if ((*(v23 + 6) ^ *(a1 + 48)) > 7)
      {
        v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
        if (!v24)
        {
          v24 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
        }

        if ((*(v24 + 8) ^ *(a1 + 48)) > 7)
        {
          v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
          if (!v25)
          {
            v25 = sub_29AEE546C(&pxrInternal__aapl__pxrReserved__::HdxPickTokens);
          }

          v26 = *(a1 + 48);
          if ((*(v25 + 9) ^ v26) > 7)
          {
            v36[0] = "hdx/pickTask.cpp";
            v36[1] = "Execute";
            v36[2] = 829;
            v36[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdxPickTask::Execute(HdTaskContext *)";
            v37 = 0;
            v27 = v26 & 0xFFFFFFFFFFFFFFF8;
            if ((v26 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v28 = (v27 + 16);
              if (*(v27 + 39) < 0)
              {
                v28 = *v28;
              }
            }

            else
            {
              v28 = "";
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v36, 1, "Unrecognized interesection mode '%s'", v28);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::HdxPickResult::ResolveAll(&v48, *(a1 + 488));
          }
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::HdxPickResult::ResolveUnique(&v48, *(a1 + 488));
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::HdxPickResult::ResolveNearestToCamera(&v48, *(a1 + 488));
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdxPickResult::ResolveNearestToCenter(&v48, *(a1 + 488));
    }

    (*(**(a1 + 648) + 224))(*(a1 + 648));
    if ((v51 & 7) != 0)
    {
      atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v29 = v39[0];
    v39[0] = 0;
    if (v29)
    {
      (v39[1])();
    }

    v30 = v40[0];
    v40[0] = 0;
    if (v30)
    {
      (v40[1])();
    }

    v31 = v41[0];
    v41[0] = 0;
    if (v31)
    {
      (v41[1])();
    }

    v32 = v42[0];
    v42[0] = 0;
    if (v32)
    {
      (v42[1])();
    }

    v33 = v43[0];
    v43[0] = 0;
    if (v33)
    {
      (v43[1])();
    }

    v34 = v44[0];
    v44[0] = 0;
    if (v34)
    {
      (v44[1])();
    }

    v35 = v52;
    v52 = 0;
    if (v35)
    {
      v53();
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdxPickTask::_ResolveDeep(a1);
    (*(**(a1 + 648) + 224))(*(a1 + 648));
  }

  pxrInternal__aapl__pxrReserved__::GlfDebugGroup::~GlfDebugGroup(&v47);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickTask::_ResolveDeep(uint64_t this)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v1 = *(this + 832);
  if (v1)
  {
    v2 = this;
    if (!atomic_load(&qword_2A174FE60))
    {
      sub_29AEE54F8();
    }

    (*(*v1 + 64))(v16, v1);
    if (v16[1])
    {
      v4 = sub_29A19D57C(v16);
      v5 = *(v2 + 32);
      if (v5 >= 32)
      {
        v6 = v4;
        v7 = 0;
        v8 = 4 * (v5 >> 5);
        do
        {
          if (*(v4[4] + v7 + 8) >= 1)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v11);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v12);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v13);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14);
            pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRprimPathFromPrimId(*(v2 + 544), *(v6[4] + v8 + 32), &v15);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
          }

          ++v7;
          v8 += 384;
        }

        while (v7 != v5 >> 5);
      }
    }

    return sub_29A186B14(v16);
  }

  return this;
}

uint64_t sub_29AEE1C24@<X0>(uint64_t *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v10[2] = *MEMORY[0x29EDCA608];
  AovBuffer = pxrInternal__aapl__pxrReserved__::HdxPickTask::_FindAovBuffer(a1, a2);
  (*(*AovBuffer + 128))(v10);
  if (sub_29AE8A2C8(v10) && (v8 = *sub_29AEE5F0C(v10), v8))
  {
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::HdStTextureUtils::HgiTextureReadback(a1[81], &v8, &v7, &v9);
    *a3 = v9;
  }

  else
  {
    *a3 = 0;
  }

  a3[1] = pxrInternal__aapl__pxrReserved__::ArchAlignedFree;
  return sub_29A186B14(v10);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickResult::HdxPickResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, double *a12, void *a13, int32x2_t *a14, _OWORD *a15)
{
  return pxrInternal__aapl__pxrReserved__::HdxPickResult::HdxPickResult(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  v16 = *a10;
  *(a1 + 64) = *a10;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 64) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 328) = *a13;
  v17 = *a14;
  *(a1 + 336) = *a14;
  *(a1 + 344) = *a15;
  v18 = vmax_s32(*(a1 + 344), 0);
  v19 = vmin_s32(*(a1 + 352), vsub_s32(v17, v18));
  *(a1 + 344) = v18;
  *(a1 + 352) = v19;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(a11, 0, 0.0, &v34);
  v20 = v35;
  *(a1 + 200) = v34;
  *(a1 + 216) = v20;
  v21 = v37;
  *(a1 + 232) = v36;
  *(a1 + 248) = v21;
  v22 = v39;
  *(a1 + 264) = v38;
  *(a1 + 280) = v22;
  v23 = v41;
  *(a1 + 296) = v40;
  *(a1 + 312) = v23;
  v24 = *(a11 + 80);
  v33[4] = *(a11 + 64);
  v33[5] = v24;
  v25 = *(a11 + 112);
  v33[6] = *(a11 + 96);
  v33[7] = v25;
  v26 = *(a11 + 16);
  v33[0] = *a11;
  v33[1] = v26;
  v27 = *(a11 + 48);
  v33[2] = *(a11 + 32);
  v33[3] = v27;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v33, a12);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(v33, 0, 0.0, &v34);
  v28 = v39;
  *(a1 + 136) = v38;
  *(a1 + 152) = v28;
  v29 = v41;
  *(a1 + 168) = v40;
  *(a1 + 184) = v29;
  v30 = v35;
  *(a1 + 72) = v34;
  *(a1 + 88) = v30;
  v31 = v37;
  *(a1 + 104) = v36;
  *(a1 + 120) = v31;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickResult::ResolveNearestToCenter(uint64_t result, uint64_t a2)
{
  if (*(result + 48))
  {
    if (a2)
    {
      v2 = result;
      if (*result)
      {
        v3 = *(result + 352);
        v4 = (v3 & 1) + v3 / 2 - 1;
        if (v4 >= 0)
        {
          v18 = *(result + 356);
          v5 = (v18 & 1) + v18 / 2 - 1;
          if ((v5 & 0x80000000) == 0)
          {
            v17 = *(result + 352);
            do
            {
              v19 = v3 - v4;
              v20 = v4;
              if (v4 < v3 - v4)
              {
                v6 = v18 - v5;
                v7 = v4;
                do
                {
                  if (v5 < v6)
                  {
                    v9 = v7 != v20 && v7 != v19 - 1;
                    v10 = v5;
                    do
                    {
                      v11 = *(v2 + 344) + v7;
                      v12 = *(v2 + 348) + v10;
                      v13 = v11 + v12 * *(v2 + 336);
                      result = pxrInternal__aapl__pxrReserved__::HdxPickResult::_IsValidHit(v2, v13);
                      if (result)
                      {
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v21);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v22);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v23);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v24);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v25);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v26);
                        pxrInternal__aapl__pxrReserved__::HdxPickResult::_ResolveHit(v2, v13, v11, v12, *(*(v2 + 48) + 4 * v13), &v21);
                      }

                      if (v10 <= v18 - v5 - 2)
                      {
                        v14 = v18 - v5 - 2;
                      }

                      else
                      {
                        v14 = v10;
                      }

                      if (v9 && v10 == v5)
                      {
                        v15 = v14;
                      }

                      else
                      {
                        v15 = v10;
                      }

                      v10 = v15 + 1;
                    }

                    while (v15 + 1 < v6);
                  }

                  ++v7;
                }

                while (v7 < v19);
              }

              v4 = v20 - 1;
              v3 = v17;
              if (v20 < 1)
              {
                break;
              }
            }

            while (v5-- > 0);
          }
        }
      }
    }
  }

  return result;
}

void sub_29AEE1F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29AEE2740(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickResult::ResolveNearestToCamera(uint64_t result, uint64_t a2)
{
  if (*(result + 48))
  {
    if (a2)
    {
      v2 = result;
      if (*result)
      {
        v3 = *(result + 356);
        if (v3 >= 1)
        {
          v4 = 0;
          v5 = 0;
          v6 = *(result + 348);
          v7 = *(result + 344);
          v8 = *(result + 352);
          v9 = -1;
          v10 = 0.0;
          v11 = v6;
          do
          {
            if (v8 >= 1)
            {
              v12 = v7;
              do
              {
                v13 = *(v2 + 336);
                result = pxrInternal__aapl__pxrReserved__::HdxPickResult::_IsValidHit(v2, v12 + v11 * v13);
                if (result && (v9 == -1 || v10 > *(*(v2 + 48) + 4 * (v12 + v11 * v13))))
                {
                  v9 = v12 + v11 * v13;
                  v10 = *(*(v2 + 48) + 4 * (v12 + v11 * v13));
                  v5 = v11;
                  v4 = v12;
                }

                ++v12;
                v7 = *(v2 + 344);
                v8 = *(v2 + 352);
              }

              while (v12 < v8 + v7);
              v6 = *(v2 + 348);
              v3 = *(v2 + 356);
            }

            ++v11;
          }

          while (v11 < v3 + v6);
          if (v9 != -1)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v15);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v16);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v17);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v18);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v19);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v20);
            v14 = v10;
            pxrInternal__aapl__pxrReserved__::HdxPickResult::_ResolveHit(v2, v9, v4, v5, v14, &v15);
          }
        }
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickResult::ResolveUnique(uint64_t result, uint64_t a2)
{
  if (*(result + 48))
  {
    if (a2)
    {
      v2 = result;
      if (*result)
      {
        v18 = 0u;
        v19 = 0u;
        v20 = 1065353216;
        v3 = *(result + 356);
        if (v3 >= 1)
        {
          v4 = 0;
          v5 = *(result + 348);
          v6 = *(result + 352);
          v7 = v5;
          do
          {
            if (v6 >= 1)
            {
              v8 = *(v2 + 344);
              do
              {
                v9 = v8 + v7 * *(v2 + 336);
                if (pxrInternal__aapl__pxrReserved__::HdxPickResult::_IsValidHit(v2, v9))
                {
                  Hash = pxrInternal__aapl__pxrReserved__::HdxPickResult::_GetHash(v2, v9);
                  v11 = Hash;
                  if (!*(&v19 + 1) || Hash != v4)
                  {
                    *&v15 = Hash;
                    *(&v15 + 1) = (v7 << 32) | v8;
                    sub_29AEE6D0C(&v18, &v15, &v15);
                    v4 = v11;
                  }
                }

                ++v8;
                v6 = *(v2 + 352);
              }

              while (v8 < v6 + *(v2 + 344));
              v5 = *(v2 + 348);
              v3 = *(v2 + 356);
            }

            v7 = (v7 + 1);
          }

          while (v7 < (v3 + v5));
          if (v19)
          {
            v12 = *(v19 + 24);
            v13 = *(v19 + 28);
            v14 = v12 + *(v2 + 336) * v13;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v15);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15 + 1);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v15 + 2);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v15 + 3);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v16);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v17);
            pxrInternal__aapl__pxrReserved__::HdxPickResult::_ResolveHit(v2, v14, v12, v13, *(*(v2 + 48) + 4 * v14), &v15);
          }
        }

        return sub_29A0EB570(&v18);
      }
    }
  }

  return result;
}

void sub_29AEE236C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_29AEE2740(&a9);
  sub_29A0EB570(&a19);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxPickResult::ResolveAll(uint64_t result, uint64_t a2)
{
  if (*(result + 48))
  {
    if (a2)
    {
      v2 = result;
      if (*result)
      {
        v3 = *(result + 356);
        if (v3 >= 1)
        {
          v4 = *(result + 348);
          v5 = *(result + 344);
          v6 = *(result + 352);
          v7 = v4;
          do
          {
            if (v6 >= 1)
            {
              v8 = v5;
              do
              {
                v9 = *(v2 + 336);
                result = pxrInternal__aapl__pxrReserved__::HdxPickResult::_IsValidHit(v2, v8 + v7 * v9);
                if (result)
                {
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v10);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v11);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v12);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v13);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v14);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v15);
                  pxrInternal__aapl__pxrReserved__::HdxPickResult::_ResolveHit(v2, v8 + v7 * v9, v8, v7, *(*(v2 + 48) + 4 * (v8 + v7 * v9)), &v10);
                }

                ++v8;
                v5 = *(v2 + 344);
                v6 = *(v2 + 352);
              }

              while (v8 < v6 + v5);
              v4 = *(v2 + 348);
              v3 = *(v2 + 356);
            }

            ++v7;
          }

          while (v7 < v3 + v4);
        }
      }
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxPickResult::~HdxPickResult(pxrInternal__aapl__pxrReserved__::HdxPickResult *this)
{
  v1 = *(this + 8);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  v1 = *(this + 8);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29AEE26F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29AEE5FF4(a1, a2);
  }

  else
  {
    sub_29AEE6124(a1, *(a1 + 8), a2);
    result = v3 + 80;
  }

  *(a1 + 8) = result;
  return result;
}

_DWORD *sub_29AEE2740(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 5);
  sub_29A1DE3A4(a1 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29AEE2918(_Unwind_Exception *a1)
{
  v2 = *(v1 + 64);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}