void pxrInternal__aapl__pxrReserved__::GfInterval::_Bound::operator!=()
{
  pxrInternal__aapl__pxrReserved__::GfInterval::_Bound::operator==();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GfInterval::_Bound::operator<(uint64_t a1, uint64_t a2)
{
  v4 = 1;
  if (*a1 >= *a2)
  {
    v3 = 0;
    if (*a1 == *a2)
    {
      v3 = 0;
      if (*(a1 + 8))
      {
        v3 = *(a2 + 8) ^ 1;
      }
    }

    v4 = v3;
  }

  return v4 & 1;
}

BOOL pxrInternal__aapl__pxrReserved__::GfInterval::_Bound::operator==(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return (*(a1 + 8) & 1) == (*(a2 + 8) & 1);
  }

  return v3;
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::GetLiteral()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_AsInt();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__.ArchMemAdvice.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.ArchFileAdvice.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.ArchMemoryProtection.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.TfAnyWeakPtr.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfAnyWeakPtr *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.TfType.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v5 = a1;
  v3 = a1;
  Overlay::__to_string(&v4, &v3, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.TfType.LegacyFlags.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.TfMallocTag.CallTree.PrintSetting.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.TfDiagnosticType.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t std.__1.map<pxrInternal__aapl__pxrReserved__.TfToken, pxrInternal__aapl__pxrReserved__.VtValue, pxrInternal__aapl__pxrReserved__.TfDictionaryLessThan, std.__1.allocator<std.__1.pair<__cxxConst<pxrInternal__aapl__pxrReserved__.TfToken>, pxrInternal__aapl__pxrReserved__.VtValue>>>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.TfEnum.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfEnum *a2)
{
  v8 = a1;
  v9 = a2;
  v6 = a1;
  v7 = a2;
  v3 = a1;
  v4 = a2;
  Overlay::__to_string(&v5, &v3, a2);
  return sub_29B0EB85C(&v5);
}

uint64_t pxrInternal__aapl__pxrReserved__.TfStopwatch.description.getter(pxrInternal__aapl__pxrReserved__ *a1, pxrInternal__aapl__pxrReserved__ *a2, pxrInternal__aapl__pxrReserved__ *a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  Overlay::__to_string(v4);
  return sub_29B0EB85C(&v5);
}

uint64_t pxrInternal__aapl__pxrReserved__.TfNotice.Key.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.TfToken.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfBBox3d.description.getter()
{
  v5 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(&v4, __dst, v1);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix4d.description.getter()
{
  v5 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(&v4, __dst, v1);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4d.description.getter(double a1, double a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  Overlay::__to_string(v5);
  return sub_29B0EB85C(&v6);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4f.description.getter(float a1, float a2, float a3, float a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  Overlay::__to_string(v5);
  return sub_29B0EB85C(&v6);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4h.description.getter(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  Overlay::__to_string();
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.pxr_half.half.description.getter(__int16 a1, const pxrInternal__aapl__pxrReserved__::pxr_half::half *a2)
{
  v5 = a1;
  v3 = a1;
  Overlay::__to_string(&v4, &v3, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec4i.description.getter(uint64_t a1, uint64_t a2)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *v3 = v7;
  v5 = a1;
  v6 = a2;
  Overlay::__to_string(v3);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3d.description.getter(double a1, double a2, double a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  Overlay::__to_string(v4);
  return sub_29B0EB85C(&v5);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3f.description.getter(float a1, float a2, float a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  Overlay::__to_string(v4);
  return sub_29B0EB85C(&v5);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3h.description.getter(uint64_t a1)
{
  v6 = a1;
  v3 = a1;
  v4 = WORD1(a1);
  v5 = WORD2(a1);
  Overlay::__to_string();
  return sub_29B0EB85C(&v2);
}

uint64_t sub_29B13C9E4()
{
  LODWORD(v2) = *v0;
  WORD2(v2) = *(v0 + 4);
  return pxrInternal__aapl__pxrReserved__.GfVec3h.description.getter(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec3i.description.getter(uint64_t a1, int a2)
{
  v8 = a1;
  v9 = a2;
  v6 = a1;
  v7 = a2;
  v3 = a1;
  v4 = a2;
  Overlay::__to_string(&v3);
  return sub_29B0EB85C(&v5);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange3d.description.getter()
{
  v5 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(&v4, __dst, v1);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange3f.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfRange3f *a2)
{
  v7 = v2;
  v4 = *v2;
  v5 = *(v2 + 2);
  Overlay::__to_string(&v6, &v4, a2);
  return sub_29B0EB85C(&v6);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfCamera.Projection.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfCamera.FOVDirection.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange1f.description.getter(float a1, float a2, uint64_t a3, const pxrInternal__aapl__pxrReserved__::GfRange1f *a4)
{
  v7 = a1;
  v8 = a2;
  *v5 = a1;
  *&v5[1] = a2;
  Overlay::__to_string(&v6, v5, a4);
  return sub_29B0EB85C(&v6);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange1d.description.getter(double a1, double a2, uint64_t a3, const pxrInternal__aapl__pxrReserved__::GfRange1d *a4)
{
  v7 = a1;
  v8 = a2;
  *v5 = a1;
  *&v5[1] = a2;
  Overlay::__to_string(&v6, v5, a4);
  return sub_29B0EB85C(&v6);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfDualQuatd.description.getter()
{
  v5 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(&v4, __dst, v1);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuatd.description.getter(double a1, double a2, double a3, double a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::GfQuatd *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  Overlay::__to_string(&v8, v7, a6);
  return sub_29B0EB85C(&v8);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfDualQuatf.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfDualQuatf *a2)
{
  v6 = v2;
  v4[0] = *v2;
  v4[1] = v2[1];
  Overlay::__to_string(v4, a2);
  return sub_29B0EB85C(&v5);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuatf.description.getter(float a1, float a2, float a3, float a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::GfQuatf *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v7.i64[0] = __PAIR64__(LODWORD(a2), LODWORD(a1));
  v7.i64[1] = __PAIR64__(LODWORD(a4), LODWORD(a3));
  Overlay::__to_string(&v7, a6);
  return sub_29B0EB85C(&v8);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfDualQuath.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfDualQuath *a2)
{
  v6 = a1;
  v7 = a2;
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v3 = v5;
  Overlay::__to_string(&v4, &v3, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuath.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfQuath *a2)
{
  v6 = a1;
  v3 = a1;
  v5 = a1;
  Overlay::__to_string(&v4, &v3, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfFrustum.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfFrustum *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfFrustum.ProjectionType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfPlane.description.getter(double a1, double a2, double a3, double a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::GfPlane *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  Overlay::__to_string(&v8, v7, a6);
  return sub_29B0EB85C(&v8);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRay.description.getter()
{
  v5 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(&v4, __dst, v1);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange2d.description.getter(double a1, double a2, double a3, double a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::GfRange2d *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  Overlay::__to_string(&v8, v7, a6);
  return sub_29B0EB85C(&v8);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2d.description.getter(double a1, double a2)
{
  v5 = a1;
  v6 = a2;
  v3[0] = a1;
  v3[1] = a2;
  Overlay::__to_string(v3);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2f.description.getter(float a1, float a2)
{
  v5 = a1;
  v6 = a2;
  v3[0] = a1;
  v3[1] = a2;
  Overlay::__to_string(v3);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2h.description.getter(int a1)
{
  v4 = a1;
  v3 = a1;
  Overlay::__to_string();
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfVec2i.description.getter(uint64_t a1)
{
  v5 = a1;
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRange2f.description.getter(float a1, float a2, float a3, float a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::GfRange2f *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  Overlay::__to_string(&v8, v7, a6);
  return sub_29B0EB85C(&v8);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRotation.description.getter(double a1, double a2, double a3, double a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::GfRotation *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  Overlay::__to_string(&v8, v7, a6);
  return sub_29B0EB85C(&v8);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfQuaternion.description.getter(double a1, double a2, double a3, double a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::GfQuaternion *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  Overlay::__to_string(&v8, v7, a6);
  return sub_29B0EB85C(&v8);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfInterval.description.getter(char a1, char a2, double a3, double a4)
{
  v10 = 0u;
  v11 = 0u;
  *&v10 = a3;
  BYTE8(v10) = a1;
  *&v11 = a4;
  BYTE8(v11) = a2;
  v5 = a3;
  v6 = a1;
  v7 = a4;
  v8 = a2;
  Overlay::__to_string(&v5);
  return sub_29B0EB85C(&v9);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfLine.description.getter()
{
  v4 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(__dst);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfLineSeg.description.getter()
{
  v4 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(__dst);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix2d.description.getter(double a1, double a2, double a3, double a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::GfMatrix2d *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  Overlay::__to_string(&v8, v7, a6);
  return sub_29B0EB85C(&v8);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix2f.description.getter(float a1, float a2, float a3, float a4, uint64_t a5, const pxrInternal__aapl__pxrReserved__::GfMatrix2f *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  Overlay::__to_string(&v8, v7, a6);
  return sub_29B0EB85C(&v8);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix3f.description.getter()
{
  v5 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(&v4, __dst, v1);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix3d.description.getter()
{
  v5 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(&v4, __dst, v1);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMatrix4f.description.getter()
{
  v5 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(&v4, __dst, v1);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfMultiInterval.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfMultiInterval *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfRect2i.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfRect2i *a2)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v3 = v7;
  v5 = a1;
  v6 = a2;
  Overlay::__to_string(&v4, &v3, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfSize2.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfSize3.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfTransform.description.getter()
{
  v5 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(&v4, __dst, v1);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.GfNumericCastFailureType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.JsValue.Type.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtDictionary.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtValue.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.TsSpline.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPath.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfSpecType.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfSpecifier.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPermission.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfVariability.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfAuthoringError.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfUnregisteredValue.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHumanReadableValue.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfHumanReadableValue *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfAssetPath.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfAssetPath *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfAttributeSpec>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfPrimSpec>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfPropertySpec>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfRelationshipSpec>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfSpec>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfVariantSetSpec>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfHandle<pxrInternal__aapl__pxrReserved__.SdfVariantSpec>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfListOpType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPathExpression.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPathExpression *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPathExpression.Op.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPredicateExpression *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnCall.Kind.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.Op.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfValueTypeName.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfValueTypeName *a2)
{
  v5 = a1;
  v3 = a1;
  Overlay::__to_string(&v4, &v3, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfAttributeSpec.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPropertySpec.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfSpec.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfMapEditProxy<pxrInternal__aapl__pxrReserved__.VtDictionary, pxrInternal__aapl__pxrReserved__.SdfIdentityMapEditProxyValuePolicy<pxrInternal__aapl__pxrReserved__.VtDictionary>>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfMapEditProxy<std.__1.map<pxrInternal__aapl__pxrReserved__.SdfPath, pxrInternal__aapl__pxrReserved__.SdfPath, std.__1.less<pxrInternal__aapl__pxrReserved__.SdfPath>, std.__1.allocator<std.__1.pair<__cxxConst<pxrInternal__aapl__pxrReserved__.SdfPath>, pxrInternal__aapl__pxrReserved__.SdfPath>>>, pxrInternal__aapl__pxrReserved__.SdfRelocatesMapProxyValuePolicy>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfLayerOffset.description.getter(double a1, double a2, uint64_t a3, const pxrInternal__aapl__pxrReserved__::SdfLayerOffset *a4)
{
  v7 = a1;
  v8 = a2;
  *v5 = a1;
  *&v5[1] = a2;
  Overlay::__to_string(&v6, v5, a4);
  return sub_29B0EB85C(&v6);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfNamespaceEdit.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfNamespaceEditDetail.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfNamespaceEditDetail.Result.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPredicateFunctionResult.Constancy.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPayload.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPrimSpec.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfPseudoRootSpec.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfReference.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfReference *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfRelationshipSpec.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfVariantSetSpec.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfVariantSpec.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0, &v2);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.NdrVersionFilter.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpArcType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpRangeType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpSite.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::PcpSite *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpLayerStackSite.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::PcpLayerStackSite *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpLayerStackIdentifier.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::PcpLayerStackIdentifier *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpDependencyType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpErrorType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpErrorInvalidConflictingRelocation.ConflictReason.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpCacheChanges.TargetType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.EditType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdPrim.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdListPosition.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdLoadPolicy.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdSchemaKind.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdTimeCode.description.getter(double a1, uint64_t a2, const pxrInternal__aapl__pxrReserved__::UsdTimeCode *a3)
{
  v6 = a1;
  v4 = a1;
  Overlay::__to_string(&v5, &v4, a3);
  return sub_29B0EB85C(&v5);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdObjType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdObject.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdStage.InitialLoadSet.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdInterpolationType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdStageLoadRules.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdStageLoadRules *a2)
{
  v5 = v2;
  Overlay::__to_string(v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdStageLoadRules.Rule.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdAttribute.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdProperty.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdProperty *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdResolveInfoSource.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdRelationship.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdRelationship *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdModelAPI.KindValidation.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.ArcTypeFilter.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.DependencyTypeFilter.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.ArcIntroducedFilter.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.HasSpecsFilter.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdStageCacheContextBlockType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdGeomXformOp.Type.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdGeomXformOp.Precision.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdGeomPointInstancer.ProtoXformInclusion.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdGeomPointInstancer.MaskApplication.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdGeomXformCommonAPI.RotationOrder.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdGeomXformCommonAPI.OpFlags.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdShadeAttributeType.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdShadeConnectionModification.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdShadeConnectableAPIBehavior.ConnectableNodeTypes.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdLuxLightListAPI.ComputeMode.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdLuxListAPI.ComputeMode.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdSkelBakeSkinningParms.DeformationFlags.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdUtilsRegisteredVariantSet.SelectionExportPolicy.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdUtilsStitchValueStatus.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdUtilsTimeCodeRange.description.getter(double a1, double a2, double a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  Overlay::__to_string(v4);
  return sub_29B0EB85C(&v5);
}

uint64_t pxrInternal__aapl__pxrReserved__.GarchGLDebugWindow.Buttons.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.GarchGLDebugWindow.ModifierKeys.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.GarchNSGLContextState.NullState.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HioFormat.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HioAddressDimension.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HioAddressMode.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HioType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HioGlslfxConfig.Role.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout.InOut.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout.Kind.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout.TextureType.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.CameraUtilConformWindowPolicy.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.PxOsdMeshTopology.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::PxOsdMeshTopology *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.PxOsdSubdivTags.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::PxOsdSubdivTags *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.PxOsdMeshTopologyValidation.Code.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.GlfSimpleLight.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GlfSimpleLight *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiAttachmentDesc.description.getter()
{
  v4 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(__dst);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiDeviceCapabilitiesBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiTextureType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiTextureUsageBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiSamplerAddressMode.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiSamplerFilter.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiMipFilter.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiBorderColor.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiSampleCount.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiAttachmentLoadOp.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiAttachmentStoreOp.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiBufferUsageBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiShaderStageBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiBindResourceType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiPolygonMode.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiCullMode.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiWinding.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiBlendOp.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiBlendFactor.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiColorMaskBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiCompareFunction.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiStencilOp.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiComponentSwizzle.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiPrimitiveType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiVertexBufferStepFunction.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiSubmitWaitType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiMemoryBarrierBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiBindingType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiInterpolationType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiSamplingType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiStorageType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiShaderTextureType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiComputeDispatch.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiFormat.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc.PatchType.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc.Spacing.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc.Ordering.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiShaderFunctionGeometryDesc.InPrimitiveType.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiShaderFunctionGeometryDesc.OutPrimitiveType.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiGraphicsCmdsDesc.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiTessellationState.PatchType.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiTessellationState.TessFactorMode.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiMetalArgumentIndex.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HgiMetalArgumentOffset.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdWrap.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdMinFilter.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdMagFilter.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdBorderColor.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdType.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdFormat.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdCompareFunction.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdStencilOp.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdBlendOp.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdBlendFactor.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdCullStyle.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdPolygonMode.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdMeshGeomStyle.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdBasisCurvesGeomStyle.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdPointsGeomStyle.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdInterpolation.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdDepthPriority.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdBufferArrayUsageHintBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdReprSelector.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::HdReprSelector *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdBasisCurvesTopology.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdTopology.description.getter()
{
  v3 = v0;
  Overlay::__to_string();
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdGeomSubset.Type.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdRprimCollection.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdDataSourceLocator.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocator *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdDataSourceLocatorSet.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdCamera.DirtyBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdCamera.Projection.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdCollectionExpressionEvaluator.MatchKind.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdCoordSys.DirtyBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdField.DirtyBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdMaterialNetwork.description.getter()
{
  v3 = v0;
  Overlay::__to_string();
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdMaterialNetworkMap.description.getter()
{
  v3 = v0;
  Overlay::__to_string();
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdMaterialNode2.description.getter()
{
  v3 = v0;
  Overlay::__to_string();
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdLight.DirtyBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdPrimOriginSchema.OriginPath.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdRenderBuffer.DirtyBits.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdGpGenerativeProcedural.AsyncState.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdStBinding.Type.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdStBinding.Location.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdStComputeQueue.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxAovInputTaskParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxBoundingBoxTaskParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxColorizeSelectionTaskParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxColorChannelTaskParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxColorCorrectionTaskParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxDrawTargetTaskParams.description.getter()
{
  v4 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(__dst);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxRenderTaskParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxOitResolveTaskParams.description.getter(__int16 a1)
{
  v5 = a1;
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxPickTaskParams.description.getter(uint64_t a1)
{
  v7 = a1;
  v5 = a1;
  v6 = BYTE4(a1);
  v2 = a1;
  v3 = BYTE4(a1);
  Overlay::__to_string(&v2);
  return sub_29B0EB85C(&v4);
}

uint64_t sub_29B143088()
{
  LODWORD(v2) = *v0;
  BYTE4(v2) = *(v0 + 4);
  return pxrInternal__aapl__pxrReserved__.HdxPickTaskParams.description.getter(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxPickHit.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::HdxPickHit *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxPickTaskContextParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxPickFromRenderBufferTaskParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxPresentTaskParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxSelectionTaskParams.description.getter()
{
  v4 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(__dst);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxShadowTaskParams.description.getter()
{
  v4 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  Overlay::__to_string(__dst);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxSimpleLightTaskParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxShadowParams.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxShaderInputs.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.HdxVisualizeAovTaskParams.description.getter(uint64_t a1, const pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTaskParams *a2)
{
  v5 = v2;
  Overlay::__to_string(&v4, v2, a2);
  return sub_29B0EB85C(&v4);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdImagingPropertyInvalidationType.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdImagingPrimAdapter.PopulationMode.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdImagingGLDrawMode.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdImagingGLCullStyle.description.getter(int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdImagingGLRendererSetting.Type.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec4i>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec3i>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec2i>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec4h>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec3h>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec2h>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec4f>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec3f>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec2f>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec4d>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec3d>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfVec2d>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix4f>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix3f>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix2f>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix4d>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix3d>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfMatrix2d>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange3f>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange3d>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange2f>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange2d>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange1f>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRange1d>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfInterval>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfRect2i>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfQuath>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfQuatf>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfQuatd>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfQuaternion>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfDualQuath>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfDualQuatf>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.GfDualQuatd>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CBool>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CChar>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CUnsignedChar>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CShort>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CUnsignedShort>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CInt>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CUnsignedInt>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CLongLong>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CUnsignedLongLong>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CDouble>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<CFloat>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.pxr_half.half>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.VtArray<pxrInternal__aapl__pxrReserved__.TfToken>.description.getter()
{
  v3 = v0;
  Overlay::__to_string(v0);
  return sub_29B0EB85C(&v2);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfLengthUnit.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfAngularUnit.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t pxrInternal__aapl__pxrReserved__.SdfDimensionlessUnit.description.getter(unsigned int a1)
{
  v4 = a1;
  v2 = a1;
  Overlay::__to_string(&v2, &v3);
  return sub_29B0EB85C(&v3);
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfDimensionlessUnit()
{
  v4 = qword_2A14FC860;
  if (!qword_2A14FC860)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC860);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAngularUnit()
{
  v4 = qword_2A14FC868;
  if (!qword_2A14FC868)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC868);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfLengthUnit()
{
  v4 = qword_2A14FC870;
  if (!qword_2A14FC870)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC870);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuatd_()
{
  v4 = qword_2A14FC878;
  if (!qword_2A14FC878)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC878);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuatf_()
{
  v4 = qword_2A14FC880;
  if (!qword_2A14FC880)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC880);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfDualQuath_()
{
  v4 = qword_2A14FC888;
  if (!qword_2A14FC888)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC888);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdImagingGLRendererSetting.Type()
{
  v4 = qword_2A14FC890;
  if (!qword_2A14FC890)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC890);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B145318(uint64_t a1, uint64_t a2)
{
  sub_29B06DC10(a1);
  sub_29B1452E0(a1, a2);
  sub_29B06DC10(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdImagingGLRendererSetting()
{
  v4 = qword_2A14FC898;
  if (!qword_2A14FC898)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC898);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdImagingGLCullStyle()
{
  v4 = qword_2A14FC8A0;
  if (!qword_2A14FC8A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8A0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdImagingGLDrawMode()
{
  v4 = qword_2A14FC8A8;
  if (!qword_2A14FC8A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8A8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdImagingPrimAdapter.PopulationMode()
{
  v4 = qword_2A14FC8B0;
  if (!qword_2A14FC8B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8B0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdImagingPrimAdapter()
{
  v4 = qword_2A14FC8B8;
  if (!qword_2A14FC8B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8B8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdImagingPropertyInvalidationType()
{
  v4 = qword_2A14FC8C0;
  if (!qword_2A14FC8C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8C0);
      return v1;
    }
  }

  return v4;
}

void *sub_29B145928(void *a1, void *a2)
{
  sub_29B12EA40(a1);
  sub_29B1458F0(a1, a2);
  sub_29B12EA40(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxVisualizeAovTaskParams()
{
  v4 = qword_2A14FC8C8;
  if (!qword_2A14FC8C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8C8);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_29B145B5C(uint64_t *a1, uint64_t *a2)
{
  sub_29B145A18(a1);
  sub_29B145B24(a1, a2);
  sub_29B145A18(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxShaderInputs()
{
  v4 = qword_2A14FC8D0;
  if (!qword_2A14FC8D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8D0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B145C94(uint64_t a1, uint64_t a2)
{
  sub_29B0C51A0(a1);
  sub_29B145C5C(a1, a2);
  return a1;
}

uint64_t sub_29B145D38(uint64_t a1, uint64_t a2)
{
  sub_29B0C51A0(a1);
  sub_29B145D00(a1, a2);
  sub_29B0C51A0(a2);
  return a1;
}

uint64_t sub_29B145D78(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 36) & 0xFE) != 0)
      {
        v3 = (*(a1 + 36) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B145E9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 36) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxShadowParams()
{
  v4 = qword_2A14FC8D8;
  if (!qword_2A14FC8D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8D8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B146244(uint64_t a1, uint64_t a2)
{
  sub_29AEBC888(a1);
  sub_29B14620C(a1, a2);
  sub_29AEBC888(a2);
  return a1;
}

uint64_t sub_29B146284(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 208))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 56) & 0xFE) != 0)
      {
        v3 = (*(a1 + 56) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B1463A8(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 26;
  if (a2 > 0xFE)
  {
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[25] = 0;
    result[24] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxSimpleLightTaskParams()
{
  v4 = qword_2A14FC8E0;
  if (!qword_2A14FC8E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8E0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B146684(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 60))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 32) & 0xFE) != 0)
      {
        v3 = (*(a1 + 32) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B1467A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0xFE)
    {
      *(result + 60) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 60) = 0;
    }

    if (a2)
    {
      *(result + 32) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxShadowTaskParams()
{
  v4 = qword_2A14FC8E8;
  if (!qword_2A14FC8E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8E8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B146A68(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[40])
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*a1 & 0xFE) != 0)
      {
        v3 = (*a1 + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B146B8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxSelectionTaskParams()
{
  v4 = qword_2A14FC8F0;
  if (!qword_2A14FC8F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8F0);
      return v1;
    }
  }

  return v4;
}

void *sub_29B146F64(void *a1, void *a2)
{
  sub_29B146E20(a1);
  sub_29B146F2C(a1, a2);
  sub_29B146E20(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxPresentTaskParams()
{
  v4 = qword_2A14FC8F8;
  if (!qword_2A14FC8F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC8F8);
      return v1;
    }
  }

  return v4;
}

_DWORD *sub_29B1470E4(_DWORD *a1, _DWORD *a2)
{
  sub_29B147054(a1);
  sub_29B1470AC(a1, a2);
  return a1;
}

_DWORD *sub_29B147188(_DWORD *a1, _DWORD *a2)
{
  sub_29B147054(a1);
  sub_29B147150(a1, a2);
  sub_29B147054(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxPickFromRenderBufferTaskParams()
{
  v4 = qword_2A14FC900;
  if (!qword_2A14FC900)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC900);
      return v1;
    }
  }

  return v4;
}

void *sub_29B147394(void *a1, void *a2)
{
  sub_29AEDDAE0(a1);
  sub_29B14735C(a1, a2);
  sub_29AEDDAE0(a2);
  return a1;
}

uint64_t sub_29B1473DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 472))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 32) & 0xFE) != 0)
      {
        v3 = (*(a1 + 32) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B147500(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 59;
  if (a2 > 0xFE)
  {
    result[55] = 0;
    result[54] = 0;
    result[53] = 0;
    result[52] = 0;
    result[51] = 0;
    result[50] = 0;
    result[49] = 0;
    result[48] = 0;
    result[47] = 0;
    result[46] = 0;
    result[45] = 0;
    result[44] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[57] = 0;
    result[56] = 0;
    result[58] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxPickTaskContextParams()
{
  v4 = qword_2A14FC908;
  if (!qword_2A14FC908)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC908);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B147830(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 8))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B147978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 > 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 4) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxPickTaskParams()
{
  v4 = qword_2A14FC910;
  if (!qword_2A14FC910)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC910);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B147BEC(unsigned __int16 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v8 = ((a2 + 65281) >> 16) + 1;
    v9 = 1;
    if (v8 >= 0x100)
    {
      if (v8 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v9 = v2;
    }

    if (v9 == 1)
    {
      v7 = *(a1 + 2);
    }

    else
    {
      v7 = v9 == 2 ? a1[1] : *(a1 + 1);
    }

    if (v7)
    {
      v6 = (*a1 | ((v7 - 1) << 16)) + 254;
    }

    else
    {
LABEL_15:
      v4 = *a1;
      v5 = -1;
      if ((v4 & 0xFFFFFFFE) != 0)
      {
        v5 = v4 & 1 | ((v4 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v6 = v5;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_29B147D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 65281) >> 16) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = v4;
      }

      else if (v7 == 2)
      {
        *(result + 2) = v4;
      }

      else
      {
        *(result + 2) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = 0;
      }

      else if (v7 == 2)
      {
        *(result + 2) = 0;
      }

      else
      {
        *(result + 2) = 0;
      }
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxOitResolveTaskParams()
{
  v4 = qword_2A14FC918;
  if (!qword_2A14FC918)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC918);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B148164(uint64_t a1, uint64_t a2)
{
  sub_29AEBC5BC(a1);
  sub_29B14812C(a1, a2);
  sub_29AEBC5BC(a2);
  return a1;
}

uint64_t sub_29B1481A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 336))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 52) & 0xFE) != 0)
      {
        v3 = (*(a1 + 52) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B1482C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 336);
  if (a2 > 0xFE)
  {
    *(result + 248) = 0;
    *(result + 240) = 0;
    *(result + 232) = 0;
    *(result + 224) = 0;
    *(result + 216) = 0;
    *(result + 208) = 0;
    *(result + 200) = 0;
    *(result + 192) = 0;
    *(result + 184) = 0;
    *(result + 176) = 0;
    *(result + 168) = 0;
    *(result + 160) = 0;
    *(result + 152) = 0;
    *(result + 144) = 0;
    *(result + 136) = 0;
    *(result + 128) = 0;
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 312) = 0;
    *(result + 304) = 0;
    *(result + 296) = 0;
    *(result + 288) = 0;
    *(result + 280) = 0;
    *(result + 272) = 0;
    *(result + 264) = 0;
    *(result + 256) = 0;
    *(result + 328) = 0;
    *(result + 320) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 52) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxRenderTaskParams()
{
  v4 = qword_2A14FC920;
  if (!qword_2A14FC920)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC920);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B1485B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 64))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B1486FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0xFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxDrawTargetTaskParams()
{
  v4 = qword_2A14FC928;
  if (!qword_2A14FC928)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC928);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B148A04(uint64_t a1, uint64_t *a2)
{
  sub_29AECB604(a1);
  sub_29B1489CC(a1, a2);
  return a1;
}

uint64_t sub_29B148AB0(uint64_t a1, uint64_t a2)
{
  sub_29AECB604(a1);
  sub_29B148A78(a1, a2);
  sub_29AECB604(a2);
  return a1;
}

uint64_t sub_29B148AF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 120))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B148BD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    if (a3)
    {
      *(result + 120) = 1;
    }
  }

  else if (a3)
  {
    *(result + 120) = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxColorCorrectionTaskParams()
{
  v4 = qword_2A14FC930;
  if (!qword_2A14FC930)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC930);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxColorChannelTaskParams()
{
  v4 = qword_2A14FC938;
  if (!qword_2A14FC938)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC938);
      return v1;
    }
  }

  return v4;
}

_DWORD *sub_29B148F54(_DWORD *a1, _DWORD *a2)
{
  sub_29AEFE3B8(a1);
  sub_29B148F1C(a1, a2);
  return a1;
}

_DWORD *sub_29B148FF8(_DWORD *a1, _DWORD *a2)
{
  sub_29AEFE3B8(a1);
  sub_29B148FC0(a1, a2);
  sub_29AEFE3B8(a2);
  return a1;
}

uint64_t sub_29B149038(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[68])
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*a1 & 0xFE) != 0)
      {
        v3 = (*a1 + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B14915C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0xFE)
    {
      *(result + 68) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 68) = 0;
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxColorizeSelectionTaskParams()
{
  v4 = qword_2A14FC940;
  if (!qword_2A14FC940)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC940);
      return v1;
    }
  }

  return v4;
}

__n128 *sub_29B14954C(__n128 *a1, __n128 *a2)
{
  sub_29B149408(a1);
  sub_29B149514(a1, a2);
  sub_29B149408(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxBoundingBoxTaskParams()
{
  v4 = qword_2A14FC948;
  if (!qword_2A14FC948)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC948);
      return v1;
    }
  }

  return v4;
}

_DWORD *sub_29B14969C(_DWORD *a1, _DWORD *a2)
{
  sub_29AEC4154(a1);
  sub_29B149664(a1, a2);
  return a1;
}

_DWORD *sub_29B149740(_DWORD *a1, _DWORD *a2)
{
  sub_29AEC4154(a1);
  sub_29B149708(a1, a2);
  sub_29AEC4154(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdxAovInputTaskParams()
{
  v4 = qword_2A14FC950;
  if (!qword_2A14FC950)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC950);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStComputeQueue()
{
  v4 = qword_2A14FC958;
  if (!qword_2A14FC958)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC958);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBinding.Location()
{
  v4 = qword_2A14FC960;
  if (!qword_2A14FC960)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC960);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBinding()
{
  v4 = qword_2A14FC968;
  if (!qword_2A14FC968)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC968);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBinding.Type()
{
  v4 = qword_2A14FC970;
  if (!qword_2A14FC970)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC970);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdGpGenerativeProcedural.AsyncState()
{
  v4 = qword_2A14FC978;
  if (!qword_2A14FC978)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC978);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdGpGenerativeProcedural()
{
  v4 = qword_2A14FC980;
  if (!qword_2A14FC980)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC980);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderBuffer.DirtyBits()
{
  v4 = qword_2A14FC988;
  if (!qword_2A14FC988)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC988);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderBuffer()
{
  v4 = qword_2A14FC990;
  if (!qword_2A14FC990)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC990);
      return v1;
    }
  }

  return v4;
}

_DWORD *sub_29B149FA4(_DWORD *a1, _DWORD *a2)
{
  sub_29AF851FC(a1);
  sub_29B149F6C(a1, a2);
  return a1;
}

_DWORD *sub_29B14A048(_DWORD *a1, _DWORD *a2)
{
  sub_29AF851FC(a1);
  sub_29B14A010(a1, a2);
  sub_29AF851FC(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdPrimOriginSchema.OriginPath()
{
  v4 = qword_2A14FC998;
  if (!qword_2A14FC998)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC998);
      return v1;
    }
  }

  return v4;
}

void *sub_29B14A1C8(void *a1, void *a2)
{
  sub_29B14A138(a1);
  sub_29B14A190(a1, a2);
  return a1;
}

void *sub_29B14A26C(void *a1, void *a2)
{
  sub_29B14A138(a1);
  sub_29B14A234(a1, a2);
  sub_29B14A138(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdPrimOriginSchema()
{
  v4 = qword_2A14FC9A0;
  if (!qword_2A14FC9A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9A0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdLight.DirtyBits()
{
  v4 = qword_2A14FC9A8;
  if (!qword_2A14FC9A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9A8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdLight()
{
  v4 = qword_2A14FC9B0;
  if (!qword_2A14FC9B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9B0);
      return v1;
    }
  }

  return v4;
}

void *sub_29B14A6C4(void *a1, void *a2)
{
  sub_29ABF2FA4(a1);
  sub_29B14A68C(a1, a2);
  sub_29ABF2FA4(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialNode2()
{
  v4 = qword_2A14FC9B8;
  if (!qword_2A14FC9B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9B8);
      return v1;
    }
  }

  return v4;
}

void *sub_29B14A8C8(void *a1, void *a2)
{
  sub_29ABE8884(a1);
  sub_29B14A890(a1, a2);
  sub_29ABE8884(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialNetworkMap()
{
  v4 = qword_2A14FC9C0;
  if (!qword_2A14FC9C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9C0);
      return v1;
    }
  }

  return v4;
}

void **sub_29B14AACC(void **a1, void **a2)
{
  sub_29AF00CFC(a1);
  sub_29B14AA94(a1, a2);
  sub_29AF00CFC(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialNetwork()
{
  v4 = qword_2A14FC9C8;
  if (!qword_2A14FC9C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9C8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdField.DirtyBits()
{
  v4 = qword_2A14FC9D0;
  if (!qword_2A14FC9D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9D0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdField()
{
  v4 = qword_2A14FC9D8;
  if (!qword_2A14FC9D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9D8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCoordSys.DirtyBits()
{
  v4 = qword_2A14FC9E0;
  if (!qword_2A14FC9E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9E0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCoordSys()
{
  v4 = qword_2A14FC9E8;
  if (!qword_2A14FC9E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9E8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCollectionExpressionEvaluator.MatchKind()
{
  v4 = qword_2A14FC9F0;
  if (!qword_2A14FC9F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9F0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCollectionExpressionEvaluator()
{
  v4 = qword_2A14FC9F8;
  if (!qword_2A14FC9F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC9F8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCamera.Projection()
{
  v4 = qword_2A14FCA00;
  if (!qword_2A14FCA00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA00);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B14B4D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 320))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 208) & 0xFE) != 0)
      {
        v3 = (*(a1 + 208) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B14B5F8(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 40;
  if (a2 > 0xFE)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 208) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCamera()
{
  v4 = qword_2A14FCA08;
  if (!qword_2A14FCA08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA08);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCamera.DirtyBits()
{
  v4 = qword_2A14FCA10;
  if (!qword_2A14FCA10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA10);
      return v1;
    }
  }

  return v4;
}

_DWORD *sub_29B14B9F4(_DWORD *a1, uint64_t a2)
{
  sub_29ABE62AC();
  sub_29B14B9BC(a1, a2);
  return a1;
}

uint64_t sub_29B14BA34(uint64_t a1, uint64_t a2)
{
  sub_29B14BA70(a1, a2);
  sub_29ABE62AC(a2);
  return a1;
}

uint64_t sub_29B14BAA8(uint64_t a1, uint64_t a2)
{
  sub_29ABE62AC(a1);
  sub_29B14BA70(a1, a2);
  sub_29ABE62AC(a2);
  return a1;
}

uint64_t sub_29B14BAF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 456))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *sub_29B14BBD0(void *result, int a2, int a3)
{
  v3 = result + 57;
  if (a2)
  {
    result[55] = 0;
    result[54] = 0;
    result[53] = 0;
    result[52] = 0;
    result[51] = 0;
    result[50] = 0;
    result[49] = 0;
    result[48] = 0;
    result[47] = 0;
    result[46] = 0;
    result[45] = 0;
    result[44] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[56] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdDataSourceLocatorSet()
{
  v4 = qword_2A14FCA18;
  if (!qword_2A14FCA18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA18);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::HdRprimCollection *sub_29B14BF28(pxrInternal__aapl__pxrReserved__::HdRprimCollection *a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(a1);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::HdRprimCollection *sub_29B14BFA4(pxrInternal__aapl__pxrReserved__::HdRprimCollection *a1, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(a1);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(a1, a2);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(a2);
  return a1;
}

uint64_t sub_29B14BFEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 104))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 40) & 0xFE) != 0)
      {
        v3 = (*(a1 + 40) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B14C110(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    if (a3 > 0xFE)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRprimCollection()
{
  v4 = qword_2A14FCA20;
  if (!qword_2A14FCA20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA20);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdGeomSubset.Type()
{
  v4 = qword_2A14FCA28;
  if (!qword_2A14FCA28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA28);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdGeomSubset()
{
  v4 = qword_2A14FCA30;
  if (!qword_2A14FCA30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA30);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdTopology()
{
  v4 = qword_2A14FCA38;
  if (!qword_2A14FCA38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA38);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *sub_29B14C870(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a1, const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a2)
{
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(a1);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *sub_29B14C8EC(pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a1, const pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology *a2)
{
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(a1);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::HdBasisCurvesTopology(a1, a2);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(a2);
  return a1;
}

uint64_t sub_29B14C934(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 200))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *sub_29B14CA14(void *result, int a2, int a3)
{
  v3 = result + 25;
  if (a2)
  {
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[24] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBasisCurvesTopology()
{
  v4 = qword_2A14FCA40;
  if (!qword_2A14FCA40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA40);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBufferArrayUsageHintBits()
{
  v4 = qword_2A14FCA48;
  if (!qword_2A14FCA48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA48);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdDepthPriority()
{
  v4 = qword_2A14FCA50;
  if (!qword_2A14FCA50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA50);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdInterpolation()
{
  v4 = qword_2A14FCA58;
  if (!qword_2A14FCA58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA58);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdPointsGeomStyle()
{
  v4 = qword_2A14FCA60;
  if (!qword_2A14FCA60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA60);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBasisCurvesGeomStyle()
{
  v4 = qword_2A14FCA68;
  if (!qword_2A14FCA68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA68);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMeshGeomStyle()
{
  v4 = qword_2A14FCA70;
  if (!qword_2A14FCA70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA70);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdPolygonMode()
{
  v4 = qword_2A14FCA78;
  if (!qword_2A14FCA78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA78);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCullStyle()
{
  v4 = qword_2A14FCA80;
  if (!qword_2A14FCA80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA80);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBlendFactor()
{
  v4 = qword_2A14FCA88;
  if (!qword_2A14FCA88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA88);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBlendOp()
{
  v4 = qword_2A14FCA90;
  if (!qword_2A14FCA90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA90);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStencilOp()
{
  v4 = qword_2A14FCA98;
  if (!qword_2A14FCA98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCA98);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdCompareFunction()
{
  v4 = qword_2A14FCAA0;
  if (!qword_2A14FCAA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAA0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdFormat()
{
  v4 = qword_2A14FCAA8;
  if (!qword_2A14FCAA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAA8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdBorderColor()
{
  v4 = qword_2A14FCAB0;
  if (!qword_2A14FCAB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAB0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMagFilter()
{
  v4 = qword_2A14FCAB8;
  if (!qword_2A14FCAB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAB8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMinFilter()
{
  v4 = qword_2A14FCAC0;
  if (!qword_2A14FCAC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAC0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdWrap()
{
  v4 = qword_2A14FCAC8;
  if (!qword_2A14FCAC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAC8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderPassAovBinding()
{
  v4 = qword_2A14FCAD0;
  if (!qword_2A14FCAD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAD0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiMetalArgumentOffset()
{
  v4 = qword_2A14FCAD8;
  if (!qword_2A14FCAD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAD8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiMetalArgumentIndex()
{
  v4 = qword_2A14FCAE0;
  if (!qword_2A14FCAE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAE0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTessellationState.TessFactorMode()
{
  v4 = qword_2A14FCAE8;
  if (!qword_2A14FCAE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAE8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTessellationState()
{
  v4 = qword_2A14FCAF0;
  if (!qword_2A14FCAF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAF0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTessellationState.PatchType()
{
  v4 = qword_2A14FCAF8;
  if (!qword_2A14FCAF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCAF8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B14DCF4(uint64_t a1, uint64_t a2)
{
  sub_29AB905FC(a1);
  sub_29B14DCBC(a1, a2);
  sub_29AB905FC(a2);
  return a1;
}

uint64_t sub_29B14DD34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 184))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 60) & 0xFE) != 0)
      {
        v3 = (*(a1 + 60) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B14DE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 184);
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 168) = 0;
    *(result + 160) = 0;
    *(result + 152) = 0;
    *(result + 144) = 0;
    *(result + 136) = 0;
    *(result + 128) = 0;
    *(result + 176) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 60) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiGraphicsCmdsDesc()
{
  v4 = qword_2A14FCB00;
  if (!qword_2A14FCB00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB00);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionGeometryDesc.OutPrimitiveType()
{
  v4 = qword_2A14FCB08;
  if (!qword_2A14FCB08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB08);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B14E240(uint64_t a1, uint64_t a2)
{
  sub_29B14E1A8(a1);
  sub_29B14E208(a1, a2);
  return a1;
}

void *sub_29B14E2EC(void *a1, void *a2)
{
  sub_29B14E1A8(a1);
  sub_29B14E2B4(a1, a2);
  sub_29B14E1A8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionGeometryDesc()
{
  v4 = qword_2A14FCB10;
  if (!qword_2A14FCB10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB10);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionGeometryDesc.InPrimitiveType()
{
  v4 = qword_2A14FCB18;
  if (!qword_2A14FCB18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB18);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc.Ordering()
{
  v4 = qword_2A14FCB20;
  if (!qword_2A14FCB20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB20);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B14E574(uint64_t a1, uint64_t a2)
{
  sub_29A4B291C(a1);
  sub_29B14E53C(a1, a2);
  return a1;
}

uint64_t sub_29B14E620(uint64_t a1, uint64_t a2)
{
  sub_29A4B291C(a1);
  sub_29B14E5E8(a1, a2);
  sub_29A4B291C(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc()
{
  v4 = qword_2A14FCB28;
  if (!qword_2A14FCB28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB28);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc.Spacing()
{
  v4 = qword_2A14FCB30;
  if (!qword_2A14FCB30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB30);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTessellationDesc.PatchType()
{
  v4 = qword_2A14FCB38;
  if (!qword_2A14FCB38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB38);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiFormat()
{
  v4 = qword_2A14FCB40;
  if (!qword_2A14FCB40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB40);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComputeDispatch()
{
  v4 = qword_2A14FCB48;
  if (!qword_2A14FCB48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB48);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderTextureType()
{
  v4 = qword_2A14FCB50;
  if (!qword_2A14FCB50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB50);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiStorageType()
{
  v4 = qword_2A14FCB58;
  if (!qword_2A14FCB58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB58);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSamplingType()
{
  v4 = qword_2A14FCB60;
  if (!qword_2A14FCB60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB60);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiInterpolationType()
{
  v4 = qword_2A14FCB68;
  if (!qword_2A14FCB68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB68);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBindingType()
{
  v4 = qword_2A14FCB70;
  if (!qword_2A14FCB70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB70);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiMemoryBarrierBits()
{
  v4 = qword_2A14FCB78;
  if (!qword_2A14FCB78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB78);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSubmitWaitType()
{
  v4 = qword_2A14FCB80;
  if (!qword_2A14FCB80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB80);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiVertexBufferStepFunction()
{
  v4 = qword_2A14FCB88;
  if (!qword_2A14FCB88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB88);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiPrimitiveType()
{
  v4 = qword_2A14FCB90;
  if (!qword_2A14FCB90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB90);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComponentSwizzle()
{
  v4 = qword_2A14FCB98;
  if (!qword_2A14FCB98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCB98);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiStencilOp()
{
  v4 = qword_2A14FCBA0;
  if (!qword_2A14FCBA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBA0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiCompareFunction()
{
  v4 = qword_2A14FCBA8;
  if (!qword_2A14FCBA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBA8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiColorMaskBits()
{
  v4 = qword_2A14FCBB0;
  if (!qword_2A14FCBB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBB0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBlendFactor()
{
  v4 = qword_2A14FCBB8;
  if (!qword_2A14FCBB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBB8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBlendOp()
{
  v4 = qword_2A14FCBC0;
  if (!qword_2A14FCBC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBC0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiWinding()
{
  v4 = qword_2A14FCBC8;
  if (!qword_2A14FCBC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBC8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiCullMode()
{
  v4 = qword_2A14FCBD0;
  if (!qword_2A14FCBD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBD0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiPolygonMode()
{
  v4 = qword_2A14FCBD8;
  if (!qword_2A14FCBD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBD8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBindResourceType()
{
  v4 = qword_2A14FCBE0;
  if (!qword_2A14FCBE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBE0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderStageBits()
{
  v4 = qword_2A14FCBE8;
  if (!qword_2A14FCBE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBE8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBufferUsageBits()
{
  v4 = qword_2A14FCBF0;
  if (!qword_2A14FCBF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBF0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiAttachmentStoreOp()
{
  v4 = qword_2A14FCBF8;
  if (!qword_2A14FCBF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCBF8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiAttachmentLoadOp()
{
  v4 = qword_2A14FCC00;
  if (!qword_2A14FCC00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC00);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSampleCount()
{
  v4 = qword_2A14FCC08;
  if (!qword_2A14FCC08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC08);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBorderColor()
{
  v4 = qword_2A14FCC10;
  if (!qword_2A14FCC10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC10);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiMipFilter()
{
  v4 = qword_2A14FCC18;
  if (!qword_2A14FCC18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC18);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSamplerFilter()
{
  v4 = qword_2A14FCC20;
  if (!qword_2A14FCC20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC20);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSamplerAddressMode()
{
  v4 = qword_2A14FCC28;
  if (!qword_2A14FCC28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC28);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTextureUsageBits()
{
  v4 = qword_2A14FCC30;
  if (!qword_2A14FCC30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC30);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTextureType()
{
  v4 = qword_2A14FCC38;
  if (!qword_2A14FCC38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC38);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiDeviceCapabilitiesBits()
{
  v4 = qword_2A14FCC40;
  if (!qword_2A14FCC40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC40);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B14FBF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 80))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 36) & 0xFE) != 0)
      {
        v3 = (*(a1 + 36) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B14FD14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0xFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 36) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiAttachmentDesc()
{
  v4 = qword_2A14FCC48;
  if (!qword_2A14FCC48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC48);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B1500E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 408))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 96) & 0xFE) != 0)
      {
        v3 = (*(a1 + 96) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B15020C(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 51;
  if (a2 > 0xFE)
  {
    result[47] = 0;
    result[46] = 0;
    result[45] = 0;
    result[44] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[49] = 0;
    result[48] = 0;
    result[50] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GlfSimpleLight()
{
  v4 = qword_2A14FCC50;
  if (!qword_2A14FCC50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC50);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PxOsdMeshTopologyValidation.Code()
{
  v4 = qword_2A14FCC58;
  if (!qword_2A14FCC58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC58);
      return v1;
    }
  }

  return v4;
}

void ***sub_29B150664(void ***a1, void *a2)
{
  sub_29B1505CC(a1);
  sub_29B15062C(a1, a2);
  return a1;
}

void ***sub_29B150710(void ***a1, uint64_t *a2)
{
  sub_29B1505CC(a1);
  sub_29B1506D8(a1, a2);
  sub_29B1505CC(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PxOsdMeshTopologyValidation()
{
  v4 = qword_2A14FCC60;
  if (!qword_2A14FCC60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC60);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B150994(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 232))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *sub_29B150A74(void *result, int a2, int a3)
{
  v3 = result + 29;
  if (a2)
  {
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[28] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PxOsdSubdivTags()
{
  v4 = qword_2A14FCC68;
  if (!qword_2A14FCC68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC68);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B150D94(uint64_t a1, uint64_t *a2)
{
  sub_29AD31450();
  sub_29B150D5C(a1, a2);
  return a1;
}

uint64_t sub_29B150E90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 376))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *sub_29B150F70(void *result, int a2, int a3)
{
  v3 = result + 47;
  if (a2)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[45] = 0;
    result[44] = 0;
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
    result[39] = 0;
    result[38] = 0;
    result[37] = 0;
    result[36] = 0;
    result[35] = 0;
    result[34] = 0;
    result[33] = 0;
    result[32] = 0;
    result[46] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PxOsdMeshTopology()
{
  v4 = qword_2A14FCC70;
  if (!qword_2A14FCC70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC70);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.CameraUtilConformWindowPolicy()
{
  v4 = qword_2A14FCC78;
  if (!qword_2A14FCC78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC78);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout.TextureType()
{
  v4 = qword_2A14FCC80;
  if (!qword_2A14FCC80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC80);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout *sub_29B1513E0(pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout *a1)
{
  pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout::~HioGlslfxResourceLayout(a1);
  sub_29B1513C8();
  return a1;
}

pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout *sub_29B15144C(pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout *a1, pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout *a2)
{
  pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout::~HioGlslfxResourceLayout(a1);
  sub_29B1513C8();
  pxrInternal__aapl__pxrReserved__::HioGlslfxResourceLayout::~HioGlslfxResourceLayout(a2);
  return a1;
}

uint64_t sub_29B15148C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = ((a2 + 255) >> 8) + 1;
    v7 = 1;
    if (v6 >= 0x100)
    {
      if (v6 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v7 = v2;
    }

    if (v7 == 1)
    {
      v5 = a1[1];
    }

    else if (v7 == 2)
    {
      v5 = *(a1 + 1);
    }

    else
    {
      v5 = *(a1 + 1);
    }

    if (v5)
    {
      v4 = *a1 | ((v5 - 1) << 8);
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_29B1515E4(_BYTE *result, int a2, int a3)
{
  v7 = 0;
  if (a3)
  {
    v5 = ((a3 + 255) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2)
  {
    v4 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      result[1] = 0;
    }

    else if (v7 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout()
{
  v4 = qword_2A14FCC88;
  if (!qword_2A14FCC88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC88);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout.Kind()
{
  v4 = qword_2A14FCC90;
  if (!qword_2A14FCC90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC90);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxResourceLayout.InOut()
{
  v4 = qword_2A14FCC98;
  if (!qword_2A14FCC98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCC98);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxConfig.Role()
{
  v4 = qword_2A14FCCA0;
  if (!qword_2A14FCCA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCA0);
      return v1;
    }
  }

  return v4;
}

void *sub_29B151B88(void *a1, void *a2)
{
  sub_29B151A44(a1);
  sub_29B151B50(a1, a2);
  sub_29B151A44(a2);
  return a1;
}

uint64_t sub_29B151BC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 112))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B151CA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    if (a3)
    {
      *(result + 112) = 1;
    }
  }

  else if (a3)
  {
    *(result + 112) = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioGlslfxConfig()
{
  v4 = qword_2A14FCCA8;
  if (!qword_2A14FCCA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCA8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioType()
{
  v4 = qword_2A14FCCB0;
  if (!qword_2A14FCCB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCB0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioAddressMode()
{
  v4 = qword_2A14FCCB8;
  if (!qword_2A14FCCB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCB8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioAddressDimension()
{
  v4 = qword_2A14FCCC0;
  if (!qword_2A14FCCC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCC0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HioFormat()
{
  v4 = qword_2A14FCCC8;
  if (!qword_2A14FCCC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCC8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GarchNSGLContextState.NullState()
{
  v4 = qword_2A14FCCD0;
  if (!qword_2A14FCCD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCD0);
      return v1;
    }
  }

  return v4;
}

void *sub_29B15227C(void *a1, void *a2)
{
  sub_29B0C51A0(a1);
  sub_29B152244(a1, a2);
  sub_29B0C51A0(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GarchNSGLContextState()
{
  v4 = qword_2A14FCCD8;
  if (!qword_2A14FCCD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCD8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GarchGLDebugWindow.ModifierKeys()
{
  v4 = qword_2A14FCCE0;
  if (!qword_2A14FCCE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCE0);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *sub_29B15246C(pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::~GarchGLDebugWindow(a1);
  sub_29B152434(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *sub_29B1524E8(pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *a1, pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *a2)
{
  pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::~GarchGLDebugWindow(a1);
  sub_29B152434(a1, a2);
  pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::~GarchGLDebugWindow(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GarchGLDebugWindow()
{
  v4 = qword_2A14FCCE8;
  if (!qword_2A14FCCE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCE8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GarchGLDebugWindow.Buttons()
{
  v4 = qword_2A14FCCF0;
  if (!qword_2A14FCCF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCF0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsTimeCodeRange()
{
  v4 = qword_2A14FCCF8;
  if (!qword_2A14FCCF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCCF8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsStitchValueStatus()
{
  v4 = qword_2A14FCD00;
  if (!qword_2A14FCD00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD00);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsRegisteredVariantSet.SelectionExportPolicy()
{
  v4 = qword_2A14FCD08;
  if (!qword_2A14FCD08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD08);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B1528A8(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B152870(a1, a2);
  return a1;
}

std::string *sub_29B152924(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B152870(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsRegisteredVariantSet()
{
  v4 = qword_2A14FCD10;
  if (!qword_2A14FCD10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD10);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelBakeSkinningParms.DeformationFlags()
{
  v4 = qword_2A14FCD18;
  if (!qword_2A14FCD18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD18);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B152C18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 112))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 4) & 0xFE) != 0)
      {
        v3 = (*(a1 + 4) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B152D3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    if (a3 > 0xFE)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 4) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelBakeSkinningParms()
{
  v4 = qword_2A14FCD20;
  if (!qword_2A14FCD20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD20);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdLuxListAPI.ComputeMode()
{
  v4 = qword_2A14FCD28;
  if (!qword_2A14FCD28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD28);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdLuxListAPI()
{
  v4 = qword_2A14FCD30;
  if (!qword_2A14FCD30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD30);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdLuxLightListAPI.ComputeMode()
{
  v4 = qword_2A14FCD38;
  if (!qword_2A14FCD38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD38);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdLuxLightListAPI()
{
  v4 = qword_2A14FCD40;
  if (!qword_2A14FCD40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD40);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeConnectableAPIBehavior.ConnectableNodeTypes()
{
  v4 = qword_2A14FCD48;
  if (!qword_2A14FCD48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD48);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior *sub_29B1535D4(pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior::~UsdShadeConnectableAPIBehavior(a1);
  sub_29B15359C(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior *sub_29B153640(pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior *a1, pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior::~UsdShadeConnectableAPIBehavior(a1);
  sub_29B15359C(a1, a2);
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPIBehavior::~UsdShadeConnectableAPIBehavior(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeConnectableAPIBehavior()
{
  v4 = qword_2A14FCD50;
  if (!qword_2A14FCD50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD50);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeConnectionModification()
{
  v4 = qword_2A14FCD58;
  if (!qword_2A14FCD58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD58);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeAttributeType()
{
  v4 = qword_2A14FCD60;
  if (!qword_2A14FCD60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD60);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformCommonAPI.OpFlags()
{
  v4 = qword_2A14FCD68;
  if (!qword_2A14FCD68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD68);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformCommonAPI()
{
  v4 = qword_2A14FCD70;
  if (!qword_2A14FCD70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD70);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformCommonAPI.RotationOrder()
{
  v4 = qword_2A14FCD78;
  if (!qword_2A14FCD78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD78);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomPointInstancer.MaskApplication()
{
  v4 = qword_2A14FCD80;
  if (!qword_2A14FCD80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD80);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *sub_29B153C6C(pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(a1);
  sub_29B153C34(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *sub_29B153CE8(pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *a1, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(a1);
  sub_29B153C34(a1, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer::~UsdGeomPointInstancer(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomPointInstancer()
{
  v4 = qword_2A14FCD88;
  if (!qword_2A14FCD88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD88);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomPointInstancer.ProtoXformInclusion()
{
  v4 = qword_2A14FCD90;
  if (!qword_2A14FCD90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD90);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformOp.Precision()
{
  v4 = qword_2A14FCD98;
  if (!qword_2A14FCD98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCD98);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdGeomXformOp.Type()
{
  v4 = qword_2A14FCDA0;
  if (!qword_2A14FCDA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDA0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageCacheContextBlockType()
{
  v4 = qword_2A14FCDA8;
  if (!qword_2A14FCDA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDA8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.HasSpecsFilter()
{
  v4 = qword_2A14FCDB0;
  if (!qword_2A14FCDB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDB0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B154234(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 88))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B154314(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    if (a3)
    {
      *(result + 88) = 1;
    }
  }

  else if (a3)
  {
    *(result + 88) = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery()
{
  v4 = qword_2A14FCDB8;
  if (!qword_2A14FCDB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDB8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.ArcIntroducedFilter()
{
  v4 = qword_2A14FCDC0;
  if (!qword_2A14FCDC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDC0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.DependencyTypeFilter()
{
  v4 = qword_2A14FCDC8;
  if (!qword_2A14FCDC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDC8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimCompositionQuery.ArcTypeFilter()
{
  v4 = qword_2A14FCDD0;
  if (!qword_2A14FCDD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDD0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdModelAPI.KindValidation()
{
  v4 = qword_2A14FCDD8;
  if (!qword_2A14FCDD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDD8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdModelAPI()
{
  v4 = qword_2A14FCDE0;
  if (!qword_2A14FCDE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDE0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdResolveInfoSource()
{
  v4 = qword_2A14FCDE8;
  if (!qword_2A14FCDE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDE8);
      return v1;
    }
  }

  return v4;
}

void **sub_29B154B40(void **a1, void **a2)
{
  sub_29A631A1C(a1);
  sub_29B1310A0(a1, a2);
  sub_29A631A1C(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStagePopulationMask()
{
  v4 = qword_2A14FCDF0;
  if (!qword_2A14FCDF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDF0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageLoadRules.Rule()
{
  v4 = qword_2A14FCDF8;
  if (!qword_2A14FCDF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCDF8);
      return v1;
    }
  }

  return v4;
}

void **sub_29B154DD4(void **a1, void **a2)
{
  sub_29B154CC8(a1);
  sub_29B1310A0(a1, a2);
  sub_29B154CC8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStageLoadRules()
{
  v4 = qword_2A14FCE00;
  if (!qword_2A14FCE00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE00);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdInterpolationType()
{
  v4 = qword_2A14FCE08;
  if (!qword_2A14FCE08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE08);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdStage.InitialLoadSet()
{
  v4 = qword_2A14FCE10;
  if (!qword_2A14FCE10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE10);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdObjType()
{
  v4 = qword_2A14FCE18;
  if (!qword_2A14FCE18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE18);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSchemaKind()
{
  v4 = qword_2A14FCE20;
  if (!qword_2A14FCE20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE20);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdLoadPolicy()
{
  v4 = qword_2A14FCE28;
  if (!qword_2A14FCE28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE28);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdListPosition()
{
  v4 = qword_2A14FCE30;
  if (!qword_2A14FCE30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE30);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits.EditType()
{
  v4 = qword_2A14FCE38;
  if (!qword_2A14FCE38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE38);
      return v1;
    }
  }

  return v4;
}

void **sub_29B1553C8(void **a1, void **a2)
{
  sub_29A481124(a1);
  sub_29B14AA94(a1, a2);
  sub_29A481124(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNamespaceEdits()
{
  v4 = qword_2A14FCE40;
  if (!qword_2A14FCE40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE40);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpCacheChanges.TargetType()
{
  v4 = qword_2A14FCE48;
  if (!qword_2A14FCE48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE48);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B155694(uint64_t a1, uint64_t a2)
{
  sub_29B155550(a1);
  sub_29B15565C(a1, a2);
  sub_29B155550(a2);
  return a1;
}

uint64_t sub_29B1556D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 280))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 120) & 0xFE) != 0)
      {
        v3 = (*(a1 + 120) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_29B1557F8(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 35;
  if (a2 > 0xFE)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 255;
    result[33] = 0;
    result[32] = 0;
    result[34] = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpCacheChanges()
{
  v4 = qword_2A14FCE50;
  if (!qword_2A14FCE50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE50);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpErrorInvalidConflictingRelocation.ConflictReason()
{
  v4 = qword_2A14FCE58;
  if (!qword_2A14FCE58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE58);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B155CA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 192))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 120)))
      {
        v4 = *(a1 + 120);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void *sub_29B155DD4(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 24;
  if (a2 > 0x7FFFFFFE)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[15] = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpErrorInvalidConflictingRelocation()
{
  v4 = qword_2A14FCE60;
  if (!qword_2A14FCE60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE60);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpErrorType()
{
  v4 = qword_2A14FCE68;
  if (!qword_2A14FCE68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE68);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpDependencyType()
{
  v4 = qword_2A14FCE70;
  if (!qword_2A14FCE70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE70);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpRangeType()
{
  v4 = qword_2A14FCE78;
  if (!qword_2A14FCE78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE78);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpArcType()
{
  v4 = qword_2A14FCE80;
  if (!qword_2A14FCE80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE80);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.NdrVersionFilter()
{
  v4 = qword_2A14FCE88;
  if (!qword_2A14FCE88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE88);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateFunctionResult.Constancy()
{
  v4 = qword_2A14FCE90;
  if (!qword_2A14FCE90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE90);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B156414(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && a1[8])
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29B15655C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 > 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateFunctionResult()
{
  v4 = qword_2A14FCE98;
  if (!qword_2A14FCE98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCE98);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfNamespaceEditDetail.Result()
{
  v4 = qword_2A14FCEA0;
  if (!qword_2A14FCEA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEA0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B1568DC(uint64_t a1, uint64_t a2)
{
  sub_29A386F34(a1);
  sub_29B1568A4(a1, a2);
  return a1;
}

_DWORD *sub_29B156988(_DWORD *a1, _DWORD *a2)
{
  sub_29A386F34(a1);
  sub_29B156950(a1, a2);
  sub_29A386F34(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfNamespaceEditDetail()
{
  v4 = qword_2A14FCEA8;
  if (!qword_2A14FCEA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEA8);
      return v1;
    }
  }

  return v4;
}

_DWORD *sub_29B156AD8(_DWORD *a1, _DWORD *a2)
{
  sub_29A38681C(a1);
  sub_29B156AA0(a1, a2);
  return a1;
}

_DWORD *sub_29B156B7C(_DWORD *a1, _DWORD *a2)
{
  sub_29A38681C(a1);
  sub_29B156B44(a1, a2);
  sub_29A38681C(a2);
  return a1;
}

uint64_t sub_29B156BBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 20))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B156C9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 20) = 1;
    }
  }

  else if (a3)
  {
    *(result + 20) = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfNamespaceEdit()
{
  v4 = qword_2A14FCEB0;
  if (!qword_2A14FCEB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEB0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfMapEditProxy_pxrInternal__aapl__pxrReserved__.VtDictionary_ pxrInternal__aapl__pxrReserved__.SdfIdentityMapEditProxyValuePolicy_pxrInternal__aapl__pxrReserved__.VtDictionary__()
{
  v4 = qword_2A14FCEB8;
  if (!qword_2A14FCEB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEB8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfValueTypeName()
{
  v4 = qword_2A14FCEC0;
  if (!qword_2A14FCEC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEC0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.Op()
{
  v4 = qword_2A14FCEC8;
  if (!qword_2A14FCEC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEC8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnCall.Kind()
{
  v4 = qword_2A14FCED0;
  if (!qword_2A14FCED0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCED0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B157274(uint64_t a1, uint64_t a2)
{
  sub_29A39639C(a1);
  sub_29B15723C(a1, a2);
  sub_29A39639C(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnCall()
{
  v4 = qword_2A14FCED8;
  if (!qword_2A14FCED8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCED8);
      return v1;
    }
  }

  return v4;
}

void *sub_29B157478(void *a1, void *a2)
{
  sub_29A3963E8(a1);
  sub_29B157440(a1, a2);
  sub_29A3963E8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression()
{
  v4 = qword_2A14FCEE0;
  if (!qword_2A14FCEE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEE0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression.Op()
{
  v4 = qword_2A14FCEE8;
  if (!qword_2A14FCEE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEE8);
      return v1;
    }
  }

  return v4;
}

void *sub_29B157714(void *a1, void *a2)
{
  sub_29A2174F4(a1);
  sub_29B1576DC(a1, a2);
  sub_29A2174F4(a2);
  return a1;
}

uint64_t sub_29B157754(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 96))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29B157834(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3)
    {
      *(result + 96) = 1;
    }
  }

  else if (a3)
  {
    *(result + 96) = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression()
{
  v4 = qword_2A14FCEF0;
  if (!qword_2A14FCEF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEF0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfOpaqueValue()
{
  v4 = qword_2A14FCEF8;
  if (!qword_2A14FCEF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCEF8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfListOpType()
{
  v4 = qword_2A14FCF00;
  if (!qword_2A14FCF00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF00);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B157C08(std::string *a1, const std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B130E58(a1, a2);
  return a1;
}

std::string *sub_29B157CB4(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B157C7C(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfHumanReadableValue()
{
  v4 = qword_2A14FCF08;
  if (!qword_2A14FCF08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF08);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfValueBlock()
{
  v4 = qword_2A14FCF10;
  if (!qword_2A14FCF10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF10);
      return v1;
    }
  }

  return v4;
}

void *sub_29B157ED4(void *a1, void *a2)
{
  sub_29B157E3C(a1);
  sub_29B157E9C(a1, a2);
  return a1;
}

void *sub_29B157F80(void *a1, void *a2)
{
  sub_29B157E3C(a1);
  sub_29B157F48(a1, a2);
  sub_29B157E3C(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfUnregisteredValue()
{
  v4 = qword_2A14FCF18;
  if (!qword_2A14FCF18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF18);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfAuthoringError()
{
  v4 = qword_2A14FCF20;
  if (!qword_2A14FCF20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF20);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfVariability()
{
  v4 = qword_2A14FCF28;
  if (!qword_2A14FCF28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF28);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPermission()
{
  v4 = qword_2A14FCF30;
  if (!qword_2A14FCF30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF30);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfSpecifier()
{
  v4 = qword_2A14FCF38;
  if (!qword_2A14FCF38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF38);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfSpecType()
{
  v4 = qword_2A14FCF40;
  if (!qword_2A14FCF40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF40);
      return v1;
    }
  }

  return v4;
}

void *sub_29B158380(void *a1, const pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  sub_29B0C51A0(a1);
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a1, a2);
  return a1;
}

void *sub_29B1583FC(void *a1, const pxrInternal__aapl__pxrReserved__::TsSpline *a2)
{
  sub_29B0C51A0(a1);
  pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(a1, a2);
  sub_29B0C51A0(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TsSpline()
{
  v4 = qword_2A14FCF48;
  if (!qword_2A14FCF48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF48);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.JsValue.Type()
{
  v4 = qword_2A14FCF50;
  if (!qword_2A14FCF50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF50);
      return v1;
    }
  }

  return v4;
}

void *sub_29B1585A8(void *a1, void *a2)
{
  sub_29B0C51A0(a1);
  sub_29B152244(a1, a2);
  sub_29B0C51A0(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.JsValue()
{
  v4 = qword_2A14FCF58;
  if (!qword_2A14FCF58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF58);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfNumericCastFailureType()
{
  v4 = qword_2A14FCF60;
  if (!qword_2A14FCF60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF60);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B158748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 136))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *sub_29B158828(void *result, int a2, int a3)
{
  v3 = result + 17;
  if (a2)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[16] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfTransform()
{
  v4 = qword_2A14FCF68;
  if (!qword_2A14FCF68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF68);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfSize3()
{
  v4 = qword_2A14FCF70;
  if (!qword_2A14FCF70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF70);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfSize2()
{
  v4 = qword_2A14FCF78;
  if (!qword_2A14FCF78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF78);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfLineSeg()
{
  v4 = qword_2A14FCF80;
  if (!qword_2A14FCF80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF80);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfLine()
{
  v4 = qword_2A14FCF88;
  if (!qword_2A14FCF88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF88);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRotation()
{
  v4 = qword_2A14FCF90;
  if (!qword_2A14FCF90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF90);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRay()
{
  v4 = qword_2A14FCF98;
  if (!qword_2A14FCF98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FCF98);
      return v1;
    }
  }

  return v4;
}