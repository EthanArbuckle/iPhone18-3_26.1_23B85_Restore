void sub_29B185C7C(const std::string *a1, const std::string *a2)
{
  sub_29B17BC58(&v6, a1);
  sub_29B1988FC(v5, &v6);
  sub_29A1855F0(&v6);
  sub_29B17BC58(&v4, a2);
  sub_29B1988FC(v3, &v4);
  sub_29A1855F0(&v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

BOOL sub_29B185EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[6] = a1;
  v8[7] = a2;
  v8[8] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v7[0] = a4;
  v7[1] = a5;
  v7[2] = a6;
  return pxrInternal__aapl__pxrReserved__::SdfTupleDimensions::operator==(v8, v7);
}

BOOL sub_29B185F48(void *a1, void *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==(v4, &v3);
}

BOOL sub_29B186350(double a1, double a2, double a3, double a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==(v6, v5);
}

BOOL static pxrInternal__aapl__pxrReserved__.PcpNodeReverseIterator.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  *&v12 = a7;
  *(&v12 + 1) = a8;
  v10[4] = v13;
  v10[5] = v14;
  v10[2] = v11;
  v10[3] = v12;
  v10[0] = v13;
  v10[1] = v14;
  v9[0] = v11;
  v9[1] = v12;
  return Overlay::__operatorEqualsEquals(v10, v9);
}

BOOL static pxrInternal__aapl__pxrReserved__.PcpPrimReverseIterator.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  *&v12 = a7;
  *(&v12 + 1) = a8;
  v10[4] = v13;
  v10[5] = v14;
  v10[2] = v11;
  v10[3] = v12;
  v10[0] = v13;
  v10[1] = v14;
  v9[0] = v11;
  v9[1] = v12;
  return Overlay::__operatorEqualsEquals(v10, v9);
}

BOOL static pxrInternal__aapl__pxrReserved__.PcpPropertyReverseIterator.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  *&v12 = a7;
  *(&v12 + 1) = a8;
  v10[4] = v13;
  v10[5] = v14;
  v10[2] = v11;
  v10[3] = v12;
  v10[0] = v13;
  v10[1] = v14;
  v9[0] = v11;
  v9[1] = v12;
  return Overlay::__operatorEqualsEquals(v10, v9);
}

void sub_29B1875A4(uint64_t a1, uint64_t a2)
{
  sub_29B0E8918(v6, a1);
  sub_29B0E89BC(v5, v6);
  sub_29A5B8A54(v6);
  sub_29B0E8918(v4, a2);
  sub_29B0E89BC(v3, v4);
  sub_29A5B8A54(v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void sub_29B1876D0(uint64_t a1, uint64_t a2)
{
  sub_29B0E8918(v6, a1);
  sub_29B0E89BC(v5, v6);
  sub_29A5AAB1C(v6);
  sub_29B0E8918(v4, a2);
  sub_29B0E89BC(v3, v4);
  sub_29A5AAB1C(v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void sub_29B187CAC(const pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a1, const pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v6, a1);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v5, v6);
  sub_29A7A079C(v6);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v4, a2);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v3, v4);
  sub_29A7A079C(v4);
  pxrInternal__aapl__pxrReserved__::operator==();
}

BOOL sub_29B1885C8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B188630(__dst, v5);
}

BOOL sub_29B188630(const void *a1, const void *a2)
{
  v7 = a1;
  v6 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::CameraUtilFraming::operator==(__dst, v4);
}

BOOL sub_29B1888BC(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B188924(__dst, v5);
}

