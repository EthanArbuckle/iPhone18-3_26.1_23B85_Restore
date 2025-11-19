uint64_t sub_100316D0C()
{
  v1 = *(v0 + 16);

  sub_100002580((v0 + 24));
  return v0;
}

uint64_t sub_100316D64(uint64_t a1)
{
  v2 = type metadata accessor for TightbeamEndpoint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  (*(v3 + 16))(v6, a1, v2);
  v8 = type metadata accessor for ClientConnection();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = ClientConnection.init(endpoint:)();
  (*(v3 + 8))(a1, v2);
  *(v7 + 16) = v11;
  return v7;
}

uint64_t sub_100316E88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = type metadata accessor for ClientConnection();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = ClientConnection.init(endpoint:)();
  (*(v5 + 8))(a1, v4);
  *(v2 + 16) = v11;
  return v2;
}

uint64_t sub_100316FA0(Swift::UInt64 a1)
{
  v20 = a1;
  v3 = type metadata accessor for TightbeamEncoder();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for TightbeamMessage();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - v12;
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = *(v1 + 16);
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v2)
  {
    v17 = v22;
    type metadata accessor for TransportError();
    sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v19 = v17;
  }

  else
  {
    (*(v21 + 32))(v13, v15, v5);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0x7F1459E11F2AC8CBuLL);
    TightbeamEncoder.encode(_:)(v20);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    return (*(v21 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_10031727C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  v10 = type metadata accessor for ClientConnection();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = ClientConnection.init(endpoint:)();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v13;
  *a2 = v9;
  return result;
}

uint64_t sub_1003173C0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = type metadata accessor for TightbeamEndpoint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  sub_10000D9FC(a2, v13 + 24);
  (*(v9 + 16))(v12, a1, v8);
  v14 = sub_100024A2C(a3, a4);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v13 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  sub_100002580(a2);
  (*(v9 + 8))(a1, v8);
  return v13;
}

uint64_t sub_100317538(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for TightbeamEndpoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D9FC(a2, v7 + 24);
  (*(v11 + 16))(v14, a1, v10);
  v15 = sub_100024A2C(a3, a4);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v7 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  sub_100002580(a2);
  (*(v11 + 8))(a1, v10);
  return v7;
}

uint64_t sub_100317688@<X0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = v2;
  v45 = a2;
  v4 = sub_100024A2C(&qword_10042FA18, &qword_100399B78);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v43 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - v13;
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = type metadata accessor for TightbeamEncoder();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v48 = v17;
  v49 = v16;
  v44 = v19;
  (v19)(v16, 1, 1);
  v20 = TightbeamDecoder.decode(as:)();
  if (v20 == 0xF36AAD1A335EC889)
  {
    v28 = v3[6];
    v29 = v3[7];
    sub_10000D9B8(v3 + 3, v28);
    (*(v29 + 16))(v28, v29);
    v30 = v47;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    if (v30)
    {
      goto LABEL_14;
    }

    v25 = v48;
    v44(v11, 0, 1, v48);
    v26 = *(v18 + 48);
    v27 = v49;
    v14 = v11;
    if (v26(v49, 1, v25) == 1)
    {
LABEL_9:
      sub_10031892C(v14, v27);
      v31 = v26(v27, 1, v25);
      v32 = v31;
      if (v31 == 1)
      {
        v33 = v45;
      }

      else
      {
        v33 = v45;
        if (v31)
        {
          sub_1003188C4(v27);
          v32 = 1;
        }

        else
        {
          TightbeamEncoder.complete()();
        }
      }

      v41 = type metadata accessor for TightbeamMessage();
      return (*(*(v41 - 8) + 56))(v33, v32, 1, v41);
    }

LABEL_8:
    sub_1003188C4(v27);
    goto LABEL_9;
  }

  v21 = v20;
  if (v20 != 0x712657D6300C16CELL)
  {
    if (v20 != 0x7F1459E11F2AC8CBLL)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v51 = 0xD00000000000002ELL;
      v52 = 0x80000001003B0D50;
      v53 = v21;
      v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v42);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v34 = v3[6];
    v35 = v3[7];
    sub_10000D9B8(v3 + 3, v34);
    v36 = TightbeamDecoder.decode(as:)();
    (*(v35 + 8))(v36, v34, v35);
    v37 = v47;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    if (v37)
    {
      goto LABEL_14;
    }

    v25 = v48;
    v44(v14, 0, 1, v48);
    v26 = *(v18 + 48);
    v27 = v49;
    if (v26(v49, 1, v25) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v22 = v3[6];
  v23 = v3[7];
  sub_10000D9B8(v3 + 3, v22);
  (*(v23 + 24))(v22, v23);
  v24 = v47;
  _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
  if (!v24)
  {
    v25 = v48;
    v44(v8, 0, 1, v48);
    v26 = *(v18 + 48);
    v27 = v49;
    v14 = v8;
    if (v26(v49, 1, v25) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  v38 = v50;
  v39 = v49;
  result = (*(v18 + 48))(v49, 1, v48);
  if (result != 1)
  {
    result = sub_1003188C4(v39);
  }

  *v46 = v38;
  return result;
}

uint64_t sub_100317BD8()
{
  v1 = *(v0 + 16);

  sub_100002580((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100317C44(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, int *))
{
  v8 = *v5;
  result = a5(a1, &v10);
  if (v6)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t sub_100317C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v18[2] = a2;
  v5 = a5;
  v18[1] = a1;
  v8 = a5 >> 8;
  v9 = HIWORD(a5);
  v10 = HIBYTE(a5);
  v11 = type metadata accessor for TightbeamMessage.BufferUsage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for TightbeamMessage.BufferUsage.writing(_:), v11);
  v18[6] = a3;
  v18[7] = a4;
  v19 = v5;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  type metadata accessor for TransportError();
  sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
  v16 = v18[3];
  _s9Tightbeam0A7MessageV17withBufferPointer3for__xAC0D5UsageO_Srys5UInt8VGxACnq_YKXEtq_YKs5ErrorR_r0_lFZ();
  if (!v16)
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v12 + 8))(v15, v11);
  return v23;
}

uint64_t sub_100317E80(uint64_t a1, Swift::UInt64 a2, Swift::UInt64 a3, unsigned int a4)
{
  v4 = a4;
  v7 = a4 >> 8;
  v8 = HIWORD(a4);
  v9 = HIBYTE(a4);
  v10 = type metadata accessor for TightbeamEncoder();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TightbeamMessage.encoder()();
  TightbeamEncoder.encode(_:)(a2);
  TightbeamEncoder.encode(_:)(a3);
  TightbeamEncoder.encode(_:)(v4);
  TightbeamEncoder.encode(_:)(v7);
  TightbeamEncoder.encode(_:)(v8);
  TightbeamEncoder.encode(_:)(v9);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100317FA8()
{
  v1 = type metadata accessor for TightbeamMessage.BufferUsage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for TightbeamMessage.BufferUsage.reading(_:), v1);
  type metadata accessor for TransportError();
  sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
  _s9Tightbeam0A7MessageV17withBufferPointer3for__xAC0D5UsageO_Srys5UInt8VGxACnq_YKXEtq_YKs5ErrorR_r0_lFZ();
  (*(v2 + 8))(v5, v1);
  if (v0)
  {
    return v8;
  }

  else
  {
    return v7[1];
  }
}

uint64_t sub_100318170@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TightbeamDecoder();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TightbeamDecoder.init(message:)();
  v7 = TightbeamDecoder.decode(as:)();
  v8 = TightbeamDecoder.decode(as:)();
  v9 = TightbeamDecoder.decode(as:)();
  v10 = TightbeamDecoder.decode(as:)();
  v11 = TightbeamDecoder.decode(as:)();
  v12 = TightbeamDecoder.decode(as:)();
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 17) = v10;
  *(a1 + 18) = v11;
  *(a1 + 19) = v12;
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1003182A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TightbeamMessage.BufferUsage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 104))(v11, enum case for TightbeamMessage.BufferUsage.writing(_:), v7);
  v14 = a3;
  v15 = a4;
  type metadata accessor for TransportError();
  sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
  _s9Tightbeam0A7MessageV17withBufferPointer3for__xAC0D5UsageO_Srys5UInt8VGxACnq_YKXEtq_YKs5ErrorR_r0_lFZ();
  if (!v4)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v8 + 8))(v11, v7);
  return v16;
}

uint64_t sub_100318470(uint64_t a1, Swift::UInt64 a2, Swift::UInt64 a3)
{
  v5 = type metadata accessor for TightbeamEncoder();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TightbeamMessage.encoder()();
  TightbeamEncoder.encode(_:)(a2);
  TightbeamEncoder.encode(_:)(a3);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100318558()
{
  v1 = type metadata accessor for TightbeamMessage.BufferUsage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for TightbeamMessage.BufferUsage.reading(_:), v1);
  type metadata accessor for TransportError();
  sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError);
  _s9Tightbeam0A7MessageV17withBufferPointer3for__xAC0D5UsageO_Srys5UInt8VGxACnq_YKXEtq_YKs5ErrorR_r0_lFZ();
  (*(v2 + 8))(v5, v1);
  if (v0)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_10031871C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TightbeamDecoder();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TightbeamDecoder.init(message:)();
  v7 = TightbeamDecoder.decode(as:)();
  v8 = TightbeamDecoder.decode(as:)();
  *a1 = v7;
  a1[1] = v8;
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100318808(uint64_t result)
{
  if (result == 64)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  if (result >= 3u)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100318828(uint64_t result)
{
  if (result > 3u)
  {
    switch(result)
    {
      case 0x10u:
        return 5;
      case 8u:
        return 4;
      case 4u:
        return 3;
    }

    return 6;
  }

  if (result >= 3u)
  {
    return 6;
  }

  return result;
}

void type metadata accessor for TransportError()
{
  if (!qword_10042FE18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10042FE18);
    }
  }
}

uint64_t sub_1003188C4(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_10042FA18, &qword_100399B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10031892C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_10042FA18, &qword_100399B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003189FC()
{
  result = qword_10042FA28;
  if (!qword_10042FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042FA28);
  }

  return result;
}

unint64_t sub_100318A54()
{
  result = qword_10042FA30;
  if (!qword_10042FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042FA30);
  }

  return result;
}

