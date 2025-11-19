uint64_t type metadata accessor for DInitNVRAMConfig()
{
  result = qword_1004AED98;
  if (!qword_1004AED98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DInitNVRAMConfig.source.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DInitNVRAMConfig() + 20);

  return sub_10029414C(a1, v3);
}

uint64_t sub_10029414C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AE260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100294204()
{
  if (*v0)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x746E656D75677261;
  }
}

uint64_t sub_100294240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656D75677261 && a2 == 0xE900000000000073;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100294320(uint64_t a1)
{
  v2 = sub_10029471C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10029435C(uint64_t a1)
{
  v2 = sub_10029471C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitNVRAMConfig.init(arguments:source:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v4 = &a3[*(type metadata accessor for DInitNVRAMConfig() + 20)];

  return sub_1002943E4(a2, v4);
}

uint64_t sub_1002943E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AE260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DInitNVRAMConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_1000039E8(&qword_1004AE260);
  __chkstk_darwin(v20);
  v5 = &v16 - v4;
  v21 = sub_1000039E8(&qword_1004AED00);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for DInitNVRAMConfig();
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E2A8(a1, a1[3]);
  sub_10029471C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v17 = v8;
  v11 = v10;
  v12 = v19;
  v23 = 0;
  sub_100294770();
  v13 = v21;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v11;
  *v11 = v24;
  v22 = 1;
  sub_1002947C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v13);
  v14 = v16;
  sub_1002943E4(v5, &v16[*(v17 + 20)]);
  sub_100294880(v14, v18);
  sub_100003C3C(a1);
  return sub_100295AB0(v14, type metadata accessor for DInitNVRAMConfig);
}

unint64_t sub_10029471C()
{
  result = qword_1004AED08;
  if (!qword_1004AED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AED08);
  }

  return result;
}

unint64_t sub_100294770()
{
  result = qword_1004AED10;
  if (!qword_1004AED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AED10);
  }

  return result;
}

unint64_t sub_1002947C4()
{
  result = qword_1004AED18;
  if (!qword_1004AED18)
  {
    sub_100003A94(&qword_1004AE260);
    sub_100295688(&qword_1004AE578, type metadata accessor for DInitConfigSource);
    sub_1001D81C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AED18);
  }

  return result;
}

uint64_t sub_100294880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitNVRAMConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DInitNVRAMConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AED20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_10029471C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_100294AA8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for DInitNVRAMConfig();
    v10[13] = 1;
    sub_1000039E8(&qword_1004AE260);
    sub_100294AFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100294AA8()
{
  result = qword_1004AED28;
  if (!qword_1004AED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AED28);
  }

  return result;
}

unint64_t sub_100294AFC()
{
  result = qword_1004AED30;
  if (!qword_1004AED30)
  {
    sub_100003A94(&qword_1004AE260);
    sub_100295688(&qword_1004AE530, type metadata accessor for DInitConfigSource);
    sub_1001D7020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AED30);
  }

  return result;
}

uint64_t static DInitNVRAMConfig.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 != 4)
  {
    if (v5 != 4)
    {
      if (v4 == 3)
      {
        if (v5 == 3)
        {
          goto LABEL_3;
        }
      }

      else if (v5 != 3)
      {
        v8 = 0xE800000000000000;
        v9 = 0x6E776F6474756873;
        if (v4 != 1)
        {
          v9 = 1953069157;
          v8 = 0xE400000000000000;
        }

        if (*a1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0x746F6F626572;
        }

        if (v4)
        {
          v11 = v8;
        }

        else
        {
          v11 = 0xE600000000000000;
        }

        v12 = 0xE800000000000000;
        v13 = 0x6E776F6474756873;
        if (v5 != 1)
        {
          v13 = 1953069157;
          v12 = 0xE400000000000000;
        }

        if (*a2)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0x746F6F626572;
        }

        if (*a2)
        {
          v15 = v12;
        }

        else
        {
          v15 = 0xE600000000000000;
        }

        if (v10 == v14 && v11 == v15)
        {

          goto LABEL_3;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_3;
        }
      }
    }

    return 0;
  }

  if (v5 != 4)
  {
    return 0;
  }

LABEL_3:
  v6 = *(type metadata accessor for DInitNVRAMConfig() + 20);

  return sub_10029514C(&a1[v6], &a2[v6]);
}

uint64_t sub_100294D50(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 48);
  v55 = *(a1 + 32);
  v56 = v3;
  v57 = *(a1 + 64);
  v58 = *(a1 + 80);
  v4 = *(a1 + 16);
  v53 = *a1;
  v54 = v4;
  v5 = *(a1 + 88);
  v6 = *a2;
  v7 = *(a2 + 17);
  v48 = *(a2 + 1);
  v49 = v7;
  v8 = *(a2 + 33);
  v9 = *(a2 + 49);
  v10 = *(a2 + 65);
  *(v52 + 15) = *(a2 + 10);
  v51 = v9;
  v52[0] = v10;
  v50 = v8;
  v11 = a2[88];
  if ((v5 & 1) == 0)
  {
    v18 = *(a1 + 48);
    *&v39[32] = *(a1 + 32);
    *&v39[48] = v18;
    *&v39[64] = *(a1 + 64);
    *&v39[80] = *(a1 + 80);
    v19 = *(a1 + 16);
    *v39 = *a1;
    *&v39[16] = v19;
    v40 = v5;
    if ((v11 & 1) == 0)
    {
      if (((v6 ^ v39[0]) & 1) == 0)
      {
        v27 = *(a1 + 48);
        v34 = *(a1 + 32);
        v35 = v27;
        v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        v28 = *(a1 + 16);
        v32 = *a1;
        v33 = v28;
        v38 = v5;
        v29 = a1;
        sub_100013E54(v39, v30, &qword_1004AD2C0);
        sub_100013E54(v29, v30, &qword_1004AD2C0);
        sub_100013E54(a2, v30, &qword_1004AD2C0);
        goto LABEL_13;
      }

      v24 = *(a1 + 48);
      v34 = *(a1 + 32);
      v35 = v24;
      v36 = *(a1 + 64);
      v37 = *(a1 + 80);
      v25 = *(a1 + 16);
      v32 = *a1;
      v33 = v25;
      v38 = v5;
      v26 = a1;
      sub_100013E54(v39, v30, &qword_1004AD2C0);
      sub_100013E54(v26, v30, &qword_1004AD2C0);
      sub_100013E54(a2, v30, &qword_1004AD2C0);
      v22 = &v32;
      v21 = &qword_1004AD2C0;
LABEL_8:
      sub_100013F2C(v22, v21);
      return 0;
    }

    v20 = a1;
    sub_100013E54(v39, &v32, &qword_1004AD2C0);
    a1 = v20;
LABEL_7:
    *&v39[32] = v55;
    *&v39[48] = v56;
    *&v39[64] = v57;
    *&v39[80] = v58;
    *v39 = v53;
    *&v39[16] = v54;
    v40 = v5;
    v41 = v6;
    v43 = v49;
    v42 = v48;
    *&v46[15] = *(v52 + 15);
    *v46 = v52[0];
    v45 = v51;
    v44 = v50;
    v47 = v11;
    sub_100013E54(a1, &v32, &qword_1004AD2C0);
    sub_100013E54(a2, &v32, &qword_1004AD2C0);
    v21 = &unk_1004AEE00;
    v22 = v39;
    goto LABEL_8;
  }

  if ((a2[88] & 1) == 0)
  {
    goto LABEL_7;
  }

  v39[0] = v6;
  *&v39[1] = *(a2 + 1);
  *&v39[17] = *(a2 + 17);
  *&v39[65] = *(a2 + 65);
  *&v39[49] = *(a2 + 49);
  *&v39[33] = *(a2 + 33);
  *&v39[80] = *(a2 + 10);
  v40 = v11;
  v30[0] = *v39;
  v30[1] = *&v39[16];
  v31 = *&v39[80];
  v30[3] = *&v39[48];
  v30[4] = *&v39[64];
  v30[2] = *&v39[32];
  v12 = *(a1 + 16);
  v59[0] = *a1;
  v59[1] = v12;
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v60 = *(a1 + 80);
  v59[3] = v14;
  v59[4] = v15;
  v59[2] = v13;
  v16 = a1;
  v17 = _s10DarwinInit6ConfigV8TailspinV2eeoiySbAE_AEtFZ_0(v59, v30);
  sub_100013E54(v16, &v32, &qword_1004AD2C0);
  sub_100013E54(a2, &v32, &qword_1004AD2C0);
  sub_100013F2C(v39, &qword_1004AD2C0);
  if (!v17)
  {
    v34 = v55;
    v35 = v56;
    v36 = v57;
    v37 = v58;
    v32 = v53;
    v33 = v54;
    v38 = v5;
    v21 = &qword_1004AD2C0;
    v22 = &v32;
    goto LABEL_8;
  }

  v34 = v55;
  v35 = v56;
  v36 = v57;
  v37 = v58;
  v32 = v53;
  v33 = v54;
  v38 = v5;
LABEL_13:
  sub_100013F2C(&v32, &qword_1004AD2C0);
  return 1;
}

uint64_t sub_10029514C(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for DInitConfigSource();
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004AE260);
  v7 = __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = sub_1000039E8(&qword_1004AEDF8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v19 - v14;
  v16 = *(v13 + 56);
  sub_100013E54(a1, &v19 - v14, &qword_1004AE260);
  sub_100013E54(v20, &v15[v16], &qword_1004AE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100013E54(v15, v9, &qword_1004AE260);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      memcpy(v21, &v15[v16], sizeof(v21));
      v17 = static DInitConfig.== infix(_:_:)(v9, v21);
      memcpy(v22, v21, sizeof(v22));
      sub_1001D711C(v22);
      memcpy(v23, v9, 0x2D8uLL);
      sub_1001D711C(v23);
LABEL_9:
      sub_100013F2C(v15, &qword_1004AE260);
      return v17 & 1;
    }

    memcpy(v23, v9, 0x2D8uLL);
    sub_1001D711C(v23);
  }

  else
  {
    sub_100013E54(v15, v11, &qword_1004AE260);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001C7BF0(&v15[v16], v5);
      v17 = _s10DarwinInit17DInitConfigSourceO2eeoiySbAC_ACtFZ_0(v11, v5);
      sub_100295AB0(v5, type metadata accessor for DInitConfigSource);
      sub_100295AB0(v11, type metadata accessor for DInitConfigSource);
      goto LABEL_9;
    }

    sub_100295AB0(v11, type metadata accessor for DInitConfigSource);
  }

  sub_100013F2C(v15, &qword_1004AEDF8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10029544C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 4)
  {
    if (v5 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 4)
    {
      return 0;
    }

    v6 = a1;
    v7 = a2;
    v8 = a3;
    v9 = _s10DarwinInit19DInitNVRAMArgumentsV2eeoiySbAC_ACtFZ_0(v4, v5);
    a3 = v8;
    a2 = v7;
    v10 = v9;
    a1 = v6;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a3 + 20);
  v12 = &a1[v11];
  v13 = &a2[v11];

  return sub_10029514C(v12, v13);
}

uint64_t DInitNVRAMConfig.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  if (v3 == 4 || (Hasher._combine(_:)(1u), v3 == 3))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  type metadata accessor for DInitNVRAMConfig();
  return sub_1002503A0(a1);
}

Swift::Int DInitNVRAMConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitNVRAMConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100295604()
{
  Hasher.init(_seed:)();
  DInitNVRAMConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100295688(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002956E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 <= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 4;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1000039E8(&qword_1004AE260);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1002957B8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = sub_1000039E8(&qword_1004AE260);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100295864()
{
  sub_1002958E8();
  if (v0 <= 0x3F)
  {
    sub_100295938();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002958E8()
{
  if (!qword_1004AEDA8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AEDA8);
    }
  }
}

void sub_100295938()
{
  if (!qword_1004AEDB0)
  {
    type metadata accessor for DInitConfigSource();
    v0 = type metadata accessor for Either();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AEDB0);
    }
  }
}

unint64_t sub_1002959AC()
{
  result = qword_1004AEDE0;
  if (!qword_1004AEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEDE0);
  }

  return result;
}

unint64_t sub_100295A04()
{
  result = qword_1004AEDE8;
  if (!qword_1004AEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEDE8);
  }

  return result;
}

unint64_t sub_100295A5C()
{
  result = qword_1004AEDF0;
  if (!qword_1004AEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEDF0);
  }

  return result;
}

uint64_t sub_100295AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Log.Operation.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 2003789939;
  }

  if (a1 == 1)
  {
    return 0x6D6165727473;
  }

  return 0x7463656C6C6F63;
}

uint64_t sub_100295B60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6165727473;
  if (v2 != 1)
  {
    v4 = 0x7463656C6C6F63;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2003789939;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D6165727473;
  if (*a2 != 1)
  {
    v8 = 0x7463656C6C6F63;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2003789939;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100295C54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100295CEC()
{
  String.hash(into:)();
}

Swift::Int sub_100295D70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100295E04@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit3LogV9OperationO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100295E34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D6165727473;
  if (v2 != 1)
  {
    v5 = 0x7463656C6C6F63;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2003789939;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100295E88()
{
  sub_100298ADC();

  return RawRepresentable<>.init(argument:)();
}

uint64_t sub_100295EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100298ADC();

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_100295F50()
{
  v0 = sub_1000039E8(&qword_1004AAD78);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Log.configuration);
  sub_1000270B4(v3, static Log.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Log.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Log.configuration);
}

uint64_t static Log.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Log.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Log.operation.getter()
{
  sub_1000039E8(&qword_1004AEE08);
  Argument.wrappedValue.getter();
  return v1;
}

uint64_t (*Log.operation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000039E8(&qword_1004AEE08);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Log.additionalArguments.getter()
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AEE10);
  Argument.wrappedValue.getter();
  return v1;
}

uint64_t sub_100296314@<X0>(void *a1@<X8>)
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AEE10);
  result = Argument.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10029637C()
{
  type metadata accessor for Log();

  sub_1000039E8(&qword_1004AEE10);
  return Argument.wrappedValue.setter();
}

uint64_t Log.additionalArguments.setter()
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AEE10);
  return Argument.wrappedValue.setter();
}

uint64_t (*Log.additionalArguments.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AEE10);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_100197120;
}

uint64_t Log.debug.getter()
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  Flag.wrappedValue.getter();
  return v1;
}

uint64_t sub_100296534@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10029659C()
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t Log.debug.setter()
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t (*Log.debug.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Log.compact.getter()
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  Flag.wrappedValue.getter();
  return v1;
}