BOOL sub_29B188924(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B1889B4(uint64_t a1, uint64_t a2)
{
  sub_29B195168(v8, a1);
  sub_29B195214(v7, v8);
  sub_29B130DF8(v8);
  sub_29B195168(v6, a2);
  sub_29B195214(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B188AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v6 = v8;
  *&v7 = a3;
  *(&v7 + 1) = a4;
  v5 = v7;
  return pxrInternal__aapl__pxrReserved__::operator==(&v6, &v5);
}

BOOL sub_29B188B54(const std::string *a1, const std::string *a2)
{
  sub_29B194EE4(v8, a1);
  sub_29B194F90(v7, v8);
  sub_29B130DF8(v8);
  sub_29B194EE4(v6, a2);
  sub_29B194F90(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B188C28(uint64_t a1, uint64_t a2)
{
  sub_29B194CF8(v8, a1);
  sub_29B194DA4(v7, v8);
  sub_29B130DF8(v8);
  sub_29B194CF8(v6, a2);
  sub_29B194DA4(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B188D04(int a1, int a2)
{
  v4 = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(&v4, &v3);
}

BOOL sub_29B188D68(uint64_t a1, uint64_t a2)
{
  sub_29B194A74(v8, a1);
  sub_29B194B20(v7, v8);
  sub_29B130DF8(v8);
  sub_29B194A74(v6, a2);
  sub_29B194B20(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B1890B8(const std::string *a1, const std::string *a2)
{
  sub_29B193C24(v8, a1);
  sub_29B193CD0(v7, v8);
  sub_29B130DF8(v8);
  sub_29B193C24(v6, a2);
  sub_29B193CD0(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B18918C(uint64_t a1, uint64_t a2)
{
  sub_29B193728(v8, a1);
  sub_29B1937D4(v7, v8);
  sub_29B130DF8(v8);
  sub_29B193728(v6, a2);
  sub_29B1937D4(v5, v6);
  sub_29B130DF8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B130DF8(v5);
  sub_29B130DF8(v7);
  return v3;
}

BOOL sub_29B189260(uint64_t a1, uint64_t a2)
{
  sub_29B193204(v8, a1);
  sub_29B1932B0(v7, v8);
  sub_29A0D2850(v8);
  sub_29B193204(v6, a2);
  sub_29B1932B0(v5, v6);
  sub_29A0D2850(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29A0D2850(v5);
  sub_29A0D2850(v7);
  return v3;
}

BOOL sub_29B189334(__int128 *a1, __int128 *a2)
{
  sub_29B193018(v8, a1);
  sub_29B1930C4(v7, v8);
  sub_29AB8B508(v8);
  sub_29B193018(v6, a2);
  sub_29B1930C4(v5, v6);
  sub_29AB8B508(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29AB8B508(v5);
  sub_29AB8B508(v7);
  return v3;
}

BOOL sub_29B1894DC(const std::string *a1, const std::string *a2)
{
  sub_29B19295C(v8, a1);
  sub_29B192A08(v7, v8);
  sub_29A0D2850(v8);
  sub_29B19295C(v6, a2);
  sub_29B192A08(v5, v6);
  sub_29A0D2850(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29A0D2850(v5);
  sub_29A0D2850(v7);
  return v3;
}

BOOL sub_29B1895F8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v11 = a1;
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v7 = a1;
  v8 = a2;
  v5 = a3;
  v6 = a4;
  return pxrInternal__aapl__pxrReserved__::operator==(&v7, &v5);
}

BOOL sub_29B18968C(uint64_t a1, uint64_t a2)
{
  sub_29B14E53C(v8, a1);
  sub_29B14E5E8(v7, v8);
  sub_29A4B291C(v8);
  sub_29B14E53C(v6, a2);
  sub_29B14E5E8(v5, v6);
  sub_29A4B291C(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29A4B291C(v5);
  sub_29A4B291C(v7);
  return v3;
}

BOOL sub_29B189760(uint64_t a1, uint64_t a2)
{
  sub_29B14E208(v8, a1);
  sub_29B14E2B4(v7, v8);
  sub_29B14E1A8(v8);
  sub_29B14E208(v6, a2);
  sub_29B14E2B4(v5, v6);
  sub_29B14E1A8(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B14E1A8(v5);
  sub_29B14E1A8(v7);
  return v3;
}

BOOL sub_29B18983C(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(&v4, &v3);
}

BOOL sub_29B18997C(int a1, int a2)
{
  v4 = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(&v4, &v3);
}

BOOL sub_29B189AFC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v11 = a1;
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v7 = a1;
  v8 = a2;
  v5 = a3;
  v6 = a4;
  return pxrInternal__aapl__pxrReserved__::operator==(&v7, &v5);
}

BOOL sub_29B189C40(uint64_t a1, uint64_t a2)
{
  LOWORD(v4) = *a1;
  BYTE2(v4) = *(a1 + 2);
  HIDWORD(v4) = *(a1 + 4);
  LOWORD(v3) = *a2;
  BYTE2(v3) = *(a2 + 2);
  HIDWORD(v3) = *(a2 + 4);
  return sub_29B189CAC(v4, v3);
}

BOOL sub_29B189CAC(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[0] = a1;
  v4[1] = a2;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(v4, &v3);
}

BOOL sub_29B189CFC(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B189D64(__dst, v5);
}

BOOL sub_29B189D64(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B189E94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *v12 = a1;
  *&v12[8] = a2;
  *&v12[16] = a3;
  *&v12[24] = a4;
  v10[0] = *v12;
  *(v10 + 12) = *&v12[12];
  *v11 = a5;
  *&v11[8] = a6;
  *&v11[16] = a7;
  *&v11[24] = a8;
  v9[0] = *v11;
  *(v9 + 12) = *&v11[12];
  return pxrInternal__aapl__pxrReserved__::operator==(v10, v9);
}

BOOL sub_29B189F14(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B189F7C(__dst, v5);
}

BOOL sub_29B189F7C(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B18A03C(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(v4, &v3);
}

BOOL sub_29B18A3C8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B18A430(__dst, v5);
}

BOOL sub_29B18A430(const void *a1, const void *a2)
{
  v7 = a1;
  v6 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::HdSamplerParameters::operator==(__dst, v4);
}

BOOL sub_29B18B2FC(_DWORD *a1, _DWORD *a2)
{
  sub_29B149664(v8, a1);
  sub_29B149708(v7, v8);
  sub_29AEC4154(v8);
  sub_29B149664(v6, a2);
  sub_29B149708(v5, v6);
  sub_29AEC4154(v6);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29AEC4154(v5);
  sub_29AEC4154(v7);
  return v4;
}

BOOL sub_29B18B490(_DWORD *a1, _DWORD *a2)
{
  sub_29B148F1C(v8, a1);
  sub_29B148FC0(v7, v8);
  sub_29AEFE3B8(v8);
  sub_29B148F1C(v6, a2);
  sub_29B148FC0(v5, v6);
  sub_29AEFE3B8(v6);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29AEFE3B8(v5);
  sub_29AEFE3B8(v7);
  return v4;
}

BOOL sub_29B18B618(uint64_t *a1, uint64_t *a2)
{
  sub_29B1489CC(v8, a1);
  sub_29B148A78(v7, v8);
  sub_29AECB604(v8);
  sub_29B1489CC(v6, a2);
  sub_29B148A78(v5, v6);
  sub_29AECB604(v6);
  v3 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29AECB604(v5);
  sub_29AECB604(v7);
  return v3;
}

BOOL sub_29B18B6D0(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B18B738(__dst, v5);
}

BOOL sub_29B18B738(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B18B8CC(__int16 a1, __int16 a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = a1;
  v3 = a2;
  return pxrInternal__aapl__pxrReserved__::operator==(v4, &v3);
}

BOOL sub_29B18B92C(uint64_t a1, uint64_t a2)
{
  LODWORD(v4) = *a1;
  BYTE4(v4) = *(a1 + 4);
  LODWORD(v3) = *a2;
  BYTE4(v3) = *(a2 + 4);
  return sub_29B18B978(v4, v3);
}

BOOL sub_29B18B978(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v5 = a1;
  v6 = BYTE4(a1);
  v3 = a2;
  v4 = BYTE4(a2);
  return pxrInternal__aapl__pxrReserved__::operator==(&v5, &v3);
}

BOOL sub_29B18B9F4(_DWORD *a1, _DWORD *a2)
{
  sub_29B12E128(v8, a1);
  sub_29B12E1CC(v7, v8);
  sub_29AEE2740(v8);
  sub_29B12E128(v6, a2);
  sub_29B12E1CC(v5, v6);
  sub_29AEE2740(v6);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29AEE2740(v5);
  sub_29AEE2740(v7);
  return v4;
}

BOOL sub_29B18BB94(_DWORD *a1, _DWORD *a2)
{
  sub_29B1470AC(v8, a1);
  sub_29B147150(v7, v8);
  sub_29B147054(v8);
  sub_29B1470AC(v6, a2);
  sub_29B147150(v5, v6);
  sub_29B147054(v6);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B147054(v5);
  sub_29B147054(v7);
  return v4;
}

BOOL sub_29B18BD14(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B18BD7C(__dst, v5);
}

BOOL sub_29B18BD7C(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B18BDF0(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_29B18BE58(__dst, v5);
}

BOOL sub_29B18BE58(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return pxrInternal__aapl__pxrReserved__::operator==(__dst, v4);
}

BOOL sub_29B18BFBC(uint64_t a1, uint64_t a2)
{
  sub_29B145C5C(v8, a1);
  sub_29B145D00(v7, v8);
  sub_29B0C51A0(v8);
  sub_29B145C5C(v6, a2);
  sub_29B145D00(v5, v6);
  sub_29B0C51A0(v6);
  v4 = pxrInternal__aapl__pxrReserved__::operator==(v7, v5);
  sub_29B0C51A0(v5);
  sub_29B0C51A0(v7);
  return v4;
}

void *sub_29B18D5E0(void *a1, void *a2)
{
  sub_29B085B60(a1);
  sub_29B18D5A8(a1, a2);
  sub_29B085B60(a2);
  return a1;
}

uint64_t sub_29B18D620(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 216))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 16) & 0xFE) != 0)
      {
        v3 = (*(a1 + 16) + 2147483646) & 0x7FFFFFFF;
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

void *sub_29B18D744(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 27;
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
    result[26] = 0;
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdImagingGLRenderParams()
{
  v4 = qword_2A14FD158;
  if (!qword_2A14FD158)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD158);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *sub_29B18DA3C(pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2)
{
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(a1);
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *sub_29B18DAB8(pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a1, const pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier *a2)
{
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(a1);
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::HdStTextureIdentifier(a1, a2);
  pxrInternal__aapl__pxrReserved__::HdStTextureIdentifier::~HdStTextureIdentifier(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStTextureIdentifier()
{
  v4 = qword_2A14FD160;
  if (!qword_2A14FD160)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD160);
      return v1;
    }
  }

  return v4;
}

__n128 *sub_29B18DCB4(__n128 *a1, __n128 *a2)
{
  sub_29ADD2F38(a1);
  sub_29B18DC7C(a1, a2);
  sub_29ADD2F38(a2);
  return a1;
}

uint64_t sub_29B18DCF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 72))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 48) & 0xFE) != 0)
      {
        v3 = (*(a1 + 48) + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_29B18DE18(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 48) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdStBindingRequest()
{
  v4 = qword_2A14FD168;
  if (!qword_2A14FD168)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD168);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdSceneIndexPrimView.const_iterator()
{
  v4 = qword_2A14FD170;
  if (!qword_2A14FD170)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD170);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdSceneIndexPrimView()
{
  v4 = qword_2A14FD178;
  if (!qword_2A14FD178)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD178);
      return v1;
    }
  }

  return v4;
}

void *sub_29B18E5C0(void *a1, void *a2)
{
  sub_29AC43430(a1);
  sub_29B18E588(a1, a2);
  sub_29AC43430(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialNetwork2()
{
  v4 = qword_2A14FD180;
  if (!qword_2A14FD180)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD180);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B18E77C(uint64_t a1, uint64_t a2)
{
  sub_29AC433D8(a1);
  sub_29B18E744(a1, a2);
  sub_29AC433D8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialConnection2()
{
  v4 = qword_2A14FD188;
  if (!qword_2A14FD188)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD188);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B18E948(uint64_t a1, uint64_t a2)
{
  sub_29ACC9478(a1);
  sub_29B18E910(a1, a2);
  sub_29ACC9478(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialNode()
{
  v4 = qword_2A14FD190;
  if (!qword_2A14FD190)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD190);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B18EB04(uint64_t a1, uint64_t a2)
{
  sub_29ACC94DC(a1);
  sub_29B18EACC(a1, a2);
  sub_29ACC94DC(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdMaterialRelationship()
{
  v4 = qword_2A14FD198;
  if (!qword_2A14FD198)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD198);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B18EC8C(uint64_t a1, uint64_t a2)
{
  sub_29B18EBF4(a1);
  sub_29B18EC54(a1, a2);
  return a1;
}

uint64_t sub_29B18ED08(uint64_t a1, uint64_t a2)
{
  sub_29B18EBF4(a1);
  sub_29B18EC54(a1, a2);
  sub_29B18EBF4(a2);
  return a1;
}

uint64_t sub_29B18ED50(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[80])
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

uint64_t sub_29B18EE74(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdDataSourceLocatorSet.IntersectionIterator()
{
  v4 = qword_2A14FD1A0;
  if (!qword_2A14FD1A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1A0);
      return v1;
    }
  }

  return v4;
}

void *sub_29B18F160(void *a1, void *a2)
{
  sub_29B12EA40(a1);
  sub_29B12EB3C(a1, a2);
  sub_29B12EA40(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdExtComputationOutputDescriptor()
{
  v4 = qword_2A14FD1A8;
  if (!qword_2A14FD1A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1A8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B18F354(uint64_t a1, uint64_t a2)
{
  sub_29ACC6B28(a1);
  sub_29B18F31C(a1, a2);
  sub_29ACC6B28(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdExtComputationInputDescriptor()
{
  v4 = qword_2A14FD1B0;
  if (!qword_2A14FD1B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1B0);
      return v1;
    }
  }

  return v4;
}

__n128 *sub_29B18F548(__n128 *a1, __n128 *a2)
{
  sub_29ACC1490(a1);
  sub_29B18F510(a1, a2);
  sub_29ACC1490(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdExtComputationPrimvarDescriptor()
{
  v4 = qword_2A14FD1B8;
  if (!qword_2A14FD1B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1B8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B18F77C(uint64_t a1, uint64_t a2)
{
  sub_29B18F638(a1);
  sub_29B18F744(a1, a2);
  sub_29B18F638(a2);
  return a1;
}

uint64_t sub_29B18F7BC(uint64_t a1, unsigned int a2)
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
      if ((*(a1 + 8) & 0xFE) != 0)
      {
        v3 = (*(a1 + 8) + 2147483646) & 0x7FFFFFFF;
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

void *sub_29B18F8E0(void *result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdModelDrawMode()
{
  v4 = qword_2A14FD1C0;
  if (!qword_2A14FD1C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1C0);
      return v1;
    }
  }

  return v4;
}

void *sub_29B18FD10(void *a1, void *a2)
{
  sub_29B18FBDC(a1);
  sub_29B18FCD8(a1, a2);
  sub_29B18FBDC(a2);
  return a1;
}

uint64_t sub_29B18FD50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 32))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_29B18FE98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdPrimvarDescriptor()
{
  v4 = qword_2A14FD1C8;
  if (!qword_2A14FD1C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1C8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B190110(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 12))
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

uint64_t sub_29B190260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 > 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 4) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdDisplayStyle()
{
  v4 = qword_2A14FD1D0;
  if (!qword_2A14FD1D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1D0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdVec4f_2_10_10_10_REV()
{
  v4 = qword_2A14FD1D8;
  if (!qword_2A14FD1D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1D8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B190570(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 36))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 24) & 0xFE) != 0)
      {
        v3 = (*(a1 + 24) + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_29B190694(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 24) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdSamplerParameters()
{
  v4 = qword_2A14FD1E0;
  if (!qword_2A14FD1E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1E0);
      return v1;
    }
  }

  return v4;
}

__n128 sub_29B190918(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  return result;
}

uint64_t sub_29B19092C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 20))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 16) & 0xFE) != 0)
      {
        v3 = (*(a1 + 16) + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_29B190A50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 16) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HdRenderBufferDescriptor()
{
  v4 = qword_2A14FD1E8;
  if (!qword_2A14FD1E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1E8);
      return v1;
    }
  }

  return v4;
}

void *sub_29B190DF8(void *a1, void *a2)
{
  sub_29AB8FA10(a1);
  sub_29B190DC0(a1, a2);
  sub_29AB8FA10(a2);
  return a1;
}

uint64_t sub_29B190E38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 352))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 48) & 0xFE) != 0)
      {
        v3 = (*(a1 + 48) + 2147483646) & 0x7FFFFFFF;
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

void *sub_29B190F5C(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 44;
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
    result[43] = 0;
    result[42] = 0;
    result[41] = 0;
    result[40] = 0;
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
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiGraphicsPipelineDesc()
{
  v4 = qword_2A14FD1F0;
  if (!qword_2A14FD1F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1F0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiGraphicsShaderConstantsDesc()
{
  v4 = qword_2A14FD1F8;
  if (!qword_2A14FD1F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD1F8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiDepthStencilState()
{
  v4 = qword_2A14FD200;
  if (!qword_2A14FD200)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD200);
      return v1;
    }
  }

  return v4;
}

__n128 sub_29B191380(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

uint64_t sub_29B191394(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 28))
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

uint64_t sub_29B191474(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3)
    {
      *(result + 28) = 1;
    }
  }

  else if (a3)
  {
    *(result + 28) = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiStencilState()
{
  v4 = qword_2A14FD208;
  if (!qword_2A14FD208)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD208);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B1916F4(uint64_t a1, unsigned int a2)
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
      if ((*(a1 + 16) & 0xFE) != 0)
      {
        v3 = (*(a1 + 16) + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_29B191818(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiRasterizationState()
{
  v4 = qword_2A14FD210;
  if (!qword_2A14FD210)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD210);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiMultiSampleState()
{
  v4 = qword_2A14FD218;
  if (!qword_2A14FD218)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD218);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B191C88(uint64_t a1, uint64_t a2)
{
  sub_29B191B44(a1);
  sub_29B191C50(a1, a2);
  sub_29B191B44(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiVertexBufferDesc()
{
  v4 = qword_2A14FD220;
  if (!qword_2A14FD220)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD220);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiVertexAttributeDesc()
{
  v4 = qword_2A14FD228;
  if (!qword_2A14FD228)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD228);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComputeCmdsDesc()
{
  v4 = qword_2A14FD230;
  if (!qword_2A14FD230)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD230);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B191FEC(uint64_t a1, uint64_t a2)
{
  sub_29B191EA8(a1);
  sub_29B191FB4(a1, a2);
  sub_29B191EA8(a2);
  return a1;
}

uint64_t sub_29B19202C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 368))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 360) & 0xFE) != 0)
      {
        v3 = (*(a1 + 360) + 2147483646) & 0x7FFFFFFF;
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

void *sub_29B192150(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 46;
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
    result[45] = 0;
    result[44] = 0;
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
      *(result + 360) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionDesc()
{
  v4 = qword_2A14FD238;
  if (!qword_2A14FD238)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD238);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B19244C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v8 = ((a2 + 1) >> 8) + 1;
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
      v7 = a1[1];
    }

    else
    {
      v7 = v9 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v7)
    {
      v6 = (*a1 | ((v7 - 1) << 8)) + 254;
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

_BYTE *sub_29B1925E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
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
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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

  else
  {
    if (v7)
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

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionFragmentDesc()
{
  v4 = qword_2A14FD240;
  if (!qword_2A14FD240)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD240);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionComputeDesc()
{
  v4 = qword_2A14FD248;
  if (!qword_2A14FD248)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD248);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B192994(std::string *a1, const std::string *a2)
{
  sub_29A0D2850(a1);
  sub_29B19295C(a1, a2);
  return a1;
}

uint64_t sub_29B192A40(uint64_t a1, uint64_t a2)
{
  sub_29A0D2850(a1);
  sub_29B192A08(a1, a2);
  sub_29A0D2850(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc.Member()
{
  v4 = qword_2A14FD250;
  if (!qword_2A14FD250)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD250);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B192C44(uint64_t a1, uint64_t a2)
{
  sub_29ADC20F8(a1);
  sub_29B192C0C(a1, a2);
  sub_29ADC20F8(a2);
  return a1;
}

uint64_t sub_29B192C84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 104))
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

uint64_t sub_29B192D64(uint64_t result, int a2, int a3)
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
    if (a3)
    {
      *(result + 104) = 1;
    }
  }

  else if (a3)
  {
    *(result + 104) = 0;
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc()
{
  v4 = qword_2A14FD258;
  if (!qword_2A14FD258)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD258);
      return v1;
    }
  }

  return v4;
}

char *sub_29B193050(char *a1, __int128 *a2)
{
  sub_29AB8B508(a1);
  sub_29B193018(a1, a2);
  return a1;
}

uint64_t sub_29B1930FC(uint64_t a1, uint64_t a2)
{
  sub_29AB8B508(a1);
  sub_29B1930C4(a1, a2);
  sub_29AB8B508(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamDesc()
{
  v4 = qword_2A14FD260;
  if (!qword_2A14FD260)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD260);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B19323C(uint64_t a1, uint64_t a2)
{
  sub_29A0D2850(a1);
  sub_29B193204(a1, a2);
  return a1;
}

uint64_t sub_29B1932E8(uint64_t a1, uint64_t a2)
{
  sub_29A0D2850(a1);
  sub_29B1932B0(a1, a2);
  sub_29A0D2850(a2);
  return a1;
}

uint64_t sub_29B193328(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 64))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 60);
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

uint64_t sub_29B193470(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 60) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionBufferDesc()
{
  v4 = qword_2A14FD268;
  if (!qword_2A14FD268)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD268);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B193760(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B193728(a1, a2);
  return a1;
}

std::string *sub_29B19380C(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B1937D4(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t sub_29B19384C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 48) & 0xFE) != 0)
      {
        v3 = (*(a1 + 48) + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_29B193970(uint64_t result, unsigned int a2, unsigned int a3)
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
    if (a3 > 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTextureDesc()
{
  v4 = qword_2A14FD270;
  if (!qword_2A14FD270)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD270);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B193C5C(std::string *a1, const std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B193C24(a1, a2);
  return a1;
}

std::string *sub_29B193D08(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B193CD0(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t sub_29B193D48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 64))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 52);
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

uint64_t sub_29B193E90(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 52) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiSamplerDesc()
{
  v4 = qword_2A14FD278;
  if (!qword_2A14FD278)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD278);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B194244(uint64_t a1, uint64_t a2)
{
  sub_29ADE69D4(a1);
  sub_29B19420C(a1, a2);
  sub_29ADE69D4(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiResourceBindingsDesc()
{
  v4 = qword_2A14FD280;
  if (!qword_2A14FD280)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD280);
      return v1;
    }
  }

  return v4;
}

void *sub_29B194448(void *a1, void *a2)
{
  sub_29ABA9C7C(a1);
  sub_29B194410(a1, a2);
  sub_29ABA9C7C(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTextureBindDesc()
{
  v4 = qword_2A14FD288;
  if (!qword_2A14FD288)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD288);
      return v1;
    }
  }

  return v4;
}

void *sub_29B19464C(void *a1, void *a2)
{
  sub_29ADEB844(a1);
  sub_29B194614(a1, a2);
  sub_29ADEB844(a2);
  return a1;
}

uint64_t sub_29B19468C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 88))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 84) & 0xFE) != 0)
      {
        v3 = (*(a1 + 84) + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_29B1947B0(uint64_t result, unsigned int a2, unsigned int a3)
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
    if (a3 > 0xFE)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 84) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBufferBindDesc()
{
  v4 = qword_2A14FD290;
  if (!qword_2A14FD290)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD290);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B194AAC(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B194A74(a1, a2);
  return a1;
}

std::string *sub_29B194B58(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B194B20(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComputePipelineDesc()
{
  v4 = qword_2A14FD298;
  if (!qword_2A14FD298)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD298);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComputeShaderConstantsDesc()
{
  v4 = qword_2A14FD2A0;
  if (!qword_2A14FD2A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2A0);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B194D30(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B194CF8(a1, a2);
  return a1;
}

std::string *sub_29B194DDC(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B194DA4(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTextureViewDesc()
{
  v4 = qword_2A14FD2A8;
  if (!qword_2A14FD2A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2A8);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B194F1C(std::string *a1, const std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B194EE4(a1, a2);
  return a1;
}

std::string *sub_29B194FC8(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B194F90(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiTextureDesc()
{
  v4 = qword_2A14FD2B0;
  if (!qword_2A14FD2B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2B0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiComponentMapping()
{
  v4 = qword_2A14FD2B8;
  if (!qword_2A14FD2B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2B8);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B1951A0(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B195168(a1, a2);
  return a1;
}

std::string *sub_29B19524C(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B195214(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiBufferDesc()
{
  v4 = qword_2A14FD2C0;
  if (!qword_2A14FD2C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2C0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsTimeCodeRange.const_iterator()
{
  v4 = qword_2A14FD2C8;
  if (!qword_2A14FD2C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2C8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B1954E8(uint64_t a1, uint64_t a2)
{
  sub_29A887EB0(a1);
  sub_29B1954B0(a1, a2);
  sub_29A887EB0(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdUtilsDependencyInfo()
{
  v4 = qword_2A14FD2D0;
  if (!qword_2A14FD2D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2D0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelSkeletonQuery()
{
  v4 = qword_2A14FD2D8;
  if (!qword_2A14FD2D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2D8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B19584C(uint64_t a1, uint64_t a2)
{
  sub_29A87AF04(a1);
  sub_29B195814(a1, a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelInbetweenShape()
{
  v4 = qword_2A14FD2E0;
  if (!qword_2A14FD2E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2E0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelTopology()
{
  v4 = qword_2A14FD2E8;
  if (!qword_2A14FD2E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2E8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelAnimQuery()
{
  v4 = qword_2A14FD2F0;
  if (!qword_2A14FD2F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2F0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdSkelAnimMapper()
{
  v4 = qword_2A14FD2F8;
  if (!qword_2A14FD2F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD2F8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B19607C(uint64_t a1, uint64_t a2)
{
  sub_29A7D85CC(a1);
  sub_29B195814(a1, a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeOutput()
{
  v4 = qword_2A14FD300;
  if (!qword_2A14FD300)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD300);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B1961D8(uint64_t a1, uint64_t a2)
{
  sub_29A7CCF50(a1);
  sub_29B195814(a1, a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeInput()
{
  v4 = qword_2A14FD308;
  if (!qword_2A14FD308)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD308);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeConnectionSourceInfo()
{
  v4 = qword_2A14FD310;
  if (!qword_2A14FD310)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD310);
      return v1;
    }
  }

  return v4;
}

void **sub_29B1965A8(void **a1, const pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(a1);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(a1, a2);
  return a1;
}

void **sub_29B196624(void **a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(a1);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::Iterator(a1, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::Iterator::~Iterator(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdZipFile.Iterator()
{
  v4 = qword_2A14FD318;
  if (!qword_2A14FD318)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD318);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::UsdZipFile *sub_29B19671C(pxrInternal__aapl__pxrReserved__::UsdZipFile *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(a1);
  sub_29B12F07C(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::UsdZipFile *sub_29B196788(pxrInternal__aapl__pxrReserved__::UsdZipFile *a1, pxrInternal__aapl__pxrReserved__::UsdZipFile *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(a1);
  sub_29B12F07C(a1, a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFile::~UsdZipFile(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdZipFile()
{
  v4 = qword_2A14FD320;
  if (!qword_2A14FD320)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD320);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B1968A0(uint64_t a1, uint64_t a2)
{
  sub_29A58BBB4(a1);
  sub_29B0ECF14(a1, a2);
  return a1;
}

uint64_t sub_29B19690C(uint64_t a1, uint64_t a2)
{
  sub_29A58BBB4(a1);
  sub_29B0ED130(a1, a2);
  sub_29A58BBB4(a2);
  return a1;
}

uint64_t sub_29B19694C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 32))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 28);
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

uint64_t sub_29B196A94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 28) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimRange.iterator()
{
  v4 = qword_2A14FD328;
  if (!qword_2A14FD328)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD328);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B196E50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*a1))
      {
        v4 = *a1;
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

uint64_t sub_29B196F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdEditTarget()
{
  v4 = qword_2A14FD330;
  if (!qword_2A14FD330)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD330);
      return v1;
    }
  }

  return v4;
}

void **sub_29B19732C(void **a1, void **a2)
{
  sub_29A559EA8(a1);
  sub_29B1972F4(a1, a2);
  sub_29A559EA8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpInstanceKey()
{
  v4 = qword_2A14FD338;
  if (!qword_2A14FD338)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD338);
      return v1;
    }
  }

  return v4;
}

pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *sub_29B197484(pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *a1, void *a2)
{
  sub_29A464E40(a1);
  sub_29B19744C(a1, a2);
  return a1;
}

pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *sub_29B197530(pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *a1, pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource *a2)
{
  sub_29A464E40(a1);
  sub_29B1974F8(a1, a2);
  sub_29A464E40(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpExpressionVariables()
{
  v4 = qword_2A14FD340;
  if (!qword_2A14FD340)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD340);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpPropertyReverseIterator()
{
  v4 = qword_2A14FD348;
  if (!qword_2A14FD348)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD348);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpPrimReverseIterator()
{
  v4 = qword_2A14FD350;
  if (!qword_2A14FD350)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD350);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNodeReverseIterator()
{
  v4 = qword_2A14FD358;
  if (!qword_2A14FD358)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD358);
      return v1;
    }
  }

  return v4;
}

_DWORD *sub_29B197850(_DWORD *a1, _DWORD *a2)
{
  sub_29A4334C0(a1);
  sub_29B197818(a1, a2);
  return a1;
}

_DWORD *sub_29B197904(_DWORD *a1, _DWORD *a2)
{
  sub_29A4334C0(a1);
  sub_29B1978CC(a1, a2);
  sub_29A4334C0(a2);
  return a1;
}

uint64_t sub_29B19794C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 72))
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

uint64_t sub_29B197A70(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 52) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpDependency()
{
  v4 = qword_2A14FD360;
  if (!qword_2A14FD360)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD360);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNodeRef_ChildrenReverseIterator()
{
  v4 = qword_2A14FD368;
  if (!qword_2A14FD368)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD368);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpNodeRef_ChildrenIterator()
{
  v4 = qword_2A14FD370;
  if (!qword_2A14FD370)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD370);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B197E74(uint64_t a1, uint64_t a2)
{
  sub_29A476E94();
  sub_29B113450(a1, a2);
  return a1;
}

uint64_t sub_29B197EB4(uint64_t a1, uint64_t a2)
{
  sub_29B197EF0(a1, a2);
  sub_29A476E94(a2);
  return a1;
}

uint64_t sub_29B197F28(uint64_t a1, uint64_t a2)
{
  sub_29A476E94(a1);
  sub_29B197EF0(a1, a2);
  sub_29A476E94(a2);
  return a1;
}

uint64_t sub_29B197F70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
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

uint64_t sub_29B198094(uint64_t result, unsigned int a2, unsigned int a3)
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
    if (a3 > 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 36) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.PcpMapFunction()
{
  v4 = qword_2A14FD378;
  if (!qword_2A14FD378)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD378);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfVariableExpression.EmptyList()
{
  v4 = qword_2A14FD380;
  if (!qword_2A14FD380)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD380);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfVariableExpression()
{
  v4 = qword_2A14FD388;
  if (!qword_2A14FD388)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD388);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B19863C(uint64_t a1, uint64_t a2)
{
  sub_29B1985A4(a1);
  sub_29B198604(a1, a2);
  return a1;
}

uint64_t sub_29B1986E8(uint64_t a1, uint64_t a2)
{
  sub_29B1985A4(a1);
  sub_29B1986B0(a1, a2);
  sub_29B1985A4(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfCopySpecsValueEdit()
{
  v4 = qword_2A14FD390;
  if (!qword_2A14FD390)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD390);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfTupleDimensions()
{
  v4 = qword_2A14FD398;
  if (!qword_2A14FD398)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD398);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B198888(std::string *a1, const std::string *a2)
{
  sub_29A1855F0(a1);
  sub_29B17BC58(a1, a2);
  return a1;
}

uint64_t sub_29B198934(uint64_t a1, uint64_t a2)
{
  sub_29A1855F0(a1);
  sub_29B1988FC(a1, a2);
  sub_29A1855F0(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPredicateExpression.FnArg()
{
  v4 = qword_2A14FD3A0;
  if (!qword_2A14FD3A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3A0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B198A54(uint64_t a1, uint64_t a2)
{
  sub_29A396050(a1);
  sub_29B16D47C(a1, a2);
  return a1;
}

_DWORD *sub_29B198B00(_DWORD *a1, _DWORD *a2)
{
  sub_29A396050(a1);
  sub_29B198AC8(a1, a2);
  sub_29A396050(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathExpression.ExpressionReference()
{
  v4 = qword_2A14FD3A8;
  if (!qword_2A14FD3A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3A8);
      return v1;
    }
  }

  return v4;
}

std::string *sub_29B198C08(std::string *a1, uint64_t a2)
{
  sub_29B130DF8(a1);
  sub_29B16DD04(a1, a2);
  return a1;
}

std::string *sub_29B198CB4(std::string *a1, std::string *a2)
{
  sub_29B130DF8(a1);
  sub_29B198C7C(a1, a2);
  sub_29B130DF8(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathPattern.Component()
{
  v4 = qword_2A14FD3B0;
  if (!qword_2A14FD3B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3B0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B198E80(uint64_t a1, uint64_t a2)
{
  sub_29A396444(a1);
  sub_29B198E48(a1, a2);
  sub_29A396444(a2);
  return a1;
}

uint64_t sub_29B198EC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 64))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t sub_29B199008(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 56) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathPattern()
{
  v4 = qword_2A14FD3B8;
  if (!qword_2A14FD3B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3B8);
      return v1;
    }
  }

  return v4;
}

_DWORD *sub_29B199308(_DWORD *a1, _DWORD *a2)
{
  sub_29A821B38(a1);
  sub_29B1992D0(a1, a2);
  return a1;
}

_DWORD *sub_29B1993AC(_DWORD *a1, _DWORD *a2)
{
  sub_29A821B38(a1);
  sub_29B199374(a1, a2);
  sub_29A821B38(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathAncestorsRange.iterator()
{
  v4 = qword_2A14FD3C0;
  if (!qword_2A14FD3C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3C0);
      return v1;
    }
  }

  return v4;
}

_DWORD *sub_29B19949C(_DWORD *a1, _DWORD *a2)
{
  sub_29A821B78(a1);
  sub_29B1992D0(a1, a2);
  return a1;
}

_DWORD *sub_29B199508(_DWORD *a1, _DWORD *a2)
{
  sub_29A821B78(a1);
  sub_29B199374(a1, a2);
  sub_29A821B78(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.SdfPathAncestorsRange()
{
  v4 = qword_2A14FD3C8;
  if (!qword_2A14FD3C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3C8);
      return v1;
    }
  }

  return v4;
}

char *sub_29B199660(char *a1, __int128 *a2)
{
  sub_29A1D18FC(a1);
  sub_29B199628(a1, a2);
  return a1;
}

uint64_t sub_29B19970C(uint64_t a1, uint64_t a2)
{
  sub_29A1D18FC(a1);
  sub_29B1996D4(a1, a2);
  sub_29A1D18FC(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.ArAssetInfo()
{
  v4 = qword_2A14FD3D0;
  if (!qword_2A14FD3D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3D0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B199930(uint64_t a1, uint64_t a2)
{
  sub_29B1997FC(a1);
  sub_29B1998F8(a1, a2);
  sub_29B1997FC(a2);
  return a1;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TraceDynamicKey()
{
  v4 = qword_2A14FD3D8;
  if (!qword_2A14FD3D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3D8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TraceStaticKeyData()
{
  v4 = qword_2A14FD3E0;
  if (!qword_2A14FD3E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3E0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TraceKey()
{
  v4 = qword_2A14FD3E8;
  if (!qword_2A14FD3E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3E8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfLineSeg2d()
{
  v4 = qword_2A14FD3F0;
  if (!qword_2A14FD3F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3F0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfLine2d()
{
  v4 = qword_2A14FD3F8;
  if (!qword_2A14FD3F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD3F8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfUtf8CodePointIterator()
{
  v4 = qword_2A14FD400;
  if (!qword_2A14FD400)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD400);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.TfHashMap_pxrInternal__aapl__pxrReserved__.TfToken_ CInt_ pxrInternal__aapl__pxrReserved__.TfToken.HashFunctor_ std.__1.equal_to_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ CInt___()
{
  v4 = qword_2A14FD408;
  if (!qword_2A14FD408)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD408);
      return v1;
    }
  }

  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdMaterialNetwork2::operator==(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (sub_29B1A422C(a1, a2))
  {
    v5 = 0;
    if (sub_29B1A42C4(a1 + 24, a2 + 24))
    {
      v5 = 0;
      if (sub_29A35D70C((a1 + 48), a2 + 48))
      {
        v5 = pxrInternal__aapl__pxrReserved__::operator==((a1 + 72), (a2 + 72), v2);
      }
    }
  }

  return v5 & 1;
}

void pxrInternal__aapl__pxrReserved__::HdMaterialConnection2::operator==()
{
  pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::TfToken,6u>::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationOutputDescriptor::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfToken::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationInputDescriptor::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfToken::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::HdExtComputationPrimvarDescriptor::operator==()
{
  pxrInternal__aapl__pxrReserved__::HdPrimvarDescriptor::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::HdModelDrawMode::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfToken::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::HdPrimvarDescriptor::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfToken::operator==();
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdDisplayStyle::operator==(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    v3 = 0;
    if ((*(a1 + 4) & 1) == (*(a2 + 4) & 1))
    {
      v3 = 0;
      if ((*(a1 + 5) & 1) == (*(a2 + 5) & 1))
      {
        v3 = 0;
        if ((*(a1 + 6) & 1) == (*(a2 + 6) & 1))
        {
          v3 = 0;
          if ((*(a1 + 7) & 1) == (*(a2 + 7) & 1))
          {
            return (*(a1 + 8) & 1) == (*(a2 + 8) & 1);
          }
        }
      }
    }
  }

  return v3;
}

void pxrInternal__aapl__pxrReserved__::HdBufferSpec::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfToken::operator==();
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdTupleType::operator==(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::HdVec4f_2_10_10_10_REV::operator==(int *a1, int *a2)
{
  v3 = 0;
  if (*a2 >> 30 == *a1 >> 30)
  {
    v3 = 0;
    if ((4 * *a2) >> 22 == (4 * *a1) >> 22)
    {
      v3 = 0;
      if (*a2 << 12 >> 22 == *a1 << 12 >> 22)
      {
        return *a2 << 22 >> 22 == *a1 << 22 >> 22;
      }
    }
  }

  return v3;
}

void pxrInternal__aapl__pxrReserved__::HdRenderBufferDescriptor::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec3i::operator==();
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdUtilsTimeCodeRange::const_iterator::operator==(void *a1, void *a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  return v3;
}

void pxrInternal__aapl__pxrReserved__::UsdUtilsTimeCodeRange::operator==()
{
  pxrInternal__aapl__pxrReserved__::operator==();
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::UsdUtilsDependencyInfo::operator==(uint64_t a1, void *a2)
{
  v4 = 0;
  if (sub_29A1B00DC(a1, a2))
  {
    return sub_29A22BEE4((a1 + 24), (a2 + 3));
  }

  return v4;
}

void pxrInternal__aapl__pxrReserved__::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::operator==<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>();
}

{
  pxrInternal__aapl__pxrReserved__::GfVec2i::operator==();
}

{
  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Usd_PrimData const>::operator==<pxrInternal__aapl__pxrReserved__::Usd_PrimData const>();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdSkelInbetweenShape::operator==()
{
  pxrInternal__aapl__pxrReserved__::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::operator==(pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery *a1, pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery *a2)
{
  v5 = a1;
  v4 = a2;
  pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetPrim(a1, v3);
  pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetPrim(v4, v2);
  pxrInternal__aapl__pxrReserved__::operator==();
}

void pxrInternal__aapl__pxrReserved__::UsdShadeConnectionSourceInfo::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfToken::operator==();
}

{
    ;
  }
}

void sub_29B19AC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, int a16, _Unwind_Exception *exception_object, char a18)
{
  if (*(v18 - 57))
  {
    sub_29A57F434(v18 - 56);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator==(void *a1, void *a2)
{
  if (a1[1] == a2[1] && *a1 == *a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::operator==(void *a1, void *a2)
{
  v3 = 1;
  if (a1 != a2)
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2)
  {
    pxrInternal__aapl__pxrReserved__::operator==();
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::PcpExpressionVariables::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29B1A56C4(a1, a1 + 16);
    sub_29B1A56C4(a2, a2 + 16);
    sub_29B1A5690();
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::PcpNodeIterator::operator==()
{
  pxrInternal__aapl__pxrReserved__::PcpNodeIterator::equal();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::PcpDependency::operator==()
{
  pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator==(void *a1, void *a2)
{
  v3 = 0;
  if (a1[1] == a2[1])
  {
    return *a1 == *a2;
  }

  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==()
{
  return 1;
}

{
  return 1;
}

void pxrInternal__aapl__pxrReserved__::SdfSite::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator==<pxrInternal__aapl__pxrReserved__::SdfLayer>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::operator==(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  sub_29B1A5AC4(a1, a1 + 8, a1 + 32, v3);
  sub_29B1A5AC4(v4, v4 + 8, v4 + 32, v2);
  sub_29B1A5A90();
}

{
  sub_29B1A56C4(a1, a1 + 24);
  sub_29B1A56C4(a2, a2 + 24);
  sub_29B1A60BC();
}

{
  v5 = a1;
  v4 = a2;
  sub_29B1A5AC4(a1, a1 + 24, a1 + 48, v3);
  sub_29B1A5AC4(v4, v4 + 24, v4 + 48, v2);
  sub_29B1A61E0();
}

{
  sub_29B1A56C4(a1, a1 + 8);
  sub_29B1A56C4(a2, a2 + 8);
  sub_29B1A6938();
}

{
  v5 = a1;
  v4 = a2;
  sub_29B1A5AC4(a1, a1 + 24, a1 + 28, v3);
  sub_29B1A5AC4(v4, v4 + 24, v4 + 28, v2);
  sub_29B1A6A5C();
}

{
  v5 = a1;
  v4 = a2;
  sub_29B1A6C44(a1, a1 + 8, a1 + 32, a1 + 56, v3);
  sub_29B1A6C44(v4, v4 + 8, v4 + 32, v4 + 56, v2);
  sub_29B1A6C10();
}

{
  v5 = a1;
  v4 = a2;
  sub_29B1A6C44(a1, a1 + 24, a1 + 48, a1 + 72, v3);
  sub_29B1A6C44(v4, v4 + 24, v4 + 48, v4 + 72, v2);
  sub_29B1A75D0();
}

BOOL pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==(void *a1, void *a2)
{
  v4 = 0;
  if (sub_29A1B00DC(a1, a2))
  {
    return sub_29A1B00DC(a1 + 3, a2 + 3);
  }

  return v4;
}

void pxrInternal__aapl__pxrReserved__::SdfPathAncestorsRange::iterator::operator==()
{
  pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TraceDynamicKey::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfToken::operator==();
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::GfSize3::operator==(void *a1, void *a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    v3 = 0;
    if (a1[1] == a2[1])
    {
      return a1[2] == a2[2];
    }
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::GfSize2::operator==(void *a1, void *a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  return v3;
}

void pxrInternal__aapl__pxrReserved__::GfLineSeg2d::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfLine2d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfLineSeg::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfLine::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfLine2d::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec2d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfLine::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec3d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfInterval::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfInterval::_Bound::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfRotation::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec3d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfRange2f::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec2f::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfRange2d::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec2d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfRay::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec3d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfPlane::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec3d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec3d::operator!=();
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::GfRange1d::operator==(double *a1, double *a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  return v3;
}

BOOL pxrInternal__aapl__pxrReserved__::GfRange1f::operator==(float *a1, float *a2)
{
  v3 = 0;
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  return v3;
}

void pxrInternal__aapl__pxrReserved__::GfRange3f::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec3f::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfRange3d::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfVec3d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfBBox3d::operator==()
{
  pxrInternal__aapl__pxrReserved__::GfRange3d::operator==();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfEnum::operator==(uint64_t a1, uint64_t a2, const std::type_info *a3)
{
  if (*(a2 + 8) == *(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfSafeTypeCompare(*a2, *a1, a3);
  }

  return 0;
}

void *sub_29B19D59C(void *a1, void *a2)
{
  sub_29B19D490(a1);
  sub_29B0B8190(a1, a2);
  sub_29B19D490(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.TfToken_ pxrInternal__aapl__pxrReserved__.HdMaterialConnection2_ std.__1.less_pxrInternal__aapl__pxrReserved__.TfToken__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.TfToken__ pxrInternal__aapl__pxrReserved__.HdMaterialConnection2___()
{
  v4 = qword_2A14FD410;
  if (!qword_2A14FD410)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD410);
      return v1;
    }
  }

  return v4;
}

void *sub_29B19D798(void *a1, void *a2)
{
  sub_29B19D68C(a1);
  sub_29B0B8190(a1, a2);
  sub_29B19D68C(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.map_pxrInternal__aapl__pxrReserved__.SdfPath_ pxrInternal__aapl__pxrReserved__.HdMaterialNode2_ std.__1.less_pxrInternal__aapl__pxrReserved__.SdfPath__ std.__1.allocator_std.__1.pair___cxxConst_pxrInternal__aapl__pxrReserved__.SdfPath__ pxrInternal__aapl__pxrReserved__.HdMaterialNode2___()
{
  v4 = qword_2A14FD418;
  if (!qword_2A14FD418)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD418);
      return v1;
    }
  }

  return v4;
}

void **sub_29B19D994(void **a1, void **a2)
{
  sub_29B19D888(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19D888(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiVertexBufferDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiVertexBufferDesc__()
{
  v4 = qword_2A14FD420;
  if (!qword_2A14FD420)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD420);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_29B19DB90(uint64_t *a1, uint64_t *a2)
{
  sub_29B19DA84(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19DA84(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiVertexAttributeDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiVertexAttributeDesc__()
{
  v4 = qword_2A14FD428;
  if (!qword_2A14FD428)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD428);
      return v1;
    }
  }

  return v4;
}

void **sub_29B19DD8C(void **a1, void **a2)
{
  sub_29B19DC80(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19DC80(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc__()
{
  v4 = qword_2A14FD430;
  if (!qword_2A14FD430)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD430);
      return v1;
    }
  }

  return v4;
}

void **sub_29B19DF88(void **a1, void **a2)
{
  sub_29B19DE7C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19DE7C(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamDesc__()
{
  v4 = qword_2A14FD438;
  if (!qword_2A14FD438)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD438);
      return v1;
    }
  }

  return v4;
}

void **sub_29B19E184(void **a1, void **a2)
{
  sub_29B19E078(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19E078(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionBufferDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionBufferDesc__()
{
  v4 = qword_2A14FD440;
  if (!qword_2A14FD440)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD440);
      return v1;
    }
  }

  return v4;
}

void **sub_29B19E380(void **a1, void **a2)
{
  sub_29B19E274(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19E274(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTextureDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionTextureDesc__()
{
  v4 = qword_2A14FD448;
  if (!qword_2A14FD448)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD448);
      return v1;
    }
  }

  return v4;
}

void **sub_29B19E57C(void **a1, void **a2)
{
  sub_29B19E470(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19E470(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc.Member_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiShaderFunctionParamBlockDesc.Member__()
{
  v4 = qword_2A14FD450;
  if (!qword_2A14FD450)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD450);
      return v1;
    }
  }

  return v4;
}

void **sub_29B19E778(void **a1, void **a2)
{
  sub_29B19E66C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19E66C(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiTextureBindDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiTextureBindDesc__()
{
  v4 = qword_2A14FD458;
  if (!qword_2A14FD458)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD458);
      return v1;
    }
  }

  return v4;
}

void **sub_29B19E974(void **a1, void **a2)
{
  sub_29B19E868(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19E868(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiBufferBindDesc_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiBufferBindDesc__()
{
  v4 = qword_2A14FD460;
  if (!qword_2A14FD460)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD460);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_29B19EB70(uint64_t *a1, uint64_t *a2)
{
  sub_29B19EA64(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19EA64(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiSampler__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiSampler___()
{
  v4 = qword_2A14FD468;
  if (!qword_2A14FD468)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD468);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_29B19ED6C(uint64_t *a1, uint64_t *a2)
{
  sub_29B19EC60(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19EC60(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_CUnsignedInt_ std.__1.allocator_CUnsignedInt__()
{
  v4 = qword_2A14FD470;
  if (!qword_2A14FD470)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD470);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_29B19EF68(uint64_t *a1, uint64_t *a2)
{
  sub_29B19EE5C(a1);
  sub_29B0CBDC8(a1, a2);
  sub_29B19EE5C(a2);
  return a1;
}

uint64_t type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiBuffer__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiBuffer___()
{
  v4 = qword_2A14FD478;
  if (!qword_2A14FD478)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD478);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.HgiHandle_pxrInternal__aapl__pxrReserved__.HgiShaderProgram_()
{
  v4 = qword_2A14FD480;
  if (!qword_2A14FD480)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD480);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdShadeConnectableAPI()
{
  v4 = qword_2A14FD488;
  if (!qword_2A14FD488)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FD488);
      return v1;
    }
  }

  return v4;
}

void sub_29B19F3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A424A8C(a10 + 20);
  sub_29A424A8C(a10 + 19);
  sub_29A424A8C(a10 + 18);
  sub_29A424A8C(a10 + 17);
  sub_29A424A8C(a10 + 15);
  sub_29AC94144((a10 + 9));
  _Unwind_Resume(a1);
}

__n128 sub_29B19F414(uint64_t a1, uint64_t a2)
{
  memcpy(a1, a2, 0x48uLL);
  sub_29B0CBDC8((a1 + 72), (a2 + 72));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  sub_29B0C1C58((a1 + 120), (a2 + 120));
  *(a1 + 128) = *(a2 + 128);
  sub_29B0C1C58((a1 + 136), (a2 + 136));
  sub_29B0C1C58((a1 + 144), (a2 + 144));
  sub_29B0C1C58((a1 + 152), (a2 + 152));
  sub_29B0C1C58((a1 + 160), (a2 + 160));
  sub_29B0CBDC8((a1 + 168), (a2 + 168));
  result = *(a2 + 192);
  *(a1 + 192) = result;
  *(a1 + 208) = *(a2 + 208);
  return result;
}

__n128 sub_29B19F598(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = a2->n128_u64[0];
  sub_29B0C1C58(&a1->n128_u64[1], &a2->n128_u64[1]);
  sub_29B0ED0F8(a1[1].n128_u64, a2[1].n128_u64);
  sub_29B0ED0F8(a1[2].n128_u64, a2[2].n128_u64);
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u8[0] = a2[4].n128_u8[0];
  return result;
}

void sub_29B19F798(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*,pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*,pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B19F964(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*,pxrInternal__aapl__pxrReserved__::HdSceneIndexPrimView::const_iterator::_StackFrame*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B19F9BC(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B19F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29ABD4BD0(a1, v9, v8, v5);
  return sub_29B19FA40(a4, v6);
}

uint64_t sub_29B19FB68(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29ABD4D10(a1);
  }

  return a1;
}

void *sub_29B19FD68(void *a1, void *a2)
{
  sub_29B0B8190(a1, a2);
  sub_29B0B8190(a1 + 3, a2 + 3);
  sub_29B0CBDC8(a1 + 6, a2 + 6);
  sub_29B0C0374(a1 + 9, a2 + 9);
  return a1;
}

uint64_t sub_29B19FDDC(uint64_t a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0C1C58((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t sub_29B19FE28(uint64_t a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0C1C58((a1 + 8), (a2 + 8));
  sub_29B0B8190((a1 + 16), (a2 + 16));
  return a1;
}

uint64_t sub_29B19FE88(uint64_t a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0C1C58((a1 + 8), (a2 + 8));
  sub_29B0B82B8((a1 + 16), (a2 + 16));
  sub_29B0C1C58((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t sub_29B19FF30(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B12E534((a1 + 24), a2 + 24);
  return a1;
}

uint64_t sub_29B19FFE4(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  sub_29B0B82B8((a1 + 8), (a2 + 8));
  sub_29B0C1C58((a1 + 16), (a2 + 16));
  return a1;
}

void *sub_29B1A0044(void *a1)
{
  sub_29A424A8C(a1 + 2);
  sub_29A424A8C(a1);
  return a1;
}

__n128 sub_29B1A0154(__n128 *a1, __n128 *a2)
{
  sub_29B1A01C0(a1, a2);
  sub_29B0B82B8(&a1[1].n128_u32[3], &a2[1].n128_u32[3]);
  sub_29B0C1C58(&a1[2].n128_u64[1], &a2[2].n128_u64[1]);
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_29B1A01C0(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  sub_29B0C1C58((a1 + 16), (a2 + 16));
  result = a1;
  *(a1 + 24) = *(a2 + 24) & 1;
  return result;
}

void sub_29B1A0320(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  *(v14 - 24) = a1;
  *(v14 - 28) = a2;
  sub_29A424A8C(a14 + 3);
  sub_29A424A8C(a14);
  _Unwind_Resume(*(v14 - 24));
}

uint64_t sub_29B1A03E0(uint64_t a1, uint64_t a2)
{
  sub_29B0C1C58(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  sub_29B0C1C58((a1 + 24), (a2 + 24));
  sub_29B0C1F58(a1 + 32, a2 + 32);
  sub_29B0C1F58(a1 + 80, a2 + 80);
  sub_29B0C1F58(a1 + 128, a2 + 128);
  sub_29B0C1F58(a1 + 176, a2 + 176);
  sub_29B0C1F58(a1 + 224, a2 + 224);
  sub_29B0C1F58(a1 + 272, a2 + 272);
  return a1;
}

void sub_29B1A04B0(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  memcpy(&a1[1], &a2[1], 0x98uLL);
  sub_29B19D8E8(&a1[7].__r_.__value_.__l.__size_);
}

void *sub_29B1A0588(void *a1, void *a2)
{
  sub_29B0C0434(a1, a2);
  memcpy(a1 + 3, a2 + 3, 0x98uLL);
  sub_29B0CBDC8(a1 + 22, a2 + 22);
  sub_29B0CBDC8(a1 + 25, a2 + 25);
  memcpy(a1 + 28, a2 + 28, 0x80uLL);
  return a1;
}

uint64_t sub_29B1A06A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0CBDC8((a1 + 8), (a2 + 8));
  result = a1;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_29B1A06FC(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  sub_29B0CBDC8((a1 + 56), (a2 + 56));
  sub_29B0CBDC8((a1 + 80), (a2 + 80));
  sub_29B0CBDC8((a1 + 104), (a2 + 104));
  sub_29B0CBDC8((a1 + 128), (a2 + 128));
  sub_29B0CBDC8((a1 + 152), (a2 + 152));
  sub_29B0CBDC8((a1 + 176), (a2 + 176));
  sub_29B0CBDC8((a1 + 200), (a2 + 200));
  sub_29B0CBDC8((a1 + 224), (a2 + 224));
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  sub_29B14E5E8(a1 + 264, a2 + 264);
  sub_29B14E2B4((a1 + 328), (a2 + 328));
  result = a1;
  *(a1 + 360) = *(a2 + 360);
  return result;
}

std::string *sub_29B1A0830(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  std::string::basic_string(a1 + 1, a2 + 1);
  result = a1;
  a1[2].__r_.__value_.__r.__words[0] = a2[2].__r_.__value_.__r.__words[0];
  return result;
}

uint64_t sub_29B1A08B0(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, a2 + 24);
  result = a1;
  *(a1 + 48) = *(a2 + 48);
  return result;
}

uint64_t sub_29B1A0908(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, a2 + 24);
  sub_29B0CBDC8((a1 + 48), (a2 + 48));
  sub_29B0C0434(a1 + 72, a2 + 72);
  result = a1;
  *(a1 + 96) = *(a2 + 96);
  return result;
}

uint64_t sub_29B1A0988(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, a2 + 24);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  sub_29B0C0434(a1 + 72, a2 + 72);
  sub_29B0C0434(a1 + 96, a2 + 96);
  return a1;
}

uint64_t sub_29B1A0A10(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  std::string::basic_string((a1 + 24), (a2 + 24));
  result = a1;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 53) = *(a2 + 53);
  return result;
}

uint64_t sub_29B1A0A98(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, a2 + 24);
  result = a1;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 53) = *(a2 + 53);
  return result;
}

__n128 sub_29B1A0AF8(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 33);
  *(a1 + 33) = result;
  return result;
}

__n128 sub_29B1A0B44(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 33);
  *(a1 + 33) = result;
  return result;
}

std::string *sub_29B1A0B90(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  memcpy(&a1[1], &a2[1], 0x28uLL);
  return a1;
}

uint64_t sub_29B1A0BE0(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  memcpy((a1 + 24), (a2 + 24), 0x28uLL);
  return a1;
}

uint64_t sub_29B1A0CD8(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0CBDC8((a1 + 24), (a2 + 24));
  sub_29B0CBDC8((a1 + 48), (a2 + 48));
  return a1;
}

void *sub_29B1A0DC0(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  result = a1;
  a1[6] = a2[6];
  *(a1 + 53) = *(a2 + 53);
  return result;
}

void *sub_29B1A0EDC(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  sub_29B0CBDC8(a1 + 6, a2 + 6);
  result = a1;
  a1[9] = a2[9];
  *(a1 + 77) = *(a2 + 77);
  return result;
}

__n128 sub_29B1A0F50(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

__n128 sub_29B1A0F9C(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

__n128 sub_29B1A0FE8(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

__n128 sub_29B1A1034(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

std::string *sub_29B1A1080(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  memcpy(&a1[1], &a2[1], 0x40uLL);
  return a1;
}

uint64_t sub_29B1A10D0(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  memcpy((a1 + 24), (a2 + 24), 0x40uLL);
  return a1;
}

__n128 sub_29B1A1120(uint64_t a1, uint64_t a2)
{
  std::string::basic_string(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_29B1A116C(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_29B1A122C(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0CBDC8((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t sub_29B1A1864(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B7F5C(a1 + 16, a2 + 16);
  result = a1;
  *(a1 + 56) = *(a2 + 56);
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *sub_29B1A1914(pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *a1)
{
  sub_29A424A8C(a1 + 4);
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::~UsdShadeConnectableAPI(a1);
  return a1;
}

void **sub_29B1A1AD4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A466A6C(v3);
  return a1;
}

void sub_29B1A1C64(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*,pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A55A160(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*,pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1A1E30(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*,pxrInternal__aapl__pxrReserved__::PcpInstanceKey::_Arc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1A1E88(&v6, a1, a4);
  v7 = sub_29B1A1EC8(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1A1EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A55A1B0(a1, v9, v8, v5);
  return sub_29B1A1F98(a4, v6);
}

void *sub_29B1A1F4C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 112 * a3;
  return result;
}

uint64_t sub_29B1A2130(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A466A6C(a1);
  }

  return a1;
}

void sub_29B1A217C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::pair<std::string,std::string>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,void,0>();
}

void std::allocator_traits<std::allocator<std::pair<std::string,std::string>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1C11FC(a1, v8);
    std::vector<std::pair<std::string,std::string>>::__construct_at_end<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1A2348(v7);
}

void *std::vector<std::pair<std::string,std::string>>::__construct_at_end<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B162284(&v6, a1, a4);
  v7 = sub_29B1A23A0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1A23A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A55A26C(a1, v9, v8, v5);
  return sub_29B1A2424(a4, v6);
}

uint64_t sub_29B1A2508(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A0D2770(a1);
  }

  return a1;
}

void *sub_29B1A2554(void *a1, void *a2)
{
  sub_29B0CBDC8(a1, a2);
  sub_29B0CBDC8(a1 + 3, a2 + 3);
  result = a1;
  a1[6] = a2[6];
  return result;
}

void *sub_29B1A25AC(void *a1, void *a2)
{
  sub_29B12F07C(a1, a2);
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary((a1 + 2), (a2 + 2));
  return a1;
}

void *sub_29B1A2620(void *a1, void *a2)
{
  sub_29B12F07C(a1, a2);
  sub_29B0C0374(a1 + 2, a2 + 2);
  return a1;
}

_DWORD *sub_29B1A266C(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B975C(a1, a2);
  sub_29B0B975C(a1 + 2, a2 + 2);
  sub_29B113450((a1 + 4), (a2 + 4));
  return a1;
}

void sub_29B1A26D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A1DCEA8(a10 + 2);
  sub_29A1DCEA8(a10);
  _Unwind_Resume(a1);
}

_DWORD *sub_29B1A26FC(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0B82B8(a1 + 2, a2 + 2);
  sub_29B197EF0((a1 + 4), (a2 + 4));
  return a1;
}

void sub_29B1A2760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29A1DCEA8(a10 + 2);
  sub_29A1DCEA8(a10);
  _Unwind_Resume(a1);
}

__n128 sub_29B1A278C(uint64_t a1, uint64_t a2)
{
  sub_29B1A27D0(a1, a2);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_29B1A286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, int a11, int a12, _Unwind_Exception *exception_object)
{
  sub_29B0882A0((a10 + 3));
  sub_29A1C9440(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29B1A2B18(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 24) == a2)
    {
      sub_29B088388();
      *(a1 + 24) = v2;
      (*(**(a2 + 24) + 24))(*(a2 + 24), *(a1 + 24));
    }

    else
    {
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29B1A2BF0(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C046C((a1 + 24), (a2 + 24));
  return a1;
}

_DWORD *sub_29B1A2C3C(_DWORD *a1, _DWORD *a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0C0434((a1 + 2), (a2 + 2));
  return a1;
}

uint64_t sub_29B1A2C88(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  result = a1;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t sub_29B1A2CD4(uint64_t a1, uint64_t a2)
{
  sub_29B0B82B8(a1, a2);
  sub_29B0CBDC8((a1 + 8), (a2 + 8));
  sub_29B0CBDC8((a1 + 32), (a2 + 32));
  result = a1;
  *(a1 + 56) = *(a2 + 56) & 1;
  return result;
}

uint64_t sub_29B1A2DB4(uint64_t a1, uint64_t a2)
{
  sub_29B0C0434(a1, a2);
  sub_29B0C0434(a1 + 24, a2 + 24);
  sub_29B0C0434(a1 + 48, a2 + 48);
  sub_29B0C046C((a1 + 72), (a2 + 72));
  return a1;
}

void sub_29B1A2E5C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B0C1C90((a1 + 24), (a2 + 24));
}

uint64_t sub_29B1A2EB0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  sub_29B0C1C58((a1 + 24), (a2 + 24));
  return a1;
}

void sub_29B1A30C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 - 24) = a1;
  *(v10 - 28) = a2;
  sub_29B1A2F64(a10);
  _Unwind_Resume(*(v10 - 24));
}

BOOL std::unordered_map<pxrInternal__aapl__pxrReserved__::TfToken,int,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int>>>::insert<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v4 = a3;
  result = sub_29B167588(&v5, &v4);
  if (result)
  {
    sub_29B174F64();
    sub_29B1A3820();
  }

  return result;
}

uint64_t sub_29B1A31C8(uint64_t a1)
{
  v2 = sub_29B16B74C(a1);
  sub_29B0BCCB0(&v3, v2);
  return v3;
}

uint64_t sub_29B1A3204()
{
  v1 = sub_29B16B780();
  sub_29B0BCCB0(&v2, v1);
  return v2;
}

void sub_29B1A3240(uint64_t a1, uint64_t a2)
{
  sub_29B0BD304(a2);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>,void,0>();
}

void std::allocator_traits<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

size_t *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__rehash<true>(uint64_t a1, size_t a2)
{
  v13[1] = a1;
  v13[0] = a2;
  if (a2 == 1)
  {
    v13[0] = 2;
  }

  else if ((v13[0] & (v13[0] - 1)) != 0)
  {
    v13[0] = std::__next_prime(v13[0]);
  }

  result = sub_29B169F9C(a1);
  v12 = result;
  if (v13[0] > result)
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__do_rehash<true>();
  }

  if (v13[0] < v12)
  {
    if (sub_29B16A228(v12))
    {
      v8 = *sub_29B16A2F8(a1);
      v3 = sub_29B16A310(a1);
      v4 = sub_29B16A2E0(v8 / *v3);
      prime = sub_29B16A274(v4);
    }

    else
    {
      v7 = *sub_29B16A2F8(a1);
      v5 = sub_29B16A310(a1);
      v6 = sub_29B16A2E0(v7 / *v5);
      prime = std::__next_prime(v6);
    }

    v11 = prime;
    result = sub_29B0E1A40(v13, &v11);
    v13[0] = *result;
    if (v13[0] < v12)
    {
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__do_rehash<true>();
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__do_rehash<true>(uint64_t a1, uint64_t a2)
{
  sub_29B0BD304(a1);
  sub_29B088388();
  if (a2)
  {
    sub_29B1A3774();
  }

  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> **,0>();
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *[],std::__bucket_list_deallocator<std::allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> *>>>::reset[abi:ne200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *> *> **,0>(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29B1695FC((a1 + 1), v2);
  }
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int> const&>()
{
  sub_29B088388();
  sub_29B175424();
}

{
    ;
  }
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__construct_node_hash<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int> const&>()
{
  sub_29B088388();
  sub_29B1A3E94();
}

{
    ;
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int> const&,0>()
{
  std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int> const&>();
}

{
    ;
  }
}

void *sub_29B1A3F78(uint64_t a1, std::align_val_t a2)
{
  v3 = 32 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B1A3FE8();
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B1A4134(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29B1A4190((a1 + 1), v2);
  }
}

void sub_29B1A4190(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    sub_29B0BC338(a2);
    sub_29B166294();
    std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int>,void,0>();
  }

  if (a2)
  {
    sub_29B1702A4(*a1, a2, 1);
  }
}

uint64_t sub_29B1A422C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29B1A435C(a1);
  v4 = 0;
  if (v3 == sub_29B1A435C(a2))
  {
    sub_29B16EB20();
    sub_29B0E9B5C();
    sub_29B16EB20();
    v4 = sub_29B1A4388();
  }

  return v4 & 1;
}

uint64_t sub_29B1A42C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_29B1A435C(a1);
  v4 = 0;
  if (v3 == sub_29B1A435C(a2))
  {
    sub_29B16EB20();
    sub_29B0E9B5C();
    sub_29B16EB20();
    v4 = sub_29B1A45A8();
  }

  return v4 & 1;
}

uint64_t sub_29B1A43D8()
{
  sub_29B13BBA8();
  v5 = v0;
  sub_29B13BBA8();
  v4 = v1;
  sub_29B13BBA8();
  return sub_29B1A4450(v5, v4, v2);
}

uint64_t sub_29B1A4450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v5 = a2;
  v4 = a3;
  if (sub_29B167588(&v6, &v5))
  {
    sub_29B0E9B98(&v6);
    sub_29B0E9B98(&v4);
    sub_29B1A4510();
  }

  return 1;
}

uint64_t sub_29B1A45F8()
{
  sub_29B13BBA8();
  v5 = v0;
  sub_29B13BBA8();
  v4 = v1;
  sub_29B13BBA8();
  return sub_29B1A4670(v5, v4, v2);
}

uint64_t sub_29B1A4670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v5 = a2;
  v4 = a3;
  if (sub_29B167588(&v6, &v5))
  {
    sub_29B0E9B98(&v6);
    sub_29B0E9B98(&v4);
    sub_29B1A4730();
  }

  return 1;
}

uint64_t sub_29B1A47C8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29B175838();
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::HdDataSourceLocator,8u>::size();
}

{
    ;
  }
}

uint64_t sub_29B1A4948()
{
  sub_29B0C0D80();
  v4 = v0;
  sub_29B0C0D80();
  v3 = v1;
  sub_29B0C0D80();
  return sub_29B1A49A4(v4, v3);
}

uint64_t sub_29B1A49A4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29B1A4A50();
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::TfToken,6u>::operator==()
{
  pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::TfToken,6u>::size();
}

{
    ;
  }
}

uint64_t sub_29B1A4B58()
{
  sub_29B0C0D80();
  v4 = v0;
  sub_29B0C0D80();
  v3 = v1;
  sub_29B0C0D80();
  return sub_29B1A47C8(v4, v3);
}

void pxrInternal__aapl__pxrReserved__::UsdShadeOutput::GetAttr(pxrInternal__aapl__pxrReserved__::UsdShadeOutput *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetAttr(pxrInternal__aapl__pxrReserved__::UsdShadeInput *this)
{
  ;
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::GetAttr(pxrInternal__aapl__pxrReserved__::UsdGeomXformOp *this)
{
  v4 = this;
  sub_29B088358(&v3);
  return sub_29B1A4C90(&v3, this);
}

BOOL sub_29B1A4CC8()
{
  sub_29B088388();
  result = sub_29B1A4D48(v0);
  if (result)
  {
    sub_29A151D68();
  }

  return result;
}

uint64_t sub_29B1A4D08(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  sub_29B13BC60();
  v4[0] = v2;
  return sub_29B1A4D70(v4);
}

uint64_t sub_29B1A4DB0(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = xmmword_2A20C5F70;
  v2 = sub_29B0C5884(a2);
  sub_29B1A4EA8(&v8, v2);
  v6 = *v3;
  v7 = v10;
  sub_29B088388();
  return v6(v7, v4);
}

uint64_t sub_29B1A50F4(void *a1, void *a2)
{
  v3 = sub_29B0DB240(a1);
  if (v3 == sub_29B0DB240(a2))
  {
    sub_29B0DB6DC();
  }

  return 0;
}

uint64_t sub_29B1A51E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B1A5304(a1);
  v7 = v3;
  sub_29B1A5304(a2);
  v6 = v4;
  sub_29B1A5304(a3);
  return sub_29B1A5258(v7, v6);
}

uint64_t sub_29B1A5258(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29B1A5334();
  }

  return 1;
}

void sub_29B1A53F0(uint64_t a1)
{
  v1 = a1;
  sub_29B0BCBCC(&v1);
  sub_29B088388();
}

void pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Usd_PrimData const>::operator==<pxrInternal__aapl__pxrReserved__::Usd_PrimData const>()
{
  pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Usd_PrimData const>::get();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange::equal(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange *this, const pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::operator==();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::equal(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator *this, const pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator *a2)
{
  if (*this == *a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange::equal(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange *this, const pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::operator==();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::equal(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *this, const pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *a2)
{
  if (*this == *a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
  }

  return 0;
}

void std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>,std::tuple<pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>>()
{
  std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>,std::tuple<pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>>();
}

{
    ;
  }
}

uint64_t std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>,std::tuple<pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource const&,pxrInternal__aapl__pxrReserved__::VtDictionary const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (sub_29B1A581C())
  {
    v5 = sub_29B1A583C(a2);
    v3 = sub_29B1A583C(a3);
    v6 = pxrInternal__aapl__pxrReserved__::PcpExpressionVariablesSource::operator==(v5, v3);
  }

  return v6 & 1;
}

void *sub_29B1A5924(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29B0884A0(a1, a2);
  sub_29B0884A0(a1 + 1, a3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator::equal(pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenReverseIterator *a2)
{
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator::equal(pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator *this, const pxrInternal__aapl__pxrReserved__::PcpNodeRef_ChildrenIterator *a2)
{
  pxrInternal__aapl__pxrReserved__::PcpNodeRef::operator==();
}

{
    ;
  }
}

void std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>>()
{
  std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>>();
}

{
    ;
  }
}

void std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>>()
{
  std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>>();
}

{
    ;
  }
}

uint64_t sub_29B1A5BF8(void *a1, void *a2)
{
  v3 = sub_29B173D9C(a1);
  if (v3 == sub_29B173D9C(a2))
  {
    sub_29B1A5D94();
  }

  return 0;
}

BOOL std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall::Kind const&,std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg> const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  if (sub_29B1A581C())
  {
    v4 = *sub_29B1A583C(a2);
    return v4 == *sub_29B1A583C(a3);
  }

  return v5;
}

uint64_t sub_29B1A5E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B1A5304(a1);
  v7 = v3;
  sub_29B1A5304(a2);
  v6 = v4;
  sub_29B1A5304(a3);
  return sub_29B1A5E90(v7, v6);
}

uint64_t sub_29B1A5E90(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29B1A5F3C();
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnArg*,0>()
{
  ;
}

{
    ;
  }
}

void *sub_29B1A605C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29B0884A0(a1, a2);
  sub_29B0884A0(a1 + 1, a3);
  sub_29B0884A0(a1 + 2, a4);
  return a1;
}

void std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<std::string const&,pxrInternal__aapl__pxrReserved__::VtValue const&>,std::tuple<std::string const&,pxrInternal__aapl__pxrReserved__::VtValue const&>>()
{
  std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::string const&,pxrInternal__aapl__pxrReserved__::VtValue const&>,std::tuple<std::string const&,pxrInternal__aapl__pxrReserved__::VtValue const&>>();
}

{
    ;
  }
}

BOOL std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::string const&,pxrInternal__aapl__pxrReserved__::VtValue const&>,std::tuple<std::string const&,pxrInternal__aapl__pxrReserved__::VtValue const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (sub_29B1A581C())
  {
    v5 = sub_29B1A583C(a2);
    v3 = sub_29B1A583C(a3);
    return sub_29A1B00DC(v5, v3);
  }

  return v6;
}

void std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>>()
{
  std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>>();
}

{
    ;
  }
}

void std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>>()
{
  std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>>();
}

{
    ;
  }
}

uint64_t std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall> const&,std::string const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (sub_29B1A581C())
  {
    v5 = sub_29B1A583C(a2);
    v3 = sub_29B1A583C(a3);
    v6 = sub_29B1A641C(v5, v3);
  }

  return v6 & 1;
}

uint64_t sub_29B1A637C(void *a1, void *a2)
{
  v3 = sub_29B16BF9C(a1);
  if (v3 == sub_29B16BF9C(a2))
  {
    sub_29B1A6748();
  }

  return 0;
}

uint64_t sub_29B1A641C(void *a1, void *a2)
{
  v3 = sub_29B15FEA8(a1);
  if (v3 == sub_29B15FEA8(a2))
  {
    sub_29B1A650C();
  }

  return 0;
}

uint64_t sub_29B1A6594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_29B1A5304(a1);
  v8 = v3;
  sub_29B1A5304(v11);
  v7 = v4;
  sub_29B1A5304(v10);
  return sub_29B1A6608(v8, v7, v5, &v9);
}

uint64_t sub_29B1A6608(_DWORD *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  while (a1 != a2)
  {
    if (!sub_29B1A66B4(a4, a1, a3))
    {
      v9 = 0;
      return v9 & 1;
    }

    ++a1;
    ++a3;
  }

  v9 = 1;
  return v9 & 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::Op*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B1A67D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B1A5304(a1);
  v7 = v3;
  sub_29B1A5304(a2);
  v6 = v4;
  sub_29B1A5304(a3);
  return sub_29B1A6844(v7, v6);
}

uint64_t sub_29B1A6844(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29B1A68F0();
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression::FnCall*,0>()
{
  ;
}

{
    ;
  }
}

void std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&>>()
{
  std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&>>();
}

{
    ;
  }
}

uint64_t std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_29B1A581C())
  {
    sub_29B1A583C(a2);
    sub_29B1A583C(a3);
    pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
  }

  return 0;
}

void std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,int const&,BOOL const&>,std::tuple<std::string const&,int const&,BOOL const&>>()
{
  std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<std::string const&,int const&,BOOL const&>,std::tuple<std::string const&,int const&,BOOL const&>>();
}

{
    ;
  }
}

void std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<std::string const&,int const&,BOOL const&>,std::tuple<std::string const&,int const&,BOOL const&>>()
{
  std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::string const&,int const&,BOOL const&>,std::tuple<std::string const&,int const&,BOOL const&>>();
}

{
    ;
  }
}

BOOL std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::string const&,int const&,BOOL const&>,std::tuple<std::string const&,int const&,BOOL const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (sub_29B1A581C())
  {
    v5 = sub_29B1A583C(a2);
    v3 = sub_29B1A583C(a3);
    return sub_29A1B00DC(v5, v3);
  }

  return v6;
}

void std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>>()
{
  std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>>();
}

{
    ;
  }
}

void std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>>()
{
  std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>>();
}

{
    ;
  }
}

void std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>>()
{
  std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>>();
}

{
    ;
  }
}

uint64_t sub_29B1A6E34(void *a1, void *a2)
{
  v3 = sub_29B16641C(a1);
  if (v3 == sub_29B16641C(a2))
  {
    sub_29B1A727C();
  }

  return 0;
}

uint64_t std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression> const&,BOOL const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_29B1A581C())
  {
    sub_29B1A583C(a2);
    sub_29B1A583C(a3);
    pxrInternal__aapl__pxrReserved__::SdfPath::operator==();
  }

  return 0;
}

uint64_t sub_29B1A6F4C(void *a1, void *a2)
{
  v3 = sub_29B0DAD68(a1);
  if (v3 == sub_29B0DAD68(a2))
  {
    sub_29B1A703C();
  }

  return 0;
}

uint64_t sub_29B1A70C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B1A5304(a1);
  v7 = v3;
  sub_29B1A5304(a2);
  v6 = v4;
  sub_29B1A5304(a3);
  return sub_29B1A7138(v7, v6);
}

uint64_t sub_29B1A7138(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29B1A71E4();
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern::Component*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B1A7304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B1A5304(a1);
  v7 = v3;
  sub_29B1A5304(a2);
  v6 = v4;
  sub_29B1A5304(a3);
  return sub_29B1A7378(v7, v6);
}

uint64_t sub_29B1A7378(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29B1A7424();
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPredicateExpression*,0>()
{
  ;
}

{
    ;
  }
}

void *sub_29B1A755C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29B0884A0(a1, a2);
  sub_29B0884A0(a1 + 1, a3);
  sub_29B0884A0(a1 + 2, a4);
  sub_29B0884A0(a1 + 3, a5);
  return a1;
}

void std::__tuple_equal<4ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>()
{
  std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>();
}

{
    ;
  }
}

void std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>()
{
  std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>();
}

{
    ;
  }
}

void std::__tuple_equal<2ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>()
{
  std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>();
}

{
    ;
  }
}

uint64_t sub_29B1A776C(void *a1, void *a2)
{
  v3 = sub_29B166304(a1);
  if (v3 == sub_29B166304(a2))
  {
    sub_29B1A7CF0();
  }

  return 0;
}

uint64_t std::__tuple_equal<1ul>::operator()[abi:ne200100]<std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>,std::tuple<std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern> const&,std::string const&>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (sub_29B1A581C())
  {
    v5 = sub_29B1A583C(a2);
    v3 = sub_29B1A583C(a3);
    v6 = sub_29B1A7924(v5, v3);
  }

  return v6 & 1;
}

uint64_t sub_29B1A7884(void *a1, void *a2)
{
  v3 = sub_29B0DAD68(a1);
  if (v3 == sub_29B0DAD68(a2))
  {
    sub_29B1A7AB0();
  }

  return 0;
}

uint64_t sub_29B1A7924(void *a1, void *a2)
{
  v3 = sub_29B15FEA8(a1);
  if (v3 == sub_29B15FEA8(a2))
  {
    sub_29B1A79C4();
  }

  return 0;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::Op*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B1A7B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B1A5304(a1);
  v7 = v3;
  sub_29B1A5304(a2);
  v6 = v4;
  sub_29B1A5304(a3);
  return sub_29B1A7BAC(v7, v6);
}

uint64_t sub_29B1A7BAC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29B1A7C58();
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathExpression::ExpressionReference*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B1A7D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B1A5304(a1);
  v7 = v3;
  sub_29B1A5304(a2);
  v6 = v4;
  sub_29B1A5304(a3);
  return sub_29B1A7DEC(v7, v6);
}

uint64_t sub_29B1A7DEC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_29B1A7E98();
  }

  return 1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPathPattern>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPathPattern*,0>()
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfHumanReadableValue::GetText(pxrInternal__aapl__pxrReserved__::SdfHumanReadableValue *this)
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B1A7F30(uint64_t a1, uint64_t a2)
{
  v3 = sub_29B1A435C(a1);
  v4 = 0;
  if (v3 == sub_29B1A435C(a2))
  {
    sub_29B0BDE94();
    sub_29B0BB014();
    sub_29B0BDE94();
    v4 = sub_29B1A7FC8();
  }

  return v4 & 1;
}

uint64_t sub_29B1A8018()
{
  sub_29B13BBA8();
  v5 = v0;
  sub_29B13BBA8();
  v4 = v1;
  sub_29B13BBA8();
  return sub_29B1A8090(v5, v4, v2);
}

uint64_t sub_29B1A8090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v5 = a2;
  v4 = a3;
  if (sub_29B0BC5E4(&v6, &v5))
  {
    sub_29B0BB0C8(&v6);
    sub_29B0BB0C8(&v4);
    sub_29B1A8150();
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::GfVec3d::operator!=()
{
  pxrInternal__aapl__pxrReserved__::GfVec3d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfRotation::operator!=()
{
  pxrInternal__aapl__pxrReserved__::GfRotation::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfRange2d::operator!=()
{
  pxrInternal__aapl__pxrReserved__::GfRange2d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfRange1d::operator!=()
{
  pxrInternal__aapl__pxrReserved__::GfRange1d::operator==();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfQuath::GetImaginary(pxrInternal__aapl__pxrReserved__::GfQuath *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfDualQuath::GetReal(pxrInternal__aapl__pxrReserved__::GfDualQuath *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfQuatf::GetImaginary(pxrInternal__aapl__pxrReserved__::GfQuatf *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfDualQuatf::GetReal(pxrInternal__aapl__pxrReserved__::GfDualQuatf *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfQuatd::GetImaginary(pxrInternal__aapl__pxrReserved__::GfQuatd *this)
{
  ;
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::GfDualQuatd::GetReal(pxrInternal__aapl__pxrReserved__::GfDualQuatd *this)
{
  ;
}

{
    ;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::TfSafeTypeCompare(pxrInternal__aapl__pxrReserved__ *this, const std::type_info *a2, const std::type_info *a3)
{
  __s1 = sub_29B0BE910(this);
  v3 = sub_29B0BE910(a2);
  return strcmp(__s1, v3) == 0;
}

uint64_t sub_29B1A8698(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29AC329F8(a1, v1);
  return a1;
}

void sub_29B1A8770(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  v6 = a1;
  v5 = sub_29B167558();
  result = sub_29B167588(&v8, &v7);
  if (result)
  {
    sub_29B0BCCB0(&v4, v5);
    sub_29B0E9B98(&v8);
    sub_29B1A89BC();
  }

  return result;
}

void sub_29B1A8930(void *a1)
{
  *a1 = 0;
  sub_29B0BC15C(a1 + 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>,void,0>();
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2> const&>()
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2> const,0>()
{
  ;
}

{
    ;
  }
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t *a5)
{
  v35 = a2;
  v34 = a1;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v29 = sub_29B0BCC78();
  sub_29B0BCCB0(&v30, v29);
  v22 = 1;
  if (!sub_29B0BAF80(&v35, &v30))
  {
    sub_29B088388();
    v21 = v5;
    v20 = v31;
    sub_29B0BB0C8(&v35);
    v22 = sub_29B17212C(v21, v20);
  }

  if (v22)
  {
    v28 = v35;
    v26 = sub_29B0BCD1C();
    sub_29B0BCCB0(&v27, v26);
    v19 = 1;
    if (!sub_29B0BAF80(&v28, &v27))
    {
      sub_29B088388();
      v18 = v6;
      v7 = sub_29B0BCD54(&v28);
      v8 = sub_29B0BB0C8(v7);
      v19 = sub_29B17217C(v18, v8, v31);
    }

    if ((v19 & 1) == 0)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if (*v35)
    {
      *v33 = v28;
      return v28 + 1;
    }

    else
    {
      *v33 = v35;
      return *v33;
    }
  }

  else
  {
    sub_29B088388();
    v17 = v9;
    v10 = sub_29B0BB0C8(&v35);
    if (sub_29B17217C(v17, v10, v31))
    {
      v24[1] = v35;
      v11 = v35;
      sub_29B0BE6D8();
      v25 = v11;
      v23 = sub_29B0BCC78();
      sub_29B0BCCB0(v24, v23);
      v16 = 1;
      if (!sub_29B0BAF80(&v25, v24))
      {
        sub_29B088388();
        v15 = v12;
        v14 = v31;
        sub_29B0BB0C8(&v25);
        v16 = sub_29B17212C(v15, v14);
      }

      if ((v16 & 1) == 0)
      {
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if (*(sub_29B0BCBCC(&v35) + 8))
      {
        *v33 = v25;
        return *v33;
      }

      else
      {
        *v33 = v35;
        return v35 + 1;
      }
    }

    else
    {
      *v33 = v35;
      *v32 = v35;
      return v32;
    }
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2> const&>()
{
  sub_29B088388();
  sub_29B1A9180();
}

{
    ;
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  v8 = v3;
  if (v9)
  {
    while (1)
    {
      while (1)
      {
        sub_29B088388();
        if ((sub_29B17212C(v4, a3) & 1) == 0)
        {
          break;
        }

        if (!*v9)
        {
          *a2 = v9;
          return *a2;
        }

        v8 = v9;
        v9 = *v9;
      }

      sub_29B088388();
      if ((sub_29B17217C(v5, (v9 + 4), a3) & 1) == 0)
      {
        break;
      }

      if (!v9[1])
      {
        *a2 = v9;
        return v9 + 1;
      }

      v8 = v9 + 1;
      v9 = v9[1];
    }

    *a2 = v9;
    return v8;
  }

  else
  {
    sub_29B0BC18C();
    *a2 = v6;
    return *a2;
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2> const&,0>()
{
  std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2> const&>();
}

{
    ;
  }
}

void sub_29B1A9350(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29B1A93AC((a1 + 1), v2);
  }
}

void sub_29B1A93AC(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    sub_29B166294();
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::HdMaterialConnection2>,void,0>();
  }

  if (a2)
  {
    sub_29B1A8700(*a1, a2, 1);
  }
}

uint64_t sub_29B1A94A0(uint64_t a1)
{
  v1 = sub_29B0BC3EC();
  sub_29AC32AB8(a1, v1);
  return a1;
}

void sub_29B1A9578(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

BOOL std::map<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  v6 = a1;
  v5 = sub_29B167558();
  result = sub_29B167588(&v8, &v7);
  if (result)
  {
    sub_29B0BCCB0(&v4, v5);
    sub_29B0E9B98(&v8);
    sub_29B1A97C4();
  }

  return result;
}

void sub_29B1A9738(void *a1)
{
  *a1 = 0;
  sub_29B0BC15C(a1 + 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>,void,0>();
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>,void,0>()
{
  ;
}

{
    ;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2> const&>()
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>();
}

{
    ;
  }
}

void std::__tree_key_value_types<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>>::__get_key[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2> const,0>()
{
  ;
}

{
    ;
  }
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v13 = a1;
  v12 = a3;
  v11[2] = a4;
  v11[1] = a5;
  v10 = sub_29B0BCC78();
  sub_29B0BCCB0(v11, v10);
  if (!sub_29B0BAF80(&v14, v11))
  {
    sub_29B088388();
    sub_29B0BB0C8(&v14);
    sub_29B1A9E18();
  }

  v9 = v14;
  v7 = sub_29B0BCD1C();
  sub_29B0BCCB0(&v8, v7);
  if (!sub_29B0BAF80(&v9, &v8))
  {
    sub_29B088388();
    v5 = sub_29B0BCD54(&v9);
    sub_29B0BB0C8(v5);
    sub_29B1A9E68();
  }

  if (*v14)
  {
    *v12 = v9;
    return v9 + 1;
  }

  else
  {
    *v12 = v14;
    return *v12;
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2> const&>()
{
  sub_29B088388();
  sub_29B1AA020();
}

{
    ;
  }
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, uint64_t a2)
{
  v4 = sub_29B0BC3EC();
  sub_29B0BD1B4();
  if (v4)
  {
    sub_29B088388();
    sub_29B1A9E18();
  }

  sub_29B0BC18C();
  *a2 = v2;
  return *a2;
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2> const&,0>()
{
  std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>::construct[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2> const&>();
}

{
    ;
  }
}

void *sub_29B1AA104(uint64_t a1, std::align_val_t a2)
{
  v3 = 96 * a1;
  if (!sub_29B0886D8(a2))
  {
    sub_29B1AA190();
  }

  return sub_29B0BD424(v3, a2);
}

void sub_29B1AA30C(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29B1AA368((a1 + 1), v2);
  }
}

void sub_29B1AA368(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    sub_29B166294();
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::HdMaterialNode2>,void,0>();
  }

  if (a2)
  {
    sub_29B1A9508(*a1, a2, 1);
  }
}

void **sub_29B1AA3FC(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB87628(v3);
  return a1;
}

void sub_29B1AA4A0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A10E7C8(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AA66C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexBufferDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B174018(&v6, a1, a4);
  v7 = sub_29B1AA6C4(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AA6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB874D8(a1, v9, v8, v5);
  return sub_29B1AA748(a4, v6);
}

uint64_t sub_29B1AA7F4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB87628(a1);
  }

  return a1;
}

uint64_t *sub_29B1AA840(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B1AA888(v3);
  return a1;
}

void sub_29B1AA888(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B1AA90C(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B160304(*a1);
    sub_29B1602CC(v3, v2, v1);
  }
}

void sub_29B1AA90C(uint64_t *a1)
{
  sub_29B16032C(a1);
  sub_29B1AA958(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1AA958(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1AAA08(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A379A04(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AABD4(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*,pxrInternal__aapl__pxrReserved__::HgiVertexAttributeDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B161784(&v6, a1, a4);
  v7 = sub_29B1AAC2C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AAC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B1AACB0(a1, v9, v8, v5);
  return sub_29B1AACEC(a4, v6);
}

uint64_t sub_29B1AADB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B161A54(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B1AAE70(v17, v11);
  v8 = sub_29B1AACEC(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B1AAEA0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1AA888(a1);
  }

  return a1;
}

void **sub_29B1AAEEC(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB89F08(v3);
  return a1;
}

void sub_29B1AAF8C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29AB89A2C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AB158(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1AB1D0(&v6, a1, a4);
  v7 = sub_29B1AB210(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AB210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB89A7C(a1, v9, v8, v5);
  return sub_29B1AB2E0(a4, v6);
}

void *sub_29B1AB294(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 104 * a3;
  return result;
}

uint64_t sub_29B1AB3E8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB89F08(a1);
  }

  return a1;
}

void **sub_29B1AB434(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB899A4(v3);
  return a1;
}

void sub_29B1AB4D4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A9C996C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AB6A0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1AB710(&v6, a1, a4);
  v7 = sub_29B1AB750(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AB750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB896D8(a1, v9, v8, v5);
  return sub_29B1AB820(a4, v6);
}

void *sub_29B1AB7D4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 120 * a3;
  return result;
}

uint64_t sub_29B1AB928(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB899A4(a1);
  }

  return a1;
}

void **sub_29B1AB974(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A9E63AC(v3);
  return a1;
}

void sub_29B1AB9EC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1ABBB8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionBufferDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B1ABC10(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1ABC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB895F4(a1, v9, v8, v5);
  return sub_29B1ABC94(a4, v6);
}

uint64_t sub_29B1ABD40(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A9E63AC(a1);
  }

  return a1;
}

void **sub_29B1ABD8C(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB89550(v3);
  return a1;
}

void sub_29B1ABE04(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A044EF0(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1ABFD0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionTextureDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16C78C(&v6, a1, a4);
  v7 = sub_29B1AC028(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AC028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB893FC(a1, v9, v8, v5);
  return sub_29B1AC0AC(a4, v6);
}

uint64_t sub_29B1AC158(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB89550(a1);
  }

  return a1;
}

void **sub_29B1AC1A4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB89D8C(v3);
  return a1;
}

void sub_29B1AC21C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A044EF0(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AC3E8(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*,pxrInternal__aapl__pxrReserved__::HgiShaderFunctionParamBlockDesc::Member*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B16C78C(&v6, a1, a4);
  v7 = sub_29B1AC440(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AC440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB89C54(a1, v9, v8, v5);
  return sub_29B1AC4C4(a4, v6);
}

uint64_t sub_29B1AC570(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB89D8C(a1);
  }

  return a1;
}

void **sub_29B1AC5BC(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB88D58(v3);
  return a1;
}

void sub_29B1AC634(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*,pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A1BF94C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*,pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AC800(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*,pxrInternal__aapl__pxrReserved__::HgiTextureBindDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B166E60(&v6, a1, a4);
  v7 = sub_29B1AC858(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AC858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB88BC8(a1, v9, v8, v5);
  return sub_29B1AC8DC(a4, v6);
}

uint64_t sub_29B1AC988(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB88D58(a1);
  }

  return a1;
}

void **sub_29B1AC9D4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29AB88B40(v3);
  return a1;
}

void sub_29B1ACA74(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*,pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A9332C4(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*,pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1ACC40(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*,pxrInternal__aapl__pxrReserved__::HgiBufferBindDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B1ACCB8(&v6, a1, a4);
  v7 = sub_29B1ACCF8(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1ACCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29AB889A0(a1, v9, v8, v5);
  return sub_29B1ACDC8(a4, v6);
}

void *sub_29B1ACD7C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 88 * a3;
  return result;
}

uint64_t sub_29B1ACED0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29AB88B40(a1);
  }

  return a1;
}

uint64_t *sub_29B1ACF1C(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B1ACF64(v3);
  return a1;
}

void sub_29B1ACF64(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B1ACFE8(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B0DE1B0(*a1);
    sub_29B0DFE90(v3, v2, v1);
  }
}

void sub_29B1ACFE8(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B1AD034(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1AD034(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1AD0E4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AD2B0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiSampler>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B1AD308(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AD308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B1AD38C(a1, v9, v8, v5);
  return sub_29B1AD3C8(a4, v6);
}

uint64_t sub_29B1AD494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B1AD54C(v17, v11);
  v8 = sub_29B1AD3C8(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B1AD57C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1ACF64(a1);
  }

  return a1;
}

uint64_t *sub_29B1AD5C8(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B1AD610(v3);
  return a1;
}

void sub_29B1AD610(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B1AD694(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B15FE80(*a1);
    sub_29B15FE48(v3, v2, v1);
  }
}

void sub_29B1AD694(uint64_t *a1)
{
  sub_29B15FEA8(a1);
  sub_29B1AD6E0(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1AD6E0(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<unsigned int>>::destroy[abi:ne200100]<unsigned int,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<unsigned int>>::destroy[abi:ne200100]<unsigned int,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1AD790(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<unsigned int>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<unsigned int>,void,0>();
}

void std::allocator_traits<std::allocator<unsigned int>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<unsigned int>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0111A4(a1, v8);
    std::vector<unsigned int>::__construct_at_end<unsigned int *,unsigned int *>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AD95C(v7);
}

void *std::vector<unsigned int>::__construct_at_end<unsigned int *,unsigned int *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B160AA0(&v6, a1, a4);
  v7 = sub_29B1AD9B4(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AD9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B1ADA38(a1, v9, v8, v5);
  return sub_29B1ADA74(a4, v6);
}

uint64_t sub_29B1ADB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B160D68(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B1ADBF8(v17, v11);
  v8 = sub_29B1ADA74(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B1ADC28(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1AD610(a1);
  }

  return a1;
}

uint64_t *sub_29B1ADC74(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B1ADCBC(v3);
  return a1;
}

void sub_29B1ADCBC(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B1ADD40(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B0DE1B0(*a1);
    sub_29B0DFE90(v3, v2, v1);
  }
}

void sub_29B1ADD40(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B1ADD8C(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B1ADD8C(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B1ADE3C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B1AE008(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*,pxrInternal__aapl__pxrReserved__::HgiHandle<pxrInternal__aapl__pxrReserved__::HgiBuffer>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B1AE060(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B1AE060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B1AE0E4(a1, v9, v8, v5);
  return sub_29B1AE120(a4, v6);
}

uint64_t sub_29B1AE1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B1AE2A4(v17, v11);
  v8 = sub_29B1AE120(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B1AE2D4(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B1ADCBC(a1);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfType.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfType *a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = a2;
  Overlay::__hash_value(v3, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.TfType.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfType();
  sub_29B1AE43C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AE43C()
{
  v2 = qword_2A14FD490;
  if (!qword_2A14FD490)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD490);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.GlfBindingMap>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.GlfBindingMap_();
  sub_29B1AE5CC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AE5CC()
{
  v2 = qword_2A14FD498;
  if (!qword_2A14FD498)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.GlfBindingMap_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD498);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.HdSceneIndexBase>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexBase_();
  sub_29B1AE73C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AE73C()
{
  v2 = qword_2A14FD4A0;
  if (!qword_2A14FD4A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexBase_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.HdSceneIndexObserver>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexObserver_();
  sub_29B1AE8AC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AE8AC()
{
  v2 = qword_2A14FD4A8;
  if (!qword_2A14FD4A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexObserver_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.SdfLayer>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer_();
  sub_29B1AEA1C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AEA1C()
{
  v2 = qword_2A14FD4B0;
  if (!qword_2A14FD4B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayer_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.SdfLayerStateDelegateBase>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayerStateDelegateBase_();
  sub_29B1AEB8C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AEB8C()
{
  v2 = qword_2A14FD4B8;
  if (!qword_2A14FD4B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.SdfLayerStateDelegateBase_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.TfNotice.Probe>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TfNotice.Probe_();
  sub_29B1AECFC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AECFC()
{
  v2 = qword_2A14FD4C0;
  if (!qword_2A14FD4C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TfNotice.Probe_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.TraceAggregateNode>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TraceAggregateNode_();
  sub_29B1AEE6C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AEE6C()
{
  v2 = qword_2A14FD4C8;
  if (!qword_2A14FD4C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TraceAggregateNode_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.TraceReporterDataSourceCollector>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TraceReporterDataSourceCollector_();
  sub_29B1AEFDC();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AEFDC()
{
  v2 = qword_2A14FD4D0;
  if (!qword_2A14FD4D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.TraceReporterDataSourceCollector_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfWeakPtr<pxrInternal__aapl__pxrReserved__.UsdStage>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.UsdStage_();
  sub_29B1AF14C();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF14C()
{
  v2 = qword_2A14FD4D8;
  if (!qword_2A14FD4D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfWeakPtr_pxrInternal__aapl__pxrReserved__.UsdStage_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfEnum.hash(into:)(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfEnum *a2, unsigned int a3)
{
  v9 = a2;
  v10 = a3;
  v8 = a1;
  v6 = a2;
  v7 = a3;
  v4 = a2;
  v5 = a3;
  Overlay::__hash_value(&v4, a2);
  return Hasher.combine<A>(_:)();
}

uint64_t pxrInternal__aapl__pxrReserved__.TfEnum.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfEnum();
  sub_29B1AF2F8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF2F8()
{
  v2 = qword_2A14FD4E0;
  if (!qword_2A14FD4E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfEnum();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.GlfUniformBlock>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.GlfUniformBlock_();
  sub_29B1AF4A8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF4A8()
{
  v2 = qword_2A14FD4E8;
  if (!qword_2A14FD4E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.GlfUniformBlock_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdDependencyForwardingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdDependencyForwardingSceneIndex_();
  sub_29B1AF618();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF618()
{
  v2 = qword_2A14FD4F0;
  if (!qword_2A14FD4F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdDependencyForwardingSceneIndex_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdFlatteningSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdFlatteningSceneIndex_();
  sub_29B1AF788();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF788()
{
  v2 = qword_2A14FD4F8;
  if (!qword_2A14FD4F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdFlatteningSceneIndex_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD4F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdGpGenerativeProceduralFilteringSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdGpGenerativeProceduralFilteringSceneIndex_();
  sub_29B1AF8F8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AF8F8()
{
  v2 = qword_2A14FD500;
  if (!qword_2A14FD500)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdGpGenerativeProceduralFilteringSceneIndex_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD500);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdLegacyPrimSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdLegacyPrimSceneIndex_();
  sub_29B1AFA68();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AFA68()
{
  v2 = qword_2A14FD508;
  if (!qword_2A14FD508)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdLegacyPrimSceneIndex_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD508);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdMergingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdMergingSceneIndex_();
  sub_29B1AFBD8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AFBD8()
{
  v2 = qword_2A14FD510;
  if (!qword_2A14FD510)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdMergingSceneIndex_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD510);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdNoticeBatchingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdNoticeBatchingSceneIndex_();
  sub_29B1AFD48();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AFD48()
{
  v2 = qword_2A14FD518;
  if (!qword_2A14FD518)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdNoticeBatchingSceneIndex_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD518);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdPrefixingSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdPrefixingSceneIndex_();
  sub_29B1AFEB8();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1AFEB8()
{
  v2 = qword_2A14FD520;
  if (!qword_2A14FD520)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdPrefixingSceneIndex_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD520);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdRetainedSceneIndex>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdRetainedSceneIndex_();
  sub_29B1B0028();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0028()
{
  v2 = qword_2A14FD528;
  if (!qword_2A14FD528)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdRetainedSceneIndex_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD528);
    return WitnessTable;
  }

  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__.TfRefPtr<pxrInternal__aapl__pxrReserved__.HdSceneIndexBase>.hashValue.getter()
{
  type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexBase_();
  sub_29B1B0198();
  return _hashValue<A>(for:)();
}

unint64_t sub_29B1B0198()
{
  v2 = qword_2A14FD530;
  if (!qword_2A14FD530)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.TfRefPtr_pxrInternal__aapl__pxrReserved__.HdSceneIndexBase_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FD530);
    return WitnessTable;
  }

  return v2;
}