uint64_t sub_100318B5C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WifiScanData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WifiScanData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WifiScanData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for BufferUsageStatistics(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BufferUsageStatistics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BufferUsageStatistics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t rpc_afk_interface_find_with_timeout(const char *a1, const char *a2, double a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "fwd");
  interface = rpctools_find_interface(__str, "AFKEndpointInterface", a3);
  *a5 = interface;
  if (interface)
  {
    result = 0;
  }

  else
  {
    result = 5;
  }

  if (a6 && interface)
  {
    snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "rev");
    v13 = rpctools_find_interface(__str, "AFKEndpointInterface", a3);
    *a6 = v13;
    if (v13)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t rpctools_find_interface(const char *a1, char *name, double a3)
{
  v5 = IOServiceMatching(name);
  if (v5)
  {
    v6 = v5;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
    CFRelease(v6);
    if (MutableCopy)
    {
      v8 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(MutableCopy, @"IONameMatch", v8);
      }

      else
      {
        v9 = MutableCopy;
        MutableCopy = 0;
      }

      CFRelease(v9);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  *notification = 0;
  Current = CFRunLoopGetCurrent();
  v11 = IONotificationPortCreate(kIOMainPortDefault);
  if (v11)
  {
    v12 = v11;
    RunLoopSource = IONotificationPortGetRunLoopSource(v11);
    if (RunLoopSource)
    {
      v14 = RunLoopSource;
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
      if (IOServiceAddMatchingNotification(v12, "IOServiceFirstMatch", MutableCopy, sub_100319230, notification, &notification[1]))
      {
        v15 = 0;
        notification[0] = 0;
      }

      else
      {
        v16 = IOIteratorNext(notification[1]);
        v15 = 0;
        notification[0] = v16;
        if (a3 != 0.0 && !v16)
        {
          if (a3 >= 0.0)
          {
            v17 = CFAbsoluteTimeGetCurrent();
            v15 = CFRunLoopTimerCreate(kCFAllocatorDefault, v17 + a3, 0.0, 0, 0, sub_100319280, 0);
            CFRunLoopAddTimer(Current, v15, kCFRunLoopDefaultMode);
          }

          else
          {
            v15 = 0;
          }

          CFRunLoopRun();
        }
      }

      CFRunLoopRemoveSource(Current, v14, kCFRunLoopDefaultMode);
      if (notification[1])
      {
        IOObjectRelease(notification[1]);
      }

      IONotificationPortDestroy(v12);
      if (v15)
      {
        CFRunLoopRemoveTimer(Current, v15, kCFRunLoopDefaultMode);
        CFRunLoopTimerInvalidate(v15);
        CFRelease(v15);
      }
    }

    else
    {
      IONotificationPortDestroy(v12);
    }
  }

  return notification[0];
}

void sub_100319230(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

void sub_100319280()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

char *rpc_get_matching_server(const char *a1)
{
  v5 = 0;
  v1 = sub_100319318(0, a1, &v5);
  v2 = v5;
  if (v1 || !*v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = strdup(*v5);
  }

  sub_100319448(v2);
  return v3;
}

uint64_t sub_100319318(const char *a1, const char *a2, void ***a3)
{
  v13 = 0;
  if (pthread_mutex_lock(&stru_10042FE20))
  {
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v8 = qword_10048B980;
    if (qword_10048B980)
    {
      v9 = 0;
      do
      {
        v9 += sub_100319858(v8, a1, a2);
        v8 = *(v8 + 224);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v7 = sub_1003197F0(8 * v9 + 8, &v13);
    v6 = v13;
    if (v7)
    {
LABEL_9:
      sub_100319448(v6);
      v6 = 0;
    }

    else
    {
      v7 = qword_10048B980;
      if (qword_10048B980)
      {
        v11 = 0;
        do
        {
          if (v11 >= v9)
          {
            v7 = 3;
            goto LABEL_9;
          }

          if (sub_100319858(v7, a1, a2))
          {
            v12 = strdup(v7);
            if (!v12)
            {
              v7 = 4;
              goto LABEL_9;
            }

            v6[v11++] = v12;
          }

          v7 = *(v7 + 224);
        }

        while (v7);
      }
    }

    pthread_mutex_unlock(&stru_10042FE20);
  }

  *a3 = v6;
  return v7;
}

void sub_100319448(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = 1;
      do
      {
        free(v2);
        v2 = a1[v3++];
      }

      while (v2);
    }

    free(a1);
  }
}

void **rpc_get_all_matching_servers(const char *a1)
{
  v2 = 0;
  sub_100319318(0, a1, &v2);
  return v2;
}

char *rpc_get_server_by_name(const char *a1)
{
  v7 = 0;
  v2 = sub_100319318(a1, 0, &v7);
  v3 = 0;
  v4 = v7;
  if (!v2)
  {
    v5 = *v7;
    if (!*v7)
    {
      v5 = a1;
    }

    v3 = strdup(v5);
  }

  sub_100319448(v4);
  return v3;
}

void rpc_release_server(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t rpc_interface_open_with_timeout(const char *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  if (!pthread_mutex_lock(&stru_10042FE20))
  {
    v13 = qword_10048B980;
    if (!qword_10048B980)
    {
      goto LABEL_7;
    }

    while (strcmp(v13, a1) || strcmp((v13 + 128), a2))
    {
      v13 = *(v13 + 224);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v12 = (*(v13 + 192))(*(v13 + 200), a3, a4, a5);
    if (v12 == 5)
    {
LABEL_7:
      v17 = 0;
      if (a5)
      {
        v14 = &v17;
      }

      else
      {
        v14 = 0;
      }

      v15 = rpc_afk_interface_find_with_timeout(a1, a2, a6, a3, &v17 + 1, v14);
      if (v15)
      {
        return v15;
      }

      *a4 = tb_endpoint_create_with_data();
      if (a5)
      {
        *a5 = tb_endpoint_create_with_data();
      }

      v12 = 0;
    }

    pthread_mutex_unlock(&stru_10042FE20);
    return v12;
  }

  return 6;
}

uint64_t rpc_register_static_route(const char *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (strlen(a1) > 0x3F || strlen(a2) > 0x3F || strlen(a3) > 0x3F)
  {
    return 3;
  }

  v10 = malloc_type_malloc(0xE8uLL, 0xF83BD267uLL);
  if (!v10)
  {
    return 4;
  }

  v11 = v10;
  v10[28] = 0;
  *(v10 + 12) = 0u;
  *(v10 + 13) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 4) = 0u;
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  v11[24] = a4;
  v11[25] = a5;
  if (pthread_mutex_lock(&stru_10042FE20))
  {
    free(v11);
    return 6;
  }

  else
  {
    v11[28] = qword_10048B980;
    qword_10048B980 = v11;
    pthread_mutex_unlock(&stru_10042FE20);
    return 0;
  }
}

uint64_t sub_1003197F0(size_t a1, void *a2)
{
  v4 = malloc_type_malloc(a1, 0xF83BD267uLL);
  *a2 = v4;
  if (!v4)
  {
    return 4;
  }

  bzero(v4, a1);
  return 0;
}

void rpc_free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_100319858(char *__s1, const char *a2, const char *a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v6 | v5;
  }

  v5 = strcmp(__s1, a2) == 0;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = strcmp(__s1 + 64, a3) == 0;
  return v6 | v5;
}

uint64_t shmem_map(const char *a1, uint64_t a2, void *a3)
{
  v5 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL);
  v6 = v5;
  if (v5)
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v7 = IOServiceMatching("AFKSharedMemoryRegion");
    if (v7)
    {
      v8 = v7;
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v7);
      CFRelease(v8);
      if (MutableCopy)
      {
        v10 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
        if (v10)
        {
          v11 = v10;
          CFDictionarySetValue(MutableCopy, @"IONameMatch", v10);
        }

        else
        {
          v11 = MutableCopy;
          MutableCopy = 0;
        }

        CFRelease(v11);
      }
    }

    else
    {
      MutableCopy = 0;
    }

    *notification = 0;
    v13 = IONotificationPortCreate(kIOMasterPortDefault);
    RunLoopSource = IONotificationPortGetRunLoopSource(v13);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    if (IOServiceAddMatchingNotification(v13, "IOServiceFirstMatch", MutableCopy, sub_100319B38, notification, &notification[1]))
    {
      *v6 = 0;
LABEL_12:
      v12 = 5;
      goto LABEL_19;
    }

    notification[0] = IOIteratorNext(notification[1]);
    if (!notification[0])
    {
      CFRunLoopRun();
    }

    v16 = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(v16, RunLoopSource, kCFRunLoopDefaultMode);
    IOObjectRelease(notification[1]);
    IONotificationPortDestroy(v13);
    v17 = notification[0];
    *v6 = notification[0];
    if (!v17)
    {
      goto LABEL_12;
    }

    if (!IOServiceOpen(v17, mach_task_self_, 0x61666B6Du, v6 + 1) && !IOConnectMapMemory64(*(v6 + 1), 1u, mach_task_self_, v6 + 1, v6 + 2, 1u))
    {
      v12 = 0;
      goto LABEL_20;
    }

    v12 = 6;
  }

  else
  {
    v12 = 4;
  }

LABEL_19:
  shmem_unmap(v6);
  v6 = 0;
LABEL_20:
  *a3 = v6;
  return v12;
}

uint64_t shmem_unmap(io_object_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      IOServiceClose(v2);
    }

    if (*a1)
    {
      IOObjectRelease(*a1);
    }

    free(a1);
  }

  return 0;
}

uint64_t shmem_get_address(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t shmem_get_size(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void sub_100319B38(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

unint64_t sub_100319BB8()
{
  result = qword_10042FE60;
  if (!qword_10042FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042FE60);
  }

  return result;
}

uint64_t sub_100319C1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100319D1C();
  v6 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v6)
  {
    v7 = &v6[2 * *v6];
    v9 = *v7;
    v8 = v7[1];

    v10._countAndFlagsBits = 35;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);

    v11._countAndFlagsBits = a3;
    v11._object = a4;
    String.append(_:)(v11);

    return v9;
  }

  else
  {
  }

  return a3;
}

unint64_t sub_100319D1C()
{
  result = qword_10042FE68;
  if (!qword_10042FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042FE68);
  }

  return result;
}

uint64_t Logger._fault(_:function:file:line:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7, char a8)
{
  v14 = a1();
  v16 = v15;
  v17 = sub_100319F74(a6, a7, a8);
  v19 = v18;
  v20 = sub_100319F74(a3, a4, a5);
  v22 = sub_100319C1C(v17, v19, v20, v21);
  v24 = v23;

  v25 = static os_log_type_t.fault.getter();
  v26 = Logger.logObject.getter();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_10000234C(v22, v24, &v30);
    *(v27 + 12) = 2080;
    v28 = sub_10000234C(v14, v16, &v30);

    *(v27 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v26, v25, "fault,func,%s,message,%s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  reportBug(type:subType:subTypeContext:fatalCallback:)(0x746C756166, 0xE500000000000000, v22, v24, 0, 0, 0, 0);
}

unint64_t sub_100319F74(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return static String._fromUTF8Repairing(_:)();
    }

LABEL_9:
    __break(1u);
    return static String._fromUTF8Repairing(_:)();
  }

  __break(1u);
  return result;
}

