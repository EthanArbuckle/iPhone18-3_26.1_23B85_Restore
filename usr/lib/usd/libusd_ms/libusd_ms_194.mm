void *sub_29B0F32A4(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t _VtArray_Sequence<>.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v12 = a4;
  v15 = a1;
  v16 = a2;
  v18 = 0;
  v19 = a1;
  v9 = *(a1 - 8);
  v10 = a1 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v14 = &v8 - v8;
  v18 = v4;
  v17 = (*(v6 + 24))(v5);
  v13 = (*(v16 + 32))(v15);
  (*(v9 + 16))(v14, v11, v15);
  return sub_29B0F2CA8(v17, v13, v14, v15, v16, v12);
}

unint64_t sub_29B0F3564(uint64_t a1)
{
  result = sub_29B0F3590();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F3590()
{
  v2 = qword_2A14FB140;
  if (!qword_2A14FB140)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CBool_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB140);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F36B8(uint64_t a1)
{
  result = sub_29B0F36E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F36E4()
{
  v2 = qword_2A14FB148;
  if (!qword_2A14FB148)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CBool_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3770(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F37A8();
  result = sub_29B0F36E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F37A8()
{
  v2 = qword_2A14FB150;
  if (!qword_2A14FB150)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CBool_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB150);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3840()
{
  v2 = qword_2A14FB158;
  if (!qword_2A14FB158)
  {
    sub_29B0B7EBC(&qword_2A14FB160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB158);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F38C8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B10ED44();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B0B7D98();
}

unint64_t sub_29B0F390C(void *a1)
{
  a1[1] = sub_29B0F3950();
  a1[2] = sub_29B0F3A68();
  result = sub_29B0F3AE8();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F3950()
{
  v2 = qword_2A14FB168;
  if (!qword_2A14FB168)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB168);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_()
{
  v4 = qword_2A14FC040;
  if (!qword_2A14FC040)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC040);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F3A68()
{
  v2 = qword_2A14FB170;
  if (!qword_2A14FB170)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3AE8()
{
  v2 = qword_2A14FB178;
  if (!qword_2A14FB178)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB178);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3BD4(uint64_t a1)
{
  result = sub_29B0F3C00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F3C00()
{
  v2 = qword_2A14FB180;
  if (!qword_2A14FB180)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3D24(uint64_t a1)
{
  result = sub_29B0F3D50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F3D50()
{
  v2 = qword_2A14FB188;
  if (!qword_2A14FB188)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3DDC(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F3E14();
  result = sub_29B0F3D50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F3E14()
{
  v2 = qword_2A14FB190;
  if (!qword_2A14FB190)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3EAC()
{
  v2 = qword_2A14FB198;
  if (!qword_2A14FB198)
  {
    sub_29B0B7EBC(&qword_2A14FB1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB198);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F3F34(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F3AE8();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10CC2C();
}

unint64_t sub_29B0F3F78(void *a1)
{
  a1[1] = sub_29B0F3FBC();
  a1[2] = sub_29B0F40D4();
  result = sub_29B0F4154();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F3FBC()
{
  v2 = qword_2A14FB1A8;
  if (!qword_2A14FB1A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_()
{
  v4 = qword_2A14FC038;
  if (!qword_2A14FC038)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC038);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F40D4()
{
  v2 = qword_2A14FB1B0;
  if (!qword_2A14FB1B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4154()
{
  v2 = qword_2A14FB1B8;
  if (!qword_2A14FB1B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4240(uint64_t a1)
{
  result = sub_29B0F426C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F426C()
{
  v2 = qword_2A14FB1C0;
  if (!qword_2A14FB1C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4390(uint64_t a1)
{
  result = sub_29B0F43BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F43BC()
{
  v2 = qword_2A14FB1C8;
  if (!qword_2A14FB1C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4448(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F4480();
  result = sub_29B0F43BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F4480()
{
  v2 = qword_2A14FB1D0;
  if (!qword_2A14FB1D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4518()
{
  v2 = qword_2A14FB1D8;
  if (!qword_2A14FB1D8)
  {
    sub_29B0B7EBC(&qword_2A14FB1E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1D8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F45A0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F4154();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10CB20();
}

unint64_t sub_29B0F45E4(void *a1)
{
  a1[1] = sub_29B0F4628();
  a1[2] = sub_29B0F4740();
  result = sub_29B0F47C0();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F4628()
{
  v2 = qword_2A14FB1E8;
  if (!qword_2A14FB1E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_()
{
  v4 = qword_2A14FC030;
  if (!qword_2A14FC030)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC030);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F4740()
{
  v2 = qword_2A14FB1F0;
  if (!qword_2A14FB1F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F47C0()
{
  v2 = qword_2A14FB1F8;
  if (!qword_2A14FB1F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4858()
{
  v2 = qword_2A14FB200;
  if (!qword_2A14FB200)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.pxr_half.half();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB200);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4938(uint64_t a1)
{
  result = sub_29B0F4964();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F4964()
{
  v2 = qword_2A14FB208;
  if (!qword_2A14FB208)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4A88(uint64_t a1)
{
  result = sub_29B0F4AB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F4AB4()
{
  v2 = qword_2A14FB210;
  if (!qword_2A14FB210)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4B4C()
{
  v2 = qword_2A14FB218;
  if (!qword_2A14FB218)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.pxr_half.half();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4BCC(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F4C04();
  result = sub_29B0F4AB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F4C04()
{
  v2 = qword_2A14FB220;
  if (!qword_2A14FB220)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4C9C()
{
  v2 = qword_2A14FB228;
  if (!qword_2A14FB228)
  {
    sub_29B0B7EBC(&qword_2A14FB230);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB228);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F4D24(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F47C0();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10CA14();
}

unint64_t sub_29B0F4D68(void *a1)
{
  a1[1] = sub_29B0F4DAC();
  a1[2] = sub_29B0F4EC4();
  result = sub_29B0F4F44();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F4DAC()
{
  v2 = qword_2A14FB238;
  if (!qword_2A14FB238)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB238);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_()
{
  v4 = qword_2A14FC028;
  if (!qword_2A14FC028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC028);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F4EC4()
{
  v2 = qword_2A14FB240;
  if (!qword_2A14FB240)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4F44()
{
  v2 = qword_2A14FB248;
  if (!qword_2A14FB248)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5030(uint64_t a1)
{
  result = sub_29B0F505C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F505C()
{
  v2 = qword_2A14FB250;
  if (!qword_2A14FB250)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5180(uint64_t a1)
{
  result = sub_29B0F51AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F51AC()
{
  v2 = qword_2A14FB258;
  if (!qword_2A14FB258)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB258);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5238(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F5270();
  result = sub_29B0F51AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F5270()
{
  v2 = qword_2A14FB260;
  if (!qword_2A14FB260)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5308()
{
  v2 = qword_2A14FB268;
  if (!qword_2A14FB268)
  {
    sub_29B0B7EBC(&qword_2A14FB270);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB268);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F5390(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F4F44();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10C908();
}

unint64_t sub_29B0F53D4(void *a1)
{
  a1[1] = sub_29B0F5418();
  a1[2] = sub_29B0F5530();
  result = sub_29B0F55B0();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F5418()
{
  v2 = qword_2A14FB278;
  if (!qword_2A14FB278)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB278);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_()
{
  v4 = qword_2A14FC020;
  if (!qword_2A14FC020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC020);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F5530()
{
  v2 = qword_2A14FB280;
  if (!qword_2A14FB280)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F55B0()
{
  v2 = qword_2A14FB288;
  if (!qword_2A14FB288)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F569C(uint64_t a1)
{
  result = sub_29B0F56C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F56C8()
{
  v2 = qword_2A14FB290;
  if (!qword_2A14FB290)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F57EC(uint64_t a1)
{
  result = sub_29B0F5818();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F5818()
{
  v2 = qword_2A14FB298;
  if (!qword_2A14FB298)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F58A4(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F58DC();
  result = sub_29B0F5818();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F58DC()
{
  v2 = qword_2A14FB2A0;
  if (!qword_2A14FB2A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5974()
{
  v2 = qword_2A14FB2A8;
  if (!qword_2A14FB2A8)
  {
    sub_29B0B7EBC(&qword_2A14FB2B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2A8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F59FC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F55B0();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10C7FC();
}

unint64_t sub_29B0F5A40(void *a1)
{
  a1[1] = sub_29B0F5A84();
  a1[2] = sub_29B0F5B9C();
  result = sub_29B0F5C1C();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F5A84()
{
  v2 = qword_2A14FB2B8;
  if (!qword_2A14FB2B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_()
{
  v4 = qword_2A14FC018;
  if (!qword_2A14FC018)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC018);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F5B9C()
{
  v2 = qword_2A14FB2C0;
  if (!qword_2A14FB2C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5C1C()
{
  v2 = qword_2A14FB2C8;
  if (!qword_2A14FB2C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5D08(uint64_t a1)
{
  result = sub_29B0F5D34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F5D34()
{
  v2 = qword_2A14FB2D0;
  if (!qword_2A14FB2D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5E58(uint64_t a1)
{
  result = sub_29B0F5E84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F5E84()
{
  v2 = qword_2A14FB2D8;
  if (!qword_2A14FB2D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5F10(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F5F48();
  result = sub_29B0F5E84();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F5F48()
{
  v2 = qword_2A14FB2E0;
  if (!qword_2A14FB2E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5FE0()
{
  v2 = qword_2A14FB2E8;
  if (!qword_2A14FB2E8)
  {
    sub_29B0B7EBC(&qword_2A14FB2F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2E8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F6068(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F5C1C();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10C6F0();
}

unint64_t sub_29B0F60AC(void *a1)
{
  a1[1] = sub_29B0F60F0();
  a1[2] = sub_29B0F6208();
  result = sub_29B0F6288();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F60F0()
{
  v2 = qword_2A14FB2F8;
  if (!qword_2A14FB2F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_()
{
  v4 = qword_2A14FC010;
  if (!qword_2A14FC010)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC010);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F6208()
{
  v2 = qword_2A14FB300;
  if (!qword_2A14FB300)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F6288()
{
  v2 = qword_2A14FB308;
  if (!qword_2A14FB308)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F6374(uint64_t a1)
{
  result = sub_29B0F63A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F63A0()
{
  v2 = qword_2A14FB310;
  if (!qword_2A14FB310)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F64C4(uint64_t a1)
{
  result = sub_29B0F64F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F64F0()
{
  v2 = qword_2A14FB318;
  if (!qword_2A14FB318)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F657C(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F65B4();
  result = sub_29B0F64F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F65B4()
{
  v2 = qword_2A14FB320;
  if (!qword_2A14FB320)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F664C()
{
  v2 = qword_2A14FB328;
  if (!qword_2A14FB328)
  {
    sub_29B0B7EBC(&qword_2A14FB330);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB328);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F66D4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F6288();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10C5E4();
}

unint64_t sub_29B0F6718(void *a1)
{
  a1[1] = sub_29B0F675C();
  a1[2] = sub_29B0F6874();
  result = sub_29B0F68F4();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F675C()
{
  v2 = qword_2A14FB338;
  if (!qword_2A14FB338)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB338);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CInt_()
{
  v4 = qword_2A14FC008;
  if (!qword_2A14FC008)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC008);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F6874()
{
  v2 = qword_2A14FB340;
  if (!qword_2A14FB340)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F68F4()
{
  v2 = qword_2A14FB348;
  if (!qword_2A14FB348)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB348);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F69E0(uint64_t a1)
{
  result = sub_29B0F6A0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F6A0C()
{
  v2 = qword_2A14FB350;
  if (!qword_2A14FB350)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F6B30(uint64_t a1)
{
  result = sub_29B0F6B5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F6B5C()
{
  v2 = qword_2A14FB358;
  if (!qword_2A14FB358)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F6BE8(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F6C20();
  result = sub_29B0F6B5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F6C20()
{
  v2 = qword_2A14FB360;
  if (!qword_2A14FB360)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F6CB8()
{
  v2 = qword_2A14FB368;
  if (!qword_2A14FB368)
  {
    sub_29B0B7EBC(&qword_2A14FB370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB368);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F6D40(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F68F4();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29AB75C88();
}

unint64_t sub_29B0F6D84(void *a1)
{
  a1[1] = sub_29B0F6DC8();
  a1[2] = sub_29B0F6EE0();
  result = sub_29B0F6F60();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F6DC8()
{
  v2 = qword_2A14FB378;
  if (!qword_2A14FB378)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB378);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedInt_()
{
  v4 = qword_2A14FC000;
  if (!qword_2A14FC000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC000);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F6EE0()
{
  v2 = qword_2A14FB380;
  if (!qword_2A14FB380)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F6F60()
{
  v2 = qword_2A14FB388;
  if (!qword_2A14FB388)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F704C(uint64_t a1)
{
  result = sub_29B0F7078();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F7078()
{
  v2 = qword_2A14FB390;
  if (!qword_2A14FB390)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F719C(uint64_t a1)
{
  result = sub_29B0F71C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F71C8()
{
  v2 = qword_2A14FB398;
  if (!qword_2A14FB398)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F7254(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F728C();
  result = sub_29B0F71C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F728C()
{
  v2 = qword_2A14FB3A0;
  if (!qword_2A14FB3A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedInt_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F7324()
{
  v2 = qword_2A14FB3A8;
  if (!qword_2A14FB3A8)
  {
    sub_29B0B7EBC(&qword_2A14FB3B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB3A8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F73AC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F6F60();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10C3FC();
}

unint64_t sub_29B0F73F0(void *a1)
{
  a1[1] = sub_29B0F7434();
  a1[2] = sub_29B0F754C();
  result = sub_29B0F75CC();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F7434()
{
  v2 = qword_2A14FB3B8;
  if (!qword_2A14FB3B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB3B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CLongLong_()
{
  v4 = qword_2A14FBFF8;
  if (!qword_2A14FBFF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFF8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F754C()
{
  v2 = qword_2A14FB3C0;
  if (!qword_2A14FB3C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F75CC()
{
  v2 = qword_2A14FB3C8;
  if (!qword_2A14FB3C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB3C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F76B8(uint64_t a1)
{
  result = sub_29B0F76E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F76E4()
{
  v2 = qword_2A14FB3D0;
  if (!qword_2A14FB3D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F7808(uint64_t a1)
{
  result = sub_29B0F7834();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F7834()
{
  v2 = qword_2A14FB3D8;
  if (!qword_2A14FB3D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB3D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F78C0(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F78F8();
  result = sub_29B0F7834();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F78F8()
{
  v2 = qword_2A14FB3E0;
  if (!qword_2A14FB3E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB3E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F7990()
{
  v2 = qword_2A14FB3E8;
  if (!qword_2A14FB3E8)
  {
    sub_29B0B7EBC(&qword_2A14FB3F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB3E8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F7A18(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F75CC();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10C2F0();
}

unint64_t sub_29B0F7A5C(void *a1)
{
  a1[1] = sub_29B0F7AA0();
  a1[2] = sub_29B0F7BB8();
  result = sub_29B0F7C38();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F7AA0()
{
  v2 = qword_2A14FB3F8;
  if (!qword_2A14FB3F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB3F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedLongLong_()
{
  v4 = qword_2A14FBFF0;
  if (!qword_2A14FBFF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFF0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F7BB8()
{
  v2 = qword_2A14FB400;
  if (!qword_2A14FB400)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F7C38()
{
  v2 = qword_2A14FB408;
  if (!qword_2A14FB408)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F7D24(uint64_t a1)
{
  result = sub_29B0F7D50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F7D50()
{
  v2 = qword_2A14FB410;
  if (!qword_2A14FB410)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F7E74(uint64_t a1)
{
  result = sub_29B0F7EA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F7EA0()
{
  v2 = qword_2A14FB418;
  if (!qword_2A14FB418)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F7F2C(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F7F64();
  result = sub_29B0F7EA0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F7F64()
{
  v2 = qword_2A14FB420;
  if (!qword_2A14FB420)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedLongLong_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F7FFC()
{
  v2 = qword_2A14FB428;
  if (!qword_2A14FB428)
  {
    sub_29B0B7EBC(&qword_2A14FB430);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB428);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F8084(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F7C38();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10C1E4();
}

unint64_t sub_29B0F80C8(void *a1)
{
  a1[1] = sub_29B0F810C();
  a1[2] = sub_29B0F8224();
  result = sub_29B0F82A4();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F810C()
{
  v2 = qword_2A14FB438;
  if (!qword_2A14FB438)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB438);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4i_()
{
  v4 = qword_2A14FBFE8;
  if (!qword_2A14FBFE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFE8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F8224()
{
  v2 = qword_2A14FB440;
  if (!qword_2A14FB440)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F82A4()
{
  v2 = qword_2A14FB448;
  if (!qword_2A14FB448)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F833C()
{
  v2 = qword_2A14FB450;
  if (!qword_2A14FB450)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4i();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB450);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4i()
{
  v4 = qword_2A14FBFE0;
  if (!qword_2A14FBFE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFE0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F84D8(uint64_t a1)
{
  result = sub_29B0F8504();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F8504()
{
  v2 = qword_2A14FB458;
  if (!qword_2A14FB458)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB458);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F864C(uint64_t a1)
{
  result = sub_29B0F8678();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F8678()
{
  v2 = qword_2A14FB460;
  if (!qword_2A14FB460)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F8710()
{
  v2 = qword_2A14FB468;
  if (!qword_2A14FB468)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4i();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F8790(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F87C8();
  result = sub_29B0F8678();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F87C8()
{
  v2 = qword_2A14FB470;
  if (!qword_2A14FB470)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F8860()
{
  v2 = qword_2A14FB478;
  if (!qword_2A14FB478)
  {
    sub_29B0B7EBC(&qword_2A14FB480);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB478);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F88E8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F82A4();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10C0D8();
}

unint64_t sub_29B0F892C(void *a1)
{
  a1[1] = sub_29B0F8970();
  a1[2] = sub_29B0F8A88();
  result = sub_29B0F8B08();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F8970()
{
  v2 = qword_2A14FB488;
  if (!qword_2A14FB488)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB488);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3i_()
{
  v4 = qword_2A14FBFD8;
  if (!qword_2A14FBFD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFD8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F8A88()
{
  v2 = qword_2A14FB490;
  if (!qword_2A14FB490)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F8B08()
{
  v2 = qword_2A14FB498;
  if (!qword_2A14FB498)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F8BA0()
{
  v2 = qword_2A14FB4A0;
  if (!qword_2A14FB4A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3i();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3i()
{
  v4 = qword_2A14FBFD0;
  if (!qword_2A14FBFD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFD0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F8D34(uint64_t a1)
{
  result = sub_29B0F8D60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F8D60()
{
  v2 = qword_2A14FB4A8;
  if (!qword_2A14FB4A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F8EA0(uint64_t a1)
{
  result = sub_29B0F8ECC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F8ECC()
{
  v2 = qword_2A14FB4B0;
  if (!qword_2A14FB4B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F8F64()
{
  v2 = qword_2A14FB4B8;
  if (!qword_2A14FB4B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3i();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F8FE4(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F901C();
  result = sub_29B0F8ECC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F901C()
{
  v2 = qword_2A14FB4C0;
  if (!qword_2A14FB4C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F90B4()
{
  v2 = qword_2A14FB4C8;
  if (!qword_2A14FB4C8)
  {
    sub_29B0B7EBC(&qword_2A14FB4D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4C8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F913C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F8B08();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10BFCC();
}

unint64_t sub_29B0F9180(void *a1)
{
  a1[1] = sub_29B0F91C4();
  a1[2] = sub_29B0F92DC();
  result = sub_29B0F935C();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F91C4()
{
  v2 = qword_2A14FB4D8;
  if (!qword_2A14FB4D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2i_()
{
  v4 = qword_2A14FBFC8;
  if (!qword_2A14FBFC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFC8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F92DC()
{
  v2 = qword_2A14FB4E0;
  if (!qword_2A14FB4E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F935C()
{
  v2 = qword_2A14FB4E8;
  if (!qword_2A14FB4E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F93F4()
{
  v2 = qword_2A14FB4F0;
  if (!qword_2A14FB4F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2i();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2i()
{
  v4 = qword_2A14FBFC0;
  if (!qword_2A14FBFC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFC0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F957C(uint64_t a1)
{
  result = sub_29B0F95A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F95A8()
{
  v2 = qword_2A14FB4F8;
  if (!qword_2A14FB4F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F96DC(uint64_t a1)
{
  result = sub_29B0F9708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F9708()
{
  v2 = qword_2A14FB500;
  if (!qword_2A14FB500)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F97A0()
{
  v2 = qword_2A14FB508;
  if (!qword_2A14FB508)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2i();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F9820(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F9858();
  result = sub_29B0F9708();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F9858()
{
  v2 = qword_2A14FB510;
  if (!qword_2A14FB510)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F98F0()
{
  v2 = qword_2A14FB518;
  if (!qword_2A14FB518)
  {
    sub_29B0B7EBC(&qword_2A14FB520);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB518);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F9978(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F935C();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10BEC0();
}

unint64_t sub_29B0F99BC(void *a1)
{
  a1[1] = sub_29B0F9A00();
  a1[2] = sub_29B0F9B18();
  result = sub_29B0F9B98();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F9A00()
{
  v2 = qword_2A14FB528;
  if (!qword_2A14FB528)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB528);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4h_()
{
  v4 = qword_2A14FBFB8;
  if (!qword_2A14FBFB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFB8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F9B18()
{
  v2 = qword_2A14FB530;
  if (!qword_2A14FB530)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F9B98()
{
  v2 = qword_2A14FB538;
  if (!qword_2A14FB538)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F9C30()
{
  v2 = qword_2A14FB540;
  if (!qword_2A14FB540)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4h();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB540);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4h()
{
  v4 = qword_2A14FBFB0;
  if (!qword_2A14FBFB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFB0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0F9DC8(uint64_t a1)
{
  result = sub_29B0F9DF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F9DF4()
{
  v2 = qword_2A14FB548;
  if (!qword_2A14FB548)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F9F38(uint64_t a1)
{
  result = sub_29B0F9F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F9F64()
{
  v2 = qword_2A14FB550;
  if (!qword_2A14FB550)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F9FFC()
{
  v2 = qword_2A14FB558;
  if (!qword_2A14FB558)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4h();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FA07C(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FA0B4();
  result = sub_29B0F9F64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FA0B4()
{
  v2 = qword_2A14FB560;
  if (!qword_2A14FB560)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB560);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FA14C()
{
  v2 = qword_2A14FB568;
  if (!qword_2A14FB568)
  {
    sub_29B0B7EBC(&qword_2A14FB570);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB568);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FA1D4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F9B98();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10BDB4();
}

unint64_t sub_29B0FA218(void *a1)
{
  a1[1] = sub_29B0FA25C();
  a1[2] = sub_29B0FA374();
  result = sub_29B0FA3F4();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FA25C()
{
  v2 = qword_2A14FB578;
  if (!qword_2A14FB578)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB578);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3h_()
{
  v4 = qword_2A14FBFA8;
  if (!qword_2A14FBFA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFA8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FA374()
{
  v2 = qword_2A14FB580;
  if (!qword_2A14FB580)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FA3F4()
{
  v2 = qword_2A14FB588;
  if (!qword_2A14FB588)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FA48C()
{
  v2 = qword_2A14FB590;
  if (!qword_2A14FB590)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3h();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB590);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3h()
{
  v4 = qword_2A14FBFA0;
  if (!qword_2A14FBFA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBFA0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FA61C(uint64_t a1)
{
  result = sub_29B0FA648();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FA648()
{
  v2 = qword_2A14FB598;
  if (!qword_2A14FB598)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FA784(uint64_t a1)
{
  result = sub_29B0FA7B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FA7B0()
{
  v2 = qword_2A14FB5A0;
  if (!qword_2A14FB5A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FA848()
{
  v2 = qword_2A14FB5A8;
  if (!qword_2A14FB5A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3h();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FA8C8(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FA900();
  result = sub_29B0FA7B0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FA900()
{
  v2 = qword_2A14FB5B0;
  if (!qword_2A14FB5B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FA998()
{
  v2 = qword_2A14FB5B8;
  if (!qword_2A14FB5B8)
  {
    sub_29B0B7EBC(&qword_2A14FB5C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5B8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FAA20(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FA3F4();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10BCA8();
}

unint64_t sub_29B0FAA64(void *a1)
{
  a1[1] = sub_29B0FAAA8();
  a1[2] = sub_29B0FABC0();
  result = sub_29B0FAC40();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FAAA8()
{
  v2 = qword_2A14FB5C8;
  if (!qword_2A14FB5C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2h_()
{
  v4 = qword_2A14FBF98;
  if (!qword_2A14FBF98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF98);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FABC0()
{
  v2 = qword_2A14FB5D0;
  if (!qword_2A14FB5D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FAC40()
{
  v2 = qword_2A14FB5D8;
  if (!qword_2A14FB5D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FACD8()
{
  v2 = qword_2A14FB5E0;
  if (!qword_2A14FB5E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2h();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2h()
{
  v4 = qword_2A14FBF90;
  if (!qword_2A14FBF90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF90);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FAE60(uint64_t a1)
{
  result = sub_29B0FAE8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FAE8C()
{
  v2 = qword_2A14FB5E8;
  if (!qword_2A14FB5E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FAFC0(uint64_t a1)
{
  result = sub_29B0FAFEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FAFEC()
{
  v2 = qword_2A14FB5F0;
  if (!qword_2A14FB5F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FB084()
{
  v2 = qword_2A14FB5F8;
  if (!qword_2A14FB5F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2h();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB5F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FB104(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FB13C();
  result = sub_29B0FAFEC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FB13C()
{
  v2 = qword_2A14FB600;
  if (!qword_2A14FB600)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2h_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FB1D4()
{
  v2 = qword_2A14FB608;
  if (!qword_2A14FB608)
  {
    sub_29B0B7EBC(&qword_2A14FB610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB608);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FB25C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FAC40();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10B8C8();
}

unint64_t sub_29B0FB2A0(void *a1)
{
  a1[1] = sub_29B0FB2E4();
  a1[2] = sub_29B0FB3FC();
  result = sub_29B0FB47C();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FB2E4()
{
  v2 = qword_2A14FB618;
  if (!qword_2A14FB618)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB618);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4f_()
{
  v4 = qword_2A14FBF88;
  if (!qword_2A14FBF88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF88);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FB3FC()
{
  v2 = qword_2A14FB620;
  if (!qword_2A14FB620)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB620);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FB47C()
{
  v2 = qword_2A14FB628;
  if (!qword_2A14FB628)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB628);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FB580(uint64_t a1)
{
  result = sub_29B0FB5AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FB5AC()
{
  v2 = qword_2A14FB630;
  if (!qword_2A14FB630)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB630);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FB6DC(uint64_t a1)
{
  result = sub_29B0FB708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FB708()
{
  v2 = qword_2A14FB638;
  if (!qword_2A14FB638)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FB7A0(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FB7D8();
  result = sub_29B0FB708();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FB7D8()
{
  v2 = qword_2A14FB640;
  if (!qword_2A14FB640)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FB870()
{
  v2 = qword_2A14FB648;
  if (!qword_2A14FB648)
  {
    sub_29B0B7EBC(&qword_2A14FB650);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB648);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FB8F8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FB47C();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10B50C();
}

unint64_t sub_29B0FB93C(void *a1)
{
  a1[1] = sub_29B0FB980();
  a1[2] = sub_29B0FBA98();
  result = sub_29B0FBB18();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FB980()
{
  v2 = qword_2A14FB658;
  if (!qword_2A14FB658)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB658);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3f_()
{
  v4 = qword_2A14FBF80;
  if (!qword_2A14FBF80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF80);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FBA98()
{
  v2 = qword_2A14FB660;
  if (!qword_2A14FB660)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FBB18()
{
  v2 = qword_2A14FB668;
  if (!qword_2A14FB668)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FBBB0()
{
  v2 = qword_2A14FB670;
  if (!qword_2A14FB670)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB670);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3f()
{
  v4 = qword_2A14FBF78;
  if (!qword_2A14FBF78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF78);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FBD30(uint64_t a1)
{
  result = sub_29B0FBD5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FBD5C()
{
  v2 = qword_2A14FB678;
  if (!qword_2A14FB678)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FBE88(uint64_t a1)
{
  result = sub_29B0FBEB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FBEB4()
{
  v2 = qword_2A14FB680;
  if (!qword_2A14FB680)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FBF4C()
{
  v2 = qword_2A14FB688;
  if (!qword_2A14FB688)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB688);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FBFCC(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FC004();
  result = sub_29B0FBEB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FC004()
{
  v2 = qword_2A14FB690;
  if (!qword_2A14FB690)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB690);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FC09C()
{
  v2 = qword_2A14FB698;
  if (!qword_2A14FB698)
  {
    sub_29B0B7EBC(&qword_2A14FB6A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB698);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FC124(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FBB18();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29AD80908();
}

unint64_t sub_29B0FC168(void *a1)
{
  a1[1] = sub_29B0FC1AC();
  a1[2] = sub_29B0FC2C4();
  result = sub_29B0FC344();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FC1AC()
{
  v2 = qword_2A14FB6A8;
  if (!qword_2A14FB6A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB6A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2f_()
{
  v4 = qword_2A14FBF70;
  if (!qword_2A14FBF70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF70);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FC2C4()
{
  v2 = qword_2A14FB6B0;
  if (!qword_2A14FB6B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB6B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FC344()
{
  v2 = qword_2A14FB6B8;
  if (!qword_2A14FB6B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB6B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FC3DC()
{
  v2 = qword_2A14FB6C0;
  if (!qword_2A14FB6C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB6C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2f()
{
  v4 = qword_2A14FBF68;
  if (!qword_2A14FBF68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF68);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FC558(uint64_t a1)
{
  result = sub_29B0FC584();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FC584()
{
  v2 = qword_2A14FB6C8;
  if (!qword_2A14FB6C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB6C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FC6AC(uint64_t a1)
{
  result = sub_29B0FC6D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FC6D8()
{
  v2 = qword_2A14FB6D0;
  if (!qword_2A14FB6D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB6D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FC770()
{
  v2 = qword_2A14FB6D8;
  if (!qword_2A14FB6D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB6D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FC7F0(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FC828();
  result = sub_29B0FC6D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FC828()
{
  v2 = qword_2A14FB6E0;
  if (!qword_2A14FB6E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB6E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FC8C0()
{
  v2 = qword_2A14FB6E8;
  if (!qword_2A14FB6E8)
  {
    sub_29B0B7EBC(&qword_2A14FB6F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB6E8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FC948(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FC344();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10B050();
}

unint64_t sub_29B0FC98C(void *a1)
{
  a1[1] = sub_29B0FC9D0();
  a1[2] = sub_29B0FCAE8();
  result = sub_29B0FCB68();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FC9D0()
{
  v2 = qword_2A14FB6F8;
  if (!qword_2A14FB6F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB6F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4d_()
{
  v4 = qword_2A14FBF60;
  if (!qword_2A14FBF60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF60);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FCAE8()
{
  v2 = qword_2A14FB700;
  if (!qword_2A14FB700)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB700);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FCB68()
{
  v2 = qword_2A14FB708;
  if (!qword_2A14FB708)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB708);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FCC00()
{
  v2 = qword_2A14FB710;
  if (!qword_2A14FB710)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB710);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4d()
{
  v4 = qword_2A14FBF58;
  if (!qword_2A14FBF58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF58);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FCD84(uint64_t a1)
{
  result = sub_29B0FCDB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FCDB0()
{
  v2 = qword_2A14FB718;
  if (!qword_2A14FB718)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB718);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FCEE0(uint64_t a1)
{
  result = sub_29B0FCF0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FCF0C()
{
  v2 = qword_2A14FB720;
  if (!qword_2A14FB720)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB720);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FCFA4()
{
  v2 = qword_2A14FB728;
  if (!qword_2A14FB728)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec4d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FD024(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FD05C();
  result = sub_29B0FCF0C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FD05C()
{
  v2 = qword_2A14FB730;
  if (!qword_2A14FB730)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FD0F4()
{
  v2 = qword_2A14FB738;
  if (!qword_2A14FB738)
  {
    sub_29B0B7EBC(&qword_2A14FB740);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB738);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FD17C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FCB68();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10AF44();
}

unint64_t sub_29B0FD1C0(void *a1)
{
  a1[1] = sub_29B0FD204();
  a1[2] = sub_29B0FD31C();
  result = sub_29B0FD39C();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FD204()
{
  v2 = qword_2A14FB748;
  if (!qword_2A14FB748)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB748);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3d_()
{
  v4 = qword_2A14FBF50;
  if (!qword_2A14FBF50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF50);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FD31C()
{
  v2 = qword_2A14FB750;
  if (!qword_2A14FB750)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FD39C()
{
  v2 = qword_2A14FB758;
  if (!qword_2A14FB758)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FD434()
{
  v2 = qword_2A14FB760;
  if (!qword_2A14FB760)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB760);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3d()
{
  v4 = qword_2A14FBF48;
  if (!qword_2A14FBF48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF48);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FD5B4(uint64_t a1)
{
  result = sub_29B0FD5E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FD5E0()
{
  v2 = qword_2A14FB768;
  if (!qword_2A14FB768)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FD70C(uint64_t a1)
{
  result = sub_29B0FD738();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FD738()
{
  v2 = qword_2A14FB770;
  if (!qword_2A14FB770)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FD7D0()
{
  v2 = qword_2A14FB778;
  if (!qword_2A14FB778)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec3d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB778);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FD850(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FD888();
  result = sub_29B0FD738();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FD888()
{
  v2 = qword_2A14FB780;
  if (!qword_2A14FB780)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FD920()
{
  v2 = qword_2A14FB788;
  if (!qword_2A14FB788)
  {
    sub_29B0B7EBC(&qword_2A14FB790);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB788);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FD9A8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FD39C();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10AE38();
}

unint64_t sub_29B0FD9EC(void *a1)
{
  a1[1] = sub_29B0FDA30();
  a1[2] = sub_29B0FDB48();
  result = sub_29B0FDBC8();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FDA30()
{
  v2 = qword_2A14FB798;
  if (!qword_2A14FB798)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB798);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2d_()
{
  v4 = qword_2A14FBF40;
  if (!qword_2A14FBF40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF40);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FDB48()
{
  v2 = qword_2A14FB7A0;
  if (!qword_2A14FB7A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FDBC8()
{
  v2 = qword_2A14FB7A8;
  if (!qword_2A14FB7A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FDC60()
{
  v2 = qword_2A14FB7B0;
  if (!qword_2A14FB7B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2d()
{
  v4 = qword_2A14FBF38;
  if (!qword_2A14FBF38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF38);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FDDDC(uint64_t a1)
{
  result = sub_29B0FDE08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FDE08()
{
  v2 = qword_2A14FB7B8;
  if (!qword_2A14FB7B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FDF30(uint64_t a1)
{
  result = sub_29B0FDF5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FDF5C()
{
  v2 = qword_2A14FB7C0;
  if (!qword_2A14FB7C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FDFF4()
{
  v2 = qword_2A14FB7C8;
  if (!qword_2A14FB7C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfVec2d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FE074(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FE0AC();
  result = sub_29B0FDF5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FE0AC()
{
  v2 = qword_2A14FB7D0;
  if (!qword_2A14FB7D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfVec2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FE144()
{
  v2 = qword_2A14FB7D8;
  if (!qword_2A14FB7D8)
  {
    sub_29B0B7EBC(&qword_2A14FB7E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7D8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FE1CC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FDBC8();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10AD2C();
}

unint64_t sub_29B0FE210(void *a1)
{
  a1[1] = sub_29B0FE254();
  a1[2] = sub_29B0FE36C();
  result = sub_29B0FE3EC();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FE254()
{
  v2 = qword_2A14FB7E8;
  if (!qword_2A14FB7E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4f_()
{
  v4 = qword_2A14FBF30;
  if (!qword_2A14FBF30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF30);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FE36C()
{
  v2 = qword_2A14FB7F0;
  if (!qword_2A14FB7F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FE3EC()
{
  v2 = qword_2A14FB7F8;
  if (!qword_2A14FB7F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB7F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FE484()
{
  v2 = qword_2A14FB800;
  if (!qword_2A14FB800)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix4f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB800);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix4f()
{
  v4 = qword_2A14FBF28;
  if (!qword_2A14FBF28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF28);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FE610(uint64_t a1)
{
  result = sub_29B0FE63C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FE63C()
{
  v2 = qword_2A14FB808;
  if (!qword_2A14FB808)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB808);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FE788(uint64_t a1)
{
  result = sub_29B0FE7B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FE7B4()
{
  v2 = qword_2A14FB810;
  if (!qword_2A14FB810)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB810);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FE84C()
{
  v2 = qword_2A14FB818;
  if (!qword_2A14FB818)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix4f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB818);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FE8CC(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FE904();
  result = sub_29B0FE7B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FE904()
{
  v2 = qword_2A14FB820;
  if (!qword_2A14FB820)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FE99C()
{
  v2 = qword_2A14FB828;
  if (!qword_2A14FB828)
  {
    sub_29B0B7EBC(&qword_2A14FB830);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB828);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FEA24(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FE3EC();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10AC20();
}

unint64_t sub_29B0FEA68(void *a1)
{
  a1[1] = sub_29B0FEAAC();
  a1[2] = sub_29B0FEBC4();
  result = sub_29B0FEC44();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FEAAC()
{
  v2 = qword_2A14FB838;
  if (!qword_2A14FB838)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB838);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3f_()
{
  v4 = qword_2A14FBF20;
  if (!qword_2A14FBF20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF20);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FEBC4()
{
  v2 = qword_2A14FB840;
  if (!qword_2A14FB840)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FEC44()
{
  v2 = qword_2A14FB848;
  if (!qword_2A14FB848)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FECDC()
{
  v2 = qword_2A14FB850;
  if (!qword_2A14FB850)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix3f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB850);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix3f()
{
  v4 = qword_2A14FBF18;
  if (!qword_2A14FBF18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF18);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FEE68(uint64_t a1)
{
  result = sub_29B0FEE94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FEE94()
{
  v2 = qword_2A14FB858;
  if (!qword_2A14FB858)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB858);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FEFE0(uint64_t a1)
{
  result = sub_29B0FF00C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FF00C()
{
  v2 = qword_2A14FB860;
  if (!qword_2A14FB860)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FF0A4()
{
  v2 = qword_2A14FB868;
  if (!qword_2A14FB868)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix3f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FF124(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FF15C();
  result = sub_29B0FF00C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FF15C()
{
  v2 = qword_2A14FB870;
  if (!qword_2A14FB870)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FF1F4()
{
  v2 = qword_2A14FB878;
  if (!qword_2A14FB878)
  {
    sub_29B0B7EBC(&qword_2A14FB880);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB878);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FF27C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FEC44();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10A81C();
}

unint64_t sub_29B0FF2C0(void *a1)
{
  a1[1] = sub_29B0FF304();
  a1[2] = sub_29B0FF41C();
  result = sub_29B0FF49C();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FF304()
{
  v2 = qword_2A14FB888;
  if (!qword_2A14FB888)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB888);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2f_()
{
  v4 = qword_2A14FBF10;
  if (!qword_2A14FBF10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF10);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FF41C()
{
  v2 = qword_2A14FB890;
  if (!qword_2A14FB890)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB890);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FF49C()
{
  v2 = qword_2A14FB898;
  if (!qword_2A14FB898)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FF534()
{
  v2 = qword_2A14FB8A0;
  if (!qword_2A14FB8A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix2f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix2f()
{
  v4 = qword_2A14FBF08;
  if (!qword_2A14FBF08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF08);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FF6B8(uint64_t a1)
{
  result = sub_29B0FF6E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FF6E4()
{
  v2 = qword_2A14FB8A8;
  if (!qword_2A14FB8A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FF814(uint64_t a1)
{
  result = sub_29B0FF840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FF840()
{
  v2 = qword_2A14FB8B0;
  if (!qword_2A14FB8B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FF8D8()
{
  v2 = qword_2A14FB8B8;
  if (!qword_2A14FB8B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix2f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FF958(uint64_t a1)
{
  *(a1 + 8) = sub_29B0FF990();
  result = sub_29B0FF840();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0FF990()
{
  v2 = qword_2A14FB8C0;
  if (!qword_2A14FB8C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FFA28()
{
  v2 = qword_2A14FB8C8;
  if (!qword_2A14FB8C8)
  {
    sub_29B0B7EBC(&qword_2A14FB8D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8C8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0FFAB0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FF49C();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10A444();
}

unint64_t sub_29B0FFAF4(void *a1)
{
  a1[1] = sub_29B0FFB38();
  a1[2] = sub_29B0FFC50();
  result = sub_29B0FFCD0();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0FFB38()
{
  v2 = qword_2A14FB8D8;
  if (!qword_2A14FB8D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4d_()
{
  v4 = qword_2A14FBF00;
  if (!qword_2A14FBF00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBF00);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FFC50()
{
  v2 = qword_2A14FB8E0;
  if (!qword_2A14FB8E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FFCD0()
{
  v2 = qword_2A14FB8E8;
  if (!qword_2A14FB8E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0FFD68()
{
  v2 = qword_2A14FB8F0;
  if (!qword_2A14FB8F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix4d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix4d()
{
  v4 = qword_2A14FBEF8;
  if (!qword_2A14FBEF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBEF8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0FFEF4(uint64_t a1)
{
  result = sub_29B0FFF20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0FFF20()
{
  v2 = qword_2A14FB8F8;
  if (!qword_2A14FB8F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB8F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10006C(uint64_t a1)
{
  result = sub_29B100098();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B100098()
{
  v2 = qword_2A14FB900;
  if (!qword_2A14FB900)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B100130()
{
  v2 = qword_2A14FB908;
  if (!qword_2A14FB908)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix4d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB908);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1001B0(uint64_t a1)
{
  *(a1 + 8) = sub_29B1001E8();
  result = sub_29B100098();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B1001E8()
{
  v2 = qword_2A14FB910;
  if (!qword_2A14FB910)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix4d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB910);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B100280()
{
  v2 = qword_2A14FB918;
  if (!qword_2A14FB918)
  {
    sub_29B0B7EBC(&qword_2A14FB920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB918);
    return WitnessTable;
  }

  return v2;
}

void sub_29B100308(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0FFCD0();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10A338();
}

unint64_t sub_29B10034C(void *a1)
{
  a1[1] = sub_29B100390();
  a1[2] = sub_29B1004A8();
  result = sub_29B100528();
  a1[3] = result;
  return result;
}

unint64_t sub_29B100390()
{
  v2 = qword_2A14FB928;
  if (!qword_2A14FB928)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB928);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3d_()
{
  v4 = qword_2A14FBEF0;
  if (!qword_2A14FBEF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBEF0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B1004A8()
{
  v2 = qword_2A14FB930;
  if (!qword_2A14FB930)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B100528()
{
  v2 = qword_2A14FB938;
  if (!qword_2A14FB938)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB938);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1005C0()
{
  v2 = qword_2A14FB940;
  if (!qword_2A14FB940)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix3d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB940);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix3d()
{
  v4 = qword_2A14FBEE8;
  if (!qword_2A14FBEE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBEE8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B10074C(uint64_t a1)
{
  result = sub_29B100778();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B100778()
{
  v2 = qword_2A14FB948;
  if (!qword_2A14FB948)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1008C4(uint64_t a1)
{
  result = sub_29B1008F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B1008F0()
{
  v2 = qword_2A14FB950;
  if (!qword_2A14FB950)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB950);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B100988()
{
  v2 = qword_2A14FB958;
  if (!qword_2A14FB958)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix3d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B100A08(uint64_t a1)
{
  *(a1 + 8) = sub_29B100A40();
  result = sub_29B1008F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B100A40()
{
  v2 = qword_2A14FB960;
  if (!qword_2A14FB960)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB960);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B100AD8()
{
  v2 = qword_2A14FB968;
  if (!qword_2A14FB968)
  {
    sub_29B0B7EBC(&qword_2A14FB970);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB968);
    return WitnessTable;
  }

  return v2;
}

void sub_29B100B60(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B100528();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B109F14();
}

unint64_t sub_29B100BA4(void *a1)
{
  a1[1] = sub_29B100BE8();
  a1[2] = sub_29B100D00();
  result = sub_29B100D80();
  a1[3] = result;
  return result;
}

unint64_t sub_29B100BE8()
{
  v2 = qword_2A14FB978;
  if (!qword_2A14FB978)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB978);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2d_()
{
  v4 = qword_2A14FBEE0;
  if (!qword_2A14FBEE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBEE0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B100D00()
{
  v2 = qword_2A14FB980;
  if (!qword_2A14FB980)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B100D80()
{
  v2 = qword_2A14FB988;
  if (!qword_2A14FB988)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B100E18()
{
  v2 = qword_2A14FB990;
  if (!qword_2A14FB990)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix2d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB990);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix2d()
{
  v4 = qword_2A14FBED8;
  if (!qword_2A14FBED8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBED8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B100F9C(uint64_t a1)
{
  result = sub_29B100FC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B100FC8()
{
  v2 = qword_2A14FB998;
  if (!qword_2A14FB998)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1010F8(uint64_t a1)
{
  result = sub_29B101124();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B101124()
{
  v2 = qword_2A14FB9A0;
  if (!qword_2A14FB9A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1011BC()
{
  v2 = qword_2A14FB9A8;
  if (!qword_2A14FB9A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfMatrix2d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10123C(uint64_t a1)
{
  *(a1 + 8) = sub_29B101274();
  result = sub_29B101124();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B101274()
{
  v2 = qword_2A14FB9B0;
  if (!qword_2A14FB9B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfMatrix2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10130C()
{
  v2 = qword_2A14FB9B8;
  if (!qword_2A14FB9B8)
  {
    sub_29B0B7EBC(&qword_2A14FB9C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9B8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B101394(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B100D80();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B109B34();
}

unint64_t sub_29B1013D8(void *a1)
{
  a1[1] = sub_29B10141C();
  a1[2] = sub_29B101534();
  result = sub_29B1015B4();
  a1[3] = result;
  return result;
}

unint64_t sub_29B10141C()
{
  v2 = qword_2A14FB9C8;
  if (!qword_2A14FB9C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3f_()
{
  v4 = qword_2A14FBED0;
  if (!qword_2A14FBED0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBED0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B101534()
{
  v2 = qword_2A14FB9D0;
  if (!qword_2A14FB9D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1015B4()
{
  v2 = qword_2A14FB9D8;
  if (!qword_2A14FB9D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10164C()
{
  v2 = qword_2A14FB9E0;
  if (!qword_2A14FB9E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange3f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange3f()
{
  v4 = qword_2A14FBEC8;
  if (!qword_2A14FBEC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBEC8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B1017D4(uint64_t a1)
{
  result = sub_29B101800();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B101800()
{
  v2 = qword_2A14FB9E8;
  if (!qword_2A14FB9E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B101958(uint64_t a1)
{
  result = sub_29B101984();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B101984()
{
  v2 = qword_2A14FB9F0;
  if (!qword_2A14FB9F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B101A1C()
{
  v2 = qword_2A14FB9F8;
  if (!qword_2A14FB9F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange3f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB9F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B101A9C(uint64_t a1)
{
  *(a1 + 8) = sub_29B101AD4();
  result = sub_29B101984();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B101AD4()
{
  v2 = qword_2A14FBA00;
  if (!qword_2A14FBA00)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B101B6C()
{
  v2 = qword_2A14FBA08;
  if (!qword_2A14FBA08)
  {
    sub_29B0B7EBC(&qword_2A14FBA10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA08);
    return WitnessTable;
  }

  return v2;
}

void sub_29B101BF4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B1015B4();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B109A28();
}

unint64_t sub_29B101C38(void *a1)
{
  a1[1] = sub_29B101C7C();
  a1[2] = sub_29B101D94();
  result = sub_29B101E14();
  a1[3] = result;
  return result;
}

unint64_t sub_29B101C7C()
{
  v2 = qword_2A14FBA18;
  if (!qword_2A14FBA18)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA18);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3d_()
{
  v4 = qword_2A14FBEC0;
  if (!qword_2A14FBEC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBEC0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B101D94()
{
  v2 = qword_2A14FBA20;
  if (!qword_2A14FBA20)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B101E14()
{
  v2 = qword_2A14FBA28;
  if (!qword_2A14FBA28)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B101EAC()
{
  v2 = qword_2A14FBA30;
  if (!qword_2A14FBA30)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange3d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA30);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange3d()
{
  v4 = qword_2A14FBEB8;
  if (!qword_2A14FBEB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBEB8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B102038(uint64_t a1)
{
  result = sub_29B102064();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B102064()
{
  v2 = qword_2A14FBA38;
  if (!qword_2A14FBA38)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1021BC(uint64_t a1)
{
  result = sub_29B1021E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B1021E8()
{
  v2 = qword_2A14FBA40;
  if (!qword_2A14FBA40)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B102280()
{
  v2 = qword_2A14FBA48;
  if (!qword_2A14FBA48)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange3d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B102300(uint64_t a1)
{
  *(a1 + 8) = sub_29B102338();
  result = sub_29B1021E8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B102338()
{
  v2 = qword_2A14FBA50;
  if (!qword_2A14FBA50)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange3d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1023D0()
{
  v2 = qword_2A14FBA58;
  if (!qword_2A14FBA58)
  {
    sub_29B0B7EBC(&qword_2A14FBA60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA58);
    return WitnessTable;
  }

  return v2;
}

void sub_29B102458(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B101E14();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B109908();
}

unint64_t sub_29B10249C(void *a1)
{
  a1[1] = sub_29B1024E0();
  a1[2] = sub_29B1025F8();
  result = sub_29B102678();
  a1[3] = result;
  return result;
}

unint64_t sub_29B1024E0()
{
  v2 = qword_2A14FBA68;
  if (!qword_2A14FBA68)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA68);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2f_()
{
  v4 = qword_2A14FBEB0;
  if (!qword_2A14FBEB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBEB0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B1025F8()
{
  v2 = qword_2A14FBA70;
  if (!qword_2A14FBA70)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B102678()
{
  v2 = qword_2A14FBA78;
  if (!qword_2A14FBA78)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B102710()
{
  v2 = qword_2A14FBA80;
  if (!qword_2A14FBA80)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange2f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA80);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange2f()
{
  v4 = qword_2A14FBEA8;
  if (!qword_2A14FBEA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBEA8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B102894(uint64_t a1)
{
  result = sub_29B1028C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B1028C0()
{
  v2 = qword_2A14FBA88;
  if (!qword_2A14FBA88)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1029F0(uint64_t a1)
{
  result = sub_29B102A1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B102A1C()
{
  v2 = qword_2A14FBA90;
  if (!qword_2A14FBA90)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B102AB4()
{
  v2 = qword_2A14FBA98;
  if (!qword_2A14FBA98)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange2f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBA98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B102B34(uint64_t a1)
{
  *(a1 + 8) = sub_29B102B6C();
  result = sub_29B102A1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B102B6C()
{
  v2 = qword_2A14FBAA0;
  if (!qword_2A14FBAA0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B102C04()
{
  v2 = qword_2A14FBAA8;
  if (!qword_2A14FBAA8)
  {
    sub_29B0B7EBC(&qword_2A14FBAB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAA8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B102C8C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B102678();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B1097CC();
}

unint64_t sub_29B102CD0(void *a1)
{
  a1[1] = sub_29B102D14();
  a1[2] = sub_29B102E2C();
  result = sub_29B102EAC();
  a1[3] = result;
  return result;
}

unint64_t sub_29B102D14()
{
  v2 = qword_2A14FBAB8;
  if (!qword_2A14FBAB8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2d_()
{
  v4 = qword_2A14FBEA0;
  if (!qword_2A14FBEA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBEA0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B102E2C()
{
  v2 = qword_2A14FBAC0;
  if (!qword_2A14FBAC0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B102EAC()
{
  v2 = qword_2A14FBAC8;
  if (!qword_2A14FBAC8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B102F44()
{
  v2 = qword_2A14FBAD0;
  if (!qword_2A14FBAD0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange2d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange2d()
{
  v4 = qword_2A14FBE98;
  if (!qword_2A14FBE98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE98);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B1030C8(uint64_t a1)
{
  result = sub_29B1030F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B1030F4()
{
  v2 = qword_2A14FBAD8;
  if (!qword_2A14FBAD8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B103224(uint64_t a1)
{
  result = sub_29B103250();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B103250()
{
  v2 = qword_2A14FBAE0;
  if (!qword_2A14FBAE0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1032E8()
{
  v2 = qword_2A14FBAE8;
  if (!qword_2A14FBAE8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange2d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B103368(uint64_t a1)
{
  *(a1 + 8) = sub_29B1033A0();
  result = sub_29B103250();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B1033A0()
{
  v2 = qword_2A14FBAF0;
  if (!qword_2A14FBAF0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange2d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B103438()
{
  v2 = qword_2A14FBAF8;
  if (!qword_2A14FBAF8)
  {
    sub_29B0B7EBC(&qword_2A14FBB00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBAF8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B1034C0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B102EAC();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B1096C0();
}

unint64_t sub_29B103504(void *a1)
{
  a1[1] = sub_29B103548();
  a1[2] = sub_29B103660();
  result = sub_29B1036E0();
  a1[3] = result;
  return result;
}

unint64_t sub_29B103548()
{
  v2 = qword_2A14FBB08;
  if (!qword_2A14FBB08)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB08);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1f_()
{
  v4 = qword_2A14FBE90;
  if (!qword_2A14FBE90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE90);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B103660()
{
  v2 = qword_2A14FBB10;
  if (!qword_2A14FBB10)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1036E0()
{
  v2 = qword_2A14FBB18;
  if (!qword_2A14FBB18)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B103778()
{
  v2 = qword_2A14FBB20;
  if (!qword_2A14FBB20)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange1f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB20);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange1f()
{
  v4 = qword_2A14FBE88;
  if (!qword_2A14FBE88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE88);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B1038F4(uint64_t a1)
{
  result = sub_29B103920();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B103920()
{
  v2 = qword_2A14FBB28;
  if (!qword_2A14FBB28)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B103A48(uint64_t a1)
{
  result = sub_29B103A74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B103A74()
{
  v2 = qword_2A14FBB30;
  if (!qword_2A14FBB30)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B103B0C()
{
  v2 = qword_2A14FBB38;
  if (!qword_2A14FBB38)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange1f();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B103B8C(uint64_t a1)
{
  *(a1 + 8) = sub_29B103BC4();
  result = sub_29B103A74();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B103BC4()
{
  v2 = qword_2A14FBB40;
  if (!qword_2A14FBB40)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1f_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B103C5C()
{
  v2 = qword_2A14FBB48;
  if (!qword_2A14FBB48)
  {
    sub_29B0B7EBC(&qword_2A14FBB50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB48);
    return WitnessTable;
  }

  return v2;
}

void sub_29B103CE4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B1036E0();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B1095B4();
}

unint64_t sub_29B103D28(void *a1)
{
  a1[1] = sub_29B103D6C();
  a1[2] = sub_29B103E84();
  result = sub_29B103F04();
  a1[3] = result;
  return result;
}

unint64_t sub_29B103D6C()
{
  v2 = qword_2A14FBB58;
  if (!qword_2A14FBB58)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB58);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1d_()
{
  v4 = qword_2A14FBE80;
  if (!qword_2A14FBE80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE80);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B103E84()
{
  v2 = qword_2A14FBB60;
  if (!qword_2A14FBB60)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B103F04()
{
  v2 = qword_2A14FBB68;
  if (!qword_2A14FBB68)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B103F9C()
{
  v2 = qword_2A14FBB70;
  if (!qword_2A14FBB70)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange1d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB70);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange1d()
{
  v4 = qword_2A14FBE78;
  if (!qword_2A14FBE78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE78);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B104118(uint64_t a1)
{
  result = sub_29B104144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B104144()
{
  v2 = qword_2A14FBB78;
  if (!qword_2A14FBB78)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10426C(uint64_t a1)
{
  result = sub_29B104298();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B104298()
{
  v2 = qword_2A14FBB80;
  if (!qword_2A14FBB80)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B104330()
{
  v2 = qword_2A14FBB88;
  if (!qword_2A14FBB88)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRange1d();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1043B0(uint64_t a1)
{
  *(a1 + 8) = sub_29B1043E8();
  result = sub_29B104298();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B1043E8()
{
  v2 = qword_2A14FBB90;
  if (!qword_2A14FBB90)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRange1d_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B104480()
{
  v2 = qword_2A14FBB98;
  if (!qword_2A14FBB98)
  {
    sub_29B0B7EBC(&qword_2A14FBBA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBB98);
    return WitnessTable;
  }

  return v2;
}

void sub_29B104508(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B103F04();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B10949C();
}

unint64_t sub_29B10454C(void *a1)
{
  a1[1] = sub_29B104590();
  a1[2] = sub_29B1046A8();
  result = sub_29B104728();
  a1[3] = result;
  return result;
}

unint64_t sub_29B104590()
{
  v2 = qword_2A14FBBA8;
  if (!qword_2A14FBBA8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfInterval_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBBA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfInterval_()
{
  v4 = qword_2A14FBE70;
  if (!qword_2A14FBE70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE70);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B1046A8()
{
  v2 = qword_2A14FBBB0;
  if (!qword_2A14FBBB0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfInterval_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBBB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B104728()
{
  v2 = qword_2A14FBBB8;
  if (!qword_2A14FBBB8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfInterval_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBBB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1047C0()
{
  v2 = qword_2A14FBBC0;
  if (!qword_2A14FBBC0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfInterval();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBBC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfInterval()
{
  v4 = qword_2A14FBE68;
  if (!qword_2A14FBE68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE68);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B104950(uint64_t a1)
{
  result = sub_29B10497C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B10497C()
{
  v2 = qword_2A14FBBC8;
  if (!qword_2A14FBBC8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfInterval_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBBC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B104AB4(uint64_t a1)
{
  result = sub_29B104AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B104AE0()
{
  v2 = qword_2A14FBBD0;
  if (!qword_2A14FBBD0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfInterval_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBBD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B104B78()
{
  v2 = qword_2A14FBBD8;
  if (!qword_2A14FBBD8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfInterval();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBBD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B104BF8(uint64_t a1)
{
  *(a1 + 8) = sub_29B104C30();
  result = sub_29B104AE0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B104C30()
{
  v2 = qword_2A14FBBE0;
  if (!qword_2A14FBBE0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfInterval_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBBE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B104CC8()
{
  v2 = qword_2A14FBBE8;
  if (!qword_2A14FBBE8)
  {
    sub_29B0B7EBC(&qword_2A14FBBF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBBE8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B104D50(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B104728();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B109390();
}

unint64_t sub_29B104D94(void *a1)
{
  a1[1] = sub_29B104DD8();
  a1[2] = sub_29B104EF0();
  result = sub_29B104F70();
  a1[3] = result;
  return result;
}

unint64_t sub_29B104DD8()
{
  v2 = qword_2A14FBBF8;
  if (!qword_2A14FBBF8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRect2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBBF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRect2i_()
{
  v4 = qword_2A14FBE60;
  if (!qword_2A14FBE60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE60);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B104EF0()
{
  v2 = qword_2A14FBC00;
  if (!qword_2A14FBC00)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRect2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B104F70()
{
  v2 = qword_2A14FBC08;
  if (!qword_2A14FBC08)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRect2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B105008()
{
  v2 = qword_2A14FBC10;
  if (!qword_2A14FBC10)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRect2i();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC10);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRect2i()
{
  v4 = qword_2A14FBE58;
  if (!qword_2A14FBE58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE58);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B1051A4(uint64_t a1)
{
  result = sub_29B1051D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B1051D0()
{
  v2 = qword_2A14FBC18;
  if (!qword_2A14FBC18)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRect2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B105318(uint64_t a1)
{
  result = sub_29B105344();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B105344()
{
  v2 = qword_2A14FBC20;
  if (!qword_2A14FBC20)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRect2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1053DC()
{
  v2 = qword_2A14FBC28;
  if (!qword_2A14FBC28)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfRect2i();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10545C(uint64_t a1)
{
  *(a1 + 8) = sub_29B105494();
  result = sub_29B105344();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B105494()
{
  v2 = qword_2A14FBC30;
  if (!qword_2A14FBC30)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfRect2i_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10552C()
{
  v2 = qword_2A14FBC38;
  if (!qword_2A14FBC38)
  {
    sub_29B0B7EBC(&qword_2A14FBC40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC38);
    return WitnessTable;
  }

  return v2;
}

void sub_29B1055B4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B104F70();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B108F5C();
}

unint64_t sub_29B1055F8(void *a1)
{
  a1[1] = sub_29B10563C();
  a1[2] = sub_29B105754();
  result = sub_29B1057D4();
  a1[3] = result;
  return result;
}

unint64_t sub_29B10563C()
{
  v2 = qword_2A14FBC48;
  if (!qword_2A14FBC48)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC48);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___()
{
  v4 = qword_2A14FBE50;
  if (!qword_2A14FBE50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE50);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B105754()
{
  v2 = qword_2A14FBC50;
  if (!qword_2A14FBC50)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1057D4()
{
  v2 = qword_2A14FBC58;
  if (!qword_2A14FBC58)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1058B8(uint64_t a1)
{
  result = sub_29B1058E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B1058E4()
{
  v2 = qword_2A14FBC60;
  if (!qword_2A14FBC60)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B105A18(uint64_t a1)
{
  result = sub_29B105A44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B105A44()
{
  v2 = qword_2A14FBC68;
  if (!qword_2A14FBC68)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B105ADC(uint64_t a1)
{
  *(a1 + 8) = sub_29B105B14();
  result = sub_29B105A44();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B105B14()
{
  v2 = qword_2A14FBC70;
  if (!qword_2A14FBC70)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B105BAC()
{
  v2 = qword_2A14FBC78;
  if (!qword_2A14FBC78)
  {
    sub_29B0B7EBC(&qword_2A14FBC80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC78);
    return WitnessTable;
  }

  return v2;
}

void sub_29B105C34(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B1057D4();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B108E50();
}

unint64_t sub_29B105C78(void *a1)
{
  a1[1] = sub_29B105CBC();
  a1[2] = sub_29B105DD4();
  result = sub_29B105E54();
  a1[3] = result;
  return result;
}

unint64_t sub_29B105CBC()
{
  v2 = qword_2A14FBC88;
  if (!qword_2A14FBC88)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.TfToken_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC88);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.TfToken_()
{
  v4 = qword_2A14FBE48;
  if (!qword_2A14FBE48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE48);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B105DD4()
{
  v2 = qword_2A14FBC90;
  if (!qword_2A14FBC90)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.TfToken_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B105E54()
{
  v2 = qword_2A14FBC98;
  if (!qword_2A14FBC98)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.TfToken_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBC98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B105F38(uint64_t a1)
{
  result = sub_29B105F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B105F64()
{
  v2 = qword_2A14FBCA0;
  if (!qword_2A14FBCA0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.TfToken_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B106090(uint64_t a1)
{
  result = sub_29B1060BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B1060BC()
{
  v2 = qword_2A14FBCA8;
  if (!qword_2A14FBCA8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.TfToken_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B106154(uint64_t a1)
{
  *(a1 + 8) = sub_29B10618C();
  result = sub_29B1060BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B10618C()
{
  v2 = qword_2A14FBCB0;
  if (!qword_2A14FBCB0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.TfToken_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B106224()
{
  v2 = qword_2A14FBCB8;
  if (!qword_2A14FBCB8)
  {
    sub_29B0B7EBC(&qword_2A14FBCC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCB8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B1062AC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B105E54();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29A843CA0();
}

unint64_t sub_29B1062F0(void *a1)
{
  a1[1] = sub_29B106334();
  a1[2] = sub_29B10644C();
  result = sub_29B1064CC();
  a1[3] = result;
  return result;
}

unint64_t sub_29B106334()
{
  v2 = qword_2A14FBCC8;
  if (!qword_2A14FBCC8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuath_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuath_()
{
  v4 = qword_2A14FBE40;
  if (!qword_2A14FBE40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE40);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B10644C()
{
  v2 = qword_2A14FBCD0;
  if (!qword_2A14FBCD0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuath_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1064CC()
{
  v2 = qword_2A14FBCD8;
  if (!qword_2A14FBCD8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuath_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B106564()
{
  v2 = qword_2A14FBCE0;
  if (!qword_2A14FBCE0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuath()
{
  v4 = qword_2A14FBE38;
  if (!qword_2A14FBE38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE38);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B1066FC(uint64_t a1)
{
  result = sub_29B106728();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B106728()
{
  v2 = qword_2A14FBCE8;
  if (!qword_2A14FBCE8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuath_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10686C(uint64_t a1)
{
  result = sub_29B106898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B106898()
{
  v2 = qword_2A14FBCF0;
  if (!qword_2A14FBCF0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuath_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B106930()
{
  v2 = qword_2A14FBCF8;
  if (!qword_2A14FBCF8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBCF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1069B0(uint64_t a1)
{
  *(a1 + 8) = sub_29B1069E8();
  result = sub_29B106898();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B1069E8()
{
  v2 = qword_2A14FBD00;
  if (!qword_2A14FBD00)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuath_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B106A80()
{
  v2 = qword_2A14FBD08;
  if (!qword_2A14FBD08)
  {
    sub_29B0B7EBC(&qword_2A14FBD10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD08);
    return WitnessTable;
  }

  return v2;
}

void sub_29B106B08(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B1064CC();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B108C68();
}

unint64_t sub_29B106B4C(void *a1)
{
  a1[1] = sub_29B106B90();
  a1[2] = sub_29B106CA8();
  result = sub_29B106D28();
  a1[3] = result;
  return result;
}

unint64_t sub_29B106B90()
{
  v2 = qword_2A14FBD18;
  if (!qword_2A14FBD18)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatf_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD18);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatf_()
{
  v4 = qword_2A14FBE30;
  if (!qword_2A14FBE30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE30);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B106CA8()
{
  v2 = qword_2A14FBD20;
  if (!qword_2A14FBD20)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatf_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B106D28()
{
  v2 = qword_2A14FBD28;
  if (!qword_2A14FBD28)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatf_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B106DC0()
{
  v2 = qword_2A14FBD30;
  if (!qword_2A14FBD30)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuatf();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD30);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuatf()
{
  v4 = qword_2A14FBE28;
  if (!qword_2A14FBE28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE28);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B106F44(uint64_t a1)
{
  result = sub_29B106F70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B106F70()
{
  v2 = qword_2A14FBD38;
  if (!qword_2A14FBD38)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatf_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1070A0(uint64_t a1)
{
  result = sub_29B1070CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B1070CC()
{
  v2 = qword_2A14FBD40;
  if (!qword_2A14FBD40)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatf_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B107164()
{
  v2 = qword_2A14FBD48;
  if (!qword_2A14FBD48)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuatf();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1071E4(uint64_t a1)
{
  *(a1 + 8) = sub_29B10721C();
  result = sub_29B1070CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B10721C()
{
  v2 = qword_2A14FBD50;
  if (!qword_2A14FBD50)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatf_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1072B4()
{
  v2 = qword_2A14FBD58;
  if (!qword_2A14FBD58)
  {
    sub_29B0B7EBC(&qword_2A14FBD60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD58);
    return WitnessTable;
  }

  return v2;
}

void sub_29B10733C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B106D28();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B108B50();
}

unint64_t sub_29B107380(void *a1)
{
  a1[1] = sub_29B1073C4();
  a1[2] = sub_29B1074DC();
  result = sub_29B10755C();
  a1[3] = result;
  return result;
}

unint64_t sub_29B1073C4()
{
  v2 = qword_2A14FBD68;
  if (!qword_2A14FBD68)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatd_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD68);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatd_()
{
  v4 = qword_2A14FBE20;
  if (!qword_2A14FBE20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE20);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B1074DC()
{
  v2 = qword_2A14FBD70;
  if (!qword_2A14FBD70)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatd_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10755C()
{
  v2 = qword_2A14FBD78;
  if (!qword_2A14FBD78)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatd_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1075F4()
{
  v2 = qword_2A14FBD80;
  if (!qword_2A14FBD80)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuatd();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD80);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuatd()
{
  v4 = qword_2A14FBE18;
  if (!qword_2A14FBE18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE18);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B107778(uint64_t a1)
{
  result = sub_29B1077A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B1077A4()
{
  v2 = qword_2A14FBD88;
  if (!qword_2A14FBD88)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatd_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1078D4(uint64_t a1)
{
  result = sub_29B107900();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B107900()
{
  v2 = qword_2A14FBD90;
  if (!qword_2A14FBD90)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatd_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B107998()
{
  v2 = qword_2A14FBD98;
  if (!qword_2A14FBD98)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuatd();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBD98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B107A18(uint64_t a1)
{
  *(a1 + 8) = sub_29B107A50();
  result = sub_29B107900();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B107A50()
{
  v2 = qword_2A14FBDA0;
  if (!qword_2A14FBDA0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuatd_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B107AE8()
{
  v2 = qword_2A14FBDA8;
  if (!qword_2A14FBDA8)
  {
    sub_29B0B7EBC(&qword_2A14FBDB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDA8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B107B70(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B10755C();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B108A44();
}

unint64_t sub_29B107BB4(void *a1)
{
  a1[1] = sub_29B107BF8();
  a1[2] = sub_29B107D10();
  result = sub_29B107D90();
  a1[3] = result;
  return result;
}

unint64_t sub_29B107BF8()
{
  v2 = qword_2A14FBDB8;
  if (!qword_2A14FBDB8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuaternion_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuaternion_()
{
  v4 = qword_2A14FBE10;
  if (!qword_2A14FBE10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE10);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B107D10()
{
  v2 = qword_2A14FBDC0;
  if (!qword_2A14FBDC0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuaternion_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B107D90()
{
  v2 = qword_2A14FBDC8;
  if (!qword_2A14FBDC8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuaternion_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B107E28()
{
  v2 = qword_2A14FBDD0;
  if (!qword_2A14FBDD0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuaternion();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuaternion()
{
  v4 = qword_2A14FBE08;
  if (!qword_2A14FBE08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FBE08);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B107FAC(uint64_t a1)
{
  result = sub_29B107FD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B107FD8()
{
  v2 = qword_2A14FBDD8;
  if (!qword_2A14FBDD8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuaternion_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B108108(uint64_t a1)
{
  result = sub_29B108134();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B108134()
{
  v2 = qword_2A14FBDE0;
  if (!qword_2A14FBDE0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuaternion_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B1081CC()
{
  v2 = qword_2A14FBDE8;
  if (!qword_2A14FBDE8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.GfQuaternion();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10824C(uint64_t a1)
{
  *(a1 + 8) = sub_29B108284();
  result = sub_29B108134();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B108284()
{
  v2 = qword_2A14FBDF0;
  if (!qword_2A14FBDF0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.GfQuaternion_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B10831C()
{
  v2 = qword_2A14FBDF8;
  if (!qword_2A14FBDF8)
  {
    sub_29B0B7EBC(&qword_2A14FBE00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FBDF8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B1083A4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B107D90();
  _VtArray_Sequence<>.makeIterator()(a1, v2, v3, a2);
  sub_29B108938();
}

uint64_t sub_29B1083E8()
{
  v2 = swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return v2;
}

unint64_t sub_29B1084C4(char *a1, char *a2, uint64_t a3)
{
  v7 = *(*(a3 - 8) + 80);
  if ((v7 & 0x20000) != 0)
  {
    v4 = *a2;

    *a1 = v4;
    return *a1 + ((v7 + 16) & ~v7);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    (*(*(*(a3 + 16) - 8) + 16))(&a1[*(a3 + 40)], &a2[*(a3 + 40)]);
    return a1;
  }
}

char *sub_29B108624(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  (*(*(*(a3 + 16) - 8) + 16))(&a1[*(a3 + 40)], &a2[*(a3 + 40)]);
  return a1;
}

char *sub_29B10869C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  (*(*(*(a3 + 16) - 8) + 24))(&a1[*(a3 + 40)], &a2[*(a3 + 40)]);
  return a1;
}

char *sub_29B108714(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  (*(*(*(a3 + 16) - 8) + 32))(&a1[*(a3 + 40)], &a2[*(a3 + 40)]);
  return a1;
}

char *sub_29B10878C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  (*(*(*(a3 + 16) - 8) + 40))(&a1[*(a3 + 40)], &a2[*(a3 + 40)]);
  return a1;
}

__n128 sub_29B10890C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_29B109050(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 32))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_29B109198(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

__n128 sub_29B1099FC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_29B109C58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 72))
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

uint64_t sub_29B109D38(uint64_t result, int a2, int a3)
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
    if (a3)
    {
      *(result + 72) = 1;
    }
  }

  else if (a3)
  {
    *(result + 72) = 0;
  }

  return result;
}

uint64_t sub_29B10A038(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 128))
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

uint64_t sub_29B10A140(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    if (a3)
    {
      *(result + 128) = 1;
    }
  }

  else if (a3)
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t sub_29B10A568(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 36))
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

uint64_t sub_29B10A648(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3)
    {
      *(result + 36) = 1;
    }
  }

  else if (a3)
  {
    *(result + 36) = 0;
  }

  return result;
}

uint64_t sub_29B10A940(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 64))
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

uint64_t sub_29B10AA48(uint64_t result, int a2, int a3)
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
    if (a3)
    {
      *(result + 64) = 1;
    }
  }

  else if (a3)
  {
    *(result + 64) = 0;
  }

  return result;
}

uint64_t sub_29B10B144(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_29B10B158(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 12))
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

uint64_t sub_29B10B268(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (a3)
    {
      *(result + 12) = 1;
    }
  }

  else if (a3)
  {
    *(result + 12) = 0;
  }

  return result;
}

uint64_t sub_29B10B60C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
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

uint64_t sub_29B10B714(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_29B10B9BC(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  return result;
}

uint64_t sub_29B10B9D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 6))
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

uint64_t sub_29B10BAE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    if (a3)
    {
      *(result + 6) = 1;
    }
  }

  else if (a3)
  {
    *(result + 6) = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<long long>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<long long>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<long long>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<int>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<int>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<int>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<int>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<int>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<int>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<short>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<short>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<short>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<short>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<short>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<short>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<char>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<char>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<char>::begin()
{
  pxrInternal__aapl__pxrReserved__::VtArray<char>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<char>::operator[]()
{
  pxrInternal__aapl__pxrReserved__::VtArray<char>::data();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::end()
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::data();
}

{
    ;
  }
}