uint64_t sub_100296744@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002967AC()
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t Log.compact.setter()
{
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t (*Log.compact.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Log.run()()
{
  sub_1000039E8(&qword_1004A6B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376BB0;
  *(inited + 32) = 6778732;
  *(inited + 40) = 0xE300000000000000;
  sub_1000039E8(&qword_1004AEE08);
  Argument.wrappedValue.getter();
  if (__s1[0])
  {
    if (__s1[0] == 1)
    {
      v1 = 0xE600000000000000;
      v2 = 0x6D6165727473;
    }

    else
    {
      v1 = 0xE700000000000000;
      v2 = 0x7463656C6C6F63;
    }
  }

  else
  {
    v1 = 0xE400000000000000;
    v2 = 2003789939;
  }

  *(inited + 48) = v2;
  *(inited + 56) = v1;
  v27 = inited;
  Argument.wrappedValue.getter();
  if (__s1[0] <= 1u)
  {
    sub_10034A28C(&off_100488E28);
  }

  type metadata accessor for Log();
  sub_1000039E8(&qword_1004AE998);
  Flag.wrappedValue.getter();
  if (__s1[0] == 1)
  {
    sub_10034A28C(&off_100488E68);
  }

  Flag.wrappedValue.getter();
  if (__s1[0] == 1)
  {
    sub_10034A28C(&off_100488EA8);
  }

  v3 = *(v27 + 16);
  v22 = v27;
  v21 = (v27 + 40);
  while (1)
  {
    v26 = _swiftEmptyArrayStorage;
    sub_1003110C8(0, v3, 0);
    v4 = v26;
    if (v3)
    {
      break;
    }

LABEL_28:
    *__s1 = v4;
    sub_10034A1A0(&off_100488EE8);
    v13 = *__s1;
    if (!*(*__s1 + 16))
    {
      goto LABEL_41;
    }

    v14 = execvp(*(*__s1 + 32), (*__s1 + 32));
    v15 = *(v13 + 16);
    if (v15)
    {

      v16 = 32;
      do
      {
        v17 = *(v13 + v16);
        if (v17)
        {
          free(v17);
        }

        v16 += 8;
        --v15;
      }

      while (v15);
    }

    if (v14 != -1)
    {

      return;
    }

    v18 = errno.getter();
    if (v18 != 4)
    {
      *__s1 = v18;
      v19 = v18;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v20 = v19;

      return;
    }
  }

  v5 = 0;
  v6 = v21;
  v7 = *(v22 + 16);
  while (v7 != v5)
  {
    if (v5 >= *(v22 + 16))
    {
      goto LABEL_40;
    }

    v8 = *v6;
    if ((*v6 & 0x1000000000000000) != 0)
    {
LABEL_27:

      sub_1000039E8(&qword_1004AEE18);
      _StringGuts._slowWithCString<A>(_:)();
      goto LABEL_23;
    }

    if ((v8 & 0x2000000000000000) != 0)
    {
      *__s1 = *(v6 - 1);
      v24 = v8 & 0xFFFFFFFFFFFFFFLL;

      v9 = __s1;
    }

    else
    {
      if ((*(v6 - 1) & 0x1000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v9 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    v25 = strdup(v9);
LABEL_23:

    v10 = v25;
    v26 = v4;
    v12 = v4[2];
    v11 = v4[3];
    if (v12 >= v11 >> 1)
    {
      sub_1003110C8((v11 > 1), v12 + 1, 1);
      v4 = v26;
    }

    ++v5;
    v4[2] = v12 + 1;
    v4[v12 + 4] = v10;
    v6 += 2;
    if (v3 == v5)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

unint64_t sub_100296CF0()
{
  v1 = 0x6F6974617265706FLL;
  v2 = 0x6775626564;
  if (*v0 != 2)
  {
    v2 = 0x746361706D6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100296D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10029896C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100296D98(uint64_t a1)
{
  v2 = sub_1002980E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100296DD4(uint64_t a1)
{
  v2 = sub_1002980E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Log.init()@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v1 - 8);
  v16[3] = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ArgumentArrayParsingStrategy();
  __chkstk_darwin(v3 - 8);
  v16[2] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v5 - 8);
  v7 = v16 - v6;
  v8 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  ArgumentHelp.init(stringLiteral:)();
  v11 = type metadata accessor for ArgumentHelp();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 0, 1, v11);
  v13 = type metadata accessor for CompletionKind();
  v14 = *(*(v13 - 8) + 56);
  v14(v7, 1, 1, v13);
  sub_10029808C();
  Argument<A>.init(help:completion:)();
  type metadata accessor for Log();
  ArgumentHelp.init(stringLiteral:)();
  v12(v10, 0, 1, v11);
  v14(v7, 1, 1, v13);
  static ArgumentArrayParsingStrategy.remaining.getter();
  Argument.init<A>(wrappedValue:parsing:help:completion:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12(v10, 0, 1, v11);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v12(v10, 0, 1, v11);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t Log.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v50 = a2;
  v56 = sub_1000039E8(&qword_1004AE998);
  v52 = *(v56 - 8);
  v2 = __chkstk_darwin(v56);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v55 = &v49 - v4;
  v57 = sub_1000039E8(&qword_1004AEE10);
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v59 = &v49 - v5;
  v62 = sub_1000039E8(&qword_1004AEE08);
  v58 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v49 - v6;
  v63 = sub_1000039E8(&qword_1004AEE28);
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v67 = &v49 - v7;
  v8 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v8 - 8);
  v66 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArgumentArrayParsingStrategy();
  __chkstk_darwin(v10 - 8);
  v65 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  v18 = type metadata accessor for Log();
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v70 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArgumentHelp.init(stringLiteral:)();
  v21 = type metadata accessor for ArgumentHelp();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v71 = (v22 + 56);
  v23(v17, 0, 1, v21);
  v64 = v23;
  v24 = type metadata accessor for CompletionKind();
  v25 = *(*(v24 - 8) + 56);
  v25(v14, 1, 1, v24);
  sub_10029808C();
  v26 = v14;
  Argument<A>.init(help:completion:)();
  v27 = *(v19 + 28);
  ArgumentHelp.init(stringLiteral:)();
  v23(v17, 0, 1, v21);
  v25(v26, 1, 1, v24);
  static ArgumentArrayParsingStrategy.remaining.getter();
  v53 = v27;
  v28 = v70;
  Argument.init<A>(wrappedValue:parsing:help:completion:)();
  v29 = v19;
  v30 = *(v19 + 32);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v31 = v64;
  v64(v17, 0, 1, v21);
  v65 = v30;
  Flag<A>.init(wrappedValue:name:help:)();
  v32 = *(v29 + 36);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v33 = v28;
  v31(v17, 0, 1, v21);
  v34 = v68;
  Flag<A>.init(wrappedValue:name:help:)();
  sub_10000E2A8(v34, v34[3]);
  sub_1002980E0();
  v35 = v67;
  v36 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v36)
  {
    sub_100003C3C(v34);
    v48 = v33;
  }

  else
  {
    v37 = v65;
    v38 = v33;
    v39 = v58;
    v40 = v59;
    v75 = 0;
    sub_10000E720(&qword_1004AEE38, &qword_1004AEE08);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v39 + 40))(v38, v61, v62);
    v74 = 1;
    sub_10000E720(&qword_1004AEE40, &qword_1004AEE10);
    v41 = v57;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v54 + 40))(v38 + v53, v40, v41);
    v73 = 2;
    sub_10000E720(&qword_1004AEA50, &qword_1004AE998);
    v44 = v55;
    v43 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v71 = *(v52 + 40);
    v52 += 40;
    v71(&v37[v70], v44, v43);
    v72 = 3;
    v45 = v51;
    v46 = v63;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v60 + 8))(v35, v46);
    v47 = v70;
    v71((v70 + v32), v45, v43);
    sub_100298190(v47, v50);
    sub_100003C3C(v34);
    v48 = v47;
  }

  return sub_100298134(v48);
}

uint64_t default argument 0 of Log.init(operation:additionalArguments:debug:compact:)()
{
  v0 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  ArgumentHelp.init(stringLiteral:)();
  v6 = type metadata accessor for ArgumentHelp();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for CompletionKind();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_10029808C();
  return Argument<A>.init(help:completion:)();
}

uint64_t Log.init(operation:additionalArguments:debug:compact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for ArgumentArrayParsingStrategy();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1000039E8(&qword_1004AEE08);
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  type metadata accessor for Log();
  ArgumentHelp.init(stringLiteral:)();
  v16 = type metadata accessor for ArgumentHelp();
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 0, 1, v16);
  v18 = type metadata accessor for CompletionKind();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  static ArgumentArrayParsingStrategy.remaining.getter();
  Argument.init<A>(wrappedValue:parsing:help:completion:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v17(v14, 0, 1, v16);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v17(v14, 0, 1, v16);
  return Flag<A>.init(wrappedValue:name:help:)();
}

unint64_t _s10DarwinInit3LogV9OperationO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488DC0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for Log()
{
  result = qword_1004AEEB8;
  if (!qword_1004AEEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10029808C()
{
  result = qword_1004AEE20;
  if (!qword_1004AEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEE20);
  }

  return result;
}

unint64_t sub_1002980E0()
{
  result = qword_1004AEE30;
  if (!qword_1004AEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEE30);
  }

  return result;
}

uint64_t sub_100298134(uint64_t a1)
{
  v2 = type metadata accessor for Log();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100298190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Log();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002981F8()
{
  result = qword_1004AEE48;
  if (!qword_1004AEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEE48);
  }

  return result;
}

uint64_t sub_1002982B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Log();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002982F8@<X0>(_BYTE *a1@<X8>)
{
  sub_1000039E8(&qword_1004AEE08);
  result = Argument.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002983C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004AEE08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000039E8(&qword_1004AEE10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000039E8(&qword_1004AE998);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10029853C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004AEE08);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000039E8(&qword_1004AEE10);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000039E8(&qword_1004AE998);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1002986AC()
{
  sub_1002987F4(319, &qword_1004AEEC8, &type metadata for Log.Operation, &type metadata accessor for Argument);
  if (v0 <= 0x3F)
  {
    sub_100298790();
    if (v1 <= 0x3F)
    {
      sub_1002987F4(319, &qword_1004AEAC0, &type metadata for Bool, &type metadata accessor for Flag);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100298790()
{
  if (!qword_1004AEED0)
  {
    sub_100003A94(&qword_1004A6B48);
    v0 = type metadata accessor for Argument();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AEED0);
    }
  }
}

void sub_1002987F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100298868()
{
  result = qword_1004AEF08;
  if (!qword_1004AEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEF08);
  }

  return result;
}

unint64_t sub_1002988C0()
{
  result = qword_1004AEF10;
  if (!qword_1004AEF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEF10);
  }

  return result;
}

unint64_t sub_100298918()
{
  result = qword_1004AEF18;
  if (!qword_1004AEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEF18);
  }

  return result;
}

uint64_t sub_10029896C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100440D60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6775626564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746361706D6F63 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_100298ADC()
{
  result = qword_1004AEF20;
  if (!qword_1004AEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEF20);
  }

  return result;
}

uint64_t CryptexCacheInvalidator.__allocating_init()()
{
  v0 = type metadata accessor for FilePath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  if (qword_1004A9F08 != -1)
  {
    swift_once();
  }

  v5 = sub_1000270B4(v0, kDarwinInitCacheRootDirectory);
  v6 = OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir;
  v7 = *(v1 + 16);
  v7(v4 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir, v5, v0);
  swift_beginAccess();
  v7(v3, v4 + v6, v0);
  FilePath.appending(_:)();
  if (qword_1004A9DE8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000270B4(v0, static Cache<>.defaultCacheDirectoryPath);
  v7(v4 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_cryptexCacheDir, v8, v0);
  return v4;
}

uint64_t sub_100298D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 112))(v6);
}

uint64_t sub_100298E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 136))(v6);
}

uint64_t sub_100298FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 160))(v6);
}

uint64_t sub_1002990D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = type metadata accessor for FilePath();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_100299168(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = type metadata accessor for FilePath();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t CryptexCacheInvalidator.init()()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  if (qword_1004A9F08 != -1)
  {
    swift_once();
  }

  v9 = sub_1000270B4(v2, kDarwinInitCacheRootDirectory);
  v10 = OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir;
  v11 = *(v3 + 16);
  v11(v1 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir, v9, v2);
  swift_beginAccess();
  v11(v6, v1 + v10, v2);
  FilePath.appending(_:)();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_invalidationIdPath, v8, v2);
  if (qword_1004A9DE8 != -1)
  {
    swift_once();
  }

  v12 = sub_1000270B4(v2, static Cache<>.defaultCacheDirectoryPath);
  v11(v1 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_cryptexCacheDir, v12, v2);
  return v1;
}

void CryptexCacheInvalidator.overwrite(newValue:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for URL.DirectoryHint();
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin(v8);
  v67 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v10 - 8);
  v64 = &v60 - v11;
  v68 = type metadata accessor for URL();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FilePath();
  v73 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v60 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v60 - v21;
  __chkstk_darwin(v20);
  v24 = &v60 - v23;
  if (a2 >> 60 == 15)
  {
    v72 = v3;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000270B4(v25, qword_1004B00F8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "cryptex cache invalidation id not specified for current boot session, deleting on disk ID", v28, 2u);
    }

    v29 = *(*v5 + 152);
    v29();
    v30 = FilePath.fileExists()();
    if (v31)
    {
      (*(v73 + 8))(v19, v13);
    }

    else
    {
      v47 = v30;
      v48 = v13;
      v49 = *(v73 + 8);
      v50 = v19;
      v51 = v48;
      v73 += 8;
      v52 = v49(v50);
      if (!v47)
      {
        return;
      }

      (v29)(v52);
      FilePath.remove()();
      if (!v53)
      {
        (v49)(v16, v51);
        return;
      }

      (v49)(v16, v51);
    }

    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to remove on disk ID: %@", v34, 0xCu);
      sub_10019AC78(v35);
    }

    else
    {
    }
  }

  else
  {
    v63 = a1;
    sub_1000318C0(a1, a2);
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v71 = v13;
    v37 = type metadata accessor for Logger();
    sub_1000270B4(v37, qword_1004B00F8);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v72 = v3;
      v41 = v40;
      v61 = swift_slowAlloc();
      v74 = v61;
      *v41 = 136315138;
      (*(*v5 + 152))();
      v42 = FilePath.string.getter();
      v62 = a2;
      v44 = v43;
      (*(v73 + 8))(v24, v71);
      v45 = sub_1000026C0(v42, v44, &v74);
      a2 = v62;

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Writing new cryptex cache invalidation id to disk at %s", v41, 0xCu);
      sub_100003C3C(v61);

      v4 = v72;
    }

    (*(*v5 + 104))();
    FilePath.createDirectory(permissions:intermediateDirectories:)(0x1C0u, 1);
    if (v4)
    {
      (*(v73 + 8))(v22, v71);
      v46 = v63;
    }

    else
    {
      v62 = a2;
      v54 = *(v73 + 8);
      v55 = v71;
      v56 = v54(v22, v71);
      (*(*v5 + 152))(v56);
      FilePath.string.getter();
      v54(v24, v55);
      a2 = v62;
      v57 = v66;
      v58 = v68;
      (*(v66 + 56))(v64, 1, 1, v68);
      (*(v69 + 104))(v67, enum case for URL.DirectoryHint.inferFromPath(_:), v70);
      v59 = v65;
      URL.init(filePath:directoryHint:relativeTo:)();
      v46 = v63;
      Data.write(to:options:)();
      (*(v57 + 8))(v59, v58);
    }

    sub_100031914(v46, a2);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CryptexCacheInvalidator.purgeCache()()
{
  v2 = v0;
  v3 = type metadata accessor for FilePath();
  v57 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v55 = &v50[-v8];
  if (qword_1004A9F20 != -1)
  {
    v49 = v7;
    swift_once();
    v7 = v49;
  }

  v56 = v7;
  v9 = type metadata accessor for Logger();
  v10 = sub_1000270B4(v9, qword_1004B00F8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v54 = v1;
    v14 = v13;
    v52 = swift_slowAlloc();
    v59 = v52;
    *v14 = 136315138;
    v15 = *(*v0 + 128);
    v53 = v10;
    v16 = v55;
    v15();
    sub_100190550();
    v17 = v6;
    v18 = v56;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v12;
    v21 = v20;
    v22 = v18;
    v6 = v17;
    (*(v57 + 8))(v16, v22);
    v23 = sub_1000026C0(v19, v21, &v59);

    *(v14 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v11, v51, "Attempting to purge cryptex cache at %s...", v14, 0xCu);
    sub_100003C3C(v52);
  }

  v24 = *(*v2 + 128);
  v24();
  FilePath.removeAllFilesInDirectory()();
  if (!v25)
  {
    v37 = *(v57 + 8);
    v38 = v6;
    v39 = v56;
    (v37)(v38, v56);

    v29 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v40))
    {
      v41 = swift_slowAlloc();
      v54 = v29;
      v42 = v41;
      v57 = swift_slowAlloc();
      v59 = v57;
      *v42 = 136315138;
      v52 = v37;
      v43 = v55;
      LODWORD(v53) = v40;
      v24();
      sub_100190550();
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (v52)(v43, v39);
      v47 = sub_1000026C0(v44, v46, &v59);

      *(v42 + 4) = v47;
      v48 = v54;
      _os_log_impl(&_mh_execute_header, v54, v53, "Successfully purged cryptex cache at %s", v42, 0xCu);
      sub_100003C3C(v57);

      return;
    }

    goto LABEL_13;
  }

  v26 = v56;
  v27 = v57 + 8;
  v28 = *(v57 + 8);
  v28(v6, v56);
  v59 = v25;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if (swift_dynamicCast() && v58 == 20)
  {
    v57 = v27;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v31 = 136315138;
      v32 = v55;
      LODWORD(v53) = v30;
      v24();
      sub_100190550();
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v28(v32, v26);
      v36 = sub_1000026C0(v33, v35, &v59);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v53, "Cryptex cache at %s does not exist, nothing to purge", v31, 0xCu);
      sub_100003C3C(v54);
    }

LABEL_13:
  }
}