void Logger._fatal(_:function:file:line:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v15 = a1();
  v17 = v16;
  v34 = a8;
  v18 = sub_100319F74(a6, a7, a8);
  v20 = v19;
  v21 = sub_100319F74(a3, a4, a5);
  v23 = sub_100319C1C(v18, v20, v21, v22);
  v25 = v24;

  v26 = static os_log_type_t.error.getter();
  v27 = Logger.logObject.getter();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_10000234C(v23, v25, &v35);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_10000234C(v15, v17, &v35);
    _os_log_impl(&_mh_execute_header, v27, v26, "fatal,func,%s,message,%s", v28, 0x16u);
    swift_arrayDestroy();
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v15;
  *(v29 + 24) = v17;
  *(v29 + 32) = a6;
  *(v29 + 40) = a7;
  *(v29 + 48) = v34;
  *(v29 + 56) = a9;
  swift_bridgeObjectRetain_n();

  reportBug(type:subType:subTypeContext:fatalCallback:)(0x6C61746166, 0xE500000000000000, v23, v25, v15, v17, sub_10031B220, v29);

  [objc_opt_self() sleepForTimeInterval:10.0];
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v30._object = 0x80000001003B0E60;
  v30._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v30);
  Double.write<A>(to:)();
  v31 = v35;
  v32 = v36;
  v35 = v15;
  v36 = v17;

  v33._countAndFlagsBits = v31;
  v33._object = v32;
  String.append(_:)(v33);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10031A640()
{
  v0 = type metadata accessor for Logger();
  sub_100036108(v0, qword_10048BBF8);
  sub_100005DF0(v0, qword_10048BBF8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10031A8D0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100036108(v3, a2);
  sub_100005DF0(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10031AEE4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  sub_100036108(v7, a2);
  v8 = sub_100005DF0(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_100005DF0(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_10031AFD0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_100005DF0(v3, a2);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17[3] = &type metadata for String;
    v17[4] = &protocol witness table for String;
    v17[0] = 7104878;
    v17[1] = 0xE300000000000000;
  }

  else
  {
    v15 = a2;
    v16 = a3;
    v12 = sub_10000DA60(&v14);
    (*(v11 + 32))(v12, v10, a2);
    sub_10002351C(&v14, v17);
  }

  sub_100024A2C(&qword_10042FE70, &qword_100399FC0);
  _print_unlocked<A, B>(_:_:)();
  return sub_100002580(v17);
}

void sub_10031B220()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void reportBug(type:subType:subTypeContext:fatalCallback:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v59 = a8;
  v63 = a7;
  v14 = type metadata accessor for Logger();
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = *(v61 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v58 = &v55 - v19;
  v20 = [objc_allocWithZone(NSProcessInfo) init];
  v64 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  v21 = String._bridgeToObjectiveC()();
  v55 = a1;
  v22 = String._bridgeToObjectiveC()();
  v56 = a3;
  v23 = String._bridgeToObjectiveC()();
  v57 = a5;
  if (a6)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v60 = v20;
  v25 = [v20 processName];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = [v64 signatureWithDomain:v21 type:v22 subType:v23 subtypeContext:v24 detectedProcess:v25 triggerThresholdValues:0];

  if (!v26)
  {
    v40 = sub_10031AA80();
    v42 = v61;
    v41 = v62;
    (*(v61 + 16))(v18, v40, v62);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v63;
    if (v45)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "reportBugBlocking,signature,nil", v47, 2u);
    }

    v48 = (*(v42 + 8))(v18, v41);
    v49 = v60;
    if (v46)
    {
      v46(v48);
    }

    isa = v64;
    goto LABEL_26;
  }

  v27 = v63;
  if (v63)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 6.0;
  }

  v29 = sub_10031AA80();
  v31 = v61;
  v30 = v62;
  v32 = v58;
  (*(v61 + 16))(v58, v29, v62);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v35 = 136315906;
    *(v35 + 4) = sub_10000234C(v55, a2, aBlock);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_10000234C(v56, a4, aBlock);
    *(v35 + 22) = 2080;
    if (a6)
    {
      v36 = v57;
    }

    else
    {
      v36 = 45;
    }

    v37 = v32;
    if (a6)
    {
      v38 = a6;
    }

    else
    {
      v38 = 0xE100000000000000;
    }

    v39 = sub_10000234C(v36, v38, aBlock);

    *(v35 + 24) = v39;
    *(v35 + 32) = 2048;
    *(v35 + 34) = v28;
    _os_log_impl(&_mh_execute_header, v33, v34, "reportBug,type:%s,subtype:%s,context:%s,delay:%f", v35, 0x2Au);
    swift_arrayDestroy();

    v27 = v63;

    (*(v31 + 8))(v37, v62);
  }

  else
  {

    (*(v31 + 8))(v32, v30);
  }

  aBlock[0] = 0;
  v49 = v26;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  if (aBlock[0])
  {

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v51 = swift_allocObject();
    v52 = v59;
    *(v51 + 16) = v27;
    *(v51 + 24) = v52;
    aBlock[4] = sub_10031BEA8;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10031BE18;
    aBlock[3] = &unk_100407858;
    v53 = _Block_copy(aBlock);
    sub_100022B94(v27);

    v54 = v64;
    [v64 snapshotWithSignature:isa delay:0 events:0 payload:0 actions:v53 reply:v28];
    _Block_release(v53);

LABEL_26:
    return;
  }

  __break(1u);
}

uint64_t sub_10031B8C0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v44 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v44 - v12;
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  if (a1)
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v16;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v17 = sub_10031BED8(v49), (v18 & 1) != 0))
    {
      sub_100002524(*(a1 + 56) + 32 * v17, v50);
      sub_10031BF1C(v49);
      sub_10031BF70();
      if (swift_dynamicCast())
      {
        v19 = v47;
        v20 = [v47 BOOLValue];
        v21 = sub_10031AA80();
        v22 = *(v3 + 16);
        if (v20)
        {
          v22(v15, v21, v2);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v23, v24, "reportBug,successful", v25, 2u);
          }

          return (*(v3 + 8))(v15, v2);
        }

        v22(v13, v21, v2);

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v35, v36))
        {
LABEL_25:

          return (*(v3 + 8))(v13, v2);
        }

        v37 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = v45;
        *v37 = 136315138;
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v38;
        AnyHashable.init<A>(_:)();
        if (*(a1 + 16) && (v39 = sub_10031BED8(v49), (v40 & 1) != 0))
        {
          sub_100002524(*(a1 + 56) + 32 * v39, v50);
          sub_10031BF1C(v49);
          if (swift_dynamicCast())
          {
            v41 = v47;
            v42 = v48;
LABEL_24:
            v43 = sub_10000234C(v41, v42, &v46);

            *(v37 + 4) = v43;
            _os_log_impl(&_mh_execute_header, v35, v36, "reportBug,failed,reason,%s ", v37, 0xCu);
            sub_100002580(v45);

            goto LABEL_25;
          }
        }

        else
        {
          sub_10031BF1C(v49);
        }

        v42 = 0xE700000000000000;
        v41 = 0x6E776F6E6B6E75;
        goto LABEL_24;
      }
    }

    else
    {
      sub_10031BF1C(v49);
    }

    v27 = sub_10031AA80();
    (*(v3 + 16))(v10, v27, v2);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "reportBug,response,malformed", v30, 2u);
    }

    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    v31 = sub_10031AA80();
    (*(v3 + 16))(v7, v31, v2);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "reportBug,response,nil", v34, 2u);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_10031BE18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_10031BEA8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = sub_10031B8C0(a1);
  if (v2)
  {
    return v2(result);
  }

  return result;
}

unint64_t sub_10031BED8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10031BFBC(a1, v4);
}

unint64_t sub_10031BF70()
{
  result = qword_100430FE0;
  if (!qword_100430FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100430FE0);
  }

  return result;
}

unint64_t sub_10031BFBC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10031C084(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10031BF1C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10031C1DC()
{
  if (qword_10048BE68 != -1)
  {
    swift_once();
  }

  return qword_10048BE70;
}

unint64_t sub_10031C238(unint64_t result)
{
  if (qword_10048BE68 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_10048BE78))
  {
    if (qword_10048BE70)
    {
      return result * qword_10048BE78 / qword_10048BE70;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall machAbsTimeNs()()
{
  v0 = mach_absolute_time();

  return sub_100004790(v0);
}

Swift::UInt64 __swiftcall machContTimeNs()()
{
  v0 = mach_continuous_time();

  return sub_100004790(v0);
}

uint64_t sub_10031C340()
{
  type metadata accessor for TimesSync();
  result = swift_initStaticObject();
  qword_10048BE58 = result;
  return result;
}

uint64_t *sub_10031C36C()
{
  if (qword_10048BE50 != -1)
  {
    swift_once();
  }

  return &qword_10048BE58;
}

uint64_t static TimesSync.instance.getter()
{
  type metadata accessor for TimesSync();

  return swift_initStaticObject();
}

uint64_t sub_10031C3EC()
{
  v1 = (*(*v0 + 192))();
  if (v2)
  {
    return 1;
  }

  v4 = v1;
  result = mach_continuous_time();
  if (qword_10048BE60 != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
  }

  if (!__CFADD__(v4, qword_100435290))
  {
    return v4 + qword_100435290 < result;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10031C498()
{
  if (qword_10048BE60 != -1)
  {
    swift_once();
  }

  return &qword_100435290;
}

uint64_t sub_10031C4E8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v25 - v9;
  result = (*(*v0 + 112))(v8);
  if (result)
  {
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    mach_get_times();
    if (v30 < v29)
    {
      __break(1u);
    }

    v12 = sub_100004790(v30 - v29);
    (*(*v0 + 152))(v12);
    v13 = v28 * 0.000000001 + v27;
    v14 = sub_100004790(v30);
    (*(*v0 + 176))(v13 - v14 * 0.000000001 - kCFAbsoluteTimeIntervalSince1970);
    (*(*v0 + 200))(v30, 0);
    v15 = sub_10031A9BC();
    v26 = v3;
    v16 = *(v3 + 16);
    v16(v10, v15, v2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349824;
      swift_beginAccess();
      *(v19 + 4) = v29;
      *(v19 + 12) = 2050;
      swift_beginAccess();
      *(v19 + 14) = v30;
      *(v19 + 22) = 2050;
      swift_beginAccess();
      v20 = v28;
      *(v19 + 24) = v27;
      *(v19 + 32) = 2050;
      *(v19 + 34) = v20;
      _os_log_impl(&_mh_execute_header, v17, v18, "TimeSync,mat,%{public}llu,mct,%{public}llu,tp,%{public}ld,%{public}ld", v19, 0x2Au);
    }

    v21 = *(v26 + 8);
    v21(v10, v2);
    v16(v7, v15, v2);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134349312;
      *(v24 + 4) = (*(*v1 + 144))() * 0.000000001;
      *(v24 + 12) = 2050;
      *(v24 + 14) = (*(*v1 + 168))();
      _os_log_impl(&_mh_execute_header, v22, v23, "TimeSync,mct-mat,%{public}f,cfa-mct,%{public}f", v24, 0x16u);
    }

    return (v21)(v7, v2);
  }

  return result;
}

uint64_t sub_10031C954()
{
  (*(*v0 + 120))();
  v1 = *(*v0 + 144);

  return v1();
}

uint64_t sub_10031C9BC()
{
  (*(*v0 + 120))();
  v1 = *(*v0 + 168);

  return v1();
}

unint64_t sub_10031CA38()
{
  result = sub_10031C238(0x174876E800uLL);
  qword_100435290 = result;
  return result;
}

uint64_t sub_10031CA64()
{
  if (qword_10048BE60 != -1)
  {
    swift_once();
  }

  return qword_100435290;
}

uint64_t sub_10031CAE8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_10031CB5C(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_10031CB9C()
{
  swift_beginAccess();
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_10031CBD4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_10031CC38()
{
  result = sub_10031CC84();
  qword_10048BE70 = result;
  qword_10048BE78 = v1;
  return result;
}

uint64_t sub_10031CC84()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &info - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  info = 0x100000001;
  if (mach_timebase_info(&info))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!info.numer)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!info.denom)
  {
    goto LABEL_9;
  }

  v5 = sub_10031AA80();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    swift_beginAccess();
    denom = info.denom;
    *(v8 + 4) = info.numer;
    *(v8 + 8) = 1024;
    *(v8 + 10) = denom;
    _os_log_impl(&_mh_execute_header, v6, v7, "ticksInfo,numer,%u,denom,%u", v8, 0xEu);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  return info.numer;
}

void sub_10031CEEC()
{
  type metadata accessor for PlatformInfo();
  v0 = swift_allocObject();
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v1;
  deviceClassNumber = MobileGestalt_get_deviceClassNumber();

  *(v0 + 64) = deviceClassNumber == 1;
  v4 = MobileGestalt_get_current_device();
  if (!v4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = v4;
  v6 = MobileGestalt_get_deviceClassNumber();

  *(v0 + 65) = v6 == 6;
  v7 = MobileGestalt_get_current_device();
  if (!v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v7;
  exclaveCapability = MobileGestalt_get_exclaveCapability();

  *(v0 + 66) = exclaveCapability;
  v10 = MobileGestalt_get_current_device();
  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = v10;
  deviceSupportsAOP = MobileGestalt_get_deviceSupportsAOP();

  *(v0 + 67) = deviceSupportsAOP;
  v13 = MobileGestalt_get_current_device();
  if (!v13)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v13;
  v15 = MobileGestalt_get_deviceClassNumber();

  v16 = v15 == 1 && MGGetProductType() != 1260109173;
  *(v0 + 68) = v16;
  v17 = MobileGestalt_get_current_device();
  if (!v17)
  {
    goto LABEL_25;
  }

  v18 = v17;
  deviceSupportsAOP2 = MobileGestalt_get_deviceSupportsAOP2();

  *(v0 + 69) = deviceSupportsAOP2;
  v20 = MobileGestalt_get_current_device();
  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v20;
  isVirtualDevice = MobileGestalt_get_isVirtualDevice();

  *(v0 + 70) = isVirtualDevice;
  v23 = MobileGestalt_get_current_device();
  if (!v23)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = v23;
  v25 = MobileGestalt_get_isVirtualDevice();

  *(v0 + 71) = v25 ^ 1;
  v26 = MobileGestalt_get_current_device();
  if (!v26)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v27 = v26;
  mobileWifi = MobileGestalt_get_mobileWifi();

  *(v0 + 72) = mobileWifi;
  v29 = MobileGestalt_get_current_device();
  if (!v29)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v30 = v29;
  v31 = MobileGestalt_copy_productType_obj();

  if (!v31)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  *(v0 + 16) = v32;
  *(v0 + 24) = v34;
  v35 = MobileGestalt_get_current_device();
  if (!v35)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = v35;
  v37 = MobileGestalt_copy_hwModelStr_obj();

  if (!v37)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  *(v0 + 32) = v38;
  *(v0 + 40) = v40;
  v41 = MobileGestalt_get_current_device();
  if (!v41)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v42 = v41;
  v43 = MobileGestalt_copy_productVersion_obj();

  if (v43)
  {
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    *(v0 + 48) = v44;
    *(v0 + 56) = v46;
    qword_10048BE88 = v0;
    return;
  }

LABEL_34:
  __break(1u);
}

uint64_t *sub_10031D1B0()
{
  if (qword_10048BE80 != -1)
  {
    swift_once();
  }

  return &qword_10048BE88;
}

uint64_t static PlatformInfo.instance.getter()
{
  if (qword_10048BE80 != -1)
  {
    swift_once();
  }
}

uint64_t PlatformInfo.product.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PlatformInfo.model.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PlatformInfo.osVer.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

id sub_10031D2EC()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    return (deviceClassNumber == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10031D33C()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    return (deviceClassNumber == 6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10031D3CC()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber == 1)
    {
      return (MGGetProductType() != 1260109173);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10031D458()
{
  if (*(v0 + 69) == 1)
  {
    return *(v0 + 68);
  }

  else
  {
    return 0;
  }
}

id sub_10031D494()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    isVirtualDevice = MobileGestalt_get_isVirtualDevice();

    return (isVirtualDevice ^ 1u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10031D4F8(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10031D54C()
{
  v6 = v0[2];
  v7 = v0[3];

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v3 = v0[6];
  v2 = v0[7];

  v4._countAndFlagsBits = v3;
  v4._object = v2;
  String.append(_:)(v4);

  return v6;
}

uint64_t sub_10031D5C8()
{
  v1 = v0[6];
  v2 = v0[7];
  v5 = v0[2];
  v6 = v0[3];

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  return v5;
}

uint64_t sub_10031D618()
{
  if ((*(*v0 + 176))() & 1) != 0 || ((*(*v0 + 184))())
  {
    v1 = (*(*v0 + 216))() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void *PlatformInfo.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t PlatformInfo.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocClassInstance(v0, 73, 7);
}

unint64_t static ALUAFUsages.getKappaUsages()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10031AFAC();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "getKappaUsages()", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  v9 = objc_opt_self();
  v10 = [v9 currentEstimates];
  sub_10031DBB4();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_5:

    v12 = [v9 lastKnownEstimates];
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_6:
  v13 = sub_10031DD30(v11);
  v15 = v14;

  if (!v15)
  {
    return sub_10031E064(&_swiftEmptyArrayStorage);
  }

  sub_100024A2C(&qword_1004301B8, &qword_10039A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100374440;
  *(inited + 32) = 0xD00000000000001ALL;
  v17 = inited + 32;
  *(inited + 40) = 0x80000001003B1000;
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  v18 = sub_10031E064(inited);
  swift_setDeallocating();
  sub_10031E178(v17);
  return v18;
}

unint64_t sub_10031DBB4()
{
  result = qword_1004301B0;
  if (!qword_1004301B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004301B0);
  }

  return result;
}

unint64_t sub_10031DC00(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10031DC78(a1, a2, v6);
}

unint64_t sub_10031DC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10031DD30(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(a1 + 32);
LABEL_6:
    v12 = v11;
    v13 = [v11 countryCode];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_10031AFAC();
      (*(v3 + 16))(v9, v18, v2);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v28 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_10000234C(v15, v17, &v28);
        _os_log_impl(&_mh_execute_header, v19, v20, "RD countryCode: %s", v21, 0xCu);
        sub_100002580(v22);
      }

      (*(v3 + 8))(v9, v2);
      return v15;
    }

LABEL_11:
    v23 = sub_10031AFAC();
    (*(v3 + 16))(v7, v23, v2);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "No estimate from RD", v26, 2u);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_10031E064(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A2C(&qword_100430260, &qword_10039A1E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10031DC00(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10031E178(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_1004301C0, &qword_10039A1B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10031E21C()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

unint64_t sub_10031E27C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024A2C(&qword_100430508, &unk_10039ACE0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_100323E60(&v27, v29);
        sub_100323E60(v29, v30);
        sub_100323E60(v30, &v28);
        result = sub_10031DC00(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100002580(v12);
          result = sub_100323E60(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_100323E60(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10031E4D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_10031E50C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_10031E564(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

double sub_10031E5BC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1003230F8(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

double sub_10031E5FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_10031E27C(&_swiftEmptyDictionarySingleton);
  if (!*(a1 + 16))
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v9 = sub_10031DC00(0xD000000000000011, 0x80000001003B1040);
  if ((v10 & 1) == 0)
  {
    v13 = 0;
    v12 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v18 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v11 = (*(a1 + 56) + 16 * v9);
  v13 = *v11;
  v12 = v11[1];

  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = sub_10031DC00(0xD00000000000001DLL, 0x80000001003B1060);
  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = (*(a1 + 56) + 16 * v14);
  v18 = *v16;
  v17 = v16[1];

LABEL_10:

  *&v23 = 0;
  *(&v23 + 1) = v8;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  *&v25 = v13;
  *(&v25 + 1) = v12;
  *&v26 = v18;
  *(&v26 + 1) = v17;
  v27[0] = 0;
  v27[1] = v8;
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = v13;
  v27[5] = v12;
  v27[6] = v18;
  v27[7] = v17;
  sub_100323308(&v23, &v22);
  sub_100323340(v27);
  v19 = v24;
  *a4 = v23;
  a4[1] = v19;
  result = *&v25;
  v21 = v26;
  a4[2] = v25;
  a4[3] = v21;
  return result;
}

uint64_t sub_10031E754()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_10031E78C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_10031E7E0()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_10031E818(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

id sub_10031E860()
{
  v0 = *sub_10033AC88();

  return v0;
}

id sub_10031E88C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_10031E8D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_10031E924()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_10031E95C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_10031E9F4()
{
  type metadata accessor for ALLaunchManager();
  v0 = swift_allocObject();
  result = sub_10031EB14();
  qword_100435298 = v0;
  return result;
}

uint64_t sub_10031EA30()
{
  v0 = swift_allocObject();
  sub_10031EB14();
  return v0;
}

uint64_t *sub_10031EA68()
{
  if (qword_10048BE90 != -1)
  {
    swift_once();
  }

  return &qword_100435298;
}

uint64_t sub_10031EAB8()
{
  if (qword_10048BE90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10031EB14()
{
  v1 = v0;
  v95 = type metadata accessor for Logger();
  v84 = *(v95 - 8);
  v2 = *(v84 + 64);
  v3 = __chkstk_darwin(v95);
  v83 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v82 - v5;
  v7 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v93 = &v82 - v9;
  v94 = type metadata accessor for ALScanServices();
  v89 = *(v94 - 8);
  v10 = *(v89 + 64);
  __chkstk_darwin(v94);
  v96 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_100431A80, &qword_10039A218);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v82 - v15;
  v0[2] = 0;
  v17 = v0 + 2;
  v0[3] = sub_10032395C(&_swiftEmptyArrayStorage);
  v91 = v0 + 3;
  v18 = sub_10033AC88();
  v19 = *v18;
  v0[4] = *v18;
  v0[5] = &_swiftEmptySetSingleton;
  v0[6] = &_swiftEmptySetSingleton;
  v20 = *((swift_isaMask & *v19) + 0xD0);
  v21 = v19;
  v20();

  swift_allocObject();
  swift_weakInit();
  sub_100323B4C();
  Publisher<>.sink(receiveValue:)();

  (*(v13 + 8))(v16, v12);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v22 = sub_100323370();
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = &_swiftEmptyArrayStorage;
  }

  *&v99 = v23;
  sub_1003220F8(&_swiftEmptyArrayStorage);
  v24 = v99;
  swift_beginAccess();
  v25 = *v17;
  *v17 = v24;

  v27 = *(v24 + 16);
  if (!v27)
  {

    v92 = 0;
    v68 = v84;
LABEL_33:
    v69 = v83;
    launchlog.getter(v83);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v98[0] = v73;
      *v72 = 136315138;
      v74 = v91;
      swift_beginAccess();
      v75 = *v74;

      sub_100024A2C(&qword_100430268, &unk_10039A220);
      sub_100323E70(&qword_100430270);
      v76 = Dictionary.description.getter();
      v77 = v69;
      v79 = v78;

      v80 = sub_10000234C(v76, v79, v98);

      *(v72 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v70, v71, "Extension service dict: %s", v72, 0xCu);
      sub_100002580(v73);

      (*(v68 + 8))(v77, v95);
    }

    else
    {

      (*(v68 + 8))(v69, v95);
    }

    sub_100004820(v92);
    return v1;
  }

  v82 = v1;
  v28 = 0;
  v92 = 0;
  v90 = (v89 + 48);
  v87 = (v89 + 32);
  v85 = v89 + 16;
  v86 = (v89 + 8);
  v29 = (v84 + 8);
  v97 = v27 - 1;
  v30 = 32;
  *&v26 = 138412290;
  v88 = v26;
  v31 = v94;
  v32 = v93;
  do
  {
    v33 = *(v24 + v30);
    v35 = *(v24 + v30 + 32);
    v34 = *(v24 + v30 + 48);
    v100 = *(v24 + v30 + 16);
    v101 = v35;
    v102 = v34;
    v99 = v33;
    if (!*(&v35 + 1))
    {
      sub_100323308(&v99, v98);
      goto LABEL_10;
    }

    sub_100323308(&v99, v98);

    ALScanServices.init(rawValue:)();
    if ((*v90)(v32, 1, v31) == 1)
    {
      sub_1000059A8(v32, &qword_100431AA0, &qword_10039A210);
LABEL_10:
      launchlog.getter(v6);
      sub_100323308(&v99, v98);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      sub_100323340(&v99);
      if (os_log_type_enabled(v36, v37))
      {
        v38 = v99;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = v88;
        *(v39 + 4) = v38;
        *v40 = v38;
        v41 = v38;
        v31 = v94;
        _os_log_impl(&_mh_execute_header, v36, v37, "Extension %@ did not specify a valid service", v39, 0xCu);
        sub_1000059A8(v40, &unk_10042F020, &qword_100399AE0);
        v32 = v93;

        sub_100323340(&v99);
      }

      else
      {
        sub_100323340(&v99);
      }

      (*v29)(v6, v95);
      goto LABEL_28;
    }

    v42 = v96;
    (*v87)(v96, v32, v31);
    v43 = v91;
    swift_beginAccess();
    sub_100004820(v92);
    v44 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = *v43;
    v46 = v98[0];
    *v43 = 0x8000000000000000;
    v48 = sub_100321EC8(v42);
    v49 = v46[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_37;
    }

    v52 = v47;
    if (v46[3] >= v51)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003225B4();
        v46 = v98[0];
      }
    }

    else
    {
      sub_1003221EC(v51, isUniquelyReferenced_nonNull_native);
      v46 = v98[0];
      v53 = sub_100321EC8(v96);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_39;
      }

      v48 = v53;
    }

    v55 = v89;
    *v91 = v46;
    if ((v52 & 1) == 0)
    {
      v46[(v48 >> 6) + 8] |= 1 << v48;
      (*(v55 + 16))(v46[6] + *(v55 + 72) * v48, v96, v31);
      *(v46[7] + 8 * v48) = &_swiftEmptyArrayStorage;
      v56 = v46[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_38;
      }

      v46[2] = v58;
    }

    v59 = v46[7];
    v60 = *(v59 + 8 * v48);
    sub_100323308(&v99, v98);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 8 * v48) = v60;
    if ((v61 & 1) == 0)
    {
      v60 = sub_100321CB0(0, *(v60 + 2) + 1, 1, v60);
      *(v59 + 8 * v48) = v60;
    }

    v63 = *(v60 + 2);
    v62 = *(v60 + 3);
    if (v63 >= v62 >> 1)
    {
      v60 = sub_100321CB0((v62 > 1), v63 + 1, 1, v60);
      *(v59 + 8 * v48) = v60;
    }

    v32 = v93;
    *(v60 + 2) = v63 + 1;
    v64 = &v60[64 * v63];
    v65 = v99;
    v66 = v100;
    v67 = v102;
    *(v64 + 4) = v101;
    *(v64 + 5) = v67;
    *(v64 + 2) = v65;
    *(v64 + 3) = v66;
    swift_endAccess();
    sub_100323340(&v99);
    v31 = v94;
    (*v86)(v96, v94);
    v92 = sub_10031F8BC;
LABEL_28:
    if (v97 == v28)
    {

      v1 = v82;
      v68 = v84;
      goto LABEL_33;
    }

    ++v28;
    v30 += 64;
  }

  while (v28 < *(v24 + 16));
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10031F5CC(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = *a1;
  launchlog.getter(&v27 - v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v29 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v28 = v3;
    v15 = v14;
    v16 = v7;
    v17 = swift_slowAlloc();
    v30 = v17;
    *v15 = 136315138;
    if (v10)
    {
      v18 = 28271;
    }

    else
    {
      v18 = 6710895;
    }

    if (v10)
    {
      v19 = 0xE200000000000000;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_10000234C(v18, v19, &v30);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "published isScreenOn state changed to: %s", v15, 0xCu);
    sub_100002580(v17);
    v7 = v16;

    v3 = v28;
  }

  v21 = *(v3 + 8);
  v21(v9, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((v29 & 1) == 0)
    {
      (*(*Strong + 272))(Strong);
    }
  }

  else
  {
    launchlog.getter(v7);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no self", v26, 2u);
    }

    return (v21)(v7, v2);
  }
}

uint64_t sub_10031F8CC()
{
  result = (*(*v0 + 120))();
  if (result)
  {
    v2 = 0;
    v3 = *(result + 16);
    v4 = &_swiftEmptyArrayStorage;
LABEL_3:
    v5 = result + (v2 << 6);
    while (1)
    {
      if (v3 == v2)
      {

        return v4;
      }

      if (v2 >= *(result + 16))
      {
        break;
      }

      v6 = (v5 + 64);
      ++v2;
      v7 = *(v5 + 72);
      v5 += 64;
      if (v7)
      {
        v8 = result;
        v9 = *v6;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100321DBC(0, *(v4 + 2) + 1, 1, v4);
        }

        v11 = *(v4 + 2);
        v10 = *(v4 + 3);
        if (v11 >= v10 >> 1)
        {
          v4 = sub_100321DBC((v10 > 1), v11 + 1, 1, v4);
        }

        result = v8;
        *(v4 + 2) = v11 + 1;
        v12 = &v4[16 * v11];
        *(v12 + 4) = v9;
        *(v12 + 5) = v7;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_10031F9F8(void (**a1)(char *, char *, uint64_t))
{
  v209 = a1;
  v1 = sub_100024A2C(&qword_100430278, &qword_10039A230);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v176 = &v171 - v3;
  v178 = type metadata accessor for ALBtAdvertisement();
  v205 = *(v178 - 8);
  v4 = *(v205 + 8);
  __chkstk_darwin(v178);
  v6 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v198 = &v171 - v9;
  v210 = type metadata accessor for ALScanServices();
  v203 = *(v210 - 8);
  v10 = *(v203 + 64);
  v11 = __chkstk_darwin(v210);
  v186 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v200 = &v171 - v13;
  v193 = type metadata accessor for ALNIPresenceNotification();
  v192 = *(v193 - 8);
  v14 = *(v192 + 64);
  v15 = __chkstk_darwin(v193);
  v189 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v207 = &v171 - v18;
  __chkstk_darwin(v17);
  v190 = &v171 - v19;
  v20 = sub_100024A2C(&qword_100430280, &qword_10039A238);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v197 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v171 - v24;
  v26 = type metadata accessor for ALNIPresenceNotifications();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Logger();
  v202 = *(v31 - 8);
  v32 = *(v202 + 64);
  v33 = __chkstk_darwin(v31);
  v185 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v188 = &v171 - v36;
  v37 = __chkstk_darwin(v35);
  v172 = &v171 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v171 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v171 - v43;
  __chkstk_darwin(v42);
  v46 = &v171 - v45;
  launchlog.getter(&v171 - v45);
  v47 = *(v27 + 16);
  v48 = v30;
  v204 = v26;
  v47(v30, v209, v26);
  v49 = Logger.logObject.getter();
  LODWORD(v199) = static os_log_type_t.default.getter();
  v50 = os_log_type_enabled(v49, v199);
  v51 = &qword_100398ED0[38];
  v177 = v6;
  v201 = v31;
  v208 = v44;
  v171 = v41;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    *&v213[0] = v196;
    *v52 = 136315138;
    v53 = v49;
    ALNIPresenceNotifications.presenceResults.getter();
    v54 = Dictionary.description.getter();
    v56 = v55;

    (*(v27 + 8))(v48, v204);
    v57 = sub_10000234C(v54, v56, v213);
    v44 = v208;

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v53, v199, "Notifications to launch %s", v52, 0xCu);
    sub_100002580(v196);

    v58 = *(v202 + 8);
    v202 += 8;
    v199 = v58;
    v58(v46, v201);
    v51 = qword_100398ED0 + 304;
  }

  else
  {

    (*(v27 + 8))(v48, v204);
    v59 = *(v202 + 8);
    v202 += 8;
    v199 = v59;
    v59(v46, v31);
  }

  v60 = ALNIPresenceNotifications.presenceResults.getter();
  v62 = 0;
  v64 = v60 + 64;
  v63 = *(v60 + 64);
  v191 = v60;
  v65 = 1 << *(v60 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & v63;
  v182 = (v65 + 63) >> 6;
  v204 = (v192 + 16);
  v209 = (v192 + 32);
  v195 = (v203 + 48);
  v184 = (v203 + 32);
  v183 = (v203 + 16);
  v196 = (v203 + 8);
  v203 = v192 + 8;
  v175 = (v205 + 48);
  v173 = (v205 + 32);
  v174 = (v205 + 8);
  v68 = &qword_100430288;
  *&v61 = v51[261];
  v187 = v61;
  v69 = v193;
  v70 = v207;
  v205 = v25;
  v194 = v60 + 64;
  while (v67)
  {
    v72 = v69;
    v73 = v62;
LABEL_21:
    v76 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    v77 = v76 | (v73 << 6);
    v78 = (*(v191 + 48) + 16 * v77);
    v79 = *v78;
    v80 = v78[1];
    v81 = v192;
    v82 = v190;
    (*(v192 + 16))(v190, *(v191 + 56) + *(v192 + 72) * v77, v72);
    v83 = sub_100024A2C(&qword_100430288, &qword_10039A240);
    v84 = *(v83 + 48);
    v85 = v197;
    *v197 = v79;
    *(v85 + 1) = v80;
    v86 = v85;
    v87 = v82;
    v69 = v72;
    (*(v81 + 32))(&v85[v84], v87, v72);
    (*(*(v83 - 8) + 56))(v86, 0, 1, v83);

    v70 = v207;
    v25 = v205;
    v44 = v208;
LABEL_22:
    sub_100323BB0(v86, v25);
    v88 = sub_100024A2C(&qword_100430288, &qword_10039A240);
    v89 = (*(*(v88 - 8) + 48))(v25, 1, v88);
    v90 = v198;
    if (v89 == 1)
    {
    }

    v91 = *(v25 + 1);

    (*v209)(v70, &v25[*(v88 + 48)], v69);
    ALNIPresenceNotification.service.getter();
    if ((*v195)(v90, 1, v210) == 1)
    {
      sub_1000059A8(v90, &qword_100431AA0, &qword_10039A210);
      v92 = v185;
      launchlog.getter(v185);
      v93 = v189;
      (*v204)(v189, v70, v69);
      v94 = Logger.logObject.getter();
      v95 = v70;
      v96 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v94, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v212 = v98;
        *v97 = v187;
        v99 = ALNIPresenceNotification.description.getter();
        v101 = v100;
        v102 = *v203;
        (*v203)(v189, v193);
        v103 = sub_10000234C(v99, v101, &v212);

        *(v97 + 4) = v103;
        _os_log_impl(&_mh_execute_header, v94, v96, "Could not find client to launch for device: %s", v97, 0xCu);
        sub_100002580(v98);
        v69 = v193;

        v199(v92, v201);
        v70 = v207;
        v102(v207, v69);
      }

      else
      {

        v71 = *v203;
        (*v203)(v93, v69);
        v199(v92, v201);
        v71(v95, v69);
        v70 = v95;
      }

      v25 = v205;
      goto LABEL_9;
    }

    v104 = v200;
    v105 = v210;
    (*v184)(v200, v90, v210);
    launchlog.getter(v44);
    v106 = v186;
    (*v183)(v186, v104, v105);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v212 = v110;
      *v109 = v187;
      v111 = ALScanServices.rawValue.getter();
      v112 = v106;
      v114 = v113;
      v115 = *v196;
      (*v196)(v112, v210);
      v116 = sub_10000234C(v111, v114, &v212);

      *(v109 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v107, v108, "device adv service: %s", v109, 0xCu);
      sub_100002580(v110);
      v68 = v115;
      v69 = v193;

      v44 = v208;
    }

    else
    {

      v68 = *v196;
      (*v196)(v106, v210);
    }

    v117 = (v199)(v44, v201);
    v118 = (*(*v206 + 144))(v117);
    v119 = v200;
    v70 = v207;
    v120 = v188;
    if (*(v118 + 16) && (v121 = sub_100321EC8(v200), (v122 & 1) != 0))
    {
      v123 = *(*(v118 + 56) + 8 * v121);

      v124 = ALNIPresenceNotification.deviceId.getter();
      v181 = v125;
      if (!v125)
      {
        goto LABEL_34;
      }

      v179 = v124;
      v126 = v176;
      ALNIPresenceNotification._deviceAdvertisement.getter();
      v127 = v178;
      if ((*v175)(v126, 1, v178) == 1)
      {

        sub_1000059A8(v126, &qword_100430278, &qword_10039A230);
        v120 = v188;
LABEL_34:
        launchlog.getter(v120);

        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v180 = v68;
          v132 = v131;
          v212 = v131;
          *v130 = v187;
          v133 = Array.description.getter();
          v135 = v134;

          v136 = sub_10000234C(v133, v135, &v212);

          *(v130 + 4) = v136;
          v70 = v207;
          _os_log_impl(&_mh_execute_header, v128, v129, "Attempted to launch: %s but missing device adv", v130, 0xCu);
          sub_100002580(v132);
          v69 = v193;

          v199(v188, v201);
          (v180)(v200, v210);
        }

        else
        {

          v199(v120, v201);
          (v68)(v200, v210);
        }

        (*v203)(v70, v69);
LABEL_9:
        v44 = v208;
        goto LABEL_10;
      }

      v139 = (*v173)(v177, v126, v127);
      v140 = (*(*v206 + 216))(v139);
      v44 = v179;
      v141 = sub_100321214(v179, v181, v140);

      v180 = v68;
      if (v141)
      {
        goto LABEL_50;
      }

      v142 = *(v123 + 16);
      v143 = v177;
      if (v142)
      {
        v144 = *(*v206 + 264);
        v145 = (v123 + 32);
        do
        {
          v146 = *v145;
          v147 = v145[1];
          v148 = v145[3];
          v213[2] = v145[2];
          v213[3] = v148;
          v213[0] = v146;
          v213[1] = v147;
          sub_100323308(v213, &v212);
          v144(v213, v143);
          sub_100323340(v213);
          v145 += 4;
          --v142;
        }

        while (v142);
      }

      v149 = v172;
      launchlog.getter(v172);
      v150 = v181;

      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.default.getter();

      v153 = os_log_type_enabled(v151, v152);
      v44 = v208;
      if (v153)
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v212 = v155;
        *v154 = v187;
        v156 = v179;
        *(v154 + 4) = sub_10000234C(v179, v181, &v212);
        _os_log_impl(&_mh_execute_header, v151, v152, "Adding deviceId %s to backoff", v154, 0xCu);
        sub_100002580(v155);
        v150 = v181;

        v199(v149, v201);
        v157 = v200;
      }

      else
      {

        v199(v149, v201);
        v157 = v200;
        v156 = v179;
      }

      v158 = (*(*v206 + 232))(&v212);
      sub_100322834(&v211, v156, v150);

      v158(&v212, 0);
      (*v174)(v177, v178);
      (v180)(v157, v210);
      v70 = v207;
      v69 = v193;
      (*v203)(v207, v193);
    }

    else
    {

      (v68)(v119, v210);
      (*v203)(v70, v69);
    }

LABEL_10:
    v64 = v194;
    v68 = &qword_100430288;
  }

  if (v182 <= v62 + 1)
  {
    v74 = v62 + 1;
  }

  else
  {
    v74 = v182;
  }

  v75 = v74 - 1;
  while (1)
  {
    v73 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v73 >= v182)
    {
      v137 = sub_100024A2C(&qword_100430288, &qword_10039A240);
      v138 = v197;
      (*(*(v137 - 8) + 56))(v197, 1, 1, v137);
      v67 = 0;
      v62 = v75;
      v86 = v138;
      goto LABEL_22;
    }

    v67 = *(v64 + 8 * v73);
    ++v62;
    if (v67)
    {
      v72 = v69;
      v62 = v73;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_50:
  v160 = v171;
  launchlog.getter(v171);

  v161 = v181;

  v162 = Logger.logObject.getter();
  v163 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    *v164 = 136315394;
    v165 = Array.description.getter();
    v166 = v44;
    v168 = v167;

    v169 = sub_10000234C(v165, v168, &v212);

    *(v164 + 4) = v169;
    *(v164 + 12) = 2080;
    v170 = sub_10000234C(v166, v161, &v212);

    *(v164 + 14) = v170;
    _os_log_impl(&_mh_execute_header, v162, v163, "Already launched extension:%s for deviceId:%s", v164, 0x16u);
    swift_arrayDestroy();

    v199(v160, v201);
    (*v174)(v177, v178);
    (v180)(v200, v210);
    return (*v203)(v207, v193);
  }

  else
  {

    v199(v160, v201);
    (*v174)(v177, v178);
    (v68)(v200, v210);
    return (*v203)(v70, v69);
  }
}

uint64_t sub_100321214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_10032130C(__int128 *a1)
{
  v60 = type metadata accessor for Logger();
  v59 = *(v60 - 8);
  v2 = *(v59 + 64);
  v3 = __chkstk_darwin(v60);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v53 - v6;
  v63 = a1[3];
  v58 = *(&v63 + 1);
  if (!*(&v63 + 1))
  {
    goto LABEL_13;
  }

  v8 = v63;
  v9 = sub_100024A2C(&qword_100430298, &qword_10039A250);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9 - 8);
  v12 = &v53 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  v57 = v8;
  v15 = String._bridgeToObjectiveC()();
  v17 = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(v14 + 8))(v12, v13);
  }

  v19 = [objc_allocWithZone(LSApplicationIdentity) initWithBundleIdentifier:v15 URL:v17 personaUniqueString:0 personaType:4];

  v20 = [objc_opt_self() identityForLSApplicationIdentity:v19];
  if (v20)
  {
    v21 = v7;
    v22 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    v23 = ALBtAdvertisement.identifier.getter();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    sub_100024A2C(&qword_1004302A0, &qword_10039A258);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100374440;
    v62[0] = 0x646975757462;
    v62[1] = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    v54 = v25;
    *(inited + 72) = v25;
    *(inited + 80) = v26;

    sub_100323C20(inited);
    swift_setDeallocating();
    sub_1000059A8(inited + 32, &qword_1004302A8, &qword_10039A260);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v22 setUserInfo:isa];

    v29 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v30 = v20;
    v31 = String._bridgeToObjectiveC()();
    v32 = [v29 initWithSceneProvidingProcess:v30 configurationIdentifier:v31];

    v33 = objc_opt_self();
    v55 = v32;
    v56 = v22;
    v34 = [v33 newHandleWithDefinition:v32 configurationContext:v22];
    v35 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    launchlog.getter(v7);

    sub_10000A0A4(&v63, v62, &qword_1004302B0, &qword_10039A268);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    sub_1000059A8(&v63, &qword_1004302B0, &qword_10039A268);

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_10000234C(v57, v58, v62);
      *(v38 + 12) = 2080;
      v39 = sub_10000234C(v54, v26, v62);

      *(v38 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v36, v37, "launching bundleId:%s btuuid:%s", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v59 + 8))(v21, v60);
    [v34 activateWithContext:v35];
  }

  else
  {
LABEL_13:
    launchlog.getter(v5);
    sub_100323308(a1, v62);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    sub_100323340(a1);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 136315138;
      sub_100024A2C(&qword_100430290, &qword_10039A248);
      v44 = swift_allocObject();
      v45 = *a1;
      v46 = a1[1];
      v44[1] = xmmword_100374440;
      v44[2] = v45;
      v47 = a1[2];
      v48 = a1[3];
      v44[3] = v46;
      v44[4] = v47;
      v44[5] = v48;
      sub_100323308(a1, v62);
      v49 = Array.description.getter();
      v51 = v50;

      v52 = sub_10000234C(v49, v51, &v61);

      *(v42 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v40, v41, "Extension: %s did not specify a target bundleId", v42, 0xCu);
      sub_100002580(v43);
    }

    (*(v59 + 8))(v5, v60);
  }
}

uint64_t sub_100321A74()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  launchlog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Screen off clearing backoff", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = (*(*v1 + 232))(v15);
  v12 = v11;
  v13 = *v11;

  *v12 = &_swiftEmptySetSingleton;
  return v10(v15, 0);
}

uint64_t sub_100321C18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return v0;
}

uint64_t sub_100321C58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 56, 7);
}