uint64_t CryptexCacheInvalidator.readID()()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 152))(v12);
  FilePath.string.getter();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 56))(v5, 1, 1, v10);
  (*(v19 + 104))(v18, enum case for URL.DirectoryHint.inferFromPath(_:), v20);
  URL.init(filePath:directoryHint:relativeTo:)();
  v15 = Data.init(contentsOf:options:)();
  (*(v11 + 8))(v14, v10);
  return v15;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CryptexCacheInvalidator.verify(invalidationId:)(Swift::String_optional invalidationId)
{
  object = invalidationId.value._object;
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (object)
  {
    static String.Encoding.utf8.getter();
    object = String.data(using:allowLossyConversion:)();
    v39 = v12;
    v9 = (*(v8 + 8))(v11, v7);
  }

  else
  {
    v39 = 0xF000000000000000;
  }

  v13 = v1;
  (*(*v1 + 152))(v9);
  v14 = FilePath.fileExists()();
  if (v15)
  {
    (*(v4 + 8))(v6, v3);
    v16 = object;
    v17 = v39;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000270B4(v18, qword_1004B00F8);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to read on disk cryptex cache invalidation ID due to: %@. Must assume current workload does not have access to cryptex cache and purge", v21, 0xCu);
      sub_10019AC78(v22);
    }

    (*(*v13 + 192))();
    CryptexCacheInvalidator.overwrite(newValue:)(v16, v17);

    v26 = 0;
    v27 = 0xF000000000000000;
  }

  else
  {
    v24 = v14;
    v25 = (*(v4 + 8))(v6, v3);
    if (v24)
    {
      v16 = object;
      v26 = (*(*v13 + 200))(v25);
      v27 = v28;
    }

    else
    {
      v26 = 0;
      v27 = 0xF000000000000000;
      v16 = object;
    }

    v17 = v39;
  }

  if (v17 >> 60 == 15)
  {
    if (v27 >> 60 == 15)
    {
      sub_100031994(v26, v27);
      sub_100031994(v16, v17);
      sub_100031914(v16, v17);
LABEL_25:
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000270B4(v34, qword_1004B00F8);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "cryptex cache invalidation id for current boot session matches value on disk", v37, 2u);
      }

      sub_100031914(v26, v27);

      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v27 >> 60 == 15)
  {
LABEL_18:
    sub_100031994(v26, v27);
    sub_100031994(v16, v17);
    sub_100031914(v16, v17);
    sub_100031914(v26, v27);
    goto LABEL_19;
  }

  sub_100031994(v26, v27);
  sub_100031994(v16, v17);
  v33 = sub_10030651C(v16, v17, v26, v27);
  sub_100031914(v26, v27);
  sub_100031914(v16, v17);
  if (v33)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000270B4(v29, qword_1004B00F8);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "cryptex cache invalidation id for current boot session does NOT match value on disk", v32, 2u);
  }

  (*(*v13 + 192))();
  CryptexCacheInvalidator.overwrite(newValue:)(v16, v17);
  sub_100031914(v26, v27);
LABEL_30:
  sub_100031914(v16, v17);
}

uint64_t CryptexCacheInvalidator.deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir;
  v2 = type metadata accessor for FilePath();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_cryptexCacheDir, v2);
  v3(v0 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_invalidationIdPath, v2);
  return v0;
}

uint64_t CryptexCacheInvalidator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir;
  v2 = type metadata accessor for FilePath();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_cryptexCacheDir, v2);
  v3(v0 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_invalidationIdPath, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CryptexCacheInvalidator()
{
  result = qword_1004AEF50;
  if (!qword_1004AEF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10029AEFC()
{
  result = type metadata accessor for FilePath();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t DInitUserConfig.appleConnectSSHConfig.getter()
{
  v1 = *(v0 + 72);
  sub_1001EB4BC(v1);
  return v1;
}

uint64_t DInitUserConfig.appleConnectSSHConfig.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1001EB53C(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t DInitUserConfig.appleAuthenticationConfig.getter()
{
  v1 = *(v0 + 88);
  sub_1001EB5F0(v1);
  return v1;
}

uint64_t DInitUserConfig.appleAuthenticationConfig.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1001EB694(v4[11]);
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = a3;
  v4[14] = a4;
  return result;
}

__n128 DInitUserConfig.init(userName:uid:gid:password:isAdmin:sshAuthorizedKeys:passwordlessSudo:appleConnectSSHConfig:appleAuthenticationConfig:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, __n128 a13, uint64_t a14, uint64_t a15)
{
  result = a13;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = a15;
  return result;
}

uint64_t sub_10029B32C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Config.User.VersionOneKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == Config.User.VersionOneKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10029B3B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Config.User.VersionOneKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10029B418()
{
  Config.User.VersionOneKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_10029B46C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Config.User.VersionOneKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10029B4CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit15DInitUserConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10029B4FC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit15DInitUserConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10029B534(uint64_t a1)
{
  v2 = sub_10029C408();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10029B570(uint64_t a1)
{
  v2 = sub_10029C408();

  return CodingKey.debugDescription.getter(a1, v2);
}

double DInitUserConfig.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10029BE74(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t DInitUserConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AF050);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10029C408();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11[0]) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11[0]) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11[0] = *(v3 + 72);
    v12 = 7;
    sub_10029C45C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = *(v3 + 104);
    v11[0] = *(v3 + 88);
    v11[1] = v9;
    v12 = 8;
    sub_10029C4B0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_10029B8F4(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s10DarwinInit15DInitUserConfigV2eeoiySbAC_ACtFZ_0(v12, v14);
}

void DInitUserConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + 16));
  Hasher._combine(_:)(*(v2 + 20));
  if (*(v2 + 32))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(v2 + 40);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = v4 & 1;
  }

  Hasher._combine(_:)(v5);
  if (*(v2 + 56))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = *(v2 + 64);
  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = v6 & 1;
  }

  Hasher._combine(_:)(v7);
  v8 = *(v2 + 72);
  if (v8 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *(v2 + 80);
    Hasher._combine(_:)(1u);
    DInitAppleConnectSSHConfig.hash(into:)(a1, v8, v9);
  }

  v10 = *(v2 + 88);
  if (v10 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *(v2 + 104);
    v11 = *(v2 + 112);
    v13 = *(v2 + 96);
    Hasher._combine(_:)(1u);

    DInitAppleAuthenticationConfig.hash(into:)(a1, v10, v13, v12, v11);
  }
}

Swift::Int DInitUserConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitUserConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10029BB40()
{
  Hasher.init(_seed:)();
  DInitUserConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL _s10DarwinInit15DInitUserConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6 || (*(a1 + 24) != *(a2 + 24) || v5 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 2 || ((v8 ^ v7) & 1) != 0)
    {
      return result;
    }
  }

  v10 = *(a1 + 56);
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11 || (*(a1 + 48) != *(a2 + 48) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 64);
  v13 = *(a2 + 64);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }

LABEL_32:
    v14 = *(a1 + 72);
    v15 = *(a2 + 72);
    if (v14 == 1)
    {
      if (v15 != 1)
      {
        return 0;
      }

      goto LABEL_34;
    }

    if (v15 == 1)
    {
      return 0;
    }

    v24 = *(a1 + 80);
    v25 = *(a2 + 80);
    if (v14)
    {
      if (!v15)
      {

        goto LABEL_52;
      }

      if (sub_10024DC98(v14, *(a2 + 72)))
      {
        goto LABEL_41;
      }
    }

    else if (!v15)
    {
LABEL_41:
      if (v24)
      {
        if (!v25 || (sub_10024DC98(v24, v25) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v25)
      {
        return 0;
      }

LABEL_34:
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      v19 = *(a1 + 104);
      v18 = *(a1 + 112);
      v21 = *(a2 + 88);
      v20 = *(a2 + 96);
      v23 = *(a2 + 104);
      v22 = *(a2 + 112);
      if (v16 == 1)
      {
        if (v21 == 1)
        {
          return 1;
        }

        goto LABEL_46;
      }

      if (v21 == 1)
      {
LABEL_46:
        sub_1001EB5F0(v21);
        sub_1001EB5F0(v16);
        sub_1001EB694(v16);
        sub_1001EB694(v21);
        return 0;
      }

      v26 = _s10DarwinInit30DInitAppleAuthenticationConfigV2eeoiySbAC_ACtFZ_0(v16, v17, v19, v18, v21, v20, v23, v22);
      sub_1001EB5F0(v21);
      sub_1001EB5F0(v16);

      sub_1001EB694(v16);
      return v26;
    }

    sub_1001EB4BC(v15);

LABEL_52:

    return 0;
  }

  result = 0;
  if (v13 != 2 && ((v13 ^ v12) & 1) == 0)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_10029BE74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_1000039E8(&qword_1004AF0A0);
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v28 - v6;
  sub_10000E2A8(a1, a1[3]);
  sub_10029C408();
  v40 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
  }

  else
  {
    v8 = v5;
    v38 = a2;
    LOBYTE(v49) = 0;
    v9 = v39;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v12;
    LOBYTE(v49) = 1;
    v68 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v49) = 2;
    v13 = a1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v49) = 3;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v15;
    LOBYTE(v41) = 4;
    sub_1001D76C0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v49 == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v49 & 1;
    }

    v34 = v16;
    LOBYTE(v49) = 5;
    *&v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v33 + 1) = v17;
    LOBYTE(v41) = 6;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v49 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v49 & 1;
    }

    LOBYTE(v41) = 7;
    sub_10029C790();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v18;
    v19 = v49;
    v32 = v50;
    v69 = 8;
    sub_10029C7E4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v8 + 8))(v40, v9);
    v39 = v66;
    v40 = v65;
    v28 = v67;
    v29 = *(&v66 + 1);
    v20 = v37;
    *&v41 = v11;
    *(&v41 + 1) = v37;
    v21 = v68;
    *&v42 = __PAIR64__(v14, v68);
    v30 = v14;
    v22 = v36;
    *(&v42 + 1) = v35;
    *&v43 = v36;
    BYTE8(v43) = v34;
    v23 = *(&v33 + 1);
    v44 = v33;
    LOBYTE(v45) = v31;
    *(&v45 + 1) = v19;
    *&v46 = v32;
    *(&v46 + 1) = v65;
    v47 = v66;
    v48 = v67;
    sub_10029C838(&v41, &v49);
    sub_100003C3C(v13);
    v49 = v11;
    v50 = v20;
    v51 = v21;
    v52 = v30;
    v53 = v35;
    v54 = v22;
    v55 = v34;
    v56 = v33;
    v57 = v23;
    v58 = v31;
    v59 = v19;
    v60 = v32;
    v61 = v40;
    v62 = v39;
    v63 = v29;
    v64 = v28;
    result = sub_10029C870(&v49);
    v24 = v46;
    v25 = v38;
    *(v38 + 64) = v45;
    *(v25 + 80) = v24;
    *(v25 + 96) = v47;
    *(v25 + 112) = v48;
    v26 = v42;
    *v25 = v41;
    *(v25 + 16) = v26;
    v27 = v44;
    *(v25 + 32) = v43;
    *(v25 + 48) = v27;
  }

  return result;
}

unint64_t _s10DarwinInit15DInitUserConfigV10CodingKeysO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100488F38, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10029C408()
{
  result = qword_1004AF058;
  if (!qword_1004AF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF058);
  }

  return result;
}

unint64_t sub_10029C45C()
{
  result = qword_1004AF060;
  if (!qword_1004AF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF060);
  }

  return result;
}

unint64_t sub_10029C4B0()
{
  result = qword_1004AF068;
  if (!qword_1004AF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF068);
  }

  return result;
}

unint64_t sub_10029C508()
{
  result = qword_1004AF070;
  if (!qword_1004AF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF070);
  }

  return result;
}

unint64_t sub_10029C560()
{
  result = qword_1004AF078;
  if (!qword_1004AF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF078);
  }

  return result;
}

unint64_t sub_10029C5B8()
{
  result = qword_1004AF080;
  if (!qword_1004AF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF080);
  }

  return result;
}

unint64_t sub_10029C610()
{
  result = qword_1004AF088;
  if (!qword_1004AF088)
  {
    sub_100003A94(&qword_1004AF090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF088);
  }

  return result;
}

unint64_t sub_10029C678()
{
  result = qword_1004AF098;
  if (!qword_1004AF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF098);
  }

  return result;
}

uint64_t sub_10029C6CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10029C714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10029C790()
{
  result = qword_1004AF0A8;
  if (!qword_1004AF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0A8);
  }

  return result;
}

unint64_t sub_10029C7E4()
{
  result = qword_1004AF0B0;
  if (!qword_1004AF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0B0);
  }

  return result;
}

void sub_10029C8BC(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v4 = v3;
  __len = a3 - a2;
  if (a2)
  {
    v7 = a3 == a2;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v26 = v8;
  while (1)
  {
    while (1)
    {
      v9 = FileDescriptor._read(into:retryOnInterrupt:)();
      if (!v4)
      {
        break;
      }

      v4 = 0;
LABEL_13:
      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0);
      if ((swift_dynamicCast() & 1) == 0 || v28 != 35)
      {
        if (qword_1004A9F20 != -1)
        {
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      usleep(0x64u);
    }

    v11 = v9;
    if (v10)
    {
      sub_100187D3C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v12 = v11;
      goto LABEL_13;
    }

    if (!v9)
    {
      break;
    }

    v13 = _swiftEmptyArrayStorage;
    if ((v26 & 1) == 0)
    {
      v14 = __len;
      if (__len >= 1)
      {
        sub_1000039E8(&qword_1004A6148);
        v13 = swift_allocObject();
        v15 = j__malloc_size(v13);
        v14 = __len;
        v13[2] = __len;
        v13[3] = 2 * v15 - 64;
      }

      if (a3 <= a2)
      {
        __break(1u);
        return;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        swift_once();
LABEL_24:
        v16 = type metadata accessor for Logger();
        sub_1000270B4(v16, qword_1004B00F8);
        swift_errorRetain();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          swift_errorRetain();
          v21 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 4) = v21;
          *v20 = v21;
          _os_log_impl(&_mh_execute_header, v17, v18, "Error reading from remote service connection: %@", v19, 0xCu);
          sub_10019AC78(v20);
        }

        swift_willThrow();
        return;
      }

      memmove(v13 + 4, a2, v14);
    }

    Data._Representation.append(contentsOf:)();
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000270B4(v22, qword_1004B00F8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "remote service connection closed", v25, 2u);
  }
}

uint64_t *sub_10029CC6C(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v32 = xmmword_1003780A0;
  if (remote_device_get_state() != 2)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000270B4(v12, qword_1004B00F8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "remote device is not connected", v15, 2u);
    }

    sub_10029D270();
    swift_allocError();
    *v16 = 0;
    goto LABEL_20;
  }

  String.utf8CString.getter();
  v6 = remote_device_copy_service();

  if (!v6)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000270B4(v17, qword_1004B00F8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000026C0(a2, a3, &v31);
      _os_log_impl(&_mh_execute_header, v18, v19, "remote device doesn't have service %s", v20, 0xCu);
      sub_100003C3C(v21);
    }

    sub_10029D270();
    swift_allocError();
    *v22 = 1;
LABEL_20:
    swift_willThrow();
    goto LABEL_27;
  }

  if (remote_service_create_connected_socket() == -1)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000270B4(v23, qword_1004B00F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000026C0(a2, a3, &v31);
      _os_log_impl(&_mh_execute_header, v24, v25, "failed to connect to %s", v26, 0xCu);
      sub_100003C3C(v27);
    }

    sub_10029D270();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
  }

  else
  {
    swift_slowAlloc();
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, qword_1004B00F8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "fetching config from remote service", v10, 2u);
    }

    a2 = &v30;
    __chkstk_darwin(v11);
    FileDescriptor.closeAfter<A>(_:)();
    if (!v3)
    {
      a2 = v32;
      sub_1000318C0(v32, *(&v32 + 1));

      sub_100031928(v32, *(&v32 + 1));
      return a2;
    }
  }

LABEL_27:
  sub_100031928(v32, *(&v32 + 1));
  return a2;
}

unint64_t sub_10029D1FC()
{
  result = qword_1004AF0B8;
  if (!qword_1004AF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0B8);
  }

  return result;
}

unint64_t sub_10029D270()
{
  result = qword_1004AF0C0;
  if (!qword_1004AF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0C0);
  }

  return result;
}

Swift::Void __swiftcall FileDescriptor.closeNoThrow()()
{
  v1 = v0;
  while (1)
  {
    if (qword_1004A9F30 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000270B4(v3, static Logger.filesystem);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v4, v5, "Closing file descriptor (%d)", v6, 8u);
    }

    v7 = FileDescriptor._close()();
    if ((v7 & 0x100000000) == 0)
    {
      break;
    }

    v8 = v7;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v9 = v8;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0);
    if ((swift_dynamicCast() & 1) == 0 || v17 != 4)
    {
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 67109378;
        *(v14 + 4) = v1;
        *(v14 + 8) = 2112;
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 10) = v16;
        *v15 = v16;
        _os_log_impl(&_mh_execute_header, v12, v13, "Failed to close file descriptor (%d): %@", v14, 0x12u);
        sub_10019AC78(v15);
      }

      else
      {
      }

      return;
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v2 = swift_slowAlloc();
      *v2 = 67109120;
      *(v2 + 4) = v1;

      _os_log_impl(&_mh_execute_header, v10, v11, "File descriptor (%d) close: Interrupted", v2, 8u);
    }

    else
    {
    }
  }
}