char *sub_100321CB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_100430290, &qword_10039A248);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100321DBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_1004304D0, &qword_10039A330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100321EC8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ALScanServices();
  sub_100323E70(&qword_100430270);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100321F4C(a1, v5);
}

unint64_t sub_100321F4C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for ALScanServices();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100323E70(&qword_1004304E0);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1003220F8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100321CB0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1003221EC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ALScanServices();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100024A2C(&qword_1004304D8, &unk_10039A338);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100323E70(&qword_100430270);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

char *sub_1003225B4()
{
  v1 = v0;
  v34 = type metadata accessor for ALScanServices();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024A2C(&qword_1004304D8, &unk_10039A338);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100322834(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100322BE4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100322984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024A2C(&qword_1004304C8, &qword_10039A328);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100322BE4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100322984(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100322D64();
      goto LABEL_16;
    }

    sub_100322EC0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100322D64()
{
  v1 = v0;
  sub_100024A2C(&qword_1004304C8, &qword_10039A328);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100322EC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024A2C(&qword_1004304C8, &qword_10039A328);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

double sub_1003230F8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10031E27C(&_swiftEmptyDictionarySingleton);
  v4 = [a1 attributes];
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v5 + 16) && (v6 = sub_10031DC00(0xD000000000000011, 0x80000001003B1040), (v7 & 1) != 0))
  {
    sub_100002524(*(v5 + 56) + 32 * v6, &v28);
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v24;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = *(&v24 + 1);
    }

    else
    {
      v10 = 0;
    }

    if (!*(v5 + 16))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    if (!*(v5 + 16))
    {
LABEL_19:
      v14 = 0;
      v15 = 0;
      goto LABEL_20;
    }
  }

  v11 = sub_10031DC00(0xD00000000000001DLL, 0x80000001003B1060);
  if ((v12 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_100002524(*(v5 + 56) + 32 * v11, v36);
  v13 = swift_dynamicCast();
  if (v13)
  {
    v14 = v28;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v29;
  }

  else
  {
    v15 = 0;
  }

LABEL_20:
  v16 = [a1 bundleIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *&v24 = 0;
  *(&v24 + 1) = v5;
  *&v25 = v17;
  *(&v25 + 1) = v19;
  *&v26 = v9;
  *(&v26 + 1) = v10;
  *&v27 = v14;
  *(&v27 + 1) = v15;
  v28 = 0;
  v29 = v5;
  v30 = v17;
  v31 = v19;
  v32 = v9;
  v33 = v10;
  v34 = v14;
  v35 = v15;
  sub_100323308(&v24, v23);
  sub_100323340(&v28);
  v20 = v25;
  *a2 = v24;
  a2[1] = v20;
  result = *&v26;
  v22 = v27;
  a2[2] = v26;
  a2[3] = v22;
  return result;
}

uint64_t sub_100323370()
{
  v0 = type metadata accessor for Logger();
  v49 = *(v0 - 8);
  v1 = *(v49 + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v53 = &v47 - v5;
  v6 = objc_opt_self();
  sub_100024A2C(&qword_1004304E8, &qword_10039A348);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10039A200;
  v8 = objc_allocWithZone(_EXQuery);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithExtensionPointIdentifier:v9];

  *(v7 + 32) = v10;
  sub_10000ABCC(0, &qword_1004304F0, _EXQuery_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v6 executeQueries:isa];

  sub_10000ABCC(0, &qword_1004304F8, _EXExtensionIdentity_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v53;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v48 = v4;
    v17 = 0;
    v55 = (v49 + 8);
    v56 = v13 & 0xC000000000000001;
    v18 = &_swiftEmptyArrayStorage;
    *&v14 = 136315138;
    v51 = v14;
    v52 = v0;
    v57 = result;
    v50 = v13;
    do
    {
      if (v56)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v13 + 8 * v17 + 32);
      }

      v20 = v19;
      sub_1003230F8(v20, v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100321CB0(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_100321CB0((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v23 = &v18[64 * v22];
      v24 = v59[0];
      v25 = v59[1];
      v26 = v59[3];
      *(v23 + 4) = v59[2];
      *(v23 + 5) = v26;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      launchlog.getter(v16);
      v27 = v20;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v58 = v31;
        *v30 = v51;
        v32 = [v27 attributes];
        v54 = v18;
        v33 = v32;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = Dictionary.description.getter();
        v36 = v35;

        v37 = v34;
        v13 = v50;
        v18 = v54;
        v38 = sub_10000234C(v37, v36, &v58);

        *(v30 + 4) = v38;
        v16 = v53;
        _os_log_impl(&_mh_execute_header, v28, v29, "found extension: %s", v30, 0xCu);
        sub_100002580(v31);

        v0 = v52;
      }

      else
      {
      }

      (*v55)(v16, v0);
      ++v17;
    }

    while (v57 != v17);

    v4 = v48;
  }

  else
  {

    v18 = &_swiftEmptyArrayStorage;
  }

  launchlog.getter(v4);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v58 = v42;
    *v41 = 136315138;

    v43 = Array.description.getter();
    v45 = v44;

    v46 = sub_10000234C(v43, v45, &v58);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "found %s extensions", v41, 0xCu);
    sub_100002580(v42);
  }

  (*(v49 + 8))(v4, v0);
  if (!*(v18 + 2))
  {

    return 0;
  }

  return v18;
}

unint64_t sub_10032395C(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_100430500, &qword_10039A350);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100024A2C(&qword_1004304D8, &unk_10039A338);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000A0A4(v10, v6, &qword_100430500, &qword_10039A350);
      result = sub_100321EC8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ALScanServices();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100323B4C()
{
  result = qword_100431A90;
  if (!qword_100431A90)
  {
    sub_100024BB0(&qword_100431A80, &qword_10039A218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431A90);
  }

  return result;
}

uint64_t sub_100323BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100430280, &qword_10039A238);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100323C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A2C(&qword_1004304C0, &qword_10039A320);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A0A4(v4, v13, &qword_1004302A8, &qword_10039A260);
      result = sub_10031BED8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100323E60(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 sub_100323D5C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100323D70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100323DB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_100323E60(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100323E70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ALScanServices();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100323EE8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_100323F5C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_100323FEC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

unint64_t sub_100324070(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v206 = a1;
  v197 = type metadata accessor for ALBtAdvertisement();
  v183 = *(v197 - 8);
  v7 = *(v183 + 64);
  v8 = __chkstk_darwin(v197);
  v178 = v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v186 = v176 - v11;
  __chkstk_darwin(v10);
  v205 = v176 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v204 = v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v184 = v176 - v19;
  v20 = __chkstk_darwin(v18);
  v196 = v176 - v21;
  v22 = __chkstk_darwin(v20);
  v187 = v176 - v23;
  __chkstk_darwin(v22);
  v25 = v176 - v24;
  v4[3] = &_swiftEmptyArrayStorage;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = a2;
  v4[7] = a3;
  v181 = a3;

  v26 = sub_100334FA4();
  v27 = *(**v26 + 104);

  v27(&v207, 0xD000000000000011, 0x80000001003B1180, &type metadata for String);

  if (v208)
  {
    v28 = v207;
  }

  else
  {
    v28 = 0xD000000000000016;
  }

  if (v208)
  {
    v29 = v208;
  }

  else
  {
    v29 = 0x80000001003B11A0;
  }

  v30 = *(**v26 + 104);

  v30(&v207, 0xD000000000000016, 0x80000001003B11C0, &type metadata for Double);

  if (v208)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = *&v207;
  }

  corelog.getter(v25);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v199 = v13;
  v185 = v14;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v207 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_10000234C(v28, v29, &v207);
    *(v35 + 12) = 2048;
    *(v35 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "ALBtReplayerCSV,path,%s,interval,%f", v35, 0x16u);
    sub_100002580(v36);
  }

  v198 = *(v14 + 8);
  v198(v25, v13);
  v37 = v28;
  v180 = v206;
  v38 = ALDataGenerationBase.init(queue:interval:)(v180);
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v43 = v176 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);

  v206 = v37;
  URL.init(fileURLWithPath:)();
  v44 = type metadata accessor for String.Encoding();
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  static String.Encoding.utf8.getter();
  v46 = String.init(contentsOf:encoding:)();
  v48 = v47;

  result = sub_100325678(0x7FFFFFFFFFFFFFFFuLL, 1, v46, v48, v49);
  v195 = 0;
  v200 = *(result + 16);
  v201 = result;
  v52 = v199;
  if (v200)
  {
    v53 = 0;
    v194 = v201 + 32;
    v188 = v185 + 8;
    v177 = (v183 + 16);
    v176[1] = v183 + 32;
    v182 = (v183 + 8);
    *&v51 = 134218242;
    v179 = v51;
    v193 = v38;
    v192 = v176;
    v191 = v39;
    v190 = v40;
    v189 = v43;
    do
    {
      if (v53 >= *(v201 + 16))
      {
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if (!v53)
      {
        goto LABEL_16;
      }

      v204 = v53;
      v54 = (v194 + 32 * v53);
      v55 = *v54;
      v56 = v54[2];
      v57 = v54[3];
      v58 = *v54 >> 14;
      v59 = v54[1] >> 14;
      swift_bridgeObjectRetain_n();
      if (v58 == v59)
      {
        v60 = Substring.subscript.getter();
        v62 = v61;
        v64 = v63;
        v66 = v65;

        v67 = sub_100326770(0, 1, 1, &_swiftEmptyArrayStorage);
        v69 = *(v67 + 2);
        v68 = *(v67 + 3);
        if (v69 >= v68 >> 1)
        {
          v67 = sub_100326770((v68 > 1), v69 + 1, 1, v67);
        }

        *(v67 + 2) = v69 + 1;
        v70 = &v67[32 * v69];
        *(v70 + 4) = v60;
        *(v70 + 5) = v62;
        *(v70 + 6) = v64;
        *(v70 + 7) = v66;
        if (v69 != 5)
        {
          goto LABEL_49;
        }

        goto LABEL_23;
      }

      v206 = &_swiftEmptyArrayStorage;
      v78 = v55;
      do
      {
        while (Substring.subscript.getter() != 44 || v79 != 0xE100000000000000)
        {
          v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v80)
          {
            goto LABEL_35;
          }

          result = Substring.index(after:)();
          v58 = result >> 14;
          if (result >> 14 == v59)
          {
            goto LABEL_43;
          }
        }

LABEL_35:
        if (v58 < v78 >> 14)
        {
          goto LABEL_106;
        }

        v81 = Substring.subscript.getter();
        v83 = v82;
        v202 = v85;
        v203 = v84;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v86 = v206;
        }

        else
        {
          v86 = sub_100326770(0, *(v206 + 2) + 1, 1, v206);
        }

        v88 = *(v86 + 2);
        v87 = *(v86 + 3);
        if (v88 >= v87 >> 1)
        {
          v86 = sub_100326770((v87 > 1), v88 + 1, 1, v86);
        }

        *(v86 + 2) = v88 + 1;
        v206 = v86;
        v89 = &v86[32 * v88];
        *(v89 + 4) = v81;
        *(v89 + 5) = v83;
        v90 = v202;
        *(v89 + 6) = v203;
        *(v89 + 7) = v90;
        result = Substring.index(after:)();
        v78 = result;
        v58 = result >> 14;
      }

      while (result >> 14 != v59);
LABEL_43:
      if (v59 < v78 >> 14)
      {
        goto LABEL_108;
      }

      v91 = Substring.subscript.getter();
      v93 = v92;
      v95 = v94;
      v97 = v96;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v67 = v206;
      }

      else
      {
        v67 = sub_100326770(0, *(v206 + 2) + 1, 1, v206);
      }

      v99 = *(v67 + 2);
      v98 = *(v67 + 3);
      if (v99 >= v98 >> 1)
      {
        v67 = sub_100326770((v98 > 1), v99 + 1, 1, v67);
      }

      *(v67 + 2) = v99 + 1;
      v100 = &v67[32 * v99];
      *(v100 + 4) = v91;
      *(v100 + 5) = v93;
      *(v100 + 6) = v95;
      *(v100 + 7) = v97;
      if (v99 != 5)
      {
LABEL_49:

        v101 = v187;
        corelog.getter(v187);

        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v207 = v105;
          *v104 = v179;
          *(v104 + 4) = v204;
          *(v104 + 12) = 2080;
          v106 = static String._fromSubstring(_:)();
          v108 = v107;

          v109 = sub_10000234C(v106, v108, &v207);

          *(v104 + 14) = v109;
          _os_log_impl(&_mh_execute_header, v102, v103, "line %ld: '%s' is ill-formed. Please follow [mac],[timestamp(ns)],[channel],[rssidB],[antennaIndex],[deviceInfoKw]. Skip!", v104, 0x16u);
          sub_100002580(v105);

          v52 = v199;
          result = (v198)(v101, v199);
          goto LABEL_55;
        }

        v52 = v199;
        result = (v198)(v101, v199);