uint64_t CredentialString.redactionOverrideKey.unsafeMutableAddressor()
{
  if (qword_1004A9E60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CodingUserInfoKey();

  return sub_1000270B4(v0, static CredentialString.redactionOverrideKey);
}

uint64_t sub_10029D674()
{
  v0 = sub_1000039E8(&qword_1004AF0D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  sub_1000279B4(v3, static CredentialString.redactionOverrideKey);
  v4 = sub_1000270B4(v3, static CredentialString.redactionOverrideKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CredentialString.redactionOverrideKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = sub_1000270B4(v2, static CredentialString.redactionOverrideKey);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

DarwinInit::CredentialString_optional __swiftcall CredentialString.init(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    countAndFlagsBits = a1.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  *v1 = countAndFlagsBits;
  v1[1] = a1.value._object;
  result.value = a1;
  return result;
}

uint64_t CredentialString.encode(to:)(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10000E2A8(a1, a1[3]);
  v2 = dispatch thunk of Encoder.userInfo.getter();
  if (qword_1004A9E60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = sub_1000270B4(v3, static CredentialString.redactionOverrideKey);
  if (!*(v2 + 16) || (v5 = sub_1001814FC(v4), (v6 & 1) == 0))
  {

    memset(v9, 0, sizeof(v9));
LABEL_10:
    sub_100003BEC(v10, v11);
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    goto LABEL_11;
  }

  sub_100003CA0(*(v2 + 56) + 32 * v5, v9);

  sub_10007D654(v9, v8);
  if ((swift_dynamicCast() & 1) == 0 || v12 != 1)
  {
    sub_100003C3C(v8);
    goto LABEL_10;
  }

  sub_100003BEC(v10, v11);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  sub_100003C3C(v8);
LABEL_11:
  sub_1001EDC44(v9);
  return sub_100003C3C(v10);
}

unint64_t sub_10029DB20()
{
  result = qword_1004AF0C8;
  if (!qword_1004AF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0C8);
  }

  return result;
}

uint64_t sub_10029DB9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10029DF2C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t DInitData.encode(to:)(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  Data.base64EncodedString(options:)(0);
  sub_100003BEC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100003C3C(v2);
}

uint64_t sub_10029DC88(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  Data.base64EncodedString(options:)(0);
  sub_100003BEC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100003C3C(v2);
}

uint64_t sub_10029DD44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1000318C0(*a1, v3);
  sub_1000318C0(v4, v5);
  v6 = sub_10030651C(v2, v3, v4, v5);
  sub_100031928(v4, v5);
  sub_100031928(v2, v3);
  return v6 & 1;
}

uint64_t sub_10029DDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s10DarwinInit9DInitDataV8argumentACSgSS_tcfC_0(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

Swift::Int sub_10029DDF0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1000318C0(v1, v2);
  Data.hash(into:)();
  sub_100031928(v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_10029DE54()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1000318C0(v2, v1);
  Data.hash(into:)();

  return sub_100031928(v2, v1);
}

Swift::Int sub_10029DEB4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1000318C0(v1, v2);
  Data.hash(into:)();
  sub_100031928(v1, v2);
  return Hasher._finalize()();
}

__n128 sub_10029DF14@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10029DF20@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1000318C0(v2, v3);
}

uint64_t sub_10029DF2C(void *a1)
{
  v3 = type metadata accessor for DecodingError.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000E2A8(v14, v14[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = Data.init(base64Encoded:options:)();
    v9 = v8;

    if (v9 >> 60 != 15)
    {
      sub_100003C3C(v14);
      sub_100003C3C(a1);
      return v7;
    }

    sub_10000E2A8(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v11 = v10;
    (*(v4 + 16))(v10, v6, v3);
    (*(*(v7 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v7);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    sub_100003C3C(v14);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t _s10DarwinInit9DInitDataV8argumentACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v47 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v41 - v14;
  __chkstk_darwin(v13);
  v17 = &v41 - v16;

  v44 = a1;
  FilePath.init(_:)();
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000270B4(v18, qword_1004B00F8);
  v46 = *(v10 + 16);
  v46(v15, v17, v9);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v45 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v41 = v17;
    v23 = v22;
    v24 = swift_slowAlloc();
    v43 = a2;
    v25 = v24;
    v51 = v24;
    *v23 = 136315138;
    sub_100190550();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v8;
    v28 = v27;
    v29 = v15;
    v30 = *(v10 + 8);
    v30(v29, v9);
    v31 = sub_1000026C0(v26, v28, &v51);
    v8 = v42;

    *(v23 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "Loading raw data of file at %s", v23, 0xCu);
    sub_100003C3C(v25);

    v17 = v41;
  }

  else
  {

    v32 = v15;
    v30 = *(v10 + 8);
    v30(v32, v9);
  }

  v33 = v47;
  v46(v47, v17, v9);
  v34 = v48;
  (*(v49 + 104))(v48, enum case for URL.DirectoryHint.inferFromPath(_:), v50);
  sub_1001746A8(v33, v34, v8);
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  result = (*(v36 + 48))(v8, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v38 = Data.init(contentsOf:options:)();
    v39 = (v36 + 8);
    v40 = v38;
    (*v39)(v8, v35);
    v30(v17, v9);

    return v40;
  }

  return result;
}

unint64_t sub_10029E6A8()
{
  result = qword_1004AF0D8;
  if (!qword_1004AF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0D8);
  }

  return result;
}

BOOL DInitCARoots.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489030, v2);

  return v3 != 0;
}

BOOL DInitCARoots.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489068, v2);

  return v3 != 0;
}

uint64_t sub_10029E79C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004890A0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10029E7F0@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1004890D8, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10029E848(uint64_t a1)
{
  v2 = sub_10029EA14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10029E884(uint64_t a1)
{
  v2 = sub_10029EA14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitCARoots.init(from:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AF0E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_10029EA14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

unint64_t sub_10029EA14()
{
  result = qword_1004AF0E8;
  if (!qword_1004AF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0E8);
  }

  return result;
}

uint64_t sub_10029EA68@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AF0E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10029EA14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100003C3C(a1);
  *a2 = v9;
  return result;
}

uint64_t DInitCARoots.encode(to:)(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AF0F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_10029EA14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10029ECF8(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AF0F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_10029EA14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

BOOL static DInitCARoots.== infix(_:_:)(int a1, int a2)
{
  if (a1 != 2)
  {
    return a2 != 2 && ((a2 ^ a1) & 1) == 0;
  }

  return a2 == 2;
}

BOOL sub_10029EE70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

void DInitCARoots.hash(into:)(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = a2 & 1;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int DInitCARoots.hashValue.getter(unsigned __int8 a1)
{
  v2 = a1;
  Hasher.init(_seed:)();
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = a1 & 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10029EF5C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10029EFC0()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10029F008()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10029F06C()
{
  result = qword_1004AF0F8;
  if (!qword_1004AF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF0F8);
  }

  return result;
}

unint64_t sub_10029F0C4()
{
  result = qword_1004AF100;
  if (!qword_1004AF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF100);
  }

  return result;
}

unint64_t sub_10029F11C()
{
  result = qword_1004AF108;
  if (!qword_1004AF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF108);
  }

  return result;
}

unint64_t sub_10029F174()
{
  result = qword_1004AF110;
  if (!qword_1004AF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF110);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitCARoots(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t SHA256Digest.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SHA256();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FilePath.description.getter();
  String.utf8CString.getter();

  v9 = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
  v10 = v9;
  if ((v9 & 0x100000000) != 0)
  {
    v21 = v9;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v14 = v10;
    v15 = type metadata accessor for FilePath();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  else
  {
    v19 = a2;

    if ((vm_page_size & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      swift_slowAlloc();
      SHA256.init()();
      while (1)
      {
        v12 = FileDescriptor._read(into:retryOnInterrupt:)();
        if (v2)
        {
          break;
        }

        if (v13)
        {
          v20 = v12;
          v16 = v12;
          sub_100187D3C();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v17 = v16;
          break;
        }

        if (v12 <= 0)
        {
          SHA256.finalize()();
          break;
        }

        SHA256.update(bufferPointer:)();
      }

      (*(v6 + 8))(v8, v5);

      v18 = type metadata accessor for FilePath();
      return (*(*(v18 - 8) + 8))(a1, v18);
    }
  }

  return result;
}

uint64_t sub_10029F54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10029F5DC(uint64_t a1)
{
  v2 = sub_10029FDAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10029F618(uint64_t a1)
{
  v2 = sub_10029FDAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10029F66C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10029FC3C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DInitNVRAMArguments.encode(to:)(void *a1, char a2)
{
  v4 = sub_1000039E8(&qword_1004AF118);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_10000E2A8(a1, a1[3]);
  sub_10029FDAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_10019C044();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void DInitNVRAMArguments.hash(into:)(uint64_t a1, char a2)
{
  if (a2 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int DInitNVRAMArguments.hashValue.getter(unsigned __int8 a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_10029F988()
{
  if (*v0 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int sub_10029FA4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t _s10DarwinInit19DInitNVRAMArgumentsV2eeoiySbAC_ACtFZ_0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 == 3)
  {
    return 0;
  }

  v3 = a1;
  if (!a1)
  {
    v5 = 0xE600000000000000;
    v4 = 0x746F6F626572;
    v6 = a2;
    if (a2)
    {
      goto LABEL_14;
    }

LABEL_23:
    v8 = 0xE600000000000000;
    if (v4 != 0x746F6F626572)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (a1 == 1)
  {
    v4 = 0x6E776F6474756873;
  }

  else
  {
    v4 = 1953069157;
  }

  if (v3 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = a2;
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_14:
  if (v6 == 1)
  {
    v7 = 0x6E776F6474756873;
  }

  else
  {
    v7 = 1953069157;
  }

  if (v6 == 1)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 != v7)
  {
LABEL_26:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v9 & 1) != 0;
  }

LABEL_24:
  if (v5 != v8)
  {
    goto LABEL_26;
  }

  return 1;
}

void *sub_10029FC3C(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AF148);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_10029FDAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_10019C280();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100003C3C(a1);
  }

  return v7;
}

unint64_t sub_10029FDAC()
{
  result = qword_1004AF120;
  if (!qword_1004AF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF120);
  }

  return result;
}

unint64_t sub_10029FE04()
{
  result = qword_1004AF128;
  if (!qword_1004AF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitNVRAMArguments(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_10029FF1C()
{
  result = qword_1004AF130;
  if (!qword_1004AF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF130);
  }

  return result;
}

unint64_t sub_10029FF74()
{
  result = qword_1004AF138;
  if (!qword_1004AF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF138);
  }

  return result;
}

unint64_t sub_10029FFCC()
{
  result = qword_1004AF140;
  if (!qword_1004AF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF140);
  }

  return result;
}

uint64_t ExclusiveLockedFile.deinit()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path, v1);
  sub_1002A0744(v5, v4);
  v7 = *(v2 + 8);
  v7(v4, v1);
  v7((v0 + v6), v1);
  return v0;
}

uint64_t ExclusiveLockedFile.__deallocating_deinit()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path, v1);
  sub_1002A0744(v5, v4);
  v7 = *(v2 + 8);
  v7(v4, v1);
  v7((v0 + v6), v1);
  return swift_deallocClassInstance();
}

uint64_t static ExclusiveLockedFile.open(_:permissions:nonBlocking:)(uint64_t a1, int a2, int a3)
{
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1002A0B48(a1, a2, a3);
  if (!v3)
  {
    v12 = v11;
    (*(v8 + 16))(v10, a1, v7);
    type metadata accessor for ExclusiveLockedFile();
    a1 = swift_allocObject();
    *(a1 + 16) = v12;
    (*(v8 + 32))(a1 + OBJC_IVAR____TtC10DarwinInit19ExclusiveLockedFile_path, v10, v7);
  }

  return a1;
}

uint64_t static ExclusiveLockedFile.withLock<A>(on:permissions:nonBlocking:_:)(uint64_t a1, uint64_t a2, __int16 a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 70) = a4;
  *(v6 + 68) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return _swift_task_switch(sub_1002A0410, 0, 0);
}

uint64_t sub_1002A0410()
{
  *(v0 + 64) = sub_1002A0B48(*(v0 + 24), *(v0 + 68), *(v0 + 70));
  v4 = (*(v0 + 32) + **(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1002A0560;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1002A0560()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1002A06DC;
  }

  else
  {
    v2 = sub_1002A0674;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A0674()
{
  sub_1002A0744(*(v0 + 64), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A06DC()
{
  sub_1002A0744(*(v0 + 64), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002A0744(int a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v35 - v9;
  if (qword_1004A9F30 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_1000270B4(v11, static Logger.filesystem);
  v38 = *(v5 + 16);
  v38(v10, a2, v4);
  v39 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v40 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v35[1] = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v36 = a2;
    v19 = v18;
    v41[0] = v18;
    *v17 = 136315138;
    sub_100190550();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v8;
    v22 = v21;
    v23 = *(v5 + 8);
    v23(v10, v4);
    v24 = sub_1000026C0(v20, v22, v41);
    v8 = v37;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "Releasing exclusive lock on %s", v17, 0xCu);
    sub_100003C3C(v19);
    a2 = v36;
  }

  else
  {

    v23 = *(v5 + 8);
    v23(v10, v4);
  }

  FilePath.withCString<A>(_:)();
  FileDescriptor.closeNoThrow()();
  v38(v8, a2, v4);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = v23;
    v29 = swift_slowAlloc();
    v41[0] = v29;
    *v27 = 136315138;
    sub_100190550();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v8;
    v33 = v32;
    v28(v31, v4);
    v34 = sub_1000026C0(v30, v33, v41);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Released exclusive lock on %s", v27, 0xCu);
    sub_100003C3C(v29);
  }

  else
  {

    v23(v8, v4);
  }
}

uint64_t sub_1002A0B48(uint64_t a1, int a2, int a3)
{
  v72 = a2;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v68 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v65 - v11;
  v13 = __chkstk_darwin(v10);
  v67 = v65 - v14;
  __chkstk_darwin(v13);
  v16 = v65 - v15;
  if (qword_1004A9F30 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_1000270B4(v17, static Logger.filesystem);
  v19 = *(v7 + 16);
  v75 = a1;
  v74 = v7 + 16;
  v73 = v19;
  v19(v16, a1, v6);
  v69 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  v22 = os_log_type_enabled(v20, v21);
  v70 = v7;
  v66 = v12;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v65[1] = a3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v71 = v6;
    v26 = v25;
    v77[0] = v25;
    *v24 = 136315138;
    sub_100190550();
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = *(v7 + 8);
    v30(v16, v71);
    v31 = sub_1000026C0(v27, v29, v77);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Acquiring exclusive lock on %s", v24, 0xCu);
    sub_100003C3C(v26);
    v6 = v71;
  }

  else
  {

    v30 = *(v7 + 8);
    v32 = v30(v16, v6);
  }

  v71 = v30;
  while (1)
  {
    __chkstk_darwin(v32);
    *&v65[-4] = 0x100020000000002;
    LOWORD(v65[-2]) = v72;
    HIWORD(v65[-2]) = v33;
    FilePath.withCString<A>(_:)();
    if (v3)
    {
      break;
    }

    v34 = LODWORD(v77[0]);
    v77[0] = 0;
    v77[1] = 0;
    v77[2] = 0x300000000;
    v35 = v75;
    while (fcntl(_:_:_:)() == -1)
    {
      v36 = errno.getter();
      if (v36 != 4)
      {
        v38 = v36;
        sub_100187D3C();
        swift_allocError();
        *v39 = v38;
        v40 = v75;
        swift_willThrow();
        FileDescriptor.closeNoThrow()();
        swift_willThrow();
        v41 = v68;
        goto LABEL_14;
      }
    }

    v37 = v67;
    v73(v67, v35, v6);
    sub_1002EC1CC(v37, &v76);
    if (v76.st_nlink)
    {
      v54 = v66;
      v73(v66, v35, v6);
      v55 = Logger.logObject.getter();
      v56 = v6;
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77[0] = v59;
        *v58 = 136315394;
        sub_100190550();
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v54;
        v63 = v62;
        v71(v61, v56);
        v64 = sub_1000026C0(v60, v63, v77);

        *(v58 + 4) = v64;
        *(v58 + 12) = 1024;
        *(v58 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v55, v57, "Acquired exclusive lock on %s with fd %d", v58, 0x12u);
        sub_100003C3C(v59);
      }

      else
      {

        v71(v54, v56);
      }

      return v34;
    }

    FileDescriptor.closeNoThrow()();
  }

  v41 = v68;
  v40 = v75;
LABEL_14:
  v73(v41, v40, v6);
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v42 = v6;
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v77[0] = v46;
    *v44 = 136315394;
    sub_100190550();
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v41;
    v50 = v49;
    v71(v48, v42);
    v51 = sub_1000026C0(v47, v50, v77);

    *(v44 + 4) = v51;
    *(v44 + 12) = 2112;
    swift_errorRetain();
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v52;
    *v45 = v52;
    _os_log_impl(&_mh_execute_header, v34, v43, "Failed to acquire exclusive locked file '%s': %@", v44, 0x16u);
    sub_10019AC78(v45);

    sub_100003C3C(v46);
  }

  else
  {

    v71(v41, v42);
  }

  swift_willThrow();
  return v34;
}

uint64_t type metadata accessor for ExclusiveLockedFile()
{
  result = qword_1004AF180;
  if (!qword_1004AF180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002A13EC()
{
  result = type metadata accessor for FilePath();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static FilePath.newTemporaryPath()@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  FilePath.init(_:)();
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    strcpy(v18, "darwin-init-");
    HIBYTE(v18[6]) = 0;
    v18[7] = -5120;
    UUID.init()();
    sub_1002A3494(&qword_1004AA848, &type metadata accessor for UUID);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    (*(v2 + 8))(v4, v1);
    return FilePath.appending(_:)();
  }

  return result;
}

uint64_t FilePath.save(_:append:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for URL.DirectoryHint();
  v64 = *(v7 - 8);
  __chkstk_darwin(v7);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v9 - 8);
  v65 = &v55 - v10;
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v19 = (&v55 - v18);
  if ((a3 & 1) == 0)
  {
    v60 = v17;
    v61 = v7;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000270B4(v27, qword_1004B00F8);
    v15 = (v12 + 16);
    v28 = v11;
    v59 = *(v12 + 16);
    v59(v19, v66, v11);
    sub_1000318C0(a1, a2);
    v29 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v29, v58))
    {
      sub_100031928(a1, a2);

      (*(v12 + 8))(v19, v11);
      goto LABEL_34;
    }

    v23 = v3;
    v21 = swift_slowAlloc();
    result = swift_slowAlloc();
    v56 = result;
    v67 = result;
    *v21 = 134218242;
    v26 = a2 >> 62;
    v62 = v3;
    v57 = v29;
    if ((a2 >> 62) <= 1)
    {
      if (v26)
      {
        LODWORD(v30) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v30 = v30;
      }

      else
      {
        v30 = BYTE6(a2);
      }

LABEL_33:
      *(v21 + 4) = v30;
      sub_100031928(a1, a2);
      *(v21 + 12) = 2080;
      sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath);
      v28 = v11;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v12 + 8))(v19, v11);
      v47 = sub_1000026C0(v44, v46, &v67);

      *(v21 + 14) = v47;
      v48 = v57;
      _os_log_impl(&_mh_execute_header, v57, v58, "Saving %ld bytes of data to file at %s", v21, 0x16u);
      sub_100003C3C(v56);

LABEL_34:
      v50 = v60;
      v49 = v61;
      v59(v60, v66, v28);
      v51 = v63;
      (*(v64 + 104))(v63, enum case for URL.DirectoryHint.inferFromPath(_:), v49);
      v52 = v65;
      sub_1001746A8(v50, v51, v65);
      v53 = type metadata accessor for URL();
      v54 = *(v53 - 8);
      result = (*(v54 + 48))(v52, 1, v53);
      if (result != 1)
      {
        Data.write(to:options:)();
        return (*(v54 + 8))(v52, v53);
      }

LABEL_39:
      __break(1u);
      return result;
    }

LABEL_20:
    if (v26 == 2)
    {
      v36 = *(a1 + 16);
      v35 = *(a1 + 24);
      v34 = __OFSUB__(v35, v36);
      v30 = v35 - v36;
      if (v34)
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_33;
  }

  v62 = v3;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000270B4(v20, qword_1004B00F8);
  v21 = v11;
  (*(v12 + 16))(v15, v66, v11);
  sub_1000318C0(a1, a2);
  v19 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v19, v22))
  {
    sub_100031928(a1, a2);

    v31 = (*(v12 + 8))(v15, v11);
    goto LABEL_30;
  }

  v23 = swift_slowAlloc();
  result = swift_slowAlloc();
  v64 = result;
  v67 = result;
  *v23 = 134218242;
  v25 = a2 >> 62;
  LODWORD(v65) = v22;
  if ((a2 >> 62) > 1)
  {
    if (v25 != 2)
    {
      v26 = 0;
      goto LABEL_29;
    }

    v33 = *(a1 + 16);
    v32 = *(a1 + 24);
    v34 = __OFSUB__(v32, v33);
    v26 = v32 - v33;
    if (!v34)
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v25)
  {
LABEL_24:
    LODWORD(v26) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v26 = v26;
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_38;
  }

  v26 = BYTE6(a2);
LABEL_29:
  *(v23 + 4) = v26;
  sub_100031928(a1, a2);
  *(v23 + 12) = 2080;
  sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath);
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  v38 = a2;
  v40 = v39;
  (*(v12 + 8))(v15, v11);
  v41 = sub_1000026C0(v37, v40, &v67);
  a2 = v38;

  *(v23 + 14) = v41;
  _os_log_impl(&_mh_execute_header, v19, v65, "Appending %ld bytes of string to file at %s", v23, 0x16u);
  sub_100003C3C(v64);

LABEL_30:
  __chkstk_darwin(v31);
  *(&v55 - 2) = 0x20800000001;
  *(&v55 - 2) = 16777636;
  v42 = v62;
  result = FilePath.withCString<A>(_:)();
  if (!v42)
  {
    __chkstk_darwin(result);
    *(&v55 - 8) = v43;
    *(&v55 - 3) = a1;
    *(&v55 - 2) = a2;
    return FileDescriptor.closeAfter<A>(_:)();
  }

  return result;
}

uint64_t FilePath.loadData()()
{
  v37 = type metadata accessor for URL.DirectoryHint();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000270B4(v12, qword_1004B00F8);
  v13 = *(v7 + 16);
  v36 = v0;
  v32 = v13;
  v13(v11, v0, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v1;
    v17 = v16;
    v29 = swift_slowAlloc();
    v38 = v29;
    *v17 = 136315138;
    sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v5;
    v20 = v19;
    (*(v7 + 8))(v11, v6);
    v21 = sub_1000026C0(v18, v20, &v38);
    v5 = v30;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Loading raw data of file at %s", v17, 0xCu);
    sub_100003C3C(v29);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v22 = v33;
  v32(v33, v36, v6);
  v23 = v34;
  (*(v35 + 104))(v34, enum case for URL.DirectoryHint.inferFromPath(_:), v37);
  sub_1001746A8(v22, v23, v5);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v5, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v27 = Data.init(contentsOf:options:)();
    (*(v25 + 8))(v5, v24);
    return v27;
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.loadString()()
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL.DirectoryHint();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v7 - 8);
  v43 = v36 - v8;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v38 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v36 - v13;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000270B4(v15, qword_1004B00F8);
  v16 = *(v10 + 16);
  v42 = v0;
  v37 = v16;
  v16(v14, v0, v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36[2] = v1;
    v20 = v19;
    v36[0] = swift_slowAlloc();
    v44 = v36[0];
    *v20 = 136315138;
    sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v36[1] = v4;
    v23 = v22;
    (*(v10 + 8))(v14, v9);
    v24 = sub_1000026C0(v21, v23, &v44);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Loading utf8 data of file at %s", v20, 0xCu);
    sub_100003C3C(v36[0]);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v25 = v38;
  v37(v38, v42, v9);
  v26 = v39;
  (*(v40 + 104))(v39, enum case for URL.DirectoryHint.inferFromPath(_:), v41);
  v27 = v43;
  sub_1001746A8(v25, v26, v43);
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v27, 1, v28);
  if (v30 == 1)
  {
    __break(1u);
  }

  else
  {
    static String.Encoding.utf8.getter();
    v32 = String.init(contentsOf:encoding:)();
    v34 = v33;
    (*(v29 + 8))(v27, v28);
    v30 = v32;
    v31 = v34;
  }

  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.save(_:append:)(Swift::String _, Swift::Bool append)
{
  v3 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for String.Encoding();
  v58 = *(v6 - 8);
  __chkstk_darwin(v6);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL.DirectoryHint();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v10 - 8);
  v62 = &v50 - v11;
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v50 - v18;
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  if (append)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000270B4(v22, qword_1004B00F8);
    (*(v13 + 16))(v16, v65, v12);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v56 = v2;
      v25 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v64[0] = v62;
      *v25 = 134218242;
      if ((object & 0x1000000000000000) != 0)
      {
        v26 = String.UTF8View._foreignCount()();
      }

      else if ((object & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(object) & 0xF;
      }

      else
      {
        v26 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      *(v25 + 4) = v26;

      *(v25 + 12) = 2080;
      sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = object;
      v30 = v29;
      (*(v13 + 8))(v16, v12);
      v31 = sub_1000026C0(v27, v30, v64);
      object = v28;

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Appending %ld bytes of string to file at %s", v25, 0x16u);
      sub_100003C3C(v62);

      v3 = v56;
    }

    else
    {

      v32 = (*(v13 + 8))(v16, v12);
    }

    __chkstk_darwin(v32);
    *(&v50 - 2) = 0x20800000001;
    *(&v50 - 2) = 16777636;
    v43 = FilePath.withCString<A>(_:)();
    if (!v3)
    {
      __chkstk_darwin(v43);
      *(&v50 - 8) = v44;
      *(&v50 - 3) = countAndFlagsBits;
      *(&v50 - 2) = object;
      FileDescriptor.closeAfter<A>(_:)();
    }
  }

  else
  {
    v54 = v6;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000270B4(v33, qword_1004B00F8);
    v55 = *(v13 + 16);
    v55(v21, v65, v12);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v53 = v35;
      v36 = object;
      v37 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v64[0] = v52;
      *v37 = 134218242;
      v56 = v2;
      if ((v36 & 0x1000000000000000) != 0)
      {
        v38 = String.UTF8View._foreignCount()();
      }

      else if ((v36 & 0x2000000000000000) != 0)
      {
        v38 = HIBYTE(v36) & 0xF;
      }

      else
      {
        v38 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      *(v37 + 4) = v38;

      *(v37 + 12) = 2080;
      sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath);
      v51 = v36;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v13 + 8))(v21, v12);
      v42 = sub_1000026C0(v39, v41, v64);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v34, v53, "Saving %ld bytes of data to file at %s", v37, 0x16u);
      sub_100003C3C(v52);

      object = v51;
    }

    else
    {

      (*(v13 + 8))(v21, v12);
    }

    v64[0] = countAndFlagsBits;
    v64[1] = object;
    v55(v19, v65, v12);
    v45 = v59;
    (*(v60 + 104))(v59, enum case for URL.DirectoryHint.inferFromPath(_:), v61);
    v46 = v62;
    sub_1001746A8(v19, v45, v62);
    v47 = type metadata accessor for URL();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      __break(1u);
    }

    else
    {
      v49 = v57;
      static String.Encoding.utf8.getter();
      sub_10000B080();
      StringProtocol.write(to:atomically:encoding:)();
      (*(v58 + 8))(v49, v54);
      (*(v48 + 8))(v46, v47);
    }
  }
}