LABEL_15:
        v38 = v193;
        v39 = v191;
        v40 = v190;
        v43 = v189;
        v53 = v204;
        goto LABEL_16;
      }

LABEL_23:
      v206 = v67;
      ALBtAdvertisement.init()();
      result = v206;
      v71 = v196;
      if (*(v206 + 2) < 2uLL)
      {
        goto LABEL_107;
      }

      v72 = *(v206 + 8);
      v73 = *(v206 + 9);
      if ((v73 ^ v72) >= 0x4000)
      {
        v75 = *(v206 + 10);
        v74 = *(v206 + 11);
        v76 = v195;
        sub_1003282AC(*(v206 + 8), *(v206 + 9), v75, v74, 10);
        if ((v77 & 0x100) != 0)
        {
          v110 = v76;

          sub_100327458(v72, v73, v75, v74, 10);
          v112 = v111;

          if (v112)
          {
            v195 = v76;
            v71 = v196;
            goto LABEL_53;
          }
        }

        else
        {
          v71 = v196;
          if (v77)
          {
            v195 = v76;
            goto LABEL_53;
          }

          v110 = v76;
        }

        result = ALBtAdvertisement._machContTimeNs.setter();
        if (*(v206 + 2))
        {
          v121 = *(v206 + 4);
          v122 = *(v206 + 5);
          if ((v122 ^ v121) < 0x4000)
          {
            v38 = v193;
            v125 = v110;
          }

          else
          {
            v124 = *(v206 + 6);
            v123 = *(v206 + 7);
            v125 = v110;
            sub_1003282AC(*(v206 + 4), *(v206 + 5), v124, v123, 16);
            v38 = v193;
            if ((v126 & 0x100) != 0)
            {

              sub_100327458(v121, v122, v124, v123, 16);

              v125 = v110;
            }
          }

          result = ALBtAdvertisement._mac.setter();
          if (*(v206 + 2) >= 3uLL)
          {
            v127 = *(v206 + 12);
            v128 = *(v206 + 13);
            if ((v128 ^ v127) < 0x4000)
            {
              LOBYTE(v133) = 1;
            }

            else
            {
              v130 = *(v206 + 14);
              v129 = *(v206 + 15);
              v131 = sub_1003281DC(*(v206 + 12), *(v206 + 13), v130, v129, 10, sub_10032885C);
              if ((v131 & 0x10000000000) != 0)
              {

                v132 = sub_100326ED0(v127, v128, v130, v129, 10);

                v131 = v132;
              }

              v133 = (v131 & &_mh_execute_header) >> 32;
            }

            LOBYTE(v207) = v133 & 1;
            result = ALBtAdvertisement._channel.setter();
            if (*(v206 + 2) >= 4uLL)
            {
              v134 = *(v206 + 16);
              v135 = *(v206 + 17);
              if ((v135 ^ v134) < 0x4000)
              {
                LOBYTE(v140) = 1;
              }

              else
              {
                v137 = *(v206 + 18);
                v136 = *(v206 + 19);
                v138 = sub_1003281DC(*(v206 + 16), *(v206 + 17), v137, v136, 10, sub_10032885C);
                if ((v138 & 0x10000000000) != 0)
                {

                  v139 = sub_100326ED0(v134, v135, v137, v136, 10);

                  v138 = v139;
                }

                v140 = (v138 & &_mh_execute_header) >> 32;
              }

              LOBYTE(v207) = v140 & 1;
              result = ALBtAdvertisement._rssidB.setter();
              if (*(v206 + 2) >= 5uLL)
              {
                v141 = *(v206 + 20);
                v142 = *(v206 + 21);
                if ((v142 ^ v141) < 0x4000)
                {
                  LOBYTE(v147) = 1;
                }

                else
                {
                  v144 = *(v206 + 22);
                  v143 = *(v206 + 23);
                  v145 = sub_1003281DC(*(v206 + 20), *(v206 + 21), v144, v143, 10, sub_10032885C);
                  if ((v145 & 0x10000000000) != 0)
                  {

                    v146 = sub_100326ED0(v141, v142, v144, v143, 10);

                    v145 = v146;
                  }

                  v147 = (v145 & &_mh_execute_header) >> 32;
                }

                LOBYTE(v207) = v147 & 1;
                result = ALBtAdvertisement._antennaIndex.setter();
                if (*(v206 + 2) >= 6uLL)
                {
                  v148 = *(v206 + 24);
                  v149 = *(v206 + 25);
                  v151 = *(v206 + 26);
                  v150 = *(v206 + 27);

                  if ((v149 ^ v148) < 0x4000)
                  {
                    v195 = v125;

                    LOBYTE(v153) = 1;
                  }

                  else
                  {
                    v152 = sub_1003281DC(v148, v149, v151, v150, 10, sub_100328CC8);
                    v195 = v125;
                    if ((v152 & 0x10000000000) != 0)
                    {
                      v152 = sub_100326948(v148, v149, v151, v150, 10);
                    }

                    v153 = (v152 & &_mh_execute_header) >> 32;
                  }

                  LOBYTE(v207) = v153 & 1;
                  v154 = v205;
                  ALBtAdvertisement._deviceInfoKw.setter();
                  (*v177)(v186, v154, v197);
                  swift_beginAccess();
                  v155 = *(v38 + 24);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v38 + 24) = v155;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v155 = sub_100326598(0, v155[2] + 1, 1, v155);
                    *(v38 + 24) = v155;
                  }

                  v158 = v155[2];
                  v157 = v155[3];
                  if (v158 >= v157 >> 1)
                  {
                    v155 = sub_100326598(v157 > 1, v158 + 1, 1, v155);
                  }

                  v155[2] = v158 + 1;
                  v159 = v183;
                  v160 = v197;
                  (*(v183 + 32))(v155 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v158, v186, v197);
                  *(v38 + 24) = v155;
                  swift_endAccess();
                  result = (*(v159 + 8))(v205, v160);
                  v39 = v191;
                  v40 = v190;
                  v43 = v189;
                  v53 = v204;
                  v52 = v199;
                  goto LABEL_16;
                }

LABEL_113:
                __break(1u);
LABEL_114:
                __break(1u);
                goto LABEL_115;
              }

LABEL_112:
              __break(1u);
              goto LABEL_113;
            }

LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

LABEL_53:

      corelog.getter(v71);

      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v113, v114))
      {

        v52 = v199;
        v198(v71, v199);
        result = (*v182)(v205, v197);
        goto LABEL_15;
      }

      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v207 = v116;
      *v115 = v179;
      *(v115 + 4) = v204;
      *(v115 + 12) = 2080;
      v117 = static String._fromSubstring(_:)();
      v119 = v118;

      v120 = sub_10000234C(v117, v119, &v207);

      *(v115 + 14) = v120;
      _os_log_impl(&_mh_execute_header, v113, v114, "line %ld: '%s' is ill-formed. Timestamp cannot convert to Uint64. Note that timestamp unit should be ns. Skip!", v115, 0x16u);
      sub_100002580(v116);

      v52 = v199;
      v198(v71, v199);
      result = (*v182)(v205, v197);
LABEL_55:
      v53 = v204;
      v38 = v193;
      v39 = v191;
      v40 = v190;
      v43 = v189;
LABEL_16:
      ++v53;
    }

    while (v53 != v200);
  }

  (*(v40 + 8))(v43, v39);
  swift_beginAccess();
  if (!*(*(v38 + 24) + 16))
  {
    goto LABEL_101;
  }

  result = machContTimeNs()();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_114;
  }

  v161 = result;
  result = swift_beginAccess();
  v162 = *(v38 + 24);
  if (!*(v162 + 16))
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    return result;
  }

  v163 = v52;
  v164 = v183;
  v165 = v178;
  v166 = v197;
  (*(v183 + 16))(v178, v162 + ((*(v164 + 80) + 32) & ~*(v164 + 80)), v197);
  v167 = ALBtAdvertisement._machContTimeNs.getter();
  v169 = v168;
  (*(v164 + 8))(v165, v166);
  result = swift_endAccess();
  if (v169)
  {
    v170 = 0;
  }

  else
  {
    v170 = v167;
  }

  if (v170 < 0)
  {
    goto LABEL_116;
  }

  v171 = v161 - v170;
  swift_beginAccess();
  *(v38 + 40) = v171;
  v52 = v163;
LABEL_101:
  corelog.getter(v184);

  v172 = Logger.logObject.getter();
  v173 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v172, v173))
  {
    v174 = v52;
    v175 = swift_slowAlloc();
    *v175 = 134218240;
    *(v175 + 4) = *(*(v38 + 24) + 16);
    *(v175 + 12) = 2048;
    swift_beginAccess();
    *(v175 + 14) = *(v38 + 40);

    _os_log_impl(&_mh_execute_header, v172, v173, "Total bt advs from file: %ld. Offset is %lld", v175, 0x16u);
    v52 = v174;
  }

  else
  {
  }

  v198(v184, v52);
  return v38;
}