uint64_t static FilePath.temporaryDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  FilePath.init(_:)();
  v8 = type metadata accessor for FilePath();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A333C@<X0>(uint64_t *a1@<X8>)
{
  sub_1002A3570();
  result = FileDescriptor._writeAll<A>(_:)();
  if (v3)
  {
    v4 = result;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v5 = v4;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002A33E8@<X0>(uint64_t *a1@<X8>)
{
  sub_1002A351C();
  result = FileDescriptor._writeAll<A>(_:)();
  if (v3)
  {
    v4 = result;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v5 = v4;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002A3494(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002A351C()
{
  result = qword_1004AF210;
  if (!qword_1004AF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF210);
  }

  return result;
}

unint64_t sub_1002A3570()
{
  result = qword_1004AF218;
  if (!qword_1004AF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF218);
  }

  return result;
}

uint64_t Config.prepare(on:)()
{
  v1[212] = v0;
  sub_1000039E8(&qword_1004AF220);
  v1[213] = swift_task_alloc();
  v2 = type metadata accessor for PrepareError();
  v1[214] = v2;
  v1[215] = *(v2 - 8);
  v1[216] = swift_task_alloc();
  v1[217] = swift_task_alloc();
  v3 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v1[218] = v3;
  v1[219] = *(v3 - 8);
  v1[220] = swift_task_alloc();
  v1[221] = sub_1000039E8(&qword_1004ABB80);
  v1[222] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v4 = type metadata accessor for CryptexManager.CryptexConfig(0);
  v1[224] = v4;
  v1[225] = *(v4 - 8);
  v1[226] = swift_task_alloc();
  v1[227] = swift_task_alloc();
  v5 = type metadata accessor for FilePath();
  v1[228] = v5;
  v1[229] = *(v5 - 8);
  v1[230] = swift_task_alloc();
  sub_1000039E8(&qword_1004AD1B8);
  v1[231] = swift_task_alloc();
  sub_1000039E8(&qword_1004A6D30);
  v1[232] = swift_task_alloc();

  return _swift_task_switch(sub_1002A38A0, 0, 0);
}

uint64_t sub_1002A38A0()
{
  v111 = v0;
  v1 = *(v0 + 1696);
  memcpy((v0 + 280), (v1 + 216), 0x101uLL);
  memcpy((v0 + 16), (v1 + 216), 0x101uLL);
  if (sub_100220C40((v0 + 16)) == 1)
  {
    goto LABEL_39;
  }

  memcpy((v0 + 544), (v0 + 16), 0x101uLL);
  v2 = *(v0 + 256);
  if (!v2)
  {
    goto LABEL_39;
  }

  v3 = *(v0 + 1848);
  v4 = *(v0 + 1696);
  v5 = *(v4 + 24);
  v6 = *(v4 + 56);
  v7 = *(v4 + 8);
  *(v0 + 1368) = *(v4 + 40);
  *(v0 + 1384) = v6;
  *(v0 + 1336) = v7;
  *(v0 + 1352) = v5;
  v8 = *(v4 + 88);
  v9 = *(v4 + 104);
  v10 = *(v4 + 72);
  *(v0 + 1448) = *(v4 + 120);
  *(v0 + 1416) = v8;
  *(v0 + 1432) = v9;
  *(v0 + 1400) = v10;
  v11 = *(v4 + 88);
  v109[4] = *(v4 + 72);
  v109[5] = v11;
  v109[6] = *(v4 + 104);
  v110 = *(v4 + 120);
  v12 = *(v4 + 24);
  v109[0] = *(v4 + 8);
  v109[1] = v12;
  v13 = *(v4 + 56);
  v109[2] = *(v4 + 40);
  v109[3] = v13;
  v14 = v4 + *(type metadata accessor for Config(0) + 36);
  v15 = sub_1000039E8(&qword_1004ACDA0);
  sub_100013E54(v14 + *(v15 + 44), v3, &qword_1004AD1B8);
  v16 = type metadata accessor for Config.Diavlo(0);
  v17 = (*(*(v16 - 8) + 48))(v3, 1, v16);
  v18 = *(v0 + 1856);
  v19 = *(v0 + 1848);
  if (v17 == 1)
  {
    sub_100013E54(v0 + 280, v0 + 808, &qword_1004ACE90);

    sub_100013E54(v0 + 1336, v0 + 1456, &qword_1004AD1E0);
    sub_100013F2C(v19, &qword_1004AD1B8);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  else
  {
    v21 = sub_1000039E8(&qword_1004ACD10);
    sub_100013E54(v19 + *(v21 + 44), v18, &qword_1004A6D30);
    sub_100013E54(v0 + 280, v0 + 1072, &qword_1004ACE90);

    sub_100013E54(v0 + 1336, v0 + 1576, &qword_1004AD1E0);
    sub_1002A732C(v19, type metadata accessor for Config.Diavlo);
  }

  v22 = *(v0 + 1856);
  type metadata accessor for CryptexManager();
  *(v0 + 1864) = CryptexManager.__allocating_init(from:auth:diavlo:)(v0 + 544, v109, v22);
  v23 = *(v2 + 16);
  if (v23)
  {
    v96 = *(v0 + 1792);
    v97 = *(v0 + 1800);
    v94 = *(v0 + 1768);
    v95 = *(v0 + 1776);
    v24 = *(v0 + 1760);
    v92 = *(v0 + 1752);
    v107 = *(v0 + 1744);
    *&v109[0] = _swiftEmptyArrayStorage;
    sub_100311128(0, v23, 0);
    v108 = *&v109[0];
    v25 = v2 + 64;
    v26 = _HashTable.startBucket.getter();
    v27 = 0;
    v28 = *(v2 + 36);
    v93 = v24;
    v90 = v2;
    v91 = v24 + 8;
    v85 = v2 + 72;
    v86 = v23;
    v87 = v28;
    v88 = v2 + 64;
    v89 = v0;
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v2 + 32))
    {
      if ((*(v25 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_44;
      }

      if (v28 != *(v2 + 36))
      {
        goto LABEL_45;
      }

      v99 = 1 << v26;
      v100 = v26 >> 6;
      v98 = v27;
      v30 = *(v0 + 1784);
      v31 = *(v94 + 48);
      v32 = *(v0 + 1816);
      v33 = *(v0 + 1776);
      v34 = *(v0 + 1760);
      v35 = (*(v2 + 48) + 16 * v26);
      v36 = *v35;
      v37 = v35[1];
      v106 = v26;
      sub_1002A6D54(*(v2 + 56) + *(v92 + 72) * v26, v30 + v31, type metadata accessor for Config.Cryptex.Cryptex);
      *v33 = v36;
      *(v95 + 8) = v37;
      v38 = *(v94 + 48);
      v105 = v33;
      sub_1002A6CEC(v30 + v31, v33 + v38, type metadata accessor for Config.Cryptex.Cryptex);
      v39 = v33 + v38;
      v40 = v34;
      sub_1002A6D54(v39, v34, type metadata accessor for Config.Cryptex.Cryptex);
      v102 = v96[7];
      v41 = (v32 + v96[6]);
      v42 = v32 + v96[8];
      v43 = (v32 + v96[9]);
      v104 = v96[10];
      v44 = v32 + v96[11];
      *(v44 + 16) = 0u;
      *(v44 + 32) = 0u;
      *v44 = 0u;
      v45 = v96[12];
      v46 = (v32 + v96[5]);
      *v46 = v36;
      v46[1] = v37;
      v47 = v40 + v107[10];
      v48 = v40;
      v101 = v40;
      v49 = *(sub_1000039E8(&qword_1004ACD08) + 44);
      v50 = type metadata accessor for URL();
      (*(*(v50 - 8) + 16))(v32, v47 + v49, v50);
      *(v32 + v45) = *(v93 + 96);
      v51 = *(v93 + 144);
      *v42 = *(v93 + 136);
      *(v42 + 8) = v51;
      v52 = *(v93 + 120);
      *v43 = *(v93 + 112);
      v43[1] = v52;
      v53 = v48 + v107[11];
      v54 = *(v53 + 16);
      *v41 = *(v53 + 8);
      v41[1] = v54;
      *(v32 + v102) = *(v93 + 64);
      v56 = *(v93 + 8);
      v55 = *(v93 + 16);
      v58 = *(v93 + 24);
      v57 = *(v93 + 32);
      v59 = *(v93 + 40);
      v60 = *(v93 + 48);
      v103 = *v44;

      swift_bridgeObjectRetain_n();

      sub_10021E528(v56);
      sub_10021E638(v103);
      *v44 = v56;
      *(v44 + 8) = v55;
      *(v44 + 16) = v58;
      *(v44 + 24) = v57;
      *(v44 + 32) = v59;
      *(v44 + 40) = v60;
      LOBYTE(v59) = *(v91 + v107[13]);
      sub_1002A732C(v101, type metadata accessor for Config.Cryptex.Cryptex);
      *(v32 + v104) = v59;
      sub_100013F2C(v105, &qword_1004ABB80);
      *&v109[0] = v108;
      v0 = v108[2];
      v61 = v108[3];
      if (v0 >= v61 >> 1)
      {
        sub_100311128(v61 > 1, v0 + 1, 1);
        v108 = *&v109[0];
      }

      v23 = v89;
      v62 = *(v89 + 1816);
      v108[2] = v0 + 1;
      sub_1002A6CEC(v62, v108 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v0, type metadata accessor for CryptexManager.CryptexConfig);
      v2 = v90;
      v29 = 1 << *(v90 + 32);
      if (v106 >= v29)
      {
        goto LABEL_46;
      }

      v25 = v88;
      v63 = *(v88 + 8 * v100);
      if ((v63 & v99) == 0)
      {
        goto LABEL_47;
      }

      v28 = v87;
      if (v87 != *(v90 + 36))
      {
        goto LABEL_48;
      }

      v0 = v89;
      v64 = v63 & (-2 << (v106 & 0x3F));
      if (v64)
      {
        v29 = __clz(__rbit64(v64)) | v106 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v65 = v100 << 6;
        v66 = (v85 + 8 * v100);
        v67 = v100 + 1;
        while (v67 < (v29 + 63) >> 6)
        {
          v69 = *v66++;
          v68 = v69;
          v65 += 64;
          ++v67;
          if (v69)
          {
            sub_100220ACC(v106, v87, 0);
            v29 = __clz(__rbit64(v68)) + v65;
            goto LABEL_9;
          }
        }

        sub_100220ACC(v106, v87, 0);
      }

LABEL_9:
      v27 = v98 + 1;
      v26 = v29;
      v23 = v86;
      if (v98 + 1 == v86)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v108 = _swiftEmptyArrayStorage;
LABEL_27:
  *(v0 + 1872) = v108;
  type metadata accessor for CryptexCacheDelegate();
  v23 = swift_allocObject();
  *(v0 + 1880) = v23;
  if (qword_1004A9DE8 != -1)
  {
LABEL_49:
    swift_once();
  }

  v70 = *(v0 + 1840);
  v71 = *(v0 + 1832);
  v72 = *(v0 + 1824);
  v73 = sub_1000270B4(v72, static Cache<>.defaultCacheDirectoryPath);
  (*(v71 + 16))(v70, v73, v72);
  sub_1000039E8(&qword_1004AEA00);
  swift_allocObject();

  result = sub_1002A6784(v70, v23, 0x7FFFFFFFFFFFFFFFLL);
  *(v0 + 1888) = result;
  if (result)
  {
    v75 = v108[2];
    *(v0 + 1896) = v75;
    if (v75)
    {
      v76 = *(v0 + 1800);
      *(v0 + 1912) = 0;
      *(v0 + 1904) = _swiftEmptyArrayStorage;
      v77 = *(v0 + 1872);
      if (*(v77 + 16))
      {
        v78 = result;
        sub_1002A6D54(v77 + ((*(v76 + 80) + 32) & ~*(v76 + 80)), *(v0 + 1808), type metadata accessor for CryptexManager.CryptexConfig);
        v79 = swift_task_alloc();
        *(v0 + 1920) = v79;
        *v79 = v0;
        v79[1] = sub_1002A4414;
        v80 = *(v0 + 1864);
        v81 = *(v0 + 1808);
        v82 = *(v0 + 1704);

        return sub_1002A539C(v82, v81, v80, v78);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (_swiftEmptyArrayStorage[2])
    {
      sub_1002A6DBC();
      swift_allocError();
      *v83 = _swiftEmptyArrayStorage;
      swift_willThrow();

      goto LABEL_37;
    }

LABEL_39:

    v84 = *(v0 + 8);
    goto LABEL_40;
  }

  sub_1002A6C98();
  swift_allocError();
  swift_willThrow();
LABEL_37:

  v84 = *(v0 + 8);
LABEL_40:

  return v84();
}

uint64_t sub_1002A4414()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 1808);

    sub_1002A732C(v3, type metadata accessor for CryptexManager.CryptexConfig);

    v4 = DInitData.init(rawValue:);
  }

  else
  {
    sub_1002A732C(*(v2 + 1808), type metadata accessor for CryptexManager.CryptexConfig);
    v4 = sub_1002A457C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002A457C()
{
  v1 = v0[213];
  if ((*(v0[215] + 48))(v1, 1, v0[214]) == 1)
  {
    result = sub_100013F2C(v1, &qword_1004AF220);
    v3 = v0[238];
  }

  else
  {
    v4 = v0[217];
    v5 = v0[216];
    sub_1002A6CEC(v1, v4, type metadata accessor for PrepareError);
    sub_1002A6D54(v4, v5, type metadata accessor for PrepareError);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v0[238];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_10018CF64(0, v3[2] + 1, 1, v0[238]);
    }

    v8 = v3[2];
    v7 = v3[3];
    if (v8 >= v7 >> 1)
    {
      v3 = sub_10018CF64(v7 > 1, v8 + 1, 1, v3);
    }

    v9 = v0[216];
    v10 = v0[215];
    sub_1002A732C(v0[217], type metadata accessor for PrepareError);
    v3[2] = v8 + 1;
    result = sub_1002A6CEC(v9, v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, type metadata accessor for PrepareError);
  }

  v11 = v0[239] + 1;
  if (v11 == v0[237])
  {

    if (v3[2])
    {
      sub_1002A6DBC();
      swift_allocError();
      *v12 = v3;
      swift_willThrow();
    }

    else
    {
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v0[239] = v11;
    v0[238] = v3;
    v14 = v0[234];
    if (v11 >= *(v14 + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = v0[236];
      sub_1002A6D54(v14 + ((*(v0[225] + 80) + 32) & ~*(v0[225] + 80)) + *(v0[225] + 72) * v11, v0[226], type metadata accessor for CryptexManager.CryptexConfig);
      v16 = swift_task_alloc();
      v0[240] = v16;
      *v16 = v0;
      v16[1] = sub_1002A4414;
      v17 = v0[233];
      v18 = v0[226];
      v19 = v0[213];

      return sub_1002A539C(v19, v18, v17, v15);
    }
  }

  return result;
}

uint64_t PrepareError.init(url:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PrepareError();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for PrepareError()
{
  result = qword_1004AF2D8;
  if (!qword_1004AF2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrepareError.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrepareError() + 20));
  swift_errorRetain();
  return v1;
}

DarwinInit::PrepareError::CodingKeys_optional __swiftcall PrepareError.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489110, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_PrepareError_CodingKeys_errorMessage;
  }

  else
  {
    v4.value = DarwinInit_PrepareError_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t PrepareError.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x73654D726F727265;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1002A4B58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73654D726F727265;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEC00000065676173;
  }

  if (*a2)
  {
    v5 = 0x73654D726F727265;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0xEC00000065676173;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002A4C00()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A4C84()
{
  String.hash(into:)();
}

Swift::Int sub_1002A4CF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A4D74@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100489110, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1002A4DD4(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x73654D726F727265;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEC00000065676173;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1002A4E14()
{
  if (*v0)
  {
    return 0x73654D726F727265;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1002A4E50@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100489110, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1002A4EB4(uint64_t a1)
{
  v2 = sub_1002A6E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002A4EF0(uint64_t a1)
{
  v2 = sub_1002A6E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PrepareError.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AF238);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000E2A8(a1, a1[3]);
  sub_1002A6E10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  URL.absoluteString.getter();
  v9 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {

    type metadata accessor for PrepareError();
    swift_getErrorValue();
    Error.localizedDescription.getter();
    v9 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v4 + 8))(v6, v3);
}

unint64_t PrepareErrors.localizedDescription.getter(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  (*(v4 + 104))(v6, enum case for JSONEncoder.KeyEncodingStrategy.convertToSnakeCase(_:), v3);
  dispatch thunk of JSONEncoder.keyEncodingStrategy.setter();
  v14[5] = a1;

  sub_1000039E8(&qword_1004AF248);
  sub_1002A6E64();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;

  static String.Encoding.utf8.getter();
  v10 = String.init(data:encoding:)();
  v12 = v11;

  sub_100031928(v7, v9);
  if (v12)
  {
    return v10;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

uint64_t sub_1002A539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for CryptexManager.CryptexConfig(0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002A546C, 0, 0);
}

uint64_t sub_1002A546C()
{
  v21 = v0;
  if (qword_1004A9DE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = type metadata accessor for Logger();
  *(v0 + 184) = sub_1000270B4(v3, static Cache<>.logger);
  sub_1002A6D54(v2, v1, type metadata accessor for CryptexManager.CryptexConfig);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  if (v6)
  {
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = (v7 + *(v8 + 20));
    v12 = *v11;
    v13 = v11[1];

    sub_1002A732C(v7, type metadata accessor for CryptexManager.CryptexConfig);
    v14 = sub_1000026C0(v12, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Prefetching", v9, 0xCu);
    sub_100003C3C(v10);
  }

  else
  {

    sub_1002A732C(v7, type metadata accessor for CryptexManager.CryptexConfig);
  }

  v19 = (*(**(v0 + 136) + 120) + **(**(v0 + 136) + 120));
  v15 = swift_task_alloc();
  *(v0 + 192) = v15;
  *v15 = v0;
  v15[1] = sub_1002A5738;
  v16 = *(v0 + 152);
  v17 = *(v0 + 128);

  return v19(v16, v17);
}

uint64_t sub_1002A5738()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1002A5BA4;
  }

  else
  {
    v2 = sub_1002A584C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A584C()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v2 + 104);
  v4 = *(v2 + 88);
  *(v0 + 72) = *(v2 + 72);
  *(v0 + 88) = v4;
  *(v0 + 104) = v3;
  v6 = *(v2 + 32);
  v5 = *(v2 + 48);
  v7 = *(v2 + 16);
  *(v0 + 64) = *(v2 + 64);
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  v12 = (*(*v1 + 184) + **(*v1 + 184));
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_1002A59A8;
  v9 = *(v0 + 152);
  v10 = *(v0 + 128);

  return v12(v0 + 112, v10, v0 + 72, v0 + 16, v9);
}

uint64_t sub_1002A59A8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1002A5E74;
  }

  else
  {

    v2 = sub_1002A5AC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A5AC4()
{
  sub_1002A732C(v0[19], type metadata accessor for CryptexCacheDelegate.AccessParameter);
  v1 = type metadata accessor for PrepareError();
  (*(*(v1 - 8) + 56))(v0[15], 1, 1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002A5BA4()
{
  v22 = v0;
  v1 = v0[25];
  sub_1002A6D54(v0[16], v0[21], type metadata accessor for CryptexManager.CryptexConfig);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  if (v4)
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136315394;
    v10 = (v5 + *(v6 + 20));
    v11 = *v10;
    v12 = v10[1];

    sub_1002A732C(v5, type metadata accessor for CryptexManager.CryptexConfig);
    v13 = sub_1000026C0(v11, v12, &v21);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Failed to handle cache access: %@", v7, 0x16u);
    sub_100013F2C(v8, &qword_1004AA050);

    sub_100003C3C(v9);
  }

  else
  {

    sub_1002A732C(v5, type metadata accessor for CryptexManager.CryptexConfig);
  }

  v16 = v0[15];
  v15 = v0[16];
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 16))(v16, v15, v17);
  v18 = type metadata accessor for PrepareError();
  *(v16 + *(v18 + 20)) = v1;
  (*(*(v18 - 8) + 56))(v0[15], 0, 1);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1002A5E74()
{
  v22 = v0;
  sub_1002A732C(v0[19], type metadata accessor for CryptexCacheDelegate.AccessParameter);
  v1 = v0[27];
  sub_1002A6D54(v0[16], v0[21], type metadata accessor for CryptexManager.CryptexConfig);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  if (v4)
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136315394;
    v10 = (v5 + *(v6 + 20));
    v11 = *v10;
    v12 = v10[1];

    sub_1002A732C(v5, type metadata accessor for CryptexManager.CryptexConfig);
    v13 = sub_1000026C0(v11, v12, &v21);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Failed to handle cache access: %@", v7, 0x16u);
    sub_100013F2C(v8, &qword_1004AA050);

    sub_100003C3C(v9);
  }

  else
  {

    sub_1002A732C(v5, type metadata accessor for CryptexManager.CryptexConfig);
  }

  v16 = v0[15];
  v15 = v0[16];
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 16))(v16, v15, v17);
  v18 = type metadata accessor for PrepareError();
  *(v16 + *(v18 + 20)) = v1;
  (*(*(v18 - 8) + 56))(v0[15], 0, 1);

  v19 = v0[1];

  return v19();
}

uint64_t prepareString(from:)(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v2[12] = type metadata accessor for Config(0);
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for String.Encoding();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1002A6250, 0, 0);
}

uint64_t sub_1002A6250()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  swift_beginAccess();
  v4 = static RealComputer.shared;
  v0[17] = static RealComputer.shared;
  type metadata accessor for JSONDecoder();
  swift_allocObject();

  v0[18] = JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  v0[19] = v5;
  v0[20] = v6;
  (*(v2 + 8))(v1, v3);
  if (v7 >> 60 == 15)
  {
    sub_100187D3C();
    swift_allocError();
    *v8 = 22;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_1002A738C(&qword_1004AC910, type metadata accessor for Config);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v0[5] = type metadata accessor for RealComputer();
    v0[6] = &protocol witness table for RealComputer;
    v0[2] = v4;

    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_1002A64F8;

    return Config.prepare(on:)();
  }
}

uint64_t sub_1002A64F8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1002A66C8;
  }

  else
  {
    sub_100003C3C(v2 + 16);
    v3 = sub_1002A6614;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002A6614()
{
  v1 = v0[13];
  sub_100031914(v0[19], v0[20]);

  sub_1002A732C(v1, type metadata accessor for Config);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002A66C8()
{
  v1 = v0[13];
  sub_100031914(v0[19], v0[20]);

  sub_1002A732C(v1, type metadata accessor for Config);
  sub_100003C3C((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002A6784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FilePath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = direct field offset for Cache.cacheRootDirectory;
  v16 = *(v9 + 16);
  v22 = a1;
  v17 = a1;
  v18 = v16;
  v16((v4 + direct field offset for Cache.cacheRootDirectory), v17, v8);
  *(v4 + qword_1004B0AC8) = a3 & ~(a3 >> 63);
  *(v4 + *(*v4 + 112)) = a2;
  v18(v12, v4 + v15, v8);
  FilePath.appending(_:)();
  v19 = *(v9 + 32);
  v19(v4 + *(*v4 + 120), v14, v8);
  v18(v12, v4 + v15, v8);
  FilePath.appending(_:)();
  v19(v4 + *(*v4 + 128), v14, v8);
  v18(v12, v4 + v15, v8);
  FilePath.appending(_:)();
  v19(v4 + *(*v4 + 136), v14, v8);
  FilePath.createDirectory(permissions:intermediateDirectories:)(0x1C0u, 1);
  (*(v9 + 8))(v22, v8);
  return v4;
}

unint64_t sub_1002A6C98()
{
  result = qword_1004AF228;
  if (!qword_1004AF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF228);
  }

  return result;
}

uint64_t sub_1002A6CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A6D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002A6DBC()
{
  result = qword_1004AF230;
  if (!qword_1004AF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF230);
  }

  return result;
}

unint64_t sub_1002A6E10()
{
  result = qword_1004AF240;
  if (!qword_1004AF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF240);
  }

  return result;
}

unint64_t sub_1002A6E64()
{
  result = qword_1004AF250;
  if (!qword_1004AF250)
  {
    sub_100003A94(&qword_1004AF248);
    sub_1002A738C(&qword_1004AF258, type metadata accessor for PrepareError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF250);
  }

  return result;
}

unint64_t sub_1002A6F1C()
{
  result = qword_1004AF260;
  if (!qword_1004AF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF260);
  }

  return result;
}

unint64_t sub_1002A6F74()
{
  result = qword_1004AF268;
  if (!qword_1004AF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF268);
  }

  return result;
}

unint64_t sub_1002A6FCC()
{
  result = qword_1004AF270;
  if (!qword_1004AF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF270);
  }

  return result;
}

unint64_t sub_1002A7024()
{
  result = qword_1004AF278;
  if (!qword_1004AF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF278);
  }

  return result;
}

uint64_t sub_1002A708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002A715C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1002A7214()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_1002A7298();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1002A7298()
{
  result = qword_1004AF2E8;
  if (!qword_1004AF2E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1004AF2E8);
  }

  return result;
}

uint64_t sub_1002A732C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002A738C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002A73DC(uint64_t a1, unint64_t a2)
{
  v4 = kCFPreferencesAnyApplication;
  v5 = kCFPreferencesAnyUser;
  v6 = kCFPreferencesCurrentHost;
  v7 = String._bridgeToObjectiveC()();
  if (qword_1004A9E38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_100184D50(&v34, v8, v9, v10);
  swift_endAccess();

  v11 = String._bridgeToObjectiveC()();
  CFPreferencesSetValue(v11, v7, v8, v9, v10);

  swift_beginAccess();
  v12 = v8;
  v13 = v9;
  v14 = v10;
  sub_100184D50(&v34, v12, v13, v14);
  swift_endAccess();

  if (!CFPreferencesSynchronize(v12, v13, v14))
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000270B4(v23, qword_1004B00F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_19;
    }

    v26 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v34);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1000026C0(a1, a2, &v34);
    v27 = "Failed to set %{public}s to %{public}s: Failed to synchronize preferences.";
    goto LABEL_18;
  }

  _s10DarwinInit13CFPreferencesO11flushCachesyyFZ_0();
  swift_beginAccess();
  v12 = v12;
  v13 = v13;
  v14 = v14;
  sub_100184D50(&v34, v12, v13, v14);
  swift_endAccess();

  v15 = String._bridgeToObjectiveC()();
  v16 = CFPreferencesCopyValue(v15, v12, v13, v14);

  if (!v16)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000270B4(v28, qword_1004B00F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_19;
    }

    v26 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v34);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1000026C0(a1, a2, &v34);
    v27 = "Failed to set %{public}s to %{public}s: Failed persist preferences.";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 0x16u);
    swift_arrayDestroy();