unint64_t sub_100325678@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    result = sub_100326770((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_100326770(0, 1, 1, &_swiftEmptyArrayStorage);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = &_swiftEmptyArrayStorage;
  v15 = 15;
  v16 = 4294959064;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = String.subscript.getter();
        v9 = v19;
        result = sub_100327E5C(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = result;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = String.index(after:)();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = String.index(after:)();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v21 = String.subscript.getter();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_100326770(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_100326770((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = String.index(after:)();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = String.subscript.getter();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_100326770(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v43;
LABEL_40:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_100326770((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

uint64_t sub_100325A60()
{
  v1 = v0;
  v100 = type metadata accessor for Logger();
  v90 = *(v100 - 8);
  v2 = *(v90 + 64);
  v3 = __chkstk_darwin(v100);
  v91 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v87 - v5;
  v108 = type metadata accessor for ALBtAdvertisement();
  v7 = *(v108 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v108);
  v98 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v93 = &v87 - v12;
  __chkstk_darwin(v11);
  v99 = &v87 - v13;
  v14 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v87 - v16;
  v89 = type metadata accessor for ALBtNotification();
  v88 = *(v89 - 8);
  v18 = *(v88 + 64);
  v19 = __chkstk_darwin(v89);
  v87 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v87 - v21;
  ALBtNotification.init()();
  static ALTimeStamp.now()();
  v23 = type metadata accessor for ALTimeStamp();
  (*(*(v23 - 8) + 56))(v17, 0, 1, v23);
  ALBtNotification._timestamp.setter();
  v101 = v22;
  v24 = ALBtNotification._simulated.setter();
  v25 = (*v1 + 184);
  v26 = (*v1 + 160);
  v27 = *v26;
  v113 = *v25;
  v111 = v25;
  v28 = (v113)(v24);
  v109 = v27;
  v110 = v26;
  v29 = *(v27() + 16);

  if (v28 >= v29)
  {
LABEL_23:
    v74 = v101;
    v75 = *(ALBtNotification._advertisements.getter() + 16);

    if (v75)
    {
      corelog.getter(v91);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 134217984;
        swift_beginAccess();
        v79 = ALBtNotification._advertisements.getter();
        swift_endAccess();
        v80 = *(v79 + 16);

        *(v78 + 4) = v80;
        v74 = v101;
        _os_log_impl(&_mh_execute_header, v76, v77, "One BT notification from file, count: %ld", v78, 0xCu);
      }

      (*(v90 + 8))(v91, v100);
      v81 = v1[6];
      v82 = v1[7];
      swift_beginAccess();
      v83 = v88;
      v84 = v87;
      v85 = v89;
      (*(v88 + 16))(v87, v74, v89);
      v81(v84);
      v86 = *(v83 + 8);
      v86(v84, v85);
      return (v86)(v74, v85);
    }

    else
    {
      return (*(v88 + 8))(v74, v89);
    }
  }

  else
  {
    v106 = v7 + 16;
    v103 = v7 + 8;
    v96 = (v7 + 32);
    v97 = (v90 + 8);
    *&v31 = 136315138;
    v92 = v31;
    v102 = v6;
    while (1)
    {
      v32 = (v113)(v30);
      result = v109();
      if ((v32 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v32 >= *(result + 16))
      {
        goto LABEL_29;
      }

      v105 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v107 = *(v7 + 72);
      v34 = v99;
      v35 = v108;
      v104 = *(v7 + 16);
      v104(v99, result + v105 + v107 * v32, v108);
      v36 = ALBtAdvertisement._machContTimeNs.getter();
      v38 = v37;
      v39 = *(v7 + 8);
      result = v39(v34, v35);
      if (v38)
      {
        goto LABEL_38;
      }

      if (v36 < 0)
      {
        goto LABEL_30;
      }

      result = (*(*v1 + 208))(result);
      v40 = v36 + result;
      if (__OFADD__(v36, result))
      {
        goto LABEL_31;
      }

      result = machContTimeNs()();
      if (result < 0)
      {
        goto LABEL_32;
      }

      if (v40 >= result)
      {
        goto LABEL_23;
      }

      corelog.getter(v6);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v112[0] = v44;
        *v43 = v92;
        v45 = v113();
        result = v109();
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        if (v45 >= *(result + 16))
        {
          goto LABEL_37;
        }

        v46 = v93;
        v95 = v42;
        v47 = v7;
        v48 = v108;
        v104(v93, result + v105 + v45 * v107, v108);

        v49 = ALBtAdvertisement.description.getter();
        v94 = v41;
        v50 = v1;
        v51 = v49;
        v53 = v52;
        v54 = v48;
        v7 = v47;
        v39(v46, v54);
        v55 = v51;
        v1 = v50;
        v56 = sub_10000234C(v55, v53, v112);

        *(v43 + 4) = v56;
        v57 = v94;
        _os_log_impl(&_mh_execute_header, v94, v95, "One BT adv from file: %s", v43, 0xCu);
        sub_100002580(v44);

        v58 = (*v97)(v102, v100);
      }

      else
      {

        v58 = (*v97)(v6, v100);
      }

      v59 = (v113)(v58);
      result = v109();
      if ((v59 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v59 >= *(result + 16))
      {
        goto LABEL_34;
      }

      v60 = v105;
      v61 = result + v105 + v59 * v107;
      v62 = v98;
      v104(v98, v61, v108);

      v63 = ALBtNotification._advertisements.modify();
      v65 = v64;
      v66 = *v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v65 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = sub_100326598(0, *(v66 + 2) + 1, 1, v66);
        *v65 = v66;
      }

      v69 = *(v66 + 2);
      v68 = *(v66 + 3);
      if (v69 >= v68 >> 1)
      {
        v66 = sub_100326598(v68 > 1, v69 + 1, 1, v66);
        *v65 = v66;
      }

      *(v66 + 2) = v69 + 1;
      (*v96)(&v66[v60 + v69 * v107], v62, v108);
      v63(v112, 0);
      result = (*(*v1 + 200))(v112);
      if (__OFADD__(*v70, 1))
      {
        goto LABEL_35;
      }

      ++*v70;
      v71 = (result)(v112, 0);
      v72 = (v113)(v71);
      v73 = *(v109() + 16);

      v6 = v102;
      if (v72 >= v73)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003264CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
}

uint64_t sub_1003264FC()
{
  v0 = ALDataGenerationBase.deinit();
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t sub_100326534()
{
  v0 = ALDataGenerationBase.deinit();
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return _swift_deallocClassInstance(v0, 64, 7);
}

size_t sub_100326598(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(&unk_100431430, &unk_10039A880);
  v10 = *(type metadata accessor for ALBtAdvertisement() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ALBtAdvertisement() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100326770(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_100430648, &qword_10039A3A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10032687C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  _StringGuts.grow(_:)(24);
  v4._object = 0x80000001003B12C0;
  v4._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 8238;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unsigned __int8 *sub_100326948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_10032839C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1003279E8();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100326ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_10032839C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1003279E8();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100327458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_10032839C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1003279E8();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1003279E8()
{
  v0 = String.subscript.getter();
  v4 = sub_100327A68(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100327A68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100037C48(v9, 0);
  v12 = sub_100327BC0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100327BC0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100327DE0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100327DE0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100327DE0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_100327E5C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_100327FAC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_100327FAC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100328044(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1003280B8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100328044(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100327DE0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1003280B8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_1003281DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = 0;
    return v15 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v16[0] = a3;
    v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v13 = v16;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v13 = _StringObject.sharedUTF8.getter();
  }

  result = a6(v13, a1, a2, a3, a4, a5);
  if (!v6)
  {
    v17 = BYTE4(result) & 1;
    v15 = result | ((BYTE4(result) & 1) << 32);
    return v15 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_1003282AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1003283F0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_10032839C()
{
  result = qword_100430640;
  if (!qword_100430640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430640);
  }

  return result;
}

uint64_t sub_1003283F0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100327DE0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}