LABEL_19:

    return 0;
  }

  swift_unknownObjectRetain();
  v17 = String._bridgeToObjectiveC()();
  v18 = CFEqual(v16, v17);
  swift_unknownObjectRelease();

  if (!v18)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000270B4(v30, qword_1004B00F8);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v34);
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_1000026C0(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to set %{public}s to %{public}s: Invalid persisted value.", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000270B4(v19, qword_1004B00F8);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v22 = 136446466;
    *(v22 + 4) = sub_1000026C0(0xD000000000000014, 0x8000000100441020, &v34);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1000026C0(a1, a2, &v34);
    _os_log_impl(&_mh_execute_header, v20, v21, "Set %{public}s to %{public}s.", v22, 0x16u);
    swift_arrayDestroy();
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t retry<A>(count:backoff:body:shouldRetry:onRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v13;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v8[8] = a1;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_1002A7CF4, 0, 0);
}

uint64_t sub_1002A7CF4()
{
  v1 = v0[11];
  v0[24] = 1;
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_1002A7DF4;
  v3 = v0[8];

  return v5(v3, 1);
}

uint64_t sub_1002A7DF4()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A7F48, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1002A7F48()
{
  if (*(v0 + 192) < *(v0 + 72) && ((*(v0 + 104))(*(v0 + 208)) & 1) != 0)
  {
    v1 = *(v0 + 80);
    v2 = *v1;
    v3 = *(v1 + 8);
    if (*(v1 + 32))
    {
      if (*(v1 + 32) == 1)
      {
        *(v0 + 56) = *(v0 + 192) - 1;
        sub_1001B1CDC();
        static Duration.* infix<A>(_:_:)();
        v4 = static Duration.+ infix(_:_:)();
      }

      else
      {
        v4 = v2(*(v0 + 192));
      }

      v2 = v4;
      v3 = v5;
    }

    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 136);
    static Clock<>.continuous.getter();
    *(v0 + 40) = v2;
    *(v0 + 48) = v3;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v11 = sub_1001FC188(&qword_1004AAFD0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_1001FC188(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v12 = *(v9 + 8);
    *(v0 + 216) = v12;
    *(v0 + 224) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v10);
    v13 = swift_task_alloc();
    *(v0 + 232) = v13;
    *v13 = v0;
    v13[1] = sub_1002A8204;
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v15, v0 + 16, v14, v11);
  }

  else
  {
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1002A8204()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    (*(v2 + 216))(*(v2 + 160), *(v2 + 136));
    v3 = sub_1002A8484;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = *(v2 + 184);
    v6 = *(v2 + 168);
    (*(v2 + 216))(*(v2 + 160), *(v2 + 136));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1002A835C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002A835C()
{
  v1 = *(v0 + 192);
  (*(v0 + 120))(v1);

  *(v0 + 192) = v1 + 1;
  v5 = (*(v0 + 88) + **(v0 + 88));
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_1002A7DF4;
  v3 = *(v0 + 64);

  return v5(v3, v1 + 1);
}

uint64_t sub_1002A8484()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

unint64_t retry<A>(count:delay:backoff:body:shouldRetry:onRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, void (*a10)(uint64_t))
{
  if (a1 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a1;
  }

  result = a6(1);
  if (v10)
  {
    if (v12 != 1)
    {
      result = a8(v10);
      if (result)
      {
        if (&_mh_execute_header)
        {
          sub_1001B1C34();
          static Duration.* infix<A>(_:_:)();
          static Duration.+ infix(_:_:)();
          result = Duration.components.getter();
          if ((result & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(result))
            {
              sleep(result);
              a10(1);

              return a6(2);
            }

            goto LABEL_15;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t (*BackOff.duration(for:)(uint64_t a1))(uint64_t)
{
  result = *v1;
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      if (__OFSUB__(a1, 1))
      {
        __break(1u);
      }

      else
      {
        sub_1001B1CDC();
        static Duration.* infix<A>(_:_:)();
        return static Duration.+ infix(_:_:)();
      }
    }

    else
    {
      return (*v1)(a1);
    }
  }

  return result;
}

uint64_t sub_1002A872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1002A882C, 0, 0);
}

uint64_t sub_1002A882C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1001FC188(&qword_1004AAFD0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001FC188(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1002A89BC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1002A89BC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1002A8B78, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1002A8B78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A8BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002A8C2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void *static Validate.preflight(configs:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Config(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __chkstk_darwin(v4);
  v9 = &v31[-v8 - 8];
  __chkstk_darwin(v7);
  v12 = *(a1 + 16);
  if (!v12)
  {
LABEL_11:
    sub_1002A9114(v32);
    return memcpy(v30, v32, 0x2D8uLL);
  }

  v13 = &v31[-v11 - 8];
  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v15 = *(v10 + 72);
  v16 = v12;
  while (1)
  {
    sub_1002AB1D0(v14, v6, type metadata accessor for Config);
    if (*(v6 + 20))
    {
      if (*(v6 + 22))
      {
        break;
      }
    }

    sub_1002AB170(v6, type metadata accessor for Config);
    v14 += v15;
    if (!--v16)
    {
      goto LABEL_11;
    }
  }

  sub_1001F6548(v6, v9);
  sub_1001F6548(v9, v13);
  if (v12 != 1)
  {
    v26 = 0x8000000100441090;
    sub_10028DBF4();
    swift_allocError();
    v28 = 0xD000000000000029;
LABEL_14:
    *v27 = v28;
    v27[1] = v26;
    swift_willThrow();
    return sub_1002AB170(v13, type metadata accessor for Config);
  }

  v17 = &v13[*(v3 + 104)];
  v18 = *v17;
  if (!*v17)
  {
    v26 = 0x8000000100441040;
    sub_10028DBF4();
    swift_allocError();
    v28 = 0xD000000000000015;
    goto LABEL_14;
  }

  v19 = v17[1];

  if (Array<A>.version.getter(v20) != 1)
  {
    sub_10028DBF4();
    swift_allocError();
    *v29 = 0xD000000000000023;
    v29[1] = 0x8000000100441060;
    swift_willThrow();
    sub_1001D6FE0(v18);
    return sub_1002AB170(v13, type metadata accessor for Config);
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *&v32[0] = v19;
  sub_1001B54D4();

  v21 = v33;
  v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v24 = v23;

  if (v21)
  {
    sub_1001D6FE0(v18);

    return sub_1002AB170(v13, type metadata accessor for Config);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001D81C8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1002AB170(0, type metadata accessor for Config);

  sub_100031928(v22, v24);
  sub_1001D6FE0(v18);
  memcpy(v31, v32, sizeof(v31));
  DInitData.init(rawValue:)(v31);
  return memcpy(v30, v31, 0x2D8uLL);
}

uint64_t sub_1002A9128()
{
  v0 = sub_1000039E8(&qword_1004AAD78);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Validate.configuration);
  sub_1000270B4(v3, static Validate.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Validate.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E68 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Validate.configuration);
}

uint64_t static Validate.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Validate.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Validate.source.getter()
{
  sub_1000039E8(&qword_1004AE988);

  return Argument.wrappedValue.getter();
}

uint64_t sub_1002A93D8(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10026C6C4(a1, &v9 - v6);
  sub_10026C6C4(v7, v5);
  sub_1000039E8(&qword_1004AE988);
  Argument.wrappedValue.setter();
  return sub_100013F2C(v7, &qword_1004AB540);
}

uint64_t Validate.source.setter(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540);
  __chkstk_darwin(v2 - 8);
  sub_10026C6C4(a1, &v5 - v3);
  sub_1000039E8(&qword_1004AE988);
  Argument.wrappedValue.setter();
  return sub_100013F2C(a1, &qword_1004AB540);
}

uint64_t (*Validate.source.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000039E8(&qword_1004AE988);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_100197120;
}

uint64_t Validate.system.getter()
{
  type metadata accessor for Validate();
  sub_1000039E8(&qword_1004AE998);
  Flag.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for Validate()
{
  result = qword_1004AF398;
  if (!qword_1004AF398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002A96C0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Validate();
  sub_1000039E8(&qword_1004AE998);
  result = Flag.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1002A9728()
{
  type metadata accessor for Validate();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t Validate.system.setter()
{
  type metadata accessor for Validate();
  sub_1000039E8(&qword_1004AE998);
  return Flag.wrappedValue.setter();
}

uint64_t (*Validate.system.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Validate();
  sub_1000039E8(&qword_1004AE998);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Validate.validate()()
{
  v0 = sub_1000039E8(&qword_1004AB540);
  __chkstk_darwin(v0 - 8);
  v2 = &v5[-v1];
  sub_1000039E8(&qword_1004AE988);
  Argument.wrappedValue.getter();
  v3 = type metadata accessor for DInitConfigSource();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100013F2C(v2, &qword_1004AB540);
  if (v4 == 1)
  {
    type metadata accessor for Validate();
    sub_1000039E8(&qword_1004AE998);
    Flag.wrappedValue.getter();
    if ((v5[15] & 1) == 0)
    {
      type metadata accessor for ValidationError();
      sub_1002AB310(&qword_1004AB958, &type metadata accessor for ValidationError);
      swift_allocError();
      ValidationError.init(_:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1002A9A54()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static RealComputer.shared;
  v0[11] = static RealComputer.shared;
  v0[5] = type metadata accessor for RealComputer();
  v0[6] = &protocol witness table for RealComputer;
  v0[2] = v1;
  swift_retain_n();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1001C08B8;

  return Validate.run(on:)((v0 + 2));
}

uint64_t Validate.run(on:)(uint64_t a1)
{
  v2[197] = v1;
  v2[196] = a1;
  sub_1000039E8(&qword_1004AB540);
  v2[198] = swift_task_alloc();

  return _swift_task_switch(sub_1002A9C10, 0, 0);
}

uint64_t sub_1002A9C10()
{
  sub_100003B20(*(v0 + 1568), v0 + 1480);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 1472) = JSONDecoder.init()();
  *(v0 + 1520) = xmmword_1003F69C0;
  *(v0 + 1536) = 1;
  *(v0 + 1544) = 0u;
  *(v0 + 1560) = 0;
  sub_1000039E8(&qword_1004AE988);
  Argument.wrappedValue.getter();
  v1 = swift_task_alloc();
  *(v0 + 1592) = v1;
  *v1 = v0;
  v1[1] = sub_1002A9D2C;
  v2 = *(v0 + 1584);

  return ConfigLoader.load(from:)(v2);
}

uint64_t sub_1002A9D2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1600) = a1;
  *(v4 + 1608) = v1;

  sub_100013F2C(*(v3 + 1584), &qword_1004AB540);
  if (v1)
  {
    v5 = sub_1002AA258;
  }

  else
  {
    v5 = sub_1002A9E7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A9E7C()
{
  v25 = v0;
  v1 = v0[201];
  v2 = Array<A>.jsonString(prettyPrinted:redacted:origin:)(1, 0, 0, v0[200]);
  if (v1)
  {
    sub_1001C1C88((v0 + 184));

    v6 = v0[1];
  }

  else
  {
    v4 = v3;
    v5 = v2;
    static Validate.preflight(configs:)(v0[200], __src);

    memcpy(v0 + 93, __src, 0x2D8uLL);
    memcpy(v0 + 2, __src, 0x2D8uLL);
    if (sub_1001D8458((v0 + 2)) == 1 || (v8 = v0[81]) == 0)
    {

      sub_1000039E8(&qword_1004AA990);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100376A40;
      v22 = 0x80000001004410F0;
      v21 = 0xD000000000000066;
    }

    else
    {
      v9 = v0[80];
      sub_1000039E8(&qword_1004AA990);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100376A40;
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;

      _StringGuts.grow(_:)(37);

      __dst[0] = 0xD000000000000018;
      __dst[1] = 0x8000000100441160;
      v11._countAndFlagsBits = v9;
      v11._object = v8;
      String.append(_:)(v11);
      v12._countAndFlagsBits = 0x3A7963696C6F7020;
      v12._object = 0xE900000000000020;
      String.append(_:)(v12);
      v13._countAndFlagsBits = v5;
      v13._object = v4;
      String.append(_:)(v13);

      v14 = __dst[0];
      v15 = __dst[1];
      *(v10 + 56) = &type metadata for String;
      *(v10 + 32) = v14;
      *(v10 + 40) = v15;
      print(_:separator:terminator:)();

      memcpy(__dst, v0 + 2, 0x2D8uLL);
      sub_10028CF60(v9, v8, __dst);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100376A40;
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v17._countAndFlagsBits = 0xD00000000000002CLL;
      v17._object = 0x8000000100441180;
      String.append(_:)(v17);
      v18._countAndFlagsBits = v9;
      v18._object = v8;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 0x2E7963696C6F7020;
      v19._object = 0xE800000000000000;
      String.append(_:)(v19);
      v20 = v16;
      v21 = __dst[0];
      v22 = __dst[1];
    }

    *(v20 + 56) = &type metadata for String;
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    print(_:separator:terminator:)();

    sub_100013F2C((v0 + 93), &qword_1004AE9F8);
    sub_1001C1C88((v0 + 184));

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_1002AA258()
{
  sub_1001C1C88(v0 + 1472);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AA2C4()
{
  if (*v0)
  {
    return 0x6D6574737973;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_1002AA2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1002AA3C4(uint64_t a1)
{
  v2 = sub_1002AB11C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002AA400(uint64_t a1)
{
  v2 = sub_1002AB11C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Validate.init()()
{
  v0 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  ArgumentHelp.init(stringLiteral:)();
  v7 = type metadata accessor for ArgumentHelp();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  type metadata accessor for DInitConfigSource();
  sub_1002AB310(&qword_1004AB548, type metadata accessor for DInitConfigSource);
  Argument.init<A>(help:completion:)();
  type metadata accessor for Validate();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v8(v6, 0, 1, v7);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t Validate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v36 = a2;
  v38 = sub_1000039E8(&qword_1004AE998);
  v35 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v35 - v2;
  v3 = sub_1000039E8(&qword_1004AE988);
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v42 = &v35 - v4;
  v43 = sub_1000039E8(&qword_1004AF318);
  v39 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v35 - v5;
  v6 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Validate();
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArgumentHelp.init(stringLiteral:)();
  v17 = type metadata accessor for ArgumentHelp();
  v18 = *(*(v17 - 8) + 56);
  v18(v12, 0, 1, v17);
  v19 = type metadata accessor for CompletionKind();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  type metadata accessor for DInitConfigSource();
  sub_1002AB310(&qword_1004AB548, type metadata accessor for DInitConfigSource);
  Argument.init<A>(help:completion:)();
  v20 = *(v14 + 28);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v18(v12, 0, 1, v17);
  v21 = v45;
  v22 = v16;
  Flag<A>.init(wrappedValue:name:help:)();
  sub_10000E2A8(v21, v21[3]);
  sub_1002AB11C();
  v23 = v44;
  v24 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100003C3C(v21);
    v34 = v22;
  }

  else
  {
    v26 = v39;
    v25 = v40;
    v48 = 0;
    sub_10000E720(&qword_1004AEA48, &qword_1004AE988);
    v27 = v41;
    v28 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v22;
    (*(v25 + 40))(v22, v42, v27);
    v47 = 1;
    sub_10000E720(&qword_1004AEA50, &qword_1004AE998);
    v32 = v37;
    v31 = v38;
    v33 = v43;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v26 + 8))(v28, v33);
    (*(v35 + 40))(v30 + v20, v32, v31);
    sub_1002AB1D0(v30, v36, type metadata accessor for Validate);
    sub_100003C3C(v21);
    v34 = v30;
  }

  return sub_1002AB170(v34, type metadata accessor for Validate);
}

uint64_t default argument 0 of Validate.init(source:system:)()
{
  v0 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  ArgumentHelp.init(stringLiteral:)();
  v6 = type metadata accessor for ArgumentHelp();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = type metadata accessor for CompletionKind();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  type metadata accessor for DInitConfigSource();
  sub_1002AB310(&qword_1004AB548, type metadata accessor for DInitConfigSource);
  return Argument.init<A>(help:completion:)();
}

uint64_t Validate.init(source:system:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000039E8(&qword_1004AE988);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  type metadata accessor for Validate();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v9 = type metadata accessor for ArgumentHelp();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_1002AB05C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return Validate.run()();
}

unint64_t sub_1002AB11C()
{
  result = qword_1004AF320;
  if (!qword_1004AF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF320);
  }

  return result;
}

uint64_t sub_1002AB170(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002AB1D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002AB310(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002AB3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004AE988);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000039E8(&qword_1004AE998);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1002AB4D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004AE988);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000039E8(&qword_1004AE998);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1002AB5E8()
{
  sub_1002AB66C();
  if (v0 <= 0x3F)
  {
    sub_10028E120();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002AB66C()
{
  if (!qword_1004AEAB8)
  {
    sub_100003A94(&qword_1004AB540);
    v0 = type metadata accessor for Argument();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AEAB8);
    }
  }
}

unint64_t sub_1002AB6E4()
{
  result = qword_1004AF3D0;
  if (!qword_1004AF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF3D0);
  }

  return result;
}

unint64_t sub_1002AB73C()
{
  result = qword_1004AF3D8;
  if (!qword_1004AF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF3D8);
  }

  return result;
}

unint64_t sub_1002AB794()
{
  result = qword_1004AF3E0;
  if (!qword_1004AF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF3E0);
  }

  return result;
}

uint64_t static SCNSManagerRef.create(_:)()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SCNSManagerCreate();

  return v1;
}

uint64_t SCNSManagerRef.copyService(interface:netif:)(uint64_t a1, unint64_t a2)
{
  v4 = SCNSManagerCopyService();
  if (v4)
  {
    v5 = v4;
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000270B4(v6, static SCNSManagerRef.logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000026C0(a1, a2, &v21);
      _os_log_impl(&_mh_execute_header, v7, v8, "Found service for interface %s", v9, 0xCu);
      sub_100003C3C(v10);
    }

    return v5;
  }

  else
  {
    v12 = SCError();
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000270B4(v13, static SCNSManagerRef.logger);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_1000026C0(a1, a2, &v21);
      *(v16 + 12) = 2112;
      sub_100189C58();
      swift_allocError();
      *v19 = "copyService(interface:netif:)";
      *(v19 + 8) = 29;
      *(v19 + 16) = 2;
      *(v19 + 20) = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "No service found for %s: %@", v16, 0x16u);
      sub_10019AC78(v17);

      sub_100003C3C(v18);
    }

    return 0;
  }
}

Swift::Bool __swiftcall SCNSManagerRef.apply()()
{
  v0 = SCNSManagerApplyChanges();
  if (!v0)
  {
    v1 = SCError();
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000270B4(v2, static SCNSManagerRef.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_100189C58();
      swift_allocError();
      *v7 = "apply()";
      *(v7 + 8) = 7;
      *(v7 + 16) = 2;
      *(v7 + 20) = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to apply network configuration: %@", v5, 0xCu);
      sub_10019AC78(v6);
    }
  }

  return v0 != 0;
}

uint64_t sub_1002ABCA4()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static SCNSManagerRef.logger);
  sub_1000270B4(v0, static SCNSManagerRef.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t SCNSManagerRef.logger.unsafeMutableAddressor()
{
  if (qword_1004A9E70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static SCNSManagerRef.logger);
}

uint64_t static SCNSManagerRef.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static SCNSManagerRef.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *SCNSManagerRef.interfaces.unsafeMutableAddressor()
{
  if (qword_1004A9E78 != -1)
  {
    swift_once();
  }

  return &static SCNSManagerRef.interfaces;
}

uint64_t static SCNSManagerRef.interfaces.getter()
{
  if (qword_1004A9E78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static SCNSManagerRef.interfaces.setter(uint64_t a1)
{
  if (qword_1004A9E78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SCNSManagerRef.interfaces = a1;
}

uint64_t (*static SCNSManagerRef.interfaces.modify())()
{
  if (qword_1004A9E78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

const __SCNetworkInterface *_sSo14SCNSManagerRefa10DarwinInitE13copyInterface4nameSo09SCNetworkfB0aSgSS_tF_0(uint64_t a1, void *a2)
{
  if (qword_1004A9E78 != -1)
  {
LABEL_28:
    swift_once();
  }

  swift_beginAccess();
  if (static SCNSManagerRef.interfaces >> 62)
  {
    v4 = &unk_1004E2000;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_5:
      while (1)
      {
        v6 = v4[461];
        if (!(v6 >> 62))
        {
          break;
        }

        v5 = _CocoaArrayWrapper.endIndex.getter();
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        __break(1u);
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          v21 = SCError();
          if (qword_1004A9E70 != -1)
          {
            swift_once();
          }

          v22 = type metadata accessor for Logger();
          sub_1000270B4(v22, static SCNSManagerRef.logger);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = 138412290;
            sub_100189C58();
            swift_allocError();
            *v27 = "copyInterface(name:)";
            *(v27 + 8) = 20;
            *(v27 + 16) = 2;
            *(v27 + 20) = v21;
            v28 = _swift_stdlib_bridgeErrorToNSError();
            *(v25 + 4) = v28;
            *v26 = v28;
            _os_log_impl(&_mh_execute_header, v23, v24, "No interfaces found: %@", v25, 0xCu);
            sub_10019AC78(v26);
          }

          return 0;
        }
      }

      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
LABEL_39:
        v29 = SCError();
        if (qword_1004A9E70 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_1000270B4(v30, static SCNSManagerRef.logger);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v39[0] = v35;
          *v33 = 136315394;
          *(v33 + 4) = sub_1000026C0(a1, a2, v39);
          *(v33 + 12) = 2112;
          sub_100189C58();
          swift_allocError();
          *v36 = "copyInterface(name:)";
          *(v36 + 8) = 20;
          *(v36 + 16) = 2;
          *(v36 + 20) = v29;
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 14) = v37;
          *v34 = v37;
          _os_log_impl(&_mh_execute_header, v31, v32, "Found no matching interfaces with name %s: %@", v33, 0x16u);
          sub_10019AC78(v34);

          sub_100003C3C(v35);
        }

        return 0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v4 = &unk_1004E2000;
    if (*((static SCNSManagerRef.interfaces & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  SCNetworkInterfaceCopyAll();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v39[0] = 0;
  type metadata accessor for SCNetworkInterface(0);
  v5 = static Array._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
LABEL_38:
  v7 = v5;
  if (!v5)
  {
    goto LABEL_39;
  }

LABEL_7:
  v8 = 0;
  while (1)
  {
    swift_beginAccess();
    if ((static SCNSManagerRef.interfaces & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((static SCNSManagerRef.interfaces & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_28;
      }

      v9 = *(static SCNSManagerRef.interfaces + 8 * v8 + 32);
    }

    v10 = v9;
    swift_endAccess();
    v11 = SCNetworkInterfaceGetBSDName(v10);
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = v11;
    v13 = String.init(_:)(v12);
    if (v13._countAndFlagsBits == a1 && v13._object == a2)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_22;
    }

LABEL_9:
    ++v8;

    if (v7 == v8)
    {
      goto LABEL_39;
    }
  }

LABEL_22:
  if (qword_1004A9E70 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000270B4(v16, static SCNSManagerRef.logger);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000026C0(a1, a2, v39);
    _os_log_impl(&_mh_execute_header, v17, v18, "Found matching interface with name: %s", v19, 0xCu);
    sub_100003C3C(v20);
  }

  return v10;
}

uint64_t _sSo14SCNSManagerRefa10DarwinInitE18copyProtocolEntity7service9interface5protoSo012CFDictionaryB0aSgSo011SCNSServiceB0a_S2StF_0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = String._bridgeToObjectiveC()();
  v10 = SCNSServiceCopyProtocolEntity();

  if (v10)
  {
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000270B4(v11, static SCNSManagerRef.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1000026C0(a2, a3, &v24);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1000026C0(a4, a5, &v24);
      _os_log_impl(&_mh_execute_header, v12, v13, "Found config for %s and %s", v14, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v15 = SCError();
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000270B4(v16, static SCNSManagerRef.logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_1000026C0(a2, a3, &v24);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1000026C0(a4, a5, &v24);
      *(v19 + 22) = 2112;
      sub_100189C58();
      swift_allocError();
      *v21 = "copyProtocolEntity(service:interface:proto:)";
      *(v21 + 8) = 44;
      *(v21 + 16) = 2;
      *(v21 + 20) = v15;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "No existing config for %s and %s: %@", v19, 0x20u);
      sub_10019AC78(v20);

      swift_arrayDestroy();
    }

    return 0;
  }

  return v10;
}

BOOL _sSo14SCNSManagerRefa10DarwinInitE17setProtocolEntity7service9interface5proto6configSbSo011SCNSServiceB0a_S2SSo012CFDictionaryB0aSgtF_0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = String._bridgeToObjectiveC()();
  v10 = SCNSServiceSetProtocolEntity();

  if (!v10)
  {
    v11 = SCError();
    if (qword_1004A9E70 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000270B4(v12, static SCNSManagerRef.logger);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v20 = v11;
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v15 = 136315650;
      *(v15 + 4) = sub_1000026C0(a2, a3, &v21);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1000026C0(a4, a5, &v21);
      *(v15 + 22) = 2112;
      sub_100189C58();
      swift_allocError();
      *v17 = "setProtocolEntity(service:interface:proto:config:)";
      *(v17 + 8) = 50;
      *(v17 + 16) = 2;
      *(v17 + 20) = v20;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v18;
      *v16 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to set config for %s and proto %s: %@", v15, 0x20u);
      sub_10019AC78(v16);

      swift_arrayDestroy();
    }
  }

  return v10 != 0;
}

uint64_t sub_1002ACC50(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(BOOL, unint64_t, uint64_t), uint64_t (*a7)(void))
{
  v29 = a7;
  v30 = a1;
  v31 = a2;
  v11 = a5(0);
  v28 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v32 = a4;
  v14 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v7;
  v15 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    return v15;
  }

  v35 = _swiftEmptyArrayStorage;
  a6(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v26 = a6;
    v16 = 0;
    v15 = v35;
    v17 = v32;
    if (v32 <= a3)
    {
      v17 = a3;
    }

    v27 = v17 - a3 + 1;
    while (v16 < v14)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_17;
      }

      v34 = a3 + v16;
      v19 = v13;
      v20 = v33;
      v30(&v34);
      v33 = v20;
      if (v20)
      {
        goto LABEL_22;
      }

      v35 = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        v26(v21 > 1, v22 + 1, 1);
        v15 = v35;
      }

      v15[2] = v22 + 1;
      v23 = v15 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22;
      v13 = v19;
      sub_1002DE698(v19, v23, v29);
      if (v32 < a3)
      {
        goto LABEL_18;
      }

      if (v27 == ++v16)
      {
        goto LABEL_19;
      }

      if (v18 == v14)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1002ACE7C(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      return v6;
    }

    v25 = _swiftEmptyArrayStorage;
    sub_100311298(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v6 = v25;
      if (a4 <= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = a4;
      }

      v11 = a3 - v10;
      while (1)
      {
        v22 = a3 + v9;
        a1(v23, &v22);
        if (v4)
        {
          goto LABEL_23;
        }

        v21 = v24;
        v19 = v23[2];
        v20 = v23[3];
        v17 = v23[0];
        v18 = v23[1];
        v25 = v6;
        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          sub_100311298((v12 > 1), v13 + 1, 1);
          v6 = v25;
        }

        v6[2] = v13 + 1;
        v14 = &v6[9 * v13];
        *(v14 + 2) = v17;
        v14[12] = v21;
        *(v14 + 4) = v19;
        *(v14 + 5) = v20;
        *(v14 + 3) = v18;
        if (a4 < a3)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (!(v11 + v9))
        {
          goto LABEL_19;
        }

        if (~a3 + a4 == v9)
        {
          return v6;
        }

        if (__OFADD__(++v9, 1))
        {
          goto LABEL_20;
        }
      }
    }
  }

  __break(1u);
LABEL_23:

  __break(1u);
  return result;
}

uint64_t sub_1002AD010(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(BOOL, uint64_t, uint64_t))
{
  v6 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v8 = a3;
  v30 = _swiftEmptyArrayStorage;
  a5(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v30;
    v10 = a4;
    if (a4 <= v8)
    {
      v10 = v8;
    }

    v23 = v10 - v8 + 1;
    while (v9 < v6)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

      v12 = v8;
      v26 = v8 + v9;
      a1(&v27, &v26);
      if (v5)
      {
        goto LABEL_22;
      }

      v14 = v27;
      v13 = v28;
      v15 = v29;
      v30 = v7;
      v17 = v7[2];
      v16 = v7[3];
      if (v17 >= v16 >> 1)
      {
        v21 = v28;
        v19 = v29;
        a5(v16 > 1, v17 + 1, 1);
        v15 = v19;
        v13 = v21;
        v7 = v30;
      }

      v7[2] = v17 + 1;
      v18 = &v7[3 * v17];
      v18[4] = v14;
      v18[5] = v13;
      v18[6] = v15;
      if (a4 < v12)
      {
        goto LABEL_18;
      }

      if (v23 == ++v9)
      {
        goto LABEL_19;
      }

      v8 = v12;
      if (v11 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1002AD1B0()
{
  v0 = sub_1000039E8(&qword_1004AAD78);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Generate.configuration);
  sub_1000270B4(v3, static Generate.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Generate.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E80 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Generate.configuration);
}

uint64_t static Generate.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Generate.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Generate.fileName.getter()
{
  sub_1000039E8(&qword_1004AF3E8);
  Argument.wrappedValue.getter();
  return v1;
}

uint64_t sub_1002AD454()
{

  sub_1000039E8(&qword_1004AF3E8);
  return Argument.wrappedValue.setter();
}

uint64_t (*Generate.fileName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000039E8(&qword_1004AF3E8);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t (*Generate.log.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F0);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t sub_1002AD680()
{
  v0 = type metadata accessor for ArrayParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  sub_1000039E8(&qword_1004AAD70);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.customLong(_:withSingleDash:)();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static ArrayParsingStrategy.singleValue.getter();
  return Option.init<A>(wrappedValue:name:parsing:help:completion:)();
}

uint64_t (*Generate.preInitCommands.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AAC48);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100197120;
}

uint64_t (*Generate.preInitCritical.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t Generate.ssh.getter()
{
  type metadata accessor for Generate(0);
  sub_1000039E8(&qword_1004AF3F8);
  Flag.wrappedValue.getter();
  return v1;
}